@interface ActivityDashboardEditButtonCell
- (_TtC10FitnessApp31ActivityDashboardEditButtonCell)initWithCoder:(id)a3;
- (_TtC10FitnessApp31ActivityDashboardEditButtonCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
@end

@implementation ActivityDashboardEditButtonCell

- (_TtC10FitnessApp31ActivityDashboardEditButtonCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActivityDashboardEditButtonCell();
  return [(ActivityDashboardEditButtonCell *)&v8 initWithFrame:x, y, width, height];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityDashboardEditButtonCell();
  v2 = v3.receiver;
  [(ActivityDashboardEditButtonCell *)&v3 prepareForReuse];
  UICollectionViewCell.contentConfiguration.setter();
}

- (_TtC10FitnessApp31ActivityDashboardEditButtonCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityDashboardEditButtonCell();
  v4 = a3;
  v5 = [(ActivityDashboardEditButtonCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end