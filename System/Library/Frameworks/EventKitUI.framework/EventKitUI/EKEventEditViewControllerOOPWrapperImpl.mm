@interface EKEventEditViewControllerOOPWrapperImpl
- (BOOL)hasUnsavedChanges;
- (CGSize)preferredContentSize;
- (EKEvent)event;
- (EKEventEditViewControllerOOPWrapperImpl)initWithViewID:(id)a3;
- (EKEventEditViewDelegate)editViewDelegate;
- (EKEventStore)eventStore;
- (UIColor)editorBackgroundColor;
- (void)cancelEditing;
- (void)focusAndSelectStartDate;
- (void)focusAndSelectTitle;
- (void)focusTitle;
- (void)setDefaultCalendar:(id)a3;
- (void)setEditViewDelegate:(id)a3;
- (void)setEditorBackgroundColor:(id)a3;
- (void)setEvent:(id)a3;
- (void)setEventStore:(id)a3;
- (void)viewDidLoad;
@end

@implementation EKEventEditViewControllerOOPWrapperImpl

- (EKEventEditViewControllerOOPWrapperImpl)initWithViewID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = EKEventEditViewControllerOOPWrapperImpl;
  v6 = [(EKEventEditViewControllerOOPWrapperImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewID, a3);
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

  v4 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v7 didMoveToParentViewController:self];

  v8 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v9 = [v8 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = MEMORY[0x1E696ACD8];
  v47 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v46 = [v47 view];
  v44 = [v46 leadingAnchor];
  v45 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  v43 = [v45 leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v49[0] = v42;
  v41 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v40 = [v41 view];
  v38 = [v40 topAnchor];
  v39 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  v37 = [v39 topAnchor];
  v35 = [v38 constraintEqualToAnchor:v37];
  v49[1] = v35;
  v34 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v33 = [v34 view];
  v31 = [v33 trailingAnchor];
  v32 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  v10 = [v32 trailingAnchor];
  v11 = [v31 constraintEqualToAnchor:v10];
  v49[2] = v11;
  v12 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v13 = [v12 view];
  v14 = [v13 bottomAnchor];
  v15 = [(EKEventEditViewControllerOOPWrapperImpl *)self view];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v49[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v36 activateConstraints:v18];

  v19 = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:0];
  v20 = [(EKEventEditViewControllerOOPWrapperImpl *)self event];
  v21 = [v20 calendar];
  if (v21)
  {

LABEL_10:
    return;
  }

  v22 = [(EKEventEditViewControllerOOPWrapperImpl *)self event];
  v23 = [v22 isNew];

  if (v23 && v19 == 3)
  {
    v24 = [(EKEventEditViewControllerOOPWrapperImpl *)self editViewDelegate];
    if (!v24 || (v25 = v24, -[EKEventEditViewControllerOOPWrapperImpl editViewDelegate](self, "editViewDelegate"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_opt_respondsToSelector(), v26, v25, (v27 & 1) == 0) || (-[EKEventEditViewControllerOOPWrapperImpl editViewDelegate](self, "editViewDelegate"), v28 = objc_claimAutoreleasedReturnValue(), -[EKEventEditViewControllerOOPWrapperImpl _ekEventEditViewController](self, "_ekEventEditViewController"), v29 = objc_claimAutoreleasedReturnValue(), [v28 eventEditViewControllerDefaultCalendarForNewEvents:v29], v20 = objc_claimAutoreleasedReturnValue(), v29, v28, !v20))
    {
      v30 = [(EKEventEditViewControllerOOPWrapperImpl *)self eventStore];
      v20 = [v30 defaultCalendarForNewEvents];
    }

    [(EKEventEditViewControllerOOPWrapperImpl *)self setDefaultCalendar:v20];
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

- (void)setEditViewDelegate:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setEditViewDelegate:v4];
}

- (EKEventEditViewDelegate)editViewDelegate
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 editViewDelegate];

  return v3;
}

- (void)setEventStore:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setEventStore:v4];
}

- (EKEventStore)eventStore
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 eventStore];

  return v3;
}

- (void)setEvent:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setEvent:v4];
}

- (EKEvent)event
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 event];

  return v3;
}

- (void)cancelEditing
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v2 cancelEditing];
}

- (void)setDefaultCalendar:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setDefaultCalendar:v4];
}

- (void)setEditorBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  [v5 setEditorBackgroundColor:v4];
}

- (UIColor)editorBackgroundColor
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 editorBackgroundColor];

  return v3;
}

- (BOOL)hasUnsavedChanges
{
  v2 = [(EKEventEditViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 hasUnsavedChanges];

  return v3;
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