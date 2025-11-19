uint64_t sub_2412DEA48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_241352C5C();

    sub_24135190C();

    sub_24135192C();

    *(v1 + 128) = 0;
    *(v1 + 136) = 1;
  }

  return result;
}

uint64_t sub_2412DEB24()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2412DEB98()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return swift_deallocClassInstance();
}

void sub_2412DEC34()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultCenter];
  v2 = *MEMORY[0x277CCA0C0];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v5 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2412DF214;
  v19 = v5;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2412DEF10;
  v17 = &block_descriptor_5;
  v6 = _Block_copy(&v14);

  v7 = [v1 addObserverForName:v2 object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  v8 = [v0 defaultCenter];
  v9 = *MEMORY[0x277CCA0D8];
  v10 = [v3 mainQueue];
  v11 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2412DF234;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2412DEF10;
  v17 = &block_descriptor_6;
  v12 = _Block_copy(&v14);

  v13 = [v8 addObserverForName:v9 object:0 queue:v10 usingBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_2412DEEB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2412DF0E4();
  }

  return result;
}

uint64_t sub_2412DEF10(uint64_t a1)
{
  v2 = sub_24135125C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_24135123C();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_2412DF004()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);
    sub_241244BF0(MEMORY[0x277D84F90]);
    v2 = sub_241353B4C();

    v3 = sub_241353BDC();
    [v1 setProperty:v2 forKey:v3];
  }
}

void sub_2412DF0E4()
{
  sub_241245AB4(&unk_2852FD920);
  sub_2412DF1AC(&unk_2852FD940);
  v1 = *(v0 + 16);
  v2 = sub_241353B4C();

  v3 = sub_241353BDC();
  [v1 setProperty:v2 forKey:v3];
}

uint64_t sub_2412DF1AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2412DF244(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_2413544EC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x245CE29C0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

Swift::Void __swiftcall PreviewViewController.dismissPreviewController()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24135164C();
  v63 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v61 - v7;
  v8 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v11 = sub_241352FFC();
  __swift_project_value_buffer(v11, qword_27E53A538);
  v12 = sub_241352FDC();
  v13 = sub_2413540DC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_241215000, v12, v13, "#inline dismissPreviewController() override called", v14, 2u);
    MEMORY[0x245CE4870](v14, -1, -1);
  }

  v15 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412EA258(&v0[v15], v10);
  v16 = v63;
  if ((*(v63 + 48))(v10, 1, v3) == 1)
  {
    v64.receiver = v0;
    v64.super_class = ObjectType;
    objc_msgSendSuper2(&v64, sel_dismissPreviewController);
    return;
  }

  v17 = v62;
  (*(v16 + 32))(v62, v10, v3);
  (*(v16 + 16))(v6, v17, v3);
  v18 = sub_241352FDC();
  v19 = sub_2413540DC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v65[0] = v21;
    *v20 = 136315138;
    sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
    v22 = sub_24135491C();
    v24 = v23;
    v25 = *(v63 + 8);
    v25(v6, v3);
    v26 = sub_2412DDC2C(v22, v24, v65);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_241215000, v18, v19, "#inline returnInlineReply() uuid: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x245CE4870](v21, -1, -1);
    MEMORY[0x245CE4870](v20, -1, -1);
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v6, v3);
  }

  v27 = v62;
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v28 = swift_beginAccess();
  v29 = qword_27E539558;
  MEMORY[0x28223BE20](v28);
  *(&v61 - 2) = v27;

  v30 = sub_2412DF244(sub_2412C50F4, (&v61 - 4), v29);

  if (!v30)
  {
    goto LABEL_33;
  }

  v31 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v32 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v32)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v33 = *(v32 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v33)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v34 = [v33 session];
  [v34 _removeObserver_];

  sub_241291418();
  v35 = *&v1[v31];
  if (!v35)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v36 = *(v35 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v36)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v37 = v36;
  sub_241321928(0);

  sub_24132C078(0);
  if (v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] - 3 > 2)
  {
LABEL_23:
    v46 = *&v1[v31];
    if (!v46)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v47 = *(v46 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v47)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v48 = [v47 subviews];
    sub_241246158(0, &qword_27E539A90);
    v49 = sub_241353E2C();
    v50 = v49;
    if (v49 >> 62)
    {
      if (sub_2413544EC())
      {
LABEL_27:

        if ((v50 & 0xC000000000000001) == 0)
        {
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v51 = *(v50 + 32);
            goto LABEL_30;
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        v51 = MEMORY[0x245CE29C0](0, v50);
LABEL_30:
        v52 = v51;

        v53 = [v52 layer];

        objc_opt_self();
        v54 = swift_dynamicCastObjCClassUnconditional();
        [v54 setPresentsWithTransaction_];
        sub_24132B1F8(0);
        v55 = swift_allocObject();
        v55[2] = v30;
        v55[3] = v1;
        v55[4] = v54;

        v56 = v1;
        v57 = v53;
        sub_2412E5294(v30, sub_2412EA2BC, v55);

        v58 = sub_241352FDC();
        v59 = sub_2413540DC();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_241215000, v58, v59, "Started exit transition.", v60, 2u);
          MEMORY[0x245CE4870](v60, -1, -1);
        }

        else
        {
        }

LABEL_33:
        v25(v27, v3);
        return;
      }
    }

    else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_36;
  }

  v38 = *&v1[v31];
  if (!v38)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = *(v38 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v39)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v40 = *&v39[qword_27E53A1C8];
  *&v39[qword_27E53A1C8] = 3;
  v41 = v39;
  sub_24131AD44(v40);

  v42 = *&v1[v31];
  if (!v42)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v43 = *(v42 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v43)
  {
    v44 = *&v43[qword_27E53A1D8];
    *&v43[qword_27E53A1D8] = 1065353216;
    v45 = v43;
    sub_24131B3D8(v44);

    goto LABEL_23;
  }

LABEL_47:
  __break(1u);
}

void PreviewViewController.createInlinePreview(with:initialBounds:contextIdReply:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = sub_24135164C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  (*(v15 + 16))(aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v17);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v15 + 32))(v19 + v18, aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v20 = (v19 + ((v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  aBlock[4] = sub_2412EA2C8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v21);
}

void sub_2412DFD98(void (*a1)(uint64_t, void, id), uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v57 = a2;
  v13 = sub_24135164C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v17 = sub_241352FFC();
  __swift_project_value_buffer(v17, qword_27E53A538);
  v18 = sub_241352FDC();
  v19 = sub_2413540DC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_241215000, v18, v19, "#inline createInlinePreview", v20, 2u);
    MEMORY[0x245CE4870](v20, -1, -1);
  }

  if (!sub_2412C27EC())
  {
    v39 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v40 = sub_241353BDC();
    v41 = [v39 initWithDomain:v40 code:8 userInfo:0];

    v42 = sub_241352FDC();
    v43 = sub_2413540BC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_241215000, v42, v43, "Not enough resources to create inline preview", v44, 2u);
      MEMORY[0x245CE4870](v44, -1, -1);
    }

    v56 = v41;
    a1(a3, 0, v41);

    v45 = v56;

    goto LABEL_13;
  }

  v21 = [objc_opt_self() remoteContextWithOptions_];
  if (!v21)
  {
    v46 = sub_241352FDC();
    v47 = sub_2413540BC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v64 = v49;
      *v48 = 136315138;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_2413545EC();

      v58 = 0xD000000000000010;
      v59 = 0x8000000241361340;
      MEMORY[0x245CE20D0](0xD000000000000020, 0x8000000241361310);
      v50 = sub_2412DDC2C(v58, v59, &v64);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_241215000, v46, v47, "%s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x245CE4870](v49, -1, -1);
      MEMORY[0x245CE4870](v48, -1, -1);
    }

    sub_2412EB880();
    v51 = swift_allocError();
    *v52 = 0xD000000000000020;
    *(v52 + 8) = 0x8000000241361310;
    *(v52 + 16) = 0;
    a1(a3, 0, v51);
    v45 = v51;

LABEL_13:

    return;
  }

  v22 = qword_27E539578 + 1;
  if (__OFADD__(qword_27E539578, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v21;
    ++qword_27E539578;
    type metadata accessor for ARQLView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    v56 = a1;
    v58 = 0xD000000000000020;
    v59 = 0x800000024135F540;
    v60 = v25;
    v61 = 1;
    type metadata accessor for ModelController();
    v62 = 0;
    v63 = 0;
    swift_allocObject();
    v26 = sub_24124B758(&v58, v22, 0);
    v55 = [v23 contextId];
    v27 = *(v14 + 16);
    v54 = a3;
    v27(v16, a3, v13);
    type metadata accessor for InlinePreview();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_allTouches) = MEMORY[0x277D84FA0];
    v29 = v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_savedInlineCameraState;
    *v29 = 0;
    *(v29 + 8) = 0;
    __asm { FMOV            V0.4S, #1.0 }

    *(v29 + 16) = _Q0;
    *(v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineAnimationState) = 0;
    *(v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_enableShadowsInline) = 1;
    v35 = (v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_returnInlineReply);
    *v35 = 0;
    v35[1] = 0;
    *(v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview____lazy_storage___backgroundDimmingView) = 0;
    v58 = 0xD000000000000013;
    v59 = 0x8000000241361360;
    v64 = v22;

    v36 = v23;
    v37 = sub_24135491C();
    MEMORY[0x245CE20D0](v37);

    sub_241352FEC();
    (*(v14 + 32))(v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_id, v16, v13);
    v38 = (v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame);
    *v38 = a4;
    v38[1] = a5;
    v38[2] = a6;
    v38[3] = a7;
    *(v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) = v26;
    *(v28 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_remoteContext) = v36;
    sub_2412C2448();

    (v56)(v54, v55, 0);
  }
}

void sub_2412E0730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24135160C();
  if (a3)
  {
    v8 = sub_24135138C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

void PreviewViewController.prepareInlinePreview(withScopedURLWrapperAttributes:for:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24135164C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8, v11);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  v16 = (v15 + v14);
  *v16 = a3;
  v16[1] = a4;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_2412EA2E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_9;
  v17 = _Block_copy(aBlock);

  v18 = a1;

  QLRunInMainThread();
  _Block_release(v17);
}

uint64_t sub_2412E0998(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *), uint64_t a3, void *a4)
{
  v8 = sub_24135152C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v12 = swift_beginAccess();
  v13 = qword_27E539558;
  MEMORY[0x28223BE20](v12);
  *(&v30 - 2) = a1;

  v14 = sub_2412DF244(sub_2412C5658, (&v30 - 4), v13);

  if (v14)
  {
    v15 = [a4 url];
    sub_2413514AC();

    sub_24132C3C4(v11, a1, a2, a3);

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_2413545EC();

    v32 = 0xD000000000000026;
    v33 = 0x80000002413609B0;
    sub_24135164C();
    sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
    v17 = sub_24135491C();
    MEMORY[0x245CE20D0](v17);

    v18 = v32;
    v19 = v33;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v30 = a3;
    v20 = sub_241352FFC();
    __swift_project_value_buffer(v20, qword_27E53A538);

    v21 = sub_241352FDC();
    v22 = sub_2413540BC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      v32 = 0;
      *v23 = 136315138;
      v33 = 0xE000000000000000;
      sub_2413545EC();

      v32 = 0xD000000000000010;
      v33 = 0x8000000241361280;
      MEMORY[0x245CE20D0](v18, v19);
      v25 = v18;
      v26 = sub_2412DDC2C(v32, v33, &v31);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_241215000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245CE4870](v24, -1, -1);
      MEMORY[0x245CE4870](v23, -1, -1);
    }

    else
    {

      v25 = v18;
    }

    v27 = sub_241244BF0(MEMORY[0x277D84F90]);
    sub_2412EB880();
    v28 = swift_allocError();
    *v29 = v25;
    *(v29 + 8) = v19;
    *(v29 + 16) = 1;
    a2(a1, v27, v28);
  }
}

void sub_2412E1060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24135160C();
  v7 = sub_241353B4C();
  if (a3)
  {
    v8 = sub_24135138C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v6, v7);
}

void PreviewViewController.prepareFullscreenPreview(_:initialFrame:previewOptions:fenceHandleCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v33 = a4;
  v32 = a3;
  v14 = sub_24135164C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v17);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v15 + 32))(v24 + v19, v18, v14);
  v25 = (v24 + v20);
  *v25 = a5;
  v25[1] = a6;
  v25[2] = a7;
  v25[3] = a8;
  *(v24 + v21) = a2;
  v26 = (v24 + v22);
  v27 = v33;
  *v26 = v32;
  v26[1] = v27;
  v28 = v34;
  *(v24 + v23) = v34;
  aBlock[4] = sub_2412EA2E8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_15;
  v29 = _Block_copy(aBlock);

  v30 = v28;

  QLRunInMainThread();
  _Block_release(v29);
}

