@interface CRLCanvasRepAccessibility
+ (CGPoint)crlaxCurrentRepDragOffset;
+ (id)CRLAXJumpTextToFormatOptionsString;
+ (id)CRLAXJumpToFormatOptionsString;
+ (id)CRLAXShowFormatOptionsString;
+ (id)bidirectionalConnectionsString;
+ (id)crlaxBoardItemIDForLayout:(id)a3;
+ (id)crlaxCastFrom:(id)a3;
+ (id)crlaxDisambiguatedConnectionDescriptionsForSet:(id)a3;
+ (id)disambiguatedConnectionDescriptionFormat;
+ (id)inboundConnectionsString;
+ (id)outboundConnectionsString;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilityTextOperationAction:(id)a3;
- (BOOL)_crlaxCanBeSelectedWithSelectableRepReference:(id *)a3;
- (BOOL)_crlaxKeyCorrespondsToPropertyRequiringAccessToCanvas:(id)a3;
- (BOOL)_crlaxReaderModePerformCopy;
- (BOOL)accessibilityActivate;
- (BOOL)crlaxBezierPathContainsUnscaledCanvasPoint:(CGPoint)a3;
- (BOOL)crlaxContainsCaption;
- (BOOL)crlaxContainsTitle;
- (BOOL)crlaxFullscreenPreviewFile;
- (BOOL)crlaxHasAvailableRepsForConnecting;
- (BOOL)crlaxInReadOnlyMode;
- (BOOL)crlaxIsContainedTextRep;
- (BOOL)crlaxIsDraggable;
- (BOOL)crlaxIsInDrawingMode;
- (BOOL)crlaxIsInGroup;
- (BOOL)crlaxIsLocked;
- (BOOL)crlaxIsLockedDirectly;
- (BOOL)crlaxIsSelectable;
- (BOOL)crlaxIsSelected;
- (BOOL)crlaxIsSelectedIgnoringLocking;
- (BOOL)crlaxMayRotate;
- (BOOL)crlaxNeedsFormatEditOperation;
- (BOOL)crlaxOpenURL;
- (BOOL)crlaxSelect;
- (BOOL)crlaxShouldCreateKnobs;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGAffineTransform)crlaxTransformToConvertNaturalFromLayerRelative;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)crlaxCenterInUnscaledCanvas;
- (CGPoint)crlaxConvertNaturalPointFromUnscaledCanvas:(CGPoint)a3;
- (CGPoint)crlaxConvertNaturalPointToScreenSpace:(CGPoint)a3;
- (CGPoint)crlaxConvertNaturalPointToUnscaledCanvas:(CGPoint)a3;
- (CGRect)_crlaxFrameByKnobPositions;
- (CGRect)crlaxConvertLayerRelativeRectToNaturalRect:(CGRect)a3;
- (CGRect)crlaxConvertNaturalRectFromUnscaledCanvas:(CGRect)a3;
- (CGRect)crlaxConvertNaturalRectToScreenSpace:(CGRect)a3;
- (CGRect)crlaxConvertNaturalRectToUnscaledCanvas:(CGRect)a3;
- (CGRect)crlaxFrameInScreenSpace;
- (CGRect)crlaxFrameInUnscaledCanvas;
- (CGRect)crlaxLayerFrameInScaledCanvas;
- (CGRect)crlaxNaturalBounds;
- (CRLCanvasAccessibility)crlaxCanvas;
- (CRLCanvasElementInfo)crlaxInfo;
- (CRLCanvasInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (CRLCanvasLayoutAccessibility)crlaxLayout;
- (CRLCanvasRep)crlaxRetainedTarget;
- (CRLCanvasRepAccessibility)crlaxParentRep;
- (CRLCanvasRepAccessibility)crlaxRepForSelecting;
- (CRLCanvasViewAccessibility)crlaxCanvasView;
- (CRLRepContainerAccessibilityElement)crlaxAccessibilityElement;
- (CRLiOSCanvasViewControllerAccessibility)crlaxCanvasViewController;
- (NSArray)crlaxKnobAccessibilityElements;
- (NSArray)preferredFocusEnvironments;
- (NSSet)crlaxBidirectionallyConnectedLayouts;
- (NSSet)crlaxConnectedConnectionLines;
- (NSSet)crlaxConnectedLayouts;
- (NSSet)crlaxInboundConnectedLayouts;
- (NSSet)crlaxOutboundConnectedLayouts;
- (NSSet)crlaxStrictlyInboundConnectedLayouts;
- (NSSet)crlaxStrictlyOutboundConnectedLayouts;
- (NSString)crlaxCaption;
- (NSString)crlaxCaptionLabel;
- (NSString)crlaxCollaboratorDescriptionDirect;
- (NSString)crlaxDefaultDescriptionForConnections;
- (NSString)crlaxGroupAndLockStatusString;
- (NSString)crlaxHeightDescription;
- (NSString)crlaxItemTypeDescription;
- (NSString)crlaxLockedHint;
- (NSString)crlaxLockedLabel;
- (NSString)crlaxRotationDescription;
- (NSString)crlaxSummaryDescription;
- (NSString)crlaxTitle;
- (NSString)crlaxTitleLabel;
- (NSString)crlaxWidthDescription;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIFocusItemContainer)focusItemContainer;
- (id)_accessibilityParentView;
- (id)_accessibilityTextOperations;
- (id)_adjustActionNamesForSet:(id)a3;
- (id)_crlaxAvailableRepsForConnecting;
- (id)_crlaxAvailableRepsForConnectingSorted;
- (id)_crlaxBidirectionallyConnectedLayoutsViaMultipleUnidirectionalConnectionLines;
- (id)_crlaxBidirectionallyConnectedLayoutsViaSingleBidirectionalConnectionLines;
- (id)_crlaxConnectionDescriptionTokenFromString:(id)a3;
- (id)_crlaxConnectionLinesConnectingToLayout:(id)a3 inDirection:(int)a4;
- (id)_crlaxDrawableInfo;
- (id)_crlaxDrawableInfoAccessibility;
- (id)_crlaxLayoutsConnectedByStrictlyInboundConnectionLines;
- (id)_crlaxLayoutsConnectedByStrictlyOutboundConnectionLines;
- (id)_crlaxPrimaryTextEditor;
- (id)_crlaxRepForConnectionLineMapping;
- (id)_makeNavigateToConnectedElementCustomActionsFor:(id)a3 inCategory:(id)a4 directionType:(int)a5;
- (id)accessibilityContainer;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)crlaxCompleteConnectionsCustomContent;
- (id)crlaxDescriptionOfSingleConnectionLineConnectingToLayout:(id)a3 inDirection:(int)a4;
- (id)crlaxKnobElementForTag:(unint64_t)a3 index:(unint64_t)a4 identifier:(id)a5;
- (id)crlaxKnobForTag:(unint64_t)a3 index:(unint64_t)a4 identifier:(id)a5;
- (id)crlaxLayoutDescription;
- (id)crlaxMostDirectGroupAccessibilityDescription;
- (id)crlaxNewKnobElementForKnob:(id)a3 withIdentifier:(id)a4;
- (id)crlaxReaderModeCopyOperationTitle;
- (id)crlaxReaderModeEditOperationTitle;
- (id)crlaxReaderModeEditOperations;
- (id)crlaxRemoveExtensionFromFile:(id)a3 inString:(id)a4;
- (id)crlaxValueForKey:(id)a3;
- (id)hitRep:(CGPoint)a3;
- (unint64_t)accessibilityTraits;
- (unint64_t)clraxNumberOfBidirectionalSingleConnectionsForLayout:(id)a3;
- (unint64_t)clraxNumberOfStrictlyInboundConnectionsFromLayout:(id)a3;
- (unint64_t)clraxNumberOfStrictlyOutboundConnectionsToLayout:(id)a3;
- (void)_crlaxGoToFormatInspector;
- (void)_crlaxInvalidateKnobAccessibilityElements:(id)a3;
- (void)_crlaxRotateClockwiseByDegrees:(double)a3;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)crlaxAddToSelection;
- (void)crlaxClearKnobAccessibilityElementCache;
- (void)crlaxDeselectAll;
- (void)crlaxDeselectRep;
- (void)crlaxLoadChildrenIntoCollection:(id)a3;
- (void)crlaxPerformExtraCleanupTasksPriorToRemovalFromCanvas;
- (void)dealloc;
- (void)dynamicDragDidBegin;
- (void)dynamicallyResizingWithTracker:(id)a3;
- (void)i_willBeRemoved;
- (void)invalidateKnobs;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation CRLCanvasRepAccessibility

+ (CGPoint)crlaxCurrentRepDragOffset
{
  v2 = *&qword_101A34898;
  v3 = *&qword_101A348A0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CRLRepContainerAccessibilityElement)crlaxAccessibilityElement
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];

  if (!v3)
  {
    v4 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
    v5 = [v4 crlaxCanvasContainerView];

    if (v5)
    {
      v6 = [[CRLRepContainerAccessibilityElement alloc] initWithRep:self accessibilityParent:v5];
      [(CRLCanvasRepAccessibility *)self _crlaxSetRepContainerElementCache:v6];
    }
  }

  return [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];
}

- (CRLiOSCanvasViewControllerAccessibility)crlaxCanvasViewController
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxCanvasViewController];

  return v3;
}

- (BOOL)crlaxIsInDrawingMode
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 interactiveCanvasController];
  v4 = [v3 freehandDrawingToolkit];
  v5 = [v4 isInDrawingMode];

  return v5;
}

- (BOOL)crlaxNeedsFormatEditOperation
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsSelected]|| (v3 = [(CRLCanvasRepAccessibility *)self crlaxIsSelectedIgnoringLocking]))
  {
    LOBYTE(v3) = ![(CRLCanvasRepAccessibility *)self crlaxIsInDrawingMode];
  }

  return v3;
}

- (id)crlaxLayoutDescription
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v4 = [v3 crlaxTarget];
  [v4 alignmentFrameInRoot];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v14 = [v13 crlaxFirstSelectedRep];
  v15 = [v14 crlaxLayout];
  v16 = [v15 crlaxTarget];
  [v16 alignmentFrameInRoot];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  return [CRLNearbyElementRotorSearchController nearbyDescriptionForLayoutFrame:v6 andSelectedLayoutFrame:v8, v10, v12, v18, v20, v22, v24];
}

