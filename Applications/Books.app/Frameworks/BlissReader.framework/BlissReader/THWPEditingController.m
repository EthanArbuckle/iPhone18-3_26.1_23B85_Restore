@interface THWPEditingController
- (BOOL)canCopy;
- (BOOL)canEditTextString;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)handleGesture:(id)a3;
- (BOOL)p_canAddNote;
- (BOOL)p_canCopySelection:(id)a3;
- (BOOL)p_canEditNote;
- (BOOL)p_canHighlight;
- (BOOL)p_canModifyAnnotations;
- (BOOL)p_canSearchSelection:(id)a3;
- (BOOL)p_canShowDictionaryForSelection:(id)a3;
- (BOOL)p_canShowGlossaryForSelection:(id)a3;
- (BOOL)p_canTranslateSelection:(id)a3;
- (BOOL)p_selection:(id)a3 highlightMatchesStyle:(int)a4;
- (BOOL)p_selectionContainsSomeUnhighlightedText:(id)a3;
- (BOOL)p_selectionHasHighlight:(id)a3;
- (BOOL)p_selectionHasNote:(id)a3;
- (BOOL)p_selectionIsExactRangeOfHighlight:(id)a3;
- (BOOL)p_selectionIsStrictSubrangeOfHighlight:(id)a3;
- (BOOL)willShowMenuForSelection:(id)a3;
- (THWPEditingController)initWithStorage:(id)a3 interactiveCanvasController:(id)a4;
- (id)annotationForCurrentSelection;
- (id)annotationForUUID:(id)a3;
- (id)editingReps;
- (id)p_activityItemProviderWithAnnotation:(id)a3;
- (id)p_activityItemProviderWithCurrentSelection;
- (id)p_annotationController;
- (id)p_annotationForSelection:(id)a3;
- (id)p_annotationFromCurrentSelection;
- (id)p_annotationUUIDFromSender:(id)a3;
- (id)p_pageRepForStorage:(id)a3 withSelection:(id)a4;
- (id)p_repsForStorage:(id)a3 range:(_NSRange)a4;
- (id)p_selectionOrAnnotation;
- (id)p_selectionOrAnnotationFromSelection:(id)a3;
- (id)repForStorage:(id)a3 range:(_NSRange)a4;
- (id)stringFromSelection;
- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (int)currentAnnotationStyle;
- (int)p_currentNoteStyle;
- (unint64_t)textSelectionGranularityForTapCount:(unint64_t)a3;
- (unsigned)knobTrackingTapCount;
- (void)addHighlightWithStyle:(int)a3 forSender:(id)a4;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)didBecomeTextInputEditor;
- (void)dismissActivePopovers;
- (void)highlightWithStyle:(int)a3 annotation:(id)a4;
- (void)p_addHighlightForSelection:(id)a3;
- (void)p_addNote:(id)a3;
- (void)p_canvasDidScroll:(id)a3;
- (void)p_canvasWillScroll:(id)a3;
- (void)p_highlight:(id)a3;
- (void)p_removeNote;
- (void)p_removeNotesFromAnnotation:(id)a3;
- (void)p_showDictionaryForSelection:(id)a3;
- (void)p_showGlossary:(id)a3;
- (void)p_showGlossaryForSelection:(id)a3;
- (void)p_showGlossaryOrDictionary:(int)a3 forAnnotation:(id)a4;
- (void)p_showGlossaryOrDictionary:(int)a3 forRange:(_NSRange)a4;
- (void)p_showGlossaryOrDictionary:(int)a3 forSelection:(id)a4;
- (void)p_showTranslationForSelection:(id)a3;
- (void)removeNote:(id)a3;
- (void)removeNoteAndHighlight:(id)a3;
- (void)searchSelection:(id)a3;
- (void)selectionChangedWithFlags:(unint64_t)a3 wpFlags:(unint64_t)a4;
- (void)shareAnnotation:(id)a3;
- (void)shareSelection:(id)a3;
- (void)showDictionary:(id)a3;
- (void)translateSelection:(id)a3;
- (void)willResignTextInputEditor;
@end

@implementation THWPEditingController

