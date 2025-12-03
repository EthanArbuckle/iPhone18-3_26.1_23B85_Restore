@interface CRLWPShapeLayout
- (BOOL)autosizes;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)p_shouldCreateTextLayout;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shrinkTextToFit;
- (CGAffineTransform)autosizedTransform;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)autosizePositionOffset;
- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)width height:(BOOL)height;
- (CGRect)autosizedFrameFor:(id)for textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameFor:(id)for;
- (CGRect)p_rectInRootForSelectionPath:(id)path useParagraphModeRects:(BOOL)rects;
- (CGRect)rectInRootForSelectionPath:(id)path;
- (CGRect)rectInRootForZoomingToSelectionPath:(id)path;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path;
- (CRLWPPadding)layoutMargins;
- (CRLWPShapeLayout)initWithInfo:(id)info;
- (CRLWrapSegments)interiorWrapSegments;
- (Class)repClassFor:(id)for;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (_TtC8Freeform14CRLWPShapeItem)wpShapeInfo;
- (double)defaultFontSize;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (double)viewScaleForZoomingToSelectionPath:(id)path targetPointSize:(double)size;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)bidirectionalSizeDependentLayouts;
- (id)captureDynamicInfoGeometryToBeginDynamicOperation;
- (id)childInfosForChildLayouts;
- (id)childSearchTargets;
- (id)commandsToSetFontSizesWithFontRangeToSizeDict:(id)dict scale:(double)scale;
- (id)dependentLayouts;
- (id)dependentsOf:(id)of;
- (id)interiorWrapSegmentsFor:(id)for;
- (id)makeStorageRangeToFontSizeDict;
- (id)pathSource;
- (id)textWrapper;
- (int64_t)verticalAlignmentFor:(id)for;
- (unint64_t)autosizeFlagsFor:(id)for;
- (void)createTextLayoutForScribble:(BOOL)scribble;
- (void)endDynamicOperation;
- (void)invalidatePath;
- (void)invalidateSize;
- (void)processChangedProperty:(unint64_t)property;
- (void)setGeometry:(id)geometry;
- (void)setSupportsInstructionalText:(BOOL)text;
- (void)t_invalidateTextLayoutAfterPropertyChanged:(unint64_t)changed;
- (void)takeFreeTransformFromTracker:(id)tracker;
- (void)takeSizeFromTracker:(id)tracker;
- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document;
- (void)updateChildrenFromInfo;
@end

@implementation CRLWPShapeLayout

- (CRLWPShapeLayout)initWithInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101391188();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139119C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101391224();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPShapeLayout initWithInfo:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:25 isFatal:0 description:"Info is wrong class for layout."];
  }

  v16.receiver = self;
  v16.super_class = CRLWPShapeLayout;
  v8 = [(CRLShapeLayout *)&v16 initWithInfo:infoCopy];
  v9 = v8;
  if (v8)
  {
    wpShapeInfo = [(CRLWPShapeLayout *)v8 wpShapeInfo];
    text = [wpShapeInfo text];

    if (!text)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139124C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101391274();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101391324();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLWPShapeLayout initWithInfo:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:27 isFatal:0 description:"invalid nil value for '%{public}s'", "self.wpShapeInfo.text"];
    }
  }

  return v9;
}

