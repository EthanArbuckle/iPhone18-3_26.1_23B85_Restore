@interface GAXNSObjectPublicAPIOverride
+ (BOOL)__accessibilityGuidedAccessStateEnabled;
+ (int64_t)__accessibilityGuidedAccessRestrictionStateForIdentifier:(id)a3;
+ (void)__accessibilityRequestGuidedAccessSession:(BOOL)a3 completion:(id)a4;
@end

@implementation GAXNSObjectPublicAPIOverride

+ (BOOL)__accessibilityGuidedAccessStateEnabled
{
  v2 = +[GAXClient sharedInstance];
  v3 = [v2 isActive];

  return v3;
}

+ (int64_t)__accessibilityGuidedAccessRestrictionStateForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[GAXClient sharedInstance];
  v5 = [v4 stateForRestrictionWithIdentifier:v3];

  return v5;
}

+ (void)__accessibilityRequestGuidedAccessSession:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v4)
  {
    v6 = +[UIAutonomousSingleAppModeConfiguration defaultConfiguration];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_54C0;
    v10[3] = &unk_14A70;
    v11 = v5;
    [UIAutonomousSingleAppModeSession requestSessionWithConfiguration:v6 completion:v10];

    v7 = v11;
  }

  else
  {
    v7 = +[UIAutonomousSingleAppModeSession currentlyActiveSession];
    if ([v7 isActive])
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_54E0;
      v8[3] = &unk_14A98;
      v9 = v5;
      [v7 endWithCompletion:v8];
    }

    else if (v5)
    {
      (*(v5 + 2))(v5, 0);
    }
  }
}

@end