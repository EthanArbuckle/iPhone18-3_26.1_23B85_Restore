void sub_18E6307AC()
{
  v0 = objc_opt_self();
  v1 = sub_18E65F8F0();
  v2 = [v0 createWorkloopNamed_];

  qword_1ED7652B0 = v2;
}

uint64_t ActivityHostViewController.PresentationMode.description.getter(int a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x616E73206576696CLL;
    case 1:
      return 1702259052;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

unint64_t ActivityHostViewController.PresentationMode.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

uint64_t sub_18E630910()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65FEE0();
  return sub_18E65FF10();
}

uint64_t sub_18E630984()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65FEE0();
  return sub_18E65FF10();
}

int *sub_18E6309C8@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18E6309F0()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1701736302;
  }

  if (v1 == 2)
  {
    return 0x616E73206576696CLL;
  }

  if (v1 == 1)
  {
    return 1702259052;
  }

  v3 = *v0;
  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t sub_18E630E78(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_18E62E8BC(sub_18E63D3D0, v7);
  }

  return result;
}

void sub_18E630F20(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      swift_getObjectType();
      v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
      swift_beginAccess();
      LOBYTE(v4) = v3[v4];
      v5 = a1;
      sub_18E63E4B8(v4);

      v3 = v5;
    }
  }
}

void sub_18E63120C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  BSDispatchQueueAssertMain();
  sub_18E62EB30();
}

void *sub_18E631468(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  BSDispatchQueueAssertMain();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18E631610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

void sub_18E631768()
{
  v0 = objc_allocWithZone(MEMORY[0x1E699F7F8]);
  v1 = sub_18E65F8F0();
  v2 = [v0 initWithIdentifier_];

  qword_1ED764F10 = v2;
}

id ActivityHostViewController.__deallocating_deinit()
{
  if (qword_1ED764D60 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = sub_18E65F6E0();
  __swift_project_value_buffer(v1, qword_1ED764D68);
  v2 = v0;
  v3 = sub_18E65F6C0();
  v4 = sub_18E65FA60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_18E62A1F8();
    v9 = sub_18E61173C(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18E60F000, v3, v4, "[%{public}s] Dealloc", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193AD1140](v6, -1, -1);
    MEMORY[0x193AD1140](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientSettingsObservers;
  swift_beginAccess();
  v0 = *&v2[v10];
  if (v0 >> 62)
  {
    v11 = sub_18E65FBC0();
  }

  else
  {
    v11 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x193AD04B0](v12, v0);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v12 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v13 = *(v0 + 8 * v12 + 32);
        swift_unknownObjectRetain();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_15;
        }
      }

      [v13 invalidate];
      swift_unknownObjectRelease();
      ++v12;
    }

    while (v14 != v11);
  }

  sub_18E62B574();
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ActivityHostViewController();
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

void sub_18E631D1C()
{
  BSDispatchQueueAssertMain();
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ActivityHostViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_18E62FBAC();
  sub_18E62FDC4();
}

uint64_t sub_18E631DB0(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ActivityHostViewController();
  objc_msgSendSuper2(&v11, sel_viewWillAppear_, a1 & 1);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  BSDispatchQueueAssertMain();
  v4 = *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18E63B734;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E63D34C;
    *(v6 + 24) = v5;
    v10[4] = sub_18E63D34C;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_18E635E98;
    v10[3] = &block_descriptor_83;
    v7 = _Block_copy(v10);
    v8 = v4;

    [v8 performUpdate_];

    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_18E631F80(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = [v3 traitCollection];
      v8 = [v7 userInterfaceStyle];

      [v5 setUserInterfaceStyle_];
      v3 = v6;
    }
  }
}

void sub_18E632100(id a1)
{
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    MEMORY[0x1EEE9AC00](v6);
    v12[2] = v5;
    BSDispatchQueueAssertMain();
    v7 = *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
    if (v7)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = sub_18E63B73C;
      *(v8 + 24) = v12;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_18E63D34C;
      *(v9 + 24) = v8;
      aBlock[4] = sub_18E63D34C;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E635E98;
      aBlock[3] = &block_descriptor_94;
      v10 = _Block_copy(aBlock);
      v11 = v7;

      [v11 performUpdate_];

      _Block_release(v10);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_18E632370(uint64_t a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for ActivityHostViewController();
  objc_msgSendSuper2(&v17, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  result = swift_beginAccess();
  if (*(*&v3[v7] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) == 4)
  {
    MEMORY[0x1EEE9AC00](result);
    v15[16] = v9;
    result = BSDispatchQueueAssertMain();
    v10 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = sub_18E63B760;
      *(v11 + 24) = v15;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_18E63D34C;
      *(v12 + 24) = v11;
      aBlock[4] = sub_18E63D34C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E635E98;
      aBlock[3] = &block_descriptor_105;
      v13 = _Block_copy(aBlock);
      v14 = v10;

      [v14 performUpdate_];

      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_18E6326AC(uint64_t a1, char a2)
{
  BSDispatchQueueAssertMain();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ActivityHostViewController();
  objc_msgSendSuper2(&v6, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  if (*(v2 + v5) == 1)
  {
    if (a1)
    {
      sub_18E62F264();
    }

    else
    {
      sub_18E62FA90();
    }
  }
}

void sub_18E6327E4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v2 sizeToFit];
  [v2 bounds];
  v9 = CGRectInset(v8, -4.0, -4.0);
  [v2 setBounds_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 bounds];

  UIRectGetCenter();
  [v2 setCenter_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 bringSubviewToFront_];
}

uint64_t sub_18E632A54(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v10 = sub_18E65F850();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_18E65F870();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  *&v16 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2 error];
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  aBlock[4] = sub_18E63D0E8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E63D350;
  aBlock[3] = &block_descriptor_420;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  v23 = a4;

  sub_18E65F860();
  v28 = MEMORY[0x1E69E7CC0];
  sub_18E63CB04(&qword_1ED764D58, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89FE0, qword_18E6646A8);
  sub_18E63CFFC(&qword_1ED764D48, &qword_1EAC89FE0, qword_18E6646A8);
  sub_18E65FB80();
  MEMORY[0x193AD02E0](0, v18, v13, v21);
  _Block_release(v21);

  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v18, v25);
}

uint64_t sub_18E632D4C(void *a1, void *a2, uint64_t (*a3)(void *))
{
  if (a1)
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v6 = sub_18E65F6E0();
    __swift_project_value_buffer(v6, qword_1ED764D68);
    v7 = a2;
    v8 = a1;
    v9 = sub_18E65F6C0();
    v10 = sub_18E65FA60();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136446466;
      v13 = sub_18E62A1F8();
      v15 = sub_18E61173C(v13, v14, &v28);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      swift_getErrorValue();
      v16 = sub_18E65FE40();
      v18 = sub_18E61173C(v16, v17, &v28);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_18E60F000, v9, v10, "[%{public}s] Ensure content failed: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      v19 = v12;
LABEL_10:
      MEMORY[0x193AD1140](v19, -1, -1);
      MEMORY[0x193AD1140](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v20 = sub_18E65F6E0();
    __swift_project_value_buffer(v20, qword_1ED764D68);
    v21 = a2;
    v9 = sub_18E65F6C0();
    v22 = sub_18E65FA60();

    if (os_log_type_enabled(v9, v22))
    {
      v11 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v11 = 136446210;
      v24 = sub_18E62A1F8();
      v26 = sub_18E61173C(v24, v25, &v28);

      *(v11 + 4) = v26;
      _os_log_impl(&dword_18E60F000, v9, v22, "[%{public}s] Ensure content complete", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v19 = v23;
      goto LABEL_10;
    }
  }

  return a3(a1);
}

uint64_t sub_18E633024(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_18E633078(void *a1, void *a2)
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v4 = sub_18E65F6E0();
  __swift_project_value_buffer(v4, qword_1ED764D68);
  v5 = a1;
  v6 = sub_18E65F6C0();
  v7 = sub_18E65FA60();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_18E62A1F8();
    v12 = sub_18E61173C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_18E60F000, v6, v7, "[%{public}s] Ensure content: archive content ready", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193AD1140](v9, -1, -1);
    MEMORY[0x193AD1140](v8, -1, -1);
  }

  v13 = sub_18E65F8F0();
  [a2 satisfyMilestone_];
}

void sub_18E633220(void *a1, void *a2)
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v4 = sub_18E65F6E0();
  __swift_project_value_buffer(v4, qword_1ED764D68);
  v5 = a1;
  v6 = sub_18E65F6C0();
  v7 = sub_18E65FA60();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_18E62A1F8();
    v12 = sub_18E61173C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_18E60F000, v6, v7, "[%{public}s] Ensure content: initial content size ready", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193AD1140](v9, -1, -1);
    MEMORY[0x193AD1140](v8, -1, -1);
  }

  v13 = sub_18E65F8F0();
  [a2 satisfyMilestone_];
}

void sub_18E6333C8(void *a1, void *a2)
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v4 = sub_18E65F6E0();
  __swift_project_value_buffer(v4, qword_1ED764D68);
  v5 = a1;
  v6 = sub_18E65F6C0();
  v7 = sub_18E65FA60();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_18E62A1F8();
    v12 = sub_18E61173C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_18E60F000, v6, v7, "[%{public}s] Ensure content: scene activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193AD1140](v9, -1, -1);
    MEMORY[0x193AD1140](v8, -1, -1);
  }

  v13 = sub_18E65F8F0();
  [a2 satisfyMilestone_];
}

id sub_18E633578(void *a1, id a2)
{
  if (([a2 isComplete] & 1) == 0)
  {
    v4 = sub_18E65F8F0();
    [a2 failWithReason_];
  }

  return [a1 invalidate];
}

void sub_18E6336BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_18E65F350();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_18E633720(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

uint64_t sub_18E63391C()
{
  v1 = v0;
  sub_18E65FC70();
  MEMORY[0x193AD0160](0xD000000000000022, 0x800000018E668AB0);
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode);
  if (v2)
  {
    if (v2 == 2)
    {
      v3 = 0xED0000746F687370;
      v4 = 0x616E73206576696CLL;
    }

    else
    {
      if (v2 != 1)
      {
        v29 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode);
        result = sub_18E65FDF0();
        __break(1u);
        return result;
      }

      v3 = 0xE400000000000000;
      v4 = 1702259052;
    }
  }

  else
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  v5 = 7104878;
  MEMORY[0x193AD0160](v4, v3);

  MEMORY[0x193AD0160](0x696C61766E69202CLL, 0xEF203A6465746164);
  if (*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x193AD0160](v6, v7);

  MEMORY[0x193AD0160](0x6E6573657270202CLL, 0xED0000203A726574);
  v8 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter);
  if (v8)
  {
    v9 = [v8 description];
    v10 = sub_18E65F900();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x193AD0160](v10, v12);

  MEMORY[0x193AD0160](0xD000000000000014, 0x800000018E668AE0);
  v13 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView);
  if (v13)
  {
    v14 = [v13 description];
    v15 = sub_18E65F900();
    v17 = v16;
  }

  else
  {
    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x193AD0160](v15, v17);

  MEMORY[0x193AD0160](0x697263736564202CLL, 0xED00003D726F7470);
  v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = [v19 description];
  v21 = sub_18E65F900();
  v23 = v22;

  MEMORY[0x193AD0160](v21, v23);

  MEMORY[0x193AD0160](0x3A656E656373202CLL, 0xE900000000000020);
  v24 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v24)
  {
    v25 = [v24 description];
    v5 = sub_18E65F900();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
  }

  MEMORY[0x193AD0160](v5, v27);

  MEMORY[0x193AD0160](62, 0xE100000000000000);
  return 0;
}

void sub_18E633D8C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  *(v3 + v4) = v2;
  BSDispatchQueueAssertMain();
  if (*(v3 + v4) == 1)
  {
    sub_18E62F264();
  }

  else
  {
    sub_18E62FA90();
  }
}

uint64_t sub_18E633F18(void *a1)
{
  v2 = swift_unknownObjectRetain();
  MEMORY[0x193AD01B0](v2);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_18E65F9C0();
  }

  return sub_18E65F9D0();
}

void sub_18E633F90(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18E65F420();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_18E633FF4(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *a1;
    v7 = sub_18E65F410();
  }

  v9 = v7;
  [v6 *a5];
}

