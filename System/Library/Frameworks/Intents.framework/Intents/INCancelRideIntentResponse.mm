@interface INCancelRideIntentResponse
- (INCancelRideIntentResponse)initWithBackingStore:(id)store;
- (INCancelRideIntentResponse)initWithCode:(INCancelRideIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INCancelRideIntentResponse)initWithCoder:(id)coder;
- (INCancelRideIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCancelRideIntentResponse

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  code = [(INCancelRideIntentResponse *)self code];
  v4 = code;
  if (code <= INCancelRideIntentResponseCodeFailure)
  {
    null = *(&off_1E727DD60 + code);
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
  v5.receiver = self;
  v5.super_class = INCancelRideIntentResponse;
  coderCopy = coder;
  [(INIntentResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_cancellationFee forKey:{@"cancellationFee", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_cancellationFeeThreshold forKey:@"cancellationFeeThreshold"];
}

- (INCancelRideIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INCancelRideIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INCancelRideIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INCancelRideIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INCancelRideIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INCancelRideIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = INCancelRideIntentResponse;
  v5 = [(INIntentResponse *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancellationFee"];
    cancellationFee = v5->_cancellationFee;
    v5->_cancellationFee = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancellationFeeThreshold"];
    cancellationFeeThreshold = v5->_cancellationFeeThreshold;
    v5->_cancellationFeeThreshold = v8;
  }

  return v5;
}

- (INCancelRideIntentResponse)initWithCode:(INCancelRideIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v5.receiver = self;
  v5.super_class = INCancelRideIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:userActivity];
}

@end