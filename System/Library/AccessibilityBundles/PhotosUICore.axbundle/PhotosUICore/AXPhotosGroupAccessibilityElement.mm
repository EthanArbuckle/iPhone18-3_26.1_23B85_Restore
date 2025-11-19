@interface AXPhotosGroupAccessibilityElement
+ (void)_accessibilityPerformValidations:(id)a3;
- (AXPhotosGroupAccessibilityElement)initWithAccessibilityContainer:(id)a3 forGroup:(id)a4 inView:(id)a5 withAdditionalScrollViewElements:(id)a6;
- (BOOL)_accessibilityHasVisibleFrame;
- (BOOL)_accessibilityInStoryViewController;
- (BOOL)_axInZoomLevel:(int64_t)a3;
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
- (BOOL)accessibilityScroll:(int64_t)a3;
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
- (id)_axFilterLeafsByContentKind:(int64_t)a3;
- (id)_axFilterStaleKeys:(id)a3 usingIndexSet:(id)a4;
- (id)_axFilterSubgroupsByInfoSourceType:(id)a3;
- (id)_axGroupsAccessibilityElements;
- (id)_axLeafAccessibilityElements;
- (id)_axMoreButtonInMonthsView;
- (id)_axStoryColorGradeLeafElement;
- (id)_axUniqueIdentifierForLeaf:(id)a3;
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
- (int64_t)_axCompareAXPhotoElement:(id)a3 toElement:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)_axCleanupAccessibilityElements:(id)a3 withUpdatedKeys:(id)a4;
- (void)_axContainingGroup:(id)a3 performedAction:(int64_t)a4 withUserInfo:(id)a5;
- (void)_axMoveStoryForInfoSource:(id)a3 inDirection:(unint64_t)a4;
- (void)_axMoveToNextInfoInDirection:(unint64_t)a3;
- (void)_axRefreshGridGroupData:(id)a3;
- (void)_axShouldShowAlternateUI:(BOOL)a3;
- (void)_axUnloadStaleLeafObjects;
- (void)_cleanupStaleGroupAccessibilityElements;
- (void)_updateGroupAccessibilityElements;
- (void)_updateLeafAccessibilityElements:(id)a3 forVisibleSpriteIndexes:(id)a4;
- (void)_updateLeafAccessibilityElementsIfNeeded;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation AXPhotosGroupAccessibilityElement

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXGBasicAXGroup"];
  [v3 validateClass:@"PXCuratedLibraryChapterHeaderLayout"];
  [v3 validateClass:@"PXCuratedLibrarySectionHeaderLayout"];
  [v3 validateClass:@"PXGDecoratingLayout"];
  [v3 validateClass:@"PXCuratedLibraryCardSectionBodyLayout"];
  [v3 validateClass:@"PXInlineHeadersSpriteLayout"];
  [v3 validateClass:@"PXAssetsSectionLayout"];
  [v3 validateClass:@"PXGReusableAXInfo"];
  [v3 validateClass:@"PXGView"];
  [v3 validateClass:@"PXGEngine"];
  [v3 validateClass:@"PXCuratedLibraryUIViewController"];
  [v3 validateClass:@"PhotosUIApps.PUStoryColorGradeEditorItemLayout"];
  [v3 validateClass:@"PUStoryColorGradeEditorItemOverlayLayout"];
  [v3 validateClass:@"PXFeedViewController"];
  [v3 validateClass:@"PXStoryLayout"];
  [v3 validateClass:@"PXStoryThumbnailChromeLayout"];
  [v3 validateClass:@"PXStoryFullsizeLayout"];
  [v3 validateClass:@"PXStoryClipLayout"];
  [v3 validateClass:@"PXStoryTransitionLayout"];
  [v3 validateClass:@"PXFeedContentLayout"];
  [v3 validateClass:@"PXStoryChromeButton"];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceVariable:@"_axInfoSource" withType:"id<PXGAXInfoSource>"];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axRole" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axSubgroups" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axLeafs" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"subgroupIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"loadedSubgroupIndexes" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axNextResponder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"_axInfoSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axIsVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXAssetsSectionLayout" hasInstanceMethod:@"zoomLevel" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PHObject" hasInstanceMethod:@"localIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAsset" isKindOfClass:@"PHObject"];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axAsset" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axSubtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axImageName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"spriteIndex" withFullSignature:{"I", 0}];
  [v3 validateClass:@"PXGAXInfo" hasInstanceMethod:@"axContentKind" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axContainingGroup" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGView" hasInstanceMethod:@"engine" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGEngine" hasInstanceMethod:@"ensureUpdatedLayout" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"viewProvider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCuratedLibraryViewProvider" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCuratedLibraryViewModel" hasInstanceMethod:@"zoomablePhotosViewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXZoomablePhotosViewModel" hasInstanceMethod:@"isDisplayingIndividualItems" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"PXGAXInfoSource" hasMethod:@"axVisibleSpriteIndexes" isInstanceMethod:1 isRequired:1];
  [v3 validateProtocol:@"PXGAXInfoSource" hasMethod:@"axSpriteIndexClosestToSpriteIndex:inDirection:" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"loadLeafAtSpriteIndexIfNeeded:usingOptions:" withFullSignature:{"@", "I", "Q", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"loadedLeafAtSpriteIndex:" withFullSignature:{"@", "I", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"unloadLeafAtSpriteIndex:usingOptions:" withFullSignature:{"@", "I", "Q", 0}];
  [v3 validateProtocol:@"PXGAXResponder" hasMethod:@"axGroup:didRequestToPerformAction:userInfo:" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"PXFeedViewController" hasInstanceMethod:@"configuration" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXFeedConfiguration" hasInstanceMethod:@"gadgetSpec" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGadgetSpec" hasInstanceMethod:@"interItemSpacing" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PXStoryChromeButton" hasInstanceMethod:@"userData" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXStoryChromeButtonConfiguration" hasInstanceMethod:@"menu" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCuratedLibraryOverlayButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"UIButton" hasInstanceMethod:@"menu" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXStoryScrubberContentLayout"];
  [v3 validateClass:@"PUStoryViewController"];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceVariable:@"_content" withType:"@"];
  [v3 validateClass:@"PXStoryScrubberContentLayout" hasInstanceMethod:@"_axScrubberFractionNumerator" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PXStoryScrubberContentLayout" hasInstanceMethod:@"_axScrubberFractionDenominator" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PXStoryStyleSwitchingFullsizeLayout"];
  [v3 validateClass:@"PXStoryStyleSwitchingFullsizeLayout" hasInstanceMethod:@"_axSwitcherFractionNumerator" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PXStoryStyleSwitchingFullsizeLayout" hasInstanceMethod:@"_axSwitcherFractionDenominator" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PXStoryStyleSwitchingFullsizeLayout" hasInstanceMethod:@"_axStyleTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axScrollParent" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"PXGAXResponder" hasMethod:@"axContainingScrollViewForAXGroup:" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityHasVisibleFrame" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAssetCollection" hasInstanceMethod:@"kind" withFullSignature:{"S", 0}];
  [v3 validateClass:@"PHAssetCollection" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAssetCollection" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axIdentifier" withFullSignature:{"@", 0}];
}

- (AXPhotosGroupAccessibilityElement)initWithAccessibilityContainer:(id)a3 forGroup:(id)a4 inView:(id)a5 withAdditionalScrollViewElements:(id)a6
{
  v15.receiver = self;
  v15.super_class = AXPhotosGroupAccessibilityElement;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(AXPhotosGroupAccessibilityElement *)&v15 initWithAccessibilityContainer:a3];
  [(AXPhotosGroupAccessibilityElement *)v12 setGroup:v11, v15.receiver, v15.super_class];

  [(AXPhotosGroupAccessibilityElement *)v12 setView:v10];
  [(AXPhotosGroupAccessibilityElement *)v12 setAdditionalScrollViewElements:v9];

  v13 = [MEMORY[0x29EDBA068] defaultCenter];
  [v13 addObserver:v12 selector:sel__axRefreshGridGroupData_ name:@"AXPhotosGridGroupDataChanged" object:0];

  return v12;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(AXPhotosGroupAccessibilityElement *)self group];
  v4 = [v3 safeIntegerForKey:@"axRole"];

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
  v47 = [MEMORY[0x29EDBA0F8] string];
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryColorGradeEditorItem])
  {
    v4 = [(AXPhotosGroupAccessibilityElement *)self _axStoryColorGradeLeafElement];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 accessibilityLabel];
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(v43 + 5, v6);
    if (v5)
    {
    }
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView]|| [(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    v7 = [(AXPhotosGroupAccessibilityElement *)self group];
    v8 = [v7 safeValueForKey:@"_axInfoSource"];
    v9 = [v8 safeValueForKey:@"assetCollection"];

    if ([v9 safeIntForKey:@"kind"] == 1)
    {
      v10 = [(AXPhotosGroupAccessibilityElement *)self _axSectionHeadersInSubgroups];
      v11 = [v10 count];
      if (v11)
      {
        v2 = [v10 firstObject];
        v12 = [v2 accessibilityLabel];
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(v43 + 5, v12);
      if (v11)
      {
      }

      v13 = [(AXPhotosGroupAccessibilityElement *)self _axChapterHeadersInSubgroups];
      v15 = v43[5];
      v16 = [v13 count];
      if (v16)
      {
        v2 = [v13 firstObject];
        v17 = [v2 accessibilityLabel];
      }

      else
      {
        v17 = 0;
      }

      v36 = v17;
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
      v10 = [v9 safeStringForKey:@"title"];
      v13 = [v9 safeStringForKey:@"subtitle"];
      v36 = v13;
      v37 = @"__AXStringForVariablesSentinel";
      v14 = __UIAXStringForVariables();
      v2 = v43[5];
      v43[5] = v14;
    }

LABEL_23:
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryLayout:v36])
  {
    v20 = [(AXPhotosGroupAccessibilityElement *)self _axStoryFullsizeLayoutInSubgroups];
    if ([v20 count])
    {
      v21 = [v20 firstObject];
      v22 = [v21 _axStoryClipLayoutInSubgroups];

      v23 = MEMORY[0x29C2E6A40](v22);
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
    v33 = v43[5];
  }

  else
  {
    v38.receiver = self;
    v38.super_class = AXPhotosGroupAccessibilityElement;
    v33 = [(AXPhotosGroupAccessibilityElement *)&v38 accessibilityLabel];
  }

  v34 = v33;
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
  v50 = [MEMORY[0x29EDBA0F8] string];
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView]|| [(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
    {
      [(AXPhotosGroupAccessibilityElement *)self _axShouldShowAlternateUI:1];
    }

    v4 = [(AXPhotosGroupAccessibilityElement *)self _axSectionHeadersInSubgroups];
    v5 = [v4 count];
    if (v5)
    {
      v2 = [v4 firstObject];
      v6 = [v2 accessibilityValue];
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(v46 + 5, v6);
    if (v5)
    {
    }

    v7 = [(AXPhotosGroupAccessibilityElement *)self _axChapterHeadersInSubgroups];
    v8 = v46[5];
    v9 = [v7 count];
    if (v9)
    {
      v6 = [v7 firstObject];
      v10 = [v6 accessibilityValue];
    }

    else
    {
      v10 = 0;
    }

    v11 = __UIAXStringForVariables();
    v12 = v46[5];
    v46[5] = v11;

    if (v9)
    {
    }

    if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView:v10])
    {
      [(AXPhotosGroupAccessibilityElement *)self _axShouldShowAlternateUI:0];
    }
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesScrubberInStoryViewController])
  {
    v13 = [(AXPhotosGroupAccessibilityElement *)self group];
    v14 = [v13 safeValueForKey:@"_axInfoSource"];

    v15 = [v14 safeUnsignedIntegerForKey:@"_axScrubberFractionNumerator"];
    v16 = [v14 safeUnsignedIntegerForKey:@"_axScrubberFractionDenominator"];
    v17 = [(AXPhotosGroupAccessibilityElement *)self _axCurrentLeafInStory];
    v18 = [v17 safeValueForKey:@"_content"];
    v19 = MEMORY[0x29EDBA0F8];
    v20 = accessibilityPhotosUICoreLocalizedString(@"memories.scrubber.choice");
    v21 = [v19 localizedStringWithFormat:v20, v15, v16];
    v39 = [v18 accessibilityLabel];
    v41 = @"__AXStringForVariablesSentinel";
    v22 = __UIAXStringForVariables();
    v23 = v46[5];
    v46[5] = v22;
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesStyleSwitcherInStoryViewController:v39])
  {
    v24 = [(AXPhotosGroupAccessibilityElement *)self group];
    v25 = [v24 safeValueForKey:@"_axInfoSource"];

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
    v36 = v46[5];
  }

  else
  {
    v43.receiver = self;
    v43.super_class = AXPhotosGroupAccessibilityElement;
    v36 = [(AXPhotosGroupAccessibilityElement *)&v43 accessibilityValue];
  }

  v37 = v36;
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
  v3 = [MEMORY[0x29EDBA0F8] string];
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView]|| [(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    v4 = [(AXPhotosGroupAccessibilityElement *)self _axCardSectionBodyInSubgroups];
    if ([v4 count])
    {
      v5 = [v4 firstObject];
      v6 = [v5 _axFilterLeafsByContentKind:6];

      if ([v6 count])
      {
        v7 = [v6 firstObject];
        v8 = [v7 accessibilityLabel];

        v3 = v7;
      }

      else
      {
        v8 = 0;
      }

      v3 = v8;
    }
  }

  v12.receiver = self;
  v12.super_class = AXPhotosGroupAccessibilityElement;
  v11 = [(AXPhotosGroupAccessibilityElement *)&v12 _accessibilityScrollStatus];
  v9 = __UIAXStringForVariables();

  return v9;
}

