@interface VOTElement
+ (VOTElement)elementWithUIElement:(id)element;
+ (id)_elementWithAXUIElementRef:(__AXUIElement *)ref;
+ (id)_elementWithAXUIElementRef:(__AXUIElement *)ref cache:(id)cache identification:(id)identification initializeAssociatedPids:(BOOL)pids;
+ (id)customPublicRotorDictionaryForRotorId:(id)id startRange:(_NSRange)range direction:(int64_t)direction;
+ (id)elementAtPointIntercept;
+ (id)inputUIApplication;
+ (id)iosSystemAppApplication;
+ (id)organizedActionsByCategory:(id)category;
+ (id)systemAppApplication;
+ (id)systemWideElement;
+ (void)initialize;
+ (void)resetInputUIAppElement;
+ (void)resetSystemAppElement;
+ (void)setElementAtPointIntercept:(id)intercept;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)nonPersistentUniqueId;
- (BOOL)_attemptPerformActivateActionWithElement:(id)element;
- (BOOL)_elementActionsEquivalent:(id)equivalent withElement:(id)element;
- (BOOL)_ignoreCustomActionIndicator:(id)indicator withElement:(id)element;
- (BOOL)_scrollForAction:(int)action;
- (BOOL)activateDragWithDescriptorDictionary:(id)dictionary;
- (BOOL)activateIfSupported;
- (BOOL)activateKeyboardReturnKey;
- (BOOL)allowsActivationWithoutBeingNativeFocused;
- (BOOL)applySelectedText:(id)text language:(id)language;
- (BOOL)attemptToShowContextMenuWithTargetPointValue:(id)value;
- (BOOL)brailleTextEntrySupported;
- (BOOL)canExpandMathEquation;
- (BOOL)containedIn:(unint64_t)in;
- (BOOL)customPublicRotorIsVisibleInTouchRotor:(id)rotor;
- (BOOL)dispatchKeyboardEvent:(id)event;
- (BOOL)doesHaveTraitsForGesturedTextInput;
- (BOOL)elementActsAsTitleElement:(id)element;
- (BOOL)elementIsDescendant:(id)descendant;
- (BOOL)elementOnSameLine:(id)line;
- (BOOL)hasExplicitColumnInfo;
- (BOOL)hasExplicitRowInfo;
- (BOOL)includeRoleDescription;
- (BOOL)includeRoleOnlyForGroupNavigation;
- (BOOL)includeURLLabelInLabel;
- (BOOL)includesTrendlineInSonification;
- (BOOL)isAccessibilitySystemUIServer;
- (BOOL)isAccessibleElement;
- (BOOL)isAlarmRinging;
- (BOOL)isAlive;
- (BOOL)isApplication;
- (BOOL)isAssistiveTouch;
- (BOOL)isCameraIrisOpen;
- (BOOL)isChronod;
- (BOOL)isClipViewService;
- (BOOL)isContainedByPreferredNativeFocusElement;
- (BOOL)isDataSeriesElement;
- (BOOL)isDictationListening;
- (BOOL)isEditableTextArea;
- (BOOL)isElementFirstElement:(BOOL)element orLastElement:(BOOL)lastElement withType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFirstItemInFieldset;
- (BOOL)isFirstItemInLandmark;
- (BOOL)isFirstItemInList;
- (BOOL)isFirstItemInTable;
- (BOOL)isFirstItemInTree;
- (BOOL)isGoogleChrome;
- (BOOL)isHandUI;
- (BOOL)isHeadBoard;
- (BOOL)isIBooks;
- (BOOL)isKeyboardActiveOrAttached;
- (BOOL)isKeyboardContinuousPathTracking;
- (BOOL)isLastItemInList;
- (BOOL)isLiveCaptionsParagraphView;
- (BOOL)isLiveCaptionsTextView;
- (BOOL)isMail;
- (BOOL)isMapPOIItem;
- (BOOL)isMaps;
- (BOOL)isMobilePhone;
- (BOOL)isPineBoard;
- (BOOL)isPressed;
- (BOOL)isSafari;
- (BOOL)isSafariScribbleActive;
- (BOOL)isSetupBuddy;
- (BOOL)isSiriTalkingOrListening;
- (BOOL)isSoftwareKeyboardActive;
- (BOOL)isSpotlight;
- (BOOL)isSpringBoard;
- (BOOL)isSystemApp;
- (BOOL)isSystemBatteryLow;
- (BOOL)isSystemLocked;
- (BOOL)isSystemSleeping;
- (BOOL)isSystemWideGestureInProgress;
- (BOOL)isTouchContainer;
- (BOOL)isTourGuideRunning;
- (BOOL)isValidForApplication:(id)application;
- (BOOL)isVoiceControlRunning;
- (BOOL)isWesternTextForNonWesternLanguage:(id)language language:(id)a4;
- (BOOL)keyboardKeyAllowsTouchTyping;
- (BOOL)lastHitTestNearBorder;
- (BOOL)performCustomActionWithIdentifier:(id)identifier data:(id)data;
- (BOOL)performEscape;
- (BOOL)performScribbleAction;
- (BOOL)performSimpleTap:(BOOL)tap;
- (BOOL)performSimpleTapAtPoint:(CGPoint)point withForce:(double)force withContextId:(unsigned int)id withDelay:(float)delay forElement:(id)element;
- (BOOL)performTapAtPoint:(CGPoint)point withForce:(double)force playSound:(BOOL)sound;
- (BOOL)prefersContextlessPassthrough;
- (BOOL)replaceTextInRange:(_NSRange)range withString:(id)string;
- (BOOL)roadContainsTrackingPoint:(CGPoint)point;
- (BOOL)shouldAddAlternateActionForLinkElement;
- (BOOL)shouldAnnounceTableInfo;
- (BOOL)shouldExpandMathEquation;
- (BOOL)shouldIgnoreTextEditingTrait;
- (BOOL)shouldSpeakHelpInGestureArea;
- (BOOL)shouldSpeakMathEquationTrait;
- (BOOL)showBulletinBoard:(BOOL)board;
- (BOOL)showControlCenter:(BOOL)center;
- (BOOL)showsDualPages;
- (BOOL)supportsActivate;
- (BOOL)supportsAudiographActions;
- (BOOL)supportsAudiographs;
- (BOOL)supportsDataSeriesSonification;
- (BOOL)supportsDataSeriesSummarization;
- (BOOL)supportsHeaderElementOutput;
- (BOOL)textOperationsAvailable;
- (BOOL)usingBrailleHardwareKeyboard;
- (BOOL)usingHardwareKeyboard;
- (BOOL)verifyElementExists:(CGPoint *)exists;
- (BOOL)webSearchResultsActive;
- (CGPath)convertPath:(CGPath *)path fromContextId:(unsigned int)id;
- (CGPath)convertPath:(CGPath *)path fromContextId:(unsigned int)id fromDisplayId:(unsigned int)displayId;
- (CGPoint)centerPoint;
- (CGPoint)centerPointOfScreen;
- (CGPoint)contentOffset;
- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id;
- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id;
- (CGPoint)elementFrameLocation:(int)location;
- (CGPoint)mapsExplorationCurrentLocation;
- (CGPoint)visiblePoint;
- (CGRect)adaptFrameForSystemElement:(CGRect)element;
- (CGRect)boundsForRange:(_NSRange)range;
- (CGRect)braille2DRenderRegion;
- (CGRect)convertAccessibilityFrameToScreenCoordinates:(CGRect)coordinates;
- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id fromDisplayId:(unsigned int)displayId;
- (CGRect)convertRect:(CGRect)rect fromContextId:(unsigned int)id;
- (CGRect)frame;
- (CGRect)frameForDirectInteraction;
- (CGRect)frameForLineNumber:(int64_t)number;
- (CGRect)frameForRange:(_NSRange)range;
- (CGRect)gesturePracticeRegion;
- (CGRect)mediaAnalysisFrame;
- (CGRect)textCursorFrame;
- (CGRect)textMarkerFrame:(id)frame;
- (CGRect)visibleFrame;
- (NSString)chartStructureDescription;
- (NSString)description;
- (NSString)guideElementHeaderText;
- (NSString)label;
- (NSString)toggleStatusLabel;
- (NSString)userDefinedLabel;
- (NSString)visibleText;
- (NSURL)photoLibraryURL;
- (VOTElement)elementForGesturedTextInput;
- (VOTElement)initWithAXElement:(__AXUIElement *)element;
- (VOTElement)initWithPosition:(CGPoint)position;
- (VOTElement)initWithPosition:(CGPoint)position application:(id)application contextId:(unsigned int)id;
- (VOTElement)initWithPosition:(CGPoint)position startWithElement:(id)element;
- (VOTElement)nextGuideElement;
- (VOTElement)previousGuideElement;
- (VOTElementSnapshot)snapshot;
- (VOTElementUniqueIdentification)uniqueIdentification;
- (_NSRange)_brailleLineRangeForDescription:(id)description position:(unint64_t)position;
- (_NSRange)characterRangeForPosition:(unint64_t)position;
- (_NSRange)columnRange;
- (_NSRange)indexPathAsRange;
- (_NSRange)lineRangeForPosition:(unint64_t)position;
- (_NSRange)rangeForLineNumber:(int64_t)number;
- (_NSRange)rangeForLineNumberAndColumn:(id)column;
- (_NSRange)rangeForTextMarker:(id)marker;
- (_NSRange)rowRange;
- (_NSRange)selectedTextRange;
- (_NSRange)textInputElementRange;
- (_NSRange)textMarkerSelectionRange;
- (__AXUIElement)touchContainerAXElement;
- (__AXUIElement)touchContainerParentAXElement;
- (double)absoluteValue;
- (double)dataSeriesMaximumValueForAxis:(int64_t)axis;
- (double)dataSeriesMinimumValueForAxis:(int64_t)axis;
- (double)dataSeriesSonificationPlaybackDuration;
- (double)delayBeforeUpdatingOnActivation;
- (double)maxValue;
- (double)minValue;
- (float)activationDelay;
- (float)distanceToEndOfRoad:(CGPoint)road withDirection:(float)direction;
- (float)distanceToOtherRoad:(CGPoint)road withDirection:(float)direction otherRoad:(id)otherRoad;
- (id)_copyMathTextualInformationWithBrailleLineRange:(_NSRange *)range brailleDescriptionRange:(_NSRange *)descriptionRange position:(unint64_t)position rotorSelection:(id)selection shouldPreferRotorSelection:(BOOL)rotorSelection;
- (id)_elementForAttribute:(int64_t)attribute shouldUpdateCache:(BOOL)cache shouldFetchAttributes:(BOOL)attributes;
- (id)_initWithUIElement:(id)element identification:(id)identification initializeAssociatedPids:(BOOL)pids;
- (id)_languageRangesForText:(id)text;
- (id)_lastContainedElementIncludingRemotes:(BOOL)remotes;
- (id)_mathAXStringFromAttributedString:(id)string;
- (id)_mathExpression;
- (id)_removeBadDeveloperDecisions:(id)decisions;
- (id)_resolvedOutputLanguage:(BOOL *)language;
- (id)_selectionStringForSegment:(int64_t)segment;
- (id)_sourceNameForChangeOriginator:(int64_t)originator;
- (id)activeSceneIdentifier;
- (id)ancestryForTraits:(unint64_t)traits;
- (id)appIconValues;
- (id)appSwitcherApps;
- (id)applicationProvidedOCRText;
- (id)arrayForParameterizedAttribute:(int64_t)attribute parameter:(id)parameter;
- (id)arrayOfTraitsAsStringsWithTraitOrder:(id)order;
- (id)arrayOfTraitsAsStringsWithTraitOrder:(id)order language:(id)language;
- (id)attributedValueForRange:(_NSRange)range;
- (id)brailleMap;
- (id)bundleIdentifier;
- (id)cachedCustomRotorActions;
- (id)cachedDragCustomActions;
- (id)cachedDropCustomActions;
- (id)cellWithRowIndexPath:(_NSRange)path parentView:(id)view;
- (id)chartDescriptor;
- (id)concatenateLabelsWithLinebreaksBasedOnFrame:(id)frame;
- (id)containerTypes;
- (id)copyWithCache;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentHardwareKeyboardLayout;
- (id)currentSoftwareKeyboardLanguage;
- (id)currentSoftwareKeyboardLayout;
- (id)customContent;
- (id)customPublicRotorForSystemType:(id)type;
- (id)customPublicRotorName:(id)name;
- (id)customPublicRotorNames;
- (id)customPublicRotorResultWithItem:(id)item startElement:(id)element;
- (id)customPublicRotors;
- (id)customRotorActions;
- (id)dataDetectorURL:(CGPoint)l;
- (id)dataSeriesAxesDescription;
- (id)dataSeriesCategoryLabelsForAxis:(int64_t)axis;
- (id)dataSeriesGridlinePositionsForAxis:(int64_t)axis;
- (id)dataSeriesName;
- (id)dataSeriesTitleForAxis:(int64_t)axis;
- (id)dataSeriesUnitsLabelForAxis:(int64_t)axis;
- (id)dataSeriesValuesForAxis:(int64_t)axis;
- (id)dataSeriesXAxisValueDescriptionForPosition:(double)position;
- (id)dataSeriesYAxisValueDescriptionForPosition:(double)position;
- (id)dragCustomActions;
- (id)dragSourceDescriptorDictionaries;
- (id)dropCustomActions;
- (id)dropPointDescriptorDictionaries;
- (id)elementAtRow:(int64_t)row andColumn:(int64_t)column;
- (id)elementCommunity;
- (id)elementCommunityIdentifier;
- (id)elementForParameterizedAttribute:(int64_t)attribute parameter:(id)parameter;
- (id)elementsForAttribute:(int64_t)attribute withParameter:(id)parameter;
- (id)elementsInDirection:(int64_t)direction withCount:(unint64_t)count;
- (id)fbSceneIdentifier;
- (id)firstContainedElement;
- (id)firstElementInApplication;
- (id)firstElementInApplicationForFocus;
- (id)firstElementInApplicationForReadFromTop;
- (id)firstElementInStatusBar;
- (id)firstResponderElement;
- (id)firstResponderElementForFocus;
- (id)firstResponderElementWithoutCache;
- (id)focusedApplications;
- (id)formattedDatetime;
- (id)frontmostItemContainer;
- (id)generateCVMLContentForBraille;
- (id)gesturedTextInputAttributes;
- (id)groupedParent;
- (id)headerElementsForColumn:(unint64_t)column;
- (id)headerElementsForRow:(unint64_t)row;
- (id)immediateRemoteParent;
- (id)initApplicationWithPid:(int)pid;
- (id)initApplicationWithPosition:(CGPoint)position;
- (id)instructions;
- (id)itemChooserName;
- (id)labeledTouchContainer;
- (id)lastContainedElement;
- (id)lastElementInApplication;
- (id)lastElementInStatusBar;
- (id)launchableApps;
- (id)lineNumberAndColumnForPoint:(CGPoint)point;
- (id)mapDetailedInformationAtPoint:(CGPoint)point;
- (id)mapsExplorationChangeVerbosity:(BOOL)verbosity;
- (id)mathBrailleDescription;
- (id)mathEquationDescription;
- (id)mathSegmentsWithGranularityLevel:(unint64_t)level;
- (id)mathSummary;
- (id)nativeFocusElement;
- (id)nativeFocusPreferredElement;
- (id)nextContainer;
- (id)nextElement;
- (id)notificationSummary:(unint64_t)summary;
- (id)objectForRange:(_NSRange)range withParameterizedAttribute:(int64_t)attribute;
- (id)occludedMultitaskingApps;
- (id)opaqueElementInDirection:(int64_t)direction searchType:(int64_t)type range:(_NSRange *)range peeking:(BOOL)peeking startOpaqueElement:(id)element;
- (id)opaqueParent;
- (id)originalLabel;
- (id)outermostLocalOpaqueParent;
- (id)pageTextMarkerRange;
- (id)previousContainer;
- (id)previousElement;
- (id)regionDescriptionWithFrame:(CGRect)frame;
- (id)remoteApplication;
- (id)remoteParent;
- (id)resolvedEditingStyles;
- (id)roleDescriptionWithInteractOption:(int64_t)option language:(id)language;
- (id)scribbleAreaForSearchPoint:(int64_t)point;
- (id)scrollStatus;
- (id)staticRecognitionText;
- (id)staticTextString;
- (id)stringForLineNumber:(int64_t)number;
- (id)stringForParameterizedAttribute:(int64_t)attribute parameter:(id)parameter;
- (id)supportedLanguageIfNecessary;
- (id)tableDimensionStringWithRow:(unint64_t)row andColumn:(unint64_t)column;
- (id)textLineEndMarker:(id)marker;
- (id)textMarkerArrayOfText:(id)text;
- (id)textMarkerForPoint:(CGPoint)point;
- (id)textMarkerRangeForSelection;
- (id)textMarkersForPoints:(id)points;
- (id)textMarkersForRange:(_NSRange)range;
- (id)textOperations;
- (id)touchContainer;
- (id)touchContainerParent;
- (id)upcomingRoadsAtPoint:(CGPoint)point withDirection:(float)direction;
- (id)url;
- (id)urlLabel;
- (id)valueForRange:(_NSRange)range;
- (id)valueWithUpdate:(BOOL)update;
- (id)visionFeatureDescriptionOptions;
- (id)webArea;
- (id)webAreaURL;
- (id)webHierarchyIndexPathFromWebArea:(id)area;
- (int)applicationInterfaceOrientation;
- (int64_t)_changeOriginatorForSourceName:(id)name;
- (int64_t)applicationOrientation;
- (int64_t)customPublicRotorLinkCountForRotor:(id)rotor;
- (int64_t)dataSeriesType;
- (int64_t)differenceAspectMask:(id)mask;
- (int64_t)expandedStatus;
- (int64_t)lineEndPosition;
- (int64_t)lineNumberForPoint:(CGPoint)point;
- (int64_t)lineStartPosition;
- (int64_t)mapFeatureType;
- (int64_t)overriddenInterpretationForCommand:(int64_t)command;
- (int64_t)temporaryVoiceOverStatus;
- (int64_t)valueChangeOriginationSource;
- (int64_t)versionedPID;
- (unint64_t)_minimumSegmentDepth;
- (unint64_t)_minimumSegmentDepthForExpression:(id)expression withMaximumDepth:(unint64_t)depth;
- (unint64_t)ariaColumnCount;
- (unint64_t)ariaColumnIndex;
- (unint64_t)ariaRowCount;
- (unint64_t)ariaRowIndex;
- (unint64_t)blockquoteLevel;
- (unint64_t)columnCount;
- (unint64_t)containerType;
- (unint64_t)directTouchOptions;
- (unint64_t)groupedChildrenCount;
- (unint64_t)indexOfAccessibilityElement:(id)element;
- (unint64_t)notificationCount;
- (unint64_t)rowCount;
- (unint64_t)traits;
- (unsigned)displayId;
- (unsigned)mediaAnalysisOptions;
- (unsigned)secureName;
- (unsigned)windowContextId;
- (unsigned)windowContextIdForPress;
- (unsigned)windowContextIdImmediateRemoteParent:(unsigned int)parent;
- (void)_addErrorMessageElement:(id)element toRequest:(id)request;
- (void)_addHeaderElement:(id)element toRequest:(id)request;
- (void)_applyBrailleTextFormattingAndInlineCompletionOptions:(id)options attributedString:(id)string brailleLineRange:(_NSRange)range rangeOffset:(unint64_t)offset;
- (void)_applyCurrentStatus:(id)status language:(id)language;
- (void)_applyCustomContent:(id)content language:(id)language;
- (void)_applyDatetimeAttribute:(id)attribute language:(id)language;
- (void)_applyExpandedStatus:(id)status language:(id)language;
- (void)_applyHasPopupAttribute:(id)attribute withLanguage:(id)language;
- (void)_applyHeaderStatus:(id)status language:(id)language;
- (void)_applyInvalidStatus:(id)status language:(id)language;
- (void)_applyLabelToRequest:(id)request includeBlockQuote:(BOOL)quote language:(id)language isWebLanguageChoice:(BOOL)choice interactOption:(int64_t)option;
- (void)_applyLanguageTokens:(id)tokens attributedString:(id)string;
- (void)_applyLinkRelationshipType:(id)type language:(id)language;
- (void)_applyRoleDescription:(id)description language:(id)language interactOption:(int64_t)option;
- (void)_applySelectedTrait:(id)trait language:(id)language;
- (void)_applySortDirection:(id)direction language:(id)language;
- (void)_applyStickyCustomActions:(id)actions customAction:(id)action language:(id)language;
- (void)_applyTableColumnIndex:(id)index options:(unint64_t)options language:(id)language;
- (void)_applyTableRowColumnSpan:(id)span language:(id)language;
- (void)_applyTableRowIndex:(id)index options:(unint64_t)options language:(id)language;
- (void)_applyTraitsToRequest:(id)request options:(unint64_t)options numHeaderActions:(unint64_t)actions language:(id)language;
- (void)_applyValueToRequest:(id)request options:(unint64_t)options lastSeenLineAndColumn:(id)column language:(id)language;
- (void)_configureAsSingleLinkElementWithRequest:(id)request linkTraitTitle:(id)title hint:(id)hint;
- (void)_copyInternalsToElement:(id)element;
- (void)_iterateSelfAndRemoteParentsUsingBlock:(id)block;
- (void)_updateFocusForFKA:(BOOL)a;
- (void)_updateValueChangeOriginatorForApplication:(int64_t)application;
- (void)addTextualInformationToBrailleLine:(id)line forPosition:(unint64_t)position rotorSelection:(id)selection shouldPreferRotorSelection:(BOOL)rotorSelection lineRange:(_NSRange *)range descriptionRange:(_NSRange *)descriptionRange lineRangeKnown:(BOOL)known isNewTouchContainer:(BOOL)self0 previousElement:(id)self1;
- (void)addTextualInformationToBrailleLine:(id)line forPosition:(unint64_t)position rotorSelection:(id)selection shouldPreferRotorSelection:(BOOL)rotorSelection lineRange:(_NSRange *)range descriptionRange:(_NSRange *)descriptionRange lineRangeKnown:(BOOL)known isNewTouchContainer:(BOOL)self0 previousElement:(id)self1 updateValue:(BOOL)self2 singleLine:(BOOL)self3;
- (void)addTextualInformationToRequest:(id)request options:(unint64_t)options dataPackage:(id)package;
- (void)addTitleElementToCache:(id)cache;
- (void)announceAdditionalTextualInformation:(id)information;
- (void)announceTableInfo:(id)info options:(unint64_t)options language:(id)language;
- (void)applyCVMLGeneratedContentToRequest:(id)request explicitUserRequest:(BOOL)userRequest;
- (void)applyGroupChildrenCountToRequest:(id)request;
- (void)applyHeaderElementsToRequest:(id)request;
- (void)applyInvalidStatusToRequest:(id)request;
- (void)applyRowHeadersToRequest:(id)request;
- (void)applyTableDimension:(id)dimension language:(id)language;
- (void)applyTextEditingInformation:(id)information request:(id)request options:(unint64_t)options;
- (void)clearSelectedScribbleElement;
- (void)decreaseWebSelection:(int64_t)selection;
- (void)deleteCharacterAtCursorWithSource:(int64_t)source;
- (void)expandMathEquation;
- (void)findSearchResult:(BOOL)result withSearchText:(id)text;
- (void)handwritingSendCarriageReturn;
- (void)increaseWebSelection:(int64_t)selection;
- (void)initializeAssociatedPids;
- (void)insertText:(id)text source:(int64_t)source;
- (void)mapsExplorationBeginFromCurrentElement:(BOOL)element;
- (void)mapsExplorationContinueWithVertexIndex:(unint64_t)index;
- (void)mapsExplorationRecordTouchpoint:(CGPoint)touchpoint;
- (void)notifyAnnouncementFinishedWithString:(id)string didFinishSuccessfully:(BOOL)successfully;
- (void)performDoubleTap;
- (void)performTextOperation:(id)operation;
- (void)postFingerDragAtPoint:(CGPoint)point withForce:(double)force withContextId:(unsigned int)id;
- (void)postFingerLiftAtPoint:(CGPoint)point withContextId:(unsigned int)id;
- (void)postFingerTouchAtPoint:(CGPoint)point withForce:(double)force withContextId:(unsigned int)id;
- (void)postStylusDragAtPoint:(CGPoint)point withForce:(double)force altitude:(double)altitude azimuth:(double)azimuth withContextId:(unsigned int)id;
- (void)postStylusLiftAtPoint:(CGPoint)point withContextId:(unsigned int)id;
- (void)postStylusTouchAtPoint:(CGPoint)point withForce:(double)force altitude:(double)altitude azimuth:(double)azimuth withContextId:(unsigned int)id;
- (void)regionDescriptionWithCompletion:(id)completion;
- (void)replaceCharactersAtCursor:(unint64_t)cursor withString:(id)string source:(int64_t)source;
- (void)repostEvent:(id)event;
- (void)scrollRectToVisible:(CGRect)visible withCompletion:(id)completion;
- (void)scrollToElementForDirectional:(int64_t)directional withCompletion:(id)completion;
- (void)scrollToPoint:(CGPoint)point;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setEventCaptureMode:(int)mode;
- (void)setFirstResponder:(id)responder;
- (void)setIsFirstItemInFieldset:(BOOL)fieldset;
- (void)setIsFirstItemInLandmark:(BOOL)landmark;
- (void)setIsFirstItemInList:(BOOL)list;
- (void)setIsFirstItemInTable:(BOOL)table;
- (void)setIsFirstItemInTree:(BOOL)tree;
- (void)setIsLastItemInList:(BOOL)list;
- (void)setNavigationDirectionMode:(int64_t)mode;
- (void)setRotationCapabilityEnabled:(BOOL)enabled;
- (void)setSelectedTextRange:(_NSRange)range refreshBraille:(BOOL)braille isVoiceOverSelectionMovement:(BOOL)movement;
- (void)setTemporaryVoiceOverStatus:(int64_t)status;
- (void)setVoiceOverFocused:(BOOL)focused;
- (void)unsetEventCaptureMode:(int)mode;
- (void)updateCache;
- (void)updateTouchForceSounds:(double)sounds;
- (void)zoomInAtLocation:(CGPoint)location;
- (void)zoomOutAtLocation:(CGPoint)location;
@end

@implementation VOTElement

+ (void)initialize
{
  if (qword_1001FEA30 != -1)
  {
    sub_100128484();
  }
}

+ (id)systemWideElement
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    if (qword_1001FEA38 != -1)
    {
      sub_100128498();
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001370C;
    block[3] = &unk_1001C78B0;
    block[4] = self;
    if (qword_1001FEA40 != -1)
    {
      dispatch_once(&qword_1001FEA40, block);
    }
  }

  v3 = qword_1001FEA08;

  return v3;
}

+ (id)systemAppApplication
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v2 = &qword_1001FEA48;
  }

  else
  {
    if (AXDeviceIsAudioAccessory())
    {
      v3 = 0;
      goto LABEL_13;
    }

    [qword_1001FEA20 lock];
    if (!qword_1001FEA10 && (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0)
    {
      v4 = +[VOTElement systemWideElement];
      uiElement = [v4 uiElement];

      v6 = [uiElement uiElementsWithAttribute:1001];
      lastObject = [v6 lastObject];

      v8 = [VOTElement elementWithUIElement:lastObject];
      v9 = qword_1001FEA10;
      qword_1001FEA10 = v8;

      uiElement2 = [qword_1001FEA10 uiElement];
      axElement = [uiElement2 axElement];

      if (axElement)
      {
        AXUIElementRegisterForApplicationDeath();
      }
    }

    [qword_1001FEA20 unlock];
    v2 = &qword_1001FEA10;
  }

  v3 = *v2;
LABEL_13:

  return v3;
}

+ (id)inputUIApplication
{
  [qword_1001FEA28 lock];
  if ((!qword_1001FEA18 || ([qword_1001FEA18 isValid] & 1) == 0) && (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0)
  {
    v2 = +[VOTElement systemWideElement];
    uiElement = [v2 uiElement];

    v4 = [uiElement uiElementsWithAttribute:1011];
    lastObject = [v4 lastObject];

    v6 = [VOTElement elementWithUIElement:lastObject];
    v7 = qword_1001FEA18;
    qword_1001FEA18 = v6;

    uiElement2 = [qword_1001FEA18 uiElement];
    axElement = [uiElement2 axElement];

    if (axElement)
    {
      AXUIElementRegisterForApplicationDeath();
    }
  }

  [qword_1001FEA28 unlock];
  v10 = qword_1001FEA18;

  return v10;
}

+ (id)iosSystemAppApplication
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    systemAppApplication = qword_1001FEA48;
  }

  else
  {
    systemAppApplication = [self systemAppApplication];
  }

  return systemAppApplication;
}

+ (void)resetSystemAppElement
{
  [qword_1001FEA20 lock];
  v2 = qword_1001FEA10;
  qword_1001FEA10 = 0;

  v3 = qword_1001FEA20;

  [v3 unlock];
}

+ (void)resetInputUIAppElement
{
  [qword_1001FEA28 lock];
  v2 = qword_1001FEA18;
  qword_1001FEA18 = 0;

  v3 = qword_1001FEA28;

  [v3 unlock];
}

+ (VOTElement)elementWithUIElement:(id)element
{
  elementCopy = element;
  v5 = [objc_allocWithZone(self) initWithUIElement:elementCopy];

  return v5;
}

+ (id)_elementWithAXUIElementRef:(__AXUIElement *)ref cache:(id)cache identification:(id)identification initializeAssociatedPids:(BOOL)pids
{
  pidsCopy = pids;
  identificationCopy = identification;
  cacheCopy = cache;
  v12 = objc_allocWithZone(self);
  v13 = [AXUIElement uiElementWithAXElement:ref cache:cacheCopy];

  v14 = [v12 _initWithUIElement:v13 identification:identificationCopy initializeAssociatedPids:pidsCopy];

  return v14;
}

+ (id)_elementWithAXUIElementRef:(__AXUIElement *)ref
{
  v4 = [AXUIElement uiElementWithAXElement:ref];
  v5 = [self elementWithUIElement:v4];

  return v5;
}

+ (id)elementAtPointIntercept
{
  v2 = objc_retainBlock(qword_1001FEA50);

  return v2;
}

+ (void)setElementAtPointIntercept:(id)intercept
{
  qword_1001FEA50 = objc_retainBlock(intercept);

  _objc_release_x1();
}

- (id)initApplicationWithPid:(int)pid
{
  v4 = [AXUIElement uiApplicationWithPid:*&pid];
  v5 = [(VOTElement *)self initWithUIElement:v4];

  return v5;
}

- (id)initApplicationWithPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    selfCopy = 0;
  }

  else
  {
    v7 = [AXUIElement uiApplicationAtCoordinate:x, y];
    self = [(VOTElement *)self initWithUIElement:v7];

    selfCopy = self;
  }

  return selfCopy;
}

- (VOTElement)initWithAXElement:(__AXUIElement *)element
{
  v4 = [AXUIElement uiElementWithAXElement:element];
  v5 = [(VOTElement *)self initWithUIElement:v4];

  return v5;
}

- (id)_initWithUIElement:(id)element identification:(id)identification initializeAssociatedPids:(BOOL)pids
{
  pidsCopy = pids;
  elementCopy = element;
  identificationCopy = identification;
  v15.receiver = self;
  v15.super_class = VOTElement;
  v11 = [(VOTElement *)&v15 init];
  v12 = v11;
  v13 = 0;
  if (elementCopy && v11)
  {
    objc_storeStrong(&v11->_uiElement, element);
    v12->_lastOrbSoundLevel = 0;
    v12->_aspectMask = 63;
    if (![(VOTElement *)v12 isApplication])
    {
      objc_storeStrong(&v12->_uniqueIdentification, identification);
    }

    if (pidsCopy)
    {
      [(VOTElement *)v12 initializeAssociatedPids];
    }

    v13 = v12;
  }

  return v13;
}

- (void)initializeAssociatedPids
{
  if (![(VOTElement *)self isApplication])
  {
    [(VOTElement *)self pid];
    if (!_AXIsPidAssociated())
    {
      application = [(VOTElement *)self application];
      [application pid];
      _AXAddAssociatedPid();
    }
  }
}

- (VOTElement)initWithPosition:(CGPoint)position startWithElement:(id)element
{
  y = position.y;
  x = position.x;
  uiElement = [element uiElement];
  v8 = [AXUIElement uiElementAtCoordinate:uiElement startWithElement:x, y];

  v9 = [(VOTElement *)self initWithUIElement:v8];
  return v9;
}

- (VOTElement)initWithPosition:(CGPoint)position application:(id)application contextId:(unsigned int)id
{
  v5 = *&id;
  y = position.y;
  x = position.x;
  uiElement = [application uiElement];
  v10 = +[AXUIElement uiElementAtCoordinate:forApplication:contextId:](AXUIElement, "uiElementAtCoordinate:forApplication:contextId:", [uiElement axElement], v5, x, y);

  v11 = [(VOTElement *)self initWithUIElement:v10];
  return v11;
}

- (VOTElement)initWithPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  if (![VOTSharedWorkspace inUnitTestMode])
  {
    v9 = [AXUIElement uiElementAtCoordinate:x, y];
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v11 = +[AXBackBoardServer server];
      v12 = [v11 contextIdForPosition:{x, y}];

      v13 = +[AXBackBoardServer server];
      v14 = [v13 contextIdHostingContextId:v12];

      if (!v14)
      {
        goto LABEL_10;
      }

      v15 = [AXUIElement uiApplicationForContext:v14];
      v7 = +[AXUIElement uiElementAtCoordinate:forApplication:contextId:](AXUIElement, "uiElementAtCoordinate:forApplication:contextId:", [v15 axElement], v14, x, y);

      if (!v7)
      {
        goto LABEL_10;
      }
    }

    v8 = [(VOTElement *)self initWithUIElement:v7];
    self = v8;
    goto LABEL_7;
  }

  v6 = +[VOTElement elementAtPointIntercept];

  if (!v6)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v7 = +[VOTElement elementAtPointIntercept];
  v8 = v7[2](x, y);
LABEL_7:
  v10 = v8;

LABEL_11:
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([VOTSharedWorkspace inUnitTestMode] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [VOTElement elementWithUIElement:self->_uiElement];
  }

  else
  {
    axElement = [(UIElementProtocol *)self->_uiElement axElement];
    uniqueIdentification = [(VOTElement *)self uniqueIdentification];
    v4 = [VOTElement _elementWithAXUIElementRef:axElement cache:0 identification:uniqueIdentification initializeAssociatedPids:0];
  }

  [(VOTElement *)self _copyInternalsToElement:v4];
  return v4;
}

- (id)copyWithCache
{
  copyCachedAttributes = [(UIElementProtocol *)self->_uiElement copyCachedAttributes];
  if ([VOTSharedWorkspace inUnitTestMode] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uniqueIdentification = [(UIElementProtocol *)self->_uiElement copyWithZone:0];
    [uniqueIdentification setAttributes:copyCachedAttributes];
    v5 = [VOTElement elementWithUIElement:uniqueIdentification];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_8;
    }

    axElement = [(UIElementProtocol *)self->_uiElement axElement];
    uniqueIdentification = [(VOTElement *)self uniqueIdentification];
    v5 = [VOTElement _elementWithAXUIElementRef:axElement cache:copyCachedAttributes identification:uniqueIdentification initializeAssociatedPids:0];
  }

  v7 = v5;

LABEL_8:
  [(VOTElement *)self _copyInternalsToElement:v7];

  return v7;
}

- (void)_copyInternalsToElement:(id)element
{
  elementCopy = element;
  [elementCopy setCachedDisplayId:{-[VOTElement cachedDisplayId](self, "cachedDisplayId")}];
  definedLabel = [(VOTElement *)self definedLabel];
  v5 = [definedLabel copy];
  [elementCopy setDefinedLabel:v5];

  userDefinedLabel = [(VOTElement *)self userDefinedLabel];
  v7 = [userDefinedLabel copy];
  [elementCopy setUserDefinedLabel:v7];

  [elementCopy setIsFirstItemInList:{-[VOTElement isFirstItemInList](self, "isFirstItemInList")}];
  [elementCopy setIsLastItemInList:{-[VOTElement isLastItemInList](self, "isLastItemInList")}];
  [elementCopy setIsFirstItemInTable:{-[VOTElement isFirstItemInTable](self, "isFirstItemInTable")}];
  [elementCopy setIsFirstItemInLandmark:{-[VOTElement isFirstItemInLandmark](self, "isFirstItemInLandmark")}];
  [elementCopy setIsFirstItemInFieldset:{-[VOTElement isFirstItemInFieldset](self, "isFirstItemInFieldset")}];
  [elementCopy setIsFirstItemInTree:{-[VOTElement isFirstItemInTree](self, "isFirstItemInTree")}];
  [elementCopy setIsFirstItemInDescriptionList:{-[VOTElement isFirstItemInDescriptionList](self, "isFirstItemInDescriptionList")}];
  [elementCopy setActivatedDirectTouchThatRequiredActivation:{-[VOTElement activatedDirectTouchThatRequiredActivation](self, "activatedDirectTouchThatRequiredActivation")}];
  elementForGesturedTextInput = self->_elementForGesturedTextInput;
  if (elementForGesturedTextInput != self)
  {
    copyWithCache = [(VOTElement *)elementForGesturedTextInput copyWithCache];
    [elementCopy setElementForGesturedTextInput:copyWithCache];
  }
}

- (BOOL)isAlive
{
  [(UIElementProtocol *)self->_uiElement updateCache:2088];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2088];
}

- (BOOL)isValidForApplication:(id)application
{
  uiElement = self->_uiElement;
  uiElement = [application uiElement];
  LOBYTE(uiElement) = [(UIElementProtocol *)uiElement isValidForApplication:uiElement];

  return uiElement;
}

- (void)setNavigationDirectionMode:(int64_t)mode
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithInteger:mode];
  [(UIElementProtocol *)uiElement setAXAttribute:3026 withNumber:v4];
}

- (CGPoint)centerPoint
{
  [(UIElementProtocol *)self->_uiElement pointWithAXAttribute:2007];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)visiblePoint
{
  [(UIElementProtocol *)self->_uiElement pointWithAXAttribute:2062];
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)containedIn:(unint64_t)in
{
  containerTypes = [(VOTElement *)self containerTypes];
  v5 = [NSNumber numberWithUnsignedLong:in];
  v6 = [containerTypes containsObject:v5];

  return v6;
}

- (id)containerTypes
{
  if (sub_100050834())
  {
    v3 = [(UIElementProtocol *)self->_uiElement arrayWithAXAttribute:2145];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (unint64_t)containerType
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2187];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)formattedDatetime
{
  v2 = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:2170];
  if (v2)
  {
    v3 = +[SCRCWebDateTimeParser sharedInstance];
    v4 = [v3 spokenStringForDateTimeAttribute:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)supportedLanguageIfNecessary
{
  systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];

  if (systemSpokenLanguage)
  {
    v4 = objc_getAssociatedObject(self, &unk_1001FEA58);
    v5 = v4;
    if (v4)
    {
      if ([v4 length])
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
    }

    else
    {
      v8 = [(UIElementProtocol *)self->_uiElement arrayWithAXAttribute:3014];
      if ([v8 count])
      {
        systemSpokenLanguage2 = [VOTSharedWorkspace systemSpokenLanguage];
        lowercaseString = [systemSpokenLanguage2 lowercaseString];

        if ([lowercaseString length])
        {
          v11 = [lowercaseString rangeOfString:@"-"];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [lowercaseString substringToIndex:v11];

            lowercaseString = v12;
          }

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = v8;
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            while (2)
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v23 + 1) + 8 * i);
                v19 = AXLanguageConvertToCanonicalForm();
                if (!v19)
                {
                  v19 = v18;
                }

                v20 = [v19 hasPrefix:{lowercaseString, v23}];

                if (v20)
                {
                  v7 = 0;
                  goto LABEL_26;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }

        v13 = [v8 objectAtIndex:{0, v23}];
        v7 = AXLanguageConvertToCanonicalForm();
LABEL_26:
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v21 = v7;
      }

      else
      {
        v21 = &stru_1001CBF90;
      }

      objc_setAssociatedObject(self, &unk_1001FEA58, v21, 1);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)frame
{
  [(UIElementProtocol *)self->_uiElement rectWithAXAttribute:2003];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)visibleFrame
{
  [(UIElementProtocol *)self->_uiElement rectWithAXAttribute:2057];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (unsigned)displayId
{
  if ([(VOTElement *)self cachedDisplayId])
  {

    return [(VOTElement *)self cachedDisplayId];
  }

  else
  {
    v4 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2123];
    unsignedIntValue = [v4 unsignedIntValue];

    if (!unsignedIntValue)
    {
      immediateRemoteParent = [(VOTElement *)self immediateRemoteParent];
      v7 = immediateRemoteParent;
      if (immediateRemoteParent)
      {
        uiElement = [immediateRemoteParent uiElement];
        v9 = [uiElement numberWithAXAttribute:2123];
        unsignedIntValue = [v9 unsignedIntValue];
      }

      else
      {
        unsignedIntValue = 0;
      }
    }

    [(VOTElement *)self setCachedDisplayId:unsignedIntValue];
    return unsignedIntValue;
  }
}

- (unsigned)windowContextId
{
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2021];
  unsignedIntValue = [v3 unsignedIntValue];

  if (!unsignedIntValue)
  {
    immediateRemoteParent = [(VOTElement *)self immediateRemoteParent];
    v6 = immediateRemoteParent;
    if (immediateRemoteParent)
    {
      uiElement = [immediateRemoteParent uiElement];
      v8 = [uiElement numberWithAXAttribute:2021];
      unsignedIntValue = [v8 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }
  }

  return unsignedIntValue;
}

- (unsigned)windowContextIdForPress
{
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2021];
  unsignedIntValue = [v3 unsignedIntValue];

  if (unsignedIntValue && ![(UIElementProtocol *)self->_uiElement BOOLWithAXAttribute:2224])
  {
    return unsignedIntValue;
  }

  return [(VOTElement *)self windowContextIdImmediateRemoteParent:unsignedIntValue];
}

- (unsigned)windowContextIdImmediateRemoteParent:(unsigned int)parent
{
  immediateRemoteParent = [(VOTElement *)self immediateRemoteParent];
  v5 = immediateRemoteParent;
  if (immediateRemoteParent)
  {
    uiElement = [immediateRemoteParent uiElement];
    v7 = [uiElement numberWithAXAttribute:2021];
    parent = [v7 unsignedIntValue];
  }

  return parent;
}

- (id)fbSceneIdentifier
{
  v3 = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:2721];
  if (!v3)
  {
    immediateRemoteParent = [(VOTElement *)self immediateRemoteParent];
    v5 = immediateRemoteParent;
    if (immediateRemoteParent)
    {
      uiElement = [immediateRemoteParent uiElement];
      v3 = [uiElement stringWithAXAttribute:2721];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (int64_t)expandedStatus
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2114];
  intValue = [v2 intValue];

  return intValue;
}

- (unint64_t)rowCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2121];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)columnCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2122];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)ariaRowCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2119];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)ariaColumnCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2120];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)ariaRowIndex
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2117];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)ariaColumnIndex
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2118];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (CGRect)textCursorFrame
{
  [(UIElementProtocol *)self->_uiElement updateCache:2050];
  uiElement = self->_uiElement;

  [(UIElementProtocol *)uiElement rectWithAXAttribute:2050];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (BOOL)keyboardKeyAllowsTouchTyping
{
  if ([(VOTElement *)self doesHaveTraits:kAXKeyboardKeyTrait]&& ![(VOTElement *)self doesHaveTraits:kAXButtonTrait])
  {
    return 1;
  }

  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2059];
}

- (CGRect)frameForDirectInteraction
{
  [(UIElementProtocol *)self->_uiElement rectWithAXAttribute:2130];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)delayBeforeUpdatingOnActivation
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2068];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)opaqueParent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10001532C;
  v9 = sub_10001533C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015344;
  v4[3] = &unk_1001C79A8;
  v4[4] = &v5;
  [(VOTElement *)self _iterateSelfAndRemoteParentsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)outermostLocalOpaqueParent
{
  localOpaqueParent = [(VOTElement *)self localOpaqueParent];
  if (localOpaqueParent)
  {
    localOpaqueParent2 = localOpaqueParent;
    v4 = 0;
    do
    {
      v5 = localOpaqueParent2;

      localOpaqueParent2 = [v5 localOpaqueParent];

      v4 = v5;
    }

    while (localOpaqueParent2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)notificationCount
{
  [(UIElementProtocol *)self->_uiElement updateCache:2192];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2192];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)notificationSummary:(unint64_t)summary
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    if (summary)
    {
      summary = [NSString stringWithFormat:@"%lu summaries", summary];
    }

    else
    {
      summary = @"all summaries";
    }
  }

  else
  {
    summary = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:95238 parameter:[NSNumber numberWithUnsignedInteger:summary]];
  }

  return summary;
}

- (CGRect)gesturePracticeRegion
{
  [(UIElementProtocol *)self->_uiElement updateCache:9000];
  uiElement = self->_uiElement;

  [(UIElementProtocol *)uiElement rectWithAXAttribute:9000];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)valueWithUpdate:(BOOL)update
{
  if (update && [(VOTElement *)self doesHaveTraits:kAXIsEditingTrait | kAXUpdatesFrequentlyTrait | kAXAdjustableTrait])
  {
    [(VOTElement *)self updateValue];
  }

  v4 = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:2006];
  if ([v4 isAXAttributedString] && objc_msgSend(v4, "hasAttribute:", UIAccessibilityTokenReplaceWithWiFiSSID))
  {
    v5 = [v4 copy];
    v6 = sub_1000529F4();
    v7 = v6;
    v8 = &stru_1001CBF90;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100015798;
    v14[3] = &unk_1001C79D0;
    v10 = v5;
    v15 = v10;
    v17 = v18;
    v11 = v9;
    v16 = v11;
    [v4 enumerateAttributesUsingBlock:v14];
    v12 = v10;

    _Block_object_dispose(v18, 8);
    v4 = v12;
  }

  return v4;
}

- (id)itemChooserName
{
  v3 = [objc_allocWithZone(NSMutableString) init];
  label = [(VOTElement *)self label];
  value = [(VOTElement *)self value];
  if ([label length])
  {
    [v3 appendString:label];
  }

  if ([value length])
  {
    if ([v3 length])
    {
      [v3 appendString:{@", "}];
    }

    if (![(VOTElement *)self doesHaveTraits:kAXToggleTrait])
    {
      [v3 appendString:value];
      goto LABEL_15;
    }

    if ([value isEqualToString:@"1"])
    {
      v6 = off_1001FDDD0;
      v7 = @"element.nonweb.on.text";
      v8 = @"on";
    }

    else if ([value isEqualToString:@"0"])
    {
      v6 = off_1001FDDD0;
      v7 = @"element.nonweb.off.text";
      v8 = @"off";
    }

    else
    {
      if (![value isEqualToString:@"2"])
      {
        goto LABEL_15;
      }

      v6 = off_1001FDDD0;
      v7 = @"element.mixed.text";
      v8 = @"mixed";
    }

    v9 = sub_1000511CC(v6, v7, v8);
    [v3 appendString:v9];
  }

LABEL_15:

  return v3;
}

- (id)originalLabel
{
  if ([(VOTElement *)self doesHaveTraits:kAXUpdatesFrequentlyTrait])
  {
    [(VOTElement *)self updateLabel];
  }

  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:2001];
}

- (id)urlLabel
{
  v3 = [(VOTElement *)self url];
  path = [v3 path];
  lastPathComponent = [path lastPathComponent];

  if ([(VOTElement *)self doesHaveTraits:kAXButtonTrait | kAXImageTrait])
  {
    scheme = [v3 scheme];
    v7 = [scheme isEqualToString:@"cid"];

    if (v7)
    {
      application = [(VOTElement *)self application];
      isMail = [application isMail];

      if (isMail)
      {
        v10 = sub_1000511CC(off_1001FDDD0, @"attachment", 0);
        application2 = [(VOTElement *)self application];
        resourceSpecifier = [v3 resourceSpecifier];
        v13 = [application2 attachmentFilenameForCID:resourceSpecifier];

        if ([v13 length])
        {
          v21 = v10;
          v22 = @"__AXStringForVariablesSentinel";
          v14 = __AXStringForVariables();

          lastPathComponent = v14;
        }
      }

      if (![lastPathComponent length])
      {
        resourceSpecifier2 = [v3 resourceSpecifier];
        lastPathComponent2 = [resourceSpecifier2 lastPathComponent];

        v17 = sub_1000511CC(off_1001FDDD0, @"attachment", 0);
        lastPathComponent = [NSString stringWithFormat:@"%@, %@", v17, lastPathComponent2];
      }
    }
  }

  v18 = [lastPathComponent stringByReplacingOccurrencesOfString:@"_" withString:&stru_1001CBF90];

  v19 = [v18 stringByReplacingOccurrencesOfString:@"-" withString:@" "];

  return v19;
}

- (NSString)userDefinedLabel
{
  v3 = objc_getAssociatedObject(self, @"UserDefinedLabel");
  if (v3)
  {
    v4 = v3;
    v5 = +[NSNull null];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = +[VOTElementLabelCache sharedManager];
    uniqueIdentification = [(VOTElement *)self uniqueIdentification];
    v4 = [v8 userLabelForIdentification:uniqueIdentification];

    if (v4)
    {
      [(VOTElement *)self setUserDefinedLabel:v4];
    }

    else
    {
      v10 = +[NSNull null];
      [(VOTElement *)self setUserDefinedLabel:v10];

      v4 = 0;
    }
  }

  v7 = v4;
  v4 = v7;
LABEL_8:

  return v7;
}

- (BOOL)isFirstItemInList
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA59);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsFirstItemInList:(BOOL)list
{
  v4 = [NSNumber numberWithBool:list];
  objc_setAssociatedObject(self, &unk_1001FEA59, v4, 1);
}

- (BOOL)isLastItemInList
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5A);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsLastItemInList:(BOOL)list
{
  v4 = [NSNumber numberWithBool:list];
  objc_setAssociatedObject(self, &unk_1001FEA5A, v4, 1);
}

- (BOOL)isFirstItemInTable
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5B);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsFirstItemInTable:(BOOL)table
{
  v4 = [NSNumber numberWithBool:table];
  objc_setAssociatedObject(self, &unk_1001FEA5B, v4, 1);
}

- (BOOL)isFirstItemInLandmark
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5C);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsFirstItemInLandmark:(BOOL)landmark
{
  v4 = [NSNumber numberWithBool:landmark];
  objc_setAssociatedObject(self, &unk_1001FEA5C, v4, 1);
}

- (BOOL)isFirstItemInFieldset
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5D);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsFirstItemInFieldset:(BOOL)fieldset
{
  v4 = [NSNumber numberWithBool:fieldset];
  objc_setAssociatedObject(self, &unk_1001FEA5D, v4, 1);
}

- (BOOL)isFirstItemInTree
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5E);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsFirstItemInTree:(BOOL)tree
{
  v4 = [NSNumber numberWithBool:tree];
  objc_setAssociatedObject(self, &unk_1001FEA5E, v4, 1);
}

- (NSString)label
{
  userDefinedLabel = [(VOTElement *)self userDefinedLabel];
  v4 = userDefinedLabel;
  if (userDefinedLabel)
  {
    v5 = userDefinedLabel;
  }

  else
  {
    definedLabel = [(VOTElement *)self definedLabel];
    v7 = definedLabel;
    if (definedLabel)
    {
      v5 = definedLabel;
    }

    else
    {
      originalLabel = [(VOTElement *)self originalLabel];
      if (![originalLabel length] && -[VOTElement includeURLLabelInLabel](self, "includeURLLabelInLabel"))
      {
        urlLabel = [(VOTElement *)self urlLabel];

        originalLabel = urlLabel;
      }

      if ([originalLabel isAXAttributedString] && objc_msgSend(originalLabel, "hasAttribute:", UIAccessibilityTokenReplaceWithActiveActivity))
      {
        [qword_1001FEA10 updateFocusActiveActivityDisplayName];
        v10 = +[VOTElement springBoardApplication];
        focusModeActivityName = [v10 focusModeActivityName];

        if ([focusModeActivityName length])
        {
          v21[0] = 0;
          v21[1] = v21;
          v21[2] = 0x2020000000;
          v21[3] = 0;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100016468;
          v17[3] = &unk_1001C79D0;
          v12 = [originalLabel copy];
          v18 = v12;
          v20 = v21;
          v19 = focusModeActivityName;
          [originalLabel enumerateAttributesUsingBlock:v17];
          v13 = v12;

          _Block_object_dispose(v21, 8);
          originalLabel = v13;
        }
      }

      if ([originalLabel length] || !-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXAllowsDirectInteractionTrait))
      {
        v5 = originalLabel;
      }

      else
      {
        v14 = off_1001FDDD0;
        selectedLanguage = [VOTSharedWorkspace selectedLanguage];
        v5 = sub_1000516CC(v14, @"default.direct.interact.label", 0, selectedLanguage);
      }
    }
  }

  return v5;
}

- (BOOL)isTouchContainer
{
  v3 = sub_100050834();
  if (v3)
  {
    traits = [(VOTElement *)self traits];
    if ((kAXTouchContainerTrait & traits) != 0)
    {
      if (AXIsInternalInstall())
      {
        v5 = VOTLogElement();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          sub_1001284AC(self, v5);
        }
      }

      goto LABEL_8;
    }

    if ([(VOTElement *)self containerType]== 256)
    {
LABEL_8:
      LOBYTE(v3) = 1;
      return v3;
    }

    LOBYTE(v3) = [(VOTElement *)self containerType]== 0x2000;
  }

  return v3;
}

- (BOOL)isAccessibleElement
{
  v3 = [(UIElementProtocol *)self->_uiElement BOOLWithAXAttribute:2016];
  v4 = ![(VOTElement *)self isHandUI];
  if ((v4 & 1) != 0 || (v3 & 1) == 0)
  {
    return v4 & v3;
  }

  return [(VOTElement *)self isVisible];
}

- (unsigned)mediaAnalysisOptions
{
  [(UIElementProtocol *)self->_uiElement updateCache:2701];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2701];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (CGRect)mediaAnalysisFrame
{
  [(UIElementProtocol *)self->_uiElement updateCache:2709];
  uiElement = self->_uiElement;

  [(UIElementProtocol *)uiElement rectWithAXAttribute:2709];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)braille2DRenderRegion
{
  [(UIElementProtocol *)self->_uiElement rectWithAXAttribute:3058];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)brailleMap
{
  v2 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2319];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [NSKeyedUnarchiver secureUnarchiveData:v2 withExpectedClass:objc_opt_class() otherAllowedClasses:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)photoLibraryURL
{
  v2 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2720];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)elementForParameterizedAttribute:(int64_t)attribute parameter:(id)parameter
{
  v4 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:attribute parameter:parameter];
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == AXUIElementGetTypeID())
    {
      v7 = [VOTElement _elementWithAXUIElementRef:v5];
LABEL_6:
      v8 = v7;
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)arrayForParameterizedAttribute:(int64_t)attribute parameter:(id)parameter
{
  v4 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:attribute parameter:parameter];
  v5 = v4;
  if (v4 && (v6 = CFGetTypeID(v4), v6 == CFArrayGetTypeID()))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stringForParameterizedAttribute:(int64_t)attribute parameter:(id)parameter
{
  v4 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:attribute parameter:parameter];
  v5 = v4;
  if (v4 && (v6 = CFGetTypeID(v4), v6 == CFStringGetTypeID()))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)focusedApplications
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    if (qword_1001FEA60 != -1)
    {
      sub_100128570();
    }

    v6 = qword_1001FEA68;
    v3 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    uiElement = [(VOTElement *)self uiElement];
    [uiElement updateCache:1102];

    v3 = [(VOTElement *)self elementsForAttribute:1102];
  }

  return v3;
}

- (float)activationDelay
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2052];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)opaqueElementInDirection:(int64_t)direction searchType:(int64_t)type range:(_NSRange *)range peeking:(BOOL)peeking startOpaqueElement:(id)element
{
  peekingCopy = peeking;
  elementCopy = element;
  if (range)
  {
    location = range->location;
    length = range->length;
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFLL;
  }

  v14 = [NSValue valueWithRange:location, length];
  v28 = peekingCopy;
  typeCopy = type;
  if (!peekingCopy)
  {
    v16 = [NSNumber numberWithLong:direction];
    v30[0] = v16;
    v17 = [NSNumber numberWithLong:type];
    v30[1] = v17;
    v30[2] = v14;
    v30[3] = @"UIAccessibilityNotificationVoiceOverIdentifier";
    v30[4] = &__kCFBooleanTrue;
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [VOTSharedWorkspace navigationStyleHonorsGroups]);
    v30[5] = v18;
    uiElement = [NSArray arrayWithObjects:v30 count:6];
    v22 = 95225;
    selfCopy2 = self;
LABEL_9:
    type = [(VOTElement *)selfCopy2 elementForParameterizedAttribute:v22 parameter:uiElement, type];
    goto LABEL_10;
  }

  v15 = [NSNumber numberWithLong:direction];
  v16 = v15;
  if (!elementCopy)
  {
    v32[0] = v15;
    v17 = [NSNumber numberWithLong:type];
    v32[1] = v17;
    v32[2] = v14;
    v32[3] = @"UIAccessibilityNotificationVoiceOverIdentifier";
    v32[4] = &__kCFBooleanFalse;
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [VOTSharedWorkspace navigationStyleHonorsGroups]);
    v32[5] = v18;
    uiElement = [NSArray arrayWithObjects:v32 count:6];
    selfCopy2 = self;
    v22 = 92517;
    goto LABEL_9;
  }

  v31[0] = v15;
  v17 = [NSNumber numberWithLong:type];
  v31[1] = v17;
  v31[2] = v14;
  v31[3] = @"UIAccessibilityNotificationVoiceOverIdentifier";
  v31[4] = &__kCFBooleanFalse;
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [VOTSharedWorkspace navigationStyleHonorsGroups]);
  v31[5] = v18;
  uiElement = [elementCopy uiElement];
  v31[6] = [uiElement axElement];
  v20 = [NSArray arrayWithObjects:v31 count:7];
  type = [(VOTElement *)self elementForParameterizedAttribute:92517 parameter:v20];

LABEL_10:
  if ([type isRemoteElement])
  {
    v24 = [type opaqueElementInDirection:direction searchType:typeCopy range:range peeking:v28 startOpaqueElement:0];

    type = v24;
    if (!v24)
    {
      uiElement2 = [0 uiElement];
      type = -[VOTElement opaqueElementInDirection:searchType:range:peeking:startOpaqueElement:](self, "opaqueElementInDirection:searchType:range:peeking:startOpaqueElement:", direction, typeCopy, range, v28, [uiElement2 axElement]);
    }
  }

  return type;
}

- (unint64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  v5 = [(VOTElement *)self elementsForAttribute:5001];
  v6 = [v5 indexOfObject:elementCopy];

  return v6;
}

- (id)_elementForAttribute:(int64_t)attribute shouldUpdateCache:(BOOL)cache shouldFetchAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  if (cache)
  {
    [(UIElementProtocol *)self->_uiElement updateCache:attribute];
  }

  v8 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:attribute];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    goto LABEL_10;
  }

  objc_opt_class();
  axElement = v8;
  if (objc_opt_isKindOfClass())
  {
    axElement = [v8 axElement];
  }

  if (axElement)
  {
    if (![axElement conformsToProtocol:&OBJC_PROTOCOL___UIElementProtocol])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (attributesCopy)
        {
          [AXUIElement uiElementWithAXElement:axElement];
        }

        else
        {
          [AXUIElement uiElementWithAXElement:axElement cache:0];
        }
        v13 = ;
        v12 = [VOTElement elementWithUIElement:v13];

        goto LABEL_19;
      }

      v11 = axElement;
      goto LABEL_11;
    }

    v9 = axElement;
LABEL_10:
    v11 = [VOTElement elementWithUIElement:v9];
LABEL_11:
    v12 = v11;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)elementsForAttribute:(int64_t)attribute withParameter:(id)parameter
{
  v4 = [(UIElementProtocol *)self->_uiElement uiElementsWithAttribute:attribute parameter:parameter];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
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
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = [VOTElement elementWithUIElement:v11, v15];
        }

        v13 = v12;
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (__AXUIElement)touchContainerParentAXElement
{
  if (!sub_100050834())
  {
    return 0;
  }

  [(UIElementProtocol *)self->_uiElement updateCache:2202];
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2202];
  if (v3)
  {
    v4 = v3;
    goto LABEL_5;
  }

  remoteParent = [(VOTElement *)self remoteParent];
  uiElement = [remoteParent uiElement];
  v4 = [uiElement objectWithAXAttribute:2012];

  if (!v4)
  {
    return 0;
  }

LABEL_5:
  v7 = CFGetTypeID(v4);
  if (v7 == AXUIElementGetTypeID())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (__AXUIElement)touchContainerAXElement
{
  if (sub_100050834())
  {
    containerTypes = [(VOTElement *)self containerTypes];
    v4 = &off_1001D9A58;
    if (([containerTypes containsObject:&off_1001D9A58] & 1) == 0 && (v4 = &off_1001D9A70, (objc_msgSend(containerTypes, "containsObject:", &off_1001D9A70) & 1) == 0) && (v4 = &off_1001D9A88, (objc_msgSend(containerTypes, "containsObject:", &off_1001D9A88) & 1) == 0) && (v4 = &off_1001D9AA0, (objc_msgSend(containerTypes, "containsObject:", &off_1001D9AA0) & 1) == 0) && (v4 = &off_1001D9AB8, (objc_msgSend(containerTypes, "containsObject:", &off_1001D9AB8) & 1) == 0) && (v4 = &off_1001D9AD0, (objc_msgSend(containerTypes, "containsObject:", &off_1001D9AD0) & 1) == 0) && (v4 = &off_1001D9AE8, !objc_msgSend(containerTypes, "containsObject:", &off_1001D9AE8)) || (v5 = -[UIElementProtocol objectWithAXAttribute:parameter:](self->_uiElement, "objectWithAXAttribute:parameter:", 92515, v4)) == 0 || (axElement = v5, v7 = CFGetTypeID(v5), v7 != AXUIElementGetTypeID()))
    {
      v8 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2012];
      if (v8)
      {
        axElement = v8;
LABEL_18:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          axElement = [axElement axElement];
        }

        v11 = CFGetTypeID(axElement);
        if (v11 != AXUIElementGetTypeID())
        {
          axElement = 0;
        }

        goto LABEL_22;
      }

      if ([(VOTElement *)self remoteParentIsViewHost])
      {
        remoteParent = [(VOTElement *)self remoteParent];
      }

      else
      {
        remoteParent = 0;
      }

      uiElement = [remoteParent uiElement];
      axElement = [uiElement objectWithAXAttribute:2012];

      if (axElement)
      {
        goto LABEL_18;
      }
    }

LABEL_22:

    return axElement;
  }

  return 0;
}

- (id)touchContainerParent
{
  if (sub_100050834())
  {
    if (!_AXSInUnitTestMode() || ([(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2202], v3 = objc_claimAutoreleasedReturnValue(), [VOTElement elementWithUIElement:v3], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
    {
      v5 = [AXUIElement uiElementWithAXElement:[(VOTElement *)self touchContainerParentAXElement]];
      v4 = [VOTElement elementWithUIElement:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)touchContainer
{
  if (sub_100050834())
  {
    if (!_AXSInUnitTestMode() || ([(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2012], v3 = objc_claimAutoreleasedReturnValue(), [VOTElement elementWithUIElement:v3], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
    {
      v5 = [AXUIElement uiElementWithAXElement:[(VOTElement *)self touchContainerAXElement]];
      v4 = [VOTElement elementWithUIElement:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)labeledTouchContainer
{
  touchContainer = [(VOTElement *)self touchContainer];
  if (touchContainer)
  {
    do
    {
      label = [touchContainer label];

      if (label)
      {
        break;
      }

      touchContainerParent = [touchContainer touchContainerParent];

      touchContainer = touchContainerParent;
    }

    while (touchContainerParent);
  }

  return touchContainer;
}

- (id)nextContainer
{
  v3 = [(VOTElement *)self elementForAttribute:2014];
  if (!v3)
  {
    remoteParent = [(VOTElement *)self remoteParent];
    v3 = [remoteParent elementForAttribute:2014];
  }

  return v3;
}

- (id)previousContainer
{
  v3 = [(VOTElement *)self elementForAttribute:2015];
  if (!v3)
  {
    remoteParent = [(VOTElement *)self remoteParent];
    v3 = [remoteParent elementForAttribute:2015];
  }

  return v3;
}

- (VOTElement)previousGuideElement
{
  v3 = [(VOTElement *)self elementForAttribute:2154];
  if (!v3)
  {
    remoteParent = [(VOTElement *)self remoteParent];
    v3 = [remoteParent elementForAttribute:2154];
  }

  return v3;
}

- (VOTElement)nextGuideElement
{
  v3 = [(VOTElement *)self elementForAttribute:2155];
  if (!v3)
  {
    remoteParent = [(VOTElement *)self remoteParent];
    v3 = [remoteParent elementForAttribute:2155];
  }

  return v3;
}

- (NSString)guideElementHeaderText
{
  [(UIElementProtocol *)self->_uiElement updateCache:2169];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:2169];
}

- (id)ancestryForTraits:(unint64_t)traits
{
  v4 = [NSNumber numberWithUnsignedLong:traits];
  v5 = [(VOTElement *)self elementForParameterizedAttribute:92515 parameter:v4];

  return v5;
}

- (BOOL)isPressed
{
  [(UIElementProtocol *)self->_uiElement updateCache:2111];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2111];
}

- (BOOL)shouldSpeakHelpInGestureArea
{
  v3 = [(VOTElement *)self doesHaveTraits:kAXGesturePracticeRegionTrait];
  if (v3)
  {
    LOBYTE(v3) = ![(VOTElement *)self doesHaveTraits:kAXGestureHandlerRegionTrait];
  }

  return v3;
}

- (id)instructions
{
  if ([(VOTElement *)self overridesVoiceOverInstructions]|| (v3 = [(VOTElement *)self traits], (kAXNotEnabledTrait & v3) != 0))
  {
    v4 = 0;
    goto LABEL_4;
  }

  v6 = v3;
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  if ((kAXMathEquationTrait & v6) != 0 && [(VOTElement *)self canExpandMathEquation])
  {
    brailleInputActive = [VOTSharedWorkspace brailleInputActive];
    v9 = off_1001FDDD8;
    if (brailleInputActive)
    {
      v10 = @"mathequation.instructions.bsi.command";
    }

    else
    {
      v10 = @"mathequation.instructions";
    }
  }

  else
  {
    if ((kAXToggleTrait & v6) != 0 && (kAXRadioButtonTrait & v6) == 0)
    {
      brailleInputActive2 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (brailleInputActive2)
      {
        v10 = @"switch.instructions.bsi.command";
      }

      else
      {
        v10 = @"switch.instructions";
      }

      goto LABEL_32;
    }

    if ((kAXTextEntryTrait & v6) != 0 && (kAXStaticTextTrait & v6) == 0 && ((kAXIsEditingTrait & v6) == 0 || [(VOTElement *)self shouldIgnoreTextEditingTrait]))
    {
      brailleInputActive3 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (brailleInputActive3)
      {
        v10 = @"textview.instructions.bsi.command";
      }

      else
      {
        v10 = @"textview.instructions";
      }

      goto LABEL_32;
    }

    if (((kAXPickerElementTrait | kAXAdjustableTrait) & v6) != 0)
    {
      brailleInputActive4 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (brailleInputActive4)
      {
        v10 = @"adjustable.instructions.bsi.command";
      }

      else
      {
        v10 = @"adjustable.instructions";
      }
    }

    else if ((kAXTableIndexTrait & v6) != 0)
    {
      v9 = off_1001FDDD8;
      v10 = @"table.index.instructions";
    }

    else if ((kAXDraggableTrait & v6) != 0)
    {
      v9 = off_1001FDDD8;
      v10 = @"draggable.instructions";
    }

    else if ((kAXPopupButtonTrait & v6) != 0)
    {
      brailleInputActive5 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (brailleInputActive5)
      {
        v10 = @"popupbutton.instructions.bsi.command";
      }

      else
      {
        v10 = @"popupbutton.instructions";
      }
    }

    else if ((kAXWebInteractiveVideoTrait & v6) != 0)
    {
      brailleInputActive6 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (brailleInputActive6)
      {
        v10 = @"web.interactive.video.instructions.bsi.command";
      }

      else
      {
        v10 = @"web.interactive.video.instructions";
      }
    }

    else if ((kAXAllowsDirectInteractionTrait & v6) != 0)
    {
      if (([(VOTElement *)self directTouchOptions]& 2) != 0 && ![(VOTElement *)self activatedDirectTouchThatRequiredActivation])
      {
        v9 = off_1001FDDD8;
        v10 = @"direct.interact.hint.requires.activation";
        v14 = 0;
        goto LABEL_33;
      }

      v9 = off_1001FDDD8;
      v10 = @"default.direct.interact.hint";
    }

    else
    {
      if (![(VOTElement *)self expandedStatus]|| ![(VOTElement *)self expandedStatusTogglesOnActivate])
      {
        goto LABEL_53;
      }

      expandedStatus = [(VOTElement *)self expandedStatus];
      if (expandedStatus == 2)
      {
        brailleInputActive7 = [VOTSharedWorkspace brailleInputActive];
        v9 = off_1001FDDD8;
        if (brailleInputActive7)
        {
          v10 = @"expand.instructions.bsi.command";
        }

        else
        {
          v10 = @"expand.instructions";
        }

        goto LABEL_32;
      }

      if (expandedStatus != 1)
      {
LABEL_53:
        v4 = 0;
        goto LABEL_34;
      }

      brailleInputActive8 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (brailleInputActive8)
      {
        v10 = @"collapse.instructions.bsi.command";
      }

      else
      {
        v10 = @"collapse.instructions";
      }
    }
  }

LABEL_32:
  v14 = v10;
LABEL_33:
  v4 = sub_1000516CC(v9, v10, v14, selectedLanguage);
LABEL_34:

LABEL_4:

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uiElement = self->_uiElement;
    uiElement = [equalCopy uiElement];
    v7 = [(UIElementProtocol *)uiElement isEqual:uiElement];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dataDetectorURL:(CGPoint)l
{
  lCopy = l;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &lCopy);
  v5 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92513 parameter:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateCache
{
  if (!qword_1001FEA70)
  {
    v3 = objc_allocWithZone(NSArray);
    v4 = [NSNumber numberWithUnsignedInt:2003];
    v5 = [NSNumber numberWithUnsignedInt:2007];
    v6 = [NSNumber numberWithUnsignedInt:2001];
    v7 = [NSNumber numberWithUnsignedInt:2006];
    v8 = [NSNumber numberWithUnsignedInt:2004];
    v9 = [NSNumber numberWithUnsignedInt:2071];
    v10 = [v3 initWithObjects:{v4, v5, v6, v7, v8, v9, 0}];
    v11 = qword_1001FEA70;
    qword_1001FEA70 = v10;
  }

  uiElement = self->_uiElement;

  [(UIElementProtocol *)uiElement updateCacheWithAttributes:?];
}

- (id)remoteApplication
{
  cachedRemoteApplication = [(VOTElement *)self cachedRemoteApplication];

  if (!cachedRemoteApplication)
  {
    v4 = [(VOTElement *)self _elementForAttribute:2142 shouldUpdateCache:0 shouldFetchAttributes:0];
    [(VOTElement *)self setCachedRemoteApplication:v4];
  }

  return [(VOTElement *)self cachedRemoteApplication];
}

- (id)nextElement
{
  if (!-[VOTElement isAccessibilityOpaqueElementProvider](self, "isAccessibilityOpaqueElementProvider") || [VOTSharedWorkspace navigationStyleHonorsGroups] && -[VOTElement isAccessibleGroup](self, "isAccessibleGroup"))
  {
    v3 = [(VOTElement *)self elementsInDirection:1 withCount:1];
    lastObject = [v3 lastObject];
  }

  else
  {
    _AXAssert();
    lastObject = [(VOTElement *)self opaqueElementInDirection:1 searchType:0 range:0];
  }

  return lastObject;
}

- (id)previousElement
{
  if (!-[VOTElement isAccessibilityOpaqueElementProvider](self, "isAccessibilityOpaqueElementProvider") || [VOTSharedWorkspace navigationStyleHonorsGroups] && -[VOTElement isAccessibleGroup](self, "isAccessibleGroup"))
  {
    v3 = [(VOTElement *)self elementsInDirection:2 withCount:1];
    lastObject = [v3 lastObject];
  }

  else
  {
    _AXAssert();
    lastObject = [(VOTElement *)self opaqueElementInDirection:2 searchType:0 range:0];
  }

  return lastObject;
}

- (BOOL)supportsHeaderElementOutput
{
  if ([(VOTElement *)self doesHaveTraits:kAXKeyboardKeyTrait | kAXAutoCorrectCandidateTrait])
  {
    return 1;
  }

  return [(VOTElement *)self containedIn:2];
}

- (id)firstContainedElement
{
  selfCopy = self;
  v3 = 0;
  v4 = AXUIAccessibilityAssistiveTechnologyKey;
  v5 = AXUIAccessibilityIncludeRemoteElements;
  v6 = AXUIAccessibilityShouldAlwaysScrollKey;
  do
  {
    v7 = v3;
    v3 = selfCopy;

    v10[0] = v4;
    v10[1] = v5;
    v11[0] = @"UIAccessibilityNotificationVoiceOverIdentifier";
    v11[1] = &__kCFBooleanFalse;
    v10[2] = v6;
    v11[2] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
    selfCopy = [(VOTElement *)v3 elementForParameterizedAttribute:95230 parameter:v8];
  }

  while ([(VOTElement *)selfCopy isAccessibilityOpaqueElementProvider]&& ![(VOTElement *)v3 isEqual:selfCopy]);
  if ([(VOTElement *)selfCopy isAccessibilityOpaqueElementProvider])
  {
    _AXAssert();
  }

  return selfCopy;
}

- (unint64_t)groupedChildrenCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2220];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)groupedParent
{
  remoteParent = [(VOTElement *)self elementForAttribute:2184];
  if (!remoteParent)
  {
    remoteParent = [(VOTElement *)self remoteParent];
    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      v6 = [(VOTElement *)self isEqual:remoteParent2];

      if (v6)
      {
        remoteParent = 0;
      }

      else
      {
        remoteParent3 = [(VOTElement *)self remoteParent];
        remoteParent = [remoteParent3 groupedParent];
      }
    }
  }

  return remoteParent;
}

- (BOOL)elementIsDescendant:(id)descendant
{
  descendantCopy = descendant;
  v5 = descendantCopy;
  if (descendantCopy)
  {
    v6 = descendantCopy;
    while (([v6 isEqual:self] & 1) == 0)
    {
      directParent = [v6 directParent];

      v6 = directParent;
      if (!directParent)
      {
        goto LABEL_5;
      }
    }

    v8 = 1;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

- (id)_lastContainedElementIncludingRemotes:(BOOL)remotes
{
  remotesCopy = remotes;
  selfCopy = self;
  v5 = 0;
  v6 = AXUIAccessibilityAssistiveTechnologyKey;
  v7 = AXUIAccessibilityIncludeRemoteElements;
  v8 = AXUIAccessibilityShouldAlwaysScrollKey;
  do
  {
    v9 = v5;
    v5 = selfCopy;

    v14[0] = @"UIAccessibilityNotificationVoiceOverIdentifier";
    v13[0] = v6;
    v13[1] = v7;
    v10 = [NSNumber numberWithBool:remotesCopy];
    v13[2] = v8;
    v14[1] = v10;
    v14[2] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    selfCopy = [(VOTElement *)v5 elementForParameterizedAttribute:95231 parameter:v11];
  }

  while ([(VOTElement *)selfCopy isAccessibilityOpaqueElementProvider]&& ![(VOTElement *)v5 isEqual:selfCopy]);
  if ([(VOTElement *)selfCopy isAccessibilityOpaqueElementProvider])
  {
    _AXAssert();
  }

  return selfCopy;
}

- (id)lastContainedElement
{
  v3 = [(VOTElement *)self _lastContainedElementIncludingRemotes:1];
  v4 = v3;
  if (v3 && ([v3 uiElement], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "axElement"), _AXUIElementIDForElement(), v7 = v6, v5, v7 != 9999))
  {
    v8 = v4;
  }

  else
  {
    v8 = [(VOTElement *)self _lastContainedElementIncludingRemotes:0];
  }

  v9 = v8;

  return v9;
}

- (id)elementsInDirection:(int64_t)direction withCount:(unint64_t)count
{
  v6 = [VOTSharedWorkspace navigationStyle] == 1;
  v41[0] = AXUIAccessibilityHonorsGroupsKey;
  v7 = [NSNumber numberWithBool:v6];
  v42[0] = v7;
  v41[1] = AXUIAccessibilityElementCountKey;
  v8 = [NSNumber numberWithUnsignedInteger:count];
  v42[1] = v8;
  v41[2] = AXUIAccessibilityNavigationDirection;
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [VOTSharedWorkspace navigationDirection]);
  v42[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];

  v29 = v10;
  if (direction == 2)
  {
    selfCopy4 = self;
    v12 = [(UIElementProtocol *)self->_uiElement previousElementsWithParameters:v10, v10];
  }

  else
  {
    if (direction != 1)
    {
      v13 = 0;
      selfCopy4 = self;
      goto LABEL_7;
    }

    selfCopy4 = self;
    v12 = [(UIElementProtocol *)self->_uiElement nextElementsWithParameters:v10, v10];
  }

  v13 = v12;
LABEL_7:
  v34 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v13;
  v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v35)
  {
    goto LABEL_24;
  }

  v14 = *v37;
  v15 = &OBJC_IVAR___VOTElementFetcherSearchParameters__direction;
  v31 = *v37;
  do
  {
    for (i = 0; i != v35; i = i + 1)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v36 + 1) + 8 * i);
      v18 = [objc_allocWithZone((v15 + 546)) initWithUIElement:v17];
      window = [(VOTElement *)selfCopy4 window];
      isolatedWindow = [window isolatedWindow];
      if (!isolatedWindow)
      {

LABEL_21:
        [v34 addObject:v18];
        goto LABEL_22;
      }

      v21 = isolatedWindow;
      window2 = [(VOTElement *)selfCopy4 window];
      isolatedWindow2 = [window2 isolatedWindow];
      if (isolatedWindow2)
      {
        window3 = [(VOTElement *)selfCopy4 window];
        windowContextId = [window3 windowContextId];
        window4 = [v18 window];
        if (windowContextId == [window4 windowContextId])
        {
          v27 = 1;
        }

        else
        {
          v27 = [v17 BOOLWithAXAttribute:2238];
        }

        v14 = v31;
        selfCopy4 = self;
        v15 = &OBJC_IVAR___VOTElementFetcherSearchParameters__direction;
      }

      else
      {
        v27 = [v17 BOOLWithAXAttribute:2238];
      }

      if (v27)
      {
        goto LABEL_21;
      }

LABEL_22:
    }

    v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v35);
LABEL_24:

  return v34;
}

- (unint64_t)blockquoteLevel
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2157];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)roleDescriptionWithInteractOption:(int64_t)option language:(id)language
{
  languageCopy = language;
  roleDescription = [(VOTElement *)self roleDescription];
  if (![roleDescription length] && objc_msgSend(VOTSharedWorkspace, "navigationStyleHonorsGroups") && -[VOTElement isAccessibleGroup](self, "isAccessibleGroup"))
  {
    v8 = sub_1000516CC(off_1001FDDD0, @"group.role", 0, languageCopy);

    roleDescription = v8;
  }

  if ([roleDescription length])
  {
    if (option == 1)
    {
      v9 = @"InteractIn";
    }

    else
    {
      if (option != 2)
      {
        goto LABEL_11;
      }

      v9 = @"InteractOut";
    }

    v10 = sub_1000511CC(off_1001FDDD0, v9, 0);
    v11 = [NSString stringWithFormat:v10, roleDescription];

    roleDescription = v11;
  }

LABEL_11:

  return roleDescription;
}

- (_NSRange)textInputElementRange
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement rangeWithAXAttribute:2124];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)isEditableTextArea
{
  v3 = [(VOTElement *)self doesHaveTraits:kAXTextAreaTrait];
  if (v3)
  {
    LOBYTE(v3) = ![(VOTElement *)self doesHaveTraits:kAXStaticTextTrait];
  }

  return v3;
}

- (BOOL)brailleTextEntrySupported
{
  kAXIsEditingTrait = [(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait];
  if (kAXIsEditingTrait)
  {
    LOBYTE(kAXIsEditingTrait) = ![(VOTElement *)self shouldIgnoreTextEditingTrait];
  }

  return kAXIsEditingTrait;
}

- (BOOL)doesHaveTraitsForGesturedTextInput
{
  elementForGesturedTextInput = [(VOTElement *)self elementForGesturedTextInput];
  v3 = elementForGesturedTextInput != 0;

  return v3;
}

- (unint64_t)traits
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2004];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)shouldIgnoreTextEditingTrait
{
  if (![(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
  {
    LOBYTE(v3) = 0;
    goto LABEL_5;
  }

  v3 = ![(VOTElement *)self isKeyboardActiveOrAttached];
  remoteParent = [(VOTElement *)self remoteParent];

  if (!remoteParent)
  {
LABEL_5:
    v8 = 0;
    return v3 | v8;
  }

  application = [(VOTElement *)self application];
  firstResponderElementWithoutCache = [application firstResponderElementWithoutCache];
  v7 = [firstResponderElementWithoutCache isEqual:self];

  v8 = v7 ^ 1;
  return v3 | v8;
}

- (void)scrollToElementForDirectional:(int64_t)directional withCompletion:(id)completion
{
  v5 = [completion copy];
  selfCopy = self;
  v6 = v5;
  v7 = selfCopy;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)zoomInAtLocation:(CGPoint)location
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithPoint:location.x, location.y];
  [(UIElementProtocol *)uiElement performAXAction:2001 withValue:v4];
}

- (BOOL)isMapPOIItem
{
  mapFeatureType = [(VOTElement *)self mapFeatureType];
  if (mapFeatureType)
  {
    LOBYTE(mapFeatureType) = [(VOTElement *)self mapFeatureType]!= 1 && [(VOTElement *)self mapFeatureType]!= 2;
  }

  return mapFeatureType;
}

- (int64_t)mapFeatureType
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2048];
  intValue = [v2 intValue];

  return intValue;
}

- (id)mapDetailedInformationAtPoint:(CGPoint)point
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithPoint:point.x, point.y];

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:95219 parameter:v4];
}

- (BOOL)lastHitTestNearBorder
{
  [(UIElementProtocol *)self->_uiElement updateCache:2049];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2049];
}

- (float)distanceToOtherRoad:(CGPoint)road withDirection:(float)direction otherRoad:(id)otherRoad
{
  roadCopy = road;
  otherRoadCopy = otherRoad;
  v8 = AXValueCreate(kAXValueTypeCGPoint, &roadCopy);
  uiElement = self->_uiElement;
  *&v10 = direction;
  v11 = [NSNumber numberWithFloat:v10, *&roadCopy.x, *&roadCopy.y, v8];
  v18[1] = v11;
  uiElement = [otherRoadCopy uiElement];

  v18[2] = [uiElement axElement];
  v13 = [(UIElementProtocol *)uiElement objectWithAXAttribute:95220 parameter:[NSArray arrayWithObjects:v18 count:3]];

  if (v8)
  {
    CFRelease(v8);
  }

  objc_opt_class();
  v14 = -1.0;
  if (objc_opt_isKindOfClass())
  {
    [v13 floatValue];
    v14 = v15;
  }

  return v14;
}

- (float)distanceToEndOfRoad:(CGPoint)road withDirection:(float)direction
{
  valuePtr = road;
  v6 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  uiElement = self->_uiElement;
  v15[0] = v6;
  *&v8 = direction;
  v9 = [NSNumber numberWithFloat:v8];
  v15[1] = v9;
  v10 = [(UIElementProtocol *)uiElement objectWithAXAttribute:95220 parameter:[NSArray arrayWithObjects:v15 count:2]];

  if (v6)
  {
    CFRelease(v6);
  }

  objc_opt_class();
  v11 = -1.0;
  if (objc_opt_isKindOfClass())
  {
    [v10 floatValue];
    v11 = v12;
  }

  return v11;
}

- (id)upcomingRoadsAtPoint:(CGPoint)point withDirection:(float)direction
{
  valuePtr = point;
  v6 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  uiElement = self->_uiElement;
  v25[0] = v6;
  *&v8 = direction;
  v9 = [NSNumber numberWithFloat:v8];
  v25[1] = v9;
  v10 = [(UIElementProtocol *)uiElement uiElementsWithAttribute:95217 parameter:[NSArray arrayWithObjects:v25 count:2]];

  if (v6)
  {
    CFRelease(v6);
  }

  v11 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [VOTElement elementWithUIElement:*(*(&v19 + 1) + 8 * i), v19];
        [v11 axSafelyAddObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }

  return v11;
}

- (void)mapsExplorationRecordTouchpoint:(CGPoint)touchpoint
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithCGPoint:touchpoint.x, touchpoint.y];
  [(UIElementProtocol *)uiElement performAXAction:4023 withValue:v4];
}

- (void)mapsExplorationBeginFromCurrentElement:(BOOL)element
{
  if (element)
  {
    [(UIElementProtocol *)self->_uiElement performAXAction:4020];
  }
}

- (void)mapsExplorationContinueWithVertexIndex:(unint64_t)index
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithUnsignedInteger:index];
  [(UIElementProtocol *)uiElement performAXAction:4021 withValue:v4];
}

- (CGPoint)mapsExplorationCurrentLocation
{
  [(UIElementProtocol *)self->_uiElement pointWithAXAttribute:2502];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)mapsExplorationChangeVerbosity:(BOOL)verbosity
{
  uiElement = self->_uiElement;
  if (verbosity)
  {
    v4 = 2504;
  }

  else
  {
    v4 = 2505;
  }

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:v4];
}

- (BOOL)roadContainsTrackingPoint:(CGPoint)point
{
  pointCopy = point;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  v5 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:95218 parameter:v4];
  bOOLValue = [v5 BOOLValue];

  if (v4)
  {
    CFRelease(v4);
  }

  return bOOLValue;
}

- (void)zoomOutAtLocation:(CGPoint)location
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithPoint:location.x, location.y];
  [(UIElementProtocol *)uiElement performAXAction:2002 withValue:v4];
}

- (id)textOperations
{
  [(UIElementProtocol *)self->_uiElement updateCache:2010];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:2010];
}

- (void)performTextOperation:(id)operation
{
  operationCopy = operation;
  if ([operationCopy isEqualToString:kAXTextOperationActionPaste])
  {
    v5 = +[UIPasteboard generalPasteboard];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100019CD0;
    v6[3] = &unk_1001C7A40;
    v6[4] = self;
    [v5 _requestSecurePasteAuthenticationMessageWithContext:0x95DD33C9595B8B0ALL forClientVersionedPID:-[VOTElement versionedPID](self completionBlock:{"versionedPID"), v6}];
  }

  else
  {
    [(UIElementProtocol *)self->_uiElement performAXAction:2012 withValue:operationCopy];
  }
}

- (CGPoint)elementFrameLocation:(int)location
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  [(VOTElement *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = +[VOTElement systemWideElement];
  [v15 convertRect:-[VOTElement windowContextId](self fromContextId:{"windowContextId"), v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  deviceOrientation = [VOTSharedWorkspace deviceOrientation];
  if (deviceOrientation == 2)
  {
    if (location <= 2)
    {
      if (location == 1)
      {
        v46.origin.x = v17;
        v46.origin.y = v19;
        v46.size.width = v21;
        v46.size.height = v23;
        x = CGRectGetMidX(v46);
        v47.origin.x = v17;
        v47.origin.y = v19;
        v47.size.width = v21;
        v47.size.height = v23;
        MinY = CGRectGetMinY(v47);
        goto LABEL_41;
      }

      if (location == 2)
      {
        v35.origin.x = v17;
        v35.origin.y = v19;
        v35.size.width = v21;
        v35.size.height = v23;
        x = CGRectGetMidX(v35);
        v36.origin.x = v17;
        v36.origin.y = v19;
        v36.size.width = v21;
        v36.size.height = v23;
        MinY = CGRectGetMaxY(v36);
LABEL_41:
        y = MinY;
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    if (location == 3)
    {
LABEL_36:
      v43.origin.x = v17;
      v43.origin.y = v19;
      v43.size.width = v21;
      v43.size.height = v23;
      MaxX = CGRectGetMaxX(v43);
      v30 = -3.0;
      goto LABEL_37;
    }

    if (location != 4)
    {
      goto LABEL_19;
    }

LABEL_35:
    v42.origin.x = v17;
    v42.origin.y = v19;
    v42.size.width = v21;
    v42.size.height = v23;
    MaxX = CGRectGetMinX(v42);
    v30 = 3.0;
LABEL_37:
    x = MaxX + v30;
LABEL_40:
    v45.origin.x = v17;
    v45.origin.y = v19;
    v45.size.width = v21;
    v45.size.height = v23;
    MinY = CGRectGetMidY(v45);
    goto LABEL_41;
  }

  if (deviceOrientation == 4)
  {
    if (location <= 2)
    {
      if (location == 1)
      {
        goto LABEL_29;
      }

      if (location != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    if (location != 3)
    {
      if (location != 4)
      {
        goto LABEL_19;
      }

LABEL_32:
      v38.origin.x = v17;
      v38.origin.y = v19;
      v38.size.width = v21;
      v38.size.height = v23;
      x = CGRectGetMidX(v38);
      v39.origin.x = v17;
      v39.origin.y = v19;
      v39.size.width = v21;
      v39.size.height = v23;
      MaxY = CGRectGetMinY(v39);
      v28 = 3.0;
LABEL_34:
      y = MaxY + v28;
      goto LABEL_42;
    }

LABEL_33:
    v40.origin.x = v17;
    v40.origin.y = v19;
    v40.size.width = v21;
    v40.size.height = v23;
    x = CGRectGetMidX(v40);
    v41.origin.x = v17;
    v41.origin.y = v19;
    v41.size.width = v21;
    v41.size.height = v23;
    MaxY = CGRectGetMaxY(v41);
    v28 = -3.0;
    goto LABEL_34;
  }

  if (deviceOrientation != 3)
  {
    if (location > 2)
    {
      if (location != 3)
      {
        if (location != 4)
        {
          goto LABEL_19;
        }

        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (location != 1)
    {
      if (location != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (location <= 2)
  {
    if (location != 1)
    {
      if (location != 2)
      {
        goto LABEL_42;
      }

LABEL_29:
      v37.origin.x = v17;
      v37.origin.y = v19;
      v37.size.width = v21;
      v37.size.height = v23;
      MinX = CGRectGetMaxX(v37);
      goto LABEL_39;
    }

LABEL_38:
    v44.origin.x = v17;
    v44.origin.y = v19;
    v44.size.width = v21;
    v44.size.height = v23;
    MinX = CGRectGetMinX(v44);
    goto LABEL_39;
  }

  if (location == 3)
  {
    goto LABEL_32;
  }

  if (location == 4)
  {
    goto LABEL_33;
  }

LABEL_19:
  if (location == 5)
  {
    v34.origin.x = v17;
    v34.origin.y = v19;
    v34.size.width = v21;
    v34.size.height = v23;
    MinX = CGRectGetMidX(v34);
LABEL_39:
    x = MinX;
    goto LABEL_40;
  }

LABEL_42:
  v31 = x;
  v32 = y;
  result.y = v32;
  result.x = v31;
  return result;
}

- (BOOL)performEscape
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001A0FC;
  v4[3] = &unk_1001C79A8;
  v4[4] = &v5;
  [(VOTElement *)self _iterateSelfAndRemoteParentsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)findSearchResult:(BOOL)result withSearchText:(id)text
{
  v5 = &kCFBooleanFalse;
  if (result)
  {
    v5 = &kCFBooleanTrue;
  }

  v6 = [NSArray arrayWithObjects:*v5, text, 0];
  [(UIElementProtocol *)self->_uiElement performAXAction:2017 withValue:v6];
}

- (BOOL)supportsActivate
{
  if (([(UIElementProtocol *)self->_uiElement BOOLWithAXAttribute:2019]& 1) != 0)
  {
    return 1;
  }

  if (![(UIElementProtocol *)self->_uiElement BOOLWithAXAttribute:2101])
  {
    return 0;
  }

  remoteParent = [(VOTElement *)self remoteParent];
  v5 = remoteParent;
  if (remoteParent)
  {
    supportsActivate = [remoteParent supportsActivate];
  }

  else
  {
    supportsActivate = 0;
  }

  return supportsActivate;
}

- (BOOL)verifyElementExists:(CGPoint *)exists
{
  [(VOTElement *)self centerPoint];
  v6 = v5;
  v8 = v7;
  windowContextId = [(VOTElement *)self windowContextId];
  if (windowContextId)
  {
    v10 = +[VOTElement systemWideElement];
    [v10 convertPoint:windowContextId fromContextId:{v6, v8}];
    v6 = v11;
    v8 = v12;
  }

  v13 = 1.0;
  v14 = 1.0;
  if (v6 > 0.0)
  {
    v14 = v6;
    if (v6 >= *&xmmword_1001FF150)
    {
      v14 = *&xmmword_1001FF150 + -1.0;
    }
  }

  if (v8 > 0.0)
  {
    v13 = v8;
    if (v8 >= *(&xmmword_1001FF150 + 1))
    {
      v13 = *(&xmmword_1001FF150 + 1) + -1.0;
    }
  }

  if (windowContextId)
  {
    v15 = +[VOTElement systemWideElement];
    [v15 convertPoint:windowContextId toContextId:{v14, v13}];
    v17 = v16;
    v19 = v18;

    v20 = v14;
    v21 = v13;
    v13 = v19;
    v14 = v17;
  }

  else
  {
    v20 = v14;
    v21 = v13;
  }

  selfCopy = [objc_allocWithZone(VOTElement) initWithPosition:{v20, v21}];
  if (_AXSZoomTouchEnabled())
  {
    application = [(VOTElement *)selfCopy application];
    v24 = application;
    if (selfCopy)
    {
      if ([application isAccessibilitySystemUIServer])
      {
        application2 = [(VOTElement *)self application];
        v26 = [application2 isEqual:v24];

        if ((v26 & 1) == 0)
        {
          v27 = [VOTElement alloc];
          application3 = [(VOTElement *)self application];
          v29 = [(VOTElement *)v27 initWithPosition:application3 application:[(VOTElement *)self windowContextId] contextId:v20, v21];

          selfCopy = v29;
        }
      }
    }

    else
    {
      selfCopy = self;
    }
  }

  if (_AXSAssistiveTouchEnabled())
  {
    application4 = [(VOTElement *)selfCopy application];
    isAssistiveTouch = [application4 isAssistiveTouch];

    if (isAssistiveTouch)
    {
      if (!exists)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  if (![(VOTElement *)selfCopy isEqual:self])
  {
    [(VOTElement *)self elementFrameLocation:2];
    v14 = v33;
    v13 = v34;
    v35 = v34;
    v36 = v33;
    if (windowContextId)
    {
      v37 = +[VOTElement systemWideElement];
      [v37 convertPoint:windowContextId fromContextId:{v14, v13}];
      v36 = v38;
      v35 = v39;
    }

    v40 = [objc_allocWithZone(VOTElement) initWithPosition:{v36, v35}];

    if ([(VOTElement *)v40 isEqual:self])
    {
      v32 = 1;
      selfCopy = v40;
      if (!exists)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    [(VOTElement *)self elementFrameLocation:1];
    v14 = v41;
    v13 = v42;
    v43 = v42;
    v44 = v41;
    if (windowContextId)
    {
      v45 = +[VOTElement systemWideElement];
      [v45 convertPoint:windowContextId fromContextId:{v14, v13}];
      v44 = v46;
      v43 = v47;
    }

    selfCopy = [objc_allocWithZone(VOTElement) initWithPosition:{v44, v43}];

    if (![(VOTElement *)selfCopy isEqual:self])
    {
      [(VOTElement *)self visiblePoint];
      v14 = v48;
      v13 = v49;
      v50 = v49;
      v51 = v48;
      if (windowContextId)
      {
        v52 = +[VOTElement systemWideElement];
        [v52 convertPoint:windowContextId fromContextId:{v14, v13}];
        v51 = v53;
        v50 = v54;
      }

      v55 = [objc_allocWithZone(VOTElement) initWithPosition:{v51, v50}];

      v32 = [(VOTElement *)v55 isEqual:self];
      selfCopy = v55;
      if (!exists)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  v32 = 1;
  if (!exists)
  {
    goto LABEL_40;
  }

LABEL_37:
  if (v32)
  {
LABEL_38:
    exists->x = v14;
    exists->y = v13;
LABEL_39:
    LOBYTE(v32) = 1;
  }

LABEL_40:

  return v32;
}

- (id)resolvedEditingStyles
{
  [(UIElementProtocol *)self->_uiElement updateCache:2215];
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2215];
  v4 = __UIAccessibilitySafeClass();

  return v4;
}

- (BOOL)performTapAtPoint:(CGPoint)point withForce:(double)force playSound:(BOOL)sound
{
  y = point.y;
  x = point.x;
  if (sound)
  {
    v9 = +[VOTOutputManager outputManager];
    v10 = +[VOSOutputEvent DidActivateElement];
    [v9 sendEvent:v10];
  }

  v11 = +[VOTElement systemWideElement];
  [v11 convertPoint:-[VOTElement windowContextId](self toContextId:{"windowContextId"), x, y}];
  v13 = v12;
  v15 = v14;

  v16 = +[VOTElement systemWideElement];
  windowContextIdForPress = [(VOTElement *)self windowContextIdForPress];
  LODWORD(v18) = 1028443341;
  v19 = [v16 performSimpleTapAtPoint:windowContextIdForPress withForce:self withContextId:v13 withDelay:v15 forElement:{force, v18}];

  return v19;
}

- (void)performDoubleTap
{
  [(UIElementProtocol *)self->_uiElement updateCache:2079];
  if ([(VOTElement *)self supportsSecondaryActivate])
  {
    uiElement = self->_uiElement;

    [(UIElementProtocol *)uiElement performAXAction:2036];
  }
}

- (BOOL)activateIfSupported
{
  [(UIElementProtocol *)self->_uiElement updateCache:2019];
  if (![(VOTElement *)self supportsActivate])
  {
    return 0;
  }

  if ([(VOTElement *)self _attemptPerformActivateActionWithElement:self->_uiElement])
  {
    return 1;
  }

  if (![(UIElementProtocol *)self->_uiElement BOOLWithAXAttribute:2101])
  {
    return 0;
  }

  remoteParent = [(VOTElement *)self remoteParent];
  v5 = remoteParent;
  if (remoteParent && [remoteParent supportsActivate])
  {
    uiElement = [v5 uiElement];
    v3 = [(VOTElement *)self _attemptPerformActivateActionWithElement:uiElement];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)performSimpleTap:(BOOL)tap
{
  tapCopy = tap;
  v5 = VOTLogSimpleTap();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100128584();
  }

  if (AXDeviceIsPad())
  {
    application = [(VOTElement *)self application];
    isSpringBoard = [application isSpringBoard];

    if ((isSpringBoard & 1) == 0)
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }

  if (AXDeviceHasJindo() && ![(VOTElement *)self isInJindoWindow])
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  v8 = kAXWebContentTrait;
  if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait]&& [(VOTElement *)self isSafariScribbleActive]&& [(VOTElement *)self scribbleRotorActive])
  {
    application2 = [(VOTElement *)self application];
    performScribbleAction = [application2 performScribbleAction];

    return performScribbleAction;
  }

  if ([(VOTElement *)self doesHaveTraits:v8]&& [(VOTElement *)self isSafariScribbleActive])
  {
    return 0;
  }

  if (([(VOTElement *)self directTouchOptions]& 2) != 0 && ![(VOTElement *)self activatedDirectTouchThatRequiredActivation])
  {
    v12 = +[VOTOutputManager outputManager];
    v13 = +[VOSOutputEvent DidActivateElement];
    [v12 sendEvent:v13];

    v14 = sub_1000511CC(off_1001FDDD0, @"activated.direct.touch", 0);
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    v16 = sub_1000095FC(v14, 0, selectedLanguage);

    performScribbleAction = 1;
    [(VOTElement *)self setActivatedDirectTouchThatRequiredActivation:1];
    return performScribbleAction;
  }

  if ([(VOTElement *)self canExpandMathEquation])
  {
    [(VOTElement *)self expandMathEquation];
    return 0;
  }

  v11 = kAXTextEntryTrait;
  if ([(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | kAXNotEnabledTrait])
  {
    return 0;
  }

  if (![(VOTElement *)self activateIfSupported])
  {
    [(VOTElement *)self centerPoint];
    v27 = v26;
    v29 = v28;
    v80.x = v26;
    v80.y = v28;
    indexPathAsRange = [(VOTElement *)self indexPathAsRange];
    v32 = v31;
    v33 = VOTLogSimpleTap();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v84.x = v27;
      v84.y = v29;
      v72 = NSStringFromCGPoint(v84);
      v82.location = [(VOTElement *)self indexPathAsRange];
      v73 = NSStringFromRange(v82);
      *buf = 138412546;
      *&buf[4] = v72;
      *&buf[12] = 2112;
      *&buf[14] = v73;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Old center point(%@) %@", buf, 0x16u);
    }

    [(VOTElement *)self updateCenterPoint];
    [(UIElementProtocol *)self->_uiElement updateCache:2078];
    [(VOTElement *)self centerPoint];
    v35 = v34;
    v37 = v36;
    indexPathAsRange2 = [(VOTElement *)self indexPathAsRange];
    v40 = v39;
    v41 = VOTLogSimpleTap();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v85.x = v35;
      v85.y = v37;
      v74 = NSStringFromCGPoint(v85);
      v83.location = [(VOTElement *)self indexPathAsRange];
      v75 = NSStringFromRange(v83);
      *buf = 138412546;
      *&buf[4] = v74;
      *&buf[12] = 2112;
      *&buf[14] = v75;
      _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "NEW center point(%@) %@", buf, 0x16u);
    }

    if (indexPathAsRange != indexPathAsRange2 || v32 != v40)
    {
      v42 = VOTLogSimpleTap();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        sub_1001285F4();
      }

      parentTableOrCollectionView = [(VOTElement *)self parentTableOrCollectionView];
      v44 = VOTLogSimpleTap();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_100128628();
      }

      if (parentTableOrCollectionView)
      {
        v45 = [parentTableOrCollectionView elementAtRow:indexPathAsRange andColumn:v32];
        v46 = VOTLogSimpleTap();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          sub_100128698();
        }

        if (![v45 isEqual:self])
        {
          performScribbleAction = [v45 performSimpleTap:tapCopy];

          return performScribbleAction;
        }
      }
    }

    windowContextIdForPress = [(VOTElement *)self windowContextIdForPress];
    v79.x = v35;
    v79.y = v37;
    if (windowContextIdForPress)
    {
      v48 = +[VOTElement systemWideElement];
      [v48 convertPoint:windowContextIdForPress fromContextId:{v35, v37}];
      v35 = v49;
      v37 = v50;
    }

    v51 = VOTLogSimpleTap();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      sub_100128708(&v79, &v79.y, v51);
    }

    v52 = [(VOTElement *)self verifyElementExists:&v79];
    v53 = VOTLogSimpleTap();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v76 = NSStringFromCGPoint(v79);
      *buf = 67109378;
      *&buf[4] = v52;
      *&buf[8] = 2112;
      *&buf[10] = v76;
      _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Is same element: %i.  Updated dispatch point: %@", buf, 0x12u);
    }

    if (sub_10005083C() && [(VOTElement *)self isTouchContainer])
    {
      v54 = VOTLogSimpleTap();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        sub_1001287A4();
      }

      v55 = [(UIElementProtocol *)self->_uiElement performAXAction:2010];
      v56 = VOTLogSimpleTap();
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);
      if (v55)
      {
        if (v57)
        {
          sub_100128874();
        }

        performScribbleAction = 1;
        goto LABEL_89;
      }

      if (v57)
      {
        sub_1001287D8();
      }
    }

    if ([(VOTElement *)self doesHaveAllTraits:kAXIsEditingTrait | v11]&& ![(VOTElement *)self shouldIgnoreTextEditingTrait])
    {
      v62 = VOTLogSimpleTap();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        sub_10012880C();
      }

      performScribbleAction = 0;
      goto LABEL_87;
    }

    [(VOTElement *)self activationDelay];
    v59 = v58;
    if ([(VOTElement *)self tapHostContextId])
    {
      v79.x = v35;
      v79.y = v37;
      windowContextIdForPress = [(VOTElement *)self windowContextIdImmediateRemoteParent:windowContextIdForPress];
    }

    else if ((v52 & 1) == 0)
    {
      if ([(VOTElement *)self verifyElementExists:&v80])
      {
        v60 = VOTLogSimpleTap();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          sub_100128840();
        }

        v61 = v80;
      }

      else
      {
        [(VOTElement *)self visiblePoint];
        *buf = v63;
        *&buf[8] = v64;
        [(VOTElement *)self updateVisiblePoint];
        [(VOTElement *)self visiblePoint];
        v78.x = v65;
        v78.y = v66;
        if ([(VOTElement *)self verifyElementExists:&v78])
        {
          v79 = v78;
        }

        if (![(VOTElement *)self verifyElementExists:buf])
        {
          goto LABEL_83;
        }

        v61 = *buf;
      }

      v79 = v61;
    }

LABEL_83:
    v67 = +[VOTElement systemWideElement];
    *&v68 = v59;
    performScribbleAction = [v67 performSimpleTapAtPoint:windowContextIdForPress withForce:self withContextId:v79 withDelay:0.0 forElement:v68];

    v69 = VOTLogSimpleTap();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      v77 = NSStringFromCGPoint(v79);
      *buf = 138412802;
      *&buf[4] = v77;
      *&buf[12] = 1024;
      *&buf[14] = windowContextIdForPress;
      *&buf[18] = 2048;
      *&buf[20] = v59;
      _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "Performed simple tap at dispatch point %@, context id %u, delay %1.1f .", buf, 0x1Cu);
    }

    if ([(VOTElement *)self doesHaveTraits:v11])
    {
      [NSThread sleepForTimeInterval:0.5];
      [(VOTElement *)self updateFrame];
      [(VOTElement *)self updateCenterPoint];
      [(VOTElement *)self updateTraits];
      [(VOTElement *)self updateCustomPublicRotors];
    }

LABEL_87:
    if ([(VOTElement *)self doesHaveTraits:kAXPlaysSoundTrait])
    {
      return performScribbleAction;
    }

    v56 = +[VOTOutputManager outputManager];
    v70 = +[VOSOutputEvent DidActivateElement];
    [v56 sendEvent:v70];

LABEL_89:
    return performScribbleAction;
  }

  [(VOTElement *)self updateFrame];
  v17 = +[AXSubsystemVoiceOver sharedInstance];
  ignoreLogging = [v17 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v19 = +[AXSubsystemVoiceOver identifier];
    v20 = AXLoggerForFacility();

    v21 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = AXColorizeFormatLog();
      v23 = _AXStringForArgs();
      if (os_log_type_enabled(v20, v21))
      {
        *buf = 138543362;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v20, v21, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (![(VOTElement *)self doesHaveTraits:kAXPlaysSoundTrait])
  {
    v24 = +[VOTOutputManager outputManager];
    v25 = +[VOSOutputEvent DidActivateElement];
    [v24 sendEvent:v25];
  }

  return 1;
}

- (int64_t)temporaryVoiceOverStatus
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:5067];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setTemporaryVoiceOverStatus:(int64_t)status
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithLong:status];
  [(UIElementProtocol *)uiElement setAXAttribute:5067 withNumber:v4];
}

- (BOOL)_attemptPerformActivateActionWithElement:(id)element
{
  elementCopy = element;
  v5 = kAXWebContentTrait;
  kAXWebContentTrait = [(VOTElement *)self doesHaveAllTraits:kAXLinkTrait | kAXWebContentTrait];
  if (![(VOTElement *)self doesHaveTraits:v5])
  {
    v8 = [elementCopy performAXAction:2010];
    goto LABEL_13;
  }

  if ([(VOTElement *)self isComboBox])
  {
    v7 = VOTLogSimpleTap();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100128988();
    }

LABEL_24:

    v8 = 0;
    goto LABEL_25;
  }

  uiElement = [(VOTElement *)self uiElement];
  AXUIElementSetMessagingTimeout([uiElement axElement], 0.25);

  if ([elementCopy performAXAction:2010])
  {
    goto LABEL_11;
  }

  if (AXUIElementLastGlobalError() == -25216)
  {
    v10 = VOTLogSimpleTap();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Web element timed out trying to activate, assuming that we got blocked on modal alert and moving on", v16, 2u);
    }

LABEL_11:
    v8 = 1;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:
  v11 = VOTLogSimpleTap();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1001288A8();
  }

  if ([(VOTElement *)self doesHaveTraits:kAXTextEntryTrait])
  {
    [NSThread sleepForTimeInterval:0.5];
    [(VOTElement *)self updateTraits];
    if (![(VOTElement *)self doesHaveTraits:kAXIsEditingTrait])
    {
      v12 = VOTLogSimpleTap();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100128920();
      }

      v8 = 0;
    }
  }

  if (kAXWebContentTrait)
  {
    [NSThread sleepForTimeInterval:0.25];
    application = [(VOTElement *)self application];
    v14 = [(VOTElement *)self isValidForApplication:application];

    if (v14)
    {
      v7 = VOTLogSimpleTap();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100128954();
      }

      goto LABEL_24;
    }
  }

LABEL_25:

  return v8;
}

- (double)minValue
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:5005];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (double)maxValue
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:5006];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (double)absoluteValue
{
  [(UIElementProtocol *)self->_uiElement updateCache:5011];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:5011];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (id)remoteParent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedRemoteParent = [(VOTElement *)selfCopy cachedRemoteParent];
  if (cachedRemoteParent)
  {
  }

  else if (![(VOTElement *)selfCopy checkedRemoteParent])
  {
    v4 = [(VOTElement *)selfCopy _elementForAttribute:2092 shouldUpdateCache:0 shouldFetchAttributes:0];
    [(VOTElement *)selfCopy setCachedRemoteParent:v4];

    cachedRemoteParent2 = [(VOTElement *)selfCopy cachedRemoteParent];

    if (!cachedRemoteParent2)
    {
      v6 = [(VOTElement *)selfCopy _elementForAttribute:2092 shouldUpdateCache:1 shouldFetchAttributes:0];
      [(VOTElement *)selfCopy setCachedRemoteParent:v6];
    }

    [(VOTElement *)selfCopy setCheckedRemoteParent:1];
  }

  objc_sync_exit(selfCopy);

  return [(VOTElement *)selfCopy cachedRemoteParent];
}

- (id)immediateRemoteParent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedImmediateRemoteParent = [(VOTElement *)selfCopy cachedImmediateRemoteParent];
  if (cachedImmediateRemoteParent)
  {
  }

  else if (![(VOTElement *)selfCopy checkedImmediateRemoteParent])
  {
    v4 = [(VOTElement *)selfCopy _elementForAttribute:2310 shouldUpdateCache:0 shouldFetchAttributes:0];
    [(VOTElement *)selfCopy setCachedImmediateRemoteParent:v4];

    [(VOTElement *)selfCopy setCheckedImmediateRemoteParent:1];
  }

  objc_sync_exit(selfCopy);

  return [(VOTElement *)selfCopy cachedImmediateRemoteParent];
}

- (void)_iterateSelfAndRemoteParentsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  selfCopy = self;
  if (selfCopy)
  {
    v6 = selfCopy;
    while (1)
    {
      blockCopy[2](blockCopy, v6, &v8);
      if (v8)
      {
        break;
      }

      immediateRemoteParent = [(VOTElement *)v6 immediateRemoteParent];
      if ([(VOTElement *)immediateRemoteParent isEqual:v6])
      {

        break;
      }

      if (immediateRemoteParent)
      {
        v6 = immediateRemoteParent;
        if ((v8 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    immediateRemoteParent = v6;
LABEL_10:
  }
}

- (BOOL)_scrollForAction:(int)action
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001BB04;
  v5[3] = &unk_1001C7AA8;
  v5[4] = &v7;
  actionCopy = action;
  [(VOTElement *)self _iterateSelfAndRemoteParentsUsingBlock:v5];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)scrollToPoint:(CGPoint)point
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithPoint:point.x, point.y];
  [(UIElementProtocol *)uiElement performAXAction:2014 withValue:v4];
}

- (void)scrollRectToVisible:(CGRect)visible withCompletion:(id)completion
{
  v5 = [completion copy];
  v4 = v5;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (id)scrollStatus
{
  [(UIElementProtocol *)self->_uiElement updateCache:2009];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:2009];
}

- (BOOL)showsDualPages
{
  [(UIElementProtocol *)self->_uiElement updateCache:2304];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2304];
}

- (id)firstResponderElement
{
  v2 = [(VOTElement *)self elementForAttribute:3002];
  if ([v2 isRemoteElement])
  {
    v3 = [v2 elementForAttribute:3002];

    v2 = v3;
  }

  if ([v2 isRemoteElement])
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

- (id)firstResponderElementWithoutCache
{
  v2 = [(VOTElement *)self _elementForAttribute:3002 shouldUpdateCache:0 shouldFetchAttributes:0];
  if ([v2 isRemoteElement])
  {
    v3 = [v2 _elementForAttribute:3002 shouldUpdateCache:0 shouldFetchAttributes:0];

    v2 = v3;
  }

  if ([v2 isRemoteElement])
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

- (id)nativeFocusElement
{
  v2 = [(VOTElement *)self elementForAttribute:3024];
  if ([v2 isRemoteElement])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

- (id)nativeFocusPreferredElement
{
  v2 = [(VOTElement *)self elementForAttribute:3027];
  if ([v2 isRemoteElement])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

- (id)firstResponderElementForFocus
{
  v2 = [(VOTElement *)self elementForAttribute:3023];
  if ([v2 isRemoteElement])
  {
    v3 = [v2 elementForAttribute:3023];

    v2 = v3;
  }

  if ([v2 isRemoteElement])
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

- (id)firstElementInApplication
{
  navigationStyle = [VOTSharedWorkspace navigationStyle];
  v4 = AXUIAccessibilityHonorsGroupsKey;
  v19[0] = AXUIAccessibilityHonorsGroupsKey;
  v5 = [NSNumber numberWithBool:navigationStyle == 1];
  v20[0] = v5;
  v6 = AXUIAccessibilityNavigationDirection;
  v19[1] = AXUIAccessibilityNavigationDirection;
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [VOTSharedWorkspace navigationDirection]);
  v20[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v9 = [(VOTElement *)self elementForParameterizedAttribute:95253 parameter:v8];

  if ([v9 isRemoteElement])
  {
    v17[0] = v4;
    v10 = [NSNumber numberWithBool:navigationStyle == 1];
    v17[1] = v6;
    v18[0] = v10;
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [VOTSharedWorkspace navigationDirection]);
    v18[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v13 = [v9 elementForParameterizedAttribute:95253 parameter:v12];

    v9 = v13;
  }

  if ([v9 isRemoteElement])
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;

  return v14;
}

- (id)lastElementInApplication
{
  navigationStyle = [VOTSharedWorkspace navigationStyle];
  v4 = AXUIAccessibilityHonorsGroupsKey;
  v19[0] = AXUIAccessibilityHonorsGroupsKey;
  v5 = [NSNumber numberWithBool:navigationStyle == 1];
  v20[0] = v5;
  v6 = AXUIAccessibilityNavigationDirection;
  v19[1] = AXUIAccessibilityNavigationDirection;
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [VOTSharedWorkspace navigationDirection]);
  v20[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v9 = [(VOTElement *)self elementForParameterizedAttribute:95254 parameter:v8];

  if ([v9 isRemoteElement])
  {
    v17[0] = v4;
    v10 = [NSNumber numberWithBool:navigationStyle == 1];
    v17[1] = v6;
    v18[0] = v10;
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [VOTSharedWorkspace navigationDirection]);
    v18[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v13 = [v9 elementForParameterizedAttribute:95254 parameter:v12];

    v9 = v13;
  }

  if ([v9 isRemoteElement])
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;

  return v14;
}

- (id)firstElementInApplicationForFocus
{
  v3 = [VOTSharedWorkspace navigationStyle] == 1;
  v26[0] = AXUIAccessibilityHonorsGroupsKey;
  v4 = [NSNumber numberWithBool:v3];
  v27[0] = v4;
  v26[1] = AXUIAccessibilityNavigationDirection;
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [VOTSharedWorkspace navigationDirection]);
  v27[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v7 = [(VOTElement *)self elementForParameterizedAttribute:95250 parameter:v6];

  v8 = VOTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "First element in app focus: %@", buf, 0xCu);
  }

  if ([v7 isRemoteElement])
  {
    [v7 accessibleDescendants];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([v13 isVisible])
          {
            v10 = v13;
            goto LABEL_14;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v14 = VOTLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "First remote element in app focus: %@", buf, 0xCu);
    }

    if (v10)
    {
      v15 = v10;

      v7 = v15;
    }
  }

  if ([v7 isRemoteElement])
  {
    v16 = 0;
  }

  else
  {
    v16 = v7;
  }

  v17 = v16;

  return v16;
}

- (id)elementCommunity
{
  application = [(VOTElement *)self application];
  isolatedWindow = [(VOTElement *)self isolatedWindow];
  if (isolatedWindow)
  {
    remoteParent = isolatedWindow;

    application2 = [remoteParent application];
    isSpringBoard = [application2 isSpringBoard];

    if (isSpringBoard)
    {
      application = remoteParent;
      goto LABEL_13;
    }

    application = [remoteParent application];
    v9 = remoteParent;
  }

  else
  {
    remoteParent = [(VOTElement *)self remoteParent];
    if (remoteParent && [(VOTElement *)self remoteParentIsViewHost])
    {
      isolatedWindow2 = [remoteParent isolatedWindow];
      if (isolatedWindow2)
      {
        v9 = isolatedWindow2;
        application3 = v9;
      }

      else
      {
        application3 = [remoteParent application];
        v9 = 0;
      }

      application = application3;
    }

    else
    {
      v9 = 0;
    }
  }

  remoteParent = v9;
LABEL_13:

  return application;
}

- (id)firstElementInApplicationForReadFromTop
{
  v2 = [(VOTElement *)self elementForAttribute:3050];
  if ([v2 isRemoteElement])
  {
    v3 = [v2 elementForAttribute:3050];

    v2 = v3;
  }

  if ([v2 isRemoteElement])
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

- (BOOL)elementOnSameLine:(id)line
{
  lineCopy = line;
  [(VOTElement *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [lineCopy frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  deviceOrientation = [VOTSharedWorkspace deviceOrientation];
  kAXRadioButtonTrait = [(VOTElement *)self doesHaveTraits:kAXToggleTrait | kAXRadioButtonTrait];
  if (kAXRadioButtonTrait)
  {
    LOBYTE(kAXRadioButtonTrait) = [lineCopy doesHaveTraits:kAXStaticTextTrait];
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001CAC4;
  v32[3] = &unk_1001C7AF0;
  v33 = kAXRadioButtonTrait;
  v23 = objc_retainBlock(v32);
  v24 = 0;
  if (deviceOrientation > 2)
  {
    if (deviceOrientation == 3)
    {
      v40.origin.x = v6;
      v40.origin.y = v8;
      v40.size.width = v10;
      v40.size.height = v12;
      MaxX = CGRectGetMaxX(v40);
      v41.origin.x = v14;
      v41.origin.y = v16;
      v41.size.width = v18;
      v41.size.height = v20;
      MinX = CGRectGetMaxX(v41);
    }

    else
    {
      if (deviceOrientation != 4)
      {
        goto LABEL_14;
      }

      v36.origin.x = v6;
      v36.origin.y = v8;
      v36.size.width = v10;
      v36.size.height = v12;
      MaxX = CGRectGetMinX(v36);
      v37.origin.x = v14;
      v37.origin.y = v16;
      v37.size.width = v18;
      v37.size.height = v20;
      MinX = CGRectGetMinX(v37);
    }

    v12 = v10;
    v20 = v18;
    goto LABEL_13;
  }

  if (deviceOrientation < 2)
  {
    v34.origin.x = v6;
    v34.origin.y = v8;
    v34.size.width = v10;
    v34.size.height = v12;
    MaxX = CGRectGetMinY(v34);
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    MinX = CGRectGetMinY(v35);
LABEL_13:
    v27 = MaxX;
    v28 = MinX;
    v29 = v12;
    v30 = v20;
    v24 = (v23[2])(v23, v27, v28, v29, v30);
    goto LABEL_14;
  }

  if (deviceOrientation == 2)
  {
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    MaxX = CGRectGetMaxY(v38);
    v39.origin.x = v14;
    v39.origin.y = v16;
    v39.size.width = v18;
    v39.size.height = v20;
    MinX = CGRectGetMaxY(v39);
    goto LABEL_13;
  }

LABEL_14:

  return v24;
}

- (id)cellWithRowIndexPath:(_NSRange)path parentView:(id)view
{
  length = path.length;
  location = path.location;
  viewCopy = view;
  uiElement = [viewCopy uiElement];
  axElement = [uiElement axElement];

  if (axElement)
  {
    *&valuePtr = location;
    *(&valuePtr + 1) = length;
    v10 = AXValueCreate(kAXValueTypeCFRange, &valuePtr);
    v21[0] = v10;
    v21[1] = axElement;
    v11 = [NSArray arrayWithObjects:v21 count:2];
    v12 = [(VOTElement *)self elementForParameterizedAttribute:92600 parameter:v11];

    CFRelease(v10);
  }

  else
  {
    v13 = +[AXSubsystemVoiceOver sharedInstance];
    ignoreLogging = [v13 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      v15 = +[AXSubsystemVoiceOver identifier];
      v16 = AXLoggerForFacility();

      v17 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = AXColorizeFormatLog();
        v19 = _AXStringForArgs();
        if (os_log_type_enabled(v16, v17))
        {
          LODWORD(valuePtr) = 138543362;
          *(&valuePtr + 4) = v19;
          _os_log_impl(&_mh_execute_header, v16, v17, "%{public}@", &valuePtr, 0xCu);
        }
      }
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)includeURLLabelInLabel
{
  if (![(VOTElement *)self doesHaveTraits:kAXImageTrait])
  {
    return 1;
  }

  elementManager = [VOTSharedWorkspace elementManager];
  v4 = [elementManager determineFullImageDescriptionsEnabled:self];

  return v4 ^ 1;
}

- (BOOL)shouldAddAlternateActionForLinkElement
{
  application = [(VOTElement *)self application];
  if ([(VOTElement *)self doesHaveAllTraits:kAXLinkTrait | kAXWebContentTrait])
  {
    uiElement = [application uiElement];
    v5 = [uiElement BOOLWithAXAttribute:2148];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)customContent
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2210];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    v14 = objc_opt_class();
    v5 = [NSArray arrayWithObjects:&v14 count:1];
    v6 = [NSSet setWithArray:v5];
    v7 = [NSKeyedUnarchiver secureUnarchiveData:v3 withExpectedClass:v4 otherAllowedClasses:v6];
  }

  else
  {
    v7 = 0;
  }

  if (![(VOTElement *)self includeURLLabelInLabel])
  {
    urlLabel = [(VOTElement *)self urlLabel];

    if (urlLabel)
    {
      if (!v7)
      {
        v7 = objc_opt_new();
      }

      v9 = sub_1000511CC(off_1001FDDD0, @"URL", 0);
      urlLabel2 = [(VOTElement *)self urlLabel];
      v11 = [AXCustomContent customContentWithLabel:v9 value:urlLabel2];
      v12 = [v7 arrayByAddingObject:v11];

      v7 = v12;
    }
  }

  return v7;
}

- (id)cachedCustomRotorActions
{
  v3 = +[NSMutableArray array];
  remoteParent = [(VOTElement *)self remoteParent];
  if (remoteParent)
  {
    remoteParent2 = [(VOTElement *)self remoteParent];
    if (([remoteParent2 isEqual:self] & 1) != 0 || !-[VOTElement remoteParentIsViewHost](self, "remoteParentIsViewHost"))
    {
    }

    else
    {
      shouldIncludeRemoteParentCustomActions = [(VOTElement *)self shouldIncludeRemoteParentCustomActions];

      if (!shouldIncludeRemoteParentCustomActions)
      {
        goto LABEL_9;
      }

      remoteParent3 = [(VOTElement *)self remoteParent];
      remoteParent = [remoteParent3 cachedCustomRotorActions];

      if (remoteParent)
      {
        [v3 addObjectsFromArray:remoteParent];
      }
    }
  }

LABEL_9:
  v8 = [(UIElementProtocol *)self->_uiElement arrayWithAXAttribute:2036];
  if (v8)
  {
    [v3 addObjectsFromArray:v8];
  }

  if ([(VOTElement *)self remoteParentIsViewHost])
  {
    application = [(VOTElement *)self application];
    uiElement = [application uiElement];
    [uiElement updateCache:2148];

    if ([(VOTElement *)self shouldAddAlternateActionForLinkElement])
    {
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      v12 = sub_1000516CC(off_1001FDDD0, @"action.open.other.side", @"action.open.other.side", selectedLanguage);
      v32[0] = @"CustomActionName";
      v32[1] = @"CustomActionIdentifier";
      v33[0] = v12;
      v33[1] = @"alternateActionForURLIdentifier";
      v13 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
      v14 = [NSMutableDictionary dictionaryWithDictionary:v13];

      [v3 addObject:v14];
    }
  }

  visionEngine = [VOTSharedWorkspace visionEngine];
  v16 = [visionEngine resultsForElement:self];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  imageAssetLocalIdentifier = [(VOTElement *)self imageAssetLocalIdentifier];
  v18 = imageAssetLocalIdentifier != 0;

  v31 = v18;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001D404;
  v27[3] = &unk_1001C7B18;
  v27[4] = &v28;
  [v16 enumerateObjectsUsingBlock:v27];
  if (*(v29 + 24) == 1)
  {
    v19 = objc_alloc_init(VOTImageExplorerCustomAction);
    [v3 addObject:v19];
  }

  v20 = [v3 axMapObjectsUsingBlock:&stru_1001C7B58];
  cachedDragCustomActions = [(VOTElement *)self cachedDragCustomActions];
  v22 = [v20 arrayByAddingObjectsFromArray:cachedDragCustomActions];

  cachedDropCustomActions = [(VOTElement *)self cachedDropCustomActions];
  v24 = [v22 arrayByAddingObjectsFromArray:cachedDropCustomActions];

  v25 = [v24 sortedArrayUsingComparator:&stru_1001C7B98];

  _Block_object_dispose(&v28, 8);

  return v25;
}

+ (id)organizedActionsByCategory:(id)category
{
  categoryCopy = category;
  v4 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = categoryCopy;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        categoryName = [v9 categoryName];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10001D754;
        v17[3] = &unk_1001C7BC0;
        v11 = categoryName;
        v18 = v11;
        v12 = [v4 ax_filteredArrayUsingBlock:v17];
        firstObject = [v12 firstObject];

        if (!firstObject)
        {
          firstObject = objc_opt_new();
          [firstObject setCategoryName:v11];
          [v4 addObject:firstObject];
        }

        actions = [firstObject actions];
        [actions addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [v4 sortUsingComparator:&stru_1001C7C00];

  return v4;
}

- (id)customRotorActions
{
  remoteParent = [(VOTElement *)self remoteParent];
  if (remoteParent)
  {
    v4 = remoteParent;
    remoteParentIsViewHost = [(VOTElement *)self remoteParentIsViewHost];

    if (remoteParentIsViewHost)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      uiElement = [remoteParent2 uiElement];
      [uiElement updateCache:2036];
    }
  }

  [(UIElementProtocol *)self->_uiElement updateCache:2036];
  [(UIElementProtocol *)self->_uiElement updateCache:2175];
  [(UIElementProtocol *)self->_uiElement updateCache:2176];

  return [(VOTElement *)self cachedCustomRotorActions];
}

- (int64_t)overriddenInterpretationForCommand:(int64_t)command
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:95235 parameter:[NSNumber numberWithInteger:command]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)performCustomActionWithIdentifier:(id)identifier data:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  if ([identifierCopy isEqualToString:@"alternateActionForURLIdentifier"])
  {
    application = [(VOTElement *)self application];
    uiElement = [application uiElement];
    v10 = [(VOTElement *)self url];
    absoluteString = [v10 absoluteString];
    v12 = [uiElement performAXAction:2048 withValue:absoluteString];

LABEL_9:
    goto LABEL_10;
  }

  if (!dataCopy)
  {
    dataCopy = objc_opt_new();
    [dataCopy setObject:identifierCopy forKeyedSubscript:@"CustomActionIdentifier"];
  }

  if (([(UIElementProtocol *)self->_uiElement performAXAction:2021 withValue:dataCopy]& 1) == 0)
  {
    remoteParent = [(VOTElement *)self remoteParent];

    if (!remoteParent)
    {
      v12 = 0;
      goto LABEL_10;
    }

    application = [(VOTElement *)self remoteParent];
    v12 = [application performCustomActionWithIdentifier:identifierCopy data:dataCopy];
    goto LABEL_9;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

- (BOOL)attemptToShowContextMenuWithTargetPointValue:(id)value
{
  valueCopy = value;
  if (([(UIElementProtocol *)self->_uiElement performAXAction:2051 withValue:valueCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    remoteParent = [(VOTElement *)self remoteParent];

    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      v5 = [remoteParent2 attemptToShowContextMenuWithTargetPointValue:valueCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)customPublicRotors
{
  v3 = +[NSMutableArray array];
  remoteParent = [(VOTElement *)self remoteParent];
  if (remoteParent)
  {
    v5 = remoteParent;
    remoteParentIsViewHost = [(VOTElement *)self remoteParentIsViewHost];

    if (remoteParentIsViewHost)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      uiElement = [remoteParent2 uiElement];
      v9 = [uiElement arrayWithAXAttribute:2128];
      [v3 axSafelyAddObjectsFromArray:v9];
    }
  }

  uiElement2 = [(VOTElement *)self uiElement];
  v11 = [uiElement2 arrayWithAXAttribute:2128];
  [v3 axSafelyAddObjectsFromArray:v11];

  return v3;
}

- (id)customPublicRotorNames
{
  v3 = +[NSMutableArray array];
  remoteParent = [(VOTElement *)self remoteParent];

  if (remoteParent)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    remoteParent2 = [(VOTElement *)self remoteParent];
    customPublicRotors = [remoteParent2 customPublicRotors];

    v7 = [customPublicRotors countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(customPublicRotors);
          }

          v11 = [(VOTElement *)self customPublicRotorName:*(*(&v23 + 1) + 8 * i)];
          [v3 axSafelyAddObject:v11];
        }

        v8 = [customPublicRotors countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  customPublicRotors2 = [(VOTElement *)self customPublicRotors];
  v13 = [customPublicRotors2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(customPublicRotors2);
        }

        v17 = [(VOTElement *)self customPublicRotorName:*(*(&v19 + 1) + 8 * j)];
        [v3 axSafelyAddObject:v17];
      }

      v14 = [customPublicRotors2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v3;
}

- (id)customPublicRotorForSystemType:(id)type
{
  typeCopy = type;
  uiElement = [(VOTElement *)self uiElement];
  remoteParent = [uiElement objectWithAXAttribute:95232 parameter:typeCopy];

  if (!remoteParent)
  {
    remoteParent = [(VOTElement *)self remoteParent];

    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      uiElement2 = [remoteParent2 uiElement];
      remoteParent = [uiElement2 objectWithAXAttribute:95232 parameter:typeCopy];
    }
  }

  return remoteParent;
}

- (BOOL)customPublicRotorIsVisibleInTouchRotor:(id)rotor
{
  rotorCopy = rotor;
  uiElement = [(VOTElement *)self uiElement];
  remoteParent = [uiElement objectWithAXAttribute:95228 parameter:rotorCopy];

  if (!remoteParent)
  {
    remoteParent = [(VOTElement *)self remoteParent];

    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      uiElement2 = [remoteParent2 uiElement];
      remoteParent = [uiElement2 objectWithAXAttribute:95228 parameter:rotorCopy];
    }
  }

  v9 = [remoteParent objectForKeyedSubscript:@"visibleInTouchRotor"];

  if (v9)
  {
    v10 = [remoteParent objectForKeyedSubscript:@"visibleInTouchRotor"];
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (int64_t)customPublicRotorLinkCountForRotor:(id)rotor
{
  rotorCopy = rotor;
  uiElement = [(VOTElement *)self uiElement];
  remoteParent = [uiElement objectWithAXAttribute:95228 parameter:rotorCopy];

  if (!remoteParent)
  {
    remoteParent = [(VOTElement *)self remoteParent];

    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      uiElement2 = [remoteParent2 uiElement];
      remoteParent = [uiElement2 objectWithAXAttribute:95228 parameter:rotorCopy];
    }
  }

  objc_opt_class();
  v9 = [remoteParent objectForKeyedSubscript:AXUIAccessibilityCustomRotorLinkCount];
  v10 = __UIAccessibilityCastAsClass();

  integerValue = [v10 integerValue];
  return integerValue;
}

- (id)customPublicRotorName:(id)name
{
  nameCopy = name;
  uiElement = [(VOTElement *)self uiElement];
  remoteParent = [uiElement objectWithAXAttribute:95228 parameter:nameCopy];

  if (!remoteParent)
  {
    remoteParent = [(VOTElement *)self remoteParent];

    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      uiElement2 = [remoteParent2 uiElement];
      remoteParent = [uiElement2 objectWithAXAttribute:95228 parameter:nameCopy];
    }
  }

  v9 = [remoteParent objectForKeyedSubscript:@"name"];

  return v9;
}

+ (id)customPublicRotorDictionaryForRotorId:(id)id startRange:(_NSRange)range direction:(int64_t)direction
{
  location = range.location;
  rangeCopy = range;
  idCopy = id;
  v8 = [NSMutableDictionary dictionary:rangeCopy.location];
  [v8 setObject:idCopy forKeyedSubscript:@"uuid"];

  v9 = +[NSMutableDictionary dictionary];
  [v8 setObject:v9 forKeyedSubscript:@"currentItem"];

  if (location != 0x7FFFFFFF)
  {
    v10 = AXValueCreate(kAXValueTypeCFRange, &rangeCopy);
    v11 = [v8 objectForKeyedSubscript:@"currentItem"];
    [v11 setObject:v10 forKeyedSubscript:@"targetRange"];

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v12 = [NSNumber numberWithInteger:direction == 1];
  [v8 setObject:v12 forKeyedSubscript:@"direction"];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [VOTSharedWorkspace navigationStyle] == 1);
  [v8 setObject:v13 forKeyedSubscript:AXUIAccessibilityHonorsGroupsKey];

  return v8;
}

- (id)customPublicRotorResultWithItem:(id)item startElement:(id)element
{
  itemCopy = item;
  elementCopy = element;
  uiElement = [elementCopy uiElement];
  axElement = [uiElement axElement];
  v10 = [itemCopy objectForKeyedSubscript:@"currentItem"];
  [v10 setObject:axElement forKeyedSubscript:@"targetElement"];

  uiElement2 = [(VOTElement *)self uiElement];
  v12 = [uiElement2 objectWithAXAttribute:95227 parameter:itemCopy];

  if (!v12)
  {
    remoteParent = [(VOTElement *)self remoteParent];

    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];

      uiElement3 = [remoteParent2 uiElement];
      axElement2 = [uiElement3 axElement];
      v17 = [itemCopy objectForKeyedSubscript:@"currentItem"];
      [v17 setObject:axElement2 forKeyedSubscript:@"targetElement"];

      remoteParent3 = [(VOTElement *)self remoteParent];
      uiElement4 = [remoteParent3 uiElement];
      v12 = [uiElement4 objectWithAXAttribute:95227 parameter:itemCopy];

      elementCopy = remoteParent2;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (_NSRange)selectedTextRange
{
  [(UIElementProtocol *)self->_uiElement updateCache:2005];
  uiElement = self->_uiElement;

  v4 = [(UIElementProtocol *)uiElement rangeWithAXAttribute:2005];
  result.length = v5;
  result.location = v4;
  return result;
}

- (void)setFirstResponder:(id)responder
{
  uiElement = self->_uiElement;
  uiElement = [responder uiElement];
  -[UIElementProtocol setAXAttribute:withObject:](uiElement, "setAXAttribute:withObject:", 3002, [uiElement axElement]);
}

- (void)setSelectedTextRange:(_NSRange)range refreshBraille:(BOOL)braille isVoiceOverSelectionMovement:(BOOL)movement
{
  brailleCopy = braille;
  rangeCopy = range;
  if (!movement)
  {
    [(UIElementProtocol *)self->_uiElement setAXAttribute:2005 withRange:range.location, range.length, rangeCopy.location, rangeCopy.length];
    if (!brailleCopy)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = AXValueCreate(kAXValueTypeCFRange, &rangeCopy);
  [v7 addObject:{v8, rangeCopy.location, rangeCopy.length}];
  CFRelease(v8);
  [v7 addObject:&off_1001D9B18];
  [(UIElementProtocol *)self->_uiElement setAXAttribute:2005 withArray:v7];

  if (brailleCopy)
  {
LABEL_5:
    [VOTSharedWorkspace refreshBraille:1 rotorSelection:0];
  }
}

- (void)_updateValueChangeOriginatorForApplication:(int64_t)application
{
  v5 = [(VOTElement *)self pid];
  application = [(VOTElement *)self application];
  v7 = [application pid];

  if (v5 != v7)
  {
    application2 = [(VOTElement *)self application];
    uiElement = [application2 uiElement];
    v9 = [(VOTElement *)self _sourceNameForChangeOriginator:application];
    [uiElement setAXAttribute:3007 withString:v9];
  }
}

- (BOOL)includeRoleOnlyForGroupNavigation
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:2221];

  return v3;
}

- (BOOL)includeRoleDescription
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:2222];

  return v3;
}

- (void)insertText:(id)text source:(int64_t)source
{
  textCopy = text;
  [(VOTElement *)self _updateValueChangeOriginatorForApplication:source];
  v7 = [(VOTElement *)self _sourceNameForChangeOriginator:source];
  v8 = v7;
  uiElement = self->_uiElement;
  if (v7)
  {
    v11[0] = kAXInsertTextActionKeyText;
    v11[1] = kAXInsertTextActionKeySource;
    v12[0] = textCopy;
    v12[1] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(UIElementProtocol *)uiElement performAXAction:2056 withValue:v10];
  }

  else
  {
    [(UIElementProtocol *)uiElement performAXAction:2056 withValue:textCopy];
  }
}

- (VOTElement)elementForGesturedTextInput
{
  elementForGesturedTextInput = self->_elementForGesturedTextInput;
  if (!elementForGesturedTextInput)
  {
    [(UIElementProtocol *)self->_uiElement updateCache:2600];
    v4 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2600];
    remoteParent = [AXUIElement uiElementWithAXElement:v4];

    if (!remoteParent)
    {
      remoteParent = [(VOTElement *)self remoteParent];

      if (remoteParent)
      {
        remoteParent2 = [(VOTElement *)self remoteParent];
        uiElement = [remoteParent2 uiElement];
        v8 = [uiElement objectWithAXAttribute:2600];
        remoteParent = [AXUIElement uiElementWithAXElement:v8];
      }
    }

    v9 = [[VOTElement alloc] initWithUIElement:remoteParent];
    [(VOTElement *)self setElementForGesturedTextInput:v9];

    elementForGesturedTextInput = self->_elementForGesturedTextInput;
  }

  return elementForGesturedTextInput;
}

- (id)gesturedTextInputAttributes
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2601];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:[(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait]];
  [v4 setObject:v5 forKeyedSubscript:@"AXIsActiveResponder"];

  v6 = [[VOTElementGesturedTextInputAttributes alloc] initWithAttributes:v4];

  return v6;
}

- (BOOL)activateKeyboardReturnKey
{
  if (AXUIKeyboardIsOOP())
  {
    v3 = +[VOTElement inputUIApplication];
    uiElement = [v3 uiElement];
    v5 = [uiElement performAXAction:2054];

    return v5;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10001532C;
    v14 = sub_10001533C;
    v15 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001ED14;
    v9[3] = &unk_1001C79A8;
    v9[4] = &v10;
    [(VOTElement *)self _iterateSelfAndRemoteParentsUsingBlock:v9];
    uiElement2 = [v11[5] uiElement];
    v8 = [uiElement2 performAXAction:2054];

    _Block_object_dispose(&v10, 8);
    return v8;
  }
}

- (void)handwritingSendCarriageReturn
{
  v2 = +[VOTWorkspace sharedWorkspace];
  [v2 keyboardManagerHandleKeyDown:1 keyCode:40 modifierState:0 eventOrigin:2];

  v3 = +[VOTWorkspace sharedWorkspace];
  [v3 keyboardManagerHandleKeyDown:0 keyCode:40 modifierState:0 eventOrigin:2];
}

- (void)setVoiceOverFocused:(BOOL)focused
{
  focusedCopy = focused;
  v16[0] = @"focused";
  v5 = [NSNumber numberWithBool:?];
  v16[1] = @"assistiveTech";
  v17[0] = v5;
  v17[1] = @"UIAccessibilityNotificationVoiceOverIdentifier";
  v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10001EFC8;
  v14 = &unk_1001C7C28;
  v7 = v6;
  v15 = v7;
  [(VOTElement *)self _iterateSelfAndRemoteParentsUsingBlock:&v11];
  if (AXDeviceSupportsSonification())
  {
    if ([(VOTElement *)self supportsAudiographs:v11])
    {
      if (!focusedCopy)
      {
        goto LABEL_8;
      }

LABEL_7:
      chartElement = [(VOTElement *)self chartElement];
      v10 = +[VOTAudiographManager sharedManager];
      [v10 setCurrentChartElement:chartElement];

      goto LABEL_8;
    }

    chartElement2 = [(VOTElement *)self chartElement];
    if (chartElement2)
    {

      if (focusedCopy)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    [(VOTElement *)self _updateFocusForFKA:focusedCopy];
  }

  if (focusedCopy)
  {
    [(VOTElement *)self setPreviousSpokenValueParts:0];
  }
}

- (void)_updateFocusForFKA:(BOOL)a
{
  if (a)
  {
    v4 = +[AXElement systemWideElement];
    systemApplication = [v4 systemApplication];
    application = [(VOTElement *)self application];
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [application pid]);
    fbSceneIdentifier = [(VOTElement *)self fbSceneIdentifier];
    v9 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v7, fbSceneIdentifier];
    [systemApplication performAction:5303 withValue:v9];

    remoteParent = [(VOTElement *)self remoteParent];

    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      [remoteParent2 setNativeFocus];
    }

    remoteApplication = [(VOTElement *)self remoteApplication];

    if (remoteApplication)
    {
      remoteParent3 = [(VOTElement *)self remoteParent];
      uiElement = [remoteParent3 uiElement];
      [uiElement performAXAction:5308 withValue:&__kCFBooleanTrue];
    }

    [(VOTElement *)self setNativeFocus];
  }

  else
  {
    remoteApplication2 = [(VOTElement *)self remoteApplication];

    if (remoteApplication2)
    {
      remoteParent4 = [(VOTElement *)self remoteParent];
      uiElement2 = [remoteParent4 uiElement];
      [uiElement2 performAXAction:5308 withValue:&__kCFBooleanFalse];
    }
  }
}

- (int64_t)lineStartPosition
{
  [(UIElementProtocol *)self->_uiElement updateCache:4001];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:4001];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)lineEndPosition
{
  [(UIElementProtocol *)self->_uiElement updateCache:4002];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:4002];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (_NSRange)characterRangeForPosition:(unint64_t)position
{
  v8 = xmmword_10017E110;
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94016 parameter:[NSNumber numberWithUnsignedInteger:position]];
  if (v3 && (v4 = v3, v5 = CFGetTypeID(v3), v5 == AXValueGetTypeID()) && AXValueGetType(v4) == kAXValueTypeCFRange)
  {
    AXValueGetValue(v4, kAXValueTypeCFRange, &v8);
    v7 = *(&v8 + 1);
    v6 = v8;
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFFFFFFLL;
  }

  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)lineRangeForPosition:(unint64_t)position
{
  v8 = xmmword_10017E110;
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94009 parameter:[NSNumber numberWithUnsignedInteger:position]];
  if (v3 && (v4 = v3, v5 = CFGetTypeID(v3), v5 == AXValueGetTypeID()) && AXValueGetType(v4) == kAXValueTypeCFRange)
  {
    AXValueGetValue(v4, kAXValueTypeCFRange, &v8);
    v7 = *(&v8 + 1);
    v6 = v8;
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFFFFFFLL;
  }

  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rangeForLineNumber:(int64_t)number
{
  v8 = xmmword_10017E110;
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92704 parameter:[NSNumber numberWithInteger:number]];
  if (v3 && (v4 = v3, v5 = CFGetTypeID(v3), v5 == AXValueGetTypeID()) && AXValueGetType(v4) == kAXValueTypeCFRange)
  {
    AXValueGetValue(v4, kAXValueTypeCFRange, &v8);
    v7 = *(&v8 + 1);
    v6 = v8;
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFFFFFFLL;
  }

  result.length = v7;
  result.location = v6;
  return result;
}

- (id)stringForLineNumber:(int64_t)number
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92702 parameter:[NSNumber numberWithInteger:number]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)frameForLineNumber:(int64_t)number
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92701 parameter:[NSNumber numberWithInteger:number]];
  if (v3 && (v4 = v3, v5 = CFGetTypeID(v3), v5 == AXValueGetTypeID()))
  {
    origin = 0;
    v12 = 0;
    AXValueGetValue(v4, kAXValueTypeCGRect, &origin);
  }

  else
  {
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v12 = size;
  }

  y = origin.y;
  x = origin.x;
  height = v12.height;
  width = v12.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frameForRange:(_NSRange)range
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v12 = size;
  92703 = [(VOTElement *)self objectForRange:range.location withParameterizedAttribute:range.length, 92703];
  if (92703)
  {
    v5 = 92703;
    v6 = CFGetTypeID(92703);
    if (v6 == AXValueGetTypeID() && AXValueGetType(v5) == kAXValueTypeCGRect)
    {
      AXValueGetValue(v5, kAXValueTypeCGRect, &origin);
    }
  }

  y = origin.y;
  x = origin.x;
  height = v12.height;
  width = v12.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int64_t)lineNumberForPoint:(CGPoint)point
{
  [(VOTElement *)self windowContextId];
  [(VOTElement *)self displayId];
  AXConvertPointToHostedCoordinates();
  v10[0] = v4;
  v10[1] = v5;
  v6 = AXValueCreate(kAXValueTypeCGPoint, v10);
  v7 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92700 parameter:v6];
  CFRelease(v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFLL;
  }

  return integerValue;
}

- (id)lineNumberAndColumnForPoint:(CGPoint)point
{
  pointCopy = point;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  if (v4)
  {
    v5 = v4;
    v6 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92503 parameter:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_NSRange)rangeForLineNumberAndColumn:(id)column
{
  columnCopy = column;
  v10 = xmmword_10017E110;
  if (columnCopy)
  {
    v5 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92504 parameter:columnCopy];
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == AXValueGetTypeID() && AXValueGetType(v6) == kAXValueTypeCFRange)
      {
        AXValueGetValue(v6, kAXValueTypeCFRange, &v10);
      }
    }
  }

  v9 = *(&v10 + 1);
  v8 = v10;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)valueForRange:(_NSRange)range
{
  92505 = [(VOTElement *)self objectForRange:range.location withParameterizedAttribute:range.length, 92505];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 92505;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributedValueForRange:(_NSRange)range
{
  92508 = [(VOTElement *)self objectForRange:range.location withParameterizedAttribute:range.length, 92508];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 92508;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)objectForRange:(_NSRange)range withParameterizedAttribute:(int64_t)attribute
{
  rangeCopy = range;
  v6 = AXValueCreate(kAXValueTypeCFRange, &rangeCopy);
  if (v6)
  {
    v7 = v6;
    v8 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:attribute parameter:v6];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_selectionStringForSegment:(int64_t)segment
{
  if ((segment - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1001C7D10[segment - 1];
  }
}

- (void)increaseWebSelection:(int64_t)selection
{
  uiElement = self->_uiElement;
  v4 = [(VOTElement *)self _selectionStringForSegment:selection];
  [(UIElementProtocol *)uiElement performAXAction:2015 withValue:v4];
}

- (void)decreaseWebSelection:(int64_t)selection
{
  uiElement = self->_uiElement;
  v4 = [(VOTElement *)self _selectionStringForSegment:selection];
  [(UIElementProtocol *)uiElement performAXAction:2016 withValue:v4];
}

- (void)deleteCharacterAtCursorWithSource:(int64_t)source
{
  v4 = [(VOTElement *)self _sourceNameForChangeOriginator:source];
  uiElement = self->_uiElement;
  v6 = v4;
  if (v4)
  {
    [(UIElementProtocol *)uiElement performAXAction:2052 withValue:v4];
  }

  else
  {
    [(UIElementProtocol *)uiElement performAXAction:2052];
  }
}

- (int64_t)_changeOriginatorForSourceName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"hardware"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"braillehardware"])
  {
    v4 = 2;
  }

  else if ([nameCopy isEqualToString:@"braillegestures"])
  {
    v4 = 3;
  }

  else if ([nameCopy isEqualToString:@"handwriting"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sourceNameForChangeOriginator:(int64_t)originator
{
  if (originator > 4)
  {
    return @"software";
  }

  else
  {
    return qword_1001C7D48[originator];
  }
}

- (void)replaceCharactersAtCursor:(unint64_t)cursor withString:(id)string source:(int64_t)source
{
  stringCopy = string;
  v8 = +[NSMutableDictionary dictionary];
  v9 = [NSNumber numberWithUnsignedInteger:cursor];
  [v8 setValue:v9 forKey:@"numberofcharacters"];

  if (stringCopy)
  {
    [v8 setValue:stringCopy forKey:@"replacement"];
  }

  v10 = [(VOTElement *)self _sourceNameForChangeOriginator:source];
  if (v10)
  {
    [v8 setValue:v10 forKey:@"source"];
  }

  [(UIElementProtocol *)self->_uiElement performAXAction:2053 withValue:v8];
}

- (BOOL)replaceTextInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  v11[0] = @"range";
  stringCopy = string;
  v13.location = location;
  v13.length = length;
  v8 = NSStringFromRange(v13);
  v11[1] = @"replacement";
  v12[0] = v8;
  v12[1] = stringCopy;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  LOBYTE(v8) = [(UIElementProtocol *)self->_uiElement performAXAction:2505 withValue:v9];
  return v8;
}

- (CGRect)boundsForRange:(_NSRange)range
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v12 = size;
  92506 = [(VOTElement *)self objectForRange:range.location withParameterizedAttribute:range.length, 92506];
  if (92506)
  {
    v5 = 92506;
    v6 = CFGetTypeID(92506);
    if (v6 == AXValueGetTypeID() && AXValueGetType(v5) == kAXValueTypeCGRect)
    {
      AXValueGetValue(v5, kAXValueTypeCGRect, &origin);
    }
  }

  y = origin.y;
  x = origin.x;
  height = v12.height;
  width = v12.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)textMarkerRangeForSelection
{
  [(UIElementProtocol *)self->_uiElement updateCache:4004];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement arrayWithAXAttribute:4004];
}

- (_NSRange)textMarkerSelectionRange
{
  [(UIElementProtocol *)self->_uiElement updateCache:4005];
  uiElement = self->_uiElement;

  v4 = [(UIElementProtocol *)uiElement rangeWithAXAttribute:4005];
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)webHierarchyIndexPathFromWebArea:(id)area
{
  areaCopy = area;
  selfCopy = self;
  directParent = [(VOTElement *)selfCopy directParent];
  if (directParent)
  {
    v7 = 0;
    v8 = selfCopy;
    while (([areaCopy isEqual:v8] & 1) == 0)
    {
      v9 = [directParent indexOfAccessibilityElement:v8];
      if ([(VOTElement *)v8 isEqual:selfCopy])
      {
        [NSIndexPath indexPathWithIndex:v9];
      }

      else
      {
        [v7 indexPathByAddingIndex:v9];
      }
      v10 = ;

      v11 = directParent;
      directParent = [(VOTElement *)v11 directParent];

      v7 = v10;
      v8 = v11;
      if (!directParent)
      {
        selfCopy = v11;
        goto LABEL_11;
      }
    }

    selfCopy = v8;
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)webArea
{
  v3 = kAXWebContentTrait;
  if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
  {
    directParent = [(VOTElement *)self directParent];
    directParent2 = directParent;
    if (directParent)
    {
      v6 = directParent;
      while ([directParent2 doesHaveTraits:v3])
      {
        v7 = directParent2;

        directParent2 = [v7 directParent];

        v6 = v7;
        if (!directParent2)
        {
          goto LABEL_10;
        }
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

LABEL_10:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)webAreaURL
{
  v2 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2105];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)url
{
  v2 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2020];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)textMarkerForPoint:(CGPoint)point
{
  pointCopy = point;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  v5 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94007 parameter:v4];
  CFRelease(v4);

  return v5;
}

- (id)textMarkersForPoints:(id)points
{
  pointsCopy = points;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [pointsCopy count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = pointsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v17 + 1) + 8 * i) pointValue];
        v16[0] = v11;
        v16[1] = v12;
        v13 = AXValueCreate(kAXValueTypeCGPoint, v16);
        [v5 addObject:v13];
        CFRelease(v13);
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94010 parameter:v5];

  return v14;
}

- (id)pageTextMarkerRange
{
  [(UIElementProtocol *)self->_uiElement updateCache:2305];
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2305];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)textLineEndMarker:(id)marker
{
  uiElement = self->_uiElement;
  markerCopy = marker;
  [(UIElementProtocol *)uiElement updateCache:94003];
  v6 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94003 parameter:markerCopy];

  return v6;
}

- (_NSRange)rangeForTextMarker:(id)marker
{
  v8 = xmmword_10017E110;
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94012 parameter:marker];
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == AXValueGetTypeID() && AXValueGetType(v4) == kAXValueTypeCFRange)
    {
      AXValueGetValue(v4, kAXValueTypeCFRange, &v8);
    }
  }

  v7 = *(&v8 + 1);
  v6 = v8;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)isCameraIrisOpen
{
  [(UIElementProtocol *)self->_uiElement updateCache:3008];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:3008];
}

- (BOOL)isTourGuideRunning
{
  [(UIElementProtocol *)self->_uiElement updateCache:2500];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2500];
}

- (id)textMarkersForRange:(_NSRange)range
{
  94014 = [(VOTElement *)self objectForRange:range.location withParameterizedAttribute:range.length, 94014];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 94014;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)textOperationsAvailable
{
  if ([(VOTElement *)self doesHaveTraits:kAXTextOperationsAvailableTrait])
  {
    return 1;
  }

  v4 = kAXWebContentTrait;
  if (![(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
  {
    return 0;
  }

  v5 = [(VOTElement *)self elementForAttribute:2011];
  if ([v5 doesHaveTraits:v4])
  {
    textOperationsAvailable = 0;
  }

  else
  {
    textOperationsAvailable = [v5 textOperationsAvailable];
  }

  return textOperationsAvailable;
}

- (CGRect)textMarkerFrame:(id)frame
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94000 parameter:frame];
  if (v3 && (v4 = v3, v5 = CFGetTypeID(v3), v5 == AXValueGetTypeID()))
  {
    origin = 0;
    v12 = 0;
    AXValueGetValue(v4, kAXValueTypeCGRect, &origin);
  }

  else
  {
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v12 = size;
  }

  y = origin.y;
  x = origin.x;
  height = v12.height;
  width = v12.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)textMarkerArrayOfText:(id)text
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94001 parameter:text];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        v11 = v8;
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = CFGetTypeID(v12);
        TypeID = AXUIElementGetTypeID();
        v8 = v13 != TypeID;
        if (v13 == TypeID)
        {
          v17 = [VOTElement _elementWithAXUIElementRef:v12, v19];
          [v4 addObject:v17];
        }

        else if (v11)
        {
          lastObject = [v4 lastObject];
          v16 = [lastObject stringByAppendingString:v12];
          [v4 replaceObjectAtIndex:objc_msgSend(v4 withObject:{"count") - 1, v16}];
        }

        else
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)headerElementsForColumn:(unint64_t)column
{
  v4 = [NSNumber numberWithUnsignedInteger:column];
  v5 = [(VOTElement *)self elementsForAttribute:95233 withParameter:v4];

  return v5;
}

- (id)headerElementsForRow:(unint64_t)row
{
  v4 = [NSNumber numberWithUnsignedInteger:row];
  v5 = [(VOTElement *)self elementsForAttribute:95234 withParameter:v4];

  return v5;
}

- (void)addTitleElementToCache:(id)cache
{
  cacheCopy = cache;
  v4 = objc_getAssociatedObject(self, &unk_1001FEA78);
  if (!v4)
  {
    v4 = [objc_allocWithZone(NSMutableSet) init];
    objc_setAssociatedObject(self, &unk_1001FEA78, v4, 1);
  }

  [v4 addObject:cacheCopy];
}

- (BOOL)elementActsAsTitleElement:(id)element
{
  elementCopy = element;
  v5 = objc_getAssociatedObject(self, &unk_1001FEA78);
  v6 = [v5 containsObject:elementCopy];

  return v6;
}

- (id)bundleIdentifier
{
  bundleIdentifier = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:3003];
  if (!bundleIdentifier)
  {
    application = [(VOTElement *)self application];
    if ([application isEqual:self])
    {
      bundleIdentifier = 0;
    }

    else
    {
      bundleIdentifier = [application bundleIdentifier];
    }
  }

  return bundleIdentifier;
}

- (BOOL)isLiveCaptionsTextView
{
  identifier = [(VOTElement *)self identifier];
  if ([identifier isEqualToString:@"AXLCCaptionText"])
  {
    v4 = 1;
  }

  else
  {
    identifier2 = [(VOTElement *)self identifier];
    if ([identifier2 isEqualToString:@"AXLCCaptionParagraphText"])
    {
      v4 = 1;
    }

    else
    {
      identifier3 = [(VOTElement *)self identifier];
      v4 = [identifier3 isEqualToString:@"AXLCAppName"];
    }
  }

  return v4;
}

- (BOOL)isLiveCaptionsParagraphView
{
  identifier = [(VOTElement *)self identifier];
  v3 = [identifier isEqualToString:@"AXLCCaptionParagraphText"];

  return v3;
}

- (BOOL)isSpringBoard
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)isChronod
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.chronod"];

  return v3;
}

- (BOOL)isPineBoard
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.PineBoard"];

  return v3;
}

- (BOOL)isHeadBoard
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.HeadBoard"];

  return v3;
}

- (BOOL)isSystemApp
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)isSetupBuddy
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

  return v3;
}

- (BOOL)isMobilePhone
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.mobilephone"];

  return v3;
}

- (BOOL)isSafari
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

  return v3;
}

- (BOOL)isGoogleChrome
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.google.chrome.ios"];

  return v3;
}

- (BOOL)isAssistiveTouch
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.assistivetouchd"];

  return v3;
}

- (BOOL)isAccessibilitySystemUIServer
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.AccessibilityUIServer"];

  return v3;
}

- (BOOL)isMail
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:AX_MobileMailBundleName];

  return v3;
}

- (BOOL)isMaps
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.Maps"];

  return v3;
}

- (BOOL)isIBooks
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.iBooks"];

  return v3;
}

- (BOOL)isSpotlight
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:AX_SpotlightBundleName];

  return v3;
}

- (BOOL)isClipViewService
{
  bundleIdentifier = [(VOTElement *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:AX_ClipViewServiceName];

  return v3;
}

- (BOOL)isHandUI
{
  windowSceneIdentifier = [(VOTElement *)self windowSceneIdentifier];
  v3 = [windowSceneIdentifier hasPrefix:@"com.apple.RealityHUD.HandScene"];

  return v3;
}

- (BOOL)isSafariScribbleActive
{
  isSafari = [(VOTElement *)self isSafari];
  if (isSafari)
  {
    application = [(VOTElement *)self application];
    uiElement = [application uiElement];
    v6 = [uiElement BOOLWithAXAttribute:5073];

    LOBYTE(isSafari) = v6;
  }

  return isSafari;
}

- (BOOL)performScribbleAction
{
  v3 = VOTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Scribble] hiding element", buf, 2u);
  }

  elementManager = [VOTSharedWorkspace elementManager];
  safariScribbleManager = [elementManager safariScribbleManager];

  lastFetchedElement = [safariScribbleManager lastFetchedElement];

  if (lastFetchedElement)
  {
    [(UIElementProtocol *)self->_uiElement performAXAction:4200];
    v7 = +[VOTOutputManager outputManager];
    v8 = +[VOSOutputEvent FolderDidClose];
    [v7 sendEvent:v8];

    v9 = +[AXHapticFeedbackManager sharedManager];
    [v9 playHapticFeedbackForType:12];

    [safariScribbleManager hideSelectedElement];
  }

  else
  {
    v10 = VOTLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Scribble] cannot hide element, none selected", v12, 2u);
    }
  }

  return lastFetchedElement != 0;
}

- (void)clearSelectedScribbleElement
{
  elementManager = [VOTSharedWorkspace elementManager];
  safariScribbleManager = [elementManager safariScribbleManager];

  lastFetchedElement = [safariScribbleManager lastFetchedElement];

  if (lastFetchedElement)
  {
    application = [(VOTElement *)self application];
    uiElement = [application uiElement];
    [uiElement performAXAction:4201];

    [safariScribbleManager setLastFetchedElement:0];
    v7 = sub_1000511CC(off_1001FDDE0, @"scribble.cleared.selection", 0);
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    v9 = sub_1000095FC(v7, 1, selectedLanguage);
  }
}

- (id)scribbleAreaForSearchPoint:(int64_t)point
{
  if (![(VOTElement *)self isSafari])
  {
    goto LABEL_21;
  }

  valuePtr = CGPointZero;
  if (point <= 1)
  {
    if (point)
    {
      if (point != 1)
      {
        goto LABEL_17;
      }

      [(VOTElement *)self frame];
    }

    else
    {
      [(VOTElement *)self centerPoint];
    }

    v18 = v10;
    MinY = v11;
    valuePtr.x = v18;
  }

  else
  {
    if (point == 2)
    {
      [(VOTElement *)self frame];
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
      MaxX = CGRectGetMaxX(v32);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      MinY = CGRectGetMinY(v33);
    }

    else
    {
      if (point == 3)
      {
        [(VOTElement *)self frame];
        v5 = v34.origin.x;
        v6 = v34.origin.y;
        v7 = v34.size.width;
        v8 = v34.size.height;
        MinX = CGRectGetMinX(v34);
      }

      else
      {
        if (point != 4)
        {
          goto LABEL_17;
        }

        [(VOTElement *)self frame];
        v5 = v31.origin.x;
        v6 = v31.origin.y;
        v7 = v31.size.width;
        v8 = v31.size.height;
        MinX = CGRectGetMaxX(v31);
      }

      MaxX = MinX;
      v35.origin.x = v5;
      v35.origin.y = v6;
      v35.size.width = v7;
      v35.size.height = v8;
      MinY = CGRectGetMaxY(v35);
    }

    valuePtr.x = MaxX;
  }

  valuePtr.y = MinY;
LABEL_17:
  remoteParent = [(VOTElement *)self remoteParent];

  if (!remoteParent)
  {
LABEL_21:
    v25 = 0;
    goto LABEL_26;
  }

  application = [(VOTElement *)self application];
  uiElement = [application uiElement];
  v22 = [uiElement objectWithAXAttribute:94100 parameter:{AXValueCreate(kAXValueTypeCGPoint, &valuePtr)}];

  if (v22)
  {
    if ([v22 objectForKey:@"AXScribbleGeometryKey"])
    {
      v27 = 0u;
      v28 = 0u;
      AXValueGetValue([v22 objectForKey:@"AXScribbleGeometryKey"], kAXValueTypeCGRect, &v27);
      v23 = [AXScribbleElement alloc];
      v24 = [v22 objectForKey:@"AXScribbleRenderedTextKey"];
      v25 = [v23 initWithText:v24 geometry:{v27, v28}];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_26:

  return v25;
}

- (id)elementAtRow:(int64_t)row andColumn:(int64_t)column
{
  v7 = objc_allocWithZone(NSArray);
  v8 = [NSNumber numberWithInteger:row];
  v9 = [NSNumber numberWithInteger:column];
  v10 = [v7 initWithObjects:{v8, v9, 0}];

  v11 = [(VOTElement *)self elementForParameterizedAttribute:92511 parameter:v10];

  return v11;
}

- (_NSRange)rowRange
{
  v2 = [(UIElementProtocol *)self->_uiElement rangeWithAXAttribute:2027];
  result.length = v3;
  result.location = v2;
  return result;
}

- (BOOL)isContainedByPreferredNativeFocusElement
{
  [(UIElementProtocol *)self->_uiElement updateCache:2162];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2162];
}

- (BOOL)allowsActivationWithoutBeingNativeFocused
{
  [(UIElementProtocol *)self->_uiElement updateCache:2199];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2199];
}

- (_NSRange)columnRange
{
  v2 = [(UIElementProtocol *)self->_uiElement rangeWithAXAttribute:2028];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)indexPathAsRange
{
  v2 = [(UIElementProtocol *)self->_uiElement rangeWithAXAttribute:2078];
  result.length = v3;
  result.location = v2;
  return result;
}

- (BOOL)isSoftwareKeyboardActive
{
  [(UIElementProtocol *)self->_uiElement updateCache:3005];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:3005];
}

- (BOOL)usingHardwareKeyboard
{
  [(UIElementProtocol *)self->_uiElement updateCache:3007];
  v3 = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:3007];
  v4 = [v3 isEqualToString:@"hardware"];

  return v4;
}

- (int64_t)valueChangeOriginationSource
{
  [(UIElementProtocol *)self->_uiElement updateCache:3007];
  v3 = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:3007];
  v4 = [(VOTElement *)self _changeOriginatorForSourceName:v3];

  return v4;
}

- (BOOL)usingBrailleHardwareKeyboard
{
  [(UIElementProtocol *)self->_uiElement updateCache:3007];
  v3 = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:3007];
  v4 = [v3 isEqualToString:@"braillehardware"];

  return v4;
}

- (BOOL)isKeyboardActiveOrAttached
{
  application = [(VOTElement *)self application];
  v3 = ([application isSoftwareKeyboardActive] & 1) != 0 || GSEventIsHardwareKeyboardAttached() != 0;

  return v3;
}

- (int64_t)applicationOrientation
{
  [(UIElementProtocol *)self->_uiElement updateCache:1503];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:1503];
  intValue = [v3 intValue];

  return intValue;
}

- (BOOL)isSystemSleeping
{
  [(UIElementProtocol *)self->_uiElement updateCache:1507];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:1507];
}

- (BOOL)isAlarmRinging
{
  [(UIElementProtocol *)self->_uiElement updateCache:1515];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:1515];
}

- (BOOL)isSystemLocked
{
  [(UIElementProtocol *)self->_uiElement updateCache:1500];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:1500];
}

- (BOOL)isSystemBatteryLow
{
  [(UIElementProtocol *)self->_uiElement updateCache:1504];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:1504];
}

- (id)launchableApps
{
  [(UIElementProtocol *)self->_uiElement updateCache:1508];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:1508];
}

- (id)appSwitcherApps
{
  [(UIElementProtocol *)self->_uiElement updateCache:1509];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:1509];
}

- (id)occludedMultitaskingApps
{
  [(UIElementProtocol *)self->_uiElement updateCache:1520];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:1520];
}

- (id)frontmostItemContainer
{
  [(UIElementProtocol *)self->_uiElement updateCache:1521];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:1521];
}

- (id)activeSceneIdentifier
{
  [(UIElementProtocol *)self->_uiElement updateCache:1523];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:1523];
}

- (id)appIconValues
{
  [(UIElementProtocol *)self->_uiElement updateCache:1518];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:1518];
}

- (CGPoint)centerPointOfScreen
{
  [(UIElementProtocol *)self->_uiElement pointWithAXAttribute:1512];
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)isVoiceControlRunning
{
  [(UIElementProtocol *)self->_uiElement updateCache:1501];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:1501];
}

- (BOOL)isDictationListening
{
  [(UIElementProtocol *)self->_uiElement updateCache:3010];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:3010];
}

- (id)currentHardwareKeyboardLayout
{
  [(UIElementProtocol *)self->_uiElement updateCache:3013];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:3013];
}

- (id)currentSoftwareKeyboardLanguage
{
  [(UIElementProtocol *)self->_uiElement updateCache:3019];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:3019];
}

- (id)currentSoftwareKeyboardLayout
{
  if (![(VOTElement *)self isApplication])
  {
    _AXAssert();
  }

  [(UIElementProtocol *)self->_uiElement updateCache:3018];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:3018];
}

- (CGPoint)contentOffset
{
  [(UIElementProtocol *)self->_uiElement updateCache:5064];
  uiElement = self->_uiElement;

  [(UIElementProtocol *)uiElement pointWithAXAttribute:5064];
  result.y = v5;
  result.x = v4;
  return result;
}

- (BOOL)isSiriTalkingOrListening
{
  if (AXDeviceIsAudioAccessory())
  {
    return [VOTSharedWorkspace systemVisualizationState] == 14;
  }

  if ([VOTSharedWorkspace isSiriTalking])
  {
    return 1;
  }

  v3 = VOTSharedWorkspace;

  return [v3 isSiriListening];
}

- (BOOL)isSystemWideGestureInProgress
{
  [(UIElementProtocol *)self->_uiElement updateCache:1506];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:1506];
}

- (BOOL)showBulletinBoard:(BOOL)board
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithBool:board];
  LOBYTE(uiElement) = [(UIElementProtocol *)uiElement performAXAction:5000 withValue:v4];

  return uiElement;
}

- (BOOL)showControlCenter:(BOOL)center
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithBool:center];
  LOBYTE(uiElement) = [(UIElementProtocol *)uiElement performAXAction:5014 withValue:v4];

  return uiElement;
}

- (id)firstElementInStatusBar
{
  [(UIElementProtocol *)self->_uiElement updateCache:3011];
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:3011];
  v4 = [AXUIElement uiElementWithAXElement:v3];

  v5 = [objc_allocWithZone(VOTElement) initWithUIElement:v4];

  return v5;
}

- (CGRect)convertRect:(CGRect)rect fromContextId:(unsigned int)id
{
  valuePtr = rect;
  v6 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
  uiElement = self->_uiElement;
  v8 = [NSNumber numberWithUnsignedInteger:id];
  v9 = [(UIElementProtocol *)uiElement objectWithAXAttribute:91505 parameter:[NSArray arrayWithObjects:v6, v8, 0]];

  if (v6)
  {
    CFRelease(v6);
  }

  if (v9)
  {
    AXValueGetValue(v9, kAXValueTypeCGRect, &valuePtr);
  }

  width = valuePtr.size.width;
  height = valuePtr.size.height;
  x = valuePtr.origin.x;
  y = valuePtr.origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id
{
  AXConvertPointToHostedCoordinates();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id
{
  AXConvertPointFromHostedCoordinates();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPath)convertPath:(CGPath *)path fromContextId:(unsigned int)id
{
  v4 = *&id;
  v6 = +[AXElement systemWideElement];
  v7 = [v6 convertPath:path fromContextId:v4];

  return v7;
}

- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id fromDisplayId:(unsigned int)displayId
{
  _AXConvertRectToHostedCoordinates(*&id, *&displayId, frame.origin, *&frame.origin.y, frame.size, *&frame.size.height);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGPath)convertPath:(CGPath *)path fromContextId:(unsigned int)id fromDisplayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  v8 = +[AXElement systemWideElement];
  v9 = [v8 convertPath:path fromContextId:v6 displayId:v5];

  return v9;
}

- (id)lastElementInStatusBar
{
  [(UIElementProtocol *)self->_uiElement updateCache:3012];
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:3012];
  v4 = [AXUIElement uiElementWithAXElement:v3];

  v5 = [objc_allocWithZone(VOTElement) initWithUIElement:v4];

  return v5;
}

- (BOOL)isElementFirstElement:(BOOL)element orLastElement:(BOOL)lastElement withType:(unint64_t)type
{
  lastElementCopy = lastElement;
  if (element)
  {
    v8 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92509 parameter:[NSNumber numberWithUnsignedLong:type]];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      return bOOLValue;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  if (lastElementCopy)
  {
    v10 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92510 parameter:[NSNumber numberWithUnsignedLong:type]];
    bOOLValue2 = [v10 BOOLValue];

    return bOOLValue2;
  }

  return bOOLValue;
}

- (NSString)description
{
  uiElement = self->_uiElement;
  label = [(VOTElement *)self label];
  [(VOTElement *)self frame];
  v5 = NSStringFromRect(v11);
  application = [(VOTElement *)self application];
  bundleIdentifier = [application bundleIdentifier];
  v8 = [NSString stringWithFormat:@"VOTElement %p { %@ } %@ %@ %@", self, uiElement, label, v5, bundleIdentifier];

  return v8;
}

- (NSString)toggleStatusLabel
{
  if (![(VOTElement *)self doesHaveTraits:kAXToggleTrait])
  {
    v12 = 0;
    goto LABEL_20;
  }

  isSwitch = [(VOTElement *)self isSwitch];
  v4 = [(VOTElement *)self doesHaveTraits:kAXWebContentTrait];
  value = [(VOTElement *)self value];
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  if (([value isEqualToString:@"0"] & 1) != 0 || isSwitch && objc_msgSend(value, "isEqualToString:", @"2"))
  {
    v7 = off_1001FDDD0;
    v8 = (v4 & (isSwitch ^ 1)) == 0;
    if ((v4 & (isSwitch ^ 1)) != 0)
    {
      v9 = @"element.unchecked.text";
    }

    else
    {
      v9 = @"element.off.text";
    }

    v10 = @"off";
    v11 = @"unchecked";
    goto LABEL_15;
  }

  if ([value isEqualToString:@"1"])
  {
    v7 = off_1001FDDD0;
    v8 = (v4 & (isSwitch ^ 1)) == 0;
    if ((v4 & (isSwitch ^ 1)) != 0)
    {
      v9 = @"element.checked.text";
    }

    else
    {
      v9 = @"element.on.text";
    }

    v10 = @"on";
    v11 = @"checked";
LABEL_15:
    if (v8)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    goto LABEL_18;
  }

  if (![value isEqualToString:@"2"])
  {
    v14 = value;
    goto LABEL_19;
  }

  v7 = off_1001FDDD0;
  v9 = @"element.mixed.text";
  v13 = @"mixed";
LABEL_18:
  v14 = sub_1000516CC(v7, v9, v13, selectedLanguage);
LABEL_19:
  v12 = v14;

LABEL_20:

  return v12;
}

- (VOTElementUniqueIdentification)uniqueIdentification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  uniqueIdentification = selfCopy->_uniqueIdentification;
  if (uniqueIdentification)
  {
    v4 = [(VOTElementUniqueIdentification *)uniqueIdentification copy];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  if (!v4)
  {
    v4 = [VOTElementUniqueIdentification identificationFromElement:selfCopy];
    v5 = selfCopy;
    objc_sync_enter(v5);
    v6 = [v4 copy];
    v7 = selfCopy->_uniqueIdentification;
    selfCopy->_uniqueIdentification = v6;

    objc_sync_exit(v5);
  }

  return v4;
}

- (BOOL)webSearchResultsActive
{
  [(UIElementProtocol *)self->_uiElement updateCache:2032];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2032];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)nonPersistentUniqueId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIElementProtocol *)self->_uiElement axElement];
    v3 = _AXUIElementIDForElement();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (BOOL)isApplication
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uiElement = self->_uiElement;

    return [(UIElementProtocol *)uiElement isApplication];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      axElement = [(UIElementProtocol *)self->_uiElement axElement];
      _AXUIElementIDForElement();
      v7 = v6;
      pid = 0;
      AXUIElementGetPid(axElement, &pid);
      return v7 == kAXApplicationUID && pid >= 0;
    }

    else
    {
      return 0;
    }
  }
}

- (int)applicationInterfaceOrientation
{
  [(UIElementProtocol *)self->_uiElement updateCache:3035];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:3035];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (CGRect)convertAccessibilityFrameToScreenCoordinates:(CGRect)coordinates
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  [(UIElementProtocol *)self->_uiElement updateCache:2021];
  windowContextId = [(VOTElement *)self windowContextId];
  v9 = +[VOTElement systemWideElement];
  [v9 convertRect:windowContextId fromContextId:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

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

- (NSString)visibleText
{
  uiElement = [(VOTElement *)self uiElement];
  v4 = [uiElement stringWithAXAttribute:3053];

  if (![v4 length])
  {
    staticTextString = [(VOTElement *)self staticTextString];

    v4 = staticTextString;
  }

  return v4;
}

- (id)staticTextString
{
  v3 = +[NSMutableString string];
  value = [(VOTElement *)self value];
  if ([(VOTElement *)self doesHaveTraits:kAXToggleTrait])
  {
    toggleStatusLabel = [(VOTElement *)self toggleStatusLabel];
    if ([toggleStatusLabel length])
    {
      v6 = toggleStatusLabel;

      value = v6;
    }
  }

  if (!-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXTextAreaTrait) || ![value length])
  {
    label = [(VOTElement *)self label];
    [v3 appendStringWithComma:label];
  }

  [v3 appendStringWithComma:value];
  staticRecognitionText = [(VOTElement *)self staticRecognitionText];
  [v3 appendStringWithComma:staticRecognitionText];

  return v3;
}

- (id)visionFeatureDescriptionOptions
{
  v2 = +[AXSettings sharedInstance];
  voiceOverDiscoveredSensitiveContentFeedback = [v2 voiceOverDiscoveredSensitiveContentFeedback];

  v8[0] = AXMFeatureDescriptionOptionLocale;
  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  v9[0] = v4;
  v8[1] = AXMFeatureDescriptionOptionModifyForSensitiveContent;
  v5 = [NSNumber numberWithInt:voiceOverDiscoveredSensitiveContentFeedback == 0];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)staticRecognitionText
{
  v18 = +[NSMutableString string];
  visionEngine = [VOTSharedWorkspace visionEngine];
  v4 = [visionEngine resultsForElement:self];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        visionFeatureDescriptionOptions = [(VOTElement *)self visionFeatureDescriptionOptions];
        v12 = [v10 detectedFeatureDescriptionWithOptions:visionFeatureDescriptionOptions];

        if ([v12 length])
        {
          v13 = [[AXAttributedString alloc] initWithString:v12];
          captionFeatures = [v10 captionFeatures];
          v15 = [captionFeatures count];

          if (AXRuntimeCheck_MediaAnalysisSupport())
          {
            mediaAnalysisImageCaptionFeatures = [v10 mediaAnalysisImageCaptionFeatures];
            v15 = [mediaAnalysisImageCaptionFeatures count];
          }

          if (v15)
          {
            [v13 setAttribute:@"en" forKey:UIAccessibilityTokenLanguage];
          }

          [v18 appendStringWithComma:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v18;
}

- (id)dragSourceDescriptorDictionaries
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement arrayWithAXAttribute:2175];
  v4 = [v3 axFilterObjectsUsingBlock:&stru_1001C7C68];

  return v4;
}

- (id)cachedDragCustomActions
{
  dragSourceDescriptorDictionaries = [(VOTElement *)self dragSourceDescriptorDictionaries];
  v4 = [(UIElementProtocol *)self->_uiElement BOOLWithAXAttribute:2177];
  if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait]&& ([(VOTElement *)self doesHaveTraits:kAXLinkTrait]|| (([(VOTElement *)self doesHaveTraits:kAXImageTrait]| v4) & 1) != 0))
  {
    remoteParent = [(VOTElement *)self remoteParent];

    if (remoteParent)
    {
      remoteParent2 = [(VOTElement *)self remoteParent];
      touchContainer = [remoteParent2 touchContainer];
      uiElement = [touchContainer uiElement];
      remoteParent = [VOTElement elementWithUIElement:uiElement];

      dragSourceDescriptorDictionaries2 = [remoteParent dragSourceDescriptorDictionaries];

      v10 = 1;
      dragSourceDescriptorDictionaries = dragSourceDescriptorDictionaries2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
    remoteParent = 0;
  }

  v11 = +[NSMutableArray array];
  AXNamesForDrags();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023430;
  v18[3] = &unk_1001C7C90;
  v19 = v23 = v10;
  selfCopy = self;
  v21 = remoteParent;
  v12 = v11;
  v22 = v12;
  v13 = remoteParent;
  v14 = v19;
  [dragSourceDescriptorDictionaries enumerateObjectsUsingBlock:v18];
  v15 = v22;
  v16 = v12;

  return v12;
}

- (id)dragCustomActions
{
  [(UIElementProtocol *)self->_uiElement updateCache:2175];

  return [(VOTElement *)self cachedDragCustomActions];
}

- (id)dropPointDescriptorDictionaries
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement arrayWithAXAttribute:2176];
  v4 = [v3 axFilterObjectsUsingBlock:&stru_1001C7CB0];

  return v4;
}

- (id)cachedDropCustomActions
{
  dropPointDescriptorDictionaries = [(VOTElement *)self dropPointDescriptorDictionaries];
  v3 = +[NSMutableArray array];
  AXNamesForDrops();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002395C;
  v10 = v9[3] = &unk_1001C7CD8;
  v4 = v3;
  v11 = v4;
  v5 = v10;
  [dropPointDescriptorDictionaries enumerateObjectsUsingBlock:v9];
  v6 = v11;
  v7 = v4;

  return v4;
}

- (id)dropCustomActions
{
  [(UIElementProtocol *)self->_uiElement updateCache:2176];

  return [(VOTElement *)self cachedDropCustomActions];
}

- (BOOL)activateDragWithDescriptorDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uiElement = [(VOTElement *)self uiElement];
  v8[0] = AXDragServiceNameVoiceOver;
  v8[1] = dictionaryCopy;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  LOBYTE(self) = [uiElement performAXAction:2050 withValue:v6];
  return self;
}

- (BOOL)prefersContextlessPassthrough
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:2174];

  return v3;
}

- (BOOL)shouldSpeakMathEquationTrait
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:2402];

  return v3;
}

- (BOOL)shouldExpandMathEquation
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:2403];

  return v3;
}

- (id)elementCommunityIdentifier
{
  uiElement = [(VOTElement *)self uiElement];
  v3 = [uiElement stringWithAXAttribute:2100];

  return v3;
}

- (id)chartDescriptor
{
  chartElement = [(VOTElement *)self chartElement];
  objc_opt_class();
  uiElement = [chartElement uiElement];
  v4 = [uiElement objectWithAXAttribute:2711];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [[AXMChartDescriptor alloc] initWithDictionary:v5];

  return v6;
}

- (NSString)chartStructureDescription
{
  chartElement = [(VOTElement *)self chartElement];
  uiElement = [chartElement uiElement];
  v4 = [uiElement stringWithAXAttribute:2718];

  return v4;
}

- (id)dataSeriesName
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v4 = [uiElement stringWithAXAttribute:2702];

  return v4;
}

- (int64_t)dataSeriesType
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v4 = [uiElement numberWithAXAttribute:2703];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)supportsAudiographActions
{
  v3 = AXDeviceSupportsSonification();
  if (v3)
  {
    if ([(VOTElement *)self supportsDataSeriesSonification]|| [(VOTElement *)self supportsDataSeriesSummarization])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(VOTElement *)self supportsAudiographs];
    }
  }

  return v3;
}

- (BOOL)supportsDataSeriesSummarization
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v4 = [uiElement BOOLWithAXAttribute:2705];

  return v4;
}

- (BOOL)supportsDataSeriesSonification
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v4 = [uiElement BOOLWithAXAttribute:2706];

  return v4;
}

- (BOOL)supportsAudiographs
{
  uiElement = [(VOTElement *)self uiElement];
  v4 = [uiElement BOOLWithAXAttribute:2713];

  uiElement2 = [(VOTElement *)self uiElement];
  v6 = [uiElement2 objectWithAXAttribute:2714];

  if (v6)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (BOOL)includesTrendlineInSonification
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v4 = [uiElement BOOLWithAXAttribute:2707];

  return v4;
}

- (double)dataSeriesSonificationPlaybackDuration
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v4 = [uiElement numberWithAXAttribute:2704];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (id)dataSeriesValuesForAxis:(int64_t)axis
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  v5 = [NSNumber numberWithLong:axis];
  v6 = [dataSeriesElement arrayForParameterizedAttribute:95239 parameter:v5];

  return v6;
}

- (id)dataSeriesTitleForAxis:(int64_t)axis
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  v5 = [NSNumber numberWithLong:axis];
  v6 = [dataSeriesElement stringForParameterizedAttribute:95240 parameter:v5];

  if (![v6 length])
  {
    if (axis)
    {
      v7 = @"search.rotor.audiograph.axis.y";
    }

    else
    {
      v7 = @"search.rotor.audiograph.axis.x";
    }

    v8 = sub_1000511CC(off_1001FDDD0, v7, 0);

    v6 = v8;
  }

  return v6;
}

- (double)dataSeriesMinimumValueForAxis:(int64_t)axis
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v6 = [uiElement objectWithAXAttribute:95241 parameter:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", axis)}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = -1.79769313e308;
  }

  return v8;
}

- (double)dataSeriesMaximumValueForAxis:(int64_t)axis
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v6 = [uiElement objectWithAXAttribute:95242 parameter:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", axis)}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  return v8;
}

- (id)dataSeriesUnitsLabelForAxis:(int64_t)axis
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  uiElement = [dataSeriesElement uiElement];
  v6 = [uiElement objectWithAXAttribute:95244 parameter:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", axis)}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dataSeriesGridlinePositionsForAxis:(int64_t)axis
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  v5 = [NSNumber numberWithLong:axis];
  v6 = [dataSeriesElement arrayForParameterizedAttribute:95243 parameter:v5];

  return v6;
}

- (id)dataSeriesCategoryLabelsForAxis:(int64_t)axis
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  v5 = [NSNumber numberWithLong:axis];
  v6 = [dataSeriesElement arrayForParameterizedAttribute:95245 parameter:v5];

  return v6;
}

- (id)dataSeriesXAxisValueDescriptionForPosition:(double)position
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  v5 = [dataSeriesElement stringForParameterizedAttribute:95247 parameter:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", position)}];

  return v5;
}

- (id)dataSeriesYAxisValueDescriptionForPosition:(double)position
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  v5 = [dataSeriesElement stringForParameterizedAttribute:95248 parameter:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", position)}];

  return v5;
}

- (id)dataSeriesAxesDescription
{
  dataSeriesElement = [(VOTElement *)self dataSeriesElement];
  v4 = [dataSeriesElement dataSeriesTitleForAxis:0];
  v5 = [dataSeriesElement dataSeriesTitleForAxis:1];
  v6 = [dataSeriesElement dataSeriesUnitsLabelForAxis:0];
  v37 = [dataSeriesElement dataSeriesUnitsLabelForAxis:1];
  [dataSeriesElement dataSeriesMinimumValueForAxis:0];
  v35 = [NSNumber numberWithDouble:?];
  [dataSeriesElement dataSeriesMaximumValueForAxis:0];
  v7 = [NSNumber numberWithDouble:?];
  [dataSeriesElement dataSeriesMinimumValueForAxis:1];
  v34 = [NSNumber numberWithDouble:?];
  [dataSeriesElement dataSeriesMaximumValueForAxis:1];
  v8 = [NSNumber numberWithDouble:?];
  language = [(VOTElement *)self language];
  sub_1000511CC(off_1001FDDD0, @"search.rotor.audiograph.axes.description.format", language);
  v33 = v10 = v4;
  v32 = [NSString stringWithFormat:v4, v5];
  v11 = [dataSeriesElement dataSeriesXAxisValueDescriptionForPosition:0.0];
  v12 = [dataSeriesElement dataSeriesXAxisValueDescriptionForPosition:1.0];
  v36 = v6;
  v31 = v5;
  v29 = language;
  v30 = v7;
  if ([v11 length] && objc_msgSend(v12, "length"))
  {
    v13 = sub_1000511CC(off_1001FDDD0, @"search.rotor.audiograph.axes.hint.format.no.units", language);
    v14 = v8;
    v15 = v34;
    v16 = [NSString stringWithFormat:v13, v5, v34, v8, v10, v11, v12];
    v17 = v35;
  }

  else
  {
    if ([v6 length] && objc_msgSend(v37, "length"))
    {
      v13 = sub_1000511CC(off_1001FDDD0, @"search.rotor.audiograph.axes.hint.format", language);
      v27 = v7;
      v28 = v6;
      v26 = v6;
      v17 = v35;
      v24 = v10;
      v25 = v35;
      v22 = v8;
      v23 = v37;
      v14 = v8;
      v21 = v37;
    }

    else
    {
      v13 = sub_1000511CC(off_1001FDDD0, @"search.rotor.audiograph.axes.hint.format.no.units", language);
      v24 = v7;
      v17 = v35;
      v22 = v10;
      v23 = v35;
      v14 = v8;
      v21 = v8;
    }

    v15 = v34;
    v16 = [NSString stringWithFormat:v13, v5, v34, v21, v22, v23, v24, v25, v26, v27, v28];
  }

  v38[0] = v32;
  v38[1] = v16;
  v18 = [NSArray arrayWithObjects:v38 count:2];
  v19 = [v18 componentsJoinedByString:{@", "}];

  return v19;
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  v4 = +[AXSpringBoardServer server];
  [v4 setOrientation:orientation];
}

- (void)setRotationCapabilityEnabled:(BOOL)enabled
{
  v4 = [objc_allocWithZone(NSNumber) initWithBool:enabled];
  [(UIElementProtocol *)self->_uiElement performAXAction:5009 withValue:v4];
}

- (void)setEventCaptureMode:(int)mode
{
  v4 = [objc_allocWithZone(NSNumber) initWithInt:*&mode];
  [(UIElementProtocol *)self->_uiElement performAXAction:5003 withValue:v4];
}

- (void)unsetEventCaptureMode:(int)mode
{
  v4 = [objc_allocWithZone(NSNumber) initWithInt:*&mode];
  [(UIElementProtocol *)self->_uiElement performAXAction:5022 withValue:v4];
}

- (BOOL)dispatchKeyboardEvent:(id)event
{
  uiElement = self->_uiElement;
  dataRepresentation = [event dataRepresentation];
  LOBYTE(uiElement) = [(UIElementProtocol *)uiElement performAXAction:2034 withValue:dataRepresentation];

  return uiElement;
}

- (void)repostEvent:(id)event
{
  eventCopy = event;
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v4 = +[VOTWorkspace sharedWorkspace];
    [v4 notePostedEventForUnitTesting:eventCopy];
  }

  [eventCopy setSenderID:0x8000000817319373];
  uiElement = self->_uiElement;
  dataRepresentation = [eventCopy dataRepresentation];
  [(UIElementProtocol *)uiElement performAXAction:5002 withValue:dataRepresentation];
}

- (void)notifyAnnouncementFinishedWithString:(id)string didFinishSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  stringCopy = string;
  if (stringCopy)
  {
    v7 = stringCopy;
  }

  else
  {
    v7 = &stru_1001CBF90;
  }

  v10[0] = @"String";
  v10[1] = @"DidFinish";
  v11[0] = v7;
  v8 = [NSNumber numberWithBool:successfullyCopy];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(UIElementProtocol *)self->_uiElement performAXAction:2025 withValue:v9];
}

- (BOOL)performSimpleTapAtPoint:(CGPoint)point withForce:(double)force withContextId:(unsigned int)id withDelay:(float)delay forElement:(id)element
{
  v8 = *&id;
  pointCopy = point;
  elementCopy = element;
  v12 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  [(VOTElement *)self updateTouchForceSounds:force, *&pointCopy.x, *&pointCopy.y];
  secureName = [elementCopy secureName];
  if (!secureName)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v14 = secureName;
  uiElement = [elementCopy uiElement];
  v16 = [uiElement stringWithAXAttribute:2001];

  if (byte_1001FEA79)
  {
    if (off_1001FEA80)
    {
LABEL_4:
      currentLocalization = [elementCopy currentLocalization];
      v18 = off_1001FEA80(v14, currentLocalization);
      v19 = [v16 isEqualToString:v18];

      if (v19)
      {
        v20 = v14;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v31[0] = 0;
    if (!qword_1001FEA88)
    {
      v31[1] = _NSConcreteStackBlock;
      v31[2] = 3221225472;
      v31[3] = sub_1000262D4;
      v31[4] = &unk_1001C78B0;
      v31[5] = v31;
      v34 = off_1001C7CF8;
      v35 = 0;
      qword_1001FEA88 = _sl_dlopen();
    }

    v21 = qword_1001FEA88;
    if (!qword_1001FEA88)
    {
      sub_1001289BC(v31);
    }

    if (v31[0])
    {
      free(v31[0]);
    }

    off_1001FEA80 = dlsym(v21, "UISLocalizedStringForSecureName");
    byte_1001FEA79 = 1;
    if (off_1001FEA80)
    {
      goto LABEL_4;
    }
  }

  v20 = 0;
LABEL_15:

LABEL_16:
  v33[0] = v12;
  v32[0] = kAXSimulatePressAtPointActionKeyPoint;
  v32[1] = kAXSimulatePressAtPointActionKeyForce;
  v22 = [NSNumber numberWithDouble:force];
  v33[1] = v22;
  v32[2] = kAXSimulatePressAtPointActionKeyWindowContextID;
  v23 = [NSNumber numberWithUnsignedInt:v8];
  v33[2] = v23;
  v32[3] = kAXSimulatePressAtPointActionKeyDelay;
  *&v24 = delay;
  v25 = [NSNumber numberWithFloat:v24];
  v33[3] = v25;
  v32[4] = kAXSimulatePressAtPointActionKeySecureName;
  v26 = [NSNumber numberWithUnsignedInt:v20];
  v33[4] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:5];

  v28 = [(UIElementProtocol *)self->_uiElement performAXAction:5008 withValue:v27];
  if (v12)
  {
    CFRelease(v12);
  }

  return v28;
}

- (void)postStylusTouchAtPoint:(CGPoint)point withForce:(double)force altitude:(double)altitude azimuth:(double)azimuth withContextId:(unsigned int)id
{
  v7 = *&id;
  pointCopy = point;
  v12 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  v22[0] = v12;
  *&v13 = force;
  v14 = [NSNumber numberWithFloat:v13];
  v22[1] = v14;
  *&v15 = altitude;
  v16 = [NSNumber numberWithFloat:v15];
  v22[2] = v16;
  *&v17 = azimuth;
  v18 = [NSNumber numberWithFloat:v17];
  v22[3] = v18;
  v19 = [NSNumber numberWithUnsignedInt:v7];
  v22[4] = v19;
  v20 = [NSArray arrayWithObjects:v22 count:5];

  [(UIElementProtocol *)self->_uiElement performAXAction:5017 withValue:v20];
  if (v12)
  {
    CFRelease(v12);
  }
}

- (void)postStylusDragAtPoint:(CGPoint)point withForce:(double)force altitude:(double)altitude azimuth:(double)azimuth withContextId:(unsigned int)id
{
  v7 = *&id;
  pointCopy = point;
  v12 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  v22[0] = v12;
  *&v13 = force;
  v14 = [NSNumber numberWithFloat:v13];
  v22[1] = v14;
  *&v15 = altitude;
  v16 = [NSNumber numberWithFloat:v15];
  v22[2] = v16;
  *&v17 = azimuth;
  v18 = [NSNumber numberWithFloat:v17];
  v22[3] = v18;
  v19 = [NSNumber numberWithUnsignedInt:v7];
  v22[4] = v19;
  v20 = [NSArray arrayWithObjects:v22 count:5];

  [(UIElementProtocol *)self->_uiElement performAXAction:5018 withValue:v20];
  if (v12)
  {
    CFRelease(v12);
  }
}

- (void)postStylusLiftAtPoint:(CGPoint)point withContextId:(unsigned int)id
{
  v4 = *&id;
  valuePtr = point;
  v6 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  v10[0] = v6;
  v7 = [NSNumber numberWithUnsignedInt:v4];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];

  [(UIElementProtocol *)self->_uiElement performAXAction:5019 withValue:v8];
  if (v6)
  {
    CFRelease(v6);
  }
}

- (void)postFingerTouchAtPoint:(CGPoint)point withForce:(double)force withContextId:(unsigned int)id
{
  v5 = *&id;
  pointCopy = point;
  v8 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  v14[0] = v8;
  *&v9 = force;
  v10 = [NSNumber numberWithFloat:v9];
  v14[1] = v10;
  v11 = [NSNumber numberWithUnsignedInt:v5];
  v14[2] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:3];

  [(VOTElement *)self updateTouchForceSounds:force];
  [(UIElementProtocol *)self->_uiElement performAXAction:5004 withValue:v12];
  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)postFingerDragAtPoint:(CGPoint)point withForce:(double)force withContextId:(unsigned int)id
{
  v5 = *&id;
  pointCopy = point;
  v8 = AXValueCreate(kAXValueTypeCGPoint, &pointCopy);
  [(VOTElement *)self updateTouchForceSounds:force];
  v14[0] = v8;
  *&v9 = force;
  v10 = [NSNumber numberWithFloat:v9];
  v14[1] = v10;
  v11 = [NSNumber numberWithUnsignedInt:v5];
  v14[2] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:3];

  [(UIElementProtocol *)self->_uiElement performAXAction:5005 withValue:v12];
  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)postFingerLiftAtPoint:(CGPoint)point withContextId:(unsigned int)id
{
  v4 = *&id;
  valuePtr = point;
  v6 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  [(VOTElement *)self updateTouchForceSounds:0.0];
  v10[0] = v6;
  v7 = [NSNumber numberWithUnsignedInt:v4];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];

  [(UIElementProtocol *)self->_uiElement performAXAction:5006 withValue:v8];
  if (v6)
  {
    CFRelease(v6);
  }
}

- (void)updateTouchForceSounds:(double)sounds
{
  lastOrbSoundLevel = self->_lastOrbSoundLevel;
  if (!lastOrbSoundLevel)
  {
    AXForceTouchThresholdPeek();
    if (v6 < sounds)
    {
      self->_lastOrbSoundLevel = 1;
      v7 = +[VOTOutputManager outputManager];
      v13 = v7;
      v8 = @"Sounds/VOTOrbSound1-OrbHW.aiff";
LABEL_8:
      [v7 playSoundFast:v8];

      return;
    }

    lastOrbSoundLevel = self->_lastOrbSoundLevel;
  }

  if (lastOrbSoundLevel == 1)
  {
    AXForceTouchThresholdPeekPopMidpoint();
    if (v9 < sounds)
    {
      self->_lastOrbSoundLevel = 2;
      v7 = +[VOTOutputManager outputManager];
      v13 = v7;
      v8 = @"Sounds/VOTOrbSound2-OrbHW.aiff";
      goto LABEL_8;
    }

    lastOrbSoundLevel = self->_lastOrbSoundLevel;
  }

  if (lastOrbSoundLevel == 2)
  {
    AXForceTouchThresholdPop();
    if (v10 < sounds)
    {
      v11 = +[VOTOutputManager outputManager];
      [v11 playSoundFast:@"Sounds/VOTOrbSound3-OrbHW.aiff"];

      self->_lastOrbSoundLevel = 3;
      return;
    }

    lastOrbSoundLevel = self->_lastOrbSoundLevel;
  }

  if (lastOrbSoundLevel == 3)
  {
    AXForceTouchThresholdPeek();
    if (v12 > sounds)
    {
      self->_lastOrbSoundLevel = 0;
    }
  }
}

- (unint64_t)directTouchOptions
{
  [(UIElementProtocol *)self->_uiElement updateCache:2233];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2233];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isKeyboardContinuousPathTracking
{
  [(UIElementProtocol *)self->_uiElement updateCache:2194];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2194];
}

- (BOOL)isDataSeriesElement
{
  containerTypes = [(VOTElement *)self containerTypes];
  v3 = [containerTypes containsObject:&off_1001D9B30];

  return v3;
}

- (int64_t)differenceAspectMask:(id)mask
{
  maskCopy = mask;
  if (maskCopy)
  {
    label = [(VOTElement *)self label];
    label2 = [maskCopy label];
    if (label | label2 && ![label isEqualToString:label2])
    {
      v7 = 63;
    }

    else
    {
      v7 = 62;
    }

    value = [(VOTElement *)self value];

    value2 = [maskCopy value];

    if (!(value | value2) || [value isEqualToString:value2])
    {
      v7 &= ~2uLL;
    }

    traits = [(VOTElement *)self traits];
    if (traits == [maskCopy traits])
    {
      v12 = v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      v12 = v7;
    }

    rowRange = [(VOTElement *)self rowRange];
    v15 = v14;
    rowRange2 = [maskCopy rowRange];
    if (v15 == v17 && rowRange == rowRange2)
    {
      v8 = v12 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      v8 = v12;
    }

    [(VOTElement *)self frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [maskCopy frame];
    v41.origin.x = v27;
    v41.origin.y = v28;
    v41.size.width = v29;
    v41.size.height = v30;
    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    if (CGRectEqualToRect(v40, v41))
    {
      v8 &= ~0x10uLL;
    }

    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    if (selectedLanguage)
    {
      v32 = [(VOTElement *)self roleDescriptionWithInteractOption:0 language:selectedLanguage];
    }

    else
    {
      language = [(VOTElement *)self language];
      v34 = AXLanguageConvertToCanonicalForm();
      v32 = [(VOTElement *)self roleDescriptionWithInteractOption:0 language:v34];
    }

    selectedLanguage2 = [VOTSharedWorkspace selectedLanguage];
    if (selectedLanguage2)
    {
      v36 = [maskCopy roleDescriptionWithInteractOption:0 language:selectedLanguage2];
    }

    else
    {
      language2 = [maskCopy language];
      v38 = AXLanguageConvertToCanonicalForm();
      v36 = [maskCopy roleDescriptionWithInteractOption:0 language:v38];
    }

    if (!(v32 | v36) || [v32 isEqualToString:v36])
    {
      v8 &= ~0x20uLL;
    }
  }

  else
  {
    v8 = 63;
  }

  return v8;
}

- (VOTElementSnapshot)snapshot
{
  v3 = [VOTElementSnapshot alloc];
  label = [(VOTElement *)self label];
  value = [(VOTElement *)self value];
  traits = [(VOTElement *)self traits];
  rowRange = [(VOTElement *)self rowRange];
  v9 = v8;
  [(VOTElement *)self frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  language = [(VOTElement *)self language];
  language2 = [(VOTElement *)self language];
  v20 = AXLanguageConvertToCanonicalForm();
  v21 = [(VOTElement *)self roleDescriptionWithInteractOption:0 language:v20];
  v22 = [(VOTElementSnapshot *)v3 initWithLabel:label value:value traits:traits rowRange:rowRange frame:v9 language:language roleDescription:v11, v13, v15, v17, v21];

  return v22;
}

- (unsigned)secureName
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2223];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (int64_t)versionedPID
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:3065];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (id)arrayOfTraitsAsStringsWithTraitOrder:(id)order language:(id)language
{
  orderCopy = order;
  languageCopy = language;
  v8 = [objc_allocWithZone(NSMutableArray) init];
  traits = [(VOTElement *)self traits];
  v10 = kAXSelectedTrait;
  if ((kAXSelectedTrait & traits) != 0)
  {
    v11 = sub_1000516CC(off_1001FDDD0, @"element.selected.text", @"selected", languageCopy);
    [v8 addObject:v11];

    v12 = [NSNumber numberWithUnsignedLongLong:v10];
    [orderCopy addObject:v12];
  }

  v13 = kAXMenuItemTrait;
  if ((kAXMenuItemTrait & traits) != 0)
  {
    v14 = sub_1000516CC(off_1001FDDD0, @"element.menu.item", @"menu item", languageCopy);
    [v8 addObject:v14];

    v15 = [NSNumber numberWithUnsignedLongLong:v13];
    [orderCopy addObject:v15];
  }

  v16 = kAXNotEnabledTrait;
  if ((kAXNotEnabledTrait & traits) != 0)
  {
    v17 = sub_1000516CC(off_1001FDDD0, @"element.disabled.text", @"dimmed", languageCopy);
    [v8 addObject:v17];

    v18 = [NSNumber numberWithUnsignedLongLong:v16];
    [orderCopy addObject:v18];
  }

  selfCopy = self;
  v19 = kAXInactiveTrait;
  if ((kAXInactiveTrait & traits) != 0)
  {
    v20 = sub_1000516CC(off_1001FDDD0, @"element.inactive.text", @"inactive", languageCopy);
    [v8 addObject:v20];

    v21 = [NSNumber numberWithUnsignedLongLong:v19];
    [orderCopy addObject:v21];
  }

  v22 = kAXButtonTrait;
  v23 = kAXToggleTrait;
  v24 = kAXBackButtonTrait;
  if (((kAXToggleTrait | kAXButtonTrait | kAXBackButtonTrait) & traits) != 0 && (kAXKeyboardKeyTrait & traits) == 0)
  {
    if ((kAXBackButtonTrait & traits) != 0)
    {
      v25 = off_1001FDDD0;
      v26 = @"back.button.element.text";
      v27 = @"back button";
LABEL_13:
      v28 = sub_1000516CC(v25, v26, v27, languageCopy);
LABEL_17:
      [v8 addObject:v28];

      v30 = [NSNumber numberWithUnsignedLongLong:v24];
      [orderCopy addObject:v30];

      goto LABEL_18;
    }

    v29 = kAXWebContentTrait & traits;
    if ((kAXToggleTrait & traits) != 0 && !v29)
    {
      v28 = sub_1000516CC(off_1001FDDD0, @"switch.button.element.text", @"button", languageCopy);
      v24 = v23;
      goto LABEL_17;
    }

    v24 = kAXTabButtonTrait;
    if ((kAXTabButtonTrait & traits) != 0)
    {
      v25 = off_1001FDDD0;
      v26 = @"tab.button.element.text";
      v27 = @"tab";
      goto LABEL_13;
    }

    if ((kAXRadioButtonTrait & traits) == 0)
    {
      if ((kAXToggleTrait & traits) != 0 && v29)
      {
        if ([(VOTElement *)self supportsPressedState])
        {
          v133 = off_1001FDDD0;
          v134 = @"toggle.button.element.text";
        }

        else
        {
          isSwitch = [(VOTElement *)self isSwitch];
          v133 = off_1001FDDD0;
          if (isSwitch)
          {
            v134 = @"switch.button.element.text";
          }

          else
          {
            v134 = @"checkbox.element.text";
          }
        }
      }

      else
      {
        v133 = off_1001FDDD0;
        v134 = @"button.element.text";
      }

      v28 = sub_1000516CC(v133, v134, @"button", languageCopy);
      v24 = v22;
      goto LABEL_17;
    }
  }

LABEL_18:
  v31 = kAXRadioButtonTrait;
  if ((kAXRadioButtonTrait & traits) != 0)
  {
    v32 = sub_1000516CC(off_1001FDDD0, @"radio.button.text", @"button", languageCopy);
    [v8 addObject:v32];

    v33 = [NSNumber numberWithUnsignedLongLong:v31];
    [orderCopy addObject:v33];
  }

  v34 = selfCopy;
  if ((v22 & traits) == 0)
  {
    v35 = kAXTabButtonTrait;
    if ((kAXTabButtonTrait & traits) == kAXTabButtonTrait)
    {
      v36 = sub_1000516CC(off_1001FDDD0, @"tab.button.element.text", @"tab", languageCopy);
      [v8 addObject:v36];

      v37 = [NSNumber numberWithUnsignedLongLong:v35];
      [orderCopy addObject:v37];
    }
  }

  v38 = kAXPopupButtonTrait;
  if ((kAXPopupButtonTrait & traits) != 0)
  {
    v39 = sub_1000516CC(off_1001FDDD0, @"popup.button.element.text", @"popup", languageCopy);
    [v8 addObject:v39];

    v40 = [NSNumber numberWithUnsignedLongLong:v38];
    [orderCopy addObject:v40];
  }

  if ((v23 & traits) != 0)
  {
    if ([(VOTElement *)selfCopy supportsPressedState])
    {
      v41 = off_1001FDDD0;
      if ([(VOTElement *)selfCopy isPressed])
      {
        v42 = @"pressed.button";
      }

      else
      {
        v42 = @"not.pressed.button";
      }

      if ([(VOTElement *)selfCopy isPressed])
      {
        v43 = @"pressed";
      }

      else
      {
        v43 = @"not pressed";
      }

      v44 = sub_1000516CC(v41, v42, v43, languageCopy);
      [v8 addObject:v44];

      toggleStatusLabel = [NSNumber numberWithUnsignedLongLong:v23];
      [orderCopy addObject:toggleStatusLabel];
    }

    else
    {
      toggleStatusLabel = [(VOTElement *)selfCopy toggleStatusLabel];
      if (toggleStatusLabel)
      {
        [v8 addObject:toggleStatusLabel];
        v46 = [NSNumber numberWithUnsignedLongLong:v23];
        [orderCopy addObject:v46];
      }
    }
  }

  v47 = kAXHeaderTrait;
  if ((kAXHeaderTrait & traits) != 0)
  {
    if ((kAXWebContentTrait & traits) != 0)
    {
      [(VOTElement *)selfCopy value];
    }

    else
    {
      [(VOTElement *)selfCopy headingLevelValue];
    }
    v48 = ;
    intValue = [v48 intValue];

    if (intValue)
    {
      v50 = sub_1000516CC(off_1001FDDD0, @"element.header.text", @"heading", languageCopy);
      v51 = AXFormatInteger();
      v52 = [NSString stringWithFormat:v50, v51];
      [v8 addObject:v52];
    }

    else
    {
      v50 = sub_1000516CC(off_1001FDDD0, @"element.header.text.nolevel", @"heading", languageCopy);
      [v8 addObject:v50];
    }

    v53 = [NSNumber numberWithUnsignedLongLong:v47];
    [orderCopy addObject:v53];
  }

  v54 = kAXFooterTrait;
  if ((kAXFooterTrait & traits) != 0)
  {
    v55 = sub_1000516CC(off_1001FDDD0, @"element.footer.text", @"footer", languageCopy);
    [v8 addObject:v55];

    v56 = [NSNumber numberWithUnsignedLongLong:v54];
    [orderCopy addObject:v56];
  }

  v57 = kAXVisitedTrait;
  if ((kAXVisitedTrait & traits) != 0)
  {
    v58 = sub_1000516CC(off_1001FDDD0, @"element.visited.text", @"visited", languageCopy);
    [v8 addObject:v58];

    v59 = [NSNumber numberWithUnsignedLongLong:v57];
    [orderCopy addObject:v59];
  }

  v60 = kAXLinkTrait;
  if ((kAXLinkTrait & traits) != 0)
  {
    linkedElement = [(VOTElement *)selfCopy linkedElement];

    if (linkedElement)
    {
      v62 = @"element.link.internal.text";
    }

    else
    {
      v62 = @"element.link.text";
    }

    v63 = sub_1000516CC(off_1001FDDD0, v62, @"link", languageCopy);
    [v8 addObject:v63];

    v64 = [NSNumber numberWithUnsignedLongLong:v60];
    [orderCopy addObject:v64];
  }

  v65 = kAXPickerElementTrait;
  if ((kAXPickerElementTrait & traits) != 0)
  {
    v66 = sub_1000516CC(off_1001FDDD0, @"picker.element.text", @"picker", languageCopy);
    [v8 addObject:v66];

    v67 = [NSNumber numberWithUnsignedLongLong:v65];
    [orderCopy addObject:v67];
  }

  v68 = kAXAdjustableTrait;
  if ((kAXAdjustableTrait & traits) != 0)
  {
    v69 = sub_1000516CC(off_1001FDDD0, @"incrementable.element.text", @"adjustable", languageCopy);
    [v8 addObject:v69];

    v70 = [NSNumber numberWithUnsignedLongLong:v68];
    [orderCopy addObject:v70];
  }

  v71 = kAXImageTrait;
  if ((kAXImageTrait & traits) != 0 && ![(VOTElement *)selfCopy shouldSkipImageTraitDescription])
  {
    v72 = sub_1000516CC(off_1001FDDD0, @"image.element.text", @"image", languageCopy);
    [v8 addObject:v72];

    v73 = [NSNumber numberWithUnsignedLongLong:v71];
    [orderCopy addObject:v73];
  }

  v74 = kAXMathEquationTrait;
  if ((kAXMathEquationTrait & traits) != 0 && [(VOTElement *)selfCopy shouldSpeakMathEquationTrait])
  {
    v75 = sub_1000516CC(off_1001FDDD0, @"mathequation.element.text", @"math", languageCopy);
    [v8 addObject:v75];

    v76 = [NSNumber numberWithUnsignedLongLong:v74];
    [orderCopy addObject:v76];
  }

  v77 = kAXSearchFieldTrait;
  if ((kAXSearchFieldTrait & traits) != 0)
  {
    v78 = sub_1000516CC(off_1001FDDD0, @"element.status.search.field", @"search", languageCopy);
    [v8 addObject:v78];

    v79 = [NSNumber numberWithUnsignedLongLong:v77];
    [orderCopy addObject:v79];
  }

  v80 = kAXTextEntryTrait;
  if ((kAXTextEntryTrait & traits) != 0 && ((kAXStaticTextTrait | v77) & traits) == 0)
  {
    if (((kAXTextAreaTrait | kAXWebContentTrait) & ~traits) != 0)
    {
      v84 = off_1001FDDD0;
      if ((kAXSecureTextFieldTrait & traits) != 0)
      {
        if ([(VOTElement *)selfCopy isStrongPasswordField])
        {
          v82 = @"element.strongpasswordfield.text";
        }

        else
        {
          v82 = @"element.securetextfield.text";
        }

        v83 = @"secure";
      }

      else
      {
        v82 = @"element.textentry.text";
        v83 = @"text field";
      }

      v81 = v84;
    }

    else
    {
      v81 = off_1001FDDD0;
      v82 = @"element.multiline.text";
      v83 = @"multi-line text field";
    }

    v85 = sub_1000516CC(v81, v82, v83, languageCopy);
    [v8 addObject:v85];

    v86 = [NSNumber numberWithUnsignedLongLong:v80];
    [orderCopy addObject:v86];
  }

  v87 = kAXIsEditingTrait;
  if ((kAXIsEditingTrait & traits) != 0 && ![(VOTElement *)selfCopy isReadingContent]&& (kAXStaticTextTrait & traits) == 0 && ![(VOTElement *)selfCopy shouldIgnoreTextEditingTrait])
  {
    v88 = sub_1000516CC(off_1001FDDD0, @"element.is.editing.text", @"is editing", languageCopy);
    [v8 addObject:v88];

    v89 = [NSNumber numberWithUnsignedLongLong:v87];
    [orderCopy addObject:v89];
  }

  v90 = kAXReadOnlyTrait;
  if ((kAXReadOnlyTrait & traits) != 0 && (kAXStaticTextTrait & traits) == 0)
  {
    v91 = sub_1000516CC(off_1001FDDD0, @"element.is.read.only", @"is read only", languageCopy);
    [v8 addObject:v91];

    v92 = [NSNumber numberWithUnsignedLongLong:v90];
    [orderCopy addObject:v92];
  }

  v93 = kAXStatusBarElementTrait;
  if ((kAXStatusBarElementTrait & traits) != 0)
  {
    v94 = sub_1000516CC(off_1001FDDD0, @"element.status.bar.item", @"status bar item", languageCopy);
    [v8 addObject:v94];

    v95 = [NSNumber numberWithUnsignedLongLong:v93];
    [orderCopy addObject:v95];
  }

  v96 = kAXDraggableTrait;
  if ((kAXDraggableTrait & traits) != 0)
  {
    v97 = sub_1000516CC(off_1001FDDD0, @"element.draggable.item", @"draggable", languageCopy);
    [v8 addObject:v97];

    v98 = [NSNumber numberWithUnsignedLongLong:v96];
    [orderCopy addObject:v98];
  }

  v99 = kAXFolderIconTrait;
  if ((kAXFolderIconTrait & traits) != 0)
  {
    v100 = sub_1000516CC(off_1001FDDD0, @"element.folder.text", @"folder", languageCopy);
    [v8 addObject:v100];

    v101 = [NSNumber numberWithUnsignedLongLong:v99];
    [orderCopy addObject:v101];
  }

  v102 = kAXWebInteractiveVideoTrait;
  if ((kAXWebInteractiveVideoTrait & traits) != 0)
  {
    v103 = sub_1000516CC(off_1001FDDD0, @"web.interactive.video.control.text", @"video playback", languageCopy);
    [v8 addObject:v103];

    v104 = [NSNumber numberWithUnsignedLongLong:v102];
    [orderCopy addObject:v104];
  }

  v105 = kAXProminentIconTrait;
  if ((kAXProminentIconTrait & traits) != 0)
  {
    v106 = sub_1000516CC(off_1001FDDD0, @"element.prominent.icon", @"icon", languageCopy);
    [v8 addObject:v106];

    v107 = [NSNumber numberWithUnsignedLongLong:v105];
    [orderCopy addObject:v107];
  }

  containerTypes = [(VOTElement *)selfCopy containerTypes];
  if ([containerTypes containsObject:&off_1001DA058])
  {
    elementManager = [VOTSharedWorkspace elementManager];
    v110 = [elementManager speakTableHeadersForElement:selfCopy];

    if (v110)
    {
      if ([(VOTElement *)selfCopy isElementFirstElement:1 orLastElement:0 withType:2])
      {
        v111 = sub_1000516CC(off_1001FDDD0, @"element.startOfTable.item", @"table", languageCopy);
        [v8 addObject:v111];

        [orderCopy addObject:&off_1001DA070];
        [(VOTElement *)selfCopy setIsFirstItemInTable:1];
      }

      else if ([(VOTElement *)selfCopy isElementFirstElement:0 orLastElement:1 withType:2])
      {
        v112 = sub_1000516CC(off_1001FDDD0, @"element.endOfTable.item", @"table", languageCopy);
        [v8 addObject:v112];

        [orderCopy addObject:&off_1001DA070];
      }
    }
  }

  if (([containerTypes containsObject:&off_1001DA088] & 1) != 0 || objc_msgSend(containerTypes, "containsObject:", &off_1001DA0A0))
  {
    if ([(VOTElement *)selfCopy isElementFirstElement:1 orLastElement:0 withType:4]|| [(VOTElement *)selfCopy isElementFirstElement:1 orLastElement:0 withType:0x2000])
    {
      v113 = sub_1000516CC(off_1001FDDD0, @"element.startOfList.item", @"list start", languageCopy);
      [v8 addObject:v113];

      [(VOTElement *)selfCopy setIsFirstItemInList:1];
LABEL_109:
      [orderCopy addObject:&off_1001DA070];
      goto LABEL_110;
    }

    if ([(VOTElement *)selfCopy isElementFirstElement:0 orLastElement:1 withType:4]|| [(VOTElement *)selfCopy isElementFirstElement:0 orLastElement:1 withType:0x2000])
    {
      [(VOTElement *)selfCopy setIsLastItemInList:1];
      if (![(VOTElement *)selfCopy shouldIncludeRowRangeInDescription])
      {
        v124 = sub_1000516CC(off_1001FDDD0, @"element.endOfList.item", @"list end", languageCopy);
        [v8 addObject:v124];

        goto LABEL_109;
      }
    }
  }

LABEL_110:
  if (![containerTypes containsObject:&off_1001DA0B8])
  {
    goto LABEL_127;
  }

  touchContainer = [(VOTElement *)selfCopy touchContainer];
  if ([(VOTElement *)selfCopy isElementFirstElement:1 orLastElement:0 withType:1])
  {
    label = [touchContainer label];
    v136 = sub_1000516CC(off_1001FDDD0, @"element.startOfLandmark.item", @"landmark", languageCopy);
    v116 = __AXStringForVariables();

    [v8 addObject:{v116, v136, @"__AXStringForVariablesSentinel"}];
    [(VOTElement *)selfCopy setIsFirstItemInLandmark:1];
LABEL_125:
    [orderCopy addObject:&off_1001DA070];

    goto LABEL_126;
  }

  if ([(VOTElement *)selfCopy isElementFirstElement:0 orLastElement:1 withType:1])
  {
    v117 = sub_1000516CC(off_1001FDDD0, @"element.endOfLandmark.short.item", @"end", languageCopy);
    label2 = [touchContainer label];
    v138 = @"__AXStringForVariablesSentinel";
    v116 = __AXStringForVariables();

    if (touchContainer)
    {
      while ([touchContainer isElementFirstElement:0 orLastElement:1 withType:{1, label2, v138}])
      {
        v114TouchContainer = [touchContainer touchContainer];
        if ([touchContainer isEqual:v114TouchContainer])
        {

          break;
        }

        v119 = sub_1000516CC(off_1001FDDD0, @"element.endOfLandmark.short.item", @"end", languageCopy);
        label3 = [v114TouchContainer label];
        v121 = __AXStringForVariables();

        v34 = selfCopy;
        label2 = v116;
        v138 = v121;
        v122 = [NSString stringWithFormat:@"%@, %@"];

        v123 = v114TouchContainer;
        v116 = v122;
        touchContainer = v123;
        if (!v123)
        {
          v116 = v122;
          break;
        }
      }
    }

    [v8 addObject:{v116, label2}];
    goto LABEL_125;
  }

LABEL_126:

LABEL_127:
  if (![containerTypes containsObject:&off_1001DA0D0])
  {
    goto LABEL_133;
  }

  if ([(VOTElement *)v34 isElementFirstElement:1 orLastElement:0 withType:8])
  {
    v125 = sub_1000516CC(off_1001FDDD0, @"element.startOfFieldset.item", @"form start", languageCopy);
    [v8 addObject:v125];

    [(VOTElement *)v34 setIsFirstItemInFieldset:1];
  }

  else
  {
    if (![(VOTElement *)v34 isElementFirstElement:0 orLastElement:1 withType:8])
    {
      goto LABEL_133;
    }

    v126 = sub_1000516CC(off_1001FDDD0, @"element.endOfFieldset.item", @"form end", languageCopy);
    [v8 addObject:v126];
  }

  [orderCopy addObject:&off_1001DA070];
LABEL_133:
  if (![containerTypes containsObject:&off_1001DA0E8])
  {
    goto LABEL_139;
  }

  if ([(VOTElement *)v34 isElementFirstElement:1 orLastElement:0 withType:0x8000])
  {
    v127 = sub_1000516CC(off_1001FDDD0, @"element.startOfDefinitionList.item", 0, languageCopy);
    [v8 addObject:v127];

    [(VOTElement *)v34 setIsFirstItemInDescriptionList:1];
  }

  else
  {
    if (![(VOTElement *)v34 isElementFirstElement:0 orLastElement:1 withType:0x8000])
    {
      goto LABEL_139;
    }

    v128 = sub_1000516CC(off_1001FDDD0, @"element.endOfDefinitionList.item", @"form end", languageCopy);
    [v8 addObject:v128];
  }

  [orderCopy addObject:&off_1001DA070];
LABEL_139:
  if ([containerTypes containsObject:&off_1001DA100])
  {
    if ([(VOTElement *)v34 isElementFirstElement:1 orLastElement:0 withType:32])
    {
      v129 = sub_1000516CC(off_1001FDDD0, @"element.startOfTree.item", @"tree start", languageCopy);
      [v8 addObject:v129];

      [(VOTElement *)v34 setIsFirstItemInTree:1];
LABEL_144:
      [orderCopy addObject:&off_1001DA070];
      goto LABEL_145;
    }

    if ([(VOTElement *)v34 isElementFirstElement:0 orLastElement:1 withType:32])
    {
      v130 = sub_1000516CC(off_1001FDDD0, @"element.endOfTree.item", @"tree end", languageCopy);
      [v8 addObject:v130];

      goto LABEL_144;
    }
  }

LABEL_145:
  v131 = v8;

  return v8;
}

- (id)arrayOfTraitsAsStringsWithTraitOrder:(id)order
{
  v4 = VOTSharedWorkspace;
  orderCopy = order;
  selectedLanguage = [v4 selectedLanguage];
  v7 = [(VOTElement *)self arrayOfTraitsAsStringsWithTraitOrder:orderCopy language:selectedLanguage];

  return v7;
}

- (id)_removeBadDeveloperDecisions:(id)decisions
{
  decisionsCopy = decisions;
  if ([(VOTElement *)self doesHaveTraits:kAXBackButtonTrait])
  {
    v5 = sub_1000511CC(off_1001FDDD0, @"back.button.element.text", @"back button");
    lowercaseString = [v5 lowercaseString];

    if ([decisionsCopy length])
    {
      lowercaseString2 = [decisionsCopy lowercaseString];
      v8 = [lowercaseString containsString:lowercaseString2];

      if (v8)
      {

        decisionsCopy = 0;
      }
    }
  }

  if (-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXImageTrait) && [decisionsCopy hasSuffix:@"image"])
  {
    v9 = [decisionsCopy substringToIndex:{objc_msgSend(decisionsCopy, "length") - objc_msgSend(@"image", "length")}];

    v10 = +[NSCharacterSet whitespaceCharacterSet];
    decisionsCopy = [v9 stringByTrimmingCharactersInSet:v10];
  }

  if (-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXButtonTrait) && [decisionsCopy hasSuffix:@"button"])
  {
    v11 = [decisionsCopy substringToIndex:{objc_msgSend(decisionsCopy, "length") - objc_msgSend(@"button", "length")}];

    v12 = +[NSCharacterSet whitespaceCharacterSet];
    decisionsCopy = [v11 stringByTrimmingCharactersInSet:v12];
  }

  return decisionsCopy;
}

- (BOOL)isWesternTextForNonWesternLanguage:(id)language language:(id)a4
{
  languageCopy = language;
  v6 = a4;
  v7 = sub_1000379BC(v6);
  v8 = sub_100037A14();

  if (v7)
  {
    v6 = sub_100037AA8();
    v9 = [languageCopy rangeOfCharacterFromSet:v6];
    v10 = v9 != 0x7FFFFFFFFFFFFFFFLL;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL || ((v8 ^ 1) & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v11 = sub_100037A1C();
  v10 = [languageCopy rangeOfCharacterFromSet:v11] != 0x7FFFFFFFFFFFFFFFLL;

  if (v7)
  {
LABEL_7:
  }

LABEL_9:

  return v10;
}

- (void)_applyLabelToRequest:(id)request includeBlockQuote:(BOOL)quote language:(id)language isWebLanguageChoice:(BOOL)choice interactOption:(int64_t)option
{
  choiceCopy = choice;
  quoteCopy = quote;
  requestCopy = request;
  languageCopy = language;
  label = [(VOTElement *)self label];
  if (!languageCopy || !choiceCopy)
  {
    goto LABEL_12;
  }

  v15 = +[AXLanguageManager sharedInstance];
  v16 = [v15 dialectForLanguageID:languageCopy];

  speakableCharacters = [v16 speakableCharacters];
  if (speakableCharacters && ![v16 canSpeakString:label])
  {

    goto LABEL_8;
  }

  v18 = [(VOTElement *)self isWesternTextForNonWesternLanguage:label language:languageCopy];

  if (v18)
  {
LABEL_8:
    v19 = VOTLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v47 = languageCopy;
      v48 = 2112;
      v49 = label;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Web told us to use: %@, but that dialect can't speak: %@", buf, 0x16u);
    }

    languageCopy = 0;
  }

LABEL_12:
  v20 = +[AXSettings sharedInstance];
  voiceOverPhoneticsFeedback = [v20 voiceOverPhoneticsFeedback];

  if ([label length] != 1 || (-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXKeyboardKeyTrait) ? (v22 = voiceOverPhoneticsFeedback == 0) : (v22 = 1), v22))
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    if (![label isAXAttributedString] || (objc_msgSend(label, "attributeValueForKey:", UIAccessibilityTokenLanguage), (v23 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v23 = languageCopy;
    }

    v24 = sub_100052450(label, v23, 0);
  }

  v25 = [v24 length];
  if (v25)
  {
    v26 = voiceOverPhoneticsFeedback == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  if (v25 && voiceOverPhoneticsFeedback == 2)
  {
    goto LABEL_31;
  }

  if (![label isAXAttributedString] || !objc_msgSend(label, "hasAttributes"))
  {
    v45 = v23;
    v35 = requestCopy;
    optionCopy = option;
    v37 = v27;
    v38 = +[NSCharacterSet whitespaceCharacterSet];
    v39 = [label stringByTrimmingCharactersInSet:v38];

    label = [(VOTElement *)self _removeBadDeveloperDecisions:v39];

    if (![label length])
    {
      v27 = v37;
      requestCopy = v35;
      v23 = v45;
LABEL_44:
      if (!v27)
      {
        goto LABEL_52;
      }

      goto LABEL_45;
    }

    v27 = v37;
    if (optionCopy == 1)
    {
      v40 = @"InteractIn";
    }

    else
    {
      if (optionCopy != 2)
      {
        requestCopy = v35;
        goto LABEL_50;
      }

      v40 = @"InteractOut";
    }

    requestCopy = v35;
    v41 = sub_1000511CC(off_1001FDDD0, v40, 0);
    v42 = [NSString stringWithFormat:v41, label];

    label = v42;
LABEL_50:
    v23 = v45;
    v43 = [requestCopy addString:label breakWords:1 withLanguage:languageCopy atIndex:0x7FFFFFFFFFFFFFFFLL];
    lastAction = [requestCopy lastAction];
    [lastAction setPerformPunctuationTranslation:1];

    lastAction2 = [requestCopy lastAction];
    [lastAction2 setReplaceCommas:0];
    goto LABEL_51;
  }

  [(VOTElement *)self _applyAttributesFromText:label toRequest:requestCopy withLanguage:languageCopy category:@"LABEL"];
  if (!quoteCopy)
  {
    goto LABEL_44;
  }

  v30 = [label attributeValueForKey:UIAccessibilityTokenBlockquoteLevel];
  if (v30)
  {
    lastAction2 = v30;
  }

  else
  {
    lastAction2 = &off_1001DA118;
  }

  v32 = sub_1000511CC(off_1001FDDD0, @"blockquote.level", 0);
  v33 = [NSString stringWithFormat:v32, lastAction2];
  v34 = [requestCopy addString:v33];

LABEL_51:
  if (!v27)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (voiceOverPhoneticsFeedback != 2)
  {
    LODWORD(v29) = 0.75;
    [requestCopy addPause:v29];
  }

LABEL_31:
  v28 = [requestCopy addString:v24];
LABEL_52:
}

- (void)_addHeaderElement:(id)element toRequest:(id)request
{
  requestCopy = request;
  elementCopy = element;
  label = [elementCopy label];
  v8 = +[NSCharacterSet whitespaceCharacterSet];
  v9 = [label stringByTrimmingCharactersInSet:v8];

  value = [elementCopy value];

  v11 = +[NSCharacterSet whitespaceCharacterSet];
  v12 = [value stringByTrimmingCharactersInSet:v11];

  v13 = __AXStringForVariables();
  if ([v13 length])
  {
    language = [(VOTElement *)self language];
    v15 = [requestCopy addString:v13 withLanguage:language];

    lastAction = [requestCopy lastAction];
    [lastAction setPerformPunctuationTranslation:1];

    lastAction2 = [requestCopy lastAction];
    [lastAction2 setReplaceCommas:0];
  }

  if ([VOTSharedWorkspace typingPitchChangeEnabled])
  {
    lastAction3 = [requestCopy lastAction];
    LODWORD(v19) = 1062836634;
    v20 = [NSNumber numberWithFloat:v19];
    [lastAction3 setObject:v20 forVariant:32];
  }
}

- (void)applyRowHeadersToRequest:(id)request
{
  requestCopy = request;
  v5 = [(VOTElement *)self headerElementsForRow:[(VOTElement *)self rowRange]];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(VOTElement *)self _addHeaderElement:*(*(&v10 + 1) + 8 * v9) toRequest:requestCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)applyHeaderElementsToRequest:(id)request
{
  requestCopy = request;
  if ([(VOTElement *)self supportsHeaderElementOutput])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    elementHeadersForOutput = [requestCopy elementHeadersForOutput];
    v6 = [elementHeadersForOutput countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(elementHeadersForOutput);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if (([v10 isEqual:self] & 1) == 0)
          {
            [(VOTElement *)self _addHeaderElement:v10 toRequest:requestCopy];
          }
        }

        v7 = [elementHeadersForOutput countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_applyValueToRequest:(id)request options:(unint64_t)options lastSeenLineAndColumn:(id)column language:(id)language
{
  v9 = ~options;
  requestCopy = request;
  columnCopy = column;
  languageCopy = language;
  v13 = [(VOTElement *)self doesHaveTraits:kAXIsEditingTrait];
  v14 = [(VOTElement *)self doesHaveTraits:kAXTextAreaTrait];
  v15 = [(VOTElement *)self doesHaveTraits:kAXTextEntryTrait];
  if ((*&v9 & 0x80040) == 0)
  {
    v16 = columnCopy ? v14 : 0;
    if ((v13 | v16))
    {
      if (v13)
      {
        selectedTextRange = [(VOTElement *)self selectedTextRange];
      }

      else
      {
        if (!v16)
        {
          v26 = 0;
          v25 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_33;
        }

        selectedTextRange = [(VOTElement *)self rangeForLineNumberAndColumn:columnCopy];
      }

      v25 = selectedTextRange;
      v26 = v18;
LABEL_33:
      value = [(VOTElement *)self value];
      if (v25 + v26 >= [value length])
      {
        v39 = 0;
      }

      else
      {
        v39 = v25;
      }

      v40 = [value substringFromIndex:v39];

      v41 = [requestCopy addString:v40 withLanguage:languageCopy];
      lastAction = [requestCopy lastAction];
      [lastAction setPerformPunctuationTranslation:1];

      lastAction2 = [requestCopy lastAction];
      [lastAction2 setReplaceCommas:1];

      lastAction3 = [requestCopy lastAction];
      [lastAction3 setObject:kCFBooleanTrue forVariant:50];

      goto LABEL_68;
    }
  }

  v19 = kAXWebContentTrait;
  if ([(VOTElement *)self doesHaveAllTraits:kAXWebContentTrait | kAXHeaderTrait])
  {
    label = [(VOTElement *)self label];
    if (label)
    {

      goto LABEL_68;
    }

    value2 = [(VOTElement *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  if ([(VOTElement *)self doesHaveTraits:kAXToggleTrait])
  {
    goto LABEL_68;
  }

  value3 = [(VOTElement *)self value];
  if ([(VOTElement *)self isReadingContent])
  {
    [(VOTElement *)self updatePageContent];
    pageContent = [(VOTElement *)self pageContent];
LABEL_22:
    v28 = pageContent;

    value3 = v28;
    goto LABEL_23;
  }

  if ([value3 length] >= 0xC351)
  {
    v27 = VOTLogElement();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_10012E118(v27);
    }

    pageContent = [value3 substringWithRange:{0, 50000}];
    goto LABEL_22;
  }

LABEL_23:
  [(VOTElement *)self minValue];
  v30 = v29;
  [(VOTElement *)self maxValue];
  v32 = v31;
  if (![(VOTElement *)self doesHaveTraits:v19]|| v30 <= 0.0 && v32 <= 0.0)
  {
    goto LABEL_41;
  }

  v33 = [NSScanner localizedScannerWithString:value3];
  v88 = 0.0;
  if ([v33 scanFloat:&v88] && objc_msgSend(v33, "isAtEnd"))
  {
    v34 = (v88 - v30) / (v32 - v30);
    v35 = AXFormatFloatWithPercentage();
    v36 = v35;
    if (fabs(-(v88 - v34 * 100.0)) >= 0.001)
    {
      v75 = v35;
      v76 = @"__AXStringForVariablesSentinel";
      v37 = __AXStringForVariables();
    }

    else
    {
      if (v30 != 0.0 || v32 != 100.0)
      {
        goto LABEL_39;
      }

      v37 = v35;
    }

    v45 = v37;

    value3 = v45;
LABEL_39:
  }

LABEL_41:
  v46 = [(VOTElement *)self applySelectedText:requestCopy language:languageCopy, v75, v76];
  if ([value3 length] && (v46 & 1) == 0)
  {
    if ([value3 isAXAttributedString])
    {
      lastAction5 = value3;
      if ([(VOTElement *)self doesHaveTraits:kAXLinkTrait])
      {
        v90 = UIAccessibilityTokenLink;
        v48 = [NSArray arrayWithObjects:&v90 count:1];
        [lastAction5 removeAttributes:v48];
      }

      v49 = UIAccessibilityTokenSpeakValuePartOnDifference;
      if ([lastAction5 hasAttribute:UIAccessibilityTokenSpeakValuePartOnDifference])
      {
        v78 = value3;
        v79 = columnCopy;
        v80 = requestCopy;
        v50 = +[NSMutableSet set];
        v51 = [lastAction5 length];
        v85[0] = _NSConcreteStackBlock;
        v85[1] = 3221225472;
        v85[2] = sub_1000BA6CC;
        v85[3] = &unk_1001C7610;
        v52 = v50;
        v86 = v52;
        v77 = lastAction5;
        v53 = lastAction5;
        v87 = v53;
        [v53 enumerateAttribute:v49 inRange:0 options:v51 usingBlock:{0, v85}];
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v54 = v52;
        v55 = [v54 countByEnumeratingWithState:&v81 objects:v89 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v82;
          do
          {
            for (i = 0; i != v56; i = i + 1)
            {
              if (*v82 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v81 + 1) + 8 * i);
              previousSpokenValueParts = [(VOTElement *)self previousSpokenValueParts];
              v61 = [previousSpokenValueParts containsObject:v59];

              if (v61)
              {
                string = [v53 string];
                v63 = [string rangeOfString:v59];
                v65 = v64;

                if (v63 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v53 deleteCharactersInRange:{v63, v65}];
                }
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v81 objects:v89 count:16];
          }

          while (v56);
        }

        [(VOTElement *)self setPreviousSpokenValueParts:v54];
        columnCopy = v79;
        requestCopy = v80;
        value3 = v78;
        lastAction5 = v77;
      }

      [(VOTElement *)self _applyAttributesFromText:lastAction5 toRequest:requestCopy withLanguage:languageCopy category:@"VALUE"];
    }

    else
    {
      v66 = [requestCopy addString:value3 withLanguage:languageCopy];
      lastAction4 = [requestCopy lastAction];
      [lastAction4 setPerformPunctuationTranslation:1];

      lastAction5 = [requestCopy lastAction];
      [lastAction5 setReplaceCommas:v15];
    }
  }

  if (-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXImageTrait) && ![value3 length])
  {
    LOWORD(v88) = 160;
    v68 = [NSString stringWithCharacters:&v88 length:1];
    v69 = [requestCopy addString:v68];

    lastAction6 = [requestCopy lastAction];
    uiElement = [(VOTElement *)self uiElement];
    [lastAction6 setObject:objc_msgSend(uiElement forVariant:{"axElement"), 67}];
  }

  if ([(VOTElement *)self readingContentCausesPageTurn])
  {
    lastAction7 = [requestCopy lastAction];
    v73 = kCFBooleanTrue;
    [lastAction7 setObject:kCFBooleanTrue forVariant:59];
  }

  else
  {
    v73 = kCFBooleanTrue;
  }

  lastAction8 = [requestCopy lastAction];
  [lastAction8 setObject:v73 forVariant:37];

LABEL_68:
}

- (BOOL)applySelectedText:(id)text language:(id)language
{
  textCopy = text;
  languageCopy = language;
  if ([(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait]&& (v8 = [(VOTElement *)self selectedTextRange], v9))
  {
    v10 = [(VOTElement *)self valueForRange:v8, v9];
    v11 = [v10 length];
    v12 = v11 != 0;
    if (v11)
    {
      v13 = sub_1000516CC(off_1001FDDD0, @"element.selected.text", 0, languageCopy);
      v14 = [NSString stringWithFormat:@"%@ %@", v10, v13];
      v15 = [textCopy addString:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_applyHasPopupAttribute:(id)attribute withLanguage:(id)language
{
  attributeCopy = attribute;
  languageCopy = language;
  popupValue = [(VOTElement *)self popupValue];
  v8 = popupValue;
  if (popupValue)
  {
    if ([popupValue isEqualToString:@"menu"])
    {
      v9 = @"element.has.popup.menu";
    }

    else if ([v8 isEqualToString:@"listbox"])
    {
      v9 = @"element.has.popup.listbox";
    }

    else if ([v8 isEqualToString:@"tree"])
    {
      v9 = @"element.has.popup.tree";
    }

    else if ([v8 isEqualToString:@"grid"])
    {
      v9 = @"element.has.popup.grid";
    }

    else
    {
      if (![v8 isEqualToString:@"dialog"])
      {
        goto LABEL_13;
      }

      v9 = @"element.has.popup.dialog";
    }

    v10 = sub_1000516CC(off_1001FDDD0, v9, 0, languageCopy);
    v11 = [attributeCopy addString:v10 withLanguage:languageCopy];

    lastAction = [attributeCopy lastAction];
    [lastAction setIsVoiceOverGeneratedContent:1];
  }

LABEL_13:
}

- (void)_applyTraitsToRequest:(id)request options:(unint64_t)options numHeaderActions:(unint64_t)actions language:(id)language
{
  requestCopy = request;
  languageCopy = language;
  v11 = +[AXSettings sharedInstance];
  v12 = [v11 voiceOverTraitFeedback] == 2;

  v13 = [objc_allocWithZone(NSMutableArray) init];
  v14 = [(VOTElement *)self arrayOfTraitsAsStringsWithTraitOrder:v13 language:languageCopy];
  v15 = [v14 count];
  if (v15 != [v13 count])
  {
    v30 = v14;
    v31 = v13;
    _AXAssert();
  }

  typingPitchChangeEnabled = [VOTSharedWorkspace typingPitchChangeEnabled];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000BAD38;
  v32[3] = &unk_1001CA648;
  v17 = v13;
  v33 = v17;
  v38 = (options & 4) != 0;
  v39 = (options & 0x80000000) != 0;
  v18 = requestCopy;
  v34 = v18;
  selfCopy = self;
  v19 = languageCopy;
  v36 = v19;
  optionsCopy = options;
  v40 = v12;
  v41 = typingPitchChangeEnabled;
  [v14 enumerateObjectsUsingBlock:v32];
  v20 = kAXWebContentTrait;
  if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait]&& [(VOTElement *)self isComboBox])
  {
    v21 = sub_1000516CC(off_1001FDDD0, @"element.combobox", 0, v19);
    v22 = [v18 addString:v21 withLanguage:v19];

    lastAction = [v18 lastAction];
    [lastAction setIsVoiceOverGeneratedContent:1];
  }

  if ([(VOTElement *)self doesHaveTraits:v20]&& [(VOTElement *)self isInDescriptionDefinition])
  {
    v24 = sub_1000516CC(off_1001FDDD0, @"element.definition", 0, v19);
    v25 = [v18 addString:v24 withLanguage:v19];

    lastAction2 = [v18 lastAction];
    [lastAction2 setIsVoiceOverGeneratedContent:1];
  }

  if ([(VOTElement *)self doesHaveTraits:v20]&& [(VOTElement *)self isInDescriptionTerm])
  {
    v27 = sub_1000516CC(off_1001FDDD0, @"element.definition.term", 0, v19);
    v28 = [v18 addString:v27 withLanguage:v19];

    lastAction3 = [v18 lastAction];
    [lastAction3 setIsVoiceOverGeneratedContent:1];
  }
}

- (void)_addErrorMessageElement:(id)element toRequest:(id)request
{
  requestCopy = request;
  elementCopy = element;
  label = [elementCopy label];
  v8 = +[NSCharacterSet whitespaceCharacterSet];
  v9 = [label stringByTrimmingCharactersInSet:v8];

  value = [elementCopy value];

  v11 = +[NSCharacterSet whitespaceCharacterSet];
  v12 = [value stringByTrimmingCharactersInSet:v11];

  v13 = __AXStringForVariables();
  if ([v13 length])
  {
    language = [(VOTElement *)self language];
    v15 = [requestCopy addString:v13 withLanguage:language];

    lastAction = [requestCopy lastAction];
    [lastAction setPerformPunctuationTranslation:1];

    lastAction2 = [requestCopy lastAction];
    [lastAction2 setReplaceCommas:0];
  }
}

- (void)_applyInvalidStatus:(id)status language:(id)language
{
  statusCopy = status;
  languageCopy = language;
  invalidStatus = [(VOTElement *)self invalidStatus];
  if ([invalidStatus length] && (objc_msgSend(invalidStatus, "isEqualToString:", @"false") & 1) == 0)
  {
    if ([invalidStatus isEqualToString:@"grammar"])
    {
      v9 = off_1001FDDD0;
      v10 = @"invalidStatusGrammar";
    }

    else
    {
      v11 = [invalidStatus isEqualToString:@"spelling"];
      v9 = off_1001FDDD0;
      if (v11)
      {
        v10 = @"invalidStatusSpelling";
      }

      else
      {
        v10 = @"invalidStatusGeneral";
      }
    }

    v12 = sub_1000516CC(v9, v10, 0, languageCopy);
    if ([v12 length])
    {
      LODWORD(v13) = 1061997773;
      [statusCopy addPause:v13];
      v14 = [statusCopy addString:v12 withLanguage:languageCopy];
      errorMessageElements = [(VOTElement *)self errorMessageElements];
      if ([errorMessageElements count])
      {
        LODWORD(v16) = 1061997773;
        [statusCopy addPause:v16];
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = errorMessageElements;
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          v21 = 0;
          do
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [(VOTElement *)self _addErrorMessageElement:*(*(&v23 + 1) + 8 * v21) toRequest:statusCopy, v23];
            v21 = v21 + 1;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v19);
      }

      lastAction = [statusCopy lastAction];
      [lastAction setIsVoiceOverGeneratedContent:0];
    }
  }
}

- (void)applyInvalidStatusToRequest:(id)request
{
  v6 = 0;
  requestCopy = request;
  v5 = [(VOTElement *)self _resolvedOutputLanguage:&v6];
  [(VOTElement *)self _applyInvalidStatus:requestCopy language:v5];
}

- (void)_applyCurrentStatus:(id)status language:(id)language
{
  statusCopy = status;
  languageCopy = language;
  currentStatus = [(VOTElement *)self currentStatus];
  if ([currentStatus length] && (objc_msgSend(currentStatus, "isEqualToString:", @"false") & 1) == 0)
  {
    if ([currentStatus isEqualToString:@"page"])
    {
      v8 = off_1001FDDD0;
      v9 = @"currentStatusPage";
    }

    else if ([currentStatus isEqualToString:@"step"])
    {
      v8 = off_1001FDDD0;
      v9 = @"currentStatusStep";
    }

    else if ([currentStatus isEqualToString:@"location"])
    {
      v8 = off_1001FDDD0;
      v9 = @"currentStatusLocation";
    }

    else if ([currentStatus isEqualToString:@"date"])
    {
      v8 = off_1001FDDD0;
      v9 = @"currentStatusDate";
    }

    else
    {
      v10 = [currentStatus isEqualToString:@"time"];
      v8 = off_1001FDDD0;
      if (v10)
      {
        v9 = @"currentStatusTime";
      }

      else
      {
        v9 = @"currentStatusGeneral";
      }
    }

    v11 = sub_1000516CC(v8, v9, 0, languageCopy);
    if ([v11 length])
    {
      v12 = [statusCopy addString:v11 withLanguage:languageCopy];
      lastAction = [statusCopy lastAction];
      [lastAction setIsVoiceOverGeneratedContent:1];
    }
  }
}

- (void)_applyDatetimeAttribute:(id)attribute language:(id)language
{
  attributeCopy = attribute;
  formattedDatetime = [(VOTElement *)self formattedDatetime];
  if (formattedDatetime)
  {
    v6 = [attributeCopy addString:formattedDatetime];
    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      lastAction = [attributeCopy lastAction];
      LODWORD(v8) = 1062836634;
      v9 = [NSNumber numberWithFloat:v8];
      [lastAction setObject:v9 forVariant:32];
    }
  }
}

- (void)_applySortDirection:(id)direction language:(id)language
{
  directionCopy = direction;
  languageCopy = language;
  sortDirection = [(VOTElement *)self sortDirection];
  if (![sortDirection length])
  {
    goto LABEL_11;
  }

  if ([sortDirection isEqualToString:@"AXAscendingSortDirection"])
  {
    v8 = @"sortUp";
  }

  else
  {
    if (![sortDirection isEqualToString:@"AXDescendingSortDirection"])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = @"sortDown";
  }

  v9 = sub_1000516CC(off_1001FDDD0, v8, 0, languageCopy);
LABEL_8:
  if ([v9 length])
  {
    v10 = [directionCopy addString:v9 withLanguage:languageCopy];
    lastAction = [directionCopy lastAction];
    [lastAction setIsVoiceOverGeneratedContent:1];
  }

LABEL_11:
}

- (_NSRange)_brailleLineRangeForDescription:(id)description position:(unint64_t)position
{
  descriptionCopy = description;
  v6 = [descriptionCopy length];
  if (v6 >= position)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = v6;
  }

  v8 = [descriptionCopy lineRangeForRange:{positionCopy, 0}];
  v10 = v9;
  if (v9)
  {
    v11 = +[NSCharacterSet newlineCharacterSet];
    v12 = [v11 characterIsMember:{objc_msgSend(descriptionCopy, "characterAtIndex:", &v8[v10 - 1])}];

    v10 -= v12 & 1;
  }

  v13 = v8;
  v14 = v10;
  result.length = v14;
  result.location = v13;
  return result;
}

- (id)_copyMathTextualInformationWithBrailleLineRange:(_NSRange *)range brailleDescriptionRange:(_NSRange *)descriptionRange position:(unint64_t)position rotorSelection:(id)selection shouldPreferRotorSelection:(BOOL)rotorSelection
{
  rotorSelectionCopy = rotorSelection;
  selectionCopy = selection;
  mathBrailleDescription = [(VOTElement *)self mathBrailleDescription];
  string = [mathBrailleDescription string];
  if ([string length])
  {
    v15 = [string length];
    descriptionRange->location = 0;
    descriptionRange->length = v15;
    range->location = [(VOTElement *)self _brailleLineRangeForDescription:string position:position];
    range->length = v16;
    if (selectionCopy)
    {
      v17 = selectionCopy;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _AXAssert();
      }

      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = 0;
      v18 = [NSMutableAttributedString alloc];
      v47 = kSCROTechnicalContextAttribute;
      v48 = &__kCFBooleanTrue;
      v19 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v20 = [v18 initWithString:string attributes:v19];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000BBE88;
      v31[3] = &unk_1001CA670;
      v21 = v17;
      v32 = v21;
      v22 = v20;
      v33 = v22;
      v34 = &v41;
      v35 = &v37;
      rangeCopy = range;
      [mathBrailleDescription enumerateAttributesUsingBlock:v31];
      if (rotorSelectionCopy && (v38[3] & 1) == 0 && v42[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        range->location = [(VOTElement *)self _brailleLineRangeForDescription:string position:?];
        range->length = v23;
      }

      v24 = [NSMutableAttributedString alloc];
      v25 = [v22 attributedSubstringFromRange:{range->location, range->length}];
      v26 = [v24 initWithAttributedString:v25];

      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v27 = [NSMutableAttributedString alloc];
      v28 = [string substringWithRange:{range->location, range->length}];
      v45 = kSCROTechnicalContextAttribute;
      v46 = &__kCFBooleanTrue;
      v29 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v26 = [v27 initWithString:v28 attributes:v29];
    }
  }

  else
  {
    v26 = [[NSMutableAttributedString alloc] initWithString:@" "];
  }

  return v26;
}

- (void)addTextualInformationToBrailleLine:(id)line forPosition:(unint64_t)position rotorSelection:(id)selection shouldPreferRotorSelection:(BOOL)rotorSelection lineRange:(_NSRange *)range descriptionRange:(_NSRange *)descriptionRange lineRangeKnown:(BOOL)known isNewTouchContainer:(BOOL)self0 previousElement:(id)self1
{
  LOWORD(v12) = 257;
  LOWORD(v11) = __PAIR16__(container, known);
  [VOTElement addTextualInformationToBrailleLine:"addTextualInformationToBrailleLine:forPosition:rotorSelection:shouldPreferRotorSelection:lineRange:descriptionRange:lineRangeKnown:isNewTouchContainer:previousElement:updateValue:singleLine:" forPosition:line rotorSelection:position shouldPreferRotorSelection:selection lineRange:rotorSelection descriptionRange:range lineRangeKnown:descriptionRange isNewTouchContainer:v11 previousElement:element updateValue:v12 singleLine:?];
}

- (void)addTextualInformationToBrailleLine:(id)line forPosition:(unint64_t)position rotorSelection:(id)selection shouldPreferRotorSelection:(BOOL)rotorSelection lineRange:(_NSRange *)range descriptionRange:(_NSRange *)descriptionRange lineRangeKnown:(BOOL)known isNewTouchContainer:(BOOL)self0 previousElement:(id)self1 updateValue:(BOOL)self2 singleLine:(BOOL)self3
{
  rotorSelectionCopy = rotorSelection;
  lineCopy = line;
  selectionCopy = selection;
  elementCopy = element;
  v205 = xmmword_10017E110;
  v206 = xmmword_10017E110;
  v166 = selectionCopy;
  if ([(VOTElement *)self doesHaveTraits:kAXMathEquationTrait])
  {
    v18 = [(VOTElement *)self _copyMathTextualInformationWithBrailleLineRange:&v206 brailleDescriptionRange:&v205 position:position rotorSelection:selectionCopy shouldPreferRotorSelection:rotorSelectionCopy];
    v19 = v206;
    if (*(&v19 + 1) + v19 <= [v18 length])
    {
      [v18 addAttribute:kSCROEditableTextAttribute value:&__kCFBooleanFalse range:v206];
    }

    goto LABEL_179;
  }

  positionCopy = position;
  selfCopy = self;
  if ([(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait]&& ![(VOTElement *)self shouldIgnoreTextEditingTrait])
  {
    selectedTextRange = [(VOTElement *)self selectedTextRange];
    obj = v32;
    range1 = selectedTextRange;
    v33 = [(VOTElement *)self valueWithUpdate:value];
    if ([(__CFString *)v33 isAXAttributedString])
    {
      v34 = v33;
      if (([(__CFString *)v34 hasAttribute:UIAccessibilityTokenPlaceholder]& 1) != 0)
      {
        string = &stru_1001CBF90;
      }

      else
      {
        string = [(__CFString *)v34 string];
      }

      positionCopy3 = position;
    }

    else
    {
      if (v33)
      {
        string = v33;
      }

      else
      {
        string = &stru_1001CBF90;
      }

      positionCopy3 = position;
    }

    v38 = [(__CFString *)string length];
    v205.location = 0;
    v205.length = v38;
    if (singleLine)
    {
      if (v38 >= positionCopy3)
      {
        v39 = positionCopy3;
      }

      else
      {
        v39 = v38;
      }

      v40 = [(__CFString *)string lineRangeForRange:v39, 0];
      length = v41;
      *&v206 = v40;
      *(&v206 + 1) = v41;
      if (v41)
      {
LABEL_37:
        v43 = +[NSCharacterSet newlineCharacterSet];
        v44 = v206;
        v45 = [v43 characterIsMember:{-[__CFString characterAtIndex:](string, "characterAtIndex:", v206 + length - 1)}];

        if (v45)
        {
          *(&v206 + 1) = --length;
        }

LABEL_41:
        range1_8a = [(__CFString *)string substringWithRange:v44, length];
        v46 = 0;
        if (range1 == 0x7FFFFFFFFFFFFFFFLL)
        {
          valueCopy2 = value;
        }

        else
        {
          valueCopy2 = value;
          if (obj + range1 >= v44)
          {
            v46 = obj + range1 <= length + v44;
          }
        }

        v48 = [objc_allocWithZone(NSMutableAttributedString) initWithString:range1_8a];
        v49 = [(VOTElement *)selfCopy valueWithUpdate:valueCopy2];
        [(VOTElement *)selfCopy _applyBrailleTextFormattingAndInlineCompletionOptions:v49 attributedString:v48 brailleLineRange:v44 rangeOffset:length, 0];

        v50 = [[AXAttributedString alloc] initWithStringOrAttributedString:v48];
        v204 = 0;
        v51 = sub_1000539B8(v50, &v204);
        v52 = v204;

        v53 = [NSMutableAttributedString alloc];
        attributedString = [v51 attributedString];
        v18 = [v53 initWithAttributedString:attributedString];

        if (v46)
        {
          [v18 addAttribute:kSCROEditableTextAttribute value:&__kCFBooleanTrue range:{0, objc_msgSend(v18, "length")}];
        }

        v55 = [objc_allocWithZone(NSMutableAttributedString) initWithString:@" "];
        [v55 addAttribute:kSCROEditableTextPaddingAttribute value:&__kCFBooleanTrue range:{0, 1}];
        [v18 appendAttributedString:v55];
        if ([(VOTElement *)selfCopy doesHaveTraits:kAXSecureTextFieldTrait])
        {
          [v18 addAttribute:@"SCROTokenSecureAttribute" value:&__kCFBooleanTrue range:{0, objc_msgSend(v18, "length")}];
        }

        if (!v46)
        {
          goto LABEL_91;
        }

        v56.length = obj;
        if (obj)
        {
          v56.location = range1;
          v214.location = v44;
          v214.length = length;
          v57 = NSIntersectionRange(v56, v214);
          if (!v57.length)
          {
            goto LABEL_91;
          }

          v58 = sub_100053DE4(v57.location - v44, v57.length, v52);
          v60 = v59;
          if (v58 + v59 > [v18 length])
          {
            goto LABEL_91;
          }

          v61 = &kSCROSelectionAttribute;
        }

        else
        {
          v58 = sub_100053DE4(range1 - v44, 0, v52);
          if (v58 + 1 > [v18 length])
          {
LABEL_91:

            goto LABEL_179;
          }

          v61 = &kSCROCursorAttribute;
          v60 = 1;
        }

        [v18 addAttribute:*v61 value:kCFBooleanTrue range:{v58, v60}];
        goto LABEL_91;
      }
    }

    else
    {
      v206 = v205;
      length = v205.length;
      if (v205.length)
      {
        goto LABEL_37;
      }
    }

    v44 = v206;
    goto LABEL_41;
  }

  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  range1_8 = [objc_allocWithZone(NSMutableString) init];
  if (![(VOTElement *)self isReadingContent])
  {
    touchContainer = [(VOTElement *)self touchContainer];
    containerOutputFeedback = [VOTSharedWorkspace containerOutputFeedback];
    if (([touchContainer touchContainerShouldOutputBraille] | (containerOutputFeedback >> 4) & 1) == 1 && container)
    {
      label = [touchContainer label];
      if ([label length])
      {
        if ([label isAXAttributedString])
        {
          string2 = [label string];
          [range1_8 appendFormat:@"%@ ", string2];
        }

        else
        {
          [range1_8 appendFormat:@"%@ ", label];
        }
      }
    }

    label2 = [(VOTElement *)self label];
    if ([label2 isAXAttributedString])
    {
      v63 = label2;
      v64 = [v63 attributeValueForKey:UIAccessibilityTokenBrailleOverride];
      label2 = v63;
      if ([v64 length])
      {
        label2 = v64;
      }
    }

    v162 = [(VOTElement *)self _removeBadDeveloperDecisions:label2];

    v157 = [(VOTElement *)self _languageRangesForText:v162];
    v65 = [v162 length];
    if (v65)
    {
      v66 = v65;
      selfCopy7 = self;
      location = 0x7FFFFFFFFFFFFFFFLL;
      if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
      {
        v212.location = [(VOTElement *)self textMarkerSelectionRange];
        v215.location = 0;
        v215.length = v66;
        v69 = NSIntersectionRange(v212, v215);
        v160 = v69.length;
        if (v69.length)
        {
          location = v69.location;
        }

        selectedTextRange2 = location;
      }

      else
      {
        selectedTextRange2 = 0x7FFFFFFFFFFFFFFFLL;
        v160 = 0;
      }

      v70 = range1_8;
      if ([v162 isAXAttributedString])
      {
        string3 = [v162 string];
        v70 = range1_8;
        [range1_8 appendFormat:@"%@ ", string3];

        selfCopy7 = self;
      }

      else
      {
        [range1_8 appendFormat:@"%@ ", v162];
      }
    }

    else
    {
      v160 = 0;
      selectedTextRange2 = 0x7FFFFFFFFFFFFFFFLL;
      selfCopy7 = self;
      v70 = range1_8;
    }

    range1a = [v70 length];
    if ([VOTSharedWorkspace navigationStyleHonorsGroups] && -[VOTElement includeRoleOnlyForGroupNavigation](selfCopy7, "includeRoleOnlyForGroupNavigation") && -[VOTElement isAccessibleGroup](selfCopy7, "isAccessibleGroup"))
    {
      v72 = [(VOTElement *)selfCopy7 roleDescriptionWithInteractOption:0 language:0];
      if ([v72 length])
      {
        [range1_8 appendFormat:@"%@ ", v72];
      }

      selfCopy7 = self;
    }

    if ([(VOTElement *)selfCopy7 doesHaveTraits:kAXImageTrait])
    {
      photoDescription = [(VOTElement *)selfCopy7 photoDescription];
      if ([photoDescription length])
      {
        [range1_8 appendFormat:@"%@ ", photoDescription];
      }

      selfCopy7 = self;
    }

    if ([(VOTElement *)selfCopy7 doesHaveTraits:kAXToggleTrait])
    {
      v74 = 0;
    }

    else
    {
      v74 = [(VOTElement *)selfCopy7 valueWithUpdate:value];

      selfCopy7 = self;
    }

    v158 = v74;
    v75 = [(VOTElement *)selfCopy7 _languageRangesForText:v74];
    if ([v74 length])
    {
      isAXAttributedString = [v74 isAXAttributedString];
      v77 = v74;
      v78 = v77;
      if (isAXAttributedString)
      {
        v79 = [v77 attributeValueForKey:UIAccessibilityTokenBrailleOverride];
        v80 = v79;
        if (v79)
        {
          string4 = v79;
        }

        else
        {
          string4 = [v78 string];
        }

        v78 = string4;
      }

      selfCopy9 = self;
      v161 = [range1_8 length];
      [range1_8 appendFormat:@"%@ ", v78];
      [range1_8 length];
    }

    else
    {
      v161 = 0x7FFFFFFFFFFFFFFFLL;
      selfCopy9 = self;
    }

    generateCVMLContentForBraille = [(VOTElement *)selfCopy9 generateCVMLContentForBraille];
    [range1_8 appendString:generateCVMLContentForBraille];

    customContent = [(VOTElement *)self customContent];
    customContentImportance = [VOTSharedWorkspace customContentImportance];
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    obja = customContent;
    v86 = [obja countByEnumeratingWithState:&v200 objects:v210 count:16];
    if (v86)
    {
      v87 = *v201;
      do
      {
        for (i = 0; i != v86; i = i + 1)
        {
          if (*v201 != v87)
          {
            objc_enumerationMutation(obja);
          }

          v89 = *(*(&v200 + 1) + 8 * i);
          if ([v89 importance] == customContentImportance)
          {
            label3 = [v89 label];
            value = [v89 value];
            [range1_8 appendFormat:@"%@, %@ ", label3, value];
          }
        }

        v86 = [obja countByEnumeratingWithState:&v200 objects:v210 count:16];
      }

      while (v86);
    }

    v92 = [v157 mutableCopy];
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v172 = v75;
    v93 = [v172 countByEnumeratingWithState:&v196 objects:v209 count:16];
    if (v93)
    {
      v94 = *v197;
      do
      {
        for (j = 0; j != v93; j = j + 1)
        {
          if (*v197 != v94)
          {
            objc_enumerationMutation(v172);
          }

          v96 = *(*(&v196 + 1) + 8 * j);
          v97 = [v96 objectAtIndexedSubscript:1];
          rangeValue = [v97 rangeValue];
          v100 = v99;

          v101 = [v96 objectAtIndexedSubscript:0];
          v208[0] = v101;
          v100 = [NSValue valueWithRange:&range1a[rangeValue], v100];
          v208[1] = v100;
          v103 = [NSArray arrayWithObjects:v208 count:2];
          [v92 addObject:v103];
        }

        v93 = [v172 countByEnumeratingWithState:&v196 objects:v209 count:16];
      }

      while (v93);
    }

    v21 = v92;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    arrayOfTraitsAsStrings = [(VOTElement *)selfCopy arrayOfTraitsAsStrings];
    v105 = [arrayOfTraitsAsStrings countByEnumeratingWithState:&v192 objects:v207 count:16];
    if (v105)
    {
      v106 = *v193;
      do
      {
        for (k = 0; k != v105; k = k + 1)
        {
          if (*v193 != v106)
          {
            objc_enumerationMutation(arrayOfTraitsAsStrings);
          }

          v108 = [*(*(&v192 + 1) + 8 * k) mutableCopyWithZone:0];
          v109 = +[VOTBrailleManager manager];
          [v109 applyBrailleSubstitutions:v108];

          [range1_8 appendFormat:@"%@ ", v108];
        }

        v105 = [arrayOfTraitsAsStrings countByEnumeratingWithState:&v192 objects:v207 count:16];
      }

      while (v105);
    }

    v110 = +[AXSettings sharedInstance];
    voiceOverListAnnotation = [v110 voiceOverListAnnotation];

    if ([(VOTElement *)selfCopy shouldIncludeRowRangeInDescription]|| [(VOTElement *)selfCopy containedIn:2])
    {
      hasExplicitRowInfo = 1;
    }

    else
    {
      hasExplicitRowInfo = [(VOTElement *)selfCopy hasExplicitRowInfo];
    }

    rowRange = [(VOTElement *)selfCopy rowRange];
    if (rowRange != 0x7FFFFFFF)
    {
      v115 = v113;
      if (v113)
      {
        if ((hasExplicitRowInfo | (voiceOverListAnnotation >> 4) & 1) == 1)
        {
          v116 = sub_1000516CC(off_1001FDDD0, @"one.of.many.abbreviated", 0, selectedLanguage);
          v156 = v115;
          v117 = AXCFormattedString();
          if (([range1_8 containsString:{v117, rowRange + 1, v156}] & 1) == 0)
          {
            [range1_8 appendFormat:@"%@ ", v117];
          }
        }
      }
    }

    expandedStatus = [(VOTElement *)selfCopy expandedStatus];
    if (expandedStatus)
    {
      if (expandedStatus == 1)
      {
        v119 = @"expanded";
      }

      else
      {
        v119 = @"collapsed";
      }

      v120 = sub_1000516CC(off_1001FDDD0, v119, 0, selectedLanguage);
      [range1_8 appendFormat:@"%@ ", v120];
    }

    v121 = +[AXSettings sharedInstance];
    v122 = ([v121 voiceOverActionsFeedback] & 0x10) == 0;

    v123 = selfCopy;
    if (v122)
    {
      goto LABEL_147;
    }

    v123 = selfCopy;
    if ([(VOTElement *)selfCopy _ignoreCustomActionIndicator:elementCopy withElement:selfCopy])
    {
      goto LABEL_147;
    }

    v188 = 0;
    v189 = &v188;
    v190 = 0x2020000000;
    v191 = 0;
    v184 = 0;
    v185 = &v184;
    v186 = 0x2020000000;
    v187 = 0;
    v180 = 0;
    v181 = &v180;
    v182 = 0x2020000000;
    v183 = 0;
    customRotorActions = [(VOTElement *)selfCopy customRotorActions];
    v179[0] = _NSConcreteStackBlock;
    v179[1] = 3221225472;
    v179[2] = sub_1000BD4D0;
    v179[3] = &unk_1001CA698;
    v179[4] = &v184;
    v179[5] = &v180;
    v179[6] = &v188;
    [customRotorActions enumerateObjectsUsingBlock:v179];

    v123 = selfCopy;
    if (![(VOTElement *)selfCopy doesHaveTraits:kAXLaunchIconTrait])
    {
      v125 = v189[3];
      if (v125 != v181[3])
      {
LABEL_139:
        if (v125)
        {
          v126 = sub_1000511CC(off_1001FDDD8, @"custom.actions.hint.short", 0);
          [range1_8 appendFormat:@" %@", v126];

          v123 = selfCopy;
        }

        v127 = v185[3];
        if (v127)
        {
          if (v127 == 1)
          {
            v128 = @"drops.available.hint.singular";
          }

          else
          {
            v128 = @"drops.available.hint.plural";
          }

          v129 = sub_1000516CC(off_1001FDDD0, v128, 0, selectedLanguage);
          v130 = [NSString localizedStringWithFormat:v129, v185[3]];

          [range1_8 appendFormat:@" %@", v130];
          v123 = selfCopy;
        }

        goto LABEL_146;
      }

      if (![(VOTElement *)selfCopy isAccessibleGroup])
      {
        v125 = v189[3];
        goto LABEL_139;
      }
    }

LABEL_146:
    _Block_object_dispose(&v180, 8);
    _Block_object_dispose(&v184, 8);
    _Block_object_dispose(&v188, 8);
LABEL_147:
    supplementalBrailleDescription = [(VOTElement *)v123 supplementalBrailleDescription];
    v132 = [supplementalBrailleDescription length] == 0;

    if (!v132)
    {
      v133 = off_1001FDDD0;
      selectedLanguage2 = [VOTSharedWorkspace selectedLanguage];
      v135 = sub_1000516CC(v133, @"braille.supplemental.description.format", 0, selectedLanguage2);
      supplementalBrailleDescription2 = [(VOTElement *)selfCopy supplementalBrailleDescription];
      [range1_8 appendFormat:v135, supplementalBrailleDescription2];
    }

    selfCopy12 = selfCopy;
    goto LABEL_150;
  }

  [(VOTElement *)self updatePageContent];
  pageContent = [(VOTElement *)self pageContent];
  v21 = [(VOTElement *)self _languageRangesForText:pageContent];
  v22 = [pageContent length];
  if (v22)
  {
    v23 = v22;
    selfCopy12 = self;
    v211.location = [(VOTElement *)self textMarkerSelectionRange];
    v213.location = 0;
    v213.length = v23;
    v25 = NSIntersectionRange(v211, v213);
    selectedTextRange2 = v25.location;
    v160 = v25.length;
    if ([pageContent isAXAttributedString])
    {
      string5 = [pageContent string];
      [range1_8 appendString:string5];

      selfCopy12 = self;
    }

    else
    {
      [range1_8 appendString:pageContent];
    }

    if (!v25.length || v25.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      selectedTextRange2 = [(VOTElement *)selfCopy12 selectedTextRange];
      v160 = v37;
    }
  }

  else
  {
    v160 = 0;
    selectedTextRange2 = 0x7FFFFFFFFFFFFFFFLL;
    selfCopy12 = self;
  }

  v161 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_150:
  roleDescription = [(VOTElement *)selfCopy12 roleDescription];
  if ([roleDescription length] && objc_msgSend(roleDescription, "isAXAttributedString"))
  {
    v138 = roleDescription;
    v139 = [v138 attributeValueForKey:UIAccessibilityTokenBrailleOverride];
    roleDescription = v138;
    if ([v139 length])
    {
      roleDescription = v139;
    }

    [range1_8 appendFormat:@"%@ ", roleDescription];
  }

  if ([range1_8 length] >= 2 && objc_msgSend(range1_8, "characterAtIndex:", objc_msgSend(range1_8, "length") - 1) == 32)
  {
    [range1_8 replaceCharactersInRange:objc_msgSend(range1_8 withString:{"length") - 1, 1, &stru_1001CBF90}];
  }

  v140.location = [range1_8 length];
  v140.length = v140.location;
  v205.location = 0;
  v205.length = v140.location;
  if (range && known && range->length)
  {
    v206 = *range;
    v216.length = *(&v206 + 1);
    v216.location = v206 + v161;
    v140.location = 0;
    v143 = NSIntersectionRange(v140, v216);
    v142 = v143.length;
    v141 = v143.location;
  }

  else
  {
    if (v140.location >= positionCopy)
    {
      v144 = positionCopy;
    }

    else
    {
      v144 = v140.location;
    }

    v141 = [range1_8 lineRangeForRange:{v144, 0}];
  }

  v145 = v141;
  v146 = v142;
  *&v206 = v141;
  *(&v206 + 1) = v142;
  if (v142)
  {
    v147 = +[NSCharacterSet newlineCharacterSet];
    v148 = [v147 characterIsMember:{objc_msgSend(range1_8, "characterAtIndex:", &v145[v146 - 1])}];

    if (v148)
    {
      *(&v206 + 1) = --v146;
    }
  }

  v149 = [range1_8 substringWithRange:{v145, v146}];
  v150 = objc_allocWithZone(NSMutableAttributedString);
  if ([(__CFString *)v149 length])
  {
    v151 = v149;
  }

  else
  {
    v151 = @" ";
  }

  v152 = [v150 initWithString:v151];
  v18 = v152;
  if (selectedTextRange2 == 0x7FFFFFFFFFFFFFFFLL || selectedTextRange2 + v160 > [v152 length])
  {
    if (positionCopy + 1 >= &v145[v146])
    {
      v153 = +[VOTBrailleManager manager];
      v154 = [v153 lastRefreshTrigger] == 1;

      if (!v154)
      {
        [v18 addAttribute:kSCROLineFocusAttribute value:&off_1001DA130 range:{0, objc_msgSend(v18, "length")}];
      }
    }
  }

  else
  {
    [v18 addAttribute:kSCROSelectionAttribute value:kCFBooleanTrue range:?];
  }

  [v18 addAttribute:kSCROEditableTextAttribute value:&__kCFBooleanFalse range:{0, objc_msgSend(v18, "length")}];
  v155 = [(VOTElement *)selfCopy valueWithUpdate:value];
  [(VOTElement *)selfCopy _applyBrailleTextFormattingAndInlineCompletionOptions:v155 attributedString:v18 brailleLineRange:v145 rangeOffset:v146, v161];

  [(VOTElement *)selfCopy _applyLanguageTokens:v21 attributedString:v18];
LABEL_179:
  [lineCopy appendAttributedString:v18];
  if (range)
  {
    *range = v206;
  }

  if (descriptionRange)
  {
    *descriptionRange = v205;
  }
}

- (void)_applyBrailleTextFormattingAndInlineCompletionOptions:(id)options attributedString:(id)string brailleLineRange:(_NSRange)range rangeOffset:(unint64_t)offset
{
  length = range.length;
  location = range.location;
  optionsCopy = options;
  stringCopy = string;
  if ([optionsCopy isAXAttributedString])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BD6AC;
    v16[3] = &unk_1001CA6C0;
    offsetCopy = offset;
    v19 = location;
    v20 = length;
    v12 = stringCopy;
    v17 = v12;
    [optionsCopy enumerateAttributesUsingBlock:v16];
    v13 = +[AXSettings sharedInstance];
    voiceOverInlineTextCompletionAppearanceFeedback = [v13 voiceOverInlineTextCompletionAppearanceFeedback];

    if ((voiceOverInlineTextCompletionAppearanceFeedback & 0x10) == 0)
    {
      v15 = xmmword_10017E1D0;
      [v12 getRange:&v15 ofAttribute:kSCROSuggestionTextAttribute];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 deleteCharactersInRange:v15];
      }
    }
  }
}

- (void)_applyLanguageTokens:(id)tokens attributedString:(id)string
{
  tokensCopy = tokens;
  stringCopy = string;
  v19 = kSCROLanguageAttribute;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [tokensCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(tokensCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = +[NSNull null];
        v14 = [v12 isEqual:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v11 objectAtIndexedSubscript:1];
          rangeValue = [v15 rangeValue];
          v18 = v17;

          if (&rangeValue[v18] <= [stringCopy length])
          {
            [stringCopy addAttribute:v19 value:v12 range:{rangeValue, v18}];
          }
        }
      }

      v8 = [tokensCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (id)_languageRangesForText:(id)text
{
  textCopy = text;
  if (![textCopy length])
  {
    v6 = &__NSArray0__struct;
    goto LABEL_15;
  }

  language = [(VOTElement *)self language];
  if (language)
  {
  }

  else
  {
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];

    if (!selectedLanguage)
    {
      v10 = [VOTOutputRequest stringShouldSeparateDueToLanguage:textCopy language:0 keyboardLanguageHint:0];
      if (v10)
      {
        goto LABEL_7;
      }
    }
  }

  v30[1] = @"language";
  v31[0] = textCopy;
  v30[0] = @"string";
  v8 = +[NSNull null];
  v31[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  v32 = v9;
  v10 = [NSArray arrayWithObjects:&v32 count:1];

LABEL_7:
  v6 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"string"];
        v18 = [v16 objectForKeyedSubscript:@"language"];
        v28[0] = v18;
        v19 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", v13, [v17 length]);
        v28[1] = v19;
        v20 = [NSArray arrayWithObjects:v28 count:2];
        [v6 addObject:v20];

        v13 += [v17 length];
      }

      v12 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  textCopy = v22;
LABEL_15:

  return v6;
}

- (void)_applyLinkRelationshipType:(id)type language:(id)language
{
  typeCopy = type;
  linkRelationshipType = [(VOTElement *)self linkRelationshipType];
  v6 = SCRCLinkRelationshipStringForType();
  if ([v6 length])
  {
    v7 = [typeCopy addString:v6];
  }
}

- (void)_applyExpandedStatus:(id)status language:(id)language
{
  statusCopy = status;
  languageCopy = language;
  expandedStatus = [(VOTElement *)self expandedStatus];
  if (expandedStatus)
  {
    if (expandedStatus == 1)
    {
      v8 = @"expanded";
    }

    else
    {
      v8 = @"collapsed";
    }

    v9 = sub_1000516CC(off_1001FDDD0, v8, 0, languageCopy);
    v10 = [statusCopy addString:v9 withLanguage:languageCopy];
  }
}

- (void)_applySelectedTrait:(id)trait language:(id)language
{
  traitCopy = trait;
  languageCopy = language;
  traits = [(VOTElement *)self traits];
  if ((kAXSelectedTrait & traits) != 0)
  {
    v8 = sub_1000516CC(off_1001FDDD0, @"element.selected.text", @"selected", languageCopy);
    if ([(VOTElement *)self doesHaveTraits:kAXPickerElementTrait])
    {
      outputActions = [traitCopy outputActions];
      v10 = [outputActions count];
    }

    else
    {
      v10 = 0;
    }

    v11 = [traitCopy addString:v8 breakWords:0 withLanguage:languageCopy atIndex:v10];
    outputActions2 = [traitCopy outputActions];
    v13 = [outputActions2 objectAtIndexedSubscript:v10];
    [v13 setIsVoiceOverGeneratedContent:1];
  }
}

- (id)_resolvedOutputLanguage:(BOOL *)language
{
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  if (-[VOTElement isInStatusBar](self, "isInStatusBar") && ([VOTSharedWorkspace systemSpokenLanguage], v6 = objc_claimAutoreleasedReturnValue(), AXLanguageCanonicalFormToGeneralLanguage(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(selectedLanguage, "hasPrefix:", v7), v7, v6, !v8))
  {
    v17 = 0;
  }

  else
  {
    if (!selectedLanguage)
    {
      language = [(VOTElement *)self language];
      selectedLanguage = AXLanguageConvertToCanonicalForm();

      if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
      {
        v10 = +[AXSettings sharedInstance];
        voiceOverLanguageDetectionEnabled = [v10 voiceOverLanguageDetectionEnabled];

        if (voiceOverLanguageDetectionEnabled)
        {
          websiteLanguageMappingOverrides = [VOTSharedWorkspace websiteLanguageMappingOverrides];
          if ([websiteLanguageMappingOverrides count])
          {
            webAreaURL = [(VOTElement *)self webAreaURL];
            absoluteString = [webAreaURL absoluteString];
            v15 = [websiteLanguageMappingOverrides objectForKey:absoluteString];

            if (v15)
            {
              v16 = v15;

              selectedLanguage = v16;
            }

            else
            {
              *language = 1;
            }
          }

          else
          {
            *language = 1;
          }
        }

        else
        {
          websiteLanguageMappingOverrides = selectedLanguage;
          selectedLanguage = 0;
        }
      }
    }

    selectedLanguage = selectedLanguage;
    v17 = selectedLanguage;
  }

  return v17;
}

- (void)addTextualInformationToRequest:(id)request options:(unint64_t)options dataPackage:(id)package
{
  requestCopy = request;
  packageCopy = package;
  lastSeenContextDescriptors = [packageCopy lastSeenContextDescriptors];
  lastSeenLineAndColumn = [packageCopy lastSeenLineAndColumn];
  v270 = (options & 0x102) != 0;
  v326 = 0;
  v327 = &v326;
  v276 = (options & 0x40108) == 0;
  v328 = 0x2020000000;
  v329 = 0;
  v273 = (options & 0x2001180) == 0;
  v322 = 0;
  v323 = &v322;
  v324 = 0x2020000000;
  v325 = 0;
  outputActions = [requestCopy outputActions];
  v269 = [outputActions count];

  optionsCopy3 = options;
  v8 = (options & 0x2004188);
  if ((options & 0x1000000) != 0 && [(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
  {
    roleDescription = [(VOTElement *)self roleDescription];
    v8 = [roleDescription length];

    optionsCopy3 = options;
  }

  v275 = v8 == 0;
  if ((optionsCopy3 & 0x100000) != 0)
  {
    aspectMask = [(VOTElement *)self aspectMask];
    v267 = (aspectMask & 8) == 0;
    v13 = (aspectMask & 9) != 0 && (options & 0x40108) == 0;
    v14 = (aspectMask >> 1) & 1;
    if ((options & 0x2001180) != 0)
    {
      LODWORD(v14) = 0;
    }

    v273 = v14;
    v275 = (v8 == 0) & (aspectMask >> 2);
    v276 = v13;
    LODWORD(v10) = (aspectMask >> 5) & 1 & BYTE3(optionsCopy3);
  }

  else
  {
    v267 = 0;
    v10 = (optionsCopy3 >> 24) & 1;
  }

  v268 = v10;
  v321 = 0;
  v279 = [(VOTElement *)self _resolvedOutputLanguage:&v321];
  if ((optionsCopy3 & 0x20) != 0)
  {
    labeledTouchContainer = [(VOTElement *)self labeledTouchContainer];
    if ([(VOTElement *)self containedIn:1]&& ![(VOTElement *)self containedIn:4])
    {
      v16 = ![(VOTElement *)self containedIn:2];
    }

    else
    {
      v16 = 0;
    }

    if ((([labeledTouchContainer isEqual:self] | v16) & 1) == 0)
    {
      label = [labeledTouchContainer label];
      label2 = [(VOTElement *)self label];
      v19 = [label isEqualToString:label2];

      label3 = [labeledTouchContainer label];
      LODWORD(label2) = [label3 length] == 0;

      if (label2)
      {
        v21 = [labeledTouchContainer includeRoleOnlyForGroupNavigation] ? 0 : 0x1000000;
      }

      else
      {
        v21 = 0;
      }

      v22 = [labeledTouchContainer doesHaveTraits:kAXWebContentTrait] ? v21 | 2 : v21;
      containerOutputFeedback = [VOTSharedWorkspace containerOutputFeedback];
      v276 &= v19 ^ 1;
      if ((containerOutputFeedback & 2) != 0)
      {
        outputActions2 = [requestCopy outputActions];
        v25 = [outputActions2 count];

        [labeledTouchContainer addTextualInformationToRequest:requestCopy options:v22 dataPackage:0];
        outputActions3 = [requestCopy outputActions];
        v27 = [outputActions3 count];

        if (v27 > v25)
        {
          if ((containerOutputFeedback & 8) != 0)
          {
            lastAction = [requestCopy lastAction];
            [lastAction setObject:&off_1001D9960 forVariant:32];
          }

          lastAction2 = [requestCopy lastAction];
          [lastAction2 setObject:&__kCFBooleanTrue forVariant:68];
        }
      }
    }

    optionsCopy3 = options;
  }

  if ((optionsCopy3 & 0x8000000000) != 0)
  {
    applicationIsRTL = [(VOTElement *)self applicationIsRTL];
    v31 = off_1001FDDD0;
    if (applicationIsRTL)
    {
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      sub_1000511CC(v31, @"element.directionality-change.rtl", selectedLanguage);
    }

    else
    {
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      sub_1000511CC(v31, @"element.directionality-change.ltr", selectedLanguage);
    }
    v33 = ;
    v34 = [requestCopy addString:v33];
  }

  v278 = kAXWebContentTrait;
  if ([(VOTElement *)self doesHaveTraits:?])
  {
    uiElement = [(VOTElement *)self uiElement];
    if (([uiElement BOOLWithAXAttribute:2237] & 1) == 0)
    {
      previousElement = [packageCopy previousElement];
      uiElement2 = [previousElement uiElement];
      v38 = [uiElement2 BOOLWithAXAttribute:2237];

      if (!v38)
      {
        goto LABEL_45;
      }

      v39 = sub_1000516CC(off_1001FDDD0, @"element.contenteditable.end", 0, v279);
      v40 = [requestCopy addString:v39];

      uiElement = [requestCopy lastAction];
      [uiElement setIsVoiceOverGeneratedContent:1];
    }
  }

LABEL_45:
  elementHeadersForOutput = [requestCopy elementHeadersForOutput];
  v42 = [elementHeadersForOutput count] == 0;

  optionsCopy6 = options;
  if (!v42)
  {
    [(VOTElement *)self applyHeaderElementsToRequest:requestCopy];
  }

  if ((options & 0x4000000) != 0)
  {
    [(VOTElement *)self applyRowHeadersToRequest:requestCopy];
  }

  if ((options & 0x800000) != 0)
  {
    contextDescriptors = [(VOTElement *)self contextDescriptors];
    v45 = [contextDescriptors count] == 0;

    optionsCopy6 = options;
    if (!v45)
    {
      v319 = 0u;
      v320 = 0u;
      v317 = 0u;
      v318 = 0u;
      contextDescriptors2 = [(VOTElement *)self contextDescriptors];
      v47 = [contextDescriptors2 countByEnumeratingWithState:&v317 objects:v331 count:16];
      if (v47)
      {
        v48 = *v318;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v318 != v48)
            {
              objc_enumerationMutation(contextDescriptors2);
            }

            v50 = *(*(&v317 + 1) + 8 * i);
            v51 = [v50 objectForKeyedSubscript:@"category"];
            v52 = [v50 objectForKeyedSubscript:@"value"];
            v53 = [v50 objectForKeyedSubscript:@"isDefault"];
            LOBYTE(v50) = [v53 BOOLValue];

            v54 = [lastSeenContextDescriptors objectForKeyedSubscript:v51];
            if (!([v54 isEqualToString:v52] & 1 | (v54 == 0) & v50))
            {
              v55 = [requestCopy addString:v52];
              if ([VOTSharedWorkspace typingPitchChangeEnabled])
              {
                lastAction3 = [requestCopy lastAction];
                LODWORD(v57) = 1062836634;
                v58 = [NSNumber numberWithFloat:v57];
                [lastAction3 setObject:v58 forVariant:32];
              }
            }
          }

          v47 = [contextDescriptors2 countByEnumeratingWithState:&v317 objects:v331 count:16];
        }

        while (v47);
      }

      optionsCopy6 = options;
    }
  }

  v59 = *&optionsCopy6 & 0x10008;
  if ((*&optionsCopy6 & 0x10008) == 0x10008 && ![(VOTElement *)self doesHaveTraits:kAXPickerElementTrait])
  {
    [(VOTElement *)self _applySelectedTrait:requestCopy language:v279];
  }

  v60 = +[AXSettings sharedInstance];
  voiceOverTraitFeedback = [v60 voiceOverTraitFeedback];

  if (((voiceOverTraitFeedback == 1) & v275) == 1)
  {
    [(VOTElement *)self _applyTraitsToRequest:requestCopy options:options numHeaderActions:v269 language:v279];
  }

  v62 = options & 0x2000000000;
  if (v276)
  {
    numberOfActions = [requestCopy numberOfActions];
    if ((options & 0x1000000000) != 0)
    {
      v64 = 1;
    }

    else
    {
      v64 = v62 >> 36;
    }

    [(VOTElement *)self _applyLabelToRequest:requestCopy includeBlockQuote:(options >> 17) & 1 language:v279 isWebLanguageChoice:v321 interactOption:v64];
    v65 = [requestCopy numberOfActions] > numberOfActions;
    *(v327 + 24) = v65;
    containsActions = [requestCopy containsActions];
    if ((options & 0x80) != 0 && [VOTSharedWorkspace typingPitchChangeEnabled])
    {
      lastAction4 = [requestCopy lastAction];
      LODWORD(v68) = 1062836634;
      v69 = [NSNumber numberWithFloat:v68];
      [lastAction4 setObject:v69 forVariant:32];
    }

    if ([(VOTElement *)self doesHaveTraits:kAXKeyboardKeyTrait])
    {
      lastAction5 = [requestCopy lastAction];
      [lastAction5 setObject:&__kCFBooleanTrue forVariant:58];
    }

    [(VOTElement *)self _applyCustomContent:requestCopy language:v279];
  }

  else
  {
    containsActions = 0;
  }

  if ((options & 0x400000000) == 0)
  {
    customAction = [packageCopy customAction];
    [(VOTElement *)self _applyStickyCustomActions:requestCopy customAction:customAction language:v279];
  }

  if ([(VOTElement *)self doesHaveTraits:kAXMathEquationTrait])
  {
    mathSummary = [(VOTElement *)self mathSummary];
    if ([mathSummary length])
    {
      v73 = [requestCopy addString:mathSummary];
    }

    mathEquationDescription = [(VOTElement *)self mathEquationDescription];
    v75 = [requestCopy addAttributedString:mathEquationDescription];
  }

  if (!(containsActions & 1 | ((v276 & 1) == 0)))
  {
    value = [(VOTElement *)self value];
    if (![value length])
    {
      hint = [(VOTElement *)self hint];
      v78 = [hint length] == 0;

      if (v78)
      {
        goto LABEL_89;
      }

      value = [(VOTElement *)self hint];
      v79 = [requestCopy addString:value withLanguage:v279];
      lastAction6 = [requestCopy lastAction];
      [lastAction6 setIsVoiceOverGeneratedContent:1];

      v270 = 0;
    }
  }

LABEL_89:
  v81 = [(VOTElement *)self doesHaveTraits:kAXImageTrait];
  if (v81)
  {
    photoDescription = [(VOTElement *)self photoDescription];
    if ([photoDescription length])
    {
      v83 = [requestCopy addString:photoDescription withLanguage:v279];
    }
  }

  if (!([requestCopy containsActions] & 1 | ((v81 & 1) == 0)))
  {
    elementManager = [VOTSharedWorkspace elementManager];
    v85 = [elementManager determineFullImageDescriptionsEnabled:self];

    if ((v85 & 1) == 0)
    {
      identifier = [(VOTElement *)self identifier];
      if ([identifier length])
      {
        v87 = [requestCopy addString:identifier];
      }
    }
  }

  if ([(VOTElement *)self doesHaveTraits:v278])
  {
    [(VOTElement *)self _applyCurrentStatus:requestCopy language:v279];
    [(VOTElement *)self _applySortDirection:requestCopy language:v279];
    [(VOTElement *)self _applyDatetimeAttribute:requestCopy language:v279];
  }

  traits = [(VOTElement *)self traits];
  v90 = 0;
  if ((kAXIsEditingTrait & traits) == 0)
  {
    traits2 = [(VOTElement *)self traits];
    if ((kAXWebInteractiveVideoTrait & traits2) == 0)
    {
      v90 = 1;
    }
  }

  v314[0] = _NSConcreteStackBlock;
  v314[1] = 3221225472;
  v314[2] = sub_1000C0884;
  v314[3] = &unk_1001CA6E8;
  v314[4] = self;
  v314[5] = &v326;
  v314[6] = &v322;
  v315 = v276;
  v316 = v273;
  v272 = objc_retainBlock(v314);
  v309[0] = _NSConcreteStackBlock;
  v309[1] = 3221225472;
  v309[2] = sub_1000C0A40;
  v309[3] = &unk_1001CA710;
  v313 = (options & 0x10000000) != 0;
  v309[4] = self;
  v285 = requestCopy;
  v310 = v285;
  optionsCopy7 = options;
  v280 = v279;
  v311 = v280;
  v277 = objc_retainBlock(v309);
  if (v90)
  {
    if (v273)
    {
      numberOfActions2 = [v285 numberOfActions];
      [(VOTElement *)self _applyValueToRequest:v285 options:options lastSeenLineAndColumn:lastSeenLineAndColumn language:v280];
      v92 = [v285 numberOfActions] > numberOfActions2;
      *(v323 + 24) = v92;
    }

    if ((options & 0x800000000) == 0)
    {
      (v272[2])();
    }

    (v277[2])();
    if (voiceOverTraitFeedback == 1)
    {
      v93 = 1;
    }

    else
    {
      v93 = v275 ^ 1;
    }

    if ((v93 & 1) == 0)
    {
      [(VOTElement *)self _applyTraitsToRequest:v285 options:options numHeaderActions:v269 language:v280];
    }
  }

  else
  {
    if (voiceOverTraitFeedback == 1)
    {
      v94 = 1;
    }

    else
    {
      v94 = v275 ^ 1;
    }

    if ((v94 & 1) == 0)
    {
      [(VOTElement *)self _applyTraitsToRequest:v285 options:options numHeaderActions:v269 language:v280];
    }

    if (v273)
    {
      numberOfActions3 = [v285 numberOfActions];
      [(VOTElement *)self _applyValueToRequest:v285 options:options lastSeenLineAndColumn:lastSeenLineAndColumn language:v280];
      v96 = [v285 numberOfActions] > numberOfActions3;
      *(v323 + 24) = v96;
    }

    (v272[2])();
    (v277[2])();
  }

  v97 = +[AXSettings sharedInstance];
  voiceOverLinkFeedback = [v97 voiceOverLinkFeedback];

  selfCopy2 = self;
  v100 = [(VOTElement *)self doesHaveTraits:kAXLinkTrait];
  if ((voiceOverLinkFeedback & 0xA) == 8)
  {
    v101 = v100;
  }

  else
  {
    v101 = 0;
  }

  if (v101 == 1)
  {
    outputActions4 = [v285 outputActions];
    [outputActions4 enumerateObjectsUsingBlock:&stru_1001CA730];

    selfCopy2 = self;
  }

  if ((v268 & 1) != 0 || [VOTSharedWorkspace navigationStyleHonorsGroups] && -[VOTElement includeRoleOnlyForGroupNavigation](selfCopy2, "includeRoleOnlyForGroupNavigation") && -[VOTElement isAccessibleGroup](selfCopy2, "isAccessibleGroup"))
  {
    if ((options & 0x1000000000) != 0)
    {
      containsActions2 = [v285 containsActions];
      if (v62)
      {
        v105 = containsActions2;
      }

      else
      {
        v105 = 0;
      }

      if ((v105 & 1) == 0)
      {
        v103 = containsActions2 ^ 1;
        goto LABEL_143;
      }
    }

    else if (!v62)
    {
      v103 = 0;
LABEL_143:
      [(VOTElement *)selfCopy2 _applyRoleDescription:v285 language:v280 interactOption:v103];
      goto LABEL_144;
    }

    if ([v285 containsActions])
    {
      v103 = 0;
    }

    else
    {
      v103 = 2;
    }

    goto LABEL_143;
  }

LABEL_144:
  v106 = +[AXSettings sharedInstance];
  voiceOverListAnnotation = [v106 voiceOverListAnnotation];

  selfCopy5 = self;
  v109 = ![(VOTElement *)self shouldIncludeRowRangeInDescription];
  if (voiceOverListAnnotation == 1)
  {
    v110 = v109;
  }

  else
  {
    v110 = 0;
  }

  if (((v267 | v110) & 1) == 0)
  {
    if ((voiceOverListAnnotation & 2) != 0)
    {
      v111 = 0;
    }

    else
    {
      v111 = v109;
    }

    sub_100051EEC(self, v285, v280, 0, (voiceOverListAnnotation >> 4) & 1, v111);
  }

  if (!(v110 & 1 | ![(VOTElement *)self isLastItemInList]))
  {
    v112 = sub_1000516CC(off_1001FDDD0, @"element.endOfList.item", @"list end", v280);
    v113 = [v285 addString:v112];

    selfCopy5 = self;
  }

  if ([(VOTElement *)selfCopy5 doesHaveTraits:v278])
  {
    [(VOTElement *)selfCopy5 _applyHasPopupAttribute:v285 withLanguage:v280];
  }

  if ([(VOTElement *)selfCopy5 isRequired])
  {
    v114 = sub_1000516CC(off_1001FDDD0, @"element.required", 0, v280);
    v115 = [v285 addString:v114 withLanguage:v280];

    lastAction7 = [v285 lastAction];
    [lastAction7 setIsVoiceOverGeneratedContent:1];

    selfCopy5 = self;
  }

  if ([(VOTElement *)selfCopy5 shouldAnnounceTableInfo]&& [(VOTElement *)selfCopy5 isElementFirstElement:1 orLastElement:0 withType:2])
  {
    [(VOTElement *)selfCopy5 applyTableDimension:v285 language:v280];
  }

  if (v59 == 65544 && [(VOTElement *)selfCopy5 doesHaveTraits:kAXPickerElementTrait])
  {
    [(VOTElement *)selfCopy5 _applySelectedTrait:v285 language:v280];
  }

  if (v275)
  {
    [(VOTElement *)selfCopy5 _applyExpandedStatus:v285 language:v280];
    [(VOTElement *)selfCopy5 _applyLinkRelationshipType:v285 language:v280];
  }

  v117 = selfCopy5;
  v118 = v117;
  if (![(VOTElement *)v117 doesHaveTraits:v278])
  {
LABEL_176:

    goto LABEL_177;
  }

  kAXToggleTrait = [(VOTElement *)v117 doesHaveTraits:kAXRadioButtonTrait | kAXTextEntryTrait | kAXToggleTrait];

  if (kAXToggleTrait)
  {
    v120 = v117;
    if (v120)
    {
      v118 = v120;
      while ([v118 doesHaveTraits:v278])
      {
        invalidStatus = [v118 invalidStatus];
        if ([invalidStatus length] && (objc_msgSend(invalidStatus, "isEqualToString:", @"false") & 1) == 0)
        {
          [v118 _applyInvalidStatus:v285 language:v280];

          goto LABEL_176;
        }

        directParent = [v118 directParent];

        v118 = directParent;
        if (!directParent)
        {
          goto LABEL_176;
        }
      }

      goto LABEL_176;
    }
  }

LABEL_177:
  if ((options & 0x20000000) == 0)
  {
    [(VOTElement *)v117 applyTextEditingInformation:v280 request:v285 options:options];
  }

  if ((options & 0x8000) != 0)
  {
    scrollStatus = [(VOTElement *)v117 scrollStatus];
    if (scrollStatus)
    {
      v124 = [v285 addString:scrollStatus];
      if ([VOTSharedWorkspace typingPitchChangeEnabled])
      {
        lastAction8 = [v285 lastAction];
        [lastAction8 setObject:&off_1001D9960 forVariant:32];
      }
    }
  }

  [(VOTElement *)v117 applyCVMLGeneratedContentToRequest:v285 explicitUserRequest:0];
  if (v270 && [VOTSharedWorkspace hintsEnabled])
  {
    hint2 = [(VOTElement *)v117 hint];
    if ([hint2 length] && (-[VOTElement label](v117, "label"), v127 = objc_claimAutoreleasedReturnValue(), v128 = objc_msgSend(hint2, "isEqualToString:", v127), v127, (v128 & 1) == 0))
    {
      if ([VOTSharedWorkspace brailleInputActive])
      {
        v130 = +[NSLocale currentLocale];
        languageCode = [v130 languageCode];
        v132 = [languageCode hasPrefix:@"en"];

        if (v132)
        {
          v133 = [hint2 stringByReplacingOccurrencesOfString:@"Double tap to" withString:@"Tap Dots 3 6 to"];

          hint2 = v133;
        }
      }

      if ([hint2 isAXAttributedString])
      {
        LODWORD(v134) = 1061997773;
        [v285 addPause:v134];
        v135 = [v285 addAttributedString:hint2 withLanguage:v280];
      }

      else
      {
        LODWORD(v134) = 1061997773;
        [v285 addPause:v134];
        v137 = [v285 addString:hint2 withLanguage:v280];
      }

      lastAction9 = [v285 lastAction];
      [lastAction9 setIsVoiceOverGeneratedContent:1];

      v129 = 1;
    }

    else
    {
      v129 = 0;
    }

    instructions = [(VOTElement *)v117 instructions];
    if ([instructions length])
    {
      if ((v129 & 1) == 0)
      {
        LODWORD(v139) = 1061997773;
        [v285 addPause:v139];
      }

      v140 = [v285 addString:instructions withLanguage:v280];
      lastAction10 = [v285 lastAction];
      [lastAction10 setIsVoiceOverGeneratedContent:1];

      v129 = 1;
    }
  }

  else
  {
    v129 = 0;
  }

  mapFeatureType = [(VOTElement *)v117 mapFeatureType];
  suppressCustomActionHint = [(VOTElement *)v117 suppressCustomActionHint];
  if ((options & 0x800) == 0 || mapFeatureType == 1)
  {
    v145 = 1;
  }

  else
  {
    v145 = suppressCustomActionHint;
  }

  if (AXDeviceSupportsSonification())
  {
    if ((options & 0x100000000) != 0 && ([(VOTElement *)v117 supportsAudiographActions]|| [(VOTElement *)v117 supportsAudiographs]))
    {
      if ([VOTSharedWorkspace hintsEnabled] && (objc_msgSend(VOTSharedWorkspace, "elementManager"), v146 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v146, "elementRotor"), v147 = objc_claimAutoreleasedReturnValue(), v148 = objc_msgSend(v147, "currentRotorType") == 65, v147, v146, v148))
      {
        v149 = sub_1000516CC(off_1001FDDD8, @"audiograph.actions.hint", 0, v280);
        v150 = [v285 addString:v149 withLanguage:v280];

        lastAction11 = [v285 lastAction];
        [lastAction11 setIsVoiceOverGeneratedContent:1];
      }

      else
      {
        v152 = sub_1000516CC(off_1001FDDD8, @"audiograph.actions.hint.short", 0, v280);
        v153 = [v285 addString:v152 withLanguage:v280];

        lastAction11 = [v285 lastAction];
        [lastAction11 setIsVoiceOverGeneratedContent:1];
      }
    }

    if ((options & 0x4000000000) != 0 && ([(VOTElement *)v117 supportsAudiographActions]|| [(VOTElement *)v117 supportsAudiographs]))
    {
      chartStructureDescription = [(VOTElement *)v117 chartStructureDescription];
      if ([chartStructureDescription length])
      {
        v155 = [v285 addString:chartStructureDescription];
      }
    }
  }

  if (v145)
  {
    goto LABEL_298;
  }

  customRotorActions = [(VOTElement *)v117 customRotorActions];
  v157 = [customRotorActions count] == 0;

  if (!v157)
  {
    if ((v129 & 1) == 0)
    {
      LODWORD(v158) = 1061997773;
      [v285 addPause:v158];
    }

    v305 = 0;
    v306 = &v305;
    v307 = 0x2020000000;
    v308 = 0;
    v301 = 0;
    v302 = &v301;
    v303 = 0x2020000000;
    v304 = 0;
    v297 = 0;
    v298 = &v297;
    v299 = 0x2020000000;
    v300 = 0;
    customRotorActions2 = [(VOTElement *)v117 customRotorActions];
    v296[0] = _NSConcreteStackBlock;
    v296[1] = 3221225472;
    v296[2] = sub_1000C0AAC;
    v296[3] = &unk_1001CA758;
    v296[4] = v117;
    v296[5] = &v301;
    v296[6] = &v297;
    v296[7] = &v305;
    [customRotorActions2 enumerateObjectsUsingBlock:v296];

    v160 = [(VOTElement *)v117 doesHaveTraits:kAXLaunchIconTrait];
    v161 = +[AXSettings sharedInstance];
    voiceOverActionsFeedback = [v161 voiceOverActionsFeedback];

    v163 = +[AXSettings sharedInstance];
    voiceOverActionsFeedback2 = [v163 voiceOverActionsFeedback];

    v165 = +[AXSettings sharedInstance];
    voiceOverActionsFeedback3 = [v165 voiceOverActionsFeedback];

    previousElement2 = [packageCopy previousElement];
    v168 = [(VOTElement *)v117 _ignoreCustomActionIndicator:previousElement2 withElement:v117];

    if ((voiceOverActionsFeedback & 2) != 0)
    {
      v169 = v168;
    }

    else
    {
      v169 = 1;
    }

    if ((voiceOverActionsFeedback2 & 8) != 0)
    {
      v170 = v168;
    }

    else
    {
      v170 = 1;
    }

    if ((voiceOverActionsFeedback3 & 4) != 0)
    {
      v171 = v168;
    }

    else
    {
      v171 = 1;
    }

    elementManager2 = [VOTSharedWorkspace elementManager];
    elementRotor = [elementManager2 elementRotor];
    v174 = [elementRotor currentRotorType] == 54;

    if (v174)
    {
      if ((v169 & 1) == 0 && (options & 0x40000000) != 0)
      {
        v175 = v302[3];
        if (v175)
        {
          if (v175 == 1)
          {
            v176 = @"drops.available.hint.singular";
          }

          else
          {
            v176 = @"drops.available.hint.plural";
          }

          v177 = sub_1000516CC(off_1001FDDD0, v176, 0, v280);
          v178 = [NSString localizedStringWithFormat:v177, v302[3]];

          v179 = [v285 addString:v178 withLanguage:v280];
          if ((v170 & 1) == 0)
          {
            lastAction12 = [v285 lastAction];
            [lastAction12 setObject:&off_1001D9960 forVariant:32];
          }

          lastAction13 = [v285 lastAction];
          [lastAction13 setIsVoiceOverGeneratedContent:1];
        }
      }

      if ([VOTSharedWorkspace hintsEnabled])
      {
        brailleInputActive = [VOTSharedWorkspace brailleInputActive];
        v183 = @"custom.actions.hint";
        if (brailleInputActive)
        {
          v183 = @"custom.actions.hint.bsi.command";
        }
      }

      else
      {
        v183 = @"custom.actions.hint.short";
      }

      v185 = v183;
      if ((v171 & 1) == 0 && [v285 containsActions])
      {
        firstAction = [v285 firstAction];
        [firstAction setObject:@"Sounds/ActionsAvailable.aiff" forVariant:75];
LABEL_265:

LABEL_266:
        goto LABEL_267;
      }

      if ((v160 | v169))
      {
        goto LABEL_266;
      }

      v187 = sub_1000516CC(off_1001FDDD8, v185, 0, v280);
      v188 = [v285 addString:v187 withLanguage:v280];

      lastAction14 = [v285 lastAction];
      [lastAction14 setIsVoiceOverGeneratedContent:1];

      if (v170)
      {
        goto LABEL_266;
      }

LABEL_264:
      firstAction = [v285 lastAction];
      [firstAction setObject:&off_1001D9960 forVariant:32];
      goto LABEL_265;
    }

    if ((v160 & 1) == 0)
    {
      v184 = v306[3];
      if (v184 != v298[3])
      {
        goto LABEL_254;
      }

      if (![(VOTElement *)v117 isAccessibleGroup])
      {
        v184 = v306[3];
LABEL_254:
        if (v184)
        {
          if ((v171 & 1) != 0 || ![v285 containsActions])
          {
            if (v169)
            {
              if ((options & 0x40000000) == 0 || !v302[3])
              {
                goto LABEL_267;
              }

              LODWORD(v184) = 0;
              goto LABEL_341;
            }

            v258 = sub_1000516CC(off_1001FDDD8, @"custom.actions.hint.short", 0, v280);
            v259 = [v285 addString:v258 withLanguage:v280];

            lastAction15 = [v285 lastAction];
            [lastAction15 setIsVoiceOverGeneratedContent:1];

            if ((v170 & 1) == 0)
            {
              lastAction16 = [v285 lastAction];
              [lastAction16 setObject:&off_1001D9960 forVariant:32];
            }

            LODWORD(v184) = 0;
          }

          else
          {
            [v285 addSound:@"Sounds/ActionsAvailable.aiff"];
            LODWORD(v184) = 1;
          }
        }

        if ((options & 0x40000000) == 0)
        {
          goto LABEL_267;
        }

        v262 = v302[3];
        if (!v262)
        {
          goto LABEL_267;
        }

        if ((v169 & 1) == 0)
        {
          if (v262 == 1)
          {
            v263 = @"drops.available.hint.singular";
          }

          else
          {
            v263 = @"drops.available.hint.plural";
          }

          v264 = sub_1000516CC(off_1001FDDD0, v263, 0, v280);
          v185 = [NSString localizedStringWithFormat:v264, v302[3]];

          v265 = [v285 addString:v185 withLanguage:v280];
          lastAction17 = [v285 lastAction];
          [lastAction17 setIsVoiceOverGeneratedContent:1];

          if (v170)
          {
            goto LABEL_266;
          }

          goto LABEL_264;
        }

LABEL_341:
        if (((v171 | v184) & 1) == 0 && [v285 containsActions])
        {
          [v285 addSound:@"Sounds/ActionsAvailable.aiff"];
        }
      }
    }

LABEL_267:
    _Block_object_dispose(&v297, 8);
    _Block_object_dispose(&v301, 8);
    _Block_object_dispose(&v305, 8);
    v129 = 1;
  }

  customPublicRotors = [(VOTElement *)v117 customPublicRotors];
  if ([VOTSharedWorkspace hintsEnabled] && objc_msgSend(customPublicRotors, "count"))
  {
    if ((v129 & 1) == 0)
    {
      LODWORD(v190) = 1061997773;
      [v285 addPause:v190];
    }

    firstObject = [customPublicRotors firstObject];
    v192 = [(VOTElement *)v117 customPublicRotorName:firstObject];

    if ([VOTRotor rotorTypeForSystemRotorType:v192]== 9)
    {
      firstObject2 = [customPublicRotors firstObject];
      v194 = [(VOTElement *)v117 customPublicRotorLinkCountForRotor:firstObject2]== 1;

      if (v194)
      {
        v195 = sub_1000516CC(off_1001FDDD0, @"element.link.text", @"link", v280);
        v196 = off_1001FDDD8;
        if ([VOTSharedWorkspace brailleInputActive])
        {
          v197 = @"element.containing.single.link.hint.bsi.command";
        }

        else
        {
          v197 = @"element.containing.single.link.hint";
        }

        v198 = sub_1000516CC(v196, v197, 0, v280);
        [(VOTElement *)v117 _configureAsSingleLinkElementWithRequest:v285 linkTraitTitle:v195 hint:v198 & ((options << 30) >> 63)];
        goto LABEL_295;
      }
    }

    if ((options & 0x200000000) != 0)
    {
      v195 = +[NSMutableArray array];
      v294 = 0u;
      v295 = 0u;
      v292 = 0u;
      v293 = 0u;
      v199 = customPublicRotors;
      v200 = [v199 countByEnumeratingWithState:&v292 objects:v330 count:16];
      if (!v200)
      {
        goto LABEL_292;
      }

      v201 = *v293;
      while (1)
      {
        for (j = 0; j != v200; j = j + 1)
        {
          if (*v293 != v201)
          {
            objc_enumerationMutation(v199);
          }

          v203 = *(*(&v292 + 1) + 8 * j);
          if ([(VOTElement *)v117 customPublicRotorIsVisibleInTouchRotor:v203])
          {
            v204 = [(VOTElement *)v117 customPublicRotorName:v203];

            v205 = [VOTRotor rotorTypeForSystemRotorType:v204];
            if (!v205)
            {
              v192 = v204;
              if (!v204)
              {
                continue;
              }

LABEL_289:
              [v195 addObject:v192];
              continue;
            }

            v192 = [VOTRotor stringForRotorType:v205];

            if (v192)
            {
              goto LABEL_289;
            }
          }
        }

        v200 = [v199 countByEnumeratingWithState:&v292 objects:v330 count:16];
        if (!v200)
        {
LABEL_292:

          v198 = sub_1000516CC(off_1001FDDD8, @"custom.rotor.items.hint", 0, v280);
          v206 = [v195 componentsJoinedByString:{@", "}];
          if ([v206 length])
          {
            v207 = AXCFormattedString();
            v208 = [v285 addString:v207 withLanguage:{v280, v206}];

            lastAction18 = [v285 lastAction];
            [lastAction18 setIsVoiceOverGeneratedContent:1];
          }

LABEL_295:
          break;
        }
      }
    }
  }

LABEL_298:
  if ([(VOTElement *)v117 doesHaveTraits:v278])
  {
    uiElement3 = [(VOTElement *)v117 uiElement];
    v211 = [uiElement3 BOOLWithAXAttribute:2227];

    if (v211)
    {
      v212 = sub_1000516CC(off_1001FDDD0, @"element.insertion.text", 0, v280);
      v213 = [v285 addString:v212 breakWords:0 withLanguage:v280 atIndex:0];

      lastAction19 = [v285 lastAction];
      [lastAction19 setIsVoiceOverGeneratedContent:1];
    }

    uiElement4 = [(VOTElement *)v117 uiElement];
    v216 = [uiElement4 BOOLWithAXAttribute:2228];

    if (v216)
    {
      v217 = sub_1000516CC(off_1001FDDD0, @"element.deletion.text", 0, v280);
      v218 = [v285 addString:v217 breakWords:0 withLanguage:v280 atIndex:0];

      lastAction20 = [v285 lastAction];
      [lastAction20 setIsVoiceOverGeneratedContent:1];
    }

    uiElement5 = [(VOTElement *)v117 uiElement];
    v221 = [uiElement5 BOOLWithAXAttribute:2225];

    if (v221)
    {
      v222 = sub_1000516CC(off_1001FDDD0, @"element.startOfSuggestion.item", 0, v280);
      v223 = [v285 addString:v222 breakWords:0 withLanguage:v280 atIndex:0];

      lastAction21 = [v285 lastAction];
      [lastAction21 setIsVoiceOverGeneratedContent:1];
    }

    uiElement6 = [(VOTElement *)v117 uiElement];
    v226 = [uiElement6 BOOLWithAXAttribute:2226];

    if (v226)
    {
      v227 = sub_1000516CC(off_1001FDDD0, @"element.endOfSuggestion.item", 0, v280);
      v228 = [v285 addString:v227];

      lastAction22 = [v285 lastAction];
      [lastAction22 setIsVoiceOverGeneratedContent:1];
    }

    uiElement7 = [(VOTElement *)v117 uiElement];
    v231 = [uiElement7 BOOLWithAXAttribute:2230];

    if (v231)
    {
      v232 = sub_1000516CC(off_1001FDDD0, @"highlighted", 0, v280);
      v233 = [v285 addString:v232];

      lastAction23 = [v285 lastAction];
      [lastAction23 setIsVoiceOverGeneratedContent:1];
    }

    uiElement8 = [(VOTElement *)v117 uiElement];
    if (![uiElement8 BOOLWithAXAttribute:2237])
    {
      goto LABEL_312;
    }

    previousElement3 = [packageCopy previousElement];
    uiElement9 = [previousElement3 uiElement];
    v238 = [uiElement9 BOOLWithAXAttribute:2237];

    if ((v238 & 1) == 0)
    {
      v239 = sub_1000516CC(off_1001FDDD0, @"element.contenteditable.start", 0, v280);
      v240 = [v285 addString:v239];

      uiElement8 = [v285 lastAction];
      [uiElement8 setIsVoiceOverGeneratedContent:1];
LABEL_312:
    }
  }

  moreContentOutputFeedback = [VOTSharedWorkspace moreContentOutputFeedback];
  v242 = moreContentOutputFeedback;
  v243 = v285;
  if (moreContentOutputFeedback != 1)
  {
    customContent = [(VOTElement *)v117 customContent];
    v245 = [customContent count] == 0;

    v243 = v285;
    if (!v245)
    {
      v305 = 0;
      v306 = &v305;
      v307 = 0x2020000000;
      LOBYTE(v308) = 0;
      customContent2 = [(VOTElement *)v117 customContent];
      v291[0] = _NSConcreteStackBlock;
      v291[1] = 3221225472;
      v291[2] = sub_1000C0BD0;
      v291[3] = &unk_1001CA780;
      v291[4] = &v305;
      [customContent2 enumerateObjectsUsingBlock:v291];

      if (*(v306 + 24) == 1 && (v242 & 2) != 0)
      {
        v247 = sub_1000516CC(off_1001FDDD0, @"more.custom.content.available", 0, v280);
        v248 = [v285 addString:v247 withLanguage:v280];
        lastAction24 = [v285 lastAction];
        [lastAction24 setIsVoiceOverGeneratedContent:1];

        if ((v242 & 8) != 0)
        {
          lastAction25 = [v285 lastAction];
          [lastAction25 setObject:&off_1001D9960 forVariant:32];
        }
      }

      v243 = v285;
      if ((v242 & 4) != 0)
      {
        outputActions5 = [v285 outputActions];
        firstObject3 = [outputActions5 firstObject];
        [firstObject3 setObject:@"Sounds/MoreContentAvailable.aiff" forVariant:75];

        v243 = v285;
      }

      _Block_object_dispose(&v305, 8);
    }
  }

  v289[0] = _NSConcreteStackBlock;
  v289[1] = 3221225472;
  v289[2] = sub_1000C0C18;
  v289[3] = &unk_1001C7778;
  v289[4] = v117;
  v253 = v243;
  v290 = v253;
  v254 = objc_retainBlock(v289);
  if ((options & 0x400) != 0)
  {
    LODWORD(v255) = 1061997773;
    [v253 addPause:v255];
    v257 = v288;
    v288[0] = _NSConcreteStackBlock;
    v288[1] = 3221225472;
    v288[2] = sub_1000C0E5C;
    v288[3] = &unk_1001CA7F0;
    v288[4] = v253;
    v288[5] = v280;
    v288[6] = v254;
    [(VOTElement *)v117 regionDescriptionWithCompletion:v288];
  }

  else
  {
    if (!-[VOTElement doesHaveTraits:](v117, "doesHaveTraits:", v278) || ![VOTSharedWorkspace hintsEnabled])
    {
      (v254[2])(v254);
      goto LABEL_330;
    }

    elementManager3 = [VOTSharedWorkspace elementManager];
    v257 = v287;
    v287[0] = _NSConcreteStackBlock;
    v287[1] = 3221225472;
    v287[2] = sub_1000C0EE8;
    v287[3] = &unk_1001CA818;
    v287[4] = v253;
    v287[5] = v280;
    v287[6] = v254;
    [elementManager3 updateRotorForCurrentElement:1 completion:v287];
  }

LABEL_330:
  _Block_object_dispose(&v322, 8);
  _Block_object_dispose(&v326, 8);
}

- (BOOL)_ignoreCustomActionIndicator:(id)indicator withElement:(id)element
{
  indicatorCopy = indicator;
  elementCopy = element;
  v9 = +[AXSettings sharedInstance];
  if ([v9 voiceOverActionFeedbackFirstInListOnly])
  {
    touchContainer = [indicatorCopy touchContainer];
    touchContainer2 = [elementCopy touchContainer];
    if ([touchContainer isEqual:touchContainer2])
    {
      v12 = [(VOTElement *)self _elementActionsEquivalent:indicatorCopy withElement:elementCopy];
LABEL_16:

      goto LABEL_17;
    }

    touchContainer3 = [indicatorCopy touchContainer];
    if (touchContainer3 || ([elementCopy touchContainer], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = kAXWebContentTrait;
      if ([indicatorCopy doesHaveTraits:kAXWebContentTrait] && objc_msgSend(elementCopy, "doesHaveTraits:", v14))
      {
        v15 = [(VOTElement *)self _elementActionsEquivalent:indicatorCopy withElement:elementCopy];
        v12 = v15;
        if (!touchContainer3)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15 = 0;
        v12 = 0;
        if (!touchContainer3)
        {
          goto LABEL_14;
        }
      }

LABEL_15:

      goto LABEL_16;
    }

    v15 = [(VOTElement *)self _elementActionsEquivalent:indicatorCopy withElement:elementCopy];
LABEL_14:

    v12 = v15;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)_elementActionsEquivalent:(id)equivalent withElement:(id)element
{
  elementCopy = element;
  customRotorActions = [equivalent customRotorActions];
  v7 = [customRotorActions ax_filteredArrayUsingBlock:&stru_1001CA838];
  customRotorActions2 = [elementCopy customRotorActions];

  v9 = [customRotorActions2 ax_filteredArrayUsingBlock:&stru_1001CA858];
  v10 = [v7 isEqualToArray:v9];

  return v10;
}

- (void)_applyCustomContent:(id)content language:(id)language
{
  contentCopy = content;
  languageCopy = language;
  customContent = [(VOTElement *)self customContent];
  customContentImportance = [VOTSharedWorkspace customContentImportance];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = customContent;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 importance] == customContentImportance)
        {
          label = [v15 label];
          v17 = [contentCopy addString:label withLanguage:languageCopy];

          value = [v15 value];
          v19 = [contentCopy addString:value withLanguage:languageCopy];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_applyStickyCustomActions:(id)actions customAction:(id)action language:(id)language
{
  actionsCopy = actions;
  languageCopy = language;
  name = [action name];
  if ([(VOTElement *)self retainsCustomRotorActionSetting])
  {
    if ([name length])
    {
      v10 = sub_1000511CC(off_1001FDDD0, @"current.custom.action", languageCopy);
      v11 = [NSString stringWithFormat:v10, name];
      v12 = [actionsCopy addString:v11 withLanguage:languageCopy];

      lastAction = [actionsCopy lastAction];
      [lastAction setIsVoiceOverGeneratedContent:1];

      if ([VOTSharedWorkspace typingPitchChangeEnabled])
      {
        lastAction2 = [actionsCopy lastAction];
        [lastAction2 setObject:&off_1001D9960 forVariant:32];
      }
    }
  }
}

- (void)announceAdditionalTextualInformation:(id)information
{
  informationCopy = information;
  expandedTextValue = [(VOTElement *)self expandedTextValue];
  if ([expandedTextValue length])
  {
    v5 = [informationCopy addString:expandedTextValue];
  }
}

- (void)announceTableInfo:(id)info options:(unint64_t)options language:(id)language
{
  languageCopy = language;
  infoCopy = info;
  [(VOTElement *)self _applyHeaderStatus:infoCopy language:languageCopy];
  [(VOTElement *)self _applyTableRowColumnSpan:infoCopy language:languageCopy];
  [(VOTElement *)self _applyTableRowIndex:infoCopy options:options language:languageCopy];
  [(VOTElement *)self _applyTableColumnIndex:infoCopy options:options language:languageCopy];
}

- (void)applyTextEditingInformation:(id)information request:(id)request options:(unint64_t)options
{
  optionsCopy = options;
  informationCopy = information;
  requestCopy = request;
  if (![(VOTElement *)self shouldIgnoreTextEditingTrait])
  {
    v9 = kAXIsEditingTrait;
    v10 = [(VOTElement *)self doesHaveTraits:kAXIsEditingTrait];
    if ((optionsCopy & 0x40) == 0)
    {
      if (v10)
      {
        rotorType = [VOTSharedWorkspace rotorType];
        if ((rotorType - 3) <= 2)
        {
          v12 = sub_1000516CC(off_1001FDDD0, off_1001CA8A0[(rotorType - 3)], 0, informationCopy);
          v13 = [requestCopy addString:v12 withLanguage:informationCopy category:@"RotorType"];

          lastAction = [requestCopy lastAction];
          [lastAction setIsVoiceOverGeneratedContent:1];
        }
      }
    }

    if ([(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | v9])
    {
      textInputElement = [(VOTElement *)self textInputElement];
      if (textInputElement)
      {
        selfCopy = textInputElement;
        textInputElementRange = [(VOTElement *)self textInputElementRange];
        v19 = v18;
        v20 = 0x7FFFFFFFLL;
        if (textInputElementRange == 0x7FFFFFFF)
        {
          value3 = 0;
        }

        else
        {
          v22 = textInputElementRange;
          value = [(VOTElement *)selfCopy value];
          if (&v19[v22] <= [value length])
          {
            value2 = [(VOTElement *)selfCopy value];
            value3 = [value2 substringWithRange:{v22, v19}];
          }

          else
          {
            v86.location = v22;
            v86.length = v19;
            value2 = NSStringFromRange(v86);
            v72 = value;
            v74 = [value length];
            v71 = value2;
            _AXAssert();
            value3 = 0;
          }

          v20 = v22;
        }
      }

      else
      {
        selfCopy = self;
        value3 = [(VOTElement *)selfCopy value];
        v19 = [value3 length];
        v20 = 0;
      }

      v25 = [(VOTElement *)selfCopy selectedTextRange:v71];
      if (v25 < v20)
      {
        goto LABEL_29;
      }

      if (v20 == 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      v27 = v25;
      if (v25 == 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      if (v26)
      {
        goto LABEL_29;
      }

      v28 = &v19[v20];
      if (selfCopy != self && v25 > v28)
      {
        goto LABEL_29;
      }

      v29 = &v25[-v20];
      if (v25 == v20)
      {
        v30 = off_1001FDDD0;
        v31 = @"cursor.at.start";
        goto LABEL_27;
      }

      if (v25 >= v28)
      {
        v30 = off_1001FDDD0;
        v31 = @"cursor.at.end";
LABEL_27:
        v41 = sub_1000516CC(v30, v31, 0, informationCopy);
        if (!v41)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:
        v42 = [requestCopy addAttributedString:v41 withLanguage:informationCopy category:@"TextDescription"];

        goto LABEL_29;
      }

      elementManager = [VOTSharedWorkspace elementManager];
      elementRotor = [elementManager elementRotor];
      currentSelectionRotorType = [elementRotor currentSelectionRotorType];

      v35 = &v27[~v20];
      if (currentSelectionRotorType == 3)
      {
        v36 = [value3 rangeOfComposedCharacterSequenceAtIndex:v35];
        v38 = v37;
        v39 = [value3 rangeOfComposedCharacterSequenceAtIndex:v29];
      }

      else
      {
        v36 = [value3 ax_wordFromPosition:v35 inDirection:1];
        v38 = v43;
        v39 = [value3 ax_wordFromPosition:v29 inDirection:0];
      }

      v44 = v39;
      v45 = v40;
      v46 = 0;
      v47 = &stru_1001CBF90;
      v82 = &stru_1001CBF90;
      if (v36 != 0x7FFFFFFF && v36 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = [value3 substringWithRange:{v36, v38}];
        v48 = [(__CFString *)v47 length];
        v82 = [NSString stringWithFormat:@"%@%@", @"∑1[[[", v47];

        v46 = v48 == 1;
      }

      v79 = v46;
      v49 = 0;
      v50 = &stru_1001CBF90;
      if (v44 == 0x7FFFFFFF)
      {
        v81 = &stru_1001CBF90;
        v51 = v82;
      }

      else
      {
        v81 = &stru_1001CBF90;
        v51 = v82;
        if (v44 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v50 = [value3 substringWithRange:{v44, v45}];
          v52 = [(__CFString *)v50 length];
          v81 = [NSString stringWithFormat:@"%@%@", @"∑2[[[", v50];

          v49 = v52 == 1;
        }
      }

      v78 = v49;
      v80 = v50;
      v83 = objc_alloc_init(NSNumberFormatter);
      v53 = sub_1000516CC(off_1001FDDD0, @"cursor.at.position.use.ordinal", 0, informationCopy);
      v54 = [v53 isEqualToString:@"yes"];

      if (v54)
      {
        [v83 setNumberStyle:6];
      }

      if ([(__CFString *)v81 length]&& [(__CFString *)v51 length])
      {
        if (currentSelectionRotorType == 3 || ([(__CFString *)v47 isEqualToString:v80]& 1) == 0)
        {
          v57 = sub_1000516CC(off_1001FDDD0, @"cursor.at.position", 0, informationCopy);
          v58 = [NSNumber numberWithUnsignedInteger:v29 + 1];
          v59 = [v83 stringFromNumber:v58];
          v73 = v81;
          v75 = v59;
          goto LABEL_52;
        }

        v55 = off_1001FDDD0;
        v56 = @"cursor.at.position.inside";
      }

      else
      {
        if (![(__CFString *)v51 length])
        {
          if (![(__CFString *)v81 length])
          {
            v60 = &stru_1001CBF90;
LABEL_54:
            v61 = [(__CFString *)v60 rangeOfString:@"∑1[[["];
            v76 = v62;
            v63 = [(__CFString *)v60 rangeOfString:@"∑2[[["];
            v77 = v64;
            v65 = [(__CFString *)v60 stringByReplacingOccurrencesOfString:@"∑1[[[" withString:&stru_1001CBF90];

            v66 = v61 - [@"∑1[[[" length];
            v67 = v63;
            if (v63 > v61)
            {
              v67 = (v63 - [@"∑1[[[" length]);
            }

            v68 = [v65 stringByReplacingOccurrencesOfString:@"∑2[[[" withString:&stru_1001CBF90];

            v69 = [@"∑2[[[" length];
            if (v63 <= v61)
            {
              v66 -= [@"∑2[[[" length];
            }

            v70 = [AXAttributedString axAttributedStringWithString:v68];
            v41 = v70;
            if (v79)
            {
              [v70 setAttribute:&__kCFBooleanTrue forKey:AXUIAccessibilitySpeechAttributePunctuation withRange:{v66 + v76, 1}];
            }

            if (v78)
            {
              [v41 setAttribute:&__kCFBooleanTrue forKey:AXUIAccessibilitySpeechAttributePunctuation withRange:{&v67[v77] - v69, 1}];
            }

            if (!v41)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

          v57 = sub_1000516CC(off_1001FDDD0, @"cursor.at.position.before", 0, informationCopy);
          v58 = [NSNumber numberWithUnsignedInteger:v29 + 1];
          v59 = [v83 stringFromNumber:v58];
          [NSString stringWithFormat:v57, v81, v59, v75];
          v60 = LABEL_53:;

          goto LABEL_54;
        }

        v55 = off_1001FDDD0;
        v56 = @"cursor.at.position.after";
      }

      v57 = sub_1000516CC(v55, v56, 0, informationCopy);
      v58 = [NSNumber numberWithUnsignedInteger:v29 + 1];
      v59 = [v83 stringFromNumber:v58];
      v73 = v59;
LABEL_52:
      [NSString stringWithFormat:v57, v51, v73, v75];
      goto LABEL_53;
    }
  }

LABEL_30:
}

- (void)_configureAsSingleLinkElementWithRequest:(id)request linkTraitTitle:(id)title hint:(id)hint
{
  requestCopy = request;
  titleCopy = title;
  hintCopy = hint;
  if ([requestCopy numberOfActionsWithString:titleCopy] == 2)
  {
    [requestCopy removeLastActionWithString:titleCopy];
    if (hintCopy)
    {
      v9 = [requestCopy addString:hintCopy];
    }
  }
}

- (void)_applyRoleDescription:(id)description language:(id)language interactOption:(int64_t)option
{
  descriptionCopy = description;
  languageCopy = language;
  v9 = [(VOTElement *)self roleDescriptionWithInteractOption:option language:languageCopy];
  v10 = [descriptionCopy addString:v9 withLanguage:languageCopy];
  if ([VOTSharedWorkspace typingPitchChangeEnabled])
  {
    lastAction = [descriptionCopy lastAction];
    LODWORD(v12) = 1062836634;
    v13 = [NSNumber numberWithFloat:v12];
    [lastAction setObject:v13 forVariant:32];
  }
}

- (void)applyGroupChildrenCountToRequest:(id)request
{
  requestCopy = request;
  if ([(VOTElement *)self isAccessibleGroup])
  {
    groupedChildrenCount = [(VOTElement *)self groupedChildrenCount];
    if (groupedChildrenCount)
    {
      v5 = groupedChildrenCount;
      v6 = off_1001FDDD0;
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      v8 = sub_1000516CC(v6, @"group.item.count", 0, selectedLanguage);
      v9 = [NSString stringWithFormat:v8, v5];
      v10 = [requestCopy addString:v9];
    }
  }
}

- (CGRect)adaptFrameForSystemElement:(CGRect)element
{
  height = element.size.height;
  width = element.size.width;
  y = element.origin.y;
  x = element.origin.x;
  windowContextId = [(VOTElement *)self windowContextId];
  if (windowContextId)
  {
    v8 = windowContextId;
    v9 = +[VOTElement systemWideElement];
    [v9 convertRect:v8 fromContextId:{x, y, width, height}];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)regionDescriptionWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[NSMutableString string];
  v10 = *(&xmmword_1001FF150 + 1);
  v9 = *&xmmword_1001FF150;
  application = [(VOTElement *)self application];
  if ([application applicationInterfaceOrientation] == 4)
  {

LABEL_4:
    v14 = v9;
    goto LABEL_6;
  }

  application2 = [(VOTElement *)self application];
  applicationInterfaceOrientation = [application2 applicationInterfaceOrientation];

  if (applicationInterfaceOrientation == 3)
  {
    goto LABEL_4;
  }

  v14 = v10;
  v10 = v9;
LABEL_6:
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MidY = CGRectGetMidY(v31);
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  Type = AXDeviceGetType();
  if ((Type - 1) > 1)
  {
    if (Type != 3)
    {
      goto LABEL_47;
    }

    if (MidY >= v14 / 3.0)
    {
      v22 = (v14 + v14) / 3.0;
      if (MidY > v14 / 3.0 && MidY < v22)
      {
        if (MidX >= v10 / 3.0)
        {
          if (MidX > (v10 + v10) / 3.0)
          {
            v21 = @"region.desc.midright";
          }

          else
          {
            v21 = @"region.desc.midmid";
          }
        }

        else
        {
          v21 = @"region.desc.midleft";
        }
      }

      else
      {
        if (MidY <= v22)
        {
LABEL_36:
          if (width >= v10 / 5.0)
          {
            if (width > v10 / 3.0 || width < v10 / 5.0)
            {
              v26 = off_1001FDDD0;
              if (width > v10 / 1.5 || width < v10 / 3.0)
              {
                v27 = @"region.desc.fullwidth";
              }

              else
              {
                v27 = @"region.desc.halfwidth";
              }
            }

            else
            {
              v26 = off_1001FDDD0;
              v27 = @"region.desc.quarterwidth";
            }
          }

          else
          {
            v26 = off_1001FDDD0;
            v27 = @"region.desc.tiny";
          }

          v24 = sub_1000516CC(v26, v27, 0, selectedLanguage);
          [v8 appendString:v24];
          goto LABEL_46;
        }

        if (MidX >= v10 / 3.0)
        {
          if (MidX > (v10 + v10) / 3.0)
          {
            v21 = @"region.desc.bottomright";
          }

          else
          {
            v21 = @"region.desc.bottommid";
          }
        }

        else
        {
          v21 = @"region.desc.bottomleft";
        }
      }
    }

    else if (MidX >= v10 / 3.0)
    {
      if (MidX > (v10 + v10) / 3.0)
      {
        v21 = @"region.desc.topright";
      }

      else
      {
        v21 = @"region.desc.topmid";
      }
    }

    else
    {
      v21 = @"region.desc.topleft";
    }

    v25 = sub_1000516CC(off_1001FDDD0, v21, 0, selectedLanguage);
    [v8 appendFormat:@"%@, ", v25];

    goto LABEL_36;
  }

  if (MidY >= v14 / 3.0)
  {
    v19 = off_1001FDDD0;
    if (MidY > (v14 + v14) / 3.0)
    {
      v20 = @"region.desc.bottom";
    }

    else
    {
      v20 = @"region.desc.midmid";
    }
  }

  else
  {
    v19 = off_1001FDDD0;
    v20 = @"region.desc.top";
  }

  v24 = sub_1000516CC(v19, v20, 0, selectedLanguage);
  [v8 appendFormat:@"%@, ", v24];
LABEL_46:

LABEL_47:

  return v8;
}

- (void)regionDescriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  [(VOTElement *)self frame];
  [(VOTElement *)self adaptFrameForSystemElement:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  touchContainer = [(VOTElement *)self touchContainer];
  uiElement = [touchContainer uiElement];
  v15 = [uiElement numberWithAXAttribute:2123];
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 unsignedIntValue]);

  v17 = +[VOTDisplayManager displayManager];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C26E0;
  v19[3] = &unk_1001CA880;
  v19[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  [v17 convertFrameToCursorSpace:v16 displayID:v19 completion:{v6, v8, v10, v12}];
}

- (BOOL)shouldAnnounceTableInfo
{
  elementManager = [VOTSharedWorkspace elementManager];
  v4 = [elementManager speakTableRowAndColumnForElement:self];

  if (!v4 || ![(VOTElement *)self containedIn:2]&& ![(VOTElement *)self containedIn:32])
  {
    return 0;
  }

  touchContainer = [(VOTElement *)self touchContainer];
  v6 = touchContainer;
  v7 = touchContainer && ([touchContainer rowCount] > 1 || objc_msgSend(v6, "columnCount") >= 2);

  return v7;
}

- (BOOL)hasExplicitRowInfo
{
  touchContainer = [(VOTElement *)self touchContainer];
  v4 = touchContainer && -[VOTElement ariaRowIndex](self, "ariaRowIndex") != 0x7FFFFFFF && [touchContainer ariaRowCount] != 0;

  return v4;
}

- (BOOL)hasExplicitColumnInfo
{
  touchContainer = [(VOTElement *)self touchContainer];
  v4 = touchContainer && -[VOTElement ariaColumnIndex](self, "ariaColumnIndex") != 0x7FFFFFFF && [touchContainer ariaColumnCount] != 0;

  return v4;
}

- (id)tableDimensionStringWithRow:(unint64_t)row andColumn:(unint64_t)column
{
  v4 = 0;
  if (row && column)
  {
    v7 = sub_1000511CC(off_1001FDDD0, @"row.count", 0);
    v8 = [NSString localizedStringWithFormat:v7, row];

    v9 = sub_1000511CC(off_1001FDDD0, @"column.count", 0);
    column = [NSString localizedStringWithFormat:v9, column];

    v4 = [NSString stringWithFormat:@"%@ %@", v8, column];
  }

  return v4;
}

- (void)applyTableDimension:(id)dimension language:(id)language
{
  dimensionCopy = dimension;
  languageCopy = language;
  rowCount = [(VOTElement *)self rowCount];
  columnCount = [(VOTElement *)self columnCount];
  v9 = [(VOTElement *)self tableDimensionStringWithRow:rowCount andColumn:columnCount];
  if (!v9)
  {
    goto LABEL_17;
  }

  if (![(VOTElement *)self hasExplicitRowInfo]&& ![(VOTElement *)self hasExplicitColumnInfo])
  {
    v13 = 0;
LABEL_13:
    v16 = v9;
    goto LABEL_14;
  }

  ariaRowCount = [(VOTElement *)self ariaRowCount];
  if (ariaRowCount)
  {
    rowCount = ariaRowCount;
  }

  ariaColumnCount = [(VOTElement *)self ariaColumnCount];
  if (ariaColumnCount)
  {
    v12 = ariaColumnCount;
  }

  else
  {
    v12 = columnCount;
  }

  v13 = [(VOTElement *)self tableDimensionStringWithRow:rowCount andColumn:v12];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = sub_1000516CC(off_1001FDDD0, @"table.display", 0, languageCopy);
  v15 = [NSString stringWithFormat:v14, v9];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [NSString stringWithFormat:@"%@, %@", v13, v15];

LABEL_14:
  v17 = [dimensionCopy addString:v16];
  if ([VOTSharedWorkspace typingPitchChangeEnabled])
  {
    lastAction = [dimensionCopy lastAction];
    LODWORD(v19) = 1062836634;
    v20 = [NSNumber numberWithFloat:v19];
    [lastAction setObject:v20 forVariant:32];
  }

LABEL_17:
}

- (void)_applyHeaderStatus:(id)status language:(id)language
{
  statusCopy = status;
  languageCopy = language;
  v7 = [(VOTElement *)self headerElementsForRow:[(VOTElement *)self rowRange]];
  v8 = [(VOTElement *)self headerElementsForColumn:[(VOTElement *)self columnRange]];
  if ([v7 containsObject:self])
  {
    v9 = sub_1000511CC(off_1001FDDD0, @"row.header", 0);
    v10 = [statusCopy addString:v9 withLanguage:languageCopy];
  }

  if ([v8 containsObject:self])
  {
    v11 = sub_1000511CC(off_1001FDDD0, @"column.header", 0);
    v12 = [statusCopy addString:v11 withLanguage:languageCopy];
  }
}

- (void)_applyTableRowIndex:(id)index options:(unint64_t)options language:(id)language
{
  optionsCopy = options;
  indexCopy = index;
  languageCopy = language;
  if ((optionsCopy & 0x400000) == 0)
  {
    rowRange = [(VOTElement *)self rowRange];
    if (rowRange != 0x7FFFFFFF && rowRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(VOTElement *)self hasExplicitRowInfo])
      {
        [(VOTElement *)self ariaRowIndex];
      }

      v10 = sub_1000516CC(off_1001FDDD0, @"row.change", 0, languageCopy);
      v11 = AXFormatInteger();
      v12 = [NSString stringWithFormat:v10, v11];
      v13 = [indexCopy addString:v12 withLanguage:languageCopy];

      if ([VOTSharedWorkspace typingPitchChangeEnabled])
      {
        lastAction = [indexCopy lastAction];
        LODWORD(v15) = 1062836634;
        v16 = [NSNumber numberWithFloat:v15];
        [lastAction setObject:v16 forVariant:32];
      }
    }
  }
}

- (void)_applyTableColumnIndex:(id)index options:(unint64_t)options language:(id)language
{
  optionsCopy = options;
  indexCopy = index;
  languageCopy = language;
  if ((optionsCopy & 0x200000) == 0 && [(VOTElement *)self columnRange]!= 0x7FFFFFFF)
  {
    if ([(VOTElement *)self hasExplicitColumnInfo])
    {
      [(VOTElement *)self ariaColumnIndex];
    }

    else
    {
      [(VOTElement *)self columnRange];
    }

    v9 = sub_1000516CC(off_1001FDDD0, @"column.change", 0, languageCopy);
    v10 = AXFormatInteger();
    v11 = [NSString stringWithFormat:v9, v10];
    v12 = [indexCopy addString:v11 withLanguage:languageCopy];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      lastAction = [indexCopy lastAction];
      LODWORD(v14) = 1062836634;
      v15 = [NSNumber numberWithFloat:v14];
      [lastAction setObject:v15 forVariant:32];
    }
  }
}

- (void)_applyTableRowColumnSpan:(id)span language:(id)language
{
  spanCopy = span;
  languageCopy = language;
  [(VOTElement *)self rowRange];
  v8 = v7;
  [(VOTElement *)self columnRange];
  v10 = v9;
  if (v8 >= 2)
  {
    v11 = sub_1000516CC(off_1001FDDD0, @"row.span", 0, languageCopy);
    v12 = AXFormatInteger();
    v13 = [NSString stringWithFormat:v11, v12];
    v14 = [spanCopy addString:v13 withLanguage:languageCopy];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      lastAction = [spanCopy lastAction];
      LODWORD(v16) = 1062836634;
      v17 = [NSNumber numberWithFloat:v16];
      [lastAction setObject:v17 forVariant:32];
    }
  }

  if (v10 >= 2)
  {
    v18 = sub_1000516CC(off_1001FDDD0, @"column.span", 0, languageCopy);
    v19 = AXFormatInteger();
    v20 = [NSString stringWithFormat:v18, v19];
    v21 = [spanCopy addString:v20 withLanguage:languageCopy];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      lastAction2 = [spanCopy lastAction];
      LODWORD(v23) = 1062836634;
      v24 = [NSNumber numberWithFloat:v23];
      [lastAction2 setObject:v24 forVariant:32];
    }
  }
}

- (id)concatenateLabelsWithLinebreaksBasedOnFrame:(id)frame
{
  frameCopy = frame;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [frameCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(frameCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        label = [v11 label];
        if ([label length])
        {
          [v11 frame];
          v14 = v13;
          v16 = v15;
          if (v6)
          {
            if (v13 <= v8 + v9 / 3.0)
            {
              [NSString stringWithFormat:@"%@ %@", v6, label];
            }

            else
            {
              [NSString stringWithFormat:@"%@\n%@", v6, label];
            }
            v17 = ;

            v8 = v14;
            v9 = v16;
            v6 = v17;
          }

          else
          {
            v6 = label;
            v8 = v14;
            v9 = v16;
          }
        }
      }

      v5 = [frameCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)applicationProvidedOCRText
{
  if ([(VOTElement *)self doesHaveAllTraits:kAXImageTrait | kAXWebContentTrait])
  {
    imageOverlayElements = [(VOTElement *)self imageOverlayElements];
    v4 = [(VOTElement *)self concatenateLabelsWithLinebreaksBasedOnFrame:imageOverlayElements];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)generateCVMLContentForBraille
{
  v3 = +[NSMutableString string];
  v4 = +[AXSettings sharedInstance];
  voiceOverNeuralElementFeedback = [v4 voiceOverNeuralElementFeedback];

  v6 = +[VOTWorkspace sharedWorkspace];
  visionEngine = [v6 visionEngine];

  v22 = visionEngine;
  [visionEngine resultsForElement:self];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        visionFeatureDescriptionOptions = [(VOTElement *)self visionFeatureDescriptionOptions];
        v14 = [v12 detectedFeatureDescriptionWithOptions:visionFeatureDescriptionOptions];

        if ([v14 length])
        {
          iconClassFeatures = [v12 iconClassFeatures];
          v16 = [iconClassFeatures count];

          if (v16)
          {
            isMLElement = [(UIElementProtocol *)self->_uiElement isMLElement];
            if (!voiceOverNeuralElementFeedback && (isMLElement & 1) == 0)
            {
              localizedDetectedIconHint = [v12 localizedDetectedIconHint];
              [v3 appendFormat:@"%@ ", localizedDetectedIconHint];
            }

            [v3 appendFormat:@"%@ ", v14];
          }
        }

        if ([VOTSharedWorkspace textDetectionEnabled])
        {
          detectedTextDescription = [v12 detectedTextDescription];
          if ([detectedTextDescription length])
          {
            if (!voiceOverNeuralElementFeedback)
            {
              localizedDetectedTextHint = [v12 localizedDetectedTextHint];
              [v3 appendFormat:@"%@ ", localizedDetectedTextHint];
            }

            [v3 appendFormat:@"%@ ", detectedTextDescription];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)applyCVMLGeneratedContentToRequest:(id)request explicitUserRequest:(BOOL)userRequest
{
  requestCopy = request;
  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v6 = +[VOTWorkspace sharedWorkspace];
    visionEngine = [v6 visionEngine];

    v8 = [visionEngine resultsForElement:self];
    v9 = +[AXSettings sharedInstance];
    voiceOverDiscoveredSensitiveContentFeedback = [v9 voiceOverDiscoveredSensitiveContentFeedback];

    v10 = +[AXSettings sharedInstance];
    voiceOverNeuralElementFeedback = [v10 voiceOverNeuralElementFeedback];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v46 objects:v54 count:16];
    obj = v12;
    if (v13)
    {
      v14 = v13;
      v39 = visionEngine;
      v40 = 0;
      v45 = 0;
      v44 = *v47;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v47 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v46 + 1) + 8 * i);
          visionFeatureDescriptionOptions = [(VOTElement *)self visionFeatureDescriptionOptions];
          v18 = [v16 detectedFeatureDescriptionWithOptions:visionFeatureDescriptionOptions];

          if ([v18 length])
          {
            iconClassFeatures = [v16 iconClassFeatures];
            v20 = [iconClassFeatures count];

            captionFeatures = [v16 captionFeatures];
            v22 = [captionFeatures count];

            if (AXRuntimeCheck_MediaAnalysisSupport())
            {
              mediaAnalysisImageCaptionFeatures = [v16 mediaAnalysisImageCaptionFeatures];
              v22 = [mediaAnalysisImageCaptionFeatures count];
            }

            if (v20)
            {
              isMLElement = [(UIElementProtocol *)self->_uiElement isMLElement];
              if (!voiceOverNeuralElementFeedback && (isMLElement & 1) == 0)
              {
                localizedDetectedIconHint = [v16 localizedDetectedIconHint];
                v26 = [requestCopy addString:localizedDetectedIconHint category:@"Category_MLContent"];
              }
            }

            if (v22)
            {
              if (userRequest || ([VOTSharedWorkspace elementManager], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "determineFullImageDescriptionsEnabled:", self), v27, v28))
              {
                captionTranslationLocale = [v16 captionTranslationLocale];
                localeIdentifier = [captionTranslationLocale localeIdentifier];

                if (![(__CFString *)localeIdentifier length])
                {

                  localeIdentifier = @"en";
                }

                v31 = AXMediaLogCommon();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v51 = v18;
                  v52 = 2112;
                  v53 = localeIdentifier;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Adding image caption to request with text '%@'. language: '%@'", buf, 0x16u);
                }

                v32 = [requestCopy addString:v18 withLanguage:localeIdentifier category:@"Category_MLContent"];
                [requestCopy setSupplementalBrailleDescription:v18];
                if (voiceOverDiscoveredSensitiveContentFeedback == 1 && ([v16 captionMayContainSensitiveContent] & 1) != 0)
                {
                  v40 = 1;
                }

                else
                {
                  v45 |= voiceOverNeuralElementFeedback == 1;
                }
              }
            }

            else
            {
              v33 = [requestCopy addString:v18 category:@"Category_MLContent"];
              v45 |= voiceOverNeuralElementFeedback == 1;
            }
          }

          if ([VOTSharedWorkspace textDetectionEnabled])
          {
            applicationProvidedOCRText = [(VOTElement *)self applicationProvidedOCRText];
            if (![applicationProvidedOCRText length])
            {
              detectedTextDescription = [v16 detectedTextDescription];

              applicationProvidedOCRText = detectedTextDescription;
            }

            if ([applicationProvidedOCRText length])
            {
              if (voiceOverNeuralElementFeedback == 1)
              {
                v45 = 1;
              }

              else if (!voiceOverNeuralElementFeedback)
              {
                localizedDetectedTextHint = [v16 localizedDetectedTextHint];
                v37 = [requestCopy addString:localizedDetectedTextHint category:@"Category_MLContent"];
              }

              v38 = [requestCopy addString:applicationProvidedOCRText category:@"Category_MLContent"];
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v14);

      if (v40)
      {
        v12 = +[VOSOutputEvent SensitiveContent];
        visionEngine = v39;
        if (!v12)
        {
          goto LABEL_46;
        }
      }

      else
      {
        visionEngine = v39;
        if ((v45 & 1) == 0)
        {
          goto LABEL_46;
        }

        v12 = +[VOSOutputEvent DidRecognizeMLContent];
        if (!v12)
        {
          goto LABEL_46;
        }
      }

      [requestCopy addOutputEvent:v12 toFirstActionMatchingCategory:@"Category_MLContent"];
    }

LABEL_46:
    [requestCopy setImageCaptionResults:obj];
  }
}

- (id)_mathExpression
{
  v2 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2400];
  v3 = [SCRCMathExpression mathExpressionWithDictionary:v2];

  return v3;
}

- (id)_mathAXStringFromAttributedString:(id)string
{
  stringCopy = string;
  string = [stringCopy string];
  v5 = [AXAttributedString axAttributedStringWithString:string];

  [v5 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenMathEquation];
  [v5 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenIgnoreLeadingCommas];
  v6 = +[NSMutableIndexSet indexSet];
  v7 = [stringCopy length];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001156A4;
  v16 = &unk_1001CB728;
  v17 = v6;
  v8 = v5;
  v18 = v8;
  v9 = v6;
  [stringCopy enumerateAttributesInRange:0 options:v7 usingBlock:{0, &v13}];

  [v8 setAttribute:v9 forKey:{UIAccessibilityTokenLiteralTextRanges, v13, v14, v15, v16}];
  v10 = v18;
  v11 = v8;

  return v8;
}

- (id)mathEquationDescription
{
  _mathExpression = [(VOTElement *)self _mathExpression];
  speakableDescription = [_mathExpression speakableDescription];
  v5 = [(VOTElement *)self _mathAXStringFromAttributedString:speakableDescription];

  return v5;
}

- (unint64_t)_minimumSegmentDepthForExpression:(id)expression withMaximumDepth:(unint64_t)depth
{
  if (depth < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 2;
  while (1)
  {
    v7 = [expression speakableSegmentsUpToDepth:v6];
    v8 = [v7 count];

    if (v8 > 1)
    {
      break;
    }

    if (++v6 > depth)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (unint64_t)_minimumSegmentDepth
{
  _mathExpression = [(VOTElement *)self _mathExpression];
  v4 = -[VOTElement _minimumSegmentDepthForExpression:withMaximumDepth:](self, "_minimumSegmentDepthForExpression:withMaximumDepth:", _mathExpression, [_mathExpression maximumDepth]);

  return v4;
}

- (id)mathSegmentsWithGranularityLevel:(unint64_t)level
{
  if (level - 1 >= 4)
  {
    _AXAssert();
  }

  levelCopy = level;
  _mathExpression = [(VOTElement *)self _mathExpression];
  maximumDepth = [_mathExpression maximumDepth];
  v8 = [(VOTElement *)self _minimumSegmentDepthForExpression:_mathExpression withMaximumDepth:maximumDepth];
  if (maximumDepth == 0x7FFFFFFFFFFFFFFFLL)
  {
    _AXAssert();
  }

  v9 = [_mathExpression speakableSegmentsWithSpeakingStyle:0 upToDepth:(v8 + (maximumDepth - v8) * ((levelCopy + -1.0) / -3.0 + 1.0))];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(VOTElement *)self _mathAXStringFromAttributedString:*(*(&v18 + 1) + 8 * i), v18];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (id)mathBrailleDescription
{
  _mathExpression = [(VOTElement *)self _mathExpression];
  dollarCodeDescription = [_mathExpression dollarCodeDescription];

  v5 = [(VOTElement *)self _mathAXStringFromAttributedString:dollarCodeDescription];

  return v5;
}

- (BOOL)canExpandMathEquation
{
  if (![(VOTElement *)self doesHaveTraits:kAXMathEquationTrait]|| ![(VOTElement *)self shouldExpandMathEquation])
  {
    return 0;
  }

  _mathExpression = [(VOTElement *)self _mathExpression];
  subExpressions = [_mathExpression subExpressions];
  if ([subExpressions count] == 1)
  {
    do
    {
      lastObject = [subExpressions lastObject];

      subExpressions2 = [lastObject subExpressions];

      subExpressions = subExpressions2;
      _mathExpression = lastObject;
    }

    while ([subExpressions2 count] == 1);
  }

  else
  {
    lastObject = _mathExpression;
    subExpressions2 = subExpressions;
  }

  v7 = [lastObject maximumDepth] > 1;

  return v7;
}

- (void)expandMathEquation
{
  application = [(VOTElement *)self application];
  uiElement = [application uiElement];
  _rawMathEquation = [(VOTElement *)self _rawMathEquation];
  [uiElement performAXAction:2033 withValue:_rawMathEquation];
}

- (id)mathSummary
{
  _mathExpression = [(VOTElement *)self _mathExpression];
  speakableSummary = [_mathExpression speakableSummary];

  return speakableSummary;
}

@end