@interface ATXDailyOverview
- (ATXDailyOverview)initWithCoder:(id)a3;
- (ATXDailyOverview)initWithType:(unint64_t)a3 sections:(id)a4 dailySummary:(id)a5 pinnedEvents:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXDailyOverview

- (ATXDailyOverview)initWithType:(unint64_t)a3 sections:(id)a4 dailySummary:(id)a5 pinnedEvents:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = ATXDailyOverview;
  v13 = [(ATXDailyOverview *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    v15 = [v10 copy];
    sections = v14->_sections;
    v14->_sections = v15;

    objc_storeStrong(&v14->_dailySummary, a5);
    v17 = [v12 copy];
    pinnedEvents = v14->_pinnedEvents;
    v14->_pinnedEvents = v17;
  }

  return v14;
}

- (ATXDailyOverview)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ATXDailyOverview;
  v5 = [(ATXDailyOverview *)&v24 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v7 initWithObjects:{v8, v9, 0}];

    objc_autoreleasePoolPop(v6);
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dailySummary"];
    dailySummary = v5->_dailySummary;
    v5->_dailySummary = v13;

    v15 = objc_autoreleasePoolPush();
    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = [v16 initWithObjects:{v17, v18, 0}];

    objc_autoreleasePoolPop(v15);
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"pinnedEvents"];
    pinnedEvents = v5->_pinnedEvents;
    v5->_pinnedEvents = v20;

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_sections forKey:@"sections"];
  [v5 encodeObject:self->_dailySummary forKey:@"dailySummary"];
  [v5 encodeObject:self->_pinnedEvents forKey:@"pinnedEvents"];
}

@end