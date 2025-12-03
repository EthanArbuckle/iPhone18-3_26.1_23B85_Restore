@interface EKExpandedHashableReminder
- (BOOL)isEqual:(id)equal;
- (EKExpandedHashableReminder)initWithEKEvent:(id)event;
- (unint64_t)hash;
@end

@implementation EKExpandedHashableReminder

- (EKExpandedHashableReminder)initWithEKEvent:(id)event
{
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = EKExpandedHashableReminder;
  v5 = [(EKExpandedHashableReminder *)&v17 init];
  v5->_completed = [(EKEvent *)eventCopy completed];
  startDate = [(EKEvent *)eventCopy startDate];
  date = v5->_date;
  v5->_date = startDate;

  title = [(EKEvent *)eventCopy title];
  title = v5->_title;
  v5->_title = title;

  cUIK_reminderShouldBeEditable = [(EKEvent *)eventCopy CUIK_reminderShouldBeEditable];
  v5->_editable = cUIK_reminderShouldBeEditable;
  if (cUIK_reminderShouldBeEditable)
  {
    [(EKEvent *)eventCopy CUIK_symbolColor];
  }

  else
  {
    [(EKEvent *)eventCopy CUIK_disabledSymbolColor];
  }
  v11 = ;
  color = v5->_color;
  v5->_color = v11;

  v13 = [(EKEvent *)eventCopy CUIK_symbolName:[(EKEvent *)eventCopy isAllDay]];
  buttonImageName = v5->_buttonImageName;
  v5->_buttonImageName = v13;

  event = v5->_event;
  v5->_event = eventCopy;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      completed = self->_completed;
      if (completed == [(EKExpandedHashableReminder *)v5 completed])
      {
        date = self->_date;
        date = [(EKExpandedHashableReminder *)v5 date];
        if ([(NSDate *)date isEqualToDate:date])
        {
          color = self->_color;
          color = [(EKExpandedHashableReminder *)v5 color];
          if ([(UIColor *)color isEqual:color])
          {
            title = self->_title;
            title = [(EKExpandedHashableReminder *)v5 title];
            if ([(NSString *)title isEqualToString:title])
            {
              buttonImageName = self->_buttonImageName;
              buttonImageName = [(EKExpandedHashableReminder *)v5 buttonImageName];
              if ([(NSString *)buttonImageName isEqualToString:buttonImageName]&& (editable = self->_editable, editable == [(EKExpandedHashableReminder *)v5 editable]))
              {
                v16 = [(EKEvent *)self->_event isEqual:v5];
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(UIColor *)self->_color hash];
  v4 = [(NSDate *)self->_date hash]+ 13 * v3;
  v5 = [(NSString *)self->_title hash]+ 13 * v4;
  v6 = [(NSString *)self->_buttonImageName hash];
  v7 = 1237;
  if (self->_completed)
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  if (self->_editable)
  {
    v7 = 1231;
  }

  v9 = v8 + 13 * (v6 + 13 * v5);
  return [(EKEvent *)self->_event hash]+ 13 * (v7 + 13 * v9);
}

@end