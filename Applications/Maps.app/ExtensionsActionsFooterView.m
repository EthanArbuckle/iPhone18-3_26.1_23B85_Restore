@interface ExtensionsActionsFooterView
- (ExtensionsActionsFooterView)initWithCoder:(id)a3;
- (ExtensionsActionsFooterView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)setActions:(id)a3;
@end

@implementation ExtensionsActionsFooterView

- (void)setActions:(id)a3
{
  v4 = sub_100021DB0(a3, &stru_1016262A8);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(UIStackView *)self->_stackView arrangedSubviews];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v21 + 1) + 8 * i) != self->_openAppView)
        {
          [(UIStackView *)self->_stackView removeArrangedSubview:?];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [(UIStackView *)self->_stackView insertArrangedSubview:*(*(&v17 + 1) + 8 * j) atIndex:v13++, v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v16 = [(ExtensionsActionView *)self->_openAppView superview];

  if (!v16)
  {
    [(UIStackView *)self->_stackView addArrangedSubview:self->_openAppView];
  }
}

- (void)_commonInit
{
  v3 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v3;

  [(UIStackView *)self->_stackView setAxis:1];
  [(ExtensionsActionsFooterView *)self addSubview:self->_stackView];
  v5 = objc_alloc_init(ExtensionsActionView);
  openAppView = self->_openAppView;
  self->_openAppView = v5;

  [(ExtensionsActionView *)self->_openAppView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(UIStackView *)self->_stackView _maps_constraintsForCenteringInView:self];
  [NSLayoutConstraint activateConstraints:v7];

  [(ExtensionsActionsFooterView *)self setActions:&__NSArray0__struct];
}

- (ExtensionsActionsFooterView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ExtensionsActionsFooterView;
  v3 = [(ExtensionsActionsFooterView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsActionsFooterView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsActionsFooterView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ExtensionsActionsFooterView;
  v3 = [(ExtensionsActionsFooterView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsActionsFooterView *)v3 _commonInit];
  }

  return v4;
}

@end