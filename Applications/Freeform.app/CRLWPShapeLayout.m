@interface CRLWPShapeLayout
- (BOOL)autosizes;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)p_shouldCreateTextLayout;
- (BOOL)resizeMayChangeAspectRatio;
- (BOOL)shrinkTextToFit;
- (CGAffineTransform)autosizedTransform;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)a3;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)autosizePositionOffset;
- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)a3 height:(BOOL)a4;
- (CGRect)autosizedFrameFor:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameFor:(id)a3;
- (CGRect)p_rectInRootForSelectionPath:(id)a3 useParagraphModeRects:(BOOL)a4;
- (CGRect)rectInRootForSelectionPath:(id)a3;
- (CGRect)rectInRootForZoomingToSelectionPath:(id)a3;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)a3;
- (CRLWPPadding)layoutMargins;
- (CRLWPShapeLayout)initWithInfo:(id)a3;
- (CRLWrapSegments)interiorWrapSegments;
- (Class)repClassFor:(id)a3;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3;
- (_TtC8Freeform14CRLWPShapeItem)wpShapeInfo;
- (double)defaultFontSize;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7;
- (double)viewScaleForZoomingToSelectionPath:(id)a3 targetPointSize:(double)a4;
- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (id)bidirectionalSizeDependentLayouts;
- (id)captureDynamicInfoGeometryToBeginDynamicOperation;
- (id)childInfosForChildLayouts;
- (id)childSearchTargets;
- (id)commandsToSetFontSizesWithFontRangeToSizeDict:(id)a3 scale:(double)a4;
- (id)dependentLayouts;
- (id)dependentsOf:(id)a3;
- (id)interiorWrapSegmentsFor:(id)a3;
- (id)makeStorageRangeToFontSizeDict;
- (id)pathSource;
- (id)textWrapper;
- (int64_t)verticalAlignmentFor:(id)a3;
- (unint64_t)autosizeFlagsFor:(id)a3;
- (void)createTextLayoutForScribble:(BOOL)a3;
- (void)endDynamicOperation;
- (void)invalidatePath;
- (void)invalidateSize;
- (void)processChangedProperty:(unint64_t)a3;
- (void)setGeometry:(id)a3;
- (void)setSupportsInstructionalText:(BOOL)a3;
- (void)t_invalidateTextLayoutAfterPropertyChanged:(unint64_t)a3;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5;
- (void)updateChildrenFromInfo;
@end

@implementation CRLWPShapeLayout

