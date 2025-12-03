@interface THWPHighlightController
+ (void)dismissActivePopoverEditor;
+ (void)p_forgetActivePopover:(id)popover;
+ (void)p_hideAndReleasePopover:(id)popover;
- (BOOL)editorController:(id)controller isRightArrowEnabledForAnnotation:(id)annotation;
- (BOOL)needsToRedrawForVisibleBounds:(CGRect)bounds;
- (BOOL)ownsMarginNote:(id)note;
- (BOOL)p_isCompactHeight;
- (BOOL)p_isCompactWidth;
- (BOOL)p_setLineProperties:(id)properties fromRange:(_NSRange)range isUnderline:(BOOL)underline;
- (BOOL)p_shouldDrawMarginNoteForCachedCachedAnnotation:(id)annotation;
- (BOOL)p_updateHighlight:(id)highlight toRange:(_NSRange)range rect:(CGRect)rect;
- (BOOL)shouldAllowHighlights;
- (BOOL)shouldBeginDragHighlightAtPoint:(CGPoint)point;
- (CGPoint)dragStartPoint;
- (CGRect)canvasRectForAnnotation:(id)annotation;
- (CGRect)highlightRectForAnnotation:(id)annotation;
- (CGRect)p_marginNotePresentationRectForCachedAnnotation:(id)annotation;
- (CGRect)p_repRectForHighlight:(_NSRange)highlight;
- (CGRect)p_repRectForHighlight:(_NSRange)highlight lineHasAttachment:(BOOL)attachment;
- (CGRect)p_repRectForPoint:(CGPoint)point;
- (THWPHighlightController)initWithParentRep:(id)rep;
- (_NSRange)p_rangeOfHighlight:(id)highlight;
- (_NSRange)p_trimHighlightRange:(_NSRange)range;
- (_NSRange)rangeOfInterest;
- (_NSRange)selectionRangeForStartPoint:(CGPoint)point currentPoint:(CGPoint)currentPoint;
- (id)annotationAtUnscaledPoint:(CGPoint)point;
- (id)annotationController;
- (id)annotationEditorForAnnotation:(id)annotation;
- (id)annotationEditorForAnnotation:(id)annotation editsOnLaunch:(BOOL)launch;
- (id)annotationForRange:(_NSRange)range;
- (id)annotationsForRange:(_NSRange)range;
- (id)editMenuForHighlightAtPoint:(CGPoint)point;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)highlightAtCanvasPoint:(CGPoint)point;
- (id)highlightLayersInCanvasUnscaledRect:(CGRect)rect scale:(double)scale;
- (id)p_annotationSource;
- (id)p_annotationsAtRepPoint:(CGPoint)point;
- (id)p_annotationsInRepRect:(CGRect)rect;
- (id)p_cachedAnnotationForAnnotation:(id)annotation;
- (id)p_drawHighlightLine:(id)line forAnnotation:(id)annotation scale:(double)scale;
- (id)p_editMenuForAnnotationUUID:(id)d;
- (id)p_highlightFromAnnotation:(id)annotation range:(_NSRange)range rect:(CGRect)rect;
- (id)p_highlightLineFromLineSelection:(id)selection isUnderline:(BOOL)underline;
- (int)p_blendModeForCachedAnnotation:(id)annotation;
- (int64_t)pageTheme;
- (void)beginDragHighlightAtPoint:(CGPoint)point;
- (void)createHighlightForSelectionWithCurrentThemeWithCompletion:(id)completion;
- (void)createHighlightForSelectionWithStyle:(int)style;
- (void)dealloc;
- (void)didHideAnnotationEditor:(id)editor;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editorController:(id)controller deleteAnnotation:(id)annotation;
- (void)editorController:(id)controller editedAnnotation:(id)annotation toText:(id)text;
- (void)editorController:(id)controller setTheme:(id)theme forAnnotation:(id)annotation;
- (void)editorController:(id)controller showEditMenuForAnnotation:(id)annotation;
- (void)endDragHighlightAtPoint:(CGPoint)point accept:(BOOL)accept;
- (void)hidePopoverEditor;
- (void)moveDragHighlightToPoint:(CGPoint)point;
- (void)p_addHighlight:(id)highlight forCachedAnnotation:(id)annotation;
- (void)p_clearAnnotationCache;
- (void)p_drawMarginNoteIfNeeded:(id)needed;
- (void)p_removeCachedAnnotation:(id)annotation;
- (void)p_removeHighlightForCachedAnnotation:(id)annotation;
- (void)p_removeNoteForCachedAnnotation:(id)annotation;
- (void)p_showEditor:(id)editor forRange:(_NSRange)range;
- (void)p_showEditorForHighlight:(id)highlight;
- (void)p_showHighlightEditorForCachedAnnotation:(id)annotation;
- (void)p_showHighlightMenuForCachedAnnotation:(id)annotation;
- (void)p_showMenuForHighlight:(id)highlight;
- (void)p_updateMarginNoteForCachedAnnotation:(id)annotation;
- (void)p_updateMarginNoteForHighlight:(id)highlight;
- (void)parentWillBeRemovedFromCanvas:(id)canvas;
- (void)setStyleOfExistingHighlight:(id)highlight to:(int)to;
- (void)showHighlightEditorForAnnotation:(id)annotation;
- (void)showHighlightEditorForHighlightAtPoint:(CGPoint)point;
- (void)showHighlightMenuForAnnotation:(id)annotation;
- (void)showHighlightMenuForHighlightAtPoint:(CGPoint)point;
- (void)showNoteEditorForAnnotation:(id)annotation;
- (void)showNoteEditorForAnnotation:(id)annotation editsOnLaunch:(BOOL)launch;
- (void)showNoteEditorForMarginNote:(id)note;
- (void)updateCachedAnnotations;
- (void)updateFromLayout;
- (void)willHideAnnotationEditor:(id)editor;
@end

@implementation THWPHighlightController

- (THWPHighlightController)initWithParentRep:(id)rep
{
  v7.receiver = self;
  v7.super_class = THWPHighlightController;
  v4 = [(THWPHighlightController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWPHighlightController *)v4 setParentRep:rep];
    [(THWPHighlightController *)v5 setAnnotationCache:+[NSMutableDictionary dictionary]];
    [(THWPHighlightController *)v5 setHighlightColorEditorController:0];
    [(THWPHighlightController *)v5 setNoteEditorController:0];
    [(THWPHighlightController *)v5 updateCachedAnnotations];
  }

  return v5;
}

+ (void)p_hideAndReleasePopover:(id)popover
{
  [self p_forgetActivePopover:?];
  if ([popover isViewLoaded] && objc_msgSend(objc_msgSend(popover, "view"), "superview"))
  {
    [popover hide];
    [objc_msgSend(popover "view")];
  }
}

- (void)dealloc
{
  mNoteEditorController = self->mNoteEditorController;
  if (mNoteEditorController)
  {
    [(AEAnnotationEditor *)mNoteEditorController setDelegate:0];
    [objc_opt_class() performSelectorOnMainThread:"p_hideAndReleasePopover:" withObject:self->mNoteEditorController waitUntilDone:0];
    self->mNoteEditorController = 0;
  }

  mHighlightColorEditorController = self->mHighlightColorEditorController;
  if (mHighlightColorEditorController)
  {
    [(AEHighlightColorEditorController *)mHighlightColorEditorController setDelegate:0];
    [objc_opt_class() performSelectorOnMainThread:"p_hideAndReleasePopover:" withObject:self->mHighlightColorEditorController waitUntilDone:0];
    self->mHighlightColorEditorController = 0;
  }

  [(THWPHighlightController *)self p_clearAnnotationCache];

  self->mAnnotationCache = 0;
  self->mMarginNotesController = 0;
  [(THWPAnnotationSource *)self->mAnnotationSource removeInterest:self];

  self->mAnnotationSource = 0;
  self->mCurrentDragAnnotation = 0;
  v5.receiver = self;
  v5.super_class = THWPHighlightController;
  [(THWPHighlightController *)&v5 dealloc];
}

- (void)parentWillBeRemovedFromCanvas:(id)canvas
{
  [(THWPHighlightController *)self setParentRep:0];

  [(THWPHighlightController *)self hidePopoverEditor];
}

