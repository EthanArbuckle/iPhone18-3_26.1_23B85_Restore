@interface SidebarOutlineCell
- (SidebarOutlineCell)initWithFrame:(CGRect)frame;
- (SidebarOutlineCellHoverSource)hoverSource;
- (int64_t)_currentBackgroundColorMode;
- (void)_maps_addDisclosureIndicator;
- (void)_updateBackgroundGrouping;
- (void)_updateBackgroundStyle;
- (void)_updateForegroundColors;
- (void)_updateHoverStateIfNeeded;
- (void)applyLayoutAttributes:(id)attributes;
- (void)setBackgroundModel:(id)model;
- (void)setHoverSource:(id)source;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundStyle;
@end

@implementation SidebarOutlineCell

- (void)_maps_addDisclosureIndicator
{
  v3 = [[_UICellAccessoryConfigurationOutlineDisclosure alloc] initWithCellSelectionTogglesExpansionState:0];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:15.0];
  v5 = [UIImage systemImageNamed:@"chevron.forward.circle.fill" withConfiguration:v4];
  [v3 setImage:v5];

  if ([(SidebarOutlineCell *)self isHovering])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v6 = ;
  [v3 setTintColor:v6];

  v8 = v3;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [(SidebarOutlineCell *)self setTrailingAccessoryConfigurations:v7];
}

- (SidebarOutlineCellHoverSource)hoverSource
{
  WeakRetained = objc_loadWeakRetained(&self->_hoverSource);

  return WeakRetained;
}

- (void)_updateHoverStateIfNeeded
{
  hoverSource = [(SidebarOutlineCell *)self hoverSource];
  hoverGestureRecognizer = [hoverSource hoverGestureRecognizer];

  hoverSource2 = [(SidebarOutlineCell *)self hoverSource];
  hoverScrollView = [hoverSource2 hoverScrollView];
  if ([hoverScrollView isDragging])
  {
    isDecelerating = 1;
  }

  else
  {
    hoverSource3 = [(SidebarOutlineCell *)self hoverSource];
    hoverScrollView2 = [hoverSource3 hoverScrollView];
    isDecelerating = [hoverScrollView2 isDecelerating];
  }

  if (![hoverGestureRecognizer _maps_isHovering] || isDecelerating)
  {
    if (![(SidebarOutlineCell *)self isHovering])
    {
      goto LABEL_11;
    }

    v19 = 0;
    goto LABEL_10;
  }

  [(SidebarOutlineCell *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [hoverGestureRecognizer locationInView:self];
  v22.x = v17;
  v22.y = v18;
  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  v19 = CGRectContainsPoint(v23, v22);
  if (v19 != [(SidebarOutlineCell *)self isHovering])
  {
LABEL_10:
    [(SidebarOutlineCell *)self setHovering:v19];
  }

LABEL_11:
}

- (void)setHoverSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_hoverSource);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_hoverSource);
    hoverChangeObservers = [v5 hoverChangeObservers];
    [hoverChangeObservers unregisterObserver:self];

    v7 = objc_storeWeak(&self->_hoverSource, obj);
    hoverChangeObservers2 = [obj hoverChangeObservers];
    [hoverChangeObservers2 registerObserver:self];

    [(SidebarOutlineCell *)self _updateHoverStateIfNeeded];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = SidebarOutlineCell;
  [(SidebarOutlineCell *)&v4 applyLayoutAttributes:attributes];
  [(SidebarOutlineCell *)self _updateHoverStateIfNeeded];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = SidebarOutlineCell;
  changeCopy = change;
  [(MapsThemeCollectionViewOutlineCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(SidebarOutlineCell *)self traitCollection:v8.receiver];
  activeAppearance = [v5 activeAppearance];
  activeAppearance2 = [changeCopy activeAppearance];

  if (activeAppearance != activeAppearance2)
  {
    [(SidebarOutlineCell *)self _updateBackgroundStyle];
  }
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SidebarOutlineCell;
  [(SidebarOutlineCell *)&v4 setSelected:selected];
  [(SidebarOutlineCell *)self _updateBackgroundStyle];
}

- (void)_updateForegroundColors
{
  _useLightForegroundColors = [(SidebarOutlineCell *)self _useLightForegroundColors];
  if (self->_useLightForegroundColors != _useLightForegroundColors)
  {

    [(SidebarOutlineCell *)self setUseLightForegroundColors:_useLightForegroundColors];
  }
}

- (void)_updateBackgroundGrouping
{
  grouping = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel grouping];
  if ((grouping - 1) >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = grouping;
  }

  [(SidebarOutlineCell *)self _setBackgroundViewConfigurationGrouping:v4];
}

- (int64_t)_currentBackgroundColorMode
{
  result = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel dropStyle];
  if (result != 1)
  {
    if (result == 2)
    {
      return 8;
    }

    else
    {
      traitCollection = [(SidebarOutlineCell *)self traitCollection];
      activeAppearance = [traitCollection activeAppearance];

      collectionViewFocused = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel collectionViewFocused];
      collectionViewProxyFocused = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel collectionViewProxyFocused];
      collectionViewHasDropSession = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel collectionViewHasDropSession];
      v9 = (activeAppearance != 1) & ~collectionViewProxyFocused;
      if (collectionViewHasDropSession)
      {
        v9 = 1;
      }

      if ((collectionViewFocused | collectionViewProxyFocused))
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      result = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel style];
      switch(result)
      {
        case 2:
          if (v10)
          {
            return 9;
          }

          else
          {
            return 8;
          }

        case 1:
          if (v10)
          {
            return 9;
          }

          else
          {
            return 7;
          }

        case 0:
          if ([(SidebarOutlineCell *)self isSelected])
          {
            v11 = 3;
            if (activeAppearance != 1)
            {
              v11 = 9;
            }

            if (v10)
            {
              return v11;
            }

            else
            {
              return 1;
            }
          }

          else
          {
            return 0;
          }
      }
    }
  }

  return result;
}

- (void)_updateBackgroundStyle
{
  [(SidebarOutlineCell *)self updateBackgroundStyle];

  [(SidebarOutlineCell *)self _updateForegroundColors];
}

- (void)updateBackgroundStyle
{
  if (_UISolariumEnabled())
  {
    v4 = +[UIBackgroundConfiguration listCellConfiguration];
    [(SidebarOutlineCell *)self setBackgroundConfiguration:?];
  }

  else
  {
    v4 = +[_UIBackgroundViewConfiguration outlineRootParentCellConfiguration];
    [v4 setBackgroundColorMode:{-[SidebarOutlineCell _currentBackgroundColorMode](self, "_currentBackgroundColorMode")}];
    if (![v4 backgroundColorMode])
    {
      v3 = +[UIColor clearColor];
      [v4 setBackgroundColor:v3];
    }

    [(SidebarOutlineCell *)self _setBackgroundViewConfiguration:v4];
  }
}

- (void)setBackgroundModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_backgroundModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(SidebarOutlineCellBackgroundModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundModel, model);
      [(SidebarOutlineCell *)self _updateBackgroundStyle];
      [(SidebarOutlineCell *)self _updateBackgroundGrouping];
      v6 = v8;
    }
  }
}

- (SidebarOutlineCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SidebarOutlineCell;
  v3 = [(SidebarOutlineCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    contentView = [(SidebarOutlineCell *)v3 contentView];
    [contentView setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    [(SidebarOutlineCell *)v4 _updateBackgroundStyle];
    [(SidebarOutlineCell *)v4 _updateBackgroundGrouping];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(SidebarOutlineCell *)v4 setAccessibilityIdentifier:v10];
  }

  return v4;
}

@end