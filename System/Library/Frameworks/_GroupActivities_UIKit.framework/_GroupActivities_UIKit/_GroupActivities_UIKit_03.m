uint64_t lazy protocol witness table accessor for type _ShapeView<Bump, ForegroundStyle> and conformance _ShapeView<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 protocol witness for InsettableShape.inset(by:) in conformance PopoverBubble@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PopoverBubble(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PopoverBubble(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t UIScene.reactionEffectInteraction.getter()
{
  if (one-time initialization token for sceneComponentKey != -1)
  {
    swift_once();
  }

  v1 = static ReactionEffectSceneComponent.sceneComponentKey;
  if ([v0 _sceneComponentForKey_])
  {
    type metadata accessor for ReactionEffectSceneComponent();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  v3 = type metadata accessor for ReactionEffectSceneComponent();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v13.receiver = v4;
  v13.super_class = v3;
  v2 = objc_msgSendSuper2(&v13, sel_init);
  [v0 _registerSceneComponent_forKey_];
LABEL_7:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
  }

  else
  {
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {

      return 0;
    }

    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      return 0;
    }

    v11 = [v10 keyWindow];
    if (v11)
    {
      v12 = v11;
      v6 = UIView.firstReactionEffectInteraction.getter();
    }

    else
    {
      v6 = 0;
    }

    swift_unknownObjectWeakAssign();
  }

  return v6;
}

void UIScene.reactionEffectInteraction.setter(void *a1)
{
  if (one-time initialization token for sceneComponentKey != -1)
  {
    swift_once();
  }

  v3 = static ReactionEffectSceneComponent.sceneComponentKey;
  if (![v1 _sceneComponentForKey_])
  {
    goto LABEL_6;
  }

  type metadata accessor for ReactionEffectSceneComponent();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v5 = type metadata accessor for ReactionEffectSceneComponent();
    v6 = objc_allocWithZone(v5);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v7.receiver = v6;
    v7.super_class = v5;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    [v1 _registerSceneComponent_forKey_];
  }

  swift_unknownObjectWeakAssign();
}

uint64_t one-time initialization function for sceneComponentKey()
{
  result = MEMORY[0x23EEA6320](0xD00000000000005ALL, 0x800000023B75D520);
  static ReactionEffectSceneComponent.sceneComponentKey = result;
  return result;
}

uint64_t UIView.firstReactionEffectInteraction.getter()
{
  v1 = [v0 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x23EEA67C0](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v7 = v5;

            return v7;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for ReactionEffectInteraction(0);
        v5 = swift_dynamicCastClass();
        if (v5)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  v9 = [v0 subviews];
  type metadata accessor for UIView();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
LABEL_30:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v11 != i; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EEA67C0](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v15 = UIView.firstReactionEffectInteraction.getter();

    if (v15)
    {

      return v15;
    }
  }

  return 0;
}

uint64_t ReactionEffectSceneComponent.reactionEffectInteraction.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = result;
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        v3 = [v2 keyWindow];
        if (v3)
        {
          v4 = v3;
          v5 = UIView.firstReactionEffectInteraction.getter();
        }

        else
        {
          v5 = 0;
        }

        swift_unknownObjectWeakAssign();
        return v5;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

