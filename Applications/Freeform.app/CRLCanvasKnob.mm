@interface CRLCanvasKnob
- (BOOL)i_userInteractionAllowed;
- (BOOL)isHitByUnscaledPoint:(CGPoint)point inputType:(int64_t)type returningDistance:(double *)distance;
- (BOOL)obscuresKnob:(id)knob;
- (BOOL)overlapsWithKnob:(id)knob;
- (CGPoint)offset;
- (CGPoint)pixelAlignedScaledCanvasCenterPositionFromKnobPosition:(CGPoint)position;
- (CGPoint)position;
- (CGRect)cursorActiveScaledRect;
- (CGRect)frameForIntersection;
- (CGRect)unscaledBoundingBoxOfHitRegionWithAdditionalScale:(double)scale;
- (CRLCanvasKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep;
- (CRLCanvasRenderable)renderable;
- (CRLCanvasRep)rep;
- (CRLCursor)resizeCursor;
- (CRLCursor)rotateCursor;
- (CRLImage)defaultKnobImage;
- (double)p_rotationInDegrees;
- (id)_createImageOrCircleKnobRenderable;
- (id)createKnobRenderable;
- (id)description;
- (id)p_scaledPreciseHitRegionForInputType:(int64_t)type;
- (void)dealloc;
- (void)setHitRegionPath:(id)path;
- (void)updateHitRegionPath;
@end

@implementation CRLCanvasKnob

- (CRLCanvasKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep
{
  y = position.y;
  x = position.x;
  repCopy = rep;
  v20.receiver = self;
  v20.super_class = CRLCanvasKnob;
  v14 = [(CRLCanvasKnob *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    v14->_position.x = x;
    v14->_position.y = y;
    v14->_offset = CGPointZero;
    v14->_offsetValid = 0;
    v14->_radius = radius;
    v14->_tag = tag;
    if (!repCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135773C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101357764();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101357814();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLCanvasKnob initWithType:position:radius:tag:onRep:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnob.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:313 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
    }

    objc_storeWeak(&v15->_rep, repCopy);
    v15->_worksWithStylus = (tag < 0x11) & (0x1FFDEu >> tag);
  }

  return v15;
}

- (void)dealloc
{
  delegate = [(CRLCanvasRenderable *)self->_renderable delegate];

  if (delegate == self)
  {
    [(CRLCanvasRenderable *)self->_renderable setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = CRLCanvasKnob;
  [(CRLCanvasKnob *)&v4 dealloc];
}

- (BOOL)isHitByUnscaledPoint:(CGPoint)point inputType:(int64_t)type returningDistance:(double *)distance
{
  y = point.y;
  x = point.x;
  v10 = [(CRLCanvasKnob *)self rep];
  if (![(CRLCanvasKnob *)self i_userInteractionAllowed])
  {
    goto LABEL_12;
  }

  [(CRLCanvasKnob *)self position];
  [v10 convertNaturalPointToUnscaledCanvas:?];
  v12 = v11;
  v14 = v13;
  hitRegionPath = self->_hitRegionPath;
  if (!hitRegionPath)
  {
    [(CRLCanvasKnob *)self updateHitRegionPath];
    hitRegionPath = self->_hitRegionPath;
  }

  v16 = sub_10011F31C(x, y, v12);
  v18 = v17;
  interactiveCanvasController = [v10 interactiveCanvasController];
  [interactiveCanvasController viewScale];
  v21 = [(CRLBezierPath *)hitRegionPath containsPoint:sub_10011F340(v16, v18, v20)];

  if (distance)
  {
    *distance = sub_10011F068(v12, v14, x, y);
  }

  if (v21)
  {
    if ([(CRLCanvasKnob *)self shouldDisplayDirectlyOverRep])
    {
      interactiveCanvasController2 = [v10 interactiveCanvasController];
      v23 = [interactiveCanvasController2 hitRep:{x, y}];

      v24 = 1;
      if (v23 && v23 != v10)
      {
        canvas = [v10 canvas];
        allRepsOrdered = [canvas allRepsOrdered];

        v27 = [allRepsOrdered indexOfObject:v23];
        v24 = v27 < [allRepsOrdered indexOfObject:v10];
      }
    }

    else
    {
      v24 = 1;
    }

    if ((type & 0xFFFFFFFFFFFFFFFDLL) == 0 && v24)
    {
      if ([v10 canUseSpecializedHitRegionForKnob:self])
      {
        v29 = [(CRLCanvasKnob *)self p_scaledPreciseHitRegionForInputType:type];
        interactiveCanvasController3 = [v10 interactiveCanvasController];
        [interactiveCanvasController3 viewScale];
        LOBYTE(v24) = [v29 containsPoint:{sub_10011F340(v16, v18, v31)}];
      }

      else
      {
        LOBYTE(v24) = 1;
      }
    }
  }

  else
  {
LABEL_12:
    LOBYTE(v24) = 0;
  }

  return v24;
}

- (id)p_scaledPreciseHitRegionForInputType:(int64_t)type
{
  [(CRLCanvasKnob *)self radiusForPreciseHitRegionWithInputType:type];
  v4 = -v3;

  return [CRLBezierPath bezierPathWithOvalInRect:v4];
}

- (CRLImage)defaultKnobImage
{
  type = self->_type;
  if (type > 3)
  {
    if (type == 4)
    {
      v3 = @"sf-ios-canvas-knob-locked";
      goto LABEL_13;
    }

    if (type == 5)
    {
      v3 = @"sf-ios-canvas-knob-yellow";
      goto LABEL_13;
    }

LABEL_8:
    v4 = self->_tag - 12;
    v5 = objc_opt_class();
    if (v4 > 4)
    {
      [v5 defaultSelectionKnobImage];
    }

    else
    {
      [v5 greenKnobImage];
    }
    v6 = ;
    goto LABEL_14;
  }

  if (type == 2)
  {
    v3 = @"sf-ios-canvas-knob-text";
    goto LABEL_13;
  }

  if (type != 3)
  {
    goto LABEL_8;
  }

  v3 = @"sf-ios-canvas-knob-green";
LABEL_13:
  v6 = [CRLImage imageNamed:v3];
LABEL_14:

  return v6;
}

- (CRLCanvasRenderable)renderable
{
  renderable = self->_renderable;
  if (!renderable)
  {
    createKnobRenderable = [(CRLCanvasKnob *)self createKnobRenderable];
    v5 = self->_renderable;
    self->_renderable = createKnobRenderable;

    [(CRLCanvasKnob *)self didCreateKnobRenderable];
    renderable = self->_renderable;
  }

  return renderable;
}

- (id)_createImageOrCircleKnobRenderable
{
  knobImage = [(CRLCanvasKnob *)self knobImage];
  if (knobImage)
  {
    v4 = +[CRLCanvasRenderable renderable];
    [knobImage size];
    [v4 setBounds:sub_10011ECB4()];
    v5 = [(CRLCanvasKnob *)self rep];
    canvas = [v5 canvas];
    [canvas contentsScale];
    [v4 setContents:{objc_msgSend(knobImage, "CGImageForContentsScale:")}];
  }

  else
  {
    canvas = +[CRLCanvasShapeRenderable renderable];
    Mutable = CGPathCreateMutable();
    [(CRLCanvasKnob *)self radius];
    v9 = v8 + v8;
    y = CGPointZero.y;
    [canvas setBounds:{CGPointZero.x, y, v9, v9}];
    v14.origin.x = CGPointZero.x;
    v14.origin.y = y;
    v14.size.width = v9;
    v14.size.height = v9;
    CGPathAddEllipseInRect(Mutable, 0, v14);
    [canvas setPath:Mutable];
    CGPathRelease(Mutable);
    v11 = +[CRLColor whiteColor];
    [canvas setFillColor:{objc_msgSend(v11, "CGColor")}];

    v5 = +[CRLColor blackColor];
    [canvas setStrokeColor:{objc_msgSend(v5, "CGColor")}];
    v4 = canvas;
  }

  return v4;
}

- (id)createKnobRenderable
{
  _createImageOrCircleKnobRenderable = [(CRLCanvasKnob *)self _createImageOrCircleKnobRenderable];
  if (self->_tag - 12 <= 4)
  {
    [(CRLCanvasRenderable *)self->_renderable zPosition];
    [_createImageOrCircleKnobRenderable setZPosition:v4 + 1.0];
  }

  return _createImageOrCircleKnobRenderable;
}

- (CGRect)unscaledBoundingBoxOfHitRegionWithAdditionalScale:(double)scale
{
  v5 = [(CRLCanvasKnob *)self rep];
  if (!self->_hitRegionPath)
  {
    [(CRLCanvasKnob *)self updateHitRegionPath];
  }

  [(CRLCanvasKnob *)self position];
  [v5 convertNaturalPointToUnscaledCanvas:?];
  v7 = v6;
  v9 = v8;
  canvas = [v5 canvas];
  [canvas viewScale];
  v12 = 1.0 / v11 * scale;

  [(CRLBezierPath *)self->_hitRegionPath bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  CGAffineTransformMakeScale(&v29, v12, v12);
  v30.origin.x = v14;
  v30.origin.y = v16;
  v30.size.width = v18;
  v30.size.height = v20;
  v31 = CGRectApplyAffineTransform(v30, &v29);
  v32 = CGRectOffset(v31, v7, v9);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)i_userInteractionAllowed
{
  v3 = [(CRLCanvasKnob *)self rep];
  interactiveCanvasController = [v3 interactiveCanvasController];
  if (-[CRLCanvasKnob worksWhenRepLocked](self, "worksWhenRepLocked") || ([v3 isLocked] & 1) == 0)
  {
    if ([(CRLCanvasKnob *)self worksWhenDocumentIsSharedReadOnly])
    {
      v5 = 1;
    }

    else
    {
      v5 = [interactiveCanvasController documentIsSharedReadOnly] ^ 1;
    }
  }

  else
  {
    v5 = 0;
  }

  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  if (v5)
  {
    if ([(CRLCanvasKnob *)self worksWhenInMediaBrowsingMode])
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = [asiOSCVC inMediaBrowsingMode] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (double)p_rotationInDegrees
{
  v3 = [(CRLCanvasKnob *)self rep];
  v4 = [(CRLCanvasKnob *)self tag];
  layout = [v3 layout];
  v6 = layout;
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  v7 = sub_1001399E4(&v13);

  if (v7)
  {
    v4 = sub_100346034(v4);
  }

  v8 = 0.0;
  if (v4 - 1 <= 0xB)
  {
    v8 = dbl_101464E90[v4 - 1];
  }

  [v3 additionalRotationForKnobOrientation];
  sub_1001208E0(v8 + v9);
  v11 = v10;

  return v11;
}

- (void)updateHitRegionPath
{
  hitRegionPath = self->_hitRegionPath;
  self->_hitRegionPath = 0;

  v4 = [(CRLCanvasKnob *)self rep];
  [(CRLCanvasKnob *)self radius];
  v6 = v5;
  if (([v4 canUseSpecializedHitRegionForKnob:self] & 1) == 0)
  {
    goto LABEL_26;
  }

  [v4 boundsForStandardKnobs];
  v8 = v7;
  v10 = v9;
  interactiveCanvasController = [v4 interactiveCanvasController];
  [interactiveCanvasController viewScale];
  v13 = v12;

  interactiveCanvasController2 = [v4 interactiveCanvasController];
  [interactiveCanvasController2 viewScale];
  v16 = v6 / v15 * 10.0;

  if ([(CRLCanvasKnob *)self tag]>= 0xC && [(CRLCanvasKnob *)self tag]<= 0x10)
  {
    if (v8 < v16 || v10 < v16)
    {
      v18 = -15.0;
      v19 = -15.0;
      v20 = 30.0;
      v21 = 30.0;
LABEL_27:
      v24 = [CRLBezierPath bezierPathWithOvalInRect:v18, v19, v20, v21];
      goto LABEL_28;
    }

LABEL_26:
    v18 = -(v6 + v6);
    v20 = v6 + v6 + v6 + v6;
    v19 = v18;
    v21 = v20;
    goto LABEL_27;
  }

  v22 = v6 / v13 + v6 / v13;
  if (v8 < v22 || v10 < v22)
  {
    v24 = [CRLBezierPath bezierPathWithOvalInRect:-15.0, -15.0, 30.0, 45.0];
    v25 = v8;
    v26 = v10;
    memset(&v37.c, 0, 32);
    if (fminf(v25, v26) >= 30.0)
    {
      v27 = 3.75;
    }

    else
    {
      v27 = 7.5;
    }

    *&v37.a = 0uLL;
    [(CRLCanvasKnob *)self p_rotationInDegrees];
    CGAffineTransformMakeRotation(&v37, v28 * 0.0174532925);
    memset(&v36, 0, sizeof(v36));
    CGAffineTransformMakeTranslation(&v36, v37.tx + v27 * v37.c + v37.a * 0.0, v37.ty + v27 * v37.d + v37.b * 0.0);
    t1 = v37;
    v33 = v36;
    CGAffineTransformConcat(&v35, &t1, &v33);
    v29 = &v35;
  }

  else
  {
    if (v8 >= v16 && v10 >= v16)
    {
      goto LABEL_26;
    }

    v24 = [CRLBezierPath bezierPathWithOvalInRect:-v6, -v6, v6 + v6, v6 * 3.0];
    memset(&v37, 0, sizeof(v37));
    [(CRLCanvasKnob *)self p_rotationInDegrees];
    CGAffineTransformMakeRotation(&v37, v31 * 0.0174532925);
    v36 = v37;
    v29 = &v36;
  }

  [(CRLBezierPath *)v24 transformUsingAffineTransform:v29];
LABEL_28:
  v32 = self->_hitRegionPath;
  self->_hitRegionPath = v24;
}

- (void)setHitRegionPath:(id)path
{
  if (self->_hitRegionPath != path)
  {
    v5 = [path copy];
    hitRegionPath = self->_hitRegionPath;
    self->_hitRegionPath = v5;
  }
}

- (CRLCursor)resizeCursor
{
  [(CRLCanvasKnob *)self p_rotationInDegrees];
  v4 = sub_100345D04(v3) - 1;
  if (v4 <= 8 && ((0x1EFu >> v4) & 1) != 0)
  {
    v5 = qword_101464EF0[v4];
    [(CRLCanvasKnob *)self cursorActiveScaledRect];
    v6 = [CRLCursor cursorForResizeType:v5 activeScaledRect:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)cursorActiveScaledRect
{
  v3 = [(CRLCanvasKnob *)self rep];
  hitRegionPath = [(CRLCanvasKnob *)self hitRegionPath];
  [hitRegionPath bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if ([v3 canUseSpecializedHitRegionForKnob:self])
  {
    v13 = [(CRLCanvasKnob *)self p_scaledPreciseHitRegionForInputType:0];
    [v13 bounds];
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  interactiveCanvasController = [v3 interactiveCanvasController];
  [(CRLCanvasKnob *)self position];
  [v3 convertNaturalPointToUnscaledCanvas:?];
  [interactiveCanvasController convertUnscaledToBoundsPoint:?];
  v20 = sub_10011F334(v6, v8, v19);
  v22 = v21;

  v23 = v20;
  v24 = v22;
  v25 = v10;
  v26 = v12;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CRLCursor)rotateCursor
{
  [(CRLCanvasKnob *)self p_rotationInDegrees];
  v4 = sub_100345D04(v3) - 1;
  if (v4 <= 8 && ((0x1EFu >> v4) & 1) != 0)
  {
    v5 = qword_101464F38[v4];
    [(CRLCanvasKnob *)self cursorActiveScaledRect];
    v6 = [CRLCursor cursorForRotateType:v5 activeScaledRect:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)frameForIntersection
{
  renderable = [(CRLCanvasKnob *)self renderable];
  [renderable frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)overlapsWithKnob:(id)knob
{
  knobCopy = knob;
  [(CRLCanvasKnob *)self frameForIntersection];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [knobCopy frameForIntersection];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;

  return CGRectIntersectsRect(*&v21, *&v25);
}

- (BOOL)obscuresKnob:(id)knob
{
  knobCopy = knob;
  renderable = [knobCopy renderable];

  if (renderable)
  {
    renderable2 = [(CRLCanvasKnob *)self renderable];
    [renderable2 zPosition];
    v8 = v7;
    renderable3 = [knobCopy renderable];
    [renderable3 zPosition];
    v11 = v8 > v10;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnob *)self tag];
  [(CRLCanvasKnob *)self position];
  v5 = NSStringFromCGPoint(v9);
  v6 = [NSString stringWithFormat:@"<%@: %p tag=%tu position=%@>", v3, self, v4, v5];

  return v6;
}

- (CGPoint)pixelAlignedScaledCanvasCenterPositionFromKnobPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v6 = [(CRLCanvasKnob *)self rep];
  interactiveCanvasController = [v6 interactiveCanvasController];
  [v6 convertKnobPositionToUnscaledCanvas:{x, y}];
  [interactiveCanvasController convertUnscaledToBoundsPoint:?];
  v9 = v8;
  v11 = v10;
  if ([(CRLCanvasKnob *)self shouldDisplayDirectlyOverRep])
  {
    v12 = [(CRLCanvasKnob *)self rep];
    parentRep = [v12 parentRep];
    [parentRep layerFrameInScaledCanvas];
    v9 = sub_10011F31C(v9, v11, v14);
    v11 = v15;
  }

  renderable = [(CRLCanvasKnob *)self renderable];
  [renderable bounds];
  v21 = sub_100120414(v17, v18, v19, v20);
  v22 = sub_10011F31C(v9, v11, v21);
  v24 = v23;
  canvas = [interactiveCanvasController canvas];
  [canvas contentsScale];
  v27 = sub_10012218C(v22, v24, v26);
  v29 = sub_10011F334(v27, v28, v21);
  v31 = v30;

  v32 = v29;
  v33 = v31;
  result.y = v33;
  result.x = v32;
  return result;
}

- (CRLCanvasRep)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end