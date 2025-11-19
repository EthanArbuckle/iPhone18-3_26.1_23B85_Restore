@interface RemoveColorCell
- (BOOL)isSelected;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation RemoveColorCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoveColorCell();
  return [(RemoveColorCell *)&v3 isSelected];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000376A4();
}

- (unint64_t)accessibilityTraits
{
  v2 = self;
  v3 = sub_100037A44();

  return v3;
}

@end