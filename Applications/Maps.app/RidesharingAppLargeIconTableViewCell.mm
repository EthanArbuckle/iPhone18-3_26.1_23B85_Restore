@interface RidesharingAppLargeIconTableViewCell
- (RidesharingAppLargeIconTableViewCell)initWithFrame:(CGRect)frame;
- (RidesharingAppLargeIconTableViewCellDelegate)delegate;
- (void)_actionButtonPressed:(id)pressed;
- (void)_clearContent;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateContentSizeCategoryDependentFontsAndConstraints;
- (void)_updateViewsAndConstraintsForShowingDisabledApp:(BOOL)app;
- (void)_updateViewsAndConstraintsForShowingErrorWithRideBookingRideOptionStatus:(id)status;
- (void)_updateViewsAndConstraintsForShowingLoadingStateOfDisabledApp;
- (void)_updateViewsAndConstraintsForShowingLoadingStateOfEnabledApp;
- (void)_updateViewsAndConstraintsForShowingSuggestedApp;
- (void)configureForErrorMessageWithRideBookingRideOptionStatus:(id)status;
- (void)configureForLoadingStateWithDisabledRideBookingApplication:(id)application;
- (void)configureForLoadingStateWithEnabledRideBookingApplication:(id)application;
- (void)configureWithDisabledRideBookingApplication:(id)application showActionButton:(BOOL)button;
- (void)configureWithSuggestedApp:(id)app;
- (void)dealloc;
- (void)prepareForReuse;
- (void)updateTheme;
@end

@implementation RidesharingAppLargeIconTableViewCell

- (RidesharingAppLargeIconTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_actionButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(RidesharingAppLargeIconTableViewCell *)self delegate];
  [delegate ridesharingAppLargeIconTableViewCell:self didSelectActionButton:pressedCopy];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = RidesharingAppLargeIconTableViewCell;
  [(RidesharingAppLargeIconTableViewCell *)&v4 prepareForReuse];
  v3 = +[MKAppImageManager sharedImageManager];
  [v3 cancelLoadAppImageAtURL:self->_lastRequestedImageURL];
}

- (void)_clearContent
{
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = 0;

  [(UILabel *)self->_majorLabel setText:0];
  [(UILabel *)self->_minorLabel setText:0];
  [(UILabel *)self->_ratingLabel setText:0];
  [(UILabel *)self->_ratingLabel setAttributedText:0];
  iconImageView = self->_iconImageView;

  [(UIImageView *)iconImageView setImage:0];
}

- (void)_updateViewsAndConstraintsForShowingErrorWithRideBookingRideOptionStatus:(id)status
{
  statusCopy = status;
  [(UILabel *)self->_minorLabel setHidden:0];
  [(UILabel *)self->_ratingLabel setHidden:1];
  [(NSLayoutConstraint *)self->_ratingsLabelToBottomConstraint setActive:0];
  [(NSLayoutConstraint *)self->_minorLabelToBottomConsttraint setActive:1];
  [(NSLayoutConstraint *)self->_majorLabelToBottomConstraint setActive:0];
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
  [(NSLayoutConstraint *)self->_textToActionButtonConstraint setActive:1];
  [(NSLayoutConstraint *)self->_textToActivityIndicatorConstraint setActive:0];
  [(UIButton *)self->_actionButton setHidden:1];
  [(UIButton *)self->_actionButton setTitle:0 forState:0];
  if ([statusCopy rideOptionStatusError] == 11)
  {
    [(UIButton *)self->_actionButton setHidden:0];
    actionButton = self->_actionButton;
    errorMessage = [statusCopy errorMessage];
    [(UIButton *)actionButton setTitle:errorMessage forState:0];
  }
}

