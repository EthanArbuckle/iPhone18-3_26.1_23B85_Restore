@interface CalendarAssistantUISnippetFactory
- (id)disambiguationItemForListItem:(id)item disambiguationKey:(id)key;
- (id)viewControllerForSnippet:(id)snippet;
@end

@implementation CalendarAssistantUISnippetFactory

- (id)viewControllerForSnippet:(id)snippet
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[CalendarAssistantUIController alloc] initWithAceObject:snippetCopy];
  }

  else
  {
    NSLog(@"Expected SACalendarEventSnippet, got %@", snippetCopy);
    v4 = 0;
  }

  return v4;
}

- (id)disambiguationItemForListItem:(id)item disambiguationKey:(id)key
{
  object = [item object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [object identifier];
    v6 = identifier;
    if (identifier && ([identifier scheme], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "compare:options:", _EKEventURLScheme, 1), v7, !v8))
    {
      v10 = +[CalendarAssistantUIController openEventStore];
      v11 = [v10 _eventWithURI:v6 checkValid:1];
      if (v11)
      {
        v9 = +[SiriUIDisambiguationItem disambiguationItem];
        title = [v11 title];
        v13 = [title length];

        if (v13)
        {
          title2 = [v11 title];
          [v9 setTitle:title2];
        }

        location = [v11 location];
        v16 = [location length];

        if (v16)
        {
          location2 = [v11 location];
          [v9 setSubtitle:location2];
        }

        startDate = [v11 startDate];
        v19 = CUIKStringForSystemTime();

        if ([v19 length])
        {
          [v9 setExtraDisambiguationText:v19];
        }

        v20 = +[CUIKDateDescriptionGenerator sharedGenerator];
        startDate2 = [v11 startDate];
        v22 = [v20 dateStringForDate:startDate2 allDay:1 shortFormat:1];

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
    NSLog(@"Expected SACalendarEvent, got: %@", object);
    v9 = 0;
  }

  return v9;
}

@end