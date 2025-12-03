@interface PBFPosterGalleryPreviewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PBFPosterGalleryPreviewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PBFPosterGalleryPreviewCell" conformsToProtocol:@"PBFPosterGalleryCollectionViewCell"];
  [validationsCopy validateClass:@"PBFPosterGalleryPreviewCell" hasProperty:@"posterTitle" withType:"@"];
  [validationsCopy validateClass:@"PBFPosterGalleryPreviewCell" hasInstanceMethod:@"posterPreviewView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PBFPosterGalleryPreviewView" hasInstanceVariable:@"_posterPreviewContentView" withType:"PBFPosterGalleryPreviewContentView"];
  [validationsCopy validateClass:@"PBFPosterGalleryPreviewContentView" hasInstanceVariable:@"_index" withType:"NSUInteger"];
}

- (id)accessibilityLabel
{
  v3 = [(PBFPosterGalleryPreviewCellAccessibility *)self safeUIViewForKey:@"posterPreviewView"];
  v4 = AXMappedLabelOrValueForPosterPreview(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    goto LABEL_11;
  }

  v7 = AXPreviewIdentifier(v3);
  if ([v7 containsString:@"Gradient"])
  {
    v8 = accessibilityLocalizedString(@"color.poster.label");
  }

  else
  {
    v9 = [(PBFPosterGalleryPreviewCellAccessibility *)self safeStringForKey:@"posterTitle"];
    if (v9)
    {
    }

    else
    {
      accessibilityValue = [(PBFPosterGalleryPreviewCellAccessibility *)self accessibilityValue];

      if (!accessibilityValue)
      {
        v12 = [v3 safeUIViewForKey:@"_posterPreviewContentView"];
        v13 = accessibilityLocalizedString(@"poster.gallery.preview.cell.default.label");
        [v12 safeUnsignedIntegerForKey:@"_index"];
        v6 = AXCFormattedString();

        goto LABEL_10;
      }
    }

    v8 = [(PBFPosterGalleryPreviewCellAccessibility *)self safeStringForKey:@"posterTitle"];
  }

  v6 = v8;
LABEL_10:

LABEL_11:

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(PBFPosterGalleryPreviewCellAccessibility *)self safeUIViewForKey:@"posterPreviewView"];
  v4 = AXMappedLabelOrValueForPosterPreview(v3);
  v5 = v4;
  if (v4)
  {
    accessibilityValue = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PBFPosterGalleryPreviewCellAccessibility;
    accessibilityValue = [(PBFPosterGalleryPreviewCellAccessibility *)&v9 accessibilityValue];
  }

  v7 = accessibilityValue;

  return v7;
}

@end