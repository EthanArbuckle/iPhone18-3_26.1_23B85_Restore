@interface DeniesInternalPresentationsShowViewControllerOperation
- (void)doInternalPresentation;
@end

@implementation DeniesInternalPresentationsShowViewControllerOperation

- (void)doInternalPresentation
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = v5;
    shownViewController = [(ShowViewControllerOperation *)self shownViewController];
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = objc_opt_class();
    v8 = v16;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ operation instructing non-internal modal presentation of %@.", buf, 0x16u);
  }

  shownViewController2 = [(ShowViewControllerOperation *)self shownViewController];
  [shownViewController2 setModalPresentationStyle:1];

  parentOfShownViewController = [(ShowViewControllerOperation *)self parentOfShownViewController];
  shownViewController3 = [(ShowViewControllerOperation *)self shownViewController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D6368;
  v12[3] = &unk_10020EB00;
  v12[4] = self;
  [parentOfShownViewController presentViewController:shownViewController3 animated:-[ShowViewControllerOperation shouldShowWithAnimation](self completion:{"shouldShowWithAnimation"), v12}];
}

@end