- (CGRect)accessibilityFrame
{
  v3 = [(AXPhotosGroupAccessibilityElement *)self group];
  [v3 accessibilityFrame];
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
  v3 = [(AXPhotosGroupAccessibilityElement *)self group];

  if (!v3 || (-[AXPhotosGroupAccessibilityElement group](self, "group"), v4 = objc_claimAutoreleasedReturnValue(), [v4 safeStringForKey:@"axIdentifier"], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x29EDBA0F8];
      v9 = [v6 className];
      v5 = [v8 stringWithFormat:@"%@-Group", v9];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = AXPhotosGroupAccessibilityElement;
      v5 = [(AXPhotosGroupAccessibilityElement *)&v11 accessibilityIdentifier];
    }
  }

  return v5;
}

- (BOOL)_accessibilityHasVisibleFrame
{
  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityFeedViewController];

  if (v3 && ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryTransitionLayout]|| [(AXPhotosGroupAccessibilityElement *)self _axIsFeedContentLayout]))
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
  v3 = [(AXPhotosGroupAccessibilityElement *)&v13 accessibilityTraits];
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    v3 |= *MEMORY[0x29EDC7F88] | *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7F60];
    return v3;
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView])
  {
    v4 = [(AXPhotosGroupAccessibilityElement *)self _axChapterHeadersInSubgroups];
    v5 = [v4 count];

    if (!v5)
    {
      v11 = [(AXPhotosGroupAccessibilityElement *)self _axSectionHeadersInSubgroups];
      v12 = [v11 count];

      if (!v12)
      {
        return v3;
      }

      v9 = *MEMORY[0x29EDC7F88] | *MEMORY[0x29EDC7F70];
      goto LABEL_13;
    }

    v6 = MEMORY[0x29EDC7F80];
LABEL_12:
    v9 = *v6;
LABEL_13:
    v3 |= v9;
    return v3;
  }

  if ([(AXPhotosGroupAccessibilityElement *)self _axIsStoryColorGradeEditorItem])
  {
    v7 = [(AXPhotosGroupAccessibilityElement *)self _axStoryColorGradeLeafElement];
    v8 = v7;
    if (v7)
    {
      v3 |= [v7 accessibilityTraits];
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
      v3 |= *MEMORY[0x29EDC7F88];
      if ([(AXPhotosGroupAccessibilityElement *)self _axIsFeedContentLayout])
      {
        v6 = MEMORY[0x29EDC7F70];
        goto LABEL_12;
      }
    }
  }

  return v3;
}

