@interface BCUI4x4AvocadoViewController
- (unint64_t)_maximumNumberOfBatteryDeviceViews;
- (void)_configureBatteryDeviceView:(id)a3 withBatteryDevice:(id)a4 transitionCoordinator:(id)a5;
- (void)viewWillLayoutSubviews;
@end

@implementation BCUI4x4AvocadoViewController

- (void)viewWillLayoutSubviews
{
  v36 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = BCUI4x4AvocadoViewController;
  [(BCUIAvocadoViewController *)&v34 viewWillLayoutSubviews];
  v3 = [(BCUI4x4AvocadoViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = BCUI6x8RowHeightForBounds(v5, v7, v9, v11);
  v13 = [(BCUI4x4AvocadoViewController *)self traitCollection];
  v14 = [v13 preferredContentSizeCategory];

  v29 = v14;
  v30 = 0u;
  v31 = 0u;
  if ([BCUIRowView isAX3PlusLayoutRequiredForContentSizeCategory:v14])
  {
    v12 = v12 + v12;
  }

  v32 = 0uLL;
  v33 = 0uLL;
  v15 = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    MaxY = 0.0;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v22 = objc_opt_class();
        v23 = v21;
        if (v22)
        {
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        v26 = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
        v27 = [v26 lastObject];
        [v25 setSeparatorVisible:v23 != v27];

        v37.origin.x = v5;
        v37.origin.y = v7;
        v37.size.width = v9;
        v37.size.height = v11;
        Width = CGRectGetWidth(v37);
        [v23 setFrame:{0.0, MaxY, Width, v12}];
        v38.origin.x = 0.0;
        v38.origin.y = MaxY;
        v38.size.width = Width;
        v38.size.height = v12;
        MaxY = CGRectGetMaxY(v38);
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v17);
  }
}

- (unint64_t)_maximumNumberOfBatteryDeviceViews
{
  v2 = [(BCUI4x4AvocadoViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if ([BCUIRowView isAX3PlusLayoutRequiredForContentSizeCategory:v3])
  {
    v4 = 3;
  }

  else
  {
    v4 = 6;
  }

  return v4;
}

- (void)_configureBatteryDeviceView:(id)a3 withBatteryDevice:(id)a4 transitionCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setEmpty:v9 == 0];
  if (objc_opt_respondsToSelector())
  {
    [v8 setTransitionCoordinator:v10];
  }

  if (v9)
  {
    v11.receiver = self;
    v11.super_class = BCUI4x4AvocadoViewController;
    [(BCUIAvocadoViewController *)&v11 _configureBatteryDeviceView:v8 withBatteryDevice:v9 transitionCoordinator:v10];
  }
}

@end