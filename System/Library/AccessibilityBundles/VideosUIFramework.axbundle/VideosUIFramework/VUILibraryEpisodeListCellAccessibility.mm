@interface VUILibraryEpisodeListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation VUILibraryEpisodeListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUILibraryEpisodeListCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUILibraryEpisodeListCell" hasInstanceMethod:@"releaseDateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUILibraryEpisodeListCell" hasInstanceMethod:@"durationLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUILibraryEpisodeListCell" hasInstanceMethod:@"downloadButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(VUILibraryEpisodeListCellAccessibility *)self _accessibilityLabelAggregateElement];

  if (!v3)
  {
    v4 = MEMORY[0x29EDB8D80];
    v5 = [(VUILibraryEpisodeListCellAccessibility *)self safeValueForKey:@"titleLabel"];
    v6 = [(VUILibraryEpisodeListCellAccessibility *)self safeValueForKey:@"releaseDateLabel"];
    v7 = [(VUILibraryEpisodeListCellAccessibility *)self safeValueForKey:@"durationLabel"];
    v8 = [v4 axArrayByIgnoringNilElementsWithCount:{3, v5, v6, v7}];

    v9 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:self representedElements:v8];
    [v9 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    [(VUILibraryEpisodeListCellAccessibility *)self _accessibilitySetLabelAggregateElement:v9];
  }

  v10 = MEMORY[0x29EDB8D80];
  v11 = [(VUILibraryEpisodeListCellAccessibility *)self _accessibilityLabelAggregateElement];
  v12 = [(VUILibraryEpisodeListCellAccessibility *)self safeValueForKey:@"downloadButton"];
  v13 = [v10 axArrayByIgnoringNilElementsWithCount:{2, v11, v12}];

  return v13;
}

@end