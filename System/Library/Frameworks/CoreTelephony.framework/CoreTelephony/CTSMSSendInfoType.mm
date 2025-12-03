@interface CTSMSSendInfoType
- (BOOL)isEqual:(id)equal;
- (CTSMSSendInfoType)init;
- (CTSMSSendInfoType)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSMSSendInfoType

- (CTSMSSendInfoType)init
{
  v8.receiver = self;
  v8.super_class = CTSMSSendInfoType;
  v2 = [(CTSMSSendInfoType *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CTSMSSendInfoType *)v2 setStatusType:3];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(CTSMSSendInfoType *)v3 setError1:v4];

    v5 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(CTSMSSendInfoType *)v3 setError2:v5];

    v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(CTSMSSendInfoType *)v3 setRecommendedRetryDelayInSeconds:v6];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      statusType = [(CTSMSSendInfoType *)self statusType];
      if (statusType == [(CTSMSSendInfoType *)v5 statusType])
      {
        error1 = [(CTSMSSendInfoType *)self error1];
        error12 = [(CTSMSSendInfoType *)v5 error1];
        if ([error1 isEqualToNumber:error12])
        {
          error2 = [(CTSMSSendInfoType *)self error2];
          error22 = [(CTSMSSendInfoType *)v5 error2];
          if ([error2 isEqualToNumber:error22])
          {
            recommendedRetryDelayInSeconds = [(CTSMSSendInfoType *)self recommendedRetryDelayInSeconds];
            recommendedRetryDelayInSeconds2 = [(CTSMSSendInfoType *)v5 recommendedRetryDelayInSeconds];
            v13 = [recommendedRetryDelayInSeconds isEqualToNumber:recommendedRetryDelayInSeconds2];
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
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setStatusType:{-[CTSMSSendInfoType statusType](self, "statusType")}];
  error1 = [(CTSMSSendInfoType *)self error1];
  [v4 setError1:error1];

  error2 = [(CTSMSSendInfoType *)self error2];
  [v4 setError2:error2];

  recommendedRetryDelayInSeconds = [(CTSMSSendInfoType *)self recommendedRetryDelayInSeconds];
  [v4 setRecommendedRetryDelayInSeconds:recommendedRetryDelayInSeconds];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  statusType = self->_statusType;
  coderCopy = coder;
  [coderCopy encodeInt64:statusType forKey:@"status_type"];
  [coderCopy encodeObject:self->_error1 forKey:@"error1"];
  [coderCopy encodeObject:self->_error2 forKey:@"error2"];
  [coderCopy encodeObject:self->_recommendedRetryDelayInSeconds forKey:@"recommended_retry_interval"];
}

- (CTSMSSendInfoType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTSMSSendInfoType;
  v5 = [(CTSMSSendInfoType *)&v13 init];
  if (v5)
  {
    v5->_statusType = [coderCopy decodeInt64ForKey:@"status_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error1"];
    error1 = v5->_error1;
    v5->_error1 = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error2"];
    error2 = v5->_error2;
    v5->_error2 = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recommended_retry_interval"];
    recommendedRetryDelayInSeconds = v5->_recommendedRetryDelayInSeconds;
    v5->_recommendedRetryDelayInSeconds = v10;
  }

  return v5;
}

@end