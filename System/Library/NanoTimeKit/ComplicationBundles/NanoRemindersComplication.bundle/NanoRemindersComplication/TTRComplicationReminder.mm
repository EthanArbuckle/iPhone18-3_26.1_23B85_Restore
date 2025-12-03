@interface TTRComplicationReminder
- (TTRComplicationReminder)initWithCreationDate:(id)date dueDate:(id)dueDate title:(id)title;
- (id)debugDescription;
- (id)makeDueTimeTextProviderUsingCalendar:(id)calendar dropMinutesForRoundHours:(BOOL)hours;
- (id)makeTitleTextProvider;
@end

@implementation TTRComplicationReminder

- (id)makeDueTimeTextProviderUsingCalendar:(id)calendar dropMinutesForRoundHours:(BOOL)hours
{
  hoursCopy = hours;
  calendarCopy = calendar;
  dueDate = [(TTRComplicationReminder *)self dueDate];
  date = [dueDate date];
  v9 = [CLKTimeTextProvider textProviderWithDate:date];

  [v9 setPrefersDesignatorToMinutes:1];
  if (hoursCopy)
  {
    date2 = [v9 date];
    [v9 setDisallowBothMinutesAndDesignator:{objc_msgSend(calendarCopy, "ttr_isDateAtARoundHour:", date2)}];
  }

  return v9;
}

- (id)makeTitleTextProvider
{
  title = [(TTRComplicationReminder *)self title];
  v3 = title;
  if (title)
  {
    v4 = title;
  }

  else
  {
    v4 = &stru_10758;
  }

  v5 = [CLKSimpleTextProvider textProviderWithText:v4];

  return v5;
}

- (TTRComplicationReminder)initWithCreationDate:(id)date dueDate:(id)dueDate title:(id)title
{
  dateCopy = date;
  dueDateCopy = dueDate;
  titleCopy = title;
  v17.receiver = self;
  v17.super_class = TTRComplicationReminder;
  v11 = [(TTRComplicationReminder *)&v17 init];
  if (v11)
  {
    v12 = [dateCopy copy];
    creationDate = v11->_creationDate;
    v11->_creationDate = v12;

    objc_storeStrong(&v11->_dueDate, dueDate);
    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  title = [(TTRComplicationReminder *)self title];
  creationDate = [(TTRComplicationReminder *)self creationDate];
  dueDate = [(TTRComplicationReminder *)self dueDate];
  v7 = [NSString stringWithFormat:@"<%@ %p: title=%@, creationDate=%@, dueDate=%@>", v3, self, title, creationDate, dueDate];

  return v7;
}

@end