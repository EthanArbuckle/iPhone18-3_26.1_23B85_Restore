@interface SAStructuredDictationFailed
- (id)ad_error;
@end

@implementation SAStructuredDictationFailed

- (id)ad_error
{
  v3 = objc_alloc_init(NSMutableDictionary);
  userFacingReasonTitle = [(SAStructuredDictationFailed *)self userFacingReasonTitle];
  if (userFacingReasonTitle)
  {
    [v3 setObject:userFacingReasonTitle forKey:AFSiriLocalizedFailureTitleKey];
  }

  userFacingReasonDescription = [(SAStructuredDictationFailed *)self userFacingReasonDescription];
  if (userFacingReasonDescription)
  {
    [v3 setObject:userFacingReasonDescription forKey:AFSiriLocalizedFailureDescriptionKey];
  }

  recognition = [(SAStructuredDictationFailed *)self recognition];
  if (recognition)
  {
    [v3 setObject:recognition forKey:AFSiriRecognitionKey];
  }

  v7 = [NSError errorWithDomain:AFSiriStructuredDictationErrorDomain code:[(SAStructuredDictationFailed *)self errorCode] userInfo:v3];

  return v7;
}

@end