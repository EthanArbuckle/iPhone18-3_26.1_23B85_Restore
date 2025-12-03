@interface _LTSELFLoggingInvocation
+ (void)userEndedTypingWithInvocationId:(id)id payload:(id)payload localePair:(id)pair reason:(int64_t)reason;
- (_LTSELFLoggingInvocation)initWithInvocationId:(id)id;
- (void)cancelWithReason:(id)reason localePair:(id)pair qssSessionId:(id)id;
- (void)endSuccessfullyWithQSSSessionId:(id)id localePair:(id)pair;
- (void)endWithError:(id)error localePair:(id)pair qssSessionId:(id)id;
- (void)languageIdentificationCompletedWithInputSource:(int64_t)source topLocale:(id)locale lowConfidenceLocales:(id)locales;
- (void)sendEventWithPayload:(id)payload localePair:(id)pair type:(int64_t)type;
- (void)sendUserEndedTypingEventWithPayload:(id)payload localePair:(id)pair type:(int64_t)type;
- (void)startedWithClientIdentifier:(id)identifier;
- (void)userEndedTypingWithPayload:(id)payload localePair:(id)pair reason:(int64_t)reason;
@end

@implementation _LTSELFLoggingInvocation

- (_LTSELFLoggingInvocation)initWithInvocationId:(id)id
{
  idCopy = id;
  v10.receiver = self;
  v10.super_class = _LTSELFLoggingInvocation;
  v6 = [(_LTSELFLoggingInvocation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_endSent = 0;
    objc_storeStrong(&v6->_invocationId, id);
    v8 = v7;
  }

  return v7;
}

- (void)endSuccessfullyWithQSSSessionId:(id)id localePair:(id)pair
{
  idCopy = id;
  pairCopy = pair;
  if (self->_endSent)
  {
    v8 = _LTOSLogSELFLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_LTSELFLoggingInvocation endSuccessfullyWithQSSSessionId:? localePair:?];
    }
  }

  else
  {
    v9 = [[_LTSELFLoggingEventData alloc] initWithType:2 invocationId:self->_invocationId];
    [(_LTSELFLoggingEventData *)v9 setQssSessionId:idCopy];
    [(_LTSELFLoggingEventData *)v9 setTranslationLocalePair:pairCopy];
    [_LTTranslator selfLoggingEventWithData:v9];
    self->_endSent = 1;
  }
}

- (void)endWithError:(id)error localePair:(id)pair qssSessionId:(id)id
{
  errorCopy = error;
  pairCopy = pair;
  idCopy = id;
  if (self->_endSent)
  {
    v11 = _LTOSLogSELFLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_LTSELFLoggingInvocation endWithError:? localePair:? qssSessionId:?];
    }
  }

  else
  {
    v12 = [[_LTSELFLoggingEventData alloc] initWithType:3 invocationId:self->_invocationId];
    [(_LTSELFLoggingEventData *)v12 setQssSessionId:idCopy];
    [(_LTSELFLoggingEventData *)v12 setInvocationEndedError:errorCopy];
    [(_LTSELFLoggingEventData *)v12 setTranslationLocalePair:pairCopy];
    [_LTTranslator selfLoggingEventWithData:v12];
    self->_endSent = 1;
  }
}

- (void)cancelWithReason:(id)reason localePair:(id)pair qssSessionId:(id)id
{
  reasonCopy = reason;
  pairCopy = pair;
  idCopy = id;
  if (self->_endSent)
  {
    v11 = _LTOSLogSELFLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_LTSELFLoggingInvocation cancelWithReason:? localePair:? qssSessionId:?];
    }
  }

  else
  {
    v12 = [[_LTSELFLoggingEventData alloc] initWithType:4 invocationId:self->_invocationId];
    [(_LTSELFLoggingEventData *)v12 setQssSessionId:idCopy];
    [(_LTSELFLoggingEventData *)v12 setInvocationCancelledReason:reasonCopy];
    [(_LTSELFLoggingEventData *)v12 setTranslationLocalePair:pairCopy];
    [_LTTranslator selfLoggingEventWithData:v12];
    self->_endSent = 1;
  }
}

