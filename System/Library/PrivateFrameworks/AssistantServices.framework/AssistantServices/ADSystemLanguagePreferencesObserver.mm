@interface ADSystemLanguagePreferencesObserver
+ (id)sharedObserver;
- (ADSystemLanguagePreferencesObserver)init;
@end

@implementation ADSystemLanguagePreferencesObserver

- (ADSystemLanguagePreferencesObserver)init
{
  v9.receiver = self;
  v9.super_class = ADSystemLanguagePreferencesObserver;
  v2 = [(ADSystemLanguagePreferencesObserver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADSystemLanguagePreferencesObserver", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [[AFNotifyObserver alloc] initWithName:@"AppleLanguagePreferencesChangedNotification" options:0 queue:v2->_queue delegate:v2];
    notifyObserver = v2->_notifyObserver;
    v2->_notifyObserver = v6;
  }

  return v2;
}

+ (id)sharedObserver
{
  if (qword_1005905A0 != -1)
  {
    dispatch_once(&qword_1005905A0, &stru_100516D18);
  }

  v3 = qword_1005905A8;

  return v3;
}

@end