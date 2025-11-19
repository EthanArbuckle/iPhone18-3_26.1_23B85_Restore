@interface TTRComplicationReminder
- (TTRComplicationReminder)initWithCreationDate:(id)a3 dueDate:(id)a4 title:(id)a5;
- (id)debugDescription;
- (id)makeDueTimeTextProviderUsingCalendar:(id)a3 dropMinutesForRoundHours:(BOOL)a4;
- (id)makeTitleTextProvider;
@end

@implementation TTRComplicationReminder

- (id)makeDueTimeTextProviderUsingCalendar:(id)a3 dropMinutesForRoundHours:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TTRComplicationReminder *)self dueDate];
  v8 = [v7 date];
  v9 = [CLKTimeTextProvider textProviderWithDate:v8];

  [v9 setPrefersDesignatorToMinutes:1];
  if (v4)
  {
    v10 = [v9 date];
    [v9 setDisallowBothMinutesAndDesignator:{objc_msgSend(v6, "ttr_isDateAtARoundHour:", v10)}];
  }

  return v9;
}

- (id)makeTitleTextProvider
{
  v2 = [(TTRComplicationReminder *)self title];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_10758;
  }

  v5 = [CLKSimpleTextProvider textProviderWithText:v4];

  return v5;
}

- (TTRComplicationReminder)initWithCreationDate:(id)a3 dueDate:(id)a4 title:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = TTRComplicationReminder;
  v11 = [(TTRComplicationReminder *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    creationDate = v11->_creationDate;
    v11->_creationDate = v12;

    objc_storeStrong(&v11->_dueDate, a4);
    v14 = [v10 copy];
    title = v11->_title;
    v11->_title = v14;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(TTRComplicationReminder *)self title];
  v5 = [(TTRComplicationReminder *)self creationDate];
  v6 = [(TTRComplicationReminder *)self dueDate];
  v7 = [NSString stringWithFormat:@"<%@ %p: title=%@, creationDate=%@, dueDate=%@>", v3, self, v4, v5, v6];

  return v7;
}

@end