- (id)annotationController
{
  if (!self->mAnnotationsController)
  {
    if ([-[THWPRep canvas](-[THWPHighlightController parentRep](self "parentRep")])
    {
      if (+[NSThread isMainThread])
      {
        [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
        if (objc_opt_respondsToSelector())
        {
          objc_opt_class();
          [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
          self->mAnnotationsController = [TSUDynamicCast() annotationController];
        }
      }
    }
  }

  return self->mAnnotationsController;
}

- (void)p_removeHighlightForCachedAnnotation:(id)annotation
{
  [annotation setHighlight:0];

  [(THWPHighlightController *)self p_removeNoteForCachedAnnotation:annotation];
}

- (id)p_annotationSource
{
  result = self->mAnnotationSource;
  if (!result)
  {
    v4 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")];
    self->mAnnotationSource = v4;
    [(THWPAnnotationSource *)v4 addInterest:self];
    return self->mAnnotationSource;
  }

  return result;
}

- (void)updateCachedAnnotations
{
  if (![(THWPHighlightController *)self parentRep])
  {
    return;
  }

  if (+[NSThread isMainThread])
  {
    if (!+[NSThread isMainThread])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    annotationCache = [(THWPHighlightController *)self annotationCache];
    v3 = +[NSMutableDictionary dictionary];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    p_annotationSource = [(THWPHighlightController *)self p_annotationSource];
    rangeOfInterest = [(THWPHighlightController *)self rangeOfInterest];
    v7 = [p_annotationSource annotationsForRange:{rangeOfInterest, v6}];
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v8)
    {
      v22 = 0;
      goto LABEL_25;
    }

    v22 = 0;
    v9 = *v30;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)annotationCache objectForKey:[(THAnnotation *)v11 annotationUuid]];
        annotationStorageRange = [(THAnnotation *)v11 annotationStorageRange];
        if (&annotationStorageRange[v14] <= [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")])
        {
          if (v12)
          {
            if ([(THHighlightControllerCachedAnnotation *)v12 annotation]!= v11)
            {
              [(THHighlightControllerCachedAnnotation *)v12 updateAnnotation:v11];
              if ([(THHighlightControllerCachedAnnotation *)v12 needsMarginNoteUpdate])
              {
                [(THWPHighlightController *)self p_updateMarginNoteForCachedAnnotation:v12];
              }

LABEL_16:
              v22 = 1;
            }

            [v3 setObject:v12 forKey:{-[THAnnotation annotationUuid](v11, "annotationUuid")}];
            continue;
          }

          v12 = [[THHighlightControllerCachedAnnotation alloc] initWithAnnotation:v11];
          goto LABEL_16;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (!v8)
      {
LABEL_25:
        v15 = [(NSMutableDictionary *)annotationCache count];
        v16 = (v15 != [v3 count]) | v22;
        [(THWPHighlightController *)self setAnnotationCache:v3];
        v23 = v16;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        allKeys = [(NSMutableDictionary *)annotationCache allKeys];
        v18 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v18)
        {
          v19 = *v26;
          do
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(allKeys);
              }

              v21 = *(*(&v25 + 1) + 8 * j);
              if (![v3 objectForKey:v21])
              {
                [(THWPHighlightController *)self p_removeHighlightForCachedAnnotation:[(NSMutableDictionary *)annotationCache objectForKey:v21]];
              }
            }

            v18 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v18);
        }

        if ((v23 & 1) != 0 && ([-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")] & 1) == 0)
        {
          [(THWPRep *)[(THWPHighlightController *)self parentRep] setNeedsDisplay];
          [-[THWPRep canvas](-[THWPHighlightController parentRep](self "parentRep")];
        }

        return;
      }
    }
  }

  [(THWPHighlightController *)self performSelectorOnMainThread:"updateCachedAnnotations" withObject:self waitUntilDone:0];
}

- (void)p_clearAnnotationCache
{
  annotationCache = [(THWPHighlightController *)self annotationCache];
  [(THWPHighlightController *)self setAnnotationCache:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)annotationCache allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [(THWPHighlightController *)self p_removeHighlightForCachedAnnotation:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (_NSRange)p_trimHighlightRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storage = [(THWPRep *)[(THWPHighlightController *)self parentRep] storage];
  v6.location = location;
  v6.length = length;

  v7 = THTrimHighlightRange(storage, v6);
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)p_cachedAnnotationForAnnotation:(id)annotation
{
  annotationCache = [(THWPHighlightController *)self annotationCache];
  annotationUuid = [annotation annotationUuid];

  return [(NSMutableDictionary *)annotationCache objectForKey:annotationUuid];
}

- (void)p_removeCachedAnnotation:(id)annotation
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPHighlightController *)self p_removeHighlightForCachedAnnotation:annotation];
  annotationCache = [(THWPHighlightController *)self annotationCache];
  v6 = [objc_msgSend(annotation "annotation")];

  [(NSMutableDictionary *)annotationCache removeObjectForKey:v6];
}

- (CGRect)p_repRectForHighlight:(_NSRange)highlight lineHasAttachment:(BOOL)attachment
{
  length = highlight.length;
  location = highlight.location;
  [(THWPRep *)[(THWPHighlightController *)self parentRep] rectForHighlight:highlight.location lineHasAttachment:highlight.length, attachment];
  v11 = v10;
  v13 = v12;
  if (!attachment)
  {
    v14 = [(THWPHighlightController *)self parentRep:0];
    if (v14)
    {
      [(THWPRep *)v14 lineMetricsAtCharIndex:location + (length >> 1)];
    }

    v8 = 0.0 - 0.0;
    v9 = 0.0 + 0.0;
  }

  v15 = v11;
  v16 = v13;
  result.size.height = v9;
  result.size.width = v16;
  result.origin.y = v8;
  result.origin.x = v15;
  return result;
}

- (CGRect)p_repRectForHighlight:(_NSRange)highlight
{
  length = highlight.length;
  location = highlight.location;
  if (!highlight.length)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v6 = [TSWPColumn columnForCharIndex:location + (length >> 1) eol:1 withColumns:[(THWPRep *)[(THWPHighlightController *)self parentRep] columns]];
  v7 = [v6 lineIndexForCharIndex:location + (length >> 1) eol:1];
  v8 = location;
  v9 = length;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v6 rangeOfLineFragmentAtIndex:v7];
    v9 = v10;
  }

  v11 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")];

  [(THWPHighlightController *)self p_repRectForHighlight:location lineHasAttachment:length, v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)p_setLineProperties:(id)properties fromRange:(_NSRange)range isUnderline:(BOOL)underline
{
  length = range.length;
  location = range.location;
  if (!range.length)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  v9 = [TSWPColumn columnForCharIndex:location + (length >> 1) eol:1 withColumns:[(THWPRep *)[(THWPHighlightController *)self parentRep] columns]];
  v10 = [v9 lineIndexForCharIndex:location + (length >> 1) eol:1];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v12 = v10;
  v44.location = [v9 rangeOfLineFragmentAtIndex:v10];
  v13 = v44.location;
  v14 = v44.length;
  v45.location = location;
  v45.length = length;
  if (NSIntersectionRange(v44, v45).length)
  {
    v15 = v13;
  }

  else
  {
    v14 = length;
    v15 = location;
  }

  v16 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")];
  [(THWPHighlightController *)self p_repRectForHighlight:v15 lineHasAttachment:v14, v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(THWPHighlightController *)self p_repRectForHighlight:location lineHasAttachment:length, v16];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [properties currentLineRect];
  v33 = TSDNearlyEqualRects();
  [properties setFullLineRect:{v18, v20, v22, v24}];
  [properties setCurrentLineRect:{v26, v28, v30, v32}];
  v34 = [v9 lineFragmentAtIndex:v12];
  if (v34)
  {
    v35 = v34[4] + v34[5];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v35 = 0.0;
  }

  v11 = v33 ^ 1;
  [properties setBaseline:v35];
  v36 = 1.0;
  if (v16)
  {
    [properties baseline];
    v38 = v37;
    v46.origin.x = v26;
    v46.origin.y = v28;
    v46.size.width = v30;
    v46.size.height = v32;
    if (v38 < CGRectGetMinY(v46) || ([properties baseline], v40 = v39, v47.origin.x = v26, v47.origin.y = v28, v47.size.width = v30, v47.size.height = v32, v40 > CGRectGetMaxY(v47)))
    {
      v48.origin.x = v26;
      v48.origin.y = v28;
      v48.size.width = v30;
      v48.size.height = v32;
      v41 = CGRectGetMaxY(v48) + -4.0;
      [properties baseline];
      v36 = v41 - v42 + 1.0;
    }
  }

  [properties setUnderlineOffset:v36];
  [properties setContentLayer:{+[THHighlightContentLayer layer](THHighlightContentLayer, "layer")}];
  [objc_msgSend(properties "contentLayer")];
  return v11;
}

