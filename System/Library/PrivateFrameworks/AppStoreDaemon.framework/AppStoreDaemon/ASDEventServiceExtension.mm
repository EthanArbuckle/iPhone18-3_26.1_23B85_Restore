@interface ASDEventServiceExtension
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation ASDEventServiceExtension

- (void)beginRequestWithExtensionContext:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v12;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v4)
  {
    [v5 setExtensionInstance:self];
    v11 = v12;
  }

  else
  {
    v11 = ASDErrorWithUserInfoAndFormat(901, 0, @"context is not an instance of ASDEventServiceExtensionRemoteContext: context='%@'", v6, v7, v8, v9, v10, v12);
    [v12 cancelRequestWithError:v11];
  }
}

@end