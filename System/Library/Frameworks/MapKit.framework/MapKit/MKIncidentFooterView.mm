@interface MKIncidentFooterView
- (MKIncidentFooterView)initWithCoder:(id)coder;
- (MKIncidentFooterView)initWithReuseIdentifier:(id)identifier;
- (void)_commonInit;
@end

@implementation MKIncidentFooterView

- (void)_commonInit
{
  v3 = [MKViewWithHairline alloc];
  contentView = [(MKIncidentFooterView *)self contentView];
  [contentView bounds];
  v5 = [(MKViewWithHairline *)v3 initWithFrame:0.0, 0.0];
  hairlineView = self->_hairlineView;
  self->_hairlineView = v5;

  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0500000007];
  [(MKViewWithHairline *)self->_hairlineView setBackgroundColor:v7];

  [(MKViewWithHairline *)self->_hairlineView setAutoresizingMask:2];
  contentView2 = [(MKIncidentFooterView *)self contentView];
  [contentView2 addSubview:self->_hairlineView];
}

- (MKIncidentFooterView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MKIncidentFooterView;
  v3 = [(MKIncidentFooterView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(MKIncidentFooterView *)v3 _commonInit];
  }

  return v4;
}

- (MKIncidentFooterView)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = MKIncidentFooterView;
  v3 = [(MKIncidentFooterView *)&v6 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(MKIncidentFooterView *)v3 _commonInit];
  }

  return v4;
}

@end