- (THWPEditingController)initWithStorage:(id)a3 interactiveCanvasController:(id)a4
{
  v8.receiver = self;
  v8.super_class = THWPEditingController;
  v4 = [(THWPEditingController *)&v8 initWithStorage:a3 interactiveCanvasController:?];
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

- (void)p_canvasWillScroll:(id)a3
{
  objc_opt_class();
  [a3 object];
  v5 = [TSUDynamicCast() documentRoot];
  if (v5 == [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")])
  {

    [(THWPEditingController *)self p_dismissPopovers];
  }
}

- (void)p_canvasDidScroll:(id)a3
{
  objc_opt_class();
  [a3 object];
  v5 = [TSUDynamicCast() documentRoot];
  if (v5 == [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")])
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

- (id)repForStorage:(id)a3 range:(_NSRange)a4
{
  v4 = [(THWPEditingController *)self p_repsForStorage:a3 range:a4.location, a4.length];
  objc_opt_class();
  [v4 anyObject];

  return TSUDynamicCast();
}

- (id)p_repsForStorage:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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
  v3 = [(THWPEditingController *)self storage];
  v5 = [-[THWPEditingController selection](self "selection")];

  return [(THWPEditingController *)self p_repsForStorage:v3 range:v5, v4];
}

- (void)selectionChangedWithFlags:(unint64_t)a3 wpFlags:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = THWPEditingController;
  [(THWPEditingController *)&v4 selectionChangedWithFlags:a3 wpFlags:a4];
}

- (unint64_t)textSelectionGranularityForTapCount:(unint64_t)a3
{
  if (a3 == 3)
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
  v2 = [(THWPEditingController *)self p_annotationController];

  return [v2 canModifyAnnotations];
}

- (BOOL)p_canHighlight
{
  v3 = [(THWPEditingController *)self selection];
  v4 = [(THWPEditingController *)self p_canModifyAnnotations];
  LOBYTE(v5) = 0;
  if (v4 && v3)
  {
    v6 = [(THWPEditingController *)self p_annotationForSelection:v3];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 annotationStorageRange];
    }

    else
    {
      v8 = [v3 range];
    }

    v10 = v8;
    v11 = v9;
    v12 = [(THWPEditingController *)self repForStorage:[(THWPEditingController *)self storage] range:v8, v9];
    if (!v12)
    {
      v13 = [(THWPEditingController *)self storage];
      v14 = [v3 range];
      v12 = [(THWPEditingController *)self repForStorage:v13 range:v14, v15];
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
  v3 = [(THWPEditingController *)self selection];
  v4 = [(THWPEditingController *)self p_canModifyAnnotations];
  LOBYTE(v5) = 0;
  if (v4 && v3)
  {
    v6 = [(THWPEditingController *)self p_annotationForSelection:v3];
    if (v6)
    {
      LOBYTE(v5) = [v6 annotationNote] == 0;
    }

    else
    {
      v7 = [v3 range];
      v9 = v8;
      v10 = [(THWPEditingController *)self repForStorage:[(THWPEditingController *)self storage] range:v7, v8];
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
  v4 = [(THWPEditingController *)self p_canModifyAnnotations];
  if (v4)
  {
    LOBYTE(v4) = [v3 annotationNote] != 0;
  }

  return v4;
}

- (void)p_addHighlightForSelection:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWPEditingController *)self storage];
  v6 = [a3 range];
  v8 = [(THWPEditingController *)self repForStorage:v5 range:v6, v7];
  [objc_msgSend(v8 "highlightController")];
  v9 = [(THWPEditingController *)self p_annotationController];
  v10 = [(THWPEditingController *)self storage];
  v11 = [a3 range];
  v13 = v12;
  v14 = [v8 storageContentNode];
  v15 = [v9 currentAnnotationStyle];

  [v9 addAnnotationForStorage:v10 range:v11 contentNode:v13 style:v14 undoContext:{v15, 0}];
}

- (BOOL)p_selectionHasNote:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWPEditingController *)self p_annotationController];
  v6 = [(THWPEditingController *)self storage];
  v7 = [a3 range];
  v9 = [v5 cachedAnnotationsForContentNode:{objc_msgSend(-[THWPEditingController repForStorage:range:](self, "repForStorage:range:", v6, v7, v8), "storageContentNode")}];
  v10 = [(THWPEditingController *)self storage];
  v12 = [a3 range];

  return [v9 storage:v10 hasAnnotationWithNoteInRange:{v12, v11}];
}

