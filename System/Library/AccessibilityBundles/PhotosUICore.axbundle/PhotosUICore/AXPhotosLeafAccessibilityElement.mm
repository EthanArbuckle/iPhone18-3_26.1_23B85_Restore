@interface AXPhotosLeafAccessibilityElement
+ (void)_accessibilityPerformValidations:(id)a3;
- (AXPhotosLeafAccessibilityElement)initWithAccessibilityContainer:(id)a3 forLeaf:(id)a4;
- (BOOL)_accessibilityIsPHAssetLocallyAvailable;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilityCuratedLibraryUIViewController;
- (id)_accessibilityPHAssetLocalIdentifier;
- (id)_accessibilityPhotoLibraryURL;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axLeafAsset;
- (id)_axLeafContentView;
- (id)_axLeafView;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityCustomRotors;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityURL;
- (id)accessibilityValue;
- (id)automationElements;
- (id)leaf;
- (int64_t)_accessibilityContentKind;
- (int64_t)_accessibilityPageCount;
- (int64_t)_accessibilityPageIndex;
- (unint64_t)_accessibilityAutomationType;
- (unint64_t)accessibilityTraits;
- (void)_axExpandLibrary;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation AXPhotosLeafAccessibilityElement

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axContentKind" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axAsset" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axSubtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axIsSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"mainFileURL" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"px_isUnsavedSyndicatedAsset" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAsset" hasInstanceMethod:@"px_wasSavedThroughSyndication" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axInfoSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXStoryStyleSwitchingFullsizeLayout" hasInstanceMethod:@"_axStyleTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"viewProvider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCuratedLibraryViewDelegate" hasInstanceMethod:@"curatedLibraryViewControllerExpand:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"PXCuratedLibraryViewProvider" hasInstanceMethod:@"viewModel" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXCuratedLibraryViewModel" hasInstanceMethod:@"isFullyExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXStoryRelatedOverlayLayout"];
  [v3 validateClass:@"PXStoryStyleSwitchingFullsizeLayout"];
  [v3 validateClass:@"PXGPageControl"];
  [v3 validateClass:@"PXCuratedLibraryUIViewController"];
  [v3 validateClass:@"PXCuratedLibraryUIViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axIdentifier" withFullSignature:{"@", 0}];
}

- (AXPhotosLeafAccessibilityElement)initWithAccessibilityContainer:(id)a3 forLeaf:(id)a4
{
  v8.receiver = self;
  v8.super_class = AXPhotosLeafAccessibilityElement;
  v5 = a4;
  v6 = [(AXPhotosLeafAccessibilityElement *)&v8 initWithAccessibilityContainer:a3];
  [(AXPhotosLeafAccessibilityElement *)v6 setLeaf:v5, v8.receiver, v8.super_class];

  return v6;
}

- (CGRect)accessibilityFrame
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self leaf];
  [v2 accessibilityFrame];
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

- (BOOL)isAccessibilityElement
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]!= 5)
  {
    return 1;
  }

  v3 = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  v4 = [v3 _accessibilityViewIsVisible];

  return v4;
}

- (int64_t)_accessibilityContentKind
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self leaf];
  v3 = [v2 safeIntegerForKey:@"axContentKind"];

  return v3;
}

- (id)accessibilityURL
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]== 6)
  {
    v3 = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 accessibilityURL];
LABEL_6:

      goto LABEL_9;
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 safeValueForKey:@"mainFileURL"];
      v4 = __UIAccessibilitySafeClass();

      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
  v3 = [v2 _accessibilityPHAssetLocalIdentifier];

  return v3;
}

- (id)_accessibilityPhotoLibraryURL
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
  v3 = [v2 _accessibilityPhotoLibraryURL];

  return v3;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
  v3 = [v2 _accessibilityIsPHAssetLocallyAvailable];

  return v3;
}

- (id)accessibilityCustomContent
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]== 6)
  {
    v3 = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
    v4 = [v3 accessibilityCustomContent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind];
  if (v3 > 4)
  {
    if (v3 == 5)
    {
      v7 = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
    }

    else
    {
      if (v3 != 6)
      {
        goto LABEL_16;
      }

      v7 = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
    }

    v5 = v7;
    v8 = [v7 accessibilityLabel];
    goto LABEL_12;
  }

  if ((v3 - 2) < 2)
  {
    v4 = [(AXPhotosLeafAccessibilityElement *)self leaf];
    v5 = v4;
    v6 = @"axText";
LABEL_9:
    v8 = [v4 safeValueForKey:v6];
LABEL_12:
    v9 = v8;

    goto LABEL_13;
  }

  if (v3 == 1)
  {
    v4 = [(AXPhotosLeafAccessibilityElement *)self leaf];
    v5 = v4;
    v6 = @"axTitle";
    goto LABEL_9;
  }

LABEL_16:
  v11.receiver = self;
  v11.super_class = AXPhotosLeafAccessibilityElement;
  v9 = [(AXPhotosLeafAccessibilityElement *)&v11 accessibilityLabel];
LABEL_13:

  return v9;
}

