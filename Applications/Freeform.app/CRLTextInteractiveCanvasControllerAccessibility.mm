@interface CRLTextInteractiveCanvasControllerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxCurrentSelectionContainsVisibleTrackedChanges;
- (BOOL)crlaxHandleDoubleTapAtPoint:(CGPoint)a3;
- (BOOL)crlaxOpenHyperlinkIfPossible:(id)a3 withRep:(id)a4;
- (UIAccessibilityCustomRotor)_crlaxHeadingsRotor;
- (UIAccessibilityCustomRotor)crlaxHyperlinksRotor;
- (UIAccessibilityCustomRotor)crlaxMisspelledWordsRotor;
- (id)crlaxCustomRotors;
- (id)crlaxFocusTextRangeFromSearchReference:(id)a3;
- (id)crlaxRepForSearchReference:(id)a3;
- (id)crlaxRotorSearchControllerForRotor:(id)a3;
- (id)crlaxSearchReferenceForSelectionPath:(id)a3;
- (id)crlaxTextRepsForStorage:(id)a3;
- (id)crlaxTextSearchReferenceFromRange:(_NSRange)a3;
- (void)crlaxAnnounceSearchReference:(id)a3 forRotor:(id)a4;
- (void)crlaxRegisterLinkedTextElement:(id)a3;
- (void)crlaxUnregisterLinkedTextElement:(id)a3;
- (void)dealloc;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation CRLTextInteractiveCanvasControllerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)crlaxCurrentSelectionContainsVisibleTrackedChanges
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasEditor];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, v4, 0, 0);

  LOBYTE(v4) = [v5 crlaxCurrentSelectionContainsVisibleTrackedChanges];
  return v4;
}

- (id)crlaxTextRepsForStorage:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100294358;
  v16 = sub_100294368;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100294370;
  v9[3] = &unk_10183DE60;
  v11 = &v12;
  v9[4] = self;
  v3 = a3;
  v10 = v3;
  if (__CRLAccessibilityPerformSafeBlock(v9) || (v10, v4 = v13[5], _Block_object_dispose(&v12, 8), v17, LOBYTE(v12) = 0, v5 = v4, __CRLAccessibilityCastAsProtocol(&OBJC_PROTOCOL___NSFastEnumeration, v5, 1, &v12), v6 = objc_claimAutoreleasedReturnValue(), v12 == 1))
  {
    abort();
  }

  v7 = v6;

  return v7;
}

- (void)crlaxRegisterLinkedTextElement:(id)a3
{
  v4 = a3;
  v7 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxRegisteredLinkedTextContainerElements];
  if (!v7)
  {
    v7 = objc_opt_new();
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetRegisteredLinkedTextContainerElements:?];
  }

  v5 = [[CRLAccessibilityBoxedWeakReference alloc] initWithObject:v4];
  v6 = [NSString stringWithFormat:@"%p", v4];

  [v7 setObject:v5 forKeyedSubscript:v6];
}

- (void)crlaxUnregisterLinkedTextElement:(id)a3
{
  v4 = a3;
  v6 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxRegisteredLinkedTextContainerElements];
  v5 = [NSString stringWithFormat:@"%p", v4];

  [v6 setObject:0 forKeyedSubscript:v5];
}

- (BOOL)crlaxOpenHyperlinkIfPossible:(id)a3 withRep:(id)a4
{
  v5 = [a3 url];
  v6 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v7 = [v6 openURL:v5];

  return v7;
}

- (void)dealloc
{
  v3 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxRegisteredLinkedTextContainerElements];
  [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetRegisteredLinkedTextContainerElements:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) reference];
        if ([v9 conformsToProtocol:&OBJC_PROTOCOL___CRLWPRepAccessibilityContainedElement])
        {
          [v9 crlaxSetParentInteractiveCanvasController:0];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = CRLTextInteractiveCanvasControllerAccessibility;
  [(CRLTextInteractiveCanvasControllerAccessibility *)&v10 dealloc];
}

- (void)scrollViewDidScroll:(id)a3
{
  v3.receiver = self;
  v3.super_class = CRLTextInteractiveCanvasControllerAccessibility;
  [(CRLTextInteractiveCanvasControllerAccessibility *)&v3 scrollViewDidScroll:a3];
}

