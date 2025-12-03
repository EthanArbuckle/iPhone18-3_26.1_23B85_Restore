@interface UGCPhotoCreditSectionHeaderView
+ (NSString)reuseIdentifier;
- (UGCPhotoCreditSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)_didTapSubtitleActionButton;
- (void)_invokeSelectionWithSourceType:(int64_t)type;
- (void)_setupView;
- (void)setAccessoryActionTitle:(id)title selectionHandler:(id)handler;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleActionTitle:(id)title completionHandler:(id)handler;
- (void)setTitle:(id)title;
@end

@implementation UGCPhotoCreditSectionHeaderView

- (void)setAccessoryActionTitle:(id)title selectionHandler:(id)handler
{
  accessoryActionButton = self->_accessoryActionButton;
  handlerCopy = handler;
  [(MapsThemeButton *)accessoryActionButton setTitle:title forState:0];
  [(UGCPhotoCreditSectionHeaderView *)self setPhotoSelectionHandler:handlerCopy];
}

- (void)setSubtitleActionTitle:(id)title completionHandler:(id)handler
{
  subtitleButton = self->_subtitleButton;
  handlerCopy = handler;
  [(UIButton *)subtitleButton setTitle:title forState:0];
  [(UGCPhotoCreditSectionHeaderView *)self setSubtitleActionHandler:handlerCopy];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = subtitleCopy;
  if (self->_subtitle != subtitleCopy)
  {
    v9 = subtitleCopy;
    v6 = [(NSString *)subtitleCopy isEqual:?];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  v9 = titleCopy;
  if (self->_title != titleCopy || (v6 = [(NSString *)titleCopy isEqualToString:?], v5 = v9, (v6 & 1) == 0))
  {
    v7 = [(NSString *)v5 copy];
    title = self->_title;
    self->_title = v7;

    [(UILabel *)self->_titleLabel setText:self->_title];
    v5 = v9;
  }
}

- (void)_invokeSelectionWithSourceType:(int64_t)type
{
  photoSelectionHandler = [(UGCPhotoCreditSectionHeaderView *)self photoSelectionHandler];

  if (photoSelectionHandler)
  {
    photoSelectionHandler2 = [(UGCPhotoCreditSectionHeaderView *)self photoSelectionHandler];
    photoSelectionHandler2[2](photoSelectionHandler2, type);
  }
}

- (void)_didTapSubtitleActionButton
{
  [GEOAPPortal captureUserAction:340 target:666 value:0];
  subtitleActionHandler = [(UGCPhotoCreditSectionHeaderView *)self subtitleActionHandler];

  if (subtitleActionHandler)
  {
    subtitleActionHandler2 = [(UGCPhotoCreditSectionHeaderView *)self subtitleActionHandler];
    subtitleActionHandler2[2]();
  }
}

- (void)_setupView
{
  contentView = [(MapsThemeCollectionReusableView *)self contentView];
  [contentView setAccessibilityIdentifier:@"UGCPhotoCreditSectionHeaderView"];

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
  contentView2 = [(MapsThemeCollectionReusableView *)self contentView];
  [contentView2 addSubview:self->_titleLabel];

  v13 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  subtitleButton = self->_subtitleButton;
  self->_subtitleButton = v13;

  [(UIButton *)self->_subtitleButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = self->_subtitleButton;
  v16 = +[UIColor systemBlueColor];
  [(UIButton *)v15 setTitleColor:v16 forState:0];

  v17 = +[UIFont system15];
  titleLabel = [(UIButton *)self->_subtitleButton titleLabel];
  [titleLabel setFont:v17];

  [(UIButton *)self->_subtitleButton setLineBreakMode:0];
  [(UIButton *)self->_subtitleButton addTarget:self action:"_didTapSubtitleActionButton" forControlEvents:0x2000];
  [(UIButton *)self->_subtitleButton setAccessibilityIdentifier:@"SubtitleButton"];
  contentView3 = [(MapsThemeCollectionReusableView *)self contentView];
  [contentView3 addSubview:self->_subtitleButton];

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
  titleLabel2 = [(MapsThemeButton *)self->_accessoryActionButton titleLabel];
  [titleLabel2 setFont:v24];

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
  contentView4 = [(MapsThemeCollectionReusableView *)self contentView];
  [contentView4 addSubview:self->_accessoryActionButton];

  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView5 = [(MapsThemeCollectionReusableView *)self contentView];
  layoutMarginsGuide = [contentView5 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v75[0] = v65;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  leadingAnchor3 = [(MapsThemeButton *)self->_accessoryActionButton leadingAnchor];
  v62 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-8.0];
  v75[1] = v62;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  contentView6 = [(MapsThemeCollectionReusableView *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v58 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v75[2] = v58;
  leadingAnchor4 = [(UIButton *)self->_subtitleButton leadingAnchor];
  contentView7 = [(MapsThemeCollectionReusableView *)self contentView];
  layoutMarginsGuide2 = [contentView7 layoutMarginsGuide];
  leadingAnchor5 = [layoutMarginsGuide2 leadingAnchor];
  v53 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v75[3] = v53;
  trailingAnchor2 = [(UIButton *)self->_subtitleButton trailingAnchor];
  leadingAnchor6 = [(MapsThemeButton *)self->_accessoryActionButton leadingAnchor];
  v50 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor6 constant:-8.0];
  v75[4] = v50;
  topAnchor3 = [(UIButton *)self->_subtitleButton topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v47 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v75[5] = v47;
  bottomAnchor2 = [(UIButton *)self->_subtitleButton bottomAnchor];
  contentView8 = [(MapsThemeCollectionReusableView *)self contentView];
  bottomAnchor3 = [contentView8 bottomAnchor];
  v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v75[6] = v43;
  topAnchor4 = [(MapsThemeButton *)self->_accessoryActionButton topAnchor];
  contentView9 = [(MapsThemeCollectionReusableView *)self contentView];
  topAnchor5 = [contentView9 topAnchor];
  v39 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v75[7] = v39;
  trailingAnchor3 = [(MapsThemeButton *)self->_accessoryActionButton trailingAnchor];
  contentView10 = [(MapsThemeCollectionReusableView *)self contentView];
  layoutMarginsGuide3 = [contentView10 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide3 trailingAnchor];
  v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v75[8] = v34;
  firstBaselineAnchor = [(UIButton *)self->_subtitleButton firstBaselineAnchor];
  firstBaselineAnchor2 = [(MapsThemeButton *)self->_accessoryActionButton firstBaselineAnchor];
  v37 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v75[9] = v37;
  v38 = [NSArray arrayWithObjects:v75 count:10];
  [NSLayoutConstraint activateConstraints:v38];

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&location);
}

- (UGCPhotoCreditSectionHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UGCPhotoCreditSectionHeaderView;
  v3 = [(MapsThemeCollectionReusableView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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