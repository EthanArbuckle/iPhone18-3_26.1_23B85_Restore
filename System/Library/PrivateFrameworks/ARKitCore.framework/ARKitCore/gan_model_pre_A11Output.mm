@interface gan_model_pre_A11Output
- (gan_model_pre_A11Output)initWithOutput:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation gan_model_pre_A11Output

- (gan_model_pre_A11Output)initWithOutput:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = gan_model_pre_A11Output;
  v6 = [(gan_model_pre_A11Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_output, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"output"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(gan_model_pre_A11Output *)self output];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end