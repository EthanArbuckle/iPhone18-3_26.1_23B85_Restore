@interface QLOriginalDateFormatProvider
- (id)_originalStringAtTimeWithSender:(id)a3 date:(id)a4;
- (id)_originalStringDayWithSender:(id)a3 date:(id)a4;
- (id)_originalStringOnDateWithSender:(id)a3 date:(id)a4;
- (id)originalStringWithSender:(id)a3 date:(id)a4 now:(id)a5;
- (unint64_t)_originalFormatWithDate:(id)a3 now:(id)a4;
@end

@implementation QLOriginalDateFormatProvider

- (id)originalStringWithSender:(id)a3 date:(id)a4 now:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(QLOriginalDateFormatProvider *)self _originalFormatWithDate:v9 now:a5];
  v11 = 0;
  if (v10 > 1)
  {
    switch(v10)
    {
      case 2:
        v13 = MEMORY[0x277CCACA8];
        v14 = QLLocalizedString();
        v11 = [v13 stringWithFormat:v14, v8];

        goto LABEL_13;
      case 3:
        v12 = [(QLOriginalDateFormatProvider *)self _originalStringDayWithSender:v8 date:v9];
        break;
      case 4:
        v12 = [(QLOriginalDateFormatProvider *)self _originalStringOnDateWithSender:v8 date:v9];
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

    v12 = [(QLOriginalDateFormatProvider *)self _originalStringAtTimeWithSender:v8 date:v9];
LABEL_11:
    v11 = v12;
    goto LABEL_13;
  }

  v11 = &stru_284D5E510;
LABEL_13:

  return v11;
}

- (unint64_t)_originalFormatWithDate:(id)a3 now:(id)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v7 = MEMORY[0x277CBEA80];
    v8 = a4;
    v9 = [v7 currentCalendar];
    v10 = [v9 components:30 fromDate:v8];

    v11 = [v9 dateFromComponents:v10];
    v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v12 setDay:-6];
    v13 = [v9 dateByAddingComponents:v12 toDate:v11 options:0];
    if ([v5 compare:v13] == -1)
    {
      v6 = 4;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v14 setDay:-1];
      v15 = [v9 dateByAddingComponents:v14 toDate:v11 options:0];
      if ([v5 compare:v15] == -1)
      {
        v6 = 3;
      }

      else if ([v5 compare:v11] == -1)
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

- (id)_originalStringAtTimeWithSender:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v7];
  v14 = [v11 stringWithFormat:v12, v6, v13];

  objc_sync_exit(v8);

  return v14;
}

- (id)_originalStringDayWithSender:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_weekdayFormatter)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    weekdayFormatter = self->_weekdayFormatter;
    self->_weekdayFormatter = v8;

    [(NSDateFormatter *)self->_weekdayFormatter setDateFormat:@"EEEE"];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = QLLocalizedString();
  v12 = [(NSDateFormatter *)self->_weekdayFormatter stringFromDate:v7];
  v13 = [v10 stringWithFormat:v11, v6, v12];

  return v13;
}

- (id)_originalStringOnDateWithSender:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v7];
  v13 = [v10 stringWithFormat:v11, v6, v12];

  return v13;
}

@end