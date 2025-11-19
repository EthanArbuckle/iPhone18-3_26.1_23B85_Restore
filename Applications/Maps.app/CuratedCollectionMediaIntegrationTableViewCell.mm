@interface CuratedCollectionMediaIntegrationTableViewCell
+ (id)reuseIdentifier;
- (CGPoint)mediaIntegrationMenuAttachmentPointForConfiguration:(id)a3;
- (CuratedCollectionMediaIntegrationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CuratedCollectionMediaIntegrationTableViewCellDelegate)delegate;
- (id)_allMenuElementsForMediaIntegration:(id)a3;
- (id)_buildDeferredMenuElementForMediaIntegration:(id)a3;
- (id)_buildMenuElementForViewModel:(id)a3;
- (id)mediaIntegrationMenuConfigurationWithInteraction:(id)a3;
- (void)_addSubviews;
- (void)_loadImageIfNeeded;
- (void)_loadMenuActionImages;
- (void)_setupBaseConstraints;
- (void)_setupCornerRadius;
- (void)_setupShadows;
- (void)_updateLogoConstraintsAndVisibility;
- (void)_updateViews;
- (void)layoutSubviews;
- (void)mediaIntegrationMenuWillAppear;
- (void)mediaIntegrationMenuWillDisappear;
- (void)prepareForReuse;
- (void)setPosition:(unint64_t)a3;
- (void)setViewModel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CuratedCollectionMediaIntegrationTableViewCell

- (CuratedCollectionMediaIntegrationTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mediaIntegrationMenuWillDisappear
{
  v2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [v2 setAlpha:1.0];
}

- (void)mediaIntegrationMenuWillAppear
{
  v3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [v3 setAlpha:0.5];

  v4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self delegate];
  [v4 mediaIntegrationCellDidDisplayChildLinks:self];
}

- (CGPoint)mediaIntegrationMenuAttachmentPointForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [v5 menuAttachmentPointForConfiguration:v4];
  v7 = v6;
  v9 = v8;

  v10 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v11 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [v10 convertPoint:v11 fromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (id)mediaIntegrationMenuConfigurationWithInteraction:(id)a3
{
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setMediaIntegrationMenuInteraction:a3];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10081FF9C;
  v6[3] = &unk_101660440;
  v6[4] = self;
  v4 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];
  [v4 setPreferredMenuElementOrder:2];

  return v4;
}

- (id)_buildMenuElementForViewModel:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedSystemFirstPartyName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 title];
  }

  v8 = v7;

  v9 = [v4 systemFirstPartyIcon];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    cachedAppImagesByIdentifiers = self->_cachedAppImagesByIdentifiers;
    v13 = [v4 identifier];
    v11 = [(NSMutableDictionary *)cachedAppImagesByIdentifiers objectForKeyedSubscript:v13];
  }

  objc_initWeak(&location, self);
  v14 = [v4 identifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100820258;
  v18[3] = &unk_101660418;
  objc_copyWeak(&v20, &location);
  v15 = v4;
  v19 = v15;
  v16 = [UIAction actionWithTitle:v8 image:v11 identifier:v14 handler:v18];

  [v16 setAccessibilityIdentifier:@"CuratedCollectionMediaMenuItem"];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v16;
}

- (id)_allMenuElementsForMediaIntegration:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray alloc];
  v6 = [v4 childViewModels];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count") + 1}];

  v8 = [(CuratedCollectionMediaIntegrationTableViewCell *)self _buildMenuElementForViewModel:v4];
  [v7 addObject:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v4 childViewModels];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(CuratedCollectionMediaIntegrationTableViewCell *)self _buildMenuElementForViewModel:*(*(&v16 + 1) + 8 * i)];
        [v7 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v7;
}

- (id)_buildDeferredMenuElementForMediaIntegration:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100820564;
  v8[3] = &unk_10162B648;
  v5 = v4;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [UIDeferredMenuElement elementWithProvider:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v6;
}

