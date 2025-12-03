@interface SNVGGishSpeechModelInput
- (SNVGGishSpeechModelInput)initWithInput1:(id)input1;
- (id)featureValueForName:(id)name;
@end

@implementation SNVGGishSpeechModelInput

- (SNVGGishSpeechModelInput)initWithInput1:(id)input1
{
  input1Copy = input1;
  v9.receiver = self;
  v9.super_class = SNVGGishSpeechModelInput;
  v6 = [(SNVGGishSpeechModelInput *)&v9 init];
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
    input1 = [(SNVGGishSpeechModelInput *)self input1];
    v6 = [v4 featureValueWithMultiArray:input1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end