@interface VCSessionParticipantAudioStreamConfig
- (void)dealloc;
@end

@implementation VCSessionParticipantAudioStreamConfig

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionParticipantAudioStreamConfig;
  [(VCAudioStreamConfig *)&v3 dealloc];
}

@end