- (id)p_highlightLineFromLineSelection:(id)selection isUnderline:(BOOL)underline
{
  underlineCopy = underline;
  range = [selection range];
  v8 = [(THWPHighlightController *)self p_trimHighlightRange:range, v7];
  if (!v9)
  {
    return 0;
  }

  v10 = v8;
  v11 = v9;
  v12 = objc_alloc_init(THHighlightLine);
  [(THWPHighlightController *)self p_setLineProperties:v12 fromRange:v10 isUnderline:v11, underlineCopy];
  return v12;
}

- (id)p_highlightFromAnnotation:(id)annotation range:(_NSRange)range rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  v13 = objc_alloc_init(THHighlight);
  v14 = objc_alloc_init(NSMutableArray);
  v15 = [(THWPRep *)[(THWPHighlightController *)self parentRep] lineSelectionsForSelection:[TSWPSelection selectionWithRange:location, length]];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = -[THWPHighlightController p_highlightLineFromLineSelection:isUnderline:](self, "p_highlightLineFromLineSelection:isUnderline:", *(*(&v23 + 1) + 8 * v19), [annotation annotationIsUnderline]);
        if (v20)
        {
          v21 = v20;
          [v20 fullLineRect];
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          if (CGRectIntersectsRect(v28, v29))
          {
            [v14 addObject:v21];
          }
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  [(THHighlight *)v13 setLines:v14];
  [(THHighlight *)v13 setAnnotation:annotation];

  return v13;
}

- (void)p_addHighlight:(id)highlight forCachedAnnotation:(id)annotation
{
  [(THWPHighlightController *)self p_removeHighlightForCachedAnnotation:annotation];
  [annotation setHighlight:highlight];

  [(THWPHighlightController *)self p_drawMarginNoteIfNeeded:annotation];
}

- (BOOL)p_updateHighlight:(id)highlight toRange:(_NSRange)range rect:(CGRect)rect
{
  rect2 = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [(THWPHighlightController *)self p_trimHighlightRange:range.location, range.length];
  v12 = [(THWPRep *)[(THWPHighlightController *)self parentRep] lineSelectionsForSelection:[TSWPSelection selectionWithRange:v10, v11]];
  v50 = +[NSMutableArray array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v59;
  v48 = *v59;
  highlightCopy = highlight;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v59 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v58 + 1) + 8 * i);
      range = [v18 range];
      v21 = [(THWPHighlightController *)self p_trimHighlightRange:range, v20];
      if (v22)
      {
        [(THWPHighlightController *)self p_repRectForHighlight:v21, v22];
        v23 = v64.origin.x;
        v24 = v64.origin.y;
        v25 = v64.size.width;
        height = v64.size.height;
        v66.origin.x = x;
        v66.origin.y = y;
        v66.size.width = width;
        v66.size.height = rect2;
        if (CGRectIntersectsRect(v64, v66))
        {
          v51 = v15;
          v27 = [objc_msgSend(highlight "annotation")];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          lines = [highlight lines];
          v29 = [lines countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v55;
LABEL_10:
            v32 = 0;
            while (1)
            {
              if (*v55 != v31)
              {
                objc_enumerationMutation(lines);
              }

              v33 = *(*(&v54 + 1) + 8 * v32);
              [v33 fullLineRect];
              v38 = v37;
              if (vabdd_f64(v24, v34) < 0.5)
              {
                v39 = v34;
                v40 = v35;
                v41 = v36;
                v65.origin.x = v23;
                v65.origin.y = v24;
                v65.size.width = v25;
                v65.size.height = height;
                if (CGRectIntersectsRect(v65, *&v38))
                {
                  break;
                }
              }

              if (v30 == ++v32)
              {
                v30 = [lines countByEnumeratingWithState:&v54 objects:v62 count:16];
                if (v30)
                {
                  goto LABEL_10;
                }

                goto LABEL_20;
              }
            }

            range2 = [v18 range];
            v44 = [(THWPHighlightController *)self p_setLineProperties:v33 fromRange:range2 isUnderline:v43, v27];
            if (!v33)
            {
              goto LABEL_20;
            }

            v15 = v44 | v51;
          }

          else
          {
LABEL_20:
            v33 = [(THWPHighlightController *)self p_highlightLineFromLineSelection:v18 isUnderline:v27];
            v15 = 1;
          }

          v16 = v48;
          [v50 addObject:v33];
          highlight = highlightCopy;
        }
      }
    }

    v14 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  }

  while (v14);
  if (v15)
  {
    [highlight setLines:v50];
  }

  else
  {
LABEL_26:
    v45 = [v50 count];
    v46 = [objc_msgSend(highlight "lines")];
    [highlight setLines:v50];
    if (v45 == v46)
    {
      return 0;
    }
  }

  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [(THWPHighlightController *)self p_updateMarginNoteForHighlight:highlight];
  return 1;
}

- (BOOL)needsToRedrawForVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectFromUnscaledCanvas:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v37 = CGRectInset(v36, width * -0.5, height * -0.5);
  x = v37.origin.x;
  y = v37.origin.y;
  v8 = v37.size.width;
  v9 = v37.size.height;
  [(THWPRep *)[(THWPHighlightController *)self parentRep] frameInUnscaledCanvas];
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = v8;
  v40.size.height = v9;
  if (!CGRectIntersectsRect(v38, v40))
  {
    return 0;
  }

  annotationCache = [(THWPHighlightController *)self annotationCache];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allValues = [(NSMutableDictionary *)annotationCache allValues];
  v12 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [objc_msgSend(v16 "annotation")];
        [(THWPRep *)[(THWPHighlightController *)self parentRep] rectForSelection:[TSWPSelection selectionWithRange:v17, v18]];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        highlight = [v16 highlight];
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = v8;
        v39.size.height = v9;
        v41.origin.x = v20;
        v41.origin.y = v22;
        v41.size.width = v24;
        v41.size.height = v26;
        if (CGRectIntersectsRect(v39, v41) && highlight == 0)
        {
          v29 = 1;
          goto LABEL_16;
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v29 = 0;
LABEL_16:

  return v29;
}

