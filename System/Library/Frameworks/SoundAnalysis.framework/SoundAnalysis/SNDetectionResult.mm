@interface SNDetectionResult
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SNDetectionResult)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(void *)zone;
- (id)plistRepresentationWithError:(id *)error;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTimeRange:(id *)range;
@end

@implementation SNDetectionResult

- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange
{
  SNDetectionResult.timeRange.getter(v9);
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
  SNDetectionResult.timeRange.setter(v4);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNDetectionResult.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SNDetectionResult.hash.getter();

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

  v6 = SNDetectionResult.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNDetectionResult.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  SNDetectionResult.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

- (id)binarySampleRepresentation
{
  selfCopy = self;
  v3 = SNDetectionResult.binarySampleRepresentation()();
  v5 = v4;

  v6 = sub_1C9A915F8();
  sub_1C97A5978(v3, v5);

  return v6;
}

- (SNDetectionResult)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  representationCopy = representation;
  metadataCopy = metadata;
  v8 = sub_1C9A91618();
  v10 = v9;

  if (metadataCopy)
  {
    sub_1C9A92328();
  }

  return SNDetectionResult.init(binarySampleRepresentation:metadata:timestamp:)(v8, v10);
}

- (id)plistRepresentationWithError:(id *)error
{
  selfCopy = self;
  sub_1C99D9680(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);

  return v4;
}

@end