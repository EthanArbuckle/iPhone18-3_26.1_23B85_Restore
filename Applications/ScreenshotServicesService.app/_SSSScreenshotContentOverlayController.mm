@interface _SSSScreenshotContentOverlayController
- ($0AC6E346AE4835514AAA8AC86D8F4844)viewState;
- (CGRect)rectToCenterAboveKeyboard;
- (SSSScreenshot)screenshot;
- (UIView)rulerHostView;
- (_SSSScreenshotContentOverlayControllerDelegate)delegate;
- (void)setGesturesEnabled:(BOOL)a3;
@end

@implementation _SSSScreenshotContentOverlayController

- (CGRect)rectToCenterAboveKeyboard
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setGesturesEnabled:(BOOL)a3
{
  v3 = a3;
  self->_gesturesEnabled = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(_SSSScreenshotContentOverlayController *)self gestureRecognizers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setEnabled:v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (SSSScreenshot)screenshot
{
  WeakRetained = objc_loadWeakRetained(&self->_screenshot);

  return WeakRetained;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)viewState
{
  page = self->_viewState.page;
  state = self->_viewState.state;
  result.var1 = page;
  result.var0 = state;
  return result;
}

- (_SSSScreenshotContentOverlayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)rulerHostView
{
  WeakRetained = objc_loadWeakRetained(&self->_rulerHostView);

  return WeakRetained;
}

@end