Swift::Void __swiftcall TipUIPopoverViewController.loadView()()
{
  type metadata accessor for TipUIPopoverViewController.Container();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

Swift::Void __swiftcall TipUIPopoverViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_1A361EA14();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  sub_1A362304C();
  swift_unknownObjectRelease();
}

void sub_1A3617E9C()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3617F70();
  }

  else
  {
  }
}

uint64_t sub_1A3617F70()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TipUIWrapperView();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3614ED8(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1A35A6588(v4, &qword_1EB0EF8C0);
  }

  else
  {
    sub_1A3619D7C(v4, v7, type metadata accessor for TipUIWrapperView);
    v8 = *(MEMORY[0x1E69DE098] + 8);
    v9 = [v0 traitCollection];
    [v9 horizontalSizeClass];

    [v1 setPreferredContentSize_];
    sub_1A3619DDC(v7, type metadata accessor for TipUIWrapperView);
  }

  *&result = COERCE_DOUBLE(sub_1A3614F50());
  if ((v12 & 1) == 0)
  {
    v13 = result;
    v14 = v11;
    *&result = COERCE_DOUBLE(sub_1A3614FEC());
    if ((v16 & 1) != 0 || (*&v13 == *&result ? (v17 = *&v14 == v15) : (v17 = 0), !v17))
    {
      *&result = COERCE_DOUBLE(sub_1A36150F0(v13, v14, 0));
    }
  }

  return result;
}

Swift::Void __swiftcall TipUIPopoverViewController.viewDidLayoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  v1 = sub_1A3614F50();
  if ((v3 & 1) == 0)
  {
    v4 = v1;
    v5 = v2;
    v6 = COERCE_DOUBLE(sub_1A3614FEC());
    if ((v8 & 1) != 0 || (*&v4 == v6 ? (v9 = *&v5 == v7) : (v9 = 0), !v9))
    {
      sub_1A36150F0(v4, v5, 0);
    }
  }
}

void sub_1A3618234(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_5();
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = v4;
  a4();
}

Swift::Void __swiftcall TipUIPopoverViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  sub_1A3617F70();
}

Swift::Void __swiftcall TipUIPopoverViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1);
  v3 = *&v1[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear];
  if (v3)
  {

    v3(v4);
    sub_1A35BBDF4(v3);
  }
}

void sub_1A36183FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_11();
  }

  v8 = a1;
  a5(a3);
}

double sub_1A361856C(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9A0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(v6 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9A8);
  sub_1A362203C();
  *v10 = KeyPath;
  sub_1A35B4270(v2, v8);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9B0));
  v12 = sub_1A36219FC();
  [v12 sizeThatFits_];
  v14 = v13;

  return v14;
}

id TipUIPopoverViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A3622B5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TipUIPopoverViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_delegate;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for TipUIPopoverViewController.Delegate()) init];
  v8 = &v3[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_hostingView] = 0;
  if (a2)
  {
    v9 = sub_1A3622B5C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id TipUIPopoverViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TipUIPopoverViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_delegate;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for TipUIPopoverViewController.Delegate()) init];
  v5 = &v1[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_hostingView] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1A3618B50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (sub_1A3622DBC())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = &qword_1EB0EEF98[13];
    if (Strong && (v5 = Strong, v6 = [Strong arrowDirection], v5, v7 = sub_1A35FBD7C(v6), v7 != 4))
    {
      v1[OBJC_IVAR____TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container_arrowEdge] = v7;
LABEL_14:
      if (v1[v4[305]] == 4)
      {
        v20.receiver = v1;
        v20.super_class = ObjectType;
        objc_msgSendSuper2(&v20, sel_safeAreaInsets);
      }

      else
      {
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
      }
    }

    else
    {
      v21.receiver = v1;
      v21.super_class = ObjectType;
      v19 = ObjectType;
      objc_msgSendSuper2(&v21, sel_safeAreaInsets);
      sub_1A361DC5C(v8, v9, v10, v11);
      v13 = v12;
      v14 = (v12 + 40);
      v15 = -*(v12 + 16);
      v16 = -1;
      while (1)
      {
        if (v15 + v16 == -1)
        {

          ObjectType = v19;
          v4 = qword_1EB0EEF98 + 104;
          goto LABEL_14;
        }

        if (++v16 >= *(v13 + 16))
        {
          break;
        }

        v17 = *(v14 - 8);
        v18 = *v14;
        sub_1A3622E3C();
        sub_1A3622E2C();
        sub_1A3622DFC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v14 += 2;

        if (v18 == 13.0)
        {

          v4 = &qword_1EB0EEF98[13];
          v1[OBJC_IVAR____TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container_arrowEdge] = v17;
          ObjectType = v19;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v22.receiver = v0;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, sel_safeAreaInsets);
  }
}

id sub_1A3618DD8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container_arrowEdge] = 4;
  swift_unknownObjectWeakInit();
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1A3618F3C(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container_arrowEdge] = 4;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1A3618FEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void *))
{
  OUTLINED_FUNCTION_17_5();
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_11();
  }

  v7 = a5(a3);

  return v7;
}

void *sub_1A361920C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 presentationController:a1 prepareAdaptivePresentationController:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A361938C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  if (([Strong respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = [v5 presentationController:a1 viewControllerForAdaptivePresentationStyle:a2];
  swift_unknownObjectRelease();
  return v6;
}

void *sub_1A36194FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 presentationController:a1 willPresentWithAdaptiveStyle:a2 transitionCoordinator:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A36196A4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v3 = Strong;
  if ([Strong respondsToSelector_])
  {
    v4 = [v3 presentationControllerShouldDismiss_];
  }

  else
  {
    v4 = 1;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_1A361980C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  OUTLINED_FUNCTION_17_5();
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_11();
  }

  v8 = a3;
  v9 = v5;
  sub_1A36198F0(v8, a5);
}

void *sub_1A36198F0(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1A361998C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 popoverPresentationController:a1 willRepositionPopoverToRect:a2 inView:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A3619B24()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1A3619C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A35ABFF4(a1, &v5 - v3, &qword_1EB0EF9B8);
  return sub_1A3621C1C();
}

void sub_1A3619CF8(uint64_t a1, void *a2)
{
  sub_1A35CDC10(0, &qword_1ED81D9A8);
  v3 = sub_1A3622CBC();

  [a2 setPassthroughViews_];
}

uint64_t sub_1A3619D7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A3619DDC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1A3619E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    sub_1A3621A0C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for TipUIWrapperView();
  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t TipUIView.backgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TipViewEnvironment();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1A3619E9C(v13 - v9);
  v11 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    sub_1A35A6588(v10, &qword_1EB0EF8C0);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    sub_1A35ADD70(v6);
    sub_1A35ABFF4(v6 + *(v2 + 32), v13, &qword_1EB0EED38);
    sub_1A361BC3C();
    result = sub_1A35A63BC(v13, a1);
    if (*(&v15 + 1))
    {
      return sub_1A35A6588(&v14, &unk_1EB0EF950);
    }
  }

  else
  {
    sub_1A35A6350((v10 + 112), &v14);
    sub_1A35A6588(v10, &qword_1EB0EF8C0);
    return sub_1A35A63BC(&v14, a1);
  }

  return result;
}

uint64_t TipUIView.backgroundStyle.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  type metadata accessor for TipUIWrapperView();
  v15 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A35B42D4(v2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((v1 + 112), a1);
    *(v1 + 152) = 1;
    sub_1A35B42D4(v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

void (*TipUIView.backgroundStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIView.backgroundStyle.getter(v1);
  return sub_1A361A238;
}

double TipUIView.cornerRadius.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_10(v3, v9);
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 160);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
  return v7;
}

