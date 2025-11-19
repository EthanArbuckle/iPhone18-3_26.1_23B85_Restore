id sub_2412907AC()
{
  if ([objc_opt_self() forceDisableRealWorldOcclusion])
  {
    v1 = 0;
  }

  else
  {
    result = [objc_opt_self() supportsSceneReconstruction];
    v3 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) - 3;
    if (v3 < 3)
    {
      v1 = result;
    }

    else
    {
      v1 = 0;
    }

    if ((result & 1) == 0 && v3 <= 2)
    {
      v4 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v1 = *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene);
    }
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v5 = sub_241352FFC();
  __swift_project_value_buffer(v5, qword_27E53A538);
  v6 = sub_241352FDC();
  v7 = sub_2413540DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v1;
    _os_log_impl(&dword_241215000, v6, v7, "shouldEnableRealWorldOcclusion: %{BOOL}d", v8, 8u);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  return v1;
}

BOOL sub_241290920()
{
  if ([objc_opt_self() supportsSceneReconstruction])
  {
    v1 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) - 2 < 4;
  }

  else
  {
    v1 = 0;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_241215000, v3, v4, "shouldEnableRealWorldCollision: %{BOOL}d", v5, 8u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  return v1;
}

void sub_241290A48()
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_241352FFC();
  __swift_project_value_buffer(v0, qword_27E53A538);
  v1 = sub_241352FDC();
  v2 = sub_2413540DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_241215000, v1, v2, "Dispatched after anchoring", v3, 2u);
    MEMORY[0x245CE4870](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] - 3 < 3 && (v5 = *&Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController]) != 0 && (v6 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView)) != 0)
    {
      v7 = Strong;
      v8 = v6;
      sub_24135292C();
      sub_2413524EC();

      sub_24135243C();
      swift_dynamicCastClassUnconditional();
      sub_2413523DC();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_241290C40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v51 - v2;
  *&v57 = sub_241352B6C();
  v4 = *(v57 - 8);
  v5 = MEMORY[0x28223BE20](v57);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_241287420(v5);
  v9 = v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode];

  if (v9 == 1)
  {
    return;
  }

  *&v58 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v10 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v10)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v11 = *(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v11)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (*(v11 + qword_27E53A1C8) == 3)
  {
    return;
  }

  *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) = 2;
  [v0 updateInterfaceState];
  v12 = *(v0 + v58);
  if (!v12)
  {
    goto LABEL_61;
  }

  v52 = v3;
  v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v13 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    v56 = v0;
    if (i)
    {
      v15 = 0;
      v55 = v13 & 0xC000000000000001;
      v54 = v13 & 0xFFFFFFFFFFFFFF8;
      v53 = (v4 + 1);
      while (1)
      {
        if (v55)
        {
          v16 = MEMORY[0x245CE29C0](v15, v13);
        }

        else
        {
          if (v15 >= *(v54 + 16))
          {
            goto LABEL_51;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v19 = *(v0 + v58);
        if (!v19)
        {
          break;
        }

        v20 = *(v19 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v20)
        {
          goto LABEL_57;
        }

        v21 = v20;
        sub_24135292C();
        v4 = sub_2413524BC();

        if (!v4)
        {
          goto LABEL_58;
        }

        sub_241352C5C();

        sub_2413518AC();
        sub_241352B5C();

        (*v53)(v7, v57);
        sub_241247C18(0, 0, 0, 0.35);
        if (qword_27E537C48 != -1)
        {
          swift_once();
        }

        v22 = *algn_27E541870;
        v23 = xmmword_27E541880;
        v24 = &v17[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode];
        *v24 = xmmword_27E541860;
        *(v24 + 1) = v22;
        *(v24 + 2) = v23;

        ++v15;
        v0 = v56;
        if (v18 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_22:

    *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) = 0;
    sub_24128A758();
    v25 = sub_241351DEC();
    v26 = v52;
    (*(*(v25 - 8) + 56))(v52, 1, 1, v25);
    v27 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
    swift_beginAccess();
    sub_241255BC8(v26, v0 + v27, &qword_27E538940);
    swift_endAccess();
    v28 = *(v0 + v58);
    if (!v28)
    {
      goto LABEL_62;
    }

    v0 = *(v28 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v29 = v0 >> 62 ? sub_2413544EC() : *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v29)
    {
      break;
    }

    v30 = 0;
    v13 = &OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x245CE29C0](v30, v0);
      }

      else
      {
        if (v30 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v31 = *(v0 + 8 * v30 + 32);
      }

      v7 = v31;
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v4 = &v31[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
      sub_24133B1DC(*&v31[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager], *&v31[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8]);
      sub_24133AFBC(*v4, v4[1]);

      ++v30;
      if (v32 == v29)
      {
        goto LABEL_34;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_34:

  v33 = [objc_opt_self() triggerAffordanceShouldReshowAfterArReset];
  v34 = v56;
  if (v33)
  {
    v35 = OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState;
    swift_beginAccess();
    *(v34 + v35) = MEMORY[0x277D84F98];
  }

  v36 = *(v34 + v58);
  if (!v36)
  {
    goto LABEL_63;
  }

  if (*(*(v36 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState) == 1)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v37 = sub_241352FFC();
    __swift_project_value_buffer(v37, qword_27E53A538);
    v38 = sub_241352FDC();
    v39 = sub_2413540DC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_241215000, v38, v39, "[Animation] Stop animation and audio, and seek to beginning inside stageBackToHologram() since showing scrubber", v40, 2u);
      MEMORY[0x245CE4870](v40, -1, -1);
    }

    v41 = v56;
    sub_241337AB8(0, 1);
    if (!*(v41 + v58))
    {
      goto LABEL_65;
    }

    sub_241349784(0.0);

    v42 = *(*(v41 + OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController) + OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView);
    v43 = &v42[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
    v44 = v42[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing];
    *&v45 = *&v42[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8];
    v57 = v45;
    *&v45 = *&v42[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24];
    v58 = v45;
    v46 = v42;
    Current = CFAbsoluteTimeGetCurrent();
    v60[0] = v44;
    v48 = v57;
    *&v49.f64[0] = v58;
    *&v60[8] = v57;
    *&v60[24] = v58;
    v61 = Current;
    *&v59[32] = *(v43 + 4);
    v50 = *(v43 + 1);
    *v59 = *v43;
    *&v59[16] = v50;
    *(v43 + 1) = *&v60[16];
    *v43 = *v60;
    *(v43 + 4) = v61;
    v49.f64[1] = Current;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v48, *&v59[8]), vceqq_f64(v49, *&v59[24])))) & 1) == 0 || ((v44 ^ v59[0]))
    {
      sub_241283228(v59, v60);
    }

    v34 = v56;
  }

  sub_24128987C(10, 0);
  if (!*(v34 + OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy))
  {
    goto LABEL_64;
  }

  sub_241256170();

  sub_2412C7010(1.0);
}

id sub_241291418()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0 selector:sel_activateCoachingView object:0];
  v4 = sub_241289004();
  [v4 setActive:0 animated:0];

  v5 = (v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  v6 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_2412186FC(v6);
  v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer;
  v8 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer);
  if (v8)
  {
    [v8 invalidate];
    v9 = *(v0 + v7);
  }

  else
  {
    v9 = 0;
  }

  *(v0 + v7) = 0;

  v10 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel);

  return [v10 setHidden:1 animated:0];
}

