@interface CRLTextRepAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_accessibilityReplaceTextInRange:(_NSRange)range withString:(id)string;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_crlaxHasTextContent;
- (BOOL)_crlaxTextIsEditable;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityEditOperationAction:(id)action;
- (BOOL)crlaxIsBeingEdited;
- (BOOL)crlaxIsDecorativeElement;
- (BOOL)crlaxIsLockedDirectly;
- (BOOL)crlaxIsSelectionHighlightSuppressed;
- (BOOL)crlaxJumpToNextInferredHeading;
- (BOOL)crlaxJumpToPreviousInferredHeading;
- (BOOL)crlaxNeedsEditRotorMenu;
- (BOOL)crlaxNeedsFormatEditOperation;
- (BOOL)crlaxNeedsTextEntryTrait;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)accessibilityFrameForScrolling;
- (CGRect)crlaxBoundsForStorageRange:(_NSRange)range;
- (CRLTextEditorAccessibility)crlaxTextEditor;
- (CRLTextInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (CRLWPRep)crlaxRetainedTarget;
- (CRLWPStorageAccessibility)crlaxStorage;
- (NSArray)crlaxAccessibilityLabelCustomAttributes;
- (NSArray)crlaxColumns;
- (NSSet)crlaxSiblings;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (_NSRange)_accessibilityRawRangeForUITextRange:(id)range;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)crlaxClampRangeToStorageRange:(_NSRange)range;
- (_NSRange)crlaxRepRangeWithStorageRange:(_NSRange)range;
- (_NSRange)crlaxStorageRangeOfRep;
- (_NSRange)crlaxStorageRangeWithRepRange:(_NSRange)range;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)range;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)_accessibilitySpeakThisStringValue;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range;
- (id)_accessibilityValueForRange:(_NSRange *)range;
- (id)_crlaxGetDictionaryForLineNumber:(unint64_t)number columnNumber:(unint64_t)columnNumber;
- (id)_crlaxLineNumberAndColumnForPosition:(unint64_t)position;
- (id)_crlaxParentShapeHint;
- (id)_crlaxParentShapeTypeLabel;
- (id)_crlaxProcessStringForObjectReplacements:(id)replacements rangeOffset:(unint64_t)offset;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityTextualContext;
- (id)accessibilityValue;
- (id)automationElements;
- (id)crlaxAttachmentElementForStorageIndex:(unint64_t)index;
- (id)crlaxAttributedSubstringInStorageWithRange:(_NSRange)range;
- (id)crlaxBeginEditingRangeInStorage:(_NSRange)storage chosenTextRepReference:(id *)reference;
- (id)crlaxCollaboratorDescription;
- (id)crlaxCollaboratorDescriptionDirect;
- (id)crlaxColumnForCharIndex:(unint64_t)index;
- (id)crlaxContentSiblingInDirection:(unint64_t)direction;
- (id)crlaxKnobLabel;
- (id)crlaxLabel;
- (id)crlaxSelectionPathForTextRange:(_NSRange)range;
- (id)crlaxSortedSiblingsByStorageRange;
- (id)crlaxStringForNumberAttachment:(id)attachment;
- (id)crlaxSubstringInStorageWithRange:(_NSRange)range;
- (id)crlaxSummaryDescription;
- (unint64_t)_accessibilityPositionInDirection:(int64_t)direction offset:(unint64_t)offset forPosition:(unint64_t)position;
- (unint64_t)_crlaxPositionOfLastSelectedLine:(BOOL)line;
- (unint64_t)_crlaxSpeakThisVisibleStorageOffset;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityInsertText:(id)text atPosition:(int64_t)position;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)_cleanupRotorCache;
- (void)_crlaxActivationShouldBeginEditing:(BOOL *)editing shouldHandleCanvasSelection:(BOOL *)selection;
- (void)_crlaxCondenseAttributedString:(id)string;
- (void)_crlaxGetEffectiveLineNumber:(unint64_t *)number columnNumber:(unint64_t *)columnNumber forPoint:(CGPoint)point;
- (void)_crlaxGetEffectiveLineNumber:(unint64_t *)number columnNumber:(unint64_t *)columnNumber forPosition:(unint64_t)position;
- (void)_crlaxSetSelectedTextRange:(_NSRange)range skipSelectionChangedNotification:(BOOL)notification;
- (void)crlaxLoadAccessibilityInformation;
- (void)crlaxPreventSelectedTextRangeChangesForInterval:(double)interval;
- (void)pulseCaret;
@end

@implementation CRLTextRepAccessibility