uint64_t TipUIView.cornerRadius.setter(double a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_4();
  sub_1A3619E9C(v1);
  type metadata accessor for TipUIWrapperView();
  v7 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v7, v8, v9))
  {
    v10 = OUTLINED_FUNCTION_17();
    sub_1A35ABFF4(v10, v11, v12);
    sub_1A35B42D4(v2);
    v13 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v13, v14);
  }

  else
  {
    *(v1 + 160) = a1;
    sub_1A35B42D4(v1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

uint64_t TipUIView.cornerRadius.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = TipUIView.cornerRadius.getter();
  return OUTLINED_FUNCTION_18();
}

double TipUIView.imageSize.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_10(v3, v9);
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 224);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
  return v7;
}

uint64_t TipUIView.imageSize.setter(double a1, double a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_4();
  sub_1A3619E9C(v2);
  type metadata accessor for TipUIWrapperView();
  v9 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v9, v10, v11))
  {
    v12 = OUTLINED_FUNCTION_17();
    sub_1A35ABFF4(v12, v13, v14);
    sub_1A35B42D4(v3);
    v15 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v15, v16);
  }

  else
  {
    *(v2 + 224) = a1;
    *(v2 + 232) = a2;
    *(v2 + 240) = 1;
    sub_1A35B42D4(v2);
  }

  return sub_1A35A6588(v2, &qword_1EB0EF8C0);
}

uint64_t TipUIView.imageSize.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = TipUIView.imageSize.getter();
  *(a1 + 8) = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t TipUIView.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_2(v5, v10);
  type metadata accessor for TipUIWrapperView();
  v6 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v6, v7, v8))
  {
    result = sub_1A35A6588(v1, &qword_1EB0EF8C0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    sub_1A35ABFF4(v1 + 248, a1, &unk_1EB0EF950);
    return sub_1A35A6588(v1, &qword_1EB0EF8C0);
  }

  return result;
}

uint64_t TipUIView.imageStyle.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  type metadata accessor for TipUIWrapperView();
  v15 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A35B42D4(v2);
    sub_1A35A6588(a1, &unk_1EB0EF950);
    v21 = OUTLINED_FUNCTION_4_16();
  }

  else
  {
    sub_1A36107DC(a1, v1 + 248);
    sub_1A35B42D4(v1);
    v22 = &unk_1EB0EF950;
    v21 = a1;
  }

  sub_1A35A6588(v21, v22);
  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

void (*TipUIView.imageStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIView.imageStyle.getter(v1);
  return sub_1A361A950;
}

void sub_1A361A950(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A35ABFF4(*a1, v2 + 40, &unk_1EB0EF950);
    TipUIView.imageStyle.setter(v2 + 40);
    v3 = OUTLINED_FUNCTION_17();
    sub_1A35A6588(v3, v4);
  }

  else
  {
    TipUIView.imageStyle.setter(*a1);
  }

  free(v2);
}

uint64_t TipUIView.viewStyle.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_2(v5, v13);
  v6 = type metadata accessor for TipUIWrapperView();
  v7 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v7, v8, v6))
  {
    sub_1A35A6588(v1, &qword_1EB0EF8C0);
    a1[3] = type metadata accessor for MiniTipViewStyle();
    a1[4] = sub_1A35ADEFC();
    __swift_allocate_boxed_opaque_existential_0(a1);
    OUTLINED_FUNCTION_23_3();
    sub_1A362178C();
    v9 = OUTLINED_FUNCTION_10();
    return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  }

  else
  {
    sub_1A35A6350(v1 + *(v6 + 68), v14);
    sub_1A35A6588(v1, &qword_1EB0EF8C0);
    return sub_1A35A63BC(v14, a1);
  }
}

uint64_t TipUIView.viewStyle.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  v15 = type metadata accessor for TipUIWrapperView();
  v16 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A35B42D4(v2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((v1 + *(v15 + 68)), a1);
    sub_1A35B42D4(v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

void (*TipUIView.viewStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIView.viewStyle.getter(v1);
  return sub_1A361AC90;
}

void sub_1A361ACA8(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1A35A6350(*a1, (v4 + 40));
    a3(v4 + 40);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t sub_1A361AD24@<X0>(uint64_t (**a1)()@<X8>)
{
  result = TipUIView.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A361CCD8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A361AD94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A361CCE4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1);
  return TipUIView.closeHandler.setter(v4, v3);
}

uint64_t TipUIView.dismissalHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUIView.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A361AE84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_10(v3, v9);
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 72);
    sub_1A35B5EA0(v7);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
  return v7;
}

uint64_t sub_1A361AF38@<X0>(uint64_t (**a1)()@<X8>)
{
  result = TipUIView.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A361CCB0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A361AFA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A361CC88;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1);
  return TipUIView.closeHandler.setter(v4, v3);
}

uint64_t sub_1A361B03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1A3619E9C(&v18 - v10);
  v12 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    v13 = OUTLINED_FUNCTION_4_16();
    sub_1A35ABFF4(v13, v14, v15);
    sub_1A35B42D4(v8);
    sub_1A35BBDF4(a1);
    sub_1A35A6588(v8, &qword_1EB0EF8C0);
  }

  else
  {
    v16 = *(v11 + 9);
    *(v11 + 9) = a1;
    *(v11 + 10) = a2;
    sub_1A35B5EA0(a1);
    sub_1A35BBDF4(v16);
    sub_1A35B42D4(v11);
    sub_1A35BBDF4(a1);
  }

  return sub_1A35A6588(v11, &qword_1EB0EF8C0);
}

uint64_t TipUIView.closeHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUIView.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A361B1F0(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_8_15();
    sub_1A35B5EA0(v4);
    v5 = OUTLINED_FUNCTION_8_15();
    a3(v5);
    v6 = OUTLINED_FUNCTION_8_15();

    return sub_1A35BBDF4(v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_15();
    return (a3)(v8);
  }
}

uint64_t TipUIView.backgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_10(v3, v8);
  v4 = type metadata accessor for TipUIWrapperView();
  v5 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) || !*(v0 + *(v4 + 72)))
  {
    sub_1A35A6588(v0, &qword_1EB0EF8C0);
    return 0;
  }

  else
  {

    sub_1A35A6588(v0, &qword_1EB0EF8C0);
    sub_1A3611350();
    return sub_1A362309C();
  }
}

uint64_t TipUIView.backgroundColor.setter(id a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v25);
  v15 = type metadata accessor for TipUIWrapperView();
  v16 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A35B42D4(v2);

    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    if (a1)
    {
      a1 = a1;
      v23 = sub_1A362268C();
      *(v1 + *(v15 + 72)) = v23;

      v27 = MEMORY[0x1E69815C0];
      v28 = MEMORY[0x1E6981568];
      *&v26 = v23;
      __swift_destroy_boxed_opaque_existential_1(v1 + 112);
      sub_1A35A63BC(&v26, v1 + 112);
      *(v1 + 152) = 1;
    }

    else
    {
      *(v1 + *(v15 + 72)) = 0;
    }

    sub_1A35B42D4(v1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

uint64_t TipUIView.backgroundColor.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TipUIView.backgroundColor.getter();
  return OUTLINED_FUNCTION_18();
}

void sub_1A361B67C(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    TipUIView.backgroundColor.setter(v2);
  }

  else
  {
    TipUIView.backgroundColor.setter(*a1);
  }
}

id TipUIView.intrinsicContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  OUTLINED_FUNCTION_25_2();
  v3 = *&v0[v2];
  if (v3)
  {
    return [v3 intrinsicContentSize];
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_intrinsicContentSize);
}

