@interface UIKitWebAccessibilityObjectWrapper
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAlwaysSpeakTableHeaders;
- (BOOL)_accessibilityHasNativeFocus;
- (BOOL)_accessibilityHasOtherAccessibleChildElements:(id)elements;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityIsDataEmpty:(id)empty;
- (BOOL)_accessibilityIsGroupedParent;
- (BOOL)_accessibilityIsScrollDivDescendent;
- (BOOL)_accessibilityIsSpeakThisElement;
- (BOOL)_accessibilityIsTopMostWebElement;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading toElementMatchingQuery:(id)query;
- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:(SEL)selector;
- (BOOL)_accessibilityReplaceTextInRange:(_NSRange)range withString:(id)string;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)_accessibilityShouldScrollRemoteParent;
- (BOOL)_accessibilityShouldSpeakMathEquationTrait;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilitySupportsTextInsertionAndDeletion;
- (BOOL)_axHasMultipleAccessibleChildren:(int64_t *)children;
- (BOOL)_axIsWK2DataDetectorLink;
- (BOOL)_axIsWebKit2;
- (BOOL)_axSupportsWebKitNotificationRelay;
- (BOOL)_axWebKitIsAriaExpanded;
- (BOOL)_axWebKitIsAriaPressed;
- (BOOL)_axWebKitSupportsARIAExpanded;
- (BOOL)_axWebKitSupportsARIAPressed;
- (BOOL)_isCheckBox;
- (BOOL)_isIBooks;
- (BOOL)_prefersFocusContainment;
- (BOOL)_prepareAccessibilityCall;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityCanFuzzyHitTest;
- (BOOL)accessibilityIsMathTopObject;
- (BOOL)accessibilityRequired;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)point;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)point;
- (BOOL)canBecomeFocused;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityScrollRectToVisible:(CGRect)visible;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)_accessibilityClippingFrame;
- (CGRect)_accessibilityConvertSystemBoundedScreenRectToContextSpace:(CGRect)space;
- (CGRect)_accessibilityVisibleFrame;
- (CGRect)_axGetClippingFrame;
- (CGRect)accessibilityBoundsForTextMarkers:(id)markers;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrameForScrolling;
- (CGRect)bounds;
- (CGRect)frame;
- (NSString)description;
- (NSString)focusGroupIdentifier;
- (_NSRange)_accessibilityCharacterRangeForPosition:(unint64_t)position;
- (_NSRange)_accessibilityCheckRowRangeForTrait:(unint64_t)trait;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position;
- (_NSRange)_accessibilityRangeForTextMarker:(id)marker;
- (_NSRange)_accessibilityRangeForTextMarkers:(id)markers;
- (_NSRange)_accessibilitySelectedNSRangeForObject;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_accessibilitySelectedTextRangeForHandwritingWithValue:(id)value;
- (_NSRange)_rangeForWebTextMarkers:(id)markers;
- (_NSRange)accessibilityRowRange;
- (float)_accessibilityActivationDelay;
- (id)_accessibilityApplication;
- (id)_accessibilityAttributedValue:(id)value;
- (id)_accessibilityAttributedValueForElement;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)range;
- (id)_accessibilityColorDescription;
- (id)_accessibilityContainerTypes;
- (id)_accessibilityConvertDataArrayToTextMarkerArray:(id)array;
- (id)_accessibilityConvertTextMarkersToDataArray:(id)array;
- (id)_accessibilityCurrentStatus;
- (id)_accessibilityCustomRotor:(int64_t)rotor;
- (id)_accessibilityDOMAttributes;
- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme;
- (id)_accessibilityElementsForSearchParameter:(id)parameter;
- (id)_accessibilityHeaderElementsForColumn:(unint64_t)column;
- (id)_accessibilityHeaderElementsForRow:(unint64_t)row;
- (id)_accessibilityLinePosition:(BOOL)position withMarker:(id)marker;
- (id)_accessibilityMakeScrollStatus;
- (id)_accessibilityMarkerForPoint:(CGPoint)point;
- (id)_accessibilityMarkerPosition:(BOOL)position withMarker:(id)marker;
- (id)_accessibilityMathEquationRootObject;
- (id)_accessibilityNextElementsWithHeading:(unint64_t)heading queryString:(id)string startingFrom:(id)from;
- (id)_accessibilityObjectForTextMarker:(id)marker;
- (id)_accessibilityParentForSubview:(id)subview;
- (id)_accessibilityParentLinkContainer;
- (id)_accessibilityParentView;
- (id)_accessibilityProcessRootEquation;
- (id)_accessibilityResolvedEditingStyles;
- (id)_accessibilityRoleDescription;
- (id)_accessibilityScrollAncestor;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySpeakThisString;
- (id)_accessibilityTextMarkerForPosition:(int64_t)position;
- (id)_accessibilityTextMarkerRange;
- (id)_accessibilityTextMarkerRangeForSelection;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range string:(id)string wantsSentences:(BOOL)sentences;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_accessibilityUserTestingElementBaseType;
- (id)_accessibilityValueForHandwriting;
- (id)_accessibilityWebAreaURL;
- (id)_accessibilityWebDocumentView;
- (id)_accessibilityWebPageParent;
- (id)_axAncestorTypes;
- (id)_axDataConvertForNotification:(id)notification;
- (id)_axWebKitSearchKeyForCustomRotorType:(int64_t)type;
- (id)_axWebKitTrueLinkParent;
- (id)_misspelledWordRotor;
- (id)_preferredFocusRegionCoordinateSpace;
- (id)accessibilityArrayOfTextForTextMarkers:(id)markers;
- (id)accessibilityAttributedValue;
- (id)accessibilityContainer;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityHint;
- (id)accessibilityHitTest:(CGPoint)test;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityLinkRelationshipType;
- (id)accessibilityMathBaseObject;
- (id)accessibilityMathDenominatorObject;
- (id)accessibilityMathEquation;
- (id)accessibilityMathFencedCloseString;
- (id)accessibilityMathFencedOpenString;
- (id)accessibilityMathNumeratorObject;
- (id)accessibilityMathOverObject;
- (id)accessibilityMathPostscripts;
- (id)accessibilityMathPrescripts;
- (id)accessibilityMathRadicand;
- (id)accessibilityMathRootIndexObject;
- (id)accessibilityMathSubscriptObject;
- (id)accessibilityMathSuperscriptObject;
- (id)accessibilityMathType;
- (id)accessibilityMathUnderObject;
- (id)accessibilityPath;
- (id)accessibilityPlaceholderValue;
- (id)accessibilityPostProcessHitTest:(CGPoint)test;
- (id)accessibilitySortDirection;
- (id)accessibilitySpeechHint;
- (id)accessibilityStringForTextMarkers:(id)markers;
- (id)accessibilityTextNavigationElementInDirection:(int64_t)direction;
- (id)accessibilityURL;
- (id)accessibilityValue;
- (id)accessibilityVisibleText;
- (id)ariaLandmarkRoleDescription;
- (id)automationElements;
- (id)focusItemsInRect:(CGRect)rect;
- (int)_accessibilityHostPid;
- (int64_t)_accessibilityExpandedStatus;
- (int64_t)_accessibilityLineStartPosition;
- (unint64_t)_accessibilityAutomationType;
- (unint64_t)_accessibilityTraitsHelper;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilityContextId;
- (void)_accessibilityClippingFrame;
- (void)_accessibilityInsertText:(id)text;
- (void)_accessibilityModifySelection:(id)selection increase:(BOOL)increase;
- (void)_accessibilityMoveSelectionToMarker:(id)marker;
- (void)_accessibilityRelayToChrome:(unsigned int)chrome object:(id)object;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string;
- (void)_accessibilityScrollToVisible;
- (void)_axBuildAXTreeFromElement:(id)element outArray:(id)array;
- (void)_axHandleNotificationPosting:(unsigned int)posting data:(id)data;
- (void)_axVideoEnterFullscreen;
- (void)_axVideoToggleMute;
- (void)_enqueReorderingNotification:(id)notification;
- (void)_performLiveRegionUpdate;
- (void)_repostFocusChangeNotification;
- (void)_repostWebNotification:(id)notification;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityIncrement;
- (void)accessibilityOverrideProcessNotification:(id)notification notificationData:(id)data;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)postScreenChangeNotification;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation UIKitWebAccessibilityObjectWrapper

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIPeripheralHost" hasInstanceMethod:@"isOnScreen" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapperBase" hasInstanceMethod:@"ariaLandmarkRoleDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathPostscripts" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" isKindOfClass:@"WebAccessibilityObjectWrapperBase"];
  [validationsCopy validateClass:@"WebAccessibilityTextMarker" hasInstanceMethod:@"initWithData:accessibilityObject:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"handleNotificationRelayToChrome:notificationData:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityColorStringValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityScrollVisibleRect" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityScrollPosition" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityScrollSize" withFullSignature:{"{CGSize=dd}", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityParentForSubview:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axAdjustableTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axButtonTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axHasTextCursorTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axHeaderTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axImageTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axLinkTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axMenuItemTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axNotEnabledTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axPopupButtonTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axSecureTextFieldTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axSearchFieldTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axTextAreaTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axSelectedTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axStaticTextTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axTabBarTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axTextOperationsAvailableTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axToggleTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axVisitedTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_axWebContentTrait" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsMathTopObject" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathBaseObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathDenominatorObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathFencedCloseString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathFencedOpenString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathNumeratorObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsComboBox" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathLineThickness" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathOverObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathRadicand" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapperBase" hasInstanceMethod:@"accessibilityMathPostscriptPairs" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapperBase" hasInstanceMethod:@"accessibilityMathPrescriptPairs" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathRootIndexObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathSubscriptObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathSuperscriptObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathType" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMathUnderObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityMoveSelectionToMarker:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"arrayOfTextForTextMarkers: attributed:" withFullSignature:{"@", "@", "B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilitySupportsARIAExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilitySupportsARIAPressed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsPressed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityModifySelection: increase:" withFullSignature:{"v", "C", "B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsAttachmentElement" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityFindMatchingObjects:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityActivate" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityRoleDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityLandmarkAncestor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityArticleAncestor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityListAncestor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityTableAncestor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityFieldsetAncestor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityFrameAncestor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityTreeAncestor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityARIAIsBusy" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityARIALiveRegionIsAtomic" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityARIALiveRegionStatus" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityARIARelevantStatus" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityCanFuzzyHitTest" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityDecreaseSelection:" withFullSignature:{"v", "C", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityElementRect" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIncreaseSelection:" withFullSignature:{"v", "C", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityPlaceholderValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityHasPopup" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"elementTextRange" withFullSignature:{"{_NSRange=QQ}", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"frameForTextMarkers:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"lineEndMarkerForMarker:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"lineStartMarkerForMarker:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"positionForTextMarker:" withFullSignature:{"q", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"selectedTextMarker" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"stringForTextMarkers:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"textMarkerForPosition:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"textMarkerRangeForSelection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapperBase" hasInstanceMethod:@"_prepareAccessibilityCall" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityReplaceRange:withText:" withFullSignature:{"B", "{_NSRange=QQ}", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityResolvedEditingStyles" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityCanSetValue" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityPageTextMarkerRange" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityCurrentState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilitySortDirection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityRequired" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsDialog" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"textRectsFromMarkers:withText:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsShowingValidationMessage" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsWebInteractiveVideo" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityToggleMuteForMedia" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityVideoEnterFullscreen" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsMediaPlaying" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsMediaMuted" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityIsStrongPasswordField" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"attributedStringForElement" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilitySetFocus:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"misspellingTextMarkerRange:forward:" withFullSignature:{"@", "@", "B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityInsertText:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityReplaceRange:withText:" withFullSignature:{"B", "{_NSRange=QQ}", "@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityIsIndeterminate" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"_accessibilityWebRoleAsString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityBrailleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"accessibilityBrailleRoleDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WebAccessibilityObjectWrapper" hasInstanceMethod:@"lineMarkersForMarker:" withFullSignature:{"@", "@", 0}];
}

- (BOOL)_prepareAccessibilityCall
{
  v3 = objc_autoreleasePoolPush();
  v5.receiver = self;
  v5.super_class = UIKitWebAccessibilityObjectWrapper;
  LOBYTE(self) = [(UIKitWebAccessibilityObjectWrapper *)&v5 _prepareAccessibilityCall];
  objc_autoreleasePoolPop(v3);
  return self;
}

- (id)_accessibilityParentView
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    _accessibilityWebDocumentView = 0;
  }

  else
  {
    _accessibilityWebDocumentView = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebDocumentView];
  }

  return _accessibilityWebDocumentView;
}

- (BOOL)_axIsWebKit2
{
  v3 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"IsWebKit2"];
  if (!v3)
  {
    v4 = MEMORY[0x29EDBA070];
    v5 = [NSClassFromString(&cfstr_Uiapplication.isa) safeValueForKey:@"sharedApplication"];
    v3 = [v4 numberWithInt:v5 == 0];

    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetRetainedValue:v3 forKey:@"IsWebKit2"];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)_accessibilityWebPageParent
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageObject];
  }

  else
  {
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebDocumentView];
  }
  v3 = ;

  return v3;
}

- (unsigned)_accessibilityContextId
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    v3 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"contextId"];
    unsignedIntValue = [v3 unsignedIntValue];

    if (!unsignedIntValue)
    {
      v5 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
      v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v5, "contextId")}];
      [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetRetainedValue:v6 forKey:@"contextId"];

      contextId = [v5 contextId];
      return contextId;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIKitWebAccessibilityObjectWrapper;
    return [(UIKitWebAccessibilityObjectWrapper *)&v9 _accessibilityContextId];
  }

  return unsignedIntValue;
}

- (BOOL)_axWebKitSupportsARIAExpanded
{
  if (([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilitySupportsARIAExpanded"]& 1) != 0)
  {
    return 1;
  }

  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & ~accessibilityTraits) != 0)
  {
    return 0;
  }

  _axWebKitTrueLinkParent = [(UIKitWebAccessibilityObjectWrapper *)self _axWebKitTrueLinkParent];
  v6 = [_axWebKitTrueLinkParent safeBoolForKey:@"accessibilitySupportsARIAExpanded"];

  return v6;
}

- (id)_accessibilityResolvedEditingStyles
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = UIKitWebAccessibilityObjectWrapper;
  _accessibilityResolvedEditingStyles = [(UIKitWebAccessibilityObjectWrapper *)&v18 _accessibilityResolvedEditingStyles];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = _accessibilityResolvedEditingStyles;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isEqualToString:{@"bold", v14}])
        {
          v10 = @"bold";
          v11 = MEMORY[0x29EDBD870];
        }

        else if ([v9 isEqualToString:@"italic"])
        {
          v10 = @"italic";
          v11 = MEMORY[0x29EDBD910];
        }

        else if ([v9 isEqualToString:@"underline"])
        {
          v10 = @"underline";
          v11 = MEMORY[0x29EDBDA28];
        }

        else
        {
          if (![v9 isEqualToString:@"fontsize"])
          {
            continue;
          }

          v10 = @"fontsize";
          v11 = MEMORY[0x29EDBD8D8];
        }

        v12 = [v4 objectForKeyedSubscript:v10];
        [v3 setObject:v12 forKeyedSubscript:*v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)_accessibilityAutomationType
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & accessibilityTraits) != 0)
  {
    return 42;
  }

  if ((*MEMORY[0x29EDC7F88] & accessibilityTraits) != 0)
  {
    return 43;
  }

  if ((*MEMORY[0x29EDC7FD0] & accessibilityTraits) != 0)
  {
    return 48;
  }

  if ((*MEMORY[0x29EDC7F70] & accessibilityTraits) != 0)
  {
    return 9;
  }

  v5 = [(UIKitWebAccessibilityObjectWrapper *)self safeStringForKey:@"accessibilityColorStringValue"];
  v6 = [v5 length];

  if (v6)
  {
    return 67;
  }

  v7.receiver = self;
  v7.super_class = UIKitWebAccessibilityObjectWrapper;
  return [(UIKitWebAccessibilityObjectWrapper *)&v7 _accessibilityAutomationType];
}

- (BOOL)_axWebKitIsAriaExpanded
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & ~accessibilityTraits) != 0)
  {

    return [(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsExpanded"];
  }

  else
  {
    _axWebKitTrueLinkParent = [(UIKitWebAccessibilityObjectWrapper *)self _axWebKitTrueLinkParent];
    v5 = [_axWebKitTrueLinkParent safeBoolForKey:@"accessibilityIsExpanded"];

    return v5;
  }
}

- (id)_accessibilityCurrentStatus
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & ~accessibilityTraits) != 0)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(UIKitWebAccessibilityObjectWrapper *)self _axWebKitTrueLinkParent];
  }

  v5 = selfCopy;
  if (objc_opt_respondsToSelector())
  {
    v8 = v5;
    AXPerformSafeBlock();
  }

  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __65__UIKitWebAccessibilityObjectWrapper__accessibilityCurrentStatus__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) accessibilityCurrentState];
  v3 = __UIAccessibilityCastAsClass();

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)accessibilitySortDirection
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = 3221225472;
  v13 = __64__UIKitWebAccessibilityObjectWrapper_accessibilitySortDirection__block_invoke;
  v14 = &unk_29F31F4C0;
  selfCopy = self;
  v16 = &v17;
  AXPerformSafeBlock();
  v3 = v18[5];
  _Block_object_dispose(&v17, 8);

  if (v3)
  {
    v10.receiver = self;
    v10.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilitySortDirection = [(UIKitWebAccessibilityObjectWrapper *)&v10 accessibilitySortDirection];
    if ([(UIKitWebAccessibilityObjectWrapper *)self _accessibilityBoolValueForKey:@"IgnoreTreeForSortDirection"]|| accessibilitySortDirection || ([(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_4:
      accessibilitySortDirection2 = accessibilitySortDirection;
    }

    else
    {
      v8 = v7;
      while (1)
      {
        [v8 _accessibilitySetBoolValue:1 forKey:@"IgnoreTreeForRequired"];
        accessibilitySortDirection2 = [v8 accessibilitySortDirection];
        if ([accessibilitySortDirection2 length])
        {
          break;
        }

        [v8 _accessibilitySetBoolValue:0 forKey:@"IgnoreTreeForRequired"];
        accessibilityContainer = [v8 accessibilityContainer];

        v8 = accessibilityContainer;
        if (!accessibilityContainer)
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    accessibilitySortDirection2 = 0;
  }

  return accessibilitySortDirection2;
}

uint64_t __64__UIKitWebAccessibilityObjectWrapper_accessibilitySortDirection__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityTableAncestor];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)accessibilityRequired
{
  v10.receiver = self;
  v10.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityRequired = [(UIKitWebAccessibilityObjectWrapper *)&v10 accessibilityRequired];
  v4 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityBoolValueForKey:@"IgnoreTreeForRequired"];
  v5 = v4 ^ 1 | accessibilityRequired;
  if ((v4 & 1) == 0 && (accessibilityRequired & 1) == 0)
  {
    accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
    if (accessibilityContainer)
    {
      v7 = accessibilityContainer;
      while (1)
      {
        [v7 _accessibilitySetBoolValue:1 forKey:@"IgnoreTreeForRequired"];
        if ([v7 accessibilityRequired])
        {
          break;
        }

        [v7 _accessibilitySetBoolValue:0 forKey:@"IgnoreTreeForRequired"];
        accessibilityContainer2 = [v7 accessibilityContainer];

        v7 = accessibilityContainer2;
        if (!accessibilityContainer2)
        {
          goto LABEL_7;
        }
      }

      v5 = 1;
    }

    else
    {
LABEL_7:
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)_axWebKitSupportsARIAPressed
{
  if (([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilitySupportsARIAPressed"]& 1) != 0)
  {
    return 1;
  }

  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & ~accessibilityTraits) != 0)
  {
    return 0;
  }

  _axWebKitTrueLinkParent = [(UIKitWebAccessibilityObjectWrapper *)self _axWebKitTrueLinkParent];
  v6 = [_axWebKitTrueLinkParent safeBoolForKey:@"accessibilitySupportsARIAPressed"];

  return v6;
}

- (id)accessibilityLinkRelationshipType
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & ~accessibilityTraits) == 0)
  {
    _axWebKitTrueLinkParent = [(UIKitWebAccessibilityObjectWrapper *)self _axWebKitTrueLinkParent];
    v5 = _axWebKitTrueLinkParent;
    if (_axWebKitTrueLinkParent != self)
    {
      accessibilityLinkRelationshipType = [(UIKitWebAccessibilityObjectWrapper *)_axWebKitTrueLinkParent accessibilityLinkRelationshipType];

      goto LABEL_6;
    }
  }

  v8.receiver = self;
  v8.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityLinkRelationshipType = [(UIKitWebAccessibilityObjectWrapper *)&v8 accessibilityLinkRelationshipType];
LABEL_6:

  return accessibilityLinkRelationshipType;
}

- (BOOL)_axWebKitIsAriaPressed
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & ~accessibilityTraits) != 0)
  {

    return [(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsPressed"];
  }

  else
  {
    _axWebKitTrueLinkParent = [(UIKitWebAccessibilityObjectWrapper *)self _axWebKitTrueLinkParent];
    v5 = [_axWebKitTrueLinkParent safeBoolForKey:@"accessibilityIsPressed"];

    return v5;
  }
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axWebKitSupportsARIAExpanded])
  {
    if ([(UIKitWebAccessibilityObjectWrapper *)self _axWebKitIsAriaExpanded])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UIKitWebAccessibilityObjectWrapper;
    return [(UIKitWebAccessibilityObjectWrapper *)&v4 _accessibilityExpandedStatus];
  }
}

