@interface GAXNSObjectPublicAPIOverride
+ (BOOL)__accessibilityGuidedAccessStateEnabled;
+ (int64_t)__accessibilityGuidedAccessRestrictionStateForIdentifier:(id)identifier;
+ (void)__accessibilityRequestGuidedAccessSession:(BOOL)session completion:(id)completion;
@end

@implementation GAXNSObjectPublicAPIOverride

+ (BOOL)__accessibilityGuidedAccessStateEnabled
{
  v2 = +[GAXClient sharedInstance];
  isActive = [v2 isActive];

  return isActive;
}

+ (int64_t)__accessibilityGuidedAccessRestrictionStateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[GAXClient sharedInstance];
  v5 = [v4 stateForRestrictionWithIdentifier:identifierCopy];

  return v5;
}

+ (void)__accessibilityRequestGuidedAccessSession:(BOOL)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  if (sessionCopy)
  {
    v6 = +[UIAutonomousSingleAppModeConfiguration defaultConfiguration];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_54C0;
    v10[3] = &unk_14A70;
    v11 = completionCopy;
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
      v9 = completionCopy;
      [v7 endWithCompletion:v8];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

@end