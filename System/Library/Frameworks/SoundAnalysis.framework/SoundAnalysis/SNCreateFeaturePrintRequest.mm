@interface SNCreateFeaturePrintRequest
+ (id)eagerlyAllocateModelsForRequest:(id)request error:(id *)error;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)windowDuration;
- (BOOL)isEqual:(id)equal;
- (SNTimeDurationConstraint)windowDurationConstraint;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setOverlapFactor:(float)factor;
- (void)setWindowDuration:(id *)duration;
@end

@implementation SNCreateFeaturePrintRequest

- (SNTimeDurationConstraint)windowDurationConstraint
{
  selfCopy = self;
  v3 = sub_1C997D6C4();

  return v3;
}

- (void)setOverlapFactor:(float)factor
{
  selfCopy = self;
  sub_1C997D8D0(factor);
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

- (void)setWindowDuration:(id *)duration
{
  var0 = duration->var0;
  v4 = *&duration->var1;
  var3 = duration->var3;
  selfCopy = self;
  sub_1C997DC00(var0, v4, var3);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNCreateFeaturePrintRequest.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
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

  v6 = SNCreateFeaturePrintRequest.isEqual(_:)(v8);

  sub_1C97DA1E0(v8, &unk_1EC3C5E60);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNCreateFeaturePrintRequest.encode(with:)(coderCopy);
}

+ (id)eagerlyAllocateModelsForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  sub_1C997E82C(requestCopy, v7);

  sub_1C97A5A8C(v7, v7[3]);
  v5 = sub_1C9A93B08();
  sub_1C97A592C(v7);

  return v5;
}

@end