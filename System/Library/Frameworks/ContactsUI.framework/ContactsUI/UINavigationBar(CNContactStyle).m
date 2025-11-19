@interface UINavigationBar(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UINavigationBar(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  v2 = [a1 _cnui_contactStyle];
  if ([v2 barStyle])
  {
    [a1 setBarStyle:{objc_msgSend(v2, "barStyle")}];
  }

  if ([v2 usesTranslucentBarStyle])
  {
    [a1 setTranslucent:{objc_msgSend(v2, "usesTranslucentBarStyle")}];
  }
}

@end