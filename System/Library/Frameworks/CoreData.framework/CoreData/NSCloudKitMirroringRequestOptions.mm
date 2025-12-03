@interface NSCloudKitMirroringRequestOptions
- (NSCloudKitMirroringRequestOptions)init;
- (id)copy;
- (id)createDefaultOperationConfiguration;
- (uint64_t)applyToOperation:(uint64_t)result;
- (void)dealloc;
- (void)setOperationConfiguration:(id)configuration;
@end

@implementation NSCloudKitMirroringRequestOptions

- (NSCloudKitMirroringRequestOptions)init
{
  v5.receiver = self;
  v5.super_class = NSCloudKitMirroringRequestOptions;
  v2 = [(NSCloudKitMirroringRequestOptions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_operationConfiguration = [(NSCloudKitMirroringRequestOptions *)v2 createDefaultOperationConfiguration];
  }

  return v3;
}

- (id)copy
{
  v3 = objc_alloc_init(objc_opt_class());
  [v3 setOperationConfiguration:self->_operationConfiguration];
  v3[2] = self->_vouchers;
  return v3;
}

- (void)dealloc
{
  self->_operationConfiguration = 0;

  self->_vouchers = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringRequestOptions;
  [(NSCloudKitMirroringRequestOptions *)&v3 dealloc];
}

- (id)createDefaultOperationConfiguration
{
  v2 = objc_alloc_init(getCloudKitCKOperationConfigurationClass[0]());
  [v2 setQualityOfService:17];
  return v2;
}

- (void)setOperationConfiguration:(id)configuration
{
  operationConfiguration = self->_operationConfiguration;
  if (operationConfiguration != configuration)
  {

    self->_operationConfiguration = 0;
  }

  if (configuration)
  {
    configurationCopy = configuration;
  }

  else
  {
    configurationCopy = [(NSCloudKitMirroringRequestOptions *)self createDefaultOperationConfiguration];
  }

  self->_operationConfiguration = configurationCopy;
}

- (uint64_t)applyToOperation:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([*(result + 16) lastObject])
    {
      v4 = [objc_msgSend(*(v3 + 16) "lastObject")];
    }

    else
    {
      v4 = *(v3 + 8);
    }

    return [a2 setConfiguration:v4];
  }

  return result;
}

@end