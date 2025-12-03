@interface HeaderView
- (_TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D710HeaderView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D710HeaderView)initWithReuseIdentifier:(id)identifier;
- (_TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation HeaderView

- (_TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_gradientBlurView;
  v6 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(&self->super.super.super.isa + v5) = sub_1000F744C(&off_100862680);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004D0D3C();
}

- (_TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D710HeaderView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_100753094();
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = _s22SubscribePageExtension10HeaderViewCMa_0();
  v5 = [(HeaderView *)&v7 initWithReuseIdentifier:v4];

  return v5;
}

- (_TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D710HeaderView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _s22SubscribePageExtension10HeaderViewCMa_0();
  coderCopy = coder;
  v5 = [(HeaderView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end