- (id)_crlaxProcessStringForObjectReplacements:(id)replacements rangeOffset:(unint64_t)offset
{
  v6 = qword_101A348E0;
  replacementsCopy = replacements;
  if (v6 != -1)
  {
    sub_10133B2C0();
  }

  v8 = [[NSMutableAttributedString alloc] initWithString:replacementsCopy attributes:0];
  v9 = qword_101A348D8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100250D80;
  v14[3] = &unk_10184C658;
  offsetCopy = offset;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  [replacementsCopy crl_enumerateRangesOfCharactersInSet:v9 usingBlock:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

- (BOOL)crlaxNeedsEditRotorMenu
{
  if ([(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
  {
    return 1;
  }

  return [(CRLCanvasRepAccessibility *)self crlaxIsSelectedIgnoringLocking];
}

- (id)accessibilityCustomActions
{
  v10.receiver = self;
  v10.super_class = CRLTextRepAccessibility;
  accessibilityCustomActions = [(CRLCanvasRepAccessibility *)&v10 accessibilityCustomActions];
  v4 = [accessibilityCustomActions mutableCopy];

  if (!v4)
  {
    v4 = +[NSMutableArray array];
  }

  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCurrentSelectionContainsVisibleTrackedChanges = [crlaxInteractiveCanvasController crlaxCurrentSelectionContainsVisibleTrackedChanges];

  if (crlaxCurrentSelectionContainsVisibleTrackedChanges)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Show change" value:0 table:0];

    [CRLAccessibilityBlockBasedCustomAction addActionToArray:v4 withName:v8 actionBlock:&stru_10184C698];
  }

  return v4;
}

- (id)_accessibilityTextOperations
{
  v6.receiver = self;
  v6.super_class = CRLTextRepAccessibility;
  _accessibilityTextOperations = [(CRLCanvasRepAccessibility *)&v6 _accessibilityTextOperations];
  v3 = [NSMutableArray arrayWithArray:_accessibilityTextOperations];

  v4 = [v3 copy];

  return v4;
}

- (BOOL)accessibilityEditOperationAction:(id)action
{
  actionCopy = action;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Remove smart annotation" value:0 table:0];

  if ([actionCopy isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLTextRepAccessibility;
    v7 = [(CRLCanvasRepAccessibility *)&v9 accessibilityEditOperationAction:actionCopy];
  }

  return v7;
}

- (BOOL)crlaxNeedsTextEntryTrait
{
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  v4 = [crlaxStorage crlaxUnsignedIntValueForKey:@"wpKind"];
  if (v4 == 4 || (v4 & 0xFC) == 0)
  {
    _crlaxTextIsEditable = [(CRLTextRepAccessibility *)self _crlaxTextIsEditable];
  }

  else
  {
    _crlaxTextIsEditable = 0;
  }

  return _crlaxTextIsEditable;
}

- (void)_crlaxCondenseAttributedString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy length];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    location = 0;
    v9 = 0;
    v16.location = 0;
    v16.length = 0;
    length = 1;
    do
    {
      v11 = v9;
      v9 = [stringCopy attributesAtIndex:v6 effectiveRange:&v16];

      if ([v7 isEqual:v9])
      {
        v17.location = location;
        v17.length = length;
        v12 = NSUnionRange(v17, v16);
        location = v12.location;
        length = v12.length;
        v13 = v16.location;
        v14 = v16.length;
      }

      else
      {
        if (v7)
        {
          [stringCopy setAttributes:v7 range:{location, length}];
        }

        v15 = v9;

        v13 = v16.location;
        v14 = v16.length;
        v7 = v15;
        location = v16.location;
        length = v16.length;
      }

      v6 = v14 + v13;
    }

    while (v14 + v13 < v5);
    if (v7)
    {
      [stringCopy setAttributes:v7 range:{location, length}];
    }
  }
}

- (id)crlaxSubstringInStorageWithRange:(_NSRange)range
{
  v3 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:range.location, range.length];
  string = [v3 string];

  return string;
}

- (id)crlaxAttributedSubstringInStorageWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  v41.location = [crlaxStorage crlaxRange];
  v41.length = v7;
  v40.location = location;
  v40.length = length;
  v8 = NSIntersectionRange(v40, v41);
  v9 = [crlaxStorage substringWithRange:{v8.location, v8.length}];
  v10 = [crlaxStorage stringEquivalentFromRange:{v8.location, v8.length}];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = [v10 length];
      if ([v9 length] == v12)
      {
        if (v12)
        {
          v13 = v12 - 1;
          v14 = [v11 substringFromIndex:v13];
          if ([v14 isEqualToString:@"\r"])
          {
            v15 = [v9 substringFromIndex:v13];
            v16 = [v15 isEqualToString:@"\n"];

            if (v16)
            {
              v17 = [v11 stringByReplacingCharactersInRange:v13 withString:{1, @"\n"}];
LABEL_10:
              v18 = v17;

              v9 = v18;
              goto LABEL_11;
            }
          }

          else
          {
          }
        }

        v17 = v11;
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1002515B4;
  v37 = sub_1002515C4;
  v38 = 0;
  if ([v9 length])
  {
    v19 = [(CRLTextRepAccessibility *)self _crlaxProcessStringForObjectReplacements:v9 rangeOffset:v8.location];
    v20 = v34[5];
    v34[5] = v19;
  }

  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_1002515CC;
  v29 = &unk_10184C6C0;
  v31 = &v33;
  v21 = v9;
  v30 = v21;
  v32 = v8;
  [(CRLTextRepAccessibility *)self crlaxEnumerateSpecialTextTokensInRange:v8.location usingBlock:v8.length, &v26];
  v22 = v34[5];
  if (v22)
  {
    [v22 endEditing];
    v23 = v34[5];
LABEL_17:
    v24 = v23;
    goto LABEL_18;
  }

  if ([v21 length])
  {
    v23 = [[NSAttributedString alloc] initWithString:v21];
    goto LABEL_17;
  }

  v24 = 0;
LABEL_18:

  _Block_object_dispose(&v33, 8);

  return v24;
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)range
{
  v4 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:range->location, range->length];
  v6 = v5;
  v30.location = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
  v30.length = v7;
  v29.location = v4;
  v29.length = v6;
  v8 = NSIntersectionRange(v29, v30);
  if (v8.length)
  {
    location = v8.location;
    v10 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:v8.location, v8.length];
    v11 = [v10 mutableCopy];

    [v11 beginEditing];
    v12 = 1;
    do
    {
      if (v12 > [v11 length])
      {
        break;
      }

      crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
      textIsVertical = [crlaxTarget textIsVertical];

      if (textIsVertical)
      {
        v15 = +[NSBundle mainBundle];
        v16 = [v15 localizedStringForKey:@"Vertical text" value:0 table:0];

        v27 = v16;
        v17 = [NSArray arrayWithObjects:&v27 count:1];
        [v11 addAttribute:@"UIAccessibilityTextAttributeCustom" value:v17 range:{v12 - 1, 1}];
      }

      ++location;
      ++v12;
    }

    while (location < v8.location + v8.length);
    if (!qword_101A348F0)
    {
      v26 = 14;
      v25 = -4;
      v18 = [NSString stringWithCharacters:&v26 length:1];
      v19 = qword_101A348F0;
      qword_101A348F0 = v18;

      v20 = [NSString stringWithCharacters:&v25 length:1];
      v21 = qword_101A348F8;
      qword_101A348F8 = v20;
    }

    mutableString = [v11 mutableString];
    [mutableString replaceOccurrencesOfString:qword_101A348F0 withString:qword_101A348F8 options:0 range:{0, objc_msgSend(v11, "length")}];

    [v11 endEditing];
    [(CRLTextRepAccessibility *)self _crlaxCondenseAttributedString:v11];
    v23 = [(CRLTextRepAccessibility *)self crlaxPerformSelectorFromString:@"_accessibilityAddMispellingsToAttributedString:" withObject:v11];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_accessibilityValueForRange:(_NSRange *)range
{
  v4 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:range->location, range->length];
  v6 = v5;
  v14.location = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
  v14.length = v7;
  v13.location = v4;
  v13.length = v6;
  v8 = NSIntersectionRange(v13, v14);
  if (v8.length)
  {
    v9 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:v8.location, v8.length];
    string = [v9 string];
  }

  else
  {
    string = 0;
  }

  return string;
}

- (BOOL)_crlaxTextIsEditable
{
  v3 = objc_opt_class();
  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxParentRep, 0, 0);

  if (v5)
  {
    v6 = [v5 crlaxCanBeginEditingChildRepOnDoubleTap:self];
  }

  else
  {
    v6 = 1;
  }

  v7 = ![(CRLCanvasRepAccessibility *)self crlaxInReadOnlyMode];

  return v7 & v6;
}

