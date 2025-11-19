@interface _TUIFeedSectionDebug
- (BOOL)_computeHasErrors;
- (BOOL)showButton;
- (TUIFeedViewController)hostingViewController;
- (_TUIFeedSectionDebug)initWithRenderModel:(id)a3 hostingViewController:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_dismissErrors:(id)a3;
- (void)_shareCapture:(id)a3;
- (void)_shareText:(id)a3;
- (void)_showErrorsForSection:(id)a3;
- (void)setRenderModel:(id)a3;
@end

@implementation _TUIFeedSectionDebug

- (_TUIFeedSectionDebug)initWithRenderModel:(id)a3 hostingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = _TUIFeedSectionDebug;
  v9 = [(_TUIFeedSectionDebug *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_renderModel, a3);
    objc_storeWeak(&v10->_hostingViewController, v8);
    v11 = objc_alloc_init(_TUIFeedSectionDebugButton);
    button = v10->_button;
    v10->_button = v11;

    [(_TUIFeedSectionDebugButton *)v10->_button setDebug:v10];
    v13 = [UIImageSymbolConfiguration configurationWithScale:3];
    v14 = [UIImage systemImageNamed:@"ellipsis.circle" withConfiguration:v13];

    v15 = +[UIColor labelColor];
    [(_TUIFeedSectionDebugButton *)v10->_button setTintColor:v15];

    [(_TUIFeedSectionDebugButton *)v10->_button setImage:v14 forState:0];
    [(_TUIFeedSectionDebugButton *)v10->_button setShowsMenuAsPrimaryAction:1];
    [(_TUIFeedSectionDebugButton *)v10->_button setContextMenuInteractionEnabled:1];
  }

  return v10;
}

- (void)setRenderModel:(id)a3
{
  v5 = a3;
  if (self->_renderModel != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_renderModel, a3);
    v6 = [(_TUIFeedSectionDebug *)self _computeHasErrors];
    self->_hasErrors = v6;
    if (v6)
    {
      +[UIColor systemRedColor];
    }

    else
    {
      +[UIColor labelColor];
    }
    v7 = ;
    [(_TUIFeedSectionDebugButton *)self->_button setTintColor:v7];

    v5 = v8;
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_169708;
  v7[3] = &unk_2634D0;
  v7[4] = self;
  v8 = a3;
  v4 = v8;
  v5 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v7];

  return v5;
}

- (void)_shareCapture:(id)a3
{
  v4 = a3;
  v5 = [UIActivityViewController alloc];
  v6 = [v4 url];

  v12 = v6;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = [v5 initWithActivityItems:v7 applicationActivities:0];

  button = self->_button;
  v10 = [v8 popoverPresentationController];
  [v10 setSourceView:button];

  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  [WeakRetained presentViewController:v8 animated:1 completion:0];
}

- (void)_shareText:(id)a3
{
  v4 = a3;
  v5 = [UIActivityViewController alloc];
  v11 = v4;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v7 = [v5 initWithActivityItems:v6 applicationActivities:0];

  button = self->_button;
  v9 = [v7 popoverPresentationController];
  [v9 setSourceView:button];

  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (void)_showErrorsForSection:(id)a3
{
  v4 = a3;
  v5 = [TUIErrorsViewController alloc];
  v6 = [v4 errors];

  v13 = [(TUIErrorsViewController *)v5 initWithErrors:v6];
  v7 = [[UINavigationController alloc] initWithRootViewController:v13];
  v8 = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:2 target:self action:"_dismissErrors:"];
  v9 = [(TUIErrorsViewController *)v13 navigationItem];
  [v9 setRightBarButtonItem:v8];

  errorViewController = self->_errorViewController;
  self->_errorViewController = v7;
  v11 = v7;

  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

- (void)_dismissErrors:(id)a3
{
  [(UIViewController *)self->_errorViewController dismissViewControllerAnimated:1 completion:0];
  errorViewController = self->_errorViewController;
  self->_errorViewController = 0;
}

- (BOOL)_computeHasErrors
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(TUIRenderModelCollection *)self->_renderModel sections];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_16AA60;
  v4[3] = &unk_2634F8;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)showButton
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"TUIEnableDebugMenu"];

  if (v4)
  {
    return 1;
  }

  else
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"TUIReportErrors"];

    return v7 && self->_hasErrors;
  }
}

- (TUIFeedViewController)hostingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);

  return WeakRetained;
}

@end