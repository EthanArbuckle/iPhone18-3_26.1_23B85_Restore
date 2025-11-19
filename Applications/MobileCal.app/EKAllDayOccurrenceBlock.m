@interface EKAllDayOccurrenceBlock
- (EKAllDayOccurrenceBlock)initWithEventIndex:(unint64_t)a3 calendarOrder:(unint64_t)a4 dayRange:(_NSRange)a5;
- (id)description;
- (id)lengthForSorting;
- (unint64_t)gapBetweenBlock:(id)a3;
@end

@implementation EKAllDayOccurrenceBlock

- (EKAllDayOccurrenceBlock)initWithEventIndex:(unint64_t)a3 calendarOrder:(unint64_t)a4 dayRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v10.receiver = self;
  v10.super_class = EKAllDayOccurrenceBlock;
  result = [(EKAllDayOccurrenceBlock *)&v10 init];
  if (result)
  {
    result->_eventIndex = a3;
    result->_dayRange.location = location;
    result->_dayRange.length = length;
    result->_calendarOrder = a4;
  }

  return result;
}

- (id)lengthForSorting
{
  v2 = [(EKAllDayOccurrenceBlock *)self length];

  return [NSNumber numberWithUnsignedInteger:v2];
}

- (unint64_t)gapBetweenBlock:(id)a3
{
  v4 = a3;
  v5 = [(EKAllDayOccurrenceBlock *)self rangeStart];
  if (v5 <= [(EKAllDayOccurrenceBlock *)v4 rangeEnd])
  {
    v7 = [(EKAllDayOccurrenceBlock *)v4 rangeStart];
    v8 = [(EKAllDayOccurrenceBlock *)self rangeEnd];
    v6 = v4;
    if (v7 <= v8)
    {
      v10 = -1;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = self;
    self = v4;
  }

  v9 = [(EKAllDayOccurrenceBlock *)v6 rangeStart];
  v10 = v9 - [(EKAllDayOccurrenceBlock *)self rangeEnd];
LABEL_6:

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(EKAllDayOccurrenceBlock *)self occurrenceView];
  v5 = [v4 occurrence];
  v6 = [v5 title];
  v7 = [NSString stringWithFormat:@"<%@: %p [%@] eventIndex = %ld; rangeStart= %lu; rangeEnd = %lu; calendarOrder = %lu>", v3, self, v6, [(EKAllDayOccurrenceBlock *)self eventIndex], [(EKAllDayOccurrenceBlock *)self rangeStart], [(EKAllDayOccurrenceBlock *)self rangeEnd], [(EKAllDayOccurrenceBlock *)self calendarOrder]];;

  return v7;
}

@end