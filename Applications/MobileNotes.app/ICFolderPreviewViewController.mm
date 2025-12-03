@interface ICFolderPreviewViewController
- (ICFolder)folder;
- (ICFolderPreviewViewController)initWithFolder:(id)folder;
- (ICNoteBrowseFolderThumbnailView)folderThumbnailView;
- (ICPreviewFooterView)previewFooterView;
- (UIStackView)stackView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation ICFolderPreviewViewController

- (ICFolderPreviewViewController)initWithFolder:(id)folder
{
  folderCopy = folder;
  v8.receiver = self;
  v8.super_class = ICFolderPreviewViewController;
  v5 = [(ICFolderPreviewViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_folder, folderCopy);
  }

  return v6;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = ICFolderPreviewViewController;
  [(ICFolderPreviewViewController *)&v17 viewDidLoad];
  folderThumbnailView = [(ICFolderPreviewViewController *)self folderThumbnailView];
  [folderThumbnailView setBackgroundColor:0];

  folderThumbnailView2 = [(ICFolderPreviewViewController *)self folderThumbnailView];
  [folderThumbnailView2 setHasDropShadow:0];

  folderThumbnailView3 = [(ICFolderPreviewViewController *)self folderThumbnailView];
  [folderThumbnailView3 setAllowsCompactSizeMetrics:0];

  folder = [(ICFolderPreviewViewController *)self folder];
  title = [folder title];
  previewFooterView = [(ICFolderPreviewViewController *)self previewFooterView];
  [previewFooterView setTitle:title];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"%lu Notes" value:&stru_100661CF0 table:0];
  folder2 = [(ICFolderPreviewViewController *)self folder];
  v12 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v10, [folder2 visibleNotesCount]);
  previewFooterView2 = [(ICFolderPreviewViewController *)self previewFooterView];
  [previewFooterView2 setContentsSubtitle:v12];

  folder3 = [(ICFolderPreviewViewController *)self folder];
  shareDescription = [folder3 shareDescription];
  previewFooterView3 = [(ICFolderPreviewViewController *)self previewFooterView];
  [previewFooterView3 setSharingSubtitle:shareDescription];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v6.receiver = self;
  v6.super_class = ICFolderPreviewViewController;
  [(ICFolderPreviewViewController *)&v6 viewIsAppearing:appearing];
  folder = [(ICFolderPreviewViewController *)self folder];
  folderThumbnailView = [(ICFolderPreviewViewController *)self folderThumbnailView];
  [folderThumbnailView setFolder:folder];
}

- (void)viewDidLayoutSubviews
{
  stackView = [(ICFolderPreviewViewController *)self stackView];
  [stackView frame];
  [(ICFolderPreviewViewController *)self setPreferredContentSize:v3, v4];
}

- (ICFolder)folder
{
  WeakRetained = objc_loadWeakRetained(&self->_folder);

  return WeakRetained;
}

- (UIStackView)stackView
{
  WeakRetained = objc_loadWeakRetained(&self->_stackView);

  return WeakRetained;
}

- (ICNoteBrowseFolderThumbnailView)folderThumbnailView
{
  WeakRetained = objc_loadWeakRetained(&self->_folderThumbnailView);

  return WeakRetained;
}

- (ICPreviewFooterView)previewFooterView
{
  WeakRetained = objc_loadWeakRetained(&self->_previewFooterView);

  return WeakRetained;
}

@end