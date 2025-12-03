@interface EKAllDayOccurrenceBlock
- (EKAllDayOccurrenceBlock)initWithEventIndex:(unint64_t)index calendarOrder:(unint64_t)order dayRange:(_NSRange)range;
- (id)description;
- (id)lengthForSorting;
- (unint64_t)gapBetweenBlock:(id)block;
@end

@implementation EKAllDayOccurrenceBlock

- (EKAllDayOccurrenceBlock)initWithEventIndex:(unint64_t)index calendarOrder:(unint64_t)order dayRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = EKAllDayOccurrenceBlock;
  result = [(EKAllDayOccurrenceBlock *)&v10 init];
  if (result)
  {
    result->_eventIndex = index;
    result->_dayRange.location = location;
    result->_dayRange.length = length;
    result->_calendarOrder = order;
  }

  return result;
}

- (id)lengthForSorting
{
  v2 = [(EKAllDayOccurrenceBlock *)self length];

  return [NSNumber numberWithUnsignedInteger:v2];
}

- (unint64_t)gapBetweenBlock:(id)block
{
  blockCopy = block;
  rangeStart = [(EKAllDayOccurrenceBlock *)self rangeStart];
  if (rangeStart <= [(EKAllDayOccurrenceBlock *)blockCopy rangeEnd])
  {
    rangeStart2 = [(EKAllDayOccurrenceBlock *)blockCopy rangeStart];
    rangeEnd = [(EKAllDayOccurrenceBlock *)self rangeEnd];
    selfCopy = blockCopy;
    if (rangeStart2 <= rangeEnd)
    {
      v10 = -1;
      goto LABEL_6;
    }
  }

  else
  {
    selfCopy = self;
    self = blockCopy;
  }

  rangeStart3 = [(EKAllDayOccurrenceBlock *)selfCopy rangeStart];
  v10 = rangeStart3 - [(EKAllDayOccurrenceBlock *)self rangeEnd];
LABEL_6:

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  occurrenceView = [(EKAllDayOccurrenceBlock *)self occurrenceView];
  occurrence = [occurrenceView occurrence];
  title = [occurrence title];
  v7 = [NSString stringWithFormat:@"<%@: %p [%@] eventIndex = %ld; rangeStart= %lu; rangeEnd = %lu; calendarOrder = %lu>", v3, self, title, [(EKAllDayOccurrenceBlock *)self eventIndex], [(EKAllDayOccurrenceBlock *)self rangeStart], [(EKAllDayOccurrenceBlock *)self rangeEnd], [(EKAllDayOccurrenceBlock *)self calendarOrder]];;

  return v7;
}

@end