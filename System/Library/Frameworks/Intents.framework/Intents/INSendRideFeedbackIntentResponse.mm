@interface INSendRideFeedbackIntentResponse
- (INSendRideFeedbackIntentResponse)initWithBackingStore:(id)store;
- (INSendRideFeedbackIntentResponse)initWithCode:(INSendRideFeedbackIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSendRideFeedbackIntentResponse)initWithCoder:(id)coder;
- (INSendRideFeedbackIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSendRideFeedbackIntentResponse

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  code = [(INSendRideFeedbackIntentResponse *)self code];
  v4 = code;
  if (code <= INSendRideFeedbackIntentResponseCodeFailure)
  {
    null = off_1E72822D0[code];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"userActivity";
  v12[0] = null;
  userActivity = [(INIntentResponse *)self userActivity];
  null2 = userActivity;
  if (!userActivity)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!userActivity)
  {
  }

  if (v4 >= 4)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSendRideFeedbackIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSendRideFeedbackIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (INSendRideFeedbackIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSendRideFeedbackIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSendRideFeedbackIntentResponse)initWithCode:(INSendRideFeedbackIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v5.receiver = self;
  v5.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:userActivity];
}

@end