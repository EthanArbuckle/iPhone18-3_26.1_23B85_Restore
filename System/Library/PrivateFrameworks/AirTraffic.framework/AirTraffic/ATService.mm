@interface ATService
+ (id)allocWithZone:(_NSZone *)a3;
- (ATService)init;
- (id)messageLinkForIdentifier:(id)a3;
- (void)addMessageLink:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeMessageLink:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation ATService

- (void)removeMessageLink:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ATService_removeMessageLink___block_invoke;
  v7[3] = &unk_278C6DC30;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __31__ATService_removeMessageLink___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  [*(*(a1 + 40) + 16) removeObject:*(a1 + 32)];
  v2 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 16);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_23EC61000, v2, OS_LOG_TYPE_DEFAULT, "Removed messageLink: %{public}@ - allLinks %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addMessageLink:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ATService_addMessageLink___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __28__ATService_addMessageLink___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  [*(a1 + 40) addObserver:*(a1 + 32)];
  v2 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_23EC61000, v2, OS_LOG_TYPE_DEFAULT, "Added messageLink: %{public}@ - allLinks %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)messageLinkForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1399;
  v16 = __Block_byref_object_dispose__1400;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ATService_messageLinkForIdentifier___block_invoke;
  block[3] = &unk_278C6DB18;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__ATService_messageLinkForIdentifier___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ATService_removeObserver___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__ATService_addObserver___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (ATService)init
{
  v14.receiver = self;
  v14.super_class = ATService;
  v2 = [(ATService *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    messageLinks = v2->_messageLinks;
    v2->_messageLinks = v3;

    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v12 = v2->_messageLinks;
    v2->_messageLinks = v11;
  }

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [ATServiceProxy allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___ATService;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

@end