@interface EKCalendarDeleteButtonEditItem
- (BOOL)_shouldShowDeleteButton;
- (BOOL)configureWithCalendar:(id)calendar store:(id)store;
@end

@implementation EKCalendarDeleteButtonEditItem

- (BOOL)configureWithCalendar:(id)calendar store:(id)store
{
  v6.receiver = self;
  v6.super_class = EKCalendarDeleteButtonEditItem;
  [(EKCalendarEditItem *)&v6 configureWithCalendar:calendar store:store];
  return [(EKCalendarDeleteButtonEditItem *)self _shouldShowDeleteButton];
}

- (BOOL)_shouldShowDeleteButton
{
  v31 = *MEMORY[0x1E69E9840];
  calendar = [(EKCalendarEditItem *)self calendar];
  isNew = [calendar isNew];

  if (isNew)
  {
    return 0;
  }

  calendar2 = [(EKCalendarEditItem *)self calendar];
  isImmutable = [calendar2 isImmutable];

  if (isImmutable)
  {
    return 0;
  }

  calendar3 = [(EKCalendarEditItem *)self calendar];
  isSubscribedHolidayCalendar = [calendar3 isSubscribedHolidayCalendar];

  if (isSubscribedHolidayCalendar)
  {
    return 0;
  }

  calendar4 = [(EKCalendarEditItem *)self calendar];
  isDefaultSchedulingCalendar = [calendar4 isDefaultSchedulingCalendar];

  if (isDefaultSchedulingCalendar)
  {
    return 0;
  }

  calendar5 = [(EKCalendarEditItem *)self calendar];
  type = [calendar5 type];

  if (type)
  {
    goto LABEL_21;
  }

  [(EKEventStore *)self->super.super._store calendarsForEntityType:0];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v29 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        if ([v20 allowEvents] && (objc_msgSend(v20, "type") == 1 || objc_msgSend(v20, "type") == 2))
        {

          goto LABEL_21;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  calendar6 = [(EKCalendarEditItem *)self calendar];
  source = [calendar6 source];
  v23 = [source calendarsForEntityType:0];
  v24 = [v23 count];

  if (v24 < 2)
  {
    return 0;
  }

LABEL_21:
  calendar7 = [(EKCalendarEditItem *)self calendar];
  isDeletable = [calendar7 isDeletable];

  return isDeletable;
}

@end