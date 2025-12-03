@interface AXPhotosGroupAccessibilityElement
+ (void)_accessibilityPerformValidations:(id)validations;
- (AXPhotosGroupAccessibilityElement)initWithAccessibilityContainer:(id)container forGroup:(id)group inView:(id)view withAdditionalScrollViewElements:(id)elements;
- (BOOL)_accessibilityHasVisibleFrame;
- (BOOL)_accessibilityInStoryViewController;
- (BOOL)_axInZoomLevel:(int64_t)level;
- (BOOL)_axIsAssetSection;
- (BOOL)_axIsCardSectionBody;
- (BOOL)_axIsChapterHeader;
- (BOOL)_axIsDecorating;
- (BOOL)_axIsFeedContentLayout;
- (BOOL)_axIsGrid;
- (BOOL)_axIsInlineHeader;
- (BOOL)_axIsMemoriesScrubberInStoryViewController;
- (BOOL)_axIsMemoriesStyleSwitcherInStoryViewController;
- (BOOL)_axIsSectionHeader;
- (BOOL)_axIsStoryClipLayout;
- (BOOL)_axIsStoryColorGradeEditorItem;
- (BOOL)_axIsStoryColorGradeEditorItemOverlay;
- (BOOL)_axIsStoryFullsizeLayout;
- (BOOL)_axIsStoryLayout;
- (BOOL)_axIsStoryScrubberContentLayout;
- (BOOL)_axIsStoryStyleSwitchingFullsizeLayout;
- (BOOL)_axIsStoryThumbnailChromeLayout;
- (BOOL)_axIsStoryTransitionLayout;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrameForScrolling;
- (id)_accessibilityCuratedLibraryUIViewController;
- (id)_accessibilityFeedViewController;
- (id)_accessibilityInfoSource;
- (id)_accessibilityParentForFindingScrollParent;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axCardSectionBodyInSubgroups;
- (id)_axCurrentLeafInStory;
- (id)_axFilterLeafsByContentKind:(int64_t)kind;
- (id)_axFilterStaleKeys:(id)keys usingIndexSet:(id)set;
- (id)_axFilterSubgroupsByInfoSourceType:(id)type;
- (id)_axGroupsAccessibilityElements;
- (id)_axLeafAccessibilityElements;
- (id)_axMoreButtonInMonthsView;
- (id)_axStoryColorGradeLeafElement;
- (id)_axUniqueIdentifierForLeaf:(id)leaf;
- (id)_axUnsortedGroupsAccessibilityElements;
- (id)_axUnsortedLeafAccessibilityElements;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (id)group;
- (id)view;
- (int64_t)_axCompareAXPhotoElement:(id)element toElement:(id)toElement;
- (unint64_t)accessibilityTraits;
- (void)_axCleanupAccessibilityElements:(id)elements withUpdatedKeys:(id)keys;
- (void)_axContainingGroup:(id)group performedAction:(int64_t)action withUserInfo:(id)info;
- (void)_axMoveStoryForInfoSource:(id)source inDirection:(unint64_t)direction;
- (void)_axMoveToNextInfoInDirection:(unint64_t)direction;
- (void)_axRefreshGridGroupData:(id)data;
- (void)_axShouldShowAlternateUI:(BOOL)i;
- (void)_axUnloadStaleLeafObjects;
- (void)_cleanupStaleGroupAccessibilityElements;
- (void)_updateGroupAccessibilityElements;
- (void)_updateLeafAccessibilityElements:(id)elements forVisibleSpriteIndexes:(id)indexes;
- (void)_updateLeafAccessibilityElementsIfNeeded;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation AXPhotosGroupAccessibilityElement

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXGBasicAXGroup"];
  [validationsCopy validateClass:@"PXCuratedLibraryChapterHeaderLayout"];
  [validationsCopy validateClass:@"PXCuratedLibrarySectionHeaderLayout"];
  [validationsCopy validateClass:@"PXGDecoratingLayout"];
  [validationsCopy validateClass:@"PXCuratedLibraryCardSectionBodyLayout"];
  [validationsCopy validateClass:@"PXInlineHeadersSpriteLayout"];
  [validationsCopy validateClass:@"PXAssetsSectionLayout"];
  [validationsCopy validateClass:@"PXGReusableAXInfo"];
  [validationsCopy validateClass:@"PXGView"];
  [validationsCopy validateClass:@"PXGEngine"];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController"];
  [validationsCopy validateClass:@"PhotosUIApps.PUStoryColorGradeEditorItemLayout"];
  [validationsCopy validateClass:@"PUStoryColorGradeEditorItemOverlayLayout"];
  [validationsCopy validateClass:@"PXFeedViewController"];
  [validationsCopy validateClass:@"PXStoryLayout"];
  [validationsCopy validateClass:@"PXStoryThumbnailChromeLayout"];
  [validationsCopy validateClass:@"PXStoryFullsizeLayout"];
  [validationsCopy validateClass:@"PXStoryClipLayout"];
  [validationsCopy validateClass:@"PXStoryTransitionLayout"];
  [validationsCopy validateClass:@"PXFeedContentLayout"];
  [validationsCopy validateClass:@"PXStoryChromeButton"];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceVariable:@"_axInfoSource" withType:"id<PXGAXInfoSource>"];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axRole" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axSubgroups" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axLeafs" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"subgroupIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"loadedSubgroupIndexes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axNextResponder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"_axInfoSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axIsVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PXAssetsSectionLayout" hasInstanceMethod:@"zoomLevel" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PHObject" hasInstanceMethod:@"localIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAsset" isKindOfClass:@"PHObject"];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axAsset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axSubtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axImageName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"spriteIndex" withFullSignature:{"I", 0}];
  [validationsCopy validateClass:@"PXGAXInfo" hasInstanceMethod:@"axContentKind" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axContainingGroup" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGView" hasInstanceMethod:@"engine" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGEngine" hasInstanceMethod:@"ensureUpdatedLayout" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"viewProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryViewProvider" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryViewModel" hasInstanceMethod:@"zoomablePhotosViewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXZoomablePhotosViewModel" hasInstanceMethod:@"isDisplayingIndividualItems" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"PXGAXInfoSource" hasMethod:@"axVisibleSpriteIndexes" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateProtocol:@"PXGAXInfoSource" hasMethod:@"axSpriteIndexClosestToSpriteIndex:inDirection:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"loadLeafAtSpriteIndexIfNeeded:usingOptions:" withFullSignature:{"@", "I", "Q", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"loadedLeafAtSpriteIndex:" withFullSignature:{"@", "I", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"unloadLeafAtSpriteIndex:usingOptions:" withFullSignature:{"@", "I", "Q", 0}];
  [validationsCopy validateProtocol:@"PXGAXResponder" hasMethod:@"axGroup:didRequestToPerformAction:userInfo:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"PXFeedViewController" hasInstanceMethod:@"configuration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXFeedConfiguration" hasInstanceMethod:@"gadgetSpec" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGadgetSpec" hasInstanceMethod:@"interItemSpacing" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PXStoryChromeButton" hasInstanceMethod:@"userData" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXStoryChromeButtonConfiguration" hasInstanceMethod:@"menu" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"UIButton" hasInstanceMethod:@"menu" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXStoryScrubberContentLayout"];
  [validationsCopy validateClass:@"PUStoryViewController"];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceVariable:@"_content" withType:"@"];
  [validationsCopy validateClass:@"PXStoryScrubberContentLayout" hasInstanceMethod:@"_axScrubberFractionNumerator" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PXStoryScrubberContentLayout" hasInstanceMethod:@"_axScrubberFractionDenominator" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PXStoryStyleSwitchingFullsizeLayout"];
  [validationsCopy validateClass:@"PXStoryStyleSwitchingFullsizeLayout" hasInstanceMethod:@"_axSwitcherFractionNumerator" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PXStoryStyleSwitchingFullsizeLayout" hasInstanceMethod:@"_axSwitcherFractionDenominator" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PXStoryStyleSwitchingFullsizeLayout" hasInstanceMethod:@"_axStyleTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axScrollParent" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"PXGAXResponder" hasMethod:@"axContainingScrollViewForAXGroup:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityHasVisibleFrame" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PHAssetCollection" hasInstanceMethod:@"kind" withFullSignature:{"S", 0}];
  [validationsCopy validateClass:@"PHAssetCollection" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAssetCollection" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axIdentifier" withFullSignature:{"@", 0}];
}

- (AXPhotosGroupAccessibilityElement)initWithAccessibilityContainer:(id)container forGroup:(id)group inView:(id)view withAdditionalScrollViewElements:(id)elements
{
  v15.receiver = self;
  v15.super_class = AXPhotosGroupAccessibilityElement;
  elementsCopy = elements;
  viewCopy = view;
  groupCopy = group;
  v12 = [(AXPhotosGroupAccessibilityElement *)&v15 initWithAccessibilityContainer:container];
  [(AXPhotosGroupAccessibilityElement *)v12 setGroup:groupCopy, v15.receiver, v15.super_class];

  [(AXPhotosGroupAccessibilityElement *)v12 setView:viewCopy];
  [(AXPhotosGroupAccessibilityElement *)v12 setAdditionalScrollViewElements:elementsCopy];

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:v12 selector:sel__axRefreshGridGroupData_ name:@"AXPhotosGridGroupDataChanged" object:0];

  return v12;
}

