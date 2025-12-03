@interface AKCoordinatedDataBlock
+ (id)startCoordinatingBlock:(id)block;
- (AKCoordinatedDataBlock)initWithBlock:(id)block;
- (void)_callCompletionWithData:(id)data error:(id)error;
- (void)_start;
- (void)setCompletion:(id)completion;
- (void)start;
@end

@implementation AKCoordinatedDataBlock

- (AKCoordinatedDataBlock)initWithBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = AKCoordinatedDataBlock;
  selfCopy = [(AKCoordinatedDataBlock *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = MEMORY[0x193B165F0](location[0]);
    v5 = *(selfCopy + 1);
    *(selfCopy + 1) = v4;
    MEMORY[0x1E69E5920](v5);
    *(selfCopy + 7) = 0;
    v6 = dispatch_group_create();
    v7 = *(selfCopy + 4);
    *(selfCopy + 4) = v6;
    MEMORY[0x1E69E5920](v7);
    dispatch_group_enter(*(selfCopy + 4));
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

+ (id)startCoordinatingBlock:(id)block
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v3 = [AKCoordinatedDataBlock alloc];
  v6 = [(AKCoordinatedDataBlock *)v3 initWithBlock:location[0]];
  [(AKCoordinatedDataBlock *)v6 _start];
  v5 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)start
{
  selfCopy = self;
  v19 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __31__AKCoordinatedDataBlock_start__block_invoke;
  v12 = &unk_1E73D6B00;
  v13[1] = &v14;
  v13[0] = MEMORY[0x1E69E5928](self);
  ak_unfair_lock_perform_3(&self->_lock, &v8);
  if (v15[3])
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v3 = type;
      __os_log_helper_16_0_0(v5);
      _os_log_error_impl(&dword_193225000, log, v3, "Called [AKCoordinatedDataBlock start] after block has already been started. Ignoring call and not starting again.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    [(AKCoordinatedDataBlock *)selfCopy _start];
  }

  objc_storeStrong(v13, 0);
  _Block_object_dispose(&v14, 8);
}

uint64_t __31__AKCoordinatedDataBlock_start__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 24) & 1;
  *(*(result + 32) + 24) = 1;
  return result;
}

- (void)setCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 1;
  p_lock = &selfCopy->_lock;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __40__AKCoordinatedDataBlock_setCompletion___block_invoke;
  v8 = &unk_1E73D8168;
  v10[1] = &v11;
  v9 = MEMORY[0x1E69E5928](selfCopy);
  v10[0] = MEMORY[0x1E69E5928](location[0]);
  ak_unfair_lock_perform_3(p_lock, &v4);
  if (v12[3])
  {
    dispatch_group_leave(selfCopy->_group);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(location, 0);
}

uint64_t __40__AKCoordinatedDataBlock_setCompletion___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = *(a1[4] + 16) == 0;
  v1 = MEMORY[0x193B165F0](a1[5]);
  v2 = a1[4];
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  return MEMORY[0x1E69E5920](v3);
}

- (void)_start
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  block = selfCopy->_block;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __32__AKCoordinatedDataBlock__start__block_invoke;
  v7 = &unk_1E73D8190;
  objc_copyWeak(&v8, location);
  block[2](block, &v3);
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

void __32__AKCoordinatedDataBlock__start__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _callCompletionWithData:location[0] error:v6];
  MEMORY[0x1E69E5920](WeakRetained);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_callCompletionWithData:(id)data error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v16 = 0;
  objc_storeStrong(&v16, error);
  objc_initWeak(&v15, selfCopy);
  group = selfCopy->_group;
  queue = dispatch_get_global_queue(21, 0);
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __56__AKCoordinatedDataBlock__callCompletionWithData_error___block_invoke;
  v11 = &unk_1E73D81B8;
  objc_copyWeak(&v14, &v15);
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = MEMORY[0x1E69E5928](v16);
  dispatch_group_notify(group, queue, &v7);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __56__AKCoordinatedDataBlock__callCompletionWithData_error___block_invoke(uint64_t a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = objc_loadWeakRetained((a1 + 48));
  if (v18[0])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 838860800;
    v14 = 48;
    v15 = __Block_byref_object_copy__12;
    v16 = __Block_byref_object_dispose__12;
    v17 = 0;
    v3 = (v18[0] + 28);
    v5 = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __56__AKCoordinatedDataBlock__callCompletionWithData_error___block_invoke_2;
    v9 = &unk_1E73D6B00;
    v10[1] = &v11;
    v10[0] = MEMORY[0x1E69E5928](v18[0]);
    ak_unfair_lock_perform_3(v3, &v5);
    if (v12[5])
    {
      v1 = *(a1 + 32);
      v2 = *(a1 + 40);
      (*(v12[5] + 16))();
    }

    objc_storeStrong(v10, 0);
    _Block_object_dispose(&v11, 8);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(v18, 0);
}

uint64_t __56__AKCoordinatedDataBlock__callCompletionWithData_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x193B165F0](*(*(a1 + 32) + 16));
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  return MEMORY[0x1E69E5920](v3);
}

@end