void _s11AssetViewer21PreviewViewControllerC19previewDidDisappearyySbF_0()
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
    _os_log_impl(&dword_241215000, v1, v2, "ARQL previewDidDisappear", v3, 2u);
    MEMORY[0x245CE4870](v3, -1, -1);
  }

  sub_24129CA9C();
}

void sub_2412B0244()
{
  v1 = v0;
  v2 = type metadata accessor for ModelCustomizationOptions(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-8] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v8 = 0;
    _os_log_impl(&dword_241215000, v6, v7, "Checkout button pressed", v8, 2u);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  v1[OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsDidCloseByTappingOnCheckout] = 1;
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
  inited = swift_initStackObject();
  v20 = xmmword_241365EA0;
  *(inited + 16) = xmmword_241365EA0;
  v22 = sub_241353C0C();
  v23 = v11;
  sub_24135456C();
  v12 = OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions;
  swift_beginAccess();
  sub_2412B30F0(&v1[v12], v4, type metadata accessor for ModelCustomizationOptions);
  v13 = sub_241304BB8();
  v15 = v14;
  sub_2412AF7A8(v4, type metadata accessor for ModelCustomizationOptions);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380F0);
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  sub_241244BF0(inited);
  swift_setDeallocating();
  sub_241246278(inited + 32, &unk_27E538730);
  v16 = sub_241353B4C();

  [v9 sendAnalyticsWithEvent:6 payloadDict:v16];

  sub_24129EFAC();
  v17 = swift_initStackObject();
  *(v17 + 16) = v20;
  strcpy(v21, "callToAction");
  HIBYTE(v21[6]) = 0;
  v21[7] = -5120;
  v18 = MEMORY[0x277D837D0];
  sub_24135456C();
  *(v17 + 96) = v18;
  strcpy((v17 + 72), "buttonTapped");
  *(v17 + 85) = 0;
  *(v17 + 86) = -5120;
  sub_241244BF0(v17);
  swift_setDeallocating();
  sub_241246278(v17 + 32, &unk_27E538730);
  v19 = sub_241353B4C();

  [v1 forwardMessageToHost:v19 completionHandler:0];
}

void sub_2412B060C()
{
  if (qword_27E537C90 != -1)
  {
    swift_once();
  }

  if (*(qword_27E5418F0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state))
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v1 = sub_241352FFC();
    __swift_project_value_buffer(v1, qword_27E53A538);
    oslog = sub_241352FDC();
    v2 = sub_2413540BC();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "overlayControllerShutterButtonDidStartLongPress Error: _startRecording called when recording";
LABEL_12:
      _os_log_impl(&dword_241215000, oslog, v2, v4, v3, 2u);
      MEMORY[0x245CE4870](v3, -1, -1);
    }
  }

  else
  {
    v0[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 5;
    [v0 updateInterfaceState];
    sub_2412ED8EC();
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v5 = sub_241352FFC();
    __swift_project_value_buffer(v5, qword_27E53A538);
    oslog = sub_241352FDC();
    v2 = sub_2413540DC();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "overlayControllerShutterButtonDidStartLongPress _startRecording";
      goto LABEL_12;
    }
  }
}

void sub_2412B07F8()
{
  if (qword_27E537C90 != -1)
  {
    swift_once();
  }

  if (*(qword_27E5418F0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state) == 2)
  {
    v0[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 3;
    [v0 updateInterfaceState];
    sub_2412EDCB0();
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v1 = sub_241352FFC();
    __swift_project_value_buffer(v1, qword_27E53A538);
    oslog = sub_241352FDC();
    v2 = sub_2413540DC();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "overlayControllerShutterButtonDidStopLongPress _stopRecording";
LABEL_12:
      _os_log_impl(&dword_241215000, oslog, v2, v4, v3, 2u);
      MEMORY[0x245CE4870](v3, -1, -1);
    }
  }

  else
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v5 = sub_241352FFC();
    __swift_project_value_buffer(v5, qword_27E53A538);
    oslog = sub_241352FDC();
    v2 = sub_2413540BC();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "overlayControllerShutterButtonDidStopLongPress Error: _stopRecording called when not recording";
      goto LABEL_12;
    }
  }
}

void sub_2412B09E8()
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
    _os_log_impl(&dword_241215000, v3, v4, "runtimeSceneCoordinator:willSwapFromEntity() called", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_onStartInteractionTriggered) = 0;
}

BOOL sub_2412B0AD0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v36 = a3;
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_241351DEC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  sub_241246210(a1, v9, &qword_27E538940);
  v22 = *(v11 + 48);
  if (v22(v9, 1, v10) == 1)
  {
    v23 = v9;
LABEL_5:
    sub_241246278(v23, &qword_27E538940);
    return 0;
  }

  v24 = v9;
  v25 = *(v11 + 32);
  v25(v21, v24, v10);
  sub_241246210(v37, v7, &qword_27E538940);
  if (v22(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v21, v10);
    v23 = v7;
    goto LABEL_5;
  }

  v27 = v25;
  v25(v19, v7, v10);
  v25(v16, v21, v10);
  v28 = *(v11 + 88);
  v29 = v28(v16, v10);
  v30 = *(v11 + 8);
  if (v29 == *v36)
  {
    v31 = v29;
    v30(v16, v10);
    v32 = v35;
    v27(v35, v19, v10);
    v33 = v28(v32, v10) == v31;
    v30(v32, v10);
    return v33;
  }

  v30(v19, v10);
  v30(v16, v10);
  return 0;
}

void sub_2412B0E54(char *a1, uint64_t a2)
{
  v187 = a2;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538AA0);
  MEMORY[0x28223BE20](v177);
  v4 = v165 - v3;
  v193.i64[0] = sub_241352DDC();
  v5 = *(v193.i64[0] - 8);
  MEMORY[0x28223BE20](v193.i64[0]);
  v192 = v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_241351DEC();
  v180 = *(v183 - 8);
  v7 = MEMORY[0x28223BE20](v183);
  v173 = v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v175 = v165 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v174 = v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v165 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v176 = v165 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v186 = v165 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v179 = v165 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v172 = (v165 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v178 = v165 - v25;
  MEMORY[0x28223BE20](v24);
  v185 = v165 - v26;
  v198.i64[0] = sub_241352B6C();
  v197.i64[0] = *(v198.i64[0] - 8);
  MEMORY[0x28223BE20](v198.i64[0]);
  v28 = v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538AE8);
  v188 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v30 = v165 - v29;
  v191 = sub_2413524DC();
  v190 = *(v191 - 8);
  v31 = MEMORY[0x28223BE20](v191);
  v33 = v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v189 = v165 - v34;
  if (qword_27E537CD0 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v35 = sub_241352FFC();
    v184 = __swift_project_value_buffer(v35, qword_27E53A538);
    v36 = sub_241352FDC();
    v37 = sub_2413540DC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_241215000, v36, v37, "runtimeSceneCoordinator:didSwapFromEntity() called", v38, 2u);
      MEMORY[0x245CE4870](v38, -1, -1);
    }

    if (!a1)
    {
      return;
    }

    v195.i64[0] = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v39 = *(v194.i64[0] + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v39)
    {
      goto LABEL_116;
    }

    v170 = v5;
    v171 = v15;
    v169 = v4;
    v40 = *(v39 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v40)
    {
      goto LABEL_117;
    }

    v182 = a1;

    v41 = v40;
    v42 = sub_24135292C();

    v43 = v189;
    v181 = v42;
    sub_24135250C();
    (*(v190 + 16))(v33, v43, v191);
    sub_2412B3164(&qword_27E538AF0, MEMORY[0x277CDB0C0]);
    sub_241353DAC();
    sub_24123D370(&qword_27E538AF8, &qword_27E538AE8);
    sub_24135437C();
    v44 = v199;
    if (!v199)
    {
LABEL_11:
      v188[1](v30, v196);
      (*(v190 + 8))(v189, v191);

      v46 = sub_241352FDC();
      v47 = sub_2413540BC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v199 = v49;
        *v48 = 136315138;
        v50 = sub_2413524FC();
        v52 = sub_2412DDC2C(v50, v51, &v199);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_241215000, v46, v47, "New scene '%s' doesn't have any entities", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x245CE4870](v49, -1, -1);
        MEMORY[0x245CE4870](v48, -1, -1);
      }

      else
      {
      }

LABEL_14:

      return;
    }

    v197.i64[0] += 8;
    v45 = v198.i64[0];
    while (1)
    {
      sub_2413518AC();
      sub_2412B3164(&qword_27E538B00, MEMORY[0x277CDB190]);
      sub_24135403C();
      sub_24135406C();
      v15 = *v197.i64[0];
      (*v197.i64[0])(v28, v45);
      if (v204 != v203)
      {
        break;
      }

      sub_24135437C();
      v44 = v199;
      if (!v199)
      {
        goto LABEL_11;
      }
    }

    v188[1](v30, v196);
    (*(v190 + 8))(v189, v191);
    v30 = v194.i64[0];
    v53 = sub_24129FA78(v182);
    if (!v53)
    {
      v74 = sub_241352FDC();
      v75 = sub_2413540BC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_241215000, v74, v75, "Change scene action resulted in a switchedToEntity that does not belong to any of our entity controllers", v76, 2u);
        MEMORY[0x245CE4870](v76, -1, -1);
      }

      goto LABEL_14;
    }

    v54 = v53;
    v55 = sub_241352FDC();
    v56 = sub_2413540DC();
    v57 = os_log_type_enabled(v55, v56);
    v168 = v54;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v199 = v59;
      *v58 = 136315138;
      v60 = sub_241352C0C();
      v62 = sub_2412DDC2C(v60, v61, &v199);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_241215000, v55, v56, "Using entityController: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      v63 = v59;
      v54 = v168;
      MEMORY[0x245CE4870](v63, -1, -1);
      MEMORY[0x245CE4870](v58, -1, -1);
    }

    v64 = *&v54[OBJC_IVAR____TtC11AssetViewer16EntityController_entity];
    v65 = sub_241352C5C();

    sub_24135193C();
    v165[3] = v66;
    v165[2] = v67;
    v165[1] = v68;
    v165[0] = v69;
    v196 = v65;
    v167 = v64;
    sub_2413518AC();
    sub_241311EC4(1, v28);
    (v15)(v28, v198.i64[0]);
    sub_241246210(v187, v185, &qword_27E538940);
    v70 = *(v30 + v195.i64[0]);
    if (!v70)
    {
      goto LABEL_118;
    }

    v191 = v44;
    v71 = v178;
    if (*(v70 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) == 1)
    {
      v72 = v185;
      sub_241246278(v185, &qword_27E538940);
      v73 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
      swift_beginAccess();
      sub_241246210(v70 + v73, v72, &qword_27E538940);
      v78 = v183;
      v77 = v180;
    }

    else
    {
      sub_241246210(v185, v178, &qword_27E538940);
      v77 = v180;
      v78 = v183;
      v79 = (*(v180 + 48))(v71, 1, v183);
      if (v79 == 1)
      {
        sub_241246278(v71, &qword_27E538940);
        v72 = v185;
      }

      else
      {
        v80 = (*(v77 + 88))(v71, v78);
        v81 = *MEMORY[0x277CDAD58];
        (*(v180 + 8))(v71, v183);
        v82 = v80 == v81;
        v77 = v180;
        v78 = v183;
        v72 = v185;
        if (v82)
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A930);
          v84 = v172;
          v85 = v172 + *(v83 + 64);
          sub_241351DBC();
          sub_241351D8C();
          sub_241246278(v72, &qword_27E538940);
          *v85 = 0;
          (*(v180 + 104))(v84, *MEMORY[0x277CDAD68], v183);
          (*(v180 + 56))(v84, 0, 1, v183);
          v77 = v180;
          v78 = v183;
          sub_24127EFF0(v84, v72, &qword_27E538940);
        }
      }
    }

    v86 = v179;
    sub_241246210(v72, v179, &qword_27E538940);
    v87 = *(v77 + 48);
    if (v87(v86, 1, v78) == 1)
    {
      sub_241246278(v86, &qword_27E538940);
    }

    else
    {
      v88 = v175;
      (*(v77 + 32))(v175, v86, v78);
      if (sub_24131487C(v88))
      {
        sub_24135192C();
      }

      (*(v77 + 8))(v88, v78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_241365C30;
    v179 = v89;
    *(v89 + 32) = v182;
    v90 = v185;
    v91 = v186;
    sub_241246210(v185, v186, &qword_27E538940);
    v92 = v87(v91, 1, v183);
    v172 = v87;
    v93 = v92;

    sub_241246278(v91, &qword_27E538940);
    v166 = v77 + 48;
    if (v93 == 1)
    {
      v94 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A60);
      v95 = v180;
      v96 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_241365EA0;
      v97 = v176;
      sub_241246210(v90, v176, &qword_27E538940);
      v98 = v183;
      if (v172(v97, 1, v183) == 1)
      {
        goto LABEL_125;
      }

      (*(v95 + 32))(v94 + v96, v97, v98);
    }

    v99 = sub_24135252C();
    if (v101)
    {
      v102 = *(v30 + OBJC_IVAR___ASVPreviewViewControllerInternal_defaultGravity);
      v103 = *(v30 + OBJC_IVAR___ASVPreviewViewControllerInternal_defaultGravity + 8);
    }

    else
    {
      v102 = v99;
      v103 = v100;
    }

    v178 = v94;
    a1 = MEMORY[0x277D84F90];
    v176 = sub_2412452E4(MEMORY[0x277D84F90]);
    v104 = v195.i64[0];
    v105 = *(v30 + v195.i64[0]);
    if (!v105)
    {
      goto LABEL_119;
    }

    v106 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
    swift_beginAccess();
    sub_241246210(v105 + v106, v171, &qword_27E538940);
    sub_24130EC70();
    v107 = sub_241287498();
    swift_beginAccess();
    *(v107 + 40) = MEMORY[0x277D84F98];

    v33 = v191;
    if (!*(v30 + v104))
    {
      goto LABEL_120;
    }

    v4 = v104;
    *&v199 = v179;
    *(&v199 + 1) = v178;
    *&v200 = v102;
    *(&v200 + 1) = v103;
    LOBYTE(v201) = 0;
    *(&v201 + 1) = a1;
    v202 = v176;

    sub_24125108C(&v199);

    v108 = *(v30 + v104);
    v109 = v170;
    if (!v108)
    {
      goto LABEL_121;
    }

    v110 = *(v108 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v110 >> 62)
    {
      v5 = sub_2413544EC();
    }

    else
    {
      v5 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      a1 = 0;
      v190 = v110 & 0xC000000000000001;
      v189 = (v110 & 0xFFFFFFFFFFFFFF8);
      v188 = (v109 + 8);
      v186 = v5;
      v187 = v110;
      while (1)
      {
        if (v190)
        {
          v111 = MEMORY[0x245CE29C0](a1, v110);
        }

        else
        {
          if (a1 >= *(v189 + 2))
          {
            goto LABEL_105;
          }

          v111 = *(v110 + 8 * a1 + 32);
        }

        v5 = v111;
        v112 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v113 = *&v4[v30];
        if (!v113)
        {
          break;
        }

        v114 = *(v113 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v114)
        {
          goto LABEL_112;
        }

        v115 = v114;
        sub_24135292C();
        v116 = sub_2413524BC();

        if (!v116)
        {
          goto LABEL_113;
        }

        sub_2413518AC();
        sub_241352B5C();

        (v15)(v28, v198.i64[0]);
        sub_2413519BC();
        v117 = v192;
        sub_241352E2C();
        type metadata accessor for RESRT(0);
        sub_241352DCC();
        (*v188)(v117, v193.i64[0]);
        v118 = v200;
        v119 = v201;
        v120 = &v5[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode];
        *v120 = v199;
        *(v120 + 1) = v118;
        *(v120 + 2) = v119;
        v30 = v194.i64[0];
        v121 = *(v194.i64[0] + v195.i64[0]);
        if (!v121)
        {
          goto LABEL_114;
        }

        v122 = *(v121 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v122)
        {
          goto LABEL_115;
        }

        if (*(v122 + qword_27E53A1A0))
        {

          sub_2413518AC();
          sub_241352B5C();

          (v15)(v28, v198.i64[0]);
        }

        else
        {
          sub_2413518BC();
        }

        v33 = v191;

        ++a1;
        v82 = v112 == v186;
        v4 = v195.i64[0];
        v110 = v187;
        if (v82)
        {
          goto LABEL_64;
        }
      }

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
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

LABEL_64:

    v123 = *&v4[v30];
    if (!v123)
    {
      goto LABEL_122;
    }

    if (!*(v123 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
    {
      goto LABEL_123;
    }

    sub_24135187C();

    sub_24135187C();
    v124 = *&v4[v30];
    if (!v124)
    {
      goto LABEL_124;
    }

    v125 = *(v124 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v126 = v125 >> 62 ? sub_2413544EC() : *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v126)
    {
      break;
    }

    v127 = 0;
    v4 = (v125 & 0xC000000000000001);
    v28 = (v125 & 0xFFFFFFFFFFFFFF8);
    v15 = &OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager;
    while (1)
    {
      if (v4)
      {
        v128 = MEMORY[0x245CE29C0](v127, v125);
      }

      else
      {
        if (v127 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        v128 = *(v125 + 8 * v127 + 32);
      }

      a1 = v128;
      v5 = (v127 + 1);
      if (__OFADD__(v127, 1))
      {
        break;
      }

      sub_24133D85C(*&v128[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8]);

      ++v127;
      if (v5 == v126)
      {
        goto LABEL_78;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

LABEL_78:

  v129 = sub_24129FA78(v182);
  if (v129)
  {
    v130 = v129;

    sub_2413518CC();

    v131 = v169;
    v132 = v171;
  }

  else
  {
    v133 = sub_241352FDC();
    v134 = sub_2413540BC();
    v135 = os_log_type_enabled(v133, v134);
    v131 = v169;
    v132 = v171;
    if (v135)
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_241215000, v133, v134, "Change scene action after setup is unable to find a to entity controllers", v136, 2u);
      MEMORY[0x245CE4870](v136, -1, -1);
    }
  }

  v137 = sub_241287420();
  v138 = v137[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if (v138)
  {

    goto LABEL_92;
  }

  v139 = *(v30 + v195.i64[0]);
  if (!v139)
  {
    goto LABEL_126;
  }

  v140 = *(v139 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v140)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v141 = v140;

  v142 = [v141 session];

  v143 = [v142 currentFrame];
  if (!v143)
  {
    goto LABEL_92;
  }

  v144 = [v143 camera];
  v145 = [objc_opt_self() mainScreen];
  v146 = [v145 currentOrientation];

  [v144 viewMatrixForOrientation_];
  v197 = v148;
  v198 = v147;
  v194 = v149;
  v193 = v150;

  v205.columns[1] = v197;
  v205.columns[0] = v198;
  v205.columns[2] = v194;
  v205.columns[3] = v193;
  v206 = __invert_f4(v205);
  v151 = *(v30 + v195.i64[0]);
  if (!v151)
  {
    goto LABEL_128;
  }

  v194 = v206.columns[3];
  v195 = v206.columns[2];
  v197 = v206.columns[1];
  v198 = v206.columns[0];
  v152 = *(v151 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v152)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v153 = v152;
  sub_24135292C();
  v154 = sub_2413524BC();

  if (!v154)
  {
LABEL_130:
    __break(1u);
    return;
  }

  sub_2413518CC();

LABEL_92:
  v155 = *(v177 + 48);
  sub_241246210(v132, v131, &qword_27E538940);
  sub_241246210(v185, v131 + v155, &qword_27E538940);
  v156 = v183;
  v157 = v172;
  if (v172(v131, 1, v183) == 1)
  {
    if (v157(v131 + v155, 1, v156) == 1)
    {
      sub_241246278(v131, &qword_27E538940);
      v158 = v185;
      goto LABEL_102;
    }

LABEL_97:
    sub_241246278(v131, &qword_27E538AA0);
    v158 = v185;
    goto LABEL_98;
  }

  v159 = v174;
  sub_241246210(v131, v174, &qword_27E538940);
  if (v157(v131 + v155, 1, v156) == 1)
  {
    (*(v180 + 8))(v159, v156);
    goto LABEL_97;
  }

  v160 = v180;
  v161 = v173;
  (*(v180 + 32))(v173, v131 + v155, v156);
  sub_2412B3164(&qword_27E538AA8, MEMORY[0x277CDADA8]);
  v162 = v156;
  v163 = sub_241353BCC();
  v164 = *(v160 + 8);
  v164(v161, v162);
  v164(v159, v162);
  sub_241246278(v131, &qword_27E538940);
  v158 = v185;
  if (v163)
  {
LABEL_102:
    sub_24129FE0C();
  }

  else
  {
LABEL_98:
    if (sub_2412B0AD0(v132, v158, MEMORY[0x277CDAD60]) || sub_2412B0AD0(v132, v158, MEMORY[0x277CDAD88]))
    {
      goto LABEL_102;
    }

    sub_2412A00E8(v158);
  }

  sub_241246278(v132, &qword_27E538940);
  sub_241246278(v158, &qword_27E538940);
}

void sub_2412B2B4C()
{
  type metadata accessor for PreviewType(319);
  if (v0 <= 0x3F)
  {
    sub_2412B2EAC(319, &qword_280DA2A48, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_2412B2EAC(319, &qword_280DA2A40, MEMORY[0x277CDADA8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ModelCustomizationOptions(319);
        if (v3 <= 0x3F)
        {
          sub_2412B2EAC(319, &qword_280DA2A50, MEMORY[0x277CC9260]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_2412B2E74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2412B2EAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_s6ResultOy11AssetViewer0B6LoaderV12FileMetadataV_AE16SceneInformationVts5Error_pGIegr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2412B2F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2412B2F60(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2412B2FE4()
{
  v0 = sub_24135164C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2412B303C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2412450EC;

  return sub_2412FB2B8(a1, v4, v5, v6);
}

uint64_t sub_2412B30F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2412B3164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2412B3208(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_241246158(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2412B3260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24124647C;

  return sub_2412A0CC0(a1, v4, v5, v6);
}

uint64_t objectdestroy_51Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2412B3354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2412450EC;

  return sub_2412A0CC0(a1, v4, v5, v6);
}

void sub_2412B3440()
{
  v1 = sub_241287420();
  v2 = v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if ((v2 & 1) == 0 && (v0[OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing] & 1) == 0)
  {
    v3 = v0[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8];
    if (v3 == 3)
    {
      v4 = 4;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v4 = 3;
    }

    v0[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = v4;

    [v0 updateInterfaceState];
  }
}

uint64_t sub_2412B3544(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2412B3554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2412B35BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2412B3624(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void *sub_2412B36F8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL sub_2412B3774(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2412B37A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2412B37D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2412B3890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2412B3E10(a1);

  *a2 = v3;
  return result;
}

id sub_2412B3AD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARQuickLookOverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2412B3BA8()
{
  result = qword_27E538BA8;
  if (!qword_27E538BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BA8);
  }

  return result;
}

unint64_t sub_2412B3C00()
{
  result = qword_27E538BB0;
  if (!qword_27E538BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BB0);
  }

  return result;
}

unint64_t sub_2412B3C58()
{
  result = qword_27E538BB8;
  if (!qword_27E538BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BB8);
  }

  return result;
}

unint64_t sub_2412B3CB0()
{
  result = qword_27E538BC0;
  if (!qword_27E538BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BC0);
  }

  return result;
}

unint64_t sub_2412B3D08()
{
  result = qword_27E538BC8;
  if (!qword_27E538BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BC8);
  }

  return result;
}

unint64_t sub_2412B3D60()
{
  result = qword_27E538BD0;
  if (!qword_27E538BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BD0);
  }

  return result;
}

unint64_t sub_2412B3DB8()
{
  result = qword_27E538BD8;
  if (!qword_27E538BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BD8);
  }

  return result;
}

uint64_t sub_2412B3E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_2412B3E48()
{
  result = qword_27E539A90;
  if (!qword_27E539A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E539A90);
  }

  return result;
}

uint64_t sub_2412B3EB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2412B3F14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2412B3F74()
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
    _os_log_impl(&dword_241215000, v3, v4, "Showing camera controls", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v7 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (!v8)
  {
    return;
  }

  v9 = objc_allocWithZone(ASVBlurredBackgroundView);
  v10 = v8;
  v11 = [v9 initWithFrame:0 backgroundStyle:2 controlStyle:{0.0, 0.0, 0.0, 0.0}];
  [v11 _setContinuousCornerRadius_];
  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v32 = v10;
  [v12 addSubview_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  sub_24135466C();
  v16 = objc_opt_self();
  v17 = [v16 constraintWithItem:v11 attribute:1 relatedBy:0 toItem:v15 attribute:1 multiplier:1.0 constant:16.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  sub_241246158(0, &qword_27E539D00);
  v18 = sub_241353E1C();

  [v16 activateConstraints_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [v11 bottomAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:-32.0];
  [v23 setActive_];

  v24 = *&v1[v6];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!*(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v25 = objc_allocWithZone(type metadata accessor for CameraControlsView());
  v26 = v32;

  sub_24125995C(v27, v26);
  v29 = v28;
  v30 = [v11 contentView];
  [v30 addSubview_];

  UIView.pinToSuperviewEdges()();
  v31 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState];
  *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState] = v29;
  v33 = v29;

  sub_2412B43D8();
}

void sub_2412B43D8()
{
  v0 = objc_opt_self();
  if (![v0 wantsDebugActionsButton])
  {
    return;
  }

  if (qword_27E537CD0 != -1)
  {
LABEL_34:
    swift_once();
  }

  v1 = sub_241352FFC();
  __swift_project_value_buffer(v1, qword_27E53A538);
  v2 = sub_241352FDC();
  v3 = sub_2413540DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_241215000, v2, v3, "Showing debug actions", v4, 2u);
    MEMORY[0x245CE4870](v4, -1, -1);
  }

  if (qword_27E537BE8 != -1)
  {
    swift_once();
  }

  if ([qword_27E5417B0 isHidden])
  {
    v5 = 2003789907;
  }

  else
  {
    v5 = 1701079368;
  }

  v43 = v5;

  MEMORY[0x245CE20D0](0x6C20677562656420, 0xED0000736C656261);
  v6 = sub_241353BDC();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed_];

  if (!v8)
  {
    __break(1u);
    goto LABEL_37;
  }

  sub_241246158(0, &qword_27E538430);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45[4] = sub_2413542DC();
  v10 = sub_241353BDC();
  v11 = [v7 systemImageNamed_];

  if (!v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v45[5] = sub_2413542DC();
  v12 = sub_241353BDC();
  v13 = [v7 systemImageNamed_];

  if (!v13)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45[6] = sub_2413542DC();
  sub_2413545EC();

  MEMORY[0x245CE20D0](0xD000000000000010, 0x80000002413601F0);
  v15 = sub_241353BDC();
  v16 = [v7 _systemImageNamed_];

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45[7] = sub_2413542DC();
  v18 = [v0 forceUseLegacySceneImportPipeline];
  v19 = v18 == 0;
  if (v18)
  {
    v20 = 6710863;
  }

  else
  {
    v20 = 28239;
  }

  if (v19)
  {
    v21 = 0xE200000000000000;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x245CE20D0](v20, v21);

  v22 = sub_241353BDC();
  v23 = [v7 _systemImageNamed_];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = 0;
  v39 = 0;
  v41 = sub_2412B519C;
  v42 = v24;
  v40 = 0;
  v25 = 0;
  v45[8] = sub_2413542DC();
  v0 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
LABEL_20:
  if (v25 <= 5)
  {
    v26 = 5;
  }

  else
  {
    v26 = v25;
  }

  while (v25 != 5)
  {
    if (v26 == v25)
    {
      __break(1u);
      goto LABEL_34;
    }

    v27 = v45[v25++ + 4];
    if (v27)
    {
      v28 = v27;
      MEMORY[0x245CE21C0](v28, v29, v30, v31, v32);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241353E4C();
      }

      sub_241353E6C();
      v0 = v44;
      goto LABEL_20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538440);
  swift_arrayDestroy();
  v33 = sub_241287420();
  v34 = sub_2412F4E50();

  if (v0 >> 62)
  {
    sub_241246158(0, &qword_27E538448);

    v35 = sub_2413547EC();
  }

  else
  {

    sub_24135498C();
    sub_241246158(0, &qword_27E538448);
    v35 = v0;
  }

  sub_241246158(0, &qword_27E538450);
  v38 = v35;
  v36 = sub_24135421C();
  [v34 setMenu_];
}

void sub_2412B4BA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24135152C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_24135150C();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v9 = [objc_opt_self() defaultWorkspace];
      if (v9)
      {
        v10 = v9;
        v11 = sub_24135144C();
        [v10 openSensitiveURL:v11 withOptions:0];

        (*(v4 + 8))(v6, v3);
      }

      else
      {
        (*(v4 + 8))(v6, v3);
      }
    }
  }
}

void sub_2412B4DC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState;
    v3 = *(Strong + OBJC_IVAR___ASVPreviewViewControllerInternal_debugActionsState);
    if (v3)
    {
      v4 = qword_27E537CD0;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_241352FFC();
      __swift_project_value_buffer(v6, qword_27E53A538);
      v7 = sub_241352FDC();
      v8 = sub_2413540DC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_241215000, v7, v8, "Hiding camera controls", v9, 2u);
        MEMORY[0x245CE4870](v9, -1, -1);
      }

      [v5 removeFromSuperview];
      v10 = *&v1[v2];
      *&v1[v2] = 0;

      v1 = v10;
    }

    else
    {
      sub_2412B3F74();
    }
  }
}

void sub_2412B4F68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2412F1140();
  }
}

