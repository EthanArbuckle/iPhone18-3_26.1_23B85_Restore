@interface CRLCanvasRepAccessibility
+ (CGPoint)crlaxCurrentRepDragOffset;
+ (id)CRLAXJumpTextToFormatOptionsString;
+ (id)CRLAXJumpToFormatOptionsString;
+ (id)CRLAXShowFormatOptionsString;
+ (id)bidirectionalConnectionsString;
+ (id)crlaxBoardItemIDForLayout:(id)layout;
+ (id)crlaxCastFrom:(id)from;
+ (id)crlaxDisambiguatedConnectionDescriptionsForSet:(id)set;
+ (id)disambiguatedConnectionDescriptionFormat;
+ (id)inboundConnectionsString;
+ (id)outboundConnectionsString;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilityTextOperationAction:(id)action;
- (BOOL)_crlaxCanBeSelectedWithSelectableRepReference:(id *)reference;
- (BOOL)_crlaxKeyCorrespondsToPropertyRequiringAccessToCanvas:(id)canvas;
- (BOOL)_crlaxReaderModePerformCopy;
- (BOOL)accessibilityActivate;
- (BOOL)crlaxBezierPathContainsUnscaledCanvasPoint:(CGPoint)point;
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
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGAffineTransform)crlaxTransformToConvertNaturalFromLayerRelative;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)crlaxCenterInUnscaledCanvas;
- (CGPoint)crlaxConvertNaturalPointFromUnscaledCanvas:(CGPoint)canvas;
- (CGPoint)crlaxConvertNaturalPointToScreenSpace:(CGPoint)space;
- (CGPoint)crlaxConvertNaturalPointToUnscaledCanvas:(CGPoint)canvas;
- (CGRect)_crlaxFrameByKnobPositions;
- (CGRect)crlaxConvertLayerRelativeRectToNaturalRect:(CGRect)rect;
- (CGRect)crlaxConvertNaturalRectFromUnscaledCanvas:(CGRect)canvas;
- (CGRect)crlaxConvertNaturalRectToScreenSpace:(CGRect)space;
- (CGRect)crlaxConvertNaturalRectToUnscaledCanvas:(CGRect)canvas;
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
- (id)_adjustActionNamesForSet:(id)set;
- (id)_crlaxAvailableRepsForConnecting;
- (id)_crlaxAvailableRepsForConnectingSorted;
- (id)_crlaxBidirectionallyConnectedLayoutsViaMultipleUnidirectionalConnectionLines;
- (id)_crlaxBidirectionallyConnectedLayoutsViaSingleBidirectionalConnectionLines;
- (id)_crlaxConnectionDescriptionTokenFromString:(id)string;
- (id)_crlaxConnectionLinesConnectingToLayout:(id)layout inDirection:(int)direction;
- (id)_crlaxDrawableInfo;
- (id)_crlaxDrawableInfoAccessibility;
- (id)_crlaxLayoutsConnectedByStrictlyInboundConnectionLines;
- (id)_crlaxLayoutsConnectedByStrictlyOutboundConnectionLines;
- (id)_crlaxPrimaryTextEditor;
- (id)_crlaxRepForConnectionLineMapping;
- (id)_makeNavigateToConnectedElementCustomActionsFor:(id)for inCategory:(id)category directionType:(int)type;
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
- (id)crlaxDescriptionOfSingleConnectionLineConnectingToLayout:(id)layout inDirection:(int)direction;
- (id)crlaxKnobElementForTag:(unint64_t)tag index:(unint64_t)index identifier:(id)identifier;
- (id)crlaxKnobForTag:(unint64_t)tag index:(unint64_t)index identifier:(id)identifier;
- (id)crlaxLayoutDescription;
- (id)crlaxMostDirectGroupAccessibilityDescription;
- (id)crlaxNewKnobElementForKnob:(id)knob withIdentifier:(id)identifier;
- (id)crlaxReaderModeCopyOperationTitle;
- (id)crlaxReaderModeEditOperationTitle;
- (id)crlaxReaderModeEditOperations;
- (id)crlaxRemoveExtensionFromFile:(id)file inString:(id)string;
- (id)crlaxValueForKey:(id)key;
- (id)hitRep:(CGPoint)rep;
- (unint64_t)accessibilityTraits;
- (unint64_t)clraxNumberOfBidirectionalSingleConnectionsForLayout:(id)layout;
- (unint64_t)clraxNumberOfStrictlyInboundConnectionsFromLayout:(id)layout;
- (unint64_t)clraxNumberOfStrictlyOutboundConnectionsToLayout:(id)layout;
- (void)_crlaxGoToFormatInspector;
- (void)_crlaxInvalidateKnobAccessibilityElements:(id)elements;
- (void)_crlaxRotateClockwiseByDegrees:(double)degrees;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)crlaxAddToSelection;
- (void)crlaxClearKnobAccessibilityElementCache;
- (void)crlaxDeselectAll;
- (void)crlaxDeselectRep;
- (void)crlaxLoadChildrenIntoCollection:(id)collection;
- (void)crlaxPerformExtraCleanupTasksPriorToRemovalFromCanvas;
- (void)dealloc;
- (void)dynamicDragDidBegin;
- (void)dynamicallyResizingWithTracker:(id)tracker;
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
  _crlaxRepContainerElementCache = [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];

  if (!_crlaxRepContainerElementCache)
  {
    crlaxCanvas = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
    crlaxCanvasContainerView = [crlaxCanvas crlaxCanvasContainerView];

    if (crlaxCanvasContainerView)
    {
      v6 = [[CRLRepContainerAccessibilityElement alloc] initWithRep:self accessibilityParent:crlaxCanvasContainerView];
      [(CRLCanvasRepAccessibility *)self _crlaxSetRepContainerElementCache:v6];
    }
  }

  return [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];
}

- (CRLiOSCanvasViewControllerAccessibility)crlaxCanvasViewController
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasViewController = [crlaxInteractiveCanvasController crlaxCanvasViewController];

  return crlaxCanvasViewController;
}

- (BOOL)crlaxIsInDrawingMode
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  interactiveCanvasController = [crlaxTarget interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  return isInDrawingMode;
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
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxTarget = [crlaxLayout crlaxTarget];
  [crlaxTarget alignmentFrameInRoot];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxFirstSelectedRep = [crlaxInteractiveCanvasController crlaxFirstSelectedRep];
  crlaxLayout2 = [crlaxFirstSelectedRep crlaxLayout];
  crlaxTarget2 = [crlaxLayout2 crlaxTarget];
  [crlaxTarget2 alignmentFrameInRoot];
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
    crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    crlaxCustomRotors = [crlaxInteractiveCanvasController crlaxCustomRotors];
  }

  else
  {
    crlaxCustomRotors = 0;
  }

  return crlaxCustomRotors;
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
  crlaxReaderModeCopyOperationTitle = [(CRLCanvasRepAccessibility *)self crlaxReaderModeCopyOperationTitle];
  v7[0] = crlaxReaderModeCopyOperationTitle;
  crlaxReaderModeEditOperationTitle = [(CRLCanvasRepAccessibility *)self crlaxReaderModeEditOperationTitle];
  v7[1] = crlaxReaderModeEditOperationTitle;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (id)hitRep:(CGPoint)rep
{
  y = rep.y;
  x = rep.x;
  v6 = +[CRLAccessibility sharedInstance];
  if (![v6 needsAccessibilityElements] || -[CRLCanvasRepAccessibility isAccessibilityElement](self, "isAccessibilityElement"))
  {

LABEL_4:
    v10.receiver = self;
    v10.super_class = CRLCanvasRepAccessibility;
    v7 = [(CRLCanvasRepAccessibility *)&v10 hitRep:x, y];
    goto LABEL_5;
  }

  accessibilityElementCount = [(CRLCanvasRepAccessibility *)self accessibilityElementCount];

  if (accessibilityElementCount > 0)
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
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  interactiveCanvasController = [crlaxTarget interactiveCanvasController];
  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

  if (documentIsSharedReadOnly)
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
    crlaxTarget2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    interactiveCanvasController2 = [crlaxTarget2 interactiveCanvasController];
    editorController = [interactiveCanvasController2 editorController];
    currentEditors = [editorController currentEditors];

    v14 = [currentEditors countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(currentEditors);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [(CRLCanvasRepAccessibility *)self accessibilityActivationPoint];
            [v18 crlaxAddContextualMenuOptionsToArray:v9 atPoint:?];
          }
        }

        v15 = [currentEditors countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v15);
    }

    v19 = objc_opt_class();
    crlaxCanvasViewController = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
    v21 = __CRLAccessibilityCastAsSafeCategory(v19, crlaxCanvasViewController, 0, 0);

    crlaxBasicEditMenuItemNames = [v21 crlaxBasicEditMenuItemNames];
    v23 = [NSMutableSet setWithArray:crlaxBasicEditMenuItemNames];
    v24 = [NSSet setWithArray:v9];
    [v23 intersectSet:v24];

    allObjects = [v23 allObjects];
    v26 = [allObjects mutableCopy];

    crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    crlaxEditMenuItemProvider = [crlaxInteractiveCanvasController crlaxEditMenuItemProvider];
    v29 = [v35 editMenuTitlesForItemProvider:crlaxEditMenuItemProvider];
    [v26 addObjectsFromArray:v29];

    v30 = [NSMutableSet setWithArray:v26];
    v31 = [(CRLCanvasRepAccessibility *)self _adjustActionNamesForSet:v30];

    v3 = v31;
  }

  allObjects2 = [v3 allObjects];
  v33 = [allObjects2 copy];

  return v33;
}