- (id)_accessibilityRoleDescription
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    if (objc_opt_respondsToSelector())
    {
      v9 = MEMORY[0x29EDCA5F8];
      v10 = 3221225472;
      v11 = __67__UIKitWebAccessibilityObjectWrapper__accessibilityRoleDescription__block_invoke;
      v12 = &unk_29F31F4C0;
      selfCopy = self;
      v14 = &v15;
      AXPerformSafeBlock();
    }

    v3 = [(UIKitWebAccessibilityObjectWrapper *)self safeStringForKey:@"accessibilityBrailleRoleDescription", v9, v10, v11, v12, selfCopy, v14];
    if ([v3 length])
    {
      v4 = v16[5];
      if (!v4)
      {
        v16[5] = @" ";

        v4 = v16[5];
      }

      v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v4];
      [v5 setAttribute:v3 forKey:*MEMORY[0x29EDBD880]];
      v6 = v16[5];
      v16[5] = v5;
    }

    v7 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __67__UIKitWebAccessibilityObjectWrapper__accessibilityRoleDescription__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) accessibilityRoleDescription];
  v3 = __UIAccessibilityCastAsClass();

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v4.receiver = self;
  v4.super_class = UIKitWebAccessibilityObjectWrapper;
  _accessibilitySelectedTextRange = [(UIKitWebAccessibilityObjectWrapper *)&v4 _accessibilitySelectedTextRange];
  if (_accessibilitySelectedTextRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    _accessibilitySelectedTextRange = 0;
  }

  result.length = v3;
  result.location = _accessibilitySelectedTextRange;
  return result;
}

uint64_t __65__UIKitWebAccessibilityObjectWrapper__accessibilityWebPageObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Wkaccessibilit.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityWebDocumentView
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    v3 = 0;
    goto LABEL_23;
  }

  v16 = 0;
  objc_opt_class();
  v4 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"AXWebDocumentViewKey"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    v3 = v5;
    goto LABEL_22;
  }

  NSClassFromString(&cfstr_Uiwebdocumentv.isa);
  NSClassFromString(&cfstr_Webview.isa);
  v15.receiver = self;
  v15.super_class = UIKitWebAccessibilityObjectWrapper;
  _accessibilityWebDocumentView = [(UIKitWebAccessibilityObjectWrapper *)&v15 _accessibilityWebDocumentView];
  v7 = _accessibilityWebDocumentView;
  if (!_accessibilityWebDocumentView)
  {
    goto LABEL_20;
  }

  v8 = _accessibilityWebDocumentView;
  while (1)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;

      v7 = v9;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    accessibilityContainer = [v8 accessibilityContainer];
LABEL_13:
    v11 = accessibilityContainer;

    v8 = v11;
    if (!v11)
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessibilityContainer = [v8 safeValueForKey:@"superview"];
    goto LABEL_13;
  }

  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_17:
  array = [v7 _accessibilityValueForKey:@"AXDocumentSeenChildren"];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    [v7 _accessibilitySetRetainedValue:array forKey:@"AXDocumentSeenChildren"];
  }

  [array addObject:self];
  [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetAssignedValue:v7 forKey:@"AXWebDocumentViewKey"];

LABEL_20:
  v16 = 0;
  objc_opt_class();
  v13 = __UIAccessibilityCastAsClass();
  if (v16 == 1)
  {
    abort();
  }

  v3 = v13;

LABEL_22:
LABEL_23:

  return v3;
}

- (id)_accessibilityColorDescription
{
  v2 = [(UIKitWebAccessibilityObjectWrapper *)self safeStringForKey:@"accessibilityColorStringValue"];
  v3 = [v2 componentsSeparatedByString:@" "];
  if ([v3 count] == 5 && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"rgb"), v4, v5))
  {
    v6 = MEMORY[0x29EDC7A00];
    v7 = [v3 objectAtIndexedSubscript:1];
    [v7 doubleValue];
    v9 = v8;
    v10 = [v3 objectAtIndexedSubscript:2];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v3 objectAtIndexedSubscript:3];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v3 objectAtIndexedSubscript:4];
    [v16 doubleValue];
    v18 = [v6 colorWithRed:v9 green:v12 blue:v15 alpha:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)accessibilityContainer
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityContainer", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    accessibilityUserDefinedContainer = [*v4 objectForKeyedSubscript:v3];
  }

  else if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    accessibilityUserDefinedContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityUserDefinedContainer];
    if (!accessibilityUserDefinedContainer)
    {
      v8.receiver = self;
      v8.super_class = UIKitWebAccessibilityObjectWrapper;
      accessibilityUserDefinedContainer = [(UIKitWebAccessibilityObjectWrapper *)&v8 accessibilityContainer];
    }

    [*v4 setObject:accessibilityUserDefinedContainer forKeyedSubscript:v3];
  }

  else
  {
    accessibilityUserDefinedContainer = 0;
  }

  return accessibilityUserDefinedContainer;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme
{
  y = scheme.y;
  x = scheme.x;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageObject];
  }

  else
  {
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebDocumentView];
  }
  v6 = ;
  v7 = [v6 _accessibilityDataDetectorScheme:{x, y}];

  return v7;
}

- (BOOL)_axIsWK2DataDetectorLink
{
  if (![(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    return 0;
  }

  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & ~accessibilityTraits) != 0)
  {
    return 0;
  }

  accessibilityURL = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityURL];
  v5 = accessibilityURL;
  if (accessibilityURL)
  {
    absoluteString = [accessibilityURL absoluteString];
    v7 = [absoluteString hasPrefix:@"x-apple-data-detectors:"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAccessibilityElement
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_axObjWrapperIsElement", self];
    v31 = 0;
    PossiblyNilObjectForKey = _AXServerCacheGetPossiblyNilObjectForKey();
    v5 = 0;
    v6 = v5;
    if (PossiblyNilObjectForKey)
    {
      LOBYTE(v7) = [v5 BOOLValue];
LABEL_29:

      return v7;
    }

    v30.receiver = self;
    v30.super_class = UIKitWebAccessibilityObjectWrapper;
    isAccessibilityElement = [(UIKitWebAccessibilityObjectWrapper *)&v30 isAccessibilityElement];
    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
    if (isAccessibilityElement)
    {
LABEL_6:
      LODWORD(v10) = 1;
      goto LABEL_23;
    }

    v11 = *MEMORY[0x29EDC7F98];
    if ((*MEMORY[0x29EDC7F98] & accessibilityTraits) != 0)
    {
      accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
      v13 = [accessibilityContainer accessibilityTraits] & v11;

      if (!v13)
      {
        selfCopy = self;
        v15 = selfCopy;
        while (v15 && [(UIKitWebAccessibilityObjectWrapper *)v15 accessibilityElementCount]== 1)
        {
          v16 = [(UIKitWebAccessibilityObjectWrapper *)v15 accessibilityElementAtIndex:0];

          v15 = v16;
          if ([(UIKitWebAccessibilityObjectWrapper *)v16 _accessibilityIsFrameOutOfBounds])
          {
            LODWORD(v10) = 1;
            [(UIKitWebAccessibilityObjectWrapper *)selfCopy setIsAccessibilityElement:1];

            goto LABEL_23;
          }
        }
      }

      accessibilityLabel = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityLabel];
      v10 = [accessibilityLabel length];

      if (!v10)
      {
        goto LABEL_23;
      }

      accessibilityElementCount = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount];
      if (accessibilityElementCount < 1)
      {
        goto LABEL_6;
      }

      v19 = accessibilityElementCount;
      v20 = 0;
      while (1)
      {
        v21 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementAtIndex:v20];
        if (v21)
        {
          v22 = v21;
          accessibilityLabel2 = [v21 accessibilityLabel];
          v24 = [accessibilityLabel2 length];

          if (v24)
          {
            break;
          }
        }

        if (v19 == ++v20)
        {
          goto LABEL_6;
        }
      }
    }

    LODWORD(v10) = 0;
LABEL_23:
    [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementRect];
    v7 = 0;
    if (v26 != 0.0 && v25 != 0.0)
    {
      _accessibilityMathEquationRootObject = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityMathEquationRootObject];

      if (_accessibilityMathEquationRootObject)
      {
        v7 = 0;
      }

      else
      {
        v7 = v10;
      }
    }

    v28 = [MEMORY[0x29EDBA070] numberWithBool:v7];
    _AXServerCacheInsertPossiblyNilObjectForKey();

    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (id)_axAncestorTypes
{
  dictionary = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"AXContainerTypes"];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetRetainedValue:dictionary forKey:@"AXContainerTypes"];
    v100 = 0;
    v101 = &v100;
    v102 = 0x3032000000;
    v103 = __Block_byref_object_copy_;
    v104 = __Block_byref_object_dispose_;
    v105 = 0;
    v94 = MEMORY[0x29EDCA5F8];
    v95 = 3221225472;
    v96 = __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke;
    v97 = &unk_29F31F4C0;
    selfCopy = self;
    v99 = &v100;
    AXPerformSafeBlock();
    v4 = v101[5];
    if (v4)
    {
      [dictionary setObject:v4 forKey:&unk_2A23B6A50];
    }

    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy_;
    v92 = __Block_byref_object_dispose_;
    v93 = 0;
    v82 = MEMORY[0x29EDCA5F8];
    v83 = 3221225472;
    v84 = __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_799;
    v85 = &unk_29F31F4C0;
    selfCopy2 = self;
    v87 = &v88;
    AXPerformSafeBlock();
    v5 = v89[5];
    if (v5)
    {
      [dictionary setObject:v5 forKey:&unk_2A23B6A68];
    }

    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy_;
    v80 = __Block_byref_object_dispose_;
    v81 = 0;
    v70 = MEMORY[0x29EDCA5F8];
    v71 = 3221225472;
    v72 = __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_802;
    v73 = &unk_29F31F4C0;
    v75 = &v76;
    selfCopy3 = self;
    AXPerformSafeBlock();
    v6 = v77[5];
    if (v6)
    {
      [dictionary setObject:v6 forKey:&unk_2A23B6A80];
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy_;
    v68 = __Block_byref_object_dispose_;
    v69 = 0;
    v58 = MEMORY[0x29EDCA5F8];
    v59 = 3221225472;
    v60 = __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_805;
    v61 = &unk_29F31F4C0;
    selfCopy4 = self;
    v63 = &v64;
    AXPerformSafeBlock();
    v7 = v65[5];
    if (v7)
    {
      [dictionary setObject:v7 forKey:&unk_2A23B6A98];
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy_;
    v56 = __Block_byref_object_dispose_;
    v57 = 0;
    v46 = MEMORY[0x29EDCA5F8];
    v47 = 3221225472;
    v48 = __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_808;
    v49 = &unk_29F31F4C0;
    selfCopy5 = self;
    v51 = &v52;
    AXPerformSafeBlock();
    v8 = v53[5];
    if (v8)
    {
      [dictionary setObject:v8 forKey:&unk_2A23B6AB0];
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = 0;
    v34 = MEMORY[0x29EDCA5F8];
    v35 = 3221225472;
    v36 = __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_811;
    v37 = &unk_29F31F4C0;
    selfCopy6 = self;
    v39 = &v40;
    AXPerformSafeBlock();
    v9 = v41[5];
    if (v9)
    {
      [dictionary setObject:v9 forKey:&unk_2A23B6AC8];
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v22 = MEMORY[0x29EDCA5F8];
    v23 = 3221225472;
    v24 = __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_814;
    v25 = &unk_29F31F4C0;
    selfCopy7 = self;
    v27 = &v28;
    AXPerformSafeBlock();
    v10 = v29[5];
    if (v10)
    {
      [dictionary setObject:v10 forKey:&unk_2A23B6AE0];
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    v15 = MEMORY[0x29EDCA5F8];
    AXPerformSafeBlock();
    v11 = v17[5];
    if (v11)
    {
      [dictionary setObject:v11 forKey:{&unk_2A23B6AF8, v15, 3221225472, __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_817, &unk_29F31F4C0, self, &v16}];
    }

    selfCopy8 = self;
    if (selfCopy8)
    {
      do
      {
        NSClassFromString(&cfstr_Webaccessibili.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if ([(UIKitWebAccessibilityObjectWrapper *)selfCopy8 safeBoolForKey:@"accessibilityIsDialog"])
        {
          [dictionary setObject:selfCopy8 forKey:&unk_2A23B6B10];
          break;
        }

        accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)selfCopy8 accessibilityContainer];

        selfCopy8 = accessibilityContainer;
      }

      while (accessibilityContainer);
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v52, 8);

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v76, 8);

    _Block_object_dispose(&v88, 8);
    _Block_object_dispose(&v100, 8);
  }

  return dictionary;
}

uint64_t __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityListAncestor];

  return MEMORY[0x2A1C71028]();
}

uint64_t __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_799(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityDescriptionListAncestor];

  return MEMORY[0x2A1C71028]();
}

uint64_t __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_802(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityTableAncestor];

  return MEMORY[0x2A1C71028]();
}

uint64_t __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_805(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityLandmarkAncestor];

  return MEMORY[0x2A1C71028]();
}

uint64_t __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_808(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityArticleAncestor];

  return MEMORY[0x2A1C71028]();
}

uint64_t __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_811(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityFieldsetAncestor];

  return MEMORY[0x2A1C71028]();
}

uint64_t __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_814(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityFrameAncestor];

  return MEMORY[0x2A1C71028]();
}

uint64_t __54__UIKitWebAccessibilityObjectWrapper__axAncestorTypes__block_invoke_817(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessibilityTreeAncestor];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityContainerTypes
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    _axAncestorTypes = [(UIKitWebAccessibilityObjectWrapper *)self _axAncestorTypes];
    allKeys = [_axAncestorTypes allKeys];
  }

  else
  {
    allKeys = 0;
  }

  return allKeys;
}

- (BOOL)_accessibilityIsGroupedParent
{
  if (_accessibilityIsGroupedParent_onceToken != -1)
  {
    [UIKitWebAccessibilityObjectWrapper _accessibilityIsGroupedParent];
  }

  v4.receiver = self;
  v4.super_class = UIKitWebAccessibilityObjectWrapper;
  return [(UIKitWebAccessibilityObjectWrapper *)&v4 _accessibilityIsGroupedParent];
}

uint64_t __67__UIKitWebAccessibilityObjectWrapper__accessibilityIsGroupedParent__block_invoke()
{
  _accessibilityIsGroupedParent_predicateSet = [MEMORY[0x29EDB8E50] setWithArray:&unk_2A23B6E10];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityIsDataEmpty:(id)empty
{
  emptyCopy = empty;
  bytes = [emptyCopy bytes];
  v5 = [emptyCopy length];
  if (v5)
  {
    if (*bytes)
    {
      v6 = 0;
    }

    else
    {
      v7 = 1;
      do
      {
        v8 = v7;
        if (v5 == v7)
        {
          break;
        }

        ++v7;
      }

      while (!bytes[v8]);
      v6 = v8 >= v5;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)_accessibilityConvertDataArrayToTextMarkerArray:(id)array
{
  v24 = *MEMORY[0x29EDCA608];
  arrayCopy = array;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIKitWebAccessibilityObjectWrapper *)self _accessibilityIsDataEmpty:v9])
          {
            v13 = 0;
            v14 = &v13;
            v15 = 0x3032000000;
            v16 = __Block_byref_object_copy_;
            v17 = __Block_byref_object_dispose_;
            v18 = 0;
            AXPerformSafeBlock();
            v10 = v14[5];
            _Block_object_dispose(&v13, 8);

            if (v10)
            {
              [array addObject:v10];
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

uint64_t __86__UIKitWebAccessibilityObjectWrapper__accessibilityConvertDataArrayToTextMarkerArray___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [objc_allocWithZone(NSClassFromString(&cfstr_Webaccessibili_1.isa)) initWithData:a1[4] accessibilityObject:a1[5]];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityConvertTextMarkersToDataArray:(id)array
{
  v17 = *MEMORY[0x29EDCA608];
  arrayCopy = array;
  array = [MEMORY[0x29EDB8DE8] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) safeValueForKey:{@"dataRepresentation", v12}];
        if (v10)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)_accessibilityObjectForTextMarker:(id)marker
{
  markerCopy = marker;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:{markerCopy, 0}];
    v6 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:v5];

    lastObject = [v6 lastObject];
    v8 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityObjectForTextMarker:lastObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range string:(id)string wantsSentences:(BOOL)sentences
{
  length = range.length;
  location = range.location;
  v43[2] = *MEMORY[0x29EDCA608];
  stringCopy = string;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [stringCopy length])
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy_;
    v38 = __Block_byref_object_dispose_;
    v39 = 0;
    v9 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityTextMarkerForPosition:location];
    v10 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityTextMarkerForPosition:location + length];
    v11 = v10;
    if (v9 && v10)
    {
      v12 = AXLogSpeakScreen();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [UIKitWebAccessibilityObjectWrapper _accessibilityTextRectsForSpeakThisStringRange:string:wantsSentences:];
      }

      whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
      v14 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      newlineCharacterSet = [MEMORY[0x29EDB9F50] newlineCharacterSet];
      v16 = [v14 stringByTrimmingCharactersInSet:newlineCharacterSet];

      if ([v16 hasSuffix:{@", "}] && objc_msgSend(v16, "length") >= 2)
      {
        v17 = [v16 substringToIndex:{objc_msgSend(v16, "length") - 1}];

        v16 = v17;
      }

      v43[0] = v9;
      v43[1] = v11;
      v18 = [MEMORY[0x29EDB8D80] arrayWithObjects:v43 count:2];
      v19 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:v18];

      v28 = MEMORY[0x29EDCA5F8];
      v29 = 3221225472;
      v30 = __107__UIKitWebAccessibilityObjectWrapper__accessibilityTextRectsForSpeakThisStringRange_string_wantsSentences___block_invoke;
      v31 = &unk_29F31F530;
      selfCopy = self;
      v33 = v19;
      stringCopy = v16;
      AXPerformSafeBlock();
    }

    if (![v35[5] count])
    {
      if ([(UIKitWebAccessibilityObjectWrapper *)self _isIBooks])
      {
        v20 = AXLogSpeakScreen();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [UIKitWebAccessibilityObjectWrapper _accessibilityTextRectsForSpeakThisStringRange:v20 string:? wantsSentences:?];
        }

        v21 = [MEMORY[0x29EDBA168] valueWithCGRect:{*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)}];
        v42 = v21;
        v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v42 count:1];
      }

      else
      {
        v24 = AXLogSpeakScreen();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [UIKitWebAccessibilityObjectWrapper _accessibilityTextRectsForSpeakThisStringRange:v24 string:? wantsSentences:?];
        }

        v25 = MEMORY[0x29EDBA168];
        [(UIKitWebAccessibilityObjectWrapper *)self accessibilityFrame];
        v21 = [v25 valueWithCGRect:?];
        v41 = v21;
        v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v41 count:1];
      }

      v26 = v35[5];
      v35[5] = v22;
    }

    stringCopy = v35[5];

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v40.receiver = self;
    v40.super_class = UIKitWebAccessibilityObjectWrapper;
    stringCopy = [(UIKitWebAccessibilityObjectWrapper *)&v40 _accessibilityTextRectsForSpeakThisStringRange:location string:length, stringCopy];
  }

  return stringCopy;
}

