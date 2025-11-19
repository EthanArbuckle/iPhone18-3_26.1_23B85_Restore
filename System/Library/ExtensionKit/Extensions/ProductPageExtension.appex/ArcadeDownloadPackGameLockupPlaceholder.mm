@interface ArcadeDownloadPackGameLockupPlaceholder
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation ArcadeDownloadPackGameLockupPlaceholder

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(ArcadeDownloadPackGameLockupPlaceholder *)v4 traitCollection];
  v6 = sub_100333214(width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ArcadeDownloadPackGameLockupPlaceholder *)&v5 layoutSubviews];
  sub_100332210(v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076422C();
  v3 = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

@end