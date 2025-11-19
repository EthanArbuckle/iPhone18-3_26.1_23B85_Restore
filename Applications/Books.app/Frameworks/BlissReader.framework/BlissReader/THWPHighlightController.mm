@interface THWPHighlightController
+ (void)dismissActivePopoverEditor;
+ (void)p_forgetActivePopover:(id)a3;
+ (void)p_hideAndReleasePopover:(id)a3;
- (BOOL)editorController:(id)a3 isRightArrowEnabledForAnnotation:(id)a4;
- (BOOL)needsToRedrawForVisibleBounds:(CGRect)a3;
- (BOOL)ownsMarginNote:(id)a3;
- (BOOL)p_isCompactHeight;
- (BOOL)p_isCompactWidth;
- (BOOL)p_setLineProperties:(id)a3 fromRange:(_NSRange)a4 isUnderline:(BOOL)a5;
- (BOOL)p_shouldDrawMarginNoteForCachedCachedAnnotation:(id)a3;
- (BOOL)p_updateHighlight:(id)a3 toRange:(_NSRange)a4 rect:(CGRect)a5;
- (BOOL)shouldAllowHighlights;
- (BOOL)shouldBeginDragHighlightAtPoint:(CGPoint)a3;
- (CGPoint)dragStartPoint;
- (CGRect)canvasRectForAnnotation:(id)a3;
- (CGRect)highlightRectForAnnotation:(id)a3;
- (CGRect)p_marginNotePresentationRectForCachedAnnotation:(id)a3;
- (CGRect)p_repRectForHighlight:(_NSRange)a3;
- (CGRect)p_repRectForHighlight:(_NSRange)a3 lineHasAttachment:(BOOL)a4;
- (CGRect)p_repRectForPoint:(CGPoint)a3;
- (THWPHighlightController)initWithParentRep:(id)a3;
- (_NSRange)p_rangeOfHighlight:(id)a3;
- (_NSRange)p_trimHighlightRange:(_NSRange)a3;
- (_NSRange)rangeOfInterest;
- (_NSRange)selectionRangeForStartPoint:(CGPoint)a3 currentPoint:(CGPoint)a4;
- (id)annotationAtUnscaledPoint:(CGPoint)a3;
- (id)annotationController;
- (id)annotationEditorForAnnotation:(id)a3;
- (id)annotationEditorForAnnotation:(id)a3 editsOnLaunch:(BOOL)a4;
- (id)annotationForRange:(_NSRange)a3;
- (id)annotationsForRange:(_NSRange)a3;
- (id)editMenuForHighlightAtPoint:(CGPoint)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)highlightAtCanvasPoint:(CGPoint)a3;
- (id)highlightLayersInCanvasUnscaledRect:(CGRect)a3 scale:(double)a4;
- (id)p_annotationSource;
- (id)p_annotationsAtRepPoint:(CGPoint)a3;
- (id)p_annotationsInRepRect:(CGRect)a3;
- (id)p_cachedAnnotationForAnnotation:(id)a3;
- (id)p_drawHighlightLine:(id)a3 forAnnotation:(id)a4 scale:(double)a5;
- (id)p_editMenuForAnnotationUUID:(id)a3;
- (id)p_highlightFromAnnotation:(id)a3 range:(_NSRange)a4 rect:(CGRect)a5;
- (id)p_highlightLineFromLineSelection:(id)a3 isUnderline:(BOOL)a4;
- (int)p_blendModeForCachedAnnotation:(id)a3;
- (int64_t)pageTheme;
- (void)beginDragHighlightAtPoint:(CGPoint)a3;
- (void)createHighlightForSelectionWithCurrentThemeWithCompletion:(id)a3;
- (void)createHighlightForSelectionWithStyle:(int)a3;
- (void)dealloc;
- (void)didHideAnnotationEditor:(id)a3;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)editorController:(id)a3 deleteAnnotation:(id)a4;
- (void)editorController:(id)a3 editedAnnotation:(id)a4 toText:(id)a5;
- (void)editorController:(id)a3 setTheme:(id)a4 forAnnotation:(id)a5;
- (void)editorController:(id)a3 showEditMenuForAnnotation:(id)a4;
- (void)endDragHighlightAtPoint:(CGPoint)a3 accept:(BOOL)a4;
- (void)hidePopoverEditor;
- (void)moveDragHighlightToPoint:(CGPoint)a3;
- (void)p_addHighlight:(id)a3 forCachedAnnotation:(id)a4;
- (void)p_clearAnnotationCache;
- (void)p_drawMarginNoteIfNeeded:(id)a3;
- (void)p_removeCachedAnnotation:(id)a3;
- (void)p_removeHighlightForCachedAnnotation:(id)a3;
- (void)p_removeNoteForCachedAnnotation:(id)a3;
- (void)p_showEditor:(id)a3 forRange:(_NSRange)a4;
- (void)p_showEditorForHighlight:(id)a3;
- (void)p_showHighlightEditorForCachedAnnotation:(id)a3;
- (void)p_showHighlightMenuForCachedAnnotation:(id)a3;
- (void)p_showMenuForHighlight:(id)a3;
- (void)p_updateMarginNoteForCachedAnnotation:(id)a3;
- (void)p_updateMarginNoteForHighlight:(id)a3;
- (void)parentWillBeRemovedFromCanvas:(id)a3;
- (void)setStyleOfExistingHighlight:(id)a3 to:(int)a4;
- (void)showHighlightEditorForAnnotation:(id)a3;
- (void)showHighlightEditorForHighlightAtPoint:(CGPoint)a3;
- (void)showHighlightMenuForAnnotation:(id)a3;
- (void)showHighlightMenuForHighlightAtPoint:(CGPoint)a3;
- (void)showNoteEditorForAnnotation:(id)a3;
- (void)showNoteEditorForAnnotation:(id)a3 editsOnLaunch:(BOOL)a4;
- (void)showNoteEditorForMarginNote:(id)a3;
- (void)updateCachedAnnotations;
- (void)updateFromLayout;
- (void)willHideAnnotationEditor:(id)a3;
@end

