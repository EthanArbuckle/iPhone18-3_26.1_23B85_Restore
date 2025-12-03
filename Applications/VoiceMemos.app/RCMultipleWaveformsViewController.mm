@interface RCMultipleWaveformsViewController
+ (id)viewControllerWithWaveformContainers:(id)containers trackInfoRepository:(id)repository;
- (_TtC10VoiceMemos33RCMultipleWaveformsViewController)init;
@end

@implementation RCMultipleWaveformsViewController

+ (id)viewControllerWithWaveformContainers:(id)containers trackInfoRepository:(id)repository
{
  v6 = objc_allocWithZone(type metadata accessor for _RCMultipleWaveformsViewController(0));
  v7 = sub_1001266A0(containers, repository);

  return v7;
}

- (_TtC10VoiceMemos33RCMultipleWaveformsViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCMultipleWaveformsViewController();
  return [(RCMultipleWaveformsViewController *)&v3 init];
}

@end