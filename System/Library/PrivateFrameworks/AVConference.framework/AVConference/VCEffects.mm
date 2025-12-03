@interface VCEffects
- (VCEffects)init;
- (void)dealloc;
- (void)setEffectsMode:(int)mode;
- (void)setEffectsType:(int)type;
@end

@implementation VCEffects

- (VCEffects)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCEffects;
  v2 = [(VCEffects *)&v4 init];
  if (v2)
  {
    v2->_bufferPool = [[VCVideoFrameBufferPool alloc] initWithCapacity:5];
    *&v2->_effectsApplied = 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCEffects;
  [(VCEffects *)&v3 dealloc];
}

- (void)setEffectsMode:(int)mode
{
  v12 = *MEMORY[0x1E69E9840];
  self->_effectsMode = mode;
  if (!mode)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v4;
        v8 = 2080;
        v9 = "[VCEffects setEffectsMode:]";
        v10 = 1024;
        v11 = 49;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting effects to disabled, re-initialize the buffer", &v6, 0x1Cu);
      }
    }

    self->_bufferPool = [[VCVideoFrameBufferPool alloc] initWithCapacity:5];
  }
}

- (void)setEffectsType:(int)type
{
  self->_effectsType = type;
  self->_faceMeshTrackingEnabled = type == 2;
  self->_effectsApplied = (type - 1) < 2;
}

@end