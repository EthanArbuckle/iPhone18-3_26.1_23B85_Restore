@interface SNGenerateShazamSignatureRequest
+ (SNShazamMixingOptions)shazamChannelsMixingInfo;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SNGenerateShazamSignatureRequest

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNGenerateShazamSignatureRequest.copy(with:)(v6);

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

  v6 = SNGenerateShazamSignatureRequest.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNGenerateShazamSignatureRequest.encode(with:)(coderCopy);
}

+ (SNShazamMixingOptions)shazamChannelsMixingInfo
{
  result = sub_1C9994B30(&v8);
  v5 = v9;
  v6 = v10;
  v7 = v11;
  retstr->var0 = v8;
  retstr->var1 = v5;
  retstr->var2 = v6;
  *&retstr->var3 = v7;
  return result;
}

@end