@interface THNavigationBarController
- (BOOL)isNavigationBarHidden;
- (THNavigationBarController)init;
- (void)buildConstraintsFromParent:(id)a3 layoutGuide:(id)a4;
- (void)clearAutohideTimer;
- (void)completeNavigationBarFade;
- (void)dealloc;
- (void)p_autohideTimerAction;
- (void)p_hideNavigationBar;
- (void)p_showNavigationBar;
- (void)resetAutohideTimer;
- (void)setCenterTitle:(id)a3;
- (void)setLeftItems:(id)a3 rightItems:(id)a4;
- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4 duration:(double)a5 completion:(id)a6;
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

- (void)buildConstraintsFromParent:(id)a3 layoutGuide:(id)a4
{
  if (!self->mBottomConstraint && !self->mTopConstraint)
  {
    [objc_msgSend(-[BCNavigationBar leftAnchor](self->mNavigationBar "leftAnchor")];
    [objc_msgSend(-[BCNavigationBar rightAnchor](self->mNavigationBar "rightAnchor")];
    -[THNavigationBarController setTopConstraint:](self, "setTopConstraint:", [-[BCNavigationBar topAnchor](self->mNavigationBar "topAnchor")]);
    [(NSLayoutConstraint *)[(THNavigationBarController *)self topConstraint] setActive:1];
    -[THNavigationBarController setBottomConstraint:](self, "setBottomConstraint:", [-[BCNavigationBar bottomAnchor](self->mNavigationBar "bottomAnchor")]);
    v7 = [(THNavigationBarController *)self bottomConstraint];

    [(NSLayoutConstraint *)v7 setActive:0];
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
  v2 = [(THNavigationBarController *)self navigationBar];

  return [(BCNavigationBar *)v2 isHidden];
}

- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4 duration:(double)a5 completion:(id)a6
{
  v8 = a4;
  v9 = a3;
  if ([(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] isHidden]!= a3)
  {
    [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setHidden:0];
    [(THNavigationBarControllerDelegate *)[(THNavigationBarController *)self delegate] willSetNavigationBarHidden:v9 animated:v8];
    if (v8)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_6A1A8;
      v15[3] = &unk_45C038;
      v15[4] = self;
      v16 = v9;
      v17 = v8;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_6A218;
      v12[3] = &unk_45C060;
      v13 = v9;
      v12[4] = self;
      v12[5] = a6;
      v14 = v8;
      [UIView animateWithDuration:v15 animations:v12 completion:a5];
    }

    else
    {
      [(THNavigationBarControllerDelegate *)[(THNavigationBarController *)self delegate] settingNavigationBarHidden:v9 animated:0];
      if (v9)
      {
        [(THNavigationBarController *)self p_hideNavigationBar];
      }

      else
      {
        [(THNavigationBarController *)self p_showNavigationBar];
      }

      [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setHidden:v9];
      if (a6)
      {
        (*(a6 + 2))(a6);
      }

      v11 = [(THNavigationBarController *)self delegate];

      [(THNavigationBarControllerDelegate *)v11 didSetNavigationBarHidden:v9 animated:0];
    }
  }
}

- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  [(THNavigationBarController *)self showHideDuration];

  [(THNavigationBarController *)self setNavigationBarHidden:v7 animated:v6 duration:a5 completion:?];
}

- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(THNavigationBarController *)self showHideDuration];

  [(THNavigationBarController *)self setNavigationBarHidden:v5 animated:v4 duration:?];
}

- (void)startNavigationBarFade
{
  v2 = [(THNavigationBarController *)self navigationBar];

  [(BCNavigationBar *)v2 setAlpha:0.0];
}

- (void)completeNavigationBarFade
{
  [(THNavigationBarController *)self p_hideNavigationBar];
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setAlpha:1.0];
  v3 = [(THNavigationBarController *)self navigationBar];

  [(BCNavigationBar *)v3 setHidden:1];
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

- (void)setCenterTitle:(id)a3
{
  v5 = [(THNavigationBarControllerDelegate *)[(THNavigationBarController *)self delegate] shouldShowChapterTitle];
  v6 = [(THNavigationBarController *)self navigationBar];
  if (v5)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  [(BCNavigationBar *)v6 setTitle:v7];
}

- (void)setLeftItems:(id)a3 rightItems:(id)a4
{
  v7 = [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] isHidden];
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setHidden:0];
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setLeftItems:a3];
  [(BCNavigationBar *)[(THNavigationBarController *)self navigationBar] setRightItems:a4];
  v8 = [(THNavigationBarController *)self navigationBar];

  [(BCNavigationBar *)v8 setHidden:v7];
}

@end