void sub_2412E149C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, void *), uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  *&v151 = a5;
  v152 = a4;
  v16 = type metadata accessor for PreviewType(0);
  MEMORY[0x28223BE20](v16 - 8);
  *&v149 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24135164C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v22 = sub_241352FFC();
  v23 = __swift_project_value_buffer(v22, qword_27E53A538);
  v148 = *(v19 + 16);
  v148(v21, a1, v18);

  v150 = v23;
  v24 = sub_241352FDC();
  v25 = v19;
  v26 = sub_2413540DC();

  v27 = os_log_type_enabled(v24, v26);
  v153 = a3;
  v154 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&t1.a = v147;
    *v28 = 136315650;
    sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
    v145 = a2;
    v146 = v25;
    v29 = v25;
    v30 = sub_24135491C();
    v32 = v31;
    (*(v29 + 8))(v21, v18);
    v33 = sub_2412DDC2C(v30, v32, &t1);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = sub_2413541FC();
    v36 = sub_2412DDC2C(v34, v35, &t1);

    *(v28 + 14) = v36;
    *(v28 + 22) = 2080;
    v37 = sub_241353B6C();
    v39 = sub_2412DDC2C(v37, v38, &t1);

    *(v28 + 24) = v39;
    _os_log_impl(&dword_241215000, v24, v26, "#inline prepareFullscreenPreview %s: frame: %s, previewOptions: %s", v28, 0x20u);
    a1 = v154;
    v40 = v147;
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v40, -1, -1);
    MEMORY[0x245CE4870](v28, -1, -1);

    v41 = v146;
  }

  else
  {

    (*(v25 + 8))(v21, v18);
    v41 = v25;
  }

  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v42 = swift_beginAccess();
  v43 = qword_27E539558;
  MEMORY[0x28223BE20](v42);
  *(&v145 - 2) = a1;

  v44 = sub_2412DF244(sub_2412C5658, (&v145 - 4), v43);

  if (!v44)
  {
    t1.a = 0.0;
    t1.b = -2.68156159e154;
    sub_2413545EC();

    t1.a = -2.31584178e77;
    *&t1.b = 0x80000002413609B0;
    sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
    v56 = sub_24135491C();
    MEMORY[0x245CE20D0](v56);

    a = t1.a;
    b = t1.b;

    v59 = sub_241352FDC();
    v60 = sub_2413540BC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = COERCE_DOUBLE(swift_slowAlloc());
      v156.a = v62;
      *v61 = 136315138;
      t1.a = 0.0;
      t1.b = -2.68156159e154;
      sub_2413545EC();

      t1.a = -2.31584178e77;
      *&t1.b = 0x8000000241361280;
      MEMORY[0x245CE20D0](*&a, *&b);
      v63 = sub_2412DDC2C(*&t1.a, *&t1.b, &v156);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_241215000, v59, v60, "%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v62);
      MEMORY[0x245CE4870](*&v62, -1, -1);
      v64 = v61;
      a1 = v154;
      MEMORY[0x245CE4870](v64, -1, -1);
    }

    v65 = v153;
    sub_2412EB880();
    v66 = swift_allocError();
    *v67 = a;
    *(v67 + 8) = b;
    *(v67 + 16) = 1;
    v65(a1, 0, v66);

    return;
  }

  v45 = v151;
  swift_unknownObjectWeakAssign();
  sub_24132BE58();
  v46 = v149;
  v148(v149, a1, v18);
  v47 = v18;
  v48 = v45;
  (*(v41 + 56))(v46, 0, 1, v47);
  v49 = OBJC_IVAR___ASVPreviewViewControllerInternal_previewType;
  swift_beginAccess();
  sub_2412EBA20(v46, &v45[v49]);
  swift_endAccess();
  v50 = [v45 view];
  if (!v50)
  {
    __break(1u);
    goto LABEL_38;
  }

  v51 = v50;
  v52 = [objc_opt_self() clearColor];
  [v51 setBackgroundColor_];

  v53 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  *&v48[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController] = *(v44 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController);

  v54 = &v48[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState];
  *&v48[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState] = 2;
  [v48 updateInterfaceState];
  sub_24128C620();
  v55 = *&v48[v53];
  if (!v55)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (*(v55 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
  {

    sub_2412547BC();

    sub_24129B3BC();
    sub_2412E2574();
  }

  else
  {
    v68 = sub_241352FDC();
    v69 = sub_2413540DC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_241215000, v68, v69, "#inline Still waiting for initial model load", v70, 2u);
      MEMORY[0x245CE4870](v70, -1, -1);
    }

    v54[8] = 0;
    [v48 updateInterfaceState];
  }

  v71 = sub_241287420();
  v72 = [v71 view];

  if (!v72)
  {
    goto LABEL_39;
  }

  [v72 setAlpha_];

  v73 = sub_24132B4E8();
  v74 = [v48 view];
  if (!v74)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v75 = v74;
  [v74 bounds];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;

  [v73 setFrame_];
  [v73 setAlpha_];
  v84 = [v48 view];
  if (!v84)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v85 = *&v48[v53];
  if (!v85)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v86 = v84;
  [v84 insertSubview:v73 below:*(v85 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView)];

  v87 = [objc_opt_self() newFenceFromDefaultServer];
  if (v87)
  {
    v88 = v87;
    v89 = objc_opt_self();
    [v89 begin];
    v148 = v89;
    [v89 setAnimationDuration_];
    v90 = [*(v44 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_remoteContext) addFence_];
    v91 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_logger;
    v92 = v88;
    v147 = v91;
    v93 = sub_241352FDC();
    v94 = sub_2413540DC();
    v150 = v92;

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412546;
      v97 = v150;
      *(v95 + 4) = v150;
      *v96 = v88;
      *(v95 + 12) = 1024;
      *(v95 + 14) = v90;
      v98 = v97;
      _os_log_impl(&dword_241215000, v93, v94, "fenceHandle: %@, addFence success? %{BOOL}d", v95, 0x12u);
      sub_241246278(v96, &unk_27E539B90);
      v99 = v96;
      v48 = v151;
      MEMORY[0x245CE4870](v99, -1, -1);
      MEMORY[0x245CE4870](v95, -1, -1);
    }

    v100 = [v48 view];
    if (v100)
    {
      v101 = v100;
      [v100 bounds];
      v103 = v102;
      v105 = v104;

      v158.origin.x = a6;
      v158.origin.y = a7;
      v158.size.width = a8;
      v158.size.height = a9;
      Height = CGRectGetHeight(v158);
      CGAffineTransformMakeScale(&t1, Height / v105, Height / v105);
      tx = t1.tx;
      ty = t1.ty;
      v151 = *&t1.a;
      v149 = *&t1.c;
      v159.origin.x = a6;
      v159.origin.y = a7;
      v159.size.width = a8;
      v159.size.height = a9;
      v109 = CGRectGetMidX(v159) - v103 * 0.5;
      v160.origin.x = a6;
      v160.origin.y = a7;
      v160.size.width = a8;
      v160.size.height = a9;
      MidY = CGRectGetMidY(v160);
      CGAffineTransformMakeTranslation(&t1, v109, MidY - v105 * 0.5);
      v111 = *&t1.a;
      v112 = *&t1.c;
      v113 = *&t1.tx;
      *&t1.a = v151;
      *&t1.c = v149;
      t1.tx = tx;
      t1.ty = ty;
      *&v156.a = v111;
      *&v156.c = v112;
      *&v156.tx = v113;
      CGAffineTransformConcat(&v155, &t1, &v156);
      v114 = *&v48[v53];
      if (v114)
      {
        v115 = *(v114 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v115)
        {
          v149 = *&v155.c;
          v151 = *&v155.a;
          v116 = v155.tx;
          v117 = v155.ty;
          v118 = [v115 layer];
          *&t1.a = v151;
          *&t1.c = v149;
          t1.tx = v116;
          t1.ty = v117;
          [v118 setAffineTransform_];

          v119 = (v44 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame);
          *v119 = a6;
          v119[1] = a7;
          v119[2] = a8;
          v119[3] = a9;
          v120 = swift_allocObject();
          v120[2] = v44;
          v120[3] = v48;
          v120[4] = v73;
          *&t1.tx = sub_2412EBACC;
          *&t1.ty = v120;
          *&t1.a = MEMORY[0x277D85DD0];
          *&t1.b = 1107296256;
          *&t1.c = sub_2412D5698;
          *&t1.d = &block_descriptor_248;
          v121 = _Block_copy(&t1);

          v122 = v48;
          v123 = v73;

          v124 = v148;
          [v148 setCompletionBlock_];
          _Block_release(v121);
          v125 = sub_241352FDC();
          v126 = sub_2413540DC();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *v127 = 0;
            _os_log_impl(&dword_241215000, v125, v126, "Committing CATransaction", v127, 2u);
            MEMORY[0x245CE4870](v127, -1, -1);
          }

          [v124 commit];
          v128 = sub_241352FDC();
          v129 = sub_2413540DC();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&dword_241215000, v128, v129, "Replying to prepareFullscreenPreview completion", v130, 2u);
            MEMORY[0x245CE4870](v130, -1, -1);
          }

          v131 = v150;
          v132 = [v150 createXPCRepresentation];
          v153(v154, v132, 0);
          [v131 invalidate];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_241365EA0;
          *(inited + 32) = 0xD000000000000011;
          v134 = inited + 32;
          *(inited + 40) = 0x80000002413612F0;
          *(inited + 72) = MEMORY[0x277D839B0];
          *(inited + 48) = 1;
          v135 = sub_241245974(inited);
          swift_setDeallocating();
          sub_241246278(v134, &unk_27E538A20);
          sub_2412FF19C(2, 0xD000000000000012, 0x80000002413612D0, v135);

          swift_unknownObjectRelease();

          return;
        }

LABEL_45:
        __break(1u);
        return;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v136 = sub_241352FDC();
  v137 = sub_2413540BC();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = COERCE_DOUBLE(swift_slowAlloc());
    v156.a = v139;
    *v138 = 136315138;
    t1.a = 0.0;
    t1.b = -2.68156159e154;
    sub_2413545EC();

    t1.a = -2.31584178e77;
    *&t1.b = 0x8000000241361280;
    MEMORY[0x245CE20D0](0xD000000000000022, 0x80000002413612A0);
    v140 = sub_2412DDC2C(*&t1.a, *&t1.b, &v156);

    *(v138 + 4) = v140;
    _os_log_impl(&dword_241215000, v136, v137, "Error in prepareFullscreenPreview: %s", v138, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(*&v139);
    MEMORY[0x245CE4870](*&v139, -1, -1);
    MEMORY[0x245CE4870](v138, -1, -1);
  }

  v141 = v153;
  v142 = v154;
  sub_2412EB880();
  v143 = swift_allocError();
  *v144 = 0xD000000000000022;
  *(v144 + 8) = 0x80000002413612A0;
  *(v144 + 16) = 1;
  v141(v142, 0, v143);
}

void sub_2412E2574()
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v1 = sub_241352FFC();
  __swift_project_value_buffer(v1, qword_27E53A538);
  v2 = v0;
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v42 = v6;
    *v5 = 136315394;
    v7 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState];
    v8 = v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8];
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v10 = 0xE800000000000000;
        v9 = 0x6465726F68636E61;
      }

      else
      {
        if (v8 == 4)
        {
          v9 = 0x6465726F68636E61;
        }

        else
        {
          v9 = 0xD000000000000011;
        }

        if (v8 == 4)
        {
          v10 = 0xEE006E6564646948;
        }

        else
        {
          v10 = 0x80000002413600F0;
        }
      }
    }

    else if (v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8])
    {
      if (v8 == 1)
      {
        v9 = 0x7463656A626FLL;
      }

      else
      {
        v9 = 0x72676F6C6F487261;
      }

      if (v8 == 1)
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0xEA00000000006D61;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      v9 = 0x676E6964616F6CLL;
    }

    v11 = sub_2412DDC2C(v9, v10, &v42);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2080;
    v12 = sub_2412B9048(*v7, v7[8]);
    v14 = sub_2412DDC2C(v12, v13, &v42);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_241215000, v3, v4, "handleLoadSuccessFromInline: current state: %s -- %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v6, -1, -1);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v15 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v16 = *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (v16)
  {
    v17 = (v16 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneInfo);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v22 = v17[5];
    v23 = v17[6];
    *&v38 = *v17;
    *(&v38 + 1) = v18;
    *&v39 = v19;
    *(&v39 + 1) = v20;
    *&v40 = v21;
    *(&v40 + 1) = v22;
    v41 = v23;
    sub_2412EA8E4(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B60);
    sub_24135430C();
    sub_241255AE8(v38);
    v24 = *&v2[v15];
    if (v24)
    {
      v25 = (v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata);
      v27 = v25[1];
      v26 = v25[2];
      v28 = *v25;
      v41 = *(v25 + 6);
      v39 = v27;
      v40 = v26;
      v38 = v28;
      v29 = v25[1];
      v34 = *v25;
      v35 = v29;
      v36 = v25[2];
      v37 = *(v25 + 6);
      v30[0] = v42;
      v30[1] = v43;
      v31 = v44;
      v32 = *(&v44 + 1);
      v33 = v45;
      sub_241255B50(&v38, &v42);
      sub_241299C34(&v34, v30);
      v42 = v34;
      v43 = v35;
      v44 = v36;
      v45 = v37;
      sub_241244AE8(&v42);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2412E2958(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_241352FDC();
  v7 = sub_2413540DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_241215000, v6, v7, "CATransaction completed", v8, 2u);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = a2;
  sub_2412E317C(a3, sub_2412EBAD8, v9);
}

void sub_2412E2A6C(uint64_t a1, void *a2)
{
  v3 = sub_2413525BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24135256C();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24132B1F8(1);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v7 = sub_241352FFC();
  __swift_project_value_buffer(v7, qword_27E53A538);
  v8 = a2;
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    v12 = sub_241287420();
    v13 = v12[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled];

    *(v11 + 4) = v13;
    _os_log_impl(&dword_241215000, v9, v10, "isARModeEnabled: %{BOOL}d", v11, 8u);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  if ([objc_opt_self() supportsAR] && (v14 = sub_241287420(), v15 = v14[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled], v14, v15 == 1))
  {
    v16 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v17 = *(&v8->isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v17)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (*(v17 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) != 2)
    {
      v18 = sub_241352FDC();
      v19 = sub_2413540DC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_241215000, v18, v19, "Starting basic world tracking", v20, 2u);
        MEMORY[0x245CE4870](v20, -1, -1);
      }

      v21 = *(&v8->isa + v16);
      if (!v21)
      {
        goto LABEL_46;
      }

      v22 = *(v21 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v22)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v23 = objc_allocWithZone(MEMORY[0x277CE53B0]);
      v24 = v22;
      v25 = [v23 init];
      [v25 setLightEstimationEnabled_];
      [v25 setEnvironmentTexturing_];
      [v25 setAutoFocusEnabled_];
      [v25 setFrameSemantics_];
      [v25 setDisableMLRelocalization_];
      v26 = [v24 session];
      [v26 runWithConfiguration:v25 options:0];

      (*(v56 + 104))(v6, *MEMORY[0x277CDB590], v57);
      sub_24135258C();

      v17 = *(&v8->isa + v16);
      if (!v17)
      {
LABEL_48:
        __break(1u);
        return;
      }
    }

    v27 = *(v17 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v27)
    {
      goto LABEL_43;
    }

    v28 = *&v27[qword_27E53A1C8];
    *&v27[qword_27E53A1C8] = 3;
    v29 = v27;
    sub_24131AD44(v28);

    v30 = *(&v8->isa + v16);
    if (!v30)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v31 = *(v30 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v31)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v32 = *&v31[qword_27E53A1E0];
    *&v31[qword_27E53A1E0] = 0;
    v33 = v31;
    sub_24131B77C(v32);
  }

  else
  {
    v34 = sub_241352FDC();
    v35 = sub_2413540DC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_241215000, v34, v35, "AR not supported so transitioning to Object mode", v36, 2u);
      MEMORY[0x245CE4870](v36, -1, -1);
    }

    v37 = *(&v8->isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v37)
    {
      goto LABEL_40;
    }

    v38 = *(v37 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v38)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v39 = *&v38[qword_27E53A1C8];
    *&v38[qword_27E53A1C8] = 0;
    v40 = v38;
    sub_24131AD44(v39);

    sub_241291524();
  }

  v41 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v42 = *(&v8->isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v42)
  {
    __break(1u);
    goto LABEL_35;
  }

  v43 = *(v42 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v43)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v44 = [v43 session];
  [v44 _addObserver_];

  v45 = *(&v8->isa + v41);
  if (!v45)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v46 = *(v45 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = v46;
  sub_24135259C();
  v48 = sub_24135268C();
  sub_2413525CC();
  v48(v58, 0);

  v49 = *(&v8->isa + v41);
  if (!v49)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v50 = *(v49 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v50)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v50[qword_27E53A1C0] = 1;
  v51 = v50;
  sub_24131BF18();
  v52 = v51;
  v53 = sub_241352FDC();
  v54 = sub_2413540DC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = *(v52 + qword_27E53A1C8);

    _os_log_impl(&dword_241215000, v53, v54, "updateIBL for: %ld", v55, 0xCu);
    MEMORY[0x245CE4870](v55, -1, -1);
  }

  else
  {

    v53 = v52;
  }

  sub_24131C5B4(*(&v52->isa + qword_27E53A1C8));
}

void sub_2412E317C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27E537B38 != -1)
  {
    swift_once();
  }

  v40[2] = xmmword_27E538CD8;
  v40[3] = *&byte_27E538CE8;
  v41 = byte_27E538CF8;
  v40[0] = xmmword_27E538CB8;
  v40[1] = *&qword_27E538CC8;
  sub_241246210(v40, v38, &qword_27E538110);
  v8 = sub_241244128();
  sub_241246278(v40, &qword_27E538110);
  if (qword_27E537B30 != -1)
  {
    swift_once();
  }

  v38[2] = xmmword_27E538C90;
  v38[3] = *&byte_27E538CA0;
  v39 = byte_27E538CB0;
  v38[0] = xmmword_27E538C70;
  v38[1] = *&qword_27E538C80;
  sub_241246210(v38, v36, &unk_27E538AB0);
  v9 = sub_241243CE0();
  sub_241246278(v38, &unk_27E538AB0);
  if (qword_27E537B50 != -1)
  {
    swift_once();
  }

  v36[2] = xmmword_27E538DB0;
  v36[3] = *&byte_27E538DC0;
  v37 = byte_27E538DD0;
  v36[0] = xmmword_27E538D90;
  v36[1] = *&qword_27E538DA0;
  sub_241246210(v36, v34, &qword_27E538110);
  v10 = sub_241244128();
  sub_241246278(v36, &qword_27E538110);
  if (qword_27E537B58 != -1)
  {
    swift_once();
  }

  v34[2] = xmmword_27E538DF8;
  v34[3] = *&byte_27E538E08;
  v35 = byte_27E538E18;
  v34[0] = xmmword_27E538DD8;
  v34[1] = *&qword_27E538DE8;
  sub_241246210(v34, v32, &qword_27E538110);
  v11 = sub_241244128();
  sub_241246278(v34, &qword_27E538110);
  if (qword_27E537B60 != -1)
  {
    swift_once();
  }

  v32[2] = xmmword_27E538E40;
  v32[3] = *&byte_27E538E50;
  v33 = byte_27E538E60;
  v32[0] = xmmword_27E538E20;
  v32[1] = *&qword_27E538E30;
  sub_241246210(v32, &aBlock, &qword_27E538110);
  v12 = sub_241244128();
  sub_241246278(v32, &qword_27E538110);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v13 = sub_241352FFC();
  __swift_project_value_buffer(v13, qword_27E53A538);
  v14 = sub_241352FDC();
  v15 = sub_2413540DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134219008;
    *(v16 + 4) = v8;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v9;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v10;
    *(v16 + 32) = 2048;
    *(v16 + 34) = v11;
    *(v16 + 42) = 2048;
    *(v16 + 44) = v12;
    _os_log_impl(&dword_241215000, v14, v15, "#inline runIntroPropertyAnimator - moveModelDuration: %f, fadeDuration: %f, springMass: %f, springStiffness: %f, springDamping: %f", v16, 0x34u);
    MEMORY[0x245CE4870](v16, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v4;
  v18 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v30 = sub_2412EBAE0;
  v31 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2412D5698;
  v29 = &block_descriptor_257;
  v19 = _Block_copy(&aBlock);
  v20 = a1;
  v21 = v4;

  v22 = [v18 initWithDuration:1 curve:v19 animations:v8];
  _Block_release(v19);
  v23 = swift_allocObject();
  *(v23 + 2) = v21;
  v23[3] = v10;
  v23[4] = v11;
  v23[5] = v12;
  v23[6] = v9;
  *(v23 + 7) = a2;
  *(v23 + 8) = a3;
  v30 = sub_2412EBAE8;
  v31 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2412E3D1C;
  v29 = &block_descriptor_263;
  v24 = _Block_copy(&aBlock);
  v25 = v21;

  [v22 addCompletion_];
  _Block_release(v24);
  [v22 startAnimation];
}

void sub_2412E3A10(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  v3 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v4)
    {
      v5 = [v4 layer];
      v6[0] = 0x3FF0000000000000;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v5 setAffineTransform_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2412E3AB4(int a1, id a2, double a3, double a4, double a5, double a6, void (*a7)(id))
{
  v13 = [a2 view];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() systemBackgroundColor];
    [v14 setBackgroundColor_];

    v16 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:a3 stiffness:a4 damping:a5 initialVelocity:{0.0, 0.0}];
    v17 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v16 timingParameters:a6];
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    v21[4] = sub_2412EBAFC;
    v21[5] = v18;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_2412D5698;
    v21[3] = &block_descriptor_269;
    v19 = _Block_copy(v21);
    v20 = a2;

    [v17 addAnimations_];
    _Block_release(v19);
    a7([v17 startAnimation]);
  }

  else
  {
    __break(1u);
  }
}

