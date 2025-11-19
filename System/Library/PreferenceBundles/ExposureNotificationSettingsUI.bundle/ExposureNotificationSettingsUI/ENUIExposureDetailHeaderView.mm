@interface ENUIExposureDetailHeaderView
- (ENUIExposureDetailHeaderView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setUp;
- (void)tappedContinueButton:(id)a3;
@end

@implementation ENUIExposureDetailHeaderView

- (ENUIExposureDetailHeaderView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = ENUIExposureDetailHeaderView;
  v4 = [(ENUIExposureDetailHeaderView *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ENUIExposureDetailHeaderView *)v4 setUp];
    v6 = v5;
  }

  return v5;
}

- (void)setUp
{
  v3 = objc_opt_new();
  [(ENUIExposureDetailHeaderView *)self setAgencyNameLabel:v3];

  v4 = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  [v4 setNumberOfLines:0];

  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  v6 = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  [v6 setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  v8 = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  [v8 setTextColor:v7];

  v9 = objc_opt_new();
  [(ENUIExposureDetailHeaderView *)self setTitleLabel:v9];

  v10 = [(ENUIExposureDetailHeaderView *)self titleLabel];
  [v10 setNumberOfLines:0];

  v11 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 variant:1024];
  v12 = [(ENUIExposureDetailHeaderView *)self titleLabel];
  [v12 setFont:v11];

  v13 = +[UIColor labelColor];
  v14 = [(ENUIExposureDetailHeaderView *)self titleLabel];
  [v14 setTextColor:v13];

  v15 = objc_opt_new();
  [(ENUIExposureDetailHeaderView *)self setMessageTextView:v15];

  v16 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v16 textContainerInset];
  v18 = v17;
  v20 = v19;

  v21 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v21 setTextContainerInset:{v18, 0.0, v20, 0.0}];

  v22 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  v23 = [v22 textContainer];
  [v23 setLineFragmentPadding:0.0];

  v24 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v24 setScrollingEnabled:0];

  v25 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v25 setEditable:0];

  v26 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v26 setDataDetectorTypes:3];

  v27 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v28 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v28 setFont:v27];

  v29 = +[UIColor labelColor];
  v30 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v30 setTextColor:v29];

  v31 = +[UIColor clearColor];
  v32 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v32 setBackgroundColor:v31];

  v33 = +[OBBoldTrayButton boldButton];
  [(ENUIExposureDetailHeaderView *)self setContinueButton:v33];

  v34 = [(ENUIExposureDetailHeaderView *)self continueButton];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = [(ENUIExposureDetailHeaderView *)self continueButton];
  v36 = ENUILocalizedString();
  [v35 setTitle:v36 forState:0];

  v37 = [(ENUIExposureDetailHeaderView *)self continueButton];
  [v37 addTarget:self action:"tappedContinueButton:" forEvents:64];

  v38 = [UIStackView alloc];
  v39 = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  v70[0] = v39;
  v40 = [(ENUIExposureDetailHeaderView *)self titleLabel];
  v70[1] = v40;
  v41 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  v70[2] = v41;
  v42 = [NSArray arrayWithObjects:v70 count:3];
  v43 = [v38 initWithArrangedSubviews:v42];
  [(ENUIExposureDetailHeaderView *)self setHeaderStack:v43];

  v44 = [(ENUIExposureDetailHeaderView *)self headerStack];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

  v45 = [(ENUIExposureDetailHeaderView *)self headerStack];
  [v45 setAxis:1];

  v46 = [(ENUIExposureDetailHeaderView *)self contentView];
  v47 = [(ENUIExposureDetailHeaderView *)self headerStack];
  [v46 addSubview:v47];

  v68 = [(ENUIExposureDetailHeaderView *)self headerStack];
  v66 = [v68 topAnchor];
  v67 = [(ENUIExposureDetailHeaderView *)self contentView];
  v65 = [v67 topAnchor];
  v64 = [v66 constraintEqualToAnchor:v65 constant:16.0];
  v69[0] = v64;
  v63 = [(ENUIExposureDetailHeaderView *)self headerStack];
  v61 = [v63 leadingAnchor];
  v62 = [(ENUIExposureDetailHeaderView *)self contentView];
  v60 = [v62 leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60 constant:16.0];
  v69[1] = v59;
  v58 = [(ENUIExposureDetailHeaderView *)self headerStack];
  v48 = [v58 trailingAnchor];
  v49 = [(ENUIExposureDetailHeaderView *)self contentView];
  v50 = [v49 trailingAnchor];
  v51 = [v48 constraintEqualToAnchor:v50 constant:-16.0];
  v69[2] = v51;
  v52 = [(ENUIExposureDetailHeaderView *)self headerStack];
  v53 = [v52 bottomAnchor];
  v54 = [(ENUIExposureDetailHeaderView *)self contentView];
  v55 = [v54 bottomAnchor];
  v56 = [v53 constraintEqualToAnchor:v55 constant:-16.0];
  v69[3] = v56;
  v57 = [NSArray arrayWithObjects:v69 count:4];
  [NSLayoutConstraint activateConstraints:v57];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = [(ENUIExposureDetailHeaderView *)self specifier];
  v19 = [v4 userInfo];

  v5 = [v19 name];
  v6 = [(ENUIExposureDetailHeaderView *)self agencyNameLabel];
  [v6 setText:v5];

  v7 = [v19 title];
  v8 = [(ENUIExposureDetailHeaderView *)self titleLabel];
  [v8 setText:v7];

  v9 = [v19 message];
  v10 = [(ENUIExposureDetailHeaderView *)self messageTextView];
  [v10 setText:v9];

  v11 = [v19 learnMoreURL];
  [(ENUIExposureDetailHeaderView *)self setLearnMoreURL:v11];

  v12 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  v14 = +[UIApplication sharedApplication];
  v15 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
  v16 = [v14 canOpenURL:v15];

  if (v16)
  {
    v17 = [(ENUIExposureDetailHeaderView *)self headerStack];
    v18 = [(ENUIExposureDetailHeaderView *)self continueButton];
    [v17 addArrangedSubview:v18];
  }

  else
  {
LABEL_4:
    v17 = [(ENUIExposureDetailHeaderView *)self headerStack];
    v18 = [(ENUIExposureDetailHeaderView *)self continueButton];
    [v17 removeArrangedSubview:v18];
  }
}

- (void)tappedContinueButton:(id)a3
{
  v4 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
  if (v4)
  {
    v5 = v4;
    v6 = +[UIApplication sharedApplication];
    v7 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
    v8 = [v6 canOpenURL:v7];

    if (v8)
    {
      v10 = +[UIApplication sharedApplication];
      v9 = [(ENUIExposureDetailHeaderView *)self learnMoreURL];
      [v10 openURL:v9 options:&__NSDictionary0__struct completionHandler:0];
    }
  }
}

@end