@interface EKCalendarWrapper
- (EKCalendarWrapper)initWithCalendar:(id)calendar;
- (EKCalendarWrapper)initWithCoder:(id)coder;
- (id)calendarInEventStore:(id)store;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKCalendarWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  calendarObjectID = self->_calendarObjectID;
  v8 = coderCopy;
  if (calendarObjectID)
  {
    [coderCopy encodeObject:calendarObjectID forKey:@"objectID"];
    coderCopy = v8;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier)
  {
    [v8 encodeObject:calendarIdentifier forKey:@"calendarIdentifier"];
    coderCopy = v8;
  }

  constraints = self->_constraints;
  if (constraints)
  {
    [v8 encodeObject:constraints forKey:@"constraints"];
    coderCopy = v8;
  }
}

- (EKCalendarWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = EKCalendarWrapper;
  v5 = [(EKCalendarWrapper *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    calendarObjectID = v5->_calendarObjectID;
    v5->_calendarObjectID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendarIdentifier"];
    calendarIdentifier = v5->_calendarIdentifier;
    v5->_calendarIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"constraints"];
    constraints = v5->_constraints;
    v5->_constraints = v10;
  }

  return v5;
}

- (EKCalendarWrapper)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v12.receiver = self;
  v12.super_class = EKCalendarWrapper;
  v5 = [(EKCalendarWrapper *)&v12 init];
  if (v5)
  {
    if ([calendarCopy allowEvents])
    {
      objectID = [calendarCopy objectID];
      calendarObjectID = v5->_calendarObjectID;
      v5->_calendarObjectID = objectID;

      constraints = [calendarCopy constraints];
      v9 = 24;
    }

    else
    {
      constraints = [calendarCopy calendarIdentifier];
      v9 = 8;
    }

    v10 = *(&v5->super.isa + v9);
    *(&v5->super.isa + v9) = constraints;
  }

  return v5;
}

- (id)calendarInEventStore:(id)store
{
  storeCopy = store;
  v5 = storeCopy;
  if (self->_calendarObjectID)
  {
    v6 = [storeCopy publicObjectWithObjectID:?];
    v7 = v6;
    if (v6)
    {
      constraints = self->_constraints;
      if (constraints)
      {
        cADObjectID = [v6 CADObjectID];
        [v5 cacheConstraints:constraints forObjectWithCADObjectID:cADObjectID];
      }

      v10 = v7;
    }
  }

  else
  {
    v7 = [storeCopy calendarWithIdentifier:self->_calendarIdentifier];
  }

  return v7;
}

@end