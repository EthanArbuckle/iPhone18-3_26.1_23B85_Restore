@interface AEHighlightRenderingController
+ (CGRect)p_currentLineRectForLine:(id)line ofHighlight:(id)highlight;
+ (CGRect)p_fullLineRectForLine:(id)line ofHighlight:(id)highlight;
+ (UIEdgeInsets)highlightInsets:(BOOL)insets;
+ (UIEdgeInsets)insetsForHighlight:(id)highlight;
+ (UIEdgeInsets)insetsForHighlight:(id)highlight lineRect:(CGRect)rect numberOfLines:(unint64_t)lines;
- (AEHighlightRenderingController)init;
- (BOOL)layer:(id)layer containsHighlightAtPoint:(CGPoint)point;
- (id)annotationUuidForHighlightLayer:(id)layer;
- (id)highlightLayers;
- (id)highlightWithData:(id)data;
- (id)p_highlightForContainerLayer:(id)layer;
- (id)p_lineRectsForHighlight:(id)highlight;
- (void)addHighlight:(id)highlight forData:(id)data;
- (void)p_renderLinesForHighlight:(id)highlight intoContainerLayer:(id)layer;
- (void)removeAll;
- (void)removeHighlightForData:(id)data;
- (void)updatedHighlight:(id)highlight forceRerender:(BOOL)rerender;
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

- (id)highlightWithData:(id)data
{
  dataCopy = data;
  dataHighlights = [(AEHighlightRenderingController *)self dataHighlights];
  v6 = [dataHighlights objectForKey:dataCopy];

  return v6;
}

+ (UIEdgeInsets)highlightInsets:(BOOL)insets
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

