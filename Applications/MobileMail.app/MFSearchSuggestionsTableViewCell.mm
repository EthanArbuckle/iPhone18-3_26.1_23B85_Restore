@interface MFSearchSuggestionsTableViewCell
+ (id)_defaultLabelAttributesWithFont:(id)font;
- (MFSearchSuggestionsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_glyphCenterXConstant;
- (double)_interLabelBaselineConstant;
- (double)_titleLeadingConstant;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)_preferredContentSizeCategoryDidChange:(id)change;
- (void)setSuggestion:(id)suggestion;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateConstraints;
@end

@implementation MFSearchSuggestionsTableViewCell

+ (id)_defaultLabelAttributesWithFont:(id)font
{
  fontCopy = font;
  v4 = objc_alloc_init(NSMutableParagraphStyle);
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    [v4 setLineBreakMode:0];
    LODWORD(v7) = 1.0;
    [v4 setHyphenationFactor:v7];
  }

  else
  {
    [v4 setLineBreakMode:4];
  }

  v10[0] = NSParagraphStyleAttributeName;
  v10[1] = NSFontAttributeName;
  v11[0] = v4;
  v11[1] = fontCopy;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (MFSearchSuggestionsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v77.receiver = self;
  v77.super_class = MFSearchSuggestionsTableViewCell;
  identifierCopy = identifier;
  v5 = [(MFSearchSuggestionsTableViewCell *)&v77 initWithStyle:style reuseIdentifier:?];
  if (v5)
  {
    v6 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    glyph = v5->_glyph;
    v5->_glyph = v10;

    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    title = v5->_title;
    v5->_title = v12;

    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitle = v5->_subtitle;
    v5->_subtitle = v14;

    _titleFont = [(MFSearchSuggestionsTableViewCell *)v5 _titleFont];
    [(UILabel *)v5->_title setFont:_titleFont];

    [(UILabel *)v5->_title setTextAlignment:4];
    _subtitleFont = [(MFSearchSuggestionsTableViewCell *)v5 _subtitleFont];
    [(UILabel *)v5->_subtitle setFont:_subtitleFont];

    [(UILabel *)v5->_subtitle setLineBreakMode:5];
    [(UILabel *)v5->_subtitle setTextAlignment:4];
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v20 = v5->_title;
    if (IsAccessibilityCategory)
    {
      [(UILabel *)v20 setNumberOfLines:0];
      [(UILabel *)v5->_title setLineBreakMode:0];
      [(UILabel *)v5->_subtitle setLineBreakMode:0];
      v21 = 0;
    }

    else
    {
      [(UILabel *)v20 setNumberOfLines:1];
      [(UILabel *)v5->_title setLineBreakMode:5];
      [(UILabel *)v5->_subtitle setLineBreakMode:5];
      v21 = 1;
    }

    [(UILabel *)v5->_subtitle setNumberOfLines:v21];
    [(UIImageView *)v5->_glyph setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_subtitle setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v22) = 1148846080;
    [(UIImageView *)v5->_glyph setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)v5->_glyph setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UIImageView *)v5->_glyph setContentHuggingPriority:0 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UIImageView *)v5->_glyph setContentHuggingPriority:1 forAxis:v25];
    v26 = +[UIColor labelColor];
    [(UIImageView *)v5->_glyph setTintColor:v26];

    contentView = [(MFSearchSuggestionsTableViewCell *)v5 contentView];
    [contentView addSubview:v5->_glyph];
    [contentView addSubview:v5->_title];
    [contentView addSubview:v5->_subtitle];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    centerXAnchor = [(UIImageView *)v5->_glyph centerXAnchor];
    leadingAnchor = [layoutMarginsGuide leadingAnchor];
    [(MFSearchSuggestionsTableViewCell *)v5 _glyphCenterXConstant];
    v29 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:?];
    [(MFSearchSuggestionsTableViewCell *)v5 setGlyphCenterXConstraint:v29];

    leadingAnchor2 = [(UILabel *)v5->_title leadingAnchor];
    leadingAnchor3 = [layoutMarginsGuide leadingAnchor];
    [(MFSearchSuggestionsTableViewCell *)v5 _titleLeadingConstant];
    v32 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:?];
    [(MFSearchSuggestionsTableViewCell *)v5 setTitleLeadingConstraint:v32];

    glyphCenterXConstraint = [(MFSearchSuggestionsTableViewCell *)v5 glyphCenterXConstraint];
    v80[0] = glyphCenterXConstraint;
    titleLeadingConstraint = [(MFSearchSuggestionsTableViewCell *)v5 titleLeadingConstraint];
    v80[1] = titleLeadingConstraint;
    trailingAnchor = [(UILabel *)v5->_title trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v67 = [trailingAnchor constraintEqualToAnchor:?];
    v80[2] = v67;
    leadingAnchor4 = [(UILabel *)v5->_subtitle leadingAnchor];
    leadingAnchor5 = [(UILabel *)v5->_title leadingAnchor];
    v35 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v80[3] = v35;
    trailingAnchor3 = [(UILabel *)v5->_subtitle trailingAnchor];
    trailingAnchor4 = [(UILabel *)v5->_title trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v80[4] = v38;
    v39 = [NSArray arrayWithObjects:v80 count:5];
    [(MFSearchSuggestionsTableViewCell *)v5 setDefaultConstraints:v39];

    centerYAnchor = [(UIImageView *)v5->_glyph centerYAnchor];
    firstBaselineAnchor = [(UILabel *)v5->_title firstBaselineAnchor];
    font = [(UILabel *)v5->_title font];
    [font capHeight];
    v44 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:v43 * -0.5];
    [(MFSearchSuggestionsTableViewCell *)v5 setGlyphVerticalConstraint:v44];

    glyphVerticalConstraint = [(MFSearchSuggestionsTableViewCell *)v5 glyphVerticalConstraint];
    [glyphVerticalConstraint setActive:1];

    topAnchor = [(UILabel *)v5->_title topAnchor];
    topAnchor2 = [contentView topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:10.0 constant:?];
    v79[0] = v46;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(UILabel *)v5->_title bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:10.0];
    v79[1] = v49;
    centerYAnchor2 = [(UILabel *)v5->_subtitle centerYAnchor];
    centerYAnchor3 = [(UILabel *)v5->_title centerYAnchor];
    v52 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
    v79[2] = v52;
    v53 = [NSArray arrayWithObjects:v79 count:3];
    [(MFSearchSuggestionsTableViewCell *)v5 setTitleOnlyConstraints:v53];

    firstBaselineAnchor2 = [(UILabel *)v5->_subtitle firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_title lastBaselineAnchor];
    [(MFSearchSuggestionsTableViewCell *)v5 _interLabelBaselineConstant];
    v56 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
    [(MFSearchSuggestionsTableViewCell *)v5 setInterLabelBaselineConstraint:v56];

    topAnchor3 = [(UILabel *)v5->_title topAnchor];
    topAnchor4 = [contentView topAnchor];
    v59 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
    v78[0] = v59;
    interLabelBaselineConstraint = [(MFSearchSuggestionsTableViewCell *)v5 interLabelBaselineConstraint];
    v78[1] = interLabelBaselineConstraint;
    bottomAnchor3 = [contentView bottomAnchor];
    bottomAnchor4 = [(UILabel *)v5->_subtitle bottomAnchor];
    v63 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
    v78[2] = v63;
    v64 = [NSArray arrayWithObjects:v78 count:3];
    [(MFSearchSuggestionsTableViewCell *)v5 setSubtitleConstraints:v64];

    v65 = +[NSNotificationCenter defaultCenter];
    [v65 addObserver:v5 selector:"_preferredContentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

- (void)updateConfigurationUsingState:(id)state
{
  if ([state isFocused])
  {
    v5 = +[UIColor systemWhiteColor];
    [(UILabel *)self->_title setTextColor:?];
    [(UILabel *)self->_subtitle setTextColor:v5];
    [(MUISearchAtomSuggestion *)self->_suggestion focusedTintColor];
  }

  else
  {
    v5 = +[UIColor labelColor];
    [(UILabel *)self->_title setTextColor:?];
    [(UILabel *)self->_subtitle setTextColor:v5];
    [(MUISearchAtomSuggestion *)self->_suggestion tintColor];
  }
  v4 = ;
  [(UIImageView *)self->_glyph setTintColor:v4];
}

- (id)_titleFont
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&stru_100655748 forKey:@"MFSearchSuggestionsCell.titleFont"];

  return v3;
}

