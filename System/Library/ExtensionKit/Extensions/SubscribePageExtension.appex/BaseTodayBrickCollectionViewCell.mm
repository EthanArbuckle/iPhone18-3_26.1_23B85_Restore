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
  sub_100290AC4();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100291110();
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
  sub_1002912D4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_100753064();
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
    sub_100753094();
    v4 = self;
    v5 = sub_100753064();
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