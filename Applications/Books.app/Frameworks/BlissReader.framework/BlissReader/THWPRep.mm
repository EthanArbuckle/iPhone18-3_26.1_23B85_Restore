@interface THWPRep
- (BOOL)canEditWithEditor:(id)editor;
- (BOOL)canReadHighlights;
- (BOOL)canWriteHighlights;
- (BOOL)hasMarginNoteAtCanvasPoint:(CGPoint)point;
- (BOOL)p_isSelectionSingleAnchoredDrawableAttachment;
- (BOOL)shouldBeginEditingWithGesture:(id)gesture;
- (CGPoint)lastPositionInRoot;
- (CGRect)boundsRectForSelection:(id)selection;
- (CGRect)popoverPresentationRectForRange:(_NSRange)range;
- (CGRect)rectForHighlight:(_NSRange)highlight lineHasAttachment:(BOOL)attachment;
- (CGRect)visibleBoundsForTilingLayer:(id)layer;
- (THMarginNotesController)marginNotesController;
- (THModelContentNode)storageContentNode;
- (THWPHighlightController)highlightController;
- (THWPRep)initWithLayout:(id)layout canvas:(id)canvas;
- (_NSRange)rangeIntersectingFirstOverlappingColumnOfRange:(_NSRange)range;
- (double)firstLineBaseline;
- (id)allLines;
- (id)backgroundHighlightLayer;
- (id)hitRep:(CGPoint)rep;
- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test;
- (id)marginNoteForAnnotation:(id)annotation inRep:(id)rep highlightBounds:(CGRect)bounds;
- (id)overlayLayers;
- (id)p_lineSearchReferencesForSearchReferences:(id)references;
- (id)p_lineSelectionsForSelection:(id)selection;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)addMarginNoteLayersToArray:(id)array;
- (void)dealloc;
- (void)p_addRoundedRectToContext:(CGContext *)context rect:(CGRect)rect forCaret:(BOOL)caret;
- (void)p_cleanup;
- (void)p_enumerateBoundsRectsForRange:(_NSRange)range includeSpaceBefore:(BOOL)before includeSpaceAfter:(BOOL)after includeLeading:(BOOL)leading withBlock:(id)block;
- (void)p_enumerateBoundsRectsForSelection:(id)selection includeSpaceBefore:(BOOL)before includeSpaceAfter:(BOOL)after includeLeading:(BOOL)leading withBlock:(id)block;
- (void)p_setLinkPulseControllerActive:(BOOL)active autohide:(BOOL)autohide;
- (void)p_setSelectionLineLayersHidden:(BOOL)hidden;
- (void)p_updateLinkAnimationForSelection:(id)selection withAnimatingPulse:(BOOL)pulse;
- (void)p_updateLinkForSelection:(id)selection withAnimatingPulse:(BOOL)pulse selectionFlags:(unsigned int)flags;
- (void)p_updateLinkLayersForRangeSelection:(id)selection withAnimatingPulse:(BOOL)pulse;
- (void)p_updatePulseLayerPositions;
- (void)processFindUIStateChangedNotificationUserInfo:(id)info;
- (void)pulseAnimationDidStop:(id)stop;
- (void)setupMarginNotesControllerForHighlightController:(id)controller;
- (void)showEditorForMarginNote:(id)note;
- (void)updateFromLayout;
- (void)viewScaleDidChange;
- (void)willBeRemoved;
@end

@implementation THWPRep