- (BOOL)isAccessibilityElement
{
  group = [(AXPhotosGroupAccessibilityElement *)self group];
  v4 = [group safeIntegerForKey:@"axRole"];

  if ((v4 - 3) < 2)
  {
    return 0;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      v6.receiver = self;
      v6.super_class = AXPhotosGroupAccessibilityElement;
      return [(AXPhotosGroupAccessibilityElement *)&v6 isAccessibilityElement];
    }

    if (![(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesScrubberInStoryViewController])
    {

      return [(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesStyleSwitcherInStoryViewController];
    }

    return 1;
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView]|| [(AXPhotosGroupAccessibilityElement *)self _axIsYearsView]|| [(AXPhotosGroupAccessibilityElement *)self _axIsStoryColorGradeEditorItem])
  {
    return 1;
  }

  return [(AXPhotosGroupAccessibilityElement *)self _axIsStoryLayout];
}

- (id)accessibilityLabel
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  string = [MEMORY[0x29EDBA0F8] string];
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryColorGradeEditorItem])
  {
    _axStoryColorGradeLeafElement = [(AXPhotosGroupAccessibilityElement *)self _axStoryColorGradeLeafElement];
    v5 = _axStoryColorGradeLeafElement;
    if (_axStoryColorGradeLeafElement)
    {
      accessibilityLabel = [_axStoryColorGradeLeafElement accessibilityLabel];
    }

    else
    {
      accessibilityLabel = 0;
    }

    objc_storeStrong(v43 + 5, accessibilityLabel);
    if (v5)
    {
    }
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView]|| [(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    group = [(AXPhotosGroupAccessibilityElement *)self group];
    v8 = [group safeValueForKey:@"_axInfoSource"];
    v9 = [v8 safeValueForKey:@"assetCollection"];

    if ([v9 safeIntForKey:@"kind"] == 1)
    {
      _axSectionHeadersInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axSectionHeadersInSubgroups];
      v11 = [_axSectionHeadersInSubgroups count];
      if (v11)
      {
        firstObject = [_axSectionHeadersInSubgroups firstObject];
        accessibilityLabel2 = [firstObject accessibilityLabel];
      }

      else
      {
        accessibilityLabel2 = 0;
      }

      objc_storeStrong(v43 + 5, accessibilityLabel2);
      if (v11)
      {
      }

      _axChapterHeadersInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axChapterHeadersInSubgroups];
      v15 = v43[5];
      v16 = [_axChapterHeadersInSubgroups count];
      if (v16)
      {
        firstObject = [_axChapterHeadersInSubgroups firstObject];
        accessibilityLabel3 = [firstObject accessibilityLabel];
      }

      else
      {
        accessibilityLabel3 = 0;
      }

      v36 = accessibilityLabel3;
      v37 = @"__AXStringForVariablesSentinel";
      v18 = __UIAXStringForVariables();
      v19 = v43[5];
      v43[5] = v18;

      if (!v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      _axSectionHeadersInSubgroups = [v9 safeStringForKey:@"title"];
      _axChapterHeadersInSubgroups = [v9 safeStringForKey:@"subtitle"];
      v36 = _axChapterHeadersInSubgroups;
      v37 = @"__AXStringForVariablesSentinel";
      v14 = __UIAXStringForVariables();
      firstObject = v43[5];
      v43[5] = v14;
    }

LABEL_23:
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryLayout:v36])
  {
    _axStoryFullsizeLayoutInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axStoryFullsizeLayoutInSubgroups];
    if ([_axStoryFullsizeLayoutInSubgroups count])
    {
      firstObject2 = [_axStoryFullsizeLayoutInSubgroups firstObject];
      _axStoryClipLayoutInSubgroups = [firstObject2 _axStoryClipLayoutInSubgroups];

      v23 = MEMORY[0x29C2E6A40](_axStoryClipLayoutInSubgroups);
      v24 = v43[5];
      v43[5] = v23;
    }
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesScrubberInStoryViewController])
  {
    v25 = accessibilityPhotosUICoreLocalizedString(@"memories.scrubber");
    v26 = v43[5];
    v43[5] = v25;
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesStyleSwitcherInStoryViewController])
  {
    v27 = v43[5];
    v43[5] = 0;
  }

  v28 = v43[5];
  if (v28 && ![v28 length])
  {
    v29 = [(AXPhotosGroupAccessibilityElement *)self _axFilterLeafsByContentKind:2];
    v41[0] = MEMORY[0x29EDCA5F8];
    v41[1] = 3221225472;
    v41[2] = __55__AXPhotosGroupAccessibilityElement_accessibilityLabel__block_invoke;
    v41[3] = &unk_29F2E5E08;
    v41[4] = &v42;
    [v29 enumerateObjectsUsingBlock:v41];
    v30 = [(AXPhotosGroupAccessibilityElement *)self _axFilterLeafsByContentKind:1];
    v40[0] = MEMORY[0x29EDCA5F8];
    v40[1] = 3221225472;
    v40[2] = __55__AXPhotosGroupAccessibilityElement_accessibilityLabel__block_invoke_2;
    v40[3] = &unk_29F2E5E08;
    v40[4] = &v42;
    [v30 enumerateObjectsUsingBlock:v40];
    v31 = [(AXPhotosGroupAccessibilityElement *)self _axFilterLeafsByContentKind:6];
    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 3221225472;
    v39[2] = __55__AXPhotosGroupAccessibilityElement_accessibilityLabel__block_invoke_3;
    v39[3] = &unk_29F2E5E08;
    v39[4] = &v42;
    [v31 enumerateObjectsUsingBlock:v39];
  }

  v32 = v43[5];
  if (v32 && [v32 length])
  {
    accessibilityLabel4 = v43[5];
  }

  else
  {
    v38.receiver = self;
    v38.super_class = AXPhotosGroupAccessibilityElement;
    accessibilityLabel4 = [(AXPhotosGroupAccessibilityElement *)&v38 accessibilityLabel];
  }

  v34 = accessibilityLabel4;
  _Block_object_dispose(&v42, 8);

  return v34;
}

void __55__AXPhotosGroupAccessibilityElement_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 accessibilityLabel];
  v4 = __UIAXStringForVariables();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __55__AXPhotosGroupAccessibilityElement_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 accessibilityLabel];
  v4 = __UIAXStringForVariables();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __55__AXPhotosGroupAccessibilityElement_accessibilityLabel__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 accessibilityLabel];
  v4 = __UIAXStringForVariables();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)accessibilityValue
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  string = [MEMORY[0x29EDBA0F8] string];
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView]|| [(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
    {
      [(AXPhotosGroupAccessibilityElement *)self _axShouldShowAlternateUI:1];
    }

    _axSectionHeadersInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axSectionHeadersInSubgroups];
    v5 = [_axSectionHeadersInSubgroups count];
    if (v5)
    {
      firstObject = [_axSectionHeadersInSubgroups firstObject];
      accessibilityValue = [firstObject accessibilityValue];
    }

    else
    {
      accessibilityValue = 0;
    }

    objc_storeStrong(v46 + 5, accessibilityValue);
    if (v5)
    {
    }

    _axChapterHeadersInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axChapterHeadersInSubgroups];
    v8 = v46[5];
    v9 = [_axChapterHeadersInSubgroups count];
    if (v9)
    {
      accessibilityValue = [_axChapterHeadersInSubgroups firstObject];
      v6AccessibilityValue = [accessibilityValue accessibilityValue];
    }

    else
    {
      v6AccessibilityValue = 0;
    }

    v11 = __UIAXStringForVariables();
    v12 = v46[5];
    v46[5] = v11;

    if (v9)
    {
    }

    if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView:v6AccessibilityValue])
    {
      [(AXPhotosGroupAccessibilityElement *)self _axShouldShowAlternateUI:0];
    }
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesScrubberInStoryViewController])
  {
    group = [(AXPhotosGroupAccessibilityElement *)self group];
    v14 = [group safeValueForKey:@"_axInfoSource"];

    v15 = [v14 safeUnsignedIntegerForKey:@"_axScrubberFractionNumerator"];
    v16 = [v14 safeUnsignedIntegerForKey:@"_axScrubberFractionDenominator"];
    _axCurrentLeafInStory = [(AXPhotosGroupAccessibilityElement *)self _axCurrentLeafInStory];
    v18 = [_axCurrentLeafInStory safeValueForKey:@"_content"];
    v19 = MEMORY[0x29EDBA0F8];
    v20 = accessibilityPhotosUICoreLocalizedString(@"memories.scrubber.choice");
    v21 = [v19 localizedStringWithFormat:v20, v15, v16];
    accessibilityLabel = [v18 accessibilityLabel];
    v41 = @"__AXStringForVariablesSentinel";
    v22 = __UIAXStringForVariables();
    v23 = v46[5];
    v46[5] = v22;
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesStyleSwitcherInStoryViewController:accessibilityLabel])
  {
    group2 = [(AXPhotosGroupAccessibilityElement *)self group];
    v25 = [group2 safeValueForKey:@"_axInfoSource"];

    v26 = [v25 safeUnsignedIntegerForKey:@"_axSwitcherFractionNumerator"];
    v27 = [v25 safeUnsignedIntegerForKey:@"_axSwitcherFractionDenominator"];
    v28 = [v25 safeStringForKey:@"_axStyleTitle"];
    v29 = MEMORY[0x29EDBA0F8];
    v30 = accessibilityPhotosUICoreLocalizedString(@"memories.style.choice");
    v31 = [v29 localizedStringWithFormat:v30, v26, v27];
    v40 = v28;
    v42 = @"__AXStringForVariablesSentinel";
    v32 = __UIAXStringForVariables();
    v33 = v46[5];
    v46[5] = v32;
  }

  if (![v46[5] length])
  {
    v34 = [(AXPhotosGroupAccessibilityElement *)self _axFilterLeafsByContentKind:1];
    v44[0] = MEMORY[0x29EDCA5F8];
    v44[1] = 3221225472;
    v44[2] = __55__AXPhotosGroupAccessibilityElement_accessibilityValue__block_invoke;
    v44[3] = &unk_29F2E5E08;
    v44[4] = &v45;
    [v34 enumerateObjectsUsingBlock:v44];
  }

  v35 = v46[5];
  if (v35 && [v35 length])
  {
    accessibilityValue2 = v46[5];
  }

  else
  {
    v43.receiver = self;
    v43.super_class = AXPhotosGroupAccessibilityElement;
    accessibilityValue2 = [(AXPhotosGroupAccessibilityElement *)&v43 accessibilityValue];
  }

  v37 = accessibilityValue2;
  _Block_object_dispose(&v45, 8);

  return v37;
}