- (id)p_drawHighlightLine:(id)line forAnnotation:(id)annotation scale:(double)scale
{
  pageTheme = [(THWPHighlightController *)self pageTheme];
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v9 = TSUDynamicCast();
  v10 = [+[TSUColor whiteColor](TSUColor "whiteColor")];
  if ([v9 themeProvider])
  {
    v10 = [objc_msgSend(v9 "themeProvider")];
  }

  v11 = [objc_msgSend(annotation "annotation")];
  v12 = [objc_msgSend(+[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme themeForAnnotationStyle:v11 pageTheme:pageTheme isUnderline:{v11 == 6), "highlightColor"), "CGColor"}];
  [-[THWPRep canvas](-[THWPHighlightController parentRep](self "parentRep")];
  v14 = v13;
  [line currentLineRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [line baseline];
  v50 = v23;
  memset(&v52, 0, sizeof(v52));
  parentRep = [(THWPHighlightController *)self parentRep];
  if (parentRep)
  {
    [(THWPRep *)parentRep transformToConvertNaturalToLayerRelative];
    b = v52.b;
    d = v52.d;
    ty = v52.ty;
  }

  else
  {
    ty = 0.0;
    d = 0.0;
    b = 0.0;
    memset(&v52, 0, sizeof(v52));
  }

  v51 = v52;
  v53.origin.x = v16;
  v53.origin.y = v18;
  v53.size.width = v20;
  v53.size.height = v22;
  v54 = CGRectApplyAffineTransform(v53, &v51);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  v54.origin.y = v16;
  height = v54.size.height;
  v32 = ty + v50 * d + b * v54.origin.y;
  v54.origin.y = y;
  MinY = CGRectGetMinY(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  MaxY = CGRectGetMaxY(v55);
  if (v11 == 6)
  {
    [line underlineOffset];
    TSDRoundForScale();
    v36 = v35;
    v37 = 2.0;
    if (v14 > 1.0)
    {
      v37 = 1.5;
    }

    v38 = ceil(v14 * (v37 * scale)) / v14;
  }

  else
  {
    v39 = MaxY - v32;
    v40 = 1.0;
    if (v14 != 0.0)
    {
      v40 = v14;
    }

    v41 = ceil(v40 * (v32 - MinY)) / v40;
    v36 = ceil(v40 * v32) / v40 - v41;
    v38 = v41 + ceil(v40 * v39) / v40;
  }

  TSDRoundedRectForScale();
  v43 = v42;
  v45 = v44;
  contentLayer = [line contentLayer];
  [contentLayer setHidden:0];
  [contentLayer setFrame:{v43, v36, v45, v38}];
  LODWORD(v47) = 1.0;
  [contentLayer setOpacity:v47];
  [contentLayer setBackgroundColor:v10];
  [contentLayer setHighlightColor:v12];
  [contentLayer setBlendMode:{-[THWPHighlightController p_blendModeForCachedAnnotation:](self, "p_blendModeForCachedAnnotation:", annotation)}];
  [contentLayer setNeedsDisplay];
  return contentLayer;
}

- (int)p_blendModeForCachedAnnotation:(id)annotation
{
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v5 = TSUDynamicCast();
  if (![v5 themeProvider] || objc_msgSend(objc_msgSend(annotation, "annotation"), "annotationStyle") == 6)
  {
    return 0;
  }

  themeProvider = [v5 themeProvider];

  return [themeProvider annotationBlendMode];
}

- (id)p_annotationsAtRepPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v34 = +[NSMutableArray array];
  selfCopy = self;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  annotationCache = [(THWPHighlightController *)self annotationCache];
  obj = [(NSMutableDictionary *)annotationCache allValues];
  v37 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v37)
  {
    v35 = *v49;
    do
    {
      v6 = 0;
      do
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v48 + 1) + 8 * v6);
        v39 = v6;
        v7 = [objc_msgSend(v38 "annotation")];
        v9 = [TSWPSelection selectionWithRange:v7, v8];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        columns = [(THWPRep *)[(THWPHighlightController *)selfCopy parentRep] columns];
        v11 = [columns countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v45;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v45 != v13)
              {
                objc_enumerationMutation(columns);
              }

              v15 = *(*(&v44 + 1) + 8 * i);
              v16 = CGRectNull.origin.x;
              v17 = CGRectNull.origin.y;
              width = CGRectNull.size.width;
              height = CGRectNull.size.height;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              range = [(TSWPSelection *)v9 range];
              v22 = [v15 rectsForSelectionRange:range selectionType:v21 forParagraphMode:-[TSWPSelection type](v9 includeRuby:{"type"), 0, 0}];
              v23 = [v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v41;
                do
                {
                  for (j = 0; j != v24; j = j + 1)
                  {
                    if (*v41 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    [*(*(&v40 + 1) + 8 * j) CGRectValue];
                    v59.origin.x = v27;
                    v59.origin.y = v28;
                    v59.size.width = v29;
                    v59.size.height = v30;
                    v56.origin.x = v16;
                    v56.origin.y = v17;
                    v56.size.width = width;
                    v56.size.height = height;
                    v57 = CGRectUnion(v56, v59);
                    v16 = v57.origin.x;
                    v17 = v57.origin.y;
                    width = v57.size.width;
                    height = v57.size.height;
                  }

                  v24 = [v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
                }

                while (v24);
              }

              v58.origin.x = v16;
              v58.origin.y = v17;
              v58.size.width = width;
              v58.size.height = height;
              v55.x = x;
              v55.y = y;
              if (CGRectContainsPoint(v58, v55))
              {
                [v34 addObject:{objc_msgSend(v38, "annotation")}];
                goto LABEL_23;
              }
            }

            v12 = [columns countByEnumeratingWithState:&v44 objects:v53 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:
        v6 = v39 + 1;
      }

      while ((v39 + 1) != v37);
      v37 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v37);
  }

  return v34;
}

- (id)p_annotationsInRepRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = +[NSMutableArray array];
  annotationCache = [(THWPHighlightController *)self annotationCache];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues = [(NSMutableDictionary *)annotationCache allValues];
  v11 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [objc_msgSend(v15 "annotation")];
        [(THWPRep *)[(THWPHighlightController *)self parentRep] rectForSelection:[TSWPSelection selectionWithRange:v16, v17]];
        v29.origin.x = v18;
        v29.origin.y = v19;
        v29.size.width = v20;
        v29.size.height = v21;
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        if (CGRectIntersectsRect(v28, v29))
        {
          [v8 addObject:{objc_msgSend(v15, "annotation")}];
        }
      }

      v12 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  return v8;
}

- (id)highlightLayersInCanvasUnscaledRect:(CGRect)rect scale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = +[NSMutableArray array];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectFromUnscaledCanvas:x, y, width, height];
  v46 = CGRectInset(v45, -width, -height);
  v11 = v46.origin.x;
  v12 = v46.origin.y;
  v13 = v46.size.width;
  v14 = v46.size.height;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [THAnnotationCache annotationsOrderedForVisualStacking:[(THWPHighlightController *)self p_annotationsInRepRect:?]];
  v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v34)
  {
    v33 = *v40;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        v17 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:v16];
        highlight = [v17 highlight];
        if (highlight)
        {
          v19 = highlight;
          v20 = [objc_msgSend(v17 "annotation")];
          [(THWPHighlightController *)self p_updateHighlight:v19 toRange:v20 rect:v21, v11, v12, v13, v14];
          [(THWPHighlightController *)self p_updateMarginNoteForCachedAnnotation:v17];
        }

        else
        {
          annotationStorageRange = [v16 annotationStorageRange];
          v19 = [(THWPHighlightController *)self p_highlightFromAnnotation:v16 range:annotationStorageRange rect:v23, v11, v12, v13, v14];
          [(THWPHighlightController *)self p_addHighlight:v19 forCachedAnnotation:v17];
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        lines = [v19 lines];
        v25 = [lines countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v36;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v36 != v27)
              {
                objc_enumerationMutation(lines);
              }

              v29 = *(*(&v35 + 1) + 8 * j);
              if ([v29 contentLayer])
              {
                v30 = [(THWPHighlightController *)self p_drawHighlightLine:v29 forAnnotation:v17 scale:scale];
                if (v30)
                {
                  [v10 addObject:v30];
                }
              }
            }

            v26 = [lines countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v26);
        }

        [v17 setLastRenderedStyle:{objc_msgSend(v16, "annotationStyle")}];
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v34);
  }

  return v10;
}

- (int64_t)pageTheme
{
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v3 = TSUDynamicCast();
  if (![v3 themeProvider])
  {
    return 4;
  }

  themeProvider = [v3 themeProvider];

  return [themeProvider annotationPageTheme];
}

