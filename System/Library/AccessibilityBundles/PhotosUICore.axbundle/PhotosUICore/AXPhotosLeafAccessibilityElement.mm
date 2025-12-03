@interface AXPhotosLeafAccessibilityElement
+ (void)_accessibilityPerformValidations:(id)validations;
- (AXPhotosLeafAccessibilityElement)initWithAccessibilityContainer:(id)container forLeaf:(id)leaf;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axContentKind" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axAsset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axSubtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axIsSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PHAsset" hasInstanceMethod:@"mainFileURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHAsset" hasInstanceMethod:@"px_isUnsavedSyndicatedAsset" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PHAsset" hasInstanceMethod:@"px_wasSavedThroughSyndication" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PXGBasicAXGroup" hasInstanceMethod:@"axInfoSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXStoryStyleSwitchingFullsizeLayout" hasInstanceMethod:@"_axStyleTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"viewProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryViewDelegate" hasInstanceMethod:@"curatedLibraryViewControllerExpand:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryViewProvider" hasInstanceMethod:@"viewModel" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryViewModel" hasInstanceMethod:@"isFullyExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PXStoryRelatedOverlayLayout"];
  [validationsCopy validateClass:@"PXStoryStyleSwitchingFullsizeLayout"];
  [validationsCopy validateClass:@"PXGPageControl"];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController"];
  [validationsCopy validateClass:@"PXCuratedLibraryUIViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PXGReusableAXInfo" hasInstanceMethod:@"axIdentifier" withFullSignature:{"@", 0}];
}

- (AXPhotosLeafAccessibilityElement)initWithAccessibilityContainer:(id)container forLeaf:(id)leaf
{
  v8.receiver = self;
  v8.super_class = AXPhotosLeafAccessibilityElement;
  leafCopy = leaf;
  v6 = [(AXPhotosLeafAccessibilityElement *)&v8 initWithAccessibilityContainer:container];
  [(AXPhotosLeafAccessibilityElement *)v6 setLeaf:leafCopy, v8.receiver, v8.super_class];

  return v6;
}

- (CGRect)accessibilityFrame
{
  leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];
  [leaf accessibilityFrame];
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

  _axLeafView = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  _accessibilityViewIsVisible = [_axLeafView _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

- (int64_t)_accessibilityContentKind
{
  leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];
  v3 = [leaf safeIntegerForKey:@"axContentKind"];

  return v3;
}

- (id)accessibilityURL
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]== 6)
  {
    _axLeafAsset = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessibilityURL = [_axLeafAsset accessibilityURL];
LABEL_6:

      goto LABEL_9;
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = [_axLeafAsset safeValueForKey:@"mainFileURL"];
      accessibilityURL = __UIAccessibilitySafeClass();

      goto LABEL_6;
    }
  }

  accessibilityURL = 0;
LABEL_9:

  return accessibilityURL;
}

- (id)_accessibilityPHAssetLocalIdentifier
{
  _axLeafAsset = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
  _accessibilityPHAssetLocalIdentifier = [_axLeafAsset _accessibilityPHAssetLocalIdentifier];

  return _accessibilityPHAssetLocalIdentifier;
}

- (id)_accessibilityPhotoLibraryURL
{
  _axLeafAsset = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
  _accessibilityPhotoLibraryURL = [_axLeafAsset _accessibilityPhotoLibraryURL];

  return _accessibilityPhotoLibraryURL;
}

- (BOOL)_accessibilityIsPHAssetLocallyAvailable
{
  _axLeafAsset = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
  _accessibilityIsPHAssetLocallyAvailable = [_axLeafAsset _accessibilityIsPHAssetLocallyAvailable];

  return _accessibilityIsPHAssetLocallyAvailable;
}

- (id)accessibilityCustomContent
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]== 6)
  {
    _axLeafAsset = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
    accessibilityCustomContent = [_axLeafAsset accessibilityCustomContent];
  }

  else
  {
    accessibilityCustomContent = 0;
  }

  return accessibilityCustomContent;
}

- (id)accessibilityLabel
{
  _accessibilityContentKind = [(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind];
  if (_accessibilityContentKind > 4)
  {
    if (_accessibilityContentKind == 5)
    {
      _axLeafView = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
    }

    else
    {
      if (_accessibilityContentKind != 6)
      {
        goto LABEL_16;
      }

      _axLeafView = [(AXPhotosLeafAccessibilityElement *)self _axLeafAsset];
    }

    v5 = _axLeafView;
    accessibilityLabel = [_axLeafView accessibilityLabel];
    goto LABEL_12;
  }

  if ((_accessibilityContentKind - 2) < 2)
  {
    leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];
    v5 = leaf;
    v6 = @"axText";
LABEL_9:
    accessibilityLabel = [leaf safeValueForKey:v6];
LABEL_12:
    accessibilityLabel2 = accessibilityLabel;

    goto LABEL_13;
  }

  if (_accessibilityContentKind == 1)
  {
    leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];
    v5 = leaf;
    v6 = @"axTitle";
    goto LABEL_9;
  }

