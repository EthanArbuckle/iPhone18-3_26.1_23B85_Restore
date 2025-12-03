@interface SNSoundPrintAEmbeddingModelOutput
- (SNSoundPrintAEmbeddingModelOutput)initWith_637:(id)with_637;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundPrintAEmbeddingModelOutput

- (SNSoundPrintAEmbeddingModelOutput)initWith_637:(id)with_637
{
  with_637Copy = with_637;
  v9.receiver = self;
  v9.super_class = SNSoundPrintAEmbeddingModelOutput;
  v6 = [(SNSoundPrintAEmbeddingModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__637, with_637);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"637"])
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