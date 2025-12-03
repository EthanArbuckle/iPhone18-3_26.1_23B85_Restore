@interface ATXFreeMoment
- (ATXFreeMoment)initWithCoder:(id)coder;
- (ATXFreeMoment)initWithDateRange:(id)range score:(double)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFreeMoment

- (ATXFreeMoment)initWithDateRange:(id)range score:(double)score
{
  rangeCopy = range;
  v11.receiver = self;
  v11.super_class = ATXFreeMoment;
  v8 = [(ATXFreeMoment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateRange, range);
    v9->_score = score;
  }

  return v9;
}

- (ATXFreeMoment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateRange"];
  [coderCopy decodeDoubleForKey:@"score"];
  v7 = v6;

  v8 = [(ATXFreeMoment *)self initWithDateRange:v5 score:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dateRange = [(ATXFreeMoment *)self dateRange];
  [coderCopy encodeObject:dateRange forKey:@"dateRange"];

  [(ATXFreeMoment *)self score];
  [coderCopy encodeDouble:@"score" forKey:?];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AB78];
  dateRange = [(ATXFreeMoment *)self dateRange];
  startDate = [dateRange startDate];
  v7 = [v4 localizedStringFromDate:startDate dateStyle:1 timeStyle:1];
  v8 = MEMORY[0x1E696AB78];
  dateRange2 = [(ATXFreeMoment *)self dateRange];
  endDate = [dateRange2 endDate];
  v11 = [v8 localizedStringFromDate:endDate dateStyle:1 timeStyle:1];
  [(ATXFreeMoment *)self score];
  v13 = [v3 initWithFormat:@"<Start: %@, End: %@, Score: %f>", v7, v11, v12];

  return v13;
}

@end