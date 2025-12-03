@interface ImageCardContentView
- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithCardStyle:(int64_t)style;
- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithCoder:(id)coder;
- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithFrame:(CGRect)frame;
@end

@implementation ImageCardContentView

- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageConfiguration;
  systemFontOfSize_ = [objc_opt_self() systemFontOfSize_];
  configurationWithFont_ = [objc_opt_self() configurationWithFont_];

  *(&self->super.super.super.super.isa + v4) = configurationWithFont_;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithCardStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI20ImageCardContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end