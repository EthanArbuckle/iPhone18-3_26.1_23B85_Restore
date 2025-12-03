@interface CRLManagedAccountUtilities
+ (BOOL)loggedInUserHasManagedAppleID;
+ (BOOL)loggedInUserHasManagedAppleIDWithError:(id *)error;
+ (BOOL)loggedInUserHasPolicyRestriction;
@end

@implementation CRLManagedAccountUtilities

+ (BOOL)loggedInUserHasManagedAppleID
{
  v12 = 0;
  v2 = [CRLManagedAccountUtilities loggedInUserHasManagedAppleIDWithError:&v12];
  v3 = v12;
  if (v3)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013584BC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013584E4(v5, v3, v4);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101358604();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v6, v4);
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLManagedAccountUtilities loggedInUserHasManagedAppleID]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLManagedAccountUtilities.m"];
    code = [v3 code];
    domain = [v3 domain];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:26 isFatal:0 description:"Could not determine if iCloud account is Managed Apple ID, error: %zd %{public}@ %@", code, domain, v3];
  }

  return v2;
}

+ (BOOL)loggedInUserHasPolicyRestriction
{
  v2 = +[AADataclassManager sharedManager];
  v3 = [v2 policyRestrictsDataclass:ACAccountDataclassFreeform];

  return v3;
}

+ (BOOL)loggedInUserHasManagedAppleIDWithError:(id *)error
{
  HasManagedAppleID = BRLoggedInUserHasManagedAppleID();
  if (error && HasManagedAppleID)
  {
    v5 = 0;
    *error = 0;
  }

  else
  {
    if (!error)
    {
      return 0;
    }

    v5 = *error;
  }

  if ([v5 code] == 2)
  {
    domain = [*error domain];
    v7 = [domain isEqualToString:BRCloudDocsErrorDomain];

    if (v7)
    {
      *error = 0;
    }
  }

  return 0;
}

@end