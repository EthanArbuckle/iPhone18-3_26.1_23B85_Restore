@interface SNSoundActionCommand
- (BOOL)isEqual:(id)equal;
- (NSString)name;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
@end

@implementation SNSoundActionCommand

- (NSString)name
{
  SNSoundActionCommand.name.getter();
  v2 = sub_1C9A92478();

  return v2;
}

- (void)setName:(id)name
{
  v4 = sub_1C9A924A8();
  v6 = v5;
  selfCopy = self;
  SNSoundActionCommand.name.setter(v4, v6);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNSoundActionCommand.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SNSoundActionCommand.hash.getter();

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

  v6 = SNSoundActionCommand.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNSoundActionCommand.encode(with:)(coderCopy);
}

@end