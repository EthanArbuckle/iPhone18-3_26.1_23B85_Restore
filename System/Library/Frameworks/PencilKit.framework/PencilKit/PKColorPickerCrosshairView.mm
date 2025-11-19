@interface PKColorPickerCrosshairView
- (PKColorPickerCrosshairView)initWithFrame:(CGRect)a3;
- (PKColorPickerCrosshairViewDelegate)delegate;
- (void)layoutSubviews;
- (void)setCornerPosition:(unint64_t)a3;
- (void)update;
@end

@implementation PKColorPickerCrosshairView

- (PKColorPickerCrosshairView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29.receiver = self;
  v29.super_class = PKColorPickerCrosshairView;
  v7 = [(PKColorPickerCrosshairView *)&v29 initWithFrame:?];
  v8 = [[_PKColorPickerSimpleCrosshairView alloc] initWithFrame:x, y, width, height];
  baseView = v7->_baseView;
  v7->_baseView = v8;

  v10 = [(PKColorPickerCrosshairView *)v7 baseView];
  [v10 setBorderCornerRadius:0.0];

  v11 = [(PKColorPickerCrosshairView *)v7 baseView];
  [(PKColorPickerCrosshairView *)v7 addSubview:v11];

  v12 = [[_PKColorPickerCrosshairCornerMaskView alloc] initWithFrame:x, y, width, height];
  baseMaskView = v7->_baseMaskView;
  v7->_baseMaskView = v12;

  v14 = [(PKColorPickerCrosshairView *)v7 baseMaskView];
  [v14 setExcludeCorner:1];

  v15 = [(PKColorPickerCrosshairView *)v7 baseMaskView];
  [v15 setCornerPosition:1];

  v16 = [(PKColorPickerCrosshairView *)v7 baseMaskView];
  v17 = [(PKColorPickerCrosshairView *)v7 baseView];
  [v17 setMaskView:v16];

  v18 = [[_PKColorPickerSimpleCrosshairView alloc] initWithFrame:x, y, width, height];
  cornerEdgeView = v7->_cornerEdgeView;
  v7->_cornerEdgeView = v18;

  v20 = [(PKColorPickerCrosshairView *)v7 cornerEdgeView];
  [v20 setBorderCornerRadius:8.0];

  v21 = [(PKColorPickerCrosshairView *)v7 cornerEdgeView];
  [(PKColorPickerCrosshairView *)v7 addSubview:v21];

  v22 = [[_PKColorPickerCrosshairCornerMaskView alloc] initWithFrame:x, y, width, height];
  cornerEdgeMaskView = v7->_cornerEdgeMaskView;
  v7->_cornerEdgeMaskView = v22;

  v24 = [(PKColorPickerCrosshairView *)v7 cornerEdgeMaskView];
  [v24 setExcludeCorner:0];

  v25 = [(PKColorPickerCrosshairView *)v7 cornerEdgeMaskView];
  [v25 setCornerPosition:1];

  v26 = [(PKColorPickerCrosshairView *)v7 cornerEdgeMaskView];
  v27 = [(PKColorPickerCrosshairView *)v7 cornerEdgeView];
  [v27 setMaskView:v26];

  [(PKColorPickerCrosshairView *)v7 setClipsToBounds:0];
  [(PKColorPickerCrosshairView *)v7 setUserInteractionEnabled:0];
  return v7;
}

- (void)setCornerPosition:(unint64_t)a3
{
  if (self->_cornerPosition != a3)
  {
    self->_cornerPosition = a3;
    v6 = [(PKColorPickerCrosshairView *)self baseMaskView];
    [v6 setCornerPosition:a3];

    v7 = [(PKColorPickerCrosshairView *)self cornerEdgeMaskView];
    [v7 setCornerPosition:a3];
  }
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = PKColorPickerCrosshairView;
  [(PKColorPickerCrosshairView *)&v35 layoutSubviews];
  [(PKColorPickerCrosshairView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKColorPickerCrosshairView *)self baseView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PKColorPickerCrosshairView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PKColorPickerCrosshairView *)self cornerEdgeView];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [(PKColorPickerCrosshairView *)self baseView];
  [v21 bounds];
  v37 = CGRectInset(v36, -4.0, -4.0);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v26 = [(PKColorPickerCrosshairView *)self baseMaskView];
  [v26 setFrame:{x, y, width, height}];

  v27 = [(PKColorPickerCrosshairView *)self cornerEdgeView];
  [v27 bounds];
  v39 = CGRectInset(v38, -4.0, -4.0);
  v28 = v39.origin.x;
  v29 = v39.origin.y;
  v30 = v39.size.width;
  v31 = v39.size.height;
  v32 = [(PKColorPickerCrosshairView *)self cornerEdgeMaskView];
  [v32 setFrame:{v28, v29, v30, v31}];

  v33 = [(PKColorPickerCrosshairView *)self delegate];
  v34 = [v33 cornerPositionForColorPickerCrosshairView:self];

  [(PKColorPickerCrosshairView *)self setCornerPosition:v34];
}

- (void)update
{
  v3 = [(PKColorPickerCrosshairView *)self delegate];
  [v3 frameForColorPickerCrosshairView:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKColorPickerCrosshairView *)self setFrame:v5, v7, v9, v11];
  [(PKColorPickerCrosshairView *)self setNeedsLayout];

  [(PKColorPickerCrosshairView *)self layoutIfNeeded];
}

- (PKColorPickerCrosshairViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end