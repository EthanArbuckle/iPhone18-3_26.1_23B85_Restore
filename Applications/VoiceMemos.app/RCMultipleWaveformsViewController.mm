@interface RCMultipleWaveformsViewController
+ (id)viewControllerWithWaveformContainers:(id)a3 trackInfoRepository:(id)a4;
- (_TtC10VoiceMemos33RCMultipleWaveformsViewController)init;
@end

@implementation RCMultipleWaveformsViewController

+ (id)viewControllerWithWaveformContainers:(id)a3 trackInfoRepository:(id)a4
{
  v6 = objc_allocWithZone(type metadata accessor for _RCMultipleWaveformsViewController(0));
  v7 = sub_1001266A0(a3, a4);

  return v7;
}

- (_TtC10VoiceMemos33RCMultipleWaveformsViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCMultipleWaveformsViewController();
  return [(RCMultipleWaveformsViewController *)&v3 init];
}

@end