@interface CalendarAssistantUISnippetSection
+ (id)sectionWithDate:(id)a3;
- (CalendarAssistantUISnippetSection)initWithDate:(id)a3;
- (void)addEvent:(id)a3;
@end

@implementation CalendarAssistantUISnippetSection

+ (id)sectionWithDate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDate:v4];

  return v5;
}

- (CalendarAssistantUISnippetSection)initWithDate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CalendarAssistantUISnippetSection;
  v5 = [(CalendarAssistantUISnippetSection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CalendarAssistantUISnippetSection *)v5 setDate:v4];
  }

  return v6;
}

- (void)addEvent:(id)a3
{
  v4 = a3;
  v5 = [(CalendarAssistantUISnippetSection *)self events];

  if (v5)
  {
    v6 = [(CalendarAssistantUISnippetSection *)self events];
    v7 = [v6 arrayByAddingObject:v4];

    v4 = v6;
  }

  else
  {
    v7 = [[NSArray alloc] initWithObjects:{v4, 0}];
  }

  [(CalendarAssistantUISnippetSection *)self setEvents:v7];
}

@end