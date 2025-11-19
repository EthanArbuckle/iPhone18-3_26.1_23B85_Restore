@interface ESDiagnosticsNotesController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (ESDiagnosticsNotesController)init;
- (void)_cancelButtonPressed;
- (void)_disableButtons;
- (void)_enableButtons;
- (void)_okButtonPressed;
@end

@implementation ESDiagnosticsNotesController

- (void)_disableButtons
{
  v3 = [(ESDiagnosticsNotesController *)self pane];
  [v3 resignFirstResponder];

  v4 = [(ESDiagnosticsNotesController *)self pane];
  [v4 setEnabled:0];

  v5 = [(ESDiagnosticsNotesController *)self navigationItem];
  v6 = [v5 leftBarButtonItem];
  [v6 setEnabled:0];

  v8 = [(ESDiagnosticsNotesController *)self navigationItem];
  v7 = [v8 rightBarButtonItem];
  [v7 setEnabled:0];
}

- (void)_enableButtons
{
  v3 = [(ESDiagnosticsNotesController *)self pane];
  [v3 setEnabled:1];

  v4 = [(ESDiagnosticsNotesController *)self navigationItem];
  v5 = [v4 leftBarButtonItem];
  [v5 setEnabled:1];

  v7 = [(ESDiagnosticsNotesController *)self navigationItem];
  v6 = [v7 rightBarButtonItem];
  [v6 setEnabled:1];
}

- (void)_cancelButtonPressed
{
  v2 = [(ESDiagnosticsNotesController *)self parentController];
  [v2 dismiss];
}

- (void)_okButtonPressed
{
  [(ESDiagnosticsNotesController *)self _disableButtons];
  v3 = [(ESDiagnosticsNotesController *)self specifier];
  v4 = [v3 propertyForKey:@"kESDiagnosticSaveNotesDelegate"];

  v5 = [(ESDiagnosticsNotesController *)self pane];
  v6 = [v5 preferenceValue];

  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_164C;
  block[3] = &unk_307F8;
  v11 = v4;
  v12 = v6;
  v13 = self;
  v8 = v6;
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
    v4 = [(ESDiagnosticsNotesController *)v2 navigationItem];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DIAG_NOTES_TITLE" value:&stru_30C98 table:@"Diagnostic"];
    [v4 setTitle:v6];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DIAGS_NOTES_PROMPT" value:&stru_30C98 table:@"Diagnostic"];
    [v4 setPrompt:v8];

    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v3 action:"_cancelButtonPressed"];
    v10 = [UIBarButtonItem alloc];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Diagnostic"];
    v13 = [v10 initWithTitle:v12 style:2 target:v3 action:"_okButtonPressed"];

    [v4 setLeftBarButtonItem:v9];
    [v4 setRightBarButtonItem:v13];
  }

  return v3;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return a3 == 1 || (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

@end