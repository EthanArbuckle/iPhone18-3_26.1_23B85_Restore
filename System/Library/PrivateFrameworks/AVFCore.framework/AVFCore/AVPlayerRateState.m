@interface AVPlayerRateState
- (AVPlayerRateState)initWithAutomaticallyWaitsToMinimizeStalling:(BOOL)a3 usesLegacyAutomaticWaitingBehavior:(BOOL)a4 timeControlStatus:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:(BOOL)a3 hasCurrentInterstitialEvent:(BOOL)a4 nameForLogging:(id)a5;
- (id)rateStateBySettingAutomaticallyWaitsToMinimizeStalling:(BOOL)a3;
- (id)rateStateBySettingRate:(float)a3 nameForLogging:(id)a4;
- (id)rateStateBySettingTimeControlStatus:(int64_t)a3 reasonForWaitingToPlay:(id)a4 nameForLogging:(id)a5;
- (id)rateStateBySettingUsesLegacyAutomaticWaitingBehavior:(BOOL)a3;
- (id)rateStateByUpdatingBasedOnFigPlayer:(OpaqueFigPlayer *)a3 hasCurrentItem:(BOOL)a4 hasCurrentInterstitialEvent:(BOOL)a5 nameForLogging:(id)a6;
- (id)rateStateByUpdatingBasedOnFigPlayerPlaybackState:(int)a3 hasCurrentInterstitialEvent:(BOOL)a4 nameForLogging:(id)a5;
- (id)rateStateByUpdatingBasedOnPresenceOfCurrentInterstitialEvent:(BOOL)a3 nameForLogging:(id)a4;
- (void)dealloc;
@end

@implementation AVPlayerRateState

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerRateState;
  [(AVPlayerRateState *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVPlayerRateState);
  [(AVPlayerRateState *)self rate];
  v4->_rate = v5;
  v4->_automaticallyWaitsToMinimizeStalling = [(AVPlayerRateState *)self automaticallyWaitsToMinimizeStalling];
  v4->_usesLegacyAutomaticWaitingBehavior = [(AVPlayerRateState *)self usesLegacyAutomaticWaitingBehavior];
  v4->_timeControlStatus = [(AVPlayerRateState *)self timeControlStatus];
  v4->_reasonForWaitingToPlay = [(NSString *)[(AVPlayerRateState *)self reasonForWaitingToPlay] copy];
  return v4;
}

- (id)rateStateBySettingRate:(float)a3 nameForLogging:(id)a4
{
  v5 = [(AVPlayerRateState *)self copy];
  v5[2] = a3;

  return v5;
}

- (id)rateStateBySettingUsesLegacyAutomaticWaitingBehavior:(BOOL)a3
{
  v4 = [(AVPlayerRateState *)self copy];
  v4[13] = a3;

  return v4;
}

- (id)rateStateBySettingAutomaticallyWaitsToMinimizeStalling:(BOOL)a3
{
  result = [(AVPlayerRateState *)self copy];
  *(result + 12) = a3;
  *(result + 13) = 0;
  return result;
}

- (id)rateStateBySettingTimeControlStatus:(int64_t)a3 reasonForWaitingToPlay:(id)a4 nameForLogging:(id)a5
{
  v7 = [(AVPlayerRateState *)self copy:a3];
  v7[2] = a3;
  v8 = v7[3];
  if (v8 != a4)
  {

    v7[3] = [a4 copy];
  }

  return v7;
}

- (id)rateStateByUpdatingBasedOnPresenceOfCurrentInterstitialEvent:(BOOL)a3 nameForLogging:(id)a4
{
  v5 = a3;
  v7 = [(AVPlayerRateState *)self timeControlStatus];
  v8 = [(AVPlayerRateState *)self reasonForWaitingToPlay];
  if ([(AVPlayerRateState *)self timeControlStatus]!= 2 && ![(NSString *)[(AVPlayerRateState *)self reasonForWaitingToPlay] isEqualToString:@"AVPlayerWaitingWithNoItemToPlayReason"]&& v5)
  {
    v7 = 1;
    v8 = @"AVPlayerWaitingDuringInterstitialEventReason";
  }

  return [(AVPlayerRateState *)self rateStateBySettingTimeControlStatus:v7 reasonForWaitingToPlay:v8 nameForLogging:a4];
}

