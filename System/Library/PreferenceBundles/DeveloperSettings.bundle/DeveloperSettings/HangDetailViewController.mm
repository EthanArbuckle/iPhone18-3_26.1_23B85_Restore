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
  specifier = [(HangDetailViewController *)self specifier];
  name = [specifier name];
  [(HangDetailViewController *)self setTitle:name];

  v5 = objc_alloc_init(UINavigationBarAppearance);
  [v5 configureWithOpaqueBackground];
  navigationItem = [(HangDetailViewController *)self navigationItem];
  [navigationItem setStandardAppearance:v5];

  navigationItem2 = [(HangDetailViewController *)self navigationItem];
  [navigationItem2 setCompactAppearance:v5];

  navigationItem3 = [(HangDetailViewController *)self navigationItem];
  [navigationItem3 setScrollEdgeAppearance:v5];

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"shareLog"];
  navigationItem4 = [(HangDetailViewController *)self navigationItem];
  [navigationItem4 setRightBarButtonItem:v9];
}

- (void)shareLog
{
  specifier = [(HangDetailViewController *)self specifier];
  v4 = [specifier objectForKeyedSubscript:@"file-path"];

  if (v4)
  {
    +[HTHangsAnalytics sendLogSharedEvent];
    v5 = [NSURL fileURLWithPath:v4];
    lastPathComponent = [v4 lastPathComponent];
    v12[0] = lastPathComponent;
    v12[1] = v5;
    v7 = [NSArray arrayWithObjects:v12 count:2];

    v8 = [[UIActivityViewController alloc] initWithActivityItems:v7 applicationActivities:0];
    navigationItem = [(HangDetailViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    popoverPresentationController = [v8 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:rightBarButtonItem];

    [(HangDetailViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

@end