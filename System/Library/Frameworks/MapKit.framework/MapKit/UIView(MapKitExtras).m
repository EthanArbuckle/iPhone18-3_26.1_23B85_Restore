@interface UIView(MapKitExtras)
- (double)_mapkit_doubleFrame;
- (id)_mapKit_mapView;
- (id)_mapkit_currentLayer;
- (id)_mapkit_findNearestViewController;
- (uint64_t)_mapkit_countOfSet:()MapKitExtras minusSubset:;
@end

@implementation UIView(MapKitExtras)

- (id)_mapkit_findNearestViewController
{
  v1 = a1;
  while (1)
  {
    v2 = [MEMORY[0x1E69DD258] viewControllerForView:v1];
    if (v2)
    {
      v4 = v2;
      goto LABEL_8;
    }

    v3 = [v1 superview];

    if (!v3)
    {
      break;
    }

    objc_opt_class();
    v1 = v3;
    if (objc_opt_isKindOfClass())
    {
      v4 = 0;
      v1 = v3;
      goto LABEL_8;
    }
  }

  v4 = 0;
  v1 = 0;
LABEL_8:

  return v4;
}

- (double)_mapkit_doubleFrame
{
  v1 = [a1 layer];
  [v1 doubleBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 superlayer];

  if (v10)
  {
    v11 = [v1 superlayer];
    [v1 convertDoubleRect:v11 toLayer:{v3, v5, v7, v9}];
    v3 = v12;
  }

  return v3;
}

- (uint64_t)_mapkit_countOfSet:()MapKitExtras minusSubset:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v5 mutableCopy];
    [v9 minusSet:v6];
    v8 = [v9 count];
  }

  return v8;
}

- (id)_mapKit_mapView
{
  v1 = [a1 layer];
  v2 = [v1 _mapKit_mapLayer];

  if (v2)
  {
    Delegate = CALayerGetDelegate();
    if (Delegate)
    {
      v4 = Delegate;
      if (!MKIsMKView__viewClass)
      {
        MKIsMKView__viewClass = objc_opt_class();
      }

      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_mapkit_currentLayer
{
  v2 = [a1 layer];
  v3 = [v2 presentationLayer];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [a1 layer];
  }

  v5 = v4;

  return v5;
}

@end