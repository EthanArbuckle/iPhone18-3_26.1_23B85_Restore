@interface AppPredictionIntentsHelperService
- (void)createEventIntentWithStartDate:(id)date endDate:(id)endDate withReply:(id)reply;
- (void)createIntentWithIntentType:(id)type intentData:(id)data withReply:(id)reply;
- (void)eligibleForWidgetsForIntent:(id)intent withReply:(id)reply;
- (void)indexingHashForIntent:(id)intent withReply:(id)reply;
- (void)localizedStringForLinkString:(id)string withReply:(id)reply;
- (void)subtitleForIntent:(id)intent withReply:(id)reply;
- (void)supportsBackgroundExecutionForIntent:(id)intent withReply:(id)reply;
- (void)titleForIntent:(id)intent withReply:(id)reply;
- (void)titleForIntentNoLocalization:(id)localization withReply:(id)reply;
@end

@implementation AppPredictionIntentsHelperService

- (void)titleForIntent:(id)intent withReply:(id)reply
{
  intentCopy = intent;
  replyCopy = reply;
  _title = [intentCopy _title];
  v8 = sub_100001F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000328C();
  }

  replyCopy[2](replyCopy, _title, 0);
}

- (void)titleForIntentNoLocalization:(id)localization withReply:(id)reply
{
  localizationCopy = localization;
  replyCopy = reply;
  v7 = [localizationCopy _titleWithLocalizer:0 fromBundleURL:0];
  v8 = sub_100001F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000032FC();
  }

  replyCopy[2](replyCopy, v7, 0);
}

- (void)subtitleForIntent:(id)intent withReply:(id)reply
{
  intentCopy = intent;
  replyCopy = reply;
  _subtitle = [intentCopy _subtitle];
  v8 = sub_100001F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000336C();
  }

  replyCopy[2](replyCopy, _subtitle, 0);
}

- (void)indexingHashForIntent:(id)intent withReply:(id)reply
{
  intentCopy = intent;
  replyCopy = reply;
  v7 = sub_100001F08();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = intentCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated intent before indexingHash: %@", &v10, 0xCu);
  }

  _indexingHash = [intentCopy _indexingHash];
  v9 = sub_100001F08();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = _indexingHash;
    v12 = 2112;
    v13 = intentCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Generated indexing hash: %llu for intent: %@", &v10, 0x16u);
  }

  replyCopy[2](replyCopy, _indexingHash, 0);
}

- (void)eligibleForWidgetsForIntent:(id)intent withReply:(id)reply
{
  intentCopy = intent;
  replyCopy = reply;
  _codableDescription = [intentCopy _codableDescription];
  isEligibleForWidgets = [_codableDescription isEligibleForWidgets];

  v9 = sub_100001F08();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000033DC();
  }

  replyCopy[2](replyCopy, isEligibleForWidgets, 0);
}

- (void)supportsBackgroundExecutionForIntent:(id)intent withReply:(id)reply
{
  intentCopy = intent;
  replyCopy = reply;
  _supportsBackgroundExecution = [intentCopy _supportsBackgroundExecution];
  v8 = sub_100001F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000344C();
  }

  replyCopy[2](replyCopy, _supportsBackgroundExecution, 0);
}

- (void)createIntentWithIntentType:(id)type intentData:(id)data withReply:(id)reply
{
  typeCopy = type;
  dataCopy = data;
  replyCopy = reply;
  v10 = INIntentCreate();
  v11 = sub_100001F08();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = typeCopy;
    v16 = 2112;
    v17 = dataCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Generated intent: %@ for intentType: %@, data: %@", &v12, 0x20u);
  }

  replyCopy[2](replyCopy, v10, 0);
}

- (void)createEventIntentWithStartDate:(id)date endDate:(id)endDate withReply:(id)reply
{
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
  v10 = objc_opt_new();
  v11 = [EKEvent eventWithEventStore:v10];

  [v11 setStartDate:dateCopy];
  [v11 setEndDate:endDateCopy];
  v12 = objc_opt_new();
  v13 = [v12 createEventIntentForEvent:v11 withSuggestionsInfoUniqueKey:0];

  v14 = INIntentWithTypedIntent();
  v15 = sub_100001F08();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = dateCopy;
    v20 = 2112;
    v21 = endDateCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Generated event intent: %@ for startDate: %@, endDate: %@", &v16, 0x20u);
  }

  replyCopy[2](replyCopy, v14, 0);
}

- (void)localizedStringForLinkString:(id)string withReply:(id)reply
{
  replyCopy = reply;
  v7 = [string localizedStringForLocaleIdentifier:0];
  (*(reply + 2))(replyCopy, v7, 0);
}

@end