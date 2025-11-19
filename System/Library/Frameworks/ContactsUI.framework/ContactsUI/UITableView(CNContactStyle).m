@interface UITableView(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UITableView(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  v8 = [a1 _cnui_contactStyle];
  v2 = [v8 backgroundColor];

  if (v2)
  {
    v3 = [v8 backgroundColor];
    [a1 setBackgroundColor:v3];
  }

  if (([v8 usesOpaqueBackground] & 1) == 0)
  {
    [a1 setBackgroundColor:0];
  }

  v4 = [v8 sectionIndexBackgroundColor];

  if (v4)
  {
    v5 = [v8 sectionIndexBackgroundColor];
    [a1 setSectionIndexBackgroundColor:v5];
  }

  v6 = [v8 separatorColor];

  if (v6)
  {
    v7 = [v8 separatorColor];
    [a1 setSeparatorColor:v7];
  }

  if ([v8 separatorStyle])
  {
    [a1 setSeparatorStyle:{objc_msgSend(v8, "separatorStyle")}];
  }

  if ([v8 separatorBackdropOverlayBlendMode])
  {
    [a1 _setSeparatorBackdropOverlayBlendMode:{objc_msgSend(v8, "separatorBackdropOverlayBlendMode")}];
  }

  [a1 setOpaque:{objc_msgSend(v8, "usesOpaqueBackground")}];
}

@end