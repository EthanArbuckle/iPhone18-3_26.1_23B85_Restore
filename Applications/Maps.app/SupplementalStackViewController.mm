@interface SupplementalStackViewController
- (SupplementalStackViewController)initWithTopSafeAreaInsetConstraining:(BOOL)constraining;
- (id)preferredFocusEnvironments;
- (void)_addContainee:(id)containee animated:(BOOL)animated completion:(id)completion;
- (void)_removeContainee:(id)containee animated:(BOOL)animated completion:(id)completion;
- (void)popContainee:(BOOL)containee completion:(id)completion;
- (void)pushContainee:(id)containee animated:(BOOL)animated completion:(id)completion;
- (void)setContainees:(id)containees animated:(BOOL)animated completion:(id)completion;
- (void)setTopSafeAreaInsetConstraining:(BOOL)constraining;
@end

@implementation SupplementalStackViewController

- (id)preferredFocusEnvironments
{
  lastObject = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    v6 = lastObject;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)setContainees:(id)containees animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  containeesCopy = containees;
  completionCopy = completion;
  containeeViewControllerStack = self->_containeeViewControllerStack;
  v11 = containeesCopy;
  v12 = containeeViewControllerStack;
  if (v11 | v12 && (v13 = v12, v14 = [v11 isEqual:v12], v13, v11, !v14))
  {
    v15 = dispatch_group_create();
    lastObject = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
    if (lastObject)
    {
      dispatch_group_enter(v15);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100A115C0;
      v24[3] = &unk_101661738;
      v25 = v15;
      [(SupplementalStackViewController *)self _removeContainee:lastObject animated:animatedCopy completion:v24];
    }

    v17 = [NSMutableArray arrayWithArray:v11];
    v18 = self->_containeeViewControllerStack;
    self->_containeeViewControllerStack = v17;

    lastObject2 = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
    if (lastObject2)
    {
      dispatch_group_enter(v15);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100A115C8;
      v22[3] = &unk_101661738;
      v23 = v15;
      [(SupplementalStackViewController *)self _addContainee:lastObject2 animated:animatedCopy completion:v22];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A115D0;
    block[3] = &unk_101661760;
    v21 = completionCopy;
    dispatch_group_notify(v15, &_dispatch_main_q, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)popContainee:(BOOL)containee completion:(id)completion
{
  containeeCopy = containee;
  completionCopy = completion;
  v7 = dispatch_group_create();
  lastObject = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
  if (lastObject)
  {
    dispatch_group_enter(v7);
    [(NSMutableArray *)self->_containeeViewControllerStack removeObjectAtIndex:[(NSMutableArray *)self->_containeeViewControllerStack count]- 1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100A117F0;
    v15[3] = &unk_101661738;
    v9 = v7;
    v16 = v9;
    [(SupplementalStackViewController *)self _removeContainee:lastObject animated:containeeCopy completion:v15];
    lastObject2 = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
    if (lastObject2)
    {
      dispatch_group_enter(v9);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100A117F8;
      v13[3] = &unk_101661738;
      v14 = v9;
      [(SupplementalStackViewController *)self _addContainee:lastObject2 animated:containeeCopy completion:v13];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A11800;
    block[3] = &unk_101661760;
    v12 = completionCopy;
    dispatch_group_notify(v9, &_dispatch_main_q, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)pushContainee:(id)containee animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  containeeCopy = containee;
  completionCopy = completion;
  if (([(NSMutableArray *)self->_containeeViewControllerStack containsObject:containeeCopy]& 1) == 0)
  {
    v10 = dispatch_group_create();
    lastObject = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
    if (lastObject)
    {
      dispatch_group_enter(v10);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100A11A0C;
      v17[3] = &unk_101661738;
      v18 = v10;
      [(SupplementalStackViewController *)self _removeContainee:lastObject animated:animatedCopy completion:v17];
    }

    dispatch_group_enter(v10);
    [(NSMutableArray *)self->_containeeViewControllerStack addObject:containeeCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100A11A14;
    v15[3] = &unk_101661738;
    v16 = v10;
    v12 = v10;
    [(SupplementalStackViewController *)self _addContainee:containeeCopy animated:animatedCopy completion:v15];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A11A1C;
    block[3] = &unk_101661760;
    v14 = completionCopy;
    dispatch_group_notify(v12, &_dispatch_main_q, block);
  }
}

- (void)_removeContainee:(id)containee animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  contentViewTopAnchorConstraint = self->_contentViewTopAnchorConstraint;
  self->_contentViewTopAnchorConstraint = 0;
  containeeCopy = containee;

  contentViewTopSafeAreaConstraint = self->_contentViewTopSafeAreaConstraint;
  self->_contentViewTopSafeAreaConstraint = 0;

  [containeeCopy willMoveToParentViewController:0];
  view = [containeeCopy view];
  [view removeFromSuperview];

  [containeeCopy removeFromParentViewController];
  v11 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
    v11 = completionCopy;
  }
}

- (void)_addContainee:(id)containee animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  containeeCopy = containee;
  view = [containeeCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SupplementalStackViewController *)self addChildViewController:containeeCopy];
  view2 = [(SupplementalStackViewController *)self view];
  [view2 addSubview:view];

  v36 = [NSMutableArray alloc];
  leadingAnchor = [view leadingAnchor];
  view3 = [(SupplementalStackViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  bottomAnchor = [view bottomAnchor];
  view4 = [(SupplementalStackViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  trailingAnchor = [view trailingAnchor];
  view5 = [(SupplementalStackViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v37 = [v36 initWithObjects:{v9, v11, v16, 0}];

  topAnchor = [view topAnchor];
  view6 = [(SupplementalStackViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  contentViewTopSafeAreaConstraint = self->_contentViewTopSafeAreaConstraint;
  self->_contentViewTopSafeAreaConstraint = v21;

  topAnchor3 = [view topAnchor];
  view7 = [(SupplementalStackViewController *)self view];
  topAnchor4 = [view7 topAnchor];
  v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  contentViewTopAnchorConstraint = self->_contentViewTopAnchorConstraint;
  self->_contentViewTopAnchorConstraint = v26;

  if (self->_topSafeAreaInsetConstraining)
  {
    v28 = 32;
  }

  else
  {
    v28 = 24;
  }

  [v37 addObject:*(&self->super.super.super.isa + v28)];
  [NSLayoutConstraint activateConstraints:v37];
  [containeeCopy didMoveToParentViewController:self];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)setTopSafeAreaInsetConstraining:(BOOL)constraining
{
  if (self->_topSafeAreaInsetConstraining != constraining)
  {
    v11 = v4;
    v12 = v3;
    self->_topSafeAreaInsetConstraining = constraining;
    if (constraining)
    {
      v8 = &OBJC_IVAR___SupplementalStackViewController__contentViewTopAnchorConstraint;
    }

    else
    {
      v8 = &OBJC_IVAR___SupplementalStackViewController__contentViewTopSafeAreaConstraint;
    }

    if (constraining)
    {
      v9 = &OBJC_IVAR___SupplementalStackViewController__contentViewTopSafeAreaConstraint;
    }

    else
    {
      v9 = &OBJC_IVAR___SupplementalStackViewController__contentViewTopAnchorConstraint;
    }

    [*(&self->super.super.super.isa + *v8) setActive:{0, v11, v12, v5}];
    v10 = *(&self->super.super.super.isa + *v9);

    [v10 setActive:1];
  }
}

- (SupplementalStackViewController)initWithTopSafeAreaInsetConstraining:(BOOL)constraining
{
  v8.receiver = self;
  v8.super_class = SupplementalStackViewController;
  v4 = [(SupplementalStackViewController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = +[NSMutableArray array];
    containeeViewControllerStack = v4->_containeeViewControllerStack;
    v4->_containeeViewControllerStack = v5;

    v4->_topSafeAreaInsetConstraining = constraining;
  }

  return v4;
}

@end