@interface ASUIDeviceOTANameTableViewCell
- (_TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell)initWithCoder:(id)coder;
- (_TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
@end

@implementation ASUIDeviceOTANameTableViewCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  [(ASUIDeviceOTANameTableViewCell *)&v2 awakeFromNib];
}

- (_TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell_deviceOTAName);
    *v6 = 0;
    v6[1] = 0;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
    v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell_deviceOTAName);
    *v8 = 0;
    v8[1] = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  v9 = [(ASUIDeviceOTANameTableViewCell *)&v11 initWithStyle:style reuseIdentifier:v7];

  return v9;
}

- (_TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell_deviceOTAName);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  coderCopy = coder;
  v6 = [(ASUIDeviceOTANameTableViewCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end