void sub_18E63406C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), char *a4, void (*a5)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v10 && (v11 = [v10 clientSettings]) != 0)
    {
      v12 = v11;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        ObjectType = swift_getObjectType();
        v14 = a3(ObjectType);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v15 = sub_18E65F6E0();
    __swift_project_value_buffer(v15, qword_1ED764D68);
    v16 = v14;
    v17 = v9;
    v18 = sub_18E65F6C0();
    v19 = sub_18E65FA40();

    if (os_log_type_enabled(v18, v19))
    {
      format = a4;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136446466;
      v22 = sub_18E62A1F8();
      v24 = sub_18E61173C(v22, v23, &v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      if (v14)
      {
        v25 = [v16 description];
        v26 = sub_18E65F900();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v29 = sub_18E61173C(v26, v28, &v31);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_18E60F000, v18, v19, format, v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v21, -1, -1);
      MEMORY[0x193AD1140](v20, -1, -1);
    }

    a5(v14);
  }
}

void sub_18E634304()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  v3 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v3)
  {
    v4 = [v3 clientSettings];
    if (v4)
    {
      v5 = v4;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        ObjectType = swift_getObjectType();
        v7 = sub_18E65D628(ObjectType);

        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v8 = sub_18E65F6E0();
  __swift_project_value_buffer(v8, qword_1ED764D68);
  v9 = v1;
  v10 = sub_18E65F6C0();
  v11 = sub_18E65FA40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136446210;
    v14 = sub_18E62A1F8();
    v16 = sub_18E61173C(v14, v15, &v50);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] ClientSetting[archiveContentReady] did change to YES.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x193AD1140](v13, -1, -1);
    MEMORY[0x193AD1140](v12, -1, -1);
  }

  v17 = *&v1[v2];
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = [v17 clientSettings];
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = swift_dynamicCastObjCProtocolConditional();
  if (!v20)
  {

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  v21 = [v20 resolvedMetrics];

LABEL_18:
  v22 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  v23 = *&v9[v22];
  *&v9[v22] = v21;
  v24 = v21;

  BSDispatchQueueAssertMain();
  sub_18E62EB30();

  v25 = *&v1[v2];
  if (v25)
  {
    v25 = [v25 clientSettings];
    if (v25)
    {
      v26 = v25;
      v27 = swift_dynamicCastObjCProtocolConditional();
      if (v27)
      {
        v28 = swift_getObjectType();
        v27 = sub_18E65D634(v28);
      }

      v25 = v27;
    }
  }

  sub_18E62975C(v25);
  v29 = *&v1[v2];
  if (v29)
  {
    v29 = [v29 clientSettings];
    if (v29)
    {
      v30 = v29;
      v31 = swift_dynamicCastObjCProtocolConditional();
      if (v31)
      {
        v32 = swift_getObjectType();
        v31 = sub_18E65D640(v32);
      }

      v29 = v31;
    }
  }

  sub_18E6297BC(v29);
  v33 = *&v1[v2];
  if (v33)
  {
    v34 = [v33 clientSettings];
    if (v34)
    {
      v35 = v34;
      v36 = swift_dynamicCastObjCProtocolConditional();
      if (!v36)
      {

        if (v7)
        {
          goto LABEL_34;
        }

LABEL_40:

        return;
      }

      v37 = [v36 activityHostTouchRestrictedRects];

      if (v37)
      {
        type metadata accessor for CGRect(0);
        v38 = sub_18E65F9A0();

        v39 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
        swift_beginAccess();
        v40 = *&v9[v39];
        *&v9[v39] = v38;
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v41 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReadyBlocks;
  swift_beginAccess();
  v42 = *&v9[v41];
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = *&v9[v41];

    v45 = (v42 + 40);
    do
    {
      v47 = *(v45 - 1);
      v46 = *v45;

      v47(v48);

      v45 += 2;
      --v43;
    }

    while (v43);

    v49 = *&v9[v41];
  }

  *&v9[v41] = MEMORY[0x1E69E7CC0];
}

void sub_18E63478C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v4 = sub_18E65F6E0();
    __swift_project_value_buffer(v4, qword_1ED764D68);
    v5 = v1;
    v6 = v3;
    v7 = sub_18E65F6C0();
    v8 = sub_18E65FA40();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33[0] = v10;
      *v9 = 136446466;
      v11 = sub_18E62A1F8();
      v13 = sub_18E61173C(v11, v12, v33);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      if (v1)
      {
        v14 = [v5 description];
        v15 = sub_18E65F900();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v33[3] = v15;
      v33[4] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89FF0, &qword_18E6649C0);
      v18 = sub_18E65F910();
      v20 = sub_18E61173C(v18, v19, v33);

      *(v9 + 14) = v20;
      _os_log_impl(&dword_18E60F000, v7, v8, "[%{public}s] ClientSetting[resolvedMetrics] did change to %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v10, -1, -1);
      MEMORY[0x193AD1140](v9, -1, -1);
    }

    v21 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
    swift_beginAccess();
    v22 = *&v6[v21];
    *&v6[v21] = v1;
    v23 = v5;

    BSDispatchQueueAssertMain();
    sub_18E62EB30();
    if (*&v6[v21])
    {
      v24 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForInitialContentSizeReadyBlocks;
      swift_beginAccess();
      v25 = *&v6[v24];
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = *&v6[v24];

        v28 = (v25 + 40);
        do
        {
          v30 = *(v28 - 1);
          v29 = *v28;

          v30(v31);

          v28 += 2;
          --v26;
        }

        while (v26);

        v32 = *&v6[v24];
      }

      *&v6[v24] = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }
  }
}

void sub_18E634A7C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 activityHostTouchRestrictedRects];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CGRect(0);
    v5 = sub_18E65F9A0();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_18E634AEC(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for CGRect(0);
    v3 = sub_18E65F990();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setActivityHostTouchRestrictedRects_];
}

void sub_18E634B64(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = qword_1ED764D60;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_18E65F6E0();
      __swift_project_value_buffer(v5, qword_1ED764D68);

      v6 = v3;
      v7 = sub_18E65F6C0();
      v8 = sub_18E65FA40();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v20[0] = v10;
        *v9 = 136446466;
        v11 = sub_18E62A1F8();
        v13 = sub_18E61173C(v11, v12, v20);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2082;
        type metadata accessor for CGRect(0);
        v15 = MEMORY[0x193AD01E0](v1, v14);
        v17 = sub_18E61173C(v15, v16, v20);

        *(v9 + 14) = v17;
        _os_log_impl(&dword_18E60F000, v7, v8, "[%{public}s] ClientSetting[touchRestrictedRects] did change to %{public}s", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AD1140](v10, -1, -1);
        MEMORY[0x193AD1140](v9, -1, -1);
      }

      v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
      swift_beginAccess();
      v19 = *&v6[v18];
      *&v6[v18] = v1;
    }

    else
    {
    }
  }
}

void sub_18E634D84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v2)
    {
      v3 = [v2 clientSettings];
      if (v3)
      {
        v4 = v3;
        v18[3] = &unk_1F01BC4E0;
        if (!swift_dynamicCastObjCProtocolConditional())
        {

          goto LABEL_7;
        }

        ObjectType = swift_getObjectType();
        v6 = sub_18E65D71C(ObjectType);

        if (v6 != 2)
        {
          if (qword_1ED764D60 != -1)
          {
            swift_once();
          }

          v7 = sub_18E65F6E0();
          __swift_project_value_buffer(v7, qword_1ED764D68);
          v4 = v1;
          v8 = sub_18E65F6C0();
          v9 = sub_18E65FA40();

          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v18[0] = v11;
            *v10 = 136446466;
            v12 = sub_18E62A1F8();
            v14 = sub_18E61173C(v12, v13, v18);

            *(v10 + 4) = v14;
            *(v10 + 12) = 1026;
            v15 = v6 & 1;
            *(v10 + 14) = v6 & 1;
            _os_log_impl(&dword_18E60F000, v8, v9, "[%{public}s] ClientSetting[DisableIdleTimer] did change to %{BOOL,public}d", v10, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v11);
            MEMORY[0x193AD1140](v11, -1, -1);
            MEMORY[0x193AD1140](v10, -1, -1);
          }

          else
          {

            v15 = v6 & 1;
          }

          v16 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled;
          swift_beginAccess();
          v4[v16] = v15;
          BSDispatchQueueAssertMain();
          swift_beginAccess();
          v17 = swift_unknownObjectWeakLoadStrong();
          if (v17)
          {
            [v17 activityHostViewControllerWithViewController:v4 didSetIdleTimerDisabled:v4[v16]];
            swift_unknownObjectRelease();
          }

          goto LABEL_7;
        }
      }
    }

    v4 = v1;
LABEL_7:
  }
}

void sub_18E635004(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 audioCategoriesDisablingVolumeHUD];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E65F9A0();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_18E63506C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v4 = sub_18E65F6E0();
    __swift_project_value_buffer(v4, qword_1ED764D68);

    v5 = v3;
    v6 = sub_18E65F6C0();
    v7 = sub_18E65FA40();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19[0] = v9;
      *v8 = 136446466;
      v10 = sub_18E62A1F8();
      v12 = sub_18E61173C(v10, v11, v19);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89FE8, &qword_18E6649B8);
      v13 = sub_18E65F910();
      v15 = sub_18E61173C(v13, v14, v19);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_18E60F000, v6, v7, "[%{public}s] ClientSetting[audioCategoriesDisablingVolumeHUD] did change to: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v9, -1, -1);
      MEMORY[0x193AD1140](v8, -1, -1);
    }

    v16 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
    swift_beginAccess();
    v17 = *&v5[v16];
    *&v5[v16] = v1;

    BSDispatchQueueAssertMain();
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      [v18 activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_18E6352E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [v2 clientSettings];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  if (!swift_dynamicCastObjCProtocolConditional())
  {

LABEL_7:
    v5 = 2;
    goto LABEL_8;
  }

  swift_getObjectType();
  sub_18E65D728(v21);

  v5 = LOBYTE(v21[0]);
LABEL_8:
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v6 = sub_18E65F6E0();
  __swift_project_value_buffer(v6, qword_1ED764D68);
  v7 = v1;
  v8 = sub_18E65F6C0();
  v9 = sub_18E65FA40();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136446466;
    v12 = sub_18E62A1F8();
    v14 = sub_18E61173C(v12, v13, v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = 0x6C6C616D73;
    if (v5)
    {
      v15 = 0x6D756964656DLL;
    }

    v16 = 0xE500000000000000;
    if (v5)
    {
      v16 = 0xE600000000000000;
    }

    if (v5 == 2)
    {
      v17 = 7104878;
    }

    else
    {
      v17 = v15;
    }

    if (v5 == 2)
    {
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = v16;
    }

    v19 = sub_18E61173C(v17, v18, v21);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_18E60F000, v8, v9, "[%{public}s] ClientSetting[ArchivedActivityFamily] did change to %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AD1140](v11, -1, -1);
    MEMORY[0x193AD1140](v10, -1, -1);
  }

  v20 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily;
  swift_beginAccess();
  *(v7 + v20) = v5;
}

