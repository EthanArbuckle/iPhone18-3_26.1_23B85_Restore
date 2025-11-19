@interface HangDetailViewController
- (void)shareLog;
- (void)viewDidLoad;
@end

@implementation HangDetailViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HangDetailViewController;
  [(HangDetailViewController *)&v11 viewDidLoad];
  v3 = [(HangDetailViewController *)self specifier];
  v4 = [v3 name];
  [(HangDetailViewController *)self setTitle:v4];

  v5 = objc_alloc_init(UINavigationBarAppearance);
  [v5 configureWithOpaqueBackground];
  v6 = [(HangDetailViewController *)self navigationItem];
  [v6 setStandardAppearance:v5];

  v7 = [(HangDetailViewController *)self navigationItem];
  [v7 setCompactAppearance:v5];

  v8 = [(HangDetailViewController *)self navigationItem];
  [v8 setScrollEdgeAppearance:v5];

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"shareLog"];
  v10 = [(HangDetailViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];
}

- (void)shareLog
{
  v3 = [(HangDetailViewController *)self specifier];
  v4 = [v3 objectForKeyedSubscript:@"file-path"];

  if (v4)
  {
    +[HTHangsAnalytics sendLogSharedEvent];
    v5 = [NSURL fileURLWithPath:v4];
    v6 = [v4 lastPathComponent];
    v12[0] = v6;
    v12[1] = v5;
    v7 = [NSArray arrayWithObjects:v12 count:2];

    v8 = [[UIActivityViewController alloc] initWithActivityItems:v7 applicationActivities:0];
    v9 = [(HangDetailViewController *)self navigationItem];
    v10 = [v9 rightBarButtonItem];
    v11 = [v8 popoverPresentationController];
    [v11 setBarButtonItem:v10];

    [(HangDetailViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

@end