- (id)crlaxCustomRotors
{
  v12.receiver = self;
  v12.super_class = CRLTextInteractiveCanvasControllerAccessibility;
  if ([(CRLTextInteractiveCanvasControllerAccessibility *)&v12 respondsToSelector:"crlaxCustomRotors"]&& (v11.receiver = self, v11.super_class = CRLTextInteractiveCanvasControllerAccessibility, [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v11 crlaxCustomRotors], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [NSMutableArray arrayWithArray:v3];
  }

  else
  {
    v5 = +[NSMutableArray array];
  }

  v6 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxMisspelledWordsRotor];
  [v5 insertObject:v6 atIndex:0];

  v7 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxHyperlinksRotor];
  [v5 insertObject:v7 atIndex:0];

  if ([(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxSupportsHeadingsRotor])
  {
    v8 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxHeadingsRotor];
    [v5 insertObject:v8 atIndex:0];
  }

  v9 = [v5 copy];

  return v9;
}

- (UIAccessibilityCustomRotor)_crlaxHeadingsRotor
{
  v3 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHeadingsRotor];
  if (!v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Document headings" value:0 table:0];

    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003485B8;
    v12[3] = &unk_1018578F8;
    objc_copyWeak(&v14, &location);
    v6 = v5;
    v13 = v6;
    v7 = objc_retainBlock(v12);
    v3 = [[UIAccessibilityCustomRotor alloc] initWithName:v6 itemSearchBlock:v7];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredHeadingsRotor:v3];
    v8 = [CRLHeadingRotorSearchController alloc];
    v9 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v10 = [(CRLRotorSearchController *)v8 initWithInteractiveCanvasController:v9];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredHeadingsRotorSearchController:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (UIAccessibilityCustomRotor)crlaxMisspelledWordsRotor
{
  v3 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredMisspelledWordsRotor];
  if (!v3)
  {
    v3 = [[UIAccessibilityCustomRotor alloc] initWithSystemType:13 itemSearchBlock:&stru_101857938];
    objc_initWeak(&location, v3);
    objc_initWeak(&from, self);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1003487D4;
    v12 = &unk_101857960;
    objc_copyWeak(&v13, &from);
    objc_copyWeak(&v14, &location);
    v4 = objc_retainBlock(&v9);
    [v3 setItemSearchBlock:{v4, v9, v10, v11, v12}];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredMisspelledWordsRotor:v3];
    v5 = [CRLMisspelledWordRotorSearchController alloc];
    v6 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v7 = [(CRLRotorSearchController *)v5 initWithInteractiveCanvasController:v6];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredMisspelledWordsRotorSearchController:v7];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (UIAccessibilityCustomRotor)crlaxHyperlinksRotor
{
  v3 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHyperlinksRotor];
  if (!v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Links" value:0 table:0];

    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100348A08;
    v12[3] = &unk_1018578F8;
    objc_copyWeak(&v14, &location);
    v6 = v5;
    v13 = v6;
    v7 = objc_retainBlock(v12);
    v3 = [[UIAccessibilityCustomRotor alloc] initWithName:v6 itemSearchBlock:v7];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredHyperlinksRotor:v3];
    v8 = [CRLHyperlinkRotorSearchController alloc];
    v9 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v10 = [(CRLRotorSearchController *)v8 initWithInteractiveCanvasController:v9];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredHyperlinksRotorSearchController:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)crlaxSearchReferenceForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = [v4 orderedSelections];
  v6 = [v5 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_class();
    v8 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v9 = [v8 infosForSelectionPath:v4];
    v10 = [v9 crl_onlyObject];
    v11 = sub_100014370(v7, v10);

    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRLTextInteractiveCanvasControllerAccessibility;
    v12 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v14 crlaxSearchReferenceForSelectionPath:v4];
  }

  return v12;
}

