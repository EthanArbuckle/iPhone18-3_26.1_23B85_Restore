@interface CRLTextInteractiveCanvasControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxCurrentSelectionContainsVisibleTrackedChanges;
- (BOOL)crlaxHandleDoubleTapAtPoint:(CGPoint)point;
- (BOOL)crlaxOpenHyperlinkIfPossible:(id)possible withRep:(id)rep;
- (UIAccessibilityCustomRotor)_crlaxHeadingsRotor;
- (UIAccessibilityCustomRotor)crlaxHyperlinksRotor;
- (UIAccessibilityCustomRotor)crlaxMisspelledWordsRotor;
- (id)crlaxCustomRotors;
- (id)crlaxFocusTextRangeFromSearchReference:(id)reference;
- (id)crlaxRepForSearchReference:(id)reference;
- (id)crlaxRotorSearchControllerForRotor:(id)rotor;
- (id)crlaxSearchReferenceForSelectionPath:(id)path;
- (id)crlaxTextRepsForStorage:(id)storage;
- (id)crlaxTextSearchReferenceFromRange:(_NSRange)range;
- (void)crlaxAnnounceSearchReference:(id)reference forRotor:(id)rotor;
- (void)crlaxRegisterLinkedTextElement:(id)element;
- (void)crlaxUnregisterLinkedTextElement:(id)element;
- (void)dealloc;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation CRLTextInteractiveCanvasControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)crlaxCurrentSelectionContainsVisibleTrackedChanges
{
  v3 = objc_opt_class();
  crlaxCanvasEditor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasEditor];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxCanvasEditor, 0, 0);

  LOBYTE(crlaxCanvasEditor) = [v5 crlaxCurrentSelectionContainsVisibleTrackedChanges];
  return crlaxCanvasEditor;
}

- (id)crlaxTextRepsForStorage:(id)storage
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
  storageCopy = storage;
  v10 = storageCopy;
  if (__CRLAccessibilityPerformSafeBlock(v9) || (v10, v4 = v13[5], _Block_object_dispose(&v12, 8), v17, LOBYTE(v12) = 0, v5 = v4, __CRLAccessibilityCastAsProtocol(&OBJC_PROTOCOL___NSFastEnumeration, v5, 1, &v12), v6 = objc_claimAutoreleasedReturnValue(), v12 == 1))
  {
    abort();
  }

  v7 = v6;

  return v7;
}

- (void)crlaxRegisterLinkedTextElement:(id)element
{
  elementCopy = element;
  _crlaxRegisteredLinkedTextContainerElements = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxRegisteredLinkedTextContainerElements];
  if (!_crlaxRegisteredLinkedTextContainerElements)
  {
    _crlaxRegisteredLinkedTextContainerElements = objc_opt_new();
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetRegisteredLinkedTextContainerElements:?];
  }

  v5 = [[CRLAccessibilityBoxedWeakReference alloc] initWithObject:elementCopy];
  elementCopy = [NSString stringWithFormat:@"%p", elementCopy];

  [_crlaxRegisteredLinkedTextContainerElements setObject:v5 forKeyedSubscript:elementCopy];
}

- (void)crlaxUnregisterLinkedTextElement:(id)element
{
  elementCopy = element;
  _crlaxRegisteredLinkedTextContainerElements = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxRegisteredLinkedTextContainerElements];
  elementCopy = [NSString stringWithFormat:@"%p", elementCopy];

  [_crlaxRegisteredLinkedTextContainerElements setObject:0 forKeyedSubscript:elementCopy];
}

- (BOOL)crlaxOpenHyperlinkIfPossible:(id)possible withRep:(id)rep
{
  v5 = [possible url];
  crlaxTarget = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v7 = [crlaxTarget openURL:v5];

  return v7;
}

- (void)dealloc
{
  _crlaxRegisteredLinkedTextContainerElements = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxRegisteredLinkedTextContainerElements];
  [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetRegisteredLinkedTextContainerElements:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [_crlaxRegisteredLinkedTextContainerElements allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        reference = [*(*(&v11 + 1) + 8 * v8) reference];
        if ([reference conformsToProtocol:&OBJC_PROTOCOL___CRLWPRepAccessibilityContainedElement])
        {
          [reference crlaxSetParentInteractiveCanvasController:0];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = CRLTextInteractiveCanvasControllerAccessibility;
  [(CRLTextInteractiveCanvasControllerAccessibility *)&v10 dealloc];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3.receiver = self;
  v3.super_class = CRLTextInteractiveCanvasControllerAccessibility;
  [(CRLTextInteractiveCanvasControllerAccessibility *)&v3 scrollViewDidScroll:scroll];
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

  crlaxMisspelledWordsRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxMisspelledWordsRotor];
  [v5 insertObject:crlaxMisspelledWordsRotor atIndex:0];

  crlaxHyperlinksRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxHyperlinksRotor];
  [v5 insertObject:crlaxHyperlinksRotor atIndex:0];

  if ([(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxSupportsHeadingsRotor])
  {
    _crlaxHeadingsRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxHeadingsRotor];
    [v5 insertObject:_crlaxHeadingsRotor atIndex:0];
  }

  v9 = [v5 copy];

  return v9;
}

