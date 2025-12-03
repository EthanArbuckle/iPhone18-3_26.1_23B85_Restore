@interface CBWiFiTableViewCell
- (CBWiFiTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)hideRSSIStrength:(BOOL)strength;
- (void)layoutSubviews;
- (void)showPasswordLock:(BOOL)lock;
@end

@implementation CBWiFiTableViewCell

- (CBWiFiTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v27.receiver = self;
  v27.super_class = CBWiFiTableViewCell;
  v4 = [(CBWiFiTableViewCell *)&v27 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_networkStateChanged = 1;
    v6 = [[UIStackView alloc] initWithFrame:{0.0, 0.0, 42.0, 24.0}];
    accessoryIcons = v5->_accessoryIcons;
    v5->_accessoryIcons = v6;

    [(UIStackView *)v5->_accessoryIcons setAlignment:3];
    [(UIStackView *)v5->_accessoryIcons setDistribution:0];
    [(UIStackView *)v5->_accessoryIcons setSpacing:8.0];
    v5->_showLockIcon = 0;
    v8 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v12 = [v8 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    lockView = v5->_lockView;
    v5->_lockView = v12;

    v14 = [UIImage imageNamed:@"Lock"];
    [(UIImageView *)v5->_lockView setImage:v14];

    [(UIImageView *)v5->_lockView setContentMode:6];
    v15 = [[UIView alloc] initWithFrame:{0.0, 0.0, 8.0, 11.0}];
    hiddenLockView = v5->_hiddenLockView;
    v5->_hiddenLockView = v15;

    v17 = [UIImage imageNamed:@"WiFiBars0"];
    v18 = [UIImage imageNamed:@"WiFiBars1"];
    v19 = [UIImage imageNamed:@"WiFiBars2"];
    v20 = [UIImage imageNamed:@"WiFiBars3"];
    v21 = [NSArray arrayWithObjects:v17, v18, v19, v20, 0];
    rssiBarImages = v5->_rssiBarImages;
    v5->_rssiBarImages = v21;

    v23 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    rssiBarsView = v5->_rssiBarsView;
    v5->_rssiBarsView = v23;

    [(UIImageView *)v5->_rssiBarsView setContentMode:6];
    v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, 42.0, 24.0}];
    [v25 addSubview:v5->_accessoryIcons];
    [(CBWiFiTableViewCell *)v5 setAccessoryView:v25];
  }

  return v5;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CBWiFiTableViewCell;
  [(CBWiFiTableViewCell *)&v19 layoutSubviews];
  if ([(CBWiFiTableViewCell *)self networkStateChanged])
  {
    [(CBWiFiTableViewCell *)self setNetworkStateChanged:0];
    rssiBarsView = [(CBWiFiTableViewCell *)self rssiBarsView];
    isHidden = [rssiBarsView isHidden];

    if ((isHidden & 1) == 0)
    {
      [(CBWiFiTableViewCell *)self networkScaledRSSIStrength];
      v5 = WFSignalBarsFromScaledRSSI();
      rssiBarImages = [(CBWiFiTableViewCell *)self rssiBarImages];
      v7 = [rssiBarImages objectAtIndexedSubscript:v5];
      rssiBarsView2 = [(CBWiFiTableViewCell *)self rssiBarsView];
      [rssiBarsView2 setImage:v7];

      rssiBarsView3 = [(CBWiFiTableViewCell *)self rssiBarsView];
      [rssiBarsView3 sizeToFit];
    }

    rssiBarsView4 = [(CBWiFiTableViewCell *)self rssiBarsView];
    [rssiBarsView4 removeFromSuperview];

    if ([(CBWiFiTableViewCell *)self showLockIcon])
    {
      hiddenLockView = [(CBWiFiTableViewCell *)self hiddenLockView];
      [hiddenLockView removeFromSuperview];

      accessoryIcons = [(CBWiFiTableViewCell *)self accessoryIcons];
      lockView = [(CBWiFiTableViewCell *)self lockView];
      [accessoryIcons addArrangedSubview:lockView];

      lockView2 = [(CBWiFiTableViewCell *)self lockView];
      [lockView2 sizeToFit];
    }

    else
    {
      lockView3 = [(CBWiFiTableViewCell *)self lockView];
      [lockView3 removeFromSuperview];

      lockView2 = [(CBWiFiTableViewCell *)self accessoryIcons];
      hiddenLockView2 = [(CBWiFiTableViewCell *)self hiddenLockView];
      [lockView2 addArrangedSubview:hiddenLockView2];
    }

    accessoryIcons2 = [(CBWiFiTableViewCell *)self accessoryIcons];
    rssiBarsView5 = [(CBWiFiTableViewCell *)self rssiBarsView];
    [accessoryIcons2 addArrangedSubview:rssiBarsView5];
  }
}

- (void)dealloc
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc was called by table view cell", buf, 2u);
  }

  [(UIImageView *)self->_lockView removeFromSuperview];
  [(UIImageView *)self->_rssiBarsView removeFromSuperview];
  v4.receiver = self;
  v4.super_class = CBWiFiTableViewCell;
  [(CBWiFiTableViewCell *)&v4 dealloc];
}

- (void)showPasswordLock:(BOOL)lock
{
  lockCopy = lock;
  if ([(CBWiFiTableViewCell *)self showLockIcon]!= lock)
  {
    [(CBWiFiTableViewCell *)self setShowLockIcon:lockCopy];

    [(CBWiFiTableViewCell *)self setNetworkStateChanged:1];
  }
}

- (void)hideRSSIStrength:(BOOL)strength
{
  strengthCopy = strength;
  rssiBarsView = [(CBWiFiTableViewCell *)self rssiBarsView];
  isHidden = [rssiBarsView isHidden];

  if (isHidden != strengthCopy)
  {
    rssiBarsView2 = [(CBWiFiTableViewCell *)self rssiBarsView];
    [rssiBarsView2 setHidden:strengthCopy];

    [(CBWiFiTableViewCell *)self setNetworkStateChanged:1];
  }
}

@end