void __55__AXPhotosGroupAccessibilityElement_accessibilityValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 accessibilityValue];
  v4 = __UIAXStringForVariables();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_accessibilityScrollStatus
{
  string = [MEMORY[0x29EDBA0F8] string];
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView]|| [(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    _axCardSectionBodyInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axCardSectionBodyInSubgroups];
    if ([_axCardSectionBodyInSubgroups count])
    {
      firstObject = [_axCardSectionBodyInSubgroups firstObject];
      v6 = [firstObject _axFilterLeafsByContentKind:6];

      if ([v6 count])
      {
        firstObject2 = [v6 firstObject];
        accessibilityLabel = [firstObject2 accessibilityLabel];

        string = firstObject2;
      }

      else
      {
        accessibilityLabel = 0;
      }

      string = accessibilityLabel;
    }
  }

  v12.receiver = self;
  v12.super_class = AXPhotosGroupAccessibilityElement;
  _accessibilityScrollStatus = [(AXPhotosGroupAccessibilityElement *)&v12 _accessibilityScrollStatus];
  v9 = __UIAXStringForVariables();

  return v9;
}

- (CGRect)accessibilityFrame
{
  group = [(AXPhotosGroupAccessibilityElement *)self group];
  [group accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryLayout]&& [(AXPhotosGroupAccessibilityElement *)self _accessibilityInStoryViewController])
  {
    v5 = v5 + 0.0;
    v7 = v7 + 100.0;
    v11 = v11 + -280.0;
  }

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

- (id)accessibilityIdentifier
{
  group = [(AXPhotosGroupAccessibilityElement *)self group];

  if (!group || (-[AXPhotosGroupAccessibilityElement group](self, "group"), v4 = objc_claimAutoreleasedReturnValue(), [v4 safeStringForKey:@"axIdentifier"], accessibilityIdentifier = objc_claimAutoreleasedReturnValue(), v4, !accessibilityIdentifier))
  {
    _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
    if (_accessibilityInfoSource)
    {
      v7 = _accessibilityInfoSource;
      v8 = MEMORY[0x29EDBA0F8];
      className = [_accessibilityInfoSource className];
      accessibilityIdentifier = [v8 stringWithFormat:@"%@-Group", className];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = AXPhotosGroupAccessibilityElement;
      accessibilityIdentifier = [(AXPhotosGroupAccessibilityElement *)&v11 accessibilityIdentifier];
    }
  }

  return accessibilityIdentifier;
}

- (BOOL)_accessibilityHasVisibleFrame
{
  _accessibilityFeedViewController = [(AXPhotosGroupAccessibilityElement *)self _accessibilityFeedViewController];

  if (_accessibilityFeedViewController && ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryTransitionLayout]|| [(AXPhotosGroupAccessibilityElement *)self _axIsFeedContentLayout]))
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = AXPhotosGroupAccessibilityElement;
  return [(AXPhotosGroupAccessibilityElement *)&v5 _accessibilityHasVisibleFrame];
}

- (unint64_t)accessibilityTraits
{
  v13.receiver = self;
  v13.super_class = AXPhotosGroupAccessibilityElement;
  accessibilityTraits = [(AXPhotosGroupAccessibilityElement *)&v13 accessibilityTraits];
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F88] | *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7F60];
    return accessibilityTraits;
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView])
  {
    _axChapterHeadersInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axChapterHeadersInSubgroups];
    v5 = [_axChapterHeadersInSubgroups count];

    if (!v5)
    {
      _axSectionHeadersInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axSectionHeadersInSubgroups];
      v12 = [_axSectionHeadersInSubgroups count];

      if (!v12)
      {
        return accessibilityTraits;
      }

      v9 = *MEMORY[0x29EDC7F88] | *MEMORY[0x29EDC7F70];
      goto LABEL_13;
    }

    v6 = MEMORY[0x29EDC7F80];
LABEL_12:
    v9 = *v6;
LABEL_13:
    accessibilityTraits |= v9;
    return accessibilityTraits;
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryColorGradeEditorItem])
  {
    _axStoryColorGradeLeafElement = [(AXPhotosGroupAccessibilityElement *)self _axStoryColorGradeLeafElement];
    v8 = _axStoryColorGradeLeafElement;
    if (_axStoryColorGradeLeafElement)
    {
      accessibilityTraits |= [_axStoryColorGradeLeafElement accessibilityTraits];
    }
  }

  else
  {
    if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesScrubberInStoryViewController])
    {
      v6 = MEMORY[0x29EDC7F60];
      goto LABEL_12;
    }

    if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryLayout])
    {
      accessibilityTraits |= *MEMORY[0x29EDC7F88];
      if ([(AXPhotosGroupAccessibilityElement *)self _axIsFeedContentLayout])
      {
        v6 = MEMORY[0x29EDC7F70];
        goto LABEL_12;
      }
    }
  }

  return accessibilityTraits;
}

- (id)automationElements
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    _axMoreButtonInMonthsView = [(AXPhotosGroupAccessibilityElement *)self _axMoreButtonInMonthsView];
    accessibilityLabel = [_axMoreButtonInMonthsView accessibilityLabel];
    v6 = accessibilityLabel;
    if (accessibilityLabel && [accessibilityLabel length])
    {
      [array axSafelyAddObject:_axMoreButtonInMonthsView];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXPhotosGroupAccessibilityElement;
    array = [(AXPhotosGroupAccessibilityElement *)&v8 automationElements];
  }

  return array;
}

- (id)accessibilityCustomActions
{
  v45 = *MEMORY[0x29EDCA608];
  if (![(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView])
  {
    if (![(AXPhotosGroupAccessibilityElement *)self _axIsStoryLayout])
    {
      v32.receiver = self;
      v32.super_class = AXPhotosGroupAccessibilityElement;
      accessibilityCustomActions = [(AXPhotosGroupAccessibilityElement *)&v32 accessibilityCustomActions];
      goto LABEL_31;
    }

    accessibilityCustomActions = [MEMORY[0x29EDB8DE8] array];
    _axStoryThumbnailChromeLayoutInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axStoryThumbnailChromeLayoutInSubgroups];
    if (![_axStoryThumbnailChromeLayoutInSubgroups count])
    {
      goto LABEL_29;
    }

    v30 = _axStoryThumbnailChromeLayoutInSubgroups;
    firstObject = [_axStoryThumbnailChromeLayoutInSubgroups firstObject];
    _axLeafAccessibilityElements = [firstObject _axLeafAccessibilityElements];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = _axLeafAccessibilityElements;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (!v14)
    {
      goto LABEL_28;
    }

    v15 = v14;
    v16 = *v38;
LABEL_14:
    v17 = 0;
    while (1)
    {
      if (*v38 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v37 + 1) + 8 * v17);
      leaf = [v18 leaf];
      v20 = [leaf safeValueForKey:@"axView"];

      if ([(AXPhotosGroupAccessibilityElement *)self _axStoryChromeButtonClass])
      {
        if (v20)
        {
          goto LABEL_21;
        }
      }

      else
      {
        [(AXPhotosGroupAccessibilityElement *)self _setAxStoryChromeButtonClass:MEMORY[0x29C2E6930](@"PXStoryChromeButton")];
        if (v20)
        {
LABEL_21:
          [(AXPhotosGroupAccessibilityElement *)self _axStoryChromeButtonClass];
          if (objc_opt_isKindOfClass())
          {
            v21 = [v20 safeValueForKeyPath:@"userData.menu"];

            v22 = objc_alloc(MEMORY[0x29EDC78E0]);
            if (v21)
            {
              accessibilityLabel = [v20 accessibilityLabel];
              v35[0] = MEMORY[0x29EDCA5F8];
              v35[1] = 3221225472;
              v35[2] = __63__AXPhotosGroupAccessibilityElement_accessibilityCustomActions__block_invoke_2;
              v35[3] = &unk_29F2E5E30;
              v36[0] = v20;
              v36[1] = v18;
              v24 = [v22 initWithName:accessibilityLabel actionHandler:v35];

              [accessibilityCustomActions addObject:v24];
              v25 = v36;
            }

            else
            {
              accessibilityLabel2 = [v18 accessibilityLabel];
              v33[0] = MEMORY[0x29EDCA5F8];
              v33[1] = 3221225472;
              v33[2] = __63__AXPhotosGroupAccessibilityElement_accessibilityCustomActions__block_invoke_3;
              v33[3] = &unk_29F2E5E58;
              v34 = v20;
              v27 = [v22 initWithName:accessibilityLabel2 actionHandler:v33];

              [accessibilityCustomActions addObject:v27];
              v25 = &v34;
            }
          }
        }
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (!v15)
        {
LABEL_28:

          _axStoryThumbnailChromeLayoutInSubgroups = v30;
          goto LABEL_29;
        }

        goto LABEL_14;
      }
    }
  }

  accessibilityCustomActions = [MEMORY[0x29EDB8DE8] array];
  _axMoreButtonInMonthsView = [(AXPhotosGroupAccessibilityElement *)self _axMoreButtonInMonthsView];
  _axStoryThumbnailChromeLayoutInSubgroups = _axMoreButtonInMonthsView;
  if (_axMoreButtonInMonthsView)
  {
    leaf2 = [_axMoreButtonInMonthsView leaf];
    v6 = [leaf2 safeUIViewForKey:@"axView"];

    if ([v6 _accessibilityViewIsVisible])
    {
      if (![(AXPhotosGroupAccessibilityElement *)self _axCuratedLibraryOverlayButtonClass])
      {
        [(AXPhotosGroupAccessibilityElement *)self _setAxCuratedLibraryOverlayButtonClass:MEMORY[0x29C2E6930](@"PXCuratedLibraryOverlayButton")];
      }

      [(AXPhotosGroupAccessibilityElement *)self _axCuratedLibraryOverlayButtonClass];
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 safeValueForKey:@"menu"];

        if (v7)
        {
          v8 = objc_alloc(MEMORY[0x29EDC78E0]);
          accessibilityLabel3 = [v6 accessibilityLabel];
          v41[0] = MEMORY[0x29EDCA5F8];
          v41[1] = 3221225472;
          v41[2] = __63__AXPhotosGroupAccessibilityElement_accessibilityCustomActions__block_invoke;
          v41[3] = &unk_29F2E5E30;
          v42 = v6;
          v43 = _axStoryThumbnailChromeLayoutInSubgroups;
          v10 = [v8 initWithName:accessibilityLabel3 actionHandler:v41];

          [accessibilityCustomActions addObject:v10];
        }
      }
    }
  }

