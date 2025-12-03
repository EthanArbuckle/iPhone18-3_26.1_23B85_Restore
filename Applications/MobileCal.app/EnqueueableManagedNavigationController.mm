@interface EnqueueableManagedNavigationController
- (BOOL)_shouldDoExternalPresentationOfManagedNavigationController;
- (BOOL)_shouldEnqueueDismissals;
- (EnqueueableManagedNavigationController)init;
- (id)EKUI_viewHierarchy;
- (id)_popoverPresentationOperationInQueue;
- (id)enqueuedViewControllers;
- (void)_addDoneButtonIfNeededToViewController:(id)controller;
- (void)_doneButtonTapped;
- (void)cancelOutstandingOperations;
- (void)dealloc;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)dismissViewControllerWithoutEnqueuingWithTransition:(int)transition completion:(id)completion;
- (void)enqueueBlock:(id)block;
- (void)enqueueStackResetOperationDismissingPresentations:(BOOL)presentations cancelOperations:(BOOL)operations completionBlock:(id)block;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)sourceViewController:(id)controller notifiesReadinessForPresentation:(BOOL)presentation;
@end

@implementation EnqueueableManagedNavigationController

- (EnqueueableManagedNavigationController)init
{
  v11.receiver = self;
  v11.super_class = EnqueueableManagedNavigationController;
  v2 = [(EnqueueableManagedNavigationController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    [v3 setMaxConcurrentOperationCount:1];
    [v3 setSuspended:1];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [[NSString alloc] initWithFormat:@"com.apple.mobilecal.%@.showViewControllers", v5];
    [v3 setName:v6];

    [(EnqueueableManagedNavigationController *)v2 setShowViewControllersWhenReadyQueue:v3];
    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      name = [v3 name];
      *buf = 138412290;
      v13 = name;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Created showViewControllers queue named [%@]", buf, 0xCu);
    }

    [(EnqueueableManagedNavigationController *)v2 _setClipUnderlapWhileTransitioning:1];
  }

  return v2;
}

- (void)dealloc
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    *buf = 138412290;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Dealloc [%@]", buf, 0xCu);
  }

  [(EnqueueableManagedNavigationController *)self cancelOutstandingOperations];
  v6.receiver = self;
  v6.super_class = EnqueueableManagedNavigationController;
  [(EnqueueableManagedNavigationController *)&v6 dealloc];
}