- (void)_updateViewsAndConstraintsForShowingLoadingStateOfDisabledApp
{
  [(UILabel *)self->_minorLabel setHidden:0];
  [(UILabel *)self->_ratingLabel setHidden:1];
  [(NSLayoutConstraint *)self->_ratingsLabelToBottomConstraint setActive:0];
  [(NSLayoutConstraint *)self->_minorLabelToBottomConsttraint setActive:0];
  [(NSLayoutConstraint *)self->_majorLabelToBottomConstraint setActive:1];
  [(UIButton *)self->_actionButton setHidden:1];
  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
  actionButton = self->_actionButton;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Show Rides" value:@"localized string not found" table:0];
  [(UIButton *)actionButton setTitle:v5 forState:0];

  [(NSLayoutConstraint *)self->_textToActionButtonConstraint setActive:0];
  textToActivityIndicatorConstraint = self->_textToActivityIndicatorConstraint;

  [(NSLayoutConstraint *)textToActivityIndicatorConstraint setActive:1];
}

- (void)_updateViewsAndConstraintsForShowingDisabledApp:(BOOL)app
{
  appCopy = app;
  [(UILabel *)self->_minorLabel setHidden:0];
  [(UILabel *)self->_ratingLabel setHidden:1];
  [(NSLayoutConstraint *)self->_ratingsLabelToBottomConstraint setActive:0];
  [(NSLayoutConstraint *)self->_minorLabelToBottomConsttraint setActive:1];
  [(NSLayoutConstraint *)self->_majorLabelToBottomConstraint setActive:0];
  [(UIButton *)self->_actionButton setHidden:!appCopy];
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
  actionButton = self->_actionButton;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Show Rides" value:@"localized string not found" table:0];
  [(UIButton *)actionButton setTitle:v7 forState:0];

  [(NSLayoutConstraint *)self->_textToActionButtonConstraint setActive:1];
  textToActivityIndicatorConstraint = self->_textToActivityIndicatorConstraint;

  [(NSLayoutConstraint *)textToActivityIndicatorConstraint setActive:0];
}

- (void)_updateViewsAndConstraintsForShowingLoadingStateOfEnabledApp
{
  [(UILabel *)self->_minorLabel setHidden:0];
  [(UILabel *)self->_ratingLabel setHidden:1];
  [(NSLayoutConstraint *)self->_ratingsLabelToBottomConstraint setActive:0];
  [(NSLayoutConstraint *)self->_minorLabelToBottomConsttraint setActive:1];
  [(NSLayoutConstraint *)self->_majorLabelToBottomConstraint setActive:0];
  [(UIButton *)self->_actionButton setHidden:1];
  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
  [(NSLayoutConstraint *)self->_textToActionButtonConstraint setActive:0];
  textToActivityIndicatorConstraint = self->_textToActivityIndicatorConstraint;

  [(NSLayoutConstraint *)textToActivityIndicatorConstraint setActive:1];
}

- (void)_updateViewsAndConstraintsForShowingSuggestedApp
{
  [(UILabel *)self->_minorLabel setHidden:1];
  [(UILabel *)self->_ratingLabel setHidden:0];
  [(NSLayoutConstraint *)self->_ratingsLabelToBottomConstraint setActive:1];
  [(NSLayoutConstraint *)self->_minorLabelToBottomConsttraint setActive:0];
  [(NSLayoutConstraint *)self->_majorLabelToBottomConstraint setActive:0];
  [(UIButton *)self->_actionButton setHidden:0];
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
  actionButton = self->_actionButton;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"View" value:@"localized string not found" table:0];
  [(UIButton *)actionButton setTitle:v5 forState:0];

  [(NSLayoutConstraint *)self->_textToActionButtonConstraint setActive:1];
  textToActivityIndicatorConstraint = self->_textToActivityIndicatorConstraint;

  [(NSLayoutConstraint *)textToActivityIndicatorConstraint setActive:0];
}