void __107__UIKitWebAccessibilityObjectWrapper__accessibilityTextRectsForSpeakThisStringRange_string_wantsSentences___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (*(a1 + 64) == 1)
  {
    *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) textRectsFromMarkers:*(a1 + 40) withText:*(a1 + 48)];

    MEMORY[0x2A1C71028]();
  }

  else
  {
    v2 = MEMORY[0x29EDBA168];
    [*(a1 + 32) frameForTextMarkers:*(a1 + 40)];
    v3 = [v2 valueWithRect:?];
    v7[0] = v3;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (CGRect)accessibilityBoundsForTextMarkers:(id)markers
{
  markersCopy = markers;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:markersCopy];
    [(UIKitWebAccessibilityObjectWrapper *)self frameForTextMarkers:v5];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x29EDB90E0];
    v9 = *(MEMORY[0x29EDB90E0] + 8);
    v11 = *(MEMORY[0x29EDB90E0] + 16);
    v13 = *(MEMORY[0x29EDB90E0] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)accessibilityStringForTextMarkers:(id)markers
{
  markersCopy = markers;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:markersCopy];
    v6 = [(UIKitWebAccessibilityObjectWrapper *)self stringForTextMarkers:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityArrayOfTextForTextMarkers:(id)markers
{
  markersCopy = markers;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:markersCopy];
    v6 = [(UIKitWebAccessibilityObjectWrapper *)self arrayOfTextForTextMarkers:v5 attributed:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityTextMarkerRangeForSelection
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v3 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"textMarkerRangeForSelection"];
    v4 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertTextMarkersToDataArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilityTextMarkerRange
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v3 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"textMarkerRange"];
    v4 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertTextMarkersToDataArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilityMarkerPosition:(BOOL)position withMarker:(id)marker
{
  markerCopy = marker;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:{markerCopy, 0}];
    v8 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:v7];

    lastObject = [v8 lastObject];

    if (position)
    {
      [(UIKitWebAccessibilityObjectWrapper *)self nextMarkerForMarker:lastObject];
    }

    else
    {
      [(UIKitWebAccessibilityObjectWrapper *)self previousMarkerForMarker:lastObject];
    }
    v11 = ;
    v10 = [v11 safeValueForKey:@"dataRepresentation"];
  }

  else
  {
    v10 = 0;
    lastObject = markerCopy;
  }

  return v10;
}

- (int64_t)_accessibilityLineStartPosition
{
  _accessibilitySelectedTextRange = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySelectedTextRange];

  return [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityLineRangeForPosition:_accessibilitySelectedTextRange];
}

- (id)_accessibilityLinePosition:(BOOL)position withMarker:(id)marker
{
  markerCopy = marker;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:{markerCopy, 0}];
    v8 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:v7];

    lastObject = [v8 lastObject];

    if (position)
    {
      [(UIKitWebAccessibilityObjectWrapper *)self lineStartMarkerForMarker:lastObject];
    }

    else
    {
      [(UIKitWebAccessibilityObjectWrapper *)self lineEndMarkerForMarker:lastObject];
    }
    v11 = ;
    v10 = [v11 safeValueForKey:@"dataRepresentation"];
  }

  else
  {
    v10 = 0;
    lastObject = markerCopy;
  }

  return v10;
}

- (_NSRange)_accessibilityCharacterRangeForPosition:(unint64_t)position
{
  v4 = [(UIKitWebAccessibilityObjectWrapper *)self textMarkerForPosition:position];
  if (v4)
  {
    v5 = [(UIKitWebAccessibilityObjectWrapper *)self nextMarkerForMarker:v4];
    if (v5)
    {
      array = [MEMORY[0x29EDB8DE8] array];
      [array axSafelyAddObject:v4];
      [array axSafelyAddObject:v5];
      v7 = [(UIKitWebAccessibilityObjectWrapper *)self _rangeForWebTextMarkers:array];
      v9 = v8;
    }

    else
    {
      v9 = 0;
      v7 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0x7FFFFFFFLL;
  }

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position
{
  v40[2] = *MEMORY[0x29EDCA608];
  v5 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityTextMarkerForPosition:?];
  v6 = v5;
  if (!v5)
  {
    v38.receiver = self;
    v38.super_class = UIKitWebAccessibilityObjectWrapper;
    v14 = [(UIKitWebAccessibilityObjectWrapper *)&v38 _accessibilityLineRangeForPosition:position];
    v16 = v15;
    goto LABEL_22;
  }

  if (position)
  {
    v7 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityPreviousMarker:v5];
    v8 = v7;
    if (v7 && (v40[0] = v7, v40[1] = v6, [MEMORY[0x29EDB8D80] arrayWithObjects:v40 count:2], v9 = objc_claimAutoreleasedReturnValue(), -[UIKitWebAccessibilityObjectWrapper accessibilityStringForTextMarkers:](self, "accessibilityStringForTextMarkers:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x29EDB9F50], "newlineCharacterSet"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "rangeOfCharacterFromSet:", v11) == 0x7FFFFFFFFFFFFFFFLL, v11, v10, v9, !v12))
    {
      v13 = v6;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = v5;
  }

  v17 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityNextMarker:v6];
  v18 = v17;
  if (!v17 || (v39[0] = v6, v39[1] = v17, [MEMORY[0x29EDB8D80] arrayWithObjects:v39 count:2], v19 = objc_claimAutoreleasedReturnValue(), -[UIKitWebAccessibilityObjectWrapper accessibilityStringForTextMarkers:](self, "accessibilityStringForTextMarkers:", v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x29EDB9F50], "newlineCharacterSet"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "rangeOfCharacterFromSet:", v21) == 0x7FFFFFFFFFFFFFFFLL, v21, v20, v19, v22))
  {
    v23 = 0;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_16:
    v13 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityLineStartMarker:v6];
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v23 = v6;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v23)
  {
    goto LABEL_18;
  }

LABEL_17:
  v23 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityLineEndMarker:v6];
LABEL_18:
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v31 = v6;
  AXPerformSafeBlock();
  v24 = v33[5];

  _Block_object_dispose(&v32, 8);
  if (!v24 || (v32 = 0, v33 = &v32, v34 = 0x3032000000, v35 = __Block_byref_object_copy_, v36 = __Block_byref_object_dispose_, v37 = 0, v30 = v24, AXPerformSafeBlock(), v25 = v33[5], v30, _Block_object_dispose(&v32, 8), v37, [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertTextMarkersToDataArray:v25], array = objc_claimAutoreleasedReturnValue(), v25, v30, !array))
  {
    array = [MEMORY[0x29EDB8DE8] array];
    [array axSafelyAddObject:v13];
    [array axSafelyAddObject:v23];
  }

  v14 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityRangeForTextMarkers:array];
  v16 = v27;

LABEL_22:
  v28 = v14;
  v29 = v16;
  result.length = v29;
  result.location = v28;
  return result;
}

uint64_t __73__UIKitWebAccessibilityObjectWrapper__accessibilityLineRangeForPosition___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [objc_allocWithZone(NSClassFromString(&cfstr_Webaccessibili_1.isa)) initWithData:a1[4] accessibilityObject:a1[5]];

  return MEMORY[0x2A1C71028]();
}

uint64_t __73__UIKitWebAccessibilityObjectWrapper__accessibilityLineRangeForPosition___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) lineMarkersForMarker:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityMarkerForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    _accessibilityWebDocumentView = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebDocumentView];
    v7 = [_accessibilityWebDocumentView safeValueForKey:@"_accessibilityDocumentView"];
    window = [_accessibilityWebDocumentView window];
    [window convertPoint:_accessibilityWebDocumentView toView:{x, y}];
    v10 = v9;
    v12 = v11;

    [v7 convertPoint:0 fromView:{v10, v12}];
    v13 = [(UIKitWebAccessibilityObjectWrapper *)self textMarkerForPoint:?];
    v14 = [v13 safeValueForKey:@"dataRepresentation"];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isCheckBox
{
  v3 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"AXCheckBoxValue"];
  if (!v3)
  {
    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetBoolValue:(*MEMORY[0x29EDC7FE8] & ~accessibilityTraits) == 0 forKey:@"AXCheckBoxValue"];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (float)_accessibilityActivationDelay
{
  if (([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsAttachmentElement"]& 1) != 0)
  {
    return 0.2;
  }

  v4.receiver = self;
  v4.super_class = UIKitWebAccessibilityObjectWrapper;
  [(UIKitWebAccessibilityObjectWrapper *)&v4 _accessibilityActivationDelay];
  return result;
}

- (void)accessibilityElementDidBecomeFocused
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if (((*MEMORY[0x29EDC7598] | *MEMORY[0x29EDC7550]) & accessibilityTraits) == 0 && ([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsComboBox"]& 1) == 0 && ([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsShowingValidationMessage"]& 1) == 0)
  {
    accessibilityAssistiveTechnologyFocusedIdentifiers = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityAssistiveTechnologyFocusedIdentifiers];
    v5 = [accessibilityAssistiveTechnologyFocusedIdentifiers containsObject:*MEMORY[0x29EDC7EE8]];

    if (v5)
    {
      [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetNativeFocus];
      v6.receiver = self;
      v6.super_class = UIKitWebAccessibilityObjectWrapper;
      [(UIKitWebAccessibilityObjectWrapper *)&v6 accessibilityElementDidBecomeFocused];
    }
  }
}

- (BOOL)_accessibilitySupportsActivateAction
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F98] & accessibilityTraits) != 0)
  {
    [(UIKitWebAccessibilityObjectWrapper *)self accessibilityActivationPoint];
    UIAccessibilitySceneReferencePointForScreenPoint();
    v4 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityDataDetectorScheme:?];
    if (v4)
    {

      return 0;
    }

    if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWK2DataDetectorLink])
    {
      return 0;
    }
  }

  accessibilityTraits2 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7598] & ~accessibilityTraits2) == 0)
  {
    return 0;
  }

  accessibilityTraits3 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  return (*MEMORY[0x29EDC7550] & ~accessibilityTraits3) != 0;
}

- (id)accessibilityPath
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    _accessibilityPath = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityPath];
    if (_accessibilityPath)
    {
      _accessibilityPath = [MEMORY[0x29EDC7948] bezierPathWithCGPath:_accessibilityPath];
    }
  }

  else
  {
    _accessibilityPath = 0;
  }

  return _accessibilityPath;
}

- (BOOL)accessibilityActivate
{
  _prepareAccessibilityCall = [(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall];
  if (_prepareAccessibilityCall)
  {
    if ([(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySupportsActivateAction])
    {
      accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
      if ((*MEMORY[0x29EDC7F98] & ~accessibilityTraits) != 0)
      {
        if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsInteractiveVideo])
        {
          if ([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsMediaPlaying"])
          {
            v7 = @"pause.video";
          }

          else
          {
            v7 = @"play.video";
          }

          v8 = accessibilityLocalizedString(v7);
          UIAccessibilitySpeakAndDoNotBeInterrupted();
        }

        LOBYTE(_prepareAccessibilityCall) = [(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"_accessibilityActivate"];
      }

      else
      {
        _axWebKitTrueLinkParent = [(UIKitWebAccessibilityObjectWrapper *)self _axWebKitTrueLinkParent];
        v6 = [_axWebKitTrueLinkParent safeBoolForKey:@"_accessibilityActivate"];

        LOBYTE(_prepareAccessibilityCall) = v6;
      }
    }

    else
    {
      v10.receiver = self;
      v10.super_class = UIKitWebAccessibilityObjectWrapper;
      LOBYTE(_prepareAccessibilityCall) = [(UIKitWebAccessibilityObjectWrapper *)&v10 accessibilityActivate];
    }
  }

  return _prepareAccessibilityCall;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _accessibilityWebDocumentView = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebDocumentView];
  window = [_accessibilityWebDocumentView window];
  [window convertPoint:_accessibilityWebDocumentView toView:{x, y}];
  v8 = v7;
  v10 = v9;

  LOBYTE(window) = [_accessibilityWebDocumentView accessibilityZoomInAtPoint:{v8, v10}];
  return window;
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _accessibilityWebDocumentView = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebDocumentView];
  window = [_accessibilityWebDocumentView window];
  [window convertPoint:_accessibilityWebDocumentView toView:{x, y}];
  v8 = v7;
  v10 = v9;

  LOBYTE(window) = [_accessibilityWebDocumentView accessibilityZoomOutAtPoint:{v8, v10}];
  return window;
}

- (id)accessibilityLanguage
{
  if (([(UIKitWebAccessibilityObjectWrapper *)self _accessibilityBoolValueForKey:@"InSUWebView"]& 1) != 0 || ![(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    goto LABEL_10;
  }

  v3 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"InSUWebView"];
  if (!v3)
  {
    v6 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Suwebview.isa)];

    if (!v6)
    {
      goto LABEL_5;
    }

    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetBoolValue:1 forKey:@"InSUWebView"];
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

LABEL_5:
  v11.receiver = self;
  v11.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityLanguage = [(UIKitWebAccessibilityObjectWrapper *)&v11 accessibilityLanguage];
  if ([accessibilityLanguage length])
  {
    if ([accessibilityLanguage isEqualToString:@" "])
    {
      v5 = 0;
    }

    else
    {
      v5 = accessibilityLanguage;
    }
  }

  else
  {
    _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageParent];
    accessibilityLanguage2 = [_accessibilityWebPageParent accessibilityLanguage];
    v5 = accessibilityLanguage2;
    if (accessibilityLanguage2)
    {
      v10 = accessibilityLanguage2;
    }

    else
    {
      v10 = @" ";
    }

    [(UIKitWebAccessibilityObjectWrapper *)self setAccessibilityLanguage:v10];
  }

LABEL_11:

  return v5;
}

- (BOOL)_isIBooks
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"_accessibilityIsInBookContent"];
}

- (id)_accessibilityTextMarkerForPosition:(int64_t)position
{
  elementTextRange = [(UIKitWebAccessibilityObjectWrapper *)self elementTextRange];
  if ([(UIKitWebAccessibilityObjectWrapper *)self _isIBooks])
  {
    v6 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"_axStartRangeOfCurrentPage"];
    if (v6)
    {
      v23 = 0;
      objc_opt_class();
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy_;
      v21 = __Block_byref_object_dispose_;
      v22 = 0;
      v16 = v6;
      AXPerformSafeBlock();
      v7 = v18[5];

      _Block_object_dispose(&v17, 8);
      v8 = __UIAccessibilityCastAsClass();

      if (v23 == 1)
      {
        abort();
      }

      v9 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uiwebdocumentv.isa)];
      beginningOfDocument = [v9 beginningOfDocument];
      start = [v8 start];
      v12 = [v9 offsetFromPosition:beginningOfDocument toPosition:start];
    }

    else
    {
      v12 = 0;
    }
  }

  else if (elementTextRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = elementTextRange;
  }

  position = [(UIKitWebAccessibilityObjectWrapper *)self textMarkerForPosition:v12 + position];
  v14 = [position safeValueForKey:@"dataRepresentation"];

  return v14;
}

uint64_t __74__UIKitWebAccessibilityObjectWrapper__accessibilityTextMarkerForPosition___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSClassFromString(&cfstr_Uitextrangeimp.isa) wrapDOMRange:*(a1 + 32)];

  return MEMORY[0x2A1C71028]();
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UIKitWebAccessibilityObjectWrapper *)self elementTextRange]+ location;
    v7 = [(UIKitWebAccessibilityObjectWrapper *)self textMarkerForPosition:v6];
    v8 = [(UIKitWebAccessibilityObjectWrapper *)self textMarkerForPosition:v6 + length];
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:{v7, v8, 0}];
    [(UIKitWebAccessibilityObjectWrapper *)self frameForTextMarkers:v9];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x29EDB90E0];
    v13 = *(MEMORY[0x29EDB90E0] + 8);
    v15 = *(MEMORY[0x29EDB90E0] + 16);
    v17 = *(MEMORY[0x29EDB90E0] + 24);
  }

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _isIBooks])
  {
    return 1;
  }

  v3 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"_accessibilityScrollPosition"];
  [v3 pointValue];
  v5 = v4;

  if (v5 < 5.0)
  {
    return 1;
  }

  v7 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"accessibilityElementRect"];
  [v7 rectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  if (CGRectGetMaxY(v17) < v5)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = UIKitWebAccessibilityObjectWrapper;
  return [(UIKitWebAccessibilityObjectWrapper *)&v16 _accessibilityIsSpeakThisElement];
}

- (id)_accessibilitySpeakThisString
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _isIBooks])
  {
    v8 = 0;
    v3 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"_axStartRangeOfCurrentPage"];
    v4 = __UIAccessibilitySafeClass();

    text = [v4 text];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKitWebAccessibilityObjectWrapper;
    text = [(UIKitWebAccessibilityObjectWrapper *)&v7 _accessibilitySpeakThisString];
  }

  return text;
}

- (CGRect)_accessibilityConvertSystemBoundedScreenRectToContextSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  if (![(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    v16.receiver = self;
    v16.super_class = UIKitWebAccessibilityObjectWrapper;
    [(UIKitWebAccessibilityObjectWrapper *)&v16 _accessibilityConvertSystemBoundedScreenRectToContextSpace:x, y, width, height];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)automationElements
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7598] & ~accessibilityTraits) != 0)
  {
    v18.receiver = self;
    v18.super_class = UIKitWebAccessibilityObjectWrapper;
    automationElements = [(UIKitWebAccessibilityObjectWrapper *)&v18 automationElements];
  }

  else
  {
    automationElements = [MEMORY[0x29EDB8DE8] array];
    [(UIKitWebAccessibilityObjectWrapper *)self _axBuildAXTreeFromElement:self outArray:automationElements];
    if (![automationElements count])
    {
      v5 = [MEMORY[0x29EDB8E20] set];
      accessibilityAttributedValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityAttributedValue];
      v19 = 0;
      v20 = 0;
      v7 = [accessibilityAttributedValue length];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = MEMORY[0x29EDBD868];
        while (1)
        {
          v11 = [accessibilityAttributedValue attributesAtIndex:v9 effectiveRange:&v19];
          v12 = v11;
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v13 = [v11 objectForKey:*v10];
          v14 = v13;
          if (v13)
          {
            v15 = v13 == self;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            [v5 addObject:v13];
          }

          v19 += v20;

          v9 = v19;
          if (v19 >= v8)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_15:
      allObjects = [v5 allObjects];
      [automationElements addObjectsFromArray:allObjects];
    }
  }

  return automationElements;
}

- (void)_axBuildAXTreeFromElement:(id)element outArray:(id)array
{
  elementCopy = element;
  arrayCopy = array;
  v7 = arrayCopy;
  if (elementCopy && arrayCopy)
  {
    accessibilityElementCount = [(UIKitWebAccessibilityObjectWrapper *)elementCopy accessibilityElementCount];
    v9 = elementCopy;
    if (accessibilityElementCount <= 0)
    {
      isAccessibilityElement = [(UIKitWebAccessibilityObjectWrapper *)elementCopy isAccessibilityElement];
      if (elementCopy != self && isAccessibilityElement)
      {
        [v7 addObject:elementCopy];
      }
    }

    else
    {
      v10 = accessibilityElementCount;
      if (elementCopy != self)
      {
        [v7 addObject:elementCopy];
        v9 = elementCopy;
      }

      for (i = 0; i != v10; ++i)
      {
        v12 = [(UIKitWebAccessibilityObjectWrapper *)v9 accessibilityElementAtIndex:i];
        [(UIKitWebAccessibilityObjectWrapper *)self _axBuildAXTreeFromElement:v12 outArray:v7];

        v9 = elementCopy;
      }
    }
  }
}

- (id)_accessibilityUserTestingElementBaseType
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F60] & accessibilityTraits) != 0)
  {
    _accessibilityUserTestingElementBaseType = @"UISlider";
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIKitWebAccessibilityObjectWrapper;
    _accessibilityUserTestingElementBaseType = [(UIKitWebAccessibilityObjectWrapper *)&v6 _accessibilityUserTestingElementBaseType];
  }

  return _accessibilityUserTestingElementBaseType;
}

- (id)_accessibilityDOMAttributes
{
  v3 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:1];
  v6.receiver = self;
  v6.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityIdentifier = [(UIKitWebAccessibilityObjectWrapper *)&v6 accessibilityIdentifier];
  [v3 setObject:accessibilityIdentifier forKey:@"id"];

  return v3;
}

- (id)_accessibilityScrollAncestor
{
  v44 = *MEMORY[0x29EDCA608];
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    _accessibilityWebPageObject = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageObject];
    accessibilityContainer = [_accessibilityWebPageObject accessibilityContainer];
  }

  else
  {
    _accessibilityWebDocumentView = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebDocumentView];
    NSClassFromString(&cfstr_Uiwebbrowservi.isa);
    if (objc_opt_isKindOfClass())
    {
      v21 = [_accessibilityWebDocumentView safeValueForKey:@"_overflowScrollViews"];
      if ([v21 count])
      {
        [(UIKitWebAccessibilityObjectWrapper *)self accessibilityActivationPoint];
        v7 = v6;
        v9 = v8;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        obj = v21;
        v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v10)
        {
          v11 = *v40;
LABEL_7:
          v12 = 0;
          while (1)
          {
            if (*v40 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v39 + 1) + 8 * v12);
            v14 = [v13 safeValueForKey:@"_overflowContentView"];
            window = [_accessibilityWebDocumentView window];
            v33 = 0;
            v34 = &v33;
            v35 = 0x3010000000;
            v36 = &unk_29C79E90F;
            v37 = 0;
            v38 = 0;
            v25 = MEMORY[0x29EDCA5F8];
            v26 = 3221225472;
            v27 = __66__UIKitWebAccessibilityObjectWrapper__accessibilityScrollAncestor__block_invoke;
            v28 = &unk_29F31F558;
            v30 = &v33;
            v16 = window;
            v29 = v16;
            v31 = v7;
            v32 = v9;
            AXPerformSafeBlock();
            v17 = v34[4];
            v18 = v34[5];

            _Block_object_dispose(&v33, 8);
            [v16 convertPoint:v14 toView:{v17, v18}];
            v19 = [v14 hitTest:0 withEvent:?];
            if (v19)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
              if (v10)
              {
                goto LABEL_7;
              }

              goto LABEL_13;
            }
          }

          accessibilityContainer = v13;

          if (accessibilityContainer)
          {
            goto LABEL_17;
          }
        }

        else
        {
LABEL_13:
        }
      }

      v24.receiver = self;
      v24.super_class = UIKitWebAccessibilityObjectWrapper;
      accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)&v24 _accessibilityScrollAncestor];
