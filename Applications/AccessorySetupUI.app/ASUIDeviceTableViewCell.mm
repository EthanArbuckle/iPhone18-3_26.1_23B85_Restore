@interface ASUIDeviceTableViewCell
- (_TtC16AccessorySetupUI23ASUIDeviceTableViewCell)initWithCoder:(id)a3;
- (_TtC16AccessorySetupUI23ASUIDeviceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
@end

@implementation ASUIDeviceTableViewCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  [(ASUIDeviceTableViewCell *)&v2 awakeFromNib];
}

- (_TtC16AccessorySetupUI23ASUIDeviceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIDeviceTableViewCell_device) = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIDeviceTableViewCell_device) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  v7 = [(ASUIDeviceTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC16AccessorySetupUI23ASUIDeviceTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIDeviceTableViewCell_device) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  v4 = a3;
  v5 = [(ASUIDeviceTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end