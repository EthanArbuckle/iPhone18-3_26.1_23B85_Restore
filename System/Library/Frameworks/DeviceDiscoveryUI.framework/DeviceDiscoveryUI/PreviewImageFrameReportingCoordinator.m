@interface PreviewImageFrameReportingCoordinator
- (_TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator)init;
- (void)didUpdateImageViewFrame:(CGRect)a3;
@end

@implementation PreviewImageFrameReportingCoordinator

- (void)didUpdateImageViewFrame:(CGRect)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame) = a3;
  v3 = self;
  sub_2380E6084();
}

- (_TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end