- (id)_adjustActionNamesForSet:(id)set
{
  setCopy = set;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Front" value:0 table:0];
  v6 = [setCopy member:v5];

  if (v6)
  {
    [setCopy removeObject:v6];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Bring To Front" value:0 table:0];
    [setCopy addObject:v8];
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Back" value:0 table:0];
  v11 = [setCopy member:v10];

  if (v11)
  {
    [setCopy removeObject:v11];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Send To Back" value:0 table:0];
    [setCopy addObject:v13];
  }

  return setCopy;
}

- (BOOL)_accessibilityTextOperationAction:(id)action
{
  actionCopy = action;
  if ([(CRLCanvasRepAccessibility *)self crlaxNeedsFormatEditOperation])
  {
    v5 = +[CRLCanvasRepAccessibility CRLAXShowFormatOptionsString];
    v6 = [actionCopy isEqualToString:v5];

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
  v10 = [actionCopy isEqualToString:v9];

  v11 = +[NSBundle mainBundle];
  v12 = v11;
  if (v10)
  {
    v13 = @"Back";
  }

  else
  {
    v14 = [v11 localizedStringForKey:@"Bring To Front" value:0 table:0];
    v15 = [actionCopy isEqualToString:v14];

    if (!v15)
    {
      goto LABEL_11;
    }

    v11 = +[NSBundle mainBundle];
    v12 = v11;
    v13 = @"Front";
  }

  v16 = [v11 localizedStringForKey:v13 value:0 table:0];

  actionCopy = v16;
LABEL_11:
  v17 = +[CRLAccessibilityEditMenuController sharedController];
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxEditMenuItemProvider = [crlaxInteractiveCanvasController crlaxEditMenuItemProvider];
  v7 = [v17 performActionTitled:actionCopy forEditMenuProvider:crlaxEditMenuItemProvider];

  if (v7)
  {
    crlaxCanvasViewController = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
    crlaxIsInEyeDropperMode = [crlaxCanvasViewController crlaxIsInEyeDropperMode];

    if (crlaxIsInEyeDropperMode)
    {
      crlaxCanvasViewController2 = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
      [crlaxCanvasViewController2 crlaxCancelEyeDropperMode];
    }
  }

LABEL_15:
  return v7;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CRLCanvasRepAccessibility;
  accessibilityTraits = [(CRLCanvasRepAccessibility *)&v7 accessibilityTraits];
  crlaxIsSelectedIgnoringLocking = [(CRLCanvasRepAccessibility *)self crlaxIsSelectedIgnoringLocking];
  v5 = UIAccessibilityTraitSelected;
  if (!crlaxIsSelectedIgnoringLocking)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityElements
{
  if ([(CRLCanvasRepAccessibility *)self isAccessibilityElement])
  {
    crlaxChildren = 0;
  }

  else
  {
    crlaxChildren = [(CRLCanvasRepAccessibility *)self crlaxChildren];
  }

  return crlaxChildren;
}

- (id)accessibilityContainer
{
  crlaxCanvasView = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  [crlaxCanvasView crlaxEnsureChildrenAreLoaded];

  v6.receiver = self;
  v6.super_class = CRLCanvasRepAccessibility;
  accessibilityContainer = [(CRLCanvasRepAccessibility *)&v6 accessibilityContainer];

  return accessibilityContainer;
}

- (id)accessibilityPath
{
  if ([(CRLCanvasRepAccessibility *)self crlaxUsesAccessibilityPath])
  {
    if ([(CRLCanvasRepAccessibility *)self crlaxUsesParentAccessibilityPath])
    {
      crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
      accessibilityPath = [crlaxParentRep accessibilityPath];
LABEL_4:

      goto LABEL_7;
    }

    crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
    crlaxTarget = [crlaxLayout crlaxTarget];
    isInGroup = [crlaxTarget isInGroup];

    if ((isInGroup & 1) == 0)
    {
      crlaxLayout2 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
      crlaxTarget2 = [crlaxLayout2 crlaxTarget];
      pathForClippingConnectionLines = [crlaxTarget2 pathForClippingConnectionLines];
      crlaxParentRep = [pathForClippingConnectionLines copy];

      if ([crlaxParentRep isEmpty])
      {
        accessibilityPath = 0;
      }

      else
      {
        crlaxLayout3 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
        v40 = *&CGAffineTransformIdentity.c;
        v41 = *&CGAffineTransformIdentity.a;
        *&v46.a = *&CGAffineTransformIdentity.a;
        *&v46.c = v40;
        v39 = *&CGAffineTransformIdentity.tx;
        *&v46.tx = v39;
        crlaxInspectorGeometry = [crlaxLayout3 crlaxInspectorGeometry];
        v14 = crlaxInspectorGeometry;
        if (crlaxInspectorGeometry)
        {
          [crlaxInspectorGeometry crlaxAngleInRadians];
          *&v45.a = v41;
          *&v45.c = v40;
          *&v45.tx = v39;
          CGAffineTransformRotate(&v46, &v45, -v15);
          v45 = v46;
          [crlaxParentRep transformUsingAffineTransform:&v45];
          *&v46.a = v41;
          *&v46.c = v40;
          *&v46.tx = v39;
          crlaxCanvas = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
          v17 = crlaxCanvas;
          if (!crlaxCanvas || ([crlaxCanvas crlaxViewScale], v44 = v46, CGAffineTransformScale(&v45, &v44, v18, v18), v46 = v45, objc_msgSend(crlaxParentRep, "transformUsingAffineTransform:", &v45), objc_msgSend(crlaxParentRep, "bounds"), v20 == CGSizeZero.width) && v19 == CGSizeZero.height)
          {
            accessibilityPath = 0;
          }

          else
          {
            *&v46.a = v41;
            *&v46.c = v40;
            *&v46.tx = v39;
            crlaxTarget3 = [crlaxLayout3 crlaxTarget];
            v22 = crlaxTarget3;
            if (crlaxTarget3)
            {
              [crlaxTarget3 transform];
              v23 = v43;
              [v22 transform];
              v24 = v42;
            }

            else
            {
              v24 = 0.0;
              v23 = 0.0;
            }

            crlaxCanvas2 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
            [crlaxCanvas2 crlaxScreenPointFromUnscaledCanvas:{v23, v24}];
            v27 = v26;
            v29 = v28;

            v44 = v46;
            CGAffineTransformTranslate(&v45, &v44, v27, v29);
            v46 = v45;
            [crlaxParentRep transformUsingAffineTransform:&v45];
            v30 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [crlaxParentRep CGPath]);
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
              accessibilityPath = v30;
            }

            else
            {
              accessibilityPath = 0;
            }
          }
        }

        else
        {
          accessibilityPath = 0;
        }
      }

      goto LABEL_4;
    }
  }

  accessibilityPath = 0;
LABEL_7:

  return accessibilityPath;
}

- (id)accessibilityHint
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxIsInFollowingMode = [crlaxInteractiveCanvasController crlaxIsInFollowingMode];

  if (crlaxIsInFollowingMode)
  {
    v5 = +[_TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator magicTapInstruction];
  }

  else if ([(CRLCanvasRepAccessibility *)self _crlaxCanBeSelected])
  {
    crlaxInteractiveCanvasController2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    crlaxSelectedReps = [crlaxInteractiveCanvasController2 crlaxSelectedReps];
    v8 = [crlaxSelectedReps count];

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

  crlaxLockedHint = [(CRLCanvasRepAccessibility *)self crlaxLockedHint];
  v19 = __CRLAccessibilityStringForVariables(1, crlaxLockedHint, v13, v14, v15, v16, v17, v18, v5);

  return v19;
}

- (CGPoint)accessibilityActivationPoint
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];
  layerHost = [crlaxTarget layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

  MidX = -1.0;
  MidY = -1.0;
  if ((isCurrentlyInQuickSelectMode & 1) == 0)
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
  _accessibilityParentView = [(CRLCanvasRepAccessibility *)&v5 _accessibilityParentView];
  if (!_accessibilityParentView)
  {
    _accessibilityParentView = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  }

  return _accessibilityParentView;
}

