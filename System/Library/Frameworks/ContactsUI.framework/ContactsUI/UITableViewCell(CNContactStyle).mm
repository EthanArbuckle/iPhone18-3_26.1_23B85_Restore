@interface UITableViewCell(CNContactStyle)
- (void)_cnui_applyCommonContactStyle:()CNContactStyle;
- (void)_cnui_applyContactStyle;
- (void)_cnui_applySelectedBackgroundViewStyle:()CNContactStyle;
@end

@implementation UITableViewCell(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  _cnui_contactStyle = [self _cnui_contactStyle];
  [self _cnui_applyCommonContactStyle:_cnui_contactStyle];
  [self _cnui_applySelectedBackgroundViewStyle:_cnui_contactStyle];
}

- (void)_cnui_applySelectedBackgroundViewStyle:()CNContactStyle
{
  v15 = a3;
  selectedCellBackgroundColor = [v15 selectedCellBackgroundColor];

  selectedBackgroundView = [self selectedBackgroundView];
  if (!selectedCellBackgroundColor)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_9;
    }

    layer2 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:3];
    [self setSelectedBackgroundView:layer2];
    goto LABEL_8;
  }

  v6 = [selectedBackgroundView isMemberOfClass:objc_opt_class()];

  if ((v6 & 1) == 0)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [self setSelectedBackgroundView:v7];
  }

  selectedBackgroundView2 = [self selectedBackgroundView];
  [selectedBackgroundView2 setAutoresizingMask:18];

  selectedCellBackgroundColor2 = [v15 selectedCellBackgroundColor];
  selectedBackgroundView3 = [self selectedBackgroundView];
  [selectedBackgroundView3 setBackgroundColor:selectedCellBackgroundColor2];

  if ([v15 blurSupported])
  {
    selectedBackgroundView4 = [self selectedBackgroundView];
    [selectedBackgroundView4 _setDrawsAsBackdropOverlayWithBlendMode:3];

    layer = [self layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [self layer];
    [layer2 setAllowsGroupBlending:0];
LABEL_8:
  }

LABEL_9:
}

- (void)_cnui_applyCommonContactStyle:()CNContactStyle
{
  v26 = a3;
  backgroundColor = [v26 backgroundColor];

  if (backgroundColor)
  {
    backgroundView = [self backgroundView];
    v6 = [backgroundView isMemberOfClass:objc_opt_class()];

    if ((v6 & 1) == 0)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [self setBackgroundView:v7];
    }

    backgroundColor2 = [v26 backgroundColor];
    backgroundView2 = [self backgroundView];
    [backgroundView2 setBackgroundColor:backgroundColor2];
  }

  if (([v26 usesOpaqueBackground] & 1) == 0)
  {
    backgroundView3 = [self backgroundView];
    v11 = [backgroundView3 isMemberOfClass:objc_opt_class()];

    if ((v11 & 1) == 0)
    {
      v12 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:3];
      [self setBackgroundView:v12];
    }

    [self setBackgroundColor:0];
  }

  textColor = [v26 textColor];

  if (textColor)
  {
    textColor2 = [v26 textColor];
    textLabel = [self textLabel];
    [textLabel setTextColor:textColor2];
  }

  highlightedTextColor = [v26 highlightedTextColor];

  if (highlightedTextColor)
  {
    highlightedTextColor2 = [v26 highlightedTextColor];
    textLabel2 = [self textLabel];
    [textLabel2 setHighlightedTextColor:highlightedTextColor2];
  }

  [self setOpaque:{objc_msgSend(v26, "usesOpaqueBackground")}];
  textLabel3 = [self textLabel];
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v21 = 0.0;
  if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
  {
    *&v21 = 0.25;
  }

  [textLabel3 _setHyphenationFactor:v21];

  [v26 separatorInset];
  v23.f64[1] = v22;
  v25.f64[1] = v24;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v23, *MEMORY[0x1E69DDCE0]), vceqq_f64(v25, *(MEMORY[0x1E69DDCE0] + 16))))) & 1) == 0)
  {
    [v26 separatorInset];
    [self setSeparatorInset:?];
  }
}

@end