@interface MKMapItemDetailViewController
- (MKMapItemDetailViewController)initWithCoder:(id)coder;
- (MKMapItemDetailViewController)initWithMapItem:(id)item displaysMap:(BOOL)map;
- (MKMapItemDetailViewControllerDelegate)delegate;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)selectionAccessoryViewDidRequestDismissal:(id)dismissal;
@end

@implementation MKMapItemDetailViewController

- (MKMapItemDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)selectionAccessoryViewDidRequestDismissal:(id)dismissal
{
  delegate = [(MKMapItemDetailViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MKMapItemDetailViewController *)self delegate];
    [delegate2 mapItemDetailViewControllerDidFinish:self];
  }

  else
  {
    presentingViewController = [(MKMapItemDetailViewController *)self presentingViewController];

    if (presentingViewController)
    {

      [(MKMapItemDetailViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v7 = MKGetMKRemoteUILog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_INFO, "MKMapItemDetailViewController close button not actionable", buf, 2u);
      }
    }
  }
}

- (void)loadView
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = [_MKMapItemDetailView alloc];
  v4 = [(_MKMapItemDetailView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MKMapItemDetailViewController *)self setView:v4];

  view = [(MKMapItemDetailViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    view2 = [(MKMapItemDetailViewController *)self view];
    [view2 setBackgroundColor:systemGroupedBackgroundColor];
  }

  v8 = [[MKFullDeveloperPlaceCardSelectionAccessoryView alloc] initAsStandAloneHidingInlineMap:!self->_displaysMap];
  accessoryView = self->_accessoryView;
  self->_accessoryView = v8;

  [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView setParentViewController:self];
  [(MKSelectionAccessoryView *)self->_accessoryView setDelegate:self];
  view3 = [(MKMapItemDetailViewController *)self view];
  [view3 addSubview:self->_accessoryView];

  v21 = MEMORY[0x1E696ACD8];
  topAnchor = [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView topAnchor];
  view4 = [(MKMapItemDetailViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v25;
  leadingAnchor = [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView leadingAnchor];
  view5 = [(MKMapItemDetailViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[1] = v20;
  view6 = [(MKMapItemDetailViewController *)self view];
  trailingAnchor = [view6 trailingAnchor];
  trailingAnchor2 = [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[2] = v13;
  view7 = [(MKMapItemDetailViewController *)self view];
  bottomAnchor = [view7 bottomAnchor];
  bottomAnchor2 = [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v21 activateConstraints:v18];

  if (self->_mapItem)
  {
    [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView displayMapItem:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MKMapItemDetailViewController;
  coderCopy = coder;
  [(MKMapItemDetailViewController *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_displaysMap forKey:{@"MKDisplaysMap", v5.receiver, v5.super_class}];
}

- (MKMapItemDetailViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MKMapItemDetailViewController;
  v5 = [(MKMapItemDetailViewController *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    mapItem = v5->_mapItem;
    v5->_mapItem = 0;

    if ([coderCopy containsValueForKey:@"MKDisplaysMap"])
    {
      v6->_displaysMap = [coderCopy decodeBoolForKey:@"MKDisplaysMap"];
    }

    else
    {
      v6->_displaysMap = 1;
    }
  }

  return v6;
}

- (MKMapItemDetailViewController)initWithMapItem:(id)item displaysMap:(BOOL)map
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MKMapItemDetailViewController;
  v8 = [(MKMapItemDetailViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, item);
    v9->_displaysMap = map;
  }

  return v9;
}

@end