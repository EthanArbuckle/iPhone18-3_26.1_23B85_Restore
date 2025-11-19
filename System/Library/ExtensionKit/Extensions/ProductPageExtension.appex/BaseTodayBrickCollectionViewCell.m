@interface BaseTodayBrickCollectionViewCell
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
@end

@implementation BaseTodayBrickCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1004CBC10();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1004CBF44();
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  [(BaseTodayBrickCollectionViewCell *)&v4 setIsAccessibilityElement:v3];
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_1004CC108();
  v4 = v3;

  if (v4)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_10076FF9C();
    v4 = self;
    v5 = sub_10076FF6C();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  [(BaseTodayBrickCollectionViewCell *)&v7 setAccessibilityLabel:v5];
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  [(BaseTodayBrickCollectionViewCell *)&v4 setAccessibilityTraits:a3];
}

@end