- (id)automationElements
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMonthsView])
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = [(AXPhotosGroupAccessibilityElement *)self _axMoreButtonInMonthsView];
    v5 = [v4 accessibilityLabel];
    v6 = v5;
    if (v5 && [v5 length])
    {
      [v3 axSafelyAddObject:v4];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXPhotosGroupAccessibilityElement;
    v3 = [(AXPhotosGroupAccessibilityElement *)&v8 automationElements];
  }

  return v3;
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
      v31 = [(AXPhotosGroupAccessibilityElement *)&v32 accessibilityCustomActions];
      goto LABEL_31;
    }

    v31 = [MEMORY[0x29EDB8DE8] array];
    v4 = [(AXPhotosGroupAccessibilityElement *)self _axStoryThumbnailChromeLayoutInSubgroups];
    if (![v4 count])
    {
      goto LABEL_29;
    }

    v30 = v4;
    v11 = [v4 firstObject];
    v12 = [v11 _axLeafAccessibilityElements];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v12;
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
      v19 = [v18 leaf];
      v20 = [v19 safeValueForKey:@"axView"];

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
              v23 = [v20 accessibilityLabel];
              v35[0] = MEMORY[0x29EDCA5F8];
              v35[1] = 3221225472;
              v35[2] = __63__AXPhotosGroupAccessibilityElement_accessibilityCustomActions__block_invoke_2;
              v35[3] = &unk_29F2E5E30;
              v36[0] = v20;
              v36[1] = v18;
              v24 = [v22 initWithName:v23 actionHandler:v35];

              [v31 addObject:v24];
              v25 = v36;
            }

            else
            {
              v26 = [v18 accessibilityLabel];
              v33[0] = MEMORY[0x29EDCA5F8];
              v33[1] = 3221225472;
              v33[2] = __63__AXPhotosGroupAccessibilityElement_accessibilityCustomActions__block_invoke_3;
              v33[3] = &unk_29F2E5E58;
              v34 = v20;
              v27 = [v22 initWithName:v26 actionHandler:v33];

              [v31 addObject:v27];
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

          v4 = v30;
          goto LABEL_29;
        }

        goto LABEL_14;
      }
    }
  }

  v31 = [MEMORY[0x29EDB8DE8] array];
  v3 = [(AXPhotosGroupAccessibilityElement *)self _axMoreButtonInMonthsView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 leaf];
    v6 = [v5 safeUIViewForKey:@"axView"];

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
          v9 = [v6 accessibilityLabel];
          v41[0] = MEMORY[0x29EDCA5F8];
          v41[1] = 3221225472;
          v41[2] = __63__AXPhotosGroupAccessibilityElement_accessibilityCustomActions__block_invoke;
          v41[3] = &unk_29F2E5E30;
          v42 = v6;
          v43 = v4;
          v10 = [v8 initWithName:v9 actionHandler:v41];

          [v31 addObject:v10];
        }
      }
    }
  }

