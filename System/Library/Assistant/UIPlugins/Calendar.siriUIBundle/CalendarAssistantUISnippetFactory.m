@interface CalendarAssistantUISnippetFactory
- (id)disambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4;
- (id)viewControllerForSnippet:(id)a3;
@end

@implementation CalendarAssistantUISnippetFactory

- (id)viewControllerForSnippet:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[CalendarAssistantUIController alloc] initWithAceObject:v3];
  }

  else
  {
    NSLog(@"Expected SACalendarEventSnippet, got %@", v3);
    v4 = 0;
  }

  return v4;
}

- (id)disambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = v5;
    if (v5 && ([v5 scheme], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "compare:options:", _EKEventURLScheme, 1), v7, !v8))
    {
      v10 = +[CalendarAssistantUIController openEventStore];
      v11 = [v10 _eventWithURI:v6 checkValid:1];
      if (v11)
      {
        v9 = +[SiriUIDisambiguationItem disambiguationItem];
        v12 = [v11 title];
        v13 = [v12 length];

        if (v13)
        {
          v14 = [v11 title];
          [v9 setTitle:v14];
        }

        v15 = [v11 location];
        v16 = [v15 length];

        if (v16)
        {
          v17 = [v11 location];
          [v9 setSubtitle:v17];
        }

        v18 = [v11 startDate];
        v19 = CUIKStringForSystemTime();

        if ([v19 length])
        {
          [v9 setExtraDisambiguationText:v19];
        }

        v20 = +[CUIKDateDescriptionGenerator sharedGenerator];
        v21 = [v11 startDate];
        v22 = [v20 dateStringForDate:v21 allDay:1 shortFormat:1];

        if ([v22 length])
        {
          [v9 setExtraDisambiguationSubText:v22];
        }
      }

      else
      {
        NSLog(@"CalendarAssistantUIController: event not found: %@", v6);
        v9 = 0;
      }

      +[CalendarAssistantUIController closeEventStore];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    NSLog(@"Expected SACalendarEvent, got: %@", v4);
    v9 = 0;
  }

  return v9;
}

@end