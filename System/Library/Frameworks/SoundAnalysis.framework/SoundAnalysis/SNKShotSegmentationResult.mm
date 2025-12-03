@interface SNKShotSegmentationResult
- (MLMultiArray)exemplarEmbedding;
- (NSArray)segments;
- (NSNumber)exemplarIndex;
- (void)setExemplarEmbedding:(id)embedding;
- (void)setExemplarIndex:(id)index;
@end

@implementation SNKShotSegmentationResult

- (MLMultiArray)exemplarEmbedding
{
  v2 = sub_1C97B59E0();

  return v2;
}

- (void)setExemplarEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  selfCopy = self;
  sub_1C97B5A48(embeddingCopy);
}

- (NSArray)segments
{
  selfCopy = self;
  sub_1C97B5B44();

  type metadata accessor for SNKShotSegment(0);
  v3 = sub_1C9A92768();

  return v3;
}

- (NSNumber)exemplarIndex
{
  selfCopy = self;
  v3 = sub_1C97B6040();

  return v3;
}

- (void)setExemplarIndex:(id)index
{
  indexCopy = index;
  selfCopy = self;
  sub_1C97B60F0(indexCopy);
}

@end