- (id)accessibilityValue
{
  v3 = [(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind];
  if (v3 == 6)
  {
    v10 = [(AXPhotosLeafAccessibilityElement *)self leaf];
    v4 = [v10 safeValueForKey:@"axAsset"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17.receiver = self;
      v17.super_class = AXPhotosLeafAccessibilityElement;
      v5 = [(AXPhotosLeafAccessibilityElement *)&v17 accessibilityValue];
      if ([v4 safeBoolForKey:@"px_isUnsavedSyndicatedAsset"])
      {
        v11 = @"not.yet.saved";
      }

      else
      {
        if (![v4 safeBoolForKey:@"px_wasSavedThroughSyndication"])
        {
          goto LABEL_19;
        }

        v11 = @"saved";
      }

      v15 = accessibilityPhotosUICoreLocalizedString(v11);
      v12 = __UIAXStringForVariables();

      v5 = v12;
      goto LABEL_19;
    }

LABEL_15:
    v16.receiver = self;
    v16.super_class = AXPhotosLeafAccessibilityElement;
    v5 = [(AXPhotosLeafAccessibilityElement *)&v16 accessibilityValue];
    goto LABEL_20;
  }

  if (v3 == 5)
  {
    v4 = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
    v5 = [v4 accessibilityValue];
    MEMORY[0x29C2E6930](@"PXGPageControl");
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AXPhotosLeafAccessibilityElement *)self accessibilityContainer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 group];
        v8 = [v7 safeValueForKey:@"axInfoSource"];

        MEMORY[0x29C2E6930](@"PXStoryStyleSwitchingFullsizeLayout");
        if (objc_opt_isKindOfClass())
        {
          v14 = [v8 safeStringForKey:@"_axStyleTitle"];
          v9 = __UIAXStringForVariables();

          v5 = v9;
        }
      }
    }

    goto LABEL_19;
  }

  if (v3 != 1)
  {
    goto LABEL_15;
  }

  v4 = [(AXPhotosLeafAccessibilityElement *)self leaf];
  v5 = [v4 safeValueForKey:@"axSubtitle"];
LABEL_19:

LABEL_20:

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v14.receiver = self;
  v14.super_class = AXPhotosLeafAccessibilityElement;
  v3 = [(AXPhotosLeafAccessibilityElement *)&v14 accessibilityTraits];
  v4 = [(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind];
  if (v4 <= 2)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_17;
      }

      v6 = [(AXPhotosLeafAccessibilityElement *)self accessibilityContainer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 group];
        v8 = [v7 safeValueForKey:@"axInfoSource"];

        MEMORY[0x29C2E6930](@"PXStoryRelatedOverlayLayout");
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = *MEMORY[0x29EDC7F80];
        if ((isKindOfClass & 1) == 0)
        {
          v10 = 0;
        }

        v3 |= v10;
      }

      goto LABEL_14;
    }

    v5 = MEMORY[0x29EDC7F80];
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 != 5)
      {
        if (v4 != 6)
        {
          goto LABEL_17;
        }

        v5 = MEMORY[0x29EDC7F88];
        goto LABEL_16;
      }

      v6 = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
      v3 |= [v6 accessibilityTraits];
LABEL_14:

      goto LABEL_17;
    }

    v5 = MEMORY[0x29EDC7F70];
  }

LABEL_16:
  v3 |= *v5;
LABEL_17:
  v11 = [(AXPhotosLeafAccessibilityElement *)self leaf];
  v12 = [v11 safeBoolForKey:@"axIsSelected"];

  if (v12)
  {
    return *MEMORY[0x29EDC7FC0] | v3;
  }

  else
  {
    return v3 & ~*MEMORY[0x29EDC7FC0];
  }
}

- (unint64_t)_accessibilityAutomationType
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]== 6)
  {
    return 43;
  }

  v4.receiver = self;
  v4.super_class = AXPhotosLeafAccessibilityElement;
  return [(AXPhotosLeafAccessibilityElement *)&v4 _accessibilityAutomationType];
}

