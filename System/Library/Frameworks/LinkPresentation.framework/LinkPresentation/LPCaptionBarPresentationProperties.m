@interface LPCaptionBarPresentationProperties
- (CGSize)leadingIconSize;
- (CGSize)trailingIconSize;
- (LPCaptionBarPresentationProperties)init;
- (LPCaptionRowPresentationProperties)aboveTop;
- (LPCaptionRowPresentationProperties)belowBottom;
- (LPCaptionRowPresentationProperties)bottom;
- (LPCaptionRowPresentationProperties)top;
- (id)leftIcon;
- (id)leftIconProperties;
- (id)rightIcon;
- (id)rightIconProperties;
- (int64_t)leftAccessoryType;
- (int64_t)rightAccessoryType;
- (void)applyToAllCaptions:(id)a3;
- (void)removeAllIcons;
- (void)setButtonCaption:(id)a3;
@end

@implementation LPCaptionBarPresentationProperties

- (LPCaptionBarPresentationProperties)init
{
  v6.receiver = self;
  v6.super_class = LPCaptionBarPresentationProperties;
  v2 = [(LPCaptionBarPresentationProperties *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (LPCaptionRowPresentationProperties)aboveTop
{
  aboveTop = self->_aboveTop;
  if (!aboveTop)
  {
    v4 = objc_alloc_init(LPCaptionRowPresentationProperties);
    v5 = self->_aboveTop;
    self->_aboveTop = v4;

    aboveTop = self->_aboveTop;
  }

  return aboveTop;
}

- (LPCaptionRowPresentationProperties)top
{
  top = self->_top;
  if (!top)
  {
    v4 = objc_alloc_init(LPCaptionRowPresentationProperties);
    v5 = self->_top;
    self->_top = v4;

    top = self->_top;
  }

  return top;
}

- (LPCaptionRowPresentationProperties)bottom
{
  bottom = self->_bottom;
  if (!bottom)
  {
    v4 = objc_alloc_init(LPCaptionRowPresentationProperties);
    v5 = self->_bottom;
    self->_bottom = v4;

    bottom = self->_bottom;
  }

  return bottom;
}

- (LPCaptionRowPresentationProperties)belowBottom
{
  belowBottom = self->_belowBottom;
  if (!belowBottom)
  {
    v4 = objc_alloc_init(LPCaptionRowPresentationProperties);
    v5 = self->_belowBottom;
    self->_belowBottom = v4;

    belowBottom = self->_belowBottom;
  }

  return belowBottom;
}

- (void)applyToAllCaptions:(id)a3
{
  v4 = a3;
  [(LPCaptionRowPresentationProperties *)self->_aboveTop applyToAllCaptions:?];
  [(LPCaptionRowPresentationProperties *)self->_top applyToAllCaptions:v4];
  [(LPCaptionRowPresentationProperties *)self->_bottom applyToAllCaptions:v4];
  [(LPCaptionRowPresentationProperties *)self->_belowBottom applyToAllCaptions:v4];
}

- (void)removeAllIcons
{
  leadingIcon = self->_leadingIcon;
  self->_leadingIcon = 0;

  additionalLeadingIcons = self->_additionalLeadingIcons;
  self->_additionalLeadingIcons = 0;

  trailingIcon = self->_trailingIcon;
  self->_trailingIcon = 0;

  additionalTrailingIcons = self->_additionalTrailingIcons;
  self->_additionalTrailingIcons = 0;
}

- (id)leftIcon
{
  if (appIsLTR())
  {
    [(LPCaptionBarPresentationProperties *)self leadingIcon];
  }

  else
  {
    [(LPCaptionBarPresentationProperties *)self trailingIcon];
  }
  v3 = ;

  return v3;
}

- (id)rightIcon
{
  if (appIsLTR())
  {
    [(LPCaptionBarPresentationProperties *)self trailingIcon];
  }

  else
  {
    [(LPCaptionBarPresentationProperties *)self leadingIcon];
  }
  v3 = ;

  return v3;
}

- (id)leftIconProperties
{
  if (appIsLTR())
  {
    [(LPCaptionBarPresentationProperties *)self leadingIconProperties];
  }

  else
  {
    [(LPCaptionBarPresentationProperties *)self trailingIconProperties];
  }
  v3 = ;

  return v3;
}

- (id)rightIconProperties
{
  if (appIsLTR())
  {
    [(LPCaptionBarPresentationProperties *)self trailingIconProperties];
  }

  else
  {
    [(LPCaptionBarPresentationProperties *)self leadingIconProperties];
  }
  v3 = ;

  return v3;
}

- (int64_t)leftAccessoryType
{
  if (appIsLTR())
  {

    return [(LPCaptionBarPresentationProperties *)self leadingAccessoryType];
  }

  else
  {

    return [(LPCaptionBarPresentationProperties *)self trailingAccessoryType];
  }
}

- (int64_t)rightAccessoryType
{
  if (appIsLTR())
  {

    return [(LPCaptionBarPresentationProperties *)self trailingAccessoryType];
  }

  else
  {

    return [(LPCaptionBarPresentationProperties *)self leadingAccessoryType];
  }
}

- (void)setButtonCaption:(id)a3
{
  v6 = a3;
  v4 = objc_alloc_init(LPCaptionButtonPresentationProperties);
  button = self->_button;
  self->_button = v4;

  [(LPCaptionButtonPresentationProperties *)self->_button setText:v6];
  [(LPCaptionButtonPresentationProperties *)self->_button setType:1];
}

- (CGSize)leadingIconSize
{
  width = self->_leadingIconSize.width;
  height = self->_leadingIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)trailingIconSize
{
  width = self->_trailingIconSize.width;
  height = self->_trailingIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end