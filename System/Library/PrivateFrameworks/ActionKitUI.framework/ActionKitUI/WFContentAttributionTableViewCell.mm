@interface WFContentAttributionTableViewCell
- (WFContentAttributionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)updateCellWithContentAttribution:(id)a3;
@end

@implementation WFContentAttributionTableViewCell

- (void)updateCellWithContentAttribution:(id)a3
{
  v5 = a3;
  v6 = [v5 origin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 appDescriptor], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bundleIdentifier"), v46 = objc_claimAutoreleasedReturnValue(), v7, v46))
  {
    v3 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v46 allowPlaceholder:0 error:0];
    v8 = [v3 localizedShortName];
    v9 = 0;
  }

  else
  {
    v46 = 0;
    v8 = 0;
    v9 = 1;
  }

  v10 = [(WFContentAttributionTableViewCell *)self bundleNameLabel];
  [v10 setText:v8];

  if ((v9 & 1) == 0)
  {
  }

  v11 = [(WFContentAttributionTableViewCell *)self bundleNameLabel];
  v12 = [v11 text];
  v13 = [v12 length] == 0;
  v14 = [(WFContentAttributionTableViewCell *)self bundleNameLabel];
  [v14 setHidden:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v6 accountIdentifier];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  [v16 setText:v15];

  v17 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  v18 = [v17 text];
  v19 = [v18 length] == 0;
  v20 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  [v20 setHidden:v19];

  v21 = [v6 managedLevel] - 1;
  if (v21 > 2)
  {
    v22 = @"None";
  }

  else
  {
    v22 = off_278C36980[v21];
  }

  v23 = [(WFContentAttributionTableViewCell *)self managedLevelLabel];
  [v23 setText:v22];

  v24 = [(WFContentAttributionTableViewCell *)self managedLevelLabel];
  v25 = [v24 text];
  v26 = [v25 length] == 0;
  v27 = [(WFContentAttributionTableViewCell *)self managedLevelLabel];
  [v27 setHidden:v26];

  v28 = MEMORY[0x277CCACA8];
  v29 = [v5 privateItemIdentifiers];
  v30 = [v28 stringWithFormat:@"%d privateItemIdentifiers", objc_msgSend(v29, "count")];
  v31 = [(WFContentAttributionTableViewCell *)self contentItemsCountLabel];
  [v31 setText:v30];

  v32 = [v5 disclosureLevel];
  if (v32 == 1)
  {
    v33 = @"Private";
  }

  else
  {
    v33 = @"Public";
  }

  v34 = [(WFContentAttributionTableViewCell *)self disclosureLevelLabel];
  [v34 setText:v33];

  v35 = [(WFContentAttributionTableViewCell *)self disclosureLevelLabel];
  v36 = [v35 text];
  v37 = [v36 length] == 0;
  v38 = [(WFContentAttributionTableViewCell *)self disclosureLevelLabel];
  [v38 setHidden:v37];

  v39 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  LODWORD(v36) = [v39 isHidden];

  if (v36)
  {
    v40 = 3;
  }

  else
  {
    v40 = 0;
  }

  v41 = [(WFContentAttributionTableViewCell *)self contentStackView];
  [v41 setAlignment:v40];

  v42 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  LODWORD(v41) = [v42 isHidden];
  v43 = [(WFContentAttributionTableViewCell *)self firstLineBaseLineConstaint];
  [v43 setActive:v41 ^ 1];

  v44 = [(WFContentAttributionTableViewCell *)self accountIdentifierLabel];
  LODWORD(v41) = [v44 isHidden];
  v45 = [(WFContentAttributionTableViewCell *)self secondLineBaseLineConstaint];
  [v45 setActive:v41 ^ 1];
}

- (WFContentAttributionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v86[3] = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = WFContentAttributionTableViewCell;
  v4 = [(WFContentAttributionTableViewCell *)&v82 initWithStyle:a3 reuseIdentifier:a4];
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

    v33 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

    v34 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [v34 setAxis:0];

    v35 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [v35 setSpacing:8.0];

    v36 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [v36 setAlignment:2];

    v37 = [(WFContentAttributionTableViewCell *)v4 contentView];
    v38 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    [v37 addSubview:v38];

    v67 = MEMORY[0x277CCAAD0];
    v79 = [(WFContentAttributionTableViewCell *)v4 contentView];
    v78 = [v79 layoutMarginsGuide];
    v76 = [v78 topAnchor];
    v77 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    v75 = [v77 layoutMarginsGuide];
    v74 = [v75 topAnchor];
    v73 = [v76 constraintEqualToAnchor:v74];
    v83[0] = v73;
    v72 = [(WFContentAttributionTableViewCell *)v4 contentView];
    v71 = [v72 layoutMarginsGuide];
    v69 = [v71 bottomAnchor];
    v70 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    v68 = [v70 layoutMarginsGuide];
    v66 = [v68 bottomAnchor];
    v65 = [v69 constraintEqualToAnchor:v66];
    v83[1] = v65;
    v64 = [(WFContentAttributionTableViewCell *)v4 contentView];
    v63 = [v64 layoutMarginsGuide];
    v61 = [v63 leadingAnchor];
    v62 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    v60 = [v62 layoutMarginsGuide];
    v59 = [v60 leadingAnchor];
    v39 = [v61 constraintEqualToAnchor:v59];
    v83[2] = v39;
    v40 = [(WFContentAttributionTableViewCell *)v4 contentView];
    v41 = [v40 layoutMarginsGuide];
    v42 = [v41 trailingAnchor];
    v43 = [(WFContentAttributionTableViewCell *)v4 contentStackView];
    v44 = [v43 layoutMarginsGuide];
    v45 = [v44 trailingAnchor];
    v46 = [v42 constraintEqualToAnchor:v45];
    v83[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
    [v67 activateConstraints:v47];

    v48 = [(UILabel *)v4->_bundleNameLabel firstBaselineAnchor];
    v49 = [(UILabel *)v4->_disclosureLevelLabel firstBaselineAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    firstLineBaseLineConstaint = v4->_firstLineBaseLineConstaint;
    v4->_firstLineBaseLineConstaint = v50;

    v52 = [(UILabel *)v4->_accountIdentifierLabel firstBaselineAnchor];
    v53 = [(UILabel *)v4->_managedLevelLabel firstBaselineAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    secondLineBaseLineConstaint = v4->_secondLineBaseLineConstaint;
    v4->_secondLineBaseLineConstaint = v54;

    v56 = v4;
  }

  v57 = *MEMORY[0x277D85DE8];
  return v4;
}

@end