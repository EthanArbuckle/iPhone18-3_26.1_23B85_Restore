void sub_2412F8078(char a1)
{
  v3 = sub_2412F584C();
  [v3 setLoadingError_];

  if (*&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_loadingTask])
  {

    if ((swift_task_isCancelled() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D10);
      sub_241353F4C();
    }
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v14[4] = sub_2412FC98C;
  v14[5] = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2412D5698;
  v14[3] = &block_descriptor_147;
  v6 = _Block_copy(v14);
  v7 = v1;

  [v4 animateWithDuration:v6 animations:0.2];
  _Block_release(v6);
  v8 = sub_2412F7098();
  [v8 setEnabled_];

  v9 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sharingEnabled;
  v7[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sharingEnabled] = a1 & 1;
  v10 = [v7 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 navigationItem];

    v13 = [v12 rightBarButtonItem];
    if (v13)
    {
      [v13 setEnabled_];
    }
  }
}

void sub_2412F82A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      v11 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
      [*&Strong[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
      v12 = *&v10[v11];
      *&v10[v11] = 0;

      sub_241258B50(a3, a4, a5 & 1);
    }

    else
    {
      [Strong startAutoHideControlsTimer];
    }
  }
}

uint64_t sub_2412F8364()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [objc_opt_self() sendAnalyticsWithEvent_];
    v1 = sub_241287420();
    v2 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
    [*&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
    v3 = *&v1[v2];
    *&v1[v2] = 0;

    if ((v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] & 1) == 0 && v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] == 1)
    {
      [v1 startAutoHideControlsTimer];
    }

    sub_24132517C(sub_241325050, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2412F8658(void *a1)
{
  v3 = [a1 state];
  if (v3 > 5)
  {
    type metadata accessor for State(0);
    sub_2413549AC();
    __break(1u);
  }

  else if (((1 << v3) & 0x25) != 0)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v4 = sub_241352FFC();
    __swift_project_value_buffer(v4, qword_27E53A538);
    v8 = a1;
    oslog = sub_241352FDC();
    v5 = sub_2413540DC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = [v8 state];

      _os_log_impl(&dword_241215000, oslog, v5, "handleLongPressGesture: state not handled: %ld", v6, 0xCu);
      MEMORY[0x245CE4870](v6, -1, -1);
      v7 = oslog;
    }

    else
    {

      v7 = v8;
    }
  }

  else if (((1 << v3) & 0x18) != 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2412B07F8();
      swift_unknownObjectRelease();
    }

    [v1 startAutoHideControlsTimer];
  }

  else
  {

    sub_2412F8A68();
  }
}

uint64_t sub_2412F88D0()
{
  v1 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24129EFAC();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_additionalDismissObservers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (!v4)
  {
  }

  v6 = 0;
  v7 = v3 + 40;
  while (v6 < *(v3 + 16))
  {
    ++v6;
    v8 = *(v7 - 8);

    v8(v9);

    v7 += 16;
    if (v4 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_2412F8A6C(uint64_t a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ARQuickLookOverlayController();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, a1);
  sub_2412F962C();
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_6;
  }

  v7 = swift_slowAlloc();
  *v7 = 134217984;
  v8 = [objc_opt_self() _currentTraitCollection];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 userInterfaceStyle];

    *(v7 + 4) = v10;
    _os_log_impl(&dword_241215000, v5, v6, "traitCollectionDidChange() - style: %ld", v7, 0xCu);
    MEMORY[0x245CE4870](v7, -1, -1);
LABEL_6:

    sub_2412F75D8();
    return;
  }

  __break(1u);
}

id sub_2412F8C44(id result, double a2)
{
  if (result == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_241366EF0;
    v33 = sub_2412F5244();
    v34 = [v33 centerYAnchor];

    result = [v2 view];
    if (result)
    {
      v35 = result;
      v36 = [result centerYAnchor];

      v37 = [v34 constraintEqualToAnchor_];
      *(v24 + 32) = v37;
      v38 = [*&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton] trailingAnchor];
      result = [v2 view];
      if (result)
      {
        v39 = result;
        v40 = [result trailingAnchor];

        v41 = [v38 constraintEqualToAnchor:v40 constant:-6.0];
        *(v24 + 40) = v41;
        *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitConstraints] = v24;
        swift_bridgeObjectRetain_n();

        *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitUpsideDownConstraints] = v24;

        *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_landscapeLeftConstraints] = v24;

        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (result)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_241366EF0;
  v5 = sub_2412F5244();
  v6 = [v5 centerXAnchor];

  result = [v2 view];
  v7 = result;
  if (a2 <= 0.0)
  {
    if (result)
    {
      v42 = [result centerXAnchor];

      v43 = [v6 constraintEqualToAnchor_];
      *(v4 + 32) = v43;
      v44 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton;
      v45 = [*&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton] bottomAnchor];
      result = [v2 view];
      if (result)
      {
        v46 = result;
        v47 = [result bottomAnchor];

        v48 = [v45 constraintEqualToAnchor:v47 constant:-20.0];
        *(v4 + 40) = v48;
        *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitConstraints] = v4;
        swift_bridgeObjectRetain_n();

        *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitUpsideDownConstraints] = v4;

        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_241366EF0;
        v50 = [*&v2[v44] centerYAnchor];
        result = [v2 view];
        if (result)
        {
          v51 = result;
          v52 = [result centerYAnchor];

          v53 = [v50 constraintEqualToAnchor_];
          *(v49 + 32) = v53;
          v54 = [*&v2[v44] leadingAnchor];
          result = [v2 view];
          if (result)
          {
            v55 = result;
            v56 = [result safeAreaLayoutGuide];

            v57 = [v56 leadingAnchor];
            v58 = [v54 constraintEqualToAnchor:v57 constant:6.0];

            *(v49 + 40) = v58;
            *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_landscapeLeftConstraints] = v49;

            v24 = swift_allocObject();
            *(v24 + 16) = xmmword_241366EF0;
            v59 = [*&v2[v44] centerYAnchor];
            result = [v2 view];
            if (result)
            {
              v60 = result;
              v61 = [result centerYAnchor];

              v62 = [v59 constraintEqualToAnchor_];
              *(v24 + 32) = v62;
              v63 = [*&v2[v44] trailingAnchor];
              result = [v2 view];
              if (result)
              {
                v64 = result;

                v65 = [v64 safeAreaLayoutGuide];

                v66 = [v65 trailingAnchor];
                v67 = [v63 constraintEqualToAnchor:v66 constant:-6.0];

                *(v24 + 40) = v67;
                goto LABEL_22;
              }

LABEL_38:
              __break(1u);
              return result;
            }

            goto LABEL_36;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = [result centerXAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton;
  v11 = [*&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton] bottomAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = result;
  v13 = [result bottomAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-75.0];
  *(v4 + 40) = v14;
  *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitConstraints] = v4;
  swift_bridgeObjectRetain_n();

  *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitUpsideDownConstraints] = v4;

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_241366EF0;
  v16 = [*&v2[v10] centerYAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = result;
  v18 = [result centerYAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v19;
  v20 = [*&v2[v10] leadingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = result;
  v22 = [result leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:27.0];
  *(v15 + 40) = v23;
  *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_landscapeLeftConstraints] = v15;

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_241366EF0;
  v25 = [*&v2[v10] centerYAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = result;
  v27 = [result centerYAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v24 + 32) = v28;
  v29 = [*&v2[v10] trailingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = result;

  v31 = [v30 trailingAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:-27.0];
  *(v24 + 40) = v32;
LABEL_22:
  *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_landscapeRightConstraints] = v24;
}

void sub_2412F962C()
{
  v1 = [objc_opt_self() mainScreen];
  v2 = [v1 currentOrientation];

  if ((v2 - 1) <= 3)
  {
    v3 = *(v0 + *off_278CCB948[(v2 - 1)]);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentConstraints;
      v5 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentConstraints);
      if (v5)
      {
        swift_bridgeObjectRetain_n();

        v6 = sub_241302F90(v3, v5);

        if (v6)
        {
          swift_bridgeObjectRelease_n();
          return;
        }

        if (*(v0 + v4))
        {
          v7 = objc_opt_self();
          sub_241246158(0, &qword_27E539D00);

          v8 = sub_241353E1C();

          [v7 deactivateConstraints_];
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v9 = objc_opt_self();
      sub_241246158(0, &qword_27E539D00);
      v10 = sub_241353E1C();

      [v9 activateConstraints_];

      *(v0 + v4) = v3;
    }
  }
}

id sub_2412F97FC()
{
  v1 = v0;
  v2 = sub_2412F7098();
  v3 = [v2 selectedSegmentIndex];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24129F054(v3 != 0, v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode]);
    swift_unknownObjectRelease();
  }

  v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] = v3 != 0;
  v4 = sub_2412F577C();
  [v4 setControlStyle_];

  [v1 updateStatusPill];

  return sub_2412F9928();
}

id sub_2412F9928()
{
  v1 = v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];
  v2 = [v0 navigationItem];
  v3 = [v2 leftBarButtonItem];

  if (v1)
  {
    if (v3)
    {
      [v3 setTintColor_];
    }

    v4 = [v0 navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {
      [v5 setTintColor_];
    }

    v6 = sub_2412F7098();
    [v6 setTintColor_];

    v7 = *&v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsView];
    if (v7)
    {
      v8 = 0;
LABEL_14:
      [v7 setOverrideUserInterfaceStyle_];
    }
  }

  else
  {
    if (v3)
    {
      v9 = [objc_opt_self() labelColor];
      [v3 setTintColor_];
    }

    v10 = [v0 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (v11)
    {
      v12 = [objc_opt_self() labelColor];
      [v11 setTintColor_];
    }

    v13 = sub_2412F7098();
    v14 = [objc_opt_self() labelColor];
    [v13 setTintColor_];

    v7 = *&v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsView];
    if (v7)
    {
      v8 = 2;
      goto LABEL_14;
    }
  }

  result = [objc_opt_self() _currentTraitCollection];
  if (result)
  {
    v16 = result;
    [result userInterfaceStyle];

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_2412AC494(v0);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2412F9BDC()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if ((*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) & 1) == 0 && *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden) == 1)
  {
    v3 = objc_opt_self();
    [objc_opt_self() floatForKey_];
    v5 = [v3 scheduledTimerWithTimeInterval:v0 target:sel_autoHide2DControls selector:0 userInfo:0 repeats:v4];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
  }
}

void sub_2412F9D1C(char a1)
{
  v3 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
  v4 = *&v1[v3];
  *&v1[v3] = 0;

  if ((a1 & 1) != 0 && (v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] & 1) == 0 && v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] == 1)
  {

    [v1 startAutoHideControlsTimer];
  }
}

_BYTE *sub_2412F9E10()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) & 1) == 0 && result[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] == 3)
    {
      result[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 4;
      [result updateInterfaceState];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2412F9F10()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isInFullscreen;
  if (v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isInFullscreen] == 1 && (v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sessionIsInterrupted] & 1) == 0)
  {
    if (qword_27E537CC0 != -1)
    {
      swift_once();
    }

    sub_2413530FC();

    v2 = v9 == 1;
  }

  else
  {
    v2 = 0;
  }

  v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled] = v2;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v3 = sub_241352FFC();
  __swift_project_value_buffer(v3, qword_27E53A538);
  v4 = v0;
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109888;
    *(v7 + 4) = v2;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v0[v1];
    *(v7 + 14) = 1024;
    *(v7 + 16) = *(&v4->isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sessionIsInterrupted);

    *(v7 + 20) = 1024;
    if (qword_27E537CC0 != -1)
    {
      swift_once();
    }

    sub_2413530FC();

    *(v7 + 22) = v9 == 1;
    _os_log_impl(&dword_241215000, v5, v6, "updateWorldModeControl() enable?: %{BOOL}d.  isInFullscreen: %{BOOL}d, sessionIsInterrupted: %{BOOL}d, canEnableARSession: %{BOOL}d", v7, 0x1Au);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  return [v4 enableWorldModeControl:v2];
}

void sub_2412FA160(char a1)
{
  v2 = v1;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 5457241;
    }

    else
    {
      v9 = 20302;
    }

    if (a1)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    v11 = sub_2412DDC2C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_241215000, v5, v6, "enableWorldModeControl Enable? %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CE4870](v8, -1, -1);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  v12 = sub_2412F7098();
  [v12 setEnabled:a1 & 1 forSegmentAtIndex:0];

  if ((a1 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___solariumDisplayModeSegmentedControl;
    if ([*(v2 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___solariumDisplayModeSegmentedControl) selectedSegmentIndex] != 1)
    {
      v14 = sub_241352FDC();
      v15 = sub_2413540DC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_241215000, v14, v15, "World mode is disabled, returning back to 3D mode…", v16, 2u);
        MEMORY[0x245CE4870](v16, -1, -1);
      }

      [*(v2 + v13) setSelectedSegmentIndex_];

      sub_2412F97FC();
    }
  }
}

