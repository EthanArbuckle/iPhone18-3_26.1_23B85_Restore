@interface _SFBookmarkTextEntryTableViewController
- (_SFBookmarkTextEntryTableViewController)initWithBookmarkInfoViewField:(unint64_t)field text:(id)text autocapitalizationType:(int64_t)type autocorrectionType:(int64_t)autocorrectionType delegate:(id)delegate;
- (void)_returnWasPressedInTextField:(id)field;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _SFBookmarkTextEntryTableViewController

- (_SFBookmarkTextEntryTableViewController)initWithBookmarkInfoViewField:(unint64_t)field text:(id)text autocapitalizationType:(int64_t)type autocorrectionType:(int64_t)autocorrectionType delegate:(id)delegate
{
  textCopy = text;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = _SFBookmarkTextEntryTableViewController;
  v14 = [(_SFBookmarkTextEntryTableViewController *)&v22 initWithStyle:1];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_delegate, delegate);
    v16 = [textCopy copy];
    initialText = v15->_initialText;
    v15->_initialText = v16;

    v15->_autocapitalizationType = type;
    v15->_autocorrectionType = autocorrectionType;
    if (field <= 1)
    {
      v18 = _WBSLocalizedString();
      navigationItem = [(_SFBookmarkTextEntryTableViewController *)v15 navigationItem];
      [navigationItem setTitle:v18];
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

  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_textEntryCell editableTextField];
  [editableTextField addTarget:self action:sel__returnWasPressedInTextField_ forControlEvents:0x80000];

  v6 = *MEMORY[0x1E69DE3D0];
  tableView = [(_SFBookmarkTextEntryTableViewController *)self tableView];
  [tableView setRowHeight:v6];

  tableView2 = [(_SFBookmarkTextEntryTableViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:44.0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = _SFBookmarkTextEntryTableViewController;
  [(_SFBookmarkTextEntryTableViewController *)&v10 viewWillAppear:appear];
  tableView = [(_SFBookmarkTextEntryTableViewController *)self tableView];
  [tableView reloadData];
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v6 = [tableView cellForRowAtIndexPath:v5];

  editableTextField = [v6 editableTextField];
  [editableTextField becomeFirstResponder];

  if ([(_SFBookmarkTextEntryTableViewControllerDelegate *)self->_delegate bookmarkTextEntryTableViewControllerShouldUseTranslucentAppearance:self])
  {
    view = [(_SFBookmarkTextEntryTableViewController *)self view];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = _SFBookmarkTextEntryTableViewController;
  [(_SFBookmarkTextEntryTableViewController *)&v7 viewWillDisappear:disappear];
  delegate = self->_delegate;
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_textEntryCell editableTextField];
  text = [editableTextField text];
  [(_SFBookmarkTextEntryTableViewControllerDelegate *)delegate bookmarkTextEntryTableViewController:self dismissedWithText:text];
}

- (void)dealloc
{
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_textEntryCell editableTextField];
  [editableTextField removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v4.receiver = self;
  v4.super_class = _SFBookmarkTextEntryTableViewController;
  [(_SFBookmarkTextEntryTableViewController *)&v4 dealloc];
}

- (void)_returnWasPressedInTextField:(id)field
{
  navigationController = [(_SFBookmarkTextEntryTableViewController *)self navigationController];
  if (navigationController)
  {
    v5 = navigationController;
    v4 = [navigationController popViewControllerAnimated:1];
    navigationController = v5;
  }
}

@end