- (_TtC8Freeform14CRLWPShapeItem)wpShapeInfo
{
  v3 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (void)setSupportsInstructionalText:(BOOL)text
{
  textCopy = text;
  BYTE4(self->super.mDynamicPatternOffsetsBySubpath) = text;
  textLayout = [(CRLWPShapeLayout *)self textLayout];
  v6 = textLayout;
  if (!textCopy)
  {
    storage = [textLayout storage];
    v9 = [storage length];

    if (v9)
    {
      return;
    }

    [*(&self->_storageRangeToFontSizeDict + 3) removeFromParent];
    v7 = *(&self->_storageRangeToFontSizeDict + 3);
    *(&self->_storageRangeToFontSizeDict + 3) = 0;
    goto LABEL_10;
  }

  if (v6)
  {
    textLayout2 = [(CRLWPShapeLayout *)self textLayout];
    [textLayout2 invalidateTextLayout];
    v7 = textLayout2;
LABEL_10:

    return;
  }

  [(CRLWPShapeLayout *)self createTextLayout];
}

- (id)childInfosForChildLayouts
{
  v8.receiver = self;
  v8.super_class = CRLWPShapeLayout;
  childInfosForChildLayouts = [(CRLCanvasLayout *)&v8 childInfosForChildLayouts];
  v4 = [childInfosForChildLayouts mutableCopy];

  if ([(CRLWPShapeLayout *)self p_shouldCreateTextLayout]&& *(&self->_storageRangeToFontSizeDict + 3))
  {
    wpShapeInfo = [(CRLWPShapeLayout *)self wpShapeInfo];
    text = [wpShapeInfo text];
    [v4 addObject:text];
  }

  return v4;
}

- (void)updateChildrenFromInfo
{
  [(CRLWPShapeLayout *)self createTextLayout];
  v3.receiver = self;
  v3.super_class = CRLWPShapeLayout;
  [(CRLCanvasLayout *)&v3 updateChildrenFromInfo];
}

- (void)createTextLayoutForScribble:(BOOL)scribble
{
  if (!*(&self->_storageRangeToFontSizeDict + 3))
  {
    scribbleCopy = scribble;
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];

    canvasController = [canvas canvasController];
    editorController = [canvasController editorController];
    selectionPath = [editorController selectionPath];

    v8 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];
    v9 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];
    v10 = 0;
    if (v9 && v8)
    {
      boardItems = [v8 boardItems];
      boardItem = [(CRLBoardItemLayout *)self boardItem];
      if ([boardItems containsObject:boardItem])
      {
        v13 = [selectionPath indexForSelection:v9];
        v10 = v13 > [selectionPath indexForSelection:v8];
      }

      else
      {
        v10 = 0;
      }
    }

    v14 = [_TtC8Freeform11CRLWPLayout alloc];
    wpShapeInfo = [(CRLWPShapeLayout *)self wpShapeInfo];
    text = [wpShapeInfo text];
    v17 = [(CRLWPLayout *)v14 initWithInfo:text];

    if (v10 || -[CRLWPShapeLayout supportsInstructionalText](self, "supportsInstructionalText") || -[CRLWPShapeLayout autosizeFlagsFor:](self, "autosizeFlagsFor:", v17) || (-[CRLWPShapeLayout wpShapeInfo](self, "wpShapeInfo"), v18 = objc_claimAutoreleasedReturnValue(), [v18 text], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v18, v20) || scribbleCopy)
    {
      if (!*(&self->_storageRangeToFontSizeDict + 3))
      {
        objc_storeStrong((&self->_storageRangeToFontSizeDict + 3), v17);
        [(CRLCanvasAbstractLayout *)self insertChild:*(&self->_storageRangeToFontSizeDict + 3) atIndex:0];
        [(CRLWPShapeLayout *)self p_invalidateTextLayout];
      }
    }
  }
}

- (BOOL)p_shouldCreateTextLayout
{
  if ([(CRLShapeLayout *)self pathIsLineSegment])
  {
    return 0;
  }

  shapeInfo = [(CRLShapeLayout *)self shapeInfo];
  isFreehandDrawingShape = [shapeInfo isFreehandDrawingShape];

  return isFreehandDrawingShape ^ 1;
}

- (id)dependentLayouts
{
  v11.receiver = self;
  v11.super_class = CRLWPShapeLayout;
  dependentLayouts = [(CRLCanvasLayout *)&v11 dependentLayouts];
  textLayout = [(CRLWPShapeLayout *)self textLayout];
  if (textLayout)
  {
    v5 = textLayout;
    autosizes = [(CRLWPShapeLayout *)self autosizes];

    if ((autosizes & 1) == 0)
    {
      if (dependentLayouts)
      {
        v7 = [dependentLayouts mutableCopy];
      }

      else
      {
        v7 = +[NSMutableArray array];
      }

      v8 = v7;
      textLayout2 = [(CRLWPShapeLayout *)self textLayout];
      [v8 addObject:textLayout2];

      dependentLayouts = v8;
    }
  }

  return dependentLayouts;
}

- (CRLWrapSegments)interiorWrapSegments
{
  v3 = *(&self->_supportsInstructionalText + 2);
  if (!v3)
  {
    wpShapeInfo = [(CRLWPShapeLayout *)self wpShapeInfo];
    [wpShapeInfo textInset];
    v6 = v5;

    shapeInfo = [(CRLShapeLayout *)self shapeInfo];
    stroke = [shapeInfo stroke];

    if (stroke && [stroke shouldRender])
    {
      [stroke width];
      v6 = v9 * 0.5 + v6;
      join = [stroke join];
    }

    else
    {
      join = 0;
    }

    pathSource = [(CRLWPShapeLayout *)self pathSource];
    v12 = [pathSource interiorWrapPathForInset:join joinStyle:v6];

    v13 = [[CRLWrapSegments alloc] initWithPath:v12];
    v14 = *(&self->_supportsInstructionalText + 2);
    *(&self->_supportsInstructionalText + 2) = v13;

    v3 = *(&self->_supportsInstructionalText + 2);
  }

  return v3;
}