- (id)_subtitleFont
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&stru_100655768 forKey:@"MFSearchSuggestionsCell.subtitleFont"];

  return v3;
}

- (double)_glyphCenterXConstant
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  [v2 cachedFloat:&stru_100655788 forKey:@"MFSearchSuggestionCell.glyphCenterX"];
  v4 = v3;

  return v4;
}

- (double)_titleLeadingConstant
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  [v2 cachedFloat:&stru_1006557A8 forKey:@"MFSearchSuggestionCell.titleLeading"];
  v4 = v3;

  return v4;
}

- (double)_interLabelBaselineConstant
{
  v3 = +[MFFontMetricCache sharedFontMetricCache];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100210254;
  v7[3] = &unk_1006557D0;
  v7[4] = self;
  [v3 cachedFloat:v7 forKey:@"MFSearchSuggestionCell.twoLineInterLabelBaseline"];
  v5 = v4;

  return v5;
}

- (void)updateConstraints
{
  v13.receiver = self;
  v13.super_class = MFSearchSuggestionsTableViewCell;
  [(MFSearchSuggestionsTableViewCell *)&v13 updateConstraints];
  text = [(UILabel *)self->_subtitle text];
  v4 = [text length] == 0;

  if (v4)
  {
    titleOnlyConstraints = self->_titleOnlyConstraints;
    v15[0] = self->_defaultConstraints;
    v15[1] = titleOnlyConstraints;
    v6 = [NSArray arrayWithObjects:v15 count:2];
    v7 = &OBJC_IVAR___MFSearchSuggestionsTableViewCell__subtitleConstraints;
  }

  else
  {
    subtitleConstraints = self->_subtitleConstraints;
    v14[0] = self->_defaultConstraints;
    v14[1] = subtitleConstraints;
    v6 = [NSArray arrayWithObjects:v14 count:2];
    v7 = &OBJC_IVAR___MFSearchSuggestionsTableViewCell__titleOnlyConstraints;
  }

  v9 = v6;
  v10 = *(&self->super.super.super.super.isa + *v7);
  ef_flatten = [v10 ef_flatten];
  [NSLayoutConstraint deactivateConstraints:ef_flatten];

  ef_flatten2 = [v9 ef_flatten];
  [NSLayoutConstraint activateConstraints:ef_flatten2];
}

