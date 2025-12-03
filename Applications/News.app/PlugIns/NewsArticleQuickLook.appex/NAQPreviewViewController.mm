@interface NAQPreviewViewController
+ (id)resolver;
- (BOOL)validateSearchableItemIdentifier:(id)identifier;
- (NAQPreviewViewController)init;
- (void)articleContainerViewController:(id)controller didLoadFirstPageWithIdentifier:(id)identifier error:(id)error;
- (void)preparePreviewOfSearchableItemWithIdentifier:(id)identifier queryString:(id)string completionHandler:(id)handler;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NAQPreviewViewController

+ (id)resolver
{
  if (qword_100008668 != -1)
  {
    sub_100001770();
  }

  v3 = qword_100008660;

  return [v3 resolver];
}

- (NAQPreviewViewController)init
{
  v7.receiver = self;
  v7.super_class = NAQPreviewViewController;
  v2 = [(NAQPreviewViewController *)&v7 init];
  if (v2)
  {
    resolver = [objc_opt_class() resolver];
    v4 = [resolver resolveClass:objc_opt_class()];
    articleContainerViewController = v2->_articleContainerViewController;
    v2->_articleContainerViewController = v4;

    [(NUArticleContainerViewController *)v2->_articleContainerViewController setLinkPreviewing:1];
    [(NUArticleContainerViewController *)v2->_articleContainerViewController setDelegate:v2];
  }

  return v2;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = NAQPreviewViewController;
  [(NAQPreviewViewController *)&v8 viewDidLoad];
  articleContainerViewController = [(NAQPreviewViewController *)self articleContainerViewController];
  [(NAQPreviewViewController *)self addChildViewController:articleContainerViewController];

  view = [(NAQPreviewViewController *)self view];
  articleContainerViewController2 = [(NAQPreviewViewController *)self articleContainerViewController];
  view2 = [articleContainerViewController2 view];
  [view addSubview:view2];

  articleContainerViewController3 = [(NAQPreviewViewController *)self articleContainerViewController];
  [articleContainerViewController3 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = NAQPreviewViewController;
  [(NAQPreviewViewController *)&v14 viewDidLayoutSubviews];
  view = [(NAQPreviewViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  articleContainerViewController = [(NAQPreviewViewController *)self articleContainerViewController];
  view2 = [articleContainerViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)preparePreviewOfSearchableItemWithIdentifier:(id)identifier queryString:(id)string completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(NAQPreviewViewController *)self validateSearchableItemIdentifier:identifierCopy])
  {
    [(NAQPreviewViewController *)self setPreviewItemIdentifier:identifierCopy];
    [(NAQPreviewViewController *)self setPreviewItemCallback:handlerCopy];
    articleContainerViewController = [(NAQPreviewViewController *)self articleContainerViewController];
    v14 = identifierCopy;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    [articleContainerViewController loadWithArticleIDs:v10];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000014C8;
    v11[3] = &unk_100004168;
    v13 = handlerCopy;
    v12 = identifierCopy;
    sub_1000014C8(v11);

    articleContainerViewController = v13;
  }
}

- (void)articleContainerViewController:(id)controller didLoadFirstPageWithIdentifier:(id)identifier error:(id)error
{
  controllerCopy = controller;
  identifierCopy = identifier;
  errorCopy = error;
  if (!identifierCopy)
  {
    goto LABEL_4;
  }

  previewItemIdentifier = [(NAQPreviewViewController *)self previewItemIdentifier];
  if (!previewItemIdentifier || (v11 = previewItemIdentifier, -[NAQPreviewViewController previewItemIdentifier](self, "previewItemIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [identifierCopy isEqualToString:v12], v12, v11, (v13 & 1) == 0))
  {
LABEL_4:
    previewItemIdentifier2 = [(NAQPreviewViewController *)self previewItemIdentifier];
    v15 = [NSError naq_errorFailedUnexpectedArticleLoadedWithIdentifier:identifierCopy expectedIdentifier:previewItemIdentifier2];

    errorCopy = v15;
  }

  previewItemCallback = [(NAQPreviewViewController *)self previewItemCallback];
  (previewItemCallback)[2](previewItemCallback, errorCopy);

  [(NAQPreviewViewController *)self setPreviewItemCallback:0];
}

- (BOOL)validateSearchableItemIdentifier:(id)identifier
{
  v3 = [identifier copy];
  uppercaseString = [v3 uppercaseString];
  v5 = [uppercaseString hasPrefix:@"A"];

  return v5;
}

@end