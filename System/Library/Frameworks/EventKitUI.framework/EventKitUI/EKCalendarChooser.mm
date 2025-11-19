@interface EKCalendarChooser
- (CGSize)preferredContentSize;
- (EKCalendarChooser)initWithRemoteUI:(BOOL)a3 selectionStyle:(int64_t)a4 displayStyle:(int64_t)a5 entityType:(unint64_t)a6 forEvent:(id)a7 eventStore:(id)a8 limitedToSource:(id)a9 showIdentityChooser:(BOOL)a10 showDelegateSetupCell:(BOOL)a11 showAccountStatus:(BOOL)a12;
- (EKCalendarChooser)initWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 entityType:(unint64_t)a5 forEvent:(id)a6 eventStore:(id)a7 limitedToSource:(id)a8 showIdentityChooser:(BOOL)a9 showDelegateSetupCell:(BOOL)a10 showAccountStatus:(BOOL)a11;
- (id)initWithSelectionStyle:(EKCalendarChooserSelectionStyle)selectionStyle displayStyle:(EKCalendarChooserDisplayStyle)displayStyle eventStore:(EKEventStore *)eventStore;
- (id)initWithSelectionStyle:(EKCalendarChooserSelectionStyle)style displayStyle:(EKCalendarChooserDisplayStyle)displayStyle entityType:(EKEntityType)entityType eventStore:(EKEventStore *)eventStore;
- (void)loadView;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation EKCalendarChooser

- (EKCalendarChooser)initWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 entityType:(unint64_t)a5 forEvent:(id)a6 eventStore:(id)a7 limitedToSource:(id)a8 showIdentityChooser:(BOOL)a9 showDelegateSetupCell:(BOOL)a10 showAccountStatus:(BOOL)a11
{
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = EKCalendarChooser;
  v20 = [(EKCalendarChooser *)&v25 initWithNibName:0 bundle:0];
  if (v20)
  {
    *(&v24 + 1) = __PAIR16__(a11, a10);
    LOBYTE(v24) = a9;
    v21 = [SwappableViewControllerImplementationFactory calendarChooserImplWithSelectionStyle:"calendarChooserImplWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:a3 entityType:a4 forEvent:a5 eventStore:v17 limitedToSource:v18 showIdentityChooser:v19 showDelegateSetupCell:v24 showAccountStatus:?];
    impl = v20->_impl;
    v20->_impl = v21;

    [(EKCalendarChooser *)v20 addChildViewController:v20->_impl];
    [(EKCalendarChooserImpl *)v20->_impl didMoveToParentViewController:v20];
    [(EKCalendarChooser *)v20 commonInit];
  }

  return v20;
}

- (id)initWithSelectionStyle:(EKCalendarChooserSelectionStyle)style displayStyle:(EKCalendarChooserDisplayStyle)displayStyle entityType:(EKEntityType)entityType eventStore:(EKEventStore *)eventStore
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 0;
  return [EKCalendarChooser initWithSelectionStyle:"initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:style entityType:displayStyle forEvent:entityType eventStore:0 limitedToSource:eventStore showIdentityChooser:0 showDelegateSetupCell:v7 showAccountStatus:?];
}

- (id)initWithSelectionStyle:(EKCalendarChooserSelectionStyle)selectionStyle displayStyle:(EKCalendarChooserDisplayStyle)displayStyle eventStore:(EKEventStore *)eventStore
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [EKCalendarChooser initWithSelectionStyle:"initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:selectionStyle entityType:displayStyle forEvent:0 eventStore:0 limitedToSource:eventStore showIdentityChooser:0 showDelegateSetupCell:v6 showAccountStatus:?];
}

- (EKCalendarChooser)initWithRemoteUI:(BOOL)a3 selectionStyle:(int64_t)a4 displayStyle:(int64_t)a5 entityType:(unint64_t)a6 forEvent:(id)a7 eventStore:(id)a8 limitedToSource:(id)a9 showIdentityChooser:(BOOL)a10 showDelegateSetupCell:(BOOL)a11 showAccountStatus:(BOOL)a12
{
  v16 = a3;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v26.receiver = self;
  v26.super_class = EKCalendarChooser;
  v21 = [(EKCalendarChooser *)&v26 initWithNibName:0 bundle:0];
  if (v21)
  {
    *(&v25 + 1) = __PAIR16__(a12, a11);
    LOBYTE(v25) = a10;
    v22 = [SwappableViewControllerImplementationFactory calendarChooserImplWithRemoteUI:"calendarChooserImplWithRemoteUI:selectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" selectionStyle:v16 displayStyle:a4 entityType:a5 forEvent:a6 eventStore:v18 limitedToSource:v19 showIdentityChooser:v20 showDelegateSetupCell:v25 showAccountStatus:?];
    impl = v21->_impl;
    v21->_impl = v22;

    [(EKCalendarChooser *)v21 addChildViewController:v21->_impl];
    [(EKCalendarChooserImpl *)v21->_impl didMoveToParentViewController:v21];
    [(EKCalendarChooser *)v21 commonInit];
  }

  return v21;
}

- (void)loadView
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = EKCalendarChooser;
  [(EKCalendarChooser *)&v28 loadView];
  v3 = [(EKCalendarChooser *)self view];
  v4 = [(EKCalendarChooserImpl *)self->_impl view];
  [v3 addSubview:v4];

  v5 = [(EKCalendarChooserImpl *)self->_impl view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x1E696ACD8];
  v27 = [(EKCalendarChooserImpl *)self->_impl view];
  v25 = [v27 leadingAnchor];
  v26 = [(EKCalendarChooser *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v22 = [(EKCalendarChooserImpl *)self->_impl view];
  v20 = [v22 trailingAnchor];
  v21 = [(EKCalendarChooser *)self view];
  v19 = [v21 trailingAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v29[1] = v17;
  v16 = [(EKCalendarChooserImpl *)self->_impl view];
  v6 = [v16 topAnchor];
  v7 = [(EKCalendarChooser *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v29[2] = v9;
  v10 = [(EKCalendarChooserImpl *)self->_impl view];
  v11 = [v10 bottomAnchor];
  v12 = [(EKCalendarChooser *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v29[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v18 activateConstraints:v15];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = EKCalendarChooser;
  [(EKCalendarChooser *)&v11 viewIsAppearing:a3];
  v4 = [MEMORY[0x1E69933F8] shared];
  v5 = [v4 isCurrentProcessAnApplicationExtension];

  if (v5)
  {
    v6 = +[EKUIApplicationExtensionOverrides shared];
    v7 = [v6 viewHierarchyOrOverride];

    v8 = [v7 ekui_tintColor];
    v9 = [(EKCalendarChooser *)self view];
    v10 = [v9 window];
    [v10 setTintColor:v8];
  }
}

- (CGSize)preferredContentSize
{
  [(EKCalendarChooserImpl *)self->_impl preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end