- (BOOL)p_selectionHasHighlight:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWPEditingController *)self p_annotationController];
  v6 = [(THWPEditingController *)self storage];
  v7 = [a3 range];
  v9 = [v5 cachedAnnotationsForContentNode:{objc_msgSend(-[THWPEditingController repForStorage:range:](self, "repForStorage:range:", v6, v7, v8), "storageContentNode")}];
  v10 = [(THWPEditingController *)self storage];
  v12 = [a3 range];

  return [v9 storage:v10 hasAnnotationInRange:{v12, v11}];
}

- (BOOL)p_selectionIsStrictSubrangeOfHighlight:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWPEditingController *)self p_annotationController];
  v6 = [(THWPEditingController *)self storage];
  v7 = [a3 range];
  v9 = [(THWPEditingController *)self repForStorage:v6 range:v7, v8];
  v10 = [v5 cachedAnnotationsForContentNode:{objc_msgSend(v9, "storageContentNode")}];
  v11 = [v9 storage];
  v13 = [a3 range];

  return [v10 storage:v11 hasAnnotationStrictlyContainingRange:{v13, v12}];
}

- (BOOL)p_selectionIsExactRangeOfHighlight:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWPEditingController *)self p_annotationController];
  v6 = [(THWPEditingController *)self storage];
  v7 = [a3 range];
  v9 = [(THWPEditingController *)self repForStorage:v6 range:v7, v8];
  v10 = [v5 cachedAnnotationsForContentNode:{objc_msgSend(v9, "storageContentNode")}];
  v11 = [v9 storage];
  v13 = [a3 range];

  return [v10 storage:v11 hasAnnotationWithExactRange:{v13, v12}];
}

- (BOOL)p_selectionContainsSomeUnhighlightedText:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THWPEditingController *)self p_annotationController];
  v6 = [(THWPEditingController *)self storage];
  v7 = [a3 range];
  v9 = [v5 cachedAnnotationsForContentNode:{objc_msgSend(-[THWPEditingController repForStorage:range:](self, "repForStorage:range:", v6, v7, v8), "storageContentNode")}];
  v10 = [(THWPEditingController *)self storage];
  v12 = [a3 range];

  return [v9 storage:v10 containsSomeUnhighlightedTextInRange:{v12, v11}];
}

- (BOOL)p_selection:(id)a3 highlightMatchesStyle:(int)a4
{
  v4 = *&a4;
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = [(THWPEditingController *)self p_annotationController];
  v8 = [(THWPEditingController *)self storage];
  v9 = [a3 range];
  v11 = [v7 cachedAnnotationsForContentNode:{objc_msgSend(-[THWPEditingController repForStorage:range:](self, "repForStorage:range:", v8, v9, v10), "storageContentNode")}];
  v12 = [(THWPEditingController *)self storage];
  v14 = [a3 range];

  return [v11 storage:v12 hasAnnotationThatMatchesStyle:v4 inRange:{v14, v13}];
}

- (BOOL)willShowMenuForSelection:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([(THWPEditingController *)self p_canCopySelection:?]|| [(THWPEditingController *)self p_canShowDictionaryForSelection:a3]|| [(THWPEditingController *)self p_canSearchSelection:a3])
  {
    return 1;
  }

  return [(THWPEditingController *)self p_canShareSelection:a3];
}

