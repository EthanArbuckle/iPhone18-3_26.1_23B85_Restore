@interface AVPlaybackCoordinator
+ (void)initialize;
- (AVCoordinatedPlaybackSuspension)beginSuspensionForReason:(AVCoordinatedPlaybackSuspensionReason)suspensionReason;
- (BOOL)isDefunct;
- (BOOL)pauseSnapsToMediaTimeOfOriginator;
- (CMTime)expectedItemTimeAtHostTime:(SEL)time;
- (NSArray)otherParticipants;
- (NSArray)suspensionReasons;
- (NSArray)suspensionReasonsThatTriggerWaiting;
- (NSInteger)participantLimitForWaitingOutSuspensionsWithReason:(AVCoordinatedPlaybackSuspensionReason)reason;
- (id)_currentWaitingPoliciesArray;
- (id)initInternal;
- (void)_endSuspension:(OpaqueFigTimelineCoordinatorSuspension *)suspension;
- (void)_endSuspension:(OpaqueFigTimelineCoordinatorSuspension *)suspension proposingNewTime:(id *)time;
- (void)_removeSuspension:(OpaqueFigTimelineCoordinatorSuspension *)suspension;
- (void)setParticipantLimit:(NSInteger)participantLimit forWaitingOutSuspensionsWithReason:(AVCoordinatedPlaybackSuspensionReason)reason;
- (void)setPauseSnapsToMediaTimeOfOriginator:(BOOL)pauseSnapsToMediaTimeOfOriginator;
- (void)setSuspensionReasonsThatTriggerWaiting:(NSArray *)suspensionReasonsThatTriggerWaiting;
@end

@implementation AVPlaybackCoordinator

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = AVPlaybackCoordinator;
  return [(AVPlaybackCoordinator *)&v3 init];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (NSArray)suspensionReasons
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (NSArray)otherParticipants
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (AVCoordinatedPlaybackSuspension)beginSuspensionForReason:(AVCoordinatedPlaybackSuspensionReason)suspensionReason
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (void)_endSuspension:(OpaqueFigTimelineCoordinatorSuspension *)suspension
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (void)_endSuspension:(OpaqueFigTimelineCoordinatorSuspension *)suspension proposingNewTime:(id *)time
{
  v6 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v6);
}

- (void)_removeSuspension:(OpaqueFigTimelineCoordinatorSuspension *)suspension
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (CMTime)expectedItemTimeAtHostTime:(SEL)time
{
  v7 = objc_opt_class();
  result = AVRequestConcreteImplementation(self, time, v7);
  *retstr = **&MEMORY[0x1E6960C70];
  return result;
}

- (void)setParticipantLimit:(NSInteger)participantLimit forWaitingOutSuspensionsWithReason:(AVCoordinatedPlaybackSuspensionReason)reason
{
  v6 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v6);
}

- (NSInteger)participantLimitForWaitingOutSuspensionsWithReason:(AVCoordinatedPlaybackSuspensionReason)reason
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (void)setSuspensionReasonsThatTriggerWaiting:(NSArray *)suspensionReasonsThatTriggerWaiting
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (NSArray)suspensionReasonsThatTriggerWaiting
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (void)setPauseSnapsToMediaTimeOfOriginator:(BOOL)pauseSnapsToMediaTimeOfOriginator
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (BOOL)pauseSnapsToMediaTimeOfOriginator
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (id)_currentWaitingPoliciesArray
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (BOOL)isDefunct
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

@end