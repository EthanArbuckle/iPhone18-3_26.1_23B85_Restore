@interface QLVCFItemViewController
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
@end

@implementation QLVCFItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [CNContactViewController viewControllerForUnknownContact:contents];
  [v8 setActions:32];
  [v8 setDisplayMode:1];
  [(QLVCFItemViewController *)self addChildViewController:v8];
  view = [(QLVCFItemViewController *)self view];
  view2 = [v8 view];
  [view addSubview:view2];

  [v8 didMoveToParentViewController:self];
  view3 = [v8 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(QLVCFItemViewController *)self view];
  v22 = @"personView";
  view5 = [v8 view];
  v23 = view5;
  v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v15 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[personView]|" options:0 metrics:0 views:v14];
  [view4 addConstraints:v15];

  view6 = [(QLVCFItemViewController *)self view];
  v20 = @"personView";
  view7 = [v8 view];
  v21 = view7;
  v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[personView]|" options:0 metrics:0 views:v18];
  [view6 addConstraints:v19];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end