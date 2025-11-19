@interface AKSignatureTableViewCell
- (AKSignatureTableViewCell)initWithCoder:(id)a3;
- (AKSignatureTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_commonInit;
- (void)_setImageFromSignature;
- (void)_setLabelFromSignature;
- (void)layoutSubviews;
- (void)setSignature:(id)a3;
@end

@implementation AKSignatureTableViewCell

- (AKSignatureTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AKSignatureTableViewCell;
  v4 = [(AKSignatureTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AKSignatureTableViewCell *)v4 _commonInit];
  }

  return v5;
}

- (AKSignatureTableViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AKSignatureTableViewCell;
  v3 = [(AKSignatureTableViewCell *)&v6 initWithCoder:a3];
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

  v9 = [(AKSignatureTableViewCell *)self contentView];
  v10 = [(AKSignatureTableViewCell *)self signatureImageView];
  [v9 addSubview:v10];

  v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  [(AKSignatureTableViewCell *)self setSignatureLabel:v11];

  v12 = [(AKSignatureTableViewCell *)self signatureLabel];
  v13 = 2 * ([v12 effectiveUserInterfaceLayoutDirection] != 1);
  v14 = [(AKSignatureTableViewCell *)self signatureLabel];
  [v14 setTextAlignment:v13];

  v15 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] smallSystemFontSize];
  v16 = [v15 systemFontOfSize:?];
  v17 = [(AKSignatureTableViewCell *)self signatureLabel];
  [v17 setFont:v16];

  v18 = [MEMORY[0x277D75348] secondaryLabelColor];
  v19 = [(AKSignatureTableViewCell *)self signatureLabel];
  [v19 setTextColor:v18];

  v21 = [(AKSignatureTableViewCell *)self contentView];
  v20 = [(AKSignatureTableViewCell *)self signatureLabel];
  [v21 addSubview:v20];
}

- (void)setSignature:(id)a3
{
  v5 = a3;
  if (self->_signature != v5)
  {
    v7 = v5;
    v6 = [(AKSignatureTableViewCell *)self signatureImageView];
    [v6 setImage:0];

    objc_storeStrong(&self->_signature, a3);
    [(AKSignatureTableViewCell *)self _setLabelFromSignature];
    [(AKSignatureTableViewCell *)self _setImageFromSignature];
    v5 = v7;
  }
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = AKSignatureTableViewCell;
  [(AKSignatureTableViewCell *)&v29 layoutSubviews];
  v3 = [(AKSignatureTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4 + 30.0;
  v7 = v6 + 10.0;
  v9 = v8 + -60.0;
  v11 = v10 + -20.0;

  v12 = [(AKSignatureTableViewCell *)self signatureImageView];
  v13 = [v12 contentMode];

  if (v13 == 4)
  {
    v14 = [(AKSignatureTableViewCell *)self signatureImageView];
    [v14 setFrame:{v5, v7, v9, v11}];

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
    v25 = [(AKSignatureTableViewCell *)self signatureImageView];
    [v25 setFrame:{x, y, width, height}];

    v16 = v27.origin.y;
    v15 = v27.origin.x;
    v18 = v27.size.height;
    v17 = v27.size.width;
  }

  v26 = [(AKSignatureTableViewCell *)self signatureLabel];
  [v26 setFrame:{v15, v16, v17, v18}];

  [(AKSignatureTableViewCell *)self _setImageFromSignature];
}

- (void)_setImageFromSignature
{
  v3 = [(AKSignatureTableViewCell *)self signatureImageView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v13 = 0;
  if (v5 > 0.0 && v7 > 0.0)
  {
    v8 = [(AKSignatureTableViewCell *)self traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v9 == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v10 = ;
    v11 = [(AKSignatureTableViewCell *)self signature];
    v13 = [AKAnnotationImageHelper imageOfSize:v10 withFillColor:v11 forSignature:v5, v7];
  }

  v12 = [(AKSignatureTableViewCell *)self signatureImageView];
  [v12 setImage:v13];
}

- (void)_setLabelFromSignature
{
  v3 = [(AKSignatureTableViewCell *)self signature];
  v4 = [v3 descriptionTag];

  if (v4)
  {
    v5 = [(AKSignatureTableViewCell *)self signature];
    v6 = [v5 descriptionTag];

    if (v6 == -1)
    {
      v7 = [(AKSignatureTableViewCell *)self signature];
      v9 = [v7 customDescription];
    }

    else
    {
      v9 = [AKSignatureDescription stringValueForSignatureDescriptionTag:v6];
    }

    v8 = [(AKSignatureTableViewCell *)self signatureLabel];
    [v8 setText:v9];
  }

  else
  {
    v9 = [(AKSignatureTableViewCell *)self signatureLabel];
    [v9 setText:0];
  }
}

- (id)accessibilityLabel
{
  v2 = [(AKSignatureTableViewCell *)self signature];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(AKSignatureTableViewCell *)self signature];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end