- (id)pathSource
{
  if (*(&self->_storageRangeToFontSizeDict + 3) && [(CRLWPShapeLayout *)self autosizes])
  {
    geometry = [*(&self->_storageRangeToFontSizeDict + 3) geometry];
    [geometry size];
    v5 = v4;
    v7 = v6;

    shapeInfo = [(CRLShapeLayout *)self shapeInfo];
    stroke = [shapeInfo stroke];

    if (stroke && [stroke shouldRender])
    {
      [stroke width];
      v5 = v5 + v10;
      [stroke width];
      v7 = v7 + v11;
    }

    shapeInfo2 = [(CRLShapeLayout *)self shapeInfo];
    pathSource = [shapeInfo2 pathSource];
    pathSource2 = [pathSource copy];

    [pathSource2 setNaturalSize:{v5, v7}];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CRLWPShapeLayout;
    pathSource2 = [(CRLShapeLayout *)&v16 pathSource];
  }

  return pathSource2;
}

- (void)processChangedProperty:(unint64_t)property
{
  v5.receiver = self;
  v5.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v5 processChangedProperty:?];
  if (property - 29 <= 1)
  {
    if ([(CRLWPShapeLayout *)self autosizes])
    {
      [(CRLWPShapeLayout *)self invalidateSize];
    }

    if (property == 30 && (([(CRLWPShapeLayout *)self p_shouldCreateTextLayout]^ (*(&self->_storageRangeToFontSizeDict + 3) == 0)) & 1) == 0)
    {
      [(CRLCanvasLayout *)self invalidateChildren];
    }
  }

  [(CRLWPShapeLayout *)self t_invalidateTextLayoutAfterPropertyChanged:property];
}

- (void)t_invalidateTextLayoutAfterPropertyChanged:(unint64_t)changed
{
  if (changed - 29 < 7 || changed == 21 || changed == 7)
  {
    [(CRLWPShapeLayout *)self p_invalidateTextLayout];
  }
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  if ([(CRLWPShapeLayout *)self autosizes])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLWPShapeLayout;
  return [(CRLShapeLayout *)&v4 canAspectRatioLockBeChangedByUser];
}

- (BOOL)resizeMayChangeAspectRatio
{
  if ([(CRLWPShapeLayout *)self autosizes])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CRLWPShapeLayout;
  return [(CRLCanvasLayout *)&v4 resizeMayChangeAspectRatio];
}

- (void)setGeometry:(id)geometry
{
  v22.receiver = self;
  v22.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v22 setGeometry:geometry];
  if (*(&self->_storageRangeToFontSizeDict + 3) && [(CRLWPShapeLayout *)self autosizes])
  {
    geometry = [*(&self->_storageRangeToFontSizeDict + 3) geometry];
    [geometry size];
    v6 = v5;
    v8 = v7;

    [(CRLShapeLayout *)self pathBounds];
    v10 = v9;
    v12 = v11;
    v13 = -v9;
    v14 = -v11;
    shapeInfo = [(CRLShapeLayout *)self shapeInfo];
    stroke = [shapeInfo stroke];

    if (stroke)
    {
      if ([stroke shouldRender])
      {
        [stroke width];
        v18 = v17 * 0.5;
        v13 = v18 - v10;
        v14 = v18 - v12;
      }
    }

    v19 = [CRLCanvasLayoutGeometry alloc];
    CGAffineTransformMakeTranslation(&v21, v13, v14);
    v20 = [(CRLCanvasLayoutGeometry *)v19 initWithSize:&v21 transform:v6, v8];
    [*(&self->_storageRangeToFontSizeDict + 3) setGeometry:v20];
  }
}

- (void)invalidateSize
{
  v5.receiver = self;
  v5.super_class = CRLWPShapeLayout;
  [(CRLCanvasLayout *)&v5 invalidateSize];
  if (*(&self->_storageRangeToFontSizeDict + 3))
  {
    v3 = [(CRLWPShapeLayout *)self autosizeFlagsFor:?];
    if (v3)
    {
      v4 = (v3 & 0xF) == 15;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      [(CRLWPShapeLayout *)self invalidatePath];
    }
  }
}

- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document
{
  documentCopy = document;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = CRLWPShapeLayout;
  v9 = *&transform->c;
  v18[0] = *&transform->a;
  v18[1] = v9;
  v18[2] = *&transform->tx;
  [(CRLShapeLayout *)&v19 transferLayoutGeometryToInfo:infoCopy withAdditionalTransform:v18 assertIfInDocument:documentCopy];
  v10 = objc_opt_class();
  v11 = sub_100013F00(v10, infoCopy);
  if ([(CRLWPShapeLayout *)self autosizes])
  {
    [(CRLWPShapeLayout *)self autosizePositionOffset];
    v13 = v12;
    geometry = [infoCopy geometry];
    v15 = [geometry mutableCopy];

    [v15 position];
    [v15 setPosition:{sub_10011F31C(v16, v17, v13)}];
    [v11 setGeometry:v15];
  }
}

