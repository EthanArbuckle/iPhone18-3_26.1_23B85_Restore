@interface SidebarOutlineCell
- (SidebarOutlineCell)initWithFrame:(CGRect)a3;
- (SidebarOutlineCellHoverSource)hoverSource;
- (int64_t)_currentBackgroundColorMode;
- (void)_maps_addDisclosureIndicator;
- (void)_updateBackgroundGrouping;
- (void)_updateBackgroundStyle;
- (void)_updateForegroundColors;
- (void)_updateHoverStateIfNeeded;
- (void)applyLayoutAttributes:(id)a3;
- (void)setBackgroundModel:(id)a3;
- (void)setHoverSource:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v3 = [(SidebarOutlineCell *)self hoverSource];
  v20 = [v3 hoverGestureRecognizer];

  v4 = [(SidebarOutlineCell *)self hoverSource];
  v5 = [v4 hoverScrollView];
  if ([v5 isDragging])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SidebarOutlineCell *)self hoverSource];
    v8 = [v7 hoverScrollView];
    v6 = [v8 isDecelerating];
  }

  if (![v20 _maps_isHovering] || v6)
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
  [v20 locationInView:self];
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

- (void)setHoverSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hoverSource);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_hoverSource);
    v6 = [v5 hoverChangeObservers];
    [v6 unregisterObserver:self];

    v7 = objc_storeWeak(&self->_hoverSource, obj);
    v8 = [obj hoverChangeObservers];
    [v8 registerObserver:self];

    [(SidebarOutlineCell *)self _updateHoverStateIfNeeded];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = SidebarOutlineCell;
  [(SidebarOutlineCell *)&v4 applyLayoutAttributes:a3];
  [(SidebarOutlineCell *)self _updateHoverStateIfNeeded];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = SidebarOutlineCell;
  v4 = a3;
  [(MapsThemeCollectionViewOutlineCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(SidebarOutlineCell *)self traitCollection:v8.receiver];
  v6 = [v5 activeAppearance];
  v7 = [v4 activeAppearance];

  if (v6 != v7)
  {
    [(SidebarOutlineCell *)self _updateBackgroundStyle];
  }
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SidebarOutlineCell;
  [(SidebarOutlineCell *)&v4 setSelected:a3];
  [(SidebarOutlineCell *)self _updateBackgroundStyle];
}

- (void)_updateForegroundColors
{
  v3 = [(SidebarOutlineCell *)self _useLightForegroundColors];
  if (self->_useLightForegroundColors != v3)
  {

    [(SidebarOutlineCell *)self setUseLightForegroundColors:v3];
  }
}

- (void)_updateBackgroundGrouping
{
  v3 = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel grouping];
  if ((v3 - 1) >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
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
      v4 = [(SidebarOutlineCell *)self traitCollection];
      v5 = [v4 activeAppearance];

      v6 = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel collectionViewFocused];
      v7 = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel collectionViewProxyFocused];
      v8 = [(SidebarOutlineCellBackgroundModel *)self->_backgroundModel collectionViewHasDropSession];
      v9 = (v5 != 1) & ~v7;
      if (v8)
      {
        v9 = 1;
      }

      if ((v6 | v7))
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
            if (v5 != 1)
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

- (void)setBackgroundModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_backgroundModel != v5)
  {
    v8 = v5;
    v7 = [(SidebarOutlineCellBackgroundModel *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundModel, a3);
      [(SidebarOutlineCell *)self _updateBackgroundStyle];
      [(SidebarOutlineCell *)self _updateBackgroundGrouping];
      v6 = v8;
    }
  }
}

- (SidebarOutlineCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = SidebarOutlineCell;
  v3 = [(SidebarOutlineCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v8 = [(SidebarOutlineCell *)v3 contentView];
    [v8 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    [(SidebarOutlineCell *)v4 _updateBackgroundStyle];
    [(SidebarOutlineCell *)v4 _updateBackgroundGrouping];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(SidebarOutlineCell *)v4 setAccessibilityIdentifier:v10];
  }

  return v4;
}

@end