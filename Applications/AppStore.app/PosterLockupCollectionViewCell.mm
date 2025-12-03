@interface PosterLockupCollectionViewCell
- (NSString)accessibilityFallbackTitle;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PosterLockupCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10038B8F8();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100389E9C();
}

- (NSString)accessibilityFallbackTitle
{
  if (*&self->fallbackTitle[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle])
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end