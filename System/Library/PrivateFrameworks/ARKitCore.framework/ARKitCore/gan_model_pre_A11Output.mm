@interface gan_model_pre_A11Output
- (gan_model_pre_A11Output)initWithOutput:(id)output;
- (id)featureValueForName:(id)name;
@end

@implementation gan_model_pre_A11Output

- (gan_model_pre_A11Output)initWithOutput:(id)output
{
  outputCopy = output;
  v9.receiver = self;
  v9.super_class = gan_model_pre_A11Output;
  v6 = [(gan_model_pre_A11Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_output, output);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"output"])
  {
    v4 = MEMORY[0x1E695FE60];
    output = [(gan_model_pre_A11Output *)self output];
    v6 = [v4 featureValueWithMultiArray:output];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end