- (CRLWPShapeLayout)initWithInfo:(id)a3
{
  v4 = a3;
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
  v8 = [(CRLShapeLayout *)&v16 initWithInfo:v4];
  v9 = v8;
  if (v8)
  {
    v10 = [(CRLWPShapeLayout *)v8 wpShapeInfo];
    v11 = [v10 text];

    if (!v11)
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
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (void)setSupportsInstructionalText:(BOOL)a3
{
  v3 = a3;
  BYTE4(self->super.mDynamicPatternOffsetsBySubpath) = a3;
  v5 = [(CRLWPShapeLayout *)self textLayout];
  v6 = v5;
  if (!v3)
  {
    v8 = [v5 storage];
    v9 = [v8 length];

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
    v10 = [(CRLWPShapeLayout *)self textLayout];
    [v10 invalidateTextLayout];
    v7 = v10;
LABEL_10:

    return;
  }

  [(CRLWPShapeLayout *)self createTextLayout];
}

- (id)childInfosForChildLayouts
{
  v8.receiver = self;
  v8.super_class = CRLWPShapeLayout;
  v3 = [(CRLCanvasLayout *)&v8 childInfosForChildLayouts];
  v4 = [v3 mutableCopy];

  if ([(CRLWPShapeLayout *)self p_shouldCreateTextLayout]&& *(&self->_storageRangeToFontSizeDict + 3))
  {
    v5 = [(CRLWPShapeLayout *)self wpShapeInfo];
    v6 = [v5 text];
    [v4 addObject:v6];
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

- (void)createTextLayoutForScribble:(BOOL)a3
{
  if (!*(&self->_storageRangeToFontSizeDict + 3))
  {
    v21 = a3;
    v4 = [(CRLCanvasLayout *)self layoutController];
    v22 = [v4 canvas];

    v5 = [v22 canvasController];
    v6 = [v5 editorController];
    v7 = [v6 selectionPath];

    v8 = [v7 mostSpecificSelectionOfClass:objc_opt_class()];
    v9 = [v7 mostSpecificSelectionOfClass:objc_opt_class()];
    v10 = 0;
    if (v9 && v8)
    {
      v11 = [v8 boardItems];
      v12 = [(CRLBoardItemLayout *)self boardItem];
      if ([v11 containsObject:v12])
      {
        v13 = [v7 indexForSelection:v9];
        v10 = v13 > [v7 indexForSelection:v8];
      }

      else
      {
        v10 = 0;
      }
    }

    v14 = [_TtC8Freeform11CRLWPLayout alloc];
    v15 = [(CRLWPShapeLayout *)self wpShapeInfo];
    v16 = [v15 text];
    v17 = [(CRLWPLayout *)v14 initWithInfo:v16];

    if (v10 || -[CRLWPShapeLayout supportsInstructionalText](self, "supportsInstructionalText") || -[CRLWPShapeLayout autosizeFlagsFor:](self, "autosizeFlagsFor:", v17) || (-[CRLWPShapeLayout wpShapeInfo](self, "wpShapeInfo"), v18 = objc_claimAutoreleasedReturnValue(), [v18 text], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v18, v20) || v21)
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

  v4 = [(CRLShapeLayout *)self shapeInfo];
  v5 = [v4 isFreehandDrawingShape];

  return v5 ^ 1;
}

- (id)dependentLayouts
{
  v11.receiver = self;
  v11.super_class = CRLWPShapeLayout;
  v3 = [(CRLCanvasLayout *)&v11 dependentLayouts];
  v4 = [(CRLWPShapeLayout *)self textLayout];
  if (v4)
  {
    v5 = v4;
    v6 = [(CRLWPShapeLayout *)self autosizes];

    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v7 = [v3 mutableCopy];
      }

      else
      {
        v7 = +[NSMutableArray array];
      }

      v8 = v7;
      v9 = [(CRLWPShapeLayout *)self textLayout];
      [v8 addObject:v9];

      v3 = v8;
    }
  }

  return v3;
}

- (CRLWrapSegments)interiorWrapSegments
{
  v3 = *(&self->_supportsInstructionalText + 2);
  if (!v3)
  {
    v4 = [(CRLWPShapeLayout *)self wpShapeInfo];
    [v4 textInset];
    v6 = v5;

    v7 = [(CRLShapeLayout *)self shapeInfo];
    v8 = [v7 stroke];

    if (v8 && [v8 shouldRender])
    {
      [v8 width];
      v6 = v9 * 0.5 + v6;
      v10 = [v8 join];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(CRLWPShapeLayout *)self pathSource];
    v12 = [v11 interiorWrapPathForInset:v10 joinStyle:v6];

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
    v3 = [*(&self->_storageRangeToFontSizeDict + 3) geometry];
    [v3 size];
    v5 = v4;
    v7 = v6;

    v8 = [(CRLShapeLayout *)self shapeInfo];
    v9 = [v8 stroke];

    if (v9 && [v9 shouldRender])
    {
      [v9 width];
      v5 = v5 + v10;
      [v9 width];
      v7 = v7 + v11;
    }

    v12 = [(CRLShapeLayout *)self shapeInfo];
    v13 = [v12 pathSource];
    v14 = [v13 copy];

    [v14 setNaturalSize:{v5, v7}];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CRLWPShapeLayout;
    v14 = [(CRLShapeLayout *)&v16 pathSource];
  }

  return v14;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v5 processChangedProperty:?];
  if (a3 - 29 <= 1)
  {
    if ([(CRLWPShapeLayout *)self autosizes])
    {
      [(CRLWPShapeLayout *)self invalidateSize];
    }

    if (a3 == 30 && (([(CRLWPShapeLayout *)self p_shouldCreateTextLayout]^ (*(&self->_storageRangeToFontSizeDict + 3) == 0)) & 1) == 0)
    {
      [(CRLCanvasLayout *)self invalidateChildren];
    }
  }

  [(CRLWPShapeLayout *)self t_invalidateTextLayoutAfterPropertyChanged:a3];
}

- (void)t_invalidateTextLayoutAfterPropertyChanged:(unint64_t)a3
{
  if (a3 - 29 < 7 || a3 == 21 || a3 == 7)
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

- (void)setGeometry:(id)a3
{
  v22.receiver = self;
  v22.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v22 setGeometry:a3];
  if (*(&self->_storageRangeToFontSizeDict + 3) && [(CRLWPShapeLayout *)self autosizes])
  {
    v4 = [*(&self->_storageRangeToFontSizeDict + 3) geometry];
    [v4 size];
    v6 = v5;
    v8 = v7;

    [(CRLShapeLayout *)self pathBounds];
    v10 = v9;
    v12 = v11;
    v13 = -v9;
    v14 = -v11;
    v15 = [(CRLShapeLayout *)self shapeInfo];
    v16 = [v15 stroke];

    if (v16)
    {
      if ([v16 shouldRender])
      {
        [v16 width];
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

- (void)transferLayoutGeometryToInfo:(id)a3 withAdditionalTransform:(CGAffineTransform *)a4 assertIfInDocument:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v19.receiver = self;
  v19.super_class = CRLWPShapeLayout;
  v9 = *&a4->c;
  v18[0] = *&a4->a;
  v18[1] = v9;
  v18[2] = *&a4->tx;
  [(CRLShapeLayout *)&v19 transferLayoutGeometryToInfo:v8 withAdditionalTransform:v18 assertIfInDocument:v5];
  v10 = objc_opt_class();
  v11 = sub_100013F00(v10, v8);
  if ([(CRLWPShapeLayout *)self autosizes])
  {
    [(CRLWPShapeLayout *)self autosizePositionOffset];
    v13 = v12;
    v14 = [v8 geometry];
    v15 = [v14 mutableCopy];

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
    v5 = [(CRLShapeLayout *)self layoutInfoGeometry];
    [v5 position];
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
  v5 = [(CRLShapeLayout *)self layoutInfoGeometry];
  [(CRLWPShapeLayout *)self autosizedTransformForInfoGeometry:v5];

  return result;
}

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)a3
{
  v13 = a4;
  v6 = objc_opt_class();
  v7 = [(CRLCanvasLayout *)self info];
  v8 = sub_100014370(v6, v7);

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

- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)a3 height:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(CRLWPShapeLayout *)self autosizedTransform];
  [(CRLShapeLayout *)self pathBoundsWithoutStroke];
  v8 = v7;
  v10 = v9;
  v11 = [(CRLShapeLayout *)self layoutInfoGeometry];
  v12 = [v11 mutableCopy];

  [v12 size];
  v14 = v13;
  v16 = v15;
  if (([v12 widthValid] & 1) == 0 && v5)
  {
    [v12 setWidthValid:1];
    v14 = v8;
  }

  if (([v12 heightValid] & 1) == 0 && v4)
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
  v3 = [(CRLCanvasLayout *)&v9 bidirectionalSizeDependentLayouts];
  v4 = [(CRLWPShapeLayout *)self autosizeFlagsFor:*(&self->_storageRangeToFontSizeDict + 3)];
  if ((~v4 & 0xF) != 0 && v4 && *(&self->_storageRangeToFontSizeDict + 3) != 0)
  {
    if ([v3 count])
    {
      v10 = *(&self->_storageRangeToFontSizeDict + 3);
      v6 = [NSArray arrayWithObjects:&v10 count:1];
      v7 = [v6 arrayByAddingObjectsFromArray:v3];

      v3 = v6;
    }

    else
    {
      v11 = *(&self->_storageRangeToFontSizeDict + 3);
      v7 = [NSArray arrayWithObjects:&v11 count:1];
    }

    v3 = v7;
  }

  return v3;
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

- (CGRect)rectInRootForSelectionPath:(id)a3
{
  [(CRLWPShapeLayout *)self p_rectInRootForSelectionPath:a3 useParagraphModeRects:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootForZoomingToSelectionPath:(id)a3
{
  [(CRLWPShapeLayout *)self p_rectInRootForSelectionPath:a3 useParagraphModeRects:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)a3
{
  v3 = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  [v3 frame];
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

- (double)viewScaleForZoomingToSelectionPath:(id)a3 targetPointSize:(double)a4
{
  v6 = a3;
  v7 = [v6 mostSpecificSelectionOfClass:objc_opt_class()];

  v8 = 0.0;
  if (v7)
  {
    v9 = [(CRLWPShapeLayout *)self makeStorageRangeToFontSizeDict];
    if ([v9 count])
    {
      v10 = [v9 allValues];
      v11 = [v10 firstObject];
      [v11 floatValue];
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
    v14 = a4 / v8;
  }

  v15 = [(CRLCanvasLayout *)self layoutController];
  v16 = [v15 canvas];
  [v16 viewScale];
  v18 = v17;

  if (v18 < v14)
  {
    v18 = v14;
  }

  return v18;
}

- (CGRect)p_rectInRootForSelectionPath:(id)a3 useParagraphModeRects:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLCanvasAbstractLayout *)self geometryInRoot];
  [v7 frame];
  x = v8;
  y = v10;
  width = v12;
  height = v14;

  v16 = [(CRLCanvasLayout *)self layoutController];
  v17 = [v16 canvas];
  v18 = [v17 canvasController];

  v19 = [v18 modelsForSelectionPath:v6];
  v20 = objc_opt_class();
  v21 = [(CRLWPShapeLayout *)self textLayout];
  v22 = [v21 storage];
  v23 = sub_100014370(v20, v22);

  if (v23 && [v19 containsObject:v23])
  {
    v24 = [v6 mostSpecificSelectionOfClass:objc_opt_class()];
    if (v24)
    {
      v25 = [(CRLWPShapeLayout *)self textLayout];
      v26 = [v25 columns];
      [CRLWPColumn rectForSelection:v24 withColumns:v26 useParagraphModeRects:v4];
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
    v3 = [(CRLShapeLayout *)self layoutInfoGeometry];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLWPShapeLayout;
    v3 = [(CRLShapeLayout *)&v5 captureDynamicInfoGeometryToBeginDynamicOperation];
  }

  return v3;
}

- (void)takeSizeFromTracker:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v47 takeSizeFromTracker:v4];
  v5 = [v4 knob];
  v6 = [v5 tag];

  if (!sub_10034601C(v6) || ![(CRLWPShapeLayout *)self autosizes])
  {
    goto LABEL_49;
  }

  if ([(CRLCanvasLayout *)self isInTopLevelContainerForEditing])
  {
    if (v4)
    {
      [v4 flippedIfNecessaryTransformForLayout:self];
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    [v4 transformForLayout:self];
    goto LABEL_9;
  }

  memset(&v45, 0, sizeof(v45));
LABEL_9:
  v46 = v45;
  memset(&v45, 0, sizeof(v45));
  v7 = [(CRLCanvasLayout *)self originalPureGeometry];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
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
    v10 = [v4 rep];
    v11 = [v10 infoForTransforming];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [(CRLCanvasLayout *)self layoutController];
      v14 = [v13 canvas];
      v15 = [v14 canvasController];

      v16 = [v15 commandController];
      v17 = *(&self->super.mOkayToSetGeometryCount + 3);
      if (!v17)
      {
        v18 = [(CRLWPShapeLayout *)self makeStorageRangeToFontSizeDict];
        v19 = *(&self->super.mOkayToSetGeometryCount + 3);
        *(&self->super.mOkayToSetGeometryCount + 3) = v18;

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

        if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isEnqueueingCommandsInRealTime])
        {
          if (([v16 isGroupOpen] & 1) == 0)
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
          [v16 openGroup];
          [v16 enableProgressiveEnqueuingInCurrentGroup];
          BYTE3(self->super.mDynamicPatternOffsetsBySubpath) = 1;
        }

        v26 = [(CRLCanvasLayout *)self info];
        v27 = [v26 geometry];
        if ([v27 widthValid])
        {
          v28 = [v27 heightValid];
        }

        else
        {
          v28 = 0;
        }

        if ([(CRLWPShapeLayout *)self autosizes]&& (v28 & 1) == 0)
        {
          v29 = [v4 rep];
          v30 = [v29 layout];
          v31 = [v30 finalInfoGeometryForResize];

          if (!v31)
          {
            v31 = [v4 currentGeometryForLayout:self];
          }

          v41 = v31;
          v32 = [v4 rep];
          v42 = [v32 newCommandToApplyGeometry:v31 toInfo:v26];

          v33 = [CRLCanvasCommandSelectionBehavior alloc];
          [v15 canvasEditor];
          v35 = v34 = v15;
          v36 = [v34 editorController];
          v37 = [v36 selectionPath];
          v38 = [(CRLCanvasCommandSelectionBehavior *)v33 initWithCanvasEditor:v35 type:2 selectionPath:v37 selectionFlags:4];

          v15 = v34;
          [v16 enqueueCommand:v42 withSelectionBehavior:v38];
        }

        v17 = *(&self->super.mOkayToSetGeometryCount + 3);
      }

      v39 = [(CRLWPShapeLayout *)self commandsToSetFontSizesWithFontRangeToSizeDict:v17 scale:v9];
      v40 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v39];
      [v16 enqueueCommand:v40];
    }
  }

LABEL_49:
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = CRLWPShapeLayout;
  [(CRLShapeLayout *)&v52 takeFreeTransformFromTracker:v4];
  if ([v4 isResizing])
  {
    if ([(CRLWPShapeLayout *)self autosizes])
    {
      v5 = 0uLL;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      if (v4)
      {
        [v4 resizeTransformForLayout:self];
        v5 = 0uLL;
      }

      *&v48.c = v5;
      *&v48.tx = v5;
      *&v48.a = v5;
      v6 = [(CRLCanvasLayout *)self originalPureGeometry];
      v7 = v6;
      if (v6)
      {
        [v6 transform];
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
        v10 = [(CRLCanvasLayout *)self layoutController];
        v11 = [v10 canvas];

        v12 = [v11 repForLayout:self];
        v13 = [v12 infoForTransforming];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [(CRLCanvasLayout *)self layoutController];
          v16 = [v15 canvas];
          v17 = [v16 canvasController];

          v18 = [v17 commandController];
          v19 = *(&self->super.mOkayToSetGeometryCount + 3);
          if (!v19)
          {
            v20 = [(CRLWPShapeLayout *)self makeStorageRangeToFontSizeDict];
            v21 = *(&self->super.mOkayToSetGeometryCount + 3);
            *(&self->super.mOkayToSetGeometryCount + 3) = v20;

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              v45 = v17;
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

              v17 = v45;
            }

            if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isEnqueueingCommandsInRealTime])
            {
              if (([v18 isGroupOpen] & 1) == 0)
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
              [v18 openGroup];
              [v18 enableProgressiveEnqueuingInCurrentGroup];
              BYTE3(self->super.mDynamicPatternOffsetsBySubpath) = 1;
            }

            v28 = [(CRLCanvasLayout *)self info];
            v29 = [v28 geometry];
            if ([v29 widthValid])
            {
              v30 = [v29 heightValid];
            }

            else
            {
              v30 = 0;
            }

            if ([(CRLWPShapeLayout *)self autosizes]&& (v30 & 1) == 0)
            {
              v44 = v18;
              v31 = v17;
              v32 = [v12 layout];
              v33 = [v32 finalInfoGeometryForResize];

              if (!v33)
              {
                v33 = [v4 currentGeometryForLayout:self];
              }

              v42 = v33;
              v41 = [v12 newCommandToApplyGeometry:v33 toInfo:v28];
              v34 = [CRLCanvasCommandSelectionBehavior alloc];
              v17 = v31;
              [v31 canvasEditor];
              v35 = v43 = v28;
              v36 = [v31 editorController];
              v37 = [v36 selectionPath];
              v38 = [(CRLCanvasCommandSelectionBehavior *)v34 initWithCanvasEditor:v35 type:2 selectionPath:v37 selectionFlags:4];

              v28 = v43;
              v18 = v44;
              [v44 enqueueCommand:v41 withSelectionBehavior:v38];
            }

            v19 = *(&self->super.mOkayToSetGeometryCount + 3);
          }

          v39 = [(CRLWPShapeLayout *)self commandsToSetFontSizesWithFontRangeToSizeDict:v19 scale:v9, v41];
          v40 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v39];
          [v18 enqueueCommand:v40];
        }
      }
    }
  }

  else
  {
    v8 = [(CRLWPShapeLayout *)self textLayout];
    [v8 invalidatePosition];
  }
}