- (id)accessibilityCustomRotors
{
  if ([(CRLCanvasRepAccessibility *)self crlaxSupportsPublicCustomRotors])
  {
    v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v4 = [v3 crlaxCustomRotors];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)crlaxReaderModeCopyOperationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Copy" value:0 table:0];

  return v3;
}

- (id)crlaxReaderModeEditOperationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Edit" value:0 table:0];

  return v3;
}

- (id)crlaxReaderModeEditOperations
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxReaderModeCopyOperationTitle];
  v7[0] = v3;
  v4 = [(CRLCanvasRepAccessibility *)self crlaxReaderModeEditOperationTitle];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (id)hitRep:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[CRLAccessibility sharedInstance];
  if (![v6 needsAccessibilityElements] || -[CRLCanvasRepAccessibility isAccessibilityElement](self, "isAccessibilityElement"))
  {

LABEL_4:
    v10.receiver = self;
    v10.super_class = CRLCanvasRepAccessibility;
    v7 = [(CRLCanvasRepAccessibility *)&v10 hitRep:x, y];
    goto LABEL_5;
  }

  v9 = [(CRLCanvasRepAccessibility *)self accessibilityElementCount];

  if (v9 > 0)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)_accessibilityTextOperations
{
  v3 = +[NSMutableSet set];
  v4 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v5 = [v4 interactiveCanvasController];
  v6 = [v5 documentIsSharedReadOnly];

  if (v6)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Copy" value:0 table:0];
    [v3 addObject:v8];
  }

  else if ([(CRLCanvasRepAccessibility *)self crlaxNeedsEditRotorMenu])
  {
    v35 = +[CRLAccessibilityEditMenuController sharedController];
    v9 = +[NSMutableArray array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    v11 = [v10 interactiveCanvasController];
    v12 = [v11 editorController];
    v13 = [v12 currentEditors];

    v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [(CRLCanvasRepAccessibility *)self accessibilityActivationPoint];
            [v18 crlaxAddContextualMenuOptionsToArray:v9 atPoint:?];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v15);
    }

    v19 = objc_opt_class();
    v20 = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
    v21 = __CRLAccessibilityCastAsSafeCategory(v19, v20, 0, 0);

    v22 = [v21 crlaxBasicEditMenuItemNames];
    v23 = [NSMutableSet setWithArray:v22];
    v24 = [NSSet setWithArray:v9];
    [v23 intersectSet:v24];

    v25 = [v23 allObjects];
    v26 = [v25 mutableCopy];

    v27 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v28 = [v27 crlaxEditMenuItemProvider];
    v29 = [v35 editMenuTitlesForItemProvider:v28];
    [v26 addObjectsFromArray:v29];

    v30 = [NSMutableSet setWithArray:v26];
    v31 = [(CRLCanvasRepAccessibility *)self _adjustActionNamesForSet:v30];

    v3 = v31;
  }

  v32 = [v3 allObjects];
  v33 = [v32 copy];

  return v33;
}

- (id)_adjustActionNamesForSet:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Front" value:0 table:0];
  v6 = [v3 member:v5];

  if (v6)
  {
    [v3 removeObject:v6];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Bring To Front" value:0 table:0];
    [v3 addObject:v8];
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Back" value:0 table:0];
  v11 = [v3 member:v10];

  if (v11)
  {
    [v3 removeObject:v11];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Send To Back" value:0 table:0];
    [v3 addObject:v13];
  }

  return v3;
}

- (BOOL)_accessibilityTextOperationAction:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasRepAccessibility *)self crlaxNeedsFormatEditOperation])
  {
    v5 = +[CRLCanvasRepAccessibility CRLAXShowFormatOptionsString];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      [(CRLCanvasRepAccessibility *)self _crlaxGoToFormatInspector];
      LOBYTE(v7) = 1;
      goto LABEL_15;
    }
  }

  if (![(CRLCanvasRepAccessibility *)self crlaxNeedsEditRotorMenu])
  {
    LOBYTE(v7) = 0;
    goto LABEL_15;
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Send To Back" value:0 table:0];
  v10 = [v4 isEqualToString:v9];

  v11 = +[NSBundle mainBundle];
  v12 = v11;
  if (v10)
  {
    v13 = @"Back";
  }

  else
  {
    v14 = [v11 localizedStringForKey:@"Bring To Front" value:0 table:0];
    v15 = [v4 isEqualToString:v14];

    if (!v15)
    {
      goto LABEL_11;
    }

    v11 = +[NSBundle mainBundle];
    v12 = v11;
    v13 = @"Front";
  }

  v16 = [v11 localizedStringForKey:v13 value:0 table:0];

  v4 = v16;
LABEL_11:
  v17 = +[CRLAccessibilityEditMenuController sharedController];
  v18 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v19 = [v18 crlaxEditMenuItemProvider];
  v7 = [v17 performActionTitled:v4 forEditMenuProvider:v19];

  if (v7)
  {
    v20 = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
    v21 = [v20 crlaxIsInEyeDropperMode];

    if (v21)
    {
      v22 = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
      [v22 crlaxCancelEyeDropperMode];
    }
  }

LABEL_15:
  return v7;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CRLCanvasRepAccessibility;
  v3 = [(CRLCanvasRepAccessibility *)&v7 accessibilityTraits];
  v4 = [(CRLCanvasRepAccessibility *)self crlaxIsSelectedIgnoringLocking];
  v5 = UIAccessibilityTraitSelected;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (id)accessibilityElements
{
  if ([(CRLCanvasRepAccessibility *)self isAccessibilityElement])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CRLCanvasRepAccessibility *)self crlaxChildren];
  }

  return v3;
}

- (id)accessibilityContainer
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  [v3 crlaxEnsureChildrenAreLoaded];

  v6.receiver = self;
  v6.super_class = CRLCanvasRepAccessibility;
  v4 = [(CRLCanvasRepAccessibility *)&v6 accessibilityContainer];

  return v4;
}

- (id)accessibilityPath
{
  if ([(CRLCanvasRepAccessibility *)self crlaxUsesAccessibilityPath])
  {
    if ([(CRLCanvasRepAccessibility *)self crlaxUsesParentAccessibilityPath])
    {
      v3 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
      v4 = [v3 accessibilityPath];
LABEL_4:

      goto LABEL_7;
    }

    v5 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
    v6 = [v5 crlaxTarget];
    v7 = [v6 isInGroup];

    if ((v7 & 1) == 0)
    {
      v9 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
      v10 = [v9 crlaxTarget];
      v11 = [v10 pathForClippingConnectionLines];
      v3 = [v11 copy];

      if ([v3 isEmpty])
      {
        v4 = 0;
      }

      else
      {
        v12 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
        v40 = *&CGAffineTransformIdentity.c;
        v41 = *&CGAffineTransformIdentity.a;
        *&v46.a = *&CGAffineTransformIdentity.a;
        *&v46.c = v40;
        v39 = *&CGAffineTransformIdentity.tx;
        *&v46.tx = v39;
        v13 = [v12 crlaxInspectorGeometry];
        v14 = v13;
        if (v13)
        {
          [v13 crlaxAngleInRadians];
          *&v45.a = v41;
          *&v45.c = v40;
          *&v45.tx = v39;
          CGAffineTransformRotate(&v46, &v45, -v15);
          v45 = v46;
          [v3 transformUsingAffineTransform:&v45];
          *&v46.a = v41;
          *&v46.c = v40;
          *&v46.tx = v39;
          v16 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
          v17 = v16;
          if (!v16 || ([v16 crlaxViewScale], v44 = v46, CGAffineTransformScale(&v45, &v44, v18, v18), v46 = v45, objc_msgSend(v3, "transformUsingAffineTransform:", &v45), objc_msgSend(v3, "bounds"), v20 == CGSizeZero.width) && v19 == CGSizeZero.height)
          {
            v4 = 0;
          }

          else
          {
            *&v46.a = v41;
            *&v46.c = v40;
            *&v46.tx = v39;
            v21 = [v12 crlaxTarget];
            v22 = v21;
            if (v21)
            {
              [v21 transform];
              v23 = v43;
              [v22 transform];
              v24 = v42;
            }

            else
            {
              v24 = 0.0;
              v23 = 0.0;
            }

            v25 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
            [v25 crlaxScreenPointFromUnscaledCanvas:{v23, v24}];
            v27 = v26;
            v29 = v28;

            v44 = v46;
            CGAffineTransformTranslate(&v45, &v44, v27, v29);
            v46 = v45;
            [v3 transformUsingAffineTransform:&v45];
            v30 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v3 CGPath]);
            [(CRLCanvasRepAccessibility *)self accessibilityFrame];
            v49 = CGRectInset(v48, -1.0, -1.0);
            x = v49.origin.x;
            y = v49.origin.y;
            width = v49.size.width;
            height = v49.size.height;
            [v30 bounds];
            v51.origin.x = v35;
            v51.origin.y = v36;
            v51.size.width = v37;
            v51.size.height = v38;
            v50.origin.x = x;
            v50.origin.y = y;
            v50.size.width = width;
            v50.size.height = height;
            if (CGRectContainsRect(v50, v51))
            {
              v4 = v30;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
          v4 = 0;
        }
      }

      goto LABEL_4;
    }
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)accessibilityHint
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v4 = [v3 crlaxIsInFollowingMode];

  if (v4)
  {
    v5 = +[_TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator magicTapInstruction];
  }

  else if ([(CRLCanvasRepAccessibility *)self _crlaxCanBeSelected])
  {
    v6 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v7 = [v6 crlaxSelectedReps];
    v8 = [v7 count];

    v9 = +[NSBundle mainBundle];
    v10 = v9;
    if (v8)
    {
      v11 = @"Use the actions rotor to add to selection";
    }

    else
    {
      v11 = @"Double tap to select.";
    }

    v5 = [v9 localizedStringForKey:v11 value:0 table:0];
  }

  else
  {
    v5 = 0;
  }

  v12 = [(CRLCanvasRepAccessibility *)self crlaxLockedHint];
  v19 = __CRLAccessibilityStringForVariables(1, v12, v13, v14, v15, v16, v17, v18, v5);

  return v19;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v4 = [v3 crlaxTarget];
  v5 = [v4 layerHost];
  v6 = [v5 asiOSCVC];
  v7 = [v6 isCurrentlyInQuickSelectMode];

  MidX = -1.0;
  MidY = -1.0;
  if ((v7 & 1) == 0)
  {
    [(CRLCanvasRepAccessibility *)self crlaxCGRectValueForKey:@"_accessibilityVisibleFrame"];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MidY = CGRectGetMidY(v17);
  }

  v14 = MidX;
  result.y = MidY;
  result.x = v14;
  return result;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  if ([(CRLCanvasRepAccessibility *)self _crlaxCanBeSelected])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CRLCanvasRepAccessibility;
  return [(CRLCanvasRepAccessibility *)&v4 _accessibilitySupportsActivateAction];
}

