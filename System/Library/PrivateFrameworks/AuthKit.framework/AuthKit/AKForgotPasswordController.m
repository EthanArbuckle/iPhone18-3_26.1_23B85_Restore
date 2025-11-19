@interface AKForgotPasswordController
- (AKForgotPasswordController)init;
@end

@implementation AKForgotPasswordController

- (AKForgotPasswordController)init
{
  v14[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = AKForgotPasswordController;
  v10 = [(AKForgotPasswordController *)&v11 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    v9 = objc_opt_new();
    v14[0] = v9;
    v8 = objc_opt_new();
    v14[1] = v8;
    v7 = objc_opt_new();
    v14[2] = v7;
    v6 = objc_opt_new();
    v14[3] = v6;
    v5 = objc_opt_new();
    v14[4] = v5;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
    [(AKAppleIDRecoveryController *)v13 setSupportedRecoverySteps:?];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
  }

  v3 = MEMORY[0x1E69E5928](v13);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x1E69E9840];
  return v3;
}

@end