uint64_t sub_2412B4FBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_24135152C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135150C();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() defaultWorkspace];
    if (v8)
    {
      v9 = v8;
      v10 = sub_24135144C();
      [v9 openSensitiveURL:v10 withOptions:0];
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

unint64_t sub_2412B51B8()
{
  result = qword_27E538BE0;
  if (!qword_27E538BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BE0);
  }

  return result;
}

uint64_t sub_2412B520C(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = sub_2413532CC();
  v10 = *(v60 - 8);
  v11 = MEMORY[0x28223BE20](v60);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v51 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538BF0);
  MEMORY[0x28223BE20](v58);
  v51 = &v51 - v14;
  v15 = sub_2413532FC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538BF8);
  MEMORY[0x28223BE20](v53);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538C00);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  if (a2)
  {
    v27 = 10.0;
  }

  else
  {
    v27 = *&a1;
  }

  v28 = *(v16 + 16);
  v54 = a6;
  v28(&v51 - v25, a6, v15);
  v52 = v26;
  sub_2412B5F90(v26, v24);
  (*(v16 + 32))(v18, v24, v15);
  sub_2412B6000(&qword_27E538C08);
  sub_241353DAC();
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538C10) + 36);
  sub_2412B6000(&qword_27E538C18);
  sub_24135406C();
  v30 = *&v20[v29];
  v56 = v10;
  if (v30 == v62[0])
  {
    v31 = 0;
LABEL_15:
    v47 = *(v53 + 36);
    sub_241246278(v52, &qword_27E538C00);
    *&v20[v47] = v31;
    sub_241246278(v20, &qword_27E538BF8);
    v48 = v55;
    sub_24135330C();
    sub_24135334C();
    LOBYTE(v62[0]) = v49 & 1;
    v61 = v50 & 1;
    sub_2413532AC();
    return (*(v56 + 8))(v48, v60);
  }

  else
  {
    v32 = 0;
    v57 = (v10 + 16);
    v33 = (v10 + 32);
    v34 = 0.0;
    v35 = 1.0;
    v36 = v51;
    while (1)
    {
      v37 = sub_24135408C();
      v38 = v15;
      v40 = v59;
      v39 = v60;
      (*v57)(v59);
      v37(v62, 0);
      sub_24135407C();
      v41 = *(v58 + 48);
      *v36 = v32;
      result = (*v33)(&v36[v41], v40, v39);
      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      sub_24135334C();
      LOBYTE(v62[0]) = v43 & 1;
      v61 = v44 & 1;
      sub_2413532AC();
      if (v27 >= v34 + v45 || v32 == 0)
      {
        v45 = v34 + v45;
      }

      else
      {
        v35 = v35 + 1.0;
      }

      v34 = v45 + a3;
      sub_241246278(v36, &qword_27E538BF0);
      sub_24135406C();
      ++v32;
      v15 = v38;
      if (*&v20[v29] == v62[0])
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_2412B5874(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2413531CC();
  return sub_2412B58FC;
}

void sub_2412B58FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_2412B594C()
{
  result = qword_27E538BE8;
  if (!qword_27E538BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538BE8);
  }

  return result;
}

uint64_t sub_2412B59A0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v61 = a7;
  v67 = sub_2413532CC();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538BF0);
  MEMORY[0x28223BE20](v65);
  v15 = &v56 - v14;
  v16 = sub_2413532FC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538BF8);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538C00);
  v24 = (MEMORY[0x28223BE20])(v23 - 8);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  v70.origin.x = a2;
  v70.origin.y = a3;
  v70.size.width = a4;
  v70.size.height = a5;
  MinX = CGRectGetMinX(v70);
  v71.origin.x = a2;
  v71.origin.y = a3;
  v71.size.width = a4;
  v71.size.height = a5;
  MinY = CGRectGetMinY(v71);
  v58 = a2;
  v72.origin.x = a2;
  v59 = a3;
  v72.origin.y = a3;
  v60 = a4;
  v72.size.width = a4;
  v31 = a5;
  v72.size.height = a5;
  Width = CGRectGetWidth(v72);
  (*(v17 + 16))(v28, a1, v16);
  sub_2412B5F90(v28, v26);
  (*(v17 + 32))(v19, v26, v16);
  sub_2412B6000(&qword_27E538C08);
  sub_241353DAC();
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538C10) + 36);
  sub_2412B6000(&qword_27E538C18);
  sub_24135406C();
  v34 = v20;
  v35 = 0;
  if (*&v22[v33] == v69[0])
  {
LABEL_10:
    v55 = *(v34 + 36);
    sub_241246278(v28, &qword_27E538C00);
    *&v22[v55] = v35;
    return sub_241246278(v22, &qword_27E538BF8);
  }

  else
  {
    v56 = v28;
    v57 = v34;
    v36 = 0;
    v37 = (v63 + 2);
    v63 += 4;
    v64 = v37;
    v38 = 0.0;
    v62 = v33;
    while (1)
    {
      v39 = sub_24135408C();
      v41 = v66;
      v40 = v67;
      (*v64)(v66);
      v39(v69, 0);
      v42 = v16;
      sub_24135407C();
      v43 = *(v65 + 48);
      *v15 = v36;
      result = (*v63)(&v15[v43], v41, v40);
      v35 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      sub_24135334C();
      LOBYTE(v69[0]) = v45 & 1;
      v68 = v46 & 1;
      sub_2413532AC();
      v49 = v48;
      v50 = v38 + v48;
      if (Width < v50)
      {
        v51 = v60;
        if (v36)
        {
          MinY = MinY + v47 + v61;
        }

        v52 = v58;
        v53 = v59;
        v54 = v31;
        MinX = CGRectGetMinX(*(&v51 - 2));
        v50 = v49;
      }

      sub_2413538AC();
      LOBYTE(v69[0]) = 0;
      v68 = 0;
      sub_2413532BC();
      v38 = v50 + a6;
      MinX = v49 + a6 + MinX;
      sub_241246278(v15, &qword_27E538BF0);
      v16 = v42;
      sub_24135406C();
      ++v36;
      if (*&v22[v62] == v69[0])
      {
        v34 = v57;
        v28 = v56;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2412B5F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2412B6000(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2413532FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2412B6048()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_topControlsStackView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v2 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton;
  v3 = objc_opt_self();
  *&v0[v2] = [v3 buttonWithType_];
  v4 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_playButton;
  *&v0[v4] = [v3 buttonWithType_];
  v5 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_resetButton;
  *&v0[v5] = [v3 buttonWithType_];
  v6 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_blinkButton;
  *&v0[v6] = [v3 buttonWithType_];
  v7 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_backButtonColor;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.85];
  v8 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomBackgroundView;
  *&v0[v8] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v9 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomControlsStackView;
  *&v0[v9] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&v0[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DebugRecordReplayOverlayView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2412B6898();

  return v10;
}

id sub_2412B6254(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomControlsStackView) arrangedSubviews];
  sub_241246158(0, &qword_27E539A90);
  v4 = sub_241353E2C();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2413544EC())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245CE29C0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 40);
    v12 = *(a1 + 16);
    do
    {
      v13 = *v11;
      v16[0] = *(v11 - 1);
      v16[1] = v13;

      sub_2412B6400(v16, v1);

      v11 += 2;
      --v12;
    }

    while (v12);
  }

  v14 = *(v1 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomBackgroundView);

  return [v14 setHidden_];
}

