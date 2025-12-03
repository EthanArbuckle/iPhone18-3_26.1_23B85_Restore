@interface VerticalLockupCollectionViewCell
- (CGRect)bounds;
- (CGRect)frame;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation VerticalLockupCollectionViewCell

- (CGRect)frame
{
  sub_35E2CC(self, a2, &selRef_frame);
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
  VerticalLockupCollectionViewCell.frame.setter(x, y, width, height);
}

- (CGRect)bounds
{
  sub_35E2CC(self, a2, &selRef_bounds);
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
  VerticalLockupCollectionViewCell.bounds.setter(x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  VerticalLockupCollectionViewCell.layoutSubviews()();
}

- (void)clearArtworkCatalogs
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v3 = v2[14];
  selfCopy = self;
  [v3 clearArtworkCatalogs];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v2[25] = 0;
  v2[26] = 0;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  VerticalLockupCollectionViewCell.traitCollectionDidChange(_:)(v9);
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for VerticalLockupCollectionViewCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(VerticalLockupCollectionViewCell *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(VerticalLockupCollectionViewCell *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != [(VerticalLockupCollectionViewCell *)selfCopy isHighlighted])
  {
    sub_35D1B8();
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = type metadata accessor for VerticalLockupCollectionViewCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isSelected = [(VerticalLockupCollectionViewCell *)&v9 isSelected];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(VerticalLockupCollectionViewCell *)&v8 setSelected:selectedCopy];
  if (isSelected != [(VerticalLockupCollectionViewCell *)selfCopy isSelected])
  {
    sub_35D1B8();
    sub_35CF64();
  }
}

@end