@interface AXBClarityUIManager
+ (id)sharedManager;
- (AXBClarityUIManager)init;
- (BOOL)validateAdminPasscode:(id)passcode;
- (void)setAdminPasscode:(id)passcode;
@end

@implementation AXBClarityUIManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[AXBClarityUIManager sharedManager];
  }

  v3 = sharedManager_manager_0;

  return v3;
}

uint64_t __36__AXBClarityUIManager_sharedManager__block_invoke()
{
  sharedManager_manager_0 = objc_alloc_init(AXBClarityUIManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBClarityUIManager)init
{
  v8.receiver = self;
  v8.super_class = AXBClarityUIManager;
  v2 = [(AXBClarityUIManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x29EDBDF90]);
    v4 = CLFLogCommon();
    v5 = [v3 initWithServiceName:@"ClarityUI" accountName:@"user" groupName:@"com.apple.Accessibility" logFacility:v4];
    passcodeHandle = v2->_passcodeHandle;
    v2->_passcodeHandle = v5;
  }

  return v2;
}

- (void)setAdminPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = [passcodeCopy length];
  if (v5 == *MEMORY[0x29EDBDE30])
  {
    passcodeHandle = [(AXBClarityUIManager *)self passcodeHandle];
    [passcodeHandle attemptToSetPasscode:passcodeCopy];
  }

  else
  {
    v7 = CLFLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXBClarityUIManager setAdminPasscode:passcodeCopy];
    }
  }
}

- (BOOL)validateAdminPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = [passcodeCopy length];
  if (v5 == *MEMORY[0x29EDBDE30])
  {
    passcodeHandle = [(AXBClarityUIManager *)self passcodeHandle];
    passcode = [passcodeHandle passcode];
    v8 = [passcode isEqualToString:passcodeCopy];
  }

  else
  {
    v9 = CLFLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [AXBClarityUIManager validateAdminPasscode:passcodeCopy];
    }

    v8 = 0;
  }

  return v8;
}

- (void)setAdminPasscode:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  [a1 length];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_29BBBD000, v1, v2, "Attempted to set admin passcode to a string of %lu characters (expected: %lu).", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

- (void)validateAdminPasscode:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  [a1 length];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_29BBBD000, v1, v2, "Attempted to validate admin passcode as a string of %lu characters (expected: %lu).", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

@end