@interface PKPaletteOptionCellDividerView
- (PKPaletteOptionCellDividerView)initWithFrame:(CGRect)a3;
@end

@implementation PKPaletteOptionCellDividerView

- (PKPaletteOptionCellDividerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKPaletteOptionCellDividerView;
  v3 = [(PKPaletteOptionCellDividerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] separatorColor];
    [(PKPaletteOptionCellDividerView *)v3 setBackgroundColor:v4];

    [(PKPaletteOptionCellDividerView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end