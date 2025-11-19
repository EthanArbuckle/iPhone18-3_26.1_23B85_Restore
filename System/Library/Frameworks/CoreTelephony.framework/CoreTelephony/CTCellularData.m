@interface CTCellularData
- (CTCellularData)init;
- (CTCellularDataRestrictedState)restrictedState;
@end

@implementation CTCellularData

- (CTCellularData)init
{
  v9.receiver = self;
  v9.super_class = CTCellularData;
  v2 = [(CTCellularData *)&v9 init];
  if (v2)
  {
    v2->_cuPolicyClient = network_usage_policy_create_client();
    v3 = dispatch_queue_create("com.apple.CTCellularData", 0);
    fObj = v2->_cuPolicyClientQueue.fObj.fObj;
    v2->_cuPolicyClientQueue.fObj.fObj = v3;
    if (fObj)
    {
      dispatch_release(fObj);
      v5 = v2->_cuPolicyClientQueue.fObj.fObj;
    }

    v2->_restrictedState = 0;
    cuPolicyClient = v2->_cuPolicyClient;
    v8 = v2;
    network_usage_policy_set_changed_handler();
  }

  return v2;
}

void __22__CTCellularData_init__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCellularDataRestrictionStateFromPolicies:a2];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__CTCellularData_init__block_invoke_2;
  block[3] = &unk_1E6A4A7D8;
  v5 = *(a1 + 32);
  dispatch_async(global_queue, block);
}

void __22__CTCellularData_init__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cellularDataRestrictionDidUpdateNotifier];

  if (v2)
  {
    v3 = [*(a1 + 32) cellularDataRestrictionDidUpdateNotifier];
    v3[2](v3, [*(a1 + 32) restrictedState]);
  }
}

- (CTCellularDataRestrictedState)restrictedState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  fObj = self->_cuPolicyClientQueue.fObj.fObj;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CTCellularData_restrictedState__block_invoke;
  v5[3] = &unk_1E6A4A828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(fObj, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end