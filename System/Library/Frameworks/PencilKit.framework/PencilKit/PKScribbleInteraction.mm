@interface PKScribbleInteraction
- (PKScribbleInteractionDelegate)delegate;
- (PKScribbleInteractionElementSource)elementSource;
- (UIView)view;
- (id)scribbleInteractionWrapper;
@end

@implementation PKScribbleInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)scribbleInteractionWrapper
{
  cachedWrapper = self->_cachedWrapper;
  if (!cachedWrapper)
  {
    v4 = [[PKScribbleInteractionWrapper alloc] initWithScribbleInteraction:?];
    v5 = self->_cachedWrapper;
    self->_cachedWrapper = v4;

    cachedWrapper = self->_cachedWrapper;
  }

  return cachedWrapper;
}

- (PKScribbleInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKScribbleInteractionElementSource)elementSource
{
  WeakRetained = objc_loadWeakRetained(&self->_elementSource);

  return WeakRetained;
}

@end