- (void)configureForLoadingStateWithDisabledRideBookingApplication:(id)application
{
  applicationCopy = application;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  identifier = [applicationCopy identifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = identifier;

  name = [applicationCopy name];
  [(UILabel *)self->_majorLabel setText:name];

  v8 = [applicationCopy iconWithFormat:2];

  [(UIImageView *)self->_iconImageView setImage:v8];

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingLoadingStateOfDisabledApp];
}

- (void)configureWithDisabledRideBookingApplication:(id)application showActionButton:(BOOL)button
{
  buttonCopy = button;
  applicationCopy = application;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  identifier = [applicationCopy identifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = identifier;

  name = [applicationCopy name];
  [(UILabel *)self->_majorLabel setText:name];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Installed [Ridesharing]" value:@"localized string not found" table:0];
  [(UILabel *)self->_minorLabel setText:v11];

  v12 = [applicationCopy iconWithFormat:2];

  [(UIImageView *)self->_iconImageView setImage:v12];

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingDisabledApp:buttonCopy];
}

- (void)configureForLoadingStateWithEnabledRideBookingApplication:(id)application
{
  applicationCopy = application;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  identifier = [applicationCopy identifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = identifier;

  name = [applicationCopy name];
  [(UILabel *)self->_majorLabel setText:name];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Checking for available rides..." value:@"localized string not found" table:0];
  [(UILabel *)self->_minorLabel setText:v9];

  v10 = [applicationCopy iconWithFormat:2];

  [(UIImageView *)self->_iconImageView setImage:v10];

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingLoadingStateOfEnabledApp];
}

- (void)configureForErrorMessageWithRideBookingRideOptionStatus:(id)status
{
  statusCopy = status;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  application = [statusCopy application];
  identifier = [application identifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = identifier;

  application2 = [statusCopy application];
  name = [application2 name];
  [(UILabel *)self->_majorLabel setText:name];

  errorMessage = [statusCopy errorMessage];
  [(UILabel *)self->_minorLabel setText:errorMessage];

  application3 = [statusCopy application];
  objc_opt_class();
  LOBYTE(name) = objc_opt_isKindOfClass();

  if (name)
  {
    application4 = [statusCopy application];
    v12 = [application4 iconWithFormat:2];
    [(UIImageView *)self->_iconImageView setImage:v12];
  }

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingErrorWithRideBookingRideOptionStatus:statusCopy];
}

- (void)configureWithSuggestedApp:(id)app
{
  appCopy = app;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  iOSBundleIdentifier = [appCopy iOSBundleIdentifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = iOSBundleIdentifier;

  displayName = [appCopy displayName];
  [(UILabel *)self->_majorLabel setText:displayName];

  [appCopy ratingsValue];
  v9 = v8;
  ratingsCount = [appCopy ratingsCount];
  ratingLabel = self->_ratingLabel;
  v12 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 addingSymbolicTraits:0];
  v13 = +[UIColor secondaryLabelColor];
  mk_theme = [(RidesharingAppLargeIconTableViewCell *)self mk_theme];
  v15 = [MKStarRatingAndLabelView ratingAndReviewsAsAttributedString:1 style:v12 font:ratingsCount numberOfReviews:v13 textColor:mk_theme theme:v9];
  [(UILabel *)ratingLabel setAttributedText:v15];

  artworkURL = [appCopy artworkURL];
  lastRequestedImageURL = self->_lastRequestedImageURL;
  self->_lastRequestedImageURL = artworkURL;

  v18 = +[MKAppImageManager sharedImageManager];
  artworkURL2 = [appCopy artworkURL];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100B0847C;
  v20[3] = &unk_1016380F8;
  v20[4] = self;
  [v18 loadAppImageAtURL:artworkURL2 completionHandler:v20];

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingSuggestedApp];
}