- (void)updateFromLayout
{
  [(THMarginNotesController *)[(THWPHighlightController *)self marginNotesController] setPageTheme:[(THWPHighlightController *)self pageTheme]];
  annotationCache = [(THWPHighlightController *)self annotationCache];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)annotationCache allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [(THWPHighlightController *)self p_updateMarginNoteForCachedAnnotation:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (_NSRange)rangeOfInterest
{
  parentRep = [(THWPHighlightController *)self parentRep];

  range = [(THWPRep *)parentRep range];
  result.length = v4;
  result.location = range;
  return result;
}

- (_NSRange)selectionRangeForStartPoint:(CGPoint)point currentPoint:(CGPoint)currentPoint
{
  y = currentPoint.y;
  x = currentPoint.x;
  v6 = point.y;
  v7 = point.x;
  v9 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")];
  if (!v9)
  {
    v25 = 0;
    goto LABEL_38;
  }

  parentRep = [(THWPHighlightController *)self parentRep];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalPointFromUnscaledCanvas:v7, v6];
  [(THWPRep *)parentRep pinToNaturalBounds:1 andLastLineFragment:?];
  v12 = v11;
  v14 = v13;
  parentRep2 = [(THWPHighlightController *)self parentRep];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalPointFromUnscaledCanvas:x, y];
  [(THWPRep *)parentRep2 pinToNaturalBounds:1 andLastLineFragment:?];
  v17 = v16;
  v19 = v18;
  v20 = [(THWPRep *)[(THWPHighlightController *)self parentRep] charIndexFromPoint:1 allowPastBreak:0 isAtEndOfLine:v12, v14];
  v21 = [(THWPRep *)[(THWPHighlightController *)self parentRep] charIndexFromPoint:1 allowPastBreak:0 isAtEndOfLine:v17, v19];
  parentRep3 = [(THWPHighlightController *)self parentRep];
  if (v20 >= v21)
  {
    v26 = [(THWPRep *)parentRep3 charIndexFromPoint:1 allowPastBreak:0 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:0 leadingEdge:v17, v19];
    v23 = v26;
    if (v20)
    {
      v24 = v20 - 1;
    }

    else
    {
      v24 = 0;
    }

    if (!v26)
    {
      goto LABEL_11;
    }

LABEL_10:
    v27 = v23 - 1;
    if ([-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")] == 65532)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v23 = [(THWPRep *)parentRep3 charIndexFromPoint:1 allowPastBreak:0 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:0 leadingEdge:v12, v14];
  v24 = v21 - 1;
  if (v23)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v23 >= [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")] || objc_msgSend(-[THWPRep storage](-[THWPHighlightController parentRep](self, "parentRep"), "storage"), "characterAtIndex:", v23) != 65532)
  {
    v29 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")];
    v28 = v30;
    goto LABEL_17;
  }

  v27 = v23;
LABEL_14:
  if (v24 > v27)
  {
    v28 = 1;
    v29 = v27;
    v23 = v27;
LABEL_17:
    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")];
      v28 = v31;
    }

    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = v23;
    }

    else
    {
      v27 = v29;
    }

    if (v24 < [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")] && objc_msgSend(-[THWPRep storage](-[THWPHighlightController parentRep](self, "parentRep"), "storage"), "characterAtIndex:", v24) == 65532)
    {
      v32 = 1;
      v33 = v24;
    }

    else
    {
      v33 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")];
    }

    if (v33 != 0x7FFFFFFFFFFFFFFFLL || (v33 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")], v33 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v24 = v33 + v32;
    }

    v34 = &v29[v28];
    if (&v29[v28] <= v24)
    {
      v34 = v24;
    }

    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = v24;
    }

    goto LABEL_35;
  }

  v34 = v27 + 1;
LABEL_35:

  v9 = [(THWPHighlightController *)self p_trimHighlightRange:v27, v34 - v27];
LABEL_38:
  result.length = v25;
  result.location = v9;
  return result;
}

- (CGRect)p_repRectForPoint:(CGPoint)point
{
  v4 = [(THWPHighlightController *)self selectionRangeForStartPoint:point.x currentPoint:point.y, point.x, point.y];
  v6 = [(THWPRep *)[(THWPHighlightController *)self parentRep] lineSelectionsForSelection:[TSWPSelection selectionWithRange:v4, v5]];
  v7 = [v6 count];
  if (v7 && (v8 = v7, v9 = [v6 objectAtIndex:0], objc_msgSend(v9, "range"), v10))
  {
    range = [v9 range];
    [(THWPHighlightController *)self p_repRectForHighlight:range, v12];
    x = v13;
    y = v15;
    width = v17;
    height = v19;
    if (v8 != &dword_0 + 1)
    {
      for (i = 1; i != v8; ++i)
      {
        v22 = [objc_msgSend(v6 objectAtIndex:{i), "range"}];
        [(THWPHighlightController *)self p_repRectForHighlight:v22, v23];
        v35.origin.x = v24;
        v35.origin.y = v25;
        v35.size.width = v26;
        v35.size.height = v27;
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v33 = CGRectUnion(v32, v35);
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
      }
    }
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)shouldAllowHighlights
{
  v2 = [-[THWPRep layout](-[THWPHighlightController parentRep](self "parentRep")];
  if (v2)
  {
    [v2 fullTransform];
    LOBYTE(v2) = 0;
    if (0.0 >= 1.0e-11)
    {
      LOBYTE(v2) = fabs(0.0) + fabs(0.0) <= 1.0e-11;
    }
  }

  return v2;
}

- (BOOL)shouldBeginDragHighlightAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(THWPHighlightController *)self shouldAllowHighlights])
  {
    return 0;
  }

  [(THWPHighlightController *)self p_repRectForPoint:x, y];
  v6 = v18.origin.x;
  v7 = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (CGRectIsNull(v18))
  {
    return 0;
  }

  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalPointFromUnscaledCanvas:x, y];
  v12 = v11;
  v14 = v13;
  v19.origin.x = v6;
  v19.origin.y = v7;
  v19.size.width = width;
  v19.size.height = height;
  v20 = CGRectInset(v19, -20.0, -20.0);
  v15 = v12;
  v16 = v14;

  return CGRectContainsPoint(v20, *&v15);
}

- (void)beginDragHighlightAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v6 = [(THWPHighlightController *)self selectionRangeForStartPoint:x currentPoint:y, x, y];
  v8 = [-[THWPHighlightController annotationController](self "annotationController")];
  [(THWPAnnotationSource *)self->mAnnotationSource setTemporaryAnnotation:v8];
  [(THWPHighlightController *)self setCurrentDragAnnotation:v8];
  [(THWPHighlightController *)self setTrackingDrag:1];

  [(THWPHighlightController *)self setDragStartPoint:x, y];
}

- (id)highlightAtCanvasPoint:(CGPoint)point
{
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalPointFromUnscaledCanvas:point.x, point.y];
  v4 = -[THWPHighlightController p_cachedAnnotationForAnnotation:](self, "p_cachedAnnotationForAnnotation:", [+[THAnnotationCache annotationsOrderedForVisualStacking:](THAnnotationCache annotationsOrderedForVisualStacking:{-[THWPHighlightController p_annotationsAtRepPoint:](self, "p_annotationsAtRepPoint:")), "lastObject"}]);

  return [v4 highlight];
}

- (id)annotationAtUnscaledPoint:(CGPoint)point
{
  v3 = [(THWPHighlightController *)self highlightAtCanvasPoint:point.x, point.y];

  return [v3 annotation];
}

- (id)annotationForRange:(_NSRange)range
{
  v3 = [THAnnotationCache annotationsOrderedForVisualStacking:[(THWPAnnotationSource *)self->mAnnotationSource annotationsForRange:range.location, range.length]];

  return [v3 lastObject];
}

- (id)annotationsForRange:(_NSRange)range
{
  v3 = [(THWPAnnotationSource *)self->mAnnotationSource annotationsForRange:range.location, range.length];

  return [THAnnotationCache annotationsOrderedForVisualStacking:v3];
}

- (_NSRange)p_rangeOfHighlight:(id)highlight
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)[(THWPHighlightController *)self annotationCache] allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 highlight] == highlight)
        {
          v10 = [objc_msgSend(v9 "annotation")];
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  v10 = NSInvalidRange[0];
  v11 = NSInvalidRange[1];
LABEL_11:
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)moveDragHighlightToPoint:(CGPoint)point
{
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  if (![(THWPHighlightController *)self currentDragAnnotation])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPHighlightController *)self dragStartPoint];
  v4 = [THWPHighlightController selectionRangeForStartPoint:"selectionRangeForStartPoint:currentPoint:" currentPoint:?];
  v6 = [(THWPHighlightController *)self p_trimHighlightRange:v4, v5];
  v8 = v7;
  if ([(THAnnotation *)[(THWPHighlightController *)self currentDragAnnotation] annotationStorageRange]!= v6 || v9 != v8)
  {
    -[THWPHighlightController setCurrentDragAnnotation:](self, "setCurrentDragAnnotation:", [-[THWPHighlightController annotationController](self "annotationController")]);
    currentDragAnnotation = [(THWPHighlightController *)self currentDragAnnotation];
    mAnnotationSource = self->mAnnotationSource;

    [(THWPAnnotationSource *)mAnnotationSource setTemporaryAnnotation:currentDragAnnotation];
  }
}

