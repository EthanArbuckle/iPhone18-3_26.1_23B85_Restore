@interface UINavigationBar(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UINavigationBar(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  _cnui_contactStyle = [self _cnui_contactStyle];
  if ([_cnui_contactStyle barStyle])
  {
    [self setBarStyle:{objc_msgSend(_cnui_contactStyle, "barStyle")}];
  }

  if ([_cnui_contactStyle usesTranslucentBarStyle])
  {
    [self setTranslucent:{objc_msgSend(_cnui_contactStyle, "usesTranslucentBarStyle")}];
  }
}

@end