LABEL_29:

LABEL_31:
  v28 = *MEMORY[0x29EDCA608];

  return v31;
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(AXPhotosGroupAccessibilityElement *)self _axUnsortedGroupsAccessibilityElements];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __58__AXPhotosGroupAccessibilityElement_accessibilityElements__block_invoke;
  v14[3] = &unk_29F2E5E80;
  v5 = v3;
  v15 = v5;
  [v4 enumerateObjectsUsingBlock:v14];
  v6 = [(AXPhotosGroupAccessibilityElement *)self _axUnsortedLeafAccessibilityElements];
  if ([v6 count])
  {
    [v5 axSafelyAddObjectsFromArray:v6];
  }

  v7 = [(AXPhotosGroupAccessibilityElement *)self additionalScrollViewElements];
  if (v7)
  {
    v8 = [(AXPhotosGroupAccessibilityElement *)self additionalScrollViewElements];
    v9 = v8[2]();
  }

  else
  {
    v9 = [MEMORY[0x29EDB8D80] array];
  }

  [v5 axSafelyAddObjectsFromArray:v9];
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
  v11 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityCuratedLibraryUIViewController];
  if (v11)
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
    v12 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityFeedViewController];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 safeValueForKeyPath:@"configuration.gadgetSpec"];
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
    v4 = [(AXPhotosGroupAccessibilityElement *)self group];
    v5 = [v4 safeValueForKey:@"axScrollParent"];

    v6 = [v5 safeValueForKey:@"axNextResponder"];
    v7 = [(AXPhotosGroupAccessibilityElement *)self group];
    v8 = [v6 axContainingScrollViewForAXGroup:v7];
  }

  else
  {
    v8 = [(AXPhotosGroupAccessibilityElement *)self accessibilityContainer];
  }

  return v8;
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

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesStyleSwitcherInStoryViewController])
  {
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v5 = 5;
    goto LABEL_7;
  }

  if (a3 != 1)
  {
LABEL_5:
    v7.receiver = self;
    v7.super_class = AXPhotosGroupAccessibilityElement;
    return [(AXPhotosGroupAccessibilityElement *)&v7 accessibilityScroll:a3];
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
    v3 = accessibilityPhotosUICoreLocalizedString(@"years.adjustment.instructions");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AXPhotosGroupAccessibilityElement;
    v3 = [(AXPhotosGroupAccessibilityElement *)&v5 accessibilityHint];
  }

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsMemoriesStyleSwitcherInStoryViewController])
  {
    v3 = [(AXPhotosGroupAccessibilityElement *)self _axLeafAccessibilityElements];
    v4 = [v3 mutableCopy];

    [v4 sortUsingSelector:sel_accessibilityCompareGeometry_];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AXPhotosGroupAccessibilityElement;
    v4 = [(AXPhotosGroupAccessibilityElement *)&v6 _accessibilitySupplementaryFooterViews];
  }

  return v4;
}

