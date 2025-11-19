@interface TransactionStore
- (void)dealloc;
- (void)init;
@end

@implementation TransactionStore

- (void)init
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = TransactionStore;
  v1 = objc_msgSendSuper2(&v12, "init");
  if (v1)
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("com.apple.AppStoreFoundation.TransactionStore", v2);
    v4 = v1[1];
    v1[1] = v3;

    v1[3] = 13000000000;
    v5 = objc_alloc_init(NSCountedSet);
    v6 = v1[4];
    v1[4] = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = v1[5];
    v1[5] = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = v1[6];
    v1[6] = v9;

    v1 = v1;
    v1[2] = os_state_add_handler();
  }

  return v1;
}

- (void)dealloc
{
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = TransactionStore;
  [(TransactionStore *)&v3 dealloc];
}

@end