- (void)cancelOutstandingOperations
{
  showViewControllersWhenReadyQueue = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
  [showViewControllersWhenReadyQueue cancelAllOperations];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = EnqueueableManagedNavigationController;
  containerCopy = container;
  [(EnqueueableManagedNavigationController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(EnqueueableManagedNavigationController *)self setPreferredContentSize:v6, v8];
}

- (id)enqueuedViewControllers
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000AC0D4;
  v12 = sub_1000AC0E4;
  v13 = +[NSMutableArray array];
  showViewControllersWhenReadyQueue = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
  operations = [showViewControllersWhenReadyQueue operations];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AC0EC;
  v7[3] = &unk_1002106D8;
  v7[4] = &v8;
  [operations enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)sourceViewController:(id)controller notifiesReadinessForPresentation:(BOOL)presentation
{
  v4 = [(EnqueueableManagedNavigationController *)self _popoverPresentationOperationInQueue:controller];
  [v4 isReady];
}

- (id)_popoverPresentationOperationInQueue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000AC0D4;
  v11 = sub_1000AC0E4;
  v12 = 0;
  showViewControllersWhenReadyQueue = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
  operations = [showViewControllersWhenReadyQueue operations];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC2DC;
  v6[3] = &unk_1002106D8;
  v6[4] = &v7;
  [operations enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)showViewController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  completionCopy = completion;
  if (controllerCopy)
  {
    prefersForcedModalShowViewController = [controllerCopy prefersForcedModalShowViewController];
    _shouldDoExternalPresentationOfManagedNavigationController = [(EnqueueableManagedNavigationController *)self _shouldDoExternalPresentationOfManagedNavigationController];
    sourceViewController = [(EnqueueableManagedNavigationController *)self sourceViewController];
    presentationStyleOverrideForChildViewControllers = [sourceViewController presentationStyleOverrideForChildViewControllers];

    if (presentationStyleOverrideForChildViewControllers == -52534682)
    {
      goto LABEL_51;
    }

    [(EnqueueableManagedNavigationController *)self _addDoneButtonIfNeededToViewController:controllerCopy];
    showViewControllerOperationClass = [(EnqueueableManagedNavigationController *)self showViewControllerOperationClass];
    v71 = senderCopy;
    v70 = prefersForcedModalShowViewController;
    if ((_shouldDoExternalPresentationOfManagedNavigationController & prefersForcedModalShowViewController) != 1 || presentationStyleOverrideForChildViewControllers == 7)
    {
      if (prefersForcedModalShowViewController)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = 3;
        }

        else
        {
          v23 = 18;
        }

        [controllerCopy setModalPresentationStyle:v23];
      }

      viewControllers = [(EnqueueableManagedNavigationController *)self viewControllers];
      if ([viewControllers count] == 1)
      {
        [(EnqueueableManagedNavigationController *)self viewControllers];
        v25 = v69 = showViewControllerOperationClass;
        firstObject = [v25 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        animatedCopy = animatedCopy;
        showViewControllerOperationClass = v69;
      }

      else
      {
        isKindOfClass = 0;
      }

      v19 = [[showViewControllerOperationClass alloc] initWithViewControllerToShow:controllerCopy toBeShownInViewController:self shouldBeModal:prefersForcedModalShowViewController shouldShowWithAnimation:isKindOfClass & 1];
    }

    else
    {
      [controllerCopy setModalPresentationStyle:presentationStyleOverrideForChildViewControllers];
      v17 = [showViewControllerOperationClass alloc];
      modalPresentationDelegate = [(EnqueueableManagedNavigationController *)self modalPresentationDelegate];
      v19 = [v17 initWithViewControllerToShow:controllerCopy toBeShownInViewController:modalPresentationDelegate shouldBeModal:1 shouldShowWithAnimation:animatedCopy];

      _shouldDoExternalPresentationOfManagedNavigationController = 0;
    }

    [(DeferredPopoverPresentationOperation *)v19 setCompletionBlock:completionCopy];
    v28 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = showViewControllerOperationClass;
      v31 = objc_opt_class();
      v32 = v31;
      *buf = 138412546;
      v74 = v31;
      v75 = 2112;
      v76 = objc_opt_class();
      v33 = v76;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@ queueing show view controller operation to show %@", buf, 0x16u);

      showViewControllerOperationClass = v30;
    }

    if (_shouldDoExternalPresentationOfManagedNavigationController)
    {
      [(EnqueueableManagedNavigationController *)self setModalPresentationStyle:presentationStyleOverrideForChildViewControllers];
      if (presentationStyleOverrideForChildViewControllers == 7)
      {
        _popoverPresentationOperationInQueue = [(EnqueueableManagedNavigationController *)self _popoverPresentationOperationInQueue];
        if (_popoverPresentationOperationInQueue || (-[EnqueueableManagedNavigationController showViewControllersWhenReadyQueue](self, "showViewControllersWhenReadyQueue"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 operationCount], v35, v36))
        {
          v37 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            v39 = objc_opt_class();
            v40 = v39;
            showViewControllersWhenReadyQueue = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
            *buf = 138412546;
            v74 = v39;
            v75 = 2112;
            v76 = showViewControllersWhenReadyQueue;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@ won't create a popover presentation operation because the queue is not empty: \n %@", buf, 0x16u);
          }

          v42 = 0;
        }

        else
        {
          v42 = [[DeferredPopoverPresentationOperation alloc] initWithViewController:self shouldShowWithAnimation:animatedCopy];
          v65 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v66 = v65;
            v67 = objc_opt_class();
            *buf = 138412290;
            v74 = v67;
            v68 = v67;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%@ queueing initial popover presentation operation on queue.", buf, 0xCu);
          }
        }

        sourceViewController2 = [(EnqueueableManagedNavigationController *)self sourceViewController];
        v44 = [sourceViewController2 conformsToProtocol:&OBJC_PROTOCOL___EnqueuablePopoverPresentationManagedNavigationControllerDelegate];

        if (v44)
        {
          sourceViewController3 = [(EnqueueableManagedNavigationController *)self sourceViewController];
          [sourceViewController3 enqueuableNavigationController:self requestsDeferShowViewControllerUntilReady:0];
        }

        v46 = v70 ^ 1;
        if (!_popoverPresentationOperationInQueue)
        {
          v46 = 1;
        }

        if ((v46 & 1) == 0)
        {
          [(DeferredPopoverPresentationOperation *)v19 addDependency:_popoverPresentationOperationInQueue];
        }

        v47 = v44 ^ 1;
      }

      else
      {
        v48 = [showViewControllerOperationClass alloc];
        modalPresentationDelegate2 = [(EnqueueableManagedNavigationController *)self modalPresentationDelegate];
        v42 = [v48 initWithViewControllerToShow:self toBeShownInViewController:modalPresentationDelegate2 shouldBeModal:1 shouldShowWithAnimation:animatedCopy];

        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
      v42 = 0;
    }

    showViewControllersWhenReadyQueue2 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    operations = [showViewControllersWhenReadyQueue2 operations];

    if ([operations count] >= 2)
    {
      lastObject = [operations lastObject];
      [(DeferredPopoverPresentationOperation *)v19 addDependency:lastObject];
    }

    if ([(ShowViewControllerOperation *)v19 shouldBeModal])
    {
      if (v42)
      {
        v53 = v47;
      }

      else
      {
        v53 = 1;
      }

      if ((v53 & 1) == 0)
      {
        [(DeferredPopoverPresentationOperation *)v19 addDependency:v42];
        showViewControllersWhenReadyQueue3 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
        [showViewControllersWhenReadyQueue3 addOperation:v42];
      }
    }

    else if (v42)
    {
      [(DeferredPopoverPresentationOperation *)v19 setCompletionBlock:0];
      [(DeferredPopoverPresentationOperation *)v42 setCompletionBlock:completionCopy];
      showViewControllersWhenReadyQueue4 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
      [showViewControllersWhenReadyQueue4 addOperation:v19];

      if (v47)
      {
LABEL_48:
        v59 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v59;
          v61 = objc_opt_class();
          v62 = v61;
          showViewControllersWhenReadyQueue5 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
          *buf = 138412546;
          v74 = v61;
          v75 = 2112;
          v76 = showViewControllersWhenReadyQueue5;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@'s operation queue is ready for execution:\n%@", buf, 0x16u);
        }

        showViewControllersWhenReadyQueue6 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
        [showViewControllersWhenReadyQueue6 setSuspended:0];

        senderCopy = v71;
        goto LABEL_51;
      }

      showViewControllersWhenReadyQueue7 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
      v57 = showViewControllersWhenReadyQueue7;
      v58 = v42;
