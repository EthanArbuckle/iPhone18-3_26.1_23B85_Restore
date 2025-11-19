@interface LockScreenSecureWindow
- (LockScreenSecureWindow)initWithCoder:(id)a3;
- (LockScreenSecureWindow)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)registerEventTap:(id)a3;
- (void)sendEvent:(id)a3;
- (void)setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LockScreenSecureWindow

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = LockScreenSecureWindow;
  v4 = a3;
  [(LockScreenSecureWindow *)&v11 traitCollectionDidChange:v4];
  v5 = [(LockScreenSecureWindow *)self traitCollection];
  v6 = sub_100017FE8(v4, v5);

  if (v6)
  {
    v7 = [(LockScreenSecureWindow *)self traitCollection];
    v8 = [v7 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1008B7590;
    v9[3] = &unk_101661AE0;
    v10 = v8;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:v8 animations:v9];
  }
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (MNNavigationServiceStateIsNavigating())
  {
    [(LockScreenSecureWindow *)self setHidden:0];

    [(LockScreenSecureWindow *)self setUserInteractionEnabled:1];
  }
}

- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
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

- (void)sendEvent:(id)a3
{
  v4 = a3;
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

            [*(*(&v11 + 1) + 8 * v9) sendEvent:v4];
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
  [(LockScreenSecureWindow *)&v10 sendEvent:v4];
}

- (void)registerEventTap:(id)a3
{
  v4 = a3;
  eventTaps = self->_eventTaps;
  v8 = v4;
  if (!eventTaps)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_eventTaps;
    self->_eventTaps = v6;

    v4 = v8;
    eventTaps = self->_eventTaps;
  }

  [(NSHashTable *)eventTaps addObject:v4];
  self->_hasEventTaps = 1;
}

- (void)setOverrideUserInterfaceStyle:(int64_t)a3
{
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v8 = "[LockScreenSecureWindow setOverrideUserInterfaceStyle:]";
    v9 = 2050;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}ld", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = LockScreenSecureWindow;
  [(LockScreenSecureWindow *)&v6 setOverrideUserInterfaceStyle:a3];
}

- (void)_commonInit
{
  v3 = +[MNNavigationService sharedService];
  -[LockScreenSecureWindow setHidden:](self, "setHidden:", [v3 isInNavigatingState] ^ 1);

  [(LockScreenSecureWindow *)self setUserInteractionEnabled:[(LockScreenSecureWindow *)self isHidden]^ 1];
  v4 = +[MNNavigationService sharedService];
  [v4 registerObserver:self];
}

- (LockScreenSecureWindow)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LockScreenSecureWindow;
  v3 = [(LockScreenSecureWindow *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(LockScreenSecureWindow *)v3 _commonInit];
  }

  return v4;
}

- (LockScreenSecureWindow)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LockScreenSecureWindow;
  v3 = [(LockScreenSecureWindow *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(LockScreenSecureWindow *)v3 _commonInit];
  }

  return v4;
}

@end