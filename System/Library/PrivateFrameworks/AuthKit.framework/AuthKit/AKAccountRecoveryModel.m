@interface AKAccountRecoveryModel
- (AKAccountRecoveryModel)initWithContext:(id)a3 configuration:(id)a4 utilities:(id)a5;
@end

@implementation AKAccountRecoveryModel

- (AKAccountRecoveryModel)initWithContext:(id)a3 configuration:(id)a4 utilities:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = AKAccountRecoveryModel;
  v10 = [(AKAccountRecoveryModel *)&v11 init];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    objc_storeStrong(&v15->_context, location[0]);
    objc_storeStrong(&v15->_configuration, v13);
    objc_storeStrong(&v15->_cliUtilities, v12);
  }

  v7 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

@end