void sub_18E635564()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v2 && (v3 = [v2 clientSettings]) != 0)
    {
      v4 = v3;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        ObjectType = swift_getObjectType();
        v6 = sub_18E65D7C4(ObjectType);
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 2;
    }

    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v7 = sub_18E65F6E0();
    __swift_project_value_buffer(v7, qword_1ED764D68);
    v8 = v1;
    v9 = sub_18E65F6C0();
    v10 = sub_18E65FA40();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136446466;
      v13 = sub_18E62A1F8();
      v15 = sub_18E61173C(v13, v14, v29);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = 1702195828;
      if ((v6 & 1) == 0)
      {
        v16 = 0x65736C6166;
      }

      v17 = 0xE500000000000000;
      if (v6)
      {
        v17 = 0xE400000000000000;
      }

      if (v6 == 2)
      {
        v18 = 7104878;
      }

      else
      {
        v18 = v16;
      }

      if (v6 == 2)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = v17;
      }

      v20 = sub_18E61173C(v18, v19, v29);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_18E60F000, v9, v10, "[%{public}s] ClientSetting[baseContentTouchedDown] did change to %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v12, -1, -1);
      MEMORY[0x193AD1140](v11, -1, -1);
    }

    v21 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_baseContentTouchedDown;
    swift_beginAccess();
    v22 = v6 & 1;
    *(v8 + v21) = v22;
    v23 = type metadata accessor for ActivityTouchEvent();
    v24 = objc_allocWithZone(v23);
    v24[OBJC_IVAR____TtC18ActivityUIServices18ActivityTouchEvent_baseContentTouchedDown] = v22;
    v28.receiver = v24;
    v28.super_class = v23;
    v25 = objc_msgSendSuper2(&v28, sel_init);
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      if ([v26 respondsToSelector_])
      {
        [v27 activityHostViewControllerWithViewController:v8 receivedTouchEvent:v25];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_18E635894(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4, uint64_t *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v10 && (v11 = [v10 clientSettings]) != 0)
    {
      v12 = v11;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        ObjectType = swift_getObjectType();
        v14 = a3(ObjectType);
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 2;
    }

    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v15 = sub_18E65F6E0();
    __swift_project_value_buffer(v15, qword_1ED764D68);
    v16 = v9;
    v17 = sub_18E65F6C0();
    v18 = sub_18E65FA40();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136446466;
      v21 = sub_18E62A1F8();
      v23 = sub_18E61173C(v21, v22, v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = 1702195828;
      if ((v14 & 1) == 0)
      {
        v24 = 0x65736C6166;
      }

      v25 = 0xE500000000000000;
      if (v14)
      {
        v25 = 0xE400000000000000;
      }

      if (v14 == 2)
      {
        v26 = 7104878;
      }

      else
      {
        v26 = v24;
      }

      if (v14 == 2)
      {
        v27 = 0xE300000000000000;
      }

      else
      {
        v27 = v25;
      }

      v28 = sub_18E61173C(v26, v27, v30);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_18E60F000, v17, v18, a4, v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v20, -1, -1);
      MEMORY[0x193AD1140](v19, -1, -1);
    }

    v29 = *a5;
    swift_beginAccess();
    *(v16 + v29) = v14 & 1;
  }
}

id sub_18E635B2C(unsigned __int8 a1, char *a2)
{
  v4 = a1;
  BSDispatchQueueAssertMain();
  if (v4 == 3)
  {
    BSDispatchQueueAssertMain();
    v17 = *&a2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView];
    if (v17)
    {
      v18 = 1.0;
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v5 = sub_18E65F6E0();
    __swift_project_value_buffer(v5, qword_1ED764D68);
    v6 = a2;
    v7 = sub_18E65F6C0();
    v8 = sub_18E65FA50();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v9 = 136446466;
      v12 = sub_18E62A1F8();
      v14 = sub_18E61173C(v12, v13, &v22);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2114;
      sub_18E63CBC4();
      swift_allocError();
      *v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_18E60F000, v7, v8, "[%{public}s] Snapshot failed so backgrounding scene without updated snapshot: %{public}@", v9, 0x16u);
      sub_18E63CCD8(v10);
      MEMORY[0x193AD1140](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x193AD1140](v11, -1, -1);
      MEMORY[0x193AD1140](v9, -1, -1);
    }

    BSDispatchQueueAssertMain();
    v17 = *&v6[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView];
    if (v17)
    {
      v18 = 0.0;
LABEL_10:
      v19 = a1 != 3;
      v20 = v17;
      [v20 setAlpha_];
      [v20 setHidden_];
    }
  }

  return sub_18E62D730(0, 0, 0);
}

void sub_18E635D88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion];
    *&Strong[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion] = 0;
  }
}

void sub_18E635DE8(void *a1, uint64_t a2, char a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 setForeground_];
    if (a3)
    {
      [v6 setDeactivationReasons_];
    }
  }
}

void sub_18E635E98(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_18E635F04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_18E635F7C(void *a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v7 = (*(a2 + v6) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
  v8 = *v7;
  v9 = v7[1];

  MEMORY[0x193AD0160](v8, v9);

  MEMORY[0x193AD0160](58, 0xE100000000000000);
  v19 = sub_18E65FF60();
  v20 = v10;
  v18 = sub_18E63CDCC();
  v17 = MEMORY[0x1E69E6158];
  v11 = sub_18E65FB50();
  v13 = v12;

  MEMORY[0x193AD0160](v11, v13);

  v14 = sub_18E65F8F0();

  [a1 setIdentifier_];

  v15 = [a1 setClientIdentity_];
  v16 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x558))(v15);
  [a1 setSpecification_];
}

uint64_t sub_18E6361B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_18E63620C(void *a1)
{
  [a1 setPresentedLayerTypes_];
  [a1 setAppearanceStyle_];
  [a1 setBackgroundColorWhileHosting_];
  [a1 setBackgroundColorWhileNotHosting_];
  [a1 setInheritsSecurity_];

  return [a1 setResizesHostedContext_];
}

uint64_t sub_18E6362AC(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_18E63CDBC;
  *(v5 + 24) = v4;
  v9[4] = sub_18E63CDC4;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18E6150BC;
  v9[3] = &block_descriptor_353;
  v6 = _Block_copy(v9);
  v7 = a2;

  [a1 updateClientSettingsWithBlock_];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_18E636404(void *a1, uint64_t a2)
{
  v4 = sub_18E65F500();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18E65F4C0();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &unk_1F01BC4E0;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (v12)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor;
    swift_beginAccess();
    v16 = *(a2 + v15);
    v17 = v16;
    v18 = a1;
    v31 = ObjectType;
    v32 = v18;
    v30 = v13;
    sub_18E65D840(v16, ObjectType);
    v19 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor;
    swift_beginAccess();
    v20 = *(a2 + v19);
    v21 = v20;
    sub_18E65D8A0(v20, ObjectType);
    v22 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
    swift_beginAccess();
    v23 = *(a2 + v22);
    v27 = v4;
    v24 = v34;
    v29 = *(v34 + 16);
    v29(v11, v23 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v8);
    sub_18E65F4A0();
    v25 = *(v24 + 8);
    v34 = v24 + 8;
    v28 = v25;
    v25(v11, v8);
    LOBYTE(v20) = sub_18E65F4E0();
    v33 = *(v33 + 8);
    (v33)(v7, v4);
    v26 = v31;
    sub_18E65DA34(v20 & 1, v31);
    v29(v11, *(a2 + v22) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v8);
    sub_18E65F4A0();
    v28(v11, v8);
    LOBYTE(v20) = sub_18E65F4F0();
    (v33)(v7, v27);
    sub_18E65DA40(v20 & 1, v26);
  }
}

void sub_18E636734(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, char a6, void *a7, uint64_t a8)
{
  v15 = sub_18E65F4C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = a3[1];
  BSRectWithSize();
  [a1 setFrame_];
  [a1 setInterfaceOrientation_];
  if (a5)
  {
    v22 = a5;
  }

  else
  {
    v22 = [objc_opt_self() mainConfiguration];
  }

  v23 = a5;
  [a1 setDisplayConfiguration_];

  [a1 setForeground_];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = a1;
    v27 = [a7 traitCollection];
    v28 = [v27 userInterfaceStyle];

    [v25 setUserInterfaceStyle_];
    [v25 setDeactivationReasons_];
  }

  v46 = &unk_1F01BC110;
  v29 = swift_dynamicCastObjCProtocolConditional();
  if (v29)
  {
    v30 = v29;
    swift_getObjectType();
    (*((*MEMORY[0x1E69E7D40] & *a7) + 0x560))();
    v45 = a1;
    v31 = sub_18E65F8F0();

    [v30 setActivityHostIdentifier_];

    v32 = a8;
    v33 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
    swift_beginAccess();
    v34 = (*(a7 + v33) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
    v35 = *v34;
    v36 = v34[1];

    v37 = sub_18E65F8F0();

    [v30 setActivityIdentifier_];

    [v30 setActivityMetrics_];
    v38 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
    swift_beginAccess();
    [v30 setMetricsRequest_];
    (*(v16 + 16))(v19, *(a7 + v33) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v15);
    sub_18E63E528(v19);
    v39 = (*(a7 + v33) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID);
    if (v39[1])
    {
      v40 = *v39;
      v41 = v39[1];

      v42 = sub_18E65F8F0();
    }

    else
    {
      v42 = 0;
    }

    [v30 setPayloadID_];

    v43 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
    swift_beginAccess();
    sub_18E63E4B8(*(a7 + v43));
  }
}

id sub_18E636B4C(char *a1, double a2, double a3)
{
  *&v29[2] = a2;
  *&v29[3] = a3;
  v29[4] = a1;
  BSDispatchQueueAssertMain();
  v6 = *&a1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E63CC70;
  *(v7 + 24) = v29;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E63D34C;
  *(v8 + 24) = v7;
  v34 = sub_18E63D34C;
  v35 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_18E635E98;
  v33 = &block_descriptor_291;
  v9 = _Block_copy(&aBlock);
  v10 = v6;

  [v10 performUpdate_];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
LABEL_3:
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v12 = sub_18E65F6E0();
    __swift_project_value_buffer(v12, qword_1ED764D68);
    v13 = a1;
    v14 = sub_18E65F6C0();
    v15 = sub_18E65FA60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 136446722;
      v18 = sub_18E62A1F8();
      v20 = sub_18E61173C(v18, v19, &v36);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      aBlock = a2;
      v31 = *&a3;
      type metadata accessor for CGSize(0);
      v21 = sub_18E65F910();
      v23 = sub_18E61173C(v21, v22, &v36);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      [v13 preferredContentSize];
      aBlock = v24;
      v31 = v25;
      v26 = sub_18E65F910();
      v28 = sub_18E61173C(v26, v27, &v36);

      *(v16 + 24) = v28;
      _os_log_impl(&dword_18E60F000, v14, v15, "[%{public}s] Updating preferred content size with requested size: %{public}s, current size: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v17, -1, -1);
      MEMORY[0x193AD1140](v16, -1, -1);
    }

    return [v13 setPreferredContentSize_];
  }

  return result;
}