@implementation THWPHighlightController

- (THWPHighlightController)initWithParentRep:(id)a3
{
  v7.receiver = self;
  v7.super_class = THWPHighlightController;
  v4 = [(THWPHighlightController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWPHighlightController *)v4 setParentRep:a3];
    [(THWPHighlightController *)v5 setAnnotationCache:+[NSMutableDictionary dictionary]];
    [(THWPHighlightController *)v5 setHighlightColorEditorController:0];
    [(THWPHighlightController *)v5 setNoteEditorController:0];
    [(THWPHighlightController *)v5 updateCachedAnnotations];
  }

  return v5;
}

+ (void)p_hideAndReleasePopover:(id)a3
{
  [a1 p_forgetActivePopover:?];
  if ([a3 isViewLoaded] && objc_msgSend(objc_msgSend(a3, "view"), "superview"))
  {
    [a3 hide];
    [objc_msgSend(a3 "view")];
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

- (void)parentWillBeRemovedFromCanvas:(id)a3
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

- (void)p_removeHighlightForCachedAnnotation:(id)a3
{
  [a3 setHighlight:0];

  [(THWPHighlightController *)self p_removeNoteForCachedAnnotation:a3];
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

    v2 = [(THWPHighlightController *)self annotationCache];
    v3 = +[NSMutableDictionary dictionary];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = [(THWPHighlightController *)self p_annotationSource];
    v5 = [(THWPHighlightController *)self rangeOfInterest];
    v7 = [v4 annotationsForRange:{v5, v6}];
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
        v12 = [(NSMutableDictionary *)v2 objectForKey:[(THAnnotation *)v11 annotationUuid]];
        v13 = [(THAnnotation *)v11 annotationStorageRange];
        if (&v13[v14] <= [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")])
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
        v15 = [(NSMutableDictionary *)v2 count];
        v16 = (v15 != [v3 count]) | v22;
        [(THWPHighlightController *)self setAnnotationCache:v3];
        v23 = v16;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v17 = [(NSMutableDictionary *)v2 allKeys];
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v18)
        {
          v19 = *v26;
          do
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v25 + 1) + 8 * j);
              if (![v3 objectForKey:v21])
              {
                [(THWPHighlightController *)self p_removeHighlightForCachedAnnotation:[(NSMutableDictionary *)v2 objectForKey:v21]];
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
  v3 = [(THWPHighlightController *)self annotationCache];
  [(THWPHighlightController *)self setAnnotationCache:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(NSMutableDictionary *)v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(THWPHighlightController *)self p_removeHighlightForCachedAnnotation:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (_NSRange)p_trimHighlightRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(THWPRep *)[(THWPHighlightController *)self parentRep] storage];
  v6.location = location;
  v6.length = length;

  v7 = THTrimHighlightRange(v5, v6);
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)p_cachedAnnotationForAnnotation:(id)a3
{
  v4 = [(THWPHighlightController *)self annotationCache];
  v5 = [a3 annotationUuid];

  return [(NSMutableDictionary *)v4 objectForKey:v5];
}

- (void)p_removeCachedAnnotation:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPHighlightController *)self p_removeHighlightForCachedAnnotation:a3];
  v5 = [(THWPHighlightController *)self annotationCache];
  v6 = [objc_msgSend(a3 "annotation")];

  [(NSMutableDictionary *)v5 removeObjectForKey:v6];
}

