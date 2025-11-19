@interface FeedbackHeaderView
- (FeedbackHeaderView)init;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation FeedbackHeaderView

- (void)setSubtitle:(id)a3
{
  v4 = [a3 copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  v6 = self->_subtitle;
  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setText:v6];
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  v6 = self->_title;
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setText:v6];
}

- (FeedbackHeaderView)init
{
  v43.receiver = self;
  v43.super_class = FeedbackHeaderView;
  v2 = [(FeedbackHeaderView *)&v43 init];
  if (v2)
  {
    v3 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v7;

    [(UILabel *)v2->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = +[UIColor labelColor];
    [(UILabel *)v2->_titleLabel setTextColor:v9];

    [DynamicTypeWizard autorefreshLabel:v2->_titleLabel withFontProvider:&stru_10165EC48];
    [(FeedbackHeaderView *)v2 addSubview:v2->_titleLabel];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v2->_subtitleLabel;
    v2->_subtitleLabel = v10;

    [(UILabel *)v2->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = +[UIColor secondaryLabelColor];
    [(UILabel *)v2->_subtitleLabel setTextColor:v12];

    [DynamicTypeWizard autorefreshLabel:v2->_subtitleLabel withFontProvider:&stru_10165EC28];
    [(FeedbackHeaderView *)v2 addSubview:v2->_subtitleLabel];
    v42 = [(FeedbackHeaderView *)v2 titleLabel];
    v41 = [v42 leadingAnchor];
    v40 = [(FeedbackHeaderView *)v2 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v44[0] = v39;
    v38 = [(FeedbackHeaderView *)v2 titleLabel];
    v37 = [v38 trailingAnchor];
    v36 = [(FeedbackHeaderView *)v2 trailingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v44[1] = v35;
    v34 = [(UILabel *)v2->_titleLabel firstBaselineAnchor];
    v33 = [(FeedbackHeaderView *)v2 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v31 = [DynamicTypeWizard autoscaledConstraint:v32 constant:&stru_10165EC48 withFontProvider:35.0];
    v44[2] = v31;
    v30 = [(FeedbackHeaderView *)v2 subtitleLabel];
    v29 = [v30 leadingAnchor];
    v28 = [(FeedbackHeaderView *)v2 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v44[3] = v27;
    v25 = [(FeedbackHeaderView *)v2 trailingAnchor];
    v26 = [(FeedbackHeaderView *)v2 subtitleLabel];
    v24 = [v26 trailingAnchor];
    v23 = [v25 constraintGreaterThanOrEqualToAnchor:v24];
    v44[4] = v23;
    v13 = [(UILabel *)v2->_subtitleLabel firstBaselineAnchor];
    v14 = [(UILabel *)v2->_titleLabel lastBaselineAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v16 = [DynamicTypeWizard autoscaledConstraint:v15 constant:&stru_10165EC28 withFontProvider:21.0];
    v44[5] = v16;
    v17 = [(FeedbackHeaderView *)v2 bottomAnchor];
    v18 = [(FeedbackHeaderView *)v2 subtitleLabel];
    v19 = [v18 firstBaselineAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:22.0];
    v44[6] = v20;
    v21 = [NSArray arrayWithObjects:v44 count:7];
    [NSLayoutConstraint activateConstraints:v21];
  }

  return v2;
}

@end