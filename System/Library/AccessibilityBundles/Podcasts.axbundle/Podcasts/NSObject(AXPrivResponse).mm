@interface NSObject(AXPrivResponse)
+ (id)_accessibilityPlayPauseButtonString:()AXPrivResponse;
+ (id)_accessibilitySeekButtonStringInDirection:()AXPrivResponse response:;
@end

@implementation NSObject(AXPrivResponse)

+ (id)_accessibilitySeekButtonStringInDirection:()AXPrivResponse response:
{
  v5 = a4;
  v6 = [v5 safeValueForKey:@"tracklist"];
  v7 = [v6 safeValueForKey:@"playingItem"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [v8 safeValueForKey:@"seekCommand"];
  v10 = v9;
  if (a3)
  {
    v11 = [v9 safeArrayForKey:@"preferredForwardJumpIntervals"];
    v12 = [v11 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = @"ff.button";
LABEL_6:
      v17 = [v11 firstObject];
      [v17 doubleValue];
      v19 = v18;

      v20 = MEMORY[0x29EDBA0F8];
      v21 = accessibilityLocalizedString(v14);
      v22 = [v20 localizedStringWithFormat:v21, fabs(v19)];

      goto LABEL_8;
    }
  }

  else
  {
    v11 = [v9 safeArrayForKey:@"preferredBackwardJumpIntervals"];
    v15 = [v11 firstObject];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v14 = @"rewind.button";
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_8:

  return v22;
}

+ (id)_accessibilityPlayPauseButtonString:()AXPrivResponse
{
  v3 = a3;
  v4 = [v3 safeIntegerForKey:@"state"];
  v5 = [v3 safeValueForKey:@"tracklist"];
  v6 = [v5 safeValueForKey:@"playingItem"];
  v7 = __UIAccessibilitySafeClass();

  if (v7)
  {
    [v7 duration];
  }

  if (v4 == 2)
  {
    v8 = @"AX_Pause";
  }

  else
  {
    v8 = @"AX_Play";
  }

  v9 = accessibilityLocalizedString(v8);

  return v9;
}

@end