- (void)_crlaxActivationShouldBeginEditing:(BOOL *)editing shouldHandleCanvasSelection:(BOOL *)selection
{
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];

  if (crlaxInteractiveCanvasController)
  {
    crlaxRepForSelecting = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
    v9 = crlaxRepForSelecting;
    if (crlaxRepForSelecting && (![crlaxRepForSelecting crlaxIsSelected] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
    {
      _crlaxTextIsEditable = 0;
      v11 = 1;
    }

    else if ([(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
    {
      v11 = 0;
      _crlaxTextIsEditable = 0;
    }

    else
    {
      _crlaxTextIsEditable = [(CRLTextRepAccessibility *)self _crlaxTextIsEditable];
      v11 = 0;
    }

    if (editing)
    {
      goto LABEL_12;
    }
  }

  else
  {
    _crlaxTextIsEditable = 0;
    v11 = 1;
    if (editing)
    {
LABEL_12:
      *editing = _crlaxTextIsEditable;
    }
  }

  if (selection)
  {
    *selection = v11;
  }
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v5 = 0;
  [(CRLTextRepAccessibility *)self _crlaxActivationShouldBeginEditing:&v5 + 1 shouldHandleCanvasSelection:&v5];
  if ((v5 & 0x100) != 0)
  {
    return 1;
  }

  if (v5 != 1)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLTextRepAccessibility;
  return [(CRLCanvasRepAccessibility *)&v4 _accessibilitySupportsActivateAction];
}

- (BOOL)accessibilityActivate
{
  v17 = 0;
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];
  layerHost = [crlaxTarget layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

  if (isCurrentlyInQuickSelectMode)
  {
    return 0;
  }

  [(CRLTextRepAccessibility *)self _crlaxActivationShouldBeginEditing:&v17 + 1 shouldHandleCanvasSelection:&v17];
  if (HIBYTE(v17) != 1)
  {
    if (v17 == 1)
    {
      v15.receiver = self;
      v15.super_class = CRLTextRepAccessibility;
      return [(CRLCanvasRepAccessibility *)&v15 accessibilityActivate];
    }

    return 0;
  }

  v16 = 0;
  v9 = [(CRLTextRepAccessibility *)self crlaxBeginEditingRangeInStorage:0x7FFFFFFFFFFFFFFFLL chosenTextRepReference:0, &v16];
  v10 = v16;
  if (v10 != self)
  {
    crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];

    if (!crlaxParentRep)
    {
      [(CRLTextRepAccessibility *)self _crlaxSetShapeContainedTextRep:v10];
    }
  }

  crlaxInteractiveCanvasController2 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController2 crlaxScrollCurrentSelectionToVisible];

  crlaxInteractiveCanvasController3 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  [(CRLTextRepAccessibility *)self accessibilityActivationPoint];
  v8 = [crlaxInteractiveCanvasController3 crlaxHandleDoubleTapAtPoint:?];

  return v8;
}

- (CGPoint)accessibilityActivationPoint
{
  y = CGPointZero.y;
  accessibilityTraits = [(CRLTextRepAccessibility *)self accessibilityTraits];
  v6 = y;
  x = CGPointZero.x;
  if ((CRLAccessibilityTraitIsEditing & accessibilityTraits) != 0)
  {
    [(CRLTextRepAccessibility *)self crlaxCGRectValueForKey:@"caretRect"];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    crlaxCanvas = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
    [crlaxCanvas crlaxScreenFrameFromUnscaledCanvas:{v9, v11, v13, v15}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [(CRLTextRepAccessibility *)self crlaxCGRectValueForKey:@"_accessibilityVisibleFrame"];
    v38.origin.x = v25;
    v38.origin.y = v26;
    v38.size.width = v27;
    v38.size.height = v28;
    v35.origin.x = v18;
    v35.origin.y = v20;
    v35.size.width = v22;
    v35.size.height = v24;
    v29 = CGRectIntersectsRect(v35, v38);
    v6 = y;
    x = CGPointZero.x;
    if (v29)
    {
      v36.origin.x = v18;
      v36.origin.y = v20;
      v36.size.width = v22;
      v36.size.height = v24;
      x = CGRectGetMidX(v36);
      v37.origin.x = v18;
      v37.origin.y = v20;
      v37.size.width = v22;
      v37.size.height = v24;
      MidY = CGRectGetMidY(v37);
      v6 = MidY;
    }
  }

  if (x == CGPointZero.x && v6 == y)
  {
    v33.receiver = self;
    v33.super_class = CRLTextRepAccessibility;
    [(CRLCanvasRepAccessibility *)&v33 accessibilityActivationPoint:MidY];
    x = v31;
  }

  v32 = x;
  result.y = v6;
  result.x = v32;
  return result;
}

- (CGRect)accessibilityFrameForScrolling
{
  v20.receiver = self;
  v20.super_class = CRLTextRepAccessibility;
  [(CRLTextRepAccessibility *)&v20 accessibilityFrameForScrolling];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  accessibilityTraits = [(CRLTextRepAccessibility *)self accessibilityTraits];
  if ((CRLAccessibilityTraitIsEditing & accessibilityTraits) != 0)
  {
    [(CRLTextRepAccessibility *)self crlaxCGRectValueForKey:@"caretRect"];
    [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalRectToScreenSpace:?];
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  crlaxSelectedTextRange = [crlaxTextEditor crlaxSelectedTextRange];
  v6 = v5;

  v7 = [(CRLTextRepAccessibility *)self crlaxRepRangeWithStorageRange:crlaxSelectedTextRange, v6];
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)_crlaxSetSelectedTextRange:(_NSRange)range skipSelectionChangedNotification:(BOOL)notification
{
  notificationCopy = notification;
  v6 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:range.location, range.length];
  v8 = v7;
  crlaxStorageRangeOfRep = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
  v11 = crlaxStorageRangeOfRep;
  if (v8 || v6 < &crlaxStorageRangeOfRep[v10 + 1])
  {
    if (v8)
    {
      v14.length = v10;
    }

    else
    {
      v14.length = v10 + 1;
    }

    v21.location = v6;
    v21.length = v8;
    v14.location = v11;
    v15 = NSIntersectionRange(v21, v14);
    location = v15.location;
    length = v15.length;
    if (v15.location)
    {
      goto LABEL_12;
    }
  }

  else
  {
    length = 0;
    location = &crlaxStorageRangeOfRep[v10];
    if (&crlaxStorageRangeOfRep[v10])
    {
      goto LABEL_12;
    }
  }

  if (v11 == v6)
  {
LABEL_12:
    crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
    v19 = crlaxTextEditor;
    v17 = location;
    v18 = length;
    goto LABEL_13;
  }

  if (v6 >= v11)
  {
    return;
  }

  crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v19 = crlaxTextEditor;
  v17 = v11;
  v18 = 0;
LABEL_13:
  [crlaxTextEditor crlaxSetSelectedTextRange:v17 skipSelectionChangedNotification:{v18, notificationCopy}];
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (![(CRLTextRepAccessibility *)self crlaxPreventSelectedTextRangeChanges])
  {
    v6 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:location, length];
    v8 = [(CRLTextRepAccessibility *)self crlaxClampRangeToStorageRange:v6, v7];
    v10 = v9;
    crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
    [crlaxTextEditor crlaxSetSelectedTextRange:v8 skipSelectionChangedNotification:{v10, 0}];
  }
}

- (unint64_t)_crlaxPositionOfLastSelectedLine:(BOOL)line
{
  lineCopy = line;
  crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  crlaxSelectedTextRange = [crlaxTextEditor crlaxSelectedTextRange];
  v8 = crlaxSelectedTextRange + v7;

  crlaxTextEditor2 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v10 = [crlaxTextEditor2 crlaxStorageRangeOfLineFragmentAtCharIndex:v8];
  v12 = v11;

  if (v10 == 0x7FFFFFFFFFFFFFFFLL && v12 == 0)
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Line fragment range not found for positionInStorage: %lu", v16, v17, v18, v19, v20, v8))
      {
        abort();
      }
    }

    return -1;
  }

  else if (lineCopy)
  {
    return [(CRLTextRepAccessibility *)self crlaxRepRangeWithStorageRange:v10, v12];
  }

  else
  {

    return [(CRLTextRepAccessibility *)self crlaxRepPositionWithStoragePosition:&v10[v12]];
  }
}

- (unint64_t)accessibilityTraits
{
  v24.receiver = self;
  v24.super_class = CRLTextRepAccessibility;
  accessibilityTraits = [(CRLCanvasRepAccessibility *)&v24 accessibilityTraits];
  crlaxNeedsTextEntryTrait = [(CRLTextRepAccessibility *)self crlaxNeedsTextEntryTrait];
  v5 = CRLAccessibilityTraitTextEntry;
  if (!crlaxNeedsTextEntryTrait)
  {
    v5 = 0;
  }

  v6 = v5 | accessibilityTraits;
  if (-[CRLTextRepAccessibility crlaxIsBeingEdited](self, "crlaxIsBeingEdited") || (-[CRLCanvasRepAccessibility crlaxParentRep](self, "crlaxParentRep"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8) && (-[CRLTextRepAccessibility _crlaxShapeContainedTextRep](self, "_crlaxShapeContainedTextRep"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 crlaxIsBeingEdited], v9, v10))
  {
    v7 = CRLAccessibilityTraitIsEditing | CRLAccessibilityTraitTextOperationsAvailable | v6;
  }

  else
  {
    v7 = v6 & ~CRLAccessibilityTraitIsEditing;
  }

  v11 = objc_opt_class();
  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v13 = __CRLAccessibilityCastAsSafeCategory(v11, crlaxParentRep, 0, 0);

  v14 = CRLAccessibilityTraitTextArea;
  if (v13)
  {
    v14 = 0;
  }

  v15 = v14 | v7;
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  if (crlaxInteractiveCanvasController && (v17 = crlaxInteractiveCanvasController, v18 = [(CRLCanvasRepAccessibility *)self crlaxInReadOnlyMode], v17, (v18 & 1) == 0))
  {
    if ((CRLAccessibilityTraitTextEntry & v15) != 0)
    {
      crlaxRepForSelecting = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
      v20 = crlaxRepForSelecting;
      if (crlaxRepForSelecting && ([crlaxRepForSelecting crlaxIsSelected] & 1) == 0)
      {
        v15 |= CRLAccessibilityTraitStaticText;
      }
    }
  }

  else
  {
    v15 &= ~(CRLAccessibilityTraitTextArea | CRLAccessibilityTraitTextEntry);
  }

  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  accessibilityTraits2 = [crlaxStorage accessibilityTraits];

  return accessibilityTraits2 | v15;
}

- (id)automationElements
{
  v3 = objc_opt_class();
  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxParentRep, 0, 0);

  if (v5)
  {
    crlaxKnobAccessibilityElements = [v5 crlaxKnobAccessibilityElements];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLTextRepAccessibility;
    crlaxKnobAccessibilityElements = [(CRLTextRepAccessibility *)&v9 automationElements];
  }

  v7 = crlaxKnobAccessibilityElements;

  return v7;
}

