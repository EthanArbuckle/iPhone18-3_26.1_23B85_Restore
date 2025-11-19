@interface NSCloudKitMirroringDelegateSetupRequestOptions
- (id)copy;
- (id)createDefaultOperationConfiguration;
@end

@implementation NSCloudKitMirroringDelegateSetupRequestOptions

- (id)createDefaultOperationConfiguration
{
  v2 = getCloudKitCKOperationConfigurationClass[0]();

  return objc_alloc_init(v2);
}

- (id)copy
{
  v5.receiver = self;
  v5.super_class = NSCloudKitMirroringDelegateSetupRequestOptions;
  result = [(NSCloudKitMirroringRequestOptions *)&v5 copy];
  if (self)
  {
    fromNotification = self->_fromNotification;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    fromNotification = 0;
    if (!result)
    {
      return result;
    }
  }

  *(result + 24) = fromNotification;
  return result;
}

@end