- (CGRect)p_repRectForHighlight:(_NSRange)a3 lineHasAttachment:(BOOL)a4
{
  length = a3.length;
  location = a3.location;
  [(THWPRep *)[(THWPHighlightController *)self parentRep] rectForHighlight:a3.location lineHasAttachment:a3.length, a4];
  v11 = v10;
  v13 = v12;
  if (!a4)
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

- (CGRect)p_repRectForHighlight:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (!a3.length)
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

- (BOOL)p_setLineProperties:(id)a3 fromRange:(_NSRange)a4 isUnderline:(BOOL)a5
{
  length = a4.length;
  location = a4.location;
  if (!a4.length)
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
  [a3 currentLineRect];
  v33 = TSDNearlyEqualRects();
  [a3 setFullLineRect:{v18, v20, v22, v24}];
  [a3 setCurrentLineRect:{v26, v28, v30, v32}];
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
  [a3 setBaseline:v35];
  v36 = 1.0;
  if (v16)
  {
    [a3 baseline];
    v38 = v37;
    v46.origin.x = v26;
    v46.origin.y = v28;
    v46.size.width = v30;
    v46.size.height = v32;
    if (v38 < CGRectGetMinY(v46) || ([a3 baseline], v40 = v39, v47.origin.x = v26, v47.origin.y = v28, v47.size.width = v30, v47.size.height = v32, v40 > CGRectGetMaxY(v47)))
    {
      v48.origin.x = v26;
      v48.origin.y = v28;
      v48.size.width = v30;
      v48.size.height = v32;
      v41 = CGRectGetMaxY(v48) + -4.0;
      [a3 baseline];
      v36 = v41 - v42 + 1.0;
    }
  }

  [a3 setUnderlineOffset:v36];
  [a3 setContentLayer:{+[THHighlightContentLayer layer](THHighlightContentLayer, "layer")}];
  [objc_msgSend(a3 "contentLayer")];
  return v11;
}

- (id)p_highlightLineFromLineSelection:(id)a3 isUnderline:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 range];
  v8 = [(THWPHighlightController *)self p_trimHighlightRange:v6, v7];
  if (!v9)
  {
    return 0;
  }

  v10 = v8;
  v11 = v9;
  v12 = objc_alloc_init(THHighlightLine);
  [(THWPHighlightController *)self p_setLineProperties:v12 fromRange:v10 isUnderline:v11, v4];
  return v12;
}

- (id)p_highlightFromAnnotation:(id)a3 range:(_NSRange)a4 rect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  length = a4.length;
  location = a4.location;
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

        v20 = -[THWPHighlightController p_highlightLineFromLineSelection:isUnderline:](self, "p_highlightLineFromLineSelection:isUnderline:", *(*(&v23 + 1) + 8 * v19), [a3 annotationIsUnderline]);
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
  [(THHighlight *)v13 setAnnotation:a3];

  return v13;
}

- (void)p_addHighlight:(id)a3 forCachedAnnotation:(id)a4
{
  [(THWPHighlightController *)self p_removeHighlightForCachedAnnotation:a4];
  [a4 setHighlight:a3];

  [(THWPHighlightController *)self p_drawMarginNoteIfNeeded:a4];
}

- (BOOL)p_updateHighlight:(id)a3 toRange:(_NSRange)a4 rect:(CGRect)a5
{
  rect2 = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = [(THWPHighlightController *)self p_trimHighlightRange:a4.location, a4.length];
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
  v49 = a3;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v59 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v58 + 1) + 8 * i);
      v19 = [v18 range];
      v21 = [(THWPHighlightController *)self p_trimHighlightRange:v19, v20];
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
          v27 = [objc_msgSend(a3 "annotation")];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v28 = [a3 lines];
          v29 = [v28 countByEnumeratingWithState:&v54 objects:v62 count:16];
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
                objc_enumerationMutation(v28);
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
                v30 = [v28 countByEnumeratingWithState:&v54 objects:v62 count:16];
                if (v30)
                {
                  goto LABEL_10;
                }

                goto LABEL_20;
              }
            }

            v42 = [v18 range];
            v44 = [(THWPHighlightController *)self p_setLineProperties:v33 fromRange:v42 isUnderline:v43, v27];
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
          a3 = v49;
        }
      }
    }

    v14 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  }

  while (v14);
  if (v15)
  {
    [a3 setLines:v50];
  }

  else
  {
LABEL_26:
    v45 = [v50 count];
    v46 = [objc_msgSend(a3 "lines")];
    [a3 setLines:v50];
    if (v45 == v46)
    {
      return 0;
    }
  }

  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [(THWPHighlightController *)self p_updateMarginNoteForHighlight:a3];
  return 1;
}

