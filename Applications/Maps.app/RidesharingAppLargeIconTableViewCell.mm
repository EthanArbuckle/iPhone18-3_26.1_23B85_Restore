@interface RidesharingAppLargeIconTableViewCell
- (RidesharingAppLargeIconTableViewCell)initWithFrame:(CGRect)a3;
- (RidesharingAppLargeIconTableViewCellDelegate)delegate;
- (void)_actionButtonPressed:(id)a3;
- (void)_clearContent;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateContentSizeCategoryDependentFontsAndConstraints;
- (void)_updateViewsAndConstraintsForShowingDisabledApp:(BOOL)a3;
- (void)_updateViewsAndConstraintsForShowingErrorWithRideBookingRideOptionStatus:(id)a3;
- (void)_updateViewsAndConstraintsForShowingLoadingStateOfDisabledApp;
- (void)_updateViewsAndConstraintsForShowingLoadingStateOfEnabledApp;
- (void)_updateViewsAndConstraintsForShowingSuggestedApp;
- (void)configureForErrorMessageWithRideBookingRideOptionStatus:(id)a3;
- (void)configureForLoadingStateWithDisabledRideBookingApplication:(id)a3;
- (void)configureForLoadingStateWithEnabledRideBookingApplication:(id)a3;
- (void)configureWithDisabledRideBookingApplication:(id)a3 showActionButton:(BOOL)a4;
- (void)configureWithSuggestedApp:(id)a3;
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

