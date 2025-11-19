@interface VerticalLockupCollectionViewCell
- (CGRect)bounds;
- (CGRect)frame;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  VerticalLockupCollectionViewCell.bounds.setter(x, y, width, height);
}

- (void)layoutSubviews
{
  v2 = self;
  VerticalLockupCollectionViewCell.layoutSubviews()();
}

- (void)clearArtworkCatalogs
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v3 = v2[14];
  v4 = self;
  [v3 clearArtworkCatalogs];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v2[25] = 0;
  v2[26] = 0;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  VerticalLockupCollectionViewCell.traitCollectionDidChange(_:)(v9);
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for VerticalLockupCollectionViewCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(VerticalLockupCollectionViewCell *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(VerticalLockupCollectionViewCell *)&v8 setHighlighted:v3];
  if (v7 != [(VerticalLockupCollectionViewCell *)v6 isHighlighted])
  {
    sub_35D1B8();
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for VerticalLockupCollectionViewCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(VerticalLockupCollectionViewCell *)&v9 isSelected];
  v8.receiver = v6;
  v8.super_class = v5;
  [(VerticalLockupCollectionViewCell *)&v8 setSelected:v3];
  if (v7 != [(VerticalLockupCollectionViewCell *)v6 isSelected])
  {
    sub_35D1B8();
    sub_35CF64();
  }
}

@end