LABEL_17:
    }

    else
    {

      v23.receiver = self;
      v23.super_class = UIKitWebAccessibilityObjectWrapper;
      accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)&v23 _accessibilityScrollAncestor];
    }
  }

  return accessibilityContainer;
}

uint64_t __66__UIKitWebAccessibilityObjectWrapper__accessibilityScrollAncestor__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) convertDeviceToWindow:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (BOOL)_accessibilityAlwaysSpeakTableHeaders
{
  v2 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"accessibilitySpeakTableHeaders"];
  v3 = [v2 isEqualToString:@"always"];

  return v3;
}

- (BOOL)_accessibilityScrollToVisible
{
  _accessibilityScrollAncestor = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityScrollAncestor];
  NSClassFromString(&cfstr_Uiweboverflows.isa);
  if (objc_opt_isKindOfClass())
  {
    [(UIKitWebAccessibilityObjectWrapper *)self accessibilityFrameForScrolling];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = AXLogScrollToVisible();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(UIKitWebAccessibilityObjectWrapper *)_accessibilityScrollAncestor _accessibilityScrollToVisible];
    }

    [_accessibilityScrollAncestor _accessibilityScrollToFrame:0 forView:{v5, v7, v9, v11}];
    v13 = AXLogScrollToVisible();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(UIKitWebAccessibilityObjectWrapper *)_accessibilityScrollAncestor _accessibilityScrollToVisible];
    }

    _accessibilityBaseScrollToVisible = 1;
LABEL_7:
    AXPerformBlockOnMainThreadAfterDelay();
    goto LABEL_8;
  }

  [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _accessibilityIsScrollDivDescendent]|| (_accessibilityBaseScrollToVisible = 1, v17 >= 0.0) && v19 >= 0.0)
  {
    _accessibilityBaseScrollToVisible = 1;
    if (v21 != 0.0 && v23 != 0.0)
    {
      if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
      {
        v42.receiver = self;
        v42.super_class = UIKitWebAccessibilityObjectWrapper;
        [(UIKitWebAccessibilityObjectWrapper *)&v42 _accessibilityScrollToVisible];
      }

      else
      {
        v24 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityFindAncestor:&__block_literal_global_1097 startWithSelf:0];
        if (v24)
        {
          v41 = 0;
          objc_opt_class();
          v25 = [v24 safeValueForKey:@"_scroller"];
          v26 = __UIAccessibilityCastAsClass();

          [v26 contentOffset];
          v28 = v27;
          v30 = v29;
          [v26 contentSize];
          v32 = v31;
          v34 = v33;
          [v26 frame];
          v44.origin.x = v35;
          v44.origin.y = v36;
          v44.size.width = v37;
          v44.size.height = v38;
          v43.origin.x = v28;
          v43.origin.y = v30;
          v43.size.width = v32;
          v43.size.height = v34;
          LODWORD(v25) = CGRectEqualToRect(v43, v44);

          if (v25)
          {
            v40.receiver = self;
            v40.super_class = UIKitWebAccessibilityObjectWrapper;
            [(UIKitWebAccessibilityObjectWrapper *)&v40 _accessibilityScrollToVisible];
          }
        }

        v39.receiver = self;
        v39.super_class = UIKitWebAccessibilityObjectWrapper;
        _accessibilityBaseScrollToVisible = [(UIKitWebAccessibilityObjectWrapper *)&v39 _accessibilityBaseScrollToVisible];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return _accessibilityBaseScrollToVisible;
}

void __67__UIKitWebAccessibilityObjectWrapper__accessibilityScrollToVisible__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uifieldeditor.isa)];

  if (!v2)
  {
    v3 = *(a1 + 32);

    MEMORY[0x2A1C6A010](v3);
  }
}

- (CGPoint)_accessibilityScrollRectToVisible:(CGRect)visible
{
  [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityScrollToVisible:visible.origin.x];
  v3 = *MEMORY[0x29EDB90B8];
  v4 = *(MEMORY[0x29EDB90B8] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)_accessibilityIsScrollDivDescendent
{
  if (![(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    return 0;
  }

  v3 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"_accessibilityScrollSize"];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
  if (!accessibilityContainer)
  {
    return 0;
  }

  v9 = accessibilityContainer;
  v10 = *MEMORY[0x29EDB90E8];
  v11 = *(MEMORY[0x29EDB90E8] + 8);
  do
  {
    v12 = [v9 safeValueForKey:@"_accessibilityScrollSize"];
    [v12 CGSizeValue];
    v14 = v13;
    v16 = v15;

    if (v14 == v10 && v16 == v11)
    {
      break;
    }

    if (v14 != v5 || v16 != v7)
    {
      v20 = 1;
      goto LABEL_16;
    }

    accessibilityContainer2 = [v9 accessibilityContainer];

    v9 = accessibilityContainer2;
    v7 = v16;
    v5 = v14;
  }

  while (accessibilityContainer2);
  v20 = 0;
LABEL_16:

  return v20;
}

- (_NSRange)_accessibilityCheckRowRangeForTrait:(unint64_t)trait
{
  if ((trait & ~[(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits]) != 0)
  {
    v13 = 0;
    v10 = 0x7FFFFFFFLL;
  }

  else
  {
    accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
    accessibilityElementCount = [accessibilityContainer accessibilityElementCount];
    if (accessibilityElementCount < 1)
    {
      v13 = 0;
      v10 = 0x7FFFFFFFLL;
    }

    else
    {
      v7 = accessibilityElementCount;
      v8 = 0;
      v9 = 0;
      v10 = 0x7FFFFFFFLL;
      do
      {
        v11 = [accessibilityContainer accessibilityElementAtIndex:v8];
        accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)v11 accessibilityTraits];
        if ((accessibilityTraits & trait) != 0)
        {
          v13 = v9 + 1;
        }

        else
        {
          v13 = v9;
        }

        if ((accessibilityTraits & trait) != 0 && v11 == self)
        {
          v10 = v9;
        }

        ++v8;
        v9 = v13;
      }

      while (v7 != v8);
    }
  }

  v14 = v10;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)accessibilityRowRange
{
  accessibilityRowRange = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityCheckRowRangeForTrait:*MEMORY[0x29EDC7588]];
  if (accessibilityRowRange == 0x7FFFFFFF)
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityRowRange = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityRowRange];
  }

  result.length = v4;
  result.location = accessibilityRowRange;
  return result;
}

- (BOOL)accessibilityCanFuzzyHitTest
{
  v6.receiver = self;
  v6.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityCanFuzzyHitTest = [(UIKitWebAccessibilityObjectWrapper *)&v6 accessibilityCanFuzzyHitTest];
  if (!accessibilityCanFuzzyHitTest)
  {
    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
    if ((*MEMORY[0x29EDC7598] & accessibilityTraits) != 0)
    {
      return 1;
    }
  }

  return accessibilityCanFuzzyHitTest;
}

- (id)accessibilityHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  v9.receiver = self;
  v9.super_class = UIKitWebAccessibilityObjectWrapper;
  v6 = [(UIKitWebAccessibilityObjectWrapper *)&v9 accessibilityHitTest:?];
  if (([v6 isAccessibilityElement] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityPostProcessHitTest:x, y];
      if ([v7 isAccessibilityElement])
      {
        goto LABEL_6;
      }
    }
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (id)_accessibilityMathEquationRootObject
{
  v3 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"MathTopObject"];
  if (v3)
  {
    null = [MEMORY[0x29EDB8E28] null];

    if (v3 == null)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      while (![accessibilityContainer safeBoolForKey:@"accessibilityIsMathTopObject"])
      {
        v6AccessibilityContainer = [accessibilityContainer accessibilityContainer];

        objc_opt_class();
        accessibilityContainer = v6AccessibilityContainer;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetRetainedValue:accessibilityContainer forKey:@"MathTopObject"];
      v6AccessibilityContainer = accessibilityContainer;
      v5 = v6AccessibilityContainer;
    }

    else
    {
      v6AccessibilityContainer = accessibilityContainer;
LABEL_10:
      null2 = [MEMORY[0x29EDB8E28] null];
      [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetRetainedValue:null2 forKey:@"MathTopObject"];

      v5 = 0;
    }
  }

  return v5;
}

- (id)accessibilityPostProcessHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageParent];
  v7 = [_accessibilityWebPageParent _accessibilityBoolValueForKey:@"AXIgnoreFuzzyHitTesting"];

  if (v7)
  {
    selfCopy = self;
  }

  else
  {
    _accessibilityMathEquationRootObject = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityMathEquationRootObject];
    v10 = _accessibilityMathEquationRootObject;
    if (_accessibilityMathEquationRootObject)
    {
      selfCopy = _accessibilityMathEquationRootObject;
    }

    else
    {
      GSMainScreenScaleFactor();
      v12 = v11 * 100.0;
      selfCopy2 = self;
      if (fuzzyAccessibilityHitTest_hitQueue)
      {
        [fuzzyAccessibilityHitTest_hitQueue removeAllObjects];
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        v15 = fuzzyAccessibilityHitTest_hitQueue;
        fuzzyAccessibilityHitTest_hitQueue = v14;
      }

      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x2020000000;
      v37 = v12;
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy_;
      v34 = __Block_byref_object_dispose_;
      v35 = 0;
      [fuzzyAccessibilityHitTest_hitQueue addObject:selfCopy2];
      v16 = NSClassFromString(&cfstr_Webaccessibili.isa);
      while ([fuzzyAccessibilityHitTest_hitQueue count])
      {
        v17 = [fuzzyAccessibilityHitTest_hitQueue objectAtIndex:0];
        [fuzzyAccessibilityHitTest_hitQueue removeObjectAtIndex:0];
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 3221225472;
        v22[2] = __fuzzyAccessibilityHitTest_block_invoke;
        v22[3] = &unk_29F31F7A8;
        v18 = v17;
        v27 = x;
        v28 = y;
        v23 = v18;
        v24 = v36;
        v25 = &v30;
        v26 = v16;
        v29 = v12;
        [v18 accessibilityEnumerateContainerElementsUsingBlock:v22];
      }

      v19 = v31[5];
      _Block_object_dispose(&v30, 8);

      _Block_object_dispose(v36, 8);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = selfCopy2;
      }

      selfCopy = v20;
    }
  }

  return selfCopy;
}

- (id)_accessibilityParentForSubview:(id)subview
{
  subviewCopy = subview;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v7.receiver = self;
    v7.super_class = UIKitWebAccessibilityObjectWrapper;
    v5 = [(UIKitWebAccessibilityObjectWrapper *)&v7 _accessibilityParentForSubview:subviewCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityPlaceholderValue
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v6.receiver = self;
    v6.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityPlaceholderValue = [(UIKitWebAccessibilityObjectWrapper *)&v6 accessibilityPlaceholderValue];
    if ([accessibilityPlaceholderValue length])
    {
      v4 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityPlaceholderValue];

      [v4 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD970]];
      accessibilityPlaceholderValue = v4;
    }
  }

  else
  {
    accessibilityPlaceholderValue = 0;
  }

  return accessibilityPlaceholderValue;
}

- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:(SEL)selector
{
  if (sel_accessibilityAttributedValue == selector)
  {
    if (AXDoesRequestingClientDeserveAutomation())
    {
      return 1;
    }

    else
    {
      accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
      return (*MEMORY[0x29EDC7598] & ~accessibilityTraits) == 0;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIKitWebAccessibilityObjectWrapper;
    return [(UIKitWebAccessibilityObjectWrapper *)&v6 _accessibilityOverridesPotentiallyAttributedAPISelector:?];
  }
}

- (id)accessibilityAttributedValue
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
    if ((*MEMORY[0x29EDC7598] & ~accessibilityTraits) == 0 || (*MEMORY[0x29EDC7FD0] & accessibilityTraits) == *MEMORY[0x29EDC7FD0])
    {
      if (objc_opt_respondsToSelector())
      {
        _accessibilityAttributedValueForElement = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAttributedValueForElement];
      }

      else
      {
        [(UIKitWebAccessibilityObjectWrapper *)self elementTextRange];
        v12[0] = 0;
        v12[1] = v7;
        _accessibilityAttributedValueForElement = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAttributedValueForRange:v12];
      }

      v6 = _accessibilityAttributedValueForElement;
    }

    else
    {
      v6 = 0;
    }

    if (![v6 length])
    {
      v11.receiver = self;
      v11.super_class = UIKitWebAccessibilityObjectWrapper;
      accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)&v11 accessibilityValue];
      if (accessibilityValue)
      {
        v9 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:accessibilityValue];

        v6 = v9;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityAttributedValueForElement
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = objc_alloc(MEMORY[0x29EDBA038]);
  attributedStringForElement = [(UIKitWebAccessibilityObjectWrapper *)self attributedStringForElement];
  v5 = [v3 initWithAttributedString:attributedStringForElement];

  if ([v5 length] == 1)
  {
    v6 = [v5 attributesAtIndex:0 effectiveRange:0];
    v7 = [v6 objectForKey:*MEMORY[0x29EDBD868]];

    if (v7 == self)
    {

LABEL_5:
      v5 = 0;
    }
  }

  if (![v5 length])
  {
    v8 = objc_alloc(MEMORY[0x29EDBA038]);
    accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityValue];
    v10 = [v8 initWithString:accessibilityValue];

    v5 = v10;
  }

  v11 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAttributedValue:v5];

  return v11;
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)range
{
  if (range)
  {
    elementTextRange = [(UIKitWebAccessibilityObjectWrapper *)self elementTextRange];
    if (elementTextRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      range->location += elementTextRange;
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = objc_alloc(MEMORY[0x29EDBA038]);
      v7 = [(UIKitWebAccessibilityObjectWrapper *)self attributedStringForRange:range->location, range->length];
      v8 = [v6 initWithAttributedString:v7];
    }

    else
    {
      v8 = 0;
    }

    if (![v8 length])
    {
      accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityValue];
      v17.length = [accessibilityValue length];
      v17.location = 0;
      v11 = NSIntersectionRange(*range, v17);
      if (v11.length)
      {
        v12 = objc_alloc(MEMORY[0x29EDBA038]);
        v13 = [accessibilityValue substringWithRange:{v11.location, v11.length}];
        v14 = [v12 initWithString:v13];

        v8 = v14;
      }
    }

    v9 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAttributedValue:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_accessibilityAttributedValue:(id)value
{
  valueCopy = value;
  [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertStyleAttributesToAccessibility:valueCopy];
  if (!AXDoesRequestingClientDeserveAutomation())
  {
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAddMispellingsToAttributedString:valueCopy];
  }

  return valueCopy;
}

- (id)accessibilityURL
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
    v4 = *MEMORY[0x29EDC7F98];
    if (((*MEMORY[0x29EDC7F98] | *MEMORY[0x29EDC7F88]) & accessibilityTraits) != 0 && ([(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      while (([v6 accessibilityTraits] & v4) == 0)
      {
        accessibilityContainer = [v6 accessibilityContainer];

        v6 = accessibilityContainer;
        if (!accessibilityContainer)
        {
          goto LABEL_7;
        }
      }

      accessibilityURL = [v6 accessibilityURL];
    }

    else
    {
LABEL_7:
      v10.receiver = self;
      v10.super_class = UIKitWebAccessibilityObjectWrapper;
      accessibilityURL = [(UIKitWebAccessibilityObjectWrapper *)&v10 accessibilityURL];
    }
  }

  else
  {
    accessibilityURL = 0;
  }

  return accessibilityURL;
}

- (id)accessibilityMathRootIndexObject
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathRootIndexObject = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathRootIndexObject];
  }

  else
  {
    accessibilityMathRootIndexObject = 0;
  }

  return accessibilityMathRootIndexObject;
}

- (id)accessibilityMathRadicand
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathRadicand = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathRadicand];
  }

  else
  {
    accessibilityMathRadicand = 0;
  }

  return accessibilityMathRadicand;
}

- (id)accessibilityMathNumeratorObject
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathNumeratorObject = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathNumeratorObject];
  }

  else
  {
    accessibilityMathNumeratorObject = 0;
  }

  return accessibilityMathNumeratorObject;
}

- (id)accessibilityMathDenominatorObject
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathDenominatorObject = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathDenominatorObject];
  }

  else
  {
    accessibilityMathDenominatorObject = 0;
  }

  return accessibilityMathDenominatorObject;
}

- (id)accessibilityMathBaseObject
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathBaseObject = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathBaseObject];
  }

  else
  {
    accessibilityMathBaseObject = 0;
  }

  return accessibilityMathBaseObject;
}

- (id)accessibilityMathSubscriptObject
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathSubscriptObject = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathSubscriptObject];
  }

  else
  {
    accessibilityMathSubscriptObject = 0;
  }

  return accessibilityMathSubscriptObject;
}

- (id)accessibilityMathSuperscriptObject
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathSuperscriptObject = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathSuperscriptObject];
  }

  else
  {
    accessibilityMathSuperscriptObject = 0;
  }

  return accessibilityMathSuperscriptObject;
}

- (id)accessibilityMathUnderObject
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathUnderObject = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathUnderObject];
  }

  else
  {
    accessibilityMathUnderObject = 0;
  }

  return accessibilityMathUnderObject;
}

- (id)accessibilityMathOverObject
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathOverObject = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathOverObject];
  }

  else
  {
    accessibilityMathOverObject = 0;
  }

  return accessibilityMathOverObject;
}

- (id)accessibilityMathFencedOpenString
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathFencedOpenString = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathFencedOpenString];
  }

  else
  {
    accessibilityMathFencedOpenString = 0;
  }

  return accessibilityMathFencedOpenString;
}

- (id)accessibilityMathFencedCloseString
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathFencedCloseString = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathFencedCloseString];
  }

  else
  {
    accessibilityMathFencedCloseString = 0;
  }

  return accessibilityMathFencedCloseString;
}

- (id)accessibilityMathPostscripts
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathPostscripts = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathPostscripts];
  }

  else
  {
    accessibilityMathPostscripts = 0;
  }

  return accessibilityMathPostscripts;
}

- (id)accessibilityMathPrescripts
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathPrescripts = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathPrescripts];
  }

  else
  {
    accessibilityMathPrescripts = 0;
  }

  return accessibilityMathPrescripts;
}

- (BOOL)accessibilityIsMathTopObject
{
  _prepareAccessibilityCall = [(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall];
  if (_prepareAccessibilityCall)
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    LOBYTE(_prepareAccessibilityCall) = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityIsMathTopObject];
  }

  return _prepareAccessibilityCall;
}

- (id)accessibilityMathType
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v5.receiver = self;
    v5.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityMathType = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityMathType];
  }

  else
  {
    accessibilityMathType = 0;
  }

  return accessibilityMathType;
}