- (void)_updateLogoConstraintsAndVisibility
{
  v3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self activeLogoConstraints];
  [NSLayoutConstraint deactivateConstraints:v3];

  v4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  v5 = [v4 childViewModels];
  v6 = [v5 count];

  v7 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  v8 = v7;
  if (v6)
  {
    [v7 setHidden:1];

    v9 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
    v10 = [v9 topAnchor];
    v11 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
    v12 = [v11 topAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:16.0];
    v32 = v13;
    v14 = [NSArray arrayWithObjects:&v32 count:1];
  }

  else
  {
    [v7 setHidden:0];

    v30 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
    v27 = [v30 heightAnchor];
    v25 = [v27 constraintEqualToConstant:12.0];
    v33[0] = v25;
    v12 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
    v13 = [v12 topAnchor];
    v31 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
    v29 = [v31 topAnchor];
    v28 = [v13 constraintEqualToAnchor:v29 constant:16.0];
    v33[1] = v28;
    v26 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
    v23 = [v26 leadingAnchor];
    v24 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
    v22 = [v24 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22 constant:16.0];
    v33[2] = v21;
    v15 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
    v16 = [v15 topAnchor];
    v17 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
    v18 = [v17 bottomAnchor];
    v19 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
    [v19 logoToTitlePadding];
    v20 = [v16 constraintEqualToAnchor:v18 constant:?];
    v33[3] = v20;
    v14 = [NSArray arrayWithObjects:v33 count:4];

    v11 = v25;
    v10 = v27;

    v9 = v30;
  }

  [NSLayoutConstraint activateConstraints:v14];
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setActiveLogoConstraints:v14];
}

- (void)_setupBaseConstraints
{
  v3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v4 = [v3 topAnchor];
  v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setTopMarginConstraint:v7];

  v8 = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  v9 = [v8 bottomAnchor];
  v10 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setBottomMarginConstraint:v12];

  v106 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v104 = [v106 leadingAnchor];
  v105 = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  v103 = [v105 leadingAnchor];
  v102 = [v104 constraintEqualToAnchor:v103 constant:16.0];
  v107[0] = v102;
  v101 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v99 = [v101 trailingAnchor];
  v100 = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  v98 = [v100 trailingAnchor];
  v97 = [v99 constraintEqualToAnchor:v98 constant:-16.0];
  v107[1] = v97;
  v96 = [(CuratedCollectionMediaIntegrationTableViewCell *)self topMarginConstraint];
  v107[2] = v96;
  v95 = [(CuratedCollectionMediaIntegrationTableViewCell *)self bottomMarginConstraint];
  v107[3] = v95;
  v94 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  v92 = [v94 leadingAnchor];
  v93 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v91 = [v93 leadingAnchor];
  v90 = [v92 constraintEqualToAnchor:v91 constant:16.0];
  v107[4] = v90;
  v89 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  v87 = [v89 trailingAnchor];
  v88 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v86 = [v88 leadingAnchor];
  v85 = [v87 constraintEqualToAnchor:v86 constant:-10.0];
  v107[5] = v85;
  v84 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  v82 = [v84 topAnchor];
  v83 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  v81 = [v83 bottomAnchor];
  v80 = [v82 constraintEqualToAnchor:v81 constant:2.0];
  v107[6] = v80;
  v79 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  v77 = [v79 leadingAnchor];
  v78 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v76 = [v78 leadingAnchor];
  v75 = [v77 constraintEqualToAnchor:v76 constant:16.0];
  v107[7] = v75;
  v74 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  v72 = [v74 trailingAnchor];
  v73 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v71 = [v73 leadingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71 constant:-10.0];
  v107[8] = v70;
  v69 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  v67 = [v69 topAnchor];
  v68 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  v66 = [v68 bottomAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:8.0];
  v107[9] = v65;
  v64 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  v62 = [v64 leadingAnchor];
  v63 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v61 = [v63 leadingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61 constant:16.0];
  v107[10] = v60;
  v59 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  v57 = [v59 trailingAnchor];
  v58 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v56 = [v58 trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:-16.0];
  v107[11] = v55;
  v54 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  v52 = [v54 bottomAnchor];
  v53 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v51 = [v53 bottomAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:-16.0];
  v107[12] = v50;
  v49 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  v47 = [v49 topAnchor];
  v48 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  v46 = [v48 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v107[13] = v45;
  v44 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  v42 = [v44 leadingAnchor];
  v43 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v107[14] = v40;
  v39 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  v37 = [v39 trailingAnchor];
  v38 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  v36 = [v38 trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v107[15] = v35;
  v34 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  v32 = [v34 bottomAnchor];
  v33 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  v31 = [v33 bottomAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v107[16] = v30;
  v29 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v27 = [v29 topAnchor];
  v28 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:16.0];
  v107[17] = v25;
  v24 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v23 = [v24 trailingAnchor];
  v13 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v14 = [v13 trailingAnchor];
  v15 = [v23 constraintEqualToAnchor:v14 constant:-16.0];
  v107[18] = v15;
  v16 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:64.0];
  v107[19] = v18;
  v19 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v20 = [v19 widthAnchor];
  v21 = [v20 constraintEqualToConstant:64.0];
  v107[20] = v21;
  v22 = [NSArray arrayWithObjects:v107 count:21];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)_addSubviews
{
  v3 = objc_alloc_init(CuratedCollectionMediaIntegrationPlatterControl);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setPlatterView:v3];

  v4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [v4 setAccessibilityIdentifier:@"PlatterView"];

  v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  v6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [v5 addSubview:v6];

  v7 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [v8 setInteractionDelegate:self];

  v9 = objc_alloc_init(UILabel);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setTitleLabel:v9];

  if (sub_10000FA08(self) == 5)
  {
    v10 = [(CuratedCollectionMediaIntegrationTableViewCell *)self traitCollection];
    v11 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle3 weight:v10 compatibleWithTraitCollection:UIFontWeightSemibold];
    v12 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
    [v12 setFont:v11];
  }

  else
  {
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    v11 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
    [v11 setFont:v10];
  }

  v13 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [v13 setNumberOfLines:2];

  v14 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [v14 setLineBreakStrategy:0];

  v15 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [v15 setAccessibilityIdentifier:@"TitleLabel"];

  v16 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v17 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [v16 addSubview:v17];

  v18 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = sub_10000FA08(self);
  v20 = &UIFontTextStyleBody;
  if (v19 != 5)
  {
    v20 = &UIFontTextStyleSubheadline;
  }

  v58 = [UIFont preferredFontForTextStyle:*v20];
  v21 = objc_alloc_init(UILabel);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setSubtitleLabel:v21];

  v22 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [v22 setFont:v58];

  v23 = +[UIColor secondaryLabelColor];
  v24 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [v24 setTextColor:v23];

  v25 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [v25 setAccessibilityIdentifier:@"SubtitleLabel"];

  v26 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v27 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [v26 addSubview:v27];

  v28 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = objc_alloc_init(UILabel);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setActionLabel:v29];

  v30 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [v30 setFont:v58];

  v31 = +[UIColor systemBlueColor];
  v32 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [v32 setTextColor:v31];

  v33 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [v33 setAccessibilityIdentifier:@"ActionLabel"];

  v34 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v35 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [v34 addSubview:v35];

  v36 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = objc_alloc_init(UIControl);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setActionControl:v37];

  v38 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [v38 setAccessibilityIdentifier:@"ActionControl"];

  v39 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v40 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [v39 addSubview:v40];

  v41 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = objc_alloc_init(UIImageView);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setLogoImageView:v42];

  v43 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [v43 setContentMode:2];

  v44 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [v44 setAccessibilityIdentifier:@"LogoImageView"];

  v45 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v46 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [v45 addSubview:v46];

  v47 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = objc_alloc_init(UIImageView);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setArtworkImageView:v48];

  v49 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [v49 setAccessibilityIdentifier:@"ArtworkImageView"];

  v50 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v51 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [v50 addSubview:v51];

  v52 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];

  v53 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v54 = [v53 layer];
  [v54 setMasksToBounds:1];

  v55 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v56 = [v55 layer];
  [v56 setCornerRadius:8.0];

  v57 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [v57 setContentMode:2];
}

