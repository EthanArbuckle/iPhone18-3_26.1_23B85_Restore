@interface AAUIDisembarkUIFlow
+ (void)startDisembarkUIFlowWithParentViewController:(id)a3;
@end

@implementation AAUIDisembarkUIFlow

+ (void)startDisembarkUIFlowWithParentViewController:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getDKPresenterClass_softClass;
  v17 = getDKPresenterClass_softClass;
  if (!getDKPresenterClass_softClass)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __getDKPresenterClass_block_invoke;
    v12 = &unk_1E820BE08;
    v13 = &v14;
    __getDKPresenterClass_block_invoke(&v9);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v6 = getDKConfigurationClass_softClass;
  v17 = getDKConfigurationClass_softClass;
  if (!getDKConfigurationClass_softClass)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __getDKConfigurationClass_block_invoke;
    v12 = &unk_1E820BE08;
    v13 = &v14;
    __getDKConfigurationClass_block_invoke(&v9);
    v6 = v15[3];
  }

  v7 = v6;
  _Block_object_dispose(&v14, 8);
  v8 = [v6 defaultConfiguration];
  [v4 presentUsingParentViewController:v3 configuration:v8 completion:0];
}

@end