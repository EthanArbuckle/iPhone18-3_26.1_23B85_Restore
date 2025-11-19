@interface AXStartSpeakScreenIntentResponse
- (AXStartSpeakScreenIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation AXStartSpeakScreenIntentResponse

- (AXStartSpeakScreenIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AXStartSpeakScreenIntentResponse;
  v7 = [(AXStartSpeakScreenIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(AXStartSpeakScreenIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

@end