@interface ScrubberMarkerController
- (_TtC5Books24ScrubberMarkerController)init;
@end

@implementation ScrubberMarkerController

- (_TtC5Books24ScrubberMarkerController)init
{
  *(&self->super.isa + OBJC_IVAR____TtC5Books24ScrubberMarkerController_pageCount) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange) = vdupq_n_s64(1uLL);
  *(&self->super.isa + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerCurrentPage) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScrubberMarkerController();
  return [(ScrubberMarkerController *)&v3 init];
}

@end