void sub_18E636EC8(void *a1, void *a2, void *a3)
{
  BSRectWithSize();
  [a1 setFrame_];
  v6 = [a3 view];
  if (!v6)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = [v6 layer];

  v9 = [v8 presentationLayer];
  if (v9)
  {
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = 0.0;
    v13 = 0.0;
    v15 = 0.0;
    v17 = 0.0;
  }

  v18 = [a3 view];
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18;
  v20 = [a3 view];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = [v20 window];

  [v19 convertRect:v22 toView:{v11, v13, v15, v17}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v41.origin.x = v24;
  v41.origin.y = v26;
  v41.size.width = v28;
  v41.size.height = v30;
  if (CGRectGetMinY(v41) <= 0.0 || (v42.origin.x = v11, v42.origin.y = v13, v42.size.width = v15, v42.size.height = v17, CGRectIsEmpty(v42)))
  {
    v31 = 0;
  }

  else
  {
    v36 = [a3 view];
    if (!v36)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v37 = v36;
    v38 = [v36 window];

    v31 = [v38 windowScene];
    if (v31)
    {

      v31 = [objc_opt_self() settingsWithMass:1.0 stiffness:145.0 damping:22.0];
    }
  }

  [a2 setAnimationSettings_];

  v32 = [a3 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v32 window];

  if (v34)
  {
    v35 = [v34 windowScene];

    if (v35)
    {
      v39 = [v35 _synchronizedDrawingFence];

      if (v39)
      {
        [a2 setAnimationFence_];
      }
    }
  }
}

uint64_t sub_18E637240(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_18E63A3BC(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_18E63A3BC((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_18E63B3CC(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_18E637338(void *a1, void *a2, const char *a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v7 = sub_18E65F6E0();
    __swift_project_value_buffer(v7, qword_1ED764D68);
    v8 = a1;
    v9 = a2;
    v10 = sub_18E65F6C0();
    v11 = sub_18E65FA60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446466;
      v14 = sub_18E62A1F8();
      v16 = sub_18E61173C(v14, v15, &v20);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      swift_getErrorValue();
      v17 = sub_18E65FE40();
      v19 = sub_18E61173C(v17, v18, &v20);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_18E60F000, v10, v11, a3, v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v13, -1, -1);
      MEMORY[0x193AD1140](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18E63753C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_18E637580(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v9 = sub_18E65F6E0();
    __swift_project_value_buffer(v9, qword_1ED764D68);
    v10 = a3;
    v11 = sub_18E65F6C0();
    v12 = sub_18E65FA50();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v13 = 136446466;
      v14 = sub_18E62A1F8();
      v16 = sub_18E61173C(v14, v15, &aBlock);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      sub_18E63CBC4();
      v17 = sub_18E65FDC0();
      if (!v17)
      {
        v17 = swift_allocError();
        *v18 = a1;
      }

      v19 = v17;
      v20 = sub_18E65F350();

      v21 = [v20 localizedDescription];
      v22 = sub_18E65F900();
      v24 = v23;

      v25 = sub_18E61173C(v22, v24, &aBlock);

      *(v13 + 14) = v25;
      _os_log_impl(&dword_18E60F000, v11, v12, "[%{public}s] Snapshot failed - %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v30, -1, -1);
      MEMORY[0x193AD1140](v13, -1, -1);
    }

    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    *(v26 + 32) = a1;
    v35 = sub_18E63CB94;
    v36 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_18E63D350;
    v34 = &block_descriptor_262;
    v27 = _Block_copy(&aBlock);
  }

  else
  {
    v28 = swift_allocObject();
    v28[2] = a3;
    v28[3] = a1;
    v28[4] = a4;
    v28[5] = a5;
    v35 = sub_18E63CC18;
    v36 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_18E63D350;
    v34 = &block_descriptor_268;
    v27 = _Block_copy(&aBlock);
    v29 = a3;
    sub_18E63CC24(a1, 0);
  }

  BSDispatchMain();
  _Block_release(v27);
}

void sub_18E6378FC(char *a1, void *a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode] == 2)
  {
    v21[11] = v3;
    v22 = v4;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v8 = sub_18E65F6E0();
    __swift_project_value_buffer(v8, qword_1ED764D68);
    v9 = a1;
    v10 = sub_18E65F6C0();
    v11 = sub_18E65FA60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136446210;
      v14 = sub_18E62A1F8();
      v16 = sub_18E61173C(v14, v15, v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] Snapshot success - Updating layer.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x193AD1140](v13, -1, -1);
      MEMORY[0x193AD1140](v12, -1, -1);
    }

    v17 = [a2 IOSurface];
    if (!v17)
    {
      v17 = [a2 fallbackIOSurface];
    }

    v20 = v17;
    v18 = *&v9[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView];
    if (v18)
    {
      v19 = [v18 layer];
      [v19 setContents_];
    }

    a3(3);
  }
}

unint64_t sub_18E637B30()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

id ActivityHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_18E65F8F0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void ActivityHostViewController.sceneDidDeactivate(_:withError:)(void *a1, id a2)
{
  v3 = v2;
  v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated] = 0;
  if (!a2)
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v20 = sub_18E65F6E0();
    __swift_project_value_buffer(v20, qword_1ED764D68);
    v21 = v2;
    v10 = sub_18E65F6C0();
    v22 = sub_18E65FA40();

    if (os_log_type_enabled(v10, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446210;
      v25 = sub_18E62A1F8();
      v27 = sub_18E61173C(v25, v26, &aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_18E60F000, v10, v22, "[%{public}s] Scene did deactivate.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x193AD1140](v24, -1, -1);
      MEMORY[0x193AD1140](v23, -1, -1);
    }

    goto LABEL_10;
  }

  v6 = a2;
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v7 = sub_18E65F6E0();
  __swift_project_value_buffer(v7, qword_1ED764D68);
  v8 = a2;
  v9 = v2;
  v10 = sub_18E65F6C0();
  v11 = sub_18E65FA40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446466;
    v14 = sub_18E62A1F8();
    v16 = sub_18E61173C(v14, v15, &aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    swift_getErrorValue();
    v17 = sub_18E65FE40();
    v19 = sub_18E61173C(v17, v18, &aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] Scene did deactivate with error: %{public}s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AD1140](v13, -1, -1);
    MEMORY[0x193AD1140](v12, -1, -1);

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  v28 = *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v28)
  {
    v29 = v28;
    if (sub_18E63BADC(a2))
    {
      v30 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout;
      if (*&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout] == 10)
      {
        v31 = v29;
        v32 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
        swift_beginAccess();
        v33 = (*&v3[v32] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
        v35 = *v33;
        v34 = v33[1];
        v36 = qword_1ED764D60;

        if (v36 != -1)
        {
          swift_once();
        }

        v37 = sub_18E65F6E0();
        __swift_project_value_buffer(v37, qword_1ED764D68);
        v38 = v3;

        v39 = sub_18E65F6C0();
        v40 = sub_18E65FA60();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v99 = v42;
          *v41 = 136447234;
          v43 = sub_18E62A1F8();
          v45 = sub_18E61173C(v43, v44, &v99);

          *(v41 + 4) = v45;
          *(v41 + 12) = 2082;
          *(v41 + 14) = sub_18E61173C(*&v38[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource], *&v38[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource + 8], &v99);
          *(v41 + 22) = 2050;
          *(v41 + 24) = 10;
          *(v41 + 32) = 2050;
          *(v41 + 34) = 0x4014000000000000;
          *(v41 + 42) = 2082;
          *(v41 + 44) = sub_18E61173C(v35, v34, &v99);
          _os_log_impl(&dword_18E60F000, v39, v40, "[%{public}s] %{public}s exited %{public}ld times within %{public}f seconds, ending the session: %{public}s", v41, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x193AD1140](v42, -1, -1);
          MEMORY[0x193AD1140](v41, -1, -1);
        }

        sub_18E65F530();
        sub_18E65F520();
        sub_18E65F510();

        return;
      }

      if (qword_1ED764D60 != -1)
      {
        swift_once();
      }

      v57 = sub_18E65F6E0();
      __swift_project_value_buffer(v57, qword_1ED764D68);
      v58 = a2;
      v59 = v2;
      v60 = sub_18E65F6C0();
      v61 = sub_18E65FA60();

      if (os_log_type_enabled(v60, v61))
      {
        v98 = v29;
        v62 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        aBlock = v97;
        *v62 = 136447234;
        v63 = sub_18E62A1F8();
        v65 = sub_18E61173C(v63, v64, &aBlock);

        *(v62 + 4) = v65;
        *(v62 + 12) = 2082;
        *(v62 + 14) = sub_18E61173C(*&v59[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource], *&v59[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource + 8], &aBlock);
        *(v62 + 22) = 2050;
        *(v62 + 24) = 0x4014000000000000;
        *(v62 + 32) = 2080;
        v99 = a2;
        v66 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89F60, &qword_18E664508);
        v67 = sub_18E65F910();
        v69 = sub_18E61173C(v67, v68, &aBlock);

        *(v62 + 34) = v69;
        *(v62 + 42) = 2080;
        v99 = *&v2[v30];
        v70 = sub_18E65FDB0();
        v72 = sub_18E61173C(v70, v71, &aBlock);

        *(v62 + 44) = v72;
        _os_log_impl(&dword_18E60F000, v60, v61, "[%{public}s] %{public}s exited within %{public}f seconds with error: %s, sceneClientExitCountWithinTimeout: %s", v62, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x193AD1140](v97, -1, -1);
        v73 = v62;
        v29 = v98;
        MEMORY[0x193AD1140](v73, -1, -1);
      }

      v74 = *&v2[v30];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        __break(1u);
        goto LABEL_40;
      }

      *&v2[v30] = v76;
      v77 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer;
      if (!*&v59[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer])
      {
        v78 = objc_allocWithZone(MEMORY[0x1E698E5E8]);
        v79 = sub_18E65F8F0();
        v80 = [v78 initWithIdentifier_];

        v81 = *&v59[v77];
        *&v59[v77] = v80;
        v82 = v80;

        if (v82)
        {
          sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
          v83 = sub_18E65FAA0();
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v104 = sub_18E63BF78;
          v105 = v84;
          aBlock = MEMORY[0x1E69E9820];
          v101 = 1107296256;
          v102 = sub_18E61D9D8;
          v103 = &block_descriptor_113;
          v85 = _Block_copy(&aBlock);

          [v82 scheduleWithFireInterval:v83 leewayInterval:v85 queue:5.0 handler:0.0];
          _Block_release(v85);
        }
      }
    }

    sub_18E623B78(0, &qword_1ED764CC0, 0x1E69E58C0);
    if ((sub_18E65FB20() & 1) == 0)
    {
LABEL_38:

      return;
    }

    v86 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer;
    if (*&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer])
    {
LABEL_37:

      sub_18E625440();

      goto LABEL_38;
    }

    aBlock = 0;
    v101 = 0xE000000000000000;
    sub_18E65FC70();

    aBlock = 0xD00000000000001BLL;
    v101 = 0x800000018E668B50;
    v87 = sub_18E62A1F8();
    MEMORY[0x193AD0160](v87);

    v88 = aBlock;
    v89 = v101;
    sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
    v90 = sub_18E65FAA0();
    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = a1;
    type metadata accessor for BackOffTimer();
    v93 = swift_allocObject();
    *(v93 + 64) = v92;
    *(v93 + 72) = 0;
    *(v93 + 16) = 0;
    *(v93 + 24) = 0;
    *(v93 + 80) = 1;
    *(v93 + 88) = 0;
    *(v93 + 32) = v88;
    *(v93 + 40) = v89;
    *(v93 + 48) = v90;
    *(v93 + 56) = sub_18E63BF70;
    v94 = *&v3[v86];
    *&v3[v86] = v93;
    v95 = a1;

    v96 = *&v3[v86];
    if (v96)
    {
      *(v96 + 72) = 0x4046800000000000;
      *(v96 + 80) = 0;
      goto LABEL_37;
    }

LABEL_40:
    __break(1u);
    return;
  }

  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v46 = sub_18E65F6E0();
  __swift_project_value_buffer(v46, qword_1ED764D68);
  v47 = a1;
  v48 = sub_18E65F6C0();
  v49 = sub_18E65FA50();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock = v51;
    *v50 = 136315138;
    v52 = [v47 identifier];
    v53 = sub_18E65F900();
    v55 = v54;

    v56 = sub_18E61173C(v53, v55, &aBlock);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_18E60F000, v48, v49, "No activity scene found: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x193AD1140](v51, -1, -1);
    MEMORY[0x193AD1140](v50, -1, -1);
  }
}

void sub_18E6388B0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout) = 0;
    v3 = Strong;
    [a1 invalidate];
    v4 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer];
    *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer] = 0;
  }
}

void sub_18E638934(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 settings];
    v6 = [v5 isForeground];

    if ((*(v4 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated) & 1) == 0 && v6)
    {
      if (qword_1ED764D60 != -1)
      {
        swift_once();
      }

      v7 = sub_18E65F6E0();
      __swift_project_value_buffer(v7, qword_1ED764D68);
      v8 = v4;
      v9 = sub_18E65F6C0();
      v10 = sub_18E65FA60();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16 = v12;
        *v11 = 136446210;
        v13 = sub_18E62A1F8();
        v15 = sub_18E61173C(v13, v14, &v16);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_18E60F000, v9, v10, "[%{public}s] Scene did deactivate but was foreground - reactivating.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x193AD1140](v12, -1, -1);
        MEMORY[0x193AD1140](v11, -1, -1);
      }

      [a2 activateWithTransitionContext_];
    }
  }
}

void ActivityHostViewController.sceneContentStateDidChange(_:)(void *a1)
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v3 = sub_18E65F6E0();
  __swift_project_value_buffer(v3, qword_1ED764D68);
  v4 = v1;
  v5 = a1;
  oslog = sub_18E65F6C0();
  v6 = sub_18E65FA60();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    v9 = sub_18E62A1F8();
    v11 = sub_18E61173C(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    [v5 contentState];
    type metadata accessor for FBSceneContentState(0);
    v12 = sub_18E65F910();
    v14 = sub_18E61173C(v12, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_18E60F000, oslog, v6, "[%{public}s] Content state changed: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AD1140](v8, -1, -1);
    MEMORY[0x193AD1140](v7, -1, -1);
  }

  else
  {
  }
}

