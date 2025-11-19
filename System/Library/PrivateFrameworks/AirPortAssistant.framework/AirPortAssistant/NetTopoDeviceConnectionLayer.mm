@interface NetTopoDeviceConnectionLayer
- (CGPath)newConnectionPathWithOffset:(double)a3;
- (CGPoint)downstreamConnectionPoint;
- (CGPoint)siblingMergePoint;
- (CGPoint)upstreamConnectionPoint;
- (CGRect)getUserInteractionBounds;
- (NSString)debugDescription;
- (NetTopoDeviceConnectionLayer)initWithUIStyle:(int)a3 andOwningView:(id)a4;
- (id)describeOne:(id)a3 uiLayer:(id)a4 indent:(unint64_t)a5;
- (unint64_t)connectionMedium;
- (void)addBottomWindingConnectionToPath:(CGPath *)a3 withOffset:(double)a4;
- (void)addCurvedArrowConnectionToPath:(CGPath *)a3 withOffset:(double)a4;
- (void)addSideWindingConnectionToPath:(CGPath *)a3 withOffset:(double)a4;
- (void)dealloc;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)initNetTopoDeviceConnectionLayerCommonWithStyle:(int)a3 andOwningView:(id)a4;
- (void)layoutSublayers;
- (void)setDownstreamConnectionPoint:(CGPoint)a3;
- (void)setNeedsDisplay;
- (void)setSelected:(BOOL)a3;
- (void)setSiblingMergePoint:(CGPoint)a3;
- (void)setUpstreamConnectionPoint:(CGPoint)a3;
@end

@implementation NetTopoDeviceConnectionLayer

- (void)initNetTopoDeviceConnectionLayerCommonWithStyle:(int)a3 andOwningView:(id)a4
{
  if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer initNetTopoDeviceConnectionLayerCommonWithStyle:andOwningView:]", 800, "%@\n", v4, v5, v6, v7, self);
  }

  self->super._selectable = 0;
  objc_msgSend_setOwningView_(self, a2, a4);
  v10 = objc_alloc_init(MEMORY[0x277CD9F90]);
  self->_connectionLineLayer = v10;
  objc_msgSend_setDelegate_(v10, v11, self);
  v13 = objc_msgSend_setLineCap_(self->_connectionLineLayer, v12, *MEMORY[0x277CDA780]);
  if (self->super._topoStyle)
  {
    if (sub_23EC132F8(v13, v14, v15))
    {
      self->_lineColorEthernet = sub_23EBFD680(0.45, 0.45, 0.45, 1.0);
      v16 = 1.0;
      v17 = 0.45;
      v18 = 0.45;
      v19 = 0.45;
    }

    else
    {
      self->_lineColorEthernet = sub_23EBFD680(0.584313725, 0.607843137, 0.662745098, 1.0);
      v16 = 1.0;
      v17 = 0.584313725;
      v18 = 0.607843137;
      v19 = 0.662745098;
    }

    v20 = sub_23EBFD680(v17, v18, v19, v16);
    v21 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorWiFi;
  }

  else
  {
    self->_lineColorActive = sub_23EBFD680(1.0, 1.0, 1.0, 0.8);
    v20 = sub_23EBFD680(1.0, 1.0, 1.0, 0.2);
    v21 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorInactive;
  }

  *(&self->super.super.super.isa + *v21) = v20;
  self->_selectedLineColor = sub_23EBFD680(0.117647059, 0.137254902, 0.823529412, 1.0);
  self->_whiteColor = sub_23EBFD680(1.0, 1.0, 1.0, 0.75);
  self->_clearColor = sub_23EBFD718();
  objc_msgSend_setZPosition_(self, v22, v23, 0.0);
  connectionLineLayer = self->_connectionLineLayer;

  objc_msgSend_addSublayer_(self, v24, connectionLineLayer);
}

- (NetTopoDeviceConnectionLayer)initWithUIStyle:(int)a3 andOwningView:(id)a4
{
  v5 = *&a3;
  v10.receiver = self;
  v10.super_class = NetTopoDeviceConnectionLayer;
  v6 = [NetTopoObjectLayer initWithUIStyle:sel_initWithUIStyle_andOwningView_ andOwningView:?];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_initNetTopoDeviceConnectionLayerCommonWithStyle_andOwningView_(v6, v7, v5, a4);
  }

  return v8;
}

