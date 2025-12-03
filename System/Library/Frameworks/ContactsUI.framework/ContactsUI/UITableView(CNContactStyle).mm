@interface UITableView(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UITableView(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  _cnui_contactStyle = [self _cnui_contactStyle];
  backgroundColor = [_cnui_contactStyle backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [_cnui_contactStyle backgroundColor];
    [self setBackgroundColor:backgroundColor2];
  }

  if (([_cnui_contactStyle usesOpaqueBackground] & 1) == 0)
  {
    [self setBackgroundColor:0];
  }

  sectionIndexBackgroundColor = [_cnui_contactStyle sectionIndexBackgroundColor];

  if (sectionIndexBackgroundColor)
  {
    sectionIndexBackgroundColor2 = [_cnui_contactStyle sectionIndexBackgroundColor];
    [self setSectionIndexBackgroundColor:sectionIndexBackgroundColor2];
  }

  separatorColor = [_cnui_contactStyle separatorColor];

  if (separatorColor)
  {
    separatorColor2 = [_cnui_contactStyle separatorColor];
    [self setSeparatorColor:separatorColor2];
  }

  if ([_cnui_contactStyle separatorStyle])
  {
    [self setSeparatorStyle:{objc_msgSend(_cnui_contactStyle, "separatorStyle")}];
  }

  if ([_cnui_contactStyle separatorBackdropOverlayBlendMode])
  {
    [self _setSeparatorBackdropOverlayBlendMode:{objc_msgSend(_cnui_contactStyle, "separatorBackdropOverlayBlendMode")}];
  }

  [self setOpaque:{objc_msgSend(_cnui_contactStyle, "usesOpaqueBackground")}];
}

@end