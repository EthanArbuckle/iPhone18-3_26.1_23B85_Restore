@interface PXPhotosSectionHeaderViewAccessibility
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateActionLabel;
- (void)_axUpdateDateLabel;
- (void)_axUpdateLocationLabel;
- (void)_updateActionButton;
- (void)_updateDateLabel;
- (void)_updateLocationsLabelVisibility;
- (void)_updateTitleLabel;
@end

@implementation PXPhotosSectionHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderViewAccessibility;
  [(PXPhotosSectionHeaderViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PXPhotosSectionHeaderViewAccessibility *)self _axUpdateActionLabel];
  [(PXPhotosSectionHeaderViewAccessibility *)self _axUpdateDateLabel];
  [(PXPhotosSectionHeaderViewAccessibility *)self _axUpdateLocationLabel];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(PXPhotosSectionHeaderViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v3 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_dateLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_locationsLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v8[1] = *MEMORY[0x29EDCA608];
  v2 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_actionButton"];
  if (v2 && (__UIAccessibilitySafeClass(), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isHidden], v3, (v4 & 1) == 0))
  {
    v8[0] = v2;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)automationElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = __UIAccessibilitySafeClass();
  v6 = [v5 isHidden];

  if ((v6 & 1) == 0)
  {
    [v3 axSafelyAddObject:v4];
  }

  if (AXDeviceIsPad())
  {
    v7 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_locationsLabel"];
    v8 = __UIAccessibilitySafeClass();

    LOBYTE(v7) = [v8 isHidden];
    if ((v7 & 1) == 0)
    {
      v9 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_locationsLabel"];
      [v3 axSafelyAddObject:v9];
    }

    v10 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_dateLabel"];
    v11 = __UIAccessibilitySafeClass();

    LOBYTE(v10) = [v11 isHidden];
    if ((v10 & 1) == 0)
    {
      v12 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_dateLabel"];
      [v3 axSafelyAddObject:v12];
    }

    v13 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_actionButton"];
    v14 = __UIAccessibilitySafeClass();

    LOBYTE(v13) = [v14 isHidden];
    if ((v13 & 1) == 0)
    {
      v15 = @"_actionButton";
LABEL_16:
      v24 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:v15];
      [v3 axSafelyAddObject:v24];
    }
  }

  else
  {
    v16 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_actionButton"];
    v17 = __UIAccessibilitySafeClass();

    LOBYTE(v16) = [v17 isHidden];
    if ((v16 & 1) == 0)
    {
      v18 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_actionButton"];
      [v3 axSafelyAddObject:v18];
    }

    v19 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_locationsLabel"];
    v20 = __UIAccessibilitySafeClass();

    LOBYTE(v19) = [v20 isHidden];
    if ((v19 & 1) == 0)
    {
      v21 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_locationsLabel"];
      [v3 axSafelyAddObject:v21];
    }

    v22 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_dateLabel"];
    v23 = __UIAccessibilitySafeClass();

    LOBYTE(v22) = [v23 isHidden];
    if ((v22 & 1) == 0)
    {
      v15 = @"_dateLabel";
      goto LABEL_16;
    }
  }

  return v3;
}

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3
{
  v3 = a3;
  v4 = ([v3 isEqualToString:*MEMORY[0x29EDC80B8]] & 1) == 0 && UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x29EDC8068]) != NSOrderedDescending;

  return v4;
}

- (void)_updateTitleLabel
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderViewAccessibility;
  [(PXPhotosSectionHeaderViewAccessibility *)&v3 _updateTitleLabel];
  [(PXPhotosSectionHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_updateDateLabel
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderViewAccessibility;
  [(PXPhotosSectionHeaderViewAccessibility *)&v3 _updateDateLabel];
  [(PXPhotosSectionHeaderViewAccessibility *)self _axUpdateDateLabel];
}

- (void)_updateLocationsLabelVisibility
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderViewAccessibility;
  [(PXPhotosSectionHeaderViewAccessibility *)&v3 _updateLocationsLabelVisibility];
  [(PXPhotosSectionHeaderViewAccessibility *)self _axUpdateLocationLabel];
}

- (void)_updateActionButton
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderViewAccessibility;
  [(PXPhotosSectionHeaderViewAccessibility *)&v3 _updateActionButton];
  [(PXPhotosSectionHeaderViewAccessibility *)self _axUpdateActionLabel];
}

- (void)_axUpdateActionLabel
{
  v4 = [(PXPhotosSectionHeaderViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_actionButtonTitle, _dateLabel, _titleLabel"];
  v3 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_actionButton"];
  [v3 setAccessibilityLabel:v4];
}

- (void)_axUpdateDateLabel
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    return;
  }

  v20 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_sectionStartDate"];
  v3 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_sectionEndDate"];
  if (v20 && v3)
  {
    v4 = [MEMORY[0x29EDB8D98] currentCalendar];
    v5 = [v4 components:28 fromDate:v20];

    v6 = [MEMORY[0x29EDB8D98] currentCalendar];
    v7 = [v6 components:28 fromDate:v3];

    v8 = [v5 year];
    if (v8 == [v7 year] && (v9 = objc_msgSend(v5, "month"), v9 == objc_msgSend(v7, "month")) && (v10 = objc_msgSend(v5, "day"), v10 == objc_msgSend(v7, "day")))
    {
      v11 = [v5 hour];
      if (v11 != [v7 hour] || (v12 = objc_msgSend(v5, "minute"), v12 != objc_msgSend(v7, "minute")))
      {
        v19 = MEMORY[0x29EDBA0F8];
        v14 = accessibilityPhotosUICoreLocalizedString(@"photos.taken.date");
        v15 = AXDateStringForFormat();
        v17 = [v19 stringWithFormat:v14, v15];
        goto LABEL_13;
      }

      v13 = MEMORY[0x29EDBA0F8];
      v14 = accessibilityPhotosUICoreLocalizedString(@"photos.taken.date.time");
      v15 = AXDateStringForFormat();
    }

    else
    {
      v13 = MEMORY[0x29EDBA0F8];
      v14 = accessibilityPhotosUICoreLocalizedString(@"photos.taken.range");
      v15 = AXDateStringForFormat();
    }

    v16 = AXDateStringForFormat();
    v17 = [v13 stringWithFormat:v14, v15, v16];

LABEL_13:
    v18 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_dateLabel"];
    [v18 setAccessibilityLabel:v17];

    [(PXPhotosSectionHeaderViewAccessibility *)self _axUpdateActionLabel];
  }
}

- (void)_axUpdateLocationLabel
{
  v3 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_locationsLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  v5 = [(PXPhotosSectionHeaderViewAccessibility *)self safeValueForKey:@"_locationsLabel"];
  v4 = accessibilityPhotosUICoreLocalizedString(@"locations.label.button.hint");
  [v5 setAccessibilityHint:v4];
}

@end