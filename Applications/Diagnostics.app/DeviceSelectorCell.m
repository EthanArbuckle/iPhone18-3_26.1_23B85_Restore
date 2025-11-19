@interface DeviceSelectorCell
- (BOOL)isSelected;
- (_TtC11Diagnostics18DeviceSelectorCell)initWithCoder:(id)a3;
- (_TtC11Diagnostics18DeviceSelectorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
@end

@implementation DeviceSelectorCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceSelectorCell();
  return [(DeviceSelectorCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DeviceSelectorCell();
  v4 = v6.receiver;
  [(DeviceSelectorCell *)&v6 setSelected:v3];
  if ([v4 isSelected])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [v4 setAccessoryType:v5];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1000CBF78();
}

- (_TtC11Diagnostics18DeviceSelectorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  v9 = type metadata accessor for TargetDevice();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled) = 0;
  if (v7)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for DeviceSelectorCell();
  v11 = [(BaseTableViewCell *)&v13 initWithStyle:a3 reuseIdentifier:v10];

  return v11;
}

- (_TtC11Diagnostics18DeviceSelectorCell)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  v6 = type metadata accessor for TargetDevice();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DeviceSelectorCell();
  v7 = a3;
  v8 = [(BaseTableViewCell *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end