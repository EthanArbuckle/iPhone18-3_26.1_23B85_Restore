@interface HMAttributeResponse
- (BOOL)isEqual:(id)a3;
@end

@implementation HMAttributeResponse

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMResponseBase *)self request];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = [(HMResponseBase *)v6 request];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [v9 accessoryProfile];
      v14 = [v12 accessoryProfile];
      if ([v13 isEqual:v14])
      {
        v15 = [v9 attribute];
        v16 = [v12 attribute];
        v17 = [v15 isEqual:v16];
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