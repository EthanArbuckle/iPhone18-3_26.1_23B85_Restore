@interface APUISingleIconLayout
- (CGSize)size;
- (SBIconImageInfo)iconImageInfo;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation;
@end

@implementation APUISingleIconLayout

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (SBIconImageInfo)iconImageInfo
{
  width = self->_size.width;
  height = self->_size.height;
  scale = self->_scale;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr;
  v13 = getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr;
  if (!getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr)
  {
    v7 = SpringBoardHomeLibrary_0();
    v11[3] = dlsym(v7, "SBHDefaultIconImageContinuousCornerRadiusForIconSize");
    getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    v9 = [APUIAppIconGridLayoutProvider layoutForIconLocation:];
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v6(width);
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end