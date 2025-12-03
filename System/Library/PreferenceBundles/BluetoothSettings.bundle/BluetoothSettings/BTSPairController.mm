@interface BTSPairController
- (BOOL)textFieldShouldReturn:(id)return;
- (BTSPairController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)cancelButtonClicked:(id)clicked;
- (void)dealloc;
- (void)deviceUpdated:(id)updated;
- (void)doneButtonClicked:(id)clicked;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)textDidChange:(id)change;
- (void)updatePrompt:(id)prompt;
@end

@implementation BTSPairController

- (BTSPairController)init
{
  v6.receiver = self;
  v6.super_class = BTSPairController;
  v2 = [(BTSPairController *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_deviceUpdated_ name:*MEMORY[0x277CF31D0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  }

  return v2;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = BTSPairController;
  [(BTSPairController *)&v12 loadView];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonClicked_];
  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PAIR" value:&stru_284EE3458 table:@"Devices"];
  v7 = [v4 initWithTitle:v6 style:2 target:self action:sel_doneButtonClicked_];

  navigationItem = [(BTSPairController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  navigationItem2 = [(BTSPairController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v7];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PAIRING_PROMPT" value:&stru_284EE3458 table:@"Devices"];
  [(BTSPairController *)self updatePrompt:v11];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = BTSPairController;
  [(BTSPairController *)&v4 dealloc];
}

- (void)updatePrompt:(id)prompt
{
  objc_storeStrong(&self->_promptFormat, prompt);
  promptCopy = prompt;
  navigationItem = [(BTSPairController *)self navigationItem];
  [navigationItem setPrompt:promptCopy];
}

- (void)cancelButtonClicked:(id)clicked
{
  self->_dismissed = 1;
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  [userInfo setObject:@"cancelled" forKey:@"PIN-ended"];

  [(BluetoothDevice *)self->_device setPIN:0];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [WeakRetained dismiss];
}

- (void)doneButtonClicked:(id)clicked
{
  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
  v5 = [(BTSPairController *)self indexPathForIndex:1];
  v8 = [(BTSPairController *)self tableView:v4 cellForRowAtIndexPath:v5];

  if (v8 && [(NSString *)self->_pin length]>= 4)
  {
    self->_dismissed = 1;
    userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
    [userInfo setObject:@"entered" forKey:@"PIN-ended"];

    [(BluetoothDevice *)self->_device setPIN:self->_pin];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    [WeakRetained dismiss];
  }
}

- (void)deviceUpdated:(id)updated
{
  object = [updated object];
  address = [object address];
  address2 = [(BluetoothDevice *)self->_device address];
  if (address == address2)
  {
    dismissed = self->_dismissed;

    if (!dismissed)
    {
      v8 = MEMORY[0x277CCACA8];
      promptFormat = self->_promptFormat;
      v14 = 0;
      name = [object name];
      v11 = [v8 stringWithValidatedFormat:promptFormat validFormatSpecifiers:@"%@" error:&v14, name];
      v12 = v14;

      if (v11)
      {
        navigationItem = [(BTSPairController *)self navigationItem];
        [navigationItem setTitle:v11];
      }

      else
      {
        navigationItem = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(navigationItem, OS_LOG_TYPE_ERROR))
        {
          [(BTSPairController *)v12 deviceUpdated:navigationItem];
        }
      }
    }
  }

  else
  {
  }
}

- (void)keyboardWillShow:(id)show
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
  v4 = [(BTSPairController *)self indexPathForIndex:1];
  v5 = [v3 cellForRowAtIndexPath:v4];
  isFirstResponder = [v5 isFirstResponder];

  if (isFirstResponder)
  {
    activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = BTSPairController;
  v5 = [(BTSPairController *)&v9 tableView:view cellForRowAtIndexPath:path];
  if ([v5 tag] == 12)
  {
    editableTextField = [v5 editableTextField];
    v7 = editableTextField;
    if (editableTextField)
    {
      [editableTextField setKeyboardType:4];
      [v7 setReturnKeyType:9];
      [v7 setAutocapitalizationType:0];
      [v7 addTarget:self action:sel_textDidChange_ forControlEvents:0x20000];
      [v7 setDelegate:self];
    }
  }

  return v5;
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  text = [changeCopy text];
  v6 = [text length] > 3;

  text2 = [changeCopy text];

  pin = self->_pin;
  self->_pin = text2;

  navigationItem = [(BTSPairController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v6];

  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  [activeKeyboard setReturnKeyEnabled:v6];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  delegate = [returnCopy delegate];
  [delegate doneButtonClicked:returnCopy];

  return 1;
}

- (id)specifiers
{
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v4 = [userInfo objectForKey:@"bt-device"];

  device = [v4 device];
  device = self->_device;
  self->_device = device;

  v7 = *MEMORY[0x277D3FC48];
  v8 = *(&self->super.super.super.super.super.isa + v7);
  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = MEMORY[0x277D3FAD8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"PASSWORD" value:&stru_284EE3458 table:@"Devices"];
    v13 = [v10 preferenceSpecifierNamed:v12 target:self set:sel_emptySetter_specifier_ get:0 detail:0 cell:12 edit:0];

    [v9 addObject:v13];
    v14 = *(&self->super.super.super.super.super.isa + v7);
    *(&self->super.super.super.super.super.isa + v7) = v9;

    v8 = *(&self->super.super.super.super.super.isa + v7);
  }

  v15 = v8;

  return v8;
}

- (void)deviceUpdated:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_23C0F7000, log, OS_LOG_TYPE_ERROR, "bad format string in notification (%@): %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end