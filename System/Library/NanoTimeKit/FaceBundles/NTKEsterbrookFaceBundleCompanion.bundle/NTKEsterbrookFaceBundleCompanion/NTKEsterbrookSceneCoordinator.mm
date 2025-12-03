@interface NTKEsterbrookSceneCoordinator
- (NTKEsterbrookColorPalette)colorPalette;
- (NTKEsterbrookSceneCoordinator)init;
- (NTKEsterbrookSceneCoordinator)initWithFrame:(CGRect)frame device:(id)device handsView:(id)view colorPalette:(id)palette faceState:(id)state sourceConfiguration:(id)configuration;
- (NTKEsterbrookSceneCoordinatorDelegate)delegate;
- (void)applyFaceState:(id)state;
- (void)cleanupAfterEditing;
- (void)didTransitionToTritiumOff;
- (void)didTransitionToTritiumOn;
- (void)handleSignificantTimeChange;
- (void)layoutForDateChange;
- (void)prepareForEditing;
- (void)prepareForTransitionToTritiumOn;
- (void)prepareNextSceneForDisplayMode:(int64_t)mode;
- (void)screenDidTurnOffWithAnimated:(BOOL)animated;
- (void)screenWillTurnOnAnimated:;
- (void)setColorPalette:(id)palette;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setSceneView:(id)view;
- (void)setTimeOffset:(double)offset;
- (void)setTritiumProgress:(double)progress;
- (void)unloadSceneForDisplayMode:(int64_t)mode;
@end

@implementation NTKEsterbrookSceneCoordinator

- (void)setSceneView:(id)view
{
  v4 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView) = view;
  viewCopy = view;
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

- (void)setColorPalette:(id)palette
{
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_colorPalette) = palette;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  sub_23BE0F96C();
  swift_unknownObjectRelease();
}

- (NTKEsterbrookSceneCoordinator)initWithFrame:(CGRect)frame device:(id)device handsView:(id)view colorPalette:(id)palette faceState:(id)state sourceConfiguration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  viewCopy = view;
  swift_unknownObjectRetain();
  return sub_23BE0FD40(deviceCopy, view, palette, state, configuration, x, y, width, height);
}

- (void)applyFaceState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_23BE10250(stateCopy, 0);
}

- (void)screenDidTurnOffWithAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_23BE12F58();
}

- (void)setTritiumProgress:(double)progress
{
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_tritiumProgress) = progress;
  v3 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  *&v3[OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress] = progress;
  selfCopy = self;
  v4 = v3;
  sub_23BE05CF8();
}

- (void)didTransitionToTritiumOn
{
  selfCopy = self;
  sub_23BE117C4();
}

- (void)didTransitionToTritiumOff
{
  selfCopy = self;
  sub_23BE119C8();
}

- (void)prepareForTransitionToTritiumOn
{
  selfCopy = self;
  sub_23BE11BC8();
}

- (void)layoutForDateChange
{
  v2 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  selfCopy = self;
  v3 = v2;
  sub_23BE09AC8(1);
}

- (void)handleSignificantTimeChange
{
  selfCopy = self;
  sub_23BE11D90();
}

- (void)prepareNextSceneForDisplayMode:(int64_t)mode
{
  selfCopy = self;
  sub_23BE10DC4(mode);
}

- (void)unloadSceneForDisplayMode:(int64_t)mode
{
  v4 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  selfCopy = self;
  v5 = v4;
  sub_23BE083C0(mode);
}

- (void)prepareForEditing
{
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_isEditing) = 1;
  selfCopy = self;
  sub_23BE0F96C();
}

- (void)cleanupAfterEditing
{
  *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_isEditing) = 0;
  selfCopy = self;
  sub_23BE0F96C();
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v6 = sub_23BDE652C(&unk_27E1C8BA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (date)
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
  selfCopy = self;
  sub_23BE12B44(v8, self + v11);
  swift_endAccess();
  v13 = *(selfCopy + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  sub_23BE09AC8(1);

  sub_23BDF5A94(v8, &unk_27E1C8BA0);
}

- (void)setTimeOffset:(double)offset
{
  v3 = *(self + OBJC_IVAR___NTKEsterbrookSceneCoordinator_sceneView);
  selfCopy = self;
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