- (void)_setupCornerRadius
{
  v3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v4 = [v3 layer];
  [v4 setCornerRadius:10.0];

  v6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  v5 = [v6 layer];
  [v5 setMasksToBounds:1];
}

- (void)_setupShadows
{
  v3 = +[UIColor systemBlackColor];
  v4 = [v3 CGColor];
  v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v6 = [v5 layer];
  [v6 setShadowColor:v4];

  v7 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v8 = [v7 layer];
  LODWORD(v9) = 1025758986;
  [v8 setShadowOpacity:v9];

  v10 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v11 = [v10 layer];
  [v11 setShadowOffset:{0.0, 2.0}];

  v12 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v13 = [v12 layer];
  [v13 setShadowRadius:5.0];

  v15 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  v14 = [v15 layer];
  [v14 setShadowPathIsBounds:1];
}

- (void)_loadImageIfNeeded
{
  v3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  height = CGSizeZero.height;

  if (v5 == CGSizeZero.width && v7 == height)
  {

    [(CuratedCollectionMediaIntegrationTableViewCell *)self setNeedsLayout];
  }

  else if ([(CuratedCollectionMediaIntegrationTableViewCell *)self needsImageLoad])
  {
    [(CuratedCollectionMediaIntegrationTableViewCell *)self setNeedsImageLoad:0];
    v10 = self->_viewModel;
    objc_initWeak(&location, self);
    v11 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
    [v11 frame];
    v13 = v12;
    v15 = v14;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100822094;
    v17[3] = &unk_1016531A0;
    objc_copyWeak(&v19, &location);
    v16 = v10;
    v18 = v16;
    [(CuratedCollectionMediaIntegrationViewModel *)v16 loadImageForSize:v17 completion:v13, v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)_loadMenuActionImages
{
  v3 = +[MKSystemController sharedInstance];
  [v3 screenScale];
  v5 = v4;

  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008224D4;
  block[3] = &unk_101660490;
  objc_copyWeak(&v8, &location);
  v9 = vdupq_n_s64(0x4044000000000000uLL);
  v10 = v5;
  dispatch_async(utilityQueue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_updateViews
{
  v3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  v4 = [v3 title];
  v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [v5 setText:v4];

  v6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  v7 = [v6 subtitle];
  v8 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [v8 setText:v7];

  v9 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  v10 = [v9 actionText];
  v11 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [v11 setText:v10];

  v12 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  v13 = [v12 realmIcon];
  v14 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [v14 setImage:v13];

  [(CuratedCollectionMediaIntegrationTableViewCell *)self _loadImageIfNeeded];
  v16 = +[UIColor secondarySystemGroupedBackgroundColor];
  v15 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [v15 setBackgroundColor:v16];
}

- (void)setPosition:(unint64_t)a3
{
  if (self->_position != a3)
  {
    self->_position = a3;
    if (a3 >= 2)
    {
      if (a3 == 2)
      {
        v6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self topMarginConstraint];
        [v6 setConstant:0.0];

        v7 = [(CuratedCollectionMediaIntegrationTableViewCell *)self bottomMarginConstraint];
        [v7 setConstant:16.0];
      }
    }

    else
    {
      v4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self topMarginConstraint];
      [v4 setConstant:16.0];

      v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self bottomMarginConstraint];
      [v5 setConstant:0.0];

      [(CuratedCollectionMediaIntegrationTableViewCell *)self setSeparatorInset:0.0, 0.0, 0.0, 1.79769313e308];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CuratedCollectionMediaIntegrationTableViewCell;
  v4 = a3;
  [(CuratedCollectionMediaIntegrationTableViewCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(CuratedCollectionMediaIntegrationTableViewCell *)self _updateViews];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionMediaIntegrationTableViewCell;
  [(CuratedCollectionMediaIntegrationTableViewCell *)&v3 layoutSubviews];
  [(CuratedCollectionMediaIntegrationTableViewCell *)self _loadImageIfNeeded];
}

- (void)prepareForReuse
{
  self->_needsImageLoad = 0;
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setViewModel:0];
  v3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [v3 setImage:0];

  v4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [v4 setText:0];

  v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [v5 setText:0];

  [(CuratedCollectionMediaIntegrationTableViewCell *)self setMediaIntegrationMenuInteraction:0];
  v6.receiver = self;
  v6.super_class = CuratedCollectionMediaIntegrationTableViewCell;
  [(CuratedCollectionMediaIntegrationTableViewCell *)&v6 prepareForReuse];
}

- (void)setViewModel:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_viewModel, a3);
  if (self->_viewModel)
  {
    [(CuratedCollectionMediaIntegrationTableViewCell *)self _updateLogoConstraintsAndVisibility];
    self->_needsImageLoad = 1;
    [(CuratedCollectionMediaIntegrationTableViewCell *)self _updateViews];
    v5 = [v6 childViewModels];
    -[CuratedCollectionMediaIntegrationPlatterControl setEnabled:](self->_platterView, "setEnabled:", [v5 count] != 0);

    [(CuratedCollectionMediaIntegrationTableViewCell *)self _loadMenuActionImages];
  }
}

- (CuratedCollectionMediaIntegrationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = CuratedCollectionMediaIntegrationTableViewCell;
  v4 = [(CuratedCollectionMediaIntegrationTableViewCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(CuratedCollectionMediaIntegrationTableViewCell *)v4 setBackgroundColor:v5];

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.Maps.CuratedCollectionMediaIntegrationTableViewCell", v6);
    utilityQueue = v4->_utilityQueue;
    v4->_utilityQueue = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(CuratedCollectionMediaIntegrationTableViewCell *)v4 setAccessibilityIdentifier:v10];

    [(CuratedCollectionMediaIntegrationTableViewCell *)v4 _addSubviews];
    [(CuratedCollectionMediaIntegrationTableViewCell *)v4 _setupBaseConstraints];
    [(CuratedCollectionMediaIntegrationTableViewCell *)v4 _setupCornerRadius];
    [(CuratedCollectionMediaIntegrationTableViewCell *)v4 _setupShadows];
    v11 = +[NSMutableDictionary dictionary];
    cachedAppImagesByIdentifiers = v4->_cachedAppImagesByIdentifiers;
    v4->_cachedAppImagesByIdentifiers = v11;

    [(CuratedCollectionMediaIntegrationTableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end