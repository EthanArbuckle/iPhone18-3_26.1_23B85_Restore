@interface UIView
- (id)tui_querySectionUID;
- (id)tui_querySectionUUID;
@end

@implementation UIView

- (id)tui_querySectionUUID
{
  tui_renderViewHost = [(UIView *)self tui_renderViewHost];
  tui_querySectionUUID = [tui_renderViewHost tui_querySectionUUID];

  return tui_querySectionUUID;
}

- (id)tui_querySectionUID
{
  tui_renderViewHost = [(UIView *)self tui_renderViewHost];
  tui_querySectionUID = [tui_renderViewHost tui_querySectionUID];

  return tui_querySectionUID;
}

@end