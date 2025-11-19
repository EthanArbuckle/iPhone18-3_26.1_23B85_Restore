@interface _HDHealthRecordsAPIReminderRegistryEventListener
- (void)didFinishProcessingPendingReminderID:(id)a3;
- (void)displayedAlertForPendingReminderID:(id)a3;
- (void)droppedReminder:(id)a3;
- (void)handledApplicationsUninstalled;
- (void)launchedClinicalSettingsForSource:(id)a3;
- (void)receivedHomescreenUnlockedAtHomescreenNotification;
- (void)startedListeningForHomescreenUnlockedNotifications;
- (void)stoppedListeningForHomescreenUnlockedNotifications;
@end

@implementation _HDHealthRecordsAPIReminderRegistryEventListener

- (void)handledApplicationsUninstalled
{
  v3 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self handledApplicationsUninstalledHandler];

  if (v3)
  {
    v4 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self handledApplicationsUninstalledHandler];
    v4[2]();
  }
}

- (void)displayedAlertForPendingReminderID:(id)a3
{
  v6 = a3;
  v4 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self displayedAlertHandler];

  if (v4)
  {
    v5 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self displayedAlertHandler];
    (v5)[2](v5, v6);
  }
}

- (void)didFinishProcessingPendingReminderID:(id)a3
{
  v6 = a3;
  v4 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self finishedProcessingReminderHandler];

  if (v4)
  {
    v5 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self finishedProcessingReminderHandler];
    (v5)[2](v5, v6);
  }
}

- (void)droppedReminder:(id)a3
{
  v6 = a3;
  v4 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self droppedReminderHandler];

  if (v4)
  {
    v5 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self droppedReminderHandler];
    (v5)[2](v5, v6);
  }
}

- (void)launchedClinicalSettingsForSource:(id)a3
{
  v6 = a3;
  v4 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self launchedClinicalSourceSettingsHandler];

  if (v4)
  {
    v5 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self launchedClinicalSourceSettingsHandler];
    (v5)[2](v5, v6);
  }
}

- (void)startedListeningForHomescreenUnlockedNotifications
{
  v3 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self startedListeningForHomescreenUnlockedNotificationsHandler];

  if (v3)
  {
    v4 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self startedListeningForHomescreenUnlockedNotificationsHandler];
    v4[2]();
  }
}

- (void)receivedHomescreenUnlockedAtHomescreenNotification
{
  v3 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self receivedHomescreenUnlockedAtHomescreenNotificationHandler];

  if (v3)
  {
    v4 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self receivedHomescreenUnlockedAtHomescreenNotificationHandler];
    v4[2]();
  }
}

- (void)stoppedListeningForHomescreenUnlockedNotifications
{
  v3 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self stoppedListeningForHomescreenUnlockedNotificationsHandler];

  if (v3)
  {
    v4 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self stoppedListeningForHomescreenUnlockedNotificationsHandler];
    v4[2]();
  }
}

@end