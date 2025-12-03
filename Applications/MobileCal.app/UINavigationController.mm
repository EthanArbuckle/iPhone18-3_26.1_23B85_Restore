@interface UINavigationController
- (void)_addDoneButtonIfNeededToViewController:(id)controller;
- (void)_presentSelfOnModalPresentationDelegateAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)popViewControllersAfterAndIncluding:(id)including animated:(BOOL)animated;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
@end

@implementation UINavigationController

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  completionCopy = completion;
  if (controllerCopy)
  {
    modalPresentationDelegate = [(UINavigationController *)self modalPresentationDelegate];
    if (modalPresentationDelegate)
    {
      view = [(UINavigationController *)self view];
      window = [view window];
      if (window)
      {
        presentingViewController = [(UINavigationController *)self presentingViewController];
        v18 = presentingViewController == 0;
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

    [(UINavigationController *)self _addDoneButtonIfNeededToViewController:controllerCopy];
    if (CalDraftUIEnabled() && [(DockableEventContainerController *)controllerCopy conformsToProtocol:&OBJC_PROTOCOL___DockableEventContainerControllerDelegate])
    {
      v22 = [[_TtC9MobileCal32DockableEventContainerController alloc] initWithFullViewController:controllerCopy];

      controllerCopy = v22;
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100055EE8;
    v29[3] = &unk_10020F6F0;
    v29[4] = self;
    v23 = controllerCopy;
    v30 = v23;
    v31 = animatedCopy & ~v18;
    v24 = objc_retainBlock(v29);
    [(DockableEventContainerController *)v23 preferredContentSize];
    [(UINavigationController *)self setPreferredContentSize:?];
    if (v18)
    {
      modalPresentationDelegate2 = [(UINavigationController *)self modalPresentationDelegate];

      if (!modalPresentationDelegate2)
      {
        sub_10016FD8C(a2, self);
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000565C8;
      v26[3] = &unk_10020F718;
      v27 = v24;
      v28 = completionCopy;
      [(UINavigationController *)self _presentSelfOnModalPresentationDelegateAnimated:animatedCopy withCompletionHandler:v26];
    }

    else
    {
      (v24[2])(v24, completionCopy);
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

- (void)_presentSelfOnModalPresentationDelegateAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  presentingViewController = [(UINavigationController *)self presentingViewController];

  if (presentingViewController)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    modalPresentationDelegate = [(UINavigationController *)self modalPresentationDelegate];
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

    modalPresentationDelegate2 = [(UINavigationController *)self modalPresentationDelegate];
    [modalPresentationDelegate2 presentViewController:self animated:animatedCopy completion:handlerCopy];
  }
}

- (void)_addDoneButtonIfNeededToViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy prefersForcedModalShowViewController])
  {
    prefersToBePresentedFromUINavigationController = 1;
  }

  else
  {
    prefersToBePresentedFromUINavigationController = [controllerCopy prefersToBePresentedFromUINavigationController];
  }

  view = [(UINavigationController *)self view];
  v6 = EKUICurrentWindowInterfaceParadigm();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v6 == 8)
    {
      v7 = prefersToBePresentedFromUINavigationController;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      navigationItem3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped"];
      navigationItem = [controllerCopy navigationItem];
      [navigationItem setLeftBarButtonItem:navigationItem3];
    }

    else
    {
      navigationItem2 = [controllerCopy navigationItem];
      leftBarButtonItem = [navigationItem2 leftBarButtonItem];

      if (!leftBarButtonItem)
      {
        goto LABEL_13;
      }

      navigationItem3 = [controllerCopy navigationItem];
      [navigationItem3 setLeftBarButtonItem:0];
    }
  }

LABEL_13:

  _objc_release_x1();
}

- (void)popViewControllersAfterAndIncluding:(id)including animated:(BOOL)animated
{
  animatedCopy = animated;
  includingCopy = including;
  viewControllers = [(UINavigationController *)self viewControllers];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(viewControllers, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = viewControllers;
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

      if (*(*(&v16 + 1) + 8 * v13) == includingCopy)
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
      v21 = includingCopy;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "View controller (%@) not found when trying to find a view controller to pop. View controllers = %@", buf, 0x16u);
    }
  }

  else
  {
    [(UINavigationController *)self setViewControllers:v8 animated:animatedCopy];
  }
}

@end