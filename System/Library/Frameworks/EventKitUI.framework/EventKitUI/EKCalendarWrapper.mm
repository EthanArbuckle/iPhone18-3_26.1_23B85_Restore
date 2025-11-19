@interface EKCalendarWrapper
- (EKCalendarWrapper)initWithCalendar:(id)a3;
- (EKCalendarWrapper)initWithCoder:(id)a3;
- (id)calendarInEventStore:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKCalendarWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  calendarObjectID = self->_calendarObjectID;
  v8 = v4;
  if (calendarObjectID)
  {
    [v4 encodeObject:calendarObjectID forKey:@"objectID"];
    v4 = v8;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier)
  {
    [v8 encodeObject:calendarIdentifier forKey:@"calendarIdentifier"];
    v4 = v8;
  }

  constraints = self->_constraints;
  if (constraints)
  {
    [v8 encodeObject:constraints forKey:@"constraints"];
    v4 = v8;
  }
}

- (EKCalendarWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EKCalendarWrapper;
  v5 = [(EKCalendarWrapper *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    calendarObjectID = v5->_calendarObjectID;
    v5->_calendarObjectID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendarIdentifier"];
    calendarIdentifier = v5->_calendarIdentifier;
    v5->_calendarIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"constraints"];
    constraints = v5->_constraints;
    v5->_constraints = v10;
  }

  return v5;
}

- (EKCalendarWrapper)initWithCalendar:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EKCalendarWrapper;
  v5 = [(EKCalendarWrapper *)&v12 init];
  if (v5)
  {
    if ([v4 allowEvents])
    {
      v6 = [v4 objectID];
      calendarObjectID = v5->_calendarObjectID;
      v5->_calendarObjectID = v6;

      v8 = [v4 constraints];
      v9 = 24;
    }

    else
    {
      v8 = [v4 calendarIdentifier];
      v9 = 8;
    }

    v10 = *(&v5->super.isa + v9);
    *(&v5->super.isa + v9) = v8;
  }

  return v5;
}

- (id)calendarInEventStore:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_calendarObjectID)
  {
    v6 = [v4 publicObjectWithObjectID:?];
    v7 = v6;
    if (v6)
    {
      constraints = self->_constraints;
      if (constraints)
      {
        v9 = [v6 CADObjectID];
        [v5 cacheConstraints:constraints forObjectWithCADObjectID:v9];
      }

      v10 = v7;
    }
  }

  else
  {
    v7 = [v4 calendarWithIdentifier:self->_calendarIdentifier];
  }

  return v7;
}

@end