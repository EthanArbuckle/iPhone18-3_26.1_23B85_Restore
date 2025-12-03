@interface SAAceView(ClientFeedbackPresented)
- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented;
@end

@implementation SAAceView(ClientFeedbackPresented)

- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented
{
  v4 = a3;
  if (v4)
  {
    _af_dialogPhase = [self _af_dialogPhase];
    _af_dialogIdentifier = [self _af_dialogIdentifier];
    aceId = [self aceId];
    encodedClassName = [self encodedClassName];
    listenAfterSpeaking = [self listenAfterSpeaking];
    bOOLValue = [listenAfterSpeaking BOOLValue];

    if (_af_dialogPhase || _af_dialogIdentifier || aceId)
    {
      v12[0] = aceId;
      v12[1] = encodedClassName;
      v12[3] = _af_dialogIdentifier;
      v12[2] = _af_dialogPhase;
      v13 = bOOLValue;
      __copy_constructor_8_8_s0_s8_s16_s24_t32w1(v11, v12);
      v4[2](v4, v11);
      __destructor_8_s0_s8_s16_s24(v12);
    }
  }
}

@end