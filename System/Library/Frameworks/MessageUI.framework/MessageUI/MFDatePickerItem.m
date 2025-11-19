@interface MFDatePickerItem
- (BOOL)isEqual:(id)a3;
- (MFDatePickerItem)initWithIdentifier:(id)a3 selectedDate:(id)a4 selectedTime:(id)a5 selectedCity:(id)a6 datePickerComponentType:(int64_t)a7 timeSwitchEnabled:(BOOL)a8;
- (unint64_t)hash;
@end

@implementation MFDatePickerItem

- (MFDatePickerItem)initWithIdentifier:(id)a3 selectedDate:(id)a4 selectedTime:(id)a5 selectedCity:(id)a6 datePickerComponentType:(int64_t)a7 timeSwitchEnabled:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = MFDatePickerItem;
  v18 = [(MFDatePickerItem *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_selectedDate, a4);
    objc_storeStrong(&v19->_selectedTime, a5);
    objc_storeStrong(&v19->_selectedCity, a6);
    v19->_datePickerComponentType = a7;
    v19->_timeSwitchEnabled = a8;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MFDatePickerItem *)self identifier];
      v7 = [(MFDatePickerItem *)v5 identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(MFDatePickerItem *)self selectedTime];
        v9 = [(MFDatePickerItem *)v5 selectedTime];
        if ([v8 isEqualToDate:v9])
        {
          v10 = [(MFDatePickerItem *)self selectedDate];
          v11 = [(MFDatePickerItem *)self selectedDate];
          if ([v10 isEqualToDate:v11])
          {
            v17 = [(MFDatePickerItem *)self selectedCity];
            v12 = [(MFDatePickerItem *)v5 selectedCity];
            if ([v17 isEqual:v12] && (v16 = -[MFDatePickerItem datePickerComponentType](self, "datePickerComponentType"), v16 == -[MFDatePickerItem datePickerComponentType](v5, "datePickerComponentType")))
            {
              v13 = [(MFDatePickerItem *)self timeSwitchEnabled];
              v14 = v13 ^ [(MFDatePickerItem *)v5 timeSwitchEnabled]^ 1;
            }

            else
            {
              LOBYTE(v14) = 0;
            }
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(MFDatePickerItem *)self identifier];
  v4 = [v3 hash];

  v5 = [(MFDatePickerItem *)self selectedDate];
  v6 = [v5 hash];

  v7 = [(MFDatePickerItem *)self selectedTime];
  v8 = [v7 hash];

  v9 = [(MFDatePickerItem *)self selectedCity];
  v10 = 33 * (33 * (33 * (33 * v4 + v6) + v8) + [v9 hash]);

  v11 = 33 * (v10 + [(MFDatePickerItem *)self datePickerComponentType]);
  return v11 + [(MFDatePickerItem *)self timeSwitchEnabled]+ 0x65207DF04C5;
}

@end