void sub_2412FA424(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_bottomControlCapabilities;
  v4 = *&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_bottomControlCapabilities];
  if ((a1 & ~v4) != 0)
  {
    *&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_bottomControlCapabilities] = v4 | a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539CF0);
  v5 = swift_allocObject();
  sub_2412F4A3C(v34);
  v7 = v35;
  v6 = v36;
  swift_unknownObjectRetain();
  sub_2412B34E8(v34);
  v5[4] = v7;
  v5[5] = v6;
  sub_2412F4A3C(v37);
  v9 = v38;
  v8 = v39;
  swift_unknownObjectRetain();
  sub_2412B34E8(v37);
  v5[6] = v9;
  v5[7] = v8;
  v26 = v8;
  sub_2412F4A3C(&v40);
  v11 = v41;
  v10 = v42;
  swift_unknownObjectRetain();
  sub_2412B34E8(&v40);
  v5[8] = v11;
  v5[9] = v10;
  if (v7)
  {
    ObjectType = swift_getObjectType();
    v13 = *(v6 + 16);
    swift_unknownObjectRetain();
    v13(1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  if (v9)
  {
    v14 = swift_getObjectType();
    v15 = *(v26 + 16);
    swift_unknownObjectRetain();
    v15(1, v14, v26);
    swift_unknownObjectRelease();
  }

  if (v11)
  {
    v16 = swift_getObjectType();
    v17 = *(v10 + 16);
    swift_unknownObjectRetain();
    v17(1, v16, v10);
    swift_unknownObjectRelease();
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538EE0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = [v2 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19)
  {
    v20 = *&v2[v3];
    if ((v20 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_2412F4A3C(&v27);
    v24 = v32;
    v21 = v33;
    goto LABEL_19;
  }

  sub_2412F4A3C(&v27);
  v22 = v27.n128_u64[1];
  swift_unknownObjectRetain();
  sub_2412B34E8(&v27);
  v23 = swift_getObjectType();
  (*(v22 + 16))(1, v23, v22);
  swift_unknownObjectRelease();
  v20 = *&v2[v3];
  if ((v20 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v20 & 4) != 0)
  {
    sub_2412F4A3C(&v27);
    v24 = v30;
    v21 = v31;
    goto LABEL_19;
  }

  if ((v20 & 2) != 0)
  {
    sub_2412F4A3C(&v27);
    v24 = v28;
    v21 = v29;
LABEL_19:
    swift_unknownObjectRetain();
    sub_2412B34E8(&v27);
    if (!v24)
    {
      return;
    }

    goto LABEL_20;
  }

  if ((v20 & 1) == 0)
  {
    return;
  }

  sub_2412F4A3C(&v27);
  v21 = v27.n128_u64[1];
  swift_unknownObjectRetain();
  sub_2412B34E8(&v27);
LABEL_20:
  v25 = swift_getObjectType();
  (*(v21 + 16))(0, v25, v21);
  swift_unknownObjectRelease();
}

void sub_2412FA788(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v57 = a1[2];
  v58 = a1[3];
  v4 = *(a1 + 2);
  v62 = *(a1 + 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setFullScreen_];
    swift_unknownObjectRelease();
  }

  v59 = v3;
  v61 = v2;
  v6 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
  v7 = *&v1[v6];
  *&v1[v6] = 0;

  v60 = v1;
  sub_2412F4A3C(v70);
  aBlock = v70[0];
  v67 = v70[1];
  v68 = v70[2];
  v69 = v70[3];
  v8 = sub_2412B8EDC();
  sub_2412B34E8(v70);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    v13 = v62;
    v63 = v9 + 40;
    v14 = MEMORY[0x277D84F90];
    v64 = v9;
    v65 = v4;
    while (2)
    {
      v15 = *(v9 + 16);
      if (v11 > v15)
      {
        v15 = v11;
      }

LABEL_7:
      if (v11 == v15)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v16 = 16 * v11;
      v17 = *(v12 + 16 * v11++);
      v18 = *(v13 + 16) + 1;
      v19 = (v62 + 32);
      while (--v18)
      {
        v20 = *v19;
        v19 += 2;
        if (v20 == v17)
        {
          if (v11 != v10)
          {
            goto LABEL_7;
          }

          goto LABEL_20;
        }
      }

      v21 = *(v63 + v16);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2412DE2D4(0, v14[2] + 1, 1);
        v13 = v62;
      }

      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        sub_2412DE2D4((v22 > 1), v23 + 1, 1);
        v13 = v62;
      }

      v14[2] = v23 + 1;
      v24 = &v14[2 * v23];
      v24[4] = v17;
      v24[5] = v21;
      v9 = v64;
      v4 = v65;
      if (v11 != v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v25 = v14[2];
  if (v25)
  {
    v26 = 0;
    v27 = v14 + 5;
    while (v26 < v14[2])
    {
      ++v26;
      v28 = *v27;
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 40);
      swift_unknownObjectRetain();
      v30(ObjectType, v28, 0.0);
      swift_unknownObjectRelease();
      v27 += 2;
      if (v25 == v26)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_45;
  }

LABEL_24:

  v31 = *(v4 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = (v4 + 40);
    while (v32 < *(v4 + 16))
    {
      ++v32;
      v34 = *v33;
      v35 = swift_getObjectType();
      v36 = *(v34 + 40);
      swift_unknownObjectRetain();
      v36(v35, v34, 1.0);
      swift_unknownObjectRelease();
      v33 += 2;
      if (v31 == v32)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_46;
  }

LABEL_28:
  v37 = swift_allocObject();
  v38 = v61;
  *(v37 + 16) = v61;
  *(v37 + 17) = v59;
  *(v37 + 18) = v57;
  *(v37 + 19) = v58;
  *(v37 + 24) = v62;
  *(v37 + 32) = v4;
  v39 = swift_allocObject();
  v40 = v60;
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v61;
  *(v41 + 25) = v59;
  *(v41 + 26) = v57;
  *(v41 + 27) = v58;
  *(v41 + 32) = v62;
  *(v41 + 40) = v4;
  if (v57)
  {
    if (v58)
    {
      v42 = 0.09;
    }

    else
    {
      v42 = 0.0;
    }

    v43 = objc_opt_self();
    v44 = objc_opt_self();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    [v44 floatForKey_];
    v46 = v45;
    v68.n128_u64[0] = sub_2412FC8E0;
    v68.n128_u64[1] = v37;
    aBlock.n128_u64[0] = MEMORY[0x277D85DD0];
    aBlock.n128_u64[1] = 1107296256;
    v67.n128_u64[0] = sub_2412D5698;
    v67.n128_u64[1] = &block_descriptor_9;
    v47 = _Block_copy(&aBlock);

    v68.n128_u64[0] = sub_2412FC928;
    v68.n128_u64[1] = v41;
    aBlock.n128_u64[0] = MEMORY[0x277D85DD0];
    aBlock.n128_u64[1] = 1107296256;
    v38 = v61;
    v67.n128_u64[0] = sub_2412F49E8;
    v67.n128_u64[1] = &block_descriptor_141;
    v48 = _Block_copy(&aBlock);

    [v43 animateWithDuration:0 delay:v47 options:v48 animations:v46 completion:v42];
    v49 = v48;
    v40 = v60;
    _Block_release(v49);
    _Block_release(v47);
  }

  else
  {
    if (v59)
    {
      v50 = 256;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50 | v61;
    if (v58)
    {
      v52 = 0x1000000;
    }

    else
    {
      v52 = 0;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_2412FAD94(v51 | v52, v62, v4);
    swift_beginAccess();
    v53 = swift_unknownObjectWeakLoadStrong();
    if (v53)
    {
      v54 = v53;
      sub_2412F9D1C(v59);
    }

    else
    {
    }
  }

  v55 = [v40 navigationController];
  if (v55)
  {
    v56 = v55;
    [v55 setNavigationBarHidden:v38 animated:1];

    return;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_2412FAD94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x1000000) != 0)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v5 = a3;
  v6 = 0;
  v7 = a2 + 32;
  v8 = (a3 + 32);
  v27 = a2 + 40;
  v9 = MEMORY[0x277D84F90];
  v28 = a2 + 32;
LABEL_6:
  while (2)
  {
    if (v6 >= v4)
    {
      __break(1u);
      goto LABEL_28;
    }

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v11 = 16 * v6;
    v12 = *(v7 + 16 * v6++);
    v13 = *(v5 + 16) + 1;
    v14 = v8;
    while (--v13)
    {
      v15 = *v14;
      v14 += 2;
      if (v15 == v12)
      {
        if (v10 != v4)
        {
          goto LABEL_6;
        }

        goto LABEL_20;
      }
    }

    v16 = *(v27 + v11);
    swift_unknownObjectRetain();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2412DE2D4(0, v9[2] + 1, 1);
      v5 = a3;
    }

    v18 = v9[2];
    v17 = v9[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_2412DE2D4((v17 > 1), v18 + 1, 1);
      v5 = a3;
    }

    v9[2] = v18 + 1;
    v19 = &v9[2 * v18];
    v19[4] = v12;
    v19[5] = v16;
    v7 = v28;
    if (v10 != v4)
    {
      continue;
    }

    break;
  }

LABEL_20:
  v20 = v9[2];
  if (v20)
  {
    v21 = 0;
    v22 = v9 + 5;
    while (v21 < v9[2])
    {
      ++v21;
      v23 = *v22;
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 40);
      swift_unknownObjectRetain();
      v25(ObjectType, v23, v3);
      result = swift_unknownObjectRelease();
      v22 += 2;
      if (v20 == v21)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_29;
  }

LABEL_24:
}

void sub_2412FAF8C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2412F9D1C(v3 & 1);
  }
}

void sub_2412FAFE8()
{
  v1 = sub_2412EBEA4();
  v2 = v1;
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = sub_2412F577C();

    v7 = sub_241353BDC();

    [v6 setText_];

    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = sub_2412F577C();
  [v9 alpha];
  v11 = v10;

  if (v8 == v11)
  {
  }

  else
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    v13[2] = v0;
    v13[3] = v2;
    v13[4] = v4;
    v16[4] = sub_2412FC9E4;
    v16[5] = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_2412D5698;
    v16[3] = &block_descriptor_153;
    v14 = _Block_copy(v16);
    v15 = v0;

    [v12 animateWithDuration:v14 animations:0.2];
    _Block_release(v14);
  }
}

id sub_2412FB1AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2412F577C();
  v7 = v6;
  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 0.0;
  if (v8)
  {
    v9 = 1.0;
    v10 = 1.0;
  }

  else
  {
    v10 = 0.9;
  }

  [v6 setAlpha_];

  v11 = *(a1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill);
  CGAffineTransformMakeScale(&v13, v10, v10);
  return [v11 setTransform_];
}

uint64_t sub_2412FB2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2413546AC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_241353ECC();
  v4[6] = sub_241353EBC();
  v7 = sub_241353E8C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_2412FB3AC, v7, v6);
}

uint64_t sub_2412FB3AC()
{
  v1 = sub_241354B4C();
  v3 = v2;
  sub_241354A0C();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_2412FB490;

  return sub_2412FBE24(v1, v3, 0, 0, 1);
}

uint64_t sub_2412FB490()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_2412FB6DC;
  }

  else
  {
    v8 = sub_2412FB628;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2412FB628()
{

  if ((sub_241353F5C() & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = sub_2412F584C();
    [v2 setAlpha_];

    [*(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_backgroundDimmingView) setAlpha_];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2412FB6DC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_2412FB748(uint64_t a1)
{
  v2 = sub_2412F584C();
  [v2 setAlpha_];

  v3 = *(a1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_backgroundDimmingView);

  return [v3 setAlpha_];
}

uint64_t sub_2412FB7E0()
{
  result = sub_24135426C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2412FBA78(uint64_t a1, uint64_t a2)
{
  v5 = [v2 selectedSegmentIndex];
  sub_241246158(0, &qword_27E538A40);
  sub_2412FC7FC();
  v6 = sub_241353FEC();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ARQLTapSegmentedControl();
  objc_msgSendSuper2(&v13, sel_touchesEnded_withEvent_, v6, a2);

  result = [v2 selectedSegmentIndex];
  if (v5 == result)
  {
    result = sub_241322330(a1);
    if (result)
    {
      v8 = result;
      [result locationInView_];
      v10 = v9;
      v12 = v11;

      [v2 bounds];
      v14.x = v10;
      v14.y = v12;
      result = CGRectContainsPoint(v15, v14);
      if (result)
      {
        return [v2 sendActionsForControlEvents_];
      }
    }
  }

  return result;
}

id sub_2412FBDC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARQLTapSegmentedControl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2412FBE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24135469C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2412FBF24, 0, 0);
}

uint64_t sub_2412FBF24()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2413546AC();
  v5 = sub_2412FC2DC(&qword_27E539CE0, MEMORY[0x277D85928]);
  sub_2413549EC();
  sub_2412FC2DC(&qword_27E539CE8, MEMORY[0x277D858F8]);
  sub_2413546BC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2412FC0B4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2412FC0B4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2412FC270, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2412FC270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2412FC2DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2412FC324()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_wantsStatusPillHidden) = 0;
  v2 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_arTrackingState;
  v3 = sub_24135425C();
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 2, v3);
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTriggerAffordance) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_trackedRaycastState) = 1;
  v5 = v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType;
  *v5 = 4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sessionIsInterrupted) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isInFullscreen) = 1;
  v6 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_cancellables) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsViewModel;
  type metadata accessor for VariantViewModel();
  swift_allocObject();
  *(v1 + v7) = VariantViewModel.init(variants:)(v6);
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsView) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___longPressGesture) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTrackingState, 1, 2, v3);
  v8 = (v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_trackingStateStatus);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sharingEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden) = 0;
  v9 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_touchesOnScreenGestureRecognizer;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for TouchesOnScreenCountGestureRecognizer()) init];
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayCornerRadiusPortraitSidePadding) = 0x4030000000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayCornerRadiusDefaultPadding) = 0x403B000000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayCornerRadiusPortraitShutterButtonPadding) = 0x4052C00000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_defaultPortraitShutterButtonPadding) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_defaultControlPadding) = 0x4018000000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_controlsViewToStatusBarVerticalPadding) = 0x403B000000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_topControlsHeight) = 0x4047800000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_topControlsButtonWidth) = 0x404E800000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_topControlsSegmentedControlWidth) = 0x4065400000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_trackingLabelMinimumBottomPadding) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitUpsideDownConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_landscapeLeftConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_landscapeRightConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButtonContainer) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_checkoutPlatter) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButtonContainer) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButton) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___fileARadarButton) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton) = 0;
  v10 = (v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_animationView);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_coachingOverlayView) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___assetLoadingView) = 0;
  v11 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_backgroundDimmingView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.6];
  [v12 setBackgroundColor_];

  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_bottomControlCapabilities) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentAppearance) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___solariumDisplayModeSegmentedControl) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_additionalDismissObservers) = v6;
  *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_loadingTask) = 0;
  sub_2413547DC();
  __break(1u);
}

void sub_2412FC764(uint64_t a1)
{
  if ((v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] & 1) == 0)
  {
    if (a1 < 1)
    {

      [v1 startAutoHideControlsTimer];
    }

    else
    {
      v2 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
      [*&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
      v3 = *&v1[v2];
      *&v1[v2] = 0;
    }
  }
}

unint64_t sub_2412FC7FC()
{
  result = qword_27E53A4B0;
  if (!qword_27E53A4B0)
  {
    sub_241246158(255, &qword_27E538A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A4B0);
  }

  return result;
}

uint64_t sub_2412FC864()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2412B060C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2412FC8E0()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 16);
  if (*(v0 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 19))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return sub_2412FAD94(v2 | v3 | v4, *(v0 + 24), *(v0 + 32));
}

void sub_2412FC928(uint64_t a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_2412FAF8C(a1, *(v1 + 16), v2 | *(v1 + 24));
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2412FC994(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }
}

id sub_2412FCA30(void *a1, uint64_t a2, double a3, double a4)
{
  result = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  result = [result setWidth_];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  [v10 setHeight_];
  [v10 setPixelFormat_];
  [v10 setSampleCount_];
  [v10 setUsage_];
  v11 = [a1 newTextureWithDescriptor_];
  if (!v11)
  {
    sub_2413545EC();

    v12 = sub_241353F7C();
    MEMORY[0x245CE20D0](v12);

    MEMORY[0x245CE20D0](8236, 0xE200000000000000);
    v13 = sub_241353F7C();
    MEMORY[0x245CE20D0](v13);

    MEMORY[0x245CE20D0](41, 0xE100000000000000);
    sub_2412460C0();
    swift_allocError();
    *v14 = 0xD000000000000020;
    *(v14 + 8) = 0x800000024135DBB0;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  return v11;
}

Swift::Void __swiftcall ARQLAnimationManager._completeAnimation(id:)(Swift::Int id)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (*(v3 + 16))
  {
    v4 = sub_2412FD908(id);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = sub_2412FD080(id);
      v8 = *(v6 + 48);
      if (v8)
      {
        v8(v7, *(v6 + 24));
      }
    }
  }
}

void *ARQLAnimationManager.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = 1;
  result[3] = 0;
  v1 = MEMORY[0x277D84F98];
  result[4] = 0;
  result[5] = v1;
  return result;
}

void *ARQLAnimationManager.init()()
{
  result = v0;
  v0[2] = 1;
  v0[3] = 0;
  v2 = MEMORY[0x277D84F98];
  v0[4] = 0;
  v0[5] = v2;
  return result;
}

uint64_t sub_2412FCD6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v7 = v5[2];
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v6[2] = v7 + 1;
    type metadata accessor for ARQLAnimationManager.Animation();
    v13 = swift_allocObject();
    *(v13 + 64) = CACurrentMediaTime();
    *(v13 + 16) = v7;
    *(v13 + 24) = a5;
    *(v13 + 32) = v11;
    *(v13 + 40) = a2;
    *(v13 + 48) = a3;
    *(v13 + 56) = a4;
    swift_beginAccess();

    sub_24124AD38(a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v6[5];
    v6[5] = 0x8000000000000000;
    sub_2412A65A8(v13, v7, isUniquelyReferenced_nonNull_native);
    v6[5] = v17;
    swift_endAccess();
    v15 = v6[3];
    if (v15)
    {
      v16 = *(v17 + 16);

      v15(v16);
      sub_2412186FC(v15);
    }

    return v7;
  }

  return result;
}

uint64_t sub_2412FCEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a6 <= 0.0)
  {

    return sub_2412FCD6C(a1, a2, a3, a4, a5);
  }

  else
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a5;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    *(v13 + 48) = a3;
    *(v13 + 56) = a4;

    sub_24124AD38(a3);
    v14 = sub_2412FCD6C(nullsub_6, 0, sub_2412FEAFC, v13, a6);

    return v14;
  }
}

uint64_t sub_2412FCFE4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2412FCD6C(a4, a5, a6, a7, a2);
  }

  return result;
}

uint64_t sub_2412FD080(uint64_t a1)
{
  swift_beginAccess();
  sub_2412A2914(a1);
  swift_endAccess();

  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = *(*(v1 + 40) + 16);

    v4(v5);
    return sub_2412186FC(v4);
  }

  return result;
}

uint64_t sub_2412FD118()
{
  swift_beginAccess();
  *(v0 + 40) = MEMORY[0x277D84F98];

  v2 = *(v0 + 24);
  if (v2)
  {

    v2(0);
    return sub_2412186FC(v2);
  }

  return result;
}