LABEL_29:

LABEL_31:
  v28 = *MEMORY[0x29EDCA608];

  return accessibilityCustomActions;
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  _axUnsortedGroupsAccessibilityElements = [(AXPhotosGroupAccessibilityElement *)self _axUnsortedGroupsAccessibilityElements];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __58__AXPhotosGroupAccessibilityElement_accessibilityElements__block_invoke;
  v14[3] = &unk_29F2E5E80;
  v5 = array;
  v15 = v5;
  [_axUnsortedGroupsAccessibilityElements enumerateObjectsUsingBlock:v14];
  _axUnsortedLeafAccessibilityElements = [(AXPhotosGroupAccessibilityElement *)self _axUnsortedLeafAccessibilityElements];
  if ([_axUnsortedLeafAccessibilityElements count])
  {
    [v5 axSafelyAddObjectsFromArray:_axUnsortedLeafAccessibilityElements];
  }

  additionalScrollViewElements = [(AXPhotosGroupAccessibilityElement *)self additionalScrollViewElements];
  if (additionalScrollViewElements)
  {
    additionalScrollViewElements2 = [(AXPhotosGroupAccessibilityElement *)self additionalScrollViewElements];
    array2 = additionalScrollViewElements2[2]();
  }

  else
  {
    array2 = [MEMORY[0x29EDB8D80] array];
  }

  [v5 axSafelyAddObjectsFromArray:array2];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __58__AXPhotosGroupAccessibilityElement_accessibilityElements__block_invoke_2;
  v13[3] = &unk_29F2E5EA8;
  v13[4] = self;
  v10 = [v5 sortedArrayUsingComparator:v13];
  v11 = [v10 mutableCopy];

  return v11;
}

void __58__AXPhotosGroupAccessibilityElement_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 group];
  v4 = [v3 safeBoolForKey:@"axIsVisible"];

  if (v4)
  {
    [*(a1 + 32) axSafelyAddObject:v5];
  }
}

- (CGRect)accessibilityFrameForScrolling
{
  [(AXPhotosGroupAccessibilityElement *)self accessibilityFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  _accessibilityCuratedLibraryUIViewController = [(AXPhotosGroupAccessibilityElement *)self _accessibilityCuratedLibraryUIViewController];
  if (_accessibilityCuratedLibraryUIViewController)
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectInset(v22, 0.0, (height + width) * -0.5);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  else
  {
    _accessibilityFeedViewController = [(AXPhotosGroupAccessibilityElement *)self _accessibilityFeedViewController];
    v13 = _accessibilityFeedViewController;
    if (_accessibilityFeedViewController)
    {
      v14 = [_accessibilityFeedViewController safeValueForKeyPath:@"configuration.gadgetSpec"];
      [v14 safeCGFloatForKey:@"interItemSpacing"];
      if (v14)
      {
        v16 = v15 * -4.0;
        v17 = 0.0;
      }

      else
      {
        v17 = height / -3.0;
        v16 = 0.0;
      }

      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v25 = CGRectInset(v24, v16, v17);
      x = v25.origin.x;
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
    }
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)_accessibilityParentForFindingScrollParent
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryLayout]&& ([(AXPhotosGroupAccessibilityElement *)self _accessibilityFeedViewController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    group = [(AXPhotosGroupAccessibilityElement *)self group];
    v5 = [group safeValueForKey:@"axScrollParent"];

    v6 = [v5 safeValueForKey:@"axNextResponder"];
    group2 = [(AXPhotosGroupAccessibilityElement *)self group];
    accessibilityContainer = [v6 axContainingScrollViewForAXGroup:group2];
  }

  else
  {
    accessibilityContainer = [(AXPhotosGroupAccessibilityElement *)self accessibilityContainer];
  }

  return accessibilityContainer;
}

- (void)accessibilityIncrement
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesScrubberInStoryViewController])
  {

    [(AXPhotosGroupAccessibilityElement *)self _axMoveStoryForInfoSource:@"PXStoryScrubberContentLayout" inDirection:5];
  }

  else
  {

    [(AXPhotosGroupAccessibilityElement *)self _axMoveToNextInfoInDirection:5];
  }
}

- (void)accessibilityDecrement
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesScrubberInStoryViewController])
  {

    [(AXPhotosGroupAccessibilityElement *)self _axMoveStoryForInfoSource:@"PXStoryScrubberContentLayout" inDirection:6];
  }

  else
  {

    [(AXPhotosGroupAccessibilityElement *)self _axMoveToNextInfoInDirection:6];
  }
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesStyleSwitcherInStoryViewController])
  {
    goto LABEL_5;
  }

  if (scroll == 2)
  {
    v5 = 5;
    goto LABEL_7;
  }

  if (scroll != 1)
  {
LABEL_5:
    v7.receiver = self;
    v7.super_class = AXPhotosGroupAccessibilityElement;
    return [(AXPhotosGroupAccessibilityElement *)&v7 accessibilityScroll:scroll];
  }

  v5 = 6;
LABEL_7:
  [(AXPhotosGroupAccessibilityElement *)self _axMoveStoryForInfoSource:@"PXStoryStyleSwitchingFullsizeLayout" inDirection:v5];
  return 1;
}

- (id)accessibilityHint
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    accessibilityHint = accessibilityPhotosUICoreLocalizedString(@"years.adjustment.instructions");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AXPhotosGroupAccessibilityElement;
    accessibilityHint = [(AXPhotosGroupAccessibilityElement *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesStyleSwitcherInStoryViewController])
  {
    _axLeafAccessibilityElements = [(AXPhotosGroupAccessibilityElement *)self _axLeafAccessibilityElements];
    _accessibilitySupplementaryFooterViews = [_axLeafAccessibilityElements mutableCopy];

    [_accessibilitySupplementaryFooterViews sortUsingSelector:sel_accessibilityCompareGeometry_];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AXPhotosGroupAccessibilityElement;
    _accessibilitySupplementaryFooterViews = [(AXPhotosGroupAccessibilityElement *)&v6 _accessibilitySupplementaryFooterViews];
  }

  return _accessibilitySupplementaryFooterViews;
}

- (void)_updateGroupAccessibilityElements
{
  _axCachedSubgroupElements = [(AXPhotosGroupAccessibilityElement *)self _axCachedSubgroupElements];
  group = [(AXPhotosGroupAccessibilityElement *)self group];
  v5 = [group safeArrayForKey:@"axSubgroups"];

  if ([v5 count])
  {
    if (!_axCachedSubgroupElements)
    {
      _axCachedSubgroupElements = [MEMORY[0x29EDB8E00] dictionary];
    }

    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __70__AXPhotosGroupAccessibilityElement__updateGroupAccessibilityElements__block_invoke;
    v9 = &unk_29F2E5ED0;
    _axCachedSubgroupElements = _axCachedSubgroupElements;
    v10 = _axCachedSubgroupElements;
    selfCopy = self;
    [v5 enumerateObjectsUsingBlock:&v6];
    [(AXPhotosGroupAccessibilityElement *)self _setAxCachedSubgroupElements:_axCachedSubgroupElements, v6, v7, v8, v9];
  }

  else
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxCachedSubgroupElements:0];
  }

  [(AXPhotosGroupAccessibilityElement *)self _cleanupStaleGroupAccessibilityElements];
}

void __70__AXPhotosGroupAccessibilityElement__updateGroupAccessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v9, "safeIntegerForKey:", @"subgroupIndex"}];
  v4 = [*(a1 + 32) objectForKey:v3];
  if (v4)
  {
    v5 = v4;
    [(AXPhotosGroupAccessibilityElement *)v4 setGroup:v9];
  }

  else
  {
    v6 = [AXPhotosGroupAccessibilityElement alloc];
    v7 = *(a1 + 40);
    v8 = [v7 view];
    v5 = [(AXPhotosGroupAccessibilityElement *)v6 initWithAccessibilityContainer:v7 forGroup:v9 inView:v8];

    [*(a1 + 32) setObject:v5 forKey:v3];
  }
}

