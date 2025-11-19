@interface CRLTextRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_accessibilityReplaceTextInRange:(_NSRange)a3 withString:(id)a4;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_crlaxHasTextContent;
- (BOOL)_crlaxTextIsEditable;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityEditOperationAction:(id)a3;
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
- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3;
- (CGRect)accessibilityFrameForScrolling;
- (CGRect)crlaxBoundsForStorageRange:(_NSRange)a3;
- (CRLTextEditorAccessibility)crlaxTextEditor;
- (CRLTextInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (CRLWPRep)crlaxRetainedTarget;
- (CRLWPStorageAccessibility)crlaxStorage;
- (NSArray)crlaxAccessibilityLabelCustomAttributes;
- (NSArray)crlaxColumns;
- (NSSet)crlaxSiblings;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)a3;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (_NSRange)_accessibilityRawRangeForUITextRange:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)crlaxClampRangeToStorageRange:(_NSRange)a3;
- (_NSRange)crlaxRepRangeWithStorageRange:(_NSRange)a3;
- (_NSRange)crlaxStorageRangeOfRep;
- (_NSRange)crlaxStorageRangeWithRepRange:(_NSRange)a3;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)_accessibilitySpeakThisStringValue;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3;
- (id)_accessibilityValueForRange:(_NSRange *)a3;
- (id)_crlaxGetDictionaryForLineNumber:(unint64_t)a3 columnNumber:(unint64_t)a4;
- (id)_crlaxLineNumberAndColumnForPosition:(unint64_t)a3;
- (id)_crlaxParentShapeHint;
- (id)_crlaxParentShapeTypeLabel;
- (id)_crlaxProcessStringForObjectReplacements:(id)a3 rangeOffset:(unint64_t)a4;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityTextualContext;
- (id)accessibilityValue;
- (id)automationElements;
- (id)crlaxAttachmentElementForStorageIndex:(unint64_t)a3;
- (id)crlaxAttributedSubstringInStorageWithRange:(_NSRange)a3;
- (id)crlaxBeginEditingRangeInStorage:(_NSRange)a3 chosenTextRepReference:(id *)a4;
- (id)crlaxCollaboratorDescription;
- (id)crlaxCollaboratorDescriptionDirect;
- (id)crlaxColumnForCharIndex:(unint64_t)a3;
- (id)crlaxContentSiblingInDirection:(unint64_t)a3;
- (id)crlaxKnobLabel;
- (id)crlaxLabel;
- (id)crlaxSelectionPathForTextRange:(_NSRange)a3;
- (id)crlaxSortedSiblingsByStorageRange;
- (id)crlaxStringForNumberAttachment:(id)a3;
- (id)crlaxSubstringInStorageWithRange:(_NSRange)a3;
- (id)crlaxSummaryDescription;
- (unint64_t)_accessibilityPositionInDirection:(int64_t)a3 offset:(unint64_t)a4 forPosition:(unint64_t)a5;
- (unint64_t)_crlaxPositionOfLastSelectedLine:(BOOL)a3;
- (unint64_t)_crlaxSpeakThisVisibleStorageOffset;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityInsertText:(id)a3 atPosition:(int64_t)a4;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)_cleanupRotorCache;
- (void)_crlaxActivationShouldBeginEditing:(BOOL *)a3 shouldHandleCanvasSelection:(BOOL *)a4;
- (void)_crlaxCondenseAttributedString:(id)a3;
- (void)_crlaxGetEffectiveLineNumber:(unint64_t *)a3 columnNumber:(unint64_t *)a4 forPoint:(CGPoint)a5;
- (void)_crlaxGetEffectiveLineNumber:(unint64_t *)a3 columnNumber:(unint64_t *)a4 forPosition:(unint64_t)a5;
- (void)_crlaxSetSelectedTextRange:(_NSRange)a3 skipSelectionChangedNotification:(BOOL)a4;
- (void)crlaxLoadAccessibilityInformation;
- (void)crlaxPreventSelectedTextRangeChangesForInterval:(double)a3;
- (void)pulseCaret;
@end

@implementation CRLTextRepAccessibility

- (id)_crlaxProcessStringForObjectReplacements:(id)a3 rangeOffset:(unint64_t)a4
{
  v6 = qword_101A348E0;
  v7 = a3;
  if (v6 != -1)
  {
    sub_10133B2C0();
  }

  v8 = [[NSMutableAttributedString alloc] initWithString:v7 attributes:0];
  v9 = qword_101A348D8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100250D80;
  v14[3] = &unk_10184C658;
  v16 = a4;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  [v7 crl_enumerateRangesOfCharactersInSet:v9 usingBlock:v14];

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
  v3 = [(CRLCanvasRepAccessibility *)&v10 accessibilityCustomActions];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = +[NSMutableArray array];
  }

  v5 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v6 = [v5 crlaxCurrentSelectionContainsVisibleTrackedChanges];

  if (v6)
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
  v2 = [(CRLCanvasRepAccessibility *)&v6 _accessibilityTextOperations];
  v3 = [NSMutableArray arrayWithArray:v2];

  v4 = [v3 copy];

  return v4;
}