- (BOOL)accessibilityActivate
{
  v3 = +[CRLAccessibility sharedInstance];
  [v3 setFirstElementForUpcomingScreenChange:0];

  v4 = +[CRLAccessibility sharedInstance];
  [v4 setShouldPreventFocusingCanvasResponderElementOnScreenChange:0];

  return [(CRLCanvasRepAccessibility *)self crlaxSelect];
}

- (id)_accessibilityParentView
{
  v5.receiver = self;
  v5.super_class = CRLCanvasRepAccessibility;
  v3 = [(CRLCanvasRepAccessibility *)&v5 _accessibilityParentView];
  if (!v3)
  {
    v3 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = +[NSMutableArray array];
  if ([(CRLCanvasRepAccessibility *)self isAccessibilityElement])
  {
    v4 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v5 = [v4 crlaxActionMenuItemsForRep:self];
    [v3 addObjectsFromArray:v5];
  }

  if ([(CRLCanvasRepAccessibility *)self crlaxNeedsFormatEditOperation])
  {
    v6 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    if ([v6 crlaxIsInFollowingMode])
    {
    }

    else
    {
      v7 = [(CRLCanvasRepAccessibility *)self crlaxIsSelectable];

      if (v7)
      {
        v100 = 0;
        v8 = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
        v9 = objc_opt_class();
        v10 = __CRLAccessibilityCastAsClass(v9, v8, 1, &v100);
        if (v100 == 1)
        {
          goto LABEL_42;
        }

        v11 = v10;

        v12 = [v11 miniFormatterPresenter];
        v13 = [v12 isPresentingMiniFormatter];

        if (v13)
        {
          +[CRLCanvasRepAccessibility CRLAXJumpToFormatOptionsString];
        }

        else
        {
          +[CRLCanvasRepAccessibility CRLAXShowFormatOptionsString];
        }
        v14 = ;
        v15 = [[UIAccessibilityCustomAction alloc] initWithName:v14 target:self selector:"_crlaxGoToFormatInspector"];
        [v3 addObject:v15];
      }
    }
  }

  v100 = 0;
  v16 = [(CRLCanvasRepAccessibility *)self crlaxInfo];
  v17 = objc_opt_class();
  v18 = __CRLAccessibilityCastAsClass(v17, v16, 1, &v100);
  if (v100 == 1)
  {
    goto LABEL_42;
  }

  v19 = v18;

  if ([(CRLCanvasRepAccessibility *)self crlaxIsInDrawingMode]&& v19)
  {
    v20 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v21 = [v20 crlaxEditorController];
    v22 = [v21 crlaxTarget];
    v23 = [v22 mostSpecificCurrentEditorOfClass:objc_opt_class()];

    if ([v23 crlaxShouldOfferSnapToShapeFromShapeItem:v19])
    {
      v24 = [v23 snapToShapeActionName];
      v25 = +[CRLFreehandDrawingEditor snapToShapeActionSymbolName];
      v26 = [UIAccessibilityCustomAction alloc];
      v27 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
      v28 = [UIImage systemImageNamed:v25 withConfiguration:v27];
      v96[0] = _NSConcreteStackBlock;
      v96[1] = 3221225472;
      v96[2] = sub_100235B8C;
      v96[3] = &unk_10184B6A0;
      v97 = v24;
      v98 = v25;
      v99 = v23;
      v29 = v25;
      v30 = v24;
      v31 = [v26 initWithName:v30 image:v28 actionHandler:v96];

      [v3 addObject:v31];
    }
  }

  if ([(CRLCanvasRepAccessibility *)self crlaxIsSelectable]&& [(CRLCanvasRepAccessibility *)self crlaxIsSelected])
  {
    v32 = [UIAccessibilityCustomAction alloc];
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"Deselect All" value:0 table:0];
    v35 = [v32 initWithName:v34 target:self selector:"crlaxDeselectAll"];

    [v3 addObject:v35];
  }

  if ([(CRLCanvasRepAccessibility *)self crlaxMayRotate])
  {
    v36 = [UIAccessibilityCustomAction alloc];
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"Rotate 90 degrees clockwise" value:0 table:0];
    v39 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v40 = [UIImage systemImageNamed:@"rotate.right.fill" withConfiguration:v39];
    v41 = [v36 initWithName:v38 image:v40 target:self selector:"crlaxRotateClockwise"];

    v42 = [UIAccessibilityCustomAction alloc];
    v43 = +[NSBundle mainBundle];
    v44 = [v43 localizedStringForKey:@"Rotate 90 degrees counterclockwise" value:0 table:0];
    v45 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v46 = [UIImage systemImageNamed:@"rotate.left.fill" withConfiguration:v45];
    v47 = [v42 initWithName:v44 image:v46 target:self selector:"crlaxRotateCounterclockwise"];

    v102[0] = v41;
    v102[1] = v47;
    v48 = [NSArray arrayWithObjects:v102 count:2];
    [v3 addObjectsFromArray:v48];
  }

  if (![(CRLCanvasRepAccessibility *)self crlaxIsSelectable])
  {
    goto LABEL_34;
  }

  v49 = [(CRLCanvasRepAccessibility *)self crlaxInboundConnectedLayouts];
  v50 = +[CRLCanvasRepAccessibility inboundConnectionsString];
  v51 = [(CRLCanvasRepAccessibility *)self _makeNavigateToConnectedElementCustomActionsFor:v49 inCategory:v50 directionType:2];
  [v3 addObjectsFromArray:v51];

  v52 = [(CRLCanvasRepAccessibility *)self crlaxOutboundConnectedLayouts];
  v53 = +[CRLCanvasRepAccessibility outboundConnectionsString];
  v54 = [(CRLCanvasRepAccessibility *)self _makeNavigateToConnectedElementCustomActionsFor:v52 inCategory:v53 directionType:4];
  [v3 addObjectsFromArray:v54];

  v100 = 0;
  v55 = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v56 = objc_opt_class();
  v57 = __CRLAccessibilityCastAsClass(v56, v55, 1, &v100);
  if (v100 == 1)
  {
LABEL_42:
    abort();
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v58 = v57;
  v59 = [v58 countByEnumeratingWithState:&v92 objects:v101 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v93;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v93 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v92 + 1) + 8 * i);
        v64 = objc_opt_class();
        v65 = __CRLAccessibilityCastAsSafeCategory(v64, v63, 1, &v100);
        if (v100 == 1)
        {
          goto LABEL_42;
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v92 objects:v101 count:16];
    }

    while (v60);
  }

  v66 = +[NSBundle mainBundle];
  v67 = [v66 localizedStringForKey:@"Connection Lines" value:0 table:0];
  v68 = [(CRLCanvasRepAccessibility *)self _makeNavigateToConnectedElementCustomActionsFor:v58 inCategory:v67 directionType:0];
  [v3 addObjectsFromArray:v68];

LABEL_34:
  v69 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v70 = [v69 crlaxIsInFollowingMode];

  if (v70)
  {
    v71 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v72 = [v71 crlaxTarget];
    v73 = [v72 editingCoordinator];
    v74 = [v73 followCoordinator];
    v75 = [v74 accessibilityExperienceCoordinator];

    v76 = [v75 lastFollowedParticipant];
    v77 = [v76 shortDisplayName];

    v78 = [v77 length];
    v79 = +[NSBundle mainBundle];
    v80 = v79;
    if (v78)
    {
      v81 = [v79 localizedStringForKey:@"Pause following %@" value:0 table:0];

      v82 = [NSString localizedStringWithFormat:v81, v77];
      v80 = v81;
    }

    else
    {
      v82 = [v79 localizedStringForKey:@"Pause following" value:0 table:0];
    }

    v83 = [UIAccessibilityCustomAction alloc];
    v84 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v85 = [UIImage systemImageNamed:@"pause.fill" withConfiguration:v84];
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_100235C10;
    v90[3] = &unk_10183AFD8;
    v91 = v75;
    v86 = v75;
    v87 = [v83 initWithName:v82 image:v85 actionHandler:v90];

    [v3 addObject:v87];
  }

  v88 = [v3 copy];

  return v88;
}

- (id)accessibilityDragSourceDescriptors
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v4 = [v3 repForDragging];

  v5 = objc_opt_class();
  v6 = [v4 info];
  v7 = sub_100014370(v5, v6);

  v8 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v9 = [v8 crlaxTarget];

  if ([v4 isSelected] && objc_msgSend(v7, "allowedToBeDragAndDropped") && (objc_msgSend(v9, "canvasEditor"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "canvasEditorCanCopyWithSender:", 0), v10, v11))
  {
    [v4 crlaxCGRectValueForKey:@"_accessibilityVisibleFrame"];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
    v21 = [v20 crlaxTarget];
    [v21 convertRect:0 fromView:{v13, v15, v17, v19}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [UIAccessibilityLocationDescriptor alloc];
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"Drag Item" value:0 table:0];
    v33 = sub_100120414(v23, v25, v27, v29);
    v35 = v34;
    v36 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
    v37 = [v30 initWithName:v32 point:v36 inView:{v33, v35}];

    v40 = v37;
    v38 = [NSArray arrayWithObjects:&v40 count:1];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)accessibilityDropPointDescriptors
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v4 = [v3 repForSelecting];

  [v4 crlaxCGRectValueForKey:@"_accessibilityVisibleFrame"];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  v14 = [v13 crlaxTarget];
  [v14 convertRect:0 fromView:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [UIAccessibilityLocationDescriptor alloc];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"Drop Item" value:0 table:0];
  v26 = sub_100120414(v16, v18, v20, v22);
  v28 = v27;
  v29 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  v30 = [v23 initWithName:v25 point:v29 inView:{v26, v28}];

  v33 = v30;
  v31 = [NSArray arrayWithObjects:&v33 count:1];

  return v31;
}

