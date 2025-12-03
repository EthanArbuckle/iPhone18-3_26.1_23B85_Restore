@interface AKSignatureTableViewCell
- (AKSignatureTableViewCell)initWithCoder:(id)coder;
- (AKSignatureTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_commonInit;
- (void)_setImageFromSignature;
- (void)_setLabelFromSignature;
- (void)layoutSubviews;
- (void)setSignature:(id)signature;
@end

@implementation AKSignatureTableViewCell

- (AKSignatureTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AKSignatureTableViewCell;
  v4 = [(AKSignatureTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AKSignatureTableViewCell *)v4 _commonInit];
  }

  return v5;
}

- (AKSignatureTableViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AKSignatureTableViewCell;
  v3 = [(AKSignatureTableViewCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AKSignatureTableViewCell *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [(AKSignatureTableViewCell *)self setSignatureImageView:v8];

  contentView = [(AKSignatureTableViewCell *)self contentView];
  signatureImageView = [(AKSignatureTableViewCell *)self signatureImageView];
  [contentView addSubview:signatureImageView];

  v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  [(AKSignatureTableViewCell *)self setSignatureLabel:v11];

  signatureLabel = [(AKSignatureTableViewCell *)self signatureLabel];
  v13 = 2 * ([signatureLabel effectiveUserInterfaceLayoutDirection] != 1);
  signatureLabel2 = [(AKSignatureTableViewCell *)self signatureLabel];
  [signatureLabel2 setTextAlignment:v13];

  v15 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] smallSystemFontSize];
  v16 = [v15 systemFontOfSize:?];
  signatureLabel3 = [(AKSignatureTableViewCell *)self signatureLabel];
  [signatureLabel3 setFont:v16];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  signatureLabel4 = [(AKSignatureTableViewCell *)self signatureLabel];
  [signatureLabel4 setTextColor:secondaryLabelColor];

  contentView2 = [(AKSignatureTableViewCell *)self contentView];
  signatureLabel5 = [(AKSignatureTableViewCell *)self signatureLabel];
  [contentView2 addSubview:signatureLabel5];
}

- (void)setSignature:(id)signature
{
  signatureCopy = signature;
  if (self->_signature != signatureCopy)
  {
    v7 = signatureCopy;
    signatureImageView = [(AKSignatureTableViewCell *)self signatureImageView];
    [signatureImageView setImage:0];

    objc_storeStrong(&self->_signature, signature);
    [(AKSignatureTableViewCell *)self _setLabelFromSignature];
    [(AKSignatureTableViewCell *)self _setImageFromSignature];
    signatureCopy = v7;
  }
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = AKSignatureTableViewCell;
  [(AKSignatureTableViewCell *)&v29 layoutSubviews];
  contentView = [(AKSignatureTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4 + 30.0;
  v7 = v6 + 10.0;
  v9 = v8 + -60.0;
  v11 = v10 + -20.0;

  signatureImageView = [(AKSignatureTableViewCell *)self signatureImageView];
  contentMode = [signatureImageView contentMode];

  if (contentMode == 4)
  {
    signatureImageView2 = [(AKSignatureTableViewCell *)self signatureImageView];
    [signatureImageView2 setFrame:{v5, v7, v9, v11}];

    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    memset(&slice, 0, sizeof(slice));
    memset(&v27, 0, sizeof(v27));
    v19 = 2 * ([(AKSignatureTableViewCell *)self effectiveUserInterfaceLayoutDirection]== 1);
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    v20 = CGRectGetWidth(v30) * 0.618;
    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    CGRectDivide(v31, &slice, &v27, v20, v19);
    x = slice.origin.x;
    y = slice.origin.y;
    width = slice.size.width;
    height = slice.size.height;
    signatureImageView3 = [(AKSignatureTableViewCell *)self signatureImageView];
    [signatureImageView3 setFrame:{x, y, width, height}];

    v16 = v27.origin.y;
    v15 = v27.origin.x;
    v18 = v27.size.height;
    v17 = v27.size.width;
  }

  signatureLabel = [(AKSignatureTableViewCell *)self signatureLabel];
  [signatureLabel setFrame:{v15, v16, v17, v18}];

  [(AKSignatureTableViewCell *)self _setImageFromSignature];
}

- (void)_setImageFromSignature
{
  signatureImageView = [(AKSignatureTableViewCell *)self signatureImageView];
  [signatureImageView bounds];
  v5 = v4;
  v7 = v6;

  v13 = 0;
  if (v5 > 0.0 && v7 > 0.0)
  {
    traitCollection = [(AKSignatureTableViewCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v10 = ;
    signature = [(AKSignatureTableViewCell *)self signature];
    v13 = [AKAnnotationImageHelper imageOfSize:v10 withFillColor:signature forSignature:v5, v7];
  }

  signatureImageView2 = [(AKSignatureTableViewCell *)self signatureImageView];
  [signatureImageView2 setImage:v13];
}

- (void)_setLabelFromSignature
{
  signature = [(AKSignatureTableViewCell *)self signature];
  descriptionTag = [signature descriptionTag];

  if (descriptionTag)
  {
    signature2 = [(AKSignatureTableViewCell *)self signature];
    descriptionTag2 = [signature2 descriptionTag];

    if (descriptionTag2 == -1)
    {
      signature3 = [(AKSignatureTableViewCell *)self signature];
      customDescription = [signature3 customDescription];
    }

    else
    {
      customDescription = [AKSignatureDescription stringValueForSignatureDescriptionTag:descriptionTag2];
    }

    signatureLabel = [(AKSignatureTableViewCell *)self signatureLabel];
    [signatureLabel setText:customDescription];
  }

  else
  {
    customDescription = [(AKSignatureTableViewCell *)self signatureLabel];
    [customDescription setText:0];
  }
}

- (id)accessibilityLabel
{
  signature = [(AKSignatureTableViewCell *)self signature];
  accessibilityLabel = [signature accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  signature = [(AKSignatureTableViewCell *)self signature];
  accessibilityValue = [signature accessibilityValue];

  return accessibilityValue;
}

@end