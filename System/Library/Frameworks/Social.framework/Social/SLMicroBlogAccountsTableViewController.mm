@interface SLMicroBlogAccountsTableViewController
- (SLMicroBlogAccountsTableViewController)initWithStyle:(int64_t)style;
- (id)_accountUserRecordForIndexPath:(id)path;
- (id)_blankImage;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)cancelButtonTapped:(id)tapped;
- (void)didUpdateAccountUserRecord:(id)record;
- (void)setAccountUserRecords:(id)records;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SLMicroBlogAccountsTableViewController

- (SLMicroBlogAccountsTableViewController)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = SLMicroBlogAccountsTableViewController;
  v3 = [(SLMicroBlogAccountsTableViewController *)&v7 initWithStyle:style];
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
  tableView = [(SLMicroBlogAccountsTableViewController *)self tableView];
  backgroundView = [tableView backgroundView];
  [backgroundView setOpaque:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  tableView2 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  backgroundView2 = [tableView2 backgroundView];
  [backgroundView2 setBackgroundColor:clearColor];

  tableView3 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [tableView3 setOpaque:0];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  tableView4 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [tableView4 setBackgroundColor:clearColor2];

  v11 = *MEMORY[0x1E69DE3D0];
  tableView5 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [tableView5 setRowHeight:v11];

  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v13 lineHeight];
  v15 = v14 + v14;
  tableView6 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [tableView6 setEstimatedRowHeight:v15];
}

- (void)cancelButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);
  [WeakRetained accountsViewController:self didSelectAccountUserRecord:self->_selectedAccountUserRecord];
}

- (void)setAccountUserRecords:(id)records
{
  objc_storeStrong(&self->_accountUserRecords, records);
  tableView = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [tableView reloadData];

  tableView2 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [tableView2 contentSize];
  [(SLMicroBlogAccountsTableViewController *)self setPreferredContentSize:320.0];
}

- (void)didUpdateAccountUserRecord:(id)record
{
  v4 = [(NSArray *)self->_accountUserRecords indexOfObject:record];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x1E695DEC8];
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:0];
    v8 = [v5 arrayWithObject:v6];

    tableView = [(SLMicroBlogAccountsTableViewController *)self tableView];
    [tableView reloadRowsAtIndexPaths:v8 withRowAnimation:100];
  }
}

- (id)_accountUserRecordForIndexPath:(id)path
{
  accountUserRecords = self->_accountUserRecords;
  v4 = [path row];

  return [(NSArray *)accountUserRecords objectAtIndexedSubscript:v4];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
  }

  v8 = [(SLMicroBlogAccountsTableViewController *)self _accountUserRecordForIndexPath:pathCopy];
  screen_name = [v8 screen_name];
  textLabel = [v7 textLabel];
  [textLabel setText:screen_name];

  profileImageCache = [v8 profileImageCache];

  if (profileImageCache)
  {
    [v8 profileImageCache];
  }

  else
  {
    [(SLMicroBlogAccountsTableViewController *)self _blankImage];
  }
  v12 = ;
  imageView = [v7 imageView];
  [imageView setImage:v12];

  screen_name2 = [(SLMicroBlogUserRecord *)self->_selectedAccountUserRecord screen_name];
  screen_name3 = [v8 screen_name];
  LODWORD(imageView) = [screen_name2 isEqualToString:screen_name3];

  if (imageView)
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [cellCopy setBackgroundColor:clearColor];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = [(SLMicroBlogAccountsTableViewController *)self _accountUserRecordForIndexPath:pathCopy];
  tableView = [(SLMicroBlogAccountsTableViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  objc_storeStrong(&self->_selectedAccountUserRecord, v6);
  tableView2 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  v9 = [tableView2 cellForRowAtIndexPath:pathCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tableView3 = [(SLMicroBlogAccountsTableViewController *)self tableView];
  visibleCells = [tableView3 visibleCells];

  v12 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v20 + 1) + 8 * v15++) setAccessoryType:0];
      }

      while (v13 != v15);
      v13 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
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