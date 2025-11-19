@interface CTPlanSignUpDetails
- (BOOL)isEqual:(id)a3;
- (CTPlanSignUpDetails)initWithCoder:(id)a3;
- (CTPlanSignUpDetails)initWithSignUpUrl:(id)a3 signUpUrlType:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPlanSignUpDetails

- (CTPlanSignUpDetails)initWithSignUpUrl:(id)a3 signUpUrlType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CTPlanSignUpDetails;
  v8 = [(CTPlanSignUpDetails *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    signUpUrl = v8->_signUpUrl;
    v8->_signUpUrl = v9;

    v11 = [v7 copy];
    signUpUrlType = v8->_signUpUrlType;
    v8->_signUpUrlType = v11;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTPlanSignUpDetails *)self signUpUrl];
  [v3 appendFormat:@" signUpUrl=%@", v4];

  v5 = [(CTPlanSignUpDetails *)self signUpUrlType];
  [v3 appendFormat:@" signUpUrlType=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTPlanSignUpDetails *)self signUpUrl];
      v8 = [(CTPlanSignUpDetails *)v6 signUpUrl];
      if (v7 == v8 || (-[CTPlanSignUpDetails signUpUrl](self, "signUpUrl"), v3 = objc_claimAutoreleasedReturnValue(), -[CTPlanSignUpDetails signUpUrl](v6, "signUpUrl"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        v10 = [(CTPlanSignUpDetails *)self signUpUrlType];
        v11 = [(CTPlanSignUpDetails *)v6 signUpUrlType];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(CTPlanSignUpDetails *)self signUpUrlType];
          v13 = [(CTPlanSignUpDetails *)v6 signUpUrlType];
          v9 = [v12 isEqualToString:v13];
        }

        if (v7 == v8)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (CTPlanSignUpDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTPlanSignUpDetails;
  v5 = [(CTPlanSignUpDetails *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signUpUrl"];
    signUpUrl = v5->_signUpUrl;
    v5->_signUpUrl = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signUpUrlType"];
    signUpUrlType = v5->_signUpUrlType;
    v5->_signUpUrlType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  signUpUrl = self->_signUpUrl;
  v5 = a3;
  [v5 encodeObject:signUpUrl forKey:@"signUpUrl"];
  [v5 encodeObject:self->_signUpUrlType forKey:@"signUpUrlType"];
}

@end