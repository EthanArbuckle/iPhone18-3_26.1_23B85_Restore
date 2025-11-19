@interface CTSMSSendInfoType
- (BOOL)isEqual:(id)a3;
- (CTSMSSendInfoType)init;
- (CTSMSSendInfoType)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CTSMSSendInfoType *)self statusType];
      if (v6 == [(CTSMSSendInfoType *)v5 statusType])
      {
        v7 = [(CTSMSSendInfoType *)self error1];
        v8 = [(CTSMSSendInfoType *)v5 error1];
        if ([v7 isEqualToNumber:v8])
        {
          v9 = [(CTSMSSendInfoType *)self error2];
          v10 = [(CTSMSSendInfoType *)v5 error2];
          if ([v9 isEqualToNumber:v10])
          {
            v11 = [(CTSMSSendInfoType *)self recommendedRetryDelayInSeconds];
            v12 = [(CTSMSSendInfoType *)v5 recommendedRetryDelayInSeconds];
            v13 = [v11 isEqualToNumber:v12];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setStatusType:{-[CTSMSSendInfoType statusType](self, "statusType")}];
  v5 = [(CTSMSSendInfoType *)self error1];
  [v4 setError1:v5];

  v6 = [(CTSMSSendInfoType *)self error2];
  [v4 setError2:v6];

  v7 = [(CTSMSSendInfoType *)self recommendedRetryDelayInSeconds];
  [v4 setRecommendedRetryDelayInSeconds:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  statusType = self->_statusType;
  v5 = a3;
  [v5 encodeInt64:statusType forKey:@"status_type"];
  [v5 encodeObject:self->_error1 forKey:@"error1"];
  [v5 encodeObject:self->_error2 forKey:@"error2"];
  [v5 encodeObject:self->_recommendedRetryDelayInSeconds forKey:@"recommended_retry_interval"];
}

- (CTSMSSendInfoType)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTSMSSendInfoType;
  v5 = [(CTSMSSendInfoType *)&v13 init];
  if (v5)
  {
    v5->_statusType = [v4 decodeInt64ForKey:@"status_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error1"];
    error1 = v5->_error1;
    v5->_error1 = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error2"];
    error2 = v5->_error2;
    v5->_error2 = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recommended_retry_interval"];
    recommendedRetryDelayInSeconds = v5->_recommendedRetryDelayInSeconds;
    v5->_recommendedRetryDelayInSeconds = v10;
  }

  return v5;
}

@end