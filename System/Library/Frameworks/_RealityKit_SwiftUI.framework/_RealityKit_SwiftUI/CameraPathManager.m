@interface CameraPathManager
- (_TtC19_RealityKit_SwiftUI17CameraPathManager)init;
@end

@implementation CameraPathManager

- (_TtC19_RealityKit_SwiftUI17CameraPathManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots) = MEMORY[0x277D84F90];
  v2 = self + OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_cameraPosesBoundingBox;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CameraPathManager();
  return [(CameraPathManager *)&v4 init];
}

@end