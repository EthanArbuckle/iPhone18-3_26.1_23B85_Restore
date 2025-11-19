@interface SNVGGishEmbeddingModelInput
- (SNVGGishEmbeddingModelInput)initWithInput1:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SNVGGishEmbeddingModelInput

- (SNVGGishEmbeddingModelInput)initWithInput1:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNVGGishEmbeddingModelInput;
  v6 = [(SNVGGishEmbeddingModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input1, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"input1"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(SNVGGishEmbeddingModelInput *)self input1];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end