void TipUIView.init(_:arrowEdge:sourceView:actionHandler:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v46 = v3;
  v44 = v4;
  v42 = v5;
  v45 = v6;
  v8 = v7;
  v43 = v7;
  swift_getObjectType();
  OUTLINED_FUNCTION_23_3();
  v9 = type metadata accessor for TipViewEnvironment();
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for TipUIWrapperView();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v19);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  *(v2 + OBJC_IVAR____TtC6TipKit9TipUIView_hostingView) = 0;
  v23 = swift_unknownObjectWeakInit();
  v50[5] = v2;
  v51 = v0;
  v24 = OUTLINED_FUNCTION_15_2(v23, sel_initWithFrame_);
  swift_unknownObjectWeakAssign();
  sub_1A35A6350(v8, v50);
  OUTLINED_FUNCTION_22_3();
  v49[24] = 1;
  v25 = sub_1A35B37E0();
  OUTLINED_FUNCTION_20_2(v25, &type metadata for AnyTip);
  swift_unknownObjectWeakInit();
  *(v18 + 88) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 104) = 1;
  v26 = v24;

  sub_1A35ADD70(v13);
  sub_1A35ABFF4(v13 + v10[10], v47, &qword_1EB0EED38);
  sub_1A361BC3C();
  v27 = v48;
  sub_1A35A63BC(v47, v18 + 112);
  *(v18 + 152) = v27;
  sub_1A35ADD70(v13);
  v28 = *(v13 + v10[11]);
  sub_1A361BC3C();
  *(v18 + 168) = 0;
  *(v18 + 160) = v28;
  *(v18 + 176) = 0;
  *(v18 + 184) = 0;
  *(v18 + 192) = 1;
  *(v18 + 200) = &type metadata for AnyTip;
  *(v18 + 208) = v25;
  swift_unknownObjectWeakInit();
  sub_1A35ADD70(v13);
  v29 = v13 + v10[12];
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v25) = *(v29 + 16);
  sub_1A361BC3C();
  *(v18 + 224) = v30;
  *(v18 + 232) = v31;
  *(v18 + 240) = v25;
  *(v18 + 280) = 0;
  OUTLINED_FUNCTION_21_2(v18);
  v32 = v14[15];
  v33 = sub_1A3621A4C();
  OUTLINED_FUNCTION_21(v18 + v32, v34, v35, v33);
  v36 = (v18 + v14[16]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v18 + v14[17]);
  v37[3] = type metadata accessor for MiniTipViewStyle();
  v37[4] = sub_1A35ADEFC();
  __swift_allocate_boxed_opaque_existential_0(v37);
  OUTLINED_FUNCTION_23_3();
  sub_1A362178C();
  v38 = OUTLINED_FUNCTION_10();
  __swift_storeEnumTagSinglePayload(v38, v39, 1, v40);
  *(v18 + v14[18]) = 0;
  sub_1A35A6350(v50, v18);
  *(v18 + 40) = OUTLINED_FUNCTION_26_3();
  sub_1A35B4214(v49, v18 + 168);
  v41 = v46;
  *(v18 + 56) = v44;
  *(v18 + 64) = v41;
  *(v18 + 48) = v45;
  sub_1A35B4270(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(v50);
  OUTLINED_FUNCTION_0_32();
  sub_1A361BC3C();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
  sub_1A35B42D4(v22);

  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_1A35A6588(v22, &qword_1EB0EF8C0);
  OUTLINED_FUNCTION_28_2();
}

uint64_t sub_1A361BC3C()
{
  v1 = OUTLINED_FUNCTION_23_3();
  v2(v1);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(v0);
  return v0;
}

void TipUIView.init<A>(_:arrowEdge:actionHandler:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v49 = v1;
  v4 = v3;
  v54 = v5;
  v52 = v6;
  v53 = v7;
  v9 = v8;
  v50 = v8;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TipViewEnvironment();
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for TipUIWrapperView();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v21);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v22);
  v51 = &v46 - v23;
  *(v0 + OBJC_IVAR____TtC6TipKit9TipUIView_hostingView) = 0;
  v24 = swift_unknownObjectWeakInit();
  v59 = v0;
  v60 = ObjectType;
  v25 = OUTLINED_FUNCTION_15_2(v24, sel_initWithFrame_);
  swift_unknownObjectWeakAssign();
  v58[3] = v4;
  v58[4] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
  v26 = v4;
  v27 = *(v4 - 8);
  (*(v27 + 16))(boxed_opaque_existential_0, v9, v4);
  OUTLINED_FUNCTION_22_3();
  v57[24] = 1;
  v28 = sub_1A35B37E0();
  OUTLINED_FUNCTION_20_2(v28, &type metadata for AnyTip);
  swift_unknownObjectWeakInit();
  *(v20 + 88) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 104) = 1;
  v48 = v25;

  sub_1A35ADD70(v15);
  sub_1A35ABFF4(v15 + v12[10], v55, &qword_1EB0EED38);
  sub_1A361BC3C();
  LOBYTE(v25) = v56;
  sub_1A35A63BC(v55, v20 + 112);
  *(v20 + 152) = v25;
  sub_1A35ADD70(v15);
  v29 = *(v15 + v12[11]);
  sub_1A361BC3C();
  *(v20 + 168) = 0;
  *(v20 + 160) = v29;
  *(v20 + 176) = 0;
  *(v20 + 184) = 0;
  *(v20 + 192) = 1;
  *(v20 + 200) = &type metadata for AnyTip;
  *(v20 + 208) = v28;
  swift_unknownObjectWeakInit();
  sub_1A35ADD70(v15);
  v30 = v15 + v12[12];
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v28) = *(v30 + 16);
  sub_1A361BC3C();
  *(v20 + 224) = v31;
  *(v20 + 232) = v32;
  *(v20 + 240) = v28;
  *(v20 + 280) = 0;
  OUTLINED_FUNCTION_21_2(v20);
  v33 = v16[15];
  v34 = sub_1A3621A4C();
  OUTLINED_FUNCTION_21(v20 + v33, v35, v36, v34);
  v37 = (v20 + v16[16]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v20 + v16[17]);
  v38[3] = type metadata accessor for MiniTipViewStyle();
  v38[4] = sub_1A35ADEFC();
  v39 = __swift_allocate_boxed_opaque_existential_0(v38);
  v40 = sub_1A362178C();
  OUTLINED_FUNCTION_21(v39, v41, v42, v40);
  *(v20 + v16[18]) = 0;
  sub_1A35A6350(v58, v20);
  *(v20 + 40) = sub_1A35A6624(v26, v49);
  sub_1A35B4214(v57, v20 + 168);
  v43 = v54;
  *(v20 + 56) = v52;
  *(v20 + 64) = v43;
  *(v20 + 48) = v53;
  v44 = v51;
  sub_1A35B4270(v20, v51);
  __swift_destroy_boxed_opaque_existential_1(v58);
  OUTLINED_FUNCTION_0_32();
  sub_1A361BC3C();
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v16);
  v45 = v48;
  sub_1A35B42D4(v44);

  (*(v27 + 8))(v50, v26);
  sub_1A35A6588(v44, &qword_1EB0EF8C0);
  OUTLINED_FUNCTION_28_2();
}

id TipUIView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t TipUIView.init(coder:)(void *a1)
{
  swift_getObjectType();

  v3 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  *(v1 + OBJC_IVAR____TtC6TipKit9TipUIView_hostingView) = 0;
  v4 = OBJC_IVAR____TtC6TipKit9TipUIView_sourceView;
  swift_unknownObjectWeakInit();

  MEMORY[0x1A58F45C0](v1 + v4);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall TipUIView.didMoveToSuperview()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_didMoveToSuperview);
  v1 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

Swift::Void __swiftcall TipUIView.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_4();
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v7 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  v8 = *&v1[v7];
  if (v8)
  {
    v9 = v8;
    [v1 bounds];
    [v9 setFrame_];
  }

  sub_1A3619E9C(v0);
  type metadata accessor for TipUIWrapperView();
  v10 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v10, v11, v12))
  {
    v13 = OUTLINED_FUNCTION_17();
    sub_1A35ABFF4(v13, v14, v15);
    sub_1A35B42D4(v2);
    v16 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v16, v17);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v19 = 0uLL;
    if (Strong)
    {
      v20 = Strong;
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        [v21 bounds];

        v30.origin.x = OUTLINED_FUNCTION_27_1();
        MidX = CGRectGetMidX(v30);
        v31.origin.x = OUTLINED_FUNCTION_27_1();
        [v20 convertPoint:v1 toView:{MidX, CGRectGetMidY(v31)}];
        v27 = v24;
        v28 = v25;

        *&v19 = v27;
        v26 = 0;
        *(&v19 + 1) = v28;
      }

      else
      {

        v26 = 1;
        v19 = 0uLL;
      }
    }

    else
    {
      v26 = 1;
    }

    *(v0 + 88) = v19;
    *(v0 + 104) = v26;
    sub_1A35B42D4(v0);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
}

