@interface VCSessionParticipantMediaTransition
- (BOOL)isEqual:(id)equal;
- (VCSessionParticipantMediaTransition)initWithCoder:(id)coder;
- (VCSessionParticipantMediaTransition)initWithMediaType:(unsigned int)type fromState:(unsigned int)state toState:(unsigned int)toState;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCSessionParticipantMediaTransition

- (VCSessionParticipantMediaTransition)initWithMediaType:(unsigned int)type fromState:(unsigned int)state toState:(unsigned int)toState
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCSessionParticipantMediaTransition;
  v8 = [(VCSessionParticipantMediaTransition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_mediaType = type;
    v8->_fromState = state;
    v8->_toState = toState;
  }

  else
  {
    [VCSessionParticipantMediaTransition initWithMediaType:fromState:toState:];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_mediaType == *(equal + 2) && self->_fromState == *(equal + 3) && self->_toState == *(equal + 4);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_mediaType forKey:kVCSessionParticipantMediaTransitionMediaType];
  [coder encodeInt32:self->_fromState forKey:kVCSessionParticipantMediaTransitionFromState];
  toState = self->_toState;
  v6 = kVCSessionParticipantMediaTransitionToState;

  [coder encodeInt32:toState forKey:v6];
}

- (VCSessionParticipantMediaTransition)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCSessionParticipantMediaTransition;
  v4 = [(VCSessionParticipantMediaTransition *)&v6 init];
  if (v4)
  {
    if ([coder containsValueForKey:kVCSessionParticipantMediaTransitionMediaType])
    {
      v4->_mediaType = [coder decodeInt32ForKey:kVCSessionParticipantMediaTransitionMediaType];
    }

    if ([coder containsValueForKey:kVCSessionParticipantMediaTransitionFromState])
    {
      v4->_fromState = [coder decodeInt32ForKey:kVCSessionParticipantMediaTransitionFromState];
    }

    if ([coder containsValueForKey:kVCSessionParticipantMediaTransitionToState])
    {
      v4->_toState = [coder decodeInt32ForKey:kVCSessionParticipantMediaTransitionToState];
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