- (id)_axLeafContentView
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]!= 5 || ([(AXPhotosLeafAccessibilityElement *)self leaf], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, [(AXPhotosLeafAccessibilityElement *)self _axLeafView], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityIdentifier
{
  v3 = [(AXPhotosLeafAccessibilityElement *)self _axLeafContentView];
  if (v3)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"%@_AX", v6];
LABEL_3:

    goto LABEL_4;
  }

  v9 = [(AXPhotosLeafAccessibilityElement *)self leaf];

  if (!v9 || (-[AXPhotosLeafAccessibilityElement leaf](self, "leaf"), v10 = objc_claimAutoreleasedReturnValue(), [v10 safeStringForKey:@"axIdentifier"], v7 = objc_claimAutoreleasedReturnValue(), v10, !v7))
  {
    v6 = [(AXPhotosLeafAccessibilityElement *)self accessibilityContainer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v6 group];
      v12 = [v11 safeValueForKey:@"axInfoSource"];

      if (v12)
      {
        v13 = MEMORY[0x29EDBA0F8];
        v14 = [v12 className];
        v7 = [v13 stringWithFormat:@"%@-Info", v14];

        goto LABEL_3;
      }
    }

    v15.receiver = self;
    v15.super_class = AXPhotosLeafAccessibilityElement;
    v7 = [(AXPhotosLeafAccessibilityElement *)&v15 accessibilityIdentifier];
  }

LABEL_4:

  return v7;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(AXPhotosLeafAccessibilityElement *)self _axLeafContentView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXPhotosLeafAccessibilityElement;
    v5 = [(AXPhotosLeafAccessibilityElement *)&v8 _accessibilitySupplementaryFooterViews];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityCustomRotors
{
  v3 = [(AXPhotosLeafAccessibilityElement *)self _axLeafContentView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityCustomRotors];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXPhotosLeafAccessibilityElement;
    v5 = [(AXPhotosLeafAccessibilityElement *)&v8 accessibilityCustomRotors];
  }

  v6 = v5;

  return v6;
}

- (id)automationElements
{
  v3 = [(AXPhotosLeafAccessibilityElement *)self _axLeafContentView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 automationElements];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXPhotosLeafAccessibilityElement;
    v5 = [(AXPhotosLeafAccessibilityElement *)&v8 automationElements];
  }

  v6 = v5;

  return v6;
}

- (void)accessibilityIncrement
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  [v2 accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  [v2 accessibilityDecrement];
}

- (int64_t)_accessibilityPageCount
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  v3 = [v2 _accessibilityPageCount];

  return v3;
}

- (int64_t)_accessibilityPageIndex
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  v3 = [v2 _accessibilityPageIndex];

  return v3;
}

- (id)_axLeafView
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self leaf];
  v3 = [v2 safeUIViewForKey:@"axView"];

  return v3;
}

- (id)_axLeafAsset
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]== 6)
  {
    v3 = [(AXPhotosLeafAccessibilityElement *)self leaf];
    v4 = [v3 safeValueForKey:@"axAsset"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_axExpandLibrary
{
  v2 = [(AXPhotosLeafAccessibilityElement *)self _accessibilityCuratedLibraryUIViewController];
  [v2 safeValueForKey:@"delegate"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v3 = v6 = 0;
  v4 = v2;
  AXPerformSafeBlock();

  _Block_object_dispose(v5, 8);
}

uint64_t __52__AXPhotosLeafAccessibilityElement__axExpandLibrary__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) curatedLibraryViewControllerExpand:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)accessibilityCustomActions
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = [(AXPhotosLeafAccessibilityElement *)self _accessibilityCuratedLibraryUIViewController];
  v4 = [v3 safeValueForKey:@"viewProvider"];
  v5 = [v4 safeValueForKey:@"viewModel"];

  if ([v5 safeBoolForKey:@"isFullyExpanded"])
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = accessibilityPULocalizedString(@"expand.library");
    v9 = [v7 initWithName:v8 target:self selector:sel__axExpandLibrary];

    v12[0] = v9;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
  }

  v10 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)_accessibilityCuratedLibraryUIViewController
{
  if (![(AXPhotosLeafAccessibilityElement *)self _axCuratedLibraryUIViewControllerClass])
  {
    [(AXPhotosLeafAccessibilityElement *)self _setAxCuratedLibraryUIViewControllerClass:MEMORY[0x29C2E6930](@"PXCuratedLibraryUIViewController")];
  }

  if ([(AXPhotosLeafAccessibilityElement *)self _axCuratedLibraryUIViewControllerClass])
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __80__AXPhotosLeafAccessibilityElement__accessibilityCuratedLibraryUIViewController__block_invoke;
    v6[3] = &unk_29F2E6158;
    v6[4] = self;
    v3 = [(AXPhotosLeafAccessibilityElement *)self _accessibilityFindAncestor:v6 startWithSelf:1];
    v4 = [v3 _accessibilityViewController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __80__AXPhotosLeafAccessibilityElement__accessibilityCuratedLibraryUIViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  [*(a1 + 32) _axCuratedLibraryUIViewControllerClass];
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

- (id)leaf
{
  WeakRetained = objc_loadWeakRetained(&self->_leaf);

  return WeakRetained;
}

@end