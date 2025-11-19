@interface PosterLockupCollectionViewCell
- (NSString)accessibilityFallbackTitle;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PosterLockupCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_100440490();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10044090C();
}

- (NSString)accessibilityFallbackTitle
{
  if (*&self->fallbackTitle[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle])
  {

    v2 = sub_100753064();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end