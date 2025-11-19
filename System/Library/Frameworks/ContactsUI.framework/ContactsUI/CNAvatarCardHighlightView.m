@interface CNAvatarCardHighlightView
- (BOOL)highlighted;
- (CNAvatarCardHighlightView)initWithFrame:(CGRect)a3;
- (UIColor)highlightColor;
- (void)_commonInit;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)setHighlightColor:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CNAvatarCardHighlightView

- (BOOL)highlighted
{
  v2 = [(CNAvatarCardHighlightView *)self highlightLayer];
  [v2 opacity];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v6 = [(CNAvatarCardHighlightView *)self highlightLayer];
  *&v5 = v4;
  [v6 setOpacity:v5];
}

- (void)setHighlightColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [(CNAvatarCardHighlightView *)self highlightLayer];
  [v7 setBackgroundColor:v6];
}

- (UIColor)highlightColor
{
  v2 = MEMORY[0x1E69DC888];
  v3 = [(CNAvatarCardHighlightView *)self highlightLayer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "backgroundColor")}];

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNAvatarCardHighlightView;
  [(CNAvatarCardHighlightView *)&v13 layoutSubviews];
  v3 = [(CNAvatarCardHighlightView *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CNAvatarCardHighlightView *)self highlightLayer];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = CNAvatarCardHighlightView;
  [(CNAvatarCardHighlightView *)&v3 awakeFromNib];
  [(CNAvatarCardHighlightView *)self _commonInit];
}

- (CNAvatarCardHighlightView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CNAvatarCardHighlightView;
  v3 = [(CNAvatarCardHighlightView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CNAvatarCardHighlightView *)v3 _commonInit];
  return v3;
}

- (void)_commonInit
{
  v3 = [MEMORY[0x1E6979398] layer];
  [(CNAvatarCardHighlightView *)self setHighlightLayer:v3];

  v4 = [(CNAvatarCardHighlightView *)self layer];
  v5 = [(CNAvatarCardHighlightView *)self highlightLayer];
  [v4 insertSublayer:v5 atIndex:0];

  v6 = +[CNUIColorRepository navigationListCellBackgroundHighlightedColorRegular];
  [(CNAvatarCardHighlightView *)self setHighlightColor:v6];
}

@end