- (UIAccessibilityCustomRotor)_crlaxHeadingsRotor
{
  _crlaxStoredHeadingsRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHeadingsRotor];
  if (!_crlaxStoredHeadingsRotor)
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
    _crlaxStoredHeadingsRotor = [[UIAccessibilityCustomRotor alloc] initWithName:v6 itemSearchBlock:v7];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredHeadingsRotor:_crlaxStoredHeadingsRotor];
    v8 = [CRLHeadingRotorSearchController alloc];
    crlaxTarget = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v10 = [(CRLRotorSearchController *)v8 initWithInteractiveCanvasController:crlaxTarget];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredHeadingsRotorSearchController:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return _crlaxStoredHeadingsRotor;
}

- (UIAccessibilityCustomRotor)crlaxMisspelledWordsRotor
{
  _crlaxStoredMisspelledWordsRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredMisspelledWordsRotor];
  if (!_crlaxStoredMisspelledWordsRotor)
  {
    _crlaxStoredMisspelledWordsRotor = [[UIAccessibilityCustomRotor alloc] initWithSystemType:13 itemSearchBlock:&stru_101857938];
    objc_initWeak(&location, _crlaxStoredMisspelledWordsRotor);
    objc_initWeak(&from, self);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1003487D4;
    v12 = &unk_101857960;
    objc_copyWeak(&v13, &from);
    objc_copyWeak(&v14, &location);
    v4 = objc_retainBlock(&v9);
    [_crlaxStoredMisspelledWordsRotor setItemSearchBlock:{v4, v9, v10, v11, v12}];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredMisspelledWordsRotor:_crlaxStoredMisspelledWordsRotor];
    v5 = [CRLMisspelledWordRotorSearchController alloc];
    crlaxTarget = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v7 = [(CRLRotorSearchController *)v5 initWithInteractiveCanvasController:crlaxTarget];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredMisspelledWordsRotorSearchController:v7];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return _crlaxStoredMisspelledWordsRotor;
}

- (UIAccessibilityCustomRotor)crlaxHyperlinksRotor
{
  _crlaxStoredHyperlinksRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHyperlinksRotor];
  if (!_crlaxStoredHyperlinksRotor)
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
    _crlaxStoredHyperlinksRotor = [[UIAccessibilityCustomRotor alloc] initWithName:v6 itemSearchBlock:v7];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredHyperlinksRotor:_crlaxStoredHyperlinksRotor];
    v8 = [CRLHyperlinkRotorSearchController alloc];
    crlaxTarget = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v10 = [(CRLRotorSearchController *)v8 initWithInteractiveCanvasController:crlaxTarget];
    [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredHyperlinksRotorSearchController:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return _crlaxStoredHyperlinksRotor;
}

- (id)crlaxSearchReferenceForSelectionPath:(id)path
{
  pathCopy = path;
  orderedSelections = [pathCopy orderedSelections];
  lastObject = [orderedSelections lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_class();
    crlaxTarget = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v9 = [crlaxTarget infosForSelectionPath:pathCopy];
    crl_onlyObject = [v9 crl_onlyObject];
    v11 = sub_100014370(v7, crl_onlyObject);

    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRLTextInteractiveCanvasControllerAccessibility;
    v12 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v14 crlaxSearchReferenceForSelectionPath:pathCopy];
  }

  return v12;
}

