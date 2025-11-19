@interface VOTElement
+ (VOTElement)elementWithUIElement:(id)a3;
+ (id)_elementWithAXUIElementRef:(__AXUIElement *)a3;
+ (id)_elementWithAXUIElementRef:(__AXUIElement *)a3 cache:(id)a4 identification:(id)a5 initializeAssociatedPids:(BOOL)a6;
+ (id)customPublicRotorDictionaryForRotorId:(id)a3 startRange:(_NSRange)a4 direction:(int64_t)a5;
+ (id)elementAtPointIntercept;
+ (id)inputUIApplication;
+ (id)iosSystemAppApplication;
+ (id)organizedActionsByCategory:(id)a3;
+ (id)systemAppApplication;
+ (id)systemWideElement;
+ (void)initialize;
+ (void)resetInputUIAppElement;
+ (void)resetSystemAppElement;
+ (void)setElementAtPointIntercept:(id)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)nonPersistentUniqueId;
- (BOOL)_attemptPerformActivateActionWithElement:(id)a3;
- (BOOL)_elementActionsEquivalent:(id)a3 withElement:(id)a4;
- (BOOL)_ignoreCustomActionIndicator:(id)a3 withElement:(id)a4;
- (BOOL)_scrollForAction:(int)a3;
- (BOOL)activateDragWithDescriptorDictionary:(id)a3;
- (BOOL)activateIfSupported;
- (BOOL)activateKeyboardReturnKey;
- (BOOL)allowsActivationWithoutBeingNativeFocused;
- (BOOL)applySelectedText:(id)a3 language:(id)a4;
- (BOOL)attemptToShowContextMenuWithTargetPointValue:(id)a3;
- (BOOL)brailleTextEntrySupported;
- (BOOL)canExpandMathEquation;
- (BOOL)containedIn:(unint64_t)a3;
- (BOOL)customPublicRotorIsVisibleInTouchRotor:(id)a3;
- (BOOL)dispatchKeyboardEvent:(id)a3;
- (BOOL)doesHaveTraitsForGesturedTextInput;
- (BOOL)elementActsAsTitleElement:(id)a3;
- (BOOL)elementIsDescendant:(id)a3;
- (BOOL)elementOnSameLine:(id)a3;
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
- (BOOL)isElementFirstElement:(BOOL)a3 orLastElement:(BOOL)a4 withType:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
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
- (BOOL)isValidForApplication:(id)a3;
- (BOOL)isVoiceControlRunning;
- (BOOL)isWesternTextForNonWesternLanguage:(id)a3 language:(id)a4;
- (BOOL)keyboardKeyAllowsTouchTyping;
- (BOOL)lastHitTestNearBorder;
- (BOOL)performCustomActionWithIdentifier:(id)a3 data:(id)a4;
- (BOOL)performEscape;
- (BOOL)performScribbleAction;
- (BOOL)performSimpleTap:(BOOL)a3;
- (BOOL)performSimpleTapAtPoint:(CGPoint)a3 withForce:(double)a4 withContextId:(unsigned int)a5 withDelay:(float)a6 forElement:(id)a7;
- (BOOL)performTapAtPoint:(CGPoint)a3 withForce:(double)a4 playSound:(BOOL)a5;
- (BOOL)prefersContextlessPassthrough;
- (BOOL)replaceTextInRange:(_NSRange)a3 withString:(id)a4;
- (BOOL)roadContainsTrackingPoint:(CGPoint)a3;
- (BOOL)shouldAddAlternateActionForLinkElement;
- (BOOL)shouldAnnounceTableInfo;
- (BOOL)shouldExpandMathEquation;
- (BOOL)shouldIgnoreTextEditingTrait;
- (BOOL)shouldSpeakHelpInGestureArea;
- (BOOL)shouldSpeakMathEquationTrait;
- (BOOL)showBulletinBoard:(BOOL)a3;
- (BOOL)showControlCenter:(BOOL)a3;
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
- (BOOL)verifyElementExists:(CGPoint *)a3;
- (BOOL)webSearchResultsActive;
- (CGPath)convertPath:(CGPath *)a3 fromContextId:(unsigned int)a4;
- (CGPath)convertPath:(CGPath *)a3 fromContextId:(unsigned int)a4 fromDisplayId:(unsigned int)a5;
- (CGPoint)centerPoint;
- (CGPoint)centerPointOfScreen;
- (CGPoint)contentOffset;
- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4;
- (CGPoint)elementFrameLocation:(int)a3;
- (CGPoint)mapsExplorationCurrentLocation;
- (CGPoint)visiblePoint;
- (CGRect)adaptFrameForSystemElement:(CGRect)a3;
- (CGRect)boundsForRange:(_NSRange)a3;
- (CGRect)braille2DRenderRegion;
- (CGRect)convertAccessibilityFrameToScreenCoordinates:(CGRect)a3;
- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4 fromDisplayId:(unsigned int)a5;
- (CGRect)convertRect:(CGRect)a3 fromContextId:(unsigned int)a4;
- (CGRect)frame;
- (CGRect)frameForDirectInteraction;
- (CGRect)frameForLineNumber:(int64_t)a3;
- (CGRect)frameForRange:(_NSRange)a3;
- (CGRect)gesturePracticeRegion;
- (CGRect)mediaAnalysisFrame;
- (CGRect)textCursorFrame;
- (CGRect)textMarkerFrame:(id)a3;
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
- (VOTElement)initWithAXElement:(__AXUIElement *)a3;
- (VOTElement)initWithPosition:(CGPoint)a3;
- (VOTElement)initWithPosition:(CGPoint)a3 application:(id)a4 contextId:(unsigned int)a5;
- (VOTElement)initWithPosition:(CGPoint)a3 startWithElement:(id)a4;
- (VOTElement)nextGuideElement;
- (VOTElement)previousGuideElement;
- (VOTElementSnapshot)snapshot;
- (VOTElementUniqueIdentification)uniqueIdentification;
- (_NSRange)_brailleLineRangeForDescription:(id)a3 position:(unint64_t)a4;
- (_NSRange)characterRangeForPosition:(unint64_t)a3;
- (_NSRange)columnRange;
- (_NSRange)indexPathAsRange;
- (_NSRange)lineRangeForPosition:(unint64_t)a3;
- (_NSRange)rangeForLineNumber:(int64_t)a3;
- (_NSRange)rangeForLineNumberAndColumn:(id)a3;
- (_NSRange)rangeForTextMarker:(id)a3;
- (_NSRange)rowRange;
- (_NSRange)selectedTextRange;
- (_NSRange)textInputElementRange;
- (_NSRange)textMarkerSelectionRange;
- (__AXUIElement)touchContainerAXElement;
- (__AXUIElement)touchContainerParentAXElement;
- (double)absoluteValue;
- (double)dataSeriesMaximumValueForAxis:(int64_t)a3;
- (double)dataSeriesMinimumValueForAxis:(int64_t)a3;
- (double)dataSeriesSonificationPlaybackDuration;
- (double)delayBeforeUpdatingOnActivation;
- (double)maxValue;
- (double)minValue;
- (float)activationDelay;
- (float)distanceToEndOfRoad:(CGPoint)a3 withDirection:(float)a4;
- (float)distanceToOtherRoad:(CGPoint)a3 withDirection:(float)a4 otherRoad:(id)a5;
- (id)_copyMathTextualInformationWithBrailleLineRange:(_NSRange *)a3 brailleDescriptionRange:(_NSRange *)a4 position:(unint64_t)a5 rotorSelection:(id)a6 shouldPreferRotorSelection:(BOOL)a7;
- (id)_elementForAttribute:(int64_t)a3 shouldUpdateCache:(BOOL)a4 shouldFetchAttributes:(BOOL)a5;
- (id)_initWithUIElement:(id)a3 identification:(id)a4 initializeAssociatedPids:(BOOL)a5;
- (id)_languageRangesForText:(id)a3;
- (id)_lastContainedElementIncludingRemotes:(BOOL)a3;
- (id)_mathAXStringFromAttributedString:(id)a3;
- (id)_mathExpression;
- (id)_removeBadDeveloperDecisions:(id)a3;
- (id)_resolvedOutputLanguage:(BOOL *)a3;
- (id)_selectionStringForSegment:(int64_t)a3;
- (id)_sourceNameForChangeOriginator:(int64_t)a3;
- (id)activeSceneIdentifier;
- (id)ancestryForTraits:(unint64_t)a3;
- (id)appIconValues;
- (id)appSwitcherApps;
- (id)applicationProvidedOCRText;
- (id)arrayForParameterizedAttribute:(int64_t)a3 parameter:(id)a4;
- (id)arrayOfTraitsAsStringsWithTraitOrder:(id)a3;
- (id)arrayOfTraitsAsStringsWithTraitOrder:(id)a3 language:(id)a4;
- (id)attributedValueForRange:(_NSRange)a3;
- (id)brailleMap;
- (id)bundleIdentifier;
- (id)cachedCustomRotorActions;
- (id)cachedDragCustomActions;
- (id)cachedDropCustomActions;
- (id)cellWithRowIndexPath:(_NSRange)a3 parentView:(id)a4;
- (id)chartDescriptor;
- (id)concatenateLabelsWithLinebreaksBasedOnFrame:(id)a3;
- (id)containerTypes;
- (id)copyWithCache;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentHardwareKeyboardLayout;
- (id)currentSoftwareKeyboardLanguage;
- (id)currentSoftwareKeyboardLayout;
- (id)customContent;
- (id)customPublicRotorForSystemType:(id)a3;
- (id)customPublicRotorName:(id)a3;
- (id)customPublicRotorNames;
- (id)customPublicRotorResultWithItem:(id)a3 startElement:(id)a4;
- (id)customPublicRotors;
- (id)customRotorActions;
- (id)dataDetectorURL:(CGPoint)a3;
- (id)dataSeriesAxesDescription;
- (id)dataSeriesCategoryLabelsForAxis:(int64_t)a3;
- (id)dataSeriesGridlinePositionsForAxis:(int64_t)a3;
- (id)dataSeriesName;
- (id)dataSeriesTitleForAxis:(int64_t)a3;
- (id)dataSeriesUnitsLabelForAxis:(int64_t)a3;
- (id)dataSeriesValuesForAxis:(int64_t)a3;
- (id)dataSeriesXAxisValueDescriptionForPosition:(double)a3;
- (id)dataSeriesYAxisValueDescriptionForPosition:(double)a3;
- (id)dragCustomActions;
- (id)dragSourceDescriptorDictionaries;
- (id)dropCustomActions;
- (id)dropPointDescriptorDictionaries;
- (id)elementAtRow:(int64_t)a3 andColumn:(int64_t)a4;
- (id)elementCommunity;
- (id)elementCommunityIdentifier;
- (id)elementForParameterizedAttribute:(int64_t)a3 parameter:(id)a4;
- (id)elementsForAttribute:(int64_t)a3 withParameter:(id)a4;
- (id)elementsInDirection:(int64_t)a3 withCount:(unint64_t)a4;
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
- (id)headerElementsForColumn:(unint64_t)a3;
- (id)headerElementsForRow:(unint64_t)a3;
- (id)immediateRemoteParent;
- (id)initApplicationWithPid:(int)a3;
- (id)initApplicationWithPosition:(CGPoint)a3;
- (id)instructions;
- (id)itemChooserName;
- (id)labeledTouchContainer;
- (id)lastContainedElement;
- (id)lastElementInApplication;
- (id)lastElementInStatusBar;
- (id)launchableApps;
- (id)lineNumberAndColumnForPoint:(CGPoint)a3;
- (id)mapDetailedInformationAtPoint:(CGPoint)a3;
- (id)mapsExplorationChangeVerbosity:(BOOL)a3;
- (id)mathBrailleDescription;
- (id)mathEquationDescription;
- (id)mathSegmentsWithGranularityLevel:(unint64_t)a3;
- (id)mathSummary;
- (id)nativeFocusElement;
- (id)nativeFocusPreferredElement;
- (id)nextContainer;
- (id)nextElement;
- (id)notificationSummary:(unint64_t)a3;
- (id)objectForRange:(_NSRange)a3 withParameterizedAttribute:(int64_t)a4;
- (id)occludedMultitaskingApps;
- (id)opaqueElementInDirection:(int64_t)a3 searchType:(int64_t)a4 range:(_NSRange *)a5 peeking:(BOOL)a6 startOpaqueElement:(id)a7;
- (id)opaqueParent;
- (id)originalLabel;
- (id)outermostLocalOpaqueParent;
- (id)pageTextMarkerRange;
- (id)previousContainer;
- (id)previousElement;
- (id)regionDescriptionWithFrame:(CGRect)a3;
- (id)remoteApplication;
- (id)remoteParent;
- (id)resolvedEditingStyles;
- (id)roleDescriptionWithInteractOption:(int64_t)a3 language:(id)a4;
- (id)scribbleAreaForSearchPoint:(int64_t)a3;
- (id)scrollStatus;
- (id)staticRecognitionText;
- (id)staticTextString;
- (id)stringForLineNumber:(int64_t)a3;
- (id)stringForParameterizedAttribute:(int64_t)a3 parameter:(id)a4;
- (id)supportedLanguageIfNecessary;
- (id)tableDimensionStringWithRow:(unint64_t)a3 andColumn:(unint64_t)a4;
- (id)textLineEndMarker:(id)a3;
- (id)textMarkerArrayOfText:(id)a3;
- (id)textMarkerForPoint:(CGPoint)a3;
- (id)textMarkerRangeForSelection;
- (id)textMarkersForPoints:(id)a3;
- (id)textMarkersForRange:(_NSRange)a3;
- (id)textOperations;
- (id)touchContainer;
- (id)touchContainerParent;
- (id)upcomingRoadsAtPoint:(CGPoint)a3 withDirection:(float)a4;
- (id)url;
- (id)urlLabel;
- (id)valueForRange:(_NSRange)a3;
- (id)valueWithUpdate:(BOOL)a3;
- (id)visionFeatureDescriptionOptions;
- (id)webArea;
- (id)webAreaURL;
- (id)webHierarchyIndexPathFromWebArea:(id)a3;
- (int)applicationInterfaceOrientation;
- (int64_t)_changeOriginatorForSourceName:(id)a3;
- (int64_t)applicationOrientation;
- (int64_t)customPublicRotorLinkCountForRotor:(id)a3;
- (int64_t)dataSeriesType;
- (int64_t)differenceAspectMask:(id)a3;
- (int64_t)expandedStatus;
- (int64_t)lineEndPosition;
- (int64_t)lineNumberForPoint:(CGPoint)a3;
- (int64_t)lineStartPosition;
- (int64_t)mapFeatureType;
- (int64_t)overriddenInterpretationForCommand:(int64_t)a3;
- (int64_t)temporaryVoiceOverStatus;
- (int64_t)valueChangeOriginationSource;
- (int64_t)versionedPID;
- (unint64_t)_minimumSegmentDepth;
- (unint64_t)_minimumSegmentDepthForExpression:(id)a3 withMaximumDepth:(unint64_t)a4;
- (unint64_t)ariaColumnCount;
- (unint64_t)ariaColumnIndex;
- (unint64_t)ariaRowCount;
- (unint64_t)ariaRowIndex;
- (unint64_t)blockquoteLevel;
- (unint64_t)columnCount;
- (unint64_t)containerType;
- (unint64_t)directTouchOptions;
- (unint64_t)groupedChildrenCount;
- (unint64_t)indexOfAccessibilityElement:(id)a3;
- (unint64_t)notificationCount;
- (unint64_t)rowCount;
- (unint64_t)traits;
- (unsigned)displayId;
- (unsigned)mediaAnalysisOptions;
- (unsigned)secureName;
- (unsigned)windowContextId;
- (unsigned)windowContextIdForPress;
- (unsigned)windowContextIdImmediateRemoteParent:(unsigned int)a3;
- (void)_addErrorMessageElement:(id)a3 toRequest:(id)a4;
- (void)_addHeaderElement:(id)a3 toRequest:(id)a4;
- (void)_applyBrailleTextFormattingAndInlineCompletionOptions:(id)a3 attributedString:(id)a4 brailleLineRange:(_NSRange)a5 rangeOffset:(unint64_t)a6;
- (void)_applyCurrentStatus:(id)a3 language:(id)a4;
- (void)_applyCustomContent:(id)a3 language:(id)a4;
- (void)_applyDatetimeAttribute:(id)a3 language:(id)a4;
- (void)_applyExpandedStatus:(id)a3 language:(id)a4;
- (void)_applyHasPopupAttribute:(id)a3 withLanguage:(id)a4;
- (void)_applyHeaderStatus:(id)a3 language:(id)a4;
- (void)_applyInvalidStatus:(id)a3 language:(id)a4;
- (void)_applyLabelToRequest:(id)a3 includeBlockQuote:(BOOL)a4 language:(id)a5 isWebLanguageChoice:(BOOL)a6 interactOption:(int64_t)a7;
- (void)_applyLanguageTokens:(id)a3 attributedString:(id)a4;
- (void)_applyLinkRelationshipType:(id)a3 language:(id)a4;
- (void)_applyRoleDescription:(id)a3 language:(id)a4 interactOption:(int64_t)a5;
- (void)_applySelectedTrait:(id)a3 language:(id)a4;
- (void)_applySortDirection:(id)a3 language:(id)a4;
- (void)_applyStickyCustomActions:(id)a3 customAction:(id)a4 language:(id)a5;
- (void)_applyTableColumnIndex:(id)a3 options:(unint64_t)a4 language:(id)a5;
- (void)_applyTableRowColumnSpan:(id)a3 language:(id)a4;
- (void)_applyTableRowIndex:(id)a3 options:(unint64_t)a4 language:(id)a5;
- (void)_applyTraitsToRequest:(id)a3 options:(unint64_t)a4 numHeaderActions:(unint64_t)a5 language:(id)a6;
- (void)_applyValueToRequest:(id)a3 options:(unint64_t)a4 lastSeenLineAndColumn:(id)a5 language:(id)a6;
- (void)_configureAsSingleLinkElementWithRequest:(id)a3 linkTraitTitle:(id)a4 hint:(id)a5;
- (void)_copyInternalsToElement:(id)a3;
- (void)_iterateSelfAndRemoteParentsUsingBlock:(id)a3;
- (void)_updateFocusForFKA:(BOOL)a3;
- (void)_updateValueChangeOriginatorForApplication:(int64_t)a3;
- (void)addTextualInformationToBrailleLine:(id)a3 forPosition:(unint64_t)a4 rotorSelection:(id)a5 shouldPreferRotorSelection:(BOOL)a6 lineRange:(_NSRange *)a7 descriptionRange:(_NSRange *)a8 lineRangeKnown:(BOOL)a9 isNewTouchContainer:(BOOL)a10 previousElement:(id)a11;
- (void)addTextualInformationToBrailleLine:(id)a3 forPosition:(unint64_t)a4 rotorSelection:(id)a5 shouldPreferRotorSelection:(BOOL)a6 lineRange:(_NSRange *)a7 descriptionRange:(_NSRange *)a8 lineRangeKnown:(BOOL)a9 isNewTouchContainer:(BOOL)a10 previousElement:(id)a11 updateValue:(BOOL)a12 singleLine:(BOOL)a13;
- (void)addTextualInformationToRequest:(id)a3 options:(unint64_t)a4 dataPackage:(id)a5;
- (void)addTitleElementToCache:(id)a3;
- (void)announceAdditionalTextualInformation:(id)a3;
- (void)announceTableInfo:(id)a3 options:(unint64_t)a4 language:(id)a5;
- (void)applyCVMLGeneratedContentToRequest:(id)a3 explicitUserRequest:(BOOL)a4;
- (void)applyGroupChildrenCountToRequest:(id)a3;
- (void)applyHeaderElementsToRequest:(id)a3;
- (void)applyInvalidStatusToRequest:(id)a3;
- (void)applyRowHeadersToRequest:(id)a3;
- (void)applyTableDimension:(id)a3 language:(id)a4;
- (void)applyTextEditingInformation:(id)a3 request:(id)a4 options:(unint64_t)a5;
- (void)clearSelectedScribbleElement;
- (void)decreaseWebSelection:(int64_t)a3;
- (void)deleteCharacterAtCursorWithSource:(int64_t)a3;
- (void)expandMathEquation;
- (void)findSearchResult:(BOOL)a3 withSearchText:(id)a4;
- (void)handwritingSendCarriageReturn;
- (void)increaseWebSelection:(int64_t)a3;
- (void)initializeAssociatedPids;
- (void)insertText:(id)a3 source:(int64_t)a4;
- (void)mapsExplorationBeginFromCurrentElement:(BOOL)a3;
- (void)mapsExplorationContinueWithVertexIndex:(unint64_t)a3;
- (void)mapsExplorationRecordTouchpoint:(CGPoint)a3;
- (void)notifyAnnouncementFinishedWithString:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)performDoubleTap;
- (void)performTextOperation:(id)a3;
- (void)postFingerDragAtPoint:(CGPoint)a3 withForce:(double)a4 withContextId:(unsigned int)a5;
- (void)postFingerLiftAtPoint:(CGPoint)a3 withContextId:(unsigned int)a4;
- (void)postFingerTouchAtPoint:(CGPoint)a3 withForce:(double)a4 withContextId:(unsigned int)a5;
- (void)postStylusDragAtPoint:(CGPoint)a3 withForce:(double)a4 altitude:(double)a5 azimuth:(double)a6 withContextId:(unsigned int)a7;
- (void)postStylusLiftAtPoint:(CGPoint)a3 withContextId:(unsigned int)a4;
- (void)postStylusTouchAtPoint:(CGPoint)a3 withForce:(double)a4 altitude:(double)a5 azimuth:(double)a6 withContextId:(unsigned int)a7;
- (void)regionDescriptionWithCompletion:(id)a3;
- (void)replaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4 source:(int64_t)a5;
- (void)repostEvent:(id)a3;
- (void)scrollRectToVisible:(CGRect)a3 withCompletion:(id)a4;
- (void)scrollToElementForDirectional:(int64_t)a3 withCompletion:(id)a4;
- (void)scrollToPoint:(CGPoint)a3;
- (void)setDeviceOrientation:(int64_t)a3;
- (void)setEventCaptureMode:(int)a3;
- (void)setFirstResponder:(id)a3;
- (void)setIsFirstItemInFieldset:(BOOL)a3;
- (void)setIsFirstItemInLandmark:(BOOL)a3;
- (void)setIsFirstItemInList:(BOOL)a3;
- (void)setIsFirstItemInTable:(BOOL)a3;
- (void)setIsFirstItemInTree:(BOOL)a3;
- (void)setIsLastItemInList:(BOOL)a3;
- (void)setNavigationDirectionMode:(int64_t)a3;
- (void)setRotationCapabilityEnabled:(BOOL)a3;
- (void)setSelectedTextRange:(_NSRange)a3 refreshBraille:(BOOL)a4 isVoiceOverSelectionMovement:(BOOL)a5;
- (void)setTemporaryVoiceOverStatus:(int64_t)a3;
- (void)setVoiceOverFocused:(BOOL)a3;
- (void)unsetEventCaptureMode:(int)a3;
- (void)updateCache;
- (void)updateTouchForceSounds:(double)a3;
- (void)zoomInAtLocation:(CGPoint)a3;
- (void)zoomOutAtLocation:(CGPoint)a3;
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
    block[4] = a1;
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
      v5 = [v4 uiElement];

      v6 = [v5 uiElementsWithAttribute:1001];
      v7 = [v6 lastObject];

      v8 = [VOTElement elementWithUIElement:v7];
      v9 = qword_1001FEA10;
      qword_1001FEA10 = v8;

      v10 = [qword_1001FEA10 uiElement];
      v11 = [v10 axElement];

      if (v11)
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
    v3 = [v2 uiElement];

    v4 = [v3 uiElementsWithAttribute:1011];
    v5 = [v4 lastObject];

    v6 = [VOTElement elementWithUIElement:v5];
    v7 = qword_1001FEA18;
    qword_1001FEA18 = v6;

    v8 = [qword_1001FEA18 uiElement];
    v9 = [v8 axElement];

    if (v9)
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
    v3 = qword_1001FEA48;
  }

  else
  {
    v3 = [a1 systemAppApplication];
  }

  return v3;
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

+ (VOTElement)elementWithUIElement:(id)a3
{
  v4 = a3;
  v5 = [objc_allocWithZone(a1) initWithUIElement:v4];

  return v5;
}

+ (id)_elementWithAXUIElementRef:(__AXUIElement *)a3 cache:(id)a4 identification:(id)a5 initializeAssociatedPids:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = objc_allocWithZone(a1);
  v13 = [AXUIElement uiElementWithAXElement:a3 cache:v11];

  v14 = [v12 _initWithUIElement:v13 identification:v10 initializeAssociatedPids:v6];

  return v14;
}

+ (id)_elementWithAXUIElementRef:(__AXUIElement *)a3
{
  v4 = [AXUIElement uiElementWithAXElement:a3];
  v5 = [a1 elementWithUIElement:v4];

  return v5;
}

+ (id)elementAtPointIntercept
{
  v2 = objc_retainBlock(qword_1001FEA50);

  return v2;
}

+ (void)setElementAtPointIntercept:(id)a3
{
  qword_1001FEA50 = objc_retainBlock(a3);

  _objc_release_x1();
}

- (id)initApplicationWithPid:(int)a3
{
  v4 = [AXUIElement uiApplicationWithPid:*&a3];
  v5 = [(VOTElement *)self initWithUIElement:v4];

  return v5;
}

- (id)initApplicationWithPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v6 = 0;
  }

  else
  {
    v7 = [AXUIElement uiApplicationAtCoordinate:x, y];
    self = [(VOTElement *)self initWithUIElement:v7];

    v6 = self;
  }

  return v6;
}

- (VOTElement)initWithAXElement:(__AXUIElement *)a3
{
  v4 = [AXUIElement uiElementWithAXElement:a3];
  v5 = [(VOTElement *)self initWithUIElement:v4];

  return v5;
}

- (id)_initWithUIElement:(id)a3 identification:(id)a4 initializeAssociatedPids:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = VOTElement;
  v11 = [(VOTElement *)&v15 init];
  v12 = v11;
  v13 = 0;
  if (v9 && v11)
  {
    objc_storeStrong(&v11->_uiElement, a3);
    v12->_lastOrbSoundLevel = 0;
    v12->_aspectMask = 63;
    if (![(VOTElement *)v12 isApplication])
    {
      objc_storeStrong(&v12->_uniqueIdentification, a4);
    }

    if (v5)
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
      v3 = [(VOTElement *)self application];
      [v3 pid];
      _AXAddAssociatedPid();
    }
  }
}

- (VOTElement)initWithPosition:(CGPoint)a3 startWithElement:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [a4 uiElement];
  v8 = [AXUIElement uiElementAtCoordinate:v7 startWithElement:x, y];

  v9 = [(VOTElement *)self initWithUIElement:v8];
  return v9;
}

- (VOTElement)initWithPosition:(CGPoint)a3 application:(id)a4 contextId:(unsigned int)a5
{
  v5 = *&a5;
  y = a3.y;
  x = a3.x;
  v9 = [a4 uiElement];
  v10 = +[AXUIElement uiElementAtCoordinate:forApplication:contextId:](AXUIElement, "uiElementAtCoordinate:forApplication:contextId:", [v9 axElement], v5, x, y);

  v11 = [(VOTElement *)self initWithUIElement:v10];
  return v11;
}

- (VOTElement)initWithPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (id)copyWithZone:(_NSZone *)a3
{
  if ([VOTSharedWorkspace inUnitTestMode] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [VOTElement elementWithUIElement:self->_uiElement];
  }

  else
  {
    v5 = [(UIElementProtocol *)self->_uiElement axElement];
    v6 = [(VOTElement *)self uniqueIdentification];
    v4 = [VOTElement _elementWithAXUIElementRef:v5 cache:0 identification:v6 initializeAssociatedPids:0];
  }

  [(VOTElement *)self _copyInternalsToElement:v4];
  return v4;
}

- (id)copyWithCache
{
  v3 = [(UIElementProtocol *)self->_uiElement copyCachedAttributes];
  if ([VOTSharedWorkspace inUnitTestMode] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [(UIElementProtocol *)self->_uiElement copyWithZone:0];
    [v4 setAttributes:v3];
    v5 = [VOTElement elementWithUIElement:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v6 = [(UIElementProtocol *)self->_uiElement axElement];
    v4 = [(VOTElement *)self uniqueIdentification];
    v5 = [VOTElement _elementWithAXUIElementRef:v6 cache:v3 identification:v4 initializeAssociatedPids:0];
  }

  v7 = v5;

LABEL_8:
  [(VOTElement *)self _copyInternalsToElement:v7];

  return v7;
}

- (void)_copyInternalsToElement:(id)a3
{
  v10 = a3;
  [v10 setCachedDisplayId:{-[VOTElement cachedDisplayId](self, "cachedDisplayId")}];
  v4 = [(VOTElement *)self definedLabel];
  v5 = [v4 copy];
  [v10 setDefinedLabel:v5];

  v6 = [(VOTElement *)self userDefinedLabel];
  v7 = [v6 copy];
  [v10 setUserDefinedLabel:v7];

  [v10 setIsFirstItemInList:{-[VOTElement isFirstItemInList](self, "isFirstItemInList")}];
  [v10 setIsLastItemInList:{-[VOTElement isLastItemInList](self, "isLastItemInList")}];
  [v10 setIsFirstItemInTable:{-[VOTElement isFirstItemInTable](self, "isFirstItemInTable")}];
  [v10 setIsFirstItemInLandmark:{-[VOTElement isFirstItemInLandmark](self, "isFirstItemInLandmark")}];
  [v10 setIsFirstItemInFieldset:{-[VOTElement isFirstItemInFieldset](self, "isFirstItemInFieldset")}];
  [v10 setIsFirstItemInTree:{-[VOTElement isFirstItemInTree](self, "isFirstItemInTree")}];
  [v10 setIsFirstItemInDescriptionList:{-[VOTElement isFirstItemInDescriptionList](self, "isFirstItemInDescriptionList")}];
  [v10 setActivatedDirectTouchThatRequiredActivation:{-[VOTElement activatedDirectTouchThatRequiredActivation](self, "activatedDirectTouchThatRequiredActivation")}];
  elementForGesturedTextInput = self->_elementForGesturedTextInput;
  if (elementForGesturedTextInput != self)
  {
    v9 = [(VOTElement *)elementForGesturedTextInput copyWithCache];
    [v10 setElementForGesturedTextInput:v9];
  }
}

- (BOOL)isAlive
{
  [(UIElementProtocol *)self->_uiElement updateCache:2088];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2088];
}

