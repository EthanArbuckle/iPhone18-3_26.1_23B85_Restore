@interface PBFPosterGalleryPreviewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PBFPosterGalleryPreviewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PBFPosterGalleryPreviewCell" conformsToProtocol:@"PBFPosterGalleryCollectionViewCell"];
  [v3 validateClass:@"PBFPosterGalleryPreviewCell" hasProperty:@"posterTitle" withType:"@"];
  [v3 validateClass:@"PBFPosterGalleryPreviewCell" hasInstanceMethod:@"posterPreviewView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBFPosterGalleryPreviewView" hasInstanceVariable:@"_posterPreviewContentView" withType:"PBFPosterGalleryPreviewContentView"];
  [v3 validateClass:@"PBFPosterGalleryPreviewContentView" hasInstanceVariable:@"_index" withType:"NSUInteger"];
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
      v10 = [(PBFPosterGalleryPreviewCellAccessibility *)self accessibilityValue];

      if (!v10)
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
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PBFPosterGalleryPreviewCellAccessibility;
    v6 = [(PBFPosterGalleryPreviewCellAccessibility *)&v9 accessibilityValue];
  }

  v7 = v6;

  return v7;
}

@end