- (BOOL)accessibilityEditOperationAction:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Remove smart annotation" value:0 table:0];

  if ([v4 isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLTextRepAccessibility;
    v7 = [(CRLCanvasRepAccessibility *)&v9 accessibilityEditOperationAction:v4];
  }

  return v7;
}

- (BOOL)crlaxNeedsTextEntryTrait
{
  v3 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v4 = [v3 crlaxUnsignedIntValueForKey:@"wpKind"];
  if (v4 == 4 || (v4 & 0xFC) == 0)
  {
    v6 = [(CRLTextRepAccessibility *)self _crlaxTextIsEditable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_crlaxCondenseAttributedString:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
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
      v9 = [v3 attributesAtIndex:v6 effectiveRange:&v16];

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
          [v3 setAttributes:v7 range:{location, length}];
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
      [v3 setAttributes:v7 range:{location, length}];
    }
  }
}

- (id)crlaxSubstringInStorageWithRange:(_NSRange)a3
{
  v3 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:a3.location, a3.length];
  v4 = [v3 string];

  return v4;
}

- (id)crlaxAttributedSubstringInStorageWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v41.location = [v6 crlaxRange];
  v41.length = v7;
  v40.location = location;
  v40.length = length;
  v8 = NSIntersectionRange(v40, v41);
  v9 = [v6 substringWithRange:{v8.location, v8.length}];
  v10 = [v6 stringEquivalentFromRange:{v8.location, v8.length}];
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

- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3
{
  v4 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:a3->location, a3->length];
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

      v13 = [(CRLTextRepAccessibility *)self crlaxTarget];
      v14 = [v13 textIsVertical];

      if (v14)
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

    v22 = [v11 mutableString];
    [v22 replaceOccurrencesOfString:qword_101A348F0 withString:qword_101A348F8 options:0 range:{0, objc_msgSend(v11, "length")}];

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

- (id)_accessibilityValueForRange:(_NSRange *)a3
{
  v4 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:a3->location, a3->length];
  v6 = v5;
  v14.location = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
  v14.length = v7;
  v13.location = v4;
  v13.length = v6;
  v8 = NSIntersectionRange(v13, v14);
  if (v8.length)
  {
    v9 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:v8.location, v8.length];
    v10 = [v9 string];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_crlaxTextIsEditable
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, v4, 0, 0);

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