void sub_2412E3C9C()
{
  v0 = sub_241287420();
  v1 = [v0 view];

  if (v1)
  {
    [v1 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2412E3D1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_2412E3D70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, float a6)
{
  v7 = v6;
  v122 = a4;
  v121 = a3;
  v129 = a2;
  v11 = sub_2413538CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v124 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_2413538FC();
  v14 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_241352B6C();
  v16 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v20 = *&v7[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (v20)
  {
    v21 = *(v20 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v120 = v11;
    v119 = v12;
    v118 = v14;
    *&v137 = a1;
    if (v21 >> 62)
    {
      goto LABEL_62;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
    {

      v140 = v19;
      v141 = v7;
      if (i)
      {
        v23 = 0;
        v142 = v21 & 0xC000000000000001;
        *&v139 = v21 & 0xFFFFFFFFFFFFFF8;
        *&v138 = v16 + 8;
        while (1)
        {
          if (v142)
          {
            v26 = MEMORY[0x245CE29C0](v23, v21);
          }

          else
          {
            if (v23 >= *(v139 + 16))
            {
              goto LABEL_59;
            }

            v26 = *(v21 + 8 * v23 + 32);
          }

          v24 = v26;
          v27 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v28 = *&v7[v19];
          if (!v28)
          {
            break;
          }

          v29 = *(v28 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
          if (!v29)
          {
            goto LABEL_65;
          }

          v30 = v21;
          v31 = i;
          v32 = v29;
          sub_24135292C();
          v33 = sub_2413524BC();

          if (!v33)
          {
            goto LABEL_66;
          }

          sub_241352C5C();

          sub_2413518AC();
          sub_241352B5C();

          (*v138)(v18, v143);
          v19 = v140;
          v7 = v141;
          v34 = *&v141[v140];
          if (!v34)
          {
            goto LABEL_67;
          }

          v35 = *(v34 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
          if (!v35)
          {
            goto LABEL_68;
          }

          v16 = [v35 session];
          v36 = [v16 currentFrame];

          if (v36)
          {

            v24 = v36;
          }

          else
          {
            v37 = *&v7[v19];
            if (!v37)
            {
              goto LABEL_76;
            }

            v38 = *(v37 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
            if (!v38)
            {
              goto LABEL_78;
            }

            v39 = v38;
            sub_24135292C();
            v40 = sub_2413524BC();

            if (!v40)
            {
              goto LABEL_77;
            }

            v16 = v24;
            sub_241248C00();

            v7 = v141;
          }

          ++v23;
          i = v31;
          v25 = v27 == v31;
          v21 = v30;
          if (v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
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
        goto LABEL_79;
      }

LABEL_23:

      v41 = *&v7[v19];
      if (!v41)
      {
        goto LABEL_80;
      }

      v16 = *(v41 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController);
      if (!v16)
      {
        goto LABEL_81;
      }

      v42 = *(v137 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_savedInlineCameraState + 16);
      v16[2] = *(v137 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_savedInlineCameraState);
      v16[3] = v42;

      sub_2412596EC();

      v43 = dispatch_group_create();
      v44 = [objc_opt_self() mainScreen];
      v130 = [v44 currentOrientation];

      v45 = *&v7[v19];
      if (!v45)
      {
        goto LABEL_82;
      }

      v18 = *(v45 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
      v46 = v18 >> 62 ? sub_2413544EC() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v46)
      {
        break;
      }

      v48 = 0;
      v135 = v18 & 0xC000000000000001;
      v134 = v18 & 0xFFFFFFFFFFFFFF8;
      *&v47 = 134218498;
      v126 = v47;
      v128 = v43;
      v127 = v18;
      v133 = v46;
      while (1)
      {
        if (v135)
        {
          v58 = MEMORY[0x245CE29C0](v48, v18);
        }

        else
        {
          if (v48 >= *(v134 + 16))
          {
            goto LABEL_61;
          }

          v58 = *(v18 + 8 * v48 + 32);
        }

        v21 = v58;
        v16 = (v48 + 1);
        if (__OFADD__(v48, 1))
        {
          break;
        }

        dispatch_group_enter(v43);
        v59 = *&v7[v19];
        if (!v59)
        {
          goto LABEL_69;
        }

        v143 = v48 + 1;
        v60 = *(v59 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v60)
        {
          goto LABEL_70;
        }

        v61 = v60;
        sub_24135292C();
        v62 = sub_2413524BC();

        if (!v62)
        {
          goto LABEL_71;
        }

        v63 = *&v7[v19];
        if (!v63)
        {
          goto LABEL_72;
        }

        v64 = *(v63 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v64)
        {
          goto LABEL_73;
        }

        v65 = [v64 session];
        v66 = [v65 currentFrame];

        v67 = *&v7[v19];
        if (!v67)
        {
          goto LABEL_74;
        }

        v142 = v48;
        v68 = *(v67 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v68)
        {
          goto LABEL_75;
        }

        [v68 bounds];
        v70 = v69;
        v72 = v71;
        v73 = swift_allocObject();
        *(v73 + 16) = v43;
        if (a5 == 0.0)
        {
          v49 = *(v21 + OBJC_IVAR____TtC11AssetViewer16EntityController_entity);
          v50 = *(v21 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform + 16);
          v138 = *(v21 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform);
          v139 = *(v21 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform + 32);
          *&v51 = simd_matrix4x4(v50);
          aBlock = v51;
          v145 = v52;
          v146 = v53;
          v147 = v54;
          v55 = v43;
          sub_24135410C();
          sub_241354A8C();
          sub_241354A9C();
          v138 = v145;
          v139 = aBlock;
          v137 = v146;
          v136 = v147;
          sub_241352C5C();
          v16 = v49;
          sub_2413518CC();

          v57 = v142;
          v56 = v143;
        }

        else
        {
          v74 = *(v21 + OBJC_IVAR____TtC11AssetViewer16EntityController_entity);
          sub_241352C5C();
          v75 = v43;
          sub_2413519BC();
          v136 = v76;
          v132 = v77;
          v131 = v78;
          v79 = *(v21 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform);
          v138 = *(v21 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform + 16);
          v139 = v79;
          v137 = *(v21 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform + 32);
          v80 = swift_allocObject();
          *(v80 + 16) = a6;
          *(v80 + 24) = v21;
          *(v80 + 32) = v62;
          *(v80 + 40) = v130;
          *(v80 + 48) = v66;
          *(v80 + 56) = v70;
          *(v80 + 64) = v72;
          v81 = swift_allocObject();
          v82 = v129;
          *(v81 + 16) = v129;
          v83 = v131;
          v84 = v132;
          *(v81 + 32) = v131;
          *(v81 + 48) = v84;
          v85 = v137;
          v86 = v138;
          *(v81 + 64) = v137;
          *(v81 + 80) = v86;
          *(v81 + 96) = v136;
          *(v81 + 112) = v84;
          v87 = v139;
          *(v81 + 128) = v83;
          *(v81 + 144) = v87;
          *(v81 + 160) = v86;
          *(v81 + 176) = v85;
          *(v81 + 192) = v74;
          *(v81 + 200) = v62;
          *(v81 + 208) = sub_2412EBC44;
          *(v81 + 216) = v80;
          v88 = swift_allocObject();
          *(v88 + 16) = v74;
          v89 = v138;
          *(v88 + 32) = v139;
          *(v88 + 48) = v89;
          *(v88 + 64) = v137;
          *(v88 + 80) = v62;
          *(v88 + 88) = sub_2412B3430;
          *(v88 + 96) = v73;
          swift_retain_n();
          swift_retain_n();
          v21 = v21;
          v90 = v66;
          v91 = v82;
          *&v138 = v80;

          *&v137 = sub_2412FCD6C(sub_2412EBC58, v81, sub_2412EBCAC, v88, a5);

          v92 = v73;
          if (qword_27E537CD0 != -1)
          {
            swift_once();
          }

          v93 = sub_241352FFC();
          __swift_project_value_buffer(v93, qword_27E53A538);
          v94 = sub_241352FDC();
          v16 = sub_2413540DC();
          v95 = os_log_type_enabled(v94, v16);
          v19 = v140;
          v57 = v142;
          if (v95)
          {
            v96 = swift_slowAlloc();
            *&v132 = v21;
            v21 = v96;
            *&v131 = swift_slowAlloc();
            v148 = v131;
            *v21 = v126;
            *(v21 + 4) = v137;
            *(v21 + 12) = 2080;
            aBlock = v136;
            LODWORD(v136) = v16;
            *&v137 = v92;
            v97 = v90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
            sub_24123D370(&qword_27E539BA0, &unk_27E538B20);
            v98 = sub_2413549BC();
            v100 = sub_2412DDC2C(v98, v99, &v148);

            *(v21 + 14) = v100;
            *(v21 + 22) = 2080;
            aBlock = v139;
            v101 = sub_2413549BC();
            v103 = sub_2412DDC2C(v101, v102, &v148);

            *(v21 + 24) = v103;
            _os_log_impl(&dword_241215000, v94, v136, "id: %ld animating from: %s to %s", v21, 0x20u);
            v16 = v131;
            swift_arrayDestroy();
            MEMORY[0x245CE4870](v16, -1, -1);
            MEMORY[0x245CE4870](v21, -1, -1);
          }

          else
          {
          }

          v7 = v141;
          v43 = v128;
          v18 = v127;
          v56 = v143;
        }

        v48 = v57 + 1;
        if (v56 == v133)
        {
          goto LABEL_51;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      ;
    }

LABEL_51:

    v104 = *&v7[v19];
    if (!v104)
    {
      goto LABEL_83;
    }

    v105 = *(v104 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v106 = *(v104 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene);
    v107 = *(v104 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v106 == 1)
    {
      if (!v107)
      {
        goto LABEL_84;
      }

      v108 = &qword_27E53A1A8;
    }

    else
    {
      if (!v107)
      {
        goto LABEL_85;
      }

      v108 = &qword_27E53A1A0;
    }

    v109 = *(v107 + *v108);
    sub_241246158(0, &qword_27E538920);

    v110 = sub_24135416C();
    v111 = swift_allocObject();
    v111[2] = v105;
    v111[3] = v7;
    v111[4] = v130;
    v111[5] = v109;
    v112 = v122;
    v111[6] = v121;
    v111[7] = v112;
    *&v146 = sub_2412EBCC4;
    *(&v146 + 1) = v111;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v145 = sub_2412D5698;
    *(&v145 + 1) = &block_descriptor_303;
    v113 = _Block_copy(&aBlock);

    v114 = v7;

    v115 = v123;
    sub_2413538DC();
    v148 = MEMORY[0x277D84F90];
    sub_2412EBCD4(&qword_27E539870, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
    sub_24123D370(&qword_27E539880, &unk_27E538930);
    v116 = v124;
    v117 = v120;
    sub_24135444C();
    sub_24135412C();
    _Block_release(v113);

    (*(v119 + 8))(v116, v117);
    (*(v118 + 8))(v115, v125);
  }

  else
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }
}

void sub_2412E4CA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v68 = a4;
  v50 = a3;
  v57 = sub_241352B6C();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2413517DC();
  v12 = *(v66 - 8);
  v13 = MEMORY[0x28223BE20](v66);
  v65 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v48 = a5;
  v47 = a6;
  if (!(a1 >> 62))
  {
    v15 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_27:
    v48(v13);
    return;
  }

LABEL_26:
  v13 = sub_2413544EC();
  v15 = v13;
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_3:
  v16 = 0;
  v17 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v63 = v67 & 0xFFFFFFFFFFFFFF8;
  v64 = v67 & 0xC000000000000001;
  v62 = (v12 + 8);
  v55 = (v10 + 8);
  v54 = xmmword_241365E70;
  v53 = xmmword_241364640;
  v52 = xmmword_241365E80;
  v51 = xmmword_241365E90;
  v49 = a2;
  while (1)
  {
    if (v64)
    {
      v20 = MEMORY[0x245CE29C0](v16, v67);
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v16 >= *(v63 + 16))
      {
        goto LABEL_25;
      }

      v20 = *(v67 + 8 * v16 + 32);
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    v22 = *(a2 + v17);
    if (!v22)
    {
      break;
    }

    v23 = *(v22 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v23)
    {
      goto LABEL_29;
    }

    v24 = v20;
    v25 = v23;
    sub_24135292C();
    v26 = sub_2413524BC();

    if (!v26)
    {
      goto LABEL_30;
    }

    v27 = *(a2 + v17);
    if (!v27)
    {
      goto LABEL_31;
    }

    v28 = *(v27 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v28)
    {
      goto LABEL_32;
    }

    v29 = [v28 session];
    v30 = [v29 currentFrame];

    v31 = *(a2 + v17);
    if (!v31)
    {
      goto LABEL_33;
    }

    v32 = *(v31 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v32)
    {
      goto LABEL_34;
    }

    v33 = v17;
    v34 = v15;
    [v32 bounds];
    v36 = v35;
    v38 = v37;
    v39 = v65;
    sub_24135296C();
    sub_2413516FC();
    (*v62)(v39, v66);
    RECustomMatrixCameraComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (v30)
      {
        v40 = v30;
        v41 = [v40 camera];
        [v41 projectionMatrixForOrientation:v50 viewportSize:v36 zNear:v38 zFar:{0.01, 1000.0}];
        v60 = v43;
        v61 = v42;
        v58 = v45;
        v59 = v44;

        a2 = v49;
      }

      RECustomMatrixCameraComponentSetProjectionFromMatrix();
    }

    v12 = *&v24[OBJC_IVAR____TtC11AssetViewer16EntityController_entity];
    sub_241352C5C();
    if (v68)
    {

      v46 = v56;
      sub_2413518AC();
      sub_241352B5C();

      (*v55)(v46, v57);
    }

    else
    {
      sub_2413518BC();
    }

    v10 = *&v24[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];

    sub_24133D85C(v18);

    ++v16;
    v15 = v34;
    v19 = v21 == v34;
    v17 = v33;
    if (v19)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_2412E5294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v4 = sub_241352FFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = *(v5 + 16);
  v46 = a1;
  v42 = v10;
  v10(&v37 - v8, a1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_logger, v4);
  if (qword_27E537B40 != -1)
  {
    swift_once();
  }

  v57[2] = xmmword_27E538D20;
  v57[3] = *&byte_27E538D30;
  v58 = byte_27E538D40;
  v57[0] = xmmword_27E538D00;
  v57[1] = *&qword_27E538D10;
  sub_241246210(v57, v55, &qword_27E538110);
  v11 = sub_241244128();
  sub_241246278(v57, &qword_27E538110);
  if (qword_27E537B48 != -1)
  {
    swift_once();
  }

  v55[2] = xmmword_27E538D68;
  v55[3] = *&byte_27E538D78;
  v56 = byte_27E538D88;
  v55[0] = xmmword_27E538D48;
  v55[1] = *&qword_27E538D58;
  sub_241246210(v55, v53, &qword_27E538110);
  v12 = sub_241244128();
  sub_241246278(v55, &qword_27E538110);
  if (qword_27E537B50 != -1)
  {
    swift_once();
  }

  v53[2] = xmmword_27E538DB0;
  v53[3] = *&byte_27E538DC0;
  v54 = byte_27E538DD0;
  v53[0] = xmmword_27E538D90;
  v53[1] = *&qword_27E538DA0;
  sub_241246210(v53, v51, &qword_27E538110);
  v13 = sub_241244128();
  sub_241246278(v53, &qword_27E538110);
  if (qword_27E537B58 != -1)
  {
    swift_once();
  }

  v51[2] = xmmword_27E538DF8;
  v51[3] = *&byte_27E538E08;
  v52 = byte_27E538E18;
  v51[0] = xmmword_27E538DD8;
  v51[1] = *&qword_27E538DE8;
  sub_241246210(v51, v49, &qword_27E538110);
  v14 = sub_241244128();
  sub_241246278(v51, &qword_27E538110);
  if (qword_27E537B60 != -1)
  {
    swift_once();
  }

  v49[2] = xmmword_27E538E40;
  v49[3] = *&byte_27E538E50;
  v50 = byte_27E538E60;
  v49[0] = xmmword_27E538E20;
  v49[1] = *&qword_27E538E30;
  sub_241246210(v49, &v48, &qword_27E538110);
  v15 = sub_241244128();
  sub_241246278(v49, &qword_27E538110);
  v16 = v47;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27E53A538);
  v17 = sub_241352FDC();
  v18 = sub_2413540DC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134219008;
    *(v19 + 4) = v11;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v12;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v13;
    *(v19 + 32) = 2048;
    *(v19 + 34) = v14;
    *(v19 + 42) = 2048;
    *(v19 + 44) = v15;
    _os_log_impl(&dword_241215000, v17, v18, "#inline runExitPropertyAnimator - fadeDuration: %f, moveModelDuration: %f, springMass: %f, springStiffness: %f, springDamping: %f", v19, 0x34u);
    MEMORY[0x245CE4870](v19, -1, -1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
  v21 = sub_24135402C();
  [v20 setFromValue_];

  v22 = v20;
  v23 = sub_24135402C();
  [v22 setToValue_];

  [v22 setDuration_];
  [v22 setMass_];
  [v22 setStiffness_];
  [v22 setDamping_];

  v24 = *&v16[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (v24)
  {
    v40 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);
    v25 = swift_allocObject();
    v41 = v25;
    *(v25 + 16) = v22;
    *(v25 + 24) = v16;
    v42(v45, v9, v4);
    v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v38 = (v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = v4;
    v42 = v9;
    v37 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v47;
    *(v29 + 16) = v46;
    *(v29 + 24) = v30;
    (*(v5 + 32))(v29 + v26, v45, v4);
    v31 = v37;
    *(v29 + v38) = v12;
    *(v29 + v31) = v13;
    *(v29 + v27) = v14;
    *(v29 + v28) = v15;
    v32 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
    v33 = v44;
    *v32 = v43;
    v32[1] = v33;
    v34 = v30;
    v35 = v22;
    v36 = v34;

    sub_2412FCD6C(sub_2412EBB04, v41, sub_2412EBB0C, v29, v11);

    (*(v5 + 8))(v42, v39);
  }

  else
  {
    __break(1u);
  }
}

void sub_2412E59C4(int a1, id a2, double a3, float a4, uint64_t a5)
{
  *&a3 = a4;
  [a2 _solveForInput_];
  v7 = *(a5 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v6;
  v10 = *&v8[qword_27E53A1E0];
  *&v8[qword_27E53A1E0] = 1.0 - v6;
  v11 = v8;
  sub_24131B77C(v10);

  v12 = sub_241287420();
  v13 = [v12 view];

  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v13 setAlpha_];
}

void sub_2412E5AD0(uint64_t a1, char *a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a1;
  v16 = *(a1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame);
  v17 = *(a1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame + 8);
  v18 = *(a1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame + 16);
  v19 = *(a1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame + 24);
  v93.origin.x = v16;
  v93.origin.y = v17;
  v93.size.width = v18;
  v93.size.height = v19;
  Height = CGRectGetHeight(v93);
  v21 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v22 = *&a2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v22)
  {
    __break(1u);
    goto LABEL_30;
  }

  v23 = *(v22 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v23)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v24 = Height;
  [v23 bounds];
  v25 = CGRectGetHeight(v94);
  v26 = v24 / v25;
  v27 = sub_241352FDC();
  v28 = sub_2413540DC();
  v88 = v21;
  if (os_log_type_enabled(v27, v28))
  {
    v87 = a9;
    v29 = v15;
    v30 = swift_slowAlloc();
    v31 = COERCE_DOUBLE(swift_slowAlloc());
    v92.a = v31;
    *v30 = 136315650;
    v32 = sub_2413541FC();
    v34 = sub_2412DDC2C(v32, v33, &v92);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v26;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v25;
    _os_log_impl(&dword_241215000, v27, v28, "original inlineFrame: %s. Using scale: %f newHeight: %f", v30, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(*&v31);
    v35 = v31;
    v21 = v88;
    MEMORY[0x245CE4870](*&v35, -1, -1);
    v36 = v30;
    v15 = v29;
    a9 = v87;
    MEMORY[0x245CE4870](v36, -1, -1);
  }

  v37 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
  v38 = sub_24135402C();
  [v37 setFromValue_];

  v39 = v37;
  v40 = sub_24135402C();
  [v39 setToValue_];

  [v39 setDuration_];
  [v39 setMass_];
  [v39 setStiffness_];
  [v39 setDamping_];

  v41 = swift_allocObject();
  v41[2] = a2;
  v41[3] = a9;
  v41[4] = a10;
  v42 = a2;

  sub_2412E3D70(v15, v39, sub_2412EBBE0, v41, a4, v26);

  v43 = [v42 view];
  if (!v43)
  {
    goto LABEL_31;
  }

  v44 = v43;
  v45 = [objc_opt_self() clearColor];
  [v44 setBackgroundColor_];

  v46 = *&a2[v21];
  if (!v46)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v47 = *(v46 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v47)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v48 = *&v47[qword_27E53A1E0];
  *&v47[qword_27E53A1E0] = 0;
  v49 = v47;
  sub_24131B77C(v48);

  v50 = sub_241287420();
  v51 = [v50 view];

  if (!v51)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v51 setAlpha_];

  sub_24132AEE4();
  v52 = sub_24132B4E8();
  [v52 setAlpha_];

  v53 = *&a2[v21];
  if (!v53)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v54 = *(v53 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  v86 = v15;
  if (v54 >> 62)
  {
    goto LABEL_28;
  }

  v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

  if (v55)
  {
    v56 = 0;
    do
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x245CE29C0](v56, v54);
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
LABEL_21:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          v55 = sub_2413544EC();
          goto LABEL_12;
        }

        v57 = *(v54 + 8 * v56 + 32);
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_21;
        }
      }

      v59 = &v57[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType];
      *(v59 + 1) = 0u;
      *(v59 + 2) = 0u;
      *v59 = 0u;
      v59[48] = 1;

      ++v56;
    }

    while (v58 != v55);
  }

  v85 = a4;

  v95.origin.x = v16;
  v95.origin.y = v17;
  v95.size.width = v18;
  v95.size.height = v19;
  MidX = CGRectGetMidX(v95);
  v96.origin.x = v16;
  v96.origin.y = v17;
  v96.size.width = v18;
  v96.size.height = v19;
  MidY = CGRectGetMidY(v96);
  v62 = *&a2[v88];
  if (!v62)
  {
    goto LABEL_36;
  }

  v63 = *(v62 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v63)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v64 = MidY;
  v65 = a7;
  [v63 frame];
  x = v97.origin.x;
  y = v97.origin.y;
  width = v97.size.width;
  v69 = v97.size.height;
  v70 = CGRectGetMidX(v97);
  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = v69;
  v71 = CGRectGetMidY(v98);
  CGAffineTransformMakeTranslation(&v92, MidX - v70, v64 - v71);
  v72 = sub_241352FDC();
  v73 = sub_2413540AC();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    aBlock[0] = v75;
    *v74 = 136315138;
    v76 = sub_24135424C();
    v78 = sub_2412DDC2C(v76, v77, aBlock);

    *(v74 + 4) = v78;
    _os_log_impl(&dword_241215000, v72, v73, "delta affine transform: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x245CE4870](v75, -1, -1);
    MEMORY[0x245CE4870](v74, -1, -1);
  }

  v79 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:a5 stiffness:a6 damping:v65 initialVelocity:{0.0, 0.0}];
  v80 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v79 timingParameters:v85];
  v81 = swift_allocObject();
  *(v81 + 16) = v86;
  *(v81 + 24) = v42;
  v82 = *&v92.c;
  *(v81 + 32) = *&v92.a;
  *(v81 + 48) = v82;
  *(v81 + 64) = *&v92.tx;
  aBlock[4] = sub_2412EBC38;
  aBlock[5] = v81;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_285;
  v83 = _Block_copy(aBlock);
  v84 = v42;

  [v80 addAnimations_];
  _Block_release(v83);
  [v80 startAnimation];
}

id sub_2412E62C0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_2413525BC();
  result = MEMORY[0x28223BE20](v4 - 8);
  v6 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v7 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14[0] = 0x3FF0000000000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0x3FF0000000000000;
  v14[4] = 0;
  v14[5] = 0;
  result = [result setTransform_];
  v8 = *(a1 + v6);
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    sub_2413525AC();

    v13 = sub_24135268C();
    sub_2413525CC();
    v13(v14, 0);

    return a2();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2412E643C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v9 = a3[1];
  v10 = *a3;
  v4 = *(a3 + 4);
  v5 = *(a3 + 5);
  v6 = sub_24132B4E8();
  [v6 setAlpha_];

  v7 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v8)
    {
      v11[0] = v10;
      v11[1] = v9;
      v12 = v4;
      v13 = v5;
      [v8 setTransform_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2412E650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24135164C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v10 = swift_beginAccess();
  v11 = qword_27E539558;
  MEMORY[0x28223BE20](v10);
  *(&v28 - 2) = a1;

  v12 = sub_2412DF244(sub_2412C5658, (&v28 - 4), v11);

  if (v12)
  {
    (*(v7 + 16))(v9, a1, v6);
    v14 = sub_241352FDC();
    v15 = sub_2413540DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v29 = a2;
      v19 = v18;
      v31 = v18;
      *v17 = 136315138;
      sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
      v20 = sub_24135491C();
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_2412DDC2C(v20, v22, &v31);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_241215000, v14, v15, "observeReturnedToInline() called for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v24 = v19;
      a2 = v29;
      MEMORY[0x245CE4870](v24, -1, -1);
      v25 = v17;
      a3 = v30;
      MEMORY[0x245CE4870](v25, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v26 = (v12 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_returnInlineReply);
    v27 = *(v12 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_returnInlineReply);
    *v26 = a2;
    v26[1] = a3;

    sub_2412186FC(v27);
  }

  return result;
}

void sub_2412E6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24135160C();
  v7 = sub_241353B4C();
  (*(a4 + 16))(a4, v6, a2, v7);
}

id sub_2412E6B24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_241352FDC();
  v5 = sub_2413540DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_241215000, v4, v5, "Finished exit transition.", v6, 2u);
    MEMORY[0x245CE4870](v6, -1, -1);
  }

  sub_24132B5BC();
  sub_24129CA9C();
  swift_unknownObjectWeakAssign();

  return [a3 setPresentsWithTransaction_];
}

uint64_t sub_2412E6D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *), void (*a4)(uint64_t, uint64_t))
{
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v8 = swift_beginAccess();
  v9 = qword_27E539558;
  MEMORY[0x28223BE20](v8);
  v12[2] = a1;

  v10 = sub_2412DF244(a3, v12, v9);

  if (v10)
  {
    a4(a2, a1);
  }

  return result;
}

uint64_t sub_2412E6E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{
  v20 = a8;
  v12 = sub_24135164C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241246158(0, &unk_27E53A480);
  sub_2412EB1DC();
  v16 = sub_241353FFC();
  sub_24135162C();
  v17 = a1;
  sub_2412EA304(v16, v15, a5, a6, a7, v20);

  return (*(v13 + 8))(v15, v12);
}

void PreviewViewController.touchesCancelled(_:for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_2412EA5B8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_27;
  v10 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v10);
}

