@interface EKEventOccurrences
- (BOOL)isEqual:(id)a3;
- (EKEventOccurrences)initWithObjectID:(id)a3 dates:(id)a4;
@end

@implementation EKEventOccurrences

- (EKEventOccurrences)initWithObjectID:(id)a3 dates:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EKEventOccurrences;
  v9 = [(EKEventOccurrences *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectID, a3);
    v11 = [v8 copy];
    startDates = v10->_startDates;
    v10->_startDates = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
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