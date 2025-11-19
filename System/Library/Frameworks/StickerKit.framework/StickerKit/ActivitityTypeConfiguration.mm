@interface ActivitityTypeConfiguration
- (BOOL)isEqual:(id)a3;
- (_TtC10StickerKit27ActivitityTypeConfiguration)init;
- (_TtC10StickerKit27ActivitityTypeConfiguration)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation ActivitityTypeConfiguration

- (_TtC10StickerKit27ActivitityTypeConfiguration)initWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  sub_19A716EC8(a3);
  v5 = v4;
  swift_unknownObjectRelease();
  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = self;

  v6 = sub_19A7AAFE4();

  v7 = sub_19A7AAFE4();
  [a3 encodeObject:v6 forKey:v7];

  swift_unknownObjectRelease();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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