- (id)accessibilityHint
{
  if ([(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
  {
    v3 = 0;
  }

  else
  {
    _crlaxParentShapeHint = [(CRLTextRepAccessibility *)self _crlaxParentShapeHint];
    if (![_crlaxParentShapeHint length])
    {
      v13.receiver = self;
      v13.super_class = CRLTextRepAccessibility;
      accessibilityHint = [(CRLCanvasRepAccessibility *)&v13 accessibilityHint];

      _crlaxParentShapeHint = accessibilityHint;
    }

    v3 = __CRLAccessibilityStringForVariables(1, 0, v5, v6, v7, v8, v9, v10, _crlaxParentShapeHint);
  }

  return v3;
}

- (id)crlaxKnobLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Text" value:0 table:0];

  return v3;
}

- (id)accessibilityValue
{
  accessibilityAttributedValue = [(CRLTextRepAccessibility *)self accessibilityAttributedValue];
  string = [accessibilityAttributedValue string];

  return string;
}

- (id)accessibilityAttributedValue
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsTitle]&& ![(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
  {
    crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    v7CrlaxParentRep = [crlaxParentRep crlaxParentRep];
    crlaxTitle = [v7CrlaxParentRep crlaxTitle];

    if ([crlaxTitle length])
    {
      goto LABEL_11;
    }

    v9 = @"Empty title";
    goto LABEL_10;
  }

  if (![(CRLCanvasRepAccessibility *)self crlaxIsCaption]|| [(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
  {
    crlaxStorageRangeOfRep = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
    v5 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:crlaxStorageRangeOfRep, v4];
    crlaxTitle = 0;
    goto LABEL_14;
  }

  crlaxParentRep2 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v10CrlaxParentRep = [crlaxParentRep2 crlaxParentRep];
  crlaxTitle = [v10CrlaxParentRep crlaxCaption];

  if (![crlaxTitle length])
  {
    v9 = @"Empty caption";
LABEL_10:
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:v9 value:0 table:0];

    crlaxTitle = v13;
  }

LABEL_11:
  if (crlaxTitle)
  {
    v5 = [[NSAttributedString alloc] initWithString:crlaxTitle];
  }

  else
  {
    v5 = 0;
  }

LABEL_14:

  return v5;
}

- (id)_crlaxParentShapeTypeLabel
{
  v3 = objc_opt_class();
  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxParentRep, 0, 0);
  accessibilityLabel = [v5 accessibilityLabel];

  return accessibilityLabel;
}

- (id)_crlaxParentShapeHint
{
  v3 = objc_opt_class();
  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxParentRep, 0, 0);

  if (v5)
  {
    accessibilityHint = [v5 accessibilityHint];
  }

  else
  {
    accessibilityHint = 0;
  }

  return accessibilityHint;
}

- (id)_crlaxGetDictionaryForLineNumber:(unint64_t)number columnNumber:(unint64_t)columnNumber
{
  v5 = [NSNumber numberWithInteger:number];
  v6 = [NSNumber numberWithInteger:columnNumber];
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, @"lineNumber", v6, @"lineColumn", 0];

  return v7;
}

- (void)_crlaxGetEffectiveLineNumber:(unint64_t *)number columnNumber:(unint64_t *)columnNumber forPosition:(unint64_t)position
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  crlaxColumns = [(CRLTextRepAccessibility *)self crlaxColumns];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (!number)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(CRLTextRepAccessibility *)self columnForCharIndex:position];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100252C54;
  v10 = v15 = &unk_10184C6E8;
  v16 = v10;
  v17 = &v18;
  [crlaxColumns enumerateObjectsUsingBlock:&v12];
  v11 = [v10 lineIndexForCharIndex:position eol:{1, v12, v13, v14, v15}];

  if (number)
  {
LABEL_5:
    *number = v11;
  }

LABEL_6:
  if (columnNumber)
  {
    *columnNumber = v19[3];
  }

  _Block_object_dispose(&v18, 8);
}

- (id)_crlaxLineNumberAndColumnForPosition:(unint64_t)position
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  [(CRLTextRepAccessibility *)self _crlaxGetEffectiveLineNumber:&v7 columnNumber:&v6 forPosition:position];
  v4 = [(CRLTextRepAccessibility *)self _crlaxGetDictionaryForLineNumber:v7 columnNumber:v6];

  return v4;
}

- (void)_crlaxGetEffectiveLineNumber:(unint64_t *)number columnNumber:(unint64_t *)columnNumber forPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v30 = 0;
  crlaxCanvasView = [crlaxInteractiveCanvasController crlaxCanvasView];
  v12 = objc_opt_class();
  v13 = __CRLAccessibilityCastAsClass(v12, crlaxCanvasView, 1, &v30);
  if (v30 == 1)
  {
    abort();
  }

  v14 = v13;

  window = [v14 window];
  v16 = window;
  if (v14)
  {
    v17 = window == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    [v14 convertPoint:window fromView:{x, y}];
    [crlaxInteractiveCanvasController crlaxConvertBoundsToUnscaledPoint:?];
    [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalPointFromUnscaledCanvas:?];
    v19 = v18;
    v21 = v20;
    crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
    layout = [crlaxTarget layout];
    v24 = [CRLWPColumn charIndexForPointWithPinning:layout inLayoutTarget:v19, v21];

    [(CRLTextRepAccessibility *)self _crlaxGetEffectiveLineNumber:&v32 columnNumber:&v31 forPosition:v24];
    if (v32)
    {
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = [(CRLTextRepAccessibility *)self crlaxColumnForCharIndex:v24];
        crlaxLineCount = [v25 crlaxLineCount];
        if (v32 - 1 < crlaxLineCount)
        {
          [v25 boundsOfLineFragmentAtIndex:?];
          if (v27 <= v21 && v21 <= v27 + v28 && v32 >= 2)
          {
            --v32;
          }
        }
      }
    }
  }

  if (number)
  {
    *number = v32;
  }

  if (columnNumber)
  {
    *columnNumber = v31;
  }
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  [(CRLTextRepAccessibility *)self _crlaxGetEffectiveLineNumber:&v7 columnNumber:&v6 forPoint:point.x, point.y];
  v4 = [(CRLTextRepAccessibility *)self _crlaxGetDictionaryForLineNumber:v7 columnNumber:v6];

  return v4;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  columnCopy = column;
  v5 = [columnCopy objectForKey:@"lineNumber"];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
    v8 = [columnCopy objectForKey:@"lineColumn"];
    integerValue2 = [v8 integerValue];

    crlaxColumns = [(CRLTextRepAccessibility *)self crlaxColumns];
    objc_opt_class();
    v11 = 0;
    v12 = 0x7FFFFFFFLL;
    if ((objc_opt_isKindOfClass() & 1) != 0 && (integerValue2 & 0x8000000000000000) == 0)
    {
      if (integerValue2 >= [crlaxColumns count])
      {
        v11 = 0;
        v12 = 0x7FFFFFFFLL;
      }

      else
      {
        LOBYTE(v26[0]) = 0;
        v13 = [crlaxColumns objectAtIndexedSubscript:integerValue2];
        v14 = objc_opt_class();
        v15 = __CRLAccessibilityCastAsSafeCategory(v14, v13, 1, v26);
        if (LOBYTE(v26[0]) == 1)
        {
          abort();
        }

        v16 = v15;

        crlaxLineCount = [v16 crlaxLineCount];
        v11 = 0;
        v12 = 0x7FFFFFFFLL;
        if ((integerValue & 0x8000000000000000) == 0 && integerValue < crlaxLineCount)
        {
          v18 = [v16 rangeOfLineFragmentAtIndex:integerValue];
          if (v19 <= 0x7FFFFFFFFFFFFFFELL)
          {
            v20 = [(CRLTextRepAccessibility *)self crlaxRepRangeWithStorageRange:v18, v19];
            v12 = v20;
            v11 = v21;
            if (v21)
            {
              v26[0] = v20;
              v26[1] = v21;
              v22 = [(CRLTextRepAccessibility *)self _accessibilityValueForRange:v26];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                string = [v22 string];

                v22 = string;
              }

              if ([v22 hasSuffix:@"\n"])
              {
                v11 -= [v22 length] > 1;
              }
            }
          }

          else
          {
            v11 = 0;
            v12 = 0x7FFFFFFFLL;
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
    v12 = 0x7FFFFFFFLL;
  }

  v24 = v12;
  v25 = v11;
  result.length = v25;
  result.location = v24;
  return result;
}

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position
{
  v4 = [(CRLTextRepAccessibility *)self _crlaxLineNumberAndColumnForPosition:[(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:position, 0]];
  v5 = [(CRLTextRepAccessibility *)self _accessibilityRangeForLineNumberAndColumn:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  v4 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:range.location, range.length];
  v6 = v5;
  if (!v5)
  {
    [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
  }

  [(CRLCanvasRepAccessibility *)self accessibilityFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  crlaxColumns = [(CRLTextRepAccessibility *)self crlaxColumns];
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v51 = 0;
  crlaxCanvasView = [crlaxInteractiveCanvasController crlaxCanvasView];
  v18 = objc_opt_class();
  v19 = __CRLAccessibilityCastAsClass(v18, crlaxCanvasView, 1, &v51);
  if (v51 == 1)
  {
LABEL_25:
    abort();
  }

  v20 = v19;

  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v21 = crlaxColumns;
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v22)
  {
    v23 = v22;
    v46 = crlaxInteractiveCanvasController;
    v24 = *v48;
    while (2)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v47 + 1) + 8 * i);
        v51 = 0;
        v27 = v26;
        v28 = objc_opt_class();
        v29 = __CRLAccessibilityCastAsSafeCategory(v28, v27, 1, &v51);
        if (v51 == 1)
        {
          goto LABEL_25;
        }

        v30 = v29;

        crlaxRange = [v30 crlaxRange];
        if (v4 >= crlaxRange && v4 < &crlaxRange[v32])
        {
          v34 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:v4, v6];
          string = [v34 string];

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v35String = [string string];

            string = v35String;
          }

          crlaxInteractiveCanvasController = v46;
          if ([string isEqualToString:{@"\n", v20, v46, v47}])
          {
            [v30 crlaxColumnRectForRange:{v4, v6}];
          }

          else
          {
            [v30 crlaxGlyphRectForRange:v4 includingLabel:{v6, 0}];
          }

          [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalRectToUnscaledCanvas:?];
          [crlaxInteractiveCanvasController crlaxConvertUnscaledToBoundsRect:?];
          [v20 crlaxFrameFromBounds:?];
          v8 = v38;
          v10 = v39;
          v12 = v40;
          v14 = v41;

          goto LABEL_24;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    crlaxInteractiveCanvasController = v46;
  }

LABEL_24:

  v42 = v8;
  v43 = v10;
  v44 = v12;
  v45 = v14;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string
{
  stringCopy = string;
  crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  crlaxSelectedTextRange = [crlaxTextEditor crlaxSelectedTextRange];

  v8 = crlaxSelectedTextRange - cursor;
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  v19.location = [crlaxStorage crlaxRange];
  v19.length = v10;
  v18.location = v8;
  v18.length = cursor;
  length = NSIntersectionRange(v18, v19).length;

  if (length)
  {
    cursor = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v8, cursor];
    crlaxTextEditor2 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
    crlaxTarget = [crlaxTextEditor2 crlaxTarget];
    v15 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:stringCopy];
    [crlaxTarget replace:cursor with:v15];
  }
}

