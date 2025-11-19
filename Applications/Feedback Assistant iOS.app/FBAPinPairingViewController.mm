@interface FBAPinPairingViewController
- (id)platform;
- (void)awakeFromNib;
- (void)didCancel;
- (void)showPINEntryUIWithFlags:(unsigned int)a3;
- (void)showPINEntryUIWithFlags:(unsigned int)a3 inThrottleSeconds:(float)a4;
- (void)tryPin:(id)a3;
@end

@implementation FBAPinPairingViewController

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = FBAPinPairingViewController;
  [(FBAPinPairingViewController *)&v5 awakeFromNib];
  [(FBAPinPairingViewController *)self setContext:0];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(FBAPinPairingViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)didCancel
{
  v4 = +[NSNotificationCenter defaultCenter];
  v3 = [(FBAPinPairingViewController *)self device];
  [v4 postNotificationName:@"FBAPinPairingViewControllerDidCancel" object:v3];
}

- (void)tryPin:(id)a3
{
  v4 = a3;
  v5 = +[FBALog ded];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100093F48(v5);
  }

  v6 = +[FBKDeviceManager sharedInstance];
  v7 = [(FBAPinPairingViewController *)self device];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100030768;
  v8[3] = &unk_1000DF760;
  v8[4] = self;
  [v6 tryPairingDevice:v7 withPin:v4 completion:v8];
}

- (void)showPINEntryUIWithFlags:(unsigned int)a3
{
  if (a3)
  {
    ++self->_failCount;
    [(FBAPINEntryView *)self->_pinEntryView shake];
    if (self->_failCount < 2)
    {
      goto LABEL_10;
    }

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"PAIR_RETRY_PIN" value:&stru_1000E2210 table:0];
    p_infoLabel = &self->_infoLabel;
    [(UILabel *)self->_infoLabel setText:v13];

    v11 = +[UIColor redColor];
  }

  else
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_10;
    }

    v4 = [(FBAPinPairingViewController *)self platform];
    v5 = [v4 isEqualToString:DEDDevicePlatformTV];

    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"PAIR_ENTER_PIN_TV";
    }

    else
    {
      v8 = @"PAIR_ENTER_PIN";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_1000E2210 table:0];
    p_infoLabel = &self->_infoLabel;
    [(UILabel *)self->_infoLabel setText:v9];

    v11 = +[UIColor labelColor];
  }

  v14 = v11;
  [(UILabel *)*p_infoLabel setTextColor:v11];

LABEL_10:
  pinEntryView = self->_pinEntryView;

  [(FBAPINEntryView *)pinEntryView setText:&stru_1000E2210];
}

- (void)showPINEntryUIWithFlags:(unsigned int)a3 inThrottleSeconds:(float)a4
{
  v6 = dispatch_time(0, (a4 * 1000000000.0));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030A14;
  v7[3] = &unk_1000DF788;
  v7[4] = self;
  v8 = a3;
  dispatch_after(v6, &_dispatch_main_q, v7);
}

- (id)platform
{
  v2 = [(FBAPinPairingViewController *)self device];
  v3 = [v2 platform];

  v4 = DEDDevicePlatformTV;
  if (([v3 isEqualToString:DEDDevicePlatformTV] & 1) == 0)
  {
    v5 = +[FBALog ded];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pairing to device with usupported/unknown platform.", v8, 2u);
    }
  }

  v6 = v4;

  return v4;
}

@end