uint64_t sub_2412E71E8(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4)
{
  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v8 = swift_beginAccess();
  v9 = qword_27E539558;
  MEMORY[0x28223BE20](v8);
  v12[2] = a1;

  v10 = sub_2412DF244(a3, v12, v9);

  if (v10)
  {
    sub_24132EC74(a2, a1, a4);
  }

  return result;
}

void PreviewViewController.updateBounds(_:for:fenceHandleCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = sub_24135164C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  (*(v15 + 16))(aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v17);
  v18 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  (*(v15 + 32))(v19 + v18, aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v20 = (v19 + ((v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a2;
  v20[1] = a3;
  aBlock[4] = sub_2412EA5E8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_33;
  v21 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v21);
}

void sub_2412E7700(uint64_t a1, void (*a2)(uint64_t, void, uint64_t), uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v45 = a2;
  v13 = sub_24135164C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v17 = sub_241352FFC();
  v18 = __swift_project_value_buffer(v17, qword_27E53A538);
  (*(v14 + 16))(v16, a1, v13);
  v44[1] = v18;
  v19 = sub_241352FDC();
  v20 = sub_2413540DC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44[0] = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49[0] = v23;
    *v22 = 136315394;
    v24 = sub_2413541FC();
    v26 = sub_2412DDC2C(v24, v25, v49);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
    v27 = sub_24135491C();
    v29 = v28;
    (*(v14 + 8))(v16, v13);
    v30 = sub_2412DDC2C(v27, v29, v49);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_241215000, v19, v20, "#inline updateBounds to %s for %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v23, -1, -1);
    MEMORY[0x245CE4870](v22, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  if (qword_27E537BB8 != -1)
  {
    swift_once();
  }

  v31 = swift_beginAccess();
  v32 = qword_27E539558;
  MEMORY[0x28223BE20](v31);
  v44[-2] = a1;

  v33 = sub_2412DF244(sub_2412C5658, &v44[-4], v32);

  if (v33)
  {
    sub_24132D740(a1, v45, a4, a5, a6, a7);
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_2413545EC();

    v47 = 0xD000000000000026;
    v48 = 0x80000002413609B0;
    sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
    v34 = sub_24135491C();
    MEMORY[0x245CE20D0](v34);

    v36 = v47;
    v35 = v48;

    v37 = sub_241352FDC();
    v38 = sub_2413540BC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      v47 = 0;
      *v39 = 136315138;
      v48 = 0xE000000000000000;
      sub_2413545EC();

      v47 = 0xD000000000000010;
      v48 = 0x8000000241361280;
      MEMORY[0x245CE20D0](v36, v35);
      v41 = sub_2412DDC2C(v47, v48, &v46);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_241215000, v37, v38, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x245CE4870](v40, -1, -1);
      MEMORY[0x245CE4870](v39, -1, -1);
    }

    sub_2412EB880();
    v42 = swift_allocError();
    *v43 = v36;
    *(v43 + 8) = v35;
    *(v43 + 16) = 1;
    v45(a1, 0, v42);
  }
}

void PreviewViewController.inlinePreview(_:setRuntimeStateObserver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24135164C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  aBlock[4] = sub_2412EA5EC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_39;
  v13 = _Block_copy(aBlock);
  sub_24124AD38(a2);

  QLRunInMainThread();
  _Block_release(v13);
}

void sub_2412E8358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24135160C();
  v5 = sub_241353B4C();
  (*(a3 + 16))(a3, v4, v5);
}

void sub_2412E858C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24135164C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + v13 + v11) = a2;
  aBlock[4] = a4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = a5;
  v15 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v15);
}

uint64_t sub_2412E874C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = aBlock - v15;
  sub_24135162C();
  (*(v11 + 16))(v13, v16, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v13, v10);
  *(v18 + v17 + v12) = a4;
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v19);
  return (*(v11 + 8))(v16, v10);
}

void PreviewViewController.inlinePreview(_:setCurrentTime:)(uint64_t a1, double a2)
{
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_2412EA8BC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_63;
  v10 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v10);
}

void PreviewViewController.inlinePreview(_:setIsMuted:)(uint64_t a1, char a2)
{
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_2412EA8C0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_69;
  v10 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v10);
}

uint64_t sub_2412E8E68(char a1, uint64_t a2)
{
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A538);
  (*(v5 + 16))(v7, a2, v4);
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 67109378;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2080;
    sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
    v12 = sub_24135491C();
    v13 = a1;
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_2412DDC2C(v12, v15, &v20);
    a1 = v13;

    *(v11 + 10) = v16;
    _os_log_impl(&dword_241215000, v9, v10, "#inline setIsMuted to %{BOOL}d for %s", v11, 0x12u);
    v17 = v19;
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245CE4870](v17, -1, -1);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return sub_2412C3870(a2, a1 & 1);
}

void PreviewViewController.inlinePreview(_:setCameraYaw:pitch:scale:options:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v13);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v17 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v15, v14, v10);
  *(v19 + v16) = a3;
  *(v19 + v17) = a4;
  *(v19 + v18) = a5;
  *(v19 + ((v18 + 11) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_2412EA8C4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_75;
  v20 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v20);
}

void sub_2412E9768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24135164C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v17 = (v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;
  aBlock[4] = a5;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = a6;
  v18 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v18);
}

void PreviewViewController.sendARQLEvent(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24135164C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8, v11);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  *(v15 + v14) = a1;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a3;
  v16[1] = a4;
  aBlock[4] = sub_2412EA8E0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_87;
  v17 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v17);
}

void sub_2412E9FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_241353B4C();
  v5 = sub_24135160C();
  (*(a3 + 16))(a3, v4, v5);
}