- (void)_updateGroupAccessibilityElements
{
  v3 = [(AXPhotosGroupAccessibilityElement *)self _axCachedSubgroupElements];
  v4 = [(AXPhotosGroupAccessibilityElement *)self group];
  v5 = [v4 safeArrayForKey:@"axSubgroups"];

  if ([v5 count])
  {
    if (!v3)
    {
      v3 = [MEMORY[0x29EDB8E00] dictionary];
    }

    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __70__AXPhotosGroupAccessibilityElement__updateGroupAccessibilityElements__block_invoke;
    v9 = &unk_29F2E5ED0;
    v3 = v3;
    v10 = v3;
    v11 = self;
    [v5 enumerateObjectsUsingBlock:&v6];
    [(AXPhotosGroupAccessibilityElement *)self _setAxCachedSubgroupElements:v3, v6, v7, v8, v9];
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
  v3 = [(AXPhotosGroupAccessibilityElement *)self _axCachedSubgroupElements];
  if (v3)
  {
    v11 = 0;
    objc_opt_class();
    v4 = [(AXPhotosGroupAccessibilityElement *)self group];
    v5 = [v4 safeValueForKey:@"loadedSubgroupIndexes"];
    v6 = __UIAccessibilityCastAsClass();

    v7 = [v3 allKeys];
    v8 = [(AXPhotosGroupAccessibilityElement *)self _axFilterStaleKeys:v7 usingIndexSet:v6];

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __76__AXPhotosGroupAccessibilityElement__cleanupStaleGroupAccessibilityElements__block_invoke;
    v9[3] = &unk_29F2E5EF8;
    v10 = v3;
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
  v3 = [(AXPhotosGroupAccessibilityElement *)self _axCachedSubgroupElements];
  if (!v3)
  {
    [(AXPhotosGroupAccessibilityElement *)self _updateGroupAccessibilityElements];
    v3 = [(AXPhotosGroupAccessibilityElement *)self _axCachedSubgroupElements];
  }

  v4 = [v3 allValues];

  return v4;
}

- (id)_axGroupsAccessibilityElements
{
  v8[1] = *MEMORY[0x29EDCA608];
  v2 = [(AXPhotosGroupAccessibilityElement *)self _axUnsortedGroupsAccessibilityElements];
  v3 = [MEMORY[0x29EDBA0F0] sortDescriptorWithKey:@"group.subgroupIndex" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)_axFilterSubgroupsByInfoSourceType:(id)a3
{
  v4 = a3;
  v5 = [(AXPhotosGroupAccessibilityElement *)self _axGroupsAccessibilityElements];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __72__AXPhotosGroupAccessibilityElement__axFilterSubgroupsByInfoSourceType___block_invoke;
  v9[3] = &unk_29F2E5F20;
  v10 = v4;
  v6 = v4;
  v7 = [v5 axFilterObjectsUsingBlock:v9];

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
  v2 = [(AXPhotosGroupAccessibilityElement *)self _axDecoratingInSubgroups];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    v4 = [v3 _axFilterSubgroupsByInfoSourceType:@"AXPhotosGridCardSectionBody"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_axUniqueIdentifierForLeaf:(id)a3
{
  v3 = a3;
  v4 = [v3 safeIntegerForKey:@"axContentKind"];
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

      v7 = [v3 safeValueForKey:@"axAsset"];
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
    v7 = [v3 safeValueForKey:@"axView"];
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

    v7 = [v3 safeValueForKey:@"axTitle"];
    v9 = [v3 safeValueForKey:@"axSubtitle"];
    goto LABEL_16;
  }

  v6 = @"axText";
LABEL_13:
  v7 = [v3 safeValueForKey:v6];
  v8 = __UIAXStringForVariables();
LABEL_14:
  v5 = v8;
LABEL_17:

LABEL_18:

  return v5;
}

- (void)_updateLeafAccessibilityElementsIfNeeded
{
  v3 = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafElements];
  v4 = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafSpriteIndexes];
  v5 = [(AXPhotosGroupAccessibilityElement *)self group];
  v6 = [v5 safeArrayForKey:@"axLeafs"];

  if (![v6 count])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxCachedLeafElements:0];
    goto LABEL_11;
  }

  if (v3)
  {
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = [MEMORY[0x29EDB8E00] dictionary];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v4 = [MEMORY[0x29EDBA048] indexSet];
LABEL_4:
  v7 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityCuratedLibraryUIViewController];
  v8 = [v7 safeValueForKey:@"viewProvider"];
  v9 = [v8 safeValueForKey:@"viewModel"];
  v10 = [v9 safeValueForKey:@"zoomablePhotosViewModel"];
  v11 = [v10 safeBoolForKey:@"isDisplayingIndividualItems"];

  if (!v7 || v11)
  {
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __77__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElementsIfNeeded__block_invoke;
    v16[3] = &unk_29F2E5F48;
    v17 = v4;
    objc_copyWeak(&v20, &location);
    v18 = self;
    v12 = v3;
    v19 = v12;
    [v6 enumerateObjectsUsingBlock:v16];
    objc_opt_class();
    v13 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
    v14 = [v13 safeValueForKey:@"axVisibleSpriteIndexes"];
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

- (void)_updateLeafAccessibilityElements:(id)a3 forVisibleSpriteIndexes:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x29EDB8E20];
  v8 = a4;
  v9 = [v7 set];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __94__AXPhotosGroupAccessibilityElement__updateLeafAccessibilityElements_forVisibleSpriteIndexes___block_invoke;
  v12[3] = &unk_29F2E5F98;
  v12[4] = self;
  v13 = v6;
  v14 = v9;
  v10 = v9;
  v11 = v6;
  [v8 enumerateIndexesUsingBlock:v12];

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
  v3 = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafSpriteIndexes];
  v12 = 0;
  objc_opt_class();
  v4 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  v5 = [v4 safeValueForKey:@"axVisibleSpriteIndexes"];
  v6 = __UIAccessibilityCastAsClass();

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __62__AXPhotosGroupAccessibilityElement__axUnloadStaleLeafObjects__block_invoke;
  v9[3] = &unk_29F2E5FE8;
  v10 = v6;
  v11 = self;
  v7 = v6;
  [v3 enumerateIndexesUsingBlock:v9];
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

