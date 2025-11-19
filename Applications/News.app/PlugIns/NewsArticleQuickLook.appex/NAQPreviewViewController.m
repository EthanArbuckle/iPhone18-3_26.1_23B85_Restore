@interface NAQPreviewViewController
+ (id)resolver;
- (BOOL)validateSearchableItemIdentifier:(id)a3;
- (NAQPreviewViewController)init;
- (void)articleContainerViewController:(id)a3 didLoadFirstPageWithIdentifier:(id)a4 error:(id)a5;
- (void)preparePreviewOfSearchableItemWithIdentifier:(id)a3 queryString:(id)a4 completionHandler:(id)a5;
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
    v3 = [objc_opt_class() resolver];
    v4 = [v3 resolveClass:objc_opt_class()];
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
  v3 = [(NAQPreviewViewController *)self articleContainerViewController];
  [(NAQPreviewViewController *)self addChildViewController:v3];

  v4 = [(NAQPreviewViewController *)self view];
  v5 = [(NAQPreviewViewController *)self articleContainerViewController];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(NAQPreviewViewController *)self articleContainerViewController];
  [v7 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = NAQPreviewViewController;
  [(NAQPreviewViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(NAQPreviewViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NAQPreviewViewController *)self articleContainerViewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (void)preparePreviewOfSearchableItemWithIdentifier:(id)a3 queryString:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(NAQPreviewViewController *)self validateSearchableItemIdentifier:v7])
  {
    [(NAQPreviewViewController *)self setPreviewItemIdentifier:v7];
    [(NAQPreviewViewController *)self setPreviewItemCallback:v8];
    v9 = [(NAQPreviewViewController *)self articleContainerViewController];
    v14 = v7;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    [v9 loadWithArticleIDs:v10];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000014C8;
    v11[3] = &unk_100004168;
    v13 = v8;
    v12 = v7;
    sub_1000014C8(v11);

    v9 = v13;
  }
}

- (void)articleContainerViewController:(id)a3 didLoadFirstPageWithIdentifier:(id)a4 error:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    goto LABEL_4;
  }

  v10 = [(NAQPreviewViewController *)self previewItemIdentifier];
  if (!v10 || (v11 = v10, -[NAQPreviewViewController previewItemIdentifier](self, "previewItemIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v8 isEqualToString:v12], v12, v11, (v13 & 1) == 0))
  {
LABEL_4:
    v14 = [(NAQPreviewViewController *)self previewItemIdentifier];
    v15 = [NSError naq_errorFailedUnexpectedArticleLoadedWithIdentifier:v8 expectedIdentifier:v14];

    v9 = v15;
  }

  v16 = [(NAQPreviewViewController *)self previewItemCallback];
  (v16)[2](v16, v9);

  [(NAQPreviewViewController *)self setPreviewItemCallback:0];
}

- (BOOL)validateSearchableItemIdentifier:(id)a3
{
  v3 = [a3 copy];
  v4 = [v3 uppercaseString];
  v5 = [v4 hasPrefix:@"A"];

  return v5;
}

@end