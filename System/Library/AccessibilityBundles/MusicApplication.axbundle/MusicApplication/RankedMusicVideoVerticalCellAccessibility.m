@interface RankedMusicVideoVerticalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation RankedMusicVideoVerticalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.RankedMusicVideoVerticalCell" hasInstanceMethod:@"accessibilityRankString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.RankedMusicVideoVerticalCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.RankedMusicVideoVerticalCell" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.RankedMusicVideoVerticalCell" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if ([(RankedMusicVideoVerticalCellAccessibility *)self safeBoolForKey:@"accessibilityIsExplicit"])
  {
    v3 = accessibilityMusicLocalizedString(@"explicit");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(RankedMusicVideoVerticalCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityRankString, title, artistName"];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = RankedMusicVideoVerticalCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(RankedMusicVideoVerticalCellAccessibility *)&v3 accessibilityTraits];
}

@end