- (THWPRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = THWPRep;
  result = [(THWPRep *)&v5 initWithLayout:layout canvas:canvas];
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

- (void)addAdditionalChildLayersToArray:(id)array
{
  v36.receiver = self;
  v36.super_class = THWPRep;
  [(THWPRep *)&v36 addAdditionalChildLayersToArray:?];
  if ([(THWPRep *)self canReadHighlights])
  {
    highlightController = [(THWPRep *)self highlightController];
    [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [-[THWPRep canvas](self "canvas")];
    v15 = [(THWPHighlightController *)highlightController highlightLayersInCanvasUnscaledRect:v7 scale:v9, v11, v13, v14];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    activeHighlightLayers = [(THWPRep *)self activeHighlightLayers];
    v17 = [(NSArray *)activeHighlightLayers countByEnumeratingWithState:&v32 objects:v38 count:16];
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
            objc_enumerationMutation(activeHighlightLayers);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          if (([v15 containsObject:v21] & 1) == 0)
          {
            [v21 removeFromSuperlayer];
          }
        }

        v18 = [(NSArray *)activeHighlightLayers countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v18);
    }

    [(THWPRep *)self setActiveHighlightLayers:v15];
    if ([(NSArray *)[(THWPRep *)self activeHighlightLayers] count])
    {
      backgroundHighlightLayer = [(THWPRep *)self backgroundHighlightLayer];
      [array insertObject:backgroundHighlightLayer atIndex:0];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      reverseObjectEnumerator = [(NSArray *)[(THWPRep *)self activeHighlightLayers] reverseObjectEnumerator];
      v24 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v37 count:16];
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
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            [backgroundHighlightLayer insertSublayer:*(*(&v28 + 1) + 8 * j) atIndex:0];
          }

          v25 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v25);
      }
    }

    [(THWPRep *)self addMarginNoteLayersToArray:array];
  }
}

