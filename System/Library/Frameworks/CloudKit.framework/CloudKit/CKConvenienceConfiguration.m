@interface CKConvenienceConfiguration
- (CKConvenienceConfiguration)initWithConfiguration:(id)a3 group:(id)a4 convenienceCallbackWrapper:(id)a5;
@end

@implementation CKConvenienceConfiguration

- (CKConvenienceConfiguration)initWithConfiguration:(id)a3 group:(id)a4 convenienceCallbackWrapper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKConvenienceConfiguration;
  v12 = [(CKConvenienceConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, a3);
    objc_storeStrong(&v13->_group, a4);
    objc_storeStrong(&v13->_convenienceCallbacks, a5);
  }

  return v13;
}

@end