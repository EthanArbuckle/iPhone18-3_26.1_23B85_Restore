@interface EKUIEventInviteesEditViewController
- (EKUIEventInviteesEditViewController)initWithEvent:(id)event;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation EKUIEventInviteesEditViewController

- (EKUIEventInviteesEditViewController)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = EKUIEventInviteesEditViewController;
  v6 = [(EKUIEventInviteesEditViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

- (void)loadView
{
  obj = [[EKUIEventInviteesViewController alloc] initWithEvent:self->_event fromDetail:0 model:0];
  [(EKUIEventInviteesViewController *)obj setParentController:self];
  [(EKUIEventInviteesViewController *)obj setUsesCustomToolbar:1];
  if ([(EKEvent *)self->_event isNew])
  {
    [(EKUIEventInviteesViewController *)obj setUsesRaisedCustomToolbar:1];
  }

  [(EKUIEventInviteesViewController *)obj setHidesManagedAttendeesSection:1];
  title = [(EKUIEventInviteesViewController *)obj title];
  [(EKUIEventInviteesEditViewController *)self setTitle:title];

  [(EKUIEventInviteesEditViewController *)self addChildViewController:obj];
  view = [(EKUIEventInviteesViewController *)obj view];
  [view setAutoresizingMask:18];
  v5 = [EKUIInviteesEditView alloc];
  v6 = [(EKUIInviteesEditView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(EKUIInviteesEditView *)v6 setAutoresizingMask:18];
  [(EKUIInviteesEditView *)v6 addSubview:view];
  objc_storeStrong(&self->_controller, obj);
  if (CalSolariumEnabled())
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__dismiss_];
    navigationItem = [(EKUIEventInviteesEditViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v7];

    remoteUIDelegate = [(EKEditItemViewController *)self remoteUIDelegate];
    controller = self->_controller;
    v11 = MEMORY[0x1E695DEC8];
    v12 = +[_TtC10EventKitUI22EKRemoteUIButtonAction Done];
    v13 = [v11 arrayWithObject:v12];
    [remoteUIDelegate viewController:controller didChangeLeftBarButtons:v13 rightBarButtons:MEMORY[0x1E695E0F0]];
  }

  [(EKUIEventInviteesEditViewController *)self setView:v6];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(EKUIEventInviteesViewController *)self->_controller didMoveToParentViewController:self];
  v5.receiver = self;
  v5.super_class = EKUIEventInviteesEditViewController;
  [(EKUIEventInviteesEditViewController *)&v5 viewDidAppear:appearCopy];
}

@end