- (BOOL)needsToRedrawForVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectFromUnscaledCanvas:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v10 = [(THWPHighlightController *)self annotationCache];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [(NSMutableDictionary *)v10 allValues];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [objc_msgSend(v16 "annotation")];
        [(THWPRep *)[(THWPHighlightController *)self parentRep] rectForSelection:[TSWPSelection selectionWithRange:v17, v18]];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v27 = [v16 highlight];
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = v8;
        v39.size.height = v9;
        v41.origin.x = v20;
        v41.origin.y = v22;
        v41.size.width = v24;
        v41.size.height = v26;
        if (CGRectIntersectsRect(v39, v41) && v27 == 0)
        {
          v29 = 1;
          goto LABEL_16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
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

- (id)p_drawHighlightLine:(id)a3 forAnnotation:(id)a4 scale:(double)a5
{
  v8 = [(THWPHighlightController *)self pageTheme];
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v9 = TSUDynamicCast();
  v10 = [+[TSUColor whiteColor](TSUColor "whiteColor")];
  if ([v9 themeProvider])
  {
    v10 = [objc_msgSend(v9 "themeProvider")];
  }

  v11 = [objc_msgSend(a4 "annotation")];
  v12 = [objc_msgSend(+[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme themeForAnnotationStyle:v11 pageTheme:v8 isUnderline:{v11 == 6), "highlightColor"), "CGColor"}];
  [-[THWPRep canvas](-[THWPHighlightController parentRep](self "parentRep")];
  v14 = v13;
  [a3 currentLineRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a3 baseline];
  v50 = v23;
  memset(&v52, 0, sizeof(v52));
  v24 = [(THWPHighlightController *)self parentRep];
  if (v24)
  {
    [(THWPRep *)v24 transformToConvertNaturalToLayerRelative];
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
    [a3 underlineOffset];
    TSDRoundForScale();
    v36 = v35;
    v37 = 2.0;
    if (v14 > 1.0)
    {
      v37 = 1.5;
    }

    v38 = ceil(v14 * (v37 * a5)) / v14;
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
  v46 = [a3 contentLayer];
  [v46 setHidden:0];
  [v46 setFrame:{v43, v36, v45, v38}];
  LODWORD(v47) = 1.0;
  [v46 setOpacity:v47];
  [v46 setBackgroundColor:v10];
  [v46 setHighlightColor:v12];
  [v46 setBlendMode:{-[THWPHighlightController p_blendModeForCachedAnnotation:](self, "p_blendModeForCachedAnnotation:", a4)}];
  [v46 setNeedsDisplay];
  return v46;
}

- (int)p_blendModeForCachedAnnotation:(id)a3
{
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v5 = TSUDynamicCast();
  if (![v5 themeProvider] || objc_msgSend(objc_msgSend(a3, "annotation"), "annotationStyle") == 6)
  {
    return 0;
  }

  v7 = [v5 themeProvider];

  return [v7 annotationBlendMode];
}

- (id)p_annotationsAtRepPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v34 = +[NSMutableArray array];
  v36 = self;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = [(THWPHighlightController *)self annotationCache];
  obj = [(NSMutableDictionary *)v32 allValues];
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
        v10 = [(THWPRep *)[(THWPHighlightController *)v36 parentRep] columns];
        v11 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
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
                objc_enumerationMutation(v10);
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
              v20 = [(TSWPSelection *)v9 range];
              v22 = [v15 rectsForSelectionRange:v20 selectionType:v21 forParagraphMode:-[TSWPSelection type](v9 includeRuby:{"type"), 0, 0}];
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

            v12 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
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

- (id)p_annotationsInRepRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[NSMutableArray array];
  v9 = [(THWPHighlightController *)self annotationCache];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(NSMutableDictionary *)v9 allValues];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v10);
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

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  return v8;
}

