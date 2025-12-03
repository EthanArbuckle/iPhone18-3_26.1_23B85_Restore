@interface CNAvatarCardHighlightView
- (BOOL)highlighted;
- (CNAvatarCardHighlightView)initWithFrame:(CGRect)frame;
- (UIColor)highlightColor;
- (void)_commonInit;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)setHighlightColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
@end

@implementation CNAvatarCardHighlightView

- (BOOL)highlighted
{
  highlightLayer = [(CNAvatarCardHighlightView *)self highlightLayer];
  [highlightLayer opacity];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (highlighted)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  highlightLayer = [(CNAvatarCardHighlightView *)self highlightLayer];
  *&v5 = v4;
  [highlightLayer setOpacity:v5];
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  highlightLayer = [(CNAvatarCardHighlightView *)self highlightLayer];
  [highlightLayer setBackgroundColor:cGColor];
}

- (UIColor)highlightColor
{
  v2 = MEMORY[0x1E69DC888];
  highlightLayer = [(CNAvatarCardHighlightView *)self highlightLayer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(highlightLayer, "backgroundColor")}];

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNAvatarCardHighlightView;
  [(CNAvatarCardHighlightView *)&v13 layoutSubviews];
  layer = [(CNAvatarCardHighlightView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  highlightLayer = [(CNAvatarCardHighlightView *)self highlightLayer];
  [highlightLayer setFrame:{v5, v7, v9, v11}];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = CNAvatarCardHighlightView;
  [(CNAvatarCardHighlightView *)&v3 awakeFromNib];
  [(CNAvatarCardHighlightView *)self _commonInit];
}

- (CNAvatarCardHighlightView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CNAvatarCardHighlightView;
  v3 = [(CNAvatarCardHighlightView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CNAvatarCardHighlightView *)v3 _commonInit];
  return v3;
}

- (void)_commonInit
{
  layer = [MEMORY[0x1E6979398] layer];
  [(CNAvatarCardHighlightView *)self setHighlightLayer:layer];

  layer2 = [(CNAvatarCardHighlightView *)self layer];
  highlightLayer = [(CNAvatarCardHighlightView *)self highlightLayer];
  [layer2 insertSublayer:highlightLayer atIndex:0];

  v6 = +[CNUIColorRepository navigationListCellBackgroundHighlightedColorRegular];
  [(CNAvatarCardHighlightView *)self setHighlightColor:v6];
}

@end