- (BOOL)isValidForApplication:(id)a3
{
  uiElement = self->_uiElement;
  v4 = [a3 uiElement];
  LOBYTE(uiElement) = [(UIElementProtocol *)uiElement isValidForApplication:v4];

  return uiElement;
}

- (void)setNavigationDirectionMode:(int64_t)a3
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithInteger:a3];
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

- (BOOL)containedIn:(unint64_t)a3
{
  v4 = [(VOTElement *)self containerTypes];
  v5 = [NSNumber numberWithUnsignedLong:a3];
  v6 = [v4 containsObject:v5];

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
  v3 = [v2 integerValue];

  return v3;
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
  v3 = [VOTSharedWorkspace systemSpokenLanguage];

  if (v3)
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
        v9 = [VOTSharedWorkspace systemSpokenLanguage];
        v10 = [v9 lowercaseString];

        if ([v10 length])
        {
          v11 = [v10 rangeOfString:@"-"];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [v10 substringToIndex:v11];

            v10 = v12;
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

                v20 = [v19 hasPrefix:{v10, v23}];

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
    v5 = [v4 unsignedIntValue];

    if (!v5)
    {
      v6 = [(VOTElement *)self immediateRemoteParent];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 uiElement];
        v9 = [v8 numberWithAXAttribute:2123];
        v5 = [v9 unsignedIntValue];
      }

      else
      {
        v5 = 0;
      }
    }

    [(VOTElement *)self setCachedDisplayId:v5];
    return v5;
  }
}

- (unsigned)windowContextId
{
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2021];
  v4 = [v3 unsignedIntValue];

  if (!v4)
  {
    v5 = [(VOTElement *)self immediateRemoteParent];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 uiElement];
      v8 = [v7 numberWithAXAttribute:2021];
      v4 = [v8 unsignedIntValue];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (unsigned)windowContextIdForPress
{
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2021];
  v4 = [v3 unsignedIntValue];

  if (v4 && ![(UIElementProtocol *)self->_uiElement BOOLWithAXAttribute:2224])
  {
    return v4;
  }

  return [(VOTElement *)self windowContextIdImmediateRemoteParent:v4];
}

- (unsigned)windowContextIdImmediateRemoteParent:(unsigned int)a3
{
  v4 = [(VOTElement *)self immediateRemoteParent];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 uiElement];
    v7 = [v6 numberWithAXAttribute:2021];
    a3 = [v7 unsignedIntValue];
  }

  return a3;
}

- (id)fbSceneIdentifier
{
  v3 = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:2721];
  if (!v3)
  {
    v4 = [(VOTElement *)self immediateRemoteParent];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 uiElement];
      v3 = [v6 stringWithAXAttribute:2721];
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
  v3 = [v2 intValue];

  return v3;
}

- (unint64_t)rowCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2121];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)columnCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2122];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)ariaRowCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2119];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)ariaColumnCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2120];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)ariaRowIndex
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2117];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)ariaColumnIndex
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2118];
  v3 = [v2 unsignedIntegerValue];

  return v3;
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
  v2 = [(VOTElement *)self localOpaqueParent];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = v3;

      v3 = [v5 localOpaqueParent];

      v4 = v5;
    }

    while (v3);
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
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)notificationSummary:(unint64_t)a3
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    if (a3)
    {
      v5 = [NSString stringWithFormat:@"%lu summaries", a3];
    }

    else
    {
      v5 = @"all summaries";
    }
  }

  else
  {
    v5 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:95238 parameter:[NSNumber numberWithUnsignedInteger:a3]];
  }

  return v5;
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

- (id)valueWithUpdate:(BOOL)a3
{
  if (a3 && [(VOTElement *)self doesHaveTraits:kAXIsEditingTrait | kAXUpdatesFrequentlyTrait | kAXAdjustableTrait])
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
  v4 = [(VOTElement *)self label];
  v5 = [(VOTElement *)self value];
  if ([v4 length])
  {
    [v3 appendString:v4];
  }

  if ([v5 length])
  {
    if ([v3 length])
    {
      [v3 appendString:{@", "}];
    }

    if (![(VOTElement *)self doesHaveTraits:kAXToggleTrait])
    {
      [v3 appendString:v5];
      goto LABEL_15;
    }

    if ([v5 isEqualToString:@"1"])
    {
      v6 = off_1001FDDD0;
      v7 = @"element.nonweb.on.text";
      v8 = @"on";
    }

    else if ([v5 isEqualToString:@"0"])
    {
      v6 = off_1001FDDD0;
      v7 = @"element.nonweb.off.text";
      v8 = @"off";
    }

    else
    {
      if (![v5 isEqualToString:@"2"])
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
  v4 = [v3 path];
  v5 = [v4 lastPathComponent];

  if ([(VOTElement *)self doesHaveTraits:kAXButtonTrait | kAXImageTrait])
  {
    v6 = [v3 scheme];
    v7 = [v6 isEqualToString:@"cid"];

    if (v7)
    {
      v8 = [(VOTElement *)self application];
      v9 = [v8 isMail];

      if (v9)
      {
        v10 = sub_1000511CC(off_1001FDDD0, @"attachment", 0);
        v11 = [(VOTElement *)self application];
        v12 = [v3 resourceSpecifier];
        v13 = [v11 attachmentFilenameForCID:v12];

        if ([v13 length])
        {
          v21 = v10;
          v22 = @"__AXStringForVariablesSentinel";
          v14 = __AXStringForVariables();

          v5 = v14;
        }
      }

      if (![v5 length])
      {
        v15 = [v3 resourceSpecifier];
        v16 = [v15 lastPathComponent];

        v17 = sub_1000511CC(off_1001FDDD0, @"attachment", 0);
        v5 = [NSString stringWithFormat:@"%@, %@", v17, v16];
      }
    }
  }

  v18 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:&stru_1001CBF90];

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
    v9 = [(VOTElement *)self uniqueIdentification];
    v4 = [v8 userLabelForIdentification:v9];

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
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsFirstItemInList:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_1001FEA59, v4, 1);
}

- (BOOL)isLastItemInList
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5A);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsLastItemInList:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_1001FEA5A, v4, 1);
}

- (BOOL)isFirstItemInTable
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5B);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsFirstItemInTable:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_1001FEA5B, v4, 1);
}

- (BOOL)isFirstItemInLandmark
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5C);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsFirstItemInLandmark:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_1001FEA5C, v4, 1);
}

- (BOOL)isFirstItemInFieldset
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5D);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsFirstItemInFieldset:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_1001FEA5D, v4, 1);
}

- (BOOL)isFirstItemInTree
{
  v2 = objc_getAssociatedObject(self, &unk_1001FEA5E);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsFirstItemInTree:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_1001FEA5E, v4, 1);
}

- (NSString)label
{
  v3 = [(VOTElement *)self userDefinedLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(VOTElement *)self definedLabel];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(VOTElement *)self originalLabel];
      if (![v8 length] && -[VOTElement includeURLLabelInLabel](self, "includeURLLabelInLabel"))
      {
        v9 = [(VOTElement *)self urlLabel];

        v8 = v9;
      }

      if ([v8 isAXAttributedString] && objc_msgSend(v8, "hasAttribute:", UIAccessibilityTokenReplaceWithActiveActivity))
      {
        [qword_1001FEA10 updateFocusActiveActivityDisplayName];
        v10 = +[VOTElement springBoardApplication];
        v11 = [v10 focusModeActivityName];

        if ([v11 length])
        {
          v21[0] = 0;
          v21[1] = v21;
          v21[2] = 0x2020000000;
          v21[3] = 0;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100016468;
          v17[3] = &unk_1001C79D0;
          v12 = [v8 copy];
          v18 = v12;
          v20 = v21;
          v19 = v11;
          [v8 enumerateAttributesUsingBlock:v17];
          v13 = v12;

          _Block_object_dispose(v21, 8);
          v8 = v13;
        }
      }

      if ([v8 length] || !-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXAllowsDirectInteractionTrait))
      {
        v5 = v8;
      }

      else
      {
        v14 = off_1001FDDD0;
        v15 = [VOTSharedWorkspace selectedLanguage];
        v5 = sub_1000516CC(v14, @"default.direct.interact.label", 0, v15);
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
    v4 = [(VOTElement *)self traits];
    if ((kAXTouchContainerTrait & v4) != 0)
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
  v4 = [v3 unsignedIntegerValue];

  return v4;
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

- (id)elementForParameterizedAttribute:(int64_t)a3 parameter:(id)a4
{
  v4 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:a3 parameter:a4];
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

- (id)arrayForParameterizedAttribute:(int64_t)a3 parameter:(id)a4
{
  v4 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:a3 parameter:a4];
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

- (id)stringForParameterizedAttribute:(int64_t)a3 parameter:(id)a4
{
  v4 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:a3 parameter:a4];
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
    v4 = [(VOTElement *)self uiElement];
    [v4 updateCache:1102];

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

- (id)opaqueElementInDirection:(int64_t)a3 searchType:(int64_t)a4 range:(_NSRange *)a5 peeking:(BOOL)a6 startOpaqueElement:(id)a7
{
  v7 = a6;
  v11 = a7;
  if (a5)
  {
    location = a5->location;
    length = a5->length;
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFLL;
  }

  v14 = [NSValue valueWithRange:location, length];
  v28 = v7;
  v27 = a4;
  if (!v7)
  {
    v16 = [NSNumber numberWithLong:a3];
    v30[0] = v16;
    v17 = [NSNumber numberWithLong:a4];
    v30[1] = v17;
    v30[2] = v14;
    v30[3] = @"UIAccessibilityNotificationVoiceOverIdentifier";
    v30[4] = &__kCFBooleanTrue;
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [VOTSharedWorkspace navigationStyleHonorsGroups]);
    v30[5] = v18;
    v19 = [NSArray arrayWithObjects:v30 count:6];
    v22 = 95225;
    v23 = self;
LABEL_9:
    v21 = [(VOTElement *)v23 elementForParameterizedAttribute:v22 parameter:v19, a4];
    goto LABEL_10;
  }

  v15 = [NSNumber numberWithLong:a3];
  v16 = v15;
  if (!v11)
  {
    v32[0] = v15;
    v17 = [NSNumber numberWithLong:a4];
    v32[1] = v17;
    v32[2] = v14;
    v32[3] = @"UIAccessibilityNotificationVoiceOverIdentifier";
    v32[4] = &__kCFBooleanFalse;
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [VOTSharedWorkspace navigationStyleHonorsGroups]);
    v32[5] = v18;
    v19 = [NSArray arrayWithObjects:v32 count:6];
    v23 = self;
    v22 = 92517;
    goto LABEL_9;
  }

  v31[0] = v15;
  v17 = [NSNumber numberWithLong:a4];
  v31[1] = v17;
  v31[2] = v14;
  v31[3] = @"UIAccessibilityNotificationVoiceOverIdentifier";
  v31[4] = &__kCFBooleanFalse;
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [VOTSharedWorkspace navigationStyleHonorsGroups]);
  v31[5] = v18;
  v19 = [v11 uiElement];
  v31[6] = [v19 axElement];
  v20 = [NSArray arrayWithObjects:v31 count:7];
  v21 = [(VOTElement *)self elementForParameterizedAttribute:92517 parameter:v20];

LABEL_10:
  if ([v21 isRemoteElement])
  {
    v24 = [v21 opaqueElementInDirection:a3 searchType:v27 range:a5 peeking:v28 startOpaqueElement:0];

    v21 = v24;
    if (!v24)
    {
      v25 = [0 uiElement];
      v21 = -[VOTElement opaqueElementInDirection:searchType:range:peeking:startOpaqueElement:](self, "opaqueElementInDirection:searchType:range:peeking:startOpaqueElement:", a3, v27, a5, v28, [v25 axElement]);
    }
  }

  return v21;
}

- (unint64_t)indexOfAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = [(VOTElement *)self elementsForAttribute:5001];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)_elementForAttribute:(int64_t)a3 shouldUpdateCache:(BOOL)a4 shouldFetchAttributes:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    [(UIElementProtocol *)self->_uiElement updateCache:a3];
  }

  v8 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    goto LABEL_10;
  }

  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 axElement];
  }

  if (v10)
  {
    if (![v10 conformsToProtocol:&OBJC_PROTOCOL___UIElementProtocol])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v5)
        {
          [AXUIElement uiElementWithAXElement:v10];
        }

        else
        {
          [AXUIElement uiElementWithAXElement:v10 cache:0];
        }
        v13 = ;
        v12 = [VOTElement elementWithUIElement:v13];

        goto LABEL_19;
      }

      v11 = v10;
      goto LABEL_11;
    }

    v9 = v10;
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

- (id)elementsForAttribute:(int64_t)a3 withParameter:(id)a4
{
  v4 = [(UIElementProtocol *)self->_uiElement uiElementsWithAttribute:a3 parameter:a4];
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

  v5 = [(VOTElement *)self remoteParent];
  v6 = [v5 uiElement];
  v4 = [v6 objectWithAXAttribute:2012];

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
    v3 = [(VOTElement *)self containerTypes];
    v4 = &off_1001D9A58;
    if (([v3 containsObject:&off_1001D9A58] & 1) == 0 && (v4 = &off_1001D9A70, (objc_msgSend(v3, "containsObject:", &off_1001D9A70) & 1) == 0) && (v4 = &off_1001D9A88, (objc_msgSend(v3, "containsObject:", &off_1001D9A88) & 1) == 0) && (v4 = &off_1001D9AA0, (objc_msgSend(v3, "containsObject:", &off_1001D9AA0) & 1) == 0) && (v4 = &off_1001D9AB8, (objc_msgSend(v3, "containsObject:", &off_1001D9AB8) & 1) == 0) && (v4 = &off_1001D9AD0, (objc_msgSend(v3, "containsObject:", &off_1001D9AD0) & 1) == 0) && (v4 = &off_1001D9AE8, !objc_msgSend(v3, "containsObject:", &off_1001D9AE8)) || (v5 = -[UIElementProtocol objectWithAXAttribute:parameter:](self->_uiElement, "objectWithAXAttribute:parameter:", 92515, v4)) == 0 || (v6 = v5, v7 = CFGetTypeID(v5), v7 != AXUIElementGetTypeID()))
    {
      v8 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2012];
      if (v8)
      {
        v6 = v8;
LABEL_18:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v6 axElement];
        }

        v11 = CFGetTypeID(v6);
        if (v11 != AXUIElementGetTypeID())
        {
          v6 = 0;
        }

        goto LABEL_22;
      }

      if ([(VOTElement *)self remoteParentIsViewHost])
      {
        v9 = [(VOTElement *)self remoteParent];
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 uiElement];
      v6 = [v10 objectWithAXAttribute:2012];

      if (v6)
      {
        goto LABEL_18;
      }
    }

LABEL_22:

    return v6;
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
  v2 = [(VOTElement *)self touchContainer];
  if (v2)
  {
    do
    {
      v3 = [v2 label];

      if (v3)
      {
        break;
      }

      v4 = [v2 touchContainerParent];

      v2 = v4;
    }

    while (v4);
  }

  return v2;
}

- (id)nextContainer
{
  v3 = [(VOTElement *)self elementForAttribute:2014];
  if (!v3)
  {
    v4 = [(VOTElement *)self remoteParent];
    v3 = [v4 elementForAttribute:2014];
  }

  return v3;
}

- (id)previousContainer
{
  v3 = [(VOTElement *)self elementForAttribute:2015];
  if (!v3)
  {
    v4 = [(VOTElement *)self remoteParent];
    v3 = [v4 elementForAttribute:2015];
  }

  return v3;
}

- (VOTElement)previousGuideElement
{
  v3 = [(VOTElement *)self elementForAttribute:2154];
  if (!v3)
  {
    v4 = [(VOTElement *)self remoteParent];
    v3 = [v4 elementForAttribute:2154];
  }

  return v3;
}

- (VOTElement)nextGuideElement
{
  v3 = [(VOTElement *)self elementForAttribute:2155];
  if (!v3)
  {
    v4 = [(VOTElement *)self remoteParent];
    v3 = [v4 elementForAttribute:2155];
  }

  return v3;
}

- (NSString)guideElementHeaderText
{
  [(UIElementProtocol *)self->_uiElement updateCache:2169];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:2169];
}

- (id)ancestryForTraits:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedLong:a3];
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
  v7 = [VOTSharedWorkspace selectedLanguage];
  if ((kAXMathEquationTrait & v6) != 0 && [(VOTElement *)self canExpandMathEquation])
  {
    v8 = [VOTSharedWorkspace brailleInputActive];
    v9 = off_1001FDDD8;
    if (v8)
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
      v12 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (v12)
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
      v13 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (v13)
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
      v11 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (v11)
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
      v15 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (v15)
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
      v16 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (v16)
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

      v17 = [(VOTElement *)self expandedStatus];
      if (v17 == 2)
      {
        v19 = [VOTSharedWorkspace brailleInputActive];
        v9 = off_1001FDDD8;
        if (v19)
        {
          v10 = @"expand.instructions.bsi.command";
        }

        else
        {
          v10 = @"expand.instructions";
        }

        goto LABEL_32;
      }

      if (v17 != 1)
      {
LABEL_53:
        v4 = 0;
        goto LABEL_34;
      }

      v18 = [VOTSharedWorkspace brailleInputActive];
      v9 = off_1001FDDD8;
      if (v18)
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
  v4 = sub_1000516CC(v9, v10, v14, v7);
LABEL_34:

LABEL_4:

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uiElement = self->_uiElement;
    v6 = [v4 uiElement];
    v7 = [(UIElementProtocol *)uiElement isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dataDetectorURL:(CGPoint)a3
{
  v8 = a3;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &v8);
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
  v3 = [(VOTElement *)self cachedRemoteApplication];

  if (!v3)
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
    v4 = [v3 lastObject];
  }

  else
  {
    _AXAssert();
    v4 = [(VOTElement *)self opaqueElementInDirection:1 searchType:0 range:0];
  }

  return v4;
}

- (id)previousElement
{
  if (!-[VOTElement isAccessibilityOpaqueElementProvider](self, "isAccessibilityOpaqueElementProvider") || [VOTSharedWorkspace navigationStyleHonorsGroups] && -[VOTElement isAccessibleGroup](self, "isAccessibleGroup"))
  {
    v3 = [(VOTElement *)self elementsInDirection:2 withCount:1];
    v4 = [v3 lastObject];
  }

  else
  {
    _AXAssert();
    v4 = [(VOTElement *)self opaqueElementInDirection:2 searchType:0 range:0];
  }

  return v4;
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
  v2 = self;
  v3 = 0;
  v4 = AXUIAccessibilityAssistiveTechnologyKey;
  v5 = AXUIAccessibilityIncludeRemoteElements;
  v6 = AXUIAccessibilityShouldAlwaysScrollKey;
  do
  {
    v7 = v3;
    v3 = v2;

    v10[0] = v4;
    v10[1] = v5;
    v11[0] = @"UIAccessibilityNotificationVoiceOverIdentifier";
    v11[1] = &__kCFBooleanFalse;
    v10[2] = v6;
    v11[2] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
    v2 = [(VOTElement *)v3 elementForParameterizedAttribute:95230 parameter:v8];
  }

  while ([(VOTElement *)v2 isAccessibilityOpaqueElementProvider]&& ![(VOTElement *)v3 isEqual:v2]);
  if ([(VOTElement *)v2 isAccessibilityOpaqueElementProvider])
  {
    _AXAssert();
  }

  return v2;
}

- (unint64_t)groupedChildrenCount
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2220];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)groupedParent
{
  v3 = [(VOTElement *)self elementForAttribute:2184];
  if (!v3)
  {
    v3 = [(VOTElement *)self remoteParent];
    if (v3)
    {
      v5 = [(VOTElement *)self remoteParent];
      v6 = [(VOTElement *)self isEqual:v5];

      if (v6)
      {
        v3 = 0;
      }

      else
      {
        v7 = [(VOTElement *)self remoteParent];
        v3 = [v7 groupedParent];
      }
    }
  }

  return v3;
}

- (BOOL)elementIsDescendant:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    while (([v6 isEqual:self] & 1) == 0)
    {
      v7 = [v6 directParent];

      v6 = v7;
      if (!v7)
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

- (id)_lastContainedElementIncludingRemotes:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = 0;
  v6 = AXUIAccessibilityAssistiveTechnologyKey;
  v7 = AXUIAccessibilityIncludeRemoteElements;
  v8 = AXUIAccessibilityShouldAlwaysScrollKey;
  do
  {
    v9 = v5;
    v5 = v4;

    v14[0] = @"UIAccessibilityNotificationVoiceOverIdentifier";
    v13[0] = v6;
    v13[1] = v7;
    v10 = [NSNumber numberWithBool:v3];
    v13[2] = v8;
    v14[1] = v10;
    v14[2] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    v4 = [(VOTElement *)v5 elementForParameterizedAttribute:95231 parameter:v11];
  }

  while ([(VOTElement *)v4 isAccessibilityOpaqueElementProvider]&& ![(VOTElement *)v5 isEqual:v4]);
  if ([(VOTElement *)v4 isAccessibilityOpaqueElementProvider])
  {
    _AXAssert();
  }

  return v4;
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

- (id)elementsInDirection:(int64_t)a3 withCount:(unint64_t)a4
{
  v6 = [VOTSharedWorkspace navigationStyle] == 1;
  v41[0] = AXUIAccessibilityHonorsGroupsKey;
  v7 = [NSNumber numberWithBool:v6];
  v42[0] = v7;
  v41[1] = AXUIAccessibilityElementCountKey;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v42[1] = v8;
  v41[2] = AXUIAccessibilityNavigationDirection;
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [VOTSharedWorkspace navigationDirection]);
  v42[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];

  v29 = v10;
  if (a3 == 2)
  {
    v11 = self;
    v12 = [(UIElementProtocol *)self->_uiElement previousElementsWithParameters:v10, v10];
  }

  else
  {
    if (a3 != 1)
    {
      v13 = 0;
      v11 = self;
      goto LABEL_7;
    }

    v11 = self;
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
      v19 = [(VOTElement *)v11 window];
      v20 = [v19 isolatedWindow];
      if (!v20)
      {

LABEL_21:
        [v34 addObject:v18];
        goto LABEL_22;
      }

      v21 = v20;
      v22 = [(VOTElement *)v11 window];
      v23 = [v22 isolatedWindow];
      if (v23)
      {
        v24 = [(VOTElement *)v11 window];
        v25 = [v24 windowContextId];
        v26 = [v18 window];
        if (v25 == [v26 windowContextId])
        {
          v27 = 1;
        }

        else
        {
          v27 = [v17 BOOLWithAXAttribute:2238];
        }

        v14 = v31;
        v11 = self;
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)roleDescriptionWithInteractOption:(int64_t)a3 language:(id)a4
{
  v6 = a4;
  v7 = [(VOTElement *)self roleDescription];
  if (![v7 length] && objc_msgSend(VOTSharedWorkspace, "navigationStyleHonorsGroups") && -[VOTElement isAccessibleGroup](self, "isAccessibleGroup"))
  {
    v8 = sub_1000516CC(off_1001FDDD0, @"group.role", 0, v6);

    v7 = v8;
  }

  if ([v7 length])
  {
    if (a3 == 1)
    {
      v9 = @"InteractIn";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_11;
      }

      v9 = @"InteractOut";
    }

    v10 = sub_1000511CC(off_1001FDDD0, v9, 0);
    v11 = [NSString stringWithFormat:v10, v7];

    v7 = v11;
  }

LABEL_11:

  return v7;
}

- (_NSRange)textInputElementRange
{
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 rangeWithAXAttribute:2124];
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
  v3 = [(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait];
  if (v3)
  {
    LOBYTE(v3) = ![(VOTElement *)self shouldIgnoreTextEditingTrait];
  }

  return v3;
}

- (BOOL)doesHaveTraitsForGesturedTextInput
{
  v2 = [(VOTElement *)self elementForGesturedTextInput];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)traits
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2004];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (BOOL)shouldIgnoreTextEditingTrait
{
  if (![(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
  {
    LOBYTE(v3) = 0;
    goto LABEL_5;
  }

  v3 = ![(VOTElement *)self isKeyboardActiveOrAttached];
  v4 = [(VOTElement *)self remoteParent];

  if (!v4)
  {
LABEL_5:
    v8 = 0;
    return v3 | v8;
  }

  v5 = [(VOTElement *)self application];
  v6 = [v5 firstResponderElementWithoutCache];
  v7 = [v6 isEqual:self];

  v8 = v7 ^ 1;
  return v3 | v8;
}

- (void)scrollToElementForDirectional:(int64_t)a3 withCompletion:(id)a4
{
  v5 = [a4 copy];
  v8 = self;
  v6 = v5;
  v7 = v8;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)zoomInAtLocation:(CGPoint)a3
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithPoint:a3.x, a3.y];
  [(UIElementProtocol *)uiElement performAXAction:2001 withValue:v4];
}

- (BOOL)isMapPOIItem
{
  v3 = [(VOTElement *)self mapFeatureType];
  if (v3)
  {
    LOBYTE(v3) = [(VOTElement *)self mapFeatureType]!= 1 && [(VOTElement *)self mapFeatureType]!= 2;
  }

  return v3;
}

- (int64_t)mapFeatureType
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2048];
  v3 = [v2 intValue];

  return v3;
}

- (id)mapDetailedInformationAtPoint:(CGPoint)a3
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithPoint:a3.x, a3.y];

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:95219 parameter:v4];
}

- (BOOL)lastHitTestNearBorder
{
  [(UIElementProtocol *)self->_uiElement updateCache:2049];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2049];
}

- (float)distanceToOtherRoad:(CGPoint)a3 withDirection:(float)a4 otherRoad:(id)a5
{
  v17 = a3;
  v7 = a5;
  v8 = AXValueCreate(kAXValueTypeCGPoint, &v17);
  uiElement = self->_uiElement;
  *&v10 = a4;
  v11 = [NSNumber numberWithFloat:v10, *&v17.x, *&v17.y, v8];
  v18[1] = v11;
  v12 = [v7 uiElement];

  v18[2] = [v12 axElement];
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

- (float)distanceToEndOfRoad:(CGPoint)a3 withDirection:(float)a4
{
  valuePtr = a3;
  v6 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  uiElement = self->_uiElement;
  v15[0] = v6;
  *&v8 = a4;
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

- (id)upcomingRoadsAtPoint:(CGPoint)a3 withDirection:(float)a4
{
  valuePtr = a3;
  v6 = AXValueCreate(kAXValueTypeCGPoint, &valuePtr);
  uiElement = self->_uiElement;
  v25[0] = v6;
  *&v8 = a4;
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

- (void)mapsExplorationRecordTouchpoint:(CGPoint)a3
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithCGPoint:a3.x, a3.y];
  [(UIElementProtocol *)uiElement performAXAction:4023 withValue:v4];
}

- (void)mapsExplorationBeginFromCurrentElement:(BOOL)a3
{
  if (a3)
  {
    [(UIElementProtocol *)self->_uiElement performAXAction:4020];
  }
}

- (void)mapsExplorationContinueWithVertexIndex:(unint64_t)a3
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(UIElementProtocol *)uiElement performAXAction:4021 withValue:v4];
}

- (CGPoint)mapsExplorationCurrentLocation
{
  [(UIElementProtocol *)self->_uiElement pointWithAXAttribute:2502];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)mapsExplorationChangeVerbosity:(BOOL)a3
{
  uiElement = self->_uiElement;
  if (a3)
  {
    v4 = 2504;
  }

  else
  {
    v4 = 2505;
  }

  return [(UIElementProtocol *)uiElement stringWithAXAttribute:v4];
}

- (BOOL)roadContainsTrackingPoint:(CGPoint)a3
{
  v8 = a3;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &v8);
  v5 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:95218 parameter:v4];
  v6 = [v5 BOOLValue];

  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

- (void)zoomOutAtLocation:(CGPoint)a3
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithPoint:a3.x, a3.y];
  [(UIElementProtocol *)uiElement performAXAction:2002 withValue:v4];
}

- (id)textOperations
{
  [(UIElementProtocol *)self->_uiElement updateCache:2010];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement objectWithAXAttribute:2010];
}

- (void)performTextOperation:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kAXTextOperationActionPaste])
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
    [(UIElementProtocol *)self->_uiElement performAXAction:2012 withValue:v4];
  }
}

- (CGPoint)elementFrameLocation:(int)a3
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

  v24 = [VOTSharedWorkspace deviceOrientation];
  if (v24 == 2)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
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

      if (a3 == 2)
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

    if (a3 == 3)
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

    if (a3 != 4)
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

  if (v24 == 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        goto LABEL_29;
      }

      if (a3 != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
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

  if (v24 != 3)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_19;
        }

        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
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

  if (a3 == 3)
  {
    goto LABEL_32;
  }

  if (a3 == 4)
  {
    goto LABEL_33;
  }

LABEL_19:
  if (a3 == 5)
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