void ActivityHostViewController.scene(_:didReceive:)(int64_t a1, uint64_t a2)
{
  if (qword_1ED764D60 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v5 = sub_18E65F6E0();
    v6 = __swift_project_value_buffer(v5, qword_1ED764D68);
    v7 = v2;

    v2 = v6;
    v8 = sub_18E65F6C0();
    v9 = sub_18E65FA60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v87[0] = v11;
      *v10 = 136446467;
      v12 = sub_18E62A1F8();
      v14 = v7;
      v15 = sub_18E61173C(v12, v13, v87);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2081;
      sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      sub_18E63B6CC();
      v16 = sub_18E65FA10();
      v2 = v17;
      v18 = sub_18E61173C(v16, v17, v87);

      *(v10 + 14) = v18;
      v7 = v14;
      _os_log_impl(&dword_18E60F000, v8, v9, "[%{public}s] Scene did receive actions: %{private}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v11, -1, -1);
      MEMORY[0x193AD1140](v10, -1, -1);
    }

    if (*(v7 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated))
    {
      return;
    }

    v77 = v6;
    v78 = a1;
    v86[0] = MEMORY[0x1E69E7CD0];
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_18E65FBB0();
      v2 = sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      sub_18E63B6CC();
      sub_18E65FA20();
      a2 = v86[1];
      v20 = v86[2];
      v21 = v86[3];
      v22 = v86[4];
      v23 = v86[5];
    }

    else
    {
      v24 = -1 << *(a2 + 32);
      v20 = a2 + 56;
      v21 = ~v24;
      v25 = -v24;
      v26 = v25 < 64 ? ~(-1 << v25) : -1;
      v23 = v26 & *(a2 + 56);

      v22 = 0;
    }

    a1 = (v21 + 64) >> 6;
    v27 = 0x1EAC89000uLL;
    *&v19 = 136446466;
    v76 = v19;
    v79 = v20;
    v80 = a2;
    v81 = a1;
    v82 = v7;
    if (a2 < 0)
    {
      break;
    }

    while (1)
    {
LABEL_15:
      v31 = v22;
      v32 = v23;
      for (i = v22; !v32; ++v31)
      {
        i = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_73;
        }

        if (i >= a1)
        {
          goto LABEL_70;
        }

        v32 = *(v20 + 8 * i);
      }

      v30 = (v32 - 1) & v32;
      v28 = *(*(a2 + 48) + ((i << 9) | (8 * __clz(__rbit64(v32)))));
      if (!v28)
      {
        goto LABEL_70;
      }

LABEL_20:
      v83 = v30;
      objc_opt_self();
      v84 = v28;
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v2 = v33;
        v34 = *(v27 + 3592);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          break;
        }
      }

      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = v43;
        v45 = [v43 command];
        if (v45 == 3)
        {
          v27 = 0x1EAC89000uLL;
          v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_delegate;
          swift_beginAccess();
          v47 = swift_unknownObjectWeakLoadStrong();
          v46 = v28;
          if (!v47)
          {
            goto LABEL_41;
          }

          v48 = sel_activityHostViewControllerSignificantUserInteractionEndedWithViewController_;
        }

        else
        {
          v46 = v28;
          if (v45 == 2)
          {
            v27 = 0x1EAC89000uLL;
            v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_delegate;
            swift_beginAccess();
            v47 = swift_unknownObjectWeakLoadStrong();
            if (!v47)
            {
              goto LABEL_41;
            }

            v48 = sel_activityHostViewControllerSignificantUserInteractionBeganWithViewController_;
          }

          else
          {
            if (v45 != 1)
            {
              v51 = v7;
              v52 = v7;
              v53 = v28;
              v2 = v77;
              v54 = sub_18E65F6C0();
              v55 = sub_18E65FA50();

              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v85 = v57;
                *v56 = v76;
                v58 = sub_18E62A1F8();
                v60 = sub_18E61173C(v58, v59, &v85);

                *(v56 + 4) = v60;
                *(v56 + 12) = 2080;
                [v44 command];
                type metadata accessor for ACUISActivitySceneCommand(0);
                v61 = sub_18E65F910();
                v2 = v62;
                v63 = sub_18E61173C(v61, v62, &v85);

                *(v56 + 14) = v63;
                _os_log_impl(&dword_18E60F000, v54, v55, "[%{public}s] Unknown ACUISActivitySceneAction command: %s", v56, 0x16u);
                swift_arrayDestroy();
                v64 = v57;
                v20 = v79;
                MEMORY[0x193AD1140](v64, -1, -1);
                v65 = v56;
                a2 = v80;
                MEMORY[0x193AD1140](v65, -1, -1);
              }

              else
              {
              }

              v22 = i;
              v23 = v83;
              v7 = v51;
              goto LABEL_67;
            }

            v27 = 0x1EAC89000uLL;
            v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_delegate;
            swift_beginAccess();
            v47 = swift_unknownObjectWeakLoadStrong();
            if (!v47)
            {
LABEL_41:

              goto LABEL_63;
            }

            v48 = sel_activityHostViewControllerHostShouldCancelTouchesWithViewController_;
          }
        }

        v2 = v47;
        [v47 v48];

        swift_unknownObjectRelease();
      }

      else
      {
        v2 = *(v27 + 3592);
        swift_beginAccess();
        v49 = swift_unknownObjectWeakLoadStrong();
        if (!v49)
        {
          goto LABEL_61;
        }

        v50 = v49;
        if (([v49 respondsToSelector_] & 1) == 0)
        {
          goto LABEL_60;
        }

        v2 = [v50 activityHostViewControllerWithViewController:v7 didReceiveAction:v28];
        swift_unknownObjectRelease();
        if (!v2)
        {
          v2 = v86;
          sub_18E63A4EC(&v85, v28);
          v73 = v85;
          goto LABEL_62;
        }
      }

LABEL_63:
      v22 = i;
      v23 = v83;
      if (a2 < 0)
      {
        goto LABEL_12;
      }
    }

    v36 = Strong;
    v37 = [v2 launchActions];
    if (!v37)
    {
      [v36 activityHostViewControllerWithViewController:v7 requestsLaunchWithAction:0];
LABEL_60:
      swift_unknownObjectRelease();
LABEL_61:
      v73 = v84;
LABEL_62:

      goto LABEL_63;
    }

    v38 = v37;
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    v2 = sub_18E63B6CC();
    v39 = sub_18E65FA00();

    if ((v39 & 0xC000000000000001) != 0)
    {
      sub_18E65FBB0();
      sub_18E65FA20();
      v39 = v87[0];
      a2 = v87[1];
      v40 = v87[2];
      v41 = v87[3];
      v42 = v87[4];
    }

    else
    {
      v41 = 0;
      v66 = -1 << *(v39 + 32);
      a2 = v39 + 56;
      v40 = ~v66;
      v67 = -v66;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      else
      {
        v68 = -1;
      }

      v42 = v68 & *(v39 + 56);
    }

    a1 = (v40 + 64) >> 6;
    if (v39 < 0)
    {
LABEL_49:
      v2 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      if (!sub_18E65FBE0())
      {
        goto LABEL_59;
      }

      swift_dynamicCast();
      v2 = v85;
      v69 = v41;
      v70 = v42;
      if (!v85)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    while (1)
    {
      v71 = v41;
      v72 = v42;
      v69 = v41;
      if (!v42)
      {
        break;
      }

LABEL_56:
      v70 = (v72 - 1) & v72;
      v2 = *(*(v39 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v72)))));
      if (!v2)
      {
LABEL_59:
        sub_18E615B48();
        swift_unknownObjectRelease();

        v22 = i;
        v7 = v82;
        v23 = v83;
        v20 = v79;
        a2 = v80;
LABEL_67:
        a1 = v81;
        v27 = 0x1EAC89000;
        if (a2 < 0)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }

LABEL_57:
      [v36 activityHostViewControllerWithViewController:v82 requestsLaunchWithAction:{v2, v76}];

      v41 = v69;
      v42 = v70;
      if (v39 < 0)
      {
        goto LABEL_49;
      }
    }

    while (1)
    {
      v69 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v69 >= a1)
      {
        goto LABEL_59;
      }

      v72 = *(a2 + 8 * v69);
      ++v71;
      if (v72)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
  }

LABEL_12:
  if (sub_18E65FBE0())
  {
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    swift_dynamicCast();
    v28 = v85;
    i = v22;
    v30 = v23;
    if (v85)
    {
      goto LABEL_20;
    }
  }

LABEL_70:
  sub_18E615B48();
  v74 = [objc_allocWithZone(MEMORY[0x1E698E568]) init];
  sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
  sub_18E63B6CC();
  v75 = sub_18E65F9F0();
}

uint64_t sub_18E639A2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_18E639A78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_18E639B7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A050, &qword_18E664A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A058, &qword_18E664A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18E639CB0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A048, &qword_18E664A00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_18E639D5C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_18E61173C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_18E639DB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_18E639E04(a1, a2);
  sub_18E639F34(&unk_1F0195BF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_18E639E04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18E63A020(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18E65FCA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_18E65F940();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18E63A020(v10, 0);
        result = sub_18E65FC60();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18E639F34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_18E63A094(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18E63A020(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A060, &qword_18E664A18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18E63A094(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A060, &qword_18E664A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_18E63A188(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_18E63A198(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_18E63A1B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_18E63A210(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_18E63A248(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E65FB90() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x193AD06C0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_18E63A3BC(char *a1, int64_t a2, char a3)
{
  result = sub_18E63A3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E63A3DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A040, &qword_18E6649F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_18E63A4EC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_18E65FBD0();

    if (v9)
    {

      sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_18E65FBC0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_18E63A724(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_18E63A914(v22 + 1);
    }

    v20 = v8;
    sub_18E63AB3C(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
  v11 = *(v6 + 40);
  v12 = sub_18E65FB10();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_18E63ABC0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_18E65FB20();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_18E63A724(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
    v2 = sub_18E65FC40();
    v16 = v2;
    sub_18E65FBB0();
    if (sub_18E65FBE0())
    {
      sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_18E63A914(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_18E65FB10();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_18E65FBE0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_18E63A914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
  result = sub_18E65FC30();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_18E65FB10();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_18E63AB3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_18E65FB10();
  v5 = -1 << *(a2 + 32);
  result = sub_18E65FBA0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_18E63ABC0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18E63A914(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_18E63AD30();
      goto LABEL_12;
    }

    sub_18E63AE80(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_18E65FB10();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_18E65FB20();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18E65FE00();
  __break(1u);
}

id sub_18E63AD30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
  v2 = *v0;
  v3 = sub_18E65FC20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_18E63AE80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
  result = sub_18E65FC30();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_18E65FB10();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_18E63B094(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_18E63B194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4D0, &unk_18E664A20);
  v3 = sub_18E65FD00();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_18E64C61C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_18E64C61C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E63B298(uint64_t a1)
{
  v2 = sub_18E65F580();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E63B320()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

_OWORD *sub_18E63B3CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_18E63B3DC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18E65FBC0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
      v3 = sub_18E65FC50();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18E65FBC0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x193AD04B0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_18E65FB10();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_18E65FB20();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_18E65FB10();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_18E65FB20();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_18E63B6CC()
{
  result = qword_1ED764CD0;
  if (!qword_1ED764CD0)
  {
    sub_18E623B78(255, &qword_1ED764CE0, 0x1E698E5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764CD0);
  }

  return result;
}

id sub_18E63B760(void *a1)
{
  if (*(v1 + 16))
  {
    v2 = 1;
  }

  else
  {
    v2 = 4;
  }

  return [a1 setInterfaceOrientation_];
}

unint64_t sub_18E63B77C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A018, &qword_18E6649D8);
    v3 = sub_18E65FD00();
    v4 = a1 + 32;

    while (1)
    {
      sub_18E63D054(v4, v13);
      result = sub_18E64C664(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_18E63B3CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_18E63B898()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily) = 2;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_baseContentTouchedDown) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_actionButtonInitiated) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShowSystemAperture) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneForeground) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReady) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReadyBlocks) = v1;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForInitialContentSizeReadyBlocks) = v1;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivatedBlocks) = v1;
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_touchDeliveryPolicyAssertions;
  *(v0 + v2) = sub_18E63B194(v1);
  v3 = (v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneTargetBundleIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientSettingsObservers) = v1;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost) = 0;
  sub_18E65FCC0();
  __break(1u);
}

void *sub_18E63BADC(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A030, &qword_18E6649F0);
    sub_18E623B78(0, &qword_1ED764CF0, 0x1E696ABC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v11 domain];
    v3 = sub_18E65F900();
    v5 = v4;

    v6 = *MEMORY[0x1E699F798];
    if (v3 == sub_18E65F900() && v5 == v7)
    {
    }

    else
    {
      v9 = sub_18E65FDE0();

      if ((v9 & 1) == 0)
      {

        return 0;
      }
    }

    v10 = [v11 code];

    return (v10 == 4);
  }

  return result;
}

uint64_t _s18ActivityUIServices0A18HostViewControllerC16sceneDidActivateyySo7FBSceneCF_0()
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v1 = sub_18E65F6E0();
  __swift_project_value_buffer(v1, qword_1ED764D68);
  v2 = v0;
  v3 = sub_18E65F6C0();
  v4 = sub_18E65FA40();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446210;
    v7 = sub_18E62A1F8();
    v9 = sub_18E61173C(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18E60F000, v3, v4, "[%{public}s] Scene did activate.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193AD1140](v6, -1, -1);
    MEMORY[0x193AD1140](v5, -1, -1);
  }

  v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated] = 1;
  v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivatedBlocks;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *&v2[v10];

    v14 = (v11 + 40);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      v16(v17);

      v14 += 2;
      --v12;
    }

    while (v12);

    v18 = *&v2[v10];
  }

  *&v2[v10] = MEMORY[0x1E69E7CC0];
}

