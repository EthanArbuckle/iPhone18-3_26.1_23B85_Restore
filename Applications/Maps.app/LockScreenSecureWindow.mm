@interface LockScreenSecureWindow
- (LockScreenSecureWindow)initWithCoder:(id)coder;
- (LockScreenSecureWindow)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)registerEventTap:(id)tap;
- (void)sendEvent:(id)event;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation LockScreenSecureWindow

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = LockScreenSecureWindow;
  changeCopy = change;
  [(LockScreenSecureWindow *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(LockScreenSecureWindow *)self traitCollection];
  v6 = sub_100017FE8(changeCopy, traitCollection);

  if (v6)
  {
    traitCollection2 = [(LockScreenSecureWindow *)self traitCollection];
    isLuminanceReduced = [traitCollection2 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1008B7590;
    v9[3] = &unk_101661AE0;
    v10 = isLuminanceReduced;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:isLuminanceReduced animations:v9];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (MNNavigationServiceStateIsNavigating())
  {
    [(LockScreenSecureWindow *)self setHidden:0];

    [(LockScreenSecureWindow *)self setUserInteractionEnabled:1];
  }
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if ((MNNavigationServiceStateIsNavigating() & 1) == 0)
  {
    [(LockScreenSecureWindow *)self setUserInteractionEnabled:0];
    v6 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008B76B0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  if (self->_hasEventTaps)
  {
    if ([(NSHashTable *)self->_eventTaps count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = self->_eventTaps;
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v11 + 1) + 8 * v9) sendEvent:eventCopy];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }

    else
    {
      self->_hasEventTaps = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = LockScreenSecureWindow;
  [(LockScreenSecureWindow *)&v10 sendEvent:eventCopy];
}

- (void)registerEventTap:(id)tap
{
  tapCopy = tap;
  eventTaps = self->_eventTaps;
  v8 = tapCopy;
  if (!eventTaps)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_eventTaps;
    self->_eventTaps = v6;

    tapCopy = v8;
    eventTaps = self->_eventTaps;
  }

  [(NSHashTable *)eventTaps addObject:tapCopy];
  self->_hasEventTaps = 1;
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v8 = "[LockScreenSecureWindow setOverrideUserInterfaceStyle:]";
    v9 = 2050;
    styleCopy = style;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}ld", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = LockScreenSecureWindow;
  [(LockScreenSecureWindow *)&v6 setOverrideUserInterfaceStyle:style];
}

- (void)_commonInit
{
  v3 = +[MNNavigationService sharedService];
  -[LockScreenSecureWindow setHidden:](self, "setHidden:", [v3 isInNavigatingState] ^ 1);

  [(LockScreenSecureWindow *)self setUserInteractionEnabled:[(LockScreenSecureWindow *)self isHidden]^ 1];
  v4 = +[MNNavigationService sharedService];
  [v4 registerObserver:self];
}

- (LockScreenSecureWindow)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LockScreenSecureWindow;
  v3 = [(LockScreenSecureWindow *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LockScreenSecureWindow *)v3 _commonInit];
  }

  return v4;
}

- (LockScreenSecureWindow)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LockScreenSecureWindow;
  v3 = [(LockScreenSecureWindow *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(LockScreenSecureWindow *)v3 _commonInit];
  }

  return v4;
}

@end