@interface StoryCardMediaView
- (void)layoutSubviews;
@end

@implementation StoryCardMediaView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(StoryCardMediaView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
  [v2 bounds];
  [v4 setFrame:?];
}

@end