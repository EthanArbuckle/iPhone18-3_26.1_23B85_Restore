@interface WorkoutPreviewViewController
- (WorkoutPreviewViewController)initWithCoder:(id)coder;
- (WorkoutPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissView;
- (void)presentWorkoutDataRepresentation:(id)representation;
@end

@implementation WorkoutPreviewViewController

- (void)dismissView
{
  selfCopy = self;
  v2 = WorkoutRemoteViewServiceExportedInterfaceFunc([(WorkoutPreviewViewController *)selfCopy _remoteViewControllerProxy]);
  swift_unknownObjectRelease();
  if (v2)
  {
    [v2 dismiss];
    swift_unknownObjectRelease();
  }
}

- (WorkoutPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for WorkoutPreviewViewController();
  v9 = [(WorkoutPreviewViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (WorkoutPreviewViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutPreviewViewController();
  coderCopy = coder;
  v5 = [(WorkoutPreviewViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)presentWorkoutDataRepresentation:(id)representation
{
  representationCopy = representation;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  type metadata accessor for WorkoutConfiguration();
  v9 = type metadata accessor for BlastDoorConfigurationValidator();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  type metadata accessor for Occurrence();
  v12 = Occurrence.__allocating_init(count:)();
  v13 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  WorkoutPreviewViewController.presentConfigurationViewer(for:)(v13);
  outlined consume of Data._Representation(v6, v8);
}

@end