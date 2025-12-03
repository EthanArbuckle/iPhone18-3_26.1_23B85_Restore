@interface TransitDirectionsIncidentStepView
- (TransitDirectionsIncidentCellDelegate)delegate;
- (TransitDirectionsIncidentStepView)initWithFrame:(CGRect)frame;
- (id)_incidentItem;
- (void)_tapped;
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)configureWithItem:(id)item;
@end

@implementation TransitDirectionsIncidentStepView

- (TransitDirectionsIncidentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsIncidentStepView;
  [(TransitDirectionsStepView *)&v5 _updateNavigationStateAlpha:?];
  [(MKArtworkImageView *)self->_imageView setAlpha:alpha];
  [(UILabel *)self->_label setAlpha:alpha];
  [(UIImageView *)self->_chevronImageView setAlpha:alpha];
}

- (void)_tapped
{
  _incidentItem = [(TransitDirectionsIncidentStepView *)self _incidentItem];
  incidentMessage = [_incidentItem incidentMessage];
  advisory = [incidentMessage advisory];
  isClickable = [advisory isClickable];

  if (isClickable)
  {
    delegate = [(TransitDirectionsIncidentStepView *)self delegate];
    advisory2 = [incidentMessage advisory];
    [delegate transitDirectionsCell:self didTapAdvisory:advisory2];
  }
}

- (void)configureWithItem:(id)item
{
  itemCopy = item;
  v33.receiver = self;
  v33.super_class = TransitDirectionsIncidentStepView;
  [(TransitDirectionsStepView *)&v33 configureWithItem:itemCopy];
  if ([itemCopy type] != 13)
  {

    itemCopy = 0;
  }

  _incidentItem = [(TransitDirectionsIncidentStepView *)self _incidentItem];
  incidentMessage = [_incidentItem incidentMessage];
  advisory = [incidentMessage advisory];
  v6 = [MKServerFormattedString alloc];
  titleString = [advisory titleString];
  v8 = [v6 initWithComposedString:titleString];

  v34 = NSFontAttributeName;
  font = [(UILabel *)self->_label font];
  v35 = font;
  v10 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v28 = v8;
  v11 = [v8 multiPartAttributedStringWithAttributes:v10];

  attributedString = [v11 attributedString];
  [(UILabel *)self->_label setAttributedText:attributedString];

  artwork = [advisory artwork];
  v14 = [[MKSizedTransitArtwork alloc] initWithArtwork:artwork shieldSize:3];
  [(MKArtworkImageView *)self->_imageView setImageSource:v14];
  image = [(MKArtworkImageView *)self->_imageView image];
  v16 = image != 0;
  v17 = image == 0;

  [(MKArtworkImageView *)self->_imageView setHidden:v17];
  [(NSLayoutConstraint *)self->_artworkShowingLabelConstraint setActive:v16];
  [(NSLayoutConstraint *)self->_artworkHiddenLabelConstraint setActive:v17];
  isClickable = [advisory isClickable];
  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:isClickable];
  [(UIImageView *)self->_chevronImageView setHidden:isClickable ^ 1];
  [(NSLayoutConstraint *)self->_chevronShowingLabelConstraint setActive:isClickable];
  [(NSLayoutConstraint *)self->_chevronHiddenLabelConstraint setActive:isClickable ^ 1];
  if (isClickable)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  [(UILabel *)self->_label setNumberOfLines:v19];
  image2 = [(MKArtworkImageView *)self->_imageView image];
  _maps_mostCommonColor = [image2 _maps_mostCommonColor];
  v22 = [_maps_mostCommonColor colorWithAlphaComponent:0.200000003];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = +[UIColor tertiarySystemFillColor];
  }

  v25 = v24;

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1007460AC;
  v31[3] = &unk_101627DE8;
  v32 = v25;
  v26 = v25;
  v27 = [UIColor colorWithDynamicProvider:v31];
  [(UIView *)self->_backgroundView setBackgroundColor:v27];
}