- (id)highlightLayersInCanvasUnscaledRect:(CGRect)a3 scale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
        v18 = [v17 highlight];
        if (v18)
        {
          v19 = v18;
          v20 = [objc_msgSend(v17 "annotation")];
          [(THWPHighlightController *)self p_updateHighlight:v19 toRange:v20 rect:v21, v11, v12, v13, v14];
          [(THWPHighlightController *)self p_updateMarginNoteForCachedAnnotation:v17];
        }

        else
        {
          v22 = [v16 annotationStorageRange];
          v19 = [(THWPHighlightController *)self p_highlightFromAnnotation:v16 range:v22 rect:v23, v11, v12, v13, v14];
          [(THWPHighlightController *)self p_addHighlight:v19 forCachedAnnotation:v17];
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v24 = [v19 lines];
        v25 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v35 + 1) + 8 * j);
              if ([v29 contentLayer])
              {
                v30 = [(THWPHighlightController *)self p_drawHighlightLine:v29 forAnnotation:v17 scale:a4];
                if (v30)
                {
                  [v10 addObject:v30];
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
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

  v4 = [v3 themeProvider];

  return [v4 annotationPageTheme];
}

- (void)updateFromLayout
{
  [(THMarginNotesController *)[(THWPHighlightController *)self marginNotesController] setPageTheme:[(THWPHighlightController *)self pageTheme]];
  v3 = [(THWPHighlightController *)self annotationCache];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(THWPHighlightController *)self p_updateMarginNoteForCachedAnnotation:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (_NSRange)rangeOfInterest
{
  v2 = [(THWPHighlightController *)self parentRep];

  v3 = [(THWPRep *)v2 range];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)selectionRangeForStartPoint:(CGPoint)a3 currentPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [-[THWPRep storage](-[THWPHighlightController parentRep](self "parentRep")];
  if (!v9)
  {
    v25 = 0;
    goto LABEL_38;
  }

  v10 = [(THWPHighlightController *)self parentRep];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalPointFromUnscaledCanvas:v7, v6];
  [(THWPRep *)v10 pinToNaturalBounds:1 andLastLineFragment:?];
  v12 = v11;
  v14 = v13;
  v15 = [(THWPHighlightController *)self parentRep];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalPointFromUnscaledCanvas:x, y];
  [(THWPRep *)v15 pinToNaturalBounds:1 andLastLineFragment:?];
  v17 = v16;
  v19 = v18;
  v20 = [(THWPRep *)[(THWPHighlightController *)self parentRep] charIndexFromPoint:1 allowPastBreak:0 isAtEndOfLine:v12, v14];
  v21 = [(THWPRep *)[(THWPHighlightController *)self parentRep] charIndexFromPoint:1 allowPastBreak:0 isAtEndOfLine:v17, v19];
  v22 = [(THWPHighlightController *)self parentRep];
  if (v20 >= v21)
  {
    v26 = [(THWPRep *)v22 charIndexFromPoint:1 allowPastBreak:0 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:0 leadingEdge:v17, v19];
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

  v23 = [(THWPRep *)v22 charIndexFromPoint:1 allowPastBreak:0 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:0 leadingEdge:v12, v14];
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

- (CGRect)p_repRectForPoint:(CGPoint)a3
{
  v4 = [(THWPHighlightController *)self selectionRangeForStartPoint:a3.x currentPoint:a3.y, a3.x, a3.y];
  v6 = [(THWPRep *)[(THWPHighlightController *)self parentRep] lineSelectionsForSelection:[TSWPSelection selectionWithRange:v4, v5]];
  v7 = [v6 count];
  if (v7 && (v8 = v7, v9 = [v6 objectAtIndex:0], objc_msgSend(v9, "range"), v10))
  {
    v11 = [v9 range];
    [(THWPHighlightController *)self p_repRectForHighlight:v11, v12];
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

- (BOOL)shouldBeginDragHighlightAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)beginDragHighlightAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v6 = [(THWPHighlightController *)self selectionRangeForStartPoint:x currentPoint:y, x, y];
  v8 = [-[THWPHighlightController annotationController](self "annotationController")];
  [(THWPAnnotationSource *)self->mAnnotationSource setTemporaryAnnotation:v8];
  [(THWPHighlightController *)self setCurrentDragAnnotation:v8];
  [(THWPHighlightController *)self setTrackingDrag:1];

  [(THWPHighlightController *)self setDragStartPoint:x, y];
}

- (id)highlightAtCanvasPoint:(CGPoint)a3
{
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalPointFromUnscaledCanvas:a3.x, a3.y];
  v4 = -[THWPHighlightController p_cachedAnnotationForAnnotation:](self, "p_cachedAnnotationForAnnotation:", [+[THAnnotationCache annotationsOrderedForVisualStacking:](THAnnotationCache annotationsOrderedForVisualStacking:{-[THWPHighlightController p_annotationsAtRepPoint:](self, "p_annotationsAtRepPoint:")), "lastObject"}]);

  return [v4 highlight];
}

- (id)annotationAtUnscaledPoint:(CGPoint)a3
{
  v3 = [(THWPHighlightController *)self highlightAtCanvasPoint:a3.x, a3.y];

  return [v3 annotation];
}

- (id)annotationForRange:(_NSRange)a3
{
  v3 = [THAnnotationCache annotationsOrderedForVisualStacking:[(THWPAnnotationSource *)self->mAnnotationSource annotationsForRange:a3.location, a3.length]];

  return [v3 lastObject];
}

- (id)annotationsForRange:(_NSRange)a3
{
  v3 = [(THWPAnnotationSource *)self->mAnnotationSource annotationsForRange:a3.location, a3.length];

  return [THAnnotationCache annotationsOrderedForVisualStacking:v3];
}

- (_NSRange)p_rangeOfHighlight:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)[(THWPHighlightController *)self annotationCache] allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 highlight] == a3)
        {
          v10 = [objc_msgSend(v9 "annotation")];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)moveDragHighlightToPoint:(CGPoint)a3
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
    v10 = [(THWPHighlightController *)self currentDragAnnotation];
    mAnnotationSource = self->mAnnotationSource;

    [(THWPAnnotationSource *)mAnnotationSource setTemporaryAnnotation:v10];
  }
}

- (void)endDragHighlightAtPoint:(CGPoint)a3 accept:(BOOL)a4
{
  if (a4 && [(THWPHighlightController *)self currentDragAnnotation:a3.x])
  {
    v5 = [(THWPHighlightController *)self annotationController];
    v6 = [(THWPRep *)[(THWPHighlightController *)self parentRep] storage];
    v7 = [(THAnnotation *)[(THWPHighlightController *)self currentDragAnnotation] annotationStorageRange];
    [v5 addAnnotationForStorage:v6 range:v7 contentNode:v8 style:-[THWPRep storageContentNode](-[THWPHighlightController parentRep](self undoContext:{"parentRep"), "storageContentNode"), objc_msgSend(-[THWPHighlightController annotationController](self, "annotationController"), "currentAnnotationStyle"), 0}];
  }

  [(THWPHighlightController *)self setTrackingDrag:0, a3.x, a3.y];
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

- (CGRect)highlightRectForAnnotation:(id)a3
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
  v8 = [objc_msgSend(v3 highlight];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v8);
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
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)p_showEditor:(id)a3 forRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = [objc_msgSend(objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] popoverPresentationRectForRange:location, length];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectToUnscaledCanvas:v9, v10, v11, v12];
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [a3 presentFromRect:v8 view:?];
  qword_5677F0 = a3;
}

+ (void)p_forgetActivePopover:(id)a3
{
  if (qword_5677F0 == a3)
  {
    qword_5677F0 = 0;
  }
}

