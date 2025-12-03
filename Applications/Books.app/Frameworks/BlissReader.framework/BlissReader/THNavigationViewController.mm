@interface THNavigationViewController
- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item;
- (BOOL)navigationBar:(id)bar shouldPushItem:(id)item;
- (THNavigationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (THNavigationViewController)initWithRootViewController:(id)controller;
- (THNavigationViewController)viewControllerWithNavigationItem:(id)item;
- (UIViewController)topViewController;
- (id)p_popViewControllerAnimated:(BOOL)animated;
- (id)popToRootViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (id)popToViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)dealloc;
- (void)p_animateFromVC:(id)c toVC:(id)vC transition:(int)transition completion:(id)completion;
- (void)p_pushViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)releaseViews;
- (void)viewDidLoad;
@end

@implementation THNavigationViewController

- (THNavigationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = THBundle();
  v9.receiver = self;
  v9.super_class = THNavigationViewController;
  v7 = [(THNavigationViewController *)&v9 initWithNibName:name bundle:v6];
  if (v7)
  {
    v7->mViewControllers = objc_alloc_init(NSMutableArray);
  }

  return v7;
}

- (THNavigationViewController)initWithRootViewController:(id)controller
{
  v4 = [(THNavigationViewController *)self initWithNibName:0 bundle:0];
  v5 = v4;
  if (controller && v4)
  {
    [(THNavigationViewController *)v4 pushViewController:controller animated:0];
  }

  return v5;
}