- (void)endDragHighlightAtPoint:(CGPoint)point accept:(BOOL)accept
{
  if (accept && [(THWPHighlightController *)self currentDragAnnotation:point.x])
  {
    annotationController = [(THWPHighlightController *)self annotationController];
    storage = [(THWPRep *)[(THWPHighlightController *)self parentRep] storage];
    annotationStorageRange = [(THAnnotation *)[(THWPHighlightController *)self currentDragAnnotation] annotationStorageRange];
    [annotationController addAnnotationForStorage:storage range:annotationStorageRange contentNode:v8 style:-[THWPRep storageContentNode](-[THWPHighlightController parentRep](self undoContext:{"parentRep"), "storageContentNode"), objc_msgSend(-[THWPHighlightController annotationController](self, "annotationController"), "currentAnnotationStyle"), 0}];
  }

  [(THWPHighlightController *)self setTrackingDrag:0, point.x, point.y];
  [(THWPHighlightController *)self setCurrentDragAnnotation:0];
  mAnnotationSource = self->mAnnotationSource;

  [(THWPAnnotationSource *)mAnnotationSource setTemporaryAnnotation:0];
}

+ (void)dismissActivePopoverEditor
{
  if (qword_5677F0)
  {
    [qword_5677F0 hide];
    qword_5677F0 = 0;
  }
}

- (CGRect)highlightRectForAnnotation:(id)annotation
{
  v3 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  highlight = [objc_msgSend(v3 highlight];
  v9 = [highlight countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(highlight);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        IsEmpty = CGRectIsEmpty(v28);
        [v13 fullLineRect];
        if (!IsEmpty)
        {
          v30.origin.x = x;
          v30.origin.y = y;
          v30.size.width = width;
          v30.size.height = height;
          *&v15 = CGRectUnion(*&v15, v30);
        }

        x = v15;
        y = v16;
        width = v17;
        height = v18;
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [highlight countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)p_showEditor:(id)editor forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = [objc_msgSend(objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] popoverPresentationRectForRange:location, length];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectToUnscaledCanvas:v9, v10, v11, v12];
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [editor presentFromRect:v8 view:?];
  qword_5677F0 = editor;
}

+ (void)p_forgetActivePopover:(id)popover
{
  if (qword_5677F0 == popover)
  {
    qword_5677F0 = 0;
  }
}

- (void)hidePopoverEditor
{
  [objc_opt_class() p_forgetActivePopover:{-[THWPHighlightController noteEditorController](self, "noteEditorController")}];
  [objc_opt_class() p_forgetActivePopover:{-[THWPHighlightController highlightColorEditorController](self, "highlightColorEditorController")}];
  [(AEAnnotationEditor *)[(THWPHighlightController *)self noteEditorController] hide];
  highlightColorEditorController = [(THWPHighlightController *)self highlightColorEditorController];

  [(AEHighlightColorEditorController *)highlightColorEditorController hide];
}

- (void)p_showHighlightEditorForCachedAnnotation:(id)annotation
{
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v5 = TSUDynamicCast();
  if (annotation)
  {
    v6 = v5;
    if (([v5 showingExpandedWidgetView] & 1) == 0)
    {
      v10 = [[AEHighlightColorEditorController alloc] initWithNibName:0 bundle:0];
      if ([objc_msgSend(v6 "documentRoot")])
      {
        v7 = [objc_msgSend(objc_msgSend(v6 "documentRoot")];
      }

      else
      {
        v7 = &dword_4;
      }

      [v10 setPageTheme:v7];
      [v10 setDelegate:self];
      [v10 setAnnotation:{objc_msgSend(annotation, "annotation")}];
      [v10 setAnnotationTheme:{objc_msgSend(objc_msgSend(annotation, "annotation"), "theme")}];
      [v6 addChildViewController:v10];
      v8 = [objc_msgSend(annotation "annotation")];
      [(THWPHighlightController *)self p_showEditor:v10 forRange:v8, v9];
      [(THWPHighlightController *)self setHighlightColorEditorController:v10];
    }
  }
}

- (CGRect)canvasRectForAnnotation:(id)annotation
{
  annotationStorageRange = [annotation annotationStorageRange];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] popoverPresentationRectForRange:annotationStorageRange, v5];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectToUnscaledCanvas:v6, v7, v8, v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  interactiveCanvasController = [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];

  [interactiveCanvasController convertUnscaledToBoundsRect:{v11, v13, v15, v17}];
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)p_showHighlightMenuForCachedAnnotation:(id)annotation
{
  v5 = [objc_msgSend(objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v6 = [objc_msgSend(annotation "annotation")];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] popoverPresentationRectForRange:v6, v7];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectToUnscaledCanvas:v8, v9, v10, v11];
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  y = v25.origin.y;
  MidX = CGRectGetMidX(v25);
  v22 = -[THHighlightMenuInteraction initWithAnnotationUUID:delegate:]([THHighlightMenuInteraction alloc], "initWithAnnotationUUID:delegate:", [objc_msgSend(annotation "annotation")], self);
  [v5 addInteraction:v22];
  v23 = [UIEditMenuConfiguration configurationWithIdentifier:@"com.apple.iBooks.HighlightMenu" sourcePoint:MidX, y];

  [(THHighlightMenuInteraction *)v22 presentEditMenuWithConfiguration:v23];
}

