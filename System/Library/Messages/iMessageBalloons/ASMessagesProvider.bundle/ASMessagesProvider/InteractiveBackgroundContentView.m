@interface InteractiveBackgroundContentView
- (UIColor)backgroundColor;
- (_TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation InteractiveBackgroundContentView

- (_TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView_artworkView;
  sub_759210();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v2 = [(InteractiveBackgroundContentView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v4 = a3;
  v5 = v7.receiver;
  [(InteractiveBackgroundContentView *)&v7 setBackgroundColor:v4];
  v6 = [v5 backgroundColor];
  sub_759070();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v2 = v3.receiver;
  [(InteractiveBackgroundContentView *)&v3 layoutSubviews];
  [v2 bounds];
  sub_759170();
}

@end