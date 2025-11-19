@interface SNKShotSegmentationResult
- (MLMultiArray)exemplarEmbedding;
- (NSArray)segments;
- (NSNumber)exemplarIndex;
- (void)setExemplarEmbedding:(id)a3;
- (void)setExemplarIndex:(id)a3;
@end

@implementation SNKShotSegmentationResult

- (MLMultiArray)exemplarEmbedding
{
  v2 = sub_1C97B59E0();

  return v2;
}

- (void)setExemplarEmbedding:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C97B5A48(v4);
}

- (NSArray)segments
{
  v2 = self;
  sub_1C97B5B44();

  type metadata accessor for SNKShotSegment(0);
  v3 = sub_1C9A92768();

  return v3;
}

- (NSNumber)exemplarIndex
{
  v2 = self;
  v3 = sub_1C97B6040();

  return v3;
}

- (void)setExemplarIndex:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C97B60F0(v4);
}

@end