@interface _SFBookmarkTextEntryTableViewController
- (_SFBookmarkTextEntryTableViewController)initWithBookmarkInfoViewField:(unint64_t)a3 text:(id)a4 autocapitalizationType:(int64_t)a5 autocorrectionType:(int64_t)a6 delegate:(id)a7;
- (void)_returnWasPressedInTextField:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _SFBookmarkTextEntryTableViewController

- (_SFBookmarkTextEntryTableViewController)initWithBookmarkInfoViewField:(unint64_t)a3 text:(id)a4 autocapitalizationType:(int64_t)a5 autocorrectionType:(int64_t)a6 delegate:(id)a7
{
  v12 = a4;
  v13 = a7;
  v22.receiver = self;
  v22.super_class = _SFBookmarkTextEntryTableViewController;
  v14 = [(_SFBookmarkTextEntryTableViewController *)&v22 initWithStyle:1];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_delegate, a7);
    v16 = [v12 copy];
    initialText = v15->_initialText;
    v15->_initialText = v16;

    v15->_autocapitalizationType = a5;
    v15->_autocorrectionType = a6;
    if (a3 <= 1)
    {
      v18 = _WBSLocalizedString();
      v19 = [(_SFBookmarkTextEntryTableViewController *)v15 navigationItem];
      [v19 setTitle:v18];
    }

    v20 = v15;
  }

  return v15;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = _SFBookmarkTextEntryTableViewController;
  [(_SFBookmarkTextEntryTableViewController *)&v9 loadView];
  v3 = [[_SFBookmarkTextEntryTableViewCell alloc] initWithText:self->_initialText autocapitalizationType:self->_autocapitalizationType autocorrectionType:self->_autocorrectionType];
  textEntryCell = self->_textEntryCell;
  self->_textEntryCell = v3;

  v5 = [(_SFBookmarkTextEntryTableViewCell *)self->_textEntryCell editableTextField];
  [v5 addTarget:self action:sel__returnWasPressedInTextField_ forControlEvents:0x80000];

  v6 = *MEMORY[0x1E69DE3D0];
  v7 = [(_SFBookmarkTextEntryTableViewController *)self tableView];
  [v7 setRowHeight:v6];

  v8 = [(_SFBookmarkTextEntryTableViewController *)self tableView];
  [v8 setEstimatedRowHeight:44.0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = _SFBookmarkTextEntryTableViewController;
  [(_SFBookmarkTextEntryTableViewController *)&v10 viewWillAppear:a3];
  v4 = [(_SFBookmarkTextEntryTableViewController *)self tableView];
  [v4 reloadData];
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v6 = [v4 cellForRowAtIndexPath:v5];

  v7 = [v6 editableTextField];
  [v7 becomeFirstResponder];

  if ([(_SFBookmarkTextEntryTableViewControllerDelegate *)self->_delegate bookmarkTextEntryTableViewControllerShouldUseTranslucentAppearance:self])
  {
    v8 = [(_SFBookmarkTextEntryTableViewController *)self view];
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [v8 setBackgroundColor:v9];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _SFBookmarkTextEntryTableViewController;
  [(_SFBookmarkTextEntryTableViewController *)&v7 viewWillDisappear:a3];
  delegate = self->_delegate;
  v5 = [(_SFBookmarkTextEntryTableViewCell *)self->_textEntryCell editableTextField];
  v6 = [v5 text];
  [(_SFBookmarkTextEntryTableViewControllerDelegate *)delegate bookmarkTextEntryTableViewController:self dismissedWithText:v6];
}

- (void)dealloc
{
  v3 = [(_SFBookmarkTextEntryTableViewCell *)self->_textEntryCell editableTextField];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v4.receiver = self;
  v4.super_class = _SFBookmarkTextEntryTableViewController;
  [(_SFBookmarkTextEntryTableViewController *)&v4 dealloc];
}

- (void)_returnWasPressedInTextField:(id)a3
{
  v3 = [(_SFBookmarkTextEntryTableViewController *)self navigationController];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 popViewControllerAnimated:1];
    v3 = v5;
  }
}

@end