- (void)crlaxLoadChildrenIntoCollection:(id)a3
{
  v4 = a3;
  v43 = 0;
  v5 = self;
  v6 = objc_opt_class();
  v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v43);
  if (v43 == 1)
  {
    goto LABEL_30;
  }

  v8 = v7;

  v28 = v8;
  [v8 childReps];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v42 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v39 + 1) + 8 * i) crlaxAccessibilityElement];
        if (v14)
        {
          [v4 addObject:v14];
          [v14 crlaxEnsureChildrenAreLoaded];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v11);
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1002363B4;
  v37[3] = &unk_10183AE28;
  v37[4] = v5;
  v15 = objc_alloc_init(NSMutableArray);
  v38 = v15;
  if (__CRLAccessibilityPerformSafeBlock(v37))
  {
LABEL_30:
    abort();
  }

  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * j);
        v22 = [v21 accessibilityElementCount];
        if (([v21 isAccessibilityElement] & 1) != 0 || (v22 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
        {
          [v4 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v18);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = v4;
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v29 + 1) + 8 * k) setAccessibilityContainer:v5];
      }

      v25 = [v23 countByEnumeratingWithState:&v29 objects:v44 count:16];
    }

    while (v25);
  }
}

- (BOOL)crlaxSelect
{
  v26 = 0;
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxCanBeSelectedWithSelectableRepReference:&v26];
  v4 = v26;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 crlaxIsSelected])
    {
      v25 = 0;
      v5 = v4;
      v6 = objc_opt_class();
      v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v25);
      if (v25 != 1)
      {
        v8 = v7;

        v9 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
        v10 = [v9 crlaxTarget];
        [(CRLCanvasRepAccessibility *)self accessibilityActivationPoint];
        [v10 convertPoint:0 fromView:?];
        v12 = v11;
        v14 = v13;

        v15 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
        [v15 crlaxConvertBoundsToUnscaledPoint:{v12, v14}];
        v17 = v16;
        v19 = v18;

        v20 = [v8 beginEditingChildrenIfAllowedAtUnscaledPoint:0 pickingDeepestChild:{v17, v19}];
        v21 = v20 != 0;

LABEL_9:
        goto LABEL_10;
      }
    }

    else
    {
      [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1002365D0;
      v8 = v23[3] = &unk_10183AB38;
      v24 = v8;
      if (!__CRLAccessibilityPerformSafeBlock(v23))
      {

        [v8 crlaxSelectRep:v4];
        CRLAccessibilityPostLayoutChangedNotification(0);
        v21 = 1;
        goto LABEL_9;
      }
    }

    abort();
  }

  v21 = 0;
LABEL_10:

  return v21;
}

- (void)dealloc
{
  [(CRLCanvasRepAccessibility *)self crlaxAccessibilityUnregister];
  v3.receiver = self;
  v3.super_class = CRLCanvasRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v3 dealloc];
}

- (void)dynamicDragDidBegin
{
  v2.receiver = self;
  v2.super_class = CRLCanvasRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v2 dynamicDragDidBegin];
  [objc_opt_class() crlaxSetCurrentRepDragOffset:{CGPointZero.x, CGPointZero.y}];
}

- (void)dynamicallyResizingWithTracker:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CRLCanvasRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v26 dynamicallyResizingWithTracker:v4];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    if (![v5 isBeingResized])
    {
LABEL_9:

      goto LABEL_10;
    }

    v6 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    v7 = [v6 crlaxTarget];
    v8 = [v7 isBeingResized];

    if ((v8 & 1) == 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(CRLCanvasRepAccessibility *)self _crlaxLastBoundsAnnouncementTime];
      if (Current - v10 > 0.5)
      {
        v11 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
        v5 = [v11 crlaxRulerUnitsInstance];

        if ([v5 crlaxRulerUnits] >= 2)
        {
          v12 = @"%.0f %@";
        }

        else
        {
          v12 = @"%.2f %@";
        }

        [v4 crlaxCGRectValueForKey:@"currentBoundsForStandardKnobs"];
        v14 = v13;
        v16 = v15;
        v17 = [v5 crlaxLocalizedCompatibleRulerUnitsForCanvas];
        v18 = [v17 lowercaseString];

        [v5 crlaxConvertPointsToRulerUnits:v14];
        v20 = [NSString stringWithFormat:v12, v19, v18];
        [v5 crlaxConvertPointsToRulerUnits:v16];
        v22 = [NSString stringWithFormat:v12, v21, v18];
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"Width: %1$@ value:Height: %2$@" table:{0, 0}];
        v25 = [NSString stringWithFormat:v24, v20, v22];

        UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v25);
        [(CRLCanvasRepAccessibility *)self _crlaxSetLastBoundsAnnouncementTime:Current];

        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (id)crlaxCompleteConnectionsCustomContent
{
  v3 = objc_opt_new();
  v4 = [(CRLCanvasRepAccessibility *)self crlaxInboundConnectedLayouts];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [NSString stringWithFormat:@"%ld", v5];
    v7 = +[CRLCanvasRepAccessibility inboundConnectionsString];
    v8 = [AXCustomContent customContentWithLabel:v7 value:v6];
    [v3 addObject:v8];
  }

  v9 = [(CRLCanvasRepAccessibility *)self crlaxOutboundConnectedLayouts];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [NSString stringWithFormat:@"%ld", v10];
    v12 = +[CRLCanvasRepAccessibility outboundConnectionsString];
    v13 = [AXCustomContent customContentWithLabel:v12 value:v11];
    [v3 addObject:v13];
  }

  return v3;
}

- (void)crlaxPerformExtraCleanupTasksPriorToRemovalFromCanvas
{
  [(CRLCanvasRepAccessibility *)self setAccessibilityContainer:0];
  v3 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  [v3 crlaxInvalidateChildren];

  v4 = [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];
  [v4 crlaxInvalidateChildren];

  v5 = [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];
  [v5 setRep:0];

  v6 = [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];
  [v6 crlaxAccessibilityUnregister];

  [(CRLCanvasRepAccessibility *)self crlaxAccessibilityUnregister];
}

- (id)_crlaxPrimaryTextEditor
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxTarget];
  v4 = [v3 editorController];
  v5 = [v4 textInputEditor];

  v6 = NSProtocolFromString(@"CRLCanvasEditor");
  if (([v5 conformsToProtocol:v6] & 1) == 0)
  {
    v7 = [v2 crlaxCanvasEditor];

    if ([v7 conformsToProtocol:v6])
    {
      v5 = v7;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_crlaxCanBeSelectedWithSelectableRepReference:(id *)a3
{
  v5 = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  v6 = v5;
  if (v5 && ![(CRLCanvasRepAccessibility *)v5 crlaxIsSelected])
  {
    v9 = 1;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v7 = [(CRLCanvasRepAccessibility *)self crlaxAncestorOfType:objc_opt_class()];
  v9 = v6 != self && v7 == v6;

  if (a3)
  {
LABEL_10:
    if (v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

LABEL_14:

  return v9;
}

- (void)_crlaxGoToFormatInspector
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [v3 crlaxGoToFormatInspector];

  v16 = 0;
  v4 = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v16);
  if (v16 == 1 || (v7 = v6, v4, v15 = 0, [v7 miniFormatterPresenter], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "crlaxMiniFormatterViewController"), v9 = objc_claimAutoreleasedReturnValue(), v8, v10 = objc_opt_class(), __CRLAccessibilityCastAsClass(v10, v9, 1, &v15), v11 = objc_claimAutoreleasedReturnValue(), v15 == 1))
  {
    abort();
  }

  v12 = v11;

  v13 = [v12 crlaxAccessibilityViews];
  v14 = [v13 firstObject];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v14);
}

- (BOOL)_crlaxReaderModePerformCopy
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v4 = [v3 crlaxTarget];

  v5 = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  v6 = [v5 crlaxTarget];

  v7 = [v4 canvasEditor];
  v8 = [v6 info];
  v9 = [v7 selectionPathWithInfo:v8];

  v10 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  [CRLAccessibilityReaderModeCopyOperator performCopyOperationWithSelectionPath:v9 interactiveCanvasController:v4 sender:v10];

  return 1;
}

- (id)_makeNavigateToConnectedElementCustomActionsFor:(id)a3 inCategory:(id)a4 directionType:(int)a5
{
  v7 = a3;
  v34 = a4;
  v32 = objc_opt_new();
  v33 = [CRLCanvasRepAccessibility crlaxDisambiguatedConnectionDescriptionsForSet:v7];
  v8 = +[NSBundle mainBundle];
  v28 = [v8 localizedStringForKey:@"Go to %@" value:0 table:0];

  v9 = +[NSBundle mainBundle];
  v29 = [v9 localizedStringForKey:@"Follow %1$@ to %2$@" value:0 table:0];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [CRLCanvasRepAccessibility crlaxBoardItemIDForLayout:v14];
        if (v15)
        {
          v37 = 0;
          v16 = v14;
          v17 = objc_opt_class();
          v18 = __CRLAccessibilityCastAsSafeCategory(v17, v16, 1, &v37);
          if (v37 == 1)
          {
            abort();
          }

          v19 = v18;

          v20 = [(CRLCanvasRepAccessibility *)self crlaxDescriptionOfSingleConnectionLineConnectingToLayout:v16 inDirection:a5];
          v21 = [v33 objectForKeyedSubscript:v15];
          if ([v20 length])
          {
            [NSString localizedStringWithFormat:v29, v20, v21];
          }

          else
          {
            [NSString localizedStringWithFormat:v28, v21, v27];
          }
          v22 = ;
          v23 = [UIAccessibilityCustomAction alloc];
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1002371BC;
          v35[3] = &unk_10184B6C8;
          v35[4] = self;
          v36 = v19;
          v24 = v19;
          v25 = [v23 initWithName:v22 actionHandler:v35];
          [v25 setLocalizedActionRotorCategory:v34];
          [v32 addObject:v25];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);
  }

  return v32;
}

