@interface HSPCSelectSiriRecognitionLanguageViewController
- (HSPCSelectSiriRecognitionLanguageViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)selectedSiriRecognitionLanguage;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
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
  v3 = [(HSPCSelectSiriRecognitionLanguageViewController *)self contentView];
  v4 = [v3 pickerView];
  v5 = [v4 selectedRowInComponent:0];

  v6 = [(HSPCSelectSiriRecognitionLanguageViewController *)self recognitionLanguages];
  v7 = 0;
  if (v5 < [v6 count])
  {
    v8 = [(HSPCSelectSiriRecognitionLanguageViewController *)self recognitionLanguages];
    v7 = [v8 objectAtIndexedSubscript:v5];
  }

  v9 = [(HSPCSelectSiriRecognitionLanguageViewController *)self localizedLanguageToLanguageCodeMap];
  v10 = [v9 objectForKeyedSubscript:v7];

  return v10;
}

- (HSPCSelectSiriRecognitionLanguageViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HSPCSelectSiriRecognitionLanguageViewController;
  v9 = [(HSPCSelectSiriRecognitionLanguageViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
    v11 = HULocalizedString();
    [(HSPCSelectSiriRecognitionLanguageViewController *)v10 setTitle:v11];

    v12 = [(HSPCSelectSiriRecognitionLanguageViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (id)commitConfiguration
{
  v3 = [(HSPCSelectSiriRecognitionLanguageViewController *)self selectedSiriRecognitionLanguage];
  v4 = [(HSPCSelectSiriRecognitionLanguageViewController *)self config];
  [v4 setRecognitionLanguage:v3];

  return [NAFuture futureWithResult:&off_1000CD450];
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = [(HSPCSelectSiriRecognitionLanguageViewController *)self recognitionLanguages:a3];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v6 = [(HSPCSelectSiriRecognitionLanguageViewController *)self recognitionLanguages:a3];
  v7 = [v6 objectAtIndexedSubscript:a4];

  return v7;
}

@end