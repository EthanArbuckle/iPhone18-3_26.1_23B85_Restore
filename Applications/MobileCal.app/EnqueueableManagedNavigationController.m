@interface EnqueueableManagedNavigationController
- (BOOL)_shouldDoExternalPresentationOfManagedNavigationController;
- (BOOL)_shouldEnqueueDismissals;
- (EnqueueableManagedNavigationController)init;
- (id)EKUI_viewHierarchy;
- (id)_popoverPresentationOperationInQueue;
- (id)enqueuedViewControllers;
- (void)_addDoneButtonIfNeededToViewController:(id)a3;
- (void)_doneButtonTapped;
- (void)cancelOutstandingOperations;
- (void)dealloc;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)dismissViewControllerWithoutEnqueuingWithTransition:(int)a3 completion:(id)a4;
- (void)enqueueBlock:(id)a3;
- (void)enqueueStackResetOperationDismissingPresentations:(BOOL)a3 cancelOperations:(BOOL)a4 completionBlock:(id)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)sourceViewController:(id)a3 notifiesReadinessForPresentation:(BOOL)a4;
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
      v9 = [v3 name];
      *buf = 138412290;
      v13 = v9;
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
  v2 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
  [v2 cancelAllOperations];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = EnqueueableManagedNavigationController;
  v4 = a3;
  [(EnqueueableManagedNavigationController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
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
  v3 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
  v4 = [v3 operations];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AC0EC;
  v7[3] = &unk_1002106D8;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)sourceViewController:(id)a3 notifiesReadinessForPresentation:(BOOL)a4
{
  v4 = [(EnqueueableManagedNavigationController *)self _popoverPresentationOperationInQueue:a3];
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
  v2 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
  v3 = [v2 operations];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC2DC;
  v6[3] = &unk_1002106D8;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)showViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v72 = a6;
  if (v10)
  {
    v12 = [v10 prefersForcedModalShowViewController];
    v13 = [(EnqueueableManagedNavigationController *)self _shouldDoExternalPresentationOfManagedNavigationController];
    v14 = [(EnqueueableManagedNavigationController *)self sourceViewController];
    v15 = [v14 presentationStyleOverrideForChildViewControllers];

    if (v15 == -52534682)
    {
      goto LABEL_51;
    }

    [(EnqueueableManagedNavigationController *)self _addDoneButtonIfNeededToViewController:v10];
    v16 = [(EnqueueableManagedNavigationController *)self showViewControllerOperationClass];
    v71 = v11;
    v70 = v12;
    if ((v13 & v12) != 1 || v15 == 7)
    {
      if (v12)
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

        [v10 setModalPresentationStyle:v23];
      }

      v24 = [(EnqueueableManagedNavigationController *)self viewControllers];
      if ([v24 count] == 1)
      {
        [(EnqueueableManagedNavigationController *)self viewControllers];
        v25 = v69 = v16;
        v26 = [v25 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v7 = v7;
        v16 = v69;
      }

      else
      {
        isKindOfClass = 0;
      }

      v19 = [[v16 alloc] initWithViewControllerToShow:v10 toBeShownInViewController:self shouldBeModal:v12 shouldShowWithAnimation:isKindOfClass & 1];
    }

    else
    {
      [v10 setModalPresentationStyle:v15];
      v17 = [v16 alloc];
      v18 = [(EnqueueableManagedNavigationController *)self modalPresentationDelegate];
      v19 = [v17 initWithViewControllerToShow:v10 toBeShownInViewController:v18 shouldBeModal:1 shouldShowWithAnimation:v7];

      v13 = 0;
    }

    [(DeferredPopoverPresentationOperation *)v19 setCompletionBlock:v72];
    v28 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = v16;
      v31 = objc_opt_class();
      v32 = v31;
      *buf = 138412546;
      v74 = v31;
      v75 = 2112;
      v76 = objc_opt_class();
      v33 = v76;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@ queueing show view controller operation to show %@", buf, 0x16u);

      v16 = v30;
    }

    if (v13)
    {
      [(EnqueueableManagedNavigationController *)self setModalPresentationStyle:v15];
      if (v15 == 7)
      {
        v34 = [(EnqueueableManagedNavigationController *)self _popoverPresentationOperationInQueue];
        if (v34 || (-[EnqueueableManagedNavigationController showViewControllersWhenReadyQueue](self, "showViewControllersWhenReadyQueue"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 operationCount], v35, v36))
        {
          v37 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            v39 = objc_opt_class();
            v40 = v39;
            v41 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
            *buf = 138412546;
            v74 = v39;
            v75 = 2112;
            v76 = v41;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@ won't create a popover presentation operation because the queue is not empty: \n %@", buf, 0x16u);
          }

          v42 = 0;
        }

        else
        {
          v42 = [[DeferredPopoverPresentationOperation alloc] initWithViewController:self shouldShowWithAnimation:v7];
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

        v43 = [(EnqueueableManagedNavigationController *)self sourceViewController];
        v44 = [v43 conformsToProtocol:&OBJC_PROTOCOL___EnqueuablePopoverPresentationManagedNavigationControllerDelegate];

        if (v44)
        {
          v45 = [(EnqueueableManagedNavigationController *)self sourceViewController];
          [v45 enqueuableNavigationController:self requestsDeferShowViewControllerUntilReady:0];
        }

        v46 = v70 ^ 1;
        if (!v34)
        {
          v46 = 1;
        }

        if ((v46 & 1) == 0)
        {
          [(DeferredPopoverPresentationOperation *)v19 addDependency:v34];
        }

        v47 = v44 ^ 1;
      }

      else
      {
        v48 = [v16 alloc];
        v49 = [(EnqueueableManagedNavigationController *)self modalPresentationDelegate];
        v42 = [v48 initWithViewControllerToShow:self toBeShownInViewController:v49 shouldBeModal:1 shouldShowWithAnimation:v7];

        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
      v42 = 0;
    }

    v50 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    v51 = [v50 operations];

    if ([v51 count] >= 2)
    {
      v52 = [v51 lastObject];
      [(DeferredPopoverPresentationOperation *)v19 addDependency:v52];
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
        v54 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
        [v54 addOperation:v42];
      }
    }

    else if (v42)
    {
      [(DeferredPopoverPresentationOperation *)v19 setCompletionBlock:0];
      [(DeferredPopoverPresentationOperation *)v42 setCompletionBlock:v72];
      v55 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
      [v55 addOperation:v19];

      if (v47)
      {
LABEL_48:
        v59 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v59;
          v61 = objc_opt_class();
          v62 = v61;
          v63 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
          *buf = 138412546;
          v74 = v61;
          v75 = 2112;
          v76 = v63;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@'s operation queue is ready for execution:\n%@", buf, 0x16u);
        }

        v64 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
        [v64 setSuspended:0];

        v11 = v71;
        goto LABEL_51;
      }

      v56 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
      v57 = v56;
      v58 = v42;
LABEL_47:
      [v56 addOperation:v58];

      goto LABEL_48;
    }

    v56 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    v57 = v56;
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
  v3 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
  if ([v3 operationCount])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(EnqueueableManagedNavigationController *)self modalPresentationDelegate];
    if (v5)
    {
      v6 = [(EnqueueableManagedNavigationController *)self view];
      v7 = [v6 window];
      if (v7)
      {
        v8 = [(EnqueueableManagedNavigationController *)self presentingViewController];
        v4 = v8 == 0;
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

- (void)_addDoneButtonIfNeededToViewController:(id)a3
{
  v10 = a3;
  if ([(EnqueueableManagedNavigationController *)self _shouldDoExternalPresentationOfManagedNavigationController])
  {
    v4 = [(EnqueueableManagedNavigationController *)self viewControllers];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(EnqueueableManagedNavigationController *)self view];
  v7 = EKUICurrentWindowInterfaceParadigm();

  if (v5 && v7 == 8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneButtonTapped"];
      v9 = [v10 navigationItem];
      [v9 setLeftBarButtonItem:v8];
    }
  }
}

- (void)_doneButtonTapped
{
  v3 = [(EnqueueableManagedNavigationController *)self presentingViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ACD24;
  v4[3] = &unk_10020EB00;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

- (void)enqueueStackResetOperationDismissingPresentations:(BOOL)a3 cancelOperations:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = kCalUILogHandle;
  v10 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG);
  if (v5)
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

  v15 = [(EnqueueableManagedNavigationController *)self presentedViewController];
  if (v15)
  {
    v16 = [(EnqueueableManagedNavigationController *)self presentedViewController];
    v17 = [v16 presentingViewController];
    v18 = v17 == self;
  }

  else
  {
    v18 = 0;
  }

  if ([(EnqueueableManagedNavigationController *)self _shouldEnqueueDismissals]&& v6 && v18)
  {
    objc_initWeak(buf, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000AD058;
    v24[3] = &unk_100210700;
    objc_copyWeak(&v26, buf);
    v24[4] = self;
    v25 = v8;
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
    v22 = v6;
    v23 = v18;
    objc_copyWeak(&v21, buf);
    v19[4] = self;
    v20 = v8;
    [(EnqueueableManagedNavigationController *)self enqueueBlock:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)enqueueBlock:(id)a3
{
  v4 = a3;
  if (v4)
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
    v17 = v4;
    v8 = [NSBlockOperation blockOperationWithBlock:&v13];
    v9 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue:v13];
    v10 = [v9 operations];
    v11 = [v10 lastObject];

    if (v11)
    {
      [v8 addDependency:v11];
    }

    v12 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    [v12 addOperation:v8];
  }
}

- (BOOL)_shouldEnqueueDismissals
{
  if (self->_enqueuingDismissalsDisabled)
  {
    return 0;
  }

  v3 = [(EnqueueableManagedNavigationController *)self sourceViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___EnqueueablePresentationDismissalManagedNavigationControllerDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(EnqueueableManagedNavigationController *)self sourceViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 enqueueableManagedNavigationControllerShouldEnqueuePresentationDismissals:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
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

    v10 = [[DismissPresentedViewControllerOperation alloc] initWithPresentingViewController:self transition:v4 completion:v6];
    v11 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    v12 = [v11 operations];

    if ([v12 count] >= 2)
    {
      v13 = [v12 lastObject];
      [(DismissPresentedViewControllerOperation *)v10 addDependency:v13];
    }

    v14 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    [v14 addOperation:v10];

    v15 = [(EnqueueableManagedNavigationController *)self showViewControllersWhenReadyQueue];
    [v15 setSuspended:0];
  }

  else
  {
    [(EnqueueableManagedNavigationController *)self dismissViewControllerWithoutEnqueuingWithTransition:v4 completion:v6];
  }
}

- (void)dismissViewControllerWithoutEnqueuingWithTransition:(int)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = EnqueueableManagedNavigationController;
  [(EnqueueableManagedNavigationController *)&v4 dismissViewControllerWithTransition:*&a3 completion:a4];
}

- (id)EKUI_viewHierarchy
{
  v3 = [(EnqueueableManagedNavigationController *)self sourceViewController];

  if (v3)
  {
    v4 = [(EnqueueableManagedNavigationController *)self sourceViewController];
    v5 = [v4 EKUI_viewHierarchy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EnqueueableManagedNavigationController;
    v5 = [(EnqueueableManagedNavigationController *)&v7 EKUI_viewHierarchy];
  }

  return v5;
}

@end