@interface SNMeasureLKFSRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SNMeasureLKFSRequest

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNMeasureLKFSRequest.copy(with:)(v6);

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

  v6 = SNMeasureLKFSRequest.isEqual(_:)(v8);

  sub_1C97F9D3C(v8, &unk_1EC3C5E60);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNMeasureLKFSRequest.encode(with:)(coderCopy);
}

@end