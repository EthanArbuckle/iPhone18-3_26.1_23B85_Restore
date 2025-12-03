@interface ASVLoadingView
- (ASVLoadingView)initWithCoder:(id)coder;
- (ASVLoadingView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_updateLoadingSpinner;
- (void)_updateLoadingText;
- (void)setLoadingError:(id)error;
- (void)setSpinnerColor:(unint64_t)color;
@end

@implementation ASVLoadingView

- (ASVLoadingView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ASVLoadingView;
  v3 = [(ASVLoadingView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASVLoadingView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (ASVLoadingView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ASVLoadingView;
  v3 = [(ASVLoadingView *)&v7 initWithCoder:coder];
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ASVLoadingView *)self setBackgroundColor:clearColor];

  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  assetLoadingStatusLabel = self->_assetLoadingStatusLabel;
  self->_assetLoadingStatusLabel = v5;

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_assetLoadingStatusLabel setBackgroundColor:clearColor2];

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
  trailingAnchor = [(UILabel *)self->_assetLoadingStatusLabel trailingAnchor];
  trailingAnchor2 = [(ASVLoadingView *)self trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  LODWORD(v15) = 1132068864;
  v41 = v14;
  [v14 setPriority:v15];
  leadingAnchor = [(UIActivityIndicatorView *)self->_spinner leadingAnchor];
  trailingAnchor3 = [(UILabel *)self->_assetLoadingStatusLabel trailingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3 constant:6.0];
  spinnerLeadingConstraint = self->_spinnerLeadingConstraint;
  self->_spinnerLeadingConstraint = v18;

  LODWORD(v20) = 1132134400;
  [(NSLayoutConstraint *)self->_spinnerLeadingConstraint setPriority:v20];
  v33 = MEMORY[0x277CCAAD0];
  leadingAnchor2 = [(UILabel *)self->_assetLoadingStatusLabel leadingAnchor];
  leadingAnchor3 = [(ASVLoadingView *)self leadingAnchor];
  v38 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v42[0] = v38;
  v42[1] = v14;
  centerYAnchor = [(UILabel *)self->_assetLoadingStatusLabel centerYAnchor];
  centerYAnchor2 = [(ASVLoadingView *)self centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v42[2] = v35;
  heightAnchor = [(UILabel *)self->_assetLoadingStatusLabel heightAnchor];
  heightAnchor2 = [(ASVLoadingView *)self heightAnchor];
  v31 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
  v42[3] = v31;
  trailingAnchor4 = [(UIActivityIndicatorView *)self->_spinner trailingAnchor];
  trailingAnchor5 = [(ASVLoadingView *)self trailingAnchor];
  v22 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v42[4] = v22;
  centerYAnchor3 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  centerYAnchor4 = [(ASVLoadingView *)self centerYAnchor];
  v25 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v42[5] = v25;
  heightAnchor3 = [(UIActivityIndicatorView *)self->_spinner heightAnchor];
  heightAnchor4 = [(ASVLoadingView *)self heightAnchor];
  v28 = [heightAnchor3 constraintLessThanOrEqualToAnchor:heightAnchor4];
  v42[6] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:7];
  [v33 activateConstraints:v29];

  [(ASVLoadingView *)self _updateLoadingText];
  [(ASVLoadingView *)self _updateLoadingSpinner];
}

- (void)setLoadingError:(id)error
{
  errorCopy = error;
  if (self->_loadingError != errorCopy)
  {
    v6 = errorCopy;
    objc_storeStrong(&self->_loadingError, error);
    [(ASVLoadingView *)self _updateLoadingText];
    [(ASVLoadingView *)self _updateLoadingSpinner];
    errorCopy = v6;
  }
}

- (void)setSpinnerColor:(unint64_t)color
{
  if (self->_spinnerColor != color)
  {
    self->_spinnerColor = color;
  }

  if (color)
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
  loadingError = [(ASVLoadingView *)self loadingError];

  if (loadingError)
  {
    loadingError2 = [(ASVLoadingView *)self loadingError];
    domain = [loadingError2 domain];

    if (domain == @"com.apple.ASVError")
    {
      loadingError3 = [(ASVLoadingView *)self loadingError];
      code = [loadingError3 code];

      if (code > -3)
      {
        if ((code + 2) <= 1)
        {
          v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
          v12 = v6;
          v7 = @"LOAD_FAILURE_FILE_TOO_BIG";
          goto LABEL_4;
        }
      }

      else
      {
        if (code == -5)
        {
          v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
          v12 = v6;
          v7 = @"VARIANTS_ERROR";
          goto LABEL_4;
        }

        if (code == -4)
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
  loadingError = [(ASVLoadingView *)self loadingError];
  v4 = 0.0;
  if (!loadingError)
  {
    v4 = 1.0;
  }

  [(UIActivityIndicatorView *)self->_spinner setAlpha:v4];

  loadingError2 = [(ASVLoadingView *)self loadingError];

  spinnerLeadingConstraint = self->_spinnerLeadingConstraint;
  if (loadingError2)
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