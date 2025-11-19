@interface VMAccountsView
- (VMAccountsView)initWithFrame:(CGRect)a3;
- (VMAccountsViewDataSource)dataSource;
- (VMAccountsViewDelegate)delegate;
- (double)messageLabelFirstBaselineAnchorLayoutConstraintConstant;
- (double)messageLabelLastBaselineAnchorLayoutConstraintConstant;
- (id)buttonAtIndex:(unint64_t)a3;
- (void)commonInit;
- (void)handleActionForButtonSender:(id)a3 event:(id)a4;
- (void)loadConstraints;
- (void)reloadData;
- (void)setDataSource:(id)a3;
@end

@implementation VMAccountsView

- (VMAccountsView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VMAccountsView;
  v3 = [(VMAccountsView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VMAccountsView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  buttons = self->_buttons;
  self->_buttons = v3;

  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  messageLabel = self->_messageLabel;
  self->_messageLabel = v5;

  v7 = [MEMORY[0x277D74300] telephonyUISubheadlineShortFont];
  [(UILabel *)self->_messageLabel setFont:v7];

  [(UILabel *)self->_messageLabel setLineBreakMode:0];
  [(UILabel *)self->_messageLabel setNumberOfLines:0];
  [(UILabel *)self->_messageLabel setTextAlignment:1];
  v8 = [MEMORY[0x277D75348] dynamicSecondaryLabelColor];
  [(UILabel *)self->_messageLabel setTextColor:v8];

  [(UILabel *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMAccountsView *)self addSubview:self->_messageLabel];
  v9 = objc_alloc(MEMORY[0x277D75A68]);
  v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = v10;

  [(UIStackView *)self->_buttonStackView setAlignment:3];
  [(UIStackView *)self->_buttonStackView setAxis:1];
  [(UIStackView *)self->_buttonStackView setDistribution:4];
  [(UIStackView *)self->_buttonStackView setSpacing:9.0];
  [(UIStackView *)self->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMAccountsView *)self addSubview:self->_buttonStackView];

  [(VMAccountsView *)self loadConstraints];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(VMAccountsView *)self reloadData];
    v5 = obj;
  }
}

- (void)handleActionForButtonSender:(id)a3 event:(id)a4
{
  v11 = a3;
  v5 = [(VMAccountsView *)self buttons];
  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndexedSubscript:v6];

      if (v7 == v11)
      {
        break;
      }

      if (++v6 >= [v5 count])
      {
        goto LABEL_8;
      }
    }

    v8 = [(VMAccountsView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(VMAccountsView *)self delegate];
      [v10 accountsView:self buttonTappedForRowWithIndex:v6];
    }
  }

LABEL_8:
}