CGSize __swiftcall TipUIView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  OUTLINED_FUNCTION_25_2();
  v6 = *&v1[v5];
  if (v6)
  {
    [v6 sizeThatFits_];
  }

  else
  {
    v10.receiver = v1;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_sizeThatFits_, width, height);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

Swift::Void __swiftcall TipUIView.updateConstraints()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  OUTLINED_FUNCTION_25_2();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    if (([v0 translatesAutoresizingMaskIntoConstraints] & 1) != 0 || objc_msgSend(v4, sel_translatesAutoresizingMaskIntoConstraints))
    {
      [v0 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_1A35B474C(v3);
    }
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_updateConstraints);
}

void sub_1A361C838(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_1A361C904()
{
  v1 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;
}

id TipUIView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_1A3622E3C();
  v4 = v0;
  sub_1A360F750(sub_1A361CC18, &v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A361CA00()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A361C904();
}

id TipUIView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *sub_1A361CD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = [objc_allocWithZone(v9) initWithNibName:0 bundle:0];
  v19 = &v18[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear];
  v20 = *&v18[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear];
  *v19 = a1;
  *(v19 + 1) = a2;
  v21 = v18;
  sub_1A35BBDF4(v20);
  v22 = &v21[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear];
  v23 = *&v21[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear];
  *v22 = a3;
  *(v22 + 1) = a4;
  sub_1A35BBDF4(v23);
  v24 = &v21[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear];
  v25 = *&v21[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear];
  *v24 = a5;
  *(v24 + 1) = a6;
  sub_1A35BBDF4(v25);
  v26 = &v21[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear];
  v27 = *&v21[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear];
  *v26 = a7;
  *(v26 + 1) = a8;
  sub_1A35BBDF4(v27);

  return v21;
}

void sub_1A361CE6C(void *a1, uint64_t a2, char a3, uint64_t a4, SEL *a5, void *a6)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1;
  sub_1A361CF6C(a3, a5, a6);
}

id sub_1A361CF6C(char a1, SEL *a2, void *a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v10, *a2, a1 & 1);
  v8 = *&v3[*a3];
  if (v8)
  {

    v8(v9);
    return sub_1A35BBDF4(v8);
  }

  return result;
}

id sub_1A361D0AC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear);
  if (a2)
  {
    v7 = sub_1A3622B5C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1A361D250(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear);
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1A361D434()
{
  sub_1A361D5BC();
  v1 = v0;
  v2 = [v0 keyWindow];

  v3 = [v2 rootViewController];
  return v3;
}

uint64_t sub_1A361D498()
{
  if ((_UIApplicationIsExtension() & 1) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v1 = [ObjCClassFromMetadata performSelector_];
    v2 = ObjCClassFromMetadata;
    if (v1)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void *sub_1A361D538()
{
  v0 = sub_1A361D498();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 connectedScenes];

    sub_1A35CDC10(0, &qword_1EB0EE1A0);
    sub_1A361DA34();
    v1 = sub_1A3622FCC();
  }

  return v1;
}

void sub_1A361D5BC()
{
  v4 = sub_1A361D538();
  if (v4)
  {
    v22 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1A362312C();
      sub_1A35CDC10(0, &qword_1EB0EE1A0);
      sub_1A361DA34();
      sub_1A3622FDC();
      v5 = v24;
      v1 = v25;
      v0 = v26;
      v6 = v27;
      v2 = v28;
    }

    else
    {
      v6 = 0;
      v5 = OUTLINED_FUNCTION_1_27();
    }

    v21 = v0;
    v7 = (v0 + 64) >> 6;
    while (1)
    {
      if (v5 < 0)
      {
        v9 = sub_1A362314C();
        if (!v9 || (v23 = v9, sub_1A35CDC10(0, &qword_1EB0EE1A0), swift_dynamicCast(), v0 = v29, v3 = v2, !v29))
        {
LABEL_23:
          OUTLINED_FUNCTION_0_34();
          OUTLINED_FUNCTION_3_22();
          break;
        }
      }

      else
      {
        v8 = v6;
        if (!v2)
        {
          while (1)
          {
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if (v6 >= v7)
            {
              v2 = 0;
              goto LABEL_23;
            }

            ++v8;
            if (*(v1 + 8 * v6))
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_50;
        }

LABEL_11:
        v0 = OUTLINED_FUNCTION_2_25();
        if (!v0)
        {
          goto LABEL_23;
        }
      }

      sub_1A3622E3C();
      sub_1A3622E2C();
      sub_1A3622DFC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 activationState];

        if (!v11)
        {
          OUTLINED_FUNCTION_0_34();
          OUTLINED_FUNCTION_3_22();
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {

            break;
          }

          return;
        }
      }

      else
      {
      }

      v2 = v3;
    }
  }

  v12 = sub_1A361D538();
  if (v12)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1A362312C();
      sub_1A35CDC10(0, &qword_1EB0EE1A0);
      sub_1A361DA34();
      sub_1A3622FDC();
      v13 = v29;
      v1 = v30;
      v0 = v31;
      v14 = v32;
      v2 = v33;
    }

    else
    {
      v14 = 0;
      v13 = OUTLINED_FUNCTION_1_27();
    }

    v15 = (v0 + 64) >> 6;
    if (v13 < 0)
    {
      goto LABEL_35;
    }

LABEL_29:
    v16 = v14;
    v17 = v14;
    if (v2)
    {
LABEL_33:
      v18 = OUTLINED_FUNCTION_2_25();
      if (v18)
      {
        while (1)
        {
          sub_1A3622E3C();
          sub_1A3622E2C();
          sub_1A3622DFC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v14 = v17;
          v2 = v3;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_35:
          if (sub_1A362314C())
          {
            sub_1A35CDC10(0, &qword_1EB0EE1A0);
            swift_dynamicCast();
            v18 = v23;
            v17 = v14;
            v3 = v2;
            if (v23)
            {
              continue;
            }
          }

          goto LABEL_42;
        }

        OUTLINED_FUNCTION_0_34();
        OUTLINED_FUNCTION_3_22();
        v19 = sub_1A361D538();
        if (!v19 || (v20 = sub_1A361DAA4(v19), , v20 != 1))
        {
        }
      }

      else
      {
LABEL_42:
        OUTLINED_FUNCTION_0_34();
        OUTLINED_FUNCTION_3_22();
      }
    }

    else
    {
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v15)
        {
          goto LABEL_42;
        }

        ++v16;
        if (*(v1 + 8 * v17))
        {
          goto LABEL_33;
        }
      }

LABEL_50:
      __break(1u);
    }
  }
}

unint64_t sub_1A361DA34()
{
  result = qword_1EB0EE198;
  if (!qword_1EB0EE198)
  {
    sub_1A35CDC10(255, &qword_1EB0EE1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE198);
  }

  return result;
}

uint64_t sub_1A361DAA4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1A362313C();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1A361DAC4@<X0>(_BYTE *a1@<X8>)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35CDC10(0, &unk_1ED81E078);
  v2 = sub_1A361D498();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 delegate];

    if (v4)
    {
      swift_getObjectType();
      v5 = sub_1A36230BC();
      v7 = v6;
      swift_unknownObjectRelease();
      if (v5 == 0xD000000000000013 && 0x80000001A363A050 == v7)
      {

        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = sub_1A362345C();
      }
    }

    else
    {
    }
  }

  else
  {

    LOBYTE(v4) = 0;
  }

  *a1 = v4 & 1;
  return result;
}

