@interface CarSearchResultEVChargerView
- (UIImageView)leadingIcon;
- (void)resetContents;
- (void)setLeadingIcon:(id)a3;
- (void)setTextAndIconColor:(id)a3 status:(int)a4;
- (void)updateConstraints;
- (void)updateContentsWithPlugStatus:(int)a3 displayString:(id)a4;
- (void)updateLabelColors:(id)a3;
@end

@implementation CarSearchResultEVChargerView

- (UIImageView)leadingIcon
{
  v2 = self;
  v3 = sub_100243BD8();

  return v3;
}

- (void)setLeadingIcon:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon) = a3;
  v3 = a3;
}

- (void)resetContents
{
  v6 = self;
  v2 = sub_100243DD4();
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  v4 = sub_100243BD8();
  [v4 setImage:0];

  v5 = sub_100243D04();
  [v5 setImage:0];
}

- (void)setTextAndIconColor:(id)a3 status:(int)a4
{
  v6 = a3;
  v7 = self;
  sub_100244568(v6, a4);
}

- (void)updateContentsWithPlugStatus:(int)a3 displayString:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  sub_1002447E8(a3, v6, v8);
}

- (void)updateLabelColors:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = sub_100243DD4();
  [v5 setTextColor:v4];
}

- (void)updateConstraints
{
  v2 = self;
  sub_100244C48();
}

@end