@interface AXPIFingerController
- (CGPoint)hndAbsoluteCentroidForMultifingers:(CGPoint)multifingers;
- (CGPoint)hndCentroidForPinchChainMidPoint:(CGPoint)point;
- (CGPoint)hndConvertPointToFingerContainerView:(CGPoint)view;
- (CGPoint)hndMenuPointForFingerLayout;
- (CGPoint)hndStandardCentroidForMultifingers:(CGPoint)multifingers;
@end

@implementation AXPIFingerController

- (CGPoint)hndConvertPointToFingerContainerView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  fingerContainerView = [(AXPIFingerController *)self fingerContainerView];
  window = [fingerContainerView window];
  layer = [window layer];
  [layer convertPoint:0 fromLayer:{x, y}];
  v9 = v8;
  v11 = v10;

  window2 = [fingerContainerView window];
  [window2 convertPoint:fingerContainerView toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)hndStandardCentroidForMultifingers:(CGPoint)multifingers
{
  [(AXPIFingerController *)self hndConvertPointToFingerContainerView:multifingers.x, multifingers.y];
  v5 = v4;
  v7 = v6;
  fingerModels = [(AXPIFingerController *)self fingerModels];
  v9 = [fingerModels count];

  if ((v9 - 3) < 2)
  {
    fingerModels2 = [(AXPIFingerController *)self fingerModels];
    v23 = [fingerModels2 objectAtIndexedSubscript:0];
    [v23 location];
    v25 = v24;
    v27 = v26;

    fingerModels3 = [(AXPIFingerController *)self fingerModels];
    v29 = [fingerModels3 objectAtIndexedSubscript:1];
    [v29 location];
    v31 = v30;
    v33 = v32;

    v5 = v5 - (v31 - v25);
    v20 = v7 - (v33 - v27);
    v21 = -60.0;
    goto LABEL_7;
  }

  if (v9 == 5)
  {
    fingerModels4 = [(AXPIFingerController *)self fingerModels];
    v35 = [fingerModels4 objectAtIndexedSubscript:0];
    [v35 location];
    v37 = v36;
    v39 = v38;

    fingerModels5 = [(AXPIFingerController *)self fingerModels];
    v41 = [fingerModels5 objectAtIndexedSubscript:3];
    [v41 location];
    v43 = v42;
    v45 = v44;

    v5 = v5 - (v43 - v37);
    v20 = v7 - (v45 - v39);
    v21 = -15.0;
    goto LABEL_7;
  }

  if (v9 == 2)
  {
    fingerModels6 = [(AXPIFingerController *)self fingerModels];
    v11 = [fingerModels6 objectAtIndexedSubscript:0];
    [v11 location];
    v13 = v12;
    v15 = v14;

    fingerModels7 = [(AXPIFingerController *)self fingerModels];
    v17 = [fingerModels7 objectAtIndexedSubscript:1];
    [v17 location];

    AX_CGPointGetMidpointToPoint();
    v5 = v5 - (v18 - v13);
    v20 = v7 - (v19 - v15);
    v21 = -35.0;
LABEL_7:
    v7 = v20 + v21;
  }

  v46 = v5;
  v47 = v7;
  result.y = v47;
  result.x = v46;
  return result;
}

- (CGPoint)hndAbsoluteCentroidForMultifingers:(CGPoint)multifingers
{
  [(AXPIFingerController *)self hndConvertPointToFingerContainerView:multifingers.x, multifingers.y];
  v5 = v4;
  v7 = v6;
  fingerModels = [(AXPIFingerController *)self fingerModels];
  v9 = [fingerModels count];

  if (v9)
  {
    [(AXPIFingerController *)self midpointForFingers];
    v11 = v10;
    v13 = v12;
    fingerModels2 = [(AXPIFingerController *)self fingerModels];
    v15 = [fingerModels2 objectAtIndexedSubscript:0];
    [v15 location];
    v17 = v16;
    v19 = v18;

    v5 = v5 - (v11 - v17);
    v7 = v7 - (v13 - v19);
  }

  v20 = v5;
  v21 = v7;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)hndCentroidForPinchChainMidPoint:(CGPoint)point
{
  [(AXPIFingerController *)self hndConvertPointToFingerContainerView:point.x, point.y];
  v6 = v5;
  v8 = v7;
  fingerModels = [(AXPIFingerController *)self fingerModels];
  v10 = [fingerModels count];

  if (v10 != 2)
  {
    sub_10012AC9C(a2, self);
  }

  fingerModels2 = [(AXPIFingerController *)self fingerModels];
  v12 = [fingerModels2 objectAtIndexedSubscript:0];
  [v12 location];
  v14 = v13;
  v16 = v15;

  fingerModels3 = [(AXPIFingerController *)self fingerModels];
  v18 = [fingerModels3 objectAtIndexedSubscript:0];
  [v18 location];
  fingerModels4 = [(AXPIFingerController *)self fingerModels];
  v20 = [fingerModels4 objectAtIndexedSubscript:1];
  [v20 location];
  AX_CGPointGetMidpointToPoint();
  v22 = v21;
  v24 = v23;

  v25 = v6 - (v22 - v14);
  v26 = v8 - (v24 - v16);
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)hndMenuPointForFingerLayout
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  fingerModels = [(AXPIFingerController *)self fingerModels];
  v6 = [fingerModels count];

  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      fingerModels2 = [(AXPIFingerController *)self fingerModels];
      v8 = fingerModels2;
      v9 = 0;
      goto LABEL_11;
    }

    if (v6 == 2)
    {
      fingerModels3 = [(AXPIFingerController *)self fingerModels];
      v11 = [fingerModels3 objectAtIndexedSubscript:0];
      [v11 location];

      fingerModels4 = [(AXPIFingerController *)self fingerModels];
      v13 = fingerModels4;
      v14 = 1;
LABEL_9:
      v17 = [fingerModels4 objectAtIndexedSubscript:v14];
      [v17 location];

      AX_CGPointGetMidpointToPoint();
      x = v18;
      y = v19;
    }
  }

  else
  {
    if ((v6 - 3) < 2)
    {
      fingerModels2 = [(AXPIFingerController *)self fingerModels];
      v8 = fingerModels2;
      v9 = 1;
LABEL_11:
      v20 = [fingerModels2 objectAtIndexedSubscript:v9];
      [v20 location];
      x = v21;
      y = v22;

      goto LABEL_12;
    }

    if (v6 == 5)
    {
      fingerModels5 = [(AXPIFingerController *)self fingerModels];
      v16 = [fingerModels5 objectAtIndexedSubscript:0];
      [v16 location];

      fingerModels4 = [(AXPIFingerController *)self fingerModels];
      v13 = fingerModels4;
      v14 = 3;
      goto LABEL_9;
    }
  }

LABEL_12:
  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

@end