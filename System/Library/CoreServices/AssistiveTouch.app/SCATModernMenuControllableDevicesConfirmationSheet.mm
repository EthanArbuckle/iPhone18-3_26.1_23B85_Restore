@interface SCATModernMenuControllableDevicesConfirmationSheet
- (SCATModernMenuControllableDevicesConfirmationSheet)initWithMenu:(id)a3 interDeviceSearchResult:(id)a4;
- (SCATModernMenuControllableDevicesConfirmationSheetDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)a3;
- (void)sheetWillDisappear:(BOOL)a3;
@end

@implementation SCATModernMenuControllableDevicesConfirmationSheet

- (SCATModernMenuControllableDevicesConfirmationSheet)initWithMenu:(id)a3 interDeviceSearchResult:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SCATModernMenuControllableDevicesConfirmationSheet;
  v8 = [(SCATModernMenuSheet *)&v11 initWithMenu:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_searchResult, a4);
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

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"controllableDevices_confirm"];

  if (v6)
  {
    v7 = [(SCATModernMenuControllableDevicesConfirmationSheet *)self delegate];
    [v7 didConfirmForSheet:self];
  }

  else
  {
    v8 = [v4 identifier];
    v9 = [(SCATModernMenuSheet *)self isBackItemIdentifier:v8];

    if (v9)
    {
      [(SCATModernMenuControllableDevicesConfirmationSheet *)self setIsPoppingToPreviousViewController:1];
    }

    v10.receiver = self;
    v10.super_class = SCATModernMenuControllableDevicesConfirmationSheet;
    [(SCATModernMenuSheet *)&v10 menuItemWasActivated:v4];
  }
}

- (void)sheetWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SCATModernMenuControllableDevicesConfirmationSheet;
  [(SCATModernMenuSheet *)&v5 sheetWillDisappear:a3];
  if (![(SCATModernMenuControllableDevicesConfirmationSheet *)self isPoppingToPreviousViewController])
  {
    v4 = [(SCATModernMenuControllableDevicesConfirmationSheet *)self delegate];
    [v4 didExitMenuFromSheet:self];
  }

  [(SCATModernMenuControllableDevicesConfirmationSheet *)self setIsPoppingToPreviousViewController:0];
}

- (SCATModernMenuControllableDevicesConfirmationSheetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end