void sub_2412B6400(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() buttonWithType_];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  v7 = sub_241353BDC();
  [v5 setTitle:v7 forState:0];

  v8 = [v4 blackColor];
  [v5 setTitleColor:v8 forState:0];

  v9 = [v4 grayColor];
  [v5 setTitleColor:v9 forState:1];

  v10 = [v4 lightGrayColor];
  [v5 setTitleColor:v10 forState:4];

  v11 = [v5 titleLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setTextAlignment_];
  }

  v13 = [v5 titleLabel];
  if (v13)
  {
    v14 = v13;
    [v13 setNumberOfLines_];
  }

  [v5 addTarget:a2 action:sel_bottomButtonPressed_ forControlEvents:64];
  v15 = *(a2 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomControlsStackView);
  v16 = [v15 arrangedSubviews];
  sub_241246158(0, &qword_27E539A90);
  v17 = sub_241353E2C();

  if (v17 >> 62)
  {
    v18 = sub_2413544EC();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v5 setTag_];

  [v15 addArrangedSubview_];
  sub_24135466C();
  v19 = objc_opt_self();
  v20 = [v19 constraintWithItem:v5 attribute:8 relatedBy:0 toItem:v15 attribute:8 multiplier:1.0 constant:0.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  sub_241246158(0, &qword_27E539D00);
  v21 = sub_241353E1C();

  [v19 activateConstraints_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
}

void sub_2412B6898()
{
  v1 = v0;
  [v0 setMultipleTouchEnabled_];
  v2 = *&v0[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton];
  v3 = objc_opt_self();
  v4 = [v3 grayColor];
  [v2 setTitleColor:v4 forState:2];

  v5 = *&v1[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_playButton];
  v6 = [v3 grayColor];
  [v5 setTitleColor:v6 forState:2];

  v7 = *&v1[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_resetButton];
  v8 = [v3 lightGrayColor];
  [v7 setTitleColor:v8 forState:1];

  v9 = *&v1[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_blinkButton];
  v10 = [v3 lightGrayColor];
  [v9 setTitleColor:v10 forState:1];

  v11 = *&v1[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_topControlsStackView];
  [v11 setAxis_];
  [v11 setAlignment_];
  [v11 setDistribution_];
  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];
  [v1 addSubview_];
  sub_24135466C();
  v12 = objc_opt_self();
  v13 = [v12 constraintWithItem:v11 attribute:9 relatedBy:0 toItem:v1 attribute:9 multiplier:1.0 constant:0.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  v14 = [v12 constraintWithItem:v11 attribute:15 relatedBy:0 toItem:v1 attribute:15 multiplier:1.0 constant:0.0];
  sub_24135464C();
  sub_24135467C();
  sub_24135468C();
  sub_24135465C();
  sub_241246158(0, &qword_27E539D00);
  v15 = sub_241353E1C();

  [v12 activateConstraints_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v11 heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  [v17 setActive_];
  v18 = [v11 widthAnchor];
  v19 = [v1 widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 multiplier:0.6];

  [v20 setActive_];
  v21 = *&v1[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomBackgroundView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_241365C30;
  v23 = [objc_opt_self() _effectWithStyle_invertAutomaticStyle_];
  if (v23)
  {
    *(v22 + 32) = v23;
    sub_241246158(0, &qword_27E538C68);
    v24 = sub_241353E1C();

    [v21 setBackgroundEffects_];

    v25 = [v21 layer];
    [v25 setCornerRadius_];

    v26 = [v21 layer];
    [v26 setCornerCurve_];

    v27 = [v21 layer];
    [v27 setMasksToBounds_];

    [v1 addSubview_];
    sub_24135466C();
    v28 = [v12 constraintWithItem:v21 attribute:16 relatedBy:0 toItem:v1 attribute:16 multiplier:1.0 constant:0.0];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v29 = [v12 constraintWithItem:v21 attribute:9 relatedBy:0 toItem:v1 attribute:9 multiplier:1.0 constant:0.0];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v30 = sub_241353E1C();

    [v12 activateConstraints_];

    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_24135466C();
    v31 = [v12 &selRef:v21 sendAnalyticsWithEvent:{7, 0, v1, 7, 0.9, 0.0} + 2];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v32 = sub_241353E1C();

    [v12 activateConstraints_];

    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    v33 = [v21 heightAnchor];
    v34 = [v33 constraintEqualToConstant_];

    [v34 setActive_];
    v35 = *&v1[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomControlsStackView];
    [v35 setAxis_];
    [v35 setAlignment_];
    [v35 setDistribution_];
    v36 = [v21 contentView];
    [v36 addSubview_];

    sub_24135466C();
    v37 = [v12 &selRef:v35 sendAnalyticsWithEvent:{9, 0, v21, 9, 1.0, 0.0} + 2];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v38 = [v12 &selRef:v35 sendAnalyticsWithEvent:{3, 0, v21, 3, 1.0, 0.0} + 2];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v39 = [v12 &selRef:v35 sendAnalyticsWithEvent:{4, 0, v21, 4, 1.0, 0.0} + 2];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v40 = sub_241353E1C();

    [v12 activateConstraints_];

    [v35 setTranslatesAutoresizingMaskIntoConstraints_];
    v41 = [v35 widthAnchor];
    v42 = [v21 widthAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:-12.0];

    [v43 setActive_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2412B7330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugRecordReplayOverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2412B7444()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_topControlsStackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v2 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 buttonWithType_];
  v4 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_playButton;
  *(v0 + v4) = [v3 buttonWithType_];
  v5 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_resetButton;
  *(v0 + v5) = [v3 buttonWithType_];
  v6 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_blinkButton;
  *(v0 + v6) = [v3 buttonWithType_];
  v7 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_backButtonColor;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.85];
  v8 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomBackgroundView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v9 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomControlsStackView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(v0 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_2413547DC();
  __break(1u);
}

uint64_t sub_2412B7618(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_2412B7700;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2412B7700()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2412B7814(uint64_t a1)
{
  v3 = *(v1 + 16);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = 1000000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_2412B78D0;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

void sub_2412B78D4()
{
  qword_27E538C80 = 0x3FE0000000000000;
  unk_27E538C88 = 0;
  LOBYTE(xmmword_27E538C90) = 1;
  *(&xmmword_27E538C90 + 1) = 0;
  byte_27E538CA0 = 1;
  qword_27E538CA8 = 0;
  byte_27E538CB0 = 1;
  *&xmmword_27E538C70 = 0xD000000000000026;
  *(&xmmword_27E538C70 + 1) = 0x80000002413604F0;
}

void sub_2412B791C()
{
  qword_27E538CC8 = 0x3FE0000000000000;
  unk_27E538CD0 = 0;
  LOBYTE(xmmword_27E538CD8) = 1;
  *(&xmmword_27E538CD8 + 1) = 0;
  byte_27E538CE8 = 1;
  qword_27E538CF0 = 0;
  byte_27E538CF8 = 1;
  *&xmmword_27E538CB8 = 0xD00000000000002BLL;
  *(&xmmword_27E538CB8 + 1) = 0x8000000241360520;
}

void sub_2412B7964()
{
  qword_27E538D10 = 0x3FC999999999999ALL;
  unk_27E538D18 = 0;
  LOBYTE(xmmword_27E538D20) = 1;
  *(&xmmword_27E538D20 + 1) = 0;
  byte_27E538D30 = 1;
  qword_27E538D38 = 0;
  byte_27E538D40 = 1;
  *&xmmword_27E538D00 = 0xD00000000000002ALL;
  *(&xmmword_27E538D00 + 1) = 0x8000000241360580;
}

void sub_2412B79B4()
{
  qword_27E538D58 = 0x3FF0000000000000;
  unk_27E538D60 = 0;
  LOBYTE(xmmword_27E538D68) = 1;
  *(&xmmword_27E538D68 + 1) = 0;
  byte_27E538D78 = 1;
  qword_27E538D80 = 0;
  byte_27E538D88 = 1;
  *&xmmword_27E538D48 = 0xD00000000000002ALL;
  *(&xmmword_27E538D48 + 1) = 0x8000000241360550;
}

void sub_2412B79FC()
{
  qword_27E538DA0 = 0x3FF0000000000000;
  unk_27E538DA8 = 0;
  LOBYTE(xmmword_27E538DB0) = 1;
  *(&xmmword_27E538DB0 + 1) = 0;
  byte_27E538DC0 = 1;
  qword_27E538DC8 = 0;
  byte_27E538DD0 = 1;
  *&xmmword_27E538D90 = 0xD000000000000019;
  *(&xmmword_27E538D90 + 1) = 0x80000002413604D0;
}

void sub_2412B7A44()
{
  qword_27E538DE8 = 0x4059000000000000;
  unk_27E538DF0 = 0;
  LOBYTE(xmmword_27E538DF8) = 1;
  *(&xmmword_27E538DF8 + 1) = 0;
  byte_27E538E08 = 1;
  qword_27E538E10 = 0;
  byte_27E538E18 = 1;
  *&xmmword_27E538DD8 = 0xD00000000000001ELL;
  *(&xmmword_27E538DD8 + 1) = 0x80000002413604B0;
}

void sub_2412B7AA0()
{
  qword_27E538E30 = 0x4039000000000000;
  unk_27E538E38 = 0;
  LOBYTE(xmmword_27E538E40) = 1;
  *(&xmmword_27E538E40 + 1) = 0;
  byte_27E538E50 = 1;
  qword_27E538E58 = 0;
  byte_27E538E60 = 1;
  *&xmmword_27E538E20 = 0xD00000000000001CLL;
  *(&xmmword_27E538E20 + 1) = 0x8000000241360490;
}

double sub_2412B7AE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  return v1;
}

double sub_2412B7BC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  return v1;
}

uint64_t sub_2412B7C2C()
{
  v1 = OBJC_IVAR____TtC11AssetViewerP33_DC2C650E7CA6BFF0464A80563CDE1E7B5Model__introMoveModelDuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538EC8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11AssetViewerP33_DC2C650E7CA6BFF0464A80563CDE1E7B5Model__introFadeDuration;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538ED0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11AssetViewerP33_DC2C650E7CA6BFF0464A80563CDE1E7B5Model__exitMoveModelDuration, v2);
  v3(v0 + OBJC_IVAR____TtC11AssetViewerP33_DC2C650E7CA6BFF0464A80563CDE1E7B5Model__exitFadeDuration, v2);
  v3(v0 + OBJC_IVAR____TtC11AssetViewerP33_DC2C650E7CA6BFF0464A80563CDE1E7B5Model__mass, v2);
  v3(v0 + OBJC_IVAR____TtC11AssetViewerP33_DC2C650E7CA6BFF0464A80563CDE1E7B5Model__stiffness, v2);
  v3(v0 + OBJC_IVAR____TtC11AssetViewerP33_DC2C650E7CA6BFF0464A80563CDE1E7B5Model__damping, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Model()
{
  result = qword_27E538EA8;
  if (!qword_27E538EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2412B7E24()
{
  sub_2412B7F24(319, &qword_27E538EB8);
  if (v0 <= 0x3F)
  {
    sub_2412B7F24(319, &qword_27E538EC0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2412B7F24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24135318C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2412B7F7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Model();
  result = sub_2413530DC();
  *a1 = result;
  return result;
}

double sub_2412B7FBC@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2412B803C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24135317C();
}

double sub_2412B80B8@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2412B8134()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24135317C();
}

uint64_t sub_2412B81AC()
{
  result = sub_2412B81CC();
  dword_27E541790 = result;
  return result;
}

uint64_t sub_2412B81CC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processIdentifier];

  if (memorystatus_control())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D20);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_241365E60;
    v3 = sub_2413530AC();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538ED8);
    *(v2 + 32) = v3;
    *(v2 + 88) = MEMORY[0x277D837D0];
    *(v2 + 56) = v4;
    *(v2 + 64) = 0xD00000000000005ELL;
    *(v2 + 72) = 0x80000002413605B0;
    *(v2 + 120) = MEMORY[0x277D849A8];
    *(v2 + 96) = v1;
    sub_241354AAC();
  }

  return 0;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2412B8340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2412B8388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2412B83EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2412B8434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InterfaceState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InterfaceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_2412B8540@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if ((a2 - 1) > 1)
  {
    if (qword_27E537B70 == -1)
    {
LABEL_19:
      v24 = BYTE1(dword_27E541798);
      v25 = BYTE2(dword_27E541798);
      v26 = HIBYTE(dword_27E541798);
      v27 = qword_27E5417A0;
      v28 = unk_27E5417A8;
      *a4 = dword_27E541798;
      *(a4 + 1) = v24;
      *(a4 + 2) = v25;
      *(a4 + 3) = v26;
      *(a4 + 8) = v27;
      *(a4 + 16) = v28;
    }

LABEL_91:
    v76 = a4;
    swift_once();
    a4 = v76;
    goto LABEL_19;
  }

  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 48);
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = a4;
        v83[0] = *(result + 48);
        v83[1] = v4;
        v84 = v5;
        v85 = v6;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v9 = 0;
        v10 = MEMORY[0x277D84F90];
        v11 = MEMORY[0x277D84F90];
LABEL_6:
        if (v9 <= 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = v9;
        }

        a4 = v12 + 1;
        v13 = &v83[v9];
        while (1)
        {
          if (v9 == 3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538EE0);
            result = swift_arrayDestroy();
            *v8 = 0x1000000;
            *(v8 + 8) = v11;
            *(v8 + 16) = v10;
            return result;
          }

          if (a4 == ++v9)
          {
            break;
          }

          v14 = v13 + 2;
          v15 = *v13;
          v13 += 2;
          if (v15)
          {
            v16 = *(v14 - 1);
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_2412A1C78(0, v11[2] + 1, 1, v11);
            }

            v17 = v11[2];
            v18 = v11[3];
            v19 = v17 + 1;
            if (v17 >= v18 >> 1)
            {
              v21 = v11;
              v22 = v11[2];
              v23 = sub_2412A1C78((v18 > 1), v17 + 1, 1, v21);
              v17 = v22;
              v11 = v23;
            }

            v11[2] = v19;
            v20 = &v11[2 * v17];
            v20[4] = v15;
            v20[5] = v16;
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v34 = 16842752;
    }

    else
    {
      v34 = 0x1000000;
    }

    *a4 = v34;
    v36 = MEMORY[0x277D84F90];
    *(a4 + 8) = MEMORY[0x277D84F90];
    *(a4 + 16) = v36;
    return result;
  }

  v29 = *result;
  v30 = *(result + 8);
  if (a3 == 3)
  {
    v80 = *(result + 16);
    v82 = *(result + 48);
    v31 = a4;
    if (sub_2412B8D24(result, 3u))
    {
      v92 = v29;
      v93 = v30;
      v94 = v80;
      v95 = v5;
      v96 = v6;
      v97 = v82;
      v35 = sub_2412B8EDC();
      v33 = v35;
    }

    else
    {
      v87 = v80;
      v88 = v29;
      v89 = v30;
      v90 = v5;
      v91 = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v49 = 0;
      v33 = MEMORY[0x277D84F90];
LABEL_43:
      if (v49 <= 3)
      {
        v50 = 3;
      }

      else
      {
        v50 = v49;
      }

      a4 = v50 + 1;
      v51 = &v87 + v49;
      while (v49 != 3)
      {
        if (a4 == ++v49)
        {
          goto LABEL_90;
        }

        v52 = v51 + 1;
        v53 = *v51++;
        if (v53)
        {
          v54 = *(v52 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_2412A1C78(0, v33[2] + 1, 1, v33);
          }

          v56 = v33[2];
          v55 = v33[3];
          if (v56 >= v55 >> 1)
          {
            v33 = sub_2412A1C78((v55 > 1), v56 + 1, 1, v33);
          }

          v33[2] = v56 + 1;
          v57 = &v33[2 * v56];
          v57[4] = v53;
          v57[5] = v54;
          goto LABEL_43;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538EE0);
      v35 = swift_arrayDestroy();
    }

    result = sub_2412B8D24(v35, 3u);
    if (result)
    {
      v86 = v82;
      swift_unknownObjectRetain();
      if (v82)
      {
        swift_unknownObjectRetain();
        v66 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_2412A1C78(0, v66[2] + 1, 1, v66);
        }

        v72 = v66[2];
        v71 = v66[3];
        v73 = *(&v82 + 1);
        if (v72 >= v71 >> 1)
        {
          v78 = sub_2412A1C78((v71 > 1), v72 + 1, 1, v66);
          v73 = *(&v82 + 1);
          v66 = v78;
        }

        v66[2] = v72 + 1;
        v74 = &v66[2 * v72];
        v74[4] = v82;
        v74[5] = v73;
      }

      else
      {
        v66 = MEMORY[0x277D84F90];
      }

      result = sub_2412B9228(&v86);
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

    v75 = 16843008;
    goto LABEL_88;
  }

  v31 = a4;
  if (a3 == 4)
  {
    v79 = *(result + 16);
    v81 = *(result + 48);
    if (sub_2412B8D24(result, 4u))
    {
      v92 = v29;
      v93 = v30;
      v94 = v79;
      v95 = v5;
      v96 = v6;
      v97 = v81;
      v32 = sub_2412B8EDC();
      v33 = v32;
    }

    else
    {
      v99 = v79;
      v100 = v29;
      v101 = v30;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v58 = 0;
      v33 = MEMORY[0x277D84F90];
LABEL_56:
      v59 = &v99 + v58;
      while (++v58 != 3)
      {
        v60 = v59 + 1;
        v61 = *v59++;
        if (v61)
        {
          v62 = *(v60 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_2412A1C78(0, v33[2] + 1, 1, v33);
          }

          v64 = v33[2];
          v63 = v33[3];
          if (v64 >= v63 >> 1)
          {
            v33 = sub_2412A1C78((v63 > 1), v64 + 1, 1, v33);
          }

          v33[2] = v64 + 1;
          v65 = &v33[2 * v64];
          v65[4] = v61;
          v65[5] = v62;
          goto LABEL_56;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538EE0);
      v32 = swift_arrayDestroy();
    }

    result = sub_2412B8D24(v32, 4u);
    if (result)
    {
      v98 = v81;
      swift_unknownObjectRetain();
      if (v81)
      {
        swift_unknownObjectRetain();
        v66 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_2412A1C78(0, v66[2] + 1, 1, v66);
        }

        v68 = v66[2];
        v67 = v66[3];
        v69 = *(&v81 + 1);
        if (v68 >= v67 >> 1)
        {
          v77 = sub_2412A1C78((v67 > 1), v68 + 1, 1, v66);
          v69 = *(&v81 + 1);
          v66 = v77;
        }

        v66[2] = v68 + 1;
        v70 = &v66[2 * v68];
        v70[4] = v81;
        v70[5] = v69;
      }

      else
      {
        v66 = MEMORY[0x277D84F90];
      }

      result = sub_2412B9228(&v98);
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

    v75 = 65537;
LABEL_88:
    *v31 = v75;
    *(v31 + 8) = v33;
    *(v31 + 16) = v66;
    return result;
  }

  v102[0] = *(result + 16);
  v102[1] = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v37 = 0;
  v38 = MEMORY[0x277D84F90];
LABEL_32:
  v39 = &v102[v37];
  while (++v37 != 3)
  {
    v40 = v39 + 2;
    v41 = *v39;
    v39 += 2;
    if (v41)
    {
      v42 = *(v40 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2412A1C78(0, v38[2] + 1, 1, v38);
      }

      v44 = v38[2];
      v43 = v38[3];
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v47 = sub_2412A1C78((v43 > 1), v44 + 1, 1, v38);
        v45 = v44 + 1;
        v38 = v47;
      }

      v38[2] = v45;
      v46 = &v38[2 * v44];
      v46[4] = v41;
      v46[5] = v42;
      goto LABEL_32;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538EE0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A08);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_241365EA0;
  *(v48 + 32) = v29;
  *(v48 + 40) = v30;
  *v31 = 65537;
  *(v31 + 8) = v38;
  *(v31 + 16) = v48;
  return swift_unknownObjectRetain();
}

BOOL sub_2412B8D24(uint64_t a1, unsigned __int8 a2)
{
  v2 = (a2 < 5u) & (0x1Au >> a2);
  v3 = [objc_opt_self() mainScreen];
  v4 = [v3 currentOrientation];

  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    if (v4 == 4)
    {
      if (v2)
      {
        v7 = 1;
        return !v7;
      }
    }

    else
    {
      v7 = v4 == 3;
      if (v2)
      {
        return !v7;
      }
    }

    return 0;
  }

  v7 = 0;
  result = 0;
  if (v2)
  {
    return !v7;
  }

  return result;
}

uint64_t sub_2412B8E10()
{
  v1 = *v0;
  v2 = 0x676E6964616F6CLL;
  v3 = 0x6465726F68636E61;
  v4 = 0x6465726F68636E61;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7463656A626FLL;
  if (v1 != 1)
  {
    v5 = 0x72676F6C6F487261;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2412B8EDC()
{
  v1 = v0[1];
  v15[0] = *v0;
  v15[1] = v1;
  v2 = v0[3];
  v15[2] = v0[2];
  v15[3] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  if (v4 <= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 + 1;
  v8 = &v15[v4];
  while (1)
  {
    if (v4 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538EE0);
      swift_arrayDestroy();
      return v5;
    }

    if (v7 == ++v4)
    {
      break;
    }

    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10)
    {
      v11 = *(v9 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2412A1C78(0, v5[2] + 1, 1, v5);
        v5 = result;
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_2412A1C78((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      v5[2] = v13 + 1;
      v14 = &v5[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2412B9048(uint64_t a1, unsigned __int8 a2)
{
  sub_2413545EC();
  v3 = MEMORY[0x245CE20D0](0xD00000000000002CLL, 0x8000000241360610);
  v4 = sub_2412B8D24(v3, a2);
  v5 = !v4;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x245CE20D0](v6, v7);

  MEMORY[0x245CE20D0](0x68636E417369202CLL, 0xEE00203A6465726FLL);
  v8 = (a2 - 3);
  if (v8 >= 3)
  {
    v9 = 0x65736C6166;
  }

  else
  {
    v9 = 1702195828;
  }

  if (v8 >= 3)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x245CE20D0](v9, v10);

  MEMORY[0x245CE20D0](0xD000000000000012, 0x8000000241360640);
  if (((1 << a2) & 0x3A) != 0)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (((1 << a2) & 0x3A) != 0)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (a2 <= 5u)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a2 <= 5u)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v13, v14);

  MEMORY[0x245CE20D0](0x203A52417369202CLL, 0xE800000000000000);
  v15 = (a2 - 2);
  if (v15 >= 4)
  {
    v16 = 0x65736C6166;
  }

  else
  {
    v16 = 1702195828;
  }

  if (v15 >= 4)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x245CE20D0](v16, v17);

  return 0;
}

double sub_2412B9208()
{
  *&result = 0x100000001;
  dword_27E541798 = 1;
  qword_27E5417A0 = MEMORY[0x277D84F90];
  unk_27E5417A8 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2412B9228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for InterfaceState.AppState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterfaceState.AppState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2412B93E4()
{
  result = qword_27E538EE8;
  if (!qword_27E538EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538EE8);
  }

  return result;
}

double sub_2412B9438()
{
  *&result = 33554689;
  dword_27E538F00 = 33554689;
  qword_27E538EF0 = 0xD000000000000016;
  *algn_27E538EF8 = 0x8000000241360720;
  return result;
}

void sub_2412B946C()
{
  qword_27E538F18 = 0;
  unk_27E538F20 = 0;
  LOBYTE(xmmword_27E538F28) = 1;
  *(&xmmword_27E538F28 + 1) = 0;
  byte_27E538F38 = 1;
  qword_27E538F40 = 0;
  byte_27E538F48 = 1;
  *&xmmword_27E538F08 = 0xD000000000000032;
  *(&xmmword_27E538F08 + 1) = 0x80000002413606E0;
}

double sub_2412B94B0()
{
  *&result = 10485760;
  xmmword_27E538F60 = xmmword_241368030;
  LOBYTE(xmmword_27E538F70) = 0;
  *(&xmmword_27E538F70 + 1) = 0;
  byte_27E538F80 = 1;
  qword_27E538F88 = 0;
  byte_27E538F90 = 1;
  *&xmmword_27E538F50 = 0xD000000000000023;
  *(&xmmword_27E538F50 + 1) = 0x80000002413606B0;
  return result;
}

double sub_2412B94FC()
{
  *&result = 1;
  xmmword_27E538FA8 = xmmword_241368040;
  LOBYTE(xmmword_27E538FB8) = 1;
  *(&xmmword_27E538FB8 + 1) = 0;
  byte_27E538FC8 = 1;
  qword_27E538FD0 = 0;
  byte_27E538FD8 = 1;
  *&xmmword_27E538F98 = 0xD000000000000026;
  *(&xmmword_27E538F98 + 1) = 0x8000000241360680;
  return result;
}

double sub_2412B9548()
{
  *&result = 104857600;
  xmmword_27E538FF0 = xmmword_241368050;
  LOBYTE(xmmword_27E539000) = 0;
  *(&xmmword_27E539000 + 1) = 0;
  byte_27E539010 = 1;
  qword_27E539018 = 0;
  byte_27E539020 = 1;
  *&xmmword_27E538FE0 = 0xD00000000000001ALL;
  *(&xmmword_27E538FE0 + 1) = 0x8000000241360660;
  return result;
}

double sub_2412B9594()
{
  *&result = 33686017;
  dword_27E539038 = 33686017;
  qword_27E539028 = 0xD000000000000015;
  unk_27E539030 = 0x8000000241360780;
  return result;
}

double sub_2412B95C8()
{
  *&result = 33686016;
  dword_27E539050 = 33686016;
  qword_27E539040 = 0xD00000000000001DLL;
  *algn_27E539048 = 0x8000000241360760;
  return result;
}

double sub_2412B95FC()
{
  qword_27E539068 = 0;
  unk_27E539070 = 0;
  *&xmmword_27E539078 = 0;
  *&result = 1;
  *(&xmmword_27E539078 + 8) = xmmword_241368040;
  unk_27E539090 = xmmword_241368040;
  qword_27E5390A0 = 1;
  *&xmmword_27E539058 = 0xD000000000000019;
  *(&xmmword_27E539058 + 1) = 0x8000000241360740;
  return result;
}

uint64_t vImage_Buffer.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_241354AFC();
  }

  sub_241354AFC();
  return MEMORY[0x245CE2EA0](a2);
}

uint64_t vImage_Buffer.hashValue.getter(uint64_t a1)
{
  sub_241354ADC();
  sub_241354AFC();
  if (a1)
  {
    MEMORY[0x245CE2EA0](a1);
  }

  return sub_241354B1C();
}

uint64_t sub_2412B96F8()
{
  v1 = *v0;
  sub_241354ADC();
  sub_241354AFC();
  if (v1)
  {
    MEMORY[0x245CE2EA0](v1);
  }

  return sub_241354B1C();
}

uint64_t sub_2412B975C()
{
  v1 = *v0;
  if (!*v0)
  {
    return sub_241354AFC();
  }

  sub_241354AFC();
  return MEMORY[0x245CE2EA0](v1);
}

uint64_t sub_2412B97A4()
{
  v1 = *v0;
  sub_241354ADC();
  sub_241354AFC();
  if (v1)
  {
    MEMORY[0x245CE2EA0](v1);
  }

  return sub_241354B1C();
}

unint64_t sub_2412B9808()
{
  result = qword_27E5390A8;
  if (!qword_27E5390A8)
  {
    type metadata accessor for vImage_Buffer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5390A8);
  }

  return result;
}

