@interface AVPlayerRateState
- (AVPlayerRateState)initWithAutomaticallyWaitsToMinimizeStalling:(BOOL)stalling usesLegacyAutomaticWaitingBehavior:(BOOL)behavior timeControlStatus:(int64_t)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:(BOOL)item hasCurrentInterstitialEvent:(BOOL)event nameForLogging:(id)logging;
- (id)rateStateBySettingAutomaticallyWaitsToMinimizeStalling:(BOOL)stalling;
- (id)rateStateBySettingRate:(float)rate nameForLogging:(id)logging;
- (id)rateStateBySettingTimeControlStatus:(int64_t)status reasonForWaitingToPlay:(id)play nameForLogging:(id)logging;
- (id)rateStateBySettingUsesLegacyAutomaticWaitingBehavior:(BOOL)behavior;
- (id)rateStateByUpdatingBasedOnFigPlayer:(OpaqueFigPlayer *)player hasCurrentItem:(BOOL)item hasCurrentInterstitialEvent:(BOOL)event nameForLogging:(id)logging;
- (id)rateStateByUpdatingBasedOnFigPlayerPlaybackState:(int)state hasCurrentInterstitialEvent:(BOOL)event nameForLogging:(id)logging;
- (id)rateStateByUpdatingBasedOnPresenceOfCurrentInterstitialEvent:(BOOL)event nameForLogging:(id)logging;
- (void)dealloc;
@end

@implementation AVPlayerRateState

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerRateState;
  [(AVPlayerRateState *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)rateStateBySettingRate:(float)rate nameForLogging:(id)logging
{
  v5 = [(AVPlayerRateState *)self copy];
  v5[2] = rate;

  return v5;
}

- (id)rateStateBySettingUsesLegacyAutomaticWaitingBehavior:(BOOL)behavior
{
  v4 = [(AVPlayerRateState *)self copy];
  v4[13] = behavior;

  return v4;
}

- (id)rateStateBySettingAutomaticallyWaitsToMinimizeStalling:(BOOL)stalling
{
  result = [(AVPlayerRateState *)self copy];
  *(result + 12) = stalling;
  *(result + 13) = 0;
  return result;
}

- (id)rateStateBySettingTimeControlStatus:(int64_t)status reasonForWaitingToPlay:(id)play nameForLogging:(id)logging
{
  v7 = [(AVPlayerRateState *)self copy:status];
  v7[2] = status;
  v8 = v7[3];
  if (v8 != play)
  {

    v7[3] = [play copy];
  }

  return v7;
}

- (id)rateStateByUpdatingBasedOnPresenceOfCurrentInterstitialEvent:(BOOL)event nameForLogging:(id)logging
{
  eventCopy = event;
  timeControlStatus = [(AVPlayerRateState *)self timeControlStatus];
  reasonForWaitingToPlay = [(AVPlayerRateState *)self reasonForWaitingToPlay];
  if ([(AVPlayerRateState *)self timeControlStatus]!= 2 && ![(NSString *)[(AVPlayerRateState *)self reasonForWaitingToPlay] isEqualToString:@"AVPlayerWaitingWithNoItemToPlayReason"]&& eventCopy)
  {
    timeControlStatus = 1;
    reasonForWaitingToPlay = @"AVPlayerWaitingDuringInterstitialEventReason";
  }

  return [(AVPlayerRateState *)self rateStateBySettingTimeControlStatus:timeControlStatus reasonForWaitingToPlay:reasonForWaitingToPlay nameForLogging:logging];
}

- (id)rateStateByUpdatingBasedOnFigPlayerPlaybackState:(int)state hasCurrentInterstitialEvent:(BOOL)event nameForLogging:(id)logging
{
  eventCopy = event;
  if (state > 3)
  {
    switch(state)
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
  if (state != 3)
  {
    v9 = 0;
  }

  if (state != 2)
  {
    v8 = state == 3;
    v7 = v9;
  }

  v10 = state == 1;
  v11 = state == 1 || v8;
  if (v10)
  {
    v12 = @"AVPlayerWaitingWhileEvaluatingBufferingRateReason";
  }

  else
  {
    v12 = v7;
  }

LABEL_19:
  v13 = [(AVPlayerRateState *)self rateStateBySettingTimeControlStatus:v11 reasonForWaitingToPlay:v12 nameForLogging:logging];

  return [v13 rateStateByUpdatingBasedOnPresenceOfCurrentInterstitialEvent:eventCopy nameForLogging:logging];
}

- (id)rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:(BOOL)item hasCurrentInterstitialEvent:(BOOL)event nameForLogging:(id)logging
{
  eventCopy = event;
  itemCopy = item;
  timeControlStatus = [(AVPlayerRateState *)self timeControlStatus];
  reasonForWaitingToPlay = [(AVPlayerRateState *)self reasonForWaitingToPlay];
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

  if (v11 != 0.0 && itemCopy)
  {
    if ([(AVPlayerRateState *)self automaticallyWaitsToMinimizeStalling])
    {
      if (timeControlStatus == 2)
      {
        v13 = 0;
        v12 = 2;
        goto LABEL_17;
      }
    }

    else
    {
      usesLegacyAutomaticWaitingBehavior = [(AVPlayerRateState *)self usesLegacyAutomaticWaitingBehavior];
      v13 = 0;
      v12 = 2;
      if (!usesLegacyAutomaticWaitingBehavior || timeControlStatus == 2)
      {
        goto LABEL_17;
      }
    }

    v13 = @"AVPlayerWaitingWhileEvaluatingBufferingRateReason";
    if (reasonForWaitingToPlay && ![(NSString *)reasonForWaitingToPlay isEqualToString:@"AVPlayerWaitingWithNoItemToPlayReason"])
    {
      v13 = reasonForWaitingToPlay;
    }

    v12 = 1;
  }

LABEL_17:
  v16 = [(AVPlayerRateState *)self rateStateBySettingTimeControlStatus:v12 reasonForWaitingToPlay:v13 nameForLogging:logging];

  return [v16 rateStateByUpdatingBasedOnPresenceOfCurrentInterstitialEvent:eventCopy nameForLogging:logging];
}

- (id)rateStateByUpdatingBasedOnFigPlayer:(OpaqueFigPlayer *)player hasCurrentItem:(BOOL)item hasCurrentInterstitialEvent:(BOOL)event nameForLogging:(id)logging
{
  eventCopy = event;
  if (player)
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
    v11 = [(AVPlayerRateState *)self rateStateByUpdatingBasedOnFigPlayerPlaybackState:valuePtr hasCurrentInterstitialEvent:eventCopy nameForLogging:logging];
    if (number)
    {
      CFRelease(number);
    }

    return v11;
  }

  else
  {

    return [(AVPlayerRateState *)self rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:item hasCurrentInterstitialEvent:event nameForLogging:logging];
  }
}

- (AVPlayerRateState)initWithAutomaticallyWaitsToMinimizeStalling:(BOOL)stalling usesLegacyAutomaticWaitingBehavior:(BOOL)behavior timeControlStatus:(int64_t)status
{
  v12.receiver = self;
  v12.super_class = AVPlayerRateState;
  v8 = [(AVPlayerRateState *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_automaticallyWaitsToMinimizeStalling = stalling;
    v8->_usesLegacyAutomaticWaitingBehavior = behavior;
    v8->_timeControlStatus = status;
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end