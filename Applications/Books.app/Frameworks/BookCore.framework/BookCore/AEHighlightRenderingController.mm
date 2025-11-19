@interface AEHighlightRenderingController
+ (CGRect)p_currentLineRectForLine:(id)a3 ofHighlight:(id)a4;
+ (CGRect)p_fullLineRectForLine:(id)a3 ofHighlight:(id)a4;
+ (UIEdgeInsets)highlightInsets:(BOOL)a3;
+ (UIEdgeInsets)insetsForHighlight:(id)a3;
+ (UIEdgeInsets)insetsForHighlight:(id)a3 lineRect:(CGRect)a4 numberOfLines:(unint64_t)a5;
- (AEHighlightRenderingController)init;
- (BOOL)layer:(id)a3 containsHighlightAtPoint:(CGPoint)a4;
- (id)annotationUuidForHighlightLayer:(id)a3;
- (id)highlightLayers;
- (id)highlightWithData:(id)a3;
- (id)p_highlightForContainerLayer:(id)a3;
- (id)p_lineRectsForHighlight:(id)a3;
- (void)addHighlight:(id)a3 forData:(id)a4;
- (void)p_renderLinesForHighlight:(id)a3 intoContainerLayer:(id)a4;
- (void)removeAll;
- (void)removeHighlightForData:(id)a3;
- (void)updatedHighlight:(id)a3 forceRerender:(BOOL)a4;
@end

@implementation AEHighlightRenderingController

