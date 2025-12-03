@interface MFDatePickerItem
- (BOOL)isEqual:(id)equal;
- (MFDatePickerItem)initWithIdentifier:(id)identifier selectedDate:(id)date selectedTime:(id)time selectedCity:(id)city datePickerComponentType:(int64_t)type timeSwitchEnabled:(BOOL)enabled;
- (unint64_t)hash;
@end

@implementation MFDatePickerItem

- (MFDatePickerItem)initWithIdentifier:(id)identifier selectedDate:(id)date selectedTime:(id)time selectedCity:(id)city datePickerComponentType:(int64_t)type timeSwitchEnabled:(BOOL)enabled
{
  identifierCopy = identifier;
  dateCopy = date;
  timeCopy = time;
  cityCopy = city;
  v22.receiver = self;
  v22.super_class = MFDatePickerItem;
  v18 = [(MFDatePickerItem *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_selectedDate, date);
    objc_storeStrong(&v19->_selectedTime, time);
    objc_storeStrong(&v19->_selectedCity, city);
    v19->_datePickerComponentType = type;
    v19->_timeSwitchEnabled = enabled;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(MFDatePickerItem *)self identifier];
      identifier2 = [(MFDatePickerItem *)v5 identifier];
      if ([identifier isEqual:identifier2])
      {
        selectedTime = [(MFDatePickerItem *)self selectedTime];
        selectedTime2 = [(MFDatePickerItem *)v5 selectedTime];
        if ([selectedTime isEqualToDate:selectedTime2])
        {
          selectedDate = [(MFDatePickerItem *)self selectedDate];
          selectedDate2 = [(MFDatePickerItem *)self selectedDate];
          if ([selectedDate isEqualToDate:selectedDate2])
          {
            selectedCity = [(MFDatePickerItem *)self selectedCity];
            selectedCity2 = [(MFDatePickerItem *)v5 selectedCity];
            if ([selectedCity isEqual:selectedCity2] && (v16 = -[MFDatePickerItem datePickerComponentType](self, "datePickerComponentType"), v16 == -[MFDatePickerItem datePickerComponentType](v5, "datePickerComponentType")))
            {
              timeSwitchEnabled = [(MFDatePickerItem *)self timeSwitchEnabled];
              v14 = timeSwitchEnabled ^ [(MFDatePickerItem *)v5 timeSwitchEnabled]^ 1;
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
  identifier = [(MFDatePickerItem *)self identifier];
  v4 = [identifier hash];

  selectedDate = [(MFDatePickerItem *)self selectedDate];
  v6 = [selectedDate hash];

  selectedTime = [(MFDatePickerItem *)self selectedTime];
  v8 = [selectedTime hash];

  selectedCity = [(MFDatePickerItem *)self selectedCity];
  v10 = 33 * (33 * (33 * (33 * v4 + v6) + v8) + [selectedCity hash]);

  v11 = 33 * (v10 + [(MFDatePickerItem *)self datePickerComponentType]);
  return v11 + [(MFDatePickerItem *)self timeSwitchEnabled]+ 0x65207DF04C5;
}

@end