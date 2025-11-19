@interface SNCreateFeaturePrintRequest
+ (id)eagerlyAllocateModelsForRequest:(id)a3 error:(id *)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)windowDuration;
- (BOOL)isEqual:(id)a3;
- (SNTimeDurationConstraint)windowDurationConstraint;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setOverlapFactor:(float)a3;
- (void)setWindowDuration:(id *)a3;
@end

@implementation SNCreateFeaturePrintRequest

- (SNTimeDurationConstraint)windowDurationConstraint
{
  v2 = self;
  v3 = sub_1C997D6C4();

  return v3;
}

- (void)setOverlapFactor:(float)a3
{
  v4 = self;
  sub_1C997D8D0(a3);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)windowDuration
{
  result = sub_1C997DB80();
  retstr->var0 = result;
  retstr->var1 = v5;
  retstr->var2 = v6;
  retstr->var3 = v7;
  return result;
}

- (void)setWindowDuration:(id *)a3
{
  var0 = a3->var0;
  v4 = *&a3->var1;
  var3 = a3->var3;
  v6 = self;
  sub_1C997DC00(var0, v4, var3);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  SNCreateFeaturePrintRequest.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
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

  v6 = SNCreateFeaturePrintRequest.isEqual(_:)(v8);

  sub_1C97DA1E0(v8, &unk_1EC3C5E60);
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SNCreateFeaturePrintRequest.encode(with:)(v4);
}

+ (id)eagerlyAllocateModelsForRequest:(id)a3 error:(id *)a4
{
  v4 = a3;
  sub_1C997E82C(v4, v7);

  sub_1C97A5A8C(v7, v7[3]);
  v5 = sub_1C9A93B08();
  sub_1C97A592C(v7);

  return v5;
}

@end