@interface BundleOptionComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BundleOptionComponent

- (void)prepareForReuse
{
  v2 = self;
  sub_530D0();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_532EC();
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_536AC();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_53734(a3);
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_53AA4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_53B44(a3);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v8 = self;
  v9 = sub_54B9C(width, height, a4);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end