double sub_1A361DC5C(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0EFA08);
  v8 = swift_allocObject();
  *&result = 4;
  *(v8 + 16) = xmmword_1A362AA70;
  *(v8 + 32) = 0;
  *(v8 + 40) = a1;
  *(v8 + 48) = 1;
  *(v8 + 56) = a2;
  *(v8 + 64) = 2;
  *(v8 + 72) = a3;
  *(v8 + 80) = 3;
  *(v8 + 88) = a4;
  return result;
}

uint64_t sub_1A361DD2C(void *a1)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  canShowWhileLockedSbyF_0 = j___s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0();

  return canShowWhileLockedSbyF_0 & 1;
}

uint64_t sub_1A361DE00(uint64_t a1)
{
  OUTLINED_FUNCTION_0_35();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + qword_1EB0F2C70);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v10 - v7, a1, v3, v6);
  v8 = sub_1A3621E4C();
  (*(v4 + 8))(a1, v3);
  return v8;
}

void *sub_1A361DF64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_35();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + qword_1EB0F2C70);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v13 - v8, v7);
  v9 = sub_1A3621E3C();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_1A361E098(void *a1)
{
  OUTLINED_FUNCTION_0_35();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UIHostingControllerSecureDrawable();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1A361E140(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1A361E098(a3);

  return v4;
}

id sub_1A361E1EC()
{
  OUTLINED_FUNCTION_0_35();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIHostingControllerSecureDrawable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A361E27C()
{
  result = sub_1A361E2C0(v0);
  if (result)
  {
    v2 = sub_1A36208D0();

    return v2 != 0;
  }

  return result;
}

uint64_t sub_1A361E2C0(void *a1)
{
  v1 = [a1 passthroughViews];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A360F4F0();
  v3 = sub_1A3622CCC();

  return v3;
}

uint64_t sub_1A361E320(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFA90);
  v1[4] = swift_task_alloc();
  sub_1A3622E3C();
  v1[5] = sub_1A3622E2C();
  v3 = sub_1A3622DFC();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A361E3F0, v3, v2);
}

uint64_t sub_1A361E3F0()
{
  sub_1A361F19C(*(v0 + 24));
  *(v0 + 64) = v1;
  if (v1)
  {
    v3 = v1;
    *(v0 + 72) = v2;
    v4 = [objc_opt_self() defaultCenter];
    v5 = v3;
    v6 = sub_1A362306C();
    *(v0 + 80) = v6;

    *(v0 + 16) = v6;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    v8 = sub_1A362305C();
    v9 = sub_1A361E840();
    *v7 = v0;
    v7[1] = sub_1A361E56C;
    v10 = *(v0 + 32);

    return MEMORY[0x1EEE499D8](v10, v8, v9);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

void sub_1A361E56C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[4];

    sub_1A361E898(v3);
    v4 = v2[6];
    v5 = v2[7];

    MEMORY[0x1EEE6DFA0](sub_1A361E6B0, v4, v5);
  }
}

uint64_t sub_1A361E6B0()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

void sub_1A361E724(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 isBeingPresented])
  {
    v4 = MEMORY[0x1E69DE2D8];
LABEL_5:
    v5 = *v4;
    *a2 = a1;
    a2[1] = v5;
    v6 = a1;
    v7 = v5;
    return;
  }

  if ([a1 isBeingDismissed])
  {
    v4 = MEMORY[0x1E69DE2C8];
    goto LABEL_5;
  }

  v8 = [a1 popoverPresentationController];
  if (v8 && (v9 = v8, v10 = [v8 presentedViewController], v9, v10) && (sub_1A361E900(), v11 = a1, v12 = sub_1A36230AC(), v11, v10, (v12 & 1) != 0))
  {
    v13 = *MEMORY[0x1E69DE2C8];
    *a2 = v11;
    a2[1] = v13;
    v14 = v11;
    v15 = v13;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

unint64_t sub_1A361E840()
{
  result = qword_1EB0EE1C0;
  if (!qword_1EB0EE1C0)
  {
    sub_1A362305C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE1C0);
  }

  return result;
}

uint64_t sub_1A361E898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A361E900()
{
  result = qword_1EB0EE1D8;
  if (!qword_1EB0EE1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0EE1D8);
  }

  return result;
}

uint64_t sub_1A361E944()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentedViewController];
    if (v3)
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFA98);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        return v5;
      }
    }

    v8 = v0;
    return v2;
  }

  v6 = [v0 nextResponder];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v2 = sub_1A361E944();

  return v2;
}

