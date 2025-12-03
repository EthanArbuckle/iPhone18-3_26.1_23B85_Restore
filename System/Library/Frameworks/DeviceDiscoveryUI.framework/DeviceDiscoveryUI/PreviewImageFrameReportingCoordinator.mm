@interface PreviewImageFrameReportingCoordinator
- (_TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator)init;
- (void)didUpdateImageViewFrame:(CGRect)frame;
@end

@implementation PreviewImageFrameReportingCoordinator

- (void)didUpdateImageViewFrame:(CGRect)frame
{
  *(&self->super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame) = frame;
  selfCopy = self;
  sub_2380E6084();
}

- (_TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end