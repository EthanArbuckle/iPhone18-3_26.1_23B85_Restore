@interface ActivityDashboardEditButtonCell
- (_TtC10FitnessApp31ActivityDashboardEditButtonCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp31ActivityDashboardEditButtonCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
@end

@implementation ActivityDashboardEditButtonCell

- (_TtC10FitnessApp31ActivityDashboardEditButtonCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC10FitnessApp31ActivityDashboardEditButtonCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityDashboardEditButtonCell();
  coderCopy = coder;
  v5 = [(ActivityDashboardEditButtonCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end