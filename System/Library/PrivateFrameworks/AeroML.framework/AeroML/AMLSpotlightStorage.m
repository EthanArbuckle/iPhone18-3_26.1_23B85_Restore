@interface AMLSpotlightStorage
+ (id)clientDonationsForSession:(id)a3;
+ (id)featuresConfigurationForConfigurationId:(id)a3;
+ (id)featuresForSpotlightId:(id)a3;
+ (id)metadataForSession:(id)a3;
@end

@implementation AMLSpotlightStorage

+ (id)featuresConfigurationForConfigurationId:(id)a3
{
  v3 = sub_21AF097CC();
  v5 = static AMLSpotlightStorage.featuresConfiguration(forConfigurationId:)(v3, v4);

  return v5;
}

+ (id)metadataForSession:(id)a3
{
  v3 = sub_21AF097CC();
  static AMLSpotlightStorage.metadata(forSession:)(v3, v4);

  type metadata accessor for AMLStorageMetadata(v5);
  v6 = sub_21AF0987C();

  return v6;
}

+ (id)featuresForSpotlightId:(id)a3
{
  v3 = sub_21AF097CC();
  v5 = static AMLSpotlightStorage.features(forSpotlightId:)(v3, v4);

  return v5;
}

+ (id)clientDonationsForSession:(id)a3
{
  sub_21AF097CC();
  swift_getObjCClassMetadata();
  sub_21AEA6B88();

  type metadata accessor for AMLClientDonations(0);
  v3 = sub_21AF0987C();

  return v3;
}

@end