- (void)dealloc
{
  if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer dealloc]", 800, "%@\n", v2, v3, v4, v5, self);
  }

  self->_connectionLineLayer = 0;
  topoStyle = self->super._topoStyle;
  v8 = topoStyle == 0;
  if (topoStyle)
  {
    v9 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorWiFi;
  }

  else
  {
    v9 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorActive;
  }

  if (v8)
  {
    v10 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorInactive;
  }

  else
  {
    v10 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorEthernet;
  }

  CGColorRelease(*(&self->super.super.super.isa + *v9));
  CGColorRelease(*(&self->super.super.super.isa + *v10));
  CGColorRelease(self->_selectedLineColor);
  self->_selectedLineColor = 0;
  CGColorRelease(self->_clearColor);
  self->_clearColor = 0;
  CGColorRelease(self->_whiteColor);
  self->_whiteColor = 0;
  v11.receiver = self;
  v11.super_class = NetTopoDeviceConnectionLayer;
  [(NetTopoObjectLayer *)&v11 dealloc];
}

- (CGRect)getUserInteractionBounds
{
  if (dword_27E383138 <= 800)
  {
    if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
    {
      objc_msgSend_bounds(self, a2, v2);
      v5 = v4;
      objc_msgSend_bounds(self, v6, v7);
      objc_msgSend_bounds(self, v8, v9);
      objc_msgSend_bounds(self, v10, v11);
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer getUserInteractionBounds]", 800, "bounds = (x = %.2f, y = %.2f, w = %.2f, h = %.2f)\n", v12, v13, v14, v15, v5);
    }

    if (dword_27E383138 <= 800)
    {
      if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
      {
        objc_msgSend_frame(self, a2, v2);
        v17 = v16;
        objc_msgSend_frame(self, v18, v19);
        objc_msgSend_frame(self, v20, v21);
        objc_msgSend_frame(self, v22, v23);
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer getUserInteractionBounds]", 800, "frame = (x = %.2f, y = %.2f, w = %.2f, h = %.2f)\n", v24, v25, v26, v27, v17);
      }

      if (dword_27E383138 <= 800)
      {
        if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
        {
          objc_msgSend_position(self, a2, v2);
          v29 = v28;
          objc_msgSend_position(self, v30, v31);
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer getUserInteractionBounds]", 800, "position = (x = %.2f, y = %.2f)\n", v32, v33, v34, v35, v29);
        }

        if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
        {
          objc_msgSend_anchorPoint(self, a2, v2);
          v37 = v36;
          objc_msgSend_anchorPoint(self, v38, v39);
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer getUserInteractionBounds]", 800, "anchor = (x = %.2f, y = %.2f)\n", v40, v41, v42, v43, v37);
        }
      }
    }
  }

  objc_msgSend_bounds(self, a2, v2);
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (void)setDownstreamConnectionPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
  v8 = objc_msgSend_superlayer(self, a2, v3);
  objc_msgSend_convertPoint_fromLayer_(self, v9, v8, x, y);
  *p_downstreamConnectionPoint = v14;
  p_downstreamConnectionPoint[1] = v15;
  if (dword_27E383138 <= 800)
  {
    if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setDownstreamConnectionPoint:]", 800, "input point=(x = %.2f y = %.2f)\n", v10, v11, v12, v13, *&x);
    }

    if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setDownstreamConnectionPoint:]", 800, "converted point=(x = %.2f y = %.2f)\n", v10, v11, v12, v13, *p_downstreamConnectionPoint);
    }
  }
}