uint64_t sub_1A361EA14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A362AA70;
  v1 = sub_1A362169C();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1A362168C();
  v4 = MEMORY[0x1E69DC0C8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_1A362167C();
  v6 = MEMORY[0x1E69DC0A0];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_1A36216AC();
  v8 = MEMORY[0x1E69DC2B0];
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

id sub_1A361EAB4(void *a1)
{
  v2 = [v1 constraints];
  sub_1A35CDC10(0, &qword_1ED81E000);
  v3 = sub_1A3622CCC();

  result = sub_1A36208D0(v3);
  v12 = result;
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {
LABEL_22:

      return (v12 != i);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1A58F3850](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      result = *(v3 + 8 * i + 32);
    }

    v6 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1A3622E3C();
    sub_1A3622E2C();
    sub_1A3622DFC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if ([v6 firstItem])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1A35CDC10(0, &qword_1ED81D9A8);
        v7 = a1;
        v8 = sub_1A36230AC();

        swift_unknownObjectRelease();
        if (v8)
        {

          return (v12 != i);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if ([v6 secondItem])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1A35CDC10(0, &qword_1ED81D9A8);
        v9 = a1;
        v10 = sub_1A36230AC();

        result = swift_unknownObjectRelease();
        if (v10)
        {
          goto LABEL_22;
        }
      }

      else
      {

        result = swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1A361ED90()
{
  result = [v0 superview];
  if (result)
  {
    v2 = result;
    v3 = result;
    LOBYTE(v2) = sub_1A361EDF4(v2);

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_1A361EDF4(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = a1;
  if (sub_1A3622DEC())
  {
    sub_1A35CDC10(0, &qword_1ED81D9A8);
    if (sub_1A36230CC() == 0xD000000000000021 && 0x80000001A363A0D0 == v3)
    {

      return 1;
    }

    v5 = sub_1A362345C();

    if (v5)
    {

      return 1;
    }
  }

  [v1 bounds];
  [v2 convertRect:v1 fromCoordinateSpace:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v2 bounds];
  v22.origin.x = v14;
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  if (CGRectIntersectsRect(v21, v22))
  {
    v18 = [v2 superview];
    v19 = sub_1A361EDF4();

    return v19 & 1;
  }

  else
  {

    return 0;
  }
}

id sub_1A361EF70()
{
  result = [v0 isModalInPresentation];
  if (result)
  {
    return ([v0 modalPresentationStyle] == 2);
  }

  return result;
}

uint64_t sub_1A361EFB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1A361EFF4()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {

    v2 = [v0 presentedViewController];
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    v4 = [v2 isBeingDismissed];

    if (!v4)
    {
      return 0;
    }
  }

  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = sub_1A361ED90();

    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A361F0A8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a3)
    {
      v8[4] = a3;
      v8[5] = a4;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1A361EFB0;
      v8[3] = &block_descriptor;
      v7 = _Block_copy(v8);
    }

    else
    {
      v7 = 0;
    }

    [a1 presentViewController:v4 animated:a2 & 1 completion:v7];
    _Block_release(v7);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1A361F19C(void *a1)
{
  sub_1A361E724(a1, &v3);
  if (!v1 && !v3)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1A361E900();
    sub_1A360DC9C();
    v2 = sub_1A3622D3C();
    MEMORY[0x1EEE9AC00](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAA8);
    sub_1A3622D4C();
  }
}

void sub_1A361F2F4(void *a1)
{
  v2 = [a1 presentedViewController];
  v197[0] = v2;
  v3 = sub_1A361E900();
  v184 = sub_1A3622D0C();

  v4 = [a1 presentedViewController];
  if (v4)
  {
    v2 = v4;
    OUTLINED_FUNCTION_13_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_16();
    *(v7 - 16) = v6;
    sub_1A360DC9C();
    OUTLINED_FUNCTION_0_37();
    v8 = sub_1A3622D3C();
  }

  else
  {
    v8 = 0;
  }

  v183 = MEMORY[0x1A58F3380](v8, v3);

  v9 = [a1 childViewControllers];
  OUTLINED_FUNCTION_12_9();

  v182 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

  v186 = a1;
  v10 = [a1 childViewControllers];
  v11 = OUTLINED_FUNCTION_12_9();

  v12 = sub_1A35DA268(v11);
  v13 = 0;
  OUTLINED_FUNCTION_7_13();
  v185 = v11;
  v191 = (v11 + 32);
  v14 = MEMORY[0x1E69E7CC0];
  v194 = v3;
  v187 = v15;
  while (1)
  {
    if (v13 == v12)
    {

      v185 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

      objc_opt_self();
      v42 = v186;
      if (swift_dynamicCastObjCClass())
      {
        v180 = v186;
        v43 = OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_12_9();

        v179 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

        v44 = OUTLINED_FUNCTION_17_6();
        v45 = OUTLINED_FUNCTION_12_9();

        v195 = sub_1A35DA268(v45);
        v46 = 0;
        OUTLINED_FUNCTION_7_13();
        v47 = MEMORY[0x1E69E7CC0];
        v181 = v45;
        v191 = (v45 + 32);
        while (1)
        {
          if (v46 == v195)
          {

            v2 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0);
            v72 = OUTLINED_FUNCTION_18_2();
            *(v72 + 16) = xmmword_1A36277E0;
            *(v72 + 32) = v179;
            *(v72 + 40) = v2;
            sub_1A3622CDC();
            OUTLINED_FUNCTION_20_3();
            OUTLINED_FUNCTION_21_3();
            v181 = v73;

            v42 = v186;
            goto LABEL_85;
          }

          if (v193)
          {
            v49 = MEMORY[0x1A58F3850](v46, v181);
          }

          else
          {
            OUTLINED_FUNCTION_15_3();
            if (v46 >= v48)
            {
              goto LABEL_219;
            }

            v49 = *&v191[8 * v46];
          }

          v50 = v49;
          v19 = __OFADD__(v46++, 1);
          if (v19)
          {
            goto LABEL_218;
          }

          MEMORY[0x1EEE9AC00](v49);
          *(&v176 - 2) = v50;
          sub_1A360DC9C();
          v51 = v50;
          v52 = sub_1A3622D3C();

          if (v52 >> 62)
          {
            v53 = sub_1A362313C();
          }

          else
          {
            v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v54 = v47 >> 62;
          if (v47 >> 62)
          {
            v55 = OUTLINED_FUNCTION_19_5();
          }

          else
          {
            v55 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v56 = v55 + v53;
          if (__OFADD__(v55, v53))
          {
            goto LABEL_220;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            break;
          }

          if (v54)
          {
            goto LABEL_62;
          }

          v57 = v47 & 0xFFFFFFFFFFFFFF8;
          if (v56 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_63;
          }

LABEL_64:
          v58 = *(v57 + 16);
          v59 = (*(v57 + 24) >> 1) - v58;
          v60 = v57 + 8 * v58;
          v196 = v57;
          if (v52 >> 62)
          {
            v62 = sub_1A362313C();
            if (!v62)
            {
              goto LABEL_78;
            }

            v63 = v62;
            v64 = sub_1A362313C();
            if (v59 < v64)
            {
              goto LABEL_241;
            }

            if (v63 < 1)
            {
              goto LABEL_242;
            }

            v187 = v64;
            v188 = v53;
            v189 = v46;
            v190 = v47;
            v65 = v60 + 32;
            sub_1A362086C();
            for (i = 0; i != v63; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0);
              v67 = sub_1A362078C(v197, i, v52);
              v69 = *v68;
              (v67)(v197, 0);
              *(v65 + 8 * i) = v69;
            }

            v3 = v194;
            v46 = v189;
            v47 = v190;
            v61 = v187;
            v53 = v188;
LABEL_74:

            if (v61 < v53)
            {
              goto LABEL_221;
            }

            if (v61 > 0)
            {
              OUTLINED_FUNCTION_4_18();
              if (v19)
              {
                goto LABEL_238;
              }

              *(v71 + 16) = v70;
            }
          }

          else
          {
            v61 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v61)
            {
              if (v59 < v61)
              {
                goto LABEL_240;
              }

              swift_arrayInitWithCopy();
              goto LABEL_74;
            }

LABEL_78:

            if (v53 > 0)
            {
              goto LABEL_221;
            }
          }
        }

        if (v54)
        {
LABEL_62:
          OUTLINED_FUNCTION_19_5();
          OUTLINED_FUNCTION_11_12();
        }

LABEL_63:
        v47 = sub_1A36231DC();
        v57 = v47 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_64;
      }

      v181 = MEMORY[0x1A58F33A0](0, v3);
LABEL_85:
      objc_opt_self();
      v74 = swift_dynamicCastObjCClass();
      if (v74)
      {
        v75 = v74;
        v180 = v42;
        sub_1A362072C(v75);
        v76 = MEMORY[0x1A58F3380]();

        v77 = sub_1A362072C(v75);
        if (v77)
        {
          v178 = v76;
          v78 = v77;
          v79 = sub_1A35DA268(v77);
          v80 = 0;
          v195 = v78 & 0xC000000000000001;
          v193 = v78 & 0xFFFFFFFFFFFFFF8;
          v81 = MEMORY[0x1E69E7CC0];
          v179 = v78;
          v192 = v78 + 32;
          v187 = v79;
          while (1)
          {
            if (v80 == v79)
            {

              v3 = v194;
              v42 = v186;
              v76 = v178;
              goto LABEL_127;
            }

            if (v195)
            {
              v82 = MEMORY[0x1A58F3850](v80, v179);
            }

            else
            {
              if (v80 >= *(v193 + 16))
              {
                goto LABEL_228;
              }

              v82 = *(v192 + 8 * v80);
            }

            v83 = v82;
            v19 = __OFADD__(v80++, 1);
            if (v19)
            {
              goto LABEL_227;
            }

            MEMORY[0x1EEE9AC00](v82);
            OUTLINED_FUNCTION_16();
            *(v84 - 16) = v83;
            sub_1A360DC9C();
            v85 = v83;
            v86 = sub_1A3622D3C();

            if (v86 >> 62)
            {
              v87 = OUTLINED_FUNCTION_16_5();
            }

            else
            {
              v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v88 = v81 >> 62;
            if (v81 >> 62)
            {
              v89 = sub_1A362313C();
            }

            else
            {
              v89 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v90 = v89 + v87;
            if (__OFADD__(v89, v87))
            {
              goto LABEL_229;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v88)
            {
              goto LABEL_103;
            }

            OUTLINED_FUNCTION_14_7();
            if (!(v31 ^ v19 | v30))
            {
              goto LABEL_104;
            }

LABEL_105:
            v92 = *(v91 + 16);
            v93 = (*(v91 + 24) >> 1) - v92;
            v94 = v91 + 8 * v92;
            v196 = v91;
            if (v86 >> 62)
            {
              if (!sub_1A362313C())
              {
                goto LABEL_119;
              }

              OUTLINED_FUNCTION_2_13();
              v96 = sub_1A362313C();
              if (v93 < v96)
              {
                goto LABEL_249;
              }

              if (v90 < 1)
              {
                goto LABEL_250;
              }

              v188 = v96;
              v189 = v87;
              v190 = v80;
              v191 = v81;
              v97 = v94 + 32;
              sub_1A362086C();
              for (j = 0; j != v90; ++j)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0);
                v99 = sub_1A362078C(v197, j, v86);
                v101 = *v100;
                (v99)(v197, 0);
                *(v97 + 8 * j) = v101;
              }

              v80 = v190;
              v81 = v191;
              v79 = v187;
              v95 = v188;
              v87 = v189;
LABEL_115:

              if (v95 < v87)
              {
                goto LABEL_230;
              }

              if (v95 > 0)
              {
                OUTLINED_FUNCTION_4_18();
                if (v19)
                {
                  goto LABEL_246;
                }

                *(v103 + 16) = v102;
              }
            }

            else
            {
              v95 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v95)
              {
                if (v93 < v95)
                {
                  goto LABEL_248;
                }

                OUTLINED_FUNCTION_2_26();
                swift_arrayInitWithCopy();
                goto LABEL_115;
              }

LABEL_119:

              if (v87 > 0)
              {
                goto LABEL_230;
              }
            }
          }

          if (v88)
          {
LABEL_103:
            sub_1A362313C();
            OUTLINED_FUNCTION_11_12();
          }

LABEL_104:
          OUTLINED_FUNCTION_8_18();
          v81 = sub_1A36231DC();
          v91 = v81 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_105;
        }

        v81 = 0;
LABEL_127:
        v2 = MEMORY[0x1A58F3380](v81, v3);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0);
        v105 = OUTLINED_FUNCTION_18_2();
        *(v105 + 16) = xmmword_1A36277E0;
        *(v105 + 32) = v76;
        *(v105 + 40) = v2;
        sub_1A3622CDC();
        OUTLINED_FUNCTION_20_3();
        OUTLINED_FUNCTION_21_3();
        v104 = v106;
      }

      else
      {
        v104 = MEMORY[0x1A58F33A0](0, v3);
      }

      objc_opt_self();
      v107 = swift_dynamicCastObjCClass();
      v180 = v104;
      if (v107)
      {
        v178 = v42;
        v108 = OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_12_9();

        v177 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

        v109 = OUTLINED_FUNCTION_17_6();
        v110 = OUTLINED_FUNCTION_12_9();

        v195 = sub_1A35DA268(v110);
        v111 = 0;
        OUTLINED_FUNCTION_7_13();
        v112 = MEMORY[0x1E69E7CC0];
        v179 = v110;
        v191 = (v110 + 32);
        while (1)
        {
          if (v111 == v195)
          {

            v136 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0);
            v137 = OUTLINED_FUNCTION_18_2();
            *(v137 + 16) = xmmword_1A36277E0;
            *(v137 + 32) = v177;
            *(v137 + 40) = v136;
            sub_1A3622CDC();
            OUTLINED_FUNCTION_20_3();
            OUTLINED_FUNCTION_21_3();
            v139 = v138;

            v42 = v186;
            v104 = v180;
            goto LABEL_169;
          }

          if (v193)
          {
            v114 = MEMORY[0x1A58F3850](v111, v179);
          }

          else
          {
            OUTLINED_FUNCTION_15_3();
            if (v111 >= v113)
            {
              goto LABEL_223;
            }

            v114 = *&v191[8 * v111];
          }

          v115 = v114;
          v19 = __OFADD__(v111++, 1);
          if (v19)
          {
            goto LABEL_222;
          }

          OUTLINED_FUNCTION_13_7();
          MEMORY[0x1EEE9AC00](v116);
          OUTLINED_FUNCTION_16();
          *(v117 - 16) = v115;
          v118 = sub_1A360DC9C();
          v119 = v115;
          OUTLINED_FUNCTION_0_37();
          v120 = sub_1A3622D3C();

          if (v120 >> 62)
          {
            v121 = sub_1A362313C();
          }

          else
          {
            v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v122 = v112 >> 62;
          if (v112 >> 62)
          {
            v123 = OUTLINED_FUNCTION_16_5();
          }

          else
          {
            v123 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v124 = v123 + v121;
          if (__OFADD__(v123, v121))
          {
            goto LABEL_224;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            break;
          }

          if (v122)
          {
            goto LABEL_145;
          }

          OUTLINED_FUNCTION_14_7();
          if (!(v31 ^ v19 | v30))
          {
            goto LABEL_146;
          }

LABEL_147:
          OUTLINED_FUNCTION_3_23();
          v196 = v125;
          if (v120 >> 62)
          {
            if (!sub_1A362313C())
            {
              goto LABEL_162;
            }

            OUTLINED_FUNCTION_2_13();
            v127 = sub_1A362313C();
            if (v118 < v127)
            {
              goto LABEL_244;
            }

            if (v124 < 1)
            {
              goto LABEL_245;
            }

            v187 = v127;
            v188 = v121;
            v189 = v111;
            v190 = v112;
            sub_1A362086C();
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0);
              v128 = OUTLINED_FUNCTION_10_12();
              v130 = sub_1A362078C(v128, v129, v120);
              v132 = *v131;
              v133 = OUTLINED_FUNCTION_9_11();
              v130(v133);
              OUTLINED_FUNCTION_5_15();
            }

            while (!v30);
            v3 = v194;
            v111 = v189;
            v112 = v190;
            v126 = v187;
            v121 = v188;
LABEL_158:

            if (v126 < v121)
            {
              goto LABEL_225;
            }

            if (v126 > 0)
            {
              OUTLINED_FUNCTION_4_18();
              if (v19)
              {
                goto LABEL_239;
              }

              *(v135 + 16) = v134;
            }
          }

          else
          {
            v126 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v126)
            {
              if (v118 < v126)
              {
                goto LABEL_243;
              }

              OUTLINED_FUNCTION_2_26();
              swift_arrayInitWithCopy();
              goto LABEL_158;
            }

LABEL_162:

            if (v121 > 0)
            {
              goto LABEL_225;
            }
          }
        }

        if (v122)
        {
LABEL_145:
          OUTLINED_FUNCTION_16_5();
          OUTLINED_FUNCTION_11_12();
        }

LABEL_146:
        OUTLINED_FUNCTION_8_18();
        v112 = sub_1A36231DC();
        goto LABEL_147;
      }

      v139 = MEMORY[0x1A58F33A0](0, v3);
LABEL_169:
      objc_opt_self();
      v140 = swift_dynamicCastObjCClass();
      if (v140)
      {
        v141 = v140;
        v142 = v42;
        sub_1A362072C(v141);
        v143 = MEMORY[0x1A58F3380]();

        v144 = sub_1A362072C(v141);
        if (v144)
        {
          v177 = v143;
          v178 = v142;
          v179 = v139;
          v145 = v144;
          v195 = sub_1A35DA268(v144);
          v146 = 0;
          v192 = v145 & 0xFFFFFFFFFFFFFF8;
          v193 = v145 & 0xC000000000000001;
          v147 = MEMORY[0x1E69E7CC0];
          v186 = v145;
          v191 = (v145 + 32);
          while (1)
          {
            if (v146 == v195)
            {

              v104 = v180;
              v139 = v179;
              v142 = v178;
              v143 = v177;
              goto LABEL_212;
            }

            if (v193)
            {
              v149 = MEMORY[0x1A58F3850](v146, v186);
            }

            else
            {
              OUTLINED_FUNCTION_15_3();
              if (v146 >= v148)
              {
                goto LABEL_232;
              }

              v149 = *&v191[8 * v146];
            }

            v150 = v149;
            v19 = __OFADD__(v146++, 1);
            if (v19)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_13_7();
            MEMORY[0x1EEE9AC00](v151);
            OUTLINED_FUNCTION_16();
            *(v152 - 16) = v150;
            v153 = sub_1A360DC9C();
            v154 = v150;
            OUTLINED_FUNCTION_0_37();
            v155 = sub_1A3622D3C();

            if (v155 >> 62)
            {
              v156 = sub_1A362313C();
            }

            else
            {
              v156 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v157 = v147 >> 62;
            if (v147 >> 62)
            {
              v158 = sub_1A362313C();
            }

            else
            {
              v158 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v159 = v158 + v156;
            if (__OFADD__(v158, v156))
            {
              goto LABEL_233;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v157)
            {
              goto LABEL_187;
            }

            OUTLINED_FUNCTION_14_7();
            if (!(v31 ^ v19 | v30))
            {
              goto LABEL_188;
            }

LABEL_189:
            OUTLINED_FUNCTION_3_23();
            v196 = v160;
            if (v155 >> 62)
            {
              if (!sub_1A362313C())
              {
                goto LABEL_204;
              }

              OUTLINED_FUNCTION_2_13();
              v162 = sub_1A362313C();
              if (v153 < v162)
              {
                goto LABEL_252;
              }

              if (v159 < 1)
              {
                goto LABEL_253;
              }

              v187 = v162;
              v188 = v156;
              v189 = v146;
              v190 = v147;
              sub_1A362086C();
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0);
                v163 = OUTLINED_FUNCTION_10_12();
                v165 = sub_1A362078C(v163, v164, v155);
                v167 = *v166;
                v168 = OUTLINED_FUNCTION_9_11();
                v165(v168);
                OUTLINED_FUNCTION_5_15();
              }

              while (!v30);
              v3 = v194;
              v146 = v189;
              v147 = v190;
              v161 = v187;
              v156 = v188;
LABEL_200:

              if (v161 < v156)
              {
                goto LABEL_234;
              }

              if (v161 > 0)
              {
                OUTLINED_FUNCTION_4_18();
                if (v19)
                {
                  goto LABEL_247;
                }

                *(v170 + 16) = v169;
              }
            }

            else
            {
              v161 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v161)
              {
                if (v153 < v161)
                {
                  goto LABEL_251;
                }

                OUTLINED_FUNCTION_2_26();
                swift_arrayInitWithCopy();
                goto LABEL_200;
              }

LABEL_204:

              if (v156 > 0)
              {
                goto LABEL_234;
              }
            }
          }

          if (v157)
          {
LABEL_187:
            sub_1A362313C();
            OUTLINED_FUNCTION_11_12();
          }

LABEL_188:
          v147 = sub_1A36231DC();
          goto LABEL_189;
        }

        v147 = 0;
LABEL_212:
        v172 = MEMORY[0x1A58F3380](v147, v3);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0);
        v171 = OUTLINED_FUNCTION_18_2();
        *(v171 + 16) = xmmword_1A36277E0;
        *(v171 + 32) = v143;
        *(v171 + 40) = v172;
        sub_1A3622CDC();
        OUTLINED_FUNCTION_20_3();
        OUTLINED_FUNCTION_21_3();
        OUTLINED_FUNCTION_2_13();
      }

      else
      {
        v171 = MEMORY[0x1A58F33A0](0, v3);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_1A362AB20;
      v174 = v183;
      *(v173 + 32) = v184;
      *(v173 + 40) = v174;
      v175 = v185;
      *(v173 + 48) = v182;
      *(v173 + 56) = v175;
      *(v173 + 64) = v181;
      *(v173 + 72) = v104;
      *(v173 + 80) = v139;
      *(v173 + 88) = v171;
      sub_1A3622CDC();
      OUTLINED_FUNCTION_2_13();

      return;
    }

    if (v193)
    {
      v17 = MEMORY[0x1A58F3850](v13, v185);
    }

    else
    {
      OUTLINED_FUNCTION_15_3();
      if (v13 >= v16)
      {
        goto LABEL_215;
      }

      v17 = *&v191[8 * v13];
    }

    v18 = v17;
    v19 = __OFADD__(v13, 1);
    v20 = v13 + 1;
    if (v19)
    {
      break;
    }

    v196 = v20;
    OUTLINED_FUNCTION_13_7();
    MEMORY[0x1EEE9AC00](v21);
    OUTLINED_FUNCTION_16();
    *(v22 - 16) = v18;
    v23 = sub_1A360DC9C();
    v24 = v18;
    OUTLINED_FUNCTION_0_37();
    v25 = sub_1A3622D3C();

    if (v25 >> 62)
    {
      v26 = OUTLINED_FUNCTION_16_5();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v14 >> 62;
    if (v14 >> 62)
    {
      v28 = OUTLINED_FUNCTION_19_5();
    }

    else
    {
      v28 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v28 + v26;
    if (__OFADD__(v28, v26))
    {
      goto LABEL_216;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v27)
      {
LABEL_20:
        OUTLINED_FUNCTION_19_5();
        OUTLINED_FUNCTION_11_12();
      }

LABEL_21:
      OUTLINED_FUNCTION_8_18();
      v14 = sub_1A36231DC();
      goto LABEL_22;
    }

    if (v27)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_14_7();
    if (!(v31 ^ v19 | v30))
    {
      goto LABEL_21;
    }

LABEL_22:
    OUTLINED_FUNCTION_3_23();
    v195 = v32;
    if (v25 >> 62)
    {
      if (v25 < 0)
      {
        v2 = v25;
      }

      else
      {
        v2 = (v25 & 0xFFFFFFFFFFFFFF8);
      }

      if (!sub_1A362313C())
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_13();
      v33 = sub_1A362313C();
      if (v23 < v33)
      {
        goto LABEL_236;
      }

      if (v29 < 1)
      {
        goto LABEL_237;
      }

      v188 = v33;
      v189 = v26;
      v190 = v14;
      sub_1A362086C();
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0);
        v34 = OUTLINED_FUNCTION_10_12();
        v36 = sub_1A362078C(v34, v35, v25);
        v38 = *v37;
        v39 = OUTLINED_FUNCTION_9_11();
        v36(v39);
        OUTLINED_FUNCTION_5_15();
      }

      while (!v30);
      v3 = v194;
      v26 = v189;
      v14 = v190;
      v12 = v187;
      v2 = v188;