- (BOOL)p_canShowGlossaryForSelection:(id)a3
{
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v5 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0 || (LODWORD(v6) = [v5 allowGlossary], v6))
  {
    v6 = [objc_msgSend(-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
    if (v6)
    {
      v7 = v6;
      v8 = [(THWPEditingController *)self storage];
      v9 = [a3 range];
      LOBYTE(v6) = [v7 entryForTerm:{objc_msgSend(v8, "substringWithRange:", v9, v10)}] != 0;
    }
  }

  return v6;
}

- (BOOL)p_canShowDictionaryForSelection:(id)a3
{
  v5 = [(THWPEditingController *)self storage];
  v6 = [a3 range];
  if ([v5 wordCountOfRange:{v6, v7}] > 3)
  {
    return 0;
  }

  v8 = [(THWPEditingController *)self storage];
  v9 = [a3 range];
  [v8 attachmentIndexRangeForTextRange:{v9, v10}];
  return v11 == 0;
}

- (void)p_showGlossaryOrDictionary:(int)a3 forRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = *&a3;
  v8 = [(THWPEditingController *)self storage];
  v9 = [objc_msgSend(v8 substringWithRange:{location, length), "stringByTrimmingCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
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

  v11 = [(THWPEditingController *)self repForStorage:v8 range:location, length];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  [TSUProtocolCast() presentGlossaryPopoverOfType:v6 withTerm:v10 rangeInRep:location rep:{length, v11}];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
}

- (void)p_showGlossaryOrDictionary:(int)a3 forSelection:(id)a4
{
  v4 = *&a3;
  v7 = [a4 range];

  [(THWPEditingController *)self p_showGlossaryOrDictionary:v4 forRange:v7, v6];
}

- (void)p_showGlossaryOrDictionary:(int)a3 forAnnotation:(id)a4
{
  v4 = *&a3;
  v7 = [a4 annotationStorageRange];

  [(THWPEditingController *)self p_showGlossaryOrDictionary:v4 forRange:v7, v6];
}

- (void)p_showDictionaryForSelection:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPEditingController *)self p_showGlossaryOrDictionary:2 forSelection:a3];
}

- (void)p_showGlossaryForSelection:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPEditingController *)self p_showGlossaryOrDictionary:0 forSelection:a3];
}

- (void)p_showTranslationForSelection:(id)a3
{
  if (([a3 isRange] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWPEditingController *)self p_showGlossaryOrDictionary:3 forSelection:a3];
}

- (BOOL)canCopy
{
  v3 = [(THWPEditingController *)self selection];

  return [(THWPEditingController *)self p_canCopySelection:v3];
}

- (BOOL)p_canCopySelection:(id)a3
{
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v5 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = [v5 allowCopy];
  if (v6)
  {
    [a3 range];
    if (v7)
    {
      v8 = [(THWPEditingController *)self storage];
      v9 = [a3 range];
      LOBYTE(v6) = [objc_msgSend(v8 stringEquivalentFromRange:{v9, v10), "length"}] != 0;
      return v6;
    }

LABEL_5:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)p_canSearchSelection:(id)a3
{
  v5 = [a3 isRange];
  if (v5)
  {
    v6 = [(THWPEditingController *)self storage];
    v7 = [a3 range];
    if ([v6 rangeContainsAttachment:{v7, v8}])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v9 = [(THWPEditingController *)self storage];
      v10 = [a3 range];
      [v9 paragraphIndexRangeForCharRange:{v10, v11}];
      LOBYTE(v5) = v12 == 1;
    }
  }

  return v5;
}

