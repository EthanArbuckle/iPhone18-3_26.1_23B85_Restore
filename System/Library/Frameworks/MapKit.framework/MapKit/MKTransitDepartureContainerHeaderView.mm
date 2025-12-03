@interface MKTransitDepartureContainerHeaderView
- (MKTransitDepartureContainerHeaderView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_updateAppearance;
- (void)setViewModel:(id)model;
@end

@implementation MKTransitDepartureContainerHeaderView

- (void)_updateAppearance
{
  titleText = [(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel titleText];
  [(_MKUILabel *)self->_containerTitleLabel setText:titleText];

  labelItems = [(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel labelItems];
  [(MKTransitInfoLabelView *)self->_containerArtworkView setLabelItems:labelItems];

  [(UIImageView *)self->_incidentImageView setHidden:[(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel showIncidentsIcon]^ 1];
  showIncidentsIcon = [(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel showIncidentsIcon];
  incidentImageView = self->_incidentImageView;
  if (showIncidentsIcon)
  {
    [(UIImageView *)incidentImageView setHidden:0];
    image = [(UIImageView *)self->_incidentImageView image];

    if (!image)
    {
      window = [(MKTransitDepartureContainerHeaderView *)self window];
      screen = [window screen];
      v10 = screen;
      if (screen)
      {
        [screen scale];
        v12 = v11;
      }

      else
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen scale];
        v12 = v14;
      }

      v15 = [MKIconManager imageForTrafficIncidentType:4 size:0 forScale:v12];
      [(UIImageView *)self->_incidentImageView setImage:v15];
    }
  }

  else
  {
    [(UIImageView *)incidentImageView setHidden:1];
  }

  labelItems2 = [(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel labelItems];
  v17 = [labelItems2 count];

  if (v17)
  {
    v18 = -10.0;
  }

  else
  {
    v18 = 0.0;
  }

  [(MKTransitInfoLabelView *)self->_containerArtworkView setHidden:v17 == 0];
  artworkToTitleLabelHorizontalSpacingConstraint = self->_artworkToTitleLabelHorizontalSpacingConstraint;

  [(NSLayoutConstraint *)artworkToTitleLabelHorizontalSpacingConstraint setConstant:v18];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MKTransitDepartureContainerHeaderView *)self _updateAppearance];
  }
}

- (void)_commonInit
{
  v79[15] = *MEMORY[0x1E69E9840];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [(MKViewWithHairline *)self setHairlineColor:separatorColor];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MKTransitDepartureContainerHeaderView *)self setAccessibilityIdentifier:v5];

  v6 = [[MKTransitInfoLabelView alloc] initWithMapItem:0];
  containerArtworkView = self->_containerArtworkView;
  self->_containerArtworkView = v6;

  [(MKTransitInfoLabelView *)self->_containerArtworkView setAccessibilityIdentifier:@"ContainerArtworkView"];
  [(MKTransitInfoLabelView *)self->_containerArtworkView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKTransitInfoLabelView *)self->_containerArtworkView setIconSize:6];
  [(MKTransitInfoLabelView *)self->_containerArtworkView setShieldSize:6];
  [(MKTransitInfoLabelView *)self->_containerArtworkView setMaxShieldHeight:24.0];
  LODWORD(v8) = 1148846080;
  [(MKTransitInfoLabelView *)self->_containerArtworkView setContentCompressionResistancePriority:0 forAxis:v8];
  [(MKTransitDepartureContainerHeaderView *)self addSubview:self->_containerArtworkView];
  v9 = [_MKUILabel alloc];
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [(_MKUILabel *)v9 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
  containerTitleLabel = self->_containerTitleLabel;
  self->_containerTitleLabel = v14;

  [(_MKUILabel *)self->_containerTitleLabel setAccessibilityIdentifier:@"ContainerTitleLabel"];
  [(_MKUILabel *)self->_containerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_containerTitleLabel setAdjustsFontForContentSizeCategory:1];
  v16 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8]];
  v17 = [v16 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];

  v78 = v17;
  [(_MKUILabel *)self->_containerTitleLabel setFont:v17];
  [(_MKUILabel *)self->_containerTitleLabel setNumberOfLines:0];
  [(MKTransitDepartureContainerHeaderView *)self addSubview:self->_containerTitleLabel];
  v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v10, v11, v12, v13}];
  incidentImageView = self->_incidentImageView;
  self->_incidentImageView = v18;

  [(UIImageView *)self->_incidentImageView setAccessibilityIdentifier:@"IncidentImageView"];
  [(UIImageView *)self->_incidentImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_incidentImageView setHidden:1];
  [(UIImageView *)self->_incidentImageView setContentMode:1];
  [(MKTransitDepartureContainerHeaderView *)self addSubview:self->_incidentImageView];
  v20 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  contentLayoutGuide = self->_contentLayoutGuide;
  self->_contentLayoutGuide = v20;

  [(MKTransitDepartureContainerHeaderView *)self addLayoutGuide:self->_contentLayoutGuide];
  trailingAnchor = [(MKTransitInfoLabelView *)self->_containerArtworkView trailingAnchor];
  leadingAnchor = [(_MKUILabel *)self->_containerTitleLabel leadingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:leadingAnchor];
  artworkToTitleLabelHorizontalSpacingConstraint = self->_artworkToTitleLabelHorizontalSpacingConstraint;
  self->_artworkToTitleLabelHorizontalSpacingConstraint = v24;

  image = [(UIImageView *)self->_incidentImageView image];
  [image size];
  v28 = v27;

  v29 = 10.0;
  if (v28 > 0.0)
  {
    image2 = [(UIImageView *)self->_incidentImageView image];
    [image2 size];
    v32 = v31;
    image3 = [(UIImageView *)self->_incidentImageView image];
    [image3 size];
    v29 = v32 / v34 * 10.0;
  }

  v62 = MEMORY[0x1E696ACD8];
  leadingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  leadingAnchor3 = [(MKTransitDepartureContainerHeaderView *)self leadingAnchor];
  v75 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
  v79[0] = v75;
  topAnchor = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  topAnchor2 = [(MKTransitDepartureContainerHeaderView *)self topAnchor];
  v72 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
  v79[1] = v72;
  bottomAnchor = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  bottomAnchor2 = [(MKTransitDepartureContainerHeaderView *)self bottomAnchor];
  v69 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
  v79[2] = v69;
  trailingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  trailingAnchor3 = [(MKTransitDepartureContainerHeaderView *)self trailingAnchor];
  v66 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  v79[3] = v66;
  leadingAnchor4 = [(MKTransitInfoLabelView *)self->_containerArtworkView leadingAnchor];
  leadingAnchor5 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  v63 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v79[4] = v63;
  topAnchor3 = [(MKTransitInfoLabelView *)self->_containerArtworkView topAnchor];
  topAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v59 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v79[5] = v59;
  bottomAnchor3 = [(MKTransitInfoLabelView *)self->_containerArtworkView bottomAnchor];
  bottomAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v56 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v35 = self->_artworkToTitleLabelHorizontalSpacingConstraint;
  v79[6] = v56;
  v79[7] = v35;
  bottomAnchor5 = [(UIImageView *)self->_incidentImageView bottomAnchor];
  bottomAnchor6 = [(MKTransitInfoLabelView *)self->_containerArtworkView bottomAnchor];
  v53 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v79[8] = v53;
  leadingAnchor6 = [(UIImageView *)self->_incidentImageView leadingAnchor];
  leadingAnchor7 = [(_MKUILabel *)self->_containerTitleLabel leadingAnchor];
  v50 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:-15.0];
  v79[9] = v50;
  widthAnchor = [(UIImageView *)self->_incidentImageView widthAnchor];
  v48 = [widthAnchor constraintEqualToConstant:10.0];
  v79[10] = v48;
  heightAnchor = [(UIImageView *)self->_incidentImageView heightAnchor];
  v46 = [heightAnchor constraintEqualToConstant:v29];
  v79[11] = v46;
  trailingAnchor4 = [(_MKUILabel *)self->_containerTitleLabel trailingAnchor];
  trailingAnchor5 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  v38 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
  v79[12] = v38;
  topAnchor5 = [(_MKUILabel *)self->_containerTitleLabel topAnchor];
  topAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v41 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v79[13] = v41;
  bottomAnchor7 = [(_MKUILabel *)self->_containerTitleLabel bottomAnchor];
  bottomAnchor8 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v44 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v79[14] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:15];
  [v62 activateConstraints:v45];
}

- (MKTransitDepartureContainerHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKTransitDepartureContainerHeaderView;
  v3 = [(MKViewWithHairline *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitDepartureContainerHeaderView *)v3 _commonInit];
  }

  return v4;
}

@end