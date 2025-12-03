@interface HMAttributeResponse
- (BOOL)isEqual:(id)equal;
@end

@implementation HMAttributeResponse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
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

      accessoryProfile = [v9 accessoryProfile];
      accessoryProfile2 = [v12 accessoryProfile];
      if ([accessoryProfile isEqual:accessoryProfile2])
      {
        attribute = [v9 attribute];
        attribute2 = [v12 attribute];
        v17 = [attribute isEqual:attribute2];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

@end