- (AEHighlightRenderingController)init
{
  v6.receiver = self;
  v6.super_class = AEHighlightRenderingController;
  v2 = [(AEHighlightRenderingController *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    [(AEHighlightRenderingController *)v2 setDataHighlights:v3];

    v4 = +[NSMapTable strongToStrongObjectsMapTable];
    [(AEHighlightRenderingController *)v2 setContainerLayers:v4];

    [(AEHighlightRenderingController *)v2 setAnnotationBlendMode:0];
  }

  return v2;
}

- (id)highlightWithData:(id)a3
{
  v4 = a3;
  v5 = [(AEHighlightRenderingController *)self dataHighlights];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (UIEdgeInsets)highlightInsets:(BOOL)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (UIEdgeInsets)insetsForHighlight:(id)a3
{
  v4 = [a3 annotation];
  [a1 highlightInsets:{objc_msgSend(v4, "annotationIsUnderline")}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6 + 0.0;
  v14 = v10 + 0.0;
  v15 = v8;
  v16 = v12;
  result.right = v16;
  result.bottom = v14;
  result.left = v15;
  result.top = v13;
  return result;
}

+ (UIEdgeInsets)insetsForHighlight:(id)a3 lineRect:(CGRect)a4 numberOfLines:(unint64_t)a5
{
  v5 = a3;
  [AEHighlightRenderingController insetsForHighlight:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 vertical];

  if (v14)
  {
    v15 = v7;
  }

  else
  {
    v15 = v13;
  }

  if (v14)
  {
    v16 = v9;
  }

  else
  {
    v16 = v11;
  }

  if (v14)
  {
    v17 = v11;
  }

  else
  {
    v17 = v9;
  }

  if (v14)
  {
    v18 = v13;
  }

  else
  {
    v18 = v7;
  }

  result.right = v15;
  result.bottom = v16;
  result.left = v17;
  result.top = v18;
  return result;
}

+ (CGRect)p_currentLineRectForLine:(id)a3 ofHighlight:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 currentLineRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 includesCapSpace];

  if ((v16 & 1) == 0)
  {
    [a1 insetsForHighlight:v6];
    v9 = v9 + v17;
    v11 = v11 + v18;
    v13 = v13 - (v17 + v19);
    v15 = v15 - (v18 + v20);
  }

  v21 = v9;
  v22 = v11;
  v23 = v13;
  v24 = v15;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (CGRect)p_fullLineRectForLine:(id)a3 ofHighlight:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 fullLineRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 includesCapSpace];

  if ((v16 & 1) == 0)
  {
    [a1 insetsForHighlight:v6];
    v9 = v9 + v17;
    v11 = v11 + v18;
    v13 = v13 - (v17 + v19);
    v15 = v15 - (v18 + v20);
  }

  v21 = v9;
  v22 = v11;
  v23 = v13;
  v24 = v15;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)p_lineRectsForHighlight:(id)a3
{
  v3 = a3;
  v4 = [v3 lines];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [objc_opt_class() p_currentLineRectForLine:*(*(&v13 + 1) + 8 * i) ofHighlight:{v3, v13}];
        v11 = [NSValue valueWithCGRect:?];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)p_renderLinesForHighlight:(id)a3 intoContainerLayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v8 = [(AEHighlightRenderingController *)self p_lineRectsForHighlight:v6];
  v9 = [v6 annotation];
  v69 = [v9 annotationIsUnderline];

  if ([(AEHighlightRenderingController *)self canUseFilters])
  {
    v10 = [(AEHighlightRenderingController *)self annotationBlendMode];
  }

  else
  {
    v10 = 0;
  }

  [v7 setBlendMode:v10];
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v78 objects:v84 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v79;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v79 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v78 + 1) + 8 * i) CGRectValue];
        v20 = v85.origin.x;
        v21 = v85.origin.y;
        v22 = v85.size.width;
        v23 = v85.size.height;
        if (!CGRectIsEmpty(v85))
        {
          v86.origin.x = x;
          v86.origin.y = y;
          v86.size.width = width;
          v86.size.height = height;
          v93.origin.x = v20;
          v93.origin.y = v21;
          v93.size.width = v22;
          v93.size.height = v23;
          v87 = CGRectUnion(v86, v93);
          x = v87.origin.x;
          y = v87.origin.y;
          width = v87.size.width;
          height = v87.size.height;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v78 objects:v84 count:16];
    }

    while (v17);
  }

  v88.origin.x = x;
  v88.origin.y = y;
  v88.size.width = width;
  v88.size.height = height;
  v67 = self;
  if (CGRectIsNull(v88))
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v68 = v7;
  [v7 setFrame:{x, y, width, height}];
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v25 = [v6 lines];
  v26 = [v25 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v75;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v75 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v74 + 1) + 8 * j);
        v32 = [v15 objectAtIndexedSubscript:v28];
        [v32 CGRectValue];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v89.origin.x = v34;
        v89.origin.y = v36;
        v89.size.width = v38;
        v89.size.height = v40;
        if (!CGRectIsEmpty(v89))
        {
          CGPointSubtract();
          v42 = v41;
          v44 = v43;
          if (v69)
          {
            v45 = [v31 underlineDirection];
            if (v45 == 2)
            {
              v91.origin.x = v42;
              v91.origin.y = v44;
              v91.size.width = v38;
              v91.size.height = v40;
              v42 = CGRectGetMaxX(v91) + -2.0;
            }

            else
            {
              if (v45 != 1)
              {
                if (!v45)
                {
                  v90.origin.x = v42;
                  v90.origin.y = v44;
                  v90.size.width = v38;
                  v90.size.height = v40;
                  v44 = CGRectGetMaxY(v90) + -2.0;
                  v40 = 2.0;
                }

                goto LABEL_29;
              }

              v42 = v42 + 0.0;
            }

            v38 = 2.0;
          }

LABEL_29:
          [v6 cornerRadius];
          if (v46 <= 0.0)
          {
            v92.origin.x = v42;
            v92.origin.y = v44;
            v92.size.width = v38;
            v92.size.height = v40;
            CGPathAddRect(Mutable, 0, v92);
          }

          else
          {
            [v6 cornerRadius];
            v48 = [UIBezierPath bezierPathWithRoundedRect:v42 cornerRadius:v44, v38, v40, v47];
            CGPathAddPath(Mutable, 0, [v48 CGPath]);
          }
        }

        ++v28;
      }

      v27 = [v25 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v27);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v49 = [v68 sublayers];
  v50 = [v49 copy];

  v51 = [v50 countByEnumeratingWithState:&v70 objects:v82 count:16];
  v52 = v67;
  if (v51)
  {
    v53 = v51;
    v54 = *v71;
    do
    {
      for (k = 0; k != v53; k = k + 1)
      {
        if (*v71 != v54)
        {
          objc_enumerationMutation(v50);
        }

        [*(*(&v70 + 1) + 8 * k) removeFromSuperlayer];
      }

      v53 = [v50 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v53);
  }

  v56 = [v6 annotation];
  v57 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", [v56 annotationStyle], -[AEHighlightRenderingController pageTheme](v67, "pageTheme"), v69);

  v58 = [v57 highlightColor];
  if ([(AEHighlightRenderingController *)v67 pageTheme]!= &dword_0 + 3)
  {
    v59 = [v58 bkaxAdjustedDarkerForIncreaseContrast];

    v58 = v59;
  }

  [AEAnnotationTheme highlightOpacityForPageTheme:[(AEHighlightRenderingController *)v67 pageTheme]];
  v60 = [v58 colorWithAlphaComponent:?];

  if ([(AEHighlightRenderingController *)v67 drawSpecialGrayHighlights]&& [(AEHighlightRenderingController *)v67 pageTheme]== &dword_0 + 2)
  {
    v61 = +[CAShapeLayer layer];
    v62 = +[UIColor blackColor];
    [v61 setFillColor:{objc_msgSend(v62, "CGColor")}];

    [v68 bounds];
    [v61 setBounds:?];
    v63 = CGPointZero.y;
    [v61 setAnchorPoint:{CGPointZero.x, v63}];
    [v61 setPosition:{CGPointZero.x, v63}];
    [v61 setPath:Mutable];
    [v68 addSublayer:v61];
    v64 = +[CAShapeLayer layer];
    [v64 setFillColor:{objc_msgSend(v60, "CGColor")}];
    [v68 bounds];
    [v64 setBounds:?];
    [v64 setAnchorPoint:{CGPointZero.x, v63}];
    [v64 setPosition:{CGPointZero.x, v63}];
    [v64 setPath:Mutable];
    [v68 addSublayer:v64];

    v52 = v67;
  }

  else
  {
    [v68 setFillColor:{objc_msgSend(v60, "CGColor")}];
  }

  [v68 setPath:Mutable];
  CGPathRelease(Mutable);
  [v68 setHidden:0];
  v65 = [NSValue valueWithCGRect:x, y, width, height];
  [v68 setValue:v65 forKey:@"kAEHighlightLayerCurrentRectKey"];

  v66 = [(AEHighlightRenderingController *)v52 containerLayers];
  [v66 setObject:v68 forKey:v6];

  +[CATransaction commit];
}

