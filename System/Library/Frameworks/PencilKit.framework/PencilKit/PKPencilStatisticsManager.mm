@interface PKPencilStatisticsManager
+ (BOOL)isAllowedBundleID:(id)d;
+ (id)allowedBundleIDFromBundleID:(id)d;
- (uint64_t)startAnalyticsSessionIfNecessary;
- (void)endAnalyticsSessionIfNecessary;
@end

@implementation PKPencilStatisticsManager

+ (id)allowedBundleIDFromBundleID:(id)d
{
  dCopy = d;
  if ([self isAllowedBundleID:dCopy])
  {
    v5 = dCopy;
  }

  else if ([dCopy hasPrefix:@"com.apple"])
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
  if (self)
  {
    if (*(self + 16) == 1)
    {
      *(self + 16) = 0;
      if (CACurrentMediaTime() - *(self + 48) > 0.0)
      {
        v2 = *(self + 40);
        if (!v2)
        {
          v2 = @"<unspecified tool>";
        }

        v13 = v2;
        v3 = *(self + 112);
        if (!v3)
        {
          v3 = @"<unspecified bundle ID>";
        }

        v4 = v3;
        v5 = *(self + 8);
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
        isScribbleActive = [v9 isScribbleActive];

        IOPSDrawingUnlimitedPower();
        v11 = +[PKStatisticsManager sharedStatisticsManager];
        [PKStatisticsManager recordHoverDuration:v11 onScreenDuration:? hoverEdgeDuration:? hoverExteriorDuration:? sessionDuration:? showEffectsEnabled:? shadowEnabled:? scribbleEnabled:? doubleTapOnlyInHoverRangeEnabled:? doubleTapsInRange:? doubleTapsOutsideRange:? deviceIsConnectedToCharger:? intentionalHoverDuration:? intentionalToolPreviewHoverDuration:? countIntentionalHoverActions:? maxIntentionalHoverDuration:? meanIntentionalHoverDuration:? minIntentionalHoverDuration:?];

        v12 = +[PKStatisticsManager sharedStatisticsManager];
        [PKStatisticsManager recordHoverToolType:v12 hoverDuration:v13 intentionalToolPreviewHoverDuration:numValues intentionalHoverDuration:v7 maxIntentionalHoverDuration:0 meanIntentionalHoverDuration:isScribbleActive minIntentionalHoverDuration:v8 countIntentionalHoverActions:v4 activepencilminutes:? onScreenDuration:? settingShowEffectsEnabled:? settingSystemShadowEnabled:? settingScribbleEnabled:? settingDoubleTapInRangeEnabled:? bundleID:?];
      }
    }
  }
}

+ (BOOL)isAllowedBundleID:(id)d
{
  dCopy = d;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (v6 & 1) != 0 || ([dCopy hasPrefix:@"com.apple.quicklook"])
  {
    v7 = 1;
  }

  else
  {
    uTF8String = [dCopy UTF8String];
    v9 = strlen(uTF8String);
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
      memmove(__dst, uTF8String, v9);
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