- (void)dealloc
{
  [(THNavigationViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = THNavigationViewController;
  [(THNavigationViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  [(UINavigationBar *)[(THNavigationViewController *)self navigationBar] setItems:0 animated:0];
  [(UINavigationBar *)[(THNavigationViewController *)self navigationBar] setDelegate:self];
  v3.receiver = self;
  v3.super_class = THNavigationViewController;
  [(THNavigationViewController *)&v3 viewDidLoad];
}

- (void)releaseViews
{
  [(THNavigationViewController *)self setContentContainerView:0];
  [(THNavigationViewController *)self setFooterView:0];

  [(THNavigationViewController *)self setNavigationBar:0];
}

- (UIViewController)topViewController
{
  result = [(NSMutableArray *)self->mViewControllers count];
  if (result)
  {
    v4 = &result[-1].super.super.isa + 7;
    mViewControllers = self->mViewControllers;

    return [(NSMutableArray *)mViewControllers objectAtIndex:v4];
  }

  return result;
}

- (void)p_animateFromVC:(id)c toVC:(id)vC transition:(int)transition completion:(id)completion
{
  if (c && ![objc_msgSend(c "view")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([objc_msgSend(vC "view")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THNavigationViewController *)self addChildViewController:vC];
  [c willMoveToParentViewController:0];
  [(UIView *)[(THNavigationViewController *)self contentContainerView] frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [objc_msgSend(vC "view")];
  v21 = v20;
  v34 = v19;
  if (transition == 2)
  {
    v61.origin.x = v12;
    v61.origin.y = v14;
    v61.size.width = v16;
    v61.size.height = v18;
    Width = CGRectGetWidth(v61);
  }

  else
  {
    Width = v19;
    if (transition == 1)
    {
      v60.origin.x = v12;
      v60.origin.y = v14;
      v60.size.width = v16;
      v60.size.height = v18;
      Width = -CGRectGetWidth(v60);
    }
  }

  v33 = v21;
  [objc_msgSend(vC "view")];
  [objc_msgSend(c "view")];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if (transition == 2)
  {
    v63.origin.x = v12;
    v63.origin.y = v14;
    v63.size.width = v16;
    v63.size.height = v18;
    v23 = -CGRectGetWidth(v63);
  }

  else if (transition == 1)
  {
    v62.origin.x = v12;
    v62.origin.y = v14;
    v62.size.width = v16;
    v62.size.height = v18;
    v23 = CGRectGetWidth(v62);
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v31 = sub_140C00;
  v47 = sub_140C00;
  v48 = &unk_45DE88;
  vCCopy = vC;
  selfCopy = self;
  v52 = v34;
  v53 = v33;
  v54 = v16;
  v55 = v18;
  cCopy = c;
  v56 = v23;
  v57 = v26;
  v58 = v28;
  v59 = v30;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v36 = sub_140CB4;
  v37 = &unk_45DEB0;
  v42 = v24;
  v43 = v26;
  v44 = v28;
  v45 = v30;
  cCopy2 = c;
  vCCopy2 = vC;
  selfCopy2 = self;
  completionCopy = completion;
  if (!c || !vC || !transition)
  {
    goto LABEL_19;
  }

  parentViewController = [c parentViewController];
  if (parentViewController != [vC parentViewController])
  {
    v31 = v47;
LABEL_19:
    v31(v46);
    (v36)(v35, 1);
    return;
  }

  [(THNavigationViewController *)self transitionFromViewController:c toViewController:vC duration:0 options:v46 animations:v35 completion:0.3];
}

- (void)p_pushViewController:(id)controller animated:(BOOL)animated
{
  if (controller && (v5 = animated, [(NSMutableArray *)self->mViewControllers indexOfObjectIdenticalTo:?]== 0x7FFFFFFFFFFFFFFFLL))
  {
    topViewController = [(THNavigationViewController *)self topViewController];
    [(NSMutableArray *)self->mViewControllers addObject:controller];
    if ((*&self->_flags & 3) == 1)
    {
      -[UINavigationBar pushNavigationItem:animated:](-[THNavigationViewController navigationBar](self, "navigationBar"), "pushNavigationItem:animated:", [controller navigationItem], v5);
    }

    if (v5)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    [(THNavigationViewController *)self p_animateFromVC:topViewController toVC:controller transition:v8 completion:0];
  }

  else
  {
    *&self->_flags &= 0xFCu;
  }
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  if (controller)
  {
    if ((*&self->_flags & 3) == 0)
    {
      animatedCopy = animated;
      if ([(NSMutableArray *)self->mViewControllers indexOfObjectIdenticalTo:?]== 0x7FFFFFFFFFFFFFFFLL)
      {
        *&self->_flags = *&self->_flags & 0xFC | 1;

        [(THNavigationViewController *)self p_pushViewController:controller animated:animatedCopy];
      }
    }
  }
}

- (id)p_popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [(NSMutableArray *)self->mViewControllers count];
  if (v5)
  {
    v6 = v5 - 1;
    v7 = [(NSMutableArray *)self->mViewControllers objectAtIndex:v5 - 1];
    [(NSMutableArray *)self->mViewControllers removeObjectAtIndex:v6];
    topViewController = [(THNavigationViewController *)self topViewController];
    if ((*&self->_flags & 3) == 1)
    {
      [(UINavigationBar *)[(THNavigationViewController *)self navigationBar] popNavigationItemAnimated:animatedCopy];
    }

    [(THNavigationViewController *)self p_animateFromVC:v7 toVC:topViewController transition:animatedCopy completion:0];
  }

  else
  {
    v7 = 0;
    *&self->_flags &= 0xFCu;
  }

  return v7;
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [(NSMutableArray *)self->mViewControllers count];
  if ((*&self->_flags & 3) == 0 && v5 != 0)
  {
    *&self->_flags |= 1u;
    [(THNavigationViewController *)self p_popViewControllerAnimated:animatedCopy];
  }

  return 0;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v9 = [(NSMutableArray *)self->mViewControllers count];
  v10 = [(NSMutableArray *)self->mViewControllers indexOfObjectIdenticalTo:controller];
  v11 = (*&self->_flags & 3) != 0 || v10 == 0x7FFFFFFFFFFFFFFFLL;
  v12 = v10 + 1;
  if (!v11 && v9 > v12)
  {
    *&self->_flags |= 1u;
    topViewController = [(THNavigationViewController *)self topViewController];
    v15 = (v9 - v12);
    v14 = [(NSMutableArray *)self->mViewControllers subarrayWithRange:v12, v9 - v12];
    [(NSMutableArray *)self->mViewControllers removeObjectsInRange:v12, v15];
    v16 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)self->mViewControllers count]];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    mViewControllers = self->mViewControllers;
    v18 = [(NSMutableArray *)mViewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(mViewControllers);
          }

          -[NSMutableArray addObject:](v16, "addObject:", [*(*(&v24 + 1) + 8 * i) navigationItem]);
        }

        v19 = [(NSMutableArray *)mViewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }

    [(UINavigationBar *)[(THNavigationViewController *)self navigationBar] setItems:v16 animated:animatedCopy];
    [(THNavigationViewController *)self p_animateFromVC:topViewController toVC:controller transition:animatedCopy completion:completion];
  }

  else
  {
    if (completion)
    {
      (*(completion + 2))(completion, 1);
    }

    return 0;
  }

  return v14;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if ([(NSMutableArray *)self->mViewControllers count])
  {
    v7 = [(NSMutableArray *)self->mViewControllers objectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  return [(THNavigationViewController *)self popToViewController:v7 animated:animatedCopy completion:completion];
}

- (THNavigationViewController)viewControllerWithNavigationItem:(id)item
{
  v5 = [(NSMutableArray *)self->mViewControllers count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = [(NSMutableArray *)self->mViewControllers objectAtIndex:v7];
    if ([(THNavigationViewController *)v8 navigationItem]== item)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return v8;
}

- (BOOL)navigationBar:(id)bar shouldPushItem:(id)item
{
  if ((*&self->_flags & 3) != 0)
  {
    return 1;
  }

  v6 = [(THNavigationViewController *)self viewControllerWithNavigationItem:item];
  if (!v6)
  {
    return 0;
  }

  *&self->_flags = *&self->_flags & 0xFC | 2;
  v4 = 1;
  [(THNavigationViewController *)self p_pushViewController:v6 animated:1];
  return v4;
}

- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item
{
  if ((*&self->_flags & 3) != 0)
  {
    return 1;
  }

  if (![(THNavigationViewController *)self viewControllerWithNavigationItem:item])
  {
    return 0;
  }

  *&self->_flags = *&self->_flags & 0xFC | 2;
  v4 = 1;
  [(THNavigationViewController *)self p_popViewControllerAnimated:1];
  return v4;
}

@end