- (id)rateStateByUpdatingBasedOnFigPlayerPlaybackState:(int)a3 hasCurrentInterstitialEvent:(BOOL)a4 nameForLogging:(id)a5
{
  v6 = a4;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v12 = 0;
        v11 = 2;
        goto LABEL_19;
      case 5:
        v12 = @"AVPlayerWaitingForCoordinatedPlaybackReason";
        break;
      case 6:
        v12 = @"AVPlayerWaitingDuringInterstitialEventReason";
        break;
      default:
        v11 = 0;
        v12 = 0;
        goto LABEL_19;
    }

    v11 = 1;
    goto LABEL_19;
  }

  v7 = @"AVPlayerWaitingToMinimizeStallsReason";
  v8 = 1;
  v9 = @"AVPlayerWaitingWithNoItemToPlayReason";
  if (a3 != 3)
  {
    v9 = 0;
  }

  if (a3 != 2)
  {
    v8 = a3 == 3;
    v7 = v9;
  }

  v10 = a3 == 1;
  v11 = a3 == 1 || v8;
  if (v10)
  {
    v12 = @"AVPlayerWaitingWhileEvaluatingBufferingRateReason";
  }

  else
  {
    v12 = v7;
  }

LABEL_19:
  v13 = [(AVPlayerRateState *)self rateStateBySettingTimeControlStatus:v11 reasonForWaitingToPlay:v12 nameForLogging:a5];

  return [v13 rateStateByUpdatingBasedOnPresenceOfCurrentInterstitialEvent:v6 nameForLogging:a5];
}

- (id)rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:(BOOL)a3 hasCurrentInterstitialEvent:(BOOL)a4 nameForLogging:(id)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(AVPlayerRateState *)self timeControlStatus];
  v10 = [(AVPlayerRateState *)self reasonForWaitingToPlay];
  [(AVPlayerRateState *)self rate];
  v12 = v11 != 0.0;
  if (v11 == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = @"AVPlayerWaitingWithNoItemToPlayReason";
  }

  if (v11 != 0.0 && v7)
  {
    if ([(AVPlayerRateState *)self automaticallyWaitsToMinimizeStalling])
    {
      if (v9 == 2)
      {
        v13 = 0;
        v12 = 2;
        goto LABEL_17;
      }
    }

    else
    {
      v15 = [(AVPlayerRateState *)self usesLegacyAutomaticWaitingBehavior];
      v13 = 0;
      v12 = 2;
      if (!v15 || v9 == 2)
      {
        goto LABEL_17;
      }
    }

    v13 = @"AVPlayerWaitingWhileEvaluatingBufferingRateReason";
    if (v10 && ![(NSString *)v10 isEqualToString:@"AVPlayerWaitingWithNoItemToPlayReason"])
    {
      v13 = v10;
    }

    v12 = 1;
  }

LABEL_17:
  v16 = [(AVPlayerRateState *)self rateStateBySettingTimeControlStatus:v12 reasonForWaitingToPlay:v13 nameForLogging:a5];

  return [v16 rateStateByUpdatingBasedOnPresenceOfCurrentInterstitialEvent:v6 nameForLogging:a5];
}

- (id)rateStateByUpdatingBasedOnFigPlayer:(OpaqueFigPlayer *)a3 hasCurrentItem:(BOOL)a4 hasCurrentInterstitialEvent:(BOOL)a5 nameForLogging:(id)a6
{
  v7 = a5;
  if (a3)
  {
    number = 0;
    valuePtr = 0;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      return 0;
    }

    v10(FigBaseObject, *MEMORY[0x1E69733A8], *MEMORY[0x1E695E480], &number);
    if (!number)
    {
      return 0;
    }

    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    v11 = [(AVPlayerRateState *)self rateStateByUpdatingBasedOnFigPlayerPlaybackState:valuePtr hasCurrentInterstitialEvent:v7 nameForLogging:a6];
    if (number)
    {
      CFRelease(number);
    }

    return v11;
  }

  else
  {

    return [(AVPlayerRateState *)self rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:a4 hasCurrentInterstitialEvent:a5 nameForLogging:a6];
  }
}

- (AVPlayerRateState)initWithAutomaticallyWaitsToMinimizeStalling:(BOOL)a3 usesLegacyAutomaticWaitingBehavior:(BOOL)a4 timeControlStatus:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = AVPlayerRateState;
  v8 = [(AVPlayerRateState *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_automaticallyWaitsToMinimizeStalling = a3;
    v8->_usesLegacyAutomaticWaitingBehavior = a4;
    v8->_timeControlStatus = a5;
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end