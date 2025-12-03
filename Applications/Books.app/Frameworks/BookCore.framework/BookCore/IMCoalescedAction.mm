@interface IMCoalescedAction
- (IMCoalescedAction)init;
- (IMCoalescedAction)initWithAction:(id)action;
- (void)_performActions;
- (void)addAction:(id)action;
- (void)dealloc;
- (void)increaseCount;
@end

@implementation IMCoalescedAction

- (IMCoalescedAction)initWithAction:(id)action
{
  actionCopy = action;
  v5 = [(IMCoalescedAction *)self init];
  v6 = v5;
  if (v5)
  {
    [(IMCoalescedAction *)v5 addAction:actionCopy];
  }

  return v6;
}

- (IMCoalescedAction)init
{
  v7.receiver = self;
  v7.super_class = IMCoalescedAction;
  v2 = [(IMCoalescedAction *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_2A37E0;
    v4 = objc_alloc_init(NSMutableArray);
    actions = v3->_actions;
    v3->_actions = v4;
  }

  return v3;
}

- (void)dealloc
{
  [(IMCoalescedAction *)self _performActions];
  v3.receiver = self;
  v3.super_class = IMCoalescedAction;
  [(IMCoalescedAction *)&v3 dealloc];
}

- (void)increaseCount
{
  [(IMCoalescedAction *)self setCount:[(IMCoalescedAction *)self count]+ 1];
  v3 = [(IMCoalescedAction *)self count];
  if (v3 >= [(IMCoalescedAction *)self maxCount])
  {
    [(IMCoalescedAction *)self _performActions];

    [(IMCoalescedAction *)self _reset];
  }
}

- (void)addAction:(id)action
{
  v6 = [action copy];
  actions = [(IMCoalescedAction *)self actions];
  v5 = objc_retainBlock(v6);
  [actions addObject:v5];
}

- (void)_performActions
{
  if ([(IMCoalescedAction *)self count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    actions = [(IMCoalescedAction *)self actions];
    v4 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(actions);
          }

          (*(*(*(&v8 + 1) + 8 * v7) + 16))();
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [actions countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

@end