@interface CNToneKitPickerStyleProvider
- (BOOL)tonePickerUsesOpaqueBackground;
- (UIColor)tonePickerCellBackgroundColor;
- (UIColor)tonePickerCellHighlightedTextColor;
- (UIColor)tonePickerCellTextColor;
- (UIColor)tonePickerCustomTableSeparatorColor;
- (UIColor)tonePickerHeaderTextColor;
- (UIEdgeInsets)tonePickerHeaderTextPaddingInsets;
- (UIOffset)tonePickerHeaderTextShadowOffset;
- (id)newAccessoryDisclosureIndicatorViewForTonePickerCell;
- (id)newBackgroundViewForSelectedTonePickerCell:(BOOL)a3;
- (int64_t)tonePickerCustomTableSeparatorBackdropOverlayBlendMode;
- (int64_t)tonePickerTableViewSeparatorStyle;
@end

@implementation CNToneKitPickerStyleProvider

- (UIEdgeInsets)tonePickerHeaderTextPaddingInsets
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = 1.0 / v3 + 6.0;

  v5 = 14.0;
  v6 = 15.0;
  v7 = 15.0;
  v8 = v4;
  result.right = v7;
  result.bottom = v8;
  result.left = v6;
  result.top = v5;
  return result;
}

- (UIOffset)tonePickerHeaderTextShadowOffset
{
  v2 = *MEMORY[0x1E69DE258];
  v3 = *(MEMORY[0x1E69DE258] + 8);
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIColor)tonePickerHeaderTextColor
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 textColor];

  return v3;
}

- (id)newAccessoryDisclosureIndicatorViewForTonePickerCell
{
  v3 = UIImageGetTableNext();
  v4 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
  v5 = [v3 imageWithTintColor:v4];
  v6 = [v5 imageFlippedForRightToLeftLayoutDirection];

  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
  v8 = UIImageGetTableNext();
  v9 = [(CNToneKitPickerStyleProvider *)self tonePickerCellTextColor];
  v10 = [v8 imageWithTintColor:v9];
  v11 = [v10 imageFlippedForRightToLeftLayoutDirection];
  [v7 setHighlightedImage:v11];

  return v7;
}

- (id)newBackgroundViewForSelectedTonePickerCell:(BOOL)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = +[CNContactStyle currentStyle];
  v6 = [v5 blurSupported];

  if (v6)
  {
    [v4 _setDrawsAsBackdropOverlayWithBlendMode:3];
  }

  v7 = +[CNContactStyle currentStyle];
  v8 = [v7 selectedCellBackgroundColor];
  [v4 setBackgroundColor:v8];

  return v4;
}

- (UIColor)tonePickerCellBackgroundColor
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 backgroundColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
  }

  v6 = v5;

  return v6;
}

- (UIColor)tonePickerCellHighlightedTextColor
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 textColor];

  return v3;
}

- (UIColor)tonePickerCellTextColor
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 textColor];

  return v3;
}

- (int64_t)tonePickerCustomTableSeparatorBackdropOverlayBlendMode
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 separatorBackdropOverlayBlendMode];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendModeSymbolLoc_ptr;
  v13 = getTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendModeSymbolLoc_ptr;
  if (!getTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendModeSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendModeSymbolLoc_block_invoke;
    v9[3] = &unk_1E74E7518;
    v9[4] = &v10;
    __getTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendModeSymbolLoc_block_invoke(v9);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v4)
  {
    v5 = v4(v3);

    return v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"TKBackdropViewOverlayBlendMode CNSoftLinkTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendMode(_UIBackdropViewOverlayBlendMode)"];
    [v7 handleFailureInFunction:v8 file:@"CNToneLibrary.h" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (UIColor)tonePickerCustomTableSeparatorColor
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 separatorColor];

  return v3;
}

- (int64_t)tonePickerTableViewSeparatorStyle
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 separatorStyle];

  return v3;
}

- (BOOL)tonePickerUsesOpaqueBackground
{
  v2 = +[CNContactStyle currentStyle];
  v3 = [v2 usesOpaqueBackground];

  return v3;
}

@end