uint64_t sub_2412B9874@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2413533EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for VariantsBar();
  sub_241246210(v1 + *(v10 + 32), v9, &qword_27E5390B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24127EFF0(v9, a1, &qword_27E539170);
  }

  sub_2413540CC();
  v12 = sub_24135354C();
  sub_241352F1C();

  sub_2413533DC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2412B9A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2413533EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390B8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VariantsBar();
  sub_241246210(v1 + *(v10 + 36), v9, &qword_27E5390B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24135321C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2413540CC();
    v13 = sub_24135354C();
    sub_241352F1C();

    sub_2413533DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t VariantsBar.init(viewModel:onSheetVisibilityChanged:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_24135379C();
  *a3 = v12;
  *(a3 + 8) = v13;
  sub_24135379C();
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  sub_24135324C();
  *(a3 + 32) = v12;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  v6 = type metadata accessor for VariantsBar();
  v7 = v6[8];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390B0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[9];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390B8);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[10]) = 0;
  type metadata accessor for VariantViewModel();
  sub_2412C1EC4(&qword_27E5390C0, type metadata accessor for VariantViewModel);
  result = sub_24135331C();
  *(a3 + 64) = result;
  *(a3 + 72) = v10;
  v11 = (a3 + v6[11]);
  *v11 = a1;
  v11[1] = a2;
  return result;
}

uint64_t type metadata accessor for VariantsBar()
{
  result = qword_27E539140;
  if (!qword_27E539140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2412B9E54()
{
  v0 = sub_2413534BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539378);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539170);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_2412B9874(&v25 - v14);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0560], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_241246210(v15, v6, &qword_27E539170);
  sub_241246210(v12, &v6[v16], &qword_27E539170);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_241246210(v6, v9, &qword_27E539170);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v26;
      (*(v1 + 32))(v26, v19, v0);
      sub_2412C1EC4(&qword_27E539380, MEMORY[0x277CE0570]);
      v21 = sub_241353BCC();
      v22 = *(v1 + 8);
      v22(v20, v0);
      sub_241246278(v12, &qword_27E539170);
      sub_241246278(v15, &qword_27E539170);
      v22(v9, v0);
      sub_241246278(v6, &qword_27E539170);
      if (v21)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_241246278(v12, &qword_27E539170);
    sub_241246278(v15, &qword_27E539170);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_241246278(v6, &qword_27E539378);
    return 0;
  }

  sub_241246278(v12, &qword_27E539170);
  sub_241246278(v15, &qword_27E539170);
  if (v17(&v6[v16], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_241246278(v6, &qword_27E539170);
LABEL_9:
  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  return v24 != 0;
}

uint64_t VariantsBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390C8);
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - v2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390D0);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - v3;
  v4 = type metadata accessor for VariantsBar();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390D8);
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v43 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390E0);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v43 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390E8);
  MEMORY[0x28223BE20](v51);
  v47 = &v43 - v11;
  sub_2412C1A28(v1, &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VariantsBar);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_2412BF664(&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v55 = v1;
  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390F0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5390F8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D28);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D30);
  v18 = sub_24123CFB0();
  v56 = v17;
  v57 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24123D180();
  v56 = v15;
  v57 = v16;
  v58 = OpaqueTypeConformance2;
  v59 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v56 = v14;
  v57 = MEMORY[0x277D839B0];
  v58 = v21;
  v59 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_2413537EC();
  v56 = 1836019578;
  v57 = 0xE400000000000000;
  sub_24135389C();
  v22 = sub_24123D370(&qword_27E539100, &qword_27E5390D8);
  v23 = v44;
  v24 = v45;
  sub_24135372C();
  v25 = v9;
  v26 = v24;
  (*(v7 + 8))(v25, v24);
  v27 = v49;
  v28 = &v49[*(v50 + 36)];
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24135344C();
  (*(*(v30 - 8) + 104))(v28, v29, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539108);
  sub_24135387C();
  *&v28[*(v31 + 56)] = 256;
  v32 = sub_24135388C();
  v34 = v33;
  v35 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539110) + 36)];
  *v35 = v32;
  v35[1] = v34;
  v36 = v46;
  v37 = v27;
  v38 = v27;
  v39 = v48;
  (*(v46 + 16))(v38, v23, v48);
  sub_241219998(v37, v52);
  swift_storeEnumTagMultiPayload();
  sub_2412BF730();
  v56 = v26;
  v57 = MEMORY[0x277D837D0];
  v58 = v22;
  v59 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  v40 = v47;
  sub_24135347C();
  sub_241246278(v37, &qword_27E5390D0);
  (*(v36 + 8))(v23, v39);
  v56 = sub_24130A4AC();
  v57 = v41;
  sub_2412BF86C();
  sub_24125D5A0();
  sub_2413536EC();

  return sub_241246278(v40, &qword_27E5390E8);
}

uint64_t sub_2412BAA3C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_2413534CC();
  v35 = v3;
  v36 = *(v3 - 8);
  v4 = v36;
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for VariantsBar();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = v9;
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537D20);
  v12 = *(v11 - 8);
  v45 = v11;
  v46 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v37 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390F8);
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  MEMORY[0x28223BE20](v15);
  v50 = &v33 - v17;
  sub_2412BAF78(v14);
  v44 = *a1;
  v43 = *(a1 + 1);
  v41 = a1;
  v55 = v44;
  v56 = v43;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539360);
  sub_2413537CC();
  v40 = type metadata accessor for VariantsBar;
  v18 = a1;
  v19 = v10;
  v38 = v10;
  sub_2412C1A28(v18, v10, type metadata accessor for VariantsBar);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_2412BF664(v19, v21 + v20);
  *v6 = sub_2413537DC();
  (*(v4 + 104))(v6, *MEMORY[0x277CDE248], v3);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537D28);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D30);
  v23 = sub_24123CFB0();
  v51 = v22;
  v52 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_24123D180();
  v24 = v45;
  v25 = v37;
  sub_2413536BC();

  (*(v36 + 8))(v6, v35);
  (*(v46 + 8))(v25, v24);
  LOBYTE(v51) = v44;
  v52 = v43;
  sub_2413537AC();
  v26 = v38;
  sub_2412C1A28(v41, v38, v40);
  v27 = swift_allocObject();
  sub_2412BF664(v26, v27 + v20);
  v51 = v24;
  v52 = v34;
  v53 = OpaqueTypeConformance2;
  v54 = v32;
  swift_getOpaqueTypeConformance2();
  v28 = v50;
  v29 = v47;
  sub_24135375C();

  return (*(v48 + 8))(v28, v29);
}

uint64_t sub_2412BAF78@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_24135349C();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537D68);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-v6];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537D58);
  MEMORY[0x28223BE20](v23);
  v9 = &v22[-v8];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537D48);
  MEMORY[0x28223BE20](v27);
  v26 = &v22[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537D30);
  MEMORY[0x28223BE20](v11);
  v13 = &v22[-v12];
  sub_24135355C();
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539388);
  sub_2412C1458();
  v24 = v7;
  sub_24135320C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  sub_24135388C();
  sub_24135336C();
  (*(v25 + 32))(v9, v24, v5);
  v14 = &v9[*(v23 + 36)];
  v15 = v36;
  v14[4] = v35;
  v14[5] = v15;
  v14[6] = v37;
  v16 = v32;
  *v14 = v31;
  v14[1] = v16;
  v17 = v34;
  v14[2] = v33;
  v14[3] = v17;
  sub_24135388C();
  sub_24135328C();
  v18 = v26;
  sub_24127EFF0(v9, v26, &qword_27E537D58);
  v19 = &v18[*(v27 + 36)];
  v20 = v39;
  *v19 = v38;
  v19[1] = v20;
  v19[2] = v40;
  sub_24127EFF0(v18, v13, &qword_27E537D48);
  *&v13[*(v11 + 36)] = 257;
  sub_24135348C();
  sub_24135355C();
  sub_24123CFB0();
  sub_24135370C();
  (*(v28 + 8))(v4, v2);
  return sub_241246278(v13, &qword_27E537D30);
}

uint64_t sub_2412BB4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539368);
  MEMORY[0x28223BE20](v40);
  v39 = &v30[-v3];
  v4 = sub_24135353C();
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539370);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = &v30[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537D78);
  MEMORY[0x28223BE20](v10);
  v12 = &v30[-v11];
  v13 = *(a1 + 8);
  LOBYTE(v46) = *a1;
  v47 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539360);
  sub_2413537CC();
  v32 = v43;
  v33 = v42;
  v31 = v44;

  v14 = sub_2412B9E54();
  type metadata accessor for VariantViewModel();
  sub_2412C1EC4(&qword_27E5390C0, type metadata accessor for VariantViewModel);
  v15 = sub_24135331C();
  v17 = v16;
  v46 = 0;
  sub_24135379C();
  v18 = v42;
  v19 = v43;
  v20 = *(v10 + 36);
  sub_2412B9A5C(&v12[v20]);
  v21 = sub_24135321C();
  (*(*(v21 - 8) + 56))(&v12[v20], 0, 1, v21);
  v22 = v32;
  *v12 = v33;
  *(v12 + 1) = v22;
  v12[16] = v31;
  *(v12 + 17) = v46;
  *(v12 + 5) = *(&v46 + 3);
  *(v12 + 3) = v15;
  *(v12 + 4) = v17;
  v12[40] = v14;
  *(v12 + 41) = v48[0];
  *(v12 + 11) = *(v48 + 3);
  *(v12 + 6) = v18;
  *(v12 + 7) = v19;
  v42 = 1836019578;
  v43 = 0xE400000000000000;
  type metadata accessor for VariantsBar();
  sub_24135389C();
  sub_24135352C();
  v23 = sub_24123D264();
  v24 = MEMORY[0x277CDE428];
  v25 = v34;
  v26 = v37;
  sub_24135373C();
  (*(v38 + 8))(v7, v26);
  v27 = v35;
  v28 = v36;
  (*(v35 + 16))(v39, v25, v36);
  swift_storeEnumTagMultiPayload();
  v42 = v10;
  v43 = v26;
  v44 = v23;
  v45 = v24;
  swift_getOpaqueTypeConformance2();
  sub_24135347C();
  (*(v27 + 8))(v25, v28);
  return sub_241246278(v12, &qword_27E537D78);
}

uint64_t sub_2412BB96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2413534AC();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5393A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-v7];
  v24 = a1;
  sub_24135340C();
  v25 = 0;
  sub_2412C1EC4(&qword_27E5393A8, MEMORY[0x277CE0428]);
  sub_241354B7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5393B0);
  sub_2412C1518();
  sub_2413531FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241366530;
  v10 = sub_2413535BC();
  *(inited + 32) = v10;
  v11 = sub_2413535DC();
  *(inited + 33) = v11;
  v12 = sub_2413535CC();
  sub_2413535CC();
  if (sub_2413535CC() != v10)
  {
    v12 = sub_2413535CC();
  }

  sub_2413535CC();
  if (sub_2413535CC() != v11)
  {
    v12 = sub_2413535CC();
  }

  sub_2413531EC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v6 + 32))(a2, v8, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539388);
  v22 = a2 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_2412BBC3C()
{
  sub_24130A1E0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5393D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5393C8);
  sub_24123D370(&qword_27E5393D8, &qword_27E5393D0);
  sub_24123D370(&qword_27E5393C0, &qword_27E5393C8);
  return sub_24135386C();
}

uint64_t sub_2412BBD6C@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_241353BDC();
  v2 = sub_241353BDC();
  v3 = sub_241353BDC();
  v4 = [v1 stringByReplacingOccurrencesOfString:v2 withString:v3];

  sub_241353C0C();
  sub_24125D5A0();
  v5 = sub_24135366C();
  v7 = v6;
  LOBYTE(v3) = v8;
  sub_24135362C();
  v9 = sub_24135365C();
  v11 = v10;
  v13 = v12;

  sub_2412C15C8(v5, v7, v3 & 1);

  sub_24135361C();
  v14 = sub_24135363C();
  v16 = v15;
  v18 = v17;
  sub_2412C15C8(v9, v11, v13 & 1);

  v50 = objc_opt_self();
  v19 = [v50 labelColor];
  sub_24135376C();
  v20 = sub_24135364C();
  v52 = v21;
  v53 = v20;
  v23 = v22;
  v51 = v24;
  sub_2412C15C8(v14, v16, v18 & 1);

  v25 = sub_241353BDC();
  v26 = sub_241353BDC();
  v27 = sub_241353BDC();
  v28 = [v25 stringByReplacingOccurrencesOfString:v26 withString:v27];

  sub_241353C0C();
  v29 = sub_24135366C();
  v31 = v30;
  LOBYTE(v27) = v32;
  sub_2413535EC();
  v33 = sub_24135365C();
  v35 = v34;
  v37 = v36;

  sub_2412C15C8(v29, v31, v27 & 1);

  sub_24135360C();
  v38 = sub_24135363C();
  v40 = v39;
  LOBYTE(v28) = v41;
  sub_2412C15C8(v33, v35, v37 & 1);

  v42 = [v50 labelColor];
  sub_24135376C();
  v43 = sub_24135364C();
  v45 = v44;
  LOBYTE(v35) = v46;
  v48 = v47;
  sub_2412C15C8(v38, v40, v28 & 1);

  *a1 = v53;
  *(a1 + 8) = v23;
  *(a1 + 16) = v51 & 1;
  *(a1 + 24) = v52;
  *(a1 + 32) = v43;
  *(a1 + 40) = v45;
  *(a1 + 48) = v35 & 1;
  *(a1 + 56) = v48;
  sub_2412C15D8(v53, v23, v51 & 1);

  sub_2412C15D8(v43, v45, v35 & 1);

  sub_2412C15C8(v43, v45, v35 & 1);

  sub_2412C15C8(v53, v23, v51 & 1);
}

__n128 sub_2412BC1A8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24135340C();
  sub_2412BBD6C(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = 0;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_2412BC258@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_24135349C();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391A8);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391B0);
  MEMORY[0x28223BE20](v29);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391B8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391C0);
  MEMORY[0x28223BE20](v32);
  v13 = &v29 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391C8);
  MEMORY[0x28223BE20](v35);
  v15 = (&v29 - v14);
  *v15 = sub_24135388C();
  v15[1] = v16;
  v37 = v2;
  sub_24135357C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391D0);
  sub_2412BFE94();
  sub_24135320C();
  v17 = swift_allocObject();
  v18 = *(v2 + 16);
  *(v17 + 1) = *v2;
  *(v17 + 2) = v18;
  v19 = *(v2 + 48);
  *(v17 + 3) = *(v2 + 32);
  *(v17 + 4) = v19;
  v20 = &v11[*(v9 + 36)];
  *v20 = sub_2412C0114;
  v20[1] = v17;
  sub_2412C016C(v2, &v41);
  sub_2412BCDE0(v11, v2, v8);
  sub_241246210(v8, v6, &qword_27E5391B0);
  swift_storeEnumTagMultiPayload();
  sub_2412C01A4();
  sub_2412C0230();
  v21 = v31;
  sub_24135347C();
  sub_241246278(v8, &qword_27E5391B0);
  sub_241246278(v11, &qword_27E5391B8);
  sub_24135348C();
  LOBYTE(v11) = sub_24135357C();
  sub_24135356C();
  sub_24135356C();
  if (sub_24135356C() != v11)
  {
    sub_24135356C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539260);
  sub_2412C0314();
  sub_24135370C();
  (*(v33 + 8))(v21, v34);
  sub_241246278(v13, &qword_27E5391C0);
  v22 = *(v2 + 40);
  v41 = *v2;
  v42 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539270);
  sub_24135385C();
  v23 = v38;
  v24 = v39;
  v25 = v40;
  v26 = v15 + *(v35 + 36);
  *v26 = v22;
  *(v26 + 1) = v23;
  *(v26 + 2) = v24;
  v26[24] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539278);
  sub_24135343C();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_241366530;
  v41 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539280);
  sub_2413537AC();
  sub_24135342C();
  sub_24135341C();
  sub_2412C0B9C(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2412C0EBC();
  sub_2413536FC();

  return sub_241246278(v15, &qword_27E5391C8);
}

