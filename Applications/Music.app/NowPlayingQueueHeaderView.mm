@interface NowPlayingQueueHeaderView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NowPlayingQueueHeaderView

- (void)applyLayoutAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingQueueHeaderView();
  attributesCopy = attributes;
  v5 = v6.receiver;
  [(NowPlayingQueueHeaderView *)&v6 applyLayoutAttributes:attributesCopy];
  [v5 setClipsToBounds:{sub_10056B5F4() & 1, v6.receiver, v6.super_class}];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingQueueHeaderView();
  v2 = v5.receiver;
  [(NowPlayingQueueHeaderView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_gradientView];
  [v2 bounds];
  MaxY = CGRectGetMaxY(v6);
  [v2 bounds];
  [v3 setFrame:{0.0, MaxY, CGRectGetWidth(v7), 5.0}];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100574588(change);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_100574C78(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end