- (void)_updateContentSizeCategoryDependentFontsAndConstraints
{
  v3 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle3 addingSymbolicTraits:2];
  [(UILabel *)self->_majorLabel setFont:v3];

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline addingSymbolicTraits:0];
  [(UILabel *)self->_minorLabel setFont:v4];

  v5 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 addingSymbolicTraits:0];
  [(UILabel *)self->_ratingLabel setFont:v5];

  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline addingSymbolicTraits:0];
  titleLabel = [(UIButton *)self->_actionButton titleLabel];
  [titleLabel setFont:v6];

  font = [(UILabel *)self->_majorLabel font];
  [font _mapkit_scaledValueForValue:37.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_majorLabelBaselineToTopConstraint setConstant:?];

  font2 = [(UILabel *)self->_minorLabel font];
  [font2 _mapkit_scaledValueForValue:21.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_minorLabelBaselineToMajorLabelBaselineConstraint setConstant:?];

  font3 = [(UILabel *)self->_ratingLabel font];
  [font3 _mapkit_scaledValueForValue:18.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_ratingsLabelBaselineToMinorLabelBaselineConstraint setConstant:?];

  titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
  font4 = [titleLabel2 font];
  [font4 _mapkit_scaledValueForValue:8.0];
  UIRoundToViewScale();
  v14 = v13;

  titleLabel3 = [(UIButton *)self->_actionButton titleLabel];
  font5 = [titleLabel3 font];
  [font5 _mapkit_scaledValueForValue:8.0];
  UIRoundToViewScale();
  v18 = v17;

  actionButton = self->_actionButton;

  [(UIButton *)actionButton setContentEdgeInsets:v14, v18, v14, v18];
}

