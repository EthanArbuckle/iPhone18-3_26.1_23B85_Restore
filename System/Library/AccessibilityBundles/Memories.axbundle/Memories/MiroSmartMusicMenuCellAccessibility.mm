@interface MiroSmartMusicMenuCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axRequiresDownload;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)awakeFromNib;
- (void)prepareForReuse;
@end

@implementation MiroSmartMusicMenuCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MiroSmartMusicMenuCell" hasInstanceMethod:@"cloudStatus" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroSmartMusicMenuCell" hasInstanceMethod:@"songName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroSmartMusicMenuCell" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroSmartMusicMenuCell" hasInstanceMethod:@"progress" withFullSignature:{"f", 0}];
  [v3 validateClass:@"MiroSmartMusicMenuCell" hasInstanceMethod:@"prepareForReuse" withFullSignature:{"v", 0}];
}

- (BOOL)_axRequiresDownload
{
  objc_opt_class();
  v3 = [(MiroSmartMusicMenuCellAccessibility *)self safeValueForKey:@"cloudStatus"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 isHidden];
  return v5 ^ 1;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MiroSmartMusicMenuCellAccessibility *)self safeValueForKey:@"songName"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(MiroSmartMusicMenuCellAccessibility *)self safeValueForKey:@"artistName"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = __AXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  if ([(MiroSmartMusicMenuCellAccessibility *)self _axRequiresDownload])
  {
    v3 = accessibilityMemoriesLocalizedString(@"memory.soundtrack.needsdownload");
  }

  else
  {
    [(MiroSmartMusicMenuCellAccessibility *)self safeFloatForKey:@"progress"];
    v3 = 0;
    if (v4 > 0.0)
    {
      v3 = AXFormatFloatWithPercentage();
    }
  }

  return v3;
}

- (id)accessibilityHint
{
  if ([(MiroSmartMusicMenuCellAccessibility *)self _axRequiresDownload])
  {
    v2 = @"memory.soundtrack.hint.download";
  }

  else
  {
    v2 = @"memory.soundtrack.hint.playback";
  }

  v3 = accessibilityMemoriesLocalizedString(v2);

  return v3;
}

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = MiroSmartMusicMenuCellAccessibility;
  [(MiroSmartMusicMenuCellAccessibility *)&v5 awakeFromNib];
  v3 = [(MiroSmartMusicMenuCellAccessibility *)self safeValueForKey:@"cloudStatus"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(MiroSmartMusicMenuCellAccessibility *)self safeValueForKey:@"progressIndicator"];
  [v4 setIsAccessibilityElement:0];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MiroSmartMusicMenuCellAccessibility;
  [(MiroSmartMusicMenuCellAccessibility *)&v3 prepareForReuse];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 setAccessoryType:0];
}

@end