- (void)endDynamicOperation
{
  if (BYTE3(self->super.mDynamicPatternOffsetsBySubpath) == 1)
  {
    v3 = [(CRLCanvasLayout *)self layoutController];
    v4 = [v3 canvas];
    v5 = [v4 canvasController];
    v6 = [v5 commandController];

    [v6 closeGroup];
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
  v3 = [(CRLWPShapeLayout *)self textLayout];
  v4 = [v3 isInstructional];

  if (v4)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLWPShapeLayout;
    v5 = [(CRLCanvasLayout *)&v7 childSearchTargets];
  }

  return v5;
}

- (BOOL)autosizes
{
  v2 = self;
  v3 = [(CRLWPShapeLayout *)v2 textLayout];
  if (v3)
  {
    v4 = v3;
    v5 = [(CRLWPShapeLayout *)v2 autosizeFlagsFor:v3];

    return v5 != 0;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)autosizeFlagsFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo16CRLWPShapeLayoutC8FreeformE13autosizeFlags3forSo013CRLWPAutoSizeE0VAC11CRLWPLayoutC_tF_0();

  return v6;
}

- (int64_t)verticalAlignmentFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo16CRLWPShapeLayoutC8FreeformE17verticalAlignment3forSo013CRLWPVerticalE0VAC11CRLWPLayoutC_tF_0();

  return v6;
}