- (void)_cleanupStaleGroupAccessibilityElements
{
  _axCachedSubgroupElements = [(AXPhotosGroupAccessibilityElement *)self _axCachedSubgroupElements];
  if (_axCachedSubgroupElements)
  {
    v11 = 0;
    objc_opt_class();
    group = [(AXPhotosGroupAccessibilityElement *)self group];
    v5 = [group safeValueForKey:@"loadedSubgroupIndexes"];
    v6 = __UIAccessibilityCastAsClass();

    allKeys = [_axCachedSubgroupElements allKeys];
    v8 = [(AXPhotosGroupAccessibilityElement *)self _axFilterStaleKeys:allKeys usingIndexSet:v6];

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __76__AXPhotosGroupAccessibilityElement__cleanupStaleGroupAccessibilityElements__block_invoke;
    v9[3] = &unk_29F2E5EF8;
    v10 = _axCachedSubgroupElements;
    [v8 enumerateIndexesUsingBlock:v9];
  }
}

void __76__AXPhotosGroupAccessibilityElement__cleanupStaleGroupAccessibilityElements__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:a2];
  [v2 removeObjectForKey:v3];
}

- (id)_axUnsortedGroupsAccessibilityElements
{
  _axCachedSubgroupElements = [(AXPhotosGroupAccessibilityElement *)self _axCachedSubgroupElements];
  if (!_axCachedSubgroupElements)
  {
    [(AXPhotosGroupAccessibilityElement *)self _updateGroupAccessibilityElements];
    _axCachedSubgroupElements = [(AXPhotosGroupAccessibilityElement *)self _axCachedSubgroupElements];
  }

  allValues = [_axCachedSubgroupElements allValues];

  return allValues;
}

- (id)_axGroupsAccessibilityElements
{
  v8[1] = *MEMORY[0x29EDCA608];
  _axUnsortedGroupsAccessibilityElements = [(AXPhotosGroupAccessibilityElement *)self _axUnsortedGroupsAccessibilityElements];
  v3 = [MEMORY[0x29EDBA0F0] sortDescriptorWithKey:@"group.subgroupIndex" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
  v5 = [_axUnsortedGroupsAccessibilityElements sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)_axFilterSubgroupsByInfoSourceType:(id)type
{
  typeCopy = type;
  _axGroupsAccessibilityElements = [(AXPhotosGroupAccessibilityElement *)self _axGroupsAccessibilityElements];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __72__AXPhotosGroupAccessibilityElement__axFilterSubgroupsByInfoSourceType___block_invoke;
  v9[3] = &unk_29F2E5F20;
  v10 = typeCopy;
  v6 = typeCopy;
  v7 = [_axGroupsAccessibilityElements axFilterObjectsUsingBlock:v9];

  return v7;
}

uint64_t __72__AXPhotosGroupAccessibilityElement__axFilterSubgroupsByInfoSourceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqualToString:@"AXPhotosGridSectionHeader"])
  {
    v4 = [v3 _axIsSectionHeader];
  }

  else if ([*(a1 + 32) isEqualToString:@"AXPhotosGridChapterHeader"])
  {
    v4 = [v3 _axIsChapterHeader];
  }

  else if ([*(a1 + 32) isEqualToString:@"AXPhotosGridDecorating"])
  {
    v4 = [v3 _axIsDecorating];
  }

  else if ([*(a1 + 32) isEqualToString:@"AXPhotosGridCardSectionBody"])
  {
    v4 = [v3 _axIsCardSectionBody];
  }

  else if ([*(a1 + 32) isEqualToString:@"AXPhotosStoryFullsizeLayoutKey"])
  {
    v4 = [v3 _axIsStoryFullsizeLayout];
  }

  else if ([*(a1 + 32) isEqualToString:@"AXPhotosStoryClipLayoutKey"])
  {
    v4 = [v3 _axIsStoryClipLayout];
  }

  else if ([*(a1 + 32) isEqualToString:@"AXPhotosStoryThumbnailChromeLayoutKey"])
  {
    v4 = [v3 _axIsStoryThumbnailChromeLayout];
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:@"AXPhotosStoryScrubberContentLayoutKey"])
    {
      v5 = 0;
      goto LABEL_18;
    }

    v4 = [v3 _axIsStoryScrubberContentLayout];
  }

  v5 = v4;
LABEL_18:

  return v5;
}

- (id)_axCardSectionBodyInSubgroups
{
  _axDecoratingInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axDecoratingInSubgroups];
  if ([_axDecoratingInSubgroups count])
  {
    firstObject = [_axDecoratingInSubgroups firstObject];
    v4 = [firstObject _axFilterSubgroupsByInfoSourceType:@"AXPhotosGridCardSectionBody"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_axUniqueIdentifierForLeaf:(id)leaf
{
  leafCopy = leaf;
  v4 = [leafCopy safeIntegerForKey:@"axContentKind"];
  v5 = 0;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = @"axImageName";
      goto LABEL_13;
    }

    if (v4 != 5)
    {
      if (v4 != 6)
      {
        goto LABEL_18;
      }

      v7 = [leafCopy safeValueForKey:@"axAsset"];
      v8 = [v7 safeValueForKey:@"localIdentifier"];
      if (!v8)
      {
        MEMORY[0x29C2E6930](@"CKMediaObjectBackedAsset");
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v5 = 0;
          goto LABEL_17;
        }

        v8 = [v7 safeValueForKey:@"uuid"];
      }

      goto LABEL_14;
    }

    v10 = MEMORY[0x29EDBA0F8];
    v7 = [leafCopy safeValueForKey:@"axView"];
    v9 = [v10 stringWithFormat:@"%p", v7];
LABEL_16:
    v5 = __UIAXStringForVariables();

    goto LABEL_17;
  }

  if ((v4 - 2) >= 2)
  {
    if (v4 != 1)
    {
      goto LABEL_18;
    }

    v7 = [leafCopy safeValueForKey:@"axTitle"];
    v9 = [leafCopy safeValueForKey:@"axSubtitle"];
    goto LABEL_16;
  }

  v6 = @"axText";
LABEL_13:
  v7 = [leafCopy safeValueForKey:v6];
  v8 = __UIAXStringForVariables();
LABEL_14:
  v5 = v8;
LABEL_17:

LABEL_18:

  return v5;
}

- (void)_updateLeafAccessibilityElementsIfNeeded
{
  _axCachedLeafElements = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafElements];
  _axCachedLeafSpriteIndexes = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafSpriteIndexes];
  group = [(AXPhotosGroupAccessibilityElement *)self group];
  v6 = [group safeArrayForKey:@"axLeafs"];

  if (![v6 count])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxCachedLeafElements:0];
    goto LABEL_11;
  }

  if (_axCachedLeafElements)
  {
    if (_axCachedLeafSpriteIndexes)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _axCachedLeafElements = [MEMORY[0x29EDB8E00] dictionary];
    if (_axCachedLeafSpriteIndexes)
    {
      goto LABEL_4;
    }
  }

  _axCachedLeafSpriteIndexes = [MEMORY[0x29EDBA048] indexSet];
LABEL_4:
  _accessibilityCuratedLibraryUIViewController = [(AXPhotosGroupAccessibilityElement *)self _accessibilityCuratedLibraryUIViewController];
  v8 = [_accessibilityCuratedLibraryUIViewController safeValueForKey:@"viewProvider"];
  v9 = [v8 safeValueForKey:@"viewModel"];
  v10 = [v9 safeValueForKey:@"zoomablePhotosViewModel"];
  v11 = [v10 safeBoolForKey:@"isDisplayingIndividualItems"];

  if (!_accessibilityCuratedLibraryUIViewController || v11)
  {
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __77__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElementsIfNeeded__block_invoke;
    v16[3] = &unk_29F2E5F48;
    v17 = _axCachedLeafSpriteIndexes;
    objc_copyWeak(&v20, &location);
    selfCopy = self;
    v12 = _axCachedLeafElements;
    v19 = v12;
    [v6 enumerateObjectsUsingBlock:v16];
    objc_opt_class();
    _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
    v14 = [_accessibilityInfoSource safeValueForKey:@"axVisibleSpriteIndexes"];
    v15 = __UIAccessibilityCastAsClass();

    if ([v15 count])
    {
      [(AXPhotosGroupAccessibilityElement *)self _updateLeafAccessibilityElements:v12 forVisibleSpriteIndexes:v15];
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

LABEL_11:
}

void __77__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElementsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) addIndex:{objc_msgSend(v6, "safeUnsignedIntForKey:", @"spriteIndex"}];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained _axUniqueIdentifierForLeaf:v6];

  if (v4)
  {
    v5 = [[AXPhotosLeafAccessibilityElement alloc] initWithAccessibilityContainer:*(a1 + 40) forLeaf:v6];
    [*(a1 + 48) setObject:v5 forKey:v4];
  }
}

- (void)_updateLeafAccessibilityElements:(id)elements forVisibleSpriteIndexes:(id)indexes
{
  elementsCopy = elements;
  v7 = MEMORY[0x29EDB8E20];
  indexesCopy = indexes;
  v9 = [v7 set];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __94__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElements_forVisibleSpriteIndexes___block_invoke;
  v12[3] = &unk_29F2E5F98;
  v12[4] = self;
  v13 = elementsCopy;
  v14 = v9;
  v10 = v9;
  v11 = elementsCopy;
  [indexesCopy enumerateIndexesUsingBlock:v12];

  [(AXPhotosGroupAccessibilityElement *)self _axUnloadStaleLeafObjects];
  [(AXPhotosGroupAccessibilityElement *)self _axCleanupAccessibilityElements:v11 withUpdatedKeys:v10];
}

