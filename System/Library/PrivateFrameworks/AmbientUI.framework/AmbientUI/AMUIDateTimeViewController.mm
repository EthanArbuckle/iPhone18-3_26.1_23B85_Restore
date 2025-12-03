@interface AMUIDateTimeViewController
- (AMUIDateTimeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BSUIVibrancyConfiguration)vibrancyConfiguration;
- (void)_startUpdateTimer;
- (void)_stopUpdateTimer;
- (void)_updateViewWithDate:(id)date;
- (void)dealloc;
- (void)loadView;
- (void)setDateProvider:(id)provider;
- (void)setVibrancyConfiguration:(id)configuration;
@end

@implementation AMUIDateTimeViewController

- (AMUIDateTimeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AMUIDateTimeViewController;
  v4 = [(AMUIDateTimeViewController *)&v7 initWithNibName:name bundle:bundle];
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
  layer = [(AMUIDateTimeView *)v8 layer];
  [layer setAllowsGroupOpacity:1];

  contentView = [v7 contentView];
  [contentView addSubview:v8];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AMUIDateTimeView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = MEMORY[0x277CCAAD0];
  leadingAnchor = [contentView leadingAnchor];
  leadingAnchor2 = [(AMUIDateTimeView *)v8 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[0] = v40;
  trailingAnchor = [contentView trailingAnchor];
  trailingAnchor2 = [(AMUIDateTimeView *)v8 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[1] = v37;
  topAnchor = [contentView topAnchor];
  topAnchor2 = [(AMUIDateTimeView *)v8 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[2] = v34;
  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [(AMUIDateTimeView *)v8 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v30;
  leadingAnchor3 = [v7 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v44[4] = v26;
  trailingAnchor3 = [v7 trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v11 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v44[5] = v11;
  v29 = v7;
  topAnchor3 = [v7 topAnchor];
  topAnchor4 = [contentView topAnchor];
  v14 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v44[6] = v14;
  bottomAnchor3 = [v7 bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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

- (void)setDateProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    providerCopy = objc_alloc_init(AMUIDefaultDateProvider);
  }

  if (self->_dateProvider != providerCopy)
  {
    obj = providerCopy;
    [(AMUIDateTimeViewController *)self _stopUpdateTimer];
    objc_storeStrong(&self->_dateProvider, obj);
    date = [(AMUIDateProviding *)self->_dateProvider date];
    [(AMUIDateTimeViewController *)self _updateViewWithDate:date];

    providerCopy = obj;
    if (!self->_disablesUpdates)
    {
      [(AMUIDateTimeViewController *)self _startUpdateTimer];
      providerCopy = obj;
    }
  }
}

- (BSUIVibrancyConfiguration)vibrancyConfiguration
{
  [(AMUIDateTimeViewController *)self loadViewIfNeeded];
  vibrancyView = self->_vibrancyView;

  return [(BSUIVibrancyEffectView *)vibrancyView configuration];
}

- (void)setVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(AMUIDateTimeViewController *)self loadViewIfNeeded];
  [(BSUIVibrancyEffectView *)self->_vibrancyView setConfiguration:configurationCopy];
  dateTimeView = self->_dateTimeView;
  color = [configurationCopy color];

  [(AMUIDateTimeView *)dateTimeView setTextColor:color];
}

- (void)_updateViewWithDate:(id)date
{
  dateCopy = date;
  if (self->_disablesUpdates)
  {
    [(AMUIDateTimeViewController *)self _stopUpdateTimer];
  }

  else
  {
    _dateTimeViewIfExists = [(AMUIDateTimeViewController *)self _dateTimeViewIfExists];
    [_dateTimeViewIfExists setDate:dateCopy];

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