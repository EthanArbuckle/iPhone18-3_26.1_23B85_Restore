@interface ATXDailyOverview
- (ATXDailyOverview)initWithCoder:(id)coder;
- (ATXDailyOverview)initWithType:(unint64_t)type sections:(id)sections dailySummary:(id)summary pinnedEvents:(id)events;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXDailyOverview

- (ATXDailyOverview)initWithType:(unint64_t)type sections:(id)sections dailySummary:(id)summary pinnedEvents:(id)events
{
  sectionsCopy = sections;
  summaryCopy = summary;
  eventsCopy = events;
  v20.receiver = self;
  v20.super_class = ATXDailyOverview;
  v13 = [(ATXDailyOverview *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v15 = [sectionsCopy copy];
    sections = v14->_sections;
    v14->_sections = v15;

    objc_storeStrong(&v14->_dailySummary, summary);
    v17 = [eventsCopy copy];
    pinnedEvents = v14->_pinnedEvents;
    v14->_pinnedEvents = v17;
  }

  return v14;
}

- (ATXDailyOverview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ATXDailyOverview;
  v5 = [(ATXDailyOverview *)&v24 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v7 initWithObjects:{v8, v9, 0}];

    objc_autoreleasePoolPop(v6);
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dailySummary"];
    dailySummary = v5->_dailySummary;
    v5->_dailySummary = v13;

    v15 = objc_autoreleasePoolPush();
    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = [v16 initWithObjects:{v17, v18, 0}];

    objc_autoreleasePoolPop(v15);
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"pinnedEvents"];
    pinnedEvents = v5->_pinnedEvents;
    v5->_pinnedEvents = v20;

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_sections forKey:@"sections"];
  [coderCopy encodeObject:self->_dailySummary forKey:@"dailySummary"];
  [coderCopy encodeObject:self->_pinnedEvents forKey:@"pinnedEvents"];
}

@end