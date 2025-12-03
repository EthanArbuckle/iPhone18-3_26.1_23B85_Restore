@interface CTPNRRequestSentInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTPNRRequestSentInfo:(id)info;
- (CTPNRRequestSentInfo)init;
- (CTPNRRequestSentInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPNRRequestSentInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", success=%d", -[CTPNRRequestSentInfo success](self, "success")];
  token = [(CTPNRRequestSentInfo *)self token];
  [v3 appendFormat:@", token=%@", token];

  timeout = [(CTPNRRequestSentInfo *)self timeout];
  [v3 appendFormat:@", timeout=%@", timeout];

  [v3 appendString:@">"];

  return v3;
}

- (CTPNRRequestSentInfo)init
{
  v5.receiver = self;
  v5.super_class = CTPNRRequestSentInfo;
  v2 = [(CTPNRRequestSentInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CTPNRRequestSentInfo *)v2 setSuccess:0];
  }

  return v3;
}

- (BOOL)isEqualToCTPNRRequestSentInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy || (v9 = -[CTPNRRequestSentInfo success](self, "success"), v9 != [infoCopy success]))
  {
    v10 = 0;
    goto LABEL_18;
  }

  token = [(CTPNRRequestSentInfo *)self token];
  if (token || ([infoCopy token], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    token2 = [(CTPNRRequestSentInfo *)self token];
    token3 = [infoCopy token];
    if (([token2 isEqualToString:token3] & 1) == 0)
    {

      v10 = 0;
      goto LABEL_15;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  timeout = [(CTPNRRequestSentInfo *)self timeout];
  if (!timeout)
  {
    timeout2 = [infoCopy timeout];
    if (!timeout2)
    {
      v10 = 1;
LABEL_20:

      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  timeout3 = [(CTPNRRequestSentInfo *)self timeout];
  timeout4 = [infoCopy timeout];
  v10 = timeout3 == timeout4;

  if (!timeout)
  {
    goto LABEL_20;
  }

  if (v12)
  {
LABEL_14:
  }

LABEL_15:
  if (!token)
  {
  }

LABEL_18:
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTPNRRequestSentInfo *)self isEqualToCTPNRRequestSentInfo:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTPNRRequestSentInfo allocWithZone:zone];
  [(CTPNRRequestSentInfo *)v4 setSuccess:self->_success];
  [(CTPNRRequestSentInfo *)v4 setToken:self->_token];
  [(CTPNRRequestSentInfo *)v4 setTimeout:self->_timeout];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  timeout = self->_timeout;
  coderCopy = coder;
  [coderCopy encodeObject:timeout forKey:@"timeout"];
  [coderCopy encodeObject:self->_token forKey:@"push_token"];
  [coderCopy encodeBool:self->_success forKey:@"success"];
}

- (CTPNRRequestSentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTPNRRequestSentInfo;
  v5 = [(CTPNRRequestSentInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
    timeout = v5->_timeout;
    v5->_timeout = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"push_token"];
    token = v5->_token;
    v5->_token = v8;

    v5->_success = [coderCopy decodeBoolForKey:@"success"];
  }

  return v5;
}

@end