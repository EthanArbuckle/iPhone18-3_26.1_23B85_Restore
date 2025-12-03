@interface QLPDFPermissionViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (QLPDFPermissionViewController)init;
- (QLPDFPermissionViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)buildCells;
- (void)doneButtonTapped;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation QLPDFPermissionViewController

- (QLPDFPermissionViewController)init
{
  v3.receiver = self;
  v3.super_class = QLPDFPermissionViewController;
  return [(QLPDFPermissionViewController *)&v3 initWithStyle:2];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = QLPDFPermissionViewController;
  [(QLPDFPermissionViewController *)&v24 viewDidLoad];
  v3 = objc_opt_new();
  tableView = [(QLPDFPermissionViewController *)self tableView];
  [tableView setTableFooterView:v3];

  tableView2 = [(QLPDFPermissionViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(QLPDFPermissionViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:44.0];

  objc_initWeak(&location, self);
  v7 = [UIBarButtonItem alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000528C;
  v21[3] = &unk_100024B18;
  objc_copyWeak(&v22, &location);
  v8 = [UIAction actionWithHandler:v21];
  v9 = [v7 initWithBarButtonSystemItem:1 primaryAction:v8];
  [(QLPDFPermissionViewController *)self setCancelButton:v9];

  cancelButton = [(QLPDFPermissionViewController *)self cancelButton];
  navigationItem = [(QLPDFPermissionViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:cancelButton];

  v12 = [UIBarButtonItem alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005310;
  v19[3] = &unk_100024B18;
  objc_copyWeak(&v20, &location);
  v13 = [UIAction actionWithHandler:v19];
  v14 = [v12 initWithBarButtonSystemItem:0 primaryAction:v13];
  [(QLPDFPermissionViewController *)self setDoneButton:v14];

  doneButton = [(QLPDFPermissionViewController *)self doneButton];
  navigationItem2 = [(QLPDFPermissionViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:doneButton];

  v17 = QLLocalizedStringWithDefaultValue();
  navigationItem3 = [(QLPDFPermissionViewController *)self navigationItem];
  [navigationItem3 setTitle:v17];

  [(QLPDFPermissionViewController *)self buildCells];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  if ([path row])
  {
    [(QLPDFPermissionViewController *)self verifyCell];
  }

  else
  {
    [(QLPDFPermissionViewController *)self passwordCell];
  }
  v5 = ;

  return v5;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  delegate = [(QLPDFPermissionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(QLPDFPermissionViewController *)self delegate];
    [delegate2 permissionViewControllerWasCancelled:self];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  passwordCell = [(QLPDFPermissionViewController *)self passwordCell];
  textField = [passwordCell textField];

  [returnCopy resignFirstResponder];
  if (textField == returnCopy)
  {
    verifyCell = [(QLPDFPermissionViewController *)self verifyCell];
    textField2 = [verifyCell textField];
    [textField2 becomeFirstResponder];
  }

  else
  {
    [(QLPDFPermissionViewController *)self doneButtonTapped];
  }

  return 1;
}

- (void)buildCells
{
  v3 = objc_alloc_init(QLPDFPermissionCell);
  [(QLPDFPermissionViewController *)self setPasswordCell:v3];

  v4 = QLLocalizedStringWithDefaultValue();
  passwordCell = [(QLPDFPermissionViewController *)self passwordCell];
  label = [passwordCell label];
  [label setText:v4];

  passwordCell2 = [(QLPDFPermissionViewController *)self passwordCell];
  label2 = [passwordCell2 label];
  [label2 setAdjustsFontSizeToFitWidth:1];

  v9 = QLLocalizedStringWithDefaultValue();
  passwordCell3 = [(QLPDFPermissionViewController *)self passwordCell];
  textField = [passwordCell3 textField];
  [textField setPlaceholder:v9];

  passwordCell4 = [(QLPDFPermissionViewController *)self passwordCell];
  textField2 = [passwordCell4 textField];
  [textField2 setAutocapitalizationType:0];

  passwordCell5 = [(QLPDFPermissionViewController *)self passwordCell];
  textField3 = [passwordCell5 textField];
  [textField3 setAutocorrectionType:1];

  v16 = QLPDFViewControllerPasswordTextFieldAccessibilityIdentifier;
  passwordCell6 = [(QLPDFPermissionViewController *)self passwordCell];
  textField4 = [passwordCell6 textField];
  [textField4 setAccessibilityIdentifier:v16];

  passwordCell7 = [(QLPDFPermissionViewController *)self passwordCell];
  textField5 = [passwordCell7 textField];
  [textField5 setDelegate:self];

  passwordCell8 = [(QLPDFPermissionViewController *)self passwordCell];
  textField6 = [passwordCell8 textField];
  [textField6 setReturnKeyType:4];

  passwordCell9 = [(QLPDFPermissionViewController *)self passwordCell];
  textField7 = [passwordCell9 textField];
  [textField7 setAdjustsFontSizeToFitWidth:1];

  v25 = objc_alloc_init(QLPDFPermissionCell);
  [(QLPDFPermissionViewController *)self setVerifyCell:v25];

  v26 = QLLocalizedStringWithDefaultValue();
  verifyCell = [(QLPDFPermissionViewController *)self verifyCell];
  label3 = [verifyCell label];
  [label3 setText:v26];

  verifyCell2 = [(QLPDFPermissionViewController *)self verifyCell];
  label4 = [verifyCell2 label];
  [label4 setAdjustsFontSizeToFitWidth:1];

  v31 = QLLocalizedStringWithDefaultValue();
  verifyCell3 = [(QLPDFPermissionViewController *)self verifyCell];
  textField8 = [verifyCell3 textField];
  [textField8 setPlaceholder:v31];

  verifyCell4 = [(QLPDFPermissionViewController *)self verifyCell];
  textField9 = [verifyCell4 textField];
  [textField9 setAutocapitalizationType:0];

  verifyCell5 = [(QLPDFPermissionViewController *)self verifyCell];
  textField10 = [verifyCell5 textField];
  [textField10 setAutocorrectionType:1];

  v38 = QLPDFViewControllerVerifyPasswordTextFieldAccessibilityIdentifier;
  verifyCell6 = [(QLPDFPermissionViewController *)self verifyCell];
  textField11 = [verifyCell6 textField];
  [textField11 setAccessibilityIdentifier:v38];

  verifyCell7 = [(QLPDFPermissionViewController *)self verifyCell];
  textField12 = [verifyCell7 textField];
  [textField12 setDelegate:self];

  verifyCell8 = [(QLPDFPermissionViewController *)self verifyCell];
  textField13 = [verifyCell8 textField];
  [textField13 setReturnKeyType:9];

  verifyCell9 = [(QLPDFPermissionViewController *)self verifyCell];
  textField14 = [verifyCell9 textField];
  [textField14 setAdjustsFontSizeToFitWidth:1];

  passwordCell10 = [(QLPDFPermissionViewController *)self passwordCell];
  label5 = [passwordCell10 label];
  text = [label5 text];
  v69 = NSFontAttributeName;
  passwordCell11 = [(QLPDFPermissionViewController *)self passwordCell];
  label6 = [passwordCell11 label];
  font = [label6 font];
  v70 = font;
  v53 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
  [text sizeWithAttributes:v53];
  v55 = v54;

  verifyCell10 = [(QLPDFPermissionViewController *)self verifyCell];
  label7 = [verifyCell10 label];
  text2 = [label7 text];
  v67 = NSFontAttributeName;
  verifyCell11 = [(QLPDFPermissionViewController *)self verifyCell];
  label8 = [verifyCell11 label];
  font2 = [label8 font];
  v68 = font2;
  v62 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  [text2 sizeWithAttributes:v62];
  v64 = v63;

  if (v55 < v64)
  {
    v55 = v64;
  }

  passwordCell12 = [(QLPDFPermissionViewController *)self passwordCell];
  [passwordCell12 installConstraintsWithWidth:v55];

  verifyCell12 = [(QLPDFPermissionViewController *)self verifyCell];
  [verifyCell12 installConstraintsWithWidth:v55];
}

- (void)doneButtonTapped
{
  passwordCell = [(QLPDFPermissionViewController *)self passwordCell];
  textField = [passwordCell textField];
  [textField resignFirstResponder];

  verifyCell = [(QLPDFPermissionViewController *)self verifyCell];
  textField2 = [verifyCell textField];
  [textField2 resignFirstResponder];

  passwordCell2 = [(QLPDFPermissionViewController *)self passwordCell];
  textField3 = [passwordCell2 textField];
  text = [textField3 text];

  verifyCell2 = [(QLPDFPermissionViewController *)self verifyCell];
  textField4 = [verifyCell2 textField];
  text2 = [textField4 text];

  if (([text isEqualToString:text2] & 1) == 0)
  {
    delegate2 = QLLocalizedStringWithDefaultValue();
    v16 = [UIAlertController alertControllerWithTitle:0 message:delegate2 preferredStyle:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100005F84;
    v20[3] = &unk_100024AF0;
    v20[4] = self;
    v17 = v20;
LABEL_7:
    v18 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v17];
    [v16 addAction:v18];
    [(QLPDFPermissionViewController *)self presentViewController:v16 animated:1 completion:0];

    goto LABEL_8;
  }

  if (![text length])
  {
    delegate2 = QLLocalizedStringWithDefaultValue();
    v16 = [UIAlertController alertControllerWithTitle:0 message:delegate2 preferredStyle:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005FE0;
    v19[3] = &unk_100024AF0;
    v19[4] = self;
    v17 = v19;
    goto LABEL_7;
  }

  delegate = [(QLPDFPermissionViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(QLPDFPermissionViewController *)self delegate];
    v21[0] = PDFDocumentUserPasswordOption;
    v21[1] = PDFDocumentOwnerPasswordOption;
    v22[0] = text;
    v22[1] = text;
    v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    [delegate2 permissionViewController:self didPickOptions:v16];
LABEL_8:
  }
}

- (void)traitCollectionDidChange:(id)change
{
  passwordCell = [(QLPDFPermissionViewController *)self passwordCell];
  label = [passwordCell label];
  text = [label text];
  v26 = NSFontAttributeName;
  passwordCell2 = [(QLPDFPermissionViewController *)self passwordCell];
  label2 = [passwordCell2 label];
  font = [label2 font];
  v27 = font;
  v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [text sizeWithAttributes:v10];
  v12 = v11;

  verifyCell = [(QLPDFPermissionViewController *)self verifyCell];
  label3 = [verifyCell label];
  text2 = [label3 text];
  v24 = NSFontAttributeName;
  verifyCell2 = [(QLPDFPermissionViewController *)self verifyCell];
  label4 = [verifyCell2 label];
  font2 = [label4 font];
  v25 = font2;
  v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [text2 sizeWithAttributes:v19];
  v21 = v20;

  if (v12 < v21)
  {
    v12 = v21;
  }

  passwordCell3 = [(QLPDFPermissionViewController *)self passwordCell];
  [passwordCell3 installConstraintsWithWidth:v12];

  verifyCell3 = [(QLPDFPermissionViewController *)self verifyCell];
  [verifyCell3 installConstraintsWithWidth:v12];
}

- (QLPDFPermissionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end