- (void)_setupConstraints
{
  contentView = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  +[RouteOverviewCell minimumRidesharingHeight];
  v149 = [heightAnchor constraintEqualToConstant:?];

  LODWORD(v5) = *"";
  [v149 setPriority:v5];
  majorLabel = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  firstBaselineAnchor = [majorLabel firstBaselineAnchor];
  contentView2 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  topAnchor = [contentView2 topAnchor];
  v10 = [firstBaselineAnchor constraintGreaterThanOrEqualToAnchor:topAnchor];
  majorLabelBaselineToTopConstraint = self->_majorLabelBaselineToTopConstraint;
  self->_majorLabelBaselineToTopConstraint = v10;

  minorLabel = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  firstBaselineAnchor2 = [minorLabel firstBaselineAnchor];
  majorLabel2 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  lastBaselineAnchor = [majorLabel2 lastBaselineAnchor];
  v16 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  minorLabelBaselineToMajorLabelBaselineConstraint = self->_minorLabelBaselineToMajorLabelBaselineConstraint;
  self->_minorLabelBaselineToMajorLabelBaselineConstraint = v16;

  ratingLabel = [(RidesharingAppLargeIconTableViewCell *)self ratingLabel];
  firstBaselineAnchor3 = [ratingLabel firstBaselineAnchor];
  minorLabel2 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  lastBaselineAnchor2 = [minorLabel2 lastBaselineAnchor];
  v22 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2];
  ratingsLabelBaselineToMinorLabelBaselineConstraint = self->_ratingsLabelBaselineToMinorLabelBaselineConstraint;
  self->_ratingsLabelBaselineToMinorLabelBaselineConstraint = v22;

  ratingLabel2 = [(RidesharingAppLargeIconTableViewCell *)self ratingLabel];
  bottomAnchor = [ratingLabel2 bottomAnchor];
  textLayoutGuide = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  bottomAnchor2 = [textLayoutGuide bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  ratingsLabelToBottomConstraint = self->_ratingsLabelToBottomConstraint;
  self->_ratingsLabelToBottomConstraint = v28;

  minorLabel3 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  bottomAnchor3 = [minorLabel3 bottomAnchor];
  textLayoutGuide2 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  bottomAnchor4 = [textLayoutGuide2 bottomAnchor];
  v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  minorLabelToBottomConsttraint = self->_minorLabelToBottomConsttraint;
  self->_minorLabelToBottomConsttraint = v34;

  majorLabel3 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  bottomAnchor5 = [majorLabel3 bottomAnchor];
  textLayoutGuide3 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  bottomAnchor6 = [textLayoutGuide3 bottomAnchor];
  v40 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  majorLabelToBottomConstraint = self->_majorLabelToBottomConstraint;
  self->_majorLabelToBottomConstraint = v40;

  actionButton = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  leadingAnchor = [actionButton leadingAnchor];
  textLayoutGuide4 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  trailingAnchor = [textLayoutGuide4 trailingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:15.0];
  textToActionButtonConstraint = self->_textToActionButtonConstraint;
  self->_textToActionButtonConstraint = v46;

  activityIndicatorView = [(RidesharingAppLargeIconTableViewCell *)self activityIndicatorView];
  leadingAnchor2 = [activityIndicatorView leadingAnchor];
  textLayoutGuide5 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  trailingAnchor2 = [textLayoutGuide5 trailingAnchor];
  v52 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:25.0];
  textToActivityIndicatorConstraint = self->_textToActivityIndicatorConstraint;
  self->_textToActivityIndicatorConstraint = v52;

  v148 = objc_alloc_init(NSMutableArray);
  textLayoutGuide6 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  leadingAnchor3 = [textLayoutGuide6 leadingAnchor];
  ratingLabel3 = [(RidesharingAppLargeIconTableViewCell *)self ratingLabel];
  leadingAnchor4 = [ratingLabel3 leadingAnchor];
  v143 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v150[0] = v143;
  iconImageView = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  leadingAnchor5 = [iconImageView leadingAnchor];
  contentView3 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  leadingAnchor6 = [contentView3 leadingAnchor];
  v138 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  v150[1] = v138;
  iconImageView2 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  widthAnchor = [iconImageView2 widthAnchor];
  v135 = [widthAnchor constraintEqualToConstant:62.0];
  v150[2] = v135;
  textLayoutGuide7 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  leadingAnchor7 = [textLayoutGuide7 leadingAnchor];
  iconImageView3 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  trailingAnchor3 = [iconImageView3 trailingAnchor];
  v130 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor3 constant:13.0];
  v150[3] = v130;
  textLayoutGuide8 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  leadingAnchor8 = [textLayoutGuide8 leadingAnchor];
  majorLabel4 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  leadingAnchor9 = [majorLabel4 leadingAnchor];
  v125 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v150[4] = v125;
  textLayoutGuide9 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  leadingAnchor10 = [textLayoutGuide9 leadingAnchor];
  minorLabel4 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  leadingAnchor11 = [minorLabel4 leadingAnchor];
  v120 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v150[5] = v120;
  textLayoutGuide10 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  trailingAnchor4 = [textLayoutGuide10 trailingAnchor];
  majorLabel5 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  trailingAnchor5 = [majorLabel5 trailingAnchor];
  v115 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v150[6] = v115;
  textLayoutGuide11 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  trailingAnchor6 = [textLayoutGuide11 trailingAnchor];
  minorLabel5 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  trailingAnchor7 = [minorLabel5 trailingAnchor];
  v110 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v150[7] = v110;
  textLayoutGuide12 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  trailingAnchor8 = [textLayoutGuide12 trailingAnchor];
  ratingLabel4 = [(RidesharingAppLargeIconTableViewCell *)self ratingLabel];
  trailingAnchor9 = [ratingLabel4 trailingAnchor];
  v105 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v150[8] = v105;
  actionButton2 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  widthAnchor2 = [actionButton2 widthAnchor];
  v102 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:47.0];
  v54 = self->_textToActionButtonConstraint;
  v150[9] = v102;
  v150[10] = v54;
  actionButton3 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  trailingAnchor10 = [actionButton3 trailingAnchor];
  contentView4 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  trailingAnchor11 = [contentView4 trailingAnchor];
  v97 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-15.0];
  v150[11] = v97;
  activityIndicatorView2 = [(RidesharingAppLargeIconTableViewCell *)self activityIndicatorView];
  trailingAnchor12 = [activityIndicatorView2 trailingAnchor];
  contentView5 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  trailingAnchor13 = [contentView5 trailingAnchor];
  v92 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13 constant:-37.0];
  v150[12] = v92;
  v150[13] = v149;
  iconImageView4 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  centerYAnchor = [iconImageView4 centerYAnchor];
  contentView6 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  centerYAnchor2 = [contentView6 centerYAnchor];
  v87 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v150[14] = v87;
  iconImageView5 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  heightAnchor2 = [iconImageView5 heightAnchor];
  iconImageView6 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  widthAnchor3 = [iconImageView6 widthAnchor];
  v82 = [heightAnchor2 constraintEqualToAnchor:widthAnchor3];
  v150[15] = v82;
  textLayoutGuide13 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  centerYAnchor3 = [textLayoutGuide13 centerYAnchor];
  contentView7 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  centerYAnchor4 = [contentView7 centerYAnchor];
  v77 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v150[16] = v77;
  majorLabel6 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  topAnchor2 = [majorLabel6 topAnchor];
  textLayoutGuide14 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  topAnchor3 = [textLayoutGuide14 topAnchor];
  v72 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v55 = self->_majorLabelBaselineToTopConstraint;
  v56 = self->_minorLabelBaselineToMajorLabelBaselineConstraint;
  v57 = self->_ratingsLabelBaselineToMinorLabelBaselineConstraint;
  v150[17] = v72;
  v150[18] = v55;
  v150[19] = v56;
  v150[20] = v57;
  v150[21] = self->_ratingsLabelToBottomConstraint;
  actionButton4 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  centerYAnchor5 = [actionButton4 centerYAnchor];
  contentView8 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  centerYAnchor6 = [contentView8 centerYAnchor];
  v58 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v150[22] = v58;
  activityIndicatorView3 = [(RidesharingAppLargeIconTableViewCell *)self activityIndicatorView];
  centerYAnchor7 = [activityIndicatorView3 centerYAnchor];
  contentView9 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  centerYAnchor8 = [contentView9 centerYAnchor];
  v63 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v150[23] = v63;
  actionButton5 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  heightAnchor3 = [actionButton5 heightAnchor];
  v66 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:26.0];
  v150[24] = v66;
  v67 = [NSArray arrayWithObjects:v150 count:25];
  [v148 addObjectsFromArray:v67];

  [NSLayoutConstraint activateConstraints:v148];
}