- (BOOL)p_canTranslateSelection:(id)a3
{
  v5 = [(THWPEditingController *)self canCopy];
  if (v5)
  {
    v5 = [a3 isRange];
    if (v5)
    {
      v6 = [(THWPEditingController *)self storage];
      v7 = [a3 range];
      LOBYTE(v5) = [v6 rangeContainsAttachment:{v7, v8}] ^ 1;
    }
  }

  return v5;
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

- (void)copy:(id)a3
{
  if ([-[THWPEditingController selection](self selection])
  {
    v4 = [(THWPEditingController *)self stringFromSelection];
    v5 = +[UIPasteboard generalPasteboard];
    v6 = [UTTypeUTF8PlainText identifier];

    [(UIPasteboard *)v5 setValue:v4 forPasteboardType:v6];
  }
}

- (id)p_annotationFromCurrentSelection
{
  v3 = [(THWPEditingController *)self storage];
  v4 = [-[THWPEditingController selection](self "selection")];
  v6 = [(THWPEditingController *)self repForStorage:v3 range:v4, v5];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v7 = TSUProtocolCast();
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v7 titleOfCurrentNavigationUnit];
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = [(THWPEditingController *)self p_annotationController];
  v9 = [(THWPEditingController *)self storage];
  v10 = [v6 storageContentNode];
  v12 = [-[THWPEditingController selection](self "selection")];

  return [v8 temporaryAnnotationForStorage:v9 contentNode:v10 withRange:v12 style:v11 chapterTitle:{0, v7}];
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
  v5 = [(THWPEditingController *)self p_annotationForSelection:[(THWPEditingController *)self selection]];
  if (!v5)
  {
    v5 = [(THWPEditingController *)self p_annotationFromCurrentSelection];
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v4 activityItemProviderWithCachedAnnotation:v6];
}

- (id)p_activityItemProviderWithAnnotation:(id)a3
{
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v4 = TSUProtocolCast();
  if (!a3)
  {
    return 0;
  }

  v5 = v4;
  if (!v4 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v5 activityItemProviderWithCachedAnnotation:a3];
}

- (void)p_highlight:(id)a3
{
  v5 = [(THWPEditingController *)self p_annotationController];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (objc_opt_respondsToSelector())
  {
    if ([a3 tag])
    {
LABEL_4:
      [v6 setCurrentAnnotationStyle:?];
      [(THWPEditingController *)self p_addHighlightForSelection:[(THWPEditingController *)self p_selectionOrAnnotation]];
      v7 = [(THWPEditingController *)self interactiveCanvasController];

      [v7 endEditing];
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

- (void)translateSelection:(id)a3
{
  v4 = [(THWPEditingController *)self selection];

  [(THWPEditingController *)self p_showTranslationForSelection:v4];
}

- (void)p_showGlossary:(id)a3
{
  v4 = [(THWPEditingController *)self selection];

  [(THWPEditingController *)self p_showGlossaryForSelection:v4];
}

- (void)showDictionary:(id)a3
{
  v4 = [(THWPEditingController *)self selection];

  [(THWPEditingController *)self p_showDictionaryForSelection:v4];
}

- (void)p_addNote:(id)a3
{
  v4 = [(THWPEditingController *)self selection];
  v5 = [(THWPEditingController *)self p_annotationController];
  if (v4)
  {
    v6 = v5;
    if (v5)
    {
      v7 = [(THWPEditingController *)self p_annotationForSelection:v4];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 annotationStorageRange];
        v11 = v10;
        v12.location = [v4 range];
        if (v12.length)
        {
          v27.location = v9;
          v27.length = v11;
          v13 = NSUnionRange(v12, v27);
          location = v13.location;
          length = v13.length;
        }

        else
        {
          location = v9;
          length = v11;
        }

        v23 = [(THWPEditingController *)self repForStorage:[(THWPEditingController *)self storage] range:location, length];
        if (location == v9 && length == v11)
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
        v16 = [(THWPEditingController *)self storage];
        v17 = [v4 range];
        v19 = v18;
        v26.location = v17;
        v26.length = v19;
        v20 = THTrimHighlightRange(v16, v26);
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

- (void)p_removeNotesFromAnnotation:(id)a3
{
  v5 = [(THWPEditingController *)self p_annotationController];
  if (a3 && v5)
  {
    [v5 modifyAnnotation:a3 withNoteText:0 undoContext:0];
  }

  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v6 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    [v6 didRemoveNoteForAnnotation:a3];
  }
}

- (id)p_pageRepForStorage:(id)a3 withSelection:(id)a4
{
  v5 = [objc_msgSend(-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v6 = [(THWPEditingController *)self interactiveCanvasController];

  return [v6 repForLayout:v5];
}

- (void)searchSelection:(id)a3
{
  v4 = [(THWPEditingController *)self storage];
  v5 = [-[THWPEditingController selection](self "selection")];
  v7 = [v4 substringWithRange:{v5, v6}];
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v8 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    [v8 presentSearchResultsForString:v7];
  }

  v9 = [(THWPEditingController *)self interactiveCanvasController];

  [v9 endEditing];
}

- (void)shareSelection:(id)a3
{
  v4 = [(THWPEditingController *)self p_activityItemProviderWithCurrentSelection];
  [(THWPEditingController *)self targetRectForSelection:[(THWPEditingController *)self selection]];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v13 = TSUProtocolCast();

  [v13 presentSharePopoverWithItemProvider:v4 targetRect:{v6, v8, v10, v12}];
}

- (void)shareAnnotation:(id)a3
{
  v5 = [(THWPEditingController *)self p_activityItemProviderWithAnnotation:?];
  v6 = [a3 annotationStorageRange];
  [objc_msgSend(-[THWPEditingController repForStorage:range:](self repForStorage:-[THWPEditingController storage](self range:{"storage"), v6, v7), "highlightController"), "canvasRectForAnnotation:", a3}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
  v16 = TSUProtocolCast();

  [v16 presentSharePopoverWithItemProvider:v5 targetRect:{v9, v11, v13, v15}];
}

- (id)p_annotationForSelection:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a3 range];
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
  v3 = [(THWPEditingController *)self selection];

  return [(THWPEditingController *)self p_selectionOrAnnotationFromSelection:v3];
}

- (id)p_selectionOrAnnotationFromSelection:(id)a3
{
  v4 = [(THWPEditingController *)self p_annotationForSelection:?];
  if (([a3 isRange] & 1) != 0 || !v4)
  {
    return a3;
  }

  v6 = [v4 annotationStorageRange];

  return [TSWPSelection selectionWithRange:v6, v5];
}

- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v7 = [(THWPEditingController *)self selection];
  result = +[NSThread isMainThread];
  if (result)
  {
    v9 = [(THWPEditingController *)self p_selectionOrAnnotation];
    v10 = v9;
    if ("p_highlight:" == a3 && [v9 isRange])
    {
      if (![(THWPEditingController *)self createdFromAnnotationHUD])
      {
        v11 = [(THWPEditingController *)self p_canHighlight];
        goto LABEL_28;
      }

      return -1;
    }

    if ("addNote:" == a3 && [v10 isRange])
    {
      if ([(THWPEditingController *)self createdFromAnnotationHUD])
      {
        return -1;
      }

      v11 = [(THWPEditingController *)self p_canAddNote];
LABEL_28:
      if (v11)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    result = [v7 isRange];
    if (!result)
    {
      return result;
    }

    if ("copy:" == a3)
    {
      if (![TSDCanvasEditor physicalKeyboardIsSender:a4])
      {
        return -1;
      }
    }

    else if ("menuCopy:" != a3)
    {
      if ("p_showGlossary:" == a3)
      {
        v11 = [(THWPEditingController *)self p_canShowGlossaryForSelection:v7];
      }

      else if ("translateSelection:" == a3)
      {
        v11 = [(THWPEditingController *)self p_canTranslateSelection:v7];
      }

      else if ("showDictionary:" == a3)
      {
        v11 = [(THWPEditingController *)self p_canShowDictionaryForSelection:v7];
      }

      else if ("searchSelection:" == a3)
      {
        v11 = [(THWPEditingController *)self p_canSearchSelection:v7];
      }

      else if ("shareSelection:" == a3)
      {
        v11 = [(THWPEditingController *)self p_canShareSelection:v7];
      }

      else
      {
        if ("lookUp:" == a3)
        {
          v13.receiver = self;
          v13.super_class = THWPEditingController;
          return [(THWPEditingController *)&v13 canPerformEditorAction:a3 withSender:a4];
        }

        if ("selectAll:" != a3)
        {
          return 0;
        }

        [-[THWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
        v12 = TSUProtocolCast();
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          return -1;
        }

        v11 = [v12 allowSelectAll];
      }

      goto LABEL_28;
    }

    v11 = [(THWPEditingController *)self p_canCopySelection:v7];
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

- (void)addHighlightWithStyle:(int)a3 forSender:(id)a4
{
  v5 = *&a3;
  v7 = [(THWPEditingController *)self annotationForCurrentSelection];
  v8 = [(THWPEditingController *)self p_annotationUUIDFromSender:a4];
  if ([v8 length] && (!v7 || (objc_msgSend(objc_msgSend(v7, "annotationUuid"), "isEqualToString:", v8) & 1) == 0))
  {
    v7 = [(THWPEditingController *)self annotationForUUID:v8];
  }

  [(THWPEditingController *)self highlightWithStyle:v5 annotation:v7];
}

- (void)removeNote:(id)a3
{
  v4 = [(THWPEditingController *)self p_annotationUUIDFromSender:a3];
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

- (void)removeNoteAndHighlight:(id)a3
{
  v5 = [(THWPEditingController *)self annotationForCurrentSelection];
  v6 = [(THWPEditingController *)self p_annotationUUIDFromSender:a3];
  if ([v6 length] && (!v5 || (objc_msgSend(objc_msgSend(v5, "annotationUuid"), "isEqualToString:", v6) & 1) == 0))
  {
    v5 = [(THWPEditingController *)self annotationForUUID:v6];
  }

  v7 = [(THWPEditingController *)self p_annotationController];
  if (v7 && v5)
  {

    [v7 destroyAnnotation:v5 undoContext:0];
  }
}

- (id)p_annotationUUIDFromSender:(id)a3
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

- (id)annotationForUUID:(id)a3
{
  result = [a3 length];
  if (result)
  {
    v6 = [(THWPEditingController *)self p_annotationController];

    return [v6 annotationWithUuid:a3];
  }

  return result;
}

- (id)annotationForCurrentSelection
{
  v3 = [(THWPEditingController *)self selection];

  return [(THWPEditingController *)self p_annotationForSelection:v3];
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

- (BOOL)canHandleGesture:(id)a3
{
  v5 = [a3 gestureKind];
  [a3 unscaledLocationForICC:{-[THWPEditingController interactiveCanvasController](self, "interactiveCanvasController")}];
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

  if (v5 != TSWPImmediatePress || (v17.receiver = self, v17.super_class = THWPEditingController, ![(THWPEditingController *)&v17 canHandleGesture:a3]))
  {
    if (v5 == TSWPTapAndTouch || v5 == TSWPLongPress && ![(THWPEditingController *)self startingInitialSelectionDrag])
    {
      v15.receiver = self;
      v15.super_class = THWPEditingController;
      return [(THWPEditingController *)&v15 canHandleGesture:a3];
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
    v14 = [v12 storage];
    if (v14 == [(THWPEditingController *)self storage])
    {
      return [-[THWPEditingController selection](self "selection")];
    }

    return 0;
  }

  return result;
}

- (BOOL)handleGesture:(id)a3
{
  v9.receiver = self;
  v9.super_class = THWPEditingController;
  v5 = [(THWPEditingController *)&v9 handleGesture:?];
  v6 = [a3 gestureKind];
  v7 = v6 == TSWPTapAndTouch && [a3 gestureState] == 1;
  [(THWPEditingController *)self setStartingInitialSelectionDrag:v7];
  return v5;
}

- (void)highlightWithStyle:(int)a3 annotation:(id)a4
{
  v5 = *&a3;
  v7 = [(THWPEditingController *)self selection];
  v8 = [(THWPEditingController *)self p_annotationController];
  if (a4 | v7)
  {
    v9 = v8;
    if (v8)
    {
      [v8 setCurrentAnnotationStyle:v5];
      v10 = [v7 isRange];
      if (a4 || !v10)
      {
        if ((a4 || (a4 = -[THWPEditingController p_annotationForSelection:](self, "p_annotationForSelection:", v7)) != 0) && [a4 annotationStyle] != v5)
        {

          [v9 modifyAnnotation:a4 withStyle:v5 undoContext:0];
        }
      }

      else
      {

        [(THWPEditingController *)self p_addHighlightForSelection:v7];
      }
    }
  }
}

- (int)currentAnnotationStyle
{
  v3 = [(THWPEditingController *)self p_annotationController];
  if (!v3)
  {
    return 3;
  }

  v4 = v3;
  v5 = [(THWPEditingController *)self selection];
  v6 = [(THWPEditingController *)self p_annotationForSelection:v5];
  v7 = [v5 range];
  v9 = v8;
  v16.location = [v6 annotationStorageRange];
  v16.length = v10;
  v15.location = v7;
  v15.length = v9;
  v11 = NSUnionRange(v15, v16);
  if (v6 && (![v5 isRange] || objc_msgSend(v5, "range") == v11.location && v12 == v11.length))
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
    v5 = [(THWPEditingController *)self p_annotationController];
    if (v5)
    {

      return [v5 currentAnnotationStyle];
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