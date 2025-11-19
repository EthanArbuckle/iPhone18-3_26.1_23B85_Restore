@interface _LTCombinedRouteParagraphTranslationRequest
- (id)requestContext;
@end

@implementation _LTCombinedRouteParagraphTranslationRequest

- (id)requestContext
{
  v6.receiver = self;
  v6.super_class = _LTCombinedRouteParagraphTranslationRequest;
  v3 = [(_LTTranslationRequest *)&v6 requestContext];
  [v3 setRoute:0];
  if ([(_LTTranslationRequest *)self forcedOfflineTranslation])
  {
    v4 = 1;
  }

  else
  {
    if (![(_LTTranslationRequest *)self _forcedOnlineTranslation])
    {
      goto LABEL_6;
    }

    v4 = 2;
  }

  [v3 setRoute:v4];
LABEL_6:

  return v3;
}

@end