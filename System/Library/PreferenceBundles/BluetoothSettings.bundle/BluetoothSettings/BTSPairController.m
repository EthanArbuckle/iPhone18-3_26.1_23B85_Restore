@interface BTSPairController
- (BOOL)textFieldShouldReturn:(id)a3;
- (BTSPairController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)cancelButtonClicked:(id)a3;
- (void)dealloc;
- (void)deviceUpdated:(id)a3;
- (void)doneButtonClicked:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)textDidChange:(id)a3;
- (void)updatePrompt:(id)a3;
@end

@implementation BTSPairController

- (BTSPairController)init
{
  v6.receiver = self;
  v6.super_class = BTSPairController;
  v2 = [(BTSPairController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_deviceUpdated_ name:*MEMORY[0x277CF31D0] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
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

  v8 = [(BTSPairController *)self navigationItem];
  [v8 setLeftBarButtonItem:v3];

  v9 = [(BTSPairController *)self navigationItem];
  [v9 setRightBarButtonItem:v7];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PAIRING_PROMPT" value:&stru_284EE3458 table:@"Devices"];
  [(BTSPairController *)self updatePrompt:v11];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BTSPairController;
  [(BTSPairController *)&v4 dealloc];
}

- (void)updatePrompt:(id)a3
{
  objc_storeStrong(&self->_promptFormat, a3);
  v5 = a3;
  v6 = [(BTSPairController *)self navigationItem];
  [v6 setPrompt:v5];
}

- (void)cancelButtonClicked:(id)a3
{
  self->_dismissed = 1;
  v4 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  [v4 setObject:@"cancelled" forKey:@"PIN-ended"];

  [(BluetoothDevice *)self->_device setPIN:0];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [WeakRetained dismiss];
}

- (void)doneButtonClicked:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
  v5 = [(BTSPairController *)self indexPathForIndex:1];
  v8 = [(BTSPairController *)self tableView:v4 cellForRowAtIndexPath:v5];

  if (v8 && [(NSString *)self->_pin length]>= 4)
  {
    self->_dismissed = 1;
    v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
    [v6 setObject:@"entered" forKey:@"PIN-ended"];

    [(BluetoothDevice *)self->_device setPIN:self->_pin];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    [WeakRetained dismiss];
  }
}

- (void)deviceUpdated:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 address];
  v6 = [(BluetoothDevice *)self->_device address];
  if (v5 == v6)
  {
    dismissed = self->_dismissed;

    if (!dismissed)
    {
      v8 = MEMORY[0x277CCACA8];
      promptFormat = self->_promptFormat;
      v14 = 0;
      v10 = [v4 name];
      v11 = [v8 stringWithValidatedFormat:promptFormat validFormatSpecifiers:@"%@" error:&v14, v10];
      v12 = v14;

      if (v11)
      {
        v13 = [(BTSPairController *)self navigationItem];
        [v13 setTitle:v11];
      }

      else
      {
        v13 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(BTSPairController *)v12 deviceUpdated:v13];
        }
      }
    }
  }

  else
  {
  }
}

- (void)keyboardWillShow:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
  v4 = [(BTSPairController *)self indexPathForIndex:1];
  v5 = [v3 cellForRowAtIndexPath:v4];
  v6 = [v5 isFirstResponder];

  if (v6)
  {
    v7 = [MEMORY[0x277D75658] activeKeyboard];
    [v7 setReturnKeyEnabled:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = BTSPairController;
  v5 = [(BTSPairController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == 12)
  {
    v6 = [v5 editableTextField];
    v7 = v6;
    if (v6)
    {
      [v6 setKeyboardType:4];
      [v7 setReturnKeyType:9];
      [v7 setAutocapitalizationType:0];
      [v7 addTarget:self action:sel_textDidChange_ forControlEvents:0x20000];
      [v7 setDelegate:self];
    }
  }

  return v5;
}

- (void)textDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 length] > 3;

  v7 = [v4 text];

  pin = self->_pin;
  self->_pin = v7;

  v9 = [(BTSPairController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setEnabled:v6];

  v11 = [MEMORY[0x277D75658] activeKeyboard];
  [v11 setReturnKeyEnabled:v6];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v3 = a3;
  v4 = [v3 delegate];
  [v4 doneButtonClicked:v3];

  return 1;
}

- (id)specifiers
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v4 = [v3 objectForKey:@"bt-device"];

  v5 = [v4 device];
  device = self->_device;
  self->_device = v5;

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