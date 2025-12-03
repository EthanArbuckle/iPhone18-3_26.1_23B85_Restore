@interface EKPreviewSection
+ (id)sectionWithDate:(id)date;
- (EKPreviewSection)initWithDate:(id)date;
- (void)addEvent:(id)event;
@end

@implementation EKPreviewSection

+ (id)sectionWithDate:(id)date
{
  dateCopy = date;
  v5 = [[self alloc] initWithDate:dateCopy];

  return v5;
}

- (EKPreviewSection)initWithDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = EKPreviewSection;
  v6 = [(EKPreviewSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
  }

  return v7;
}

- (void)addEvent:(id)event
{
  events = self->_events;
  if (events)
  {
    eventCopy = event;
    v12 = [(NSArray *)events arrayByAddingObject:eventCopy];

    v6 = [(NSArray *)v12 copy];
    v7 = self->_events;
    self->_events = v6;

    v8 = v12;
  }

  else
  {
    v9 = MEMORY[0x1E695DEC8];
    eventCopy2 = event;
    v11 = [[v9 alloc] initWithObjects:{eventCopy2, 0}];

    v8 = self->_events;
    self->_events = v11;
  }
}

@end