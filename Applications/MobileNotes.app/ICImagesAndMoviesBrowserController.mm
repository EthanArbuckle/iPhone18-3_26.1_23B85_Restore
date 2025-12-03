@interface ICImagesAndMoviesBrowserController
- (ICImagesAndMoviesBrowserController)initWithAttachmentSection:(signed __int16)section;
- (void)browseAttachmentsCollectionView:(id)view cell:(id)cell shouldShareAttachment:(id)attachment;
- (void)browseAttachmentsCollectionView:(id)view didSelectAttachment:(id)attachment indexPath:(id)path;
- (void)browseAttachmentsCollectionView:(id)view shouldInspectAttachment:(id)attachment;
- (void)doneAction:(id)action;
- (void)loadView;
- (void)presentAttachment:(id)attachment;
- (void)viewDidLoad;
@end

@implementation ICImagesAndMoviesBrowserController

- (ICImagesAndMoviesBrowserController)initWithAttachmentSection:(signed __int16)section
{
  sectionCopy = section;
  v7.receiver = self;
  v7.super_class = ICImagesAndMoviesBrowserController;
  v4 = [(ICImagesAndMoviesBrowserController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ICImagesAndMoviesBrowserController *)v4 setAttachmentSection:sectionCopy];
  }

  return v5;
}

- (void)loadView
{
  v3 = [[ICImagesAndMoviesScrollView alloc] initForAttachmentSection:[(ICImagesAndMoviesBrowserController *)self attachmentSection]];
  [(ICImagesAndMoviesBrowserController *)self setScrollView:v3];

  scrollView = [(ICImagesAndMoviesBrowserController *)self scrollView];
  [scrollView setViewController:self];

  scrollView2 = [(ICImagesAndMoviesBrowserController *)self scrollView];
  [scrollView2 setDelegate:self];

  scrollView3 = [(ICImagesAndMoviesBrowserController *)self scrollView];
  collectionView = [scrollView3 collectionView];
  [collectionView setContentInsetAdjustmentBehavior:3];

  scrollView4 = [(ICImagesAndMoviesBrowserController *)self scrollView];
  [(ICImagesAndMoviesBrowserController *)self setView:scrollView4];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = ICImagesAndMoviesBrowserController;
  [(ICImagesAndMoviesBrowserController *)&v8 viewDidLoad];
  navigationItem = [(ICImagesAndMoviesBrowserController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  scrollView = [(ICImagesAndMoviesBrowserController *)self scrollView];
  [scrollView setScrollDirection:0];

  scrollView2 = [(ICImagesAndMoviesBrowserController *)self scrollView];
  [scrollView2 setBackground];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneAction:"];
  navigationItem2 = [(ICImagesAndMoviesBrowserController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v6];
}

- (void)doneAction:(id)action
{
  presentingViewController = [(ICImagesAndMoviesBrowserController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  eventReporter = [(ICImagesAndMoviesBrowserController *)self eventReporter];
  [eventReporter submitAttachmentBrowserActionEventForType:1];
}

- (void)presentAttachment:(id)attachment
{
  attachmentCopy = attachment;
  scrollView = [(ICImagesAndMoviesBrowserController *)self scrollView];
  attachments = [scrollView attachments];

  v7 = [attachments indexOfObject:attachmentCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [attachmentCopy shortLoggingDescription];
      *buf = 138412290;
      v16 = shortLoggingDescription;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Could not find attachment %@ in list of attachments in image scroll view. Falling back to single attachment", buf, 0xCu);
    }

    v14 = attachmentCopy;
    v10 = [NSArray arrayWithObjects:&v14 count:1];

    v11 = 0;
    attachments = v10;
  }

  else
  {
    v11 = v7;
  }

  ic_viewControllerManager = [(ICImagesAndMoviesBrowserController *)self ic_viewControllerManager];
  scrollView2 = [(ICImagesAndMoviesBrowserController *)self scrollView];
  [ic_viewControllerManager presentAttachments:attachments startingAtIndex:v11 delegate:scrollView2 displayShowInNote:1 editable:0 selectedSubAttachment:0 presentingViewController:self];
}

- (void)browseAttachmentsCollectionView:(id)view cell:(id)cell shouldShareAttachment:(id)attachment
{
  cellCopy = cell;
  v9 = [ICAttachmentActivityViewController makeWithAttachment:attachment quickLookItemDelegate:0 completion:0];
  popoverPresentationController = [v9 popoverPresentationController];
  [popoverPresentationController setSourceView:cellCopy];

  [(ICImagesAndMoviesBrowserController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)browseAttachmentsCollectionView:(id)view didSelectAttachment:(id)attachment indexPath:(id)path
{
  [(ICImagesAndMoviesBrowserController *)self presentAttachment:attachment];
  eventReporter = [(ICImagesAndMoviesBrowserController *)self eventReporter];
  [eventReporter submitAttachmentBrowserActionEventForType:4];
}

- (void)browseAttachmentsCollectionView:(id)view shouldInspectAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v7 = [[ICAttachmentInspectorViewController alloc] initWithAttachment:attachmentCopy];

  ic_embedInNavigationControllerForModalPresentation = [(ICAttachmentInspectorViewController *)v7 ic_embedInNavigationControllerForModalPresentation];
  [(ICImagesAndMoviesBrowserController *)self presentViewController:ic_embedInNavigationControllerForModalPresentation animated:1 completion:0];
}

@end