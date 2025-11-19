@interface SupplementalStackViewController
- (SupplementalStackViewController)initWithTopSafeAreaInsetConstraining:(BOOL)a3;
- (id)preferredFocusEnvironments;
- (void)_addContainee:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_removeContainee:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)popContainee:(BOOL)a3 completion:(id)a4;
- (void)pushContainee:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setContainees:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setTopSafeAreaInsetConstraining:(BOOL)a3;
@end

@implementation SupplementalStackViewController

- (id)preferredFocusEnvironments
{
  v2 = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)setContainees:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  containeeViewControllerStack = self->_containeeViewControllerStack;
  v11 = v8;
  v12 = containeeViewControllerStack;
  if (v11 | v12 && (v13 = v12, v14 = [v11 isEqual:v12], v13, v11, !v14))
  {
    v15 = dispatch_group_create();
    v16 = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
    if (v16)
    {
      dispatch_group_enter(v15);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100A115C0;
      v24[3] = &unk_101661738;
      v25 = v15;
      [(SupplementalStackViewController *)self _removeContainee:v16 animated:v6 completion:v24];
    }

    v17 = [NSMutableArray arrayWithArray:v11];
    v18 = self->_containeeViewControllerStack;
    self->_containeeViewControllerStack = v17;

    v19 = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
    if (v19)
    {
      dispatch_group_enter(v15);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100A115C8;
      v22[3] = &unk_101661738;
      v23 = v15;
      [(SupplementalStackViewController *)self _addContainee:v19 animated:v6 completion:v22];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A115D0;
    block[3] = &unk_101661760;
    v21 = v9;
    dispatch_group_notify(v15, &_dispatch_main_q, block);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }
}

- (void)popContainee:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = dispatch_group_create();
  v8 = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
  if (v8)
  {
    dispatch_group_enter(v7);
    [(NSMutableArray *)self->_containeeViewControllerStack removeObjectAtIndex:[(NSMutableArray *)self->_containeeViewControllerStack count]- 1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100A117F0;
    v15[3] = &unk_101661738;
    v9 = v7;
    v16 = v9;
    [(SupplementalStackViewController *)self _removeContainee:v8 animated:v4 completion:v15];
    v10 = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
    if (v10)
    {
      dispatch_group_enter(v9);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100A117F8;
      v13[3] = &unk_101661738;
      v14 = v9;
      [(SupplementalStackViewController *)self _addContainee:v10 animated:v4 completion:v13];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A11800;
    block[3] = &unk_101661760;
    v12 = v6;
    dispatch_group_notify(v9, &_dispatch_main_q, block);
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 1);
  }
}

- (void)pushContainee:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (([(NSMutableArray *)self->_containeeViewControllerStack containsObject:v8]& 1) == 0)
  {
    v10 = dispatch_group_create();
    v11 = [(NSMutableArray *)self->_containeeViewControllerStack lastObject];
    if (v11)
    {
      dispatch_group_enter(v10);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100A11A0C;
      v17[3] = &unk_101661738;
      v18 = v10;
      [(SupplementalStackViewController *)self _removeContainee:v11 animated:v6 completion:v17];
    }

    dispatch_group_enter(v10);
    [(NSMutableArray *)self->_containeeViewControllerStack addObject:v8];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100A11A14;
    v15[3] = &unk_101661738;
    v16 = v10;
    v12 = v10;
    [(SupplementalStackViewController *)self _addContainee:v8 animated:v6 completion:v15];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A11A1C;
    block[3] = &unk_101661760;
    v14 = v9;
    dispatch_group_notify(v12, &_dispatch_main_q, block);
  }
}

- (void)_removeContainee:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v12 = a5;
  contentViewTopAnchorConstraint = self->_contentViewTopAnchorConstraint;
  self->_contentViewTopAnchorConstraint = 0;
  v8 = a3;

  contentViewTopSafeAreaConstraint = self->_contentViewTopSafeAreaConstraint;
  self->_contentViewTopSafeAreaConstraint = 0;

  [v8 willMoveToParentViewController:0];
  v10 = [v8 view];
  [v10 removeFromSuperview];

  [v8 removeFromParentViewController];
  v11 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, 1);
    v11 = v12;
  }
}

- (void)_addContainee:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v39 = a5;
  v38 = a3;
  v7 = [v38 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SupplementalStackViewController *)self addChildViewController:v38];
  v8 = [(SupplementalStackViewController *)self view];
  [v8 addSubview:v7];

  v36 = [NSMutableArray alloc];
  v34 = [v7 leadingAnchor];
  v35 = [(SupplementalStackViewController *)self view];
  v33 = [v35 safeAreaLayoutGuide];
  v32 = [v33 leadingAnchor];
  v9 = [v34 constraintEqualToAnchor:v32];
  v30 = [v7 bottomAnchor];
  v31 = [(SupplementalStackViewController *)self view];
  v29 = [v31 safeAreaLayoutGuide];
  v10 = [v29 bottomAnchor];
  v11 = [v30 constraintEqualToAnchor:v10];
  v12 = [v7 trailingAnchor];
  v13 = [(SupplementalStackViewController *)self view];
  v14 = [v13 safeAreaLayoutGuide];
  v15 = [v14 trailingAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
  v37 = [v36 initWithObjects:{v9, v11, v16, 0}];

  v17 = [v7 topAnchor];
  v18 = [(SupplementalStackViewController *)self view];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];
  contentViewTopSafeAreaConstraint = self->_contentViewTopSafeAreaConstraint;
  self->_contentViewTopSafeAreaConstraint = v21;

  v23 = [v7 topAnchor];
  v24 = [(SupplementalStackViewController *)self view];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
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
  [v38 didMoveToParentViewController:self];

  if (v39)
  {
    v39[2](v39, 1);
  }
}

- (void)setTopSafeAreaInsetConstraining:(BOOL)a3
{
  if (self->_topSafeAreaInsetConstraining != a3)
  {
    v11 = v4;
    v12 = v3;
    self->_topSafeAreaInsetConstraining = a3;
    if (a3)
    {
      v8 = &OBJC_IVAR___SupplementalStackViewController__contentViewTopAnchorConstraint;
    }

    else
    {
      v8 = &OBJC_IVAR___SupplementalStackViewController__contentViewTopSafeAreaConstraint;
    }

    if (a3)
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

- (SupplementalStackViewController)initWithTopSafeAreaInsetConstraining:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SupplementalStackViewController;
  v4 = [(SupplementalStackViewController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = +[NSMutableArray array];
    containeeViewControllerStack = v4->_containeeViewControllerStack;
    v4->_containeeViewControllerStack = v5;

    v4->_topSafeAreaInsetConstraining = a3;
  }

  return v4;
}

@end