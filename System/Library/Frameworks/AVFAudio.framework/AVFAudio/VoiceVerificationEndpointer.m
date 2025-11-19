@interface VoiceVerificationEndpointer
- (VoiceVerificationEndpointer)init;
- (void)dealloc;
@end

@implementation VoiceVerificationEndpointer

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VoiceVerificationEndpointer;
  [(VoiceVerificationEndpointer *)&v2 dealloc];
}

- (VoiceVerificationEndpointer)init
{
  v3.receiver = self;
  v3.super_class = VoiceVerificationEndpointer;
  return [(VoiceVerificationEndpointer *)&v3 init];
}

@end