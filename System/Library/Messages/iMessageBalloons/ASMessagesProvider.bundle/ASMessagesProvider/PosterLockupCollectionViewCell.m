@interface PosterLockupCollectionViewCell
- (NSString)accessibilityFallbackTitle;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PosterLockupCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_744DB8();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_74335C();
}

- (NSString)accessibilityFallbackTitle
{
  if (*&self->fallbackTitle[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitle])
  {

    v2 = sub_769210();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end