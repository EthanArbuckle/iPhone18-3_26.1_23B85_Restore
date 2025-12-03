@interface _TUIUIKitSearchController
- (void)setActive:(BOOL)active;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation _TUIUIKitSearchController

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if (([(_TUIUIKitSearchController *)self isActive]& 1) == 0 && activeCopy)
  {
    self->_isBeingPresentedProgrammatically = 1;
  }

  v5.receiver = self;
  v5.super_class = _TUIUIKitSearchController;
  [(_TUIUIKitSearchController *)&v5 setActive:activeCopy];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = _TUIUIKitSearchController;
  [(_TUIUIKitSearchController *)&v7 viewIsAppearing:appearing];
  if (self->_isBeingPresentedProgrammatically)
  {
    transitionCoordinator = [(_TUIUIKitSearchController *)self transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [(_TUIUIKitSearchController *)self transitionCoordinator];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_161D14;
      v6[3] = &unk_261E20;
      v6[4] = self;
      [transitionCoordinator2 animateAlongsideTransition:&stru_263018 completion:v6];
    }

    else
    {
      self->_isBeingPresentedProgrammatically = 0;
    }
  }
}

@end