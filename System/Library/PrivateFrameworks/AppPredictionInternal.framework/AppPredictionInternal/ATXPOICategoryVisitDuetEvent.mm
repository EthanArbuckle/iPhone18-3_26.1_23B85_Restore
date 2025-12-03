@interface ATXPOICategoryVisitDuetEvent
- (ATXPOICategoryVisitDuetEvent)initWithCurrentContextStoreValues;
- (ATXPOICategoryVisitDuetEvent)initWithPossibleCategoryNames:(id)names startDate:(id)date endDate:(id)endDate hasExited:(BOOL)exited;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPOICategoryVisitDuetEvent:(id)event;
- (id)description;
- (id)identifier;
@end

@implementation ATXPOICategoryVisitDuetEvent

- (ATXPOICategoryVisitDuetEvent)initWithPossibleCategoryNames:(id)names startDate:(id)date endDate:(id)endDate hasExited:(BOOL)exited
{
  namesCopy = names;
  v15.receiver = self;
  v15.super_class = ATXPOICategoryVisitDuetEvent;
  v12 = [(ATXDuetEvent *)&v15 initWithStartDate:date endDate:endDate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_possibleCategoryNames, names);
    v13->_hasExited = exited;
  }

  return v13;
}

- (ATXPOICategoryVisitDuetEvent)initWithCurrentContextStoreValues
{
  v3 = +[ATXPOICategoryVisitDuetDataProvider sharedInstance];
  getCurrentVisit = [v3 getCurrentVisit];

  return getCurrentVisit;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPOICategoryVisitDuetEvent *)self isEqualToATXPOICategoryVisitDuetEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPOICategoryVisitDuetEvent:(id)event
{
  eventCopy = event;
  v5 = self->_possibleCategoryNames;
  v6 = v5;
  if (v5 == eventCopy[5])
  {
  }

  else
  {
    v7 = [(NSOrderedSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  startDate = [(ATXDuetEvent *)self startDate];
  startDate2 = [eventCopy startDate];
  if ([startDate isEqualToDate:startDate2])
  {
    endDate = [(ATXDuetEvent *)self endDate];
    endDate2 = [eventCopy endDate];
    v8 = [endDate isEqualToDate:endDate2];
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  possibleCategoryNames = [(ATXPOICategoryVisitDuetEvent *)self possibleCategoryNames];
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v7 = [v3 initWithFormat:@"ATXPOICategoryVisitDuetEvent categories: %@, startDate: %@, endDate: %@ hasExited: %d", possibleCategoryNames, startDate, endDate, -[ATXPOICategoryVisitDuetEvent hasExited](self, "hasExited")];

  return v7;
}

- (id)identifier
{
  possibleCategoryNames = [(ATXPOICategoryVisitDuetEvent *)self possibleCategoryNames];
  v4 = [possibleCategoryNames count];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    possibleCategoryNames2 = [(ATXPOICategoryVisitDuetEvent *)self possibleCategoryNames];
    v7 = [possibleCategoryNames2 objectAtIndexedSubscript:0];
    v8 = [v5 initWithFormat:@"%@", v7];
  }

  else
  {
    v8 = @"unknown";
  }

  return v8;
}

@end