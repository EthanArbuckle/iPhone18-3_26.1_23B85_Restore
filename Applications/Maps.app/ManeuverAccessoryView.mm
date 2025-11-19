@interface ManeuverAccessoryView
- (CGSize)intrinsicContentSize;
- (double)_rightAdditionalInset;
- (double)_sharpRightAdditionalInset;
- (double)preferredLeadingPadding;
- (id)initForDetached:(BOOL)a3;
- (void)layoutSubviews;
- (void)setIsRerouting:(BOOL)a3;
- (void)setManeuverArtwork:(id)a3;
- (void)setTransportType:(int)a3;
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

  v9 = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
  v10 = [v9 junction];

  if (!v10)
  {
    v9 = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
    if ([v9 maneuver] == 61)
    {

LABEL_24:
      [(ManeuverAccessoryView *)self _sharpRightAdditionalInset];
      v3 = v15 + v3;
LABEL_25:
      v9 = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
      if ([v9 maneuver] == 2)
      {

        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  v11 = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
  v12 = [v11 junction];
  v13 = [v12 willSnapToSharpRight];

  if (!v10)
  {

    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v13)
  {
    [(ManeuverAccessoryView *)self _sharpRightAdditionalInset];
    v3 = v14 + v3;
  }

LABEL_27:
  v16 = [(GuidanceManeuverView *)self->_maneuverView maneuverArtwork];
  v17 = [v16 junction];
  v18 = [v17 willSnapToRightHandTurn];

  if (!v10)
  {

    if ((v18 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_29;
  }

  if (v18)
  {
LABEL_29:
    [(ManeuverAccessoryView *)self _rightAdditionalInset];
    return v19 + v3;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(ManeuverAccessoryView *)self isRerouting];
  v4 = 20.0;
  v5 = 20.0;
  v6 = 20.0;
  if ((v3 & 1) == 0)
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
    v8 = [(ManeuverAccessoryView *)self usesArrowMetricsReferenceSize];
    v7 = v5;
    if ((v8 & 1) == 0)
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
  v11 = [(ManeuverAccessoryView *)self maneuverView];
  [v11 setFrame:{v9, 0.0, v5, v4}];

  v12 = [(ManeuverAccessoryView *)self transportTypeImageView];
  [v12 setFrame:{v10, 0.0, 20.0, 20.0}];
}

- (void)setIsRerouting:(BOOL)a3
{
  v3 = a3;
  self->_isRerouting = a3;
  v5 = [(ManeuverAccessoryView *)self maneuverView];
  [v5 setHidden:v3];

  v6 = [(ManeuverAccessoryView *)self transportTypeImageView];
  [v6 setHidden:v3 ^ 1];

  [(ManeuverAccessoryView *)self invalidateIntrinsicContentSize];

  [(ManeuverAccessoryView *)self setNeedsLayout];
}

- (void)setTransportType:(int)a3
{
  self->_transportType = a3;
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [UIImage systemImageNamed:*(&off_10162CDC8 + a3)];
  }

  v5 = v4;
  [(UIImageView *)self->_transportTypeImageView setImage:v4];
  [(ManeuverAccessoryView *)self invalidateIntrinsicContentSize];
  [(ManeuverAccessoryView *)self setNeedsLayout];
}

- (void)setManeuverArtwork:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_maneuverArtwork, a3);
  if ([v8 isRoundaboutManeuver])
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
  v7 = [(ManeuverAccessoryView *)self maneuverView];
  [v7 setManeuverArtwork:maneuverArtwork];

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

- (id)initForDetached:(BOOL)a3
{
  v23.receiver = self;
  v23.super_class = ManeuverAccessoryView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(ManeuverAccessoryView *)&v23 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(ManeuverAccessoryView *)v7 setAccessibilityIdentifier:v9];

    v7->_isDetached = a3;
    v10 = [[GuidanceManeuverView alloc] initWithFrame:0 textureProvider:CGRectZero.origin.x, y, width, height];
    maneuverView = v7->_maneuverView;
    v7->_maneuverView = v10;

    MKDefaultCompactManeuverMetrics();
    v12 = v7->_maneuverView;
    memcpy(__dst, __src, sizeof(__dst));
    [(GuidanceManeuverView *)v12 setArrowMetrics:__dst];
    memset(__dst, 0, sizeof(__dst));
    MKDefaultJunctionManeuverMetrics();
    BYTE2(__dst[21]) = 1;
    v13 = v7->_maneuverView;
    memcpy(v20, __dst, sizeof(v20));
    [(GuidanceManeuverView *)v13 setJunctionArrowMetrics:v20];
    [(GuidanceManeuverView *)v7->_maneuverView setUsesCompactImages:1];
    [(GuidanceManeuverView *)v7->_maneuverView setFraming:1];
    v14 = +[UIColor clearColor];
    [(GuidanceManeuverView *)v7->_maneuverView setAccentColor:v14];

    [(GuidanceManeuverView *)v7->_maneuverView setContentMode:1];
    [(ManeuverAccessoryView *)v7 addSubview:v7->_maneuverView];
    v15 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    transportTypeImageView = v7->_transportTypeImageView;
    v7->_transportTypeImageView = v15;

    [(UIImageView *)v7->_transportTypeImageView setAccessibilityIdentifier:@"TransportTypeImageView"];
    [(UIImageView *)v7->_transportTypeImageView setContentMode:1];
    [(UIImageView *)v7->_transportTypeImageView setHidden:1];
    [(ManeuverAccessoryView *)v7 addSubview:v7->_transportTypeImageView];
    v17 = +[MapsTheme apertureKeyColor];
    [(GuidanceManeuverView *)v7->_maneuverView setArrowColor:v17];

    v18 = +[MapsTheme apertureKeyColor];
    [(UIImageView *)v7->_transportTypeImageView setTintColor:v18];

    v7->_usesArrowMetricsReferenceSize = 1;
  }

  return v7;
}

@end