- (void)_accessibilityInsertText:(id)text atPosition:(int64_t)position
{
  textCopy = text;
  if (position == -1)
  {
    crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
    [crlaxTextEditor crlaxInsertText:textCopy];
  }

  else if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Need to handle position > -1", v7, v8, v9, v10, v11, v13))
    {
      abort();
    }
  }
}

- (unint64_t)_crlaxSpeakThisVisibleStorageOffset
{
  [(CRLTextRepAccessibility *)self crlaxCGRectValueForKey:@"_accessibilityVisibleFrame"];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  crlaxCanvasView = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  crlaxTarget = [crlaxCanvasView crlaxTarget];
  [crlaxTarget convertRect:0 fromView:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxConvertBoundsToUnscaledRect:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  crlaxTarget2 = [(CRLTextRepAccessibility *)self crlaxTarget];
  [crlaxTarget2 convertNaturalRectFromUnscaledCanvas:{v23, v25, v27, v29}];
  v32 = v31;
  v34 = v33;

  crlaxTarget3 = [(CRLTextRepAccessibility *)self crlaxTarget];
  LODWORD(crlaxTarget) = [crlaxTarget3 textIsVertical];

  if (crlaxTarget)
  {
    crlaxTarget4 = [(CRLTextRepAccessibility *)self crlaxTarget];
    v37 = [crlaxTarget4 closestColumnForPoint:{v32, v34}];

    if (v37)
    {
      [v37 transformFromWP];
      v39 = v49;
      v38 = v50;
      v41 = v51;
      v40 = v52;
      v43 = v53;
      v42 = v54;
    }

    else
    {
      v42 = 0.0;
      v40 = 0.0;
      v38 = 0.0;
      v43 = 0.0;
      v41 = 0.0;
      v39 = 0.0;
    }

    v44 = v43 + v34 * v41 + v39 * v32;
    v34 = v42 + v34 * v40 + v38 * v32;

    v32 = v44;
  }

  crlaxTarget5 = [(CRLTextRepAccessibility *)self crlaxTarget];
  layout = [crlaxTarget5 layout];
  v47 = [CRLWPColumn charIndexForPointWithPinning:layout inLayoutTarget:v32, v34];

  return v47;
}

- (id)_accessibilitySpeakThisStringValue
{
  _crlaxSpeakThisVisibleStorageOffset = [(CRLTextRepAccessibility *)self _crlaxSpeakThisVisibleStorageOffset];
  [(CRLTextRepAccessibility *)self _crlaxSetLastSpeakThisVisibleStorageOffset:_crlaxSpeakThisVisibleStorageOffset];
  crlaxStorageRangeOfRep = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
  v6 = crlaxStorageRangeOfRep + v5 - _crlaxSpeakThisVisibleStorageOffset;
  if (crlaxStorageRangeOfRep > _crlaxSpeakThisVisibleStorageOffset)
  {
    v7 = crlaxStorageRangeOfRep;
    v8 = v5;
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133B2D4();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      v37.location = _crlaxSpeakThisVisibleStorageOffset;
      v37.length = v6;
      v20 = NSStringFromRange(v37);
      v38.location = v7;
      v38.length = v8;
      v19 = NSStringFromRange(v38);
      *buf = 67110402;
      v23 = v9;
      v24 = 2082;
      v25 = "[CRLTextRepAccessibility(iOS) _accessibilitySpeakThisStringValue]";
      v26 = 2082;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Text/Accessibility/iOS/CRLTextRepAccessibility+iOS.m";
      v28 = 1024;
      v29 = 1289;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v19;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Adjusted speak this range is outside of rep's storage range: adjusted: %@; rep: %@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133B2E8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLTextRepAccessibility(iOS) _accessibilitySpeakThisStringValue]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Text/Accessibility/iOS/CRLTextRepAccessibility+iOS.m"];
    v35.location = _crlaxSpeakThisVisibleStorageOffset;
    v35.length = v6;
    v14 = NSStringFromRange(v35);
    v36.location = v7;
    v36.length = v8;
    v15 = NSStringFromRange(v36);
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1289 isFatal:0 description:"Adjusted speak this range is outside of rep's storage range: adjusted: %@; rep: %@", v14, v15];
  }

  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  v17 = [crlaxStorage crlaxSubstringWithRange:{_crlaxSpeakThisVisibleStorageOffset, v6}];

  return v17;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range
{
  range = range.length;
  location = range.location;
  _accessibilitySpeakThisString = [(CRLTextRepAccessibility *)self _accessibilitySpeakThisString];
  v6 = [_accessibilitySpeakThisString length];
  _accessibilitySpeakThisStringValue = [(CRLTextRepAccessibility *)self _accessibilitySpeakThisStringValue];
  v8 = v6 - [_accessibilitySpeakThisStringValue length];

  v9 = location >= v8;
  v10 = location - v8;
  if (v9)
  {
    v11 = [(CRLTextRepAccessibility *)self _crlaxLastSpeakThisVisibleStorageOffset]+ v10;
    crlaxStorageRangeOfRep = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
    if (crlaxStorageRangeOfRep > v11 || crlaxStorageRangeOfRep + v13 < v11 + range)
    {
      v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133B310();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        v76.location = v11;
        v76.length = range;
        v43 = NSStringFromRange(v76);
        v77.location = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
        v44 = NSStringFromRange(v77);
        *buf = 67110402;
        v60 = v14;
        v61 = 2082;
        v62 = "[CRLTextRepAccessibility(iOS) _accessibilityTextRectsForSpeakThisStringRange:]";
        v63 = 2082;
        v64 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Text/Accessibility/iOS/CRLTextRepAccessibility+iOS.m";
        v65 = 1024;
        v66 = 1317;
        v67 = 2112;
        v68 = v43;
        v69 = 2112;
        v70 = v44;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Adjusted speak this range is outside of rep's storage range: adjusted: %@; rep: %@", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133B324();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLTextRepAccessibility(iOS) _accessibilityTextRectsForSpeakThisStringRange:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Text/Accessibility/iOS/CRLTextRepAccessibility+iOS.m"];
      v72.location = v11;
      v72.length = range;
      v19 = NSStringFromRange(v72);
      v73.location = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
      v20 = NSStringFromRange(v73);
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1317 isFatal:0 description:"Adjusted speak this range is outside of rep's storage range: adjusted: %@; rep: %@", v19, v20];
    }
  }

  else
  {
    range = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && range)
  {
    crlaxColumns = [(CRLTextRepAccessibility *)self crlaxColumns];
    v49 = +[NSMutableArray array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = crlaxColumns;
    v48 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v48)
    {
      v46 = *v55;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
      v52 = CGRectZero.origin.y;
      v50 = CGRectZero.size.height;
      v51 = CGRectZero.size.width;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v55 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v54 + 1) + 8 * i);
          v74.location = [v27 crlaxRange];
          v28 = v11;
          v78.location = v11;
          v78.length = range;
          v29 = NSIntersectionRange(v74, v78);
          if (v29.length)
          {
            v30 = [v27 crlaxLineIndexForCharIndex:v29.location eol:0];
            v31 = [v27 crlaxLineIndexForCharIndex:v29.length + v29.location - 1 eol:0];
            if (v30 <= v31)
            {
              v32 = v31;
              do
              {
                v75.location = [v27 crlaxRangeOfLineFragmentAtIndex:v30];
                [(CRLTextRepAccessibility *)self _accessibilityBoundsForRange:NSIntersectionRange(v75, v29).location - [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep], v75.length];
                v34 = v33;
                v36 = v35;
                v38 = v37;
                v40 = v39;
                v79.origin.x = CGRectNull.origin.x;
                v79.origin.y = y;
                v79.size.width = width;
                v79.size.height = height;
                v81.origin.x = v34;
                v81.origin.y = v36;
                v81.size.width = v38;
                v81.size.height = v40;
                if (!CGRectEqualToRect(v79, v81))
                {
                  v80.origin.y = v52;
                  v80.origin.x = CGRectZero.origin.x;
                  v80.size.height = v50;
                  v80.size.width = v51;
                  v82.origin.x = v34;
                  v82.origin.y = v36;
                  v82.size.width = v38;
                  v82.size.height = v40;
                  if (!CGRectEqualToRect(v80, v82))
                  {
                    v41 = [NSValue valueWithCGRect:v34, v36, v38, v40];
                    [v49 addObject:v41];
                  }
                }

                ++v30;
              }

              while (v30 <= v32);
            }
          }

          v11 = v28;
        }

        v48 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v48);
    }

    v21 = [v49 copy];
  }

  return v21;
}

