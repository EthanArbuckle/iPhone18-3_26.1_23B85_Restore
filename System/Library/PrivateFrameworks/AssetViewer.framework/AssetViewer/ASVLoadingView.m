@interface ASVLoadingView
- (ASVLoadingView)initWithCoder:(id)a3;
- (ASVLoadingView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_updateLoadingSpinner;
- (void)_updateLoadingText;
- (void)setLoadingError:(id)a3;
- (void)setSpinnerColor:(unint64_t)a3;
@end

@implementation ASVLoadingView

- (ASVLoadingView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ASVLoadingView;
  v3 = [(ASVLoadingView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASVLoadingView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (ASVLoadingView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASVLoadingView;
  v3 = [(ASVLoadingView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ASVLoadingView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (void)_commonInit
{
  v42[7] = *MEMORY[0x277D85DE8];
  [(ASVLoadingView *)self setOpaque:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(ASVLoadingView *)self setBackgroundColor:v3];

  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  assetLoadingStatusLabel = self->_assetLoadingStatusLabel;
  self->_assetLoadingStatusLabel = v5;

  v7 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_assetLoadingStatusLabel setBackgroundColor:v7];

  [(UILabel *)self->_assetLoadingStatusLabel setNumberOfLines:0];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  [(UILabel *)self->_assetLoadingStatusLabel setFont:v8];

  v9 = [MEMORY[0x277D75348] colorWithHexValue:@"8E8E93" error:0];
  [(UILabel *)self->_assetLoadingStatusLabel setTextColor:v9];

  v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
  spinner = self->_spinner;
  self->_spinner = v10;

  [(UILabel *)self->_assetLoadingStatusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ASVLoadingView *)self addSubview:self->_assetLoadingStatusLabel];
  [(ASVLoadingView *)self addSubview:self->_spinner];
  v12 = [(UILabel *)self->_assetLoadingStatusLabel trailingAnchor];
  v13 = [(ASVLoadingView *)self trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  LODWORD(v15) = 1132068864;
  v41 = v14;
  [v14 setPriority:v15];
  v16 = [(UIActivityIndicatorView *)self->_spinner leadingAnchor];
  v17 = [(UILabel *)self->_assetLoadingStatusLabel trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:6.0];
  spinnerLeadingConstraint = self->_spinnerLeadingConstraint;
  self->_spinnerLeadingConstraint = v18;

  LODWORD(v20) = 1132134400;
  [(NSLayoutConstraint *)self->_spinnerLeadingConstraint setPriority:v20];
  v33 = MEMORY[0x277CCAAD0];
  v40 = [(UILabel *)self->_assetLoadingStatusLabel leadingAnchor];
  v39 = [(ASVLoadingView *)self leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v42[0] = v38;
  v42[1] = v14;
  v37 = [(UILabel *)self->_assetLoadingStatusLabel centerYAnchor];
  v36 = [(ASVLoadingView *)self centerYAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v42[2] = v35;
  v34 = [(UILabel *)self->_assetLoadingStatusLabel heightAnchor];
  v32 = [(ASVLoadingView *)self heightAnchor];
  v31 = [v34 constraintLessThanOrEqualToAnchor:v32];
  v42[3] = v31;
  v30 = [(UIActivityIndicatorView *)self->_spinner trailingAnchor];
  v21 = [(ASVLoadingView *)self trailingAnchor];
  v22 = [v30 constraintEqualToAnchor:v21];
  v42[4] = v22;
  v23 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  v24 = [(ASVLoadingView *)self centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v42[5] = v25;
  v26 = [(UIActivityIndicatorView *)self->_spinner heightAnchor];
  v27 = [(ASVLoadingView *)self heightAnchor];
  v28 = [v26 constraintLessThanOrEqualToAnchor:v27];
  v42[6] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:7];
  [v33 activateConstraints:v29];

  [(ASVLoadingView *)self _updateLoadingText];
  [(ASVLoadingView *)self _updateLoadingSpinner];
}

- (void)setLoadingError:(id)a3
{
  v5 = a3;
  if (self->_loadingError != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_loadingError, a3);
    [(ASVLoadingView *)self _updateLoadingText];
    [(ASVLoadingView *)self _updateLoadingSpinner];
    v5 = v6;
  }
}

- (void)setSpinnerColor:(unint64_t)a3
{
  if (self->_spinnerColor != a3)
  {
    self->_spinnerColor = a3;
  }

  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(UIActivityIndicatorView *)self->_spinner setActivityIndicatorViewStyle:v3];
}

- (void)_updateLoadingText
{
  v3 = [(ASVLoadingView *)self loadingError];

  if (v3)
  {
    v4 = [(ASVLoadingView *)self loadingError];
    v5 = [v4 domain];

    if (v5 == @"com.apple.ASVError")
    {
      v10 = [(ASVLoadingView *)self loadingError];
      v11 = [v10 code];

      if (v11 > -3)
      {
        if ((v11 + 2) <= 1)
        {
          v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
          v12 = v6;
          v7 = @"LOAD_FAILURE_FILE_TOO_BIG";
          goto LABEL_4;
        }
      }

      else
      {
        if (v11 == -5)
        {
          v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
          v12 = v6;
          v7 = @"VARIANTS_ERROR";
          goto LABEL_4;
        }

        if (v11 == -4)
        {
          v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
          v12 = v6;
          v7 = @"LOAD_FAILURE_UNSUPPORTED_FUTURE_FILE_VERSION";
          goto LABEL_4;
        }
      }
    }

    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
    v12 = v6;
    v7 = @"LOAD_FAILURE";
LABEL_4:
    v8 = [v6 localizedStringForKey:v7 value:v7 table:@"Localizable"];
    [(UILabel *)self->_assetLoadingStatusLabel setText:v8];

    return;
  }

  assetLoadingStatusLabel = self->_assetLoadingStatusLabel;

  [(UILabel *)assetLoadingStatusLabel setText:&stru_285305818];
}

- (void)_updateLoadingSpinner
{
  v3 = [(ASVLoadingView *)self loadingError];
  v4 = 0.0;
  if (!v3)
  {
    v4 = 1.0;
  }

  [(UIActivityIndicatorView *)self->_spinner setAlpha:v4];

  v5 = [(ASVLoadingView *)self loadingError];

  spinnerLeadingConstraint = self->_spinnerLeadingConstraint;
  if (v5)
  {
    [(NSLayoutConstraint *)spinnerLeadingConstraint setActive:0];
    spinner = self->_spinner;

    [(UIActivityIndicatorView *)spinner stopAnimating];
  }

  else
  {
    [(NSLayoutConstraint *)spinnerLeadingConstraint setConstant:0.0];
    [(NSLayoutConstraint *)self->_spinnerLeadingConstraint setActive:1];
    v8 = self->_spinner;

    [(UIActivityIndicatorView *)v8 startAnimating];
  }
}

@end