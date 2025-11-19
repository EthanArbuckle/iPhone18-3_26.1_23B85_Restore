@interface NowPlayingQueueHeaderView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NowPlayingQueueHeaderView

- (void)applyLayoutAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingQueueHeaderView();
  v4 = a3;
  v5 = v6.receiver;
  [(NowPlayingQueueHeaderView *)&v6 applyLayoutAttributes:v4];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100574588(a3);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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