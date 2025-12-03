@interface SNLanguageAlignedAVFuserModelOutput
- (SNLanguageAlignedAVFuserModelOutput)initWithFused_embedding:(id)fused_embedding;
- (id)featureValueForName:(id)name;
@end

@implementation SNLanguageAlignedAVFuserModelOutput

- (SNLanguageAlignedAVFuserModelOutput)initWithFused_embedding:(id)fused_embedding
{
  fused_embeddingCopy = fused_embedding;
  v9.receiver = self;
  v9.super_class = SNLanguageAlignedAVFuserModelOutput;
  v6 = [(SNLanguageAlignedAVFuserModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fused_embedding, fused_embedding);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"fused_embedding"])
  {
    v4 = MEMORY[0x1E695FE60];
    fused_embedding = [(SNLanguageAlignedAVFuserModelOutput *)self fused_embedding];
    v6 = [v4 featureValueWithMultiArray:fused_embedding];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end