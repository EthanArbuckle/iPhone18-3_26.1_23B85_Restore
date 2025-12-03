@interface RAPReportComposerLabelStatusSection
- (RAPReportComposerLabelStatusSection)initWithCorrectableFlag:(id)flag;
- (id)cellForRowAtIndex:(int64_t)index;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
@end

@implementation RAPReportComposerLabelStatusSection

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(RAPTablePartSection *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  [(RAPPlaceCorrectableFlag *)self->_correctableFlag setValue:[(RAPPlaceCorrectableFlag *)self->_correctableFlag value]^ 1];
  tableView2 = [(RAPTablePartSection *)self tableView];
  v9 = [tableView2 cellForRowAtIndexPath:pathCopy];

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

- (id)cellForRowAtIndex:(int64_t)index
{
  dequeueDefaultSingleLineTableViewCell = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  [dequeueDefaultSingleLineTableViewCell setSelectionStyle:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Remove Label [RAP]" value:@"localized string not found" table:0];
  textLabel = [dequeueDefaultSingleLineTableViewCell textLabel];
  [textLabel setText:v6];

  if ([(RAPPlaceCorrectableFlag *)self->_correctableFlag value])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [dequeueDefaultSingleLineTableViewCell setAccessoryType:v8];

  return dequeueDefaultSingleLineTableViewCell;
}

- (RAPReportComposerLabelStatusSection)initWithCorrectableFlag:(id)flag
{
  flagCopy = flag;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Remove Label [RAP]" value:@"localized string not found" table:0];

  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v11.receiver = self;
  v11.super_class = RAPReportComposerLabelStatusSection;
  v9 = [(RAPTableCheckmarkRadioSection *)&v11 initWithOwner:0 initialValues:v8 initialSelectedValue:0 configureForValue:0 selection:0];

  if (v9)
  {
    objc_storeStrong(&v9->_correctableFlag, flag);
  }

  return v9;
}

@end