void sub_241291524()
{
  v1 = v0;
  v2 = sub_2413538CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2413538FC();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_241352B6C();
  v6 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2413517DC();
  v9 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_241352DDC();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setFullScreen_];
  sub_241291418();
  v0[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 1;
  [v0 updateInterfaceState];
  v87 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v13 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v13)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*(v13 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
  {
    v62 = v3;
    v63 = v2;
    v14 = dispatch_group_create();
    v15 = *&v0[v87];
    if (!v15)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = v14;
    v17 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v17 >> 62)
    {
LABEL_28:
      v60 = v17;
      v61 = sub_2413544EC();
      v17 = v60;
      v18 = v61;
      if (v61)
      {
LABEL_6:
        v84 = OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld;
        v85 = v17 & 0xC000000000000001;
        v71 = v17 & 0xFFFFFFFFFFFFFF8;
        v75 = (v11 + 8);
        v68 = v9 + 1;
        v81 = (v6 + 8);
        v19 = v17;

        v20 = v19;
        v11 = 0;
        v82 = v18;
        v83 = v19;
        while (1)
        {
          if (v85)
          {
            v21 = MEMORY[0x245CE29C0](v11);
          }

          else
          {
            if (v11 >= *(v71 + 16))
            {
              goto LABEL_27;
            }

            v21 = *(v20 + 8 * v11 + 32);
          }

          v9 = v21;
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          if (v1[v84] == 1)
          {
            sub_241352E1C();
            v79 = v24;
            v80 = v23;
            v78 = v25;
            sub_241352C5C();
            sub_24135195C();
            v26 = v76;
            sub_241352E2C();
            type metadata accessor for RESRT(0);
            sub_241352DCC();
            (*v75)(v26, v77);
            v27 = v90;
            v28 = v91;
            v29 = v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode;
            *v29 = aBlock;
            *(v29 + 1) = v27;
            *(v29 + 2) = v28;
            if (*(v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI) == 1)
            {
              sub_241352E1C();
              sub_24135195C();
              *&v32 = sub_2412AC428(v31, v30);
              v79 = v33;
              v80 = v32;
              v78 = v34;
              v72 = v35;
              v36 = v69;
              sub_24135296C();
              sub_2413516FC();
              (*v68)(v36, v70);
              REEntityComputeTightMeshBounds();
              HIDWORD(v37) = HIDWORD(v73);
              HIDWORD(v38) = HIDWORD(v74);
              v74 = v38;
              v73 = v37;
            }

            else
            {
              sub_24135191C();
            }

            sub_24135174C();
            v39 = v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox;
            *v39 = v40;
            *(v39 + 1) = v41;
          }

          v42 = *&v1[v87];
          if (!v42)
          {
            break;
          }

          v43 = *(v42 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
          if (!v43)
          {
            goto LABEL_32;
          }

          v44 = v1;
          v45 = v43;
          sub_24135292C();
          v46 = sub_2413524BC();

          if (!v46)
          {
            __break(1u);
            break;
          }

          sub_241352C5C();

          sub_2413518AC();
          sub_241352B5C();

          (*v81)(v8, v86);
          dispatch_group_enter(v16);
          v6 = swift_allocObject();
          *(v6 + 16) = v16;
          v47 = v16;
          sub_241247C18(0, sub_2412B36D8, v6, 0.35);

          ++v11;
          v20 = v83;
          v1 = v44;
          if (v22 == v82)
          {

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_6;
      }
    }

LABEL_22:
    dispatch_group_enter(v16);
    v48 = *&v1[v87];
    if (!v48)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v49 = *(v48 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v49)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v50 = swift_allocObject();
    *(v50 + 16) = v16;
    v51 = v16;
    v52 = v49;
    sub_241247C18(0, sub_2412B3430, v50, 0.35);

    v53 = OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld;
    v1[OBJC_IVAR___ASVPreviewViewControllerInternal_hasPlacedModelInWorldAlready] = v1[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld];
    v1[v53] = 0;
    sub_24128A758();
    sub_241246158(0, &qword_27E538920);
    v54 = sub_24135416C();
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v91 = sub_2412B3438;
    *(&v91 + 1) = v55;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v90 = sub_2412D5698;
    *(&v90 + 1) = &block_descriptor_101;
    v56 = _Block_copy(&aBlock);

    v57 = v64;
    sub_2413538DC();
    v88 = MEMORY[0x277D84F90];
    sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
    sub_24123D370(&qword_27E539880, &unk_27E538930);
    v58 = v66;
    v59 = v63;
    sub_24135444C();
    sub_24135412C();
    _Block_release(v56);

    (*(v62 + 8))(v58, v59);
    (*(v65 + 8))(v57, v67);
  }
}

void sub_241291F60()
{
  v18 = sub_241352B6C();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v22 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v5 = *(Strong + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v5)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v6 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v6 >> 62)
    {
LABEL_25:
      v7 = sub_2413544EC();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = 0;
      v20 = v6 & 0xFFFFFFFFFFFFFF8;
      v21 = v6 & 0xC000000000000001;
      v9 = (v0 + 8);
      v19 = v4;
      while (1)
      {
        if (v21)
        {
          v11 = MEMORY[0x245CE29C0](v8, v6);
        }

        else
        {
          if (v8 >= *(v20 + 16))
          {
            goto LABEL_24;
          }

          v11 = *(v6 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v14 = *&v4[v22];
        if (!v14)
        {
          break;
        }

        v15 = *(v14 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene);
        v16 = *(v14 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v15)
        {
          v17 = &qword_27E53A1A8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v17 = &qword_27E53A1A0;
          if (!v16)
          {
            goto LABEL_27;
          }
        }

        if (*(v16 + *v17))
        {
          sub_241352C5C();

          sub_2413518AC();
          sub_241352B5C();

          (*v9)(v2, v18);
        }

        else
        {
          sub_241352C5C();
          sub_2413518BC();
        }

        v0 = *&v12[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];

        sub_24133D85C(v10);

        ++v8;
        v4 = v19;
        if (v13 == v7)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_21:

    sub_24129225C();
  }
}

void sub_24129225C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  if ((v0[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] & 1) == 0)
  {
    v0[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] = 1;
    v4 = sub_241353EEC();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_241353ECC();
    v5 = v0;
    v6 = sub_241353EBC();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;
    sub_241327238(0, 0, v3, &unk_2413674E0, v7);

    v9 = *&v5[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
    if (v9)
    {
      if (*(*(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 1) == 1)
      {
        sub_241337AB8(1, 1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2412923E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v2 - 8);
  v177 = &v173 - v3;
  v4 = sub_241351DEC();
  v178 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v176 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v175 = &v173 - v7;
  v8 = sub_241351B7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v191 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v173 - v12;
  v193 = sub_241352B6C();
  v14 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24135256C();
  MEMORY[0x28223BE20](v16);
  v19 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v20 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v20)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (!*(v20 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
  {
    return;
  }

  v173 = v4;
  v21 = *(v20 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v21)
  {
    goto LABEL_189;
  }

  (*(v17 + 104))(v19, *MEMORY[0x277CDB590]);
  v22 = v21;
  sub_24135258C();

  v23 = *(v1 + v199);
  if (!v23)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v24 = *(v23 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene);
  v198 = v1;
  if (v24 != 1)
  {
    v47 = *(v23 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v47)
    {
      v48 = v47;
      v49 = sub_2412907AC();
      sub_241321910(v49 & 1);

      v50 = *(v1 + v199);
      if (v50)
      {
        v27 = *(v50 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
        if (v27 >> 62)
        {
          goto LABEL_165;
        }

        v51 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_29;
      }

      goto LABEL_194;
    }

    goto LABEL_192;
  }

  *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) = 3;
  [v1 updateInterfaceState];
  v25 = *(v1 + v199);
  if (!v25)
  {
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v26 = *(v25 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v26)
  {
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v27 = v26;
  sub_24131BD4C();

  v28 = *(v1 + v199);
  if (!v28)
  {
    goto LABEL_195;
  }

  v8 = *(v28 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v8 >> 62)
  {
    v29 = sub_2413544EC();
    if (!v29)
    {
      return;
    }
  }

  else
  {
    v29 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      return;
    }
  }

  v197.i64[0] = v8 & 0xC000000000000001;
  v191 = (v8 & 0xFFFFFFFFFFFFFF8);
  v194.i64[0] = v14 + 8;

  v14 = 0;
  v196 = xmmword_241365D00;
  v195 = xmmword_241367070;
  while (1)
  {
    if (v197.i64[0])
    {
      v33 = MEMORY[0x245CE29C0](v14, v8);
    }

    else
    {
      if (v14 >= *(v191 + 2))
      {
        goto LABEL_160;
      }

      v33 = *(v8 + 8 * v14 + 32);
    }

    v34 = v33;
    v35 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v36 = *&v33[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
    if (v36)
    {
      [v36 setEnabledGestureTypes_];
    }

    v37 = OBJC_IVAR____TtC11AssetViewer16EntityController_entity;

    sub_241352C5C();
    v9 = MEMORY[0x277CDB1B8];
    v38 = sub_2413519AC();
    *(v39 + 32) = 0;
    *(v39 + 40) = 0;
    v38(&v200, 0);

    v40 = sub_2413519AC();
    v41[1] = v196;
    v40(&v200, 0);

    v42 = sub_2413519AC();
    *v43 = v195;
    v42(&v200, 0);

    v44 = *(v198 + v199);
    if (!v44)
    {
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v45 = *(v44 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v45)
    {
      goto LABEL_177;
    }

    v46 = *&v34[v37];
    v13 = *(v45 + qword_27E53A1A0);
    if (v13)
    {

      v9 = v29;
      v30 = v8;
      v31 = v192;
      sub_2413518AC();
      v27 = v31;
      sub_241352B5C();

      v32 = v31;
      v8 = v30;
      v29 = v9;
      (*v194.i64[0])(v32, v193);
    }

    else
    {
      v27 = v46;
      sub_2413518BC();
    }

    ++v14;
    if (v35 == v29)
    {
LABEL_44:

      return;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v51 = sub_2413544EC();
LABEL_29:
    v174 = v14;

    if (v51)
    {
      v14 = 0;
      v189 = v27 & 0xFFFFFFFFFFFFFF8;
      v190 = v27 & 0xC000000000000001;
      v179 = "ewer16EntityController,N,R";
      v185 = *MEMORY[0x277CDAC80];
      v184 = (v9 + 104);
      v183 = (v9 + 16);
      *&v52 = 136315138;
      v181 = v52;
      v182 = (v9 + 8);
      v180 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v9 = v191;
      v188 = v13;
      v187 = v27;
      v186 = v51;
      do
      {
        if (v190)
        {
          v57 = MEMORY[0x245CE29C0](v14, v27);
        }

        else
        {
          if (v14 >= *(v189 + 16))
          {
            goto LABEL_155;
          }

          v57 = *(v27 + 8 * v14 + 32);
        }

        v58 = v57;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_154;
        }

        v59 = *&v57[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8];
        v194.i64[0] = *&v57[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
        v195.i64[0] = v59;
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v60 = sub_241352FFC();
        __swift_project_value_buffer(v60, qword_27E53A538);
        v61 = sub_241352FDC();
        v62 = sub_2413540DC();
        v63 = os_log_type_enabled(v61, v62);
        v197.i64[0] = v58;
        v196.i64[0] = v14 + 1;
        if (v63)
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v200 = v65;
          *v64 = v181;
          *(v64 + 4) = sub_2412DDC2C(0xD000000000000014, v179 | 0x8000000000000000, &v200);
          _os_log_impl(&dword_241215000, v61, v62, "PhysicsStateManager: %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          v66 = v65;
          v13 = v188;
          MEMORY[0x245CE4870](v66, -1, -1);
          MEMORY[0x245CE4870](v64, -1, -1);
        }

        (*v184)(v13, v185, v8);
        (*v183)(v9, v13, v8);
        v67 = sub_241352FDC();
        v68 = sub_2413540DC();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v200 = v70;
          *v69 = v181;
          sub_2412B3164(&qword_27E538948, MEMORY[0x277CDAC88]);
          v71 = sub_24135491C();
          v72 = v8;
          v74 = v73;
          v53 = *v182;
          (*v182)(v191, v72);
          v75 = sub_2412DDC2C(v71, v74, &v200);
          v8 = v72;
          v9 = v191;

          *(v69 + 4) = v75;
          _os_log_impl(&dword_241215000, v67, v68, "PhysicsStateManager: setPhysicsBodyModeAll(mode:%s)", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v70);
          v76 = v70;
          v13 = v188;
          MEMORY[0x245CE4870](v76, -1, -1);
          MEMORY[0x245CE4870](v69, -1, -1);
        }

        else
        {

          v53 = *v182;
          v54 = (*v182)(v9, v8);
        }

        v27 = v187;
        v55 = v186;
        MEMORY[0x28223BE20](v54);
        v56 = v195.i64[0];
        *(&v173 - 4) = v194.i64[0];
        *(&v173 - 3) = v56;
        *(&v173 - 2) = v13;
        sub_2412875B4(sub_2412B31E0, (&v173 - 6), v56);
        v53(v13, v8);

        ++v14;
      }

      while (v196.i64[0] != v55);
    }

    v77 = v198;
    if (*(v198 + OBJC_IVAR___ASVPreviewViewControllerInternal_hasPlacedModelInWorldAlready) != 1)
    {
      break;
    }

    v78 = *(v198 + v199);
    v27 = v174;
    if (!v78)
    {
      goto LABEL_198;
    }

    v79 = *(v78 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v79 >> 62)
    {
      v8 = sub_2413544EC();
    }

    else
    {
      v8 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v191 = 0;

    if (v8)
    {
      v9 = 0;
      v197.i64[0] = v79 & 0xC000000000000001;
      v196.i64[0] = v79 & 0xFFFFFFFFFFFFFF8;
      v14 = v27 + 8;
      do
      {
        if (v197.i64[0])
        {
          v80 = MEMORY[0x245CE29C0](v9, v79);
        }

        else
        {
          if (v9 >= *(v196.i64[0] + 16))
          {
            goto LABEL_158;
          }

          v80 = *(v79 + 8 * v9 + 32);
        }

        v81 = v80;
        v82 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_156;
        }

        v83 = *(v198 + v199);
        if (!v83)
        {
          goto LABEL_178;
        }

        v84 = *(v83 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v84)
        {
          goto LABEL_180;
        }

        v85 = v84;
        sub_24135292C();
        v86 = sub_2413524BC();

        if (!v86)
        {
          goto LABEL_182;
        }

        sub_241352C5C();

        v13 = v192;
        sub_2413518AC();
        v27 = v13;
        sub_241352B5C();

        (*v14)(v13, v193);

        ++v9;
      }

      while (v82 != v8);
    }

    v103 = v198;
    v104 = *(v198 + v199);
    if (!v104)
    {
      goto LABEL_200;
    }

    v105 = *(v104 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v105)
    {
      goto LABEL_202;
    }

    v106 = [v105 session];
    v107 = [v106 currentFrame];

    if (v107)
    {
      v108 = [v107 camera];

      v109 = [objc_opt_self() mainScreen];
      v110 = [v109 currentOrientation];

      v111 = v198;
      [v108 viewMatrixForOrientation_];
      v196 = v113;
      v197 = v112;
      v194 = v115;
      v195 = v114;

      v201.columns[1] = v196;
      v201.columns[0] = v197;
      v201.columns[3] = v194;
      v201.columns[2] = v195;
      v202 = __invert_f4(v201);
      v196 = v202.columns[1];
      v197 = v202.columns[0];
      v194 = v202.columns[3];
      v195 = v202.columns[2];
    }

    else
    {
      v122 = *(v103 + v199);
      if (!v122)
      {
        goto LABEL_207;
      }

      v123 = *(v122 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v123)
      {
        goto LABEL_208;
      }

      v124 = v123;
      sub_24135292C();
      v125 = sub_2413524BC();

      if (!v125)
      {
        goto LABEL_209;
      }

      sub_241352C5C();
      sub_24135193C();
      v196 = v127;
      v197 = v126;
      v194 = v129;
      v195 = v128;

      v111 = v198;
    }

    v130 = *(v111 + v199);
    if (!v130)
    {
      goto LABEL_203;
    }

    v131 = *(v130 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v131)
    {
      goto LABEL_204;
    }

    v132 = v131;
    sub_24135292C();
    v27 = sub_2413524BC();

    if (!v27)
    {
      goto LABEL_205;
    }

    v197.i64[0] = sub_241352C5C();
    sub_2413518CC();

    v133 = *(v198 + v199);
    if (!v133)
    {
      goto LABEL_206;
    }

    v134 = *(v133 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v134 >> 62)
    {
      v14 = sub_2413544EC();
    }

    else
    {
      v14 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v14)
    {
LABEL_113:

      sub_241290C40();
      return;
    }

    v9 = 0;
    v8 = v134 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v134 & 0xC000000000000001) != 0)
      {
        v135 = MEMORY[0x245CE29C0](v9, v134);
      }

      else
      {
        if (v9 >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_162;
        }

        v135 = *(v134 + 8 * v9 + 32);
      }

      v27 = v135;
      v136 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v137 = *(v198 + v199);
      if (!v137)
      {
        goto LABEL_185;
      }

      v138 = *(v137 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v138)
      {
        goto LABEL_184;
      }

      v139 = v138;
      v140 = sub_241247664(v139);

      if (v140)
      {

        v27 = v198;
        *(v198 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) = 1;
        sub_24128A758();
        v142 = sub_241287420(v141);
        [v142 startAutoHideControlsTimer];

        *(v27 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) = 3;
        [v27 updateInterfaceState];
        v143 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
        swift_beginAccess();
        v144 = v27 + v143;
        v145 = v177;
        sub_241246210(v144, v177, &qword_27E538940);
        v146 = v178;
        v147 = v173;
        if ((*(v178 + 48))(v145, 1, v173) == 1)
        {
          sub_241246278(v145, &qword_27E538940);
        }

        else
        {
          v148 = *(v146 + 32);
          v149 = v175;
          v148(v175, v145, v147);
          v8 = v176;
          v148(v176, v149, v147);
          v150 = (*(v146 + 88))(v8, v147);
          LODWORD(v148) = *MEMORY[0x277CDAD60];
          (*(v146 + 8))(v8, v147);
          if (v150 == v148 || v150 == *MEMORY[0x277CDAD88])
          {
            v162 = *(v27 + v199);
            if (!v162)
            {
              goto LABEL_211;
            }

            v77 = *(v162 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
            if (v77 >> 62)
            {
              v163 = sub_2413544EC();
            }

            else
            {
              v163 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v163)
            {
LABEL_151:

              sub_24123E374(v172);
              return;
            }

            v87 = 0;
            v196.i64[0] = v77 & 0xC000000000000001;
            v195.i64[0] = v77 & 0xFFFFFFFFFFFFFF8;
            v164 = (v174 + 8);
            while (1)
            {
              if (v196.i64[0])
              {
                v166 = MEMORY[0x245CE29C0](v87, v77);
              }

              else
              {
                if (v87 >= *(v195.i64[0] + 16))
                {
                  goto LABEL_169;
                }

                v166 = *(v77 + 8 * v87 + 32);
              }

              v167 = v166;
              v168 = v87 + 1;
              if (__OFADD__(v87, 1))
              {
                break;
              }

              sub_241352E3C();
              sub_2413519CC();

              v169 = *(v198 + v199);
              if (!v169)
              {
                goto LABEL_196;
              }

              v170 = *(v169 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
              if (!v170)
              {
                goto LABEL_197;
              }

              v13 = *(v170 + qword_27E53A1A0);
              if (v13)
              {

                v171 = v192;
                sub_2413518AC();
                sub_241352B5C();

                (*v164)(v171, v193);
              }

              else
              {
                sub_2413518BC();
              }

              sub_24133D85C(v165);

              ++v87;
              if (v168 == v163)
              {
                goto LABEL_151;
              }
            }

            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }
        }

        v151 = *(v27 + v199);
        if (!v151)
        {
          goto LABEL_210;
        }

        v152 = *(v151 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
        if (v152 >> 62)
        {
          v9 = sub_2413544EC();
        }

        else
        {
          v9 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v9)
        {
          v14 = 0;
          v196.i64[0] = v152 & 0xC000000000000001;
          v195.i64[0] = v152 & 0xFFFFFFFFFFFFFF8;
          v153 = (v174 + 8);
          while (1)
          {
            if (v196.i64[0])
            {
              v157 = MEMORY[0x245CE29C0](v14, v152);
            }

            else
            {
              if (v14 >= *(v195.i64[0] + 16))
              {
                goto LABEL_164;
              }

              v157 = *(v152 + 8 * v14 + 32);
            }

            v158 = v157;
            v159 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_163;
            }

            v160 = *(v198 + v199);
            if (!v160)
            {
              goto LABEL_187;
            }

            v161 = *(v160 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
            if (!v161)
            {
              goto LABEL_188;
            }

            v13 = *(v161 + qword_27E53A1A0);
            if (v13)
            {

              v8 = v192;
              sub_2413518AC();
              sub_241352B5C();

              (*v153)(v8, v193);
            }

            else
            {
              sub_2413518BC();
            }

            v154 = swift_allocObject();
            v155 = v198;
            *(v154 + 16) = v198;
            *(v154 + 24) = v158;
            v156 = v155;
            v27 = v158;
            sub_2412487A8(sub_2412B3200, v154);

            ++v14;
            if (v159 == v9)
            {
              goto LABEL_44;
            }
          }
        }

        goto LABEL_44;
      }

      ++v9;
      if (v136 == v14)
      {
        goto LABEL_113;
      }
    }
  }

  v87 = v174;
  if (qword_27E537CD0 != -1)
  {
LABEL_170:
    swift_once();
  }

  v88 = sub_241352FFC();
  v89 = __swift_project_value_buffer(v88, qword_27E53A538);
  v90 = sub_241352FDC();
  v91 = sub_2413540AC();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_241215000, v90, v91, "In arHologram mode", v92, 2u);
    v93 = v92;
    v87 = v174;
    v77 = v198;
    MEMORY[0x245CE4870](v93, -1, -1);
  }

  v27 = v77 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState;
  *(v77 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) = 2;
  [v77 updateInterfaceState];
  v94 = *(v77 + v199);
  if (v94)
  {
    v95 = *(v94 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v195.i64[0] = v89;
    v194.i64[0] = v27;
    if (v95 >> 62)
    {
      v8 = sub_2413544EC();
    }

    else
    {
      v8 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      v9 = 0;
      v197.i64[0] = v95 & 0xC000000000000001;
      v196.i64[0] = v95 & 0xFFFFFFFFFFFFFF8;
      v14 = v87 + 8;
      do
      {
        if (v197.i64[0])
        {
          v96 = MEMORY[0x245CE29C0](v9, v95);
        }

        else
        {
          if (v9 >= *(v196.i64[0] + 16))
          {
            goto LABEL_159;
          }

          v96 = *(v95 + 8 * v9 + 32);
        }

        v97 = v96;
        v98 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_157;
        }

        v99 = *(v198 + v199);
        if (!v99)
        {
          goto LABEL_179;
        }

        v100 = *(v99 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v100)
        {
          goto LABEL_181;
        }

        v101 = v100;
        sub_24135292C();
        v102 = sub_2413524BC();

        if (!v102)
        {
          goto LABEL_183;
        }

        sub_241352C5C();

        v13 = v192;
        sub_2413518AC();
        sub_241352B5C();

        (*v14)(v13, v193);
        v27 = v97;
        sub_241247C18(0, 0, 0, 0.35);

        ++v9;
      }

      while (v98 != v8);
    }

    if ([objc_opt_self() wantsParentToCameraInARAndEnableProbes])
    {
      v116 = sub_241352FDC();
      v117 = sub_2413540AC();
      v118 = os_log_type_enabled(v116, v117);
      v119 = v198;
      if (v118)
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_241215000, v116, v117, "Parenting to camera for debug", v120, 2u);
        MEMORY[0x245CE4870](v120, -1, -1);
      }

      *(v194.i64[0] + 8) = 3;
      [v119 updateInterfaceState];
    }

    else
    {
      v119 = v198;
      sub_2412C7010(0.1);
      sub_24134FB68();
    }

    v121 = *(v119 + v199);
    if (v121)
    {
      if (*(*(v121 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState) == 1)
      {
        sub_241337AB8(0, 1);
      }

      return;
    }

    goto LABEL_201;
  }

LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
}

uint64_t sub_241293D94(uint64_t a1, char *a2)
{
  sub_24123E374(a1);
  sub_24130EE30(a2);
  v3 = *&a2[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8];

  return sub_24133D85C(v3);
}

uint64_t sub_241293DE8(__n128 a1, __n128 a2)
{
  v3 = v2;
  v74 = a2;
  v75 = a1;
  v4 = sub_2413517BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2413517DC();
  v8 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v11 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v11)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v12 = *(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v12)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v13 = v12;
  sub_24135292C();
  v14 = sub_2413524BC();

  if (!v14)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  sub_24135296C();
  sub_2413516FC();

  v79 = *(v8 + 8);
  v80 = v8 + 8;
  v79(v10, v81);
  v15 = *(v2 + v82);
  if (!v15)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v16)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v78 = v83[0];
  v17 = v16;
  sub_24135257C();
  sub_241351C8C();
  sub_2413516FC();

  v18 = *(v5 + 8);
  v5 += 8;
  v18(v7, v4);
  ServiceLocator = REEngineGetServiceLocator();
  if (!MEMORY[0x245CE3AB0](ServiceLocator))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v20 = [v2 view];
  if (!v20)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21 = v20;
  v5 = &selRef_addConstraints_;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v84.origin.x = v23;
  v84.origin.y = v25;
  v84.size.width = v27;
  v84.size.height = v29;
  *&v30 = CGRectGetWidth(v84);
  v73 = v30;
  v31 = [v2 view];
  if (!v31)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v32 = v31;
  [v31 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v85.origin.x = v34;
  v85.origin.y = v36;
  v85.size.width = v38;
  v85.size.height = v40;
  *&v41 = CGRectGetHeight(v85);
  v42 = *(v2 + v82);
  if (!v42)
  {
LABEL_74:
    __break(1u);

    __break(1u);
    return result;
  }

  v72 = v41;
  v43 = *(v42 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  v83[0] = MEMORY[0x277D84F90];
  if (v43 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    v45 = MEMORY[0x277D84F90];
    if (i)
    {
      v71 = v3;
      v46 = 0;
      v3 = &OBJC_IVAR____TtC11AssetViewer16EntityController_entity;
      v76 = v10;
      while (1)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x245CE29C0](v46, v43);
        }

        else
        {
          if (v46 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v47 = *(v43 + 8 * v46 + 32);
        }

        v48 = v47;
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        sub_24135296C();
        sub_2413516FC();
        v79(v10, v81);
        if (RECheckEntityInsideCustomMatrixCameraFrustumOneViewOneEyeWithScreenPosition())
        {
          sub_24135464C();
          sub_24135467C();
          v10 = v76;
          sub_24135468C();
          sub_24135465C();
        }

        else
        {
        }

        ++v46;
        if (v49 == i)
        {
          v10 = v83[0];
          v3 = v71;
          v45 = MEMORY[0x277D84F90];
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_25:

    v83[0] = sub_2412AAF20(v50);
    sub_2412A9528(v83);
    v5 = v83[0];
    v83[0] = v45;
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      v51 = *(v5 + 16);
      if (!v51)
      {
        break;
      }

      goto LABEL_28;
    }

    v51 = sub_2413544EC();
    if (!v51)
    {
      break;
    }

LABEL_28:
    v52 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x245CE29C0](v52, v5);
      }

      else
      {
        if (v52 >= *(v5 + 16))
        {
          goto LABEL_55;
        }

        v53 = *(v5 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      v56 = *(v3 + v82);
      if (!v56)
      {
        goto LABEL_64;
      }

      v57 = *(v56 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v57)
      {
        goto LABEL_65;
      }

      v43 = v57;
      v58 = sub_241247664(v43);

      if (v58)
      {
        sub_24135464C();
        v43 = *(v83[0] + 16);
        sub_24135467C();
        sub_24135468C();
        sub_24135465C();
      }

      else
      {
      }

      ++v52;
      if (v55 == v51)
      {
        v45 = v83[0];
        goto LABEL_41;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_41:

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v59 = sub_241352FFC();
  __swift_project_value_buffer(v59, qword_27E53A538);

  v60 = sub_241352FDC();
  v5 = sub_2413540DC();

  if (os_log_type_enabled(v60, v5))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v83[0] = v62;
    *v61 = 136315138;
    v63 = type metadata accessor for EntityController();
    v64 = MEMORY[0x245CE21F0](v45, v63);
    v66 = sub_2412DDC2C(v64, v65, v83);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_241215000, v60, v5, "Filtered HitTestResult: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x245CE4870](v62, -1, -1);
    MEMORY[0x245CE4870](v61, -1, -1);
  }

  if (v45 < 0 || (v45 & 0x4000000000000000) != 0)
  {
    if (!sub_2413544EC())
    {
      goto LABEL_60;
    }

LABEL_48:
    if ((v45 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x245CE29C0](0, v45);
      goto LABEL_51;
    }

    if (*(v45 + 16))
    {
      v67 = *(v45 + 32);
LABEL_51:
      v68 = v67;

      return v68;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (*(v45 + 16))
  {
    goto LABEL_48;
  }

LABEL_60:

  return 0;
}

uint64_t sub_2412945E4()
{
  sub_241352C5C();
  sub_24135191C();
  sub_24135176C();
  v11 = v0;
  sub_24135176C();
  v10 = v1;
  sub_24135176C();
  v9 = v2;
  sub_24135191C();
  sub_24135176C();
  v8 = v3;
  sub_24135176C();
  v7 = v4;
  sub_24135176C();
  *v5.i8 = vmul_f32(vmul_f32(vzip1_s32(v11, v8), vzip2_s32(v10, v7)), vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v5, v5, 8uLL)));
  return *&vcgt_f32(vdup_lane_s32(*v5.i8, 1), *v5.i8) & 1;
}

void sub_24129471C(float64_t a1, float64_t a2)
{
  v33 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_2413544EC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v7.f64[0] = a1;
    v7.f64[1] = a2;
    v8 = vcvt_f32_f64(v7);
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245CE29C0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = *(v34 + v33);
      if (!v12)
      {
        break;
      }

      v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v13)
      {
        goto LABEL_27;
      }

      sub_241352C5C();
      v14 = v13;
      sub_24135196C();
      v15 = sub_24135294C();
      v17 = v16;
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        *&v20.f64[0] = v15;
        v20.f64[1] = v17;
        *&v20.f64[0] = vsub_f32(vcvt_f32_f64(v20), v8);
        if (sqrtf(vaddv_f32(vmul_f32(*&v20.f64[0], *&v20.f64[0]))) < 88.0)
        {

          goto LABEL_18;
        }
      }

      ++v6;
      if (v11 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_17:

  v10 = 0;
LABEL_18:
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v21 = sub_241352FFC();
  __swift_project_value_buffer(v21, qword_27E53A538);
  v22 = v10;
  v23 = sub_241352FDC();
  v24 = sub_2413540DC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v25 = 136315138;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B98);
    v28 = sub_241353C7C();
    v30 = sub_2412DDC2C(v28, v29, &v35);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_241215000, v23, v24, "screenPointHitTest result: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x245CE4870](v26, -1, -1);
    MEMORY[0x245CE4870](v25, -1, -1);
  }
}

void sub_241294A38(float64_t a1, float64_t a2)
{
  v90 = sub_2413517DC();
  v93 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241351BBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_241351A7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2413520EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v86 = v2;
  v18 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v94 = v6;
  v19 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v19)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  (*(v15 + 104))(v17, *MEMORY[0x277CDAE48], v14);
  v20 = v19;
  sub_241351A3C();
  v21 = sub_24135293C();

  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  v22 = *(v21 + 16);
  if (v22)
  {
    v96[0] = MEMORY[0x277D84F90];
    sub_24135466C();
    v24 = *(v7 + 16);
    v23 = v7 + 16;
    v95 = v24;
    v25 = *(v23 + 64);
    v92 = v21;
    v26 = v21 + ((v25 + 32) & ~v25);
    v27 = v94;
    v28 = *(v23 + 56);
    v29 = (v23 - 8);
    do
    {
      v95(v9, v26, v27);
      sub_241351B8C();
      (*v29)(v9, v27);
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      v26 += v28;
      --v22;
    }

    while (v22);

    v30 = v96[0];
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  if (qword_27E537CD0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v31 = sub_241352FFC();
  v32 = __swift_project_value_buffer(v31, qword_27E53A538);

  v33 = sub_241352FDC();
  v34 = sub_2413540DC();

  v35 = os_log_type_enabled(v33, v34);
  v84 = v30;
  v77[1] = v32;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v96[0] = v37;
    *v36 = 136315138;
    v38 = sub_241352C5C();
    v39 = MEMORY[0x245CE21F0](v30, v38);
    v41 = sub_2412DDC2C(v39, v40, v96);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_241215000, v33, v34, "Normal hit-test resuts: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x245CE4870](v37, -1, -1);
    MEMORY[0x245CE4870](v36, -1, -1);
  }

  v42 = v86;
  v43 = *(v86 + v85);
  if (!v43)
  {
    goto LABEL_68;
  }

  v44 = *(v43 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v44 >> 62)
  {
    v45 = sub_2413544EC();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = MEMORY[0x277D84F90];
  if (!v45)
  {
    goto LABEL_22;
  }

  v96[0] = MEMORY[0x277D84F90];

  sub_24135466C();
  if (v45 < 0)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v47 = 0;
  v30 = v44 & 0xC000000000000001;
  do
  {
    if (v30)
    {
      v48 = MEMORY[0x245CE29C0](v47, v44);
    }

    else
    {
      v48 = *(v44 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;

    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
  }

  while (v45 != v47);

  v46 = v96[0];
  v42 = v86;
LABEL_22:
  v50 = v84;
  if (v84 >> 62)
  {
    v51 = sub_2413544EC();
    if (v51)
    {
      goto LABEL_24;
    }

LABEL_61:

    v75.n128_f64[0] = a1;
    v76.n128_f64[0] = a2;
    if (!sub_241293DE8(v75, v76))
    {
      sub_24129471C(a1, a2);
    }

    return;
  }

  v51 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
    goto LABEL_61;
  }

LABEL_24:
  v52 = 0;
  v81 = v51;
  v82 = v50 & 0xC000000000000001;
  v78 = v50 + 32;
  v79 = v50 & 0xFFFFFFFFFFFFFF8;
  v88 = (v93 + 8);
  v80 = v46;
  v53 = v90;
  while (1)
  {
    if (v82)
    {
      v54 = v52;
      v55 = MEMORY[0x245CE29C0](v52, v50);
      v56 = __OFADD__(v54, 1);
      v57 = v54 + 1;
      if (v56)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v52 >= *(v79 + 16))
      {
        goto LABEL_57;
      }

      v55 = *(v78 + 8 * v52);
      v58 = v52;

      v56 = __OFADD__(v58, 1);
      v57 = v58 + 1;
      if (v56)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    v87 = v57;
    v94 = sub_24131268C(v46);
    if (!v94)
    {

      goto LABEL_26;
    }

    v59 = *(v42 + v85);
    if (!v59)
    {
      goto LABEL_65;
    }

    v83 = v55;
    v60 = *(v59 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v61 = v60 >> 62 ? sub_2413544EC() : *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v61)
    {
      break;
    }

LABEL_25:

    v42 = v86;
    v50 = v84;
    v46 = v80;
LABEL_26:
    v52 = v87;
    if (v87 == v81)
    {
      goto LABEL_61;
    }
  }

  v62 = 0;
  v92 = v60 & 0xFFFFFFFFFFFFFF8;
  v93 = v60 & 0xC000000000000001;
  v91 = v60;
  while (1)
  {
    if (v93)
    {
      v63 = MEMORY[0x245CE29C0](v62, v60);
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v62 >= *(v92 + 16))
      {
        goto LABEL_55;
      }

      v63 = *(v60 + 8 * v62 + 32);
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v65 = v89;
    v66 = v63;
    sub_24135296C();
    v30 = MEMORY[0x277D841D8];
    sub_2413516FC();
    v67 = *v88;
    (*v88)(v65, v53);
    v95 = v96[0];
    sub_24135296C();
    sub_2413516FC();
    v67(v65, v53);
    if (v95 == v96[0])
    {
      break;
    }

    ++v62;
    v60 = v91;
    if (v64 == v61)
    {
      goto LABEL_25;
    }
  }

  v68 = sub_241352FDC();
  v69 = sub_2413540DC();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v96[0] = v71;
    *v70 = 136315138;
    v72 = sub_241352C0C();
    v74 = sub_2412DDC2C(v72, v73, v96);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_241215000, v68, v69, "Using entityController: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x245CE4870](v71, -1, -1);
    MEMORY[0x245CE4870](v70, -1, -1);
  }

  else
  {
  }
}

void sub_241295418()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3 || (v4 = [v3 gestureRecognizers], v3, !v4))
  {
    v24 = 0;
    goto LABEL_46;
  }

  sub_241246158(0, &unk_27E538B40);
  v5 = sub_241353E2C();

  v35 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2413544EC())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245CE29C0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 name];
      if (v11)
      {
        v12 = v11;
        v13 = sub_241353C0C();
        v15 = v14;

        if (v13 == 0xD00000000000002BLL && 0x8000000241360160 == v15)
        {
LABEL_22:

LABEL_23:
          sub_24135464C();
          sub_24135467C();
          sub_24135468C();
          sub_24135465C();
          goto LABEL_8;
        }

        v17 = sub_24135497C();

        if (v17)
        {
          goto LABEL_23;
        }
      }

      v18 = [v9 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_241353C0C();
        v22 = v21;

        if (v20 == 0xD00000000000002FLL && 0x8000000241360130 == v22)
        {
          goto LABEL_22;
        }

        v23 = sub_24135497C();

        if (v23)
        {
          goto LABEL_23;
        }
      }

LABEL_8:
      ++v7;
      if (v10 == i)
      {
        v24 = v35;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_33:

  if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
  {
    v25 = sub_2413544EC();
  }

  else
  {
    v25 = *(v24 + 16);
  }

  if (!v25)
  {
LABEL_45:

LABEL_46:
    if (qword_27E537CD0 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_59;
  }

  v26 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x245CE29C0](v26, v24);
    }

    else
    {
      if (v26 >= *(v24 + 16))
      {
        goto LABEL_58;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    [v27 setEnabled_];

    ++v26;
    if (v29 == v25)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_47:
  v30 = sub_241352FFC();
  __swift_project_value_buffer(v30, qword_27E53A538);

  oslog = sub_241352FDC();
  v31 = sub_2413540DC();
  if (os_log_type_enabled(oslog, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    if (v24)
    {
      if (v24 >> 62)
      {
        v33 = sub_2413544EC();
      }

      else
      {
        v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v33 = 0;
    }

    *(v32 + 4) = v33;

    _os_log_impl(&dword_241215000, oslog, v31, "Disabled %ld dismiss gestures", v32, 0xCu);
    MEMORY[0x245CE4870](v32, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_2412958E0(void *a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping;
  swift_beginAccess();
  v7 = *(a3 + v6);
  if (*(v7 + 16) && (v8 = sub_2412FDBDC(a1), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v18 = v10;
  }

  else
  {
    swift_endAccess();
    if (MEMORY[0x277D84F90] >> 62 && sub_2413544EC())
    {
      sub_2412C0B78(MEMORY[0x277D84F90]);
    }

    else
    {
      v11 = MEMORY[0x277D84FA0];
    }

    v18 = v11;
  }

  sub_24132F1E0(v17, a2);

  v12 = v18;
  swift_beginAccess();
  v13 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a3 + v6);
  *(a3 + v6) = 0x8000000000000000;
  sub_2412A69CC(v12, v13, isUniquelyReferenced_nonNull_native);

  *(a3 + v6) = v16;
  return swift_endAccess();
}

void sub_241295A34(void *a1, uint64_t a2)
{
  v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
    goto LABEL_30;
  }

  [a1 locationInView_];
  v6 = v5;
  v8 = v7;
  sub_241294A38(v5, v7);
  if (v9)
  {
    return;
  }

  v10 = OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if ((v11 & 0xC000000000000001) == 0)
  {
    if (*(v11 + 16) != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v12 = sub_2413544EC();

  if (v12 == 1)
  {
LABEL_7:

    v14 = sub_241322200(v13);
    v16 = v15;

    if (!v14)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v17 = *(a2 + v2);
    if (!v17)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    [v14 locationInView_];
    sub_241294A38((v6 + v18) * 0.5, (v8 + v19) * 0.5);
    if (!v20)
    {

      goto LABEL_16;
    }

    v21 = OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController;
    v22 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
    if (!v22)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v23 = v20;
    v24 = *&v22[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_241365EA0;
      sub_241246158(0, &qword_27E538A40);
      sub_2412B3208(&qword_27E53A4B0, &qword_27E538A40);
      v26 = v24;
      v27 = v14;
      sub_24135456C();
      sub_2412C0A18(inited);
      swift_setDeallocating();
      sub_2412AF728(inited + 32);
      v28 = sub_241353FEC();

      [v26 processTouches:v28 phase:{3, v14}];

      v22 = *(a2 + v21);
      if (!v22)
      {
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    v29 = v22;
    v30 = sub_241338788(v43, v29);
    if (*v31)
    {
      v32 = sub_24132FD74(v14);
      (v30)(v43, 0);
      swift_endAccess();

      v29 = v32;
    }

    else
    {
      (v30)(v43, 0);
      swift_endAccess();
    }

    swift_beginAccess();
    v35 = *(a2 + v10);
    if ((v35 & 0xC000000000000001) == 0)
    {
      v40 = v14;
      v41 = v23;
      goto LABEL_28;
    }

    if (v35 < 0)
    {
      v36 = *(a2 + v10);
    }

    else
    {
      v36 = v35 & 0xFFFFFFFFFFFFFF8;
    }

    v37 = v14;
    v38 = v23;
    v39 = sub_2413544EC();
    if (!__OFADD__(v39, 1))
    {
      *(a2 + v10) = sub_24126DDFC(v36, v39 + 1);
LABEL_28:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(a2 + v10);
      sub_2412A6B38(v23, v14, isUniquelyReferenced_nonNull_native);
      *(a2 + v10) = v44;

      swift_endAccess();
      sub_2412958E0(v23, v14, a2);

      return;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_16:
  v33 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
  if (!v33)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v34 = v33;
}

void sub_241295E60(uint64_t a1, uint64_t a2)
{
  v5 = sub_241287420();
  v6 = v5[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if ((v6 & 1) == 0)
  {
    v7 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v7)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v8 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
    if (!v8)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v9 = v8;
    MEMORY[0x245CE21C0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_241353E4C();
    }

    sub_241353E6C();
    if (v21 >> 62)
    {
      v10 = sub_2413544EC();
      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_8:
        if (v10 >= 1)
        {
          v11 = 0;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x245CE29C0](v11, v21);
            }

            else
            {
              v12 = *(v21 + 8 * v11 + 32);
            }

            v13 = v12;
            if (!*(a1 + 16))
            {
              goto LABEL_21;
            }

            v14 = sub_2412FDBDC(v12);
            if ((v15 & 1) == 0)
            {
              goto LABEL_21;
            }

            v16 = *(*(a1 + 56) + 8 * v14);
            if ((v16 & 0xC000000000000001) != 0)
            {

              if (!sub_2413544EC())
              {
                goto LABEL_20;
              }
            }

            else
            {
              v20 = *(v16 + 16);

              if (!v20)
              {
LABEL_20:

                goto LABEL_21;
              }
            }

            v17 = *&v13[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
            if (!v17)
            {

              goto LABEL_22;
            }

            v18 = v17;
            sub_24132A610(v16);

            v19 = sub_241353FEC();

            [v18 processTouches:v19 phase:a2];

LABEL_21:
LABEL_22:
            if (v10 == ++v11)
            {
              goto LABEL_26;
            }
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

LABEL_26:
  }
}

void sub_241296108(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping;
  swift_beginAccess();
  v5 = sub_241287500(v3, *(a2 + v4));
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    swift_beginAccess();
    v7 = sub_241338788(v14, v6);
    if (*v8)
    {
      v9 = sub_24132FD74(v3);
      (v7)(v14, 0);
      swift_endAccess();
    }

    else
    {
      (v7)(v14, 0);
      swift_endAccess();
    }

    swift_beginAccess();
    v11 = sub_2412A299C(v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v10 = sub_241352FFC();
    __swift_project_value_buffer(v10, qword_27E53A538);
    v11 = sub_241352FDC();
    v12 = sub_2413540BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_241215000, v11, v12, "Expected an entityController", v13, 2u);
      MEMORY[0x245CE4870](v13, -1, -1);
    }
  }
}

uint64_t sub_24129630C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_241246158(0, &qword_27E538A40);
  sub_2412B3208(&qword_27E53A4B0, &qword_27E538A40);
  v8 = sub_241353FFC();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

Swift::Void __swiftcall PreviewViewController.didDismissActivityViewController()()
{
  v1 = sub_241287420();
  v2 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
  v3 = *&v1[v2];
  *&v1[v2] = 0;

  if ((v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] & 1) == 0 && v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] == 1)
  {
    [v1 startAutoHideControlsTimer];
  }

  *(*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode) = 0;
}

id PreviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_241353BDC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PreviewViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v61 = a3;
  v59 = a2;
  v57[1] = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = v57 - v9;
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid];
  sub_24135163C();
  sub_2413515FC();
  (*(v11 + 8))(v13, v10);
  v15 = sub_2412AE478(5);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *v14 = v15;
  v14[1] = v17;
  v14[2] = v19;
  v14[3] = v21;
  v22 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_configuration];
  type metadata accessor for ARQLView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  *v22 = 0xD000000000000020;
  *(v22 + 1) = 0x800000024135F540;
  *(v22 + 2) = v24;
  v22[24] = 0;
  *(v22 + 4) = 0;
  *(v22 + 5) = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_videoWriter] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_videoInput] = 0;
  v25 = OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController;
  *&v4[v25] = [objc_allocWithZone(type metadata accessor for PlaybackControlsViewController()) init];
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_animationComponents] = MEMORY[0x277D84FA0];
  (*(v11 + 56))(&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_previewType], 1, 1, v10);
  v26 = OBJC_IVAR___ASVPreviewViewControllerInternal_debugAllowsARMode;
  v4[v26] = [objc_opt_self() wantsOpenInObjectMode] ^ 1;
  v4[OBJC_IVAR___ASVPreviewViewControllerInternal_didReceiveFirstARFrame] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController] = 0;
  v27 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState];
  *v27 = 0;
  v27[8] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController] = 0;
  v28 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock];
  *v29 = 0;
  v29[1] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___coachingOverlayView] = 0;
  v4[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] = 0;
  v30 = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping] = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState] = v30;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner] = 0;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_allowShowTriggerAffordanceTime] = 0x7FF0000000000000;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_delayBeforeShowingTriggerAffordance] = 0x4018000000000000;
  *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_lastTriggerAffordanceUpdateTime] = 0;
  result = [objc_allocWithZone(ASVPercentLozenge) init];
  if (result)
  {
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel] = result;
    swift_unknownObjectWeakInit();
    v32 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeSafezone];
    *v32 = 0u;
    v32[1] = 0u;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping] = v30;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping] = v30;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController] = 0;
    v33 = OBJC_IVAR___ASVPreviewViewControllerInternal_viewportDebugView;
    *&v4[v33] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_backlightController] = 0;
    v34 = OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration;
    *&v4[v34] = sub_2412894C8();
    v35 = OBJC_IVAR___ASVPreviewViewControllerInternal_faceTrackingConfiguration;
    v36 = [objc_allocWithZone(MEMORY[0x277CE5280]) init];
    [v36 setAutoFocusEnabled_];
    *&v4[v35] = v36;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_isAutoFocusEnabled] = 1;
    v37 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_singleTapScreenPoint];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = 1;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_hasPlacedModelInWorldAlready] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer] = 0;
    v38 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
    *v38 = 0;
    v38[1] = 0;
    v39 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
    v40 = sub_2413515EC();
    v41 = *(*(v40 - 8) + 56);
    v41(&v4[v39], 1, 1, v40);
    v41(&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate], 1, 1, v40);
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsObjectModeDuration] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARModeDuration] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimeInObjectModeBeforeFirstTapARMode] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode] = 0;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARObjectWasLevitated] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnimationScrubbed] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLongestDuration] = 0;
    v42 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDimensionsString];
    *v42 = 0;
    v42[1] = 0xE000000000000000;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsDidCloseByTappingOnCheckout] = 0;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsFileWantsRealWorldPhysics] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater] = 1;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] = 0;
    v43 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
    v44 = sub_241351DEC();
    (*(*(v44 - 8) + 56))(&v4[v43], 1, 1, v44);
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_defaultGravity] = xmmword_241367080;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_gravity] = xmmword_241367080;
    v45 = &v4[OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions];
    v46 = sub_24135152C();
    v47 = *(*(v46 - 8) + 56);
    v47(v62, 1, 1, v46);
    v48 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
    v49 = *(*(v48 - 8) + 56);
    v49(v7, 1, 1, v48);
    v50 = type metadata accessor for ModelCustomizationOptions(0);
    v58 = v7;
    v51 = *(v50 + 28);
    v47(&v45[v51], 1, 1, v46);
    v52 = *(v50 + 32);
    v49(&v45[v52], 1, 1, v48);
    *v45 = 257;
    v45[2] = 1;
    sub_241255BC8(v62, &v45[v51], &qword_27E538750);
    sub_241255BC8(v58, &v45[v52], &qword_27E538748);
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState] = 0;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing] = 0;
    v4[OBJC_IVAR___ASVPreviewViewControllerInternal_previewDidAppearCalled] = 0;
    v47(&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_fileURL], 1, 1, v46);
    v53 = OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreen;
    v64 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386F8);
    swift_allocObject();
    *&v4[v53] = sub_24135311C();
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreenCancellable] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_solariumNavController] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___replayObserver] = 0;
    *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer] = 0;
    if (v59)
    {
      v54 = sub_241353BDC();
    }

    else
    {
      v54 = 0;
    }

    v63.receiver = v4;
    v63.super_class = ObjectType;
    v55 = v61;
    v56 = objc_msgSendSuper2(&v63, sel_initWithNibName_bundle_, v54, v61);

    return v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PreviewViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PreviewViewController.init(coder:)(void *a1)
{
  v2 = v1;
  v57 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v54 - v7;
  v8 = sub_24135164C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_uuid];
  sub_24135163C();
  sub_2413515FC();
  (*(v9 + 8))(v11, v8);
  v13 = sub_2412AE478(5);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  *v12 = v13;
  v12[1] = v15;
  v12[2] = v17;
  v12[3] = v19;
  v20 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_configuration];
  type metadata accessor for ARQLView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  *v20 = 0xD000000000000020;
  *(v20 + 1) = 0x800000024135F540;
  *(v20 + 2) = v22;
  v20[24] = 0;
  *(v20 + 4) = 0;
  *(v20 + 5) = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_videoWriter] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_videoInput] = 0;
  v23 = OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController;
  *&v2[v23] = [objc_allocWithZone(type metadata accessor for PlaybackControlsViewController()) init];
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_animationComponents] = MEMORY[0x277D84FA0];
  (*(v9 + 56))(&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_previewType], 1, 1, v8);
  v24 = OBJC_IVAR___ASVPreviewViewControllerInternal_debugAllowsARMode;
  v2[v24] = [objc_opt_self() wantsOpenInObjectMode] ^ 1;
  v2[OBJC_IVAR___ASVPreviewViewControllerInternal_didReceiveFirstARFrame] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController] = 0;
  v25 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState];
  *v25 = 0;
  v25[8] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController] = 0;
  v26 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock];
  *v27 = 0;
  v27[1] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___coachingOverlayView] = 0;
  v2[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] = 0;
  v28 = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping] = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState] = v28;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner] = 0;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_allowShowTriggerAffordanceTime] = 0x7FF0000000000000;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_delayBeforeShowingTriggerAffordance] = 0x4018000000000000;
  *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_lastTriggerAffordanceUpdateTime] = 0;
  result = [objc_allocWithZone(ASVPercentLozenge) init];
  if (result)
  {
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel] = result;
    swift_unknownObjectWeakInit();
    v30 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeSafezone];
    *v30 = 0u;
    v30[1] = 0u;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping] = v28;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping] = v28;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController] = 0;
    v31 = OBJC_IVAR___ASVPreviewViewControllerInternal_viewportDebugView;
    *&v2[v31] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_backlightController] = 0;
    v32 = OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration;
    *&v2[v32] = sub_2412894C8();
    v33 = OBJC_IVAR___ASVPreviewViewControllerInternal_faceTrackingConfiguration;
    v34 = [objc_allocWithZone(MEMORY[0x277CE5280]) init];
    [v34 setAutoFocusEnabled_];
    *&v2[v33] = v34;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_isAutoFocusEnabled] = 1;
    v35 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_singleTapScreenPoint];
    *v35 = 0;
    *(v35 + 1) = 0;
    v35[16] = 1;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_hasPlacedModelInWorldAlready] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer] = 0;
    v36 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
    *v36 = 0;
    v36[1] = 0;
    v37 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
    v38 = sub_2413515EC();
    v39 = *(*(v38 - 8) + 56);
    v39(&v2[v37], 1, 1, v38);
    v39(&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate], 1, 1, v38);
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsObjectModeDuration] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARModeDuration] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimeInObjectModeBeforeFirstTapARMode] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode] = 0;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARObjectWasLevitated] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnimationScrubbed] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLongestDuration] = 0;
    v40 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDimensionsString];
    *v40 = 0;
    v40[1] = 0xE000000000000000;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsDidCloseByTappingOnCheckout] = 0;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsFileWantsRealWorldPhysics] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater] = 1;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] = 0;
    v41 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
    v42 = sub_241351DEC();
    (*(*(v42 - 8) + 56))(&v2[v41], 1, 1, v42);
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_defaultGravity] = xmmword_241367080;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_gravity] = xmmword_241367080;
    v43 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions];
    v44 = sub_24135152C();
    v45 = *(*(v44 - 8) + 56);
    v45(v58, 1, 1, v44);
    v46 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
    v47 = *(*(v46 - 8) + 56);
    v47(v5, 1, 1, v46);
    v48 = type metadata accessor for ModelCustomizationOptions(0);
    v55 = v5;
    v49 = *(v48 + 28);
    v45(&v43[v49], 1, 1, v44);
    v50 = *(v48 + 32);
    v47(&v43[v50], 1, 1, v46);
    *v43 = 257;
    v43[2] = 1;
    sub_241255BC8(v58, &v43[v49], &qword_27E538750);
    sub_241255BC8(v55, &v43[v50], &qword_27E538748);
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState] = 0;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing] = 0;
    v2[OBJC_IVAR___ASVPreviewViewControllerInternal_previewDidAppearCalled] = 0;
    v45(&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_fileURL], 1, 1, v44);
    v51 = OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreen;
    v60 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386F8);
    swift_allocObject();
    *&v2[v51] = sub_24135311C();
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_isWindowFullscreenCancellable] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_solariumNavController] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___replayObserver] = 0;
    *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer] = 0;
    v52 = v57;
    v59.receiver = v2;
    v59.super_class = ObjectType;
    v53 = objc_msgSendSuper2(&v59, sel_initWithCoder_, v57);

    if (v53)
    {
    }

    return v53;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_241297860(uint64_t a1@<X8>)
{
  sub_2412979B0();
  v3 = 0uLL;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
LABEL_13:
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v3;
    return;
  }

  v8 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v9 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v10)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = [v10 session];
  v6 = [v11 currentFrame];

  if (!v6)
  {
    v5 = 0;
    v7 = 0;
    v3 = 0uLL;
    goto LABEL_13;
  }

  v12 = *(v1 + v8);
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = [v13 session];
  v7 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy);
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = *(v1 + v8);
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v16)
  {
    v5 = v14;

    [v16 bounds];
    *(&v3 + 1) = v17;
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
}

