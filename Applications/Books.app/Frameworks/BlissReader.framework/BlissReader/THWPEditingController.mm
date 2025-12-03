@interface THWPEditingController
- (BOOL)canCopy;
- (BOOL)canEditTextString;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)p_canAddNote;
- (BOOL)p_canCopySelection:(id)selection;
- (BOOL)p_canEditNote;
- (BOOL)p_canHighlight;
- (BOOL)p_canModifyAnnotations;
- (BOOL)p_canSearchSelection:(id)selection;
- (BOOL)p_canShowDictionaryForSelection:(id)selection;
- (BOOL)p_canShowGlossaryForSelection:(id)selection;
- (BOOL)p_canTranslateSelection:(id)selection;
- (BOOL)p_selection:(id)p_selection highlightMatchesStyle:(int)style;
- (BOOL)p_selectionContainsSomeUnhighlightedText:(id)text;
- (BOOL)p_selectionHasHighlight:(id)highlight;
- (BOOL)p_selectionHasNote:(id)note;
- (BOOL)p_selectionIsExactRangeOfHighlight:(id)highlight;
- (BOOL)p_selectionIsStrictSubrangeOfHighlight:(id)highlight;
- (BOOL)willShowMenuForSelection:(id)selection;
- (THWPEditingController)initWithStorage:(id)storage interactiveCanvasController:(id)controller;
- (id)annotationForCurrentSelection;
- (id)annotationForUUID:(id)d;
- (id)editingReps;
- (id)p_activityItemProviderWithAnnotation:(id)annotation;
- (id)p_activityItemProviderWithCurrentSelection;
- (id)p_annotationController;
- (id)p_annotationForSelection:(id)selection;
- (id)p_annotationFromCurrentSelection;
- (id)p_annotationUUIDFromSender:(id)sender;
- (id)p_pageRepForStorage:(id)storage withSelection:(id)selection;
- (id)p_repsForStorage:(id)storage range:(_NSRange)range;
- (id)p_selectionOrAnnotation;
- (id)p_selectionOrAnnotationFromSelection:(id)selection;
- (id)repForStorage:(id)storage range:(_NSRange)range;
- (id)stringFromSelection;
- (int)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (int)currentAnnotationStyle;
- (int)p_currentNoteStyle;
- (unint64_t)textSelectionGranularityForTapCount:(unint64_t)count;
- (unsigned)knobTrackingTapCount;
- (void)addHighlightWithStyle:(int)style forSender:(id)sender;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)didBecomeTextInputEditor;
- (void)dismissActivePopovers;
- (void)highlightWithStyle:(int)style annotation:(id)annotation;
- (void)p_addHighlightForSelection:(id)selection;
- (void)p_addNote:(id)note;
- (void)p_canvasDidScroll:(id)scroll;
- (void)p_canvasWillScroll:(id)scroll;
- (void)p_highlight:(id)p_highlight;
- (void)p_removeNote;
- (void)p_removeNotesFromAnnotation:(id)annotation;
- (void)p_showDictionaryForSelection:(id)selection;
- (void)p_showGlossary:(id)glossary;
- (void)p_showGlossaryForSelection:(id)selection;
- (void)p_showGlossaryOrDictionary:(int)dictionary forAnnotation:(id)annotation;
- (void)p_showGlossaryOrDictionary:(int)dictionary forRange:(_NSRange)range;
- (void)p_showGlossaryOrDictionary:(int)dictionary forSelection:(id)selection;
- (void)p_showTranslationForSelection:(id)selection;
- (void)removeNote:(id)note;
- (void)removeNoteAndHighlight:(id)highlight;
- (void)searchSelection:(id)selection;
- (void)selectionChangedWithFlags:(unint64_t)flags wpFlags:(unint64_t)wpFlags;
- (void)shareAnnotation:(id)annotation;
- (void)shareSelection:(id)selection;
- (void)showDictionary:(id)dictionary;
- (void)translateSelection:(id)selection;
- (void)willResignTextInputEditor;
@end

@implementation THWPEditingController

