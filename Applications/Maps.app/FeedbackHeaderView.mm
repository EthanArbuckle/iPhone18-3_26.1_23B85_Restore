@interface FeedbackHeaderView
- (FeedbackHeaderView)init;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation FeedbackHeaderView

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  v6 = self->_subtitle;
  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setText:v6];
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
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
    titleLabel = [(FeedbackHeaderView *)v2 titleLabel];
    leadingAnchor = [titleLabel leadingAnchor];
    leadingAnchor2 = [(FeedbackHeaderView *)v2 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v44[0] = v39;
    titleLabel2 = [(FeedbackHeaderView *)v2 titleLabel];
    trailingAnchor = [titleLabel2 trailingAnchor];
    trailingAnchor2 = [(FeedbackHeaderView *)v2 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v44[1] = v35;
    firstBaselineAnchor = [(UILabel *)v2->_titleLabel firstBaselineAnchor];
    topAnchor = [(FeedbackHeaderView *)v2 topAnchor];
    v32 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
    v31 = [DynamicTypeWizard autoscaledConstraint:v32 constant:&stru_10165EC48 withFontProvider:35.0];
    v44[2] = v31;
    subtitleLabel = [(FeedbackHeaderView *)v2 subtitleLabel];
    leadingAnchor3 = [subtitleLabel leadingAnchor];
    leadingAnchor4 = [(FeedbackHeaderView *)v2 leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v44[3] = v27;
    trailingAnchor3 = [(FeedbackHeaderView *)v2 trailingAnchor];
    subtitleLabel2 = [(FeedbackHeaderView *)v2 subtitleLabel];
    trailingAnchor4 = [subtitleLabel2 trailingAnchor];
    v23 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
    v44[4] = v23;
    firstBaselineAnchor2 = [(UILabel *)v2->_subtitleLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v2->_titleLabel lastBaselineAnchor];
    v15 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
    v16 = [DynamicTypeWizard autoscaledConstraint:v15 constant:&stru_10165EC28 withFontProvider:21.0];
    v44[5] = v16;
    bottomAnchor = [(FeedbackHeaderView *)v2 bottomAnchor];
    subtitleLabel3 = [(FeedbackHeaderView *)v2 subtitleLabel];
    firstBaselineAnchor3 = [subtitleLabel3 firstBaselineAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor3 constant:22.0];
    v44[6] = v20;
    v21 = [NSArray arrayWithObjects:v44 count:7];
    [NSLayoutConstraint activateConstraints:v21];
  }

  return v2;
}

@end