void sub_2412979B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_241351DEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8);
  v12 = v11 > 5;
  v13 = (1 << v11) & 0x3A;
  if (!v12 && v13 != 0)
  {

    v15 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v15)
    {
      __break(1u);
      return;
    }

    if ((*(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) & 1) == 0)
    {
      v16 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages);
      if (!v16)
      {
        goto LABEL_12;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {

        v17 = sub_2413544EC();

        if (!v17)
        {
LABEL_12:
          v18 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects);
          if (!v18)
          {
            return;
          }

          if ((v18 & 0xC000000000000001) != 0)
          {

            v19 = sub_2413544EC();

            if (!v19)
            {
              return;
            }
          }

          else if (!*(v18 + 16))
          {
            return;
          }
        }
      }

      else if (!*(v16 + 16))
      {
        goto LABEL_12;
      }

      v20 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
      swift_beginAccess();
      sub_241246210(v0 + v20, v3, &qword_27E538940);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_241246278(v3, &qword_27E538940);
      }

      else
      {
        v21 = *(v5 + 32);
        v21(v10, v3, v4);
        v21(v8, v10, v4);
        (*(v5 + 88))(v8, v4);
        (*(v5 + 8))(v8, v4);
      }
    }
  }
}

void sub_241297D88(uint64_t a1, char a2)
{
  sub_2412979B0();
  if (v4 & 1) != 0 || (v5 = sub_241287420(), v6 = v5[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode], v5, (v6))
  {

    swift_unknownObjectWeakAssign();
  }

  else
  {
    swift_unknownObjectWeakAssign();
    if (a2)
    {
      sub_24128F5C4();
      if (a2 == 1)
      {
        sub_2413233C4();
      }
    }

    else
    {
      v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer;
      v8 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_hideLozengeTimer);
      if (v8)
      {
        [v8 invalidate];
        v9 = *(v2 + v7);
      }

      else
      {
        v9 = 0;
      }

      *(v2 + v7) = 0;

      v10 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel);

      [v10 setHidden:0 animated:1];
    }
  }
}