- (THWPEditingController)initWithStorage:(id)storage interactiveCanvasController:(id)controller
{
  v8.receiver = self;
  v8.super_class = THWPEditingController;
  v4 = [(THWPEditingController *)&v8 initWithStorage:storage interactiveCanvasController:?];
  if (v4)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = v5;
      [v5 iTunesMobileContext];
      if (TSUProtocolCast())
      {
        [(THWPEditingController *)v4 setCreatedFromAnnotationHUD:1];
        [v6 setITunesMobileContext:0];
      }

      else
      {
        [(THWPEditingController *)v4 setCreatedFromAnnotationHUD:0];
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = THWPEditingController;
  [(THWPEditingController *)&v2 dealloc];
}

- (void)p_canvasWillScroll:(id)scroll
{
  objc_opt_class();
  [scroll object];
  documentRoot = [TSUDynamicCast() documentRoot];
  if (documentRoot == [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")])
  {

    [(THWPEditingController *)self p_dismissPopovers];
  }
}

- (void)p_canvasDidScroll:(id)scroll
{
  objc_opt_class();
  [scroll object];
  documentRoot = [TSUDynamicCast() documentRoot];
  if (documentRoot == [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")])
  {

    [(THWPEditingController *)self p_dismissPopovers];
  }
}

- (void)didBecomeTextInputEditor
{
  v4.receiver = self;
  v4.super_class = THWPEditingController;
  [(THWPEditingController *)&v4 didBecomeTextInputEditor];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 addObserver:self selector:"p_canvasWillScroll:" name:TSDCanvasWillScrollNotification object:0];
  [(NSNotificationCenter *)v3 addObserver:self selector:"p_canvasWillScroll:" name:TSDCanvasWillAnimateScrollNotification object:0];
  [(NSNotificationCenter *)v3 addObserver:self selector:"p_canvasDidScroll:" name:TSDCanvasDidScrollNotification object:0];
}

- (void)willResignTextInputEditor
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:TSDCanvasWillScrollNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:TSDCanvasWillAnimateScrollNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:TSDCanvasDidScrollNotification object:0];
  v4.receiver = self;
  v4.super_class = THWPEditingController;
  [(THWPEditingController *)&v4 willResignTextInputEditor];
}

- (id)repForStorage:(id)storage range:(_NSRange)range
{
  v4 = [(THWPEditingController *)self p_repsForStorage:storage range:range.location, range.length];
  objc_opt_class();
  [v4 anyObject];

  return TSUDynamicCast();
}

- (id)p_repsForStorage:(id)storage range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = +[NSMutableSet set];
  v9 = [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
        if (v14)
        {
          [v8 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)editingReps
{
  storage = [(THWPEditingController *)self storage];
  v5 = [-[THWPEditingController selection](self "selection")];

  return [(THWPEditingController *)self p_repsForStorage:storage range:v5, v4];
}

- (void)selectionChangedWithFlags:(unint64_t)flags wpFlags:(unint64_t)wpFlags
{
  v4.receiver = self;
  v4.super_class = THWPEditingController;
  [(THWPEditingController *)&v4 selectionChangedWithFlags:flags wpFlags:wpFlags];
}

- (unint64_t)textSelectionGranularityForTapCount:(unint64_t)count
{
  if (count == 3)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (id)p_annotationController
{
  objc_opt_class();
  [(THWPEditingController *)self interactiveCanvasController];
  v3 = TSUDynamicCast();

  return [v3 bookAnnotationController];
}

- (BOOL)p_canModifyAnnotations
{
  p_annotationController = [(THWPEditingController *)self p_annotationController];

  return [p_annotationController canModifyAnnotations];
}

- (BOOL)p_canHighlight
{
  selection = [(THWPEditingController *)self selection];
  p_canModifyAnnotations = [(THWPEditingController *)self p_canModifyAnnotations];
  LOBYTE(v5) = 0;
  if (p_canModifyAnnotations && selection)
  {
    v6 = [(THWPEditingController *)self p_annotationForSelection:selection];
    v7 = v6;
    if (v6)
    {
      annotationStorageRange = [v6 annotationStorageRange];
    }

    else
    {
      annotationStorageRange = [selection range];
    }

    v10 = annotationStorageRange;
    v11 = v9;
    v12 = [(THWPEditingController *)self repForStorage:[(THWPEditingController *)self storage] range:annotationStorageRange, v9];
    if (!v12)
    {
      storage = [(THWPEditingController *)self storage];
      range = [selection range];
      v12 = [(THWPEditingController *)self repForStorage:storage range:range, v15];
    }

    v16 = [objc_msgSend(-[THWPEditingController storage](self "storage")];
    v5 = [objc_msgSend(v12 "highlightController")];
    if (!v7 && v5)
    {
      LOBYTE(v5) = [v16 length] != 0;
    }
  }

  return v5;
}

- (BOOL)p_canAddNote
{
  selection = [(THWPEditingController *)self selection];
  p_canModifyAnnotations = [(THWPEditingController *)self p_canModifyAnnotations];
  LOBYTE(v5) = 0;
  if (p_canModifyAnnotations && selection)
  {
    v6 = [(THWPEditingController *)self p_annotationForSelection:selection];
    if (v6)
    {
      LOBYTE(v5) = [v6 annotationNote] == 0;
    }

    else
    {
      range = [selection range];
      v9 = v8;
      v10 = [(THWPEditingController *)self repForStorage:[(THWPEditingController *)self storage] range:range, v8];
      v11 = [objc_msgSend(-[THWPEditingController storage](self "storage")];
      v5 = [objc_msgSend(v10 "highlightController")];
      if (v5)
      {
        LOBYTE(v5) = [v11 length] != 0;
      }
    }
  }

  return v5;
}

- (BOOL)p_canEditNote
{
  v3 = [(THWPEditingController *)self p_annotationForSelection:[(THWPEditingController *)self selection]];
  p_canModifyAnnotations = [(THWPEditingController *)self p_canModifyAnnotations];
  if (p_canModifyAnnotations)
  {
    LOBYTE(p_canModifyAnnotations) = [v3 annotationNote] != 0;
  }

  return p_canModifyAnnotations;
}

- (void)p_addHighlightForSelection:(id)selection
{
  if (([selection isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  storage = [(THWPEditingController *)self storage];
  range = [selection range];
  v8 = [(THWPEditingController *)self repForStorage:storage range:range, v7];
  [objc_msgSend(v8 "highlightController")];
  p_annotationController = [(THWPEditingController *)self p_annotationController];
  storage2 = [(THWPEditingController *)self storage];
  range2 = [selection range];
  v13 = v12;
  storageContentNode = [v8 storageContentNode];
  currentAnnotationStyle = [p_annotationController currentAnnotationStyle];

  [p_annotationController addAnnotationForStorage:storage2 range:range2 contentNode:v13 style:storageContentNode undoContext:{currentAnnotationStyle, 0}];
}

- (BOOL)p_selectionHasNote:(id)note
{
  if (([note isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  p_annotationController = [(THWPEditingController *)self p_annotationController];
  storage = [(THWPEditingController *)self storage];
  range = [note range];
  v9 = [p_annotationController cachedAnnotationsForContentNode:{objc_msgSend(-[THWPEditingController repForStorage:range:](self, "repForStorage:range:", storage, range, v8), "storageContentNode")}];
  storage2 = [(THWPEditingController *)self storage];
  range2 = [note range];

  return [v9 storage:storage2 hasAnnotationWithNoteInRange:{range2, v11}];
}

- (BOOL)p_selectionHasHighlight:(id)highlight
{
  if (([highlight isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  p_annotationController = [(THWPEditingController *)self p_annotationController];
  storage = [(THWPEditingController *)self storage];
  range = [highlight range];
  v9 = [p_annotationController cachedAnnotationsForContentNode:{objc_msgSend(-[THWPEditingController repForStorage:range:](self, "repForStorage:range:", storage, range, v8), "storageContentNode")}];
  storage2 = [(THWPEditingController *)self storage];
  range2 = [highlight range];

  return [v9 storage:storage2 hasAnnotationInRange:{range2, v11}];
}

- (BOOL)p_selectionIsStrictSubrangeOfHighlight:(id)highlight
{
  if (([highlight isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  p_annotationController = [(THWPEditingController *)self p_annotationController];
  storage = [(THWPEditingController *)self storage];
  range = [highlight range];
  v9 = [(THWPEditingController *)self repForStorage:storage range:range, v8];
  v10 = [p_annotationController cachedAnnotationsForContentNode:{objc_msgSend(v9, "storageContentNode")}];
  storage2 = [v9 storage];
  range2 = [highlight range];

  return [v10 storage:storage2 hasAnnotationStrictlyContainingRange:{range2, v12}];
}

- (BOOL)p_selectionIsExactRangeOfHighlight:(id)highlight
{
  if (([highlight isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  p_annotationController = [(THWPEditingController *)self p_annotationController];
  storage = [(THWPEditingController *)self storage];
  range = [highlight range];
  v9 = [(THWPEditingController *)self repForStorage:storage range:range, v8];
  v10 = [p_annotationController cachedAnnotationsForContentNode:{objc_msgSend(v9, "storageContentNode")}];
  storage2 = [v9 storage];
  range2 = [highlight range];

  return [v10 storage:storage2 hasAnnotationWithExactRange:{range2, v12}];
}

- (BOOL)p_selectionContainsSomeUnhighlightedText:(id)text
{
  if (([text isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  p_annotationController = [(THWPEditingController *)self p_annotationController];
  storage = [(THWPEditingController *)self storage];
  range = [text range];
  v9 = [p_annotationController cachedAnnotationsForContentNode:{objc_msgSend(-[THWPEditingController repForStorage:range:](self, "repForStorage:range:", storage, range, v8), "storageContentNode")}];
  storage2 = [(THWPEditingController *)self storage];
  range2 = [text range];

  return [v9 storage:storage2 containsSomeUnhighlightedTextInRange:{range2, v11}];
}

- (BOOL)p_selection:(id)p_selection highlightMatchesStyle:(int)style
{
  v4 = *&style;
  if (([p_selection isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  p_annotationController = [(THWPEditingController *)self p_annotationController];
  storage = [(THWPEditingController *)self storage];
  range = [p_selection range];
  v11 = [p_annotationController cachedAnnotationsForContentNode:{objc_msgSend(-[THWPEditingController repForStorage:range:](self, "repForStorage:range:", storage, range, v10), "storageContentNode")}];
  storage2 = [(THWPEditingController *)self storage];
  range2 = [p_selection range];

  return [v11 storage:storage2 hasAnnotationThatMatchesStyle:v4 inRange:{range2, v13}];
}

- (BOOL)willShowMenuForSelection:(id)selection
{
  if (!selection)
  {
    return 0;
  }

  if ([(THWPEditingController *)self p_canCopySelection:?]|| [(THWPEditingController *)self p_canShowDictionaryForSelection:selection]|| [(THWPEditingController *)self p_canSearchSelection:selection])
  {
    return 1;
  }

  return [(THWPEditingController *)self p_canShareSelection:selection];
}

- (BOOL)p_canShowGlossaryForSelection:(id)selection
{
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v5 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0 || (LODWORD(v6) = [v5 allowGlossary], v6))
  {
    v6 = [objc_msgSend(-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
    if (v6)
    {
      v7 = v6;
      storage = [(THWPEditingController *)self storage];
      range = [selection range];
      LOBYTE(v6) = [v7 entryForTerm:{objc_msgSend(storage, "substringWithRange:", range, v10)}] != 0;
    }
  }

  return v6;
}

- (BOOL)p_canShowDictionaryForSelection:(id)selection
{
  storage = [(THWPEditingController *)self storage];
  range = [selection range];
  if ([storage wordCountOfRange:{range, v7}] > 3)
  {
    return 0;
  }

  storage2 = [(THWPEditingController *)self storage];
  range2 = [selection range];
  [storage2 attachmentIndexRangeForTextRange:{range2, v10}];
  return v11 == 0;
}

- (void)p_showGlossaryOrDictionary:(int)dictionary forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = *&dictionary;
  storage = [(THWPEditingController *)self storage];
  v9 = [objc_msgSend(storage substringWithRange:{location, length), "stringByTrimmingCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  v10 = v9;
  if (v6 == 3)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = [v9 length];
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_667BC;
    v12[3] = &unk_45BF70;
    v12[4] = v13;
    v12[5] = &v14;
    [v10 enumerateSubstringsInRange:0 options:objc_msgSend(v10 usingBlock:{"length"), 3, v12}];
    v10 = [v10 substringToIndex:v15[3]];
    _Block_object_dispose(v13, 8);
    _Block_object_dispose(&v14, 8);
  }

  v11 = [(THWPEditingController *)self repForStorage:storage range:location, length];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  [TSUProtocolCast() presentGlossaryPopoverOfType:v6 withTerm:v10 rangeInRep:location rep:{length, v11}];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
}

- (void)p_showGlossaryOrDictionary:(int)dictionary forSelection:(id)selection
{
  v4 = *&dictionary;
  range = [selection range];

  [(THWPEditingController *)self p_showGlossaryOrDictionary:v4 forRange:range, v6];
}

- (void)p_showGlossaryOrDictionary:(int)dictionary forAnnotation:(id)annotation
{
  v4 = *&dictionary;
  annotationStorageRange = [annotation annotationStorageRange];

  [(THWPEditingController *)self p_showGlossaryOrDictionary:v4 forRange:annotationStorageRange, v6];
}

- (void)p_showDictionaryForSelection:(id)selection
{
  if (([selection isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPEditingController *)self p_showGlossaryOrDictionary:2 forSelection:selection];
}

- (void)p_showGlossaryForSelection:(id)selection
{
  if (([selection isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPEditingController *)self p_showGlossaryOrDictionary:0 forSelection:selection];
}

- (void)p_showTranslationForSelection:(id)selection
{
  if (([selection isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPEditingController *)self p_showGlossaryOrDictionary:3 forSelection:selection];
}

- (BOOL)canCopy
{
  selection = [(THWPEditingController *)self selection];

  return [(THWPEditingController *)self p_canCopySelection:selection];
}

- (BOOL)p_canCopySelection:(id)selection
{
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v5 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  allowCopy = [v5 allowCopy];
  if (allowCopy)
  {
    [selection range];
    if (v7)
    {
      storage = [(THWPEditingController *)self storage];
      range = [selection range];
      LOBYTE(allowCopy) = [objc_msgSend(storage stringEquivalentFromRange:{range, v10), "length"}] != 0;
      return allowCopy;
    }

LABEL_5:
    LOBYTE(allowCopy) = 0;
  }

  return allowCopy;
}

- (BOOL)p_canSearchSelection:(id)selection
{
  isRange = [selection isRange];
  if (isRange)
  {
    storage = [(THWPEditingController *)self storage];
    range = [selection range];
    if ([storage rangeContainsAttachment:{range, v8}])
    {
      LOBYTE(isRange) = 0;
    }

    else
    {
      storage2 = [(THWPEditingController *)self storage];
      range2 = [selection range];
      [storage2 paragraphIndexRangeForCharRange:{range2, v11}];
      LOBYTE(isRange) = v12 == 1;
    }
  }

  return isRange;
}

- (BOOL)p_canTranslateSelection:(id)selection
{
  canCopy = [(THWPEditingController *)self canCopy];
  if (canCopy)
  {
    canCopy = [selection isRange];
    if (canCopy)
    {
      storage = [(THWPEditingController *)self storage];
      range = [selection range];
      LOBYTE(canCopy) = [storage rangeContainsAttachment:{range, v8}] ^ 1;
    }
  }

  return canCopy;
}

- (id)stringFromSelection
{
  if (![-[THWPEditingController selection](self "selection")])
  {
    return 0;
  }

  result = [-[THWPEditingController p_activityItemProviderWithCurrentSelection](self "p_activityItemProviderWithCurrentSelection")];
  if (!result)
  {
    return &stru_471858;
  }

  return result;
}

- (void)copy:(id)copy
{
  if ([-[THWPEditingController selection](self selection])
  {
    stringFromSelection = [(THWPEditingController *)self stringFromSelection];
    v5 = +[UIPasteboard generalPasteboard];
    identifier = [UTTypeUTF8PlainText identifier];

    [(UIPasteboard *)v5 setValue:stringFromSelection forPasteboardType:identifier];
  }
}

- (id)p_annotationFromCurrentSelection
{
  storage = [(THWPEditingController *)self storage];
  v4 = [-[THWPEditingController selection](self "selection")];
  v6 = [(THWPEditingController *)self repForStorage:storage range:v4, v5];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  titleOfCurrentNavigationUnit = TSUProtocolCast();
  if (titleOfCurrentNavigationUnit)
  {
    if (objc_opt_respondsToSelector())
    {
      titleOfCurrentNavigationUnit = [titleOfCurrentNavigationUnit titleOfCurrentNavigationUnit];
    }

    else
    {
      titleOfCurrentNavigationUnit = 0;
    }
  }

  p_annotationController = [(THWPEditingController *)self p_annotationController];
  storage2 = [(THWPEditingController *)self storage];
  storageContentNode = [v6 storageContentNode];
  v12 = [-[THWPEditingController selection](self "selection")];

  return [p_annotationController temporaryAnnotationForStorage:storage2 contentNode:storageContentNode withRange:v12 style:v11 chapterTitle:{0, titleOfCurrentNavigationUnit}];
}

- (id)p_activityItemProviderWithCurrentSelection
{
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v3 = TSUProtocolCast();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  p_annotationFromCurrentSelection = [(THWPEditingController *)self p_annotationForSelection:[(THWPEditingController *)self selection]];
  if (!p_annotationFromCurrentSelection)
  {
    p_annotationFromCurrentSelection = [(THWPEditingController *)self p_annotationFromCurrentSelection];
    if (!p_annotationFromCurrentSelection)
    {
      return 0;
    }
  }

  v6 = p_annotationFromCurrentSelection;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v4 activityItemProviderWithCachedAnnotation:v6];
}

- (id)p_activityItemProviderWithAnnotation:(id)annotation
{
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v4 = TSUProtocolCast();
  if (!annotation)
  {
    return 0;
  }

  v5 = v4;
  if (!v4 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v5 activityItemProviderWithCachedAnnotation:annotation];
}

- (void)p_highlight:(id)p_highlight
{
  p_annotationController = [(THWPEditingController *)self p_annotationController];
  if (!p_annotationController)
  {
    return;
  }

  v6 = p_annotationController;
  if (objc_opt_respondsToSelector())
  {
    if ([p_highlight tag])
    {
LABEL_4:
      [v6 setCurrentAnnotationStyle:?];
      [(THWPEditingController *)self p_addHighlightForSelection:[(THWPEditingController *)self p_selectionOrAnnotation]];
      interactiveCanvasController = [(THWPEditingController *)self interactiveCanvasController];

      [interactiveCanvasController endEditing];
      return;
    }
  }

  else if ([v6 currentAnnotationStyle])
  {
    goto LABEL_4;
  }

  v8 = [(THWPEditingController *)self p_annotationForSelection:[(THWPEditingController *)self selection]];
  if (v8)
  {

    [v6 destroyAnnotation:v8 undoContext:0];
  }
}

- (void)translateSelection:(id)selection
{
  selection = [(THWPEditingController *)self selection];

  [(THWPEditingController *)self p_showTranslationForSelection:selection];
}

- (void)p_showGlossary:(id)glossary
{
  selection = [(THWPEditingController *)self selection];

  [(THWPEditingController *)self p_showGlossaryForSelection:selection];
}

- (void)showDictionary:(id)dictionary
{
  selection = [(THWPEditingController *)self selection];

  [(THWPEditingController *)self p_showDictionaryForSelection:selection];
}

- (void)p_addNote:(id)note
{
  selection = [(THWPEditingController *)self selection];
  p_annotationController = [(THWPEditingController *)self p_annotationController];
  if (selection)
  {
    v6 = p_annotationController;
    if (p_annotationController)
    {
      v7 = [(THWPEditingController *)self p_annotationForSelection:selection];
      if (v7)
      {
        v8 = v7;
        annotationStorageRange = [v7 annotationStorageRange];
        v11 = v10;
        v12.location = [selection range];
        if (v12.length)
        {
          v27.location = annotationStorageRange;
          v27.length = v11;
          v13 = NSUnionRange(v12, v27);
          location = v13.location;
          length = v13.length;
        }

        else
        {
          location = annotationStorageRange;
          length = v11;
        }

        v23 = [(THWPEditingController *)self repForStorage:[(THWPEditingController *)self storage] range:location, length];
        if (location == annotationStorageRange && length == v11)
        {
          goto LABEL_12;
        }

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_67374;
        v25[3] = &unk_45BF90;
        v25[4] = location;
        v25[5] = length;
        v24 = [v6 modifyAnnotation:v8 undoContext:0 undoActionName:0 withBlock:v25];
      }

      else
      {
        storage = [(THWPEditingController *)self storage];
        range = [selection range];
        v19 = v18;
        v26.location = range;
        v26.length = v19;
        v20 = THTrimHighlightRange(storage, v26);
        v22 = v21;
        v23 = [(THWPEditingController *)self repForStorage:[(THWPEditingController *)self storage] range:v20, v21];
        v24 = [v6 addAnnotationForStorage:-[THWPEditingController storage](self range:"storage") contentNode:v20 style:v22 undoContext:{objc_msgSend(v23, "storageContentNode"), objc_msgSend(v6, "currentAnnotationStyle"), 0}];
      }

      v8 = v24;
LABEL_12:
      [objc_msgSend(v23 "highlightController")];
      [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
      [objc_msgSend(v23 "highlightController")];
    }
  }
}

- (void)p_removeNote
{
  v3 = [(THWPEditingController *)self p_annotationForSelection:[(THWPEditingController *)self selection]];

  [(THWPEditingController *)self p_removeNotesFromAnnotation:v3];
}

- (void)p_removeNotesFromAnnotation:(id)annotation
{
  p_annotationController = [(THWPEditingController *)self p_annotationController];
  if (annotation && p_annotationController)
  {
    [p_annotationController modifyAnnotation:annotation withNoteText:0 undoContext:0];
  }

  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v6 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    [v6 didRemoveNoteForAnnotation:annotation];
  }
}

- (id)p_pageRepForStorage:(id)storage withSelection:(id)selection
{
  v5 = [objc_msgSend(-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  interactiveCanvasController = [(THWPEditingController *)self interactiveCanvasController];

  return [interactiveCanvasController repForLayout:v5];
}

- (void)searchSelection:(id)selection
{
  storage = [(THWPEditingController *)self storage];
  v5 = [-[THWPEditingController selection](self "selection")];
  v7 = [storage substringWithRange:{v5, v6}];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v8 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    [v8 presentSearchResultsForString:v7];
  }

  interactiveCanvasController = [(THWPEditingController *)self interactiveCanvasController];

  [interactiveCanvasController endEditing];
}

- (void)shareSelection:(id)selection
{
  p_activityItemProviderWithCurrentSelection = [(THWPEditingController *)self p_activityItemProviderWithCurrentSelection];
  [(THWPEditingController *)self targetRectForSelection:[(THWPEditingController *)self selection]];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v13 = TSUProtocolCast();

  [v13 presentSharePopoverWithItemProvider:p_activityItemProviderWithCurrentSelection targetRect:{v6, v8, v10, v12}];
}

- (void)shareAnnotation:(id)annotation
{
  v5 = [(THWPEditingController *)self p_activityItemProviderWithAnnotation:?];
  annotationStorageRange = [annotation annotationStorageRange];
  [objc_msgSend(-[THWPEditingController repForStorage:range:](self repForStorage:-[THWPEditingController storage](self range:{"storage"), annotationStorageRange, v7), "highlightController"), "canvasRectForAnnotation:", annotation}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v16 = TSUProtocolCast();

  [v16 presentSharePopoverWithItemProvider:v5 targetRect:{v9, v11, v13, v15}];
}

- (id)p_annotationForSelection:(id)selection
{
  if (!selection)
  {
    return 0;
  }

  range = [selection range];
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  v7 = +[THAnnotationCache annotationsOrderedForVisualStacking:](THAnnotationCache, "annotationsOrderedForVisualStacking:", [objc_msgSend(-[THWPEditingController storage](self "storage")]);

  return [v7 lastObject];
}

- (id)p_selectionOrAnnotation
{
  selection = [(THWPEditingController *)self selection];

  return [(THWPEditingController *)self p_selectionOrAnnotationFromSelection:selection];
}

- (id)p_selectionOrAnnotationFromSelection:(id)selection
{
  v4 = [(THWPEditingController *)self p_annotationForSelection:?];
  if (([selection isRange] & 1) != 0 || !v4)
  {
    return selection;
  }

  annotationStorageRange = [v4 annotationStorageRange];

  return [TSWPSelection selectionWithRange:annotationStorageRange, v5];
}

- (int)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  selection = [(THWPEditingController *)self selection];
  result = +[NSThread isMainThread];
  if (result)
  {
    p_selectionOrAnnotation = [(THWPEditingController *)self p_selectionOrAnnotation];
    v10 = p_selectionOrAnnotation;
    if ("p_highlight:" == action && [p_selectionOrAnnotation isRange])
    {
      if (![(THWPEditingController *)self createdFromAnnotationHUD])
      {
        p_canHighlight = [(THWPEditingController *)self p_canHighlight];
        goto LABEL_28;
      }

      return -1;
    }

    if ("addNote:" == action && [v10 isRange])
    {
      if ([(THWPEditingController *)self createdFromAnnotationHUD])
      {
        return -1;
      }

      p_canHighlight = [(THWPEditingController *)self p_canAddNote];
LABEL_28:
      if (p_canHighlight)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    result = [selection isRange];
    if (!result)
    {
      return result;
    }

    if ("copy:" == action)
    {
      if (![TSDCanvasEditor physicalKeyboardIsSender:sender])
      {
        return -1;
      }
    }

    else if ("menuCopy:" != action)
    {
      if ("p_showGlossary:" == action)
      {
        p_canHighlight = [(THWPEditingController *)self p_canShowGlossaryForSelection:selection];
      }

      else if ("translateSelection:" == action)
      {
        p_canHighlight = [(THWPEditingController *)self p_canTranslateSelection:selection];
      }

      else if ("showDictionary:" == action)
      {
        p_canHighlight = [(THWPEditingController *)self p_canShowDictionaryForSelection:selection];
      }

      else if ("searchSelection:" == action)
      {
        p_canHighlight = [(THWPEditingController *)self p_canSearchSelection:selection];
      }

      else if ("shareSelection:" == action)
      {
        p_canHighlight = [(THWPEditingController *)self p_canShareSelection:selection];
      }

      else
      {
        if ("lookUp:" == action)
        {
          v13.receiver = self;
          v13.super_class = THWPEditingController;
          return [(THWPEditingController *)&v13 canPerformEditorAction:action withSender:sender];
        }

        if ("selectAll:" != action)
        {
          return 0;
        }

        [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
        v12 = TSUProtocolCast();
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          return -1;
        }

        p_canHighlight = [v12 allowSelectAll];
      }

      goto LABEL_28;
    }

    p_canHighlight = [(THWPEditingController *)self p_canCopySelection:selection];
    goto LABEL_28;
  }

  return result;
}

- (void)dismissActivePopovers
{
  v3.receiver = self;
  v3.super_class = THWPEditingController;
  [(THWPEditingController *)&v3 dismissActivePopovers];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  [TSUProtocolCast() dismissSharePopover];
}

- (void)addHighlightWithStyle:(int)style forSender:(id)sender
{
  v5 = *&style;
  annotationForCurrentSelection = [(THWPEditingController *)self annotationForCurrentSelection];
  v8 = [(THWPEditingController *)self p_annotationUUIDFromSender:sender];
  if ([v8 length] && (!annotationForCurrentSelection || (objc_msgSend(objc_msgSend(annotationForCurrentSelection, "annotationUuid"), "isEqualToString:", v8) & 1) == 0))
  {
    annotationForCurrentSelection = [(THWPEditingController *)self annotationForUUID:v8];
  }

  [(THWPEditingController *)self highlightWithStyle:v5 annotation:annotationForCurrentSelection];
}

- (void)removeNote:(id)note
{
  v4 = [(THWPEditingController *)self p_annotationUUIDFromSender:note];
  if (v4)
  {
    [(THWPEditingController *)self annotationForUUID:v4];

    [(THWPEditingController *)self p_removeNotesFromAnnotation:?];
  }

  else
  {

    [(THWPEditingController *)self p_removeNote];
  }
}

- (void)removeNoteAndHighlight:(id)highlight
{
  annotationForCurrentSelection = [(THWPEditingController *)self annotationForCurrentSelection];
  v6 = [(THWPEditingController *)self p_annotationUUIDFromSender:highlight];
  if ([v6 length] && (!annotationForCurrentSelection || (objc_msgSend(objc_msgSend(annotationForCurrentSelection, "annotationUuid"), "isEqualToString:", v6) & 1) == 0))
  {
    annotationForCurrentSelection = [(THWPEditingController *)self annotationForUUID:v6];
  }

  p_annotationController = [(THWPEditingController *)self p_annotationController];
  if (p_annotationController && annotationForCurrentSelection)
  {

    [p_annotationController destroyAnnotation:annotationForCurrentSelection undoContext:0];
  }
}

- (id)p_annotationUUIDFromSender:(id)sender
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  [v3 propertyList];
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = v4;
  objc_opt_class();
  [v7 objectForKeyedSubscript:@"annotationUUID"];
  v8 = TSUDynamicCast();
  if ([v8 length])
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (id)annotationForUUID:(id)d
{
  result = [d length];
  if (result)
  {
    p_annotationController = [(THWPEditingController *)self p_annotationController];

    return [p_annotationController annotationWithUuid:d];
  }

  return result;
}

- (id)annotationForCurrentSelection
{
  selection = [(THWPEditingController *)self selection];

  return [(THWPEditingController *)self p_annotationForSelection:selection];
}

- (unsigned)knobTrackingTapCount
{
  if ([(THWPEditingController *)self startingInitialSelectionDrag])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = THWPEditingController;
  return [(THWPEditingController *)&v4 knobTrackingTapCount];
}

- (BOOL)canHandleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  [gesture unscaledLocationForICC:{-[THWPEditingController interactiveCanvasController](self, "interactiveCanvasController")}];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v10 = TSUDynamicCast();
  objc_opt_class();
  if ([v10 shouldPreventGestureFromEditingController:TSUDynamicCast()])
  {
    return 0;
  }

  if (gestureKind != TSWPImmediatePress || (v17.receiver = self, v17.super_class = THWPEditingController, ![(THWPEditingController *)&v17 canHandleGesture:gesture]))
  {
    if (gestureKind == TSWPTapAndTouch || gestureKind == TSWPLongPress && ![(THWPEditingController *)self startingInitialSelectionDrag])
    {
      v15.receiver = self;
      v15.super_class = THWPEditingController;
      return [(THWPEditingController *)&v15 canHandleGesture:gesture];
    }

    return 0;
  }

  v16 = 0;
  v11 = [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  objc_opt_class();
  v12 = TSUDynamicCast();
  result = 0;
  if (v11 && v12)
  {
    storage = [v12 storage];
    if (storage == [(THWPEditingController *)self storage])
    {
      return [-[THWPEditingController selection](self "selection")];
    }

    return 0;
  }

  return result;
}

- (BOOL)handleGesture:(id)gesture
{
  v9.receiver = self;
  v9.super_class = THWPEditingController;
  v5 = [(THWPEditingController *)&v9 handleGesture:?];
  gestureKind = [gesture gestureKind];
  v7 = gestureKind == TSWPTapAndTouch && [gesture gestureState] == 1;
  [(THWPEditingController *)self setStartingInitialSelectionDrag:v7];
  return v5;
}

- (void)highlightWithStyle:(int)style annotation:(id)annotation
{
  v5 = *&style;
  selection = [(THWPEditingController *)self selection];
  p_annotationController = [(THWPEditingController *)self p_annotationController];
  if (annotation | selection)
  {
    v9 = p_annotationController;
    if (p_annotationController)
    {
      [p_annotationController setCurrentAnnotationStyle:v5];
      isRange = [selection isRange];
      if (annotation || !isRange)
      {
        if ((annotation || (annotation = -[THWPEditingController p_annotationForSelection:](self, "p_annotationForSelection:", selection)) != 0) && [annotation annotationStyle] != v5)
        {

          [v9 modifyAnnotation:annotation withStyle:v5 undoContext:0];
        }
      }

      else
      {

        [(THWPEditingController *)self p_addHighlightForSelection:selection];
      }
    }
  }
}

- (int)currentAnnotationStyle
{
  p_annotationController = [(THWPEditingController *)self p_annotationController];
  if (!p_annotationController)
  {
    return 3;
  }

  v4 = p_annotationController;
  selection = [(THWPEditingController *)self selection];
  v6 = [(THWPEditingController *)self p_annotationForSelection:selection];
  range = [selection range];
  v9 = v8;
  v16.location = [v6 annotationStorageRange];
  v16.length = v10;
  v15.location = range;
  v15.length = v9;
  v11 = NSUnionRange(v15, v16);
  if (v6 && (![selection isRange] || objc_msgSend(selection, "range") == v11.location && v12 == v11.length))
  {

    return [v6 annotationStyle];
  }

  else
  {

    return [v4 currentAnnotationStyle];
  }
}

- (int)p_currentNoteStyle
{
  v3 = [(THWPEditingController *)self p_annotationForSelection:[(THWPEditingController *)self selection]];
  if (v3)
  {

    return [v3 annotationStyle];
  }

  else
  {
    p_annotationController = [(THWPEditingController *)self p_annotationController];
    if (p_annotationController)
    {

      return [p_annotationController currentAnnotationStyle];
    }

    else
    {
      return 3;
    }
  }
}

- (BOOL)canEditTextString
{
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v3 = TSUProtocolCast();
  if (v3 && (v4 = v3, (objc_opt_respondsToSelector() & 1) != 0))
  {
    return [v4 disallowEditingOfTextStringWithStorage:{-[THWPEditingController storage](self, "storage")}] ^ 1;
  }

  else
  {
    return 1;
  }
}

@end