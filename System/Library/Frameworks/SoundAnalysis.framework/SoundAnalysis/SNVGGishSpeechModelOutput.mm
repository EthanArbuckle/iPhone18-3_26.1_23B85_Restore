@interface SNVGGishSpeechModelOutput
- (SNVGGishSpeechModelOutput)initWithOutput1:(id)output1;
- (id)featureValueForName:(id)name;
@end

@implementation SNVGGishSpeechModelOutput

- (SNVGGishSpeechModelOutput)initWithOutput1:(id)output1
{
  output1Copy = output1;
  v9.receiver = self;
  v9.super_class = SNVGGishSpeechModelOutput;
  v6 = [(SNVGGishSpeechModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_output1, output1);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"output1"])
  {
    v4 = MEMORY[0x1E695FE60];
    output1 = [(SNVGGishSpeechModelOutput *)self output1];
    v6 = [v4 featureValueWithMultiArray:output1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end