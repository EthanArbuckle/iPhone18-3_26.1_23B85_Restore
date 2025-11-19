@interface MKTransitDepartureContainerHeaderView
- (MKTransitDepartureContainerHeaderView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_updateAppearance;
- (void)setViewModel:(id)a3;
@end

@implementation MKTransitDepartureContainerHeaderView

- (void)_updateAppearance
{
  v3 = [(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel titleText];
  [(_MKUILabel *)self->_containerTitleLabel setText:v3];

  v4 = [(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel labelItems];
  [(MKTransitInfoLabelView *)self->_containerArtworkView setLabelItems:v4];

  [(UIImageView *)self->_incidentImageView setHidden:[(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel showIncidentsIcon]^ 1];
  v5 = [(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel showIncidentsIcon];
  incidentImageView = self->_incidentImageView;
  if (v5)
  {
    [(UIImageView *)incidentImageView setHidden:0];
    v7 = [(UIImageView *)self->_incidentImageView image];

    if (!v7)
    {
      v8 = [(MKTransitDepartureContainerHeaderView *)self window];
      v9 = [v8 screen];
      v10 = v9;
      if (v9)
      {
        [v9 scale];
        v12 = v11;
      }

      else
      {
        v13 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v13 scale];
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

  v16 = [(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel labelItems];
  v17 = [v16 count];

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

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([(MKTransitDepartureContainerHeaderViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MKTransitDepartureContainerHeaderView *)self _updateAppearance];
  }
}

- (void)_commonInit
{
  v79[15] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] separatorColor];
  [(MKViewWithHairline *)self setHairlineColor:v3];

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
  v22 = [(MKTransitInfoLabelView *)self->_containerArtworkView trailingAnchor];
  v23 = [(_MKUILabel *)self->_containerTitleLabel leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  artworkToTitleLabelHorizontalSpacingConstraint = self->_artworkToTitleLabelHorizontalSpacingConstraint;
  self->_artworkToTitleLabelHorizontalSpacingConstraint = v24;

  v26 = [(UIImageView *)self->_incidentImageView image];
  [v26 size];
  v28 = v27;

  v29 = 10.0;
  if (v28 > 0.0)
  {
    v30 = [(UIImageView *)self->_incidentImageView image];
    [v30 size];
    v32 = v31;
    v33 = [(UIImageView *)self->_incidentImageView image];
    [v33 size];
    v29 = v32 / v34 * 10.0;
  }

  v62 = MEMORY[0x1E696ACD8];
  v77 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  v76 = [(MKTransitDepartureContainerHeaderView *)self leadingAnchor];
  v75 = [v77 constraintEqualToAnchor:v76 constant:16.0];
  v79[0] = v75;
  v74 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v73 = [(MKTransitDepartureContainerHeaderView *)self topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73 constant:12.0];
  v79[1] = v72;
  v71 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v70 = [(MKTransitDepartureContainerHeaderView *)self bottomAnchor];
  v69 = [v71 constraintEqualToAnchor:v70 constant:-12.0];
  v79[2] = v69;
  v68 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  v67 = [(MKTransitDepartureContainerHeaderView *)self trailingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 constant:-16.0];
  v79[3] = v66;
  v65 = [(MKTransitInfoLabelView *)self->_containerArtworkView leadingAnchor];
  v64 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v79[4] = v63;
  v61 = [(MKTransitInfoLabelView *)self->_containerArtworkView topAnchor];
  v60 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v79[5] = v59;
  v58 = [(MKTransitInfoLabelView *)self->_containerArtworkView bottomAnchor];
  v57 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v35 = self->_artworkToTitleLabelHorizontalSpacingConstraint;
  v79[6] = v56;
  v79[7] = v35;
  v55 = [(UIImageView *)self->_incidentImageView bottomAnchor];
  v54 = [(MKTransitInfoLabelView *)self->_containerArtworkView bottomAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v79[8] = v53;
  v52 = [(UIImageView *)self->_incidentImageView leadingAnchor];
  v51 = [(_MKUILabel *)self->_containerTitleLabel leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:-15.0];
  v79[9] = v50;
  v49 = [(UIImageView *)self->_incidentImageView widthAnchor];
  v48 = [v49 constraintEqualToConstant:10.0];
  v79[10] = v48;
  v47 = [(UIImageView *)self->_incidentImageView heightAnchor];
  v46 = [v47 constraintEqualToConstant:v29];
  v79[11] = v46;
  v36 = [(_MKUILabel *)self->_containerTitleLabel trailingAnchor];
  v37 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  v38 = [v36 constraintLessThanOrEqualToAnchor:v37];
  v79[12] = v38;
  v39 = [(_MKUILabel *)self->_containerTitleLabel topAnchor];
  v40 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  v79[13] = v41;
  v42 = [(_MKUILabel *)self->_containerTitleLabel bottomAnchor];
  v43 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  v79[14] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:15];
  [v62 activateConstraints:v45];
}

- (MKTransitDepartureContainerHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKTransitDepartureContainerHeaderView;
  v3 = [(MKViewWithHairline *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitDepartureContainerHeaderView *)v3 _commonInit];
  }

  return v4;
}

@end