uint64_t PreviewViewController.preparePreviewOfFile(at:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v156 = a3;
  v155 = a2;
  v173[5] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748);
  MEMORY[0x28223BE20](v5 - 8);
  v162 = &v151 - v6;
  v161 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v152 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for ModelCustomizationOptions(0);
  MEMORY[0x28223BE20](v163);
  v158 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538780);
  MEMORY[0x28223BE20](v9 - 8);
  v157 = &v151 - v10;
  v11 = sub_24135152C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v159 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v151 - v18;
  v20 = *(v12 + 16);
  v167 = a1;
  v20(&v151 - v18, a1, v11);
  v165 = v12;
  v21 = *(v12 + 56);
  v166 = v11;
  v21(v19, 0, 1, v11);
  v22 = OBJC_IVAR___ASVPreviewViewControllerInternal_fileURL;
  swift_beginAccess();
  sub_241255BC8(v19, &v3[v22], &qword_27E538750);
  swift_endAccess();
  v23 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  if (!*&v3[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController])
  {
    __break(1u);
    goto LABEL_60;
  }

  v24 = [v3 view];
  if (!v24)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v25 = v24;
  [v24 frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  *(swift_allocObject() + 16) = v3;
  v154 = v3;
  v34 = v3;
  sub_24124BCF8(0, sub_2412AF6DC, v27, v29, v31, v33);

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v35 = sub_241352FFC();
  v36 = __swift_project_value_buffer(v35, qword_27E53A538);
  v37 = sub_241352FDC();
  v38 = sub_2413540DC();
  v39 = os_log_type_enabled(v37, v38);
  v164 = v36;
  if (v39)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_241215000, v37, v38, "preparePreviewOfFile called", v40, 2u);
    MEMORY[0x245CE4870](v40, -1, -1);
  }

  v41 = swift_allocObject();
  v42 = v156;
  *(v41 + 16) = v155;
  *(v41 + 24) = v42;
  v43 = &v34[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  v44 = *&v34[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  *v43 = sub_2412AF700;
  v43[1] = v41;

  sub_2412186FC(v44);
  v45 = v166;
  v20(v14, v167, v166);
  v46 = sub_241352FDC();
  v47 = sub_2413540DC();
  v48 = os_log_type_enabled(v46, v47);
  v153 = v23;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v173[0] = v50;
    *v49 = 136315138;
    sub_2412B3164(&qword_27E539990, MEMORY[0x277CC9260]);
    v51 = sub_24135491C();
    v53 = v52;
    (*(v165 + 8))(v14, v45);
    v54 = sub_2412DDC2C(v51, v53, v173);

    *(v49 + 4) = v54;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245CE4870](v50, -1, -1);
    MEMORY[0x245CE4870](v49, -1, -1);
  }

  else
  {

    (*(v165 + 8))(v14, v45);
  }

  v55 = v34;
  v56 = sub_241352FDC();
  v57 = sub_2413540DC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v173[0] = v59;
    *v58 = 136315138;
    v60 = [v55 previewOptions];
    sub_241353B5C();

    v61 = sub_241353B6C();
    v63 = v62;

    v64 = sub_2412DDC2C(v61, v63, v173);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_241215000, v56, v57, "Preview Options: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x245CE4870](v59, -1, -1);
    MEMORY[0x245CE4870](v58, -1, -1);
  }

  v65 = [v55 previewOptions];
  v66 = sub_241353B5C();

  v169 = v66;
  *&v171 = sub_241353C0C();
  *(&v171 + 1) = v67;
  sub_24135456C();
  if (*(v66 + 16) && (v68 = sub_2412FD8C4(v173), (v69 & 1) != 0))
  {
    sub_2412461A0(*(v66 + 56) + 32 * v68, &v171);
    sub_2412AF728(v173);
    sub_241246278(&v171, &qword_27E5386F0);
    *&v170[0] = sub_241353C0C();
    *(&v170[0] + 1) = v70;
    sub_24135456C();
    v71 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
    v72 = v157;
    if (*(v66 + 16) && (v73 = sub_2412FD8C4(v173), (v74 & 1) != 0))
    {
      sub_2412461A0(*(v66 + 56) + 32 * v73, &v171);
      sub_2412AF728(v173);
      if (swift_dynamicCast())
      {
        v75 = v170[0];

        v76 = HIBYTE(*(&v75 + 1)) & 0xFLL;
        if ((*(&v75 + 1) & 0x2000000000000000) == 0)
        {
          v76 = v75 & 0xFFFFFFFFFFFFLL;
        }

        if (!v76)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_2412AF728(v173);
    }
  }

  else
  {
    sub_2412AF728(v173);
    v171 = 0u;
    v172 = 0u;
    sub_241246278(&v171, &qword_27E5386F0);
    v71 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
    v72 = v157;
  }

  *&v171 = sub_241353C0C();
  *(&v171 + 1) = v77;
  v78 = MEMORY[0x277D837D0];
  sub_24135456C();
  sub_24135129C();
  v79 = sub_2413512DC();
  v80 = *(v79 - 8);
  if ((*(v80 + 48))(v72, 1, v79) == 1)
  {
    sub_241246278(v72, &unk_27E538780);
  }

  else
  {
    v81 = sub_2413512CC();
    v83 = v82;
    (*(v80 + 8))(v72, v79);
    if (v83)
    {
      *(&v172 + 1) = v78;
      *&v171 = v81;
      *(&v171 + 1) = v83;
      sub_241245AA4(&v171, v170);
      v84 = v169;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = v84;
      sub_2412A6CB0(v170, v173, isUniquelyReferenced_nonNull_native);
      sub_2412AF728(v173);
      v169 = v168;
      goto LABEL_28;
    }
  }

  sub_2412A2B7C(v173, v170);
  sub_241246278(v170, &qword_27E5386F0);
  sub_2412AF728(v173);
LABEL_28:

  v87 = v158;
  sub_241303B7C(v86, v158);
  v88 = &v55[OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions];
  swift_beginAccess();
  sub_2412B3554(v87, v88, type metadata accessor for ModelCustomizationOptions);
  sub_2413042D8();
  swift_endAccess();
  v89 = v55;
  v90 = sub_241352FDC();
  v91 = sub_2413540DC();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v173[0] = v93;
    *v92 = 136315138;
    sub_2412B30F0(v88, v87, type metadata accessor for ModelCustomizationOptions);
    v94 = sub_241305030();
    v95 = v87;
    v96 = v94;
    v98 = v97;
    sub_2412AF7A8(v95, type metadata accessor for ModelCustomizationOptions);
    v99 = sub_2412DDC2C(v96, v98, v173);

    *(v92 + 4) = v99;
    _os_log_impl(&dword_241215000, v90, v91, "Final customizationOptions: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x245CE4870](v93, -1, -1);
    MEMORY[0x245CE4870](v92, -1, -1);
  }

  v100 = v154;
  v101 = v162;
  v102 = v163;
  sub_241246210(v88 + *(v163 + 32), v162, &qword_27E538748);
  if ((*(v160 + 48))(v101, 1, v161) == 1)
  {
    sub_241246278(v101, &qword_27E538748);
  }

  else
  {
    v103 = v152;
    sub_2412B35BC(v101, v152, type metadata accessor for ModelCustomizationOptions.BannerStyle);
    v104 = sub_241287420();
    sub_2412AB10C(v103, v89, v104);

    sub_2412AF7A8(v103, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  }

  v105 = v166;
  v106 = v88 + *(v102 + 28);
  v107 = v159;
  sub_241246210(v106, v159, &qword_27E538750);
  v108 = (*(v165 + 48))(v107, 1, v105);
  sub_241246278(v107, &qword_27E538750);
  if (v108 != 1)
  {
    [objc_opt_self() sendAnalyticsWithEvent_];
  }

  v109 = [v89 v71[38]];
  v110 = sub_241353B5C();

  *&v170[0] = sub_241353C0C();
  *(&v170[0] + 1) = v111;
  sub_24135456C();
  if (!*(v110 + 16) || (v112 = sub_2412FD8C4(v173), (v113 & 1) == 0))
  {

    sub_2412AF728(v173);
    goto LABEL_42;
  }

  sub_2412461A0(*(v110 + 56) + 32 * v112, &v171);
  sub_2412AF728(v173);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v118 = sub_241287420();
    v119 = [objc_opt_self() wantsStatusPillHidden];
    goto LABEL_43;
  }

  v114 = LOBYTE(v170[0]);
  v115 = sub_241352FDC();
  v116 = sub_2413540DC();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 67109120;
    *(v117 + 4) = v114;
    _os_log_impl(&dword_241215000, v115, v116, "Overriding status pill to be hidden via SPI. %{BOOL}d", v117, 8u);
    MEMORY[0x245CE4870](v117, -1, -1);
  }

  v118 = sub_241287420();
  v119 = v114;
