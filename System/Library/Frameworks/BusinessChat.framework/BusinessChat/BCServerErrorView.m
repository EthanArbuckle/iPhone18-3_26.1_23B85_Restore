@interface BCServerErrorView
- (BCServerErrorView)init;
@end

@implementation BCServerErrorView

- (BCServerErrorView)init
{
  v67[6] = *MEMORY[0x277D85DE8];
  v65.receiver = self;
  v65.super_class = BCServerErrorView;
  v2 = [(BCServerErrorView *)&v65 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x277D75348] colorNamed:@"ServerErrorMessageColor" inBundle:v3 compatibleWithTraitCollection:0];
    v5 = [MEMORY[0x277D75348] colorNamed:@"ServerErrorBackgroundColor" inBundle:v3 compatibleWithTraitCollection:0];
    [(BCServerErrorView *)v2 setBackgroundColor:v5];
    v6 = objc_opt_new();
    contentView = v2->_contentView;
    v2->_contentView = v6;

    v8 = objc_opt_new();
    messageLabel = v2->_messageLabel;
    v2->_messageLabel = v8;

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v2->_messageLabel setFont:v10];

    [(UILabel *)v2->_messageLabel setTextColor:v4];
    v11 = +[BCShared classBundle];
    v12 = [v11 localizedStringForKey:@"SERVER_ERROR_MESSAGE" value:&stru_2849DDCD8 table:0];
    [(UILabel *)v2->_messageLabel setText:v12];

    [(UILabel *)v2->_messageLabel setTextAlignment:1];
    [(UILabel *)v2->_messageLabel setNumberOfLines:0];
    v13 = v2->_messageLabel;
    v14 = v2->_contentView;
    [(UIView *)v14 addSubview:v13];

    [(BCServerErrorView *)v2 addSubview:v2->_contentView];
    [(UIView *)v2->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v2->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = MEMORY[0x277CCAAD0];
    v63 = v2->_contentView;
    v61 = [(UIView *)v63 topAnchor];
    v59 = [(BCServerErrorView *)v2 topAnchor];
    v57 = [v61 constraintGreaterThanOrEqualToAnchor:v59 constant:20.0];
    v67[0] = v57;
    v55 = v2->_contentView;
    v53 = [(UIView *)v55 leftAnchor];
    v51 = [(BCServerErrorView *)v2 leftAnchor];
    v49 = [v53 constraintGreaterThanOrEqualToAnchor:v51 constant:20.0];
    v67[1] = v49;
    v45 = v2->_contentView;
    v43 = [(UIView *)v45 rightAnchor];
    v41 = [(BCServerErrorView *)v2 rightAnchor];
    v39 = [v43 constraintLessThanOrEqualToAnchor:v41 constant:-20.0];
    v67[2] = v39;
    v38 = v2->_contentView;
    v37 = [(UIView *)v38 bottomAnchor];
    v36 = [(BCServerErrorView *)v2 bottomAnchor];
    v35 = [v37 constraintLessThanOrEqualToAnchor:v36 constant:-20.0];
    v67[3] = v35;
    v15 = v2->_contentView;
    v16 = [(UIView *)v15 centerXAnchor];
    v17 = [(BCServerErrorView *)v2 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v67[4] = v18;
    v19 = v2->_contentView;
    v20 = [(UIView *)v19 centerYAnchor];
    v21 = [(BCServerErrorView *)v2 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v67[5] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:6];
    [v47 activateConstraints:v23];

    v48 = MEMORY[0x277CCAAD0];
    v64 = v2->_messageLabel;
    v62 = [(UILabel *)v64 topAnchor];
    v60 = v2->_contentView;
    v58 = [(UIView *)v60 topAnchor];
    v56 = [v62 constraintEqualToAnchor:v58];
    v66[0] = v56;
    v54 = v2->_messageLabel;
    v52 = [(UILabel *)v54 leadingAnchor];
    v50 = v2->_contentView;
    v46 = [(UIView *)v50 leadingAnchor];
    v44 = [v52 constraintEqualToAnchor:v46];
    v66[1] = v44;
    v42 = v2->_messageLabel;
    v40 = [(UILabel *)v42 trailingAnchor];
    v24 = v2->_contentView;
    v25 = [(UIView *)v24 trailingAnchor];
    v26 = [v40 constraintEqualToAnchor:v25];
    v66[2] = v26;
    v27 = v2->_messageLabel;
    v28 = [(UILabel *)v27 bottomAnchor];
    v29 = v2->_contentView;
    v30 = [(UIView *)v29 bottomAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    v66[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
    [v48 activateConstraints:v32];
  }

  v33 = *MEMORY[0x277D85DE8];
  return v2;
}

@end