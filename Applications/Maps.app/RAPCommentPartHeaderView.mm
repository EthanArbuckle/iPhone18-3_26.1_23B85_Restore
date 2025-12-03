@interface RAPCommentPartHeaderView
- (RAPCommentPartHeaderView)initWithQuestion:(id)question reuseIdentifier:(id)identifier;
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)layoutSubviews;
- (void)updateRemainingCharacters;
@end

@implementation RAPCommentPartHeaderView

- (void)updateRemainingCharacters
{
  v4 = [NSNumber numberWithUnsignedInteger:[(RAPCommentQuestion *)self->_question remainingCharacters]];
  v3 = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:0];
  [(UILabel *)self->_remainingCharactersLabel setText:v3];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = RAPCommentPartHeaderView;
  [(RAPHeaderFooterView *)&v5 layoutSubviews];
  v3 = +[UIColor systemGrayColor];
  [(UILabel *)self->_remainingCharactersLabel setTextColor:v3];

  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    +[RAPFontManager regularMoreReportTypesTitleFont];
  }

  else
  {
    +[RAPFontManager regularTitleFont];
  }
  v4 = ;
  [(UILabel *)self->_remainingCharactersLabel setFont:v4];
}

- (void)_createSubviews
{
  v7.receiver = self;
  v7.super_class = RAPCommentPartHeaderView;
  [(RAPHeaderFooterView *)&v7 _createSubviews];
  v3 = objc_alloc_init(UILabel);
  remainingCharactersLabel = self->_remainingCharactersLabel;
  self->_remainingCharactersLabel = v3;

  LODWORD(v5) = 1148846080;
  [(UILabel *)self->_remainingCharactersLabel setContentCompressionResistancePriority:0 forAxis:v5];
  [(UILabel *)self->_remainingCharactersLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(RAPCommentPartHeaderView *)self contentView];
  [contentView addSubview:self->_remainingCharactersLabel];
}

- (id)_initialConstraints
{
  v24.receiver = self;
  v24.super_class = RAPCommentPartHeaderView;
  _initialConstraints = [(RAPHeaderFooterView *)&v24 _initialConstraints];
  leadingAnchor = [(UILabel *)self->_remainingCharactersLabel leadingAnchor];
  titleLabel = [(RAPHeaderFooterView *)self titleLabel];
  trailingAnchor = [titleLabel trailingAnchor];
  v6 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:8.0];

  LODWORD(v7) = 1148829696;
  v20 = v6;
  [v6 setPriority:v7];
  trailingAnchor2 = [(UILabel *)self->_remainingCharactersLabel trailingAnchor];
  contentView = [(RAPCommentPartHeaderView *)self contentView];
  trailingAnchor3 = [contentView trailingAnchor];
  v8 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  v25[0] = v8;
  v25[1] = v6;
  lastBaselineAnchor = [(UILabel *)self->_remainingCharactersLabel lastBaselineAnchor];
  titleLabel2 = [(RAPHeaderFooterView *)self titleLabel];
  lastBaselineAnchor2 = [titleLabel2 lastBaselineAnchor];
  v12 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  v25[2] = v12;
  firstBaselineAnchor = [(UILabel *)self->_remainingCharactersLabel firstBaselineAnchor];
  titleLabel3 = [(RAPHeaderFooterView *)self titleLabel];
  firstBaselineAnchor2 = [titleLabel3 firstBaselineAnchor];
  v16 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v25[3] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:4];
  [_initialConstraints addObjectsFromArray:v17];

  return _initialConstraints;
}

- (RAPCommentPartHeaderView)initWithQuestion:(id)question reuseIdentifier:(id)identifier
{
  questionCopy = question;
  v16.receiver = self;
  v16.super_class = RAPCommentPartHeaderView;
  v8 = [(RAPHeaderFooterView *)&v16 initWithReuseIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_question, question);
    [(RAPCommentPartHeaderView *)v9 updateRemainingCharacters];
    commentsTitle = [(RAPCommentQuestion *)v9->_question commentsTitle];
    [(RAPHeaderFooterView *)v9 setTitleLabelText:commentsTitle];

    traitCollection = [(RAPCommentPartHeaderView *)v9 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      v13 = +[UIColor systemBackgroundColor];
      contentView = [(RAPCommentPartHeaderView *)v9 contentView];
      [contentView setBackgroundColor:v13];
    }
  }

  return v9;
}

@end