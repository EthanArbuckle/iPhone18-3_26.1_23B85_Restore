@interface PKPencilStatisticsManager
+ (BOOL)isAllowedBundleID:(id)a3;
+ (id)allowedBundleIDFromBundleID:(id)a3;
- (uint64_t)startAnalyticsSessionIfNecessary;
- (void)endAnalyticsSessionIfNecessary;
@end

@implementation PKPencilStatisticsManager

+ (id)allowedBundleIDFromBundleID:(id)a3
{
  v4 = a3;
  if ([a1 isAllowedBundleID:v4])
  {
    v5 = v4;
  }

  else if ([v4 hasPrefix:@"com.apple"])
  {
    v5 = @"<unspecified Apple bundleID>";
  }

  else
  {
    v5 = @"<unspecified bundle ID>";
  }

  return v5;
}

- (uint64_t)startAnalyticsSessionIfNecessary
{
  if (result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      operator new();
    }
  }

  return result;
}

- (void)endAnalyticsSessionIfNecessary
{
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
      if (CACurrentMediaTime() - *(a1 + 48) > 0.0)
      {
        v2 = *(a1 + 40);
        if (!v2)
        {
          v2 = @"<unspecified tool>";
        }

        v13 = v2;
        v3 = *(a1 + 112);
        if (!v3)
        {
          v3 = @"<unspecified bundle ID>";
        }

        v4 = v3;
        v5 = *(a1 + 8);
        if (v5)
        {
          os_unfair_lock_lock(&v5->lock);
          numValues = v5->numValues;
          os_unfair_lock_unlock(&v5->lock);
          PKRunningStat::max(v5);
          PKRunningStat::min(v5);
          PKRunningStat::mean(v5);
        }

        else
        {
          numValues = 0;
        }

        v7 = +[PKHoverSettings isHoverEnabled];
        v8 = +[PKHoverSettings allowDoubleTapOnlyWithPencilHover];
        v9 = +[PKTextInputSettings sharedSettings];
        v10 = [v9 isScribbleActive];

        IOPSDrawingUnlimitedPower();
        v11 = +[PKStatisticsManager sharedStatisticsManager];
        [PKStatisticsManager recordHoverDuration:v11 onScreenDuration:? hoverEdgeDuration:? hoverExteriorDuration:? sessionDuration:? showEffectsEnabled:? shadowEnabled:? scribbleEnabled:? doubleTapOnlyInHoverRangeEnabled:? doubleTapsInRange:? doubleTapsOutsideRange:? deviceIsConnectedToCharger:? intentionalHoverDuration:? intentionalToolPreviewHoverDuration:? countIntentionalHoverActions:? maxIntentionalHoverDuration:? meanIntentionalHoverDuration:? minIntentionalHoverDuration:?];

        v12 = +[PKStatisticsManager sharedStatisticsManager];
        [PKStatisticsManager recordHoverToolType:v12 hoverDuration:v13 intentionalToolPreviewHoverDuration:numValues intentionalHoverDuration:v7 maxIntentionalHoverDuration:0 meanIntentionalHoverDuration:v10 minIntentionalHoverDuration:v8 countIntentionalHoverActions:v4 activepencilminutes:? onScreenDuration:? settingShowEffectsEnabled:? settingSystemShadowEnabled:? settingScribbleEnabled:? settingDoubleTapInRangeEnabled:? bundleID:?];
      }
    }
  }
}

+ (BOOL)isAllowedBundleID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.mobilenotes"];

  if (v6 & 1) != 0 || ([v3 hasPrefix:@"com.apple.quicklook"])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 UTF8String];
    v9 = strlen(v8);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(__dst, v8, v9);
    }

    *(__dst + v10) = 0;
    if (v13 < 0)
    {
      operator delete(__dst[0]);
    }

    v7 = 0;
  }

  return v7;
}

@end