id ReactionEffectSceneComponent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReactionEffectSceneComponent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UIScene.reactionEffectSceneComponent.getter()
{
  if (one-time initialization token for sceneComponentKey != -1)
  {
    swift_once();
  }

  v1 = static ReactionEffectSceneComponent.sceneComponentKey;
  if ([v0 _sceneComponentForKey_])
  {
    type metadata accessor for ReactionEffectSceneComponent();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v3 = type metadata accessor for ReactionEffectSceneComponent();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v4;
  v6.super_class = v3;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  [v0 _registerSceneComponent_forKey_];
  return v5;
}

void key path setter for UIScene.reactionEffectInteraction : UIScene()
{
  v0 = UIScene.reactionEffectSceneComponent.getter();
  swift_unknownObjectWeakAssign();
}

void (*UIScene.reactionEffectInteraction.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  if (one-time initialization token for sceneComponentKey != -1)
  {
    swift_once();
  }

  v5 = static ReactionEffectSceneComponent.sceneComponentKey;
  v4[4].receiver = static ReactionEffectSceneComponent.sceneComponentKey;
  if ([v1 _sceneComponentForKey_])
  {
    type metadata accessor for ReactionEffectSceneComponent();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v7 = type metadata accessor for ReactionEffectSceneComponent();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4->receiver = v8;
  v4->super_class = v7;
  v6 = [(objc_super *)v4 init];
  [v1 _registerSceneComponent_forKey_];
LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 keyWindow];
        if (v14)
        {
          v15 = v14;
          v10 = UIView.firstReactionEffectInteraction.getter();
        }

        else
        {
          v10 = 0;
        }

        swift_unknownObjectWeakAssign();
        goto LABEL_12;
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

  v10 = Strong;
LABEL_12:

LABEL_19:
  v4[3].receiver = v10;
  return UIScene.reactionEffectInteraction.modify;
}

void UIScene.reactionEffectInteraction.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  p_receiver = &(*a1)[3].receiver;
  v3 = *p_receiver;
  super_class = (*a1)[3].super_class;
  receiver = (*a1)[4].receiver;
  if (a2)
  {
    v7 = v3;
    if ([(objc_class *)super_class _sceneComponentForKey:receiver])
    {
      type metadata accessor for ReactionEffectSceneComponent();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
LABEL_6:
        swift_unknownObjectWeakAssign();

        v13 = *p_receiver;
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    v10 = v2[3].super_class;
    v9 = v2[4].receiver;
    v11 = type metadata accessor for ReactionEffectSceneComponent();
    v12 = objc_allocWithZone(v11);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v2[1].receiver = v12;
    v2[1].super_class = v11;
    v8 = objc_msgSendSuper2(v2 + 1, sel_init);
    [(objc_class *)v10 _registerSceneComponent:v8 forKey:v9];
    goto LABEL_6;
  }

  if (![(objc_class *)(*a1)[3].super_class _sceneComponentForKey:receiver])
  {
    goto LABEL_10;
  }

  type metadata accessor for ReactionEffectSceneComponent();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v15 = v2[3].super_class;
    v14 = v2[4].receiver;
    v16 = type metadata accessor for ReactionEffectSceneComponent();
    v17 = objc_allocWithZone(v16);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v2[2].receiver = v17;
    v2[2].super_class = v16;
    v13 = objc_msgSendSuper2(v2 + 2, sel_init);
    [(objc_class *)v15 _registerSceneComponent:v13 forKey:v14];
  }

  swift_unknownObjectWeakAssign();

LABEL_12:

  free(v2);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed String?) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t (*ReactionPickerOverlayViewController.detailsView.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + direct field offset for ReactionPickerOverlayViewController.model);
  a1[1] = v2;
  *a1 = (*(*v2 + 320))();
  return ReactionPickerOverlayViewController.detailsView.modify;
}

uint64_t ReactionPickerOverlayViewController.detailsView.modify(uint64_t a1, char a2)
{
  v2 = *(**(a1 + 8) + 328);
  if ((a2 & 1) == 0)
  {
    return v2(*a1);
  }

  v2(v3);
}

uint64_t (*ReactionPickerOverlayViewController.selectedReaction.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + direct field offset for ReactionPickerOverlayViewController.model);
  a1[2] = v2;
  *a1 = (*(*v2 + 224))();
  a1[1] = v4;
  return ReactionPickerOverlayViewController.selectedReaction.modify;
}

uint64_t ReactionPickerOverlayViewController.selectedReaction.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(*a1[2] + 232);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  v4(v3, v2);
}

uint64_t (*ReactionPickerOverlayViewController.reactions.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + direct field offset for ReactionPickerOverlayViewController.model);
  a1[1] = v2;
  *a1 = (*(*v2 + 272))();
  return ReactionPickerOverlayViewController.reactions.modify;
}

uint64_t ReactionPickerOverlayViewController.reactions.modify(uint64_t a1, char a2)
{
  v2 = *(**(a1 + 8) + 280);
  if ((a2 & 1) == 0)
  {
    return v2(*a1);
  }

  v2(v3);
}

uint64_t (*ReactionPickerOverlayViewController.showingStatus.modify(uint64_t a1))(unsigned __int8 *a1)
{
  v2 = *(v1 + direct field offset for ReactionPickerOverlayViewController.model);
  *a1 = v2;
  *(a1 + 8) = (*(*v2 + 176))() & 1;
  return ReactionPickerViewModel.isShowingPickerInPopover.modify;
}

uint64_t key path getter for ReactionPickerOverlayViewController.onReaction : ReactionPickerOverlayViewController@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + class metadata base offset for ReactionPickerOverlayViewController + 176))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _sSSSgIegg_AAytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ReactionPickerOverlayViewController.onReaction : ReactionPickerOverlayViewController(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSSSgytIegnr_AAIegg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + class metadata base offset for ReactionPickerOverlayViewController + 184);
  sub_23B6FD304(v3);
  return v7(v6, v5);
}

uint64_t ReactionPickerOverlayViewController.onReaction.getter()
{
  v1 = (v0 + direct field offset for ReactionPickerOverlayViewController.onReaction);
  swift_beginAccess();
  v2 = *v1;
  sub_23B6FD304(*v1);
  return v2;
}

uint64_t ReactionPickerOverlayViewController.onReaction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for ReactionPickerOverlayViewController.onReaction);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

