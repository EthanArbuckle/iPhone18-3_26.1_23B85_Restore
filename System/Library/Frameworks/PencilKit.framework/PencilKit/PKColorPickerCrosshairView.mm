@interface PKColorPickerCrosshairView
- (PKColorPickerCrosshairView)initWithFrame:(CGRect)frame;
- (PKColorPickerCrosshairViewDelegate)delegate;
- (void)layoutSubviews;
- (void)setCornerPosition:(unint64_t)position;
- (void)update;
@end

@implementation PKColorPickerCrosshairView

- (PKColorPickerCrosshairView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v29.receiver = self;
  v29.super_class = PKColorPickerCrosshairView;
  v7 = [(PKColorPickerCrosshairView *)&v29 initWithFrame:?];
  height = [[_PKColorPickerSimpleCrosshairView alloc] initWithFrame:x, y, width, height];
  baseView = v7->_baseView;
  v7->_baseView = height;

  baseView = [(PKColorPickerCrosshairView *)v7 baseView];
  [baseView setBorderCornerRadius:0.0];

  baseView2 = [(PKColorPickerCrosshairView *)v7 baseView];
  [(PKColorPickerCrosshairView *)v7 addSubview:baseView2];

  height2 = [[_PKColorPickerCrosshairCornerMaskView alloc] initWithFrame:x, y, width, height];
  baseMaskView = v7->_baseMaskView;
  v7->_baseMaskView = height2;

  baseMaskView = [(PKColorPickerCrosshairView *)v7 baseMaskView];
  [baseMaskView setExcludeCorner:1];

  baseMaskView2 = [(PKColorPickerCrosshairView *)v7 baseMaskView];
  [baseMaskView2 setCornerPosition:1];

  baseMaskView3 = [(PKColorPickerCrosshairView *)v7 baseMaskView];
  baseView3 = [(PKColorPickerCrosshairView *)v7 baseView];
  [baseView3 setMaskView:baseMaskView3];

  height3 = [[_PKColorPickerSimpleCrosshairView alloc] initWithFrame:x, y, width, height];
  cornerEdgeView = v7->_cornerEdgeView;
  v7->_cornerEdgeView = height3;

  cornerEdgeView = [(PKColorPickerCrosshairView *)v7 cornerEdgeView];
  [cornerEdgeView setBorderCornerRadius:8.0];

  cornerEdgeView2 = [(PKColorPickerCrosshairView *)v7 cornerEdgeView];
  [(PKColorPickerCrosshairView *)v7 addSubview:cornerEdgeView2];

  height4 = [[_PKColorPickerCrosshairCornerMaskView alloc] initWithFrame:x, y, width, height];
  cornerEdgeMaskView = v7->_cornerEdgeMaskView;
  v7->_cornerEdgeMaskView = height4;

  cornerEdgeMaskView = [(PKColorPickerCrosshairView *)v7 cornerEdgeMaskView];
  [cornerEdgeMaskView setExcludeCorner:0];

  cornerEdgeMaskView2 = [(PKColorPickerCrosshairView *)v7 cornerEdgeMaskView];
  [cornerEdgeMaskView2 setCornerPosition:1];

  cornerEdgeMaskView3 = [(PKColorPickerCrosshairView *)v7 cornerEdgeMaskView];
  cornerEdgeView3 = [(PKColorPickerCrosshairView *)v7 cornerEdgeView];
  [cornerEdgeView3 setMaskView:cornerEdgeMaskView3];

  [(PKColorPickerCrosshairView *)v7 setClipsToBounds:0];
  [(PKColorPickerCrosshairView *)v7 setUserInteractionEnabled:0];
  return v7;
}

- (void)setCornerPosition:(unint64_t)position
{
  if (self->_cornerPosition != position)
  {
    self->_cornerPosition = position;
    baseMaskView = [(PKColorPickerCrosshairView *)self baseMaskView];
    [baseMaskView setCornerPosition:position];

    cornerEdgeMaskView = [(PKColorPickerCrosshairView *)self cornerEdgeMaskView];
    [cornerEdgeMaskView setCornerPosition:position];
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
  baseView = [(PKColorPickerCrosshairView *)self baseView];
  [baseView setFrame:{v4, v6, v8, v10}];

  [(PKColorPickerCrosshairView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  cornerEdgeView = [(PKColorPickerCrosshairView *)self cornerEdgeView];
  [cornerEdgeView setFrame:{v13, v15, v17, v19}];

  baseView2 = [(PKColorPickerCrosshairView *)self baseView];
  [baseView2 bounds];
  v37 = CGRectInset(v36, -4.0, -4.0);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  baseMaskView = [(PKColorPickerCrosshairView *)self baseMaskView];
  [baseMaskView setFrame:{x, y, width, height}];

  cornerEdgeView2 = [(PKColorPickerCrosshairView *)self cornerEdgeView];
  [cornerEdgeView2 bounds];
  v39 = CGRectInset(v38, -4.0, -4.0);
  v28 = v39.origin.x;
  v29 = v39.origin.y;
  v30 = v39.size.width;
  v31 = v39.size.height;
  cornerEdgeMaskView = [(PKColorPickerCrosshairView *)self cornerEdgeMaskView];
  [cornerEdgeMaskView setFrame:{v28, v29, v30, v31}];

  delegate = [(PKColorPickerCrosshairView *)self delegate];
  v34 = [delegate cornerPositionForColorPickerCrosshairView:self];

  [(PKColorPickerCrosshairView *)self setCornerPosition:v34];
}

- (void)update
{
  delegate = [(PKColorPickerCrosshairView *)self delegate];
  [delegate frameForColorPickerCrosshairView:self];
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