void (*sub_2412EA048(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CE29C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2412EA0C8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2412EA0D0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CE29C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2412EBDF4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2412EA150(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CE29C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2412EA1D0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2412EA1D8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CE29C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2412EBDF8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2412EA258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2412EA304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v11 = sub_24135164C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_2413544EC())
    {
LABEL_3:
      (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
      v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v15 = swift_allocObject();
      (*(v12 + 32))(v15 + v14, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      *(v15 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
      aBlock[4] = a4;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2412D5698;
      aBlock[3] = a5;
      v16 = _Block_copy(aBlock);

      QLRunInMainThread();
      _Block_release(v16);
      return;
    }
  }

  else if (*(a1 + 16))
  {
    goto LABEL_3;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v17 = sub_241352FFC();
  __swift_project_value_buffer(v17, qword_27E53A538);
  v21 = sub_241352FDC();
  v18 = sub_2413540BC();
  if (os_log_type_enabled(v21, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_241215000, v21, v18, a6, v19, 2u);
    MEMORY[0x245CE4870](v19, -1, -1);
  }
}

void _s11AssetViewer21PreviewViewControllerC06inlineC0_27setEnableGradientBackgroundy10Foundation4UUIDV_SbtF_0(uint64_t a1)
{
  v2 = sub_24135164C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v6 = sub_241352FFC();
  __swift_project_value_buffer(v6, qword_27E53A538);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_241352FDC();
  v8 = sub_2413540DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_2412EBCD4(&qword_27E5395A8, MEMORY[0x277CC95F0]);
    v11 = sub_24135491C();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_2412DDC2C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_241215000, v7, v8, "#inline setEnableGradientBackground not supported for %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CE4870](v10, -1, -1);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2412EA8E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_2412EA9FC()
{
  v1 = *(sub_24135164C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_2412C3D5C(v0 + v2, v4, v6, v7);
}

void sub_2412EAA98()
{
  v1 = *(v0 + 16);
  v2 = sub_24135160C();
  (*(v1 + 16))(v1, v2);
}

uint64_t objectdestroy_71Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2412EABA8()
{
  v1 = *(sub_24135164C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL));

  sub_2412C39D4(v0 + v2, v5, v6, v7);
}

uint64_t objectdestroy_65Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2412EACD4()
{
  v1 = *(sub_24135164C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_2412E8E68(v2, v3);
}

uint64_t objectdestroy_59Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2412EADCC()
{
  v1 = *(sub_24135164C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2412C36AC(v0 + v2, v3);
}

uint64_t objectdestroy_41Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_2412EAEE4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_24135164C() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));

  return a1(v3, v4);
}

uint64_t objectdestroy_35Tm_0()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2412EB020(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_24135164C() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_29Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_2412EB144()
{
  v1 = *(sub_24135164C() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 1);

  sub_2412E7700(v0 + v2, v8, v9, v3, v4, v5, v6);
}

unint64_t sub_2412EB1DC()
{
  result = qword_27E539B70;
  if (!qword_27E539B70)
  {
    sub_241246158(255, &unk_27E53A480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539B70);
  }

  return result;
}

uint64_t sub_2412EB244(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, void, uint64_t, uint64_t))
{
  v7 = *(sub_24135164C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return a3(v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2412EB394(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_24135164C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2412EB508()
{
  v1 = *(sub_24135164C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = *(v0 + v4);
  v12 = *(v0 + v5);
  v13 = *(v0 + v5 + 8);
  v14 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_2412E149C(v0 + v2, v11, v12, v13, v14, v7, v8, v9, v10);
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2412EB67C()
{
  v1 = *(sub_24135164C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);

  return sub_2412E0998(v0 + v2, v6, v7, v8);
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}

void sub_2412EB7E8()
{
  v1 = *(sub_24135164C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  sub_2412DFD98(v3, v4, v0 + v2, v6, v7, v8, v9);
}

unint64_t sub_2412EB880()
{
  result = qword_27E53A4A0;
  if (!qword_27E53A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A4A0);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_24135164C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2412EBA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2412EBB0C(double a1)
{
  v3 = *(sub_241352FFC() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  sub_2412E5AD0(v11, v12, a1, v9, v10, v13, v14, v1 + v4, v16, v17);
}

uint64_t objectdestroy_250Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2412EBC58(int a1, double a2, float a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  LODWORD(a5) = *(v15 + 40);
  LODWORD(a8) = *(v15 + 72);
  return sub_2412490D4(a1, *(v15 + 16), *(v15 + 192), *(v15 + 200), *(v15 + 208), *(v15 + 216), a14, a15, a2, a3, *(v15 + 32), a5, *(v15 + 48), *(v15 + 64), a8, *(v15 + 80), *(v15 + 96), *(v15 + 112), *(v15 + 120), *(v15 + 128), *(v15 + 136), *(v15 + 144));
}

uint64_t sub_2412EBCD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2412EBEA4()
{
  v1 = sub_24135426C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_wantsStatusPillHidden))
  {
    return 0;
  }

  v5 = objc_opt_self();
  if ([v5 wantsTrackedRaycastStatus])
  {
    if (*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_trackedRaycastState))
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  if (![v5 wantsShowLastPlacementResultTypeStatus])
  {
    if ((*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode) & 1) == 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v8 = *(result + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState);
      swift_unknownObjectRelease();
      if (v9 != 2)
      {
        return 0;
      }

      v10 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_arTrackingState;
      swift_beginAccess();
      sub_2412ED884(v0 + v10, v3);
      v11 = sub_24135425C();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v3, 2, v11))
      {
        v27 = (*(v12 + 88))(v3, v11);
        if (v27 == *MEMORY[0x277D82DA0])
        {
          [objc_opt_self() sendAnalyticsWithEvent_];
          v28 = sub_241353BDC();
          v29 = objc_opt_self();
          v16 = [v29 bundleWithIdentifier_];

          v17 = v16;
          if (!v16)
          {
            v17 = [v29 mainBundle];
          }

          goto LABEL_36;
        }

        if (v27 == *MEMORY[0x277D82DA8])
        {
          [objc_opt_self() sendAnalyticsWithEvent_];
          v32 = sub_241353BDC();
          v33 = objc_opt_self();
          v16 = [v33 bundleWithIdentifier_];

          v17 = v16;
          if (!v16)
          {
            v17 = [v33 mainBundle];
          }

          goto LABEL_36;
        }

        (*(v12 + 8))(v3, v11);
      }

      v13 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTriggerAffordance);
      if ((~*(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTriggerAffordance) & 3) == 0)
      {
        v14 = sub_241353BDC();
        v15 = objc_opt_self();
        v16 = [v15 bundleWithIdentifier_];

        v17 = v16;
        if (!v16)
        {
          v17 = [v15 mainBundle];
        }

LABEL_36:
        v36 = v16;
        sub_24135131C();
        v37 = sub_241353C3C();

        return v37;
      }

      if (v13)
      {
        v34 = sub_241353BDC();
        v35 = objc_opt_self();
        v16 = [v35 bundleWithIdentifier_];

        v17 = v16;
        if (!v16)
        {
          v17 = [v35 mainBundle];
        }

        goto LABEL_36;
      }

      if ((v13 & 2) != 0)
      {
        v30 = sub_241353BDC();
        v31 = objc_opt_self();
        v16 = [v31 bundleWithIdentifier_];

        v17 = v16;
        if (!v16)
        {
          v17 = [v31 mainBundle];
        }

        goto LABEL_36;
      }
    }

    return 0;
  }

  v6 = (v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType);
  v7 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType);
  if (v7 == 4)
  {
    return 0x6C75736552206F4ELL;
  }

  v18 = v6[1];
  v38[0] = v6[2];
  v38[1] = v18;
  v20 = v6[3];
  v19 = v6[4];
  v22 = v6[5];
  v21 = v6[6];
  v24 = v6[7];
  v23 = v6[8];
  v25 = v6[9];
  v38[2] = v7;
  v38[4] = v38[0];
  v38[5] = v20;
  v38[6] = v19;
  v38[7] = v22;
  v38[8] = v21;
  v38[9] = v24;
  v38[10] = v23;
  v38[11] = v25;
  sub_241257A94(v7);
  v26 = sub_2412567A4();
  sub_24124B034(v7);
  return v26;
}

char *sub_2412EC61C(uint64_t a1)
{
  if (!a1)
  {
    return 1701736270;
  }

  v1 = a1;
  if (a1)
  {
    v2 = sub_2412A1548(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_2412A1548((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    *(v6 + 4) = 7364948;
    *(v6 + 5) = 0xE300000000000000;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = MEMORY[0x277D84F90];
  if ((a1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2412A1548(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_2412A1548((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x74696D69786F7250;
    *(v9 + 5) = 0xE900000000000079;
  }

LABEL_14:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2412A1548(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_2412A1548((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[16 * v11];
    *(v12 + 4) = 0x74726174536E4FLL;
    *(v12 + 5) = 0xE700000000000000;
  }

  v16[0] = v2;

  sub_2412A94BC(v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
  sub_2412ED730();
  v13 = sub_241353BAC();
  v15 = v14;

  v16[0] = 91;
  v16[1] = 0xE100000000000000;
  MEMORY[0x245CE20D0](v13, v15);

  MEMORY[0x245CE20D0](93, 0xE100000000000000);
  return v16[0];
}

uint64_t sub_2412EC8A0()
{
  v1 = *v0;
  sub_241354ADC();
  MEMORY[0x245CE2EA0](v1);
  return sub_241354B1C();
}

uint64_t sub_2412EC914()
{
  v1 = *v0;
  sub_241354ADC();
  MEMORY[0x245CE2EA0](v1);
  return sub_241354B1C();
}

uint64_t sub_2412EC958@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2412B3E0C();

  *a1 = v2;
  return result;
}

unint64_t sub_2412EC998()
{
  result = qword_27E539BA8;
  if (!qword_27E539BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539BA8);
  }

  return result;
}

unint64_t sub_2412EC9F0()
{
  result = qword_27E539BB0;
  if (!qword_27E539BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539BB0);
  }

  return result;
}

unint64_t sub_2412ECA48()
{
  result = qword_27E539BB8;
  if (!qword_27E539BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539BB8);
  }

  return result;
}

unint64_t sub_2412ECAA0()
{
  result = qword_27E539BC0;
  if (!qword_27E539BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539BC0);
  }

  return result;
}

char *sub_2412ECAF4(char *result, int64_t a2, char a3, char *a4)
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

char *sub_2412ECC00(char *result, int64_t a2, char a3, char *a4)
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

char *sub_2412ECD34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412ECE68(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

size_t sub_2412ECFD4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

size_t sub_2412ED1E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

void *sub_2412ED3C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A08);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2412ED4F4(char *result, int64_t a2, char a3, char *a4)
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

char *sub_2412ED614(char *result, int64_t a2, char a3, char *a4)
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

unint64_t sub_2412ED730()
{
  result = qword_27E538B10;
  if (!qword_27E538B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E538B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538B10);
  }

  return result;
}

uint64_t sub_2412ED794(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2412ED820(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2412ED884(uint64_t a1, uint64_t a2)
{
  v4 = sub_24135426C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2412ED8EC()
{
  v1 = sub_2413517DC();
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24135170C();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2413517BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v11 = *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v29 = v1;
  v12 = *(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v0;
  v14 = v12;
  sub_24135257C();
  sub_241351C8C();
  sub_2413516FC();

  (*(v7 + 8))(v9, v6);
  v15 = *(v0 + v10);
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v33;
  v18 = v16;
  v19 = sub_24135284C();

  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_24135214C();
  sub_2413516FC();

  (*(v3 + 8))(v5, v32);
  v20 = *(v13 + v10);
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = *(v20 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v33;
  v23 = v21;
  sub_24135292C();
  v24 = sub_2413524BC();

  if (!v24)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v25 = v30;
  sub_24135296C();
  sub_2413516FC();

  (*(v31 + 8))(v25, v29);
  v26 = v33;
  if (qword_27E537C90 != -1)
  {
    v27 = v33;
    swift_once();
    v26 = v27;
  }

  sub_241315CBC(v17, v22, v26, 0, 0);
}

uint64_t sub_2412EDCB0()
{
  if (qword_27E537C90 != -1)
  {
    swift_once();
  }

  v0 = qword_27E5418F0;
  v1 = swift_allocObject();
  v1[2] = nullsub_6;
  v1[3] = 0;
  v1[4] = v0;
  if (v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state] == 2 && *&v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_movieWriter])
  {
    v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state] = 3;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    v3[2] = v2;
    v3[3] = sub_2412EDE3C;
    v3[4] = v1;
    v4 = v0;

    sub_2413011E8(sub_2412EDE48, v3);
  }

  else
  {
    v5 = v0;
  }
}

uint64_t sub_2412EDE54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538138);
    v2 = sub_24135483C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2412461A0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_241245AA4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_241245AA4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_241245AA4(v31, v32);
    result = sub_24135454C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_241245AA4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2412EE11C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538138);
    v2 = sub_24135483C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_241245AA4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_241245AA4(v29, v30);
    result = sub_24135454C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_241245AA4(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2412EE3DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538138);
    v2 = sub_24135483C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_241245AA4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_241245AA4(v29, v30);
    result = sub_24135454C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_241245AA4(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2412EE690(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538138);
    v2 = sub_24135483C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + v13);
    sub_2412461A0(*(a1 + 56) + 32 * v13, v33 + 8);
    LOBYTE(v33[0]) = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LOBYTE(v30[0]) = v14;
    swift_dynamicCast();
    sub_241245AA4((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_241245AA4(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_241245AA4(v29, v30);
    result = sub_24135454C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_241245AA4(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2412EE948(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_51;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v29 = v3;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245CE29C0](v4, v27);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v4 >= *(v31 + 16))
        {
          goto LABEL_46;
        }

        v6 = *(v30 + 8 * v4);

        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_45;
        }
      }

      sub_24135207C();
      if (swift_dynamicCastClass())
      {

        sub_24135203C();
        v8 = sub_2412EE948();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_241365C30;
        *(v8 + 32) = v6;
      }

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_2413544EC() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_44;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          goto LABEL_23;
        }

LABEL_22:
        sub_2413544EC();
        goto LABEL_23;
      }

      if (v11)
      {
        goto LABEL_22;
      }

      v13 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = v5;
        goto LABEL_24;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_24135461C();
      v35 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        v17 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_2413544EC();
        v13 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_48;
          }

          v18 = v13 + 8 * v14 + 32;
          v33 = v2;
          v28 = v13;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_50;
            }

            sub_2412D5264();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538918);
              v20 = sub_2412EA150(v34, i, v8);
              v22 = *v21;

              (v20)(v34, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            sub_241351C0C();
            swift_arrayInitWithCopy();
          }

          if (v10 < 1)
          {
            v2 = v33;
            v5 = v35;
          }

          else
          {
            v23 = *(v28 + 16);
            v7 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            v2 = v33;
            v5 = v35;
            if (v7)
            {
              goto LABEL_49;
            }

            *(v28 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      v5 = v35;
      if (v10 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      if (v4 == v29)
      {
        return v5;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_2413544EC();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_16;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_2413544EC();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2412EED18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v126 - v4;
  v6 = type metadata accessor for ModelCustomizationOptions(0);
  MEMORY[0x28223BE20](v6);
  v137 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v8 - 8);
  v128 = &v126 - v9;
  v10 = sub_241351DEC();
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x28223BE20](v10);
  v127 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v126 - v16);
  v18 = sub_2413515EC();
  v140 = *(v18 - 8);
  v141 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v152 = &v126 - v23;
  v144 = v1;
  v142 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v24 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v24)
  {
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v132 = v5;
  v136 = v15;
  v25 = *(a1 + 40);
  v26 = &OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata;
  v28 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 16);
  v27 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 32);
  v29 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata);
  v163 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 48);
  v161 = v28;
  v162 = v27;
  v160 = v29;
  v30 = *(v24 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v30 >> 62)
  {
    goto LABEL_120;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {
    v131 = v6;
    sub_241255B50(&v160, &v156);

    if (!i)
    {
      break;
    }

    v149 = v21;
    v150 = v17;
    v151 = v25;
    v6 = 0;
    v26 = (v30 & 0xC000000000000001);
    v21 = v30 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v26)
      {
        v32 = MEMORY[0x245CE29C0](v6, v30);
      }

      else
      {
        if (v6 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_116;
        }

        v32 = *(v30 + 8 * v6 + 32);
      }

      v17 = v32;
      v33 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      ComponentType = REAudioAnimationComponentGetComponentType();
      v35 = sub_24131006C(ComponentType, 1);
      v25 = v35 != 0;

      ++v6;
      if (v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = v33 == i;
      }

      if (v36)
      {
        v135 = v35 != 0;
        v17 = v150;
        v25 = v151;
        v26 = &OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata;
        v21 = v149;
        goto LABEL_18;
      }
    }

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
    ;
  }

  v135 = 0;
LABEL_18:

  v37 = v161;
  v6 = &OBJC_IVAR____TtC11AssetViewer15ModelController_arView;
  if (!v161)
  {
LABEL_23:

    goto LABEL_24;
  }

  v38 = sub_24135497C();

  if ((v38 & 1) == 0)
  {
    if (v37 == 2)
    {
      v39 = sub_24135497C();

      v40 = 0;
      if ((v39 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_24:
  v41 = *(v144 + v142);
  if (!v41)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v42 = *(v41 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v42)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = v42;
  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  v44 = sub_2413523CC();
  swift_unknownObjectRelease();
  if (v44 >> 62)
  {
    v45 = sub_2413544EC();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v45 != 0;
LABEL_29:
  v134 = v40;
  v139 = v37;
  v46 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
  v47 = v144;
  swift_beginAccess();
  sub_241246210(v47 + v46, v17, &qword_27E538868);
  v48 = v140;
  v49 = v141;
  if ((*(v140 + 48))(v17, 1, v141) == 1)
  {
    result = sub_241246278(v17, &qword_27E538868);
    v50 = 0;
  }

  else
  {
    v51 = v152;
    (*(v48 + 32))(v152, v17, v49);
    sub_2413515DC();
    sub_24135157C();
    v50 = v52;
    v53 = *(v48 + 8);
    v53(v21, v49);
    result = (v53)(v51, v49);
  }

  v54 = *(v144 + v142);
  if (!v54)
  {
    goto LABEL_125;
  }

  if (*(v54 + *v26 + 16) == 1)
  {

LABEL_36:
    v56 = *(v25 + 16);
    goto LABEL_38;
  }

  v55 = sub_24135497C();

  if (v55)
  {
    goto LABEL_36;
  }

  v56 = 0;
LABEL_38:
  v57 = *(v144 + v142);
  if (!v57)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v58 = *(v57 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v58)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v59 = v58;
  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  v60 = sub_2413523CC();
  swift_unknownObjectRelease();
  if (v60 >> 62)
  {
    v30 = sub_2413544EC();
  }

  else
  {
    v30 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133 = v56;
  v25 = MEMORY[0x277D84F90];
  v138 = v60;
  if (v30)
  {
    v61 = 0;
    v150 = 0;
    v147 = v60 & 0xFFFFFFFFFFFFFF8;
    v148 = v60 & 0xC000000000000001;
    v146 = v60 + 32;
    v143 = xmmword_241365C30;
    v145 = v30;
    do
    {
      if (v148)
      {
        v62 = MEMORY[0x245CE29C0](v61, v138);
        v63 = __OFADD__(v61, 1);
        v64 = (v61 + 1);
        if (v63)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v61 >= *(v147 + 16))
        {
          goto LABEL_119;
        }

        v62 = *(v146 + 8 * v61);

        v63 = __OFADD__(v61, 1);
        v64 = (v61 + 1);
        if (v63)
        {
          goto LABEL_118;
        }
      }

      v152 = v64;
      v65 = sub_2413520BC();
      sub_24135207C();
      if (swift_dynamicCastClass())
      {
        v66 = sub_24135203C();
        v64 = v150;
        v21 = sub_2412EE948(v66);
        v150 = v64;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
        v21 = swift_allocObject();
        *(v21 + 16) = v143;
        *(v21 + 32) = v65;
      }

      *&v156 = MEMORY[0x277D84F90];
      if (v21 >> 62)
      {
        v6 = sub_2413544EC();
        if (v6)
        {
LABEL_52:
          v149 = v62;
          v151 = v25;
          v67 = 0;
          v68 = v21 & 0xC000000000000001;
          do
          {
            if (v68)
            {
              v17 = MEMORY[0x245CE29C0](v67, v21);
              v26 = (v67 + 1);
              if (__OFADD__(v67, 1))
              {
                goto LABEL_109;
              }
            }

            else
            {
              if (v67 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_110;
              }

              v17 = *(v21 + 8 * v67 + 32);

              v26 = (v67 + 1);
              if (__OFADD__(v67, 1))
              {
LABEL_109:
                __break(1u);
LABEL_110:
                __break(1u);
                goto LABEL_111;
              }
            }

            sub_2413520AC();
            if (swift_dynamicCastClass())
            {
              sub_24135464C();
              v64 = v21;
              sub_24135467C();
              sub_24135468C();
              sub_24135465C();
            }

            else
            {
            }

            ++v67;
          }

          while (v26 != v6);
          v69 = v156;
          v25 = v151;
          goto LABEL_69;
        }
      }

      else
      {
        v6 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_52;
        }
      }

      v69 = MEMORY[0x277D84F90];
LABEL_69:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_2412A1C9C(0, *(v25 + 16) + 1, 1, v25);
      }

      v71 = *(v25 + 16);
      v70 = *(v25 + 24);
      if (v71 >= v70 >> 1)
      {
        v25 = sub_2412A1C9C((v70 > 1), v71 + 1, 1, v25);
      }

      *(v25 + 16) = v71 + 1;
      *(v25 + 8 * v71 + 32) = v69;
      v30 = v145;
      v61 = v152;
    }

    while (v152 != v145);
  }

  v72 = *(v144 + v142);
  if (!v72)
  {
    goto LABEL_130;
  }

  v73 = *(v72 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v73 >> 62)
  {
    v74 = sub_2413544EC();
  }

  else
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v74)
  {
    LOBYTE(v6) = 0;
    goto LABEL_93;
  }

  v151 = v25;
  v30 = 0;
  v25 = v73 & 0xFFFFFFFFFFFFFF8;
  v17 = &OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager;
  while ((v73 & 0xC000000000000001) != 0)
  {
    v75 = MEMORY[0x245CE29C0](v30, v73);
    v26 = (v30 + 1);
    if (__OFADD__(v30, 1))
    {
      goto LABEL_90;
    }

LABEL_82:
    v21 = *(*&v75[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8] + 16);
    v6 = v21 != 0;

    ++v30;
    if (v21)
    {
      v76 = 1;
    }

    else
    {
      v76 = v26 == v74;
    }

    if (v76)
    {
      goto LABEL_91;
    }
  }

  if (v30 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_117;
  }

  v75 = *(v73 + 8 * v30 + 32);
  v26 = (v30 + 1);
  if (!__OFADD__(v30, 1))
  {
    goto LABEL_82;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  v25 = v151;
LABEL_93:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2413696D0;
  *(inited + 32) = sub_241353C0C();
  v78 = MEMORY[0x277D839F8];
  *(inited + 40) = v79;
  *(inited + 72) = v78;
  *(inited + 48) = v50;
  *(inited + 80) = sub_241353C0C();
  *(inited + 88) = v80;
  v81 = v135;
  if (v139)
  {
    if (v139 == 1)
    {
      v82 = 0xE600000000000000;
      v83 = 0x64657473656ELL;
    }

    else
    {
      v82 = 0xE700000000000000;
      v83 = 0x7974696C616572;
    }
  }

  else
  {
    v82 = 0xE400000000000000;
    v83 = 2053403509;
  }

  v17 = 0xD000000000000010;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v83;
  *(inited + 104) = v82;
  v84 = sub_241353C0C();
  v85 = MEMORY[0x277D83B88];
  *(inited + 128) = v84;
  *(inited + 136) = v86;
  *(inited + 168) = v85;
  *(inited + 144) = v133;
  v87 = sub_241353C0C();
  v26 = MEMORY[0x277D839B0];
  *(inited + 176) = v87;
  *(inited + 184) = v88;
  *(inited + 216) = v26;
  *(inited + 192) = v6;
  *(inited + 224) = sub_241353C0C();
  *(inited + 232) = v89;
  *(inited + 240) = *(v25 + 16);
  *(inited + 264) = v85;
  *(inited + 272) = 0x6C507A6473557369;
  *(inited + 280) = 0xEA00000000007375;
  v156 = v160;
  v157 = v161;
  v158 = v162;
  v159 = v163;
  *(inited + 288) = AssetLoader.FileMetadata.isUSDZPlus.getter();
  *(inited + 312) = v26;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = 0x8000000241361440;
  *(inited + 336) = v81;
  *(inited + 360) = v26;
  *(inited + 368) = 0xD000000000000017;
  *(inited + 376) = 0x8000000241361460;
  *(inited + 384) = v134;
  *(inited + 408) = v26;
  *(inited + 416) = 0xD000000000000019;
  *(inited + 424) = 0x8000000241361480;
  LOBYTE(v85) = BYTE1(v161);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539BF0);
  *(inited + 432) = v85;
  *(inited + 456) = v90;
  *(inited + 464) = 0xD000000000000018;
  *(inited + 472) = 0x80000002413614A0;
  v91 = BYTE2(v161);
  *(inited + 504) = v90;
  *(inited + 480) = v91;
  v64 = sub_241245974(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A20);
  result = swift_arrayDestroy();
  if (v139 != 2)
  {
    sub_241244AE8(&v160);

    goto LABEL_104;
  }

  v92 = *(v144 + v142);
  if (!v92)
  {
LABEL_131:
    __break(1u);
    return result;
  }

  sub_241244AE8(&v160);
  v93 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v94 = v92 + v93;
  v95 = v128;
  sub_241246210(v94, v128, &qword_27E538940);

  v96 = v129;
  v97 = v130;
  if ((*(v129 + 48))(v95, 1, v130) == 1)
  {
    sub_241246278(v95, &qword_27E538940);
  }

  else
  {
    v98 = v127;
    (*(v96 + 32))(v127, v95, v97);
    v99 = sub_241353C0C();
    v101 = v100;
    v102 = sub_2413128D0();
    *(&v157 + 1) = MEMORY[0x277D837D0];
    *&v156 = v102;
    *(&v156 + 1) = v103;
    sub_241245AA4(&v156, v154);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155 = v64;
    sub_2412A6DFC(v154, v99, v101, isUniquelyReferenced_nonNull_native);

    (*(v96 + 8))(v98, v97);
    v64 = v155;
  }

LABEL_104:
  v105 = v144 + OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions;
  swift_beginAccess();
  v106 = v137;
  sub_2412F0A44(v105, v137);
  v107 = sub_241304BB8();
  v109 = v108;
  sub_2412F0AA8(v106, type metadata accessor for ModelCustomizationOptions);
  if (v109)
  {
    v110 = sub_241353C0C();
    v112 = v111;
    *(&v157 + 1) = MEMORY[0x277D837D0];
    *&v156 = v107;
    *(&v156 + 1) = v109;
    sub_241245AA4(&v156, v154);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v64;
    sub_2412A6DFC(v154, v110, v112, v113);

    v64 = v153;
    v114 = v105 + *(v131 + 32);
    v68 = v132;
    sub_241246210(v114, v132, &qword_27E538748);
    v115 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
    if ((*(*(v115 - 8) + 48))(v68, 1, v115) == 1)
    {
      sub_241246278(v68, &qword_27E538748);
      goto LABEL_112;
    }

    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v116 = *(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539BF8) + 48));
      v117 = sub_24135152C();
      (*(*(v117 - 8) + 8))(v68, v117);
      v118 = sub_241353C0C();
      v120 = v119;
      *(&v157 + 1) = MEMORY[0x277D85048];
      *&v156 = v116;
      sub_241245AA4(&v156, v154);
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v64;
      sub_2412A6DFC(v154, v118, v120, v121);

      v64 = v153;
      goto LABEL_112;
    }

LABEL_111:
    sub_2412F0AA8(v68, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  }

LABEL_112:
  v122 = v136;
  if ([objc_opt_self() supportsSceneReconstruction])
  {
    *(&v157 + 1) = v26;
    LOBYTE(v156) = 1;
    sub_241245AA4(&v156, v154);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v64;
    sub_2412A6DFC(v154, v17 + 11, 0x80000002413614E0, v123);
    v64 = v153;
  }

  sub_2412FF19C(1, v17 + 2, 0x80000002413614C0, v64);

  sub_2413515DC();
  (*(v140 + 56))(v122, 0, 1, v141);
  v124 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate;
  v125 = v144;
  swift_beginAccess();
  sub_2412F0B08(v122, v125 + v124);
  return swift_endAccess();
}

void sub_2412EFFE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748);
  MEMORY[0x28223BE20](v2 - 8);
  v95 = &v90 - v3;
  v94 = type metadata accessor for ModelCustomizationOptions(0);
  MEMORY[0x28223BE20](v94);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v90 - v7;
  v9 = sub_2413515EC();
  v93 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v92 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v90 - v12;
  v14 = sub_241287420();
  v15 = v14[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  sub_24129F5F4(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2413696E0;
  *(inited + 32) = sub_241353C0C();
  *(inited + 40) = v17;
  v91 = OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController;
  v18 = 21057;
  if (*(*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode))
  {
    v18 = 0x7463656A624FLL;
  }

  v19 = 0xE200000000000000;
  if (*(*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode))
  {
    v19 = 0xE600000000000000;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v19;
  *(inited + 80) = sub_241353C0C();
  *(inited + 88) = v20;
  v21 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsObjectModeDuration);
  v22 = MEMORY[0x277D839F8];
  *(inited + 120) = MEMORY[0x277D839F8];
  *(inited + 96) = v21;
  *(inited + 128) = sub_241353C0C();
  *(inited + 136) = v23;
  v24 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARModeDuration);
  *(inited + 168) = v22;
  *(inited + 144) = v24;
  *(inited + 176) = sub_241353C0C();
  *(inited + 184) = v25;
  v26 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoObjectMode);
  v27 = MEMORY[0x277D83B88];
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 192) = v26;
  *(inited + 224) = sub_241353C0C();
  *(inited + 232) = v28;
  v29 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesWentIntoARMode);
  *(inited + 264) = v27;
  *(inited + 240) = v29;
  *(inited + 272) = sub_241353C0C();
  *(inited + 280) = v30;
  v31 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLongestDuration);
  *(inited + 312) = v27;
  *(inited + 288) = v31;
  *(inited + 320) = sub_241353C0C();
  *(inited + 328) = v32;
  v33 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed);
  *(inited + 360) = v27;
  *(inited + 336) = v33;
  *(inited + 368) = sub_241353C0C();
  *(inited + 376) = v34;
  v35 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnimationScrubbed);
  *(inited + 408) = v27;
  *(inited + 384) = v35;
  *(inited + 416) = sub_241353C0C();
  *(inited + 424) = v36;
  v37 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToImage);
  *(inited + 456) = v27;
  *(inited + 432) = v37;
  *(inited + 464) = sub_241353C0C();
  *(inited + 472) = v38;
  v39 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnchoredToObject);
  *(inited + 504) = v27;
  *(inited + 480) = v39;
  *(inited + 512) = sub_241353C0C();
  *(inited + 520) = v40;
  v41 = [objc_opt_self() _currentTraitCollection];
  if (!v41)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v42 = v41;
  v43 = [v41 userInterfaceStyle];

  if (v43 == 1)
  {
    v44 = 0xE500000000000000;
    v45 = 0x746867696CLL;
  }

  else if (v43 == 2)
  {
    v44 = 0xE400000000000000;
    v45 = 1802658148;
  }

  else
  {
    v44 = 0xEB00000000646569;
    v45 = 0x6669636570736E75;
  }

  *(inited + 552) = MEMORY[0x277D837D0];
  *(inited + 528) = v45;
  *(inited + 536) = v44;
  v46 = sub_241245974(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A20);
  swift_arrayDestroy();
  v47 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v47)
  {
    goto LABEL_27;
  }

  if (*(v47 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) <= 1u)
  {
    v48 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
    swift_beginAccess();
    sub_241246210(v1 + v48, v8, &qword_27E538868);
    v49 = v93;
    if ((*(v93 + 48))(v8, 1, v9) == 1)
    {
      sub_241246278(v8, &qword_27E538868);
    }

    else
    {
      (*(v49 + 32))(v13, v8, v9);
      v50 = v92;
      sub_2413515DC();
      v90 = v13;
      sub_24135157C();
      v52 = v51;
      v53 = *(v49 + 8);
      v53(v50, v9);
      v54 = sub_241353C0C();
      v56 = v55;
      v99 = MEMORY[0x277D839F8];
      *&v98 = v52;
      sub_241245AA4(&v98, v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v46;
      sub_2412A6DFC(v97, v54, v56, isUniquelyReferenced_nonNull_native);

      v53(v90, v9);
      v46 = v100;
    }
  }

  v58 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimeInObjectModeBeforeFirstTapARMode);
  if (v58 > 0.0)
  {
    v59 = sub_241353C0C();
    v61 = v60;
    v99 = MEMORY[0x277D839F8];
    *&v98 = v58;
    sub_241245AA4(&v98, v97);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v46;
    sub_2412A6DFC(v97, v59, v61, v62);

    v46 = v100;
  }

  v63 = v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_customizationOptions;
  swift_beginAccess();
  sub_2412F0A44(v63, v5);
  v64 = sub_241304BB8();
  v66 = v65;
  sub_2412F0AA8(v5, type metadata accessor for ModelCustomizationOptions);
  if (v66)
  {
    v67 = sub_241353C0C();
    v69 = v68;
    v99 = MEMORY[0x277D837D0];
    *&v98 = v64;
    *(&v98 + 1) = v66;
    sub_241245AA4(&v98, v97);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v46;
    sub_2412A6DFC(v97, v67, v69, v70);

    v71 = v96;
    v72 = sub_241353C0C();
    v74 = v73;
    v75 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsDidCloseByTappingOnCheckout);
    v76 = MEMORY[0x277D839B0];
    v99 = MEMORY[0x277D839B0];
    LOBYTE(v98) = v75;
    sub_241245AA4(&v98, v97);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v71;
    sub_2412A6DFC(v97, v72, v74, v77);

    v46 = v96;
    v78 = v63 + *(v94 + 32);
    v79 = v95;
    sub_241246210(v78, v95, &qword_27E538748);
    v80 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {
      sub_241246278(v79, &qword_27E538748);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      v81 = sub_24135152C();
      (*(*(v81 - 8) + 8))(v79, v81);
      v82 = *(*(v1 + v91) + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_checkoutPlatter);
      if (v82)
      {
        v83 = sub_241353C0C();
        v85 = v84;
        v86 = *(v82 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_hasCustomContentFinishedLoaded);
        v99 = v76;
        LOBYTE(v98) = (v86 & 1) == 0;
        sub_241245AA4(&v98, v97);

        v87 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v46;
        sub_2412A6DFC(v97, v83, v85, v87);

        v46 = v96;
      }
    }

    else
    {
      sub_2412F0AA8(v79, type metadata accessor for ModelCustomizationOptions.BannerStyle);
    }
  }

  v88 = objc_opt_self();
  sub_2412EDE54(v46);

  v89 = sub_241353B4C();

  [v88 sendAnalyticsWithEvent:3 payloadDict:v89];
}