- (CGAffineTransform)computeLayoutTransform
{
  if ([(CRLWPShapeLayout *)self autosizes])
  {
    memset(&v17, 0, sizeof(v17));
    [(CRLWPShapeLayout *)self autosizedTransform];
    layoutInfoGeometry = [(CRLShapeLayout *)self layoutInfoGeometry];
    [layoutInfoGeometry position];
    v7 = v6;
    v9 = v8;

    memset(&v16, 0, sizeof(v16));
    CGAffineTransformMakeTranslation(&t2, v7, v9);
    t1 = v17;
    CGAffineTransformConcat(&v16, &t1, &t2);
    [(CRLShapeLayout *)self pathBounds];
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    t2 = v16;
    return CGAffineTransformTranslate(retstr, &t2, v10, v11);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CRLWPShapeLayout;
    return [(CGAffineTransform *)&v13 computeLayoutTransform];
  }
}

- (CGAffineTransform)autosizedTransform
{
  layoutInfoGeometry = [(CRLShapeLayout *)self layoutInfoGeometry];
  [(CRLWPShapeLayout *)self autosizedTransformForInfoGeometry:layoutInfoGeometry];

  return result;
}

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry
{
  v13 = a4;
  v6 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v8 = sub_100014370(v6, info);

  if (v8)
  {
    [(CRLShapeLayout *)self pathBoundsWithoutStroke];
    [v8 autosizedTransformForInfoGeometry:v13 size:{v9, v10}];
  }

  else
  {
    v11 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v11;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  return result;
}

- (CGPoint)autosizePositionOffset
{
  [(CRLWPShapeLayout *)self autosizePositionOffsetForFixedWidth:1 height:1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)width height:(BOOL)height
{
  heightCopy = height;
  widthCopy = width;
  [(CRLWPShapeLayout *)self autosizedTransform];
  [(CRLShapeLayout *)self pathBoundsWithoutStroke];
  v8 = v7;
  v10 = v9;
  layoutInfoGeometry = [(CRLShapeLayout *)self layoutInfoGeometry];
  v12 = [layoutInfoGeometry mutableCopy];

  [v12 size];
  v14 = v13;
  v16 = v15;
  if (([v12 widthValid] & 1) == 0 && widthCopy)
  {
    [v12 setWidthValid:1];
    v14 = v8;
  }

  if (([v12 heightValid] & 1) == 0 && heightCopy)
  {
    [v12 setHeightValid:1];
    v16 = v10;
  }

  [v12 setSize:{v14, v16}];
  [(CRLWPShapeLayout *)self autosizedTransformForInfoGeometry:v12];
  v17 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, CGPointZero.y), 0, CGPointZero.x));
  v18 = sub_10011F31C(v17.f64[0], v17.f64[1], v17.f64[0]);
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)invalidatePath
{
  v4.receiver = self;
  v4.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v4 invalidatePath];
  [(CRLCanvasLayout *)self invalidateChildren];
  v3 = *(&self->_supportsInstructionalText + 2);
  *(&self->_supportsInstructionalText + 2) = 0;
}

- (id)bidirectionalSizeDependentLayouts
{
  v9.receiver = self;
  v9.super_class = CRLWPShapeLayout;
  bidirectionalSizeDependentLayouts = [(CRLCanvasLayout *)&v9 bidirectionalSizeDependentLayouts];
  v4 = [(CRLWPShapeLayout *)self autosizeFlagsFor:*(&self->_storageRangeToFontSizeDict + 3)];
  if ((~v4 & 0xF) != 0 && v4 && *(&self->_storageRangeToFontSizeDict + 3) != 0)
  {
    if ([bidirectionalSizeDependentLayouts count])
    {
      v10 = *(&self->_storageRangeToFontSizeDict + 3);
      v6 = [NSArray arrayWithObjects:&v10 count:1];
      v7 = [v6 arrayByAddingObjectsFromArray:bidirectionalSizeDependentLayouts];

      bidirectionalSizeDependentLayouts = v6;
    }

    else
    {
      v11 = *(&self->_storageRangeToFontSizeDict + 3);
      v7 = [NSArray arrayWithObjects:&v11 count:1];
    }

    bidirectionalSizeDependentLayouts = v7;
  }

  return bidirectionalSizeDependentLayouts;
}

