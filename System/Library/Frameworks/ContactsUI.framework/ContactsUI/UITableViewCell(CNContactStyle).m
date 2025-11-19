@interface UITableViewCell(CNContactStyle)
- (void)_cnui_applyCommonContactStyle:()CNContactStyle;
- (void)_cnui_applyContactStyle;
- (void)_cnui_applySelectedBackgroundViewStyle:()CNContactStyle;
@end

@implementation UITableViewCell(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  v2 = [a1 _cnui_contactStyle];
  [a1 _cnui_applyCommonContactStyle:v2];
  [a1 _cnui_applySelectedBackgroundViewStyle:v2];
}

- (void)_cnui_applySelectedBackgroundViewStyle:()CNContactStyle
{
  v15 = a3;
  v4 = [v15 selectedCellBackgroundColor];

  v5 = [a1 selectedBackgroundView];
  if (!v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_9;
    }

    v13 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:3];
    [a1 setSelectedBackgroundView:v13];
    goto LABEL_8;
  }

  v6 = [v5 isMemberOfClass:objc_opt_class()];

  if ((v6 & 1) == 0)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [a1 setSelectedBackgroundView:v7];
  }

  v8 = [a1 selectedBackgroundView];
  [v8 setAutoresizingMask:18];

  v9 = [v15 selectedCellBackgroundColor];
  v10 = [a1 selectedBackgroundView];
  [v10 setBackgroundColor:v9];

  if ([v15 blurSupported])
  {
    v11 = [a1 selectedBackgroundView];
    [v11 _setDrawsAsBackdropOverlayWithBlendMode:3];

    v12 = [a1 layer];
    [v12 setAllowsGroupOpacity:0];

    v13 = [a1 layer];
    [v13 setAllowsGroupBlending:0];
LABEL_8:
  }

LABEL_9:
}

- (void)_cnui_applyCommonContactStyle:()CNContactStyle
{
  v26 = a3;
  v4 = [v26 backgroundColor];

  if (v4)
  {
    v5 = [a1 backgroundView];
    v6 = [v5 isMemberOfClass:objc_opt_class()];

    if ((v6 & 1) == 0)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [a1 setBackgroundView:v7];
    }

    v8 = [v26 backgroundColor];
    v9 = [a1 backgroundView];
    [v9 setBackgroundColor:v8];
  }

  if (([v26 usesOpaqueBackground] & 1) == 0)
  {
    v10 = [a1 backgroundView];
    v11 = [v10 isMemberOfClass:objc_opt_class()];

    if ((v11 & 1) == 0)
    {
      v12 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:3];
      [a1 setBackgroundView:v12];
    }

    [a1 setBackgroundColor:0];
  }

  v13 = [v26 textColor];

  if (v13)
  {
    v14 = [v26 textColor];
    v15 = [a1 textLabel];
    [v15 setTextColor:v14];
  }

  v16 = [v26 highlightedTextColor];

  if (v16)
  {
    v17 = [v26 highlightedTextColor];
    v18 = [a1 textLabel];
    [v18 setHighlightedTextColor:v17];
  }

  [a1 setOpaque:{objc_msgSend(v26, "usesOpaqueBackground")}];
  v19 = [a1 textLabel];
  v20 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v21 = 0.0;
  if (v20)
  {
    *&v21 = 0.25;
  }

  [v19 _setHyphenationFactor:v21];

  [v26 separatorInset];
  v23.f64[1] = v22;
  v25.f64[1] = v24;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v23, *MEMORY[0x1E69DDCE0]), vceqq_f64(v25, *(MEMORY[0x1E69DDCE0] + 16))))) & 1) == 0)
  {
    [v26 separatorInset];
    [a1 setSeparatorInset:?];
  }
}

@end