LABEL_43:
  v118[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_wantsStatusPillHidden] = v119;

  v120 = [v89 v71[38]];
  v121 = sub_241353B5C();

  *&v170[0] = sub_241353C0C();
  *(&v170[0] + 1) = v122;
  sub_24135456C();
  if (!*(v121 + 16) || (v123 = sub_2412FD8C4(v173), (v124 & 1) == 0))
  {

    sub_2412AF728(v173);
LABEL_51:
    v128 = [objc_opt_self() sharedInstance];
    v129 = v128;
    v130 = MEMORY[0x277CB8048];
    goto LABEL_52;
  }

  sub_2412461A0(*(v121 + 56) + 32 * v123, &v171);
  sub_2412AF728(v173);

  if ((swift_dynamicCast() & 1) == 0 || LOBYTE(v170[0]) != 1)
  {
    goto LABEL_51;
  }

  v125 = sub_241352FDC();
  v126 = sub_2413540DC();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_241215000, v125, v126, "[Animation] Overriding audio category to playback", v127, 2u);
    MEMORY[0x245CE4870](v127, -1, -1);
  }

  v128 = [objc_opt_self() sharedInstance];
  v129 = v128;
  v130 = MEMORY[0x277CB8030];
LABEL_52:
  v131 = *v130;
  v173[0] = 0;
  v132 = [v128 setCategory:v131 error:v173];

  if (v132)
  {
    v133 = v173[0];
  }

  else
  {
    v134 = v173[0];
    v135 = sub_24135139C();

    swift_willThrow();
  }

  sub_24135229C();
  sub_24135228C();
  sub_24135227C();

  if (!*&v100[v153])
  {
LABEL_61:
    __break(1u);
  }

  v136 = swift_allocObject();
  *(v136 + 16) = v89;
  v137 = swift_allocObject();
  *(v137 + 16) = v89;
  v138 = v89;

  sub_24124CEAC(v167, sub_2412AF77C, v136, sub_2412AF784, v137);

  v139 = v138;
  v140 = sub_241352FDC();
  v141 = sub_2413540DC();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v173[0] = v143;
    *v142 = 136315138;
    v144 = [v139 v71[38]];
    sub_241353B5C();

    v71 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
    v145 = sub_241353B6C();
    v147 = v146;

    v148 = sub_2412DDC2C(v145, v147, v173);

    *(v142 + 4) = v148;
    _os_log_impl(&dword_241215000, v140, v141, "previewOptions is set to %s", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v143);
    MEMORY[0x245CE4870](v143, -1, -1);
    MEMORY[0x245CE4870](v142, -1, -1);
  }

  v149 = [v139 v71[38]];
  sub_241353B5C();

  sub_241353B6C();
}

void sub_2412994A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_24135138C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_24129950C()
{
  v1 = v0;
  v2 = sub_2413538CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2413538FC();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24135391C();
  v8 = *(v46 - 8);
  v9 = MEMORY[0x28223BE20](v46);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = objc_opt_self();
  if ([v14 forceShowAnimationScrubber])
  {
    v15 = sub_241287420();
    sub_2412FA424(2);
  }

  v16 = [v14 overrideCameraStateSerializedString];
  if (v16)
  {
    v40 = v5;
    v17 = v16;
    v18 = sub_241353C0C();
    v39 = v19;

    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v41 = v6;
    v42 = v3;
    v43 = v2;
    v20 = sub_241352FFC();
    __swift_project_value_buffer(v20, qword_27E53A538);
    v21 = sub_241352FDC();
    v22 = sub_2413540DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_241215000, v21, v22, "User defaults wants to override camera state", v23, 2u);
      MEMORY[0x245CE4870](v23, -1, -1);
    }

    sub_241246158(0, &qword_27E538920);
    v24 = sub_24135416C();
    sub_24135390C();
    sub_24135393C();
    v38 = *(v8 + 8);
    v38(v11, v46);
    v25 = swift_allocObject();
    v25[2] = v1;
    v25[3] = v18;
    v25[4] = v39;
    aBlock[4] = sub_2412B31BC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2412D5698;
    aBlock[3] = &block_descriptor_3;
    v26 = _Block_copy(aBlock);
    v27 = v1;
    v28 = v44;
    sub_2413538DC();
    v47 = MEMORY[0x277D84F90];
    sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
    sub_24123D370(&qword_27E539880, &unk_27E538930);
    v29 = v40;
    v30 = v43;
    sub_24135444C();
    MEMORY[0x245CE2500](v13, v28, v29, v26);
    _Block_release(v26);

    (*(v42 + 8))(v29, v30);
    (*(v45 + 8))(v28, v41);
    v38(v13, v46);
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v31 = sub_241352FFC();
  __swift_project_value_buffer(v31, qword_27E53A538);
  v32 = sub_241352FDC();
  v33 = sub_2413540DC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_241215000, v32, v33, "Done additional setup in PreviewViewController", v34, 2u);
    MEMORY[0x245CE4870](v34, -1, -1);
  }

  v35 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v35)
  {
    __break(1u);
    goto LABEL_18;
  }

  v36 = *(v35 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v36)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v36 + qword_27E53A1A0))
  {

    printHierarchy(entity:level:debugString:)(v37, 0, 0, 0xE000000000000000);

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_241299B4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2412B3F74();
  v6 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState);
  if (v6)
  {
    v7 = v6;
    sub_24125BB64(a2, a3);
  }
}

void sub_241299BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v3;
  v5 = v2;
  v6 = *(a2 + 40);
  sub_241299C34(a1, v4);
}

void sub_241299C34(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v4 = *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v4 || !*(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
  {
    return;
  }

  v5 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v28 = *(a2 + 40);
  *oslog = *a2;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v9 = sub_241352FFC();
  __swift_project_value_buffer(v9, qword_27E53A538);
  v10 = sub_241352FDC();
  v11 = sub_2413540DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_241215000, v10, v11, "handleLoadSuccess() called", v12, 2u);
    MEMORY[0x245CE4870](v12, -1, -1);
  }

  v13 = sub_241287420();
  v14 = sub_241288D44();
  sub_2412F8078(v14 & 1);

  v15 = *&v5[v3];
  if (!v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  sub_24135241C();

  swift_unknownObjectRelease();
  sub_2412B3164(&qword_27E5388F0, type metadata accessor for PreviewViewController);
  sub_24135239C();

  sub_24129A898();
  sub_24129950C();
  sub_24129AD8C();
  v31 = *oslog;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v28;
  sub_2412EED18(&v31);
  v18 = *&v5[v3];
  if (!v18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v19 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_variantLoader);
  if (v19)
  {
    v20 = *&v5[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];
    v21 = *(v19 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_configurations);
    v22 = *(v19 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics);
    v23 = *(v19 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics + 8);
    v24 = *(v19 + OBJC_IVAR____TtC11AssetViewer14VariantsLoader_analytics + 16);

    v25 = v20;

    sub_2412AB2A0(v21, v5, v22, v23, v24, v25);

    [v5 updateInterfaceState];
  }

  else
  {
    osloga = sub_241352FDC();
    v26 = sub_2413540BC();
    if (os_log_type_enabled(osloga, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_241215000, osloga, v26, "variantLoader object not available", v27, 2u);
      MEMORY[0x245CE4870](v27, -1, -1);
    }
  }
}

void sub_24129A000(void *a1)
{
  v2 = v1;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);
  v5 = a1;
  v6 = sub_241352FDC();
  v7 = sub_2413540BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_241354A3C();
    v12 = sub_2412DDC2C(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_241215000, v6, v7, "PreviewViewController handleLoadFailure, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CE4870](v9, -1, -1);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  v13 = objc_opt_self();
  v14 = sub_24135138C();
  [v13 sendAnalyticsWithEvent:12 error:v14];

  v15 = sub_241287420();
  sub_2412F7BEC(a1);

  if (*(*(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) != 1)
  {
    goto LABEL_8;
  }

  if (*(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366530;

    *(inited + 32) = REHierarchicalFadeComponentGetComponentType();
    *(inited + 40) = REProjectiveShadowReceiverComponentGetComponentType();
    sub_24124C864(inited, 0.0);

    swift_setDeallocating();
LABEL_8:
    sub_24129AD8C();
    return;
  }

  __break(1u);
}

uint64_t sub_24129A264()
{
  v1 = v0;
  v2 = sub_2413538CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2413538FC();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24135391C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  if ((*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing) & 1) == 0)
  {
    sub_241246158(0, &qword_27E538920);
    v28 = v2;
    v29 = sub_24135416C();
    sub_24135390C();
    sub_24135393C();
    v17 = *(v10 + 8);
    v30 = v10 + 8;
    v31 = v17;
    v17(v13, v9);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2412B3258;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2412D5698;
    aBlock[3] = &block_descriptor_79;
    v26 = _Block_copy(aBlock);

    sub_2413538DC();
    v33 = MEMORY[0x277D84F90];
    sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198]);
    v27 = v9;
    v25 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
    v19 = v32;
    v20 = v8;
    sub_24123D370(&qword_27E539880, &unk_27E538930);
    v21 = v28;
    sub_24135444C();
    v22 = v26;
    v23 = v29;
    MEMORY[0x245CE2500](v16, v20, v5, v26);
    _Block_release(v22);

    (*(v3 + 8))(v5, v21);
    (*(v19 + 8))(v20, v25);
    v31(v16, v27);
  }

  return result;
}

