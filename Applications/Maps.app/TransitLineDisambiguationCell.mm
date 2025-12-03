@interface TransitLineDisambiguationCell
- (TransitLineDisambiguationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_targetCellHeight;
- (id)_fontProviderForMessageLabel;
- (void)_updateMessageLabelLeadingMargin;
- (void)addConstraints;
- (void)hideSpinner;
- (void)setLabelText:(id)text;
- (void)setMaxWidth:(double)width;
- (void)setShieldImage:(id)image;
- (void)showSpinner;
@end

@implementation TransitLineDisambiguationCell

- (double)_targetCellHeight
{
  v2 = sub_10000FA08(self);
  result = 79.0;
  if (v2 == 5)
  {
    return 36.0;
  }

  return result;
}

- (id)_fontProviderForMessageLabel
{
  if (sub_10000FA08(self) == 5)
  {
    v2 = &stru_10165DAA8;
  }

  else
  {
    v2 = &stru_10165DA48;
  }

  v3 = objc_retainBlock(v2);

  return v3;
}

- (void)_updateMessageLabelLeadingMargin
{
  [(TransitLineDisambiguationCell *)self maxWidth];
  v4 = v3 + 16.0;
  shieldImage = [(TransitLineDisambiguationCell *)self shieldImage];
  v5 = 0.0;
  if (shieldImage)
  {
    v5 = 16.0;
  }

  v6 = v4 + v5;
  messageLabelLeadingConstraint = [(TransitLineDisambiguationCell *)self messageLabelLeadingConstraint];
  [messageLabelLeadingConstraint setConstant:v6];
}

- (void)addConstraints
{
  contentView = [(TransitLineDisambiguationCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  [(TransitLineDisambiguationCell *)self _targetCellHeight];
  v5 = [heightAnchor constraintEqualToConstant:?];

  LODWORD(v6) = *"";
  v7 = v5;
  v44 = v5;
  [v5 setPriority:v6];
  messageLabel = [(TransitLineDisambiguationCell *)self messageLabel];
  firstBaselineAnchor = [messageLabel firstBaselineAnchor];
  contentView2 = [(TransitLineDisambiguationCell *)self contentView];
  topAnchor = [contentView2 topAnchor];
  v12 = [firstBaselineAnchor constraintGreaterThanOrEqualToAnchor:topAnchor];
  v37 = v12;

  messageLabel2 = [(TransitLineDisambiguationCell *)self messageLabel];
  leadingAnchor = [messageLabel2 leadingAnchor];
  contentView3 = [(TransitLineDisambiguationCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(TransitLineDisambiguationCell *)self setMessageLabelLeadingConstraint:v17];

  if (sub_10000FA08(self) == 5)
  {
    v18 = 8.0;
  }

  else
  {
    v18 = 34.0;
  }

  v45[0] = v7;
  shieldImageView = [(TransitLineDisambiguationCell *)self shieldImageView];
  centerYAnchor = [shieldImageView centerYAnchor];
  contentView4 = [(TransitLineDisambiguationCell *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v45[1] = v39;
  shieldImageView2 = [(TransitLineDisambiguationCell *)self shieldImageView];
  leadingAnchor3 = [shieldImageView2 leadingAnchor];
  contentView5 = [(TransitLineDisambiguationCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v45[2] = v33;
  _fontProviderForMessageLabel = [(TransitLineDisambiguationCell *)self _fontProviderForMessageLabel];
  v31 = [DynamicTypeWizard autoscaledConstraint:v12 constant:_fontProviderForMessageLabel withFontProvider:v18];
  v45[3] = v31;
  messageLabelLeadingConstraint = [(TransitLineDisambiguationCell *)self messageLabelLeadingConstraint];
  v45[4] = messageLabelLeadingConstraint;
  messageLabel3 = [(TransitLineDisambiguationCell *)self messageLabel];
  centerYAnchor3 = [messageLabel3 centerYAnchor];
  contentView6 = [(TransitLineDisambiguationCell *)self contentView];
  centerYAnchor4 = [contentView6 centerYAnchor];
  v21 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v45[5] = v21;
  messageLabel4 = [(TransitLineDisambiguationCell *)self messageLabel];
  trailingAnchor = [messageLabel4 trailingAnchor];
  contentView7 = [(TransitLineDisambiguationCell *)self contentView];
  trailingAnchor2 = [contentView7 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v45[6] = v26;
  v27 = [NSArray arrayWithObjects:v45 count:7];
  [NSLayoutConstraint activateConstraints:v27];

  [(TransitLineDisambiguationCell *)self _updateMessageLabelLeadingMargin];
}

- (void)setMaxWidth:(double)width
{
  if (self->_maxWidth != width)
  {
    self->_maxWidth = width;
    [(TransitLineDisambiguationCell *)self _updateMessageLabelLeadingMargin];
  }
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_labelText isEqualToString:?])
  {
    objc_storeStrong(&self->_labelText, text);
    labelText = self->_labelText;
    messageLabel = [(TransitLineDisambiguationCell *)self messageLabel];
    [messageLabel setText:labelText];
  }
}

- (void)setShieldImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_shieldImage isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_shieldImage, image);
    shieldImage = self->_shieldImage;
    shieldImageView = [(TransitLineDisambiguationCell *)self shieldImageView];
    [shieldImageView setImage:shieldImage];
  }
}

- (void)hideSpinner
{
  spinner = [(TransitLineDisambiguationCell *)self spinner];
  superview = [spinner superview];

  if (superview)
  {
    spinner2 = [(TransitLineDisambiguationCell *)self spinner];
    [spinner2 stopAnimating];

    spinner3 = [(TransitLineDisambiguationCell *)self spinner];
    [spinner3 removeFromSuperview];
  }
}

- (void)showSpinner
{
  messageLabel = [(TransitLineDisambiguationCell *)self messageLabel];
  [messageLabel setText:0];

  shieldImageView = [(TransitLineDisambiguationCell *)self shieldImageView];
  [shieldImageView setImage:0];

  contentView = [(TransitLineDisambiguationCell *)self contentView];
  spinner = [(TransitLineDisambiguationCell *)self spinner];
  [contentView addSubview:spinner];

  spinner2 = [(TransitLineDisambiguationCell *)self spinner];
  [spinner2 startAnimating];

  spinner3 = [(TransitLineDisambiguationCell *)self spinner];
  centerXAnchor = [spinner3 centerXAnchor];
  contentView2 = [(TransitLineDisambiguationCell *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v19[0] = v11;
  spinner4 = [(TransitLineDisambiguationCell *)self spinner];
  centerYAnchor = [spinner4 centerYAnchor];
  contentView3 = [(TransitLineDisambiguationCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[1] = v16;
  v17 = [NSArray arrayWithObjects:v19 count:2];
  [NSLayoutConstraint activateConstraints:v17];
}

- (TransitLineDisambiguationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v41.receiver = self;
  v41.super_class = TransitLineDisambiguationCell;
  v4 = [(MapsThemeTableViewCell *)&v41 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(TransitLineDisambiguationCell *)v4 setSpinner:v5];

    spinner = [(TransitLineDisambiguationCell *)v4 spinner];
    [spinner setHidesWhenStopped:1];

    spinner2 = [(TransitLineDisambiguationCell *)v4 spinner];
    [spinner2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [MapsThemeLabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(MapsThemeLabel *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(TransitLineDisambiguationCell *)v4 setMessageLabel:height];

    messageLabel = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [messageLabel setLineBreakMode:4];

    messageLabel2 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [messageLabel2 setNumberOfLines:0];

    messageLabel3 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [messageLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[UIColor labelColor];
    messageLabel4 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [messageLabel4 setTextColor:v16];

    messageLabel5 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    LODWORD(v19) = 1144750080;
    [messageLabel5 setContentCompressionResistancePriority:0 forAxis:v19];

    messageLabel6 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    LODWORD(v21) = 1148829696;
    [messageLabel6 setContentCompressionResistancePriority:1 forAxis:v21];

    contentView = [(TransitLineDisambiguationCell *)v4 contentView];
    messageLabel7 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    [contentView addSubview:messageLabel7];

    v24 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(TransitLineDisambiguationCell *)v4 setShieldImageView:v24];

    shieldImageView = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    [shieldImageView setContentMode:4];

    shieldImageView2 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    [shieldImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    shieldImageView3 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    LODWORD(v28) = 1148846080;
    [shieldImageView3 setContentHuggingPriority:0 forAxis:v28];

    shieldImageView4 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    LODWORD(v30) = 1148846080;
    [shieldImageView4 setContentHuggingPriority:1 forAxis:v30];

    shieldImageView5 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    LODWORD(v32) = 1148846080;
    [shieldImageView5 setContentCompressionResistancePriority:0 forAxis:v32];

    shieldImageView6 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    LODWORD(v34) = 1148846080;
    [shieldImageView6 setContentCompressionResistancePriority:1 forAxis:v34];

    contentView2 = [(TransitLineDisambiguationCell *)v4 contentView];
    shieldImageView7 = [(TransitLineDisambiguationCell *)v4 shieldImageView];
    [contentView2 addSubview:shieldImageView7];

    messageLabel8 = [(TransitLineDisambiguationCell *)v4 messageLabel];
    _fontProviderForMessageLabel = [(TransitLineDisambiguationCell *)v4 _fontProviderForMessageLabel];
    [DynamicTypeWizard autorefreshLabel:messageLabel8 withFontProvider:_fontProviderForMessageLabel];

    v39 = +[UIColor clearColor];
    [(TransitLineDisambiguationCell *)v4 setBackgroundColor:v39];

    [(TransitLineDisambiguationCell *)v4 addConstraints];
  }

  return v4;
}

@end