- (id)textWrapper
{
  if ([(CRLWPShapeLayout *)self autosizes])
  {
    v2 = 0;
  }

  else
  {
    v2 = +[CRLWPInteriorTextWrapController sharedInteriorTextWrapController];
  }

  return v2;
}

- (CGRect)rectInRootForSelectionPath:(id)path
{
  [(CRLWPShapeLayout *)self p_rectInRootForSelectionPath:path useParagraphModeRects:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootForZoomingToSelectionPath:(id)path
{
  [(CRLWPShapeLayout *)self p_rectInRootForSelectionPath:path useParagraphModeRects:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path
{
  geometryInRoot = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  [geometryInRoot frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)viewScaleForZoomingToSelectionPath:(id)path targetPointSize:(double)size
{
  pathCopy = path;
  v7 = [pathCopy mostSpecificSelectionOfClass:objc_opt_class()];

  v8 = 0.0;
  if (v7)
  {
    makeStorageRangeToFontSizeDict = [(CRLWPShapeLayout *)self makeStorageRangeToFontSizeDict];
    if ([makeStorageRangeToFontSizeDict count])
    {
      allValues = [makeStorageRangeToFontSizeDict allValues];
      firstObject = [allValues firstObject];
      [firstObject floatValue];
      v8 = v12;
    }

    else
    {
      [(CRLWPShapeLayout *)self defaultFontSize];
      v8 = v13;
    }
  }

  if (v8 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = size / v8;
  }

  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  [canvas viewScale];
  v18 = v17;

  if (v18 < v14)
  {
    v18 = v14;
  }

  return v18;
}

- (CGRect)p_rectInRootForSelectionPath:(id)path useParagraphModeRects:(BOOL)rects
{
  rectsCopy = rects;
  pathCopy = path;
  geometryInRoot = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  [geometryInRoot frame];
  x = v8;
  y = v10;
  width = v12;
  height = v14;

  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  v19 = [canvasController modelsForSelectionPath:pathCopy];
  v20 = objc_opt_class();
  textLayout = [(CRLWPShapeLayout *)self textLayout];
  storage = [textLayout storage];
  v23 = sub_100014370(v20, storage);

  if (v23 && [v19 containsObject:v23])
  {
    v24 = [pathCopy mostSpecificSelectionOfClass:objc_opt_class()];
    if (v24)
    {
      textLayout2 = [(CRLWPShapeLayout *)self textLayout];
      columns = [textLayout2 columns];
      [CRLWPColumn rectForSelection:v24 withColumns:columns useParagraphModeRects:rectsCopy];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v43.origin.x = v28;
      v43.origin.y = v30;
      v43.size.width = v32;
      v43.size.height = v34;
      if (CGRectIsNull(v43))
      {
        x = CGRectNull.origin.x;
        y = CGRectNull.origin.y;
        width = CGRectNull.size.width;
        height = CGRectNull.size.height;
      }

      else
      {
        [(CRLCanvasAbstractLayout *)self rectInRoot:v28, v30, v32, v34];
        x = v35;
        y = v36;
        width = v37;
        height = v38;
      }
    }
  }

  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (id)captureDynamicInfoGeometryToBeginDynamicOperation
{
  if ([(CRLWPShapeLayout *)self autosizes])
  {
    layoutInfoGeometry = [(CRLShapeLayout *)self layoutInfoGeometry];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLWPShapeLayout;
    layoutInfoGeometry = [(CRLShapeLayout *)&v5 captureDynamicInfoGeometryToBeginDynamicOperation];
  }

  return layoutInfoGeometry;
}

- (void)takeSizeFromTracker:(id)tracker
{
  trackerCopy = tracker;
  v47.receiver = self;
  v47.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v47 takeSizeFromTracker:trackerCopy];
  knob = [trackerCopy knob];
  v6 = [knob tag];

  if (!sub_10034601C(v6) || ![(CRLWPShapeLayout *)self autosizes])
  {
    goto LABEL_49;
  }

  if ([(CRLCanvasLayout *)self isInTopLevelContainerForEditing])
  {
    if (trackerCopy)
    {
      [trackerCopy flippedIfNecessaryTransformForLayout:self];
      goto LABEL_9;
    }
  }

  else if (trackerCopy)
  {
    [trackerCopy transformForLayout:self];
    goto LABEL_9;
  }

  memset(&v45, 0, sizeof(v45));
LABEL_9:
  v46 = v45;
  memset(&v45, 0, sizeof(v45));
  originalPureGeometry = [(CRLCanvasLayout *)self originalPureGeometry];
  v8 = originalPureGeometry;
  if (originalPureGeometry)
  {
    [originalPureGeometry transform];
  }

  else
  {
    memset(&v44, 0, sizeof(v44));
  }

  v43 = v46;
  sub_100139E2C(&v43, &v44, &v45);

  v44 = v45;
  v9 = sub_100139A00(&v44.a);
  if (v9 != 1.0 && fabs(v9 + -1.0) >= 0.000000999999997)
  {
    v10 = [trackerCopy rep];
    infoForTransforming = [v10 infoForTransforming];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      layoutController = [(CRLCanvasLayout *)self layoutController];
      canvas = [layoutController canvas];
      canvasController = [canvas canvasController];

      commandController = [canvasController commandController];
      v17 = *(&self->super.mOkayToSetGeometryCount + 3);
      if (!v17)
      {
        makeStorageRangeToFontSizeDict = [(CRLWPShapeLayout *)self makeStorageRangeToFontSizeDict];
        v19 = *(&self->super.mOkayToSetGeometryCount + 3);
        *(&self->super.mOkayToSetGeometryCount + 3) = makeStorageRangeToFontSizeDict;

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10139134C();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101391374();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013913FC();
          }

          v20 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v20);
          }

          v21 = [NSString stringWithUTF8String:"[CRLWPShapeLayout takeSizeFromTracker:]"];
          v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeLayout.m"];
          [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:497 isFatal:0 description:"Resize tracker should be able to say if it is enqueueing commands in real time."];
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && [trackerCopy isEnqueueingCommandsInRealTime])
        {
          if (([commandController isGroupOpen] & 1) == 0)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101391424();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10139144C();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013914D4();
            }

            v23 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130DA10(v23);
            }

            v24 = [NSString stringWithUTF8String:"[CRLWPShapeLayout takeSizeFromTracker:]"];
            v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeLayout.m"];
            [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:499 isFatal:0 description:"There should already be a command group open if we are enqueueing in real time."];
          }
        }

        else
        {
          [commandController openGroup];
          [commandController enableProgressiveEnqueuingInCurrentGroup];
          BYTE3(self->super.mDynamicPatternOffsetsBySubpath) = 1;
        }

        info = [(CRLCanvasLayout *)self info];
        geometry = [info geometry];
        if ([geometry widthValid])
        {
          heightValid = [geometry heightValid];
        }

        else
        {
          heightValid = 0;
        }

        if ([(CRLWPShapeLayout *)self autosizes]&& (heightValid & 1) == 0)
        {
          v29 = [trackerCopy rep];
          layout = [v29 layout];
          finalInfoGeometryForResize = [layout finalInfoGeometryForResize];

          if (!finalInfoGeometryForResize)
          {
            finalInfoGeometryForResize = [trackerCopy currentGeometryForLayout:self];
          }

          v41 = finalInfoGeometryForResize;
          v32 = [trackerCopy rep];
          v42 = [v32 newCommandToApplyGeometry:finalInfoGeometryForResize toInfo:info];

          v33 = [CRLCanvasCommandSelectionBehavior alloc];
          [canvasController canvasEditor];
          v35 = v34 = canvasController;
          editorController = [v34 editorController];
          selectionPath = [editorController selectionPath];
          v38 = [(CRLCanvasCommandSelectionBehavior *)v33 initWithCanvasEditor:v35 type:2 selectionPath:selectionPath selectionFlags:4];

          canvasController = v34;
          [commandController enqueueCommand:v42 withSelectionBehavior:v38];
        }

        v17 = *(&self->super.mOkayToSetGeometryCount + 3);
      }

      v39 = [(CRLWPShapeLayout *)self commandsToSetFontSizesWithFontRangeToSizeDict:v17 scale:v9];
      v40 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v39];
      [commandController enqueueCommand:v40];
    }
  }