- (void)findSearchResult:(BOOL)a3 withSearchText:(id)a4
{
  v5 = &kCFBooleanFalse;
  if (a3)
  {
    v5 = &kCFBooleanTrue;
  }

  v6 = [NSArray arrayWithObjects:*v5, a4, 0];
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

  v4 = [(VOTElement *)self remoteParent];
  v5 = v4;
  if (v4)
  {
    v3 = [v4 supportsActivate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)verifyElementExists:(CGPoint *)a3
{
  [(VOTElement *)self centerPoint];
  v6 = v5;
  v8 = v7;
  v9 = [(VOTElement *)self windowContextId];
  if (v9)
  {
    v10 = +[VOTElement systemWideElement];
    [v10 convertPoint:v9 fromContextId:{v6, v8}];
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

  if (v9)
  {
    v15 = +[VOTElement systemWideElement];
    [v15 convertPoint:v9 toContextId:{v14, v13}];
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

  v22 = [objc_allocWithZone(VOTElement) initWithPosition:{v20, v21}];
  if (_AXSZoomTouchEnabled())
  {
    v23 = [(VOTElement *)v22 application];
    v24 = v23;
    if (v22)
    {
      if ([v23 isAccessibilitySystemUIServer])
      {
        v25 = [(VOTElement *)self application];
        v26 = [v25 isEqual:v24];

        if ((v26 & 1) == 0)
        {
          v27 = [VOTElement alloc];
          v28 = [(VOTElement *)self application];
          v29 = [(VOTElement *)v27 initWithPosition:v28 application:[(VOTElement *)self windowContextId] contextId:v20, v21];

          v22 = v29;
        }
      }
    }

    else
    {
      v22 = self;
    }
  }

  if (_AXSAssistiveTouchEnabled())
  {
    v30 = [(VOTElement *)v22 application];
    v31 = [v30 isAssistiveTouch];

    if (v31)
    {
      if (!a3)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  if (![(VOTElement *)v22 isEqual:self])
  {
    [(VOTElement *)self elementFrameLocation:2];
    v14 = v33;
    v13 = v34;
    v35 = v34;
    v36 = v33;
    if (v9)
    {
      v37 = +[VOTElement systemWideElement];
      [v37 convertPoint:v9 fromContextId:{v14, v13}];
      v36 = v38;
      v35 = v39;
    }

    v40 = [objc_allocWithZone(VOTElement) initWithPosition:{v36, v35}];

    if ([(VOTElement *)v40 isEqual:self])
    {
      v32 = 1;
      v22 = v40;
      if (!a3)
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
    if (v9)
    {
      v45 = +[VOTElement systemWideElement];
      [v45 convertPoint:v9 fromContextId:{v14, v13}];
      v44 = v46;
      v43 = v47;
    }

    v22 = [objc_allocWithZone(VOTElement) initWithPosition:{v44, v43}];

    if (![(VOTElement *)v22 isEqual:self])
    {
      [(VOTElement *)self visiblePoint];
      v14 = v48;
      v13 = v49;
      v50 = v49;
      v51 = v48;
      if (v9)
      {
        v52 = +[VOTElement systemWideElement];
        [v52 convertPoint:v9 fromContextId:{v14, v13}];
        v51 = v53;
        v50 = v54;
      }

      v55 = [objc_allocWithZone(VOTElement) initWithPosition:{v51, v50}];

      v32 = [(VOTElement *)v55 isEqual:self];
      v22 = v55;
      if (!a3)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  v32 = 1;
  if (!a3)
  {
    goto LABEL_40;
  }

LABEL_37:
  if (v32)
  {
LABEL_38:
    a3->x = v14;
    a3->y = v13;
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

- (BOOL)performTapAtPoint:(CGPoint)a3 withForce:(double)a4 playSound:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  if (a5)
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
  v17 = [(VOTElement *)self windowContextIdForPress];
  LODWORD(v18) = 1028443341;
  v19 = [v16 performSimpleTapAtPoint:v17 withForce:self withContextId:v13 withDelay:v15 forElement:{a4, v18}];

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

  v4 = [(VOTElement *)self remoteParent];
  v5 = v4;
  if (v4 && [v4 supportsActivate])
  {
    v6 = [v5 uiElement];
    v3 = [(VOTElement *)self _attemptPerformActivateActionWithElement:v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)performSimpleTap:(BOOL)a3
{
  v3 = a3;
  v5 = VOTLogSimpleTap();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100128584();
  }

  if (AXDeviceIsPad())
  {
    v6 = [(VOTElement *)self application];
    v7 = [v6 isSpringBoard];

    if ((v7 & 1) == 0)
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
    v9 = [(VOTElement *)self application];
    v10 = [v9 performScribbleAction];

    return v10;
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
    v15 = [VOTSharedWorkspace selectedLanguage];
    v16 = sub_1000095FC(v14, 0, v15);

    v10 = 1;
    [(VOTElement *)self setActivatedDirectTouchThatRequiredActivation:1];
    return v10;
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
    v30 = [(VOTElement *)self indexPathAsRange];
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
    v38 = [(VOTElement *)self indexPathAsRange];
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

    if (v30 != v38 || v32 != v40)
    {
      v42 = VOTLogSimpleTap();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        sub_1001285F4();
      }

      v43 = [(VOTElement *)self parentTableOrCollectionView];
      v44 = VOTLogSimpleTap();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_100128628();
      }

      if (v43)
      {
        v45 = [v43 elementAtRow:v30 andColumn:v32];
        v46 = VOTLogSimpleTap();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          sub_100128698();
        }

        if (![v45 isEqual:self])
        {
          v10 = [v45 performSimpleTap:v3];

          return v10;
        }
      }
    }

    v47 = [(VOTElement *)self windowContextIdForPress];
    v79.x = v35;
    v79.y = v37;
    if (v47)
    {
      v48 = +[VOTElement systemWideElement];
      [v48 convertPoint:v47 fromContextId:{v35, v37}];
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

        v10 = 1;
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

      v10 = 0;
      goto LABEL_87;
    }

    [(VOTElement *)self activationDelay];
    v59 = v58;
    if ([(VOTElement *)self tapHostContextId])
    {
      v79.x = v35;
      v79.y = v37;
      v47 = [(VOTElement *)self windowContextIdImmediateRemoteParent:v47];
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
    v10 = [v67 performSimpleTapAtPoint:v47 withForce:self withContextId:v79 withDelay:0.0 forElement:v68];

    v69 = VOTLogSimpleTap();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      v77 = NSStringFromCGPoint(v79);
      *buf = 138412802;
      *&buf[4] = v77;
      *&buf[12] = 1024;
      *&buf[14] = v47;
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
      return v10;
    }

    v56 = +[VOTOutputManager outputManager];
    v70 = +[VOSOutputEvent DidActivateElement];
    [v56 sendEvent:v70];

LABEL_89:
    return v10;
  }

  [(VOTElement *)self updateFrame];
  v17 = +[AXSubsystemVoiceOver sharedInstance];
  v18 = [v17 ignoreLogging];

  if ((v18 & 1) == 0)
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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setTemporaryVoiceOverStatus:(int64_t)a3
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithLong:a3];
  [(UIElementProtocol *)uiElement setAXAttribute:5067 withNumber:v4];
}

- (BOOL)_attemptPerformActivateActionWithElement:(id)a3
{
  v4 = a3;
  v5 = kAXWebContentTrait;
  v6 = [(VOTElement *)self doesHaveAllTraits:kAXLinkTrait | kAXWebContentTrait];
  if (![(VOTElement *)self doesHaveTraits:v5])
  {
    v8 = [v4 performAXAction:2010];
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

  v9 = [(VOTElement *)self uiElement];
  AXUIElementSetMessagingTimeout([v9 axElement], 0.25);

  if ([v4 performAXAction:2010])
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

  if (v6)
  {
    [NSThread sleepForTimeInterval:0.25];
    v13 = [(VOTElement *)self application];
    v14 = [(VOTElement *)self isValidForApplication:v13];

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VOTElement *)v2 cachedRemoteParent];
  if (v3)
  {
  }

  else if (![(VOTElement *)v2 checkedRemoteParent])
  {
    v4 = [(VOTElement *)v2 _elementForAttribute:2092 shouldUpdateCache:0 shouldFetchAttributes:0];
    [(VOTElement *)v2 setCachedRemoteParent:v4];

    v5 = [(VOTElement *)v2 cachedRemoteParent];

    if (!v5)
    {
      v6 = [(VOTElement *)v2 _elementForAttribute:2092 shouldUpdateCache:1 shouldFetchAttributes:0];
      [(VOTElement *)v2 setCachedRemoteParent:v6];
    }

    [(VOTElement *)v2 setCheckedRemoteParent:1];
  }

  objc_sync_exit(v2);

  return [(VOTElement *)v2 cachedRemoteParent];
}

- (id)immediateRemoteParent
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VOTElement *)v2 cachedImmediateRemoteParent];
  if (v3)
  {
  }

  else if (![(VOTElement *)v2 checkedImmediateRemoteParent])
  {
    v4 = [(VOTElement *)v2 _elementForAttribute:2310 shouldUpdateCache:0 shouldFetchAttributes:0];
    [(VOTElement *)v2 setCachedImmediateRemoteParent:v4];

    [(VOTElement *)v2 setCheckedImmediateRemoteParent:1];
  }

  objc_sync_exit(v2);

  return [(VOTElement *)v2 cachedImmediateRemoteParent];
}

- (void)_iterateSelfAndRemoteParentsUsingBlock:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = self;
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      v4[2](v4, v6, &v8);
      if (v8)
      {
        break;
      }

      v7 = [(VOTElement *)v6 immediateRemoteParent];
      if ([(VOTElement *)v7 isEqual:v6])
      {

        break;
      }

      if (v7)
      {
        v6 = v7;
        if ((v8 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v7 = v6;
LABEL_10:
  }
}

- (BOOL)_scrollForAction:(int)a3
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
  v6 = a3;
  [(VOTElement *)self _iterateSelfAndRemoteParentsUsingBlock:v5];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)scrollToPoint:(CGPoint)a3
{
  uiElement = self->_uiElement;
  v4 = [NSValue valueWithPoint:a3.x, a3.y];
  [(UIElementProtocol *)uiElement performAXAction:2014 withValue:v4];
}

- (void)scrollRectToVisible:(CGRect)a3 withCompletion:(id)a4
{
  v5 = [a4 copy];
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
  v3 = [VOTSharedWorkspace navigationStyle];
  v4 = AXUIAccessibilityHonorsGroupsKey;
  v19[0] = AXUIAccessibilityHonorsGroupsKey;
  v5 = [NSNumber numberWithBool:v3 == 1];
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
    v10 = [NSNumber numberWithBool:v3 == 1];
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
  v3 = [VOTSharedWorkspace navigationStyle];
  v4 = AXUIAccessibilityHonorsGroupsKey;
  v19[0] = AXUIAccessibilityHonorsGroupsKey;
  v5 = [NSNumber numberWithBool:v3 == 1];
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
    v10 = [NSNumber numberWithBool:v3 == 1];
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
  v3 = [(VOTElement *)self application];
  v4 = [(VOTElement *)self isolatedWindow];
  if (v4)
  {
    v5 = v4;

    v6 = [v5 application];
    v7 = [v6 isSpringBoard];

    if (v7)
    {
      v3 = v5;
      goto LABEL_13;
    }

    v3 = [v5 application];
    v9 = v5;
  }

  else
  {
    v5 = [(VOTElement *)self remoteParent];
    if (v5 && [(VOTElement *)self remoteParentIsViewHost])
    {
      v8 = [v5 isolatedWindow];
      if (v8)
      {
        v9 = v8;
        v10 = v9;
      }

      else
      {
        v10 = [v5 application];
        v9 = 0;
      }

      v3 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  v5 = v9;
LABEL_13:

  return v3;
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

- (BOOL)elementOnSameLine:(id)a3
{
  v4 = a3;
  [(VOTElement *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [VOTSharedWorkspace deviceOrientation];
  v22 = [(VOTElement *)self doesHaveTraits:kAXToggleTrait | kAXRadioButtonTrait];
  if (v22)
  {
    LOBYTE(v22) = [v4 doesHaveTraits:kAXStaticTextTrait];
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001CAC4;
  v32[3] = &unk_1001C7AF0;
  v33 = v22;
  v23 = objc_retainBlock(v32);
  v24 = 0;
  if (v21 > 2)
  {
    if (v21 == 3)
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
      if (v21 != 4)
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

  if (v21 < 2)
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

  if (v21 == 2)
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

- (id)cellWithRowIndexPath:(_NSRange)a3 parentView:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [v7 uiElement];
  v9 = [v8 axElement];

  if (v9)
  {
    *&valuePtr = location;
    *(&valuePtr + 1) = length;
    v10 = AXValueCreate(kAXValueTypeCFRange, &valuePtr);
    v21[0] = v10;
    v21[1] = v9;
    v11 = [NSArray arrayWithObjects:v21 count:2];
    v12 = [(VOTElement *)self elementForParameterizedAttribute:92600 parameter:v11];

    CFRelease(v10);
  }

  else
  {
    v13 = +[AXSubsystemVoiceOver sharedInstance];
    v14 = [v13 ignoreLogging];

    if ((v14 & 1) == 0)
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

  v3 = [VOTSharedWorkspace elementManager];
  v4 = [v3 determineFullImageDescriptionsEnabled:self];

  return v4 ^ 1;
}

- (BOOL)shouldAddAlternateActionForLinkElement
{
  v3 = [(VOTElement *)self application];
  if ([(VOTElement *)self doesHaveAllTraits:kAXLinkTrait | kAXWebContentTrait])
  {
    v4 = [v3 uiElement];
    v5 = [v4 BOOLWithAXAttribute:2148];
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
    v8 = [(VOTElement *)self urlLabel];

    if (v8)
    {
      if (!v7)
      {
        v7 = objc_opt_new();
      }

      v9 = sub_1000511CC(off_1001FDDD0, @"URL", 0);
      v10 = [(VOTElement *)self urlLabel];
      v11 = [AXCustomContent customContentWithLabel:v9 value:v10];
      v12 = [v7 arrayByAddingObject:v11];

      v7 = v12;
    }
  }

  return v7;
}

- (id)cachedCustomRotorActions
{
  v3 = +[NSMutableArray array];
  v4 = [(VOTElement *)self remoteParent];
  if (v4)
  {
    v5 = [(VOTElement *)self remoteParent];
    if (([v5 isEqual:self] & 1) != 0 || !-[VOTElement remoteParentIsViewHost](self, "remoteParentIsViewHost"))
    {
    }

    else
    {
      v6 = [(VOTElement *)self shouldIncludeRemoteParentCustomActions];

      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = [(VOTElement *)self remoteParent];
      v4 = [v7 cachedCustomRotorActions];

      if (v4)
      {
        [v3 addObjectsFromArray:v4];
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
    v9 = [(VOTElement *)self application];
    v10 = [v9 uiElement];
    [v10 updateCache:2148];

    if ([(VOTElement *)self shouldAddAlternateActionForLinkElement])
    {
      v11 = [VOTSharedWorkspace selectedLanguage];
      v12 = sub_1000516CC(off_1001FDDD0, @"action.open.other.side", @"action.open.other.side", v11);
      v32[0] = @"CustomActionName";
      v32[1] = @"CustomActionIdentifier";
      v33[0] = v12;
      v33[1] = @"alternateActionForURLIdentifier";
      v13 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
      v14 = [NSMutableDictionary dictionaryWithDictionary:v13];

      [v3 addObject:v14];
    }
  }

  v15 = [VOTSharedWorkspace visionEngine];
  v16 = [v15 resultsForElement:self];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v17 = [(VOTElement *)self imageAssetLocalIdentifier];
  v18 = v17 != 0;

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
  v21 = [(VOTElement *)self cachedDragCustomActions];
  v22 = [v20 arrayByAddingObjectsFromArray:v21];

  v23 = [(VOTElement *)self cachedDropCustomActions];
  v24 = [v22 arrayByAddingObjectsFromArray:v23];

  v25 = [v24 sortedArrayUsingComparator:&stru_1001C7B98];

  _Block_object_dispose(&v28, 8);

  return v25;
}

+ (id)organizedActionsByCategory:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
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
        v10 = [v9 categoryName];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10001D754;
        v17[3] = &unk_1001C7BC0;
        v11 = v10;
        v18 = v11;
        v12 = [v4 ax_filteredArrayUsingBlock:v17];
        v13 = [v12 firstObject];

        if (!v13)
        {
          v13 = objc_opt_new();
          [v13 setCategoryName:v11];
          [v4 addObject:v13];
        }

        v14 = [v13 actions];
        [v14 addObject:v9];
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
  v3 = [(VOTElement *)self remoteParent];
  if (v3)
  {
    v4 = v3;
    v5 = [(VOTElement *)self remoteParentIsViewHost];

    if (v5)
    {
      v6 = [(VOTElement *)self remoteParent];
      v7 = [v6 uiElement];
      [v7 updateCache:2036];
    }
  }

  [(UIElementProtocol *)self->_uiElement updateCache:2036];
  [(UIElementProtocol *)self->_uiElement updateCache:2175];
  [(UIElementProtocol *)self->_uiElement updateCache:2176];

  return [(VOTElement *)self cachedCustomRotorActions];
}

- (int64_t)overriddenInterpretationForCommand:(int64_t)a3
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:95235 parameter:[NSNumber numberWithInteger:a3]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)performCustomActionWithIdentifier:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"alternateActionForURLIdentifier"])
  {
    v8 = [(VOTElement *)self application];
    v9 = [v8 uiElement];
    v10 = [(VOTElement *)self url];
    v11 = [v10 absoluteString];
    v12 = [v9 performAXAction:2048 withValue:v11];

LABEL_9:
    goto LABEL_10;
  }

  if (!v7)
  {
    v7 = objc_opt_new();
    [v7 setObject:v6 forKeyedSubscript:@"CustomActionIdentifier"];
  }

  if (([(UIElementProtocol *)self->_uiElement performAXAction:2021 withValue:v7]& 1) == 0)
  {
    v13 = [(VOTElement *)self remoteParent];

    if (!v13)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v8 = [(VOTElement *)self remoteParent];
    v12 = [v8 performCustomActionWithIdentifier:v6 data:v7];
    goto LABEL_9;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

- (BOOL)attemptToShowContextMenuWithTargetPointValue:(id)a3
{
  v4 = a3;
  if (([(UIElementProtocol *)self->_uiElement performAXAction:2051 withValue:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(VOTElement *)self remoteParent];

    if (v6)
    {
      v7 = [(VOTElement *)self remoteParent];
      v5 = [v7 attemptToShowContextMenuWithTargetPointValue:v4];
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
  v4 = [(VOTElement *)self remoteParent];
  if (v4)
  {
    v5 = v4;
    v6 = [(VOTElement *)self remoteParentIsViewHost];

    if (v6)
    {
      v7 = [(VOTElement *)self remoteParent];
      v8 = [v7 uiElement];
      v9 = [v8 arrayWithAXAttribute:2128];
      [v3 axSafelyAddObjectsFromArray:v9];
    }
  }

  v10 = [(VOTElement *)self uiElement];
  v11 = [v10 arrayWithAXAttribute:2128];
  [v3 axSafelyAddObjectsFromArray:v11];

  return v3;
}

- (id)customPublicRotorNames
{
  v3 = +[NSMutableArray array];
  v4 = [(VOTElement *)self remoteParent];

  if (v4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [(VOTElement *)self remoteParent];
    v6 = [v5 customPublicRotors];

    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [(VOTElement *)self customPublicRotorName:*(*(&v23 + 1) + 8 * i)];
          [v3 axSafelyAddObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(VOTElement *)self customPublicRotors];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [(VOTElement *)self customPublicRotorName:*(*(&v19 + 1) + 8 * j)];
        [v3 axSafelyAddObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v3;
}

- (id)customPublicRotorForSystemType:(id)a3
{
  v4 = a3;
  v5 = [(VOTElement *)self uiElement];
  v6 = [v5 objectWithAXAttribute:95232 parameter:v4];

  if (!v6)
  {
    v6 = [(VOTElement *)self remoteParent];

    if (v6)
    {
      v7 = [(VOTElement *)self remoteParent];
      v8 = [v7 uiElement];
      v6 = [v8 objectWithAXAttribute:95232 parameter:v4];
    }
  }

  return v6;
}

- (BOOL)customPublicRotorIsVisibleInTouchRotor:(id)a3
{
  v4 = a3;
  v5 = [(VOTElement *)self uiElement];
  v6 = [v5 objectWithAXAttribute:95228 parameter:v4];

  if (!v6)
  {
    v6 = [(VOTElement *)self remoteParent];

    if (v6)
    {
      v7 = [(VOTElement *)self remoteParent];
      v8 = [v7 uiElement];
      v6 = [v8 objectWithAXAttribute:95228 parameter:v4];
    }
  }

  v9 = [v6 objectForKeyedSubscript:@"visibleInTouchRotor"];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"visibleInTouchRotor"];
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (int64_t)customPublicRotorLinkCountForRotor:(id)a3
{
  v4 = a3;
  v5 = [(VOTElement *)self uiElement];
  v6 = [v5 objectWithAXAttribute:95228 parameter:v4];

  if (!v6)
  {
    v6 = [(VOTElement *)self remoteParent];

    if (v6)
    {
      v7 = [(VOTElement *)self remoteParent];
      v8 = [v7 uiElement];
      v6 = [v8 objectWithAXAttribute:95228 parameter:v4];
    }
  }

  objc_opt_class();
  v9 = [v6 objectForKeyedSubscript:AXUIAccessibilityCustomRotorLinkCount];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 integerValue];
  return v11;
}

- (id)customPublicRotorName:(id)a3
{
  v4 = a3;
  v5 = [(VOTElement *)self uiElement];
  v6 = [v5 objectWithAXAttribute:95228 parameter:v4];

  if (!v6)
  {
    v6 = [(VOTElement *)self remoteParent];

    if (v6)
    {
      v7 = [(VOTElement *)self remoteParent];
      v8 = [v7 uiElement];
      v6 = [v8 objectWithAXAttribute:95228 parameter:v4];
    }
  }

  v9 = [v6 objectForKeyedSubscript:@"name"];

  return v9;
}

+ (id)customPublicRotorDictionaryForRotorId:(id)a3 startRange:(_NSRange)a4 direction:(int64_t)a5
{
  location = a4.location;
  v15 = a4;
  v7 = a3;
  v8 = [NSMutableDictionary dictionary:v15.location];
  [v8 setObject:v7 forKeyedSubscript:@"uuid"];

  v9 = +[NSMutableDictionary dictionary];
  [v8 setObject:v9 forKeyedSubscript:@"currentItem"];

  if (location != 0x7FFFFFFF)
  {
    v10 = AXValueCreate(kAXValueTypeCFRange, &v15);
    v11 = [v8 objectForKeyedSubscript:@"currentItem"];
    [v11 setObject:v10 forKeyedSubscript:@"targetRange"];

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v12 = [NSNumber numberWithInteger:a5 == 1];
  [v8 setObject:v12 forKeyedSubscript:@"direction"];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [VOTSharedWorkspace navigationStyle] == 1);
  [v8 setObject:v13 forKeyedSubscript:AXUIAccessibilityHonorsGroupsKey];

  return v8;
}

- (id)customPublicRotorResultWithItem:(id)a3 startElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 uiElement];
  v9 = [v8 axElement];
  v10 = [v6 objectForKeyedSubscript:@"currentItem"];
  [v10 setObject:v9 forKeyedSubscript:@"targetElement"];

  v11 = [(VOTElement *)self uiElement];
  v12 = [v11 objectWithAXAttribute:95227 parameter:v6];

  if (!v12)
  {
    v13 = [(VOTElement *)self remoteParent];

    if (v13)
    {
      v14 = [(VOTElement *)self remoteParent];

      v15 = [v14 uiElement];
      v16 = [v15 axElement];
      v17 = [v6 objectForKeyedSubscript:@"currentItem"];
      [v17 setObject:v16 forKeyedSubscript:@"targetElement"];

      v18 = [(VOTElement *)self remoteParent];
      v19 = [v18 uiElement];
      v12 = [v19 objectWithAXAttribute:95227 parameter:v6];

      v7 = v14;
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

- (void)setFirstResponder:(id)a3
{
  uiElement = self->_uiElement;
  v4 = [a3 uiElement];
  -[UIElementProtocol setAXAttribute:withObject:](uiElement, "setAXAttribute:withObject:", 3002, [v4 axElement]);
}

- (void)setSelectedTextRange:(_NSRange)a3 refreshBraille:(BOOL)a4 isVoiceOverSelectionMovement:(BOOL)a5
{
  v5 = a4;
  v9 = a3;
  if (!a5)
  {
    [(UIElementProtocol *)self->_uiElement setAXAttribute:2005 withRange:a3.location, a3.length, v9.location, v9.length];
    if (!v5)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = AXValueCreate(kAXValueTypeCFRange, &v9);
  [v7 addObject:{v8, v9.location, v9.length}];
  CFRelease(v8);
  [v7 addObject:&off_1001D9B18];
  [(UIElementProtocol *)self->_uiElement setAXAttribute:2005 withArray:v7];

  if (v5)
  {
LABEL_5:
    [VOTSharedWorkspace refreshBraille:1 rotorSelection:0];
  }
}

- (void)_updateValueChangeOriginatorForApplication:(int64_t)a3
{
  v5 = [(VOTElement *)self pid];
  v6 = [(VOTElement *)self application];
  v7 = [v6 pid];

  if (v5 != v7)
  {
    v10 = [(VOTElement *)self application];
    v8 = [v10 uiElement];
    v9 = [(VOTElement *)self _sourceNameForChangeOriginator:a3];
    [v8 setAXAttribute:3007 withString:v9];
  }
}

- (BOOL)includeRoleOnlyForGroupNavigation
{
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2221];

  return v3;
}

- (BOOL)includeRoleDescription
{
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2222];

  return v3;
}

- (void)insertText:(id)a3 source:(int64_t)a4
{
  v6 = a3;
  [(VOTElement *)self _updateValueChangeOriginatorForApplication:a4];
  v7 = [(VOTElement *)self _sourceNameForChangeOriginator:a4];
  v8 = v7;
  uiElement = self->_uiElement;
  if (v7)
  {
    v11[0] = kAXInsertTextActionKeyText;
    v11[1] = kAXInsertTextActionKeySource;
    v12[0] = v6;
    v12[1] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(UIElementProtocol *)uiElement performAXAction:2056 withValue:v10];
  }

  else
  {
    [(UIElementProtocol *)uiElement performAXAction:2056 withValue:v6];
  }
}

- (VOTElement)elementForGesturedTextInput
{
  elementForGesturedTextInput = self->_elementForGesturedTextInput;
  if (!elementForGesturedTextInput)
  {
    [(UIElementProtocol *)self->_uiElement updateCache:2600];
    v4 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2600];
    v5 = [AXUIElement uiElementWithAXElement:v4];

    if (!v5)
    {
      v5 = [(VOTElement *)self remoteParent];

      if (v5)
      {
        v6 = [(VOTElement *)self remoteParent];
        v7 = [v6 uiElement];
        v8 = [v7 objectWithAXAttribute:2600];
        v5 = [AXUIElement uiElementWithAXElement:v8];
      }
    }

    v9 = [[VOTElement alloc] initWithUIElement:v5];
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
    v4 = [v3 uiElement];
    v5 = [v4 performAXAction:2054];

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
    v7 = [v11[5] uiElement];
    v8 = [v7 performAXAction:2054];

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

- (void)setVoiceOverFocused:(BOOL)a3
{
  v3 = a3;
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
      if (!v3)
      {
        goto LABEL_8;
      }

LABEL_7:
      v9 = [(VOTElement *)self chartElement];
      v10 = +[VOTAudiographManager sharedManager];
      [v10 setCurrentChartElement:v9];

      goto LABEL_8;
    }

    v8 = [(VOTElement *)self chartElement];
    if (v8)
    {

      if (v3)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    [(VOTElement *)self _updateFocusForFKA:v3];
  }

  if (v3)
  {
    [(VOTElement *)self setPreviousSpokenValueParts:0];
  }
}

- (void)_updateFocusForFKA:(BOOL)a3
{
  if (a3)
  {
    v4 = +[AXElement systemWideElement];
    v5 = [v4 systemApplication];
    v6 = [(VOTElement *)self application];
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 pid]);
    v8 = [(VOTElement *)self fbSceneIdentifier];
    v9 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v7, v8];
    [v5 performAction:5303 withValue:v9];

    v10 = [(VOTElement *)self remoteParent];

    if (v10)
    {
      v11 = [(VOTElement *)self remoteParent];
      [v11 setNativeFocus];
    }

    v12 = [(VOTElement *)self remoteApplication];

    if (v12)
    {
      v13 = [(VOTElement *)self remoteParent];
      v14 = [v13 uiElement];
      [v14 performAXAction:5308 withValue:&__kCFBooleanTrue];
    }

    [(VOTElement *)self setNativeFocus];
  }

  else
  {
    v15 = [(VOTElement *)self remoteApplication];

    if (v15)
    {
      v17 = [(VOTElement *)self remoteParent];
      v16 = [v17 uiElement];
      [v16 performAXAction:5308 withValue:&__kCFBooleanFalse];
    }
  }
}

- (int64_t)lineStartPosition
{
  [(UIElementProtocol *)self->_uiElement updateCache:4001];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:4001];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)lineEndPosition
{
  [(UIElementProtocol *)self->_uiElement updateCache:4002];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:4002];
  v4 = [v3 integerValue];

  return v4;
}

- (_NSRange)characterRangeForPosition:(unint64_t)a3
{
  v8 = xmmword_10017E110;
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94016 parameter:[NSNumber numberWithUnsignedInteger:a3]];
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

- (_NSRange)lineRangeForPosition:(unint64_t)a3
{
  v8 = xmmword_10017E110;
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94009 parameter:[NSNumber numberWithUnsignedInteger:a3]];
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

- (_NSRange)rangeForLineNumber:(int64_t)a3
{
  v8 = xmmword_10017E110;
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92704 parameter:[NSNumber numberWithInteger:a3]];
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

- (id)stringForLineNumber:(int64_t)a3
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92702 parameter:[NSNumber numberWithInteger:a3]];
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

- (CGRect)frameForLineNumber:(int64_t)a3
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92701 parameter:[NSNumber numberWithInteger:a3]];
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

- (CGRect)frameForRange:(_NSRange)a3
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v12 = size;
  v4 = [(VOTElement *)self objectForRange:a3.location withParameterizedAttribute:a3.length, 92703];
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
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

- (int64_t)lineNumberForPoint:(CGPoint)a3
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
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0x7FFFFFFFLL;
  }

  return v8;
}

- (id)lineNumberAndColumnForPoint:(CGPoint)a3
{
  v9 = a3;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &v9);
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

- (_NSRange)rangeForLineNumberAndColumn:(id)a3
{
  v4 = a3;
  v10 = xmmword_10017E110;
  if (v4)
  {
    v5 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92504 parameter:v4];
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

- (id)valueForRange:(_NSRange)a3
{
  v3 = [(VOTElement *)self objectForRange:a3.location withParameterizedAttribute:a3.length, 92505];
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

- (id)attributedValueForRange:(_NSRange)a3
{
  v3 = [(VOTElement *)self objectForRange:a3.location withParameterizedAttribute:a3.length, 92508];
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

- (id)objectForRange:(_NSRange)a3 withParameterizedAttribute:(int64_t)a4
{
  v10 = a3;
  v6 = AXValueCreate(kAXValueTypeCFRange, &v10);
  if (v6)
  {
    v7 = v6;
    v8 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:a4 parameter:v6];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_selectionStringForSegment:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1001C7D10[a3 - 1];
  }
}

- (void)increaseWebSelection:(int64_t)a3
{
  uiElement = self->_uiElement;
  v4 = [(VOTElement *)self _selectionStringForSegment:a3];
  [(UIElementProtocol *)uiElement performAXAction:2015 withValue:v4];
}

- (void)decreaseWebSelection:(int64_t)a3
{
  uiElement = self->_uiElement;
  v4 = [(VOTElement *)self _selectionStringForSegment:a3];
  [(UIElementProtocol *)uiElement performAXAction:2016 withValue:v4];
}

- (void)deleteCharacterAtCursorWithSource:(int64_t)a3
{
  v4 = [(VOTElement *)self _sourceNameForChangeOriginator:a3];
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

- (int64_t)_changeOriginatorForSourceName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"hardware"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"braillehardware"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"braillegestures"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"handwriting"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sourceNameForChangeOriginator:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"software";
  }

  else
  {
    return qword_1001C7D48[a3];
  }
}

- (void)replaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4 source:(int64_t)a5
{
  v11 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  [v8 setValue:v9 forKey:@"numberofcharacters"];

  if (v11)
  {
    [v8 setValue:v11 forKey:@"replacement"];
  }

  v10 = [(VOTElement *)self _sourceNameForChangeOriginator:a5];
  if (v10)
  {
    [v8 setValue:v10 forKey:@"source"];
  }

  [(UIElementProtocol *)self->_uiElement performAXAction:2053 withValue:v8];
}

- (BOOL)replaceTextInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v11[0] = @"range";
  v7 = a4;
  v13.location = location;
  v13.length = length;
  v8 = NSStringFromRange(v13);
  v11[1] = @"replacement";
  v12[0] = v8;
  v12[1] = v7;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  LOBYTE(v8) = [(UIElementProtocol *)self->_uiElement performAXAction:2505 withValue:v9];
  return v8;
}

- (CGRect)boundsForRange:(_NSRange)a3
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v12 = size;
  v4 = [(VOTElement *)self objectForRange:a3.location withParameterizedAttribute:a3.length, 92506];
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
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

- (id)webHierarchyIndexPathFromWebArea:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(VOTElement *)v5 directParent];
  if (v6)
  {
    v7 = 0;
    v8 = v5;
    while (([v4 isEqual:v8] & 1) == 0)
    {
      v9 = [v6 indexOfAccessibilityElement:v8];
      if ([(VOTElement *)v8 isEqual:v5])
      {
        [NSIndexPath indexPathWithIndex:v9];
      }

      else
      {
        [v7 indexPathByAddingIndex:v9];
      }
      v10 = ;

      v11 = v6;
      v6 = [(VOTElement *)v11 directParent];

      v7 = v10;
      v8 = v11;
      if (!v6)
      {
        v5 = v11;
        goto LABEL_11;
      }
    }

    v5 = v8;
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
    v4 = [(VOTElement *)self directParent];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      while ([v5 doesHaveTraits:v3])
      {
        v7 = v5;

        v5 = [v7 directParent];

        v6 = v7;
        if (!v5)
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

- (id)textMarkerForPoint:(CGPoint)a3
{
  v7 = a3;
  v4 = AXValueCreate(kAXValueTypeCGPoint, &v7);
  v5 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94007 parameter:v4];
  CFRelease(v4);

  return v5;
}

- (id)textMarkersForPoints:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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

- (id)textLineEndMarker:(id)a3
{
  uiElement = self->_uiElement;
  v5 = a3;
  [(UIElementProtocol *)uiElement updateCache:94003];
  v6 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94003 parameter:v5];

  return v6;
}

- (_NSRange)rangeForTextMarker:(id)a3
{
  v8 = xmmword_10017E110;
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94012 parameter:a3];
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

- (id)textMarkersForRange:(_NSRange)a3
{
  v3 = [(VOTElement *)self objectForRange:a3.location withParameterizedAttribute:a3.length, 94014];
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
    v3 = 0;
  }

  else
  {
    v3 = [v5 textOperationsAvailable];
  }

  return v3;
}

- (CGRect)textMarkerFrame:(id)a3
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94000 parameter:a3];
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

- (id)textMarkerArrayOfText:(id)a3
{
  v3 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:94001 parameter:a3];
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
          v15 = [v4 lastObject];
          v16 = [v15 stringByAppendingString:v12];
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

- (id)headerElementsForColumn:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [(VOTElement *)self elementsForAttribute:95233 withParameter:v4];

  return v5;
}

- (id)headerElementsForRow:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [(VOTElement *)self elementsForAttribute:95234 withParameter:v4];

  return v5;
}

