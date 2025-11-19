@interface SSiMessageAppHelper
+ (BOOL)balloonHostAppIsMessages;
+ (id)entitlementValueForBalloonHost:(id)a3 expectedClass:(Class)a4;
+ (id)extendedIdentifierFromIdentifier:(id)a3;
@end

@implementation SSiMessageAppHelper

+ (id)extendedIdentifierFromIdentifier:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = qword_1000B4B08;
  v20 = qword_1000B4B08;
  if (!qword_1000B4B08)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100005CCC;
    v16[3] = &unk_1000A27D8;
    v16[4] = &v17;
    sub_100005CCC(v16);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = [v4 pluginKitProxyForIdentifier:v3];
  v7 = [v6 teamID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v6 containingBundle];
    v11 = [v10 teamID];
    v12 = v11;
    v13 = @"0000000000";
    if (v11)
    {
      v13 = v11;
    }

    v9 = v13;
  }

  v14 = [IMBalloonPluginIdentifierMessageExtension stringByAppendingFormat:@":%@:%@", v9, v3];

  return v14;
}

+ (id)entitlementValueForBalloonHost:(id)a3 expectedClass:(Class)a4
{
  v4 = a3;
  v5 = +[_MSMessageAppContext activeExtensionContext];
  if (objc_opt_respondsToSelector())
  {
    v6 = v5;
    v7 = v6;
    if (v6)
    {
      [v6 balloonHostAuditToken];
    }

    v8 = IMDAuditTokenTaskCopyValueForEntitlement();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)balloonHostAppIsMessages
{
  v2 = [SSiMessageAppHelper entitlementValueForBalloonHost:@"com.apple.messages.sticker-sharing-level" expectedClass:objc_opt_class()];
  if (v2)
  {
    v3 = [@"Messages" caseInsensitiveCompare:v2] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end