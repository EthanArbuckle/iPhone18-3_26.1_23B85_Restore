@interface CheckmarkAlignedTableViewCell
- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell)initWithCoder:(id)a3;
- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (int64_t)accessoryType;
- (void)setAccessoryType:(int64_t)a3;
@end

@implementation CheckmarkAlignedTableViewCell

- (int64_t)accessoryType
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CheckmarkAlignedTableViewCell();
  return [(CheckmarkAlignedTableViewCell *)&v3 accessoryType];
}

- (void)setAccessoryType:(int64_t)a3
{
  v4 = self;
  v5 = v4;
  if (a3 == 3)
  {
    [(CheckmarkAlignedTableViewCell *)v4 setAccessoryView:0];
  }

  else
  {
    v6 = sub_1000B6350();
    v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v6, v7}];
    [(CheckmarkAlignedTableViewCell *)v5 setAccessoryView:v8];
  }

  v9.receiver = v5;
  v9.super_class = type metadata accessor for CheckmarkAlignedTableViewCell();
  [(CheckmarkAlignedTableViewCell *)&v9 setAccessoryType:a3];
}

- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = self + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell____lazy_storage___checkmarkSpacingSize;
    *v6 = 0;
    *(v6 + 1) = 0;
    v6[16] = 1;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
    v8 = self + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell____lazy_storage___checkmarkSpacingSize;
    *v8 = 0;
    *(v8 + 1) = 0;
    v8[16] = 1;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CheckmarkAlignedTableViewCell();
  v9 = [(CheckmarkAlignedTableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:v7];

  return v9;
}

- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell____lazy_storage___checkmarkSpacingSize;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CheckmarkAlignedTableViewCell();
  v5 = a3;
  v6 = [(CheckmarkAlignedTableViewCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end