uint64_t sub_2412FD190()
{
  v1 = v0;
  v2 = CACurrentMediaTime();
  swift_beginAccess();
  v3 = *(v0 + 40);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));
    v13 = *(v12 + 24);
    v14 = (v2 - *(v12 + 64)) / v13;
    v15 = *(v12 + 32);
    v16 = *(v12 + 16);

    if (v14 <= 1.0)
    {
      v15(v16, v13, v14);
      goto LABEL_19;
    }

    v15(v16, v13, 1.0);
    v17 = *(v12 + 48);
    if (v17)
    {
      v18 = *(v12 + 24);

      v17(v19, v18);
      sub_2412186FC(v17);
    }

    v20 = *(v12 + 16);
    swift_beginAccess();
    v21 = *(v1 + 40);
    v22 = sub_2412FD908(v20);
    if (v23)
    {
      v24 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v1 + 40);
      *(v1 + 40) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2412A7970();
      }

      sub_241339218(v24, v21);
      *(v1 + 40) = v21;
    }

    swift_endAccess();
    v26 = *(v1 + 24);
    if (v26)
    {
      v27 = *(v21 + 16);

      v26(v27);

      result = sub_2412186FC(v26);
      v9 = v10;
    }

    else
    {
LABEL_19:

      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2412FD3F0()
{

  sub_2412186FC(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t ARQLAnimationManager.deinit()
{
  sub_2412186FC(*(v0 + 24));

  return v0;
}

uint64_t ARQLAnimationManager.__deallocating_deinit()
{
  sub_2412186FC(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_2412FD50C()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 40) = MEMORY[0x277D84F98];

  v3 = *(v1 + 24);
  if (v3)
  {

    v3(0);
    return sub_2412186FC(v3);
  }

  return result;
}

uint64_t sub_2412FD588(double a1, float a2, float32x4_t a3, __n128 a4, float32x4_t a5, float32x4_t a6, float32_t a7, float32x4_t a8, uint64_t a9, uint64_t a10, float32x4_t *a11, float32x4_t *a12, uint64_t (*a13)(uint64_t, __n128))
{
  a3.i32[2] = a4.n128_u32[0];
  a6.f32[2] = a7;
  a4.n128_u32[1] = 0;
  v16 = fminf(fmaxf(a2, 0.0), 1.0);
  a4.n128_f32[0] = (v16 * v16) * ((v16 * -2.0) + 3.0);
  v26 = vmlaq_n_f32(a3, vsubq_f32(a6, a3), a4.n128_f32[0]);
  v28 = a4;
  simd_slerp(a5, a8, a4.n128_f32[0]);
  v25 = v17;
  sub_241352C5C();
  v18 = sub_2413519AC();
  *(v19 + 16) = v25;
  v18(v29, 0);
  v20 = sub_2413519AC();
  v21[2] = v26;
  v20(v29, 0);
  v27 = vmlaq_n_f32(*a11, vsubq_f32(*a12, *a11), v28.n128_f32[0]);
  v22 = sub_2413519AC();
  *v23 = v27;
  result = v22(v29, 0);
  if (a13)
  {
    return a13(result, v28);
  }

  return result;
}

uint64_t sub_2412FD6F8(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_241352DDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RESRT(0);
  v17[3] = v9;
  v10 = swift_allocObject();
  v17[0] = v10;
  v11 = a2[1];
  v10[1] = *a2;
  v10[2] = v11;
  v10[3] = a2[2];
  sub_241352DBC();
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_241352DFC();
  v16[1] = v13;
  v16[2] = v12;
  v16[0] = v14;
  (*(v6 + 8))(v8, v5);
  sub_241352C5C();
  result = sub_2413519CC();
  if (a3)
  {
    return a3(result);
  }

  return result;
}

unint64_t sub_2412FD858(uint64_t a1)
{
  sub_241354ADC();
  MEMORY[0x245CE2EA0](a1);
  v2 = sub_241354B1C();

  return sub_2412FDE60(a1, v2);
}

unint64_t sub_2412FD8C4(uint64_t a1)
{
  v2 = sub_24135454C();

  return sub_2412FDECC(a1, v2);
}

unint64_t sub_2412FD968(uint64_t a1)
{
  sub_241352C5C();
  sub_2412FEC14(&qword_27E5389B0, MEMORY[0x277CDB1C8]);
  v2 = sub_241353B8C();
  return sub_2412FDF94(a1, v2);
}

unint64_t sub_2412FDA14(uint64_t a1, uint64_t a2)
{
  sub_241354ADC();
  sub_241353CCC();
  v4 = sub_241354B1C();

  return sub_2412FE090(a1, a2, v4);
}

unint64_t sub_2412FDA8C(uint64_t a1)
{
  sub_24135152C();
  sub_2412FEC14(&qword_27E538AD0, MEMORY[0x277CC9260]);
  v2 = sub_241353B8C();

  return sub_2412FE148(a1, v2);
}

unint64_t sub_2412FDB74(uint64_t a1)
{
  sub_241354ADC();
  MEMORY[0x245CE2EA0](a1);
  v2 = sub_241354B1C();
  return sub_2412FDE60(a1, v2);
}

unint64_t sub_2412FDBDC(uint64_t a1)
{
  v2 = sub_2413542AC();

  return sub_2412FE308(a1, v2);
}

unint64_t sub_2412FDC70(uint64_t a1)
{
  sub_241354ADC();
  sub_241309154(a1);
  sub_241353CCC();

  v2 = sub_241354B1C();

  return sub_2412FE498(a1, v2);
}

unint64_t sub_2412FDCF8(uint64_t a1)
{
  sub_241353C0C();
  sub_241354ADC();
  sub_241353CCC();
  v2 = sub_241354B1C();

  return sub_2412FE848(a1, v2);
}

unint64_t sub_2412FDD88(unsigned __int8 a1)
{
  sub_241354ADC();
  sub_241353CCC();

  v2 = sub_241354B1C();

  return sub_2412FE94C(a1, v2);
}

unint64_t sub_2412FDE60(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2412FDECC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2412B365C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CE2910](v9, a1);
      sub_2412AF728(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2412FDF94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_241352C5C();
    sub_2412FEC14(&qword_27E539D58, MEMORY[0x277CDB1C8]);
    do
    {
      if (sub_241353BCC())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2412FE090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24135497C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2412FE148(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2412FEC14(&qword_27E539630, MEMORY[0x277CC9260]);
      v15 = sub_241353BCC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2412FE308(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for EntityController();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2413542BC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2412FE3CC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_241246158(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_2413542BC();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2412FE498(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 5)
      {
        break;
      }

      if (*(*(v2 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000013;
          v8 = 0x800000024135D8D0;
        }

        else
        {
          v7 = 0x74756F6B63656863;
          v8 = 0xED0000656C746954;
          if (v6 != 4)
          {
            v7 = 0xD000000000000010;
            v8 = 0x800000024135D900;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0xD000000000000013;
        }

        else
        {
          v7 = 0xD000000000000014;
        }

        if (v6 == 1)
        {
          v8 = 0x800000024135D890;
        }

        else
        {
          v8 = 0x800000024135D8B0;
        }
      }

      else
      {
        v7 = 0xD000000000000014;
        v8 = 0x800000024135D870;
      }

LABEL_30:
      v11 = 0x65486D6F74737563;
      if (v5 == 10)
      {
        v11 = 0x6D6F74737563;
      }

      v12 = 0xEC00000074686769;
      if (v5 == 10)
      {
        v12 = 0xE600000000000000;
      }

      if (v5 == 9)
      {
        v11 = 0x63416D6F74737563;
      }

      v13 = 0xEC0000006E6F6974;
      if (v5 == 9)
      {
        v12 = 0xEC0000006E6F6974;
      }

      v14 = 0xD000000000000012;
      if (v5 == 7)
      {
        v13 = 0x800000024135D920;
      }

      else
      {
        v14 = 0x63416F546C6C6163;
      }

      if (v5 == 6)
      {
        v14 = 0x6563697270;
        v13 = 0xE500000000000000;
      }

      if (v5 <= 8)
      {
        v11 = v14;
        v12 = v13;
      }

      v15 = 0xD000000000000010;
      if (v5 == 4)
      {
        v15 = 0x74756F6B63656863;
      }

      v16 = 0xED0000656C746954;
      if (v5 != 4)
      {
        v16 = 0x800000024135D900;
      }

      if (v5 == 3)
      {
        v15 = 0xD000000000000013;
        v16 = 0x800000024135D8D0;
      }

      if (v5 == 1)
      {
        v17 = 0xD000000000000013;
      }

      else
      {
        v17 = 0xD000000000000014;
      }

      if (v5 == 1)
      {
        v18 = 0x800000024135D890;
      }

      else
      {
        v18 = 0x800000024135D8B0;
      }

      if (!v5)
      {
        v17 = 0xD000000000000014;
        v18 = 0x800000024135D870;
      }

      if (v5 <= 2)
      {
        v15 = v17;
        v16 = v18;
      }

      if (v5 <= 5)
      {
        v19 = v15;
      }

      else
      {
        v19 = v11;
      }

      if (v5 <= 5)
      {
        v20 = v16;
      }

      else
      {
        v20 = v12;
      }

      if (v7 == v19 && v8 == v20)
      {

        return v4;
      }

      v21 = sub_24135497C();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    if (*(*(v2 + 48) + v4) > 8u)
    {
      if (v6 != 9)
      {
        if (v6 == 10)
        {
          v8 = 0xE600000000000000;
          v7 = 0x6D6F74737563;
          goto LABEL_30;
        }

        v7 = 0x65486D6F74737563;
        v10 = 1952999273;
        goto LABEL_29;
      }

      v9 = 0x6D6F74737563;
    }

    else
    {
      if (v6 == 6)
      {
        v8 = 0xE500000000000000;
        v7 = 0x6563697270;
        goto LABEL_30;
      }

      if (v6 == 7)
      {
        v7 = 0xD000000000000012;
        v8 = 0x800000024135D920;
        goto LABEL_30;
      }

      v9 = 0x6F546C6C6163;
    }

    v7 = v9 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
    v10 = 1852795252;
LABEL_29:
    v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_30;
  }

  return v4;
}

unint64_t sub_2412FE848(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_241353C0C();
      v8 = v7;
      if (v6 == sub_241353C0C() && v8 == v9)
      {
        break;
      }

      v11 = sub_24135497C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2412FE94C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x4B4449656E656373;
          v8 = 0xEA00000000007965;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x79654B65707974;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xEF79654B656D614ELL;
            if (v7 != 0x74736F706E676973)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x74736F706E676973;
        v8 = 0xEF79654B656D614ELL;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x4B4449656E656373;
      }

      else
      {
        v10 = 0x79654B65707974;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000007965;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_24135497C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2412FEC14(unint64_t *a1, void (*a2)(uint64_t))
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

float32x4_t sub_2412FEC60@<Q0>(float32x4_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = vmulq_f32(*v1, *v1);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  v6 = vrsqrte_f32(v5);
  v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
  v8 = vmulq_n_f32(*v1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
  v9 = vmulq_f32(v2, v8);
  v10 = vmulq_f32(v8, v8);
  v11 = vmulq_f32(v3, v8);
  *v10.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vzip1_s32(*v11.i8, *v10.i8), vzip2_s32(*v11.i8, *v10.i8)));
  v12 = vmulq_n_f32(v8, (v9.f32[2] + vaddv_f32(*v9.f32)) / *&v10.i32[1]);
  *v2.f32 = vsub_f32(*v2.f32, *v12.f32);
  v2.f32[2] = COERCE_FLOAT(v1[1].i64[1]) - v12.f32[2];
  v13 = vmulq_f32(v2, v2);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(v14);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
  v15 = vmulq_n_f32(v2, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  v16 = vmulq_n_f32(v8, *v10.i32 / *&v10.i32[1]);
  v17 = vmulq_f32(v3, v15);
  v18 = vmulq_f32(v15, v15);
  *v17.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vadd_f32(vzip1_s32(*v17.i8, *v18.i8), vzip2_s32(*v17.i8, *v18.i8)));
  v19 = vmulq_n_f32(v15, vdiv_f32(*v17.i8, vdup_lane_s32(*v17.i8, 1)).f32[0]);
  *v3.f32 = vsub_f32(vsub_f32(*v3.f32, *v16.f32), *v19.f32);
  v3.f32[2] = (COERCE_FLOAT(v1[2].i64[1]) - v16.f32[2]) - v19.f32[2];
  v20 = vmulq_f32(v3, v3);
  v4.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v4.u32[0]);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v20.f32, *v20.f32)));
  result = vmulq_n_f32(v3, vmul_f32(*v20.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  *a1 = v8;
  a1[1] = v15;
  a1[2] = result;
  return result;
}

double sub_2412FEDC8()
{
  result = 0.00781250185;
  xmmword_27E541800 = xmmword_241367070;
  return result;
}

double sub_2412FEDEC()
{
  result = 0.0078125;
  xmmword_27E541820 = xmmword_241364640;
  return result;
}

float sub_2412FEE00(__n128 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D60);
  v1 = swift_allocObject();
  v2 = xmmword_241365E70;
  HIDWORD(v2) = a1.n128_u32[0];
  v3 = xmmword_241364640;
  HIDWORD(v3) = a1.n128_u32[1];
  v1[2] = v2;
  v1[3] = v3;
  v4 = xmmword_241365EE0;
  HIDWORD(v4) = a1.n128_u32[2];
  v1[4] = v4;
  v1[5] = xmmword_241365D00;
  swift_setDeallocating();
  swift_deallocClassInstance();
  return 1.0;
}

float sub_2412FEED4(float a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D60);
  v2 = swift_allocObject();
  v2[2] = xmmword_241365E70;
  v3 = __sincosf_stret(a1);
  LODWORD(v4) = 0;
  DWORD1(v4) = LODWORD(v3.__cosval);
  v5 = v4;
  DWORD2(v5) = LODWORD(v3.__sinval);
  LODWORD(v4) = 0;
  *(&v4 + 1) = -v3.__sinval;
  v7 = v4;
  *(&v4 + 1) = LODWORD(v3.__cosval);
  v2[3] = v5;
  v2[4] = v4;
  v2[5] = xmmword_241365D00;
  swift_setDeallocating();
  swift_deallocClassInstance();
  LODWORD(result) = vzip1q_s32(xmmword_241365E70, v7).u32[0];
  return result;
}

double sub_2412FEFCC(float a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D60);
  v2 = swift_allocObject();
  v3 = __sincosf_stret(a1);
  cosval_low = LODWORD(v3.__cosval);
  DWORD2(cosval_low) = LODWORD(v3.__sinval);
  v2[2] = cosval_low;
  v2[3] = xmmword_241364640;
  DWORD1(v5) = 0;
  *&v5 = -v3.__sinval;
  *(&v5 + 1) = LODWORD(v3.__cosval);
  v2[4] = v5;
  v2[5] = xmmword_241365D00;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *&result = vzip1q_s32(vzip1q_s32(LODWORD(v3.__cosval), COERCE_UNSIGNED_INT(-v3.__sinval)), 0).u64[0];
  return result;
}

double sub_2412FF0BC(float a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D60);
  v2 = swift_allocObject();
  v3 = __sincosf_stret(a1);
  *&v4 = -v3.__sinval;
  HIDWORD(v4) = LODWORD(v3.__cosval);
  v6 = v4;
  v2[2] = __PAIR64__(LODWORD(v3.__sinval), LODWORD(v3.__cosval));
  v2[3] = v4;
  v2[4] = xmmword_241365EE0;
  v2[5] = xmmword_241365D00;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *&result = vzip1q_s32(vzip1q_s32(__PAIR64__(LODWORD(v3.__sinval), LODWORD(v3.__cosval)), 0), vzip1q_s32(v6, 0)).u64[0];
  return result;
}

void sub_2412FF19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = MEMORY[0x277D837D0];
  *&v10 = a2;
  *(&v10 + 1) = a3;
  sub_241245AA4(&v10, v9);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2412A6DFC(v9, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v6 = objc_opt_self();
  v7 = sub_241353BDC();

  sub_2412EDE54(a4);
  v8 = sub_241353B4C();

  [v6 sendAnalyticsWithCategory:v7 payloadDict:v8];
}

uint64_t sub_2412FF324(float a1)
{
  sub_241352C5C();
  v2 = sub_2413519AC();
  *(v3 + 32) = a1;
  return v2(&v5, 0);
}

uint64_t sub_2412FF390(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2412ED85C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2412FF3FC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2412FF3FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24135490C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_241353E5C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2412FF630(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2412FF4F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2412FF4F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 48 * a3;
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      REAABBExtents();
      v17 = v10;
      REAABBExtents();
      v18 = v11;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if ((vmovn_s32(vcgtq_f32(v18, v17)).i8[2] & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 48;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = v9[1];
      v12 = v9[2];
      v14 = *v9;
      v15 = *(v9 - 2);
      *v9 = *(v9 - 3);
      v9[1] = v15;
      v9[2] = *(v9 - 1);
      *(v9 - 2) = v13;
      *(v9 - 1) = v12;
      *(v9 - 3) = v14;
      v9 -= 3;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2412FF630(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v104 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v10 = *v104;
    if (!*v104)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_2412ED820(v9);
      v9 = result;
    }

    v96 = *(v9 + 2);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v6;
        if (!*v6)
        {
          goto LABEL_127;
        }

        v6 = v96 - 1;
        v98 = *&v9[16 * v96];
        v99 = *&v9[16 * v96 + 24];
        sub_2412FFD60((v97 + 48 * v98), (v97 + 48 * *&v9[16 * v96 + 16]), (v97 + 48 * v99), v10);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2412ED820(v9);
        }

        if (v96 - 2 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v100 = &v9[16 * v96];
        *v100 = v98;
        *(v100 + 1) = v99;
        result = sub_2412ED794(v96 - 1);
        v96 = *(v9 + 2);
        v6 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v11 >= v7)
    {
      v22 = v11;
    }

    else
    {
      v12 = *v6;
      v6 = 48 * v10;
      v13 = v10;
      v14 = v12 + 48 * v10;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      REAABBExtents();
      v111 = v15;
      REAABBExtents();
      v114 = v16;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v109 = vcgtq_f32(v114, v111);
      v106 = vmovn_s32(v109).i16[1];
      v17 = v13;
      v18 = v13 + 2;
      v19 = v14 + 128;
      while (v7 != v18)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        REAABBExtents();
        v112 = v20;
        REAABBExtents();
        v115 = v21;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v18;
        v19 += 48;
        if ((vmovn_s32(vmvnq_s8(veorq_s8(vcgtq_f32(v115, v112), *&v109))).i8[2] & 1) == 0)
        {
          v22 = (v18 - 1);
          goto LABEL_11;
        }
      }

      v22 = v7;
LABEL_11:
      v10 = v17;
      if (v106)
      {
        if (v22 < v17)
        {
          goto LABEL_120;
        }

        if (v17 < v22)
        {
          v23 = 48 * v22 - 48;
          v24 = v22;
          v25 = v17;
          do
          {
            if (v25 != --v24)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v26 = (v33 + v6);
              v28 = *(v33 + v6 + 16);
              v27 = *(v33 + v6 + 32);
              v29 = (v33 + v23);
              v30 = *v26;
              v32 = v29[1];
              v31 = v29[2];
              *v26 = *v29;
              v26[1] = v32;
              v26[2] = v31;
              *v29 = v30;
              v29[1] = v28;
              v29[2] = v27;
            }

            ++v25;
            v23 -= 48;
            v6 += 48;
          }

          while (v25 < v24);
        }
      }

      v6 = a3;
    }

    v34 = *(v6 + 8);
    if (v22 < v34)
    {
      if (__OFSUB__(v22, v10))
      {
        goto LABEL_119;
      }

      if (v22 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (&v10[a4] >= v34)
        {
          v35 = *(v6 + 8);
        }

        else
        {
          v35 = &v10[a4];
        }

        if (v35 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v22 != v35)
        {
          break;
        }
      }
    }

    v36 = v22;
    if (v22 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2412A1444(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_2412A1444((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v36;
    v41 = *v104;
    if (!*v104)
    {
      goto LABEL_128;
    }

    v107 = v36;
    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_50:
          if (v46)
          {
            goto LABEL_107;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_110;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_114;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_64:
        if (v64)
        {
          goto LABEL_109;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_112;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_71:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v81 = *&v9[16 * v80 + 32];
        v10 = *&v9[16 * v42 + 40];
        sub_2412FFD60((*v6 + 48 * v81), (*v6 + 48 * *&v9[16 * v42 + 32]), (*v6 + 48 * v10), v41);
        if (v5)
        {
        }

        if (v10 < v81)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2412ED820(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_104;
        }

        v82 = &v9[16 * v80];
        *(v82 + 4) = v81;
        *(v82 + 5) = v10;
        result = sub_2412ED794(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_105;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_106;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_108;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_111;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_115;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = *(v6 + 8);
    v8 = v107;
    if (v107 >= v7)
    {
      goto LABEL_91;
    }
  }

  v83 = v10;
  v84 = *v6;
  v85 = *v6 + 48 * v22;
  v101 = v83;
  v102 = v5;
  v86 = &v83[-v22];
  v108 = v35;
LABEL_82:
  v110 = v22;
  v87 = v86;
  v88 = v85;
  while (1)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    REAABBExtents();
    v113 = v89;
    REAABBExtents();
    v116 = v90;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if ((vmovn_s32(vcgtq_f32(v116, v113)).i8[2] & 1) == 0)
    {
LABEL_81:
      v36 = v108;
      v22 = v110 + 1;
      v85 += 48;
      --v86;
      if ((v110 + 1) != v108)
      {
        goto LABEL_82;
      }

      v10 = v101;
      v5 = v102;
      v6 = a3;
      if (v108 < v101)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v84)
    {
      break;
    }

    v92 = v88[1];
    v91 = v88[2];
    v93 = *v88;
    v94 = *(v88 - 2);
    *v88 = *(v88 - 3);
    v88[1] = v94;
    v88[2] = *(v88 - 1);
    *(v88 - 2) = v92;
    *(v88 - 1) = v91;
    *(v88 - 3) = v93;
    v88 -= 3;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_2412FFD60(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      REAABBExtents();
      v30 = v17;
      REAABBExtents();
      v32 = v18;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (vmovn_s32(vcgtq_f32(v32, v30)).i8[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v29 = v6 - 48;
    v5 -= 48;
    v19 = v12;
    do
    {
      v19 -= 48;
      v20 = v5 + 48;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      REAABBExtents();
      v31 = v21;
      REAABBExtents();
      v33 = v22;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (vmovn_s32(vcgtq_f32(v33, v31)).i8[2])
      {
        if (v20 != v6)
        {
          v25 = *v29;
          v26 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v26;
          *v5 = v25;
        }

        if (v12 <= v4 || (v6 -= 48, v29 <= v7))
        {
          v6 = v29;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v12)
      {
        v23 = *v19;
        v24 = *(v19 + 2);
        *(v5 + 1) = *(v19 + 1);
        *(v5 + 2) = v24;
        *v5 = v23;
      }

      v5 -= 48;
      v12 = v19;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v27 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v27])
  {
    memmove(v6, v4, 48 * v27);
  }

  return 1;
}

uint64_t sub_241300068(char *a1, float a2)
{
  v19 = a1;

  sub_2412FF390(&v19);
  v3 = v19;
  v4 = *(v19 + 2);
  if (v4)
  {
    v5 = 0;
    v6 = v19 + 64;
    v7 = 0.0;
    do
    {
      if (v5 >= *(v3 + 2))
      {
        __break(1u);
        goto LABEL_17;
      }

      ++v5;
      REAABBExtents();
      v7 = v7 + v8;
      v6 += 48;
    }

    while (v4 != v5);
    v9 = 0;
    v10 = (v7 + ((*(v3 + 2) - 1) * a2)) * -0.5;
LABEL_6:
    v11 = &v3[48 * v9 + 64];
    while (v9 < *(v3 + 2))
    {
      v6 = *(v11 - 24);
      v12 = v9 + 1;
      v17 = *(v11 - 16);
      swift_unknownObjectRetain();
      if ((REAABBIsEmpty() & 1) == 0)
      {
        ObjectType = swift_getObjectType();
        (*(v6 + 2))(ObjectType, v6, v10 - *&v17);
        REAABBExtents();
        v18 = v14;
        swift_unknownObjectRelease();
        v10 = v10 + (v18 + a2);
        if (v4 - 1 == v9++)
        {
          goto LABEL_13;
        }

        goto LABEL_6;
      }

      swift_unknownObjectRelease();
      v11 += 48;
      ++v9;
      if (v4 == v12)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_13:
  }

  return result;
}

uint64_t sub_241300220(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241300268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2413002C4(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v22 = a1;
  v21 = sub_24135415C();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24135413C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_2413538FC();
  MEMORY[0x28223BE20](v11 - 8);
  *(v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriter) = 0;
  *(v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriterInput) = 0;
  *(v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_pixelBufferAdaptor) = 0;
  v20 = OBJC_IVAR____TtC11AssetViewer11MovieWriter_movieWriterSerialQueue;
  v12 = sub_241246158(0, &qword_27E538920);
  v19[0] = "movieWriterSerialQueue";
  v19[1] = v12;
  sub_2413538EC();
  v23 = MEMORY[0x277D84F90];
  sub_241301D7C(&qword_27E538368, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538370);
  sub_241255F88(&qword_27E538378, &qword_27E538370);
  sub_24135444C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v21);
  *(v3 + v20) = sub_24135419C();
  v13 = (v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_videoSize);
  *v13 = a2;
  v13[1] = a3;
  v14 = OBJC_IVAR____TtC11AssetViewer11MovieWriter_outputURL;
  v15 = sub_24135152C();
  v16 = *(v15 - 8);
  v17 = v22;
  (*(v16 + 16))(v4 + v14, v22, v15);
  sub_241300600();
  (*(v16 + 8))(v17, v15);
  return v4;
}

void sub_241300600()
{
  v1 = v0;
  v2 = sub_24135152C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241366280;
  *(inited + 32) = sub_241353C0C();
  *(inited + 40) = v7;
  v8 = *MEMORY[0x277CE62F8];
  type metadata accessor for AVVideoCodecType(0);
  *(inited + 72) = v9;
  *(inited + 48) = v8;
  *(inited + 80) = sub_241353C0C();
  *(inited + 88) = v10;
  v11 = v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_videoSize;
  v12 = MEMORY[0x277D85048];
  v13 = *(v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_videoSize);
  *(inited + 120) = MEMORY[0x277D85048];
  *(inited + 96) = v13;
  *(inited + 128) = sub_241353C0C();
  *(inited + 136) = v14;
  v15 = *(v11 + 8);
  *(inited + 168) = v12;
  *(inited + 144) = v15;
  *(inited + 176) = sub_241353C0C();
  *(inited + 184) = v16;
  v17 = v8;
  v18 = sub_241301DC4(v13, v15);
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D78);
  *(inited + 192) = v18;
  sub_241245974(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A20);
  swift_arrayDestroy();
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_outputURL, v2);
  v19 = *MEMORY[0x277CE5D98];
  v20 = objc_allocWithZone(MEMORY[0x277CE6460]);
  v21 = v19;
  v22 = sub_241301F2C(v5, v21);

  v23 = *(v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriter);
  *(v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriter) = v22;
  v24 = v22;

  if (v22)
  {
    v25 = *MEMORY[0x277CE5EA8];
    v26 = objc_allocWithZone(MEMORY[0x277CE6468]);
    v27 = sub_241353B4C();

    v28 = [v26 initWithMediaType:v25 outputSettings:v27];

    v29 = *(v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriterInput);
    *(v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriterInput) = v28;
    v30 = v28;

    if (v30)
    {
      v31 = v30;
      sub_241300C1C();
      v32 = objc_allocWithZone(MEMORY[0x277CE6478]);
      v33 = sub_241353B4C();

      v34 = [v32 initWithAssetWriterInput:v31 sourcePixelBufferAttributes:v33];

      v35 = *(v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_pixelBufferAdaptor);
      *(v1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_pixelBufferAdaptor) = v34;

      [v31 setExpectsMediaDataInRealTime_];
      [v24 addInput_];
      [v24 startWriting];
      CMTimeMakeWithSeconds(v37, 0.0, 1000000);
      [v24 startSessionAtSourceTime_];
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_241300A38()
{
  v1 = OBJC_IVAR____TtC11AssetViewer11MovieWriter_outputURL;
  v2 = sub_24135152C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MovieWriter()
{
  result = qword_27E539D68;
  if (!qword_27E539D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241300B68()
{
  result = sub_24135152C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_241300C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365E60;
  *(inited + 32) = sub_241353C0C();
  *(inited + 40) = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(inited + 72) = sub_241246158(0, &qword_27E5383B8);
  *(inited + 48) = v3;
  *(inited + 80) = sub_241353C0C();
  *(inited + 88) = v4;
  v5 = (v0 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_videoSize);
  v6 = MEMORY[0x277D85048];
  v7 = *v5;
  *(inited + 120) = MEMORY[0x277D85048];
  *(inited + 96) = v7;
  *(inited + 128) = sub_241353C0C();
  *(inited + 136) = v8;
  v9 = v5[1];
  *(inited + 168) = v6;
  *(inited + 144) = v9;
  v10 = sub_241245974(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A20);
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_241300D6C(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_2413538CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2413538FC();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_movieWriterSerialQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = a2;
  *(v13 + 32) = a1;
  aBlock[4] = sub_2413011C0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_2413538DC();
  v19 = MEMORY[0x277D84F90];
  sub_241301D7C(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_241255F88(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_24130104C(uint64_t a1, __CVBuffer *a2, Float64 a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriter);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriterInput);
    if (v4)
    {
      v5 = *(a1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_pixelBufferAdaptor);
      if (v5)
      {
        v8 = v3;
        v9 = v4;
        v10 = v5;
        CMTimeMakeWithSeconds(&v15, a3, 1000000);
        value = v15.value;
        timescale = v15.timescale;
        flags = v15.flags;
        epoch = v15.epoch;
        if (![v8 status])
        {
          [v8 startWriting];
          v15.value = value;
          v15.timescale = timescale;
          v15.flags = flags;
          v15.epoch = epoch;
          [v8 startSessionAtSourceTime_];
        }

        if ([v8 status] == 1)
        {
          if ([v9 isReadyForMoreMediaData])
          {
            CVPixelBufferLockBaseAddress(a2, 0);
            v15.value = value;
            v15.timescale = timescale;
            v15.flags = flags;
            v15.epoch = epoch;
            [v10 appendPixelBuffer:a2 withPresentationTime:&v15];
            CVPixelBufferUnlockBaseAddress(a2, 0);
          }
        }
      }
    }
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2413011E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2413538CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2413538FC();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_movieWriterSerialQueue);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_241302080;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_18_0;
  v14 = _Block_copy(aBlock);

  sub_2413538DC();
  v18 = MEMORY[0x277D84F90];
  sub_241301D7C(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_241255F88(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void sub_2413014C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2413538CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2413538FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriter);
  if (v14)
  {
    v15 = v14;
    if ([v15 status] == 1)
    {
      v16 = swift_allocObject();
      v16[2] = a2;
      v16[3] = a3;
      v16[4] = a1;
      v29 = sub_241302094;
      v30 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_2412D5698;
      v28 = &block_descriptor_30_0;
      v17 = _Block_copy(&aBlock);

      [v15 finishWritingWithCompletionHandler_];
      _Block_release(v17);

      return;
    }
  }

  sub_241246158(0, &qword_27E538920);
  v23 = sub_24135416C();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v29 = sub_24130208C;
  v30 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2412D5698;
  v28 = &block_descriptor_24_0;
  v19 = _Block_copy(&aBlock);

  sub_2413538DC();
  v24 = MEMORY[0x277D84F90];
  sub_241301D7C(&qword_27E539870, MEMORY[0x277D85198]);
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_241255F88(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  v20 = v23;
  MEMORY[0x245CE2540](0, v13, v9, v19);
  _Block_release(v19);

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v22);
}

uint64_t sub_241301898(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_24135152C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  a1(v4);
  return sub_2413020EC(v4);
}

uint64_t sub_241301968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2413538CC();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2413538FC();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241246158(0, &qword_27E538920);
  v12 = sub_24135416C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_2413020E0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_36_0;
  v14 = _Block_copy(aBlock);

  sub_2413538DC();
  v19 = MEMORY[0x277D84F90];
  sub_241301D7C(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_241255F88(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_241301C5C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC11AssetViewer11MovieWriter_outputURL;
  v9 = sub_24135152C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a3 + v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  a1(v7);
  return sub_2413020EC(v7);
}

uint64_t sub_241301D7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_241301DC4(double a1, double a2)
{
  v2 = a1 * 11.4 * a2;
  if (v2 > 64000.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 64000.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241366280;
  *(inited + 32) = sub_241353C0C();
  v5 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v6;
  *(inited + 48) = 60;
  *(inited + 80) = sub_241353C0C();
  *(inited + 88) = v7;
  *(inited + 120) = v5;
  *(inited + 96) = 60;
  *(inited + 128) = sub_241353C0C();
  *(inited + 136) = v8;
  v9 = sub_241353C0C();
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  *(inited + 176) = sub_241353C0C();
  *(inited + 184) = v11;
  *(inited + 216) = MEMORY[0x277D85048];
  *(inited + 192) = v3;
  v12 = sub_241245974(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A20);
  swift_arrayDestroy();
  return v12;
}

id sub_241301F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_24135144C();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 fileType:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_24135152C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_24135139C();

    swift_willThrow();
    v13 = sub_24135152C();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2413020EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Entity.__worldPosition.getter()
{
  sub_241352C5C();

  return sub_24135196C();
}

uint64_t REAABB.description.getter()
{
  result = 0x7B42424141;
  sub_24130276C(0x7B42424141, 0xE500000000000000, 8236);
  return result;
}

uint64_t Entity.__worldOrientation.getter()
{
  sub_241352C5C();

  return sub_2413518DC();
}

uint64_t Entity.__worldPosition.setter()
{
  sub_241352C5C();

  return sub_24135190C();
}

uint64_t Entity.__worldTransform.getter()
{
  sub_241352E1C();
  sub_241352C5C();

  return sub_24135195C();
}

__n128 REPoseF.interpolate(to:by:)(float32x4_t a1, float32_t a2, float32x4_t a3, float a4, float32x4_t a5, float32_t a6, float32x4_t a7)
{
  a1.f32[2] = a2;
  a5.f32[2] = a6;
  v8 = vmlaq_n_f32(a5, vsubq_f32(a1, a5), a4);
  simd_slerp(a7, a3, a4);
  return v8;
}

uint64_t Entity.__worldMatrix.getter()
{
  sub_241352C5C();

  return sub_24135193C();
}

uint64_t Entity.__worldScale.getter()
{
  sub_241352C5C();

  return sub_24135194C();
}

uint64_t Entity.__worldMatrix.setter()
{
  sub_241352C5C();

  return sub_2413518CC();
}

uint64_t Entity.__worldOrientation.setter()
{
  sub_241352C5C();

  return sub_24135192C();
}

uint64_t Entity.__worldScale.setter()
{
  sub_241352C5C();

  return sub_24135199C();
}

uint64_t sub_241302460()
{
  MEMORY[0x245CE20D0](40, 0xE100000000000000);
  sub_2413546CC();
  MEMORY[0x245CE20D0](8236, 0xE200000000000000);
  sub_2413546CC();
  MEMORY[0x245CE20D0](8236, 0xE200000000000000);
  sub_2413546CC();
  MEMORY[0x245CE20D0](41, 0xE100000000000000);
  return 0;
}

__n128 sub_241302638()
{
  if (qword_27E537C30 != -1)
  {
    swift_once();
  }

  v0 = xmmword_27E541800;
  if (qword_27E537C38 != -1)
  {
    v2 = xmmword_27E541800;
    swift_once();
    v0 = v2;
  }

  result = xmmword_27E541810;
  xmmword_27E541880 = xmmword_27E541810;
  result.n128_u32[3] = 1.0;
  xmmword_27E541860 = v0;
  *algn_27E541870 = result;
  return result;
}

uint64_t REAABB.prettyPrint.getter()
{
  result = 0xA7B2042424141;
  sub_24130276C(0xA7B2042424141, 0xE700000000000000, 2604);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_24130276C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_241302460();
  MEMORY[0x245CE20D0](v4);

  MEMORY[0x245CE20D0](a3, 0xE200000000000000);
  v5 = sub_241302460();
  MEMORY[0x245CE20D0](v5);

  MEMORY[0x245CE20D0](125, 0xE100000000000000);
}

void (*Entity.__worldMatrix.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_241352C5C();
  sub_24135193C();
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_24130289C;
}

void sub_24130289C(void **a1)
{
  v1 = *a1;
  sub_2413518CC();

  free(v1);
}

void (*Entity.__worldPosition.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = sub_241352C5C();
  sub_24135196C();
  *v4 = v5;
  return sub_241302980;
}

void (*Entity.__worldOrientation.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = sub_241352C5C();
  sub_2413518DC();
  *v4 = v5;
  return sub_241302A2C;
}

void (*Entity.__worldScale.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = sub_241352C5C();
  sub_24135194C();
  *v4 = v5;
  return sub_241302AD8;
}

void sub_241302AF0(__n128 **a1, uint64_t a2, void (*a3)(void, unint64_t, void, __n128))
{
  v3 = *a1;
  a3(0, (*a1)[1].n128_u64[1], MEMORY[0x277CDB1B8], **a1);

  free(v3);
}

void keypath_get_2Tm(double (*a1)(void, uint64_t, void)@<X3>, _OWORD *a2@<X8>)
{
  v4 = sub_241352C5C();
  *&v5 = a1(0, v4, MEMORY[0x277CDB1B8]);
  *a2 = v5;
}

uint64_t keypath_set_3Tm(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, void, __n128))
{
  v8 = *a1;
  v6 = sub_241352C5C();
  return a5(0, v6, MEMORY[0x277CDB1B8], v8);
}

AssetViewer::VariantSet::VariantOption __swiftcall VariantSet.VariantOption.init(name:isSelected:)(AssetViewer::VariantSet::VariantOption name, Swift::Bool isSelected)
{
  *v2 = name.name;
  *(v2 + 16) = isSelected;
  name.isSelected = isSelected;
  return name;
}

uint64_t static VariantSet.VariantOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24135497C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t VariantSet.VariantOption.hashValue.getter()
{
  sub_241354ADC();
  sub_241353CCC();
  sub_241354AFC();
  return sub_241354B1C();
}

uint64_t sub_241302CF8()
{
  sub_241354ADC();
  sub_241353CCC();
  sub_241354AFC();
  return sub_241354B1C();
}

uint64_t sub_241302D94()
{
  sub_241354ADC();
  sub_241353CCC();
  sub_241354AFC();
  return sub_241354B1C();
}

uint64_t sub_241302DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24135497C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

AssetViewer::VariantSet __swiftcall VariantSet.init(title:options:)(Swift::String title, Swift::OpaquePointer options)
{
  *v2 = title;
  *(v2 + 16) = options;
  result.title = title;
  result.options = options;
  return result;
}

uint64_t static VariantSet.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24135497C() & 1) == 0)
  {
    return 0;
  }

  return sub_241302ED4(v2, v3);
}

uint64_t sub_241302ED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_24135497C();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_241302F90(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_24130377C();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x245CE29C0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x245CE29C0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2413542BC();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_2413542BC();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_2413544EC();
  }

  result = sub_2413544EC();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t VariantSet.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_241353CCC();

  return sub_2413033F4(a1, v3);
}

uint64_t VariantSet.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_241354ADC();
  sub_241353CCC();
  sub_2413033F4(v3, v1);
  return sub_241354B1C();
}

uint64_t sub_241303278()
{
  v1 = *(v0 + 16);
  sub_241354ADC();
  sub_241353CCC();
  sub_2413033F4(v3, v1);
  return sub_241354B1C();
}

uint64_t sub_2413032DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_241353CCC();

  return sub_2413033F4(a1, v3);
}

uint64_t sub_241303320()
{
  v1 = *(v0 + 16);
  sub_241354ADC();
  sub_241353CCC();
  sub_2413033F4(v3, v1);
  return sub_241354B1C();
}

uint64_t sub_241303380(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24135497C() & 1) == 0)
  {
    return 0;
  }

  return sub_241302ED4(v2, v3);
}

uint64_t sub_2413033F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245CE2EA0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v5 += 24;

      sub_241353CCC();
      sub_241354AFC();

      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_241303478()
{
  result = qword_27E539D80;
  if (!qword_27E539D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539D80);
  }

  return result;
}

unint64_t sub_2413034D0()
{
  result = qword_27E539D88;
  if (!qword_27E539D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539D88);
  }

  return result;
}

uint64_t sub_241303544(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v34 = MEMORY[0x277D84F90];
  sub_2412DE2F4(0, v1, 0);
  v4 = 0;
  v5 = v34;
  v27 = v1;
  v28 = a1 + 32;
  do
  {
    v6 = (v28 + 40 * v4);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[4];
    v11 = *(v9 + 16);
    if (v11)
    {
      v30 = *v6;
      v31 = v5;
      v32 = v4;
      v12 = v6[3];
      v29 = v6[1];

      sub_2412DE314(0, v11, 0);
      v13 = v10;
      v14 = v2;
      v15 = (v9 + 40);
      v33 = v13;
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        if (v12 == v16 && v13 == v17)
        {
          v19 = 1;
        }

        else
        {
          v19 = sub_24135497C();
        }

        v21 = *(v14 + 16);
        v20 = *(v14 + 24);

        if (v21 >= v20 >> 1)
        {
          sub_2412DE314((v20 > 1), v21 + 1, 1);
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + 24 * v21;
        *(v22 + 32) = v16;
        *(v22 + 40) = v17;
        *(v22 + 48) = v19 & 1;
        v15 += 2;
        --v11;
        v13 = v33;
      }

      while (v11);
      v2 = MEMORY[0x277D84F90];
      v1 = v27;
      v5 = v31;
      v4 = v32;
      v8 = v29;
      v7 = v30;
    }

    else
    {

      v14 = v2;
    }

    v24 = *(v5 + 16);
    v23 = *(v5 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_2412DE2F4((v23 > 1), v24 + 1, 1);
    }

    ++v4;
    *(v5 + 16) = v24 + 1;
    v25 = (v5 + 24 * v24);
    v25[4] = v7;
    v25[5] = v8;
    v25[6] = v14;
  }

  while (v4 != v1);
  return v5;
}

unint64_t sub_24130377C()
{
  result = qword_27E539D00;
  if (!qword_27E539D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E539D00);
  }

  return result;
}

void sub_241303810()
{
  sub_2413038E4(319, &qword_280DA2A50, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_2413038E4(319, &qword_280DA28D8, type metadata accessor for ModelCustomizationOptions.BannerStyle);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2413038E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24135432C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2413039A8()
{
  sub_241303A30();
  if (v0 <= 0x3F)
  {
    sub_241303A9C();
    if (v1 <= 0x3F)
    {
      sub_241303B00();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_241303A30()
{
  if (!qword_280DA25F8)
  {
    type metadata accessor for PKPaymentButtonType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DA25F8);
    }
  }
}

void sub_241303A9C()
{
  if (!qword_280DA2600[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280DA2600);
    }
  }
}

void sub_241303B00()
{
  if (!qword_280DA2630)
  {
    sub_24135152C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DA2630);
    }
  }
}

void sub_241303B7C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = (&v57 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_24135152C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 257;
  a2[2] = 1;
  v13 = type metadata accessor for ModelCustomizationOptions(0);
  v14 = *(v13 + 28);
  v15 = *(v10 + 56);
  v15(&a2[v14], 1, 1, v9);
  v16 = *(v13 + 32);
  v17 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  (*(*(v17 - 8) + 56))(&a2[v16], 1, 1, v17);
  v18 = sub_241305294(a1);
  if (v18 != 2)
  {
    *a2 = v18;
  }

  sub_241307930(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_241246278(v8, &qword_27E538750);
  }

  else
  {
    v57 = a1;
    v19 = *(v10 + 32);
    v19(v12, v8, v9);
    sub_241246278(&a2[v14], &qword_27E538750);
    v19(&a2[v14], v12, v9);
    a1 = v57;
    v15(&a2[v14], 0, 1, v9);
  }

  v20 = sub_24130535C(a1);
  if (v20 != 2)
  {
    a2[1] = v20;
  }

  v21 = sub_24130542C(a1);
  if (v21 != 2)
  {
    a2[2] = v21;
  }

  if ((sub_2413054FC(a1) & 1) == 0)
  {
LABEL_30:

    goto LABEL_32;
  }

  v59 = sub_241353C0C();
  v60 = v22;
  sub_24135456C();
  if (*(a1 + 16))
  {
    v23 = sub_2412FD8C4(v61);
    if (v24)
    {
      sub_2412461A0(*(a1 + 56) + 32 * v23, v62);
      sub_2412AF728(v61);
      if (swift_dynamicCast())
      {
        v25 = sub_241305640(v59, v60);

        v63 = v25;
        if (qword_27E537C50 != -1)
        {
          swift_once();
        }

        v26 = sub_241352FFC();
        __swift_project_value_buffer(v26, qword_27E539D90);
        v27 = sub_241352FDC();
        v28 = sub_2413540DC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_241215000, v27, v28, "isWebKit == true", v29, 2u);
          MEMORY[0x245CE4870](v29, -1, -1);
        }

        v30 = sub_241352FDC();
        v31 = sub_2413540DC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v61[0] = v33;
          *v32 = 136380675;
          sub_241308E28();

          v34 = sub_241353B6C();
          v36 = v35;

          v37 = sub_2412DDC2C(v34, v36, v61);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_241215000, v30, v31, "Fragments: %{private}s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x245CE4870](v33, -1, -1);
          MEMORY[0x245CE4870](v32, -1, -1);
        }

        swift_beginAccess();
        v38 = v58;
        sub_241305FEC(&v63, a1, v58);
        swift_endAccess();

        sub_241255BC8(v38, &a2[v16], &qword_27E538748);
        v39 = v63;
        v40 = v63 + 64;
        v41 = 1 << *(v63 + 32);
        v42 = -1;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        v43 = v42 & *(v63 + 64);
        v44 = (v41 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v45 = 0;
        while (v43)
        {
          v46 = v45;
LABEL_28:
          v47 = __clz(__rbit64(v43));
          v43 &= v43 - 1;
          v48 = v47 | (v46 << 6);
          v49 = (*(v39 + 56) + 16 * v48);
          v50 = *v49;
          v51 = v49[1];
          v52 = *(*(v39 + 48) + v48);

          sub_241306728(v52, v50, v51, a2);
        }

        while (1)
        {
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v46 >= v44)
          {

            swift_bridgeObjectRelease_n();
            return;
          }

          v43 = *(v40 + 8 * v46);
          ++v45;
          if (v43)
          {
            v45 = v46;
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_30;
    }
  }

  sub_2412AF728(v61);
LABEL_32:
  if (qword_27E537C50 != -1)
  {
LABEL_38:
    swift_once();
  }

  v53 = sub_241352FFC();
  __swift_project_value_buffer(v53, qword_27E539D90);
  v54 = sub_241352FDC();
  v55 = sub_2413540DC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_241215000, v54, v55, "isWebKit == false", v56, 2u);
    MEMORY[0x245CE4870](v56, -1, -1);
  }
}

void sub_2413042D8()
{
  v1 = v0;
  v2 = sub_24135152C();
  v69 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24135122C();
  v5 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537C50 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  v9 = __swift_project_value_buffer(v8, qword_27E539D90);
  v10 = sub_241352FDC();
  v11 = sub_2413540AC();
  v12 = os_log_type_enabled(v10, v11);
  v73 = v1;
  v74 = v9;
  v70 = v2;
  v71 = v4;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v78 = v14;
    *v13 = 136380675;
    v15 = [objc_opt_self() checkoutFragment];
    v16 = sub_241353C0C();
    v17 = v5;
    v19 = v18;

    v20 = sub_2412DDC2C(v16, v19, &v78);
    v5 = v17;

    *(v13 + 4) = v20;
    _os_log_impl(&dword_241215000, v10, v11, "User defaults '%{private}s'", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245CE4870](v14, -1, -1);
    MEMORY[0x245CE4870](v13, -1, -1);
  }

  v21 = [objc_opt_self() checkoutFragment];
  v22 = sub_241353C0C();
  v24 = v23;

  v78 = v22;
  v79 = v24;
  v77[0] = 44;
  v77[1] = 0xE100000000000000;
  v75 = sub_24125D5A0();
  v25 = sub_24135438C();

  v26 = *(v25 + 16);
  if (v26)
  {
    v77[0] = MEMORY[0x277D84F90];
    sub_2412DE1D4(0, v26, 0);
    v27 = v77[0];
    v28 = (v5 + 8);
    v72 = v25;
    v29 = (v25 + 40);
    do
    {
      v30 = *v29;
      v78 = *(v29 - 1);
      v79 = v30;

      sub_24135120C();
      v31 = sub_24135439C();
      v33 = v32;
      (*v28)(v7, v76);

      v77[0] = v27;
      v35 = v27[2];
      v34 = v27[3];
      if (v35 >= v34 >> 1)
      {
        sub_2412DE1D4((v34 > 1), v35 + 1, 1);
        v27 = v77[0];
      }

      v27[2] = v35 + 1;
      v36 = &v27[2 * v35];
      v36[4] = v31;
      v36[5] = v33;
      v29 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  if (v27[2] < 4uLL)
  {

    return;
  }

  v72 = v27[2];
  v37 = v27[4];
  v38 = v27[5];
  v39 = v27[6];
  v40 = v27[7];
  v42 = v27[8];
  v41 = v27[9];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v43 = sub_241352FDC();
  v44 = sub_2413540AC();

  v45 = os_log_type_enabled(v43, v44);
  v76 = v37;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v75 = v42;
    v47 = v46;
    v74 = swift_slowAlloc();
    v77[0] = v74;
    *v47 = 136380675;
    v78 = 0;
    v79 = 0xE000000000000000;

    sub_2413545EC();

    v78 = 0x203A656C746954;
    v79 = 0xE700000000000000;
    MEMORY[0x245CE20D0](v37, v38);
    v48 = v39;
    MEMORY[0x245CE20D0](0x6C7469746275530ALL, 0xEB00000000203A65);
    MEMORY[0x245CE20D0](v39, v40);
    MEMORY[0x245CE20D0](0x726169747265540ALL, 0xEB00000000203A79);
    MEMORY[0x245CE20D0](v75, v41);

    v49 = sub_2412DDC2C(v78, v79, v77);

    *(v47 + 4) = v49;
    v39 = v48;
    _os_log_impl(&dword_241215000, v43, v44, "Overriding checkout description with %{private}s", v47, 0xCu);
    v50 = v74;
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x245CE4870](v50, -1, -1);
    v51 = v47;
    v42 = v75;
    MEMORY[0x245CE4870](v51, -1, -1);
  }

  if (v27[2] < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v53 = v27[10];
    v52 = v27[11];

    v54 = sub_241308AE8(v53, v52);
    if ((v55 & 1) == 0)
    {
      v59 = v54;

      v60 = (v73 + *(type metadata accessor for ModelCustomizationOptions(0) + 32));
      sub_241246278(v60, &qword_27E538748);
      *v60 = v76;
      v60[1] = v38;
      v60[2] = v39;
      v60[3] = v40;
      v60[4] = v42;
      v60[5] = v41;
      v60[6] = v59;
      v61 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
LABEL_29:
      swift_storeEnumTagMultiPayload();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      return;
    }

    if ((v53 != 0x6D6F74737563 || v52 != 0xE600000000000000) && (sub_24135497C() & 1) == 0)
    {

      v66 = v39;
      v67 = (v73 + *(type metadata accessor for ModelCustomizationOptions(0) + 32));
      sub_241246278(v67, &qword_27E538748);
      *v67 = v76;
      v67[1] = v38;
      v67[2] = v66;
      v67[3] = v40;
      v67[4] = v42;
      v67[5] = v41;
      v67[6] = v53;
      v67[7] = v52;
      v68 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      return;
    }

    v56 = v71;
    sub_241306FB4(v27, v71);
    if (v72 < 6)
    {

      goto LABEL_27;
    }

    if (v27[2] >= 6uLL)
    {

      v57 = sub_24135486C();

      if (v57 < 3)
      {
        v58 = dbl_241369E20[v57];
LABEL_28:
        v62 = v73;
        v64 = v69;
        v63 = v70;
        v60 = (v62 + *(type metadata accessor for ModelCustomizationOptions(0) + 32));
        sub_241246278(v60, &qword_27E538748);
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539BF8) + 48);
        (*(v64 + 32))(v60, v56, v63);
        *(v60 + v65) = v58;
        v61 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
        goto LABEL_29;
      }

LABEL_27:
      v58 = 81.0;
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_241304BB8()
{
  v1 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ModelCustomizationOptions(0);
  sub_241246210(v0 + *(v8 + 32), v7, &qword_27E538748);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_241246278(v7, &qword_27E538748);
    return 0;
  }

  else
  {
    sub_2413083B8(v7, v4);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24130841C(v4);
        v9 = 4281411;
      }

      else
      {
        v11 = sub_24135152C();
        (*(*(v11 - 8) + 8))(v4, v11);
        v9 = 0x6D6F74737563;
      }
    }

    else
    {
      sub_24130841C(v4);
      v9 = 0x615020656C707041;
    }

    sub_24130841C(v7);
  }

  return v9;
}

uint64_t sub_241304DDC()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539D90);
  __swift_project_value_buffer(v0, qword_27E539D90);
  return sub_241352FEC();
}

uint64_t sub_241304E60()
{
  v1 = v0;
  sub_2413545EC();

  MEMORY[0x245CE20D0](*v1, v1[1]);
  MEMORY[0x245CE20D0](0x6C7469746275530ALL, 0xEB00000000203A65);
  MEMORY[0x245CE20D0](v1[2], v1[3]);
  MEMORY[0x245CE20D0](0x726169747265540ALL, 0xEB00000000203A79);
  MEMORY[0x245CE20D0](v1[4], v1[5]);
  return 0x203A656C746954;
}

uint64_t sub_241304F30(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24135497C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_24135497C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_24135497C();
}

uint64_t sub_241305030()
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748);
  MEMORY[0x28223BE20](v14);
  v13 = &v13 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2413545EC();
  MEMORY[0x245CE20D0](0xD000000000000016, 0x80000002413620B0);
  if (*v0)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*v0)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v5, v6);

  MEMORY[0x245CE20D0](0xD000000000000018, 0x80000002413620D0);
  if (v0[1])
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v0[1])
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v7, v8);

  MEMORY[0x245CE20D0](0xD000000000000017, 0x80000002413620F0);
  v9 = type metadata accessor for ModelCustomizationOptions(0);
  sub_241246210(&v0[*(v9 + 28)], v4, &qword_27E538750);
  v10 = sub_241353C7C();
  MEMORY[0x245CE20D0](v10);

  MEMORY[0x245CE20D0](0xD000000000000011, 0x8000000241362110);
  sub_241246210(&v0[*(v9 + 32)], v13, &qword_27E538748);
  v11 = sub_241353C7C();
  MEMORY[0x245CE20D0](v11);

  return v15;
}