- (void)_actionButtonPressed:(id)a3
{
  v4 = a3;
  v5 = [(RidesharingAppLargeIconTableViewCell *)self delegate];
  [v5 ridesharingAppLargeIconTableViewCell:self didSelectActionButton:v4];
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

- (void)_updateViewsAndConstraintsForShowingErrorWithRideBookingRideOptionStatus:(id)a3
{
  v6 = a3;
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
  if ([v6 rideOptionStatusError] == 11)
  {
    [(UIButton *)self->_actionButton setHidden:0];
    actionButton = self->_actionButton;
    v5 = [v6 errorMessage];
    [(UIButton *)actionButton setTitle:v5 forState:0];
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

- (void)_updateViewsAndConstraintsForShowingDisabledApp:(BOOL)a3
{
  v3 = a3;
  [(UILabel *)self->_minorLabel setHidden:0];
  [(UILabel *)self->_ratingLabel setHidden:1];
  [(NSLayoutConstraint *)self->_ratingsLabelToBottomConstraint setActive:0];
  [(NSLayoutConstraint *)self->_minorLabelToBottomConsttraint setActive:1];
  [(NSLayoutConstraint *)self->_majorLabelToBottomConstraint setActive:0];
  [(UIButton *)self->_actionButton setHidden:!v3];
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

- (void)configureForLoadingStateWithDisabledRideBookingApplication:(id)a3
{
  v4 = a3;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  v5 = [v4 identifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = v5;

  v7 = [v4 name];
  [(UILabel *)self->_majorLabel setText:v7];

  v8 = [v4 iconWithFormat:2];

  [(UIImageView *)self->_iconImageView setImage:v8];

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingLoadingStateOfDisabledApp];
}

- (void)configureWithDisabledRideBookingApplication:(id)a3 showActionButton:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  v7 = [v6 identifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = v7;

  v9 = [v6 name];
  [(UILabel *)self->_majorLabel setText:v9];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Installed [Ridesharing]" value:@"localized string not found" table:0];
  [(UILabel *)self->_minorLabel setText:v11];

  v12 = [v6 iconWithFormat:2];

  [(UIImageView *)self->_iconImageView setImage:v12];

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingDisabledApp:v4];
}

- (void)configureForLoadingStateWithEnabledRideBookingApplication:(id)a3
{
  v4 = a3;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  v5 = [v4 identifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = v5;

  v7 = [v4 name];
  [(UILabel *)self->_majorLabel setText:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Checking for available rides..." value:@"localized string not found" table:0];
  [(UILabel *)self->_minorLabel setText:v9];

  v10 = [v4 iconWithFormat:2];

  [(UIImageView *)self->_iconImageView setImage:v10];

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingLoadingStateOfEnabledApp];
}

- (void)configureForErrorMessageWithRideBookingRideOptionStatus:(id)a3
{
  v13 = a3;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  v4 = [v13 application];
  v5 = [v4 identifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = v5;

  v7 = [v13 application];
  v8 = [v7 name];
  [(UILabel *)self->_majorLabel setText:v8];

  v9 = [v13 errorMessage];
  [(UILabel *)self->_minorLabel setText:v9];

  v10 = [v13 application];
  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();

  if (v8)
  {
    v11 = [v13 application];
    v12 = [v11 iconWithFormat:2];
    [(UIImageView *)self->_iconImageView setImage:v12];
  }

  [(RidesharingAppLargeIconTableViewCell *)self _updateViewsAndConstraintsForShowingErrorWithRideBookingRideOptionStatus:v13];
}

- (void)configureWithSuggestedApp:(id)a3
{
  v4 = a3;
  [(RidesharingAppLargeIconTableViewCell *)self _clearContent];
  v5 = [v4 iOSBundleIdentifier];
  applicationIdentifer = self->_applicationIdentifer;
  self->_applicationIdentifer = v5;

  v7 = [v4 displayName];
  [(UILabel *)self->_majorLabel setText:v7];

  [v4 ratingsValue];
  v9 = v8;
  v10 = [v4 ratingsCount];
  ratingLabel = self->_ratingLabel;
  v12 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 addingSymbolicTraits:0];
  v13 = +[UIColor secondaryLabelColor];
  v14 = [(RidesharingAppLargeIconTableViewCell *)self mk_theme];
  v15 = [MKStarRatingAndLabelView ratingAndReviewsAsAttributedString:1 style:v12 font:v10 numberOfReviews:v13 textColor:v14 theme:v9];
  [(UILabel *)ratingLabel setAttributedText:v15];

  v16 = [v4 artworkURL];
  lastRequestedImageURL = self->_lastRequestedImageURL;
  self->_lastRequestedImageURL = v16;

  v18 = +[MKAppImageManager sharedImageManager];
  v19 = [v4 artworkURL];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100B0847C;
  v20[3] = &unk_1016380F8;
  v20[4] = self;
  [v18 loadAppImageAtURL:v19 completionHandler:v20];

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
  v7 = [(UIButton *)self->_actionButton titleLabel];
  [v7 setFont:v6];

  v8 = [(UILabel *)self->_majorLabel font];
  [v8 _mapkit_scaledValueForValue:37.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_majorLabelBaselineToTopConstraint setConstant:?];

  v9 = [(UILabel *)self->_minorLabel font];
  [v9 _mapkit_scaledValueForValue:21.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_minorLabelBaselineToMajorLabelBaselineConstraint setConstant:?];

  v10 = [(UILabel *)self->_ratingLabel font];
  [v10 _mapkit_scaledValueForValue:18.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_ratingsLabelBaselineToMinorLabelBaselineConstraint setConstant:?];

  v11 = [(UIButton *)self->_actionButton titleLabel];
  v12 = [v11 font];
  [v12 _mapkit_scaledValueForValue:8.0];
  UIRoundToViewScale();
  v14 = v13;

  v15 = [(UIButton *)self->_actionButton titleLabel];
  v16 = [v15 font];
  [v16 _mapkit_scaledValueForValue:8.0];
  UIRoundToViewScale();
  v18 = v17;

  actionButton = self->_actionButton;

  [(UIButton *)actionButton setContentEdgeInsets:v14, v18, v14, v18];
}

- (void)_setupConstraints
{
  v3 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v4 = [v3 heightAnchor];
  +[RouteOverviewCell minimumRidesharingHeight];
  v149 = [v4 constraintEqualToConstant:?];

  LODWORD(v5) = *"";
  [v149 setPriority:v5];
  v6 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  v7 = [v6 firstBaselineAnchor];
  v8 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintGreaterThanOrEqualToAnchor:v9];
  majorLabelBaselineToTopConstraint = self->_majorLabelBaselineToTopConstraint;
  self->_majorLabelBaselineToTopConstraint = v10;

  v12 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  v13 = [v12 firstBaselineAnchor];
  v14 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  v15 = [v14 lastBaselineAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  minorLabelBaselineToMajorLabelBaselineConstraint = self->_minorLabelBaselineToMajorLabelBaselineConstraint;
  self->_minorLabelBaselineToMajorLabelBaselineConstraint = v16;

  v18 = [(RidesharingAppLargeIconTableViewCell *)self ratingLabel];
  v19 = [v18 firstBaselineAnchor];
  v20 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  v21 = [v20 lastBaselineAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  ratingsLabelBaselineToMinorLabelBaselineConstraint = self->_ratingsLabelBaselineToMinorLabelBaselineConstraint;
  self->_ratingsLabelBaselineToMinorLabelBaselineConstraint = v22;

  v24 = [(RidesharingAppLargeIconTableViewCell *)self ratingLabel];
  v25 = [v24 bottomAnchor];
  v26 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  ratingsLabelToBottomConstraint = self->_ratingsLabelToBottomConstraint;
  self->_ratingsLabelToBottomConstraint = v28;

  v30 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  v31 = [v30 bottomAnchor];
  v32 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v33 = [v32 bottomAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  minorLabelToBottomConsttraint = self->_minorLabelToBottomConsttraint;
  self->_minorLabelToBottomConsttraint = v34;

  v36 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  v37 = [v36 bottomAnchor];
  v38 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v39 = [v38 bottomAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  majorLabelToBottomConstraint = self->_majorLabelToBottomConstraint;
  self->_majorLabelToBottomConstraint = v40;

  v42 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  v43 = [v42 leadingAnchor];
  v44 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v45 = [v44 trailingAnchor];
  v46 = [v43 constraintEqualToAnchor:v45 constant:15.0];
  textToActionButtonConstraint = self->_textToActionButtonConstraint;
  self->_textToActionButtonConstraint = v46;

  v48 = [(RidesharingAppLargeIconTableViewCell *)self activityIndicatorView];
  v49 = [v48 leadingAnchor];
  v50 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v51 = [v50 trailingAnchor];
  v52 = [v49 constraintEqualToAnchor:v51 constant:25.0];
  textToActivityIndicatorConstraint = self->_textToActivityIndicatorConstraint;
  self->_textToActivityIndicatorConstraint = v52;

  v148 = objc_alloc_init(NSMutableArray);
  v147 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v145 = [v147 leadingAnchor];
  v146 = [(RidesharingAppLargeIconTableViewCell *)self ratingLabel];
  v144 = [v146 leadingAnchor];
  v143 = [v145 constraintEqualToAnchor:v144];
  v150[0] = v143;
  v142 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  v140 = [v142 leadingAnchor];
  v141 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v139 = [v141 leadingAnchor];
  v138 = [v140 constraintEqualToAnchor:v139 constant:16.0];
  v150[1] = v138;
  v137 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  v136 = [v137 widthAnchor];
  v135 = [v136 constraintEqualToConstant:62.0];
  v150[2] = v135;
  v134 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v132 = [v134 leadingAnchor];
  v133 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  v131 = [v133 trailingAnchor];
  v130 = [v132 constraintEqualToAnchor:v131 constant:13.0];
  v150[3] = v130;
  v129 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v127 = [v129 leadingAnchor];
  v128 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  v126 = [v128 leadingAnchor];
  v125 = [v127 constraintEqualToAnchor:v126];
  v150[4] = v125;
  v124 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v122 = [v124 leadingAnchor];
  v123 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  v121 = [v123 leadingAnchor];
  v120 = [v122 constraintEqualToAnchor:v121];
  v150[5] = v120;
  v119 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v117 = [v119 trailingAnchor];
  v118 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  v116 = [v118 trailingAnchor];
  v115 = [v117 constraintEqualToAnchor:v116];
  v150[6] = v115;
  v114 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v112 = [v114 trailingAnchor];
  v113 = [(RidesharingAppLargeIconTableViewCell *)self minorLabel];
  v111 = [v113 trailingAnchor];
  v110 = [v112 constraintEqualToAnchor:v111];
  v150[7] = v110;
  v109 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v107 = [v109 trailingAnchor];
  v108 = [(RidesharingAppLargeIconTableViewCell *)self ratingLabel];
  v106 = [v108 trailingAnchor];
  v105 = [v107 constraintEqualToAnchor:v106];
  v150[8] = v105;
  v104 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  v103 = [v104 widthAnchor];
  v102 = [v103 constraintGreaterThanOrEqualToConstant:47.0];
  v54 = self->_textToActionButtonConstraint;
  v150[9] = v102;
  v150[10] = v54;
  v101 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  v99 = [v101 trailingAnchor];
  v100 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v98 = [v100 trailingAnchor];
  v97 = [v99 constraintEqualToAnchor:v98 constant:-15.0];
  v150[11] = v97;
  v96 = [(RidesharingAppLargeIconTableViewCell *)self activityIndicatorView];
  v94 = [v96 trailingAnchor];
  v95 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v93 = [v95 trailingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93 constant:-37.0];
  v150[12] = v92;
  v150[13] = v149;
  v91 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  v89 = [v91 centerYAnchor];
  v90 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v88 = [v90 centerYAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v150[14] = v87;
  v86 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  v84 = [v86 heightAnchor];
  v85 = [(RidesharingAppLargeIconTableViewCell *)self iconImageView];
  v83 = [v85 widthAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v150[15] = v82;
  v81 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v79 = [v81 centerYAnchor];
  v80 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v78 = [v80 centerYAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v150[16] = v77;
  v76 = [(RidesharingAppLargeIconTableViewCell *)self majorLabel];
  v74 = [v76 topAnchor];
  v75 = [(RidesharingAppLargeIconTableViewCell *)self textLayoutGuide];
  v73 = [v75 topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v55 = self->_majorLabelBaselineToTopConstraint;
  v56 = self->_minorLabelBaselineToMajorLabelBaselineConstraint;
  v57 = self->_ratingsLabelBaselineToMinorLabelBaselineConstraint;
  v150[17] = v72;
  v150[18] = v55;
  v150[19] = v56;
  v150[20] = v57;
  v150[21] = self->_ratingsLabelToBottomConstraint;
  v71 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  v69 = [v71 centerYAnchor];
  v70 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v68 = [v70 centerYAnchor];
  v58 = [v69 constraintEqualToAnchor:v68];
  v150[22] = v58;
  v59 = [(RidesharingAppLargeIconTableViewCell *)self activityIndicatorView];
  v60 = [v59 centerYAnchor];
  v61 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  v62 = [v61 centerYAnchor];
  v63 = [v60 constraintEqualToAnchor:v62];
  v150[23] = v63;
  v64 = [(RidesharingAppLargeIconTableViewCell *)self actionButton];
  v65 = [v64 heightAnchor];
  v66 = [v65 constraintGreaterThanOrEqualToConstant:26.0];
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
  v4 = [(RidesharingAppLargeIconTableViewCell *)self theme];
  v5 = [v4 keyColor];
  [(UIButton *)actionButton setTitleColor:v5 forState:0];

  v6 = self->_actionButton;
  v7 = [(RidesharingAppLargeIconTableViewCell *)self theme];
  v8 = [v7 darkKeyColor];
  [(UIButton *)v6 setTitleColor:v8 forState:1];

  v9 = [(UILabel *)self->_ratingLabel attributedText];
  v10 = [v9 mutableCopy];

  v11 = +[UIColor secondaryLabelColor];
  [v10 addAttribute:NSForegroundColorAttributeName value:v11 range:{0, objc_msgSend(v10, "length")}];

  [(UILabel *)self->_ratingLabel setAttributedText:v10];
  v12 = [(RidesharingAppLargeIconTableViewCell *)self theme];
  -[UIActivityIndicatorView setActivityIndicatorViewStyle:](self->_activityIndicatorView, "setActivityIndicatorViewStyle:", [v12 activityIndicatorStyle]);
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
  v10 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [v10 addSubview:self->_majorLabel];

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
  v15 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [v15 addSubview:self->_minorLabel];

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
  v24 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [v24 addSubview:self->_actionButton];

  v25 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  activityIndicatorView = self->_activityIndicatorView;
  self->_activityIndicatorView = v25;

  [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setAccessibilityIdentifier:@"RideSharingActivityIndicator"];
  v27 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [v27 addSubview:self->_activityIndicatorView];

  v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  ratingLabel = self->_ratingLabel;
  self->_ratingLabel = v28;

  [(UILabel *)self->_ratingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_ratingLabel setNumberOfLines:0];
  [(UILabel *)self->_ratingLabel setLineBreakMode:0];
  LODWORD(v30) = 1148829696;
  [(UILabel *)self->_ratingLabel setContentCompressionResistancePriority:1 forAxis:v30];
  [(UILabel *)self->_ratingLabel setAccessibilityIdentifier:@"Ratings"];
  v31 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [v31 addSubview:self->_ratingLabel];

  v32 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v32;

  [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_iconImageView setAccessibilityIdentifier:@"Icon"];
  v34 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [v34 addSubview:self->_iconImageView];

  v35 = objc_alloc_init(UILayoutGuide);
  textLayoutGuide = self->_textLayoutGuide;
  self->_textLayoutGuide = v35;

  v37 = [(RidesharingAppLargeIconTableViewCell *)self contentView];
  [v37 addLayoutGuide:self->_textLayoutGuide];

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

- (RidesharingAppLargeIconTableViewCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = RidesharingAppLargeIconTableViewCell;
  v3 = [(MapsThemeCollectionViewCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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