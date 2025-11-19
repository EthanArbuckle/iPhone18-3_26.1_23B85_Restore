@interface QLPDFPermissionViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (QLPDFPermissionViewController)init;
- (QLPDFPermissionViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)buildCells;
- (void)doneButtonTapped;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v4 = [(QLPDFPermissionViewController *)self tableView];
  [v4 setTableFooterView:v3];

  v5 = [(QLPDFPermissionViewController *)self tableView];
  [v5 setRowHeight:UITableViewAutomaticDimension];

  v6 = [(QLPDFPermissionViewController *)self tableView];
  [v6 setEstimatedRowHeight:44.0];

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

  v10 = [(QLPDFPermissionViewController *)self cancelButton];
  v11 = [(QLPDFPermissionViewController *)self navigationItem];
  [v11 setLeftBarButtonItem:v10];

  v12 = [UIBarButtonItem alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005310;
  v19[3] = &unk_100024B18;
  objc_copyWeak(&v20, &location);
  v13 = [UIAction actionWithHandler:v19];
  v14 = [v12 initWithBarButtonSystemItem:0 primaryAction:v13];
  [(QLPDFPermissionViewController *)self setDoneButton:v14];

  v15 = [(QLPDFPermissionViewController *)self doneButton];
  v16 = [(QLPDFPermissionViewController *)self navigationItem];
  [v16 setRightBarButtonItem:v15];

  v17 = QLLocalizedStringWithDefaultValue();
  v18 = [(QLPDFPermissionViewController *)self navigationItem];
  [v18 setTitle:v17];

  [(QLPDFPermissionViewController *)self buildCells];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  if ([a4 row])
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

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(QLPDFPermissionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(QLPDFPermissionViewController *)self delegate];
    [v6 permissionViewControllerWasCancelled:self];
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(QLPDFPermissionViewController *)self passwordCell];
  v6 = [v5 textField];

  [v4 resignFirstResponder];
  if (v6 == v4)
  {
    v7 = [(QLPDFPermissionViewController *)self verifyCell];
    v8 = [v7 textField];
    [v8 becomeFirstResponder];
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
  v5 = [(QLPDFPermissionViewController *)self passwordCell];
  v6 = [v5 label];
  [v6 setText:v4];

  v7 = [(QLPDFPermissionViewController *)self passwordCell];
  v8 = [v7 label];
  [v8 setAdjustsFontSizeToFitWidth:1];

  v9 = QLLocalizedStringWithDefaultValue();
  v10 = [(QLPDFPermissionViewController *)self passwordCell];
  v11 = [v10 textField];
  [v11 setPlaceholder:v9];

  v12 = [(QLPDFPermissionViewController *)self passwordCell];
  v13 = [v12 textField];
  [v13 setAutocapitalizationType:0];

  v14 = [(QLPDFPermissionViewController *)self passwordCell];
  v15 = [v14 textField];
  [v15 setAutocorrectionType:1];

  v16 = QLPDFViewControllerPasswordTextFieldAccessibilityIdentifier;
  v17 = [(QLPDFPermissionViewController *)self passwordCell];
  v18 = [v17 textField];
  [v18 setAccessibilityIdentifier:v16];

  v19 = [(QLPDFPermissionViewController *)self passwordCell];
  v20 = [v19 textField];
  [v20 setDelegate:self];

  v21 = [(QLPDFPermissionViewController *)self passwordCell];
  v22 = [v21 textField];
  [v22 setReturnKeyType:4];

  v23 = [(QLPDFPermissionViewController *)self passwordCell];
  v24 = [v23 textField];
  [v24 setAdjustsFontSizeToFitWidth:1];

  v25 = objc_alloc_init(QLPDFPermissionCell);
  [(QLPDFPermissionViewController *)self setVerifyCell:v25];

  v26 = QLLocalizedStringWithDefaultValue();
  v27 = [(QLPDFPermissionViewController *)self verifyCell];
  v28 = [v27 label];
  [v28 setText:v26];

  v29 = [(QLPDFPermissionViewController *)self verifyCell];
  v30 = [v29 label];
  [v30 setAdjustsFontSizeToFitWidth:1];

  v31 = QLLocalizedStringWithDefaultValue();
  v32 = [(QLPDFPermissionViewController *)self verifyCell];
  v33 = [v32 textField];
  [v33 setPlaceholder:v31];

  v34 = [(QLPDFPermissionViewController *)self verifyCell];
  v35 = [v34 textField];
  [v35 setAutocapitalizationType:0];

  v36 = [(QLPDFPermissionViewController *)self verifyCell];
  v37 = [v36 textField];
  [v37 setAutocorrectionType:1];

  v38 = QLPDFViewControllerVerifyPasswordTextFieldAccessibilityIdentifier;
  v39 = [(QLPDFPermissionViewController *)self verifyCell];
  v40 = [v39 textField];
  [v40 setAccessibilityIdentifier:v38];

  v41 = [(QLPDFPermissionViewController *)self verifyCell];
  v42 = [v41 textField];
  [v42 setDelegate:self];

  v43 = [(QLPDFPermissionViewController *)self verifyCell];
  v44 = [v43 textField];
  [v44 setReturnKeyType:9];

  v45 = [(QLPDFPermissionViewController *)self verifyCell];
  v46 = [v45 textField];
  [v46 setAdjustsFontSizeToFitWidth:1];

  v47 = [(QLPDFPermissionViewController *)self passwordCell];
  v48 = [v47 label];
  v49 = [v48 text];
  v69 = NSFontAttributeName;
  v50 = [(QLPDFPermissionViewController *)self passwordCell];
  v51 = [v50 label];
  v52 = [v51 font];
  v70 = v52;
  v53 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
  [v49 sizeWithAttributes:v53];
  v55 = v54;

  v56 = [(QLPDFPermissionViewController *)self verifyCell];
  v57 = [v56 label];
  v58 = [v57 text];
  v67 = NSFontAttributeName;
  v59 = [(QLPDFPermissionViewController *)self verifyCell];
  v60 = [v59 label];
  v61 = [v60 font];
  v68 = v61;
  v62 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  [v58 sizeWithAttributes:v62];
  v64 = v63;

  if (v55 < v64)
  {
    v55 = v64;
  }

  v65 = [(QLPDFPermissionViewController *)self passwordCell];
  [v65 installConstraintsWithWidth:v55];

  v66 = [(QLPDFPermissionViewController *)self verifyCell];
  [v66 installConstraintsWithWidth:v55];
}

