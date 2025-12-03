@interface CLKCurrentTimeTextProvider
+ (id)textProviderWithTimeZone:(id)zone;
- (BOOL)isEqual:(id)equal;
- (CLKCurrentTimeTextProvider)init;
- (CLKCurrentTimeTextProvider)initWithCoder:(id)coder;
- (id)JSONObjectRepresentation;
- (id)_initWithJSONObjectRepresentation:(id)representation;
- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style;
- (id)_sessionCacheKey;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_endSession;
- (void)_startSessionWithDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKCurrentTimeTextProvider

- (CLKCurrentTimeTextProvider)init
{
  v3.receiver = self;
  v3.super_class = CLKCurrentTimeTextProvider;
  return [(CLKTextProvider *)&v3 initPrivate];
}

+ (id)textProviderWithTimeZone:(id)zone
{
  zoneCopy = zone;
  v4 = objc_alloc_init(CLKCurrentTimeTextProvider);
  [(CLKTimeTextProvider *)v4 setTimeZone:zoneCopy];

  [(CLKTextProvider *)v4 setTimeTravelUpdateFrequency:2];
  v4->_calendarUnits = 96;

  return v4;
}

- (void)_startSessionWithDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    v11 = dateCopy;
    v7 = overrideDate;

    v5 = v7;
  }

  v12 = v5;
  [(CLKTimeTextProvider *)self setDate:v5];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar components:self->_calendarUnits fromDate:v12];
  sessionComponents = self->_sessionComponents;
  self->_sessionComponents = v9;

  self->_sessionInProgress = 1;
}

- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style
{
  v6.receiver = self;
  v6.super_class = CLKCurrentTimeTextProvider;
  v4 = [(CLKTimeTextProvider *)&v6 _sessionAttributedTextForIndex:index withStyle:style];

  return v4;
}

- (id)_sessionCacheKey
{
  sessionCacheKey = self->_sessionCacheKey;
  if (!sessionCacheKey)
  {
    string = [MEMORY[0x277CCAB68] string];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSDateComponents valueForComponent:](self->_sessionComponents, "valueForComponent:", 32)}];
    [string appendFormat:@"%@%@", @"hr", v5];

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSDateComponents valueForComponent:](self->_sessionComponents, "valueForComponent:", 64)}];
    [string appendFormat:@"%@%@", @"min", v6];

    if (self->_overrideDate)
    {
      v7 = @"override";
    }

    else
    {
      v7 = @"no_override";
    }

    [string appendFormat:@"%@", v7];
    v8 = self->_sessionCacheKey;
    self->_sessionCacheKey = string;

    sessionCacheKey = self->_sessionCacheKey;
  }

  return sessionCacheKey;
}

- (void)_endSession
{
  v4.receiver = self;
  v4.super_class = CLKCurrentTimeTextProvider;
  [(CLKTextProvider *)&v4 _endSession];
  sessionCacheKey = self->_sessionCacheKey;
  self->_sessionCacheKey = 0;

  self->_sessionInProgress = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CLKCurrentTimeTextProvider;
  v4 = [(CLKTimeTextProvider *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4 != self)
  {
    v4->_calendarUnits = self->_calendarUnits;
    objc_storeStrong(&v4->_overrideDate, self->_overrideDate);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CLKCurrentTimeTextProvider;
  if ([(CLKTimeTextProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_calendarUnits == equalCopy[21])
  {
    v5 = CLKEqualObjects(self->_overrideDate, equalCopy[25]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = CLKCurrentTimeTextProvider;
  v3 = [(CLKTimeTextProvider *)&v5 hash]+ 4 * self->_calendarUnits;
  return &v3[16 * [(NSDate *)self->_overrideDate hash]];
}

- (CLKCurrentTimeTextProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CLKCurrentTimeTextProvider;
  v5 = [(CLKTimeTextProvider *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_calendarUnits = [coderCopy decodeIntegerForKey:@"_units"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_overrideDate"];
    overrideDate = v5->_overrideDate;
    v5->_overrideDate = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKCurrentTimeTextProvider;
  coderCopy = coder;
  [(CLKTimeTextProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_calendarUnits forKey:{@"_units", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_overrideDate forKey:@"_overrideDate"];
}

- (id)_initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v8.receiver = self;
  v8.super_class = CLKCurrentTimeTextProvider;
  v5 = [(CLKTimeTextProvider *)&v8 _initWithJSONObjectRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"calendarUnits"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"calendarUnits", v6}];
    }

    v5[21] = [v6 intValue];
    [v5 setTimeTravelUpdateFrequency:2];
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v6.receiver = self;
  v6.super_class = CLKCurrentTimeTextProvider;
  jSONObjectRepresentation = [(CLKTimeTextProvider *)&v6 JSONObjectRepresentation];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_calendarUnits];
  [jSONObjectRepresentation setObject:v4 forKeyedSubscript:@"calendarUnits"];

  return jSONObjectRepresentation;
}

@end