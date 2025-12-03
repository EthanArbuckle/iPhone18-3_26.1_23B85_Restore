@interface VOTConfiguration
+ (void)initialize;
- (id)preferenceForKey:(id)key;
- (void)setPreference:(id)preference forKey:(id)key;
- (void)setPreferenceSync:(id)sync forKey:(id)key;
@end

@implementation VOTConfiguration

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    CFPreferencesAppSynchronize(kAXSAccessibilityPreferenceDomain);
    v2 = [objc_allocWithZone(VOTConfiguration) init];
    v3 = qword_1001FE9F0;
    qword_1001FE9F0 = v2;

    qword_1001FE9F8 = dispatch_queue_create("vot-preference-storage-queue", 0);

    _objc_release_x1();
  }
}

- (id)preferenceForKey:(id)key
{
  if (key)
  {
    v4 = CFPreferencesCopyAppValue(key, kAXSAccessibilityPreferenceDomain);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPreference:(id)preference forKey:(id)key
{
  preferenceCopy = preference;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [preferenceCopy copyWithZone:0];

    v8 = qword_1001FE9F8;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010AF0;
    v9[3] = &unk_1001C7778;
    v10 = keyCopy;
    preferenceCopy = v7;
    v11 = preferenceCopy;
    dispatch_async(v8, v9);
  }
}

- (void)setPreferenceSync:(id)sync forKey:(id)key
{
  syncCopy = sync;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [syncCopy copyWithZone:0];

    v8 = qword_1001FE9F8;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010C14;
    v9[3] = &unk_1001C7778;
    v10 = keyCopy;
    syncCopy = v7;
    v11 = syncCopy;
    dispatch_sync(v8, v9);
  }
}

@end