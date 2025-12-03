@interface SNLanguageAlignedAVFuser
- (id)fuseVisionEmbedding:(id)embedding audioEmbedding:(id)audioEmbedding error:(id *)error;
@end

@implementation SNLanguageAlignedAVFuser

- (id)fuseVisionEmbedding:(id)embedding audioEmbedding:(id)audioEmbedding error:(id *)error
{
  embeddingCopy = embedding;
  audioEmbeddingCopy = audioEmbedding;
  selfCopy = self;
  v10 = sub_1C9899FF8(embeddingCopy, audioEmbeddingCopy);

  return v10;
}

@end