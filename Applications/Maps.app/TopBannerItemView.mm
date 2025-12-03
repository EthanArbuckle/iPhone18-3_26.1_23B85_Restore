@interface TopBannerItemView
- (TopBannerItemView)initWithCoder:(id)coder;
- (TopBannerItemView)initWithFrame:(CGRect)frame;
- (void)_buttonTapped:(id)tapped;
- (void)_customInit;
- (void)_deregisterObservers;
- (void)_setupConstraints;
- (void)_updateUI;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setFirstItemWithIcon:(BOOL)icon;
- (void)setItem:(id)item;
- (void)updateBadgeView;
@end

@implementation TopBannerItemView

- (void)_deregisterObservers
{
  v3 = NSStringFromSelector("artwork");
  [(TopBannerItem *)self->_item removeObserver:self forKeyPath:v3 context:off_1019328D8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = NSStringFromSelector("artwork");
  v9 = off_1019328D8;

  if (v9 == context && v11 == pathCopy)
  {
    [(TopBannerItemView *)self updateBadgeView];
  }
}

- (void)_updateUI
{
  buttonText = [(TopBannerItem *)self->_item buttonText];
  if ([buttonText length])
  {
    maxNumberOfLines = [(TopBannerItem *)self->_item maxNumberOfLines];
  }

  else
  {
    maxNumberOfLines = 0;
  }

  [(UILabel *)self->_messageLabel setNumberOfLines:maxNumberOfLines];

  attributedText = [(TopBannerItem *)self->_item attributedText];
  if ([attributedText length])
  {
    attributedText2 = [(TopBannerItem *)self->_item attributedText];
    [(UILabel *)self->_messageLabel setAttributedText:attributedText2];
  }

  else
  {
    [(UILabel *)self->_messageLabel setAttributedText:0];
  }

  buttonText2 = [(TopBannerItem *)self->_item buttonText];
  v8 = [buttonText2 length];

  if (v8)
  {
    button = self->_button;
    if (!button)
    {
      traitCollection = [(TopBannerItemView *)self traitCollection];
      v11 = [traitCollection userInterfaceIdiom] != 5;

      v12 = [UIButton buttonWithType:v11];
      v13 = self->_button;
      self->_button = v12;

      [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)self->_button addTarget:self action:"_buttonTapped:" forControlEvents:64];
      LODWORD(v14) = 1148829696;
      [(UIButton *)self->_button setContentHuggingPriority:0 forAxis:v14];
      titleLabel = [(UIButton *)self->_button titleLabel];
      [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165D908];

      button = self->_button;
    }

    if (([(UIButton *)button isDescendantOfView:self]& 1) == 0)
    {
      [(TopBannerItemView *)self addSubview:self->_button];
    }

    layout = [(TopBannerItem *)self->_item layout];
    if (layout == 1)
    {
      if (!self->_messageLabelToButtonConstraint)
      {
        lastBaselineAnchor = [(UILabel *)self->_messageLabel lastBaselineAnchor];
        firstBaselineAnchor = [(UIButton *)self->_button firstBaselineAnchor];
        v32 = [lastBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor];
        v33 = [DynamicTypeWizard autoscaledConstraint:v32 constant:&stru_1016373F8 withFontProvider:-19.0];
        messageLabelToButtonConstraint = self->_messageLabelToButtonConstraint;
        self->_messageLabelToButtonConstraint = v33;
      }

      leadingAnchor = [(UIButton *)self->_button leadingAnchor];
      leadingAnchor2 = [(UILabel *)self->_messageLabel leadingAnchor];
      v45 = [leadingAnchor constraintEqualToAnchor:?];
      v47[0] = v45;
      trailingAnchor = [(UILabel *)self->_messageLabel trailingAnchor];
      trailingAnchor2 = [(TopBannerItemView *)self trailingAnchor];
      v44 = trailingAnchor;
      v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:7.0];
      v47[1] = v24;
      bottomAnchor = [(TopBannerItemView *)self bottomAnchor];
      lastBaselineAnchor2 = [(UIButton *)self->_button lastBaselineAnchor];
      v27 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2];
      v36 = [DynamicTypeWizard autoscaledConstraint:v27 constant:&stru_1016373F8 withFontProvider:11.0];
      v37 = self->_messageLabelToButtonConstraint;
      firstBaselineAnchor3 = trailingAnchor2;
      v47[2] = v36;
      v47[3] = v37;
      v47[4] = self->_messageLabelToTrailingConstraint;
      v29 = [NSArray arrayWithObjects:v47 count:5];

      trailingAnchor4 = leadingAnchor;
    }

    else
    {
      if (layout)
      {
LABEL_22:
        v38 = self->_button;
        buttonText3 = [(TopBannerItem *)self->_item buttonText];
        [(UIButton *)v38 setTitle:buttonText3 forState:0];

        goto LABEL_23;
      }

      if (!self->_messageLabelToButtonConstraint)
      {
        trailingAnchor3 = [(UILabel *)self->_messageLabel trailingAnchor];
        leadingAnchor3 = [(UIButton *)self->_button leadingAnchor];
        v19 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-7.0];
        v20 = self->_messageLabelToButtonConstraint;
        self->_messageLabelToButtonConstraint = v19;
      }

      [(NSLayoutConstraint *)self->_messageLabelToTrailingConstraint setActive:0];
      trailingAnchor4 = [(UIButton *)self->_button trailingAnchor];
      leadingAnchor2 = [(TopBannerItemView *)self trailingAnchor];
      v45 = [trailingAnchor4 constraintEqualToAnchor:-9.0 constant:?];
      v48[0] = v45;
      firstBaselineAnchor2 = [(UIButton *)self->_button firstBaselineAnchor];
      firstBaselineAnchor3 = [(UILabel *)self->_messageLabel firstBaselineAnchor];
      v44 = firstBaselineAnchor2;
      v24 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3];
      v48[1] = v24;
      bottomAnchor = [(TopBannerItemView *)self bottomAnchor];
      lastBaselineAnchor2 = [(UIButton *)self->_button lastBaselineAnchor];
      v27 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2 constant:11.0];
      v28 = self->_messageLabelToButtonConstraint;
      v48[2] = v27;
      v48[3] = v28;
      v29 = [NSArray arrayWithObjects:v48 count:4];
    }

    [NSLayoutConstraint activateConstraints:v29];
    goto LABEL_22;
  }

  [(NSLayoutConstraint *)self->_messageLabelToTrailingConstraint setActive:1];
  [(UIButton *)self->_button removeFromSuperview];
