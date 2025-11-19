@interface QLRemoteUIHostViewController
+ (void)remotePreviewCollectionWithCompletionHandler:(id)a3;
- (BOOL)isAvailable;
- (NSUUID)uuid;
- (_TtC9QuickLook28QLRemoteUIHostViewController)initWithCoder:(id)a3;
- (_TtC9QuickLook28QLRemoteUIHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)accessoryView;
- (void)configureWithNumberOfItems:(int64_t)a3 currentPreviewItemIndex:(unint64_t)a4 itemProvider:(id)a5 stateManager:(id)a6;
- (void)configureWithNumberOfItems:(int64_t)a3 currentPreviewItemIndex:(unint64_t)a4 itemProvider:(id)a5 stateManager:(id)a6 fullScreen:(BOOL)a7;
- (void)invalidateServiceWithCompletionHandler:(id)a3;
- (void)keyCommandsWithCompletionHandler:(id)a3;
- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)a3;
- (void)notifyStateRestorationUserInfo:(id)a3;
- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)a3;
- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)a3;
- (void)saveCurrentPreviewEditsSynchronously:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)a3 previewItemType:(unint64_t)a4 completionHandler:(id)a5;
- (void)setAppearance:(id)a3 animated:(BOOL)a4;
- (void)setUuid:(id)a3;
- (void)shouldDisplayLockActivityWithCompletionHandler:(id)a3;
- (void)startTransitionWithSourceViewProvider:(QLTransitionContext *)a3 transitionController:(QLTransitionControllerProtocol *)a4 presenting:(BOOL)a5 useInteractiveTransition:(BOOL)a6 completionHandler:(id)a7;
- (void)toggleDebugView;
- (void)toolbarButtonPressedWithIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (void)toolbarButtonsForTraitCollection:(UITraitCollection *)a3 withCompletionHandler:(id)a4;
- (void)viewDidLoad;
@end

@implementation QLRemoteUIHostViewController

- (BOOL)isAvailable
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  v4 = self;
  sub_23A7EE014();

  v5 = *(v3 + 17);

  return v5;
}

- (NSUUID)uuid
{
  v3 = sub_23A7EDFE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_23A7D1C98(v7);

  v9 = sub_23A7EDFB4();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setUuid:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDFC4();
  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v13 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  swift_beginAccess();
  v14 = self;
  sub_23A7D1E84(v7, self + v13);
  swift_endAccess();
}

- (_TtC9QuickLook28QLRemoteUIHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_23A7EE844();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_23A7D25D0(v5, v7, a4);
}

- (_TtC9QuickLook28QLRemoteUIHostViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel;
  v5 = type metadata accessor for QLHostRemoteViewModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_23A7CD4D8();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController) = 0;
  v8 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  v9 = sub_23A7EDFE4();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  result = sub_23A7EED64();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for QLRemoteUIHostViewController();
  v2 = v3.receiver;
  [(QLRemoteUIHostViewController *)&v3 viewDidLoad];
  sub_23A7EDFF4();
}

+ (void)remotePreviewCollectionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEF20;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FEF28;
  v13[5] = v12;
  sub_23A7E3DC0(0, 0, v8, &unk_23A7FEF30, v13);
}

- (void)toggleDebugView
{
  v2 = self;
  QLRemoteUIHostViewController.toggleDebugView()();
}

- (id)accessoryView
{
  v2 = self;
  v3 = sub_23A7D1800();
  v4 = [v3 view];

  if (v4)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)configureWithNumberOfItems:(int64_t)a3 currentPreviewItemIndex:(unint64_t)a4 itemProvider:(id)a5 stateManager:(id)a6 fullScreen:(BOOL)a7
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = self;
  QLRemoteUIHostViewController.configure(withNumberOfItems:currentPreviewItemIndex:itemProvider:stateManager:fullScreen:)(a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)configureWithNumberOfItems:(int64_t)a3 currentPreviewItemIndex:(unint64_t)a4 itemProvider:(id)a5 stateManager:(id)a6
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = self;
  QLRemoteUIHostViewController.configure(withNumberOfItems:currentPreviewItemIndex:itemProvider:stateManager:)(a3, a4, a5, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)toolbarButtonsForTraitCollection:(UITraitCollection *)a3 withCompletionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FEED8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23A7FEEE0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_23A7E3DC0(0, 0, v10, &unk_23A7FEEE8, v15);
}

- (void)toolbarButtonPressedWithIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FEEB8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23A7FEEC0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_23A7E3DC0(0, 0, v10, &unk_23A7FEEC8, v15);
}

- (void)shouldDisplayLockActivityWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEE98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FEEA0;
  v13[5] = v12;
  v14 = self;
  sub_23A7E3DC0(0, 0, v8, &unk_23A7FEEA8, v13);
}

- (void)keyCommandsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEE70;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FEE78;
  v13[5] = v12;
  v14 = self;
  sub_23A7E3DC0(0, 0, v8, &unk_23A7FEE80, v13);
}

- (void)setAppearance:(id)a3 animated:(BOOL)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = a3;
  v12 = self;
  sub_23A7EEA44();
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  sub_23A7EEA34();
  v14 = v11;
  v15 = v12;
  v16 = sub_23A7EEA24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v15;
  *(v17 + 40) = v14;
  *(v17 + 48) = a4;
  sub_23A7B9D94(0, 0, v10, &unk_23A7FEE58, v17);
}

- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = self;
  sub_23A7EEA44();
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_23A7EEA34();
  v11 = v9;
  v12 = sub_23A7EEA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a3;
  sub_23A7B9D94(0, 0, v8, &unk_23A7FEE50, v13);
}

- (void)notifyStateRestorationUserInfo:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  if (a3)
  {
    a3 = sub_23A7EE7D4();
  }

  v9 = self;
  sub_23A7EEA44();
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_23A7EEA34();
  v11 = v9;
  v12 = sub_23A7EEA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a3;
  sub_23A7B9D94(0, 0, v8, &unk_23A7FEE48, v13);
}

- (void)startTransitionWithSourceViewProvider:(QLTransitionContext *)a3 transitionController:(QLTransitionControllerProtocol *)a4 presenting:(BOOL)a5 useInteractiveTransition:(BOOL)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 33) = a6;
  *(v18 + 40) = v17;
  *(v18 + 48) = self;
  v19 = sub_23A7EEA64();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_23A7FEE28;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_23A7FEE30;
  v21[5] = v20;
  v22 = a3;
  swift_unknownObjectRetain();
  v23 = self;
  sub_23A7E3DC0(0, 0, v16, &unk_23A7FEE38, v21);
}

- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEDE8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FEDF0;
  v13[5] = v12;
  v14 = self;
  sub_23A7E3DC0(0, 0, v8, &unk_23A7FEDF8, v13);
}

- (void)invalidateServiceWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEDC8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FEDD0;
  v13[5] = v12;
  v14 = self;
  sub_23A7E3DC0(0, 0, v8, &unk_23A7FEDD8, v13);
}

- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FED98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FEDA0;
  v13[5] = v12;
  v14 = self;
  sub_23A7E3DC0(0, 0, v8, &unk_23A7FCF60, v13);
}

- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)a3 previewItemType:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_23A7A2DE4;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  QLRemoteUIHostViewController.saveIntoPhotoLibraryMedia(with:previewItemType:completionHandler:)(v10, a4, v8, v9);
  sub_23A7A2DD4(v8);
}

- (void)saveCurrentPreviewEditsSynchronously:(BOOL)a3 withCompletionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FED30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23A7FCE70;
  v15[5] = v14;
  v16 = self;
  sub_23A7E3DC0(0, 0, v10, &unk_23A7FED50, v15);
}

@end