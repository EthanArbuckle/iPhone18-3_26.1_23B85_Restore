@interface NTKMusicTimelineEntryAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_progressProviderForRingComplications;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NTKMusicTimelineEntryAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKMusicTimelineEntry" hasInstanceVariable:@"_state" withType:"Q"];
  [validationsCopy validateClass:@"NTKMusicTimelineEntry" hasInstanceMethod:@"templateForComplicationFamily:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"NTKMusicTimelineEntry" hasInstanceMethod:@"_progressProviderForRingComplications" withFullSignature:{"@", 0}];
}

- (id)_progressProviderForRingComplications
{
  v9.receiver = self;
  v9.super_class = NTKMusicTimelineEntryAccessibility;
  _progressProviderForRingComplications = [(NTKMusicTimelineEntryAccessibility *)&v9 _progressProviderForRingComplications];
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
    [_progressProviderForRingComplications setAccessibilityLabel:v7];
  }

  return _progressProviderForRingComplications;
}

- (id)templateForComplicationFamily:(int64_t)family
{
  v8.receiver = self;
  v8.super_class = NTKMusicTimelineEntryAccessibility;
  v3 = [(NTKMusicTimelineEntryAccessibility *)&v8 templateForComplicationFamily:family];
  if (_accessibilityComplicationTemplateContainsSimpleImage())
  {
    v4 = [v3 safeValueForKey:@"imageProvider"];
    v6 = accessibilityLocalizedString(@"complication.music.image", v5);
    [v4 setAccessibilityLabel:v6];
  }

  return v3;
}

@end