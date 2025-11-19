@interface _PKColorPickerSimpleCrosshairView
- (_PKColorPickerSimpleCrosshairView)initWithFrame:(CGRect)a3;
- (void)configureBorderView:(id)a3;
- (void)configureShadowView:(id)a3;
- (void)layoutSubviews;
@end

@implementation _PKColorPickerSimpleCrosshairView

- (_PKColorPickerSimpleCrosshairView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = _PKColorPickerSimpleCrosshairView;
  v7 = [(_PKColorPickerSimpleCrosshairView *)&v17 initWithFrame:?];
  v8 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
  shadowView = v7->_shadowView;
  v7->_shadowView = v8;

  v10 = [(_PKColorPickerSimpleCrosshairView *)v7 shadowView];
  [(_PKColorPickerSimpleCrosshairView *)v7 configureShadowView:v10];

  v11 = [(_PKColorPickerSimpleCrosshairView *)v7 shadowView];
  [(_PKColorPickerSimpleCrosshairView *)v7 addSubview:v11];

  v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
  borderView = v7->_borderView;
  v7->_borderView = v12;

  v14 = [(_PKColorPickerSimpleCrosshairView *)v7 borderView];
  [(_PKColorPickerSimpleCrosshairView *)v7 configureBorderView:v14];

  v15 = [(_PKColorPickerSimpleCrosshairView *)v7 borderView];
  [(_PKColorPickerSimpleCrosshairView *)v7 addSubview:v15];

  [(_PKColorPickerSimpleCrosshairView *)v7 setClipsToBounds:0];
  return v7;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _PKColorPickerSimpleCrosshairView;
  [(_PKColorPickerSimpleCrosshairView *)&v5 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v3 = [(_PKColorPickerSimpleCrosshairView *)self shadowView];
  [(_PKColorPickerSimpleCrosshairView *)self configureShadowView:v3];

  v4 = [(_PKColorPickerSimpleCrosshairView *)self borderView];
  [(_PKColorPickerSimpleCrosshairView *)self configureBorderView:v4];

  [MEMORY[0x1E6979518] commit];
}

- (void)configureBorderView:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v10 = a3;
  v5 = [v4 pk_crosshairViewBorderColor];
  v6 = [v5 CGColor];
  v7 = [v10 layer];
  [v7 setBorderColor:v6];

  v8 = [v10 layer];
  [v8 setBorderWidth:2.0];

  v9 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [v9 bounds];
  [v10 setFrame:?];

  [(_PKColorPickerSimpleCrosshairView *)self _cornerRadiusForBorderView];
  [v10 _setCornerRadius:?];
}

- (void)configureShadowView:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v16 = a3;
  v5 = [v4 pk_crosshairViewShadowColor];
  v6 = [v5 colorWithAlphaComponent:0.1];
  v7 = [v6 CGColor];
  v8 = [v16 layer];
  [v8 setBorderColor:v7];

  v9 = [v16 layer];
  [v9 setBorderWidth:4.0];

  [v16 setClipsToBounds:0];
  v10 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [v10 bounds];
  v11 = CGRectGetWidth(v18) + 2.0;
  v12 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [v12 bounds];
  [v16 setFrame:{0.0, 0.0, v11, CGRectGetHeight(v19) + 2.0}];

  v13 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [v13 bounds];
  MidX = CGRectGetMidX(v20);
  v15 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [v15 bounds];
  [v16 setPosition:{MidX, CGRectGetMidY(v21)}];

  [(_PKColorPickerSimpleCrosshairView *)self _cornerRadiusForShadowView];
  [v16 _setCornerRadius:?];
  [v16 setAlpha:1.0];
}

@end