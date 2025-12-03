@interface MailSceneDebugViewController
- (void)_loadDebugInfo;
- (void)selectAll:(id)all;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MailSceneDebugViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MailSceneDebugViewController;
  [(MailSceneDebugViewController *)&v6 viewDidLoad];
  view = [(MailSceneDebugViewController *)self view];
  v4 = [UITextView alloc];
  [view frame];
  v5 = [v4 initWithFrame:?];
  [v5 setAutoresizingMask:18];
  [v5 setEditable:0];
  [view addSubview:v5];
  [(MailSceneDebugViewController *)self setTextView:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = MailSceneDebugViewController;
  [(MailSceneDebugViewController *)&v8 viewWillAppear:appear];
  v4 = +[MailSceneDebugViewController title];
  navigationItem = [(MailSceneDebugViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:13 target:self action:"_loadDebugInfo"];
  navigationItem2 = [(MailSceneDebugViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v6];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MailSceneDebugViewController;
  [(MailSceneDebugViewController *)&v4 viewDidAppear:appear];
  [(MailSceneDebugViewController *)self _loadDebugInfo];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  textView = [(MailSceneDebugViewController *)self textView];
  [textView selectAll:allCopy];
}

- (void)_loadDebugInfo
{
  v3 = objc_alloc_init(NSMutableString);
  view = [(MailSceneDebugViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  session = [windowScene session];

  mf_debugDescription = [session mf_debugDescription];
  [v3 appendFormat:@"Current Scene Session:\n%@\n", mf_debugDescription];

  v9 = +[UIApplication sharedApplication];
  openSessions = [v9 openSessions];

  [v3 appendFormat:@"All Scene Sessions (%lu):\n", objc_msgSend(openSessions, "count")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = openSessions;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        mf_debugDescription2 = [*(*(&v17 + 1) + 8 * v14) mf_debugDescription];
        [v3 appendFormat:@"%@\n", mf_debugDescription2];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  textView = [(MailSceneDebugViewController *)self textView];
  [textView setText:v3];
}

@end