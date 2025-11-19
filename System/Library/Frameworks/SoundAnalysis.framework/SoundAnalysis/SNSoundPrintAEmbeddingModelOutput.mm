@interface SNSoundPrintAEmbeddingModelOutput
- (SNSoundPrintAEmbeddingModelOutput)initWith_637:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SNSoundPrintAEmbeddingModelOutput

- (SNSoundPrintAEmbeddingModelOutput)initWith_637:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNSoundPrintAEmbeddingModelOutput;
  v6 = [(SNSoundPrintAEmbeddingModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__637, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"637"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = objc_msgSend__637(self, v4);
    v7 = [v5 featureValueWithMultiArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end