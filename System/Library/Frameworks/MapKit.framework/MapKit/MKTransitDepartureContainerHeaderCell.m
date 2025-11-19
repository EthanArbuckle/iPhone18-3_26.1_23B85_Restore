@interface MKTransitDepartureContainerHeaderCell
- (MKTransitDepartureContainerHeaderCell)initWithReuseIdentifier:(id)a3;
- (void)_commonInit;
@end

@implementation MKTransitDepartureContainerHeaderCell

- (void)_commonInit
{
  v27[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  v4 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  [v4 setBackgroundColor:v3];

  v5 = [MKTransitDepartureContainerHeaderView alloc];
  v6 = [(MKTransitDepartureContainerHeaderView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v6;

  [(MKTransitDepartureContainerHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  [v8 addSubview:self->_headerView];

  v19 = MEMORY[0x1E696ACD8];
  v25 = [(MKTransitDepartureContainerHeaderView *)self->_headerView leadingAnchor];
  v26 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v27[0] = v23;
  v21 = [(MKTransitDepartureContainerHeaderView *)self->_headerView trailingAnchor];
  v22 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  v20 = [v22 trailingAnchor];
  v9 = [v21 constraintEqualToAnchor:v20];
  v27[1] = v9;
  v10 = [(MKTransitDepartureContainerHeaderView *)self->_headerView topAnchor];
  v11 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  v12 = [v11 topAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v27[2] = v13;
  v14 = [(MKTransitDepartureContainerHeaderView *)self->_headerView bottomAnchor];
  v15 = [(MKTransitDepartureContainerHeaderCell *)self contentView];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v27[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v19 activateConstraints:v18];
}

- (MKTransitDepartureContainerHeaderCell)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKTransitDepartureContainerHeaderCell;
  v3 = [(MKCustomSeparatorCell *)&v6 initWithStyle:0 reuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(MKTransitDepartureContainerHeaderCell *)v3 _commonInit];
  }

  return v4;
}

@end