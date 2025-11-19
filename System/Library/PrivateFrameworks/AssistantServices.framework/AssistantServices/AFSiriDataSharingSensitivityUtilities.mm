@interface AFSiriDataSharingSensitivityUtilities
+ (BOOL)isRequestSensitiveWithPolicy:(int64_t)a3 optInStatus:(int64_t)a4 siriLanguageCode:(id)a5;
@end

@implementation AFSiriDataSharingSensitivityUtilities

+ (BOOL)isRequestSensitiveWithPolicy:(int64_t)a3 optInStatus:(int64_t)a4 siriLanguageCode:(id)a5
{
  v7 = a5;
  v8 = +[AFSiriDataSharingSensitivityManager shared];
  LOBYTE(a4) = [v8 isRequestSensitiveWithPolicy:a3 optInStatus:a4 siriLanguageCode:v7];

  return a4;
}

@end