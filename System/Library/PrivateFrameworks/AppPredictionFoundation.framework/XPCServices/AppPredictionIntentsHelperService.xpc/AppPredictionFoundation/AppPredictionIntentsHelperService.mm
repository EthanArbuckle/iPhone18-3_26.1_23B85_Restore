@interface AppPredictionIntentsHelperService
- (void)createEventIntentWithStartDate:(id)a3 endDate:(id)a4 withReply:(id)a5;
- (void)createIntentWithIntentType:(id)a3 intentData:(id)a4 withReply:(id)a5;
- (void)eligibleForWidgetsForIntent:(id)a3 withReply:(id)a4;
- (void)indexingHashForIntent:(id)a3 withReply:(id)a4;
- (void)localizedStringForLinkString:(id)a3 withReply:(id)a4;
- (void)subtitleForIntent:(id)a3 withReply:(id)a4;
- (void)supportsBackgroundExecutionForIntent:(id)a3 withReply:(id)a4;
- (void)titleForIntent:(id)a3 withReply:(id)a4;
- (void)titleForIntentNoLocalization:(id)a3 withReply:(id)a4;
@end

@implementation AppPredictionIntentsHelperService

- (void)titleForIntent:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _title];
  v8 = sub_100001F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000328C();
  }

  v6[2](v6, v7, 0);
}

- (void)titleForIntentNoLocalization:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _titleWithLocalizer:0 fromBundleURL:0];
  v8 = sub_100001F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000032FC();
  }

  v6[2](v6, v7, 0);
}

- (void)subtitleForIntent:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _subtitle];
  v8 = sub_100001F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000336C();
  }

  v6[2](v6, v7, 0);
}

- (void)indexingHashForIntent:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100001F08();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated intent before indexingHash: %@", &v10, 0xCu);
  }

  v8 = [v5 _indexingHash];
  v9 = sub_100001F08();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Generated indexing hash: %llu for intent: %@", &v10, 0x16u);
  }

  v6[2](v6, v8, 0);
}

- (void)eligibleForWidgetsForIntent:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _codableDescription];
  v8 = [v7 isEligibleForWidgets];

  v9 = sub_100001F08();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000033DC();
  }

  v6[2](v6, v8, 0);
}

- (void)supportsBackgroundExecutionForIntent:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _supportsBackgroundExecution];
  v8 = sub_100001F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000344C();
  }

  v6[2](v6, v7, 0);
}

- (void)createIntentWithIntentType:(id)a3 intentData:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = INIntentCreate();
  v11 = sub_100001F08();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Generated intent: %@ for intentType: %@, data: %@", &v12, 0x20u);
  }

  v9[2](v9, v10, 0);
}

- (void)createEventIntentWithStartDate:(id)a3 endDate:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [EKEvent eventWithEventStore:v10];

  [v11 setStartDate:v7];
  [v11 setEndDate:v8];
  v12 = objc_opt_new();
  v13 = [v12 createEventIntentForEvent:v11 withSuggestionsInfoUniqueKey:0];

  v14 = INIntentWithTypedIntent();
  v15 = sub_100001F08();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Generated event intent: %@ for startDate: %@, endDate: %@", &v16, 0x20u);
  }

  v9[2](v9, v14, 0);
}

- (void)localizedStringForLinkString:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = [a3 localizedStringForLocaleIdentifier:0];
  (*(a4 + 2))(v6, v7, 0);
}

@end