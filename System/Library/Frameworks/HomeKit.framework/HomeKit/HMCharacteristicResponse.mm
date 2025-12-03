@interface HMCharacteristicResponse
- (BOOL)isEqual:(id)equal;
- (HMCharacteristicResponse)initWithRequest:(id)request value:(id)value error:(id)error;
@end

@implementation HMCharacteristicResponse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      request = [(HMResponseBase *)self request];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = request;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      request2 = [(HMResponseBase *)v6 request];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = request2;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      characteristic = [v9 characteristic];

      characteristic2 = [v12 characteristic];

      v15 = [characteristic isEqual:characteristic2];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (HMCharacteristicResponse)initWithRequest:(id)request value:(id)value error:(id)error
{
  v6.receiver = self;
  v6.super_class = HMCharacteristicResponse;
  return [(HMResponseBase *)&v6 initWithRequest:request value:value error:error];
}

@end