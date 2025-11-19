@interface PKPaletteOptionCell
- (PKPaletteOptionCell)init;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
@end

@implementation PKPaletteOptionCell

- (PKPaletteOptionCell)init
{
  v5.receiver = self;
  v5.super_class = PKPaletteOptionCell;
  v2 = [(PKPaletteOptionCell *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v2];
    [(PKPaletteOptionCell *)v2 addInteraction:v3];
  }

  return v2;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = MEMORY[0x1E69DCDC0];
  [(PKPaletteOptionCell *)self bounds:a3];

  return [v5 regionWithRect:0 identifier:?];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v5 = [MEMORY[0x1E69DCDA8] effectWithPreview:v4];
  [v5 setPreferredTintMode:2];
  [v5 setPrefersScaledContent:0];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

@end