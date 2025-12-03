@interface CTPlanSignUpDetails
- (BOOL)isEqual:(id)equal;
- (CTPlanSignUpDetails)initWithCoder:(id)coder;
- (CTPlanSignUpDetails)initWithSignUpUrl:(id)url signUpUrlType:(id)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPlanSignUpDetails

- (CTPlanSignUpDetails)initWithSignUpUrl:(id)url signUpUrlType:(id)type
{
  urlCopy = url;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = CTPlanSignUpDetails;
  v8 = [(CTPlanSignUpDetails *)&v14 init];
  if (v8)
  {
    v9 = [urlCopy copy];
    signUpUrl = v8->_signUpUrl;
    v8->_signUpUrl = v9;

    v11 = [typeCopy copy];
    signUpUrlType = v8->_signUpUrlType;
    v8->_signUpUrlType = v11;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  signUpUrl = [(CTPlanSignUpDetails *)self signUpUrl];
  [v3 appendFormat:@" signUpUrl=%@", signUpUrl];

  signUpUrlType = [(CTPlanSignUpDetails *)self signUpUrlType];
  [v3 appendFormat:@" signUpUrlType=%@", signUpUrlType];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      signUpUrl = [(CTPlanSignUpDetails *)self signUpUrl];
      signUpUrl2 = [(CTPlanSignUpDetails *)equalCopy signUpUrl];
      if (signUpUrl == signUpUrl2 || (-[CTPlanSignUpDetails signUpUrl](self, "signUpUrl"), v3 = objc_claimAutoreleasedReturnValue(), -[CTPlanSignUpDetails signUpUrl](equalCopy, "signUpUrl"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        signUpUrlType = [(CTPlanSignUpDetails *)self signUpUrlType];
        signUpUrlType2 = [(CTPlanSignUpDetails *)equalCopy signUpUrlType];
        if (signUpUrlType == signUpUrlType2)
        {
          v9 = 1;
        }

        else
        {
          signUpUrlType3 = [(CTPlanSignUpDetails *)self signUpUrlType];
          signUpUrlType4 = [(CTPlanSignUpDetails *)equalCopy signUpUrlType];
          v9 = [signUpUrlType3 isEqualToString:signUpUrlType4];
        }

        if (signUpUrl == signUpUrl2)
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

- (CTPlanSignUpDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTPlanSignUpDetails;
  v5 = [(CTPlanSignUpDetails *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signUpUrl"];
    signUpUrl = v5->_signUpUrl;
    v5->_signUpUrl = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signUpUrlType"];
    signUpUrlType = v5->_signUpUrlType;
    v5->_signUpUrlType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  signUpUrl = self->_signUpUrl;
  coderCopy = coder;
  [coderCopy encodeObject:signUpUrl forKey:@"signUpUrl"];
  [coderCopy encodeObject:self->_signUpUrlType forKey:@"signUpUrlType"];
}

@end