@interface AKAccountRecoveryModel
- (AKAccountRecoveryModel)initWithContext:(id)context configuration:(id)configuration utilities:(id)utilities;
@end

@implementation AKAccountRecoveryModel

- (AKAccountRecoveryModel)initWithContext:(id)context configuration:(id)configuration utilities:(id)utilities
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, configuration);
  v12 = 0;
  objc_storeStrong(&v12, utilities);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = AKAccountRecoveryModel;
  v10 = [(AKAccountRecoveryModel *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_context, location[0]);
    objc_storeStrong(&selfCopy->_configuration, v13);
    objc_storeStrong(&selfCopy->_cliUtilities, v12);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end