LABEL_23:
  item = self->_item;
  v41 = NSStringFromSelector("artwork");
  [(TopBannerItem *)item addObserver:self forKeyPath:v41 options:0 context:off_1019328D8];

  [(TopBannerItemView *)self updateBadgeView];
}

- (void)updateBadgeView
{
  artwork = [(TopBannerItem *)self->_item artwork];
  [(MKArtworkImageView *)self->_badgeImageView setImageSource:artwork];

  [(MKArtworkImageView *)self->_badgeImageView setHidden:!self->_firstItemWithIcon];
  image = [(MKArtworkImageView *)self->_badgeImageView image];

  if (image)
  {
    v5 = -7.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(NSLayoutConstraint *)self->_badgeViewWidthConstraint setActive:image == 0];
  [(NSLayoutConstraint *)self->_badgeViewToMessageLabelConstraint setConstant:v5];
  image2 = [(MKArtworkImageView *)self->_badgeImageView image];
  if (image2)
  {
    v7 = 4;
  }

  else
  {
    superview = [(UIButton *)self->_button superview];
    if (superview)
    {
      v7 = 4;
    }

    else
    {
      v7 = 1;
    }
  }

  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel setTextAlignment:v7];
}

- (void)_buttonTapped:(id)tapped
{
  item = [(TopBannerItemView *)self item];
  buttonAction = [item buttonAction];

  if (buttonAction)
  {
    item2 = [(TopBannerItemView *)self item];
    buttonAction2 = [item2 buttonAction];
    item3 = [(TopBannerItemView *)self item];
    (buttonAction2)[2](buttonAction2, item3);
  }
}

