@interface CustomServiceURLDebugController
- ($6E15C01CA1BE37A4936191A84F7075E2)defaultsKey;
- (BOOL)textFieldShouldReturn:(id)return;
- (CustomServiceURLDebugController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CustomServiceURLDebugController

- ($6E15C01CA1BE37A4936191A84F7075E2)defaultsKey
{
  p_defaultsKey = &self->_defaultsKey;
  v3 = *&self->_defaultsKey.key.identifier;
  metadata = p_defaultsKey->key.metadata;
  result.var0.var1 = metadata;
  *&result.var0.var0 = v3;
  return result;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  navigationController = [(CustomServiceURLDebugController *)self navigationController];
  v4 = [navigationController popViewControllerAnimated:1];

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(UITextField *)self->_textField text];
  if ([text length])
  {
    if (text)
    {
      GEOConfigSetString();
      goto LABEL_6;
    }
  }

  else
  {
  }

  _GEOConfigRemoveValue();
  text = 0;
LABEL_6:
  callback = self->_callback;
  if (callback)
  {
    callback[2](callback, text, 0);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:GEOCountryConfigurationProvidersDidChangeNotification object:self userInfo:0];

  [(UITextField *)self->_textField resignFirstResponder];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  [v5 setAccessoryType:0];
  [v5 setSelectionStyle:0];
  v6 = self->_defaultURLString;
  if (_GEOConfigHasValue())
  {
    v7 = GEOConfigGetString();

    v6 = v7;
  }

  [(UITextField *)self->_textField setText:v6];
  [(UITextField *)self->_textField sizeToFit];
  [(UITextField *)self->_textField frame];
  v9 = v8;
  contentView = [v5 contentView];
  [contentView bounds];
  v12 = v11 + -12.0;

  contentView2 = [v5 contentView];
  [contentView2 bounds];
  v15 = (v14 - v12) * 0.5;

  contentView3 = [v5 contentView];
  [contentView3 bounds];
  v18 = (v17 - v9) * 0.5;

  [(UITextField *)self->_textField setFrame:v15, v18, v12, v9];
  contentView4 = [v5 contentView];
  [contentView4 addSubview:self->_textField];

  return v5;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  UIKeyboardForceOrderOutAutomaticAnimated();
  v5.receiver = self;
  v5.super_class = CustomServiceURLDebugController;
  [(CustomServiceURLDebugController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(UITextField *)self->_textField becomeFirstResponder];
  v5.receiver = self;
  v5.super_class = CustomServiceURLDebugController;
  [(CustomServiceURLDebugController *)&v5 viewDidAppear:appearCopy];
}

- (void)dealloc
{
  [(UITextField *)self->_textField setDelegate:0];
  v3.receiver = self;
  v3.super_class = CustomServiceURLDebugController;
  [(CustomServiceURLDebugController *)&v3 dealloc];
}

- (CustomServiceURLDebugController)initWithStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = CustomServiceURLDebugController;
  v3 = [(CustomServiceURLDebugController *)&v9 initWithStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(UITextField);
    textField = v3->_textField;
    v3->_textField = v4;

    [(UITextField *)v3->_textField setAutoresizingMask:18];
    v6 = +[UIColor clearColor];
    [(UITextField *)v3->_textField setBackgroundColor:v6];

    [(UITextField *)v3->_textField setAutocorrectionType:1];
    [(UITextField *)v3->_textField setAutocapitalizationType:0];
    [(UITextField *)v3->_textField setKeyboardType:3];
    [(UITextField *)v3->_textField setReturnKeyType:9];
    [(UITextField *)v3->_textField setClearButtonMode:3];
    [(UITextField *)v3->_textField setDelegate:v3];
    v7 = v3;
  }

  return v3;
}

@end