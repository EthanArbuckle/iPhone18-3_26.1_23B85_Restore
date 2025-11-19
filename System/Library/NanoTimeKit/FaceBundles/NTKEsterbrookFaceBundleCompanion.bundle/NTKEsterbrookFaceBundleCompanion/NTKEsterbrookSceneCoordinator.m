@interface NTKEsterbrookSceneCoordinator
- (NTKEsterbrookColorPalette)colorPalette;
- (NTKEsterbrookSceneCoordinator)init;
- (NTKEsterbrookSceneCoordinator)initWithFrame:(CGRect)a3 device:(id)a4 handsView:(id)a5 colorPalette:(id)a6 faceState:(id)a7 sourceConfiguration:(id)a8;
- (NTKEsterbrookSceneCoordinatorDelegate)delegate;
- (void)applyFaceState:(id)a3;
- (void)cleanupAfterEditing;
- (void)didTransitionToTritiumOff;
- (void)didTransitionToTritiumOn;
- (void)handleSignificantTimeChange;
- (void)layoutForDateChange;
- (void)prepareForEditing;
- (void)prepareForTransitionToTritiumOn;
- (void)prepareNextSceneForDisplayMode:(int64_t)a3;
- (void)screenDidTurnOffWithAnimated:(BOOL)a3;
- (void)screenWillTurnOnAnimated:;
- (void)setColorPalette:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setSceneView:(id)a3;
- (void)setTimeOffset:(double)a3;
- (void)setTritiumProgress:(double)a3;
- (void)unloadSceneForDisplayMode:(int64_t)a3;
@end

@implementation NTKEsterbrookSceneCoordinator

- (void)setSceneView:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView) = a3;
  v3 = a3;
}

- (NTKEsterbrookSceneCoordinatorDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NTKEsterbrookColorPalette)colorPalette
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setColorPalette:(id)a3
{
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_colorPalette) = a3;
  swift_unknownObjectRetain_n();
  v4 = self;
  swift_unknownObjectRelease();
  sub_23BE0F96C();
  swift_unknownObjectRelease();
}

- (NTKEsterbrookSceneCoordinator)initWithFrame:(CGRect)a3 device:(id)a4 handsView:(id)a5 colorPalette:(id)a6 faceState:(id)a7 sourceConfiguration:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = a5;
  swift_unknownObjectRetain();
  return sub_23BE0FD40(v16, a5, a6, a7, a8, x, y, width, height);
}

- (void)applyFaceState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BE10250(v4, 0);
}

- (void)screenDidTurnOffWithAnimated:(BOOL)a3
{
  v3 = self;
  sub_23BE12F58();
}

- (void)setTritiumProgress:(double)a3
{
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_tritiumProgress) = a3;
  v3 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  *&v3[OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress] = a3;
  v5 = self;
  v4 = v3;
  sub_23BE05CF8();
}

- (void)didTransitionToTritiumOn
{
  v2 = self;
  sub_23BE117C4();
}

- (void)didTransitionToTritiumOff
{
  v2 = self;
  sub_23BE119C8();
}

- (void)prepareForTransitionToTritiumOn
{
  v2 = self;
  sub_23BE11BC8();
}

- (void)layoutForDateChange
{
  v2 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  v4 = self;
  v3 = v2;
  sub_23BE09AC8(1);
}

- (void)handleSignificantTimeChange
{
  v2 = self;
  sub_23BE11D90();
}

- (void)prepareNextSceneForDisplayMode:(int64_t)a3
{
  v4 = self;
  sub_23BE10DC4(a3);
}

- (void)unloadSceneForDisplayMode:(int64_t)a3
{
  v4 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  v6 = self;
  v5 = v4;
  sub_23BE083C0(a3);
}

- (void)prepareForEditing
{
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_isEditing) = 1;
  v2 = self;
  sub_23BE0F96C();
}

- (void)cleanupAfterEditing
{
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_isEditing) = 0;
  v2 = self;
  sub_23BE0F96C();
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = sub_23BDE652C(&unk_27E1C8BA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (a3)
  {
    sub_23BE32688();
    v9 = sub_23BE32698();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_23BE32698();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR___NTKEsterbrookSceneCoordinator_overrideDate;
  swift_beginAccess();
  v12 = self;
  sub_23BE12B44(v8, self + v11);
  swift_endAccess();
  v13 = *(v12 + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  sub_23BE09AC8(1);

  sub_23BDF5A94(v8, &unk_27E1C8BA0);
}

- (void)setTimeOffset:(double)a3
{
  v3 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  v4 = self;
  v5 = v3;
  sub_23BE09AC8(1);
}

- (NTKEsterbrookSceneCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)screenWillTurnOnAnimated:
{
  if (qword_27E1C7A40 != -1)
  {
    swift_once();
  }

  v0 = sub_23BE327D8();
  sub_23BDEA278(v0, qword_27E1DBEC8);
  oslog = sub_23BE327B8();
  v1 = sub_23BE329F8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23BDE0000, oslog, v1, "screenWillTurnOn", v2, 2u);
    MEMORY[0x23EEBF030](v2, -1, -1);
  }
}

@end