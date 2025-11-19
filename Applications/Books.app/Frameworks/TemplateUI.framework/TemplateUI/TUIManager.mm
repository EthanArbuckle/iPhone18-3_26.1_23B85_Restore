@interface TUIManager
- (TUIManager)init;
- (TUIVideoPlayerManaging)videoPlayerManager;
@end

@implementation TUIManager

- (TUIManager)init
{
  v6.receiver = self;
  v6.super_class = TUIManager;
  v2 = [(TUIManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUIColorRegistry);
    colorRegistry = v2->_colorRegistry;
    v2->_colorRegistry = v3;
  }

  return v2;
}

- (TUIVideoPlayerManaging)videoPlayerManager
{
  videoPlayerManager = self->_videoPlayerManager;
  if (!videoPlayerManager)
  {
    v4 = objc_alloc_init(TUIVideoPlayerManager);
    v5 = self->_videoPlayerManager;
    self->_videoPlayerManager = v4;

    videoPlayerManager = self->_videoPlayerManager;
  }

  return videoPlayerManager;
}

@end