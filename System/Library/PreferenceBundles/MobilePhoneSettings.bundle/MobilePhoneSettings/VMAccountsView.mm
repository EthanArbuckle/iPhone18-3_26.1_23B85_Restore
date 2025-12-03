@interface VMAccountsView
- (VMAccountsView)initWithFrame:(CGRect)frame;
- (VMAccountsViewDataSource)dataSource;
- (VMAccountsViewDelegate)delegate;
- (double)messageLabelFirstBaselineAnchorLayoutConstraintConstant;
- (double)messageLabelLastBaselineAnchorLayoutConstraintConstant;
- (id)buttonAtIndex:(unint64_t)index;
- (void)commonInit;
- (void)handleActionForButtonSender:(id)sender event:(id)event;
- (void)loadConstraints;
- (void)reloadData;
- (void)setDataSource:(id)source;
@end

@implementation VMAccountsView

- (VMAccountsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VMAccountsView;
  v3 = [(VMAccountsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  telephonyUISubheadlineShortFont = [MEMORY[0x277D74300] telephonyUISubheadlineShortFont];
  [(UILabel *)self->_messageLabel setFont:telephonyUISubheadlineShortFont];

  [(UILabel *)self->_messageLabel setLineBreakMode:0];
  [(UILabel *)self->_messageLabel setNumberOfLines:0];
  [(UILabel *)self->_messageLabel setTextAlignment:1];
  dynamicSecondaryLabelColor = [MEMORY[0x277D75348] dynamicSecondaryLabelColor];
  [(UILabel *)self->_messageLabel setTextColor:dynamicSecondaryLabelColor];

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

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(VMAccountsView *)self reloadData];
    v5 = obj;
  }
}

- (void)handleActionForButtonSender:(id)sender event:(id)event
{
  senderCopy = sender;
  buttons = [(VMAccountsView *)self buttons];
  if ([buttons count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [buttons objectAtIndexedSubscript:v6];

      if (v7 == senderCopy)
      {
        break;
      }

      if (++v6 >= [buttons count])
      {
        goto LABEL_8;
      }
    }

    delegate = [(VMAccountsView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(VMAccountsView *)self delegate];
      [delegate2 accountsView:self buttonTappedForRowWithIndex:v6];
    }
  }

LABEL_8:
}

- (void)loadConstraints
{
  messageLabel = [(VMAccountsView *)self messageLabel];
  centerXAnchor = [messageLabel centerXAnchor];
  centerXAnchor2 = [(VMAccountsView *)self centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  [v6 setActive:1];
  messageLabel2 = [(VMAccountsView *)self messageLabel];
  leadingAnchor = [messageLabel2 leadingAnchor];
  safeAreaLayoutGuide = [(VMAccountsView *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v11 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:70.0];

  [v11 setActive:1];
  trailingAnchor = [(VMAccountsView *)self trailingAnchor];
  messageLabel3 = [(VMAccountsView *)self messageLabel];
  trailingAnchor2 = [messageLabel3 trailingAnchor];
  v15 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:70.0];

  [v15 setActive:1];
  messageLabel4 = [(VMAccountsView *)self messageLabel];
  firstBaselineAnchor = [messageLabel4 firstBaselineAnchor];
  safeAreaLayoutGuide2 = [(VMAccountsView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide2 topAnchor];
  [(VMAccountsView *)self messageLabelFirstBaselineAnchorLayoutConstraintConstant];
  v20 = [firstBaselineAnchor constraintGreaterThanOrEqualToAnchor:topAnchor constant:?];

  [v20 setActive:1];
  buttonStackView = [(VMAccountsView *)self buttonStackView];
  topAnchor2 = [buttonStackView topAnchor];
  messageLabel5 = [(VMAccountsView *)self messageLabel];
  lastBaselineAnchor = [messageLabel5 lastBaselineAnchor];
  [(VMAccountsView *)self messageLabelLastBaselineAnchorLayoutConstraintConstant];
  v25 = [topAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];

  [v25 setActive:1];
  buttonStackView2 = [(VMAccountsView *)self buttonStackView];
  centerXAnchor3 = [buttonStackView2 centerXAnchor];
  centerXAnchor4 = [(VMAccountsView *)self centerXAnchor];
  v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  [v29 setActive:1];
  buttonStackView3 = [(VMAccountsView *)self buttonStackView];
  leadingAnchor3 = [buttonStackView3 leadingAnchor];
  leadingAnchor4 = [(VMAccountsView *)self leadingAnchor];
  v33 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];

  [v33 setActive:1];
  trailingAnchor3 = [(VMAccountsView *)self trailingAnchor];
  buttonStackView4 = [(VMAccountsView *)self buttonStackView];
  trailingAnchor4 = [buttonStackView4 trailingAnchor];
  v37 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];

  [v37 setActive:1];
  buttonStackView5 = [(VMAccountsView *)self buttonStackView];
  centerYAnchor = [buttonStackView5 centerYAnchor];
  centerYAnchor2 = [(VMAccountsView *)self centerYAnchor];
  v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  LODWORD(v42) = 1132068864;
  [v41 setPriority:v42];
  [v41 setActive:1];
  bottomAnchor = [(VMAccountsView *)self bottomAnchor];
  buttonStackView6 = [(VMAccountsView *)self buttonStackView];
  bottomAnchor2 = [buttonStackView6 bottomAnchor];
  v46 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];

  [v46 setActive:1];
}

