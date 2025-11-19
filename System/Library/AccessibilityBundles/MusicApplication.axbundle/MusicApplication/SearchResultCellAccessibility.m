@interface SearchResultCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchResultCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.SearchResultCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SearchResultCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SearchResultCell" hasInstanceMethod:@"additionalDescription" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SearchResultCell" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SearchResultCellAccessibility *)self safeValueForKey:@"title"];
  v4 = [(SearchResultCellAccessibility *)self safeValueForKey:@"subtitle"];
  v5 = [(SearchResultCellAccessibility *)self safeValueForKey:@"additionalDescription"];
  if (([(SearchResultCellAccessibility *)self safeBoolForKey:@"accessibilityIsExplicit"]& 1) != 0)
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

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchResultCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchResultCellAccessibility *)&v3 accessibilityTraits];
}

@end