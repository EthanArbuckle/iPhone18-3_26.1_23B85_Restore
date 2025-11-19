@interface NSLexiconGetMorphunAnalyzerFactory
@end

@implementation NSLexiconGetMorphunAnalyzerFactory

void ___NSLexiconGetMorphunAnalyzerFactory_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  cf = 0;
  qword_1ED43F948 = off_1ED43F910(33, &cf);
  if (qword_1ED43F948)
  {
    v0 = 1;
  }

  else
  {
    v0 = cf == 0;
  }

  if (!v0)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v1 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v4 = cf;
      _os_log_error_impl(&dword_18075C000, v1, OS_LOG_TYPE_ERROR, "Cannot initialize analyzer factory: %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
  }
}

@end