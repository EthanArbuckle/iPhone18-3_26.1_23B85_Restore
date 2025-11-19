@interface _LTSELFLoggingInvocation
+ (void)userEndedTypingWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5 reason:(int64_t)a6;
- (_LTSELFLoggingInvocation)initWithInvocationId:(id)a3;
- (void)cancelWithReason:(id)a3 localePair:(id)a4 qssSessionId:(id)a5;
- (void)endSuccessfullyWithQSSSessionId:(id)a3 localePair:(id)a4;
- (void)endWithError:(id)a3 localePair:(id)a4 qssSessionId:(id)a5;
- (void)languageIdentificationCompletedWithInputSource:(int64_t)a3 topLocale:(id)a4 lowConfidenceLocales:(id)a5;
- (void)sendEventWithPayload:(id)a3 localePair:(id)a4 type:(int64_t)a5;
- (void)sendUserEndedTypingEventWithPayload:(id)a3 localePair:(id)a4 type:(int64_t)a5;
- (void)startedWithClientIdentifier:(id)a3;
- (void)userEndedTypingWithPayload:(id)a3 localePair:(id)a4 reason:(int64_t)a5;
@end

@implementation _LTSELFLoggingInvocation

- (_LTSELFLoggingInvocation)initWithInvocationId:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _LTSELFLoggingInvocation;
  v6 = [(_LTSELFLoggingInvocation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_endSent = 0;
    objc_storeStrong(&v6->_invocationId, a3);
    v8 = v7;
  }

  return v7;
}

- (void)endSuccessfullyWithQSSSessionId:(id)a3 localePair:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    [(_LTSELFLoggingEventData *)v9 setQssSessionId:v6];
    [(_LTSELFLoggingEventData *)v9 setTranslationLocalePair:v7];
    [_LTTranslator selfLoggingEventWithData:v9];
    self->_endSent = 1;
  }
}

- (void)endWithError:(id)a3 localePair:(id)a4 qssSessionId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    [(_LTSELFLoggingEventData *)v12 setQssSessionId:v10];
    [(_LTSELFLoggingEventData *)v12 setInvocationEndedError:v8];
    [(_LTSELFLoggingEventData *)v12 setTranslationLocalePair:v9];
    [_LTTranslator selfLoggingEventWithData:v12];
    self->_endSent = 1;
  }
}

- (void)cancelWithReason:(id)a3 localePair:(id)a4 qssSessionId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    [(_LTSELFLoggingEventData *)v12 setQssSessionId:v10];
    [(_LTSELFLoggingEventData *)v12 setInvocationCancelledReason:v8];
    [(_LTSELFLoggingEventData *)v12 setTranslationLocalePair:v9];
    [_LTTranslator selfLoggingEventWithData:v12];
    self->_endSent = 1;
  }
}

- (void)userEndedTypingWithPayload:(id)a3 localePair:(id)a4 reason:(int64_t)a5
{
  if (a5 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a5 + 5;
  }

  [(_LTSELFLoggingInvocation *)self sendUserEndedTypingEventWithPayload:a3 localePair:a4 type:v5];
}

- (void)languageIdentificationCompletedWithInputSource:(int64_t)a3 topLocale:(id)a4 lowConfidenceLocales:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[_LTSELFLoggingTranslationLIDData alloc] initWithInvocationId:self->_invocationId inputSource:a3 topLocale:v9 lowConfidenceLocales:v8];

  [_LTTranslator selfLoggingLanguageIdentificationCompletedWithLIDData:v10];
}

- (void)sendEventWithPayload:(id)a3 localePair:(id)a4 type:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[_LTSELFLoggingEventData alloc] initWithType:a5 invocationId:self->_invocationId];
  [(_LTSELFLoggingEventData *)v10 setTranslationPayload:v9];

  [(_LTSELFLoggingEventData *)v10 setTranslationLocalePair:v8];
  [_LTTranslator selfLoggingEventWithData:v10];
}

- (void)sendUserEndedTypingEventWithPayload:(id)a3 localePair:(id)a4 type:(int64_t)a5
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
    [(_LTSELFLoggingInvocation *)self sendEventWithPayload:a3 localePair:a4 type:a5];
    self->_endSent = 1;
  }
}

+ (void)userEndedTypingWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5 reason:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [_LTSELFLoggingEventData alloc];
  if (a6 >= 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = a6 + 5;
  }

  v14 = [(_LTSELFLoggingEventData *)v12 initWithType:v13 invocationId:v11];

  [(_LTSELFLoggingEventData *)v14 setTranslationPayload:v10];
  [(_LTSELFLoggingEventData *)v14 setTranslationLocalePair:v9];

  [_LTTranslator selfLoggingEventWithData:v14];
}

- (void)startedWithClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [_LTSELFLoggingEventData alloc];
  v6 = [(_LTSELFLoggingInvocation *)self invocationId];
  v7 = [(_LTSELFLoggingEventData *)v5 initWithType:10 invocationId:v6];

  [(_LTSELFLoggingEventData *)v7 setUntrustedClientIdentifier:v4];
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