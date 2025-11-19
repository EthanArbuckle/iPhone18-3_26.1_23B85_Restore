@interface SNSoundPrintKEmbeddingModelOutput
- (SNSoundPrintKEmbeddingModelOutput)initWithFixedLengthEmbedding:(id)a3 framewiseEmbedding:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation SNSoundPrintKEmbeddingModelOutput

- (SNSoundPrintKEmbeddingModelOutput)initWithFixedLengthEmbedding:(id)a3 framewiseEmbedding:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SNSoundPrintKEmbeddingModelOutput;
  v9 = [(SNSoundPrintKEmbeddingModelOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fixedLengthEmbedding, a3);
    objc_storeStrong(&v10->_framewiseEmbedding, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"fixedLengthEmbedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintKEmbeddingModelOutput *)self fixedLengthEmbedding];
LABEL_5:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"framewiseEmbedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintKEmbeddingModelOutput *)self framewiseEmbedding];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end