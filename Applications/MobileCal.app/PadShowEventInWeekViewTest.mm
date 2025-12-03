@interface PadShowEventInWeekViewTest
- (id)_getEvent;
- (void)_setupViewToDate:(id)date;
@end

@implementation PadShowEventInWeekViewTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:dateCopy];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToWeekView = [rootNavigationController resetToWeekView];

  [(PadShowEventTest *)self setController:resetToWeekView];
  [resetToWeekView setDisplayedDate:dateCopy animated:0];
}

- (id)_getEvent
{
  controller = [(PadShowEventTest *)self controller];
  visibleWeeks = [controller visibleWeeks];
  firstObject = [visibleWeeks firstObject];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  weekView = [firstObject weekView];
  content = [weekView content];
  occurrenceViews = [content occurrenceViews];

  occurrence3 = [occurrenceViews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (occurrence3)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != occurrence3; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(occurrenceViews);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        occurrence = [v11 occurrence];
        if ([occurrence isAllDay])
        {
        }

        else
        {
          occurrence2 = [v11 occurrence];

          if (occurrence2)
          {
            occurrence3 = [v11 occurrence];
            goto LABEL_13;
          }
        }
      }

      occurrence3 = [occurrenceViews countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (occurrence3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return occurrence3;
}

@end