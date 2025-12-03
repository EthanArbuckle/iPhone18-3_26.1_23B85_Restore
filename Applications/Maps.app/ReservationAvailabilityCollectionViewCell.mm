@interface ReservationAvailabilityCollectionViewCell
- (ReservationAvailabilityCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)initializeConstraints;
- (void)setColor:(id)color;
- (void)setSubText:(id)text;
- (void)setTitleText:(id)text;
- (void)updateBorderMetrics;
- (void)updateColors;
- (void)updateConstraints;
@end

@implementation ReservationAvailabilityCollectionViewCell

- (void)setSubText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_subText isEqualToString:?])
  {
    v4 = [textCopy copy];
    subText = self->_subText;
    self->_subText = v4;

    [(UILabel *)self->_subLabel setText:textCopy];
    [(ReservationAvailabilityCollectionViewCell *)self updateBorderMetrics];
    [(ReservationAvailabilityCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    v4 = [textCopy copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    v6 = [textCopy copy];
    [(UILabel *)self->_titleLabel setText:v6];
  }
}

- (void)updateBorderMetrics
{
  subText = [(ReservationAvailabilityCollectionViewCell *)self subText];
  v4 = [subText length];

  containerView = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  layer = [containerView layer];
  v6 = layer;
  v7 = 1.0;
  if (!v4)
  {
    v7 = 0.0;
  }

  [layer setBorderWidth:v7];
}

- (void)updateColors
{
  v3 = +[UIColor clearColor];
  bottomColorView = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  [bottomColorView setBackgroundColor:v3];

  v5 = +[UIColor clearColor];
  containerView = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  [containerView setBackgroundColor:v5];

  color = [(ReservationAvailabilityCollectionViewCell *)self color];
  cGColor = [color CGColor];
  containerView2 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  layer = [containerView2 layer];
  [layer setBorderColor:cGColor];

  color2 = [(ReservationAvailabilityCollectionViewCell *)self color];
  topColorView = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  [topColorView setBackgroundColor:color2];

  color3 = [(ReservationAvailabilityCollectionViewCell *)self color];
  subLabel = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  [subLabel setTextColor:color3];
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    [(ReservationAvailabilityCollectionViewCell *)self updateColors];
  }
}

- (void)updateConstraints
{
  subText = [(ReservationAvailabilityCollectionViewCell *)self subText];
  v4 = [subText length];

  if (v4)
  {
    bottomColorViewBottomConstraint = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewBottomConstraint];

    if (!bottomColorViewBottomConstraint)
    {
      bottomColorView = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
      bottomAnchor = [bottomColorView bottomAnchor];
      subLabel = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
      lastBaselineAnchor = [subLabel lastBaselineAnchor];
      v10 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:8.0];
      [(ReservationAvailabilityCollectionViewCell *)self setBottomColorViewBottomConstraint:v10];
    }

    bottomColorViewHeightConstraint = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewHeightConstraint];
    [bottomColorViewHeightConstraint setActive:0];

    bottomColorViewBottomConstraint2 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewBottomConstraint];
  }

  else
  {
    bottomColorViewHeightConstraint2 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewHeightConstraint];

    if (!bottomColorViewHeightConstraint2)
    {
      bottomColorView2 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
      heightAnchor = [bottomColorView2 heightAnchor];
      v16 = [heightAnchor constraintEqualToConstant:0.0];
      [(ReservationAvailabilityCollectionViewCell *)self setBottomColorViewHeightConstraint:v16];
    }

    bottomColorViewBottomConstraint3 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewBottomConstraint];
    [bottomColorViewBottomConstraint3 setActive:0];

    bottomColorViewBottomConstraint2 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorViewHeightConstraint];
  }

  v18 = bottomColorViewBottomConstraint2;
  [bottomColorViewBottomConstraint2 setActive:1];

  v19.receiver = self;
  v19.super_class = ReservationAvailabilityCollectionViewCell;
  [(ReservationAvailabilityCollectionViewCell *)&v19 updateConstraints];
}

