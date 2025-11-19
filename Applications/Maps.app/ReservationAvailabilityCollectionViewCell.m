@interface ReservationAvailabilityCollectionViewCell
- (ReservationAvailabilityCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)initializeConstraints;
- (void)setColor:(id)a3;
- (void)setSubText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)updateBorderMetrics;
- (void)updateColors;
- (void)updateConstraints;
@end

@implementation ReservationAvailabilityCollectionViewCell

- (void)setSubText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_subText isEqualToString:?])
  {
    v4 = [v6 copy];
    subText = self->_subText;
    self->_subText = v4;

    [(UILabel *)self->_subLabel setText:v6];
    [(ReservationAvailabilityCollectionViewCell *)self updateBorderMetrics];
    [(ReservationAvailabilityCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setTitleText:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    v4 = [v7 copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    v6 = [v7 copy];
    [(UILabel *)self->_titleLabel setText:v6];
  }
}

- (void)updateBorderMetrics
{
  v3 = [(ReservationAvailabilityCollectionViewCell *)self subText];
  v4 = [v3 length];

  v8 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  v5 = [v8 layer];
  v6 = v5;
  v7 = 1.0;
  if (!v4)
  {
    v7 = 0.0;
  }

  [v5 setBorderWidth:v7];
}

- (void)updateColors
{
  v3 = +[UIColor clearColor];
  v4 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  [v4 setBackgroundColor:v3];

  v5 = +[UIColor clearColor];
  v6 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  [v6 setBackgroundColor:v5];

  v7 = [(ReservationAvailabilityCollectionViewCell *)self color];
  v8 = [v7 CGColor];
  v9 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  v10 = [v9 layer];
  [v10 setBorderColor:v8];

  v11 = [(ReservationAvailabilityCollectionViewCell *)self color];
  v12 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  [v12 setBackgroundColor:v11];

  v14 = [(ReservationAvailabilityCollectionViewCell *)self color];
  v13 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  [v13 setTextColor:v14];
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, a3);
    [(ReservationAvailabilityCollectionViewCell *)self updateColors];
  }
}

- (void)updateConstraints
{
  v3 = [(ReservationAvailabilityCollectionViewCell *)self subText];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewBottomConstraint];

    if (!v5)
    {
      v6 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
      v7 = [v6 bottomAnchor];
      v8 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
      v9 = [v8 lastBaselineAnchor];
      v10 = [v7 constraintEqualToAnchor:v9 constant:8.0];
      [(ReservationAvailabilityCollectionViewCell *)self setBottomColorViewBottomConstraint:v10];
    }

    v11 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewHeightConstraint];
    [v11 setActive:0];

    v12 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewBottomConstraint];
  }

  else
  {
    v13 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewHeightConstraint];

    if (!v13)
    {
      v14 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
      v15 = [v14 heightAnchor];
      v16 = [v15 constraintEqualToConstant:0.0];
      [(ReservationAvailabilityCollectionViewCell *)self setBottomColorViewHeightConstraint:v16];
    }

    v17 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewBottomConstraint];
    [v17 setActive:0];

    v12 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewHeightConstraint];
  }

  v18 = v12;
  [v12 setActive:1];

  v19.receiver = self;
  v19.super_class = ReservationAvailabilityCollectionViewCell;
  [(ReservationAvailabilityCollectionViewCell *)&v19 updateConstraints];
}

