@interface EKEventShowInCalendarDetailItem
- (EKEventShowInCalendarDetailItem)initWithModel:(id)model;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)_dayPreviewViewController;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_datesForPreviewViewControllerWithStartDate:(id *)date endDate:(id *)endDate;
- (void)_reloadContainedViewControllerIfNeeded;
@end

@implementation EKEventShowInCalendarDetailItem

- (EKEventShowInCalendarDetailItem)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = EKEventShowInCalendarDetailItem;
  v6 = [(EKEventShowInCalendarDetailItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (void)_reloadContainedViewControllerIfNeeded
{
  if (self->_containedDayViewController)
  {
    v5 = 0;
    v6 = 0;
    [(EKEventShowInCalendarDetailItem *)self _datesForPreviewViewControllerWithStartDate:&v6 endDate:&v5];
    v3 = v6;
    v4 = v5;
    [(EKDayPreviewController *)self->_containedDayViewController reloadWithNewDate:v3 event:self->super._event overriddenEventStartDate:v3 overriddenEventEndDate:v4];
  }
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = EKEventShowInCalendarDetailItem;
  [(EKEventDetailItem *)&v5 defaultCellHeightForSubitemAtIndex:index forWidth:width];
  return result;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v6 = self->_cell;
    self->_cell = v5;

    [(EKUITableViewCell *)self->_cell setAccessoryType:1];
    v7 = EventKitUIBundle();
    v8 = [v7 localizedStringForKey:@"Show in Calendar" value:&stru_1F4EF6790 table:0];
    textLabel = [(EKUITableViewCell *)self->_cell textLabel];
    [textLabel setText:v8];

    cell = self->_cell;
  }

  return cell;
}

- (void)_datesForPreviewViewControllerWithStartDate:(id *)date endDate:(id *)endDate
{
  startDate = [(EKEvent *)self->super._event startDate];
  proposedTime = [(EKEventShowInCalendarDetailItem *)self proposedTime];

  if (proposedTime)
  {
    proposedTime2 = [(EKEventShowInCalendarDetailItem *)self proposedTime];

    endDateUnadjustedForLegacyClients = [(EKEvent *)self->super._event endDateUnadjustedForLegacyClients];
    startDate2 = [(EKEvent *)self->super._event startDate];
    [endDateUnadjustedForLegacyClients timeIntervalSinceDate:startDate2];
    v12 = v11;

    v13 = MEMORY[0x1E695DF00];
    proposedTime3 = [(EKEventShowInCalendarDetailItem *)self proposedTime];
    v15 = [v13 dateWithTimeInterval:proposedTime3 sinceDate:v12];

    v16 = proposedTime2;
  }

  else
  {
    v15 = 0;
    v16 = startDate;
  }

  v20 = v16;
  v17 = v16;
  *date = v20;
  v18 = v15;
  *endDate = v15;
}

- (id)_dayPreviewViewController
{
  containedDayViewController = self->_containedDayViewController;
  if (!containedDayViewController)
  {
    v9 = 0;
    v10 = 0;
    [(EKEventShowInCalendarDetailItem *)self _datesForPreviewViewControllerWithStartDate:&v10 endDate:&v9];
    v4 = v10;
    v5 = v9;
    v6 = [[EKDayPreviewController alloc] initWithDate:v4 event:self->super._event overriddenEventStartDate:v4 overriddenEventEndDate:v5 model:self->_model];
    v7 = self->_containedDayViewController;
    self->_containedDayViewController = v6;

    [(EKDayPreviewController *)self->_containedDayViewController setStyle:2];
    containedDayViewController = self->_containedDayViewController;
  }

  return containedDayViewController;
}

@end