void __94__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElements_forVisibleSpriteIndexes___block_invoke(id *a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9 = a1[4];
  AXPerformSafeBlock();
  v2 = v11[5];
  _Block_object_dispose(&v10, 8);

  if (!v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v8 = a1[4];
    AXPerformSafeBlock();
    v3 = v11[5];
    _Block_object_dispose(&v10, 8);

    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v7 = a1[4];
    AXPerformSafeBlock();
    v2 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  v4 = [a1[4] _axUniqueIdentifierForLeaf:v2];
  if (v4)
  {
    v5 = [a1[5] objectForKey:v4];
    if (v5)
    {
      v6 = v5;
      [(AXPhotosLeafAccessibilityElement *)v5 setLeaf:v2];
    }

    else
    {
      v6 = [[AXPhotosLeafAccessibilityElement alloc] initWithAccessibilityContainer:a1[4] forLeaf:v2];
      [a1[5] setObject:v6 forKey:v4];
    }
  }

  [a1[6] axSafelyAddObject:v4];
}

void __94__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElements_forVisibleSpriteIndexes___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) group];
  v2 = [v5 loadedLeafAtSpriteIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __94__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElements_forVisibleSpriteIndexes___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) group];
  v2 = [v5 loadLeafAtSpriteIndexIfNeeded:*(a1 + 48) usingOptions:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __94__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElements_forVisibleSpriteIndexes___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) group];
  v2 = [v5 loadedLeafAtSpriteIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_axUnloadStaleLeafObjects
{
  _axCachedLeafSpriteIndexes = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafSpriteIndexes];
  v12 = 0;
  objc_opt_class();
  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  v5 = [_accessibilityInfoSource safeValueForKey:@"axVisibleSpriteIndexes"];
  v6 = __UIAccessibilityCastAsClass();

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __62__AXPhotosGroupAccessibilityElement__axUnloadStaleLeafObjects__block_invoke;
  v9[3] = &unk_29F2E5FE8;
  v10 = v6;
  selfCopy = self;
  v7 = v6;
  [_axCachedLeafSpriteIndexes enumerateIndexesUsingBlock:v9];
  v8 = [v7 mutableCopy];
  [(AXPhotosGroupAccessibilityElement *)self _setAxCachedLeafSpriteIndexes:v8];
}

uint64_t __62__AXPhotosGroupAccessibilityElement__axUnloadStaleLeafObjects__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    return AXPerformSafeBlock();
  }

  return result;
}

void __62__AXPhotosGroupAccessibilityElement__axUnloadStaleLeafObjects__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) group];
  [v2 unloadLeafAtSpriteIndex:*(a1 + 40) usingOptions:3];
}

- (void)_axCleanupAccessibilityElements:(id)elements withUpdatedKeys:(id)keys
{
  elementsCopy = elements;
  keysCopy = keys;
  if ([elementsCopy count])
  {
    v8 = MEMORY[0x29EDB8E20];
    allKeys = [elementsCopy allKeys];
    v10 = [v8 setWithArray:allKeys];

    [v10 minusSet:keysCopy];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __85__AXPhotosGroupAccessibilityElement__axCleanupAccessibilityElements_withUpdatedKeys___block_invoke;
    v11[3] = &unk_29F2E6010;
    v12 = elementsCopy;
    [v10 enumerateObjectsUsingBlock:v11];
  }

  [(AXPhotosGroupAccessibilityElement *)self _setAxCachedLeafElements:elementsCopy];
}

- (id)_axUnsortedLeafAccessibilityElements
{
  _axCachedLeafElements = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafElements];
  if (!_axCachedLeafElements)
  {
    [(AXPhotosGroupAccessibilityElement *)self _updateLeafAccessibilityElementsIfNeeded];
    _axCachedLeafElements = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafElements];
  }

  allValues = [_axCachedLeafElements allValues];

  return allValues;
}

- (id)_axLeafAccessibilityElements
{
  v8[1] = *MEMORY[0x29EDCA608];
  _axUnsortedLeafAccessibilityElements = [(AXPhotosGroupAccessibilityElement *)self _axUnsortedLeafAccessibilityElements];
  v3 = [MEMORY[0x29EDBA0F0] sortDescriptorWithKey:@"leaf.spriteIndex" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
  v5 = [_axUnsortedLeafAccessibilityElements sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)_axFilterLeafsByContentKind:(int64_t)kind
{
  _axLeafAccessibilityElements = [(AXPhotosGroupAccessibilityElement *)self _axLeafAccessibilityElements];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __65__AXPhotosGroupAccessibilityElement__axFilterLeafsByContentKind___block_invoke;
  v7[3] = &__block_descriptor_40_e45_B24__0__AXPhotosLeafAccessibilityElement_8Q16l;
  v7[4] = kind;
  v5 = [_axLeafAccessibilityElements axFilterObjectsUsingBlock:v7];

  return v5;
}

BOOL __65__AXPhotosGroupAccessibilityElement__axFilterLeafsByContentKind___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 leaf];
  v4 = [v3 safeIntegerForKey:@"axContentKind"];

  return v4 == *(a1 + 32);
}

- (void)_axContainingGroup:(id)group performedAction:(int64_t)action withUserInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v12 = MEMORY[0x29EDCA5F8];
  v13 = groupCopy;
  v14 = infoCopy;
  AXPerformSafeBlock();

  _Block_object_dispose(v15, 8);
  v9 = [(AXPhotosGroupAccessibilityElement *)self view:v12];
  v10 = [v9 safeValueForKey:@"engine"];

  v11 = [v10 safeValueForKey:@"ensureUpdatedLayout"];
}

void __85__AXPhotosGroupAccessibilityElement__axContainingGroup_performedAction_withUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"axNextResponder"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 axGroup:*(a1 + 32) didRequestToPerformAction:*(a1 + 56) userInfo:*(a1 + 40)];
}

- (void)_axShouldShowAlternateUI:(BOOL)i
{
  iCopy = i;
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    _axCardSectionBodyInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axCardSectionBodyInSubgroups];
    if ([_axCardSectionBodyInSubgroups count])
    {
      firstObject = [_axCardSectionBodyInSubgroups firstObject];
      group = [firstObject group];
      v8 = [group safeArrayForKey:@"axLeafs"];

      if ([v8 count])
      {
        firstObject2 = [v8 firstObject];
        if (firstObject2)
        {
          v10 = firstObject2;
          v11 = [firstObject2 safeValueForKey:@"axContainingGroup"];
          if (v11)
          {
            v16 = 0;
            v17 = &v16;
            v18 = 0x3032000000;
            v19 = __Block_byref_object_copy_;
            v20 = __Block_byref_object_dispose_;
            v21 = 0;
            v14 = MEMORY[0x29EDCA5F8];
            v15 = v10;
            AXPerformSafeBlock();
            v12 = v17[5];

            _Block_object_dispose(&v16, 8);
            if (iCopy)
            {
              v13 = 2;
            }

            else
            {
              v13 = 3;
            }

            [(AXPhotosGroupAccessibilityElement *)self _axContainingGroup:v11 performedAction:v13 withUserInfo:v12, v14, 3221225472, __62__AXPhotosGroupAccessibilityElement__axShouldShowAlternateUI___block_invoke, &unk_29F2E6080];
          }
        }
      }
    }
  }
}

void __62__AXPhotosGroupAccessibilityElement__axShouldShowAlternateUI___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsProtocol();
  v4 = PXGAXCreateActionUserInfo();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_axMoreButtonInMonthsView
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView])
  {
    _axSectionHeadersInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axSectionHeadersInSubgroups];
    if ([_axSectionHeadersInSubgroups count])
    {
      firstObject = [_axSectionHeadersInSubgroups firstObject];
      _axLeafAccessibilityElements = [firstObject _axLeafAccessibilityElements];

      v6 = [_axLeafAccessibilityElements axFilterObjectsUsingBlock:&__block_literal_global];
      if ([v6 count])
      {
        firstObject2 = [v6 firstObject];
      }

      else
      {
        firstObject2 = 0;
      }
    }

    else
    {
      firstObject2 = 0;
    }
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

BOOL __62__AXPhotosGroupAccessibilityElement__axMoreButtonInMonthsView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 leaf];
  v3 = [v2 safeIntegerForKey:@"axContentKind"] == 5;

  return v3;
}

