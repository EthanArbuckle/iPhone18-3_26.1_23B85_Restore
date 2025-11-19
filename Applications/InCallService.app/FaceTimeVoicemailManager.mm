@interface FaceTimeVoicemailManager
- (void)messagesPassingTest:(id)a3 completion:;
- (void)reportTranscriptionProblemForVoicemail:(id)a3;
- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4;
@end

@implementation FaceTimeVoicemailManager

- (void)messagesPassingTest:(id)a3 completion:
{
  v4 = v3;
  v6 = _Block_copy(a3);
  v7 = _Block_copy(v4);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = self;
  v9 = self;

  sub_100211F74(&unk_1002FFDD8, v8);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_10020FE94();
}

- (void)reportTranscriptionProblemForVoicemail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10020FE94();
}

@end