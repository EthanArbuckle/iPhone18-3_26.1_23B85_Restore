@interface SNSoundPrintKEmbeddingModelOutput
- (SNSoundPrintKEmbeddingModelOutput)initWithFixedLengthEmbedding:(id)embedding framewiseEmbedding:(id)framewiseEmbedding;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundPrintKEmbeddingModelOutput

- (SNSoundPrintKEmbeddingModelOutput)initWithFixedLengthEmbedding:(id)embedding framewiseEmbedding:(id)framewiseEmbedding
{
  embeddingCopy = embedding;
  framewiseEmbeddingCopy = framewiseEmbedding;
  v12.receiver = self;
  v12.super_class = SNSoundPrintKEmbeddingModelOutput;
  v9 = [(SNSoundPrintKEmbeddingModelOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fixedLengthEmbedding, embedding);
    objc_storeStrong(&v10->_framewiseEmbedding, framewiseEmbedding);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"fixedLengthEmbedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    fixedLengthEmbedding = [(SNSoundPrintKEmbeddingModelOutput *)self fixedLengthEmbedding];
LABEL_5:
    v7 = fixedLengthEmbedding;
    v8 = [v5 featureValueWithMultiArray:fixedLengthEmbedding];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"framewiseEmbedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    fixedLengthEmbedding = [(SNSoundPrintKEmbeddingModelOutput *)self framewiseEmbedding];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end