- (CGRect)nonAutosizedFrameFor:(id)a3
{
  v4 = a3;
  v5 = self;
  CRLWPShapeLayout.nonAutosizedFrame(for:)(v4);
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

- (CGRect)autosizedFrameFor:(id)a3 textSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
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

- (id)dependentsOf:(id)a3
{
  v4 = a3;
  v5 = self;
  CRLWPShapeLayout.dependents(of:)(v4);

  sub_100006370(0, &qword_101A287B0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (Class)repClassFor:(id)a3
{
  sub_100006370(0, &unk_101A0D840);

  return swift_getObjCClassFromMetadata();
}

- (id)interiorWrapSegmentsFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(CRLWPShapeLayout *)v5 textLayout];
  if (v6 && (v7 = v6, type metadata accessor for CRLWPLayout(), v8 = v4, v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9 & 1) != 0))
  {
    v10 = [(CRLWPShapeLayout *)v5 interiorWrapSegments];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)defaultFontSize
{
  v2 = self;
  v3 = [(CRLWPShapeLayout *)v2 textLayout];
  if (v3 && (v4 = v3, v5 = [(CRLWPLayout *)v3 storage], v4, v5))
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
  v2 = self;
  CRLWPShapeLayout.makeStorageRangeToFontSizeDict()();

  sub_100006370(0, &qword_101A04270);
  sub_100006370(0, &qword_1019FF3E0);
  sub_10000FDE0(&qword_101A0A0F0, &qword_101A04270);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)commandsToSetFontSizesWithFontRangeToSizeDict:(id)a3 scale:(double)a4
{
  sub_100006370(0, &qword_101A04270);
  sub_100006370(0, &qword_1019FF3E0);
  sub_10000FDE0(&qword_101A0A0F0, &qword_101A04270);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  sub_100990D14(v6, a4);

  type metadata accessor for CRLCommand();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  v4 = self;
  _sSo16CRLWPShapeLayoutC8FreeformE5width14forColumnIndex9bodyWidth12CoreGraphics7CGFloatVSu_AItF_0();
  v6 = v5;

  return v6;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7
{
  swift_unknownObjectRetain();
  v12 = self;
  v13 = sub_100992274(a3, a6, a7, a4);
  swift_unknownObjectRelease();

  return v13;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
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
  v2 = self;
  v3 = CRLWPShapeLayout.shrinkTextToFit.getter();

  return v3 & 1;
}

@end