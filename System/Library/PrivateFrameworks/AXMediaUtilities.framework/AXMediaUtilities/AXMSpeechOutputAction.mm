@interface AXMSpeechOutputAction
- (AXMSpeechOutputAction)initWithText:(id)text;
@end

@implementation AXMSpeechOutputAction

- (AXMSpeechOutputAction)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = AXMSpeechOutputAction;
  v6 = [(AXMOutputAction *)&v9 _initWithHandle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, text);
  }

  return v7;
}

@end