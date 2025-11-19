@interface LPImageViewStyle
- (LPImageViewStyle)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation LPImageViewStyle

- (LPImageViewStyle)init
{
  v17.receiver = self;
  v17.super_class = LPImageViewStyle;
  v2 = [(LPImageViewStyle *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_requireFixedSize = 0;
    v4 = objc_alloc_init(LPPadding);
    margin = v3->_margin;
    v3->_margin = v4;

    v6 = objc_alloc_init(LPPadding);
    padding = v3->_padding;
    v3->_padding = v6;

    *&v3->_scalingMode = vdupq_n_s64(1uLL);
    v8 = +[LPPointUnit zero];
    backgroundInset = v3->_backgroundInset;
    v3->_backgroundInset = v8;

    v10 = +[LPPointUnit zero];
    cornerRadius = v3->_cornerRadius;
    v3->_cornerRadius = v10;

    v3->_opacity = 1.0;
    v3->_verticalAlignment = 3;
    *&v3->_scalesToFitParent = 0;
    v3->_allowsPlatterPresentation = 0;
    v12 = [[LPPointUnit alloc] initWithValue:1.5];
    iconPlatterCornerRadius = v3->_iconPlatterCornerRadius;
    v3->_iconPlatterCornerRadius = v12;

    v3->_canAdjustVerticalPaddingForFixedSize = 0;
    fixedFallbackImageScale = v3->_fixedFallbackImageScale;
    v3->_fixedFallbackImageScale = &unk_1F2483560;

    v15 = v3;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPSize *)self->_fixedSize copy];
    v6 = *(v4 + 16);
    *(v4 + 16) = v5;

    v7 = [(LPSize *)self->_reducedSize copy];
    v8 = *(v4 + 40);
    *(v4 + 40) = v7;

    v9 = [(LPSize *)self->_minimumSize copy];
    v10 = *(v4 + 24);
    *(v4 + 24) = v9;

    *(v4 + 8) = self->_requireFixedSize;
    v11 = [(LPPadding *)self->_margin copy];
    v12 = *(v4 + 88);
    *(v4 + 88) = v11;

    v13 = [(LPPadding *)self->_padding copy];
    v14 = *(v4 + 96);
    *(v4 + 96) = v13;

    *(v4 + 104) = self->_scalingMode;
    *(v4 + 112) = self->_filter;
    objc_storeStrong((v4 + 168), self->_backgroundColor);
    *(v4 + 13) = self->_shouldApplyBackground;
    objc_storeStrong((v4 + 176), self->_backgroundInset);
    objc_storeStrong((v4 + 184), self->_cornerRadius);
    *(v4 + 152) = self->_opacity;
    *(v4 + 192) = self->_darkeningAmount;
    objc_storeStrong((v4 + 144), self->_maskColor);
    *(v4 + 120) = self->_verticalAlignment;
    *(v4 + 9) = self->_scalesToFitParent;
    objc_storeStrong((v4 + 136), self->_shadow);
    objc_storeStrong((v4 + 48), self->_fixedFallbackImageSize);
    objc_storeStrong((v4 + 56), self->_fixedFallbackImageWeight);
    objc_storeStrong((v4 + 64), self->_fixedFallbackImageFont);
    objc_storeStrong((v4 + 72), self->_fixedFallbackImageScale);
    objc_storeStrong((v4 + 80), self->_fixedFallbackImageFontTextStyle);
    *(v4 + 11) = self->_allowsPlatterPresentation;
    objc_storeStrong((v4 + 160), self->_iconPlatterCornerRadius);
    *(v4 + 12) = self->_canAdjustVerticalPaddingForFixedSize;
    objc_storeStrong((v4 + 128), self->_widthForUsingRegularSize);
    objc_storeStrong((v4 + 200), self->_borderWidth);
    objc_storeStrong((v4 + 208), self->_borderColor);
    v15 = v4;
  }

  return v4;
}

@end