- (void)addHighlight:(id)a3 forData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AEHighlightRenderingController *)self dataHighlights];
  [v8 setObject:v7 forKey:v6];

  v9 = +[AEHighlightContainerLayer layer];
  [(AEHighlightRenderingController *)self p_renderLinesForHighlight:v7 intoContainerLayer:v9];
}

- (void)removeHighlightForData:(id)a3
{
  v10 = a3;
  v4 = [(AEHighlightRenderingController *)self dataHighlights];
  v5 = [v4 objectForKey:v10];

  if (v5)
  {
    v6 = [(AEHighlightRenderingController *)self containerLayers];
    v7 = [v6 objectForKey:v5];

    v8 = [(AEHighlightRenderingController *)self containerLayers];
    [v8 removeObjectForKey:v5];

    [v7 removeFromSuperlayer];
    v9 = [(AEHighlightRenderingController *)self dataHighlights];
    [v9 removeObjectForKey:v10];
  }
}

- (void)removeAll
{
  v3 = [(AEHighlightRenderingController *)self dataHighlights];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AEHighlightRenderingController *)self dataHighlights];
    v6 = NSAllMapTableKeys(v5);
    v7 = [v6 copy];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(AEHighlightRenderingController *)self removeHighlightForData:*(*(&v13 + 1) + 8 * v12), v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)updatedHighlight:(id)a3 forceRerender:(BOOL)a4
{
  v5 = a3;
  if (v5)
  {
    v8 = v5;
    v6 = [(AEHighlightRenderingController *)self containerLayers];
    v7 = [v6 objectForKey:v8];

    if (!v7)
    {
      v7 = +[AEHighlightContainerLayer layer];
    }

    [(AEHighlightRenderingController *)self p_renderLinesForHighlight:v8 intoContainerLayer:v7];
  }

  _objc_release_x1(v5);
}