char *ReactionPickerOverlayViewController.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = v24 - v3;
  v5 = direct field offset for ReactionPickerOverlayViewController.model;
  type metadata accessor for ReactionPickerViewModel();
  swift_allocObject();
  *(v0 + v5) = ReactionPickerViewModel.init()();
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *(v0 + direct field offset for ReactionPickerOverlayViewController.subscriptions) = v6;
  swift_unknownObjectWeakInit();
  v7 = (v0 + direct field offset for ReactionPickerOverlayViewController.onReaction);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel();
  *v7 = 0;
  v7[1] = 0;
  v8 = EnvironmentObject.init()();
  v10 = v9;
  v11 = *(v0 + v5);

  v12 = static ObservableObject.environmentStore.getter();
  v27 = v8;
  v28 = v10;
  v29 = v12;
  v30 = v11;
  v24[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit25ReactionPickerOverlayViewVAA30_EnvironmentKeyWritingModifierVyAD0hiK5ModelCSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ReactionPickerOverlayView, _EnvironmentKeyWritingModifier<ReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>();
  v27 = AnyView.init<A>(_:)();
  v13 = UIHostingController.init(rootView:)();
  result = [v13 view];
  if (result)
  {
    v15 = result;
    v16 = [objc_opt_self() clearColor];
    [v15 setBackgroundColor_];

    [v13 setModalPresentationStyle_];
    [v13 setModalTransitionStyle_];
    v17 = direct field offset for ReactionPickerOverlayViewController.model;
    v18 = *&v13[direct field offset for ReactionPickerOverlayViewController.model];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *(*v18 + 376);

    v20(partial apply for closure #1 in ReactionPickerOverlayViewController.init(), v19);

    v21 = *(**&v13[v17] + 200);

    v21(v22);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    v23 = v26;
    Publisher<>.sink(receiveValue:)();

    (*(v25 + 8))(v4, v23);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ReactionPickerOverlayView, _EnvironmentKeyWritingModifier<ReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerOverlayView, _EnvironmentKeyWritingModifier<ReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerOverlayView, _EnvironmentKeyWritingModifier<ReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit25ReactionPickerOverlayViewVAA30_EnvironmentKeyWritingModifierVyAD0hiK5ModelCSgGGMd);
    lazy protocol witness table accessor for type ReactionPickerOverlayView and conformance ReactionPickerOverlayView();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ReactionPickerViewModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy22_GroupActivities_UIKit23ReactionPickerViewModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerOverlayView, _EnvironmentKeyWritingModifier<ReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReactionPickerOverlayView and conformance ReactionPickerOverlayView()
{
  result = lazy protocol witness table cache variable for type ReactionPickerOverlayView and conformance ReactionPickerOverlayView;
  if (!lazy protocol witness table cache variable for type ReactionPickerOverlayView and conformance ReactionPickerOverlayView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionPickerOverlayView and conformance ReactionPickerOverlayView);
  }

  return result;
}

void closure #1 in ReactionPickerOverlayViewController.init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = direct field offset for ReactionPickerOverlayViewController.model;
    v7 = *(**(Strong + direct field offset for ReactionPickerOverlayViewController.model) + 232);

    v7(a1, a2);

    v9 = (*((*MEMORY[0x277D85000] & *v5) + class metadata base offset for ReactionPickerOverlayViewController + 176))(v8);
    if (v9)
    {
      v10 = v9;
      v9(a1, a2);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
    }

    if (a2)
    {
      v11 = *(**(v5 + v6) + 184);

      v11(0);
    }

    else
    {
    }
  }
}

void closure #2 in ReactionPickerOverlayViewController.init()(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(**(Strong + direct field offset for ReactionPickerOverlayViewController.model) + 176);

    LOBYTE(v4) = v4(v5);

    if (!(v1 & 1 | ((v4 & 1) == 0)))
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id ReactionPickerOverlayViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ReactionPickerOverlayViewController.present(from:using:animated:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakAssign();
  v9 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = a2;
    v11[4] = a4;
    v11[5] = a5;
    v16[4] = partial apply for closure #1 in ReactionPickerOverlayViewController.present(from:using:animated:completion:);
    v16[5] = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed () -> ();
    v16[3] = &block_descriptor_4;
    v12 = _Block_copy(v16);
    v13 = v10;
    v14 = v5;
    v15 = a2;
    sub_23B6FD304(a4);

    [v13 presentViewController:v14 animated:0 completion:v12];

    _Block_release(v12);
  }
}

void closure #1 in ReactionPickerOverlayViewController.present(from:using:animated:completion:)(uint64_t a1, void *a2, void (*a3)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2;
    [v7 center];
    v10 = v9;
    v11 = [v7 frame];
    v13 = destructiveProjectEnumData for GroupActivitySharingResult(v11, v10, v12);
    (*(**(a1 + direct field offset for ReactionPickerOverlayViewController.model) + 136))([v7 convertPoint:v8 toView:v13]);
  }

  (*(**(a1 + direct field offset for ReactionPickerOverlayViewController.model) + 184))(1);
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
  if (a3)
  {
    a3();
  }
}

Swift::Void __swiftcall ReactionPickerOverlayViewController.dismiss()()
{
  (*(**(v0 + direct field offset for ReactionPickerOverlayViewController.model) + 184))(0);

  swift_unknownObjectWeakAssign();
}

void ReactionPickerOverlayViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for ReactionPickerOverlayViewController();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = partial apply for closure #1 in ReactionPickerOverlayViewController.viewWillTransition(to:with:);
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v10[3] = &block_descriptor_10;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void closure #1 in ReactionPickerOverlayViewController.viewWillTransition(to:with:)(uint64_t a1, char *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v4 = [a2 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 window];

      if (v6)
      {
        [v13 center];
        v8 = v7;
        v9 = [v13 frame];
        v11 = destructiveProjectEnumData for GroupActivitySharingResult(v9, v8, v10);
        (*(**&a2[direct field offset for ReactionPickerOverlayViewController.model] + 136))([v13 convertPoint:0 toView:v11]);

        v12 = v6;
      }

      else
      {
        v12 = v13;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void @objc ReactionPickerOverlayViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for ReactionPickerOverlayViewController();
  swift_unknownObjectRetain();
  v8 = v13.receiver;
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a5, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v12[4] = closure #1 in ReactionPickerOverlayViewController.viewWillTransition(to:with:)partial apply;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v12[3] = &block_descriptor_25;
  v10 = _Block_copy(v12);
  v11 = v8;

  [a5 animateAlongsideTransition:v10 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v10);
}

uint64_t ReactionPickerOverlayViewController.__ivar_destroyer()
{

  MEMORY[0x23EEA72C0](v0 + direct field offset for ReactionPickerOverlayViewController.sourceView);
  v1 = *(v0 + direct field offset for ReactionPickerOverlayViewController.onReaction);

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
}

id ReactionPickerOverlayViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReactionPickerOverlayViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ReactionPickerOverlayViewController.__ivar_destroyer(uint64_t a1)
{

  MEMORY[0x23EEA72C0](a1 + direct field offset for ReactionPickerOverlayViewController.sourceView);
  v2 = *(a1 + direct field offset for ReactionPickerOverlayViewController.onReaction);

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
}

void vtable thunk for UIHostingController.__allocating_init(rootView:) dispatching to ReactionPickerOverlayViewController.__allocating_init(rootView:)()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void vtable thunk for UIHostingController.__allocating_init(coder:rootView:) dispatching to ReactionPickerOverlayViewController.__allocating_init(coder:rootView:)()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t @objc ReactionPickerOverlayViewController.accessibilityPerformEscape()(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + class metadata base offset for ReactionPickerOverlayViewController + 224);
  v2 = a1;
  v1();

  return 1;
}

void specialized ReactionPickerOverlayViewController.init(coder:)()
{
  v1 = direct field offset for ReactionPickerOverlayViewController.model;
  type metadata accessor for ReactionPickerViewModel();
  swift_allocObject();
  *(v0 + v1) = ReactionPickerViewModel.init()();
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + direct field offset for ReactionPickerOverlayViewController.subscriptions) = v2;
  swift_unknownObjectWeakInit();
  v3 = (v0 + direct field offset for ReactionPickerOverlayViewController.onReaction);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ReactionPickerOverlayViewController()
{
  result = type metadata singleton initialization cache for ReactionPickerOverlayViewController;
  if (!type metadata singleton initialization cache for ReactionPickerOverlayViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSSSgytIegnr_AAIegg_TRTA_0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t Task.store(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a2;
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v10 = AnyCancellable.init(_:)();
  specialized Set._Variant.insert(_:)(&v12, v10);
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);

  return v4;
}

void one-time initialization function for reactionEffectURL()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, static ReactionEffectView.reactionEffectURL);
  v6 = __swift_project_value_buffer(v0, static ReactionEffectView.reactionEffectURL);
  type metadata accessor for ReactionEffectView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = MEMORY[0x23EEA6320](0xD000000000000012, 0x800000023B75B9B0);
  v10 = MEMORY[0x23EEA6320](24931, 0xE200000000000000);
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v6, v5, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ReactionEffectView.reactionEffectURL.unsafeMutableAddressor()
{
  if (one-time initialization token for reactionEffectURL != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return __swift_project_value_buffer(v0, static ReactionEffectView.reactionEffectURL);
}

uint64_t static ReactionEffectView.reactionEffectURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for reactionEffectURL != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static ReactionEffectView.reactionEffectURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *one-time initialization function for reactionToImageMap()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7UIImageCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static ReactionEffectView.reactionToImageMap = result;
  return result;
}

uint64_t one-time initialization function for stringAttrs()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B757EF0;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  *(inited + 64) = type metadata accessor for UIView(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  result = outlined destroy of NSObject?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
  static ReactionEffectView.stringAttrs = v5;
  return result;
}

