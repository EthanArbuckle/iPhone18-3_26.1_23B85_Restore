@interface ActivitityTypeConfiguration
- (BOOL)isEqual:(id)equal;
- (_TtC10StickerKit27ActivitityTypeConfiguration)init;
- (_TtC10StickerKit27ActivitityTypeConfiguration)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation ActivitityTypeConfiguration

- (_TtC10StickerKit27ActivitityTypeConfiguration)initWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  sub_19A716EC8(coder);
  v5 = v4;
  swift_unknownObjectRelease();
  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  selfCopy = self;

  v6 = sub_19A7AAFE4();

  v7 = sub_19A7AAFE4();
  [coder encodeObject:v6 forKey:v7];

  swift_unknownObjectRelease();
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ActivitityTypeConfiguration.isEqual(_:)(v8);

  sub_19A612E20(v8);
  return v6 & 1;
}

- (_TtC10StickerKit27ActivitityTypeConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end