- (BOOL)_crlaxHasTextContent
{
  selfCopy = self;
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  crlaxRange = [crlaxStorage crlaxRange];
  v6 = v5;
  v8.location = [(CRLTextRepAccessibility *)selfCopy crlaxStorageRangeOfRep];
  v9.location = crlaxRange;
  v9.length = v6;
  LOBYTE(selfCopy) = NSIntersectionRange(v8, v9).length != 0;

  return selfCopy;
}

- (void)crlaxPreventSelectedTextRangeChangesForInterval:(double)interval
{
  [(CRLTextRepAccessibility *)self crlaxSetPreventSelectedTextRangeChanges:1];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002542D4;
  v5[3] = &unk_10183AF10;
  objc_copyWeak(&v6, &location);
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v5, interval);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (CGRect)crlaxBoundsForStorageRange:(_NSRange)range
{
  v5 = [(CRLTextRepAccessibility *)self crlaxRepRangeWithStorageRange:range.location, range.length];

  [(CRLTextRepAccessibility *)self _accessibilityBoundsForRange:v5, v4];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)crlaxAttachmentElementForStorageIndex:(unint64_t)index
{
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  v6 = [crlaxStorage crlaxAttachmentOrFootnoteAtCharIndex:index];

  v7 = [objc_opt_class() crlaxAttachmentElementForAttachment:v6 inTextRep:self];

  return v7;
}

- (id)accessibilityTextualContext
{
  accessibilityContainer = [(CRLCanvasRepAccessibility *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    v3 = accessibilityContainer;
    while (1)
    {
      accessibilityTextualContext = [v3 accessibilityTextualContext];

      if (accessibilityTextualContext)
      {
        break;
      }

      accessibilityContainer2 = [v3 accessibilityContainer];

      v3 = accessibilityContainer2;
      if (!accessibilityContainer2)
      {
        goto LABEL_5;
      }
    }

    accessibilityTextualContext2 = [v3 accessibilityTextualContext];

    v6 = accessibilityTextualContext2 == 0;
  }

  else
  {
LABEL_5:
    v6 = 1;
  }

  if (v6)
  {
    v8 = UIAccessibilityTextualContextWordProcessing;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_accessibilityPositionInDirection:(int64_t)direction offset:(unint64_t)offset forPosition:(unint64_t)position
{
  v8 = [[_TtC8Freeform15CRLTextPosition alloc] init:position];
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTextInputResponder = [crlaxInteractiveCanvasController crlaxTextInputResponder];
  v11 = [crlaxTextInputResponder crlaxVoiceControlPositionFromPosition:v8 inDirection:direction offset:offset];

  v12 = objc_opt_class();
  v13 = sub_100014370(v12, v11);
  location = [v13 location];

  return location;
}

- (_NSRange)_accessibilityRawRangeForUITextRange:(id)range
{
  rangeCopy = range;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, rangeCopy);
  v7 = v6;
  if (v6)
  {
    nsRange = [v6 nsRange];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRLTextRepAccessibility;
    nsRange = [(CRLTextRepAccessibility *)&v14 _accessibilityRawRangeForUITextRange:rangeCopy];
  }

  v10 = nsRange;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (BOOL)_accessibilityReplaceTextInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = objc_opt_class();
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];
  editorController = [crlaxTarget editorController];
  textInputEditor = [editorController textInputEditor];
  v13 = sub_100013F00(v8, textInputEditor);

  if (v13)
  {
    v14 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:location, length];
    v15 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:stringCopy];
    [v13 replace:v14 with:v15];
  }

  return v13 != 0;
}

- (id)accessibilityDragSourceDescriptors
{
  _accessibilitySelectedTextRange = [(CRLTextRepAccessibility *)self _accessibilitySelectedTextRange];
  if (!v4 || (-[CRLTextRepAccessibility _accessibilityBoundsForRange:](self, "_accessibilityBoundsForRange:", _accessibilitySelectedTextRange, v4), v6 = v5, v8 = v7, v10 = v9, v12 = v11, -[CRLCanvasRepAccessibility crlaxCanvasView](self, "crlaxCanvasView"), v13 = objc_claimAutoreleasedReturnValue(), [v13 crlaxTarget], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "convertRect:fromView:", 0, v6, v8, v10, v12), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v13, v23 = [UIAccessibilityLocationDescriptor alloc], +[NSBundle mainBundle](NSBundle, "mainBundle"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "localizedStringForKey:value:table:", @"Drag Text", 0, 0), v25 = objc_claimAutoreleasedReturnValue(), v26 = sub_100120414(v16, v18, v20, v22), v28 = v27, -[CRLCanvasRepAccessibility crlaxCanvasView](self, "crlaxCanvasView"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v23, "initWithName:point:inView:", v25, v29, v26, v28), v29, v25, v24, v34 = v30, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v34, 1), accessibilityDragSourceDescriptors = objc_claimAutoreleasedReturnValue(), v30, !accessibilityDragSourceDescriptors))
  {
    v33.receiver = self;
    v33.super_class = CRLTextRepAccessibility;
    accessibilityDragSourceDescriptors = [(CRLCanvasRepAccessibility *)&v33 accessibilityDragSourceDescriptors];
  }

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityDropPointDescriptors
{
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  selection = [crlaxTarget selection];
  isInsertionPoint = [selection isInsertionPoint];

  if (!isInsertionPoint || (-[CRLTextRepAccessibility crlaxTarget](self, "crlaxTarget"), v6 = objc_claimAutoreleasedReturnValue(), [v6 caretRect], v8 = v7, v10 = v9, v12 = v11, v14 = v13, v6, v45.origin.x = v8, v45.origin.y = v10, v45.size.width = v12, v45.size.height = v14, CGRectIsNull(v45)) || (v47.origin.x = CGRectZero.origin.x, v47.origin.y = CGRectZero.origin.y, v47.size.width = CGRectZero.size.width, v47.size.height = CGRectZero.size.height, v46.origin.x = v8, v46.origin.y = v10, v46.size.width = v12, v46.size.height = v14, CGRectEqualToRect(v46, v47)) || (-[CRLCanvasRepAccessibility crlaxConvertNaturalRectToUnscaledCanvas:](self, "crlaxConvertNaturalRectToUnscaledCanvas:", v8, v10, v12, v14), v16 = v15, v18 = v17, v20 = v19, v22 = v21, -[CRLTextRepAccessibility crlaxInteractiveCanvasController](self, "crlaxInteractiveCanvasController"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "crlaxConvertUnscaledToBoundsRect:", v16, v18, v20, v22), v25 = v24, v27 = v26, v29 = v28, v31 = v30, v23, v32 = [UIAccessibilityLocationDescriptor alloc], +[NSBundle mainBundle](NSBundle, "mainBundle"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "localizedStringForKey:value:table:", @"Drop Text", 0, 0), v34 = objc_claimAutoreleasedReturnValue(), v35 = sub_100120414(v25, v27, v29, v31), v37 = v36, -[CRLCanvasRepAccessibility crlaxCanvasView](self, "crlaxCanvasView"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v32, "initWithName:point:inView:", v34, v38, v35, v37), v38, v34, v33, v43 = v39, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v43, 1), accessibilityDropPointDescriptors = objc_claimAutoreleasedReturnValue(), v39, !accessibilityDropPointDescriptors))
  {
    v42.receiver = self;
    v42.super_class = CRLTextRepAccessibility;
    accessibilityDropPointDescriptors = [(CRLCanvasRepAccessibility *)&v42 accessibilityDropPointDescriptors];
  }

  return accessibilityDropPointDescriptors;
}

