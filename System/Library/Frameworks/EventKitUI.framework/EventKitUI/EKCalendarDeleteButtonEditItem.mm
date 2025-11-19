@interface EKCalendarDeleteButtonEditItem
- (BOOL)_shouldShowDeleteButton;
- (BOOL)configureWithCalendar:(id)a3 store:(id)a4;
@end

@implementation EKCalendarDeleteButtonEditItem

- (BOOL)configureWithCalendar:(id)a3 store:(id)a4
{
  v6.receiver = self;
  v6.super_class = EKCalendarDeleteButtonEditItem;
  [(EKCalendarEditItem *)&v6 configureWithCalendar:a3 store:a4];
  return [(EKCalendarDeleteButtonEditItem *)self _shouldShowDeleteButton];
}

- (BOOL)_shouldShowDeleteButton
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(EKCalendarEditItem *)self calendar];
  v4 = [v3 isNew];

  if (v4)
  {
    return 0;
  }

  v5 = [(EKCalendarEditItem *)self calendar];
  v6 = [v5 isImmutable];

  if (v6)
  {
    return 0;
  }

  v7 = [(EKCalendarEditItem *)self calendar];
  v8 = [v7 isSubscribedHolidayCalendar];

  if (v8)
  {
    return 0;
  }

  v9 = [(EKCalendarEditItem *)self calendar];
  v10 = [v9 isDefaultSchedulingCalendar];

  if (v10)
  {
    return 0;
  }

  v13 = [(EKCalendarEditItem *)self calendar];
  v14 = [v13 type];

  if (v14)
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

  v21 = [(EKCalendarEditItem *)self calendar];
  v22 = [v21 source];
  v23 = [v22 calendarsForEntityType:0];
  v24 = [v23 count];

  if (v24 < 2)
  {
    return 0;
  }

LABEL_21:
  v25 = [(EKCalendarEditItem *)self calendar];
  v11 = [v25 isDeletable];

  return v11;
}

@end