uint64_t sub_2412BC870@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539208);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v4 = &v44 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391F8);
  MEMORY[0x28223BE20](v45);
  v6 = &v44 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391E8);
  MEMORY[0x28223BE20](v49);
  v46 = &v44 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24135316C();

  v8 = sub_2412C03A0(v51[0]);

  v51[8] = v8;
  swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = a1[1];
  v9[1] = *a1;
  v9[2] = v10;
  v11 = a1[3];
  v9[3] = a1[2];
  v9[4] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2412C0FC8;
  *(v12 + 24) = v9;
  sub_2412C016C(a1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539218);
  sub_24123D370(&qword_27E5392C8, &qword_27E5392C0);
  sub_24123D370(&qword_27E539210, &qword_27E539218);
  sub_24135386C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241366530;
  LOBYTE(v9) = sub_2413535BC();
  *(inited + 32) = v9;
  v14 = sub_2413535DC();
  *(inited + 33) = v14;
  v15 = sub_2413535CC();
  sub_2413535CC();
  if (sub_2413535CC() != v9)
  {
    v15 = sub_2413535CC();
  }

  sub_2413535CC();
  if (sub_2413535CC() != v14)
  {
    v15 = sub_2413535CC();
  }

  sub_2413531EC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v47 + 32))(v6, v4, v48);
  v24 = &v6[*(v45 + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_2413535AC();
  v26 = sub_2413535CC();
  sub_2413535CC();
  if (sub_2413535CC() != v25)
  {
    v26 = sub_2413535CC();
  }

  sub_2413531EC();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v46;
  sub_24127EFF0(v6, v46, &qword_27E5391F8);
  v36 = v35 + *(v49 + 36);
  *v36 = v26;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  v37 = sub_24135388C();
  v39 = v38;
  v40 = v35;
  v41 = v50;
  sub_24127EFF0(v40, v50, &qword_27E5391E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391D0);
  v43 = (v41 + *(result + 36));
  *v43 = sub_2412BCDA0;
  v43[1] = 0;
  v43[2] = v37;
  v43[3] = v39;
  return result;
}

uint64_t sub_2412BCDA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24135378C();
  result = sub_24135329C();
  *a1 = v2;
  a1[1] = v4;
  return result;
}

__n128 sub_2412BCDE0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539280);
  sub_2413537AC();
  sub_24135388C();
  sub_24135336C();
  sub_241246210(a1, a3, &qword_27E5391B8);
  v5 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5391B0) + 36));
  v5[4] = v11;
  v5[5] = v12;
  v5[6] = v13;
  *v5 = v7;
  v5[1] = v8;
  result = v10;
  v5[2] = v9;
  v5[3] = v10;
  return result;
}

uint64_t sub_2412BCF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  *a4 = sub_24135345C();
  *(a4 + 8) = 0x4022000000000000;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392D8);
  return sub_2412BCFEC(v7, a3, a1, (a4 + *(v8 + 44)));
}

uint64_t sub_2412BCFEC@<X0>(uint64_t a1@<X2>, _OWORD *a2@<X3>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  *&v93 = a1;
  v108 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392E0);
  MEMORY[0x28223BE20](v6);
  v8 = (v92 - v7);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392E8);
  MEMORY[0x28223BE20](v94);
  v96 = v92 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392F0);
  MEMORY[0x28223BE20](v95);
  v101 = v92 - v10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392F8);
  MEMORY[0x28223BE20](v99);
  *&v104 = v92 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539300);
  MEMORY[0x28223BE20](v97);
  v107 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = v92 - v14;
  MEMORY[0x28223BE20](v15);
  v106 = v92 - v16;
  v17 = sub_241353BDC();
  v18 = sub_241353BDC();
  v19 = sub_241353BDC();
  v20 = [v17 stringByReplacingOccurrencesOfString:v18 withString:v19];

  v109 = sub_241353C0C();
  v105 = v21;

  LOBYTE(v17) = sub_24135359C();
  v22 = sub_2413535CC();
  sub_2413535CC();
  if (sub_2413535CC() != v17)
  {
    v22 = sub_2413535CC();
  }

  v103 = v22;
  sub_2413531EC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v129 = 0;
  v100 = sub_24135362C();
  KeyPath = swift_getKeyPath();
  __asm { FMOV            V0.2D, #9.0 }

  *v8 = _Q0;
  v92[1] = *(v6 + 44);
  *&v110[0] = sub_2412C054C(v93);
  swift_getKeyPath();
  v36 = swift_allocObject();
  v37 = a2[1];
  *(v36 + 16) = *a2;
  *(v36 + 32) = v37;
  v38 = a2[3];
  *(v36 + 48) = a2[2];
  *(v36 + 64) = v38;
  *(v36 + 80) = a3;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2412C105C;
  *(v39 + 24) = v36;
  sub_2412C016C(a2, v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539310);
  sub_24123D370(&qword_27E539318, &qword_27E539308);
  sub_24123D370(&qword_27E539320, &qword_27E539310);
  sub_24135386C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392D0);
  inited = swift_initStackObject();
  v93 = xmmword_241366530;
  *(inited + 16) = xmmword_241366530;
  v41 = sub_24135359C();
  *(inited + 32) = v41;
  v42 = sub_2413535AC();
  *(inited + 33) = v42;
  v43 = sub_2413535CC();
  sub_2413535CC();
  if (sub_2413535CC() != v41)
  {
    v43 = sub_2413535CC();
  }

  sub_2413535CC();
  v44 = sub_2413535CC();
  v45 = v96;
  if (v44 != v42)
  {
    v43 = sub_2413535CC();
  }

  sub_2413531EC();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24127EFF0(v8, v45, &qword_27E5392E0);
  v54 = v45 + *(v94 + 36);
  *v54 = v43;
  *(v54 + 8) = v47;
  *(v54 + 16) = v49;
  *(v54 + 24) = v51;
  *(v54 + 32) = v53;
  *(v54 + 40) = 0;
  v55 = swift_initStackObject();
  *(v55 + 16) = v93;
  v56 = sub_2413535BC();
  *(v55 + 32) = v56;
  v57 = sub_2413535DC();
  *(v55 + 33) = v57;
  v58 = sub_2413535CC();
  sub_2413535CC();
  if (sub_2413535CC() != v56)
  {
    v58 = sub_2413535CC();
  }

  sub_2413535CC();
  if (sub_2413535CC() != v57)
  {
    v58 = sub_2413535CC();
  }

  sub_2413531EC();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v101;
  sub_24127EFF0(v45, v101, &qword_27E5392E8);
  v68 = v67 + *(v95 + 36);
  *v68 = v58;
  *(v68 + 8) = v60;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v66;
  *(v68 + 40) = 0;
  v69 = [objc_opt_self() tertiarySystemBackgroundColor];
  v70 = sub_24135376C();
  v71 = sub_24135358C();
  v72 = v104;
  sub_24127EFF0(v67, v104, &qword_27E5392F0);
  v73 = v72 + *(v99 + 36);
  *v73 = v70;
  *(v73 + 8) = v71;
  v74 = v102;
  v75 = &v102[*(v97 + 36)];
  v76 = *(sub_24135335C() + 20);
  v77 = *MEMORY[0x277CE0118];
  v78 = sub_24135344C();
  (*(*(v78 - 8) + 104))(&v75[v76], v77, v78);
  __asm { FMOV            V0.2D, #16.0 }

  *v75 = _Q0;
  *&v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539328) + 36)] = 256;
  sub_24127EFF0(v72, v74, &qword_27E5392F8);
  v80 = v106;
  sub_24127EFF0(v74, v106, &qword_27E539300);
  v81 = v107;
  sub_241246210(v80, v107, &qword_27E539300);
  v82 = v105;
  *&v110[0] = v109;
  *(&v110[0] + 1) = v105;
  v104 = xmmword_2413680E0;
  v110[1] = xmmword_2413680E0;
  v83 = v103;
  LOBYTE(v111) = v103;
  *(&v111 + 1) = *v128;
  DWORD1(v111) = *&v128[3];
  *(&v111 + 1) = v24;
  *&v112 = v26;
  *(&v112 + 1) = v28;
  *&v113 = v30;
  BYTE8(v113) = 0;
  *(&v113 + 9) = *v127;
  HIDWORD(v113) = *&v127[3];
  v84 = KeyPath;
  v85 = v100;
  *&v114 = KeyPath;
  *(&v114 + 1) = v100;
  v86 = v108;
  *v108 = v110[0];
  v86[1] = xmmword_2413680E0;
  v87 = v111;
  v88 = v112;
  v89 = v114;
  v86[4] = v113;
  v86[5] = v89;
  v86[2] = v87;
  v86[3] = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539330);
  sub_241246210(v81, v86 + *(v90 + 48), &qword_27E539300);
  sub_241246210(v110, v115, &qword_27E539338);
  sub_241246278(v80, &qword_27E539300);
  sub_241246278(v81, &qword_27E539300);
  v115[0] = v109;
  v115[1] = v82;
  v116 = v104;
  v117 = v83;
  *v118 = *v128;
  *&v118[3] = *&v128[3];
  v119 = v24;
  v120 = v26;
  v121 = v28;
  v122 = v30;
  v123 = 0;
  *v124 = *v127;
  *&v124[3] = *&v127[3];
  v125 = v84;
  v126 = v85;
  return sub_241246278(v115, &qword_27E539338);
}

void *sub_2412BD944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = sub_241353BDC();
  v9 = sub_241353BDC();
  v10 = sub_241353BDC();
  v11 = [v8 stringByReplacingOccurrencesOfString:v9 withString:v10];

  v12 = sub_241353C0C();
  v14 = v13;

  v15 = swift_allocObject();
  swift_weakInit();
  result = swift_allocObject();
  result[2] = v15;
  result[3] = a3;
  result[4] = a1;
  *a4 = v12;
  *(a4 + 8) = v14;
  *(a4 + 16) = v7;
  *(a4 + 24) = sub_2412C1068;
  *(a4 + 32) = result;
  *(a4 + 40) = a1;
  return result;
}

uint64_t sub_2412BDA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_241353EEC();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_241353ECC();

    v11 = sub_241353EBC();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    v12[5] = a2;
    v12[6] = a3;
    sub_241327238(0, 0, v7, &unk_2413684B8, v12);
  }

  return result;
}

uint64_t sub_2412BDC0C@<X0>(uint64_t a1@<X8>)
{
  sub_24125D5A0();

  v2 = sub_24135366C();
  v4 = v3;
  v6 = v5;
  sub_2413535FC();
  v7 = sub_24135363C();
  v9 = v8;
  v11 = v10;
  sub_2412C15C8(v2, v4, v6 & 1);

  sub_24135362C();
  v12 = sub_24135365C();
  v14 = v13;
  v16 = v15;

  sub_2412C15C8(v7, v9, v11 & 1);

  v17 = [objc_opt_self() labelColor];
  sub_24135376C();
  v18 = sub_24135364C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2412C15C8(v12, v14, v16 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_2412BDDC0@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_24135335C();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539438);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539440) - 8;
  MEMORY[0x28223BE20](v63);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539448);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539450);
  MEMORY[0x28223BE20](v61);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539458);
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x28223BE20](v17);
  v62 = &v61 - v18;
  v70 = *v1;
  v19 = swift_allocObject();
  v20 = v1[1];
  *(v19 + 16) = *v1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v1 + 4);
  v67 = v1;
  sub_2412C19CC(&v70, v68);

  sub_2413537EC();
  v21 = sub_24135358C();
  v22 = 1.0;
  sub_2413531EC();
  v23 = &v14[*(v12 + 44)];
  *v23 = v21;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = *(v3 + 28);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24135344C();
  (*(*(v30 - 8) + 104))(&v5[v28], v29, v30);
  __asm { FMOV            V0.2D, #8.0 }

  *v5 = _Q0;
  v36 = sub_24135377C();
  sub_24135323C();
  sub_2412C1A28(v5, v8, MEMORY[0x277CDFC08]);
  v37 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539460) + 36)];
  v38 = v68[1];
  *v37 = v68[0];
  *(v37 + 1) = v38;
  *(v37 + 4) = v69;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539468);
  *&v8[*(v39 + 52)] = v36;
  *&v8[*(v39 + 56)] = 256;
  v40 = sub_24135388C();
  v42 = v41;
  sub_2412C1A90(v5);
  v43 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539470) + 36)];
  *v43 = v40;
  v43[1] = v42;
  if ((v1[1] & 1) == 0)
  {
    v22 = 0.0;
  }

  sub_24127EFF0(v8, v10, &qword_27E539438);
  *&v10[*(v63 + 44)] = v22;
  v44 = sub_24135388C();
  v46 = v45;
  v47 = &v16[*(v61 + 36)];
  sub_24127EFF0(v10, v47, &qword_27E539440);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539478) + 36));
  *v48 = v44;
  v48[1] = v46;
  sub_24127EFF0(v14, v16, &qword_27E539448);
  sub_2412C1AEC();
  sub_2412C1C5C();
  v49 = v62;
  sub_2413536AC();
  sub_241246278(v16, &qword_27E539450);
  LOBYTE(v44) = sub_24135358C();
  sub_2413531EC();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v66;
  (*(v64 + 32))(v66, v49, v65);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5394B0);
  v60 = v58 + *(result + 36);
  *v60 = v44;
  *(v60 + 8) = v51;
  *(v60 + 16) = v53;
  *(v60 + 24) = v55;
  *(v60 + 32) = v57;
  *(v60 + 40) = 0;
  return result;
}

uint64_t sub_2412BE368@<X0>(uint64_t a1@<X8>)
{
  sub_24125D5A0();

  result = sub_24135366C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2412BE410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5394D0);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5394D8);
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5394E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5394E8);
  MEMORY[0x28223BE20](v54);
  v13 = &v53 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5394F0);
  MEMORY[0x28223BE20](v56);
  v15 = &v53 - v14;
  v57 = a1;
  sub_24135350C();
  if (qword_27E537AE0 != -1)
  {
    swift_once();
  }

  v16 = qword_27E5416B8;
  KeyPath = swift_getKeyPath();
  v18 = &v5[*(v3 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;

  sub_24135360C();
  sub_2412C1DDC();
  sub_24135369C();
  sub_241246278(v5, &qword_27E5394D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241366530;
  v20 = sub_2413535BC();
  *(inited + 32) = v20;
  v21 = sub_2413535DC();
  *(inited + 33) = v21;
  v22 = sub_2413535CC();
  sub_2413535CC();
  if (sub_2413535CC() != v20)
  {
    v22 = sub_2413535CC();
  }

  sub_2413535CC();
  if (sub_2413535CC() != v21)
  {
    v22 = sub_2413535CC();
  }

  sub_2413531EC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v6 + 32))(v11, v8, v55);
  v31 = &v11[*(v9 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_24135388C();
  sub_24135328C();
  sub_24127EFF0(v11, v13, &qword_27E5394E0);
  v32 = &v13[*(v54 + 36)];
  v33 = v60;
  *v32 = v59;
  *(v32 + 1) = v33;
  *(v32 + 2) = v61;
  v34 = sub_24135351C();
  v35 = objc_opt_self();
  v36 = &selRef_systemFillColor;
  if ((v34 & 1) == 0)
  {
    v36 = &selRef_tertiarySystemFillColor;
  }

  v37 = [v35 *v36];
  v38 = sub_24135376C();
  v39 = sub_24135358C();
  sub_24127EFF0(v13, v15, &qword_27E5394E8);
  v40 = &v15[*(v56 + 36)];
  *v40 = v38;
  v40[8] = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539518);
  v42 = v58;
  v43 = (v58 + *(v41 + 36));
  v44 = *(sub_24135335C() + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_24135344C();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  __asm { FMOV            V0.2D, #8.0 }

  *v43 = _Q0;
  *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539328) + 36)] = 256;
  return sub_24127EFF0(v15, v42, &qword_27E5394F0);
}

uint64_t sub_2412BE96C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v44 = a4;
  v43 = a3;
  v52 = a2;
  v51 = a1;
  v58 = a6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539428);
  MEMORY[0x28223BE20](v55);
  v56 = &v43 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539430);
  v47 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v46 = &v43 - v7;
  v50 = sub_2413533FC();
  v8 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539408);
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539400);
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x28223BE20](v14);
  v48 = &v43 - v15;
  v16 = sub_241353BDC();
  v17 = objc_opt_self();
  v18 = [v17 bundleWithIdentifier_];

  v19 = v18;
  if (!v18)
  {
    v19 = [v17 mainBundle];
  }

  v20 = v18;
  sub_24135131C();
  v21 = sub_241353C3C();
  v23 = v22;

  v62 = v21;
  v63 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539410);
  v25 = sub_24123D370(&qword_27E539418, &qword_27E539410);
  v26 = sub_24125D5A0();
  v27 = MEMORY[0x277D837D0];
  sub_2413536DC();

  v28 = v50;
  (*(v8 + 104))(v10, *MEMORY[0x277CDDDC0], v50);
  v62 = v24;
  v63 = v27;
  v64 = v25;
  v65 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v48;
  sub_24135374C();
  (*(v8 + 8))(v10, v28);
  (*(v49 + 8))(v13, v11);
  v31 = v30;
  v32 = v11;
  if (v52)
  {
    v33 = v53;
    v34 = v54;
    (*(v53 + 16))(v56, v31, v54);
    swift_storeEnumTagMultiPayload();
    v62 = v32;
    v63 = OpaqueTypeConformance2;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = sub_2412C1948();
    v62 = v34;
    v63 = &type metadata for ARQLDoneButtonAdaptor;
    v64 = v35;
    v65 = v36;
    swift_getOpaqueTypeConformance2();
    sub_24135347C();
  }

  else
  {
    v62 = v43;
    v63 = v44;
    LOBYTE(v64) = v45 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539270);
    sub_24135385C();
    v62 = v59;
    v63 = v60;
    LOBYTE(v64) = v61;
    v59 = v11;
    v60 = OpaqueTypeConformance2;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = sub_2412C1948();
    v39 = v46;
    v34 = v54;
    sub_24135371C();

    v40 = v47;
    v41 = v57;
    (*(v47 + 16))(v56, v39, v57);
    swift_storeEnumTagMultiPayload();
    v62 = v34;
    v63 = &type metadata for ARQLDoneButtonAdaptor;
    v64 = v37;
    v65 = v38;
    swift_getOpaqueTypeConformance2();
    sub_24135347C();
    (*(v40 + 8))(v39, v41);
    v33 = v53;
  }

  return (*(v33 + 8))(v31, v34);
}

uint64_t sub_2412BF0A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5393F0);
  sub_2412C17AC();
  return sub_24135333C();
}

double sub_2412BF138(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

id sub_2412BF2DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARQLUIBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2412BF324(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = [a1 rightBarButtonItem];
  if (!v9 || (v10 = v9, type metadata accessor for ARQLUIBarButtonItem(), v11 = swift_dynamicCastClass(), v10, !v11))
  {
    type metadata accessor for ARQLUIBarButtonItem();
    v15 = sub_24135411C();
    [v15 setTarget_];
    [v15 setAction_];
    [a1 setRightBarButtonItem_];
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    *(v12 + 32) = a5 & 1;
    v13 = &v15[OBJC_IVAR____TtC11AssetViewer19ARQLUIBarButtonItem_onPressed];
    v14 = *&v15[OBJC_IVAR____TtC11AssetViewer19ARQLUIBarButtonItem_onPressed];
    *v13 = sub_2412C1DD0;
    v13[1] = v12;

    sub_2412186FC(v14);
  }
}

uint64_t sub_2412BF4F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539170);
  MEMORY[0x28223BE20](v2 - 8);
  sub_241246210(a1, &v5 - v3, &qword_27E539170);
  return sub_2413533AC();
}

uint64_t sub_2412BF59C(uint64_t a1)
{
  v2 = sub_24135321C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24135338C();
}

uint64_t sub_2412BF664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariantsBar();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2412BF6C8()
{
  type metadata accessor for VariantsBar();

  return sub_2412BA9DC();
}

unint64_t sub_2412BF730()
{
  result = qword_27E539118;
  if (!qword_27E539118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5390D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5390D8);
    sub_24123D370(&qword_27E539100, &qword_27E5390D8);
    swift_getOpaqueTypeConformance2();
    sub_24123D370(&qword_27E539120, &qword_27E539110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539118);
  }

  return result;
}

unint64_t sub_2412BF86C()
{
  result = qword_27E539128;
  if (!qword_27E539128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5390E8);
    sub_2412BF730();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5390D8);
    sub_24123D370(&qword_27E539100, &qword_27E5390D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539128);
  }

  return result;
}

