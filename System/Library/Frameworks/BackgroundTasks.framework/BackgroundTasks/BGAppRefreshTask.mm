@interface BGAppRefreshTask
- (id)_initWithIdentifier:(id)a3 activity:(id)a4;
- (id)description;
@end

@implementation BGAppRefreshTask

- (id)_initWithIdentifier:(id)a3 activity:(id)a4
{
  v5.receiver = self;
  v5.super_class = BGAppRefreshTask;
  return [(BGTask *)&v5 _initWithIdentifier:a3 activity:a4];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(BGTask *)self identifier];
  v4 = [v2 stringWithFormat:@"<BGAppRefreshTask: %@>", v3];

  return v4;
}

double __48__BGAppRefreshTask_setTaskCompletedWithSuccess___block_invoke()
{
  v0 = NSClassFromString(&cfstr_Uiapplication.isa);
  if (!v0)
  {
    return 0.0;
  }

  v1 = [(objc_class *)v0 sharedApplication];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__BGAppRefreshTask_setTaskCompletedWithSuccess___block_invoke_2;
  v16[3] = &unk_1E79805D0;
  v2 = v1;
  v17 = v2;
  v3 = MEMORY[0x1B26EAFA0](v16);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 isMainThread];

  if (v5)
  {
    v6 = v3[2](v3);
    *(v13 + 24) = v6;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__BGAppRefreshTask_setTaskCompletedWithSuccess___block_invoke_3;
    block[3] = &unk_1E79805F8;
    v11 = &v12;
    v10 = v3;
    dispatch_sync(MEMORY[0x1E69E96A0], block);

    v6 = *(v13 + 24);
  }

  if (v6)
  {
    v7 = 0.1;
  }

  else
  {
    v7 = 0.0;
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __48__BGAppRefreshTask_setTaskCompletedWithSuccess___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _appAdoptsUISceneLifecycle];
  if ((v2 & 1) == 0)
  {
    [*(a1 + 32) _updateSnapshotForBackgroundApplication:1];
  }

  return v2 ^ 1u;
}

uint64_t __48__BGAppRefreshTask_setTaskCompletedWithSuccess___block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end