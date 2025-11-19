@interface EKEventPreviewDetailItem
- (EKEventPreviewDetailItem)initWithModel:(id)a3;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)_dayPreviewViewController;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)_datesForPreviewViewControllerWithStartDate:(id *)a3 endDate:(id *)a4;
- (void)_reloadContainedViewControllerIfNeeded;
- (void)eventViewController:(id)a3 didSelectReadOnlySubitem:(unint64_t)a4;
@end

@implementation EKEventPreviewDetailItem

- (EKEventPreviewDetailItem)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKEventPreviewDetailItem;
  v6 = [(EKEventPreviewDetailItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (void)_reloadContainedViewControllerIfNeeded
{
  if (self->_containedDayViewController)
  {
    v5 = 0;
    v6 = 0;
    [(EKEventPreviewDetailItem *)self _datesForPreviewViewControllerWithStartDate:&v6 endDate:&v5];
    v3 = v6;
    v4 = v5;
    [(EKDayPreviewController *)self->_containedDayViewController reloadWithNewDate:v3 event:self->super._event overriddenEventStartDate:v3 overriddenEventEndDate:v4];
  }
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  containedDayViewController = self->_containedDayViewController;
  if (containedDayViewController)
  {
    [(EKDayPreviewController *)containedDayViewController preferredContentSize:a3];
    v7 = v6;
  }

  else
  {
    v7 = 1.0 / EKUIGoldenRatioPhi() * a4;
  }

  return CalCeilToScreenScale(v7);
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
    v6 = self->_cell;
    self->_cell = &v5->super;

    v7 = [(EKEventPreviewDetailItem *)self _dayPreviewViewController];
    [v7 setHidesAllDayEvents:1];
    if ([(EKEventPreviewDetailItem *)self hideBottomSeparator])
    {
      [(UITableViewCell *)self->_cell setSeparatorInset:0.0, 0.0, 0.0, 1.79769313e308];
    }

    v8 = [(EKEventDetailItem *)self delegate];
    v9 = [v8 viewControllerForEventItem:self];

    v27 = v9;
    [v7 setHostingViewController:v9];
    [v9 addChildViewController:v7];
    [v7 didMoveToParentViewController:v9];
    [v7 setRespectsSelectedCalendarsFilter:{-[EKEventPreviewDetailItem inlineDayViewRespectsSelectedCalendarsFilter](self, "inlineDayViewRespectsSelectedCalendarsFilter")}];
    v26 = [(UITableViewCell *)self->_cell contentView];
    v10 = [v7 view];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 addSubview:v10];
    v11 = [(UITableViewCell *)self->_cell setSelectionStyle:0];
    v12 = MEMORY[0x1E696ACD8];
    v13 = self->_cell;
    if (MEMORY[0x1D38B98D0](v11))
    {
      v14 = 5;
    }

    else
    {
      v14 = 17;
    }

    v15 = [v12 constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v13 attribute:v14 multiplier:1.0 constant:0.0];
    v16 = MEMORY[0x1E696ACD8];
    v17 = self->_cell;
    if (MEMORY[0x1D38B98D0]())
    {
      v18 = 6;
    }

    else
    {
      v18 = 18;
    }

    v19 = [v16 constraintWithItem:v10 attribute:6 relatedBy:0 toItem:v17 attribute:v18 multiplier:1.0 constant:0.0];
    v20 = MEMORY[0x1E696ACD8];
    v28[0] = v15;
    v28[1] = v19;
    v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:3 relatedBy:0 toItem:self->_cell attribute:3 multiplier:1.0 constant:0.0];
    v28[2] = v21;
    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:4 relatedBy:0 toItem:self->_cell attribute:4 multiplier:1.0 constant:0.0];
    v28[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v20 activateConstraints:v23];

    cell = self->_cell;
  }

  [(UITableViewCell *)cell setAccessibilityIdentifier:@"event-details-preview-cell"];
  v24 = self->_cell;

  return v24;
}

- (void)_datesForPreviewViewControllerWithStartDate:(id *)a3 endDate:(id *)a4
{
  v19 = [(EKEvent *)self->super._event startDate];
  v7 = [(EKEventPreviewDetailItem *)self proposedTime];

  if (v7)
  {
    v8 = [(EKEventPreviewDetailItem *)self proposedTime];

    v9 = [(EKEvent *)self->super._event endDateUnadjustedForLegacyClients];
    v10 = [(EKEvent *)self->super._event startDate];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;

    v13 = MEMORY[0x1E695DF00];
    v14 = [(EKEventPreviewDetailItem *)self proposedTime];
    v15 = [v13 dateWithTimeInterval:v14 sinceDate:v12];

    v16 = v8;
  }

  else
  {
    v15 = 0;
    v16 = v19;
  }

  v20 = v16;
  v17 = v16;
  *a3 = v20;
  v18 = v15;
  *a4 = v15;
}

- (id)_dayPreviewViewController
{
  containedDayViewController = self->_containedDayViewController;
  if (!containedDayViewController)
  {
    if ([(EKEvent *)self->super._event isIntegrationEvent])
    {
      v4 = 5;
    }

    else
    {
      v4 = 0;
    }

    if ([(EKEvent *)self->super._event isIntegrationEvent])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.8;
    }

    v11 = 0;
    v12 = 0;
    [(EKEventPreviewDetailItem *)self _datesForPreviewViewControllerWithStartDate:&v12 endDate:&v11];
    v6 = v12;
    v7 = v11;
    v8 = [[EKDayPreviewController alloc] initWithDate:v6 event:self->super._event overriddenEventStartDate:v6 overriddenEventEndDate:v7 model:self->_model overriddenDayViewHourScale:v4 overriddenDayViewMinHourRange:v5];
    v9 = self->_containedDayViewController;
    self->_containedDayViewController = v8;

    containedDayViewController = self->_containedDayViewController;
  }

  return containedDayViewController;
}

- (void)eventViewController:(id)a3 didSelectReadOnlySubitem:(unint64_t)a4
{
  v5 = a3;
  if (self->_cell && ([(EKEvent *)self->super._event isIntegrationEvent]& 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__EKEventPreviewDetailItem_eventViewController_didSelectReadOnlySubitem___block_invoke;
    v6[3] = &unk_1E843EC60;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:7 delay:v6 usingSpringWithDamping:&__block_literal_global_13 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  }
}

uint64_t __73__EKEventPreviewDetailItem_eventViewController_didSelectReadOnlySubitem___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) toggleExpandedState];
  v2 = [*(a1 + 32) delegate];
  [v2 eventDetailItemWantsRefeshForHeightChange];

  [*(*(a1 + 32) + 80) layoutSubviews];
  v3 = *(*(a1 + 32) + 80);

  return [v3 layoutBelowIfNeeded];
}

@end