void sub_24129A67C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing] & 1) == 0 && (Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] & 1) == 0)
    {
      Strong[OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered] = 1;
      v4 = Strong;
      v5 = sub_241353EEC();
      (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
      sub_241353ECC();
      v6 = v4;
      v7 = v4;
      v8 = sub_241353EBC();
      v9 = swift_allocObject();
      v10 = MEMORY[0x277D85700];
      v9[2] = v8;
      v9[3] = v10;
      v9[4] = v7;
      sub_241327238(0, 0, v2, &unk_2413674D8, v9);

      v11 = *&v7[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
      if (!v11)
      {
        __break(1u);
        return;
      }

      Strong = v6;
      if (*(*(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 1) == 1)
      {
        sub_241337AB8(1, 1);
        Strong = v6;
      }
    }
  }
}

void sub_24129A898()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "startARSessionOrForceObjectMode() called", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = OBJC_IVAR___ASVPreviewViewControllerInternal_debugAllowsARMode;
  if (*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_debugAllowsARMode) == 1)
  {
    v7 = sub_241287420();
    v8 = v7[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled];

    if (v8)
    {
      v9 = sub_241352FDC();
      v10 = sub_2413540DC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_241215000, v9, v10, "startARSessionOrForceObjectMode() called -- bottom", v11, 2u);
        MEMORY[0x245CE4870](v11, -1, -1);
      }

      if ((*(*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) & 1) == 0)
      {
        sub_2412923E8();
      }

      v12 = sub_241352FDC();
      v13 = sub_2413540DC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_241215000, v12, v13, "Start AR session", v14, 2u);
        MEMORY[0x245CE4870](v14, -1, -1);
      }

      sub_24128987C(0, 3);
      return;
    }
  }

  v15 = sub_241352FDC();
  v16 = sub_2413540DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_241215000, v15, v16, "Starting in Object Mode after file loaded.", v17, 2u);
    MEMORY[0x245CE4870](v17, -1, -1);
  }

  if ((*(v1 + v6) & 1) == 0)
  {
    v18 = sub_241352FDC();
    v19 = sub_2413540DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_241215000, v18, v19, "Force object mode from user default.", v20, 2u);
      MEMORY[0x245CE4870](v20, -1, -1);
    }

    v21 = sub_241287420();
    [v21 enableWorldModeControl_];
  }

  v22 = sub_241352FDC();
  v23 = sub_2413540DC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_241215000, v22, v23, "Force reset to object mode SRT", v24, 2u);
    MEMORY[0x245CE4870](v24, -1, -1);
  }

  v25 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v25)
  {
    __break(1u);
    goto LABEL_36;
  }

  v26 = *(v25 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (!v26)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v27 = v26;
  sub_241247C18(0, 0, 0, 0.0);

  if (*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_previewDidAppearCalled) == 1)
  {

    sub_24129A264();
  }

  else
  {
    v28 = [objc_opt_self() defaultCenter];
    v29 = v28;
    if (qword_27E537B28 != -1)
    {
      swift_once();
      v28 = v29;
    }

    [v28 addObserver:v1 selector:? name:? object:?];
  }
}

id sub_24129AD8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24[-v2];
  v4 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412B30F0(&v0[v7], v6, type metadata accessor for PreviewType);
  v8 = sub_24135164C();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_2412AF7A8(v6, type metadata accessor for PreviewType);
  if (v7 == 1)
  {
    result = [v0 view];
    if (result)
    {
      v10 = result;
      v11 = objc_opt_self();
      v12 = [v11 systemBackgroundColor];
      [v10 setBackgroundColor_];

      result = [v0 view];
      if (result)
      {
        v13 = result;
        v14 = [result window];

        if (v14)
        {
          v15 = [v11 blackColor];
          [v14 setBackgroundColor_];
        }

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_6:
  v16 = sub_2413515EC();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  v17 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
  swift_beginAccess();
  sub_241255BC8(v3, &v0[v17], &qword_27E538868);
  swift_endAccess();
  sub_2412B43D8();
  v18 = sub_241287420();
  v19 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*&v18[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
  v20 = *&v18[v19];
  *&v18[v19] = 0;

  v21 = &v0[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  v22 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_previewCompletionHandler];
  if (v22)
  {

    v22(0);
    sub_2412186FC(v22);
    v23 = *v21;
  }

  else
  {
    v23 = 0;
  }

  *v21 = 0;
  v21[1] = 0;
  return sub_2412186FC(v23);
}

uint64_t sub_24129B0D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages;
  v10 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages);
  if (v10)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_2413544EC();

      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (*(v10 + 16))
    {
LABEL_4:
      *(v1 + v9) = 0;

      sub_24128AB54();
    }
  }

LABEL_5:
  v12 = OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects;
  v13 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects);
  if (!v13)
  {
    goto LABEL_9;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = sub_2413544EC();

    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(v13 + 16))
  {
LABEL_8:
    *(v1 + v12) = 0;

    sub_24128AD50();
  }

LABEL_9:
  sub_241246210(a1, v8, &qword_27E538940);
  v15 = sub_241351DEC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) != 1)
  {
    sub_241246210(v8, v6, &qword_27E538940);
    v17 = (*(v16 + 88))(v6, v15);
    if (v17 == *MEMORY[0x277CDAD60])
    {
      (*(v16 + 96))(v6, v15);
      sub_241280864(*v6);
    }

    else
    {
      if (v17 != *MEMORY[0x277CDAD88])
      {
        (*(v16 + 8))(v6, v15);
        return sub_241246278(v8, &qword_27E538940);
      }

      (*(v16 + 96))(v6, v15);
      sub_241280D8C();
    }
  }

  return sub_241246278(v8, &qword_27E538940);
}

void sub_24129B3BC()
{
  v1 = v0;
  v2 = sub_241287420();
  v3 = *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_bottomControlCapabilities];

  v4 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v5 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6 = (v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata);
  v8 = v6[1];
  v7 = v6[2];
  v9 = *v6;
  v28 = *(v6 + 6);
  v27[1] = v8;
  v27[2] = v7;
  v27[0] = v9;
  v23 = *v6;
  v24 = v6[1];
  v25 = v6[2];
  v26 = *(v6 + 6);

  sub_241255B50(v27, v29);
  sub_241349C30((v3 & 8) != 0, &v23);

  v29[0] = v23;
  v29[1] = v24;
  v29[2] = v25;
  v30 = v26;
  sub_241244AE8(v29);
  if (!*(v1 + v4))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24135316C();

  v10 = *(v1 + v4);
  if (v10)
  {
    v11 = *&v23;
    if (*(*(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState) != 1)
    {
      goto LABEL_9;
    }

    if (qword_27E537CD0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v12 = sub_241352FFC();
      __swift_project_value_buffer(v12, qword_27E53A538);
      v13 = sub_241352FDC();
      v14 = sub_2413540DC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_241215000, v13, v14, "[Animation] Showing animation scrubber view", v15, 2u);
        MEMORY[0x245CE4870](v15, -1, -1);
      }

      v16 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
      sub_2412FA424(2);

      v17.f64[0] = 0.0;
      sub_241281AE0(v11, 0.0, v17);
      v10 = *(v1 + v4);
      if (!v10)
      {
        goto LABEL_27;
      }

LABEL_9:
      if (*(*(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 1) == 1)
      {
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v18 = sub_241352FFC();
        __swift_project_value_buffer(v18, qword_27E53A538);
        v19 = sub_241352FDC();
        v20 = sub_2413540DC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_241215000, v19, v20, "[Animation] Auto playing", v21, 2u);
          MEMORY[0x245CE4870](v21, -1, -1);
        }

        if (!*(v1 + v4))
        {
          goto LABEL_28;
        }

        sub_24134950C(1);
      }

      v22 = ceil(v11);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_21;
      }

      if (v22 < 9.22337204e18)
      {
        *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLongestDuration) = v22;
        return;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_24129B7CC(uint64_t a1)
{
  v2 = v1;
  v100 = sub_2413517DC();
  v4 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v89 - v7;
  v10 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = *(a1 + 24);
  LOBYTE(v11) = *(a1 + 32);
  if (qword_27E537CD0 != -1)
  {
LABEL_79:
    swift_once();
  }

  v12 = sub_241352FFC();
  v13 = __swift_project_value_buffer(v12, qword_27E53A538);
  v14 = sub_241352FDC();
  v15 = sub_2413540DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_241215000, v14, v15, "PreviewViewController.commonFullscreenSetupAfterSceneLoad()", v16, 2u);
    MEMORY[0x245CE4870](v16, -1, -1);
  }

  if (v11)
  {
    v17 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_defaultGravity);
  }

  else
  {
    *&v17 = v10;
    *(&v17 + 1) = isUniquelyReferenced_nonNull_native;
  }

  *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_gravity) = v17;
  sub_24128AF44();
  v18 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v19 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v19)
  {
    goto LABEL_83;
  }

  v20 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  sub_241246210(v19 + v20, v8, &qword_27E538940);
  sub_24129B0D8(v8);
  sub_241246278(v8, &qword_27E538940);
  v21 = *(v2 + v18);
  if (!v21)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v22 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  v93 = v13;
  v97 = v4;
  if (v22 >> 62)
  {
    v23 = sub_2413544EC();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v23)
  {
    goto LABEL_19;
  }

  v104 = MEMORY[0x277D84F90];

  sub_24135466C();
  if (v23 < 0)
  {
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v13 = v18;
  v24 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x245CE29C0](v24, v22);
    }

    else
    {
      v25 = *(v22 + 8 * v24 + 32);
    }

    v26 = v25;
    ++v24;

    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
  }

  while (v23 != v24);

