@interface THWPRep
- (BOOL)canEditWithEditor:(id)a3;
- (BOOL)canReadHighlights;
- (BOOL)canWriteHighlights;
- (BOOL)hasMarginNoteAtCanvasPoint:(CGPoint)a3;
- (BOOL)p_isSelectionSingleAnchoredDrawableAttachment;
- (BOOL)shouldBeginEditingWithGesture:(id)a3;
- (CGPoint)lastPositionInRoot;
- (CGRect)boundsRectForSelection:(id)a3;
- (CGRect)popoverPresentationRectForRange:(_NSRange)a3;
- (CGRect)rectForHighlight:(_NSRange)a3 lineHasAttachment:(BOOL)a4;
- (CGRect)visibleBoundsForTilingLayer:(id)a3;
- (THMarginNotesController)marginNotesController;
- (THModelContentNode)storageContentNode;
- (THWPHighlightController)highlightController;
- (THWPRep)initWithLayout:(id)a3 canvas:(id)a4;
- (_NSRange)rangeIntersectingFirstOverlappingColumnOfRange:(_NSRange)a3;
- (double)firstLineBaseline;
- (id)allLines;
- (id)backgroundHighlightLayer;
- (id)hitRep:(CGPoint)a3;
- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5;
- (id)marginNoteForAnnotation:(id)a3 inRep:(id)a4 highlightBounds:(CGRect)a5;
- (id)overlayLayers;
- (id)p_lineSearchReferencesForSearchReferences:(id)a3;
- (id)p_lineSelectionsForSelection:(id)a3;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)addMarginNoteLayersToArray:(id)a3;
- (void)dealloc;
- (void)p_addRoundedRectToContext:(CGContext *)a3 rect:(CGRect)a4 forCaret:(BOOL)a5;
- (void)p_cleanup;
- (void)p_enumerateBoundsRectsForRange:(_NSRange)a3 includeSpaceBefore:(BOOL)a4 includeSpaceAfter:(BOOL)a5 includeLeading:(BOOL)a6 withBlock:(id)a7;
- (void)p_enumerateBoundsRectsForSelection:(id)a3 includeSpaceBefore:(BOOL)a4 includeSpaceAfter:(BOOL)a5 includeLeading:(BOOL)a6 withBlock:(id)a7;
- (void)p_setLinkPulseControllerActive:(BOOL)a3 autohide:(BOOL)a4;
- (void)p_setSelectionLineLayersHidden:(BOOL)a3;
- (void)p_updateLinkAnimationForSelection:(id)a3 withAnimatingPulse:(BOOL)a4;
- (void)p_updateLinkForSelection:(id)a3 withAnimatingPulse:(BOOL)a4 selectionFlags:(unsigned int)a5;
- (void)p_updateLinkLayersForRangeSelection:(id)a3 withAnimatingPulse:(BOOL)a4;
- (void)p_updatePulseLayerPositions;
- (void)processFindUIStateChangedNotificationUserInfo:(id)a3;
- (void)pulseAnimationDidStop:(id)a3;
- (void)setupMarginNotesControllerForHighlightController:(id)a3;
- (void)showEditorForMarginNote:(id)a3;
- (void)updateFromLayout;
- (void)viewScaleDidChange;
- (void)willBeRemoved;
@end

@implementation THWPRep

- (THWPRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = THWPRep;
  result = [(THWPRep *)&v5 initWithLayout:a3 canvas:a4];
  if (result)
  {
    result->mHighlightController = 0;
  }

  __dmb(0xBu);
  return result;
}

- (void)p_cleanup
{
  [(CALayer *)self->mBackgroundHighlightLayer setDelegate:0];
  [(CALayer *)self->mBackgroundHighlightLayer removeFromSuperlayer];

  self->mBackgroundHighlightLayer = 0;
  [(THWPRep *)self setActiveHighlightLayers:0];
  [(TSKHighlightArrayController *)self->mLinkPulseArrayController disconnect];
  [(TSKHighlightArrayController *)self->mLinkPulseArrayController reset];

  self->mLinkPulseArrayController = 0;

  [(THWPRep *)self setLinkPulseSearchReferences:0];
}

- (void)dealloc
{
  [(THWPRep *)self setHighlightController:0];
  [(THWPRep *)self p_cleanup];
  v3.receiver = self;
  v3.super_class = THWPRep;
  [(THWPRep *)&v3 dealloc];
}