LABEL_49:
}

- (void)takeFreeTransformFromTracker:(id)tracker
{
  trackerCopy = tracker;
  v52.receiver = self;
  v52.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v52 takeFreeTransformFromTracker:trackerCopy];
  if ([trackerCopy isResizing])
  {
    if ([(CRLWPShapeLayout *)self autosizes])
    {
      v5 = 0uLL;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      if (trackerCopy)
      {
        [trackerCopy resizeTransformForLayout:self];
        v5 = 0uLL;
      }

      *&v48.c = v5;
      *&v48.tx = v5;
      *&v48.a = v5;
      originalPureGeometry = [(CRLCanvasLayout *)self originalPureGeometry];
      v7 = originalPureGeometry;
      if (originalPureGeometry)
      {
        [originalPureGeometry transform];
      }

      else
      {
        memset(&v47, 0, sizeof(v47));
      }

      v46[0] = v49;
      v46[1] = v50;
      v46[2] = v51;
      sub_100139E2C(v46, &v47, &v48);

      v47 = v48;
      v9 = sub_100139A00(&v47.a);
      if (v9 != 1.0 && fabs(v9 + -1.0) >= 0.000000999999997)
      {
        layoutController = [(CRLCanvasLayout *)self layoutController];
        canvas = [layoutController canvas];

        v12 = [canvas repForLayout:self];
        infoForTransforming = [v12 infoForTransforming];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          layoutController2 = [(CRLCanvasLayout *)self layoutController];
          canvas2 = [layoutController2 canvas];
          canvasController = [canvas2 canvasController];

          commandController = [canvasController commandController];
          v19 = *(&self->super.mOkayToSetGeometryCount + 3);
          if (!v19)
          {
            makeStorageRangeToFontSizeDict = [(CRLWPShapeLayout *)self makeStorageRangeToFontSizeDict];
            v21 = *(&self->super.mOkayToSetGeometryCount + 3);
            *(&self->super.mOkayToSetGeometryCount + 3) = makeStorageRangeToFontSizeDict;

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              v45 = canvasController;
              if (qword_101AD5A10 != -1)
              {
                sub_1013914FC();
              }

              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_101391524();
              }

              if (qword_101AD5A10 != -1)
              {
                sub_1013915AC();
              }

              v22 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10130DA10(v22);
              }

              v23 = [NSString stringWithUTF8String:"[CRLWPShapeLayout takeFreeTransformFromTracker:]"];
              v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeLayout.m"];
              [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:570 isFatal:0 description:"Resize tracker should be able to say if it is enqueueing commands in real time."];

              canvasController = v45;
            }

            if ((objc_opt_respondsToSelector() & 1) != 0 && [trackerCopy isEnqueueingCommandsInRealTime])
            {
              if (([commandController isGroupOpen] & 1) == 0)
              {
                +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_1013915D4();
                }

                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_1013915FC();
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_101391684();
                }

                v25 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_10130DA10(v25);
                }

                v26 = [NSString stringWithUTF8String:"[CRLWPShapeLayout takeFreeTransformFromTracker:]"];
                v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeLayout.m"];
                [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:572 isFatal:0 description:"There should already be a command group open if we are enqueueing in real time."];
              }
            }

            else
            {
              [commandController openGroup];
              [commandController enableProgressiveEnqueuingInCurrentGroup];
              BYTE3(self->super.mDynamicPatternOffsetsBySubpath) = 1;
            }

            info = [(CRLCanvasLayout *)self info];
            geometry = [info geometry];
            if ([geometry widthValid])
            {
              heightValid = [geometry heightValid];
            }

            else
            {
              heightValid = 0;
            }

            if ([(CRLWPShapeLayout *)self autosizes]&& (heightValid & 1) == 0)
            {
              v44 = commandController;
              v31 = canvasController;
              layout = [v12 layout];
              finalInfoGeometryForResize = [layout finalInfoGeometryForResize];

              if (!finalInfoGeometryForResize)
              {
                finalInfoGeometryForResize = [trackerCopy currentGeometryForLayout:self];
              }

              v42 = finalInfoGeometryForResize;
              v41 = [v12 newCommandToApplyGeometry:finalInfoGeometryForResize toInfo:info];
              v34 = [CRLCanvasCommandSelectionBehavior alloc];
              canvasController = v31;
              [v31 canvasEditor];
              v35 = v43 = info;
              editorController = [v31 editorController];
              selectionPath = [editorController selectionPath];
              v38 = [(CRLCanvasCommandSelectionBehavior *)v34 initWithCanvasEditor:v35 type:2 selectionPath:selectionPath selectionFlags:4];

              info = v43;
              commandController = v44;
              [v44 enqueueCommand:v41 withSelectionBehavior:v38];
            }

            v19 = *(&self->super.mOkayToSetGeometryCount + 3);
          }

          v39 = [(CRLWPShapeLayout *)self commandsToSetFontSizesWithFontRangeToSizeDict:v19 scale:v9, v41];
          v40 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v39];
          [commandController enqueueCommand:v40];
        }
      }
    }
  }

  else
  {
    textLayout = [(CRLWPShapeLayout *)self textLayout];
    [textLayout invalidatePosition];
  }
}

