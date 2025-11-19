@interface EKUIEventInviteesEditViewController
- (EKUIEventInviteesEditViewController)initWithEvent:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation EKUIEventInviteesEditViewController

- (EKUIEventInviteesEditViewController)initWithEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKUIEventInviteesEditViewController;
  v6 = [(EKUIEventInviteesEditViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
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
  v3 = [(EKUIEventInviteesViewController *)obj title];
  [(EKUIEventInviteesEditViewController *)self setTitle:v3];

  [(EKUIEventInviteesEditViewController *)self addChildViewController:obj];
  v4 = [(EKUIEventInviteesViewController *)obj view];
  [v4 setAutoresizingMask:18];
  v5 = [EKUIInviteesEditView alloc];
  v6 = [(EKUIInviteesEditView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(EKUIInviteesEditView *)v6 setAutoresizingMask:18];
  [(EKUIInviteesEditView *)v6 addSubview:v4];
  objc_storeStrong(&self->_controller, obj);
  if (CalSolariumEnabled())
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__dismiss_];
    v8 = [(EKUIEventInviteesEditViewController *)self navigationItem];
    [v8 setLeftBarButtonItem:v7];

    v9 = [(EKEditItemViewController *)self remoteUIDelegate];
    controller = self->_controller;
    v11 = MEMORY[0x1E695DEC8];
    v12 = +[_TtC10EventKitUI22EKRemoteUIButtonAction Done];
    v13 = [v11 arrayWithObject:v12];
    [v9 viewController:controller didChangeLeftBarButtons:v13 rightBarButtons:MEMORY[0x1E695E0F0]];
  }

  [(EKUIEventInviteesEditViewController *)self setView:v6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(EKUIEventInviteesViewController *)self->_controller didMoveToParentViewController:self];
  v5.receiver = self;
  v5.super_class = EKUIEventInviteesEditViewController;
  [(EKUIEventInviteesEditViewController *)&v5 viewDidAppear:v3];
}

@end