- (id)crlaxRotorSearchControllerForRotor:(id)a3
{
  v4 = a3;
  v5 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHeadingsRotor];

  if (v5 == v4)
  {
    v9 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHeadingsRotorSearchController];
  }

  else
  {
    v6 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredMisspelledWordsRotor];

    if (v6 == v4)
    {
      v9 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredMisspelledWordsRotorSearchController];
    }

    else
    {
      v7 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxHyperlinksRotor];
      v8 = [v4 isEqual:v7];

      if (v8)
      {
        v9 = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHyperlinksRotorSearchController];
      }

      else
      {
        v12.receiver = self;
        v12.super_class = CRLTextInteractiveCanvasControllerAccessibility;
        v9 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v12 crlaxRotorSearchControllerForRotor:v4];
      }
    }
  }

  v10 = v9;

  return v10;
}

- (id)crlaxFocusTextRangeFromSearchReference:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxFocusElementFromSearchReference:v5];
    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 0, 0);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 crlaxTextEditor];
      [v10 crlaxSetShouldSuppressSpeechForNextSelectionChangedNotification:1];

      v11 = [v5 range];
      v13 = [v9 crlaxRepRangeWithStorageRange:{v11, v12}];
      v15 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v13, v14];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = CRLTextInteractiveCanvasControllerAccessibility;
      v15 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v19 crlaxFocusTextRangeFromSearchReference:v5];
    }

    v16 = v15;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CRLTextInteractiveCanvasControllerAccessibility;
    v16 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v18 crlaxFocusTextRangeFromSearchReference:v4];
  }

  return v16;
}

- (void)crlaxAnnounceSearchReference:(id)a3 forRotor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTrackedChangesRotor];
  if ([v7 isEqual:v8])
  {
    goto LABEL_4;
  }

  v9 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCommentsRotor];
  if ([v7 isEqual:v9])
  {

LABEL_4:
    goto LABEL_5;
  }

  v25 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxHighlightsRotor];
  v26 = [v7 isEqual:v25];

  if ((v26 & 1) == 0)
  {
    v27.receiver = self;
    v27.super_class = CRLTextInteractiveCanvasControllerAccessibility;
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v27 crlaxAnnounceSearchReference:v6 forRotor:v7];
    goto LABEL_14;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = objc_opt_class();
    v12 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxRepForSearchReference:v10];
    v13 = __CRLAccessibilityCastAsSafeCategory(v11, v12, 0, 0);

    if (v13)
    {
      v20 = __CRLAccessibilityStringForVariables(1, &stru_1018BCA28, v14, v15, v16, v17, v18, v19, 0);
      v21 = [[NSMutableAttributedString alloc] initWithString:v20];
      if ([0 length])
      {
        v22 = [v20 rangeOfString:0];
        [v21 addAttribute:@"UIAccessibilityTokenLowPitch" value:&__kCFBooleanTrue range:{v22, v23}];
      }

      UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v21);
      v24 = [v13 crlaxTextEditor];
      [v24 crlaxSetShouldSuppressSpeechForNextSelectionChangedNotification:1];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CRLTextInteractiveCanvasControllerAccessibility;
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v28 crlaxAnnounceSearchReference:v6 forRotor:v7];
  }

LABEL_14:
}

- (id)crlaxTextSearchReferenceFromRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_opt_class();
  v7 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxFocusedRep];
  v8 = __CRLAccessibilityCastAsSafeCategory(v6, v7, 0, 0);

  v9 = [v8 crlaxStorage];
  v10 = [v9 crlaxTarget];

  v11 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v12 = [v11 selectionModelTranslator];
  v13 = [v12 selectionPathForRange:location onStorage:{length, v10}];

  v14 = [v13 mostSpecificSelectionOfClass:objc_opt_class()];
  v15 = [CRLWPSearchReference searchReferenceWithStorage:v10 selection:v14 selectionPath:v13];

  return v15;
}

- (id)crlaxRepForSearchReference:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100349308;
  v18 = sub_100349318;
  v19 = 0;
  v5 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v6 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v7 = [v4 selectionPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100349320;
  v11[3] = &unk_101857988;
  v13 = &v14;
  v8 = v5;
  v12 = v8;
  [v6 withLayoutForSelectionPath:v7 performBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)crlaxHandleDoubleTapAtPoint:(CGPoint)a3
{
  [(CRLTextInteractiveCanvasControllerAccessibility *)self convertBoundsToUnscaledPoint:a3.x, a3.y];

  return [(CRLTextInteractiveCanvasControllerAccessibility *)self handleDoubleTapAtPoint:1 inputType:?];
}

@end