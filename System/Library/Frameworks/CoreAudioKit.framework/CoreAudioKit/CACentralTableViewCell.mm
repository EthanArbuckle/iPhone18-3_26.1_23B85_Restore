@interface CACentralTableViewCell
- (CACentralTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)createInitialConstraints;
- (void)dealloc;
- (void)startIndicator;
- (void)stopIndicator;
- (void)updateConstraints;
@end

@implementation CACentralTableViewCell

- (CACentralTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CACentralTableViewCell;
  v4 = [(CACentralTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v4->_deviceNameLabel = objc_alloc_init(MEMORY[0x277D756B8]);
    -[UILabel setFont:](v4->_deviceNameLabel, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]]);
    [(UILabel *)v4->_deviceNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [-[CACentralTableViewCell contentView](v4 "contentView")];
    v4->_connectionStatusLabel = objc_alloc_init(MEMORY[0x277D756B8]);
    -[UILabel setFont:](v4->_connectionStatusLabel, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]]);
    [(UILabel *)v4->_connectionStatusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_connectionStatusLabel setEnabled:0];
    [(UILabel *)v4->_connectionStatusLabel setText:priv_getBTLELocalizedString(@"Not Connected", @"Not Connected")];
    [-[CACentralTableViewCell contentView](v4 "contentView")];
    v4->_inputLabel = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277D76938];
    -[UILabel setFont:](v4->_inputLabel, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]]);
    [(UILabel *)v4->_inputLabel setEnabled:0];
    [(UILabel *)v4->_inputLabel setText:priv_getBTLELocalizedString(@"Input", @"Input")];
    [(UILabel *)v4->_inputLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [-[CACentralTableViewCell contentView](v4 "contentView")];
    v4->_slashLabel = objc_alloc_init(MEMORY[0x277D756B8]);
    -[UILabel setFont:](v4->_slashLabel, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:v5]);
    [(UILabel *)v4->_slashLabel setEnabled:0];
    [(UILabel *)v4->_slashLabel setText:priv_getBTLELocalizedString(@"/", @"/")];
    [(UILabel *)v4->_slashLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [-[CACentralTableViewCell contentView](v4 "contentView")];
    v4->_outputLabel = objc_alloc_init(MEMORY[0x277D756B8]);
    -[UILabel setFont:](v4->_outputLabel, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:v5]);
    [(UILabel *)v4->_outputLabel setEnabled:0];
    [(UILabel *)v4->_outputLabel setText:priv_getBTLELocalizedString(@"Output", @"Output")];
    [(UILabel *)v4->_outputLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [-[CACentralTableViewCell contentView](v4 "contentView")];
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    v4->_activityIndicator = v6;
    [(UIActivityIndicatorView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v4->_activityIndicator setHidden:1];
    [-[CACentralTableViewCell contentView](v4 "contentView")];
    [(CACentralTableViewCell *)v4 createInitialConstraints];
  }

  return v4;
}

- (void)createInitialConstraints
{
  v3 = _NSDictionaryOfVariableBindings(&cfstr_Devicenamelabe.isa, self->_deviceNameLabel, self->_connectionStatusLabel, self->_inputLabel, self->_slashLabel, self->_outputLabel, self->_activityIndicator, 0);
  -[CACentralTableViewCell setLabelConstraints:](self, "setLabelConstraints:", [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[_deviceNameLabel]-[_connectionStatusLabel]-|" options:2048 metrics:0 views:v3]);
  [-[CACentralTableViewCell contentView](self "contentView")];
  -[CACentralTableViewCell setActivityHConstraints:](self, "setActivityHConstraints:", [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[_activityIndicator]-|" options:0 metrics:0 views:v3]);
  -[CACentralTableViewCell setActivityVConstraints:](self, "setActivityVConstraints:", [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-8-[_activityIndicator]" options:0 metrics:0 views:v3]);
  contentView = [(CACentralTableViewCell *)self contentView];
  [contentView addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"V:|-5-[_deviceNameLabel]-2-[_inputLabel]-5-|", 0, 0, v3)}];
  contentView2 = [(CACentralTableViewCell *)self contentView];
  [contentView2 addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"H:|-20-[_inputLabel]-2-[_slashLabel]-2-[_outputLabel]", 2048, 0, v3)}];
  LODWORD(v6) = 1144766464;
  [(UILabel *)self->_connectionStatusLabel setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1132134400;
  [(UILabel *)self->_connectionStatusLabel setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [(UILabel *)self->_deviceNameLabel setContentCompressionResistancePriority:0 forAxis:v8];
  deviceNameLabel = self->_deviceNameLabel;
  LODWORD(v10) = 1132068864;

  [(UILabel *)deviceNameLabel setContentHuggingPriority:0 forAxis:v10];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CACentralTableViewCell;
  [(CACentralTableViewCell *)&v4 updateConstraints];
  [-[CACentralTableViewCell contentView](self "contentView")];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_Devicenamelabe_0.isa, self->_deviceNameLabel, self->_connectionStatusLabel, self->_activityIndicator, 0);
  if ([(UIActivityIndicatorView *)self->_activityIndicator isHidden])
  {
    [-[CACentralTableViewCell contentView](self "contentView")];
    [-[CACentralTableViewCell contentView](self "contentView")];
    -[CACentralTableViewCell setLabelConstraints:](self, "setLabelConstraints:", [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[_deviceNameLabel]-[_connectionStatusLabel]-|" options:2048 metrics:0 views:v3]);
  }

  else
  {
    -[CACentralTableViewCell setLabelConstraints:](self, "setLabelConstraints:", [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[_deviceNameLabel]-[_connectionStatusLabel]-[_activityIndicator]-|" options:2048 metrics:0 views:v3]);
    -[CACentralTableViewCell setActivityHConstraints:](self, "setActivityHConstraints:", [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[_activityIndicator]-|" options:0 metrics:0 views:v3]);
    [-[CACentralTableViewCell contentView](self "contentView")];
    [-[CACentralTableViewCell contentView](self "contentView")];
  }

  [-[CACentralTableViewCell contentView](self "contentView")];
}

- (void)startIndicator
{
  if (![(UIActivityIndicatorView *)self->_activityIndicator isAnimating])
  {
    [(UIActivityIndicatorView *)self->_activityIndicator setHidden:0];
    [(CACentralTableViewCell *)self setNeedsUpdateConstraints];
    activityIndicator = self->_activityIndicator;

    [(UIActivityIndicatorView *)activityIndicator startAnimating];
  }
}

- (void)stopIndicator
{
  if ([(UIActivityIndicatorView *)self->_activityIndicator isAnimating])
  {
    [(UIActivityIndicatorView *)self->_activityIndicator setHidden:1];
    [(CACentralTableViewCell *)self setNeedsUpdateConstraints];
    activityIndicator = self->_activityIndicator;

    [(UIActivityIndicatorView *)activityIndicator stopAnimating];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CACentralTableViewCell;
  [(CACentralTableViewCell *)&v3 dealloc];
}

@end