@interface CSDelegationUtilities
+ (BOOL)sourceInListHasMoreThanOneWritableCalendar:(id)calendar;
@end

@implementation CSDelegationUtilities

+ (BOOL)sourceInListHasMoreThanOneWritableCalendar:(id)calendar
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  calendarCopy = calendar;
  v4 = [calendarCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(calendarCopy);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) readWriteCalendarsForEntityType:{0, v10}];
        v8 = [v7 count];

        if (v8 > 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [calendarCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end