- (id)accessibilityCustomActions
{
  v3 = +[NSMutableArray array];
  if ([(CRLCanvasRepAccessibility *)self isAccessibilityElement])
  {
    crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v5 = [crlaxInteractiveCanvasController crlaxActionMenuItemsForRep:self];
    [v3 addObjectsFromArray:v5];
  }

  if ([(CRLCanvasRepAccessibility *)self crlaxNeedsFormatEditOperation])
  {
    crlaxInteractiveCanvasController2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    if ([crlaxInteractiveCanvasController2 crlaxIsInFollowingMode])
    {
    }

    else
    {
      crlaxIsSelectable = [(CRLCanvasRepAccessibility *)self crlaxIsSelectable];

      if (crlaxIsSelectable)
      {
        v100 = 0;
        crlaxCanvasViewController = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
        v9 = objc_opt_class();
        v10 = __CRLAccessibilityCastAsClass(v9, crlaxCanvasViewController, 1, &v100);
        if (v100 == 1)
        {
          goto LABEL_42;
        }

        v11 = v10;

        miniFormatterPresenter = [v11 miniFormatterPresenter];
        isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

        if (isPresentingMiniFormatter)
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
  crlaxInfo = [(CRLCanvasRepAccessibility *)self crlaxInfo];
  v17 = objc_opt_class();
  v18 = __CRLAccessibilityCastAsClass(v17, crlaxInfo, 1, &v100);
  if (v100 == 1)
  {
    goto LABEL_42;
  }

  v19 = v18;

  if ([(CRLCanvasRepAccessibility *)self crlaxIsInDrawingMode]&& v19)
  {
    crlaxInteractiveCanvasController3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    crlaxEditorController = [crlaxInteractiveCanvasController3 crlaxEditorController];
    crlaxTarget = [crlaxEditorController crlaxTarget];
    v23 = [crlaxTarget mostSpecificCurrentEditorOfClass:objc_opt_class()];

    if ([v23 crlaxShouldOfferSnapToShapeFromShapeItem:v19])
    {
      snapToShapeActionName = [v23 snapToShapeActionName];
      v25 = +[CRLFreehandDrawingEditor snapToShapeActionSymbolName];
      v26 = [UIAccessibilityCustomAction alloc];
      v27 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
      v28 = [UIImage systemImageNamed:v25 withConfiguration:v27];
      v96[0] = _NSConcreteStackBlock;
      v96[1] = 3221225472;
      v96[2] = sub_100235B8C;
      v96[3] = &unk_10184B6A0;
      v97 = snapToShapeActionName;
      v98 = v25;
      v99 = v23;
      v29 = v25;
      v30 = snapToShapeActionName;
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

  crlaxInboundConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxInboundConnectedLayouts];
  v50 = +[CRLCanvasRepAccessibility inboundConnectionsString];
  v51 = [(CRLCanvasRepAccessibility *)self _makeNavigateToConnectedElementCustomActionsFor:crlaxInboundConnectedLayouts inCategory:v50 directionType:2];
  [v3 addObjectsFromArray:v51];

  crlaxOutboundConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxOutboundConnectedLayouts];
  v53 = +[CRLCanvasRepAccessibility outboundConnectionsString];
  v54 = [(CRLCanvasRepAccessibility *)self _makeNavigateToConnectedElementCustomActionsFor:crlaxOutboundConnectedLayouts inCategory:v53 directionType:4];
  [v3 addObjectsFromArray:v54];

  v100 = 0;
  crlaxConnectedConnectionLines = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v56 = objc_opt_class();
  v57 = __CRLAccessibilityCastAsClass(v56, crlaxConnectedConnectionLines, 1, &v100);
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
  crlaxInteractiveCanvasController4 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxIsInFollowingMode = [crlaxInteractiveCanvasController4 crlaxIsInFollowingMode];

  if (crlaxIsInFollowingMode)
  {
    crlaxInteractiveCanvasController5 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    crlaxTarget2 = [crlaxInteractiveCanvasController5 crlaxTarget];
    editingCoordinator = [crlaxTarget2 editingCoordinator];
    followCoordinator = [editingCoordinator followCoordinator];
    accessibilityExperienceCoordinator = [followCoordinator accessibilityExperienceCoordinator];

    lastFollowedParticipant = [accessibilityExperienceCoordinator lastFollowedParticipant];
    shortDisplayName = [lastFollowedParticipant shortDisplayName];

    v78 = [shortDisplayName length];
    v79 = +[NSBundle mainBundle];
    v80 = v79;
    if (v78)
    {
      v81 = [v79 localizedStringForKey:@"Pause following %@" value:0 table:0];

      v82 = [NSString localizedStringWithFormat:v81, shortDisplayName];
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
    v91 = accessibilityExperienceCoordinator;
    v86 = accessibilityExperienceCoordinator;
    v87 = [v83 initWithName:v82 image:v85 actionHandler:v90];

    [v3 addObject:v87];
  }

  v88 = [v3 copy];

  return v88;
}

- (id)accessibilityDragSourceDescriptors
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  repForDragging = [crlaxTarget repForDragging];

  v5 = objc_opt_class();
  info = [repForDragging info];
  v7 = sub_100014370(v5, info);

  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget2 = [crlaxInteractiveCanvasController crlaxTarget];

  if ([repForDragging isSelected] && objc_msgSend(v7, "allowedToBeDragAndDropped") && (objc_msgSend(crlaxTarget2, "canvasEditor"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "canvasEditorCanCopyWithSender:", 0), v10, v11))
  {
    [repForDragging crlaxCGRectValueForKey:@"_accessibilityVisibleFrame"];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    crlaxCanvasView = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
    crlaxTarget3 = [crlaxCanvasView crlaxTarget];
    [crlaxTarget3 convertRect:0 fromView:{v13, v15, v17, v19}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [UIAccessibilityLocationDescriptor alloc];
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"Drag Item" value:0 table:0];
    v33 = sub_100120414(v23, v25, v27, v29);
    v35 = v34;
    crlaxCanvasView2 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
    v37 = [v30 initWithName:v32 point:crlaxCanvasView2 inView:{v33, v35}];

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
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  repForSelecting = [crlaxTarget repForSelecting];

  [repForSelecting crlaxCGRectValueForKey:@"_accessibilityVisibleFrame"];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  crlaxCanvasView = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  crlaxTarget2 = [crlaxCanvasView crlaxTarget];
  [crlaxTarget2 convertRect:0 fromView:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [UIAccessibilityLocationDescriptor alloc];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"Drop Item" value:0 table:0];
  v26 = sub_100120414(v16, v18, v20, v22);
  v28 = v27;
  crlaxCanvasView2 = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  v30 = [v23 initWithName:v25 point:crlaxCanvasView2 inView:{v26, v28}];

  v33 = v30;
  v31 = [NSArray arrayWithObjects:&v33 count:1];

  return v31;
}

- (void)crlaxLoadChildrenIntoCollection:(id)collection
{
  collectionCopy = collection;
  v43 = 0;
  selfCopy = self;
  v6 = objc_opt_class();
  v7 = __CRLAccessibilityCastAsClass(v6, selfCopy, 1, &v43);
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

        crlaxAccessibilityElement = [*(*(&v39 + 1) + 8 * i) crlaxAccessibilityElement];
        if (crlaxAccessibilityElement)
        {
          [collectionCopy addObject:crlaxAccessibilityElement];
          [crlaxAccessibilityElement crlaxEnsureChildrenAreLoaded];
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
  v37[4] = selfCopy;
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
        accessibilityElementCount = [v21 accessibilityElementCount];
        if (([v21 isAccessibilityElement] & 1) != 0 || (accessibilityElementCount - 1) <= 0x7FFFFFFFFFFFFFFDLL)
        {
          [collectionCopy addObject:v21];
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
  v23 = collectionCopy;
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

        [*(*(&v29 + 1) + 8 * k) setAccessibilityContainer:selfCopy];
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

        crlaxCanvasView = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
        crlaxTarget = [crlaxCanvasView crlaxTarget];
        [(CRLCanvasRepAccessibility *)self accessibilityActivationPoint];
        [crlaxTarget convertPoint:0 fromView:?];
        v12 = v11;
        v14 = v13;

        crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
        [crlaxInteractiveCanvasController crlaxConvertBoundsToUnscaledPoint:{v12, v14}];
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

- (void)dynamicallyResizingWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v26.receiver = self;
  v26.super_class = CRLCanvasRepAccessibility;
  [(CRLCanvasRepAccessibility *)&v26 dynamicallyResizingWithTracker:trackerCopy];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    if (![crlaxTarget isBeingResized])
    {
LABEL_9:

      goto LABEL_10;
    }

    crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    crlaxTarget2 = [crlaxParentRep crlaxTarget];
    isBeingResized = [crlaxTarget2 isBeingResized];

    if ((isBeingResized & 1) == 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(CRLCanvasRepAccessibility *)self _crlaxLastBoundsAnnouncementTime];
      if (Current - v10 > 0.5)
      {
        crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
        crlaxTarget = [crlaxInteractiveCanvasController crlaxRulerUnitsInstance];

        if ([crlaxTarget crlaxRulerUnits] >= 2)
        {
          v12 = @"%.0f %@";
        }

        else
        {
          v12 = @"%.2f %@";
        }

        [trackerCopy crlaxCGRectValueForKey:@"currentBoundsForStandardKnobs"];
        v14 = v13;
        v16 = v15;
        crlaxLocalizedCompatibleRulerUnitsForCanvas = [crlaxTarget crlaxLocalizedCompatibleRulerUnitsForCanvas];
        lowercaseString = [crlaxLocalizedCompatibleRulerUnitsForCanvas lowercaseString];

        [crlaxTarget crlaxConvertPointsToRulerUnits:v14];
        v20 = [NSString stringWithFormat:v12, v19, lowercaseString];
        [crlaxTarget crlaxConvertPointsToRulerUnits:v16];
        v22 = [NSString stringWithFormat:v12, v21, lowercaseString];
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
  crlaxInboundConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxInboundConnectedLayouts];
  v5 = [crlaxInboundConnectedLayouts count];

  if (v5)
  {
    v6 = [NSString stringWithFormat:@"%ld", v5];
    v7 = +[CRLCanvasRepAccessibility inboundConnectionsString];
    v8 = [AXCustomContent customContentWithLabel:v7 value:v6];
    [v3 addObject:v8];
  }

  crlaxOutboundConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxOutboundConnectedLayouts];
  v10 = [crlaxOutboundConnectedLayouts count];

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
  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  [crlaxParentRep crlaxInvalidateChildren];

  _crlaxRepContainerElementCache = [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];
  [_crlaxRepContainerElementCache crlaxInvalidateChildren];

  _crlaxRepContainerElementCache2 = [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];
  [_crlaxRepContainerElementCache2 setRep:0];

  _crlaxRepContainerElementCache3 = [(CRLCanvasRepAccessibility *)self _crlaxRepContainerElementCache];
  [_crlaxRepContainerElementCache3 crlaxAccessibilityUnregister];

  [(CRLCanvasRepAccessibility *)self crlaxAccessibilityUnregister];
}

- (id)_crlaxPrimaryTextEditor
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];
  editorController = [crlaxTarget editorController];
  textInputEditor = [editorController textInputEditor];

  v6 = NSProtocolFromString(@"CRLCanvasEditor");
  if (([textInputEditor conformsToProtocol:v6] & 1) == 0)
  {
    crlaxCanvasEditor = [crlaxInteractiveCanvasController crlaxCanvasEditor];

    if ([crlaxCanvasEditor conformsToProtocol:v6])
    {
      textInputEditor = crlaxCanvasEditor;
    }

    else
    {

      textInputEditor = 0;
    }
  }

  return textInputEditor;
}

- (BOOL)_crlaxCanBeSelectedWithSelectableRepReference:(id *)reference
{
  crlaxRepForSelecting = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  v6 = crlaxRepForSelecting;
  if (crlaxRepForSelecting && ![(CRLCanvasRepAccessibility *)crlaxRepForSelecting crlaxIsSelected])
  {
    v9 = 1;
    if (!reference)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v7 = [(CRLCanvasRepAccessibility *)self crlaxAncestorOfType:objc_opt_class()];
  v9 = v6 != self && v7 == v6;

  if (reference)
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

    *reference = v10;
  }

LABEL_14:

  return v9;
}

- (void)_crlaxGoToFormatInspector
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxGoToFormatInspector];

  v16 = 0;
  crlaxCanvasViewController = [(CRLCanvasRepAccessibility *)self crlaxCanvasViewController];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, crlaxCanvasViewController, 1, &v16);
  if (v16 == 1 || (v7 = v6, crlaxCanvasViewController, v15 = 0, [v7 miniFormatterPresenter], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "crlaxMiniFormatterViewController"), v9 = objc_claimAutoreleasedReturnValue(), v8, v10 = objc_opt_class(), __CRLAccessibilityCastAsClass(v10, v9, 1, &v15), v11 = objc_claimAutoreleasedReturnValue(), v15 == 1))
  {
    abort();
  }

  v12 = v11;

  crlaxAccessibilityViews = [v12 crlaxAccessibilityViews];
  firstObject = [crlaxAccessibilityViews firstObject];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, firstObject);
}