- (void)willBeRemoved
{
  v4.receiver = self;
  v4.super_class = THWPRep;
  [(THWPRep *)&v4 willBeRemoved];
  objc_sync_enter(self);
  mHighlightController = self->mHighlightController;
  if (mHighlightController)
  {
    [(THWPHighlightController *)mHighlightController parentWillBeRemovedFromCanvas:self];
  }

  objc_sync_exit(self);
  [(THWPRep *)self p_cleanup];
}

- (BOOL)canReadHighlights
{
  if (![(THWPRep *)self storageContentNode])
  {
    return 0;
  }

  if ([-[THWPRep storage](self "storage")])
  {
    return 0;
  }

  if (![-[THWPRep canvas](self "canvas")])
  {
    return 0;
  }

  [(THWPRep *)self interactiveCanvasController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  [(THWPRep *)self interactiveCanvasController];
  v3 = TSUDynamicCast();

  return [v3 supportsReadingHighlights];
}

- (BOOL)canWriteHighlights
{
  if (![(THWPRep *)self storageContentNode])
  {
    return 0;
  }

  if (![(THWPRep *)self canReadHighlights])
  {
    return 0;
  }

  if (![-[THWPRep canvas](self "canvas")])
  {
    return 0;
  }

  [(THWPRep *)self interactiveCanvasController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  [(THWPRep *)self interactiveCanvasController];
  v3 = TSUDynamicCast();

  return [v3 supportsWritingHighlights];
}

- (THWPHighlightController)highlightController
{
  if ([(THWPRep *)self canReadHighlights])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_9E604;
    block[3] = &unk_45AE00;
    block[4] = self;
    if (self->mHighlightControllerOnceToken != -1)
    {
      dispatch_once(&self->mHighlightControllerOnceToken, block);
    }
  }

  return self->mHighlightController;
}

- (THModelContentNode)storageContentNode
{
  v2 = [objc_msgSend(-[THWPRep layout](self "layout")];

  return [v2 contentNode];
}

- (id)backgroundHighlightLayer
{
  result = self->mBackgroundHighlightLayer;
  if (!result)
  {
    v4 = objc_alloc_init(CALayer);
    self->mBackgroundHighlightLayer = v4;
    [(CALayer *)v4 setAnchorPoint:CGPointZero.x, CGPointZero.y];
    [(CALayer *)self->mBackgroundHighlightLayer setEdgeAntialiasingMask:0];
    [(CALayer *)self->mBackgroundHighlightLayer setDelegate:self];
    [(CALayer *)self->mBackgroundHighlightLayer setPosition:CGPointZero.x, CGPointZero.y];
    [(CALayer *)self->mBackgroundHighlightLayer setZPosition:-2.1];
    [-[THWPRep canvas](self "canvas")];
    [(CALayer *)self->mBackgroundHighlightLayer setContentsScale:?];
    return self->mBackgroundHighlightLayer;
  }

  return result;
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  v36.receiver = self;
  v36.super_class = THWPRep;
  [(THWPRep *)&v36 addAdditionalChildLayersToArray:?];
  if ([(THWPRep *)self canReadHighlights])
  {
    v5 = [(THWPRep *)self highlightController];
    [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [-[THWPRep canvas](self "canvas")];
    v15 = [(THWPHighlightController *)v5 highlightLayersInCanvasUnscaledRect:v7 scale:v9, v11, v13, v14];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = [(THWPRep *)self activeHighlightLayers];
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          if (([v15 containsObject:v21] & 1) == 0)
          {
            [v21 removeFromSuperlayer];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v18);
    }

    [(THWPRep *)self setActiveHighlightLayers:v15];
    if ([(NSArray *)[(THWPRep *)self activeHighlightLayers] count])
    {
      v22 = [(THWPRep *)self backgroundHighlightLayer];
      [a3 insertObject:v22 atIndex:0];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v23 = [(NSArray *)[(THWPRep *)self activeHighlightLayers] reverseObjectEnumerator];
      v24 = [(NSEnumerator *)v23 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v29;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v29 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [v22 insertSublayer:*(*(&v28 + 1) + 8 * j) atIndex:0];
          }

          v25 = [(NSEnumerator *)v23 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v25);
      }
    }

    [(THWPRep *)self addMarginNoteLayersToArray:a3];
  }
}

- (BOOL)shouldBeginEditingWithGesture:(id)a3
{
  [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
  if (objc_opt_respondsToSelector())
  {
    v5 = [objc_msgSend(-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    v6 = [a3 gestureKind];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = [a3 gestureKind];
  }

  v8 = v6;
  if (v6 == TSWPTapAndTouch || [(THWPRep *)self p_shouldStartEditingOnPress]&& v8 == TSWPImmediatePress)
  {
    return 1;
  }

  result = [(THWPRep *)self p_shouldStartEditingOnLongPress];
  if (v8 != TSWPLongPress)
  {
    return 0;
  }

  return result;
}

- (BOOL)canEditWithEditor:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = [v4 storage];
    if (v5 == [(THWPRep *)self storage])
    {
      LOBYTE(v4) = [-[THWPRep parentRep](self "parentRep")] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (_NSRange)rangeIntersectingFirstOverlappingColumnOfRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(THWPRep *)self columns];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v21.location = [*(*(&v14 + 1) + 8 * v9) range];
        v21.length = v10;
        v19.location = location;
        v19.length = length;
        v11 = NSIntersectionRange(v19, v21);
        if (v11.length)
        {
          length = v11.length;
          location = v11.location;
          goto LABEL_11;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_11:
  v12 = location;
  v13 = length;
  result.length = v13;
  result.location = v12;
  return result;
}

- (CGRect)rectForHighlight:(_NSRange)a3 lineHasAttachment:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v8 = [(THWPRep *)self storage];
  v17.location = location;
  v17.length = length;
  v9 = THTrimHighlightRange(v8, v17);
  v11 = [TSWPSelection selectionWithRange:v9, v10];
  [(THWPRep *)self boundsRectForSelection:v11];
  if (v4)
  {
    [(THWPRep *)self rectForSelection:v11];
  }

  TSDRoundedRectForMainScreen();
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)firstLineBaseline
{
  v2 = [-[THWPRep columns](self "columns")];
  if (![v2 countLines])
  {
    return 0.0;
  }

  v3 = [v2 lineFragmentAtIndex:0];
  return v3[4] + v3[5];
}

- (CGRect)popoverPresentationRectForRange:(_NSRange)a3
{
  v4 = [(THWPRep *)self lineSelectionsForSelection:[TSWPSelection selectionWithRange:a3.location, a3.length]];
  v5 = +[NSMutableArray array];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v73;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v73 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v72 + 1) + 8 * i);
        v11 = [(THWPRep *)self storage];
        v12 = [v10 range];
        v14 = v13;
        v78.location = v12;
        v78.length = v14;
        v15 = THTrimHighlightRange(v11, v78);
        if (v16)
        {
          [v5 addObject:{+[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", v15, v16)}];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v7);
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if ([v5 count] == &dword_0 + 2)
  {
    v21 = [objc_msgSend(v5 objectAtIndex:{0), "range"}];
    -[THWPRep rectForHighlight:lineHasAttachment:](self, "rectForHighlight:lineHasAttachment:", v21, v22, [-[THWPRep storage](self "storage")]);
    x = v23;
    y = v24;
    width = v25;
    height = v26;
    v27 = [objc_msgSend(v5 objectAtIndex:{1), "range"}];
    -[THWPRep rectForHighlight:lineHasAttachment:](self, "rectForHighlight:lineHasAttachment:", v27, v28, [-[THWPRep storage](self "storage")]);
    v30 = v29;
    r2.origin.y = v31;
    v33 = v32;
    v35 = v34;
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    MinX = CGRectGetMinX(v79);
    v80.origin.x = v30;
    v80.origin.y = r2.origin.y;
    v80.size.width = v33;
    v80.size.height = v35;
    if (MinX <= CGRectGetMaxX(v80))
    {
      v81.origin.x = x;
      v81.origin.y = y;
      v81.size.width = width;
      v81.size.height = height;
      v95.origin.x = v30;
      v95.origin.y = r2.origin.y;
      v95.size.width = v33;
      v95.size.height = v35;
      v82 = CGRectUnion(v81, v95);
      x = v82.origin.x;
      y = v82.origin.y;
      width = v82.size.width;
      height = v82.size.height;
    }
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    r2.size = 0u;
    v69 = 0u;
    v37 = [v5 countByEnumeratingWithState:&r2.size objects:v76 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v69;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v69 != v39)
          {
            objc_enumerationMutation(v5);
          }

          v41 = *(*&r2.size.height + 8 * j);
          [v41 range];
          if (v42)
          {
            v43 = [v41 range];
            v45 = v44;
            v46 = [(THWPRep *)self storage];
            v47 = [v41 range];
            -[THWPRep rectForHighlight:lineHasAttachment:](self, "rectForHighlight:lineHasAttachment:", v43, v45, [v46 rangeContainsAttachment:{v47, v48}]);
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;
            v83.origin.x = x;
            v83.origin.y = y;
            v83.size.width = width;
            v83.size.height = height;
            if (CGRectIsEmpty(v83))
            {
              x = v50;
              y = v52;
              width = v54;
              height = v56;
            }

            else
            {
              r2.origin.y = v50;
              v84.origin.x = v50;
              v57 = v52;
              v84.origin.y = v52;
              v58 = v54;
              v84.size.width = v54;
              v59 = v56;
              v84.size.height = v56;
              MaxX = CGRectGetMaxX(v84);
              v85.origin.x = x;
              v85.origin.y = y;
              v85.size.width = width;
              v85.size.height = height;
              if (MaxX <= CGRectGetMinX(v85))
              {
                goto LABEL_28;
              }

              v86.origin.x = r2.origin.y;
              v86.origin.y = v57;
              v86.size.width = v58;
              v86.size.height = v59;
              v61 = CGRectGetMinX(v86);
              v87.origin.x = x;
              v87.origin.y = y;
              v87.size.width = width;
              v87.size.height = height;
              if (v61 >= CGRectGetMaxX(v87))
              {
                goto LABEL_28;
              }

              v88.origin.x = r2.origin.y;
              v88.origin.y = v57;
              v88.size.width = v58;
              v88.size.height = v59;
              MaxY = CGRectGetMaxY(v88);
              v89.origin.x = x;
              v89.origin.y = y;
              v89.size.width = width;
              v89.size.height = height;
              if (MaxY > CGRectGetMaxY(v89))
              {
                v90.origin.x = r2.origin.y;
                v90.origin.y = v57;
                v90.size.width = v58;
                v90.size.height = v59;
                MinY = CGRectGetMinY(v90);
                v91.origin.x = x;
                v91.origin.y = y;
                v91.size.width = width;
                v91.size.height = height;
                if (MinY > CGRectGetMinY(v91))
                {
                  v92.origin.x = x;
                  v92.origin.y = y;
                  v92.size.width = width;
                  v92.size.height = height;
                  v96.origin.x = r2.origin.y;
                  v96.origin.y = v57;
                  v96.size.width = v58;
                  v96.size.height = v59;
                  v93 = CGRectUnion(v92, v96);
                  x = v93.origin.x;
                  y = v93.origin.y;
                  width = v93.size.width;
                  height = v93.size.height;
                }
              }
            }
          }
        }

        v38 = [v5 countByEnumeratingWithState:&r2.size objects:v76 count:16];
      }

      while (v38);
    }
  }

LABEL_28:
  v64 = x;
  v65 = y;
  v66 = width;
  v67 = height;
  result.size.height = v67;
  result.size.width = v66;
  result.origin.y = v65;
  result.origin.x = v64;
  return result;
}

- (id)allLines
{
  v3 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(THWPRep *)self columns];
  v19 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v19)
  {
    v18 = *v22;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * i);
        v6 = [v5 countLines];
        if (v6)
        {
          v7 = v6;
          for (j = 0; j != v7; ++j)
          {
            v9 = [v5 lineFragmentAtIndex:j];
            v10 = [TSWPSelection selectionWithRange:*v9, v9[1]];
            v11 = [(THWPRep *)self storage];
            v12 = [(TSWPSelection *)v10 range];
            v14 = v13;
            v26.location = v12;
            v26.length = v14;
            THTrimHighlightRange(v11, v26);
            if (v15)
            {
              if (v5)
              {
                [v5 lineMetricsAtCharIndex:*v9 allowEndOfLine:0];
              }

              else
              {
                memset(v20, 0, sizeof(v20));
              }

              [v3 addObject:{+[THWPRepLine lineWithLineMetrics:](THWPRepLine, "lineWithLineMetrics:", v20)}];
            }
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v19);
  }

  return v3;
}