- (CGPoint)downstreamConnectionPoint
{
  p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
  v6 = objc_msgSend_superlayer(self, a2, v2);
  x = p_downstreamConnectionPoint->x;
  y = p_downstreamConnectionPoint->y;

  objc_msgSend_convertPoint_toLayer_(self, v5, v6, x, y);
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setUpstreamConnectionPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_upstreamConnectionPoint = &self->_upstreamConnectionPoint;
  v8 = objc_msgSend_superlayer(self, a2, v3);
  objc_msgSend_convertPoint_fromLayer_(self, v9, v8, x, y);
  *p_upstreamConnectionPoint = v14;
  p_upstreamConnectionPoint[1] = v15;
  if (dword_27E383138 <= 800)
  {
    if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setUpstreamConnectionPoint:]", 800, "input point=(x = %.2f y = %.2f)\n", v10, v11, v12, v13, *&x);
    }

    if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setUpstreamConnectionPoint:]", 800, "converted point=(x = %.2f y = %.2f)\n", v10, v11, v12, v13, *p_upstreamConnectionPoint);
    }
  }
}

- (CGPoint)upstreamConnectionPoint
{
  p_upstreamConnectionPoint = &self->_upstreamConnectionPoint;
  v6 = objc_msgSend_superlayer(self, a2, v2);
  x = p_upstreamConnectionPoint->x;
  y = p_upstreamConnectionPoint->y;

  objc_msgSend_convertPoint_toLayer_(self, v5, v6, x, y);
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)siblingMergePoint
{
  p_siblingMergePoint = &self->_siblingMergePoint;
  v6 = objc_msgSend_superlayer(self, a2, v2);
  x = p_siblingMergePoint->x;
  y = p_siblingMergePoint->y;

  objc_msgSend_convertPoint_toLayer_(self, v5, v6, x, y);
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setSiblingMergePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_siblingMergePoint = &self->_siblingMergePoint;
  v8 = objc_msgSend_superlayer(self, a2, v3);
  objc_msgSend_convertPoint_fromLayer_(self, v9, v8, x, y);
  *p_siblingMergePoint = v14;
  p_siblingMergePoint[1] = v15;
  if (dword_27E383138 <= 800)
  {
    if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setSiblingMergePoint:]", 800, "input point=(x = %.2f y = %.2f)\n", v10, v11, v12, v13, *&x);
    }

    if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setSiblingMergePoint:]", 800, "converted point=(x = %.2f y = %.2f)\n", v10, v11, v12, v13, *p_siblingMergePoint);
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->super._selectable)
  {
    v13 = v3;
    v14 = v4;
    v5 = a3;
    if (objc_msgSend_isSelected(self, a2, a3) != a3)
    {
      v12.receiver = self;
      v12.super_class = NetTopoDeviceConnectionLayer;
      [(NetTopoObjectLayer *)&v12 setSelected:v5];
      objc_msgSend_setNeedsDisplay(self->_connectionLineLayer, v7, v8);
      v11 = 100.0;
      if (!v5)
      {
        v11 = 0.0;
      }

      objc_msgSend_setZPosition_(self, v9, v10, v11);
    }
  }
}

- (unint64_t)connectionMedium
{
  v4 = objc_msgSend_associatedNode(self, a2, v2);
  if (v4)
  {
    return objc_msgSend_medium(v4, v5, v6);
  }

  else
  {
    return self->_connectionMediumFallback;
  }
}

- (void)layoutSublayers
{
  objc_msgSend_bounds(self, a2, v2);
  objc_msgSend_setFrame_(self->_connectionLineLayer, v4, v5);
  connectionLineLayer = self->_connectionLineLayer;

  objc_msgSend_setNeedsDisplay(connectionLineLayer, v6, v7);
}

