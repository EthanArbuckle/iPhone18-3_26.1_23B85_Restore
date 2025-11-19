@interface SNFeaturePrint
+ (id)cosineSimilarityBetweenOneFeatureVector:(id)a3 andAnotherFeatureVector:(id)a4 error:(id *)a5;
+ (id)cosineSimilarityBetweenOneFloat32Array:(float *)a3 andAnotherFloat32Array:(float *)a4 length:(int64_t)a5 error:(id *)a6;
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (BOOL)isEqual:(id)a3;
- (MLMultiArray)featureVector;
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setFeatureVector:(id)a3;
- (void)setTimeRange:(id *)a3;
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

- (void)setTimeRange:(id *)a3
{
  var3 = a3->var1.var3;
  v4[0] = a3->var0.var0;
  v4[1] = *&a3->var0.var1;
  v5 = *&a3->var0.var3;
  v6 = *&a3->var1.var1;
  v7 = var3;
  SNFeaturePrint.timeRange.setter(v4);
}

- (MLMultiArray)featureVector
{
  v2 = SNFeaturePrint.featureVector.getter();

  return v2;
}

- (void)setFeatureVector:(id)a3
{
  v4 = a3;
  v5 = self;
  SNFeaturePrint.featureVector.setter(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  SNFeaturePrint.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  v2 = self;
  v3 = SNFeaturePrint.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SNFeaturePrint.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SNFeaturePrint.encode(with:)(v4);
}

+ (id)cosineSimilarityBetweenOneFloat32Array:(float *)a3 andAnotherFloat32Array:(float *)a4 length:(int64_t)a5 error:(id *)a6
{
  v6 = sub_1C99A6B4C(a3, a4, a5);

  return v6;
}

+ (id)cosineSimilarityBetweenOneFeatureVector:(id)a3 andAnotherFeatureVector:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_1C99A6F6C(v6, v7);
  v9 = v8;

  return v9;
}

- (NSString)description
{
  v2 = self;
  SNFeaturePrint.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

@end