- (id)hitRep:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  [(THWPRep *)self convertNaturalPointToUnscaledCanvas:?];
  if (![(THWPRep *)v5 hasMarginNoteAtCanvasPoint:?])
  {
    v7.receiver = v5;
    v7.super_class = THWPRep;
    return [(THWPRep *)&v7 hitRep:x, y];
  }

  return v5;
}

- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = THWPRep;
  result = [(THWPRep *)&v9 hitRep:a4 withGesture:a5 passingTest:?];
  if (!result)
  {
    [(THWPRep *)self convertNaturalPointToUnscaledCanvas:x, y];
    if ([(THWPRep *)self hasMarginNoteAtCanvasPoint:?])
    {
      return self;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (THMarginNotesController)marginNotesController
{
  v2 = [(THWPRep *)self highlightController];

  return [(THWPHighlightController *)v2 marginNotesController];
}

- (void)addMarginNoteLayersToArray:(id)a3
{
  v4 = [(THMarginNotesController *)[(THWPRep *)self marginNotesController] layers];

  [a3 addObjectsFromArray:v4];
}

- (BOOL)hasMarginNoteAtCanvasPoint:(CGPoint)a3
{
  [-[THWPRep marginNotesOwner](self "marginNotesOwner")];
  v5 = v4;
  v7 = v6;
  v8 = [(THWPRep *)self marginNotesController];

  return [(THMarginNotesController *)v8 hasMarginNoteAtPoint:v5, v7];
}

- (void)setupMarginNotesControllerForHighlightController:(id)a3
{
  v11 = objc_alloc_init(THMarginNotesController);
  [a3 setMarginNotesController:v11];
  y = CGPointZero.y;
  [objc_msgSend(-[THWPRep layout](self "layout")];
  v7 = v6;
  v9 = v8;
  if (TSUPadUI())
  {
    v10 = -45.0;
  }

  else
  {
    v10 = -75.0;
  }

  v13.origin.x = CGPointZero.x;
  v13.origin.y = y;
  v13.size.width = v7;
  v13.size.height = v9;
  v14 = CGRectInset(v13, v10, 0.0);
  [(THMarginNotesController *)v11 setOwnerFrame:v14.origin.x, v14.origin.y, v14.size.width, v14.size.height];
  [-[THWPRep canvas](self "canvas")];
  [(THMarginNotesController *)v11 setOwnerScale:?];
}

- (void)viewScaleDidChange
{
  [-[THWPRep canvas](self "canvas")];
  [(THMarginNotesController *)[(THWPHighlightController *)[(THWPRep *)self highlightController] marginNotesController] setOwnerScale:v3];
  v4.receiver = self;
  v4.super_class = THWPRep;
  [(THWPRep *)&v4 viewScaleDidChange];
}

- (id)marginNoteForAnnotation:(id)a3 inRep:(id)a4 highlightBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  if (a4 != self)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v11 = objc_alloc_init(AEMarginNote);
  [v11 setAnnotation:a3];
  [v11 setSide:0];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetMinY(v14);
  [-[THWPRep canvas](self "canvas")];
  TSDRoundForScale();
  [v11 setYStart:?];
  [v11 setTheme:{objc_msgSend(a3, "theme")}];

  return v11;
}

- (void)showEditorForMarginNote:(id)a3
{
  v4 = [(THWPRep *)self highlightController];

  [(THWPHighlightController *)v4 showNoteEditorForMarginNote:a3];
}

- (id)overlayLayers
{
  v7.receiver = self;
  v7.super_class = THWPRep;
  v3 = [NSMutableArray arrayWithArray:[(THWPRep *)&v7 overlayLayers]];
  mLinkPulseArrayController = self->mLinkPulseArrayController;
  if (mLinkPulseArrayController)
  {
    v5 = [(TSKHighlightArrayController *)mLinkPulseArrayController layers];
    if ([v5 count])
    {
      [(THWPRep *)self p_updatePulseLayerPositions];
      [v5 makeObjectsPerformSelector:"setDelegate:" withObject:{-[THWPRep interactiveCanvasController](self, "interactiveCanvasController")}];
      [(NSMutableArray *)v3 addObjectsFromArray:v5];
    }
  }

  return v3;
}

- (void)pulseAnimationDidStop:(id)a3
{
  v6.receiver = self;
  v6.super_class = THWPRep;
  [(THWPRep *)&v6 pulseAnimationDidStop:?];
  mLinkPulseArrayController = self->mLinkPulseArrayController;
  if (mLinkPulseArrayController == a3)
  {
    if ([(TSKHighlightArrayController *)mLinkPulseArrayController autohide])
    {
      [(THWPRep *)self p_setLinkPulseControllerActive:0 autohide:0];
      [(THWPRep *)self p_updateLinkLayersForRangeSelection:[(THWPRep *)self selection] withAnimatingPulse:0];
      [(THWPRep *)self invalidateKnobs];
      [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    }
  }
}

- (void)processFindUIStateChangedNotificationUserInfo:(id)a3
{
  if (a3 && [a3 objectForKey:@"THMessageIsForTHWPRep"])
  {
    v5 = [objc_msgSend(a3 objectForKey:{TSKSearchReferencesToHighlightKey), "objectForKey:", -[THWPRep storage](self, "storage")}];
    if (v5)
    {
      v6 = [NSArray arrayWithArray:v5];

      [(THWPRep *)self setLinkPulseSearchReferences:v6];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = THWPRep;
    [(THWPRep *)&v7 processFindUIStateChangedNotificationUserInfo:a3];
  }
}

- (void)updateFromLayout
{
  v7.receiver = self;
  v7.super_class = THWPRep;
  [(THWPRep *)&v7 updateFromLayout];
  if ([(THWPRep *)self linkPulseSearchReferences])
  {
    [(THWPRep *)self p_setLinkPulseControllerActive:1 autohide:1];
    [(THWPRep *)self setLinkPulseActivationTime:CACurrentMediaTime()];
    -[THWPRep p_updateLinkForSelection:withAnimatingPulse:selectionFlags:](self, "p_updateLinkForSelection:withAnimatingPulse:selectionFlags:", [-[NSArray objectAtIndex:](-[THWPRep linkPulseSearchReferences](self "linkPulseSearchReferences")], 1, 0);
  }

  else if (self->mLinkPulseArrayController)
  {
    [(THWPRep *)self linkPulseActivationTime];
    if (v4 != 0.0)
    {
      v5 = CACurrentMediaTime();
      [(THWPRep *)self linkPulseActivationTime];
      if (v5 - v6 > 0.1)
      {
        [(TSKHighlightArrayController *)self->mLinkPulseArrayController disconnect];
        [(TSKHighlightArrayController *)self->mLinkPulseArrayController reset];

        self->mLinkPulseArrayController = 0;
      }
    }
  }

  [(THWPRep *)self setLinkPulseSearchReferences:0];
  v3 = [(THWPRep *)self highlightController];
  if (v3)
  {
    [(THWPHighlightController *)v3 updateFromLayout];
  }
}

- (void)p_setLinkPulseControllerActive:(BOOL)a3 autohide:(BOOL)a4
{
  mLinkPulseArrayController = self->mLinkPulseArrayController;
  if (a3)
  {
    v6 = a4;
    if (!mLinkPulseArrayController)
    {
      mLinkPulseArrayController = [[TSKHighlightArrayController alloc] initWithZOrder:self delegate:4.0];
      self->mLinkPulseArrayController = mLinkPulseArrayController;
    }

    [(TSKHighlightArrayController *)mLinkPulseArrayController setShouldPulsate:0];
    v7 = self->mLinkPulseArrayController;

    [(TSKHighlightArrayController *)v7 setAutohide:v6];
  }

  else if (mLinkPulseArrayController)
  {
    [(TSKHighlightArrayController *)mLinkPulseArrayController disconnect];
    [(TSKHighlightArrayController *)self->mLinkPulseArrayController reset];

    self->mLinkPulseArrayController = 0;
  }
}

- (void)p_updatePulseLayerPositions
{
  [objc_msgSend(-[THWPRep layout](self "layout")];
  v4 = v3;
  v6 = v5;
  [(THWPRep *)self lastPositionInRoot];
  if (v8 != v4 || v7 != v6)
  {
    [(THWPRep *)self lastPositionInRoot];
    v10 = [(TSKHighlightArrayController *)self->mLinkPulseArrayController layers];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      TSDSubtractPoints();
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          [v15 position];
          TSDAddPoints();
          [v15 setPosition:?];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  [(THWPRep *)self setLastPositionInRoot:v4, v6];
}

- (void)p_updateLinkAnimationForSelection:(id)a3 withAnimatingPulse:(BOOL)a4
{
  v4 = a4;
  if (([(TSKHighlightArrayController *)self->mLinkPulseArrayController pulsating]& 1) == 0)
  {
    if ([a3 isValid])
    {
      v7 = OBJC_IVAR___TSWPRep__updatingHighlights;
      if ((self->TSWPRep_opaque[OBJC_IVAR___TSWPRep__updatingHighlights] & 1) == 0)
      {
        self->TSWPRep_opaque[OBJC_IVAR___TSWPRep__updatingHighlights] = 1;
        v8 = [(THWPRep *)self layout];
        if (v8)
        {
          [v8 transformInRoot];
        }

        else
        {
          v16 = 0u;
          v17 = 0u;
          v15 = 0u;
        }

        mLinkPulseArrayController = self->mLinkPulseArrayController;
        v14[0] = v15;
        v14[1] = v16;
        v14[2] = v17;
        [(TSKHighlightArrayController *)mLinkPulseArrayController setTransform:v14];
        [*&self->TSWPRep_opaque[OBJC_IVAR___TSDRep_mCanvas] viewScale];
        [(TSKHighlightArrayController *)self->mLinkPulseArrayController setViewScale:?];
        v10 = [[TSWPSearchReference alloc] initWithStorage:-[THWPRep storage](self selection:{"storage"), a3}];
        v11 = [[NSArray alloc] initWithObjects:{v10, 0}];
        v12 = [(THWPRep *)self p_lineSearchReferencesForSearchReferences:v11];
        [objc_msgSend(-[THWPRep layout](self "layout")];
        [(THWPRep *)self setLastPositionInRoot:?];
        v13 = self->mLinkPulseArrayController;
        [-[THWPRep canvas](self "canvas")];
        [(TSKHighlightArrayController *)v13 buildHighlightsForSearchReferences:v12 contentsScaleForLayers:?];

        if (v4)
        {
          [(TSKHighlightArrayController *)self->mLinkPulseArrayController startAnimating];
        }

        [(THWPRep *)self p_setSelectionLineLayersHidden:1];
        self->TSWPRep_opaque[v7] = 0;
      }
    }
  }
}

- (void)p_updateLinkLayersForRangeSelection:(id)a3 withAnimatingPulse:(BOOL)a4
{
  if (self->mLinkPulseArrayController)
  {
    [(THWPRep *)self p_updateLinkAnimationForSelection:a3 withAnimatingPulse:a4];
  }
}

- (void)p_updateLinkForSelection:(id)a3 withAnimatingPulse:(BOOL)a4 selectionFlags:(unsigned int)a5
{
  v5 = a4;
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TSUAssertionHandler currentHandler];
      v9 = [NSString stringWithUTF8String:"[THWPRep p_updateLinkForSelection:withAnimatingPulse:selectionFlags:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THWPRep.mm"];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = objc_opt_class();
      [v8 handleFailureInFunction:v9 file:v10 lineNumber:751 description:{@"%s expected %@, got %@", "-[THWPRep p_updateLinkForSelection:withAnimatingPulse:selectionFlags:]", v12, NSStringFromClass(v13)}];
    }
  }

  if (*&self->TSWPRep_opaque[OBJC_IVAR___TSWPRep__caretLayer])
  {
    if ((self->TSWPRep_opaque[OBJC_IVAR___TSWPRep__suppressSelectionHighlight] & 1) == 0)
    {
      [-[THWPRep layout](self "layout")];
      if ([a3 isRange])
      {

        [(THWPRep *)self p_updateLinkLayersForRangeSelection:a3 withAnimatingPulse:v5];
      }
    }
  }
}

- (void)p_addRoundedRectToContext:(CGContext *)a3 rect:(CGRect)a4 forCaret:(BOOL)a5
{
  v5 = a5;
  v23 = CGRectIntegral(a4);
  v7 = -0.1;
  if (!v5)
  {
    v7 = -4.0;
  }

  v24 = CGRectInset(v23, v7, v7);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  CGContextBeginTransparencyLayer(a3, 0);
  DeviceRGB = TSUCGColorCreateDeviceRGB();
  v13 = TSUCGColorCreateDeviceRGB();
  v14 = TSUCGColorCreateDeviceRGB();
  v15 = TSUCGColorCreateDeviceRGB();
  v16 = TSDCreateRoundRectPathForRectWithRadius();
  CGContextSaveGState(a3);
  v20.width = 0.0;
  v20.height = -1.0;
  CGContextSetShadowWithColor(a3, v20, 4.0, DeviceRGB);
  CGContextAddPath(a3, v16);
  CGContextSetFillColorWithColor(a3, v13);
  CGContextFillPath(a3);
  CGContextRestoreGState(a3);
  CGContextSaveGState(a3);
  CGContextAddPath(a3, v16);
  CGContextSetStrokeColorWithColor(a3, v15);
  CGContextSetLineWidth(a3, 1.0);
  CGContextDrawPath(a3, kCGPathStroke);
  CGContextRestoreGState(a3);
  CGContextSaveGState(a3);
  v17 = [[NSArray alloc] initWithObjects:{v13, v14, 0}];
  CGContextAddPath(a3, v16);
  CGContextClip(a3);
  v18 = CGGradientCreateWithColors(0, v17, 0);

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v22.y = CGRectGetMaxY(v25);
  v21.x = 0.0;
  v22.x = 0.0;
  v21.y = y;
  CGContextDrawLinearGradient(a3, v18, v21, v22, 0);
  CGGradientRelease(v18);
  CGContextRestoreGState(a3);
  CGColorRelease(DeviceRGB);
  CGColorRelease(v14);
  CGColorRelease(v13);
  CGColorRelease(v15);
  CGPathRelease(v16);

  CGContextEndTransparencyLayer(a3);
}

- (void)p_setSelectionLineLayersHidden:(BOOL)a3
{
  v3 = a3;
  v4 = &self->TSWPRep_opaque[OBJC_IVAR___TSWPRep__selectionLineLayers];
  [*v4 setHidden:?];
  v5 = *(v4 + 1);

  [v5 setHidden:v3];
}

- (id)p_lineSearchReferencesForSearchReferences:(id)a3
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  v4 = 0;
  if (v17)
  {
    v16 = *v24;
    do
    {
      v5 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v6 = -[THWPRep p_lineSelectionsForSelection:](self, "p_lineSelectionsForSelection:", [*(*(&v23 + 1) + 8 * v5) selection]);
        v18 = v5;
        if (v6)
        {
          v7 = v6;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v20;
            do
            {
              v11 = 0;
              do
              {
                if (*v20 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v19 + 1) + 8 * v11);
                if (!v4)
                {
                  v4 = +[NSMutableArray array];
                }

                v13 = [[TSWPSearchReference alloc] initWithStorage:-[THWPRep storage](self selection:{"storage"), v12}];
                [v4 addObject:v13];

                v11 = v11 + 1;
              }

              while (v9 != v11);
              v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v9);
          }
        }

        v5 = v18 + 1;
      }

      while ((v18 + 1) != v17);
      v17 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  return v4;
}

- (id)p_lineSelectionsForSelection:(id)a3
{
  if (![a3 isRange])
  {
    return 0;
  }

  if ([(THWPRep *)self p_isSelectionSingleAnchoredDrawableAttachment])
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(THWPRep *)self columns];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [*(*(&v14 + 1) + 8 * i) lineSelectionsForSelection:a3];
      if (v11)
      {
        v12 = v11;
        if (!v8)
        {
          v8 = +[NSMutableArray array];
        }

        [v8 addObjectsFromArray:v12];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v7);
  return v8;
}

- (BOOL)p_isSelectionSingleAnchoredDrawableAttachment
{
  v2 = [(THWPRep *)self textEditor];

  return [v2 isSelectionSingleAnchoredDrawableAttachment];
}

- (void)p_enumerateBoundsRectsForRange:(_NSRange)a3 includeSpaceBefore:(BOOL)a4 includeSpaceAfter:(BOOL)a5 includeLeading:(BOOL)a6 withBlock:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = [TSWPSelection selectionWithRange:a3.location, a3.length];

  [(THWPRep *)self p_enumerateBoundsRectsForSelection:v12 includeSpaceBefore:v10 includeSpaceAfter:v9 includeLeading:v8 withBlock:a7];
}

- (void)p_enumerateBoundsRectsForSelection:(id)a3 includeSpaceBefore:(BOOL)a4 includeSpaceAfter:(BOOL)a5 includeLeading:(BOOL)a6 withBlock:(id)a7
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  if (a3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(THWPRep *)self columns];
    v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        v12 = 0;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v14 = [a3 range];
          LOWORD(v21) = 0;
          v16 = [v13 rectsForSelectionRange:v14 selectionType:v15 includeSpaceAfter:objc_msgSend(a3 includeSpaceBefore:"type") includeLeading:v24 forParagraphMode:v23 includeRuby:{v25, v21}];
          v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v27;
            do
            {
              v20 = 0;
              do
              {
                if (*v27 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v26 + 1) + 8 * v20) CGRectValue];
                (*(a7 + 2))(a7);
                v20 = v20 + 1;
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v18);
          }

          v12 = v12 + 1;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }
  }
}

- (CGRect)boundsRectForSelection:(id)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5012000000;
  v16 = sub_A0BC0;
  v17 = nullsub_20;
  v18 = "";
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v20 = size;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_A0BD0;
  v12[3] = &unk_45CCA8;
  v12[4] = &v13;
  [(THWPRep *)self p_enumerateBoundsRectsForSelection:a3 includeSpaceBefore:0 includeSpaceAfter:0 includeLeading:0 withBlock:v12];
  v4 = v14[6];
  v5 = v14[7];
  v6 = v14[8];
  v7 = v14[9];
  _Block_object_dispose(&v13, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)visibleBoundsForTilingLayer:(id)a3
{
  if ([(THWPRep *)self highlightController])
  {
    v5 = [(THWPRep *)self highlightController];
    [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    if ([(THWPHighlightController *)v5 needsToRedrawForVisibleBounds:?])
    {
      [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    }
  }

  v10.receiver = self;
  v10.super_class = THWPRep;
  [(THWPRep *)&v10 visibleBoundsForTilingLayer:a3];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGPoint)lastPositionInRoot
{
  x = self->mLastPositionInRoot.x;
  y = self->mLastPositionInRoot.y;
  result.y = y;
  result.x = x;
  return result;
}

@end