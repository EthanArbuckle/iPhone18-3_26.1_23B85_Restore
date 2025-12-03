@interface QLAppExtensionSceneProxy
- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager;
- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager fullScreen:(BOOL)screen;
- (void)getNetworkObserverWithCompletionBlock:(id)block;
- (void)getPreviewCollectionUUIDWithCompletionHandlerWithCompletionHandler:(id)handler;
- (void)invalidateServiceWithCompletionHandler:(id)handler;
- (void)keyCommandsWithCompletionHandler:(id)handler;
- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)actions;
- (void)notifyStateRestorationUserInfo:(id)info;
- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler;
- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)handler;
- (void)preparePreviewCollectionForInvalidationWithCompletionHandlerWithCompletionHandler:(id)handler;
- (void)saveCurrentPreviewEditsSynchronously:(BOOL)synchronously withCompletionHandler:(id)handler;
- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)wrapper previewItemType:(unint64_t)type completionHandler:(id)handler;
- (void)setAllowInteractiveTransitions:(BOOL)transitions completionHandler:(id)handler;
- (void)setAppearance:(id)appearance animated:(BOOL)animated;
- (void)setNotificationCenter:(id)center;
- (void)shouldDisplayLockActivityWithCompletionHandler:(id)handler;
- (void)startTransitionWithSourceViewProvider:(QLTransitionContext *)provider transitionController:(QLTransitionControllerProtocol *)controller presenting:(BOOL)presenting useInteractiveTransition:(BOOL)transition completionHandler:(id)handler;
- (void)toolbarButtonPressedWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)toolbarButtonsForTraitCollection:(UITraitCollection *)collection withCompletionHandler:(id)handler;
@end

@implementation QLAppExtensionSceneProxy

- (void)setAllowInteractiveTransitions:(BOOL)transitions completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = transitions;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FCF90;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23A7FCF98;
  v15[5] = v14;

  sub_23A7E3DC0(0, 0, v10, &unk_23A7FCFA0, v15);
}

- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager fullScreen:(BOOL)screen
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_23A799214(items, index, provider, manager, screen);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_23A799558(items, index, provider, manager);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)toolbarButtonsForTraitCollection:(UITraitCollection *)collection withCompletionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = collection;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FCF70;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23A7FCF78;
  v15[5] = v14;
  collectionCopy = collection;

  sub_23A7E3DC0(0, 0, v10, &unk_23A7FCF80, v15);
}

- (void)toolbarButtonPressedWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FCF50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23A7FEDA0;
  v15[5] = v14;
  identifierCopy = identifier;

  sub_23A7E3DC0(0, 0, v10, &unk_23A7FCF60, v15);
}

- (void)shouldDisplayLockActivityWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCF30;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FCF38;
  v13[5] = v12;

  sub_23A7E3DC0(0, 0, v8, &unk_23A7FCF40, v13);
}

- (void)keyCommandsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCF10;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FCF18;
  v13[5] = v12;

  sub_23A7E3DC0(0, 0, v8, &unk_23A7FCF20, v13);
}

- (void)setAppearance:(id)appearance animated:(BOOL)animated
{
  appearanceCopy = appearance;

  sub_23A79C370(appearanceCopy, animated);
}

- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)actions
{

  sub_23A79C5C0(actions);
}

- (void)notifyStateRestorationUserInfo:(id)info
{
  if (info)
  {
    v3 = sub_23A7EE7D4();
  }

  else
  {
    v3 = 0;
  }

  sub_23A79C7E4(v3);
}

- (void)startTransitionWithSourceViewProvider:(QLTransitionContext *)provider transitionController:(QLTransitionControllerProtocol *)controller presenting:(BOOL)presenting useInteractiveTransition:(BOOL)transition completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  *(v18 + 16) = provider;
  *(v18 + 24) = controller;
  *(v18 + 32) = presenting;
  *(v18 + 33) = transition;
  *(v18 + 40) = v17;
  *(v18 + 48) = self;
  v19 = sub_23A7EEA64();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_23A7FCEF0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_23A7FCEF8;
  v21[5] = v20;
  providerCopy = provider;
  swift_unknownObjectRetain();

  sub_23A7E3DC0(0, 0, v16, &unk_23A7FCF00, v21);
}

- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCEC8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FCED0;
  v13[5] = v12;

  sub_23A7E3DC0(0, 0, v8, &unk_23A7FCED8, v13);
}

- (void)invalidateServiceWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCEA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FCEB0;
  v13[5] = v12;

  sub_23A7E3DC0(0, 0, v8, &unk_23A7FCEB8, v13);
}

- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCE88;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FCE90;
  v13[5] = v12;

  sub_23A7E3DC0(0, 0, v8, &unk_23A7FCE98, v13);
}

- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)wrapper previewItemType:(unint64_t)type completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_23A7A2DE4;
  }

  else
  {
    v8 = 0;
  }

  wrapperCopy = wrapper;

  sub_23A79FA74(wrapperCopy, type, v7, v8);
  sub_23A7A2DD4(v7);
}

- (void)saveCurrentPreviewEditsSynchronously:(BOOL)synchronously withCompletionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = synchronously;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FCE68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23A7FCE70;
  v15[5] = v14;

  sub_23A7E3DC0(0, 0, v10, &unk_23A7FED50, v15);
}

- (void)getPreviewCollectionUUIDWithCompletionHandlerWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  _Block_copy(v3);

  sub_23A7A2B6C(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)setNotificationCenter:(id)center
{
  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  sharedInstance = [v4 sharedInstance];
  if (sharedInstance)
  {
    v6 = sharedInstance;
    [sharedInstance setRemoteNotificationCenter_];
  }

  swift_unknownObjectRelease();
}

- (void)getNetworkObserverWithCompletionBlock:(id)block
{
  v3 = _Block_copy(block);
  sharedInstance = [objc_opt_self() sharedInstance];
  v3[2](v3, sharedInstance);
  _Block_release(v3);
}

- (void)preparePreviewCollectionForInvalidationWithCompletionHandlerWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  QLAppExtensionSceneProxy.preparePreviewCollectionForInvalidationWithCompletionHandler(completionHandler:)(sub_23A7A2B5C, v4);
}

@end