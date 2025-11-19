@interface InlineSocialUpsellView
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InlineSocialUpsellView

- (CGRect)frame
{
  sub_88978(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  InlineSocialUpsellView.frame.setter(x, y, width, height);
}

- (CGRect)bounds
{
  sub_88978(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  InlineSocialUpsellView.bounds.setter(x, y, width, height);
}

- (void)layoutSubviews
{
  v2 = self;
  InlineSocialUpsellView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(InlineSocialUpsellView *)v4 traitCollection];
  InlineSocialUpsellView.preferredHeight(traitCollection:containerWidth:)(v5, width);
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  InlineSocialUpsellView.traitCollectionDidChange(_:)(v9);
}

@end