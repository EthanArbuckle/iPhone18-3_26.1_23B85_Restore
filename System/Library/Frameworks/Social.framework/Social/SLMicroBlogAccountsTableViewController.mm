@interface SLMicroBlogAccountsTableViewController
- (SLMicroBlogAccountsTableViewController)initWithStyle:(int64_t)a3;
- (id)_accountUserRecordForIndexPath:(id)a3;
- (id)_blankImage;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)cancelButtonTapped:(id)a3;
- (void)didUpdateAccountUserRecord:(id)a3;
- (void)setAccountUserRecords:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation SLMicroBlogAccountsTableViewController

- (SLMicroBlogAccountsTableViewController)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SLMicroBlogAccountsTableViewController;
  v3 = [(SLMicroBlogAccountsTableViewController *)&v7 initWithStyle:a3];
  if (v3)
  {
    v4 = SLSocialFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"ACCOUNT_PICKER_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
    [(SLMicroBlogAccountsTableViewController *)v3 setTitle:v5];
  }

  return v3;
}

- (id)_blankImage
{
  blankImage = self->_blankImage;
  if (!blankImage)
  {
    v9.width = 50.0;
    v9.height = 50.0;
    UIGraphicsBeginImageContext(v9);
    CurrentContext = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(CurrentContext);
    UIGraphicsPopContext();
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    v6 = self->_blankImage;
    self->_blankImage = v5;

    UIGraphicsEndImageContext();
    blankImage = self->_blankImage;
  }

  return blankImage;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = SLMicroBlogAccountsTableViewController;
  [(SLMicroBlogAccountsTableViewController *)&v17 viewDidLoad];
  v3 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  v4 = [v3 backgroundView];
  [v4 setOpaque:0];

  v5 = [MEMORY[0x1E69DC888] clearColor];
  v6 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  v7 = [v6 backgroundView];
  [v7 setBackgroundColor:v5];

  v8 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [v8 setOpaque:0];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  v10 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [v10 setBackgroundColor:v9];

  v11 = *MEMORY[0x1E69DE3D0];
  v12 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [v12 setRowHeight:v11];

  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v13 lineHeight];
  v15 = v14 + v14;
  v16 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [v16 setEstimatedRowHeight:v15];
}

- (void)cancelButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);
  [WeakRetained accountsViewController:self didSelectAccountUserRecord:self->_selectedAccountUserRecord];
}

- (void)setAccountUserRecords:(id)a3
{
  objc_storeStrong(&self->_accountUserRecords, a3);
  v4 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [v4 reloadData];

  v5 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [v5 contentSize];
  [(SLMicroBlogAccountsTableViewController *)self setPreferredContentSize:320.0];
}

- (void)didUpdateAccountUserRecord:(id)a3
{
  v4 = [(NSArray *)self->_accountUserRecords indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x1E695DEC8];
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:0];
    v8 = [v5 arrayWithObject:v6];

    v7 = [(SLMicroBlogAccountsTableViewController *)self tableView];
    [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:100];
  }
}

- (id)_accountUserRecordForIndexPath:(id)a3
{
  accountUserRecords = self->_accountUserRecords;
  v4 = [a3 row];

  return [(NSArray *)accountUserRecords objectAtIndexedSubscript:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
  }

  v8 = [(SLMicroBlogAccountsTableViewController *)self _accountUserRecordForIndexPath:v6];
  v9 = [v8 screen_name];
  v10 = [v7 textLabel];
  [v10 setText:v9];

  v11 = [v8 profileImageCache];

  if (v11)
  {
    [v8 profileImageCache];
  }

  else
  {
    [(SLMicroBlogAccountsTableViewController *)self _blankImage];
  }
  v12 = ;
  v13 = [v7 imageView];
  [v13 setImage:v12];

  v14 = [(SLMicroBlogUserRecord *)self->_selectedAccountUserRecord screen_name];
  v15 = [v8 screen_name];
  LODWORD(v13) = [v14 isEqualToString:v15];

  if (v13)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [v7 setAccessoryType:v16];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setOpaque:0];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SLMicroBlogAccountsTableViewController *)self _accountUserRecordForIndexPath:v5];
  v7 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [v7 deselectRowAtIndexPath:v5 animated:1];

  objc_storeStrong(&self->_selectedAccountUserRecord, v6);
  v8 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  v11 = [v10 visibleCells];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v20 + 1) + 8 * v15++) setAccessoryType:0];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [v9 setAccessoryType:3];
  v16 = dispatch_time(0, 400000000);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__SLMicroBlogAccountsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v18[3] = &unk_1E8176118;
  v18[4] = self;
  v19 = v6;
  v17 = v6;
  dispatch_after(v16, MEMORY[0x1E69E96A0], v18);
}

void __76__SLMicroBlogAccountsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1056));
  [WeakRetained accountsViewController:*(a1 + 32) didSelectAccountUserRecord:*(a1 + 40)];
}

@end