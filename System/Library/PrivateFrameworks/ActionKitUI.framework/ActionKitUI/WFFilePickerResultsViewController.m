@interface WFFilePickerResultsViewController
- (WFFilePickerResultsViewController)initWithFileListDelegate:(id)a3;
- (WFRemoteFileListView)fileListView;
- (WFRemoteFileListViewDelegate)delegate;
- (void)dealloc;
- (void)loadView;
- (void)setFiles:(id)a3;
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

- (void)setFiles:(id)a3
{
  objc_storeStrong(&self->_files, a3);
  v5 = a3;
  v6 = [(WFFilePickerResultsViewController *)self fileListView];
  [v6 setFiles:v5];

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
  v15 = [(WFFilePickerResultsViewController *)self view];
  v3 = [MEMORY[0x277D7BDB0] sharedKeyboard];
  [v3 keyboardFrameInView:v15];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = 0.0;
  if ([v3 isVisible])
  {
    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    if (!CGRectIsNull(v17))
    {
      [v15 bounds];
      MaxY = CGRectGetMaxY(v18);
      v19.origin.x = v5;
      v19.origin.y = v7;
      v19.size.width = v9;
      v19.size.height = v11;
      v12 = MaxY - CGRectGetMinY(v19);
    }
  }

  v14 = [(WFFilePickerResultsViewController *)self fileListView];
  [v14 setContentInset:{64.0, 0.0, v12, 0.0}];
  [v14 setVerticalScrollIndicatorInsets:{64.0, 0.0, v12, 0.0}];
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = WFFilePickerResultsViewController;
  [(WFFilePickerResultsViewController *)&v8 loadView];
  v3 = [(WFFilePickerResultsViewController *)self view];
  v4 = [(WFFilePickerResultsViewController *)self files];
  v5 = [WFRemoteFileListView alloc];
  [v3 bounds];
  v6 = [(WFRemoteFileListView *)v5 initWithFrame:0 collation:?];
  [(WFRemoteFileListView *)v6 setAutoresizingMask:18];
  v7 = [(WFFilePickerResultsViewController *)self delegate];
  [(WFRemoteFileListView *)v6 setDelegate:v7];

  [(WFRemoteFileListView *)v6 setFiles:v4];
  [v3 addSubview:v6];
  objc_storeWeak(&self->_fileListView, v6);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7BE00] object:0];

  v4.receiver = self;
  v4.super_class = WFFilePickerResultsViewController;
  [(WFFilePickerResultsViewController *)&v4 dealloc];
}

- (WFFilePickerResultsViewController)initWithFileListDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFFilePickerResultsViewController;
  v5 = [(WFFilePickerResultsViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel_updateContentInset name:*MEMORY[0x277D7BE00] object:0];

    v8 = v6;
  }

  return v6;
}

@end