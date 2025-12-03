@interface ADSAEAssetsAvailabilityObserver
- (ADSAEAssetsAvailabilityObserver)init;
- (ADSAEAssetsAvailabilityObserver)initWithGMAvailabilityWrapperClass:(Class)class;
- (void)refreshAssetsAvailabilityWithAssetManager:(id)manager;
@end

@implementation ADSAEAssetsAvailabilityObserver

- (void)refreshAssetsAvailabilityWithAssetManager:(id)manager
{
  managerCopy = manager;
  v5 = +[ADPreferences sharedPreferences];
  languageCode = [v5 languageCode];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A3288;
  v8[3] = &unk_10051DB90;
  v9 = languageCode;
  selfCopy = self;
  v7 = languageCode;
  [managerCopy fetchAssetsAvailabilityForLanguage:v7 completion:v8];
}

- (ADSAEAssetsAvailabilityObserver)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_100590460;
  v10 = qword_100590460;
  if (!qword_100590460)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001A3620;
    v6[3] = &unk_10051E1C8;
    v6[4] = &v7;
    sub_1001A3620(v6);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);
  return [(ADSAEAssetsAvailabilityObserver *)self initWithGMAvailabilityWrapperClass:v3];
}

- (ADSAEAssetsAvailabilityObserver)initWithGMAvailabilityWrapperClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = ADSAEAssetsAvailabilityObserver;
  result = [(ADSAEAssetsAvailabilityObserver *)&v5 init];
  if (result)
  {
    result->_gmAvailabilityWrapperClass = class;
  }

  return result;
}

@end