uint64_t ReactionEffectView.reactions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionEffectView_reactions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void ReactionEffectView.renderReaction(_:at:)(SEL *a1, double a2, double a3)
{
  v157 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit8ReactionVSgMd);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  *&v145 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v155 = &v141 - v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v153 = *(v11 - 8);
  v154 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v151 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for DispatchQoS();
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v14);
  v149 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DispatchTime();
  v148 = *(v156 - 8);
  v17 = MEMORY[0x28223BE20](v156, v16);
  v146 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v147 = &v141 - v20;
  v21 = type metadata accessor for Reaction(0);
  v144 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v141 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = (&v141 - v31);
  v33 = type metadata accessor for URL();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIView(0, &lazy cache variable for type metadata for CAPackage);
  if (one-time initialization token for reactionEffectURL != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v33, static ReactionEffectView.reactionEffectURL);
  (*(v34 + 16))(v37, v38, v33);
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = @nonobjc CAPackage.__allocating_init(contentsOf:type:options:)(v37, v39, v40, 0);
  if (!v41)
  {
    goto LABEL_4;
  }

  v143 = v41;
  v50 = CAPackage.firstEmitterLayer()();
  if (!v50)
  {

LABEL_4:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.default);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = COERCE_DOUBLE(swift_slowAlloc());
      v162.m11 = v46;
      *v45 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v162);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_23B6FA000, v43, v44, "Cannot find emitter layer to render reaction from bundle: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v46);
      MEMORY[0x23EEA7200](*&v46, -1, -1);
      MEMORY[0x23EEA7200](v45, -1, -1);
    }

    return;
  }

  v51 = v50;
  v52 = [v51 superlayer];
  if (!v52)
  {

    goto LABEL_4;
  }

  v141 = v51;
  v142 = v52;
  v53 = v158;
  v54 = MEMORY[0x277D85000];
  v55 = (*((*MEMORY[0x277D85000] & *v158) + 0x58))();
  v56 = v157;
  v57 = specialized Set.contains(_:)(v157, v55);

  if (v57)
  {

    v58 = v141;
    return;
  }

  outlined init with copy of Reaction(v56, v29);
  v59 = (*((*v54 & *v53) + 0x68))(&v162);
  specialized Set._Variant.insert(_:)(v32, v29);
  outlined destroy of Reaction(v32);
  v59(&v162, 0);
  v60 = *(v56 + *(v21 + 20));
  if (!*(v60 + 16))
  {
    v70 = v141;

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Log.default);
    outlined init with copy of Reaction(v56, v25);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v142;
    if (!v74)
    {

      outlined destroy of Reaction(v25);
      return;
    }

    LODWORD(v158) = v73;
    v76 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    *&v162.m11 = v157;
    *v76 = 136315138;
    v77 = v155;
    outlined init with copy of Reaction(v25, v155);
    v78 = v144;
    (*(v144 + 56))(v77, 0, 1, v21);
    v79 = v77;
    v80 = v145;
    outlined init with copy of Reaction?(v79, *&v145);
    if ((*(v78 + 48))(COERCE_CGFLOAT(*&v80), 1, v21) == 1)
    {
      v81 = 0xE300000000000000;
      v82 = 7104878;
    }

    else
    {
      outlined init with take of Reaction(*&v80, v32);
      outlined init with copy of Reaction(v32, v29);
      v82 = String.init<A>(reflecting:)();
      v81 = v83;
      outlined destroy of Reaction(v32);
    }

    outlined destroy of NSObject?(v155, &_s22_GroupActivities_UIKit8ReactionVSgMd);
    outlined destroy of Reaction(v25);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v81, &v162);

    *(v76 + 4) = v84;
    _os_log_impl(&dword_23B6FA000, v72, v158, "No emojis to render for reaction: %s", v76, 0xCu);
    v85 = v157;
    __swift_destroy_boxed_opaque_existential_0(v157);
    MEMORY[0x23EEA7200](v85, -1, -1);
    MEMORY[0x23EEA7200](v76, -1, -1);

    goto LABEL_57;
  }

  v61 = v141;
  v62 = [v141 emitterCells];
  v63 = v142;
  v64 = v158;
  if (!v62)
  {
    goto LABEL_38;
  }

  v65 = v62;
  type metadata accessor for UIView(0, &lazy cache variable for type metadata for CAEmitterCell);
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_37:

LABEL_38:
    memset(&v161, 0, 32);
    goto LABEL_39;
  }

LABEL_20:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = MEMORY[0x23EEA67C0](0, v66);
  }

  else
  {
    if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_75;
    }

    v67 = *(v66 + 32);
  }

  v68 = v67;

  v69 = [v68 contents];

  if (v69)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v159 = 0u;
    v160 = 0u;
  }

  *&v161.m11 = v159;
  *&v161.m13 = v160;
  if (*(&v160 + 1))
  {
    outlined init with take of Any(&v161, &v162);
    outlined init with copy of Any(&v162, &v161);
    type metadata accessor for CGImageRef(0);
    swift_dynamicCast();
    v86 = v159;
    CGImageGetSizeAfterOrientation();
    v88 = v87;
    v90 = v89;

    __swift_destroy_boxed_opaque_existential_0(&v162);
    goto LABEL_40;
  }

LABEL_39:
  outlined destroy of NSObject?(&v161, &_sypSgMd);
  v90 = 76.0;
  v88 = 74.0;
