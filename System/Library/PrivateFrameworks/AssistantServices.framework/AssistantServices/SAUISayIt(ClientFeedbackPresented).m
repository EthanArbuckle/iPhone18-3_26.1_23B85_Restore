@interface SAUISayIt(ClientFeedbackPresented)
- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented;
@end

@implementation SAUISayIt(ClientFeedbackPresented)

- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented
{
  v4 = a3;
  if (v4)
  {
    v7[0] = [a1 aceId];
    v7[1] = [a1 encodedClassName];
    v7[2] = 0;
    v8 = [a1 dialogIdentifier];
    v5 = [a1 listenAfterSpeaking];
    v9 = [v5 BOOLValue];

    if (v7[0] | v8)
    {
      __copy_constructor_8_8_s0_s8_s16_s24_t32w1(v6, v7);
      v4[2](v4, v6);
    }

    __destructor_8_s0_s8_s16_s24(v7);
  }
}

@end