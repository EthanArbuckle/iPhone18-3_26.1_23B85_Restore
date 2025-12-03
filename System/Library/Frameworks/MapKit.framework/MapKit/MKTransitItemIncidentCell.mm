@interface MKTransitItemIncidentCell
- (MKTransitItemIncidentCell)initWithReuseIdentifier:(id)identifier;
- (MKTransitItemIncidentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configureViews;
- (void)_updateIncidentViewBottomOffset;
- (void)setLeadingSeparatorInset:(double)inset;
- (void)setSeparatorHidden:(BOOL)hidden;
- (void)setTrailingSeparatorInset:(double)inset;
@end

@implementation MKTransitItemIncidentCell

- (void)_updateIncidentViewBottomOffset
{
  isSeparatorHidden = [(MKCustomSeparatorCell *)self isSeparatorHidden];
  v4 = 0.0;
  if (!isSeparatorHidden)
  {
    [(MKCustomSeparatorCell *)self _separatorFrame];
    v4 = -v5;
  }

  incidentView = self->_incidentView;

  [(MKTransitItemIncidentView *)incidentView _updateBottomConstraintWithOffset:v4];
}

- (void)setSeparatorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isSeparatorHidden = [(MKCustomSeparatorCell *)self isSeparatorHidden];
  v6.receiver = self;
  v6.super_class = MKTransitItemIncidentCell;
  [(MKCustomSeparatorCell *)&v6 setSeparatorHidden:hiddenCopy];
  if (isSeparatorHidden != hiddenCopy)
  {
    [(MKTransitItemIncidentCell *)self _updateIncidentViewBottomOffset];
  }
}

- (void)setTrailingSeparatorInset:(double)inset
{
  [(MKTransitItemIncidentView *)self->_incidentView contentInsets];
  v6.receiver = self;
  v6.super_class = MKTransitItemIncidentCell;
  [(MKCustomSeparatorCell *)&v6 setTrailingSeparatorInset:v5 + inset];
}

- (void)setLeadingSeparatorInset:(double)inset
{
  [(MKTransitItemIncidentView *)self->_incidentView contentInsets];
  v6.receiver = self;
  v6.super_class = MKTransitItemIncidentCell;
  [(MKCustomSeparatorCell *)&v6 setLeadingSeparatorInset:v5 + inset];
}

- (void)_configureViews
{
  v26[4] = *MEMORY[0x1E69E9840];
  [(MKTransitItemIncidentCell *)self setSelectionStyle:0];
  [(MKTransitItemIncidentCell *)self setSeparatorHidden:1];
  v3 = [MKTransitItemIncidentView alloc];
  contentView = [(MKTransitItemIncidentCell *)self contentView];
  [contentView bounds];
  v5 = [(MKTransitItemIncidentView *)v3 initWithFrame:?];
  incidentView = self->_incidentView;
  self->_incidentView = v5;

  [(MKTransitItemIncidentView *)self->_incidentView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(MKTransitItemIncidentCell *)self contentView];
  [contentView2 addSubview:self->_incidentView];

  v18 = MEMORY[0x1E696ACD8];
  topAnchor = [(MKTransitItemIncidentView *)self->_incidentView topAnchor];
  contentView3 = [(MKTransitItemIncidentCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v22;
  leadingAnchor = [(MKTransitItemIncidentView *)self->_incidentView leadingAnchor];
  contentView4 = [(MKTransitItemIncidentCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v17;
  contentView5 = [(MKTransitItemIncidentCell *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  trailingAnchor2 = [(MKTransitItemIncidentView *)self->_incidentView trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v11;
  contentView6 = [(MKTransitItemIncidentCell *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [(MKTransitItemIncidentView *)self->_incidentView bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v18 activateConstraints:v16];

  [(MKTransitItemIncidentCell *)self _updateIncidentViewBottomOffset];
}

- (MKTransitItemIncidentCell)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = MKTransitItemIncidentCell;
  v3 = [(MKCustomSeparatorCell *)&v6 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(MKTransitItemIncidentCell *)v3 _configureViews];
  }

  return v4;
}

- (MKTransitItemIncidentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MKTransitItemIncidentCell;
  v4 = [(MKCustomSeparatorCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MKTransitItemIncidentCell *)v4 _configureViews];
  }

  return v5;
}

@end