uint64_t sub_241305294(uint64_t a1)
{
  v8[0] = sub_241353C0C();
  v8[1] = v2;
  sub_24135456C();
  if (*(a1 + 16) && (v3 = sub_2412FD8C4(v7), (v4 & 1) != 0))
  {
    sub_2412461A0(*(a1 + 56) + 32 * v3, v8);
    sub_2412AF728(v7);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_2412AF728(v7);
    return 2;
  }
}

uint64_t sub_24130535C(uint64_t a1)
{
  v7[0] = 0xD000000000000014;
  v7[1] = 0x800000024135D8B0;
  sub_24135456C();
  if (*(a1 + 16) && (v2 = sub_2412FD8C4(v6), (v3 & 1) != 0))
  {
    sub_2412461A0(*(a1 + 56) + 32 * v2, v7);
    sub_2412AF728(v6);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_2412AF728(v6);
    return 2;
  }
}

uint64_t sub_24130542C(uint64_t a1)
{
  v7[0] = 0xD000000000000013;
  v7[1] = 0x800000024135D8D0;
  sub_24135456C();
  if (*(a1 + 16) && (v2 = sub_2412FD8C4(v6), (v3 & 1) != 0))
  {
    sub_2412461A0(*(a1 + 56) + 32 * v2, v7);
    sub_2412AF728(v6);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_2412AF728(v6);
    return 2;
  }
}

