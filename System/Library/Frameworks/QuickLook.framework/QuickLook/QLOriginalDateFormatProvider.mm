@interface QLOriginalDateFormatProvider
- (id)_originalStringAtTimeWithSender:(id)sender date:(id)date;
- (id)_originalStringDayWithSender:(id)sender date:(id)date;
- (id)_originalStringOnDateWithSender:(id)sender date:(id)date;
- (id)originalStringWithSender:(id)sender date:(id)date now:(id)now;
- (unint64_t)_originalFormatWithDate:(id)date now:(id)now;
@end

@implementation QLOriginalDateFormatProvider

- (id)originalStringWithSender:(id)sender date:(id)date now:(id)now
{
  senderCopy = sender;
  dateCopy = date;
  v10 = [(QLOriginalDateFormatProvider *)self _originalFormatWithDate:dateCopy now:now];
  senderCopy = 0;
  if (v10 > 1)
  {
    switch(v10)
    {
      case 2:
        v13 = MEMORY[0x277CCACA8];
        v14 = QLLocalizedString();
        senderCopy = [v13 stringWithFormat:v14, senderCopy];

        goto LABEL_13;
      case 3:
        v12 = [(QLOriginalDateFormatProvider *)self _originalStringDayWithSender:senderCopy date:dateCopy];
        break;
      case 4:
        v12 = [(QLOriginalDateFormatProvider *)self _originalStringOnDateWithSender:senderCopy date:dateCopy];
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_13;
    }

    v12 = [(QLOriginalDateFormatProvider *)self _originalStringAtTimeWithSender:senderCopy date:dateCopy];
LABEL_11:
    senderCopy = v12;
    goto LABEL_13;
  }

  senderCopy = &stru_284D5E510;
LABEL_13:

  return senderCopy;
}

- (unint64_t)_originalFormatWithDate:(id)date now:(id)now
{
  dateCopy = date;
  v6 = 0;
  if (dateCopy && now)
  {
    v7 = MEMORY[0x277CBEA80];
    nowCopy = now;
    currentCalendar = [v7 currentCalendar];
    v10 = [currentCalendar components:30 fromDate:nowCopy];

    v11 = [currentCalendar dateFromComponents:v10];
    v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v12 setDay:-6];
    v13 = [currentCalendar dateByAddingComponents:v12 toDate:v11 options:0];
    if ([dateCopy compare:v13] == -1)
    {
      v6 = 4;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v14 setDay:-1];
      v15 = [currentCalendar dateByAddingComponents:v14 toDate:v11 options:0];
      if ([dateCopy compare:v15] == -1)
      {
        v6 = 3;
      }

      else if ([dateCopy compare:v11] == -1)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)_originalStringAtTimeWithSender:(id)sender date:(id)date
{
  senderCopy = sender;
  dateCopy = date;
  v8 = self->_timeFormatter;
  objc_sync_enter(v8);
  if (!self->_timeFormatter)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    timeFormatter = self->_timeFormatter;
    self->_timeFormatter = v9;

    [(NSDateFormatter *)self->_timeFormatter setDateStyle:0];
    [(NSDateFormatter *)self->_timeFormatter setTimeStyle:1];
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = QLLocalizedString();
  v13 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:dateCopy];
  v14 = [v11 stringWithFormat:v12, senderCopy, v13];

  objc_sync_exit(v8);

  return v14;
}

- (id)_originalStringDayWithSender:(id)sender date:(id)date
{
  senderCopy = sender;
  dateCopy = date;
  if (!self->_weekdayFormatter)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    weekdayFormatter = self->_weekdayFormatter;
    self->_weekdayFormatter = v8;

    [(NSDateFormatter *)self->_weekdayFormatter setDateFormat:@"EEEE"];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = QLLocalizedString();
  v12 = [(NSDateFormatter *)self->_weekdayFormatter stringFromDate:dateCopy];
  v13 = [v10 stringWithFormat:v11, senderCopy, v12];

  return v13;
}

- (id)_originalStringOnDateWithSender:(id)sender date:(id)date
{
  senderCopy = sender;
  dateCopy = date;
  if (!self->_dateFormatter)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v8;

    [(NSDateFormatter *)self->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = QLLocalizedString();
  v12 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:dateCopy];
  v13 = [v10 stringWithFormat:v11, senderCopy, v12];

  return v13;
}

@end