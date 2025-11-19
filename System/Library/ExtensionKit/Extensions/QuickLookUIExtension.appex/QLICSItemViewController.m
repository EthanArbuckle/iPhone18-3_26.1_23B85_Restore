@interface QLICSItemViewController
- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4;
- (id)scrollView;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
@end

@implementation QLICSItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v12;
  v9 = v11;
  v10 = v7;
  QLRunInMainThread();
}

- (id)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end