- (void)_axCleanupAccessibilityElements:(id)a3 withUpdatedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = MEMORY[0x29EDB8E20];
    v9 = [v6 allKeys];
    v10 = [v8 setWithArray:v9];

    [v10 minusSet:v7];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __85__AXPhotosGroupAccessibilityElement__axCleanupAccessibilityElements_withUpdatedKeys___block_invoke;
    v11[3] = &unk_29F2E6010;
    v12 = v6;
    [v10 enumerateObjectsUsingBlock:v11];
  }

  [(AXPhotosGroupAccessibilityElement *)self _setAxCachedLeafElements:v6];
}

- (id)_axUnsortedLeafAccessibilityElements
{
  v3 = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafElements];
  if (!v3)
  {
    [(AXPhotosGroupAccessibilityElement *)self _updateLeafAccessibilityElementsIfNeeded];
    v3 = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafElements];
  }

  v4 = [v3 allValues];

  return v4;
}

- (id)_axLeafAccessibilityElements
{
  v8[1] = *MEMORY[0x29EDCA608];
  v2 = [(AXPhotosGroupAccessibilityElement *)self _axUnsortedLeafAccessibilityElements];
  v3 = [MEMORY[0x29EDBA0F0] sortDescriptorWithKey:@"leaf.spriteIndex" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)_axFilterLeafsByContentKind:(int64_t)a3
{
  v4 = [(AXPhotosGroupAccessibilityElement *)self _axLeafAccessibilityElements];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __65__AXPhotosGroupAccessibilityElement__axFilterLeafsByContentKind___block_invoke;
  v7[3] = &__block_descriptor_40_e45_B24__0__AXPhotosLeafAccessibilityElement_8Q16l;
  v7[4] = a3;
  v5 = [v4 axFilterObjectsUsingBlock:v7];

  return v5;
}

BOOL __65__AXPhotosGroupAccessibilityElement__axFilterLeafsByContentKind___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 leaf];
  v4 = [v3 safeIntegerForKey:@"axContentKind"];

  return v4 == *(a1 + 32);
}

