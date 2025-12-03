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
- (id)newBackgroundViewForSelectedTonePickerCell:(BOOL)cell;
- (int64_t)tonePickerCustomTableSeparatorBackdropOverlayBlendMode;
- (int64_t)tonePickerTableViewSeparatorStyle;
@end

@implementation CNToneKitPickerStyleProvider

- (UIEdgeInsets)tonePickerHeaderTextPaddingInsets
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
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
  textColor = [v2 textColor];

  return textColor;
}

- (id)newAccessoryDisclosureIndicatorViewForTonePickerCell
{
  v3 = UIImageGetTableNext();
  v4 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
  v5 = [v3 imageWithTintColor:v4];
  imageFlippedForRightToLeftLayoutDirection = [v5 imageFlippedForRightToLeftLayoutDirection];

  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageFlippedForRightToLeftLayoutDirection];
  v8 = UIImageGetTableNext();
  tonePickerCellTextColor = [(CNToneKitPickerStyleProvider *)self tonePickerCellTextColor];
  v10 = [v8 imageWithTintColor:tonePickerCellTextColor];
  imageFlippedForRightToLeftLayoutDirection2 = [v10 imageFlippedForRightToLeftLayoutDirection];
  [v7 setHighlightedImage:imageFlippedForRightToLeftLayoutDirection2];

  return v7;
}

- (id)newBackgroundViewForSelectedTonePickerCell:(BOOL)cell
{
  if (!cell)
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = +[CNContactStyle currentStyle];
  blurSupported = [v5 blurSupported];

  if (blurSupported)
  {
    [v4 _setDrawsAsBackdropOverlayWithBlendMode:3];
  }

  v7 = +[CNContactStyle currentStyle];
  selectedCellBackgroundColor = [v7 selectedCellBackgroundColor];
  [v4 setBackgroundColor:selectedCellBackgroundColor];

  return v4;
}

- (UIColor)tonePickerCellBackgroundColor
{
  v2 = +[CNContactStyle currentStyle];
  backgroundColor = [v2 backgroundColor];
  v4 = backgroundColor;
  if (backgroundColor)
  {
    v5 = backgroundColor;
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
  textColor = [v2 textColor];

  return textColor;
}

- (UIColor)tonePickerCellTextColor
{
  v2 = +[CNContactStyle currentStyle];
  textColor = [v2 textColor];

  return textColor;
}

- (int64_t)tonePickerCustomTableSeparatorBackdropOverlayBlendMode
{
  v2 = +[CNContactStyle currentStyle];
  separatorBackdropOverlayBlendMode = [v2 separatorBackdropOverlayBlendMode];
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
    v5 = v4(separatorBackdropOverlayBlendMode);

    return v5;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"TKBackdropViewOverlayBlendMode CNSoftLinkTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendMode(_UIBackdropViewOverlayBlendMode)"];
    [currentHandler handleFailureInFunction:v8 file:@"CNToneLibrary.h" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (UIColor)tonePickerCustomTableSeparatorColor
{
  v2 = +[CNContactStyle currentStyle];
  separatorColor = [v2 separatorColor];

  return separatorColor;
}

- (int64_t)tonePickerTableViewSeparatorStyle
{
  v2 = +[CNContactStyle currentStyle];
  separatorStyle = [v2 separatorStyle];

  return separatorStyle;
}

- (BOOL)tonePickerUsesOpaqueBackground
{
  v2 = +[CNContactStyle currentStyle];
  usesOpaqueBackground = [v2 usesOpaqueBackground];

  return usesOpaqueBackground;
}

@end