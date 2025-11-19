@interface MKIncidentFooterView
- (MKIncidentFooterView)initWithCoder:(id)a3;
- (MKIncidentFooterView)initWithReuseIdentifier:(id)a3;
- (void)_commonInit;
@end

@implementation MKIncidentFooterView

- (void)_commonInit
{
  v3 = [MKViewWithHairline alloc];
  v4 = [(MKIncidentFooterView *)self contentView];
  [v4 bounds];
  v5 = [(MKViewWithHairline *)v3 initWithFrame:0.0, 0.0];
  hairlineView = self->_hairlineView;
  self->_hairlineView = v5;

  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0500000007];
  [(MKViewWithHairline *)self->_hairlineView setBackgroundColor:v7];

  [(MKViewWithHairline *)self->_hairlineView setAutoresizingMask:2];
  v8 = [(MKIncidentFooterView *)self contentView];
  [v8 addSubview:self->_hairlineView];
}

- (MKIncidentFooterView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKIncidentFooterView;
  v3 = [(MKIncidentFooterView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MKIncidentFooterView *)v3 _commonInit];
  }

  return v4;
}

- (MKIncidentFooterView)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKIncidentFooterView;
  v3 = [(MKIncidentFooterView *)&v6 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(MKIncidentFooterView *)v3 _commonInit];
  }

  return v4;
}

@end