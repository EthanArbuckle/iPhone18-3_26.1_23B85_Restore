@interface AAUIInheritanceShareAccessKeyOptionsViewController
- (AAUIInheritanceSetupFlowDelegate)flowDelegate;
- (AAUIInheritanceShareAccessKeyOptionsViewController)initWithBeneficiaryName:(id)name handle:(id)handle;
- (id)_configurationForShareType:(unint64_t)type;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_dismiss;
- (void)_setupCancelButtonIfNeeded;
- (void)_setupTableView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AAUIInheritanceShareAccessKeyOptionsViewController

- (AAUIInheritanceShareAccessKeyOptionsViewController)initWithBeneficiaryName:(id)name handle:(id)handle
{
  handleCopy = handle;
  nameCopy = name;
  v8 = [[AAUIOBInheritanceShareAccessKeyOptionsViewModel alloc] initWithBeneficiaryName:nameCopy handle:handleCopy];

  viewModel = self->_viewModel;
  self->_viewModel = v8;

  defaultSharingOptions = [(AAOBInheritanceShareAccessKeyOptionsModel *)self->_viewModel defaultSharingOptions];
  options = self->_options;
  self->_options = defaultSharingOptions;

  v12 = self->_viewModel;
  v14.receiver = self;
  v14.super_class = AAUIInheritanceShareAccessKeyOptionsViewController;
  return [(AAUIOBTableWelcomeController *)&v14 initWithViewModel:v12];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AAUIInheritanceShareAccessKeyOptionsViewController;
  [(AAUIOBTableWelcomeController *)&v7 viewDidLoad];
  [(AAUIInheritanceShareAccessKeyOptionsViewController *)self _setupCancelButtonIfNeeded];
  [(AAUIInheritanceShareAccessKeyOptionsViewController *)self _setupTableView];
  objc_initWeak(&location, self);
  viewModel = self->_viewModel;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AAUIInheritanceShareAccessKeyOptionsViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_1E820D3D0;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [(AAOBInheritanceShareAccessKeyOptionsModel *)viewModel availableSharingOptionsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __65__AAUIInheritanceShareAccessKeyOptionsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1320);
  *(v4 + 1320) = v3;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AAUIInheritanceShareAccessKeyOptionsViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_1E820C290;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
}

void __65__AAUIInheritanceShareAccessKeyOptionsViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tableView];
  [v1 reloadData];
}

- (void)_setupCancelButtonIfNeeded
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7(&dword_1C5355000, v2, v3, "%@ Setting up cancel button", v4, v5, v6, v7, 2u);
}

- (void)_dismiss
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__AAUIInheritanceShareAccessKeyOptionsViewController__dismiss__block_invoke;
  v2[3] = &unk_1E820B8F0;
  v2[4] = self;
  [(AAUIInheritanceShareAccessKeyOptionsViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __62__AAUIInheritanceShareAccessKeyOptionsViewController__dismiss__block_invoke()
{
  v0 = _AAUILogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __62__AAUIInheritanceShareAccessKeyOptionsViewController__dismiss__block_invoke_cold_1();
  }
}

- (void)_setupTableView
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDataSource:self];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"InheritanceShareOptionCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"InheritanceShareOptionCell"];
  }

  v8 = -[NSArray objectAtIndex:](self->_options, "objectAtIndex:", [pathCopy section]);
  intValue = [v8 intValue];

  v10 = [(AAUIInheritanceShareAccessKeyOptionsViewController *)self _configurationForShareType:intValue];
  [v7 setContentConfiguration:v10];
  [v7 setAccessoryType:1];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:secondarySystemBackgroundColor];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:? animated:?];
  flowDelegate = [(AAUIInheritanceShareAccessKeyOptionsViewController *)self flowDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    flowDelegate2 = [(AAUIInheritanceShareAccessKeyOptionsViewController *)self flowDelegate];
    v9 = -[NSArray objectAtIndex:](self->_options, "objectAtIndex:", [pathCopy section]);
    [flowDelegate2 inheritanceDidSelectSharingOption:{objc_msgSend(v9, "integerValue")}];
  }
}

- (id)_configurationForShareType:(unint64_t)type
{
  v25[1] = *MEMORY[0x1E69E9840];
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  v6 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] weight:*MEMORY[0x1E69DB958]];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = [(AAOBInheritanceShareAccessKeyOptionsModel *)self->_viewModel titleForShareAccessKeyType:type];
  v24 = *MEMORY[0x1E69DB648];
  v9 = v24;
  v25[0] = v6;
  v21 = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v11 = [v7 initWithString:v8 attributes:v10];

  [cellConfiguration setAttributedText:v11];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = [(AAOBInheritanceShareAccessKeyOptionsModel *)self->_viewModel detailTextForShareAccessKeyType:type];
  v22[0] = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v22[1] = v9;
  v23[0] = secondaryLabelColor;
  v23[1] = v12;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v17 = [v13 initWithString:v14 attributes:v16];

  [cellConfiguration setSecondaryAttributedText:v17];
  if (type == 1)
  {
    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"printer.fill.and.paper.fill"];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v18 = [MEMORY[0x1E69DCAB8] iconForSize:@"com.apple.MobileSMS" bundleIdentifier:{29.0, 29.0}];
  }

  v19 = v18;
  [cellConfiguration setImage:v18];

LABEL_6:

  return cellConfiguration;
}

- (AAUIInheritanceSetupFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

void __62__AAUIInheritanceShareAccessKeyOptionsViewController__dismiss__block_invoke_cold_1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7(&dword_1C5355000, v2, v3, "%@ Dismissed by user tapping Cancel button", v4, v5, v6, v7, 2u);
}

@end