- (id)_incidentItem
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->super._transitListItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TransitDirectionsIncidentStepView)initWithFrame:(CGRect)frame
{
  v96.receiver = self;
  v96.super_class = TransitDirectionsIncidentStepView;
  v3 = [(TransitDirectionsStepView *)&v96 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitDirectionsIncidentStepView *)v3 setBackgroundColor:v4];

    [(TransitDirectionsIncidentStepView *)v3 setOpaque:0];
    [(TransitDirectionsIncidentStepView *)v3 setAccessibilityIdentifier:@"TransitDirectionsIncidentStep"];
    v5 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v9;

    [(UIView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = +[UIColor systemBlueColor];
    v12 = [v11 colorWithAlphaComponent:0.119999997];
    [(UIView *)v3->_backgroundView setBackgroundColor:v12];

    [(UIView *)v3->_backgroundView _setContinuousCornerRadius:10.0];
    [(TransitDirectionsIncidentStepView *)v3 addSubview:v3->_backgroundView];
    v95 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
    v13 = [UIImageView alloc];
    v14 = [UIImage systemImageNamed:@"chevron.forward" withConfiguration:v95];
    v15 = [v13 initWithImage:v14];
    chevronImageView = v3->_chevronImageView;
    v3->_chevronImageView = v15;

    [(UIImageView *)v3->_chevronImageView setAccessibilityIdentifier:@"ChevronImageView"];
    [(UIImageView *)v3->_chevronImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = +[UIColor tertiaryLabelColor];
    [(UIImageView *)v3->_chevronImageView setTintColor:v17];

    LODWORD(v18) = 1148846080;
    [(UIImageView *)v3->_chevronImageView setContentHuggingPriority:0 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(UIImageView *)v3->_chevronImageView setContentHuggingPriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UIImageView *)v3->_chevronImageView setContentCompressionResistancePriority:0 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(UIImageView *)v3->_chevronImageView setContentCompressionResistancePriority:1 forAxis:v21];
    [(TransitDirectionsIncidentStepView *)v3 addSubview:v3->_chevronImageView];
    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    label = v3->_label;
    v3->_label = v22;

    [(UILabel *)v3->_label setAccessibilityIdentifier:@"Label"];
    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v3->_label setFont:v24];

    [(UILabel *)v3->_label setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_label setLineBreakMode:4];
    LODWORD(v25) = 1132003328;
    [(UILabel *)v3->_label setContentHuggingPriority:0 forAxis:v25];
    LODWORD(v26) = 1144750080;
    [(UILabel *)v3->_label setContentHuggingPriority:1 forAxis:v26];
    [(TransitDirectionsIncidentStepView *)v3 addSubview:v3->_label];
    v27 = [[MKArtworkImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v3->_imageView;
    v3->_imageView = v27;

    [(MKArtworkImageView *)v3->_imageView setAccessibilityIdentifier:@"ImageView"];
    [(MKArtworkImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v29) = 1148846080;
    [(MKArtworkImageView *)v3->_imageView setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(MKArtworkImageView *)v3->_imageView setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(MKArtworkImageView *)v3->_imageView setContentCompressionResistancePriority:0 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(MKArtworkImageView *)v3->_imageView setContentCompressionResistancePriority:1 forAxis:v32];
    [(TransitDirectionsIncidentStepView *)v3 addSubview:v3->_imageView];
    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    trailingAnchor = [(MKArtworkImageView *)v3->_imageView trailingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:8.0];
    artworkShowingLabelConstraint = v3->_artworkShowingLabelConstraint;
    v3->_artworkShowingLabelConstraint = v35;

    leadingAnchor2 = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor3 = [(UIView *)v3->_backgroundView leadingAnchor];
    v39 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:12.0];
    artworkHiddenLabelConstraint = v3->_artworkHiddenLabelConstraint;
    v3->_artworkHiddenLabelConstraint = v39;

    leadingAnchor4 = [(UIImageView *)v3->_chevronImageView leadingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_label trailingAnchor];
    v43 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:8.0];
    chevronShowingLabelConstraint = v3->_chevronShowingLabelConstraint;
    v3->_chevronShowingLabelConstraint = v43;

    trailingAnchor3 = [(UIView *)v3->_backgroundView trailingAnchor];
    trailingAnchor4 = [(UILabel *)v3->_label trailingAnchor];
    v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:12.0];
    chevronHiddenLabelConstraint = v3->_chevronHiddenLabelConstraint;
    v3->_chevronHiddenLabelConstraint = v47;

    topAnchor = [(UIView *)v3->_backgroundView topAnchor];
    contentLayoutGuide = [(TransitDirectionsStepView *)v3 contentLayoutGuide];
    topAnchor2 = [contentLayoutGuide topAnchor];
    v91 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v97[0] = v91;
    leadingAnchor5 = [(UIView *)v3->_backgroundView leadingAnchor];
    contentLayoutGuide2 = [(TransitDirectionsStepView *)v3 contentLayoutGuide];
    leadingAnchor6 = [contentLayoutGuide2 leadingAnchor];
    v87 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v97[1] = v87;
    contentLayoutGuide3 = [(TransitDirectionsStepView *)v3 contentLayoutGuide];
    trailingAnchor5 = [contentLayoutGuide3 trailingAnchor];
    trailingAnchor6 = [(UIView *)v3->_backgroundView trailingAnchor];
    v83 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v97[2] = v83;
    contentLayoutGuide4 = [(TransitDirectionsStepView *)v3 contentLayoutGuide];
    bottomAnchor = [contentLayoutGuide4 bottomAnchor];
    bottomAnchor2 = [(UIView *)v3->_backgroundView bottomAnchor];
    v79 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v97[3] = v79;
    heightAnchor = [(UIView *)v3->_backgroundView heightAnchor];
    v77 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
    v97[4] = v77;
    centerYAnchor = [(UIImageView *)v3->_chevronImageView centerYAnchor];
    centerYAnchor2 = [(UIView *)v3->_backgroundView centerYAnchor];
    v74 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v97[5] = v74;
    trailingAnchor7 = [(UIView *)v3->_backgroundView trailingAnchor];
    trailingAnchor8 = [(UIImageView *)v3->_chevronImageView trailingAnchor];
    v71 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:11.0];
    v97[6] = v71;
    leadingAnchor7 = [(MKArtworkImageView *)v3->_imageView leadingAnchor];
    leadingAnchor8 = [(UIView *)v3->_backgroundView leadingAnchor];
    v68 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:12.0];
    v97[7] = v68;
    centerYAnchor3 = [(MKArtworkImageView *)v3->_imageView centerYAnchor];
    centerYAnchor4 = [(UIView *)v3->_backgroundView centerYAnchor];
    v65 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v97[8] = v65;
    v97[9] = v3->_artworkShowingLabelConstraint;
    topAnchor3 = [(UILabel *)v3->_label topAnchor];
    topAnchor4 = [(UIView *)v3->_backgroundView topAnchor];
    v62 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
    v97[10] = v62;
    leadingAnchor9 = [(UILabel *)v3->_label leadingAnchor];
    trailingAnchor9 = [(MKArtworkImageView *)v3->_imageView trailingAnchor];
    v50 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor9 constant:8.0];
    v97[11] = v50;
    centerYAnchor5 = [(UILabel *)v3->_label centerYAnchor];
    centerYAnchor6 = [(UIView *)v3->_backgroundView centerYAnchor];
    v53 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v97[12] = v53;
    v97[13] = v3->_chevronShowingLabelConstraint;
    bottomAnchor3 = [(UIView *)v3->_backgroundView bottomAnchor];
    bottomAnchor4 = [(UILabel *)v3->_label bottomAnchor];
    v56 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:8.0];
    v97[14] = v56;
    v57 = [NSArray arrayWithObjects:v97 count:15];
    [NSLayoutConstraint activateConstraints:v57];

    v58 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_tapped"];
    tapGesture = v3->_tapGesture;
    v3->_tapGesture = v58;

    [(TransitDirectionsIncidentStepView *)v3 addGestureRecognizer:v3->_tapGesture];
  }

  return v3;
}

@end