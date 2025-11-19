@interface AddEventViewControllerManager
- (AddEventViewControllerManager)initWithCalendarModel:(id)a3;
- (AddItemViewControllerManagerDelegate)addItemViewControllerManagerDelegate;
- (EKCalendar)calendarToMakeVisibleOnSave;
- (NSString)newItemBackButtonTitle;
- (NSString)newItemTitle;
- (id)createViewController:(id)a3;
- (id)pasteboardManagerForEventEditViewController:(id)a3;
- (void)attemptDisplayReviewPrompt;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)updateStateFromUI:(id)a3;
@end

@implementation AddEventViewControllerManager

- (AddEventViewControllerManager)initWithCalendarModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AddEventViewControllerManager;
  v6 = [(AddEventViewControllerManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (NSString)newItemTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"NewEventItemTitle" value:@"Event" table:0];

  return v3;
}

- (NSString)newItemBackButtonTitle
{
  if (CalSystemSolariumEnabled())
  {
    return &stru_1002133B8;
  }

  v3 = +[NSBundle mainBundle];
  v2 = [v3 localizedStringForKey:@"NewEventItemBackButtonTitle" value:@"New Event" table:0];

  return v2;
}

- (id)createViewController:(id)a3
{
  viewController = self->_viewController;
  if (!viewController)
  {
    v5 = a3;
    v6 = +[EKEventEditViewController editViewControllerImplementation];
    v7 = self->_viewController;
    self->_viewController = v6;

    v8 = [v5 addItemState];
    v9 = [v8 event];
    [(EKEventEditViewControllerImpl *)self->_viewController setEvent:v9];

    v10 = [v5 addItemState];
    v11 = [v10 event];
    v12 = [v11 eventStore];
    [(EKEventEditViewControllerImpl *)self->_viewController setEventStore:v12];

    [(EKEventEditViewControllerImpl *)self->_viewController setEditViewDelegate:self];
    -[EKEventEditViewControllerImpl setTimeImplicitlySet:](self->_viewController, "setTimeImplicitlySet:", [v5 creationMethod] == 2);
    v13 = [v5 suggestionKey];
    [(EKEventEditViewControllerImpl *)self->_viewController setSuggestionKey:v13];

    -[EKEventEditViewControllerImpl setEventCreationMethod:](self->_viewController, "setEventCreationMethod:", [v5 creationMethod]);
    -[EKEventEditViewControllerImpl setEventCreationViewStart:](self->_viewController, "setEventCreationViewStart:", [v5 creationViewStart]);
    v14 = [v5 addItemState];

    v15 = [v14 event];
    v16 = [v15 startDate];
    originalStartDate = self->_originalStartDate;
    self->_originalStartDate = v16;

    viewController = self->_viewController;
  }

  return viewController;
}

- (void)updateStateFromUI:(id)a3
{
  v7 = a3;
  if (CalDraftUIEnabled())
  {
    [(EKEventEditViewControllerImpl *)self->_viewController updateEKEventForDockedView];
  }

  v4 = [(EKEventEditViewControllerImpl *)self->_viewController event];
  v5 = [v4 startDate];
  v6 = [v5 isEqualToDate:self->_originalStartDate];

  if ((v6 & 1) == 0)
  {
    [v7 setExplicitTime:1];
  }
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  v2 = [(EKEventEditViewControllerImpl *)self->_viewController event];
  v3 = [v2 calendar];

  return v3;
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_addItemViewControllerManagerDelegate);
  [WeakRetained addItemViewControllerManager:self didCompleteWithAction:a4];
}

- (id)pasteboardManagerForEventEditViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_addItemViewControllerManagerDelegate);
  v4 = [WeakRetained pasteboardManager];

  return v4;
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_addItemViewControllerManagerDelegate);
  [WeakRetained attemptDisplayReviewPrompt];
}

- (AddItemViewControllerManagerDelegate)addItemViewControllerManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addItemViewControllerManagerDelegate);

  return WeakRetained;
}

@end