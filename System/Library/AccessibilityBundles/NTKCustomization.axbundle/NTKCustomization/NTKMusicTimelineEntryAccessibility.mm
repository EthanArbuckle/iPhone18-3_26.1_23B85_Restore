@interface NTKMusicTimelineEntryAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_progressProviderForRingComplications;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKMusicTimelineEntryAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKMusicTimelineEntry" hasInstanceVariable:@"_state" withType:"Q"];
  [v3 validateClass:@"NTKMusicTimelineEntry" hasInstanceMethod:@"templateForComplicationFamily:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"NTKMusicTimelineEntry" hasInstanceMethod:@"_progressProviderForRingComplications" withFullSignature:{"@", 0}];
}

- (id)_progressProviderForRingComplications
{
  v9.receiver = self;
  v9.super_class = NTKMusicTimelineEntryAccessibility;
  v3 = [(NTKMusicTimelineEntryAccessibility *)&v9 _progressProviderForRingComplications];
  v4 = [(NTKMusicTimelineEntryAccessibility *)self safeUnsignedIntegerForKey:@"_state"];
  if ((v4 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if ((v4 - 1) >= 2)
    {
      v6 = @"complication.music.stopped";
    }

    else
    {
      v6 = @"complication.music.paused";
    }

    v7 = accessibilityLocalizedString(v6, v5);
    [v3 setAccessibilityLabel:v7];
  }

  return v3;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = NTKMusicTimelineEntryAccessibility;
  v3 = [(NTKMusicTimelineEntryAccessibility *)&v8 templateForComplicationFamily:a3];
  if (_accessibilityComplicationTemplateContainsSimpleImage())
  {
    v4 = [v3 safeValueForKey:@"imageProvider"];
    v6 = accessibilityLocalizedString(@"complication.music.image", v5);
    [v4 setAccessibilityLabel:v6];
  }

  return v3;
}

@end