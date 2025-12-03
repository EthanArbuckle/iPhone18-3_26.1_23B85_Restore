@interface CarSearchResultEVChargerView
- (UIImageView)leadingIcon;
- (void)resetContents;
- (void)setLeadingIcon:(id)icon;
- (void)setTextAndIconColor:(id)color status:(int)status;
- (void)updateConstraints;
- (void)updateContentsWithPlugStatus:(int)status displayString:(id)string;
- (void)updateLabelColors:(id)colors;
@end

@implementation CarSearchResultEVChargerView

- (UIImageView)leadingIcon
{
  selfCopy = self;
  v3 = sub_100243BD8();

  return v3;
}

- (void)setLeadingIcon:(id)icon
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps28CarSearchResultEVChargerView____lazy_storage___leadingIcon) = icon;
  iconCopy = icon;
}

- (void)resetContents
{
  selfCopy = self;
  v2 = sub_100243DD4();
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  v4 = sub_100243BD8();
  [v4 setImage:0];

  v5 = sub_100243D04();
  [v5 setImage:0];
}

- (void)setTextAndIconColor:(id)color status:(int)status
{
  colorCopy = color;
  selfCopy = self;
  sub_100244568(colorCopy, status);
}

- (void)updateContentsWithPlugStatus:(int)status displayString:(id)string
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  sub_1002447E8(status, v6, v8);
}

- (void)updateLabelColors:(id)colors
{
  colorsCopy = colors;
  selfCopy = self;
  v5 = sub_100243DD4();
  [v5 setTextColor:colorsCopy];
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_100244C48();
}

@end