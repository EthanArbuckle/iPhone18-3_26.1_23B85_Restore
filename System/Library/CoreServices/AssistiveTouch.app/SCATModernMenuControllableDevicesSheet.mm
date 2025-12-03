@interface SCATModernMenuControllableDevicesSheet
- (SCATModernMenuControllableDevicesSheet)initWithMenu:(id)menu interDeviceCommunicator:(id)communicator;
- (id)makeMenuItemsIfNeeded;
- (void)dealloc;
- (void)didConfirmForSheet:(id)sheet;
- (void)didExitMenuFromSheet:(id)sheet;
- (void)didUpdateSearchResults;
- (void)menuItemWasActivated:(id)activated;
- (void)sheetWillAppear:(BOOL)appear;
- (void)sheetWillDisappear:(BOOL)disappear;
@end

@implementation SCATModernMenuControllableDevicesSheet

- (SCATModernMenuControllableDevicesSheet)initWithMenu:(id)menu interDeviceCommunicator:(id)communicator
{
  communicatorCopy = communicator;
  v11.receiver = self;
  v11.super_class = SCATModernMenuControllableDevicesSheet;
  v8 = [(SCATModernMenuSheet *)&v11 initWithMenu:menu];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interDeviceCommunicator, communicator);
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
    searchResults = [(SCATModernMenuControllableDevicesSheet *)self searchResults];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100048334;
    v8[3] = &unk_1001D4BE8;
    v8[4] = self;
    v9 = v3;
    [searchResults enumerateObjectsUsingBlock:v8];
  }

  v5 = sub_100042B24(@"SEARCHING");
  v6 = [SCATModernMenuItem itemWithIdentifier:@"loadingDevices" delegate:self title:v5 imageName:0 activateBehavior:3];

  [v6 setShouldUseActivityIndicator:1];
  [v6 setDisabled:1];
  [v3 addObject:v6];

  return v3;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCATModernMenuControllableDevicesSheet *)self setIsPushingConfirmationSheet:1];
    v5 = activatedCopy;
    v6 = [SCATModernMenuControllableDevicesConfirmationSheet alloc];
    menu = [(SCATModernMenuSheet *)self menu];
    searchResult = [v5 searchResult];
    v9 = [(SCATModernMenuControllableDevicesConfirmationSheet *)v6 initWithMenu:menu interDeviceSearchResult:searchResult];

    [(SCATModernMenuControllableDevicesSheet *)self setConfirmationSheet:v9];
    [(SCATModernMenuControllableDevicesConfirmationSheet *)v9 setDelegate:self];
    menu2 = [(SCATModernMenuSheet *)self menu];
    [menu2 pushSheet:v9];

    interDeviceCommunicator = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
    searchResult2 = [v5 searchResult];

    [interDeviceCommunicator highlightSearchResult:searchResult2];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SCATModernMenuControllableDevicesSheet;
    [(SCATModernMenuSheet *)&v13 menuItemWasActivated:activatedCopy];
  }
}

- (void)sheetWillAppear:(BOOL)appear
{
  [(SCATModernMenuControllableDevicesSheet *)self setIsVisible:1];
  interDeviceCommunicator = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  canSearch = [interDeviceCommunicator canSearch];

  if (canSearch)
  {
    interDeviceCommunicator2 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
    [interDeviceCommunicator2 search];
  }

  [(SCATModernMenuControllableDevicesSheet *)self didUpdateSearchResults];
  confirmationSheet = [(SCATModernMenuControllableDevicesSheet *)self confirmationSheet];
  [confirmationSheet setDelegate:0];

  [(SCATModernMenuControllableDevicesSheet *)self setConfirmationSheet:0];
}

- (void)sheetWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuControllableDevicesSheet;
  [(SCATModernMenuSheet *)&v6 sheetWillDisappear:disappear];
  [(SCATModernMenuControllableDevicesSheet *)self setIsVisible:0];
  interDeviceCommunicator = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  if (![interDeviceCommunicator isSearching])
  {
    goto LABEL_4;
  }

  isPushingConfirmationSheet = [(SCATModernMenuControllableDevicesSheet *)self isPushingConfirmationSheet];

  if ((isPushingConfirmationSheet & 1) == 0)
  {
    interDeviceCommunicator = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
    [interDeviceCommunicator stop];
LABEL_4:
  }

  [(SCATModernMenuControllableDevicesSheet *)self setIsPushingConfirmationSheet:0];
}

- (void)didUpdateSearchResults
{
  interDeviceCommunicator = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  searchResults = [interDeviceCommunicator searchResults];

  searchResults2 = [(SCATModernMenuControllableDevicesSheet *)self searchResults];
  if (!searchResults2 || (v5 = searchResults2, -[SCATModernMenuControllableDevicesSheet searchResults](self, "searchResults"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [searchResults isEqualToArray:v6], v6, v5, (v7 & 1) == 0))
  {
    [(SCATModernMenuControllableDevicesSheet *)self setSearchResults:searchResults];
    [(SCATModernMenuSheet *)self reload];
    confirmationSheet = [(SCATModernMenuControllableDevicesSheet *)self confirmationSheet];

    if (confirmationSheet)
    {
      searchResults3 = [(SCATModernMenuControllableDevicesSheet *)self searchResults];
      confirmationSheet2 = [(SCATModernMenuControllableDevicesSheet *)self confirmationSheet];
      searchResult = [confirmationSheet2 searchResult];
      v12 = [searchResults3 containsObject:searchResult];

      if (v12)
      {
LABEL_8:
        v15 = +[SCATScannerManager sharedManager];
        [v15 beginScanningWithFocusContext:0];

        goto LABEL_9;
      }

      confirmationSheet3 = [(SCATModernMenuControllableDevicesSheet *)self confirmationSheet];
      [confirmationSheet3 setDelegate:0];

      [(SCATModernMenuControllableDevicesSheet *)self setConfirmationSheet:0];
      menu = [(SCATModernMenuSheet *)self menu];
      [menu popSheet];
    }

    else
    {
      menu = [(SCATModernMenuSheet *)self menu];
      [menu reloadFromCurrentSheet];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)didConfirmForSheet:(id)sheet
{
  sheetCopy = sheet;
  interDeviceCommunicator = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  searchResult = [sheetCopy searchResult];

  v7 = sub_1000445BC();
  [interDeviceCommunicator selectSearchResult:searchResult settings:v7];

  v8 = +[AXSettings sharedInstance];
  [v8 setSwitchControlPlatformSwitchedCount:{objc_msgSend(v8, "switchControlPlatformSwitchedCount") + 1}];
}

- (void)didExitMenuFromSheet:(id)sheet
{
  interDeviceCommunicator = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
  isForwardingSwitchEvents = [interDeviceCommunicator isForwardingSwitchEvents];

  if ((isForwardingSwitchEvents & 1) == 0)
  {
    interDeviceCommunicator2 = [(SCATModernMenuControllableDevicesSheet *)self interDeviceCommunicator];
    [interDeviceCommunicator2 stop];
  }
}

@end