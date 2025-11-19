@interface QLVCFItemViewController
- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
@end

@implementation QLVCFItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [CNContactViewController viewControllerForUnknownContact:a3];
  [v8 setActions:32];
  [v8 setDisplayMode:1];
  [(QLVCFItemViewController *)self addChildViewController:v8];
  v9 = [(QLVCFItemViewController *)self view];
  v10 = [v8 view];
  [v9 addSubview:v10];

  [v8 didMoveToParentViewController:self];
  v11 = [v8 view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(QLVCFItemViewController *)self view];
  v22 = @"personView";
  v13 = [v8 view];
  v23 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v15 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[personView]|" options:0 metrics:0 views:v14];
  [v12 addConstraints:v15];

  v16 = [(QLVCFItemViewController *)self view];
  v20 = @"personView";
  v17 = [v8 view];
  v21 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[personView]|" options:0 metrics:0 views:v18];
  [v16 addConstraints:v19];

  if (v7)
  {
    v7[2](v7, 0);
  }
}

- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end