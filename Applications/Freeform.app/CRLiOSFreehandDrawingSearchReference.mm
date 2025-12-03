@interface CRLiOSFreehandDrawingSearchReference
- (CRLiOSFreehandDrawingSearchReference)initWithShapeItems:(id)items selectionPath:(id)path unscaledRect:(CGRect)rect isCanvasAnchoredAtRight:(BOOL)right;
- (int64_t)compare:(id)compare;
@end

@implementation CRLiOSFreehandDrawingSearchReference

- (CRLiOSFreehandDrawingSearchReference)initWithShapeItems:(id)items selectionPath:(id)path unscaledRect:(CGRect)rect isCanvasAnchoredAtRight:(BOOL)right
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  firstObject = [items firstObject];
  v17.receiver = self;
  v17.super_class = CRLiOSFreehandDrawingSearchReference;
  v15 = [(CRLCanvasSearchReference *)&v17 initWithBoardItem:firstObject selectionPath:pathCopy];

  if (v15)
  {
    v15->_unscaledRect.origin.x = x;
    v15->_unscaledRect.origin.y = y;
    v15->_unscaledRect.size.width = width;
    v15->_unscaledRect.size.height = height;
    v15->_isCanvasAnchoredAtRight = right;
    [(CRLCanvasSearchReference *)v15 setSearchReferenceLayoutFrame:x, y, width, height];
    [(CRLCanvasSearchReference *)v15 setSearchReferencePoint:x, y];
  }

  return v15;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, compareCopy);
  v7 = v6;
  if (!v6)
  {
    selfCopy = self;
    v24 = &selfCopy;
    goto LABEL_11;
  }

  v8 = v6[15];
  v9 = v6[16];
  v11 = v6[17];
  v10 = v6[18];
  p_unscaledRect = &self->_unscaledRect;
  v46.origin.x = v8;
  v46.origin.y = v9;
  v46.size.width = v11;
  v46.size.height = v10;
  v36 = CGRectUnion(self->_unscaledRect, v46);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v16 = self->_unscaledRect.origin.x;
  v17 = self->_unscaledRect.origin.y;
  v18 = self->_unscaledRect.size.width;
  v19 = self->_unscaledRect.size.height;
  if (self->_isCanvasAnchoredAtRight)
  {
    MaxX = CGRectGetMaxX(*&v16);
    v37.origin.x = p_unscaledRect->origin.x;
    v37.origin.y = self->_unscaledRect.origin.y;
    v37.size.width = self->_unscaledRect.size.width;
    v37.size.height = self->_unscaledRect.size.height;
    MinY = CGRectGetMinY(v37);
    v38.origin.x = v8;
    v38.origin.y = v9;
    v38.size.width = v11;
    v38.size.height = v10;
    MinX = CGRectGetMaxX(v38);
    v39.origin.x = v8;
    v39.origin.y = v9;
    v39.size.width = v11;
    v39.size.height = v10;
    v21 = CGRectGetMinY(v39);
    v22 = x;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v23 = CGRectGetMaxX(v40);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v16);
    v41.origin.x = p_unscaledRect->origin.x;
    v41.origin.y = self->_unscaledRect.origin.y;
    v41.size.width = self->_unscaledRect.size.width;
    v41.size.height = self->_unscaledRect.size.height;
    MinY = CGRectGetMinY(v41);
    v42.origin.x = v8;
    v42.origin.y = v9;
    v42.size.width = v11;
    v42.size.height = v10;
    MinX = CGRectGetMinX(v42);
    v43.origin.x = v8;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v10;
    v21 = CGRectGetMinY(v43);
    v22 = x;
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v23 = CGRectGetMinX(v44);
  }

  v25 = v23;
  v45.origin.x = v22;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v26 = CGRectGetMinY(v45);
  v27 = sub_10011F068(MaxX, MinY, v25, v26);
  v28 = sub_10011F068(MinX, v21, v25, v26);
  if (v27 >= v28)
  {
    if (v27 > v28)
    {
      v29 = 1;
      goto LABEL_12;
    }

    v34.receiver = self;
    v24 = &v34;
LABEL_11:
    v24->super_class = CRLiOSFreehandDrawingSearchReference;
    v29 = [(objc_super *)v24 compare:compareCopy];
    goto LABEL_12;
  }

  v29 = -1;
LABEL_12:

  return v29;
}

@end