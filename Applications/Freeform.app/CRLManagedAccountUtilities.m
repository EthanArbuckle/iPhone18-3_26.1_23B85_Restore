@interface CRLManagedAccountUtilities
+ (BOOL)loggedInUserHasManagedAppleID;
+ (BOOL)loggedInUserHasManagedAppleIDWithError:(id *)a3;
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
    v9 = [v3 code];
    v10 = [v3 domain];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:26 isFatal:0 description:"Could not determine if iCloud account is Managed Apple ID, error: %zd %{public}@ %@", v9, v10, v3];
  }

  return v2;
}

+ (BOOL)loggedInUserHasPolicyRestriction
{
  v2 = +[AADataclassManager sharedManager];
  v3 = [v2 policyRestrictsDataclass:ACAccountDataclassFreeform];

  return v3;
}

+ (BOOL)loggedInUserHasManagedAppleIDWithError:(id *)a3
{
  HasManagedAppleID = BRLoggedInUserHasManagedAppleID();
  if (a3 && HasManagedAppleID)
  {
    v5 = 0;
    *a3 = 0;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v5 = *a3;
  }

  if ([v5 code] == 2)
  {
    v6 = [*a3 domain];
    v7 = [v6 isEqualToString:BRCloudDocsErrorDomain];

    if (v7)
    {
      *a3 = 0;
    }
  }

  return 0;
}

@end