@interface AXMSpeechOutputAction
- (AXMSpeechOutputAction)initWithText:(id)a3;
@end

@implementation AXMSpeechOutputAction

- (AXMSpeechOutputAction)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXMSpeechOutputAction;
  v6 = [(AXMOutputAction *)&v9 _initWithHandle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  return v7;
}

@end