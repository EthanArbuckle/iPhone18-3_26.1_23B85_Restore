@interface HeaderView
- (_TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761810HeaderView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761810HeaderView)initWithReuseIdentifier:(id)a3;
- (_TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation HeaderView

- (_TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_gradientBlurView;
  v6 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(&self->super.super.super.isa + v5) = sub_30712C(&off_87EAC0);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_3EE188();
}

- (_TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761810HeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    sub_769240();
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = _s18ASMessagesProvider10HeaderViewCMa_0();
  v5 = [(HeaderView *)&v7 initWithReuseIdentifier:v4];

  return v5;
}

- (_TtC18ASMessagesProviderP33_325AD3F8116EAD3DD531EDE1E760761810HeaderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _s18ASMessagesProvider10HeaderViewCMa_0();
  v4 = a3;
  v5 = [(HeaderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end