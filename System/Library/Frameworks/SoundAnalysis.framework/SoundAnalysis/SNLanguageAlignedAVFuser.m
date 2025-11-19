@interface SNLanguageAlignedAVFuser
- (id)fuseVisionEmbedding:(id)a3 audioEmbedding:(id)a4 error:(id *)a5;
@end

@implementation SNLanguageAlignedAVFuser

- (id)fuseVisionEmbedding:(id)a3 audioEmbedding:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1C9899FF8(v7, v8);

  return v10;
}

@end