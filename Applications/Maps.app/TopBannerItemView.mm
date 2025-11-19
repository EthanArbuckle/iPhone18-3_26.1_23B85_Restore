@interface TopBannerItemView
- (TopBannerItemView)initWithCoder:(id)a3;
- (TopBannerItemView)initWithFrame:(CGRect)a3;
- (void)_buttonTapped:(id)a3;
- (void)_customInit;
- (void)_deregisterObservers;
- (void)_setupConstraints;
- (void)_updateUI;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setFirstItemWithIcon:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)updateBadgeView;
@end

@implementation TopBannerItemView

- (void)_deregisterObservers
{
  v3 = NSStringFromSelector("artwork");
  [(TopBannerItem *)self->_item removeObserver:self forKeyPath:v3 context:off_1019328D8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v11 = NSStringFromSelector("artwork");
  v9 = off_1019328D8;

  if (v9 == a6 && v11 == v8)
  {
    [(TopBannerItemView *)self updateBadgeView];
  }
}

- (void)_updateUI
{
  v3 = [(TopBannerItem *)self->_item buttonText];
  if ([v3 length])
  {
    v4 = [(TopBannerItem *)self->_item maxNumberOfLines];
  }

  else
  {
    v4 = 0;
  }

  [(UILabel *)self->_messageLabel setNumberOfLines:v4];

  v5 = [(TopBannerItem *)self->_item attributedText];
  if ([v5 length])
  {
    v6 = [(TopBannerItem *)self->_item attributedText];
    [(UILabel *)self->_messageLabel setAttributedText:v6];
  }

  else
  {
    [(UILabel *)self->_messageLabel setAttributedText:0];
  }

  v7 = [(TopBannerItem *)self->_item buttonText];
  v8 = [v7 length];

  if (v8)
  {
    button = self->_button;
    if (!button)
    {
      v10 = [(TopBannerItemView *)self traitCollection];
      v11 = [v10 userInterfaceIdiom] != 5;

      v12 = [UIButton buttonWithType:v11];
      v13 = self->_button;
      self->_button = v12;

      [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)self->_button addTarget:self action:"_buttonTapped:" forControlEvents:64];
      LODWORD(v14) = 1148829696;
      [(UIButton *)self->_button setContentHuggingPriority:0 forAxis:v14];
      v15 = [(UIButton *)self->_button titleLabel];
      [DynamicTypeWizard autorefreshLabel:v15 withFontProvider:&stru_10165D908];

      button = self->_button;
    }

    if (([(UIButton *)button isDescendantOfView:self]& 1) == 0)
    {
      [(TopBannerItemView *)self addSubview:self->_button];
    }

    v16 = [(TopBannerItem *)self->_item layout];
    if (v16 == 1)
    {
      if (!self->_messageLabelToButtonConstraint)
      {
        v30 = [(UILabel *)self->_messageLabel lastBaselineAnchor];
        v31 = [(UIButton *)self->_button firstBaselineAnchor];
        v32 = [v30 constraintEqualToAnchor:v31];
        v33 = [DynamicTypeWizard autoscaledConstraint:v32 constant:&stru_1016373F8 withFontProvider:-19.0];
        messageLabelToButtonConstraint = self->_messageLabelToButtonConstraint;
        self->_messageLabelToButtonConstraint = v33;
      }

      v43 = [(UIButton *)self->_button leadingAnchor];
      v46 = [(UILabel *)self->_messageLabel leadingAnchor];
      v45 = [v43 constraintEqualToAnchor:?];
      v47[0] = v45;
      v35 = [(UILabel *)self->_messageLabel trailingAnchor];
      v42 = [(TopBannerItemView *)self trailingAnchor];
      v44 = v35;
      v24 = [v35 constraintEqualToAnchor:v42 constant:7.0];
      v47[1] = v24;
      v25 = [(TopBannerItemView *)self bottomAnchor];
      v26 = [(UIButton *)self->_button lastBaselineAnchor];
      v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26];
      v36 = [DynamicTypeWizard autoscaledConstraint:v27 constant:&stru_1016373F8 withFontProvider:11.0];
      v37 = self->_messageLabelToButtonConstraint;
      v23 = v42;
      v47[2] = v36;
      v47[3] = v37;
      v47[4] = self->_messageLabelToTrailingConstraint;
      v29 = [NSArray arrayWithObjects:v47 count:5];

      v21 = v43;
    }

    else
    {
      if (v16)
      {
LABEL_22:
        v38 = self->_button;
        v39 = [(TopBannerItem *)self->_item buttonText];
        [(UIButton *)v38 setTitle:v39 forState:0];

        goto LABEL_23;
      }

      if (!self->_messageLabelToButtonConstraint)
      {
        v17 = [(UILabel *)self->_messageLabel trailingAnchor];
        v18 = [(UIButton *)self->_button leadingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18 constant:-7.0];
        v20 = self->_messageLabelToButtonConstraint;
        self->_messageLabelToButtonConstraint = v19;
      }

      [(NSLayoutConstraint *)self->_messageLabelToTrailingConstraint setActive:0];
      v21 = [(UIButton *)self->_button trailingAnchor];
      v46 = [(TopBannerItemView *)self trailingAnchor];
      v45 = [v21 constraintEqualToAnchor:-9.0 constant:?];
      v48[0] = v45;
      v22 = [(UIButton *)self->_button firstBaselineAnchor];
      v23 = [(UILabel *)self->_messageLabel firstBaselineAnchor];
      v44 = v22;
      v24 = [v22 constraintEqualToAnchor:v23];
      v48[1] = v24;
      v25 = [(TopBannerItemView *)self bottomAnchor];
      v26 = [(UIButton *)self->_button lastBaselineAnchor];
      v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:11.0];
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
  v3 = [(TopBannerItem *)self->_item artwork];
  [(MKArtworkImageView *)self->_badgeImageView setImageSource:v3];

  [(MKArtworkImageView *)self->_badgeImageView setHidden:!self->_firstItemWithIcon];
  v4 = [(MKArtworkImageView *)self->_badgeImageView image];

  if (v4)
  {
    v5 = -7.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(NSLayoutConstraint *)self->_badgeViewWidthConstraint setActive:v4 == 0];
  [(NSLayoutConstraint *)self->_badgeViewToMessageLabelConstraint setConstant:v5];
  v6 = [(MKArtworkImageView *)self->_badgeImageView image];
  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v8 = [(UIButton *)self->_button superview];
    if (v8)
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

- (void)_buttonTapped:(id)a3
{
  v4 = [(TopBannerItemView *)self item];
  v5 = [v4 buttonAction];

  if (v5)
  {
    v8 = [(TopBannerItemView *)self item];
    v6 = [v8 buttonAction];
    v7 = [(TopBannerItemView *)self item];
    (v6)[2](v6, v7);
  }
}

- (void)setFirstItemWithIcon:(BOOL)a3
{
  if (self->_firstItemWithIcon != a3)
  {
    self->_firstItemWithIcon = a3;
    v5 = [(TopBannerItemView *)self isFirstItemWithIcon]^ 1;
    badgeImageView = self->_badgeImageView;

    [(MKArtworkImageView *)badgeImageView setHidden:v5];
  }
}

- (void)setItem:(id)a3
{
  v5 = a3;
  item = self->_item;
  if (item != v5)
  {
    v7 = v5;
    if (item)
    {
      [(TopBannerItemView *)self _deregisterObservers];
    }

    objc_storeStrong(&self->_item, a3);
    [(TopBannerItemView *)self _updateUI];
    v5 = v7;
  }
}

- (void)_setupConstraints
{
  v3 = [(TopBannerItemView *)self badgeImageView];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];

  v5 = [(TopBannerItemView *)self badgeImageView];
  LODWORD(v6) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v6];

  v7 = [(TopBannerItemView *)self messageLabel];
  v8 = [v7 trailingAnchor];
  v9 = [(TopBannerItemView *)self trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-9.0];
  messageLabelToTrailingConstraint = self->_messageLabelToTrailingConstraint;
  self->_messageLabelToTrailingConstraint = v10;

  v12 = [(TopBannerItemView *)self badgeImageView];
  v13 = [v12 trailingAnchor];
  v14 = [(TopBannerItemView *)self messageLabel];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:-7.0];
  badgeViewToMessageLabelConstraint = self->_badgeViewToMessageLabelConstraint;
  self->_badgeViewToMessageLabelConstraint = v16;

  v61 = [(TopBannerItemView *)self badgeImageView];
  v60 = [v61 leadingAnchor];
  v59 = [(TopBannerItemView *)self leadingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:9.0];
  v62[0] = v58;
  v57 = [(TopBannerItemView *)self badgeImageView];
  v56 = [v57 topAnchor];
  v55 = [(TopBannerItemView *)self topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:9.0];
  v62[1] = v54;
  v53 = [(TopBannerItemView *)self badgeImageView];
  v51 = [v53 bottomAnchor];
  v52 = [(TopBannerItemView *)self messageLabel];
  v50 = [v52 bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v18 = self->_badgeViewToMessageLabelConstraint;
  v19 = self->_messageLabelToTrailingConstraint;
  v62[2] = v49;
  v62[3] = v18;
  v62[4] = v19;
  v47 = [(HairlineView *)self->_hairlineView leadingAnchor];
  v48 = [(TopBannerItemView *)self messageLabel];
  v46 = [v48 leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v62[5] = v45;
  v44 = [(HairlineView *)self->_hairlineView trailingAnchor];
  v43 = [(TopBannerItemView *)self trailingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:-9.0];
  v62[6] = v42;
  v41 = [(TopBannerItemView *)self badgeImageView];
  v40 = [v41 topAnchor];
  v39 = [(TopBannerItemView *)self topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v37 = [DynamicTypeWizard autoscaledConstraint:v38 constant:&stru_1016373F8 withFontProvider:9.0];
  v62[7] = v37;
  v36 = [(TopBannerItemView *)self messageLabel];
  v35 = [v36 firstBaselineAnchor];
  v34 = [(TopBannerItemView *)self topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v20 = [DynamicTypeWizard autoscaledConstraint:v33 constant:&stru_1016373F8 withFontProvider:19.0];
  v62[8] = v20;
  v21 = [(TopBannerItemView *)self bottomAnchor];
  v22 = [(TopBannerItemView *)self messageLabel];
  v23 = [v22 lastBaselineAnchor];
  v24 = [v21 constraintGreaterThanOrEqualToAnchor:v23 constant:11.0];
  v62[9] = v24;
  v25 = [(HairlineView *)self->_hairlineView bottomAnchor];
  v26 = [(TopBannerItemView *)self bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v62[10] = v27;
  v28 = [NSArray arrayWithObjects:v62 count:11];
  [NSLayoutConstraint activateConstraints:v28];

  v29 = [(TopBannerItemView *)self badgeImageView];
  v30 = [v29 widthAnchor];
  v31 = [v30 constraintEqualToConstant:0.0];
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

- (TopBannerItemView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TopBannerItemView;
  v3 = [(TopBannerItemView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TopBannerItemView *)v3 _customInit];
    v5 = v4;
  }

  return v4;
}

- (TopBannerItemView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = TopBannerItemView;
  v3 = [(TopBannerItemView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TopBannerItemView *)v3 _customInit];
    v5 = v4;
  }

  return v4;
}

@end