@interface PKPaletteSelectingToolView
- (PKInk)ink;
- (PKPaletteSelectingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration;
- (void)setInkAzimuth:(double)azimuth;
- (void)setInkColor:(id)color;
- (void)setInkWeight:(double)weight;
- (void)setSelected:(BOOL)selected;
@end

@implementation PKPaletteSelectingToolView

- (PKPaletteSelectingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration
{
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = PKPaletteSelectingToolView;
  v12 = [(PKPaletteToolView *)&v16 initWithToolIdentifier:identifierCopy itemIdentifier:itemIdentifierCopy variant:0 configuration:configurationCopy];
  if (v12)
  {
    v13 = [[PKPaletteInkingToolView alloc] initWithToolIdentifier:identifierCopy itemIdentifier:itemIdentifierCopy variant:0 configuration:configurationCopy];
    inkTool = v12->_inkTool;
    v12->_inkTool = v13;
  }

  return v12;
}

- (void)setSelected:(BOOL)selected
{
  v5.receiver = self;
  v5.super_class = PKPaletteSelectingToolView;
  [(PKPaletteToolView *)&v5 setSelected:selected];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(PKPaletteSelectingToolView *)self setInkColor:blackColor];
}

- (PKInk)ink
{
  inkTool = [(PKPaletteSelectingToolView *)self inkTool];
  v3 = [inkTool ink];

  return v3;
}

- (void)setInkColor:(id)color
{
  colorCopy = color;
  inkTool = [(PKPaletteSelectingToolView *)self inkTool];
  [inkTool setInkColor:colorCopy];
}

- (void)setInkWeight:(double)weight
{
  inkTool = [(PKPaletteSelectingToolView *)self inkTool];
  [inkTool setInkWeight:weight];
}

- (void)setInkAzimuth:(double)azimuth
{
  inkTool = [(PKPaletteSelectingToolView *)self inkTool];
  [inkTool setInkAzimuth:azimuth];
}

@end