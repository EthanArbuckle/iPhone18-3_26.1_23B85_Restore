@interface BCUI2x4AvocadoViewController
- (id)_newBatteryDeviceView;
- (unint64_t)_maximumNumberOfBatteryDeviceViews;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)viewWillLayoutSubviews;
@end

@implementation BCUI2x4AvocadoViewController

- (void)_contentSizeCategoryDidChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v22.receiver = self;
  v22.super_class = BCUI2x4AvocadoViewController;
  [(BCUIAvocadoViewController *)&v22 _contentSizeCategoryDidChange:changeCopy];
  v17 = changeCopy;
  v5 = [BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:changeCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _batteryDeviceViews = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
  v7 = [_batteryDeviceViews countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(_batteryDeviceViews);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          view = [(BCUI2x4AvocadoViewController *)self view];
          [view bounds];
          [BCUI2x4AvocadoViewController _columnWidthForBounds:"_columnWidthForBounds:andMaxNumViews:" andMaxNumViews:?];
          v14 = v13;

          v15 = 74 / v14;
          if (!v5)
          {
            v15 = 1.0;
          }

          [v11 setRingScale:v15];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [_batteryDeviceViews countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  view2 = [(BCUI2x4AvocadoViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v50 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = BCUI2x4AvocadoViewController;
  [(BCUIAvocadoViewController *)&v48 viewWillLayoutSubviews];
  [(BCUI2x4AvocadoViewController *)self _maximumNumberOfBatteryDeviceViews];
  view = [(BCUI2x4AvocadoViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [BCUI2x4AvocadoViewController _columnWidthForBounds:"_columnWidthForBounds:andMaxNumViews:" andMaxNumViews:?];
  v13 = v12;
  v51.origin.x = v5;
  v51.origin.y = v7;
  v51.size.width = v9;
  v51.size.height = v11;
  CGRectGetHeight(v51);
  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v52.origin.y = v7;
    v52.origin.x = v5;
    v52.size.height = v11;
    v52.size.width = v9;
    v15 = CGRectGetMaxX(v52) + -19.0;
  }

  window = [view window];
  if (window)
  {
    window2 = [view window];
    screen = [window2 screen];
    [screen scale];
    v20 = v19;
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [window2 scale];
    v20 = v21;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  _batteryDeviceViews = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
  v23 = [_batteryDeviceViews countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v45;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(_batteryDeviceViews);
        }

        v27 = *(*(&v44 + 1) + 8 * i);
        [v27 ringScale];
        if (v28 == 1.0)
        {
          UIRectIntegralWithScale();
        }

        else
        {
          v43 = v20;
          UIRectCenteredYInRectScale();
        }

        v33 = v29;
        v34 = v30;
        v35 = v31;
        v36 = v32;
        [v27 setFrame:v43];
        v37 = v33;
        v38 = v34;
        v39 = v35;
        v40 = v36;
        if (_shouldReverseLayoutDirection)
        {
          MaxX = CGRectGetMinX(*&v37) - v13;
          v42 = -17.0;
        }

        else
        {
          MaxX = CGRectGetMaxX(*&v37);
          v42 = 17.0;
        }
      }

      v24 = [_batteryDeviceViews countByEnumeratingWithState:&v44 objects:v49 count:{16, MaxX, v42}];
    }

    while (v24);
  }
}

- (unint64_t)_maximumNumberOfBatteryDeviceViews
{
  traitCollection = [(BCUI2x4AvocadoViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if ([BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:preferredContentSizeCategory])
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (id)_newBatteryDeviceView
{
  traitCollection = [(BCUI2x4AvocadoViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LODWORD(traitCollection) = [BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:preferredContentSizeCategory];
  view = [(BCUI2x4AvocadoViewController *)self view];
  [view bounds];
  [BCUI2x4AvocadoViewController _columnWidthForBounds:"_columnWidthForBounds:andMaxNumViews:" andMaxNumViews:?];
  v7 = v6;

  v8 = objc_alloc_init(BCUIRingItemView);
  [(BCUIRingItemView *)v8 setRingItemViewStyle:1];
  [(BCUIRingItemView *)v8 setRingLineWidth:6.0];
  v9 = 1.0;
  if (traitCollection)
  {
    v9 = 74 / v7;
  }

  [(BCUIRingItemView *)v8 setRingScale:v9];

  return v8;
}

@end