- (id)crlaxRotorSearchControllerForRotor:(id)rotor
{
  rotorCopy = rotor;
  _crlaxStoredHeadingsRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHeadingsRotor];

  if (_crlaxStoredHeadingsRotor == rotorCopy)
  {
    _crlaxStoredHeadingsRotorSearchController = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHeadingsRotorSearchController];
  }

  else
  {
    _crlaxStoredMisspelledWordsRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredMisspelledWordsRotor];

    if (_crlaxStoredMisspelledWordsRotor == rotorCopy)
    {
      _crlaxStoredHeadingsRotorSearchController = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredMisspelledWordsRotorSearchController];
    }

    else
    {
      crlaxHyperlinksRotor = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxHyperlinksRotor];
      v8 = [rotorCopy isEqual:crlaxHyperlinksRotor];

      if (v8)
      {
        _crlaxStoredHeadingsRotorSearchController = [(CRLTextInteractiveCanvasControllerAccessibility *)self _crlaxStoredHyperlinksRotorSearchController];
      }

      else
      {
        v12.receiver = self;
        v12.super_class = CRLTextInteractiveCanvasControllerAccessibility;
        _crlaxStoredHeadingsRotorSearchController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v12 crlaxRotorSearchControllerForRotor:rotorCopy];
      }
    }
  }

  v10 = _crlaxStoredHeadingsRotorSearchController;

  return v10;
}

- (id)crlaxFocusTextRangeFromSearchReference:(id)reference
{
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = referenceCopy;
    v6 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxFocusElementFromSearchReference:v5];
    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 0, 0);
    v9 = v8;
    if (v8)
    {
      crlaxTextEditor = [v8 crlaxTextEditor];
      [crlaxTextEditor crlaxSetShouldSuppressSpeechForNextSelectionChangedNotification:1];

      range = [v5 range];
      v13 = [v9 crlaxRepRangeWithStorageRange:{range, v12}];
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
    v16 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v18 crlaxFocusTextRangeFromSearchReference:referenceCopy];
  }

  return v16;
}

- (void)crlaxAnnounceSearchReference:(id)reference forRotor:(id)rotor
{
  referenceCopy = reference;
  rotorCopy = rotor;
  crlaxTrackedChangesRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTrackedChangesRotor];
  if ([rotorCopy isEqual:crlaxTrackedChangesRotor])
  {
    goto LABEL_4;
  }

  crlaxCommentsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCommentsRotor];
  if ([rotorCopy isEqual:crlaxCommentsRotor])
  {

LABEL_4:
    goto LABEL_5;
  }

  crlaxHighlightsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxHighlightsRotor];
  v26 = [rotorCopy isEqual:crlaxHighlightsRotor];

  if ((v26 & 1) == 0)
  {
    v27.receiver = self;
    v27.super_class = CRLTextInteractiveCanvasControllerAccessibility;
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v27 crlaxAnnounceSearchReference:referenceCopy forRotor:rotorCopy];
    goto LABEL_14;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = referenceCopy;
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
      crlaxTextEditor = [v13 crlaxTextEditor];
      [crlaxTextEditor crlaxSetShouldSuppressSpeechForNextSelectionChangedNotification:1];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CRLTextInteractiveCanvasControllerAccessibility;
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v28 crlaxAnnounceSearchReference:referenceCopy forRotor:rotorCopy];
  }

LABEL_14:
}

- (id)crlaxTextSearchReferenceFromRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_opt_class();
  crlaxFocusedRep = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxFocusedRep];
  v8 = __CRLAccessibilityCastAsSafeCategory(v6, crlaxFocusedRep, 0, 0);

  crlaxStorage = [v8 crlaxStorage];
  crlaxTarget = [crlaxStorage crlaxTarget];

  crlaxTarget2 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  selectionModelTranslator = [crlaxTarget2 selectionModelTranslator];
  v13 = [selectionModelTranslator selectionPathForRange:location onStorage:{length, crlaxTarget}];

  v14 = [v13 mostSpecificSelectionOfClass:objc_opt_class()];
  v15 = [CRLWPSearchReference searchReferenceWithStorage:crlaxTarget selection:v14 selectionPath:v13];

  return v15;
}

- (id)crlaxRepForSearchReference:(id)reference
{
  referenceCopy = reference;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100349308;
  v18 = sub_100349318;
  v19 = 0;
  crlaxTarget = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  crlaxTarget2 = [(CRLTextInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  selectionPath = [referenceCopy selectionPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100349320;
  v11[3] = &unk_101857988;
  v13 = &v14;
  v8 = crlaxTarget;
  v12 = v8;
  [crlaxTarget2 withLayoutForSelectionPath:selectionPath performBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)crlaxHandleDoubleTapAtPoint:(CGPoint)point
{
  [(CRLTextInteractiveCanvasControllerAccessibility *)self convertBoundsToUnscaledPoint:point.x, point.y];

  return [(CRLTextInteractiveCanvasControllerAccessibility *)self handleDoubleTapAtPoint:1 inputType:?];
}

@end