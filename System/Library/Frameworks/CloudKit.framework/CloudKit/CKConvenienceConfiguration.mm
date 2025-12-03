@interface CKConvenienceConfiguration
- (CKConvenienceConfiguration)initWithConfiguration:(id)configuration group:(id)group convenienceCallbackWrapper:(id)wrapper;
@end

@implementation CKConvenienceConfiguration

- (CKConvenienceConfiguration)initWithConfiguration:(id)configuration group:(id)group convenienceCallbackWrapper:(id)wrapper
{
  configurationCopy = configuration;
  groupCopy = group;
  wrapperCopy = wrapper;
  v15.receiver = self;
  v15.super_class = CKConvenienceConfiguration;
  v12 = [(CKConvenienceConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
    objc_storeStrong(&v13->_group, group);
    objc_storeStrong(&v13->_convenienceCallbacks, wrapper);
  }

  return v13;
}

@end