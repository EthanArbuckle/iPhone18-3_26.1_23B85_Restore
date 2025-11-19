@interface MacCollectionRenameViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (MacCollectionRenameViewController)initWithMapItem:(id)a3 saveHandler:(id)a4 cancelHandler:(id)a5;
- (id)keyCommands;
- (void)_cancel;
- (void)_save;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MacCollectionRenameViewController

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [v8 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  UInteger = GEOConfigGetUInteger();
  v13 = [v11 length];
  if (v13 > UInteger)
  {
    v14 = [v11 substringWithRange:{0, UInteger}];

    [v8 setText:v14];
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
    v4 = [(UITextField *)self->_textField text];
    v6 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &stru_1016631F0;
    }

    saveHandler[2](saveHandler, v5);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MacCollectionRenameViewController;
  [(MacCollectionRenameViewController *)&v4 viewDidAppear:a3];
  [(UITextField *)self->_textField becomeFirstResponder];
}

- (void)viewDidLoad
{
  v99.receiver = self;
  v99.super_class = MacCollectionRenameViewController;
  [(MacCollectionRenameViewController *)&v99 viewDidLoad];
  v3 = [(MacCollectionRenameViewController *)self view];
  [v3 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];

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

  v14 = [(MacCollectionRenameViewController *)self view];
  [v14 addSubview:self->_label];

  v15 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  textField = self->_textField;
  self->_textField = v15;

  [(UITextField *)self->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_textField setBorderStyle:3];
  [(UITextField *)self->_textField setAutocorrectionType:1];
  [(UITextField *)self->_textField setAutocapitalizationType:1];
  v17 = [(MKMapItem *)self->_mapItem _maps_defaultCollectionItemTitle];
  [(UITextField *)self->_textField setText:v17];

  [(UITextField *)self->_textField setDelegate:self];
  v18 = [(MacCollectionRenameViewController *)self view];
  [v18 addSubview:self->_textField];

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
  v24 = [(MacCollectionRenameViewController *)self view];
  [v24 addSubview:self->_cancelButton];

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
  v30 = [(MacCollectionRenameViewController *)self view];
  [v30 addSubview:self->_saveButton];

  v97 = [(UILabel *)self->_label topAnchor];
  v98 = [(MacCollectionRenameViewController *)self view];
  v96 = [v98 layoutMarginsGuide];
  v95 = [v96 topAnchor];
  v94 = [v97 constraintEqualToAnchor:v95];
  v100[0] = v94;
  v93 = [(UITextField *)self->_textField topAnchor];
  v92 = [(UILabel *)self->_label bottomAnchor];
  v91 = [v93 constraintEqualToAnchor:v92 constant:8.0];
  v100[1] = v91;
  v90 = [(UIButton *)self->_cancelButton topAnchor];
  v89 = [(UITextField *)self->_textField bottomAnchor];
  v88 = [v90 constraintEqualToAnchor:v89 constant:20.0];
  v100[2] = v88;
  v87 = [(UIButton *)self->_saveButton topAnchor];
  v86 = [(UIButton *)self->_cancelButton topAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v100[3] = v85;
  v82 = [(UIButton *)self->_saveButton bottomAnchor];
  v84 = [(MacCollectionRenameViewController *)self view];
  v83 = [v84 layoutMarginsGuide];
  v81 = [v83 bottomAnchor];
  LODWORD(v31) = 1148829696;
  v80 = [v82 constraintEqualToAnchor:v81 constant:0.0 priority:v31];
  v100[4] = v80;
  v79 = [(MacCollectionRenameViewController *)self view];
  v78 = [v79 widthAnchor];
  LODWORD(v32) = 1148829696;
  v77 = [v78 constraintEqualToConstant:250.0 priority:v32];
  v100[5] = v77;
  v75 = [(UILabel *)self->_label leadingAnchor];
  v76 = [(MacCollectionRenameViewController *)self view];
  v74 = [v76 layoutMarginsGuide];
  v73 = [v74 leadingAnchor];
  v72 = [v75 constraintEqualToAnchor:v73];
  v100[6] = v72;
  v70 = [(UILabel *)self->_label trailingAnchor];
  v71 = [(MacCollectionRenameViewController *)self view];
  v69 = [v71 layoutMarginsGuide];
  v68 = [v69 trailingAnchor];
  v67 = [v70 constraintLessThanOrEqualToAnchor:v68];
  v100[7] = v67;
  v65 = [(UITextField *)self->_textField leadingAnchor];
  v66 = [(MacCollectionRenameViewController *)self view];
  v64 = [v66 layoutMarginsGuide];
  v63 = [v64 leadingAnchor];
  v62 = [v65 constraintEqualToAnchor:v63];
  v100[8] = v62;
  v60 = [(UITextField *)self->_textField trailingAnchor];
  v61 = [(MacCollectionRenameViewController *)self view];
  v59 = [v61 layoutMarginsGuide];
  v58 = [v59 trailingAnchor];
  v57 = [v60 constraintEqualToAnchor:v58];
  v100[9] = v57;
  v55 = [(UIButton *)self->_cancelButton leadingAnchor];
  v56 = [(MacCollectionRenameViewController *)self view];
  v54 = [v56 layoutMarginsGuide];
  v53 = [v54 leadingAnchor];
  v52 = [v55 constraintGreaterThanOrEqualToAnchor:v53];
  v100[10] = v52;
  v51 = [(UIButton *)self->_cancelButton trailingAnchor];
  v50 = [(UIButton *)self->_saveButton leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:-10.0];
  v100[11] = v49;
  v48 = [(UIButton *)self->_cancelButton widthAnchor];
  LODWORD(v33) = 1132003328;
  v47 = [v48 constraintGreaterThanOrEqualToConstant:88.0 priority:v33];
  v100[12] = v47;
  v46 = [(UIButton *)self->_saveButton trailingAnchor];
  v34 = [(MacCollectionRenameViewController *)self view];
  v35 = [v34 layoutMarginsGuide];
  v36 = [v35 trailingAnchor];
  v37 = [v46 constraintEqualToAnchor:v36];
  v100[13] = v37;
  v38 = [(UIButton *)self->_saveButton widthAnchor];
  LODWORD(v39) = 1132003328;
  v40 = [v38 constraintGreaterThanOrEqualToConstant:88.0 priority:v39];
  v100[14] = v40;
  v41 = [(UIButton *)self->_saveButton widthAnchor];
  v42 = [(UIButton *)self->_cancelButton widthAnchor];
  LODWORD(v43) = 1132134400;
  v44 = [v41 constraintEqualToAnchor:v42 multiplier:1.0 priority:v43];
  v100[15] = v44;
  v45 = [NSArray arrayWithObjects:v100 count:16];

  [NSLayoutConstraint activateConstraints:v45];
}

- (void)loadView
{
  v3 = [[MacCollectionRenameView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MacCollectionRenameViewController *)self setView:v3];
}

- (MacCollectionRenameViewController)initWithMapItem:(id)a3 saveHandler:(id)a4 cancelHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MacCollectionRenameViewController;
  v12 = [(MacCollectionRenameViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mapItem, a3);
    v14 = objc_retainBlock(v10);
    saveHandler = v13->_saveHandler;
    v13->_saveHandler = v14;

    v16 = objc_retainBlock(v11);
    cancelHandler = v13->_cancelHandler;
    v13->_cancelHandler = v16;
  }

  return v13;
}

@end