- (BOOL)_crlaxReaderModePerformCopy
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];

  crlaxRepForSelecting = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  crlaxTarget2 = [crlaxRepForSelecting crlaxTarget];

  canvasEditor = [crlaxTarget canvasEditor];
  info = [crlaxTarget2 info];
  v9 = [canvasEditor selectionPathWithInfo:info];

  crlaxTarget3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  [CRLAccessibilityReaderModeCopyOperator performCopyOperationWithSelectionPath:v9 interactiveCanvasController:crlaxTarget sender:crlaxTarget3];

  return 1;
}

- (id)_makeNavigateToConnectedElementCustomActionsFor:(id)for inCategory:(id)category directionType:(int)type
{
  forCopy = for;
  categoryCopy = category;
  v32 = objc_opt_new();
  v33 = [CRLCanvasRepAccessibility crlaxDisambiguatedConnectionDescriptionsForSet:forCopy];
  v8 = +[NSBundle mainBundle];
  v28 = [v8 localizedStringForKey:@"Go to %@" value:0 table:0];

  v9 = +[NSBundle mainBundle];
  v29 = [v9 localizedStringForKey:@"Follow %1$@ to %2$@" value:0 table:0];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = forCopy;
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

          v20 = [(CRLCanvasRepAccessibility *)self crlaxDescriptionOfSingleConnectionLineConnectingToLayout:v16 inDirection:type];
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
          [v25 setLocalizedActionRotorCategory:categoryCopy];
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
  selfCopy = self;
  v2 = [NSArray arrayWithObjects:&selfCopy count:1];

  return v2;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  crlaxCanvasView = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  crlaxTarget = [crlaxCanvasView crlaxTarget];

  return crlaxTarget;
}

- (UIFocusItemContainer)focusItemContainer
{
  crlaxCanvasView = [(CRLCanvasRepAccessibility *)self crlaxCanvasView];
  crlaxTarget = [crlaxCanvasView crlaxTarget];

  return crlaxTarget;
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

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  parentFocusEnvironment = [(CRLCanvasRepAccessibility *)self parentFocusEnvironment];
  v6 = [parentFocusEnvironment shouldUpdateFocusInContext:contextCopy];

  return v6;
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)accessibilityLabel
{
  crlaxLabel = [(CRLCanvasRepAccessibility *)self crlaxLabel];
  if ([(CRLCanvasRepAccessibility *)self crlaxIsContainedTextRep])
  {
    v40 = 0;
    crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    parentRep = [crlaxTarget parentRep];

    v6 = objc_opt_class();
    v7 = __CRLAccessibilityCastAsSafeCategory(v6, parentRep, 1, &v40);
    if (v40 == 1)
    {
      goto LABEL_14;
    }

    v8 = v7;

    crlaxLabel2 = [v8 crlaxLabel];
    crlaxCollaboratorDescription = [(CRLCanvasRepAccessibility *)self crlaxCollaboratorDescription];
    v17 = __CRLAccessibilityStringForVariables(1, crlaxLabel2, v11, v12, v13, v14, v15, v16, crlaxCollaboratorDescription);

    crlaxLabel = v17;
  }

  if (!crlaxLabel)
  {
    v39 = 0;
    crlaxTarget2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    info = [crlaxTarget2 info];

    v28 = objc_opt_class();
    v29 = __CRLAccessibilityCastAsClass(v28, info, 1, &v39);
    if (v39 != 1)
    {
      crlaxGroupAndLockStatusString2 = v29;

      localizedName = [crlaxGroupAndLockStatusString2 localizedName];
      if ([localizedName length])
      {
        crlaxGroupAndLockStatusString = [(CRLCanvasRepAccessibility *)self crlaxGroupAndLockStatusString];
        v25 = __CRLAccessibilityStringForVariables(1, localizedName, v32, v33, v34, v35, v36, v37, crlaxGroupAndLockStatusString);
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

  crlaxGroupAndLockStatusString2 = [(CRLCanvasRepAccessibility *)self crlaxGroupAndLockStatusString];
  v25 = __CRLAccessibilityStringForVariables(1, crlaxLabel, v19, v20, v21, v22, v23, v24, crlaxGroupAndLockStatusString2);
LABEL_11:

  return v25;
}

- (id)accessibilityValue
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  canvas = [crlaxTarget canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  crlaxValue = [(CRLCanvasRepAccessibility *)self crlaxValue];
  if (isCanvasInteractive)
  {
    crlaxCollaboratorDescription = [(CRLCanvasRepAccessibility *)self crlaxCollaboratorDescription];
    v14 = __CRLAccessibilityStringForVariables(1, crlaxValue, v8, v9, v10, v11, v12, v13, crlaxCollaboratorDescription);

    crlaxValue = v14;
  }

  return crlaxValue;
}

- (id)accessibilityUserInputLabels
{
  crlaxUserInputLabels = [(CRLCanvasRepAccessibility *)self crlaxUserInputLabels];
  if (!crlaxUserInputLabels)
  {
    v5.receiver = self;
    v5.super_class = CRLCanvasRepAccessibility;
    crlaxUserInputLabels = [(CRLCanvasRepAccessibility *)&v5 accessibilityUserInputLabels];
  }

  return crlaxUserInputLabels;
}

- (CRLCanvasRep)crlaxRetainedTarget
{
  if ([(CRLCanvasRepAccessibility *)self _crlaxShouldPreventAccessToCanvas])
  {
    crlaxTarget = 0;
  }

  else
  {
    crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  }

  return crlaxTarget;
}

- (CGRect)crlaxFrameInUnscaledCanvas
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  crlaxShouldSetAccessibilityFrameWithFrameInUnscaledCanvasForMarqueeSelecting = [crlaxTarget crlaxShouldSetAccessibilityFrameWithFrameInUnscaledCanvasForMarqueeSelecting];
  crlaxTarget2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  v6 = crlaxTarget2;
  if (crlaxShouldSetAccessibilityFrameWithFrameInUnscaledCanvasForMarqueeSelecting)
  {
    [crlaxTarget2 frameInUnscaledCanvasForMarqueeSelecting];
  }

  else
  {
    [crlaxTarget2 frameInUnscaledCanvas];
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
  crlaxRetainedTarget = [(CRLCanvasRepAccessibility *)self crlaxRetainedTarget];
  [crlaxRetainedTarget layerFrameInScaledCanvas];
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
  crlaxCanvas = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
  [(CRLCanvasRepAccessibility *)self crlaxFrameInUnscaledCanvas];
  [crlaxCanvas crlaxScreenFrameFromUnscaledCanvas:?];
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
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  canvas = [crlaxTarget canvas];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, canvas, 1, &v8);
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
  crlaxCanvas = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
  crlaxInteractiveCanvasController = [crlaxCanvas crlaxInteractiveCanvasController];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, crlaxInteractiveCanvasController, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLCanvasViewAccessibility)crlaxCanvasView
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView = [crlaxInteractiveCanvasController crlaxCanvasView];

  return crlaxCanvasView;
}

- (CRLCanvasRepAccessibility)crlaxParentRep
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  parentRep = [crlaxTarget parentRep];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, parentRep, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLCanvasElementInfo)crlaxInfo
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];

  return info;
}