- (void)_axMoveToNextInfoInDirection:(unint64_t)direction
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    _axCardSectionBodyInSubgroups = [(AXPhotosGroupAccessibilityElement *)self _axCardSectionBodyInSubgroups];
    if ([_axCardSectionBodyInSubgroups count])
    {
      firstObject = [_axCardSectionBodyInSubgroups firstObject];
      _axLeafAccessibilityElements = [firstObject _axLeafAccessibilityElements];
      if ([_axLeafAccessibilityElements count])
      {
        firstObject2 = [_axLeafAccessibilityElements firstObject];
        if (firstObject2)
        {
          v8 = firstObject2;
          leaf = [firstObject2 leaf];
          v10 = [leaf safeValueForKey:@"axContainingGroup"];

          if (v10)
          {
            v24 = [v10 safeValueForKey:@"axInfoSource"];
            leaf2 = [v8 leaf];
            [leaf2 safeUnsignedIntForKey:@"spriteIndex"];

            v29 = 0;
            v30 = &v29;
            v31 = 0x3032000000;
            v32 = __Block_byref_object_copy_;
            v33 = __Block_byref_object_dispose_;
            v34 = 0;
            v28 = v8;
            AXPerformSafeBlock();
            v12 = v30[5];

            _Block_object_dispose(&v29, 8);
            v23 = v12;
            [(AXPhotosGroupAccessibilityElement *)self _axContainingGroup:v10 performedAction:2 withUserInfo:v12];
            v29 = 0;
            v30 = &v29;
            v31 = 0x2020000000;
            LODWORD(v32) = 0;
            v25 = v24;
            AXPerformSafeBlock();
            LODWORD(v12) = *(v30 + 6);

            _Block_object_dispose(&v29, 8);
            if (v12 == -1)
            {
              UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA40]);
              selfCopy = self;
              v19 = v23;
              [(AXPhotosGroupAccessibilityElement *)selfCopy _axContainingGroup:v10 performedAction:3 withUserInfo:v23];
            }

            else
            {
              v29 = 0;
              v30 = &v29;
              v31 = 0x3032000000;
              v32 = __Block_byref_object_copy_;
              v33 = __Block_byref_object_dispose_;
              v34 = 0;
              v27 = v10;
              AXPerformSafeBlock();
              v13 = v30[5];

              _Block_object_dispose(&v29, 8);
              v29 = 0;
              v30 = &v29;
              v31 = 0x3032000000;
              v32 = __Block_byref_object_copy_;
              v33 = __Block_byref_object_dispose_;
              v34 = 0;
              v14 = v27;
              AXPerformSafeBlock();
              v15 = v30[5];

              _Block_object_dispose(&v29, 8);
              if (v15)
              {
                v29 = 0;
                v30 = &v29;
                v31 = 0x3032000000;
                v32 = __Block_byref_object_copy_;
                v33 = __Block_byref_object_dispose_;
                v34 = 0;
                v22 = v15;
                v26 = v15;
                AXPerformSafeBlock();
                v16 = v30[5];

                _Block_object_dispose(&v29, 8);
                [(AXPhotosGroupAccessibilityElement *)self _axContainingGroup:v14 performedAction:4 withUserInfo:v16];
                accessibilityValue = [(AXPhotosGroupAccessibilityElement *)self accessibilityValue];
                accessibilityLabel = [(AXPhotosGroupAccessibilityElement *)self accessibilityLabel];
                v18 = __UIAXStringForVariables();

                UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v18);
                [(AXPhotosGroupAccessibilityElement *)self _axContainingGroup:v14 performedAction:3 withUserInfo:v16, accessibilityLabel, @"__AXStringForVariablesSentinel"];

                v15 = v22;
              }

              v19 = v23;
            }
          }
        }
      }
    }
  }
}

void __66__AXPhotosGroupAccessibilityElement__axMoveToNextInfoInDirection___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) leaf];
  v2 = PXGAXCreateActionUserInfo();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __66__AXPhotosGroupAccessibilityElement__axMoveToNextInfoInDirection___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsProtocol();
  *(*(*(a1 + 40) + 8) + 24) = [v3 axSpriteIndexClosestToSpriteIndex:*(a1 + 56) inDirection:*(a1 + 48)];
}

uint64_t __66__AXPhotosGroupAccessibilityElement__axMoveToNextInfoInDirection___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) loadLeafAtSpriteIndexIfNeeded:*(a1 + 48) usingOptions:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __66__AXPhotosGroupAccessibilityElement__axMoveToNextInfoInDirection___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) loadedLeafAtSpriteIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __66__AXPhotosGroupAccessibilityElement__axMoveToNextInfoInDirection___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsProtocol();
  v4 = PXGAXCreateActionUserInfo();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_axCurrentLeafInStory
{
  group = [(AXPhotosGroupAccessibilityElement *)self group];
  v3 = [group safeArrayForKey:@"axLeafs"];

  v4 = [v3 axFilterObjectsUsingBlock:&__block_literal_global_933];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_axMoveStoryForInfoSource:(id)source inDirection:(unint64_t)direction
{
  sourceCopy = source;
  _axCurrentLeafInStory = [(AXPhotosGroupAccessibilityElement *)self _axCurrentLeafInStory];
  if (_axCurrentLeafInStory)
  {
    group = [(AXPhotosGroupAccessibilityElement *)self group];
    v9 = [group safeValueForKey:@"axInfoSource"];

    MEMORY[0x29C2E6930](sourceCopy);
    if (objc_opt_isKindOfClass())
    {
      v10 = [_axCurrentLeafInStory safeUnsignedIntForKey:@"spriteIndex"];
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      LODWORD(v22) = 0;
      v25 = MEMORY[0x29EDCA5F8];
      v26 = 3221225472;
      v27 = __75__AXPhotosGroupAccessibilityElement__axMoveStoryForInfoSource_inDirection___block_invoke;
      v28 = &unk_29F2E60C8;
      v30 = &v19;
      v11 = v9;
      v32 = v10;
      v29 = v11;
      directionCopy = direction;
      AXPerformSafeBlock();
      v12 = *(v20 + 6);

      _Block_object_dispose(&v19, 8);
      if (v12 == -1)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA40]);
      }

      else
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy_;
        v23 = __Block_byref_object_dispose_;
        v24 = 0;
        AXPerformSafeBlock();
        v13 = v20[5];
        _Block_object_dispose(&v19, 8);

        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy_;
        v23 = __Block_byref_object_dispose_;
        v24 = 0;
        AXPerformSafeBlock();
        v14 = v20[5];
        _Block_object_dispose(&v19, 8);

        if (v14)
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x3032000000;
          v22 = __Block_byref_object_copy_;
          v23 = __Block_byref_object_dispose_;
          v24 = 0;
          v17 = MEMORY[0x29EDCA5F8];
          v18 = v14;
          AXPerformSafeBlock();
          v15 = v20[5];

          _Block_object_dispose(&v19, 8);
          v16 = [(AXPhotosGroupAccessibilityElement *)self group:v17];
          [(AXPhotosGroupAccessibilityElement *)self _axContainingGroup:v16 performedAction:4 withUserInfo:v15];
        }
      }
    }
  }
}

void __75__AXPhotosGroupAccessibilityElement__axMoveStoryForInfoSource_inDirection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsProtocol();
  *(*(*(a1 + 40) + 8) + 24) = [v3 axSpriteIndexClosestToSpriteIndex:*(a1 + 56) inDirection:*(a1 + 48)];
}

void __75__AXPhotosGroupAccessibilityElement__axMoveStoryForInfoSource_inDirection___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) group];
  v2 = [v5 loadLeafAtSpriteIndexIfNeeded:*(a1 + 48) usingOptions:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __75__AXPhotosGroupAccessibilityElement__axMoveStoryForInfoSource_inDirection___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) group];
  v2 = [v5 loadedLeafAtSpriteIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __75__AXPhotosGroupAccessibilityElement__axMoveStoryForInfoSource_inDirection___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsProtocol();
  v4 = PXGAXCreateActionUserInfo();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_axRefreshGridGroupData:(id)data
{
  dataCopy = data;
  userInfo = [dataCopy userInfo];
  v6 = [userInfo valueForKey:@"AXPhotosGridUpdateKey"];
  integerValue = [v6 integerValue];

  userInfo2 = [dataCopy userInfo];
  v9 = [userInfo2 valueForKey:@"AXPhotosGridGroupKey"];

  if (integerValue == 8)
  {
    group = [(AXPhotosGroupAccessibilityElement *)self group];

    if (v9 == group)
    {
      [(AXPhotosGroupAccessibilityElement *)self _updateGroupAccessibilityElements];
      objc_opt_class();
      _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
      v12 = [_accessibilityInfoSource safeValueForKey:@"axVisibleSpriteIndexes"];
      v13 = __UIAccessibilityCastAsClass();

      if ([v13 count])
      {
        _axCachedLeafElements = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafElements];
        v15 = [_axCachedLeafElements mutableCopy];

        [(AXPhotosGroupAccessibilityElement *)self _updateLeafAccessibilityElements:v15 forVisibleSpriteIndexes:v13];
      }

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }
  }
}

- (id)_accessibilityInfoSource
{
  group = [(AXPhotosGroupAccessibilityElement *)self group];
  v3 = [group safeValueForKey:@"_axInfoSource"];

  return v3;
}

