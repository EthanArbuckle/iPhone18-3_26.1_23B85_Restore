@interface CalendarMessageSuggestionCell
+ (id)actionsForNotification:(id)a3;
- (BOOL)notificationIsCancelled;
- (BOOL)showAsCancelledOrDeclined;
- (CalendarMessageSuggestionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_appNameString;
- (id)_dateString;
- (id)_fromString;
- (id)_locationString;
- (id)actions;
- (id)bodyStringDict;
- (id)provideAuthorView;
- (id)titleStrings;
- (void)_updateSuggestionPropertiesWithNotification:(id)a3;
- (void)setNotification:(id)a3;
- (void)updateAuthor;
@end

@implementation CalendarMessageSuggestionCell

- (CalendarMessageSuggestionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CalendarMessageSuggestionCell;
  v4 = [(CalendarMessageCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v9 = [(CalendarMessageCell *)self authorView];
  applicationRecord = self->_applicationRecord;
  if (applicationRecord && (-[LSApplicationRecord applicationState](applicationRecord, "applicationState"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isInstalled], v4, v5))
  {
    v6 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  }

  else
  {
    v6 = @"com.apple.siri";
  }

  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v8 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:0 scale:?];

  [v9 setImage:v8];
}

- (id)titleStrings
{
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 title];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)bodyStringDict
{
  v3 = objc_opt_new();
  v4 = [(CalendarMessageSuggestionCell *)self _fromString];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:CUIKNotificationDescriptionKeyPerson];
  }

  v5 = [(CalendarMessageSuggestionCell *)self _dateString];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:CUIKNotificationDescriptionKeyDate];
  }

  v6 = [(CalendarMessageSuggestionCell *)self _locationString];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:CUIKNotificationDescriptionKeyAction];
  }

  v7 = [(CalendarMessageSuggestionCell *)self _appNameString];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:CUIKNotificationDescriptionKeyApp];
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
      v4 = [(CalendarMessageSuggestionCell *)self notificationIsCancelled];
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = v5;
      if (v4)
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
      v10 = [(CalendarMessageCell *)self notification];
      *buf = 136315394;
      v18 = "[CalendarMessageSuggestionCell _fromString]";
      v19 = 2112;
      v20 = v10;
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
    v4 = [(CalendarMessageCell *)self notification];
    if ([v4 timeChanged])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v4 dateChanged] ^ 1;
    }

    v6 = +[CUIKDateDescriptionGenerator sharedGenerator];
    v7 = [v4 startDateForNextOccurrence];
    v8 = [v6 dateStringForDate:v7 allDay:objc_msgSend(v4 standalone:"allDay") shortFormat:v5, 0];

    if ([v4 timeChanged])
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = v9;
      v11 = @"Time changed to %@";
    }

    else
    {
      if (![v4 dateChanged])
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
  v2 = [(CalendarMessageCell *)self notification];
  if ([v2 locationChanged])
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
    v4 = [(LSApplicationRecord *)self->_applicationRecord localizedName];
    v5 = [CUIKSuggestionDescriptionGenerator originDescriptionStringWithAppName:v4];
    v6 = self->_appNameString;
    self->_appNameString = v5;

    appNameString = self->_appNameString;
  }

  return appNameString;
}

- (id)actions
{
  v3 = objc_opt_class();
  v4 = [(CalendarMessageCell *)self notification];
  v5 = [v3 actionsForNotification:v4];

  return v5;
}

+ (id)actionsForNotification:(id)a3
{
  v4 = a3;
  if ([a1 _notificationIsCancelled:v4])
  {
    v5 = &off_10021A008;
  }

  else if ([v4 type] == 12)
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
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 type] == 13;

  return v3;
}

- (void)setNotification:(id)a3
{
  fromString = self->_fromString;
  self->_fromString = 0;
  v5 = a3;

  dateString = self->_dateString;
  self->_dateString = 0;

  appNameString = self->_appNameString;
  self->_appNameString = 0;

  [(CalendarMessageSuggestionCell *)self _updateSuggestionPropertiesWithNotification:v5];
  v8.receiver = self;
  v8.super_class = CalendarMessageSuggestionCell;
  [(CalendarMessageCell *)&v8 setNotification:v5];
}

- (void)_updateSuggestionPropertiesWithNotification:(id)a3
{
  v23 = a3;
  if (v23)
  {
    v4 = [(CalendarMessageCell *)self delegate];
    v5 = [v4 eventStoreForCell:self];

    v6 = [v23 resourceChangeFromEventStore:v5];
    v7 = [v6 calendarItem];
    v8 = [v7 localCustomObjectForKey:kSuggestionsEkEventOriginBundleIdKey];
    v9 = [v7 localCustomObjectForKey:kSuggestionsEkEventOriginDisplayNameKey];
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

      v11 = v10;
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
      suggestionOriginSenderName = [v23 suggestedEvent];
      v16 = [suggestionOriginSenderName origin];
      v11 = [v16 bundleId];

      v17 = [suggestionOriginSenderName origin];
      v18 = [v17 fromPerson];
      v19 = [v18 displayName];
      v20 = self->_suggestionOriginSenderName;
      self->_suggestionOriginSenderName = v19;
    }

    if (v11)
    {
      v21 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v11 allowPlaceholder:0 error:0];
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