@interface MKMapItemDetailViewController
- (MKMapItemDetailViewController)initWithCoder:(id)a3;
- (MKMapItemDetailViewController)initWithMapItem:(id)a3 displaysMap:(BOOL)a4;
- (MKMapItemDetailViewControllerDelegate)delegate;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)selectionAccessoryViewDidRequestDismissal:(id)a3;
@end

@implementation MKMapItemDetailViewController

- (MKMapItemDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)selectionAccessoryViewDidRequestDismissal:(id)a3
{
  v4 = [(MKMapItemDetailViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(MKMapItemDetailViewController *)self delegate];
    [v8 mapItemDetailViewControllerDidFinish:self];
  }

  else
  {
    v6 = [(MKMapItemDetailViewController *)self presentingViewController];

    if (v6)
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

  v5 = [(MKMapItemDetailViewController *)self view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v6 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v7 = [(MKMapItemDetailViewController *)self view];
    [v7 setBackgroundColor:v6];
  }

  v8 = [[MKFullDeveloperPlaceCardSelectionAccessoryView alloc] initAsStandAloneHidingInlineMap:!self->_displaysMap];
  accessoryView = self->_accessoryView;
  self->_accessoryView = v8;

  [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView setParentViewController:self];
  [(MKSelectionAccessoryView *)self->_accessoryView setDelegate:self];
  v10 = [(MKMapItemDetailViewController *)self view];
  [v10 addSubview:self->_accessoryView];

  v21 = MEMORY[0x1E696ACD8];
  v27 = [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView topAnchor];
  v28 = [(MKMapItemDetailViewController *)self view];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v29[0] = v25;
  v23 = [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView leadingAnchor];
  v24 = [(MKMapItemDetailViewController *)self view];
  v22 = [v24 leadingAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v29[1] = v20;
  v19 = [(MKMapItemDetailViewController *)self view];
  v11 = [v19 trailingAnchor];
  v12 = [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v29[2] = v13;
  v14 = [(MKMapItemDetailViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [(MKFullDeveloperPlaceCardSelectionAccessoryView *)self->_accessoryView bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v29[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v21 activateConstraints:v18];

  if (self->_mapItem)
  {
    [(MKViewSwitchingSelectionAccessoryView *)self->_accessoryView displayMapItem:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MKMapItemDetailViewController;
  v4 = a3;
  [(MKMapItemDetailViewController *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_displaysMap forKey:{@"MKDisplaysMap", v5.receiver, v5.super_class}];
}

- (MKMapItemDetailViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MKMapItemDetailViewController;
  v5 = [(MKMapItemDetailViewController *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    mapItem = v5->_mapItem;
    v5->_mapItem = 0;

    if ([v4 containsValueForKey:@"MKDisplaysMap"])
    {
      v6->_displaysMap = [v4 decodeBoolForKey:@"MKDisplaysMap"];
    }

    else
    {
      v6->_displaysMap = 1;
    }
  }

  return v6;
}

- (MKMapItemDetailViewController)initWithMapItem:(id)a3 displaysMap:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MKMapItemDetailViewController;
  v8 = [(MKMapItemDetailViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, a3);
    v9->_displaysMap = a4;
  }

  return v9;
}

@end