- (void)updateTheme
{
  v13.receiver = self;
  v13.super_class = RidesharingAppLargeIconTableViewCell;
  [(MapsThemeCollectionViewCell *)&v13 updateTheme];
  actionButton = self->_actionButton;
  theme = [(RidesharingAppLargeIconTableViewCell *)self theme];
  keyColor = [theme keyColor];
  [(UIButton *)actionButton setTitleColor:keyColor forState:0];

  v6 = self->_actionButton;
  theme2 = [(RidesharingAppLargeIconTableViewCell *)self theme];
  darkKeyColor = [theme2 darkKeyColor];
  [(UIButton *)v6 setTitleColor:darkKeyColor forState:1];

  attributedText = [(UILabel *)self->_ratingLabel attributedText];
  v10 = [attributedText mutableCopy];

  v11 = +[UIColor secondaryLabelColor];
  [v10 addAttribute:NSForegroundColorAttributeName value:v11 range:{0, objc_msgSend(v10, "length")}];

  [(UILabel *)self->_ratingLabel setAttributedText:v10];
  theme3 = [(RidesharingAppLargeIconTableViewCell *)self theme];
  -[UIActivityIndicatorView setActivityIndicatorViewStyle:](self->_activityIndicatorView, "setActivityIndicatorViewStyle:", [theme3 activityIndicatorStyle]);
}