uint64_t sub_2413054FC(uint64_t a1)
{
  v10 = sub_241353C0C();
  v11 = v2;
  sub_24135456C();
  if (!*(a1 + 16) || (v3 = sub_2412FD8C4(v12), (v4 & 1) == 0))
  {
    sub_2412AF728(v12);
    goto LABEL_11;
  }

  sub_2412461A0(*(a1 + 56) + 32 * v3, v13);
  sub_2412AF728(v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_241353C0C();
    goto LABEL_12;
  }

  v6 = sub_241353C0C();
  if (!v11)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (v10 == v6 && v11 == v5)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_24135497C();
  }

LABEL_13:

  return v8 & 1;
}

uint64_t sub_241305640(uint64_t a1, unint64_t a2)
{
  v4 = sub_24135122C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v69 = a2;
  if (sub_241353D5C())
  {
    v8 = sub_241353CEC();

    v9 = sub_241308478(v8, a1, a2);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = sub_241305AF4(v9, v11, v13, v15);

    return v16;
  }

  v62 = 38;
  v63 = 0xE100000000000000;
  sub_24125D5A0();
  v18 = sub_24135438C();
  v19 = v18;
  v20 = *(v18 + 16);
  if (!v20)
  {
    v23 = MEMORY[0x277D84F98];
    goto LABEL_30;
  }

  v58 = v7;
  v59 = v4;
  v21 = 0;
  v57 = (v5 + 8);
  v22 = v18 + 40;
  v55 = v20 - 1;
  v23 = MEMORY[0x277D84F98];
  v61 = v18;
  v56 = v18 + 40;
  while (2)
  {
    v60 = v23;
    v24 = (v22 + 16 * v21);
    v25 = v21;
    while (1)
    {
      if (v25 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v26 = *v24;
      v62 = *(v24 - 1);
      v63 = v26;
      v66 = 61;
      v67 = 0xE100000000000000;

      v27 = sub_24135438C();
      if (*(v27 + 16) >= 2uLL)
      {
        break;
      }

LABEL_7:
      ++v25;

      v24 += 2;
      if (v20 == v25)
      {
        v23 = v60;
        goto LABEL_30;
      }
    }

    v28 = v27 + 32;
    v29 = v27;

    v30 = sub_2413084C4();
    v31 = *(v29 + 16);
    v62 = v29;
    v63 = v28;
    v64 = v31 != 0;
    v65 = (2 * v31) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DC0);
    sub_241308EE4();
    v32 = sub_241353BAC();
    v34 = v33;

    if (v30 == 12)
    {
      goto LABEL_14;
    }

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {
LABEL_14:

      v19 = v61;
      goto LABEL_7;
    }

    v62 = v32;
    v63 = v34;
    v36 = v58;
    sub_24135121C();
    v37 = sub_24135439C();
    v39 = v38;
    (*v57)(v36, v59);

    v40 = v60;
    HIDWORD(v54) = swift_isUniquelyReferenced_nonNull_native();
    v62 = v40;
    v42 = sub_2412FDC70(v30);
    v43 = *(v40 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v46 = v41;
    if (*(v40 + 24) >= v45)
    {
      if ((v54 & 0x100000000) != 0)
      {
        v23 = v62;
        if ((v41 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_2412A871C();
        v23 = v62;
        if ((v46 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_2412A48E0(v45, SBYTE4(v54));
      v47 = sub_2412FDC70(v30);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_35;
      }

      v42 = v47;
      v23 = v62;
      if ((v46 & 1) == 0)
      {
LABEL_24:
        v23[(v42 >> 6) + 8] |= 1 << v42;
        *(v23[6] + v42) = v30;
        v50 = (v23[7] + 16 * v42);
        *v50 = v37;
        v50[1] = v39;
        v51 = v23[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (!v52)
        {
          v23[2] = v53;
          goto LABEL_26;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        result = sub_2413549DC();
        __break(1u);
        return result;
      }
    }

    v49 = (v23[7] + 16 * v42);
    *v49 = v37;
    v49[1] = v39;

LABEL_26:
    v19 = v61;
    v21 = v25 + 1;

    v22 = v56;
    if (v55 != v25)
    {
      continue;
    }

    break;
  }

LABEL_30:

  return v23;
}

uint64_t sub_241305AF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24135122C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  v78 = a2;
  v79 = a3;
  v80 = a4;
  if (sub_241307BB0(35, 0xE100000000000000, a1, a2))
  {
    if (a2 >> 14 < sub_24135433C() >> 14)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      result = sub_2413549DC();
      __break(1u);
    }

    else
    {

      v12 = sub_24135436C();
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = sub_241305AF4(v12, v14, v16, v18);

      return v19;
    }

    return result;
  }

  v71 = 38;
  v72 = 0xE100000000000000;
  sub_241308F48();
  v21 = sub_24125D5A0();
  v22 = sub_24135438C();
  v23 = v22;
  v24 = *(v22 + 16);
  if (!v24)
  {
    v27 = MEMORY[0x277D84F98];
    goto LABEL_31;
  }

  v66 = v11;
  v67 = v8;
  v25 = 0;
  v65 = (v9 + 8);
  v26 = v22 + 40;
  v63 = v24 - 1;
  v27 = MEMORY[0x277D84F98];
  v28 = MEMORY[0x277D837D0];
  v69 = v22;
  v70 = v21;
  v64 = v22 + 40;
  while (2)
  {
    v68 = v27;
    v29 = (v26 + 16 * v25);
    v30 = v25;
    while (1)
    {
      if (v30 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v31 = *v29;
      v71 = *(v29 - 1);
      v72 = v31;
      v75 = 61;
      v76 = 0xE100000000000000;

      v32 = sub_24135438C();
      if (*(v32 + 16) >= 2uLL)
      {
        break;
      }

LABEL_8:
      ++v30;

      v29 += 2;
      if (v24 == v30)
      {
        v27 = v68;
        goto LABEL_31;
      }
    }

    v33 = v28;
    v34 = v32 + 32;
    v35 = v32;

    v36 = sub_2413084C4();
    v37 = *(v35 + 16);
    v71 = v35;
    v72 = v34;
    v73 = v37 != 0;
    v74 = (2 * v37) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DC0);
    sub_241308EE4();
    v38 = sub_241353BAC();
    v40 = v39;

    if (v36 == 12)
    {
      goto LABEL_15;
    }

    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
LABEL_15:

      v28 = v33;
      v23 = v69;
      goto LABEL_8;
    }

    v71 = v38;
    v72 = v40;
    v42 = v66;
    sub_24135121C();
    v28 = v33;
    v61 = sub_24135439C();
    v62 = v43;
    (*v65)(v42, v67);

    v44 = v68;
    HIDWORD(v60) = swift_isUniquelyReferenced_nonNull_native();
    v71 = v44;
    v46 = sub_2412FDC70(v36);
    v47 = *(v44 + 16);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_35;
    }

    v50 = v45;
    if (*(v44 + 24) >= v49)
    {
      if ((v60 & 0x100000000) != 0)
      {
        v27 = v71;
        if ((v45 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_2412A871C();
        v27 = v71;
        if ((v50 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_2412A48E0(v49, SBYTE4(v60));
      v51 = sub_2412FDC70(v36);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_37;
      }

      v46 = v51;
      v27 = v71;
      if ((v50 & 1) == 0)
      {
LABEL_25:
        v27[(v46 >> 6) + 8] |= 1 << v46;
        *(v27[6] + v46) = v36;
        v55 = (v27[7] + 16 * v46);
        v56 = v62;
        *v55 = v61;
        v55[1] = v56;
        v57 = v27[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_36;
        }

        v27[2] = v59;
        goto LABEL_27;
      }
    }

    v53 = (v27[7] + 16 * v46);
    v54 = v62;
    *v53 = v61;
    v53[1] = v54;

LABEL_27:
    v23 = v69;
    v25 = v30 + 1;

    v26 = v64;
    if (v63 != v30)
    {
      continue;
    }

    break;
  }

LABEL_31:

  return v27;
}

unint64_t sub_241305FEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v73 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v66[-v6];
  v7 = sub_24135152C();
  v70 = *(v7 - 8);
  *&v71 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_241308510(a2, &v79);
  v9 = v79;
  v10 = v80;
  *&v72 = *(&v81 + 1);
  v11 = v81;
  v12 = v82;
  v74 = a1;
  v13 = sub_241308A04(a1);
  if (!*(&v9 + 1))
  {
LABEL_26:
    v28 = v74;
    if (*(*v74 + 16))
    {
      sub_2412FDC70(10);
      if (v53)
      {

        v54 = v69;
        sub_24135150C();

        v56 = v70;
        v55 = v71;
        if ((*(v70 + 48))(v54, 1, v71) != 1)
        {
          v59 = *(v56 + 32);
          v60 = v68;
          v59(v68, v54, v55);
          if (qword_27E537C50 != -1)
          {
            swift_once();
          }

          v61 = sub_241352FFC();
          __swift_project_value_buffer(v61, qword_27E539D90);
          v62 = sub_241352FDC();
          v63 = sub_2413540DC();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_241215000, v62, v63, "Returning custom banner style", v64, 2u);
            MEMORY[0x245CE4870](v64, -1, -1);
          }

          v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539BF8) + 48);
          v32 = v73;
          v59(v73, v60, v55);
          *(v32 + v65) = v13;
          v34 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
          goto LABEL_38;
        }

        sub_241246278(v54, &qword_27E538750);
      }
    }

    v57 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
    (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
LABEL_31:
    v52 = v28;
    return sub_241307A54(v52);
  }

  v86 = v9;
  v87 = v80;
  v88 = v81;
  v89 = v82;
  if (*(&v81 + 1))
  {
    if ((*(&v81 + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v81 + 1)) & 0xFLL : v88 & 0xFFFFFFFFFFFFLL)
    {
      v15 = *v74;
      if (*(*v74 + 16))
      {
        v90 = v9;
        v91 = v10;
        *&v92 = v11;
        *(&v92 + 1) = v72;
        v93 = v12;
        sub_241308EAC(&v90, &v75);
        v16 = sub_2412FDC70(7);
        if (v17)
        {
          v18 = (*(v15 + 56) + 16 * v16);
          v20 = *v18;
          v19 = v18[1];

          v21 = sub_241308AE8(v20, v19);
          v67 = v22;

          sub_241246278(&v79, &qword_27E539DB8);
          if ((v67 & 1) == 0)
          {
            if (qword_27E537C50 != -1)
            {
              swift_once();
            }

            v23 = v21;
            v24 = sub_241352FFC();
            __swift_project_value_buffer(v24, qword_27E539D90);
            v25 = sub_241352FDC();
            v26 = sub_2413540DC();
            v27 = os_log_type_enabled(v25, v26);
            v28 = v74;
            if (v27)
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&dword_241215000, v25, v26, "Returning Apple Pay style", v29, 2u);
              MEMORY[0x245CE4870](v29, -1, -1);
            }

            sub_241307628(&v75);
            v71 = v76;
            v72 = v75;
            v31 = *(&v77 + 1);
            v30 = v77;
            sub_241246278(&v79, &qword_27E539DB8);
            v32 = v73;
            v33 = v71;
            *v73 = v72;
            v32[1] = v33;
            v32[2] = __PAIR128__(v31, v30);
            *(v32 + 6) = v23;
            v34 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
LABEL_38:
            swift_storeEnumTagMultiPayload();
            (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
            goto LABEL_31;
          }
        }

        else
        {
          sub_241246278(&v79, &qword_27E539DB8);
        }
      }
    }
  }

  v75 = v9;
  v76 = v10;
  *&v77 = v11;
  *(&v77 + 1) = v72;
  v78 = v12;
  v90 = v9;
  v91 = v10;
  v92 = v77;
  v93 = v12;
  v35 = v74;
  v36 = *v74;
  if (!*(*v74 + 16) || (v37 = sub_2412FDC70(9), (v38 & 1) == 0) && (!*(v36 + 16) || (v37 = sub_2412FDC70(8), (v39 & 1) == 0)))
  {
    sub_241308E7C(&v75);
    goto LABEL_26;
  }

  v40 = (*(v36 + 56) + 16 * v37);
  v41 = *v40;
  v42 = v40[1];

  if (qword_27E537C50 != -1)
  {
    swift_once();
  }

  v43 = sub_241352FFC();
  __swift_project_value_buffer(v43, qword_27E539D90);
  v44 = sub_241352FDC();
  v45 = sub_2413540DC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_241215000, v44, v45, "Returning custom action style", v46, 2u);
    MEMORY[0x245CE4870](v46, -1, -1);
  }

  sub_241307628(v83);
  v71 = v83[1];
  v72 = v83[0];
  v47 = v84;
  v48 = v85;
  sub_241308E7C(&v75);
  v49 = v73;
  v50 = v71;
  *v73 = v72;
  v49[1] = v50;
  *(v49 + 4) = v47;
  *(v49 + 5) = v48;
  *(v49 + 6) = v41;
  *(v49 + 7) = v42;
  v51 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
  v52 = v35;
  return sub_241307A54(v52);
}