LABEL_19:
  v27 = *(v2 + v18);
  if (!v27)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v92 = v18;
  v28 = *(v27 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  isUniquelyReferenced_nonNull_native = v97;
  if (!v28)
  {
    goto LABEL_86;
  }

  v29 = v28;
  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  v30 = sub_2413523CC();
  swift_unknownObjectRelease();
  v31 = MEMORY[0x277D84F98];
  v104 = MEMORY[0x277D84F98];
  sub_241287784(v30, &v104);

  v13 = v104;
  v32 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping;
  swift_beginAccess();
  *(v2 + v32) = v13;

  v33 = sub_241287498();
  swift_beginAccess();
  *(v33 + 40) = v31;

  v11 = &v13[8];
  v34 = 1 << LOBYTE(v13[4].isa);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v8 = v35 & v13[8].isa;
  v10 = (v34 + 63) >> 6;
  v97 = (isUniquelyReferenced_nonNull_native + 8);
  v98 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___viewportScanner;
  v94 = v13;

  v4 = 0;
  v96 = v2;
  while (v8)
  {
LABEL_31:
    v13 = *(*(v94 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v8)))));
    v2 = *(v2 + v98);

    v38 = v99;
    sub_24135296C();
    sub_2413516FC();
    (*v97)(v38, v100);
    v39 = v103;
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(v2 + 40);
    v40 = v102;
    *(v2 + 40) = 0x8000000000000000;
    v41 = sub_2412FDB74(v39);
    v43 = v40[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v47 = v42;
    if (v40[3] < v46)
    {
      sub_2412A3E80(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_2412FDB74(v39);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_92;
      }

LABEL_36:
      v49 = v102;
      if (v47)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = v41;
    sub_2412A8184();
    v41 = isUniquelyReferenced_nonNull_native;
    v49 = v102;
    if (v47)
    {
LABEL_24:
      v36 = v49[7] + 16 * v41;
      *v36 = 1;
      *(v36 + 8) = v13;
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

LABEL_37:
    v49[(v41 >> 6) + 8] |= 1 << v41;
    *(v49[6] + 8 * v41) = v39;
    v50 = v49[7] + 16 * v41;
    *v50 = 1;
    *(v50 + 8) = v13;
    v51 = v49[2];
    v45 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v45)
    {
      goto LABEL_78;
    }

    v49[2] = v52;
LABEL_25:
    v8 &= v8 - 1;
    *(v2 + 40) = v49;
    swift_endAccess();

    v2 = v96;
  }

  while (1)
  {
    v37 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v37 >= v10)
    {
      break;
    }

    v8 = *(v11 + 8 * v37);
    ++v4;
    if (v8)
    {
      v4 = v37;
      goto LABEL_31;
    }
  }

  v95 = OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy;
  v53 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy);
  if (!v53)
  {
    goto LABEL_87;
  }

  *(v53 + 32) = 1;
  v13 = v2;
  v54 = sub_241352FDC();
  v55 = sub_2413540DC();
  v56 = os_log_type_enabled(v54, v55);
  isUniquelyReferenced_nonNull_native = v92;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *v57 = 67109120;
    v58 = *(v2 + v95);
    if (!v58)
    {
      goto LABEL_91;
    }

    *(v57 + 1) = *(v58 + 32);
    v59 = v57;

    _os_log_impl(&dword_241215000, v54, v55, "Wants extended planes: %{BOOL}d", v59, 8u);
    MEMORY[0x245CE4870](v59, -1, -1);
  }

  else
  {

    v54 = v13;
  }

  v60 = *(v2 + isUniquelyReferenced_nonNull_native);
  if (v60)
  {
    v61 = *(v60 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v61)
    {
      goto LABEL_89;
    }

    v62 = v61;

    *&v62[OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8] = &off_285300698;
    swift_unknownObjectWeakAssign();

    v63 = *(v2 + isUniquelyReferenced_nonNull_native);
    if (v63)
    {
      v64 = *(v63 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
      if (v64 >> 62)
      {
        v65 = sub_2413544EC();
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions;

      v90 = v8;
      swift_beginAccess();
      if (!v65)
      {
LABEL_71:

        return [v13 accessibilityDidSetUpEntityControllers];
      }

      v11 = 0;
      v94 = v64 & 0xC000000000000001;
      v93 = v64 & 0xFFFFFFFFFFFFFF8;
      v92 = v64;
      v91 = v65;
      while (1)
      {
        if (v94)
        {
          v67 = MEMORY[0x245CE29C0](v11, v64);
        }

        else
        {
          if (v11 >= *(v93 + 16))
          {
            goto LABEL_74;
          }

          v67 = *(v64 + 8 * v11 + 32);
        }

        v4 = v67;
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_73;
        }

        *&v67[OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8] = &off_285300698;
        swift_unknownObjectWeakAssign();
        v68 = swift_allocObject();
        *(v68 + 16) = v13;
        v69 = (v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
        v70 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
        *v69 = sub_2412B3408;
        v69[1] = v68;
        v71 = v13;
        sub_2412186FC(v70);
        *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState) = *(v2 + v95);

        v72 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
        if (v72)
        {
          [v72 setAllowObjectScaling_];
        }

        v8 = v13;
        v73 = *(v2 + v98);

        v74 = v99;
        sub_24135296C();
        sub_2413516FC();
        (*v97)(v74, v100);
        v75 = v102;
        swift_beginAccess();
        v4 = v4;
        v2 = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(v73 + 40);
        v76 = v101;
        *(v73 + 40) = 0x8000000000000000;
        isUniquelyReferenced_nonNull_native = sub_2412FDB74(v75);
        v78 = v76[2];
        v79 = (v77 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_75;
        }

        v81 = v77;
        if (v76[3] >= v80)
        {
          if ((v2 & 1) == 0)
          {
            sub_2412A8184();
          }
        }

        else
        {
          sub_2412A3E80(v80, v2);
          v82 = sub_2412FDB74(v75);
          if ((v81 & 1) != (v83 & 1))
          {
            goto LABEL_92;
          }

          isUniquelyReferenced_nonNull_native = v82;
        }

        v2 = v96;
        v84 = v101;
        if (v81)
        {
          v66 = v101[7] + 16 * isUniquelyReferenced_nonNull_native;
          *v66 = 1;
          *(v66 + 8) = v4;
          swift_unknownObjectRelease();
        }

        else
        {
          v101[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
          *(v84[6] + 8 * isUniquelyReferenced_nonNull_native) = v75;
          v85 = v84[7] + 16 * isUniquelyReferenced_nonNull_native;
          *v85 = 1;
          *(v85 + 8) = v4;
          v86 = v84[2];
          v45 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v45)
          {
            goto LABEL_76;
          }

          v84[2] = v87;
        }

        *(v73 + 40) = v84;
        swift_endAccess();

        ++v11;
        v64 = v92;
        v13 = v8;
        if (v10 == v91)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_90;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:

  __break(1u);
LABEL_92:
  result = sub_2413549DC();
  __break(1u);
  return result;
}

uint64_t sub_24129C3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  v5[32] = swift_task_alloc();
  v5[33] = sub_241353ECC();
  v5[34] = sub_241353EBC();
  v7 = sub_241353E8C();
  v5[35] = v7;
  v5[36] = v6;

  return MEMORY[0x2822009F8](sub_24129C4A8, v7, v6);
}

uint64_t sub_24129C4A8()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = sub_241287420();
  v4 = sub_241353EEC();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v3;
  v6 = sub_241353EBC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  *&v5[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_loadingTask] = sub_241241C74(0, 0, v1, &unk_241367360, v7);

  v10 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v0[37] = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v11 = *(v2 + v10);
  v0[38] = v11;
  if (v11)
  {

    v12 = swift_task_alloc();
    v0[39] = v12;
    *v12 = v0;
    v12[1] = sub_24129C64C;
    v13 = v0[31];

    return sub_24124ED04((v0 + 9), (v0 + 2), v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24129C64C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_24129C8CC;
  }

  else
  {

    v6 = *(v2 + 88);
    *(v2 + 128) = *(v2 + 72);
    *(v2 + 144) = v6;
    *(v2 + 160) = *(v2 + 104);
    *(v2 + 176) = *(v2 + 120);
    sub_241244AE8(v2 + 128);
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_24129C7B8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_24129C7B8()
{
  v1 = v0[37];
  v2 = v0[30];
  v3 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  v4 = sub_241288D44();
  sub_2412F8078(v4 & 1);

  if (*(v2 + v1))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366530;
    *(inited + 32) = REHierarchicalFadeComponentGetComponentType();
    *(inited + 40) = REProjectiveShadowReceiverComponentGetComponentType();
    sub_24124C864(inited, 1.0);

    swift_setDeallocating();

    v6 = v0[1];

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24129C8CC()
{
  v1 = *(v0 + 320);

  *(v0 + 232) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D10);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 320);
  if (v3)
  {

    v5 = *(v0 + 232);
  }

  else
  {

    sub_24129A000(v4);
    v5 = v4;
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_24129CA9C()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_241287420();
  v6 = v5[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode];

  if (v6 != 2)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v7 = sub_241352FFC();
    __swift_project_value_buffer(v7, qword_27E53A538);
    v8 = sub_241352FDC();
    v9 = sub_2413540DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_241215000, v8, v9, "ARQL cleanupAfterDisappear", v10, 2u);
      MEMORY[0x245CE4870](v10, -1, -1);
    }

    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_activateCoachingView object:0];
    v11 = sub_241289004();
    [v11 setActive:0 animated:0];

    v12 = (v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
    v13 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
    *v12 = 0;
    v12[1] = 0;
    sub_2412186FC(v13);
    v14 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
    v15 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
    if (v15)
    {
      [v15 invalidate];
      v16 = *(v1 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v1 + v14) = 0;

    *(*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    v17 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v18 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v18)
    {
      v19 = (v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_arViewDelegateForwarded);
      *v19 = 0;
      v19[1] = 0;
      swift_unknownObjectRelease();
      v20 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
      swift_beginAccess();
      sub_2412B30F0(v1 + v20, v4, type metadata accessor for PreviewType);
      v21 = sub_24135164C();
      LODWORD(v20) = (*(*(v21 - 8) + 48))(v4, 1, v21);
      v22 = sub_2412AF7A8(v4, type metadata accessor for PreviewType);
      if (v20 != 1)
      {
LABEL_15:
        v26 = MEMORY[0x245CE3D50](v22);
        sub_24129CE64(v1);
        objc_autoreleasePoolPop(v26);
        sub_241336ED0();
        return;
      }

      v23 = *(v1 + v17);
      if (v23)
      {
        v24 = *(v23 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);
        swift_beginAccess();
        *(v24 + 40) = MEMORY[0x277D84F98];

        v25 = *(v24 + 24);
        if (v25)
        {

          v25(0);
          sub_2412186FC(v25);
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_24129CE64(uint64_t a1)
{
  v3 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241289004();
  [v6 setSession_];

  v7 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController);
  *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController) = 0;

  v8 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater);
  *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___arAnchorTrackedStateUpdater) = 0;
  sub_2412B3544(v8);
  v9 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v10 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v10)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = *(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v11)
  {
    v12 = [v11 session];
    [v12 _removeObserver_];
  }

  v13 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412B30F0(a1 + v13, v5, type metadata accessor for PreviewType);
  v14 = sub_24135164C();
  LODWORD(v13) = (*(*(v14 - 8) + 48))(v5, 1, v14);
  sub_2412AF7A8(v5, type metadata accessor for PreviewType);
  v15 = *(a1 + v9);
  if (v13 == 1)
  {
    if (!v15)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v16)
    {
      v17 = v16;
      sub_24135280C();

      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_38;
      }
    }

    v18 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v18 || (v19 = v18, sub_24135292C(), sub_2413524EC(), , sub_24135243C(), swift_dynamicCastClassUnconditional(), sub_24135241C(), v19, swift_unknownObjectRelease(), sub_2412B3164(&qword_27E5388F0, type metadata accessor for PreviewViewController), sub_2413523AC(), , *(a1 + v9)))
    {

      sub_24124CA78();
    }

    goto LABEL_29;
  }

  if (v15)
  {
    v20 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    v21 = &OBJC_IVAR____TtC11AssetViewer16EntityController_delegate;
    if (v20)
    {
      *(v20 + OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8) = 0;
      swift_unknownObjectWeakAssign();
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_39;
      }
    }

    v50 = v1;
    v22 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v48 = v9;
    v49 = a1;
    if (v22 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
    {

      if (!i)
      {
        break;
      }

      v24 = 0;
      v25 = v22 & 0xC000000000000001;
      v52 = v22 & 0xFFFFFFFFFFFFFF8;
      v51 = v22;
      while (1)
      {
        if (v25)
        {
          v28 = MEMORY[0x245CE29C0](v24, v22);
        }

        else
        {
          if (v24 >= *(v52 + 16))
          {
            goto LABEL_32;
          }

          v28 = *(v22 + 8 * v24 + 32);
        }

        v29 = v28;
        v30 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        *&v28[*v21 + 8] = 0;
        swift_unknownObjectWeakAssign();
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v31 = sub_241352FFC();
        __swift_project_value_buffer(v31, qword_27E53A538);
        v32 = sub_241352FDC();
        v33 = sub_2413540DC();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = v25;
          v35 = i;
          v36 = v21;
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_241215000, v32, v33, "Set shouldDisableGesturesHandler to nil", v37, 2u);
          v38 = v37;
          v21 = v36;
          i = v35;
          v25 = v34;
          v22 = v51;
          MEMORY[0x245CE4870](v38, -1, -1);
        }

        v26 = &v29[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler];
        v27 = *&v29[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler];
        *v26 = 0;
        *(v26 + 1) = 0;
        sub_2412186FC(v27);

        ++v24;
        if (v30 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_28:

    a1 = v49;
    v9 = v48;
LABEL_29:
    v39 = OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping;
    swift_beginAccess();
    v40 = MEMORY[0x277D84F98];
    *(a1 + v39) = MEMORY[0x277D84F98];

    v41 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping;
    swift_beginAccess();
    *(a1 + v41) = v40;

    v42 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping;
    swift_beginAccess();
    *(a1 + v42) = v40;

    v43 = sub_241287498();
    swift_beginAccess();
    *(v43 + 40) = v40;

    v44 = *(a1 + v9);
    if (v44)
    {
      v45 = (v44 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback);
      v46 = *(v44 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback);
      *v45 = 0;
      v45[1] = 0;

      sub_2412186FC(v46);

      *(a1 + v9) = 0;

      return;
    }

    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_24129D468()
{
  v0 = sub_2413538CC();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0);
  v34 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2413538FC();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537BF0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    swift_beginAccess();
    v3 = qword_27E5417B8;
    v4 = *(qword_27E5417B8 + 16);
    if (v4)
    {
      v5 = sub_2412A2808(*(qword_27E5417B8 + 16), 0);
      v6 = sub_2412AAFB4(&aBlock, v5 + 4, v4, v3);
      swift_bridgeObjectRetain_n();
      sub_24121C274();
      if (v6 == v4)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    v5 = MEMORY[0x277D84F90];
LABEL_6:
    aBlock = v5;
    sub_2412A94BC(&aBlock);

    v7 = aBlock;
    v8 = *(aBlock + 2);
    if (!v8)
    {
      break;
    }

    v49 = MEMORY[0x277D84F90];
    sub_2412DE1D4(0, v8, 0);
    v9 = 0;
    v10 = v49;
    v11 = (v7 + 40);
    while (v9 < *(v7 + 2))
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v47 = 0;
      v48 = 0xE000000000000000;
      MEMORY[0x245CE20D0](v12, v13);
      MEMORY[0x245CE20D0](8250, 0xE200000000000000);
      swift_beginAccess();
      v14 = qword_27E5417B8;
      if (*(qword_27E5417B8 + 16) && (v15 = sub_2412FDA14(v12, v13), (v16 & 1) != 0))
      {
        sub_24127C104(*(v14 + 56) + 40 * v15, &v44);
      }

      else
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
      }

      swift_endAccess();
      if (*(&v45 + 1))
      {
        sub_241258074(&v44, &aBlock);
      }

      else
      {
        v41 = MEMORY[0x277D837D0];
        v42 = MEMORY[0x277D83838];
        aBlock = 0;
        v39 = 0xE000000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B38);
      sub_2413546CC();
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v18 = v47;
      v17 = v48;
      v49 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2412DE1D4((v19 > 1), v20 + 1, 1);
        v10 = v49;
      }

      ++v9;
      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v11 += 2;
      if (v8 == v9)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_21:
  aBlock = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
  sub_24123D370(&qword_27E538B10, &qword_27E538B08);
  v22 = sub_241353BAC();
  v24 = v23;

  sub_241246158(0, &qword_27E538920);
  v25 = sub_24135416C();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v24;
  v42 = sub_2412B3654;
  v43 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_2412D5698;
  v41 = &block_descriptor_140;
  v27 = _Block_copy(&aBlock);
  v28 = v32;
  sub_2413538DC();
  *&v44 = MEMORY[0x277D84F90];
  sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  v29 = v34;
  v30 = v37;
  sub_24135444C();
  MEMORY[0x245CE2540](0, v28, v29, v27);
  _Block_release(v27);

  (*(v36 + 8))(v29, v30);
  (*(v33 + 8))(v28, v35);
}

void sub_24129DAB0()
{
  if (qword_27E537BE8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E5417B0;
  v1 = sub_241353BDC();
  [v0 setText_];
}

void sub_24129DB50(void *a1)
{
  sub_24129DCA4(a1);
  if (v2)
  {
    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_activateCoachingView object:0];
    v3 = sub_241289004();
    [v3 setActive:0 animated:1];

    v4 = (v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
    v5 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
    *v4 = 0;
    v4[1] = 0;
    sub_2412186FC(v5);
    v6 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
    v7 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v1 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v1 + v6) = 0;

    v9 = sub_241287420();
    v9[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] = 1;

    [*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) startAutoHideControlsTimer];
  }
}

void sub_24129DC48(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24130EE30(a2);
  }
}

void sub_24129DCA4(void *a1)
{
  v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v4 = v1;
  if (*(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) == 1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v6)
      {
        v7 = a1;
        v8 = v6;
        sub_24135281C();

        sub_24129225C();
        v9 = *(v1 + v2);
        if (v9)
        {
          v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
          if (v10)
          {
            v11 = v10;

            return;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    return;
  }

  v12 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionImages);
  if (v12)
  {
    if ((v12 & 0xC000000000000001) == 0)
    {
      goto LABEL_17;
    }

    v13 = sub_2413544EC();

    if (v13 >= 1)
    {
      while (1)
      {
        v14 = sub_241287420();
        v15 = v14[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

        if (v15)
        {
          break;
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v12 = v4;
        sub_24129DF90();
        v16 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          goto LABEL_31;
        }

        *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage) = v18;
        v19 = *(v4 + v2);
        if (!v19)
        {
          goto LABEL_36;
        }

        if (*(v19 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
        {
          goto LABEL_28;
        }

        __break(1u);
LABEL_17:
        if (*(v12 + 16) < 1)
        {
          goto LABEL_18;
        }
      }

      return;
    }
  }

LABEL_18:
  v20 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_currentDetectionObjects);
  if (!v20)
  {
    return;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {

    v21 = sub_2413544EC();

    if (v21 < 1)
    {
      return;
    }
  }

  else if (*(v20 + 16) < 1)
  {
    return;
  }

  v22 = sub_241287420();
  v23 = v22[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if ((v23 & 1) == 0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24129DF90();
      v24 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject);
      v17 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (!v17)
      {
        *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject) = v25;
        v26 = *(v4 + v2);
        if (v26)
        {
          if (*(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
          {
LABEL_28:

            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }
}

void sub_24129DF90()
{
  v1 = v0;
  v105 = sub_241351DEC();
  v106 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538AA0);
  MEMORY[0x28223BE20](v103);
  v104 = &v99 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v99 - v7;
  MEMORY[0x28223BE20](v9);
  v107 = &v99 - v10;
  v110 = sub_241352B6C();
  v11 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2413517DC();
  v13 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_241352DDC();
  v15 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
LABEL_68:
    swift_once();
  }

  v17 = sub_241352FFC();
  v127 = __swift_project_value_buffer(v17, qword_27E53A538);
  v18 = sub_241352FDC();
  v19 = sub_2413540DC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_241215000, v18, v19, "entityDidPlaceOnARAnchor called", v20, 2u);
    MEMORY[0x245CE4870](v20, -1, -1);
  }

  v123 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v21 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v21)
  {
    goto LABEL_72;
  }

  if (!*(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
  {
    return;
  }

  v22 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  v122 = v22;
  if (v22 >> 62)
  {
    v23 = sub_2413544EC();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v8;
  if (v23)
  {
    v126 = v122 & 0xC000000000000001;
    v114 = v122 & 0xFFFFFFFFFFFFFF8;
    v125 = OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld;
    v119 = (v15 + 8);
    v15 = v122;
    v111 = (v13 + 8);
    v108 = (v11 + 8);

    v11 = 0;
    *&v24 = 134218496;
    v118 = v24;
    v124 = v23;
    while (1)
    {
      if (v126)
      {
        v25 = MEMORY[0x245CE29C0](v11, v15);
      }

      else
      {
        if (v11 >= *(v114 + 16))
        {
          goto LABEL_67;
        }

        v25 = *(v15 + 8 * v11 + 32);
      }

      v13 = v25;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v128 = v11 + 1;
      if ((v25[OBJC_IVAR____TtC11AssetViewer16EntityController_animationID + 8] & 1) == 0)
      {
        v26 = *&v25[OBJC_IVAR____TtC11AssetViewer16EntityController_animationID];
        v27 = *&v25[OBJC_IVAR____TtC11AssetViewer16EntityController_animationManager];
        swift_beginAccess();
        v28 = *(v27 + 40);
        if (*(v28 + 16))
        {
          v29 = sub_2412FD908(v26);
          if (v30)
          {
            v31 = *(*(v28 + 56) + 8 * v29);
            swift_beginAccess();
            v32 = sub_2412FD908(v26);
            v34 = v33;

            if (v34)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v28 = *(v27 + 40);
              v136 = v28;
              *(v27 + 40) = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_2412A7970();
                v28 = v136;
              }

              sub_241339218(v32, v28);
              *(v27 + 40) = v28;
            }

            v36 = swift_endAccess();
            v37 = *(v27 + 24);
            if (v37)
            {
              v38 = *(v28 + 16);

              v37(v38);
              v36 = sub_2412186FC(v37);
            }

            v39 = *(v31 + 48);
            if (v39)
            {
              v39(v36, *(v31 + 24));
            }
          }
        }
      }

      if (v1[v125])
      {
        sub_241352E1C();
        v131 = v40;
        v130 = v41;
        v129 = v42;
        sub_241352C5C();
        v8 = MEMORY[0x277CDB1B8];
        sub_24135195C();
        v43 = v120;
        sub_241352E2C();
        type metadata accessor for RESRT(0);
        sub_241352DCC();
        (*v119)(v43, v121);
        v44 = v133;
        v45 = v134;
        v46 = &v13[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode];
        *v46 = v132;
        *(v46 + 1) = v44;
        *(v46 + 2) = v45;
        if (v13[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI] == 1)
        {
          sub_241352E1C();
          sub_24135195C();
          v130 = v47;
          v131 = v48;
          *&v50 = simd_matrix4x4(v49);
          v132 = v50;
          v133 = v51;
          v134 = v52;
          v135 = v53;
          sub_24135410C();
          sub_241354A8C();
          sub_241354A9C();
          v131 = v135;
          v130 = v134;
          v129 = v133;
          v115 = v132;
          v54 = v112;
          sub_24135296C();
          sub_2413516FC();
          (*v111)(v54, v113);
          REEntityComputeTightMeshBounds();
          HIDWORD(v55) = HIDWORD(v117);
          HIDWORD(v56) = HIDWORD(v116);
          v117 = v55;
          v116 = v56;
        }

        else
        {
          sub_24135191C();
        }

        sub_24135174C();
        v57 = &v13[OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox];
        *v57 = v58;
        *(v57 + 1) = v59;
      }

      else
      {
        v8 = MEMORY[0x277CDB1B8];
      }

      v13 = v13;
      v60 = sub_241352FDC();
      v61 = sub_2413540DC();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = v118;
        sub_241352C5C();
        sub_2413519BC();
        *(v62 + 4) = v63;
        *(v62 + 12) = 2048;
        sub_2413519BC();
        *(v62 + 14) = v64;
        *(v62 + 22) = 2048;
        v15 = v122;
        v8 = MEMORY[0x277CDB1B8];
        sub_2413519BC();
        *(v62 + 24) = v65;
        _os_log_impl(&dword_241215000, v60, v61, "Previous controller.entity.transform: %f,%f, %f", v62, 0x20u);
        MEMORY[0x245CE4870](v62, -1, -1);
      }

      sub_241352E3C();
      v131 = v66;
      v130 = v67;
      v129 = v68;
      sub_241352C5C();
      sub_2413519CC();

      v69 = sub_24135188C();
      if (v69)
      {
        v70 = *&v1[v123];
        if (!v70)
        {
          goto LABEL_71;
        }

        v71 = *(v70 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v71)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          return;
        }

        v72 = *(v71 + qword_27E53A1A0);
        if (v69 == v72)
        {
          goto LABEL_43;
        }

        if (!v72)
        {
          sub_2413518BC();
LABEL_43:

          goto LABEL_44;
        }

        v73 = v109;
        sub_2413518AC();
        sub_241352B5C();

        v74 = v73;
        v15 = v122;
        (*v108)(v74, v110);
      }

LABEL_44:
      v75 = *&v13[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
      if (v75)
      {
        [v75 setEnabledGestureTypes_];
      }

      ++v11;
      if (v128 == v124)
      {

        break;
      }
    }
  }

  if ((v1[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] & 1) == 0)
  {
    v1[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] = 1;
    sub_24128A758();
    sub_24129225C();
  }

  v76 = v105;
  v77 = v107;
  if (v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] == 3)
  {
    v78 = sub_241352FDC();
    v79 = sub_2413540DC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_241215000, v78, v79, "=== Interface state mode already anchored ===", v80, 2u);
      MEMORY[0x245CE4870](v80, -1, -1);
    }
  }

  else
  {
    v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 3;
    [v1 updateInterfaceState];
  }

  v81 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
  swift_beginAccess();
  sub_241246210(&v1[v81], v77, &qword_27E538940);
  v82 = *&v1[v123];
  if (!v82)
  {
    goto LABEL_73;
  }

  v83 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v84 = *(v103 + 48);
  v85 = v104;
  sub_241246210(v77, v104, &qword_27E538940);
  v86 = v82 + v83;
  v87 = v85;
  sub_241246210(v86, v85 + v84, &qword_27E538940);
  v88 = *(v106 + 48);
  if (v88(v85, 1, v76) == 1)
  {
    sub_241246278(v77, &qword_27E538940);
    if (v88(v85 + v84, 1, v76) == 1)
    {
      sub_241246278(v85, &qword_27E538940);
      return;
    }
  }

  else
  {
    v89 = v100;
    sub_241246210(v85, v100, &qword_27E538940);
    if (v88(v85 + v84, 1, v76) != 1)
    {
      v94 = v106;
      v95 = v87 + v84;
      v96 = v101;
      (*(v106 + 32))(v101, v95, v76);
      sub_2412B3164(&qword_27E538AA8, MEMORY[0x277CDADA8]);
      v97 = sub_241353BCC();
      v98 = *(v94 + 8);
      v98(v96, v76);
      sub_241246278(v107, &qword_27E538940);
      v98(v89, v76);
      sub_241246278(v87, &qword_27E538940);
      if (v97)
      {
        return;
      }

      goto LABEL_61;
    }

    sub_241246278(v107, &qword_27E538940);
    (*(v106 + 8))(v89, v76);
  }

  sub_241246278(v85, &qword_27E538AA0);