- (void)_preferredContentSizeCategoryDidChange:(id)change
{
  v16 = +[MFFontMetricCache sharedFontMetricCache];
  [v16 ensureCacheIsValid];

  _titleFont = [(MFSearchSuggestionsTableViewCell *)self _titleFont];
  [(UILabel *)self->_title setFont:?];

  _subtitleFont = [(MFSearchSuggestionsTableViewCell *)self _subtitleFont];
  [(UILabel *)self->_subtitle setFont:?];

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v5 = !IsAccessibilityCategory;
  if (IsAccessibilityCategory)
  {
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  [(UILabel *)self->_title setNumberOfLines:v5];
  [(UILabel *)self->_title setLineBreakMode:v6];
  [(UILabel *)self->_subtitle setLineBreakMode:v6];
  [(UILabel *)self->_subtitle setNumberOfLines:v5];
  font = [(UILabel *)self->_title font];
  [font capHeight];
  v8 = v7;
  glyphVerticalConstraint = [(MFSearchSuggestionsTableViewCell *)self glyphVerticalConstraint];
  [glyphVerticalConstraint setConstant:v8 * -0.5];

  [(MFSearchSuggestionsTableViewCell *)self _glyphCenterXConstant];
  v11 = v10;
  glyphCenterXConstraint = [(MFSearchSuggestionsTableViewCell *)self glyphCenterXConstraint];
  [glyphCenterXConstraint setConstant:v11];

  [(MFSearchSuggestionsTableViewCell *)self _titleLeadingConstant];
  v13 = v12;
  titleLeadingConstraint = [(MFSearchSuggestionsTableViewCell *)self titleLeadingConstraint];
  [titleLeadingConstraint setConstant:v13];

  [(MFSearchSuggestionsTableViewCell *)self _interLabelBaselineConstant];
  v15 = v14;
  interLabelBaselineConstraint = [(MFSearchSuggestionsTableViewCell *)self interLabelBaselineConstraint];
  [interLabelBaselineConstraint setConstant:v15];
}

- (void)setSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (self->_suggestion != suggestionCopy)
  {
    v19 = suggestionCopy;
    objc_storeStrong(&self->_suggestion, suggestion);
    image = [(MUISearchAtomSuggestion *)v19 image];
    [(UIImageView *)self->_glyph setImage:image];

    tintColor = [(MUISearchAtomSuggestion *)v19 tintColor];
    [(UIImageView *)self->_glyph setTintColor:tintColor];

    _titleFont = [(MFSearchSuggestionsTableViewCell *)self _titleFont];
    v10 = [MFSearchSuggestionsTableViewCell _defaultLabelAttributesWithFont:_titleFont];

    title = [(MUISearchAtomSuggestion *)v19 title];
    if (title)
    {
      v12 = [NSAttributedString alloc];
      title2 = [(MUISearchAtomSuggestion *)v19 title];
      subtitle2 = [v12 initWithString:title2 attributes:v10];
    }

    else
    {
      subtitle2 = 0;
    }

    [(UILabel *)self->_title setAttributedText:subtitle2];
    if (title)
    {
    }

    _subtitleFont = [(MFSearchSuggestionsTableViewCell *)self _subtitleFont];
    v15 = [MFSearchSuggestionsTableViewCell _defaultLabelAttributesWithFont:_subtitleFont];

    subtitle = [(MUISearchAtomSuggestion *)v19 subtitle];
    if (subtitle)
    {
      v17 = [NSAttributedString alloc];
      subtitle2 = [(MUISearchAtomSuggestion *)v19 subtitle];
      v18 = [v17 initWithString:subtitle2 attributes:v15];
    }

    else
    {
      v18 = 0;
    }

    [(UILabel *)self->_subtitle setAttributedText:v18];
    if (subtitle)
    {
    }

    [(MFSearchSuggestionsTableViewCell *)self setNeedsUpdateConstraints];
    suggestionCopy = v19;
  }
}

@end