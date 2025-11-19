@interface MailSceneDebugViewController
- (void)_loadDebugInfo;
- (void)selectAll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MailSceneDebugViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MailSceneDebugViewController;
  [(MailSceneDebugViewController *)&v6 viewDidLoad];
  v3 = [(MailSceneDebugViewController *)self view];
  v4 = [UITextView alloc];
  [v3 frame];
  v5 = [v4 initWithFrame:?];
  [v5 setAutoresizingMask:18];
  [v5 setEditable:0];
  [v3 addSubview:v5];
  [(MailSceneDebugViewController *)self setTextView:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MailSceneDebugViewController;
  [(MailSceneDebugViewController *)&v8 viewWillAppear:a3];
  v4 = +[MailSceneDebugViewController title];
  v5 = [(MailSceneDebugViewController *)self navigationItem];
  [v5 setTitle:v4];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:13 target:self action:"_loadDebugInfo"];
  v7 = [(MailSceneDebugViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MailSceneDebugViewController;
  [(MailSceneDebugViewController *)&v4 viewDidAppear:a3];
  [(MailSceneDebugViewController *)self _loadDebugInfo];
}

- (void)selectAll:(id)a3
{
  v5 = a3;
  v4 = [(MailSceneDebugViewController *)self textView];
  [v4 selectAll:v5];
}

- (void)_loadDebugInfo
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(MailSceneDebugViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 session];

  v8 = [v7 mf_debugDescription];
  [v3 appendFormat:@"Current Scene Session:\n%@\n", v8];

  v9 = +[UIApplication sharedApplication];
  v10 = [v9 openSessions];

  [v3 appendFormat:@"All Scene Sessions (%lu):\n", objc_msgSend(v10, "count")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
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

        v15 = [*(*(&v17 + 1) + 8 * v14) mf_debugDescription];
        [v3 appendFormat:@"%@\n", v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = [(MailSceneDebugViewController *)self textView];
  [v16 setText:v3];
}

@end