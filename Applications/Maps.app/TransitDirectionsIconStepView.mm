@interface TransitDirectionsIconStepView
- (double)_bottomLinkExtensionHeight;
- (double)_distanceToImageCenterForImageSource:(id)source;
- (double)_maximumIconWidth;
- (double)_topLinkExtensionHeight;
- (id)_UIView;
- (id)_createImageView;
- (id)_imageViewPositionConstraints;
- (id)_initialConstraints;
- (id)_lineColorViewWithStyle:(unint64_t)style;
- (void)_configureArtworkForFirstUse;
- (void)_createSubviews;
- (void)_updateArtwork;
- (void)_updateArtworkTintColor;
- (void)_updateForParentExpansionOrCollapse;
- (void)_updateLinkColors;
- (void)_updateLinkStyles;
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)configureWithItem:(id)item;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisplayOptions:(unint64_t)options;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TransitDirectionsIconStepView

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v10.receiver = self;
  v10.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsStepView *)&v10 _updateNavigationStateAlpha:?];
  navigationState = [(TransitDirectionsStepView *)self navigationState];
  if (navigationState <= 5)
  {
    if (navigationState == 2)
    {
      alphaCopy = alpha;
    }

    else
    {
      alphaCopy = 1.0;
    }

    if (navigationState == 2)
    {
      alphaCopy2 = 1.0;
    }

    else
    {
      alphaCopy2 = alpha;
    }

    if (((1 << navigationState) & 0x33) != 0)
    {
      alphaCopy = 1.0;
      v8 = 1.0;
    }

    else
    {
      v8 = alphaCopy2;
    }

    [(TransitDirectionsColoredLine *)self->_topLink setAlpha:alphaCopy];
    iconImageView = [(TransitDirectionsIconStepView *)self iconImageView];
    [iconImageView setAlpha:1.0];

    [(TransitDirectionsColoredLine *)self->_bottomLink setAlpha:1.0];
    [(UIView *)self->_iconLinksGroupingView setAlpha:v8];
  }
}

- (void)_updateForParentExpansionOrCollapse
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsStepView *)&v3 _updateForParentExpansionOrCollapse];
  [(TransitDirectionsIconStepView *)self _updateLinkColors];
  [(TransitDirectionsIconStepView *)self _updateLinkStyles];
}

- (void)_updateArtwork
{
  if (!-[NSNumber BOOLValue](self->_hasAlternateImageSource, "BOOLValue") || (-[TransitDirectionsStepView displayOptions](self, "displayOptions") & 1) == 0 || (-[TransitDirectionsStepView transitListItem](self, "transitListItem"), v3 = objc_claimAutoreleasedReturnValue(), [v3 alternateImageSourceForStyle:{-[TransitDirectionsIconStepView _preferredStyle](self, "_preferredStyle")}], v6 = objc_claimAutoreleasedReturnValue(), v3, !v6))
  {
    transitListItem = [(TransitDirectionsStepView *)self transitListItem];
    v6 = [transitListItem imageSourceForStyle:{-[TransitDirectionsIconStepView _preferredStyle](self, "_preferredStyle")}];
  }

  [(MKArtworkImageView *)self->_iconImageView setImageSource:v6];
  [(MKArtworkImageView *)self->_iconImageView setHidden:v6 == 0];
  [(TransitDirectionsIconStepView *)self _distanceToImageCenterForImageSource:v6];
  [(NSLayoutConstraint *)self->_topLinkToImageViewCenterConstraint setConstant:-v5];
  [(TransitDirectionsIconStepView *)self _distanceToImageCenterForImageSource:v6];
  [(NSLayoutConstraint *)self->_bottomLinkToImageViewCenterConstraint setConstant:?];
}

- (void)_updateArtworkTintColor
{
  if ([(TransitDirectionsStepView *)self isHighlighted]&& sub_10000FA08(self) == 5)
  {
    v3 = +[UIColor systemWhiteColor];
  }

  else
  {
    v3 = +[UIColor labelColor];
  }

  v4 = v3;
  [(MKArtworkImageView *)self->_iconImageView setTintColor:v3];
}

- (void)_configureArtworkForFirstUse
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  v4 = [transitListItem alternateImageSourceForStyle:{-[TransitDirectionsIconStepView _preferredStyle](self, "_preferredStyle")}];
  v5 = [NSNumber numberWithInt:v4 != 0];
  hasAlternateImageSource = self->_hasAlternateImageSource;
  self->_hasAlternateImageSource = v5;

  [(TransitDirectionsIconStepView *)self _updateArtworkTintColor];

  [(TransitDirectionsIconStepView *)self _updateArtwork];
}

