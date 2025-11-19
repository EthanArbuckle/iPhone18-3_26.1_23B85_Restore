@interface UGCPhotoCreditSectionHeaderView
+ (NSString)reuseIdentifier;
- (UGCPhotoCreditSectionHeaderView)initWithFrame:(CGRect)a3;
- (void)_didTapSubtitleActionButton;
- (void)_invokeSelectionWithSourceType:(int64_t)a3;
- (void)_setupView;
- (void)setAccessoryActionTitle:(id)a3 selectionHandler:(id)a4;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleActionTitle:(id)a3 completionHandler:(id)a4;
- (void)setTitle:(id)a3;
@end

@implementation UGCPhotoCreditSectionHeaderView

- (void)setAccessoryActionTitle:(id)a3 selectionHandler:(id)a4
{
  accessoryActionButton = self->_accessoryActionButton;
  v7 = a4;
  [(MapsThemeButton *)accessoryActionButton setTitle:a3 forState:0];
  [(UGCPhotoCreditSectionHeaderView *)self setPhotoSelectionHandler:v7];
}

- (void)setSubtitleActionTitle:(id)a3 completionHandler:(id)a4
{
  subtitleButton = self->_subtitleButton;
  v7 = a4;
  [(UIButton *)subtitleButton setTitle:a3 forState:0];
  [(UGCPhotoCreditSectionHeaderView *)self setSubtitleActionHandler:v7];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_subtitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      subtitle = self->_subtitle;
      self->_subtitle = v7;

      [(UIButton *)self->_subtitleButton setTitle:self->_subtitle forState:0];
      v5 = v9;
    }
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  v9 = v4;
  if (self->_title != v4 || (v6 = [(NSString *)v4 isEqualToString:?], v5 = v9, (v6 & 1) == 0))
  {
    v7 = [(NSString *)v5 copy];
    title = self->_title;
    self->_title = v7;

    [(UILabel *)self->_titleLabel setText:self->_title];
    v5 = v9;
  }
}

- (void)_invokeSelectionWithSourceType:(int64_t)a3
{
  v5 = [(UGCPhotoCreditSectionHeaderView *)self photoSelectionHandler];

  if (v5)
  {
    v6 = [(UGCPhotoCreditSectionHeaderView *)self photoSelectionHandler];
    v6[2](v6, a3);
  }
}

- (void)_didTapSubtitleActionButton
{
  [GEOAPPortal captureUserAction:340 target:666 value:0];
  v3 = [(UGCPhotoCreditSectionHeaderView *)self subtitleActionHandler];

  if (v3)
  {
    v4 = [(UGCPhotoCreditSectionHeaderView *)self subtitleActionHandler];
    v4[2]();
  }
}

