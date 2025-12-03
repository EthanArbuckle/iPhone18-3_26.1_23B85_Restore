@interface PXCuratedLibraryOverlayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PXCuratedLibraryOverlayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButton" hasInstanceMethod:@"userData" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButton" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButtonConfiguration" hasInstanceMethod:@"actionPerformer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButtonConfiguration" hasInstanceMethod:@"actionHandler" withFullSignature:{"@?", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButtonConfiguration" hasInstanceMethod:@"menuActionHandler" withFullSignature:{"@?", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButtonConfiguration" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButtonConfiguration" hasInstanceMethod:@"systemImageName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryOverlayButton" isKindOfClass:@"UIControl"];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(PXCuratedLibraryOverlayButtonAccessibility *)self safeValueForKey:@"userData"];
  v4 = [v3 safeValueForKey:@"actionPerformer"];
  v5 = [v4 safeIntegerForKey:@"actionZoomLevel"];

  if (v5 == 2)
  {
    _axUserDataConfiguration = [(PXCuratedLibraryOverlayButtonAccessibility *)self _axUserDataConfiguration];
    v7 = [_axUserDataConfiguration safeStringForKey:@"systemImageName"];

    LOBYTE(_axUserDataConfiguration) = [v7 hasPrefix:@"sidebar"];
    return _axUserDataConfiguration;
  }

  else
  {
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    _accessibilityViewIsVisible = [v9 _accessibilityViewIsVisible];

    return _accessibilityViewIsVisible;
  }
}

- (unint64_t)accessibilityTraits
{
  v14.receiver = self;
  v14.super_class = PXCuratedLibraryOverlayButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(PXCuratedLibraryOverlayButtonAccessibility *)&v14 accessibilityTraits];
  _axUserDataConfiguration = [(PXCuratedLibraryOverlayButtonAccessibility *)self _axUserDataConfiguration];
  v5 = [_axUserDataConfiguration safeValueForKey:@"actionPerformer"];
  if (v5)
  {
  }

  else
  {
    _axUserDataConfiguration2 = [(PXCuratedLibraryOverlayButtonAccessibility *)self _axUserDataConfiguration];
    v7 = [_axUserDataConfiguration2 safeValueForKey:@"actionHandler"];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      _axUserDataConfiguration3 = [(PXCuratedLibraryOverlayButtonAccessibility *)self _axUserDataConfiguration];
      v10 = [_axUserDataConfiguration3 safeValueForKey:@"menuActionHandler"];
      v8 = v10 != 0;
    }

    if (!v8)
    {
      v3 |= *MEMORY[0x29EDC7FA8];
    }
  }

  _axUserDataConfiguration4 = [(PXCuratedLibraryOverlayButtonAccessibility *)self _axUserDataConfiguration];
  v12 = [_axUserDataConfiguration4 safeStringForKey:@"systemImageName"];

  if ([v12 isEqualToString:@"PXCuratedLibraryFilterIndicatorInactiveIconImageName"])
  {
    v3 &= ~*MEMORY[0x29EDC7FC0];
  }

  else if ([v12 isEqualToString:@"PXCuratedLibraryFilterIndicatorActiveIconImageName"])
  {
    v3 |= *MEMORY[0x29EDC7FC0];
  }

  return v3;
}

- (id)accessibilityLabel
{
  _axUserDataConfiguration = [(PXCuratedLibraryOverlayButtonAccessibility *)self _axUserDataConfiguration];
  v4 = [_axUserDataConfiguration safeStringForKey:@"title"];

  if (v4)
  {
    accessibilityLabel = v4;
LABEL_3:
    v6 = accessibilityLabel;
    goto LABEL_26;
  }

  _axUserDataConfiguration2 = [(PXCuratedLibraryOverlayButtonAccessibility *)self _axUserDataConfiguration];
  v8 = [_axUserDataConfiguration2 safeStringForKey:@"systemImageName"];

  if ([v8 isEqualToString:@"plus.slash.minus"])
  {
    v9 = @"curated.zoom";
  }

  else if ([v8 isEqualToString:@"plus"])
  {
    v9 = @"curated.zoom.in";
  }

  else if ([v8 isEqualToString:@"minus"])
  {
    v9 = @"curated.zoom.out";
  }

  else if ([v8 isEqualToString:@"xmark"])
  {
    v9 = @"curated.close";
  }

  else if ([v8 isEqualToString:@"person.crop.circle.badge.checkmark"])
  {
    v9 = @"curated.manage.subscribers";
  }

  else if ([v8 isEqualToString:@"person.crop.circle.badge.plus"])
  {
    v9 = @"curated.add.subscribers";
  }

  else if ([v8 isEqualToString:@"PXCuratedLibraryEllipsisIconImageName"])
  {
    v9 = @"curated.more";
  }

  else if ([v8 isEqualToString:@"PXCuratedLibraryFilterIndicatorInactiveIconImageName"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"PXCuratedLibraryFilterIndicatorActiveIconImageName"))
  {
    v9 = @"curated.filter";
  }

  else if ([v8 isEqualToString:@"sidebar.left"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"sidebar.right") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"sidebar.leading"))
  {
    v9 = @"curated.show.sidebar";
  }

  else if ([v8 isEqualToString:@"rectangle.arrowtriangle.2.inward"])
  {
    v9 = @"curated.aspect";
  }

  else if ([v8 isEqualToString:@"rectangle.arrowtriangle.2.outward"])
  {
    v9 = @"curated.square";
  }

  else if ([v8 isEqualToString:@"person.fill"])
  {
    v9 = @"personal.library";
  }

  else if ([v8 isEqualToString:@"person.2.fill"])
  {
    v9 = @"shared.library";
  }

  else if ([v8 isEqualToString:@"speaker.wave.2"])
  {
    v9 = @"photo.volume.button";
  }

  else
  {
    if (![v8 isEqualToString:@"speaker.slash"])
    {

      v11.receiver = self;
      v11.super_class = PXCuratedLibraryOverlayButtonAccessibility;
      accessibilityLabel = [(PXCuratedLibraryOverlayButtonAccessibility *)&v11 accessibilityLabel];
      goto LABEL_3;
    }

    v9 = @"photo.volume.muted.button";
  }

  v6 = accessibilityPhotosUICoreLocalizedString(v9);

LABEL_26:

  return v6;
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibraryOverlayButtonAccessibility;
  canBecomeFocused = [(PXCuratedLibraryOverlayButtonAccessibility *)&v5 canBecomeFocused];
  return ([(PXCuratedLibraryOverlayButtonAccessibility *)self _accessibilityIsFKARunningForFocusItem]| canBecomeFocused) & 1;
}

@end