void sub_241306728(unsigned __int8 a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (a2 == 48 && a3 == 0xE100000000000000 || (sub_24135497C() & 1) != 0)
      {
        a4[1] = 0;
        if (qword_27E537C50 != -1)
        {
          swift_once();
        }

        v24 = sub_241352FFC();
        __swift_project_value_buffer(v24, qword_27E539D90);
        v27 = sub_241352FDC();
        v13 = sub_2413540DC();
        if (!os_log_type_enabled(v27, v13))
        {
          goto LABEL_33;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Setting allowPeopleOcclusion flag to false";
        goto LABEL_32;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_14;
      }

      if (a2 == 48 && a3 == 0xE100000000000000 || (sub_24135497C() & 1) != 0)
      {
        a4[2] = 0;
        if (qword_27E537C50 != -1)
        {
          swift_once();
        }

        v12 = sub_241352FFC();
        __swift_project_value_buffer(v12, qword_27E539D90);
        v27 = sub_241352FDC();
        v13 = sub_2413540DC();
        if (!os_log_type_enabled(v27, v13))
        {
          goto LABEL_33;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Setting allowSceneOcclusion flag to false";
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v28[0] = a2;
        v28[1] = a3;

        sub_241353D8C();
        sub_24135150C();

        v11 = type metadata accessor for ModelCustomizationOptions(0);
        sub_241255BC8(v10, &a4[*(v11 + 28)], &qword_27E538750);
        return;
      }

LABEL_14:
      if (qword_27E537C50 != -1)
      {
        swift_once();
      }

      v16 = sub_241352FFC();
      __swift_project_value_buffer(v16, qword_27E539D90);
      v27 = sub_241352FDC();
      v17 = sub_2413540DC();
      if (os_log_type_enabled(v27, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v28[0] = v19;
        *v18 = 136380675;
        v20 = sub_241306BFC(a1);
        v22 = sub_2412DDC2C(v20, v21, v28);

        *(v18 + 4) = v22;
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x245CE4870](v19, -1, -1);
        MEMORY[0x245CE4870](v18, -1, -1);

        return;
      }

      goto LABEL_33;
    }

    if (a2 == 48 && a3 == 0xE100000000000000 || (sub_24135497C() & 1) != 0)
    {
      *a4 = 0;
      if (qword_27E537C50 != -1)
      {
        swift_once();
      }

      v23 = sub_241352FFC();
      __swift_project_value_buffer(v23, qword_27E539D90);
      v27 = sub_241352FDC();
      v13 = sub_2413540DC();
      if (!os_log_type_enabled(v27, v13))
      {
        goto LABEL_33;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Setting allowContentScaling flag to false";
LABEL_32:
      _os_log_impl(&dword_241215000, v27, v13, v15, v14, 2u);
      MEMORY[0x245CE4870](v14, -1, -1);
LABEL_33:
      v25 = v27;
    }
  }
}

unint64_t sub_241306BFC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x63416D6F74737563;
    v6 = 0x6D6F74737563;
    if (a1 != 10)
    {
      v6 = 0x65486D6F74737563;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6563697270;
    v8 = 0xD000000000000012;
    if (a1 != 7)
    {
      v8 = 0x63416F546C6C6163;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x74756F6B63656863;
    if (a1 != 4)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 3)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000013;
    if (a1 != 1)
    {
      v2 = 0xD000000000000014;
    }

    if (a1)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 2u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_241306D9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_241306BFC(*a1);
  v5 = v4;
  if (v3 == sub_241306BFC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24135497C();
  }

  return v8 & 1;
}

uint64_t sub_241306E24()
{
  v1 = *v0;
  sub_241354ADC();
  sub_241306BFC(v1);
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_241306E88()
{
  sub_241306BFC(*v0);
  sub_241353CCC();
}

uint64_t sub_241306EDC()
{
  v1 = *v0;
  sub_241354ADC();
  sub_241306BFC(v1);
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_241306F3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2413084C4();
  *a1 = result;
  return result;
}

unint64_t sub_241306F6C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_241306BFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_241306FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = sub_24135152C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v52 = &v50 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  if (*(a1 + 16) < 5uLL)
  {
LABEL_4:
    sub_24135150C();
    result = (*(v11 + 48))(v7, 1, v10);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v23 = *(v11 + 32);
      v24 = v52;
      v23(v52, v7, v10);
      if (qword_27E537C50 != -1)
      {
        swift_once();
      }

      v25 = sub_241352FFC();
      __swift_project_value_buffer(v25, qword_27E539D90);
      (*(v11 + 16))(v14, v24, v10);
      v26 = sub_241352FDC();
      v27 = sub_2413540BC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v50 = v23;
        v30 = v29;
        v53 = v29;
        *v28 = 136380675;
        v31 = sub_24135140C();
        v51 = a2;
        v33 = v32;
        (*(v11 + 8))(v14, v10);
        v34 = sub_2412DDC2C(v31, v33, &v53);
        a2 = v51;

        *(v28 + 4) = v34;
        _os_log_impl(&dword_241215000, v26, v27, "Unable to create custom url. Returning a url with:%{private}s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        v35 = v30;
        v23 = v50;
        MEMORY[0x245CE4870](v35, -1, -1);
        v36 = v28;
        v24 = v52;
        MEMORY[0x245CE4870](v36, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v14, v10);
      }

      return (v23)(a2, v24, v10);
    }

    return result;
  }

  v51 = a2;

  sub_24135150C();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_241246278(v9, &qword_27E538750);
    a2 = v51;
    goto LABEL_4;
  }

  v37 = *(v11 + 32);
  v37(v21, v9, v10);
  if (qword_27E537C50 != -1)
  {
    swift_once();
  }

  v38 = sub_241352FFC();
  __swift_project_value_buffer(v38, qword_27E539D90);
  (*(v11 + 16))(v19, v21, v10);
  v39 = v10;
  v40 = sub_241352FDC();
  v41 = sub_2413540AC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v52 = v37;
    v43 = v42;
    v50 = swift_slowAlloc();
    v53 = v50;
    *v43 = 136380675;
    v44 = sub_24135140C();
    v46 = v45;
    (*(v11 + 8))(v19, v39);
    v47 = sub_2412DDC2C(v44, v46, &v53);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_241215000, v40, v41, "custom url:%{private}s", v43, 0xCu);
    v48 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245CE4870](v48, -1, -1);
    v49 = v43;
    v37 = v52;
    MEMORY[0x245CE4870](v49, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v19, v39);
  }

  return (v37)(v51, v21, v39);
}

