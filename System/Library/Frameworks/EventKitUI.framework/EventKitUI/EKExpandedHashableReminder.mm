@interface EKExpandedHashableReminder
- (BOOL)isEqual:(id)a3;
- (EKExpandedHashableReminder)initWithEKEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation EKExpandedHashableReminder

- (EKExpandedHashableReminder)initWithEKEvent:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = EKExpandedHashableReminder;
  v5 = [(EKExpandedHashableReminder *)&v17 init];
  v5->_completed = [(EKEvent *)v4 completed];
  v6 = [(EKEvent *)v4 startDate];
  date = v5->_date;
  v5->_date = v6;

  v8 = [(EKEvent *)v4 title];
  title = v5->_title;
  v5->_title = v8;

  v10 = [(EKEvent *)v4 CUIK_reminderShouldBeEditable];
  v5->_editable = v10;
  if (v10)
  {
    [(EKEvent *)v4 CUIK_symbolColor];
  }

  else
  {
    [(EKEvent *)v4 CUIK_disabledSymbolColor];
  }
  v11 = ;
  color = v5->_color;
  v5->_color = v11;

  v13 = [(EKEvent *)v4 CUIK_symbolName:[(EKEvent *)v4 isAllDay]];
  buttonImageName = v5->_buttonImageName;
  v5->_buttonImageName = v13;

  event = v5->_event;
  v5->_event = v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      completed = self->_completed;
      if (completed == [(EKExpandedHashableReminder *)v5 completed])
      {
        date = self->_date;
        v8 = [(EKExpandedHashableReminder *)v5 date];
        if ([(NSDate *)date isEqualToDate:v8])
        {
          color = self->_color;
          v10 = [(EKExpandedHashableReminder *)v5 color];
          if ([(UIColor *)color isEqual:v10])
          {
            title = self->_title;
            v12 = [(EKExpandedHashableReminder *)v5 title];
            if ([(NSString *)title isEqualToString:v12])
            {
              buttonImageName = self->_buttonImageName;
              v14 = [(EKExpandedHashableReminder *)v5 buttonImageName];
              if ([(NSString *)buttonImageName isEqualToString:v14]&& (editable = self->_editable, editable == [(EKExpandedHashableReminder *)v5 editable]))
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