- (void)doneButtonTapped
{
  v3 = [(QLPDFPermissionViewController *)self passwordCell];
  v4 = [v3 textField];
  [v4 resignFirstResponder];

  v5 = [(QLPDFPermissionViewController *)self verifyCell];
  v6 = [v5 textField];
  [v6 resignFirstResponder];

  v7 = [(QLPDFPermissionViewController *)self passwordCell];
  v8 = [v7 textField];
  v9 = [v8 text];

  v10 = [(QLPDFPermissionViewController *)self verifyCell];
  v11 = [v10 textField];
  v12 = [v11 text];

  if (([v9 isEqualToString:v12] & 1) == 0)
  {
    v15 = QLLocalizedStringWithDefaultValue();
    v16 = [UIAlertController alertControllerWithTitle:0 message:v15 preferredStyle:1];
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

  if (![v9 length])
  {
    v15 = QLLocalizedStringWithDefaultValue();
    v16 = [UIAlertController alertControllerWithTitle:0 message:v15 preferredStyle:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005FE0;
    v19[3] = &unk_100024AF0;
    v19[4] = self;
    v17 = v19;
    goto LABEL_7;
  }

  v13 = [(QLPDFPermissionViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(QLPDFPermissionViewController *)self delegate];
    v21[0] = PDFDocumentUserPasswordOption;
    v21[1] = PDFDocumentOwnerPasswordOption;
    v22[0] = v9;
    v22[1] = v9;
    v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v15 permissionViewController:self didPickOptions:v16];
LABEL_8:
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(QLPDFPermissionViewController *)self passwordCell];
  v5 = [v4 label];
  v6 = [v5 text];
  v26 = NSFontAttributeName;
  v7 = [(QLPDFPermissionViewController *)self passwordCell];
  v8 = [v7 label];
  v9 = [v8 font];
  v27 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [v6 sizeWithAttributes:v10];
  v12 = v11;

  v13 = [(QLPDFPermissionViewController *)self verifyCell];
  v14 = [v13 label];
  v15 = [v14 text];
  v24 = NSFontAttributeName;
  v16 = [(QLPDFPermissionViewController *)self verifyCell];
  v17 = [v16 label];
  v18 = [v17 font];
  v25 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v15 sizeWithAttributes:v19];
  v21 = v20;

  if (v12 < v21)
  {
    v12 = v21;
  }

  v22 = [(QLPDFPermissionViewController *)self passwordCell];
  [v22 installConstraintsWithWidth:v12];

  v23 = [(QLPDFPermissionViewController *)self verifyCell];
  [v23 installConstraintsWithWidth:v12];
}

- (QLPDFPermissionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end