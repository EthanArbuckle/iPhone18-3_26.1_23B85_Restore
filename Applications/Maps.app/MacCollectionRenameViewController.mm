@interface MacCollectionRenameViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (MacCollectionRenameViewController)initWithMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler;
- (id)keyCommands;
- (void)_cancel;
- (void)_save;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MacCollectionRenameViewController

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  UInteger = GEOConfigGetUInteger();
  v13 = [v11 length];
  if (v13 > UInteger)
  {
    v14 = [v11 substringWithRange:{0, UInteger}];

    [fieldCopy setText:v14];
    v11 = v14;
  }

  return v13 <= UInteger;
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"_cancel"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)_cancel
{
  [(MacCollectionRenameViewController *)self dismissViewControllerAnimated:1 completion:0];
  cancelHandler = self->_cancelHandler;
  if (cancelHandler)
  {
    v4 = *(cancelHandler + 2);

    v4();
  }
}

- (void)_save
{
  [(MacCollectionRenameViewController *)self dismissViewControllerAnimated:1 completion:0];
  saveHandler = self->_saveHandler;
  if (saveHandler)
  {
    text = [(UITextField *)self->_textField text];
    v6 = text;
    if (text)
    {
      v5 = text;
    }

    else
    {
      v5 = &stru_1016631F0;
    }

    saveHandler[2](saveHandler, v5);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MacCollectionRenameViewController;
  [(MacCollectionRenameViewController *)&v4 viewDidAppear:appear];
  [(UITextField *)self->_textField becomeFirstResponder];
}

- (void)viewDidLoad
{
  v99.receiver = self;
  v99.super_class = MacCollectionRenameViewController;
  [(MacCollectionRenameViewController *)&v99 viewDidLoad];
  view = [(MacCollectionRenameViewController *)self view];
  [view setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];

  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  label = self->_label;
  self->_label = v8;

  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIColor labelColor];
  [(UILabel *)self->_label setTextColor:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[Rename Editor] Name This Location" value:@"localized string not found" table:0];
  [(UILabel *)self->_label setText:v12];

  v13 = +[UIFont system17Bold];
  [(UILabel *)self->_label setFont:v13];

  view2 = [(MacCollectionRenameViewController *)self view];
  [view2 addSubview:self->_label];

  v15 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  textField = self->_textField;
  self->_textField = v15;

  [(UITextField *)self->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_textField setBorderStyle:3];
  [(UITextField *)self->_textField setAutocorrectionType:1];
  [(UITextField *)self->_textField setAutocapitalizationType:1];
  _maps_defaultCollectionItemTitle = [(MKMapItem *)self->_mapItem _maps_defaultCollectionItemTitle];
  [(UITextField *)self->_textField setText:_maps_defaultCollectionItemTitle];

  [(UITextField *)self->_textField setDelegate:self];
  view3 = [(MacCollectionRenameViewController *)self view];
  [view3 addSubview:self->_textField];

  v19 = [UIButton buttonWithType:1];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v19;

  [(UIButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_cancelButton setRole:2];
  v21 = self->_cancelButton;
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"[Rename Editor] Cancel" value:@"localized string not found" table:0];
  [(UIButton *)v21 setTitle:v23 forState:0];

  [(UIButton *)self->_cancelButton addTarget:self action:"_cancel" forControlEvents:64];
  view4 = [(MacCollectionRenameViewController *)self view];
  [view4 addSubview:self->_cancelButton];

  v25 = [UIButton buttonWithType:1];
  saveButton = self->_saveButton;
  self->_saveButton = v25;

  [(UIButton *)self->_saveButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_saveButton setRole:1];
  v27 = self->_saveButton;
  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"[Rename Editor] Save" value:@"localized string not found" table:0];
  [(UIButton *)v27 setTitle:v29 forState:0];

  [(UIButton *)self->_saveButton addTarget:self action:"_save" forControlEvents:64];
  view5 = [(MacCollectionRenameViewController *)self view];
  [view5 addSubview:self->_saveButton];

  topAnchor = [(UILabel *)self->_label topAnchor];
  view6 = [(MacCollectionRenameViewController *)self view];
  layoutMarginsGuide = [view6 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v94 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v100[0] = v94;
  topAnchor3 = [(UITextField *)self->_textField topAnchor];
  bottomAnchor = [(UILabel *)self->_label bottomAnchor];
  v91 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
  v100[1] = v91;
  topAnchor4 = [(UIButton *)self->_cancelButton topAnchor];
  bottomAnchor2 = [(UITextField *)self->_textField bottomAnchor];
  v88 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:20.0];
  v100[2] = v88;
  topAnchor5 = [(UIButton *)self->_saveButton topAnchor];
  topAnchor6 = [(UIButton *)self->_cancelButton topAnchor];
  v85 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v100[3] = v85;
  bottomAnchor3 = [(UIButton *)self->_saveButton bottomAnchor];
  view7 = [(MacCollectionRenameViewController *)self view];
  layoutMarginsGuide2 = [view7 layoutMarginsGuide];
  bottomAnchor4 = [layoutMarginsGuide2 bottomAnchor];
  LODWORD(v31) = 1148829696;
  v80 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0 priority:v31];
  v100[4] = v80;
  view8 = [(MacCollectionRenameViewController *)self view];
  widthAnchor = [view8 widthAnchor];
  LODWORD(v32) = 1148829696;
  v77 = [widthAnchor constraintEqualToConstant:250.0 priority:v32];
  v100[5] = v77;
  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  view9 = [(MacCollectionRenameViewController *)self view];
  layoutMarginsGuide3 = [view9 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
  v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v100[6] = v72;
  trailingAnchor = [(UILabel *)self->_label trailingAnchor];
  view10 = [(MacCollectionRenameViewController *)self view];
  layoutMarginsGuide4 = [view10 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
  v67 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v100[7] = v67;
  leadingAnchor3 = [(UITextField *)self->_textField leadingAnchor];
  view11 = [(MacCollectionRenameViewController *)self view];
  layoutMarginsGuide5 = [view11 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide5 leadingAnchor];
  v62 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v100[8] = v62;
  trailingAnchor3 = [(UITextField *)self->_textField trailingAnchor];
  view12 = [(MacCollectionRenameViewController *)self view];
  layoutMarginsGuide6 = [view12 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide6 trailingAnchor];
  v57 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v100[9] = v57;
  leadingAnchor5 = [(UIButton *)self->_cancelButton leadingAnchor];
  view13 = [(MacCollectionRenameViewController *)self view];
  layoutMarginsGuide7 = [view13 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide7 leadingAnchor];
  v52 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
  v100[10] = v52;
  trailingAnchor5 = [(UIButton *)self->_cancelButton trailingAnchor];
  leadingAnchor7 = [(UIButton *)self->_saveButton leadingAnchor];
  v49 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor7 constant:-10.0];
  v100[11] = v49;
  widthAnchor2 = [(UIButton *)self->_cancelButton widthAnchor];
  LODWORD(v33) = 1132003328;
  v47 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:88.0 priority:v33];
  v100[12] = v47;
  trailingAnchor6 = [(UIButton *)self->_saveButton trailingAnchor];
  view14 = [(MacCollectionRenameViewController *)self view];
  layoutMarginsGuide8 = [view14 layoutMarginsGuide];
  trailingAnchor7 = [layoutMarginsGuide8 trailingAnchor];
  v37 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v100[13] = v37;
  widthAnchor3 = [(UIButton *)self->_saveButton widthAnchor];
  LODWORD(v39) = 1132003328;
  v40 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:88.0 priority:v39];
  v100[14] = v40;
  widthAnchor4 = [(UIButton *)self->_saveButton widthAnchor];
  widthAnchor5 = [(UIButton *)self->_cancelButton widthAnchor];
  LODWORD(v43) = 1132134400;
  v44 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 multiplier:1.0 priority:v43];
  v100[15] = v44;
  v45 = [NSArray arrayWithObjects:v100 count:16];

  [NSLayoutConstraint activateConstraints:v45];
}

- (void)loadView
{
  v3 = [[MacCollectionRenameView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MacCollectionRenameViewController *)self setView:v3];
}

- (MacCollectionRenameViewController)initWithMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  itemCopy = item;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  v19.receiver = self;
  v19.super_class = MacCollectionRenameViewController;
  v12 = [(MacCollectionRenameViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mapItem, item);
    v14 = objc_retainBlock(handlerCopy);
    saveHandler = v13->_saveHandler;
    v13->_saveHandler = v14;

    v16 = objc_retainBlock(cancelHandlerCopy);
    cancelHandler = v13->_cancelHandler;
    v13->_cancelHandler = v16;
  }

  return v13;
}

@end