+ (UIEdgeInsets)insetsForHighlight:(id)highlight
{
  annotation = [highlight annotation];
  [self highlightInsets:{objc_msgSend(annotation, "annotationIsUnderline")}];
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

+ (UIEdgeInsets)insetsForHighlight:(id)highlight lineRect:(CGRect)rect numberOfLines:(unint64_t)lines
{
  highlightCopy = highlight;
  [AEHighlightRenderingController insetsForHighlight:highlightCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  vertical = [highlightCopy vertical];

  if (vertical)
  {
    v15 = v7;
  }

  else
  {
    v15 = v13;
  }

  if (vertical)
  {
    v16 = v9;
  }

  else
  {
    v16 = v11;
  }

  if (vertical)
  {
    v17 = v11;
  }

  else
  {
    v17 = v9;
  }

  if (vertical)
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

+ (CGRect)p_currentLineRectForLine:(id)line ofHighlight:(id)highlight
{
  highlightCopy = highlight;
  lineCopy = line;
  [lineCopy currentLineRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  includesCapSpace = [lineCopy includesCapSpace];

  if ((includesCapSpace & 1) == 0)
  {
    [self insetsForHighlight:highlightCopy];
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

+ (CGRect)p_fullLineRectForLine:(id)line ofHighlight:(id)highlight
{
  highlightCopy = highlight;
  lineCopy = line;
  [lineCopy fullLineRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  includesCapSpace = [lineCopy includesCapSpace];

  if ((includesCapSpace & 1) == 0)
  {
    [self insetsForHighlight:highlightCopy];
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

- (id)p_lineRectsForHighlight:(id)highlight
{
  highlightCopy = highlight;
  lines = [highlightCopy lines];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [lines count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = lines;
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

        [objc_opt_class() p_currentLineRectForLine:*(*(&v13 + 1) + 8 * i) ofHighlight:{highlightCopy, v13}];
        v11 = [NSValue valueWithCGRect:?];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)p_renderLinesForHighlight:(id)highlight intoContainerLayer:(id)layer
{
  highlightCopy = highlight;
  layerCopy = layer;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v8 = [(AEHighlightRenderingController *)self p_lineRectsForHighlight:highlightCopy];
  annotation = [highlightCopy annotation];
  annotationIsUnderline = [annotation annotationIsUnderline];

  if ([(AEHighlightRenderingController *)self canUseFilters])
  {
    annotationBlendMode = [(AEHighlightRenderingController *)self annotationBlendMode];
  }

  else
  {
    annotationBlendMode = 0;
  }

  [layerCopy setBlendMode:annotationBlendMode];
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
  selfCopy = self;
  if (CGRectIsNull(v88))
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v68 = layerCopy;
  [layerCopy setFrame:{x, y, width, height}];
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  lines = [highlightCopy lines];
  v26 = [lines countByEnumeratingWithState:&v74 objects:v83 count:16];
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
          objc_enumerationMutation(lines);
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
          if (annotationIsUnderline)
          {
            underlineDirection = [v31 underlineDirection];
            if (underlineDirection == 2)
            {
              v91.origin.x = v42;
              v91.origin.y = v44;
              v91.size.width = v38;
              v91.size.height = v40;
              v42 = CGRectGetMaxX(v91) + -2.0;
            }

            else
            {
              if (underlineDirection != 1)
              {
                if (!underlineDirection)
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
          [highlightCopy cornerRadius];
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
            [highlightCopy cornerRadius];
            v48 = [UIBezierPath bezierPathWithRoundedRect:v42 cornerRadius:v44, v38, v40, v47];
            CGPathAddPath(Mutable, 0, [v48 CGPath]);
          }
        }

        ++v28;
      }

      v27 = [lines countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v27);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  sublayers = [v68 sublayers];
  v50 = [sublayers copy];

  v51 = [v50 countByEnumeratingWithState:&v70 objects:v82 count:16];
  v52 = selfCopy;
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

  annotation2 = [highlightCopy annotation];
  v57 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", [annotation2 annotationStyle], -[AEHighlightRenderingController pageTheme](selfCopy, "pageTheme"), annotationIsUnderline);

  highlightColor = [v57 highlightColor];
  if ([(AEHighlightRenderingController *)selfCopy pageTheme]!= &dword_0 + 3)
  {
    bkaxAdjustedDarkerForIncreaseContrast = [highlightColor bkaxAdjustedDarkerForIncreaseContrast];

    highlightColor = bkaxAdjustedDarkerForIncreaseContrast;
  }

  [AEAnnotationTheme highlightOpacityForPageTheme:[(AEHighlightRenderingController *)selfCopy pageTheme]];
  v60 = [highlightColor colorWithAlphaComponent:?];

  if ([(AEHighlightRenderingController *)selfCopy drawSpecialGrayHighlights]&& [(AEHighlightRenderingController *)selfCopy pageTheme]== &dword_0 + 2)
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

    v52 = selfCopy;
  }

  else
  {
    [v68 setFillColor:{objc_msgSend(v60, "CGColor")}];
  }

  [v68 setPath:Mutable];
  CGPathRelease(Mutable);
  [v68 setHidden:0];
  height = [NSValue valueWithCGRect:x, y, width, height];
  [v68 setValue:height forKey:@"kAEHighlightLayerCurrentRectKey"];

  containerLayers = [(AEHighlightRenderingController *)v52 containerLayers];
  [containerLayers setObject:v68 forKey:highlightCopy];

  +[CATransaction commit];
}

- (void)addHighlight:(id)highlight forData:(id)data
{
  dataCopy = data;
  highlightCopy = highlight;
  dataHighlights = [(AEHighlightRenderingController *)self dataHighlights];
  [dataHighlights setObject:highlightCopy forKey:dataCopy];

  v9 = +[AEHighlightContainerLayer layer];
  [(AEHighlightRenderingController *)self p_renderLinesForHighlight:highlightCopy intoContainerLayer:v9];
}

- (void)removeHighlightForData:(id)data
{
  dataCopy = data;
  dataHighlights = [(AEHighlightRenderingController *)self dataHighlights];
  v5 = [dataHighlights objectForKey:dataCopy];

  if (v5)
  {
    containerLayers = [(AEHighlightRenderingController *)self containerLayers];
    v7 = [containerLayers objectForKey:v5];

    containerLayers2 = [(AEHighlightRenderingController *)self containerLayers];
    [containerLayers2 removeObjectForKey:v5];

    [v7 removeFromSuperlayer];
    dataHighlights2 = [(AEHighlightRenderingController *)self dataHighlights];
    [dataHighlights2 removeObjectForKey:dataCopy];
  }
}

- (void)removeAll
{
  dataHighlights = [(AEHighlightRenderingController *)self dataHighlights];
  v4 = [dataHighlights count];

  if (v4)
  {
    dataHighlights2 = [(AEHighlightRenderingController *)self dataHighlights];
    v6 = NSAllMapTableKeys(dataHighlights2);
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

- (void)updatedHighlight:(id)highlight forceRerender:(BOOL)rerender
{
  highlightCopy = highlight;
  if (highlightCopy)
  {
    v8 = highlightCopy;
    containerLayers = [(AEHighlightRenderingController *)self containerLayers];
    v7 = [containerLayers objectForKey:v8];

    if (!v7)
    {
      v7 = +[AEHighlightContainerLayer layer];
    }

    [(AEHighlightRenderingController *)self p_renderLinesForHighlight:v8 intoContainerLayer:v7];
  }

  _objc_release_x1(highlightCopy);
}

- (id)highlightLayers
{
  v3 = +[NSMutableArray array];
  dataHighlights = [(AEHighlightRenderingController *)self dataHighlights];
  objectEnumerator = [dataHighlights objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v7 = [(AEHighlightRenderingController *)self p_orderHighlights:allObjects];

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
        containerLayers = [(AEHighlightRenderingController *)self containerLayers];
        v15 = [containerLayers objectForKey:v13];

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

- (id)p_highlightForContainerLayer:(id)layer
{
  layerCopy = layer;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  containerLayers = [(AEHighlightRenderingController *)self containerLayers];
  keyEnumerator = [containerLayers keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        containerLayers2 = [(AEHighlightRenderingController *)self containerLayers];
        v13 = [containerLayers2 objectForKey:v11];

        if (v13 == layerCopy)
        {
          v14 = v11;

          goto LABEL_11;
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)annotationUuidForHighlightLayer:(id)layer
{
  v3 = [(AEHighlightRenderingController *)self p_highlightForContainerLayer:layer];
  annotation = [v3 annotation];
  annotationUuid = [annotation annotationUuid];

  return annotationUuid;
}

- (BOOL)layer:(id)layer containsHighlightAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  objc_opt_class();
  v15 = BUDynamicCast();
  if (!v15)
  {
    sub_1E868C(0, v8, v9, v10, v11, v12, v13, v14);
  }

  v19 = [(AEHighlightRenderingController *)self p_highlightForContainerLayer:layerCopy];
  if (!v19)
  {
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AssetsEngine/AECore/Annotations/AEHighlightRenderingController.m", 434, "[AEHighlightRenderingController layer:containsHighlightAtPoint:]", "highlight", 0, v16, v17, v18, v34);
    v32 = [layerCopy containsPoint:{x, y}];
    goto LABEL_17;
  }

  if (![layerCopy containsPoint:{x, y}])
  {
    LOBYTE(v24) = 0;
    goto LABEL_20;
  }

  annotation = [v19 annotation];
  annotationIsUnderline = [annotation annotationIsUnderline];

  if (!annotationIsUnderline)
  {
    path = [v15 path];
    v39.x = x;
    v39.y = y;
    v32 = CGPathContainsPoint(path, 0, v39, 0);
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