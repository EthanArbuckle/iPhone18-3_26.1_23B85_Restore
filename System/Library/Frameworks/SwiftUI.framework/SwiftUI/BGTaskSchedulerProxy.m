@interface BGTaskSchedulerProxy
+ (id)shared;
- (BOOL)registerForTaskWithIdentifier:(id)a3 launchHandler:(id)a4;
@end

@implementation BGTaskSchedulerProxy

+ (id)shared
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__BGTaskSchedulerProxy_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_proxy;

  return v2;
}

uint64_t __30__BGTaskSchedulerProxy_shared__block_invoke(uint64_t a1)
{
  shared_proxy = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)registerForTaskWithIdentifier:(id)a3 launchHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getBGTaskSchedulerClass_softClass;
  v15 = getBGTaskSchedulerClass_softClass;
  if (!getBGTaskSchedulerClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getBGTaskSchedulerClass_block_invoke;
    v11[3] = &unk_1E7237578;
    v11[4] = &v12;
    __getBGTaskSchedulerClass_block_invoke(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [v7 sharedScheduler];
  [v9 registerForTaskWithIdentifier:v5 usingQueue:0 launchHandler:v6];

  return 1;
}

@end