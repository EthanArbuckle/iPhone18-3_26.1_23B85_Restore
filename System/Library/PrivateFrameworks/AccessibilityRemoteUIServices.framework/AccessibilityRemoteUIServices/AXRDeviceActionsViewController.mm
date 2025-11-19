@interface AXRDeviceActionsViewController
- (AXRDeviceActionsViewController)initWithRemoteDevice:(id)a3 delegate:(id)a4;
- (AXRDeviceActionsViewControllerDelegate)delegate;
- (BOOL)_indexPathSectionIsForHandGestures:(int64_t)a3;
- (id)_actionForIndexPath:(id)a3;
- (id)_footerForSection:(int64_t)a3;
- (id)_imageForListItemAtIndexPath:(id)a3;
- (id)_leadingImageViewForListItemAtIndexPath:(id)a3;
- (id)_subtitleForListItemAtIndexPath:(id)a3;
- (id)_titleForListItemAtIndexPath:(id)a3;
- (id)_titleForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_handGestureEventUsageForIndexPath:(id)a3;
- (int64_t)_numberOfRowsInSection:(int64_t)a3;
- (int64_t)_numberOfSections;
- (void)_handleIndexPathSelection:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AXRDeviceActionsViewController

- (AXRDeviceActionsViewController)initWithRemoteDevice:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXRDeviceActionsViewController;
  v8 = [(AXRDeviceActionsViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXRDeviceActionsViewController *)v8 setActiveDevice:v6];
    [(AXRDeviceActionsViewController *)v9 setDelegate:v7];
  }

  return v9;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AXRDeviceActionsViewController;
  [(AXRDeviceActionsViewController *)&v4 viewDidLoad];
  v3 = [(AXRDeviceActionsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellIdentifier"];
}

- (int64_t)_numberOfSections
{
  v3 = [(AXRDeviceActionsViewController *)self activeDevice];
  v4 = [v3 deviceRemoteActions];
  v5 = [v4 count];

  return v5 + [(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures];
}

- (BOOL)_indexPathSectionIsForHandGestures:(int64_t)a3
{
  v5 = [(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures];
  if (v5)
  {
    LOBYTE(v5) = [(AXRDeviceActionsViewController *)self _numberOfSections]- 1 == a3;
  }

  return v5;
}

- (int64_t)_numberOfRowsInSection:(int64_t)a3
{
  v5 = [(AXRDeviceActionsViewController *)self activeDevice];
  v6 = [v5 deviceRemoteActions];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    if (![(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures])
    {
      return 0;
    }

    v10 = [(AXRDeviceActionsViewController *)self _supportedHandGestures];
    v12 = [v10 count];
  }

  else
  {
    v8 = [(AXRDeviceActionsViewController *)self activeDevice];
    v9 = [v8 deviceRemoteActions];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v11 = [v10 remoteActions];
    v12 = [v11 count];
  }

  return v12;
}

- (id)_titleForSection:(int64_t)a3
{
  v5 = [(AXRDeviceActionsViewController *)self activeDevice];
  v6 = [v5 deviceRemoteActions];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    if ([(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures])
    {
      v11 = AXRLocalizedStringForKey();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v8 = [(AXRDeviceActionsViewController *)self activeDevice];
    v9 = [v8 deviceRemoteActions];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v11 = [v10 localizedTitle];
  }

  return v11;
}

- (id)_footerForSection:(int64_t)a3
{
  v5 = [(AXRDeviceActionsViewController *)self activeDevice];
  v6 = [v5 deviceRemoteActions];
  v7 = [v6 count];

  if (v7 <= a3 && [(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures])
  {
    v8 = AXRLocalizedStringForKey();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_actionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(AXRDeviceActionsViewController *)self activeDevice];
  v7 = [v6 deviceRemoteActions];
  v8 = [v7 count];

  if (v5 >= v8)
  {
    v13 = 0;
  }

  else
  {
    v9 = [(AXRDeviceActionsViewController *)self activeDevice];
    v10 = [v9 deviceRemoteActions];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

    v12 = [v11 remoteActions];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  return v13;
}

- (int64_t)_handGestureEventUsageForIndexPath:(id)a3
{
  v4 = a3;
  if (-[AXRDeviceActionsViewController _indexPathSectionIsForHandGestures:](self, "_indexPathSectionIsForHandGestures:", [v4 section]))
  {
    v5 = [(AXRDeviceActionsViewController *)self _supportedHandGestures];
    v6 = [v5 objectAtIndex:{objc_msgSend(v4, "item")}];
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handleIndexPathSelection:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(AXRDeviceActionsViewController *)self activeDevice];
  v7 = [v6 deviceRemoteActions];
  v8 = [v7 count];

  if (v5 >= v8)
  {
    v10 = [v4 section];

    [(AXRDeviceActionsViewController *)self _indexPathSectionIsForHandGestures:v10];
  }

  else
  {
    v11 = [(AXRDeviceActionsViewController *)self _actionForIndexPath:v4];

    v9 = [(AXRDeviceActionsViewController *)self delegate];
    [v9 actionsViewController:self selectedAction:v11];
  }
}

- (id)_titleForListItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(AXRDeviceActionsViewController *)self activeDevice];
  v7 = [v6 deviceRemoteActions];
  v8 = [v7 count];

  if (v5 >= v8)
  {
    if (-[AXRDeviceActionsViewController _indexPathSectionIsForHandGestures:](self, "_indexPathSectionIsForHandGestures:", [v4 section]))
    {
      [(AXRDeviceActionsViewController *)self _handGestureEventUsageForIndexPath:v4];
      v11 = AXLocalizedStringForHandGestureEventUsage();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = [(AXRDeviceActionsViewController *)self _actionForIndexPath:v4];
    v10 = [(AXRDeviceActionsViewController *)self activeDevice];
    [v10 deviceType];
    v11 = AXRLocalizedStringForRemoteActionWithDeviceType();
  }

  return v11;
}

- (id)_subtitleForListItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (-[AXRDeviceActionsViewController _indexPathSectionIsForHandGestures:](self, "_indexPathSectionIsForHandGestures:", [v4 section]))
  {
    v5 = [(AXRDeviceActionsViewController *)self _handGestureEventUsageForIndexPath:v4];
    v6 = [(AXRDeviceActionsViewController *)self activeDevice];
    v7 = [v6 customizedRemoteActionForHandGestureEventUsage:v5];

    v8 = [(AXRDeviceActionsViewController *)self activeDevice];
    [v8 deviceType];
    v9 = AXRLocalizedStringForRemoteActionWithDeviceType();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_imageForListItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(AXRDeviceActionsViewController *)self activeDevice];
  v7 = [v6 deviceRemoteActions];
  v8 = [v7 count];

  if (v5 >= v8)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(AXRDeviceActionsViewController *)self _actionForIndexPath:v4];
    v10 = [(AXRDeviceActionsViewController *)self activeDevice];
    v11 = AXRUIImageForRemoteActionWithDeviceType(v9, [v10 deviceType]);
  }

  return v11;
}

- (id)_leadingImageViewForListItemAtIndexPath:(id)a3
{
  v3 = [(AXRDeviceActionsViewController *)self _imageForListItemAtIndexPath:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:v6];
  v8 = [v7 defaultContentConfiguration];
  v9 = [(AXRDeviceActionsViewController *)self _imageForListItemAtIndexPath:v6];
  [v8 setImage:v9];

  v10 = [MEMORY[0x277D75348] secondaryLabelColor];
  v11 = [v8 imageProperties];
  [v11 setTintColor:v10];

  v12 = [(AXRDeviceActionsViewController *)self _titleForListItemAtIndexPath:v6];
  [v8 setText:v12];

  v13 = [(AXRDeviceActionsViewController *)self _subtitleForListItemAtIndexPath:v6];

  [v8 setSecondaryText:v13];
  [v7 setContentConfiguration:v8];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  [(AXRDeviceActionsViewController *)self _handleIndexPathSelection:v6];
}

- (AXRDeviceActionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end