@interface SNVGGishCheeringModelInput
- (SNVGGishCheeringModelInput)initWithInput1:(id)input1;
- (id)featureValueForName:(id)name;
@end

@implementation SNVGGishCheeringModelInput

- (SNVGGishCheeringModelInput)initWithInput1:(id)input1
{
  input1Copy = input1;
  v9.receiver = self;
  v9.super_class = SNVGGishCheeringModelInput;
  v6 = [(SNVGGishCheeringModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input1, input1);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"input1"])
  {
    v4 = MEMORY[0x1E695FE60];
    input1 = [(SNVGGishCheeringModelInput *)self input1];
    v6 = [v4 featureValueWithMultiArray:input1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end