- (void)hidePopoverEditor
{
  [objc_opt_class() p_forgetActivePopover:{-[THWPHighlightController noteEditorController](self, "noteEditorController")}];
  [objc_opt_class() p_forgetActivePopover:{-[THWPHighlightController highlightColorEditorController](self, "highlightColorEditorController")}];
  [(AEAnnotationEditor *)[(THWPHighlightController *)self noteEditorController] hide];
  v3 = [(THWPHighlightController *)self highlightColorEditorController];

  [(AEHighlightColorEditorController *)v3 hide];
}

- (void)p_showHighlightEditorForCachedAnnotation:(id)a3
{
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v5 = TSUDynamicCast();
  if (a3)
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
      [v10 setAnnotation:{objc_msgSend(a3, "annotation")}];
      [v10 setAnnotationTheme:{objc_msgSend(objc_msgSend(a3, "annotation"), "theme")}];
      [v6 addChildViewController:v10];
      v8 = [objc_msgSend(a3 "annotation")];
      [(THWPHighlightController *)self p_showEditor:v10 forRange:v8, v9];
      [(THWPHighlightController *)self setHighlightColorEditorController:v10];
    }
  }
}

- (CGRect)canvasRectForAnnotation:(id)a3
{
  v4 = [a3 annotationStorageRange];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] popoverPresentationRectForRange:v4, v5];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectToUnscaledCanvas:v6, v7, v8, v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];

  [v18 convertUnscaledToBoundsRect:{v11, v13, v15, v17}];
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)p_showHighlightMenuForCachedAnnotation:(id)a3
{
  v5 = [objc_msgSend(objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v6 = [objc_msgSend(a3 "annotation")];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] popoverPresentationRectForRange:v6, v7];
  [(THWPRep *)[(THWPHighlightController *)self parentRep] convertNaturalRectToUnscaledCanvas:v8, v9, v10, v11];
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  [objc_msgSend(-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  y = v25.origin.y;
  MidX = CGRectGetMidX(v25);
  v22 = -[THHighlightMenuInteraction initWithAnnotationUUID:delegate:]([THHighlightMenuInteraction alloc], "initWithAnnotationUUID:delegate:", [objc_msgSend(a3 "annotation")], self);
  [v5 addInteraction:v22];
  v23 = [UIEditMenuConfiguration configurationWithIdentifier:@"com.apple.iBooks.HighlightMenu" sourcePoint:MidX, y];

  [(THHighlightMenuInteraction *)v22 presentEditMenuWithConfiguration:v23];
}

- (id)p_editMenuForAnnotationUUID:(id)a3
{
  v5 = [(THWPHighlightController *)self annotationController];
  v6 = [v5 annotationWithUuid:a3];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_B7000;
  v21[3] = &unk_45CE40;
  v21[4] = v6;
  v24 = +[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", [THBundle() localizedStringForKey:@"Copy" value:&stru_471858 table:0], +[UIImage systemImageNamed:](UIImage, "systemImageNamed:", @"doc.on.doc"), 0, v21);
  v14 = [UIMenu menuWithTitle:&stru_471858 image:0 identifier:@"com.apple.iBooks.EditMenuGroup" options:17 children:[NSArray arrayWithObjects:&v24 count:1]];
  v7 = [_TtC8BookCore23BECustomViewMenuElement createHighlightMenuElementFor:4 annotationUUID:a3 delegate:self];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_B7068;
  v20[3] = &unk_45CE90;
  v20[4] = v6;
  v20[5] = v5;
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

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    v7 = [v6 annotationUUID];

    return [(THWPHighlightController *)self p_editMenuForAnnotationUUID:v7];
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

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = [a3 view];

  [v6 removeInteraction:a3];
}

- (void)createHighlightForSelectionWithCurrentThemeWithCompletion:(id)a3
{
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (a3)
  {
    v4 = *(a3 + 2);

    v4(a3, 0);
  }
}

- (void)createHighlightForSelectionWithStyle:(int)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THWPHighlightController createHighlightForSelectionWithStyle:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THWPHighlightController.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:1447 description:@"THWPHighlightController createHighlightForSelectionWithStyle: not implemented"];
}

- (void)setStyleOfExistingHighlight:(id)a3 to:(int)a4
{
  v4 = *&a4;
  v7 = [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
  objc_opt_class();
  [v7 beginEditingRep:{-[THWPHighlightController parentRep](self, "parentRep")}];
  if (TSUDynamicCast())
  {
    v8 = [(THWPHighlightController *)self annotationController];
    v9 = [v8 annotationWithUuid:a3];
    if (![(THWPHighlightController *)self p_cachedAnnotationForAnnotation:v9])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [v8 modifyAnnotation:v9 withStyle:v4 undoContext:0];

    [v8 setCurrentAnnotationStyle:v4];
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

- (void)p_showEditorForHighlight:(id)a3
{
  [a3 annotation];
  v4 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];

  [(THWPHighlightController *)self p_showHighlightEditorForCachedAnnotation:v4];
}

- (void)p_showMenuForHighlight:(id)a3
{
  [a3 annotation];
  v4 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];

  [(THWPHighlightController *)self p_showHighlightMenuForCachedAnnotation:v4];
}

- (void)showHighlightEditorForAnnotation:(id)a3
{
  v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];
  if (!v5)
  {
    [(THWPHighlightController *)self updateCachedAnnotations];
    v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:a3];
  }

  [(THWPHighlightController *)self p_showHighlightEditorForCachedAnnotation:v5];
}