- (void)initializeConstraints
{
  contentView = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  subLabel = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  [subLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  containerView = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  [containerView setTranslatesAutoresizingMaskIntoConstraints:0];

  topColorView = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  [topColorView setTranslatesAutoresizingMaskIntoConstraints:0];

  bottomColorView = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  [bottomColorView setTranslatesAutoresizingMaskIntoConstraints:0];

  topColorView2 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  topAnchor = [topColorView2 topAnchor];
  contentView2 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v102 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];

  topColorView3 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  leadingAnchor = [topColorView3 leadingAnchor];
  contentView3 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v101 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  topColorView4 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  trailingAnchor = [topColorView4 trailingAnchor];
  contentView4 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v100 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  topColorView5 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  bottomAnchor = [topColorView5 bottomAnchor];
  titleLabel2 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel2 lastBaselineAnchor];
  v99 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:12.0];

  bottomColorView2 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  topAnchor3 = [bottomColorView2 topAnchor];
  topColorView6 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  bottomAnchor2 = [topColorView6 bottomAnchor];
  v98 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2];

  bottomColorView3 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  leadingAnchor3 = [bottomColorView3 leadingAnchor];
  contentView5 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v97 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  bottomColorView4 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  trailingAnchor3 = [bottomColorView4 trailingAnchor];
  contentView6 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v96 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  titleLabel3 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  topAnchor4 = [titleLabel3 topAnchor];
  topColorView7 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  topAnchor5 = [topColorView7 topAnchor];
  v95 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:8.0];

  titleLabel4 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  leadingAnchor5 = [titleLabel4 leadingAnchor];
  contentView7 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  leadingAnchor6 = [contentView7 leadingAnchor];
  v94 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:17.5];

  titleLabel5 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  trailingAnchor5 = [titleLabel5 trailingAnchor];
  contentView8 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  trailingAnchor6 = [contentView8 trailingAnchor];
  v93 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-17.5];

  subLabel2 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  firstBaselineAnchor = [subLabel2 firstBaselineAnchor];
  bottomColorView5 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  topAnchor6 = [bottomColorView5 topAnchor];
  v92 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor6 constant:15.0];

  bottomColorView6 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  leadingAnchor7 = [bottomColorView6 leadingAnchor];
  subLabel3 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  leadingAnchor8 = [subLabel3 leadingAnchor];
  v91 = [leadingAnchor7 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:-17.5];

  bottomColorView7 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  trailingAnchor7 = [bottomColorView7 trailingAnchor];
  subLabel4 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  trailingAnchor8 = [subLabel4 trailingAnchor];
  v90 = [trailingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor8 constant:17.5];

  titleLabel6 = [(ReservationAvailabilityCollectionViewCell *)self titleLabel];
  centerXAnchor = [titleLabel6 centerXAnchor];
  subLabel5 = [(ReservationAvailabilityCollectionViewCell *)self subLabel];
  centerXAnchor2 = [subLabel5 centerXAnchor];
  v89 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  containerView2 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  topAnchor7 = [containerView2 topAnchor];
  topColorView8 = [(ReservationAvailabilityCollectionViewCell *)self topColorView];
  topAnchor8 = [topColorView8 topAnchor];
  v69 = [topAnchor7 constraintEqualToAnchor:topAnchor8];

  containerView3 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  leadingAnchor9 = [containerView3 leadingAnchor];
  contentView9 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  leadingAnchor10 = [contentView9 leadingAnchor];
  v88 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];

  containerView4 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  trailingAnchor9 = [containerView4 trailingAnchor];
  contentView10 = [(ReservationAvailabilityCollectionViewCell *)self contentView];
  trailingAnchor10 = [contentView10 trailingAnchor];
  v87 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];

  containerView5 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  bottomAnchor3 = [containerView5 bottomAnchor];
  bottomColorView8 = [(ReservationAvailabilityCollectionViewCell *)self bottomColorView];
  bottomAnchor4 = [bottomColorView8 bottomAnchor];
  v82 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];

  containerView6 = [(ReservationAvailabilityCollectionViewCell *)self containerView];
  widthAnchor = [containerView6 widthAnchor];
  v85 = [widthAnchor constraintGreaterThanOrEqualToConstant:88.0];

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

- (ReservationAvailabilityCollectionViewCell)initWithFrame:(CGRect)frame
{
  v39.receiver = self;
  v39.super_class = ReservationAvailabilityCollectionViewCell;
  v3 = [(ReservationAvailabilityCollectionViewCell *)&v39 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    [(ReservationAvailabilityCollectionViewCell *)v3 setTitleLabel:v4];

    v5 = +[UIColor clearColor];
    titleLabel = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [titleLabel setBackgroundColor:v5];

    titleLabel2 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [titleLabel2 setTextAlignment:1];

    v8 = +[UIColor whiteColor];
    titleLabel3 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [titleLabel3 setTextColor:v8];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [v10 pointSize];
    v12 = v11;

    v13 = [UIFont systemFontOfSize:v12 weight:UIFontWeightLight];
    titleLabel4 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [titleLabel4 setFont:v13];

    v15 = objc_alloc_init(UILabel);
    [(ReservationAvailabilityCollectionViewCell *)v3 setSubLabel:v15];

    subLabel = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [subLabel setNumberOfLines:2];

    v17 = +[UIColor clearColor];
    subLabel2 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [subLabel2 setBackgroundColor:v17];

    subLabel3 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [subLabel3 setTextAlignment:1];

    v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    subLabel4 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [subLabel4 setFont:v20];

    v22 = objc_alloc_init(UIView);
    [(ReservationAvailabilityCollectionViewCell *)v3 setContainerView:v22];

    containerView = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    [containerView setClipsToBounds:1];

    v24 = objc_alloc_init(UIView);
    [(ReservationAvailabilityCollectionViewCell *)v3 setTopColorView:v24];

    v25 = objc_alloc_init(UIView);
    [(ReservationAvailabilityCollectionViewCell *)v3 setBottomColorView:v25];

    contentView = [(ReservationAvailabilityCollectionViewCell *)v3 contentView];
    containerView2 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    [contentView addSubview:containerView2];

    contentView2 = [(ReservationAvailabilityCollectionViewCell *)v3 contentView];
    titleLabel5 = [(ReservationAvailabilityCollectionViewCell *)v3 titleLabel];
    [contentView2 addSubview:titleLabel5];

    contentView3 = [(ReservationAvailabilityCollectionViewCell *)v3 contentView];
    subLabel5 = [(ReservationAvailabilityCollectionViewCell *)v3 subLabel];
    [contentView3 addSubview:subLabel5];

    containerView3 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    topColorView = [(ReservationAvailabilityCollectionViewCell *)v3 topColorView];
    [containerView3 addSubview:topColorView];

    containerView4 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    bottomColorView = [(ReservationAvailabilityCollectionViewCell *)v3 bottomColorView];
    [containerView4 addSubview:bottomColorView];

    containerView5 = [(ReservationAvailabilityCollectionViewCell *)v3 containerView];
    layer = [containerView5 layer];
    [layer setCornerRadius:8.0];

    [(ReservationAvailabilityCollectionViewCell *)v3 updateColors];
    [(ReservationAvailabilityCollectionViewCell *)v3 initializeConstraints];
  }

  return v3;
}

@end