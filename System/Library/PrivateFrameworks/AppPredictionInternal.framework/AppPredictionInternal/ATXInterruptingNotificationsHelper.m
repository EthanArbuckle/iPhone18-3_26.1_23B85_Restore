@interface ATXInterruptingNotificationsHelper
- (ATXInterruptingNotificationsHelper)init;
- (BOOL)checkIfStartEventWasTheInterruptedEvent:(id)a3;
- (BOOL)doesCurrentAppLaunchInterruptPreviousAppLaunch:(id)a3;
- (void)checkAppLaunchEndEvent:(id)a3;
- (void)checkAppLaunchStartEvent:(id)a3;
- (void)checkNotificationEvent:(id)a3;
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

- (void)checkNotificationEvent:(id)a3
{
  v9 = a3;
  v4 = [v9 bundleID];
  if (v4)
  {
    v5 = v4;
    v6 = [v9 usageType];

    if (v6 == 17)
    {
      recentNotifications = self->_recentNotifications;
      v8 = [v9 bundleID];
      [(NSMutableDictionary *)recentNotifications setObject:v9 forKeyedSubscript:v8];
    }
  }
}

- (void)checkAppLaunchStartEvent:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!self->_previousStartEvent)
  {
    objc_storeStrong(&self->_curenStartEvent, a3);
    objc_storeStrong(&self->_previousStartEvent, a3);
    goto LABEL_10;
  }

  if ([(ATXInterruptingNotificationsHelper *)self doesCurrentAppLaunchInterruptPreviousAppLaunch:v5])
  {
    [(NSMutableArray *)self->_potentialInterruptingAppLaunchEvents addObject:v7];
    p_curenStartEvent = &self->_curenStartEvent;
LABEL_8:
    objc_storeStrong(p_curenStartEvent, a3);
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

- (void)checkAppLaunchEndEvent:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_previousEndEvent)
  {
    v21 = v5;
    curenEndEvent = self->_curenEndEvent;
    self->_curenEndEvent = v21;
LABEL_10:

    goto LABEL_11;
  }

  curenStartEvent = self->_curenStartEvent;
  if (curenStartEvent)
  {
    v8 = [(BMAppInFocus *)curenStartEvent bundleID];
    v9 = [v6 bundleID];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      objc_storeStrong(&self->_curenEndEvent, a3);
      curenEndEvent = [(NSMutableArray *)self->_potentialInterruptingAppLaunchEvents lastObject];
      v12 = [curenEndEvent bundleID];
      v13 = [v6 bundleID];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277CCA970]);
        v16 = [(BMAppInFocus *)self->_curenStartEvent absoluteTimestamp];
        v17 = [(BMAppInFocus *)self->_curenEndEvent absoluteTimestamp];
        v18 = [v15 initWithStartDate:v16 endDate:v17];

        [v18 duration];
        if (v19 <= 60.0)
        {
          v22 = [curenEndEvent bundleID];
          v23 = [ATXSessionTaggingAppEntity genreIdForBundleId:v22];
          v36 = [v23 unsignedIntegerValue];

          v24 = [(BMAppInFocus *)self->_previousEndEvent bundleID];
          v25 = [ATXSessionTaggingAppEntity genreIdForBundleId:v24];
          v26 = [v25 unsignedIntegerValue];

          v27 = objc_alloc(MEMORY[0x277CEB5E8]);
          v28 = [curenEndEvent bundleID];
          v29 = [(BMAppInFocus *)self->_previousEndEvent bundleID];
          v30 = [(BMAppInFocus *)self->_curenStartEvent absoluteTimestamp];
          v31 = [(BMAppInFocus *)self->_curenEndEvent absoluteTimestamp];
          v32 = [v27 initWithInterruptingBundleID:v28 interruptedBundleID:v29 eventStartTime:v30 eventEndTime:v31 interruptingCategory:v36 interruptedCategory:v26];
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

- (BOOL)doesCurrentAppLaunchInterruptPreviousAppLaunch:(id)a3
{
  v4 = a3;
  v5 = [(BMAppInFocus *)self->_previousStartEvent bundleID];
  v6 = [v4 bundleID];
  v7 = [v5 isEqualToString:v6];

  recentNotifications = self->_recentNotifications;
  v9 = [v4 bundleID];
  v10 = [(NSMutableDictionary *)recentNotifications objectForKeyedSubscript:v9];

  v11 = 0;
  if ((v7 & 1) == 0 && v10)
  {
    v12 = [v4 absoluteTimestamp];
    v13 = [v10 absoluteTimestamp];
    [v12 timeIntervalSinceDate:v13];
    v11 = v14 <= 30.0;
  }

  return v11;
}

- (BOOL)checkIfStartEventWasTheInterruptedEvent:(id)a3
{
  v4 = a3;
  v5 = [(BMAppInFocus *)self->_potentialInterruptedEndEvent bundleID];
  v6 = [v4 bundleID];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 absoluteTimestamp];
    v9 = [(BMAppInFocus *)self->_curenEndEvent absoluteTimestamp];
    [v8 timeIntervalSinceDate:v9];
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