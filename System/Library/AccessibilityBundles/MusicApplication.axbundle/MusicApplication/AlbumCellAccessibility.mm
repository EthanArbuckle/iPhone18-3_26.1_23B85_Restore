@interface AlbumCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation AlbumCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.AlbumCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.AlbumCell" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.AlbumCell" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicApplication.AlbumCell" hasInstanceMethod:@"accessibilityRankString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(AlbumCellAccessibility *)self safeValueForKey:@"accessibilityRankString"];
  v4 = [(AlbumCellAccessibility *)self safeValueForKey:@"title"];
  v5 = [(AlbumCellAccessibility *)self safeValueForKey:@"artistName"];
  if (([(AlbumCellAccessibility *)self safeBoolForKey:@"accessibilityIsExplicit"]& 1) != 0)
  {
    v8 = accessibilityMusicLocalizedString(@"explicit");
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = __UIAXStringForVariables();
  }

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(AlbumCellAccessibility *)self safeValueForKey:@"title"];
  v4 = [(AlbumCellAccessibility *)self safeValueForKey:@"artistName"];
  v5 = __UIAXStringForVariables();
  v6 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v3, v4, v5}];

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AlbumCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AlbumCellAccessibility *)&v3 accessibilityTraits];
}

@end