- (NSArray)preferredFocusEnvironments
{
  v4 = self;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  v3 = [v2 crlaxTarget];

  return v3;
}

- (UIFocusItemContainer)focusItemContainer
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  v3 = [v2 crlaxTarget];

  return v3;
}

- (void)setNeedsFocusUpdate
{
  v3 = [UIFocusSystem focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [UIFocusSystem focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRepAccessibility *)self parentFocusEnvironment];
  v6 = [v5 shouldUpdateFocusInContext:v4];

  return v6;
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxLabel];
  if ([(CRLCanvasRepAccessibility *)self crlaxIsContainedTextRep])
  {
    v40 = 0;
    v4 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    v5 = [v4 parentRep];

    v6 = objc_opt_class();
    v7 = __CRLAccessibilityCastAsSafeCategory(v6, v5, 1, &v40);
    if (v40 == 1)
    {
      goto LABEL_14;
    }

    v8 = v7;

    v9 = [v8 crlaxLabel];
    v10 = [(CRLCanvasRepAccessibility *)self crlaxCollaboratorDescription];
    v17 = __CRLAccessibilityStringForVariables(1, v9, v11, v12, v13, v14, v15, v16, v10);

    v3 = v17;
  }

  if (!v3)
  {
    v39 = 0;
    v26 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    v27 = [v26 info];

    v28 = objc_opt_class();
    v29 = __CRLAccessibilityCastAsClass(v28, v27, 1, &v39);
    if (v39 != 1)
    {
      v18 = v29;

      v30 = [v18 localizedName];
      if ([v30 length])
      {
        v31 = [(CRLCanvasRepAccessibility *)self crlaxGroupAndLockStatusString];
        v25 = __CRLAccessibilityStringForVariables(1, v30, v32, v33, v34, v35, v36, v37, v31);
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_11;
    }

LABEL_14:
    abort();
  }

  v18 = [(CRLCanvasRepAccessibility *)self crlaxGroupAndLockStatusString];
  v25 = __CRLAccessibilityStringForVariables(1, v3, v19, v20, v21, v22, v23, v24, v18);
LABEL_11:

  return v25;
}

- (id)accessibilityValue
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v4 = [v3 canvas];
  v5 = [v4 isCanvasInteractive];

  v6 = [(CRLCanvasRepAccessibility *)self crlaxValue];
  if (v5)
  {
    v7 = [(CRLCanvasRepAccessibility *)self crlaxCollaboratorDescription];
    v14 = __CRLAccessibilityStringForVariables(1, v6, v8, v9, v10, v11, v12, v13, v7);

    v6 = v14;
  }

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxUserInputLabels];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = CRLCanvasRepAccessibility;
    v3 = [(CRLCanvasRepAccessibility *)&v5 accessibilityUserInputLabels];
  }

  return v3;
}

- (CRLCanvasRep)crlaxRetainedTarget
{
  if ([(CRLCanvasRepAccessibility *)self _crlaxShouldPreventAccessToCanvas])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  }

  return v3;
}

- (CGRect)crlaxFrameInUnscaledCanvas
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v4 = [v3 crlaxShouldSetAccessibilityFrameWithFrameInUnscaledCanvasForMarqueeSelecting];
  v5 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v6 = v5;
  if (v4)
  {
    [v5 frameInUnscaledCanvasForMarqueeSelecting];
  }

  else
  {
    [v5 frameInUnscaledCanvas];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)crlaxLayerFrameInScaledCanvas
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxRetainedTarget];
  [v2 layerFrameInScaledCanvas];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)crlaxCenterInUnscaledCanvas
{
  [(CRLCanvasRepAccessibility *)self crlaxFrameInUnscaledCanvas];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (CGRect)crlaxFrameInScreenSpace
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
  [(CRLCanvasRepAccessibility *)self crlaxFrameInUnscaledCanvas];
  [v3 crlaxScreenFrameFromUnscaledCanvas:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CRLCanvasAccessibility)crlaxCanvas
{
  v8 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 canvas];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLCanvasInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController
{
  v8 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
  v3 = [v2 crlaxInteractiveCanvasController];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLCanvasViewAccessibility)crlaxCanvasView
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxCanvasView];

  return v3;
}

- (CRLCanvasRepAccessibility)crlaxParentRep
{
  v8 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 parentRep];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLCanvasElementInfo)crlaxInfo
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 info];

  return v3;
}

- (CRLCanvasLayoutAccessibility)crlaxLayout
{
  v8 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 layout];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxIsSelectedIgnoringLocking
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v4 = [v3 isSelectedIgnoringLocking];

  if (v4)
  {
    return 1;
  }

  v6 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v7 = [v6 crlaxTarget];
  v8 = [v7 isSelectedIgnoringLocking];

  return v8;
}

- (BOOL)crlaxIsSelected
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v4 = [v3 isSelected];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    if ([v6 crlaxIsSelected])
    {
      v7 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
      objc_opt_class();
      v5 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)crlaxIsSelectable
{
  v2 = self;
  v3 = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  LOBYTE(v2) = v3 == v2;

  return v2;
}

- (CRLCanvasRepAccessibility)crlaxRepForSelecting
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];

  if (v3)
  {
    v9 = 0;
    v4 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    v5 = [v4 repForSelecting];

    v6 = objc_opt_class();
    v7 = __CRLAccessibilityCastAsSafeCategory(v6, v5, 1, &v9);
    if (v9 == 1)
    {
      abort();
    }

    v3 = v7;
  }

  return v3;
}

- (BOOL)crlaxShouldCreateKnobs
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 shouldCreateKnobs];

  return v3;
}

- (BOOL)crlaxIsDraggable
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v3 = [v2 crlaxIsDraggable];

  return v3;
}

- (CGRect)crlaxNaturalBounds
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  [v2 naturalBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSString)crlaxHeightDescription
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v4 = [v3 crlaxInspectorGeometry];
  [v4 crlaxSize];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v8 = [v7 crlaxDescriptionOfPointValueConvertedToRulerUnit:v6];

    v9 = [NSString stringWithFormat:@"%1$@", v8];
  }

  return v9;
}

- (NSString)crlaxWidthDescription
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v4 = [v3 crlaxInspectorGeometry];
  [v4 crlaxSize];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v8 = [v7 crlaxDescriptionOfPointValueConvertedToRulerUnit:v6];

    v9 = [NSString stringWithFormat:@"%1$@", v8];
  }

  return v9;
}

- (NSString)crlaxRotationDescription
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v3 = [v2 crlaxInspectorGeometry];
  [v3 crlaxAngleInDegrees];
  v5 = v4;

  if (v5 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"%.0f degrees" value:0 table:0];
    v8 = [NSString stringWithFormat:v7, *&v5];
  }

  return v8;
}

- (id)accessibilityCustomContent
{
  v3 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CRLCanvasRepAccessibility *)self crlaxLayoutDescription];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 length])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Nearby" value:0 table:0];
    v7 = [AXCustomContent customContentWithLabel:v6 value:v4];
    [v3 addObject:v7];
  }

  v8 = [(CRLCanvasRepAccessibility *)self crlaxHeightDescription];
  if ([v8 length])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Height" value:0 table:0];
    v11 = [AXCustomContent customContentWithLabel:v10 value:v8];
    [v3 addObject:v11];
  }

  v12 = [(CRLCanvasRepAccessibility *)self crlaxWidthDescription];
  if ([v12 length])
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Width" value:0 table:0];
    v15 = [AXCustomContent customContentWithLabel:v14 value:v12];
    [v3 addObject:v15];
  }

  v16 = [(CRLCanvasRepAccessibility *)self crlaxRotationDescription];
  if ([v16 length])
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Rotation" value:0 table:0];
    v19 = [AXCustomContent customContentWithLabel:v18 value:v16];
    [v3 addObject:v19];
  }

  if (objc_opt_respondsToSelector())
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1005447F0;
    v29[3] = &unk_10183AE28;
    v30 = v3;
    v31 = self;
    if (__CRLAccessibilityPerformSafeBlock(v29))
    {
      abort();
    }
  }

  v20 = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v21 = [v20 count];

  v22 = [(CRLCanvasRepAccessibility *)self crlaxConnectedLayouts];
  v23 = [v22 count];

  if (v21 - v23 >= 1)
  {
    v24 = [NSString stringWithFormat:@"%ld", v21 - v23];
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"Incomplete connections" value:0 table:0];
    v27 = [AXCustomContent customContentWithLabel:v26 value:v24];
    [v3 addObject:v27];
  }

  return v3;
}

- (BOOL)crlaxIsLocked
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 isLocked];

  return v3;
}

- (NSString)crlaxLockedLabel
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsLocked])
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"Locked" value:0 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)crlaxLockedHint
{
  if ([(CRLCanvasRepAccessibility *)self crlaxIsLocked])
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"Locked items cannot be edited" value:0 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)crlaxContainsTitle
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTitle];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)crlaxContainsCaption
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxCaption];
  v3 = v2 != 0;

  return v3;
}

- (NSString)crlaxTitle
{
  v2 = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  v3 = [v2 crlaxUserProvidedTitle];

  return v3;
}

- (NSString)crlaxCaption
{
  v2 = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  v3 = [v2 crlaxUserProvidedCaption];

  return v3;
}

- (NSString)crlaxTitleLabel
{
  v2 = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  v3 = [v2 crlaxUserProvidedTitleLabel];

  return v3;
}

- (NSString)crlaxCaptionLabel
{
  v2 = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  v3 = [v2 crlaxUserProvidedCaptionLabel];

  return v3;
}

- (NSString)crlaxItemTypeDescription
{
  v2 = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  v3 = [v2 crlaxTypeDescription];

  return v3;
}

- (id)_crlaxDrawableInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRepAccessibility *)self crlaxInfo];
  v5 = __CRLAccessibilityCastAsClass(v3, v4, 0, 0);

  return v5;
}

- (id)_crlaxDrawableInfoAccessibility
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v5 = [v4 info];
  v6 = __CRLAccessibilityCastAsSafeCategory(v3, v5, 0, 0);

  return v6;
}

- (BOOL)crlaxInReadOnlyMode
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxDocumentIsSharedReadOnly];

  return v3;
}

