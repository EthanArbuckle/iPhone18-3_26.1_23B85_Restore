@interface SongCell
- (NSString)accessibilityTrackNumberString;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)a3;
- (void)prepareForReuse;
- (void)setDuration:(double)a3;
- (void)setEditing:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsAddButtonSelected:(BOOL)a3;
- (void)setIsExplicit:(BOOL)a3;
- (void)setIsProminentItem:(BOOL)a3;
- (void)setPlaybackState:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)setWantsNowPlayingIndicator:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SongCell

- (void)setDuration:(double)a3
{
  v4 = self;
  sub_11FCD8(a3);
}

- (void)setIsProminentItem:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem);
  *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_isProminentItem) = a3;
  v4 = self;
  sub_11FE48(v3);
}

- (void)setIsExplicit:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1201F8(v3);
}

- (void)setWantsNowPlayingIndicator:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsNowPlayingIndicator);
  *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_wantsNowPlayingIndicator) = a3;
  if (v3 != a3)
  {
    [(SongCell *)self setNeedsLayout];
  }
}

- (void)setIsAddButtonSelected:(BOOL)a3
{
  v4 = self;
  sub_1205F8(a3);
}

- (void)setPlaybackState:(int64_t)a3
{
  v3 = *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_playbackState);
  *(self + OBJC_IVAR____TtC12NowPlayingUI8SongCell_playbackState) = a3;
  if (v3 != a3)
  {
    [(SongCell *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_120890(a3, &selRef_isHighlighted, &selRef_setHighlighted_);
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_120890(a3, &selRef_isSelected, &selRef_setSelected_);
}

- (void)prepareForReuse
{
  v2 = *(self + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v4 = *(v2 + 80);
  *(v2 + 80) = 0;
  v3 = self;
  sub_CD5A8(v4);
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for SongCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SongCell *)&v9 isEditing];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SongCell *)&v8 setEditing:v3];
  if (v7 != [(SongCell *)v6 isEditing])
  {
    [(SongCell *)v6 setClipsToBounds:[(SongCell *)v6 isEditing]];
    [(SongCell *)v6 setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SongCell();
  v4 = a3;
  v5 = v7.receiver;
  [(HorizontalLockupCollectionViewCell *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  if ([v6 horizontalSizeClass])
  {
    [v5 setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_120C8C();
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_128608();
}

- (NSString)accessibilityTrackNumberString
{

  v2 = sub_14489C();

  return v2;
}

@end