- (void)loadConstraints
{
  v3 = [(VMAccountsView *)self messageLabel];
  v4 = [v3 centerXAnchor];
  v5 = [(VMAccountsView *)self centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  [v6 setActive:1];
  v7 = [(VMAccountsView *)self messageLabel];
  v8 = [v7 leadingAnchor];
  v9 = [(VMAccountsView *)self safeAreaLayoutGuide];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:70.0];

  [v11 setActive:1];
  v12 = [(VMAccountsView *)self trailingAnchor];
  v13 = [(VMAccountsView *)self messageLabel];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintGreaterThanOrEqualToAnchor:v14 constant:70.0];

  [v15 setActive:1];
  v16 = [(VMAccountsView *)self messageLabel];
  v17 = [v16 firstBaselineAnchor];
  v18 = [(VMAccountsView *)self safeAreaLayoutGuide];
  v19 = [v18 topAnchor];
  [(VMAccountsView *)self messageLabelFirstBaselineAnchorLayoutConstraintConstant];
  v20 = [v17 constraintGreaterThanOrEqualToAnchor:v19 constant:?];

  [v20 setActive:1];
  v21 = [(VMAccountsView *)self buttonStackView];
  v22 = [v21 topAnchor];
  v23 = [(VMAccountsView *)self messageLabel];
  v24 = [v23 lastBaselineAnchor];
  [(VMAccountsView *)self messageLabelLastBaselineAnchorLayoutConstraintConstant];
  v25 = [v22 constraintEqualToAnchor:v24 constant:?];

  [v25 setActive:1];
  v26 = [(VMAccountsView *)self buttonStackView];
  v27 = [v26 centerXAnchor];
  v28 = [(VMAccountsView *)self centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  [v29 setActive:1];
  v30 = [(VMAccountsView *)self buttonStackView];
  v31 = [v30 leadingAnchor];
  v32 = [(VMAccountsView *)self leadingAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32];

  [v33 setActive:1];
  v34 = [(VMAccountsView *)self trailingAnchor];
  v35 = [(VMAccountsView *)self buttonStackView];
  v36 = [v35 trailingAnchor];
  v37 = [v34 constraintGreaterThanOrEqualToAnchor:v36];

  [v37 setActive:1];
  v38 = [(VMAccountsView *)self buttonStackView];
  v39 = [v38 centerYAnchor];
  v40 = [(VMAccountsView *)self centerYAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  LODWORD(v42) = 1132068864;
  [v41 setPriority:v42];
  [v41 setActive:1];
  v43 = [(VMAccountsView *)self bottomAnchor];
  v44 = [(VMAccountsView *)self buttonStackView];
  v45 = [v44 bottomAnchor];
  v46 = [v43 constraintGreaterThanOrEqualToAnchor:v45];

  [v46 setActive:1];
}

- (void)reloadData
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(VMAccountsView *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VMAccountsView *)self dataSource];
    v6 = [v5 titleForAccountsView:self];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(VMAccountsView *)self messageLabel];
  [v7 setText:v6];

  v8 = [(VMAccountsView *)self dataSource];
  v9 = [v8 numberOfRowsForAccountsView:self];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [(VMAccountsView *)self buttonStackView];
  v11 = [v10 arrangedSubviews];

  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        [v16 removeFromSuperview];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [(VMAccountsView *)self buttons];
          [v17 removeObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D77260];

  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v20 = [(VMAccountsView *)self buttonAtIndex:j];
      v21 = [(VMAccountsView *)self dataSource];
      v22 = [v21 accountsView:self buttonForRowAtIndex:j];

      [v22 addTarget:self action:sel_handleActionForButtonSender_event_ forControlEvents:64];
      v23 = [(VMAccountsView *)self buttons];
      [v23 setObject:v22 atIndexedSubscript:j];

      v24 = [(VMAccountsView *)self buttonStackView];
      [v24 addArrangedSubview:v22];

      [v22 preferredIntrinsicContentSizeWidth];
      if (v18 < v25)
      {
        v18 = v25;
      }
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = [(VMAccountsView *)self buttons];
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v32 + 1) + 8 * k) setPreferredIntrinsicContentSizeWidth:v18];
      }

      v28 = [v26 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)buttonAtIndex:(unint64_t)a3
{
  v4 = [(VMAccountsView *)self buttons];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (double)messageLabelFirstBaselineAnchorLayoutConstraintConstant
{
  v2 = [(VMAccountsView *)self messageLabel];
  v3 = [v2 font];
  v4 = [v3 fontDescriptor];
  v5 = [v4 objectForKey:*MEMORY[0x277D74378]];

  if (v5)
  {
    v6 = [MEMORY[0x277D75520] metricsForTextStyle:v5];
    [v6 scaledValueForValue:48.0];
    v8 = ceil(v7);
  }

  else
  {
    v8 = 48.0;
  }

  return v8;
}

- (double)messageLabelLastBaselineAnchorLayoutConstraintConstant
{
  v2 = [(VMAccountsView *)self messageLabel];
  v3 = [v2 font];
  v4 = [v3 fontDescriptor];
  v5 = [v4 objectForKey:*MEMORY[0x277D74378]];

  if (v5)
  {
    v6 = [MEMORY[0x277D75520] metricsForTextStyle:v5];
    [v6 scaledValueForValue:24.0];
    v8 = ceil(v7);
  }

  else
  {
    v8 = 24.0;
  }

  return v8;
}

- (VMAccountsViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (VMAccountsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end