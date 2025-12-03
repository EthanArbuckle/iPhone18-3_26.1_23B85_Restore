@interface _ASAgentPeriodicMaintenanceActivity
- (id)initRegisteringActivityHandler:(BOOL)handler;
- (void)_activityDidTransitionToRunState:(id)state;
- (void)_registerActivity;
- (void)_runActivityWithCompletionHandler:(id)handler;
- (void)performPasskeyAvailabilityCheckForDomainsInSavedAccounts:(NSArray *)accounts completionHandler:(id)handler;
@end

@implementation _ASAgentPeriodicMaintenanceActivity

- (id)initRegisteringActivityHandler:(BOOL)handler
{
  handlerCopy = handler;
  v8.receiver = self;
  v8.super_class = _ASAgentPeriodicMaintenanceActivity;
  v4 = [(_ASAgentPeriodicMaintenanceActivity *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (handlerCopy)
    {
      [(_ASAgentPeriodicMaintenanceActivity *)v4 _registerActivity];
    }

    v6 = v5;
  }

  return v5;
}

- (void)_registerActivity
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_INFO, "Periodic maintenance activity checking in.", buf, 2u);
  }

  v4 = *MEMORY[0x1E69E9C50];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __56___ASAgentPeriodicMaintenanceActivity__registerActivity__block_invoke;
  handler[3] = &unk_1E7AF7D88;
  handler[4] = self;
  xpc_activity_register("com.apple.AuthenticationServicesCore.AuthenticationServicesAgent.PeriodicMaintenanceActivity", v4, handler);
}

- (void)_activityDidTransitionToRunState:(id)state
{
  stateCopy = state;
  v5 = os_transaction_create();
  v6 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_INFO, "Periodic maintenance activity transitioned to state Run.", buf, 2u);
  }

  if (!xpc_activity_set_state(stateCopy, 4))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_ASAgentPeriodicMaintenanceActivity _activityDidTransitionToRunState:];
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72___ASAgentPeriodicMaintenanceActivity__activityDidTransitionToRunState___block_invoke;
  v10[3] = &unk_1E7AF7DB0;
  v11 = stateCopy;
  v12 = v5;
  v8 = v5;
  v9 = stateCopy;
  [(_ASAgentPeriodicMaintenanceActivity *)self _runActivityWithCompletionHandler:v10];
}

- (void)_runActivityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73___ASAgentPeriodicMaintenanceActivity__runActivityWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7AF7E28;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)performPasskeyAvailabilityCheckForDomainsInSavedAccounts:(NSArray *)accounts completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = accounts;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B1D7BF4C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B1D88698;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B1D885D0;
  v15[5] = v14;
  accountsCopy = accounts;
  selfCopy = self;
  sub_1B1D22574(0, 0, v10, &unk_1B1D86880, v15);
}

@end