- (void)showHighlightMenuForAnnotation:(id)a3
{
  v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];
  if (!v5)
  {
    [(THWPHighlightController *)self updateCachedAnnotations];
    v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:a3];
  }

  [(THWPHighlightController *)self p_showHighlightMenuForCachedAnnotation:v5];
}

- (void)showHighlightEditorForHighlightAtPoint:(CGPoint)a3
{
  v4 = [(THWPHighlightController *)self highlightAtCanvasPoint:a3.x, a3.y];

  [(THWPHighlightController *)self p_showEditorForHighlight:v4];
}

- (void)showHighlightMenuForHighlightAtPoint:(CGPoint)a3
{
  v4 = [(THWPHighlightController *)self highlightAtCanvasPoint:a3.x, a3.y];

  [(THWPHighlightController *)self p_showMenuForHighlight:v4];
}

- (id)editMenuForHighlightAtPoint:(CGPoint)a3
{
  result = [(THWPHighlightController *)self highlightAtCanvasPoint:a3.x, a3.y];
  if (result)
  {
    v5 = [objc_msgSend(result "annotation")];

    return [(THWPHighlightController *)self p_editMenuForAnnotationUUID:v5];
  }

  return result;
}

- (void)p_removeNoteForCachedAnnotation:(id)a3
{
  if (a3)
  {
    v5 = [a3 marginNote];
    if (v5)
    {
      [(THMarginNotesController *)[(THWPHighlightController *)self marginNotesController] removeMarginNote:v5];

      [a3 setMarginNote:0];
    }
  }
}

- (BOOL)p_shouldDrawMarginNoteForCachedCachedAnnotation:(id)a3
{
  v5 = [objc_msgSend(a3 "annotation")];
  if (v5)
  {
    v6 = [objc_msgSend(a3 "annotation")];
    LOBYTE(v5) = v6 >= [(THWPRep *)[(THWPHighlightController *)self parentRep] range];
  }

  return v5;
}

- (CGRect)p_marginNotePresentationRectForCachedAnnotation:(id)a3
{
  v5 = [a3 highlight];
  if (v5 && (v6 = v5, [objc_msgSend(v5 "lines")]))
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
    v12 = [(THWPHighlightController *)self parentRep];
    v13 = [objc_msgSend(a3 "annotation")];
    [(THWPRep *)v12 popoverPresentationRectForRange:v13, v14];
  }

  result.size.height = v10;
  result.size.width = v11;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)p_drawMarginNoteIfNeeded:(id)a3
{
  if (![(THWPHighlightController *)self p_shouldDrawMarginNoteForCachedCachedAnnotation:?])
  {
    return;
  }

  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(THWPHighlightController *)self p_marginNotePresentationRectForCachedAnnotation:a3];
  v13 = [-[THWPRep marginNotesOwner](-[THWPHighlightController parentRep](self "parentRep")];
  [a3 setMarginNote:v13];
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v14 = TSUDynamicCast();
  if ([objc_msgSend(v14 "documentRoot")])
  {
    if (([v14 inFlowMode] & 1) != 0 || objc_msgSend(objc_msgSend(v14, "documentRoot"), "isEPUB"))
    {
      v15 = [v14 configuration];
      [-[THWPRep canvas](-[THWPHighlightController parentRep](self "parentRep")];
      [v15 noteEdgeInsetsAtScale:?];
      top = v16;
      left = v17;
      bottom = v18;
      right = v19;
    }

    if (v13)
    {
LABEL_7:
      v20 = [(THWPHighlightController *)self marginNotesController];

      [(THMarginNotesController *)v20 addMarginNote:v13 edgeInsets:top, left, bottom, right];
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
    v28 = [v14 inFlowMode];
    v29 = -0.0;
    if (v28)
    {
      v30 = v24;
    }

    else
    {
      v30 = -0.0;
    }

    left = v21 + v30;
    if (v28)
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

- (void)p_updateMarginNoteForCachedAnnotation:(id)a3
{
  [(THWPHighlightController *)self p_removeNoteForCachedAnnotation:?];

  [(THWPHighlightController *)self p_drawMarginNoteIfNeeded:a3];
}

- (void)p_updateMarginNoteForHighlight:(id)a3
{
  [a3 annotation];
  v4 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:TSUProtocolCast()];
  if (v4)
  {

    [(THWPHighlightController *)self p_updateMarginNoteForCachedAnnotation:v4];
  }
}

- (id)annotationEditorForAnnotation:(id)a3
{
  v5 = [objc_msgSend(a3 "annotationNote")] == 0;

  return [(THWPHighlightController *)self annotationEditorForAnnotation:a3 editsOnLaunch:v5];
}

- (id)annotationEditorForAnnotation:(id)a3 editsOnLaunch:(BOOL)a4
{
  v4 = a4;
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v7 = TSUDynamicCast();
  v8 = [v7 annotationController];
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
  [v10 setAnnotation:a3];
  if (v4)
  {
    v11 = [v8 canModifyAnnotations];
  }

  else
  {
    v11 = 0;
  }

  [v10 setEditsOnLaunch:v11];
  [v10 setDelegate:self];
  objc_opt_class();
  [v7 themeProvider];
  v12 = [BUDynamicCast() themeIdentifier];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = kIMThemeIdentifierDynamicTheme;
  }

  [v10 setTheme:{+[IMThemePage themeWithIdentifier:](IMThemePage, "themeWithIdentifier:", v13)}];
  [v10 setAnnotationTheme:{+[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", objc_msgSend(a3, "annotationStyle"), -[THWPHighlightController pageTheme](self, "pageTheme"), objc_msgSend(a3, "annotationIsUnderline"))}];
  objc_opt_class();
  [objc_msgSend(objc_msgSend(BUDynamicCast() "noteEditorViewController")];

  return v10;
}

- (void)showNoteEditorForAnnotation:(id)a3 editsOnLaunch:(BOOL)a4
{
  v4 = a4;
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  if (([TSUDynamicCast() showingExpandedWidgetView] & 1) == 0)
  {
    v7 = [(THWPHighlightController *)self annotationEditorForAnnotation:a3 editsOnLaunch:v4];
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

      v13 = [a3 annotationStorageRange];

      [(THWPHighlightController *)self p_showEditor:v11 forRange:v13, v12];
    }
  }
}

- (void)showNoteEditorForAnnotation:(id)a3
{
  v5 = [objc_msgSend(a3 "annotationNote")] == 0;

  [(THWPHighlightController *)self showNoteEditorForAnnotation:a3 editsOnLaunch:v5];
}

- (void)showNoteEditorForMarginNote:(id)a3
{
  [a3 annotation];
  v4 = TSUProtocolCast();

  [(THWPHighlightController *)self showNoteEditorForAnnotation:v4];
}

- (BOOL)ownsMarginNote:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)[(THWPHighlightController *)self annotationCache] allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * v8) marginNote] == a3)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)editorController:(id)a3 editedAnnotation:(id)a4 toText:(id)a5
{
  objc_opt_class();
  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v8 = [TSUDynamicCast() annotationController];
  if ([a5 length])
  {
    v9 = a5;
  }

  else
  {
    v9 = 0;
  }

  [v8 modifyAnnotation:a4 withNoteText:v9 undoContext:0];
}