void _s18ActivityUIServices0A18HostViewControllerC18sceneDidInvalidateyySo7FBSceneCF_0()
{
  v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated] = 0;
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v1 = sub_18E65F6E0();
  __swift_project_value_buffer(v1, qword_1ED764D68);
  v2 = v0;
  oslog = sub_18E65F6C0();
  v3 = sub_18E65FA40();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_18E62A1F8();
    v8 = sub_18E61173C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_18E60F000, oslog, v3, "[%{public}s] Scene did invalidate.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x193AD1140](v5, -1, -1);
    MEMORY[0x193AD1140](v4, -1, -1);
  }
}

void sub_18E63BF80(void (*a1)(void), const char *a2)
{
  a1();
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v4 = sub_18E65F6E0();
  __swift_project_value_buffer(v4, qword_1ED764D68);
  v5 = v2;
  oslog = sub_18E65F6C0();
  v6 = sub_18E65FA40();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    v9 = sub_18E62A1F8();
    v11 = sub_18E61173C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_18E60F000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x193AD1140](v8, -1, -1);
    MEMORY[0x193AD1140](v7, -1, -1);
  }
}

unint64_t sub_18E63C0EC()
{
  result = qword_1EAC89F68;
  if (!qword_1EAC89F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89F68);
  }

  return result;
}

uint64_t keypath_set_133Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_118Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_18E63CAA8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = [v3 capture];
  v5 = 2;
  if (v4)
  {
    v5 = v3;
  }

  return v2(v5, v4 ^ 1);
}

uint64_t sub_18E63CB04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18E63CBC4()
{
  result = qword_1ED764F00;
  if (!qword_1ED764F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764F00);
  }

  return result;
}

id sub_18E63CC24(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

id sub_18E63CC30()
{
  v1 = 0.0;
  if (*(v0 + 16))
  {
    v1 = 1.0;
  }

  return [*(v0 + 24) setAlpha_];
}

double sub_18E63CC70(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_18E636EC8(a1, a2, *(v2 + 32));
  return result;
}

uint64_t sub_18E63CC7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E63CC94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_18E63CCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A600, qword_18E666430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_324Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E63CD8C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

unint64_t sub_18E63CDCC()
{
  result = qword_1ED764D50;
  if (!qword_1ED764D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764D50);
  }

  return result;
}

uint64_t sub_18E63CFFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E63D054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A020, &qword_18E6649E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18E63D0FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_18E62D534(v1);
}

uint64_t getEnumTagSinglePayload for ActivityHostViewController.SceneCaptureError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityHostViewController.SceneCaptureError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18E63D288()
{
  result = qword_1EAC8A070;
  if (!qword_1EAC8A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A070);
  }

  return result;
}

uint64_t sub_18E63D408()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E65FC70();

  strcpy(v4, "Missing data: ");
  MEMORY[0x193AD0160](v1, v2);
  return v4[0];
}

uint64_t sub_18E63D494(uint64_t a1)
{
  v2 = sub_18E63D51C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18E63D4D0(uint64_t a1)
{
  v2 = sub_18E63D51C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18E63D51C()
{
  result = qword_1EAC8A0E0;
  if (!qword_1EAC8A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A0E0);
  }

  return result;
}

uint64_t sub_18E63D588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E63D614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ActivityLaunchRequest.activityDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityLaunchRequest(0) + 20);
  v4 = sub_18E65F4C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_18E63D734(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityLaunchRequest.activityDescriptor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityLaunchRequest(0) + 20);
  v4 = sub_18E65F4C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivityLaunchRequest.init(launchType:activityDescriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18E63D8B8(a1, a3);
  v5 = *(type metadata accessor for ActivityLaunchRequest(0) + 20);
  v6 = sub_18E65F4C0();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_18E63D8B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id static ActivityLaunchRequest.userActivity(for:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69636A8]);
  v1 = sub_18E65F8F0();
  v2 = [v0 initWithActivityType_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A0E8, &unk_18E664C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E6636F0;
  v4 = MEMORY[0x1E69E6158];
  sub_18E65FC10();
  v5 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  sub_18E63B77C(inited);
  swift_setDeallocating();
  sub_18E63DA70(inited + 32);
  v7 = sub_18E65F8A0();

  [v2 setUserInfo_];

  return v2;
}

uint64_t sub_18E63DA70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A020, &qword_18E6649E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E63DB00()
{
  result = type metadata accessor for ActivityLaunchRequest.LaunchType(319);
  if (v1 <= 0x3F)
  {
    result = sub_18E65F4C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_18E63DBD4()
{
  result = sub_18E65F400();
  if (v1 <= 0x3F)
  {
    result = sub_18E63DC48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_18E63DC48()
{
  result = qword_1EAC8A100;
  if (!qword_1EAC8A100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAC8A100);
  }

  return result;
}

id ActivityBannerHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v10 = sub_18E65F4C0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v7);
  v15 = v11[2];
  v15(v14, a1, v10);
  v16 = type metadata accessor for ActivitySceneDescriptor();
  v17 = objc_allocWithZone(v16);
  v18 = a2;
  v19 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v20 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v20 = v19;
  v20[1] = v21;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 1;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  v15(&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v14, v10);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v18;
  v22 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v32.receiver = v17;
  v32.super_class = v16;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  v25 = v11[1];
  v25(v14, v10);
  v26 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v24, v30, v31);

  v25(a1, v10);
  return v26;
}

id ActivityBannerHostViewController.init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_18E63E170(a1, a2, a3, a4, a5, a6);

  return v7;
}

id sub_18E63E02C()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityBannerSceneSpecification());

  return [v0 init];
}

id ActivityBannerHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityBannerHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E63E170(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v28 = a4;
  v29 = a5;
  v9 = sub_18E65F4C0();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v10[2];
  v15(v14, a1, v9, v12);
  v16 = type metadata accessor for ActivitySceneDescriptor();
  v17 = objc_allocWithZone(v16);
  v18 = a2;
  v19 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v20 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v20 = v19;
  v20[1] = v21;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 1;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v15)(&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v14, v9);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v18;
  v22 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v23 = v28;
  *v22 = a3;
  *(v22 + 1) = v23;
  v31.receiver = v17;
  v31.super_class = v16;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  v25 = v10[1];
  v25(v14, v9);
  v26 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v24, v29, v30);
  v25(a1, v9);
  return v26;
}

unint64_t sub_18E63E40C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18E63E440(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_18E63E440(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_18E63E454()
{
  result = qword_1EAC8A108;
  if (!qword_1EAC8A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A108);
  }

  return result;
}

void sub_18E63E4B8(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [v1 setWantsBaseContentTouchEventsNumber_];
}

uint64_t sub_18E63E528(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18E65F4C0();
  sub_18E625368();
  v5 = sub_18E65F680();
  [v2 setActivityDescriptorData_];

  v6 = *(*(v4 - 8) + 8);

  return v6(a1, v4);
}

void sub_18E63E5C8()
{
  v1 = [v0 activityDescriptorData];
  sub_18E65F4C0();
  sub_18E625368();
  sub_18E65F670();
}

id sub_18E63E644()
{
  v1 = [v0 wantsBaseContentTouchEventsNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

uint64_t sub_18E63E6A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E656373;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x746E6F4377656976;
    }

    else
    {
      v4 = 0x656E656373;
    }

    if (v3)
    {
      v5 = 0xEE0072656C6C6F72;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x52737365636F7270;
    v5 = 0xEF656372756F7365;
  }

  else if (a1 == 3)
  {
    v4 = 0x5466664F6B636162;
    v5 = 0xEC00000072656D69;
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x7472656C61;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0x746E6F4377656976;
    v8 = 0xEE0072656C6C6F72;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x52737365636F7270;
    v6 = 0xEF656372756F7365;
    v7 = 0x5466664F6B636162;
    v8 = 0xEC00000072656D69;
    if (a2 != 3)
    {
      v7 = 0x7472656C61;
      v8 = 0xE500000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_18E65FDE0();
  }

  return v12 & 1;
}

uint64_t sub_18E63E850(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 0x676E696C69617274;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74746F62;
  if (a2 != 2)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x676E696461656CLL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_18E65FDE0();
  }

  return v11 & 1;
}

double sub_18E63E9CC()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E63EA64(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_18E63EB5C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E63EBF4(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_18E63ECEC()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E63ED84(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_18E63EE7C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E63EF14(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ActivityEdgeInsets.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityEdgeInsets.init()()
{
  *&v0[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityEdgeInsets();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *ActivityEdgeInsets.__allocating_init(top:leading:bottom:trailing:)(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(v4) init];
  v10 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *&v9[v10] = a1;
  v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *&v9[v11] = a2;
  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *&v9[v12] = a3;
  v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *&v9[v13] = a4;
  return v9;
}

char *ActivityEdgeInsets.init(top:leading:bottom:trailing:)(double a1, double a2, double a3, double a4)
{
  v9 = [v4 init];
  v10 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *&v9[v10] = a1;
  v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *&v9[v11] = a2;
  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *&v9[v12] = a3;
  v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *&v9[v13] = a4;
  return v9;
}

uint64_t sub_18E63F3A8()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  if (*(v0 + v1) <= 1.0)
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = 1.0;
  }

  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  if (*(v0 + v3) <= 1.0)
  {
    v4 = *(v0 + v3);
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  if (*(v0 + v5) <= 1.0)
  {
    v6 = *(v0 + v5);
  }

  else
  {
    v6 = 1.0;
  }

  v7 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  result = swift_beginAccess();
  v9 = *(v0 + v7);
  if (v9 > 1.0)
  {
    v9 = 1.0;
  }

  v10 = v2 * 53.0 * v4 * v6 * v9;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_18E63F4E4(uint64_t a1)
{
  sub_18E61ED24(a1, v17);
  if (v18)
  {
    type metadata accessor for ActivityEdgeInsets();
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
      swift_beginAccess();
      v3 = *(v1 + v2);
      v4 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
      swift_beginAccess();
      if (v3 == *&v16[v4])
      {
        v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
        swift_beginAccess();
        v6 = *(v1 + v5);
        v7 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
        swift_beginAccess();
        if (v6 == *&v16[v7])
        {
          v8 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
          swift_beginAccess();
          v9 = *(v1 + v8);
          v10 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
          swift_beginAccess();
          if (v9 == *&v16[v10])
          {
            v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
            swift_beginAccess();
            v12 = *(v1 + v11);
            v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
            swift_beginAccess();
            v14 = *&v16[v13];

            return v12 == v14;
          }
        }
      }
    }
  }

  else
  {
    sub_18E61D6A8(v17);
  }

  return 0;
}

uint64_t sub_18E63F768()
{
  v1 = v0;
  sub_18E65FC70();
  MEMORY[0x193AD0160](0xD000000000000011, 0x800000018E6698F0);
  v2 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v4);

  MEMORY[0x193AD0160](0x6E696461656C202CLL, 0xEA00000000003D67);
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v7);

  MEMORY[0x193AD0160](0x6D6F74746F62202CLL, 0xE90000000000003DLL);
  v8 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v10);

  MEMORY[0x193AD0160](0x696C69617274202CLL, 0xEB000000003D676ELL);
  v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v13);

  MEMORY[0x193AD0160](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_18E63F91C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = type metadata accessor for ActivityEdgeInsets();
  v12 = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *&v12[v13] = v4;
  v14 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *&v12[v14] = v6;
  v15 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *&v12[v15] = v8;
  v16 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  result = swift_beginAccess();
  *&v12[v16] = v10;
  a1[3] = v11;
  *a1 = v12;
  return result;
}

uint64_t sub_18E63FAEC()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

uint64_t sub_18E63FBA4()
{
  *v0;
  *v0;
  *v0;
  sub_18E65F920();
}

uint64_t sub_18E63FC48()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

uint64_t sub_18E63FCFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E640970();
  *a2 = result;
  return result;
}

void sub_18E63FD2C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696461656CLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_18E63FDA0()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_18E63FE10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E640970();
  *a1 = result;
  return result;
}