- (id)p_editMenuForAnnotationUUID:(id)d
{
  annotationController = [(THWPHighlightController *)self annotationController];
  v6 = [annotationController annotationWithUuid:d];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_B7000;
  v21[3] = &unk_45CE40;
  v21[4] = v6;
  v24 = +[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", [THBundle() localizedStringForKey:@"Copy" value:&stru_471858 table:0], +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"doc.on.doc"), 0, v21);
  v14 = [UIMenu menuWithTitle:&stru_471858 image:0 identifier:@"com.apple.iBooks.EditMenuGroup" options:17 children:[NSArray arrayWithObjects:&v24 count:1]];
  v7 = [_TtC8BookCore23BECustomViewMenuElement createHighlightMenuElementFor:4 annotationUUID:d delegate:self];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_B7068;
  v20[3] = &unk_45CE90;
  v20[4] = v6;
  v20[5] = annotationController;
  v20[6] = self;
  v8 = +[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", [THBundle() localizedStringForKey:@"Remove" value:&stru_471858 table:0], +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"trash"), 0, v20);
  [(UIAction *)v8 setAttributes:2];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_B7254;
  v19[3] = &unk_45CEB8;
  v19[4] = self;
  v19[5] = v6;
  v9 = +[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", [THBundle() localizedStringForKey:@"Add Note" value:&stru_471858 table:0], +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"note.text"), 0, v19);
  v23[0] = v7;
  v23[1] = v8;
  v23[2] = v9;
  v10 = [UIMenu menuWithTitle:&stru_471858 image:0 identifier:@"com.apple.iBooks.AnnotationMenuGroup" options:17 children:[NSArray arrayWithObjects:v23 count:3]];
  v11 = +[NSMutableArray array];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_B7260;
  v18[3] = &unk_45CEB8;
  v18[4] = self;
  v18[5] = v6;
  [v11 addObject:{+[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Look Up", &stru_471858, 0), +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"magnifyingglass.circle", 0, v18)}];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_B72DC;
  v17[3] = &unk_45CEB8;
  v17[4] = self;
  v17[5] = v6;
  [v11 addObject:{+[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Translate", &stru_471858, 0), +[UIImage _systemImageNamed:](UIImage, "_systemImageNamed:", @"translate", 0, v17)}];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_B7358;
  v16[3] = &unk_45CEB8;
  v16[4] = self;
  v16[5] = v6;
  [v11 addObject:{+[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Search", &stru_471858, 0), +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"doc.text.magnifyingglass", 0, v16)}];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_B73C8;
  v15[3] = &unk_45CEB8;
  v15[4] = self;
  v15[5] = v6;
  [v11 addObject:{+[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Share", &stru_471858, 0), +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"square.and.arrow.up", 0, v15)}];
  v12 = [UIMenu menuWithTitle:&stru_471858 image:0 identifier:@"com.apple.iBooks.OtherMenuGroup" options:17 children:v11];
  v22[0] = v14;
  v22[1] = v10;
  v22[2] = v12;
  return [UIMenu menuWithTitle:&stru_471858 image:0 identifier:0 options:17 children:[NSArray arrayWithObjects:v22 count:3]];
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    annotationUUID = [v6 annotationUUID];

    return [(THWPHighlightController *)self p_editMenuForAnnotationUUID:annotationUUID];
  }

  else
  {
    v8 = THLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_29CFBC(v8);
    }

    return 0;
  }
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  view = [interaction view];

  [view removeInteraction:interaction];
}

- (void)createHighlightForSelectionWithCurrentThemeWithCompletion:(id)completion
{
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (completion)
  {
    v4 = *(completion + 2);

    v4(completion, 0);
  }
}

- (void)createHighlightForSelectionWithStyle:(int)style
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THWPHighlightController createHighlightForSelectionWithStyle:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THWPHighlightController.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:1447 description:@"THWPHighlightController createHighlightForSelectionWithStyle: not implemented"];
}

- (void)setStyleOfExistingHighlight:(id)highlight to:(int)to
{
  v4 = *&to;
  interactiveCanvasController = [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
  objc_opt_class();
  [interactiveCanvasController beginEditingRep:{-[THWPHighlightController parentRep](self, "parentRep")}];
  if (TSUDynamicCast())
  {
    annotationController = [(THWPHighlightController *)self annotationController];
    v9 = [annotationController annotationWithUuid:highlight];
    if (![(THWPHighlightController *)self p_cachedAnnotationForAnnotation:v9])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [annotationController modifyAnnotation:v9 withStyle:v4 undoContext:0];

    [annotationController setCurrentAnnotationStyle:v4];
  }

  else
  {
    v10 = THLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_29D000(v10);
    }
  }
}

- (void)p_showEditorForHighlight:(id)highlight
{
  [highlight annotation];
  v4 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];

  [(THWPHighlightController *)self p_showHighlightEditorForCachedAnnotation:v4];
}

- (void)p_showMenuForHighlight:(id)highlight
{
  [highlight annotation];
  v4 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];

  [(THWPHighlightController *)self p_showHighlightMenuForCachedAnnotation:v4];
}

- (void)showHighlightEditorForAnnotation:(id)annotation
{
  v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];
  if (!v5)
  {
    [(THWPHighlightController *)self updateCachedAnnotations];
    v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:annotation];
  }

  [(THWPHighlightController *)self p_showHighlightEditorForCachedAnnotation:v5];
}

- (void)showHighlightMenuForAnnotation:(id)annotation
{
  v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];
  if (!v5)
  {
    [(THWPHighlightController *)self updateCachedAnnotations];
    v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:annotation];
  }

  [(THWPHighlightController *)self p_showHighlightMenuForCachedAnnotation:v5];
}

- (void)showHighlightEditorForHighlightAtPoint:(CGPoint)point
{
  v4 = [(THWPHighlightController *)self highlightAtCanvasPoint:point.x, point.y];

  [(THWPHighlightController *)self p_showEditorForHighlight:v4];
}

- (void)showHighlightMenuForHighlightAtPoint:(CGPoint)point
{
  v4 = [(THWPHighlightController *)self highlightAtCanvasPoint:point.x, point.y];

  [(THWPHighlightController *)self p_showMenuForHighlight:v4];
}

- (id)editMenuForHighlightAtPoint:(CGPoint)point
{
  result = [(THWPHighlightController *)self highlightAtCanvasPoint:point.x, point.y];
  if (result)
  {
    v5 = [objc_msgSend(result "annotation")];

    return [(THWPHighlightController *)self p_editMenuForAnnotationUUID:v5];
  }

  return result;
}

- (void)p_removeNoteForCachedAnnotation:(id)annotation
{
  if (annotation)
  {
    marginNote = [annotation marginNote];
    if (marginNote)
    {
      [(THMarginNotesController *)[(THWPHighlightController *)self marginNotesController] removeMarginNote:marginNote];

      [annotation setMarginNote:0];
    }
  }
}

- (BOOL)p_shouldDrawMarginNoteForCachedCachedAnnotation:(id)annotation
{
  v5 = [objc_msgSend(annotation "annotation")];
  if (v5)
  {
    v6 = [objc_msgSend(annotation "annotation")];
    LOBYTE(v5) = v6 >= [(THWPRep *)[(THWPHighlightController *)self parentRep] range];
  }

  return v5;
}

- (CGRect)p_marginNotePresentationRectForCachedAnnotation:(id)annotation
{
  highlight = [annotation highlight];
  if (highlight && (v6 = highlight, [objc_msgSend(highlight "lines")]))
  {
    v7 = [objc_msgSend(v6 "lines")];
    if ([-[THWPRep columns](-[THWPHighlightController parentRep](self "parentRep")] == &dword_0 + 1)
    {
      [v7 currentLineRect];
      v11 = 1.0;
    }

    else
    {
      [v7 fullLineRect];
    }
  }

  else
  {
    parentRep = [(THWPHighlightController *)self parentRep];
    v13 = [objc_msgSend(annotation "annotation")];
    [(THWPRep *)parentRep popoverPresentationRectForRange:v13, v14];
  }

  result.size.height = v10;
  result.size.width = v11;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)p_drawMarginNoteIfNeeded:(id)needed
{
  if (![(THWPHighlightController *)self p_shouldDrawMarginNoteForCachedCachedAnnotation:?])
  {
    return;
  }

  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(THWPHighlightController *)self p_marginNotePresentationRectForCachedAnnotation:needed];
  v13 = [-[THWPRep marginNotesOwner](-[THWPHighlightController parentRep](self "parentRep")];
  [needed setMarginNote:v13];
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v14 = TSUDynamicCast();
  if ([objc_msgSend(v14 "documentRoot")])
  {
    if (([v14 inFlowMode] & 1) != 0 || objc_msgSend(objc_msgSend(v14, "documentRoot"), "isEPUB"))
    {
      configuration = [v14 configuration];
      [-[THWPRep canvas](-[THWPHighlightController parentRep](self "parentRep")];
      [configuration noteEdgeInsetsAtScale:?];
      top = v16;
      left = v17;
      bottom = v18;
      right = v19;
    }

    if (v13)
    {
LABEL_7:
      marginNotesController = [(THWPHighlightController *)self marginNotesController];

      [(THMarginNotesController *)marginNotesController addMarginNote:v13 edgeInsets:top, left, bottom, right];
    }
  }

  else
  {
    if ([(THMarginNotesController *)[(THWPHighlightController *)self marginNotesController] compactPresentation])
    {
      v21 = 4.0;
    }

    else
    {
      v21 = 10.0;
    }

    [objc_msgSend(v14 "view")];
    top = v22;
    v24 = v23;
    bottom = v25;
    v27 = v26;
    inFlowMode = [v14 inFlowMode];
    v29 = -0.0;
    if (inFlowMode)
    {
      v30 = v24;
    }

    else
    {
      v30 = -0.0;
    }

    left = v21 + v30;
    if (inFlowMode)
    {
      v29 = v27;
    }

    right = v21 + v29;
    if (v13)
    {
      goto LABEL_7;
    }
  }
}

- (void)p_updateMarginNoteForCachedAnnotation:(id)annotation
{
  [(THWPHighlightController *)self p_removeNoteForCachedAnnotation:?];

  [(THWPHighlightController *)self p_drawMarginNoteIfNeeded:annotation];
}

- (void)p_updateMarginNoteForHighlight:(id)highlight
{
  [highlight annotation];
  v4 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];
  if (v4)
  {

    [(THWPHighlightController *)self p_updateMarginNoteForCachedAnnotation:v4];
  }
}

- (id)annotationEditorForAnnotation:(id)annotation
{
  v5 = [objc_msgSend(annotation "annotationNote")] == 0;

  return [(THWPHighlightController *)self annotationEditorForAnnotation:annotation editsOnLaunch:v5];
}

- (id)annotationEditorForAnnotation:(id)annotation editsOnLaunch:(BOOL)launch
{
  launchCopy = launch;
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v7 = TSUDynamicCast();
  annotationController = [v7 annotationController];
  if ([(THWPHighlightController *)self p_alwaysShowSheetNoteEditor])
  {
    v9 = AENoteFullscreenEditorController_ptr;
  }

  else
  {
    v9 = AENoteFullscreenEditorController_ptr;
    if (![(THWPHighlightController *)self p_isCompactWidth]&& ![(THWPHighlightController *)self p_isCompactHeight])
    {
      v9 = AENotePopoverEditorController_ptr;
    }
  }

  v10 = objc_alloc_init(*v9);
  [v10 setAnnotation:annotation];
  if (launchCopy)
  {
    canModifyAnnotations = [annotationController canModifyAnnotations];
  }

  else
  {
    canModifyAnnotations = 0;
  }

  [v10 setEditsOnLaunch:canModifyAnnotations];
  [v10 setDelegate:self];
  objc_opt_class();
  [v7 themeProvider];
  themeIdentifier = [BUDynamicCast() themeIdentifier];
  if (themeIdentifier)
  {
    v13 = themeIdentifier;
  }

  else
  {
    v13 = kIMThemeIdentifierDynamicTheme;
  }

  [v10 setTheme:{+[IMThemePage themeWithIdentifier:](IMThemePage, "themeWithIdentifier:", v13)}];
  [v10 setAnnotationTheme:{+[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", objc_msgSend(annotation, "annotationStyle"), -[THWPHighlightController pageTheme](self, "pageTheme"), objc_msgSend(annotation, "annotationIsUnderline"))}];
  objc_opt_class();
  [objc_msgSend(objc_msgSend(BUDynamicCast() "noteEditorViewController")];

  return v10;
}

- (void)showNoteEditorForAnnotation:(id)annotation editsOnLaunch:(BOOL)launch
{
  launchCopy = launch;
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  if (([TSUDynamicCast() showingExpandedWidgetView] & 1) == 0)
  {
    v7 = [(THWPHighlightController *)self annotationEditorForAnnotation:annotation editsOnLaunch:launchCopy];
    [(THWPHighlightController *)self setNoteEditorController:v7];
    if ([(THWPHighlightController *)self p_isCompactWidth]|| [(THWPHighlightController *)self p_isCompactHeight]|| [(THWPHighlightController *)self p_alwaysShowSheetNoteEditor])
    {
      objc_opt_class();
      v8 = BUDynamicCast();
      if (!v8)
      {
        sub_29D07C();
      }

      v9 = [objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
      v10 = [[UINavigationController alloc] initWithRootViewController:v8];
      [objc_msgSend(v10 "traitOverrides")];
      [v9 presentViewController:v10 animated:1 completion:0];
      qword_5677F0 = v7;
    }

    else
    {
      objc_opt_class();
      v11 = BUDynamicCast();
      if (!v11)
      {
        sub_29D044();
      }

      annotationStorageRange = [annotation annotationStorageRange];

      [(THWPHighlightController *)self p_showEditor:v11 forRange:annotationStorageRange, v12];
    }
  }
}

- (void)showNoteEditorForAnnotation:(id)annotation
{
  v5 = [objc_msgSend(annotation "annotationNote")] == 0;

  [(THWPHighlightController *)self showNoteEditorForAnnotation:annotation editsOnLaunch:v5];
}

- (void)showNoteEditorForMarginNote:(id)note
{
  [note annotation];
  v4 = TSUProtocolCast();

  [(THWPHighlightController *)self showNoteEditorForAnnotation:v4];
}

- (BOOL)ownsMarginNote:(id)note
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)[(THWPHighlightController *)self annotationCache] allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v10 + 1) + 8 * v8) marginNote] == note)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)editorController:(id)controller editedAnnotation:(id)annotation toText:(id)text
{
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  annotationController = [TSUDynamicCast() annotationController];
  if ([text length])
  {
    textCopy = text;
  }

  else
  {
    textCopy = 0;
  }

  [annotationController modifyAnnotation:annotation withNoteText:textCopy undoContext:0];
}

- (void)editorController:(id)controller setTheme:(id)theme forAnnotation:(id)annotation
{
  if ([(THWPHighlightController *)self p_cachedAnnotationForAnnotation:annotation])
  {
    if (theme)
    {
LABEL_3:
      annotationStyle = [theme annotationStyle];
      goto LABEL_6;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (theme)
    {
      goto LABEL_3;
    }
  }

  annotationStyle = 0;
LABEL_6:
  if ([theme isUnderline])
  {
    v10 = 6;
  }

  else
  {
    v10 = annotationStyle;
  }

  annotationController = [(THWPHighlightController *)self annotationController];
  v12 = [annotationController modifyAnnotation:annotation withStyle:v10 undoContext:0];
  if (v12)
  {
    [controller setAnnotation:v12];
  }

  [annotationController setCurrentAnnotationStyle:v10];
}

- (void)editorController:(id)controller deleteAnnotation:(id)annotation
{
  v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:annotation];
  if (v5)
  {
    v6 = v5;
    [-[THWPHighlightController annotationController](self "annotationController")];
    v5 = v6;
  }
}

- (void)editorController:(id)controller showEditMenuForAnnotation:(id)annotation
{
  interactiveCanvasController = [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
  objc_opt_class();
  [TSUDynamicCast() setITunesMobileContext:annotation];
  objc_opt_class();
  [interactiveCanvasController beginEditingRep:{-[THWPHighlightController parentRep](self, "parentRep")}];
  v7 = TSUDynamicCast();
  annotationStorageRange = [annotation annotationStorageRange];
  v10 = [TSWPSelection selectionWithRange:annotationStorageRange, v9];

  [v7 setSelection:v10];
}

- (BOOL)p_isCompactWidth
{
  [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
  objc_opt_class();
  v2 = TSUDynamicCast();

  return [v2 isCompactWidth];
}

- (BOOL)p_isCompactHeight
{
  [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
  objc_opt_class();
  v2 = TSUDynamicCast();

  return [v2 isCompactHeight];
}

- (BOOL)editorController:(id)controller isRightArrowEnabledForAnnotation:(id)annotation
{
  interactiveCanvasController = [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
  objc_opt_class();
  v7 = TSUDynamicCast();
  [v7 setITunesMobileContext:annotation];
  objc_opt_class();
  [interactiveCanvasController beginEditingRep:{-[THWPHighlightController parentRep](self, "parentRep")}];
  v8 = TSUDynamicCast();
  if (v8)
  {
    v9 = v8;
    annotationStorageRange = [annotation annotationStorageRange];
    v12 = [v9 willShowMenuForSelection:{+[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", annotationStorageRange, v11)}];
  }

  else
  {
    v12 = 1;
  }

  [v7 setITunesMobileContext:0];
  return v12;
}

- (void)willHideAnnotationEditor:(id)editor
{
  if (qword_5677F0 == editor)
  {
    qword_5677F0 = 0;
  }

  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  layout = [(THWPRep *)[(THWPHighlightController *)self parentRep] layout];

  [layout validate];
}

- (void)didHideAnnotationEditor:(id)editor
{
  if ([(THWPHighlightController *)self noteEditorController]== editor)
  {
    [(AEAnnotationEditor *)[(THWPHighlightController *)self noteEditorController] setDelegate:0];
    [(THWPHighlightController *)self setNoteEditorController:0];
  }

  else if ([(THWPHighlightController *)self highlightColorEditorController]== editor)
  {
    [(AEHighlightColorEditorController *)[(THWPHighlightController *)self highlightColorEditorController] removeFromParentViewController];
    [-[AEHighlightColorEditorController view](-[THWPHighlightController highlightColorEditorController](self "highlightColorEditorController")];
  }

  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v5 = TSUDynamicCast();

  [v5 becomeFirstResponder];
}

- (CGPoint)dragStartPoint
{
  x = self->mDragStartPoint.x;
  y = self->mDragStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end