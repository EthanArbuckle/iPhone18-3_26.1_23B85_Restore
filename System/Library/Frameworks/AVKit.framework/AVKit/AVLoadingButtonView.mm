@interface AVLoadingButtonView
- (AVLoadingButtonView)initWithTitle:(id)title;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (void)_updateLayoutItem;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setExtrinsicContentSize:(CGSize)size;
- (void)setHasAlternateAppearance:(BOOL)appearance;
- (void)setHasFullScreenAppearance:(BOOL)appearance;
- (void)setIncluded:(BOOL)included;
- (void)setRemoved:(BOOL)removed;
- (void)setShowsLoadingIndicator:(BOOL)indicator;
@end

@implementation AVLoadingButtonView

- (void)_updateLayoutItem
{
  layoutAttributes = [(AVLoadingButtonView *)self layoutAttributes];
  [(AVLoadingButtonView *)self intrinsicContentSize];
  [layoutAttributes setMinimumSize:?];

  layoutAttributes2 = [(AVLoadingButtonView *)self layoutAttributes];
  if ([(AVLoadingButtonView *)self isIncluded])
  {
    v5 = [(AVLoadingButtonView *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [layoutAttributes2 setIncluded:v5];

  layoutAttributes3 = [(AVLoadingButtonView *)self layoutAttributes];
  [layoutAttributes3 setCollapsed:{-[AVLoadingButtonView isCollapsed](self, "isCollapsed")}];
}

- (void)layoutAttributesDidChange
{
  layoutAttributes = [(AVLoadingButtonView *)self layoutAttributes];
  -[AVLoadingButtonView setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
}

- (void)setHasAlternateAppearance:(BOOL)appearance
{
  if (self->_hasAlternateAppearance != appearance)
  {
    appearanceCopy = appearance;
    self->_hasAlternateAppearance = appearance;
    button = [(AVLoadingButtonView *)self button];
    [button setHasAlternateAppearance:appearanceCopy];
  }
}

- (void)setHasFullScreenAppearance:(BOOL)appearance
{
  if (self->_hasFullScreenAppearance != appearance)
  {
    appearanceCopy = appearance;
    self->_hasFullScreenAppearance = appearance;
    button = [(AVLoadingButtonView *)self button];
    [button setHasFullScreenAppearance:appearanceCopy];
  }
}

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVLoadingButtonView *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(AVLoadingButtonView *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
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
  button = [(AVLoadingButtonView *)self button];
  [button extrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  button = [(AVLoadingButtonView *)self button];
  [button setExtrinsicContentSize:{width, height}];

  [(AVLoadingButtonView *)self _updateLayoutItem];
}

- (CGSize)intrinsicContentSize
{
  button = [(AVLoadingButtonView *)self button];
  [button intrinsicContentSize];
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
  loadingIndicator = [(AVLoadingButtonView *)self loadingIndicator];
  [loadingIndicator setCenter:{v4, v6}];

  [(AVLoadingButtonView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  button = [(AVLoadingButtonView *)self button];
  [button setFrame:{v9, v11, v13, v15}];
}

- (void)setShowsLoadingIndicator:(BOOL)indicator
{
  if (self->_showsLoadingIndicator != indicator)
  {
    indicatorCopy = indicator;
    self->_showsLoadingIndicator = indicator;
    button = [(AVLoadingButtonView *)self button];
    v7 = button;
    if (indicatorCopy)
    {
      [button setHidden:1];

      loadingIndicator = [(AVLoadingButtonView *)self loadingIndicator];
      [loadingIndicator startAnimating];
    }

    else
    {
      [button setHidden:0];

      loadingIndicator = [(AVLoadingButtonView *)self loadingIndicator];
      [loadingIndicator stopAnimating];
    }
  }
}

- (AVLoadingButtonView)initWithTitle:(id)title
{
  titleCopy = title;
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
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIActivityIndicatorView *)v9 setColor:blackColor];

    v11 = [AVButton buttonWithAccessibilityIdentifier:titleCopy isFirstGeneration:1];
    button = v6->_button;
    v6->_button = v11;

    [(AVButton *)v6->_button setAccessibilityLabel:titleCopy];
    [(AVButton *)v6->_button setTitle:titleCopy forState:0];
    titleLabel = [(AVButton *)v6->_button titleLabel];
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    [titleLabel setFont:v14];

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
    accessibilityIdentifier = [(AVButton *)v6->_button accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v18 setAccessibilityIdentifier:accessibilityIdentifier];

    [(AVLoadingButtonView *)v6 addSubview:v6->_loadingIndicator];
    [(AVLoadingButtonView *)v6 addSubview:v6->_button];
  }

  return v6;
}

@end