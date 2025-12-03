@interface SSiMessageAppHelper
+ (BOOL)balloonHostAppIsMessages;
+ (id)entitlementValueForBalloonHost:(id)host expectedClass:(Class)class;
+ (id)extendedIdentifierFromIdentifier:(id)identifier;
@end

@implementation SSiMessageAppHelper

+ (id)extendedIdentifierFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = [v4 pluginKitProxyForIdentifier:identifierCopy];
  teamID = [v6 teamID];
  v8 = teamID;
  if (teamID)
  {
    v9 = teamID;
  }

  else
  {
    containingBundle = [v6 containingBundle];
    teamID2 = [containingBundle teamID];
    v12 = teamID2;
    v13 = @"0000000000";
    if (teamID2)
    {
      v13 = teamID2;
    }

    v9 = v13;
  }

  identifierCopy = [IMBalloonPluginIdentifierMessageExtension stringByAppendingFormat:@":%@:%@", v9, identifierCopy];

  return identifierCopy;
}

+ (id)entitlementValueForBalloonHost:(id)host expectedClass:(Class)class
{
  hostCopy = host;
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