uint64_t sub_2412F0A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCustomizationOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2412F0AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2412F0B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2412F0B78(uint64_t a1)
{
  v32 = sub_24135127C();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_2412DE2B4(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_24135445C();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    sub_24135126C();

    v35 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_2412DE2B4(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_24121C288(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_24121C288(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2412F0EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538780);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  v9 = sub_2413512DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2412F0B78(a1);
  sub_2413512BC();
  sub_24135430C();
  sub_241246278(v8, &unk_27E538780);

  sub_24135128C();
  sub_2413512AC();
  v15[4] = v13;
  sub_24135430C();

  sub_241246278(v5, &qword_27E538750);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2412F1140()
{
  v150 = sub_2413538CC();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = &v128 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2413538FC();
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = &v128 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_24135391C();
  v144 = *(v158 - 8);
  v2 = MEMORY[0x28223BE20](v158);
  v142 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v143 = &v128 - v4;
  v165 = sub_24135152C();
  v151 = *(v165 - 8);
  v5 = MEMORY[0x28223BE20](v165);
  v130 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v139 = &v128 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v129 = &v128 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v132 = &v128 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v128 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v128 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v166 = &v128 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v156 = &v128 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v161 = &v128 - v22;
  v154 = v23;
  MEMORY[0x28223BE20](v21);
  v155 = &v128 - v24;
  v25 = sub_24135164C();
  v163 = *(v25 - 8);
  v164 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2413516BC();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24135168C();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2413515EC();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v37 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2413515DC();
  v38 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_24135165C();
  v39 = sub_24135166C();
  (*(v33 + 8))(v35, v32);
  [v38 setLocale_];

  v40 = sub_241353BDC();
  [v38 setDateFormat_];

  sub_2413516AC();
  v41 = sub_24135169C();
  (*(v29 + 8))(v31, v28);
  [v38 setTimeZone_];

  v138 = v37;
  v42 = sub_24135159C();
  v137 = v38;
  v43 = [v38 stringFromDate_];

  v44 = sub_241353C0C();
  v46 = v45;

  aBlock = 0;
  v169 = 0xE000000000000000;
  sub_2413545EC();
  MEMORY[0x245CE20D0](0xD000000000000038, 0x8000000241361530);
  MEMORY[0x245CE20D0](v44, v46);
  v47 = v169;
  v136 = aBlock;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v48 = sub_241352FFC();
  v49 = __swift_project_value_buffer(v48, qword_27E53A538);

  v134 = v49;
  v50 = sub_241352FDC();
  v51 = sub_2413540AC();

  v52 = os_log_type_enabled(v50, v51);
  v135 = v47;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock = v54;
    *v53 = 136315138;
    v55 = sub_2412DDC2C(v44, v46, &aBlock);

    *(v53 + 4) = v55;
    _os_log_impl(&dword_241215000, v50, v51, "TTR tapped at %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x245CE4870](v54, -1, -1);
    MEMORY[0x245CE4870](v53, -1, -1);
  }

  else
  {
  }

  v56 = v151;
  v57 = v164;
  v58 = v165;
  v59 = v163;
  sub_24135163C();
  v60 = sub_2413515FC();
  v62 = v61;
  (*(v59 + 1))(v27, v57);
  if (qword_27E537BD8 != -1)
  {
    swift_once();
  }

  aBlock = qword_27E539620;
  v63 = qword_27E539620;
  MRQLFileManager.documentDirectory()(v155);

  aBlock = qword_27E539620;
  v64 = qword_27E539620;
  MRQLFileManager.createTemporaryDirectory(destinationURL:)();

  aBlock = 0x2D776569565241;
  v169 = 0xE700000000000000;
  v131 = v60;
  MEMORY[0x245CE20D0](v60, v62);
  v65 = v166;
  sub_24135146C();

  v66 = v156;
  sub_24135147C();
  v164 = *(v56 + 1);
  v165 = (v56 + 8);
  v164(v65, v58);
  v67 = *(v56 + 2);
  v68 = v153;
  v67(v153, v66, v58);
  v69 = v56[80];
  v159 = ~v69;
  v160 = v69;
  v70 = (v69 + 16) & ~v69;
  v71 = swift_allocObject();
  v72 = *(v56 + 4);
  v153 = (v56 + 32);
  v152 = v72;
  v72((v71 + v70), v68, v58);
  sub_24132517C(sub_2412F28A8, v71);
  v162 = v67;
  v163 = (v56 + 16);

  v67(v133, v66, v58);
  v73 = sub_2412A1F28(0, 1, 1, MEMORY[0x277D84F90]);
  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  if (v75 >= v74 >> 1)
  {
    v73 = sub_2412A1F28(v74 > 1, v75 + 1, 1, v73);
  }

  *(v73 + 2) = v75 + 1;
  v152(&v73[((v160 + 32) & v159) + *(v56 + 9) * v75], v133, v58);
  v76 = sub_241324E38();
  if (!v76)
  {
    goto LABEL_14;
  }

  v77 = v76;
  v78 = UIImagePNGRepresentation(v76);
  if (!v78)
  {

LABEL_14:

    goto LABEL_15;
  }

  v79 = v78;
  v80 = sub_24135154C();
  v82 = v81;

  aBlock = 0x707041656C6F6857;
  v169 = 0xE90000000000002DLL;
  MEMORY[0x245CE20D0](v131, v62);

  v83 = v166;
  sub_24135146C();

  v84 = v132;
  sub_24135147C();
  v85 = v83;
  v86 = v82;
  v164(v85, v58);
  v133 = v80;
  sub_24135155C();
  v124 = v129;
  v162(v129, v84, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_2412A1F28(0, *(v73 + 2) + 1, 1, v73);
  }

  v56 = v151;
  v127 = *(v73 + 2);
  v126 = *(v73 + 3);
  if (v127 >= v126 >> 1)
  {
    v73 = sub_2412A1F28(v126 > 1, v127 + 1, 1, v73);
  }

  sub_24125D520(v133, v86);
  v164(v84, v58);
  *(v73 + 2) = v127 + 1;
  v152(&v73[((v160 + 32) & v159) + *(v56 + 9) * v127], v124, v58);
LABEL_15:
  v87 = MEMORY[0x277D84F90];
  v88 = sub_241244E30(&unk_2852FD958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538728);
  swift_arrayDestroy();
  v89 = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v88;
  sub_2412A6F4C(v136, v135, 0x7470697263736544, 0xEB000000006E6F69, v89);
  v90 = aBlock;
  v91 = *(v73 + 2);
  if (v91)
  {
    v136 = aBlock;
    aBlock = v87;
    sub_2412DE1D4(0, v91, 0);
    v92 = aBlock;
    v134 = v73;
    v93 = &v73[(v160 + 32) & v159];
    v94 = *(v56 + 9);
    do
    {
      v95 = v166;
      v162(v166, v93, v58);
      v96 = sub_2413514EC();
      v98 = v97;
      v164(v95, v58);
      aBlock = v92;
      v100 = v92[2];
      v99 = v92[3];
      if (v100 >= v99 >> 1)
      {
        sub_2412DE1D4((v99 > 1), v100 + 1, 1);
        v92 = aBlock;
      }

      v92[2] = v100 + 1;
      v101 = &v92[2 * v100];
      v101[4] = v96;
      v101[5] = v98;
      v93 += v94;
      --v91;
    }

    while (v91);

    v90 = v136;
  }

  else
  {

    v92 = MEMORY[0x277D84F90];
  }

  aBlock = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
  sub_24123D370(&qword_27E538B10, &qword_27E538B08);
  v102 = sub_241353BAC();
  v104 = v103;

  v105 = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v90;
  sub_2412A6F4C(v102, v104, 0x68736E6565726353, 0xEA0000000000746FLL, v105);
  v106 = v166;
  sub_2412F0EC4(aBlock, v166);

  v107 = v157;
  v108 = sub_241287420();
  v109 = sub_2412F5050();

  [v109 setEnabled_];
  sub_2412D5590();
  v136 = sub_24135416C();
  v110 = v142;
  sub_24135390C();
  v111 = v143;
  sub_24135393C();
  v151 = *(v144 + 8);
  (v151)(v110, v158);
  v112 = v139;
  v113 = v58;
  v162(v139, v106, v58);
  v114 = (v160 + 24) & v159;
  v115 = swift_allocObject();
  *(v115 + 16) = v107;
  v152((v115 + v114), v112, v58);
  v172 = sub_2412F2918;
  v173 = v115;
  aBlock = MEMORY[0x277D85DD0];
  v169 = 1107296256;
  v170 = sub_2412D5698;
  v171 = &block_descriptor_7;
  v116 = _Block_copy(&aBlock);
  v117 = v107;
  v118 = v145;
  sub_2413538DC();
  v167 = MEMORY[0x277D84F90];
  sub_2412F2994(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  v119 = v147;
  v120 = v150;
  sub_24135444C();
  v121 = v136;
  MEMORY[0x245CE2500](v111, v118, v119, v116);
  _Block_release(v116);

  (*(v149 + 8))(v119, v120);
  (*(v146 + 8))(v118, v148);
  (v151)(v111, v158);
  v122 = v164;
  v164(v166, v113);
  v122(v156, v113);
  v122(v161, v113);
  v122(v155, v113);
  (*(v140 + 8))(v138, v141);
}

unint64_t sub_2412F26F8(uint64_t a1)
{
  sub_2413545EC();

  v2 = sub_24135127C();
  v3 = MEMORY[0x245CE21F0](a1, v2);
  MEMORY[0x245CE20D0](v3);

  return 0xD000000000000022;
}

void sub_2412F2784()
{
  v0 = sub_241287420();
  v1 = sub_2412F5050();

  [v1 setEnabled_];
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24135144C();
    [v3 openURL:v4 configuration:0 completionHandler:0];
  }
}

void sub_2412F28A8(void *a1)
{
  sub_24135152C();

  sub_241325C08(a1);
}

void sub_2412F2918()
{
  sub_24135152C();

  sub_2412F2784();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2412F2994(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall PreviewViewController.session(_:didUpdate:)(ARSession _, ARFrame didUpdate)
{
  v3 = v2;
  v6 = sub_2413538CC();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2413538FC();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241246158(0, &qword_27E538920);
  v12 = sub_24135416C();
  v13 = [(objc_class *)didUpdate.super.isa anchors];
  sub_241246158(0, &qword_27E539E40);
  v14 = sub_241353E2C();

  v15 = swift_allocObject();
  v15[2].super.isa = v3;
  v15[3].super.isa = _.super.isa;
  v15[4].super.isa = v14;
  aBlock[4] = sub_2412F3A54;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_8;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  v18 = _.super.isa;
  sub_2413538DC();
  v22 = MEMORY[0x277D84F90];
  sub_2412F3A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v11, v8, v16);
  _Block_release(v16);

  (*(v21 + 8))(v8, v6);
  (*(v9 + 8))(v11, v20);
}

uint64_t sub_2412F2DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v8 = sub_2413538CC();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2413538FC();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241246158(0, &qword_27E538920);
  v14 = sub_24135416C();
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = v21;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = v22;
  v16 = _Block_copy(aBlock);
  v17 = v5;
  v18 = a1;

  sub_2413538DC();
  v25 = MEMORY[0x277D84F90];
  sub_2412F3A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v13, v10, v16);
  _Block_release(v16);

  (*(v24 + 8))(v10, v8);
  (*(v11 + 8))(v13, v23);
}

uint64_t sub_2412F30C0()
{
  v0 = sub_24135426C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_241287420();
  sub_24135427C();
  v4 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_arTrackingState;
  swift_beginAccess();
  sub_2412F494C(v2, &v3[v4]);
  swift_endAccess();
  [v3 updateStatusPill];

  return sub_24125808C(v2);
}

void sub_2412F321C(void *a1)
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = a1;
  v4 = sub_241352FDC();
  v5 = sub_2413540BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_241354A3C();
    v10 = sub_2412DDC2C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_241215000, v4, v5, "Received ARKit session failure with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CE4870](v7, -1, -1);
    MEMORY[0x245CE4870](v6, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = sub_24135138C();
  [v11 sendAnalyticsWithEvent:7 error:v12];

  v13 = sub_241287420();
  v13[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sessionIsInterrupted] = 1;
  sub_2412F9F10();
}

void sub_2412F3460(uint64_t a1)
{
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
    _os_log_impl(&dword_241215000, v3, v4, "ARKit session interruption began", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  [objc_opt_self() sendAnalyticsWithEvent_];
  v6 = sub_241287420();
  v7 = v6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  sub_24129F5F4(v7);
  sub_241290C40();
  v8 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sessionIsInterrupted] = 1;
  v9 = v8;
  sub_2412F9F10();
}

void sub_2412F3658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
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
    _os_log_impl(&dword_241215000, v6, v7, "ARKit session interruption ended", v8, 2u);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  [objc_opt_self() sendAnalyticsWithEvent_];
  v9 = *(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v9)
  {
    if (*(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
    {
      sub_2413515DC();
      v10 = sub_2413515EC();
      (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
      v11 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsLastDisplayModeToggledDate;
      swift_beginAccess();
      sub_2412F0B08(v4, a1 + v11);
      swift_endAccess();
    }

    v12 = sub_241287420();
    v12[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sessionIsInterrupted] = 0;
    sub_2412F9F10();
  }

  else
  {
    __break(1u);
  }
}

void *sub_2412F3904(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = OBJC_IVAR___ASVPreviewViewControllerInternal_didReceiveFirstARFrame;
  if ((*(a1 + OBJC_IVAR___ASVPreviewViewControllerInternal_didReceiveFirstARFrame) & 1) == 0)
  {
    if (qword_27E537CD0 != -1)
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
      _os_log_impl(&dword_241215000, v7, v8, "Received first ARFrame", v9, 2u);
      MEMORY[0x245CE4870](v9, -1, -1);
    }

    v10 = *(a1 + v5);
    *(a1 + v5) = 1;
    sub_241288404(v10);
  }

  result = sub_241289D28();
  if (result)
  {
    sub_24130B0DC(a3);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2412F3A78()
{
  result = qword_27E539870;
  if (!qword_27E539870)
  {
    sub_2413538CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539870);
  }

  return result;
}

void *sub_2412F3B4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_241289D28();
  if (result)
  {
    sub_24130B438(a3);
  }

  return result;
}

void sub_2412F3BD4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(unint64_t), const char *a5)
{
  if (sub_241289D28())
  {
    a4(a3);
  }

  if (a3 >> 62)
  {
    v8 = sub_2413544EC();
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    sub_2412DE1D4(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    oslog = a5;
    v9 = 0;
    v10 = v30;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x245CE29C0](v9, a3);
      }

      else
      {
        v11 = *(a3 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 description];
      v14 = sub_241353C0C();
      v16 = v15;

      v30 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2412DE1D4((v17 > 1), v18 + 1, 1);
        v10 = v30;
      }

      ++v9;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v8 != v9);
    a5 = oslog;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v20 = sub_241352FFC();
  __swift_project_value_buffer(v20, qword_27E53A538);

  osloga = sub_241352FDC();
  v21 = sub_2413540DC();

  if (os_log_type_enabled(osloga, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
    sub_24123D370(&qword_27E538B10, &qword_27E538B08);
    v24 = sub_241353BAC();
    v26 = v25;

    v27 = sub_2412DDC2C(v24, v26, &v30);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_241215000, osloga, v21, a5, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x245CE4870](v23, -1, -1);
    MEMORY[0x245CE4870](v22, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2412F3F2C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  sub_241246158(0, &qword_27E539E40);
  v8 = sub_241353E2C();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

uint64_t sub_2412F3FCC(void *a1)
{
  v3 = sub_2413538CC();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2413538FC();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241246158(0, &qword_27E538920);
  v9 = sub_24135416C();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_2412F4944;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_42;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_2413538DC();
  v18 = MEMORY[0x277D84F90];
  sub_2412F3A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v8, v5, v11);
  _Block_release(v11);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_2412F42E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2413538CC();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2413538FC();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241246158(0, &qword_27E538920);
  v12 = sub_24135416C();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_2413538DC();
  v20 = MEMORY[0x277D84F90];
  sub_2412F3A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2412F4660(void *a1)
{
  v3 = sub_2413538CC();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2413538FC();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241246158(0, &qword_27E538920);
  v9 = sub_24135416C();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_2412F492C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_24;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;
  sub_2413538DC();
  v18 = MEMORY[0x277D84F90];
  sub_2412F3A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v8, v5, v11);
  _Block_release(v11);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_2412F494C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24135426C();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2412F49E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

__n128 sub_2412F4A3C@<Q0>(__n128 *a1@<X8>)
{
  v3 = sub_2412F5244();
  v4 = *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsView);
  v11 = *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_animationView);
  if (*(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_checkoutPlatter))
  {
    swift_unknownObjectRetain();
    v5 = v4;

    v6 = sub_24133E674();

    v7 = &off_285300BA0;
  }

  else
  {
    swift_unknownObjectRetain();
    v8 = v4;
    v6 = 0;
    v7 = 0;
  }

  if (v4)
  {
    v9 = &off_285300BA0;
  }

  else
  {
    v9 = 0;
  }

  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = &off_285300BA0;
  result = v11;
  a1[1] = v11;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u64[1] = v9;
  a1[3].n128_u64[0] = v6;
  a1[3].n128_u64[1] = v7;
  return result;
}

id sub_2412F4B0C()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButtonContainer;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButtonContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButtonContainer);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_241365C30;
    *(v4 + 32) = sub_2412F5244();
    v5 = objc_allocWithZone(ASVControlsView);
    sub_241246158(0, &qword_27E539A90);
    v6 = sub_241353E1C();

    v7 = [v5 initWithArrangedSubviews_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_2412F4C04()
{
  v1 = sub_2412F4B0C();
  v2 = [v1 isHidden];

  if ((v2 & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButtonContainer;
    [*&v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButtonContainer] alpha];
    if (v4 != 0.0)
    {
      v5 = sub_2412F5244();
      [v5 alpha];
      v7 = v6;

      if (v7 != 0.0)
      {
        v8 = [v0 view];
        if (v8)
        {
          v9 = v8;
          [v8 bounds];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;

          v18.origin.x = v11;
          v18.origin.y = v13;
          v18.size.width = v15;
          v18.size.height = v17;
          CGRectGetHeight(v18);
          [*&v0[v3] frame];
          CGRectGetMinY(v19);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_2412F4D14()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButtonContainer;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButtonContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButtonContainer);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_241365C30;
    *(v4 + 32) = sub_2412F4E50();
    v5 = objc_allocWithZone(ASVControlsView);
    sub_241246158(0, &qword_27E539A90);
    v6 = sub_241353E1C();

    v7 = [v5 initWithArrangedSubviews_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_2412F4EB8()
{
  v0 = sub_241353BDC();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() buttonWithType_];
    [v2 setImage:v1 forState:0];
    v3 = [objc_opt_self() blackColor];
    [v2 setTintColor_];

    v4 = objc_opt_self();
    v5 = v2;
    [v5 setHidden_];

    [v5 setShowsMenuAsPrimaryAction_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2412F5070(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_2412F5118()
{
  v0 = sub_241353BDC();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() buttonWithType_];
    [v2 setImage:v1 forState:0];
    v3 = [objc_opt_self() purpleColor];
    [v2 setTintColor_];

    v4 = objc_opt_self();
    v5 = v2;
    [v5 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2412F5264(uint64_t a1)
{
  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    if ([v2 newCommandQueue])
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CF7E90]) init];
      [v3 setDelegate_];
      v6 = xmmword_241369700;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = xmmword_241368040;
      [v3 setSettings_];
      v4 = v3;
      [v4 setExclusiveTouch_];
      [v4 setAccessibilityIgnoresInvertColors_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v4;
    }

    swift_unknownObjectRelease();
  }

  result = sub_2413547DC();
  __break(1u);
  return result;
}

void sub_2412F53B0(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = *&v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_coachingOverlayView];
  if (v2)
  {
    v3 = v2;
    [v3 setUserInteractionEnabled_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 insertSubview:v3 atIndex:0];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_241366EE0;
      v7 = [v3 topAnchor];
      v8 = [v1 view];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 topAnchor];

        v11 = [v7 constraintEqualToAnchor_];
        *(v6 + 32) = v11;
        v12 = [v3 leadingAnchor];
        v13 = [v1 view];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 leadingAnchor];

          v16 = [v12 constraintEqualToAnchor_];
          *(v6 + 40) = v16;
          v17 = [v3 bottomAnchor];
          v18 = [v1 view];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 bottomAnchor];

            v21 = [v17 constraintEqualToAnchor_];
            *(v6 + 48) = v21;
            v22 = [v3 trailingAnchor];

            v23 = [v1 view];
            if (v23)
            {
              v24 = v23;
              v25 = objc_opt_self();
              v26 = [v24 trailingAnchor];

              v27 = [v22 constraintEqualToAnchor_];
              *(v6 + 56) = v27;
              sub_241246158(0, &qword_27E539D00);
              v28 = sub_241353E1C();

              [v25 activateConstraints_];

              return;
            }

LABEL_17:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

id sub_2412F577C()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill);
  }

  else
  {
    v4 = [objc_allocWithZone(ASVTrackingStateStatusLabel) initWithFrame:2 controlStyle:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2412F584C()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___assetLoadingView;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___assetLoadingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___assetLoadingView);
  }

  else
  {
    v4 = [objc_allocWithZone(ASVLoadingView) init];
    [v4 setSpinnerColor_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2412F5980()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v165 - v2;
  v4 = sub_24135307C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for ARQuickLookOverlayController();
  v175.receiver = v0;
  v175.super_class = v5;
  objc_msgSendSuper2(&v175, sel_viewDidLoad);
  *(*&v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_touchesOnScreenGestureRecognizer] + OBJC_IVAR____TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer_asvDelegate + 8) = &off_2853031E8;
  swift_unknownObjectWeakAssign();
  v6 = [v0 navigationItem];
  v7 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v8 = v0;
  v9 = [v7 initWithBarButtonSystemItem:24 target:v8 action:sel_dismissButtonPressed];
  [v6 setLeftBarButtonItem_];

  v10 = [v8 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:v8 action:sel_shareButtonPressed];

  [v10 setRightBarButtonItem_];
  v12 = [v8 navigationItem];
  v13 = sub_2412F7098();
  [v12 setTitleView_];

  sub_2412F9928();
  v14 = sub_2412F5244();
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v15 = sub_2412F4B0C();
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = sub_2412F4E50();
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  v17 = sub_2412F4D14();
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v18 = sub_2412F5050();
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = sub_2412F584C();
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  v20 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_backgroundDimmingView;
  [*&v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_backgroundDimmingView] setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v8 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_40;
  }

  v22 = result;
  [result addSubview_];

  result = [v8 view];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v23 = result;
  v24 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButtonContainer;
  [result addSubview_];

  result = [v8 view];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v25 = result;
  v26 = sub_2412F577C();
  [v25 addSubview_];

  result = [v8 view];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = result;
  v28 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___assetLoadingView;
  [result addSubview_];

  result = [v8 view];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v29 = result;
  v171 = v24;
  v166 = v20;
  v167 = v28;
  v30 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButtonContainer;
  [result addSubview_];

  result = [v8 view];
  if (!result)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v31 = result;
  v32 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___fileARadarButton;
  [result addSubview_];

  v33 = sub_2412EBEA4();
  v35 = v34;
  v36 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill;
  v37 = *&v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill];
  sub_24135306C();
  *&v174.d = sub_24135308C();
  *&v174.tx = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(&v174);
  sub_24135309C();
  sub_24135422C();

  v38 = *&v8[v36];
  sub_24135304C();
  v39 = sub_24135305C();
  (*(*(v39 - 8) + 56))(v3, 0, 1, v39);
  sub_24135423C();

  v40 = *&v8[v36];
  v41 = HIBYTE(v35) & 0xF;
  v165 = v35;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v41 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  if (v41)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = 0.9;
  }

  [v40 setAlpha_];
  v44 = *&v8[v36];
  CGAffineTransformMakeScale(&v174, v43, v43);
  [v44 setTransform_];
  v45 = [*&v8[v36] heightAnchor];
  v46 = [v45 constraintEqualToConstant_];

  type metadata accessor for UILayoutPriority(0);
  v173 = 1144750080;
  v172 = 1065353216;
  sub_2412FC2DC(&qword_27E539D38, type metadata accessor for UILayoutPriority);
  sub_24135300C();
  LODWORD(v47) = LODWORD(v174.a);
  v170 = v46;
  [v46 setPriority_];
  v169 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton;
  [*&v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton] intrinsicContentSize];
  v49 = v48;
  v51 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_241369710;
  v53 = [*&v8[v30] trailingAnchor];
  result = [v8 view];
  if (!result)
  {
    goto LABEL_45;
  }

  v54 = result;
  v168 = v36;
  v55 = [result safeAreaLayoutGuide];

  v56 = [v55 trailingAnchor];
  v57 = [v53 constraintEqualToAnchor_];

  *(v52 + 32) = v57;
  v58 = [*&v8[v30] bottomAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v59 = result;
  v60 = [result bottomAnchor];

  v61 = [v58 constraintGreaterThanOrEqualToAnchor:v60 constant:-20.0];
  *(v52 + 40) = v61;
  v62 = [*&v8[v30] widthAnchor];
  v63 = [v62 constraintEqualToConstant_];

  *(v52 + 48) = v63;
  v64 = [*&v8[v30] heightAnchor];
  v65 = [v64 constraintEqualToConstant_];

  *(v52 + 56) = v65;
  v66 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButton;
  v67 = [*&v8[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButton] widthAnchor];
  v68 = [v67 constraintEqualToConstant_];

  *(v52 + 64) = v68;
  v69 = [*&v8[v66] heightAnchor];
  v70 = [v69 constraintEqualToConstant_];

  *(v52 + 72) = v70;
  v71 = [*&v8[v32] leadingAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v72 = result;
  v73 = [result safeAreaLayoutGuide];

  v74 = [v73 leadingAnchor];
  v75 = [v71 constraintEqualToAnchor_];

  *(v52 + 80) = v75;
  v76 = [*&v8[v32] bottomAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v77 = result;
  v78 = [result bottomAnchor];

  v79 = [v76 constraintGreaterThanOrEqualToAnchor:v78 constant:-20.0];
  *(v52 + 88) = v79;
  v80 = [*&v8[v32] widthAnchor];
  v81 = [v80 constraintEqualToConstant_];

  *(v52 + 96) = v81;
  v82 = [*&v8[v32] heightAnchor];
  v83 = [v82 constraintEqualToConstant_];

  *(v52 + 104) = v83;
  v84 = v171;
  v85 = [*&v171[v8] topAnchor];
  v86 = v168;
  v87 = [*&v8[v168] bottomAnchor];
  v88 = [v85 constraintGreaterThanOrEqualToAnchor:v87 constant:8.0];

  *(v52 + 112) = v88;
  v89 = [*&v84[v8] widthAnchor];
  v90 = [v89 constraintEqualToConstant_];

  *(v52 + 120) = v90;
  v91 = [*&v84[v8] heightAnchor];
  v92 = [v91 constraintEqualToConstant_];

  *(v52 + 128) = v92;
  v93 = v169;
  v94 = [*&v8[v169] widthAnchor];
  v95 = [v94 constraintEqualToConstant_];

  *(v52 + 136) = v95;
  v96 = [*&v8[v93] heightAnchor];
  v97 = [v96 constraintEqualToConstant_];

  v98 = v170;
  *(v52 + 144) = v97;
  *(v52 + 152) = v98;
  v99 = *&v8[v86];
  v100 = v98;
  v101 = [v99 centerXAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v102 = result;
  v103 = [result centerXAnchor];

  v104 = [v101 constraintEqualToAnchor_];
  *(v52 + 160) = v104;
  v105 = [*&v8[v86] leadingAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v106 = result;
  v107 = [result safeAreaLayoutGuide];

  v108 = [v107 leadingAnchor];
  v109 = [v105 constraintGreaterThanOrEqualToAnchor:v108 constant:6.0];

  *(v52 + 168) = v109;
  v110 = [*&v8[v86] trailingAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v111 = result;
  v112 = [result safeAreaLayoutGuide];

  v113 = [v112 trailingAnchor];
  v114 = [v110 constraintLessThanOrEqualToAnchor:v113 constant:-6.0];

  *(v52 + 176) = v114;
  v115 = [*&v8[v86] topAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v116 = result;
  v117 = [result safeAreaLayoutGuide];

  v118 = [v117 topAnchor];
  v119 = [v115 constraintEqualToAnchor:v118 constant:18.0];

  *(v52 + 184) = v119;
  v120 = v167;
  v121 = [*&v8[v167] widthAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v122 = result;
  v171 = v100;
  v123 = [result widthAnchor];

  v124 = [v121 constraintLessThanOrEqualToAnchor:v123 constant:-12.0];
  *(v52 + 192) = v124;
  v125 = [*&v8[v120] heightAnchor];
  [objc_opt_self() floatForKey_];
  v127 = [v125 constraintEqualToConstant_];

  *(v52 + 200) = v127;
  v128 = [*&v8[v120] centerXAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v129 = result;
  v130 = [result centerXAnchor];

  v131 = [v128 constraintEqualToAnchor_];
  *(v52 + 208) = v131;
  v132 = [*&v8[v120] centerYAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v133 = result;
  v134 = [result centerYAnchor];

  v135 = [v132 constraintEqualToAnchor_];
  *(v52 + 216) = v135;
  v136 = v166;
  v137 = [*&v8[v166] topAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v138 = result;
  v139 = [result topAnchor];

  v140 = [v137 constraintEqualToAnchor_];
  *(v52 + 224) = v140;
  v141 = [*&v8[v136] bottomAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v142 = result;
  v143 = [result bottomAnchor];

  v144 = [v141 constraintEqualToAnchor_];
  *(v52 + 232) = v144;
  v145 = [*&v8[v136] leadingAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v146 = result;
  v147 = [result leadingAnchor];

  v148 = [v145 constraintEqualToAnchor_];
  *(v52 + 240) = v148;
  v149 = [*&v8[v136] trailingAnchor];
  result = [v8 view];
  if (!result)
  {
LABEL_59:
    __break(1u);
    return result;
  }

  v150 = result;

  v151 = objc_opt_self();
  v152 = [v150 trailingAnchor];

  v153 = [v149 constraintEqualToAnchor_];
  *(v52 + 248) = v153;
  sub_241246158(0, &qword_27E539D00);
  v154 = sub_241353E1C();

  [v151 activateConstraints_];

  v155 = [v8 traitCollection];
  v156 = [v155 userInterfaceIdiom];

  v157 = [v8 traitCollection];
  [v157 displayCornerRadius];
  v159 = v158;

  sub_2412F8C44(v156, v159);
  sub_2412F962C();
  v160 = [v8 traitCollection];
  v161 = [v160 userInterfaceIdiom];

  if (!v161)
  {
    sub_2412FA424(1);
  }

  v162 = [objc_opt_self() wantsTrackedRaycastStatus];
  v163 = v171;
  if (v162)
  {
    v164 = [objc_opt_self() defaultCenter];
    if (qword_27E537C78 != -1)
    {
      swift_once();
    }

    [v164 addObserver:v8 selector:? name:? object:?];
  }

  if (qword_27E537CC0 != -1)
  {
    swift_once();
  }

  v174.a = *(qword_27E541998 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D40);
  sub_24123D370(&qword_27E539D48, &qword_27E539D40);
  sub_2413531BC();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D50);
  sub_24123D370(&qword_27E538540, &qword_27E539D50);
  sub_2413530BC();
  swift_endAccess();
}

void sub_2412F6F04(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1 >= 1 && swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
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
        *v7 = 134217984;
        *(v7 + 4) = v1;
        _os_log_impl(&dword_241215000, v5, v6, "ARViewCounter count %ld", v7, 0xCu);
        MEMORY[0x245CE4870](v7, -1, -1);
      }

      sub_2412F9F10();
    }
  }
}

id sub_2412F70B8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2412F711C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_241366530;
  v2 = sub_241353BDC();
  v3 = objc_opt_self();
  v4 = [v3 bundleWithIdentifier_];

  v5 = v4;
  if (!v4)
  {
    v5 = [v3 mainBundle];
  }

  v6 = v4;
  sub_24135131C();
  v7 = sub_241353C3C();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = v7;
  *(v1 + 40) = v9;
  v11 = sub_241353BDC();
  v12 = [v3 bundleWithIdentifier_];

  v13 = v12;
  if (!v12)
  {
    v13 = [v3 mainBundle];
  }

  v14 = v12;
  sub_24135131C();
  v15 = sub_241353C3C();
  v17 = v16;

  *(v1 + 88) = v10;
  *(v1 + 64) = v15;
  *(v1 + 72) = v17;
  v18 = objc_allocWithZone(type metadata accessor for ARQLTapSegmentedControl());
  v19 = sub_241353E1C();

  v20 = [v18 initWithItems_];

  v21 = v20;
  [v21 setSelectedSegmentIndex_];
  v22 = v21;
  [v22 addTarget:a1 action:sel_displayModeChanged forControlEvents:4096];
  [v22 setEnabled_];

  return v22;
}

void sub_2412F7410()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ARQuickLookOverlayController();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  if (*&v0[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_checkoutPlatter])
  {

    sub_2413400EC();
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v1 = sub_241352FFC();
  __swift_project_value_buffer(v1, qword_27E53A538);
  v2 = sub_241352FDC();
  v3 = sub_2413540DC();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_8;
  }

  v4 = swift_slowAlloc();
  *v4 = 134217984;
  v5 = [objc_opt_self() _currentTraitCollection];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 userInterfaceStyle];

    *(v4 + 4) = v7;
    _os_log_impl(&dword_241215000, v2, v3, "viewDidLayoutSubviews() - style: %ld", v4, 0xCu);
    MEMORY[0x245CE4870](v4, -1, -1);
LABEL_8:

    sub_2412F75D8();
    return;
  }

  __break(1u);
}

void sub_2412F75D8()
{
  v1 = v0;
  v2 = [objc_opt_self() _currentTraitCollection];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 userInterfaceStyle];

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
      *v8 = 134217984;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_241215000, v6, v7, "updateCurrentAppearanceIfNeeded() - style: %ld", v8, 0xCu);
      MEMORY[0x245CE4870](v8, -1, -1);
    }

    if (v4 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (*(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentAppearance) != v9)
    {
      *(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentAppearance) = v9;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2412AC494(v1);
        swift_unknownObjectRelease();
      }

      v10 = [objc_opt_self() blackColor];
      if (v4 == 2)
      {
        v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.75];

        v10 = v11;
      }

      v12 = sub_2412F4E50();
      [v12 setTintColor_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2412F77FC()
{
  v1 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_cancellables;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_2413544EC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      sub_2413530CC();

      ++v4;
    }

    while (v5 != v3);
  }

  *&v0[v1] = MEMORY[0x277D84F90];

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ARQuickLookOverlayController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for ARQuickLookOverlayController()
{
  result = qword_280DA26B8;
  if (!qword_280DA26B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2412F7BEC(id a1)
{
  v3 = sub_2413516DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D10);
  if (!swift_dynamicCast())
  {
LABEL_15:

    v29 = a1;
    v10 = a1;
    if (swift_dynamicCast())
    {
      if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277CDAB80])
      {
        (*(v4 + 96))(v6, v3);
        if (*v6)
        {
          v11 = -4;
        }

        else
        {
          v11 = -3;
        }

        v8 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ASVError" code:v11 userInfo:0];
        v9 = v29;
        goto LABEL_21;
      }

      (*(v4 + 8))(v6, v3);
    }

    v29 = a1;
    v13 = a1;
    sub_241246158(0, &qword_27E539590);
    if (swift_dynamicCast())
    {
      v14 = v32;
      v15 = [v32 domain];
      v16 = sub_241353C0C();
      v18 = v17;

      if (v16 == sub_241353C0C() && v18 == v19)
      {

LABEL_28:
        v21 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ASVError" code:-4 userInfo:0];

        v9 = v29;
        v12 = v21;
        goto LABEL_29;
      }

      v20 = sub_24135497C();

      if (v20)
      {
        goto LABEL_28;
      }
    }

    v22 = a1;
    v23 = a1;
    goto LABEL_32;
  }

  if (v31)
  {
    if (v31 != 2)
    {
LABEL_14:
      sub_2412FC994(v29, v30, *(&v30 + 1), v31);
      goto LABEL_15;
    }

    if (*(&v30 + 1) | v30 | v29)
    {
      if (v29 == 2 && v30 == 0)
      {
        v8 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ASVError" code:-1 userInfo:0];
LABEL_13:
        v9 = v32;
LABEL_21:
        v12 = v8;
LABEL_29:
        a1 = v12;

        goto LABEL_32;
      }

      if (v29 == 3 && v30 == 0)
      {
        v8 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ASVError" code:-2 userInfo:0];
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_2412FC994(v29, v30, *(&v30 + 1), 0);
  }

  a1 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ASVError" code:-5 userInfo:0];
LABEL_32:
  v24 = sub_2412F584C();
  v25 = sub_24135138C();

  [v24 setLoadingError_];
  v26 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer;
  [*(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer) invalidate];
  v27 = *(v1 + v26);
  *(v1 + v26) = 0;

  [*(v1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_touchesOnScreenGestureRecognizer) setEnabled_];
}