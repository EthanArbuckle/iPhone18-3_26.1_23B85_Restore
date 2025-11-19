@interface INCancelRideIntentResponse
- (INCancelRideIntentResponse)initWithBackingStore:(id)a3;
- (INCancelRideIntentResponse)initWithCode:(INCancelRideIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INCancelRideIntentResponse)initWithCoder:(id)a3;
- (INCancelRideIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCancelRideIntentResponse

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  v3 = [(INCancelRideIntentResponse *)self code];
  v4 = v3;
  if (v3 <= INCancelRideIntentResponseCodeFailure)
  {
    v5 = *(&off_1E727DD60 + v3);
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
  v5.receiver = self;
  v5.super_class = INCancelRideIntentResponse;
  v4 = a3;
  [(INIntentResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_cancellationFee forKey:{@"cancellationFee", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_cancellationFeeThreshold forKey:@"cancellationFeeThreshold"];
}

- (INCancelRideIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INCancelRideIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INCancelRideIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INCancelRideIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INCancelRideIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INCancelRideIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = INCancelRideIntentResponse;
  v5 = [(INIntentResponse *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancellationFee"];
    cancellationFee = v5->_cancellationFee;
    v5->_cancellationFee = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancellationFeeThreshold"];
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