- (void)addTitleElementToCache:(id)a3
{
  v5 = a3;
  v4 = objc_getAssociatedObject(self, &unk_1001FEA78);
  if (!v4)
  {
    v4 = [objc_allocWithZone(NSMutableSet) init];
    objc_setAssociatedObject(self, &unk_1001FEA78, v4, 1);
  }

  [v4 addObject:v5];
}

- (BOOL)elementActsAsTitleElement:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, &unk_1001FEA78);
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)bundleIdentifier
{
  v3 = [(UIElementProtocol *)self->_uiElement stringWithAXAttribute:3003];
  if (!v3)
  {
    v4 = [(VOTElement *)self application];
    if ([v4 isEqual:self])
    {
      v3 = 0;
    }

    else
    {
      v3 = [v4 bundleIdentifier];
    }
  }

  return v3;
}

- (BOOL)isLiveCaptionsTextView
{
  v3 = [(VOTElement *)self identifier];
  if ([v3 isEqualToString:@"AXLCCaptionText"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VOTElement *)self identifier];
    if ([v5 isEqualToString:@"AXLCCaptionParagraphText"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(VOTElement *)self identifier];
      v4 = [v6 isEqualToString:@"AXLCAppName"];
    }
  }

  return v4;
}

- (BOOL)isLiveCaptionsParagraphView
{
  v2 = [(VOTElement *)self identifier];
  v3 = [v2 isEqualToString:@"AXLCCaptionParagraphText"];

  return v3;
}

- (BOOL)isSpringBoard
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)isChronod
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.chronod"];

  return v3;
}

- (BOOL)isPineBoard
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.PineBoard"];

  return v3;
}

- (BOOL)isHeadBoard
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.HeadBoard"];

  return v3;
}

- (BOOL)isSystemApp
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)isSetupBuddy
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.purplebuddy"];

  return v3;
}

- (BOOL)isMobilePhone
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.mobilephone"];

  return v3;
}

- (BOOL)isSafari
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.mobilesafari"];

  return v3;
}

- (BOOL)isGoogleChrome
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.google.chrome.ios"];

  return v3;
}

- (BOOL)isAssistiveTouch
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.assistivetouchd"];

  return v3;
}

- (BOOL)isAccessibilitySystemUIServer
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.AccessibilityUIServer"];

  return v3;
}

- (BOOL)isMail
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:AX_MobileMailBundleName];

  return v3;
}

- (BOOL)isMaps
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Maps"];

  return v3;
}

- (BOOL)isIBooks
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.iBooks"];

  return v3;
}

- (BOOL)isSpotlight
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:AX_SpotlightBundleName];

  return v3;
}

- (BOOL)isClipViewService
{
  v2 = [(VOTElement *)self bundleIdentifier];
  v3 = [v2 isEqualToString:AX_ClipViewServiceName];

  return v3;
}

- (BOOL)isHandUI
{
  v2 = [(VOTElement *)self windowSceneIdentifier];
  v3 = [v2 hasPrefix:@"com.apple.RealityHUD.HandScene"];

  return v3;
}

- (BOOL)isSafariScribbleActive
{
  v3 = [(VOTElement *)self isSafari];
  if (v3)
  {
    v4 = [(VOTElement *)self application];
    v5 = [v4 uiElement];
    v6 = [v5 BOOLWithAXAttribute:5073];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)performScribbleAction
{
  v3 = VOTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Scribble] hiding element", buf, 2u);
  }

  v4 = [VOTSharedWorkspace elementManager];
  v5 = [v4 safariScribbleManager];

  v6 = [v5 lastFetchedElement];

  if (v6)
  {
    [(UIElementProtocol *)self->_uiElement performAXAction:4200];
    v7 = +[VOTOutputManager outputManager];
    v8 = +[VOSOutputEvent FolderDidClose];
    [v7 sendEvent:v8];

    v9 = +[AXHapticFeedbackManager sharedManager];
    [v9 playHapticFeedbackForType:12];

    [v5 hideSelectedElement];
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

  return v6 != 0;
}

- (void)clearSelectedScribbleElement
{
  v3 = [VOTSharedWorkspace elementManager];
  v10 = [v3 safariScribbleManager];

  v4 = [v10 lastFetchedElement];

  if (v4)
  {
    v5 = [(VOTElement *)self application];
    v6 = [v5 uiElement];
    [v6 performAXAction:4201];

    [v10 setLastFetchedElement:0];
    v7 = sub_1000511CC(off_1001FDDE0, @"scribble.cleared.selection", 0);
    v8 = [VOTSharedWorkspace selectedLanguage];
    v9 = sub_1000095FC(v7, 1, v8);
  }
}

- (id)scribbleAreaForSearchPoint:(int64_t)a3
{
  if (![(VOTElement *)self isSafari])
  {
    goto LABEL_21;
  }

  valuePtr = CGPointZero;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
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
    if (a3 == 2)
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
      if (a3 == 3)
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
        if (a3 != 4)
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
  v19 = [(VOTElement *)self remoteParent];

  if (!v19)
  {
LABEL_21:
    v25 = 0;
    goto LABEL_26;
  }

  v20 = [(VOTElement *)self application];
  v21 = [v20 uiElement];
  v22 = [v21 objectWithAXAttribute:94100 parameter:{AXValueCreate(kAXValueTypeCGPoint, &valuePtr)}];

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

- (id)elementAtRow:(int64_t)a3 andColumn:(int64_t)a4
{
  v7 = objc_allocWithZone(NSArray);
  v8 = [NSNumber numberWithInteger:a3];
  v9 = [NSNumber numberWithInteger:a4];
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
  v2 = [(VOTElement *)self application];
  v3 = ([v2 isSoftwareKeyboardActive] & 1) != 0 || GSEventIsHardwareKeyboardAttached() != 0;

  return v3;
}

- (int64_t)applicationOrientation
{
  [(UIElementProtocol *)self->_uiElement updateCache:1503];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:1503];
  v4 = [v3 intValue];

  return v4;
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

- (BOOL)showBulletinBoard:(BOOL)a3
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithBool:a3];
  LOBYTE(uiElement) = [(UIElementProtocol *)uiElement performAXAction:5000 withValue:v4];

  return uiElement;
}

- (BOOL)showControlCenter:(BOOL)a3
{
  uiElement = self->_uiElement;
  v4 = [NSNumber numberWithBool:a3];
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

- (CGRect)convertRect:(CGRect)a3 fromContextId:(unsigned int)a4
{
  valuePtr = a3;
  v6 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
  uiElement = self->_uiElement;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
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

- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4
{
  AXConvertPointToHostedCoordinates();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4
{
  AXConvertPointFromHostedCoordinates();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPath)convertPath:(CGPath *)a3 fromContextId:(unsigned int)a4
{
  v4 = *&a4;
  v6 = +[AXElement systemWideElement];
  v7 = [v6 convertPath:a3 fromContextId:v4];

  return v7;
}

- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4 fromDisplayId:(unsigned int)a5
{
  _AXConvertRectToHostedCoordinates(*&a4, *&a5, a3.origin, *&a3.origin.y, a3.size, *&a3.size.height);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGPath)convertPath:(CGPath *)a3 fromContextId:(unsigned int)a4 fromDisplayId:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = +[AXElement systemWideElement];
  v9 = [v8 convertPath:a3 fromContextId:v6 displayId:v5];

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

- (BOOL)isElementFirstElement:(BOOL)a3 orLastElement:(BOOL)a4 withType:(unint64_t)a5
{
  v6 = a4;
  if (a3)
  {
    v8 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92509 parameter:[NSNumber numberWithUnsignedLong:a5]];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      return v9;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:92510 parameter:[NSNumber numberWithUnsignedLong:a5]];
    v11 = [v10 BOOLValue];

    return v11;
  }

  return v9;
}

- (NSString)description
{
  uiElement = self->_uiElement;
  v4 = [(VOTElement *)self label];
  [(VOTElement *)self frame];
  v5 = NSStringFromRect(v11);
  v6 = [(VOTElement *)self application];
  v7 = [v6 bundleIdentifier];
  v8 = [NSString stringWithFormat:@"VOTElement %p { %@ } %@ %@ %@", self, uiElement, v4, v5, v7];

  return v8;
}

- (NSString)toggleStatusLabel
{
  if (![(VOTElement *)self doesHaveTraits:kAXToggleTrait])
  {
    v12 = 0;
    goto LABEL_20;
  }

  v3 = [(VOTElement *)self isSwitch];
  v4 = [(VOTElement *)self doesHaveTraits:kAXWebContentTrait];
  v5 = [(VOTElement *)self value];
  v6 = [VOTSharedWorkspace selectedLanguage];
  if (([v5 isEqualToString:@"0"] & 1) != 0 || v3 && objc_msgSend(v5, "isEqualToString:", @"2"))
  {
    v7 = off_1001FDDD0;
    v8 = (v4 & (v3 ^ 1)) == 0;
    if ((v4 & (v3 ^ 1)) != 0)
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

  if ([v5 isEqualToString:@"1"])
  {
    v7 = off_1001FDDD0;
    v8 = (v4 & (v3 ^ 1)) == 0;
    if ((v4 & (v3 ^ 1)) != 0)
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

  if (![v5 isEqualToString:@"2"])
  {
    v14 = v5;
    goto LABEL_19;
  }

  v7 = off_1001FDDD0;
  v9 = @"element.mixed.text";
  v13 = @"mixed";
LABEL_18:
  v14 = sub_1000516CC(v7, v9, v13, v6);
LABEL_19:
  v12 = v14;

LABEL_20:

  return v12;
}

- (VOTElementUniqueIdentification)uniqueIdentification
{
  v2 = self;
  objc_sync_enter(v2);
  uniqueIdentification = v2->_uniqueIdentification;
  if (uniqueIdentification)
  {
    v4 = [(VOTElementUniqueIdentification *)uniqueIdentification copy];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  if (!v4)
  {
    v4 = [VOTElementUniqueIdentification identificationFromElement:v2];
    v5 = v2;
    objc_sync_enter(v5);
    v6 = [v4 copy];
    v7 = v2->_uniqueIdentification;
    v2->_uniqueIdentification = v6;

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
      v5 = [(UIElementProtocol *)self->_uiElement axElement];
      _AXUIElementIDForElement();
      v7 = v6;
      pid = 0;
      AXUIElementGetPid(v5, &pid);
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
  v4 = [v3 integerValue];

  return v4;
}

- (CGRect)convertAccessibilityFrameToScreenCoordinates:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIElementProtocol *)self->_uiElement updateCache:2021];
  v8 = [(VOTElement *)self windowContextId];
  v9 = +[VOTElement systemWideElement];
  [v9 convertRect:v8 fromContextId:{x, y, width, height}];
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
  v3 = [(VOTElement *)self uiElement];
  v4 = [v3 stringWithAXAttribute:3053];

  if (![v4 length])
  {
    v5 = [(VOTElement *)self staticTextString];

    v4 = v5;
  }

  return v4;
}

- (id)staticTextString
{
  v3 = +[NSMutableString string];
  v4 = [(VOTElement *)self value];
  if ([(VOTElement *)self doesHaveTraits:kAXToggleTrait])
  {
    v5 = [(VOTElement *)self toggleStatusLabel];
    if ([v5 length])
    {
      v6 = v5;

      v4 = v6;
    }
  }

  if (!-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXTextAreaTrait) || ![v4 length])
  {
    v7 = [(VOTElement *)self label];
    [v3 appendStringWithComma:v7];
  }

  [v3 appendStringWithComma:v4];
  v8 = [(VOTElement *)self staticRecognitionText];
  [v3 appendStringWithComma:v8];

  return v3;
}

- (id)visionFeatureDescriptionOptions
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverDiscoveredSensitiveContentFeedback];

  v8[0] = AXMFeatureDescriptionOptionLocale;
  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  v9[0] = v4;
  v8[1] = AXMFeatureDescriptionOptionModifyForSensitiveContent;
  v5 = [NSNumber numberWithInt:v3 == 0];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)staticRecognitionText
{
  v18 = +[NSMutableString string];
  v3 = [VOTSharedWorkspace visionEngine];
  v4 = [v3 resultsForElement:self];

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
        v11 = [(VOTElement *)self visionFeatureDescriptionOptions];
        v12 = [v10 detectedFeatureDescriptionWithOptions:v11];

        if ([v12 length])
        {
          v13 = [[AXAttributedString alloc] initWithString:v12];
          v14 = [v10 captionFeatures];
          v15 = [v14 count];

          if (AXRuntimeCheck_MediaAnalysisSupport())
          {
            v16 = [v10 mediaAnalysisImageCaptionFeatures];
            v15 = [v16 count];
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
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 arrayWithAXAttribute:2175];
  v4 = [v3 axFilterObjectsUsingBlock:&stru_1001C7C68];

  return v4;
}

- (id)cachedDragCustomActions
{
  v3 = [(VOTElement *)self dragSourceDescriptorDictionaries];
  v4 = [(UIElementProtocol *)self->_uiElement BOOLWithAXAttribute:2177];
  if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait]&& ([(VOTElement *)self doesHaveTraits:kAXLinkTrait]|| (([(VOTElement *)self doesHaveTraits:kAXImageTrait]| v4) & 1) != 0))
  {
    v5 = [(VOTElement *)self remoteParent];

    if (v5)
    {
      v6 = [(VOTElement *)self remoteParent];
      v7 = [v6 touchContainer];
      v8 = [v7 uiElement];
      v5 = [VOTElement elementWithUIElement:v8];

      v9 = [v5 dragSourceDescriptorDictionaries];

      v10 = 1;
      v3 = v9;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
    v5 = 0;
  }

  v11 = +[NSMutableArray array];
  AXNamesForDrags();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023430;
  v18[3] = &unk_1001C7C90;
  v19 = v23 = v10;
  v20 = self;
  v21 = v5;
  v12 = v11;
  v22 = v12;
  v13 = v5;
  v14 = v19;
  [v3 enumerateObjectsUsingBlock:v18];
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
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 arrayWithAXAttribute:2176];
  v4 = [v3 axFilterObjectsUsingBlock:&stru_1001C7CB0];

  return v4;
}

- (id)cachedDropCustomActions
{
  v2 = [(VOTElement *)self dropPointDescriptorDictionaries];
  v3 = +[NSMutableArray array];
  AXNamesForDrops();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002395C;
  v10 = v9[3] = &unk_1001C7CD8;
  v4 = v3;
  v11 = v4;
  v5 = v10;
  [v2 enumerateObjectsUsingBlock:v9];
  v6 = v11;
  v7 = v4;

  return v4;
}

- (id)dropCustomActions
{
  [(UIElementProtocol *)self->_uiElement updateCache:2176];

  return [(VOTElement *)self cachedDropCustomActions];
}

- (BOOL)activateDragWithDescriptorDictionary:(id)a3
{
  v4 = a3;
  v5 = [(VOTElement *)self uiElement];
  v8[0] = AXDragServiceNameVoiceOver;
  v8[1] = v4;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  LOBYTE(self) = [v5 performAXAction:2050 withValue:v6];
  return self;
}

- (BOOL)prefersContextlessPassthrough
{
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2174];

  return v3;
}

- (BOOL)shouldSpeakMathEquationTrait
{
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2402];

  return v3;
}

- (BOOL)shouldExpandMathEquation
{
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 BOOLWithAXAttribute:2403];

  return v3;
}

- (id)elementCommunityIdentifier
{
  v2 = [(VOTElement *)self uiElement];
  v3 = [v2 stringWithAXAttribute:2100];

  return v3;
}

- (id)chartDescriptor
{
  v2 = [(VOTElement *)self chartElement];
  objc_opt_class();
  v3 = [v2 uiElement];
  v4 = [v3 objectWithAXAttribute:2711];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [[AXMChartDescriptor alloc] initWithDictionary:v5];

  return v6;
}

- (NSString)chartStructureDescription
{
  v2 = [(VOTElement *)self chartElement];
  v3 = [v2 uiElement];
  v4 = [v3 stringWithAXAttribute:2718];

  return v4;
}

- (id)dataSeriesName
{
  v2 = [(VOTElement *)self dataSeriesElement];
  v3 = [v2 uiElement];
  v4 = [v3 stringWithAXAttribute:2702];

  return v4;
}

- (int64_t)dataSeriesType
{
  v2 = [(VOTElement *)self dataSeriesElement];
  v3 = [v2 uiElement];
  v4 = [v3 numberWithAXAttribute:2703];
  v5 = [v4 unsignedIntegerValue];

  return v5;
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
  v2 = [(VOTElement *)self dataSeriesElement];
  v3 = [v2 uiElement];
  v4 = [v3 BOOLWithAXAttribute:2705];

  return v4;
}

- (BOOL)supportsDataSeriesSonification
{
  v2 = [(VOTElement *)self dataSeriesElement];
  v3 = [v2 uiElement];
  v4 = [v3 BOOLWithAXAttribute:2706];

  return v4;
}

- (BOOL)supportsAudiographs
{
  v3 = [(VOTElement *)self uiElement];
  v4 = [v3 BOOLWithAXAttribute:2713];

  v5 = [(VOTElement *)self uiElement];
  v6 = [v5 objectWithAXAttribute:2714];

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
  v2 = [(VOTElement *)self dataSeriesElement];
  v3 = [v2 uiElement];
  v4 = [v3 BOOLWithAXAttribute:2707];

  return v4;
}

- (double)dataSeriesSonificationPlaybackDuration
{
  v2 = [(VOTElement *)self dataSeriesElement];
  v3 = [v2 uiElement];
  v4 = [v3 numberWithAXAttribute:2704];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (id)dataSeriesValuesForAxis:(int64_t)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [NSNumber numberWithLong:a3];
  v6 = [v4 arrayForParameterizedAttribute:95239 parameter:v5];

  return v6;
}

- (id)dataSeriesTitleForAxis:(int64_t)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [NSNumber numberWithLong:a3];
  v6 = [v4 stringForParameterizedAttribute:95240 parameter:v5];

  if (![v6 length])
  {
    if (a3)
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

- (double)dataSeriesMinimumValueForAxis:(int64_t)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [v4 uiElement];
  v6 = [v5 objectWithAXAttribute:95241 parameter:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", a3)}];

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

- (double)dataSeriesMaximumValueForAxis:(int64_t)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [v4 uiElement];
  v6 = [v5 objectWithAXAttribute:95242 parameter:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", a3)}];

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

- (id)dataSeriesUnitsLabelForAxis:(int64_t)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [v4 uiElement];
  v6 = [v5 objectWithAXAttribute:95244 parameter:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", a3)}];

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

- (id)dataSeriesGridlinePositionsForAxis:(int64_t)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [NSNumber numberWithLong:a3];
  v6 = [v4 arrayForParameterizedAttribute:95243 parameter:v5];

  return v6;
}

- (id)dataSeriesCategoryLabelsForAxis:(int64_t)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [NSNumber numberWithLong:a3];
  v6 = [v4 arrayForParameterizedAttribute:95245 parameter:v5];

  return v6;
}

- (id)dataSeriesXAxisValueDescriptionForPosition:(double)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [v4 stringForParameterizedAttribute:95247 parameter:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a3)}];

  return v5;
}

- (id)dataSeriesYAxisValueDescriptionForPosition:(double)a3
{
  v4 = [(VOTElement *)self dataSeriesElement];
  v5 = [v4 stringForParameterizedAttribute:95248 parameter:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a3)}];

  return v5;
}

- (id)dataSeriesAxesDescription
{
  v3 = [(VOTElement *)self dataSeriesElement];
  v4 = [v3 dataSeriesTitleForAxis:0];
  v5 = [v3 dataSeriesTitleForAxis:1];
  v6 = [v3 dataSeriesUnitsLabelForAxis:0];
  v37 = [v3 dataSeriesUnitsLabelForAxis:1];
  [v3 dataSeriesMinimumValueForAxis:0];
  v35 = [NSNumber numberWithDouble:?];
  [v3 dataSeriesMaximumValueForAxis:0];
  v7 = [NSNumber numberWithDouble:?];
  [v3 dataSeriesMinimumValueForAxis:1];
  v34 = [NSNumber numberWithDouble:?];
  [v3 dataSeriesMaximumValueForAxis:1];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [(VOTElement *)self language];
  sub_1000511CC(off_1001FDDD0, @"search.rotor.audiograph.axes.description.format", v9);
  v33 = v10 = v4;
  v32 = [NSString stringWithFormat:v4, v5];
  v11 = [v3 dataSeriesXAxisValueDescriptionForPosition:0.0];
  v12 = [v3 dataSeriesXAxisValueDescriptionForPosition:1.0];
  v36 = v6;
  v31 = v5;
  v29 = v9;
  v30 = v7;
  if ([v11 length] && objc_msgSend(v12, "length"))
  {
    v13 = sub_1000511CC(off_1001FDDD0, @"search.rotor.audiograph.axes.hint.format.no.units", v9);
    v14 = v8;
    v15 = v34;
    v16 = [NSString stringWithFormat:v13, v5, v34, v8, v10, v11, v12];
    v17 = v35;
  }

  else
  {
    if ([v6 length] && objc_msgSend(v37, "length"))
    {
      v13 = sub_1000511CC(off_1001FDDD0, @"search.rotor.audiograph.axes.hint.format", v9);
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
      v13 = sub_1000511CC(off_1001FDDD0, @"search.rotor.audiograph.axes.hint.format.no.units", v9);
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

- (void)setDeviceOrientation:(int64_t)a3
{
  v4 = +[AXSpringBoardServer server];
  [v4 setOrientation:a3];
}

- (void)setRotationCapabilityEnabled:(BOOL)a3
{
  v4 = [objc_allocWithZone(NSNumber) initWithBool:a3];
  [(UIElementProtocol *)self->_uiElement performAXAction:5009 withValue:v4];
}

- (void)setEventCaptureMode:(int)a3
{
  v4 = [objc_allocWithZone(NSNumber) initWithInt:*&a3];
  [(UIElementProtocol *)self->_uiElement performAXAction:5003 withValue:v4];
}

- (void)unsetEventCaptureMode:(int)a3
{
  v4 = [objc_allocWithZone(NSNumber) initWithInt:*&a3];
  [(UIElementProtocol *)self->_uiElement performAXAction:5022 withValue:v4];
}

- (BOOL)dispatchKeyboardEvent:(id)a3
{
  uiElement = self->_uiElement;
  v4 = [a3 dataRepresentation];
  LOBYTE(uiElement) = [(UIElementProtocol *)uiElement performAXAction:2034 withValue:v4];

  return uiElement;
}

- (void)repostEvent:(id)a3
{
  v7 = a3;
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v4 = +[VOTWorkspace sharedWorkspace];
    [v4 notePostedEventForUnitTesting:v7];
  }

  [v7 setSenderID:0x8000000817319373];
  uiElement = self->_uiElement;
  v6 = [v7 dataRepresentation];
  [(UIElementProtocol *)uiElement performAXAction:5002 withValue:v6];
}

- (void)notifyAnnouncementFinishedWithString:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1001CBF90;
  }

  v10[0] = @"String";
  v10[1] = @"DidFinish";
  v11[0] = v7;
  v8 = [NSNumber numberWithBool:v4];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(UIElementProtocol *)self->_uiElement performAXAction:2025 withValue:v9];
}