- (BOOL)_axIsAssetSection
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axAssetsSectionLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxAssetsSectionLayoutClass:MEMORY[0x29C2E6930](@"PXAssetsSectionLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axAssetsSectionLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsChapterHeader
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axCuratedLibraryChapterHeaderLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxCuratedLibraryChapterHeaderLayoutClass:MEMORY[0x29C2E6930](@"PXCuratedLibraryChapterHeaderLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axCuratedLibraryChapterHeaderLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsSectionHeader
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axCuratedLibrarySectionHeaderLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxCuratedLibrarySectionHeaderLayoutClass:MEMORY[0x29C2E6930](@"PXCuratedLibrarySectionHeaderLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axCuratedLibrarySectionHeaderLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsDecorating
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axDecoratingLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxDecoratingLayoutClass:MEMORY[0x29C2E6930](@"PXGDecoratingLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axDecoratingLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsCardSectionBody
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axCuratedLibraryCardSectionBodyLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxCuratedLibraryCardSectionBodyLayoutClass:MEMORY[0x29C2E6930](@"PXCuratedLibraryCardSectionBodyLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axCuratedLibraryCardSectionBodyLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsInlineHeader
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axInlineHeadersSpriteLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxInlineHeadersSpriteLayoutClass:MEMORY[0x29C2E6930](@"PXInlineHeadersSpriteLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axInlineHeadersSpriteLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsGrid
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axGridLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxGridLayoutClass:MEMORY[0x29C2E6930](@"PXGGridLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axGridLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryColorGradeEditorItem
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryColorGradeEditorItemLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryColorGradeEditorItemLayoutClass:MEMORY[0x29C2E6930](@"PhotosUIApps.PUStoryColorGradeEditorItemLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryColorGradeEditorItemLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryColorGradeEditorItemOverlay
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryColorGradeEditorItemOverlayLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryColorGradeEditorItemOverlayLayoutClass:MEMORY[0x29C2E6930](@"PUStoryColorGradeEditorItemOverlayLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryColorGradeEditorItemOverlayLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryLayout
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryLayoutClass:MEMORY[0x29C2E6930](@"PXStoryLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryThumbnailChromeLayout
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryThumbnailChromeLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryThumbnailChromeLayoutClass:MEMORY[0x29C2E6930](@"PXStoryThumbnailChromeLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryThumbnailChromeLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryFullsizeLayout
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryFullsizeLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryFullsizeLayoutClass:MEMORY[0x29C2E6930](@"PXStoryFullsizeLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryFullsizeLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryClipLayout
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryClipLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryClipLayoutClass:MEMORY[0x29C2E6930](@"PXStoryClipLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryClipLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryTransitionLayout
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryTransitionLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryTransitionLayoutClass:MEMORY[0x29C2E6930](@"PXStoryTransitionLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryTransitionLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsFeedContentLayout
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axFeedContentLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxFeedContentLayoutClass:MEMORY[0x29C2E6930](@"PXFeedContentLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axFeedContentLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryScrubberContentLayout
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryScrubberContentLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryScrubberContentLayoutClass:MEMORY[0x29C2E6930](@"PXStoryScrubberContentLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryScrubberContentLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsStoryStyleSwitchingFullsizeLayout
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryStyleSwitchingFullsizeLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryStyleSwitchingFullsizeLayoutClass:MEMORY[0x29C2E6930](@"PXStoryStyleSwitchingFullsizeLayout")];
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryStyleSwitchingFullsizeLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axInZoomLevel:(int64_t)level
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axIsAssetSection])
  {
    return 0;
  }

  _accessibilityInfoSource = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  v6 = [_accessibilityInfoSource safeIntegerForKey:@"zoomLevel"] == level;

  return v6;
}

- (id)_axStoryColorGradeLeafElement
{
  _axGroupsAccessibilityElements = [(AXPhotosGroupAccessibilityElement *)self _axGroupsAccessibilityElements];
  v3 = [_axGroupsAccessibilityElements axFilterObjectsUsingBlock:&__block_literal_global_945];
  if ([v3 count])
  {
    firstObject = [v3 firstObject];
    v5 = firstObject;
    if (firstObject)
    {
      _axLeafAccessibilityElements = [firstObject _axLeafAccessibilityElements];
      if ([_axLeafAccessibilityElements count])
      {
        firstObject2 = [_axLeafAccessibilityElements firstObject];
      }

      else
      {
        firstObject2 = 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
  }

  firstObject2 = 0;
LABEL_9:

  return firstObject2;
}

- (id)_accessibilityCuratedLibraryUIViewController
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axCuratedLibraryUIViewControllerClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxCuratedLibraryUIViewControllerClass:MEMORY[0x29C2E6930](@"PXCuratedLibraryUIViewController")];
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axCuratedLibraryUIViewControllerClass])
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __81__AXPhotosGroupAccessibilityElement__accessibilityCuratedLibraryUIViewController__block_invoke;
    v6[3] = &unk_29F2E6158;
    v6[4] = self;
    v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityFindAncestor:v6 startWithSelf:1];
    _accessibilityViewController = [v3 _accessibilityViewController];
  }

  else
  {
    _accessibilityViewController = 0;
  }

  return _accessibilityViewController;
}

uint64_t __81__AXPhotosGroupAccessibilityElement__accessibilityCuratedLibraryUIViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  [*(a1 + 32) _axCuratedLibraryUIViewControllerClass];
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

- (id)_accessibilityFeedViewController
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axFeedViewControllerClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxFeedViewControllerClass:MEMORY[0x29C2E6930](@"PXFeedViewController")];
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axFeedViewControllerClass])
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __69__AXPhotosGroupAccessibilityElement__accessibilityFeedViewController__block_invoke;
    v6[3] = &unk_29F2E6158;
    v6[4] = self;
    v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityFindAncestor:v6 startWithSelf:1];
    _accessibilityViewController = [v3 _accessibilityViewController];
  }

  else
  {
    _accessibilityViewController = 0;
  }

  return _accessibilityViewController;
}

uint64_t __69__AXPhotosGroupAccessibilityElement__accessibilityFeedViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  [*(a1 + 32) _axFeedViewControllerClass];
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

- (BOOL)_accessibilityInStoryViewController
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryViewControllerClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxStoryViewControllerClass:MEMORY[0x29C2E6930](@"PUXStoryViewController")];
  }

  if (![(AXPhotosGroupAccessibilityElement *)self _axStoryViewControllerClass])
  {
    return 0;
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __72__AXPhotosGroupAccessibilityElement__accessibilityInStoryViewController__block_invoke;
  v7[3] = &unk_29F2E6158;
  v7[4] = self;
  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityFindAncestor:v7 startWithSelf:1];
  _accessibilityViewController = [v3 _accessibilityViewController];
  v5 = _accessibilityViewController != 0;

  return v5;
}

uint64_t __72__AXPhotosGroupAccessibilityElement__accessibilityInStoryViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  [*(a1 + 32) _axStoryViewControllerClass];
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

- (BOOL)_axIsMemoriesScrubberInStoryViewController
{
  _accessibilityInStoryViewController = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInStoryViewController];
  if (_accessibilityInStoryViewController)
  {

    LOBYTE(_accessibilityInStoryViewController) = [(AXPhotosGroupAccessibilityElement *)self _axIsStoryScrubberContentLayout];
  }

  return _accessibilityInStoryViewController;
}

- (BOOL)_axIsMemoriesStyleSwitcherInStoryViewController
{
  _accessibilityInStoryViewController = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInStoryViewController];
  if (_accessibilityInStoryViewController)
  {

    LOBYTE(_accessibilityInStoryViewController) = [(AXPhotosGroupAccessibilityElement *)self _axIsStoryStyleSwitchingFullsizeLayout];
  }

  return _accessibilityInStoryViewController;
}

- (id)_axFilterStaleKeys:(id)keys usingIndexSet:(id)set
{
  v20 = *MEMORY[0x29EDCA608];
  keysCopy = keys;
  setCopy = set;
  indexSet = [MEMORY[0x29EDBA048] indexSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = keysCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "integerValue", v15)}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [indexSet removeIndexes:setCopy];
  v13 = *MEMORY[0x29EDCA608];

  return indexSet;
}

- (int64_t)_axCompareAXPhotoElement:(id)element toElement:(id)toElement
{
  elementCopy = element;
  toElementCopy = toElement;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass()) && ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass()))
  {
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
    {
      goto LABEL_28;
    }

    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
    {
      goto LABEL_26;
    }

    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
    {
      leaf = [elementCopy leaf];
      v8 = [leaf safeUnsignedIntForKey:@"spriteIndex"];

      leaf2 = [toElementCopy leaf];
      v10 = [leaf2 safeUnsignedIntForKey:@"spriteIndex"];

      if (v8 == v10)
      {
LABEL_17:
        _AXAssert();
        v10 = v8;
      }
    }

    else
    {
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_22:
        [elementCopy accessibilityFrame];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [toElementCopy accessibilityFrame];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v35.origin.x = v15;
        v35.origin.y = v17;
        v35.size.width = v19;
        v35.size.height = v21;
        MinX = CGRectGetMinX(v35);
        v36.origin.x = v23;
        v36.origin.y = v25;
        v36.size.width = v27;
        v36.size.height = v29;
        v33 = CGRectGetMinX(v36);
        v37.origin.x = v15;
        v37.origin.y = v17;
        v37.size.width = v19;
        v37.size.height = v21;
        MinY = CGRectGetMinY(v37);
        v38.origin.x = v23;
        v38.origin.y = v25;
        v38.size.width = v27;
        v38.size.height = v29;
        v31 = CGRectGetMinY(v38);
        if (MinX >= v33)
        {
          v11 = MinX > v33;
        }

        else
        {
          v11 = -1;
        }

        if (MinY < v31)
        {
          goto LABEL_26;
        }

        if (MinY <= v31)
        {
          goto LABEL_29;
        }

LABEL_28:
        v11 = 1;
        goto LABEL_29;
      }

      group = [elementCopy group];
      v8 = [group safeUnsignedIntForKey:@"subgroupIndex"];

      group2 = [toElementCopy group];
      v10 = [group2 safeUnsignedIntForKey:@"subgroupIndex"];

      if (v8 == v10)
      {
        goto LABEL_17;
      }
    }

    if (v8 != -1 && v10 != -1)
    {
      if (v8 >= v10)
      {
        v11 = v8 > v10;
        goto LABEL_29;
      }

LABEL_26:
      v11 = -1;
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v11 = [elementCopy accessibilityCompareGeometry:toElementCopy];
LABEL_29:

  return v11;
}

- (id)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

- (id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end