@interface PosterLockupCollectionViewCell
- (NSString)accessibilityFallbackTitle;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PosterLockupCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1004A2940();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1004A0FE4();
}

- (NSString)accessibilityFallbackTitle
{
  if (*&self->fallbackTitle[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle])
  {

    v2 = sub_10076FF6C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end