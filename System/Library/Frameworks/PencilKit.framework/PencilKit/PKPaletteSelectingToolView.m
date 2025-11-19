@interface PKPaletteSelectingToolView
- (PKInk)ink;
- (PKPaletteSelectingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6;
- (void)setInkAzimuth:(double)a3;
- (void)setInkColor:(id)a3;
- (void)setInkWeight:(double)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PKPaletteSelectingToolView

- (PKPaletteSelectingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = PKPaletteSelectingToolView;
  v12 = [(PKPaletteToolView *)&v16 initWithToolIdentifier:v9 itemIdentifier:v10 variant:0 configuration:v11];
  if (v12)
  {
    v13 = [[PKPaletteInkingToolView alloc] initWithToolIdentifier:v9 itemIdentifier:v10 variant:0 configuration:v11];
    inkTool = v12->_inkTool;
    v12->_inkTool = v13;
  }

  return v12;
}

- (void)setSelected:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPaletteSelectingToolView;
  [(PKPaletteToolView *)&v5 setSelected:a3];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [(PKPaletteSelectingToolView *)self setInkColor:v4];
}

- (PKInk)ink
{
  v2 = [(PKPaletteSelectingToolView *)self inkTool];
  v3 = [v2 ink];

  return v3;
}

- (void)setInkColor:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteSelectingToolView *)self inkTool];
  [v5 setInkColor:v4];
}

- (void)setInkWeight:(double)a3
{
  v4 = [(PKPaletteSelectingToolView *)self inkTool];
  [v4 setInkWeight:a3];
}

- (void)setInkAzimuth:(double)a3
{
  v4 = [(PKPaletteSelectingToolView *)self inkTool];
  [v4 setInkAzimuth:a3];
}

@end