- (void)_crlaxActivationShouldBeginEditing:(BOOL *)a3 shouldHandleCanvasSelection:(BOOL *)a4
{
  v7 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];

  if (v7)
  {
    v8 = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
    v9 = v8;
    if (v8 && (![v8 crlaxIsSelected] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
    {
      v10 = 0;
      v11 = 1;
    }

    else if ([(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v10 = [(CRLTextRepAccessibility *)self _crlaxTextIsEditable];
      v11 = 0;
    }

    if (a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
    if (a3)
    {
LABEL_12:
      *a3 = v10;
    }
  }

  if (a4)
  {
    *a4 = v11;
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
  v3 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v4 = [v3 crlaxTarget];
  v5 = [v4 layerHost];
  v6 = [v5 asiOSCVC];
  v7 = [v6 isCurrentlyInQuickSelectMode];

  if (v7)
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
    v11 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];

    if (!v11)
    {
      [(CRLTextRepAccessibility *)self _crlaxSetShapeContainedTextRep:v10];
    }
  }

  v12 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  [v12 crlaxScrollCurrentSelectionToVisible];

  v13 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  [(CRLTextRepAccessibility *)self accessibilityActivationPoint];
  v8 = [v13 crlaxHandleDoubleTapAtPoint:?];

  return v8;
}

- (CGPoint)accessibilityActivationPoint
{
  y = CGPointZero.y;
  v4 = [(CRLTextRepAccessibility *)self accessibilityTraits];
  v6 = y;
  x = CGPointZero.x;
  if ((CRLAccessibilityTraitIsEditing & v4) != 0)
  {
    [(CRLTextRepAccessibility *)self crlaxCGRectValueForKey:@"caretRect"];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
    [v16 crlaxScreenFrameFromUnscaledCanvas:{v9, v11, v13, v15}];
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
  v11 = [(CRLTextRepAccessibility *)self accessibilityTraits];
  if ((CRLAccessibilityTraitIsEditing & v11) != 0)
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
  v3 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v4 = [v3 crlaxSelectedTextRange];
  v6 = v5;

  v7 = [(CRLTextRepAccessibility *)self crlaxRepRangeWithStorageRange:v4, v6];
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)_crlaxSetSelectedTextRange:(_NSRange)a3 skipSelectionChangedNotification:(BOOL)a4
{
  v4 = a4;
  v6 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:a3.location, a3.length];
  v8 = v7;
  v9 = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
  v11 = v9;
  if (v8 || v6 < &v9[v10 + 1])
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
    location = &v9[v10];
    if (&v9[v10])
    {
      goto LABEL_12;
    }
  }

  if (v11 == v6)
  {
LABEL_12:
    v16 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
    v19 = v16;
    v17 = location;
    v18 = length;
    goto LABEL_13;
  }

  if (v6 >= v11)
  {
    return;
  }

  v16 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v19 = v16;
  v17 = v11;
  v18 = 0;
LABEL_13:
  [v16 crlaxSetSelectedTextRange:v17 skipSelectionChangedNotification:{v18, v4}];
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (![(CRLTextRepAccessibility *)self crlaxPreventSelectedTextRangeChanges])
  {
    v6 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:location, length];
    v8 = [(CRLTextRepAccessibility *)self crlaxClampRangeToStorageRange:v6, v7];
    v10 = v9;
    v11 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
    [v11 crlaxSetSelectedTextRange:v8 skipSelectionChangedNotification:{v10, 0}];
  }
}

- (unint64_t)_crlaxPositionOfLastSelectedLine:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v6 = [v5 crlaxSelectedTextRange];
  v8 = v6 + v7;

  v9 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v10 = [v9 crlaxStorageRangeOfLineFragmentAtCharIndex:v8];
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

  else if (v3)
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
  v3 = [(CRLCanvasRepAccessibility *)&v24 accessibilityTraits];
  v4 = [(CRLTextRepAccessibility *)self crlaxNeedsTextEntryTrait];
  v5 = CRLAccessibilityTraitTextEntry;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if (-[CRLTextRepAccessibility crlaxIsBeingEdited](self, "crlaxIsBeingEdited") || (-[CRLCanvasRepAccessibility crlaxParentRep](self, "crlaxParentRep"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8) && (-[CRLTextRepAccessibility _crlaxShapeContainedTextRep](self, "_crlaxShapeContainedTextRep"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 crlaxIsBeingEdited], v9, v10))
  {
    v7 = CRLAccessibilityTraitIsEditing | CRLAccessibilityTraitTextOperationsAvailable | v6;
  }

  else
  {
    v7 = v6 & ~CRLAccessibilityTraitIsEditing;
  }

  v11 = objc_opt_class();
  v12 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v13 = __CRLAccessibilityCastAsSafeCategory(v11, v12, 0, 0);

  v14 = CRLAccessibilityTraitTextArea;
  if (v13)
  {
    v14 = 0;
  }

  v15 = v14 | v7;
  v16 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  if (v16 && (v17 = v16, v18 = [(CRLCanvasRepAccessibility *)self crlaxInReadOnlyMode], v17, (v18 & 1) == 0))
  {
    if ((CRLAccessibilityTraitTextEntry & v15) != 0)
    {
      v19 = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
      v20 = v19;
      if (v19 && ([v19 crlaxIsSelected] & 1) == 0)
      {
        v15 |= CRLAccessibilityTraitStaticText;
      }
    }
  }

  else
  {
    v15 &= ~(CRLAccessibilityTraitTextArea | CRLAccessibilityTraitTextEntry);
  }

  v21 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v22 = [v21 accessibilityTraits];

  return v22 | v15;
}

- (id)automationElements
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, v4, 0, 0);

  if (v5)
  {
    v6 = [v5 crlaxKnobAccessibilityElements];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLTextRepAccessibility;
    v6 = [(CRLTextRepAccessibility *)&v9 automationElements];
  }

  v7 = v6;

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
    v4 = [(CRLTextRepAccessibility *)self _crlaxParentShapeHint];
    if (![v4 length])
    {
      v13.receiver = self;
      v13.super_class = CRLTextRepAccessibility;
      v11 = [(CRLCanvasRepAccessibility *)&v13 accessibilityHint];

      v4 = v11;
    }

    v3 = __CRLAccessibilityStringForVariables(1, 0, v5, v6, v7, v8, v9, v10, v4);
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
  v2 = [(CRLTextRepAccessibility *)self accessibilityAttributedValue];
  v3 = [v2 string];

  return v3;
}

- (id)accessibilityAttributedValue
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsTitle]&& ![(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
  {
    v7 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    v8 = [v7 crlaxParentRep];
    v6 = [v8 crlaxTitle];

    if ([v6 length])
    {
      goto LABEL_11;
    }

    v9 = @"Empty title";
    goto LABEL_10;
  }

  if (![(CRLCanvasRepAccessibility *)self crlaxIsCaption]|| [(CRLTextRepAccessibility *)self crlaxIsBeingEdited])
  {
    v3 = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
    v5 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:v3, v4];
    v6 = 0;
    goto LABEL_14;
  }

  v10 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v11 = [v10 crlaxParentRep];
  v6 = [v11 crlaxCaption];

  if (![v6 length])
  {
    v9 = @"Empty caption";
LABEL_10:
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:v9 value:0 table:0];

    v6 = v13;
  }

LABEL_11:
  if (v6)
  {
    v5 = [[NSAttributedString alloc] initWithString:v6];
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
  v4 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, v4, 0, 0);
  v6 = [v5 accessibilityLabel];

  return v6;
}

- (id)_crlaxParentShapeHint
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, v4, 0, 0);

  if (v5)
  {
    v6 = [v5 accessibilityHint];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_crlaxGetDictionaryForLineNumber:(unint64_t)a3 columnNumber:(unint64_t)a4
{
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [NSNumber numberWithInteger:a4];
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, @"lineNumber", v6, @"lineColumn", 0];

  return v7;
}

