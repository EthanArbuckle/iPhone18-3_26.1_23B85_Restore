@interface ActivityDashboardEntryLinksButtonCell
- (_TtC10FitnessApp37ActivityDashboardEntryLinksButtonCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp37ActivityDashboardEntryLinksButtonCell)initWithFrame:(CGRect)frame;
@end

@implementation ActivityDashboardEntryLinksButtonCell

- (_TtC10FitnessApp37ActivityDashboardEntryLinksButtonCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActivityDashboardEntryLinksButtonCell();
  return [(ActivityDashboardEntryLinksButtonCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10FitnessApp37ActivityDashboardEntryLinksButtonCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityDashboardEntryLinksButtonCell();
  coderCopy = coder;
  v5 = [(ActivityDashboardEntryLinksButtonCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end