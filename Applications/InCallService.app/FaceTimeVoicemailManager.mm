@interface FaceTimeVoicemailManager
- (void)messagesPassingTest:(id)test completion:;
- (void)reportTranscriptionProblemForVoicemail:(id)voicemail;
- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail;
@end

@implementation FaceTimeVoicemailManager

- (void)messagesPassingTest:(id)test completion:
{
  v4 = v3;
  v6 = _Block_copy(test);
  v7 = _Block_copy(v4);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = self;
  selfCopy = self;

  sub_100211F74(&unk_1002FFDD8, v8);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_10020FE94();
}

- (void)reportTranscriptionProblemForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_10020FE94();
}

@end