@interface ContactValueTableViewCell
- (ContactValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_contentSizeDidChange;
- (void)prepareForReuse;
- (void)setCapabilityColor:(id)a3;
- (void)setContactCapability:(id)a3;
- (void)setContactHandle:(id)a3;
- (void)updateConstraintConstants;
- (void)updateContactLabel;
- (void)updateFonts;
@end

@implementation ContactValueTableViewCell

- (void)setCapabilityColor:(id)a3
{
  objc_storeStrong(&self->_capabilityColor, a3);
  v5 = a3;
  [(UILabel *)self->_contactHandleLabel setTextColor:v5];
  [(UILabel *)self->_contactNameLabel setTextColor:v5];
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

- (void)setContactCapability:(id)a3
{
  objc_storeStrong(&self->_contactCapability, a3);

  [(ContactValueTableViewCell *)self updateContactLabel];
}

- (void)setContactHandle:(id)a3
{
  objc_storeStrong(&self->_contactHandle, a3);

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

- (ContactValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v54.receiver = self;
  v54.super_class = ContactValueTableViewCell;
  v4 = [(ContactValueTableViewCell *)&v54 initWithStyle:a3 reuseIdentifier:a4];
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
    v12 = [(ContactValueTableViewCell *)v5 contentView];
    [v12 addSubview:v5->_contactNameLabel];

    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    contactHandleLabel = v5->_contactHandleLabel;
    v5->_contactHandleLabel = v13;

    [(UILabel *)v5->_contactHandleLabel setAccessibilityIdentifier:@"ContactHandleLabel"];
    [(UILabel *)v5->_contactHandleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(ContactValueTableViewCell *)v5 contentView];
    [v15 addSubview:v5->_contactHandleLabel];

    v16 = [(UILabel *)v5->_contactNameLabel firstBaselineAnchor];
    v17 = [(ContactValueTableViewCell *)v5 contentView];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:0.0];
    nameFirstBaselineToTopConstraint = v5->_nameFirstBaselineToTopConstraint;
    v5->_nameFirstBaselineToTopConstraint = v19;

    v21 = [(UILabel *)v5->_contactHandleLabel firstBaselineAnchor];
    v22 = [(UILabel *)v5->_contactNameLabel lastBaselineAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];
    handleFirstBaselineToNameLastBaselineConstraint = v5->_handleFirstBaselineToNameLastBaselineConstraint;
    v5->_handleFirstBaselineToNameLastBaselineConstraint = v23;

    v25 = [(UILabel *)v5->_contactHandleLabel lastBaselineAnchor];
    v26 = [(ContactValueTableViewCell *)v5 contentView];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27 constant:0.0];
    handleLastBaselineToBottomConstraint = v5->_handleLastBaselineToBottomConstraint;
    v5->_handleLastBaselineToBottomConstraint = v28;

    v55[0] = v5->_nameFirstBaselineToTopConstraint;
    v55[1] = v5->_handleFirstBaselineToNameLastBaselineConstraint;
    v55[2] = v5->_handleLastBaselineToBottomConstraint;
    v52 = [(UILabel *)v5->_contactNameLabel leadingAnchor];
    v53 = [(ContactValueTableViewCell *)v5 contentView];
    v51 = [v53 layoutMarginsGuide];
    v50 = [v51 leadingAnchor];
    v49 = [v52 constraintEqualToAnchor:v50];
    v55[3] = v49;
    v47 = [(UILabel *)v5->_contactNameLabel trailingAnchor];
    v48 = [(ContactValueTableViewCell *)v5 contentView];
    v46 = [v48 layoutMarginsGuide];
    v45 = [v46 trailingAnchor];
    v44 = [v47 constraintEqualToAnchor:v45];
    v55[4] = v44;
    v42 = [(UILabel *)v5->_contactHandleLabel leadingAnchor];
    v43 = [(ContactValueTableViewCell *)v5 contentView];
    v30 = [v43 layoutMarginsGuide];
    v31 = [v30 leadingAnchor];
    v32 = [v42 constraintEqualToAnchor:v31];
    v55[5] = v32;
    v33 = [(UILabel *)v5->_contactHandleLabel trailingAnchor];
    v34 = [(ContactValueTableViewCell *)v5 contentView];
    v35 = [v34 layoutMarginsGuide];
    v36 = [v35 trailingAnchor];
    v37 = [v33 constraintEqualToAnchor:v36];
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