uint64_t sub_24130758C()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 32);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v7 = *(v0 + 16);
    v8 = v7;
    sub_2412C19CC(&v8, &v6);
    MEMORY[0x245CE20D0](8236, 0xE200000000000000);
    MEMORY[0x245CE20D0](v2, v1);
    return v7;
  }

  else
  {
LABEL_6:
    v4 = *(v0 + 16);
  }

  return v4;
}

uint64_t sub_241307628@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[5];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v1[4];
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v14 = *(v1 + 1);
    v15 = v14;

    sub_2412C19CC(&v15, &v13);
    MEMORY[0x245CE20D0](8236, 0xE200000000000000);
    MEMORY[0x245CE20D0](v7, v6);
    v9 = *(&v14 + 1);
    v10 = v14;
  }

  else
  {
LABEL_6:
    v10 = v1[2];
    v9 = v1[3];
  }

  v11 = v2[6];

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v10;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = result;
  return result;
}

uint64_t sub_2413076FC()
{
  v1 = v0;
  sub_2413545EC();

  MEMORY[0x245CE20D0](*v1, v1[1]);
  MEMORY[0x245CE20D0](0x6C7469746275530ALL, 0xEB00000000203A65);
  v2 = sub_24130758C();
  MEMORY[0x245CE20D0](v2);

  MEMORY[0x245CE20D0](0x726169747265540ALL, 0xEB00000000203A79);
  MEMORY[0x245CE20D0](v1[6], v1[7]);
  return 0x203A656C746954;
}

uint64_t sub_2413077DC(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24135497C() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_24135497C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_24135497C() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_12:
  if (v13 == v10 && v14 == v11)
  {
    return 1;
  }

  return sub_24135497C();
}

uint64_t sub_241307930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_241353C0C();
  sub_24135456C();
  if (*(a1 + 16) && (v4 = sub_2412FD8C4(v10), (v5 & 1) != 0))
  {
    sub_2412461A0(*(a1 + 56) + 32 * v4, v11);
    sub_2412AF728(v10);
    v6 = sub_24135152C();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_2412AF728(v10);
    v9 = sub_24135152C();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

unint64_t sub_241307A54(uint64_t *a1)
{
  v3 = 7;
  sub_241307B10(&v3, a1);
  v3 = 9;
  sub_241307B10(&v3, a1);
  v3 = 8;
  sub_241307B10(&v3, a1);
  v3 = 10;
  sub_241307B10(&v3, a1);
  v3 = 11;
  return sub_241307B10(&v3, a1);
}

unint64_t sub_241307B10(unsigned __int8 *a1, uint64_t *a2)
{
  result = sub_2412FDC70(*a1);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a2;
    v8 = *a2;
    *a2 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2412A871C();
      v7 = v8;
    }

    sub_2413396A8(v5, v7);
    *a2 = v7;
  }

  return result;
}

uint64_t sub_241307BB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v10 = sub_24135435C();
      v12 = v11;
      v13 = sub_24135433C();
      v14 = sub_241353D3C();
      if (!v15)
      {
        break;
      }

      if (v10 == v14 && v15 == v12)
      {
      }

      else
      {
        v9 = sub_24135497C();

        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v13 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_241353D3C();
    v7 = v6;

    if (v7)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_241307D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v74 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v74 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DA8);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v74 + *(v19 + 56) - v18);
  v21 = a1;
  v22 = &v74 - v18;
  sub_2413083B8(v21, &v74 - v18);
  sub_2413083B8(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v79 = v22;
    sub_2413083B8(v22, v16);
    v47 = *v16;
    v46 = v16[1];
    v48 = v16[2];
    v49 = v16[3];
    v51 = v16[4];
    v50 = v16[5];
    v52 = v16[6];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_26:

      v22 = v79;
LABEL_28:
      sub_241246278(v22, &qword_27E539DA8);
      return 0;
    }

    v76 = v52;
    v61 = *v20;
    v62 = v20[1];
    v64 = v20[2];
    v63 = v20[3];
    v66 = v20[4];
    v65 = v20[5];
    v77 = v20[6];
    v78 = v62;
    v67 = v47 == v61 && v46 == v62;
    v68 = v63;
    if (v67 || (v69 = sub_24135497C(), v63 = v68, (v69)) && (v48 == v64 ? (v70 = v49 == v63) : (v70 = 0), v70 || (sub_24135497C()))
    {
      if (v51 == v66 && v50 == v65)
      {

LABEL_59:
        v58 = v76 == v77;
        v59 = v79;
        goto LABEL_60;
      }

      v72 = sub_24135497C();

      if (v72)
      {
        goto LABEL_59;
      }
    }

    else
    {
    }

    sub_24130841C(v79);
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v79 = v22;
    sub_2413083B8(v22, v13);
    v25 = *v13;
    v24 = v13[1];
    v26 = v13[2];
    v27 = v13[3];
    v28 = v13[4];
    v29 = v13[5];
    v30 = v13[6];
    v31 = v13[7];
    v77 = v30;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v76 = v31;
      v32 = *v20;
      v33 = v20[1];
      v35 = v20[2];
      v34 = v20[3];
      v37 = v20[4];
      v36 = v20[5];
      v38 = v20[7];
      v74 = v20[6];
      v75 = v38;
      v78 = v33;
      v39 = v25 == v32 && v24 == v33;
      v40 = v34;
      if (v39 || (v41 = sub_24135497C(), v34 = v40, (v41)) && (v26 == v35 ? (v42 = v27 == v34) : (v42 = 0), v42 || (sub_24135497C()))
      {
        if (v28 == v37 && v29 == v36)
        {

          v45 = v79;
          goto LABEL_53;
        }

        v44 = sub_24135497C();

        v45 = v79;
        if (v44)
        {
LABEL_53:
          if (v77 == v74 && v76 == v75)
          {

LABEL_57:
            sub_24130841C(v45);
            return 1;
          }

          v73 = sub_24135497C();

          if (v73)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        }
      }

      else
      {

        v45 = v79;
      }

LABEL_49:
      sub_24130841C(v45);
      return 0;
    }

    goto LABEL_26;
  }

  sub_2413083B8(v22, v10);
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539BF8) + 48);
  v54 = *&v10[v53];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_28;
  }

  v55 = *(v20 + v53);
  (*(v5 + 32))(v7, v20, v4);
  v56 = sub_24135148C();
  v57 = *(v5 + 8);
  v57(v7, v4);
  v57(v10, v4);
  if ((v56 & 1) == 0)
  {
    sub_24130841C(v22);
    return 0;
  }

  v58 = v54 == v55;
  v59 = v22;
LABEL_60:
  sub_24130841C(v59);
  return v58;
}

uint64_t sub_2413083B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24130841C(uint64_t a1)
{
  v2 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_241308478(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_241353D9C();
  }

  __break(1u);
  return result;
}

uint64_t sub_2413084C4()
{
  v0 = sub_24135486C();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_241308510@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_24135152C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2412A2AE8(4);
  v11 = v10;
  v12 = sub_2412A2AE8(5);
  v14 = v13;
  v15 = sub_2412A2AE8(6);
  v17 = v16;
  if (!v11)
  {
    goto LABEL_15;
  }

  v18 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v18 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_15:

    goto LABEL_16;
  }

  v19 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v19 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
LABEL_12:

    goto LABEL_15;
  }

  v20 = v15;
  if ((sub_2413054FC(a1) & 1) == 0)
  {

    goto LABEL_15;
  }

  sub_241307930(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    result = sub_241246278(v5, &qword_27E538750);
LABEL_16:
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    goto LABEL_17;
  }

  (*(v7 + 32))(v43, v5, v6);
  v27 = sub_2413514CC();
  if (!v28)
  {

    if (qword_27E537C50 != -1)
    {
      swift_once();
    }

    v38 = sub_241352FFC();
    __swift_project_value_buffer(v38, qword_27E539D90);
    v39 = sub_241352FDC();
    v40 = sub_2413540BC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_241215000, v39, v40, "webpageURL.host is nil", v41, 2u);
      MEMORY[0x245CE4870](v41, -1, -1);
    }

    result = (*(v7 + 8))(v43, v6);
    goto LABEL_16;
  }

  *&v47 = v9;
  *(&v47 + 1) = v11;
  *&v48 = v12;
  *(&v48 + 1) = v14;
  *&v49 = v20;
  *(&v49 + 1) = v17;
  *&v50 = v27;
  *(&v50 + 1) = v28;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  if (qword_27E537C50 != -1)
  {
    swift_once();
  }

  v29 = sub_241352FFC();
  __swift_project_value_buffer(v29, qword_27E539D90);
  sub_241308EAC(&v47, v46);
  v30 = sub_241352FDC();
  v31 = sub_2413540DC();
  sub_241308E7C(&v47);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v45 = v33;
    *v32 = 136380675;
    sub_241308EAC(&v47, v46);
    v34 = sub_2413076FC();
    v36 = v35;
    sub_241308E7C(&v47);
    v37 = sub_2412DDC2C(v34, v36, &v45);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_241215000, v30, v31, "[Banner] Parsed description: \n%{private}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x245CE4870](v33, -1, -1);
    MEMORY[0x245CE4870](v32, -1, -1);
  }

  result = (*(v7 + 8))(v43, v6);
  v22 = v47;
  v23 = v48;
  v24 = v49;
  v25 = v50;
LABEL_17:
  v26 = v44;
  *v44 = v22;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;
  return result;
}

double sub_241308A04(uint64_t *a1)
{
  v2 = sub_2412FDC70(11);
  if ((v3 & 1) == 0)
  {
    return 81.0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  v9 = *a1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2412A871C();
    v6 = v9;
  }

  sub_2413396A8(v4, v6);
  *a1 = v6;
  sub_241353C8C();

  v7 = sub_24135486C();

  if (v7 < 3)
  {
    return dbl_241369E20[v7];
  }

  else
  {
    return 81.0;
  }
}

uint64_t sub_241308AE8(uint64_t a1, unint64_t a2)
{
  v3 = a1 == 0x6E69616C70 && a2 == 0xE500000000000000;
  if (v3 || (sub_24135497C() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 7959906 && a2 == 0xE300000000000000 || (sub_24135497C() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 7954800 && a2 == 0xE300000000000000 || (sub_24135497C() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x6574616E6F64 && a2 == 0xE600000000000000 || (sub_24135497C() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x756F2D6B63656863 && a2 == 0xE900000000000074 || (sub_24135497C() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 1802465122 && a2 == 0xE400000000000000 || (sub_24135497C() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065 || (sub_24135497C() & 1) != 0)
  {
    return 7;
  }

  if (qword_27E537C50 != -1)
  {
    swift_once();
  }

  v6 = sub_241352FFC();
  __swift_project_value_buffer(v6, qword_27E539D90);

  v7 = sub_241352FDC();
  v8 = sub_2413540DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2412DDC2C(a1, a2, &v11);
    _os_log_impl(&dword_241215000, v7, v8, "Unsupported payment type of '%s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CE4870](v10, -1, -1);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  return 0;
}

unint64_t sub_241308E28()
{
  result = qword_27E539DB0;
  if (!qword_27E539DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539DB0);
  }

  return result;
}

unint64_t sub_241308EE4()
{
  result = qword_27E539DC8;
  if (!qword_27E539DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539DC8);
  }

  return result;
}

unint64_t sub_241308F48()
{
  result = qword_27E539DD0;
  if (!qword_27E539DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539DD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelCustomizationOptions.FragmentKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelCustomizationOptions.FragmentKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241309100()
{
  result = qword_27E539DD8;
  if (!qword_27E539DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539DD8);
  }

  return result;
}

uint64_t VariantViewModel.__allocating_init(variants:)(uint64_t a1)
{
  v2 = swift_allocObject();
  VariantViewModel.init(variants:)(a1);
  return v2;
}

uint64_t sub_241309198()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  return v1;
}

uint64_t sub_24130920C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_241309294()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24135317C();
}

uint64_t sub_241309318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  return v1;
}

uint64_t sub_241309390()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24135317C();
}

void (*sub_241309414(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24135315C();
  return sub_2413094B8;
}

void sub_2413094B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_241309520()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DE8);
  sub_24135313C();
  return swift_endAccess();
}

uint64_t sub_241309598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DE8);
  sub_24135314C();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_24130971C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DE8);
  sub_24135313C();
  return swift_endAccess();
}