- (void)_cleanupRotorCache
{
  if (![(CRLTextRepAccessibility *)self crlaxPreventRotorCacheCleanup])
  {
    v3.receiver = self;
    v3.super_class = CRLTextRepAccessibility;
    [(CRLTextRepAccessibility *)&v3 _cleanupRotorCache];
  }
}

- (BOOL)crlaxNeedsFormatEditOperation
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsSelected]|| [(CRLCanvasRepAccessibility *)self crlaxIsSelectedIgnoringLocking])
  {
    crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
    v4 = [crlaxTarget isBeingEdited] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLWPRep)crlaxRetainedTarget
{
  v8 = 0;
  v7.receiver = self;
  v7.super_class = CRLTextRepAccessibility;
  crlaxRetainedTarget = [(CRLCanvasRepAccessibility *)&v7 crlaxRetainedTarget];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, crlaxRetainedTarget, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (id)crlaxLabel
{
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];
  v5 = [info crlaxValueForKey:@"crlaxString"];

  crlaxCollaboratorDescription = [(CRLTextRepAccessibility *)self crlaxCollaboratorDescription];
  v13 = __CRLAccessibilityStringForVariables(1, v5, v7, v8, v9, v10, v11, v12, crlaxCollaboratorDescription);

  return v13;
}

- (BOOL)crlaxIsBeingEdited
{
  crlaxRetainedTarget = [(CRLTextRepAccessibility *)self crlaxRetainedTarget];
  isBeingEdited = [crlaxRetainedTarget isBeingEdited];

  return isBeingEdited;
}

- (BOOL)crlaxIsLockedDirectly
{
  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  crlaxIsLockedDirectly = [crlaxParentRep crlaxIsLockedDirectly];

  if (crlaxIsLockedDirectly)
  {
    return 1;
  }

  v11 = 0;
  crlaxInfo = [(CRLCanvasRepAccessibility *)self crlaxInfo];
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClassAndProtocol(v7, &OBJC_PROTOCOL___CRLCanvasLockableElementInfo, crlaxInfo, 1, &v11);
  if (v11 == 1)
  {
    abort();
  }

  v9 = v8;

  if (v9)
  {
    locked = [v9 locked];
  }

  else
  {
    locked = 0;
  }

  return locked;
}

- (BOOL)crlaxIsDecorativeElement
{
  crlaxRepForSelecting = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  if (crlaxRepForSelecting || [(CRLCanvasRepAccessibility *)self crlaxIsLocked])
  {
    isKindOfClass = 0;
  }

  else
  {
    crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (_NSRange)crlaxStorageRangeOfRep
{
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  range = [crlaxTarget range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (CRLWPStorageAccessibility)crlaxStorage
{
  v8 = 0;
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  storage = [crlaxTarget storage];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, storage, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLTextEditorAccessibility)crlaxTextEditor
{
  if ([(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
  {
    v11 = 0;
    crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
    crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];
    editorController = [crlaxTarget editorController];
    textInputEditor = [editorController textInputEditor];

    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsSafeCategory(v7, textInputEditor, 1, &v11);
    if (v11 == 1)
    {
      abort();
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)crlaxIsSelectionHighlightSuppressed
{
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  isSelectionHighlightSuppressed = [crlaxTarget isSelectionHighlightSuppressed];

  return isSelectionHighlightSuppressed;
}

- (NSArray)crlaxColumns
{
  v8 = 0;
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  columns = [crlaxTarget columns];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, columns, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxJumpToNextInferredHeading
{
  crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  crlaxSelectedTextRange = [crlaxTextEditor crlaxSelectedTextRange];

  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  [crlaxStorage crlaxNextInferredHeadingRangeFromCharacterIndex:crlaxSelectedTextRange wrap:1];

  return 0;
}

- (BOOL)crlaxJumpToPreviousInferredHeading
{
  crlaxTextEditor = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  crlaxSelectedTextRange = [crlaxTextEditor crlaxSelectedTextRange];

  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  [crlaxStorage crlaxPreviousInferredHeadingRangeFromCharacterIndex:crlaxSelectedTextRange wrap:1];

  return 0;
}

- (id)crlaxSelectionPathForTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v16 = 0;
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];
  selectionModelTranslator = [crlaxTarget selectionModelTranslator];
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  crlaxTarget2 = [crlaxStorage crlaxTarget];
  v11 = [selectionModelTranslator selectionPathForRange:location onStorage:{length, crlaxTarget2}];

  v12 = objc_opt_class();
  v13 = __CRLAccessibilityCastAsSafeCategory(v12, v11, 1, &v16);
  if (v16 == 1)
  {
    abort();
  }

  v14 = v13;

  return v14;
}

- (NSSet)crlaxSiblings
{
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  siblings = [crlaxTarget siblings];

  return siblings;
}

- (NSArray)crlaxAccessibilityLabelCustomAttributes
{
  v3 = +[NSMutableArray array];
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  textIsVertical = [crlaxTarget textIsVertical];

  if (textIsVertical)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Vertical text" value:0 table:0];

    [v3 addObject:v7];
  }

  return v3;
}

- (id)crlaxStringForNumberAttachment:(id)attachment
{
  attachmentCopy = attachment;
  crlaxAttachmentNumberProvider = [(CRLTextRepAccessibility *)self crlaxAttachmentNumberProvider];
  if (crlaxAttachmentNumberProvider)
  {
    v6 = [attachmentCopy stringEquivalentWithNumberProvider:crlaxAttachmentNumberProvider];
  }

  else
  {
    v6 = &stru_1018BCA28;
  }

  return v6;
}

- (CRLTextInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController
{
  v8 = 0;
  v7.receiver = self;
  v7.super_class = CRLTextRepAccessibility;
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)&v7 crlaxInteractiveCanvasController];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxInteractiveCanvasController, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (id)crlaxCollaboratorDescription
{
  crlaxCollaboratorDescriptionDirect = [(CRLTextRepAccessibility *)self crlaxCollaboratorDescriptionDirect];
  if (![crlaxCollaboratorDescriptionDirect length])
  {
    crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    crlaxCollaboratorDescriptionDirect2 = [crlaxParentRep crlaxCollaboratorDescriptionDirect];

    crlaxCollaboratorDescriptionDirect = crlaxCollaboratorDescriptionDirect2;
  }

  return crlaxCollaboratorDescriptionDirect;
}

- (id)crlaxCollaboratorDescriptionDirect
{
  v13.receiver = self;
  v13.super_class = CRLTextRepAccessibility;
  crlaxCollaboratorDescriptionDirect = [(CRLCanvasRepAccessibility *)&v13 crlaxCollaboratorDescriptionDirect];
  crlaxTarget = [(CRLTextRepAccessibility *)self crlaxTarget];
  if ([crlaxTarget isShowingCaret])
  {
    crlaxCanvas = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
    crlaxInteractiveCanvasController = [crlaxCanvas crlaxInteractiveCanvasController];

    if (!crlaxInteractiveCanvasController)
    {
      goto LABEL_6;
    }

    crlaxTarget2 = [(CRLTextRepAccessibility *)self crlaxTarget];
    p_currentCollaboratorPresence = [crlaxTarget2 p_currentCollaboratorPresence];
    crlaxTarget = [p_currentCollaboratorPresence displayName];

    if ([crlaxTarget length])
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"Edited by %@" value:0 table:0];

      v11 = [NSString stringWithFormat:v10, crlaxTarget];

      crlaxCollaboratorDescriptionDirect = v11;
    }
  }

LABEL_6:

  return crlaxCollaboratorDescriptionDirect;
}

- (id)crlaxBeginEditingRangeInStorage:(_NSRange)storage chosenTextRepReference:(id *)reference
{
  length = storage.length;
  location = storage.location;
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if ([(CRLCanvasRepAccessibility *)self crlaxInReadOnlyMode])
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Should not attempt to begin editing in read-only mode", v9, v10, v11, v12, v13, v43))
      {
        goto LABEL_20;
      }
    }
  }

  selfCopy = self;
  v15 = objc_opt_class();
  crlaxParentRep = [(CRLCanvasRepAccessibility *)selfCopy crlaxParentRep];
  v17 = __CRLAccessibilityCastAsSafeCategory(v15, crlaxParentRep, 0, 0);

  v49 = 0;
  crlaxInfo = [(CRLCanvasRepAccessibility *)selfCopy crlaxInfo];
  v19 = objc_opt_class();
  v20 = __CRLAccessibilityCastAsSafeCategory(v19, crlaxInfo, 1, &v49);
  if (v49 == 1)
  {
    goto LABEL_20;
  }

  v21 = v20;

  crlaxContainedRep = selfCopy;
  if (v17)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1003B3724;
    v46[3] = &unk_10183AE28;
    v23 = v17;
    v47 = v23;
    v48 = v21;
    if (__CRLAccessibilityPerformSafeBlock(v46))
    {
      goto LABEL_20;
    }

    crlaxContainedRep = [v23 crlaxContainedRep];
  }

  v44 = v21;
  v45 = v17;
  referenceCopy = reference;
  if (location == 0x7FFFFFFFFFFFFFFFLL && length == 0)
  {
    location = [(CRLTextRepAccessibility *)selfCopy crlaxStorageRangeOfRep];
    length = 0;
  }

  v26 = [(CRLTextRepAccessibility *)selfCopy crlaxClampRangeToStorageRange:location, length];
  v28 = v27;
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)selfCopy crlaxInteractiveCanvasController];
  v49 = 0;
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];
  selectionModelTranslator = [crlaxTarget selectionModelTranslator];
  crlaxStorage = [crlaxContainedRep crlaxStorage];
  crlaxTarget2 = [crlaxStorage crlaxTarget];
  v34 = [selectionModelTranslator selectionPathForRange:v26 onStorage:{v28, crlaxTarget2}];

  v35 = objc_opt_class();
  v36 = __CRLAccessibilityCastAsSafeCategory(v35, v34, 1, &v49);
  if (v49 == 1)
  {
LABEL_20:
    abort();
  }

  v37 = v36;

  crlaxEditorController = [crlaxInteractiveCanvasController crlaxEditorController];
  [crlaxEditorController crlaxSetSelectionPath:v37];

  if (referenceCopy)
  {
    v39 = crlaxContainedRep;
    *referenceCopy = crlaxContainedRep;
  }

  crlaxEditorController2 = [crlaxInteractiveCanvasController crlaxEditorController];
  crlaxTextInputEditor = [crlaxEditorController2 crlaxTextInputEditor];

  return crlaxTextInputEditor;
}

