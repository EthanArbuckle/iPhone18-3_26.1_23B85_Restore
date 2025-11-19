@interface NowPlayingCollectionView
- (UIEdgeInsets)_safeAreaInsetsForFrame:(CGRect)a3 inSuperview:(id)a4;
- (_TtC12NowPlayingUI24NowPlayingCollectionView)initWithCoder:(id)a3;
- (_TtC12NowPlayingUI24NowPlayingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
@end

@implementation NowPlayingCollectionView

- (_TtC12NowPlayingUI24NowPlayingCollectionView)initWithCoder:(id)a3
{
  result = sub_1452FC();
  __break(1u);
  return result;
}

- (UIEdgeInsets)_safeAreaInsetsForFrame:(CGRect)a3 inSuperview:(id)a4
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (_TtC12NowPlayingUI24NowPlayingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end