- (void)setFirstItemWithIcon:(BOOL)icon
{
  if (self->_firstItemWithIcon != icon)
  {
    self->_firstItemWithIcon = icon;
    v5 = [(TopBannerItemView *)self isFirstItemWithIcon]^ 1;
    badgeImageView = self->_badgeImageView;

    [(MKArtworkImageView *)badgeImageView setHidden:v5];
  }
}

- (void)setItem:(id)item
{
  itemCopy = item;
  item = self->_item;
  if (item != itemCopy)
  {
    v7 = itemCopy;
    if (item)
    {
      [(TopBannerItemView *)self _deregisterObservers];
    }

    objc_storeStrong(&self->_item, item);
    [(TopBannerItemView *)self _updateUI];
    itemCopy = v7;
  }
}

- (void)_setupConstraints
{
  badgeImageView = [(TopBannerItemView *)self badgeImageView];
  LODWORD(v4) = 1148846080;
  [badgeImageView setContentCompressionResistancePriority:0 forAxis:v4];

  badgeImageView2 = [(TopBannerItemView *)self badgeImageView];
  LODWORD(v6) = 1148846080;
  [badgeImageView2 setContentHuggingPriority:0 forAxis:v6];

  messageLabel = [(TopBannerItemView *)self messageLabel];
  trailingAnchor = [messageLabel trailingAnchor];
  trailingAnchor2 = [(TopBannerItemView *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-9.0];
  messageLabelToTrailingConstraint = self->_messageLabelToTrailingConstraint;
  self->_messageLabelToTrailingConstraint = v10;

  badgeImageView3 = [(TopBannerItemView *)self badgeImageView];
  trailingAnchor3 = [badgeImageView3 trailingAnchor];
  messageLabel2 = [(TopBannerItemView *)self messageLabel];
  leadingAnchor = [messageLabel2 leadingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-7.0];
  badgeViewToMessageLabelConstraint = self->_badgeViewToMessageLabelConstraint;
  self->_badgeViewToMessageLabelConstraint = v16;

  badgeImageView4 = [(TopBannerItemView *)self badgeImageView];
  leadingAnchor2 = [badgeImageView4 leadingAnchor];
  leadingAnchor3 = [(TopBannerItemView *)self leadingAnchor];
  v58 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:9.0];
  v62[0] = v58;
  badgeImageView5 = [(TopBannerItemView *)self badgeImageView];
  topAnchor = [badgeImageView5 topAnchor];
  topAnchor2 = [(TopBannerItemView *)self topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
  v62[1] = v54;
  badgeImageView6 = [(TopBannerItemView *)self badgeImageView];
  bottomAnchor = [badgeImageView6 bottomAnchor];
  messageLabel3 = [(TopBannerItemView *)self messageLabel];
  bottomAnchor2 = [messageLabel3 bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18 = self->_badgeViewToMessageLabelConstraint;
  v19 = self->_messageLabelToTrailingConstraint;
  v62[2] = v49;
  v62[3] = v18;
  v62[4] = v19;
  leadingAnchor4 = [(HairlineView *)self->_hairlineView leadingAnchor];
  messageLabel4 = [(TopBannerItemView *)self messageLabel];
  leadingAnchor5 = [messageLabel4 leadingAnchor];
  v45 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v62[5] = v45;
  trailingAnchor4 = [(HairlineView *)self->_hairlineView trailingAnchor];
  trailingAnchor5 = [(TopBannerItemView *)self trailingAnchor];
  v42 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-9.0];
  v62[6] = v42;
  badgeImageView7 = [(TopBannerItemView *)self badgeImageView];
  topAnchor3 = [badgeImageView7 topAnchor];
  topAnchor4 = [(TopBannerItemView *)self topAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v37 = [DynamicTypeWizard autoscaledConstraint:v38 constant:&stru_1016373F8 withFontProvider:9.0];
  v62[7] = v37;
  messageLabel5 = [(TopBannerItemView *)self messageLabel];
  firstBaselineAnchor = [messageLabel5 firstBaselineAnchor];
  topAnchor5 = [(TopBannerItemView *)self topAnchor];
  v33 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor5];
  v20 = [DynamicTypeWizard autoscaledConstraint:v33 constant:&stru_1016373F8 withFontProvider:19.0];
  v62[8] = v20;
  bottomAnchor3 = [(TopBannerItemView *)self bottomAnchor];
  messageLabel6 = [(TopBannerItemView *)self messageLabel];
  lastBaselineAnchor = [messageLabel6 lastBaselineAnchor];
  v24 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor constant:11.0];
  v62[9] = v24;
  bottomAnchor4 = [(HairlineView *)self->_hairlineView bottomAnchor];
  bottomAnchor5 = [(TopBannerItemView *)self bottomAnchor];
  v27 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v62[10] = v27;
  v28 = [NSArray arrayWithObjects:v62 count:11];
  [NSLayoutConstraint activateConstraints:v28];

  badgeImageView8 = [(TopBannerItemView *)self badgeImageView];
  widthAnchor = [badgeImageView8 widthAnchor];
  v31 = [widthAnchor constraintEqualToConstant:0.0];
  badgeViewWidthConstraint = self->_badgeViewWidthConstraint;
  self->_badgeViewWidthConstraint = v31;
}

