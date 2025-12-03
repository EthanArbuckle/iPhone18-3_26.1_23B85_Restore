@interface WFFilePickerResultsViewController
- (WFFilePickerResultsViewController)initWithFileListDelegate:(id)delegate;
- (WFRemoteFileListView)fileListView;
- (WFRemoteFileListViewDelegate)delegate;
- (void)dealloc;
- (void)loadView;
- (void)setFiles:(id)files;
- (void)updateContentInset;
- (void)viewWillLayoutSubviews;
@end

@implementation WFFilePickerResultsViewController

- (WFRemoteFileListView)fileListView
{
  WeakRetained = objc_loadWeakRetained(&self->_fileListView);

  return WeakRetained;
}

- (WFRemoteFileListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setFiles:(id)files
{
  objc_storeStrong(&self->_files, files);
  filesCopy = files;
  fileListView = [(WFFilePickerResultsViewController *)self fileListView];
  [fileListView setFiles:filesCopy];

  [(WFFilePickerResultsViewController *)self updateContentInset];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFFilePickerResultsViewController;
  [(WFFilePickerResultsViewController *)&v3 viewWillLayoutSubviews];
  [(WFFilePickerResultsViewController *)self updateContentInset];
}

- (void)updateContentInset
{
  view = [(WFFilePickerResultsViewController *)self view];
  mEMORY[0x277D7BDB0] = [MEMORY[0x277D7BDB0] sharedKeyboard];
  [mEMORY[0x277D7BDB0] keyboardFrameInView:view];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = 0.0;
  if ([mEMORY[0x277D7BDB0] isVisible])
  {
    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    if (!CGRectIsNull(v17))
    {
      [view bounds];
      MaxY = CGRectGetMaxY(v18);
      v19.origin.x = v5;
      v19.origin.y = v7;
      v19.size.width = v9;
      v19.size.height = v11;
      v12 = MaxY - CGRectGetMinY(v19);
    }
  }

  fileListView = [(WFFilePickerResultsViewController *)self fileListView];
  [fileListView setContentInset:{64.0, 0.0, v12, 0.0}];
  [fileListView setVerticalScrollIndicatorInsets:{64.0, 0.0, v12, 0.0}];
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = WFFilePickerResultsViewController;
  [(WFFilePickerResultsViewController *)&v8 loadView];
  view = [(WFFilePickerResultsViewController *)self view];
  files = [(WFFilePickerResultsViewController *)self files];
  v5 = [WFRemoteFileListView alloc];
  [view bounds];
  v6 = [(WFRemoteFileListView *)v5 initWithFrame:0 collation:?];
  [(WFRemoteFileListView *)v6 setAutoresizingMask:18];
  delegate = [(WFFilePickerResultsViewController *)self delegate];
  [(WFRemoteFileListView *)v6 setDelegate:delegate];

  [(WFRemoteFileListView *)v6 setFiles:files];
  [view addSubview:v6];
  objc_storeWeak(&self->_fileListView, v6);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7BE00] object:0];

  v4.receiver = self;
  v4.super_class = WFFilePickerResultsViewController;
  [(WFFilePickerResultsViewController *)&v4 dealloc];
}

- (WFFilePickerResultsViewController)initWithFileListDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = WFFilePickerResultsViewController;
  v5 = [(WFFilePickerResultsViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_updateContentInset name:*MEMORY[0x277D7BE00] object:0];

    v8 = v6;
  }

  return v6;
}

@end