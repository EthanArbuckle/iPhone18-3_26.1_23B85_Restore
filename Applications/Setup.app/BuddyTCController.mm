@interface BuddyTCController
- (BFFFlowItemDelegate)delegate;
- (BuddyTCController)init;
- (BuddyWarrantyTCController)warrantyTermsController;
- (BuddyiOSTCController)iOSTermsController;
- (id)multiTermsController;
- (id)parentViewControllerForObjectModel:(id)model;
- (id)viewController;
- (void)_executeDeferredPerformExtendedInitCompletion;
- (void)buddyTCSubController:(id)controller didFinishWithAgree:(BOOL)agree;
- (void)loader:(id)loader didFailWithError:(id)error;
- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal;
- (void)objectModel:(id)model didNavigateBackFromController:(id)controller withGesture:(BOOL)gesture;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyTCController

- (BuddyTCController)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyTCController;
  location = [(BuddyTCController *)&v5 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[BYWarranty shouldDisplay];
    *(location + 8) = v2 & 1;
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (BuddyiOSTCController)iOSTermsController
{
  if (!self->_iOSTermsController)
  {
    v2 = objc_alloc_init(BuddyiOSTCController);
    iOSTermsController = self->_iOSTermsController;
    self->_iOSTermsController = v2;

    [(BuddySimpleTCController *)self->_iOSTermsController setTermsAndConditionsDelegate:self, a2];
  }

  v4 = self->_iOSTermsController;

  return v4;
}

- (BuddyWarrantyTCController)warrantyTermsController
{
  if (!self->_warrantyTermsController)
  {
    v2 = objc_alloc_init(BuddyWarrantyTCController);
    warrantyTermsController = self->_warrantyTermsController;
    self->_warrantyTermsController = v2;

    [(BuddySimpleTCController *)self->_warrantyTermsController setTermsAndConditionsDelegate:self, a2];
  }

  v4 = self->_warrantyTermsController;

  return v4;
}

- (id)multiTermsController
{
  objectModel = [(BuddyTCController *)self objectModel];
  defaultPages = [(RUIObjectModel *)objectModel defaultPages];
  v4 = [defaultPages count];

  if (v4)
  {
    objectModel2 = [(BuddyTCController *)self objectModel];
    defaultPages2 = [(RUIObjectModel *)objectModel2 defaultPages];
    v9 = [defaultPages2 objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(BuddyTCController *)selfCopy includeWarranty])
  {
    v3 = +[NSBundle mainBundle];
    v43 = [(NSBundle *)v3 pathForResource:@"multiterms" ofType:@"xml"];

    v42 = [NSString stringWithContentsOfFile:v43 encoding:4 error:0];
    v41 = 0;
    v40 = 0;
    v25 = +[NSBundle mainBundle];
    v4 = [(NSBundle *)v25 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_10032F900 table:@"Localizable"];
    v24 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v24 localizedStringForKey:@"AGREE" value:&stru_10032F900 table:@"Localizable"];
    v23 = +[NSBundle mainBundle];
    v20 = [(NSBundle *)v23 localizedStringForKey:@"DISAGREE" value:&stru_10032F900 table:@"Localizable"];
    v22 = +[NSBundle mainBundle];
    v6 = [(NSBundle *)v22 localizedStringForKey:@"IMPORTANT" value:&stru_10032F900 table:@"Localizable"];
    v7 = SFLocalizedMultipickerStringForKey();
    v21 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v21 localizedStringForKey:@"TC_HEADER" value:&stru_10032F900 table:@"Localizable"];
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"WARRANTY_HEADER" value:&stru_10032F900 table:@"Localizable"];
    v11 = SFLocalizedMultipickerStringForKey();
    v12 = SFLocalizedMultipickerStringForKey();
    v13 = v4;
    v14 = [NSString stringWithValidatedFormat:v42 validFormatSpecifiers:@"%@%@%@%@%@%@%@%@%@" error:&v40, v4, v5, v20, v6, v7, v8, v10, v11, v12];
    objc_storeStrong(&v41, v40);
    v15 = v42;
    v42 = v14;

    if (!v42)
    {
      v39 = _BYLoggingFacility();
      v38 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v36 = 0;
        v34 = 0;
        if (_BYIsInternalInstall())
        {
          v16 = v41;
        }

        else if (v41)
        {
          domain = [v41 domain];
          v36 = 1;
          v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v41 code]);
          v35 = v16;
          v34 = 1;
        }

        else
        {
          v16 = 0;
        }

        sub_100071CBC(buf, v16);
        _os_log_error_impl(&_mh_execute_header, v39, v38, "Failed to load/format terms strings: %{public}@", buf, 0xCu);
        if (v34)
        {
        }

        if (v36)
        {
        }
      }

      objc_storeStrong(&v39, 0);
    }

    v33 = [v42 dataUsingEncoding:4];
    if ([v33 length])
    {
      v32 = objc_alloc_init(RUILoader);
      [v32 setDelegate:selfCopy];
      v17 = +[NSBundle mainBundle];
      resourceURL = [(NSBundle *)v17 resourceURL];
      [v32 loadXMLUIWithData:v33 baseURL:resourceURL];

      v26 = _NSConcreteStackBlock;
      v27 = -1073741824;
      v28 = 0;
      v29 = sub_1001F71CC;
      v30 = &unk_10032B120;
      v31 = location[0];
      [(BuddyTCController *)selfCopy setDeferredExtendedInitCompletionBlock:&v26];
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v43, 0);
  }

  deferredExtendedInitCompletionBlock = [(BuddyTCController *)selfCopy deferredExtendedInitCompletionBlock];

  if (!deferredExtendedInitCompletionBlock && location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (id)viewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(BuddyTCController *)self multiTermsController];
  if (location[0])
  {
    iOSTermsController = location[0];
  }

  else
  {
    iOSTermsController = [(BuddyTCController *)selfCopy iOSTermsController];
  }

  objc_storeStrong(location, 0);
  v2 = iOSTermsController;

  return v2;
}

- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, loader);
  v14 = 0;
  objc_storeStrong(&v14, model);
  defaultPages = [v14 defaultPages];
  v7 = [defaultPages count];

  if (v7)
  {
    [(BuddyTCController *)selfCopy setObjectModel:v14];
    v8 = selfCopy;
    objectModel = [(BuddyTCController *)selfCopy objectModel];
    [(RUIObjectModel *)objectModel setDelegate:v8];

    defaultPages2 = [v14 defaultPages];
    v11 = [defaultPages2 objectAtIndex:0];
    navigationItem = [v11 navigationItem];
    [navigationItem setHidesBackButton:1];

    v13 = +[RUIStyle setupAssistantStyle];
    [v13 applyToObjectModel:v14];
  }

  [(BuddyTCController *)selfCopy _executeDeferredPerformExtendedInitCompletion];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)loader:(id)loader didFailWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, loader);
  v5 = 0;
  objc_storeStrong(&v5, error);
  [(BuddyTCController *)selfCopy _executeDeferredPerformExtendedInitCompletion];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_executeDeferredPerformExtendedInitCompletion
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001F7598;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (id)parentViewControllerForObjectModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)objectModel:(id)model didNavigateBackFromController:(id)controller withGesture:(BOOL)gesture
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v6 = 0;
  objc_storeStrong(&v6, controller);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v15 = 0;
  objc_storeStrong(&v15, button);
  v14 = 0;
  objc_storeStrong(&v14, attributes);
  multiTermsController = [(BuddyTCController *)selfCopy multiTermsController];
  if ([v15 isEqualToString:@"agree"])
  {
    [(BuddyTCController *)selfCopy buddyTCSubController:multiTermsController didFinishWithAgree:1];
  }

  else if ([v15 isEqualToString:@"disagree"])
  {
    [(BuddyTCController *)selfCopy buddyTCSubController:multiTermsController didFinishWithAgree:0];
  }

  else if ([v15 isEqualToString:@"iOSTerms"])
  {
    iOSTermsController = [(BuddyTCController *)selfCopy iOSTermsController];
    navigationItem = [iOSTermsController navigationItem];
    [navigationItem setHidesBackButton:0];

    navigationController = [multiTermsController navigationController];
    [navigationController pushViewController:iOSTermsController animated:1];

    objc_storeStrong(&iOSTermsController, 0);
  }

  else if ([v15 isEqualToString:@"iOSWarranty"])
  {
    warrantyTermsController = [(BuddyTCController *)selfCopy warrantyTermsController];
    navigationItem2 = [(BuddyWarrantyTCController *)warrantyTermsController navigationItem];
    [navigationItem2 setHidesBackButton:0];

    navigationController2 = [multiTermsController navigationController];
    [navigationController2 pushViewController:warrantyTermsController animated:1];

    objc_storeStrong(&warrantyTermsController, 0);
  }

  objc_storeStrong(&multiTermsController, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)buddyTCSubController:(id)controller didFinishWithAgree:(BOOL)agree
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  agreeCopy = agree;
  if (agree)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [(NSBundle *)v5 localizedStringForKey:@"AGREE_DIALOG_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"AGREE_DIALOG_TEXT" value:&stru_10032F900 table:@"Localizable"];
    v38 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
    v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
    [v38 addAction:v11];

    v12 = v38;
    v13 = +[NSBundle mainBundle];
    v14 = [(NSBundle *)v13 localizedStringForKey:@"AGREE" value:&stru_10032F900 table:@"Localizable"];
    v31 = _NSConcreteStackBlock;
    v32 = -1073741824;
    v33 = 0;
    v34 = sub_1001F7E14;
    v35 = &unk_10032B5C0;
    v36 = selfCopy;
    v37 = location[0];
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:&v31];
    [v12 addAction:v15];

    [location[0] presentViewController:v38 animated:1 completion:0];
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v38, 0);
  }

  else
  {
    navigationController = [location[0] navigationController];
    viewControllers = [navigationController viewControllers];
    if ([viewControllers count] == 1)
    {
      delegate = [(BuddyTCController *)selfCopy delegate];
      [(BFFFlowItemDelegate *)delegate flowItemCancelled:selfCopy];
    }

    else
    {
      v28 = 0;
      for (i = [viewControllers count] - 1; i; --i)
      {
        v17 = [viewControllers objectAtIndex:i];
        v18 = v28;
        v28 = v17;

        warrantyTermsController = [(BuddyTCController *)selfCopy warrantyTermsController];
        v25 = 0;
        v23 = 0;
        v20 = 0;
        if (v28 != warrantyTermsController)
        {
          iOSTermsController = [(BuddyTCController *)selfCopy iOSTermsController];
          v25 = 1;
          v20 = 0;
          if (v28 != iOSTermsController)
          {
            multiTermsController = [(BuddyTCController *)selfCopy multiTermsController];
            v23 = 1;
            v20 = v28 != multiTermsController;
          }
        }

        if (v23)
        {
        }

        if (v25)
        {
        }

        if (v20)
        {
          break;
        }
      }

      v21 = [viewControllers objectAtIndex:i];
      v22 = [navigationController popToViewController:v21 animated:1];

      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&viewControllers, 0);
    objc_storeStrong(&navigationController, 0);
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end