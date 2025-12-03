@interface _PKColorPickerSimpleCrosshairView
- (_PKColorPickerSimpleCrosshairView)initWithFrame:(CGRect)frame;
- (void)configureBorderView:(id)view;
- (void)configureShadowView:(id)view;
- (void)layoutSubviews;
@end

@implementation _PKColorPickerSimpleCrosshairView

- (_PKColorPickerSimpleCrosshairView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17.receiver = self;
  v17.super_class = _PKColorPickerSimpleCrosshairView;
  v7 = [(_PKColorPickerSimpleCrosshairView *)&v17 initWithFrame:?];
  v8 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
  shadowView = v7->_shadowView;
  v7->_shadowView = v8;

  shadowView = [(_PKColorPickerSimpleCrosshairView *)v7 shadowView];
  [(_PKColorPickerSimpleCrosshairView *)v7 configureShadowView:shadowView];

  shadowView2 = [(_PKColorPickerSimpleCrosshairView *)v7 shadowView];
  [(_PKColorPickerSimpleCrosshairView *)v7 addSubview:shadowView2];

  v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
  borderView = v7->_borderView;
  v7->_borderView = v12;

  borderView = [(_PKColorPickerSimpleCrosshairView *)v7 borderView];
  [(_PKColorPickerSimpleCrosshairView *)v7 configureBorderView:borderView];

  borderView2 = [(_PKColorPickerSimpleCrosshairView *)v7 borderView];
  [(_PKColorPickerSimpleCrosshairView *)v7 addSubview:borderView2];

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
  shadowView = [(_PKColorPickerSimpleCrosshairView *)self shadowView];
  [(_PKColorPickerSimpleCrosshairView *)self configureShadowView:shadowView];

  borderView = [(_PKColorPickerSimpleCrosshairView *)self borderView];
  [(_PKColorPickerSimpleCrosshairView *)self configureBorderView:borderView];

  [MEMORY[0x1E6979518] commit];
}

- (void)configureBorderView:(id)view
{
  v4 = MEMORY[0x1E69DC888];
  viewCopy = view;
  pk_crosshairViewBorderColor = [v4 pk_crosshairViewBorderColor];
  cGColor = [pk_crosshairViewBorderColor CGColor];
  layer = [viewCopy layer];
  [layer setBorderColor:cGColor];

  layer2 = [viewCopy layer];
  [layer2 setBorderWidth:2.0];

  layer3 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [layer3 bounds];
  [viewCopy setFrame:?];

  [(_PKColorPickerSimpleCrosshairView *)self _cornerRadiusForBorderView];
  [viewCopy _setCornerRadius:?];
}

- (void)configureShadowView:(id)view
{
  v4 = MEMORY[0x1E69DC888];
  viewCopy = view;
  pk_crosshairViewShadowColor = [v4 pk_crosshairViewShadowColor];
  v6 = [pk_crosshairViewShadowColor colorWithAlphaComponent:0.1];
  cGColor = [v6 CGColor];
  layer = [viewCopy layer];
  [layer setBorderColor:cGColor];

  layer2 = [viewCopy layer];
  [layer2 setBorderWidth:4.0];

  [viewCopy setClipsToBounds:0];
  layer3 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [layer3 bounds];
  v11 = CGRectGetWidth(v18) + 2.0;
  layer4 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [layer4 bounds];
  [viewCopy setFrame:{0.0, 0.0, v11, CGRectGetHeight(v19) + 2.0}];

  layer5 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [layer5 bounds];
  MidX = CGRectGetMidX(v20);
  layer6 = [(_PKColorPickerSimpleCrosshairView *)self layer];
  [layer6 bounds];
  [viewCopy setPosition:{MidX, CGRectGetMidY(v21)}];

  [(_PKColorPickerSimpleCrosshairView *)self _cornerRadiusForShadowView];
  [viewCopy _setCornerRadius:?];
  [viewCopy setAlpha:1.0];
}

@end