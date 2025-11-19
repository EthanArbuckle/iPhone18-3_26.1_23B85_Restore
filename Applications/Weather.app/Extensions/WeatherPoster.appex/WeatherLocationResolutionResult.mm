@interface WeatherLocationResolutionResult
+ (id)confirmationRequiredWithWeatherLocationToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithWeatherLocationsToDisambiguate:(id)a3;
+ (id)successWithResolvedWeatherLocation:(id)a3;
@end

@implementation WeatherLocationResolutionResult

+ (id)successWithResolvedWeatherLocation:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static WeatherLocationResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithWeatherLocationsToDisambiguate:(id)a3
{
  type metadata accessor for WeatherLocation();
  v3 = sub_10004AA5C();
  swift_getObjCClassMetadata();
  v4 = static WeatherLocationResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithWeatherLocationToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static WeatherLocationResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_10004943C();
  sub_10004AA5C();
  static WeatherLocationResolutionResult.disambiguation(with:)();
}

@end