- (id)accessibilitySpeechHint
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v6.receiver = self;
    v6.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilitySpeechHint = [(UIKitWebAccessibilityObjectWrapper *)&v6 accessibilitySpeechHint];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = accessibilitySpeechHint;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_axWebKitTrueLinkParent
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = 0;
    v4 = *MEMORY[0x29EDC7F98];
    while ((v4 & ~[(UIKitWebAccessibilityObjectWrapper *)selfCopy accessibilityTraits]) == 0)
    {
      v5 = selfCopy;

      selfCopy = [(UIKitWebAccessibilityObjectWrapper *)v5 accessibilityContainer];

      v3 = v5;
      if (!selfCopy)
      {
        goto LABEL_8;
      }
    }

    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)_accessibilityHeaderElementsForColumn:(unint64_t)column
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementForRow:0 andColumn:column];
  v5 = v4;
  if (v4)
  {
    v25 = 0;
    v6 = [v4 safeValueForKey:@"accessibilityHeaderElements"];
    v7 = __UIAccessibilitySafeClass();

    array = [MEMORY[0x29EDB8DE8] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          accessibilityColumnRange = [v14 accessibilityColumnRange];
          if (column >= accessibilityColumnRange && column - accessibilityColumnRange < v16)
          {
            defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
            v19 = [v14 _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];

            [array axSafelyAddObjectsFromArray:v19];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_accessibilityHeaderElementsForRow:(unint64_t)row
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementForRow:row andColumn:0];
  v5 = v4;
  if (v4)
  {
    v25 = 0;
    v6 = [v4 safeValueForKey:@"accessibilityHeaderElements"];
    v7 = __UIAccessibilitySafeClass();

    array = [MEMORY[0x29EDB8DE8] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          accessibilityRowRange = [v14 accessibilityRowRange];
          if (row >= accessibilityRowRange && row - accessibilityRowRange < v16)
          {
            defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
            v19 = [v14 _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];

            [array axSafelyAddObjectsFromArray:v19];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)accessibilityHint
{
  v11.receiver = self;
  v11.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityHint = [(UIKitWebAccessibilityObjectWrapper *)&v11 accessibilityHint];
  if (![accessibilityHint length])
  {
    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
    v6 = *MEMORY[0x29EDC7F80] | *MEMORY[0x29EDC7F98];
    if ((v6 & accessibilityTraits) != 0)
    {
      accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
      if (accessibilityContainer)
      {
        v8 = accessibilityContainer;
        while (([v8 accessibilityTraits] & v6) != 0)
        {
          accessibilityHint2 = [v8 accessibilityHint];

          if (![accessibilityHint2 length])
          {
            accessibilityContainer2 = [v8 accessibilityContainer];

            v8 = accessibilityContainer2;
            accessibilityHint = accessibilityHint2;
            if (accessibilityContainer2)
            {
              continue;
            }
          }

          goto LABEL_13;
        }

        accessibilityHint2 = accessibilityHint;
LABEL_13:

        accessibilityHint = accessibilityHint2;
      }
    }
  }

  return accessibilityHint;
}

- (id)accessibilityVisibleText
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDBDC08] & ~accessibilityTraits) != 0)
  {
    accessibilityValue = 0;
  }

  else
  {
    accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityValue
{
  v29.receiver = self;
  v29.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)&v29 accessibilityValue];
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  v5 = accessibilityTraits;
  if (accessibilityValue && (*MEMORY[0x29EDC7568] & ~accessibilityTraits) == 0)
  {
    v6 = [(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"_accessibilityIsStrongPasswordField"];
    v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityValue];
    v8 = v7;
    v9 = MEMORY[0x29EDBD9B0];
    if (v6)
    {
      v9 = MEMORY[0x29EDBD930];
    }

    [v7 setAttribute:*MEMORY[0x29EDB8F00] forKey:*v9];

    accessibilityValue = v8;
  }

  if ((*MEMORY[0x29EDC7FE8] & ~v5) == 0 && (([accessibilityValue isEqualToString:@"1"] & 1) != 0 || (objc_msgSend(accessibilityValue, "isEqualToString:", @"0") & 1) != 0 || objc_msgSend(accessibilityValue, "isEqualToString:", @"2")))
  {
    v10 = accessibilityValue;
    accessibilityValue = v10;
LABEL_17:
    v11 = v10;
    goto LABEL_34;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsIndeterminate"])
  {
    v10 = accessibilityLocalizedString(@"indeterminate.status");
    goto LABEL_17;
  }

  if (-[UIKitWebAccessibilityObjectWrapper safeBoolForKey:](self, "safeBoolForKey:", @"accessibilityIsAttachmentElement") && [accessibilityValue length])
  {
    [accessibilityValue floatValue];
    v10 = AXFormatFloatWithPercentage();
    goto LABEL_17;
  }

  accessibilityTraits2 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7F60] & accessibilityTraits2) != 0 && [accessibilityValue length])
  {
    v13 = [MEMORY[0x29EDBA0E0] scannerWithString:accessibilityValue];
    if ([v13 scanFloat:0])
    {
      isAtEnd = [v13 isAtEnd];

      if (!isAtEnd)
      {
        goto LABEL_26;
      }

      [accessibilityValue floatValue];
      if (v15 == 0.0)
      {
        goto LABEL_26;
      }

      [accessibilityValue floatValue];
      v17 = roundf(v16);
      [accessibilityValue floatValue];
      if (v17 != v18)
      {
        goto LABEL_26;
      }

      v19 = MEMORY[0x29EDBA0F8];
      [accessibilityValue floatValue];
      [v19 stringWithFormat:@"%.0f", v20];
      accessibilityValue = v13 = accessibilityValue;
    }
  }

LABEL_26:
  if (-[UIKitWebAccessibilityObjectWrapper _axIsInteractiveVideo](self, "_axIsInteractiveVideo") && [accessibilityValue length])
  {
    v21 = MEMORY[0x29EDBA0F8];
    v22 = accessibilityLocalizedString(@"video.current.time");
    v23 = [v21 stringWithFormat:v22, accessibilityValue];

    accessibilityValue = v23;
  }

  if (![accessibilityValue length])
  {
    accessibilityPlaceholderValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityPlaceholderValue];

    accessibilityValue = accessibilityPlaceholderValue;
  }

  _accessibilityColorDescription = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityColorDescription];
  if (_accessibilityColorDescription)
  {
    v28 = AXColorStringForColor();
    v26 = __UIAXStringForVariables();

    accessibilityValue = v26;
  }

  accessibilityValue = accessibilityValue;

  v11 = accessibilityValue;
LABEL_34:

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  accessibilityLabel = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityLabel];
  accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityValue];
  [(UIKitWebAccessibilityObjectWrapper *)self accessibilityFrame];
  v7 = NSStringFromCGRect(v11);
  v8 = [v3 stringWithFormat:@"%@[%p] L:[%@] V:[%@] F:[%@]", v4, self, accessibilityLabel, accessibilityValue, v7];

  return v8;
}

- (id)ariaLandmarkRoleDescription
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDBDB10] & accessibilityTraits) != 0 || (-[UIKitWebAccessibilityObjectWrapper safeValueForKey:](self, "safeValueForKey:", @"accessibilityRoleDescription"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5))
  {
    ariaLandmarkRoleDescription = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIKitWebAccessibilityObjectWrapper;
    ariaLandmarkRoleDescription = [(UIKitWebAccessibilityObjectWrapper *)&v8 ariaLandmarkRoleDescription];
  }

  return ariaLandmarkRoleDescription;
}

- (id)_accessibilityParentLinkContainer
{
  v3 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"AXParentContainerLink"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
    selfCopy = self;
    v7 = selfCopy;
    if (accessibilityContainer)
    {
      v8 = *MEMORY[0x29EDC7F98];
      v9 = selfCopy;
      while (1)
      {
        if ((v8 & [accessibilityContainer accessibilityTraits]) == 0)
        {
          v10 = v9;
LABEL_11:
          if (v10 == v7)
          {
            goto LABEL_15;
          }

          if (v10)
          {
            [(UIKitWebAccessibilityObjectWrapper *)v7 _accessibilitySetRetainedValue:v10 forKey:@"AXParentContainerLink"];
          }

          goto LABEL_16;
        }

        if ([accessibilityContainer _accessibilityHasOtherAccessibleChildElements:v9])
        {
          break;
        }

        v10 = accessibilityContainer;

        accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)v10 accessibilityContainer];

        v9 = v10;
        if (!accessibilityContainer)
        {
          goto LABEL_11;
        }
      }

      v10 = 0;
      if (v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = selfCopy;
    }

LABEL_15:

    v10 = 0;
LABEL_16:
    v4 = v10;
  }

  return v4;
}

- (BOOL)_accessibilityHasOtherAccessibleChildElements:(id)elements
{
  elementsCopy = elements;
  accessibilityElementCount = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount];
  if (accessibilityElementCount < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = accessibilityElementCount;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementAtIndex:v7];
      if (([elementsCopy isEqual:v9] & 1) == 0)
      {
        if ([v9 isAccessibilityElement])
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v9 _accessibilityHasOtherAccessibleChildElements:0])
          {
            break;
          }
        }
      }

      v8 = ++v7 < v6;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:

  return v8;
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_axObjWrapperLabel", self];
  v27 = 0;
  PossiblyNilObjectForKey = _AXServerCacheGetPossiblyNilObjectForKey();
  v5 = 0;
  v6 = v5;
  if (PossiblyNilObjectForKey)
  {
    v7 = v5;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = UIKitWebAccessibilityObjectWrapper;
    accessibilityLabel = [(UIKitWebAccessibilityObjectWrapper *)&v26 accessibilityLabel];

    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
    if ((*MEMORY[0x29EDC7F98] & accessibilityTraits) != 0 && (*MEMORY[0x29EDBDB10] & accessibilityTraits) == 0 && (processingLabelLogic & 1) == 0)
    {
      processingLabelLogic = 1;
      _accessibilityParentLinkContainer = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityParentLinkContainer];
      v11 = _accessibilityParentLinkContainer;
      if (_accessibilityParentLinkContainer)
      {
        accessibilityLabel2 = [_accessibilityParentLinkContainer accessibilityLabel];
        if ([accessibilityLabel2 length])
        {
          v13 = accessibilityLabel2;

          accessibilityLabel = v13;
        }
      }

      if ([(__CFString *)accessibilityLabel length]|| (v15 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount], v15 < 1))
      {
        v14 = accessibilityLabel;
      }

      else
      {
        v16 = v15;
        for (i = 0; i != v16; ++i)
        {
          v18 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementAtIndex:i, accessibilityLabel3, v25];
          accessibilityLabel3 = [v18 accessibilityLabel];
          v25 = @"__AXStringForVariablesSentinel";
          v14 = __UIAXStringForVariables();

          accessibilityLabel = v14;
        }
      }

      processingLabelLogic = 0;

      accessibilityLabel = v14;
    }

    whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
    v20 = [(__CFString *)accessibilityLabel stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v20 length] == 1 && (objc_msgSend(v20, "characterAtIndex:", 0) & 0xFFFE) == 0x200E)
    {

      accessibilityLabel = 0;
    }

    v21 = [(UIKitWebAccessibilityObjectWrapper *)self safeStringForKey:@"accessibilityBrailleLabel"];
    if ([v21 length])
    {
      if (accessibilityLabel)
      {
        v22 = accessibilityLabel;
      }

      else
      {
        v22 = @" ";
      }

      accessibilityLabel = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v22];
      [(__CFString *)accessibilityLabel setAttribute:v21 forKey:*MEMORY[0x29EDBD880]];
    }

    _AXServerCacheInsertPossiblyNilObjectForKey();
    v7 = accessibilityLabel;
  }

  return v7;
}

- (id)_accessibilityProcessRootEquation
{
  accessibilityElementCount = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount];
  if (accessibilityElementCount == 1)
  {
    array = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementAtIndex:0];
    dictionary = _processEquationChild(array);
LABEL_8:

    goto LABEL_10;
  }

  if (accessibilityElementCount >= 2)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    [dictionary setObject:@"Row" forKey:@"AXMType"];
    array = [MEMORY[0x29EDB8DE8] array];
    accessibilityElementCount2 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount];
    if (accessibilityElementCount2 >= 1)
    {
      v7 = accessibilityElementCount2;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementAtIndex:i];
        v10 = _processEquationChild(v9);
        [array addObject:v10];
      }
    }

    [dictionary setObject:array forKey:@"AXMChildren"];
    goto LABEL_8;
  }

  dictionary = 0;
LABEL_10:

  return dictionary;
}

- (id)accessibilityMathEquation
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsMathTopObject"])
  {
    _accessibilityProcessRootEquation = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityProcessRootEquation];
  }

  else
  {
    _accessibilityProcessRootEquation = 0;
  }

  return _accessibilityProcessRootEquation;
}

- (void)_axVideoEnterFullscreen
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsInteractiveVideo])
  {
    UIAccessibilitySpeakAndDoNotBeInterrupted();
    AXPerformSafeBlock();
  }
}

- (void)_axVideoToggleMute
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsInteractiveVideo])
  {
    if ([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsMediaMuted"])
    {
      v3 = @"unmute.video";
    }

    else
    {
      v3 = @"mute.video";
    }

    v4 = accessibilityLocalizedString(v3);
    UIAccessibilitySpeakAndDoNotBeInterrupted();

    AXPerformSafeBlock();
  }
}

- (void)accessibilityIncrement
{
  v4.receiver = self;
  v4.super_class = UIKitWebAccessibilityObjectWrapper;
  [(UIKitWebAccessibilityObjectWrapper *)&v4 accessibilityIncrement];
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsInteractiveVideo])
  {
    accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityValue];
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)accessibilityDecrement
{
  v4.receiver = self;
  v4.super_class = UIKitWebAccessibilityObjectWrapper;
  [(UIKitWebAccessibilityObjectWrapper *)&v4 accessibilityDecrement];
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsInteractiveVideo])
  {
    accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityValue];
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (int)_accessibilityHostPid
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    _accessibilityWebPageObject = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageObject];
    _accessibilityHostPid = [_accessibilityWebPageObject _accessibilityHostPid];

    return _accessibilityHostPid;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIKitWebAccessibilityObjectWrapper;
    return [(UIKitWebAccessibilityObjectWrapper *)&v6 _accessibilityHostPid];
  }
}

- (id)accessibilityCustomActions
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsInteractiveVideo])
  {
    array = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"AXWebVideoActions"];
    if (!array)
    {
      array = [MEMORY[0x29EDB8DE8] array];
      [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetRetainedValue:array forKey:@"AXWebVideoActions"];
      v4 = objc_alloc(MEMORY[0x29EDC78E0]);
      v5 = accessibilityLocalizedString(@"video.action.fast.forward");
      v6 = [v4 initWithName:v5 target:self selector:sel_accessibilityIncrement];

      [array addObject:v6];
      v7 = objc_alloc(MEMORY[0x29EDC78E0]);
      v8 = accessibilityLocalizedString(@"video.action.rewind");
      v9 = [v7 initWithName:v8 target:self selector:sel_accessibilityDecrement];

      [array addObject:v9];
      v10 = objc_alloc(MEMORY[0x29EDC78E0]);
      v11 = accessibilityLocalizedString(@"video.action.toggle.mute");
      v12 = [v10 initWithName:v11 target:self selector:sel__axVideoToggleMute];

      [array addObject:v12];
      v13 = objc_alloc(MEMORY[0x29EDC78E0]);
      v14 = accessibilityLocalizedString(@"video.action.enter.fullscreen");
      v15 = [v13 initWithName:v14 target:self selector:sel__axVideoEnterFullscreen];

      [array addObject:v15];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UIKitWebAccessibilityObjectWrapper;
    array = [(UIKitWebAccessibilityObjectWrapper *)&v17 accessibilityCustomActions];
  }

  return array;
}

- (id)_axWebKitSearchKeyForCustomRotorType:(int64_t)type
{
  if (_axWebKitSearchKeyForCustomRotorType__onceToken != -1)
  {
    [UIKitWebAccessibilityObjectWrapper _axWebKitSearchKeyForCustomRotorType:];
  }

  v4 = _axWebKitSearchKeyForCustomRotorType__ConvertType;
  v5 = [MEMORY[0x29EDBA070] numberWithInteger:type];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __75__UIKitWebAccessibilityObjectWrapper__axWebKitSearchKeyForCustomRotorType___block_invoke()
{
  v17[28] = *MEMORY[0x29EDCA608];
  v16[0] = &unk_2A23B6B28;
  v16[1] = &unk_2A23B6B40;
  v17[0] = @"AXBoldFontSearchKey";
  v17[1] = @"AXItalicFontSearchKey";
  v16[2] = &unk_2A23B6B58;
  v17[2] = @"AXUnderlineSearchKey";
  v0 = MEMORY[0x29EDC73F0];
  v15 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73F0]];
  v16[3] = v15;
  v17[3] = @"AXPlainTextSearchKey";
  v14 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73C8]];
  v16[4] = v14;
  v17[4] = @"AXFontColorChangeSearchKey";
  v13 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73D8]];
  v16[5] = v13;
  v17[5] = @"AXFontChangeSearchKey";
  v1 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC7408]];
  v16[6] = v1;
  v17[6] = @"AXStyleChangeSearchKey";
  v2 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73F8]];
  v16[7] = v2;
  v17[7] = @"AXBlockquoteSameLevelSearchKey";
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73B8]];
  v16[8] = v3;
  v17[8] = @"AXBlockquoteSearchKey";
  v4 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73C0]];
  v16[9] = v4;
  v17[9] = @"AXButtonSearchKey";
  v5 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73D0]];
  v16[10] = v5;
  v17[10] = @"AXControlSearchKey";
  v6 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73E0]];
  v16[11] = v6;
  v16[12] = &unk_2A23B6B70;
  v17[11] = @"AXFrameSearchKey";
  v17[12] = @"AXGraphicSearchKey";
  v16[13] = &unk_2A23B6B88;
  v16[14] = &unk_2A23B6BA0;
  v17[13] = @"AXHeadingLevel1SearchKey";
  v17[14] = @"AXHeadingLevel2SearchKey";
  v16[15] = &unk_2A23B6BB8;
  v16[16] = &unk_2A23B6BD0;
  v17[15] = @"AXHeadingLevel3SearchKey";
  v17[16] = @"AXHeadingLevel4SearchKey";
  v16[17] = &unk_2A23B6BE8;
  v16[18] = &unk_2A23B6C00;
  v17[17] = @"AXHeadingLevel5SearchKey";
  v17[18] = @"AXHeadingLevel6SearchKey";
  v7 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC7400]];
  v16[19] = v7;
  v16[20] = &unk_2A23B6C18;
  v17[19] = @"AXHeadingSameLevelSearchKey";
  v17[20] = @"AXHeadingSearchKey";
  v16[21] = &unk_2A23B6C30;
  v16[22] = &unk_2A23B6C48;
  v17[21] = @"AXLinkSearchKey";
  v17[22] = @"AXListSearchKey";
  v16[23] = &unk_2A23B6C60;
  v17[23] = @"AXMisspelledWordSearchKey";
  v8 = [MEMORY[0x29EDBA070] numberWithInteger:*v0];
  v16[24] = v8;
  v17[24] = @"AXStaticTextSearchKey";
  v9 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73E8]];
  v16[25] = v9;
  v16[26] = &unk_2A23B6C78;
  v17[25] = @"AXUnvisitedLinkSearchKey";
  v17[26] = @"AXVisitedLinkSearchKey";
  v10 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73B0]];
  v16[27] = v10;
  v17[27] = @"AXArticleSearchKey";
  v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:v16 count:28];
  v12 = _axWebKitSearchKeyForCustomRotorType__ConvertType;
  _axWebKitSearchKeyForCustomRotorType__ConvertType = v11;
}

- (id)_misspelledWordRotor
{
  v3 = objc_alloc(MEMORY[0x29EDC78E8]);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __58__UIKitWebAccessibilityObjectWrapper__misspelledWordRotor__block_invoke;
  v6[3] = &unk_29F31F5D0;
  v6[4] = self;
  v4 = [v3 initWithSystemType:13 itemSearchBlock:v6];
  [v4 setVisibleInTouchRotor:1];

  return v4;
}

id __58__UIKitWebAccessibilityObjectWrapper__misspelledWordRotor__block_invoke(uint64_t a1, void *a2)
{
  v31[2] = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = [v3 currentItem];
  v5 = [v4 targetElement];

  v6 = *(a1 + 32);
  v7 = [v3 currentItem];
  v8 = [v7 targetTextMarkerRange];
  v9 = [v6 _accessibilityConvertDataArrayToTextMarkerArray:v8];

  _AXPrintMarkerRangeInfo(v9, v5);
  v10 = [v3 searchDirection];
  v11 = [MEMORY[0x29EDB8D80] array];
  if ([v9 count])
  {
    if (v10 == 1)
    {
      v12 = [v9 lastObject];
      v31[0] = v12;
      v13 = [v9 lastObject];
      v31[1] = v13;
      v14 = v31;
    }

    else
    {
      v12 = [v9 firstObject];
      v30[0] = v12;
      v13 = [v9 firstObject];
      v30[1] = v13;
      v14 = v30;
    }

    v15 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:2];

    v11 = v15;
  }

  _AXPrintMarkerRangeInfo(v11, v5);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v16 = v5;
  v17 = v11;
  AXPerformSafeBlock();
  v18 = v25[5];

  _Block_object_dispose(&v24, 8);
  v19 = [v18 count] == 2;
  v20 = VOTLogRotor();
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __58__UIKitWebAccessibilityObjectWrapper__misspelledWordRotor__block_invoke_cold_2(v18, v16);
    }

    v21 = [*(a1 + 32) _accessibilityConvertTextMarkersToDataArray:v18];
    v22 = [objc_alloc(MEMORY[0x29EDC78F0]) initWithTargetElement:v16 targetRange:0 targetTextMarkerRange:v21];
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __58__UIKitWebAccessibilityObjectWrapper__misspelledWordRotor__block_invoke_cold_1(v18, v21);
    }

    v22 = 0;
  }

  return v22;
}

uint64_t __58__UIKitWebAccessibilityObjectWrapper__misspelledWordRotor__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) misspellingTextMarkerRange:*(a1 + 40) forward:*(a1 + 56)];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityReplaceTextInRange:(_NSRange)range withString:(id)string
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  stringCopy = string;
  AXPerformSafeBlock();
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __82__UIKitWebAccessibilityObjectWrapper__accessibilityReplaceTextInRange_withString___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessibilityReplaceRange:*(a1 + 56) withText:{*(a1 + 64), *(a1 + 40)}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_accessibilityElementsForSearchParameter:(id)parameter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  parameterCopy = parameter;
  AXPerformSafeBlock();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __79__UIKitWebAccessibilityObjectWrapper__accessibilityElementsForSearchParameter___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) accessibilityFindMatchingObjects:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityCustomRotor:(int64_t)rotor
{
  if (rotor == 13)
  {
    _misspelledWordRotor = [(UIKitWebAccessibilityObjectWrapper *)self _misspelledWordRotor];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x29EDC78E8]);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __64__UIKitWebAccessibilityObjectWrapper__accessibilityCustomRotor___block_invoke;
    v8[3] = &unk_29F31F620;
    v8[4] = self;
    v8[5] = rotor;
    _misspelledWordRotor = [v6 initWithSystemType:rotor itemSearchBlock:v8];
    [_misspelledWordRotor setVisibleInTouchRotor:0];
  }

  return _misspelledWordRotor;
}

