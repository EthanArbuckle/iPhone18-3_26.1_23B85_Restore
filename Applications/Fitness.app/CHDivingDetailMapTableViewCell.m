@interface CHDivingDetailMapTableViewCell
- (CHDivingDetailMapTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithDive:(id)a3 row:(int64_t)a4 dataCalculator:(id)a5;
- (void)prepareForReuse;
@end

@implementation CHDivingDetailMapTableViewCell

- (CHDivingDetailMapTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100693FA0(a3, a4, v6);
}

- (void)configureWithDive:(id)a3 row:(int64_t)a4 dataCalculator:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_100694190(v8, a4, v9);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DivingDetailMapTableViewCell();
  v2 = v3.receiver;
  [(CHDivingDetailMapTableViewCell *)&v3 prepareForReuse];
  UITableViewCell.contentConfiguration.setter();
}

@end