LABEL_40:
  v91 = v88 * 0.125 + a2;
  v92 = a3 - v90 * 0.125;
  v56 = &_swift_FORCE_LOAD___swiftsimd____GroupActivities_UIKit;
  v93 = [v64 layer];
  [v93 bounds];
  v95 = v94;
  v97 = v96;

  v98 = [v143 rootLayer];
  if (v98)
  {
    v99 = v98;
    [v98 size];
    v101 = v100;
    v103 = v102;
  }

  else
  {
    v101 = v95;
    v103 = v97;
  }

  v104 = v101 / v95;
  if (v103 / v97 < v101 / v95)
  {
    v104 = v103 / v97;
  }

  v105 = 1.0 / v104;
  if (v105 <= 1.05)
  {
    v106 = v105;
  }

  else
  {
    v106 = 1.05;
  }

  [v63 setBeginTime_];
  [v63 setAnchorPoint_];
  [v63 setPosition_];
  v107 = *(MEMORY[0x277CD9DE8] + 80);
  *&v162.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v162.m33 = v107;
  v108 = *(MEMORY[0x277CD9DE8] + 112);
  *&v162.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v162.m43 = v108;
  v109 = *(MEMORY[0x277CD9DE8] + 16);
  *&v162.m11 = *MEMORY[0x277CD9DE8];
  *&v162.m13 = v109;
  v110 = *(MEMORY[0x277CD9DE8] + 48);
  *&v162.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v162.m23 = v110;
  CATransform3DScale(&v161, &v162, v106, v106, v106);
  [v63 setTransform_];
  [v63 setMasksToBounds_];
  [v61 setSeed_];
  [v61 setGeometryFlipped_];
  [v61 setMasksToBounds_];

  v111 = [objc_opt_self() mainScreen];
  [v111 scale];
  v113 = v112;

  v114 = [v61 emitterCells];
  if (!v114)
  {

LABEL_57:
    return;
  }

  v115 = v114;
  type metadata accessor for UIView(0, &lazy cache variable for type metadata for CAEmitterCell);
  v116 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v116 >> 62))
  {
    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

LABEL_71:

    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_71;
  }

LABEL_51:
  if ((v116 & 0xC000000000000001) != 0)
  {
    v117 = MEMORY[0x23EEA67C0](0, v116);
    goto LABEL_54;
  }

  if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v117 = *(v116 + 32);