- (CRLCanvasLayoutAccessibility)crlaxLayout
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  layout = [crlaxTarget layout];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, layout, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxIsSelectedIgnoringLocking
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  isSelectedIgnoringLocking = [crlaxTarget isSelectedIgnoringLocking];

  if (isSelectedIgnoringLocking)
  {
    return 1;
  }

  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  crlaxTarget2 = [crlaxParentRep crlaxTarget];
  isSelectedIgnoringLocking2 = [crlaxTarget2 isSelectedIgnoringLocking];

  return isSelectedIgnoringLocking2;
}

- (BOOL)crlaxIsSelected
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  isSelected = [crlaxTarget isSelected];

  if (isSelected)
  {
    v5 = 1;
  }

  else
  {
    crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
    if ([crlaxParentRep crlaxIsSelected])
    {
      crlaxParentRep2 = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
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
  selfCopy = self;
  crlaxRepForSelecting = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  LOBYTE(selfCopy) = crlaxRepForSelecting == selfCopy;

  return selfCopy;
}

- (CRLCanvasRepAccessibility)crlaxRepForSelecting
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];

  if (crlaxInteractiveCanvasController)
  {
    v9 = 0;
    crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    repForSelecting = [crlaxTarget repForSelecting];

    v6 = objc_opt_class();
    v7 = __CRLAccessibilityCastAsSafeCategory(v6, repForSelecting, 1, &v9);
    if (v9 == 1)
    {
      abort();
    }

    crlaxInteractiveCanvasController = v7;
  }

  return crlaxInteractiveCanvasController;
}

- (BOOL)crlaxShouldCreateKnobs
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  shouldCreateKnobs = [crlaxTarget shouldCreateKnobs];

  return shouldCreateKnobs;
}

- (BOOL)crlaxIsDraggable
{
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxIsDraggable = [crlaxLayout crlaxIsDraggable];

  return crlaxIsDraggable;
}

- (CGRect)crlaxNaturalBounds
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  [crlaxTarget naturalBounds];
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
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxInspectorGeometry = [crlaxLayout crlaxInspectorGeometry];
  [crlaxInspectorGeometry crlaxSize];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v8 = [crlaxInteractiveCanvasController crlaxDescriptionOfPointValueConvertedToRulerUnit:v6];

    v9 = [NSString stringWithFormat:@"%1$@", v8];
  }

  return v9;
}

- (NSString)crlaxWidthDescription
{
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxInspectorGeometry = [crlaxLayout crlaxInspectorGeometry];
  [crlaxInspectorGeometry crlaxSize];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
    v8 = [crlaxInteractiveCanvasController crlaxDescriptionOfPointValueConvertedToRulerUnit:v6];

    v9 = [NSString stringWithFormat:@"%1$@", v8];
  }

  return v9;
}

- (NSString)crlaxRotationDescription
{
  crlaxLayout = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  crlaxInspectorGeometry = [crlaxLayout crlaxInspectorGeometry];
  [crlaxInspectorGeometry crlaxAngleInDegrees];
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
    crlaxLayoutDescription = [(CRLCanvasRepAccessibility *)self crlaxLayoutDescription];
  }

  else
  {
    crlaxLayoutDescription = 0;
  }

  if ([crlaxLayoutDescription length])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Nearby" value:0 table:0];
    v7 = [AXCustomContent customContentWithLabel:v6 value:crlaxLayoutDescription];
    [v3 addObject:v7];
  }

  crlaxHeightDescription = [(CRLCanvasRepAccessibility *)self crlaxHeightDescription];
  if ([crlaxHeightDescription length])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Height" value:0 table:0];
    v11 = [AXCustomContent customContentWithLabel:v10 value:crlaxHeightDescription];
    [v3 addObject:v11];
  }

  crlaxWidthDescription = [(CRLCanvasRepAccessibility *)self crlaxWidthDescription];
  if ([crlaxWidthDescription length])
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Width" value:0 table:0];
    v15 = [AXCustomContent customContentWithLabel:v14 value:crlaxWidthDescription];
    [v3 addObject:v15];
  }

  crlaxRotationDescription = [(CRLCanvasRepAccessibility *)self crlaxRotationDescription];
  if ([crlaxRotationDescription length])
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Rotation" value:0 table:0];
    v19 = [AXCustomContent customContentWithLabel:v18 value:crlaxRotationDescription];
    [v3 addObject:v19];
  }

  if (objc_opt_respondsToSelector())
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1005447F0;
    v29[3] = &unk_10183AE28;
    v30 = v3;
    selfCopy = self;
    if (__CRLAccessibilityPerformSafeBlock(v29))
    {
      abort();
    }
  }

  crlaxConnectedConnectionLines = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v21 = [crlaxConnectedConnectionLines count];

  crlaxConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxConnectedLayouts];
  v23 = [crlaxConnectedLayouts count];

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
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  isLocked = [crlaxTarget isLocked];

  return isLocked;
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
  crlaxTitle = [(CRLCanvasRepAccessibility *)self crlaxTitle];
  v3 = crlaxTitle != 0;

  return v3;
}

- (BOOL)crlaxContainsCaption
{
  crlaxCaption = [(CRLCanvasRepAccessibility *)self crlaxCaption];
  v3 = crlaxCaption != 0;

  return v3;
}

- (NSString)crlaxTitle
{
  _crlaxDrawableInfoAccessibility = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  crlaxUserProvidedTitle = [_crlaxDrawableInfoAccessibility crlaxUserProvidedTitle];

  return crlaxUserProvidedTitle;
}

- (NSString)crlaxCaption
{
  _crlaxDrawableInfoAccessibility = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  crlaxUserProvidedCaption = [_crlaxDrawableInfoAccessibility crlaxUserProvidedCaption];

  return crlaxUserProvidedCaption;
}

- (NSString)crlaxTitleLabel
{
  _crlaxDrawableInfoAccessibility = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  crlaxUserProvidedTitleLabel = [_crlaxDrawableInfoAccessibility crlaxUserProvidedTitleLabel];

  return crlaxUserProvidedTitleLabel;
}

- (NSString)crlaxCaptionLabel
{
  _crlaxDrawableInfoAccessibility = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  crlaxUserProvidedCaptionLabel = [_crlaxDrawableInfoAccessibility crlaxUserProvidedCaptionLabel];

  return crlaxUserProvidedCaptionLabel;
}

- (NSString)crlaxItemTypeDescription
{
  _crlaxDrawableInfoAccessibility = [(CRLCanvasRepAccessibility *)self _crlaxDrawableInfoAccessibility];
  crlaxTypeDescription = [_crlaxDrawableInfoAccessibility crlaxTypeDescription];

  return crlaxTypeDescription;
}

- (id)_crlaxDrawableInfo
{
  v3 = objc_opt_class();
  crlaxInfo = [(CRLCanvasRepAccessibility *)self crlaxInfo];
  v5 = __CRLAccessibilityCastAsClass(v3, crlaxInfo, 0, 0);

  return v5;
}

- (id)_crlaxDrawableInfoAccessibility
{
  v3 = objc_opt_class();
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];
  v6 = __CRLAccessibilityCastAsSafeCategory(v3, info, 0, 0);

  return v6;
}

- (BOOL)crlaxInReadOnlyMode
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxDocumentIsSharedReadOnly = [crlaxInteractiveCanvasController crlaxDocumentIsSharedReadOnly];

  return crlaxDocumentIsSharedReadOnly;
}