- (NSArray)crlaxKnobAccessibilityElements
{
  v66 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxRetainedTarget];
  v3 = [v2 knobs];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v66);
  if (v66 == 1)
  {
LABEL_43:
    abort();
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v63;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v63 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = __CRLAccessibilityCastAsSafeCategory(v12, v11, 1, &v66);
        if (v66 == 1)
        {
          goto LABEL_43;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v8);
  }

  v14 = self;
  if (-[CRLCanvasRepAccessibility _crlaxKnobElementCacheIsInvalid](self, "_crlaxKnobElementCacheIsInvalid") || (-[CRLCanvasRepAccessibility _crlaxKnobAccessibilityElementsCache](self, "_crlaxKnobAccessibilityElementsCache"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count], v17 = objc_msgSend(v6, "count"), v15, v16 != v17))
  {
    v52 = +[NSMutableArray array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v49 = v6;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v59;
      v51 = v18;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v59 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v58 + 1) + 8 * j);
          v66 = 0;
          v24 = v23;
          v25 = objc_opt_class();
          v26 = __CRLAccessibilityCastAsSafeCategory(v25, v24, 1, &v66);
          if (v66 == 1)
          {
            goto LABEL_43;
          }

          v27 = v26;

          if (v27)
          {
            if ([v27 crlaxKnobTag])
            {
              v28 = [(CRLCanvasRepAccessibility *)v14 crlaxTarget];
              v29 = [v28 interactiveCanvasController];
              v30 = [v29 documentIsSharedReadOnly];

              v31 = [v27 crlaxTarget];
              v32 = [v31 worksWhenDocumentIsSharedReadOnly];

              if (!v30 || v32)
              {
                if ([(CRLCanvasRepAccessibility *)v14 crlaxShouldCreateAccessibilityElementForKnob:v27, v49])
                {
                  v56 = 0u;
                  v57 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v33 = [(CRLCanvasRepAccessibility *)v14 _crlaxKnobAccessibilityElementsCache];
                  v34 = [v33 countByEnumeratingWithState:&v54 objects:v67 count:16];
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *v55;
LABEL_25:
                    v37 = 0;
                    while (1)
                    {
                      if (*v55 != v36)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v38 = *(*(&v54 + 1) + 8 * v37);
                      if ([v38 isEqualToKnob:v27])
                      {
                        break;
                      }

                      if (v35 == ++v37)
                      {
                        v35 = [v33 countByEnumeratingWithState:&v54 objects:v67 count:16];
                        if (v35)
                        {
                          goto LABEL_25;
                        }

                        goto LABEL_31;
                      }
                    }

                    v39 = v38;

                    v14 = self;
                    if (v39)
                    {
                      goto LABEL_34;
                    }
                  }

                  else
                  {
LABEL_31:

                    v14 = self;
                  }

                  v40 = [v27 crlaxIdentifier];
                  v39 = [(CRLCanvasRepAccessibility *)v14 crlaxNewKnobElementForKnob:v27 withIdentifier:v40];

LABEL_34:
                  [v39 setParentRep:v14];
                  [v52 crlaxAddObjectIfNotNil:v39];

                  v18 = v51;
                }
              }
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v20);
    }

    v41 = [(CRLCanvasRepAccessibility *)v14 _crlaxKnobAccessibilityElementsCache];

    if (v41)
    {
      v42 = [(CRLCanvasRepAccessibility *)v14 _crlaxKnobAccessibilityElementsCache];
      v43 = [NSMutableSet setWithArray:v42];

      v44 = [NSSet setWithArray:v52];
      [v43 minusSet:v44];

      v45 = [v43 allObjects];
      [(CRLCanvasRepAccessibility *)v14 _crlaxInvalidateKnobAccessibilityElements:v45];
    }

    [(CRLCanvasRepAccessibility *)v14 _crlaxSetKnobAccessibilityElementsCache:v52, v49];
    [(CRLCanvasRepAccessibility *)v14 _crlaxSetKnobElementCacheIsInvalid:0];

    v6 = v50;
  }

  v46 = [(CRLCanvasRepAccessibility *)v14 _crlaxKnobAccessibilityElementsCache];
  v47 = [v46 copy];

  return v47;
}

- (id)crlaxKnobForTag:(unint64_t)a3 index:(unint64_t)a4 identifier:(id)a5
{
  v8 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v10 = [v9 knobs];

  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      v16 = objc_opt_class();
      v17 = __CRLAccessibilityCastAsSafeCategory(v16, v15, 0, 0);
      v18 = v17;
      if (v17)
      {
        if ([v17 crlaxKnobTag] == a3 && objc_msgSend(v18, "crlaxNodeIndex") == a4)
        {
          v19 = [v18 crlaxIdentifier];

          if (v19 == v8)
          {
            break;
          }
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  return v18;
}

- (id)crlaxKnobElementForTag:(unint64_t)a3 index:(unint64_t)a4 identifier:(id)a5
{
  v8 = a5;
  [(CRLCanvasRepAccessibility *)self crlaxKnobAccessibilityElements];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 knobTag] == a3 && objc_msgSend(v14, "knobNodeIndex") == a4)
        {
          v15 = [v14 crlaxIdentifier];

          if (v15 == v8)
          {
            v16 = v14;
            goto LABEL_13;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (NSString)crlaxSummaryDescription
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CRLCanvasRepAccessibility *)self accessibilityLabel];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)crlaxCollaboratorDescriptionDirect
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v4 = [v3 canvas];
  v5 = [v4 canvasController];
  if (!v5)
  {
    v12 = 0;
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v8 = [v7 shouldShowCollaboratorCursorHighlight];

  if (v8)
  {
    v9 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    v10 = [v9 p_currentCollaboratorPresence];
    v3 = [v10 displayName];

    if (![v3 length])
    {
      v12 = 0;
      goto LABEL_7;
    }

    v11 = +[NSBundle mainBundle];
    v4 = [v11 localizedStringForKey:@"Selected by %@" value:0 table:0];

    v12 = [NSString stringWithFormat:v4, v3];
LABEL_6:

LABEL_7:
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (CGAffineTransform)crlaxTransformToConvertNaturalFromLayerRelative
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5010000000;
  v11 = &unk_1016A8115;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100545750;
  v7[3] = &unk_101839FF8;
  v7[4] = self;
  v7[5] = &v8;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v4 = v9;
  v5 = *(v9 + 3);
  *&retstr->a = *(v9 + 2);
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

- (BOOL)crlaxIsInGroup
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 layout];
  v4 = [v3 isInGroup];

  return v4;
}

- (NSString)crlaxGroupAndLockStatusString
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLCanvasRepAccessibility *)self crlaxIsLockedDirectly];
  if ([(CRLCanvasRepAccessibility *)self crlaxIsLocked])
  {
    v5 = ![(CRLCanvasRepAccessibility *)self crlaxIsLockedDirectly];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"locked" value:0 table:0];
    [v3 addObject:v7];
  }

  if ([(CRLCanvasRepAccessibility *)self crlaxIsInGroup])
  {
    v8 = [(CRLCanvasRepAccessibility *)self crlaxMostDirectGroupAccessibilityDescription];
    if ([v8 length])
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"in %@ value:group" table:{0, 0}];

      v11 = [NSString localizedStringWithFormat:v10, v8];
      [v3 addObject:v11];

      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else if ((v5 & 1) == 0)
    {
      v12 = @"in group";
      goto LABEL_13;
    }

    v12 = @"in locked group";
LABEL_13:
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:v12 value:0 table:0];
    [v3 addObject:v14];

LABEL_14:
  }

  v15 = [v3 componentsJoinedByString:{@", "}];

  return v15;
}

- (BOOL)crlaxIsLockedDirectly
{
  v8 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxInfo];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClassAndProtocol(v3, &OBJC_PROTOCOL___CRLCanvasLockableElementInfo, v2, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 locked];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)crlaxDeselectAll
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [v2 crlaxDeselectAll];
}

- (void)crlaxDeselectRep
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [v3 crlaxDeselectRep:self];
}

- (void)crlaxAddToSelection
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [v3 crlaxAddRepToSelection:self];
}

- (void)_crlaxRotateClockwiseByDegrees:(double)a3
{
  v5 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v6 = [v5 repForRotating];

  v7 = [[CRLCanvasRepRotateTracker alloc] initWithRep:v6];
  v8 = objc_alloc_init(CRLCanvasRepAccessibilityRotationTrackerManipulator);
  [(CRLCanvasRepAccessibilityRotationTrackerManipulator *)v8 setRotationTracker:v7];
  v9 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v10 = [v9 crlaxTarget];

  v11 = [v10 tmCoordinator];
  [v11 registerTrackerManipulator:v8];
  [v11 takeControlWithTrackerManipulator:v8];
  v12 = [v10 dynamicOperationController];
  [v12 beginOperation];
  v13 = [NSSet alloc];
  v16 = v6;
  v14 = [NSArray arrayWithObjects:&v16 count:1];
  v15 = [v13 initWithArray:v14];

  [v12 startTransformingReps:v15];
  [(CRLCanvasRepRotateTracker *)v7 addRotateDelta:a3 * 0.0174532925];
  [v12 handleTrackerManipulator:v8];
  [(CRLCanvasRepAccessibilityRotationTrackerManipulator *)v8 setDoneWithDynamicOperation:1];
  [v12 handleTrackerManipulator:v8];
  [v10 layoutIfNeeded];
}

- (BOOL)crlaxMayRotate
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v4 = [v3 repForRotating];
  v5 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  if (v4 != v5 || [(CRLCanvasRepAccessibility *)self crlaxIsInGroup]|| [(CRLCanvasRepAccessibility *)self crlaxIsLocked]|| [(CRLCanvasRepAccessibility *)self crlaxInReadOnlyMode])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v8 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    if ([v8 containsUnknownContent])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v9 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
      v6 = [v9 crlaxIsInFollowingMode] ^ 1;
    }
  }

  return v6;
}

- (BOOL)crlaxIsContainedTextRep
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v3 = [v2 parentRep];

  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)crlaxNewKnobElementForKnob:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CRLCanvasKnobAccessibilityElement alloc];
  v9 = [v7 crlaxKnobTag];
  v10 = [v7 crlaxNodeIndex];

  v11 = [(CRLCanvasKnobAccessibilityElement *)v8 initWithKnobTag:v9 nodeIndex:v10 parentRep:self identifier:v6];
  return v11;
}

