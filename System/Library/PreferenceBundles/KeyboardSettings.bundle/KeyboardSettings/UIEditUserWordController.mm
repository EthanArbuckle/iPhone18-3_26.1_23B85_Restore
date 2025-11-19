@interface UIEditUserWordController
- (UIEditUserWordController)initWithText:(id)a3;
- (UIEditUserWordController)initWithText:(id)a3 andShortcut:(id)a4;
- (void)_dismiss;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation UIEditUserWordController

- (UIEditUserWordController)initWithText:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIEditUserWordController;
  v4 = [(EditUserWordController *)&v6 init];
  if (v4)
  {
    [(EditUserWordController *)v4 setDictionaryController:objc_alloc_init(TIUserWordsManager)];
    [(EditUserWordController *)v4 setTarget:a3];
  }

  return v4;
}

- (UIEditUserWordController)initWithText:(id)a3 andShortcut:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIEditUserWordController;
  v6 = [(EditUserWordController *)&v8 init];
  if (v6)
  {
    [(EditUserWordController *)v6 setDictionaryController:objc_alloc_init(TIUserWordsManager)];
    [(EditUserWordController *)v6 setTarget:a3];
    [(EditUserWordController *)v6 setShortcut:a4];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIEditUserWordController;
  [(EditUserWordController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = UIEditUserWordController;
  [(EditUserWordController *)&v9 viewDidLoad];
  [-[UIEditUserWordController navigationItem](self "navigationItem")];
  if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
  {
    [-[UIEditUserWordController table](self "table")];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    [-[UIEditUserWordController table](self "table")];
    [-[UIEditUserWordController table](self "table")];
    [-[UIEditUserWordController table](self "table")];
    [(UIEditUserWordController *)self setPreferredContentSize:?];
    [-[UIEditUserWordController table](self "table")];
  }
}

- (void)_dismiss
{
  if ([(UIEditUserWordController *)self dismissCompletionHandler])
  {
    [-[UIEditUserWordController navigationController](self "navigationController")];
    [(UIEditUserWordController *)self setDismissCompletionHandler:0];

    [(UIEditUserWordController *)self _setRotationDecider:0];
  }

  else
  {
    v3 = [(UIEditUserWordController *)self parentViewController];

    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

@end