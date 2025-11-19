@interface InteractiveBackgroundContentView
- (UIColor)backgroundColor;
- (_TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation InteractiveBackgroundContentView

- (_TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView;
  sub_1007433C4();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_100754644();
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
  sub_100743224();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v2 = v3.receiver;
  [(InteractiveBackgroundContentView *)&v3 layoutSubviews];
  [v2 bounds];
  sub_100743324();
}

@end