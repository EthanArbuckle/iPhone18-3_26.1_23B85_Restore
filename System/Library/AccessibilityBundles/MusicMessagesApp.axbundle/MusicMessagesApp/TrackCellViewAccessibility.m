@interface TrackCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TrackCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicMessagesApp.TrackCellView" hasInstanceMethod:@"isNowPlaying" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicMessagesApp.TrackCellView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicMessagesApp.TrackCellView" hasInstanceMethod:@"artist" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicMessagesApp.TrackCellView" hasInstanceMethod:@"isExplicit" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(TrackCellViewAccessibility *)self safeBoolForKey:@"isNowPlaying"];
  v4 = [(TrackCellViewAccessibility *)self safeValueForKey:@"title"];
  v5 = [(TrackCellViewAccessibility *)self safeValueForKey:@"artist"];
  v6 = [(TrackCellViewAccessibility *)self safeBoolForKey:@"isExplicit"];
  v7 = v6;
  if (v3)
  {
    v8 = accessibilityMusicMessagesAppLocalizedString(@"now.playing");
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = accessibilityMusicMessagesAppLocalizedString(@"explicit");
    v9 = __UIAXStringForVariables();

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = __UIAXStringForVariables();
  if (v3)
  {
LABEL_7:
  }

LABEL_8:

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TrackCellViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TrackCellViewAccessibility *)&v3 accessibilityTraits];
}

@end