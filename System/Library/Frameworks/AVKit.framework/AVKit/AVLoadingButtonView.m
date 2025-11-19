@interface AVLoadingButtonView
- (AVLoadingButtonView)initWithTitle:(id)a3;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (void)_updateLayoutItem;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)setCollapsed:(BOOL)a3;
- (void)setExtrinsicContentSize:(CGSize)a3;
- (void)setHasAlternateAppearance:(BOOL)a3;
- (void)setHasFullScreenAppearance:(BOOL)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setRemoved:(BOOL)a3;
- (void)setShowsLoadingIndicator:(BOOL)a3;
@end

@implementation AVLoadingButtonView

- (void)_updateLayoutItem
{
  v3 = [(AVLoadingButtonView *)self layoutAttributes];
  [(AVLoadingButtonView *)self intrinsicContentSize];
  [v3 setMinimumSize:?];

  v4 = [(AVLoadingButtonView *)self layoutAttributes];
  if ([(AVLoadingButtonView *)self isIncluded])
  {
    v5 = [(AVLoadingButtonView *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setIncluded:v5];

  v6 = [(AVLoadingButtonView *)self layoutAttributes];
  [v6 setCollapsed:{-[AVLoadingButtonView isCollapsed](self, "isCollapsed")}];
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVLoadingButtonView *)self layoutAttributes];
  -[AVLoadingButtonView setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (void)setHasAlternateAppearance:(BOOL)a3
{
  if (self->_hasAlternateAppearance != a3)
  {
    v4 = a3;
    self->_hasAlternateAppearance = a3;
    v5 = [(AVLoadingButtonView *)self button];
    [v5 setHasAlternateAppearance:v4];
  }
}

- (void)setHasFullScreenAppearance:(BOOL)a3
{
  if (self->_hasFullScreenAppearance != a3)
  {
    v4 = a3;
    self->_hasFullScreenAppearance = a3;
    v5 = [(AVLoadingButtonView *)self button];
    [v5 setHasFullScreenAppearance:v4];
  }
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    self->_removed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVLoadingButtonView *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(AVLoadingButtonView *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(AVLoadingButtonView *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVLoadingButtonView *)self isCollapsed]|| ![(AVLoadingButtonView *)self isIncluded])
  {
    return 1;
  }

  return [(AVLoadingButtonView *)self isRemoved];
}

- (CGSize)extrinsicContentSize
{
  v2 = [(AVLoadingButtonView *)self button];
  [v2 extrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(AVLoadingButtonView *)self button];
  [v6 setExtrinsicContentSize:{width, height}];

  [(AVLoadingButtonView *)self _updateLayoutItem];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(AVLoadingButtonView *)self button];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = AVLoadingButtonView;
  [(AVLoadingButtonView *)&v17 layoutSubviews];
  [(AVLoadingButtonView *)self center];
  v4 = v3;
  v6 = v5;
  v7 = [(AVLoadingButtonView *)self loadingIndicator];
  [v7 setCenter:{v4, v6}];

  [(AVLoadingButtonView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(AVLoadingButtonView *)self button];
  [v16 setFrame:{v9, v11, v13, v15}];
}

- (void)setShowsLoadingIndicator:(BOOL)a3
{
  if (self->_showsLoadingIndicator != a3)
  {
    v4 = a3;
    self->_showsLoadingIndicator = a3;
    v6 = [(AVLoadingButtonView *)self button];
    v7 = v6;
    if (v4)
    {
      [v6 setHidden:1];

      v8 = [(AVLoadingButtonView *)self loadingIndicator];
      [v8 startAnimating];
    }

    else
    {
      [v6 setHidden:0];

      v8 = [(AVLoadingButtonView *)self loadingIndicator];
      [v8 stopAnimating];
    }
  }
}

- (AVLoadingButtonView)initWithTitle:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AVLoadingButtonView;
  v5 = [(AVLoadingButtonView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(AVLoadingButtonView *)v5 setUserInteractionEnabled:1];
    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    loadingIndicator = v6->_loadingIndicator;
    v6->_loadingIndicator = v7;

    v9 = v6->_loadingIndicator;
    v10 = [MEMORY[0x1E69DC888] blackColor];
    [(UIActivityIndicatorView *)v9 setColor:v10];

    v11 = [AVButton buttonWithAccessibilityIdentifier:v4 isFirstGeneration:1];
    button = v6->_button;
    v6->_button = v11;

    [(AVButton *)v6->_button setAccessibilityLabel:v4];
    [(AVButton *)v6->_button setTitle:v4 forState:0];
    v13 = [(AVButton *)v6->_button titleLabel];
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    [v13 setFont:v14];

    v6->_included = 1;
    v6->_showsLoadingIndicator = 0;
    v15 = objc_alloc_init(AVLayoutItemAttributes);
    layoutAttributes = v6->_layoutAttributes;
    v6->_layoutAttributes = v15;

    v17 = v6->_layoutAttributes;
    [(AVLoadingButtonView *)v6 intrinsicContentSize];
    [(AVLayoutItemAttributes *)v17 setMinimumSize:?];
    [(AVLayoutItemAttributes *)v6->_layoutAttributes setCollapsed:[(AVLoadingButtonView *)v6 isCollapsed]];
    [(AVLayoutItemAttributes *)v6->_layoutAttributes setIncluded:[(AVLoadingButtonView *)v6 isIncluded]];
    [(AVLayoutItemAttributes *)v6->_layoutAttributes setHasFlexibleContentSize:0];
    v18 = v6->_layoutAttributes;
    v19 = [(AVButton *)v6->_button accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v18 setAccessibilityIdentifier:v19];

    [(AVLoadingButtonView *)v6 addSubview:v6->_loadingIndicator];
    [(AVLoadingButtonView *)v6 addSubview:v6->_button];
  }

  return v6;
}

@end