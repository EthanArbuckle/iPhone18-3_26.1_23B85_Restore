@interface AVCBasebandAudioTapRegistrationResult
- (AVCBasebandAudioTapRegistrationResult)init;
- (id)description;
- (void)init;
@end

@implementation AVCBasebandAudioTapRegistrationResult

- (AVCBasebandAudioTapRegistrationResult)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AVCBasebandAudioTapRegistrationResult;
  v2 = [(AVCBasebandAudioTapRegistrationResult *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_tapToken = 0;
    v2->_uplinkToken = 0;
    v2->_downlinkToken = 0;
  }

  else
  {
    [AVCBasebandAudioTapRegistrationResult init];
  }

  return v3;
}

- (id)description
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AVCBasebandAudioTapRegistrationResult;
  v4 = [(AVCBasebandAudioTapRegistrationResult *)&v7 description];
  if (self->_didSucceed)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  return [v3 stringWithFormat:@"{ %@ success=%s tapToken=%ld uplinkToken=%ld downlinkToken=%ld }", v4, v5, self->_tapToken, self->_uplinkToken, self->_downlinkToken];
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to super init instance", v2, v3, v4, v5, v6);
    }
  }
}

@end