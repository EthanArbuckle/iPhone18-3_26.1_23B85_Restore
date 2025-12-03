@interface InlineSocialUpsellView
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  InlineSocialUpsellView.bounds.setter(x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  InlineSocialUpsellView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(InlineSocialUpsellView *)selfCopy traitCollection];
  InlineSocialUpsellView.preferredHeight(traitCollection:containerWidth:)(traitCollection, width);
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  InlineSocialUpsellView.traitCollectionDidChange(_:)(v9);
}

@end