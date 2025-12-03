@interface WFRecordingStatusManager
+ (id)sharedManager;
- (void)acquireAssertion;
- (void)invalidateAssertion;
- (void)setRecording:(BOOL)recording;
@end

@implementation WFRecordingStatusManager

- (void)invalidateAssertion
{
  assertion = self->_assertion;
  if (assertion)
  {
    [(SBSStatusBarStyleOverridesAssertion *)assertion invalidate];
    v4 = self->_assertion;
    self->_assertion = 0;
  }
}

- (void)acquireAssertion
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getSBSStatusBarStyleOverridesAssertionClass_softClass;
  v14 = getSBSStatusBarStyleOverridesAssertionClass_softClass;
  if (!getSBSStatusBarStyleOverridesAssertionClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getSBSStatusBarStyleOverridesAssertionClass_block_invoke;
    v10[3] = &unk_278C222B8;
    v10[4] = &v11;
    __getSBSStatusBarStyleOverridesAssertionClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = [[v3 alloc] initWithStatusBarStyleOverrides:4 forPID:getpid() exclusive:1 showsWhenForeground:0];
  assertion = self->_assertion;
  self->_assertion = v5;

  v7 = self->_assertion;
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__WFRecordingStatusManager_acquireAssertion__block_invoke;
  v9[3] = &unk_278C1AB58;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__WFRecordingStatusManager_acquireAssertion__block_invoke_2;
  v8[3] = &unk_278C224A0;
  [(SBSStatusBarStyleOverridesAssertion *)v7 acquireWithHandler:v9 invalidationHandler:v8];
}

uint64_t __44__WFRecordingStatusManager_acquireAssertion__block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) invalidateAssertion];
  }

  return result;
}

- (void)setRecording:(BOOL)recording
{
  recordingCopy = recording;
  isRecording = [(WFRecordingStatusManager *)self isRecording];
  if (!isRecording || recordingCopy)
  {
    if (!isRecording && recordingCopy)
    {

      [(WFRecordingStatusManager *)self acquireAssertion];
    }
  }

  else
  {

    [(WFRecordingStatusManager *)self invalidateAssertion];
  }
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_1268);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

void __41__WFRecordingStatusManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

@end