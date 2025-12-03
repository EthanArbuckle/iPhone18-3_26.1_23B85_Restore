@interface WFContentAttributionTableViewCell
- (WFContentAttributionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)updateCellWithContentAttribution:(id)attribution;
@end

@implementation WFContentAttributionTableViewCell

- (void)updateCellWithContentAttribution:(id)attribution
{
  attributionCopy = attribution;
  origin = [attributionCopy origin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([origin appDescriptor], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bundleIdentifier"), v46 = objc_claimAutoreleasedReturnValue(), v7, v46))
  {
    v3 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v46 allowPlaceholder:0 error:0];
    localizedShortName = [v3 localizedShortName];
    v9 = 0;
  }

  else
  {
    v46 = 0;
    localizedShortName = 0;
    v9 = 1;
  }

  bundleNameLabel = [(WFContentAttributionTableViewCell *)self bundleNameLabel];
  [bundleNameLabel setText:localizedShortName];

  if ((v9 & 1) == 0)
  {
  }

  bundleNameLabel2 = [(WFContentAttributionTableViewCell *)self bundleNameLabel];
  text = [bundleNameLabel2 text];
  v13 = [text length] == 0;
  bundleNameLabel3 = [(WFContentAttributionTableViewCell *)self bundleNameLabel];
  [bundleNameLabel3 setHidden:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountIdentifier = [origin accountIdentifier];
  }

  else
  {
    accountIdentifier = 0;
  }

  accountIdentifierLabel = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  [accountIdentifierLabel setText:accountIdentifier];

  accountIdentifierLabel2 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  text2 = [accountIdentifierLabel2 text];
  v19 = [text2 length] == 0;
  accountIdentifierLabel3 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  [accountIdentifierLabel3 setHidden:v19];

  v21 = [origin managedLevel] - 1;
  if (v21 > 2)
  {
    v22 = @"None";
  }

  else
  {
    v22 = off_278C36980[v21];
  }

  managedLevelLabel = [(WFContentAttributionTableViewCell *)self managedLevelLabel];
  [managedLevelLabel setText:v22];

  managedLevelLabel2 = [(WFContentAttributionTableViewCell *)self managedLevelLabel];
  text3 = [managedLevelLabel2 text];
  v26 = [text3 length] == 0;
  managedLevelLabel3 = [(WFContentAttributionTableViewCell *)self managedLevelLabel];
  [managedLevelLabel3 setHidden:v26];

  v28 = MEMORY[0x277CCACA8];
  privateItemIdentifiers = [attributionCopy privateItemIdentifiers];
  v30 = [v28 stringWithFormat:@"%d privateItemIdentifiers", objc_msgSend(privateItemIdentifiers, "count")];
  contentItemsCountLabel = [(WFContentAttributionTableViewCell *)self contentItemsCountLabel];
  [contentItemsCountLabel setText:v30];

  disclosureLevel = [attributionCopy disclosureLevel];
  if (disclosureLevel == 1)
  {
    v33 = @"Private";
  }

  else
  {
    v33 = @"Public";
  }

  disclosureLevelLabel = [(WFContentAttributionTableViewCell *)self disclosureLevelLabel];
  [disclosureLevelLabel setText:v33];

  disclosureLevelLabel2 = [(WFContentAttributionTableViewCell *)self disclosureLevelLabel];
  text4 = [disclosureLevelLabel2 text];
  v37 = [text4 length] == 0;
  disclosureLevelLabel3 = [(WFContentAttributionTableViewCell *)self disclosureLevelLabel];
  [disclosureLevelLabel3 setHidden:v37];

  accountIdentifierLabel4 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  LODWORD(text4) = [accountIdentifierLabel4 isHidden];

  if (text4)
  {
    v40 = 3;
  }

  else
  {
    v40 = 0;
  }

  contentStackView = [(WFContentAttributionTableViewCell *)self contentStackView];
  [contentStackView setAlignment:v40];

  accountIdentifierLabel5 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  LODWORD(contentStackView) = [accountIdentifierLabel5 isHidden];
  firstLineBaseLineConstaint = [(WFContentAttributionTableViewCell *)self firstLineBaseLineConstaint];
  [firstLineBaseLineConstaint setActive:contentStackView ^ 1];

  accountIdentifierLabel6 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  LODWORD(contentStackView) = [accountIdentifierLabel6 isHidden];
  secondLineBaseLineConstaint = [(WFContentAttributionTableViewCell *)self secondLineBaseLineConstaint];
  [secondLineBaseLineConstaint setActive:contentStackView ^ 1];
}

- (WFContentAttributionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v86[3] = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = WFContentAttributionTableViewCell;
  v4 = [(WFContentAttributionTableViewCell *)&v82 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    bundleNameLabel = v4->_bundleNameLabel;
    v4->_bundleNameLabel = v5;

    [(UILabel *)v4->_bundleNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *MEMORY[0x277D76918];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_bundleNameLabel setFont:v8];

    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    accountIdentifierLabel = v4->_accountIdentifierLabel;
    v4->_accountIdentifierLabel = v9;

    [(UILabel *)v4->_accountIdentifierLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:v7];
    [(UILabel *)v4->_accountIdentifierLabel setFont:v11];

    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    managedLevelLabel = v4->_managedLevelLabel;
    v4->_managedLevelLabel = v12;

    [(UILabel *)v4->_managedLevelLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = *MEMORY[0x277D76938];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [(UILabel *)v4->_managedLevelLabel setFont:v15];

    v16 = objc_alloc_init(MEMORY[0x277D756B8]);
    disclosureLevelLabel = v4->_disclosureLevelLabel;
    v4->_disclosureLevelLabel = v16;

    [(UILabel *)v4->_disclosureLevelLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:v14];
    [(UILabel *)v4->_disclosureLevelLabel setFont:v18];

    v19 = objc_alloc_init(MEMORY[0x277D756B8]);
    contentItemsCountLabel = v4->_contentItemsCountLabel;
    v4->_contentItemsCountLabel = v19;

    [(UILabel *)v4->_contentItemsCountLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:v14];
    [(UILabel *)v4->_contentItemsCountLabel setFont:v21];

    v22 = objc_alloc(MEMORY[0x277D75A68]);
    v86[0] = v4->_bundleNameLabel;
    v86[1] = v4->_accountIdentifierLabel;
    v86[2] = v4->_contentItemsCountLabel;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:3];
    v24 = [v22 initWithArrangedSubviews:v23];

    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAxis:1];
    [v24 setSpacing:8.0];
    [v24 setAlignment:1];
    v25 = v24;
    v81 = v24;
    [v24 setDistribution:1];
    v26 = objc_alloc(MEMORY[0x277D75A68]);
    v85[0] = v4->_disclosureLevelLabel;
    v85[1] = v4->_managedLevelLabel;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
    v28 = [v26 initWithArrangedSubviews:v27];

    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setAxis:1];
    [v28 setSpacing:8.0];
    [v28 setAlignment:4];
    v29 = v28;
    v80 = v28;
    [v28 setDistribution:1];
    v30 = objc_alloc(MEMORY[0x277D75A68]);
    v84[0] = v25;
    v84[1] = v29;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
    v32 = [v30 initWithArrangedSubviews:v31];
    [(WFContentAttributionTableViewCell *)v4 setContentStackView:v32];

    contentStackView = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentStackView2 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [contentStackView2 setAxis:0];

    contentStackView3 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [contentStackView3 setSpacing:8.0];

    contentStackView4 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [contentStackView4 setAlignment:2];

    contentView = [(WFContentAttributionTableViewCell *)v4 contentView];
    contentStackView5 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [contentView addSubview:contentStackView5];

    v67 = MEMORY[0x277CCAAD0];
    contentView2 = [(WFContentAttributionTableViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    topAnchor = [layoutMarginsGuide topAnchor];
    contentStackView6 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    layoutMarginsGuide2 = [contentStackView6 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v73 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v83[0] = v73;
    contentView3 = [(WFContentAttributionTableViewCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide3 bottomAnchor];
    contentStackView7 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    layoutMarginsGuide4 = [contentStackView7 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v65 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v83[1] = v65;
    contentView4 = [(WFContentAttributionTableViewCell *)v4 contentView];
    layoutMarginsGuide5 = [contentView4 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide5 leadingAnchor];
    contentStackView8 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    layoutMarginsGuide6 = [contentStackView8 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide6 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v83[2] = v39;
    contentView5 = [(WFContentAttributionTableViewCell *)v4 contentView];
    layoutMarginsGuide7 = [contentView5 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide7 trailingAnchor];
    contentStackView9 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    layoutMarginsGuide8 = [contentStackView9 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide8 trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v83[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
    [v67 activateConstraints:v47];

    firstBaselineAnchor = [(UILabel *)v4->_bundleNameLabel firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)v4->_disclosureLevelLabel firstBaselineAnchor];
    v50 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    firstLineBaseLineConstaint = v4->_firstLineBaseLineConstaint;
    v4->_firstLineBaseLineConstaint = v50;

    firstBaselineAnchor3 = [(UILabel *)v4->_accountIdentifierLabel firstBaselineAnchor];
    firstBaselineAnchor4 = [(UILabel *)v4->_managedLevelLabel firstBaselineAnchor];
    v54 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
    secondLineBaseLineConstaint = v4->_secondLineBaseLineConstaint;
    v4->_secondLineBaseLineConstaint = v54;

    v56 = v4;
  }

  v57 = *MEMORY[0x277D85DE8];
  return v4;
}

@end