- (NSArray)crlaxKnobAccessibilityElements
{
  v66 = 0;
  crlaxRetainedTarget = [(CRLCanvasRepAccessibility *)self crlaxRetainedTarget];
  knobs = [crlaxRetainedTarget knobs];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, knobs, 1, &v66);
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

  selfCopy3 = self;
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
              crlaxTarget = [(CRLCanvasRepAccessibility *)selfCopy3 crlaxTarget];
              interactiveCanvasController = [crlaxTarget interactiveCanvasController];
              documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

              crlaxTarget2 = [v27 crlaxTarget];
              worksWhenDocumentIsSharedReadOnly = [crlaxTarget2 worksWhenDocumentIsSharedReadOnly];

              if (!documentIsSharedReadOnly || worksWhenDocumentIsSharedReadOnly)
              {
                if ([(CRLCanvasRepAccessibility *)selfCopy3 crlaxShouldCreateAccessibilityElementForKnob:v27, v49])
                {
                  v56 = 0u;
                  v57 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  _crlaxKnobAccessibilityElementsCache = [(CRLCanvasRepAccessibility *)selfCopy3 _crlaxKnobAccessibilityElementsCache];
                  v34 = [_crlaxKnobAccessibilityElementsCache countByEnumeratingWithState:&v54 objects:v67 count:16];
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
                        objc_enumerationMutation(_crlaxKnobAccessibilityElementsCache);
                      }

                      v38 = *(*(&v54 + 1) + 8 * v37);
                      if ([v38 isEqualToKnob:v27])
                      {
                        break;
                      }

                      if (v35 == ++v37)
                      {
                        v35 = [_crlaxKnobAccessibilityElementsCache countByEnumeratingWithState:&v54 objects:v67 count:16];
                        if (v35)
                        {
                          goto LABEL_25;
                        }

                        goto LABEL_31;
                      }
                    }

                    v39 = v38;

                    selfCopy3 = self;
                    if (v39)
                    {
                      goto LABEL_34;
                    }
                  }

                  else
                  {
LABEL_31:

                    selfCopy3 = self;
                  }

                  crlaxIdentifier = [v27 crlaxIdentifier];
                  v39 = [(CRLCanvasRepAccessibility *)selfCopy3 crlaxNewKnobElementForKnob:v27 withIdentifier:crlaxIdentifier];

LABEL_34:
                  [v39 setParentRep:selfCopy3];
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

    _crlaxKnobAccessibilityElementsCache2 = [(CRLCanvasRepAccessibility *)selfCopy3 _crlaxKnobAccessibilityElementsCache];

    if (_crlaxKnobAccessibilityElementsCache2)
    {
      _crlaxKnobAccessibilityElementsCache3 = [(CRLCanvasRepAccessibility *)selfCopy3 _crlaxKnobAccessibilityElementsCache];
      v43 = [NSMutableSet setWithArray:_crlaxKnobAccessibilityElementsCache3];

      v44 = [NSSet setWithArray:v52];
      [v43 minusSet:v44];

      allObjects = [v43 allObjects];
      [(CRLCanvasRepAccessibility *)selfCopy3 _crlaxInvalidateKnobAccessibilityElements:allObjects];
    }

    [(CRLCanvasRepAccessibility *)selfCopy3 _crlaxSetKnobAccessibilityElementsCache:v52, v49];
    [(CRLCanvasRepAccessibility *)selfCopy3 _crlaxSetKnobElementCacheIsInvalid:0];

    v6 = v50;
  }

  _crlaxKnobAccessibilityElementsCache4 = [(CRLCanvasRepAccessibility *)selfCopy3 _crlaxKnobAccessibilityElementsCache];
  v47 = [_crlaxKnobAccessibilityElementsCache4 copy];

  return v47;
}

- (id)crlaxKnobForTag:(unint64_t)tag index:(unint64_t)index identifier:(id)identifier
{
  identifierCopy = identifier;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  knobs = [crlaxTarget knobs];

  v11 = [knobs countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(knobs);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      v16 = objc_opt_class();
      v17 = __CRLAccessibilityCastAsSafeCategory(v16, v15, 0, 0);
      v18 = v17;
      if (v17)
      {
        if ([v17 crlaxKnobTag] == tag && objc_msgSend(v18, "crlaxNodeIndex") == index)
        {
          crlaxIdentifier = [v18 crlaxIdentifier];

          if (crlaxIdentifier == identifierCopy)
          {
            break;
          }
        }
      }

      if (v12 == ++v14)
      {
        v12 = [knobs countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (id)crlaxKnobElementForTag:(unint64_t)tag index:(unint64_t)index identifier:(id)identifier
{
  identifierCopy = identifier;
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
        if ([v14 knobTag] == tag && objc_msgSend(v14, "knobNodeIndex") == index)
        {
          crlaxIdentifier = [v14 crlaxIdentifier];

          if (crlaxIdentifier == identifierCopy)
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
    accessibilityLabel = [(CRLCanvasRepAccessibility *)self accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

- (NSString)crlaxCollaboratorDescriptionDirect
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  canvas = [crlaxTarget canvas];
  canvasController = [canvas canvasController];
  if (!canvasController)
  {
    v12 = 0;
    goto LABEL_6;
  }

  v6 = canvasController;
  crlaxTarget2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  shouldShowCollaboratorCursorHighlight = [crlaxTarget2 shouldShowCollaboratorCursorHighlight];

  if (shouldShowCollaboratorCursorHighlight)
  {
    crlaxTarget3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    p_currentCollaboratorPresence = [crlaxTarget3 p_currentCollaboratorPresence];
    crlaxTarget = [p_currentCollaboratorPresence displayName];

    if (![crlaxTarget length])
    {
      v12 = 0;
      goto LABEL_7;
    }

    v11 = +[NSBundle mainBundle];
    canvas = [v11 localizedStringForKey:@"Selected by %@" value:0 table:0];

    v12 = [NSString stringWithFormat:canvas, crlaxTarget];
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
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  layout = [crlaxTarget layout];
  isInGroup = [layout isInGroup];

  return isInGroup;
}

- (NSString)crlaxGroupAndLockStatusString
{
  v3 = +[NSMutableArray array];
  crlaxIsLockedDirectly = [(CRLCanvasRepAccessibility *)self crlaxIsLockedDirectly];
  if ([(CRLCanvasRepAccessibility *)self crlaxIsLocked])
  {
    v5 = ![(CRLCanvasRepAccessibility *)self crlaxIsLockedDirectly];
  }

  else
  {
    v5 = 0;
  }

  if (crlaxIsLockedDirectly)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"locked" value:0 table:0];
    [v3 addObject:v7];
  }

  if ([(CRLCanvasRepAccessibility *)self crlaxIsInGroup])
  {
    crlaxMostDirectGroupAccessibilityDescription = [(CRLCanvasRepAccessibility *)self crlaxMostDirectGroupAccessibilityDescription];
    if ([crlaxMostDirectGroupAccessibilityDescription length])
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"in %@ value:group" table:{0, 0}];

      v11 = [NSString localizedStringWithFormat:v10, crlaxMostDirectGroupAccessibilityDescription];
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
  crlaxInfo = [(CRLCanvasRepAccessibility *)self crlaxInfo];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClassAndProtocol(v3, &OBJC_PROTOCOL___CRLCanvasLockableElementInfo, crlaxInfo, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  if (v5)
  {
    locked = [v5 locked];
  }

  else
  {
    locked = 0;
  }

  return locked;
}

- (void)crlaxDeselectAll
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxDeselectAll];
}

- (void)crlaxDeselectRep
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxDeselectRep:self];
}

- (void)crlaxAddToSelection
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxAddRepToSelection:self];
}

- (void)_crlaxRotateClockwiseByDegrees:(double)degrees
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  repForRotating = [crlaxTarget repForRotating];

  v7 = [[CRLCanvasRepRotateTracker alloc] initWithRep:repForRotating];
  v8 = objc_alloc_init(CRLCanvasRepAccessibilityRotationTrackerManipulator);
  [(CRLCanvasRepAccessibilityRotationTrackerManipulator *)v8 setRotationTracker:v7];
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget2 = [crlaxInteractiveCanvasController crlaxTarget];

  tmCoordinator = [crlaxTarget2 tmCoordinator];
  [tmCoordinator registerTrackerManipulator:v8];
  [tmCoordinator takeControlWithTrackerManipulator:v8];
  dynamicOperationController = [crlaxTarget2 dynamicOperationController];
  [dynamicOperationController beginOperation];
  v13 = [NSSet alloc];
  v16 = repForRotating;
  v14 = [NSArray arrayWithObjects:&v16 count:1];
  v15 = [v13 initWithArray:v14];

  [dynamicOperationController startTransformingReps:v15];
  [(CRLCanvasRepRotateTracker *)v7 addRotateDelta:degrees * 0.0174532925];
  [dynamicOperationController handleTrackerManipulator:v8];
  [(CRLCanvasRepAccessibilityRotationTrackerManipulator *)v8 setDoneWithDynamicOperation:1];
  [dynamicOperationController handleTrackerManipulator:v8];
  [crlaxTarget2 layoutIfNeeded];
}

- (BOOL)crlaxMayRotate
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  repForRotating = [crlaxTarget repForRotating];
  crlaxTarget2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  if (repForRotating != crlaxTarget2 || [(CRLCanvasRepAccessibility *)self crlaxIsInGroup]|| [(CRLCanvasRepAccessibility *)self crlaxIsLocked]|| [(CRLCanvasRepAccessibility *)self crlaxInReadOnlyMode])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    crlaxTarget3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    if ([crlaxTarget3 containsUnknownContent])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
      v6 = [crlaxInteractiveCanvasController crlaxIsInFollowingMode] ^ 1;
    }
  }

  return v6;
}

- (BOOL)crlaxIsContainedTextRep
{
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  parentRep = [crlaxTarget parentRep];

  if (parentRep)
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

- (id)crlaxNewKnobElementForKnob:(id)knob withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  knobCopy = knob;
  v8 = [CRLCanvasKnobAccessibilityElement alloc];
  crlaxKnobTag = [knobCopy crlaxKnobTag];
  crlaxNodeIndex = [knobCopy crlaxNodeIndex];

  v11 = [(CRLCanvasKnobAccessibilityElement *)v8 initWithKnobTag:crlaxKnobTag nodeIndex:crlaxNodeIndex parentRep:self identifier:identifierCopy];
  return v11;
}

