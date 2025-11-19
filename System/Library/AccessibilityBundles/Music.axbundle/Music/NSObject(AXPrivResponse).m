@interface NSObject(AXPrivResponse)
+ (BOOL)accessibilityIsFavoriteEnabledForResponse:()AXPrivResponse;
+ (double)_accessibilitySkipIntervalInDirection:()AXPrivResponse forResponse:;
+ (id)accessibilityPlayPauseStopButtonString:()AXPrivResponse;
+ (id)accessibilitySeekButtonStringInDirection:()AXPrivResponse response:;
+ (uint64_t)accessibilityIsSeekEnabledInDirection:()AXPrivResponse forResponse:;
@end

@implementation NSObject(AXPrivResponse)

+ (BOOL)accessibilityIsFavoriteEnabledForResponse:()AXPrivResponse
{
  v3 = a3;
  v4 = [v3 safeValueForKeyPath:@"tracklist.playingItem.likeCommand"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 safeValueForKeyPath:@"tracklist.playingItem.dislikeCommand"];
    v5 = v6 != 0;
  }

  return v5;
}

+ (double)_accessibilitySkipIntervalInDirection:()AXPrivResponse forResponse:
{
  v5 = [a4 safeValueForKeyPath:@"tracklist.playingItem.seekCommand"];
  v6 = v5;
  if (a3 == 1)
  {
    v7 = @"preferredForwardJumpIntervals";
  }

  else
  {
    v7 = @"preferredBackwardJumpIntervals";
  }

  v8 = [v5 safeArrayForKey:v7];
  if ([v8 count])
  {
    v9 = [v8 firstObject];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ (uint64_t)accessibilityIsSeekEnabledInDirection:()AXPrivResponse forResponse:
{
  v4 = a4;
  [v4 safeValueForKeyPath:@"tracklist.playingItem.seekCommand"];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v7 = v12 = 0;
  v8 = v4;
  AXPerformSafeBlock();
  v5 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v5;
}

+ (id)accessibilitySeekButtonStringInDirection:()AXPrivResponse response:
{
  [MEMORY[0x29EDC9738] _accessibilitySkipIntervalInDirection:? forResponse:?];
  v4 = MEMORY[0x29EDBA0F8];
  v6 = fabs(v5);
  if (a3 == 1)
  {
    v7 = @"ff.button";
  }

  else
  {
    v7 = @"rewind.button";
  }

  v8 = accessibilityMusicLocalizedString(v7);
  v9 = [v4 localizedStringWithFormat:v8, *&v6];

  return v9;
}

+ (id)accessibilityPlayPauseStopButtonString:()AXPrivResponse
{
  v3 = a3;
  v4 = [v3 safeIntegerForKey:@"state"];
  v5 = [v3 safeValueForKeyPath:@"tracklist.playingItem"];
  v6 = __UIAccessibilitySafeClass();

  if (v6)
  {
    [v6 duration];
  }

  if (v4 == 2)
  {
    v7 = @"AX_Pause";
  }

  else
  {
    v7 = @"AX_Play";
  }

  v8 = accessibilityMusicLocalizedString(v7);

  return v8;
}

@end