- (BOOL)performSimpleTapAtPoint:(CGPoint)a3 withForce:(double)a4 withContextId:(unsigned int)a5 withDelay:(float)a6 forElement:(id)a7
{
  v8 = *&a5;
  v30 = a3;
  v11 = a7;
  v12 = AXValueCreate(kAXValueTypeCGPoint, &v30);
  [(VOTElement *)self updateTouchForceSounds:a4, *&v30.x, *&v30.y];
  v13 = [v11 secureName];
  if (!v13)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v11 uiElement];
  v16 = [v15 stringWithAXAttribute:2001];

  if (byte_1001FEA79)
  {
    if (off_1001FEA80)
    {
LABEL_4:
      v17 = [v11 currentLocalization];
      v18 = off_1001FEA80(v14, v17);
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
  v22 = [NSNumber numberWithDouble:a4];
  v33[1] = v22;
  v32[2] = kAXSimulatePressAtPointActionKeyWindowContextID;
  v23 = [NSNumber numberWithUnsignedInt:v8];
  v33[2] = v23;
  v32[3] = kAXSimulatePressAtPointActionKeyDelay;
  *&v24 = a6;
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

- (void)postStylusTouchAtPoint:(CGPoint)a3 withForce:(double)a4 altitude:(double)a5 azimuth:(double)a6 withContextId:(unsigned int)a7
{
  v7 = *&a7;
  v21 = a3;
  v12 = AXValueCreate(kAXValueTypeCGPoint, &v21);
  v22[0] = v12;
  *&v13 = a4;
  v14 = [NSNumber numberWithFloat:v13];
  v22[1] = v14;
  *&v15 = a5;
  v16 = [NSNumber numberWithFloat:v15];
  v22[2] = v16;
  *&v17 = a6;
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

- (void)postStylusDragAtPoint:(CGPoint)a3 withForce:(double)a4 altitude:(double)a5 azimuth:(double)a6 withContextId:(unsigned int)a7
{
  v7 = *&a7;
  v21 = a3;
  v12 = AXValueCreate(kAXValueTypeCGPoint, &v21);
  v22[0] = v12;
  *&v13 = a4;
  v14 = [NSNumber numberWithFloat:v13];
  v22[1] = v14;
  *&v15 = a5;
  v16 = [NSNumber numberWithFloat:v15];
  v22[2] = v16;
  *&v17 = a6;
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

- (void)postStylusLiftAtPoint:(CGPoint)a3 withContextId:(unsigned int)a4
{
  v4 = *&a4;
  valuePtr = a3;
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

- (void)postFingerTouchAtPoint:(CGPoint)a3 withForce:(double)a4 withContextId:(unsigned int)a5
{
  v5 = *&a5;
  v13 = a3;
  v8 = AXValueCreate(kAXValueTypeCGPoint, &v13);
  v14[0] = v8;
  *&v9 = a4;
  v10 = [NSNumber numberWithFloat:v9];
  v14[1] = v10;
  v11 = [NSNumber numberWithUnsignedInt:v5];
  v14[2] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:3];

  [(VOTElement *)self updateTouchForceSounds:a4];
  [(UIElementProtocol *)self->_uiElement performAXAction:5004 withValue:v12];
  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)postFingerDragAtPoint:(CGPoint)a3 withForce:(double)a4 withContextId:(unsigned int)a5
{
  v5 = *&a5;
  v13 = a3;
  v8 = AXValueCreate(kAXValueTypeCGPoint, &v13);
  [(VOTElement *)self updateTouchForceSounds:a4];
  v14[0] = v8;
  *&v9 = a4;
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

- (void)postFingerLiftAtPoint:(CGPoint)a3 withContextId:(unsigned int)a4
{
  v4 = *&a4;
  valuePtr = a3;
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

- (void)updateTouchForceSounds:(double)a3
{
  lastOrbSoundLevel = self->_lastOrbSoundLevel;
  if (!lastOrbSoundLevel)
  {
    AXForceTouchThresholdPeek();
    if (v6 < a3)
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
    if (v9 < a3)
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
    if (v10 < a3)
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
    if (v12 > a3)
    {
      self->_lastOrbSoundLevel = 0;
    }
  }
}

- (unint64_t)directTouchOptions
{
  [(UIElementProtocol *)self->_uiElement updateCache:2233];
  v3 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2233];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)isKeyboardContinuousPathTracking
{
  [(UIElementProtocol *)self->_uiElement updateCache:2194];
  uiElement = self->_uiElement;

  return [(UIElementProtocol *)uiElement BOOLWithAXAttribute:2194];
}

- (BOOL)isDataSeriesElement
{
  v2 = [(VOTElement *)self containerTypes];
  v3 = [v2 containsObject:&off_1001D9B30];

  return v3;
}

- (int64_t)differenceAspectMask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(VOTElement *)self label];
    v6 = [v4 label];
    if (v5 | v6 && ![v5 isEqualToString:v6])
    {
      v7 = 63;
    }

    else
    {
      v7 = 62;
    }

    v9 = [(VOTElement *)self value];

    v10 = [v4 value];

    if (!(v9 | v10) || [v9 isEqualToString:v10])
    {
      v7 &= ~2uLL;
    }

    v11 = [(VOTElement *)self traits];
    if (v11 == [v4 traits])
    {
      v12 = v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      v12 = v7;
    }

    v13 = [(VOTElement *)self rowRange];
    v15 = v14;
    v16 = [v4 rowRange];
    if (v15 == v17 && v13 == v16)
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
    [v4 frame];
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

    v31 = [VOTSharedWorkspace selectedLanguage];
    if (v31)
    {
      v32 = [(VOTElement *)self roleDescriptionWithInteractOption:0 language:v31];
    }

    else
    {
      v33 = [(VOTElement *)self language];
      v34 = AXLanguageConvertToCanonicalForm();
      v32 = [(VOTElement *)self roleDescriptionWithInteractOption:0 language:v34];
    }

    v35 = [VOTSharedWorkspace selectedLanguage];
    if (v35)
    {
      v36 = [v4 roleDescriptionWithInteractOption:0 language:v35];
    }

    else
    {
      v37 = [v4 language];
      v38 = AXLanguageConvertToCanonicalForm();
      v36 = [v4 roleDescriptionWithInteractOption:0 language:v38];
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
  v4 = [(VOTElement *)self label];
  v5 = [(VOTElement *)self value];
  v6 = [(VOTElement *)self traits];
  v7 = [(VOTElement *)self rowRange];
  v9 = v8;
  [(VOTElement *)self frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(VOTElement *)self language];
  v19 = [(VOTElement *)self language];
  v20 = AXLanguageConvertToCanonicalForm();
  v21 = [(VOTElement *)self roleDescriptionWithInteractOption:0 language:v20];
  v22 = [(VOTElementSnapshot *)v3 initWithLabel:v4 value:v5 traits:v6 rowRange:v7 frame:v9 language:v18 roleDescription:v11, v13, v15, v17, v21];

  return v22;
}

- (unsigned)secureName
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:2223];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (int64_t)versionedPID
{
  v2 = [(UIElementProtocol *)self->_uiElement numberWithAXAttribute:3065];
  v3 = [v2 longLongValue];

  return v3;
}

- (id)arrayOfTraitsAsStringsWithTraitOrder:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_allocWithZone(NSMutableArray) init];
  v9 = [(VOTElement *)self traits];
  v10 = kAXSelectedTrait;
  if ((kAXSelectedTrait & v9) != 0)
  {
    v11 = sub_1000516CC(off_1001FDDD0, @"element.selected.text", @"selected", v7);
    [v8 addObject:v11];

    v12 = [NSNumber numberWithUnsignedLongLong:v10];
    [v6 addObject:v12];
  }

  v13 = kAXMenuItemTrait;
  if ((kAXMenuItemTrait & v9) != 0)
  {
    v14 = sub_1000516CC(off_1001FDDD0, @"element.menu.item", @"menu item", v7);
    [v8 addObject:v14];

    v15 = [NSNumber numberWithUnsignedLongLong:v13];
    [v6 addObject:v15];
  }

  v16 = kAXNotEnabledTrait;
  if ((kAXNotEnabledTrait & v9) != 0)
  {
    v17 = sub_1000516CC(off_1001FDDD0, @"element.disabled.text", @"dimmed", v7);
    [v8 addObject:v17];

    v18 = [NSNumber numberWithUnsignedLongLong:v16];
    [v6 addObject:v18];
  }

  v139 = self;
  v19 = kAXInactiveTrait;
  if ((kAXInactiveTrait & v9) != 0)
  {
    v20 = sub_1000516CC(off_1001FDDD0, @"element.inactive.text", @"inactive", v7);
    [v8 addObject:v20];

    v21 = [NSNumber numberWithUnsignedLongLong:v19];
    [v6 addObject:v21];
  }

  v22 = kAXButtonTrait;
  v23 = kAXToggleTrait;
  v24 = kAXBackButtonTrait;
  if (((kAXToggleTrait | kAXButtonTrait | kAXBackButtonTrait) & v9) != 0 && (kAXKeyboardKeyTrait & v9) == 0)
  {
    if ((kAXBackButtonTrait & v9) != 0)
    {
      v25 = off_1001FDDD0;
      v26 = @"back.button.element.text";
      v27 = @"back button";
LABEL_13:
      v28 = sub_1000516CC(v25, v26, v27, v7);
LABEL_17:
      [v8 addObject:v28];

      v30 = [NSNumber numberWithUnsignedLongLong:v24];
      [v6 addObject:v30];

      goto LABEL_18;
    }

    v29 = kAXWebContentTrait & v9;
    if ((kAXToggleTrait & v9) != 0 && !v29)
    {
      v28 = sub_1000516CC(off_1001FDDD0, @"switch.button.element.text", @"button", v7);
      v24 = v23;
      goto LABEL_17;
    }

    v24 = kAXTabButtonTrait;
    if ((kAXTabButtonTrait & v9) != 0)
    {
      v25 = off_1001FDDD0;
      v26 = @"tab.button.element.text";
      v27 = @"tab";
      goto LABEL_13;
    }

    if ((kAXRadioButtonTrait & v9) == 0)
    {
      if ((kAXToggleTrait & v9) != 0 && v29)
      {
        if ([(VOTElement *)self supportsPressedState])
        {
          v133 = off_1001FDDD0;
          v134 = @"toggle.button.element.text";
        }

        else
        {
          v135 = [(VOTElement *)self isSwitch];
          v133 = off_1001FDDD0;
          if (v135)
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

      v28 = sub_1000516CC(v133, v134, @"button", v7);
      v24 = v22;
      goto LABEL_17;
    }
  }

LABEL_18:
  v31 = kAXRadioButtonTrait;
  if ((kAXRadioButtonTrait & v9) != 0)
  {
    v32 = sub_1000516CC(off_1001FDDD0, @"radio.button.text", @"button", v7);
    [v8 addObject:v32];

    v33 = [NSNumber numberWithUnsignedLongLong:v31];
    [v6 addObject:v33];
  }

  v34 = v139;
  if ((v22 & v9) == 0)
  {
    v35 = kAXTabButtonTrait;
    if ((kAXTabButtonTrait & v9) == kAXTabButtonTrait)
    {
      v36 = sub_1000516CC(off_1001FDDD0, @"tab.button.element.text", @"tab", v7);
      [v8 addObject:v36];

      v37 = [NSNumber numberWithUnsignedLongLong:v35];
      [v6 addObject:v37];
    }
  }

  v38 = kAXPopupButtonTrait;
  if ((kAXPopupButtonTrait & v9) != 0)
  {
    v39 = sub_1000516CC(off_1001FDDD0, @"popup.button.element.text", @"popup", v7);
    [v8 addObject:v39];

    v40 = [NSNumber numberWithUnsignedLongLong:v38];
    [v6 addObject:v40];
  }

  if ((v23 & v9) != 0)
  {
    if ([(VOTElement *)v139 supportsPressedState])
    {
      v41 = off_1001FDDD0;
      if ([(VOTElement *)v139 isPressed])
      {
        v42 = @"pressed.button";
      }

      else
      {
        v42 = @"not.pressed.button";
      }

      if ([(VOTElement *)v139 isPressed])
      {
        v43 = @"pressed";
      }

      else
      {
        v43 = @"not pressed";
      }

      v44 = sub_1000516CC(v41, v42, v43, v7);
      [v8 addObject:v44];

      v45 = [NSNumber numberWithUnsignedLongLong:v23];
      [v6 addObject:v45];
    }

    else
    {
      v45 = [(VOTElement *)v139 toggleStatusLabel];
      if (v45)
      {
        [v8 addObject:v45];
        v46 = [NSNumber numberWithUnsignedLongLong:v23];
        [v6 addObject:v46];
      }
    }
  }

  v47 = kAXHeaderTrait;
  if ((kAXHeaderTrait & v9) != 0)
  {
    if ((kAXWebContentTrait & v9) != 0)
    {
      [(VOTElement *)v139 value];
    }

    else
    {
      [(VOTElement *)v139 headingLevelValue];
    }
    v48 = ;
    v49 = [v48 intValue];

    if (v49)
    {
      v50 = sub_1000516CC(off_1001FDDD0, @"element.header.text", @"heading", v7);
      v51 = AXFormatInteger();
      v52 = [NSString stringWithFormat:v50, v51];
      [v8 addObject:v52];
    }

    else
    {
      v50 = sub_1000516CC(off_1001FDDD0, @"element.header.text.nolevel", @"heading", v7);
      [v8 addObject:v50];
    }

    v53 = [NSNumber numberWithUnsignedLongLong:v47];
    [v6 addObject:v53];
  }

  v54 = kAXFooterTrait;
  if ((kAXFooterTrait & v9) != 0)
  {
    v55 = sub_1000516CC(off_1001FDDD0, @"element.footer.text", @"footer", v7);
    [v8 addObject:v55];

    v56 = [NSNumber numberWithUnsignedLongLong:v54];
    [v6 addObject:v56];
  }

  v57 = kAXVisitedTrait;
  if ((kAXVisitedTrait & v9) != 0)
  {
    v58 = sub_1000516CC(off_1001FDDD0, @"element.visited.text", @"visited", v7);
    [v8 addObject:v58];

    v59 = [NSNumber numberWithUnsignedLongLong:v57];
    [v6 addObject:v59];
  }

  v60 = kAXLinkTrait;
  if ((kAXLinkTrait & v9) != 0)
  {
    v61 = [(VOTElement *)v139 linkedElement];

    if (v61)
    {
      v62 = @"element.link.internal.text";
    }

    else
    {
      v62 = @"element.link.text";
    }

    v63 = sub_1000516CC(off_1001FDDD0, v62, @"link", v7);
    [v8 addObject:v63];

    v64 = [NSNumber numberWithUnsignedLongLong:v60];
    [v6 addObject:v64];
  }

  v65 = kAXPickerElementTrait;
  if ((kAXPickerElementTrait & v9) != 0)
  {
    v66 = sub_1000516CC(off_1001FDDD0, @"picker.element.text", @"picker", v7);
    [v8 addObject:v66];

    v67 = [NSNumber numberWithUnsignedLongLong:v65];
    [v6 addObject:v67];
  }

  v68 = kAXAdjustableTrait;
  if ((kAXAdjustableTrait & v9) != 0)
  {
    v69 = sub_1000516CC(off_1001FDDD0, @"incrementable.element.text", @"adjustable", v7);
    [v8 addObject:v69];

    v70 = [NSNumber numberWithUnsignedLongLong:v68];
    [v6 addObject:v70];
  }

  v71 = kAXImageTrait;
  if ((kAXImageTrait & v9) != 0 && ![(VOTElement *)v139 shouldSkipImageTraitDescription])
  {
    v72 = sub_1000516CC(off_1001FDDD0, @"image.element.text", @"image", v7);
    [v8 addObject:v72];

    v73 = [NSNumber numberWithUnsignedLongLong:v71];
    [v6 addObject:v73];
  }

  v74 = kAXMathEquationTrait;
  if ((kAXMathEquationTrait & v9) != 0 && [(VOTElement *)v139 shouldSpeakMathEquationTrait])
  {
    v75 = sub_1000516CC(off_1001FDDD0, @"mathequation.element.text", @"math", v7);
    [v8 addObject:v75];

    v76 = [NSNumber numberWithUnsignedLongLong:v74];
    [v6 addObject:v76];
  }

  v77 = kAXSearchFieldTrait;
  if ((kAXSearchFieldTrait & v9) != 0)
  {
    v78 = sub_1000516CC(off_1001FDDD0, @"element.status.search.field", @"search", v7);
    [v8 addObject:v78];

    v79 = [NSNumber numberWithUnsignedLongLong:v77];
    [v6 addObject:v79];
  }

  v80 = kAXTextEntryTrait;
  if ((kAXTextEntryTrait & v9) != 0 && ((kAXStaticTextTrait | v77) & v9) == 0)
  {
    if (((kAXTextAreaTrait | kAXWebContentTrait) & ~v9) != 0)
    {
      v84 = off_1001FDDD0;
      if ((kAXSecureTextFieldTrait & v9) != 0)
      {
        if ([(VOTElement *)v139 isStrongPasswordField])
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

    v85 = sub_1000516CC(v81, v82, v83, v7);
    [v8 addObject:v85];

    v86 = [NSNumber numberWithUnsignedLongLong:v80];
    [v6 addObject:v86];
  }

  v87 = kAXIsEditingTrait;
  if ((kAXIsEditingTrait & v9) != 0 && ![(VOTElement *)v139 isReadingContent]&& (kAXStaticTextTrait & v9) == 0 && ![(VOTElement *)v139 shouldIgnoreTextEditingTrait])
  {
    v88 = sub_1000516CC(off_1001FDDD0, @"element.is.editing.text", @"is editing", v7);
    [v8 addObject:v88];

    v89 = [NSNumber numberWithUnsignedLongLong:v87];
    [v6 addObject:v89];
  }

  v90 = kAXReadOnlyTrait;
  if ((kAXReadOnlyTrait & v9) != 0 && (kAXStaticTextTrait & v9) == 0)
  {
    v91 = sub_1000516CC(off_1001FDDD0, @"element.is.read.only", @"is read only", v7);
    [v8 addObject:v91];

    v92 = [NSNumber numberWithUnsignedLongLong:v90];
    [v6 addObject:v92];
  }

  v93 = kAXStatusBarElementTrait;
  if ((kAXStatusBarElementTrait & v9) != 0)
  {
    v94 = sub_1000516CC(off_1001FDDD0, @"element.status.bar.item", @"status bar item", v7);
    [v8 addObject:v94];

    v95 = [NSNumber numberWithUnsignedLongLong:v93];
    [v6 addObject:v95];
  }

  v96 = kAXDraggableTrait;
  if ((kAXDraggableTrait & v9) != 0)
  {
    v97 = sub_1000516CC(off_1001FDDD0, @"element.draggable.item", @"draggable", v7);
    [v8 addObject:v97];

    v98 = [NSNumber numberWithUnsignedLongLong:v96];
    [v6 addObject:v98];
  }

  v99 = kAXFolderIconTrait;
  if ((kAXFolderIconTrait & v9) != 0)
  {
    v100 = sub_1000516CC(off_1001FDDD0, @"element.folder.text", @"folder", v7);
    [v8 addObject:v100];

    v101 = [NSNumber numberWithUnsignedLongLong:v99];
    [v6 addObject:v101];
  }

  v102 = kAXWebInteractiveVideoTrait;
  if ((kAXWebInteractiveVideoTrait & v9) != 0)
  {
    v103 = sub_1000516CC(off_1001FDDD0, @"web.interactive.video.control.text", @"video playback", v7);
    [v8 addObject:v103];

    v104 = [NSNumber numberWithUnsignedLongLong:v102];
    [v6 addObject:v104];
  }

  v105 = kAXProminentIconTrait;
  if ((kAXProminentIconTrait & v9) != 0)
  {
    v106 = sub_1000516CC(off_1001FDDD0, @"element.prominent.icon", @"icon", v7);
    [v8 addObject:v106];

    v107 = [NSNumber numberWithUnsignedLongLong:v105];
    [v6 addObject:v107];
  }

  v108 = [(VOTElement *)v139 containerTypes];
  if ([v108 containsObject:&off_1001DA058])
  {
    v109 = [VOTSharedWorkspace elementManager];
    v110 = [v109 speakTableHeadersForElement:v139];

    if (v110)
    {
      if ([(VOTElement *)v139 isElementFirstElement:1 orLastElement:0 withType:2])
      {
        v111 = sub_1000516CC(off_1001FDDD0, @"element.startOfTable.item", @"table", v7);
        [v8 addObject:v111];

        [v6 addObject:&off_1001DA070];
        [(VOTElement *)v139 setIsFirstItemInTable:1];
      }

      else if ([(VOTElement *)v139 isElementFirstElement:0 orLastElement:1 withType:2])
      {
        v112 = sub_1000516CC(off_1001FDDD0, @"element.endOfTable.item", @"table", v7);
        [v8 addObject:v112];

        [v6 addObject:&off_1001DA070];
      }
    }
  }

  if (([v108 containsObject:&off_1001DA088] & 1) != 0 || objc_msgSend(v108, "containsObject:", &off_1001DA0A0))
  {
    if ([(VOTElement *)v139 isElementFirstElement:1 orLastElement:0 withType:4]|| [(VOTElement *)v139 isElementFirstElement:1 orLastElement:0 withType:0x2000])
    {
      v113 = sub_1000516CC(off_1001FDDD0, @"element.startOfList.item", @"list start", v7);
      [v8 addObject:v113];

      [(VOTElement *)v139 setIsFirstItemInList:1];
LABEL_109:
      [v6 addObject:&off_1001DA070];
      goto LABEL_110;
    }

    if ([(VOTElement *)v139 isElementFirstElement:0 orLastElement:1 withType:4]|| [(VOTElement *)v139 isElementFirstElement:0 orLastElement:1 withType:0x2000])
    {
      [(VOTElement *)v139 setIsLastItemInList:1];
      if (![(VOTElement *)v139 shouldIncludeRowRangeInDescription])
      {
        v124 = sub_1000516CC(off_1001FDDD0, @"element.endOfList.item", @"list end", v7);
        [v8 addObject:v124];

        goto LABEL_109;
      }
    }
  }

LABEL_110:
  if (![v108 containsObject:&off_1001DA0B8])
  {
    goto LABEL_127;
  }

  v114 = [(VOTElement *)v139 touchContainer];
  if ([(VOTElement *)v139 isElementFirstElement:1 orLastElement:0 withType:1])
  {
    v115 = [v114 label];
    v136 = sub_1000516CC(off_1001FDDD0, @"element.startOfLandmark.item", @"landmark", v7);
    v116 = __AXStringForVariables();

    [v8 addObject:{v116, v136, @"__AXStringForVariablesSentinel"}];
    [(VOTElement *)v139 setIsFirstItemInLandmark:1];
LABEL_125:
    [v6 addObject:&off_1001DA070];

    goto LABEL_126;
  }

  if ([(VOTElement *)v139 isElementFirstElement:0 orLastElement:1 withType:1])
  {
    v117 = sub_1000516CC(off_1001FDDD0, @"element.endOfLandmark.short.item", @"end", v7);
    v137 = [v114 label];
    v138 = @"__AXStringForVariablesSentinel";
    v116 = __AXStringForVariables();

    if (v114)
    {
      while ([v114 isElementFirstElement:0 orLastElement:1 withType:{1, v137, v138}])
      {
        v118 = [v114 touchContainer];
        if ([v114 isEqual:v118])
        {

          break;
        }

        v119 = sub_1000516CC(off_1001FDDD0, @"element.endOfLandmark.short.item", @"end", v7);
        v120 = [v118 label];
        v121 = __AXStringForVariables();

        v34 = v139;
        v137 = v116;
        v138 = v121;
        v122 = [NSString stringWithFormat:@"%@, %@"];

        v123 = v118;
        v116 = v122;
        v114 = v123;
        if (!v123)
        {
          v116 = v122;
          break;
        }
      }
    }

    [v8 addObject:{v116, v137}];
    goto LABEL_125;
  }

LABEL_126:

LABEL_127:
  if (![v108 containsObject:&off_1001DA0D0])
  {
    goto LABEL_133;
  }

  if ([(VOTElement *)v34 isElementFirstElement:1 orLastElement:0 withType:8])
  {
    v125 = sub_1000516CC(off_1001FDDD0, @"element.startOfFieldset.item", @"form start", v7);
    [v8 addObject:v125];

    [(VOTElement *)v34 setIsFirstItemInFieldset:1];
  }

  else
  {
    if (![(VOTElement *)v34 isElementFirstElement:0 orLastElement:1 withType:8])
    {
      goto LABEL_133;
    }

    v126 = sub_1000516CC(off_1001FDDD0, @"element.endOfFieldset.item", @"form end", v7);
    [v8 addObject:v126];
  }

  [v6 addObject:&off_1001DA070];
LABEL_133:
  if (![v108 containsObject:&off_1001DA0E8])
  {
    goto LABEL_139;
  }

  if ([(VOTElement *)v34 isElementFirstElement:1 orLastElement:0 withType:0x8000])
  {
    v127 = sub_1000516CC(off_1001FDDD0, @"element.startOfDefinitionList.item", 0, v7);
    [v8 addObject:v127];

    [(VOTElement *)v34 setIsFirstItemInDescriptionList:1];
  }

  else
  {
    if (![(VOTElement *)v34 isElementFirstElement:0 orLastElement:1 withType:0x8000])
    {
      goto LABEL_139;
    }

    v128 = sub_1000516CC(off_1001FDDD0, @"element.endOfDefinitionList.item", @"form end", v7);
    [v8 addObject:v128];
  }

  [v6 addObject:&off_1001DA070];
LABEL_139:
  if ([v108 containsObject:&off_1001DA100])
  {
    if ([(VOTElement *)v34 isElementFirstElement:1 orLastElement:0 withType:32])
    {
      v129 = sub_1000516CC(off_1001FDDD0, @"element.startOfTree.item", @"tree start", v7);
      [v8 addObject:v129];

      [(VOTElement *)v34 setIsFirstItemInTree:1];
LABEL_144:
      [v6 addObject:&off_1001DA070];
      goto LABEL_145;
    }

    if ([(VOTElement *)v34 isElementFirstElement:0 orLastElement:1 withType:32])
    {
      v130 = sub_1000516CC(off_1001FDDD0, @"element.endOfTree.item", @"tree end", v7);
      [v8 addObject:v130];

      goto LABEL_144;
    }
  }

LABEL_145:
  v131 = v8;

  return v8;
}

- (id)arrayOfTraitsAsStringsWithTraitOrder:(id)a3
{
  v4 = VOTSharedWorkspace;
  v5 = a3;
  v6 = [v4 selectedLanguage];
  v7 = [(VOTElement *)self arrayOfTraitsAsStringsWithTraitOrder:v5 language:v6];

  return v7;
}

- (id)_removeBadDeveloperDecisions:(id)a3
{
  v4 = a3;
  if ([(VOTElement *)self doesHaveTraits:kAXBackButtonTrait])
  {
    v5 = sub_1000511CC(off_1001FDDD0, @"back.button.element.text", @"back button");
    v6 = [v5 lowercaseString];

    if ([v4 length])
    {
      v7 = [v4 lowercaseString];
      v8 = [v6 containsString:v7];

      if (v8)
      {

        v4 = 0;
      }
    }
  }

  if (-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXImageTrait) && [v4 hasSuffix:@"image"])
  {
    v9 = [v4 substringToIndex:{objc_msgSend(v4, "length") - objc_msgSend(@"image", "length")}];

    v10 = +[NSCharacterSet whitespaceCharacterSet];
    v4 = [v9 stringByTrimmingCharactersInSet:v10];
  }

  if (-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXButtonTrait) && [v4 hasSuffix:@"button"])
  {
    v11 = [v4 substringToIndex:{objc_msgSend(v4, "length") - objc_msgSend(@"button", "length")}];

    v12 = +[NSCharacterSet whitespaceCharacterSet];
    v4 = [v11 stringByTrimmingCharactersInSet:v12];
  }

  return v4;
}

- (BOOL)isWesternTextForNonWesternLanguage:(id)a3 language:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1000379BC(v6);
  v8 = sub_100037A14();

  if (v7)
  {
    v6 = sub_100037AA8();
    v9 = [v5 rangeOfCharacterFromSet:v6];
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
  v10 = [v5 rangeOfCharacterFromSet:v11] != 0x7FFFFFFFFFFFFFFFLL;

  if (v7)
  {
LABEL_7:
  }

LABEL_9:

  return v10;
}

- (void)_applyLabelToRequest:(id)a3 includeBlockQuote:(BOOL)a4 language:(id)a5 isWebLanguageChoice:(BOOL)a6 interactOption:(int64_t)a7
{
  v8 = a6;
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = [(VOTElement *)self label];
  if (!v13 || !v8)
  {
    goto LABEL_12;
  }

  v15 = +[AXLanguageManager sharedInstance];
  v16 = [v15 dialectForLanguageID:v13];

  v17 = [v16 speakableCharacters];
  if (v17 && ![v16 canSpeakString:v14])
  {

    goto LABEL_8;
  }

  v18 = [(VOTElement *)self isWesternTextForNonWesternLanguage:v14 language:v13];

  if (v18)
  {
LABEL_8:
    v19 = VOTLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v47 = v13;
      v48 = 2112;
      v49 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Web told us to use: %@, but that dialect can't speak: %@", buf, 0x16u);
    }

    v13 = 0;
  }

LABEL_12:
  v20 = +[AXSettings sharedInstance];
  v21 = [v20 voiceOverPhoneticsFeedback];

  if ([v14 length] != 1 || (-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXKeyboardKeyTrait) ? (v22 = v21 == 0) : (v22 = 1), v22))
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    if (![v14 isAXAttributedString] || (objc_msgSend(v14, "attributeValueForKey:", UIAccessibilityTokenLanguage), (v23 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v23 = v13;
    }

    v24 = sub_100052450(v14, v23, 0);
  }

  v25 = [v24 length];
  if (v25)
  {
    v26 = v21 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  if (v25 && v21 == 2)
  {
    goto LABEL_31;
  }

  if (![v14 isAXAttributedString] || !objc_msgSend(v14, "hasAttributes"))
  {
    v45 = v23;
    v35 = v12;
    v36 = a7;
    v37 = v27;
    v38 = +[NSCharacterSet whitespaceCharacterSet];
    v39 = [v14 stringByTrimmingCharactersInSet:v38];

    v14 = [(VOTElement *)self _removeBadDeveloperDecisions:v39];

    if (![v14 length])
    {
      v27 = v37;
      v12 = v35;
      v23 = v45;
LABEL_44:
      if (!v27)
      {
        goto LABEL_52;
      }

      goto LABEL_45;
    }

    v27 = v37;
    if (v36 == 1)
    {
      v40 = @"InteractIn";
    }

    else
    {
      if (v36 != 2)
      {
        v12 = v35;
        goto LABEL_50;
      }

      v40 = @"InteractOut";
    }

    v12 = v35;
    v41 = sub_1000511CC(off_1001FDDD0, v40, 0);
    v42 = [NSString stringWithFormat:v41, v14];

    v14 = v42;
LABEL_50:
    v23 = v45;
    v43 = [v12 addString:v14 breakWords:1 withLanguage:v13 atIndex:0x7FFFFFFFFFFFFFFFLL];
    v44 = [v12 lastAction];
    [v44 setPerformPunctuationTranslation:1];

    v31 = [v12 lastAction];
    [v31 setReplaceCommas:0];
    goto LABEL_51;
  }

  [(VOTElement *)self _applyAttributesFromText:v14 toRequest:v12 withLanguage:v13 category:@"LABEL"];
  if (!v10)
  {
    goto LABEL_44;
  }

  v30 = [v14 attributeValueForKey:UIAccessibilityTokenBlockquoteLevel];
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = &off_1001DA118;
  }

  v32 = sub_1000511CC(off_1001FDDD0, @"blockquote.level", 0);
  v33 = [NSString stringWithFormat:v32, v31];
  v34 = [v12 addString:v33];

LABEL_51:
  if (!v27)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (v21 != 2)
  {
    LODWORD(v29) = 0.75;
    [v12 addPause:v29];
  }

LABEL_31:
  v28 = [v12 addString:v24];
LABEL_52:
}

- (void)_addHeaderElement:(id)a3 toRequest:(id)a4
{
  v21 = a4;
  v6 = a3;
  v7 = [v6 label];
  v8 = +[NSCharacterSet whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  v10 = [v6 value];

  v11 = +[NSCharacterSet whitespaceCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  v13 = __AXStringForVariables();
  if ([v13 length])
  {
    v14 = [(VOTElement *)self language];
    v15 = [v21 addString:v13 withLanguage:v14];

    v16 = [v21 lastAction];
    [v16 setPerformPunctuationTranslation:1];

    v17 = [v21 lastAction];
    [v17 setReplaceCommas:0];
  }

  if ([VOTSharedWorkspace typingPitchChangeEnabled])
  {
    v18 = [v21 lastAction];
    LODWORD(v19) = 1062836634;
    v20 = [NSNumber numberWithFloat:v19];
    [v18 setObject:v20 forVariant:32];
  }
}

- (void)applyRowHeadersToRequest:(id)a3
{
  v4 = a3;
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

        [(VOTElement *)self _addHeaderElement:*(*(&v10 + 1) + 8 * v9) toRequest:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)applyHeaderElementsToRequest:(id)a3
{
  v4 = a3;
  if ([(VOTElement *)self supportsHeaderElementOutput])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 elementHeadersForOutput];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if (([v10 isEqual:self] & 1) == 0)
          {
            [(VOTElement *)self _addHeaderElement:v10 toRequest:v4];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_applyValueToRequest:(id)a3 options:(unint64_t)a4 lastSeenLineAndColumn:(id)a5 language:(id)a6
{
  v9 = ~a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(VOTElement *)self doesHaveTraits:kAXIsEditingTrait];
  v14 = [(VOTElement *)self doesHaveTraits:kAXTextAreaTrait];
  v15 = [(VOTElement *)self doesHaveTraits:kAXTextEntryTrait];
  if ((*&v9 & 0x80040) == 0)
  {
    v16 = v11 ? v14 : 0;
    if ((v13 | v16))
    {
      if (v13)
      {
        v17 = [(VOTElement *)self selectedTextRange];
      }

      else
      {
        if (!v16)
        {
          v26 = 0;
          v25 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_33;
        }

        v17 = [(VOTElement *)self rangeForLineNumberAndColumn:v11];
      }

      v25 = v17;
      v26 = v18;
LABEL_33:
      v38 = [(VOTElement *)self value];
      if (v25 + v26 >= [v38 length])
      {
        v39 = 0;
      }

      else
      {
        v39 = v25;
      }

      v40 = [v38 substringFromIndex:v39];

      v41 = [v10 addString:v40 withLanguage:v12];
      v42 = [v10 lastAction];
      [v42 setPerformPunctuationTranslation:1];

      v43 = [v10 lastAction];
      [v43 setReplaceCommas:1];

      v44 = [v10 lastAction];
      [v44 setObject:kCFBooleanTrue forVariant:50];

      goto LABEL_68;
    }
  }

  v19 = kAXWebContentTrait;
  if ([(VOTElement *)self doesHaveAllTraits:kAXWebContentTrait | kAXHeaderTrait])
  {
    v20 = [(VOTElement *)self label];
    if (v20)
    {

      goto LABEL_68;
    }

    v21 = [(VOTElement *)self value];
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

  v23 = [(VOTElement *)self value];
  if ([(VOTElement *)self isReadingContent])
  {
    [(VOTElement *)self updatePageContent];
    v24 = [(VOTElement *)self pageContent];
LABEL_22:
    v28 = v24;

    v23 = v28;
    goto LABEL_23;
  }

  if ([v23 length] >= 0xC351)
  {
    v27 = VOTLogElement();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_10012E118(v27);
    }

    v24 = [v23 substringWithRange:{0, 50000}];
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

  v33 = [NSScanner localizedScannerWithString:v23];
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

    v23 = v45;
LABEL_39:
  }

LABEL_41:
  v46 = [(VOTElement *)self applySelectedText:v10 language:v12, v75, v76];
  if ([v23 length] && (v46 & 1) == 0)
  {
    if ([v23 isAXAttributedString])
    {
      v47 = v23;
      if ([(VOTElement *)self doesHaveTraits:kAXLinkTrait])
      {
        v90 = UIAccessibilityTokenLink;
        v48 = [NSArray arrayWithObjects:&v90 count:1];
        [v47 removeAttributes:v48];
      }

      v49 = UIAccessibilityTokenSpeakValuePartOnDifference;
      if ([v47 hasAttribute:UIAccessibilityTokenSpeakValuePartOnDifference])
      {
        v78 = v23;
        v79 = v11;
        v80 = v10;
        v50 = +[NSMutableSet set];
        v51 = [v47 length];
        v85[0] = _NSConcreteStackBlock;
        v85[1] = 3221225472;
        v85[2] = sub_1000BA6CC;
        v85[3] = &unk_1001C7610;
        v52 = v50;
        v86 = v52;
        v77 = v47;
        v53 = v47;
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
              v60 = [(VOTElement *)self previousSpokenValueParts];
              v61 = [v60 containsObject:v59];

              if (v61)
              {
                v62 = [v53 string];
                v63 = [v62 rangeOfString:v59];
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
        v11 = v79;
        v10 = v80;
        v23 = v78;
        v47 = v77;
      }

      [(VOTElement *)self _applyAttributesFromText:v47 toRequest:v10 withLanguage:v12 category:@"VALUE"];
    }

    else
    {
      v66 = [v10 addString:v23 withLanguage:v12];
      v67 = [v10 lastAction];
      [v67 setPerformPunctuationTranslation:1];

      v47 = [v10 lastAction];
      [v47 setReplaceCommas:v15];
    }
  }

  if (-[VOTElement doesHaveTraits:](self, "doesHaveTraits:", kAXImageTrait) && ![v23 length])
  {
    LOWORD(v88) = 160;
    v68 = [NSString stringWithCharacters:&v88 length:1];
    v69 = [v10 addString:v68];

    v70 = [v10 lastAction];
    v71 = [(VOTElement *)self uiElement];
    [v70 setObject:objc_msgSend(v71 forVariant:{"axElement"), 67}];
  }

  if ([(VOTElement *)self readingContentCausesPageTurn])
  {
    v72 = [v10 lastAction];
    v73 = kCFBooleanTrue;
    [v72 setObject:kCFBooleanTrue forVariant:59];
  }

  else
  {
    v73 = kCFBooleanTrue;
  }

  v74 = [v10 lastAction];
  [v74 setObject:v73 forVariant:37];

LABEL_68:
}

- (BOOL)applySelectedText:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait]&& (v8 = [(VOTElement *)self selectedTextRange], v9))
  {
    v10 = [(VOTElement *)self valueForRange:v8, v9];
    v11 = [v10 length];
    v12 = v11 != 0;
    if (v11)
    {
      v13 = sub_1000516CC(off_1001FDDD0, @"element.selected.text", 0, v7);
      v14 = [NSString stringWithFormat:@"%@ %@", v10, v13];
      v15 = [v6 addString:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_applyHasPopupAttribute:(id)a3 withLanguage:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(VOTElement *)self popupValue];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"menu"])
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

    v10 = sub_1000516CC(off_1001FDDD0, v9, 0, v6);
    v11 = [v13 addString:v10 withLanguage:v6];

    v12 = [v13 lastAction];
    [v12 setIsVoiceOverGeneratedContent:1];
  }

LABEL_13:
}

- (void)_applyTraitsToRequest:(id)a3 options:(unint64_t)a4 numHeaderActions:(unint64_t)a5 language:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = +[AXSettings sharedInstance];
  v12 = [v11 voiceOverTraitFeedback] == 2;

  v13 = [objc_allocWithZone(NSMutableArray) init];
  v14 = [(VOTElement *)self arrayOfTraitsAsStringsWithTraitOrder:v13 language:v10];
  v15 = [v14 count];
  if (v15 != [v13 count])
  {
    v30 = v14;
    v31 = v13;
    _AXAssert();
  }

  v16 = [VOTSharedWorkspace typingPitchChangeEnabled];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000BAD38;
  v32[3] = &unk_1001CA648;
  v17 = v13;
  v33 = v17;
  v38 = (a4 & 4) != 0;
  v39 = (a4 & 0x80000000) != 0;
  v18 = v9;
  v34 = v18;
  v35 = self;
  v19 = v10;
  v36 = v19;
  v37 = a4;
  v40 = v12;
  v41 = v16;
  [v14 enumerateObjectsUsingBlock:v32];
  v20 = kAXWebContentTrait;
  if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait]&& [(VOTElement *)self isComboBox])
  {
    v21 = sub_1000516CC(off_1001FDDD0, @"element.combobox", 0, v19);
    v22 = [v18 addString:v21 withLanguage:v19];

    v23 = [v18 lastAction];
    [v23 setIsVoiceOverGeneratedContent:1];
  }

  if ([(VOTElement *)self doesHaveTraits:v20]&& [(VOTElement *)self isInDescriptionDefinition])
  {
    v24 = sub_1000516CC(off_1001FDDD0, @"element.definition", 0, v19);
    v25 = [v18 addString:v24 withLanguage:v19];

    v26 = [v18 lastAction];
    [v26 setIsVoiceOverGeneratedContent:1];
  }

  if ([(VOTElement *)self doesHaveTraits:v20]&& [(VOTElement *)self isInDescriptionTerm])
  {
    v27 = sub_1000516CC(off_1001FDDD0, @"element.definition.term", 0, v19);
    v28 = [v18 addString:v27 withLanguage:v19];

    v29 = [v18 lastAction];
    [v29 setIsVoiceOverGeneratedContent:1];
  }
}

