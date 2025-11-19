@interface BCUI2x4AvocadoViewController
- (id)_newBatteryDeviceView;
- (unint64_t)_maximumNumberOfBatteryDeviceViews;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation BCUI2x4AvocadoViewController

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BCUI2x4AvocadoViewController;
  [(BCUIAvocadoViewController *)&v22 _contentSizeCategoryDidChange:v4];
  v17 = v4;
  v5 = [BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:v4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [(BCUI2x4AvocadoViewController *)self view];
          [v12 bounds];
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
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [(BCUI2x4AvocadoViewController *)self view];
  [v16 setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v50 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = BCUI2x4AvocadoViewController;
  [(BCUIAvocadoViewController *)&v48 viewWillLayoutSubviews];
  [(BCUI2x4AvocadoViewController *)self _maximumNumberOfBatteryDeviceViews];
  v3 = [(BCUI2x4AvocadoViewController *)self view];
  [v3 bounds];
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
  v14 = [v3 _shouldReverseLayoutDirection];
  if (v14)
  {
    v52.origin.y = v7;
    v52.origin.x = v5;
    v52.size.height = v11;
    v52.size.width = v9;
    v15 = CGRectGetMaxX(v52) + -19.0;
  }

  v16 = [v3 window];
  if (v16)
  {
    v17 = [v3 window];
    v18 = [v17 screen];
    [v18 scale];
    v20 = v19;
  }

  else
  {
    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 scale];
    v20 = v21;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
  v23 = [v22 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(v22);
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
        if (v14)
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

      v24 = [v22 countByEnumeratingWithState:&v44 objects:v49 count:{16, MaxX, v42}];
    }

    while (v24);
  }
}

- (unint64_t)_maximumNumberOfBatteryDeviceViews
{
  v2 = [(BCUI2x4AvocadoViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if ([BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:v3])
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
  v3 = [(BCUI2x4AvocadoViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LODWORD(v3) = [BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:v4];
  v5 = [(BCUI2x4AvocadoViewController *)self view];
  [v5 bounds];
  [BCUI2x4AvocadoViewController _columnWidthForBounds:"_columnWidthForBounds:andMaxNumViews:" andMaxNumViews:?];
  v7 = v6;

  v8 = objc_alloc_init(BCUIRingItemView);
  [(BCUIRingItemView *)v8 setRingItemViewStyle:1];
  [(BCUIRingItemView *)v8 setRingLineWidth:6.0];
  v9 = 1.0;
  if (v3)
  {
    v9 = 74 / v7;
  }

  [(BCUIRingItemView *)v8 setRingScale:v9];

  return v8;
}

@end