@interface HSPCSelectSiriRecognitionLanguageViewController
- (HSPCSelectSiriRecognitionLanguageViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)selectedSiriRecognitionLanguage;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
@end

@implementation HSPCSelectSiriRecognitionLanguageViewController

- (id)hu_preloadContent
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018984;
  v4[3] = &unk_1000C6030;
  v4[4] = self;
  v2 = [NAFuture futureWithBlock:v4];

  return v2;
}

- (id)selectedSiriRecognitionLanguage
{
  contentView = [(HSPCSelectSiriRecognitionLanguageViewController *)self contentView];
  pickerView = [contentView pickerView];
  v5 = [pickerView selectedRowInComponent:0];

  recognitionLanguages = [(HSPCSelectSiriRecognitionLanguageViewController *)self recognitionLanguages];
  v7 = 0;
  if (v5 < [recognitionLanguages count])
  {
    recognitionLanguages2 = [(HSPCSelectSiriRecognitionLanguageViewController *)self recognitionLanguages];
    v7 = [recognitionLanguages2 objectAtIndexedSubscript:v5];
  }

  localizedLanguageToLanguageCodeMap = [(HSPCSelectSiriRecognitionLanguageViewController *)self localizedLanguageToLanguageCodeMap];
  v10 = [localizedLanguageToLanguageCodeMap objectForKeyedSubscript:v7];

  return v10;
}

- (HSPCSelectSiriRecognitionLanguageViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v14.receiver = self;
  v14.super_class = HSPCSelectSiriRecognitionLanguageViewController;
  v9 = [(HSPCSelectSiriRecognitionLanguageViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    v11 = HULocalizedString();
    [(HSPCSelectSiriRecognitionLanguageViewController *)v10 setTitle:v11];

    v12 = [(HSPCSelectSiriRecognitionLanguageViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (id)commitConfiguration
{
  selectedSiriRecognitionLanguage = [(HSPCSelectSiriRecognitionLanguageViewController *)self selectedSiriRecognitionLanguage];
  config = [(HSPCSelectSiriRecognitionLanguageViewController *)self config];
  [config setRecognitionLanguage:selectedSiriRecognitionLanguage];

  return [NAFuture futureWithResult:&off_1000CD450];
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(HSPCSelectSiriRecognitionLanguageViewController *)self recognitionLanguages:view];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v6 = [(HSPCSelectSiriRecognitionLanguageViewController *)self recognitionLanguages:view];
  v7 = [v6 objectAtIndexedSubscript:row];

  return v7;
}

@end