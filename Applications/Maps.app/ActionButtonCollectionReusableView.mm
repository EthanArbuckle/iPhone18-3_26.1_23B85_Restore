@interface ActionButtonCollectionReusableView
+ (id)reuseIdentifier;
- (ActionButtonCollectionReusableView)initWithFrame:(CGRect)frame;
- (id)highlightedBackgroundColor;
- (id)regularBackgroundColor;
- (void)didEndTouch:(id)touch;
- (void)didTouchDown:(id)down;
- (void)didTouchUp:(id)up;
- (void)prepareForReuse;
- (void)setLeadingPadding:(double)padding;
- (void)setTitle:(id)title completion:(id)completion;
- (void)setTrailingPadding:(double)padding;
- (void)setupSubviews;
- (void)updateFontsAndSizes;
@end

@implementation ActionButtonCollectionReusableView

- (void)setTrailingPadding:(double)padding
{
  self->_trailingPadding = padding;
  v3 = -padding;
  trailingVibrantViewContraint = [(ActionButtonCollectionReusableView *)self trailingVibrantViewContraint];
  [trailingVibrantViewContraint setConstant:v3];
}

- (void)setLeadingPadding:(double)padding
{
  self->_leadingPadding = padding;
  leadingVibrantViewContraint = [(ActionButtonCollectionReusableView *)self leadingVibrantViewContraint];
  [leadingVibrantViewContraint setConstant:padding];
}

- (void)setTitle:(id)title completion:(id)completion
{
  completionCopy = completion;
  titleCopy = title;
  button = [(ActionButtonCollectionReusableView *)self button];
  [button setTitle:titleCopy forState:0];

  [(ActionButtonCollectionReusableView *)self setCompletion:completionCopy];
}

- (void)didEndTouch:(id)touch
{
  regularBackgroundColor = [(ActionButtonCollectionReusableView *)self regularBackgroundColor];
  vibrantView = [(ActionButtonCollectionReusableView *)self vibrantView];
  contentView = [vibrantView contentView];
  [contentView setBackgroundColor:regularBackgroundColor];
}

- (void)didTouchDown:(id)down
{
  highlightedBackgroundColor = [(ActionButtonCollectionReusableView *)self highlightedBackgroundColor];
  vibrantView = [(ActionButtonCollectionReusableView *)self vibrantView];
  contentView = [vibrantView contentView];
  [contentView setBackgroundColor:highlightedBackgroundColor];
}

- (void)didTouchUp:(id)up
{
  completion = [(ActionButtonCollectionReusableView *)self completion];

  if (completion)
  {
    completion2 = [(ActionButtonCollectionReusableView *)self completion];
    completion2[2]();
  }
}

- (id)highlightedBackgroundColor
{
  v2 = +[MKInfoCardThemeManager currentTheme];
  buttonHighlightedColor = [v2 buttonHighlightedColor];

  return buttonHighlightedColor;
}

- (id)regularBackgroundColor
{
  v2 = +[MKInfoCardThemeManager currentTheme];
  buttonNormalColor = [v2 buttonNormalColor];

  return buttonNormalColor;
}

- (void)updateFontsAndSizes
{
  v3 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline addingSymbolicTraits:2];
  titleLabel = [(UIButton *)self->_button titleLabel];
  [titleLabel setFont:v3];

  v8 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline addingSymbolicTraits:0];
  [objc_opt_class() estimatedHeight];
  [v8 _mapkit_scaledValueForValue:?];
  v6 = v5;
  heightConstraint = [(ActionButtonCollectionReusableView *)self heightConstraint];
  [heightConstraint setConstant:v6];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = ActionButtonCollectionReusableView;
  [(ActionButtonCollectionReusableView *)&v7 prepareForReuse];
  regularBackgroundColor = [(ActionButtonCollectionReusableView *)self regularBackgroundColor];
  vibrantView = [(ActionButtonCollectionReusableView *)self vibrantView];
  contentView = [vibrantView contentView];
  [contentView setBackgroundColor:regularBackgroundColor];

  button = [(ActionButtonCollectionReusableView *)self button];
  [button setTitle:0 forState:0];

  [(ActionButtonCollectionReusableView *)self setCompletion:0];
}

