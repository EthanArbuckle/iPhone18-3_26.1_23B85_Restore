@interface AMUIDateTimeViewController
- (AMUIDateTimeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BSUIVibrancyConfiguration)vibrancyConfiguration;
- (void)_startUpdateTimer;
- (void)_stopUpdateTimer;
- (void)_updateViewWithDate:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)setDateProvider:(id)a3;
- (void)setVibrancyConfiguration:(id)a3;
@end

@implementation AMUIDateTimeViewController

- (AMUIDateTimeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AMUIDateTimeViewController;
  v4 = [(AMUIDateTimeViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(AMUIDateTimeViewController *)v4 setDateProvider:0];
  }

  return v5;
}

- (void)dealloc
{
  [(AMUIDateTimeViewController *)self _stopUpdateTimer];
  v3.receiver = self;
  v3.super_class = AMUIDateTimeViewController;
  [(AMUIDateTimeViewController *)&v3 dealloc];
}

- (void)loadView
{
  v44[8] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CF0D98]);
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], v4, v5, v6}];
  v8 = [[AMUIDateTimeView alloc] initWithFrame:v3, v4, v5, v6];
  v9 = [(AMUIDateTimeView *)v8 layer];
  [v9 setAllowsGroupOpacity:1];

  v10 = [v7 contentView];
  [v10 addSubview:v8];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AMUIDateTimeView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = MEMORY[0x277CCAAD0];
  v42 = [v10 leadingAnchor];
  v41 = [(AMUIDateTimeView *)v8 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v44[0] = v40;
  v39 = [v10 trailingAnchor];
  v38 = [(AMUIDateTimeView *)v8 trailingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v44[1] = v37;
  v36 = [v10 topAnchor];
  v35 = [(AMUIDateTimeView *)v8 topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v44[2] = v34;
  v33 = [v10 bottomAnchor];
  v31 = [(AMUIDateTimeView *)v8 bottomAnchor];
  v30 = [v33 constraintEqualToAnchor:v31];
  v44[3] = v30;
  v28 = [v7 leadingAnchor];
  v27 = [v10 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v44[4] = v26;
  v25 = [v7 trailingAnchor];
  v24 = [v10 trailingAnchor];
  v11 = [v25 constraintEqualToAnchor:v24];
  v44[5] = v11;
  v29 = v7;
  v12 = [v7 topAnchor];
  v13 = [v10 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v44[6] = v14;
  v15 = [v7 bottomAnchor];
  v16 = [v10 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v44[7] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:8];
  [v32 activateConstraints:v18];

  vibrancyView = self->_vibrancyView;
  self->_vibrancyView = v29;
  v20 = v29;

  dateTimeView = self->_dateTimeView;
  self->_dateTimeView = v8;
  v22 = v8;

  [(AMUIDateTimeViewController *)self setView:self->_vibrancyView];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)setDateProvider:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(AMUIDefaultDateProvider);
  }

  if (self->_dateProvider != v4)
  {
    obj = v4;
    [(AMUIDateTimeViewController *)self _stopUpdateTimer];
    objc_storeStrong(&self->_dateProvider, obj);
    v5 = [(AMUIDateProviding *)self->_dateProvider date];
    [(AMUIDateTimeViewController *)self _updateViewWithDate:v5];

    v4 = obj;
    if (!self->_disablesUpdates)
    {
      [(AMUIDateTimeViewController *)self _startUpdateTimer];
      v4 = obj;
    }
  }
}

- (BSUIVibrancyConfiguration)vibrancyConfiguration
{
  [(AMUIDateTimeViewController *)self loadViewIfNeeded];
  vibrancyView = self->_vibrancyView;

  return [(BSUIVibrancyEffectView *)vibrancyView configuration];
}

- (void)setVibrancyConfiguration:(id)a3
{
  v4 = a3;
  [(AMUIDateTimeViewController *)self loadViewIfNeeded];
  [(BSUIVibrancyEffectView *)self->_vibrancyView setConfiguration:v4];
  dateTimeView = self->_dateTimeView;
  v6 = [v4 color];

  [(AMUIDateTimeView *)dateTimeView setTextColor:v6];
}

- (void)_updateViewWithDate:(id)a3
{
  v5 = a3;
  if (self->_disablesUpdates)
  {
    [(AMUIDateTimeViewController *)self _stopUpdateTimer];
  }

  else
  {
    v4 = [(AMUIDateTimeViewController *)self _dateTimeViewIfExists];
    [v4 setDate:v5];

    [(AMUIDateTimeViewController *)self _startUpdateTimer];
  }
}

- (void)_startUpdateTimer
{
  if (!self->_dateProviderToken)
  {
    objc_initWeak(&location, self);
    dateProvider = self->_dateProvider;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__AMUIDateTimeViewController__startUpdateTimer__block_invoke;
    v6[3] = &unk_278C76158;
    objc_copyWeak(&v7, &location);
    v4 = [(AMUIDateProviding *)dateProvider observeMinuteUpdatesWithHandler:v6];
    dateProviderToken = self->_dateProviderToken;
    self->_dateProviderToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __47__AMUIDateTimeViewController__startUpdateTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateViewWithDate:v3];
}

- (void)_stopUpdateTimer
{
  if (self->_dateProviderToken)
  {
    [(AMUIDateProviding *)self->_dateProvider removeMinuteUpdateHandler:?];
    dateProviderToken = self->_dateProviderToken;
    self->_dateProviderToken = 0;
  }
}

@end