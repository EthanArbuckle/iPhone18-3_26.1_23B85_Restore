@interface WorkoutPreviewViewController
- (WorkoutPreviewViewController)initWithCoder:(id)a3;
- (WorkoutPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissView;
- (void)presentWorkoutDataRepresentation:(id)a3;
@end

@implementation WorkoutPreviewViewController

- (void)dismissView
{
  v3 = self;
  v2 = WorkoutRemoteViewServiceExportedInterfaceFunc([(WorkoutPreviewViewController *)v3 _remoteViewControllerProxy]);
  swift_unknownObjectRelease();
  if (v2)
  {
    [v2 dismiss];
    swift_unknownObjectRelease();
  }
}

- (WorkoutPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for WorkoutPreviewViewController();
  v9 = [(WorkoutPreviewViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (WorkoutPreviewViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutPreviewViewController();
  v4 = a3;
  v5 = [(WorkoutPreviewViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)presentWorkoutDataRepresentation:(id)a3
{
  v4 = a3;
  v5 = self;
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