- (void)editorController:(id)a3 setTheme:(id)a4 forAnnotation:(id)a5
{
  if ([(THWPHighlightController *)self p_cachedAnnotationForAnnotation:a5])
  {
    if (a4)
    {
LABEL_3:
      v9 = [a4 annotationStyle];
      goto LABEL_6;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  if ([a4 isUnderline])
  {
    v10 = 6;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(THWPHighlightController *)self annotationController];
  v12 = [v11 modifyAnnotation:a5 withStyle:v10 undoContext:0];
  if (v12)
  {
    [a3 setAnnotation:v12];
  }

  [v11 setCurrentAnnotationStyle:v10];
}

- (void)editorController:(id)a3 deleteAnnotation:(id)a4
{
  v5 = [(THWPHighlightController *)self p_cachedAnnotationForAnnotation:a4];
  if (v5)
  {
    v6 = v5;
    [-[THWPHighlightController annotationController](self "annotationController")];
    v5 = v6;
  }
}

- (void)editorController:(id)a3 showEditMenuForAnnotation:(id)a4
{
  v6 = [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
  objc_opt_class();
  [TSUDynamicCast() setITunesMobileContext:a4];
  objc_opt_class();
  [v6 beginEditingRep:{-[THWPHighlightController parentRep](self, "parentRep")}];
  v7 = TSUDynamicCast();
  v8 = [a4 annotationStorageRange];
  v10 = [TSWPSelection selectionWithRange:v8, v9];

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

- (BOOL)editorController:(id)a3 isRightArrowEnabledForAnnotation:(id)a4
{
  v6 = [(THWPRep *)[(THWPHighlightController *)self parentRep] interactiveCanvasController];
  objc_opt_class();
  v7 = TSUDynamicCast();
  [v7 setITunesMobileContext:a4];
  objc_opt_class();
  [v6 beginEditingRep:{-[THWPHighlightController parentRep](self, "parentRep")}];
  v8 = TSUDynamicCast();
  if (v8)
  {
    v9 = v8;
    v10 = [a4 annotationStorageRange];
    v12 = [v9 willShowMenuForSelection:{+[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", v10, v11)}];
  }

  else
  {
    v12 = 1;
  }

  [v7 setITunesMobileContext:0];
  return v12;
}

- (void)willHideAnnotationEditor:(id)a3
{
  if (qword_5677F0 == a3)
  {
    qword_5677F0 = 0;
  }

  [-[THWPRep interactiveCanvasController](-[THWPHighlightController parentRep](self "parentRep")];
  v4 = [(THWPRep *)[(THWPHighlightController *)self parentRep] layout];

  [v4 validate];
}

- (void)didHideAnnotationEditor:(id)a3
{
  if ([(THWPHighlightController *)self noteEditorController]== a3)
  {
    [(AEAnnotationEditor *)[(THWPHighlightController *)self noteEditorController] setDelegate:0];
    [(THWPHighlightController *)self setNoteEditorController:0];
  }

  else if ([(THWPHighlightController *)self highlightColorEditorController]== a3)
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