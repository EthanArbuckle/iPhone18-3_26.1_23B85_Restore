@interface MKTransitDepartureContainerHeaderCell
- (MKTransitDepartureContainerHeaderCell)initWithReuseIdentifier:(id)identifier;
- (void)_commonInit;
@end

@implementation MKTransitDepartureContainerHeaderCell

- (void)_commonInit
{
  v27[4] = *MEMORY[0x1E69E9840];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  contentView = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  [contentView setBackgroundColor:secondarySystemGroupedBackgroundColor];

  v5 = [MKTransitDepartureContainerHeaderView alloc];
  v6 = [(MKTransitDepartureContainerHeaderView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v6;

  [(MKTransitDepartureContainerHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  [contentView2 addSubview:self->_headerView];

  v19 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(MKTransitDepartureContainerHeaderView *)self->_headerView leadingAnchor];
  contentView3 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v23;
  trailingAnchor = [(MKTransitDepartureContainerHeaderView *)self->_headerView trailingAnchor];
  contentView4 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v9;
  topAnchor = [(MKTransitDepartureContainerHeaderView *)self->_headerView topAnchor];
  contentView5 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v13;
  bottomAnchor = [(MKTransitDepartureContainerHeaderView *)self->_headerView bottomAnchor];
  contentView6 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v19 activateConstraints:v18];
}

- (MKTransitDepartureContainerHeaderCell)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = MKTransitDepartureContainerHeaderCell;
  v3 = [(MKCustomSeparatorCell *)&v6 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(MKTransitDepartureContainerHeaderCell *)v3 _commonInit];
  }

  return v4;
}

@end