- (void)_customInit
{
  v3 = objc_alloc_init(MKArtworkImageView);
  badgeImageView = self->_badgeImageView;
  self->_badgeImageView = v3;

  [(MKArtworkImageView *)self->_badgeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKArtworkImageView *)self->_badgeImageView setContentMode:4];
  [(TopBannerItemView *)self addSubview:self->_badgeImageView];
  v5 = objc_alloc_init(UILabel);
  messageLabel = self->_messageLabel;
  self->_messageLabel = v5;

  v7 = +[UIColor labelColor];
  [(UILabel *)self->_messageLabel setTextColor:v7];

  [(UILabel *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [DynamicTypeWizard autorefreshLabel:self->_messageLabel withFontProvider:&stru_1016373F8];
  [(UILabel *)self->_messageLabel setTextAlignment:4];
  [(UILabel *)self->_messageLabel setNumberOfLines:0];
  [(UILabel *)self->_messageLabel setLineBreakMode:4];
  [(UILabel *)self->_messageLabel setContentHuggingPriority:0 forAxis:0.0];
  [(TopBannerItemView *)self addSubview:self->_messageLabel];
  v8 = [[HairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  hairlineView = self->_hairlineView;
  self->_hairlineView = v8;

  [(HairlineView *)self->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TopBannerItemView *)self addSubview:self->_hairlineView];

  [(TopBannerItemView *)self _setupConstraints];
}

- (void)dealloc
{
  if (self->_item)
  {
    [(TopBannerItemView *)self _deregisterObservers];
  }

  v3.receiver = self;
  v3.super_class = TopBannerItemView;
  [(TopBannerItemView *)&v3 dealloc];
}

- (TopBannerItemView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TopBannerItemView;
  v3 = [(TopBannerItemView *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TopBannerItemView *)v3 _customInit];
    v5 = v4;
  }

  return v4;
}

- (TopBannerItemView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = TopBannerItemView;
  v3 = [(TopBannerItemView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TopBannerItemView *)v3 _customInit];
    v5 = v4;
  }

  return v4;
}

@end