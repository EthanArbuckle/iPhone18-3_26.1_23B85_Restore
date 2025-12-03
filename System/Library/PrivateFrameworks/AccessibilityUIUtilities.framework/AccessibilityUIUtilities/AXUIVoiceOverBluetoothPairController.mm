@interface AXUIVoiceOverBluetoothPairController
- (AXUIVoiceOverBluetoothPairController)init;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)cancelButtonClicked:(id)clicked;
- (void)dealloc;
- (void)deviceUpdated:(id)updated;
- (void)doneButtonClicked:(id)clicked;
- (void)keyboardWillShow:(id)show;
- (void)textDidChange:(id)change;
- (void)updatePrompt:(id)prompt;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXUIVoiceOverBluetoothPairController

- (AXUIVoiceOverBluetoothPairController)init
{
  v6.receiver = self;
  v6.super_class = AXUIVoiceOverBluetoothPairController;
  v2 = [(AXUISettingsSetupCapableListController *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_deviceUpdated_ name:*MEMORY[0x1E69898D0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
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

  navigationItem = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  v14[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [navigationItem setRightBarButtonItems:v8];

  navigationItem2 = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  v13 = v3;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [navigationItem2 setLeftBarButtonItems:v10];

  v11 = AXUILocalizedStringForKey(@"PAIRING_PROMPT");
  [(AXUIVoiceOverBluetoothPairController *)self updatePrompt:v11];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = AXUIVoiceOverBluetoothPairController;
  [(AXUIVoiceOverBluetoothPairController *)&v9 viewWillAppear:appear];
  navigationItem = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  internalTableView = [(AXUIVoiceOverBluetoothPairController *)self internalTableView];
  v7 = [(AXUIVoiceOverBluetoothPairController *)self indexPathForIndex:1];
  v8 = [internalTableView cellForRowAtIndexPath:v7];
  [v8 becomeFirstResponder];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXUIVoiceOverBluetoothPairController;
  [(AXUISettingsSetupCapableListController *)&v4 dealloc];
}

- (void)updatePrompt:(id)prompt
{
  objc_storeStrong(&self->_promptFormat, prompt);
  promptCopy = prompt;
  navigationItem = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  v6 = MEMORY[0x1E696AEC0];
  promptFormat = self->_promptFormat;
  name = [(AXUIBluetoothDevice *)self->_device name];
  v9 = [v6 stringWithFormat:promptFormat, name];

  [navigationItem setPrompt:v9];
}

- (void)cancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  self->_dismissed = 1;
  objc_opt_class();
  specifier = [(AXUIVoiceOverBluetoothPairController *)self specifier];
  userInfo = [specifier userInfo];
  v7 = __UIAccessibilityCastAsClass();

  [v7 setObject:@"cancelled" forKey:@"PIN-ended"];
  [(AXUIBluetoothDevice *)self->_device setPIN:0];
  parentController = [(AXUIVoiceOverBluetoothPairController *)self parentController];
  [parentController dismiss];
}

- (void)doneButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  internalTableView = [(AXUIVoiceOverBluetoothPairController *)self internalTableView];
  v6 = [(AXUIVoiceOverBluetoothPairController *)self indexPathForIndex:1];
  v7 = [(AXUIVoiceOverBluetoothPairController *)self tableView:internalTableView cellForRowAtIndexPath:v6];

  v8 = [(AXUIVoiceOverBluetoothPairController *)self pin];
  v9 = [v8 length];

  if (v9 >= 4)
  {
    self->_dismissed = 1;
    objc_opt_class();
    specifier = [(AXUIVoiceOverBluetoothPairController *)self specifier];
    userInfo = [specifier userInfo];
    v12 = __UIAccessibilityCastAsClass();

    [v12 setObject:@"entered" forKey:@"PIN-ended"];
    device = self->_device;
    v14 = [(AXUIVoiceOverBluetoothPairController *)self pin];
    [(AXUIBluetoothDevice *)device setPIN:v14];

    parentController = [(AXUIVoiceOverBluetoothPairController *)self parentController];
    [parentController dismiss];
  }
}

- (void)deviceUpdated:(id)updated
{
  object = [updated object];
  address = [object address];
  address2 = [(AXUIBluetoothDevice *)self->_device address];
  name = address2;
  if (address == address2)
  {
    dismissed = self->_dismissed;

    if (dismissed)
    {
      goto LABEL_5;
    }

    address = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
    v8 = MEMORY[0x1E696AEC0];
    promptFormat = self->_promptFormat;
    name = [object name];
    v10 = [v8 stringWithFormat:promptFormat, name];
    [address setTitle:v10];
  }

LABEL_5:
}

- (void)keyboardWillShow:(id)show
{
  internalTableView = [(AXUIVoiceOverBluetoothPairController *)self internalTableView];
  v5 = [(AXUIVoiceOverBluetoothPairController *)self indexPathForIndex:1];
  v6 = [internalTableView cellForRowAtIndexPath:v5];
  isFirstResponder = [v6 isFirstResponder];

  if (isFirstResponder)
  {
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:0];
  }
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  text = [changeCopy text];
  v6 = [text length] > 3;

  text2 = [changeCopy text];

  [(AXUIVoiceOverBluetoothPairController *)self setPin:text2];
  navigationItem = [(AXUIVoiceOverBluetoothPairController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v6];

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard setReturnKeyEnabled:v6];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AXUIVoiceOverBluetoothPairController;
  v5 = [(AXUIVoiceOverBluetoothPairController *)&v9 tableView:view cellForRowAtIndexPath:path];
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

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  delegate = [returnCopy delegate];
  [delegate doneButtonClicked:returnCopy];

  return 1;
}

- (id)specifiers
{
  objc_opt_class();
  specifier = [(AXUIVoiceOverBluetoothPairController *)self specifier];
  userInfo = [specifier userInfo];
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