LABEL_16:
  v11.receiver = self;
  v11.super_class = AXPhotosLeafAccessibilityElement;
  accessibilityLabel2 = [(AXPhotosLeafAccessibilityElement *)&v11 accessibilityLabel];
LABEL_13:

  return accessibilityLabel2;
}

- (id)accessibilityValue
{
  _accessibilityContentKind = [(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind];
  if (_accessibilityContentKind == 6)
  {
    leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];
    _axLeafView = [leaf safeValueForKey:@"axAsset"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17.receiver = self;
      v17.super_class = AXPhotosLeafAccessibilityElement;
      accessibilityValue = [(AXPhotosLeafAccessibilityElement *)&v17 accessibilityValue];
      if ([_axLeafView safeBoolForKey:@"px_isUnsavedSyndicatedAsset"])
      {
        v11 = @"not.yet.saved";
      }

      else
      {
        if (![_axLeafView safeBoolForKey:@"px_wasSavedThroughSyndication"])
        {
          goto LABEL_19;
        }

        v11 = @"saved";
      }

      v15 = accessibilityPhotosUICoreLocalizedString(v11);
      v12 = __UIAXStringForVariables();

      accessibilityValue = v12;
      goto LABEL_19;
    }

LABEL_15:
    v16.receiver = self;
    v16.super_class = AXPhotosLeafAccessibilityElement;
    accessibilityValue = [(AXPhotosLeafAccessibilityElement *)&v16 accessibilityValue];
    goto LABEL_20;
  }

  if (_accessibilityContentKind == 5)
  {
    _axLeafView = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
    accessibilityValue = [_axLeafView accessibilityValue];
    MEMORY[0x29C2E6930](@"PXGPageControl");
    if (objc_opt_isKindOfClass())
    {
      accessibilityContainer = [(AXPhotosLeafAccessibilityElement *)self accessibilityContainer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        group = [accessibilityContainer group];
        v8 = [group safeValueForKey:@"axInfoSource"];

        MEMORY[0x29C2E6930](@"PXStoryStyleSwitchingFullsizeLayout");
        if (objc_opt_isKindOfClass())
        {
          v14 = [v8 safeStringForKey:@"_axStyleTitle"];
          v9 = __UIAXStringForVariables();

          accessibilityValue = v9;
        }
      }
    }

    goto LABEL_19;
  }

  if (_accessibilityContentKind != 1)
  {
    goto LABEL_15;
  }

  _axLeafView = [(AXPhotosLeafAccessibilityElement *)self leaf];
  accessibilityValue = [_axLeafView safeValueForKey:@"axSubtitle"];
LABEL_19:

LABEL_20:

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v14.receiver = self;
  v14.super_class = AXPhotosLeafAccessibilityElement;
  accessibilityTraits = [(AXPhotosLeafAccessibilityElement *)&v14 accessibilityTraits];
  _accessibilityContentKind = [(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind];
  if (_accessibilityContentKind <= 2)
  {
    if (_accessibilityContentKind != 1)
    {
      if (_accessibilityContentKind != 2)
      {
        goto LABEL_17;
      }

      accessibilityContainer = [(AXPhotosLeafAccessibilityElement *)self accessibilityContainer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        group = [accessibilityContainer group];
        v8 = [group safeValueForKey:@"axInfoSource"];

        MEMORY[0x29C2E6930](@"PXStoryRelatedOverlayLayout");
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = *MEMORY[0x29EDC7F80];
        if ((isKindOfClass & 1) == 0)
        {
          v10 = 0;
        }

        accessibilityTraits |= v10;
      }

      goto LABEL_14;
    }

    v5 = MEMORY[0x29EDC7F80];
  }

  else
  {
    if (_accessibilityContentKind != 3)
    {
      if (_accessibilityContentKind != 5)
      {
        if (_accessibilityContentKind != 6)
        {
          goto LABEL_17;
        }

        v5 = MEMORY[0x29EDC7F88];
        goto LABEL_16;
      }

      accessibilityContainer = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
      accessibilityTraits |= [accessibilityContainer accessibilityTraits];
LABEL_14:

      goto LABEL_17;
    }

    v5 = MEMORY[0x29EDC7F70];
  }

LABEL_16:
  accessibilityTraits |= *v5;
LABEL_17:
  leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];
  v12 = [leaf safeBoolForKey:@"axIsSelected"];

  if (v12)
  {
    return *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  else
  {
    return accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
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
  _axLeafContentView = [(AXPhotosLeafAccessibilityElement *)self _axLeafContentView];
  if (_axLeafContentView)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = objc_opt_class();
    accessibilityContainer = NSStringFromClass(v5);
    accessibilityIdentifier = [v4 stringWithFormat:@"%@_AX", accessibilityContainer];
LABEL_3:

    goto LABEL_4;
  }

  leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];

  if (!leaf || (-[AXPhotosLeafAccessibilityElement leaf](self, "leaf"), v10 = objc_claimAutoreleasedReturnValue(), [v10 safeStringForKey:@"axIdentifier"], accessibilityIdentifier = objc_claimAutoreleasedReturnValue(), v10, !accessibilityIdentifier))
  {
    accessibilityContainer = [(AXPhotosLeafAccessibilityElement *)self accessibilityContainer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      group = [accessibilityContainer group];
      v12 = [group safeValueForKey:@"axInfoSource"];

      if (v12)
      {
        v13 = MEMORY[0x29EDBA0F8];
        className = [v12 className];
        accessibilityIdentifier = [v13 stringWithFormat:@"%@-Info", className];

        goto LABEL_3;
      }
    }

    v15.receiver = self;
    v15.super_class = AXPhotosLeafAccessibilityElement;
    accessibilityIdentifier = [(AXPhotosLeafAccessibilityElement *)&v15 accessibilityIdentifier];
  }

LABEL_4:

  return accessibilityIdentifier;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axLeafContentView = [(AXPhotosLeafAccessibilityElement *)self _axLeafContentView];
  v4 = _axLeafContentView;
  if (_axLeafContentView)
  {
    _accessibilitySupplementaryFooterViews = [_axLeafContentView _accessibilitySupplementaryFooterViews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXPhotosLeafAccessibilityElement;
    _accessibilitySupplementaryFooterViews = [(AXPhotosLeafAccessibilityElement *)&v8 _accessibilitySupplementaryFooterViews];
  }

  v6 = _accessibilitySupplementaryFooterViews;

  return v6;
}

- (id)accessibilityCustomRotors
{
  _axLeafContentView = [(AXPhotosLeafAccessibilityElement *)self _axLeafContentView];
  v4 = _axLeafContentView;
  if (_axLeafContentView)
  {
    accessibilityCustomRotors = [_axLeafContentView accessibilityCustomRotors];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXPhotosLeafAccessibilityElement;
    accessibilityCustomRotors = [(AXPhotosLeafAccessibilityElement *)&v8 accessibilityCustomRotors];
  }

  v6 = accessibilityCustomRotors;

  return v6;
}

- (id)automationElements
{
  _axLeafContentView = [(AXPhotosLeafAccessibilityElement *)self _axLeafContentView];
  v4 = _axLeafContentView;
  if (_axLeafContentView)
  {
    automationElements = [_axLeafContentView automationElements];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXPhotosLeafAccessibilityElement;
    automationElements = [(AXPhotosLeafAccessibilityElement *)&v8 automationElements];
  }

  v6 = automationElements;

  return v6;
}

- (void)accessibilityIncrement
{
  _axLeafView = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  [_axLeafView accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  _axLeafView = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  [_axLeafView accessibilityDecrement];
}

- (int64_t)_accessibilityPageCount
{
  _axLeafView = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  _accessibilityPageCount = [_axLeafView _accessibilityPageCount];

  return _accessibilityPageCount;
}

- (int64_t)_accessibilityPageIndex
{
  _axLeafView = [(AXPhotosLeafAccessibilityElement *)self _axLeafView];
  _accessibilityPageIndex = [_axLeafView _accessibilityPageIndex];

  return _accessibilityPageIndex;
}

- (id)_axLeafView
{
  leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];
  v3 = [leaf safeUIViewForKey:@"axView"];

  return v3;
}

- (id)_axLeafAsset
{
  if ([(AXPhotosLeafAccessibilityElement *)self _accessibilityContentKind]== 6)
  {
    leaf = [(AXPhotosLeafAccessibilityElement *)self leaf];
    v4 = [leaf safeValueForKey:@"axAsset"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_axExpandLibrary
{
  _accessibilityCuratedLibraryUIViewController = [(AXPhotosLeafAccessibilityElement *)self _accessibilityCuratedLibraryUIViewController];
  [_accessibilityCuratedLibraryUIViewController safeValueForKey:@"delegate"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v3 = v6 = 0;
  v4 = _accessibilityCuratedLibraryUIViewController;
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
  _accessibilityCuratedLibraryUIViewController = [(AXPhotosLeafAccessibilityElement *)self _accessibilityCuratedLibraryUIViewController];
  v4 = [_accessibilityCuratedLibraryUIViewController safeValueForKey:@"viewProvider"];
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
    _accessibilityViewController = [v3 _accessibilityViewController];
  }

  else
  {
    _accessibilityViewController = 0;
  }

  return _accessibilityViewController;
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