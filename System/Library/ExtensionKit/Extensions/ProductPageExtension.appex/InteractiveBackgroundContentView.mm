@interface InteractiveBackgroundContentView
- (UIColor)backgroundColor;
- (_TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation InteractiveBackgroundContentView

- (_TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_77054DFF2A0EE1186124695D301FA42432InteractiveBackgroundContentView_artworkView;
  sub_10075FD2C();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_10077156C();
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
  sub_10075FB8C();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v2 = v3.receiver;
  [(InteractiveBackgroundContentView *)&v3 layoutSubviews];
  [v2 bounds];
  sub_10075FC8C();
}

@end