@interface CRLAXQuickSpeak
- (BOOL)isSpeaking;
@end

@implementation CRLAXQuickSpeak

- (BOOL)isSpeaking
{
  if ([+[CRLAccessibility shouldFakeQuickSpeakAlwaysSpeaking] sharedInstance]
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CRLAXQuickSpeak;
  return [(CRLAXQuickSpeak *)&v4 isSpeaking];
}

@end