- (void)endDynamicOperation
{
  if (BYTE3(self->super.mDynamicPatternOffsetsBySubpath) == 1)
  {
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];
    canvasController = [canvas canvasController];
    commandController = [canvasController commandController];

    [commandController closeGroup];
    BYTE3(self->super.mDynamicPatternOffsetsBySubpath) = 0;
  }

  v7 = *(&self->super.mOkayToSetGeometryCount + 3);
  *(&self->super.mOkayToSetGeometryCount + 3) = 0;

  v8.receiver = self;
  v8.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v8 endDynamicOperation];
}

- (id)childSearchTargets
{
  textLayout = [(CRLWPShapeLayout *)self textLayout];
  isInstructional = [textLayout isInstructional];

  if (isInstructional)
  {
    childSearchTargets = &__NSArray0__struct;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLWPShapeLayout;
    childSearchTargets = [(CRLCanvasLayout *)&v7 childSearchTargets];
  }

  return childSearchTargets;
}

- (BOOL)autosizes
{
  selfCopy = self;
  textLayout = [(CRLWPShapeLayout *)selfCopy textLayout];
  if (textLayout)
  {
    v4 = textLayout;
    v5 = [(CRLWPShapeLayout *)selfCopy autosizeFlagsFor:textLayout];

    return v5 != 0;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)autosizeFlagsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = _sSo16CRLWPShapeLayoutC8FreeformE13autosizeFlags3forSo013CRLWPAutoSizeE0VAC11CRLWPLayoutC_tF_0();

  return v6;
}