LABEL_36:

      v13 = v196;
      if (v2 < v26)
      {
        goto LABEL_217;
      }

      if (v2 > 0)
      {
        v40 = *(v195 + 16);
        v19 = __OFADD__(v40, v2);
        v41 = &v2[v40];
        if (v19)
        {
          goto LABEL_226;
        }

        *(v195 + 16) = v41;
      }
    }

    else
    {
      v2 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        if (v23 < v2)
        {
          goto LABEL_235;
        }

        OUTLINED_FUNCTION_2_26();
        swift_arrayInitWithCopy();
        goto LABEL_36;
      }

LABEL_40:

      v13 = v196;
      if (v26 > 0)
      {
        goto LABEL_217;
      }
    }
  }

  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
}

void *sub_1A36206BC(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1A3620708(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A362072C(void *a1)
{
  v1 = [a1 viewControllers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A361E900();
  v3 = sub_1A3622CCC();

  return v3;
}

void (*sub_1A362078C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1A36206FC(a3);
  sub_1A3620708(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1A58F3850](a2, a3);
  }

  *a1 = v7;
  return sub_1A3620818;
}

void *sub_1A3620820@<X0>(uint64_t *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1A36206BC(*a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

unint64_t sub_1A362086C()
{
  result = qword_1EB0EFAB8;
  if (!qword_1EB0EFAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EFAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EFAB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_1A362313C();
}

uint64_t sub_1A3620910(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = sub_1A36216FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = *(v9 + 104);
  v15(&v18 - v13, *a4, v8);
  v15(v12, *a5, v8);
  a2(v14, v12);
  v16 = *(v9 + 8);
  v16(v12, v8);
  return (v16)(v14, v8);
}

unint64_t sub_1A3620AC8()
{
  result = qword_1ED81E020;
  if (!qword_1ED81E020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EFAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E020);
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}