@interface ATXFreeMoment
- (ATXFreeMoment)initWithCoder:(id)a3;
- (ATXFreeMoment)initWithDateRange:(id)a3 score:(double)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXFreeMoment

- (ATXFreeMoment)initWithDateRange:(id)a3 score:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ATXFreeMoment;
  v8 = [(ATXFreeMoment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateRange, a3);
    v9->_score = a4;
  }

  return v9;
}

- (ATXFreeMoment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateRange"];
  [v4 decodeDoubleForKey:@"score"];
  v7 = v6;

  v8 = [(ATXFreeMoment *)self initWithDateRange:v5 score:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ATXFreeMoment *)self dateRange];
  [v5 encodeObject:v4 forKey:@"dateRange"];

  [(ATXFreeMoment *)self score];
  [v5 encodeDouble:@"score" forKey:?];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AB78];
  v5 = [(ATXFreeMoment *)self dateRange];
  v6 = [v5 startDate];
  v7 = [v4 localizedStringFromDate:v6 dateStyle:1 timeStyle:1];
  v8 = MEMORY[0x1E696AB78];
  v9 = [(ATXFreeMoment *)self dateRange];
  v10 = [v9 endDate];
  v11 = [v8 localizedStringFromDate:v10 dateStyle:1 timeStyle:1];
  [(ATXFreeMoment *)self score];
  v13 = [v3 initWithFormat:@"<Start: %@, End: %@, Score: %f>", v7, v11, v12];

  return v13;
}

@end