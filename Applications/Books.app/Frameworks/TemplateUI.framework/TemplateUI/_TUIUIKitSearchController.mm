@interface _TUIUIKitSearchController
- (void)setActive:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation _TUIUIKitSearchController

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  if (([(_TUIUIKitSearchController *)self isActive]& 1) == 0 && v3)
  {
    self->_isBeingPresentedProgrammatically = 1;
  }

  v5.receiver = self;
  v5.super_class = _TUIUIKitSearchController;
  [(_TUIUIKitSearchController *)&v5 setActive:v3];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _TUIUIKitSearchController;
  [(_TUIUIKitSearchController *)&v7 viewIsAppearing:a3];
  if (self->_isBeingPresentedProgrammatically)
  {
    v4 = [(_TUIUIKitSearchController *)self transitionCoordinator];

    if (v4)
    {
      v5 = [(_TUIUIKitSearchController *)self transitionCoordinator];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_161D14;
      v6[3] = &unk_261E20;
      v6[4] = self;
      [v5 animateAlongsideTransition:&stru_263018 completion:v6];
    }

    else
    {
      self->_isBeingPresentedProgrammatically = 0;
    }
  }
}

@end