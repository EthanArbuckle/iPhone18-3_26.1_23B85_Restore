@interface BCUI2x2AvocadoViewController
- (BOOL)_includeEmptyDevices;
- (id)_newBatteryDeviceView;
- (void)_configureBatteryDeviceView:(id)view withBatteryDevice:(id)device transitionCoordinator:(id)coordinator;
- (void)viewWillLayoutSubviews;
@end

@implementation BCUI2x2AvocadoViewController

- (void)viewWillLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = BCUI2x2AvocadoViewController;
  [(BCUIAvocadoViewController *)&v40 viewWillLayoutSubviews];
  view = [(BCUI2x2AvocadoViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  batteryDevices = [(BCUIAvocadoViewController *)self batteryDevices];
  v13 = [batteryDevices count];

  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];
  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  v42 = CGRectInset(v41, 12.0, 12.0);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  v19 = CGRectGetWidth(v42);
  v20 = v19;
  if (v13 <= 1)
  {
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v23 = CGRectGetHeight(v44);
  }

  else
  {
    v21 = (v19 + -11.0) * 0.5;
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v22 = (CGRectGetHeight(v43) + -11.0) * 0.5;
    if (v21 <= v22)
    {
      v20 = v21;
    }

    else
    {
      v20 = v22;
    }

    v23 = v20;
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  if (_shouldReverseLayoutDirection)
  {
    MinX = CGRectGetMaxX(*&v24) - v20;
  }

  else
  {
    MinX = CGRectGetMinX(*&v24);
  }

  *&v39[3] = MinX;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v38[3] = CGRectGetMinY(v45);
  window = [view window];
  if (window)
  {
    window2 = [view window];
    screen = [window2 screen];
    [screen scale];
    v33 = v32;
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [window2 scale];
    v33 = v34;
  }

  _batteryDeviceViews = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __54__BCUI2x2AvocadoViewController_viewWillLayoutSubviews__block_invoke;
  v36[3] = &unk_1E814EBC8;
  v36[4] = v39;
  v36[5] = v38;
  *&v36[6] = v20;
  *&v36[7] = v23;
  v37 = _shouldReverseLayoutDirection;
  v36[8] = v33;
  *&v36[9] = x;
  *&v36[10] = y;
  *&v36[11] = width;
  *&v36[12] = height;
  [_batteryDeviceViews enumerateObjectsUsingBlock:v36];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
}

void __54__BCUI2x2AvocadoViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  UIRectIntegralWithScale();
  [v5 setFrame:?];

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  if (*(a1 + 104) == 1)
  {
    MinX = CGRectGetMaxX(*&v6) - *(a1 + 48);
  }

  else
  {
    MinX = CGRectGetMinX(*&v6);
  }

  *(*(*(a1 + 32) + 8) + 24) = MinX;
  if ((a3 & 1) == 0)
  {
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 24);
    v13 = *(a1 + 48);
    v14 = v12 - v13 + -11.0;
    v15 = v12 + v13 + 11.0;
    if (*(a1 + 104))
    {
      v15 = v14;
    }

    *(v11 + 24) = v15;
  }

  if (a3 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56) + 11.0 + *(*(*(a1 + 40) + 8) + 24);
  }
}

- (BOOL)_includeEmptyDevices
{
  batteryDevices = [(BCUIAvocadoViewController *)self batteryDevices];
  v3 = [batteryDevices count] > 1;

  return v3;
}

- (id)_newBatteryDeviceView
{
  v2 = objc_alloc_init(BCUIRingItemView);
  [(BCUIRingItemView *)v2 setRingLineWidth:6.0];
  return v2;
}

- (void)_configureBatteryDeviceView:(id)view withBatteryDevice:(id)device transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = BCUI2x2AvocadoViewController;
  [(BCUIAvocadoViewController *)&v15 _configureBatteryDeviceView:viewCopy withBatteryDevice:device transitionCoordinator:coordinator];
  batteryDevices = [(BCUIAvocadoViewController *)self batteryDevices];
  v10 = [batteryDevices count];

  v11 = objc_opt_class();
  v12 = viewCopy;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  [v14 setRingItemViewStyle:2 * (v10 < 2)];
}

@end