LABEL_47:
      [showViewControllersWhenReadyQueue7 addOperation:v58];

      goto LABEL_48;
    }

    showViewControllersWhenReadyQueue7 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    v57 = showViewControllersWhenReadyQueue7;
    v58 = v19;
    goto LABEL_47;
  }

  v20 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v21 = v20;
    *buf = 138412546;
    v74 = objc_opt_class();
    v75 = 2080;
    v76 = "[EnqueueableManagedNavigationController showViewController:sender:animated:completion:]";
    v22 = v74;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@ [%s] given nil input to show.", buf, 0x16u);
  }

LABEL_51:
}

- (BOOL)_shouldDoExternalPresentationOfManagedNavigationController
{
  showViewControllersWhenReadyQueue = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
  if ([showViewControllersWhenReadyQueue operationCount])
  {
    v4 = 0;
  }

  else
  {
    modalPresentationDelegate = [(EnqueueableManagedNavigationController *)self modalPresentationDelegate];
    if (modalPresentationDelegate)
    {
      view = [(EnqueueableManagedNavigationController *)self view];
      window = [view window];
      if (window)
      {
        presentingViewController = [(EnqueueableManagedNavigationController *)self presentingViewController];
        v4 = presentingViewController == 0;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_addDoneButtonIfNeededToViewController:(id)controller
{
  controllerCopy = controller;
  if ([(EnqueueableManagedNavigationController *)self _shouldDoExternalPresentationOfManagedNavigationController])
  {
    viewControllers = [(EnqueueableManagedNavigationController *)self viewControllers];
    v5 = [viewControllers count] == 0;
  }

  else
  {
    v5 = 0;
  }

  view = [(EnqueueableManagedNavigationController *)self view];
  v7 = EKUICurrentWindowInterfaceParadigm();

  if (v5 && v7 == 8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped"];
      navigationItem = [controllerCopy navigationItem];
      [navigationItem setLeftBarButtonItem:v8];
    }
  }
}

- (void)_doneButtonTapped
{
  presentingViewController = [(EnqueueableManagedNavigationController *)self presentingViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ACD24;
  v4[3] = &unk_10020EB00;
  v4[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v4];
}

- (void)enqueueStackResetOperationDismissingPresentations:(BOOL)presentations cancelOperations:(BOOL)operations completionBlock:(id)block
{
  operationsCopy = operations;
  presentationsCopy = presentations;
  blockCopy = block;
  v9 = kCalUILogHandle;
  v10 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG);
  if (operationsCopy)
  {
    if (v10)
    {
      v11 = v9;
      *buf = 138412290;
      v28 = objc_opt_class();
      v12 = v28;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ queueing stack reset operation and cancelling all outstanding operations.", buf, 0xCu);
    }

    [(EnqueueableManagedNavigationController *)self cancelOutstandingOperations];
  }

  else if (v10)
  {
    v13 = v9;
    *buf = 138412290;
    v28 = objc_opt_class();
    v14 = v28;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ queueing stack reset operation.", buf, 0xCu);
  }

  presentedViewController = [(EnqueueableManagedNavigationController *)self presentedViewController];
  if (presentedViewController)
  {
    presentedViewController2 = [(EnqueueableManagedNavigationController *)self presentedViewController];
    presentingViewController = [presentedViewController2 presentingViewController];
    v18 = presentingViewController == self;
  }

  else
  {
    v18 = 0;
  }

  if ([(EnqueueableManagedNavigationController *)self _shouldEnqueueDismissals]&& presentationsCopy && v18)
  {
    objc_initWeak(buf, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000AD058;
    v24[3] = &unk_100210700;
    objc_copyWeak(&v26, buf);
    v24[4] = self;
    v25 = blockCopy;
    [(EnqueueableManagedNavigationController *)self dismissViewControllerWithTransition:0 completion:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    objc_initWeak(buf, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000AD1DC;
    v19[3] = &unk_100210750;
    v22 = presentationsCopy;
    v23 = v18;
    objc_copyWeak(&v21, buf);
    v19[4] = self;
    v20 = blockCopy;
    [(EnqueueableManagedNavigationController *)self enqueueBlock:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)enqueueBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      *buf = 138412290;
      v20 = objc_opt_class();
      v7 = v20;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ queueing block operation.", buf, 0xCu);
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000AD84C;
    v16 = &unk_100210778;
    v18 = objc_opt_class();
    v17 = blockCopy;
    v8 = [NSBlockOperation blockOperationWithBlock:&v13];
    v9 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue:v13];
    operations = [v9 operations];
    lastObject = [operations lastObject];

    if (lastObject)
    {
      [v8 addDependency:lastObject];
    }

    showViewControllersWhenReadyQueue = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    [showViewControllersWhenReadyQueue addOperation:v8];
  }
}

- (BOOL)_shouldEnqueueDismissals
{
  if (self->_enqueuingDismissalsDisabled)
  {
    return 0;
  }

  sourceViewController = [(EnqueueableManagedNavigationController *)self sourceViewController];
  v4 = [sourceViewController conformsToProtocol:&OBJC_PROTOCOL___EnqueueablePresentationDismissalManagedNavigationControllerDelegate];

  if (!v4)
  {
    return 0;
  }

  sourceViewController2 = [(EnqueueableManagedNavigationController *)self sourceViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [sourceViewController2 enqueueableManagedNavigationControllerShouldEnqueuePresentationDismissals:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  v4 = *&transition;
  completionCopy = completion;
  if ([(EnqueueableManagedNavigationController *)self _shouldEnqueueDismissals])
  {
    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      *v16 = 138412290;
      *&v16[4] = objc_opt_class();
      v9 = *&v16[4];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ queueing show view controller operation to dismiss presented view controller", v16, 0xCu);
    }

    v10 = [[DismissPresentedViewControllerOperation alloc] initWithPresentingViewController:self transition:v4 completion:completionCopy];
    showViewControllersWhenReadyQueue = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    operations = [showViewControllersWhenReadyQueue operations];

    if ([operations count] >= 2)
    {
      lastObject = [operations lastObject];
      [(DismissPresentedViewControllerOperation *)v10 addDependency:lastObject];
    }

    showViewControllersWhenReadyQueue2 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    [showViewControllersWhenReadyQueue2 addOperation:v10];

    showViewControllersWhenReadyQueue3 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    [showViewControllersWhenReadyQueue3 setSuspended:0];
  }

  else
  {
    [(EnqueueableManagedNavigationController *)self dismissViewControllerWithoutEnqueuingWithTransition:v4 completion:completionCopy];
  }
}

- (void)dismissViewControllerWithoutEnqueuingWithTransition:(int)transition completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = EnqueueableManagedNavigationController;
  [(EnqueueableManagedNavigationController *)&v4 dismissViewControllerWithTransition:*&transition completion:completion];
}

- (id)EKUI_viewHierarchy
{
  sourceViewController = [(EnqueueableManagedNavigationController *)self sourceViewController];

  if (sourceViewController)
  {
    sourceViewController2 = [(EnqueueableManagedNavigationController *)self sourceViewController];
    eKUI_viewHierarchy = [sourceViewController2 EKUI_viewHierarchy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EnqueueableManagedNavigationController;
    eKUI_viewHierarchy = [(EnqueueableManagedNavigationController *)&v7 EKUI_viewHierarchy];
  }

  return eKUI_viewHierarchy;
}

@end