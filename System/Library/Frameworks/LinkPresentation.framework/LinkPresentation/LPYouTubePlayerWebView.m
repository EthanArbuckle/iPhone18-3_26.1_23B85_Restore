@interface LPYouTubePlayerWebView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
@end

@implementation LPYouTubePlayerWebView

- (BOOL)canBecomeFirstResponder
{
  if (!self->_allowFirstResponder)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = LPYouTubePlayerWebView;
  return [(LPYouTubePlayerWebView *)&v5 canBecomeFirstResponder];
}

- (BOOL)becomeFirstResponder
{
  if (!self->_allowFirstResponder)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = LPYouTubePlayerWebView;
  return [(LPYouTubePlayerWebView *)&v5 becomeFirstResponder];
}

@end