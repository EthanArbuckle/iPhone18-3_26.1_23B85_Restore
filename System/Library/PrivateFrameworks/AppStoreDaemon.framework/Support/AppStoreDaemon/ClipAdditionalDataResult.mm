@interface ClipAdditionalDataResult
- (ClipAdditionalDataResult)initWithResult:(id)result;
@end

@implementation ClipAdditionalDataResult

- (ClipAdditionalDataResult)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = ClipAdditionalDataResult;
  v5 = [(ClipAdditionalDataResult *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    object = [resultCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = sub_10020B7B8([ClipAdditionalData alloc], object);
      additionalData = v5->_additionalData;
      v5->_additionalData = v7;
    }
  }

  return v5;
}

@end