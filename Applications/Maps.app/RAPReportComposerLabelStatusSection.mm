@interface RAPReportComposerLabelStatusSection
- (RAPReportComposerLabelStatusSection)initWithCorrectableFlag:(id)a3;
- (id)cellForRowAtIndex:(int64_t)a3;
- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4;
@end

@implementation RAPReportComposerLabelStatusSection

- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RAPTablePartSection *)self tableView];
  [v6 deselectRowAtIndexPath:v5 animated:1];

  [(RAPPlaceCorrectableFlag *)self->_correctableFlag setValue:[(RAPPlaceCorrectableFlag *)self->_correctableFlag value]^ 1];
  v7 = [(RAPTablePartSection *)self tableView];
  v9 = [v7 cellForRowAtIndexPath:v5];

  if ([(RAPPlaceCorrectableFlag *)self->_correctableFlag value])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [v9 setAccessoryType:v8];
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v4 = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  [v4 setSelectionStyle:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Remove Label [RAP]" value:@"localized string not found" table:0];
  v7 = [v4 textLabel];
  [v7 setText:v6];

  if ([(RAPPlaceCorrectableFlag *)self->_correctableFlag value])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [v4 setAccessoryType:v8];

  return v4;
}

- (RAPReportComposerLabelStatusSection)initWithCorrectableFlag:(id)a3
{
  v5 = a3;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Remove Label [RAP]" value:@"localized string not found" table:0];

  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v11.receiver = self;
  v11.super_class = RAPReportComposerLabelStatusSection;
  v9 = [(RAPTableCheckmarkRadioSection *)&v11 initWithOwner:0 initialValues:v8 initialSelectedValue:0 configureForValue:0 selection:0];

  if (v9)
  {
    objc_storeStrong(&v9->_correctableFlag, a3);
  }

  return v9;
}

@end