@interface ATXContext
+ (id)defaultTimeWindowForContextType:(unint64_t)type;
- (ATXContext)initWithCoder:(id)coder;
- (ATXContext)initWithContextType:(unint64_t)type location:(id)location timeWindow:(id)window;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXContext

- (ATXContext)initWithContextType:(unint64_t)type location:(id)location timeWindow:(id)window
{
  locationCopy = location;
  windowCopy = window;
  v14.receiver = self;
  v14.super_class = ATXContext;
  v11 = [(ATXContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_contextType = type;
    objc_storeStrong(&v11->_location, location);
    objc_storeStrong(&v12->_timeWindow, window);
  }

  return v12;
}

+ (id)defaultTimeWindowForContextType:(unint64_t)type
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:1234.0];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_opt_new();
  [v6 setDay:0];
  if (type == 2)
  {
    v9 = 3;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (type != 1)
    {
      goto LABEL_6;
    }

    v9 = 15;
  }

  [v6 setHour:v9];
  v10 = [currentCalendar startOfDayForDate:v4];
  v7 = [currentCalendar dateByAddingComponents:v6 toDate:v10 options:0];

  v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 duration:28800.0];
LABEL_6:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ATXContext contextType](self forKey:{"contextType"), @"contextTypeKey"}];
  location = [(ATXContext *)self location];
  [coderCopy encodeObject:location forKey:@"contextLocationKey"];

  timeWindow = [(ATXContext *)self timeWindow];
  [coderCopy encodeObject:timeWindow forKey:@"contextTimeWindowKey"];
}

- (ATXContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"contextTypeKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextLocationKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextTimeWindowKey"];

  v8 = [(ATXContext *)self initWithContextType:v5 location:v6 timeWindow:v7];
  return v8;
}

@end