@interface _SNClassifySoundRequest
+ (id)eagerlyAllocateModelsForRequest:(id)request error:(id *)error;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)windowDuration;
- (BOOL)isEqual:(id)equal;
- (NSArray)knownClassifications;
- (SNTimeDurationConstraint)windowDurationConstraint;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setWindowDuration:(id *)duration;
@end

@implementation _SNClassifySoundRequest

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)windowDuration
{
  result = sub_1C9931E4C();
  retstr->var0 = result;
  retstr->var1 = v5;
  retstr->var2 = v6;
  retstr->var3 = v7;
  return result;
}

- (void)setWindowDuration:(id *)duration
{
  selfCopy = self;
  sub_1C9931ECC();
}

- (SNTimeDurationConstraint)windowDurationConstraint
{
  selfCopy = self;
  v3 = sub_1C9931F5C();

  return v3;
}

- (NSArray)knownClassifications
{
  sub_1C99320C4();
  v2 = sub_1C9A92768();

  return v2;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  _SNClassifySoundRequest.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = _SNClassifySoundRequest.hash.getter();

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

  v6 = _SNClassifySoundRequest.isEqual(_:)(v8);

  sub_1C993973C(v8, &unk_1EC3C5E60);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _SNClassifySoundRequest.encode(with:)(coderCopy);
}

+ (id)eagerlyAllocateModelsForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  sub_1C993351C(v7);

  sub_1C97A5A8C(v7, v7[3]);
  v5 = sub_1C9A93B08();
  sub_1C97A592C(v7);

  return v5;
}

@end