- (void)setupSubviews
{
  v3 = [[MKVibrantView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  vibrantView = self->_vibrantView;
  self->_vibrantView = v3;

  [(MKVibrantView *)self->_vibrantView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKVibrantView *)self->_vibrantView _setContinuousCornerRadius:8.0];
  regularBackgroundColor = [(ActionButtonCollectionReusableView *)self regularBackgroundColor];
  contentView = [(MKVibrantView *)self->_vibrantView contentView];
  [contentView setBackgroundColor:regularBackgroundColor];

  [(ActionButtonCollectionReusableView *)self addSubview:self->_vibrantView];
  [(ActionButtonCollectionReusableView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:"didTouchUp:"];
  v7 = [UIButton buttonWithType:0];
  button = self->_button;
  self->_button = v7;

  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = self->_button;
  v10 = +[MKInfoCardThemeManager currentTheme];
  tintColor = [v10 tintColor];
  [(UIButton *)v9 setTitleColor:tintColor forState:0];

  v12 = self->_button;
  v13 = +[MKInfoCardThemeManager currentTheme];
  tintColor2 = [v13 tintColor];
  [(UIButton *)v12 setTitleColor:tintColor2 forState:1];

  [(UIButton *)self->_button addTarget:self action:"didTouchUp:" forControlEvents:64];
  [(UIButton *)self->_button addTarget:self action:"didTouchDown:" forControlEvents:1];
  [(UIButton *)self->_button addTarget:self action:"didEndTouch:" forControlEvents:448];
  [(ActionButtonCollectionReusableView *)self addSubview:self->_button];
  heightAnchor = [(ActionButtonCollectionReusableView *)self heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v16;

  leadingAnchor = [(MKVibrantView *)self->_vibrantView leadingAnchor];
  leadingAnchor2 = [(ActionButtonCollectionReusableView *)self leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  leadingVibrantViewContraint = self->_leadingVibrantViewContraint;
  self->_leadingVibrantViewContraint = v20;

  trailingAnchor = [(MKVibrantView *)self->_vibrantView trailingAnchor];
  trailingAnchor2 = [(ActionButtonCollectionReusableView *)self trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  trailingVibrantViewContraint = self->_trailingVibrantViewContraint;
  self->_trailingVibrantViewContraint = v24;

  v26 = self->_trailingVibrantViewContraint;
  v47[0] = self->_leadingVibrantViewContraint;
  v47[1] = v26;
  topAnchor = [(MKVibrantView *)self->_vibrantView topAnchor];
  topAnchor2 = [(ActionButtonCollectionReusableView *)self topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[2] = v44;
  bottomAnchor = [(MKVibrantView *)self->_vibrantView bottomAnchor];
  bottomAnchor2 = [(ActionButtonCollectionReusableView *)self bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v41;
  leadingAnchor3 = [(UIButton *)self->_button leadingAnchor];
  leadingAnchor4 = [(MKVibrantView *)self->_vibrantView leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
  v47[4] = v38;
  trailingAnchor3 = [(UIButton *)self->_button trailingAnchor];
  trailingAnchor4 = [(MKVibrantView *)self->_vibrantView trailingAnchor];
  v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-4.0];
  v47[5] = v29;
  topAnchor3 = [(UIButton *)self->_button topAnchor];
  topAnchor4 = [(MKVibrantView *)self->_vibrantView topAnchor];
  v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v47[6] = v32;
  bottomAnchor3 = [(UIButton *)self->_button bottomAnchor];
  bottomAnchor4 = [(MKVibrantView *)self->_vibrantView bottomAnchor];
  v35 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v36 = self->_heightConstraint;
  v47[7] = v35;
  v47[8] = v36;
  v37 = [NSArray arrayWithObjects:v47 count:9];
  [NSLayoutConstraint activateConstraints:v37];
}

- (ActionButtonCollectionReusableView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ActionButtonCollectionReusableView;
  v3 = [(ActionButtonCollectionReusableView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(ActionButtonCollectionReusableView *)v3 setBackgroundColor:v4];

    [(ActionButtonCollectionReusableView *)v3 setupSubviews];
    [(ActionButtonCollectionReusableView *)v3 updateFontsAndSizes];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end