@interface AXPIFingerController
- (CGPoint)hndAbsoluteCentroidForMultifingers:(CGPoint)a3;
- (CGPoint)hndCentroidForPinchChainMidPoint:(CGPoint)a3;
- (CGPoint)hndConvertPointToFingerContainerView:(CGPoint)a3;
- (CGPoint)hndMenuPointForFingerLayout;
- (CGPoint)hndStandardCentroidForMultifingers:(CGPoint)a3;
@end

@implementation AXPIFingerController

- (CGPoint)hndConvertPointToFingerContainerView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(AXPIFingerController *)self fingerContainerView];
  v6 = [v5 window];
  v7 = [v6 layer];
  [v7 convertPoint:0 fromLayer:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [v5 window];
  [v12 convertPoint:v5 toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)hndStandardCentroidForMultifingers:(CGPoint)a3
{
  [(AXPIFingerController *)self hndConvertPointToFingerContainerView:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(AXPIFingerController *)self fingerModels];
  v9 = [v8 count];

  if ((v9 - 3) < 2)
  {
    v22 = [(AXPIFingerController *)self fingerModels];
    v23 = [v22 objectAtIndexedSubscript:0];
    [v23 location];
    v25 = v24;
    v27 = v26;

    v28 = [(AXPIFingerController *)self fingerModels];
    v29 = [v28 objectAtIndexedSubscript:1];
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
    v34 = [(AXPIFingerController *)self fingerModels];
    v35 = [v34 objectAtIndexedSubscript:0];
    [v35 location];
    v37 = v36;
    v39 = v38;

    v40 = [(AXPIFingerController *)self fingerModels];
    v41 = [v40 objectAtIndexedSubscript:3];
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
    v10 = [(AXPIFingerController *)self fingerModels];
    v11 = [v10 objectAtIndexedSubscript:0];
    [v11 location];
    v13 = v12;
    v15 = v14;

    v16 = [(AXPIFingerController *)self fingerModels];
    v17 = [v16 objectAtIndexedSubscript:1];
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

- (CGPoint)hndAbsoluteCentroidForMultifingers:(CGPoint)a3
{
  [(AXPIFingerController *)self hndConvertPointToFingerContainerView:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(AXPIFingerController *)self fingerModels];
  v9 = [v8 count];

  if (v9)
  {
    [(AXPIFingerController *)self midpointForFingers];
    v11 = v10;
    v13 = v12;
    v14 = [(AXPIFingerController *)self fingerModels];
    v15 = [v14 objectAtIndexedSubscript:0];
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

- (CGPoint)hndCentroidForPinchChainMidPoint:(CGPoint)a3
{
  [(AXPIFingerController *)self hndConvertPointToFingerContainerView:a3.x, a3.y];
  v6 = v5;
  v8 = v7;
  v9 = [(AXPIFingerController *)self fingerModels];
  v10 = [v9 count];

  if (v10 != 2)
  {
    sub_10012AC9C(a2, self);
  }

  v11 = [(AXPIFingerController *)self fingerModels];
  v12 = [v11 objectAtIndexedSubscript:0];
  [v12 location];
  v14 = v13;
  v16 = v15;

  v17 = [(AXPIFingerController *)self fingerModels];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v18 location];
  v19 = [(AXPIFingerController *)self fingerModels];
  v20 = [v19 objectAtIndexedSubscript:1];
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
  v5 = [(AXPIFingerController *)self fingerModels];
  v6 = [v5 count];

  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v7 = [(AXPIFingerController *)self fingerModels];
      v8 = v7;
      v9 = 0;
      goto LABEL_11;
    }

    if (v6 == 2)
    {
      v10 = [(AXPIFingerController *)self fingerModels];
      v11 = [v10 objectAtIndexedSubscript:0];
      [v11 location];

      v12 = [(AXPIFingerController *)self fingerModels];
      v13 = v12;
      v14 = 1;
LABEL_9:
      v17 = [v12 objectAtIndexedSubscript:v14];
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
      v7 = [(AXPIFingerController *)self fingerModels];
      v8 = v7;
      v9 = 1;
LABEL_11:
      v20 = [v7 objectAtIndexedSubscript:v9];
      [v20 location];
      x = v21;
      y = v22;

      goto LABEL_12;
    }

    if (v6 == 5)
    {
      v15 = [(AXPIFingerController *)self fingerModels];
      v16 = [v15 objectAtIndexedSubscript:0];
      [v16 location];

      v12 = [(AXPIFingerController *)self fingerModels];
      v13 = v12;
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