void sub_2412BF9C8()
{
  sub_2412BFB44(319, &qword_27E539150, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_2412BFB44(319, &qword_27E539158, MEMORY[0x277CDD7D8]);
    if (v1 <= 0x3F)
    {
      sub_2412BFB98();
      if (v2 <= 0x3F)
      {
        sub_2412BFC84(319, &qword_27E539168, &qword_27E539170, &unk_241368228, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2412BFC2C();
          if (v4 <= 0x3F)
          {
            sub_2412BFC84(319, &qword_27E539180, &qword_27E538AE0, &unk_241368230, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2412BFB44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2412BFB98()
{
  if (!qword_27E539160)
  {
    type metadata accessor for VariantViewModel();
    sub_2412C1EC4(&qword_27E5390C0, type metadata accessor for VariantViewModel);
    v0 = sub_24135332C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E539160);
    }
  }
}

void sub_2412BFC2C()
{
  if (!qword_27E539178)
  {
    sub_24135321C();
    v0 = sub_24135322C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E539178);
    }
  }
}

void sub_2412BFC84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2412BFD0C()
{
  result = qword_27E539190;
  if (!qword_27E539190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539198);
    sub_2412BF86C();
    sub_2412C1EC4(&qword_27E5391A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539190);
  }

  return result;
}

uint64_t sub_2412BFDC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2412BFE10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2412BFE94()
{
  result = qword_27E5391D8;
  if (!qword_27E5391D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5391D0);
    sub_2412BFF4C();
    sub_24123D370(&qword_27E539220, &qword_27E539228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5391D8);
  }

  return result;
}

unint64_t sub_2412BFF4C()
{
  result = qword_27E5391E0;
  if (!qword_27E5391E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5391E8);
    sub_2412BFFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5391E0);
  }

  return result;
}

unint64_t sub_2412BFFD8()
{
  result = qword_27E5391F0;
  if (!qword_27E5391F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5391F8);
    sub_2412C0064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5391F0);
  }

  return result;
}

unint64_t sub_2412C0064()
{
  result = qword_27E539200;
  if (!qword_27E539200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539208);
    sub_24123D370(&qword_27E539210, &qword_27E539218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539200);
  }

  return result;
}

unint64_t sub_2412C01A4()
{
  result = qword_27E539230;
  if (!qword_27E539230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5391B0);
    sub_2412C0230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539230);
  }

  return result;
}

unint64_t sub_2412C0230()
{
  result = qword_27E539238;
  if (!qword_27E539238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5391B8);
    sub_24123D370(&qword_27E539240, &qword_27E539248);
    sub_24123D370(&qword_27E539250, &qword_27E539258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539238);
  }

  return result;
}

unint64_t sub_2412C0314()
{
  result = qword_27E539268;
  if (!qword_27E539268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5391C0);
    sub_2412C01A4();
    sub_2412C0230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539268);
  }

  return result;
}

uint64_t sub_2412C03A0(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 48);
    while (1)
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {

        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = v2[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539348);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 1;
        }

        v17 = v16 >> 5;
        v14[2] = v13;
        v14[3] = 2 * (v16 >> 5);
        v18 = v14 + 4;
        v19 = v2[3] >> 1;
        v5 = &v14[4 * v19 + 4];
        v20 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        if (v2[2])
        {
          if (v14 != v2 || v18 >= &v2[4 * v19 + 4])
          {
            memmove(v18, v2 + 4, 32 * v19);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v14;
        v10 = __OFSUB__(v20, 1);
        v4 = v20 - 1;
        if (v10)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5[3] = v9;
      v5 += 4;
      v6 += 3;
      if (v1 == ++v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v22 = v2[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v10 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v10)
    {
      goto LABEL_32;
    }

    v2[2] = v24;
  }

  return v2;
}

uint64_t sub_2412C054C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = (result + 48);
    while (1)
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {

        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = v2[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539340);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 1;
        }

        v17 = v16 >> 5;
        v14[2] = v13;
        v14[3] = 2 * v17;
        v18 = v14 + 4;
        v19 = v2[3] >> 1;
        v20 = 4 * v19;
        v21 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        v5 = &v14[4 * v19 + 4];
        if (v2[2])
        {
          if (v14 != v2 || v18 >= &v2[v20 + 4])
          {
            memmove(v18, v2 + 4, v20 * 8);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v14;
        v10 = __OFSUB__(v21, 1);
        v4 = v21 - 1;
        if (v10)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 8) = v8;
      *(v5 + 16) = v7;
      *(v5 + 24) = v9;
      v5 += 32;
      v6 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v23 = v2[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v10 = __OFSUB__(v24, v4);
    v25 = v24 - v4;
    if (v10)
    {
      goto LABEL_32;
    }

    v2[2] = v25;
  }

  return v2;
}

void sub_2412C072C(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_2413544EC();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_2413545BC();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_2413544EC();
      if (!v8)
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

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x245CE29C0](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_2413542AC();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_241246158(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_2413542BC();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_2413542AC();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_241246158(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_2413542BC();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2412C0A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5393E8);
    v3 = sub_2413545BC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_2412B365C(v6 + 40 * v4, v19);
      result = sub_24135454C();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_2412B365C(*(v3 + 48) + 40 * i, v18);
        v11 = MEMORY[0x245CE2910](v18, v19);
        result = sub_2412AF728(v18);
        if (v11)
        {
          sub_2412AF728(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2412C0B9C(uint64_t a1)
{
  v2 = sub_24135343C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5392A8);
    v9 = sub_2413545BC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2412C1EC4(&qword_27E5392B0, MEMORY[0x277CDDE90]);
      v16 = sub_241353B8C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_2412C1EC4(&qword_27E5392B8, MEMORY[0x277CDDE90]);
          v23 = sub_241353BCC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2412C0EBC()
{
  result = qword_27E539288;
  if (!qword_27E539288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5391C8);
    sub_24123D370(&qword_27E539290, &qword_27E539298);
    sub_2412C0F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539288);
  }

  return result;
}

unint64_t sub_2412C0F74()
{
  result = qword_27E5392A0;
  if (!qword_27E5392A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5392A0);
  }

  return result;
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2412C1074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2412450EC;

  return sub_241309DEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2412C113C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VariantsBar() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2412BB4CC(v4, a1);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for VariantsBar();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2413534BC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24135321C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2412C13D4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for VariantsBar();
  v6 = *(v4 - 8);
  result = v4 - 8;
  v7 = (v2 + *(result + 52) + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
  if (*v7)
  {
    return (*v7)(*a2);
  }

  return result;
}

unint64_t sub_2412C1458()
{
  result = qword_27E539390;
  if (!qword_27E539390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539388);
    sub_24123D370(&qword_27E539398, &qword_27E5393A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539390);
  }

  return result;
}

unint64_t sub_2412C1518()
{
  result = qword_27E5393B8;
  if (!qword_27E5393B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5393B0);
    sub_24123D370(&qword_27E5393C0, &qword_27E5393C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5393B8);
  }

  return result;
}

uint64_t sub_2412C15C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2412C15D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2412C15E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2412C1630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2412C1694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2412C16DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2412C17AC()
{
  result = qword_27E5393F8;
  if (!qword_27E5393F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5393F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539410);
    sub_24123D370(&qword_27E539418, &qword_27E539410);
    sub_24125D5A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2412C1948();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5393F8);
  }

  return result;
}

unint64_t sub_2412C1948()
{
  result = qword_27E539420;
  if (!qword_27E539420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539420);
  }

  return result;
}

uint64_t sub_2412C1A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2412C1A90(uint64_t a1)
{
  v2 = sub_24135335C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2412C1AEC()
{
  result = qword_27E539480;
  if (!qword_27E539480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539450);
    sub_2412C1BA4();
    sub_24123D370(&qword_27E5394A0, &qword_27E539478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539480);
  }

  return result;
}

unint64_t sub_2412C1BA4()
{
  result = qword_27E539488;
  if (!qword_27E539488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539448);
    sub_24123D370(&qword_27E539490, &qword_27E539498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539488);
  }

  return result;
}

unint64_t sub_2412C1C5C()
{
  result = qword_27E5394A8;
  if (!qword_27E5394A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5394A8);
  }

  return result;
}

unint64_t sub_2412C1CD0()
{
  result = qword_27E5394C8;
  if (!qword_27E5394C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5394B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539450);
    sub_2412C1AEC();
    sub_2412C1C5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5394C8);
  }

  return result;
}

unint64_t sub_2412C1DDC()
{
  result = qword_27E5394F8;
  if (!qword_27E5394F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5394D0);
    sub_2412C1EC4(&qword_27E539500, MEMORY[0x277CDE278]);
    sub_24123D370(&qword_27E539508, &qword_27E539510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5394F8);
  }

  return result;
}

uint64_t sub_2412C1EC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2412C1F0C()
{
  result = qword_27E539520;
  if (!qword_27E539520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539518);
    sub_2412C1FC4();
    sub_24123D370(&qword_27E539550, &qword_27E539328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539520);
  }

  return result;
}

unint64_t sub_2412C1FC4()
{
  result = qword_27E539528;
  if (!qword_27E539528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5394F0);
    sub_2412C207C();
    sub_24123D370(&qword_27E539540, &qword_27E539548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539528);
  }

  return result;
}

unint64_t sub_2412C207C()
{
  result = qword_27E539530;
  if (!qword_27E539530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5394E8);
    sub_2412C2108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539530);
  }

  return result;
}

unint64_t sub_2412C2108()
{
  result = qword_27E539538;
  if (!qword_27E539538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5394E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5394D0);
    sub_2412C1DDC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539538);
  }

  return result;
}

uint64_t sub_2412C21F0()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539560);
  __swift_project_value_buffer(v0, qword_27E539560);
  return sub_241352FEC();
}

uint64_t sub_2412C2270(void *a1)
{
  v2 = sub_24135164C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, *a1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_id, v2);
  v6 = sub_24135161C();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_2412C2384(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24130B06C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_2412C2448()
{
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  MEMORY[0x245CE21C0](v0);
  if (*((qword_27E539558 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_27E539558 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_241353E4C();
  }

  sub_241353E6C();
  swift_endAccess();
  v1 = sub_241352FDC();
  v2 = sub_2413540DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_241215000, v1, v2, "Added self to inlinePreviews", v3, 2u);
    MEMORY[0x245CE4870](v3, -1, -1);
  }
}

void sub_2412C2594(uint64_t a1)
{
  v2 = sub_241352FDC();
  v3 = sub_2413540DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_241215000, v2, v3, "Removing self from inlinePreviews", v4, 2u);
    MEMORY[0x245CE4870](v4, -1, -1);
  }

  if (qword_27E537BB8 != -1)
  {
LABEL_21:
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27E539558;
  if (qword_27E539558 >> 62)
  {
    v6 = sub_2413544EC();
  }

  else
  {
    v6 = *((qword_27E539558 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x245CE29C0](v7, v5);
      swift_unknownObjectRelease();
      if (v9 == a1)
      {
LABEL_15:

        swift_beginAccess();
        sub_2412C2384(v7);
        swift_endAccess();

        return;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (*(v5 + 8 * v7 + 32) == a1)
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_20;
    }
  }

  v10 = sub_241352FDC();
  v11 = sub_2413540BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_241215000, v10, v11, "Couldn't find this instance in inlinePreviews", v12, 2u);
    MEMORY[0x245CE4870](v12, -1, -1);
  }
}

BOOL sub_2412C27EC()
{
  v0 = sub_241352FFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v35 = objc_opt_self();
  LODWORD(v37) = [v35 maxInlinePreviewCount];
  if (qword_27E537BC0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27E539560);
  v10 = *(v1 + 16);
  v10(v8, v9, v0);
  v11 = sub_241352FDC();
  v12 = sub_2413540DC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1;
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v37;
    _os_log_impl(&dword_241215000, v11, v12, "maxInlinePreview limit: %d", v14, 8u);
    v15 = v14;
    v1 = v13;
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  v18 = *(v1 + 8);
  v17 = v1 + 8;
  v16 = v18;
  v18(v8, v0);
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_27E539558 >> 62)
  {
    v19 = sub_2413544EC();
  }

  else
  {
    v19 = *((qword_27E539558 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 >= v37)
  {
    v10(v5, v9, v0);
    v20 = sub_241352FDC();
    LOBYTE(v10) = sub_2413540DC();
    if (!os_log_type_enabled(v20, v10))
    {
LABEL_18:

      v16(v5, v0);
      return 0;
    }

    v21 = swift_slowAlloc();
    *v21 = 134218240;
    if (!(qword_27E539558 >> 62))
    {
      v29 = *((qword_27E539558 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
      *(v21 + 4) = v29;
      *(v21 + 6) = 1024;
      *(v21 + 14) = v37;
      v30 = v10;
      v31 = v21;
      _os_log_impl(&dword_241215000, v20, v30, "Currently %ld previews already, greater than %d limit", v21, 0x12u);
      MEMORY[0x245CE4870](v31, -1, -1);
      goto LABEL_18;
    }

LABEL_21:
    v32 = v21;
    v29 = sub_2413544EC();
    v21 = v32;
    goto LABEL_17;
  }

  v37 = v17;
  v20 = objc_opt_self();
  v5 = [v20 processMemory];
  v21 = [v20 currentMemoryFootprint];
  v22 = v5 - v21;
  if (__OFSUB__(v5, v21))
  {
    __break(1u);
    goto LABEL_21;
  }

  v23 = v21;
  v34 = v16;
  v24 = [v35 inlinePreviewMemoryReserve];
  v10(v36, v9, v0);
  v25 = sub_241352FDC();
  v26 = sub_2413540DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218752;
    *(v27 + 4) = v5;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v23;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v22;
    *(v27 + 32) = 1024;
    *(v27 + 34) = v24;
    _os_log_impl(&dword_241215000, v25, v26, "memoryLimit:%ld, currentFootprint:%ld, availableMemory:%ld, memoryReserve: %d", v27, 0x26u);
    MEMORY[0x245CE4870](v27, -1, -1);
  }

  v34(v36, v0);
  return v22 > v24;
}

uint64_t sub_2412C2CBC(uint64_t a1)
{
  v2 = sub_24135164C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241352FFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537BC0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_27E539560);
  (*(v7 + 16))(v9, v10, v6);
  (*(v3 + 16))(v5, a1, v2);
  v11 = sub_241352FDC();
  v12 = sub_2413540BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v7;
    v16 = v15;
    v25 = v15;
    *v14 = 136315138;
    sub_2412C554C();
    v17 = sub_24135491C();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    v20 = sub_2412DDC2C(v17, v19, &v25);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_241215000, v11, v12, "#inline setRuntimeStateObserver no longer used %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245CE4870](v16, -1, -1);
    MEMORY[0x245CE4870](v14, -1, -1);

    return (*(v23 + 8))(v9, v24);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_2412C2FC4(uint64_t a1, char a2)
{
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A538);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 67109378;
    *(v11 + 4) = a2 & 1;
    *(v11 + 8) = 2080;
    sub_2412C554C();
    v13 = sub_24135491C();
    v23 = a1;
    v14 = a2;
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_2412DDC2C(v13, v16, v24);
    a2 = v14;
    a1 = v23;

    *(v11 + 10) = v17;
    _os_log_impl(&dword_241215000, v9, v10, "#inline setEnableShadows to %{BOOL}d for %s", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CE4870](v12, -1, -1);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v18 = swift_beginAccess();
  v19 = qword_27E539558;
  MEMORY[0x28223BE20](v18);
  *(&v22 - 2) = a1;

  v20 = sub_2412DF244(sub_2412C5658, (&v22 - 4), v19);

  if (v20)
  {
    *(v20 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_enableShadowsInline) = a2 & 1;
    sub_24132B1F8(0);
  }

  return result;
}

uint64_t sub_2412C3300()
{
  v0 = sub_241352FFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537BC0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27E539560);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_241352FDC();
  v6 = sub_2413540BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_241215000, v5, v6, "#inline setIsPlaying not supported", v7, 2u);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_2412C348C(uint64_t a1, char a2)
{
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v4 = swift_beginAccess();
  v5 = qword_27E539558;
  MEMORY[0x28223BE20](v4);
  v14[2] = a1;

  v6 = sub_2412DF244(sub_2412C5658, v14, v5);

  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController);
    if (*(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v9 = sub_241352FDC();
        v10 = sub_2413540BC();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_241215000, v9, v10, "Ignoring changing isLoopping because we are in fullscreen", v11, 2u);
          MEMORY[0x245CE4870](v11, -1, -1);
        }

        return;
      }

      v12 = a2 & 1;
      *(v6 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineAnimationState + 1) = v12;

      v13 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController);

      *(v13 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isLooping) = v12;
    }
  }
}