- (BOOL)shouldBeginEditingWithGesture:(id)gesture
{
  [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
  if (objc_opt_respondsToSelector())
  {
    v5 = [objc_msgSend(-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    gestureKind = [gesture gestureKind];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    gestureKind = [gesture gestureKind];
  }

  v8 = gestureKind;
  if (gestureKind == TSWPTapAndTouch || [(THWPRep *)self p_shouldStartEditingOnPress]&& v8 == TSWPImmediatePress)
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

- (BOOL)canEditWithEditor:(id)editor
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    storage = [v4 storage];
    if (storage == [(THWPRep *)self storage])
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

- (_NSRange)rangeIntersectingFirstOverlappingColumnOfRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  columns = [(THWPRep *)self columns];
  v6 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(columns);
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
      v7 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (CGRect)rectForHighlight:(_NSRange)highlight lineHasAttachment:(BOOL)attachment
{
  attachmentCopy = attachment;
  length = highlight.length;
  location = highlight.location;
  storage = [(THWPRep *)self storage];
  v17.location = location;
  v17.length = length;
  v9 = THTrimHighlightRange(storage, v17);
  v11 = [TSWPSelection selectionWithRange:v9, v10];
  [(THWPRep *)self boundsRectForSelection:v11];
  if (attachmentCopy)
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

- (CGRect)popoverPresentationRectForRange:(_NSRange)range
{
  v4 = [(THWPRep *)self lineSelectionsForSelection:[TSWPSelection selectionWithRange:range.location, range.length]];
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
        storage = [(THWPRep *)self storage];
        range = [v10 range];
        v14 = v13;
        v78.location = range;
        v78.length = v14;
        v15 = THTrimHighlightRange(storage, v78);
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
            range2 = [v41 range];
            v45 = v44;
            storage2 = [(THWPRep *)self storage];
            range3 = [v41 range];
            -[THWPRep rectForHighlight:lineHasAttachment:](self, "rectForHighlight:lineHasAttachment:", range2, v45, [storage2 rangeContainsAttachment:{range3, v48}]);
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
        countLines = [v5 countLines];
        if (countLines)
        {
          v7 = countLines;
          for (j = 0; j != v7; ++j)
          {
            v9 = [v5 lineFragmentAtIndex:j];
            v10 = [TSWPSelection selectionWithRange:*v9, v9[1]];
            storage = [(THWPRep *)self storage];
            range = [(TSWPSelection *)v10 range];
            v14 = v13;
            v26.location = range;
            v26.length = v14;
            THTrimHighlightRange(storage, v26);
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

- (id)hitRep:(CGPoint)rep
{
  y = rep.y;
  x = rep.x;
  selfCopy = self;
  [(THWPRep *)self convertNaturalPointToUnscaledCanvas:?];
  if (![(THWPRep *)selfCopy hasMarginNoteAtCanvasPoint:?])
  {
    v7.receiver = selfCopy;
    v7.super_class = THWPRep;
    return [(THWPRep *)&v7 hitRep:x, y];
  }

  return selfCopy;
}

- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test
{
  y = rep.y;
  x = rep.x;
  v9.receiver = self;
  v9.super_class = THWPRep;
  result = [(THWPRep *)&v9 hitRep:gesture withGesture:test passingTest:?];
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
  highlightController = [(THWPRep *)self highlightController];

  return [(THWPHighlightController *)highlightController marginNotesController];
}

- (void)addMarginNoteLayersToArray:(id)array
{
  layers = [(THMarginNotesController *)[(THWPRep *)self marginNotesController] layers];

  [array addObjectsFromArray:layers];
}

- (BOOL)hasMarginNoteAtCanvasPoint:(CGPoint)point
{
  [-[THWPRep marginNotesOwner](self "marginNotesOwner")];
  v5 = v4;
  v7 = v6;
  marginNotesController = [(THWPRep *)self marginNotesController];

  return [(THMarginNotesController *)marginNotesController hasMarginNoteAtPoint:v5, v7];
}

- (void)setupMarginNotesControllerForHighlightController:(id)controller
{
  v11 = objc_alloc_init(THMarginNotesController);
  [controller setMarginNotesController:v11];
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

- (id)marginNoteForAnnotation:(id)annotation inRep:(id)rep highlightBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (rep != self)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v11 = objc_alloc_init(AEMarginNote);
  [v11 setAnnotation:annotation];
  [v11 setSide:0];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetMinY(v14);
  [-[THWPRep canvas](self "canvas")];
  TSDRoundForScale();
  [v11 setYStart:?];
  [v11 setTheme:{objc_msgSend(annotation, "theme")}];

  return v11;
}

- (void)showEditorForMarginNote:(id)note
{
  highlightController = [(THWPRep *)self highlightController];

  [(THWPHighlightController *)highlightController showNoteEditorForMarginNote:note];
}

- (id)overlayLayers
{
  v7.receiver = self;
  v7.super_class = THWPRep;
  v3 = [NSMutableArray arrayWithArray:[(THWPRep *)&v7 overlayLayers]];
  mLinkPulseArrayController = self->mLinkPulseArrayController;
  if (mLinkPulseArrayController)
  {
    layers = [(TSKHighlightArrayController *)mLinkPulseArrayController layers];
    if ([layers count])
    {
      [(THWPRep *)self p_updatePulseLayerPositions];
      [layers makeObjectsPerformSelector:"setDelegate:" withObject:{-[THWPRep interactiveCanvasController](self, "interactiveCanvasController")}];
      [(NSMutableArray *)v3 addObjectsFromArray:layers];
    }
  }

  return v3;
}

- (void)pulseAnimationDidStop:(id)stop
{
  v6.receiver = self;
  v6.super_class = THWPRep;
  [(THWPRep *)&v6 pulseAnimationDidStop:?];
  mLinkPulseArrayController = self->mLinkPulseArrayController;
  if (mLinkPulseArrayController == stop)
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

- (void)processFindUIStateChangedNotificationUserInfo:(id)info
{
  if (info && [info objectForKey:@"THMessageIsForTHWPRep"])
  {
    v5 = [objc_msgSend(info objectForKey:{TSKSearchReferencesToHighlightKey), "objectForKey:", -[THWPRep storage](self, "storage")}];
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
    [(THWPRep *)&v7 processFindUIStateChangedNotificationUserInfo:info];
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
  highlightController = [(THWPRep *)self highlightController];
  if (highlightController)
  {
    [(THWPHighlightController *)highlightController updateFromLayout];
  }
}

- (void)p_setLinkPulseControllerActive:(BOOL)active autohide:(BOOL)autohide
{
  mLinkPulseArrayController = self->mLinkPulseArrayController;
  if (active)
  {
    autohideCopy = autohide;
    if (!mLinkPulseArrayController)
    {
      mLinkPulseArrayController = [[TSKHighlightArrayController alloc] initWithZOrder:self delegate:4.0];
      self->mLinkPulseArrayController = mLinkPulseArrayController;
    }

    [(TSKHighlightArrayController *)mLinkPulseArrayController setShouldPulsate:0];
    v7 = self->mLinkPulseArrayController;

    [(TSKHighlightArrayController *)v7 setAutohide:autohideCopy];
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
    layers = [(TSKHighlightArrayController *)self->mLinkPulseArrayController layers];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [layers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(layers);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          [v15 position];
          TSDAddPoints();
          [v15 setPosition:?];
        }

        v12 = [layers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  [(THWPRep *)self setLastPositionInRoot:v4, v6];
}

- (void)p_updateLinkAnimationForSelection:(id)selection withAnimatingPulse:(BOOL)pulse
{
  pulseCopy = pulse;
  if (([(TSKHighlightArrayController *)self->mLinkPulseArrayController pulsating]& 1) == 0)
  {
    if ([selection isValid])
    {
      v7 = OBJC_IVAR___TSWPRep__updatingHighlights;
      if ((self->TSWPRep_opaque[OBJC_IVAR___TSWPRep__updatingHighlights] & 1) == 0)
      {
        self->TSWPRep_opaque[OBJC_IVAR___TSWPRep__updatingHighlights] = 1;
        layout = [(THWPRep *)self layout];
        if (layout)
        {
          [layout transformInRoot];
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
        v10 = [[TSWPSearchReference alloc] initWithStorage:-[THWPRep storage](self selection:{"storage"), selection}];
        v11 = [[NSArray alloc] initWithObjects:{v10, 0}];
        v12 = [(THWPRep *)self p_lineSearchReferencesForSearchReferences:v11];
        [objc_msgSend(-[THWPRep layout](self "layout")];
        [(THWPRep *)self setLastPositionInRoot:?];
        v13 = self->mLinkPulseArrayController;
        [-[THWPRep canvas](self "canvas")];
        [(TSKHighlightArrayController *)v13 buildHighlightsForSearchReferences:v12 contentsScaleForLayers:?];

        if (pulseCopy)
        {
          [(TSKHighlightArrayController *)self->mLinkPulseArrayController startAnimating];
        }

        [(THWPRep *)self p_setSelectionLineLayersHidden:1];
        self->TSWPRep_opaque[v7] = 0;
      }
    }
  }
}

- (void)p_updateLinkLayersForRangeSelection:(id)selection withAnimatingPulse:(BOOL)pulse
{
  if (self->mLinkPulseArrayController)
  {
    [(THWPRep *)self p_updateLinkAnimationForSelection:selection withAnimatingPulse:pulse];
  }
}

- (void)p_updateLinkForSelection:(id)selection withAnimatingPulse:(BOOL)pulse selectionFlags:(unsigned int)flags
{
  pulseCopy = pulse;
  if (selection)
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
      if ([selection isRange])
      {

        [(THWPRep *)self p_updateLinkLayersForRangeSelection:selection withAnimatingPulse:pulseCopy];
      }
    }
  }
}

- (void)p_addRoundedRectToContext:(CGContext *)context rect:(CGRect)rect forCaret:(BOOL)caret
{
  caretCopy = caret;
  v23 = CGRectIntegral(rect);
  v7 = -0.1;
  if (!caretCopy)
  {
    v7 = -4.0;
  }

  v24 = CGRectInset(v23, v7, v7);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  CGContextBeginTransparencyLayer(context, 0);
  DeviceRGB = TSUCGColorCreateDeviceRGB();
  v13 = TSUCGColorCreateDeviceRGB();
  v14 = TSUCGColorCreateDeviceRGB();
  v15 = TSUCGColorCreateDeviceRGB();
  v16 = TSDCreateRoundRectPathForRectWithRadius();
  CGContextSaveGState(context);
  v20.width = 0.0;
  v20.height = -1.0;
  CGContextSetShadowWithColor(context, v20, 4.0, DeviceRGB);
  CGContextAddPath(context, v16);
  CGContextSetFillColorWithColor(context, v13);
  CGContextFillPath(context);
  CGContextRestoreGState(context);
  CGContextSaveGState(context);
  CGContextAddPath(context, v16);
  CGContextSetStrokeColorWithColor(context, v15);
  CGContextSetLineWidth(context, 1.0);
  CGContextDrawPath(context, kCGPathStroke);
  CGContextRestoreGState(context);
  CGContextSaveGState(context);
  v17 = [[NSArray alloc] initWithObjects:{v13, v14, 0}];
  CGContextAddPath(context, v16);
  CGContextClip(context);
  v18 = CGGradientCreateWithColors(0, v17, 0);

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v22.y = CGRectGetMaxY(v25);
  v21.x = 0.0;
  v22.x = 0.0;
  v21.y = y;
  CGContextDrawLinearGradient(context, v18, v21, v22, 0);
  CGGradientRelease(v18);
  CGContextRestoreGState(context);
  CGColorRelease(DeviceRGB);
  CGColorRelease(v14);
  CGColorRelease(v13);
  CGColorRelease(v15);
  CGPathRelease(v16);

  CGContextEndTransparencyLayer(context);
}

- (void)p_setSelectionLineLayersHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v4 = &self->TSWPRep_opaque[OBJC_IVAR___TSWPRep__selectionLineLayers];
  [*v4 setHidden:?];
  v5 = *(v4 + 1);

  [v5 setHidden:hiddenCopy];
}

- (id)p_lineSearchReferencesForSearchReferences:(id)references
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [references countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(references);
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
      v17 = [references countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  return v4;
}

- (id)p_lineSelectionsForSelection:(id)selection
{
  if (![selection isRange])
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
  columns = [(THWPRep *)self columns];
  v6 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(columns);
      }

      v11 = [*(*(&v14 + 1) + 8 * i) lineSelectionsForSelection:selection];
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

    v7 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v7);
  return v8;
}

- (BOOL)p_isSelectionSingleAnchoredDrawableAttachment
{
  textEditor = [(THWPRep *)self textEditor];

  return [textEditor isSelectionSingleAnchoredDrawableAttachment];
}

- (void)p_enumerateBoundsRectsForRange:(_NSRange)range includeSpaceBefore:(BOOL)before includeSpaceAfter:(BOOL)after includeLeading:(BOOL)leading withBlock:(id)block
{
  leadingCopy = leading;
  afterCopy = after;
  beforeCopy = before;
  v12 = [TSWPSelection selectionWithRange:range.location, range.length];

  [(THWPRep *)self p_enumerateBoundsRectsForSelection:v12 includeSpaceBefore:beforeCopy includeSpaceAfter:afterCopy includeLeading:leadingCopy withBlock:block];
}

- (void)p_enumerateBoundsRectsForSelection:(id)selection includeSpaceBefore:(BOOL)before includeSpaceAfter:(BOOL)after includeLeading:(BOOL)leading withBlock:(id)block
{
  afterCopy = after;
  leadingCopy = leading;
  beforeCopy = before;
  if (selection)
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
          range = [selection range];
          LOWORD(v21) = 0;
          v16 = [v13 rectsForSelectionRange:range selectionType:v15 includeSpaceAfter:objc_msgSend(selection includeSpaceBefore:"type") includeLeading:afterCopy forParagraphMode:beforeCopy includeRuby:{leadingCopy, v21}];
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
                (*(block + 2))(block);
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

- (CGRect)boundsRectForSelection:(id)selection
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
  [(THWPRep *)self p_enumerateBoundsRectsForSelection:selection includeSpaceBefore:0 includeSpaceAfter:0 includeLeading:0 withBlock:v12];
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

- (CGRect)visibleBoundsForTilingLayer:(id)layer
{
  if ([(THWPRep *)self highlightController])
  {
    highlightController = [(THWPRep *)self highlightController];
    [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    if ([(THWPHighlightController *)highlightController needsToRedrawForVisibleBounds:?])
    {
      [-[THWPRep interactiveCanvasController](self "interactiveCanvasController")];
    }
  }

  v10.receiver = self;
  v10.super_class = THWPRep;
  [(THWPRep *)&v10 visibleBoundsForTilingLayer:layer];
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