@interface OfflineMapDetailsSectionController
- (OfflineMapDetailsActionSectionControllerDelegate)actionDelegate;
- (OfflineMapDetailsSectionController)initWithSubscriptionInfo:(id)a3;
- (double)regionNameBottomOffsetFromTop;
- (void)_commonInit;
- (void)_updateNameRowView;
- (void)_updateRowViews;
- (void)_updateSizeRowView;
- (void)_updateSnapshotRowView;
- (void)setSubscriptionInfo:(id)a3;
@end

@implementation OfflineMapDetailsSectionController

- (OfflineMapDetailsActionSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)_updateSizeRowView
{
  if (qword_10195DD78 != -1)
  {
    dispatch_once(&qword_10195DD78, &stru_10162F178);
  }

  v3 = qword_10195DD70;
  v4 = [(OfflineMapSectionController *)self subscriptionInfo];
  v5 = [v4 state];
  v6 = [v3 stringFromByteCount:{objc_msgSend(v5, "downloadedDataSize")}];
  [(UILabel *)self->_sizeRowView setText:v6];

  [(UILabel *)self->_sizeRowView setAccessibilityIdentifier:@"SizeRowView"];
  v7 = [(UILabel *)self->_sizeRowView text];
  [(UILabel *)self->_sizeRowView setAccessibilityLabel:v7];
}

- (void)_updateNameRowView
{
  v3 = [(OfflineMapSectionController *)self subscriptionInfo];
  v4 = [v3 subscription];
  v5 = [v4 displayName];
  if ([v5 length])
  {
    v6 = [(OfflineMapSectionController *)self subscriptionInfo];
    v7 = [v6 subscription];
    v8 = [v7 displayName];
    p_nameRowView = &self->_nameRowView;
    [(UILabel *)*p_nameRowView setText:v8];
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Offline Map" value:@"localized string not found" table:@"Offline"];
    p_nameRowView = &self->_nameRowView;
    [(UILabel *)*p_nameRowView setText:v7];
  }

  [(UILabel *)*p_nameRowView setAccessibilityIdentifier:@"NameRowView"];
  v10 = [(UILabel *)*p_nameRowView text];
  [(UILabel *)*p_nameRowView setAccessibilityLabel:v10];
}

- (void)_updateSnapshotRowView
{
  objc_initWeak(&location, self);
  v3 = [(OfflineMapSectionController *)self subscriptionInfo];
  [(OfflineMapSnapshotRowView *)self->_snapshotRowView setSubscriptionInfo:v3];

  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100938944;
  v7 = &unk_101656BC8;
  objc_copyWeak(&v8, &location);
  [(OfflineMapSnapshotRowView *)self->_snapshotRowView setActionBlock:&v4];
  [(OfflineMapSnapshotRowView *)self->_snapshotRowView setAccessibilityIdentifier:@"SnapshotRowView", v4, v5, v6, v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (double)regionNameBottomOffsetFromTop
{
  [(UILabel *)self->_nameRowView frame];

  return CGRectGetMaxY(*&v2);
}

- (void)setSubscriptionInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = OfflineMapDetailsSectionController;
  [(OfflineMapSectionController *)&v4 setSubscriptionInfo:a3];
  [(OfflineMapDetailsSectionController *)self _updateSnapshotRowView];
  [(OfflineMapDetailsSectionController *)self _updateNameRowView];
  [(OfflineMapDetailsSectionController *)self _updateSizeRowView];
  [(OfflineMapDetailsSectionController *)self _updateRowViews];
}

- (void)_updateRowViews
{
  v3 = [(UIStackView *)self->_sectionView arrangedSubviews];
  v4 = [v3 copy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v25 + 1) + 8 * v9) removeFromSuperview];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  nameRowView = self->_nameRowView;
  v30[0] = self->_snapshotRowView;
  v30[1] = nameRowView;
  v11 = [NSArray arrayWithObjects:v30 count:2];
  v12 = [NSMutableArray arrayWithArray:v11];

  v13 = [(OfflineMapSectionController *)self subscriptionInfo];
  v14 = [v13 state];
  v15 = [v14 downloadedDataCount];

  if (v15)
  {
    [v12 addObject:self->_sizeRowView];
  }

  [v12 addObject:self->_renameButton];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(UIStackView *)self->_sectionView addArrangedSubview:*(*(&v21 + 1) + 8 * v20), v21];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }

  [(UIStackView *)self->_sectionView setCustomSpacing:self->_snapshotRowView afterView:16.0];
}