- (void)_addErrorMessageElement:(id)a3 toRequest:(id)a4
{
  v18 = a4;
  v6 = a3;
  v7 = [v6 label];
  v8 = +[NSCharacterSet whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  v10 = [v6 value];

  v11 = +[NSCharacterSet whitespaceCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  v13 = __AXStringForVariables();
  if ([v13 length])
  {
    v14 = [(VOTElement *)self language];
    v15 = [v18 addString:v13 withLanguage:v14];

    v16 = [v18 lastAction];
    [v16 setPerformPunctuationTranslation:1];

    v17 = [v18 lastAction];
    [v17 setReplaceCommas:0];
  }
}

- (void)_applyInvalidStatus:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VOTElement *)self invalidStatus];
  if ([v8 length] && (objc_msgSend(v8, "isEqualToString:", @"false") & 1) == 0)
  {
    if ([v8 isEqualToString:@"grammar"])
    {
      v9 = off_1001FDDD0;
      v10 = @"invalidStatusGrammar";
    }

    else
    {
      v11 = [v8 isEqualToString:@"spelling"];
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

    v12 = sub_1000516CC(v9, v10, 0, v7);
    if ([v12 length])
    {
      LODWORD(v13) = 1061997773;
      [v6 addPause:v13];
      v14 = [v6 addString:v12 withLanguage:v7];
      v15 = [(VOTElement *)self errorMessageElements];
      if ([v15 count])
      {
        LODWORD(v16) = 1061997773;
        [v6 addPause:v16];
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = v15;
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

            [(VOTElement *)self _addErrorMessageElement:*(*(&v23 + 1) + 8 * v21) toRequest:v6, v23];
            v21 = v21 + 1;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v19);
      }

      v22 = [v6 lastAction];
      [v22 setIsVoiceOverGeneratedContent:0];
    }
  }
}

- (void)applyInvalidStatusToRequest:(id)a3
{
  v6 = 0;
  v4 = a3;
  v5 = [(VOTElement *)self _resolvedOutputLanguage:&v6];
  [(VOTElement *)self _applyInvalidStatus:v4 language:v5];
}

- (void)_applyCurrentStatus:(id)a3 language:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(VOTElement *)self currentStatus];
  if ([v7 length] && (objc_msgSend(v7, "isEqualToString:", @"false") & 1) == 0)
  {
    if ([v7 isEqualToString:@"page"])
    {
      v8 = off_1001FDDD0;
      v9 = @"currentStatusPage";
    }

    else if ([v7 isEqualToString:@"step"])
    {
      v8 = off_1001FDDD0;
      v9 = @"currentStatusStep";
    }

    else if ([v7 isEqualToString:@"location"])
    {
      v8 = off_1001FDDD0;
      v9 = @"currentStatusLocation";
    }

    else if ([v7 isEqualToString:@"date"])
    {
      v8 = off_1001FDDD0;
      v9 = @"currentStatusDate";
    }

    else
    {
      v10 = [v7 isEqualToString:@"time"];
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

    v11 = sub_1000516CC(v8, v9, 0, v6);
    if ([v11 length])
    {
      v12 = [v14 addString:v11 withLanguage:v6];
      v13 = [v14 lastAction];
      [v13 setIsVoiceOverGeneratedContent:1];
    }
  }
}

- (void)_applyDatetimeAttribute:(id)a3 language:(id)a4
{
  v10 = a3;
  v5 = [(VOTElement *)self formattedDatetime];
  if (v5)
  {
    v6 = [v10 addString:v5];
    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      v7 = [v10 lastAction];
      LODWORD(v8) = 1062836634;
      v9 = [NSNumber numberWithFloat:v8];
      [v7 setObject:v9 forVariant:32];
    }
  }
}

- (void)_applySortDirection:(id)a3 language:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(VOTElement *)self sortDirection];
  if (![v7 length])
  {
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"AXAscendingSortDirection"])
  {
    v8 = @"sortUp";
  }

  else
  {
    if (![v7 isEqualToString:@"AXDescendingSortDirection"])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = @"sortDown";
  }

  v9 = sub_1000516CC(off_1001FDDD0, v8, 0, v6);
LABEL_8:
  if ([v9 length])
  {
    v10 = [v12 addString:v9 withLanguage:v6];
    v11 = [v12 lastAction];
    [v11 setIsVoiceOverGeneratedContent:1];
  }

LABEL_11:
}

- (_NSRange)_brailleLineRangeForDescription:(id)a3 position:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 lineRangeForRange:{v7, 0}];
  v10 = v9;
  if (v9)
  {
    v11 = +[NSCharacterSet newlineCharacterSet];
    v12 = [v11 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", &v8[v10 - 1])}];

    v10 -= v12 & 1;
  }

  v13 = v8;
  v14 = v10;
  result.length = v14;
  result.location = v13;
  return result;
}

