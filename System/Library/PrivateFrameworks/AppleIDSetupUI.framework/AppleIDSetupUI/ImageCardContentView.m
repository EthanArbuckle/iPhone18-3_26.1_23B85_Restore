@interface ImageCardContentView
- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithCardStyle:(int64_t)a3;
- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithCoder:(id)a3;
- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithFrame:(CGRect)a3;
@end

@implementation ImageCardContentView

- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageConfiguration;
  v5 = [objc_opt_self() systemFontOfSize_];
  v6 = [objc_opt_self() configurationWithFont_];

  *(&self->super.super.super.super.isa + v4) = v6;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithCardStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end