- (void)_setupViews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  majorLabel = self->_majorLabel;
  self->_majorLabel = v7;

  [(UILabel *)self->_majorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_majorLabel setNumberOfLines:0];
  LODWORD(v9) = 1148829696;
  [(UILabel *)self->_majorLabel setContentCompressionResistancePriority:1 forAxis:v9];
  [(UILabel *)self->_majorLabel setAccessibilityIdentifier:@"Title"];
  contentView = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [contentView addSubview:self->_majorLabel];

  v11 = +[UIColor labelColor];
  [(UILabel *)self->_majorLabel setTextColor:v11];

  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  minorLabel = self->_minorLabel;
  self->_minorLabel = v12;

  [(UILabel *)self->_minorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_minorLabel setNumberOfLines:0];
  LODWORD(v14) = 1148829696;
  [(UILabel *)self->_minorLabel setContentCompressionResistancePriority:1 forAxis:v14];
  [(UILabel *)self->_minorLabel setAccessibilityIdentifier:@"Subtitle"];
  contentView2 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [contentView2 addSubview:self->_minorLabel];

  v16 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_minorLabel setTextColor:v16];

  v17 = [UIButton buttonWithType:1];
  actionButton = self->_actionButton;
  self->_actionButton = v17;

  [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v19) = 1148829696;
  [(UIButton *)self->_actionButton setContentCompressionResistancePriority:0 forAxis:v19];
  LODWORD(v20) = 1148829696;
  [(UIButton *)self->_actionButton setContentHuggingPriority:0 forAxis:v20];
  v21 = self->_actionButton;
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"View" value:@"localized string not found" table:0];
  [(UIButton *)v21 setTitle:v23 forState:0];

  [(UIButton *)self->_actionButton addTarget:self action:"_actionButtonPressed:" forControlEvents:64];
  [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"ActionButton"];
  contentView3 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [contentView3 addSubview:self->_actionButton];

  v25 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  activityIndicatorView = self->_activityIndicatorView;
  self->_activityIndicatorView = v25;

  [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setAccessibilityIdentifier:@"RideSharingActivityIndicator"];
  contentView4 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [contentView4 addSubview:self->_activityIndicatorView];

  v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  ratingLabel = self->_ratingLabel;
  self->_ratingLabel = v28;

  [(UILabel *)self->_ratingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_ratingLabel setNumberOfLines:0];
  [(UILabel *)self->_ratingLabel setLineBreakMode:0];
  LODWORD(v30) = 1148829696;
  [(UILabel *)self->_ratingLabel setContentCompressionResistancePriority:1 forAxis:v30];
  [(UILabel *)self->_ratingLabel setAccessibilityIdentifier:@"Ratings"];
  contentView5 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [contentView5 addSubview:self->_ratingLabel];

  v32 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v32;

  [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_iconImageView setAccessibilityIdentifier:@"Icon"];
  contentView6 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [contentView6 addSubview:self->_iconImageView];

  v35 = objc_alloc_init(UILayoutGuide);
  textLayoutGuide = self->_textLayoutGuide;
  self->_textLayoutGuide = v35;

  contentView7 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [contentView7 addLayoutGuide:self->_textLayoutGuide];

  [(RidesharingAppLargeIconTableViewCell *)self updateTheme];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RidesharingAppLargeIconTableViewCell;
  [(RidesharingAppLargeIconTableViewCell *)&v4 dealloc];
}

- (RidesharingAppLargeIconTableViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = RidesharingAppLargeIconTableViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RidesharingAppLargeIconTableViewCell *)v3 _setupViews];
    [(RidesharingAppLargeIconTableViewCell *)v4 _setupConstraints];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_updateContentSizeCategoryDependentFontsAndConstraints" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(RidesharingAppLargeIconTableViewCell *)v4 _updateContentSizeCategoryDependentFontsAndConstraints];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(RidesharingAppLargeIconTableViewCell *)v4 setAccessibilityIdentifier:v7];
  }

  return v4;
}

@end