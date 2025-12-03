@interface ActivityDashboardCardCell
- (CGRect)bounds;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)prepareForReuse;
- (void)setBounds:(CGRect)bounds;
@end

@implementation ActivityDashboardCardCell

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivityDashboardCardCell();
  [(ActivityDashboardCardCell *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1000353B8(width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_10005F884(x, y, width, height);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActivityDashboardCardCell();
  v2 = v4.receiver;
  [(ActivityDashboardCardCell *)&v4 prepareForReuse];
  UICollectionViewCell.contentConfiguration.setter();
  v3 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling;
  if (*(v2 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling) == 1)
  {
    sub_1006712E8(0, v2);
    *(v2 + v3) = 0;
  }
}

@end