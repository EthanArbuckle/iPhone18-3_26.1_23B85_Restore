@interface ATXInterruptingNotificationsHelper
- (ATXInterruptingNotificationsHelper)init;
- (BOOL)checkIfStartEventWasTheInterruptedEvent:(id)event;
- (BOOL)doesCurrentAppLaunchInterruptPreviousAppLaunch:(id)launch;
- (void)checkAppLaunchEndEvent:(id)event;
- (void)checkAppLaunchStartEvent:(id)event;
- (void)checkNotificationEvent:(id)event;
- (void)recordInterruptingAppSession;
@end

@implementation ATXInterruptingNotificationsHelper

- (ATXInterruptingNotificationsHelper)init
{
  v10.receiver = self;
  v10.super_class = ATXInterruptingNotificationsHelper;
  v2 = [(ATXInterruptingNotificationsHelper *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recentNotifications = v2->_recentNotifications;
    v2->_recentNotifications = v3;

    v5 = objc_opt_new();
    potentialInterruptingAppLaunchEvents = v2->_potentialInterruptingAppLaunchEvents;
    v2->_potentialInterruptingAppLaunchEvents = v5;

    v7 = objc_opt_new();
    interruptingAppSessions = v2->_interruptingAppSessions;
    v2->_interruptingAppSessions = v7;
  }

  return v2;
}

- (void)checkNotificationEvent:(id)event
{
  eventCopy = event;
  bundleID = [eventCopy bundleID];
  if (bundleID)
  {
    v5 = bundleID;
    usageType = [eventCopy usageType];

    if (usageType == 17)
    {
      recentNotifications = self->_recentNotifications;
      bundleID2 = [eventCopy bundleID];
      [(NSMutableDictionary *)recentNotifications setObject:eventCopy forKeyedSubscript:bundleID2];
    }
  }
}

- (void)checkAppLaunchStartEvent:(id)event
{
  eventCopy = event;
  v7 = eventCopy;
  if (!self->_previousStartEvent)
  {
    objc_storeStrong(&self->_curenStartEvent, event);
    objc_storeStrong(&self->_previousStartEvent, event);
    goto LABEL_10;
  }

  if ([(ATXInterruptingNotificationsHelper *)self doesCurrentAppLaunchInterruptPreviousAppLaunch:eventCopy])
  {
    [(NSMutableArray *)self->_potentialInterruptingAppLaunchEvents addObject:v7];
    p_curenStartEvent = &self->_curenStartEvent;
LABEL_8:
    objc_storeStrong(p_curenStartEvent, event);
    goto LABEL_9;
  }

  if (![(ATXInterruptingNotificationsHelper *)self checkIfStartEventWasTheInterruptedEvent:v7])
  {
    p_curenStartEvent = &self->_previousStartEvent;
    goto LABEL_8;
  }

  [(ATXInterruptingNotificationsHelper *)self recordInterruptingAppSession];
LABEL_9:
  [(NSMutableDictionary *)self->_recentNotifications removeAllObjects];
LABEL_10:
}

- (void)checkAppLaunchEndEvent:(id)event
{
  eventCopy = event;
  v6 = eventCopy;
  if (!self->_previousEndEvent)
  {
    v21 = eventCopy;
    curenEndEvent = self->_curenEndEvent;
    self->_curenEndEvent = v21;
LABEL_10:

    goto LABEL_11;
  }

  curenStartEvent = self->_curenStartEvent;
  if (curenStartEvent)
  {
    bundleID = [(BMAppInFocus *)curenStartEvent bundleID];
    bundleID2 = [v6 bundleID];
    v10 = [bundleID isEqualToString:bundleID2];

    if (v10)
    {
      objc_storeStrong(&self->_curenEndEvent, event);
      curenEndEvent = [(NSMutableArray *)self->_potentialInterruptingAppLaunchEvents lastObject];
      bundleID3 = [curenEndEvent bundleID];
      bundleID4 = [v6 bundleID];
      v14 = [bundleID3 isEqualToString:bundleID4];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277CCA970]);
        absoluteTimestamp = [(BMAppInFocus *)self->_curenStartEvent absoluteTimestamp];
        absoluteTimestamp2 = [(BMAppInFocus *)self->_curenEndEvent absoluteTimestamp];
        v18 = [v15 initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2];

        [v18 duration];
        if (v19 <= 60.0)
        {
          bundleID5 = [curenEndEvent bundleID];
          v23 = [ATXSessionTaggingAppEntity genreIdForBundleId:bundleID5];
          unsignedIntegerValue = [v23 unsignedIntegerValue];

          bundleID6 = [(BMAppInFocus *)self->_previousEndEvent bundleID];
          v25 = [ATXSessionTaggingAppEntity genreIdForBundleId:bundleID6];
          unsignedIntegerValue2 = [v25 unsignedIntegerValue];

          v27 = objc_alloc(MEMORY[0x277CEB5E8]);
          bundleID7 = [curenEndEvent bundleID];
          bundleID8 = [(BMAppInFocus *)self->_previousEndEvent bundleID];
          absoluteTimestamp3 = [(BMAppInFocus *)self->_curenStartEvent absoluteTimestamp];
          absoluteTimestamp4 = [(BMAppInFocus *)self->_curenEndEvent absoluteTimestamp];
          v32 = [v27 initWithInterruptingBundleID:bundleID7 interruptedBundleID:bundleID8 eventStartTime:absoluteTimestamp3 eventEndTime:absoluteTimestamp4 interruptingCategory:unsignedIntegerValue interruptedCategory:unsignedIntegerValue2];
          interruptingAppSessionEvent = self->_interruptingAppSessionEvent;
          self->_interruptingAppSessionEvent = v32;

          v34 = self->_previousEndEvent;
          potentialInterruptedEndEvent = self->_potentialInterruptedEndEvent;
          self->_potentialInterruptedEndEvent = v34;
        }

        else
        {
          potentialInterruptedEndEvent = self->_interruptingAppSessionEvent;
          self->_interruptingAppSessionEvent = 0;
        }
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  previousEndEvent = self->_previousEndEvent;
  self->_previousEndEvent = v6;
}

- (BOOL)doesCurrentAppLaunchInterruptPreviousAppLaunch:(id)launch
{
  launchCopy = launch;
  bundleID = [(BMAppInFocus *)self->_previousStartEvent bundleID];
  bundleID2 = [launchCopy bundleID];
  v7 = [bundleID isEqualToString:bundleID2];

  recentNotifications = self->_recentNotifications;
  bundleID3 = [launchCopy bundleID];
  v10 = [(NSMutableDictionary *)recentNotifications objectForKeyedSubscript:bundleID3];

  v11 = 0;
  if ((v7 & 1) == 0 && v10)
  {
    absoluteTimestamp = [launchCopy absoluteTimestamp];
    absoluteTimestamp2 = [v10 absoluteTimestamp];
    [absoluteTimestamp timeIntervalSinceDate:absoluteTimestamp2];
    v11 = v14 <= 30.0;
  }

  return v11;
}

- (BOOL)checkIfStartEventWasTheInterruptedEvent:(id)event
{
  eventCopy = event;
  bundleID = [(BMAppInFocus *)self->_potentialInterruptedEndEvent bundleID];
  bundleID2 = [eventCopy bundleID];
  v7 = [bundleID isEqualToString:bundleID2];

  if (v7)
  {
    absoluteTimestamp = [eventCopy absoluteTimestamp];
    absoluteTimestamp2 = [(BMAppInFocus *)self->_curenEndEvent absoluteTimestamp];
    [absoluteTimestamp timeIntervalSinceDate:absoluteTimestamp2];
    v11 = v10 <= 10.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)recordInterruptingAppSession
{
  if (self->_interruptingAppSessionEvent)
  {
    [(NSMutableArray *)self->_interruptingAppSessions addObject:?];
  }
}

@end