- (void)configureWithItem:(id)item
{
  v4.receiver = self;
  v4.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsStepView *)&v4 configureWithItem:item];
  [(TransitDirectionsIconStepView *)self _configureArtworkForFirstUse];
  [(TransitDirectionsIconStepView *)self _bottomLinkExtensionHeight];
  [(NSLayoutConstraint *)self->_bottomLinkToContentViewBottomConstraint setConstant:?];
  [(TransitDirectionsListItem *)self->super._transitListItem lineWidthForView:self];
  [(NSLayoutConstraint *)self->_linkWidthConstraint setConstant:?];
  [(TransitDirectionsIconStepView *)self _updateLinkColors];
  [(TransitDirectionsIconStepView *)self _updateLinkStyles];
  [(TransitDirectionsStepView *)self _updateConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsIconStepView *)&v4 traitCollectionDidChange:change];
  [(TransitDirectionsListItem *)self->super._transitListItem lineWidthForView:self];
  [(NSLayoutConstraint *)self->_linkWidthConstraint setConstant:?];
}

- (void)setDisplayOptions:(unint64_t)options
{
  displayOptions = [(TransitDirectionsStepView *)self displayOptions];
  v6.receiver = self;
  v6.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsStepView *)&v6 setDisplayOptions:options];
  if ((displayOptions ^ options))
  {
    [(TransitDirectionsIconStepView *)self _updateArtwork];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsStepView *)&v5 setHighlighted:highlighted];
  [(TransitDirectionsIconStepView *)self _updateArtworkTintColor];
  [(TransitDirectionsIconStepView *)self _topLinkExtensionHeight];
  [(NSLayoutConstraint *)self->_topLinkToContentViewTopConstraint setConstant:-v4];
  [(TransitDirectionsIconStepView *)self _bottomLinkExtensionHeight];
  [(NSLayoutConstraint *)self->_bottomLinkToContentViewBottomConstraint setConstant:?];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsStepView *)&v3 layoutSubviews];
  [(TransitDirectionsIconStepView *)self _updateLinkColors];
  [(TransitDirectionsIconStepView *)self _updateLinkStyles];
}

