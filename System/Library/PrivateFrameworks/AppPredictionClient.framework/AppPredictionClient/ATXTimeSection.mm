@interface ATXTimeSection
- (ATXTimeSection)initWithCoder:(id)coder;
- (ATXTimeSection)initWithRows:(id)rows title:(id)title kind:(unint64_t)kind representedTimeRangeStart:(id)start representedTimeRangeEnd:(id)end;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeSection

- (ATXTimeSection)initWithRows:(id)rows title:(id)title kind:(unint64_t)kind representedTimeRangeStart:(id)start representedTimeRangeEnd:(id)end
{
  rowsCopy = rows;
  titleCopy = title;
  startCopy = start;
  endCopy = end;
  if (!rowsCopy)
  {
    [ATXTimeSection initWithRows:a2 title:self kind:? representedTimeRangeStart:? representedTimeRangeEnd:?];
  }

  v24.receiver = self;
  v24.super_class = ATXTimeSection;
  v17 = [(ATXTimeSection *)&v24 init];
  if (v17)
  {
    v18 = [rowsCopy copy];
    rows = v17->_rows;
    v17->_rows = v18;

    v20 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v20;

    v17->_kind = kind;
    objc_storeStrong(&v17->_representedTimeRangeStart, start);
    objc_storeStrong(&v17->_representedTimeRangeEnd, end);
    v22 = v17;
  }

  return v17;
}

- (ATXTimeSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = [v6 initWithObjects:{v7, v8, 0}];

  objc_autoreleasePoolPop(v5);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"rows"];

  if (v10)
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v12 = [coderCopy decodeIntegerForKey:@"kind"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeStart"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeEnd"];
    self = [(ATXTimeSection *)self initWithRows:v10 title:v11 kind:v12 representedTimeRangeStart:v13 representedTimeRangeEnd:v14];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  rows = self->_rows;
  coderCopy = coder;
  [coderCopy encodeObject:rows forKey:@"rows"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInteger:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_representedTimeRangeStart forKey:@"timeRangeStart"];
  [coderCopy encodeObject:self->_representedTimeRangeEnd forKey:@"timeRangeEnd"];
}

- (void)initWithRows:(uint64_t)a1 title:(uint64_t)a2 kind:representedTimeRangeStart:representedTimeRangeEnd:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXTimeSection.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"rows"}];
}

@end