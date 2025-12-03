@interface ACUISActivityAlertOptions
- (ACUISActivityAlertOptions)initWithAlertConfiguration:(id)configuration presentationOptions:(id)options;
@end

@implementation ACUISActivityAlertOptions

- (ACUISActivityAlertOptions)initWithAlertConfiguration:(id)configuration presentationOptions:(id)options
{
  configurationCopy = configuration;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = ACUISActivityAlertOptions;
  v9 = [(ACUISActivityAlertOptions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alertConfiguration, configuration);
    objc_storeStrong(&v10->_presentationOptions, options);
  }

  return v10;
}

@end