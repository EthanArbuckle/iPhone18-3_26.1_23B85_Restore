@interface _HDHealthRecordsAPIReminderRegistryEventListener
- (void)didFinishProcessingPendingReminderID:(id)d;
- (void)displayedAlertForPendingReminderID:(id)d;
- (void)droppedReminder:(id)reminder;
- (void)handledApplicationsUninstalled;
- (void)launchedClinicalSettingsForSource:(id)source;
- (void)receivedHomescreenUnlockedAtHomescreenNotification;
- (void)startedListeningForHomescreenUnlockedNotifications;
- (void)stoppedListeningForHomescreenUnlockedNotifications;
@end

@implementation _HDHealthRecordsAPIReminderRegistryEventListener

- (void)handledApplicationsUninstalled
{
  handledApplicationsUninstalledHandler = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self handledApplicationsUninstalledHandler];

  if (handledApplicationsUninstalledHandler)
  {
    handledApplicationsUninstalledHandler2 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self handledApplicationsUninstalledHandler];
    handledApplicationsUninstalledHandler2[2]();
  }
}

- (void)displayedAlertForPendingReminderID:(id)d
{
  dCopy = d;
  displayedAlertHandler = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self displayedAlertHandler];

  if (displayedAlertHandler)
  {
    displayedAlertHandler2 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self displayedAlertHandler];
    (displayedAlertHandler2)[2](displayedAlertHandler2, dCopy);
  }
}

- (void)didFinishProcessingPendingReminderID:(id)d
{
  dCopy = d;
  finishedProcessingReminderHandler = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self finishedProcessingReminderHandler];

  if (finishedProcessingReminderHandler)
  {
    finishedProcessingReminderHandler2 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self finishedProcessingReminderHandler];
    (finishedProcessingReminderHandler2)[2](finishedProcessingReminderHandler2, dCopy);
  }
}

- (void)droppedReminder:(id)reminder
{
  reminderCopy = reminder;
  droppedReminderHandler = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self droppedReminderHandler];

  if (droppedReminderHandler)
  {
    droppedReminderHandler2 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self droppedReminderHandler];
    (droppedReminderHandler2)[2](droppedReminderHandler2, reminderCopy);
  }
}

- (void)launchedClinicalSettingsForSource:(id)source
{
  sourceCopy = source;
  launchedClinicalSourceSettingsHandler = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self launchedClinicalSourceSettingsHandler];

  if (launchedClinicalSourceSettingsHandler)
  {
    launchedClinicalSourceSettingsHandler2 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self launchedClinicalSourceSettingsHandler];
    (launchedClinicalSourceSettingsHandler2)[2](launchedClinicalSourceSettingsHandler2, sourceCopy);
  }
}

- (void)startedListeningForHomescreenUnlockedNotifications
{
  startedListeningForHomescreenUnlockedNotificationsHandler = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self startedListeningForHomescreenUnlockedNotificationsHandler];

  if (startedListeningForHomescreenUnlockedNotificationsHandler)
  {
    startedListeningForHomescreenUnlockedNotificationsHandler2 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self startedListeningForHomescreenUnlockedNotificationsHandler];
    startedListeningForHomescreenUnlockedNotificationsHandler2[2]();
  }
}

- (void)receivedHomescreenUnlockedAtHomescreenNotification
{
  receivedHomescreenUnlockedAtHomescreenNotificationHandler = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self receivedHomescreenUnlockedAtHomescreenNotificationHandler];

  if (receivedHomescreenUnlockedAtHomescreenNotificationHandler)
  {
    receivedHomescreenUnlockedAtHomescreenNotificationHandler2 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self receivedHomescreenUnlockedAtHomescreenNotificationHandler];
    receivedHomescreenUnlockedAtHomescreenNotificationHandler2[2]();
  }
}

- (void)stoppedListeningForHomescreenUnlockedNotifications
{
  stoppedListeningForHomescreenUnlockedNotificationsHandler = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self stoppedListeningForHomescreenUnlockedNotificationsHandler];

  if (stoppedListeningForHomescreenUnlockedNotificationsHandler)
  {
    stoppedListeningForHomescreenUnlockedNotificationsHandler2 = [(_HDHealthRecordsAPIReminderRegistryEventListener *)self stoppedListeningForHomescreenUnlockedNotificationsHandler];
    stoppedListeningForHomescreenUnlockedNotificationsHandler2[2]();
  }
}

@end