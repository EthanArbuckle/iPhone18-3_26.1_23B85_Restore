@interface AFSiriDataSharingSensitivityUtilities
+ (BOOL)isRequestSensitiveWithPolicy:(int64_t)policy optInStatus:(int64_t)status siriLanguageCode:(id)code;
@end

@implementation AFSiriDataSharingSensitivityUtilities

+ (BOOL)isRequestSensitiveWithPolicy:(int64_t)policy optInStatus:(int64_t)status siriLanguageCode:(id)code
{
  codeCopy = code;
  v8 = +[AFSiriDataSharingSensitivityManager shared];
  LOBYTE(status) = [v8 isRequestSensitiveWithPolicy:policy optInStatus:status siriLanguageCode:codeCopy];

  return status;
}

@end