- (id)highlightLayers
{
  v3 = +[NSMutableArray array];
  v4 = [(AEHighlightRenderingController *)self dataHighlights];
  v5 = [v4 objectEnumerator];
  v6 = [v5 allObjects];
  v7 = [(AEHighlightRenderingController *)self p_orderHighlights:v6];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = [(AEHighlightRenderingController *)self containerLayers];
        v15 = [v14 objectForKey:v13];

        if (v15)
        {
          [v3 addObject:v15];
        }

        else
        {
          sub_1E8654(v16, v17, v18, v19, v20, v21, v22, v23);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v24 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v10 = v24;
    }

    while (v24);
  }

  return v3;
}

- (id)p_highlightForContainerLayer:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(AEHighlightRenderingController *)self containerLayers];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(AEHighlightRenderingController *)self containerLayers];
        v13 = [v12 objectForKey:v11];

        if (v13 == v4)
        {
          v14 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)annotationUuidForHighlightLayer:(id)a3
{
  v3 = [(AEHighlightRenderingController *)self p_highlightForContainerLayer:a3];
  v4 = [v3 annotation];
  v5 = [v4 annotationUuid];

  return v5;
}

- (BOOL)layer:(id)a3 containsHighlightAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  objc_opt_class();
  v15 = BUDynamicCast();
  if (!v15)
  {
    sub_1E868C(0, v8, v9, v10, v11, v12, v13, v14);
  }

  v19 = [(AEHighlightRenderingController *)self p_highlightForContainerLayer:v7];
  if (!v19)
  {
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AssetsEngine/AECore/Annotations/AEHighlightRenderingController.m", 434, "[AEHighlightRenderingController layer:containsHighlightAtPoint:]", "highlight", 0, v16, v17, v18, v34);
    v32 = [v7 containsPoint:{x, y}];
    goto LABEL_17;
  }

  if (![v7 containsPoint:{x, y}])
  {
    LOBYTE(v24) = 0;
    goto LABEL_20;
  }

  v20 = [v19 annotation];
  v21 = [v20 annotationIsUnderline];

  if (!v21)
  {
    v31 = [v15 path];
    v39.x = x;
    v39.y = y;
    v32 = CGPathContainsPoint(v31, 0, v39, 0);
LABEL_17:
    LOBYTE(v24) = v32;
    goto LABEL_20;
  }

  v22 = [(AEHighlightRenderingController *)self p_lineRectsForHighlight:v19];
  [v15 frame];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v24)
  {
    v25 = *v35;
    while (2)
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v34 + 1) + 8 * i) CGRectValue];
        v28 = v27;
        v30 = v29;
        CGPointSubtract();
        v41.size.width = v28;
        v41.size.height = v30;
        v40.x = x;
        v40.y = y;
        if (CGRectContainsPoint(v41, v40))
        {
          LOBYTE(v24) = 1;
          goto LABEL_19;
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

LABEL_20:
  return v24;
}

@end