- (id)_copyMathTextualInformationWithBrailleLineRange:(_NSRange *)a3 brailleDescriptionRange:(_NSRange *)a4 position:(unint64_t)a5 rotorSelection:(id)a6 shouldPreferRotorSelection:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = [(VOTElement *)self mathBrailleDescription];
  v14 = [v13 string];
  if ([v14 length])
  {
    v15 = [v14 length];
    a4->location = 0;
    a4->length = v15;
    a3->location = [(VOTElement *)self _brailleLineRangeForDescription:v14 position:a5];
    a3->length = v16;
    if (v12)
    {
      v17 = v12;
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
      v20 = [v18 initWithString:v14 attributes:v19];

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
      v36 = a3;
      [v13 enumerateAttributesUsingBlock:v31];
      if (v7 && (v38[3] & 1) == 0 && v42[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        a3->location = [(VOTElement *)self _brailleLineRangeForDescription:v14 position:?];
        a3->length = v23;
      }

      v24 = [NSMutableAttributedString alloc];
      v25 = [v22 attributedSubstringFromRange:{a3->location, a3->length}];
      v26 = [v24 initWithAttributedString:v25];

      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v27 = [NSMutableAttributedString alloc];
      v28 = [v14 substringWithRange:{a3->location, a3->length}];
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

- (void)addTextualInformationToBrailleLine:(id)a3 forPosition:(unint64_t)a4 rotorSelection:(id)a5 shouldPreferRotorSelection:(BOOL)a6 lineRange:(_NSRange *)a7 descriptionRange:(_NSRange *)a8 lineRangeKnown:(BOOL)a9 isNewTouchContainer:(BOOL)a10 previousElement:(id)a11
{
  LOWORD(v12) = 257;
  LOWORD(v11) = __PAIR16__(a10, a9);
  [VOTElement addTextualInformationToBrailleLine:"addTextualInformationToBrailleLine:forPosition:rotorSelection:shouldPreferRotorSelection:lineRange:descriptionRange:lineRangeKnown:isNewTouchContainer:previousElement:updateValue:singleLine:" forPosition:a3 rotorSelection:a4 shouldPreferRotorSelection:a5 lineRange:a6 descriptionRange:a7 lineRangeKnown:a8 isNewTouchContainer:v11 previousElement:a11 updateValue:v12 singleLine:?];
}

- (void)addTextualInformationToBrailleLine:(id)a3 forPosition:(unint64_t)a4 rotorSelection:(id)a5 shouldPreferRotorSelection:(BOOL)a6 lineRange:(_NSRange *)a7 descriptionRange:(_NSRange *)a8 lineRangeKnown:(BOOL)a9 isNewTouchContainer:(BOOL)a10 previousElement:(id)a11 updateValue:(BOOL)a12 singleLine:(BOOL)a13
{
  v13 = a6;
  v170 = a3;
  v17 = a5;
  v168 = a11;
  v205 = xmmword_10017E110;
  v206 = xmmword_10017E110;
  v166 = v17;
  if ([(VOTElement *)self doesHaveTraits:kAXMathEquationTrait])
  {
    v18 = [(VOTElement *)self _copyMathTextualInformationWithBrailleLineRange:&v206 brailleDescriptionRange:&v205 position:a4 rotorSelection:v17 shouldPreferRotorSelection:v13];
    v19 = v206;
    if (*(&v19 + 1) + v19 <= [v18 length])
    {
      [v18 addAttribute:kSCROEditableTextAttribute value:&__kCFBooleanFalse range:v206];
    }

    goto LABEL_179;
  }

  v165 = a4;
  v171 = self;
  if ([(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | kAXIsEditingTrait]&& ![(VOTElement *)self shouldIgnoreTextEditingTrait])
  {
    v31 = [(VOTElement *)self selectedTextRange];
    obj = v32;
    range1 = v31;
    v33 = [(VOTElement *)self valueWithUpdate:a12];
    if ([(__CFString *)v33 isAXAttributedString])
    {
      v34 = v33;
      if (([(__CFString *)v34 hasAttribute:UIAccessibilityTokenPlaceholder]& 1) != 0)
      {
        v35 = &stru_1001CBF90;
      }

      else
      {
        v35 = [(__CFString *)v34 string];
      }

      v36 = a4;
    }

    else
    {
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = &stru_1001CBF90;
      }

      v36 = a4;
    }

    v38 = [(__CFString *)v35 length];
    v205.location = 0;
    v205.length = v38;
    if (a13)
    {
      if (v38 >= v36)
      {
        v39 = v36;
      }

      else
      {
        v39 = v38;
      }

      v40 = [(__CFString *)v35 lineRangeForRange:v39, 0];
      length = v41;
      *&v206 = v40;
      *(&v206 + 1) = v41;
      if (v41)
      {
LABEL_37:
        v43 = +[NSCharacterSet newlineCharacterSet];
        v44 = v206;
        v45 = [v43 characterIsMember:{-[__CFString characterAtIndex:](v35, "characterAtIndex:", v206 + length - 1)}];

        if (v45)
        {
          *(&v206 + 1) = --length;
        }

LABEL_41:
        range1_8a = [(__CFString *)v35 substringWithRange:v44, length];
        v46 = 0;
        if (range1 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v47 = a12;
        }

        else
        {
          v47 = a12;
          if (obj + range1 >= v44)
          {
            v46 = obj + range1 <= length + v44;
          }
        }

        v48 = [objc_allocWithZone(NSMutableAttributedString) initWithString:range1_8a];
        v49 = [(VOTElement *)v171 valueWithUpdate:v47];
        [(VOTElement *)v171 _applyBrailleTextFormattingAndInlineCompletionOptions:v49 attributedString:v48 brailleLineRange:v44 rangeOffset:length, 0];

        v50 = [[AXAttributedString alloc] initWithStringOrAttributedString:v48];
        v204 = 0;
        v51 = sub_1000539B8(v50, &v204);
        v52 = v204;

        v53 = [NSMutableAttributedString alloc];
        v54 = [v51 attributedString];
        v18 = [v53 initWithAttributedString:v54];

        if (v46)
        {
          [v18 addAttribute:kSCROEditableTextAttribute value:&__kCFBooleanTrue range:{0, objc_msgSend(v18, "length")}];
        }

        v55 = [objc_allocWithZone(NSMutableAttributedString) initWithString:@" "];
        [v55 addAttribute:kSCROEditableTextPaddingAttribute value:&__kCFBooleanTrue range:{0, 1}];
        [v18 appendAttributedString:v55];
        if ([(VOTElement *)v171 doesHaveTraits:kAXSecureTextFieldTrait])
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

  v163 = [VOTSharedWorkspace selectedLanguage];
  range1_8 = [objc_allocWithZone(NSMutableString) init];
  if (![(VOTElement *)self isReadingContent])
  {
    v159 = [(VOTElement *)self touchContainer];
    v27 = [VOTSharedWorkspace containerOutputFeedback];
    if (([v159 touchContainerShouldOutputBraille] | (v27 >> 4) & 1) == 1 && a10)
    {
      v29 = [v159 label];
      if ([v29 length])
      {
        if ([v29 isAXAttributedString])
        {
          v30 = [v29 string];
          [range1_8 appendFormat:@"%@ ", v30];
        }

        else
        {
          [range1_8 appendFormat:@"%@ ", v29];
        }
      }
    }

    v62 = [(VOTElement *)self label];
    if ([v62 isAXAttributedString])
    {
      v63 = v62;
      v64 = [v63 attributeValueForKey:UIAccessibilityTokenBrailleOverride];
      v62 = v63;
      if ([v64 length])
      {
        v62 = v64;
      }
    }

    v162 = [(VOTElement *)self _removeBadDeveloperDecisions:v62];

    v157 = [(VOTElement *)self _languageRangesForText:v162];
    v65 = [v162 length];
    if (v65)
    {
      v66 = v65;
      v67 = self;
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

        v164 = location;
      }

      else
      {
        v164 = 0x7FFFFFFFFFFFFFFFLL;
        v160 = 0;
      }

      v70 = range1_8;
      if ([v162 isAXAttributedString])
      {
        v71 = [v162 string];
        v70 = range1_8;
        [range1_8 appendFormat:@"%@ ", v71];

        v67 = self;
      }

      else
      {
        [range1_8 appendFormat:@"%@ ", v162];
      }
    }

    else
    {
      v160 = 0;
      v164 = 0x7FFFFFFFFFFFFFFFLL;
      v67 = self;
      v70 = range1_8;
    }

    range1a = [v70 length];
    if ([VOTSharedWorkspace navigationStyleHonorsGroups] && -[VOTElement includeRoleOnlyForGroupNavigation](v67, "includeRoleOnlyForGroupNavigation") && -[VOTElement isAccessibleGroup](v67, "isAccessibleGroup"))
    {
      v72 = [(VOTElement *)v67 roleDescriptionWithInteractOption:0 language:0];
      if ([v72 length])
      {
        [range1_8 appendFormat:@"%@ ", v72];
      }

      v67 = self;
    }

    if ([(VOTElement *)v67 doesHaveTraits:kAXImageTrait])
    {
      v73 = [(VOTElement *)v67 photoDescription];
      if ([v73 length])
      {
        [range1_8 appendFormat:@"%@ ", v73];
      }

      v67 = self;
    }

    if ([(VOTElement *)v67 doesHaveTraits:kAXToggleTrait])
    {
      v74 = 0;
    }

    else
    {
      v74 = [(VOTElement *)v67 valueWithUpdate:a12];

      v67 = self;
    }

    v158 = v74;
    v75 = [(VOTElement *)v67 _languageRangesForText:v74];
    if ([v74 length])
    {
      v76 = [v74 isAXAttributedString];
      v77 = v74;
      v78 = v77;
      if (v76)
      {
        v79 = [v77 attributeValueForKey:UIAccessibilityTokenBrailleOverride];
        v80 = v79;
        if (v79)
        {
          v81 = v79;
        }

        else
        {
          v81 = [v78 string];
        }

        v78 = v81;
      }

      v82 = self;
      v161 = [range1_8 length];
      [range1_8 appendFormat:@"%@ ", v78];
      [range1_8 length];
    }

    else
    {
      v161 = 0x7FFFFFFFFFFFFFFFLL;
      v82 = self;
    }

    v83 = [(VOTElement *)v82 generateCVMLContentForBraille];
    [range1_8 appendString:v83];

    v84 = [(VOTElement *)self customContent];
    v85 = [VOTSharedWorkspace customContentImportance];
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    obja = v84;
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
          if ([v89 importance] == v85)
          {
            v90 = [v89 label];
            v91 = [v89 value];
            [range1_8 appendFormat:@"%@, %@ ", v90, v91];
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
          v98 = [v97 rangeValue];
          v100 = v99;

          v101 = [v96 objectAtIndexedSubscript:0];
          v208[0] = v101;
          v102 = [NSValue valueWithRange:&range1a[v98], v100];
          v208[1] = v102;
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
    v104 = [(VOTElement *)v171 arrayOfTraitsAsStrings];
    v105 = [v104 countByEnumeratingWithState:&v192 objects:v207 count:16];
    if (v105)
    {
      v106 = *v193;
      do
      {
        for (k = 0; k != v105; k = k + 1)
        {
          if (*v193 != v106)
          {
            objc_enumerationMutation(v104);
          }

          v108 = [*(*(&v192 + 1) + 8 * k) mutableCopyWithZone:0];
          v109 = +[VOTBrailleManager manager];
          [v109 applyBrailleSubstitutions:v108];

          [range1_8 appendFormat:@"%@ ", v108];
        }

        v105 = [v104 countByEnumeratingWithState:&v192 objects:v207 count:16];
      }

      while (v105);
    }

    v110 = +[AXSettings sharedInstance];
    v111 = [v110 voiceOverListAnnotation];

    if ([(VOTElement *)v171 shouldIncludeRowRangeInDescription]|| [(VOTElement *)v171 containedIn:2])
    {
      v112 = 1;
    }

    else
    {
      v112 = [(VOTElement *)v171 hasExplicitRowInfo];
    }

    v114 = [(VOTElement *)v171 rowRange];
    if (v114 != 0x7FFFFFFF)
    {
      v115 = v113;
      if (v113)
      {
        if ((v112 | (v111 >> 4) & 1) == 1)
        {
          v116 = sub_1000516CC(off_1001FDDD0, @"one.of.many.abbreviated", 0, v163);
          v156 = v115;
          v117 = AXCFormattedString();
          if (([range1_8 containsString:{v117, v114 + 1, v156}] & 1) == 0)
          {
            [range1_8 appendFormat:@"%@ ", v117];
          }
        }
      }
    }

    v118 = [(VOTElement *)v171 expandedStatus];
    if (v118)
    {
      if (v118 == 1)
      {
        v119 = @"expanded";
      }

      else
      {
        v119 = @"collapsed";
      }

      v120 = sub_1000516CC(off_1001FDDD0, v119, 0, v163);
      [range1_8 appendFormat:@"%@ ", v120];
    }

    v121 = +[AXSettings sharedInstance];
    v122 = ([v121 voiceOverActionsFeedback] & 0x10) == 0;

    v123 = v171;
    if (v122)
    {
      goto LABEL_147;
    }

    v123 = v171;
    if ([(VOTElement *)v171 _ignoreCustomActionIndicator:v168 withElement:v171])
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
    v124 = [(VOTElement *)v171 customRotorActions];
    v179[0] = _NSConcreteStackBlock;
    v179[1] = 3221225472;
    v179[2] = sub_1000BD4D0;
    v179[3] = &unk_1001CA698;
    v179[4] = &v184;
    v179[5] = &v180;
    v179[6] = &v188;
    [v124 enumerateObjectsUsingBlock:v179];

    v123 = v171;
    if (![(VOTElement *)v171 doesHaveTraits:kAXLaunchIconTrait])
    {
      v125 = v189[3];
      if (v125 != v181[3])
      {
LABEL_139:
        if (v125)
        {
          v126 = sub_1000511CC(off_1001FDDD8, @"custom.actions.hint.short", 0);
          [range1_8 appendFormat:@" %@", v126];

          v123 = v171;
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

          v129 = sub_1000516CC(off_1001FDDD0, v128, 0, v163);
          v130 = [NSString localizedStringWithFormat:v129, v185[3]];

          [range1_8 appendFormat:@" %@", v130];
          v123 = v171;
        }

        goto LABEL_146;
      }

      if (![(VOTElement *)v171 isAccessibleGroup])
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
    v131 = [(VOTElement *)v123 supplementalBrailleDescription];
    v132 = [v131 length] == 0;

    if (!v132)
    {
      v133 = off_1001FDDD0;
      v134 = [VOTSharedWorkspace selectedLanguage];
      v135 = sub_1000516CC(v133, @"braille.supplemental.description.format", 0, v134);
      v136 = [(VOTElement *)v171 supplementalBrailleDescription];
      [range1_8 appendFormat:v135, v136];
    }

    v24 = v171;
    goto LABEL_150;
  }

  [(VOTElement *)self updatePageContent];
  v20 = [(VOTElement *)self pageContent];
  v21 = [(VOTElement *)self _languageRangesForText:v20];
  v22 = [v20 length];
  if (v22)
  {
    v23 = v22;
    v24 = self;
    v211.location = [(VOTElement *)self textMarkerSelectionRange];
    v213.location = 0;
    v213.length = v23;
    v25 = NSIntersectionRange(v211, v213);
    v164 = v25.location;
    v160 = v25.length;
    if ([v20 isAXAttributedString])
    {
      v26 = [v20 string];
      [range1_8 appendString:v26];

      v24 = self;
    }

    else
    {
      [range1_8 appendString:v20];
    }

    if (!v25.length || v25.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v164 = [(VOTElement *)v24 selectedTextRange];
      v160 = v37;
    }
  }

  else
  {
    v160 = 0;
    v164 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = self;
  }

  v161 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_150:
  v137 = [(VOTElement *)v24 roleDescription];
  if ([v137 length] && objc_msgSend(v137, "isAXAttributedString"))
  {
    v138 = v137;
    v139 = [v138 attributeValueForKey:UIAccessibilityTokenBrailleOverride];
    v137 = v138;
    if ([v139 length])
    {
      v137 = v139;
    }

    [range1_8 appendFormat:@"%@ ", v137];
  }

  if ([range1_8 length] >= 2 && objc_msgSend(range1_8, "characterAtIndex:", objc_msgSend(range1_8, "length") - 1) == 32)
  {
    [range1_8 replaceCharactersInRange:objc_msgSend(range1_8 withString:{"length") - 1, 1, &stru_1001CBF90}];
  }

  v140.location = [range1_8 length];
  v140.length = v140.location;
  v205.location = 0;
  v205.length = v140.location;
  if (a7 && a9 && a7->length)
  {
    v206 = *a7;
    v216.length = *(&v206 + 1);
    v216.location = v206 + v161;
    v140.location = 0;
    v143 = NSIntersectionRange(v140, v216);
    v142 = v143.length;
    v141 = v143.location;
  }

  else
  {
    if (v140.location >= v165)
    {
      v144 = v165;
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
  if (v164 == 0x7FFFFFFFFFFFFFFFLL || v164 + v160 > [v152 length])
  {
    if (v165 + 1 >= &v145[v146])
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
  v155 = [(VOTElement *)v171 valueWithUpdate:a12];
  [(VOTElement *)v171 _applyBrailleTextFormattingAndInlineCompletionOptions:v155 attributedString:v18 brailleLineRange:v145 rangeOffset:v146, v161];

  [(VOTElement *)v171 _applyLanguageTokens:v21 attributedString:v18];
LABEL_179:
  [v170 appendAttributedString:v18];
  if (a7)
  {
    *a7 = v206;
  }

  if (a8)
  {
    *a8 = v205;
  }
}

- (void)_applyBrailleTextFormattingAndInlineCompletionOptions:(id)a3 attributedString:(id)a4 brailleLineRange:(_NSRange)a5 rangeOffset:(unint64_t)a6
{
  length = a5.length;
  location = a5.location;
  v10 = a3;
  v11 = a4;
  if ([v10 isAXAttributedString])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BD6AC;
    v16[3] = &unk_1001CA6C0;
    v18 = a6;
    v19 = location;
    v20 = length;
    v12 = v11;
    v17 = v12;
    [v10 enumerateAttributesUsingBlock:v16];
    v13 = +[AXSettings sharedInstance];
    v14 = [v13 voiceOverInlineTextCompletionAppearanceFeedback];

    if ((v14 & 0x10) == 0)
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

- (void)_applyLanguageTokens:(id)a3 attributedString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = kSCROLanguageAttribute;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = +[NSNull null];
        v14 = [v12 isEqual:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v11 objectAtIndexedSubscript:1];
          v16 = [v15 rangeValue];
          v18 = v17;

          if (&v16[v18] <= [v6 length])
          {
            [v6 addAttribute:v19 value:v12 range:{v16, v18}];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (id)_languageRangesForText:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v6 = &__NSArray0__struct;
    goto LABEL_15;
  }

  v5 = [(VOTElement *)self language];
  if (v5)
  {
  }

  else
  {
    v7 = [VOTSharedWorkspace selectedLanguage];

    if (!v7)
    {
      v10 = [VOTOutputRequest stringShouldSeparateDueToLanguage:v4 language:0 keyboardLanguageHint:0];
      if (v10)
      {
        goto LABEL_7;
      }
    }
  }

  v30[1] = @"language";
  v31[0] = v4;
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

  v4 = v22;
LABEL_15:

  return v6;
}

- (void)_applyLinkRelationshipType:(id)a3 language:(id)a4
{
  v8 = a3;
  v5 = [(VOTElement *)self linkRelationshipType];
  v6 = SCRCLinkRelationshipStringForType();
  if ([v6 length])
  {
    v7 = [v8 addString:v6];
  }
}

- (void)_applyExpandedStatus:(id)a3 language:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(VOTElement *)self expandedStatus];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = @"expanded";
    }

    else
    {
      v8 = @"collapsed";
    }

    v9 = sub_1000516CC(off_1001FDDD0, v8, 0, v6);
    v10 = [v11 addString:v9 withLanguage:v6];
  }
}

- (void)_applySelectedTrait:(id)a3 language:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(VOTElement *)self traits];
  if ((kAXSelectedTrait & v7) != 0)
  {
    v8 = sub_1000516CC(off_1001FDDD0, @"element.selected.text", @"selected", v6);
    if ([(VOTElement *)self doesHaveTraits:kAXPickerElementTrait])
    {
      v9 = [v14 outputActions];
      v10 = [v9 count];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v14 addString:v8 breakWords:0 withLanguage:v6 atIndex:v10];
    v12 = [v14 outputActions];
    v13 = [v12 objectAtIndexedSubscript:v10];
    [v13 setIsVoiceOverGeneratedContent:1];
  }
}

- (id)_resolvedOutputLanguage:(BOOL *)a3
{
  v5 = [VOTSharedWorkspace selectedLanguage];
  if (-[VOTElement isInStatusBar](self, "isInStatusBar") && ([VOTSharedWorkspace systemSpokenLanguage], v6 = objc_claimAutoreleasedReturnValue(), AXLanguageCanonicalFormToGeneralLanguage(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "hasPrefix:", v7), v7, v6, !v8))
  {
    v17 = 0;
  }

  else
  {
    if (!v5)
    {
      v9 = [(VOTElement *)self language];
      v5 = AXLanguageConvertToCanonicalForm();

      if ([(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
      {
        v10 = +[AXSettings sharedInstance];
        v11 = [v10 voiceOverLanguageDetectionEnabled];

        if (v11)
        {
          v12 = [VOTSharedWorkspace websiteLanguageMappingOverrides];
          if ([v12 count])
          {
            v13 = [(VOTElement *)self webAreaURL];
            v14 = [v13 absoluteString];
            v15 = [v12 objectForKey:v14];

            if (v15)
            {
              v16 = v15;

              v5 = v16;
            }

            else
            {
              *a3 = 1;
            }
          }

          else
          {
            *a3 = 1;
          }
        }

        else
        {
          v12 = v5;
          v5 = 0;
        }
      }
    }

    v5 = v5;
    v17 = v5;
  }

  return v17;
}

- (void)addTextualInformationToRequest:(id)a3 options:(unint64_t)a4 dataPackage:(id)a5
{
  v284 = a3;
  v274 = a5;
  v286 = [v274 lastSeenContextDescriptors];
  v271 = [v274 lastSeenLineAndColumn];
  v270 = (a4 & 0x102) != 0;
  v326 = 0;
  v327 = &v326;
  v276 = (a4 & 0x40108) == 0;
  v328 = 0x2020000000;
  v329 = 0;
  v273 = (a4 & 0x2001180) == 0;
  v322 = 0;
  v323 = &v322;
  v324 = 0x2020000000;
  v325 = 0;
  v6 = [v284 outputActions];
  v269 = [v6 count];

  v7 = a4;
  v8 = (a4 & 0x2004188);
  if ((a4 & 0x1000000) != 0 && [(VOTElement *)self doesHaveTraits:kAXWebContentTrait])
  {
    v9 = [(VOTElement *)self roleDescription];
    v8 = [v9 length];

    v7 = a4;
  }

  v275 = v8 == 0;
  if ((v7 & 0x100000) != 0)
  {
    v11 = [(VOTElement *)self aspectMask];
    v267 = (v11 & 8) == 0;
    v13 = (v11 & 9) != 0 && (a4 & 0x40108) == 0;
    v14 = (v11 >> 1) & 1;
    if ((a4 & 0x2001180) != 0)
    {
      LODWORD(v14) = 0;
    }

    v273 = v14;
    v275 = (v8 == 0) & (v11 >> 2);
    v276 = v13;
    LODWORD(v10) = (v11 >> 5) & 1 & BYTE3(v7);
  }

  else
  {
    v267 = 0;
    v10 = (v7 >> 24) & 1;
  }

  v268 = v10;
  v321 = 0;
  v279 = [(VOTElement *)self _resolvedOutputLanguage:&v321];
  if ((v7 & 0x20) != 0)
  {
    v15 = [(VOTElement *)self labeledTouchContainer];
    if ([(VOTElement *)self containedIn:1]&& ![(VOTElement *)self containedIn:4])
    {
      v16 = ![(VOTElement *)self containedIn:2];
    }

    else
    {
      v16 = 0;
    }

    if ((([v15 isEqual:self] | v16) & 1) == 0)
    {
      v17 = [v15 label];
      v18 = [(VOTElement *)self label];
      v19 = [v17 isEqualToString:v18];

      v20 = [v15 label];
      LODWORD(v18) = [v20 length] == 0;

      if (v18)
      {
        v21 = [v15 includeRoleOnlyForGroupNavigation] ? 0 : 0x1000000;
      }

      else
      {
        v21 = 0;
      }

      v22 = [v15 doesHaveTraits:kAXWebContentTrait] ? v21 | 2 : v21;
      v23 = [VOTSharedWorkspace containerOutputFeedback];
      v276 &= v19 ^ 1;
      if ((v23 & 2) != 0)
      {
        v24 = [v284 outputActions];
        v25 = [v24 count];

        [v15 addTextualInformationToRequest:v284 options:v22 dataPackage:0];
        v26 = [v284 outputActions];
        v27 = [v26 count];

        if (v27 > v25)
        {
          if ((v23 & 8) != 0)
          {
            v28 = [v284 lastAction];
            [v28 setObject:&off_1001D9960 forVariant:32];
          }

          v29 = [v284 lastAction];
          [v29 setObject:&__kCFBooleanTrue forVariant:68];
        }
      }
    }

    v7 = a4;
  }

  if ((v7 & 0x8000000000) != 0)
  {
    v30 = [(VOTElement *)self applicationIsRTL];
    v31 = off_1001FDDD0;
    if (v30)
    {
      v32 = [VOTSharedWorkspace selectedLanguage];
      sub_1000511CC(v31, @"element.directionality-change.rtl", v32);
    }

    else
    {
      v32 = [VOTSharedWorkspace selectedLanguage];
      sub_1000511CC(v31, @"element.directionality-change.ltr", v32);
    }
    v33 = ;
    v34 = [v284 addString:v33];
  }

  v278 = kAXWebContentTrait;
  if ([(VOTElement *)self doesHaveTraits:?])
  {
    v35 = [(VOTElement *)self uiElement];
    if (([v35 BOOLWithAXAttribute:2237] & 1) == 0)
    {
      v36 = [v274 previousElement];
      v37 = [v36 uiElement];
      v38 = [v37 BOOLWithAXAttribute:2237];

      if (!v38)
      {
        goto LABEL_45;
      }

      v39 = sub_1000516CC(off_1001FDDD0, @"element.contenteditable.end", 0, v279);
      v40 = [v284 addString:v39];

      v35 = [v284 lastAction];
      [v35 setIsVoiceOverGeneratedContent:1];
    }
  }

LABEL_45:
  v41 = [v284 elementHeadersForOutput];
  v42 = [v41 count] == 0;

  v43 = a4;
  if (!v42)
  {
    [(VOTElement *)self applyHeaderElementsToRequest:v284];
  }

  if ((a4 & 0x4000000) != 0)
  {
    [(VOTElement *)self applyRowHeadersToRequest:v284];
  }

  if ((a4 & 0x800000) != 0)
  {
    v44 = [(VOTElement *)self contextDescriptors];
    v45 = [v44 count] == 0;

    v43 = a4;
    if (!v45)
    {
      v319 = 0u;
      v320 = 0u;
      v317 = 0u;
      v318 = 0u;
      v46 = [(VOTElement *)self contextDescriptors];
      v47 = [v46 countByEnumeratingWithState:&v317 objects:v331 count:16];
      if (v47)
      {
        v48 = *v318;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v318 != v48)
            {
              objc_enumerationMutation(v46);
            }

            v50 = *(*(&v317 + 1) + 8 * i);
            v51 = [v50 objectForKeyedSubscript:@"category"];
            v52 = [v50 objectForKeyedSubscript:@"value"];
            v53 = [v50 objectForKeyedSubscript:@"isDefault"];
            LOBYTE(v50) = [v53 BOOLValue];

            v54 = [v286 objectForKeyedSubscript:v51];
            if (!([v54 isEqualToString:v52] & 1 | (v54 == 0) & v50))
            {
              v55 = [v284 addString:v52];
              if ([VOTSharedWorkspace typingPitchChangeEnabled])
              {
                v56 = [v284 lastAction];
                LODWORD(v57) = 1062836634;
                v58 = [NSNumber numberWithFloat:v57];
                [v56 setObject:v58 forVariant:32];
              }
            }
          }

          v47 = [v46 countByEnumeratingWithState:&v317 objects:v331 count:16];
        }

        while (v47);
      }

      v43 = a4;
    }
  }

  v59 = *&v43 & 0x10008;
  if ((*&v43 & 0x10008) == 0x10008 && ![(VOTElement *)self doesHaveTraits:kAXPickerElementTrait])
  {
    [(VOTElement *)self _applySelectedTrait:v284 language:v279];
  }

  v60 = +[AXSettings sharedInstance];
  v61 = [v60 voiceOverTraitFeedback];

  if (((v61 == 1) & v275) == 1)
  {
    [(VOTElement *)self _applyTraitsToRequest:v284 options:a4 numHeaderActions:v269 language:v279];
  }

  v62 = a4 & 0x2000000000;
  if (v276)
  {
    v63 = [v284 numberOfActions];
    if ((a4 & 0x1000000000) != 0)
    {
      v64 = 1;
    }

    else
    {
      v64 = v62 >> 36;
    }

    [(VOTElement *)self _applyLabelToRequest:v284 includeBlockQuote:(a4 >> 17) & 1 language:v279 isWebLanguageChoice:v321 interactOption:v64];
    v65 = [v284 numberOfActions] > v63;
    *(v327 + 24) = v65;
    v66 = [v284 containsActions];
    if ((a4 & 0x80) != 0 && [VOTSharedWorkspace typingPitchChangeEnabled])
    {
      v67 = [v284 lastAction];
      LODWORD(v68) = 1062836634;
      v69 = [NSNumber numberWithFloat:v68];
      [v67 setObject:v69 forVariant:32];
    }

    if ([(VOTElement *)self doesHaveTraits:kAXKeyboardKeyTrait])
    {
      v70 = [v284 lastAction];
      [v70 setObject:&__kCFBooleanTrue forVariant:58];
    }

    [(VOTElement *)self _applyCustomContent:v284 language:v279];
  }

  else
  {
    v66 = 0;
  }

  if ((a4 & 0x400000000) == 0)
  {
    v71 = [v274 customAction];
    [(VOTElement *)self _applyStickyCustomActions:v284 customAction:v71 language:v279];
  }

  if ([(VOTElement *)self doesHaveTraits:kAXMathEquationTrait])
  {
    v72 = [(VOTElement *)self mathSummary];
    if ([v72 length])
    {
      v73 = [v284 addString:v72];
    }

    v74 = [(VOTElement *)self mathEquationDescription];
    v75 = [v284 addAttributedString:v74];
  }

  if (!(v66 & 1 | ((v276 & 1) == 0)))
  {
    v76 = [(VOTElement *)self value];
    if (![v76 length])
    {
      v77 = [(VOTElement *)self hint];
      v78 = [v77 length] == 0;

      if (v78)
      {
        goto LABEL_89;
      }

      v76 = [(VOTElement *)self hint];
      v79 = [v284 addString:v76 withLanguage:v279];
      v80 = [v284 lastAction];
      [v80 setIsVoiceOverGeneratedContent:1];

      v270 = 0;
    }
  }

LABEL_89:
  v81 = [(VOTElement *)self doesHaveTraits:kAXImageTrait];
  if (v81)
  {
    v82 = [(VOTElement *)self photoDescription];
    if ([v82 length])
    {
      v83 = [v284 addString:v82 withLanguage:v279];
    }
  }

  if (!([v284 containsActions] & 1 | ((v81 & 1) == 0)))
  {
    v84 = [VOTSharedWorkspace elementManager];
    v85 = [v84 determineFullImageDescriptionsEnabled:self];

    if ((v85 & 1) == 0)
    {
      v86 = [(VOTElement *)self identifier];
      if ([v86 length])
      {
        v87 = [v284 addString:v86];
      }
    }
  }

  if ([(VOTElement *)self doesHaveTraits:v278])
  {
    [(VOTElement *)self _applyCurrentStatus:v284 language:v279];
    [(VOTElement *)self _applySortDirection:v284 language:v279];
    [(VOTElement *)self _applyDatetimeAttribute:v284 language:v279];
  }

  v88 = [(VOTElement *)self traits];
  v90 = 0;
  if ((kAXIsEditingTrait & v88) == 0)
  {
    v89 = [(VOTElement *)self traits];
    if ((kAXWebInteractiveVideoTrait & v89) == 0)
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
  v313 = (a4 & 0x10000000) != 0;
  v309[4] = self;
  v285 = v284;
  v310 = v285;
  v312 = a4;
  v280 = v279;
  v311 = v280;
  v277 = objc_retainBlock(v309);
  if (v90)
  {
    if (v273)
    {
      v91 = [v285 numberOfActions];
      [(VOTElement *)self _applyValueToRequest:v285 options:a4 lastSeenLineAndColumn:v271 language:v280];
      v92 = [v285 numberOfActions] > v91;
      *(v323 + 24) = v92;
    }

    if ((a4 & 0x800000000) == 0)
    {
      (v272[2])();
    }

    (v277[2])();
    if (v61 == 1)
    {
      v93 = 1;
    }

    else
    {
      v93 = v275 ^ 1;
    }

    if ((v93 & 1) == 0)
    {
      [(VOTElement *)self _applyTraitsToRequest:v285 options:a4 numHeaderActions:v269 language:v280];
    }
  }

  else
  {
    if (v61 == 1)
    {
      v94 = 1;
    }

    else
    {
      v94 = v275 ^ 1;
    }

    if ((v94 & 1) == 0)
    {
      [(VOTElement *)self _applyTraitsToRequest:v285 options:a4 numHeaderActions:v269 language:v280];
    }

    if (v273)
    {
      v95 = [v285 numberOfActions];
      [(VOTElement *)self _applyValueToRequest:v285 options:a4 lastSeenLineAndColumn:v271 language:v280];
      v96 = [v285 numberOfActions] > v95;
      *(v323 + 24) = v96;
    }

    (v272[2])();
    (v277[2])();
  }

  v97 = +[AXSettings sharedInstance];
  v98 = [v97 voiceOverLinkFeedback];

  v99 = self;
  v100 = [(VOTElement *)self doesHaveTraits:kAXLinkTrait];
  if ((v98 & 0xA) == 8)
  {
    v101 = v100;
  }

  else
  {
    v101 = 0;
  }

  if (v101 == 1)
  {
    v102 = [v285 outputActions];
    [v102 enumerateObjectsUsingBlock:&stru_1001CA730];

    v99 = self;
  }

  if ((v268 & 1) != 0 || [VOTSharedWorkspace navigationStyleHonorsGroups] && -[VOTElement includeRoleOnlyForGroupNavigation](v99, "includeRoleOnlyForGroupNavigation") && -[VOTElement isAccessibleGroup](v99, "isAccessibleGroup"))
  {
    if ((a4 & 0x1000000000) != 0)
    {
      v104 = [v285 containsActions];
      if (v62)
      {
        v105 = v104;
      }

      else
      {
        v105 = 0;
      }

      if ((v105 & 1) == 0)
      {
        v103 = v104 ^ 1;
        goto LABEL_143;
      }
    }

    else if (!v62)
    {
      v103 = 0;
LABEL_143:
      [(VOTElement *)v99 _applyRoleDescription:v285 language:v280 interactOption:v103];
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
  v107 = [v106 voiceOverListAnnotation];

  v108 = self;
  v109 = ![(VOTElement *)self shouldIncludeRowRangeInDescription];
  if (v107 == 1)
  {
    v110 = v109;
  }

  else
  {
    v110 = 0;
  }

  if (((v267 | v110) & 1) == 0)
  {
    if ((v107 & 2) != 0)
    {
      v111 = 0;
    }

    else
    {
      v111 = v109;
    }

    sub_100051EEC(self, v285, v280, 0, (v107 >> 4) & 1, v111);
  }

  if (!(v110 & 1 | ![(VOTElement *)self isLastItemInList]))
  {
    v112 = sub_1000516CC(off_1001FDDD0, @"element.endOfList.item", @"list end", v280);
    v113 = [v285 addString:v112];

    v108 = self;
  }

  if ([(VOTElement *)v108 doesHaveTraits:v278])
  {
    [(VOTElement *)v108 _applyHasPopupAttribute:v285 withLanguage:v280];
  }

  if ([(VOTElement *)v108 isRequired])
  {
    v114 = sub_1000516CC(off_1001FDDD0, @"element.required", 0, v280);
    v115 = [v285 addString:v114 withLanguage:v280];

    v116 = [v285 lastAction];
    [v116 setIsVoiceOverGeneratedContent:1];

    v108 = self;
  }

  if ([(VOTElement *)v108 shouldAnnounceTableInfo]&& [(VOTElement *)v108 isElementFirstElement:1 orLastElement:0 withType:2])
  {
    [(VOTElement *)v108 applyTableDimension:v285 language:v280];
  }

  if (v59 == 65544 && [(VOTElement *)v108 doesHaveTraits:kAXPickerElementTrait])
  {
    [(VOTElement *)v108 _applySelectedTrait:v285 language:v280];
  }

  if (v275)
  {
    [(VOTElement *)v108 _applyExpandedStatus:v285 language:v280];
    [(VOTElement *)v108 _applyLinkRelationshipType:v285 language:v280];
  }

  v117 = v108;
  v118 = v117;
  if (![(VOTElement *)v117 doesHaveTraits:v278])
  {
LABEL_176:

    goto LABEL_177;
  }

  v119 = [(VOTElement *)v117 doesHaveTraits:kAXRadioButtonTrait | kAXTextEntryTrait | kAXToggleTrait];

  if (v119)
  {
    v120 = v117;
    if (v120)
    {
      v118 = v120;
      while ([v118 doesHaveTraits:v278])
      {
        v121 = [v118 invalidStatus];
        if ([v121 length] && (objc_msgSend(v121, "isEqualToString:", @"false") & 1) == 0)
        {
          [v118 _applyInvalidStatus:v285 language:v280];

          goto LABEL_176;
        }

        v122 = [v118 directParent];

        v118 = v122;
        if (!v122)
        {
          goto LABEL_176;
        }
      }

      goto LABEL_176;
    }
  }

LABEL_177:
  if ((a4 & 0x20000000) == 0)
  {
    [(VOTElement *)v117 applyTextEditingInformation:v280 request:v285 options:a4];
  }

  if ((a4 & 0x8000) != 0)
  {
    v123 = [(VOTElement *)v117 scrollStatus];
    if (v123)
    {
      v124 = [v285 addString:v123];
      if ([VOTSharedWorkspace typingPitchChangeEnabled])
      {
        v125 = [v285 lastAction];
        [v125 setObject:&off_1001D9960 forVariant:32];
      }
    }
  }

  [(VOTElement *)v117 applyCVMLGeneratedContentToRequest:v285 explicitUserRequest:0];
  if (v270 && [VOTSharedWorkspace hintsEnabled])
  {
    v126 = [(VOTElement *)v117 hint];
    if ([v126 length] && (-[VOTElement label](v117, "label"), v127 = objc_claimAutoreleasedReturnValue(), v128 = objc_msgSend(v126, "isEqualToString:", v127), v127, (v128 & 1) == 0))
    {
      if ([VOTSharedWorkspace brailleInputActive])
      {
        v130 = +[NSLocale currentLocale];
        v131 = [v130 languageCode];
        v132 = [v131 hasPrefix:@"en"];

        if (v132)
        {
          v133 = [v126 stringByReplacingOccurrencesOfString:@"Double tap to" withString:@"Tap Dots 3 6 to"];

          v126 = v133;
        }
      }

      if ([v126 isAXAttributedString])
      {
        LODWORD(v134) = 1061997773;
        [v285 addPause:v134];
        v135 = [v285 addAttributedString:v126 withLanguage:v280];
      }

      else
      {
        LODWORD(v134) = 1061997773;
        [v285 addPause:v134];
        v137 = [v285 addString:v126 withLanguage:v280];
      }

      v136 = [v285 lastAction];
      [v136 setIsVoiceOverGeneratedContent:1];

      v129 = 1;
    }

    else
    {
      v129 = 0;
    }

    v138 = [(VOTElement *)v117 instructions];
    if ([v138 length])
    {
      if ((v129 & 1) == 0)
      {
        LODWORD(v139) = 1061997773;
        [v285 addPause:v139];
      }

      v140 = [v285 addString:v138 withLanguage:v280];
      v141 = [v285 lastAction];
      [v141 setIsVoiceOverGeneratedContent:1];

      v129 = 1;
    }
  }

  else
  {
    v129 = 0;
  }

  v142 = [(VOTElement *)v117 mapFeatureType];
  v143 = [(VOTElement *)v117 suppressCustomActionHint];
  if ((a4 & 0x800) == 0 || v142 == 1)
  {
    v145 = 1;
  }

  else
  {
    v145 = v143;
  }

  if (AXDeviceSupportsSonification())
  {
    if ((a4 & 0x100000000) != 0 && ([(VOTElement *)v117 supportsAudiographActions]|| [(VOTElement *)v117 supportsAudiographs]))
    {
      if ([VOTSharedWorkspace hintsEnabled] && (objc_msgSend(VOTSharedWorkspace, "elementManager"), v146 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v146, "elementRotor"), v147 = objc_claimAutoreleasedReturnValue(), v148 = objc_msgSend(v147, "currentRotorType") == 65, v147, v146, v148))
      {
        v149 = sub_1000516CC(off_1001FDDD8, @"audiograph.actions.hint", 0, v280);
        v150 = [v285 addString:v149 withLanguage:v280];

        v151 = [v285 lastAction];
        [v151 setIsVoiceOverGeneratedContent:1];
      }

      else
      {
        v152 = sub_1000516CC(off_1001FDDD8, @"audiograph.actions.hint.short", 0, v280);
        v153 = [v285 addString:v152 withLanguage:v280];

        v151 = [v285 lastAction];
        [v151 setIsVoiceOverGeneratedContent:1];
      }
    }

    if ((a4 & 0x4000000000) != 0 && ([(VOTElement *)v117 supportsAudiographActions]|| [(VOTElement *)v117 supportsAudiographs]))
    {
      v154 = [(VOTElement *)v117 chartStructureDescription];
      if ([v154 length])
      {
        v155 = [v285 addString:v154];
      }
    }
  }

  if (v145)
  {
    goto LABEL_298;
  }

  v156 = [(VOTElement *)v117 customRotorActions];
  v157 = [v156 count] == 0;

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
    v159 = [(VOTElement *)v117 customRotorActions];
    v296[0] = _NSConcreteStackBlock;
    v296[1] = 3221225472;
    v296[2] = sub_1000C0AAC;
    v296[3] = &unk_1001CA758;
    v296[4] = v117;
    v296[5] = &v301;
    v296[6] = &v297;
    v296[7] = &v305;
    [v159 enumerateObjectsUsingBlock:v296];

    v160 = [(VOTElement *)v117 doesHaveTraits:kAXLaunchIconTrait];
    v161 = +[AXSettings sharedInstance];
    v162 = [v161 voiceOverActionsFeedback];

    v163 = +[AXSettings sharedInstance];
    v164 = [v163 voiceOverActionsFeedback];

    v165 = +[AXSettings sharedInstance];
    v166 = [v165 voiceOverActionsFeedback];

    v167 = [v274 previousElement];
    v168 = [(VOTElement *)v117 _ignoreCustomActionIndicator:v167 withElement:v117];

    if ((v162 & 2) != 0)
    {
      v169 = v168;
    }

    else
    {
      v169 = 1;
    }

    if ((v164 & 8) != 0)
    {
      v170 = v168;
    }

    else
    {
      v170 = 1;
    }

    if ((v166 & 4) != 0)
    {
      v171 = v168;
    }

    else
    {
      v171 = 1;
    }

    v172 = [VOTSharedWorkspace elementManager];
    v173 = [v172 elementRotor];
    v174 = [v173 currentRotorType] == 54;

    if (v174)
    {
      if ((v169 & 1) == 0 && (a4 & 0x40000000) != 0)
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
            v180 = [v285 lastAction];
            [v180 setObject:&off_1001D9960 forVariant:32];
          }

          v181 = [v285 lastAction];
          [v181 setIsVoiceOverGeneratedContent:1];
        }
      }

      if ([VOTSharedWorkspace hintsEnabled])
      {
        v182 = [VOTSharedWorkspace brailleInputActive];
        v183 = @"custom.actions.hint";
        if (v182)
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
        v186 = [v285 firstAction];
        [v186 setObject:@"Sounds/ActionsAvailable.aiff" forVariant:75];
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

      v189 = [v285 lastAction];
      [v189 setIsVoiceOverGeneratedContent:1];

      if (v170)
      {
        goto LABEL_266;
      }

LABEL_264:
      v186 = [v285 lastAction];
      [v186 setObject:&off_1001D9960 forVariant:32];
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
              if ((a4 & 0x40000000) == 0 || !v302[3])
              {
                goto LABEL_267;
              }

              LODWORD(v184) = 0;
              goto LABEL_341;
            }

            v258 = sub_1000516CC(off_1001FDDD8, @"custom.actions.hint.short", 0, v280);
            v259 = [v285 addString:v258 withLanguage:v280];

            v260 = [v285 lastAction];
            [v260 setIsVoiceOverGeneratedContent:1];

            if ((v170 & 1) == 0)
            {
              v261 = [v285 lastAction];
              [v261 setObject:&off_1001D9960 forVariant:32];
            }

            LODWORD(v184) = 0;
          }

          else
          {
            [v285 addSound:@"Sounds/ActionsAvailable.aiff"];
            LODWORD(v184) = 1;
          }
        }

        if ((a4 & 0x40000000) == 0)
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
          v266 = [v285 lastAction];
          [v266 setIsVoiceOverGeneratedContent:1];

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

  v283 = [(VOTElement *)v117 customPublicRotors];
  if ([VOTSharedWorkspace hintsEnabled] && objc_msgSend(v283, "count"))
  {
    if ((v129 & 1) == 0)
    {
      LODWORD(v190) = 1061997773;
      [v285 addPause:v190];
    }

    v191 = [v283 firstObject];
    v192 = [(VOTElement *)v117 customPublicRotorName:v191];

    if ([VOTRotor rotorTypeForSystemRotorType:v192]== 9)
    {
      v193 = [v283 firstObject];
      v194 = [(VOTElement *)v117 customPublicRotorLinkCountForRotor:v193]== 1;

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
        [(VOTElement *)v117 _configureAsSingleLinkElementWithRequest:v285 linkTraitTitle:v195 hint:v198 & ((a4 << 30) >> 63)];
        goto LABEL_295;
      }
    }

    if ((a4 & 0x200000000) != 0)
    {
      v195 = +[NSMutableArray array];
      v294 = 0u;
      v295 = 0u;
      v292 = 0u;
      v293 = 0u;
      v199 = v283;
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

            v209 = [v285 lastAction];
            [v209 setIsVoiceOverGeneratedContent:1];
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
    v210 = [(VOTElement *)v117 uiElement];
    v211 = [v210 BOOLWithAXAttribute:2227];

    if (v211)
    {
      v212 = sub_1000516CC(off_1001FDDD0, @"element.insertion.text", 0, v280);
      v213 = [v285 addString:v212 breakWords:0 withLanguage:v280 atIndex:0];

      v214 = [v285 lastAction];
      [v214 setIsVoiceOverGeneratedContent:1];
    }

    v215 = [(VOTElement *)v117 uiElement];
    v216 = [v215 BOOLWithAXAttribute:2228];

    if (v216)
    {
      v217 = sub_1000516CC(off_1001FDDD0, @"element.deletion.text", 0, v280);
      v218 = [v285 addString:v217 breakWords:0 withLanguage:v280 atIndex:0];

      v219 = [v285 lastAction];
      [v219 setIsVoiceOverGeneratedContent:1];
    }

    v220 = [(VOTElement *)v117 uiElement];
    v221 = [v220 BOOLWithAXAttribute:2225];

    if (v221)
    {
      v222 = sub_1000516CC(off_1001FDDD0, @"element.startOfSuggestion.item", 0, v280);
      v223 = [v285 addString:v222 breakWords:0 withLanguage:v280 atIndex:0];

      v224 = [v285 lastAction];
      [v224 setIsVoiceOverGeneratedContent:1];
    }

    v225 = [(VOTElement *)v117 uiElement];
    v226 = [v225 BOOLWithAXAttribute:2226];

    if (v226)
    {
      v227 = sub_1000516CC(off_1001FDDD0, @"element.endOfSuggestion.item", 0, v280);
      v228 = [v285 addString:v227];

      v229 = [v285 lastAction];
      [v229 setIsVoiceOverGeneratedContent:1];
    }

    v230 = [(VOTElement *)v117 uiElement];
    v231 = [v230 BOOLWithAXAttribute:2230];

    if (v231)
    {
      v232 = sub_1000516CC(off_1001FDDD0, @"highlighted", 0, v280);
      v233 = [v285 addString:v232];

      v234 = [v285 lastAction];
      [v234 setIsVoiceOverGeneratedContent:1];
    }

    v235 = [(VOTElement *)v117 uiElement];
    if (![v235 BOOLWithAXAttribute:2237])
    {
      goto LABEL_312;
    }

    v236 = [v274 previousElement];
    v237 = [v236 uiElement];
    v238 = [v237 BOOLWithAXAttribute:2237];

    if ((v238 & 1) == 0)
    {
      v239 = sub_1000516CC(off_1001FDDD0, @"element.contenteditable.start", 0, v280);
      v240 = [v285 addString:v239];

      v235 = [v285 lastAction];
      [v235 setIsVoiceOverGeneratedContent:1];
LABEL_312:
    }
  }

  v241 = [VOTSharedWorkspace moreContentOutputFeedback];
  v242 = v241;
  v243 = v285;
  if (v241 != 1)
  {
    v244 = [(VOTElement *)v117 customContent];
    v245 = [v244 count] == 0;

    v243 = v285;
    if (!v245)
    {
      v305 = 0;
      v306 = &v305;
      v307 = 0x2020000000;
      LOBYTE(v308) = 0;
      v246 = [(VOTElement *)v117 customContent];
      v291[0] = _NSConcreteStackBlock;
      v291[1] = 3221225472;
      v291[2] = sub_1000C0BD0;
      v291[3] = &unk_1001CA780;
      v291[4] = &v305;
      [v246 enumerateObjectsUsingBlock:v291];

      if (*(v306 + 24) == 1 && (v242 & 2) != 0)
      {
        v247 = sub_1000516CC(off_1001FDDD0, @"more.custom.content.available", 0, v280);
        v248 = [v285 addString:v247 withLanguage:v280];
        v249 = [v285 lastAction];
        [v249 setIsVoiceOverGeneratedContent:1];

        if ((v242 & 8) != 0)
        {
          v250 = [v285 lastAction];
          [v250 setObject:&off_1001D9960 forVariant:32];
        }
      }

      v243 = v285;
      if ((v242 & 4) != 0)
      {
        v251 = [v285 outputActions];
        v252 = [v251 firstObject];
        [v252 setObject:@"Sounds/MoreContentAvailable.aiff" forVariant:75];

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
  if ((a4 & 0x400) != 0)
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

    v256 = [VOTSharedWorkspace elementManager];
    v257 = v287;
    v287[0] = _NSConcreteStackBlock;
    v287[1] = 3221225472;
    v287[2] = sub_1000C0EE8;
    v287[3] = &unk_1001CA818;
    v287[4] = v253;
    v287[5] = v280;
    v287[6] = v254;
    [v256 updateRotorForCurrentElement:1 completion:v287];
  }

LABEL_330:
  _Block_object_dispose(&v322, 8);
  _Block_object_dispose(&v326, 8);
}

- (BOOL)_ignoreCustomActionIndicator:(id)a3 withElement:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[AXSettings sharedInstance];
  if ([v9 voiceOverActionFeedbackFirstInListOnly])
  {
    v10 = [v7 touchContainer];
    v11 = [v8 touchContainer];
    if ([v10 isEqual:v11])
    {
      v12 = [(VOTElement *)self _elementActionsEquivalent:v7 withElement:v8];
LABEL_16:

      goto LABEL_17;
    }

    v13 = [v7 touchContainer];
    if (v13 || ([v8 touchContainer], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = kAXWebContentTrait;
      if ([v7 doesHaveTraits:kAXWebContentTrait] && objc_msgSend(v8, "doesHaveTraits:", v14))
      {
        v15 = [(VOTElement *)self _elementActionsEquivalent:v7 withElement:v8];
        v12 = v15;
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15 = 0;
        v12 = 0;
        if (!v13)
        {
          goto LABEL_14;
        }
      }

LABEL_15:

      goto LABEL_16;
    }

    v15 = [(VOTElement *)self _elementActionsEquivalent:v7 withElement:v8];
LABEL_14:

    v12 = v15;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)_elementActionsEquivalent:(id)a3 withElement:(id)a4
{
  v5 = a4;
  v6 = [a3 customRotorActions];
  v7 = [v6 ax_filteredArrayUsingBlock:&stru_1001CA838];
  v8 = [v5 customRotorActions];

  v9 = [v8 ax_filteredArrayUsingBlock:&stru_1001CA858];
  v10 = [v7 isEqualToArray:v9];

  return v10;
}

- (void)_applyCustomContent:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VOTElement *)self customContent];
  v9 = [VOTSharedWorkspace customContentImportance];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
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
        if ([v15 importance] == v9)
        {
          v16 = [v15 label];
          v17 = [v6 addString:v16 withLanguage:v7];

          v18 = [v15 value];
          v19 = [v6 addString:v18 withLanguage:v7];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_applyStickyCustomActions:(id)a3 customAction:(id)a4 language:(id)a5
{
  v15 = a3;
  v8 = a5;
  v9 = [a4 name];
  if ([(VOTElement *)self retainsCustomRotorActionSetting])
  {
    if ([v9 length])
    {
      v10 = sub_1000511CC(off_1001FDDD0, @"current.custom.action", v8);
      v11 = [NSString stringWithFormat:v10, v9];
      v12 = [v15 addString:v11 withLanguage:v8];

      v13 = [v15 lastAction];
      [v13 setIsVoiceOverGeneratedContent:1];

      if ([VOTSharedWorkspace typingPitchChangeEnabled])
      {
        v14 = [v15 lastAction];
        [v14 setObject:&off_1001D9960 forVariant:32];
      }
    }
  }
}

- (void)announceAdditionalTextualInformation:(id)a3
{
  v6 = a3;
  v4 = [(VOTElement *)self expandedTextValue];
  if ([v4 length])
  {
    v5 = [v6 addString:v4];
  }
}

- (void)announceTableInfo:(id)a3 options:(unint64_t)a4 language:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(VOTElement *)self _applyHeaderStatus:v9 language:v8];
  [(VOTElement *)self _applyTableRowColumnSpan:v9 language:v8];
  [(VOTElement *)self _applyTableRowIndex:v9 options:a4 language:v8];
  [(VOTElement *)self _applyTableColumnIndex:v9 options:a4 language:v8];
}

- (void)applyTextEditingInformation:(id)a3 request:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v84 = a3;
  v8 = a4;
  if (![(VOTElement *)self shouldIgnoreTextEditingTrait])
  {
    v9 = kAXIsEditingTrait;
    v10 = [(VOTElement *)self doesHaveTraits:kAXIsEditingTrait];
    if ((v5 & 0x40) == 0)
    {
      if (v10)
      {
        v11 = [VOTSharedWorkspace rotorType];
        if ((v11 - 3) <= 2)
        {
          v12 = sub_1000516CC(off_1001FDDD0, off_1001CA8A0[(v11 - 3)], 0, v84);
          v13 = [v8 addString:v12 withLanguage:v84 category:@"RotorType"];

          v14 = [v8 lastAction];
          [v14 setIsVoiceOverGeneratedContent:1];
        }
      }
    }

    if ([(VOTElement *)self doesHaveAllTraits:kAXTextEntryTrait | v9])
    {
      v15 = [(VOTElement *)self textInputElement];
      if (v15)
      {
        v16 = v15;
        v17 = [(VOTElement *)self textInputElementRange];
        v19 = v18;
        v20 = 0x7FFFFFFFLL;
        if (v17 == 0x7FFFFFFF)
        {
          v21 = 0;
        }

        else
        {
          v22 = v17;
          v23 = [(VOTElement *)v16 value];
          if (&v19[v22] <= [v23 length])
          {
            v24 = [(VOTElement *)v16 value];
            v21 = [v24 substringWithRange:{v22, v19}];
          }

          else
          {
            v86.location = v22;
            v86.length = v19;
            v24 = NSStringFromRange(v86);
            v72 = v23;
            v74 = [v23 length];
            v71 = v24;
            _AXAssert();
            v21 = 0;
          }

          v20 = v22;
        }
      }

      else
      {
        v16 = self;
        v21 = [(VOTElement *)v16 value];
        v19 = [v21 length];
        v20 = 0;
      }

      v25 = [(VOTElement *)v16 selectedTextRange:v71];
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
      if (v16 != self && v25 > v28)
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
        v41 = sub_1000516CC(v30, v31, 0, v84);
        if (!v41)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:
        v42 = [v8 addAttributedString:v41 withLanguage:v84 category:@"TextDescription"];

        goto LABEL_29;
      }

      v32 = [VOTSharedWorkspace elementManager];
      v33 = [v32 elementRotor];
      v34 = [v33 currentSelectionRotorType];

      v35 = &v27[~v20];
      if (v34 == 3)
      {
        v36 = [v21 rangeOfComposedCharacterSequenceAtIndex:v35];
        v38 = v37;
        v39 = [v21 rangeOfComposedCharacterSequenceAtIndex:v29];
      }

      else
      {
        v36 = [v21 ax_wordFromPosition:v35 inDirection:1];
        v38 = v43;
        v39 = [v21 ax_wordFromPosition:v29 inDirection:0];
      }

      v44 = v39;
      v45 = v40;
      v46 = 0;
      v47 = &stru_1001CBF90;
      v82 = &stru_1001CBF90;
      if (v36 != 0x7FFFFFFF && v36 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = [v21 substringWithRange:{v36, v38}];
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
          v50 = [v21 substringWithRange:{v44, v45}];
          v52 = [(__CFString *)v50 length];
          v81 = [NSString stringWithFormat:@"%@%@", @"∑2[[[", v50];

          v49 = v52 == 1;
        }
      }

      v78 = v49;
      v80 = v50;
      v83 = objc_alloc_init(NSNumberFormatter);
      v53 = sub_1000516CC(off_1001FDDD0, @"cursor.at.position.use.ordinal", 0, v84);
      v54 = [v53 isEqualToString:@"yes"];

      if (v54)
      {
        [v83 setNumberStyle:6];
      }

      if ([(__CFString *)v81 length]&& [(__CFString *)v51 length])
      {
        if (v34 == 3 || ([(__CFString *)v47 isEqualToString:v80]& 1) == 0)
        {
          v57 = sub_1000516CC(off_1001FDDD0, @"cursor.at.position", 0, v84);
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

          v57 = sub_1000516CC(off_1001FDDD0, @"cursor.at.position.before", 0, v84);
          v58 = [NSNumber numberWithUnsignedInteger:v29 + 1];
          v59 = [v83 stringFromNumber:v58];
          [NSString stringWithFormat:v57, v81, v59, v75];
          v60 = LABEL_53:;

          goto LABEL_54;
        }

        v55 = off_1001FDDD0;
        v56 = @"cursor.at.position.after";
      }

      v57 = sub_1000516CC(v55, v56, 0, v84);
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

- (void)_configureAsSingleLinkElementWithRequest:(id)a3 linkTraitTitle:(id)a4 hint:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  if ([v10 numberOfActionsWithString:v7] == 2)
  {
    [v10 removeLastActionWithString:v7];
    if (v8)
    {
      v9 = [v10 addString:v8];
    }
  }
}

- (void)_applyRoleDescription:(id)a3 language:(id)a4 interactOption:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [(VOTElement *)self roleDescriptionWithInteractOption:a5 language:v8];
  v10 = [v14 addString:v9 withLanguage:v8];
  if ([VOTSharedWorkspace typingPitchChangeEnabled])
  {
    v11 = [v14 lastAction];
    LODWORD(v12) = 1062836634;
    v13 = [NSNumber numberWithFloat:v12];
    [v11 setObject:v13 forVariant:32];
  }
}

