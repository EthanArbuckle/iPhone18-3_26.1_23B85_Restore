@interface EKEventOccurrences
- (BOOL)isEqual:(id)equal;
- (EKEventOccurrences)initWithObjectID:(id)d dates:(id)dates;
@end

@implementation EKEventOccurrences

- (EKEventOccurrences)initWithObjectID:(id)d dates:(id)dates
{
  dCopy = d;
  datesCopy = dates;
  v14.receiver = self;
  v14.super_class = EKEventOccurrences;
  v9 = [(EKEventOccurrences *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectID, d);
    v11 = [datesCopy copy];
    startDates = v10->_startDates;
    v10->_startDates = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      if ([(EKObjectID *)self->_objectID isEqual:v7->_objectID])
      {
        v6 = [(NSArray *)self->_startDates isEqual:v7->_startDates];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end