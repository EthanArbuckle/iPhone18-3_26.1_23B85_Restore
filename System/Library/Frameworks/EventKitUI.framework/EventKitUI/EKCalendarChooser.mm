@interface EKCalendarChooser
- (CGSize)preferredContentSize;
- (EKCalendarChooser)initWithRemoteUI:(BOOL)i selectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)self0 showDelegateSetupCell:(BOOL)self1 showAccountStatus:(BOOL)self2;
- (EKCalendarChooser)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)chooser showDelegateSetupCell:(BOOL)self0 showAccountStatus:(BOOL)self1;
- (id)initWithSelectionStyle:(EKCalendarChooserSelectionStyle)selectionStyle displayStyle:(EKCalendarChooserDisplayStyle)displayStyle eventStore:(EKEventStore *)eventStore;
- (id)initWithSelectionStyle:(EKCalendarChooserSelectionStyle)style displayStyle:(EKCalendarChooserDisplayStyle)displayStyle entityType:(EKEntityType)entityType eventStore:(EKEventStore *)eventStore;
- (void)loadView;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation EKCalendarChooser

- (EKCalendarChooser)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)chooser showDelegateSetupCell:(BOOL)self0 showAccountStatus:(BOOL)self1
{
  eventCopy = event;
  storeCopy = store;
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = EKCalendarChooser;
  v20 = [(EKCalendarChooser *)&v25 initWithNibName:0 bundle:0];
  if (v20)
  {
    *(&v24 + 1) = __PAIR16__(status, cell);
    LOBYTE(v24) = chooser;
    v21 = [SwappableViewControllerImplementationFactory calendarChooserImplWithSelectionStyle:"calendarChooserImplWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:style entityType:displayStyle forEvent:type eventStore:eventCopy limitedToSource:storeCopy showIdentityChooser:sourceCopy showDelegateSetupCell:v24 showAccountStatus:?];
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

- (EKCalendarChooser)initWithRemoteUI:(BOOL)i selectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)self0 showDelegateSetupCell:(BOOL)self1 showAccountStatus:(BOOL)self2
{
  iCopy = i;
  eventCopy = event;
  storeCopy = store;
  sourceCopy = source;
  v26.receiver = self;
  v26.super_class = EKCalendarChooser;
  v21 = [(EKCalendarChooser *)&v26 initWithNibName:0 bundle:0];
  if (v21)
  {
    *(&v25 + 1) = __PAIR16__(status, cell);
    LOBYTE(v25) = chooser;
    v22 = [SwappableViewControllerImplementationFactory calendarChooserImplWithRemoteUI:"calendarChooserImplWithRemoteUI:selectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" selectionStyle:iCopy displayStyle:style entityType:displayStyle forEvent:type eventStore:eventCopy limitedToSource:storeCopy showIdentityChooser:sourceCopy showDelegateSetupCell:v25 showAccountStatus:?];
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
  view = [(EKCalendarChooser *)self view];
  view2 = [(EKCalendarChooserImpl *)self->_impl view];
  [view addSubview:view2];

  view3 = [(EKCalendarChooserImpl *)self->_impl view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x1E696ACD8];
  view4 = [(EKCalendarChooserImpl *)self->_impl view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(EKCalendarChooser *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v23;
  view6 = [(EKCalendarChooserImpl *)self->_impl view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(EKCalendarChooser *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v17;
  view8 = [(EKCalendarChooserImpl *)self->_impl view];
  topAnchor = [view8 topAnchor];
  view9 = [(EKCalendarChooser *)self view];
  topAnchor2 = [view9 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v9;
  view10 = [(EKCalendarChooserImpl *)self->_impl view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(EKCalendarChooser *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v18 activateConstraints:v15];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v11.receiver = self;
  v11.super_class = EKCalendarChooser;
  [(EKCalendarChooser *)&v11 viewIsAppearing:appearing];
  mEMORY[0x1E69933F8] = [MEMORY[0x1E69933F8] shared];
  isCurrentProcessAnApplicationExtension = [mEMORY[0x1E69933F8] isCurrentProcessAnApplicationExtension];

  if (isCurrentProcessAnApplicationExtension)
  {
    v6 = +[EKUIApplicationExtensionOverrides shared];
    viewHierarchyOrOverride = [v6 viewHierarchyOrOverride];

    ekui_tintColor = [viewHierarchyOrOverride ekui_tintColor];
    view = [(EKCalendarChooser *)self view];
    window = [view window];
    [window setTintColor:ekui_tintColor];
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