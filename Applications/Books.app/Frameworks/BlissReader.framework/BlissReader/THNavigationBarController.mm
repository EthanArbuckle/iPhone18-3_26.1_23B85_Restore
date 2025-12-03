@interface THNavigationBarController
- (BOOL)isNavigationBarHidden;
- (THNavigationBarController)init;
- (void)buildConstraintsFromParent:(id)parent layoutGuide:(id)guide;
- (void)clearAutohideTimer;
- (void)completeNavigationBarFade;
- (void)dealloc;
- (void)p_autohideTimerAction;
- (void)p_hideNavigationBar;
- (void)p_showNavigationBar;
- (void)resetAutohideTimer;
- (void)setCenterTitle:(id)title;
- (void)setLeftItems:(id)items rightItems:(id)rightItems;
- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated duration:(double)duration completion:(id)completion;
- (void)startNavigationBarFade;
@end

@implementation THNavigationBarController

- (THNavigationBarController)init
{
  v3.receiver = self;
  v3.super_class = THNavigationBarController;
  result = [(THNavigationBarController *)&v3 init];
  if (result)
  {
    result->_showHideDuration = 0.2;
  }

  return result;
}

- (void)dealloc
{
  [(THNavigationBarController *)self setBottomConstraint:0];
  [(THNavigationBarController *)self setTopConstraint:0];
  [(THNavigationBarController *)self setNavigationBar:0];

  [(THNavigationBarController *)self clearAutohideTimer];
  v3.receiver = self;
  v3.super_class = THNavigationBarController;
  [(THNavigationBarController *)&v3 dealloc];
}

- (void)buildConstraintsFromParent:(id)parent layoutGuide:(id)guide
{
  if (!self->mBottomConstraint && !self->mTopConstraint)
  {
    [objc_msgSend(-[BCNavigationBar leftAnchor](self->mNavigationBar "leftAnchor")];
    [objc_msgSend(-[BCNavigationBar rightAnchor](self->mNavigationBar "rightAnchor")];
    -[THNavigationBarController setTopConstraint:](self, "setTopConstraint:", [-[BCNavigationBar topAnchor](self->mNavigationBar "topAnchor")]);
    [(NSLayoutConstraint *)[(THNavigationBarController *)self topConstraint] setActive:1];
    -[THNavigationBarController setBottomConstraint:](self, "setBottomConstraint:", [-[BCNavigationBar bottomAnchor](self->mNavigationBar "bottomAnchor")]);
    bottomConstraint = [(THNavigationBarController *)self bottomConstraint];

    [(NSLayoutConstraint *)bottomConstraint setActive:0];
  }
}

- (void)p_showNavigationBar
{
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setAlpha:1.0];

  [(THNavigationBarController *)self resetAutohideTimer];
}

- (void)p_hideNavigationBar
{
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setAlpha:0.0];

  [(THNavigationBarController *)self clearAutohideTimer];
}

- (BOOL)isNavigationBarHidden
{
  navigationBar = [(THNavigationBarController *)self navigationBar];

  return [(BCNavigationBar *)navigationBar isHidden];
}

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated duration:(double)duration completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  if ([(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] isHidden]!= hidden)
  {
    [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setHidden:0];
    [(THNavigationBarControllerDelegate *)[(THNavigationBarController *)self delegate] willSetNavigationBarHidden:hiddenCopy animated:animatedCopy];
    if (animatedCopy)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_6A1A8;
      v15[3] = &unk_45C038;
      v15[4] = self;
      v16 = hiddenCopy;
      v17 = animatedCopy;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_6A218;
      v12[3] = &unk_45C060;
      v13 = hiddenCopy;
      v12[4] = self;
      v12[5] = completion;
      v14 = animatedCopy;
      [UIView animateWithDuration:v15 animations:v12 completion:duration];
    }

    else
    {
      [(THNavigationBarControllerDelegate *)[(THNavigationBarController *)self delegate] settingNavigationBarHidden:hiddenCopy animated:0];
      if (hiddenCopy)
      {
        [(THNavigationBarController *)self p_hideNavigationBar];
      }

      else
      {
        [(THNavigationBarController *)self p_showNavigationBar];
      }

      [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setHidden:hiddenCopy];
      if (completion)
      {
        (*(completion + 2))(completion);
      }

      delegate = [(THNavigationBarController *)self delegate];

      [(THNavigationBarControllerDelegate *)delegate didSetNavigationBarHidden:hiddenCopy animated:0];
    }
  }
}

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  [(THNavigationBarController *)self showHideDuration];

  [(THNavigationBarController *)self setNavigationBarHidden:hiddenCopy animated:animatedCopy duration:completion completion:?];
}

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  [(THNavigationBarController *)self showHideDuration];

  [(THNavigationBarController *)self setNavigationBarHidden:hiddenCopy animated:animatedCopy duration:?];
}

- (void)startNavigationBarFade
{
  navigationBar = [(THNavigationBarController *)self navigationBar];

  [(BCNavigationBar *)navigationBar setAlpha:0.0];
}

- (void)completeNavigationBarFade
{
  [(THNavigationBarController *)self p_hideNavigationBar];
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setAlpha:1.0];
  navigationBar = [(THNavigationBarController *)self navigationBar];

  [(BCNavigationBar *)navigationBar setHidden:1];
}

- (void)p_autohideTimerAction
{
  if ([(THNavigationBarController *)self delegate]&& [(THNavigationBarControllerDelegate *)[(THNavigationBarController *)self delegate] shouldAutohideNavigationBar])
  {

    [(THNavigationBarController *)self setNavigationBarHidden:1 animated:1];
  }

  else
  {

    [(THNavigationBarController *)self resetAutohideTimer];
  }
}

- (void)clearAutohideTimer
{
  if ([(THNavigationBarController *)self autohideTimer])
  {
    [(NSTimer *)[(THNavigationBarController *)self autohideTimer] invalidate];

    [(THNavigationBarController *)self setAutohideTimer:0];
  }
}

- (void)resetAutohideTimer
{
  [(THNavigationBarController *)self clearAutohideTimer];
  [(THNavigationBarController *)self autohideTimeout];
  if (v3 > 0.0)
  {
    [(THNavigationBarController *)self autohideTimeout];
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_autohideTimerAction" selector:0 userInfo:0 repeats:?];

    [(THNavigationBarController *)self setAutohideTimer:v4];
  }
}

- (void)setCenterTitle:(id)title
{
  shouldShowChapterTitle = [(THNavigationBarControllerDelegate *)[(THNavigationBarController *)self delegate] shouldShowChapterTitle];
  navigationBar = [(THNavigationBarController *)self navigationBar];
  if (shouldShowChapterTitle)
  {
    titleCopy = title;
  }

  else
  {
    titleCopy = 0;
  }

  [(BCNavigationBar *)navigationBar setTitle:titleCopy];
}

- (void)setLeftItems:(id)items rightItems:(id)rightItems
{
  isHidden = [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] isHidden];
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setHidden:0];
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setLeftItems:items];
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setRightItems:rightItems];
  navigationBar = [(THNavigationBarController *)self navigationBar];

  [(BCNavigationBar *)navigationBar setHidden:isHidden];
}

@end