- (void)_updateLinkStyles
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  parentItem = [transitListItem parentItem];

  if ([parentItem conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
  {
    v5 = parentItem;
  }

  else
  {
    v5 = 0;
  }

  v14 = v5;

  if (!v14)
  {
    v9 = 2;
LABEL_12:
    v13 = 3;
    goto LABEL_13;
  }

  transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
  previousItem = [transitListItem2 previousItem];
  type = [previousItem type];

  v9 = 2;
  if (type <= 0xE)
  {
    if (((1 << type) & 0x4460) != 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }

    if (type == 7)
    {
      if (![v14 shouldEnableExpandedButton] || objc_msgSend(v14, "expanded"))
      {
        goto LABEL_7;
      }

      v9 = 2;
    }
  }

LABEL_8:
  transitListItem3 = [(TransitDirectionsStepView *)self transitListItem];
  nextItem = [transitListItem3 nextItem];
  type2 = [nextItem type];

  v13 = 3;
  if (type2 > 0xE)
  {
    goto LABEL_13;
  }

  if (((1 << type2) & 0x4860) != 0)
  {
    goto LABEL_10;
  }

  if (type2 == 7)
  {
    if (![v14 shouldEnableExpandedButton] || objc_msgSend(v14, "expanded"))
    {
LABEL_10:
      v13 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  [(TransitDirectionsColoredLine *)self->_topLink setStyle:v9];
  [(TransitDirectionsColoredLine *)self->_bottomLink setStyle:v13];
}

- (void)_updateLinkColors
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  fromLineColor = [transitListItem fromLineColor];

  transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
  toLineColor = [transitListItem2 toLineColor];

  transitListItem3 = [(TransitDirectionsStepView *)self transitListItem];
  parentItem = [transitListItem3 parentItem];

  if ([parentItem conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
  {
    v8 = parentItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  expanded = [v9 expanded];
  if (expanded)
  {
    transitListItem4 = [(TransitDirectionsStepView *)self transitListItem];
    alternateFromLineColor = [transitListItem4 alternateFromLineColor];

    transitListItem5 = [(TransitDirectionsStepView *)self transitListItem];
    alternateToLineColor = [transitListItem5 alternateToLineColor];

    toLineColor = alternateToLineColor;
    v15 = alternateFromLineColor;
  }

  else
  {
    v15 = fromLineColor;
  }

  v17 = v15;
  [(TransitDirectionsIconStepView *)self setTopLinkColor:v15];
  [(TransitDirectionsIconStepView *)self setBottomLinkColor:toLineColor];
}

- (id)_lineColorViewWithStyle:(unint64_t)style
{
  v3 = [[TransitDirectionsColoredLine alloc] initWithStyle:style];
  [(TransitDirectionsColoredLine *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

- (double)_bottomLinkExtensionHeight
{
  if (![(TransitDirectionsStepView *)self isHighlighted])
  {
    return 0.0;
  }

  [(TransitDirectionsIconStepView *)self _calculatedSeparatorHeight];
  return result;
}

- (double)_topLinkExtensionHeight
{
  if (![(TransitDirectionsStepView *)self isHighlighted])
  {
    return 0.0;
  }

  [(TransitDirectionsIconStepView *)self _calculatedSeparatorHeight];
  return result;
}

- (double)_distanceToImageCenterForImageSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    v6 = 0.0;
    goto LABEL_7;
  }

  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  objc_opt_class();
  v6 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
  type = [transitListItem2 type];

  if (type != 12)
  {
    transitListItem = [(TransitDirectionsIconStepView *)self iconImageView];
    image = [transitListItem image];
    [image size];
    v6 = v10 * 0.5 + -1.0;

LABEL_5:
  }

LABEL_7:

  return v6;
}

- (double)_maximumIconWidth
{
  v2 = sub_10000FA08(self);
  result = 40.0;
  if (v2 == 5)
  {
    return 30.0;
  }

  return result;
}

- (id)_imageViewPositionConstraints
{
  v3 = objc_alloc_init(NSMutableArray);
  centerXAnchor = [(MKArtworkImageView *)self->_iconImageView centerXAnchor];
  leadingAccessoryLayoutGuide = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  centerXAnchor2 = [leadingAccessoryLayoutGuide centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v8 = [v7 _maps_withIdentifier:@"iconCenterXToLeadingGuideCenterX"];
  [v3 addObject:v8];

  v9 = [v3 copy];

  return v9;
}

- (id)_initialConstraints
{
  v88.receiver = self;
  v88.super_class = TransitDirectionsIconStepView;
  _initialConstraints = [(TransitDirectionsStepView *)&v88 _initialConstraints];
  topAnchor = [(TransitDirectionsColoredLine *)self->_topLink topAnchor];
  topAnchor2 = [(UIView *)self->_iconLinksGroupingView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v7 = [v6 _maps_withIdentifier:@"topLinkTopToGroupingTop"];
  [_initialConstraints addObject:v7];

  bottomAnchor = [(UIView *)self->_iconLinksGroupingView bottomAnchor];
  bottomAnchor2 = [(TransitDirectionsColoredLine *)self->_bottomLink bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v11 = [v10 _maps_withIdentifier:@"groupingBottomToBottomLinkBottom"];
  [_initialConstraints addObject:v11];

  leadingAnchor = [(TransitDirectionsColoredLine *)self->_topLink leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_iconLinksGroupingView leadingAnchor];
  v14 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v15 = [v14 _maps_withIdentifier:@"topLinkLeadingToGroupingLeading"];
  [_initialConstraints addObject:v15];

  trailingAnchor = [(UIView *)self->_iconLinksGroupingView trailingAnchor];
  trailingAnchor2 = [(TransitDirectionsColoredLine *)self->_topLink trailingAnchor];
  v18 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v19 = [v18 _maps_withIdentifier:@"groupingTrailingToTopLinkTrailing"];
  [_initialConstraints addObject:v19];

  leadingAnchor3 = [(MKArtworkImageView *)self->_iconImageView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_iconLinksGroupingView leadingAnchor];
  v22 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v23 = [v22 _maps_withIdentifier:@"iconLeadingToGroupingLeading"];
  [_initialConstraints addObject:v23];

  trailingAnchor3 = [(UIView *)self->_iconLinksGroupingView trailingAnchor];
  trailingAnchor4 = [(MKArtworkImageView *)self->_iconImageView trailingAnchor];
  v26 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
  v27 = [v26 _maps_withIdentifier:@"groupingTrailingToIconTrailing"];
  [_initialConstraints addObject:v27];

  topAnchor3 = [(MKArtworkImageView *)self->_iconImageView topAnchor];
  topAnchor4 = [(UIView *)self->_iconLinksGroupingView topAnchor];
  v30 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v31 = [v30 _maps_withIdentifier:@"iconTopToGroupingTop"];
  [_initialConstraints addObject:v31];

  bottomAnchor3 = [(UIView *)self->_iconLinksGroupingView bottomAnchor];
  bottomAnchor4 = [(MKArtworkImageView *)self->_iconImageView bottomAnchor];
  v34 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
  v35 = [v34 _maps_withIdentifier:@"groupingBotomToIconBottom"];
  [_initialConstraints addObject:v35];

  _imageViewPositionConstraints = [(TransitDirectionsIconStepView *)self _imageViewPositionConstraints];
  [_initialConstraints addObjectsFromArray:_imageViewPositionConstraints];

  heightAnchor = [(MKArtworkImageView *)self->_iconImageView heightAnchor];
  v38 = [heightAnchor constraintEqualToConstant:1.0];
  v39 = [v38 _maps_withIdentifier:@"iconHeight"];

  LODWORD(v40) = 1132068864;
  [v39 setPriority:v40];
  [_initialConstraints addObject:v39];
  widthAnchor = [(MKArtworkImageView *)self->_iconImageView widthAnchor];
  v42 = [widthAnchor constraintEqualToConstant:1.0];
  v43 = [v42 _maps_withIdentifier:@"iconWidth"];

  LODWORD(v44) = 1132068864;
  [v43 setPriority:v44];
  [_initialConstraints addObject:v43];
  widthAnchor2 = [(MKArtworkImageView *)self->_iconImageView widthAnchor];
  [(TransitDirectionsIconStepView *)self _maximumIconWidth];
  v46 = [widthAnchor2 constraintLessThanOrEqualToConstant:?];
  v47 = [v46 _maps_withIdentifier:@"iconMaxWidth"];
  [_initialConstraints addObject:v47];

  heightAnchor2 = [(MKArtworkImageView *)self->_iconImageView heightAnchor];
  [(TransitDirectionsIconStepView *)self _maximumIconHeight];
  v49 = [heightAnchor2 constraintLessThanOrEqualToConstant:?];
  v50 = [v49 _maps_withIdentifier:@"iconMaxHeight"];
  [_initialConstraints addObject:v50];

  widthAnchor3 = [(TransitDirectionsColoredLine *)self->_topLink widthAnchor];
  v52 = [widthAnchor3 constraintEqualToConstant:0.0];
  v53 = [v52 _maps_withIdentifier:@"topLinkWidth"];
  linkWidthConstraint = self->_linkWidthConstraint;
  self->_linkWidthConstraint = v53;

  [_initialConstraints addObject:self->_linkWidthConstraint];
  widthAnchor4 = [(TransitDirectionsColoredLine *)self->_bottomLink widthAnchor];
  widthAnchor5 = [(TransitDirectionsColoredLine *)self->_topLink widthAnchor];
  v57 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  v58 = [v57 _maps_withIdentifier:@"bottomLinkWidth"];
  [_initialConstraints addObject:v58];

  centerXAnchor = [(TransitDirectionsColoredLine *)self->_topLink centerXAnchor];
  centerXAnchor2 = [(MKArtworkImageView *)self->_iconImageView centerXAnchor];
  v61 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v62 = [v61 _maps_withIdentifier:@"topLinkCenterXToIconCenterX"];
  [_initialConstraints addObject:v62];

  centerXAnchor3 = [(TransitDirectionsColoredLine *)self->_bottomLink centerXAnchor];
  centerXAnchor4 = [(TransitDirectionsColoredLine *)self->_topLink centerXAnchor];
  v65 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v66 = [v65 _maps_withIdentifier:@"bottomLinkCenterXToIconCenterX"];
  [_initialConstraints addObject:v66];

  topAnchor5 = [(TransitDirectionsColoredLine *)self->_topLink topAnchor];
  topAnchor6 = [(TransitDirectionsIconStepView *)self topAnchor];
  v69 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v70 = [v69 _maps_withIdentifier:@"topLinkTopToContentViewTopConstraint"];
  topLinkToContentViewTopConstraint = self->_topLinkToContentViewTopConstraint;
  self->_topLinkToContentViewTopConstraint = v70;

  [_initialConstraints addObject:self->_topLinkToContentViewTopConstraint];
  bottomAnchor5 = [(TransitDirectionsColoredLine *)self->_topLink bottomAnchor];
  centerYAnchor = [(MKArtworkImageView *)self->_iconImageView centerYAnchor];
  v74 = [bottomAnchor5 constraintEqualToAnchor:centerYAnchor];
  v75 = [v74 _maps_withIdentifier:@"topLinkBottomToImageViewCenterYConstraint"];
  topLinkToImageViewCenterConstraint = self->_topLinkToImageViewCenterConstraint;
  self->_topLinkToImageViewCenterConstraint = v75;

  [_initialConstraints addObject:self->_topLinkToImageViewCenterConstraint];
  topAnchor7 = [(TransitDirectionsColoredLine *)self->_bottomLink topAnchor];
  centerYAnchor2 = [(MKArtworkImageView *)self->_iconImageView centerYAnchor];
  v79 = [topAnchor7 constraintEqualToAnchor:centerYAnchor2];
  v80 = [v79 _maps_withIdentifier:@"bottomLinkTopToImageViewCenterYConstraint"];
  bottomLinkToImageViewCenterConstraint = self->_bottomLinkToImageViewCenterConstraint;
  self->_bottomLinkToImageViewCenterConstraint = v80;

  [_initialConstraints addObject:self->_bottomLinkToImageViewCenterConstraint];
  bottomAnchor6 = [(TransitDirectionsColoredLine *)self->_bottomLink bottomAnchor];
  bottomAnchor7 = [(TransitDirectionsIconStepView *)self bottomAnchor];
  v84 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v85 = [v84 _maps_withIdentifier:@"bottomLinkBottomToContentViewBottomConstraint"];
  bottomLinkToContentViewBottomConstraint = self->_bottomLinkToContentViewBottomConstraint;
  self->_bottomLinkToContentViewBottomConstraint = v85;

  [_initialConstraints addObject:self->_bottomLinkToContentViewBottomConstraint];

  return _initialConstraints;
}

- (id)_UIView
{
  v2 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (id)_createImageView
{
  v3 = [[MKArtworkImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [(TransitDirectionsIconStepView *)self layer];
  backgroundColor = [layer backgroundColor];
  layer2 = [v3 layer];
  [layer2 setBackgroundColor:backgroundColor];

  LODWORD(v7) = 1148829696;
  [v3 _mapkit_setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148829696;
  [v3 _mapkit_setContentHuggingPriority:1 forAxis:v8];
  [v3 setContentMode:1];

  return v3;
}

- (void)_createSubviews
{
  v13.receiver = self;
  v13.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsStepView *)&v13 _createSubviews];
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  iconLinksGroupingView = self->_iconLinksGroupingView;
  self->_iconLinksGroupingView = v3;

  [(UIView *)self->_iconLinksGroupingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_iconLinksGroupingView setUserInteractionEnabled:0];
  LODWORD(v5) = 1148846080;
  [(UIView *)self->_iconLinksGroupingView _mapkit_setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(UIView *)self->_iconLinksGroupingView _mapkit_setContentHuggingPriority:1 forAxis:v6];
  [(TransitDirectionsIconStepView *)self addSubview:self->_iconLinksGroupingView];
  v7 = [(TransitDirectionsIconStepView *)self _lineColorViewWithStyle:2];
  topLink = self->_topLink;
  self->_topLink = v7;

  [(UIView *)self->_iconLinksGroupingView addSubview:self->_topLink];
  v9 = [(TransitDirectionsIconStepView *)self _lineColorViewWithStyle:3];
  bottomLink = self->_bottomLink;
  self->_bottomLink = v9;

  [(UIView *)self->_iconLinksGroupingView addSubview:self->_bottomLink];
  _createImageView = [(TransitDirectionsIconStepView *)self _createImageView];
  iconImageView = self->_iconImageView;
  self->_iconImageView = _createImageView;

  [(UIView *)self->_iconLinksGroupingView addSubview:self->_iconImageView];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TransitDirectionsIconStepView;
  [(TransitDirectionsStepView *)&v4 prepareForReuse];
  hasAlternateImageSource = self->_hasAlternateImageSource;
  self->_hasAlternateImageSource = 0;

  [(MKArtworkImageView *)self->_iconImageView setHidden:0];
}

@end