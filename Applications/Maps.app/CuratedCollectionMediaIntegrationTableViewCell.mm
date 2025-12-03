@interface CuratedCollectionMediaIntegrationTableViewCell
+ (id)reuseIdentifier;
- (CGPoint)mediaIntegrationMenuAttachmentPointForConfiguration:(id)configuration;
- (CuratedCollectionMediaIntegrationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CuratedCollectionMediaIntegrationTableViewCellDelegate)delegate;
- (id)_allMenuElementsForMediaIntegration:(id)integration;
- (id)_buildDeferredMenuElementForMediaIntegration:(id)integration;
- (id)_buildMenuElementForViewModel:(id)model;
- (id)mediaIntegrationMenuConfigurationWithInteraction:(id)interaction;
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
- (void)setPosition:(unint64_t)position;
- (void)setViewModel:(id)model;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CuratedCollectionMediaIntegrationTableViewCell

- (CuratedCollectionMediaIntegrationTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mediaIntegrationMenuWillDisappear
{
  actionLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [actionLabel setAlpha:1.0];
}

- (void)mediaIntegrationMenuWillAppear
{
  actionLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [actionLabel setAlpha:0.5];

  delegate = [(CuratedCollectionMediaIntegrationTableViewCell *)self delegate];
  [delegate mediaIntegrationCellDidDisplayChildLinks:self];
}

- (CGPoint)mediaIntegrationMenuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  actionControl = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [actionControl menuAttachmentPointForConfiguration:configurationCopy];
  v7 = v6;
  v9 = v8;

  platterView = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  actionControl2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [platterView convertPoint:actionControl2 fromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (id)mediaIntegrationMenuConfigurationWithInteraction:(id)interaction
{
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setMediaIntegrationMenuInteraction:interaction];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10081FF9C;
  v6[3] = &unk_101660440;
  v6[4] = self;
  v4 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];
  [v4 setPreferredMenuElementOrder:2];

  return v4;
}

