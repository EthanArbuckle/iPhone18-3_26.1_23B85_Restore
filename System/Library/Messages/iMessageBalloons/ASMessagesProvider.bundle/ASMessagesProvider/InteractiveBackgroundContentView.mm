@interface InteractiveBackgroundContentView
- (UIColor)backgroundColor;
- (_TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation InteractiveBackgroundContentView

- (_TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView)initWithCoder:(id)coder
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
  backgroundColor = [(InteractiveBackgroundContentView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InteractiveBackgroundContentView();
  colorCopy = color;
  v5 = v7.receiver;
  [(InteractiveBackgroundContentView *)&v7 setBackgroundColor:colorCopy];
  backgroundColor = [v5 backgroundColor];
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