@interface ClipAdditionalDataResult
- (ClipAdditionalDataResult)initWithResult:(id)a3;
@end

@implementation ClipAdditionalDataResult

- (ClipAdditionalDataResult)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ClipAdditionalDataResult;
  v5 = [(ClipAdditionalDataResult *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = sub_10020B7B8([ClipAdditionalData alloc], v6);
      additionalData = v5->_additionalData;
      v5->_additionalData = v7;
    }
  }

  return v5;
}

@end