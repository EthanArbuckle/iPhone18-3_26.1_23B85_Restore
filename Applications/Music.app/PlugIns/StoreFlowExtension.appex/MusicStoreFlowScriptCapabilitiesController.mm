@interface MusicStoreFlowScriptCapabilitiesController
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (id)hasUserRequestedSubscriptionHidden;
- (id)isCloudLibraryEnabled;
- (id)scriptAttributeKeys;
- (void)disableCloudLibraryWithCompletionFunction:(id)a3;
- (void)enableCloudLibraryWithMergingFromCloudAllowed:(id)a3 completionFunction:(id)a4;
- (void)setCloudLibraryEnabled:(id)a3;
- (void)setHasUserRequestedSubscriptionHidden:(id)a3;
@end

@implementation MusicStoreFlowScriptCapabilitiesController

- (id)hasUserRequestedSubscriptionHidden
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobileipod"];
  [v2 synchronize];
  v3 = [v2 BOOLForKey:@"UserRequestedSubscriptionHidden"];

  v4 = &kCFBooleanTrue;
  if (!v3)
  {
    v4 = &kCFBooleanFalse;
  }

  return *v4;
}

- (id)isCloudLibraryEnabled
{
  v2 = [+[MPCloudController sharedCloudController](MPCloudController "sharedCloudController")];
  v3 = &kCFBooleanTrue;
  if (!v2)
  {
    v3 = &kCFBooleanFalse;
  }

  return *v3;
}

- (void)setCloudLibraryEnabled:(id)a3
{
  v3 = [NSString stringWithFormat:@"%@ is readonly", @"isCloudLibraryEnabled"];

  [WebScriptObject throwException:v3];
}

- (void)setHasUserRequestedSubscriptionHidden:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobileipod"];
  if (v3 != [v4 BOOLForKey:@"UserRequestedSubscriptionHidden"])
  {
    [v4 setBool:v3 forKey:@"UserRequestedSubscriptionHidden"];
    [v4 synchronize];
  }
}

- (void)enableCloudLibraryWithMergingFromCloudAllowed:(id)a3 completionFunction:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = 0;
    if (a4 && (isKindOfClass & 1) == 0)
    {
      v7 = [[SUScriptFunction alloc] initWithScriptObject:a4];
    }
  }

  [v7 setThisObject:self];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_100001350;
  v14 = &unk_10000C370;
  v15 = v7;
  v9 = +[MPCloudController sharedCloudController];
  if (v9)
  {
    v10 = v9;
    v17[0] = &__kCFBooleanTrue;
    v16[0] = MPCloudControllerEnableCloudLibraryOptionStartInitialImport;
    v16[1] = MPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrary;
    v17[1] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 BOOLValue]);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000013F4;
    v11[3] = &unk_10000C398;
    v11[4] = v12;
    [v10 enableCloudLibraryWithOptions:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary completionHandler:{"dictionaryWithObjects:forKeys:count:", v17, v16, 2), v11}];
  }

  else
  {
    v13(v12, 0);
  }
}

- (void)disableCloudLibraryWithCompletionFunction:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = 0;
    if (a3 && (isKindOfClass & 1) == 0)
    {
      v5 = [[SUScriptFunction alloc] initWithScriptObject:a3];
    }
  }

  [v5 setThisObject:self];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_1000015CC;
  v11 = &unk_10000C370;
  v12 = v5;
  v7 = +[MPCloudController sharedCloudController];
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001670;
    v8[3] = &unk_10000C398;
    v8[4] = v9;
    [v7 disableCloudLibraryWithCompletionHandler:v8];
  }

  else
  {
    v10(v9, 0);
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [qword_100011738 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MusicStoreFlowScriptCapabilitiesController;
    return objc_msgSendSuper2(&v6, "webScriptNameForKeyName:", a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2();
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MusicStoreFlowScriptCapabilitiesController;
    return objc_msgSendSuper2(&v6, "webScriptNameForSelector:", a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = MusicStoreFlowScriptCapabilitiesController;
  v2 = [(MusicStoreFlowScriptCapabilitiesController *)&v4 scriptAttributeKeys];
  [v2 addObjectsFromArray:{objc_msgSend(qword_100011738, "allKeys")}];
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100011740 = "enableCloudLibraryWithMergingFromCloudAllowed:completionFunction:";
    *algn_100011748 = @"enableCloudLibrary";
    qword_100011750 = "disableCloudLibraryWithCompletionFunction:";
    unk_100011758 = @"disableCloudLibrary";
    qword_100011738 = &off_10000CA78;
  }
}

@end