- (void)reloadData
{
  v42 = *MEMORY[0x277D85DE8];
  dataSource = [(VMAccountsView *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    dataSource2 = [(VMAccountsView *)self dataSource];
    v6 = [dataSource2 titleForAccountsView:self];
  }

  else
  {
    v6 = 0;
  }

  messageLabel = [(VMAccountsView *)self messageLabel];
  [messageLabel setText:v6];

  dataSource3 = [(VMAccountsView *)self dataSource];
  v9 = [dataSource3 numberOfRowsForAccountsView:self];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  buttonStackView = [(VMAccountsView *)self buttonStackView];
  arrangedSubviews = [buttonStackView arrangedSubviews];

  v12 = [arrangedSubviews countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        [v16 removeFromSuperview];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          buttons = [(VMAccountsView *)self buttons];
          [buttons removeObject:v16];
        }
      }

      v13 = [arrangedSubviews countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D77260];

  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v20 = [(VMAccountsView *)self buttonAtIndex:j];
      dataSource4 = [(VMAccountsView *)self dataSource];
      v22 = [dataSource4 accountsView:self buttonForRowAtIndex:j];

      [v22 addTarget:self action:sel_handleActionForButtonSender_event_ forControlEvents:64];
      buttons2 = [(VMAccountsView *)self buttons];
      [buttons2 setObject:v22 atIndexedSubscript:j];

      buttonStackView2 = [(VMAccountsView *)self buttonStackView];
      [buttonStackView2 addArrangedSubview:v22];

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
  buttons3 = [(VMAccountsView *)self buttons];
  v27 = [buttons3 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
          objc_enumerationMutation(buttons3);
        }

        [*(*(&v32 + 1) + 8 * k) setPreferredIntrinsicContentSizeWidth:v18];
      }

      v28 = [buttons3 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)buttonAtIndex:(unint64_t)index
{
  buttons = [(VMAccountsView *)self buttons];
  if ([buttons count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [buttons objectAtIndexedSubscript:index];
  }

  return v5;
}

- (double)messageLabelFirstBaselineAnchorLayoutConstraintConstant
{
  messageLabel = [(VMAccountsView *)self messageLabel];
  font = [messageLabel font];
  fontDescriptor = [font fontDescriptor];
  v5 = [fontDescriptor objectForKey:*MEMORY[0x277D74378]];

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
  messageLabel = [(VMAccountsView *)self messageLabel];
  font = [messageLabel font];
  fontDescriptor = [font fontDescriptor];
  v5 = [fontDescriptor objectForKey:*MEMORY[0x277D74378]];

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