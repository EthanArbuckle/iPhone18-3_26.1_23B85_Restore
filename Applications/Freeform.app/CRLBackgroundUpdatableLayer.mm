@interface CRLBackgroundUpdatableLayer
- (CRLBackgroundUpdatableLayer)init;
- (void)dealloc;
- (void)display;
- (void)setContentsFromBackground:(void *)background;
@end

@implementation CRLBackgroundUpdatableLayer

- (CRLBackgroundUpdatableLayer)init
{
  v3.receiver = self;
  v3.super_class = CRLBackgroundUpdatableLayer;
  result = [(CRLBackgroundUpdatableLayer *)&v3 init];
  if (result)
  {
    result->_backgroundUpdatableLayerLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    result->_contentsToSetOnNextDisplay = 0;
    result->_wantsContentsUpdatedOnNextDisplay = 0;
  }

  return result;
}

- (void)dealloc
{
  contentsToSetOnNextDisplay = self->_contentsToSetOnNextDisplay;
  if (contentsToSetOnNextDisplay)
  {
    CFRelease(contentsToSetOnNextDisplay);
    self->_contentsToSetOnNextDisplay = 0;
  }

  v4.receiver = self;
  v4.super_class = CRLBackgroundUpdatableLayer;
  [(CRLBackgroundUpdatableLayer *)&v4 dealloc];
}

- (void)setContentsFromBackground:(void *)background
{
  os_unfair_lock_lock(&self->_backgroundUpdatableLayerLock);
  contentsToSetOnNextDisplay = self->_contentsToSetOnNextDisplay;
  if (contentsToSetOnNextDisplay != background)
  {
    if (contentsToSetOnNextDisplay)
    {
      CFRelease(contentsToSetOnNextDisplay);
      self->_contentsToSetOnNextDisplay = 0;
    }

    self->_contentsToSetOnNextDisplay = CFRetain(background);
    self->_wantsContentsUpdatedOnNextDisplay = 1;
  }

  os_unfair_lock_unlock(&self->_backgroundUpdatableLayerLock);
}

- (void)display
{
  os_unfair_lock_lock(&self->_backgroundUpdatableLayerLock);
  if (self->_wantsContentsUpdatedOnNextDisplay)
  {
    [(CRLBackgroundUpdatableLayer *)self setContents:self->_contentsToSetOnNextDisplay];
    contentsToSetOnNextDisplay = self->_contentsToSetOnNextDisplay;
    if (contentsToSetOnNextDisplay)
    {
      CFRelease(contentsToSetOnNextDisplay);
      self->_contentsToSetOnNextDisplay = 0;
    }

    self->_wantsContentsUpdatedOnNextDisplay = 0;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CRLBackgroundUpdatableLayer;
    [(CRLBackgroundUpdatableLayer *)&v4 display];
  }

  os_unfair_lock_unlock(&self->_backgroundUpdatableLayerLock);
}

@end