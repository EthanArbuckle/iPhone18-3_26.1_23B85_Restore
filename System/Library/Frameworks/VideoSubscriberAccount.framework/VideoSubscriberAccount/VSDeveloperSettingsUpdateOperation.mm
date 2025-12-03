@interface VSDeveloperSettingsUpdateOperation
- (VSDeveloperServiceConnection)connection;
- (VSDeveloperSettingsUpdateOperation)initWithSettings:(id)settings;
- (void)executionDidBegin;
@end

@implementation VSDeveloperSettingsUpdateOperation

- (VSDeveloperSettingsUpdateOperation)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = VSDeveloperSettingsUpdateOperation;
  v6 = [(VSDeveloperSettingsUpdateOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    v8 = objc_alloc_init(VSOptional);
    v9 = v7->_result;
    v7->_result = v8;
  }

  return v7;
}

- (VSDeveloperServiceConnection)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_connection;
  if (!v3)
  {
    v3 = objc_alloc_init(VSDeveloperServiceConnection);
    objc_storeStrong(&selfCopy->_connection, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (void)executionDidBegin
{
  settings = [(VSDeveloperSettingsUpdateOperation *)self settings];
  if (!settings)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Developer settings operation invoked with nil settings."];
  }

  connection = [(VSDeveloperSettingsUpdateOperation *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__VSDeveloperSettingsUpdateOperation_executionDidBegin__block_invoke;
  v7[3] = &unk_278B732E0;
  v7[4] = self;
  v5 = [connection serviceWithErrorHandler:v7];

  if (!settings)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The settingsOrNil parameter must not be nil."];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__VSDeveloperSettingsUpdateOperation_executionDidBegin__block_invoke_2;
  v6[3] = &unk_278B73308;
  v6[4] = self;
  [v5 updateDeveloperSettings:settings completionHandler:v6];
}

uint64_t __55__VSDeveloperSettingsUpdateOperation_executionDidBegin__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [VSFailable failableWithError:a2];
  v5 = [VSOptional optionalWithObject:v4];
  [v3 setResult:v5];

  v6 = *(a1 + 32);

  return [v6 finishExecutionIfPossible];
}

uint64_t __55__VSDeveloperSettingsUpdateOperation_executionDidBegin__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [VSOptional optionalWithObject:a2];
  [v3 setResult:v4];

  v5 = *(a1 + 32);

  return [v5 finishExecutionIfPossible];
}

@end