- (void)initializeConstraints
{
  v3 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  v10 = [v9 topAnchor];
  v11 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v12 = [v11 topAnchor];
  v102 = [v10 constraintEqualToAnchor:v12 constant:9.0];

  v13 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  v14 = [v13 leadingAnchor];
  v15 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v16 = [v15 leadingAnchor];
  v101 = [v14 constraintEqualToAnchor:v16];

  v17 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  v18 = [v17 trailingAnchor];
  v19 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v20 = [v19 trailingAnchor];
  v100 = [v18 constraintEqualToAnchor:v20];

  v21 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  v22 = [v21 bottomAnchor];
  v23 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  v24 = [v23 lastBaselineAnchor];
  v99 = [v22 constraintEqualToAnchor:v24 constant:12.0];

  v25 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  v26 = [v25 topAnchor];
  v27 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  v28 = [v27 bottomAnchor];
  v98 = [v26 constraintEqualToAnchor:v28];

  v29 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  v30 = [v29 leadingAnchor];
  v31 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v32 = [v31 leadingAnchor];
  v97 = [v30 constraintEqualToAnchor:v32];

  v33 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  v34 = [v33 trailingAnchor];
  v35 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v36 = [v35 trailingAnchor];
  v96 = [v34 constraintEqualToAnchor:v36];

  v37 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  v38 = [v37 topAnchor];
  v39 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  v40 = [v39 topAnchor];
  v95 = [v38 constraintEqualToAnchor:v40 constant:8.0];

  v41 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  v42 = [v41 leadingAnchor];
  v43 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v44 = [v43 leadingAnchor];
  v94 = [v42 constraintEqualToAnchor:v44 constant:17.5];

  v45 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  v46 = [v45 trailingAnchor];
  v47 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v48 = [v47 trailingAnchor];
  v93 = [v46 constraintEqualToAnchor:v48 constant:-17.5];

  v49 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  v50 = [v49 firstBaselineAnchor];
  v51 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  v52 = [v51 topAnchor];
  v92 = [v50 constraintEqualToAnchor:v52 constant:15.0];

  v53 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  v54 = [v53 leadingAnchor];
  v55 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  v56 = [v55 leadingAnchor];
  v91 = [v54 constraintLessThanOrEqualToAnchor:v56 constant:-17.5];

  v57 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  v58 = [v57 trailingAnchor];
  v59 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  v60 = [v59 trailingAnchor];
  v90 = [v58 constraintGreaterThanOrEqualToAnchor:v60 constant:17.5];

  v61 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  v62 = [v61 centerXAnchor];
  v63 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  v64 = [v63 centerXAnchor];
  v89 = [v62 constraintEqualToAnchor:v64];

  v65 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  v66 = [v65 topAnchor];
  v67 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  v68 = [v67 topAnchor];
  v69 = [v66 constraintEqualToAnchor:v68];

  v70 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  v71 = [v70 leadingAnchor];
  v72 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v73 = [v72 leadingAnchor];
  v88 = [v71 constraintEqualToAnchor:v73];

  v74 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  v75 = [v74 trailingAnchor];
  v76 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  v77 = [v76 trailingAnchor];
  v87 = [v75 constraintEqualToAnchor:v77];

  v78 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  v79 = [v78 bottomAnchor];
  v80 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  v81 = [v80 bottomAnchor];
  v82 = [v79 constraintEqualToAnchor:v81];

  v83 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  v84 = [v83 widthAnchor];
  v85 = [v84 constraintGreaterThanOrEqualToConstant:88.0];

  v103[0] = v102;
  v103[1] = v101;
  v103[2] = v100;
  v103[3] = v99;
  v103[4] = v98;
  v103[5] = v97;
  v103[6] = v96;
  v103[7] = v95;
  v103[8] = v94;
  v103[9] = v93;
  v103[10] = v92;
  v103[11] = v89;
  v103[12] = v69;
  v103[13] = v88;
  v103[14] = v87;
  v103[15] = v82;
  v103[16] = v85;
  v103[17] = v91;
  v103[18] = v90;
  v86 = [NSArray arrayWithObjects:v103 count:19];
  [NSLayoutConstraint activateConstraints:v86];
}

- (ReservationAvailabilityCollectionViewCell)initWithFrame:(CGRect)a3
{
  v39.receiver = self;
  v39.super_class = ReservationAvailabilityCollectionViewCell;
  v3 = [(ReservationAvailabilityCollectionViewCell *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    [(ReservationAvailabilityCollectionViewCell *)v3 setTitleLabel:v4];

    v5 = +[UIColor clearColor];
    v6 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [v6 setBackgroundColor:v5];

    v7 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [v7 setTextAlignment:1];

    v8 = +[UIColor whiteColor];
    v9 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [v9 setTextColor:v8];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [v10 pointSize];
    v12 = v11;

    v13 = [UIFont systemFontOfSize:v12 weight:UIFontWeightLight];
    v14 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [v14 setFont:v13];

    v15 = objc_alloc_init(UILabel);
    [(ReservationAvailabilityCollectionViewCell *)v3 setSubLabel:v15];

    v16 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [v16 setNumberOfLines:2];

    v17 = +[UIColor clearColor];
    v18 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [v18 setBackgroundColor:v17];

    v19 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [v19 setTextAlignment:1];

    v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v21 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [v21 setFont:v20];

    v22 = objc_alloc_init(UIView);
    [(ReservationAvailabilityCollectionViewCell *)v3 setContainerView:v22];

    v23 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    [v23 setClipsToBounds:1];

    v24 = objc_alloc_init(UIView);
    [(ReservationAvailabilityCollectionViewCell *)v3 setTopColorView:v24];

    v25 = objc_alloc_init(UIView);
    [(ReservationAvailabilityCollectionViewCell *)v3 setBottomColorView:v25];

    v26 = [(ReservationAvailabilityCollectionViewCell *)v3 contentView];
    v27 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    [v26 addSubview:v27];

    v28 = [(ReservationAvailabilityCollectionViewCell *)v3 contentView];
    v29 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [v28 addSubview:v29];

    v30 = [(ReservationAvailabilityCollectionViewCell *)v3 contentView];
    v31 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [v30 addSubview:v31];

    v32 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    v33 = [(ReservationAvailabilityCollectionViewCell *)v3 topColorView];
    [v32 addSubview:v33];

    v34 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    v35 = [(ReservationAvailabilityCollectionViewCell *)v3 bottomColorView];
    [v34 addSubview:v35];

    v36 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    v37 = [v36 layer];
    [v37 setCornerRadius:8.0];

    [(ReservationAvailabilityCollectionViewCell *)v3 updateColors];
    [(ReservationAvailabilityCollectionViewCell *)v3 initializeConstraints];
  }

  return v3;
}

@end