uint64_t sub_18E63FE44(uint64_t a1)
{
  v2 = sub_18E640B74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E63FE80(uint64_t a1)
{
  v2 = sub_18E640B74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ActivityEdgeInsets.__allocating_init(bsxpcCoder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E6409BC(a1);
  swift_unknownObjectRelease();
  return v4;
}

id ActivityEdgeInsets.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_18E6409BC(a1);
  swift_unknownObjectRelease();
  return v1;
}

void sub_18E63FFFC(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_18E65F8F0();
  [a1 encodeDouble:v5 forKey:v4];

  v6 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_18E65F8F0();
  [a1 encodeDouble:v8 forKey:v7];

  v9 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_18E65F8F0();
  [a1 encodeDouble:v11 forKey:v10];

  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_18E65F8F0();
  [a1 encodeDouble:v14 forKey:v13];
}

id ActivityEdgeInsets.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E6409BC(a1);

  return v4;
}

id ActivityEdgeInsets.init(coder:)(void *a1)
{
  v2 = sub_18E6409BC(a1);

  return v2;
}

uint64_t sub_18E64028C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A138, "r}");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E640B74();
  sub_18E65FF50();
  v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  v20 = *(v3 + v11);
  LOBYTE(v19) = 0;
  sub_18E640BC8();
  sub_18E65FDA0();
  if (!v2)
  {
    v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
    swift_beginAccess();
    v19 = *(v3 + v12);
    LOBYTE(v18) = 2;
    sub_18E65FDA0();
    v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
    swift_beginAccess();
    v18 = *(v3 + v13);
    LOBYTE(v17) = 1;
    sub_18E65FDA0();
    v14 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
    swift_beginAccess();
    v17 = *(v3 + v14);
    v16[7] = 3;
    sub_18E65FDA0();
  }

  return (*(v6 + 8))(v9, v5);
}

void *ActivityEdgeInsets.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A150, &qword_18E664E50);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top] = 0;
  v8 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading] = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom] = 0;
  v10 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  v28 = v1;
  v29 = a1;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing] = 0;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E640B74();
  v13 = v27;
  sub_18E65FF40();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    type metadata accessor for ActivityEdgeInsets();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v8;
    v24 = v10;
    v35 = 0;
    sub_18E640C1C();
    sub_18E65FD60();
    v14 = v34;
    v15 = v28;
    swift_beginAccess();
    *&v15[v7] = v14;
    LOBYTE(v34) = 2;
    sub_18E65FD60();
    v16 = v33;
    swift_beginAccess();
    *&v15[v9] = v16;
    LOBYTE(v33) = 1;
    v17 = v26;
    sub_18E65FD60();
    v18 = v31;
    v19 = v27;
    swift_beginAccess();
    *&v15[v19] = v18;
    LOBYTE(v31) = 3;
    sub_18E65FD60();
    (*(v25 + 8))(v6, v17);
    v21 = v32;
    v22 = v24;
    swift_beginAccess();
    *&v15[v22] = v21;
    v23 = type metadata accessor for ActivityEdgeInsets();
    v30.receiver = v15;
    v30.super_class = v23;
    v12 = objc_msgSendSuper2(&v30, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return v12;
}

id ActivityEdgeInsets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityEdgeInsets();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_18E6408F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ActivityEdgeInsets());
  result = ActivityEdgeInsets.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_18E640970()
{
  v0 = sub_18E65FD20();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_18E6409BC(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top] = 0;
  v4 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading] = 0;
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom] = 0;
  v6 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing] = 0;
  v7 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v9 = v8;

  swift_beginAccess();
  *&v1[v3] = v9;
  v10 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v12 = v11;

  swift_beginAccess();
  *&v1[v4] = v12;
  v13 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v15 = v14;

  swift_beginAccess();
  *&v1[v5] = v15;
  v16 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v18 = v17;

  swift_beginAccess();
  *&v1[v6] = v18;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ActivityEdgeInsets();
  return objc_msgSendSuper2(&v20, sel_init);
}

unint64_t sub_18E640B74()
{
  result = qword_1EAC8A140;
  if (!qword_1EAC8A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A140);
  }

  return result;
}

unint64_t sub_18E640BC8()
{
  result = qword_1EAC8A148;
  if (!qword_1EAC8A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A148);
  }

  return result;
}

unint64_t sub_18E640C1C()
{
  result = qword_1EAC8A158;
  if (!qword_1EAC8A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A158);
  }

  return result;
}

double keypath_getTm_0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityEdgeInsets.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityEdgeInsets.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18E641224()
{
  result = qword_1EAC8A168;
  if (!qword_1EAC8A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A168);
  }

  return result;
}

unint64_t sub_18E64127C()
{
  result = qword_1EAC8A170;
  if (!qword_1EAC8A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A170);
  }

  return result;
}

unint64_t sub_18E6412D4()
{
  result = qword_1EAC8A178;
  if (!qword_1EAC8A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A178);
  }

  return result;
}

double ResolvedContentMetrics.size.getter()
{
  result = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size);
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size + 8);
  return result;
}

void *ResolvedContentMetrics.edgeInsets.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
  v2 = v1;
  return v1;
}

id ResolvedContentMetrics.__allocating_init(size:cornerRadius:edgeInsets:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
  *v10 = a2;
  v10[1] = a3;
  *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = a4;
  *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = a1;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id ResolvedContentMetrics.init(size:cornerRadius:edgeInsets:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
  *v5 = a2;
  v5[1] = a3;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = a4;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = a1;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for ResolvedContentMetrics();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ResolvedContentMetrics.__allocating_init(size:cornerRadius:)(double a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = a3;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = 0;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ResolvedContentMetrics.init(size:cornerRadius:)(double a1, double a2, double a3)
{
  v4 = &v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
  *v4 = a1;
  v4[1] = a2;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = a3;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = 0;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ResolvedContentMetrics();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_18E641560(uint64_t a1)
{
  sub_18E61ED24(a1, v10);
  if (!v11)
  {
    sub_18E61D6A8(v10);
    goto LABEL_11;
  }

  type metadata accessor for ResolvedContentMetrics();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v6 = 0;
    return v6 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size) != *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size] || *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size + 8) != *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size + 8] || *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius) != *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius])
  {
    goto LABEL_10;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
  v3 = *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets];
  if (!v2)
  {
    v8 = v3;

    if (!v3)
    {
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_11;
  }

  if (!v3)
  {
LABEL_10:

    goto LABEL_11;
  }

  type metadata accessor for ActivityEdgeInsets();
  v4 = v3;
  v5 = v2;
  v6 = sub_18E65FB20();

  return v6 & 1;
}

uint64_t sub_18E641780()
{
  sub_18E65FC70();
  MEMORY[0x193AD0160](0xD00000000000001ELL, 0x800000018E6699C0);
  v7 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size);
  type metadata accessor for CGSize(0);
  v1 = sub_18E65F910();
  MEMORY[0x193AD0160](v1);

  MEMORY[0x193AD0160](0x72656E726F63202CLL, 0xEF3D737569646152);
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius);
  v3 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v3);

  MEMORY[0x193AD0160](0x6E4965676465202CLL, 0xED00003D73746573);
  v4 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A1A0, &qword_18E665048);
  v5 = sub_18E65F910();
  MEMORY[0x193AD0160](v5);

  MEMORY[0x193AD0160](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_18E6418F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x615272656E726F63;
  v4 = 0xEC00000073756964;
  if (v2 != 1)
  {
    v3 = 0x65736E4965676465;
    v4 = 0xEA00000000007374;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1702521203;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x615272656E726F63;
  v8 = 0xEC00000073756964;
  if (*a2 != 1)
  {
    v7 = 0x65736E4965676465;
    v8 = 0xEA00000000007374;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1702521203;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_18E65FDE0();
  }

  return v11 & 1;
}

uint64_t sub_18E641A08()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

uint64_t sub_18E641AB0()
{
  *v0;
  *v0;
  sub_18E65F920();
}

uint64_t sub_18E641B44()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

uint64_t sub_18E641BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E642C44();
  *a2 = result;
  return result;
}

void sub_18E641C18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC00000073756964;
  v5 = 0x615272656E726F63;
  if (v2 != 1)
  {
    v5 = 0x65736E4965676465;
    v4 = 0xEA00000000007374;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702521203;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_18E641C7C()
{
  v1 = 0x615272656E726F63;
  if (*v0 != 1)
  {
    v1 = 0x65736E4965676465;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_18E641CDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E642C44();
  *a1 = result;
  return result;
}

uint64_t sub_18E641D10(uint64_t a1)
{
  v2 = sub_18E6425F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E641D4C(uint64_t a1)
{
  v2 = sub_18E6425F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18E641D98(void *a1)
{
  v3 = [objc_opt_self() valueWithCGSize_];
  v4 = sub_18E65F8F0();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v6 = sub_18E65F8F0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
  v8 = sub_18E65F8F0();
  [a1 encodeObject:v7 forKey:v8];
}

id ResolvedContentMetrics.init(bsxpcCoder:)(void *a1)
{
  sub_18E642244();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_18E65F8F0();
  v5 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v4];

  if (v5)
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_13:
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    [v22 CGSizeValue];
    v7 = v6;
    v9 = v8;

    type metadata accessor for ActivityEdgeInsets();
    v10 = swift_getObjCClassFromMetadata();
    v11 = sub_18E65F8F0();
    v12 = [a1 decodeObjectOfClass:v10 forKey:v11];

    if (v12)
    {
      sub_18E65FB60();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = v22;
        v14 = &v1[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
        *v14 = v7;
        *(v14 + 1) = v9;
        *&v1[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = v13;
        v15 = v13;
        v16 = sub_18E65F8F0();
        [a1 decodeDoubleForKey_];
        v18 = v17;

        *&v1[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = v18;
        v21.receiver = v1;
        v21.super_class = type metadata accessor for ResolvedContentMetrics();
        v19 = objc_msgSendSuper2(&v21, sel_init);
        swift_unknownObjectRelease();
        return v19;
      }

      goto LABEL_13;
    }
  }

  swift_unknownObjectRelease();
  sub_18E61D6A8(&v25);
LABEL_14:
  type metadata accessor for ResolvedContentMetrics();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_18E642244()
{
  result = qword_1EAC8A1A8;
  if (!qword_1EAC8A1A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAC8A1A8);
  }

  return result;
}

id ResolvedContentMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResolvedContentMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResolvedContentMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E64239C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A1B0, &qword_18E665050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E6425F8();
  sub_18E65FF50();
  v14 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size);
  v13 = 0;
  type metadata accessor for CGSize(0);
  sub_18E642974(&unk_1EAC8A1C0, type metadata accessor for CGSize);
  sub_18E65FDA0();
  if (!v2)
  {
    *&v14 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius);
    v13 = 1;
    sub_18E640BC8();
    sub_18E65FDA0();
    *&v14 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
    v13 = 2;
    type metadata accessor for ActivityEdgeInsets();
    sub_18E642974(&qword_1EAC8A1D0, type metadata accessor for ActivityEdgeInsets);
    sub_18E65FD70();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_18E6425F8()
{
  result = qword_1EAC8A1B8;
  if (!qword_1EAC8A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A1B8);
  }

  return result;
}

void *ResolvedContentMetrics.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A1D8, &qword_18E665058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E6425F8();
  sub_18E65FF40();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ResolvedContentMetrics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGSize(0);
    v16 = 0;
    sub_18E642974(&unk_1EAC8A1E0, type metadata accessor for CGSize);
    sub_18E65FD60();
    *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size] = v15;
    v16 = 1;
    sub_18E640C1C();
    sub_18E65FD60();
    *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = v15;
    type metadata accessor for ActivityEdgeInsets();
    v16 = 2;
    sub_18E642974(&unk_1EAC8A1F0, type metadata accessor for ActivityEdgeInsets);
    sub_18E65FD30();
    *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = v15;
    v13 = type metadata accessor for ResolvedContentMetrics();
    v14.receiver = v3;
    v14.super_class = v13;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t sub_18E642974(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_18E6429BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ResolvedContentMetrics());
  result = ResolvedContentMetrics.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18E642B40()
{
  result = qword_1EAC8A260;
  if (!qword_1EAC8A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A260);
  }

  return result;
}

