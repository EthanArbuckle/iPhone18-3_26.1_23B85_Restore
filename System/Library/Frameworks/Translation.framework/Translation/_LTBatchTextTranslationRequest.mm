@interface _LTBatchTextTranslationRequest
- (void)_startTranslationWithService:(id)a3 done:(id)a4;
- (void)_translationFailedWithError:(id)a3;
@end

@implementation _LTBatchTextTranslationRequest

- (void)_startTranslationWithService:(id)a3 done:(id)a4
{
  v4 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [_LTBatchTextTranslationRequest _startTranslationWithService:done:];
  }
}

- (void)_translationFailedWithError:(id)a3
{
  v4 = a3;
  translationHandler = self->_translationHandler;
  v7 = v4;
  if (translationHandler)
  {
    translationHandler[2](translationHandler, 0, v4);
  }

  textHandler = self->_textHandler;
  if (textHandler)
  {
    textHandler[2](textHandler, MEMORY[0x277CBEBF8], v7);
  }

  MEMORY[0x2821F9730]();
}

- (void)_startTranslationWithService:done:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end