- (void)applyGroupChildrenCountToRequest:(id)a3
{
  v11 = a3;
  if ([(VOTElement *)self isAccessibleGroup])
  {
    v4 = [(VOTElement *)self groupedChildrenCount];
    if (v4)
    {
      v5 = v4;
      v6 = off_1001FDDD0;
      v7 = [VOTSharedWorkspace selectedLanguage];
      v8 = sub_1000516CC(v6, @"group.item.count", 0, v7);
      v9 = [NSString stringWithFormat:v8, v5];
      v10 = [v11 addString:v9];
    }
  }
}

- (CGRect)adaptFrameForSystemElement:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(VOTElement *)self windowContextId];
  if (v7)
  {
    v8 = v7;
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

- (id)regionDescriptionWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[NSMutableString string];
  v10 = *(&xmmword_1001FF150 + 1);
  v9 = *&xmmword_1001FF150;
  v11 = [(VOTElement *)self application];
  if ([v11 applicationInterfaceOrientation] == 4)
  {

LABEL_4:
    v14 = v9;
    goto LABEL_6;
  }

  v12 = [(VOTElement *)self application];
  v13 = [v12 applicationInterfaceOrientation];

  if (v13 == 3)
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
  v17 = [VOTSharedWorkspace selectedLanguage];
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

          v24 = sub_1000516CC(v26, v27, 0, v17);
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

    v25 = sub_1000516CC(off_1001FDDD0, v21, 0, v17);
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

  v24 = sub_1000516CC(v19, v20, 0, v17);
  [v8 appendFormat:@"%@, ", v24];
LABEL_46:

LABEL_47:

  return v8;
}

- (void)regionDescriptionWithCompletion:(id)a3
{
  v4 = a3;
  [(VOTElement *)self frame];
  [(VOTElement *)self adaptFrameForSystemElement:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(VOTElement *)self touchContainer];
  v14 = [v13 uiElement];
  v15 = [v14 numberWithAXAttribute:2123];
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 unsignedIntValue]);

  v17 = +[VOTDisplayManager displayManager];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C26E0;
  v19[3] = &unk_1001CA880;
  v19[4] = self;
  v20 = v4;
  v18 = v4;
  [v17 convertFrameToCursorSpace:v16 displayID:v19 completion:{v6, v8, v10, v12}];
}

- (BOOL)shouldAnnounceTableInfo
{
  v3 = [VOTSharedWorkspace elementManager];
  v4 = [v3 speakTableRowAndColumnForElement:self];

  if (!v4 || ![(VOTElement *)self containedIn:2]&& ![(VOTElement *)self containedIn:32])
  {
    return 0;
  }

  v5 = [(VOTElement *)self touchContainer];
  v6 = v5;
  v7 = v5 && ([v5 rowCount] > 1 || objc_msgSend(v6, "columnCount") >= 2);

  return v7;
}

- (BOOL)hasExplicitRowInfo
{
  v3 = [(VOTElement *)self touchContainer];
  v4 = v3 && -[VOTElement ariaRowIndex](self, "ariaRowIndex") != 0x7FFFFFFF && [v3 ariaRowCount] != 0;

  return v4;
}

- (BOOL)hasExplicitColumnInfo
{
  v3 = [(VOTElement *)self touchContainer];
  v4 = v3 && -[VOTElement ariaColumnIndex](self, "ariaColumnIndex") != 0x7FFFFFFF && [v3 ariaColumnCount] != 0;

  return v4;
}

- (id)tableDimensionStringWithRow:(unint64_t)a3 andColumn:(unint64_t)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = sub_1000511CC(off_1001FDDD0, @"row.count", 0);
    v8 = [NSString localizedStringWithFormat:v7, a3];

    v9 = sub_1000511CC(off_1001FDDD0, @"column.count", 0);
    v10 = [NSString localizedStringWithFormat:v9, a4];

    v4 = [NSString stringWithFormat:@"%@ %@", v8, v10];
  }

  return v4;
}

- (void)applyTableDimension:(id)a3 language:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [(VOTElement *)self rowCount];
  v8 = [(VOTElement *)self columnCount];
  v9 = [(VOTElement *)self tableDimensionStringWithRow:v7 andColumn:v8];
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

  v10 = [(VOTElement *)self ariaRowCount];
  if (v10)
  {
    v7 = v10;
  }

  v11 = [(VOTElement *)self ariaColumnCount];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = [(VOTElement *)self tableDimensionStringWithRow:v7 andColumn:v12];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = sub_1000516CC(off_1001FDDD0, @"table.display", 0, v6);
  v15 = [NSString stringWithFormat:v14, v9];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [NSString stringWithFormat:@"%@, %@", v13, v15];

LABEL_14:
  v17 = [v21 addString:v16];
  if ([VOTSharedWorkspace typingPitchChangeEnabled])
  {
    v18 = [v21 lastAction];
    LODWORD(v19) = 1062836634;
    v20 = [NSNumber numberWithFloat:v19];
    [v18 setObject:v20 forVariant:32];
  }

LABEL_17:
}

- (void)_applyHeaderStatus:(id)a3 language:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(VOTElement *)self headerElementsForRow:[(VOTElement *)self rowRange]];
  v8 = [(VOTElement *)self headerElementsForColumn:[(VOTElement *)self columnRange]];
  if ([v7 containsObject:self])
  {
    v9 = sub_1000511CC(off_1001FDDD0, @"row.header", 0);
    v10 = [v13 addString:v9 withLanguage:v6];
  }

  if ([v8 containsObject:self])
  {
    v11 = sub_1000511CC(off_1001FDDD0, @"column.header", 0);
    v12 = [v13 addString:v11 withLanguage:v6];
  }
}

- (void)_applyTableRowIndex:(id)a3 options:(unint64_t)a4 language:(id)a5
{
  v6 = a4;
  v17 = a3;
  v8 = a5;
  if ((v6 & 0x400000) == 0)
  {
    v9 = [(VOTElement *)self rowRange];
    if (v9 != 0x7FFFFFFF && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(VOTElement *)self hasExplicitRowInfo])
      {
        [(VOTElement *)self ariaRowIndex];
      }

      v10 = sub_1000516CC(off_1001FDDD0, @"row.change", 0, v8);
      v11 = AXFormatInteger();
      v12 = [NSString stringWithFormat:v10, v11];
      v13 = [v17 addString:v12 withLanguage:v8];

      if ([VOTSharedWorkspace typingPitchChangeEnabled])
      {
        v14 = [v17 lastAction];
        LODWORD(v15) = 1062836634;
        v16 = [NSNumber numberWithFloat:v15];
        [v14 setObject:v16 forVariant:32];
      }
    }
  }
}

- (void)_applyTableColumnIndex:(id)a3 options:(unint64_t)a4 language:(id)a5
{
  v6 = a4;
  v16 = a3;
  v8 = a5;
  if ((v6 & 0x200000) == 0 && [(VOTElement *)self columnRange]!= 0x7FFFFFFF)
  {
    if ([(VOTElement *)self hasExplicitColumnInfo])
    {
      [(VOTElement *)self ariaColumnIndex];
    }

    else
    {
      [(VOTElement *)self columnRange];
    }

    v9 = sub_1000516CC(off_1001FDDD0, @"column.change", 0, v8);
    v10 = AXFormatInteger();
    v11 = [NSString stringWithFormat:v9, v10];
    v12 = [v16 addString:v11 withLanguage:v8];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      v13 = [v16 lastAction];
      LODWORD(v14) = 1062836634;
      v15 = [NSNumber numberWithFloat:v14];
      [v13 setObject:v15 forVariant:32];
    }
  }
}

- (void)_applyTableRowColumnSpan:(id)a3 language:(id)a4
{
  v25 = a3;
  v6 = a4;
  [(VOTElement *)self rowRange];
  v8 = v7;
  [(VOTElement *)self columnRange];
  v10 = v9;
  if (v8 >= 2)
  {
    v11 = sub_1000516CC(off_1001FDDD0, @"row.span", 0, v6);
    v12 = AXFormatInteger();
    v13 = [NSString stringWithFormat:v11, v12];
    v14 = [v25 addString:v13 withLanguage:v6];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      v15 = [v25 lastAction];
      LODWORD(v16) = 1062836634;
      v17 = [NSNumber numberWithFloat:v16];
      [v15 setObject:v17 forVariant:32];
    }
  }

  if (v10 >= 2)
  {
    v18 = sub_1000516CC(off_1001FDDD0, @"column.span", 0, v6);
    v19 = AXFormatInteger();
    v20 = [NSString stringWithFormat:v18, v19];
    v21 = [v25 addString:v20 withLanguage:v6];

    if ([VOTSharedWorkspace typingPitchChangeEnabled])
    {
      v22 = [v25 lastAction];
      LODWORD(v23) = 1062836634;
      v24 = [NSNumber numberWithFloat:v23];
      [v22 setObject:v24 forVariant:32];
    }
  }
}

- (id)concatenateLabelsWithLinebreaksBasedOnFrame:(id)a3
{
  v3 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 label];
        if ([v12 length])
        {
          [v11 frame];
          v14 = v13;
          v16 = v15;
          if (v6)
          {
            if (v13 <= v8 + v9 / 3.0)
            {
              [NSString stringWithFormat:@"%@ %@", v6, v12];
            }

            else
            {
              [NSString stringWithFormat:@"%@\n%@", v6, v12];
            }
            v17 = ;

            v8 = v14;
            v9 = v16;
            v6 = v17;
          }

          else
          {
            v6 = v12;
            v8 = v14;
            v9 = v16;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    v3 = [(VOTElement *)self imageOverlayElements];
    v4 = [(VOTElement *)self concatenateLabelsWithLinebreaksBasedOnFrame:v3];
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
  v5 = [v4 voiceOverNeuralElementFeedback];

  v6 = +[VOTWorkspace sharedWorkspace];
  v7 = [v6 visionEngine];

  v22 = v7;
  [v7 resultsForElement:self];
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
        v13 = [(VOTElement *)self visionFeatureDescriptionOptions];
        v14 = [v12 detectedFeatureDescriptionWithOptions:v13];

        if ([v14 length])
        {
          v15 = [v12 iconClassFeatures];
          v16 = [v15 count];

          if (v16)
          {
            v17 = [(UIElementProtocol *)self->_uiElement isMLElement];
            if (!v5 && (v17 & 1) == 0)
            {
              v18 = [v12 localizedDetectedIconHint];
              [v3 appendFormat:@"%@ ", v18];
            }

            [v3 appendFormat:@"%@ ", v14];
          }
        }

        if ([VOTSharedWorkspace textDetectionEnabled])
        {
          v19 = [v12 detectedTextDescription];
          if ([v19 length])
          {
            if (!v5)
            {
              v20 = [v12 localizedDetectedTextHint];
              [v3 appendFormat:@"%@ ", v20];
            }

            [v3 appendFormat:@"%@ ", v19];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)applyCVMLGeneratedContentToRequest:(id)a3 explicitUserRequest:(BOOL)a4
{
  v5 = a3;
  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v6 = +[VOTWorkspace sharedWorkspace];
    v7 = [v6 visionEngine];

    v8 = [v7 resultsForElement:self];
    v9 = +[AXSettings sharedInstance];
    v41 = [v9 voiceOverDiscoveredSensitiveContentFeedback];

    v10 = +[AXSettings sharedInstance];
    v11 = [v10 voiceOverNeuralElementFeedback];

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
      v39 = v7;
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
          v17 = [(VOTElement *)self visionFeatureDescriptionOptions];
          v18 = [v16 detectedFeatureDescriptionWithOptions:v17];

          if ([v18 length])
          {
            v19 = [v16 iconClassFeatures];
            v20 = [v19 count];

            v21 = [v16 captionFeatures];
            v22 = [v21 count];

            if (AXRuntimeCheck_MediaAnalysisSupport())
            {
              v23 = [v16 mediaAnalysisImageCaptionFeatures];
              v22 = [v23 count];
            }

            if (v20)
            {
              v24 = [(UIElementProtocol *)self->_uiElement isMLElement];
              if (!v11 && (v24 & 1) == 0)
              {
                v25 = [v16 localizedDetectedIconHint];
                v26 = [v5 addString:v25 category:@"Category_MLContent"];
              }
            }

            if (v22)
            {
              if (a4 || ([VOTSharedWorkspace elementManager], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "determineFullImageDescriptionsEnabled:", self), v27, v28))
              {
                v29 = [v16 captionTranslationLocale];
                v30 = [v29 localeIdentifier];

                if (![(__CFString *)v30 length])
                {

                  v30 = @"en";
                }

                v31 = AXMediaLogCommon();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v51 = v18;
                  v52 = 2112;
                  v53 = v30;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Adding image caption to request with text '%@'. language: '%@'", buf, 0x16u);
                }

                v32 = [v5 addString:v18 withLanguage:v30 category:@"Category_MLContent"];
                [v5 setSupplementalBrailleDescription:v18];
                if (v41 == 1 && ([v16 captionMayContainSensitiveContent] & 1) != 0)
                {
                  v40 = 1;
                }

                else
                {
                  v45 |= v11 == 1;
                }
              }
            }

            else
            {
              v33 = [v5 addString:v18 category:@"Category_MLContent"];
              v45 |= v11 == 1;
            }
          }

          if ([VOTSharedWorkspace textDetectionEnabled])
          {
            v34 = [(VOTElement *)self applicationProvidedOCRText];
            if (![v34 length])
            {
              v35 = [v16 detectedTextDescription];

              v34 = v35;
            }

            if ([v34 length])
            {
              if (v11 == 1)
              {
                v45 = 1;
              }

              else if (!v11)
              {
                v36 = [v16 localizedDetectedTextHint];
                v37 = [v5 addString:v36 category:@"Category_MLContent"];
              }

              v38 = [v5 addString:v34 category:@"Category_MLContent"];
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v14);

      if (v40)
      {
        v12 = +[VOSOutputEvent SensitiveContent];
        v7 = v39;
        if (!v12)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v7 = v39;
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

      [v5 addOutputEvent:v12 toFirstActionMatchingCategory:@"Category_MLContent"];
    }

LABEL_46:
    [v5 setImageCaptionResults:obj];
  }
}

- (id)_mathExpression
{
  v2 = [(UIElementProtocol *)self->_uiElement objectWithAXAttribute:2400];
  v3 = [SCRCMathExpression mathExpressionWithDictionary:v2];

  return v3;
}

- (id)_mathAXStringFromAttributedString:(id)a3
{
  v3 = a3;
  v4 = [v3 string];
  v5 = [AXAttributedString axAttributedStringWithString:v4];

  [v5 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenMathEquation];
  [v5 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenIgnoreLeadingCommas];
  v6 = +[NSMutableIndexSet indexSet];
  v7 = [v3 length];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001156A4;
  v16 = &unk_1001CB728;
  v17 = v6;
  v8 = v5;
  v18 = v8;
  v9 = v6;
  [v3 enumerateAttributesInRange:0 options:v7 usingBlock:{0, &v13}];

  [v8 setAttribute:v9 forKey:{UIAccessibilityTokenLiteralTextRanges, v13, v14, v15, v16}];
  v10 = v18;
  v11 = v8;

  return v8;
}

- (id)mathEquationDescription
{
  v3 = [(VOTElement *)self _mathExpression];
  v4 = [v3 speakableDescription];
  v5 = [(VOTElement *)self _mathAXStringFromAttributedString:v4];

  return v5;
}

- (unint64_t)_minimumSegmentDepthForExpression:(id)a3 withMaximumDepth:(unint64_t)a4
{
  if (a4 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 2;
  while (1)
  {
    v7 = [a3 speakableSegmentsUpToDepth:v6];
    v8 = [v7 count];

    if (v8 > 1)
    {
      break;
    }

    if (++v6 > a4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (unint64_t)_minimumSegmentDepth
{
  v3 = [(VOTElement *)self _mathExpression];
  v4 = -[VOTElement _minimumSegmentDepthForExpression:withMaximumDepth:](self, "_minimumSegmentDepthForExpression:withMaximumDepth:", v3, [v3 maximumDepth]);

  return v4;
}

- (id)mathSegmentsWithGranularityLevel:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    _AXAssert();
  }

  v5 = a3;
  v6 = [(VOTElement *)self _mathExpression];
  v7 = [v6 maximumDepth];
  v8 = [(VOTElement *)self _minimumSegmentDepthForExpression:v6 withMaximumDepth:v7];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _AXAssert();
  }

  v9 = [v6 speakableSegmentsWithSpeakingStyle:0 upToDepth:(v8 + (v7 - v8) * ((v5 + -1.0) / -3.0 + 1.0))];
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
  v3 = [(VOTElement *)self _mathExpression];
  v4 = [v3 dollarCodeDescription];

  v5 = [(VOTElement *)self _mathAXStringFromAttributedString:v4];

  return v5;
}

- (BOOL)canExpandMathEquation
{
  if (![(VOTElement *)self doesHaveTraits:kAXMathEquationTrait]|| ![(VOTElement *)self shouldExpandMathEquation])
  {
    return 0;
  }

  v3 = [(VOTElement *)self _mathExpression];
  v4 = [v3 subExpressions];
  if ([v4 count] == 1)
  {
    do
    {
      v5 = [v4 lastObject];

      v6 = [v5 subExpressions];

      v4 = v6;
      v3 = v5;
    }

    while ([v6 count] == 1);
  }

  else
  {
    v5 = v3;
    v6 = v4;
  }

  v7 = [v5 maximumDepth] > 1;

  return v7;
}

- (void)expandMathEquation
{
  v5 = [(VOTElement *)self application];
  v3 = [v5 uiElement];
  v4 = [(VOTElement *)self _rawMathEquation];
  [v3 performAXAction:2033 withValue:v4];
}

- (id)mathSummary
{
  v2 = [(VOTElement *)self _mathExpression];
  v3 = [v2 speakableSummary];

  return v3;
}

@end