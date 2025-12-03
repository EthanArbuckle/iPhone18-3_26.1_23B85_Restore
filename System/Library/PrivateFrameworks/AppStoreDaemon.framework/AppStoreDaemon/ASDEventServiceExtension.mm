@interface ASDEventServiceExtension
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation ASDEventServiceExtension

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = contextCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v4)
  {
    [v5 setExtensionInstance:self];
    v11 = contextCopy;
  }

  else
  {
    v11 = ASDErrorWithUserInfoAndFormat(901, 0, @"context is not an instance of ASDEventServiceExtensionRemoteContext: context='%@'", v6, v7, v8, v9, v10, contextCopy);
    [contextCopy cancelRequestWithError:v11];
  }
}

@end