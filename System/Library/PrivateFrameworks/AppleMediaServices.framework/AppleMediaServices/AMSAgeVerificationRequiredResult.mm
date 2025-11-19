@interface AMSAgeVerificationRequiredResult
- (AMSAgeVerificationRequiredResult)initWithRequiredType:(unint64_t)a3;
@end

@implementation AMSAgeVerificationRequiredResult

- (AMSAgeVerificationRequiredResult)initWithRequiredType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = AMSAgeVerificationRequiredResult;
  result = [(AMSAgeVerificationRequiredResult *)&v5 init];
  if (result)
  {
    result->_requiredType = a3;
    result->_isVerificationRequired = a3 == 2;
  }

  return result;
}

@end