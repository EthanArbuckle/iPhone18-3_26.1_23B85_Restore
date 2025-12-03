@interface AVAudioSession(VoicemailUI)
- (void)activateVoicemailAudioSession;
- (void)deactivateVoicemailAudioSession;
@end

@implementation AVAudioSession(VoicemailUI)

- (void)activateVoicemailAudioSession
{
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to activate voicemail audio session: %@", &v2, 0xCu);
}

- (void)deactivateVoicemailAudioSession
{
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to deactivate voicemail audio session: %@", &v2, 0xCu);
}

@end