- (_NSRange)crlaxClampRangeToStorageRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  v6.location = [crlaxStorage crlaxRange];
  if (location + length != v6.location + v6.length)
  {
    v11.location = location;
    v11.length = length;
    v7 = NSIntersectionRange(v6, v11);
    location = v7.location;
    length = v7.length;
  }

  v8 = location;
  v9 = length;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)crlaxContentSiblingInDirection:(unint64_t)direction
{
  crlaxSortedSiblingsByStorageRange = [(CRLTextRepAccessibility *)self crlaxSortedSiblingsByStorageRange];
  v6 = [crlaxSortedSiblingsByStorageRange indexOfObject:self];
  v7 = v6;
  if (direction == 1 && v6)
  {
    v8 = -1;
LABEL_4:
    v9 = [crlaxSortedSiblingsByStorageRange objectAtIndex:&v7[v8]];
    goto LABEL_9;
  }

  if (!direction && v6 < [crlaxSortedSiblingsByStorageRange count] - 1)
  {
    v8 = 1;
    goto LABEL_4;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)crlaxSortedSiblingsByStorageRange
{
  crlaxSiblings = [(CRLTextRepAccessibility *)self crlaxSiblings];
  allObjects = [crlaxSiblings allObjects];
  v5 = [allObjects mutableCopy];

  [v5 addObject:self];
  [v5 sortUsingComparator:&stru_10185C420];
  v6 = [v5 copy];

  return v6;
}

- (_NSRange)crlaxRepRangeWithStorageRange:(_NSRange)range
{
  length = range.length;
  v4 = [(CRLTextRepAccessibility *)self crlaxRepPositionWithStoragePosition:range.location];
  v5 = length;
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)crlaxStorageRangeWithRepRange:(_NSRange)range
{
  length = range.length;
  v4 = [(CRLTextRepAccessibility *)self crlaxStoragePositionWithRepPosition:range.location];
  v5 = length;
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)crlaxColumnForCharIndex:(unint64_t)index
{
  v15 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1003B3C0C;
  v13 = sub_1003B3C1C;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003B3C24;
  v8[3] = &unk_10183B670;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = index;
  if (__CRLAccessibilityPerformSafeBlock(v8) || (v3 = v10[5], _Block_object_dispose(&v9, 8), v14, v4 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v15), v5 = objc_claimAutoreleasedReturnValue(), v15 == 1))
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (void)crlaxLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CRLTextRepAccessibility;
  [(CRLTextRepAccessibility *)&v11 crlaxLoadAccessibilityInformation];
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  v10 = 0;
  crlaxInteractiveCanvasController = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsSafeCategory(v5, crlaxInteractiveCanvasController, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  if (crlaxStorage && v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003B3D94;
    v8[3] = &unk_10185C448;
    v9 = v7;
    [crlaxStorage crlaxEnumerateSmartFieldsUsingBlock:v8];
  }
}

- (id)crlaxSummaryDescription
{
  crlaxStorage = [(CRLTextRepAccessibility *)self crlaxStorage];
  crlaxInferredHeadingRanges = [crlaxStorage crlaxInferredHeadingRanges];

  if ([crlaxInferredHeadingRanges count])
  {
    v5 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = crlaxInferredHeadingRanges;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          rangeValue = [*(*(&v31 + 1) + 8 * i) rangeValue];
          v13 = v12;
          v38.location = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
          v38.length = v14;
          v37.location = rangeValue;
          v37.length = v13;
          if (NSIntersectionRange(v37, v38).length)
          {
            crlaxStorage2 = [(CRLTextRepAccessibility *)self crlaxStorage];
            v16 = [crlaxStorage2 crlaxSubstringWithRange:{rangeValue, v13}];
            [v5 addObject:v16];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v17 = [v5 componentsJoinedByString:{@", "}];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  if (![v17 length] && -[CRLTextRepAccessibility crlaxRespondsToSelector:fromExtrasProtocol:](self, "crlaxRespondsToSelector:fromExtrasProtocol:", "crlaxSubstringInStorageWithRange:", &OBJC_PROTOCOL___CRLTextRepAccessibilityExtras))
  {
    crlaxStorageRangeOfRep = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
    v20 = [(CRLTextRepAccessibility *)self crlaxSubstringInStorageWithRange:crlaxStorageRangeOfRep, v19];

    v17 = v20;
  }

  if (![v17 length])
  {
    crlaxChildReps = [(CRLGroupRepAccessibility *)self crlaxChildReps];
    v22 = [crlaxChildReps count];

    if (v22)
    {
      v23 = objc_opt_new();
      crlaxChildReps2 = [(CRLGroupRepAccessibility *)self crlaxChildReps];
      v25 = [crlaxChildReps2 sortedArrayUsingComparator:&stru_10185C468];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1003B41DC;
      v29[3] = &unk_10185C490;
      v30 = v23;
      v26 = v23;
      [v25 crlaxPerformBlock:v29 onElementsOfType:{+[CRLAccessibilitySafeCategory crlaxTargetClass](CRLCanvasRepAccessibility, "crlaxTargetClass")}];
      v27 = [v26 componentsJoinedByString:{@", "}];

      v17 = v27;
    }
  }

  return v17;
}

- (void)pulseCaret
{
  v3.receiver = self;
  v3.super_class = CRLTextRepAccessibility;
  [(CRLTextRepAccessibility *)&v3 pulseCaret];
  if ([(CRLTextRepAccessibility *)self crlaxRespondsToSelector:"crlaxDidPulseCaret" fromExtrasProtocol:&OBJC_PROTOCOL___CRLTextRepAccessibilityExtras])
  {
    [(CRLTextRepAccessibility *)self crlaxDidPulseCaret];
  }
}

@end