unint64_t sub_18E642B98()
{
  result = qword_1EAC8A268;
  if (!qword_1EAC8A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A268);
  }

  return result;
}

unint64_t sub_18E642BF0()
{
  result = qword_1EAC8A270;
  if (!qword_1EAC8A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A270);
  }

  return result;
}

uint64_t sub_18E642C44()
{
  v0 = sub_18E65FD20();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18E642DD8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_18E65F6E0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_18E65F6D0();
}

uint64_t sub_18E642E74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_18E65F6E0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

ActivityUIServices::ActivityUIServicesCategory_optional __swiftcall ActivityUIServicesCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E65FD20();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityUIServicesCategory.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E656373;
  v3 = 0x52737365636F7270;
  v4 = 0x5466664F6B636162;
  if (v1 != 3)
  {
    v4 = 0x7472656C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E6F4377656976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_18E643048()
{
  result = qword_1EAC8A280;
  if (!qword_1EAC8A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A280);
  }

  return result;
}

uint64_t sub_18E64309C()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

uint64_t sub_18E643198()
{
  *v0;
  *v0;
  *v0;
  sub_18E65F920();
}

uint64_t sub_18E643280()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

void sub_18E643384(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656E656373;
  v5 = 0xEF656372756F7365;
  v6 = 0x52737365636F7270;
  v7 = 0xEC00000072656D69;
  v8 = 0x5466664F6B636162;
  if (v2 != 3)
  {
    v8 = 0x7472656C61;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746E6F4377656976;
    v3 = 0xEE0072656C6C6F72;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ActivityUIServicesCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityUIServicesCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_18E643610@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18E6482C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18E643644()
{
  result = sub_18E65F8F0();
  qword_1EAC89318 = result;
  return result;
}

id sub_18E6436A0()
{
  v1 = [v0 _FBSScene];
  v2 = [v1 settings];

  if (v2)
  {
    v3 = [objc_allocWithZone(type metadata accessor for ActivitySceneSettings_Legacy()) initWithSettings_];
  }

  else
  {
    if (qword_1EAC89350 != -1)
    {
      swift_once();
    }

    v4 = sub_18E65F6E0();
    __swift_project_value_buffer(v4, qword_1EAC89358);
    v5 = v0;
    v6 = sub_18E65F6C0();
    v7 = sub_18E65FA50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = [v5 _FBSScene];
      v11 = [v10 identifier];

      v12 = sub_18E65F900();
      v14 = v13;

      v15 = sub_18E61173C(v12, v14, &v17);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_18E60F000, v6, v7, "[%s] Unexpectedly encountered nil while accessing scene settings.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193AD1140](v9, -1, -1);
      MEMORY[0x193AD1140](v8, -1, -1);
    }

    return 0;
  }

  return v3;
}

char *sub_18E6438A8(void *a1, void *a2)
{
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__settingsDiffer] = 0;
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_contentPayloadID] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_backgroundTintColor] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_textColor] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_resolvedMetrics] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled] = 0;
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily] = 2;
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown] = 2;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ActivityScene();
  v6 = objc_msgSendSuper2(&v14, sel_initWithSession_connectionOptions_, a1, a2);
  v7 = [v6 _FBSScene];
  v8 = type metadata accessor for ActivitySceneSettingsDiffer_Legacy();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex] = MEMORY[0x1E69E7CC8];
  *&v9[OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_cancellables] = v5;
  swift_unknownObjectUnownedInit();
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  [v7 addObserver_];

  v11 = *&v6[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__settingsDiffer];
  *&v6[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__settingsDiffer] = v10;

  return v6;
}

id sub_18E643AB4(uint64_t a1, uint64_t a2)
{
  v5 = [v2 _FBSScene];
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_18E643BAC(KeyPath, sub_18E6482E4, v7);

  return v8;
}

id sub_18E643B74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_18E643BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = sub_18E65FB70();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  type metadata accessor for ObserverMetadata();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = sub_18E6491D8;
  v17[5] = v16;

  v18 = sub_18E64ABA8(v4);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v12, v8);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0x536576726573626FLL;
  v29 = 0xEF2D676E69747465;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (!v15)
  {
    v15 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v19, v15);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = v18;

  v23 = sub_18E65F8F0();

  v24 = sub_18E65F8F0();

  v32 = sub_18E6492E8;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_18E61D9D8;
  v31 = &block_descriptor_310;
  v25 = _Block_copy(&aBlock);
  v26 = [v21 initWithIdentifier:v23 forReason:v24 invalidationBlock:v25];

  _Block_release(v25);

  return v26;
}

id sub_18E643EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = sub_18E65FB70();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  type metadata accessor for ObserverMetadata();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = sub_18E649184;
  v17[5] = v16;

  v18 = sub_18E64ABA8(v4);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v12, v8);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0x536576726573626FLL;
  v29 = 0xEF2D676E69747465;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (!v15)
  {
    v15 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v19, v15);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = v18;

  v23 = sub_18E65F8F0();

  v24 = sub_18E65F8F0();

  v32 = sub_18E649190;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_18E61D9D8;
  v31 = &block_descriptor_300_0;
  v25 = _Block_copy(&aBlock);
  v26 = [v21 initWithIdentifier:v23 forReason:v24 invalidationBlock:v25];

  _Block_release(v25);

  return v26;
}

id sub_18E6441D4(uint64_t a1, uint64_t a2)
{
  v5 = [v2 _FBSScene];
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;

  v8 = v2;
  v9 = sub_18E643EC0(KeyPath, sub_18E648320, v7);

  return v9;
}

uint64_t sub_18E6442A0(int a1, uint64_t (*a2)(void), int a3, id a4)
{
  v5 = [a4 _FBSScene];
  v6 = [v5 settings];

  swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  LOBYTE(v5) = sub_18E63E644();

  return a2(v5 & 1);
}

void sub_18E644358(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  BSDispatchQueueAssertMain();
  v6 = sub_18E6436A0();
  if (v6)
  {
    v10 = v6;
    sub_18E64F5A4(*(v5 + *MEMORY[0x1E69E77B0] + 8), a2, a3);
  }

  else
  {
    v7 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(*(AssociatedTypeWitness - 8) + 56);

    v9(a3, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_18E644488(uint64_t *a1, uint64_t a2)
{
  result = BSDispatchQueueAssertMain();
  v6 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__settingsDiffer);
  if (v6)
  {
    v7 = v6;
    v8 = sub_18E64FC48(a1, a2);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18E6444EC(void (*a1)(void *, _UNKNOWN **))
{
  v2 = v1;
  result = BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    __break(1u);
    goto LABEL_5;
  }

  a1(v1, &protocol witness table for ActivityScene);
  v5 = [v1 _FBSScene];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E64832C;
  *(v7 + 24) = v6;
  v11[4] = sub_18E64835C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18E644854;
  v11[3] = &block_descriptor_3;
  v8 = _Block_copy(v11);
  v9 = v2;

  [v5 updateClientSettingsWithTransitionBlock_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_18E644694(uint64_t (*a1)(void *, _UNKNOWN **))
{
  v2 = v1;
  result = BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = a1(v1, &protocol witness table for ActivityScene);
  v6 = [v1 _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492D4;
  *(v8 + 24) = v7;
  v13[4] = sub_18E6492E0;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_18E644854;
  v13[3] = &block_descriptor_23;
  v9 = _Block_copy(v13);
  v10 = v5;

  v11 = v2;

  [v6 updateClientSettingsWithTransitionBlock_];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id sub_18E644854(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_18E6448A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  sub_18E65DA4C(*(a2 + v4), ObjectType);
}

uint64_t sub_18E64490C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E644950(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  v1[v3] = a1;
  BSDispatchQueueAssertMain();
  v10 = v1;
  result = BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v5 = [v1 _FBSScene];
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E648384;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E64838C;
    *(v7 + 24) = v6;
    aBlock[4] = sub_18E63CC94;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_32_0;
    v8 = _Block_copy(aBlock);

    [v5 updateClientSettingsWithBlock_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_18E644B10(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E644B98;
}

void sub_18E644B98(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E6492EC;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_44;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_18E644D78()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_contentPayloadID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E644DC4(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_contentPayloadID;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  BSDispatchQueueAssertMain();
  if (v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] == 1)
  {
  }

  else
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E648394;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_55;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

void (*sub_18E644FA4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E64502C;
}

void sub_18E64502C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E6492D8;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_67;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_18E64520C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_backgroundTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E645258(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_backgroundTintColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  BSDispatchQueueAssertMain();
  if (v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] == 1)
  {
  }

  else
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E6483A8;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_78;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

void (*sub_18E645438(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E6454C0;
}

void sub_18E6454C0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E6492F0;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_90;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E6456A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v8 = *a3;
  swift_beginAccess();
  v9 = *(a2 + v8);
  v10 = v9;
  return a4(v9, ObjectType);
}

void *sub_18E645720()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_textColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E64576C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_textColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  BSDispatchQueueAssertMain();
  if (v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] == 1)
  {
  }

  else
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E6483E0;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_101;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

void (*sub_18E64594C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E6459D4;
}

void sub_18E6459D4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E6492F4;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_114;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E645BB4(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;

  BSDispatchQueueAssertMain();
  v13[2] = v8;
  return sub_18E6476BC(a6, v13);
}

void *sub_18E645C30()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_resolvedMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E645C7C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_resolvedMetrics;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  BSDispatchQueueAssertMain();
  if (v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] == 1)
  {
  }

  else
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E648418;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_125;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

void (*sub_18E645E5C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E645EE4;
}

void sub_18E645EE4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E6492DC;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_137;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E6460C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  BSDispatchQueueAssertMain();
  v7[2] = v3;
  return sub_18E6476BC(sub_18E6492F8, v7);
}

void sub_18E646150(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  v5 = *(a2 + v4);
  type metadata accessor for CGRect(0);

  v6 = sub_18E65F990();

  [a1 setActivityHostTouchRestrictedRects_];
}

uint64_t sub_18E6461E4()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_18E64622C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  result = BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E64842C;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_148;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_18E6463F4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E64647C;
}

void sub_18E64647C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E6492F8;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_160;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E64665C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  *(v8 + v9) = v7;
  BSDispatchQueueAssertMain();
  v11[2] = v8;
  return sub_18E6476BC(a6, v11);
}

void sub_18E6466C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_18E65D71C(ObjectType);
  v5 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled;
  swift_beginAccess();
  v6 = *(a2 + v5);
  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_18E65DA58(v6, ObjectType);
  }
}

uint64_t sub_18E64674C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E646790(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled;
  swift_beginAccess();
  v1[v3] = a1;
  BSDispatchQueueAssertMain();
  v10 = v1;
  result = BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v5 = [v1 _FBSScene];
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E648434;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E6492E4;
    *(v7 + 24) = v6;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_171;
    v8 = _Block_copy(aBlock);

    [v5 updateClientSettingsWithBlock_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_18E646950(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E6469D8;
}

void sub_18E6469D8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E6492FC;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_184;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_18E646BB8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_18E65D728(&v6);
  v3 = v6;
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v3 == 2)
  {
    if (v5 == 2)
    {
      return;
    }

LABEL_6:
    v6 = *(a2 + v4);
    sub_18E65DA64(&v6);
    return;
  }

  if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_18E646C5C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_18E646CB0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  v1[v3] = v2;
  BSDispatchQueueAssertMain();
  v10 = v1;
  result = BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v5 = [v1 _FBSScene];
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E64843C;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E6492E4;
    *(v7 + 24) = v6;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_195;
    v8 = _Block_copy(aBlock);

    [v5 updateClientSettingsWithBlock_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_18E646E70(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E646EF8;
}

void sub_18E646EF8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E649300;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_207;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}