@interface gan_model_pre_A11Input
- (gan_model_pre_A11Input)initWithInput:(id)input;
- (id)featureValueForName:(id)name;
@end

@implementation gan_model_pre_A11Input

- (gan_model_pre_A11Input)initWithInput:(id)input
{
  inputCopy = input;
  v9.receiver = self;
  v9.super_class = gan_model_pre_A11Input;
  v6 = [(gan_model_pre_A11Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input, input);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"input"])
  {
    v4 = MEMORY[0x1E695FE60];
    input = [(gan_model_pre_A11Input *)self input];
    v6 = [v4 featureValueWithMultiArray:input];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end