- (void)addSideWindingConnectionToPath:(CGPath *)a3 withOffset:(double)a4
{
  if (objc_msgSend_upstreamDeviceSpatialRelationship(self, a2, a3) == 4)
  {
    v9 = objc_msgSend_connectionMedium(self, v7, v8) == 1;
    v12 = 1.0;
    v13 = -1.0;
  }

  else
  {
    v9 = objc_msgSend_upstreamDeviceSpatialRelationship(self, v7, v8) == 1;
    v12 = -1.0;
    v13 = 1.0;
  }

  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (objc_msgSend_upstreamConnectionSide(self, v10, v11, v12) == 1)
  {
    v15 = -10.0;
  }

  else
  {
    v15 = 10.0;
  }

  CGPathMoveToPoint(a3, 0, self->_upstreamConnectionPoint.x + v15, self->_upstreamConnectionPoint.y);
  if (a4 != 0.0)
  {
    CGPathAddLineToPoint(a3, 0, v15 + self->_upstreamConnectionPoint.x, self->_upstreamConnectionPoint.y + a4);
  }

  p_siblingMergePoint = &self->_siblingMergePoint;
  CGPathAddArcToPoint(a3, 0, self->_siblingMergePoint.x - a4, self->_upstreamConnectionPoint.y + a4, self->_siblingMergePoint.x - a4, self->_upstreamConnectionPoint.y + 12.0 + a4, 12.0);
  CGPathAddArcToPoint(a3, 0, p_siblingMergePoint->x - a4, self->_siblingMergePoint.y - a4, p_siblingMergePoint->x + v14 * 12.0 - a4, self->_siblingMergePoint.y - a4, 12.0);
  p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
  CGPathAddArcToPoint(a3, 0, p_downstreamConnectionPoint->x - a4, p_siblingMergePoint->y - a4, p_downstreamConnectionPoint->x - a4, p_siblingMergePoint->y + 12.0 - a4, 12.0);
  CGPathAddLineToPoint(a3, 0, p_downstreamConnectionPoint->x - a4, p_downstreamConnectionPoint->y + -10.0);
  if (a4 != 0.0)
  {
    x = p_downstreamConnectionPoint->x;
    v19 = p_downstreamConnectionPoint->y + -10.0;

    CGPathAddLineToPoint(a3, 0, x, v19);
  }
}

- (void)addBottomWindingConnectionToPath:(CGPath *)a3 withOffset:(double)a4
{
  v13 = 1.0;
  if (objc_msgSend_upstreamDeviceSpatialRelationship(self, a2, a3) == 3 || (v13 = -1.0, objc_msgSend_upstreamDeviceSpatialRelationship(self, v7, v8) == 5))
  {
    if (dword_27E383138 <= 800)
    {
      if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addBottomWindingConnectionToPath:withOffset:]", 800, "_upstreamConnectionPoint = (x = %.2f y = %.2f)\n", v9, v10, v11, v12, *&self->_upstreamConnectionPoint.x);
      }

      if (dword_27E383138 <= 800)
      {
        if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
        {
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addBottomWindingConnectionToPath:withOffset:]", 800, "_downstreamConnectionPoint = (x = %.2f y = %.2f)\n", v9, v10, v11, v12, *&self->_downstreamConnectionPoint.x);
        }

        if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
        {
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addBottomWindingConnectionToPath:withOffset:]", 800, "_siblingMergePoint = (x = %.2f y = %.2f)\n", v9, v10, v11, v12, *&self->_siblingMergePoint.x);
        }
      }
    }

    CGPathMoveToPoint(a3, 0, self->_upstreamConnectionPoint.x - a4, self->_upstreamConnectionPoint.y + 4.0);
    if (a4 != 0.0)
    {
      CGPathAddLineToPoint(a3, 0, self->_upstreamConnectionPoint.x - a4, self->_upstreamConnectionPoint.y);
    }

    p_siblingMergePoint = &self->_siblingMergePoint;
    CGPathAddArcToPoint(a3, 0, self->_siblingMergePoint.x - a4, self->_siblingMergePoint.y - a4, self->_siblingMergePoint.x + v13 * 12.0 - a4, self->_siblingMergePoint.y - a4, 12.0);
    p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
    CGPathAddArcToPoint(a3, 0, p_downstreamConnectionPoint->x - a4, p_siblingMergePoint->y - a4, p_downstreamConnectionPoint->x - a4, p_siblingMergePoint->y + 12.0 - a4, 12.0);
    CGPathAddLineToPoint(a3, 0, p_downstreamConnectionPoint->x - a4, p_downstreamConnectionPoint->y);
    if (a4 != 0.0)
    {
      x = p_downstreamConnectionPoint->x;
      y = p_downstreamConnectionPoint->y;

      CGPathAddLineToPoint(a3, 0, x, y);
    }
  }

  else if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {

    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addBottomWindingConnectionToPath:withOffset:]", 800, "unsupported spatial relationship for this position\n", v9, v10, v11, v12, v19);
  }
}

