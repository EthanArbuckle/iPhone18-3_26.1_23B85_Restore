@interface NTKParmesanSwatchTimeLabel
- (NTKParmesanSwatchTimeLabel)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForSwatchWithLayout:(id)a3 typeface:(int64_t)a4 complicationVisibility:(unint64_t)a5 palette:(id)a6 numerals:(unint64_t)a7 device:(id)a8;
@end

@implementation NTKParmesanSwatchTimeLabel

- (NTKParmesanSwatchTimeLabel)initWithCoder:(id)a3
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
  v2 = self;
  sub_23BFC2240();
}

- (void)prepareForSwatchWithLayout:(id)a3 typeface:(int64_t)a4 complicationVisibility:(unint64_t)a5 palette:(id)a6 numerals:(unint64_t)a7 device:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = self;
  sub_23BFC2654(v14, a4, a5, a7, v16);
}

@end