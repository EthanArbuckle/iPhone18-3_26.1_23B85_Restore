@interface SongCell
- (NSString)accessibilityTrackNumberString;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category;
- (void)prepareForReuse;
- (void)setDuration:(double)duration;
- (void)setEditing:(BOOL)editing;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsAddButtonSelected:(BOOL)selected;
- (void)setIsExplicit:(BOOL)explicit;
- (void)setIsProminentItem:(BOOL)item;
- (void)setPlaybackState:(int64_t)state;
- (void)setSelected:(BOOL)selected;
- (void)setWantsNowPlayingIndicator:(BOOL)indicator;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SongCell

- (void)setDuration:(double)duration
{
  selfCopy = self;
  sub_11FCD8(duration);
}

- (void)setIsProminentItem:(BOOL)item
{
  v3 = *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem);
  *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem) = item;
  selfCopy = self;
  sub_11FE48(v3);
}

- (void)setIsExplicit:(BOOL)explicit
{
  explicitCopy = explicit;
  selfCopy = self;
  sub_1201F8(explicitCopy);
}

- (void)setWantsNowPlayingIndicator:(BOOL)indicator
{
  v3 = *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsNowPlayingIndicator);
  *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsNowPlayingIndicator) = indicator;
  if (v3 != indicator)
  {
    [(SongCell *)self setNeedsLayout];
  }
}

- (void)setIsAddButtonSelected:(BOOL)selected
{
  selfCopy = self;
  sub_1205F8(selected);
}

- (void)setPlaybackState:(int64_t)state
{
  v3 = *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_playbackState);
  *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_playbackState) = state;
  if (v3 != state)
  {
    [(SongCell *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_120890(highlighted, &selRef_isHighlighted, &selRef_setHighlighted_);
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_120890(selected, &selRef_isSelected, &selRef_setSelected_);
}

- (void)prepareForReuse
{
  v2 = *(self + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v4 = *(v2 + 80);
  *(v2 + 80) = 0;
  selfCopy = self;
  sub_CD5A8(v4);
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  v5 = type metadata accessor for SongCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isEditing = [(SongCell *)&v9 isEditing];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SongCell *)&v8 setEditing:editingCopy];
  if (isEditing != [(SongCell *)selfCopy isEditing])
  {
    [(SongCell *)selfCopy setClipsToBounds:[(SongCell *)selfCopy isEditing]];
    [(SongCell *)selfCopy setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SongCell();
  changeCopy = change;
  v5 = v7.receiver;
  [(HorizontalLockupCollectionViewCell *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  if ([traitCollection horizontalSizeClass])
  {
    [v5 setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_120C8C();
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category
{
  categoryCopy = category;
  selfCopy = self;
  sub_128608();
}

- (NSString)accessibilityTrackNumberString
{

  v2 = sub_14489C();

  return v2;
}

@end