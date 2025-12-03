@interface ESDiagnosticsNotesController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (ESDiagnosticsNotesController)init;
- (void)_cancelButtonPressed;
- (void)_disableButtons;
- (void)_enableButtons;
- (void)_okButtonPressed;
@end

@implementation ESDiagnosticsNotesController

- (void)_disableButtons
{
  pane = [(ESDiagnosticsNotesController *)self pane];
  [pane resignFirstResponder];

  pane2 = [(ESDiagnosticsNotesController *)self pane];
  [pane2 setEnabled:0];

  navigationItem = [(ESDiagnosticsNotesController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:0];

  navigationItem2 = [(ESDiagnosticsNotesController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];
}

- (void)_enableButtons
{
  pane = [(ESDiagnosticsNotesController *)self pane];
  [pane setEnabled:1];

  navigationItem = [(ESDiagnosticsNotesController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:1];

  navigationItem2 = [(ESDiagnosticsNotesController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (void)_cancelButtonPressed
{
  parentController = [(ESDiagnosticsNotesController *)self parentController];
  [parentController dismiss];
}

- (void)_okButtonPressed
{
  [(ESDiagnosticsNotesController *)self _disableButtons];
  specifier = [(ESDiagnosticsNotesController *)self specifier];
  v4 = [specifier propertyForKey:@"kESDiagnosticSaveNotesDelegate"];

  pane = [(ESDiagnosticsNotesController *)self pane];
  preferenceValue = [pane preferenceValue];

  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_164C;
  block[3] = &unk_307F8;
  v11 = v4;
  v12 = preferenceValue;
  selfCopy = self;
  v8 = preferenceValue;
  v9 = v4;
  dispatch_async(v7, block);
}

- (ESDiagnosticsNotesController)init
{
  v15.receiver = self;
  v15.super_class = ESDiagnosticsNotesController;
  v2 = [(ESDiagnosticsNotesController *)&v15 init];
  v3 = v2;
  if (v2)
  {
    navigationItem = [(ESDiagnosticsNotesController *)v2 navigationItem];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DIAG_NOTES_TITLE" value:&stru_30C98 table:@"Diagnostic"];
    [navigationItem setTitle:v6];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DIAGS_NOTES_PROMPT" value:&stru_30C98 table:@"Diagnostic"];
    [navigationItem setPrompt:v8];

    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v3 action:"_cancelButtonPressed"];
    v10 = [UIBarButtonItem alloc];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Diagnostic"];
    v13 = [v10 initWithTitle:v12 style:2 target:v3 action:"_okButtonPressed"];

    [navigationItem setLeftBarButtonItem:v9];
    [navigationItem setRightBarButtonItem:v13];
  }

  return v3;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  return orientation == 1 || (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

@end