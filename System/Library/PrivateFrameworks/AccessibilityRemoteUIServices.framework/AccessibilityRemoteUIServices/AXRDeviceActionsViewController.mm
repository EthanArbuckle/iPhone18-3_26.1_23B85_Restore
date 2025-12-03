@interface AXRDeviceActionsViewController
- (AXRDeviceActionsViewController)initWithRemoteDevice:(id)device delegate:(id)delegate;
- (AXRDeviceActionsViewControllerDelegate)delegate;
- (BOOL)_indexPathSectionIsForHandGestures:(int64_t)gestures;
- (id)_actionForIndexPath:(id)path;
- (id)_footerForSection:(int64_t)section;
- (id)_imageForListItemAtIndexPath:(id)path;
- (id)_leadingImageViewForListItemAtIndexPath:(id)path;
- (id)_subtitleForListItemAtIndexPath:(id)path;
- (id)_titleForListItemAtIndexPath:(id)path;
- (id)_titleForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_handGestureEventUsageForIndexPath:(id)path;
- (int64_t)_numberOfRowsInSection:(int64_t)section;
- (int64_t)_numberOfSections;
- (void)_handleIndexPathSelection:(id)selection;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AXRDeviceActionsViewController

- (AXRDeviceActionsViewController)initWithRemoteDevice:(id)device delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = AXRDeviceActionsViewController;
  v8 = [(AXRDeviceActionsViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXRDeviceActionsViewController *)v8 setActiveDevice:deviceCopy];
    [(AXRDeviceActionsViewController *)v9 setDelegate:delegateCopy];
  }

  return v9;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AXRDeviceActionsViewController;
  [(AXRDeviceActionsViewController *)&v4 viewDidLoad];
  tableView = [(AXRDeviceActionsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CellIdentifier"];
}

- (int64_t)_numberOfSections
{
  activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
  deviceRemoteActions = [activeDevice deviceRemoteActions];
  v5 = [deviceRemoteActions count];

  return v5 + [(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures];
}

- (BOOL)_indexPathSectionIsForHandGestures:(int64_t)gestures
{
  _deviceSupportsHandGestures = [(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures];
  if (_deviceSupportsHandGestures)
  {
    LOBYTE(_deviceSupportsHandGestures) = [(AXRDeviceActionsViewController *)self _numberOfSections]- 1 == gestures;
  }

  return _deviceSupportsHandGestures;
}

- (int64_t)_numberOfRowsInSection:(int64_t)section
{
  activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
  deviceRemoteActions = [activeDevice deviceRemoteActions];
  v7 = [deviceRemoteActions count];

  if (v7 <= section)
  {
    if (![(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures])
    {
      return 0;
    }

    _supportedHandGestures = [(AXRDeviceActionsViewController *)self _supportedHandGestures];
    v12 = [_supportedHandGestures count];
  }

  else
  {
    activeDevice2 = [(AXRDeviceActionsViewController *)self activeDevice];
    deviceRemoteActions2 = [activeDevice2 deviceRemoteActions];
    _supportedHandGestures = [deviceRemoteActions2 objectAtIndexedSubscript:section];

    remoteActions = [_supportedHandGestures remoteActions];
    v12 = [remoteActions count];
  }

  return v12;
}

- (id)_titleForSection:(int64_t)section
{
  activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
  deviceRemoteActions = [activeDevice deviceRemoteActions];
  v7 = [deviceRemoteActions count];

  if (v7 <= section)
  {
    if ([(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures])
    {
      localizedTitle = AXRLocalizedStringForKey();
    }

    else
    {
      localizedTitle = 0;
    }
  }

  else
  {
    activeDevice2 = [(AXRDeviceActionsViewController *)self activeDevice];
    deviceRemoteActions2 = [activeDevice2 deviceRemoteActions];
    v10 = [deviceRemoteActions2 objectAtIndexedSubscript:section];

    localizedTitle = [v10 localizedTitle];
  }

  return localizedTitle;
}

- (id)_footerForSection:(int64_t)section
{
  activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
  deviceRemoteActions = [activeDevice deviceRemoteActions];
  v7 = [deviceRemoteActions count];

  if (v7 <= section && [(AXRDeviceActionsViewController *)self _deviceSupportsHandGestures])
  {
    v8 = AXRLocalizedStringForKey();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_actionForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
  deviceRemoteActions = [activeDevice deviceRemoteActions];
  v8 = [deviceRemoteActions count];

  if (section >= v8)
  {
    v13 = 0;
  }

  else
  {
    activeDevice2 = [(AXRDeviceActionsViewController *)self activeDevice];
    deviceRemoteActions2 = [activeDevice2 deviceRemoteActions];
    v11 = [deviceRemoteActions2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    remoteActions = [v11 remoteActions];
    v13 = [remoteActions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  return v13;
}

- (int64_t)_handGestureEventUsageForIndexPath:(id)path
{
  pathCopy = path;
  if (-[AXRDeviceActionsViewController _indexPathSectionIsForHandGestures:](self, "_indexPathSectionIsForHandGestures:", [pathCopy section]))
  {
    _supportedHandGestures = [(AXRDeviceActionsViewController *)self _supportedHandGestures];
    v6 = [_supportedHandGestures objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_handleIndexPathSelection:(id)selection
{
  selectionCopy = selection;
  section = [selectionCopy section];
  activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
  deviceRemoteActions = [activeDevice deviceRemoteActions];
  v8 = [deviceRemoteActions count];

  if (section >= v8)
  {
    section2 = [selectionCopy section];

    [(AXRDeviceActionsViewController *)self _indexPathSectionIsForHandGestures:section2];
  }

  else
  {
    v11 = [(AXRDeviceActionsViewController *)self _actionForIndexPath:selectionCopy];

    delegate = [(AXRDeviceActionsViewController *)self delegate];
    [delegate actionsViewController:self selectedAction:v11];
  }
}

- (id)_titleForListItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
  deviceRemoteActions = [activeDevice deviceRemoteActions];
  v8 = [deviceRemoteActions count];

  if (section >= v8)
  {
    if (-[AXRDeviceActionsViewController _indexPathSectionIsForHandGestures:](self, "_indexPathSectionIsForHandGestures:", [pathCopy section]))
    {
      [(AXRDeviceActionsViewController *)self _handGestureEventUsageForIndexPath:pathCopy];
      v11 = AXLocalizedStringForHandGestureEventUsage();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = [(AXRDeviceActionsViewController *)self _actionForIndexPath:pathCopy];
    activeDevice2 = [(AXRDeviceActionsViewController *)self activeDevice];
    [activeDevice2 deviceType];
    v11 = AXRLocalizedStringForRemoteActionWithDeviceType();
  }

  return v11;
}

- (id)_subtitleForListItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[AXRDeviceActionsViewController _indexPathSectionIsForHandGestures:](self, "_indexPathSectionIsForHandGestures:", [pathCopy section]))
  {
    v5 = [(AXRDeviceActionsViewController *)self _handGestureEventUsageForIndexPath:pathCopy];
    activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
    v7 = [activeDevice customizedRemoteActionForHandGestureEventUsage:v5];

    activeDevice2 = [(AXRDeviceActionsViewController *)self activeDevice];
    [activeDevice2 deviceType];
    v9 = AXRLocalizedStringForRemoteActionWithDeviceType();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_imageForListItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  activeDevice = [(AXRDeviceActionsViewController *)self activeDevice];
  deviceRemoteActions = [activeDevice deviceRemoteActions];
  v8 = [deviceRemoteActions count];

  if (section >= v8)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(AXRDeviceActionsViewController *)self _actionForIndexPath:pathCopy];
    activeDevice2 = [(AXRDeviceActionsViewController *)self activeDevice];
    v11 = AXRUIImageForRemoteActionWithDeviceType(v9, [activeDevice2 deviceType]);
  }

  return v11;
}

- (id)_leadingImageViewForListItemAtIndexPath:(id)path
{
  v3 = [(AXRDeviceActionsViewController *)self _imageForListItemAtIndexPath:path];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:pathCopy];
  defaultContentConfiguration = [v7 defaultContentConfiguration];
  v9 = [(AXRDeviceActionsViewController *)self _imageForListItemAtIndexPath:pathCopy];
  [defaultContentConfiguration setImage:v9];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setTintColor:secondaryLabelColor];

  v12 = [(AXRDeviceActionsViewController *)self _titleForListItemAtIndexPath:pathCopy];
  [defaultContentConfiguration setText:v12];

  v13 = [(AXRDeviceActionsViewController *)self _subtitleForListItemAtIndexPath:pathCopy];

  [defaultContentConfiguration setSecondaryText:v13];
  [v7 setContentConfiguration:defaultContentConfiguration];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  [(AXRDeviceActionsViewController *)self _handleIndexPathSelection:pathCopy];
}

- (AXRDeviceActionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end