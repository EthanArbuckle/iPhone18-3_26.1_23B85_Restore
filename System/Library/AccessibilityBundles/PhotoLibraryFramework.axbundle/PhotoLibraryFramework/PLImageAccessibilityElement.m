@interface PLImageAccessibilityElement
- (CGRect)accessibilityFrame;
- (id)_accessibilityElementStoredUserLabel;
- (id)_accessibilityPhotoDescription;
- (id)_axMainAssetURL;
- (id)accessibilityLabel;
- (id)albumView;
- (id)dataSource;
- (id)delegate;
- (int64_t)_albumPhotoIndex;
- (unint64_t)accessibilityTraits;
@end

@implementation PLImageAccessibilityElement

- (id)delegate
{
  v3 = [(PLImageAccessibilityElement *)self accessibilityContainer];
  if (!v3)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  NSClassFromString(&cfstr_Uitableviewcel_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"tableViewCell"];

    v3 = v4;
LABEL_5:
    v5 = v3;
    v3 = v5;
    goto LABEL_6;
  }

  NSLog(&cfstr_AxWhatWasTheCo.isa, self, v3);
  v5 = 0;
LABEL_6:

  return v5;
}

- (id)dataSource
{
  v2 = [(PLImageAccessibilityElement *)self delegate];
  v3 = [v2 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Plalbumview.isa)];

  v4 = [v3 safeValueForKey:@"dataSource"];

  return v4;
}

- (CGRect)accessibilityFrame
{
  v3 = [(PLImageAccessibilityElement *)self delegate];
  [v3 bounds];
  v4 = [v3 safeValueForKey:@"cellPhotoSize"];
  [v4 sizeValue];

  [(PLImageAccessibilityElement *)self index];
  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (int64_t)_albumPhotoIndex
{
  v3 = [(PLImageAccessibilityElement *)self delegate];
  v4 = [(PLImageAccessibilityElement *)self delegate];
  v5 = [v4 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Plalbumview.isa)];

  v6 = [v3 _accessibilityAncestorIsKindOf:objc_opt_class()];
  v7 = [v6 indexPathForCell:v3];
  v8 = [v7 row];
  v9 = [v5 safeValueForKey:@"currentPickerSession"];
  v10 = v9 != 0;

  v11 = v8 - v10;
  v12 = [v5 safeValueForKey:@"_columnsPerRow"];
  v13 = [v12 integerValue];

  v14 = v13 * v11 + [(PLImageAccessibilityElement *)self index];
  return v14;
}

- (id)_axMainAssetURL
{
  v3 = [(PLImageAccessibilityElement *)self _albumPhotoIndex];
  v4 = [(PLImageAccessibilityElement *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PLImageAccessibilityElement *)self albumView];
    v6 = [v4 albumView:v5 accessibilityPhotoURL:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityPhotoDescription
{
  v3 = [(PLImageAccessibilityElement *)self _albumPhotoIndex];
  v4 = [(PLImageAccessibilityElement *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PLImageAccessibilityElement *)self albumView];
    v6 = [v4 albumView:v5 accessibilityPhotoDescription:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityElementStoredUserLabel
{
  v2 = [(PLImageAccessibilityElement *)self _axMainAssetURL];
  v3 = UIAccessibilityMetadataDescriptionForImage();

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_2A227B0B8;
  }

  return v4;
}

- (id)albumView
{
  v2 = [(PLImageAccessibilityElement *)self delegate];
  v3 = [v2 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Plalbumview.isa)];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(PLImageAccessibilityElement *)self _albumPhotoIndex];
  v4 = [(PLImageAccessibilityElement *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PLImageAccessibilityElement *)self albumView];
    v6 = [v4 albumView:v5 accessibilityLabelForPhotoAtIndex:v3];
LABEL_5:

    goto LABEL_6;
  }

  if (v4)
  {
    v5 = NSStringFromSelector(sel_albumView_accessibilityLabelForPhotoAtIndex_);
    _AXAssert();
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PLImageAccessibilityElement *)self _albumPhotoIndex];
  v4 = [(PLImageAccessibilityElement *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PLImageAccessibilityElement *)self albumView];
    v6 = [v4 albumView:v5 accessibilityTraitsForPhotoAtIndex:v3];
  }

  else
  {
    if (v4)
    {
      v8 = NSStringFromSelector(sel_albumView_accessibilityTraitsForPhotoAtIndex_);
      _AXAssert();
    }

    v6 = *MEMORY[0x29EDC7FA0];
  }

  return v6;
}

@end