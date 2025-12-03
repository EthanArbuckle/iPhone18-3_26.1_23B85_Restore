@interface AAUIOBSpinnerViewController
- (AAUIOBSpinnerViewController)init;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AAUIOBSpinnerViewController

- (AAUIOBSpinnerViewController)init
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"UPDATING_APPLE_ID_LABEL_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
  v7.receiver = self;
  v7.super_class = AAUIOBSpinnerViewController;
  v5 = [(OBSetupAssistantSpinnerController *)&v7 initWithSpinnerText:v4];

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AAUIOBSpinnerViewController;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:appear];
  if (self->_actionBlock)
  {
    v4 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AAUIOBSpinnerViewController_viewDidAppear___block_invoke;
    block[3] = &unk_1E820B8F0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

@end