- (void)_setupView
{
  v3 = [(MapsThemeCollectionReusableView *)self contentView];
  [v3 setAccessibilityIdentifier:@"UGCPhotoCreditSectionHeaderView"];

  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIFont system15Semibold];
  [(UILabel *)self->_titleLabel setFont:v10];

  v11 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v11];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  v12 = [(MapsThemeCollectionReusableView *)self contentView];
  [v12 addSubview:self->_titleLabel];

  v13 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  subtitleButton = self->_subtitleButton;
  self->_subtitleButton = v13;

  [(UIButton *)self->_subtitleButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = self->_subtitleButton;
  v16 = +[UIColor systemBlueColor];
  [(UIButton *)v15 setTitleColor:v16 forState:0];

  v17 = +[UIFont system15];
  v18 = [(UIButton *)self->_subtitleButton titleLabel];
  [v18 setFont:v17];

  [(UIButton *)self->_subtitleButton setLineBreakMode:0];
  [(UIButton *)self->_subtitleButton addTarget:self action:"_didTapSubtitleActionButton" forControlEvents:0x2000];
  [(UIButton *)self->_subtitleButton setAccessibilityIdentifier:@"SubtitleButton"];
  v19 = [(MapsThemeCollectionReusableView *)self contentView];
  [v19 addSubview:self->_subtitleButton];

  v20 = [MapsThemeButton buttonWithType:0];
  accessoryActionButton = self->_accessoryActionButton;
  self->_accessoryActionButton = v20;

  LODWORD(v22) = 1144750080;
  [(MapsThemeButton *)self->_accessoryActionButton setContentHuggingPriority:0 forAxis:v22];
  [(MapsThemeButton *)self->_accessoryActionButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeButton *)self->_accessoryActionButton setPreferredMenuElementOrder:2];
  [(MapsThemeButton *)self->_accessoryActionButton setShowsMenuAsPrimaryAction:1];
  LODWORD(v23) = 1144750080;
  [(MapsThemeButton *)self->_accessoryActionButton setContentCompressionResistancePriority:0 forAxis:v23];
  [(MapsThemeButton *)self->_accessoryActionButton setContentVerticalAlignment:2];
  v24 = +[UIFont system15];
  v25 = [(MapsThemeButton *)self->_accessoryActionButton titleLabel];
  [v25 setFont:v24];

  v26 = self->_accessoryActionButton;
  v27 = +[UIColor systemBlueColor];
  [(MapsThemeButton *)v26 setTitleColor:v27 forState:0];

  [(MapsThemeButton *)self->_accessoryActionButton addTarget:self action:"_didTapAccessoryActionButton" forControlEvents:0x2000];
  [(MapsThemeButton *)self->_accessoryActionButton setAccessibilityIdentifier:@"AccessoryActionButton"];
  objc_initWeak(&location, self);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1007D9208;
  v72[3] = &unk_101661B98;
  objc_copyWeak(&v73, &location);
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1007D9250;
  v70[3] = &unk_101661B98;
  objc_copyWeak(&v71, &location);
  v28 = [MUPhotoOptionsMenuButton menuForPhotoOptionsMenuButtonWithCameraCompletion:v72 libraryCompletion:v70];
  [(MapsThemeButton *)self->_accessoryActionButton setMenu:v28];

  [(MapsThemeButton *)self->_accessoryActionButton addTarget:self action:"_captureAccessoryButtonTapEvent" forControlEvents:0x4000];
  v29 = [(MapsThemeCollectionReusableView *)self contentView];
  [v29 addSubview:self->_accessoryActionButton];

  v67 = [(UILabel *)self->_titleLabel leadingAnchor];
  v69 = [(MapsThemeCollectionReusableView *)self contentView];
  v68 = [v69 layoutMarginsGuide];
  v66 = [v68 leadingAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v75[0] = v65;
  v64 = [(UILabel *)self->_titleLabel trailingAnchor];
  v63 = [(MapsThemeButton *)self->_accessoryActionButton leadingAnchor];
  v62 = [v64 constraintLessThanOrEqualToAnchor:v63 constant:-8.0];
  v75[1] = v62;
  v60 = [(UILabel *)self->_titleLabel topAnchor];
  v61 = [(MapsThemeCollectionReusableView *)self contentView];
  v59 = [v61 topAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v75[2] = v58;
  v55 = [(UIButton *)self->_subtitleButton leadingAnchor];
  v57 = [(MapsThemeCollectionReusableView *)self contentView];
  v56 = [v57 layoutMarginsGuide];
  v54 = [v56 leadingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v75[3] = v53;
  v52 = [(UIButton *)self->_subtitleButton trailingAnchor];
  v51 = [(MapsThemeButton *)self->_accessoryActionButton leadingAnchor];
  v50 = [v52 constraintLessThanOrEqualToAnchor:v51 constant:-8.0];
  v75[4] = v50;
  v49 = [(UIButton *)self->_subtitleButton topAnchor];
  v48 = [(UILabel *)self->_titleLabel bottomAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v75[5] = v47;
  v45 = [(UIButton *)self->_subtitleButton bottomAnchor];
  v46 = [(MapsThemeCollectionReusableView *)self contentView];
  v44 = [v46 bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v75[6] = v43;
  v41 = [(MapsThemeButton *)self->_accessoryActionButton topAnchor];
  v42 = [(MapsThemeCollectionReusableView *)self contentView];
  v40 = [v42 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v75[7] = v39;
  v30 = [(MapsThemeButton *)self->_accessoryActionButton trailingAnchor];
  v31 = [(MapsThemeCollectionReusableView *)self contentView];
  v32 = [v31 layoutMarginsGuide];
  v33 = [v32 trailingAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];
  v75[8] = v34;
  v35 = [(UIButton *)self->_subtitleButton firstBaselineAnchor];
  v36 = [(MapsThemeButton *)self->_accessoryActionButton firstBaselineAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  v75[9] = v37;
  v38 = [NSArray arrayWithObjects:v75 count:10];
  [NSLayoutConstraint activateConstraints:v38];

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&location);
}

- (UGCPhotoCreditSectionHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UGCPhotoCreditSectionHeaderView;
  v3 = [(MapsThemeCollectionReusableView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCPhotoCreditSectionHeaderView *)v3 _setupView];
  }

  return v4;
}

+ (NSString)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end