- (int64_t)verticalAlignmentFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = _sSo16CRLWPShapeLayoutC8FreeformE17verticalAlignment3forSo013CRLWPVerticalE0VAC11CRLWPLayoutC_tF_0();

  return v6;
}

- (CGRect)nonAutosizedFrameFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  CRLWPShapeLayout.nonAutosizedFrame(for:)(forCopy);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)autosizedFrameFor:(id)for textSize:(CGSize)size
{
  forCopy = for;
  selfCopy = self;
  _sSo16CRLWPShapeLayoutC8FreeformE14autosizedFrame3for8textSizeSo6CGRectVAC11CRLWPLayoutC_So6CGSizeVtF_0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)dependentsOf:(id)of
{
  ofCopy = of;
  selfCopy = self;
  CRLWPShapeLayout.dependents(of:)(ofCopy);

  sub_100006370(0, &qword_101A287B0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (Class)repClassFor:(id)for
{
  sub_100006370(0, &unk_101A0D840);

  return swift_getObjCClassFromMetadata();
}

- (id)interiorWrapSegmentsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  textLayout = [(CRLWPShapeLayout *)selfCopy textLayout];
  if (textLayout && (v7 = textLayout, type metadata accessor for CRLWPLayout(), v8 = forCopy, v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9 & 1) != 0))
  {
    interiorWrapSegments = [(CRLWPShapeLayout *)selfCopy interiorWrapSegments];
  }

  else
  {
    interiorWrapSegments = 0;
  }

  return interiorWrapSegments;
}

- (double)defaultFontSize
{
  selfCopy = self;
  textLayout = [(CRLWPShapeLayout *)selfCopy textLayout];
  if (textLayout && (v4 = textLayout, v5 = [(CRLWPLayout *)textLayout storage], v4, v5))
  {
    type metadata accessor for CRLWPStorage();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      sub_100A42510(v7);
      v9 = v8;
      swift_unknownObjectRelease_n();

      return v9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return 0.0;
}

- (id)makeStorageRangeToFontSizeDict
{
  selfCopy = self;
  CRLWPShapeLayout.makeStorageRangeToFontSizeDict()();

  sub_100006370(0, &qword_101A04270);
  sub_100006370(0, &qword_1019FF3E0);
  sub_10000FDE0(&qword_101A0A0F0, &qword_101A04270);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)commandsToSetFontSizesWithFontRangeToSizeDict:(id)dict scale:(double)scale
{
  sub_100006370(0, &qword_101A04270);
  sub_100006370(0, &qword_1019FF3E0);
  sub_10000FDE0(&qword_101A0A0F0, &qword_101A04270);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100990D14(v6, scale);

  type metadata accessor for CRLCommand();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  selfCopy = self;
  _sSo16CRLWPShapeLayoutC8FreeformE5width14forColumnIndex9bodyWidth12CoreGraphics7CGFloatVSu_AItF_0();
  v6 = v5;

  return v6;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v13 = sub_100992274(index, outWidth, gap, width);
  swift_unknownObjectRelease();

  return v13;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _sSo16CRLWPShapeLayoutC8FreeformE14adjustedInsets3forSo06UIEdgeE0VSo17CRLWPLayoutTarget_pSg_tF_0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (CRLWPPadding)layoutMargins
{
  v2 = [objc_allocWithZone(CRLWPPadding) init];

  return v2;
}

- (BOOL)shrinkTextToFit
{
  selfCopy = self;
  v3 = CRLWPShapeLayout.shrinkTextToFit.getter();

  return v3 & 1;
}

@end