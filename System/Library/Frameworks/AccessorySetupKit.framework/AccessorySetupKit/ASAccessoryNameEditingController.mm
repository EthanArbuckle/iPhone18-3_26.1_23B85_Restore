@interface ASAccessoryNameEditingController
- (ASAccessoryNameEditingController)init;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)keyboardWillShow:(id)show;
- (void)suspend;
- (void)textDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation ASAccessoryNameEditingController

- (ASAccessoryNameEditingController)init
{
  v5.receiver = self;
  v5.super_class = ASAccessoryNameEditingController;
  v2 = [(ASAccessoryNameEditingController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASAccessoryNameEditingController;
  [(ASAccessoryNameEditingController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ASAccessoryNameEditingController;
  [(ASAccessoryNameEditingController *)&v6 viewDidLoad];
  if (!self->_session)
  {
    v3 = objc_alloc_init(MEMORY[0x277D04780]);
    session = self->_session;
    self->_session = v3;

    v5 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD18]) propertyForKey:@"bundleID"];
    [(DASession *)self->_session setBundleID:v5];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC40];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD18]) propertyForKey:@"device"];
    currentDevice = self->_currentDevice;
    self->_currentDevice = v5;

    name = [(DADevice *)self->_currentDevice name];
    deviceName = self->_deviceName;
    self->_deviceName = name;

    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [(objc_class *)getPSSpecifierClass() emptyGroupSpecifier];
    v11 = [v9 initWithObjects:{emptyGroupSpecifier, 0}];

    PSSpecifierClass = getPSSpecifierClass();
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD00]));
    v14 = [(objc_class *)PSSpecifierClass preferenceSpecifierNamed:0 target:WeakRetained set:sel_saveEditedName_specifier_ get:sel_getDeviceName_ detail:0 cell:8 edit:0];

    [v14 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF28]];
    [v11 addObject:v14];
    v15 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v11;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)suspend
{
  firstResponder = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC58]) firstResponder];
  [firstResponder resignFirstResponder];

  v4.receiver = self;
  v4.super_class = ASAccessoryNameEditingController;
  [(ASAccessoryNameEditingController *)&v4 suspend];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = ASAccessoryNameEditingController;
  v5 = [(ASAccessoryNameEditingController *)&v9 tableView:view cellForRowAtIndexPath:path];
  editableTextField = [v5 editableTextField];
  v7 = editableTextField;
  if (editableTextField)
  {
    [editableTextField setReturnKeyType:9];
    [v7 setAutocapitalizationType:0];
    [v7 setAutocorrectionType:1];
    [v7 setAdjustsFontSizeToFitWidth:1];
    [v7 setTextAlignment:4];
    [v7 setClearButtonMode:3];
    [v7 addTarget:self action:sel_textDidChange_ forControlEvents:0x20000];
    [v7 setDelegate:self];
    [v7 setText:self->_deviceName];
    [v7 setPlaceholder:self->_deviceName];
  }

  return v5;
}

- (void)keyboardWillShow:(id)show
{
  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  [activeKeyboard setReturnKeyEnabled:{-[ASAccessoryNameEditingController keyboardShownOnce](self, "keyboardShownOnce")}];

  if (![(ASAccessoryNameEditingController *)self keyboardShownOnce])
  {

    [(ASAccessoryNameEditingController *)self setKeyboardShownOnce:1];
  }
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  text = [changeCopy text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v6 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [changeCopy setText:&stru_28499D698];
    }
  }

  v7 = [v6 isEqualToString:self->_deviceName];
  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  [activeKeyboard setReturnKeyEnabled:v7 ^ 1u];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x277D04740]);
    [v7 setDisplayName:v6];
    [v7 setUserInitiated:1];
    identifier = [(DADevice *)self->_currentDevice identifier];
    [(DASession *)self->_session modifyDeviceWithIdentifier:identifier settings:v7 completionHandler:&__block_literal_global];
  }

  return 1;
}

@end