uint64_t sub_241309790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DF0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DE8);
  sub_24135314C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2413098C8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DF0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11AssetViewer16VariantViewModel__maxBarWidth;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DE8);
  sub_24135313C();
  swift_endAccess();
  return sub_241309A38;
}

void sub_241309A38(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_24135314C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_24135314C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t VariantViewModel.init(variants:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC11AssetViewer16VariantViewModel__variants;
  v14 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539E08);
  sub_24135312C();
  (*(v8 + 32))(v1 + v11, v10, v7);
  *(v1 + OBJC_IVAR____TtC11AssetViewer16VariantViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC11AssetViewer16VariantViewModel__maxBarWidth;
  v14 = 0;
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539E10);
  sub_24135312C();
  (*(v4 + 32))(v1 + v12, v6, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;

  sub_24135317C();
  return v1;
}

uint64_t sub_241309DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  v6[10] = swift_task_alloc();
  v6[11] = sub_241353ECC();
  v6[12] = sub_241353EBC();
  v8 = sub_241353E8C();

  return MEMORY[0x2822009F8](sub_241309EC4, v8, v7);
}

uint64_t sub_241309EC4()
{
  v5 = v0[7];
  v6 = v0[8];

  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_24135316C();

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v0[6];
  v9 = v0[8];
  if (*(v8 + 16) <= v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = (v8 + 24 * v9);
  v4 = v10[4];
  v5 = v10[5];
  KeyPath = v10[6];

  v8 = *(KeyPath + 16);
  if (!v8)
  {
    goto LABEL_8;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    if (v8 > *(KeyPath + 16))
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = 48;
    do
    {
      *(KeyPath + v13) = v12 == v0[9];
      v13 += 24;
      ++v12;
    }

    while (v8 != v12);
LABEL_8:
    v8 = (v0 + 2);
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = sub_24135315C();
    v3 = v14;
    v2 = *v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_17:
      v2 = sub_24130AF98(v2);
      *v3 = v2;
    }

    v16 = v0[8];
    if (*(v2 + 2) > v16)
    {
      break;
    }

    __break(1u);
LABEL_19:
    result = sub_24130AF84(KeyPath);
    KeyPath = result;
  }

  v17 = &v2[24 * v16];
  *(v17 + 4) = v4;
  *(v17 + 5) = v5;
  *(v17 + 6) = KeyPath;

  v1(v8, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = v0[10];
    v21 = sub_24130A740();
    v22 = sub_241353EEC();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    v23 = v19;
    v24 = sub_241353EBC();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v23;
    v25[5] = v21;
    sub_241327238(0, 0, v20, &unk_241369F80, v25);
    swift_unknownObjectRelease();
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_24130A1E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  v1 = v29;
  v27 = *(v29 + 16);
  if (v27)
  {
    v2 = 0;
    v26 = MEMORY[0x277D84F90];
    while (1)
    {
LABEL_3:
      if (v2 >= *(v1 + 16))
      {
LABEL_26:
        __break(1u);
        return result;
      }

      v3 = (v29 + 32 + 24 * v2);
      v4 = *v3;
      v5 = v3[1];
      v6 = v3[2];
      ++v2;
      v7 = *(v6 + 16);

      v8 = 0;
      v9 = MEMORY[0x277D84F90];
LABEL_5:
      v10 = 24 * v8;
      while (v7 != v8)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        ++v8;
        v11 = v10 + 24;
        v12 = *(v6 + v10 + 48);
        v10 += 24;
        if (v12)
        {
          v28 = v2;
          v13 = *(v6 + v11 + 8);
          v14 = *(v6 + v11 + 16);

          result = swift_isUniquelyReferenced_nonNull_native();
          v15 = v4;
          if ((result & 1) == 0)
          {
            result = sub_2412A212C(0, v9[2] + 1, 1, v9);
            v9 = result;
          }

          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            result = sub_2412A212C((v16 > 1), v17 + 1, 1, v9);
            v9 = result;
          }

          v9[2] = v17 + 1;
          v18 = &v9[4 * v17];
          v4 = v15;
          v18[4] = v15;
          v18[5] = v5;
          v18[6] = v13;
          v18[7] = v14;
          v1 = v29;
          v2 = v28;
          goto LABEL_5;
        }
      }

      if (!v9[2])
      {
        break;
      }

      v19 = v9[4];
      v20 = v9[5];
      v22 = v9[6];
      v21 = v9[7];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2412A212C(0, v26[2] + 1, 1, v26);
        v26 = result;
      }

      v24 = v26[2];
      v23 = v26[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_2412A212C((v23 > 1), v24 + 1, 1, v26);
        v26 = result;
      }

      v26[2] = v24 + 1;
      v25 = &v26[4 * v24];
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v22;
      v25[7] = v21;
      v1 = v29;
      if (v2 == v27)
      {
        goto LABEL_24;
      }
    }

    if (v2 != v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

LABEL_24:

  return v26;
}

uint64_t sub_24130A4AC()
{
  v0 = sub_24130A1E0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    v2 = v0;
    sub_2412DE1D4(0, v1, 0);
    result = v2;
    v4 = 0;
    v5 = v2 + 56;
    while (v4 < *(result + 16))
    {

      v6 = sub_241353BDC();
      v7 = sub_241353BDC();
      v8 = sub_241353BDC();
      v9 = [v6 stringByReplacingOccurrencesOfString:v7 withString:v8];

      v10 = sub_241353C0C();
      v12 = v11;

      v24 = v10;
      v25 = v12;
      MEMORY[0x245CE20D0](8250, 0xE200000000000000);
      v13 = sub_241353BDC();
      v14 = sub_241353BDC();
      v15 = sub_241353BDC();
      v16 = [v13 stringByReplacingOccurrencesOfString:v14 withString:v15];

      v17 = sub_241353C0C();
      v19 = v18;

      MEMORY[0x245CE20D0](v17, v19);

      v21 = *(v26 + 16);
      v20 = *(v26 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2412DE1D4((v20 > 1), v21 + 1, 1);
      }

      ++v4;
      *(v26 + 16) = v21 + 1;
      v22 = v26 + 16 * v21;
      *(v22 + 32) = v24;
      *(v22 + 40) = v25;
      v5 += 32;
      result = v2;
      if (v1 == v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
    sub_2412ED730();
    v23 = sub_241353BAC();

    return v23;
  }

  return result;
}

uint64_t sub_24130A740()
{
  v0 = sub_24130A1E0();
  v1 = sub_241244E30(MEMORY[0x277D84F90]);
  v25 = *(v0 + 16);
  if (!v25)
  {
LABEL_16:

    return v1;
  }

  v2 = 0;
  v3 = (v0 + 56);
  while (v2 < *(v0 + 16))
  {
    v7 = *(v3 - 3);
    v6 = *(v3 - 2);
    v9 = *(v3 - 1);
    v8 = *v3;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_2412FDA14(v7, v6);
    v13 = v1[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v1[3] < v16)
    {
      sub_2412A52B8(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_2412FDA14(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v11;
    sub_2412A8BCC();
    v11 = v23;
    if (v17)
    {
LABEL_3:
      v4 = v11;

      v5 = (v1[7] + 16 * v4);
      *v5 = v9;
      v5[1] = v8;

      goto LABEL_4;
    }

LABEL_12:
    v1[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v1[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v1[7] + 16 * v11);
    *v20 = v9;
    v20[1] = v8;

    v21 = v1[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v1[2] = v22;
LABEL_4:
    ++v2;
    v3 += 4;
    if (v25 == v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_2413549DC();
  __break(1u);
  return result;
}

uint64_t VariantViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11AssetViewer16VariantViewModel__variants;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24124B00C(v0 + OBJC_IVAR____TtC11AssetViewer16VariantViewModel_delegate);
  v3 = OBJC_IVAR____TtC11AssetViewer16VariantViewModel__maxBarWidth;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DE8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t VariantViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AssetViewer16VariantViewModel__variants;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24124B00C(v0 + OBJC_IVAR____TtC11AssetViewer16VariantViewModel_delegate);
  v3 = OBJC_IVAR____TtC11AssetViewer16VariantViewModel__maxBarWidth;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539DE8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_24130AB14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VariantViewModel();
  result = sub_2413530DC();
  *a1 = result;
  return result;
}

uint64_t sub_24130AB54@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  *a1 = v3;
  return result;
}

uint64_t sub_24130ABD4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24135317C();
}

uint64_t type metadata accessor for VariantViewModel()
{
  result = qword_27E539E18;
  if (!qword_27E539E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24130ACA4()
{
  sub_24130AECC(319, &qword_27E539E28, &qword_27E539E08);
  if (v0 <= 0x3F)
  {
    sub_24130AECC(319, &unk_27E539E30, &qword_27E539E10);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24130AECC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_24135318C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24130AF20(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2413544EC();
  }

  return sub_24135461C();
}

uint64_t sub_24130AFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2412450EC;

  return sub_24129C3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_24130B070()
{

  MEMORY[0x245CE4980](v0 + 32);

  return swift_deallocClassInstance();
}

void sub_24130B0DC(unint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
LABEL_36:
    v4 = sub_2413544EC();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  swift_beginAccess();
  v6 = 0;
  v7 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v39 = isUniquelyReferenced_nonNull_native;
  v40 = v2;
  v37 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v38 = v4;
  while (1)
  {
    if (v5)
    {
      v8 = MEMORY[0x245CE29C0](v6, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_34;
      }

      v8 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = *(v2 + 40);
      if (*(v11 + 16))
      {
        break;
      }
    }

LABEL_5:
    ++v6;
    if (v10 == v4)
    {
      return;
    }
  }

  v12 = sub_2412FDB24(v9);
  if ((v13 & 1) == 0)
  {

    goto LABEL_5;
  }

  v14 = *(*(v11 + 56) + v12);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v16 = Strong;
  [v9 transform];
  *&v17 = COERCE_DOUBLE(sub_24135294C());
  if ((v19 & 1) == 0)
  {
    v2 = v7;
    v21 = *&v17;
    v22 = v18;
    [v16 bounds];
    v41.x = v21;
    v41.y = v22;
    v20 = CGRectContainsPoint(v42, v41);

    isUniquelyReferenced_nonNull_native = v39;
    if (v14 != v20)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_17:
  v2 = v7;
  if ((v14 & 1) == 0)
  {
LABEL_25:

    v7 = v2;
    v2 = v40;
    goto LABEL_5;
  }

  v20 = 0;
LABEL_21:
  swift_beginAccess();
  v23 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v40 + 40);
  *(v40 + 40) = 0x8000000000000000;
  v25 = sub_2412FDB24(v23);
  v27 = v24[2];
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    goto LABEL_35;
  }

  v31 = v26;
  if (v24[3] >= v30)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = v25;
      sub_2412A8FB4();
      v25 = v36;
    }
  }

  else
  {
    sub_2412A5938(v30, isUniquelyReferenced_nonNull_native);
    v25 = sub_2412FDB24(v23);
    if ((v31 & 1) != (v32 & 1))
    {
      goto LABEL_39;
    }
  }

  v2 = v40;
  if (v31)
  {
    *(v24[7] + v25) = v20;

    v4 = v38;
LABEL_32:
    *(v40 + 40) = v24;
    swift_endAccess();
    v35 = *(v40 + 16);

    v35(v23, v20);

    isUniquelyReferenced_nonNull_native = v39;
    v7 = v37;
    goto LABEL_5;
  }

  v24[(v25 >> 6) + 8] |= 1 << v25;
  *(v24[6] + 8 * v25) = v23;
  *(v24[7] + v25) = v20;
  v33 = v24[2];
  v29 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  v4 = v38;
  if (!v29)
  {
    v24[2] = v34;
    goto LABEL_32;
  }

  __break(1u);
LABEL_39:
  sub_24130BB90();
  sub_2413549DC();
  __break(1u);
}

void sub_24130B438(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_31:
    v4 = sub_2413544EC();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = v3 & 0xC000000000000001;
  swift_beginAccess();
  v6 = 0;
  v38 = v3 & 0xC000000000000001;
  v39 = v3 & 0xFFFFFFFFFFFFFF8;
  v35 = v4;
  v36 = v3;
  v34 = v2;
  while (1)
  {
    if (v5)
    {
      v7 = MEMORY[0x245CE29C0](v6, v3);
    }

    else
    {
      if (v6 >= *(v39 + 16))
      {
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v10 = swift_dynamicCastObjCProtocolConditional();
    if (v10)
    {
      v11 = v2[5];
      if (*(v11 + 16))
      {
        break;
      }
    }

LABEL_6:

    ++v6;
    if (v9 == v4)
    {
      return;
    }
  }

  v12 = v10;
  v13 = v8;

  v14 = sub_2412FDB24(v13);
  if ((v15 & 1) == 0)
  {

LABEL_5:

    goto LABEL_6;
  }

  v16 = *(*(v11 + 56) + v14);

  v17 = v16 == [v12 isTracked];
  v5 = v38;
  if (v17)
  {
    goto LABEL_5;
  }

  v18 = v13;
  v37 = [v12 isTracked];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v2[5];
  v2[5] = 0x8000000000000000;
  v2 = v18;
  v3 = sub_2412FDB24(v18);
  v22 = v20[2];
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    goto LABEL_30;
  }

  v25 = v21;
  if (v20[3] >= v24)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_2412A8FB4();
      if ((v25 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_23:
    *(v20[7] + v3) = v37;

LABEL_27:
    v34[5] = v20;
    swift_endAccess();
    v31 = v34[2];

    v32 = [v12 isTracked];
    v33 = v2;
    v2 = v34;
    v31(v33, v32);

    v4 = v35;
    v3 = v36;
    v5 = v38;
    goto LABEL_5;
  }

  sub_2412A5938(v24, isUniquelyReferenced_nonNull_native);
  v26 = sub_2412FDB24(v2);
  if ((v25 & 1) != (v27 & 1))
  {
    goto LABEL_34;
  }

  v3 = v26;
  if (v25)
  {
    goto LABEL_23;
  }

LABEL_25:
  v20[(v3 >> 6) + 8] |= 1 << v3;
  *(v20[6] + 8 * v3) = v2;
  *(v20[7] + v3) = v37;
  v28 = v20[2];
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    v20[2] = v30;
    goto LABEL_27;
  }

  __break(1u);
LABEL_34:
  sub_24130BB90();
  sub_2413549DC();
  __break(1u);
}

void sub_24130B750(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2413544EC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245CE29C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            goto LABEL_23;
          }
        }
      }

      v9 = i;
      swift_beginAccess();
      v10 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      v13 = sub_2412FDB24(v10);
      v15 = v12[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_26;
      }

      v19 = v14;
      if (v12[3] < v18)
      {
        sub_2412A5938(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_2412FDB24(v10);
        if ((v19 & 1) != (v20 & 1))
        {
          sub_24130BB90();
          sub_2413549DC();
          __break(1u);
          return;
        }

LABEL_17:
        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v21 = v13;
      sub_2412A8FB4();
      v13 = v21;
      if ((v19 & 1) == 0)
      {
LABEL_20:
        v12[(v13 >> 6) + 8] |= 1 << v13;
        *(v12[6] + 8 * v13) = v10;
        *(v12[7] + v13) = 1;
        v22 = v12[2];
        v17 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v17)
        {
          goto LABEL_27;
        }

        v12[2] = v23;
        goto LABEL_22;
      }

LABEL_18:
      *(v12[7] + v13) = 1;

LABEL_22:
      *(v2 + 40) = v12;
      swift_endAccess();
      v24 = *(v2 + 16);

      v24(v10, 1);

      i = v9;
LABEL_23:

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }
}

void sub_24130B9E0(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_2413544EC();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245CE29C0](i, a1);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      if (*(*(v2 + 40) + 16))
      {

        sub_2412FDB24(v8);
        v10 = v9;

        if (v10)
        {
          swift_beginAccess();
          v11 = v8;
          v12 = sub_2412FDB24(v11);
          if (v13)
          {
            v14 = v12;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v16 = *(v2 + 40);
            *(v2 + 40) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_2412A8FB4();
            }

            sub_241339EBC(v14, v16);
            *(v2 + 40) = v16;
          }

          else
          {
          }

          swift_endAccess();
          v6 = *(v2 + 16);

          v6(v11, 0);
        }
      }
    }
  }
}