- (CGPoint)crlaxConvertNaturalPointFromUnscaledCanvas:(CGPoint)canvas
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
  canvasCopy = canvas;
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

- (CGRect)crlaxConvertNaturalRectFromUnscaledCanvas:(CGRect)canvas
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
  canvasCopy = canvas;
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

- (CGPoint)crlaxConvertNaturalPointToUnscaledCanvas:(CGPoint)canvas
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
  canvasCopy = canvas;
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

- (CGRect)crlaxConvertNaturalRectToUnscaledCanvas:(CGRect)canvas
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
  canvasCopy = canvas;
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

- (CGPoint)crlaxConvertNaturalPointToScreenSpace:(CGPoint)space
{
  [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalRectToScreenSpace:space.x, space.y, 0.0, 0.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)crlaxConvertNaturalRectToScreenSpace:(CGRect)space
{
  [(CRLCanvasRepAccessibility *)self crlaxConvertNaturalRectToUnscaledCanvas:space.origin.x, space.origin.y, space.size.width, space.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxConvertUnscaledToBoundsRect:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  crlaxInteractiveCanvasController2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView = [crlaxInteractiveCanvasController2 crlaxCanvasView];

  [crlaxCanvasView crlaxFrameFromBounds:{v14, v16, v18, v20}];
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

- (CGRect)crlaxConvertLayerRelativeRectToNaturalRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CRLCanvasRepAccessibility *)self crlaxTransformToConvertNaturalFromLayerRelative];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (BOOL)crlaxBezierPathContainsUnscaledCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  layout = [crlaxTarget layout];
  convexHullPath = [layout convexHullPath];

  [(CRLCanvasRepAccessibility *)selfCopy crlaxConvertNaturalPointFromUnscaledCanvas:x, y];
  LOBYTE(selfCopy) = [convexHullPath containsPoint:?];

  return selfCopy;
}

- (void)crlaxClearKnobAccessibilityElementCache
{
  _crlaxKnobAccessibilityElementsCache = [(CRLCanvasRepAccessibility *)self _crlaxKnobAccessibilityElementsCache];
  [(CRLCanvasRepAccessibility *)self _crlaxInvalidateKnobAccessibilityElements:_crlaxKnobAccessibilityElementsCache];

  [(CRLCanvasRepAccessibility *)self _crlaxSetKnobAccessibilityElementsCache:0];
}

- (BOOL)crlaxOpenURL
{
  v8 = 0;
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, selfCopy, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  if (v5)
  {
    item = [v5 item];
    [_TtC8Freeform12CRLURLEditor openItemURLFor:item];
  }

  return v5 != 0;
}

- (NSString)crlaxDefaultDescriptionForConnections
{
  accessibilityLabel = [(CRLCanvasRepAccessibility *)self accessibilityLabel];
  v4 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionDescriptionTokenFromString:accessibilityLabel];
  accessibilityValue = [(CRLCanvasRepAccessibility *)self accessibilityValue];
  v6 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionDescriptionTokenFromString:accessibilityValue];
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
  _crlaxRepForConnectionLineMapping = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  v20 = 0;
  layout = [_crlaxRepForConnectionLineMapping layout];
  connectedLayouts = [layout connectedLayouts];

  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, connectedLayouts, 1, &v20);
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
  _crlaxRepForConnectionLineMapping = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  crlaxConnectedConnectionLines = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = crlaxConnectedConnectionLines;
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
        layout = [_crlaxRepForConnectionLineMapping layout];
        v13 = [v11 crlaxOppositeConnectedLayoutFrom:layout];

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
  crlaxBidirectionallyConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxBidirectionallyConnectedLayouts];
  v4 = [NSMutableSet setWithSet:crlaxBidirectionallyConnectedLayouts];

  crlaxStrictlyInboundConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxStrictlyInboundConnectedLayouts];
  [v4 unionSet:crlaxStrictlyInboundConnectedLayouts];

  return v4;
}

- (NSSet)crlaxStrictlyInboundConnectedLayouts
{
  _crlaxLayoutsConnectedByStrictlyInboundConnectionLines = [(CRLCanvasRepAccessibility *)self _crlaxLayoutsConnectedByStrictlyInboundConnectionLines];
  crlaxBidirectionallyConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxBidirectionallyConnectedLayouts];
  v5 = [_crlaxLayoutsConnectedByStrictlyInboundConnectionLines crl_setBySubtractingSet:crlaxBidirectionallyConnectedLayouts];

  return v5;
}

- (NSSet)crlaxOutboundConnectedLayouts
{
  crlaxBidirectionallyConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxBidirectionallyConnectedLayouts];
  v4 = [NSMutableSet setWithSet:crlaxBidirectionallyConnectedLayouts];

  crlaxStrictlyOutboundConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxStrictlyOutboundConnectedLayouts];
  [v4 unionSet:crlaxStrictlyOutboundConnectedLayouts];

  return v4;
}

- (NSSet)crlaxStrictlyOutboundConnectedLayouts
{
  _crlaxLayoutsConnectedByStrictlyOutboundConnectionLines = [(CRLCanvasRepAccessibility *)self _crlaxLayoutsConnectedByStrictlyOutboundConnectionLines];
  crlaxBidirectionallyConnectedLayouts = [(CRLCanvasRepAccessibility *)self crlaxBidirectionallyConnectedLayouts];
  v5 = [_crlaxLayoutsConnectedByStrictlyOutboundConnectionLines crl_setBySubtractingSet:crlaxBidirectionallyConnectedLayouts];

  return v5;
}

- (NSSet)crlaxBidirectionallyConnectedLayouts
{
  _crlaxBidirectionallyConnectedLayoutsViaSingleBidirectionalConnectionLines = [(CRLCanvasRepAccessibility *)self _crlaxBidirectionallyConnectedLayoutsViaSingleBidirectionalConnectionLines];
  v4 = [NSMutableSet setWithSet:_crlaxBidirectionallyConnectedLayoutsViaSingleBidirectionalConnectionLines];

  _crlaxBidirectionallyConnectedLayoutsViaMultipleUnidirectionalConnectionLines = [(CRLCanvasRepAccessibility *)self _crlaxBidirectionallyConnectedLayoutsViaMultipleUnidirectionalConnectionLines];
  [v4 unionSet:_crlaxBidirectionallyConnectedLayoutsViaMultipleUnidirectionalConnectionLines];

  return v4;
}

- (BOOL)crlaxHasAvailableRepsForConnecting
{
  _crlaxAvailableRepsForConnecting = [(CRLCanvasRepAccessibility *)self _crlaxAvailableRepsForConnecting];
  v3 = [_crlaxAvailableRepsForConnecting count] != 0;

  return v3;
}

- (id)crlaxDescriptionOfSingleConnectionLineConnectingToLayout:(id)layout inDirection:(int)direction
{
  v4 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionLinesConnectingToLayout:layout inDirection:*&direction];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    crlaxTarget = [v5 crlaxTarget];
    shapeInfo = [crlaxTarget shapeInfo];
    accessibilityDescription = [shapeInfo accessibilityDescription];
  }

  else
  {
    accessibilityDescription = 0;
  }

  return accessibilityDescription;
}

- (unint64_t)clraxNumberOfStrictlyInboundConnectionsFromLayout:(id)layout
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionLinesConnectingToLayout:layout inDirection:1];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)clraxNumberOfStrictlyOutboundConnectionsToLayout:(id)layout
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionLinesConnectingToLayout:layout inDirection:3];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)clraxNumberOfBidirectionalSingleConnectionsForLayout:(id)layout
{
  v3 = [(CRLCanvasRepAccessibility *)self _crlaxConnectionLinesConnectingToLayout:layout inDirection:5];
  v4 = [v3 count];

  return v4;
}