LABEL_54:
  v157 = v117;

  v118 = [v61 emitterCells];
  v32 = &_swift_FORCE_LOAD___swiftsimd____GroupActivities_UIKit;
  if (v118)
  {
    v119 = v118;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v61 setEmitterCells_];
  }

  else
  {
    [v61 setEmitterCells_];
  }

  v121 = specialized static ReactionEffectView.cellContents(from:size:contentScale:)(v60, v88, v90, v113);
  v122 = [v121 CGImage];

  if (v122)
  {
    v123 = *(v60 + 16);
    [(SEL *)v157 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    m11 = v161.m11;
    [*&v161.m11 setContents_];
    [*&m11 setContentsScale_];
    [*&m11 setContentsRect_];
    [*&m11 setContentsFrameMode_];
    if (!HIDWORD(*(v60 + 16)))
    {
      [*&m11 setContentsFrameCount_];
      if (!HIDWORD(*(v60 + 16)))
      {
        [*&m11 setContentsFramesPerRow_];
        v125 = [v61 emitterCells];
        v155 = v122;
        v145 = m11;
        if (!v125)
        {
          [v61 setEmitterCells_];
LABEL_69:
          v131 = [v158 v56[357]];
          [v131 addSublayer_];

          type metadata accessor for UIView(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v144 = static OS_dispatch_queue.main.getter();
          v132 = v146;
          static DispatchTime.now()();
          v133 = v63;
          v134 = v147;
          + infix(_:_:)();
          v158 = v148[1];
          (v158)(v132, v156);
          v135 = swift_allocObject();
          *(v135 + 16) = v133;
          *&v162.m21 = partial apply for closure #1 in ReactionEffectView.renderReaction(_:at:);
          *&v162.m22 = v135;
          *&v162.m11 = MEMORY[0x277D85DD0];
          *&v162.m12 = 1107296256;
          *&v162.m13 = thunk for @escaping @callee_guaranteed () -> ();
          *&v162.m14 = &block_descriptor_5;
          v136 = _Block_copy(&v162);
          v148 = v133;

          v137 = v149;
          static DispatchQoS.unspecified.getter();
          *&v162.m11 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v138 = v151;
          v139 = v154;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v140 = v144;
          MEMORY[0x23EEA6610](v134, v137, v138, v136);

          _Block_release(v136);
          (*(v153 + 8))(v138, v139);
          (*(v150 + 8))(v137, v152);
          (v158)(v134, v156);
          return;
        }

        v126 = m11;
        v127 = v125;
        v128 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v162.m11 = v128;
        v129 = *&v126;
        MEMORY[0x23EEA63E0]();
        if (*((*&v162.m11 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v162.m11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_64:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (*&v162.m11)
          {
            v130.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v130.super.isa = 0;
          }

          [v61 v32[367]];

          goto LABEL_69;
        }

LABEL_78:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_64;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  __break(1u);
}

id @nonobjc CAPackage.__allocating_init(contentsOf:type:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v21);
  v9 = v8;
  v10 = MEMORY[0x23EEA6320](a2, a3);

  if (a4)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  v20 = 0;
  v12 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v9 type:v10 options:v11.super.isa error:&v20];

  v13 = v20;
  if (v12)
  {
    v14 = type metadata accessor for URL();
    v15 = *(*(v14 - 8) + 8);
    v16 = v13;
    v15(a1, v14);
  }

  else
  {
    v17 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 8))(a1, v18);
  }

  return v12;
}

CAEmitterLayer_optional __swiftcall CAPackage.firstEmitterLayer()()
{
  v1 = MEMORY[0x23EEA6320](0x72657474696D65, 0xE700000000000000);
  v2 = [v0 publishedObjectWithName_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    type metadata accessor for UIView(0, &lazy cache variable for type metadata for CAEmitterLayer);
    if (swift_dynamicCast())
    {
      v4 = v7;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of NSObject?(v10, &_sypSgMd);
  }

  v4 = [v0 rootLayer];
  if (v4)
  {
    v5 = v4;
    v6 = CAPackage.emitterLayer(in:)(v4);

    v4 = v6;
  }

LABEL_10:
  result.value.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reaction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  v9 = *(a1 + *(v4 + 20));
  specialized Set.hash(into:)(v17, v9);
  v10 = Hasher._finalize()();
  v11 = -1 << *(a2 + 32);
  v12 = v10 & ~v11;
  if (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  v14 = *(v5 + 72);
  while (1)
  {
    outlined init with copy of Reaction(*(a2 + 48) + v14 * v12, v8);
    if (static UUID.== infix(_:_:)() & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*&v8[*(v4 + 20)], v9))
    {
      break;
    }

    outlined destroy of Reaction(v8);
    v12 = (v12 + 1) & v13;
    if (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  outlined destroy of Reaction(v8);
  return 1;
}

id ReactionEffectView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ReactionEffectView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionEffectView_reactions] = MEMORY[0x277D84FA0];
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ReactionEffectView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id ReactionEffectView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ReactionEffectView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionEffectView_reactions] = MEMORY[0x277D84FA0];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ReactionEffectView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

Swift::Void __swiftcall ReactionEffectViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR____TtC22_GroupActivities_UIKit28ReactionEffectViewController_effectView];
  [v1 setUserInteractionEnabled_];

  [v0 setView_];
}

id ReactionEffectViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x23EEA6320]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ReactionEffectViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC22_GroupActivities_UIKit28ReactionEffectViewController_effectView;
  type metadata accessor for ReactionEffectView();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v8 = MEMORY[0x23EEA6320](a1, a2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for ReactionEffectViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id ReactionEffectViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit28ReactionEffectViewController_effectView;
  type metadata accessor for ReactionEffectView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ReactionEffectViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id ReactionEffectView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

CAEmitterLayer_optional __swiftcall CAPackage.emitterLayer(in:)(CALayer in)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = in.super.isa;
  }

  else
  {
    v6 = [(objc_class *)in.super.isa sublayers];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for UIView(0, &lazy cache variable for type metadata for CALayer);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
LABEL_20:
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = 0;
      while (v9 != v10)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x23EEA67C0](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v3 = CAPackage.emitterLayer(in:)(v11);

        ++v10;
        if (v3)
        {

          goto LABEL_17;
        }
      }
    }

    v3 = 0;
  }

