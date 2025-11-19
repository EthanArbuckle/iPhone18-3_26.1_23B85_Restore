@interface CTSweetgumUserConsentFlowInfo
- (BOOL)isEqual:(id)a3;
- (CTSweetgumUserConsentFlowInfo)init;
- (CTSweetgumUserConsentFlowInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSweetgumUserConsentFlowInfo

- (CTSweetgumUserConsentFlowInfo)init
{
  v7.receiver = self;
  v7.super_class = CTSweetgumUserConsentFlowInfo;
  v2 = [(CTSweetgumUserConsentFlowInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    webURL = v2->_webURL;
    v2->_webURL = 0;

    postData = v3->_postData;
    v3->_postData = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSweetgumUserConsentFlowInfo *)self webURL];
  [v3 appendFormat:@" URL=%@", v4];

  v5 = [(CTSweetgumUserConsentFlowInfo *)self postData];
  [v3 appendFormat:@" postData=%@", v5];

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
      v7 = [(CTSweetgumUserConsentFlowInfo *)self webURL];
      v8 = [(CTSweetgumUserConsentFlowInfo *)v6 webURL];
      if (v7 == v8 || (-[CTSweetgumUserConsentFlowInfo webURL](self, "webURL"), v3 = objc_claimAutoreleasedReturnValue(), -[CTSweetgumUserConsentFlowInfo webURL](v6, "webURL"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        v10 = [(CTSweetgumUserConsentFlowInfo *)self postData];
        v11 = [(CTSweetgumUserConsentFlowInfo *)v6 postData];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(CTSweetgumUserConsentFlowInfo *)self postData];
          v13 = [(CTSweetgumUserConsentFlowInfo *)v6 postData];
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

- (void)encodeWithCoder:(id)a3
{
  webURL = self->_webURL;
  v5 = a3;
  [v5 encodeObject:webURL forKey:@"webURL"];
  [v5 encodeObject:self->_postData forKey:@"postData"];
}

- (CTSweetgumUserConsentFlowInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTSweetgumUserConsentFlowInfo;
  v5 = [(CTSweetgumUserConsentFlowInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webURL"];
    webURL = v5->_webURL;
    v5->_webURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postData"];
    postData = v5->_postData;
    v5->_postData = v8;
  }

  return v5;
}

@end