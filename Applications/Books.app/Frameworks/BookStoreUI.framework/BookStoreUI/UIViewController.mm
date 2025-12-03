@interface UIViewController
- (BOOL)bsui_hasLargeTitle;
- (BOOL)bsui_prefersExtraCompactNavBarMargin;
- (BSUIJetActionHandling)jetActionHandlerInContext;
- (void)_appendFeedsInCards:(id)cards completion:(id)completion options:(id)options;
- (void)_presentFeedsInCards:(id)cards focusedIndex:(unint64_t)index animated:(BOOL)animated options:(id)options completion:(id)completion;
- (void)appendFeedsInCards:(id)cards optionsValue:(id)value;
- (void)bsui_configureHideSmallTitleOnScroll:(BOOL)scroll;
- (void)bsui_setPrefersExtraCompactNavBarMargin:(BOOL)margin;
- (void)presentFeedsInCards:(id)cards focusedIndexValue:(id)value animatedValue:(id)animatedValue optionsValue:(id)optionsValue;
- (void)presentFeedsInCards:(id)cards focusedIndexValue:(id)value titleValue:(id)titleValue animatedValue:(id)animatedValue optionsValue:(id)optionsValue;
@end

@implementation UIViewController

- (void)presentFeedsInCards:(id)cards focusedIndexValue:(id)value titleValue:(id)titleValue animatedValue:(id)animatedValue optionsValue:(id)optionsValue
{
  cardsCopy = cards;
  valueCopy = value;
  titleValueCopy = titleValue;
  animatedValueCopy = animatedValue;
  optionsValueCopy = optionsValue;
  if ([cardsCopy isArray])
  {
    toArray = [cardsCopy toArray];
  }

  else
  {
    toArray = 0;
  }

  if ([valueCopy isNumber])
  {
    toNumber = [valueCopy toNumber];
    unsignedIntegerValue = [toNumber unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([animatedValueCopy isBoolean])
  {
    toBool = [animatedValueCopy toBool];
  }

  else
  {
    toBool = &dword_0 + 1;
  }

  if ([optionsValueCopy isObject])
  {
    toDictionary = [optionsValueCopy toDictionary];
  }

  else
  {
    toDictionary = 0;
  }

  if ([toArray count] > unsignedIntegerValue)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_22A28;
    v23[4] = sub_22A38;
    selfCopy = self;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_22A40;
    v22[3] = &unk_387940;
    v22[4] = v23;
    [(UIViewController *)selfCopy _presentFeedsInCards:toArray focusedIndex:unsignedIntegerValue animated:toBool options:toDictionary completion:v22];
    _Block_object_dispose(v23, 8);
  }
}

- (void)presentFeedsInCards:(id)cards focusedIndexValue:(id)value animatedValue:(id)animatedValue optionsValue:(id)optionsValue
{
  cardsCopy = cards;
  valueCopy = value;
  animatedValueCopy = animatedValue;
  optionsValueCopy = optionsValue;
  if ([cardsCopy isArray])
  {
    toArray = [cardsCopy toArray];
  }

  else
  {
    toArray = 0;
  }

  if ([valueCopy isNumber])
  {
    toNumber = [valueCopy toNumber];
    unsignedIntegerValue = [toNumber unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([animatedValueCopy isBoolean])
  {
    toBool = [animatedValueCopy toBool];
  }

  else
  {
    toBool = &dword_0 + 1;
  }

  if ([optionsValueCopy isObject])
  {
    toDictionary = [optionsValueCopy toDictionary];
  }

  else
  {
    toDictionary = 0;
  }

  if ([toArray count] > unsignedIntegerValue)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = sub_22A28;
    v20[4] = sub_22A38;
    selfCopy = self;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_22C58;
    v19[3] = &unk_387940;
    v19[4] = v20;
    [(UIViewController *)selfCopy _presentFeedsInCards:toArray focusedIndex:unsignedIntegerValue animated:toBool options:toDictionary completion:v19];
    _Block_object_dispose(v20, 8);
  }
}

- (void)_presentFeedsInCards:(id)cards focusedIndex:(unint64_t)index animated:(BOOL)animated options:(id)options completion:(id)completion
{
  cardsCopy = cards;
  optionsCopy = options;
  completionCopy = completion;
  v15 = +[JSAMetricsController shared];
  newSuspensionAssertion = [v15 newSuspensionAssertion];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_22EFC;
  v34[3] = &unk_387968;
  v17 = newSuspensionAssertion;
  v35 = v17;
  v18 = completionCopy;
  v36 = v18;
  v19 = objc_retainBlock(v34);
  objc_initWeak(&location, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_22F5C;
  v27[3] = &unk_387990;
  objc_copyWeak(v31, &location);
  v27[4] = self;
  v20 = cardsCopy;
  v28 = v20;
  v21 = optionsCopy;
  v29 = v21;
  v31[1] = index;
  animatedCopy = animated;
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

- (void)appendFeedsInCards:(id)cards optionsValue:(id)value
{
  cardsCopy = cards;
  valueCopy = value;
  if ([cardsCopy isArray])
  {
    toArray = [cardsCopy toArray];
  }

  else
  {
    toArray = 0;
  }

  if ([valueCopy isObject])
  {
    toDictionary = [valueCopy toDictionary];
  }

  else
  {
    toDictionary = 0;
  }

  if ([toArray count])
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_22A28;
    v11[4] = sub_22A38;
    selfCopy = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_231A0;
    v10[3] = &unk_387940;
    v10[4] = v11;
    [(UIViewController *)selfCopy _appendFeedsInCards:toArray completion:v10 options:toDictionary];
    _Block_object_dispose(v11, 8);
  }
}

- (void)_appendFeedsInCards:(id)cards completion:(id)completion options:(id)options
{
  cardsCopy = cards;
  completionCopy = completion;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_23390;
  v18[3] = &unk_3879B8;
  objc_copyWeak(&v22, &location);
  v11 = optionsCopy;
  v19 = v11;
  v12 = cardsCopy;
  v20 = v12;
  v13 = completionCopy;
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

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)bsui_setPrefersExtraCompactNavBarMargin:(BOOL)margin
{
  v4 = off_3BA960;
  v5 = [NSNumber numberWithBool:margin];
  objc_setAssociatedObject(self, v4, v5, &dword_0 + 1);
}

- (BSUIJetActionHandling)jetActionHandlerInContext
{
  selfCopy = self;
  v3 = UIViewController.jetActionHandlerInContext.getter();

  return v3;
}

- (BOOL)bsui_hasLargeTitle
{
  selfCopy = self;
  navigationItem = [(UIViewController *)selfCopy navigationItem];
  largeTitleDisplayMode = [(UINavigationItem *)navigationItem largeTitleDisplayMode];

  LOBYTE(navigationItem) = sub_166BF0(largeTitleDisplayMode);
  return navigationItem & 1;
}

- (void)bsui_configureHideSmallTitleOnScroll:(BOOL)scroll
{
  selfCopy = self;
  UIViewController.configureHideSmallTitleOnScroll(_:)(scroll);
}

@end