- (CGPoint)crlaxConvertNaturalPointFromUnscaledCanvas:(CGPoint)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_1016A8115;
  v13 = 0;
  v14 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100545FD0;
  v7[3] = &unk_1018427D8;
  v7[4] = self;
  v7[5] = &v9;
  v8 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v3 = v10[4];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)crlaxConvertNaturalRectFromUnscaledCanvas:(CGRect)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_1016A8115;
  v17 = 0u;
  v18 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100546104;
  v11[3] = &unk_101866938;
  v11[4] = self;
  v11[5] = &v13;
  v12 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v11))
  {
    abort();
  }

  v3 = v14[4];
  v4 = v14[5];
  v5 = v14[6];
  v6 = v14[7];
  _Block_object_dispose(&v13, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)crlaxConvertNaturalPointToUnscaledCanvas:(CGPoint)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_1016A8115;
  v13 = 0;
  v14 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100546224;
  v7[3] = &unk_1018427D8;
  v7[4] = self;
  v7[5] = &v9;
  v8 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v3 = v10[4];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)crlaxConvertNaturalRectToUnscaledCanvas:(CGRect)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_1016A8115;
  v17 = 0u;
  v18 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100546358;
  v11[3] = &unk_101866938;
  v11[4] = self;
  v11[5] = &v13;
  v12 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v11))
  {
    abort();
  }

  v3 = v14[4];
  v4 = v14[5];
  v5 = v14[6];
  v6 = v14[7];
  _Block_object_dispose(&v13, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)crlaxConvertNaturalPointToScreenSpace:(CGPoint)a3
{
  [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalRectToScreenSpace:a3.x, a3.y, 0.0, 0.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)crlaxConvertNaturalRectToScreenSpace:(CGRect)a3
{
  [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalRectToUnscaledCanvas:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [v12 crlaxConvertUnscaledToBoundsRect:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v22 = [v21 crlaxCanvasView];

  [v22 crlaxFrameFromBounds:{v14, v16, v18, v20}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)crlaxConvertLayerRelativeRectToNaturalRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLCanvasRepAccessibility *)self crlaxTransformToConvertNaturalFromLayerRelative];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (BOOL)crlaxBezierPathContainsUnscaledCanvasPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v7 = [v6 layout];
  v8 = [v7 convexHullPath];

  [(CRLCanvasRepAccessibility *)v5 crlaxConvertNaturalPointFromUnscaledCanvas:x, y];
  LOBYTE(v5) = [v8 containsPoint:?];

  return v5;
}

- (void)crlaxClearKnobAccessibilityElementCache
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxKnobAccessibilityElementsCache];
  [(CRLCanvasRepAccessibility *)self _crlaxInvalidateKnobAccessibilityElements:v3];

  [(CRLCanvasRepAccessibility *)self _crlaxSetKnobAccessibilityElementsCache:0];
}

- (BOOL)crlaxOpenURL
{
  v8 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 item];
    [_TtC8Freeform12CRLURLEditor openItemURLFor:v6];
  }

  return v5 != 0;
}

- (NSString)crlaxDefaultDescriptionForConnections
{
  v3 = [(CRLCanvasRepAccessibility *)self accessibilityLabel];
  v4 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionDescriptionTokenFromString:v3];
  v5 = [(CRLCanvasRepAccessibility *)self accessibilityValue];
  v6 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionDescriptionTokenFromString:v5];
  v13 = __CRLAccessibilityStringForVariables(1, v4, v7, v8, v9, v10, v11, v12, v6);

  if ([v13 length])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (NSSet)crlaxConnectedConnectionLines
{
  v2 = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  v20 = 0;
  v3 = [v2 layout];
  v4 = [v3 connectedLayouts];

  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v20);
  if (v20 == 1)
  {
LABEL_13:
    abort();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = __CRLAccessibilityCastAsSafeCategory(v13, v12, 1, &v20);
        if (v20 == 1)
        {
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  return v7;
}

- (NSSet)crlaxConnectedLayouts
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  v4 = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v3 layout];
        v13 = [v11 crlaxOppositeConnectedLayoutFrom:v12];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (NSSet)crlaxInboundConnectedLayouts
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxBidirectionallyConnectedLayouts];
  v4 = [NSMutableSet setWithSet:v3];

  v5 = [(CRLCanvasRepAccessibility *)self crlaxStrictlyInboundConnectedLayouts];
  [v4 unionSet:v5];

  return v4;
}

- (NSSet)crlaxStrictlyInboundConnectedLayouts
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxLayoutsConnectedByStrictlyInboundConnectionLines];
  v4 = [(CRLCanvasRepAccessibility *)self crlaxBidirectionallyConnectedLayouts];
  v5 = [v3 crl_setBySubtractingSet:v4];

  return v5;
}

- (NSSet)crlaxOutboundConnectedLayouts
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxBidirectionallyConnectedLayouts];
  v4 = [NSMutableSet setWithSet:v3];

  v5 = [(CRLCanvasRepAccessibility *)self crlaxStrictlyOutboundConnectedLayouts];
  [v4 unionSet:v5];

  return v4;
}

- (NSSet)crlaxStrictlyOutboundConnectedLayouts
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxLayoutsConnectedByStrictlyOutboundConnectionLines];
  v4 = [(CRLCanvasRepAccessibility *)self crlaxBidirectionallyConnectedLayouts];
  v5 = [v3 crl_setBySubtractingSet:v4];

  return v5;
}

- (NSSet)crlaxBidirectionallyConnectedLayouts
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxBidirectionallyConnectedLayoutsViaSingleBidirectionalConnectionLines];
  v4 = [NSMutableSet setWithSet:v3];

  v5 = [(CRLCanvasRepAccessibility *)self _crlaxBidirectionallyConnectedLayoutsViaMultipleUnidirectionalConnectionLines];
  [v4 unionSet:v5];

  return v4;
}

- (BOOL)crlaxHasAvailableRepsForConnecting
{
  v2 = [(CRLCanvasRepAccessibility *)self _crlaxAvailableRepsForConnecting];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)crlaxDescriptionOfSingleConnectionLineConnectingToLayout:(id)a3 inDirection:(int)a4
{
  v4 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionLinesConnectingToLayout:a3 inDirection:*&a4];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 crlaxTarget];
    v7 = [v6 shapeInfo];
    v8 = [v7 accessibilityDescription];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)clraxNumberOfStrictlyInboundConnectionsFromLayout:(id)a3
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionLinesConnectingToLayout:a3 inDirection:1];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)clraxNumberOfStrictlyOutboundConnectionsToLayout:(id)a3
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionLinesConnectingToLayout:a3 inDirection:3];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)clraxNumberOfBidirectionalSingleConnectionsForLayout:(id)a3
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionLinesConnectingToLayout:a3 inDirection:5];
  v4 = [v3 count];

  return v4;
}

+ (id)crlaxDisambiguatedConnectionDescriptionsForSet:(id)a3
{
  v3 = a3;
  v50 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v63 = 0;
  v5 = v3;
  v6 = objc_opt_class();
  v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v63);
  if (v63 == 1)
  {
LABEL_39:
    abort();
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = __CRLAccessibilityCastAsSafeCategory(v14, v13, 1, &v63);
        if (v63 == 1)
        {
          goto LABEL_39;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v10);
  }

  v44 = v5;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v56;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v55 + 1) + 8 * j);
        v22 = [v21 crlaxTarget];
        v23 = [v22 allowsConnections];

        if (v23)
        {
          v24 = [v21 crlaxDescriptionForConnections];
          v25 = [v4 objectForKeyedSubscript:v24];
          if (!v25)
          {
            v25 = objc_alloc_init(NSMutableArray);
          }

          [v25 addObject:v21];
          [v4 setObject:v25 forKeyedSubscript:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v18);
  }

  v43 = v16;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v4 allKeys];
  v48 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v48)
  {
    v46 = *v52;
    v47 = v4;
    p_info = &OBJC_METACLASS_____CRLCanvasRepAccessibility_super.info;
    do
    {
      v27 = 0;
      do
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v27;
        v28 = *(*(&v51 + 1) + 8 * v27);
        v29 = [v4 objectForKeyedSubscript:v28];
        if ([v29 count])
        {
          v30 = 1;
          do
          {
            v31 = [v29 objectAtIndexedSubscript:v30 - 1];
            v32 = [v31 crlaxTarget];
            v33 = [p_info + 6 crlaxBoardItemIDForLayout:v32];

            if (v33)
            {
              if ([v29 count] == 1)
              {
                [v50 setObject:v28 forKeyedSubscript:v33];
              }

              else
              {
                v34 = [p_info + 6 disambiguatedConnectionDescriptionFormat];
                v35 = [v29 count];
                v36 = [v31 crlaxTarget];
                [v36 frameInRoot];
                v68.x = sub_100122154(v37, v38);
                v39 = NSStringFromCGPoint(v68);
                v40 = [NSString localizedStringWithFormat:v34, v28, v30, v35, v39, v43, v44];
                [v50 setObject:v40 forKeyedSubscript:v33];

                p_info = (&OBJC_METACLASS_____CRLCanvasRepAccessibility_super + 32);
              }
            }
          }

          while (v30++ < [v29 count]);
        }

        v27 = v49 + 1;
        v4 = v47;
      }

      while ((v49 + 1) != v48);
      v48 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v48);
  }

  return v50;
}

+ (id)crlaxBoardItemIDForLayout:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = [v3 info];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  v8 = [v7 id];

  return v8;
}

- (id)crlaxRemoveExtensionFromFile:(id)a3 inString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 stringByDeletingPathExtension];
  v8 = [v5 crl_range];
  v10 = [v5 stringByReplacingOccurrencesOfString:v6 withString:v7 options:0 range:{v8, v9}];

  return v10;
}

- (BOOL)crlaxFullscreenPreviewFile
{
  v7 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;

  if (v5)
  {
    [v5 enterPreviewMode];
  }

  return v5 != 0;
}

- (void)i_willBeRemoved
{
  [(CRLCanvasRepAccessibility *)self crlaxSetIsBeingRemoved:1];
  [(CRLCanvasRepAccessibility *)self _crlaxSetShouldPreventAccessToCanvas:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005475C4;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  CRLAccessibilityPerformBlockOnMainThread(v4);
  v3.receiver = self;
  v3.super_class = CRLCanvasRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v3 i_willBeRemoved];
}

