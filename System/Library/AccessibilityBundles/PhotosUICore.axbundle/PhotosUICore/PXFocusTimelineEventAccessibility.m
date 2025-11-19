@interface PXFocusTimelineEventAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityFocusEventTimeString;
- (id)accessibilityFocusEventTypeString;
@end

@implementation PXFocusTimelineEventAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXFocusTimelineEvent" hasInstanceMethod:@"time" withFullSignature:{"{?=qiIq}", 0}];
  [v3 validateClass:@"PXFocusTimelineEvent" hasInstanceMethod:@"type" withFullSignature:{"Q", 0}];
}

- (id)accessibilityFocusEventTimeString
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3810000000;
  v7 = "";
  v8 = 0;
  v9 = 0;
  v10 = 0;
  AXPerformSafeBlock();
  time = *(v5 + 4);
  _Block_object_dispose(&v4, 8);
  CMTimeGetSeconds(&time);
  v2 = UIAXTimeStringForDuration();

  return v2;
}

double __70__PXFocusTimelineEventAccessibility_accessibilityFocusEventTimeString__block_invoke(uint64_t a1)
{
  [*(a1 + 32) time];
  v2 = *(*(a1 + 40) + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return result;
}

- (id)accessibilityFocusEventTypeString
{
  v2 = [(PXFocusTimelineEventAccessibility *)self safeUnsignedIntegerForKey:@"type"];
  if (v2 == 1)
  {
    v3 = @"manual.focus.event";
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = @"auto.focus.event";
LABEL_5:
    v4 = accessibilityPhotosUICoreLocalizedString(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end