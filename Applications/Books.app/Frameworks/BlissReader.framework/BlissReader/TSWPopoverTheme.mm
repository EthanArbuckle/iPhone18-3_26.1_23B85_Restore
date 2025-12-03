@interface TSWPopoverTheme
- (CGSize)popoverShadowOffset;
- (TSWPopoverTheme)init;
- (UIEdgeInsets)popoverContentInsets;
- (UIEdgeInsets)popoverFadeInsets;
- (UIEdgeInsets)popoverFadeSizes;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)scaleWithFactor:(double)factor;
@end

@implementation TSWPopoverTheme

- (TSWPopoverTheme)init
{
  v4.receiver = self;
  v4.super_class = TSWPopoverTheme;
  v2 = [(TSWPopoverTheme *)&v4 init];
  if (v2)
  {
    [(TSWPopoverTheme *)v2 setPopoverBackgroundColor:+[TSUColor lightGrayColor]];
    [(TSWPopoverTheme *)v2 setPopoverHasGradientBackground:0];
    [(TSWPopoverTheme *)v2 setPopoverStroke:+[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", +[TSUColor grayColor], 1.0)];
    [(TSWPopoverTheme *)v2 setPopoverCornerRadius:8.0];
    [(TSWPopoverTheme *)v2 setPopoverContentInsets:8.0, 12.0, 8.0, 12.0];
    [(TSWPopoverTheme *)v2 setPopoverFadeInsets:TSDEdgeInsetsZero[0].f64[0], TSDEdgeInsetsZero[0].f64[1], TSDEdgeInsetsZero[1].f64[0], TSDEdgeInsetsZero[1].f64[1]];
    [(TSWPopoverTheme *)v2 setPopoverFadeSizes:4.0, 0.0, 4.0, 0.0];
    [(TSWPopoverTheme *)v2 setPopoverShadowColor:+[TSUColor blackColor]];
    [(TSWPopoverTheme *)v2 setPopoverShadowOffset:0.0, 10.0];
    [(TSWPopoverTheme *)v2 setPopoverShadowRadius:25.0];
    [(TSWPopoverTheme *)v2 setPopoverShadowOpacity:0.5];
    [(TSWPopoverTheme *)v2 setPresentationMode:TSUPhoneUI()];
  }

  return v2;
}

- (void)dealloc
{
  [(TSWPopoverTheme *)self setPopoverBackgroundColor:0];
  [(TSWPopoverTheme *)self setPopoverStroke:0];
  [(TSWPopoverTheme *)self setPopoverShadowColor:0];
  v3.receiver = self;
  v3.super_class = TSWPopoverTheme;
  [(TSWPopoverTheme *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(TSWPopoverTheme);
  [(TSWPopoverTheme *)v5 setPopoverHasGradientBackground:[(TSWPopoverTheme *)self popoverHasGradientBackground]];
  [(TSWPopoverTheme *)self popoverCornerRadius];
  [(TSWPopoverTheme *)v5 setPopoverCornerRadius:?];
  [(TSWPopoverTheme *)self popoverContentInsets];
  [(TSWPopoverTheme *)v5 setPopoverContentInsets:?];
  [(TSWPopoverTheme *)self popoverFadeInsets];
  [(TSWPopoverTheme *)v5 setPopoverFadeInsets:?];
  [(TSWPopoverTheme *)self popoverFadeSizes];
  [(TSWPopoverTheme *)v5 setPopoverFadeSizes:?];
  [(TSWPopoverTheme *)self popoverShadowOffset];
  [(TSWPopoverTheme *)v5 setPopoverShadowOffset:?];
  [(TSWPopoverTheme *)self popoverShadowRadius];
  [(TSWPopoverTheme *)v5 setPopoverShadowRadius:?];
  [(TSWPopoverTheme *)self popoverShadowOpacity];
  [(TSWPopoverTheme *)v5 setPopoverShadowOpacity:?];
  [(TSWPopoverTheme *)v5 setPresentationMode:[(TSWPopoverTheme *)self presentationMode]];
  [(TSWPopoverTheme *)v5 setPopoverBackgroundColor:[(TSUColor *)[(TSWPopoverTheme *)self popoverBackgroundColor] copy]];
  [(TSWPopoverTheme *)v5 setPopoverStroke:[(TSDStroke *)[(TSWPopoverTheme *)self popoverStroke] mutableCopyWithZone:zone]];
  [(TSWPopoverTheme *)v5 setPopoverShadowColor:[(TSUColor *)[(TSWPopoverTheme *)self popoverShadowColor] copy]];
  return v5;
}

- (void)scaleWithFactor:(double)factor
{
  self->_popoverCornerRadius = self->_popoverCornerRadius * factor;
  v4 = vmulq_n_f64(*&self->_popoverFadeInsets.top, factor);
  *&self->_popoverContentInsets.bottom = vmulq_n_f64(*&self->_popoverContentInsets.bottom, factor);
  *&self->_popoverFadeInsets.top = v4;
  v5 = vmulq_n_f64(*&self->_popoverFadeSizes.top, factor);
  *&self->_popoverFadeInsets.bottom = vmulq_n_f64(*&self->_popoverFadeInsets.bottom, factor);
  *&self->_popoverFadeSizes.top = v5;
  *&self->_popoverFadeSizes.bottom = vmulq_n_f64(*&self->_popoverFadeSizes.bottom, factor);
  v6 = vmulq_n_f64(*&self->_popoverContentInsets.top, factor);
  self->_popoverShadowOffset = vmulq_n_f64(self->_popoverShadowOffset, factor);
  *&self->_popoverContentInsets.top = v6;
  self->_popoverShadowRadius = self->_popoverShadowRadius * factor;
  v7 = [(TSDStroke *)[(TSWPopoverTheme *)self popoverStroke] mutableCopy];
  [v7 width];
  [v7 setWidth:v8 * factor];
  [v7 miterLimit];
  [v7 setMiterLimit:v9 * factor];

  [(TSWPopoverTheme *)self setPopoverStroke:v7];
}

- (UIEdgeInsets)popoverContentInsets
{
  top = self->_popoverContentInsets.top;
  left = self->_popoverContentInsets.left;
  bottom = self->_popoverContentInsets.bottom;
  right = self->_popoverContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)popoverFadeInsets
{
  top = self->_popoverFadeInsets.top;
  left = self->_popoverFadeInsets.left;
  bottom = self->_popoverFadeInsets.bottom;
  right = self->_popoverFadeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)popoverFadeSizes
{
  top = self->_popoverFadeSizes.top;
  left = self->_popoverFadeSizes.left;
  bottom = self->_popoverFadeSizes.bottom;
  right = self->_popoverFadeSizes.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)popoverShadowOffset
{
  width = self->_popoverShadowOffset.width;
  height = self->_popoverShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end