- (void)_axContainingGroup:(id)a3 performedAction:(int64_t)a4 withUserInfo:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v12 = MEMORY[0x29EDCA5F8];
  v13 = v7;
  v14 = v8;
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

- (void)_axShouldShowAlternateUI:(BOOL)a3
{
  v3 = a3;
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    v5 = [(AXPhotosGroupAccessibilityElement *)self _axCardSectionBodyInSubgroups];
    if ([v5 count])
    {
      v6 = [v5 firstObject];
      v7 = [v6 group];
      v8 = [v7 safeArrayForKey:@"axLeafs"];

      if ([v8 count])
      {
        v9 = [v8 firstObject];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 safeValueForKey:@"axContainingGroup"];
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
            if (v3)
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
    v3 = [(AXPhotosGroupAccessibilityElement *)self _axSectionHeadersInSubgroups];
    if ([v3 count])
    {
      v4 = [v3 firstObject];
      v5 = [v4 _axLeafAccessibilityElements];

      v6 = [v5 axFilterObjectsUsingBlock:&__block_literal_global];
      if ([v6 count])
      {
        v7 = [v6 firstObject];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __62__AXPhotosGroupAccessibilityElement__axMoreButtonInMonthsView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 leaf];
  v3 = [v2 safeIntegerForKey:@"axContentKind"] == 5;

  return v3;
}

- (void)_axMoveToNextInfoInDirection:(unint64_t)a3
{
  if ([(AXPhotosGroupAccessibilityElement *)self _axIsYearsView])
  {
    v4 = [(AXPhotosGroupAccessibilityElement *)self _axCardSectionBodyInSubgroups];
    if ([v4 count])
    {
      v5 = [v4 firstObject];
      v6 = [v5 _axLeafAccessibilityElements];
      if ([v6 count])
      {
        v7 = [v6 firstObject];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 leaf];
          v10 = [v9 safeValueForKey:@"axContainingGroup"];

          if (v10)
          {
            v24 = [v10 safeValueForKey:@"axInfoSource"];
            v11 = [v8 leaf];
            [v11 safeUnsignedIntForKey:@"spriteIndex"];

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
              v20 = self;
              v19 = v23;
              [(AXPhotosGroupAccessibilityElement *)v20 _axContainingGroup:v10 performedAction:3 withUserInfo:v23];
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
                v17 = [(AXPhotosGroupAccessibilityElement *)self accessibilityValue];
                v21 = [(AXPhotosGroupAccessibilityElement *)self accessibilityLabel];
                v18 = __UIAXStringForVariables();

                UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v18);
                [(AXPhotosGroupAccessibilityElement *)self _axContainingGroup:v14 performedAction:3 withUserInfo:v16, v21, @"__AXStringForVariablesSentinel"];

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
  v2 = [(AXPhotosGroupAccessibilityElement *)self group];
  v3 = [v2 safeArrayForKey:@"axLeafs"];

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

- (void)_axMoveStoryForInfoSource:(id)a3 inDirection:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AXPhotosGroupAccessibilityElement *)self _axCurrentLeafInStory];
  if (v7)
  {
    v8 = [(AXPhotosGroupAccessibilityElement *)self group];
    v9 = [v8 safeValueForKey:@"axInfoSource"];

    MEMORY[0x29C2E6930](v6);
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 safeUnsignedIntForKey:@"spriteIndex"];
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
      v31 = a4;
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

- (void)_axRefreshGridGroupData:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 valueForKey:@"AXPhotosGridUpdateKey"];
  v7 = [v6 integerValue];

  v8 = [v4 userInfo];
  v9 = [v8 valueForKey:@"AXPhotosGridGroupKey"];

  if (v7 == 8)
  {
    v10 = [(AXPhotosGroupAccessibilityElement *)self group];

    if (v9 == v10)
    {
      [(AXPhotosGroupAccessibilityElement *)self _updateGroupAccessibilityElements];
      objc_opt_class();
      v11 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
      v12 = [v11 safeValueForKey:@"axVisibleSpriteIndexes"];
      v13 = __UIAccessibilityCastAsClass();

      if ([v13 count])
      {
        v14 = [(AXPhotosGroupAccessibilityElement *)self _axCachedLeafElements];
        v15 = [v14 mutableCopy];

        [(AXPhotosGroupAccessibilityElement *)self _updateLeafAccessibilityElements:v15 forVisibleSpriteIndexes:v13];
      }

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }
  }
}

- (id)_accessibilityInfoSource
{
  v2 = [(AXPhotosGroupAccessibilityElement *)self group];
  v3 = [v2 safeValueForKey:@"_axInfoSource"];

  return v3;
}

- (BOOL)_axIsAssetSection
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axAssetsSectionLayoutClass])
  {
    [(AXPhotosGroupAccessibilityElement *)self _setAxAssetsSectionLayoutClass:MEMORY[0x29C2E6930](@"PXAssetsSectionLayout")];
  }

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
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

  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  [(AXPhotosGroupAccessibilityElement *)self _axStoryStyleSwitchingFullsizeLayoutClass];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axInZoomLevel:(int64_t)a3
{
  if (![(AXPhotosGroupAccessibilityElement *)self _axIsAssetSection])
  {
    return 0;
  }

  v5 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInfoSource];
  v6 = [v5 safeIntegerForKey:@"zoomLevel"] == a3;

  return v6;
}