- (void)addCurvedArrowConnectionToPath:(CGPath *)a3 withOffset:(double)a4
{
  if (objc_msgSend_upstreamDeviceSpatialRelationship(self, a2, a3) == 1)
  {
    if (dword_27E383138 <= 800)
    {
      if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addCurvedArrowConnectionToPath:withOffset:]", 800, "_upstreamConnectionPoint = (x = %.2f y = %.2f)\n", v7, v8, v9, v10, *&self->_upstreamConnectionPoint.x);
      }

      if (dword_27E383138 <= 800)
      {
        if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
        {
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addCurvedArrowConnectionToPath:withOffset:]", 800, "_downstreamConnectionPoint = (x = %.2f y = %.2f)\n", v7, v8, v9, v10, *&self->_downstreamConnectionPoint.x);
        }

        if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
        {
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addCurvedArrowConnectionToPath:withOffset:]", 800, "offset = %.2f\n", v7, v8, v9, v10, *&a4);
        }
      }
    }

    y = self->_downstreamConnectionPoint.y;
    v12 = self->_downstreamConnectionPoint.x - a4;
    v13 = self->_upstreamConnectionPoint.x + a4 + 3.0;
    v14 = self->_upstreamConnectionPoint.y + 1.0;
    CGPathMoveToPoint(a3, 0, v12, y);
    CGPathAddCurveToPoint(a3, 0, v12 + -25.0, y + -26.0, v13 + 25.0, v14 + -26.0, v13 + 3.0, v14 + -1.0);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v13, v14 + -1.0);
    CGPathAddLineToPoint(Mutable, 0, v13 + 15.0, v14 + -1.0);
    CGPathAddLineToPoint(Mutable, 0, v13 + 8.0, v14 + -13.6999998);
    CGPathCloseSubpath(Mutable);
    self->_arrowhead = Mutable;

    CGPathAddPath(a3, 0, Mutable);
  }

  else if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {

    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addCurvedArrowConnectionToPath:withOffset:]", 800, "unsupported spatial relationship for this position\n", v7, v8, v9, v10, v17);
  }
}

- (CGPath)newConnectionPathWithOffset:(double)a3
{
  if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "entered with offset %f\n", v3, v4, v5, v6, *&a3);
  }

  Mutable = CGPathCreateMutable();
  v12 = objc_msgSend_upstreamDeviceSpatialRelationship(self, v10, v11);
  if (v12 > 3)
  {
    if (v12 == 4)
    {
      if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kUpstreamDeviceAboveCenter\n", v15, v16, v17, v18, v31);
      }

      v22 = objc_msgSend_connectionStyle(self, v13, v14);
      if (v22 == 4)
      {
        goto LABEL_49;
      }

      if (v22 == 3)
      {
        goto LABEL_45;
      }

      if (v22 != 1)
      {
        goto LABEL_63;
      }

      if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleDirect\n", v15, v16, v17, v18, v31);
      }

      CGPathMoveToPoint(Mutable, 0, self->_upstreamConnectionPoint.x, self->_upstreamConnectionPoint.y + 4.0);
      if (a3 != 0.0)
      {
        CGPathAddLineToPoint(Mutable, 0, self->_upstreamConnectionPoint.x - a3, self->_upstreamConnectionPoint.y + 4.0);
      }

      p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
      CGPathAddLineToPoint(Mutable, 0, p_downstreamConnectionPoint->x - a3, p_downstreamConnectionPoint->y);
      if (a3 == 0.0)
      {
        goto LABEL_63;
      }

      x = p_downstreamConnectionPoint->x;
      y = p_downstreamConnectionPoint->y;
LABEL_62:
      CGPathAddLineToPoint(Mutable, 0, x, y);
      goto LABEL_63;
    }

    if (v12 != 5)
    {
      goto LABEL_63;
    }