- (void)_commonInit
{
  v3 = objc_alloc_init(UIStackView);
  sectionView = self->_sectionView;
  self->_sectionView = v3;

  [(UIStackView *)self->_sectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_sectionView setAxis:1];
  [(UIStackView *)self->_sectionView setAlignment:3];
  [(UIStackView *)self->_sectionView setDistribution:2];
  [(UIStackView *)self->_sectionView setSpacing:4.0];
  [(UIStackView *)self->_sectionView setLayoutMargins:0.0, 16.0, 0.0, 16.0];
  [(UIStackView *)self->_sectionView setLayoutMarginsRelativeArrangement:1];
  LODWORD(v5) = 1148846080;
  [(UIStackView *)self->_sectionView setContentHuggingPriority:1 forAxis:v5];
  v6 = objc_alloc_init(OfflineMapSnapshotRowView);
  snapshotRowView = self->_snapshotRowView;
  self->_snapshotRowView = v6;

  [(OfflineMapSnapshotRowView *)self->_snapshotRowView setTopHairlineHidden:1];
  [(OfflineMapSnapshotRowView *)self->_snapshotRowView setBottomHairlineHidden:1];
  LODWORD(v8) = 1148846080;
  [(OfflineMapSnapshotRowView *)self->_snapshotRowView setContentCompressionResistancePriority:1 forAxis:v8];
  [(OfflineMapDetailsSectionController *)self _updateSnapshotRowView];
  v9 = objc_alloc_init(UILabel);
  nameRowView = self->_nameRowView;
  self->_nameRowView = v9;

  v11 = [(UILabel *)self->_nameRowView traitCollection];
  v12 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v11 compatibleWithTraitCollection:UIFontWeightSemibold];
  [(UILabel *)self->_nameRowView setFont:v12];

  v13 = +[UIColor labelColor];
  [(UILabel *)self->_nameRowView setTextColor:v13];

  LODWORD(v14) = 1148846080;
  [(UILabel *)self->_nameRowView setContentCompressionResistancePriority:1 forAxis:v14];
  [(OfflineMapDetailsSectionController *)self _updateNameRowView];
  v15 = objc_alloc_init(UILabel);
  sizeRowView = self->_sizeRowView;
  self->_sizeRowView = v15;

  v17 = [(UILabel *)self->_sizeRowView traitCollection];
  v18 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:v17 compatibleWithTraitCollection:UIFontWeightRegular];
  [(UILabel *)self->_sizeRowView setFont:v18];

  v19 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_sizeRowView setTextColor:v19];

  LODWORD(v20) = 1148846080;
  [(UILabel *)self->_sizeRowView setContentCompressionResistancePriority:1 forAxis:v20];
  [(OfflineMapDetailsSectionController *)self _updateSizeRowView];
  objc_initWeak(&location, self);
  v21 = [UIButtonConfiguration _maps_pillButtonConfigurationWithImage:0];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100939200;
  v36[3] = &unk_101661900;
  objc_copyWeak(&v37, &location);
  v22 = [UIAction actionWithHandler:v36];
  v23 = [UIButton buttonWithConfiguration:v21 primaryAction:v22];
  renameButton = self->_renameButton;
  self->_renameButton = v23;

  v25 = self->_renameButton;
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"OFFLINE_DETAILS_RENAME" value:@"localized string not found" table:@"Offline"];
  [(UIButton *)v25 setTitle:v27 forState:0];

  [(UIButton *)self->_renameButton setAccessibilityIdentifier:@"RenameOfflineRegion"];
  v28 = [(UIButton *)self->_renameButton currentTitle];
  [(UIButton *)self->_renameButton setAccessibilityLabel:v28];

  LODWORD(v29) = 1148846080;
  [(UIButton *)self->_renameButton setContentCompressionResistancePriority:1 forAxis:v29];
  v30 = [(UIButton *)self->_renameButton heightAnchor];
  LODWORD(v31) = 1144766464;
  v32 = [v30 constraintEqualToConstant:32.0 priority:v31];
  v39[0] = v32;
  v33 = [(UIButton *)self->_renameButton heightAnchor];
  v34 = [v33 constraintGreaterThanOrEqualToConstant:32.0];
  v39[1] = v34;
  v35 = [NSArray arrayWithObjects:v39 count:2];
  [NSLayoutConstraint activateConstraints:v35];

  [(OfflineMapDetailsSectionController *)self _updateRowViews];
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (OfflineMapDetailsSectionController)initWithSubscriptionInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = OfflineMapDetailsSectionController;
  v3 = [(OfflineMapSectionController *)&v6 initWithSubscriptionInfo:a3];
  v4 = v3;
  if (v3)
  {
    [(OfflineMapDetailsSectionController *)v3 _commonInit];
  }

  return v4;
}

@end