id __64__UIKitWebAccessibilityObjectWrapper__accessibilityCustomRotor___block_invoke(uint64_t a1, void *a2)
{
  v44[6] = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = [*(a1 + 32) _axWebKitSearchKeyForCustomRotorType:*(a1 + 40)];
  if (v4)
  {
    v43[0] = @"AXDirection";
    v5 = [v3 searchDirection];
    v6 = @"AXDirectionPrevious";
    v7 = MEMORY[0x29EDB8EA8];
    if (v5 == 1)
    {
      v6 = @"AXDirectionNext";
    }

    v44[0] = v6;
    v44[1] = MEMORY[0x29EDB8EA8];
    v43[1] = @"AXImmediateDescendantsOnly";
    v43[2] = @"AXResultsLimit";
    v44[2] = &unk_2A23B6C90;
    v43[3] = @"AXStartElement";
    v8 = [v3 currentItem];
    v9 = [v8 targetElement];
    v44[3] = v9;
    v43[4] = @"AXVisibleOnly";
    v43[5] = @"AXSearchKey";
    v44[4] = v7;
    v44[5] = v4;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v44 forKeys:v43 count:6];

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    v40 = __Block_byref_object_dispose_;
    v41 = 0;
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 3221225472;
    v31 = __64__UIKitWebAccessibilityObjectWrapper__accessibilityCustomRotor___block_invoke_1413;
    v32 = &unk_29F31F508;
    v11 = *(a1 + 32);
    v35 = &v36;
    v33 = v11;
    v24 = v10;
    v34 = v24;
    AXPerformSafeBlock();
    v12 = v37[5];

    _Block_object_dispose(&v36, 8);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v42 count:16];
    if (v14)
    {
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          if ([v17 isAccessibilityElement])
          {
            v18 = v17;

            if (!v18)
            {
              v22 = 0;
              goto LABEL_24;
            }

            goto LABEL_22;
          }

          if (([v4 isEqualToString:@"AXArticleSearchKey"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"AXHeadingSearchKey"))
          {
            v18 = [v17 _accessibilityUnignoredDescendant];
            if (v18)
            {
              v19 = [v3 currentItem];
              v20 = [v19 targetElement];
              v21 = v18 == v20;

              if (!v21)
              {

LABEL_22:
                v22 = [objc_alloc(MEMORY[0x29EDC78F0]) initWithTargetElement:v18 targetRange:0];
                goto LABEL_23;
              }
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v25 objects:v42 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
    v18 = v13;
LABEL_23:

LABEL_24:
  }

  else
  {
    _AXAssert();
    v22 = 0;
  }

  return v22;
}

uint64_t __64__UIKitWebAccessibilityObjectWrapper__accessibilityCustomRotor___block_invoke_1413(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) accessibilityFindMatchingObjects:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityIsTopMostWebElement
{
  v3 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"_accessibilityIsTopMostWebElement"];
  if (!v3)
  {
    v4 = MEMORY[0x29EDBA070];
    accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
    _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageParent];
    v3 = [v4 numberWithInt:accessibilityContainer == _accessibilityWebPageParent];

    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetRetainedValue:v3 forKey:@"_accessibilityIsTopMostWebElement"];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityCustomRotors
{
  v37[27] = *MEMORY[0x29EDCA608];
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    if ([(UIKitWebAccessibilityObjectWrapper *)self _accessibilityIsTopMostWebElement])
    {
      v3 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityValueForKey:@"AXRotors"];
      if (v3)
      {
        accessibilityCustomRotors = v3;
      }

      else
      {
        v37[0] = &unk_2A23B6B28;
        v37[1] = &unk_2A23B6B40;
        v37[2] = &unk_2A23B6B58;
        v7 = MEMORY[0x29EDC73F0];
        v29 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73F0]];
        v37[3] = v29;
        v28 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73C8]];
        v37[4] = v28;
        v27 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73D8]];
        v37[5] = v27;
        v26 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC7408]];
        v37[6] = v26;
        v25 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73F8]];
        v37[7] = v25;
        v8 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73B8]];
        v37[8] = v8;
        v9 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73C0]];
        v37[9] = v9;
        v10 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73D0]];
        v37[10] = v10;
        v11 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73E0]];
        v37[11] = v11;
        v37[12] = &unk_2A23B6B70;
        v37[13] = &unk_2A23B6B88;
        v37[14] = &unk_2A23B6BA0;
        v37[15] = &unk_2A23B6BB8;
        v37[16] = &unk_2A23B6BD0;
        v37[17] = &unk_2A23B6BE8;
        v37[18] = &unk_2A23B6C00;
        v12 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC7400]];
        v37[19] = v12;
        v37[20] = &unk_2A23B6C18;
        v37[21] = &unk_2A23B6C30;
        v37[22] = &unk_2A23B6C48;
        v13 = [MEMORY[0x29EDBA070] numberWithInteger:*v7];
        v37[23] = v13;
        v14 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73E8]];
        v37[24] = v14;
        v37[25] = &unk_2A23B6C78;
        v15 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC73B0]];
        v37[26] = v15;
        v16 = [MEMORY[0x29EDB8D80] arrayWithObjects:v37 count:27];

        array = [MEMORY[0x29EDB8DE8] array];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v32;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v32 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = -[UIKitWebAccessibilityObjectWrapper _accessibilityCustomRotor:](self, "_accessibilityCustomRotor:", [*(*(&v31 + 1) + 8 * i) integerValue]);
              [array axSafelyAddObject:v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v20);
        }

        [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySetRetainedValue:array forKey:@"AXRotors"];
        accessibilityCustomRotors = array;
      }
    }

    else
    {
      accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
      if ((*MEMORY[0x29EDC7598] & ~accessibilityTraits) != 0 || (*MEMORY[0x29EDC7528] & ~accessibilityTraits) != 0)
      {
        v30.receiver = self;
        v30.super_class = UIKitWebAccessibilityObjectWrapper;
        accessibilityCustomRotors = [(UIKitWebAccessibilityObjectWrapper *)&v30 accessibilityCustomRotors];
      }

      else
      {
        v6 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityCustomRotor:13];
        v35 = v6;
        accessibilityCustomRotors = [MEMORY[0x29EDB8D80] arrayWithObjects:&v35 count:1];
      }
    }
  }

  else
  {
    accessibilityCustomRotors = 0;
  }

  return accessibilityCustomRotors;
}

- (BOOL)_accessibilityShouldSpeakMathEquationTrait
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uiwebview.isa)];
      v3 = [v4 _accessibilityIsMathTouchExplorationView] ^ 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3 = objc_autoreleasePoolPush();
  _accessibilityTraitsHelper = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityTraitsHelper];
  objc_autoreleasePoolPop(v3);
  return _accessibilityTraitsHelper;
}

- (unint64_t)_accessibilityTraitsHelper
{
  v13.receiver = self;
  v13.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)&v13 accessibilityTraits];
  if (![(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    v4 = [NSClassFromString(&cfstr_Uiperipheralho.isa) safeValueForKey:@"sharedInstance"];
    v5 = v4;
    if ((*MEMORY[0x29EDBDAF8] & accessibilityTraits) != 0 && [v4 safeBoolForKey:@"isOffScreen"])
    {
      accessibilityTraits = _AXTraitsRemoveTrait();
    }
  }

  _axIsInteractiveVideo = [(UIKitWebAccessibilityObjectWrapper *)self _axIsInteractiveVideo];
  v7 = *MEMORY[0x29EDBDD08];
  if (!_axIsInteractiveVideo)
  {
    v7 = 0;
  }

  v8 = v7 | accessibilityTraits;
  v9 = [(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityIsMathTopObject"];
  v10 = *MEMORY[0x29EDBDB10];
  if (!v9)
  {
    v10 = 0;
  }

  v11 = v8 | v10;
  if ((*MEMORY[0x29EDBDC08] & ~v11) == 0 && ([(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilityCanSetValue"]& 1) == 0)
  {
    v11 |= *MEMORY[0x29EDBDB48];
  }

  if ((*MEMORY[0x29EDBDB38] & v11) != 0 && [(UIKitWebAccessibilityObjectWrapper *)self safeBoolForKey:@"accessibilitySupportsARIAExpanded"])
  {
    return *MEMORY[0x29EDBDAD0] | _AXTraitsRemoveTrait();
  }

  return v11;
}

- (void)_accessibilityModifySelection:(id)selection increase:(BOOL)increase
{
  selectionCopy = selection;
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    if (([selectionCopy isEqualToString:@"word"] & 1) == 0 && (objc_msgSend(selectionCopy, "isEqualToString:", @"line") & 1) == 0 && (objc_msgSend(selectionCopy, "isEqualToString:", @"page") & 1) == 0)
    {
      [selectionCopy isEqualToString:@"all"];
    }

    AXPerformSafeBlock();
  }
}

- (void)_accessibilityMoveSelectionToMarker:(id)marker
{
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:{marker, 0}];
  v5 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:v4];

  lastObject = [v5 lastObject];
  if (objc_opt_respondsToSelector())
  {
    [(UIKitWebAccessibilityObjectWrapper *)self accessibilityMoveSelectionToMarker:lastObject];
  }
}

- (id)_accessibilityWebAreaURL
{
  accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    v3 = *MEMORY[0x29EDC7F98];
    while (1)
    {
      if ((v3 & ~[accessibilityContainer accessibilityTraits]) != 0)
      {
        accessibilityURL = [accessibilityContainer accessibilityURL];
        if (accessibilityURL)
        {
          break;
        }
      }

      v2AccessibilityContainer = [accessibilityContainer accessibilityContainer];

      accessibilityContainer = v2AccessibilityContainer;
      if (!v2AccessibilityContainer)
      {
        goto LABEL_9;
      }
    }

    v2AccessibilityContainer = accessibilityURL;
  }

  else
  {
    v2AccessibilityContainer = 0;
  }

LABEL_9:

  return v2AccessibilityContainer;
}

- (void)_performLiveRegionUpdate
{
  selfCopy = self;
  v96 = *MEMORY[0x29EDCA608];
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    v3 = [(UIKitWebAccessibilityObjectWrapper *)selfCopy safeValueForKey:@"accessibilityARIAIsBusy"];
    bOOLValue = [v3 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v5 = [(UIKitWebAccessibilityObjectWrapper *)selfCopy safeValueForKey:@"accessibilityARIALiveRegionStatus"];
      v6 = [v5 isEqualToString:@"polite"];
      if ([v5 isEqualToString:@"off"])
      {
        v7 = _UIAccessibilityFocusedElementForAssistiveTech();
        v8 = [v7 _accessibilityIsDescendantOfElement:selfCopy];

        if (!v8)
        {
LABEL_76:

          return;
        }

        v58 = 1;
      }

      else
      {
        v58 = v6;
      }

      v9 = [(UIKitWebAccessibilityObjectWrapper *)selfCopy safeValueForKey:@"accessibilityARIALiveRegionIsAtomic"];
      bOOLValue2 = [v9 BOOLValue];

      v11 = [(UIKitWebAccessibilityObjectWrapper *)selfCopy safeValueForKey:@"accessibilityARIARelevantStatus"];
      v12 = [v11 componentsSeparatedByString:@" "];

      v63 = v12;
      v64 = v5;
      if ([v12 count])
      {
        v13 = [v12 containsObject:@"additions"];
        v14 = [v12 containsObject:@"text"];
        v15 = [v12 containsObject:@"removals"];
        if (![v12 containsObject:@"all"])
        {
          v59 = v15;
          v65 = v13;
          goto LABEL_13;
        }

        v14 = 1;
        v59 = 1;
      }

      else
      {
        v59 = 0;
        v14 = 1;
      }

      v65 = 1;
LABEL_13:
      v60 = v14;
      array = [MEMORY[0x29EDB8DE8] array];
      v17 = [MEMORY[0x29EDB8DE8] arrayWithObject:selfCopy];
      v69 = v17;
      while ([v17 count])
      {
        lastObject = [v17 lastObject];
        [v17 removeLastObject];
        if ([lastObject isAccessibilityElement])
        {
          v19 = [AXLiveRegionNode createNodeFromObject:lastObject];
          if ([array count])
          {
            [array insertObject:v19 atIndex:0];
          }

          else
          {
            [array addObject:v19];
          }

          v17 = v69;
        }

        else
        {
          v90[0] = MEMORY[0x29EDCA5F8];
          v90[1] = 3221225472;
          v90[2] = __62__UIKitWebAccessibilityObjectWrapper__performLiveRegionUpdate__block_invoke;
          v90[3] = &unk_29F31F670;
          v91 = v17;
          [lastObject accessibilityEnumerateContainerElementsUsingBlock:v90];
          v19 = v91;
        }
      }

      array2 = [MEMORY[0x29EDB8DE8] array];
      v21 = [(UIKitWebAccessibilityObjectWrapper *)selfCopy _accessibilityValueForKey:@"LiveRegionTree"];
      v22 = [v21 objectForKey:@"Nodes"];
      v67 = [v21 objectForKey:@"Text"];
      v68 = selfCopy;
      v62 = v21;
      if (v59)
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v86 objects:v95 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = 0;
          v27 = *v87;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v87 != v27)
              {
                objc_enumerationMutation(v23);
              }

              v29 = *(*(&v86 + 1) + 8 * i);
              if (bOOLValue2 & 1 | (([array containsObject:v29] & 1) == 0))
              {
                [array2 addObject:v29];
                v26 = 1;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v86 objects:v95 count:16];
          }

          while (v25);
        }

        else
        {
          v26 = 0;
        }

        selfCopy = v68;
      }

      else
      {
        v26 = 0;
      }

      if (v65)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v30 = array;
        v31 = [v30 countByEnumeratingWithState:&v82 objects:v94 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v83;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v83 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v82 + 1) + 8 * j);
              if (([array2 containsObject:v35] & 1) == 0 && bOOLValue2 & 1 | ((objc_msgSend(v22, "containsObject:", v35) & 1) == 0))
              {
                [array2 addObject:v35];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v82 objects:v94 count:16];
          }

          while (v32);
        }

        selfCopy = v68;
      }

      v36 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:2];
      [v36 setObject:array forKey:@"Nodes"];
      v61 = v22;
      v66 = v36;
      if (v60)
      {
        v37 = [array count];
        if (v37 == [v22 count] || !v22)
        {
          array3 = [MEMORY[0x29EDB8DE8] array];
          [v36 setObject:array3 forKey:@"Text"];
          if (v67)
          {
            v74[0] = MEMORY[0x29EDCA5F8];
            v74[1] = 3221225472;
            v74[2] = __62__UIKitWebAccessibilityObjectWrapper__performLiveRegionUpdate__block_invoke_2;
            v74[3] = &unk_29F31F698;
            v75 = array;
            v76 = array2;
            v77 = array3;
            [v67 enumerateObjectsUsingBlock:v74];

            v39 = v75;
          }

          else
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v39 = array;
            v40 = [v39 countByEnumeratingWithState:&v78 objects:v93 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v79;
              do
              {
                for (k = 0; k != v41; ++k)
                {
                  if (*v79 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  label = [*(*(&v78 + 1) + 8 * k) label];
                  if (label)
                  {
                    v45 = label;
                  }

                  else
                  {
                    v45 = &stru_2A23B2970;
                  }

                  [array3 addObject:v45];
                }

                v41 = [v39 countByEnumeratingWithState:&v78 objects:v93 count:16];
              }

              while (v41);
              selfCopy = v68;
              v36 = v66;
            }
          }
        }
      }

      [(UIKitWebAccessibilityObjectWrapper *)selfCopy _accessibilitySetRetainedValue:v36 forKey:@"LiveRegionTree"];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v46 = array2;
      v47 = [v46 countByEnumeratingWithState:&v70 objects:v92 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = 0;
        v50 = *v71;
        do
        {
          v51 = 0;
          v52 = v49;
          do
          {
            if (*v71 != v50)
            {
              objc_enumerationMutation(v46);
            }

            label2 = [*(*(&v70 + 1) + 8 * v51) label];
            v57 = @"__AXStringForVariablesSentinel";
            v49 = __UIAXStringForVariables();

            ++v51;
            v52 = v49;
          }

          while (v48 != v51);
          v48 = [v46 countByEnumeratingWithState:&v70 objects:v92 count:{16, label2, @"__AXStringForVariablesSentinel"}];
        }

        while (v48);
      }

      else
      {
        v49 = 0;
      }

      if ([v49 length])
      {
        v53 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v49];

        v54 = [MEMORY[0x29EDBA070] numberWithBool:v58];
        [v53 setAttribute:v54 forKey:*MEMORY[0x29EDBDA30]];

        [v53 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD938]];
        v55 = [MEMORY[0x29EDBA070] numberWithBool:v26 & 1];
        [v53 setAttribute:v55 forKey:*MEMORY[0x29EDBD940]];

        v49 = v53;
        AXPerformBlockOnMainThreadAfterDelay();
      }

      v5 = v64;

      goto LABEL_76;
    }
  }
}

void __62__UIKitWebAccessibilityObjectWrapper__performLiveRegionUpdate__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  v7 = [v8 label];
  LOBYTE(v5) = [(__CFString *)v7 isEqualToString:v6];

  if ((v5 & 1) == 0 && ([*(a1 + 40) containsObject:v8] & 1) == 0)
  {
    [*(a1 + 40) addObject:v8];
  }

  if (!v7)
  {
    v7 = &stru_2A23B2970;
  }

  [*(a1 + 48) addObject:v7];
}

- (void)_axHandleNotificationPosting:(unsigned int)posting data:(id)data
{
  v4 = *&posting;
  argument = data;
  if (v4 <= 3031)
  {
    if (v4 != 1026)
    {
      if (v4 != 1046)
      {
        goto LABEL_37;
      }

      if ([(UIKitWebAccessibilityObjectWrapper *)self _accessibilityExpandedStatus]== 1)
      {
        v6 = @"expanded";
      }

      else
      {
        v6 = @"collapsed";
      }

      v7 = accessibilityLocalizedString(v6);
      _accessibilityCurrentStatus = argument;
      goto LABEL_36;
    }

    _accessibilityCurrentStatus = [(UIKitWebAccessibilityObjectWrapper *)self safeStringForKey:@"accessibilityInvalidStatus"];
    if ([_accessibilityCurrentStatus length] && (objc_msgSend(_accessibilityCurrentStatus, "isEqualToString:", @"false") & 1) == 0)
    {
      if ([_accessibilityCurrentStatus isEqualToString:@"grammar"])
      {
        v9 = @"invalidStatusGrammar";
        goto LABEL_34;
      }

      v10 = [_accessibilityCurrentStatus isEqualToString:@"spelling"];
      v11 = @"invalidStatusGeneral";
      v12 = @"invalidStatusSpelling";
LABEL_25:
      if (v10)
      {
        v9 = v12;
      }

      else
      {
        v9 = v11;
      }

      goto LABEL_34;
    }

    goto LABEL_18;
  }

  if (v4 == 3032)
  {
    _accessibilityCurrentStatus = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityCurrentStatus];
    if ([_accessibilityCurrentStatus length] && (objc_msgSend(_accessibilityCurrentStatus, "isEqualToString:", @"false") & 1) == 0)
    {
      if ([_accessibilityCurrentStatus isEqualToString:@"page"])
      {
        v9 = @"currentStatusPage";
        goto LABEL_34;
      }

      if ([_accessibilityCurrentStatus isEqualToString:@"step"])
      {
        v9 = @"currentStatusStep";
        goto LABEL_34;
      }

      if ([_accessibilityCurrentStatus isEqualToString:@"location"])
      {
        v9 = @"currentStatusLocation";
        goto LABEL_34;
      }

      if ([_accessibilityCurrentStatus isEqualToString:@"date"])
      {
        v9 = @"currentStatusDate";
        goto LABEL_34;
      }

      v10 = [_accessibilityCurrentStatus isEqualToString:@"time"];
      v11 = @"currentStatusGeneral";
      v12 = @"currentStatusTime";
      goto LABEL_25;
    }

LABEL_18:

    goto LABEL_40;
  }

  if (v4 != 3033)
  {
    goto LABEL_37;
  }

  _accessibilityCurrentStatus = [(UIKitWebAccessibilityObjectWrapper *)self accessibilitySortDirection];
  if ([_accessibilityCurrentStatus isEqualToString:@"AXAscendingSortDirection"])
  {
    v9 = @"sortUp";
LABEL_34:
    v7 = accessibilityLocalizedString(v9);
    goto LABEL_35;
  }

  if ([_accessibilityCurrentStatus isEqualToString:@"AXDescendingSortDirection"])
  {
    v9 = @"sortDown";
    goto LABEL_34;
  }

  v7 = 0;