LABEL_17:
  v13 = v3;
  result.value.super.super.isa = v13;
  result.is_nil = v5;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo7UIImageCGMd);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV22_GroupActivities_UIKit04WeakE22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVGMd);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v43 = v9;
    v44 = v5;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v42 = *(v6 + 72);
      v26 = v25 + v42 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v44);
        outlined init with take of WeakGroupActivityAssociationBox(*(v10 + 56) + 16 * v24, v45);
      }

      else
      {
        (*v37)(v43, v26, v44);
        outlined init with copy of WeakGroupActivityAssociationBox(*(v10 + 56) + 16 * v24, v45);
      }

      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v10 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v41)((*(v12 + 48) + v42 * v20), v43, v44);
      result = outlined init with take of WeakGroupActivityAssociationBox(v45, *(v12 + 56) + 16 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 16 * v15;

  return outlined assign with take of WeakGroupActivityAssociationBox(a1, v22);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of WeakGroupActivityAssociationBox(a3, a4[7] + 16 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v27 = type metadata accessor for UUID();
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v2);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV22_GroupActivities_UIKit04WeakE22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVGMd);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 16;
        outlined init with copy of WeakGroupActivityAssociationBox(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = outlined init with take of WeakGroupActivityAssociationBox(v31, *(v24 + 56) + v19);
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo7UIImageCGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

UIImage *specialized static ReactionEffectView.image(from:size:contentScale:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (one-time initialization token for reactionToImageMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static ReactionEffectView.reactionToImageMap;
  if (*(static ReactionEffectView.reactionToImageMap + 2))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v12)
    {
      v13 = *(v10[7] + 8 * v11);
LABEL_10:
      swift_endAccess();
      swift_beginAccess();

      v17 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = static ReactionEffectView.reactionToImageMap;
      static ReactionEffectView.reactionToImageMap = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a1, a2, isUniquelyReferenced_nonNull_native);

      static ReactionEffectView.reactionToImageMap = v19;
      swift_endAccess();
      return v17;
    }
  }

  v20.width = a3;
  v20.height = a4;
  UIGraphicsBeginImageContextWithOptions(v20, 0, a5);
  v14 = MEMORY[0x23EEA6320](a1, a2);
  if (one-time initialization token for stringAttrs != -1)
  {
    swift_once();
  }

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v14 drawInRect:isa withAttributes:{0.0, 0.0, a3, a4}];

  result = UIGraphicsGetImageFromCurrentImageContext();
  if (result)
  {
    v13 = result;
    UIGraphicsEndImageContext();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t specialized static ReactionEffectView.cellContents(from:size:contentScale:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  v8 = specialized Collection.first.getter(a1);
  if (v9)
  {
    if (*(v7 + 16) == 1)
    {
      v10 = specialized static ReactionEffectView.image(from:size:contentScale:)(v8, v9, a2, a3, a4);

      return v10;
    }
  }

  v61.width = *(v7 + 16) * a2;
  v61.height = a3;
  UIGraphicsBeginImageContextWithOptions(v61, 0, a4);
  v12 = v7 + 56;
  v13 = 1 << *(v7 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = 0;
  v19 = &static ReactionEffectView.reactionToImageMap;
  v56 = v7;
  while (v15)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_12:
    v58 = v17;
    v25 = (*(v7 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v15)))));
    v26 = *v25;
    v27 = v25[1];
    v28 = one-time initialization token for reactionToImageMap;

    if (v28 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v29 = *v19;
    v57 = v24;
    v59 = v26;
    if (*(*v19 + 2) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27), (v31 & 1) != 0))
    {
      v32 = *(v29[7] + 8 * v30);
    }

    else
    {
      v62.width = a2;
      v62.height = a3;
      UIGraphicsBeginImageContextWithOptions(v62, 0, a4);
      v34 = MEMORY[0x23EEA6320](v26, v27);
      if (one-time initialization token for stringAttrs != -1)
      {
        swift_once();
      }

      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v34 drawInRect:isa withAttributes:{0.0, 0.0, a2, a3}];

      v36 = UIGraphicsGetImageFromCurrentImageContext();
      if (!v36)
      {
        goto LABEL_43;
      }

      v32 = v36;
      UIGraphicsEndImageContext();
    }

    swift_endAccess();
    swift_beginAccess();
    v37 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *v19;
    v60 = *v19;
    v40 = v19;
    *v19 = 0x8000000000000000;
    v41 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v27);
    v43 = v39[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_41;
    }

    v47 = v42;
    if (v39[3] >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = v41;
        specialized _NativeDictionary.copy()();
        v41 = v53;
      }

      v48 = v59;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
      v48 = v59;
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v27);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_45;
      }

      if (v47)
      {
LABEL_8:
        v20 = v41;

        v21 = v60;
        v22 = v60[7];
        v23 = *(v22 + 8 * v20);
        *(v22 + 8 * v20) = v37;

        goto LABEL_9;
      }
    }

    v21 = v60;
    v60[(v41 >> 6) + 8] |= 1 << v41;
    v50 = (v60[6] + 16 * v41);
    *v50 = v48;
    v50[1] = v27;
    *(v60[7] + 8 * v41) = v37;
    v51 = v60[2];
    v45 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v45)
    {
      goto LABEL_42;
    }

    v60[2] = v52;
LABEL_9:
    v15 &= v15 - 1;
    static ReactionEffectView.reactionToImageMap = v21;
    swift_endAccess();
    [(UIImage *)v37 drawAtPoint:v58 * a2, 0.0];

    v7 = v56;
    v17 = v57;
    v19 = v40;
  }

  while (1)
  {
    v33 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v33 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v33);
    ++v18;
    if (v15)
    {
      v18 = v33;
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_40;
      }

      goto LABEL_12;
    }
  }

  v54 = UIGraphicsGetImageFromCurrentImageContext();
  if (!v54)
  {
    goto LABEL_44;
  }

  v55 = v54;
  UIGraphicsEndImageContext();
  return v55;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of Reaction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit8ReactionVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::UInt_optional __swiftcall _UnsafeBitSet.Iterator.next()()
{
  v0 = MEMORY[0x28214E698]();
  result.value = v0;
  result.is_nil = v1;
  return result;
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x2821DE370](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}