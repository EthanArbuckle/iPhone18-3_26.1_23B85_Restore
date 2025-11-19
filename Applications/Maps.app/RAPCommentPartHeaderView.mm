@interface RAPCommentPartHeaderView
- (RAPCommentPartHeaderView)initWithQuestion:(id)a3 reuseIdentifier:(id)a4;
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
  v6 = [(RAPCommentPartHeaderView *)self contentView];
  [v6 addSubview:self->_remainingCharactersLabel];
}

- (id)_initialConstraints
{
  v24.receiver = self;
  v24.super_class = RAPCommentPartHeaderView;
  v23 = [(RAPHeaderFooterView *)&v24 _initialConstraints];
  v3 = [(UILabel *)self->_remainingCharactersLabel leadingAnchor];
  v4 = [(RAPHeaderFooterView *)self titleLabel];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintGreaterThanOrEqualToAnchor:v5 constant:8.0];

  LODWORD(v7) = 1148829696;
  v20 = v6;
  [v6 setPriority:v7];
  v21 = [(UILabel *)self->_remainingCharactersLabel trailingAnchor];
  v22 = [(RAPCommentPartHeaderView *)self contentView];
  v19 = [v22 trailingAnchor];
  v8 = [v21 constraintEqualToAnchor:v19 constant:-16.0];
  v25[0] = v8;
  v25[1] = v6;
  v9 = [(UILabel *)self->_remainingCharactersLabel lastBaselineAnchor];
  v10 = [(RAPHeaderFooterView *)self titleLabel];
  v11 = [v10 lastBaselineAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v25[2] = v12;
  v13 = [(UILabel *)self->_remainingCharactersLabel firstBaselineAnchor];
  v14 = [(RAPHeaderFooterView *)self titleLabel];
  v15 = [v14 firstBaselineAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v25[3] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:4];
  [v23 addObjectsFromArray:v17];

  return v23;
}

- (RAPCommentPartHeaderView)initWithQuestion:(id)a3 reuseIdentifier:(id)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = RAPCommentPartHeaderView;
  v8 = [(RAPHeaderFooterView *)&v16 initWithReuseIdentifier:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_question, a3);
    [(RAPCommentPartHeaderView *)v9 updateRemainingCharacters];
    v10 = [(RAPCommentQuestion *)v9->_question commentsTitle];
    [(RAPHeaderFooterView *)v9 setTitleLabelText:v10];

    v11 = [(RAPCommentPartHeaderView *)v9 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 5)
    {
      v13 = +[UIColor systemBackgroundColor];
      v14 = [(RAPCommentPartHeaderView *)v9 contentView];
      [v14 setBackgroundColor:v13];
    }
  }

  return v9;
}

@end