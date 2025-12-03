@interface CNReputationLogger
+ (OS_os_log)performanceLog;
+ (OS_os_log)queryLog;
+ (id)describeScore:(int64_t)score;
+ (id)obfuscate:(id)obfuscate;
+ (id)obfuscateHandle:(id)handle;
- (void)beginQueryForHandle:(id)handle;
- (void)contactsConfirmedTrustOfEmailAddress;
- (void)contactsConfirmedTrustOfPhoneNumber;
- (void)contactsCouldNotConfirmTrustOfEmailAddress;
- (void)contactsCouldNotConfirmTrustOfPhoneNumber;
- (void)coreRecentsConfirmedTrust;
- (void)coreRecentsCouldNotConfirmTrust;
- (void)couldNotQueryContactsForEmailAddressWithError:(id)error;
- (void)couldNotQueryContactsForPhoneNumberWithError:(id)error;
- (void)couldNotQueryCoreRecentsWithError:(id)error;
- (void)queryForHandle:(id)handle didFailWithError:(id)error;
- (void)queryForHandle:(id)handle didFinishWithReputation:(id)reputation;
- (void)reputationUnestablished;
- (void)timeToResolve:(double)resolve;
@end

@implementation CNReputationLogger

- (void)beginQueryForHandle:(id)handle
{
  v8 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  queryLog = [objc_opt_class() queryLog];
  if (os_log_type_enabled(queryLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() obfuscateHandle:handleCopy];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1954A0000, queryLog, OS_LOG_TYPE_DEFAULT, "Determining trust of handle %{public}@", &v6, 0xCu);
  }
}

- (void)queryForHandle:(id)handle didFinishWithReputation:(id)reputation
{
  v14 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  reputationCopy = reputation;
  queryLog = [objc_opt_class() queryLog];
  if (os_log_type_enabled(queryLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() obfuscateHandle:handleCopy];
    v9 = [objc_opt_class() describeScore:{objc_msgSend(reputationCopy, "score")}];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1954A0000, queryLog, OS_LOG_TYPE_DEFAULT, "Handle '%{public}@' has reputation: %{public}@", &v10, 0x16u);
  }
}

- (void)queryForHandle:(id)handle didFailWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  errorCopy = error;
  queryLog = [objc_opt_class() queryLog];
  if (os_log_type_enabled(queryLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    stringValue = [handleCopy stringValue];
    v10 = [v8 obfuscate:stringValue];
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = errorCopy;
    _os_log_impl(&dword_1954A0000, queryLog, OS_LOG_TYPE_DEFAULT, "Failed to look up handle '%{public}@': %{public}@", &v11, 0x16u);
  }
}

- (void)timeToResolve:(double)resolve
{
  performanceLog = [objc_opt_class() performanceLog];
  if (os_log_type_enabled(performanceLog, OS_LOG_TYPE_DEBUG))
  {
    [CNReputationLogger timeToResolve:];
  }
}

- (void)coreRecentsConfirmedTrust
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)coreRecentsCouldNotConfirmTrust
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)couldNotQueryCoreRecentsWithError:(id)error
{
  errorCopy = error;
  queryLog = [objc_opt_class() queryLog];
  if (os_log_type_enabled(queryLog, OS_LOG_TYPE_DEBUG))
  {
    [CNReputationLogger couldNotQueryCoreRecentsWithError:];
  }
}

- (void)contactsConfirmedTrustOfEmailAddress
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)contactsCouldNotConfirmTrustOfEmailAddress
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)couldNotQueryContactsForEmailAddressWithError:(id)error
{
  errorCopy = error;
  queryLog = [objc_opt_class() queryLog];
  if (os_log_type_enabled(queryLog, OS_LOG_TYPE_DEBUG))
  {
    [CNReputationLogger couldNotQueryContactsForEmailAddressWithError:];
  }
}

- (void)contactsConfirmedTrustOfPhoneNumber
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)contactsCouldNotConfirmTrustOfPhoneNumber
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)couldNotQueryContactsForPhoneNumberWithError:(id)error
{
  errorCopy = error;
  queryLog = [objc_opt_class() queryLog];
  if (os_log_type_enabled(queryLog, OS_LOG_TYPE_DEBUG))
  {
    [CNReputationLogger couldNotQueryContactsForPhoneNumberWithError:];
  }
}

- (void)reputationUnestablished
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (OS_os_log)queryLog
{
  if (queryLog_cn_once_token_14 != -1)
  {
    +[CNReputationLogger queryLog];
  }

  v3 = queryLog_cn_once_object_14;

  return v3;
}

uint64_t __30__CNReputationLogger_queryLog__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.reputation", "query");
  v1 = queryLog_cn_once_object_14;
  queryLog_cn_once_object_14 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)performanceLog
{
  if (performanceLog_cn_once_token_15 != -1)
  {
    +[CNReputationLogger performanceLog];
  }

  v3 = performanceLog_cn_once_object_15;

  return v3;
}

uint64_t __36__CNReputationLogger_performanceLog__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.reputation", "performance");
  v1 = performanceLog_cn_once_object_15;
  performanceLog_cn_once_object_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)describeScore:(int64_t)score
{
  if (score >= 3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v3 = [v4 stringWithFormat:@"unknown (%@)", v5];
  }

  else
  {
    v3 = off_1E74165D8[score];
  }

  return v3;
}

+ (id)obfuscateHandle:(id)handle
{
  stringValue = [handle stringValue];
  v5 = [self obfuscate:stringValue];

  return v5;
}

+ (id)obfuscate:(id)obfuscate
{
  v3 = obfuscate__cn_once_token_16;
  obfuscateCopy = obfuscate;
  if (v3 != -1)
  {
    +[CNReputationLogger obfuscate:];
  }

  v5 = [obfuscateCopy _cn_SHA256HashStringWithSalt:obfuscate__cn_once_object_16];

  return v5;
}

void __32__CNReputationLogger_obfuscate___block_invoke()
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v0 = [v3 UUIDString];
  v1 = [v0 copy];
  v2 = obfuscate__cn_once_object_16;
  obfuscate__cn_once_object_16 = v1;
}

@end