uint64_t sub_2412C36AC(uint64_t a1, double a2)
{
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v4 = swift_beginAccess();
  v5 = qword_27E539558;
  MEMORY[0x28223BE20](v4);
  v8[2] = a1;

  v6 = sub_2412DF244(sub_2412C5658, v8, v5);

  if (v6)
  {
    if (*(*(v6 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24135316C();

      if (*&v8[5] > a2)
      {

        sub_241349784(a2);
      }
    }
  }

  return result;
}

uint64_t sub_2412C3870(uint64_t a1, char a2)
{
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v4 = swift_beginAccess();
  v5 = qword_27E539558;
  MEMORY[0x28223BE20](v4);
  v9[2] = a1;

  v6 = sub_2412DF244(sub_2412C5658, v9, v5);

  if (v6)
  {
    v8 = *(v6 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController);
    if (*(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
    {
      *(*(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isMuted) = a2 & 1;

      sub_241348978();
    }
  }

  return result;
}

void sub_2412C39D4(uint64_t a1, float a2, float a3, float a4)
{
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v8 = swift_beginAccess();
  v9 = qword_27E539558;
  MEMORY[0x28223BE20](v8);
  v24[2] = a1;

  v10 = sub_2412DF244(sub_2412C5658, v24, v9);

  if (v10)
  {
    v11 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
    if (*(*(v10 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) != 2)
    {
LABEL_14:

      return;
    }

    v12 = sub_241352FDC();
    v13 = sub_2413540AC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218496;
      *(v14 + 4) = a2;
      *(v14 + 12) = 2048;
      *(v14 + 14) = a3;
      *(v14 + 22) = 2048;
      *(v14 + 24) = a4;
      _os_log_impl(&dword_241215000, v12, v13, "Remote inline: setCamera yaw:%f, pitch:%f, scale:%f", v14, 0x20u);
      MEMORY[0x245CE4870](v14, -1, -1);
    }

    v15 = *(*(v10 + v11) + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (v15)
    {
      v16 = *&v15[OBJC_IVAR____TtC11AssetViewer16EntityController_type];
      if (v16)
      {
        v17 = (a2 * 3.1416) / 180.0;
        v18 = (a3 * 3.1416) / 180.0;
        *&v15[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw] = v17;
        *&v15[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch] = v18;
        *(v16 + 32) = remainderf(v18 + 6.2832, 6.2832);
        v19 = v15;

        sub_2412596EC();
        *(v16 + 36) = remainderf(6.2832 - v17, 6.2832);
        sub_2412596EC();
        sub_2412596EC();
      }

      if (a4 > 0.0 && LODWORD(a4) >> 23 <= 0xFE)
      {
        v20 = *(*(v10 + v11) + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController);
        if (v20)
        {
          *(v20 + 52) = *(v20 + 60) / a4;

          sub_2412596EC();
          sub_2412596EC();
        }

        goto LABEL_14;
      }

      v21 = sub_241352FDC();
      v22 = sub_2413540DC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = a4;
        _os_log_impl(&dword_241215000, v21, v22, "Ignoring unsafe scale: %f", v23, 0xCu);
        MEMORY[0x245CE4870](v23, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2412C3D5C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v8 = swift_beginAccess();
  v9 = qword_27E539558;
  MEMORY[0x28223BE20](v8);
  v112[2] = a1;

  v10 = sub_2412DF244(sub_2412C50F4, v112, v9);

  if (v10)
  {
    v115 = 0x74736575716572;
    v116 = 0xE700000000000000;
    sub_24135456C();
    if (*(a2 + 16) && (v11 = sub_2412FD8C4(v117), (v12 & 1) != 0))
    {
      sub_2412461A0(*(a2 + 56) + 32 * v11, v118);
      sub_2412AF728(v117);
      v13 = MEMORY[0x277D837D0];
      if (swift_dynamicCast())
      {
        v15 = v115;
        v14 = v116;
        if (v115 == 0x6172656D6163 && v116 == 0xE600000000000000 || (sub_24135497C() & 1) != 0)
        {

          v16 = *(*(v10 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController);
          if (v16)
          {
            v17 = fmodf(6.2832 - v16[9], 6.2832) * 57.296;
            v18 = fmodf(v16[8] + 6.2832, 6.2832) * 57.296;
            v19 = v16[15] / v16[13];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539598);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_241365E60;
            *(v20 + 32) = 7823737;
            *(v20 + 40) = 0xE300000000000000;
            *(v20 + 48) = v17;
            *(v20 + 56) = 0x6863746970;
            *(v20 + 64) = 0xE500000000000000;
            *(v20 + 72) = v18;
            *(v20 + 80) = 0x656C616373;
            *(v20 + 88) = 0xE500000000000000;
            *(v20 + 96) = v19;
            v21 = sub_241245BB0(v20);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5395A0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v22 = sub_2412EE11C(v21);

            (a3)(v22, a1);
LABEL_35:

            goto LABEL_36;
          }

          v39 = sub_241352FDC();
          v40 = sub_2413540BC();
          if (!os_log_type_enabled(v39, v40))
          {
            goto LABEL_29;
          }

          v41 = swift_slowAlloc();
          *v41 = 0;
          v42 = "Unable to get camera controller";
          goto LABEL_28;
        }

        if (v15 == 0x6F6974616D696E61 && v14 == 0xE90000000000006ELL || (sub_24135497C() & 1) != 0)
        {

          v43 = *(*(v10 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_241366280;
          *(v44 + 32) = 0x6E6979616C507369;
          *(v44 + 40) = 0xE900000000000067;
          swift_getKeyPath();
          swift_getKeyPath();

          sub_24135316C();

          v45 = MEMORY[0x277D839B0];
          *(v44 + 48) = v117[0];
          *(v44 + 72) = v45;
          *(v44 + 80) = 0x6E69706F6F4C7369;
          *(v44 + 88) = 0xE900000000000067;
          *(v44 + 96) = *(v43 + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isLooping);
          *(v44 + 120) = v45;
          *(v44 + 128) = 0x54746E6572727563;
          *(v44 + 136) = 0xEB00000000656D69;
          v46 = sub_241348808();
          v47 = MEMORY[0x277D839F8];
          *(v44 + 144) = v46;
          *(v44 + 168) = v47;
          *(v44 + 176) = 0x6E6F697461727564;
          *(v44 + 184) = 0xE800000000000000;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_24135316C();

          v48 = v117[0];
          *(v44 + 216) = MEMORY[0x277D839F8];
          *(v44 + 192) = v48;
          v49 = sub_241245974(v44);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A20);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v50 = sub_2412EDE54(v49);

          (a3)(v50, a1);

          goto LABEL_35;
        }

        if (v15 == 0x6E6979616C507369 && v14 == 0xE900000000000067 || (sub_24135497C() & 1) != 0)
        {

          v115 = 0x6E6979616C507369;
          v116 = 0xE900000000000067;
          sub_24135456C();
          if (!*(a2 + 16) || (v59 = sub_2412FD8C4(v117), (v60 & 1) == 0))
          {
            sub_2412AF728(v117);
            goto LABEL_36;
          }

          sub_2412461A0(*(a2 + 56) + 32 * v59, v118);
          sub_2412AF728(v117);
          sub_241246158(0, &qword_27E5383B8);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_36:

            return;
          }

          v61 = v115;
          Strong = swift_unknownObjectWeakLoadStrong();
          v114 = v61;
          if (!Strong)
          {
            v86 = [v61 BOOLValue];

            sub_24134950C(v86);

            *(v10 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineAnimationState) = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_241365EA0;
            *(inited + 32) = 0x6E6979616C507369;
            *(inited + 40) = 0xE900000000000067;
            swift_getKeyPath();
            swift_getKeyPath();

            sub_24135316C();

            v88 = v117[0];
            *(inited + 72) = MEMORY[0x277D839B0];
            *(inited + 48) = v88;
            v89 = sub_241245974(inited);
            swift_setDeallocating();
            sub_241246278(inited + 32, &unk_27E538A20);
            v90 = sub_2412EDE54(v89);

            (a3)(v90, a1);

            goto LABEL_35;
          }

          v63 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v64 = sub_241353BDC();
          v65 = [v63 initWithDomain:v64 code:4 userInfo:0];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
          v66 = swift_initStackObject();
          *(v66 + 16) = xmmword_241365EA0;
          *(v66 + 32) = 0x726F727265;
          *(v66 + 40) = 0xE500000000000000;
          *(v66 + 72) = sub_241246158(0, &qword_27E539590);
          *(v66 + 48) = v65;
          v67 = v65;
          v68 = sub_241245974(v66);
          swift_setDeallocating();
          sub_241246278(v66 + 32, &unk_27E538A20);
          v69 = sub_241352FDC();
          v70 = sub_2413540BC();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_241215000, v69, v70, "Ignoring setIsPlaying because we are in fullscreen", v71, 2u);
            MEMORY[0x245CE4870](v71, -1, -1);
          }

          v72 = sub_2412EDE54(v68);

          (a3)(v72, a1);

          return;
        }

        if (v15 == 0x72616853776F6873 && v14 == 0xEE00746565685365 || (sub_24135497C() & 1) != 0)
        {

          v73 = swift_unknownObjectWeakLoadStrong();
          if (v73)
          {
            v74 = v73;
            v75 = (v73 + OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock);
            v76 = *(v73 + OBJC_IVAR___ASVPreviewViewControllerInternal_shareSheetReplyBlock);
            *v75 = a3;
            v75[1] = a4;
            sub_2412186FC(v76);

            v77 = sub_241352FDC();
            v78 = sub_2413540AC();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              *v79 = 0;
              _os_log_impl(&dword_241215000, v77, v78, "share sheet reply block set", v79, 2u);
              MEMORY[0x245CE4870](v79, -1, -1);
            }

            *&v118[0] = 0xD000000000000020;
            *(&v118[0] + 1) = 0x8000000241360950;
            sub_24135456C();
            if (*(a2 + 16) && (v80 = sub_2412FD8C4(v117), (v81 & 1) != 0))
            {
              sub_2412461A0(*(a2 + 56) + 32 * v80, v118);
              sub_2412AF728(v117);
              sub_241246278(v118, &qword_27E5386F0);
              v82 = sub_241287420();
              v83 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
              [*&v82[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] invalidate];
              v84 = *&v82[v83];
              *&v82[v83] = 0;

              if ((v82[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] & 1) == 0 && v82[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] == 1)
              {
                [v82 startAutoHideControlsTimer];
              }

              v85 = *&v74[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController];

              v85[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode] = 0;
            }

            else
            {
              sub_2412AF728(v117);

              memset(v118, 0, 32);
              sub_241246278(v118, &qword_27E5386F0);
            }

            return;
          }

LABEL_75:
          v39 = sub_241352FDC();
          v40 = sub_2413540BC();
          if (!os_log_type_enabled(v39, v40))
          {
            goto LABEL_29;
          }

          v41 = swift_slowAlloc();
          *v41 = 0;
          v42 = "Expected previewViewController to exist (be in fullscreen)";
LABEL_28:
          _os_log_impl(&dword_241215000, v39, v40, v42, v41, 2u);
          MEMORY[0x245CE4870](v41, -1, -1);
LABEL_29:

          sub_241244BF0(MEMORY[0x277D84F90]);
          a3();

LABEL_30:

          return;
        }

        if (v15 == 0xD000000000000019 && 0x8000000241360930 == v14)
        {

          goto LABEL_72;
        }

        v91 = sub_24135497C();

        if (v91)
        {
LABEL_72:
          v92 = swift_unknownObjectWeakLoadStrong();
          if (v92)
          {
            v114 = v92;
            v93 = [v92 view];
            if (!v93)
            {
              __break(1u);
              return;
            }

            v94 = v93;
            [v93 frame];
            v96 = v95;
            v98 = v97;
            v100 = v99;
            v102 = v101;

            v119.origin.x = v96;
            v119.origin.y = v98;
            v119.size.width = v100;
            v119.size.height = v102;
            v103 = CGRectGetWidth(v119) + -60.0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
            v104 = swift_initStackObject();
            *(v104 + 16) = xmmword_241365EA0;
            *(v104 + 32) = 0x656D617266;
            v113 = v104 + 32;
            *(v104 + 40) = 0xE500000000000000;
            v120.size.width = 44.0;
            v120.origin.y = 20.0;
            v120.origin.x = v103;
            v120.size.height = 44.0;
            v105 = NSStringFromCGRect(v120);
            v106 = sub_241353C0C();
            v108 = v107;

            *(v104 + 72) = v13;
            *(v104 + 48) = v106;
            *(v104 + 56) = v108;
            v109 = sub_241245974(v104);
            swift_setDeallocating();
            sub_241246278(v113, &unk_27E538A20);
            v110 = sub_2412EDE54(v109);

            (a3)(v110, a1);

            goto LABEL_35;
          }

          goto LABEL_75;
        }
      }
    }

    else
    {
      sub_2412AF728(v117);
    }

    v23 = sub_241352FDC();
    v24 = sub_2413540BC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v117[0] = v26;
      *v25 = 136315138;
      v27 = sub_241353B6C();
      v29 = sub_2412DDC2C(v27, v28, v117);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_241215000, v23, v24, "Unhandled event: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x245CE4870](v26, -1, -1);
      MEMORY[0x245CE4870](v25, -1, -1);
    }

    return;
  }

  v115 = 0x74736575716572;
  v116 = 0xE700000000000000;
  sub_24135456C();
  if (!*(a2 + 16) || (v30 = sub_2412FD8C4(v117), (v31 & 1) == 0))
  {
    sub_2412AF728(v117);
    return;
  }

  sub_2412461A0(*(a2 + 56) + 32 * v30, v118);
  sub_2412AF728(v117);
  if (swift_dynamicCast())
  {
    v33 = v115;
    v32 = v116;
    if (v115 == 0x65636E6174736E69 && v116 == 0xED0000746E756F43 || (sub_24135497C() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539580);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_241365EA0;
      *(v34 + 32) = 0x65636E6174736E69;
      v35 = v34 + 32;
      *(v34 + 40) = 0xED0000746E756F43;
      if (qword_27E539558 >> 62)
      {
        v111 = v34;
        v36 = sub_2413544EC();
        v34 = v111;
      }

      else
      {
        v36 = *((qword_27E539558 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v34 + 48) = v36;
      v37 = sub_241245CB4(v34);
      swift_setDeallocating();
      sub_241246278(v35, &qword_27E539588);
      v38 = sub_2412EE3DC(v37);

      (a3)(v38, a1);
      goto LABEL_30;
    }

    if (v33 == 0x6174536775626564 && v32 == 0xEA00000000007374)
    {
    }

    else
    {
      v51 = sub_24135497C();

      if ((v51 & 1) == 0)
      {
        return;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_241366530;
    *(v52 + 32) = 0xD000000000000012;
    *(v52 + 40) = 0x80000002413608F0;
    v53 = objc_opt_self();
    v54 = [v53 processMemory];
    v55 = MEMORY[0x277D83B88];
    *(v52 + 48) = v54;
    *(v52 + 72) = v55;
    *(v52 + 80) = 0xD000000000000016;
    *(v52 + 88) = 0x8000000241360910;
    v56 = [v53 currentMemoryFootprint];
    *(v52 + 120) = v55;
    *(v52 + 96) = v56;
    v57 = sub_241245974(v52);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A20);
    swift_arrayDestroy();
    v58 = sub_2412EDE54(v57);

    (a3)(v58, a1);
  }
}

uint64_t sub_2412C5114(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_241352FFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v10 = swift_beginAccess();
  v11 = qword_27E539558;
  MEMORY[0x28223BE20](v10);
  *(&v31 - 2) = a1;

  v12 = sub_2412DF244(sub_2412C5658, (&v31 - 4), v11);

  if (v12)
  {
    v13 = sub_241352FDC();
    v14 = sub_2413540DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_241215000, v13, v14, "tearing down", v15, 2u);
      MEMORY[0x245CE4870](v15, -1, -1);
    }

    sub_24124CA78();

    sub_2412C2594(v12);
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_2413545EC();

    v33 = 0xD000000000000026;
    v34 = 0x80000002413609B0;
    sub_24135164C();
    sub_2412C554C();
    v17 = sub_24135491C();
    MEMORY[0x245CE20D0](v17);

    v18 = v33;
    v19 = v34;
    if (qword_27E537BC0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v6, qword_27E539560);
    (*(v7 + 16))(v9, v20, v6);

    v21 = sub_241352FDC();
    v22 = sub_2413540BC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = a2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v31 = a3;
      v26 = v25;
      v36 = v25;
      *v24 = 136315138;
      v33 = v18;
      v34 = v19;
      v35 = 1;
      v27 = sub_241353C7C();
      v29 = sub_2412DDC2C(v27, v28, &v36);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_241215000, v21, v22, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x245CE4870](v26, -1, -1);
      v30 = v24;
      a2 = v32;
      MEMORY[0x245CE4870](v30, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    return a2(a1);
  }
}

unint64_t sub_2412C554C()
{
  result = qword_27E5395A8;
  if (!qword_27E5395A8)
  {
    sub_24135164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5395A8);
  }

  return result;
}

uint64_t sub_2412C55B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2412C55F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2412C5674()
{
  type metadata accessor for QLBundleActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27E5395B0 = v0;
  return result;
}

uint64_t static QLBundleActor.shared.getter()
{
  if (qword_27E537BC8 != -1)
  {
    swift_once();
  }
}

uint64_t QLBundleActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2412C5774()
{
  if (qword_27E537BC8 != -1)
  {
    swift_once();
  }
}

uint64_t QLBundle.sessionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t QLBundle.sessionId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t QLBundle.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t QLBundle.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t QLBundle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_2413545EC();

  MEMORY[0x245CE20D0](v1, v2);
  MEMORY[0x245CE20D0](0x63537065656B202CLL, 0xED0000203A656E65);
  if (v3)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v3)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v6, v7);

  MEMORY[0x245CE20D0](0x3A656C746974202CLL, 0xE900000000000020);
  MEMORY[0x245CE20D0](v4, v5);
  MEMORY[0x245CE20D0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t static QLBundle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_24135497C();
    result = 0;
    if (v9 & 1) == 0 || ((v2 ^ v5))
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_24135497C();
}

uint64_t sub_2412C5B1C()
{
  v1 = 0x6E6563537065656BLL;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_2412C5B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2412C6DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2412C5B9C(uint64_t a1)
{
  v2 = sub_2412C5DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2412C5BD8(uint64_t a1)
{
  v2 = sub_2412C5DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t QLBundle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5395B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v11 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2412C5DD8();
  sub_241354B3C();
  v14 = 0;
  v8 = v10[3];
  sub_2413548BC();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_2413548CC();
  v12 = 2;
  sub_2413548BC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2412C5DD8()
{
  result = qword_27E5395C0;
  if (!qword_27E5395C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5395C0);
  }

  return result;
}

uint64_t QLBundle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5395C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2412C5DD8();
  sub_241354B2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  v9 = sub_24135487C();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_24135488C();
  v21 = 2;
  v13 = sub_24135487C();
  v16 = v15;
  v20 &= 1u;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2412C609C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_24135497C();
    result = 0;
    if (v9 & 1) == 0 || ((v2 ^ v5))
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_24135497C();
}

uint64_t static QLBundle.write(parentFolder:sessionId:title:usdzURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  v8 = sub_2413513EC();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  v9 = sub_24135152C();
  v7[26] = v9;
  v7[27] = *(v9 - 8);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v10 = sub_24135164C();
  v7[31] = v10;
  v7[32] = *(v10 - 8);
  v7[33] = swift_task_alloc();
  if (qword_27E537BC8 != -1)
  {
    swift_once();
  }

  v11 = qword_27E5395B0;

  return MEMORY[0x2822009F8](sub_2412C637C, v11, 0);
}

uint64_t sub_2412C637C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    v5 = *(v0 + 248);
    sub_24135163C();
    v6 = sub_2413515FC();
    v2 = v7;
    (*(v3 + 8))(v4, v5);
    v1 = v6;
  }

  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);

  v58 = v1;
  MEMORY[0x245CE20D0](v1, v2);
  MEMORY[0x245CE20D0](46, 0xE100000000000000);
  MEMORY[0x245CE20D0](1987079281, 0xE400000000000000);
  *(v0 + 56) = 0x656C646E75424C51;
  *(v0 + 64) = 0xE90000000000002FLL;
  v62 = *MEMORY[0x277CC91D8];
  v60 = *(v8 + 104);
  v60(v9);
  sub_24125D5A0();
  sub_24135151C();
  v59 = *(v8 + 8);
  v59(v9, v10);

  v11 = objc_opt_self();

  v12 = [v11 defaultManager];
  v13 = sub_24135144C();
  *(v0 + 104) = 0;
  v14 = [v12 removeItemAtURL:v13 error:v0 + 104];

  v15 = *(v0 + 104);
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v17 = v15;
    v18 = sub_24135139C();

    swift_willThrow();
  }

  v19 = [v11 defaultManager];
  v20 = sub_24135144C();
  *(v0 + 112) = 0;
  v21 = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v0 + 112];

  v22 = *(v0 + 112);
  v23 = *(v0 + 240);
  if (v21)
  {
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    v56 = *(v0 + 208);
    v57 = v2;
    v26 = *(v0 + 200);
    v27 = *(v0 + 184);
    v28 = v22;
    v29 = [v11 &selRef_setDetectionImages_ + 3];
    v30 = sub_24135144C();
    strcpy((v0 + 72), "Preview.usdz");
    *(v0 + 85) = 0;
    *(v0 + 86) = -5120;
    (v60)(v26, v62, v27);
    sub_24135151C();
    v59(v26, v27);
    v31 = sub_24135144C();
    v32 = *(v25 + 8);
    v32(v24, v56);
    *(v0 + 120) = 0;
    LODWORD(v26) = [v29 copyItemAtURL:v30 toURL:v31 error:v0 + 120];

    v33 = *(v0 + 120);
    if (v26)
    {
      v35 = *(v0 + 160);
      v34 = *(v0 + 168);
      sub_2413511EC();
      swift_allocObject();
      v36 = v33;
      sub_2413511DC();
      *(v0 + 16) = v58;
      *(v0 + 24) = v57;
      *(v0 + 32) = 1;
      *(v0 + 40) = v35;
      *(v0 + 48) = v34;
      sub_2412C6AF0();
      v44 = sub_2413511CC();
      v46 = v45;
      v47 = *(v0 + 200);
      v48 = *(v0 + 184);

      *(v0 + 88) = 0x6F736A2E6F666E49;
      *(v0 + 96) = 0xE90000000000006ELL;
      (v60)(v47, v62, v48);
      sub_24135151C();
      v59(v47, v48);
      sub_24135155C();
      v49 = *(v0 + 240);
      v50 = *(v0 + 216);
      v51 = *(v0 + 208);
      v52 = *(v0 + 160);
      v61 = *(v0 + 168);
      v53 = *(v0 + 128);
      v32(*(v0 + 224), v51);
      sub_24125D520(v44, v46);
      (*(v50 + 32))(v53, v49, v51);
      v54 = v53 + *(type metadata accessor for QLBundleResult() + 20);
      *v54 = v58;
      *(v54 + 8) = v57;
      *(v54 + 16) = 1;
      *(v54 + 24) = v52;
      *(v54 + 32) = v61;

      v55 = *(v0 + 8);
      goto LABEL_13;
    }

    v40 = *(v0 + 240);
    v41 = *(v0 + 208);
    v42 = v33;

    sub_24135139C();

    swift_willThrow();
    v32(v40, v41);
  }

  else
  {
    v37 = *(v0 + 208);
    v38 = *(v0 + 216);
    v39 = v22;

    sub_24135139C();

    swift_willThrow();
    (*(v38 + 8))(v23, v37);
  }

  v55 = *(v0 + 8);
LABEL_13:

  return v55();
}

unint64_t sub_2412C6AF0()
{
  result = qword_27E5395D0;
  if (!qword_27E5395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5395D0);
  }

  return result;
}

uint64_t type metadata accessor for QLBundleResult()
{
  result = qword_27E5395E0;
  if (!qword_27E5395E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2412C6B94()
{
  result = qword_27E5395D8;
  if (!qword_27E5395D8)
  {
    type metadata accessor for QLBundleActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5395D8);
  }

  return result;
}

uint64_t sub_2412C6C5C()
{
  result = sub_24135152C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2412C6CE4()
{
  result = qword_27E5395F0;
  if (!qword_27E5395F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5395F0);
  }

  return result;
}

unint64_t sub_2412C6D3C()
{
  result = qword_27E5395F8;
  if (!qword_27E5395F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5395F8);
  }

  return result;
}

unint64_t sub_2412C6D94()
{
  result = qword_27E539600;
  if (!qword_27E539600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539600);
  }

  return result;
}

