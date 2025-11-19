@interface VCSessionParticipantMediaTransition
- (BOOL)isEqual:(id)a3;
- (VCSessionParticipantMediaTransition)initWithCoder:(id)a3;
- (VCSessionParticipantMediaTransition)initWithMediaType:(unsigned int)a3 fromState:(unsigned int)a4 toState:(unsigned int)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VCSessionParticipantMediaTransition

- (VCSessionParticipantMediaTransition)initWithMediaType:(unsigned int)a3 fromState:(unsigned int)a4 toState:(unsigned int)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCSessionParticipantMediaTransition;
  v8 = [(VCSessionParticipantMediaTransition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_mediaType = a3;
    v8->_fromState = a4;
    v8->_toState = a5;
  }

  else
  {
    [VCSessionParticipantMediaTransition initWithMediaType:fromState:toState:];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_mediaType == *(a3 + 2) && self->_fromState == *(a3 + 3) && self->_toState == *(a3 + 4);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt32:self->_mediaType forKey:kVCSessionParticipantMediaTransitionMediaType];
  [a3 encodeInt32:self->_fromState forKey:kVCSessionParticipantMediaTransitionFromState];
  toState = self->_toState;
  v6 = kVCSessionParticipantMediaTransitionToState;

  [a3 encodeInt32:toState forKey:v6];
}

- (VCSessionParticipantMediaTransition)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCSessionParticipantMediaTransition;
  v4 = [(VCSessionParticipantMediaTransition *)&v6 init];
  if (v4)
  {
    if ([a3 containsValueForKey:kVCSessionParticipantMediaTransitionMediaType])
    {
      v4->_mediaType = [a3 decodeInt32ForKey:kVCSessionParticipantMediaTransitionMediaType];
    }

    if ([a3 containsValueForKey:kVCSessionParticipantMediaTransitionFromState])
    {
      v4->_fromState = [a3 decodeInt32ForKey:kVCSessionParticipantMediaTransitionFromState];
    }

    if ([a3 containsValueForKey:kVCSessionParticipantMediaTransitionToState])
    {
      v4->_toState = [a3 decodeInt32ForKey:kVCSessionParticipantMediaTransitionToState];
    }
  }

  return v4;
}

- (void)initWithMediaType:fromState:toState:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315906;
      v3 = v0;
      v4 = 2080;
      v5 = "[VCSessionParticipantMediaTransition initWithMediaType:fromState:toState:]";
      v6 = 1024;
      v7 = 30;
      v8 = 2112;
      v9 = VCSessionMediaType_Name(MEMORY[8]);
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate media transition for mediaTyp=%@", &v2, 0x26u);
    }
  }
}

@end