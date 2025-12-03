@interface AVRunLoopConditionRunLoopState
+ (id)runLoopStateWithRunLoop:(__CFRunLoop *)loop;
- (AVRunLoopConditionRunLoopState)initWithRunLoop:(__CFRunLoop *)loop;
- (void)dealloc;
@end

@implementation AVRunLoopConditionRunLoopState

- (void)dealloc
{
  runLoop = self->_runLoop;
  if (runLoop)
  {
    CFRelease(runLoop);
  }

  v4.receiver = self;
  v4.super_class = AVRunLoopConditionRunLoopState;
  [(AVRunLoopConditionRunLoopState *)&v4 dealloc];
}

+ (id)runLoopStateWithRunLoop:(__CFRunLoop *)loop
{
  v3 = [objc_alloc(objc_opt_class()) initWithRunLoop:loop];

  return v3;
}

- (AVRunLoopConditionRunLoopState)initWithRunLoop:(__CFRunLoop *)loop
{
  v7.receiver = self;
  v7.super_class = AVRunLoopConditionRunLoopState;
  v4 = [(AVRunLoopConditionRunLoopState *)&v7 init];
  v5 = v4;
  if (loop)
  {
    if (v4)
    {
      v4->_runLoop = CFRetain(loop);
      v5->_signaled = 0;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end