LABEL_16:
    objc_msgSend_addBottomWindingConnectionToPath_withOffset_(self, v13, Mutable, a3);
    goto LABEL_63;
  }

  if ((v12 - 1) >= 2)
  {
    if (v12 != 3)
    {
      goto LABEL_63;
    }

    goto LABEL_16;
  }

  v19 = objc_msgSend_connectionStyle(self, v13, v14);
  if (v19 <= 2)
  {
    if (v19 == 1)
    {
      if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleDirect\n", v15, v16, v17, v18, v31);
      }

      CGPathMoveToPoint(Mutable, 0, self->_upstreamConnectionPoint.x + 10.0, self->_upstreamConnectionPoint.y);
      if (a3 != 0.0)
      {
        CGPathAddLineToPoint(Mutable, 0, self->_upstreamConnectionPoint.x + 10.0, self->_upstreamConnectionPoint.y - a3);
      }

      v29 = &self->_downstreamConnectionPoint;
      CGPathAddLineToPoint(Mutable, 0, v29->x + -10.0, v29->y - a3);
      if (a3 == 0.0)
      {
        goto LABEL_63;
      }

      y = v29->y;
      x = v29->x + -10.0;
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_63;
      }

      if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleSingleBend\n", v15, v16, v17, v18, v31);
      }

      if (objc_msgSend_upstreamDeviceSpatialRelationship(self, v20, v21) == 1)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = -1.0;
      }

      p_upstreamConnectionPoint = &self->_upstreamConnectionPoint;
      CGPathMoveToPoint(Mutable, 0, self->_upstreamConnectionPoint.x + v26 * 10.0, self->_upstreamConnectionPoint.y);
      if (a3 != 0.0)
      {
        CGPathAddLineToPoint(Mutable, 0, p_upstreamConnectionPoint->x + v26 * 10.0, self->_upstreamConnectionPoint.y - a3);
      }

      v28 = &self->_downstreamConnectionPoint;
      CGPathAddArcToPoint(Mutable, 0, v28->x + a3 * v26, p_upstreamConnectionPoint->y - a3, v28->x + a3 * v26, v28->y + -10.0, 12.0);
      CGPathAddLineToPoint(Mutable, 0, v28->x + a3 * v26, v28->y + -10.0);
      if (a3 == 0.0)
      {
        goto LABEL_63;
      }

      x = v28->x;
      y = v28->y + -10.0;
    }

    goto LABEL_62;
  }

  if (v19 != 3)
  {
    if (v19 != 4)
    {
      if (v19 == 5)
      {
        objc_msgSend_addCurvedArrowConnectionToPath_withOffset_(self, v20, Mutable, a3 + 6.0);
      }

      goto LABEL_63;
    }

LABEL_49:
    if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleSideWinding\n", v15, v16, v17, v18, v31);
    }

    objc_msgSend_addSideWindingConnectionToPath_withOffset_(self, v20, Mutable, a3);
    goto LABEL_63;
  }

LABEL_45:
  if (dword_27E383138 > 800)
  {
    return Mutable;
  }

  if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleBottomWinding - unsupported for this spatial relationship\n", v15, v16, v17, v18, v31);
  }

LABEL_63:
  if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "done\n", v15, v16, v17, v18, v31);
  }

  return Mutable;
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v6 = objc_msgSend_newConnectionPathWithOffset_(self, a2, a3, 0.0);
  isGhosted = objc_msgSend_isGhosted(self, v7, v8);
  topoStyle = self->super._topoStyle;
  connectionLineLayer = self->_connectionLineLayer;
  if ((isGhosted & 1) == 0)
  {
    if (topoStyle)
    {
      objc_msgSend_setLineDashPattern_(self->_connectionLineLayer, v10, 0);
      goto LABEL_9;
    }

    v22 = 584;
LABEL_8:
    objc_msgSend_setStrokeColor_(self->_connectionLineLayer, v10, *(&self->super.super.super.isa + v22));
    goto LABEL_9;
  }

  if (!topoStyle)
  {
    v22 = 592;
    goto LABEL_8;
  }

  v13 = MEMORY[0x277CBEA60];
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, 6);
  v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v15, 6);
  v18 = objc_msgSend_arrayWithObjects_(v13, v17, v14, v16, 0);
  objc_msgSend_setLineDashPattern_(connectionLineLayer, v19, v18);
