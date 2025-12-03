@interface CRLInteractiveCanvasRepContentPlatformViewPile
- (BOOL)isContentEqualToContentOfRepContentPile:(id)pile;
- (CGRect)contentPlatformViewFrame;
- (CGRect)contentPlatformViewMaskRect;
- (CRLInteractiveCanvasRepContentPlatformViewPile)initWithRep:(id)rep kind:(unint64_t)kind;
- (CRLPlatformView)contentPlatformView;
- (NSString)description;
@end

@implementation CRLInteractiveCanvasRepContentPlatformViewPile

- (CRLInteractiveCanvasRepContentPlatformViewPile)initWithRep:(id)rep kind:(unint64_t)kind
{
  repCopy = rep;
  v11.receiver = self;
  v11.super_class = CRLInteractiveCanvasRepContentPlatformViewPile;
  v8 = [(CRLInteractiveCanvasRepContentPlatformViewPile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rep, rep);
    v9->_kind = kind;
  }

  return v9;
}

- (NSString)description
{
  kind = self->_kind;
  if (kind > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_1018688E0 + kind);
  }

  return [NSString stringWithFormat:@"<%@ %p rep=%@ kind=%@>", objc_opt_class(), self, self->_rep, v3];
}

- (BOOL)isContentEqualToContentOfRepContentPile:(id)pile
{
  if (self == pile)
  {
    return 1;
  }

  pileCopy = pile;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, pileCopy);

  v7 = v6 && self->_rep == *(v6 + 8) && self->_kind == *(v6 + 16);
  return v7;
}

- (CRLPlatformView)contentPlatformView
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138352C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101383540();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013835D0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentPlatformViewPile contentPlatformView]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:306 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  additionalPlatformViewOverRenderable = 0;
  kind = self->_kind;
  if (kind > 1)
  {
    if (kind == 2)
    {
      additionalPlatformViewOverRenderable = [(CRLCanvasRep *)self->_rep additionalPlatformViewOverRenderable];
    }

    else if (kind == 3)
    {
      additionalPlatformViewOverRenderable = [(CRLCanvasRep *)self->_rep additionalPlatformViewOverChildRenderables];
    }
  }

  else if (kind)
  {
    if (kind == 1)
    {
      additionalPlatformViewOverRenderable = [(CRLCanvasRep *)self->_rep contentPlatformView];
    }
  }

  else
  {
    additionalPlatformViewOverRenderable = [(CRLCanvasRep *)self->_rep additionalPlatformViewUnderRenderable];
  }

  return additionalPlatformViewOverRenderable;
}

- (CGRect)contentPlatformViewFrame
{
  [(CRLCanvasRep *)self->_rep layerFrameInScaledCanvas];

  return CGRectIntegral(*&v2);
}

- (CGRect)contentPlatformViewMaskRect
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  parentRep = [(CRLCanvasRep *)self->_rep parentRep];
  if (parentRep)
  {
    v7 = parentRep;
    do
    {
      if ([v7 masksToBounds])
      {
        [v7 layerFrameInScaledCanvas];
        v8 = v21.origin.x;
        v9 = v21.origin.y;
        v10 = v21.size.width;
        v11 = v21.size.height;
        v22 = CGRectIntegral(v21);
        v19 = v22.origin.y;
        v20 = v22.origin.x;
        v17 = v22.size.height;
        v18 = v22.size.width;
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        if (CGRectIsNull(v22))
        {
          height = v11;
          width = v10;
          y = v9;
          x = v8;
        }

        else
        {
          v23.origin.x = x;
          v23.origin.y = y;
          v23.size.width = width;
          v23.size.height = height;
          v26.origin.y = v19;
          v26.origin.x = v20;
          v26.size.height = v17;
          v26.size.width = v18;
          v24 = CGRectIntersection(v23, v26);
          x = v24.origin.x;
          y = v24.origin.y;
          width = v24.size.width;
          height = v24.size.height;
        }
      }

      parentRep2 = [v7 parentRep];

      v7 = parentRep2;
    }

    while (parentRep2);
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end