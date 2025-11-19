@interface SFCreditCardCollectionViewCell
- (SFCreditCardCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureViewWithCardData:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SFCreditCardCollectionViewCell

- (SFCreditCardCollectionViewCell)initWithFrame:(CGRect)a3
{
  v104[2] = *MEMORY[0x1E69E9840];
  v99.receiver = self;
  v99.super_class = SFCreditCardCollectionViewCell;
  v3 = [(SFCreditCardCollectionViewCell *)&v99 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFCreditCardCollectionViewCell *)v3 setAccessibilityIdentifier:@"CreditCardCell"];
    v98 = [(SFCreditCardCollectionViewCell *)v4 contentView];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    cardNameLabel = v4->_cardNameLabel;
    v4->_cardNameLabel = v5;

    v7 = MEMORY[0x1E69DB878];
    v8 = *MEMORY[0x1E69DDD28];
    v9 = *MEMORY[0x1E69DDC70];
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v11 = [v7 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v10];
    [(UILabel *)v4->_cardNameLabel setFont:v11];

    v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"wallet.fill"];
    v14 = [v12 initWithImage:v13];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v14 setTintColor:v15];

    v16 = MEMORY[0x1E696ACD8];
    v17 = [v14 heightAnchor];
    v18 = [v17 constraintEqualToConstant:18.0];
    v104[0] = v18;
    v19 = [v14 widthAnchor];
    v20 = [v19 constraintEqualToConstant:20.0];
    v104[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
    [v16 activateConstraints:v21];

    v22 = objc_alloc_init(MEMORY[0x1E69DD298]);
    vibrantWalletImageView = v4->_vibrantWalletImageView;
    v4->_vibrantWalletImageView = v22;

    v96 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v24 = [MEMORY[0x1E69DD248] effectForBlurEffect:v96 style:1];
    [(UIVisualEffectView *)v4->_vibrantWalletImageView setEffect:v24];

    [(UIVisualEffectView *)v4->_vibrantWalletImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(UIVisualEffectView *)v4->_vibrantWalletImageView contentView];
    v97 = v14;
    [v25 addSubview:v14];

    v26 = MEMORY[0x1E696ACD8];
    v27 = [(UIVisualEffectView *)v4->_vibrantWalletImageView contentView];
    v28 = [v26 safari_constraintsMatchingFrameOfView:v14 withFrameOfView:v27];
    [v26 activateConstraints:v28];

    v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    cardDescriptionLabel = v4->_cardDescriptionLabel;
    v4->_cardDescriptionLabel = v29;

    v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_cardDescriptionLabel setTextColor:v31];

    v32 = MEMORY[0x1E69DB878];
    v33 = *MEMORY[0x1E69DDD08];
    v34 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v9];
    v35 = [v32 preferredFontForTextStyle:v33 compatibleWithTraitCollection:v34];
    [(UILabel *)v4->_cardDescriptionLabel setFont:v35];

    [(UILabel *)v4->_cardDescriptionLabel setLineBreakMode:5];
    [(UILabel *)v4->_cardDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = objc_alloc_init(MEMORY[0x1E69DD298]);
    v37 = [MEMORY[0x1E69DD248] effectForBlurEffect:v96 style:1];
    [v36 setEffect:v37];

    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v36 contentView];
    [v38 addSubview:v4->_cardDescriptionLabel];

    v39 = MEMORY[0x1E696ACD8];
    v40 = v4->_cardDescriptionLabel;
    v41 = v36;
    v95 = v36;
    v42 = [v36 contentView];
    v43 = [v39 safari_constraintsMatchingFrameOfView:v40 withFrameOfView:v42];
    [v39 activateConstraints:v43];

    v44 = objc_alloc(MEMORY[0x1E69DCF90]);
    v103[0] = v4->_vibrantWalletImageView;
    v103[1] = v41;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
    v46 = [v44 initWithArrangedSubviews:v45];
    cardDescriptionStackView = v4->_cardDescriptionStackView;
    v4->_cardDescriptionStackView = v46;

    [(UIStackView *)v4->_cardDescriptionStackView setAxis:0];
    [(UIStackView *)v4->_cardDescriptionStackView setAlignment:3];
    [(UIStackView *)v4->_cardDescriptionStackView setSpacing:4.0];
    [(UIStackView *)v4->_cardDescriptionStackView setLayoutMarginsRelativeArrangement:1];
    v48 = objc_alloc(MEMORY[0x1E69DCF90]);
    v102[0] = v4->_cardNameLabel;
    v102[1] = v4->_cardDescriptionStackView;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    v50 = [v48 initWithArrangedSubviews:v49];

    [v50 setAxis:1];
    [v50 setDistribution:2];
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = v50;
    [v50 setSpacing:2.0];
    v52 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v53 = SFLargeCreditCardIconForType();
    v54 = [v52 initWithImage:v53];
    cardArt = v4->_cardArt;
    v4->_cardArt = v54;

    [(UIImageView *)v4->_cardArt setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_cardArt setContentMode:1];
    v56 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v56 addSubview:v4->_cardArt];
    [v56 addSubview:v51];
    v80 = MEMORY[0x1E696ACD8];
    v92 = [(UIImageView *)v4->_cardArt centerYAnchor];
    v90 = [v56 centerYAnchor];
    v88 = [v92 constraintEqualToAnchor:v90];
    v101[0] = v88;
    v86 = [(UIImageView *)v4->_cardArt leadingAnchor];
    v84 = [v56 leadingAnchor];
    v82 = [v86 constraintEqualToAnchor:v84];
    v101[1] = v82;
    v78 = [v51 centerYAnchor];
    v77 = [v56 centerYAnchor];
    v57 = [v78 constraintEqualToAnchor:v77];
    v101[2] = v57;
    v58 = v51;
    v94 = v51;
    v59 = [v51 leadingAnchor];
    v60 = [(UIImageView *)v4->_cardArt trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:10.0];
    v101[3] = v61;
    v62 = [v56 trailingAnchor];
    v63 = [v58 trailingAnchor];
    v64 = [v62 constraintGreaterThanOrEqualToAnchor:v63];
    v101[4] = v64;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:5];
    [v80 activateConstraints:v65];

    [v98 addSubview:v56];
    v81 = MEMORY[0x1E696ACD8];
    v93 = [v56 centerYAnchor];
    v91 = [v98 centerYAnchor];
    v89 = [v93 constraintEqualToAnchor:v91];
    v100[0] = v89;
    v87 = [v56 topAnchor];
    v85 = [v98 topAnchor];
    v83 = [v87 constraintEqualToAnchor:v85];
    v100[1] = v83;
    v79 = [v56 leadingAnchor];
    v66 = [v98 layoutMarginsGuide];
    v67 = [v66 leadingAnchor];
    v68 = [v79 constraintEqualToAnchor:v67];
    v100[2] = v68;
    v69 = [v56 trailingAnchor];
    v70 = [v98 layoutMarginsGuide];
    v71 = [v70 trailingAnchor];
    v72 = [v69 constraintEqualToAnchor:v71];
    v100[3] = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
    [v81 activateConstraints:v73];

    v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v74 _setContinuousCornerRadius:12.0];
    [(SFCreditCardCollectionViewCell *)v4 setBackgroundView:v74];
    v75 = v4;
  }

  return v4;
}

