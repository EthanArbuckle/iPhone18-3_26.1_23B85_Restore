@interface NTKParmesanSwatchTimeLabel
- (NTKParmesanSwatchTimeLabel)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForSwatchWithLayout:(id)layout typeface:(int64_t)typeface complicationVisibility:(unint64_t)visibility palette:(id)palette numerals:(unint64_t)numerals device:(id)device;
@end

@implementation NTKParmesanSwatchTimeLabel

- (NTKParmesanSwatchTimeLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanSwatchTimeLabel_alignment) = 0;
  v3 = self + OBJC_IVAR___NTKParmesanSwatchTimeLabel_timeRect;
  *v3 = 0;
  *(v3 + 1) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v3 + 1) = _Q0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23BFC2240();
}

- (void)prepareForSwatchWithLayout:(id)layout typeface:(int64_t)typeface complicationVisibility:(unint64_t)visibility palette:(id)palette numerals:(unint64_t)numerals device:(id)device
{
  layoutCopy = layout;
  paletteCopy = palette;
  deviceCopy = device;
  selfCopy = self;
  sub_23BFC2654(layoutCopy, typeface, visibility, numerals, deviceCopy);
}

@end