- (void)userEndedTypingWithPayload:(id)payload localePair:(id)pair reason:(int64_t)reason
{
  if (reason >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = reason + 5;
  }

  [(_LTSELFLoggingInvocation *)self sendUserEndedTypingEventWithPayload:payload localePair:pair type:v5];
}

- (void)languageIdentificationCompletedWithInputSource:(int64_t)source topLocale:(id)locale lowConfidenceLocales:(id)locales
{
  localesCopy = locales;
  localeCopy = locale;
  v10 = [[_LTSELFLoggingTranslationLIDData alloc] initWithInvocationId:self->_invocationId inputSource:source topLocale:localeCopy lowConfidenceLocales:localesCopy];

  [_LTTranslator selfLoggingLanguageIdentificationCompletedWithLIDData:v10];
}

- (void)sendEventWithPayload:(id)payload localePair:(id)pair type:(int64_t)type
{
  pairCopy = pair;
  payloadCopy = payload;
  v10 = [[_LTSELFLoggingEventData alloc] initWithType:type invocationId:self->_invocationId];
  [(_LTSELFLoggingEventData *)v10 setTranslationPayload:payloadCopy];

  [(_LTSELFLoggingEventData *)v10 setTranslationLocalePair:pairCopy];
  [_LTTranslator selfLoggingEventWithData:v10];
}

- (void)sendUserEndedTypingEventWithPayload:(id)payload localePair:(id)pair type:(int64_t)type
{
  if (self->_endSent)
  {
    v6 = _LTOSLogSELFLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_LTSELFLoggingInvocation sendUserEndedTypingEventWithPayload:? localePair:? type:?];
    }
  }

  else
  {
    [(_LTSELFLoggingInvocation *)self sendEventWithPayload:payload localePair:pair type:type];
    self->_endSent = 1;
  }
}

+ (void)userEndedTypingWithInvocationId:(id)id payload:(id)payload localePair:(id)pair reason:(int64_t)reason
{
  pairCopy = pair;
  payloadCopy = payload;
  idCopy = id;
  v12 = [_LTSELFLoggingEventData alloc];
  if (reason >= 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = reason + 5;
  }

  v14 = [(_LTSELFLoggingEventData *)v12 initWithType:v13 invocationId:idCopy];

  [(_LTSELFLoggingEventData *)v14 setTranslationPayload:payloadCopy];
  [(_LTSELFLoggingEventData *)v14 setTranslationLocalePair:pairCopy];

  [_LTTranslator selfLoggingEventWithData:v14];
}

- (void)startedWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [_LTSELFLoggingEventData alloc];
  invocationId = [(_LTSELFLoggingInvocation *)self invocationId];
  v7 = [(_LTSELFLoggingEventData *)v5 initWithType:10 invocationId:invocationId];

  [(_LTSELFLoggingEventData *)v7 setUntrustedClientIdentifier:identifierCopy];
  [_LTTranslator selfLoggingEventWithData:v7];
}

- (void)endSuccessfullyWithQSSSessionId:(uint64_t)a1 localePair:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_23AAF5000, v1, v2, "Invocation [%{public}@] has ended already, so ignoring successful end of event with QSS Session ID of %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)endWithError:(uint64_t)a1 localePair:qssSessionId:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_23AAF5000, v1, v2, "Invocation [%{public}@] has ended already so ignoring end with error of event with QSS Session ID of %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithReason:(uint64_t)a1 localePair:qssSessionId:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_23AAF5000, v1, v2, "Invocation [%{public}@] has ended already so ignoring cancel with reason of event with QSS Session ID of %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)sendUserEndedTypingEventWithPayload:(uint64_t)a1 localePair:type:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v4 = 138543362;
  v5 = v1;
  _os_log_debug_impl(&dword_23AAF5000, v2, OS_LOG_TYPE_DEBUG, "Invocation [%{public}@] has ended already, so ignoring successful end with user ending typing", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end