- (id)_axStoryColorGradeLeafElement
{
  v2 = [(AXPhotosGroupAccessibilityElement *)self _axGroupsAccessibilityElements];
  v3 = [v2 axFilterObjectsUsingBlock:&__block_literal_global_945];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 _axLeafAccessibilityElements];
      if ([v6 count])
      {
        v7 = [v6 firstObject];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
LABEL_9:

  return v7;
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
    v4 = [v3 _accessibilityViewController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v4 = [v3 _accessibilityViewController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v4 = [v3 _accessibilityViewController];
  v5 = v4 != 0;

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
  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInStoryViewController];
  if (v3)
  {

    LOBYTE(v3) = [(AXPhotosGroupAccessibilityElement *)self _axIsStoryScrubberContentLayout];
  }

  return v3;
}

- (BOOL)_axIsMemoriesStyleSwitcherInStoryViewController
{
  v3 = [(AXPhotosGroupAccessibilityElement *)self _accessibilityInStoryViewController];
  if (v3)
  {

    LOBYTE(v3) = [(AXPhotosGroupAccessibilityElement *)self _axIsStoryStyleSwitchingFullsizeLayout];
  }

  return v3;
}

- (id)_axFilterStaleKeys:(id)a3 usingIndexSet:(id)a4
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x29EDBA048] indexSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
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

        [v7 addIndex:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "integerValue", v15)}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v7 removeIndexes:v6];
  v13 = *MEMORY[0x29EDCA608];

  return v7;
}

- (int64_t)_axCompareAXPhotoElement:(id)a3 toElement:(id)a4
{
  v5 = a3;
  v6 = a4;
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
      v7 = [v5 leaf];
      v8 = [v7 safeUnsignedIntForKey:@"spriteIndex"];

      v9 = [v6 leaf];
      v10 = [v9 safeUnsignedIntForKey:@"spriteIndex"];

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
        [v5 accessibilityFrame];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v6 accessibilityFrame];
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

      v12 = [v5 group];
      v8 = [v12 safeUnsignedIntForKey:@"subgroupIndex"];

      v13 = [v6 group];
      v10 = [v13 safeUnsignedIntForKey:@"subgroupIndex"];

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

  v11 = [v5 accessibilityCompareGeometry:v6];
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