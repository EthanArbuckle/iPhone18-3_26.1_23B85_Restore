@interface SAUISayIt(ClientFeedbackPresented)
- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented;
@end

@implementation SAUISayIt(ClientFeedbackPresented)

- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented
{
  v4 = a3;
  if (v4)
  {
    v7[0] = [self aceId];
    v7[1] = [self encodedClassName];
    v7[2] = 0;
    dialogIdentifier = [self dialogIdentifier];
    listenAfterSpeaking = [self listenAfterSpeaking];
    bOOLValue = [listenAfterSpeaking BOOLValue];

    if (v7[0] | dialogIdentifier)
    {
      __copy_constructor_8_8_s0_s8_s16_s24_t32w1(v6, v7);
      v4[2](v4, v6);
    }

    __destructor_8_s0_s8_s16_s24(v7);
  }
}

@end