- (void)invalidateKnobs
{
  v3.receiver = self;
  v3.super_class = CRLCanvasRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v3 invalidateKnobs];
  [(CRLCanvasRepAccessibility *)self _crlaxSetKnobElementCacheIsInvalid:1];
}

- (void)becameSelected
{
  v5.receiver = self;
  v5.super_class = CRLCanvasRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v5 becameSelected];
  v3 = +[CRLAccessibility sharedInstance];
  [v3 setFirstElementForUpcomingScreenChange:self];

  v4 = dispatch_time(0, 500000000);
  dispatch_after(v4, &_dispatch_main_q, &stru_10186DF08);
}

- (void)becameNotSelected
{
  v3.receiver = self;
  v3.super_class = CRLCanvasRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v3 becameNotSelected];
  v2 = +[CRLAccessibility sharedInstance];
  [v2 setFirstElementForUpcomingScreenChange:0];
}

- (id)crlaxValueForKey:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasRepAccessibility *)self _crlaxShouldPreventAccessToCanvas]&& [(CRLCanvasRepAccessibility *)self _crlaxKeyCorrespondsToPropertyRequiringAccessToCanvas:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLCanvasRepAccessibility;
    v5 = [(CRLCanvasRepAccessibility *)&v7 crlaxValueForKey:v4];
  }

  return v5;
}

- (void)_crlaxInvalidateKnobAccessibilityElements:(id)a3
{
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setParentRep:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)_crlaxKeyCorrespondsToPropertyRequiringAccessToCanvas:(id)a3
{
  v4 = 0;
  v9 = *off_10186DF28;
  v10 = *off_10186DF38;
  v11 = *off_10186DF48;
  v12 = *off_10186DF58;
  do
  {
    v5 = [a3 isEqualToString:{*(&v9 + v4), v9, v10, v11, v12}];
    v6 = v5;
    if (v4 > 6)
    {
      break;
    }

    ++v4;
  }

  while ((v5 & 1) == 0);
  for (i = 56; i != -8; i -= 8)
  {
  }

  return v6;
}

- (id)_crlaxRepForConnectionLineMapping
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  if ([(CRLCanvasRepAccessibility *)self crlaxIsContainedTextRep])
  {
    v4 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    v5 = [v4 parentRep];

    v3 = v5;
  }

  return v3;
}

- (id)_crlaxConnectionLinesConnectingToLayout:(id)a3 inDirection:(int)a4
{
  v6 = a3;
  v20 = +[NSMutableArray array];
  v7 = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  v8 = [v7 layout];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = [v14 crlaxOppositeConnectedLayoutFrom:v8];
        if (v15 == v6)
        {
          v16 = [v14 crlaxIsVisuallyPointingAt:v8];
          v17 = [v14 crlaxIsVisuallyPointingAt:v6];
          if (a4 > 2)
          {
            if (a4 == 3)
            {
              if (((v16 ^ 1) & v17 & 1) == 0)
              {
                goto LABEL_20;
              }

LABEL_19:
              [v20 addObject:v14];
              goto LABEL_20;
            }

            if (a4 == 4)
            {
              if (v17)
              {
                goto LABEL_19;
              }
            }

            else if (a4 == 5 && (v16 & v17 & 1) != 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (!a4)
            {
              goto LABEL_19;
            }

            if (a4 == 1)
            {
              if (!(v17 & 1 | ((v16 & 1) == 0)))
              {
                goto LABEL_19;
              }
            }

            else if (a4 == 2 && v16)
            {
              goto LABEL_19;
            }
          }
        }

LABEL_20:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v18 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v11 = v18;
    }

    while (v18);
  }

  return v20;
}

- (id)_crlaxAvailableRepsForConnecting
{
  v22 = 0;
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v22);
  if (v22 == 1)
  {
    abort();
  }

  v6 = v5;

  v7 = [NSMutableArray alloc];
  v8 = [v6 canvas];
  v9 = [v8 topLevelReps];
  v10 = [v7 initWithArray:v9];

  v11 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  LODWORD(v9) = [v10 containsObject:v11];

  if (v9)
  {
    if ([v10 count])
    {
      for (i = 0; i < [v10 count]; ++i)
      {
        v13 = [v10 objectAtIndexedSubscript:i];
        v14 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
        if (v13 == v14)
        {
          isKindOfClass = 1;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        v16 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
        objc_opt_class();
        v17 = objc_opt_isKindOfClass();

        if (v17)
        {
          v18 = [v13 layout];
          if ([v18 isInGroup])
          {
          }

          else
          {
            v19 = [CRLConnectionLineRep canConnectToRep:v13];

            if (!(isKindOfClass & 1 | ((v19 & 1) == 0)))
            {
              goto LABEL_14;
            }
          }
        }

        else if (isKindOfClass & 1) == 0 && ([v13 shouldCreateConnectionLineKnobs])
        {
          goto LABEL_14;
        }

        [v10 removeObjectAtIndex:i--];
LABEL_14:
      }
    }

    v20 = v10;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)_crlaxAvailableRepsForConnectingSorted
{
  [(CRLCanvasRepAccessibility *)self crlaxFrameInUnscaledCanvas];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CRLCanvasRepAccessibility *)self _crlaxAvailableRepsForConnecting];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100547F48;
  v14[3] = &unk_10186DF68;
  v14[4] = v4;
  v14[5] = v6;
  v14[6] = v8;
  v14[7] = v10;
  v12 = [v11 sortedArrayUsingComparator:v14];

  return v12;
}

- (id)_crlaxLayoutsConnectedByStrictlyInboundConnectionLines
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  v4 = [v3 layout];
  v5 = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 crlaxIsVisuallyPointingAt:{v4, v15}])
        {
          v13 = [v12 crlaxOppositeConnectedLayoutFrom:v4];
          if (v13 && ([v12 crlaxIsVisuallyPointingAt:v13] & 1) == 0)
          {
            [v6 addObject:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_crlaxLayoutsConnectedByStrictlyOutboundConnectionLines
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  v4 = [v3 layout];
  v5 = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 crlaxOppositeConnectedLayoutFrom:{v4, v15}];
        if (v13 && [v12 crlaxIsVisuallyPointingAt:v13] && (objc_msgSend(v12, "crlaxIsVisuallyPointingAt:", v4) & 1) == 0)
        {
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_crlaxBidirectionallyConnectedLayoutsViaSingleBidirectionalConnectionLines
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  v4 = [v3 layout];
  v5 = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 crlaxOppositeConnectedLayoutFrom:{v4, v15}];
        if (v13 && [v12 crlaxIsVisuallyPointingAt:v4] && objc_msgSend(v12, "crlaxIsVisuallyPointingAt:", v13))
        {
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_crlaxBidirectionallyConnectedLayoutsViaMultipleUnidirectionalConnectionLines
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxLayoutsConnectedByStrictlyInboundConnectionLines];
  v4 = [NSMutableSet setWithSet:v3];

  v5 = [(CRLCanvasRepAccessibility *)self _crlaxLayoutsConnectedByStrictlyOutboundConnectionLines];
  v6 = [v4 crl_setByIntersectingSet:v5];

  return v6;
}

- (CGRect)_crlaxFrameByKnobPositions
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxKnobAccessibilityElements];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    [v3 accessibilityFrame];
    x = v4;
    y = v6;
    width = v8;
    height = v10;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v2;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v25 + 1) + 8 * v16) accessibilityFrame];
          v33.origin.x = v17;
          v33.origin.y = v18;
          v33.size.width = v19;
          v33.size.height = v20;
          v30.origin.x = x;
          v30.origin.y = y;
          v30.size.width = width;
          v30.size.height = height;
          v31 = CGRectUnion(v30, v33);
          x = v31.origin.x;
          y = v31.origin.y;
          width = v31.size.width;
          height = v31.size.height;
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)crlaxMostDirectGroupAccessibilityDescription
{
  v20 = 0;
  v2 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, v2, 1, &v20);
  if (v20 == 1)
  {
    goto LABEL_13;
  }

  v5 = v4;

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v19 = 0;
      v7 = [v5 crlaxTarget];
      v8 = [v7 info];

      v9 = objc_opt_class();
      v10 = __CRLAccessibilityCastAsClass(v9, v8, 1, &v19);
      if (v19 == 1)
      {
        break;
      }

      v11 = v10;

      v12 = [v11 accessibilityDescription];

      if ([v12 length])
      {
        goto LABEL_10;
      }

      v18 = 0;
      v13 = [v5 crlaxParentRep];
      v14 = objc_opt_class();
      v15 = __CRLAccessibilityCastAsSafeCategory(v14, v13, 1, &v18);
      if (v18 == 1)
      {
        break;
      }

      v16 = v15;

      v6 = v12;
      v5 = v16;
      if (!v16)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    abort();
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_crlaxConnectionDescriptionTokenFromString:(id)a3
{
  v3 = a3;
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  v6 = [v5 mutableCopy];
  [v6 crl_removeObjectsIdenticalToObjectsInArray:&off_1018E1F08];
  v7 = [v6 count];
  if (v7 >= 0x14)
  {
    v8 = 20;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 subarrayWithRange:{0, v8}];
  v10 = [v9 mutableCopy];

  v11 = [v10 componentsJoinedByString:@" "];

  return v11;
}

+ (id)CRLAXJumpToFormatOptionsString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Jump to format options" value:0 table:0];

  return v3;
}

+ (id)CRLAXJumpTextToFormatOptionsString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Jump to text format options" value:0 table:0];

  return v3;
}

+ (id)CRLAXShowFormatOptionsString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Show format options" value:0 table:0];

  return v3;
}

+ (id)inboundConnectionsString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Inbound Connections" value:0 table:0];

  return v3;
}

+ (id)outboundConnectionsString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Outbound Connections" value:0 table:0];

  return v3;
}

+ (id)bidirectionalConnectionsString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Bidirectional Connections" value:0 table:0];

  return v3;
}

+ (id)disambiguatedConnectionDescriptionFormat
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"%1$@ (%2$lu of %3$lu) at %4$@" value:0 table:0];

  return v3;
}

@end