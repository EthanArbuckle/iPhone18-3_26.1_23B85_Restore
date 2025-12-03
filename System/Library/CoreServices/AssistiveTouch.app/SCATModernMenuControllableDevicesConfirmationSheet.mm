@interface SCATModernMenuControllableDevicesConfirmationSheet
- (SCATModernMenuControllableDevicesConfirmationSheet)initWithMenu:(id)menu interDeviceSearchResult:(id)result;
- (SCATModernMenuControllableDevicesConfirmationSheetDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
- (void)sheetWillDisappear:(BOOL)disappear;
@end

@implementation SCATModernMenuControllableDevicesConfirmationSheet

- (SCATModernMenuControllableDevicesConfirmationSheet)initWithMenu:(id)menu interDeviceSearchResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = SCATModernMenuControllableDevicesConfirmationSheet;
  v8 = [(SCATModernMenuSheet *)&v11 initWithMenu:menu];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_searchResult, result);
  }

  return v9;
}

- (id)makeMenuItemsIfNeeded
{
  v3 = sub_100042B24(@"CONFIRM_CONTROL_DEVICE");
  v4 = [SCATModernMenuItem itemWithIdentifier:@"controllableDevices_confirm" delegate:self title:v3 imageName:@"SCATIcon_interdevice_confirm" activateBehavior:1];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  v6 = [identifier isEqualToString:@"controllableDevices_confirm"];

  if (v6)
  {
    delegate = [(SCATModernMenuControllableDevicesConfirmationSheet *)self delegate];
    [delegate didConfirmForSheet:self];
  }

  else
  {
    identifier2 = [activatedCopy identifier];
    v9 = [(SCATModernMenuSheet *)self isBackItemIdentifier:identifier2];

    if (v9)
    {
      [(SCATModernMenuControllableDevicesConfirmationSheet *)self setIsPoppingToPreviousViewController:1];
    }

    v10.receiver = self;
    v10.super_class = SCATModernMenuControllableDevicesConfirmationSheet;
    [(SCATModernMenuSheet *)&v10 menuItemWasActivated:activatedCopy];
  }
}

- (void)sheetWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SCATModernMenuControllableDevicesConfirmationSheet;
  [(SCATModernMenuSheet *)&v5 sheetWillDisappear:disappear];
  if (![(SCATModernMenuControllableDevicesConfirmationSheet *)self isPoppingToPreviousViewController])
  {
    delegate = [(SCATModernMenuControllableDevicesConfirmationSheet *)self delegate];
    [delegate didExitMenuFromSheet:self];
  }

  [(SCATModernMenuControllableDevicesConfirmationSheet *)self setIsPoppingToPreviousViewController:0];
}

- (SCATModernMenuControllableDevicesConfirmationSheetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end