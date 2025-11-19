@interface _TUIRunLoopWaiter
+ (id)sharedInstance;
- (_TUIRunLoopWaiter)init;
- (id)notReadyAssertionWithTimeout:(double)a3 queue:(id)a4;
- (void)_schedule;
- (void)addPreCommitBlock:(id)a3;
@end

@implementation _TUIRunLoopWaiter

+ (id)sharedInstance
{
  if (qword_2E6530 != -1)
  {
    sub_19B868();
  }

  v3 = qword_2E6528;

  return v3;
}

- (_TUIRunLoopWaiter)init
{
  v9.receiver = self;
  v9.super_class = _TUIRunLoopWaiter;
  v2 = [(_TUIRunLoopWaiter *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_group_create();
    group = v3->_group;
    v3->_group = v4;

    v6 = objc_opt_new();
    preCommitBlocks = v3->_preCommitBlocks;
    v3->_preCommitBlocks = v6;
  }

  return v3;
}

- (void)addPreCommitBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  preCommitBlocks = self->_preCommitBlocks;
  v6 = [v4 copy];

  v7 = objc_retainBlock(v6);
  [(NSMutableArray *)preCommitBlocks addObject:v7];

  [(_TUIRunLoopWaiter *)self _schedule];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_schedule
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = *(self + 8);
  if ((v3 & 1) == 0)
  {
    if (!self->_notReadyCount)
    {
      if (![(NSMutableArray *)self->_preCommitBlocks count])
      {
        return;
      }

      v3 = *(self + 8);
    }

    *(self + 8) = v3 | 1;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_116120;
    v4[3] = &unk_25DE30;
    v4[4] = self;
    [CATransaction addCommitHandler:v4 forPhase:1];
  }
}

- (id)notReadyAssertionWithTimeout:(double)a3 queue:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  ++self->_notReadyCount;
  [(_TUIRunLoopWaiter *)self _schedule];
  os_unfair_lock_unlock(&self->_lock);
  dispatch_group_enter(self->_group);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_116494;
  v13[3] = &unk_25DE30;
  v13[4] = self;
  v7 = [[_TUIRunLoopAssertion alloc] initWithCompletion:v13];
  v8 = dispatch_time(0, (a3 * 1000000000.0));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1164F4;
  v11[3] = &unk_25DE30;
  v9 = v7;
  v12 = v9;
  dispatch_after(v8, v6, v11);

  return v9;
}

@end