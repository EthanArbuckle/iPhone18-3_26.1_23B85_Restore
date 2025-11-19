@interface ATXPOICategoryVisitDuetEvent
- (ATXPOICategoryVisitDuetEvent)initWithCurrentContextStoreValues;
- (ATXPOICategoryVisitDuetEvent)initWithPossibleCategoryNames:(id)a3 startDate:(id)a4 endDate:(id)a5 hasExited:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPOICategoryVisitDuetEvent:(id)a3;
- (id)description;
- (id)identifier;
@end

@implementation ATXPOICategoryVisitDuetEvent

- (ATXPOICategoryVisitDuetEvent)initWithPossibleCategoryNames:(id)a3 startDate:(id)a4 endDate:(id)a5 hasExited:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ATXPOICategoryVisitDuetEvent;
  v12 = [(ATXDuetEvent *)&v15 initWithStartDate:a4 endDate:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_possibleCategoryNames, a3);
    v13->_hasExited = a6;
  }

  return v13;
}

- (ATXPOICategoryVisitDuetEvent)initWithCurrentContextStoreValues
{
  v3 = +[ATXPOICategoryVisitDuetDataProvider sharedInstance];
  v4 = [v3 getCurrentVisit];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPOICategoryVisitDuetEvent *)self isEqualToATXPOICategoryVisitDuetEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPOICategoryVisitDuetEvent:(id)a3
{
  v4 = a3;
  v5 = self->_possibleCategoryNames;
  v6 = v5;
  if (v5 == v4[5])
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

  v9 = [(ATXDuetEvent *)self startDate];
  v10 = [v4 startDate];
  if ([v9 isEqualToDate:v10])
  {
    v11 = [(ATXDuetEvent *)self endDate];
    v12 = [v4 endDate];
    v8 = [v11 isEqualToDate:v12];
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
  v4 = [(ATXPOICategoryVisitDuetEvent *)self possibleCategoryNames];
  v5 = [(ATXDuetEvent *)self startDate];
  v6 = [(ATXDuetEvent *)self endDate];
  v7 = [v3 initWithFormat:@"ATXPOICategoryVisitDuetEvent categories: %@, startDate: %@, endDate: %@ hasExited: %d", v4, v5, v6, -[ATXPOICategoryVisitDuetEvent hasExited](self, "hasExited")];

  return v7;
}

- (id)identifier
{
  v3 = [(ATXPOICategoryVisitDuetEvent *)self possibleCategoryNames];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [(ATXPOICategoryVisitDuetEvent *)self possibleCategoryNames];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v5 initWithFormat:@"%@", v7];
  }

  else
  {
    v8 = @"unknown";
  }

  return v8;
}

@end