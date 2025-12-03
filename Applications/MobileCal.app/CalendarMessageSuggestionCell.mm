@interface CalendarMessageSuggestionCell
+ (id)actionsForNotification:(id)notification;
- (BOOL)notificationIsCancelled;
- (BOOL)showAsCancelledOrDeclined;
- (CalendarMessageSuggestionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_appNameString;
- (id)_dateString;
- (id)_fromString;
- (id)_locationString;
- (id)actions;
- (id)bodyStringDict;
- (id)provideAuthorView;
- (id)titleStrings;
- (void)_updateSuggestionPropertiesWithNotification:(id)notification;
- (void)setNotification:(id)notification;
- (void)updateAuthor;
@end

@implementation CalendarMessageSuggestionCell

- (CalendarMessageSuggestionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CalendarMessageSuggestionCell;
  v4 = [(CalendarMessageCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CalendarMessageCell *)v4 setHasDisclosure:1];
  }

  return v5;
}

- (id)provideAuthorView
{
  v2 = objc_alloc_init(UIImageView);

  return v2;
}

- (void)updateAuthor
{
  authorView = [(CalendarMessageCell *)self authorView];
  applicationRecord = self->_applicationRecord;
  if (applicationRecord && (-[LSApplicationRecord applicationState](applicationRecord, "applicationState"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isInstalled], v4, v5))
  {
    bundleIdentifier = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  }

  else
  {
    bundleIdentifier = @"com.apple.siri";
  }

  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v8 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier format:0 scale:?];

  [authorView setImage:v8];
}

- (id)titleStrings
{
  notification = [(CalendarMessageCell *)self notification];
  title = [notification title];
  v6 = title;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)bodyStringDict
{
  v3 = objc_opt_new();
  _fromString = [(CalendarMessageSuggestionCell *)self _fromString];
  if (_fromString)
  {
    [v3 setObject:_fromString forKeyedSubscript:CUIKNotificationDescriptionKeyPerson];
  }

  _dateString = [(CalendarMessageSuggestionCell *)self _dateString];
  if (_dateString)
  {
    [v3 setObject:_dateString forKeyedSubscript:CUIKNotificationDescriptionKeyDate];
  }

  _locationString = [(CalendarMessageSuggestionCell *)self _locationString];
  if (_locationString)
  {
    [v3 setObject:_locationString forKeyedSubscript:CUIKNotificationDescriptionKeyAction];
  }

  _appNameString = [(CalendarMessageSuggestionCell *)self _appNameString];
  if (_appNameString)
  {
    [v3 setObject:_appNameString forKeyedSubscript:CUIKNotificationDescriptionKeyApp];
  }

  return v3;
}

- (id)_fromString
{
  v3 = self->_suggestionOriginSenderName;
  if (v3)
  {
    if (!self->_fromString)
    {
      notificationIsCancelled = [(CalendarMessageSuggestionCell *)self notificationIsCancelled];
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = v5;
      if (notificationIsCancelled)
      {
        v7 = @"Canceled by %@";
      }

      else
      {
        v7 = @"From: %@";
      }

      v11 = [v5 localizedStringForKey:v7 value:&stru_1002133B8 table:0];
      v12 = [NSString localizedStringWithFormat:v11, v3];
      fromString = self->_fromString;
      self->_fromString = v12;
    }
  }

  else
  {
    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      notification = [(CalendarMessageCell *)self notification];
      *buf = 136315394;
      v18 = "[CalendarMessageSuggestionCell _fromString]";
      v19 = 2112;
      v20 = notification;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Suggested Event Notification had no from name; this is probably unexpected [%@]", buf, 0x16u);
    }
  }

  v14 = self->_fromString;
  v15 = v14;

  return v14;
}

- (id)_dateString
{
  dateString = self->_dateString;
  if (!dateString)
  {
    notification = [(CalendarMessageCell *)self notification];
    if ([notification timeChanged])
    {
      v5 = 0;
    }

    else
    {
      v5 = [notification dateChanged] ^ 1;
    }

    v6 = +[CUIKDateDescriptionGenerator sharedGenerator];
    startDateForNextOccurrence = [notification startDateForNextOccurrence];
    v8 = [v6 dateStringForDate:startDateForNextOccurrence allDay:objc_msgSend(notification standalone:"allDay") shortFormat:v5, 0];

    if ([notification timeChanged])
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = v9;
      v11 = @"Time changed to %@";
    }

    else
    {
      if (![notification dateChanged])
      {
        v15 = [NSString stringWithFormat:@"%@", v8];
        v10 = self->_dateString;
        self->_dateString = v15;
        goto LABEL_11;
      }

      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = v9;
      v11 = @"Date changed to %@";
    }

    v12 = [(NSString *)v9 localizedStringForKey:v11 value:&stru_1002133B8 table:0];
    v13 = [NSString localizedStringWithFormat:v12, v8];
    v14 = self->_dateString;
    self->_dateString = v13;

LABEL_11:
    dateString = self->_dateString;
  }

  return dateString;
}

