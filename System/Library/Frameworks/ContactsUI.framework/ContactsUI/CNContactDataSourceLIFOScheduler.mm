@interface CNContactDataSourceLIFOScheduler
- (CNContactDataSourceLIFOScheduler)init;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)dealloc;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation CNContactDataSourceLIFOScheduler

- (CNContactDataSourceLIFOScheduler)init
{
  v10.receiver = self;
  v10.super_class = CNContactDataSourceLIFOScheduler;
  v2 = [(CNContactDataSourceLIFOScheduler *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.contacts.contactlist", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    stack = v2->_stack;
    v2->_stack = v6;

    v8 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_stack;
  objc_sync_enter(v3);
  [(NSMutableArray *)self->_stack removeAllObjects];
  objc_sync_exit(v3);

  v4.receiver = self;
  v4.super_class = CNContactDataSourceLIFOScheduler;
  [(CNContactDataSourceLIFOScheduler *)&v4 dealloc];
}

- (double)timestamp
{
  selfCopy = self;
  v3 = CNUnimplementedMethodException();
  objc_exception_throw(v3);
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  selfCopy = self;
  v8 = CNUnimplementedMethodException();
  objc_exception_throw(v8);
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  v7 = CNUnimplementedMethodException();
  objc_exception_throw(v7);
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  selfCopy = self;
  v7 = CNUnimplementedMethodException();
  objc_exception_throw(v7);
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  v6 = CNUnimplementedMethodException();
  objc_exception_throw(v6);
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  selfCopy = self;
  v7 = CNUnimplementedMethodException();
  objc_exception_throw(v7);
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  stack = [(CNContactDataSourceLIFOScheduler *)self stack];
  objc_sync_enter(stack);
  v6 = _Block_copy(blockCopy);
  [stack addObject:v6];

  objc_sync_exit(stack);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CNContactDataSourceLIFOScheduler_performBlock___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = stack;
  v8 = stack;
  dispatch_async(queue, block);
}

void __49__CNContactDataSourceLIFOScheduler_performBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v4 = [*(a1 + 32) lastObject];
  [*(a1 + 32) removeLastObject];
  objc_sync_exit(v2);

  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

@end