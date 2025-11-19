@interface AXUIVoiceOverBluetoothPairController
- (AXUIVoiceOverBluetoothPairController)init;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)cancelButtonClicked:(id)a3;
- (void)dealloc;
- (void)deviceUpdated:(id)a3;
- (void)doneButtonClicked:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)textDidChange:(id)a3;
- (void)updatePrompt:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AXUIVoiceOverBluetoothPairController

- (AXUIVoiceOverBluetoothPairController)init
{
  v6.receiver = self;
  v6.super_class = AXUIVoiceOverBluetoothPairController;
  v2 = [(AXUISettingsSetupCapableListController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_deviceUpdated_ name:*MEMORY[0x1E69898D0] object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AXUIVoiceOverBluetoothPairController;
  [(AXUISettingsSetupCapableListController *)&v12 viewDidLoad];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonClicked_];
  v4 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v5 = AXUILocalizedStringForKey(@"PAIR");
  v6 = [v4 initWithTitle:v5 style:2 target:self action:sel_doneButtonClicked_];

  v7 = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  v14[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v7 setRightBarButtonItems:v8];

  v9 = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  v13 = v3;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v9 setLeftBarButtonItems:v10];

  v11 = AXUILocalizedStringForKey(@"PAIRING_PROMPT");
  [(AXUIVoiceOverBluetoothPairController *)self updatePrompt:v11];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = AXUIVoiceOverBluetoothPairController;
  [(AXUIVoiceOverBluetoothPairController *)&v9 viewWillAppear:a3];
  v4 = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:0];

  v6 = [(AXUIVoiceOverBluetoothPairController *)self internalTableView];
  v7 = [(AXUIVoiceOverBluetoothPairController *)self indexPathForIndex:1];
  v8 = [v6 cellForRowAtIndexPath:v7];
  [v8 becomeFirstResponder];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXUIVoiceOverBluetoothPairController;
  [(AXUISettingsSetupCapableListController *)&v4 dealloc];
}

- (void)updatePrompt:(id)a3
{
  objc_storeStrong(&self->_promptFormat, a3);
  v5 = a3;
  v10 = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  v6 = MEMORY[0x1E696AEC0];
  promptFormat = self->_promptFormat;
  v8 = [(AXUIBluetoothDevice *)self->_device name];
  v9 = [v6 stringWithFormat:promptFormat, v8];

  [v10 setPrompt:v9];
}

- (void)cancelButtonClicked:(id)a3
{
  v4 = a3;
  self->_dismissed = 1;
  objc_opt_class();
  v5 = [(AXUIVoiceOverBluetoothPairController *)self specifier];
  v6 = [v5 userInfo];
  v7 = __UIAccessibilityCastAsClass();

  [v7 setObject:@"cancelled" forKey:@"PIN-ended"];
  [(AXUIBluetoothDevice *)self->_device setPIN:0];
  v8 = [(AXUIVoiceOverBluetoothPairController *)self parentController];
  [v8 dismiss];
}

- (void)doneButtonClicked:(id)a3
{
  v4 = a3;
  v5 = [(AXUIVoiceOverBluetoothPairController *)self internalTableView];
  v6 = [(AXUIVoiceOverBluetoothPairController *)self indexPathForIndex:1];
  v7 = [(AXUIVoiceOverBluetoothPairController *)self tableView:v5 cellForRowAtIndexPath:v6];

  v8 = [(AXUIVoiceOverBluetoothPairController *)self pin];
  v9 = [v8 length];

  if (v9 >= 4)
  {
    self->_dismissed = 1;
    objc_opt_class();
    v10 = [(AXUIVoiceOverBluetoothPairController *)self specifier];
    v11 = [v10 userInfo];
    v12 = __UIAccessibilityCastAsClass();

    [v12 setObject:@"entered" forKey:@"PIN-ended"];
    device = self->_device;
    v14 = [(AXUIVoiceOverBluetoothPairController *)self pin];
    [(AXUIBluetoothDevice *)device setPIN:v14];

    v15 = [(AXUIVoiceOverBluetoothPairController *)self parentController];
    [v15 dismiss];
  }
}

- (void)deviceUpdated:(id)a3
{
  v11 = [a3 object];
  v4 = [v11 address];
  v5 = [(AXUIBluetoothDevice *)self->_device address];
  v6 = v5;
  if (v4 == v5)
  {
    dismissed = self->_dismissed;

    if (dismissed)
    {
      goto LABEL_5;
    }

    v4 = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
    v8 = MEMORY[0x1E696AEC0];
    promptFormat = self->_promptFormat;
    v6 = [v11 name];
    v10 = [v8 stringWithFormat:promptFormat, v6];
    [v4 setTitle:v10];
  }

LABEL_5:
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [(AXUIVoiceOverBluetoothPairController *)self internalTableView];
  v5 = [(AXUIVoiceOverBluetoothPairController *)self indexPathForIndex:1];
  v6 = [v4 cellForRowAtIndexPath:v5];
  v7 = [v6 isFirstResponder];

  if (v7)
  {
    v8 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [v8 setReturnKeyEnabled:0];
  }
}

- (void)textDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 length] > 3;

  v7 = [v4 text];

  [(AXUIVoiceOverBluetoothPairController *)self setPin:v7];
  v8 = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  v9 = [v8 rightBarButtonItem];
  [v9 setEnabled:v6];

  v10 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [v10 setReturnKeyEnabled:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = AXUIVoiceOverBluetoothPairController;
  v5 = [(AXUIVoiceOverBluetoothPairController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
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

- (BOOL)textFieldShouldReturn:(id)a3
{
  v3 = a3;
  v4 = [v3 delegate];
  [v4 doneButtonClicked:v3];

  return 1;
}

- (id)specifiers
{
  objc_opt_class();
  v3 = [(AXUIVoiceOverBluetoothPairController *)self specifier];
  v4 = [v3 userInfo];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 objectForKey:@"bt-device"];
  device = self->_device;
  self->_device = v6;

  v8 = *MEMORY[0x1E69C57B8];
  v9 = *(&self->super.super.super.super.super.super.super.isa + v8);
  if (!v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    v11 = MEMORY[0x1E69C5748];
    v12 = AXUILocalizedStringForKey(@"PASSWORD");
    v13 = [v11 preferenceSpecifierNamed:v12 target:self set:sel_emptySetter_specifier_ get:0 detail:0 cell:12 edit:0];

    [v10 addObject:v13];
    v14 = *(&self->super.super.super.super.super.super.super.isa + v8);
    *(&self->super.super.super.super.super.super.super.isa + v8) = v10;

    v9 = *(&self->super.super.super.super.super.super.super.isa + v8);
  }

  v15 = v9;

  return v9;
}

@end