- (id)_buildMenuElementForViewModel:(id)model
{
  modelCopy = model;
  localizedSystemFirstPartyName = [modelCopy localizedSystemFirstPartyName];
  v6 = localizedSystemFirstPartyName;
  if (localizedSystemFirstPartyName)
  {
    title = localizedSystemFirstPartyName;
  }

  else
  {
    title = [modelCopy title];
  }

  v8 = title;

  systemFirstPartyIcon = [modelCopy systemFirstPartyIcon];
  v10 = systemFirstPartyIcon;
  if (systemFirstPartyIcon)
  {
    v11 = systemFirstPartyIcon;
  }

  else
  {
    cachedAppImagesByIdentifiers = self->_cachedAppImagesByIdentifiers;
    identifier = [modelCopy identifier];
    v11 = [(NSMutableDictionary *)cachedAppImagesByIdentifiers objectForKeyedSubscript:identifier];
  }

  objc_initWeak(&location, self);
  identifier2 = [modelCopy identifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100820258;
  v18[3] = &unk_101660418;
  objc_copyWeak(&v20, &location);
  v15 = modelCopy;
  v19 = v15;
  v16 = [UIAction actionWithTitle:v8 image:v11 identifier:identifier2 handler:v18];

  [v16 setAccessibilityIdentifier:@"CuratedCollectionMediaMenuItem"];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v16;
}

- (id)_allMenuElementsForMediaIntegration:(id)integration
{
  integrationCopy = integration;
  v5 = [NSMutableArray alloc];
  childViewModels = [integrationCopy childViewModels];
  v7 = [v5 initWithCapacity:{objc_msgSend(childViewModels, "count") + 1}];

  v8 = [(CuratedCollectionMediaIntegrationTableViewCell *)self _buildMenuElementForViewModel:integrationCopy];
  [v7 addObject:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  childViewModels2 = [integrationCopy childViewModels];
  v10 = [childViewModels2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(childViewModels2);
        }

        v14 = [(CuratedCollectionMediaIntegrationTableViewCell *)self _buildMenuElementForViewModel:*(*(&v16 + 1) + 8 * i)];
        [v7 addObject:v14];
      }

      v11 = [childViewModels2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v7;
}

- (id)_buildDeferredMenuElementForMediaIntegration:(id)integration
{
  integrationCopy = integration;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100820564;
  v8[3] = &unk_10162B648;
  v5 = integrationCopy;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [UIDeferredMenuElement elementWithProvider:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v6;
}

- (void)_updateLogoConstraintsAndVisibility
{
  activeLogoConstraints = [(CuratedCollectionMediaIntegrationTableViewCell *)self activeLogoConstraints];
  [NSLayoutConstraint deactivateConstraints:activeLogoConstraints];

  viewModel = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  childViewModels = [viewModel childViewModels];
  v6 = [childViewModels count];

  logoImageView = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  v8 = logoImageView;
  if (v6)
  {
    [logoImageView setHidden:1];

    titleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
    topAnchor = [titleLabel topAnchor];
    platterView = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
    topAnchor2 = [platterView topAnchor];
    v12TopAnchor = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v32 = v12TopAnchor;
    v14 = [NSArray arrayWithObjects:&v32 count:1];
  }

  else
  {
    [logoImageView setHidden:0];

    logoImageView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
    heightAnchor = [logoImageView2 heightAnchor];
    v25 = [heightAnchor constraintEqualToConstant:12.0];
    v33[0] = v25;
    topAnchor2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
    v12TopAnchor = [topAnchor2 topAnchor];
    platterView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
    topAnchor3 = [platterView2 topAnchor];
    v28 = [v12TopAnchor constraintEqualToAnchor:topAnchor3 constant:16.0];
    v33[1] = v28;
    logoImageView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
    leadingAnchor = [logoImageView3 leadingAnchor];
    platterView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
    leadingAnchor2 = [platterView3 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v33[2] = v21;
    titleLabel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
    topAnchor4 = [titleLabel2 topAnchor];
    logoImageView4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
    bottomAnchor = [logoImageView4 bottomAnchor];
    viewModel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
    [viewModel2 logoToTitlePadding];
    v20 = [topAnchor4 constraintEqualToAnchor:bottomAnchor constant:?];
    v33[3] = v20;
    v14 = [NSArray arrayWithObjects:v33 count:4];

    platterView = v25;
    topAnchor = heightAnchor;

    titleLabel = logoImageView2;
  }

  [NSLayoutConstraint activateConstraints:v14];
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setActiveLogoConstraints:v14];
}

- (void)_setupBaseConstraints
{
  platterView = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  topAnchor = [platterView topAnchor];
  contentView = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setTopMarginConstraint:v7];

  contentView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  platterView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  bottomAnchor2 = [platterView2 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:16.0];
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setBottomMarginConstraint:v12];

  platterView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  leadingAnchor = [platterView3 leadingAnchor];
  contentView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v102 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v107[0] = v102;
  platterView4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  trailingAnchor = [platterView4 trailingAnchor];
  contentView4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v97 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v107[1] = v97;
  topMarginConstraint = [(CuratedCollectionMediaIntegrationTableViewCell *)self topMarginConstraint];
  v107[2] = topMarginConstraint;
  bottomMarginConstraint = [(CuratedCollectionMediaIntegrationTableViewCell *)self bottomMarginConstraint];
  v107[3] = bottomMarginConstraint;
  titleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  leadingAnchor3 = [titleLabel leadingAnchor];
  platterView5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  leadingAnchor4 = [platterView5 leadingAnchor];
  v90 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v107[4] = v90;
  titleLabel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  trailingAnchor3 = [titleLabel2 trailingAnchor];
  artworkImageView = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  leadingAnchor5 = [artworkImageView leadingAnchor];
  v85 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:-10.0];
  v107[5] = v85;
  subtitleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  topAnchor3 = [subtitleLabel topAnchor];
  titleLabel3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  bottomAnchor3 = [titleLabel3 bottomAnchor];
  v80 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:2.0];
  v107[6] = v80;
  subtitleLabel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  leadingAnchor6 = [subtitleLabel2 leadingAnchor];
  platterView6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  leadingAnchor7 = [platterView6 leadingAnchor];
  v75 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:16.0];
  v107[7] = v75;
  subtitleLabel3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  trailingAnchor4 = [subtitleLabel3 trailingAnchor];
  artworkImageView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  leadingAnchor8 = [artworkImageView2 leadingAnchor];
  v70 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor8 constant:-10.0];
  v107[8] = v70;
  actionLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  topAnchor4 = [actionLabel topAnchor];
  subtitleLabel4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  bottomAnchor4 = [subtitleLabel4 bottomAnchor];
  v65 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:8.0];
  v107[9] = v65;
  actionLabel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  leadingAnchor9 = [actionLabel2 leadingAnchor];
  platterView7 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  leadingAnchor10 = [platterView7 leadingAnchor];
  v60 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
  v107[10] = v60;
  actionLabel3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  trailingAnchor5 = [actionLabel3 trailingAnchor];
  platterView8 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  trailingAnchor6 = [platterView8 trailingAnchor];
  v55 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v107[11] = v55;
  actionLabel4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  bottomAnchor5 = [actionLabel4 bottomAnchor];
  platterView9 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  bottomAnchor6 = [platterView9 bottomAnchor];
  v50 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-16.0];
  v107[12] = v50;
  actionControl = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  topAnchor5 = [actionControl topAnchor];
  actionLabel5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  topAnchor6 = [actionLabel5 topAnchor];
  v45 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v107[13] = v45;
  actionControl2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  leadingAnchor11 = [actionControl2 leadingAnchor];
  actionLabel6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  leadingAnchor12 = [actionLabel6 leadingAnchor];
  v40 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v107[14] = v40;
  actionControl3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  trailingAnchor7 = [actionControl3 trailingAnchor];
  actionLabel7 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  trailingAnchor8 = [actionLabel7 trailingAnchor];
  v35 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v107[15] = v35;
  actionControl4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  bottomAnchor7 = [actionControl4 bottomAnchor];
  actionLabel8 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  bottomAnchor8 = [actionLabel8 bottomAnchor];
  v30 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v107[16] = v30;
  artworkImageView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  topAnchor7 = [artworkImageView3 topAnchor];
  platterView10 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  topAnchor8 = [platterView10 topAnchor];
  v25 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:16.0];
  v107[17] = v25;
  artworkImageView4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  trailingAnchor9 = [artworkImageView4 trailingAnchor];
  platterView11 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  trailingAnchor10 = [platterView11 trailingAnchor];
  v15 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-16.0];
  v107[18] = v15;
  artworkImageView5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  heightAnchor = [artworkImageView5 heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:64.0];
  v107[19] = v18;
  artworkImageView6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  widthAnchor = [artworkImageView6 widthAnchor];
  v21 = [widthAnchor constraintEqualToConstant:64.0];
  v107[20] = v21;
  v22 = [NSArray arrayWithObjects:v107 count:21];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)_addSubviews
{
  v3 = objc_alloc_init(CuratedCollectionMediaIntegrationPlatterControl);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setPlatterView:v3];

  platterView = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [platterView setAccessibilityIdentifier:@"PlatterView"];

  contentView = [(CuratedCollectionMediaIntegrationTableViewCell *)self contentView];
  platterView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [contentView addSubview:platterView2];

  platterView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [platterView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  platterView4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [platterView4 setInteractionDelegate:self];

  v9 = objc_alloc_init(UILabel);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setTitleLabel:v9];

  if (sub_10000FA08(self) == 5)
  {
    traitCollection = [(CuratedCollectionMediaIntegrationTableViewCell *)self traitCollection];
    titleLabel2 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle3 weight:traitCollection compatibleWithTraitCollection:UIFontWeightSemibold];
    titleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
    [titleLabel setFont:titleLabel2];
  }

  else
  {
    traitCollection = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    titleLabel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
    [titleLabel2 setFont:traitCollection];
  }

  titleLabel3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:2];

  titleLabel4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [titleLabel4 setLineBreakStrategy:0];

  titleLabel5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [titleLabel5 setAccessibilityIdentifier:@"TitleLabel"];

  platterView5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  titleLabel6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [platterView5 addSubview:titleLabel6];

  titleLabel7 = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [titleLabel7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = sub_10000FA08(self);
  v20 = &UIFontTextStyleBody;
  if (v19 != 5)
  {
    v20 = &UIFontTextStyleSubheadline;
  }

  v58 = [UIFont preferredFontForTextStyle:*v20];
  v21 = objc_alloc_init(UILabel);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setSubtitleLabel:v21];

  subtitleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [subtitleLabel setFont:v58];

  v23 = +[UIColor secondaryLabelColor];
  subtitleLabel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:v23];

  subtitleLabel3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [subtitleLabel3 setAccessibilityIdentifier:@"SubtitleLabel"];

  platterView6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  subtitleLabel4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [platterView6 addSubview:subtitleLabel4];

  subtitleLabel5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [subtitleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = objc_alloc_init(UILabel);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setActionLabel:v29];

  actionLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [actionLabel setFont:v58];

  v31 = +[UIColor systemBlueColor];
  actionLabel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [actionLabel2 setTextColor:v31];

  actionLabel3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [actionLabel3 setAccessibilityIdentifier:@"ActionLabel"];

  platterView7 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  actionLabel4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [platterView7 addSubview:actionLabel4];

  actionLabel5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [actionLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = objc_alloc_init(UIControl);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setActionControl:v37];

  actionControl = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [actionControl setAccessibilityIdentifier:@"ActionControl"];

  platterView8 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  actionControl2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [platterView8 addSubview:actionControl2];

  actionControl3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionControl];
  [actionControl3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = objc_alloc_init(UIImageView);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setLogoImageView:v42];

  logoImageView = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [logoImageView setContentMode:2];

  logoImageView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [logoImageView2 setAccessibilityIdentifier:@"LogoImageView"];

  platterView9 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  logoImageView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [platterView9 addSubview:logoImageView3];

  logoImageView4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [logoImageView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = objc_alloc_init(UIImageView);
  [(CuratedCollectionMediaIntegrationTableViewCell *)self setArtworkImageView:v48];

  artworkImageView = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [artworkImageView setAccessibilityIdentifier:@"ArtworkImageView"];

  platterView10 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  artworkImageView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [platterView10 addSubview:artworkImageView2];

  artworkImageView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [artworkImageView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  artworkImageView4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  layer = [artworkImageView4 layer];
  [layer setMasksToBounds:1];

  artworkImageView5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  layer2 = [artworkImageView5 layer];
  [layer2 setCornerRadius:8.0];

  artworkImageView6 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [artworkImageView6 setContentMode:2];
}

- (void)_setupCornerRadius
{
  platterView = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  layer = [platterView layer];
  [layer setCornerRadius:10.0];

  platterView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  layer2 = [platterView2 layer];
  [layer2 setMasksToBounds:1];
}

- (void)_setupShadows
{
  v3 = +[UIColor systemBlackColor];
  cGColor = [v3 CGColor];
  artworkImageView = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  layer = [artworkImageView layer];
  [layer setShadowColor:cGColor];

  artworkImageView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  layer2 = [artworkImageView2 layer];
  LODWORD(v9) = 1025758986;
  [layer2 setShadowOpacity:v9];

  artworkImageView3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  layer3 = [artworkImageView3 layer];
  [layer3 setShadowOffset:{0.0, 2.0}];

  artworkImageView4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  layer4 = [artworkImageView4 layer];
  [layer4 setShadowRadius:5.0];

  artworkImageView5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  layer5 = [artworkImageView5 layer];
  [layer5 setShadowPathIsBounds:1];
}

- (void)_loadImageIfNeeded
{
  artworkImageView = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [artworkImageView frame];
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
    artworkImageView2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
    [artworkImageView2 frame];
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
  viewModel = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  title = [viewModel title];
  titleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [titleLabel setText:title];

  viewModel2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  subtitle = [viewModel2 subtitle];
  subtitleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [subtitleLabel setText:subtitle];

  viewModel3 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  actionText = [viewModel3 actionText];
  actionLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self actionLabel];
  [actionLabel setText:actionText];

  viewModel4 = [(CuratedCollectionMediaIntegrationTableViewCell *)self viewModel];
  realmIcon = [viewModel4 realmIcon];
  logoImageView = [(CuratedCollectionMediaIntegrationTableViewCell *)self logoImageView];
  [logoImageView setImage:realmIcon];

  [(CuratedCollectionMediaIntegrationTableViewCell *)self _loadImageIfNeeded];
  v16 = +[UIColor secondarySystemGroupedBackgroundColor];
  platterView = [(CuratedCollectionMediaIntegrationTableViewCell *)self platterView];
  [platterView setBackgroundColor:v16];
}

