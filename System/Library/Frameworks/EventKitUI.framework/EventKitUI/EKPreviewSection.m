@interface EKPreviewSection
+ (id)sectionWithDate:(id)a3;
- (EKPreviewSection)initWithDate:(id)a3;
- (void)addEvent:(id)a3;
@end

@implementation EKPreviewSection

+ (id)sectionWithDate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDate:v4];

  return v5;
}

- (EKPreviewSection)initWithDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKPreviewSection;
  v6 = [(EKPreviewSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, a3);
  }

  return v7;
}

- (void)addEvent:(id)a3
{
  events = self->_events;
  if (events)
  {
    v5 = a3;
    v12 = [(NSArray *)events arrayByAddingObject:v5];

    v6 = [(NSArray *)v12 copy];
    v7 = self->_events;
    self->_events = v6;

    v8 = v12;
  }

  else
  {
    v9 = MEMORY[0x1E695DEC8];
    v10 = a3;
    v11 = [[v9 alloc] initWithObjects:{v10, 0}];

    v8 = self->_events;
    self->_events = v11;
  }
}

@end