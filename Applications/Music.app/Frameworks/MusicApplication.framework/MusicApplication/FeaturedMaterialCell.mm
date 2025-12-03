@interface FeaturedMaterialCell
- (UIButton)accessibilityPlayButton;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation FeaturedMaterialCell

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_45D920(highlighted, &selRef_isHighlighted, &selRef_setHighlighted_);
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_45D920(selected, &selRef_isSelected, &selRef_setSelected_);
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for FeaturedMaterialCell();
  v2 = v12.receiver;
  [(VerticalLockupCollectionViewCell *)&v12 layoutSubviews];
  contentView = [v2 contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*&v2[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView] setFrame:{v5, v7, v9, v11}];
  sub_45CBB4();
  sub_45C6D4();
}

- (UIButton)accessibilityPlayButton
{
  selfCopy = self;
  v3 = sub_45C560();

  return v3;
}

@end