LABEL_61:
  v90 = *&v1[v123];
  if (!v90)
  {
    goto LABEL_74;
  }

  v91 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v92 = v90 + v91;
  v93 = v102;
  sub_241246210(v92, v102, &qword_27E538940);
  swift_beginAccess();
  sub_241255BC8(v93, &v1[v81], &qword_27E538940);
  swift_endAccess();
}

void sub_24129EFAC()
{
  *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing) = 1;
  sub_2412EFFE0();
  v1 = sub_241287420();
  v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode] = 1;

  v2 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  v3 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  v4 = *&v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer];
  v5 = v2;
  [v4 invalidate];
  v6 = *&v2[v3];
  *&v2[v3] = 0;

  sub_2412A0224();
}

void sub_24129F054(char a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  LOBYTE(v5) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_2413515EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  if ((v4 & 1) == 0)
  {
LABEL_21:
    if ((v5 & 1) == 0)
    {
      if (*(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) == 1)
      {

        sub_241290C40();
      }

      return;
    }

    sub_241291524();
    v28 = (v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode);
    v29 = *(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode);
    v30 = __OFADD__(v29, 1);
    v17 = v29 + 1;
    if (!v30)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_25:
    if (!v17)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v31 = *(v17 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v31)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v3 = v14;
    [*(v31 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) cancelDeceleration];
    v23 = v43;
    sub_2412923E8();
    v28 = (v23 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode);
    if (!*(v23 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode))
    {
      v32 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate;
      v23 = v43;
      swift_beginAccess();
      sub_241246210(v23 + v32, v8, &qword_27E538868);
      if ((*(v10 + 48))(v8, 1, v3) == 1)
      {
        v14 = sub_241246278(v8, &qword_27E538868);
      }

      else
      {
        (*(v10 + 32))(v16, v8, v3);
        sub_2413515DC();
        v33 = v23;
        v23 = v13;
        sub_24135157C();
        v35 = v34;
        v36 = *(v10 + 8);
        v36(v13, v3);
        v14 = (v36)(v16, v3);
        *(v33 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimeInObjectModeBeforeFirstTapARMode) = v35;
      }
    }

    v17 = *v28 + 1;
    if (__OFADD__(*v28, 1))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      v4 = sub_2413544EC();
      goto LABEL_10;
    }

    v3 = v43;
LABEL_40:
    *v28 = v17;
    v37 = sub_241287420(v14);
    v38 = *&v37[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_backgroundDimmingView];

    [v38 setHidden_];
    if (v5)
    {
      v39 = *(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
      *&v39[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTriggerAffordance] = 0;
      [v39 updateStatusPill];
      v40 = *(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
      if (!v40)
      {
LABEL_57:
        __break(1u);
        return;
      }

      if ((*(v40 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) & 1) == 0)
      {
        sub_24128ED54();
      }
    }

    sub_24129F5F4(v4 & 1);
    return;
  }

  v42 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v43 = v2;
  v17 = *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if ((v5 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v17)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v18 = *(v17 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (!v18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [*(v18 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) cancelDeceleration];
  v19 = *&v2[v42];
  if (!v19)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v20 = *(v19 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (!v20)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v21 = v20;
  sub_241247C18(0, 0, 0, 0.35);

  v22 = *(v3 + v42);
  if (!v22)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v23 = *(v22 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v23 >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  if (v4)
  {
    v5 = 0;
    v10 = v23 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v8 = MEMORY[0x245CE29C0](v5, v23);
        v13 = v43;
        v24 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {
        v13 = v43;
        if (v5 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_47;
        }

        v8 = *(v23 + 8 * v5 + 32);
        v24 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      v25 = *&v13[v42];
      if (!v25)
      {
        break;
      }

      v16 = *&v8[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
      v26 = *&v8[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8];
      v3 = *(v25 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);

      sub_24133B4B4(v27, v16, v26);

      ++v5;
      if (v24 == v4)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_34:
}

uint64_t sub_24129F5F4(int a1)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-v7];
  v9 = sub_2413515EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v22[-v14];
  v16 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate;
  swift_beginAccess();
  sub_241246210(v2 + v16, v8, &qword_27E538868);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_241246278(v8, &qword_27E538868);
  }

  (*(v10 + 32))(v15, v8, v9);
  sub_2413515DC();
  sub_24135157C();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v13, v9);
  v21 = &OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsObjectModeDuration;
  if ((v23 & 1) == 0)
  {
    v21 = &OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARModeDuration;
  }

  *(v2 + *v21) = v19 + *(v2 + *v21);
  sub_2413515DC();
  v20(v15, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  swift_beginAccess();
  sub_241255BC8(v6, v2 + v16, &qword_27E538868);
  return swift_endAccess();
}

void sub_24129F8C0()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "Share button pressed", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = sub_241287420();
  v7 = v6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode];

  if (v7 != 1 && (sub_2412A0404() & 1) != 0)
  {
    [objc_opt_self() sendAnalyticsWithEvent_];
    v8 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
    v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode] = 2;
    v9 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
    v10 = *&v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer];
    v11 = v8;
    [v10 invalidate];
    v12 = *&v8[v9];
    *&v8[v9] = 0;
  }
}

uint64_t sub_24129FA78(char *a1)
{
  v2 = v1;
  v29 = sub_2413517DC();
  v4 = *(v29 - 8);
  result = MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v8 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v8)
  {
    __break(1u);
    goto LABEL_36;
  }

  v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v32 = MEMORY[0x277D84F90];

    v12 = &v32;
    sub_24135466C();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v30 = a1;
    v31 = v2;
    v13 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x245CE29C0](v13, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;

      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
    }

    while (v10 != v13);

    v2 = v31;
    v11 = v32;
    a1 = v30;
  }

  v16 = sub_24131268C(v11);

  v30 = v16;
  if (v16)
  {
    v17 = *&v2[v7];
    if (v17)
    {
      v12 = *(v17 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
      if (!(v12 >> 62))
      {
        v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

        if (v18)
        {
          v19 = 0;
          v26 = v12 & 0xFFFFFFFFFFFFFF8;
          v27 = v12 & 0xC000000000000001;
          v24 = v12;
          v25 = v4 + 8;
          v20 = (v4 + 8);
          do
          {
            if (v27)
            {
              v21 = MEMORY[0x245CE29C0](v19, v12);
              v9 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
LABEL_26:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v19 >= *(v26 + 16))
              {
                __break(1u);
LABEL_32:
                v10 = sub_2413544EC();
                goto LABEL_4;
              }

              v21 = *(v12 + 8 * v19 + 32);
              v9 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                goto LABEL_26;
              }
            }

            a1 = v28;
            v2 = v21;
            sub_24135296C();
            v4 = MEMORY[0x277D841D8];
            sub_2413516FC();
            v22 = *v20;
            v7 = v29;
            (*v20)(a1, v29);
            v31 = v32;
            sub_24135296C();
            sub_2413516FC();
            v22(a1, v7);
            if (v31 == v32)
            {

              return v2;
            }

            ++v19;
            v12 = v24;
          }

          while (v9 != v18);
        }

        return 0;
      }

LABEL_34:
      v18 = sub_2413544EC();
      goto LABEL_16;
    }

LABEL_36:
    __break(1u);
    return result;
  }

  return 0;
}

void sub_24129FE0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_241351DEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = sub_241287420();
  v12 = v11[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if ((v12 & 1) != 0 || *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) != 1)
  {
    if (*(*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) == 1)
    {

      sub_24129225C();
    }
  }

  else
  {
    sub_24129225C();
    v13 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v13)
    {
      __break(1u);
      return;
    }

    if ((*(v13 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) & 1) == 0)
    {
      v14 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
      swift_beginAccess();
      sub_241246210(v0 + v14, v3, &qword_27E538940);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_241246278(v3, &qword_27E538940);
LABEL_13:
        sub_24130F64C();
        return;
      }

      v15 = *(v5 + 32);
      v15(v10, v3, v4);
      v15(v8, v10, v4);
      v16 = (*(v5 + 88))(v8, v4);
      v17 = *MEMORY[0x277CDAD60];
      (*(v5 + 8))(v8, v4);
      if (v16 != v17 && v16 != *MEMORY[0x277CDAD88])
      {
        goto LABEL_13;
      }
    }
  }
}

void sub_2412A00E8(uint64_t a1)
{
  v3 = sub_241287420();
  v4 = v3[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if (v4 == 1)
  {
    v5 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
    v6 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
    if (v6)
    {
      [v6 invalidate];
      v6 = *(v1 + v5);
    }

    *(v1 + v5) = 0;
  }

  else
  {
    v7 = sub_241351DEC();
    if ((*(*(v7 - 8) + 48))(a1, 1, v7) != 1)
    {
      v8 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
      v9 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
      if (v9)
      {
        [v9 invalidate];
        v10 = *(v1 + v8);
      }

      else
      {
        v10 = 0;
      }

      *(v1 + v8) = 0;

      sub_2412C7010(0.1);
    }
  }
}

void sub_2412A0224()
{
  v1 = v0;
  sub_241352C5C();
  sub_241352BFC();
  sub_241337AB8(0, 1);
  v2 = sub_241287420();
  v3 = v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if (v3 != 1)
  {
LABEL_5:

    PreviewViewController.dismissPreviewController()();
    return;
  }

  v4 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!*(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController))
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_241259340())
  {
    goto LABEL_5;
  }

  v5 = *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (v5)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v5;

    sub_241247C18(0, sub_2412B315C, v6, 0.35);
  }
}

void sub_2412A03B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    PreviewViewController.dismissPreviewController()();
  }
}

uint64_t sub_2412A0404()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_24135152C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412B30F0(&v0[v15], v14, type metadata accessor for PreviewType);
  if ((*(v2 + 48))(v14, 1, v1) == 1)
  {
    v16 = OBJC_IVAR___ASVPreviewViewControllerInternal_fileURL;
    swift_beginAccess();
    sub_241246210(&v0[v16], v7, &qword_27E538750);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_241246278(v7, &qword_27E538750);
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v17 = sub_241352FFC();
      __swift_project_value_buffer(v17, qword_27E53A538);
      v18 = sub_241352FDC();
      v19 = sub_2413540BC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_241215000, v18, v19, "fileURL should not be nil", v20, 2u);
        MEMORY[0x245CE4870](v20, -1, -1);
      }

      return 0;
    }

    (*(v9 + 32))(v11, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D20);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_241365EA0;
    *(v44 + 56) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v44 + 32));
    (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
    v46 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v47 = sub_241353E1C();

    v48 = [v46 initWithActivityItems:v47 applicationActivities:0];

    v49 = [v48 popoverPresentationController];
    if (v49)
    {
      v50 = v49;
      v51 = sub_241287420();
      v52 = [v51 navigationItem];

      v53 = [v52 rightBarButtonItem];
      [v50 setBarButtonItem_];
    }

    [v0 presentViewController:v48 animated:1 completion:0];

    (*(v9 + 8))(v11, v8);
    return 1;
  }

  else
  {
    (*(v2 + 32))(v4, v14, v1);
    v21 = *&v0[OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock];
    if (!v21)
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v54 = sub_241352FFC();
      __swift_project_value_buffer(v54, qword_27E53A538);
      v55 = sub_241352FDC();
      v56 = sub_2413540BC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_241215000, v55, v56, "shareSheetReplyBlock is nil, cannot show share sheet", v57, 2u);
        MEMORY[0x245CE4870](v57, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      return 0;
    }

    result = [v0 view];
    if (result)
    {
      v23 = result;
      [result frame];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v59.origin.x = v25;
      v59.origin.y = v27;
      v59.size.width = v29;
      v59.size.height = v31;
      v32 = CGRectGetWidth(v59) + -60.0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_241365EA0;
      *(inited + 32) = 0x656D617266;
      *(inited + 40) = 0xE500000000000000;
      v60.size.width = 44.0;
      v60.origin.y = 20.0;
      v60.origin.x = v32;
      v60.size.height = 44.0;
      v34 = NSStringFromCGRect(v60);
      v35 = sub_241353C0C();
      v37 = v36;

      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v35;
      *(inited + 56) = v37;
      v38 = sub_241245974(inited);
      swift_setDeallocating();
      sub_241246278(inited + 32, &unk_27E538A20);
      v39 = sub_2412EDE54(v38);

      v21(v39, v4);

      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v40 = sub_241352FFC();
      __swift_project_value_buffer(v40, qword_27E53A538);
      v41 = sub_241352FDC();
      v42 = sub_2413540BC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_241215000, v41, v42, "Requested show share sheet", v43, 2u);
        MEMORY[0x245CE4870](v43, -1, -1);
      }

      sub_2412186FC(v21);

      (*(v2 + 8))(v4, v1);
      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2412A0CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_241353ECC();
  *(v4 + 24) = sub_241353EBC();
  v6 = sub_241353E8C();

  return MEMORY[0x2822009F8](sub_2412A0D58, v6, v5);
}

void sub_2412A0D58()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v2 = *(*(v0 + 16) + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245CE29C0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_24133D85C(*&v6[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8]);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_13:

  v9 = *(v13 + v1);
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v10)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v11 = v10;

  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  sub_241351C5C();
  swift_allocObject();
  sub_241351C4C();
  sub_2413523EC();

  swift_unknownObjectRelease();
  v12 = *(v0 + 8);

  v12();
}

void PreviewViewController.addDismissButtonTarget(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_241287420();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_additionalDismissObservers;
  swift_beginAccess();
  v7 = *&v4[v6];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v6] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2412A1DF4(0, v7[2] + 1, 1, v7, &qword_27E538AD8, &unk_241367610, &qword_27E538AE0);
    *&v4[v6] = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2412A1DF4((v9 > 1), v10 + 1, 1, v7, &qword_27E538AD8, &unk_241367610, &qword_27E538AE0);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_241255F00;
  v11[5] = v5;
  *&v4[v6] = v7;
  swift_endAccess();
}

char *sub_2412A1324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A1444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2412A1548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A167C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2412A17F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A30);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_2412A18FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2412A1A28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388A8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5388B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A1B5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_2412A1C9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2412A1DF4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_2412A1F50(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_2412A212C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538728);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A2260(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2412A2364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A2480(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2412A25A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412A26E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2412A2808(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538890);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2412A288C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2412A2914(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2412FD908(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2412A7970();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_241339218(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_2412A299C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_2412FDC20(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_24133951C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_2412A85BC();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_24135478C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2413544EC();
  v8 = sub_24126DDFC(v4, v7);

  v9 = sub_2412FDC20(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_24133951C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}