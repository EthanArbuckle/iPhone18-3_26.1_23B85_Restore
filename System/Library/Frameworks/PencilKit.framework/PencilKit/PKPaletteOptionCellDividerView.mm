@interface PKPaletteOptionCellDividerView
- (PKPaletteOptionCellDividerView)initWithFrame:(CGRect)frame;
@end

@implementation PKPaletteOptionCellDividerView

- (PKPaletteOptionCellDividerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKPaletteOptionCellDividerView;
  v3 = [(PKPaletteOptionCellDividerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(PKPaletteOptionCellDividerView *)v3 setBackgroundColor:separatorColor];

    [(PKPaletteOptionCellDividerView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end