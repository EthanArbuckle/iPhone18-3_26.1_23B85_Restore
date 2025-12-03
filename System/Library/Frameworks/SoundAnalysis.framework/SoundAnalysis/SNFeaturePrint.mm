@interface SNFeaturePrint
+ (id)cosineSimilarityBetweenOneFeatureVector:(id)vector andAnotherFeatureVector:(id)featureVector error:(id *)error;
+ (id)cosineSimilarityBetweenOneFloat32Array:(float *)array andAnotherFloat32Array:(float *)float32Array length:(int64_t)length error:(id *)error;
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (BOOL)isEqual:(id)equal;
- (MLMultiArray)featureVector;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setFeatureVector:(id)vector;
- (void)setTimeRange:(id *)range;
@end

@implementation SNFeaturePrint

- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange
{
  SNFeaturePrint.timeRange.getter(v9);
  v5 = v12;
  v6 = v11;
  v7 = v10;
  v8 = v9[1];
  retstr->var0.var0 = v9[0];
  *&retstr->var0.var1 = v8;
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = v6;
  retstr->var1.var3 = v5;
  return result;
}

- (void)setTimeRange:(id *)range
{
  var3 = range->var1.var3;
  v4[0] = range->var0.var0;
  v4[1] = *&range->var0.var1;
  v5 = *&range->var0.var3;
  v6 = *&range->var1.var1;
  v7 = var3;
  SNFeaturePrint.timeRange.setter(v4);
}

- (MLMultiArray)featureVector
{
  v2 = SNFeaturePrint.featureVector.getter();

  return v2;
}

- (void)setFeatureVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  SNFeaturePrint.featureVector.setter(vectorCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNFeaturePrint.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SNFeaturePrint.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SNFeaturePrint.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNFeaturePrint.encode(with:)(coderCopy);
}

+ (id)cosineSimilarityBetweenOneFloat32Array:(float *)array andAnotherFloat32Array:(float *)float32Array length:(int64_t)length error:(id *)error
{
  v6 = sub_1C99A6B4C(array, float32Array, length);

  return v6;
}

+ (id)cosineSimilarityBetweenOneFeatureVector:(id)vector andAnotherFeatureVector:(id)featureVector error:(id *)error
{
  vectorCopy = vector;
  featureVectorCopy = featureVector;
  sub_1C99A6F6C(vectorCopy, featureVectorCopy);
  v9 = v8;

  return v9;
}

- (NSString)description
{
  selfCopy = self;
  SNFeaturePrint.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

@end