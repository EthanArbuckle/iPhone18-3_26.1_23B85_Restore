@interface INSendRideFeedbackIntentResponse
- (INSendRideFeedbackIntentResponse)initWithBackingStore:(id)a3;
- (INSendRideFeedbackIntentResponse)initWithCode:(INSendRideFeedbackIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSendRideFeedbackIntentResponse)initWithCoder:(id)a3;
- (INSendRideFeedbackIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSendRideFeedbackIntentResponse

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  v3 = [(INSendRideFeedbackIntentResponse *)self code];
  v4 = v3;
  if (v3 <= INSendRideFeedbackIntentResponseCodeFailure)
  {
    v5 = off_1E72822D0[v3];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"userActivity";
  v12[0] = v5;
  v6 = [(INIntentResponse *)self userActivity];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!v6)
  {
  }

  if (v4 >= 4)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSendRideFeedbackIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INSendRideFeedbackIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (INSendRideFeedbackIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSendRideFeedbackIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSendRideFeedbackIntentResponse)initWithCode:(INSendRideFeedbackIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v5.receiver = self;
  v5.super_class = INSendRideFeedbackIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:userActivity];
}

@end