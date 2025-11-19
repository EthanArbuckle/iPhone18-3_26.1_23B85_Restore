@interface UIView
- (id)tui_querySectionUID;
- (id)tui_querySectionUUID;
@end

@implementation UIView

- (id)tui_querySectionUUID
{
  v2 = [(UIView *)self tui_renderViewHost];
  v3 = [v2 tui_querySectionUUID];

  return v3;
}

- (id)tui_querySectionUID
{
  v2 = [(UIView *)self tui_renderViewHost];
  v3 = [v2 tui_querySectionUID];

  return v3;
}

@end