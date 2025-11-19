@interface CPSClipStoreTableViewCell
+ (id)specifierForBundleIdentifier:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CPSClipStoreTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)preferredImageDescriptor;
- (void)createLockupViewWithSpecifier:(id)a3;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CPSClipStoreTableViewCell

+ (id)specifierForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_14F50 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  if (![v3 length])
  {
    v5 = sub_59B0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_9FEC(v5);
    }
  }

  [v4 cps_setBundleIdentifier:v3];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 cps_isTestFlight];
  v6 = _CPSLocalizedString();
  [v4 setProperty:v6 forKey:PSTitleKey];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  return v4;
}

- (CPSClipStoreTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CPSClipStoreTableViewCell;
  v4 = [(CPSClipStoreTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CPSClipStoreTableViewCell *)v4 setSelectionStyle:0];
    v6 = v5;
  }

  return v5;
}

- (id)preferredImageDescriptor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = qword_1A060;
  v13 = qword_1A060;
  if (!qword_1A060)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4068;
    v9[3] = &unk_148E8;
    v9[4] = &v10;
    sub_4068(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 alloc];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = [v4 initWithSize:62.0 scale:{62.0, v6}];

  [v7 setShape:1];

  return v7;
}

- (void)createLockupViewWithSpecifier:(id)a3
{
  v4 = a3;
  lockupView = self->_lockupView;
  if (lockupView)
  {
    [(ASCLockupView *)lockupView removeFromSuperview];
    v6 = self->_lockupView;
    self->_lockupView = 0;
  }

  v7 = [v4 cps_bundleIdentifier];
  v8 = [v4 cps_storeItemIdentifier];
  v9 = [[ASCAdamID alloc] initWithInt64:v8];
  v10 = [[ASCLockupView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v11 = self->_lockupView;
  self->_lockupView = v10;

  [(ASCLockupView *)self->_lockupView setSize:ASCLockupViewSizeSmall];
  v12 = [v4 cps_isTestFlight];
  if ((v12 & 1) == 0 && !v8)
  {
    v13 = sub_59B0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_A030(v7, v13);
    }
  }

  v14 = self->_lockupView;
  if (v12)
  {
    [(ASCLockupView *)v14 setUserInteractionEnabled:0];
    v15 = [(CPSClipStoreTableViewCell *)self preferredImageDescriptor];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_3D24;
    v19[3] = &unk_148C0;
    v19[4] = self;
    v20 = v9;
    v21 = v4;
    [CPSAppClipRecord getApplicationIconForBundleIdentifier:v7 imageDescriptor:v15 resultHandler:v19];
  }

  else
  {
    [(ASCLockupView *)v14 setUserInteractionEnabled:1];
    v16 = [ASCLockupRequest alloc];
    v17 = [v16 initWithID:v9 kind:ASCLockupKindApp context:ASCLockupContextStandard];
    [(ASCLockupView *)self->_lockupView setRequest:v17];
  }

  v18 = [(CPSClipStoreTableViewCell *)self contentView];
  [v18 addSubview:self->_lockupView];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CPSClipStoreTableViewCell;
  [(CPSClipStoreTableViewCell *)&v16 layoutSubviews];
  [(CPSClipStoreTableViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CPSClipStoreTableViewCell *)self layoutMargins];
  v12 = v11;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v13 = CGRectGetWidth(v17) - v12;
  [(CPSClipStoreTableViewCell *)self layoutMargins];
  v15 = v13 - v14;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  [(ASCLockupView *)self->_lockupView setFrame:v12, 15.0, v15, CGRectGetHeight(v18) + -30.0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  lockupView = self->_lockupView;
  [(CPSClipStoreTableViewCell *)self bounds:a3.width];
  Width = CGRectGetWidth(v13);
  [(CPSClipStoreTableViewCell *)self layoutMargins];
  v7 = Width - v6;
  [(CPSClipStoreTableViewCell *)self layoutMargins];
  [(ASCLockupView *)lockupView sizeThatFits:v7 - v8, 1.79769313e308];
  v11 = v10 + 30.0;
  result.height = v11;
  result.width = v9;
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPSClipStoreTableViewCell;
  [(CPSClipStoreTableViewCell *)&v8 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 cps_bundleIdentifier];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = sub_59B0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_A0A8(v7);
    }
  }

  [(CPSClipStoreTableViewCell *)self createLockupViewWithSpecifier:v4];
}

@end