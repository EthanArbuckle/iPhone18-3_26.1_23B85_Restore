@interface ContactValueTableViewCell
- (ContactValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeDidChange;
- (void)prepareForReuse;
- (void)setCapabilityColor:(id)color;
- (void)setContactCapability:(id)capability;
- (void)setContactHandle:(id)handle;
- (void)updateConstraintConstants;
- (void)updateContactLabel;
- (void)updateFonts;
@end

@implementation ContactValueTableViewCell

- (void)setCapabilityColor:(id)color
{
  objc_storeStrong(&self->_capabilityColor, color);
  colorCopy = color;
  [(UILabel *)self->_contactHandleLabel setTextColor:colorCopy];
  [(UILabel *)self->_contactNameLabel setTextColor:colorCopy];
}

- (void)updateContactLabel
{
  if ([(NSString *)self->_contactCapability length])
  {
    v5 = [NSString stringWithFormat:@"%@ • %@", self->_contactHandle, self->_contactCapability];
    [(UILabel *)self->_contactHandleLabel setText:v5];
  }

  else
  {
    contactHandle = self->_contactHandle;
    contactHandleLabel = self->_contactHandleLabel;

    [(UILabel *)contactHandleLabel setText:contactHandle];
  }
}

- (void)setContactCapability:(id)capability
{
  objc_storeStrong(&self->_contactCapability, capability);

  [(ContactValueTableViewCell *)self updateContactLabel];
}

- (void)setContactHandle:(id)handle
{
  objc_storeStrong(&self->_contactHandle, handle);

  [(ContactValueTableViewCell *)self updateContactLabel];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ContactValueTableViewCell;
  [(ContactValueTableViewCell *)&v4 prepareForReuse];
  [(ContactValueTableViewCell *)self setContactValue:0];
  [(ContactValueTableViewCell *)self setContactHandle:0];
  [(ContactValueTableViewCell *)self setContactCapability:0];
  [(UILabel *)self->_contactNameLabel setText:&stru_1016631F0];
  [(UILabel *)self->_contactHandleLabel setText:&stru_1016631F0];
  v3 = +[UIColor secondaryLabelColor];
  [(ContactValueTableViewCell *)self setCapabilityColor:v3];
}

- (void)updateFonts
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  [(UILabel *)self->_contactNameLabel setFont:v3];

  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_contactHandleLabel setFont:v4];
}

- (void)updateConstraintConstants
{
  v4 = +[UIFont system15];
  [v4 _mapkit_scaledValueForValue:34.0];
  [(NSLayoutConstraint *)self->_nameFirstBaselineToTopConstraint setConstant:?];
  [v4 _mapkit_scaledValueForValue:24.0];
  [(NSLayoutConstraint *)self->_handleFirstBaselineToNameLastBaselineConstraint setConstant:?];
  [v4 _mapkit_scaledValueForValue:18.0];
  [(NSLayoutConstraint *)self->_handleLastBaselineToBottomConstraint setConstant:-v3];
}

- (void)_contentSizeDidChange
{
  [(ContactValueTableViewCell *)self updateConstraintConstants];

  [(ContactValueTableViewCell *)self updateFonts];
}

- (ContactValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v54.receiver = self;
  v54.super_class = ContactValueTableViewCell;
  v4 = [(ContactValueTableViewCell *)&v54 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ContactValueTableViewCell *)v4 setAccessibilityIdentifier:@"ContactValueTableViewCell"];
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    contactNameLabel = v5->_contactNameLabel;
    v5->_contactNameLabel = v10;

    [(UILabel *)v5->_contactNameLabel setAccessibilityIdentifier:@"ContactNameLabel"];
    [(UILabel *)v5->_contactNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(ContactValueTableViewCell *)v5 contentView];
    [contentView addSubview:v5->_contactNameLabel];

    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    contactHandleLabel = v5->_contactHandleLabel;
    v5->_contactHandleLabel = v13;

    [(UILabel *)v5->_contactHandleLabel setAccessibilityIdentifier:@"ContactHandleLabel"];
    [(UILabel *)v5->_contactHandleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(ContactValueTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_contactHandleLabel];

    firstBaselineAnchor = [(UILabel *)v5->_contactNameLabel firstBaselineAnchor];
    contentView3 = [(ContactValueTableViewCell *)v5 contentView];
    topAnchor = [contentView3 topAnchor];
    v19 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:0.0];
    nameFirstBaselineToTopConstraint = v5->_nameFirstBaselineToTopConstraint;
    v5->_nameFirstBaselineToTopConstraint = v19;

    firstBaselineAnchor2 = [(UILabel *)v5->_contactHandleLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_contactNameLabel lastBaselineAnchor];
    v23 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:0.0];
    handleFirstBaselineToNameLastBaselineConstraint = v5->_handleFirstBaselineToNameLastBaselineConstraint;
    v5->_handleFirstBaselineToNameLastBaselineConstraint = v23;

    lastBaselineAnchor2 = [(UILabel *)v5->_contactHandleLabel lastBaselineAnchor];
    contentView4 = [(ContactValueTableViewCell *)v5 contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    v28 = [lastBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:0.0];
    handleLastBaselineToBottomConstraint = v5->_handleLastBaselineToBottomConstraint;
    v5->_handleLastBaselineToBottomConstraint = v28;

    v55[0] = v5->_nameFirstBaselineToTopConstraint;
    v55[1] = v5->_handleFirstBaselineToNameLastBaselineConstraint;
    v55[2] = v5->_handleLastBaselineToBottomConstraint;
    leadingAnchor = [(UILabel *)v5->_contactNameLabel leadingAnchor];
    contentView5 = [(ContactValueTableViewCell *)v5 contentView];
    layoutMarginsGuide = [contentView5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v55[3] = v49;
    trailingAnchor = [(UILabel *)v5->_contactNameLabel trailingAnchor];
    contentView6 = [(ContactValueTableViewCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v55[4] = v44;
    leadingAnchor3 = [(UILabel *)v5->_contactHandleLabel leadingAnchor];
    contentView7 = [(ContactValueTableViewCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView7 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v55[5] = v32;
    trailingAnchor3 = [(UILabel *)v5->_contactHandleLabel trailingAnchor];
    contentView8 = [(ContactValueTableViewCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView8 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
    v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v55[6] = v37;
    v38 = [NSArray arrayWithObjects:v55 count:7];
    [NSLayoutConstraint activateConstraints:v38];

    v39 = +[UIColor clearColor];
    [(ContactValueTableViewCell *)v5 setBackgroundColor:v39];

    v40 = +[NSNotificationCenter defaultCenter];
    [v40 addObserver:v5 selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(ContactValueTableViewCell *)v5 _contentSizeDidChange];
  }

  return v5;
}

@end