LABEL_9:
  if (self->super._selectable && objc_msgSend_isSelected(self, v20, v21))
  {
    objc_msgSend_setStrokeColor_(self->_connectionLineLayer, v20, self->_selectedLineColor);
    v24 = 6.0;
    goto LABEL_18;
  }

  if (objc_msgSend_connectionMedium(self, v20, v21) == 1 || objc_msgSend_connectionMedium(self, v25, v26) == 3)
  {
    v28 = self->_connectionLineLayer;
    if (self->super._topoStyle)
    {
      objc_msgSend_setStrokeColor_(self->_connectionLineLayer, v25, self->_lineColorWiFi);
    }

    else
    {
      v29 = MEMORY[0x277CBEA60];
      v30 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, 0);
      v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, 10);
      v34 = objc_msgSend_arrayWithObjects_(v29, v33, v30, v32, 0);
      objc_msgSend_setLineDashPattern_(v28, v35, v34);
    }

LABEL_17:
    v24 = 4.0;
    goto LABEL_18;
  }

  if (objc_msgSend_connectionMedium(self, v25, v27) == 2 || (v24 = 4.0, !objc_msgSend_connectionMedium(self, v23, v48)))
  {
    v49 = self->_connectionLineLayer;
    if (self->super._topoStyle)
    {
      objc_msgSend_setStrokeColor_(v49, v23, self->_lineColorEthernet);
    }

    else
    {
      objc_msgSend_setLineDashPattern_(v49, v23, 0);
    }

    goto LABEL_17;
  }

LABEL_18:
  objc_msgSend_setFillColor_(self->_connectionLineLayer, v23, self->_clearColor);
  objc_msgSend_setLineWidth_(self->_connectionLineLayer, v36, v37, v24);
  objc_msgSend_setLineJoin_(self->_connectionLineLayer, v38, *MEMORY[0x277CDA7A0]);
  objc_msgSend_setPath_(self->_connectionLineLayer, v39, v6);
  if (self->_arrowhead)
  {
    CGContextSaveGState(a4);
    if (self->super._topoStyle)
    {
      v40 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorWiFi;
    }

    else
    {
      v40 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorActive;
    }

    CGContextSetFillColorWithColor(a4, *(&self->super.super.super.isa + *v40));
    CGContextAddPath(a4, self->_arrowhead);
    CGContextFillPath(a4);
    CGContextRestoreGState(a4);
    objc_msgSend_setLineJoin_(self->_connectionLineLayer, v41, *MEMORY[0x277CDA798]);
    self->_arrowhead = 0;
  }

  CGPathRelease(v6);
  if (self->super._topoStyle == 1 && !sub_23EC132F8(v42, v43, v44))
  {
    LODWORD(v47) = 1.0;
    objc_msgSend_setShadowOpacity_(self->_connectionLineLayer, v45, v46, v47);
    objc_msgSend_setShadowOffset_(self->_connectionLineLayer, v50, v51, 0.0, 1.0);
    objc_msgSend_setShadowRadius_(self->_connectionLineLayer, v52, v53, 0.0);
    whiteColor = self->_whiteColor;
    v55 = self->_connectionLineLayer;

    MEMORY[0x2821F9670](v55, sel_setShadowColor_, whiteColor);
  }
}

- (void)setNeedsDisplay
{
  v5.receiver = self;
  v5.super_class = NetTopoDeviceConnectionLayer;
  [(NetTopoDeviceConnectionLayer *)&v5 setNeedsDisplay];
  objc_msgSend_setNeedsDisplay(self->_connectionLineLayer, v3, v4);
}

- (id)describeOne:(id)a3 uiLayer:(id)a4 indent:(unint64_t)a5
{
  v8 = objc_opt_class();
  Name = class_getName(v8);
  v12 = objc_msgSend_retainCount(a4, v10, v11);
  objc_msgSend_appendFormat_(a3, v13, @"<%s: %p retains %d> ("), Name, a4, v12;
  v16 = objc_msgSend_connectionMedium(self, v14, v15);
  v18 = @"unknown medium";
  if (v16 == 2)
  {
    v18 = @"Ethernet";
  }

  if (v16 == 1)
  {
    objc_msgSend_appendString_(a3, v17, @"WiFi");
  }

  else
  {
    objc_msgSend_appendString_(a3, v17, v18);
  }

  objc_msgSend_appendString_(a3, v19, @""));
  return a3;
}

- (NSString)debugDescription
{
  v3 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, &stru_285145FE8);
  objc_msgSend_describeOne_uiLayer_indent_(self, v4, v3, self, 0);
  return v3;
}

@end