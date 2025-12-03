@interface CalendarAssistantUISnippetSection
+ (id)sectionWithDate:(id)date;
- (CalendarAssistantUISnippetSection)initWithDate:(id)date;
- (void)addEvent:(id)event;
@end

@implementation CalendarAssistantUISnippetSection

+ (id)sectionWithDate:(id)date
{
  dateCopy = date;
  v5 = [[self alloc] initWithDate:dateCopy];

  return v5;
}

- (CalendarAssistantUISnippetSection)initWithDate:(id)date
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = CalendarAssistantUISnippetSection;
  v5 = [(CalendarAssistantUISnippetSection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CalendarAssistantUISnippetSection *)v5 setDate:dateCopy];
  }

  return v6;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  events = [(CalendarAssistantUISnippetSection *)self events];

  if (events)
  {
    events2 = [(CalendarAssistantUISnippetSection *)self events];
    v7 = [events2 arrayByAddingObject:eventCopy];

    eventCopy = events2;
  }

  else
  {
    v7 = [[NSArray alloc] initWithObjects:{eventCopy, 0}];
  }

  [(CalendarAssistantUISnippetSection *)self setEvents:v7];
}

@end