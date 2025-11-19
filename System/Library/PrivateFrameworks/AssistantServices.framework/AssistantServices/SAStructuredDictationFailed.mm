@interface SAStructuredDictationFailed
- (id)ad_error;
@end

@implementation SAStructuredDictationFailed

- (id)ad_error
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(SAStructuredDictationFailed *)self userFacingReasonTitle];
  if (v4)
  {
    [v3 setObject:v4 forKey:AFSiriLocalizedFailureTitleKey];
  }

  v5 = [(SAStructuredDictationFailed *)self userFacingReasonDescription];
  if (v5)
  {
    [v3 setObject:v5 forKey:AFSiriLocalizedFailureDescriptionKey];
  }

  v6 = [(SAStructuredDictationFailed *)self recognition];
  if (v6)
  {
    [v3 setObject:v6 forKey:AFSiriRecognitionKey];
  }

  v7 = [NSError errorWithDomain:AFSiriStructuredDictationErrorDomain code:[(SAStructuredDictationFailed *)self errorCode] userInfo:v3];

  return v7;
}

@end