- (void)setPosition:(unint64_t)position
{
  if (self->_position != position)
  {
    self->_position = position;
    if (position >= 2)
    {
      if (position == 2)
      {
        topMarginConstraint = [(CuratedCollectionMediaIntegrationTableViewCell *)self topMarginConstraint];
        [topMarginConstraint setConstant:0.0];

        bottomMarginConstraint = [(CuratedCollectionMediaIntegrationTableViewCell *)self bottomMarginConstraint];
        [bottomMarginConstraint setConstant:16.0];
      }
    }

    else
    {
      topMarginConstraint2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self topMarginConstraint];
      [topMarginConstraint2 setConstant:16.0];

      bottomMarginConstraint2 = [(CuratedCollectionMediaIntegrationTableViewCell *)self bottomMarginConstraint];
      [bottomMarginConstraint2 setConstant:0.0];

      [(CuratedCollectionMediaIntegrationTableViewCell *)self setSeparatorInset:0.0, 0.0, 0.0, 1.79769313e308];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CuratedCollectionMediaIntegrationTableViewCell;
  changeCopy = change;
  [(CuratedCollectionMediaIntegrationTableViewCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CuratedCollectionMediaIntegrationTableViewCell *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
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
  artworkImageView = [(CuratedCollectionMediaIntegrationTableViewCell *)self artworkImageView];
  [artworkImageView setImage:0];

  titleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self titleLabel];
  [titleLabel setText:0];

  subtitleLabel = [(CuratedCollectionMediaIntegrationTableViewCell *)self subtitleLabel];
  [subtitleLabel setText:0];

  [(CuratedCollectionMediaIntegrationTableViewCell *)self setMediaIntegrationMenuInteraction:0];
  v6.receiver = self;
  v6.super_class = CuratedCollectionMediaIntegrationTableViewCell;
  [(CuratedCollectionMediaIntegrationTableViewCell *)&v6 prepareForReuse];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  objc_storeStrong(&self->_viewModel, model);
  if (self->_viewModel)
  {
    [(CuratedCollectionMediaIntegrationTableViewCell *)self _updateLogoConstraintsAndVisibility];
    self->_needsImageLoad = 1;
    [(CuratedCollectionMediaIntegrationTableViewCell *)self _updateViews];
    childViewModels = [modelCopy childViewModels];
    -[CuratedCollectionMediaIntegrationPlatterControl setEnabled:](self->_platterView, "setEnabled:", [childViewModels count] != 0);

    [(CuratedCollectionMediaIntegrationTableViewCell *)self _loadMenuActionImages];
  }
}

- (CuratedCollectionMediaIntegrationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = CuratedCollectionMediaIntegrationTableViewCell;
  v4 = [(CuratedCollectionMediaIntegrationTableViewCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
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