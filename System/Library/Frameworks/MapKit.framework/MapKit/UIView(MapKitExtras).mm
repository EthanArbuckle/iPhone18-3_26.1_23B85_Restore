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
  selfCopy = self;
  while (1)
  {
    v2 = [MEMORY[0x1E69DD258] viewControllerForView:selfCopy];
    if (v2)
    {
      v4 = v2;
      goto LABEL_8;
    }

    superview = [selfCopy superview];

    if (!superview)
    {
      break;
    }

    objc_opt_class();
    selfCopy = superview;
    if (objc_opt_isKindOfClass())
    {
      v4 = 0;
      selfCopy = superview;
      goto LABEL_8;
    }
  }

  v4 = 0;
  selfCopy = 0;
LABEL_8:

  return v4;
}

- (double)_mapkit_doubleFrame
{
  layer = [self layer];
  [layer doubleBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  superlayer = [layer superlayer];

  if (superlayer)
  {
    superlayer2 = [layer superlayer];
    [layer convertDoubleRect:superlayer2 toLayer:{v3, v5, v7, v9}];
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
  layer = [self layer];
  _mapKit_mapLayer = [layer _mapKit_mapLayer];

  if (_mapKit_mapLayer)
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
  layer = [self layer];
  presentationLayer = [layer presentationLayer];

  if (presentationLayer)
  {
    layer2 = presentationLayer;
  }

  else
  {
    layer2 = [self layer];
  }

  v5 = layer2;

  return v5;
}

@end