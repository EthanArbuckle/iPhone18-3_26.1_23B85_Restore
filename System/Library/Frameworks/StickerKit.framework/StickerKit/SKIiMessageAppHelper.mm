@interface SKIiMessageAppHelper
+ (BOOL)balloonHostAppIsMessages;
+ (id)entitlementValueForBalloonHost:(id)host expectedClass:(Class)class;
+ (id)extendedIdentifierFromIdentifier:(id)identifier;
@end

@implementation SKIiMessageAppHelper

+ (id)extendedIdentifierFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getLSPlugInKitProxyClass_softClass;
  v20 = getLSPlugInKitProxyClass_softClass;
  if (!getLSPlugInKitProxyClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getLSPlugInKitProxyClass_block_invoke;
    v16[3] = &unk_1E751A2E8;
    v16[4] = &v17;
    __getLSPlugInKitProxyClass_block_invoke(v16);
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

  identifierCopy = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":%@:%@", v9, identifierCopy];

  return identifierCopy;
}

+ (id)entitlementValueForBalloonHost:(id)host expectedClass:(Class)class
{
  hostCopy = host;
  activeExtensionContext = [MEMORY[0x1E6973F48] activeExtensionContext];
  if (objc_opt_respondsToSelector())
  {
    v6 = activeExtensionContext;
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
  v2 = [SKIiMessageAppHelper entitlementValueForBalloonHost:@"com.apple.messages.sticker-sharing-level" expectedClass:objc_opt_class()];
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