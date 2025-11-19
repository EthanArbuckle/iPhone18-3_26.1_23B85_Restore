@interface UIViewController
- (BOOL)bsui_hasLargeTitle;
- (BOOL)bsui_prefersExtraCompactNavBarMargin;
- (BSUIJetActionHandling)jetActionHandlerInContext;
- (void)_appendFeedsInCards:(id)a3 completion:(id)a4 options:(id)a5;
- (void)_presentFeedsInCards:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5 options:(id)a6 completion:(id)a7;
- (void)appendFeedsInCards:(id)a3 optionsValue:(id)a4;
- (void)bsui_configureHideSmallTitleOnScroll:(BOOL)a3;
- (void)bsui_setPrefersExtraCompactNavBarMargin:(BOOL)a3;
- (void)presentFeedsInCards:(id)a3 focusedIndexValue:(id)a4 animatedValue:(id)a5 optionsValue:(id)a6;
- (void)presentFeedsInCards:(id)a3 focusedIndexValue:(id)a4 titleValue:(id)a5 animatedValue:(id)a6 optionsValue:(id)a7;
@end

@implementation UIViewController

- (void)presentFeedsInCards:(id)a3 focusedIndexValue:(id)a4 titleValue:(id)a5 animatedValue:(id)a6 optionsValue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v12 isArray])
  {
    v17 = [v12 toArray];
  }

  else
  {
    v17 = 0;
  }

  if ([v13 isNumber])
  {
    v18 = [v13 toNumber];
    v19 = [v18 unsignedIntegerValue];
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v15 isBoolean])
  {
    v20 = [v15 toBool];
  }

  else
  {
    v20 = &dword_0 + 1;
  }

  if ([v16 isObject])
  {
    v21 = [v16 toDictionary];
  }

  else
  {
    v21 = 0;
  }

  if ([v17 count] > v19)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_22A28;
    v23[4] = sub_22A38;
    v24 = self;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_22A40;
    v22[3] = &unk_387940;
    v22[4] = v23;
    [(UIViewController *)v24 _presentFeedsInCards:v17 focusedIndex:v19 animated:v20 options:v21 completion:v22];
    _Block_object_dispose(v23, 8);
  }
}

- (void)presentFeedsInCards:(id)a3 focusedIndexValue:(id)a4 animatedValue:(id)a5 optionsValue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 isArray])
  {
    v14 = [v10 toArray];
  }

  else
  {
    v14 = 0;
  }

  if ([v11 isNumber])
  {
    v15 = [v11 toNumber];
    v16 = [v15 unsignedIntegerValue];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v12 isBoolean])
  {
    v17 = [v12 toBool];
  }

  else
  {
    v17 = &dword_0 + 1;
  }

  if ([v13 isObject])
  {
    v18 = [v13 toDictionary];
  }

  else
  {
    v18 = 0;
  }

  if ([v14 count] > v16)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = sub_22A28;
    v20[4] = sub_22A38;
    v21 = self;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_22C58;
    v19[3] = &unk_387940;
    v19[4] = v20;
    [(UIViewController *)v21 _presentFeedsInCards:v14 focusedIndex:v16 animated:v17 options:v18 completion:v19];
    _Block_object_dispose(v20, 8);
  }
}

- (void)_presentFeedsInCards:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = +[JSAMetricsController shared];
  v16 = [v15 newSuspensionAssertion];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_22EFC;
  v34[3] = &unk_387968;
  v17 = v16;
  v35 = v17;
  v18 = v14;
  v36 = v18;
  v19 = objc_retainBlock(v34);
  objc_initWeak(&location, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_22F5C;
  v27[3] = &unk_387990;
  objc_copyWeak(v31, &location);
  v27[4] = self;
  v20 = v12;
  v28 = v20;
  v21 = v13;
  v29 = v21;
  v31[1] = a4;
  v32 = a5;
  v22 = v19;
  v30 = v22;
  v23 = objc_retainBlock(v27);
  v24 = objc_retainBlock(v23);
  if (v24)
  {
    if (+[NSThread isMainThread])
    {
      v24[2](v24);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_23018;
      block[3] = &unk_386C58;
      v26 = v24;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
}

- (void)appendFeedsInCards:(id)a3 optionsValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isArray])
  {
    v8 = [v6 toArray];
  }

  else
  {
    v8 = 0;
  }

  if ([v7 isObject])
  {
    v9 = [v7 toDictionary];
  }

  else
  {
    v9 = 0;
  }

  if ([v8 count])
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_22A28;
    v11[4] = sub_22A38;
    v12 = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_231A0;
    v10[3] = &unk_387940;
    v10[4] = v11;
    [(UIViewController *)v12 _appendFeedsInCards:v8 completion:v10 options:v9];
    _Block_object_dispose(v11, 8);
  }
}

- (void)_appendFeedsInCards:(id)a3 completion:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_23390;
  v18[3] = &unk_3879B8;
  objc_copyWeak(&v22, &location);
  v11 = v10;
  v19 = v11;
  v12 = v8;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  v14 = objc_retainBlock(v18);
  v15 = objc_retainBlock(v14);
  if (v15)
  {
    if (+[NSThread isMainThread])
    {
      v15[2](v15);
    }

    else
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_23468;
      v16[3] = &unk_386C58;
      v17 = v15;
      dispatch_async(&_dispatch_main_q, v16);
    }
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (BOOL)bsui_prefersExtraCompactNavBarMargin
{
  v3 = objc_getAssociatedObject(self, off_3BA960);
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
    objc_setAssociatedObject(self, off_3BA960, &__kCFBooleanFalse, &dword_0 + 1);
  }

  v4 = [v3 BOOLValue];

  return v4;
}

- (void)bsui_setPrefersExtraCompactNavBarMargin:(BOOL)a3
{
  v4 = off_3BA960;
  v5 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, v4, v5, &dword_0 + 1);
}

- (BSUIJetActionHandling)jetActionHandlerInContext
{
  v2 = self;
  v3 = UIViewController.jetActionHandlerInContext.getter();

  return v3;
}

- (BOOL)bsui_hasLargeTitle
{
  v2 = self;
  v3 = [(UIViewController *)v2 navigationItem];
  v4 = [(UINavigationItem *)v3 largeTitleDisplayMode];

  LOBYTE(v3) = sub_166BF0(v4);
  return v3 & 1;
}

- (void)bsui_configureHideSmallTitleOnScroll:(BOOL)a3
{
  v4 = self;
  UIViewController.configureHideSmallTitleOnScroll(_:)(a3);
}

@end