@interface AKChangePasswordController
- (AKChangePasswordController)init;
@end

@implementation AKChangePasswordController

- (AKChangePasswordController)init
{
  v12[3] = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = AKChangePasswordController;
  v8 = [(AKChangePasswordController *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v7 = objc_opt_new();
    v12[0] = v7;
    v6 = objc_opt_new();
    v12[1] = v6;
    v5 = objc_opt_new();
    v12[2] = v5;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    [(AKAppleIDRecoveryController *)v11 setSupportedRecoverySteps:?];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
  }

  v3 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v11, 0);
  *MEMORY[0x1E69E9840];
  return v3;
}

@end