+ (id)crlaxDisambiguatedConnectionDescriptionsForSet:(id)set
{
  setCopy = set;
  v50 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(setCopy, "count")}];
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(setCopy, "count")}];
  v63 = 0;
  v5 = setCopy;
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
        crlaxTarget = [v21 crlaxTarget];
        allowsConnections = [crlaxTarget allowsConnections];

        if (allowsConnections)
        {
          crlaxDescriptionForConnections = [v21 crlaxDescriptionForConnections];
          v25 = [v4 objectForKeyedSubscript:crlaxDescriptionForConnections];
          if (!v25)
          {
            v25 = objc_alloc_init(NSMutableArray);
          }

          [v25 addObject:v21];
          [v4 setObject:v25 forKeyedSubscript:crlaxDescriptionForConnections];
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
            crlaxTarget2 = [v31 crlaxTarget];
            v33 = [p_info + 6 crlaxBoardItemIDForLayout:crlaxTarget2];

            if (v33)
            {
              if ([v29 count] == 1)
              {
                [v50 setObject:v28 forKeyedSubscript:v33];
              }

              else
              {
                disambiguatedConnectionDescriptionFormat = [p_info + 6 disambiguatedConnectionDescriptionFormat];
                v35 = [v29 count];
                crlaxTarget3 = [v31 crlaxTarget];
                [crlaxTarget3 frameInRoot];
                v68.x = sub_100122154(v37, v38);
                v39 = NSStringFromCGPoint(v68);
                v40 = [NSString localizedStringWithFormat:disambiguatedConnectionDescriptionFormat, v28, v30, v35, v39, v43, v44];
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

+ (id)crlaxBoardItemIDForLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  info = [layoutCopy info];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, info, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  v8 = [v7 id];

  return v8;
}

- (id)crlaxRemoveExtensionFromFile:(id)file inString:(id)string
{
  stringCopy = string;
  fileCopy = file;
  stringByDeletingPathExtension = [fileCopy stringByDeletingPathExtension];
  crl_range = [stringCopy crl_range];
  v10 = [stringCopy stringByReplacingOccurrencesOfString:fileCopy withString:stringByDeletingPathExtension options:0 range:{crl_range, v9}];

  return v10;
}

- (BOOL)crlaxFullscreenPreviewFile
{
  v7 = 0;
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, selfCopy, 1, &v7);
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

- (id)crlaxValueForKey:(id)key
{
  keyCopy = key;
  if ([(CRLCanvasRepAccessibility *)self _crlaxShouldPreventAccessToCanvas]&& [(CRLCanvasRepAccessibility *)self _crlaxKeyCorrespondsToPropertyRequiringAccessToCanvas:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLCanvasRepAccessibility;
    v5 = [(CRLCanvasRepAccessibility *)&v7 crlaxValueForKey:keyCopy];
  }

  return v5;
}

- (void)_crlaxInvalidateKnobAccessibilityElements:(id)elements
{
  elementsCopy = elements;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [elementsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(elementsCopy);
        }

        [*(*(&v8 + 1) + 8 * v7) setParentRep:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [elementsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)_crlaxKeyCorrespondsToPropertyRequiringAccessToCanvas:(id)canvas
{
  v4 = 0;
  v9 = *off_10186DF28;
  v10 = *off_10186DF38;
  v11 = *off_10186DF48;
  v12 = *off_10186DF58;
  do
  {
    v5 = [canvas isEqualToString:{*(&v9 + v4), v9, v10, v11, v12}];
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
  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  if ([(CRLCanvasRepAccessibility *)self crlaxIsContainedTextRep])
  {
    crlaxTarget2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
    parentRep = [crlaxTarget2 parentRep];

    crlaxTarget = parentRep;
  }

  return crlaxTarget;
}

- (id)_crlaxConnectionLinesConnectingToLayout:(id)layout inDirection:(int)direction
{
  layoutCopy = layout;
  v20 = +[NSMutableArray array];
  _crlaxRepForConnectionLineMapping = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  layout = [_crlaxRepForConnectionLineMapping layout];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  crlaxConnectedConnectionLines = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v10 = [crlaxConnectedConnectionLines countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(crlaxConnectedConnectionLines);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = [v14 crlaxOppositeConnectedLayoutFrom:layout];
        if (v15 == layoutCopy)
        {
          v16 = [v14 crlaxIsVisuallyPointingAt:layout];
          v17 = [v14 crlaxIsVisuallyPointingAt:layoutCopy];
          if (direction > 2)
          {
            if (direction == 3)
            {
              if (((v16 ^ 1) & v17 & 1) == 0)
              {
                goto LABEL_20;
              }

LABEL_19:
              [v20 addObject:v14];
              goto LABEL_20;
            }

            if (direction == 4)
            {
              if (v17)
              {
                goto LABEL_19;
              }
            }

            else if (direction == 5 && (v16 & v17 & 1) != 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (!direction)
            {
              goto LABEL_19;
            }

            if (direction == 1)
            {
              if (!(v17 & 1 | ((v16 & 1) == 0)))
              {
                goto LABEL_19;
              }
            }

            else if (direction == 2 && v16)
            {
              goto LABEL_19;
            }
          }
        }

LABEL_20:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v18 = [crlaxConnectedConnectionLines countByEnumeratingWithState:&v21 objects:v25 count:16];
      v11 = v18;
    }

    while (v18);
  }

  return v20;
}

- (id)_crlaxAvailableRepsForConnecting
{
  v22 = 0;
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, crlaxInteractiveCanvasController, 1, &v22);
  if (v22 == 1)
  {
    abort();
  }

  v6 = v5;

  v7 = [NSMutableArray alloc];
  canvas = [v6 canvas];
  topLevelReps = [canvas topLevelReps];
  v10 = [v7 initWithArray:topLevelReps];

  crlaxTarget = [(CRLCanvasRepAccessibility *)self crlaxTarget];
  LODWORD(topLevelReps) = [v10 containsObject:crlaxTarget];

  if (topLevelReps)
  {
    if ([v10 count])
    {
      for (i = 0; i < [v10 count]; ++i)
      {
        v13 = [v10 objectAtIndexedSubscript:i];
        crlaxTarget2 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
        if (v13 == crlaxTarget2)
        {
          isKindOfClass = 1;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        crlaxTarget3 = [(CRLCanvasRepAccessibility *)self crlaxTarget];
        objc_opt_class();
        v17 = objc_opt_isKindOfClass();

        if (v17)
        {
          layout = [v13 layout];
          if ([layout isInGroup])
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
  _crlaxAvailableRepsForConnecting = [(CRLCanvasRepAccessibility *)self _crlaxAvailableRepsForConnecting];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100547F48;
  v14[3] = &unk_10186DF68;
  v14[4] = v4;
  v14[5] = v6;
  v14[6] = v8;
  v14[7] = v10;
  v12 = [_crlaxAvailableRepsForConnecting sortedArrayUsingComparator:v14];

  return v12;
}

- (id)_crlaxLayoutsConnectedByStrictlyInboundConnectionLines
{
  _crlaxRepForConnectionLineMapping = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  layout = [_crlaxRepForConnectionLineMapping layout];
  crlaxConnectedConnectionLines = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = crlaxConnectedConnectionLines;
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
        if ([v12 crlaxIsVisuallyPointingAt:{layout, v15}])
        {
          v13 = [v12 crlaxOppositeConnectedLayoutFrom:layout];
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
  _crlaxRepForConnectionLineMapping = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  layout = [_crlaxRepForConnectionLineMapping layout];
  crlaxConnectedConnectionLines = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = crlaxConnectedConnectionLines;
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
        v13 = [v12 crlaxOppositeConnectedLayoutFrom:{layout, v15}];
        if (v13 && [v12 crlaxIsVisuallyPointingAt:v13] && (objc_msgSend(v12, "crlaxIsVisuallyPointingAt:", layout) & 1) == 0)
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
  _crlaxRepForConnectionLineMapping = [(CRLCanvasRepAccessibility *)self _crlaxRepForConnectionLineMapping];
  layout = [_crlaxRepForConnectionLineMapping layout];
  crlaxConnectedConnectionLines = [(CRLCanvasRepAccessibility *)self crlaxConnectedConnectionLines];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = crlaxConnectedConnectionLines;
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
        v13 = [v12 crlaxOppositeConnectedLayoutFrom:{layout, v15}];
        if (v13 && [v12 crlaxIsVisuallyPointingAt:layout] && objc_msgSend(v12, "crlaxIsVisuallyPointingAt:", v13))
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
  _crlaxLayoutsConnectedByStrictlyInboundConnectionLines = [(CRLCanvasRepAccessibility *)self _crlaxLayoutsConnectedByStrictlyInboundConnectionLines];
  v4 = [NSMutableSet setWithSet:_crlaxLayoutsConnectedByStrictlyInboundConnectionLines];

  _crlaxLayoutsConnectedByStrictlyOutboundConnectionLines = [(CRLCanvasRepAccessibility *)self _crlaxLayoutsConnectedByStrictlyOutboundConnectionLines];
  v6 = [v4 crl_setByIntersectingSet:_crlaxLayoutsConnectedByStrictlyOutboundConnectionLines];

  return v6;
}

- (CGRect)_crlaxFrameByKnobPositions
{
  crlaxKnobAccessibilityElements = [(CRLCanvasRepAccessibility *)self crlaxKnobAccessibilityElements];
  if ([crlaxKnobAccessibilityElements count])
  {
    v3 = [crlaxKnobAccessibilityElements objectAtIndexedSubscript:0];
    [v3 accessibilityFrame];
    x = v4;
    y = v6;
    width = v8;
    height = v10;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = crlaxKnobAccessibilityElements;
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
  crlaxParentRep = [(CRLCanvasRepAccessibility *)self crlaxParentRep];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxParentRep, 1, &v20);
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
      crlaxTarget = [v5 crlaxTarget];
      info = [crlaxTarget info];

      v9 = objc_opt_class();
      v10 = __CRLAccessibilityCastAsClass(v9, info, 1, &v19);
      if (v19 == 1)
      {
        break;
      }

      v11 = v10;

      accessibilityDescription = [v11 accessibilityDescription];

      if ([accessibilityDescription length])
      {
        goto LABEL_10;
      }

      v18 = 0;
      crlaxParentRep2 = [v5 crlaxParentRep];
      v14 = objc_opt_class();
      v15 = __CRLAccessibilityCastAsSafeCategory(v14, crlaxParentRep2, 1, &v18);
      if (v18 == 1)
      {
        break;
      }

      v16 = v15;

      v6 = accessibilityDescription;
      v5 = v16;
      if (!v16)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    abort();
  }

  accessibilityDescription = 0;
LABEL_10:

  return accessibilityDescription;
}

- (id)_crlaxConnectionDescriptionTokenFromString:(id)string
{
  stringCopy = string;
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [stringCopy componentsSeparatedByCharactersInSet:v4];

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