@interface AddEventViewControllerManager
- (AddEventViewControllerManager)initWithCalendarModel:(id)model;
- (AddItemViewControllerManagerDelegate)addItemViewControllerManagerDelegate;
- (EKCalendar)calendarToMakeVisibleOnSave;
- (NSString)newItemBackButtonTitle;
- (NSString)newItemTitle;
- (id)createViewController:(id)controller;
- (id)pasteboardManagerForEventEditViewController:(id)controller;
- (void)attemptDisplayReviewPrompt;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)updateStateFromUI:(id)i;
@end

@implementation AddEventViewControllerManager

- (AddEventViewControllerManager)initWithCalendarModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = AddEventViewControllerManager;
  v6 = [(AddEventViewControllerManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
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

- (id)createViewController:(id)controller
{
  viewController = self->_viewController;
  if (!viewController)
  {
    controllerCopy = controller;
    v6 = +[EKEventEditViewController editViewControllerImplementation];
    v7 = self->_viewController;
    self->_viewController = v6;

    addItemState = [controllerCopy addItemState];
    event = [addItemState event];
    [(EKEventEditViewControllerImpl *)self->_viewController setEvent:event];

    addItemState2 = [controllerCopy addItemState];
    event2 = [addItemState2 event];
    eventStore = [event2 eventStore];
    [(EKEventEditViewControllerImpl *)self->_viewController setEventStore:eventStore];

    [(EKEventEditViewControllerImpl *)self->_viewController setEditViewDelegate:self];
    -[EKEventEditViewControllerImpl setTimeImplicitlySet:](self->_viewController, "setTimeImplicitlySet:", [controllerCopy creationMethod] == 2);
    suggestionKey = [controllerCopy suggestionKey];
    [(EKEventEditViewControllerImpl *)self->_viewController setSuggestionKey:suggestionKey];

    -[EKEventEditViewControllerImpl setEventCreationMethod:](self->_viewController, "setEventCreationMethod:", [controllerCopy creationMethod]);
    -[EKEventEditViewControllerImpl setEventCreationViewStart:](self->_viewController, "setEventCreationViewStart:", [controllerCopy creationViewStart]);
    addItemState3 = [controllerCopy addItemState];

    event3 = [addItemState3 event];
    startDate = [event3 startDate];
    originalStartDate = self->_originalStartDate;
    self->_originalStartDate = startDate;

    viewController = self->_viewController;
  }

  return viewController;
}

- (void)updateStateFromUI:(id)i
{
  iCopy = i;
  if (CalDraftUIEnabled())
  {
    [(EKEventEditViewControllerImpl *)self->_viewController updateEKEventForDockedView];
  }

  event = [(EKEventEditViewControllerImpl *)self->_viewController event];
  startDate = [event startDate];
  v6 = [startDate isEqualToDate:self->_originalStartDate];

  if ((v6 & 1) == 0)
  {
    [iCopy setExplicitTime:1];
  }
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  event = [(EKEventEditViewControllerImpl *)self->_viewController event];
  calendar = [event calendar];

  return calendar;
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  WeakRetained = objc_loadWeakRetained(&self->_addItemViewControllerManagerDelegate);
  [WeakRetained addItemViewControllerManager:self didCompleteWithAction:action];
}

- (id)pasteboardManagerForEventEditViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_addItemViewControllerManagerDelegate);
  pasteboardManager = [WeakRetained pasteboardManager];

  return pasteboardManager;
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