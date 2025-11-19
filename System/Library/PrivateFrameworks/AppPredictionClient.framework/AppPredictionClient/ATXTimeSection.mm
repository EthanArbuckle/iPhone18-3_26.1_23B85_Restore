@interface ATXTimeSection
- (ATXTimeSection)initWithCoder:(id)a3;
- (ATXTimeSection)initWithRows:(id)a3 title:(id)a4 kind:(unint64_t)a5 representedTimeRangeStart:(id)a6 representedTimeRangeEnd:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeSection

- (ATXTimeSection)initWithRows:(id)a3 title:(id)a4 kind:(unint64_t)a5 representedTimeRangeStart:(id)a6 representedTimeRangeEnd:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    [ATXTimeSection initWithRows:a2 title:self kind:? representedTimeRangeStart:? representedTimeRangeEnd:?];
  }

  v24.receiver = self;
  v24.super_class = ATXTimeSection;
  v17 = [(ATXTimeSection *)&v24 init];
  if (v17)
  {
    v18 = [v13 copy];
    rows = v17->_rows;
    v17->_rows = v18;

    v20 = [v14 copy];
    title = v17->_title;
    v17->_title = v20;

    v17->_kind = a5;
    objc_storeStrong(&v17->_representedTimeRangeStart, a6);
    objc_storeStrong(&v17->_representedTimeRangeEnd, a7);
    v22 = v17;
  }

  return v17;
}

- (ATXTimeSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = [v6 initWithObjects:{v7, v8, 0}];

  objc_autoreleasePoolPop(v5);
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rows"];

  if (v10)
  {
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v12 = [v4 decodeIntegerForKey:@"kind"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeStart"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeEnd"];
    self = [(ATXTimeSection *)self initWithRows:v10 title:v11 kind:v12 representedTimeRangeStart:v13 representedTimeRangeEnd:v14];

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  rows = self->_rows;
  v5 = a3;
  [v5 encodeObject:rows forKey:@"rows"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeInteger:self->_kind forKey:@"kind"];
  [v5 encodeObject:self->_representedTimeRangeStart forKey:@"timeRangeStart"];
  [v5 encodeObject:self->_representedTimeRangeEnd forKey:@"timeRangeEnd"];
}

- (void)initWithRows:(uint64_t)a1 title:(uint64_t)a2 kind:representedTimeRangeStart:representedTimeRangeEnd:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXTimeSection.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"rows"}];
}

@end