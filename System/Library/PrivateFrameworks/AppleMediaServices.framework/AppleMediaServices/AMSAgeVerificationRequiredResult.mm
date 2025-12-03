@interface AMSAgeVerificationRequiredResult
- (AMSAgeVerificationRequiredResult)initWithRequiredType:(unint64_t)type;
@end

@implementation AMSAgeVerificationRequiredResult

- (AMSAgeVerificationRequiredResult)initWithRequiredType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = AMSAgeVerificationRequiredResult;
  result = [(AMSAgeVerificationRequiredResult *)&v5 init];
  if (result)
  {
    result->_requiredType = type;
    result->_isVerificationRequired = type == 2;
  }

  return result;
}

@end