LABEL_35:

LABEL_36:
  v4 = 1008;
  argument = v7;
LABEL_37:
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axSupportsWebKitNotificationRelay])
  {
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityRelayToChrome:v4 object:argument];
  }

  else
  {
    UIAccessibilityPostNotification(v4, argument);
  }

LABEL_40:
}

- (BOOL)_axSupportsWebKitNotificationRelay
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __72__UIKitWebAccessibilityObjectWrapper__axSupportsWebKitNotificationRelay__block_invoke;
  block[3] = &unk_29F31F580;
  block[4] = self;
  if (_axSupportsWebKitNotificationRelay_onceToken != -1)
  {
    dispatch_once(&_axSupportsWebKitNotificationRelay_onceToken, block);
  }

  return _axSupportsWebKitNotificationRelay_Supports;
}

uint64_t __72__UIKitWebAccessibilityObjectWrapper__axSupportsWebKitNotificationRelay__block_invoke()
{
  result = objc_opt_respondsToSelector();
  _axSupportsWebKitNotificationRelay_Supports = result & 1;
  return result;
}

- (id)_axDataConvertForNotification:(id)notification
{
  v32 = *MEMORY[0x29EDCA608];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributedString = [notificationCopy attributedString];
LABEL_6:
    Data = attributedString;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    attributedString = notificationCopy;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Data = [notificationCopy mutableCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = notificationCopy;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [v8 objectForKey:v13];
          v15 = [(UIKitWebAccessibilityObjectWrapper *)self _axDataConvertForNotification:v14];

          [Data setObject:v15 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

LABEL_27:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Data = [notificationCopy mutableCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = notificationCopy;
    v16 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v8);
          }

          v20 = [(UIKitWebAccessibilityObjectWrapper *)self _axDataConvertForNotification:*(*(&v22 + 1) + 8 * j), v22];
          [Data setObject:v20 atIndexedSubscript:0];
        }

        v17 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    goto LABEL_27;
  }

  if (notificationCopy)
  {
    v21 = _AXCreateAXUIElementWithElement();
    Data = _AXUIElementCreateData();
    if (v21)
    {
      CFRelease(v21);
    }
  }

  else
  {
    Data = 0;
  }

LABEL_7:

  return Data;
}

- (void)_accessibilityRelayToChrome:(unsigned int)chrome object:(id)object
{
  v4 = *&chrome;
  v6 = [(UIKitWebAccessibilityObjectWrapper *)self _axDataConvertForNotification:object];
  v12 = 0;
  v7 = [MEMORY[0x29EDB9FF8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [UIKitWebAccessibilityObjectWrapper _accessibilityRelayToChrome:object:];
    }
  }

  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v4];
  v11 = AXWebNotificationName(v10);
  [(UIKitWebAccessibilityObjectWrapper *)self handleNotificationRelayToChrome:v11 notificationData:v7];
}

- (id)_accessibilityValueForHandwriting
{
  v4.receiver = self;
  v4.super_class = UIKitWebAccessibilityObjectWrapper;
  accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)&v4 accessibilityValue];

  return accessibilityValue;
}

- (_NSRange)_accessibilitySelectedTextRangeForHandwritingWithValue:(id)value
{
  valueCopy = value;
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if ((*MEMORY[0x29EDBDB88] & ~accessibilityTraits) != 0)
  {
    _accessibilitySelectedTextRange = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilitySelectedTextRange];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIKitWebAccessibilityObjectWrapper;
    _accessibilitySelectedTextRange = [(UIKitWebAccessibilityObjectWrapper *)&v12 _accessibilitySelectedTextRange];
  }

  v8 = _accessibilitySelectedTextRange;
  v9 = v7;
  if (_accessibilitySelectedTextRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [valueCopy length];
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)_accessibilityInsertText:(id)text
{
  textCopy = text;
  v4 = textCopy;
  if (textCopy)
  {
    v5 = textCopy;
    AXPerformSafeBlock();
  }
}

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string
{
  stringCopy = string;
  v5 = &stru_2A23B2970;
  if (stringCopy)
  {
    v5 = stringCopy;
  }

  v7 = v5;
  v6 = v5;
  AXPerformSafeBlock();
}

void __89__UIKitWebAccessibilityObjectWrapper__accessibilityReplaceCharactersAtCursor_withString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilitySelectedTextRange];
  v4 = v3;
  v5 = [*(a1 + 32) accessibilityTraits];
  v6 = *MEMORY[0x29EDC7568];
  v7 = *MEMORY[0x29EDC7568] & v5;
  if (v7 == *MEMORY[0x29EDC7568])
  {
    v8 = [*(a1 + 32) accessibilityValue];
    v2 = [v8 length];

    v4 = 0;
  }

  if (!v4)
  {
    if (v2 >= *(a1 + 48))
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = v2;
    }

    v2 -= v4;
  }

  [*(a1 + 32) accessibilityReplaceRange:v2 withText:{v4, *(a1 + 40)}];
  if (v7 == v6)
  {
    v9 = *(a1 + 32);
    v10 = [v9 accessibilityValue];
    [v9 _accessibilitySetSelectedTextRange:{objc_msgSend(v10, "length"), 0}];
  }
}

- (id)_accessibilityTextViewTextOperationResponder
{
  _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageParent];
  _accessibilityTextViewTextOperationResponder = [_accessibilityWebPageParent _accessibilityTextViewTextOperationResponder];

  return _accessibilityTextViewTextOperationResponder;
}

- (BOOL)_accessibilityHasTextOperations
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UIKitWebAccessibilityObjectWrapper;
  return [(UIKitWebAccessibilityObjectWrapper *)&v4 _accessibilityHasTextOperations];
}

- (BOOL)_accessibilitySupportsTextInsertionAndDeletion
{
  accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
  if (((*MEMORY[0x29EDBDAD0] | *MEMORY[0x29EDBDB08]) & accessibilityTraits) != 0)
  {
    return 0;
  }

  _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageParent];
  _accessibilityResponderElement = [_accessibilityWebPageParent _accessibilityResponderElement];
  v4 = _accessibilityResponderElement == self;

  return v4;
}

- (id)accessibilityIdentifier
{
  if (_AXSAutomationEnabled())
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __61__UIKitWebAccessibilityObjectWrapper_accessibilityIdentifier__block_invoke;
    block[3] = &unk_29F31F580;
    v7 = @"AXEnableWebKitDOMIdentifier";
    if (accessibilityIdentifier_onceToken != -1)
    {
      dispatch_once(&accessibilityIdentifier_onceToken, block);
    }

    if (accessibilityIdentifier_UsesDOMAsIdentifier == 1)
    {
      v5.receiver = self;
      v5.super_class = UIKitWebAccessibilityObjectWrapper;
      accessibilityIdentifier = [(UIKitWebAccessibilityObjectWrapper *)&v5 accessibilityIdentifier];
    }

    else
    {
      accessibilityIdentifier = 0;
    }
  }

  else
  {
    accessibilityIdentifier = 0;
  }

  return accessibilityIdentifier;
}

uint64_t __61__UIKitWebAccessibilityObjectWrapper_accessibilityIdentifier__block_invoke(uint64_t a1)
{
  result = CFPreferencesGetAppBooleanValue(*(a1 + 32), *MEMORY[0x29EDC83C0], 0);
  accessibilityIdentifier_UsesDOMAsIdentifier = result != 0;
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  _axIsWebKit2 = [(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2];
  if (_axIsWebKit2)
  {
    LastScrollDirection = scroll;
    v7.receiver = self;
    v7.super_class = UIKitWebAccessibilityObjectWrapper;
    LOBYTE(_axIsWebKit2) = [(UIKitWebAccessibilityObjectWrapper *)&v7 accessibilityScroll:scroll];
  }

  return _axIsWebKit2;
}

- (id)_accessibilityScrollStatus
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    _accessibilityMakeScrollStatus = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityMakeScrollStatus];
  }

  else
  {
    _accessibilityMakeScrollStatus = 0;
  }

  return _accessibilityMakeScrollStatus;
}

- (id)_accessibilityMakeScrollStatus
{
  v3 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"_accessibilityScrollVisibleRect"];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"_accessibilityScrollSize"];
  [v12 CGSizeValue];
  v14 = v13;
  v16 = v15;

  if (LastScrollDirection > 4 || ((1 << LastScrollDirection) & 0x19) == 0)
  {
    if ((LastScrollDirection - 1) <= 1 && v14 > v9)
    {
      v26.origin.x = v5;
      v26.origin.y = v7;
      v26.size.width = v9;
      v26.size.height = v11;
      CGRectGetMidX(v26);
    }
  }

  else if (v16 > v11)
  {
    v25.origin.x = v5;
    v25.origin.y = v7;
    v25.size.width = v9;
    v25.size.height = v11;
    CGRectGetMidY(v25);
  }

  v18 = MEMORY[0x29EDBA0F8];
  v19 = UIKitAccessibilityLocalizedString();
  v20 = AXFormatInteger();
  v21 = AXFormatInteger();
  v22 = [v18 stringWithFormat:v19, v20, v21];

  return v22;
}

- (void)_repostWebNotification:(id)notification
{
  unsignedIntValue = [notification unsignedIntValue];

  [(UIKitWebAccessibilityObjectWrapper *)self _axHandleNotificationPosting:unsignedIntValue data:0];
}

- (void)_enqueReorderingNotification:(id)notification
{
  notificationCopy = notification;
  if (!TextEditingReorderQueue)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v6 = TextEditingReorderQueue;
    TextEditingReorderQueue = array;

    v7 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v8 = [v7 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    v9 = TextEditingReorderTimer;
    TextEditingReorderTimer = v8;
  }

  v10 = [notificationCopy objectForKey:@"notification"];
  unsignedIntValue = [v10 unsignedIntValue];

  if (unsignedIntValue == 1017)
  {
    selfCopy = self;
    if (selfCopy)
    {
      v13 = selfCopy;
      v14 = selfCopy;
      do
      {
        if ([v13 isAccessibilityElement])
        {
          v15 = v13;

          v14 = v15;
        }

        accessibilityContainer = [v13 accessibilityContainer];

        v13 = accessibilityContainer;
      }

      while (accessibilityContainer);
    }

    else
    {
      v14 = 0;
    }

    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)v14 accessibilityTraits];
    if ((*MEMORY[0x29EDBDAF8] & accessibilityTraits) != 0)
    {
      v18 = &unk_2A23B6E28;
    }

    else
    {
      v18 = &unk_2A23B6E50;
    }

    [TextEditingReorderQueue addObject:v18];
  }

  else
  {
    [TextEditingReorderQueue addObject:notificationCopy];
  }

  [TextEditingReorderTimer cancel];
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __67__UIKitWebAccessibilityObjectWrapper__enqueReorderingNotification___block_invoke;
  v19[3] = &unk_29F31F580;
  v19[4] = self;
  [TextEditingReorderTimer afterDelay:v19 processBlock:0.01];
}

void __67__UIKitWebAccessibilityObjectWrapper__enqueReorderingNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if ([*(a1 + 32) _prepareAccessibilityCall])
  {
    v1 = objc_opt_new();
    if ([TextEditingReorderQueue count])
    {
      v2 = 0;
      do
      {
        v3 = [TextEditingReorderQueue objectAtIndexedSubscript:v2];
        v4 = [v3 objectForKey:@"notification"];

        v5 = [TextEditingReorderQueue objectAtIndexedSubscript:v2];
        [v1 setObject:v5 forKeyedSubscript:v4];

        ++v2;
      }

      while (v2 < [TextEditingReorderQueue count]);
    }

    v6 = TextEditingReorderQueue;
    v19 = v1;
    v7 = [v1 allValues];
    [v6 setArray:v7];

    [TextEditingReorderQueue sortUsingComparator:&__block_literal_global_1576];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = TextEditingReorderQueue;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 objectForKey:@"notification"];
          v14 = [v13 unsignedIntValue];

          v15 = [v12 objectForKey:@"info"];
          v16 = [v12 objectForKey:@"associatedElement"];
          if (v16)
          {
            _UIAccessibilitySetAssociatedElementContextForNextNotification();
          }

          v17 = *(a1 + 32);
          if ([v17 _axSupportsWebKitNotificationRelay])
          {
            v18 = v12;
          }

          else
          {
            v18 = v15;
          }

          [v17 _axHandleNotificationPosting:v14 data:v18];
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [TextEditingReorderQueue removeAllObjects];
  }
}

uint64_t __67__UIKitWebAccessibilityObjectWrapper__enqueReorderingNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:@"notification"];
  v6 = [v5 unsignedIntValue];

  v7 = [v4 objectForKey:@"notification"];

  v8 = [v7 unsignedIntValue];
  if (v6 == 1005)
  {
    return -1;
  }

  if (v6 == 1017 || v6 == 1022 || v8 == 1005)
  {
    return 1;
  }

  if (v8 == 1017 || v8 == 1022)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (void)postScreenChangeNotification
{
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:*MEMORY[0x29EDC7F10]];
  [(UIKitWebAccessibilityObjectWrapper *)self performSelectorOnMainThread:sel__repostWebNotification_ withObject:v3 waitUntilDone:0];
}

- (CGRect)accessibilityFrameForScrolling
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityFrameForScrolling", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    _accessibilityWebDocumentView = [*v4 objectForKeyedSubscript:v3];
    [_accessibilityWebDocumentView CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
LABEL_25:

    goto LABEL_26;
  }

  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    if ((didInitIAdCheck & 1) == 0)
    {
      v15 = [NSClassFromString(&cfstr_Uiapplication.isa) safeValueForKey:@"sharedApplication"];
      NSClassFromString(&cfstr_Adsheetapplica.isa);
      isIADs = objc_opt_isKindOfClass() & 1;

      didInitIAdCheck = 1;
    }

    _axIsWebKit2 = [(UIKitWebAccessibilityObjectWrapper *)self _axIsWebKit2];
    if (_axIsWebKit2)
    {
      _accessibilityWebDocumentView = 0;
    }

    else
    {
      _accessibilityWebDocumentView = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebDocumentView];
    }

    if (isIADs == 1)
    {
      [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementRect];
LABEL_23:
      UIAccessibilityFrameForBounds();
      v8 = v32;
      v10 = v33;
      v12 = v34;
      v14 = v35;
      v31 = MEMORY[0x29EDBA168];
      goto LABEL_24;
    }

    accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
    if ((*MEMORY[0x29EDC7F98] & accessibilityTraits) != 0 && [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount]== 1)
    {
      v18 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementAtIndex:0];
      [v18 accessibilityFrame];
      v8 = v19;
      v10 = v20;
      v12 = v21;
      v14 = v22;
    }

    else
    {
      v47.receiver = self;
      v47.super_class = UIKitWebAccessibilityObjectWrapper;
      [(UIKitWebAccessibilityObjectWrapper *)&v47 accessibilityFrame];
      v8 = v23;
      v10 = v24;
      v12 = v25;
      v14 = v26;
      if (!_axIsWebKit2)
      {
        window = [_accessibilityWebDocumentView window];
        [_accessibilityWebDocumentView convertRect:window fromView:{v8, v10, v12, v14}];
        v38 = v37;
        v40 = v39;

        if (v38 < 0.0)
        {
          v40 = v40 + v38;
          v38 = 0.0;
        }

        [_accessibilityWebDocumentView bounds];
        if (v38 > v41 - v40)
        {
          [_accessibilityWebDocumentView bounds];
        }

        goto LABEL_23;
      }

      if (CGRectIsEmpty(*&v23))
      {
        [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementRect];
        v8 = v27;
        v10 = v28;
        v12 = v29;
        v14 = v30;
      }
    }

    v31 = MEMORY[0x29EDBA168];
    v32 = v8;
    v33 = v10;
    v34 = v12;
    v35 = v14;
LABEL_24:
    v42 = [v31 valueWithCGRect:{v32, v33, v34, v35}];
    [*v4 setObject:v42 forKeyedSubscript:v3];

    goto LABEL_25;
  }

  v8 = *MEMORY[0x29EDB90E0];
  v10 = *(MEMORY[0x29EDB90E0] + 8);
  v12 = *(MEMORY[0x29EDB90E0] + 16);
  v14 = *(MEMORY[0x29EDB90E0] + 24);
LABEL_26:

  v43 = v8;
  v44 = v10;
  v45 = v12;
  v46 = v14;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (CGRect)accessibilityFrame
{
  [(UIKitWebAccessibilityObjectWrapper *)self accessibilityFrameForScrolling];
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_axGetClippingFrame
{
  MEMORY[0x2A1C5E810](self, &__UIKitWebAccessibilityObjectWrapper___axGetClippingFrame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_accessibilityClippingFrame
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    [(UIKitWebAccessibilityObjectWrapper *)self _axGetClippingFrame];
    if (CGRectIsEmpty(v25))
    {
      accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
      v4 = *MEMORY[0x29EDB90E0];
      v5 = *(MEMORY[0x29EDB90E0] + 8);
      v6 = *(MEMORY[0x29EDB90E0] + 16);
      v7 = *(MEMORY[0x29EDB90E0] + 24);
      if (objc_opt_respondsToSelector())
      {
        [accessibilityContainer _accessibilityClippingFrame];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
      }

      else
      {
        v13 = v6;
        v15 = v7;
        v11 = v5;
        v9 = v4;
        if (accessibilityContainer)
        {
          v16 = AXLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [UIKitWebAccessibilityObjectWrapper _accessibilityClippingFrame];
          }

          v13 = v6;
          v15 = v7;
          v11 = v5;
          v9 = v4;
        }
      }

      v26.origin.x = v9;
      v26.origin.y = v11;
      v26.size.width = v13;
      v26.size.height = v15;
      if (CGRectIsEmpty(v26))
      {

        goto LABEL_14;
      }

      [(UIKitWebAccessibilityObjectWrapper *)self _setAXClippingFrame:v9, v11, v13, v15];
    }

    [(UIKitWebAccessibilityObjectWrapper *)self _axGetClippingFrame];
    v4 = v17;
    v5 = v18;
    v6 = v19;
    v7 = v20;
    goto LABEL_14;
  }

  v4 = *MEMORY[0x29EDB90E0];
  v5 = *(MEMORY[0x29EDB90E0] + 8);
  v6 = *(MEMORY[0x29EDB90E0] + 16);
  v7 = *(MEMORY[0x29EDB90E0] + 24);
LABEL_14:
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)_accessibilityVisibleFrame
{
  [(UIKitWebAccessibilityObjectWrapper *)self accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  NSClassFromString(&cfstr_Wkaccessibilit.isa);
  accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityContainer];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = *MEMORY[0x29EDB90B8];
    v14 = *(MEMORY[0x29EDB90B8] + 8);
  }

  else
  {
    [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityClippingFrame];
    v25.origin.x = v15;
    v25.origin.y = v16;
    v25.size.width = v17;
    v25.size.height = v18;
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    *&v13 = CGRectIntersection(v23, v25);
    v8 = v19;
    v10 = v20;
  }

  v21 = v8;
  v22 = v10;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_accessibilityApplication
{
  _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageParent];
  _accessibilityApplication = [_accessibilityWebPageParent _accessibilityApplication];

  return _accessibilityApplication;
}

- (_NSRange)_accessibilityRangeForTextMarker:(id)marker
{
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:{marker, 0}];
  v5 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:v4];

  lastObject = [v5 lastObject];
  v7 = [(UIKitWebAccessibilityObjectWrapper *)self positionForTextMarker:lastObject];

  v8 = v7;
  v9 = 0;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)_accessibilityRangeForTextMarkers:(id)markers
{
  v4 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:markers];
  if ([v4 count] == 2)
  {
    v5 = [(UIKitWebAccessibilityObjectWrapper *)self _rangeForWebTextMarkers:v4];
    v7 = v6;
  }

  else
  {
    v7 = 0;
    v5 = 0x7FFFFFFFLL;
  }

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)_rangeForWebTextMarkers:(id)markers
{
  markersCopy = markers;
  firstObject = [markersCopy firstObject];
  v6 = [(UIKitWebAccessibilityObjectWrapper *)self positionForTextMarker:firstObject];

  lastObject = [markersCopy lastObject];

  v8 = [(UIKitWebAccessibilityObjectWrapper *)self positionForTextMarker:lastObject];
  if (v8 >= v6)
  {
    v9 = v8 - v6;
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0x7FFFFFFFLL;
  }

  result.length = v9;
  result.location = v10;
  return result;
}

