@interface SCATModernMenuControllableDevicesSheet
- (SCATModernMenuControllableDevicesSheet)initWithMenu:(id)a3 interDeviceCommunicator:(id)a4;
- (id)makeMenuItemsIfNeeded;
- (void)dealloc;
- (void)didConfirmForSheet:(id)a3;
- (void)didExitMenuFromSheet:(id)a3;
- (void)didUpdateSearchResults;
- (void)menuItemWasActivated:(id)a3;
- (void)sheetWillAppear:(BOOL)a3;
- (void)sheetWillDisappear:(BOOL)a3;
@end

@implementation SCATModernMenuControllableDevicesSheet

- (SCATModernMenuControllableDevicesSheet)initWithMenu:(id)a3 interDeviceCommunicator:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SCATModernMenuControllableDevicesSheet;
  v8 = [(SCATModernMenuSheet *)&v11 initWithMenu:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interDeviceCommunicator, a4);
    [(AXSSInterDeviceCommunicator *)v9->_interDeviceCommunicator setSearchObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  [(AXSSInterDeviceCommunicator *)self->_interDeviceCommunicator setSearchObserver:0];
  v3.receiver = self;
  v3.super_class = SCATModernMenuControllableDevicesSheet;
  [(SCATModernMenuSheet *)&v3 dealloc];
}

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  if ([(SCATModernMenuControllableDevicesSheet *)self isVisible])
  {
    v4 = [(SCATModernMenuControllableDevicesSheet *)self searchResults];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100048334;
    v8[3] = &unk_1001D4BE8;
    v8[4] = self;
    v9 = v3;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  v5 = sub_100042B24(@"SEARCHING");
  v6 = [SCATModernMenuItem itemWithIdentifier:@"loadingDevices" delegate:self title:v5 imageName:0 activateBehavior:3];

  [v6 setShouldUseActivityIndicator:1];
  [v6 setDisabled:1];
  [v3 addObject:v6];

  return v3;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCATModernMenuControllableDevicesSheet *)self setIsPushingConfirmationSheet:1];
    v5 = v4;
    v6 = [SCATModernMenuControllableDevicesConfirmationSheet alloc];
    v7 = [(SCATModernMenuSheet *)self menu];
    v8 = [v5 searchResult];
    v9 = [(SCATModernMenuControllableDevicesConfirmationSheet *)v6 initWithMenu:v7 interDeviceSearchResult:v8];

    [(SCATModernMenuControllableDevicesSheet *)self setConfirmationSheet:v9];
    [(SCATModernMenuControllableDevicesConfirmationSheet *)v9 setDelegate:self];
    v10 = [(SCATModernMenuSheet *)self menu];
    [v10 pushSheet:v9];

    v11 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
    v12 = [v5 searchResult];

    [v11 highlightSearchResult:v12];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SCATModernMenuControllableDevicesSheet;
    [(SCATModernMenuSheet *)&v13 menuItemWasActivated:v4];
  }
}

- (void)sheetWillAppear:(BOOL)a3
{
  [(SCATModernMenuControllableDevicesSheet *)self setIsVisible:1];
  v4 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  v5 = [v4 canSearch];

  if (v5)
  {
    v6 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
    [v6 search];
  }

  [(SCATModernMenuControllableDevicesSheet *)self didUpdateSearchResults];
  v7 = [(SCATModernMenuControllableDevicesSheet *)self confirmationSheet];
  [v7 setDelegate:0];

  [(SCATModernMenuControllableDevicesSheet *)self setConfirmationSheet:0];
}

- (void)sheetWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuControllableDevicesSheet;
  [(SCATModernMenuSheet *)&v6 sheetWillDisappear:a3];
  [(SCATModernMenuControllableDevicesSheet *)self setIsVisible:0];
  v4 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  if (![v4 isSearching])
  {
    goto LABEL_4;
  }

  v5 = [(SCATModernMenuControllableDevicesSheet *)self isPushingConfirmationSheet];

  if ((v5 & 1) == 0)
  {
    v4 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
    [v4 stop];
LABEL_4:
  }

  [(SCATModernMenuControllableDevicesSheet *)self setIsPushingConfirmationSheet:0];
}

- (void)didUpdateSearchResults
{
  v3 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  v16 = [v3 searchResults];

  v4 = [(SCATModernMenuControllableDevicesSheet *)self searchResults];
  if (!v4 || (v5 = v4, -[SCATModernMenuControllableDevicesSheet searchResults](self, "searchResults"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v16 isEqualToArray:v6], v6, v5, (v7 & 1) == 0))
  {
    [(SCATModernMenuControllableDevicesSheet *)self setSearchResults:v16];
    [(SCATModernMenuSheet *)self reload];
    v8 = [(SCATModernMenuControllableDevicesSheet *)self confirmationSheet];

    if (v8)
    {
      v9 = [(SCATModernMenuControllableDevicesSheet *)self searchResults];
      v10 = [(SCATModernMenuControllableDevicesSheet *)self confirmationSheet];
      v11 = [v10 searchResult];
      v12 = [v9 containsObject:v11];

      if (v12)
      {
LABEL_8:
        v15 = +[SCATScannerManager sharedManager];
        [v15 beginScanningWithFocusContext:0];

        goto LABEL_9;
      }

      v13 = [(SCATModernMenuControllableDevicesSheet *)self confirmationSheet];
      [v13 setDelegate:0];

      [(SCATModernMenuControllableDevicesSheet *)self setConfirmationSheet:0];
      v14 = [(SCATModernMenuSheet *)self menu];
      [v14 popSheet];
    }

    else
    {
      v14 = [(SCATModernMenuSheet *)self menu];
      [v14 reloadFromCurrentSheet];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)didConfirmForSheet:(id)a3
{
  v4 = a3;
  v5 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  v6 = [v4 searchResult];

  v7 = sub_1000445BC();
  [v5 selectSearchResult:v6 settings:v7];

  v8 = +[AXSettings sharedInstance];
  [v8 setSwitchControlPlatformSwitchedCount:{objc_msgSend(v8, "switchControlPlatformSwitchedCount") + 1}];
}

- (void)didExitMenuFromSheet:(id)a3
{
  v4 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  v5 = [v4 isForwardingSwitchEvents];

  if ((v5 & 1) == 0)
  {
    v6 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
    [v6 stop];
  }
}

@end