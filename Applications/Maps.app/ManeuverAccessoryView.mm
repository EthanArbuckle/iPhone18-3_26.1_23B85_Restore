@interface ManeuverAccessoryView
- (CGSize)intrinsicContentSize;
- (double)_rightAdditionalInset;
- (double)_sharpRightAdditionalInset;
- (double)preferredLeadingPadding;
- (id)initForDetached:(BOOL)detached;
- (void)layoutSubviews;
- (void)setIsRerouting:(BOOL)rerouting;
- (void)setManeuverArtwork:(id)artwork;
- (void)setTransportType:(int)type;
@end

@implementation ManeuverAccessoryView

- (double)preferredLeadingPadding
{
  v3 = 0.0;
  if ([(ManeuverAccessoryView *)self usesArrowMetricsReferenceSize])
  {
    return v3;
  }

  maneuverView = self->_maneuverView;
  if (maneuverView)
  {
    [(GuidanceManeuverView *)maneuverView arrowMetrics];
    v3 = *(&v21 + 1);
    maneuverView = self->_maneuverView;
  }

  else
  {
    v50 = 0u;
    v51 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
  }

  [(GuidanceManeuverView *)maneuverView intrinsicContentSize:v21];
  v6 = 1.0;
  if (v5 > v3 * 0.875)
  {
    v6 = 0.0;
  }

  if (v5 > v3 * 0.75)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2.0;
  }

  if (v5 > v3 * 0.625)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3.0;
  }

  if (v5 > v3 * 0.5)
  {
    v3 = v8;
  }

  else
  {
    v3 = 4.0;
  }

  maneuverArtwork = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
  junction = [maneuverArtwork junction];

  if (!junction)
  {
    maneuverArtwork = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
    if ([maneuverArtwork maneuver] == 61)
    {

LABEL_24:
      [(ManeuverAccessoryView *)self _sharpRightAdditionalInset];
      v3 = v15 + v3;
LABEL_25:
      maneuverArtwork = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
      if ([maneuverArtwork maneuver] == 2)
      {

        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  maneuverArtwork2 = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
  junction2 = [maneuverArtwork2 junction];
  willSnapToSharpRight = [junction2 willSnapToSharpRight];

  if (!junction)
  {

    if (!willSnapToSharpRight)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (willSnapToSharpRight)
  {
    [(ManeuverAccessoryView *)self _sharpRightAdditionalInset];
    v3 = v14 + v3;
  }

LABEL_27:
  maneuverArtwork3 = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
  junction3 = [maneuverArtwork3 junction];
  willSnapToRightHandTurn = [junction3 willSnapToRightHandTurn];

  if (!junction)
  {

    if ((willSnapToRightHandTurn & 1) == 0)
    {
      return v3;
    }

    goto LABEL_29;
  }

  if (willSnapToRightHandTurn)
  {
LABEL_29:
    [(ManeuverAccessoryView *)self _rightAdditionalInset];
    return v19 + v3;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  isRerouting = [(ManeuverAccessoryView *)self isRerouting];
  v4 = 20.0;
  v5 = 20.0;
  v6 = 20.0;
  if ((isRerouting & 1) == 0)
  {
    maneuverView = self->_maneuverView;
    if (maneuverView)
    {
      [(GuidanceManeuverView *)maneuverView arrowMetrics];
      v6 = *(&v10 + 1);
      v5 = *&v11;
    }

    else
    {
      v39 = 0u;
      v40 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = 0.0;
      v10 = 0u;
      v6 = 0.0;
    }

    if ([(ManeuverAccessoryView *)self usesArrowMetricsReferenceSize:v10])
    {
      v4 = v6;
    }

    else
    {
      [(GuidanceManeuverView *)self->_maneuverView intrinsicContentSize];
    }
  }

  if (self->_isDetached)
  {
    v4 = 45.0;
  }

  v8 = fmax(v4, v6 * 0.5);
  v9 = v5;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  maneuverView = self->_maneuverView;
  if (maneuverView)
  {
    [(GuidanceManeuverView *)maneuverView arrowMetrics];
    v5 = *(&v13 + 1);
    v4 = *&v14;
  }

  else
  {
    v42 = 0u;
    v43 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = 0.0;
    v13 = 0u;
    v5 = 0.0;
  }

  v6 = [(ManeuverAccessoryView *)self isRerouting:v13];
  v7 = 20.0;
  if ((v6 & 1) == 0)
  {
    usesArrowMetricsReferenceSize = [(ManeuverAccessoryView *)self usesArrowMetricsReferenceSize];
    v7 = v5;
    if ((usesArrowMetricsReferenceSize & 1) == 0)
    {
      [(GuidanceManeuverView *)self->_maneuverView intrinsicContentSize];
    }
  }

  if (self->_isDetached)
  {
    v7 = 45.0;
  }

  v9 = (v5 - v7) * -0.5;
  v10 = v7 * 0.5 + -10.0;
  maneuverView = [(ManeuverAccessoryView *)self maneuverView];
  [maneuverView setFrame:{v9, 0.0, v5, v4}];

  transportTypeImageView = [(ManeuverAccessoryView *)self transportTypeImageView];
  [transportTypeImageView setFrame:{v10, 0.0, 20.0, 20.0}];
}

- (void)setIsRerouting:(BOOL)rerouting
{
  reroutingCopy = rerouting;
  self->_isRerouting = rerouting;
  maneuverView = [(ManeuverAccessoryView *)self maneuverView];
  [maneuverView setHidden:reroutingCopy];

  transportTypeImageView = [(ManeuverAccessoryView *)self transportTypeImageView];
  [transportTypeImageView setHidden:reroutingCopy ^ 1];

  [(ManeuverAccessoryView *)self invalidateIntrinsicContentSize];

  [(ManeuverAccessoryView *)self setNeedsLayout];
}

- (void)setTransportType:(int)type
{
  self->_transportType = type;
  if (type > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [UIImage systemImageNamed:*(&off_10162CDC8 + type)];
  }

  v5 = v4;
  [(UIImageView *)self->_transportTypeImageView setImage:v4];
  [(ManeuverAccessoryView *)self invalidateIntrinsicContentSize];
  [(ManeuverAccessoryView *)self setNeedsLayout];
}

- (void)setManeuverArtwork:(id)artwork
{
  artworkCopy = artwork;
  objc_storeStrong(&self->_maneuverArtwork, artwork);
  if ([artworkCopy isRoundaboutManeuver])
  {
    +[MapsTheme apertureKeyColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v5 = ;
  [(GuidanceManeuverView *)self->_maneuverView setAccentColor:v5];

  maneuverArtwork = self->_maneuverArtwork;
  maneuverView = [(ManeuverAccessoryView *)self maneuverView];
  [maneuverView setManeuverArtwork:maneuverArtwork];

  [(ManeuverAccessoryView *)self invalidateIntrinsicContentSize];
  [(ManeuverAccessoryView *)self setNeedsLayout];
}

- (double)_rightAdditionalInset
{
  if (qword_10195DB10 != -1)
  {
    dispatch_once(&qword_10195DB10, &stru_10162CDA8);
  }

  return *&qword_10195DB08;
}

- (double)_sharpRightAdditionalInset
{
  if (qword_10195DB00 != -1)
  {
    dispatch_once(&qword_10195DB00, &stru_10162CD88);
  }

  return *&qword_10195DAF8;
}

- (id)initForDetached:(BOOL)detached
{
  v23.receiver = self;
  v23.super_class = ManeuverAccessoryView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ManeuverAccessoryView *)&v23 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(ManeuverAccessoryView *)height setAccessibilityIdentifier:v9];

    height->_isDetached = detached;
    height2 = [[GuidanceManeuverView alloc] initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
    maneuverView = height->_maneuverView;
    height->_maneuverView = height2;

    MKDefaultCompactManeuverMetrics();
    v12 = height->_maneuverView;
    memcpy(__dst, __src, sizeof(__dst));
    [(GuidanceManeuverView *)v12 setArrowMetrics:__dst];
    memset(__dst, 0, sizeof(__dst));
    MKDefaultJunctionManeuverMetrics();
    BYTE2(__dst[21]) = 1;
    v13 = height->_maneuverView;
    memcpy(v20, __dst, sizeof(v20));
    [(GuidanceManeuverView *)v13 setJunctionArrowMetrics:v20];
    [(GuidanceManeuverView *)height->_maneuverView setUsesCompactImages:1];
    [(GuidanceManeuverView *)height->_maneuverView setFraming:1];
    v14 = +[UIColor clearColor];
    [(GuidanceManeuverView *)height->_maneuverView setAccentColor:v14];

    [(GuidanceManeuverView *)height->_maneuverView setContentMode:1];
    [(ManeuverAccessoryView *)height addSubview:height->_maneuverView];
    v15 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    transportTypeImageView = height->_transportTypeImageView;
    height->_transportTypeImageView = v15;

    [(UIImageView *)height->_transportTypeImageView setAccessibilityIdentifier:@"TransportTypeImageView"];
    [(UIImageView *)height->_transportTypeImageView setContentMode:1];
    [(UIImageView *)height->_transportTypeImageView setHidden:1];
    [(ManeuverAccessoryView *)height addSubview:height->_transportTypeImageView];
    v17 = +[MapsTheme apertureKeyColor];
    [(GuidanceManeuverView *)height->_maneuverView setArrowColor:v17];

    v18 = +[MapsTheme apertureKeyColor];
    [(UIImageView *)height->_transportTypeImageView setTintColor:v18];

    height->_usesArrowMetricsReferenceSize = 1;
  }

  return height;
}

@end