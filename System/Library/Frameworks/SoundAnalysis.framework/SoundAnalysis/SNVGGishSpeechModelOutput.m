@interface SNVGGishSpeechModelOutput
- (SNVGGishSpeechModelOutput)initWithOutput1:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SNVGGishSpeechModelOutput

- (SNVGGishSpeechModelOutput)initWithOutput1:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNVGGishSpeechModelOutput;
  v6 = [(SNVGGishSpeechModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_output1, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"output1"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(SNVGGishSpeechModelOutput *)self output1];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end