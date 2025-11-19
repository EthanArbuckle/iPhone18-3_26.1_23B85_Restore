@interface VOTConfiguration
+ (void)initialize;
- (id)preferenceForKey:(id)a3;
- (void)setPreference:(id)a3 forKey:(id)a4;
- (void)setPreferenceSync:(id)a3 forKey:(id)a4;
@end

@implementation VOTConfiguration

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    CFPreferencesAppSynchronize(kAXSAccessibilityPreferenceDomain);
    v2 = [objc_allocWithZone(VOTConfiguration) init];
    v3 = qword_1001FE9F0;
    qword_1001FE9F0 = v2;

    qword_1001FE9F8 = dispatch_queue_create("vot-preference-storage-queue", 0);

    _objc_release_x1();
  }
}

- (id)preferenceForKey:(id)a3
{
  if (a3)
  {
    v4 = CFPreferencesCopyAppValue(a3, kAXSAccessibilityPreferenceDomain);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPreference:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v5 copyWithZone:0];

    v8 = qword_1001FE9F8;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010AF0;
    v9[3] = &unk_1001C7778;
    v10 = v6;
    v5 = v7;
    v11 = v5;
    dispatch_async(v8, v9);
  }
}

- (void)setPreferenceSync:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v5 copyWithZone:0];

    v8 = qword_1001FE9F8;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010C14;
    v9[3] = &unk_1001C7778;
    v10 = v6;
    v5 = v7;
    v11 = v5;
    dispatch_sync(v8, v9);
  }
}

@end