- (id)_locationString
{
  notification = [(CalendarMessageCell *)self notification];
  if ([notification locationChanged])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"Location changed" value:&stru_1002133B8 table:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_appNameString
{
  appNameString = self->_appNameString;
  if (!appNameString)
  {
    localizedName = [(LSApplicationRecord *)self->_applicationRecord localizedName];
    v5 = [CUIKSuggestionDescriptionGenerator originDescriptionStringWithAppName:localizedName];
    v6 = self->_appNameString;
    self->_appNameString = v5;

    appNameString = self->_appNameString;
  }

  return appNameString;
}

- (id)actions
{
  v3 = objc_opt_class();
  notification = [(CalendarMessageCell *)self notification];
  v5 = [v3 actionsForNotification:notification];

  return v5;
}

+ (id)actionsForNotification:(id)notification
{
  notificationCopy = notification;
  if ([self _notificationIsCancelled:notificationCopy])
  {
    v5 = &off_10021A008;
  }

  else if ([notificationCopy type] == 12)
  {
    v5 = &off_10021A020;
  }

  else
  {
    v5 = &off_10021A038;
  }

  return v5;
}

- (BOOL)showAsCancelledOrDeclined
{
  v4.receiver = self;
  v4.super_class = CalendarMessageSuggestionCell;
  if ([(CalendarMessageCell *)&v4 showAsCancelledOrDeclined])
  {
    return 1;
  }

  else
  {
    return [(CalendarMessageSuggestionCell *)self notificationIsCancelled];
  }
}

- (BOOL)notificationIsCancelled
{
  notification = [(CalendarMessageCell *)self notification];
  v3 = [notification type] == 13;

  return v3;
}

- (void)setNotification:(id)notification
{
  fromString = self->_fromString;
  self->_fromString = 0;
  notificationCopy = notification;

  dateString = self->_dateString;
  self->_dateString = 0;

  appNameString = self->_appNameString;
  self->_appNameString = 0;

  [(CalendarMessageSuggestionCell *)self _updateSuggestionPropertiesWithNotification:notificationCopy];
  v8.receiver = self;
  v8.super_class = CalendarMessageSuggestionCell;
  [(CalendarMessageCell *)&v8 setNotification:notificationCopy];
}

- (void)_updateSuggestionPropertiesWithNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    delegate = [(CalendarMessageCell *)self delegate];
    v5 = [delegate eventStoreForCell:self];

    v6 = [notificationCopy resourceChangeFromEventStore:v5];
    calendarItem = [v6 calendarItem];
    v8 = [calendarItem localCustomObjectForKey:kSuggestionsEkEventOriginBundleIdKey];
    v9 = [calendarItem localCustomObjectForKey:kSuggestionsEkEventOriginDisplayNameKey];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      bundleId = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      suggestionOriginSenderName = self->_suggestionOriginSenderName;
      self->_suggestionOriginSenderName = v13;
    }

    else
    {
      suggestionOriginSenderName = [notificationCopy suggestedEvent];
      origin = [suggestionOriginSenderName origin];
      bundleId = [origin bundleId];

      origin2 = [suggestionOriginSenderName origin];
      fromPerson = [origin2 fromPerson];
      displayName = [fromPerson displayName];
      v20 = self->_suggestionOriginSenderName;
      self->_suggestionOriginSenderName = displayName;
    }

    if (bundleId)
    {
      v21 = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleId allowPlaceholder:0 error:0];
      applicationRecord = self->_applicationRecord;
      self->_applicationRecord = v21;
    }
  }

  else
  {
    v15 = self->_suggestionOriginSenderName;
    self->_suggestionOriginSenderName = 0;

    v5 = self->_applicationRecord;
    self->_applicationRecord = 0;
  }
}

@end