- (_NSRange)_accessibilitySelectedNSRangeForObject
{
  _accessibilityTextMarkerRangeForSelection = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityTextMarkerRangeForSelection];
  v4 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:_accessibilityTextMarkerRangeForSelection];

  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v4 objectAtIndex:1];
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      _accessibilityTextMarkerRange = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityTextMarkerRange];
      v11 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:_accessibilityTextMarkerRange];

      if ([v11 count] == 2 && (objc_msgSend(v11, "objectAtIndex:", 0), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectAtIndex:", 1), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, (v14 & 1) == 0))
      {
        v17 = [v4 objectAtIndex:0];
        v18 = [(UIKitWebAccessibilityObjectWrapper *)self positionForTextMarker:v17];

        v19 = [v4 objectAtIndex:1];
        v20 = [(UIKitWebAccessibilityObjectWrapper *)self positionForTextMarker:v19];

        v21 = [v11 objectAtIndex:0];
        v22 = [(UIKitWebAccessibilityObjectWrapper *)self positionForTextMarker:v21];

        v23 = [v11 objectAtIndex:1];
        v24 = [(UIKitWebAccessibilityObjectWrapper *)self positionForTextMarker:v23];

        v26.length = v20 - v18;
        v28.length = v24 - v22;
        v26.location = v18;
        v28.location = v22;
        v25 = NSIntersectionRange(v26, v28);
        length = v25.length;
        if (v25.length)
        {
          v9 = v25.location - v22;
          goto LABEL_8;
        }
      }

      else
      {
        length = 0;
      }

      v9 = 0x7FFFFFFFLL;
LABEL_8:

      goto LABEL_9;
    }
  }

  length = 0;
  v9 = 0x7FFFFFFFLL;
LABEL_9:

  v15 = v9;
  v16 = length;
  result.length = v16;
  result.location = v15;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall])
  {
    [(UIKitWebAccessibilityObjectWrapper *)self accessibilityFrame];
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    if (isIADs != 1)
    {
      accessibilityTraits = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
      if ((*MEMORY[0x29EDC7558] & accessibilityTraits) != 0)
      {
        AX_CGRectGetCenter();
      }

      else
      {
        accessibilityTraits2 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits];
        if ((*MEMORY[0x29EDC7598] & ~accessibilityTraits2) == 0)
        {
          accessibilityValue = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityValue];
          v17 = [accessibilityValue length];

          if (v17)
          {
            MidX = v7 + 5.0;
            MidY = v8 + 5.0;
            goto LABEL_12;
          }
        }

        v19.receiver = self;
        v19.super_class = UIKitWebAccessibilityObjectWrapper;
        [(UIKitWebAccessibilityObjectWrapper *)&v19 accessibilityActivationPoint];
      }

      MidX = v14;
      goto LABEL_12;
    }

    MidX = CGRectGetMidX(*&v3);
    v21.origin.x = v7;
    v21.origin.y = v8;
    v21.size.width = v9;
    v21.size.height = v10;
    MidY = CGRectGetMidY(v21);
  }

  else
  {
    MidX = *MEMORY[0x29EDB90B8];
    MidY = *(MEMORY[0x29EDB90B8] + 8);
  }

LABEL_12:
  v18 = MidX;
  result.y = MidY;
  result.x = v18;
  return result;
}

- (BOOL)_axHasMultipleAccessibleChildren:(int64_t *)children
{
  accessibilityElementCount = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount];
  if (accessibilityElementCount < 1)
  {
    return 0;
  }

  else
  {
    v6 = accessibilityElementCount;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementAtIndex:v7];
      if ([v9 isAccessibilityElement])
      {
        v10 = *children + 1;
        *children = v10;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [v9 _axHasMultipleAccessibleChildren:children];
        }

        v10 = *children;
      }

      if (v10 >= 2)
      {
        break;
      }

      v8 = ++v7 < v6;
    }

    while (v6 != v7);
  }

  return v8;
}

BOOL __78__UIKitWebAccessibilityObjectWrapper__accessibilityUnignoredVisibleDescendant__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement])
  {
    [v2 _accessibilityVisibleFrame];
    v5 = v4 > 0.0 && v3 > 0.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityTextNavigationElementInDirection:(int64_t)direction
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self _prepareAccessibilityCall]&& (v5 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityTraits], (*MEMORY[0x29EDC7598] & v5) == 0))
  {
    defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    [defaultVoiceOverOptions setDirection:direction];
    v9 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityElementsInDirectionWithCount:1 options:defaultVoiceOverOptions];
    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_repostFocusChangeNotification
{
  v3 = [NSClassFromString(&cfstr_Uiperipheralho.isa) safeValueForKey:@"sharedInstance"];
  if (([v3 safeBoolForKey:@"isOnScreen"] & 1) == 0 && -[UIKitWebAccessibilityObjectWrapper _prepareAccessibilityCall](self, "_prepareAccessibilityCall"))
  {
    v4 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"accessibilityFocusedUIElement"];
    v13 = 0;
    _accessibilityUnignoredDescendant = [v4 _accessibilityUnignoredDescendant];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 _axHasMultipleAccessibleChildren:&v13] && (-[UIKitWebAccessibilityObjectWrapper safeBoolForKey:](self, "safeBoolForKey:", @"accessibilityIsDialog") & 1) == 0 && (v13 > 4 || !_accessibilityUnignoredDescendant))
    {
      v9 = v4;
    }

    else
    {
      if (v4 != _accessibilityUnignoredDescendant)
      {
        _accessibilityUnignoredVisibleDescendant = [v4 _accessibilityUnignoredVisibleDescendant];
        v7 = _accessibilityUnignoredVisibleDescendant;
        if (_accessibilityUnignoredVisibleDescendant)
        {
          v8 = _accessibilityUnignoredVisibleDescendant;

          _accessibilityUnignoredDescendant = v8;
        }
      }

      v9 = _accessibilityUnignoredDescendant;

      if (([v9 accessibilityElementIsFocused] & 1) == 0)
      {
        if ([v9 safeBoolForKey:@"accessibilityIsShowingValidationMessage"] && (v10 = -[UIKitWebAccessibilityObjectWrapper accessibilityTraits](self, "accessibilityTraits"), ((*MEMORY[0x29EDC7598] | *MEMORY[0x29EDC7528]) & v10) != 0))
        {
          v11 = 0;
          v12 = MEMORY[0x29EDC7F10];
        }

        else
        {
          v12 = MEMORY[0x29EDC7488];
          v11 = v9;
        }

        [(UIKitWebAccessibilityObjectWrapper *)self _axHandleNotificationPosting:*v12 data:v11];
      }

      _accessibilityUnignoredDescendant = v9;
    }
  }
}

- (void)accessibilityOverrideProcessNotification:(id)notification notificationData:(id)data
{
  v17[2] = *MEMORY[0x29EDCA608];
  dataCopy = data;
  v7 = AXWebNotificationWithName(notification);
  unsignedIntValue = [v7 unsignedIntValue];
  if (unsignedIntValue <= 1025)
  {
    if (unsignedIntValue > 1008)
    {
      switch(unsignedIntValue)
      {
        case 1009:
          _accessibilityMakeScrollStatus = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityMakeScrollStatus];
          LastScrollDirection = 0;
          [(UIKitWebAccessibilityObjectWrapper *)self performSelectorOnMainThread:sel__performPostScrollStatus_ withObject:_accessibilityMakeScrollStatus waitUntilDone:0];

          break;
        case 1017:
          v9 = sel__enqueReorderingNotification_;
          v11 = &unk_2A23B6E78;
          selfCopy2 = self;
          goto LABEL_27;
        case 1020:
          v9 = sel__repostFocusChangeNotification;
LABEL_12:
          selfCopy2 = self;
          v11 = 0;
LABEL_27:
          [(UIKitWebAccessibilityObjectWrapper *)selfCopy2 performSelectorOnMainThread:v9 withObject:v11 waitUntilDone:0];
          goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (unsignedIntValue != 1005)
    {
      if (unsignedIntValue == 1008)
      {
        v12 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:dataCopy encoding:4];
        if ([v12 length])
        {
          UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v12);
        }
      }

      goto LABEL_29;
    }

    v16[0] = @"notification";
    v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*MEMORY[0x29EDC75C8]];
    v16[1] = @"associatedElement";
    v17[0] = v13;
    v17[1] = self;
    v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [(UIKitWebAccessibilityObjectWrapper *)self performSelectorOnMainThread:sel__enqueReorderingNotification_ withObject:v14 waitUntilDone:0];

LABEL_22:
    goto LABEL_29;
  }

  if (unsignedIntValue <= 3031)
  {
    if (unsignedIntValue != 1026)
    {
      if (unsignedIntValue != 1046)
      {
        goto LABEL_29;
      }

      v13 = [MEMORY[0x29EDBA070] numberWithInteger:1046];
      [(UIKitWebAccessibilityObjectWrapper *)self performSelectorOnMainThread:sel__repostWebNotification_ withObject:v13 waitUntilDone:0];
      goto LABEL_22;
    }

LABEL_28:
    AXPerformBlockOnMainThread();
    goto LABEL_29;
  }

  if (unsignedIntValue == 3032 || unsignedIntValue == 3033)
  {
    goto LABEL_28;
  }

  if (unsignedIntValue == 3034)
  {
    v9 = sel__performLiveRegionUpdate;
    goto LABEL_12;
  }

LABEL_29:
}

- (CGRect)bounds
{
  v2 = *MEMORY[0x29EDB90E0];
  v3 = *(MEMORY[0x29EDB90E0] + 8);
  v4 = *(MEMORY[0x29EDB90E0] + 16);
  v5 = *(MEMORY[0x29EDB90E0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading toElementMatchingQuery:(id)query
{
  queryCopy = query;
  _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWebPageParent];
  v8 = [_accessibilityWebPageParent safeValueForKey:@"accessibilityFocusedUIElement"];

  v9 = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityNextElementsWithHeading:heading queryString:queryCopy startingFrom:v8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __96__UIKitWebAccessibilityObjectWrapper__accessibilityMoveFocusWithHeading_toElementMatchingQuery___block_invoke;
  v12[3] = &unk_29F31F730;
  v12[4] = self;
  v14 = &v15;
  v10 = v8;
  v13 = v10;
  [v9 enumerateObjectsUsingBlock:v12];
  LOBYTE(_accessibilityWebPageParent) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return _accessibilityWebPageParent;
}

void __96__UIKitWebAccessibilityObjectWrapper__accessibilityMoveFocusWithHeading_toElementMatchingQuery___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  AXPerformSafeBlock();
  v7 = [*(a1 + 32) _accessibilityWebPageParent];
  v8 = [v7 safeValueForKey:@"accessibilityFocusedUIElement"];

  if (v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v8 isEqual:*(a1 + 40)] ^ 1;
    *a4 = *(*(*(a1 + 48) + 8) + 24);
  }
}

- (id)_accessibilityNextElementsWithHeading:(unint64_t)heading queryString:(id)string startingFrom:(id)from
{
  headingCopy = heading;
  v22[5] = *MEMORY[0x29EDCA608];
  stringCopy = string;
  fromCopy = from;
  if ((headingCopy & 0x330) != 0)
  {
    v9 = @"AXDirectionNext";
    if ((headingCopy & 0x110) == 0)
    {
      v9 = @"AXDirectionPrevious";
    }

    v21[0] = @"AXDirection";
    v21[1] = @"AXImmediateDescendantsOnly";
    v22[0] = v9;
    v22[1] = MEMORY[0x29EDB8EA8];
    v21[2] = @"AXResultsLimit";
    v21[3] = @"AXVisibleOnly";
    v22[2] = &unk_2A23B6CD8;
    v22[3] = MEMORY[0x29EDB8EA8];
    v21[4] = @"AXSearchKey";
    v22[4] = @"AXKeyboardFocusableSearchKey";
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v22 forKeys:v21 count:5];
    v11 = [v10 mutableCopy];

    if ((headingCopy & 0x30) != 0 && fromCopy)
    {
      [v11 setObject:fromCopy forKey:@"AXStartElement"];
    }

    if (stringCopy)
    {
      [v11 setObject:stringCopy forKey:@"AXSearchText"];
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    v14 = v11;
    AXPerformSafeBlock();
    v12 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __101__UIKitWebAccessibilityObjectWrapper__accessibilityNextElementsWithHeading_queryString_startingFrom___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) accessibilityFindMatchingObjects:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityHasNativeFocus
{
  selfCopy = self;
  _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)selfCopy _accessibilityWebPageParent];
  v4 = [_accessibilityWebPageParent safeValueForKey:@"accessibilityFocusedUIElement"];

  if (selfCopy)
  {
    do
    {
      v5 = [v4 isEqual:selfCopy];
      if (v5)
      {
        break;
      }

      accessibilityContainer = [(UIKitWebAccessibilityObjectWrapper *)selfCopy accessibilityContainer];
      v7 = __UIAccessibilitySafeClass();

      selfCopy = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_accessibilitySetNativeFocus
{
  selfCopy = self;
  _accessibilityWebPageParent = [(UIKitWebAccessibilityObjectWrapper *)selfCopy _accessibilityWebPageParent];
  v4 = [_accessibilityWebPageParent safeValueForKey:@"accessibilityFocusedUIElement"];

  if (selfCopy)
  {
    v5 = selfCopy;
    while (1)
    {
      v6 = [v4 _accessibilityIsDescendantOfElement:v5];
      if (v6)
      {
        v7 = v5;
        v12 = v4;
        goto LABEL_12;
      }

      v7 = v5;
      AXPerformSafeBlock();
      v8 = AXRequestingClient();
      v9 = v8 == 10;
      if (v8 != 10)
      {
        break;
      }

      _accessibilityWebPageParent2 = [(UIKitWebAccessibilityObjectWrapper *)selfCopy _accessibilityWebPageParent];
      v12 = [_accessibilityWebPageParent2 safeValueForKey:@"accessibilityFocusedUIElement"];

      if ([v12 isEqual:v7])
      {
        goto LABEL_11;
      }

      accessibilityContainer = [v7 accessibilityContainer];
      v5 = __UIAccessibilitySafeClass();

      v4 = v12;
      if (!v5)
      {
        v7 = 0;
        goto LABEL_12;
      }
    }

    v12 = v4;
LABEL_11:

    v6 = v9;
LABEL_12:

    v4 = v12;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_accessibilityShouldScrollRemoteParent
{
  v3 = [(UIKitWebAccessibilityObjectWrapper *)self safeValueForKey:@"accessibilityVisibleContentRect"];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIKitWebAccessibilityObjectWrapper *)self safeCGRectForKey:@"accessibilityFrame"];
  v18.origin.x = v12;
  v18.origin.y = v13;
  v18.size.width = v14;
  v18.size.height = v15;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  return !CGRectContainsRect(v17, v18);
}

- (NSString)focusGroupIdentifier
{
  v9.receiver = self;
  v9.super_class = UIKitWebAccessibilityObjectWrapper;
  focusGroupIdentifier = [(UIKitWebAccessibilityObjectWrapper *)&v9 focusGroupIdentifier];
  if (focusGroupIdentifier || (-[UIKitWebAccessibilityObjectWrapper _accessibilityParentView](self, "_accessibilityParentView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 safeValueForKey:@"_containingScrollView"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    _accessibilityDefaultFocusGroupIdentifier = focusGroupIdentifier;
  }

  else
  {
    _accessibilityDefaultFocusGroupIdentifier = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityDefaultFocusGroupIdentifier];
  }

  v7 = _accessibilityDefaultFocusGroupIdentifier;

  return v7;
}

- (void)setNeedsFocusUpdate
{
  v3 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
  [(UIKitWebAccessibilityObjectWrapper *)self _updateFocusLayerFrame];
}

- (void)updateFocusIfNeeded
{
  v3 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:self];
  [v3 updateFocusIfNeeded];
  [(UIKitWebAccessibilityObjectWrapper *)self _updateFocusLayerFrame];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __107__UIKitWebAccessibilityObjectWrapper_UIFocusConformance__didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v8[3] = &unk_29F31F6C0;
  v9 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  [coordinator addCoordinatedAnimations:v8 completion:0];
}

uint64_t __107__UIKitWebAccessibilityObjectWrapper_UIFocusConformance__didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextFocusedItem];
  v3 = *(a1 + 40);
  if (v2 != v3)
  {

LABEL_7:
    v9 = MEMORY[0x29EDC7A98];
    v10 = *(a1 + 40);

    return [v9 removeRingFromFocusItem:v10];
  }

  v4 = [v3 _accessibilityParentView];
  v5 = [v4 _accessibilityIsFKARunningForFocusItem];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = MEMORY[0x29EDC7A98];
  v7 = *(a1 + 40);

  return [v6 moveRingToFocusItem:v7];
}

- (BOOL)canBecomeFocused
{
  isAccessibilityElement = [(UIKitWebAccessibilityObjectWrapper *)self isAccessibilityElement];
  if (isAccessibilityElement)
  {

    LOBYTE(isAccessibilityElement) = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityRespondsToUserInteraction];
  }

  return isAccessibilityElement;
}

- (id)_preferredFocusRegionCoordinateSpace
{
  _accessibilityParentView = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityParentView];
  _screen = [_accessibilityParentView _screen];
  coordinateSpace = [_screen coordinateSpace];

  return coordinateSpace;
}

- (id)focusItemsInRect:(CGRect)rect
{
  v4 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElements:rect.origin.x];
  if (v4)
  {
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __75__UIKitWebAccessibilityObjectWrapper_UIFocusConformance__focusItemsInRect___block_invoke;
    v12[3] = &unk_29F31F780;
    v12[4] = self;
    v5 = [MEMORY[0x29EDBA0A8] predicateWithBlock:v12];
    v6 = [v4 filteredArrayUsingPredicate:v5];
  }

  else if ([(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[UIKitWebAccessibilityObjectWrapper accessibilityElementCount](self, "accessibilityElementCount")}];
    if ([(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount])
    {
      v7 = 0;
      do
      {
        v8 = [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementAtIndex:v7];
        if ([v8 conformsToProtocol:&unk_2A23B83B8])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityFKAShouldIncludeViewsAsElements])
          {
            [v6 axSafelyAddObject:v8];
          }
        }

        ++v7;
      }

      while (v7 < [(UIKitWebAccessibilityObjectWrapper *)self accessibilityElementCount]);
    }
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x29EDB8E90];
  }

  v10 = v9;

  return v9;
}

uint64_t __75__UIKitWebAccessibilityObjectWrapper_UIFocusConformance__focusItemsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2A23B83B8])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(a1 + 32) _accessibilityFKAShouldIncludeViewsAsElements];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_prefersFocusContainment
{
  if ([(UIKitWebAccessibilityObjectWrapper *)self conformsToProtocol:&unk_2A23BD838]|| ([(UIKitWebAccessibilityObjectWrapper *)self _accessibilityIsTouchContainer]& 1) != 0)
  {
    return 1;
  }

  return [(UIKitWebAccessibilityObjectWrapper *)self shouldGroupAccessibilityChildren];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  if (&unk_2A23B83B8 == protocol || &unk_2A23B8080 == protocol || &unk_2A23B8510 == protocol || &unk_2A23B8938 == protocol)
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  v9.receiver = self;
  v9.super_class = UIKitWebAccessibilityObjectWrapper;
  return [(UIKitWebAccessibilityObjectWrapper *)&v9 conformsToProtocol:?];
}

- (CGRect)frame
{
  [(UIKitWebAccessibilityObjectWrapper *)self accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _accessibilityWindow = [(UIKitWebAccessibilityObjectWrapper *)self _accessibilityWindow];
  coordinateSpace = [(UIKitWebAccessibilityObjectWrapper *)self coordinateSpace];
  coordinateSpace2 = [_accessibilityWindow coordinateSpace];
  if (coordinateSpace2)
  {
    [_accessibilityWindow convertRect:0 fromWindow:{v4, v6, v8, v10}];
    [coordinateSpace convertRect:coordinateSpace2 fromCoordinateSpace:?];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_accessibilityTextRectsForSpeakThisStringRange:string:wantsSentences:.cold.1()
{
  v5 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_29C788000, v1, OS_LOG_TYPE_DEBUG, "Found text markers %{public}@ and %{public}@", v2, 0x16u);
}

- (void)_accessibilityScrollToVisible
{
  v5 = *MEMORY[0x29EDCA608];
  [self _accessibilityContentOffset];
  v3 = NSStringFromCGPoint(v6);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_29C788000, a2, OS_LOG_TYPE_DEBUG, "Final content offset was %{public}@", v4, 0xCu);
}

void __58__UIKitWebAccessibilityObjectWrapper__misspelledWordRotor__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v3[0] = 67109120;
  v3[1] = [a1 count];
  _os_log_error_impl(&dword_29C788000, a2, OS_LOG_TYPE_ERROR, "textMarkerRange.count = %d, should've been 2, returning nil.", v3, 8u);
}

void __58__UIKitWebAccessibilityObjectWrapper__misspelledWordRotor__block_invoke_cold_2(void *a1, void *a2)
{
  v4 = [a1 firstObject];
  [a2 positionForTextMarker:v4];
  v5 = [a1 lastObject];
  [a2 positionForTextMarker:v5];
  v6 = [a2 stringForTextMarkers:a1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x18u);
}

- (void)_accessibilityRelayToChrome:object:.cold.1()
{
  v2 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_29C788000, v0, OS_LOG_TYPE_ERROR, "Could not encode data: %@", v1, 0xCu);
}

- (void)_accessibilityClippingFrame
{
  v2 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_29C788000, v0, OS_LOG_TYPE_ERROR, "Could not find clipping frame from container: %@", v1, 0xCu);
}

@end