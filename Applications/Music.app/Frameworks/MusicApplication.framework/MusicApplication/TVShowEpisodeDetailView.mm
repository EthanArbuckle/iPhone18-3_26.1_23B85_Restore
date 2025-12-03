@interface TVShowEpisodeDetailView
- (CGRect)bounds;
- (CGRect)frame;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TVShowEpisodeDetailView

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
  sub_22B320(&selRef_frame, &selRef_setFrame_, x, y, width, height);
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
  sub_22B320(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_22B450();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(TVShowEpisodeDetailView *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  if ([traitCollection horizontalSizeClass])
  {
    sub_22AA7C(traitCollection);
  }
}

@end