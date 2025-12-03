@interface EKEventEditViewControllerOOPWrapperImpl
- (BOOL)hasUnsavedChanges;
- (CGSize)preferredContentSize;
- (EKEvent)event;
- (EKEventEditViewControllerOOPWrapperImpl)initWithViewID:(id)d;
- (EKEventEditViewDelegate)editViewDelegate;
- (EKEventStore)eventStore;
- (UIColor)editorBackgroundColor;
- (void)cancelEditing;
- (void)focusAndSelectStartDate;
- (void)focusAndSelectTitle;
- (void)focusTitle;
- (void)setDefaultCalendar:(id)calendar;
- (void)setEditViewDelegate:(id)delegate;
- (void)setEditorBackgroundColor:(id)color;
- (void)setEvent:(id)event;
- (void)setEventStore:(id)store;
- (void)viewDidLoad;
@end

@implementation EKEventEditViewControllerOOPWrapperImpl

- (EKEventEditViewControllerOOPWrapperImpl)initWithViewID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = EKEventEditViewControllerOOPWrapperImpl;
  v6 = [(EKEventEditViewControllerOOPWrapperImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewID, d);
    v8 = objc_alloc_init(_TtC10EventKitUI32EKEventEditViewControllerOOPImpl);
    [(EKEventEditViewControllerOOPWrapperImpl *)v7 setVc:v8];
  }

  return v7;
}

- (void)viewDidLoad
{
  v49[4] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = EKEventEditViewControllerOOPWrapperImpl;
  [(EKEventEditViewControllerOOPWrapperImpl *)&v48 viewDidLoad];
  v3 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [(EKEventEditViewControllerOOPWrapperImpl *)self addChildViewController:v3];

  view = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  view2 = [v5 view];
  [view addSubview:view2];

  v7 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v7 didMoveToParentViewController:self];

  v8 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  view3 = [v8 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = MEMORY[0x1E696ACD8];
  v47 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  view4 = [v47 view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[0] = v42;
  v41 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  view6 = [v41 view];
  topAnchor = [view6 topAnchor];
  view7 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  topAnchor2 = [view7 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[1] = v35;
  v34 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  view8 = [v34 view];
  trailingAnchor = [view8 trailingAnchor];
  view9 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[2] = v11;
  v12 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  view10 = [v12 view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v36 activateConstraints:v18];

  v19 = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:0];
  event = [(EKEventEditViewControllerOOPWrapperImpl *)self event];
  calendar = [event calendar];
  if (calendar)
  {

LABEL_10:
    return;
  }

  event2 = [(EKEventEditViewControllerOOPWrapperImpl *)self event];
  isNew = [event2 isNew];

  if (isNew && v19 == 3)
  {
    editViewDelegate = [(EKEventEditViewControllerOOPWrapperImpl *)self editViewDelegate];
    if (!editViewDelegate || (v25 = editViewDelegate, -[EKEventEditViewControllerOOPWrapperImpl editViewDelegate](self, "editViewDelegate"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_opt_respondsToSelector(), v26, v25, (v27 & 1) == 0) || (-[EKEventEditViewControllerOOPWrapperImpl editViewDelegate](self, "editViewDelegate"), v28 = objc_claimAutoreleasedReturnValue(), -[EKEventEditViewControllerOOPWrapperImpl _ekEventEditViewController](self, "_ekEventEditViewController"), v29 = objc_claimAutoreleasedReturnValue(), [v28 eventEditViewControllerDefaultCalendarForNewEvents:v29], event = objc_claimAutoreleasedReturnValue(), v29, v28, !event))
    {
      eventStore = [(EKEventEditViewControllerOOPWrapperImpl *)self eventStore];
      event = [eventStore defaultCalendarForNewEvents];
    }

    [(EKEventEditViewControllerOOPWrapperImpl *)self setDefaultCalendar:event];
    goto LABEL_10;
  }
}

- (CGSize)preferredContentSize
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setEditViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setEditViewDelegate:delegateCopy];
}

- (EKEventEditViewDelegate)editViewDelegate
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  editViewDelegate = [v2 editViewDelegate];

  return editViewDelegate;
}

- (void)setEventStore:(id)store
{
  storeCopy = store;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setEventStore:storeCopy];
}

- (EKEventStore)eventStore
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  eventStore = [v2 eventStore];

  return eventStore;
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setEvent:eventCopy];
}

- (EKEvent)event
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  event = [v2 event];

  return event;
}

- (void)cancelEditing
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v2 cancelEditing];
}

- (void)setDefaultCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setDefaultCalendar:calendarCopy];
}

- (void)setEditorBackgroundColor:(id)color
{
  colorCopy = color;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setEditorBackgroundColor:colorCopy];
}

- (UIColor)editorBackgroundColor
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  editorBackgroundColor = [v2 editorBackgroundColor];

  return editorBackgroundColor;
}

- (BOOL)hasUnsavedChanges
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  hasUnsavedChanges = [v2 hasUnsavedChanges];

  return hasUnsavedChanges;
}

- (void)focusAndSelectTitle
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v2 focusAndSelectTitle];
}

- (void)focusAndSelectStartDate
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v2 focusAndSelectStartDate];
}

- (void)focusTitle
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v2 focusTitle];
}

@end