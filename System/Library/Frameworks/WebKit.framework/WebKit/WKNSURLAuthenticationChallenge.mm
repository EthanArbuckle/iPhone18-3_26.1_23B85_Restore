@interface WKNSURLAuthenticationChallenge
- (id)_web_createTarget;
@end

@implementation WKNSURLAuthenticationChallenge

- (id)_web_createTarget
{
  _apiObject = [(WKObject *)self _apiObject];
  CFRetain(_apiObject->var1);
  if ((_MergedGlobals_65 & 1) == 0)
  {
    qword_1ED642408 = 0;
    _MergedGlobals_65 = 1;
  }

  if (qword_1ED642400 != -1)
  {
    dispatch_once(&qword_1ED642400, &__block_literal_global_16);
  }

  v3 = objc_alloc(MEMORY[0x1E695AC30]);
  v5 = [v3 initWithAuthenticationChallenge:WebCore::mac(&_apiObject[1] sender:{v4), qword_1ED642408}];
  CFRelease(_apiObject->var1);
  return v5;
}

void __51__WKNSURLAuthenticationChallenge__web_createTarget__block_invoke()
{
  v0 = objc_alloc_init(WKNSURLAuthenticationChallengeSender);
  v1 = qword_1ED642408;
  qword_1ED642408 = v0;
  if (v1)
  {
  }
}

@end