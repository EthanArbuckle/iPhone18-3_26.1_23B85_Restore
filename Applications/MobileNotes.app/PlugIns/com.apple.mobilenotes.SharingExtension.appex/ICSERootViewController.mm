@interface ICSERootViewController
- (BOOL)shouldImportNotesWithURLs:(id)a3;
- (CGRect)keyboardFrame;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)dealloc;
- (void)dismissWithCompletion:(id)a3;
- (void)setIsShowingSearchResults:(BOOL)a3 animated:(BOOL)a4;
- (void)setUpNavigationController:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICSERootViewController

- (void)dismissWithCompletion:(id)a3
{
  v4 = a3;
  [(ICSERootViewController *)self setDismissing:1];
  [(ICSERootViewController *)self setDismissDuration:0.0];
  v5 = [(ICSERootViewController *)self mainViewController];
  v6 = [v5 topTextView];
  v7 = [v6 isFirstResponder];

  if (v7)
  {
    [(ICSERootViewController *)self setDismissCompletionBlock:v4];
    v8 = [(ICSERootViewController *)self mainViewController];
    v9 = [v8 topTextView];
    [v9 resignFirstResponder];

    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C53C;
    block[3] = &unk_1000F25B0;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ICSERootViewController *)self dismissViewControllerAnimated:1 completion:v4];
  }
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = ICSERootViewController;
  [(ICSERootViewController *)&v38 viewDidLoad];
  v3 = dispatch_group_create();
  v24 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = self;
  v4 = [(ICSERootViewController *)self extensionContext];
  v5 = [v4 inputItems];

  obj = v5;
  v22 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v22)
  {
    v21 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v6;
        v7 = *(*(&v34 + 1) + 8 * v6);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v8 = [v7 attachments];
        v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v31;
          do
          {
            v12 = 0;
            do
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v30 + 1) + 8 * v12);
              v14 = [UTTypeURL identifier];
              v15 = [v13 hasItemConformingToTypeIdentifier:v14];

              if (v15)
              {
                dispatch_group_enter(v3);
                v16 = [UTTypeURL identifier];
                v27[0] = _NSConcreteStackBlock;
                v27[1] = 3221225472;
                v27[2] = sub_10000C910;
                v27[3] = &unk_1000F2408;
                v28 = v24;
                v29 = v3;
                [v13 loadItemForTypeIdentifier:v16 options:0 completionHandler:v27];
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v10);
        }

        v6 = v23 + 1;
      }

      while ((v23 + 1) != v22);
      v22 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v22);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C9E4;
  block[3] = &unk_1000F23B8;
  block[4] = v19;
  v26 = v24;
  v17 = v24;
  dispatch_group_notify(v3, &_dispatch_main_q, block);
  v18 = +[ICNAController sharedController];
  [v18 startAppSession];
}

- (void)dealloc
{
  v3 = +[ICNAController sharedController];
  [v3 appSessionDidTerminate];

  v4.receiver = self;
  v4.super_class = ICSERootViewController;
  [(ICSERootViewController *)&v4 dealloc];
}

- (void)setUpNavigationController:(id)a3
{
  v9 = a3;
  [v9 setNavigationBarHidden:1];
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v4 = +[UIColor ICTintColor];
    v5 = [v9 navigationBar];
    [v5 setTintColor:v4];

    v6 = [UIColor ic_colorWith256Red:255.0 green:255.0 blue:255.0 unitAlpha:1.0];
    v7 = [v9 navigationBar];
    [v7 setBackgroundColor:v6];
  }

  [v9 setTransitioningDelegate:self];
  v8 = [v9 view];
  [v8 setClipsToBounds:1];
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[ICSEPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v7];

  [(ICSERootViewController *)self setIc_presentationController:v9];
  [(ICSEPresentationController *)v9 setRootViewController:self];

  return v9;
}

- (void)setIsShowingSearchResults:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
  {
    LODWORD(v4) = -1097229926;
    LODWORD(v5) = 1045220557;
    LODWORD(v6) = 1.0;
    v9 = [CAMediaTimingFunction functionWithControlPoints:0.0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000D19C;
    v10[3] = &unk_1000F2268;
    v10[4] = self;
    v11 = a3;
    [UIView ic_animateWithDuration:v9 timingFunction:v10 animations:0.25];
  }

  else
  {

    [(ICSERootViewController *)self setIsShowingSearchResults:?];
  }
}

- (BOOL)shouldImportNotesWithURLs:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v18 = 0;
    v17 = 0;
    v5 = [v4 getResourceValue:&v18 forKey:NSURLTypeIdentifierKey error:&v17];
    v6 = v18;
    v7 = v17;
    if ((v5 & 1) == 0)
    {
      v8 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000B36EC(v7, v4, v8);
      }
    }

    if (v6)
    {
      v9 = [ICUTType typeWithIdentifier:v6];
      v10 = [UTType importedTypeWithIdentifier:@"com.evernote.enex"];
      if ([v9 conformsToType:v10])
      {
        v11 = 1;
      }

      else
      {
        v12 = [ICUTType typeWithIdentifier:v6];
        v13 = +[ICArchive universalTypeIdentifier];
        if ([v12 conformsToType:v13])
        {
          v11 = 1;
        }

        else
        {
          v16 = [ICUTType typeWithIdentifier:v6];
          v14 = [UTType importedTypeWithIdentifier:@"net.daringfireball.markdown"];
          v11 = [v16 conformsToType:v14];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end