@interface gan_model_pre_A11Input
- (gan_model_pre_A11Input)initWithInput:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation gan_model_pre_A11Input

- (gan_model_pre_A11Input)initWithInput:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = gan_model_pre_A11Input;
  v6 = [(gan_model_pre_A11Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"input"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(gan_model_pre_A11Input *)self input];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end