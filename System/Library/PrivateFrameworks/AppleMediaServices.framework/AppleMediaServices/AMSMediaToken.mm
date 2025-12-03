@interface AMSMediaToken
- (AMSMediaToken)initWithCoder:(id)coder;
- (AMSMediaToken)initWithString:(id)string expirationDate:(id)date lifetime:(double)lifetime valid:(BOOL)valid;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (BOOL)willExpireWithin:(double)within;
- (double)percentageOfLifetimeRemaining;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)invalidCopy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSMediaToken

- (BOOL)isExpired
{
  expirationDate = [(AMSMediaToken *)self expirationDate];
  [expirationDate timeIntervalSinceNow];
  v4 = v3 < 0.0;

  return v4;
}

- (double)percentageOfLifetimeRemaining
{
  expirationDate = [(AMSMediaToken *)self expirationDate];
  [expirationDate timeIntervalSinceNow];
  v5 = v4;
  [(AMSMediaToken *)self lifetime];
  v7 = v5 / v6;

  return v7;
}

- (AMSMediaToken)initWithString:(id)string expirationDate:(id)date lifetime:(double)lifetime valid:(BOOL)valid
{
  stringCopy = string;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = AMSMediaToken;
  v12 = [(AMSMediaToken *)&v16 init];
  if (v12)
  {
    v13 = [stringCopy copy];
    tokenString = v12->_tokenString;
    v12->_tokenString = v13;

    objc_storeStrong(&v12->_expirationDate, date);
    v12->_lifetime = lifetime;
    v12->_valid = valid;
  }

  return v12;
}

- (id)invalidCopy
{
  v2 = [(AMSMediaToken *)self copy];
  v2[8] = 0;

  return v2;
}

- (BOOL)willExpireWithin:(double)within
{
  expirationDate = [(AMSMediaToken *)self expirationDate];
  [expirationDate timeIntervalSinceNow];
  v6 = v5 < within;

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  tokenString = [(AMSMediaToken *)self tokenString];
  [v3 ams_setNullableObject:tokenString forKey:@"tokenString"];

  expirationDate = [(AMSMediaToken *)self expirationDate];
  [v3 ams_setNullableObject:expirationDate forKey:@"expirationDate"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    v13 = 0;
    tokenString = equalCopy;
LABEL_12:

    goto LABEL_13;
  }

  v5 = equalCopy;

  if (v5)
  {
    tokenString = [(AMSMediaToken *)self tokenString];
    tokenString2 = [v5 tokenString];
    if ([tokenString isEqualToString:tokenString2])
    {
      expirationDate = [(AMSMediaToken *)self expirationDate];
      expirationDate2 = [v5 expirationDate];
      if ([expirationDate isEqualToDate:expirationDate2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [AMSMediaToken alloc];
  tokenString = [(AMSMediaToken *)self tokenString];
  v7 = [tokenString copyWithZone:zone];
  expirationDate = [(AMSMediaToken *)self expirationDate];
  v9 = [expirationDate copyWithZone:zone];
  [(AMSMediaToken *)self lifetime];
  v11 = [(AMSMediaToken *)v5 initWithString:v7 expirationDate:v9 lifetime:[(AMSMediaToken *)self isValid] valid:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  expirationDate = [(AMSMediaToken *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"e"];

  [(AMSMediaToken *)self lifetime];
  [coderCopy encodeDouble:@"l" forKey:?];
  tokenString = [(AMSMediaToken *)self tokenString];
  [coderCopy encodeObject:tokenString forKey:@"t"];

  [coderCopy encodeBool:-[AMSMediaToken isValid](self forKey:{"isValid"), @"v"}];
}

- (AMSMediaToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AMSMediaToken;
  v5 = [(AMSMediaToken *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"e"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;

    [coderCopy decodeDoubleForKey:@"l"];
    v5->_lifetime = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    tokenString = v5->_tokenString;
    v5->_tokenString = v9;

    v5->_valid = [coderCopy decodeBoolForKey:@"v"];
  }

  return v5;
}

@end