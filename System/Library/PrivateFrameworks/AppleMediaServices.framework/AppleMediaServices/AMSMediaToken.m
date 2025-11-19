@interface AMSMediaToken
- (AMSMediaToken)initWithCoder:(id)a3;
- (AMSMediaToken)initWithString:(id)a3 expirationDate:(id)a4 lifetime:(double)a5 valid:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired;
- (BOOL)willExpireWithin:(double)a3;
- (double)percentageOfLifetimeRemaining;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)invalidCopy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSMediaToken

- (BOOL)isExpired
{
  v2 = [(AMSMediaToken *)self expirationDate];
  [v2 timeIntervalSinceNow];
  v4 = v3 < 0.0;

  return v4;
}

- (double)percentageOfLifetimeRemaining
{
  v3 = [(AMSMediaToken *)self expirationDate];
  [v3 timeIntervalSinceNow];
  v5 = v4;
  [(AMSMediaToken *)self lifetime];
  v7 = v5 / v6;

  return v7;
}

- (AMSMediaToken)initWithString:(id)a3 expirationDate:(id)a4 lifetime:(double)a5 valid:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v16.receiver = self;
  v16.super_class = AMSMediaToken;
  v12 = [(AMSMediaToken *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    tokenString = v12->_tokenString;
    v12->_tokenString = v13;

    objc_storeStrong(&v12->_expirationDate, a4);
    v12->_lifetime = a5;
    v12->_valid = a6;
  }

  return v12;
}

- (id)invalidCopy
{
  v2 = [(AMSMediaToken *)self copy];
  v2[8] = 0;

  return v2;
}

- (BOOL)willExpireWithin:(double)a3
{
  v4 = [(AMSMediaToken *)self expirationDate];
  [v4 timeIntervalSinceNow];
  v6 = v5 < a3;

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSMediaToken *)self tokenString];
  [v3 ams_setNullableObject:v4 forKey:@"tokenString"];

  v5 = [(AMSMediaToken *)self expirationDate];
  [v3 ams_setNullableObject:v5 forKey:@"expirationDate"];

  v6 = MEMORY[0x1E696AD98];
  [(AMSMediaToken *)self lifetime];
  v7 = [v6 numberWithDouble:?];
  [v3 ams_setNullableObject:v7 forKey:@"lifetime"];

  if ([(AMSMediaToken *)self isValid])
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  [v3 ams_setNullableObject:v8 forKey:@"valid"];
  v9 = [self ams_generateDescriptionWithSubObjects:v3];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    v13 = 0;
    v6 = v4;
LABEL_12:

    goto LABEL_13;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(AMSMediaToken *)self tokenString];
    v7 = [v5 tokenString];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(AMSMediaToken *)self expirationDate];
      v9 = [v5 expirationDate];
      if ([v8 isEqualToDate:v9])
      {
        [(AMSMediaToken *)self lifetime];
        v11 = v10;
        [v5 lifetime];
        v13 = v11 == v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [AMSMediaToken alloc];
  v6 = [(AMSMediaToken *)self tokenString];
  v7 = [v6 copyWithZone:a3];
  v8 = [(AMSMediaToken *)self expirationDate];
  v9 = [v8 copyWithZone:a3];
  [(AMSMediaToken *)self lifetime];
  v11 = [(AMSMediaToken *)v5 initWithString:v7 expirationDate:v9 lifetime:[(AMSMediaToken *)self isValid] valid:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(AMSMediaToken *)self expirationDate];
  [v6 encodeObject:v4 forKey:@"e"];

  [(AMSMediaToken *)self lifetime];
  [v6 encodeDouble:@"l" forKey:?];
  v5 = [(AMSMediaToken *)self tokenString];
  [v6 encodeObject:v5 forKey:@"t"];

  [v6 encodeBool:-[AMSMediaToken isValid](self forKey:{"isValid"), @"v"}];
}

- (AMSMediaToken)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSMediaToken;
  v5 = [(AMSMediaToken *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"e"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;

    [v4 decodeDoubleForKey:@"l"];
    v5->_lifetime = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    tokenString = v5->_tokenString;
    v5->_tokenString = v9;

    v5->_valid = [v4 decodeBoolForKey:@"v"];
  }

  return v5;
}

@end