uint64_t sub_2412C6DE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_24135497C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6563537065656BLL && a2 == 0xE900000000000065 || (sub_24135497C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24135497C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_2412C6F08(double a1, double a2, double a3, double a4, float a5)
{
  REAABBCenter();
  v7.n128_u64[0] = vsub_f32(0, v6);
  v7.n128_f32[2] = 0.0 - v8;
  v7.n128_u32[3] = 0;
  v9.f32[0] = sub_2412FEE00(v7);
  v16 = v9;
  REAABBExtents();
  v13.i64[0] = 0;
  v13.i32[3] = 0;
  LODWORD(v14) = 0;
  *(&v14 + 1) = ((1.0 / fmaxf(fmaxf(v10, v11), v12)) * 0.35) * a5;
  v13.f32[2] = *(&v14 + 1);
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(HIDWORD(v14), v16.f32[0]), v14, *v16.f32, 1), v13, v16, 2), xmmword_241365D00, v16, 3).u64[0];
  return result;
}

void sub_2412C7010(double a1)
{
  v3 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
  v4 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = 0;

  v6 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:sel_tryPlaceModelOrRescheduleTimer selector:0 userInfo:0 repeats:a1];
  v7 = *(v1 + v3);
  *(v1 + v3) = v6;
}

void sub_2412C70BC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_didReceiveFirstARFrame) == 1)
  {
    if ([objc_opt_self() wantsObjectPlacedWithoutPlane])
    {
      sub_2412CAB18(&v82);
      v2 = v82;
      v68 = *&v83[24];
      v71 = *&v83[8];
      v65 = *&v83[40];
      v75 = *&v83[56];
      v84 = v82;
      sub_2412CB1B8(&v84, &v85);
      v3 = v68;
      v4 = v71;
      v5 = v65;
      v6 = v75;
      v80 = v2;
      *&v81[8] = v71;
      *&v81[24] = v68;
      *&v81[40] = v65;
      *&v81[56] = v75;
      goto LABEL_23;
    }

    if (*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy))
    {
      v11 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
      v12 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
      if (v12)
      {
        v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v13)
        {

          [v13 bounds];
          v18 = *(v0 + v11);
          if (v18)
          {
            v72 = v17;
            v76 = v16;
            v66 = v15;
            v69 = v14;
            v19 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
            if (v19)
            {
              v20 = [v19 session];
              v21 = *(v0 + v11);
              if (v21)
              {
                v22 = v20;
                v23 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
                v24.f64[0] = v76;
                if (v23)
                {
                  v24.f64[1] = v72;
                  __asm { FMOV            V0.2D, #0.5 }

                  v30 = vmulq_f64(v24, _Q0);
                  v31.f64[0] = v69;
                  v31.f64[1] = v66;
                  v32 = vcvt_f32_f64(vaddq_f64(v31, v30));
                  [v23 bounds];
                  v36 = v35;
                  v37 = v34;
                  if (qword_27E537C38 != -1)
                  {
                    v78 = v36;
                    v74 = v34;
                    swift_once();
                    v37 = v74;
                    v36 = v78;
                  }

                  *v33.f32 = v32;
                  sub_24125624C(0, v22, &v82, v33, v36, v37, xmmword_27E541810);
                  v2 = v82;

                  if (v2 == 4)
                  {
                    sub_2412C7010(0.1);
                    return;
                  }

                  v67 = *&v83[40];
                  v70 = *&v83[24];
                  v73 = *&v83[8];
                  v77 = *&v83[56];
                  sub_241257A94(v2);
                  v3 = v70;
                  v4 = v73;
                  v5 = v67;
                  v80 = v2;
                  *&v81[16] = *&v83[16];
                  *&v81[32] = *&v83[32];
                  *&v81[48] = *&v83[48];
                  *&v81[64] = *&v83[64];
                  *v81 = *v83;
                  v6 = v77;
LABEL_23:
                  v85.i64[0] = v2;
                  v86 = v4;
                  v87 = v3;
                  v88 = v5;
                  v89 = v6;
                  if (qword_27E537CD0 != -1)
                  {
                    swift_once();
                  }

                  v38 = sub_241352FFC();
                  __swift_project_value_buffer(v38, qword_27E53A538);
                  sub_241257A94(v2);
                  v39 = sub_241352FDC();
                  v40 = sub_2413540DC();
                  sub_24124B044(v2);
                  if (!os_log_type_enabled(v39, v40))
                  {
LABEL_44:

                    if (v2 > 1)
                    {
                      if (v2 == 2 || v2 == 3)
                      {
LABEL_52:
                        sub_24124B044(v2);

                        v52 = OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer;
                        v53 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_placeModelTimer);
                        if (v53)
                        {
                          [v53 invalidate];
                          v54 = *(v1 + v52);
                        }

                        else
                        {
                          v54 = 0;
                        }

                        *(v1 + v52) = 0;

                        v55 = sub_241289004();
                        v56 = [v55 isActive];

                        if (v56)
                        {
                          v57 = swift_allocObject();
                          swift_unknownObjectWeakInit();
                          v58 = swift_allocObject();
                          *(v58 + 16) = v57;
                          v59 = v88;
                          *(v58 + 64) = v87;
                          *(v58 + 80) = v59;
                          *(v58 + 96) = v89;
                          v60 = v86;
                          *(v58 + 32) = v85;
                          *(v58 + 48) = v60;
                          v61 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___coachingOverlayView);
                          sub_241257A94(v2);

                          v62 = v61;
                          [v62 setActive:0 animated:1];
                          sub_241246278(&v80, &qword_27E5383A0);
                          sub_24124B044(v2);

                          v63 = (v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
                          v64 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
                          *v63 = sub_2412CAA14;
                          v63[1] = v58;

                          sub_2412186FC(v64);
                        }

                        else
                        {
                          [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_activateCoachingView object:0];
                          sub_2412C79B0(&v85);
                          sub_241246278(&v80, &qword_27E5383A0);
                          sub_24124B044(v2);
                        }

                        return;
                      }
                    }

                    else if (v2 <= 1)
                    {
                      goto LABEL_52;
                    }

                    objc_opt_self();
                    v51 = swift_dynamicCastObjCClass();
                    sub_241257A94(v2);
                    if (v51)
                    {
                      [v51 alignment];
                    }

                    goto LABEL_52;
                  }

                  v41 = swift_slowAlloc();
                  v42 = swift_slowAlloc();
                  v79 = v42;
                  *v41 = 136315394;
                  if (v2 <= 1)
                  {
                    if (!v2)
                    {
LABEL_40:
                      v43 = 0x800000024135E690;
                      v44 = 0x1000000000000015;
                      goto LABEL_43;
                    }

                    if (v2 == 1)
                    {
                      v43 = 0xE400000000000000;
                      v44 = 1752393069;
LABEL_43:
                      sub_24124B044(v2);
                      v47 = sub_2412DDC2C(v44, v43, &v79);

                      *(v41 + 4) = v47;
                      *(v41 + 12) = 2080;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
                      sub_24124A868();
                      v48 = sub_2413549BC();
                      v50 = sub_2412DDC2C(v48, v49, &v79);

                      *(v41 + 14) = v50;
                      _os_log_impl(&dword_241215000, v39, v40, "[Placement] Got placement location, target: '%s', %s", v41, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x245CE4870](v42, -1, -1);
                      MEMORY[0x245CE4870](v41, -1, -1);
                      goto LABEL_44;
                    }

LABEL_33:
                    objc_opt_self();
                    v45 = swift_dynamicCastObjCClass();
                    sub_241257A94(v2);
                    if (v45)
                    {
                      v46 = [v45 alignment];
                      if (v46 == 1)
                      {
                        v44 = 0x6C61636974726576;
                      }

                      else
                      {
                        v44 = 0xD000000000000010;
                      }

                      if (v46 == 1)
                      {
                        v43 = 0xEE00656E616C7020;
                      }

                      else
                      {
                        v43 = 0x800000024135E6B0;
                      }

                      goto LABEL_43;
                    }

                    goto LABEL_40;
                  }

                  if (v2 == 2)
                  {
                    v44 = 0x6465646E65747865;
                  }

                  else
                  {
                    if (v2 != 3)
                    {
                      goto LABEL_33;
                    }

                    v44 = 0x6574696E69666E69;
                  }

                  v43 = 0xED0000656E616C50;
                  goto LABEL_43;
                }

LABEL_64:
                __break(1u);
                return;
              }

LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_60;
  }

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
    _os_log_impl(&dword_241215000, v8, v9, "Waiting for first arFrame, cancelling placement attempt", v10, 2u);
    MEMORY[0x245CE4870](v10, -1, -1);
  }

  sub_2412C7010(0.1);
}

void sub_2412C7954(uint64_t a1, float32x4_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2412C79B0(a2);
  }
}

void sub_2412C79B0(float32x4_t *a1)
{
  v2 = v1;
  v3 = a1;
  v130 = a1->i64[0];
  v4 = a1[1];
  v133 = a1[2];
  v134 = v4;
  v5 = a1[3];
  v131 = a1[4];
  v132 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v6 - 8);
  v122 = &v119 - v7;
  v8 = sub_2413515EC();
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x28223BE20](v8);
  v119 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v119 - v13;
  if (qword_27E537CD0 != -1)
  {
    goto LABEL_79;
  }

  while (2)
  {
    v14 = sub_241352FFC();
    __swift_project_value_buffer(v14, qword_27E53A538);
    v143[0] = v3->i64[0];
    sub_2412CB1B8(v143, &v138);
    v15 = sub_241352FDC();
    v16 = sub_2413540DC();
    sub_241257AFC(v3);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v138 = v18;
      *v17 = 136315138;
      v19 = sub_2412567A4();
      v21 = sub_2412DDC2C(v19, v20, &v138);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_241215000, v15, v16, "Place object on result: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x245CE4870](v18, -1, -1);
      MEMORY[0x245CE4870](v17, -1, -1);
    }

    v22 = sub_241255FE0();
    v23 = &OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v24 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    v25 = &OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
    v125 = v2;
    v126 = v3;
    if (v22)
    {
      if (v24)
      {
        v26 = &OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
        v27 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
        if (v27 >> 62)
        {
          v25 = sub_2413544EC();
        }

        else
        {
          v25 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v25)
        {
          v25 = &OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
          goto LABEL_35;
        }

        v23 = 0;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x245CE29C0](v23, v27);
            v3 = (v23 + 1);
            if (__OFADD__(v23, 1))
            {
              goto LABEL_17;
            }
          }

          else
          {
            if (v23 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_77;
            }

            v28 = *(v27 + 8 * v23 + 32);
            v3 = (v23 + 1);
            if (__OFADD__(v23, 1))
            {
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          v30 = v126[1];
          v29 = v126[2];
          v31 = v126[3];
          v32 = COERCE_FLOAT(v126[2].i64[1]);
          v33 = COERCE_FLOAT(v126[3].i64[1]);
          v34 = vmulq_f32(v30, v30);
          *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
          *v34.f32 = vrsqrte_f32(v35);
          *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
          v36 = vmulq_n_f32(v30, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
          v37 = vmulq_f32(v29, v36);
          v38 = vmulq_f32(v36, v36);
          v39 = vmulq_f32(v31, v36);
          *v38.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v38, v38, 8uLL)), vadd_f32(vzip1_s32(*v39.i8, *v38.i8), vzip2_s32(*v39.i8, *v38.i8)));
          v40 = vmulq_n_f32(v36, (v37.f32[2] + vaddv_f32(*v37.f32)) / *&v38.i32[1]);
          v41 = vmulq_n_f32(v36, *v38.i32 / *&v38.i32[1]);
          v42 = v36;
          v42.i32[3] = v127.i32[3];
          v127 = v42;
          *v29.f32 = vsub_f32(*v29.f32, *v40.f32);
          v29.f32[2] = v32 - v40.f32[2];
          v43 = vmulq_f32(v29, v29);
          v36.f32[0] = v43.f32[2] + vaddv_f32(*v43.f32);
          *v43.f32 = vrsqrte_f32(v36.u32[0]);
          *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v43.f32, *v43.f32)));
          v44 = vmulq_n_f32(v29, vmul_f32(*v43.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v43.f32, *v43.f32))).f32[0]);
          v45 = vmulq_f32(v31, v44);
          v46 = vmulq_f32(v44, v44);
          *v45.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v45, v45, 8uLL), *&vextq_s8(v46, v46, 8uLL)), vadd_f32(vzip1_s32(*v45.i8, *v46.i8), vzip2_s32(*v45.i8, *v46.i8)));
          v47 = vmulq_n_f32(v44, vdiv_f32(*v45.i8, vdup_lane_s32(*v45.i8, 1)).f32[0]);
          v48 = v44;
          v48.i32[3] = v128.i32[3];
          v128 = v48;
          *v31.f32 = vsub_f32(vsub_f32(*v31.f32, *v41.f32), *v47.f32);
          v31.f32[2] = (v33 - v41.f32[2]) - v47.f32[2];
          v49 = vmulq_f32(v31, v31);
          v44.f32[0] = v49.f32[2] + vaddv_f32(*v49.f32);
          *v49.f32 = vrsqrte_f32(v44.u32[0]);
          *v49.f32 = vmul_f32(*v49.f32, vrsqrts_f32(v44.u32[0], vmul_f32(*v49.f32, *v49.f32)));
          v50 = vmulq_n_f32(v31, vmul_f32(*v49.f32, vrsqrts_f32(v44.u32[0], vmul_f32(*v49.f32, *v49.f32))).f32[0]);
          v50.i32[3] = v129.i32[3];
          v129 = v50;
          v51 = &v28[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType];
          *v51 = v42;
          v51[1] = v48;
          v51[2] = v50;
          v51[3].i8[0] = 0;

          ++v23;
          if (v3 == v25)
          {
            goto LABEL_31;
          }
        }
      }

      goto LABEL_90;
    }

LABEL_18:
    if (!v24)
    {
      goto LABEL_91;
    }

    v52 = *(v24 + *v25);
    if (v52 >> 62)
    {
      v53 = sub_2413544EC();
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v53)
    {
      v2 = v125;
      goto LABEL_35;
    }

    v54 = 0;
    v3 = (v52 & 0xC000000000000001);
    v2 = 1;
    while (v3)
    {
      v55 = MEMORY[0x245CE29C0](v54, v52);
      v26 = (v54 + 1);
      if (__OFADD__(v54, 1))
      {
        goto LABEL_30;
      }

LABEL_26:
      v56 = &v55[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType];
      *(v56 + 1) = 0u;
      *(v56 + 2) = 0u;
      *v56 = 0u;
      v56[48] = 1;

      ++v54;
      if (v26 == v53)
      {
        v2 = v125;
        goto LABEL_32;
      }
    }

    if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_78;
    }

    v55 = *(v52 + 8 * v54 + 32);
    v26 = (v54 + 1);
    if (!__OFADD__(v54, 1))
    {
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    v25 = v26;
LABEL_32:
    v23 = &OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
LABEL_35:

    v57 = *(v2 + *v23);
    if (!v57)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      return;
    }

    v58 = *(v57 + *v25);
    v129.i64[0] = *v23;
    if (v58 >> 62)
    {
      v59 = sub_2413544EC();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = &v138;

    if (v59)
    {
      v60 = 0;
      v2 = v58 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v58 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x245CE29C0](v60, v58);
        }

        else
        {
          if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v61 = *(v58 + 8 * v60 + 32);
        }

        v62 = v61;
        v63 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        v64 = &v61[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
        v138 = *&v61[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 16];
        v65 = *&v61[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 80];
        v67 = *&v61[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 32];
        v66 = *&v61[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 48];
        v141 = *&v61[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 64];
        v142 = v65;
        v139 = v67;
        v140 = v66;
        v64[1].n128_u64[0] = v130;
        v68 = v133;
        v64[2] = v134;
        v64[3] = v68;
        v69 = v131;
        v64[4] = v132;
        v64[5] = v69;
        sub_2412CB1B8(v143, v137);
        sub_241246278(&v138, &qword_27E5383A0);

        ++v60;
        if (v63 == v59)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      swift_once();
      continue;
    }

    break;
  }

LABEL_47:

  v70 = v125;
  v71 = v129.i64[0];
  v72 = *&v125[v129.i64[0]];
  if (!v72)
  {
    goto LABEL_85;
  }

  v73 = *(v72 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  v75 = v123;
  v74 = v124;
  if (!v73)
  {
    goto LABEL_86;
  }

  v76 = &v73[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
  v138 = *&v73[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 16];
  v77 = *&v73[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 80];
  v79 = *&v73[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 32];
  v78 = *&v73[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 48];
  v141 = *&v73[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 64];
  v142 = v77;
  v139 = v79;
  v140 = v78;
  v76[1].n128_u64[0] = v130;
  v80 = v133;
  v76[2] = v134;
  v76[3] = v80;
  v81 = v131;
  v76[4] = v132;
  v76[5] = v81;
  v82 = v126;
  sub_2412CB294(v126, v137);
  v83 = v73;
  sub_241246278(&v138, &qword_27E5383A0);

  v84 = *&v70[v71];
  if (!v84)
  {
    goto LABEL_87;
  }

  v85 = *(v84 + OBJC_IVAR____TtC11AssetViewer15ModelController_feedbackGenerator);
  if (v85)
  {
    v86 = [v85 snapAwayFromScaleFeedbackGenerator];
    if (!v86)
    {
      goto LABEL_89;
    }

    [v86 prepare];
    swift_unknownObjectRelease();
  }

  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if ([objc_opt_self() useSceneReconstructionMeshForOrientation])
  {
    v88 = *(v82 + 32);
    v89 = *(v82 + 64);
    v89.n128_u32[3] = 0;
    v88.n128_u32[3] = 0;
    v133 = v88;
    v134 = v89;

    sub_2412C89B4(sub_2412CB2F0, v87, v134, v133);
  }

  else
  {
    v90 = *(v82 + 64);
    v90.n128_u32[3] = 0;
    v134 = v90;

    sub_2412C8F00(sub_2412CB2F0, v87, v134);
  }

  v134.n128_u64[0] = v87;

  v70[OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld] = 1;
  sub_24128A758();
  v70[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 3;
  [v70 updateInterfaceState];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A930);
  v92 = v121;
  v93 = &v121[*(v91 + 64)];
  sub_241351DBC();
  sub_241351D8C();
  *v93 = 0;
  v94 = *MEMORY[0x277CDAD68];
  v95 = sub_241351DEC();
  v96 = *(v95 - 8);
  (*(v96 + 104))(v92, v94, v95);
  (*(v96 + 56))(v92, 0, 1, v95);
  v97 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
  swift_beginAccess();
  sub_2412CB2F8(v92, &v70[v97]);
  swift_endAccess();
  v98 = sub_241287420();
  v98[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] = 1;

  [*&v70[OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController] startAutoHideControlsTimer];
  v99 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate;
  swift_beginAccess();
  v100 = &v70[v99];
  v101 = v122;
  sub_241246210(v100, v122, &qword_27E538868);
  if ((*(v75 + 48))(v101, 1, v74) == 1)
  {
    sub_241246278(v101, &qword_27E538868);
  }

  else
  {
    v102 = v120;
    (*(v75 + 32))(v120, v101, v74);
    v103 = v119;
    sub_2413515DC();
    sub_24135157C();
    v105 = v104;
    v106 = *(v75 + 8);
    v106(v103, v74);
    v107 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365EA0;
    v135 = sub_241353C0C();
    v136 = v109;
    sub_24135456C();
    *(inited + 96) = MEMORY[0x277D839F8];
    *(inited + 72) = v105;
    sub_241244BF0(inited);
    swift_setDeallocating();
    sub_241246278(inited + 32, &unk_27E538730);
    v110 = sub_241353B4C();

    [v107 sendAnalyticsWithEvent:0 payloadDict:v110];

    v106(v102, v74);
  }

  v111 = *&v70[v129.i64[0]];
  if (!v111)
  {
    goto LABEL_88;
  }

  v112 = *(v111 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v112 >> 62)
  {
    v3 = sub_2413544EC();
  }

  else
  {
    v3 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v113 = 0;
    v2 = v112 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v112 & 0xC000000000000001) != 0)
      {
        v114 = MEMORY[0x245CE29C0](v113, v112);
      }

      else
      {
        if (v113 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v114 = *(v112 + 8 * v113 + 32);
      }

      v115 = v114;
      v116 = (v113 + 1);
      if (__OFADD__(v113, 1))
      {
        goto LABEL_75;
      }

      v117 = *&v114[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
      if (v117)
      {
        v118 = v117;
        [v118 setEnabledGestureTypes_];
      }

      ++v113;
    }

    while (v116 != v3);
  }

  kdebug_asset_placed_ar();
}