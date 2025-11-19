@interface SNLanguageAlignedAVFuserModelOutput
- (SNLanguageAlignedAVFuserModelOutput)initWithFused_embedding:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SNLanguageAlignedAVFuserModelOutput

- (SNLanguageAlignedAVFuserModelOutput)initWithFused_embedding:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNLanguageAlignedAVFuserModelOutput;
  v6 = [(SNLanguageAlignedAVFuserModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fused_embedding, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"fused_embedding"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(SNLanguageAlignedAVFuserModelOutput *)self fused_embedding];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end