- (void)configureViewWithCardData:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_cardData, a3);
    v6 = [v5 cardName];
    if ([v6 length])
    {
      [v5 cardName];
    }

    else
    {
      _WBSLocalizedString();
    }
    v7 = ;

    [(UILabel *)self->_cardNameLabel setText:v7];
    [(UIStackView *)self->_cardDescriptionStackView directionalLayoutMargins];
    v9 = v8;
    v11 = v10;
    if ([v5 shouldShowWalletIconNextToCardDisplayText])
    {
      v12 = -2.0;
    }

    else
    {
      v12 = 0.0;
    }

    if ([v5 shouldShowWalletIconNextToCardDisplayText])
    {
      v13 = -4.0;
    }

    else
    {
      v13 = 0.0;
    }

    [(UIStackView *)self->_cardDescriptionStackView setDirectionalLayoutMargins:v9, v12, v13, v11];
    -[UIVisualEffectView setHidden:](self->_vibrantWalletImageView, "setHidden:", [v5 shouldShowWalletIconNextToCardDisplayText] ^ 1);
    v14 = [v5 cardDisplayText];
    [(UILabel *)self->_cardDescriptionLabel setText:v14];

    if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
    {
      v15 = [(WBSCreditCardData *)self->_cardData isVirtualCard];
      v16 = v15;
      if (v15)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 4.0;
      }

      v18 = 56.0;
      if (!v15)
      {
        v18 = 36.0;
      }

      v19 = [v5 cardArtworkWithSize:v18];
      [(UIImageView *)self->_cardArt setImage:v19];

      [(UIImageView *)self->_cardArt setAlpha:1.0];
      v20 = [(UIImageView *)self->_cardArt layer];
      [v20 setCornerRadius:v17];

      v21 = [(UIImageView *)self->_cardArt layer];
      [v21 setMasksToBounds:v16 ^ 1u];
    }

    else if ([v5 isVirtualCard])
    {
      [(UIImageView *)self->_cardArt setAlpha:0.0];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __60__SFCreditCardCollectionViewCell_configureViewWithCardData___block_invoke;
      v27 = &unk_1E8491878;
      v28 = self;
      v29 = v5;
      [v29 virtualCardArtworkWithSize:&v24 completionHandler:{56.0, 36.0}];
    }

    else
    {
      v22 = [v5 cardNumber];
      WBSCreditCardTypeFromNumber();
      v23 = SFLargeCreditCardIconForType();
      [(UIImageView *)self->_cardArt setImage:v23];

      [(UIImageView *)self->_cardArt setAlpha:1.0];
    }

    [(SFCreditCardCollectionViewCell *)self setNeedsLayout:v24];
  }
}

void __60__SFCreditCardCollectionViewCell_configureViewWithCardData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (WBSIsEqual())
  {
    [*(*(a1 + 32) + 656) setImage:v3];
    [*(*(a1 + 32) + 656) setAlpha:1.0];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SFCreditCardCollectionViewCell *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = SFCreditCardCollectionViewCell;
  [(SFCreditCardCollectionViewCell *)&v8 setHighlighted:v3];
  if (v5 != v3)
  {
    if (v3)
    {
      [MEMORY[0x1E69DC888] systemFillColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v6 = ;
    v7 = [(SFCreditCardCollectionViewCell *)self backgroundView];
    [v7 setBackgroundColor:v6];
  }
}

@end