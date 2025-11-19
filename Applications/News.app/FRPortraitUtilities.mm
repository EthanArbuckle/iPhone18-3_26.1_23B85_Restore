@interface FRPortraitUtilities
+ (id)candidatePortraitSignalsWithPortraitResults:(id)a3 disbabledTagIDs:(id)a4 globalThreshold:(double)a5 multiplierProvider:(id)a6 logBlock:(id)a7;
+ (void)submitPortraitFeedbackForExplicitEngagementWithArticleID:(id)a3 topicIDs:(id)a4;
+ (void)submitPortraitFeedbackForExplicitRejectionWithArticleID:(id)a3 topicIDs:(id)a4;
+ (void)submitPortraitFeedbackForImplicitEngagementWithArticleID:(id)a3 topicIDs:(id)a4 portraitAutofavoriteCandidates:(id)a5;
+ (void)submitPortraitFeedbackForImplicitRejectionWithArticleID:(id)a3 topicIDs:(id)a4 portraitAutofavoriteCandidates:(id)a5;
@end

@implementation FRPortraitUtilities

+ (id)candidatePortraitSignalsWithPortraitResults:(id)a3 disbabledTagIDs:(id)a4 globalThreshold:(double)a5 multiplierProvider:(id)a6 logBlock:(id)a7
{
  v11 = a3;
  v12 = a4;
  if (!a6)
  {
    a6 = &stru_1000C21B0;
  }

  v13 = a7;
  v14 = objc_retainBlock(a6);
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1000C21D0;
  }

  v16 = objc_retainBlock(v15);

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100017B04;
  v23[3] = &unk_1000C2220;
  v28 = a5;
  v24 = v11;
  v25 = v12;
  v26 = v16;
  v27 = v14;
  v17 = v14;
  v18 = v12;
  v19 = v16;
  v20 = v11;
  v21 = [NSSet fc_set:v23];

  return v21;
}

+ (void)submitPortraitFeedbackForExplicitEngagementWithArticleID:(id)a3 topicIDs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      v8 = FRPortraitLog;
      if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v19 = v5;
        v20 = 2114;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Consider submitting portrait feedback for explicit engagement with articleID: %{public}@ and topicIDs: %{public}@", buf, 0x16u);
      }

      v9 = +[PPTopicStore defaultStore];
      [v9 setClientIdentifier:@"news"];
      v10 = [[PPMappedFeedback alloc] initWithExplicitlyEngagedStrings:v7 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 mappingId:@"news-topics"];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100018190;
      v11[3] = &unk_1000C2248;
      v12 = v5;
      v13 = v7;
      [v9 registerFeedback:v10 completion:v11];
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000180E8;
      v14[3] = &unk_1000C18D0;
      v15 = v5;
      sub_1000180E8(v14);
      v9 = v15;
    }
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100018040;
    v16[3] = &unk_1000C18D0;
    v17 = v5;
    sub_100018040(v16);
    v9 = v17;
  }
}

+ (void)submitPortraitFeedbackForExplicitRejectionWithArticleID:(id)a3 topicIDs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      v8 = FRPortraitLog;
      if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v19 = v5;
        v20 = 2114;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Consider submitting portrait feedback for explicit rejection with articleID: %{public}@ and topicIDs: %{public}@", buf, 0x16u);
      }

      v9 = +[PPTopicStore defaultStore];
      [v9 setClientIdentifier:@"news"];
      v10 = [[PPMappedFeedback alloc] initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:v7 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 mappingId:@"news-topics"];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100018634;
      v11[3] = &unk_1000C2248;
      v12 = v5;
      v13 = v7;
      [v9 registerFeedback:v10 completion:v11];
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10001858C;
      v14[3] = &unk_1000C18D0;
      v15 = v5;
      sub_10001858C(v14);
      v9 = v15;
    }
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000184E4;
    v16[3] = &unk_1000C18D0;
    v17 = v5;
    sub_1000184E4(v16);
    v9 = v17;
  }
}

+ (void)submitPortraitFeedbackForImplicitEngagementWithArticleID:(id)a3 topicIDs:(id)a4 portraitAutofavoriteCandidates:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100018940;
    v16[3] = &unk_1000C18D0;
    v17 = v7;
    sub_100018940(v16);
    v11 = v17;
LABEL_7:

    goto LABEL_8;
  }

  if ([v8 count])
  {
    v10 = FRPortraitLog;
    if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Consider submitting portrait feedback for implicit engagement with articleID: %{public}@ and topicIDs: %{public}@", buf, 0x16u);
    }

    v11 = +[PPTopicStore defaultStore];
    [v11 setClientIdentifier:@"news"];
    v12 = [[PPMappedFeedback alloc] initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:v8 implicitlyRejectedStrings:0 mappingId:@"news-topics"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000189E8;
    v13[3] = &unk_1000C2248;
    v14 = v7;
    v15 = v8;
    [v11 registerFeedback:v12 completion:v13];

    goto LABEL_7;
  }

LABEL_8:
}

+ (void)submitPortraitFeedbackForImplicitRejectionWithArticleID:(id)a3 topicIDs:(id)a4 portraitAutofavoriteCandidates:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100018CF4;
    v16[3] = &unk_1000C18D0;
    v17 = v7;
    sub_100018CF4(v16);
    v11 = v17;
LABEL_7:

    goto LABEL_8;
  }

  if ([v8 count])
  {
    v10 = FRPortraitLog;
    if (os_log_type_enabled(FRPortraitLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Consider submitting portrait feedback for implicit rejection with articleID: %{public}@ and topicIDs: %{public}@", buf, 0x16u);
    }

    v11 = +[PPTopicStore defaultStore];
    [v11 setClientIdentifier:@"news"];
    v12 = [[PPMappedFeedback alloc] initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:v8 mappingId:@"news-topics"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100018D9C;
    v13[3] = &unk_1000C2248;
    v14 = v7;
    v15 = v8;
    [v11 registerFeedback:v12 completion:v13];

    goto LABEL_7;
  }

LABEL_8:
}

@end