@interface UINavigationController
- (void)_addDoneButtonIfNeededToViewController:(id)a3;
- (void)_presentSelfOnModalPresentationDelegateAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)popViewControllersAfterAndIncluding:(id)a3 animated:(BOOL)a4;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation UINavigationController

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    v14 = [(UINavigationController *)self modalPresentationDelegate];
    if (v14)
    {
      v15 = [(UINavigationController *)self view];
      v16 = [v15 window];
      if (v16)
      {
        v17 = [(UINavigationController *)self presentingViewController];
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }

    [(UINavigationController *)self _addDoneButtonIfNeededToViewController:v11];
    if (CalDraftUIEnabled() && [(DockableEventContainerController *)v11 conformsToProtocol:&OBJC_PROTOCOL___DockableEventContainerControllerDelegate])
    {
      v22 = [[_TtC9MobileCal32DockableEventContainerController alloc] initWithFullViewController:v11];

      v11 = v22;
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100055EE8;
    v29[3] = &unk_10020F6F0;
    v29[4] = self;
    v23 = v11;
    v30 = v23;
    v31 = v7 & ~v18;
    v24 = objc_retainBlock(v29);
    [(DockableEventContainerController *)v23 preferredContentSize];
    [(UINavigationController *)self setPreferredContentSize:?];
    if (v18)
    {
      v25 = [(UINavigationController *)self modalPresentationDelegate];

      if (!v25)
      {
        sub_10016FD8C(a2, self);
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000565C8;
      v26[3] = &unk_10020F718;
      v27 = v24;
      v28 = v13;
      [(UINavigationController *)self _presentSelfOnModalPresentationDelegateAnimated:v7 withCompletionHandler:v26];
    }

    else
    {
      (v24[2])(v24, v13);
    }
  }

  else
  {
    v19 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      *buf = 138412546;
      v33 = objc_opt_class();
      v34 = 2080;
      v35 = "[UINavigationController(MobileCalUniversalShowViewControllerSignatureUsage) showViewController:sender:animated:completion:]";
      v21 = v33;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@ [%s] given nil input to show.", buf, 0x16u);
    }
  }
}

- (void)_presentSelfOnModalPresentationDelegateAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UINavigationController *)self presentingViewController];

  if (v7)
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v8 = [(UINavigationController *)self modalPresentationDelegate];
    v9 = objc_opt_class();
    v10 = [NSString stringWithFormat:@"<%@> presents <%@> with modal style %ld", v9, objc_opt_class(), [(UINavigationController *)self modalPresentationStyle]];

    v11 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      *buf = 138412802;
      v16 = objc_opt_class();
      v17 = 2080;
      v18 = "[UINavigationController(MobileCalUniversalShowViewControllerSignatureUsage) _presentSelfOnModalPresentationDelegateAnimated:withCompletionHandler:]";
      v19 = 2112;
      v20 = v10;
      v13 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ [%s] %@", buf, 0x20u);
    }

    v14 = [(UINavigationController *)self modalPresentationDelegate];
    [v14 presentViewController:self animated:v4 completion:v6];
  }
}

- (void)_addDoneButtonIfNeededToViewController:(id)a3
{
  v12 = a3;
  if ([v12 prefersForcedModalShowViewController])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v12 prefersToBePresentedFromUINavigationController];
  }

  v5 = [(UINavigationController *)self view];
  v6 = EKUICurrentWindowInterfaceParadigm();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v6 == 8)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped"];
      v9 = [v12 navigationItem];
      [v9 setLeftBarButtonItem:v8];
    }

    else
    {
      v10 = [v12 navigationItem];
      v11 = [v10 leftBarButtonItem];

      if (!v11)
      {
        goto LABEL_13;
      }

      v8 = [v12 navigationItem];
      [v8 setLeftBarButtonItem:0];
    }
  }

LABEL_13:

  _objc_release_x1();
}

- (void)popViewControllersAfterAndIncluding:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UINavigationController *)self viewControllers];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if (*(*(&v16 + 1) + 8 * v13) == v6)
      {
        break;
      }

      [v8 addObject:v16];
      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = [v9 count];
  if (v14 == [v8 count])
  {
    v15 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "View controller (%@) not found when trying to find a view controller to pop. View controllers = %@", buf, 0x16u);
    }
  }

  else
  {
    [(UINavigationController *)self setViewControllers:v8 animated:v4];
  }
}

@end