- (void)_crlaxGetEffectiveLineNumber:(unint64_t *)a3 columnNumber:(unint64_t *)a4 forPosition:(unint64_t)a5
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [(CRLTextRepAccessibility *)self crlaxColumns];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(CRLTextRepAccessibility *)self columnForCharIndex:a5];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100252C54;
  v10 = v15 = &unk_10184C6E8;
  v16 = v10;
  v17 = &v18;
  [v9 enumerateObjectsUsingBlock:&v12];
  v11 = [v10 lineIndexForCharIndex:a5 eol:{1, v12, v13, v14, v15}];

  if (a3)
  {
LABEL_5:
    *a3 = v11;
  }

LABEL_6:
  if (a4)
  {
    *a4 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
}

- (id)_crlaxLineNumberAndColumnForPosition:(unint64_t)a3
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  [(CRLTextRepAccessibility *)self _crlaxGetEffectiveLineNumber:&v7 columnNumber:&v6 forPosition:a3];
  v4 = [(CRLTextRepAccessibility *)self _crlaxGetDictionaryForLineNumber:v7 columnNumber:v6];

  return v4;
}

- (void)_crlaxGetEffectiveLineNumber:(unint64_t *)a3 columnNumber:(unint64_t *)a4 forPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v30 = 0;
  v11 = [v10 crlaxCanvasView];
  v12 = objc_opt_class();
  v13 = __CRLAccessibilityCastAsClass(v12, v11, 1, &v30);
  if (v30 == 1)
  {
    abort();
  }

  v14 = v13;

  v15 = [v14 window];
  v16 = v15;
  if (v14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    [v14 convertPoint:v15 fromView:{x, y}];
    [v10 crlaxConvertBoundsToUnscaledPoint:?];
    [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalPointFromUnscaledCanvas:?];
    v19 = v18;
    v21 = v20;
    v22 = [(CRLTextRepAccessibility *)self crlaxTarget];
    v23 = [v22 layout];
    v24 = [CRLWPColumn charIndexForPointWithPinning:v23 inLayoutTarget:v19, v21];

    [(CRLTextRepAccessibility *)self _crlaxGetEffectiveLineNumber:&v32 columnNumber:&v31 forPosition:v24];
    if (v32)
    {
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = [(CRLTextRepAccessibility *)self crlaxColumnForCharIndex:v24];
        v26 = [v25 crlaxLineCount];
        if (v32 - 1 < v26)
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

  if (a3)
  {
    *a3 = v32;
  }

  if (a4)
  {
    *a4 = v31;
  }
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  [(CRLTextRepAccessibility *)self _crlaxGetEffectiveLineNumber:&v7 columnNumber:&v6 forPoint:a3.x, a3.y];
  v4 = [(CRLTextRepAccessibility *)self _crlaxGetDictionaryForLineNumber:v7 columnNumber:v6];

  return v4;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"lineNumber"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
    v8 = [v4 objectForKey:@"lineColumn"];
    v9 = [v8 integerValue];

    v10 = [(CRLTextRepAccessibility *)self crlaxColumns];
    objc_opt_class();
    v11 = 0;
    v12 = 0x7FFFFFFFLL;
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v9 & 0x8000000000000000) == 0)
    {
      if (v9 >= [v10 count])
      {
        v11 = 0;
        v12 = 0x7FFFFFFFLL;
      }

      else
      {
        LOBYTE(v26[0]) = 0;
        v13 = [v10 objectAtIndexedSubscript:v9];
        v14 = objc_opt_class();
        v15 = __CRLAccessibilityCastAsSafeCategory(v14, v13, 1, v26);
        if (LOBYTE(v26[0]) == 1)
        {
          abort();
        }

        v16 = v15;

        v17 = [v16 crlaxLineCount];
        v11 = 0;
        v12 = 0x7FFFFFFFLL;
        if ((v7 & 0x8000000000000000) == 0 && v7 < v17)
        {
          v18 = [v16 rangeOfLineFragmentAtIndex:v7];
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
                v23 = [v22 string];

                v22 = v23;
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

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)a3
{
  v4 = [(CRLTextRepAccessibility *)self _crlaxLineNumberAndColumnForPosition:[(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:a3, 0]];
  v5 = [(CRLTextRepAccessibility *)self _accessibilityRangeForLineNumberAndColumn:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3
{
  v4 = [(CRLTextRepAccessibility *)self crlaxStorageRangeWithRepRange:a3.location, a3.length];
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
  v15 = [(CRLTextRepAccessibility *)self crlaxColumns];
  v16 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v51 = 0;
  v17 = [v16 crlaxCanvasView];
  v18 = objc_opt_class();
  v19 = __CRLAccessibilityCastAsClass(v18, v17, 1, &v51);
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
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v22)
  {
    v23 = v22;
    v46 = v16;
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

        v31 = [v30 crlaxRange];
        if (v4 >= v31 && v4 < &v31[v32])
        {
          v34 = [(CRLTextRepAccessibility *)self crlaxAttributedSubstringInStorageWithRange:v4, v6];
          v35 = [v34 string];

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v37 = [v35 string];

            v35 = v37;
          }

          v16 = v46;
          if ([v35 isEqualToString:{@"\n", v20, v46, v47}])
          {
            [v30 crlaxColumnRectForRange:{v4, v6}];
          }

          else
          {
            [v30 crlaxGlyphRectForRange:v4 includingLabel:{v6, 0}];
          }

          [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalRectToUnscaledCanvas:?];
          [v16 crlaxConvertUnscaledToBoundsRect:?];
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

    v16 = v46;
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

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4
{
  v16 = a4;
  v6 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v7 = [v6 crlaxSelectedTextRange];

  v8 = v7 - a3;
  v9 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v19.location = [v9 crlaxRange];
  v19.length = v10;
  v18.location = v8;
  v18.length = a3;
  length = NSIntersectionRange(v18, v19).length;

  if (length)
  {
    v12 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v8, a3];
    v13 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
    v14 = [v13 crlaxTarget];
    v15 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:v16];
    [v14 replace:v12 with:v15];
  }
}

- (void)_accessibilityInsertText:(id)a3 atPosition:(int64_t)a4
{
  v14 = a3;
  if (a4 == -1)
  {
    v12 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
    [v12 crlaxInsertText:v14];
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
  v11 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  v12 = [v11 crlaxTarget];
  [v12 convertRect:0 fromView:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  [v21 crlaxConvertBoundsToUnscaledRect:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [(CRLTextRepAccessibility *)self crlaxTarget];
  [v30 convertNaturalRectFromUnscaledCanvas:{v23, v25, v27, v29}];
  v32 = v31;
  v34 = v33;

  v35 = [(CRLTextRepAccessibility *)self crlaxTarget];
  LODWORD(v12) = [v35 textIsVertical];

  if (v12)
  {
    v36 = [(CRLTextRepAccessibility *)self crlaxTarget];
    v37 = [v36 closestColumnForPoint:{v32, v34}];

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

  v45 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v46 = [v45 layout];
  v47 = [CRLWPColumn charIndexForPointWithPinning:v46 inLayoutTarget:v32, v34];

  return v47;
}

- (id)_accessibilitySpeakThisStringValue
{
  v3 = [(CRLTextRepAccessibility *)self _crlaxSpeakThisVisibleStorageOffset];
  [(CRLTextRepAccessibility *)self _crlaxSetLastSpeakThisVisibleStorageOffset:v3];
  v4 = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
  v6 = v4 + v5 - v3;
  if (v4 > v3)
  {
    v7 = v4;
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
      v37.location = v3;
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
    v35.location = v3;
    v35.length = v6;
    v14 = NSStringFromRange(v35);
    v36.location = v7;
    v36.length = v8;
    v15 = NSStringFromRange(v36);
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1289 isFatal:0 description:"Adjusted speak this range is outside of rep's storage range: adjusted: %@; rep: %@", v14, v15];
  }

  v16 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v17 = [v16 crlaxSubstringWithRange:{v3, v6}];

  return v17;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3
{
  range = a3.length;
  location = a3.location;
  v5 = [(CRLTextRepAccessibility *)self _accessibilitySpeakThisString];
  v6 = [v5 length];
  v7 = [(CRLTextRepAccessibility *)self _accessibilitySpeakThisStringValue];
  v8 = v6 - [v7 length];

  v9 = location >= v8;
  v10 = location - v8;
  if (v9)
  {
    v11 = [(CRLTextRepAccessibility *)self _crlaxLastSpeakThisVisibleStorageOffset]+ v10;
    v12 = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
    if (v12 > v11 || v12 + v13 < v11 + range)
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
    v22 = [(CRLTextRepAccessibility *)self crlaxColumns];
    v49 = +[NSMutableArray array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v22;
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
  v2 = self;
  v3 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v4 = [v3 crlaxRange];
  v6 = v5;
  v8.location = [(CRLTextRepAccessibility *)v2 crlaxStorageRangeOfRep];
  v9.location = v4;
  v9.length = v6;
  LOBYTE(v2) = NSIntersectionRange(v8, v9).length != 0;

  return v2;
}

- (void)crlaxPreventSelectedTextRangeChangesForInterval:(double)a3
{
  [(CRLTextRepAccessibility *)self crlaxSetPreventSelectedTextRangeChanges:1];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002542D4;
  v5[3] = &unk_10183AF10;
  objc_copyWeak(&v6, &location);
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v5, a3);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (CGRect)crlaxBoundsForStorageRange:(_NSRange)a3
{
  v5 = [(CRLTextRepAccessibility *)self crlaxRepRangeWithStorageRange:a3.location, a3.length];

  [(CRLTextRepAccessibility *)self _accessibilityBoundsForRange:v5, v4];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)crlaxAttachmentElementForStorageIndex:(unint64_t)a3
{
  v5 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v6 = [v5 crlaxAttachmentOrFootnoteAtCharIndex:a3];

  v7 = [objc_opt_class() crlaxAttachmentElementForAttachment:v6 inTextRep:self];

  return v7;
}

- (id)accessibilityTextualContext
{
  v2 = [(CRLCanvasRepAccessibility *)self accessibilityContainer];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      v4 = [v3 accessibilityTextualContext];

      if (v4)
      {
        break;
      }

      v5 = [v3 accessibilityContainer];

      v3 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v7 = [v3 accessibilityTextualContext];

    v6 = v7 == 0;
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

- (unint64_t)_accessibilityPositionInDirection:(int64_t)a3 offset:(unint64_t)a4 forPosition:(unint64_t)a5
{
  v8 = [[_TtC8Freeform15CRLTextPosition alloc] init:a5];
  v9 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v10 = [v9 crlaxTextInputResponder];
  v11 = [v10 crlaxVoiceControlPositionFromPosition:v8 inDirection:a3 offset:a4];

  v12 = objc_opt_class();
  v13 = sub_100014370(v12, v11);
  v14 = [v13 location];

  return v14;
}

- (_NSRange)_accessibilityRawRangeForUITextRange:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 nsRange];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRLTextRepAccessibility;
    v8 = [(CRLTextRepAccessibility *)&v14 _accessibilityRawRangeForUITextRange:v4];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (BOOL)_accessibilityReplaceTextInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v10 = [v9 crlaxTarget];
  v11 = [v10 editorController];
  v12 = [v11 textInputEditor];
  v13 = sub_100013F00(v8, v12);

  if (v13)
  {
    v14 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:location, length];
    v15 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:v7];
    [v13 replace:v14 with:v15];
  }

  return v13 != 0;
}

- (id)accessibilityDragSourceDescriptors
{
  v3 = [(CRLTextRepAccessibility *)self _accessibilitySelectedTextRange];
  if (!v4 || (-[CRLTextRepAccessibility _accessibilityBoundsForRange:](self, "_accessibilityBoundsForRange:", v3, v4), v6 = v5, v8 = v7, v10 = v9, v12 = v11, -[CRLCanvasRepAccessibility crlaxCanvasView](self, "crlaxCanvasView"), v13 = objc_claimAutoreleasedReturnValue(), [v13 crlaxTarget], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "convertRect:fromView:", 0, v6, v8, v10, v12), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v13, v23 = [UIAccessibilityLocationDescriptor alloc], +[NSBundle mainBundle](NSBundle, "mainBundle"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "localizedStringForKey:value:table:", @"Drag Text", 0, 0), v25 = objc_claimAutoreleasedReturnValue(), v26 = sub_100120414(v16, v18, v20, v22), v28 = v27, -[CRLCanvasRepAccessibility crlaxCanvasView](self, "crlaxCanvasView"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v23, "initWithName:point:inView:", v25, v29, v26, v28), v29, v25, v24, v34 = v30, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v34, 1), v31 = objc_claimAutoreleasedReturnValue(), v30, !v31))
  {
    v33.receiver = self;
    v33.super_class = CRLTextRepAccessibility;
    v31 = [(CRLCanvasRepAccessibility *)&v33 accessibilityDragSourceDescriptors];
  }

  return v31;
}

- (id)accessibilityDropPointDescriptors
{
  v3 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v4 = [v3 selection];
  v5 = [v4 isInsertionPoint];

  if (!v5 || (-[CRLTextRepAccessibility crlaxTarget](self, "crlaxTarget"), v6 = objc_claimAutoreleasedReturnValue(), [v6 caretRect], v8 = v7, v10 = v9, v12 = v11, v14 = v13, v6, v45.origin.x = v8, v45.origin.y = v10, v45.size.width = v12, v45.size.height = v14, CGRectIsNull(v45)) || (v47.origin.x = CGRectZero.origin.x, v47.origin.y = CGRectZero.origin.y, v47.size.width = CGRectZero.size.width, v47.size.height = CGRectZero.size.height, v46.origin.x = v8, v46.origin.y = v10, v46.size.width = v12, v46.size.height = v14, CGRectEqualToRect(v46, v47)) || (-[CRLCanvasRepAccessibility crlaxConvertNaturalRectToUnscaledCanvas:](self, "crlaxConvertNaturalRectToUnscaledCanvas:", v8, v10, v12, v14), v16 = v15, v18 = v17, v20 = v19, v22 = v21, -[CRLTextRepAccessibility crlaxInteractiveCanvasController](self, "crlaxInteractiveCanvasController"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "crlaxConvertUnscaledToBoundsRect:", v16, v18, v20, v22), v25 = v24, v27 = v26, v29 = v28, v31 = v30, v23, v32 = [UIAccessibilityLocationDescriptor alloc], +[NSBundle mainBundle](NSBundle, "mainBundle"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "localizedStringForKey:value:table:", @"Drop Text", 0, 0), v34 = objc_claimAutoreleasedReturnValue(), v35 = sub_100120414(v25, v27, v29, v31), v37 = v36, -[CRLCanvasRepAccessibility crlaxCanvasView](self, "crlaxCanvasView"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v32, "initWithName:point:inView:", v34, v38, v35, v37), v38, v34, v33, v43 = v39, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v43, 1), v40 = objc_claimAutoreleasedReturnValue(), v39, !v40))
  {
    v42.receiver = self;
    v42.super_class = CRLTextRepAccessibility;
    v40 = [(CRLCanvasRepAccessibility *)&v42 accessibilityDropPointDescriptors];
  }

  return v40;
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
    v3 = [(CRLTextRepAccessibility *)self crlaxTarget];
    v4 = [v3 isBeingEdited] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CRLWPRep)crlaxRetainedTarget
{
  v8 = 0;
  v7.receiver = self;
  v7.super_class = CRLTextRepAccessibility;
  v2 = [(CRLCanvasRepAccessibility *)&v7 crlaxRetainedTarget];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (id)crlaxLabel
{
  v3 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v4 = [v3 info];
  v5 = [v4 crlaxValueForKey:@"crlaxString"];

  v6 = [(CRLTextRepAccessibility *)self crlaxCollaboratorDescription];
  v13 = __CRLAccessibilityStringForVariables(1, v5, v7, v8, v9, v10, v11, v12, v6);

  return v13;
}

- (BOOL)crlaxIsBeingEdited
{
  v2 = [(CRLTextRepAccessibility *)self crlaxRetainedTarget];
  v3 = [v2 isBeingEdited];

  return v3;
}

- (BOOL)crlaxIsLockedDirectly
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v4 = [v3 crlaxIsLockedDirectly];

  if (v4)
  {
    return 1;
  }

  v11 = 0;
  v6 = [(CRLCanvasRepAccessibility *)self crlaxInfo];
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClassAndProtocol(v7, &OBJC_PROTOCOL___CRLCanvasLockableElementInfo, v6, 1, &v11);
  if (v11 == 1)
  {
    abort();
  }

  v9 = v8;

  if (v9)
  {
    v5 = [v9 locked];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)crlaxIsDecorativeElement
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  if (v3 || [(CRLCanvasRepAccessibility *)self crlaxIsLocked])
  {
    isKindOfClass = 0;
  }

  else
  {
    v6 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (_NSRange)crlaxStorageRangeOfRep
{
  v2 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v3 = [v2 range];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (CRLWPStorageAccessibility)crlaxStorage
{
  v8 = 0;
  v2 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v3 = [v2 storage];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
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
    v3 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
    v4 = [v3 crlaxTarget];
    v5 = [v4 editorController];
    v6 = [v5 textInputEditor];

    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v11);
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
  v2 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v3 = [v2 isSelectionHighlightSuppressed];

  return v3;
}

- (NSArray)crlaxColumns
{
  v8 = 0;
  v2 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v3 = [v2 columns];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxJumpToNextInferredHeading
{
  v3 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v4 = [v3 crlaxSelectedTextRange];

  v5 = [(CRLTextRepAccessibility *)self crlaxStorage];
  [v5 crlaxNextInferredHeadingRangeFromCharacterIndex:v4 wrap:1];

  return 0;
}

- (BOOL)crlaxJumpToPreviousInferredHeading
{
  v3 = [(CRLTextRepAccessibility *)self crlaxTextEditor];
  v4 = [v3 crlaxSelectedTextRange];

  v5 = [(CRLTextRepAccessibility *)self crlaxStorage];
  [v5 crlaxPreviousInferredHeadingRangeFromCharacterIndex:v4 wrap:1];

  return 0;
}

- (id)crlaxSelectionPathForTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v16 = 0;
  v7 = [v6 crlaxTarget];
  v8 = [v7 selectionModelTranslator];
  v9 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v10 = [v9 crlaxTarget];
  v11 = [v8 selectionPathForRange:location onStorage:{length, v10}];

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
  v2 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v3 = [v2 siblings];

  return v3;
}

- (NSArray)crlaxAccessibilityLabelCustomAttributes
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLTextRepAccessibility *)self crlaxTarget];
  v5 = [v4 textIsVertical];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Vertical text" value:0 table:0];

    [v3 addObject:v7];
  }

  return v3;
}

- (id)crlaxStringForNumberAttachment:(id)a3
{
  v4 = a3;
  v5 = [(CRLTextRepAccessibility *)self crlaxAttachmentNumberProvider];
  if (v5)
  {
    v6 = [v4 stringEquivalentWithNumberProvider:v5];
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
  v2 = [(CRLCanvasRepAccessibility *)&v7 crlaxInteractiveCanvasController];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, v2, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (id)crlaxCollaboratorDescription
{
  v3 = [(CRLTextRepAccessibility *)self crlaxCollaboratorDescriptionDirect];
  if (![v3 length])
  {
    v4 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    v5 = [v4 crlaxCollaboratorDescriptionDirect];

    v3 = v5;
  }

  return v3;
}

- (id)crlaxCollaboratorDescriptionDirect
{
  v13.receiver = self;
  v13.super_class = CRLTextRepAccessibility;
  v3 = [(CRLCanvasRepAccessibility *)&v13 crlaxCollaboratorDescriptionDirect];
  v4 = [(CRLTextRepAccessibility *)self crlaxTarget];
  if ([v4 isShowingCaret])
  {
    v5 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
    v6 = [v5 crlaxInteractiveCanvasController];

    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = [(CRLTextRepAccessibility *)self crlaxTarget];
    v8 = [v7 p_currentCollaboratorPresence];
    v4 = [v8 displayName];

    if ([v4 length])
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"Edited by %@" value:0 table:0];

      v11 = [NSString stringWithFormat:v10, v4];

      v3 = v11;
    }
  }

LABEL_6:

  return v3;
}

- (id)crlaxBeginEditingRangeInStorage:(_NSRange)a3 chosenTextRepReference:(id *)a4
{
  length = a3.length;
  location = a3.location;
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

  v14 = self;
  v15 = objc_opt_class();
  v16 = [(CRLCanvasRepAccessibility *)v14 crlaxParentRep];
  v17 = __CRLAccessibilityCastAsSafeCategory(v15, v16, 0, 0);

  v49 = 0;
  v18 = [(CRLCanvasRepAccessibility *)v14 crlaxInfo];
  v19 = objc_opt_class();
  v20 = __CRLAccessibilityCastAsSafeCategory(v19, v18, 1, &v49);
  if (v49 == 1)
  {
    goto LABEL_20;
  }

  v21 = v20;

  v22 = v14;
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

    v22 = [v23 crlaxContainedRep];
  }

  v44 = v21;
  v45 = v17;
  v24 = a4;
  if (location == 0x7FFFFFFFFFFFFFFFLL && length == 0)
  {
    location = [(CRLTextRepAccessibility *)v14 crlaxStorageRangeOfRep];
    length = 0;
  }

  v26 = [(CRLTextRepAccessibility *)v14 crlaxClampRangeToStorageRange:location, length];
  v28 = v27;
  v29 = [(CRLTextRepAccessibility *)v14 crlaxInteractiveCanvasController];
  v49 = 0;
  v30 = [v29 crlaxTarget];
  v31 = [v30 selectionModelTranslator];
  v32 = [v22 crlaxStorage];
  v33 = [v32 crlaxTarget];
  v34 = [v31 selectionPathForRange:v26 onStorage:{v28, v33}];

  v35 = objc_opt_class();
  v36 = __CRLAccessibilityCastAsSafeCategory(v35, v34, 1, &v49);
  if (v49 == 1)
  {
LABEL_20:
    abort();
  }

  v37 = v36;

  v38 = [v29 crlaxEditorController];
  [v38 crlaxSetSelectionPath:v37];

  if (v24)
  {
    v39 = v22;
    *v24 = v22;
  }

  v40 = [v29 crlaxEditorController];
  v41 = [v40 crlaxTextInputEditor];

  return v41;
}

- (_NSRange)crlaxClampRangeToStorageRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v6.location = [v5 crlaxRange];
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

- (id)crlaxContentSiblingInDirection:(unint64_t)a3
{
  v5 = [(CRLTextRepAccessibility *)self crlaxSortedSiblingsByStorageRange];
  v6 = [v5 indexOfObject:self];
  v7 = v6;
  if (a3 == 1 && v6)
  {
    v8 = -1;
LABEL_4:
    v9 = [v5 objectAtIndex:&v7[v8]];
    goto LABEL_9;
  }

  if (!a3 && v6 < [v5 count] - 1)
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
  v3 = [(CRLTextRepAccessibility *)self crlaxSiblings];
  v4 = [v3 allObjects];
  v5 = [v4 mutableCopy];

  [v5 addObject:self];
  [v5 sortUsingComparator:&stru_10185C420];
  v6 = [v5 copy];

  return v6;
}

- (_NSRange)crlaxRepRangeWithStorageRange:(_NSRange)a3
{
  length = a3.length;
  v4 = [(CRLTextRepAccessibility *)self crlaxRepPositionWithStoragePosition:a3.location];
  v5 = length;
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)crlaxStorageRangeWithRepRange:(_NSRange)a3
{
  length = a3.length;
  v4 = [(CRLTextRepAccessibility *)self crlaxStoragePositionWithRepPosition:a3.location];
  v5 = length;
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)crlaxColumnForCharIndex:(unint64_t)a3
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
  v8[6] = a3;
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
  v3 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v10 = 0;
  v4 = [(CRLTextRepAccessibility *)self crlaxInteractiveCanvasController];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsSafeCategory(v5, v4, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  if (v3 && v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003B3D94;
    v8[3] = &unk_10185C448;
    v9 = v7;
    [v3 crlaxEnumerateSmartFieldsUsingBlock:v8];
  }
}

- (id)crlaxSummaryDescription
{
  v3 = [(CRLTextRepAccessibility *)self crlaxStorage];
  v4 = [v3 crlaxInferredHeadingRanges];

  if ([v4 count])
  {
    v5 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = v4;
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

          v11 = [*(*(&v31 + 1) + 8 * i) rangeValue];
          v13 = v12;
          v38.location = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
          v38.length = v14;
          v37.location = v11;
          v37.length = v13;
          if (NSIntersectionRange(v37, v38).length)
          {
            v15 = [(CRLTextRepAccessibility *)self crlaxStorage];
            v16 = [v15 crlaxSubstringWithRange:{v11, v13}];
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
    v18 = [(CRLTextRepAccessibility *)self crlaxStorageRangeOfRep];
    v20 = [(CRLTextRepAccessibility *)self crlaxSubstringInStorageWithRange:v18, v19];

    v17 = v20;
  }

  if (![v17 length])
  {
    v21 = [(CRLGroupRepAccessibility *)self crlaxChildReps];
    v22 = [v21 count];

    if (v22)
    {
      v23 = objc_opt_new();
      v24 = [(CRLGroupRepAccessibility *)self crlaxChildReps];
      v25 = [v24 sortedArrayUsingComparator:&stru_10185C468];

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