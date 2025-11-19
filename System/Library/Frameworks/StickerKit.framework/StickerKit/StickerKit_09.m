id StickerView._dragInteraction(_:sessionPropertiesFor:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD480]) init];
  [v0 set:1 wantsElasticEffects:?];
  [v0 set:1 resizable:?];
  [v0 set:1 rotatable:?];
  [v0 set:CGPointMake(32.0 minimumResizableSize:32.0)];
  [v0 set:300.0 maximumResizableSize:300.0];
  return v0;
}

void sub_19A6CBB68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___STKStickerView_isSilhouetteImageVisible) = 0;
    sub_19A6C6A38();
  }
}

void sub_19A6CBC28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = [v1 window];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v31 = [v5 screen];

  v7 = v31;
  if (!v31)
  {
    return;
  }

  v8 = OBJC_IVAR___STKStickerView_displayLink;
  if (!*&v1[OBJC_IVAR___STKStickerView_displayLink])
  {
    v9 = [v31 itk:v1 displayLinkWithTarget:sel_displayLinkDidFire_ selector:?];
    v10 = *&v1[v8];
    *&v1[v8] = v9;
    v11 = v9;

    if (v11)
    {
      v12 = [objc_opt_self() mainRunLoop];
      [v11 addToRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];
    }

    v13 = *&v1[v8];
    if (v13)
    {
      [v13 setPaused_];
    }

    v14 = 7104878;
    v15 = OBJC_IVAR___STKStickerView_imageGlyph;
    swift_beginAccess();
    v16 = *&v1[v15];
    if (v16)
    {
      sub_19A60F0CC(v16 + OBJC_IVAR___STKImageGlyph_stickerUUID, v4, &qword_1EAFCD800);
      v17 = sub_19A7A8F64();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v4, 1, v17) != 1)
      {
        v14 = sub_19A7A8F14();
        v19 = v20;
        (*(v18 + 8))(v4, v17);
LABEL_16:
        if (*&v1[v8])
        {
          if (qword_1EAFCB5D8 != -1)
          {
            swift_once();
          }

          v21 = sub_19A7A9384();
          __swift_project_value_buffer(v21, qword_1EAFCE400);

          v22 = sub_19A7A9364();
          v23 = sub_19A7AB5A4();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v32 = v25;
            *v24 = 136315138;
            v26 = sub_19A62540C(v14, v19, &v32);

            *(v24 + 4) = v26;
            v27 = "Creating Display Link for stickerUUID: %s";
LABEL_25:
            _os_log_impl(&dword_19A5EE000, v22, v23, v27, v24, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v25);
            MEMORY[0x19A907A30](v25, -1, -1);
            MEMORY[0x19A907A30](v24, -1, -1);

LABEL_27:
            return;
          }
        }

        else
        {
          if (qword_1EAFCB5D8 != -1)
          {
            swift_once();
          }

          v28 = sub_19A7A9384();
          __swift_project_value_buffer(v28, qword_1EAFCE400);

          v22 = sub_19A7A9364();
          v23 = sub_19A7AB584();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v32 = v25;
            *v24 = 136315138;
            v29 = sub_19A62540C(v14, v19, &v32);

            *(v24 + 4) = v29;
            v27 = "Unable to create Display Link for stickerUUID: %s";
            goto LABEL_25;
          }
        }

        goto LABEL_27;
      }

      sub_19A5F2B54(v4, &qword_1EAFCD800);
    }

    v19 = 0xE300000000000000;
    goto LABEL_16;
  }
}

void sub_19A6CC0CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  sub_19A6CBC28();
  v4 = *(v0 + OBJC_IVAR___STKStickerView_displayLink);
  if (v4)
  {
    v5 = OBJC_IVAR___STKStickerView_imageGlyph;
    swift_beginAccess();
    v6 = *(v0 + v5);
    if (v6)
    {
      sub_19A60F0CC(v6 + OBJC_IVAR___STKImageGlyph_stickerUUID, v3, &qword_1EAFCD800);
      v7 = sub_19A7A8F64();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 48))(v3, 1, v7);
      v10 = v4;
      if (v9 == 1)
      {
        v11 = 7104878;
        sub_19A5F2B54(v3, &qword_1EAFCD800);
        v12 = 0xE300000000000000;
      }

      else
      {
        v11 = sub_19A7A8F14();
        v12 = v14;
        (*(v8 + 8))(v3, v7);
      }
    }

    else
    {
      v11 = 7104878;
      v13 = v4;
      v12 = 0xE300000000000000;
    }

    if (qword_1EAFCB5D8 != -1)
    {
      swift_once();
    }

    v15 = sub_19A7A9384();
    __swift_project_value_buffer(v15, qword_1EAFCE400);

    v16 = sub_19A7A9364();
    v17 = sub_19A7AB5A4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      v20 = sub_19A62540C(v11, v12, &v21);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_19A5EE000, v16, v17, "Activating Display Link for stickerUUID: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x19A907A30](v19, -1, -1);
      MEMORY[0x19A907A30](v18, -1, -1);
    }

    else
    {
    }

    [v4 setPaused_];
  }
}

uint64_t type metadata accessor for StickerView()
{
  result = qword_1ED8B3628;
  if (!qword_1ED8B3628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A6CC468(uint64_t a1)
{
  v3 = OBJC_IVAR___STKStickerView_placeholderView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR___STKStickerView_effectView] = 0;
  *&v1[OBJC_IVAR___STKStickerView_imageView] = 0;
  *&v1[OBJC_IVAR___STKStickerView_silhouetteImageView] = 0;
  v1[OBJC_IVAR___STKStickerView_didCancelLift] = 0;
  *&v1[OBJC_IVAR___STKStickerView_peelContainer] = 0;
  *&v1[OBJC_IVAR___STKStickerView_liftedView] = 0;
  *&v1[OBJC_IVAR___STKStickerView_liftPreviewContainerView] = 0;
  v4 = &v1[OBJC_IVAR___STKStickerView_usageSource];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___STKStickerView_isPaused] = 0;
  *&v1[OBJC_IVAR___STKStickerView_effect] = 0;
  *&v1[OBJC_IVAR___STKStickerView_animatedImage] = 0;
  v5 = &v1[OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR___STKStickerView_boundsIncludeStroke] = 1;
  *&v1[OBJC_IVAR___STKStickerView_imageGlyph] = 0;
  *&v1[OBJC_IVAR___STKStickerView__image] = 0;
  v1[OBJC_IVAR___STKStickerView_viewType] = 0;
  v6 = &v1[OBJC_IVAR___STKStickerView_currentFrameIndex];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v1[OBJC_IVAR___STKStickerView_initialFrameIndexForCurrentDrag];
  *v7 = 0;
  v7[8] = 1;
  *&v1[OBJC_IVAR___STKStickerView_displayLink] = 0;
  v8 = OBJC_IVAR___STKStickerView_animatedPlaybackStartDate;
  v9 = sub_19A7A8EF4();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR___STKStickerView_frameTimeCalculator] = 0;
  *&v1[OBJC_IVAR___STKStickerView_aspectRatio] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR___STKStickerView_dragInteraction] = 0;
  v1[OBJC_IVAR___STKStickerView_isSilhouetteImageVisible] = 0;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for StickerView();
  v10 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
  if (v10)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69DC988]) initWithDelegate_];
    v12 = *&v10[OBJC_IVAR___STKStickerView_dragInteraction];
    *&v10[OBJC_IVAR___STKStickerView_dragInteraction] = v11;
    v13 = v11;

    if (v13)
    {
      [v10 addInteraction_];

      v14 = OBJC_IVAR___STKStickerView_placeholderView;
      v15 = *&v10[OBJC_IVAR___STKStickerView_placeholderView];
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 tertiarySystemFillColor];
      [v17 setItk:v18 backgroundColor:?];

      [v10 addSubview_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_19A6CC724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A60FB98;

  return sub_19A6C3B34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A6CC7F8(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_19A7A8F64();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  v1[8] = swift_task_alloc();
  sub_19A7AB354();
  v1[9] = sub_19A7AB344();
  v5 = sub_19A7AB2E4();
  v1[10] = v5;
  v1[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A6CC92C, v5, v4);
}

uint64_t sub_19A6CC92C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  sub_19A7AB374();
  v6 = sub_19A7AB394();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  (*(v3 + 16))(v1, v5, v4);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = sub_19A755EB8(0, 0, v2, &unk_19A7BD7E0, v8);
  v0[12] = v9;
  sub_19A5F2B54(v2, &unk_1EAFCD690);
  v10 = swift_task_alloc();
  v0[13] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4F8);
  *v10 = v0;
  v10[1] = sub_19A6CCAF8;

  return MEMORY[0x1EEE6DA40](v0 + 2, v9, v11);
}

uint64_t sub_19A6CCAF8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_19A6CCC18, v3, v2);
}

uint64_t sub_19A6CCC18()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19A6CCCA8(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v1[3] = swift_task_alloc();
  v2 = sub_19A7A8F64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_19A7AB354();
  v1[7] = sub_19A7AB344();
  v4 = sub_19A7AB2E4();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A6CCDD4, v4, v3);
}

uint64_t sub_19A6CCDD4()
{
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_19A6CCEA0;
  v2 = *(v0 + 16);

  return sub_19A657124(v2);
}

uint64_t sub_19A6CCEA0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19A6CCFC8, v4, v3);
}

uint64_t sub_19A6CCFC8()
{
  if (v0[11])
  {

    v1 = v0[11];
LABEL_9:

    v14 = v0[1];

    return v14(v1);
  }

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_19A60F0CC(v0[2] + OBJC_IVAR___STKImageGlyph_stickerUUID, v4, &qword_1EAFCD800);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_19A5F2B54(v0[3], &qword_1EAFCD800);
    v0[14] = 0;
    if (qword_1EAFCB5D8 != -1)
    {
      swift_once();
    }

    v5 = v0[2];
    v6 = sub_19A7A9384();
    __swift_project_value_buffer(v6, qword_1EAFCE400);
    v7 = v5;
    v8 = sub_19A7A9364();
    v9 = sub_19A7AB584();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[2];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_19A5EE000, v8, v9, "No cached image exists for imageGlyph %@, creating from sticker", v11, 0xCu);
      sub_19A5F2B54(v12, &unk_1EAFCD7D0);
      MEMORY[0x19A907A30](v12, -1, -1);
      MEMORY[0x19A907A30](v11, -1, -1);
    }

    v1 = 0;
    goto LABEL_9;
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_19A6CD27C;
  v17 = v0[6];

  return sub_19A6CC7F8(v17);
}

uint64_t sub_19A6CD27C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19A6CD3A4, v4, v3);
}

uint64_t sub_19A6CD3A4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[13];
  v0[14] = v1;
  if (qword_1EAFCB5D8 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = sub_19A7A9384();
  __swift_project_value_buffer(v3, qword_1EAFCE400);
  v4 = v2;
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB584();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_19A5EE000, v5, v6, "No cached image exists for imageGlyph %@, creating from sticker", v8, 0xCu);
    sub_19A5F2B54(v9, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v9, -1, -1);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  if (v1)
  {
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_19A6CD5D4;

    return sub_19A68B2B8();
  }

  else
  {

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_19A6CD5D4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19A6CD6FC, v4, v3);
}

uint64_t sub_19A6CD6FC()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[1];

  return v3(v2);
}

id _s10StickerKit0A4ViewC15dragInteraction_17previewForLifting7sessionSo21UITargetedDragPreviewCSgSo06UIDragE0C_So0M4ItemCSo0M7Session_ptF_0()
{
  v1 = *&v0[OBJC_IVAR___STKStickerView_effectView];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_image];
    v3 = v2;
    v4 = v1;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = v1;
LABEL_10:

    return 0;
  }

  v4 = *&v0[OBJC_IVAR___STKStickerView_imageView];
  if (!v4)
  {
    return 0;
  }

  v2 = [v4 image];
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v1;
  v6 = [v0 superview];
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v10 setShadowPath_];

  v13 = objc_opt_self();
  if ([v13 shadowPropertiesForDrag])
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v45 = v49;
  v46 = v50;
  if (*(&v50 + 1))
  {
    sub_19A5F5028(0, &unk_1EAFCC190);
    if (swift_dynamicCast())
    {
      v16 = v44;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_19A5F2B54(&v45, &unk_1EAFCD750);
    v16 = 0;
  }

  [v10 _setShadowProperties_];

  v17 = &v0[OBJC_IVAR___STKStickerView_dragPreviewLiftContainerProvider];
  swift_beginAccess();
  v18 = *v17;
  if (*v17)
  {

    v20 = v18(v19);
    sub_19A60126C(v18);
  }

  else
  {
    v20 = v7;
  }

  [v0 center];
  [v7 convertPoint:v20 toCoordinateSpace:?];
  v22 = v21;
  v24 = v23;
  [v13 targetPreviewTransform];
  v25 = v47;
  v26 = v48;
  v41 = v46;
  v42 = v45;
  v27 = objc_allocWithZone(MEMORY[0x1E69DC9A8]);
  v45 = v42;
  v46 = v41;
  v47 = v25;
  v48 = v26;
  v28 = [v27 initWithContainer:v20 center:&v45 transform:{v22, v24}];
  v29 = *&v0[OBJC_IVAR___STKStickerView_liftPreviewContainerView];
  v43 = v7;
  if (v29)
  {
    v30 = *&v0[OBJC_IVAR___STKStickerView_liftPreviewContainerView];
  }

  else
  {
    v30 = v4;
  }

  v31 = objc_allocWithZone(MEMORY[0x1E69DD068]);
  v32 = v29;
  v33 = [v31 initWithView:v30 parameters:v10 target:v28];

  v34 = [objc_allocWithZone(STKDragPreviewContainerView) initWithIsDropAnimation_];
  v35 = OBJC_IVAR___STKStickerView_peelContainer;
  v36 = *&v0[OBJC_IVAR___STKStickerView_peelContainer];
  *&v0[OBJC_IVAR___STKStickerView_peelContainer] = v34;
  v37 = v34;

  [v37 setImage_];
  v38 = *&v0[v35];
  [v33 _setPreviewContainer_];

  result = v33;
  v39 = v0[OBJC_IVAR___STKStickerView_currentFrameIndex + 8];
  v40 = &v0[OBJC_IVAR___STKStickerView_initialFrameIndexForCurrentDrag];
  *v40 = *&v0[OBJC_IVAR___STKStickerView_currentFrameIndex];
  v40[8] = v39;
  v0[OBJC_IVAR___STKStickerView_didCancelLift] = 0;
  return result;
}

id sub_19A6CDBE8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    [v2 itk_backingScaleFactor];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  sub_19A5F5028(0, &unk_1EAFCC160);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_19A6CFCD8;
  v22 = v7;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_19A611A64;
  v20 = &block_descriptor_202;
  v8 = _Block_copy(&v17);

  [v1 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v8];
  _Block_release(v8);
  sub_19A5F5028(0, &unk_1EAFCC1A0);
  v9 = swift_getObjCClassFromMetadata();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  v11[3] = 140.0;
  v11[4] = v5;
  v21 = sub_19A6CFCE0;
  v22 = v11;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_19A611A64;
  v20 = &block_descriptor_209;
  v12 = _Block_copy(&v17);

  [v1 registerObjectOfClass:v9 visibility:0 loadHandler:v12];
  _Block_release(v12);
  v13 = *MEMORY[0x1E69DEAB8];
  v21 = sub_19A6CFF64;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_19A611178;
  v20 = &block_descriptor_212;
  v14 = _Block_copy(&v17);
  v15 = v13;
  [v1 registerDataRepresentationForTypeIdentifier:v15 visibility:0 loadHandler:v14];
  _Block_release(v14);

  return v1;
}

uint64_t _s10StickerKit0A4ViewC15dragInteraction_17itemsForBeginningSaySo10UIDragItemCGSo0iE0C_So0I7Session_ptF_0()
{
  v1 = sub_19A6CA76C();
  sub_19A6CAACC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR___STKStickerView_initialFrameIndexForCurrentDrag];
  v11 = v0[OBJC_IVAR___STKStickerView_initialFrameIndexForCurrentDrag + 8];
  sub_19A5F5028(0, &unk_1EAFCE508);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v3;
  *(v13 + 32) = v5;
  *(v13 + 40) = v7;
  *(v13 + 48) = v9;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  v19[4] = sub_19A6CF900;
  v19[5] = v13;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_19A611A64;
  v19[3] = &block_descriptor_149;
  v14 = _Block_copy(v19);
  v15 = v0;

  [v1 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v14];
  _Block_release(v14);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19A7B6C40;
  *(v17 + 32) = v16;

  return v17;
}

void sub_19A6CE080(void *a1)
{
  sub_19A6CB4D0();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_19A6CF8F8;
  v11[5] = v3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_19A719B64;
  v11[3] = &block_descriptor_143;
  v4 = _Block_copy(v11);

  [a1 addCompletion_];
  _Block_release(v4);
  v5 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_19A769E7C();
    v10 = v9;

    if (v10)
    {
      sub_19A69DBE0(v8, v10);
    }
  }
}

void sub_19A6CE1C4(uint64_t a1)
{
  v3 = sub_19A7AAA14();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR___STKStickerView_isSilhouetteImageVisible) = 0;
  sub_19A6C6A38();
  v13 = sub_19A7AAFE4();
  v14 = [objc_opt_self() defaultCenter];
  [v14 postNotificationName:v13 object:0 userInfo:0];

  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v15 = OBJC_IVAR___STKStickerView_imageGlyph;
    swift_beginAccess();
    v16 = *(v1 + v15);
    if (v16)
    {
      sub_19A60F0CC(v16 + OBJC_IVAR___STKImageGlyph_stickerUUID, v8, &qword_1EAFCD800);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        (*(v10 + 32))(v12, v8, v9);
        (*(v17 + 104))(v5, *MEMORY[0x1E69D4638], v3);
        sub_19A7AAAC4();
        swift_allocObject();
        sub_19A7AAA04();
        sub_19A7AA9C4();
        (*(v10 + 8))(v12, v9);

        return;
      }
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    sub_19A5F2B54(v8, &qword_1EAFCD800);
  }
}

void sub_19A6CE6A4(uint64_t a1)
{
  sub_19A6CB4D0();
  v3 = *(v1 + OBJC_IVAR___STKStickerView_peelContainer);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[4] = sub_19A6CF8DC;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_19A6815D4;
    v9[3] = &block_descriptor_139;
    v5 = _Block_copy(v9);
    v6 = v3;

    [v6 __animateLiftCancellationAlongsideAnimator_completion_];
    _Block_release(v5);
  }

  v7 = sub_19A7AAFE4();
  v8 = [objc_opt_self() defaultCenter];
  [v8 postNotificationName:v7 object:0 userInfo:0];
}

void _s10StickerKit0A4ViewC44_dragInteractionDidCancelLiftWithoutDraggingyySo06UIDragE0CF_0()
{
  sub_19A6CB4D0();
  v1 = *(v0 + OBJC_IVAR___STKStickerView_peelContainer);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_19A6CFF30;
    v7[5] = v2;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_19A6815D4;
    v7[3] = &block_descriptor_135;
    v3 = _Block_copy(v7);
    v4 = v1;

    [v4 __animateLiftCancellationAlongsideAnimator_completion_];
    _Block_release(v3);
  }

  *(v0 + OBJC_IVAR___STKStickerView_didCancelLift) = 1;
  v5 = sub_19A7AAFE4();
  v6 = [objc_opt_self() defaultCenter];
  [v6 postNotificationName:v5 object:0 userInfo:0];
}

id keypath_get_12Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_19A6CEA28()
{
  sub_19A6CF2C4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A6CF2C4()
{
  if (!qword_1ED8B3728)
  {
    sub_19A7A8EF4();
    v0 = sub_19A7ABA94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8B3728);
    }
  }
}

void sub_19A6CF31C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_19A7A8EF4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = *(v0 + OBJC_IVAR___STKStickerView_imageView);
  if (v11)
  {
    v12 = OBJC_IVAR___STKStickerView_animatedPlaybackStartDate;
    swift_beginAccess();
    sub_19A60F0CC(v0 + v12, v3, &unk_1EAFCE4E0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_19A5F2B54(v3, &unk_1EAFCE4E0);
      return;
    }

    (*(v5 + 32))(v10, v3, v4);
    v13 = *(v0 + OBJC_IVAR___STKStickerView_frameTimeCalculator);
    if (!v13)
    {
      (*(v5 + 8))(v10, v4);
      return;
    }

    v30 = v0;
    v14 = v11;
    v15 = v13;
    sub_19A7A8ED4();
    v16 = sub_19A7A8EA4();
    v17 = *(v5 + 8);
    v17(v8, v4);
    v18 = sub_19A7A8EA4();
    v19 = [v15 imageForDate:v16 playbackStartDate:v18];

    if (!v19)
    {
      v17(v10, v4);

      return;
    }

    v20 = v19;
    v29 = v14;
    v21 = [v14 image];
    if (v21)
    {
      v22 = v21;
      sub_19A5F5028(0, &unk_1EAFCC1A0);
      v23 = v20;
      v24 = sub_19A7AB924();

      if (v24)
      {

LABEL_13:
        v17(v10, v4);
        return;
      }
    }

    else
    {
      v25 = v20;
    }

    v26 = *(v30 + OBJC_IVAR___STKStickerView__image);
    *(v30 + OBJC_IVAR___STKStickerView__image) = v19;
    v27 = v20;

    sub_19A6C2A64();
    goto LABEL_13;
  }
}

uint64_t sub_19A6CF690(uint64_t a1)
{
  v4 = *(sub_19A7A8F64() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A60F860;

  return sub_19A6C52DC(a1, v6, v7, v1 + v5);
}

uint64_t sub_19A6CF780()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A6C5DF0(v2, v3, v4);
}

id sub_19A6CF834()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_19A6CF8AC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_19A6CF918(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v14 = *(v1 + 88);
  v13 = *(v1 + 96);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_19A60FB98;

  return sub_19A6CAD3C(v7, v8, v9, v10, a1, v4, v5, v6, v11, v12, v14, v13);
}

uint64_t objectdestroy_165Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_19A6CFA9C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v11 = *(v1 + 8);
  v10 = *(v1 + 9);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_19A60FB98;

  return sub_19A6C724C(v7, a1, v4, v5, v6, v8, v9, v11, v10);
}

uint64_t sub_19A6CFBB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A60FB98;

  return sub_19A6C7EA8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A6CFC90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A6CFCEC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v10 = *(v1 + 7);
  v9 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19A60FB98;

  return sub_19A6C9C74(v7, v8, a1, v4, v5, v6, v10, v9);
}

uint64_t objectdestroy_181Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19A6CFE40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A6C8C34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A6CFF70()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCB230);
  __swift_project_value_buffer(v0, qword_1EAFCB230);
  return sub_19A7A9374();
}

uint64_t sub_19A6CFFF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  return v1;
}

uint64_t EmojiAndStickerCollectionViewController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*EmojiAndStickerCollectionViewController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_19A6267A8;
}

void *EmojiAndStickerCollectionViewController.configuration.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void EmojiAndStickerCollectionViewController.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall EmojiAndStickerCollectionViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE530);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v46 - v6;
  if (qword_1EAFCB220 != -1)
  {
    swift_once();
  }

  v8 = sub_19A7A9384();
  __swift_project_value_buffer(v8, qword_1EAFCB230);
  v9 = sub_19A7A9364();
  v10 = sub_19A7AB574();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19A5EE000, v9, v10, "viewDidLoad", v11, 2u);
    MEMORY[0x19A907A30](v11, -1, -1);
  }

  v47 = v5;

  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() clearColor];
    [v13 setBackgroundColor_];

    v15 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];
    v16 = objc_allocWithZone(MEMORY[0x1E69DD6A0]);
    v17 = v15;
    v18 = [v16 init];
    v19 = [objc_allocWithZone(MEMORY[0x1E69DD688]) initWithProcessIdentity:v17 sceneSpecification:v18];
    v48 = v17;

    swift_getKeyPath();
    swift_getKeyPath();
    ObjectType = v19;
    v20 = v1;
    sub_19A7AB654();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7AB644();

    v21 = ObjectType;
    [ObjectType setDelegate_];

    v22 = [objc_allocWithZone(MEMORY[0x1E69DD698]) init];
    [v22 setDelegate_];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7AB644();

    v23 = ObjectType;
    [ObjectType setActivationController_];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7AB644();

    v24 = ObjectType;
    v25 = [ObjectType keyboardSuppressionController];

    if (v25)
    {
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE550);
      sub_19A7AB064();
      v26 = sub_19A7AAFE4();

      v27 = [v25 suppressKeyboardFocusRequestsForReason_];
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
    }

    *&v20[OBJC_IVAR___STKEmojiAndStickerCollectionViewController_keyboardSuppression] = v27;
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7AB644();

    v28 = ObjectType;
    sub_19A7AB864();

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE540);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v7, 1, v29) == 1)
    {
      sub_19A5F783C(v7);
    }

    else
    {
      v32 = sub_19A7AB014();
      v34 = v33;
      v35 = type metadata accessor for ActivitityTypeConfiguration();
      v36 = objc_allocWithZone(v35);
      v37 = &v36[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
      *v37 = v32;
      v37[1] = v34;
      v49.receiver = v36;
      v49.super_class = v35;
      objc_msgSendSuper2(&v49, sel_init);
      swift_getOpaqueTypeConformance2();
      sub_19A6D5134();
      sub_19A7A9504();
      (*(v30 + 8))(v7, v29);
    }

    v38 = OBJC_IVAR___STKEmojiAndStickerCollectionViewController_configuration;
    swift_beginAccess();
    v39 = *&v20[v38];
    if (v39)
    {
      v40 = qword_1ED8B2D18;
      v41 = v39;
      if (v40 != -1)
      {
        swift_once();
      }

      v42 = sub_19A778764();
      v43 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
      swift_beginAccess();
      v41[v43] = v42;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_19A7AB644();

      v44 = v50;
      v45 = v47;
      sub_19A7AB864();

      if (v31(v45, 1, v29) == 1)
      {

        sub_19A5F783C(v45);
      }

      else
      {
        swift_getOpaqueTypeConformance2();
        sub_19A6D50E0();
        sub_19A7A9504();

        (*(v30 + 8))(v45, v29);
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void EmojiAndStickerCollectionViewController.search(withQuery:)(char *a1)
{
  v3 = &a1[OBJC_IVAR___STKStickerSearchQuery_exactQuery];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = (v1 + OBJC_IVAR___STKEmojiAndStickerCollectionViewController_queryString);
  *v5 = *v3;
  v5[1] = v4;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v6 = sub_19A6D5218(0, a1, 0, 0, type metadata accessor for StickerSearchQuery, &qword_1EAFCB370, type metadata accessor for StickerSearchQuery);
  [v7 sendAction_];
}

Swift::Void __swiftcall EmojiAndStickerCollectionViewController.handleKeyEvent(_:)(UIKey a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v2 = a1.super.isa;
  v3 = sub_19A6D5574(2, v2, 0, 0);

  [v4 sendAction_];
}

Swift::Void __swiftcall EmojiAndStickerCollectionViewController.didSelectEmoji(_:)(Swift::String a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_19A7AAFE4();
    [v2 didSelectEmoji_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall EmojiAndStickerCollectionViewController.didSelectEmoji(_:dismiss:)(Swift::String _, Swift::Bool dismiss)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = [Strong respondsToSelector_], swift_unknownObjectRelease(), v4))
  {
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v6 = v5;
    v7 = sub_19A7AAFE4();
    [v6 didSelectEmoji:v7 dismiss:dismiss];
  }

  else
  {
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v7 = sub_19A7AAFE4();
    [v9 didSelectEmoji_];
  }

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall EmojiAndStickerCollectionViewController.didSelectUnicodeCharacter(_:)(Swift::String a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = [Strong respondsToSelector_], swift_unknownObjectRelease(), v2))
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = sub_19A7AAFE4();
      [v4 didSelectUnicodeCharacter_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EAFCB220 != -1)
    {
      swift_once();
    }

    v6 = sub_19A7A9384();
    __swift_project_value_buffer(v6, qword_1EAFCB230);
    v7 = sub_19A7A9364();
    v8 = sub_19A7AB584();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19A5EE000, v7, v8, "Delegate does not respond to #selector(EmojiAndStickerCollectionViewControllerDelegate.didSelectSticker(_:))", v9, 2u);
      MEMORY[0x19A907A30](v9, -1, -1);
    }
  }
}

void *EmojiAndStickerCollectionViewController.didSelectSticker(_:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didSelectSticker_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *EmojiAndStickerCollectionViewController.didSelectSticker(_:dismiss:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = [Strong respondsToSelector_], swift_unknownObjectRelease(), v5))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    [result didSelectSticker:a1 dismiss:a2 & 1];
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    [result didSelectSticker_];
  }

  return swift_unknownObjectRelease();
}

uint64_t EmojiAndStickerCollectionViewController.didSelectEdit(stickerIdentifer:sourceRect:)(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_19A7A8F24();
    [v9 didSelectEditWithStickerIdentifer:v10 sourceRect:{a1, a2, a3, a4}];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall EmojiAndStickerCollectionViewController.didSelectPresentPicker()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didSelectPresentPicker];
    swift_unknownObjectRelease();
  }
}

void EmojiAndStickerCollectionViewController.didSelectCreate(_:queryString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_19A7A8F64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() clearActiveKBForwardingInputDelegateAndResign_];
  type metadata accessor for EmojiGenerationRemoteController();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_19A60F0CC(a1, v9, &qword_1EAFCD800);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_19A5F2B54(v9, &qword_1EAFCD800);
    if (a3)
    {
      v15 = &v14[OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery];
      swift_beginAccess();
      *v15 = v20;
      *(v15 + 1) = a3;
    }

    else
    {
      v17 = *(v4 + OBJC_IVAR___STKEmojiAndStickerCollectionViewController_queryString);
      v16 = *(v4 + OBJC_IVAR___STKEmojiAndStickerCollectionViewController_queryString + 8);
      v18 = &v14[OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery];
      swift_beginAccess();
      *v18 = v17;
      *(v18 + 1) = v16;
    }

    sub_19A6E0DB8();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_19A6E1114(v13);
    (*(v11 + 8))(v13, v10);
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_19A6FF284(v14, CGPointMake, 0);
}

id EmojiAndStickerCollectionViewController.didPinch(_:)(double a1)
{
  v2 = a1 < 1.0;
  v3 = objc_opt_self();
  result = [v3 isFloating];
  if (v2 != result)
  {

    return [v3 setFloating:a1 < 1.0 positionedAtDefaultOffsetAnimated:0];
  }

  return result;
}

Swift::Void __swiftcall EmojiAndStickerCollectionViewController.didBeingDrag(_:)(Swift::Bool a1)
{
  if (a1)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_19A7AAFE4();
    [v2 postNotificationName:v3 object:v1];
  }
}

uint64_t EmojiAndStickerCollectionViewController.didSelectShare(sticker:sourceRect:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_19A7AB394();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_19A7AB354();
  v15 = v5;
  v16 = a1;
  v17 = sub_19A7AB344();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v15;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  *(v18 + 64) = a5;
  *(v18 + 72) = v16;
  sub_19A6816F0(0, 0, v13, &unk_19A7BD8D8, v18);
}

uint64_t sub_19A6D20D8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a9;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 16) = a8;
  sub_19A7AB354();
  *(v9 + 64) = sub_19A7AB344();
  v11 = sub_19A7AB2E4();
  *(v9 + 72) = v11;
  *(v9 + 80) = v10;

  return MEMORY[0x1EEE6DFA0](sub_19A6D217C, v11, v10);
}

id sub_19A6D217C()
{
  v1 = *(v0 + 2);
  [v1 resignFirstResponder];
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [result window];
    *(v0 + 11) = v4;

    if (v4)
    {
      if (itk_isiPad())
      {
        [v4 bounds];
        v6 = v5;
      }

      else
      {
        v6 = v0[4];
      }

      v8 = swift_task_alloc();
      *(v0 + 12) = v8;
      *v8 = v0;
      v8[1] = sub_19A6D22E4;
      v9 = v0[5];
      v10 = v0[6];
      v11 = v0[3];

      return Sticker.createSharingVC(sourceView:sourceRect:)(v4, v11, v6, v9, v10);
    }

    else
    {

      v7 = *(v0 + 1);

      return v7();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A6D22E4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_19A6D240C, v4, v3);
}

uint64_t sub_19A6D240C()
{
  v1 = v0[13];

  if (v1)
  {
    v2 = v0[13];
    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 keyWindow];

    if (v4)
    {
      v5 = [v4 rootViewController];

      v6 = v0[11];
      if (v5)
      {
        [v5 presentViewController:v2 animated:1 completion:0];

        v6 = v5;
        goto LABEL_8;
      }
    }

    else
    {
      v6 = v0[11];
    }
  }

  else
  {
    v6 = v0[11];
  }

LABEL_8:

  v7 = v0[1];

  return v7();
}

void sub_19A6D26D4(void *a1)
{
  v2 = [objc_opt_self() _synchronizedDrawingFence];
  [a1 setAnimationFence_];
}

id EmojiAndStickerCollectionViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EAFCB220 != -1)
  {
    swift_once();
  }

  v3 = sub_19A7A9384();
  __swift_project_value_buffer(v3, qword_1EAFCB230);
  v4 = sub_19A7A9364();
  v5 = sub_19A7AB574();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19A5EE000, v4, v5, "deinit", v6, 2u);
    MEMORY[0x19A907A30](v6, -1, -1);
  }

  v7 = *&v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewController_keyboardSuppression];
  if (v7)
  {
    [v7 invalidate];
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

id EmojiAndStickerCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiAndStickerCollectionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &unk_1EAFCB0D0);
  sub_19A7AB664();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___STKEmojiAndStickerCollectionViewController_configuration] = 0;
  v7 = &v3[OBJC_IVAR___STKEmojiAndStickerCollectionViewController_queryString];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR___STKEmojiAndStickerCollectionViewController_keyboardSuppression] = 0;
  if (a2)
  {
    v8 = sub_19A7AAFE4();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id EmojiAndStickerCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiAndStickerCollectionViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &unk_1EAFCB0D0);
  sub_19A7AB664();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewController_configuration] = 0;
  v4 = &v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewController_queryString];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewController_keyboardSuppression] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void EmojiAndStickerCollectionViewController.emojiGenerationRemoteController(_:didGenerateEmoji:shouldInsert:)(void *a1, void *a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = [objc_opt_self() activeInstance];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 isInHardwareKeyboardMode];

    if ((v12 & 1) == 0)
    {
      [objc_opt_self() setRestoresToEmojiInputMode];
    }
  }

  if (a3)
  {
    v13 = sub_19A7AB394();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_19A7AB354();
    v14 = a2;
    v15 = v3;
    v16 = a1;
    v17 = sub_19A7AB344();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    sub_19A6816F0(0, 0, v9, &unk_19A7BD8E8, v18);
  }

  else
  {

    sub_19A70255C(a1, 0, 0, 0, 0);
  }
}

uint64_t sub_19A6D2F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = sub_19A7AB354();
  v6[4] = sub_19A7AB344();
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_19A6D2FB4;

  return Sticker.uiSticker()();
}

uint64_t sub_19A6D2FB4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6D30F8, v3, v2);
}

uint64_t sub_19A6D30F8()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  sub_19A70255C(v2, 0, 0, sub_19A6D656C, v3);

  v5 = v0[1];

  return v5();
}

void EmojiAndStickerCollectionViewController.emojiGenerationRemoteControllerDidCancel(_:)(void *a1)
{
  [objc_opt_self() setRestoresToEmojiInputMode];

  sub_19A70255C(a1, 0, 0, 0, 0);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.userInterfaceIdiom.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.userInterfaceIdiom.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double EmojiAndStickerCollectionViewConfiguration.keyboardWidth.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.keyboardWidth.setter(double a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmojiAndStickerCollectionViewConfiguration.isKeyboardMinorEdgeWidth.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.isKeyboardMinorEdgeWidth.setter(char a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmojiAndStickerCollectionViewConfiguration.isInPopover.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.isInPopover.setter(char a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmojiAndStickerCollectionViewConfiguration.doesSupportImageGlyph.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.doesSupportImageGlyph.setter(char a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmojiAndStickerCollectionViewConfiguration.doesSupportGenmoji.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.doesSupportGenmoji.setter(char a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double EmojiAndStickerCollectionViewConfiguration.screenToNativeScaleRatio.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.screenToNativeScaleRatio.setter(double a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmojiAndStickerCollectionViewConfiguration.doesSupportStickersApp.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.doesSupportStickersApp.setter(char a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmojiAndStickerCollectionViewConfiguration.isRunningInGenmoji.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.isRunningInGenmoji.setter(char a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmojiAndStickerCollectionViewConfiguration.didCreateSticker.getter()
{
  v1 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EmojiAndStickerCollectionViewConfiguration.didCreateSticker.setter(char a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id EmojiAndStickerCollectionViewConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmojiAndStickerCollectionViewConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom] = -1;
  *&v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth] = 0;
  v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth] = 0;
  v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover] = 0;
  v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph] = 1;
  v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji] = 0;
  *&v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio] = 0x3FF0000000000000;
  v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp] = 1;
  v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji] = 0;
  v0[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id EmojiAndStickerCollectionViewConfiguration.__allocating_init(bsxpcCoder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_19A6D5F44(a1);
  swift_unknownObjectRelease();
  return v4;
}

id EmojiAndStickerCollectionViewConfiguration.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_19A6D5F44(a1);
  swift_unknownObjectRelease();
  return v1;
}

void EmojiAndStickerCollectionViewConfiguration.encode(withBSXPCCoder:)(void *a1)
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_19A7AAFE4();
  [a1 encodeInt64:v4 forKey:v5];

  v6 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_19A7AAFE4();
  [a1 encodeDouble:v8 forKey:v7];

  v9 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_19A7AAFE4();
  [a1 encodeBool:v10 forKey:v11];

  v12 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_19A7AAFE4();
  [a1 encodeBool:v13 forKey:v14];

  v15 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_19A7AAFE4();
  [a1 encodeBool:v16 forKey:v17];

  v18 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = sub_19A7AAFE4();
  [a1 encodeBool:v19 forKey:v20];

  v21 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  v22 = *(v1 + v21);
  v23 = sub_19A7AAFE4();
  [a1 encodeDouble:v23 forKey:v22];

  v24 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  v25 = *(v1 + v24);
  v26 = sub_19A7AAFE4();
  [a1 encodeBool:v25 forKey:v26];

  v27 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  v28 = *(v1 + v27);
  v29 = sub_19A7AAFE4();
  [a1 encodeBool:v28 forKey:v29];

  v30 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
  swift_beginAccess();
  v31 = *(v1 + v30);
  v32 = sub_19A7AAFE4();
  [a1 encodeBool:v31 forKey:v32];
}

uint64_t EmojiAndStickerCollectionViewConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_19A60F0CC(a1, v30, &unk_1EAFCD750);
  if (v31)
  {
    if (swift_dynamicCast())
    {
      v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
      swift_beginAccess();
      v4 = *(v1 + v3);
      v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
      swift_beginAccess();
      if (v4 == *&v29[v5])
      {
        v6 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
        swift_beginAccess();
        v7 = *(v1 + v6);
        v8 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
        swift_beginAccess();
        if (v7 == *&v29[v8])
        {
          v9 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
          swift_beginAccess();
          LODWORD(v9) = *(v1 + v9);
          v10 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
          swift_beginAccess();
          if (v9 == v29[v10])
          {
            v11 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
            swift_beginAccess();
            LODWORD(v11) = *(v1 + v11);
            v12 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
            swift_beginAccess();
            if (v11 == v29[v12])
            {
              v13 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
              swift_beginAccess();
              LODWORD(v13) = *(v1 + v13);
              v14 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
              swift_beginAccess();
              if (v13 == v29[v14])
              {
                v15 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
                swift_beginAccess();
                LODWORD(v15) = *(v1 + v15);
                v16 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
                swift_beginAccess();
                if (v15 == v29[v16])
                {
                  v17 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
                  swift_beginAccess();
                  v18 = *(v1 + v17);
                  v19 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
                  swift_beginAccess();
                  if (v18 == *&v29[v19])
                  {
                    v20 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
                    swift_beginAccess();
                    LODWORD(v20) = *(v1 + v20);
                    v21 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
                    swift_beginAccess();
                    if (v20 == v29[v21])
                    {
                      v22 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
                      swift_beginAccess();
                      LODWORD(v22) = *(v1 + v22);
                      v23 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
                      swift_beginAccess();
                      if (v22 == v29[v23])
                      {
                        v26 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
                        swift_beginAccess();
                        v27 = *(v1 + v26);
                        v28 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
                        swift_beginAccess();
                        LOBYTE(v28) = v29[v28];

                        v24 = v27 ^ v28 ^ 1;
                        return v24 & 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_19A5F2B54(v30, &unk_1EAFCD750);
  }

  v24 = 0;
  return v24 & 1;
}

id sub_19A6D4CE0()
{
  result = [objc_allocWithZone(type metadata accessor for EmojiAndStickerCollectionViewConfiguration()) init];
  qword_1EAFCB388 = result;
  return result;
}

id static EmojiAndStickerCollectionViewConfiguration.ConfigurationSetting.defaultValue.getter()
{
  if (qword_1EAFCB378 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EAFCB388;

  return v0;
}

void static EmojiAndStickerCollectionViewConfiguration.ConfigurationSetting.defaultValue.setter(uint64_t a1)
{
  if (qword_1EAFCB378 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EAFCB388;
  qword_1EAFCB388 = a1;
}

uint64_t (*static EmojiAndStickerCollectionViewConfiguration.ConfigurationSetting.defaultValue.modify())()
{
  if (qword_1EAFCB378 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_19A6D4E9C@<X0>(void *a1@<X8>)
{
  if (qword_1EAFCB378 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EAFCB388;
  *a1 = qword_1EAFCB388;

  return v2;
}

void sub_19A6D4F28(id *a1)
{
  v1 = qword_1EAFCB378;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EAFCB388;
  qword_1EAFCB388 = v2;
}

id EmojiAndStickerCollectionViewConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A6D4FE8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  *a1 = v3;
  return result;
}

uint64_t sub_19A6D5068(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_19A7AB654();
}

unint64_t sub_19A6D50E0()
{
  result = qword_1ED8B33C0;
  if (!qword_1ED8B33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B33C0);
  }

  return result;
}

unint64_t sub_19A6D5134()
{
  result = qword_1EAFCB290;
  if (!qword_1EAFCB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB290);
  }

  return result;
}

id sub_19A6D5218(uint64_t a1, void *a2, char a3, char a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v27[5] = a2;
  v13 = objc_allocWithZone(MEMORY[0x1E698E700]);
  v14 = a2;
  v15 = [v13 init];
  if (a3)
  {
    v16 = sub_19A7A8CA4();
    swift_allocObject();
    v17 = sub_19A7A8C94();
    v18 = &unk_1EAFCB0B0;
    v19 = MEMORY[0x1E69689D8];
  }

  else
  {
    v16 = sub_19A7A8B84();
    swift_allocObject();
    v17 = sub_19A7A8B74();
    v18 = &unk_1ED8B3400;
    v19 = MEMORY[0x1E6968010];
  }

  v27[3] = v16;
  v27[4] = sub_19A6D6608(v18, v19);
  v27[0] = v17;
  __swift_project_boxed_opaque_existential_1(v27, v16);
  a5(0);
  sub_19A6D6608(a6, a7);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v27);
  v20 = sub_19A7A8E14();
  [v15 setObject:v20 forSetting:1];

  if (a4)
  {
    v21 = [objc_opt_self() _synchronizedDrawingFence];
    [v15 setObject:v21 forSetting:2];
    sub_19A612F14(v25, v26);
  }

  else
  {
    sub_19A612F14(v25, v26);
  }

  v22 = sub_19A7AB4B4();
  [v15 setObject:v22 forSetting:0];

  type metadata accessor for StickerSearchHostToClientAction();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v15 responder:0];

  return v23;
}

id sub_19A6D5574(uint64_t a1, void *a2, char a3, char a4)
{
  v21[5] = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);
  v8 = a2;
  v9 = [v7 init];
  if (a3)
  {
    v10 = sub_19A7A8CA4();
    swift_allocObject();
    v11 = sub_19A7A8C94();
    v12 = &unk_1EAFCB0B0;
    v13 = MEMORY[0x1E69689D8];
  }

  else
  {
    v10 = sub_19A7A8B84();
    swift_allocObject();
    v11 = sub_19A7A8B74();
    v12 = &unk_1ED8B3400;
    v13 = MEMORY[0x1E6968010];
  }

  v21[3] = v10;
  v21[4] = sub_19A6D6608(v12, v13);
  v21[0] = v11;
  __swift_project_boxed_opaque_existential_1(v21, v10);
  sub_19A6D65B4();
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v14 = sub_19A7A8E14();
  [v9 setObject:v14 forSetting:1];

  if (a4)
  {
    v15 = [objc_opt_self() _synchronizedDrawingFence];
    [v9 setObject:v15 forSetting:2];
    sub_19A612F14(v19, v20);
  }

  else
  {
    sub_19A612F14(v19, v20);
  }

  v16 = sub_19A7AB4B4();
  [v9 setObject:v16 forSetting:0];

  type metadata accessor for StickerSearchHostToClientAction();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v9 responder:0];

  return v17;
}

void _s10StickerKit08EmojiAndA24CollectionViewControllerC15viewIsAppearingyySbF_0()
{
  v1 = v0;
  if (qword_1EAFCB220 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCB230);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "viewIsAppearing", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v6 = [v44 sceneViewController];

  v7 = [v6 parentViewController];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
LABEL_15:

    return;
  }

  [v1 addChildViewController_];
  v9 = [v6 view];
  if (!v9)
  {
LABEL_14:
    [v6 didMoveToParentViewController_];
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v11 addSubview_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [objc_opt_self() additionalInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19A7BB2E0;
  v22 = [v10 topAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor:v25 constant:-v14];
  *(v21 + 32) = v26;
  v27 = [v10 bottomAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:v18];
  *(v21 + 40) = v31;
  v32 = [v10 leftAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = v33;
  v35 = [v33 leftAnchor];

  v36 = [v32 constraintEqualToAnchor:v35 constant:-v16];
  *(v21 + 48) = v36;
  v37 = [v10 rightAnchor];
  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    v40 = objc_opt_self();
    v41 = [v39 rightAnchor];

    v42 = [v37 constraintEqualToAnchor:v41 constant:v20];
    *(v21 + 56) = v42;
    sub_19A5F5028(0, &qword_1ED8B2030);
    v43 = sub_19A7AB234();

    [v40 activateConstraints_];

    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_19A6D5D90(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = *(v1 + 9);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_19A60FB98;

  return sub_19A6D20D8(v7, v8, v9, v10, a1, v4, v5, v6, v11);
}

uint64_t sub_19A6D5E7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60F860;

  return sub_19A6D2F00(a1, v4, v5, v6, v7, v8);
}

id sub_19A6D5F44(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
  *&v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom] = -1;
  v4 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
  *&v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth] = 0;
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
  v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth] = 0;
  v6 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
  v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover] = 0;
  v7 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
  v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph] = 1;
  v8 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
  v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji] = 0;
  v9 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
  *&v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio] = 0x3FF0000000000000;
  v26 = v9;
  v27 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
  v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp] = 1;
  v28 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
  v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji] = 0;
  v29 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
  v1[OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker] = 0;
  v10 = sub_19A7AAFE4();
  v11 = [a1 decodeInt64ForKey_];

  swift_beginAccess();
  *&v1[v3] = v11;
  v12 = sub_19A7AAFE4();
  [a1 decodeDoubleForKey_];
  v14 = v13;

  swift_beginAccess();
  *&v1[v4] = v14;
  v15 = sub_19A7AAFE4();
  LOBYTE(v11) = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v1[v5] = v11;
  v16 = sub_19A7AAFE4();
  LOBYTE(v11) = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v1[v6] = v11;
  v17 = sub_19A7AAFE4();
  LOBYTE(v11) = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v1[v7] = v11;
  v18 = sub_19A7AAFE4();
  LOBYTE(v11) = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v1[v8] = v11;
  v19 = sub_19A7AAFE4();
  [a1 decodeDoubleForKey_];
  v21 = v20;

  swift_beginAccess();
  *&v1[v26] = v21;
  v22 = sub_19A7AAFE4();
  LOBYTE(v11) = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v1[v27] = v11;
  v23 = sub_19A7AAFE4();
  LOBYTE(v11) = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v1[v28] = v11;
  v24 = sub_19A7AAFE4();
  LOBYTE(a1) = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v1[v29] = a1;
  v31.receiver = v1;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t type metadata accessor for EmojiAndStickerCollectionViewController()
{
  result = qword_1EAFCB398;
  if (!qword_1EAFCB398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A6D63EC()
{
  sub_19A6D649C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A6D649C()
{
  if (!qword_1EAFCB0F0)
  {
    sub_19A5F5028(255, &unk_1EAFCB0D0);
    v0 = sub_19A7AB674();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCB0F0);
    }
  }
}

id sub_19A6D656C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 insertSticker_];
}

unint64_t sub_19A6D65B4()
{
  result = qword_1EAFCE5A8;
  if (!qword_1EAFCE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE5A8);
  }

  return result;
}

uint64_t sub_19A6D6608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A6D6650(char *a1)
{
  v3 = a1;

  sub_19A629E90(&v3);
  if (*(v3 + 2))
  {
    v1 = *(v3 + 4);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_19A6D66D4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A67FEB8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_19A6D91CC(v5);
  *a1 = v2;
  return result;
}

void sub_19A6D6740(unint64_t isUniquelyReferenced_nonNull_bridgeObject, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
LABEL_50:
    v37 = isUniquelyReferenced_nonNull_bridgeObject;
    v9 = sub_19A7ABBE4();
    isUniquelyReferenced_nonNull_bridgeObject = v37;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
      v42 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
      v38 = isUniquelyReferenced_nonNull_bridgeObject;
      v40 = isUniquelyReferenced_nonNull_bridgeObject + 32;
      v11 = MEMORY[0x1E69E7CC0];
      v39 = v9;
      while (1)
      {
        if (v42)
        {
          isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x19A906130](v10, v38);
        }

        else
        {
          if (v10 >= *(v41 + 16))
          {
            goto LABEL_45;
          }

          isUniquelyReferenced_nonNull_bridgeObject = *(v40 + 8 * v10);
        }

        v12 = isUniquelyReferenced_nonNull_bridgeObject;
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
          goto LABEL_44;
        }

        v14 = *(isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
        v15 = *(isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
        v48.size.width = sub_19A711D4C();
        v48.size.height = v16;
        v47.origin.x = a2;
        v47.origin.y = a3;
        v47.size.width = a4;
        v47.size.height = a5;
        v48.origin.x = v14;
        v48.origin.y = v15;
        if (CGRectIntersectsRect(v47, v48))
        {
          sub_19A629338();
          v17 = *&v12[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock];
          v19 = MEMORY[0x1EEE9AC00](v18);
          MEMORY[0x1EEE9AC00](v19);
          os_unfair_lock_lock(v17 + 4);
          sub_19A60EFE4(v45);
          v20 = v17 + 4;
          if (v43)
          {
            os_unfair_lock_unlock(v20);
            __break(1u);
            return;
          }

          os_unfair_lock_unlock(v20);
          v21 = v45[0];
        }

        else
        {

          v21 = MEMORY[0x1E69E7CC0];
        }

        v22 = v21 >> 62;
        v23 = v21 >> 62 ? sub_19A7ABBE4() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v11 >> 62;
        if (v11 >> 62)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_19A7ABBE4();
          v25 = isUniquelyReferenced_nonNull_bridgeObject + v23;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v23))
          {
LABEL_43:
            __break(1u);
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
            goto LABEL_50;
          }
        }

        else
        {
          isUniquelyReferenced_nonNull_bridgeObject = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v25 = isUniquelyReferenced_nonNull_bridgeObject + v23;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v23))
          {
            goto LABEL_43;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v46 = v23;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          break;
        }

        if (v24)
        {
          goto LABEL_23;
        }

LABEL_24:
        isUniquelyReferenced_nonNull_bridgeObject = sub_19A7ABD04();
        v11 = isUniquelyReferenced_nonNull_bridgeObject;
        v26 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
        v27 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v22)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_19A7ABBE4();
          v29 = isUniquelyReferenced_nonNull_bridgeObject;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
LABEL_4:

            if (v46 > 0)
            {
              goto LABEL_46;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v29)
          {
            goto LABEL_4;
          }
        }

        if (((v28 >> 1) - v27) < v46)
        {
          goto LABEL_47;
        }

        v30 = v26 + 8 * v27 + 32;
        v44 = v11;
        if (v22)
        {
          if (v29 < 1)
          {
            goto LABEL_49;
          }

          sub_19A6DA1B4();
          for (i = 0; i != v29; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE600);
            v32 = sub_19A652034(v45, i, v21);
            v34 = *v33;
            (v32)(v45, 0);
            *(v30 + 8 * i) = v34;
          }
        }

        else
        {
          sub_19A6DA168();
          swift_arrayInitWithCopy();
        }

        if (v46 < 1)
        {
          v9 = v39;
          v11 = v44;
        }

        else
        {
          v35 = *(v26 + 16);
          v13 = __OFADD__(v35, v46);
          v36 = v35 + v46;
          v9 = v39;
          v11 = v44;
          if (v13)
          {
            goto LABEL_48;
          }

          *(v26 + 16) = v36;
        }

LABEL_5:
        if (v10 == v9)
        {
          return;
        }
      }

      if (!v24)
      {
        v26 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_19A7ABBE4();
      goto LABEL_24;
    }
  }
}

uint64_t sub_19A6D6BB4()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCAB28);
  __swift_project_value_buffer(v0, qword_1EAFCAB28);
  return sub_19A7A9374();
}

uint64_t sub_19A6D6C34()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7468676972;
  v4 = 28789;
  if (v1 != 3)
  {
    v4 = 1853321060;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x6E776F6E6B6E75;
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

void sub_19A6D6CB0()
{
  v1 = OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections);
  if (v2 >> 62)
  {
    v3 = sub_19A7ABBE4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_17:

    v4 = MEMORY[0x19A906130](v4, v2);

    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = *(v2 + 8 * v4 + 32);
LABEL_8:
  v0 = *(v0 + v1);
  if (!(v0 >> 62))
  {
    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_20:

    return;
  }

LABEL_19:
  if (!sub_19A7ABBE4())
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_23:

    v5 = MEMORY[0x19A906130](0, v0);

    goto LABEL_13;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v0 + 32);
LABEL_13:
    v6 = (v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
    v7 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
    v8 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
    v20.size.width = sub_19A711D4C();
    v20.size.height = v9;
    v20.origin.x = v7;
    v20.origin.y = v8;
    CGRectGetMaxX(v20);
    v10 = &v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
    v11 = *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
    v12 = *&v5[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8];
    v21.size.width = sub_19A711D4C();
    v21.size.height = v13;
    v21.origin.x = v11;
    v21.origin.y = v12;
    CGRectGetMinX(v21);
    v14 = *v6;
    v15 = v6[1];
    v22.size.width = sub_19A711D4C();
    v22.size.height = v16;
    v22.origin.x = v14;
    v22.origin.y = v15;
    CGRectGetMaxY(v22);
    v17 = *v10;
    v18 = v10[1];
    v23.size.width = sub_19A711D4C();
    v23.size.height = v19;
    v23.origin.x = v17;
    v23.origin.y = v18;
    CGRectGetMinY(v23);

    return;
  }

  __break(1u);
}

uint64_t sub_19A6D6EE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = *(v0 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_dataSource);
    v5 = *(v4 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
    if (v5)
    {
      v6 = *(v4 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
    }

    else
    {
      v6 = *(v4 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
    }

    v7 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
    swift_beginAccess();
    v3 = v6[v7];
    v8 = v5;

    return v3;
  }

  result = sub_19A7ABBE4();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x19A906130](0, v1);

    v3 = *(v9 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration);
    swift_unknownObjectRelease();
    return v3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(*(v1 + 32) + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration);
  }

  __break(1u);
  return result;
}

id sub_19A6D7014(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_isolationEdges] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_isolationAdjacentSections] = v3;
  v4 = &v1[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastContentOffset];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastScrollingDirection] = 0;
  v5 = &v1[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections] = v3;
  v6 = OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_dataSource] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ImageGlyphLayoutSolver();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_19A6D8040();

  return v9;
}

uint64_t sub_19A6D7114@<X0>(void *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{

  sub_19A6D6740(v10, a2, a3, a4, a5);
  v12 = v11;

  *a1 = v12;
  return result;
}

uint64_t sub_19A6D719C(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v36 = sub_19A6D753C(a1, a2, a3 & 1, a4, a5, a6, a7);
  if ((v36 | 2) == 3)
  {

    v14 = sub_19A7307E8(v13);
    if (a3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = *(v7 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections);

    if (a3)
    {
      goto LABEL_19;
    }
  }

  result = sub_19A6D6EE0();
  v16 = (v7 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize);
  if (result)
  {
    v17 = *&a2;
    if (*&a2 <= a5)
    {
      v18 = *&a2;
    }

    else
    {
      v18 = a5;
    }

    if (*&a2 <= a5)
    {
      v17 = a5;
    }

    if (v18 <= v17 + v16[1])
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v19 = *&a1;
  if (*&a1 <= a4)
  {
    v20 = *&a1;
  }

  else
  {
    v20 = a4;
  }

  if (*&a1 <= a4)
  {
    v19 = a4;
  }

  if (v20 > v19 + *v16)
  {
    __break(1u);
    return result;
  }

LABEL_19:
  if (v14 >> 62)
  {
LABEL_40:
    v37 = v14 & 0xFFFFFFFFFFFFFF8;
    v38 = sub_19A7ABBE4();
  }

  else
  {
    v37 = v14 & 0xFFFFFFFFFFFFFF8;
    v38 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v22 = v14;
  v23 = v14 & 0xC000000000000001;
  v35 = MEMORY[0x1E69E7CC0];
  while (v38 != v21)
  {
    if (v23)
    {
      v29 = MEMORY[0x19A906130](v21, v22);
    }

    else
    {
      if (v21 >= *(v37 + 16))
      {
        goto LABEL_39;
      }

      v29 = *(v22 + 8 * v21 + 32);
    }

    v30 = v29;
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (*(v29 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration) == 1)
    {
      v24 = v39;
      sub_19A62C11C(v36, v39, a4, a5);
    }

    else
    {
      v24 = v40;
      sub_19A62C3A8(v36, v40, a4, a5);
    }

    v25 = *v24;
    v14 = *(v24 + 1);
    v26 = v24[16];
    v27 = *(v24 + 3);
    v28 = *(v24 + 4);

    ++v21;
    if (v26 != 3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_19A76C3FC(0, *(v35 + 2) + 1, 1, v35);
      }

      v33 = *(v35 + 2);
      v32 = *(v35 + 3);
      if (v33 >= v32 >> 1)
      {
        v35 = sub_19A76C3FC((v32 > 1), v33 + 1, 1, v35);
      }

      *(v35 + 2) = v33 + 1;
      v34 = &v35[40 * v33];
      *(v34 + 4) = v25;
      *(v34 + 5) = v14;
      v34[48] = v26;
      *(v34 + 7) = v27;
      *(v34 + 8) = v28;
      v21 = v31;
    }
  }

  sub_19A6D746C(v35, &v41);
}

uint64_t sub_19A6D746C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result + 24;
  v4 = *(result + 16) + 1;
  while (--v4)
  {
    v5 = (v3 + 40);
    v6 = *(v3 + 24);
    v3 += 40;
    if (!v6)
    {
      v7 = *v5;
      v8 = *(v5 - 2);
      *&v9 = 0;
      *(&v9 + 1) = *(v5 - 1);
      goto LABEL_8;
    }
  }

  v10 = result;
  v11 = sub_19A6D90C8(result);
  sub_19A6D9028(v11, v14);
  v12 = v14[0];
  v13 = v14[1];
  v7 = v15;

  v9 = v13;
  if (v13 == 3)
  {
    result = sub_19A6D9028(v10, v16);
    v9 = v16[1];
    v8 = v16[0];
    v7 = v17;
  }

  else
  {
    v8 = v12;
  }

LABEL_8:
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_19A6D753C(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  if (fabs(a6) <= 2.22044605e-16)
  {
    if (fabs(a7) <= 2.22044605e-16)
    {
      if (a3)
      {
        return 0;
      }

      if (*&a1 == a4)
      {
        if (*&a2 == a5)
        {
          return 0;
        }

        if (*&a2 >= a5)
        {
          result = 3;
        }

        else
        {
          result = 4;
        }
      }

      else if (*&a1 >= a4)
      {
        result = 1;
      }

      else
      {
        result = 2;
      }
    }

    else if (a7 <= 0.0)
    {
      result = 3;
    }

    else
    {
      result = 4;
    }
  }

  else if (a6 <= 0.0)
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  if (*(v7 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastScrollingDirection) != result)
  {
    *(v7 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastScrollingDirection) = result;
  }

  return result;
}

uint64_t sub_19A6D75E4(double a1, double a2)
{
  result = sub_19A6D6EE0();
  v6 = (v2 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize);
  if (result)
  {
    v7 = v6[1];
    v8 = v7 + a2 + 4.0;
    if (a2 + -4.0 <= v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_isolationEdges);
      v10 = *(v9 + 16);
      if (v10)
      {
        for (i = (v9 + 32); ; ++i)
        {
          v12 = *i;
          if (a2 + -4.0 <= *i && v12 < v8)
          {
            break;
          }

          if (!--v10)
          {
            return 0;
          }
        }

        fmod(v12, v7);
        return 0;
      }

      return 0;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v14 = *v6;
  v15 = *v6 + a1 + 1.0;
  if (a1 + -1.0 > v15)
  {
    goto LABEL_23;
  }

  v16 = *(v2 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_isolationEdges);
  v17 = *(v16 + 16);
  if (!v17)
  {
    return 0;
  }

  for (j = (v16 + 32); ; ++j)
  {
    v19 = *j;
    if (a1 + -1.0 <= *j && v19 < v15)
    {
      break;
    }

    if (!--v17)
    {
      return 0;
    }
  }

  return fmod(v19, v14);
}

uint64_t sub_19A6D7704(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize);
  v7 = *(v2 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize);
  v8 = *(v2 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize + 8);
  v9 = *(v2 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_isolationAdjacentSections);
  if (v9 >> 62)
  {
    goto LABEL_79;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v75 = OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections;
  v71 = OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_dataSource;

  v74 = v3;
  if (v10)
  {
    v11 = 0;
    v72 = v9 & 0xFFFFFFFFFFFFFF8;
    v73 = v9 & 0xC000000000000001;
    v70 = v7;
    v69 = v9;
    while (1)
    {
      if (v73)
      {
        v19 = MEMORY[0x19A906130](v11, v9);
      }

      else
      {
        if (v11 >= *(v72 + 16))
        {
          goto LABEL_74;
        }

        v19 = *(v9 + 8 * v11 + 32);
      }

      v20 = v19;
      v21 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
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
        v10 = sub_19A7ABBE4();
        goto LABEL_3;
      }

      v22 = &v19[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
      v23 = *&v19[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
      v24 = *&v19[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8];
      v88.size.width = sub_19A711D4C();
      v88.size.height = v25;
      v79.origin.x = a1;
      v79.origin.y = a2;
      v79.size.width = v7;
      v79.size.height = v8;
      v88.origin.x = v23;
      v88.origin.y = v24;
      v80 = CGRectIntersection(v79, v88);
      x = v80.origin.x;
      y = v80.origin.y;
      width = v80.size.width;
      height = v80.size.height;
      if (!CGRectIsEmpty(v80))
      {
        break;
      }

LABEL_11:

      ++v11;
      if (v21 == v10)
      {
        goto LABEL_33;
      }
    }

    v30 = *(v3 + v75);
    if (v30 >> 62)
    {
      if (sub_19A7ABBE4())
      {
        goto LABEL_19;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      if ((v30 & 0xC000000000000001) == 0)
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        if (*(*(v30 + 32) + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration))
        {
          goto LABEL_30;
        }

LABEL_5:
        v76.origin.x = x;
        v76.origin.y = y;
        v76.size.width = width;
        v76.size.height = height;
        v12 = CGRectGetWidth(v76) / *v6;
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v13 = CGRectGetWidth(v77);
        v14 = *v22;
        v15 = v22[1];
        v78.size.width = sub_19A711D4C();
        v78.size.height = v16;
        v78.origin.x = v14;
        v78.origin.y = v15;
        v17 = CGRectGetWidth(v78);
        goto LABEL_6;
      }

      v68 = MEMORY[0x19A906130](0, v30);

      v42 = *(v68 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration);
      swift_unknownObjectRelease();
      if ((v42 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_30:
      v81.origin.x = x;
      v81.origin.y = y;
      v81.size.width = width;
      v81.size.height = height;
      v12 = CGRectGetHeight(v81) / v6[1];
      v82.origin.x = x;
      v82.origin.y = y;
      v82.size.width = width;
      v82.size.height = height;
      v13 = CGRectGetHeight(v82);
      v39 = *v22;
      v40 = v22[1];
      v83.size.width = sub_19A711D4C();
      v83.size.height = v41;
      v83.origin.x = v39;
      v83.origin.y = v40;
      v17 = CGRectGetHeight(v83);
LABEL_6:
      v18 = v13 / v17 <= 0.5 && v12 <= 0.5;
      v7 = v70;
      if (!v18)
      {
LABEL_71:

        v66 = *&v20[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_sectionIndex];

        return v66;
      }

      goto LABEL_11;
    }

    v31 = v10;
    v32 = v6;
    v33 = *(v3 + v71);
    v34 = *(v33 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
    if (v34)
    {
      v35 = *(v33 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
    }

    else
    {
      v35 = *(v33 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
    }

    v36 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
    swift_beginAccess();
    LODWORD(v36) = v35[v36];
    v37 = v34;

    v38 = v36 == 1;
    v3 = v74;
    v6 = v32;
    v10 = v31;
    v9 = v69;
    if (!v38)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_33:

  v43 = (v3 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastContentOffset);
  v44 = *(v3 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastContentOffset);
  if (v44 == a1)
  {
    v45 = v43[1];
    if (v45 == a2)
    {
      goto LABEL_43;
    }

    if (v45 >= a2)
    {
      v46 = 3;
    }

    else
    {
      v46 = 4;
    }
  }

  else if (v44 >= a1)
  {
    v46 = 1;
  }

  else
  {
    v46 = 2;
  }

  if (*(v3 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastScrollingDirection) != v46)
  {
    *(v3 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastScrollingDirection) = v46;
  }

LABEL_43:
  *v43 = a1;
  v43[1] = a2;
  sub_19A6D6EE0();
  sub_19A6D7DF0(v3, a1, a2, v7, v8);
  a2 = v47;
  v9 = *(v3 + v75);
  if (v9 >> 62)
  {
    v48 = sub_19A7ABBE4();
  }

  else
  {
    v48 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v48)
  {
    v49 = 0;
    v3 = v9 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v50 = MEMORY[0x19A906130](v49, v9);
      }

      else
      {
        if (v49 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v50 = *(v9 + 8 * v49 + 32);
      }

      v20 = v50;
      v6 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_75;
      }

      v51 = *(v74 + v75);
      if (v51 >> 62)
      {
        if (!sub_19A7ABBE4())
        {
LABEL_62:
          v56 = *(v74 + v71);
          v57 = *(v56 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
          if (v57)
          {
            v58 = *(v56 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
          }

          else
          {
            v58 = *(v56 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
          }

          v59 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
          swift_beginAccess();
          LODWORD(v59) = v58[v59];
          v60 = v57;

          if (v59 == 1)
          {
            goto LABEL_58;
          }

          goto LABEL_66;
        }
      }

      else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      if ((v51 & 0xC000000000000001) != 0)
      {

        v64 = MEMORY[0x19A906130](0, v51);

        v65 = *(v64 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration);
        swift_unknownObjectRelease();
        if (v65)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        if (*(*(v51 + 32) + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration))
        {
LABEL_58:
          v52 = &v20[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
          a1 = *&v20[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
          v7 = *&v20[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8];
          v84.size.width = sub_19A711D4C();
          v84.size.height = v53;
          v84.origin.x = a1;
          v84.origin.y = v7;
          if (CGRectGetMinY(v84) <= a2)
          {
            a1 = *v52;
            v7 = v52[1];
            v85.size.width = sub_19A711D4C();
            v85.size.height = v54;
            v85.origin.x = a1;
            v85.origin.y = v7;
            MaxY = CGRectGetMaxY(v85);
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

LABEL_66:
      v61 = &v20[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
      a1 = *&v20[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
      v7 = *&v20[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8];
      v86.size.width = sub_19A711D4C();
      v86.size.height = v62;
      v86.origin.x = a1;
      v86.origin.y = v7;
      if (CGRectGetMinX(v86) <= a2)
      {
        a1 = *v61;
        v7 = v61[1];
        v87.size.width = sub_19A711D4C();
        v87.size.height = v63;
        v87.origin.x = a1;
        v87.origin.y = v7;
        MaxY = CGRectGetMaxX(v87);
LABEL_47:
        if (a2 <= MaxY)
        {
          goto LABEL_71;
        }
      }

LABEL_48:

      ++v49;
    }

    while (v6 != v48);
  }

  return 0;
}

void sub_19A6D7DF0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_19A6D6EE0();
  v11 = *(a1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lastScrollingDirection) | 2;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v10)
  {
    if (v11 == 3)
    {
      CGRectGetMinY(*&v12);
    }

    else
    {
      CGRectGetMaxY(*&v12);
    }
  }

  else if (v11 == 3)
  {
    CGRectGetMinX(*&v12);
  }

  else
  {
    CGRectGetMaxX(*&v12);
  }
}

uint64_t sub_19A6D7E98(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections);
  if (v2 >> 62)
  {
    v5 = a1;
    v6 = sub_19A7ABBE4();
    a1 = v5;
    if (v6 > v5)
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
LABEL_3:
    v3 = *(v1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lock);
    v7 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock(v3 + 4);
    sub_19A60F150(&v8);
    os_unfair_lock_unlock(v3 + 4);
    return v8;
  }

  return 0;
}

char *sub_19A6D7FA4@<X0>(char *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *&result[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections];
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x19A906130](a2, v4);

    result = v6;
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    result = *(v4 + 8 * a2 + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6D8040()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_dataSource);
  result = sub_19A6532EC();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = result;
    v6 = sub_19A73DCA8(result, 0);
    result = sub_19A64B03C(v23, (v6 + 4), v5, 0, v5);
    if (result == v5)
    {
      v7 = v6[2];
      if (v7)
      {
        goto LABEL_5;
      }

LABEL_9:

      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v23[0] = v4;
  sub_19A7ABD84();
  v8 = type metadata accessor for ImageGlyphLayoutSection();
  v9 = 4;
  do
  {
    v10 = v6[v9];
    objc_allocWithZone(v8);
    v11 = v2;
    sub_19A62B8F4(v10, v11, 0.0, 0.0);

    sub_19A7ABD64();
    sub_19A7ABD94();
    sub_19A7ABDA4();
    sub_19A7ABD74();
    ++v9;
    --v7;
  }

  while (v7);

  v12 = v23[0];
LABEL_10:
  v13 = *(v1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize);
  v14 = *(v1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize + 8);
  v15 = *&v2[OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig];
  if (v15)
  {
    v16 = *&v2[OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig];
  }

  else
  {
    v16 = *&v2[OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig];
  }

  v17 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  LOBYTE(v17) = v16[v17];
  v18 = v15;

  sub_19A6D82B4(v17, v12, v13, v14);

  v20 = *(v1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lock);
  v21 = MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  os_unfair_lock_lock(v20 + 4);
  sub_19A5F5774(v22);
  os_unfair_lock_unlock(v20 + 4);
}

uint64_t sub_19A6D82B4(char a1, unint64_t a2, double a3, double a4)
{
  v4 = a2;
  if (a2 >> 62)
  {
LABEL_27:
    v38 = v4 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_19A7ABBE4();
    if (!v7)
    {
    }
  }

  else
  {
    v38 = a2 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
    }
  }

  v8 = 0;
  v35 = v4;
  v36 = v4 & 0xC000000000000001;
  MaxY = 0.0;
  while (2)
  {
    MaxX = 0.0;
    while (1)
    {
      if (v36)
      {
        v11 = MEMORY[0x19A906130](v8, v4);
      }

      else
      {
        if (v8 >= *(v38 + 16))
        {
          goto LABEL_26;
        }

        v11 = *(v4 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v14 = &v11[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize];
      *v14 = a3;
      v14[1] = a4;
      v15 = (*&v11[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver] + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_viewSize);
      if (*v15 != a3 || v15[1] != a4)
      {
        *v15 = a3;
        v15[1] = a4;
        sub_19A7123DC();
        sub_19A629A28();
      }

      v17 = &v12[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin];
      *v17 = MaxX;
      v17[1] = MaxY;
      v18 = &v12[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration];
      if (v12[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration] == 1)
      {
        sub_19A6297FC();
      }

      else
      {
        sub_19A6295A8();
      }

      *&v12[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___alignmentEdges] = v19;

      v20 = MEMORY[0x1E69E7CC0];
      if (v18[129] == 1)
      {
        v20 = sub_19A628080();
      }

      *&v12[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___isolationEdges] = v20;

      v22 = *&v12[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock];
      v23 = MEMORY[0x1EEE9AC00](v21);
      MEMORY[0x1EEE9AC00](v23);
      os_unfair_lock_lock(v22 + 4);
      sub_19A5F57B8(v24);
      os_unfair_lock_unlock(v22 + 4);
      v26 = *v17;
      v25 = *(v17 + 1);
      v27 = sub_19A711D4C();
      v29 = v28;
      if (a1)
      {
        break;
      }

      v30 = v26;
      v31 = v25;
      MaxX = CGRectGetMaxX(*(&v27 - 2));

      ++v8;
      v4 = v35;
      if (v13 == v7)
      {
      }
    }

    v32 = v26;
    v33 = v25;
    MaxY = CGRectGetMaxY(*(&v27 - 2));

    ++v8;
    v4 = v35;
    if (v13 != v7)
    {
      continue;
    }
  }
}

uint64_t sub_19A6D8598(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections) = a2;

  *(a1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_isolationEdges) = sub_19A6D88FC();
}

void sub_19A6D85FC()
{
  v1 = v0;
  if (qword_1EAFCAB20 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAB28);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_19A7AB894();
    v9 = sub_19A62540C(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Updating view size for sections %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x19A907A30](v6, -1, -1);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lock);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock(v10 + 4);
  sub_19A5F57B8(v13);
  os_unfair_lock_unlock(v10 + 4);
}

uint64_t sub_19A6D87DC(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections);
  v7 = *(a1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_dataSource);
  v8 = *(v7 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  if (v8)
  {
    v9 = *(v7 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  }

  else
  {
    v9 = *(v7 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
  }

  v10 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  LOBYTE(v10) = v9[v10];

  v11 = v8;

  sub_19A6D82B4(v10, v6, a2, a3);
  swift_bridgeObjectRelease_n();
  *(a1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_isolationEdges) = sub_19A6D88FC();

  *(a1 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_isolationAdjacentSections) = sub_19A6D8B74();
}

char *sub_19A6D88FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections);
  if (v1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A7ABBE4())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x19A906130](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = sub_19A627404();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_19A76C518(0, v4[2] + 1, 1, v4);
      }

      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        v4 = sub_19A76C518((v9 > 1), v10 + 1, 1, v4);
      }

      v4[2] = v10 + 1;
      v4[v10 + 4] = v8;
      ++v3;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v11 = v4[2];
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v12 >= v4[2])
      {
        goto LABEL_39;
      }

      v1 = v4[v12 + 4];
      v14 = *(v1 + 16);
      v15 = *(v13 + 2);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= *(v13 + 3) >> 1)
      {
        if (!*(v1 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v13 = sub_19A76C19C(isUniquelyReferenced_nonNull_native, v18, 1, v13);
        if (!*(v1 + 16))
        {
LABEL_19:

          if (v14)
          {
            goto LABEL_41;
          }

          goto LABEL_20;
        }
      }

      v19 = *(v13 + 2);
      if ((*(v13 + 3) >> 1) - v19 < v14)
      {
        goto LABEL_42;
      }

      memcpy(&v13[8 * v19 + 32], (v1 + 32), 8 * v14);

      if (v14)
      {
        v20 = *(v13 + 2);
        v21 = __OFADD__(v20, v14);
        v22 = v20 + v14;
        if (v21)
        {
          goto LABEL_43;
        }

        *(v13 + 2) = v22;
      }

LABEL_20:
      if (v11 == ++v12)
      {
        goto LABEL_36;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_36:

  return v13;
}

uint64_t sub_19A6D8B74()
{
  v23 = OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections);
  if (v2 >> 62)
  {
    goto LABEL_46;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v25 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v24 + v23);
    v26 = MEMORY[0x1E69E7CC0];
    if (!(v1 >> 62))
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  v4 = sub_19A7ABBE4();
LABEL_6:

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19A906130](v6, v1);
      }

      else
      {
        if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
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
        __break(1u);
LABEL_46:
        v3 = sub_19A7ABBE4();
        goto LABEL_3;
      }

      v10 = *&v7[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_sectionIndex];
      if (v10)
      {
        v11 = v10 == v25;
      }

      else
      {
        v11 = 1;
      }

      if (v11 || (v7[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 129] & 1) != 0)
      {
        goto LABEL_27;
      }

      v12 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        goto LABEL_40;
      }

      v13 = *(v24 + v23);
      if ((v13 & 0xC000000000000001) != 0)
      {

        v16 = MEMORY[0x19A906130](v10 - 1, v13);

        v17 = *(v16 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 129);
        swift_unknownObjectRelease();
        if (v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        if (*(*(v13 + 8 * v12 + 32) + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 129))
        {
          goto LABEL_27;
        }
      }

      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_43;
      }

      v15 = *(v24 + v23);
      if ((v15 & 0xC000000000000001) != 0)
      {

        v18 = MEMORY[0x19A906130](v10 + 1, v15);

        v19 = *(v18 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 129);
        swift_unknownObjectRelease();
        if ((v19 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        if ((*(*(v15 + 8 * v14 + 32) + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 129) & 1) == 0)
        {
LABEL_34:

          goto LABEL_28;
        }
      }

LABEL_27:
      sub_19A7ABD64();
      sub_19A7ABD94();
      sub_19A7ABDA4();
      sub_19A7ABD74();
LABEL_28:
      ++v6;
      if (v9 == v4)
      {
        v20 = v26;
        v5 = MEMORY[0x1E69E7CC0];
        goto LABEL_36;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_36:

  if (v5 >> 62 && sub_19A7ABBE4())
  {
    sub_19A6D9E28(MEMORY[0x1E69E7CC0]);
  }

  v21 = sub_19A6D9CA0(v20);

  return v21;
}

id sub_19A6D8EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageGlyphLayoutSolver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19A6D8FD4()
{
  result = qword_1EAFCE5F0;
  if (!qword_1EAFCE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE5F0);
  }

  return result;
}

uint64_t sub_19A6D9028@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;

  sub_19A6D66D4(&v9);
  if (*(v9 + 2))
  {
    v3 = v9[48];
    v7 = *(v9 + 56);
    v8 = *(v9 + 2);

    v6 = v7;
    v5 = v8;
  }

  else
  {

    v5 = 0uLL;
    v3 = 3;
    v6 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_19A6D90C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 56);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*(v2 - 8) == 1)
    {
      v8 = *(v2 - 24);
      v9 = *v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19A65AE4C(0, *(v3 + 16) + 1, 1);
      }

      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_19A65AE4C((v4 > 1), v5 + 1, 1);
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 40 * v5;
      *(v6 + 32) = v8;
      *(v6 + 48) = 1;
      *(v6 + 56) = v9;
    }

    v2 = (v2 + 40);
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_19A6D91CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19A7AC004();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_19A7AB294();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_19A6D938C(v7, v8, a1, v4);
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
    return sub_19A6D92C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19A6D92C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 40 * a3);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v11 = v7[4];
    v12 = v10 - *v7;
    if (*v7 == 0.0)
    {
      v12 = v11 - v9;
    }

    v13 = fabs(v12);
    v14 = v6;
    v15 = v5;
    while (1)
    {
      v16 = *(v15 - 32);
      if (v16 == 0.0)
      {
        v17 = *v15 - *(v15 - 24);
      }

      else
      {
        v17 = *(v15 - 8) - v16;
      }

      if (v13 > fabs(v17))
      {
LABEL_4:
        ++a3;
        v5 += 40;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v18 = *(v15 + 24);
      v19 = *(v15 - 16);
      *(v15 + 8) = *(v15 - 32);
      *(v15 + 24) = v19;
      *(v15 + 40) = *v15;
      *(v15 - 32) = v8;
      *(v15 - 24) = v9;
      *(v15 - 16) = v18;
      *(v15 - 8) = v10;
      *v15 = v11;
      v15 -= 40;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19A6D938C(uint64_t result, uint64_t a2, uint64_t *a3, double *a4)
{
  v112 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_135:
      result = sub_19A67FC80(v8);
      v8 = result;
    }

    v107 = *(v8 + 2);
    if (v107 >= 2)
    {
      while (*a3)
      {
        v108 = *&v8[16 * v107];
        v109 = *&v8[16 * v107 + 24];
        sub_19A6D9A04((*a3 + 40 * v108), (*a3 + 40 * *&v8[16 * v107 + 16]), *a3 + 40 * v109, v6);
        if (v4)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_19A67FC80(v8);
        }

        if (v107 - 2 >= *(v8 + 2))
        {
          goto LABEL_129;
        }

        v110 = &v8[16 * v107];
        *v110 = v108;
        *(v110 + 1) = v109;
        result = sub_19A67FBF4(v107 - 1);
        v107 = *(v8 + 2);
        if (v107 <= 1)
        {
        }
      }

      goto LABEL_139;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = (*a3 + 40 * v7);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v14 = v10[4];
      v15 = 40 * v9;
      v16 = (*a3 + 40 * v9);
      v17 = *v16;
      v18 = v13 - v11;
      if (v11 == 0.0)
      {
        v18 = v14 - v12;
      }

      v19 = fabs(v18);
      if (v17 == 0.0)
      {
        v20 = v16[4] - v16[1];
      }

      else
      {
        v20 = v16[3] - v17;
      }

      v21 = fabs(v20);
      v22 = v9 + 2;
      v23 = v16 + 14;
      while (v5 != v22)
      {
        v24 = v14 - v12;
        v25 = *(v23 - 4);
        v12 = *(v23 - 3);
        v26 = v13 - v11;
        v27 = *(v23 - 1);
        v28 = *v23;
        v29 = v27 - v25;
        if (v25 == 0.0)
        {
          v29 = *v23 - v12;
        }

        v30 = fabs(v29);
        if (v11 == 0.0)
        {
          v31 = v24;
        }

        else
        {
          v31 = v26;
        }

        v32 = v30 > fabs(v31);
        ++v22;
        v23 += 5;
        v14 = v28;
        v13 = v27;
        v11 = v25;
        if ((((v19 <= v21) ^ v32) & 1) == 0)
        {
          v7 = v22 - 1;
          if (v19 > v21)
          {
            goto LABEL_30;
          }

          goto LABEL_21;
        }
      }

      v7 = v5;
      if (v19 > v21)
      {
        goto LABEL_30;
      }

LABEL_21:
      if (v7 < v9)
      {
        goto LABEL_132;
      }

      if (v9 < v7)
      {
        v33 = 40 * v7 - 40;
        v34 = v7;
        v35 = v9;
        do
        {
          if (v35 != --v34)
          {
            v43 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v36 = (v43 + v15);
            v37 = *(v43 + v15 + 16);
            v38 = (v43 + v33);
            v39 = *v36;
            v40 = *(v36 + 24);
            v41 = *(v38 + 4);
            v42 = v38[1];
            *v36 = *v38;
            v36[1] = v42;
            *(v36 + 4) = v41;
            *v38 = v39;
            *(v38 + 16) = v37;
            *(v38 + 24) = v40;
          }

          ++v35;
          v33 -= 40;
          v15 += 40;
        }

        while (v35 < v34);
        v5 = a3[1];
      }
    }

LABEL_30:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_131;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_133;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v7 < v9)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A67FD78(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v62 = *(v8 + 2);
    v61 = *(v8 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_19A67FD78((v61 > 1), v62 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v63;
    v64 = &v8[16 * v62];
    *(v64 + 4) = v9;
    *(v64 + 5) = v7;
    v65 = *v112;
    if (!*v112)
    {
      goto LABEL_140;
    }

    if (v62)
    {
      while (1)
      {
        v66 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v67 = *(v8 + 4);
          v68 = *(v8 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_72:
          if (v70)
          {
            goto LABEL_119;
          }

          v83 = &v8[16 * v63];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_122;
          }

          v89 = &v8[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_126;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v63 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v93 = &v8[16 * v63];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_86:
        if (v88)
        {
          goto LABEL_121;
        }

        v96 = &v8[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_124;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_93:
        v6 = v66 - 1;
        if (v66 - 1 >= v63)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v104 = *&v8[16 * v6 + 32];
        v105 = *&v8[16 * v66 + 40];
        sub_19A6D9A04((*a3 + 40 * v104), (*a3 + 40 * *&v8[16 * v66 + 32]), *a3 + 40 * v105, v65);
        if (v4)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_19A67FC80(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_116;
        }

        v106 = &v8[16 * v6];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        result = sub_19A67FBF4(v66);
        v63 = *(v8 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v8[16 * v63 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_117;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_118;
      }

      v78 = &v8[16 * v63];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_120;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_123;
      }

      if (v82 >= v74)
      {
        v100 = &v8[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_127;
        }

        if (v69 < v103)
        {
          v66 = v63 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_103;
    }
  }

  v44 = *a3;
  v45 = *a3 + 40 * v7 - 8;
  v46 = v9 - v7;
LABEL_40:
  v47 = (v44 + 40 * v7);
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[3];
  v51 = v47[4];
  v52 = v50 - *v47;
  if (*v47 == 0.0)
  {
    v52 = v51 - v49;
  }

  v53 = fabs(v52);
  v54 = v46;
  v55 = v45;
  while (1)
  {
    v56 = *(v55 - 32);
    if (v56 == 0.0)
    {
      v57 = *v55 - *(v55 - 24);
    }

    else
    {
      v57 = *(v55 - 8) - v56;
    }

    if (v53 > fabs(v57))
    {
LABEL_39:
      ++v7;
      v45 += 40;
      --v46;
      if (v7 != v5)
      {
        goto LABEL_40;
      }

      v7 = v5;
      goto LABEL_52;
    }

    if (!v44)
    {
      break;
    }

    v58 = *(v55 + 24);
    v59 = *(v55 - 16);
    *(v55 + 8) = *(v55 - 32);
    *(v55 + 24) = v59;
    *(v55 + 40) = *v55;
    *(v55 - 32) = v48;
    *(v55 - 24) = v49;
    *(v55 - 16) = v58;
    *(v55 - 8) = v50;
    *v55 = v51;
    v55 -= 40;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_19A6D9A04(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *v4;
      if (*v6 == 0.0)
      {
        v18 = v6[4] - v6[1];
      }

      else
      {
        v18 = v6[3] - *v6;
      }

      v19 = fabs(v18);
      v20 = v4[3] - v17;
      if (v17 == 0.0)
      {
        v20 = v4[4] - v4[1];
      }

      if (v19 <= fabs(v20))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_25:
    v21 = v6 - 5;
    v5 -= 40;
    v22 = v12;
    do
    {
      v23 = *(v22 - 40);
      v24 = *(v22 - 32);
      v22 -= 40;
      v25 = (v5 + 40);
      v26 = *(v6 - 5);
      v27 = *(v22 + 32) - v24;
      if (v23 == 0.0)
      {
        v28 = v27;
      }

      else
      {
        v28 = *(v22 + 24) - v23;
      }

      v29 = fabs(v28);
      v30 = *(v6 - 2) - v26;
      if (v26 == 0.0)
      {
        v30 = *(v6 - 1) - *(v6 - 4);
      }

      if (v29 <= fabs(v30))
      {
        if (v25 != v6)
        {
          v33 = *v21;
          v34 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v33;
          *(v5 + 16) = v34;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_41;
        }

        goto LABEL_25;
      }

      if (v25 != v12)
      {
        v31 = *v22;
        v32 = *(v22 + 16);
        *(v5 + 32) = *(v22 + 32);
        *v5 = v31;
        *(v5 + 16) = v32;
      }

      v5 -= 40;
      v12 = v22;
    }

    while (v22 > v4);
    v12 = v22;
  }

LABEL_41:
  v35 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v36 = (v35 >> 4) + (v35 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v36])
  {
    memmove(v6, v4, 40 * v36);
  }

  return 1;
}

uint64_t sub_19A6D9CA0(unint64_t a1)
{
  v12 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_16:
    v2 = sub_19A7ABBE4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x19A906130](v3, a1);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            return v12;
          }
        }

        else
        {
          if (v3 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(a1 + 8 * v3 + 32);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = v5;
        v8 = sub_19A76024C(&v11, v7);

        if (v8)
        {
          sub_19A7ABD64();
          sub_19A7ABD94();
          v4 = v10;
          sub_19A7ABDA4();
          sub_19A7ABD74();
        }

        else
        {
        }

        ++v3;
        if (v6 == v2)
        {
          return v12;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_19A6D9E28(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_19A7ABBE4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE5F8);
      v3 = sub_19A7ABC94();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_19A7ABBE4();
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
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x19A906130](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_19A7AB914();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for ImageGlyphLayoutSection();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_19A7AB924();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
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
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_19A7AB914();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for ImageGlyphLayoutSection();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_19A7AB924();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_19A6DA168()
{
  result = qword_1EAFCA440;
  if (!qword_1EAFCA440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFCA440);
  }

  return result;
}

unint64_t sub_19A6DA1B4()
{
  result = qword_1EAFCE608;
  if (!qword_1EAFCE608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE608);
  }

  return result;
}

uint64_t sub_19A6DA218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_19A6DA25C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_19A6DA2CC()
{
  result = qword_1EAFCE610;
  if (!qword_1EAFCE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE610);
  }

  return result;
}

uint64_t sub_19A6DA324()
{
  type metadata accessor for EmojiRecency();
  v0 = swift_allocObject();
  sub_19A7AA974();
  swift_allocObject();
  result = sub_19A7AA964();
  *(v0 + 16) = result;
  qword_1EAFDD638 = v0;
  return result;
}

uint64_t sub_19A6DA37C()
{

  return swift_deallocClassInstance();
}

id STKGenerativeModelsAvailability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19A6DA40C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCE618);
  __swift_project_value_buffer(v0, qword_1EAFCE618);
  return sub_19A7A9374();
}

id STKGenerativeModelsAvailability.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STKGenerativeModelsAvailability();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STKGenerativeModelsAvailability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STKGenerativeModelsAvailability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A6DA590()
{
  v0 = sub_19A7A91D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A7A91F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A7A9224();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A91E4();
  sub_19A7A9214();
  (*(v5 + 8))(v7, v4);
  sub_19A7A9204();
  (*(v9 + 8))(v11, v8);
  v12 = (*(v1 + 88))(v3, v0);
  if (v12 != *MEMORY[0x1E69A0EF8])
  {
    if (v12 == *MEMORY[0x1E69A0F00])
    {
      v13 = 0;
      goto LABEL_5;
    }

    if (v12 == *MEMORY[0x1E69A11A0])
    {
      return 1;
    }

    if (qword_1EAFCB5E0 != -1)
    {
      swift_once();
    }

    v15 = sub_19A7A9384();
    __swift_project_value_buffer(v15, qword_1EAFCE618);
    v16 = sub_19A7A9364();
    v17 = sub_19A7AB584();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_19A5EE000, v16, v17, "unexpected case in GenerativeModelsAvailability isAvailable", v18, 2u);
      MEMORY[0x19A907A30](v18, -1, -1);
    }
  }

  v13 = 1;
LABEL_5:
  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_19A6DA8E0()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCE630);
  __swift_project_value_buffer(v0, qword_1EAFCE630);
  return sub_19A7A9374();
}

uint64_t sub_19A6DA964()
{
  v0 = sub_19A7AAA14();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D4638]);
  sub_19A7AAAC4();
  swift_allocObject();
  result = sub_19A7AAA04();
  qword_1EAFCE648 = result;
  return result;
}

uint64_t static RestrictedDistributionManager.mustAcceptRestrictedDistributionTerms.getter()
{
  if ([objc_opt_self() isInternalBuild])
  {
    v0 = sub_19A6DBCD4() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t static RestrictedDistributionManager.didAcceptRestrictedDistributionTerms.getter()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 1;
  }

  return sub_19A6DBCD4();
}

void static RestrictedDistributionManager.presentRestrictedDistributionTermsAlertIfNecessary(for:isInPopover:completion:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  if (![objc_opt_self() isInternalBuild] || (sub_19A6DBCD4() & 1) != 0)
  {
    if (qword_1EAFCB5E8 != -1)
    {
      swift_once();
    }

    v9 = sub_19A7A9384();
    __swift_project_value_buffer(v9, qword_1EAFCE630);
    v10 = sub_19A7A9364();
    v11 = sub_19A7AB5A4();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Already accepted distribution terms.";
    goto LABEL_7;
  }

  v14 = _s10StickerKit29RestrictedDistributionManagerC010restrictedA11IdentifiersSay10Foundation4UUIDVGvgZ_0();
  v15 = *(v14 + 16);
  if (v15)
  {
    v35 = v14;
    sub_19A7AB0A4();
    v33 = v4;
    sub_19A7ABCB4();
    MEMORY[0x19A905510](0xD00000000000001FLL, 0x800000019A7CA070);
    v43 = v15;
    v16 = sub_19A7AC024();
    MEMORY[0x19A905510](v16);

    MEMORY[0x19A905510](0xD00000000000006FLL, 0x800000019A7CA090);
    v17 = sub_19A7AAFE4();

    v18 = sub_19A7AAFE4();

    v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

    [v19 setDoesDimBackground_];
    v20 = swift_allocObject();
    v20[2] = v33;
    v20[3] = a3;
    v20[4] = a4;
    sub_19A60138C(a3);
    v21 = sub_19A7AAFE4();
    v41 = sub_19A6DC2D0;
    v42 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_19A6DB1A8;
    v40 = &block_descriptor_15;
    v22 = _Block_copy(&aBlock);

    v23 = objc_opt_self();
    v34 = [v23 actionWithTitle:v21 style:0 handler:v22];
    _Block_release(v22);

    v24 = swift_allocObject();
    v24[2] = v35;
    v24[3] = v33;
    v24[4] = a3;
    v24[5] = a4;
    v24[6] = a1;
    sub_19A60138C(a3);
    v36 = a1;
    v25 = sub_19A7AAFE4();
    v41 = sub_19A6DC310;
    v42 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_19A6DB1A8;
    v40 = &block_descriptor_6_0;
    v26 = _Block_copy(&aBlock);

    v27 = [v23 actionWithTitle:v25 style:2 handler:v26];
    _Block_release(v26);

    v28 = swift_allocObject();
    *(v28 + 16) = a3;
    *(v28 + 24) = a4;
    sub_19A60138C(a3);
    v29 = sub_19A7AAFE4();
    v41 = sub_19A6DC320;
    v42 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_19A6DB1A8;
    v40 = &block_descriptor_12_0;
    v30 = _Block_copy(&aBlock);

    v31 = [v23 actionWithTitle:v29 style:1 handler:v30];
    _Block_release(v30);

    [v19 addAction_];
    [v19 addAction_];
    [v19 addAction_];
    [v36 presentViewController:v19 animated:1 completion:0];

    return;
  }

  if (qword_1EAFCB5E8 != -1)
  {
    swift_once();
  }

  v32 = sub_19A7A9384();
  __swift_project_value_buffer(v32, qword_1EAFCE630);
  v10 = sub_19A7A9364();
  v11 = sub_19A7AB5A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Did not find any items subject to distribution terms.";
LABEL_7:
    _os_log_impl(&dword_19A5EE000, v10, v11, v13, v12, 2u);
    MEMORY[0x19A907A30](v12, -1, -1);
  }

LABEL_8:

  if (a3)
  {
    a3(0);
  }
}

void sub_19A6DB1A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_19A6DB210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  aBlock = 0;
  v27 = 0xE000000000000000;
  sub_19A7ABCB4();
  MEMORY[0x19A905510](0xD000000000000015, 0x800000019A7CA240);
  v32 = *(a2 + 16);
  v7 = sub_19A7AC024();
  MEMORY[0x19A905510](v7);

  MEMORY[0x19A905510](0xD000000000000026, 0x800000019A7CA260);
  v8 = sub_19A7AAFE4();
  v9 = sub_19A7AAFE4();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  sub_19A7A8C44();

  v13 = sub_19A7AAFE4();

  v30 = CGPointMake;
  v31 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_19A6DB1A8;
  v29 = &block_descriptor_20;
  v14 = _Block_copy(&aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:1 handler:{v14, 0xED00006E6F697463}];
  _Block_release(v14);

  [v10 addAction_];
  v17 = [v11 mainBundle];
  sub_19A7A8C44();

  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a2;
  v18[4] = a4;
  v18[5] = a5;

  sub_19A60138C(a4);
  v19 = sub_19A7AAFE4();

  v30 = sub_19A6DC3A4;
  v31 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_19A6DB1A8;
  v29 = &block_descriptor_26;
  v20 = _Block_copy(&aBlock);

  v21 = [v15 actionWithTitle:v19 style:2 handler:{v20, 0xED00006E6F697463}];
  _Block_release(v20);

  [v10 addAction_];
  [a6 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_19A6DB784(uint64_t a1)
{
  v24 = a1;
  v25 = sub_19A7A8F64();
  v1 = *(v25 - 8);
  v2 = MEMORY[0x1EEE9AC00](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v22 - v5;
  v6 = sub_19A7AAAE4();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_19A7AABB4();
  v23 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A6DC9C0(&qword_1ED8B2098, MEMORY[0x1E69D4660]);
  v11 = sub_19A7AB184();
  v29 = MEMORY[0x1E69E7CC0];
  sub_19A65AE6C(0, v11 & ~(v11 >> 63), 0);
  v12 = v29;
  (*(v26 + 2))(v8, v24, v6);
  v26 = v10;
  result = sub_19A7AB174();
  if (v11 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v11)
  {
    sub_19A6DC9C0(&qword_1EAFCA628, MEMORY[0x1E69D46D0]);
    do
    {
      result = sub_19A7ABAB4();
      v14 = v28;
      if (!v28)
      {
        goto LABEL_15;
      }

      MEMORY[0x19A905020](result);

      v29 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_19A65AE6C(v15 > 1, v16 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v16 + 1;
      (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v4, v25);
    }

    while (--v11);
  }

  sub_19A6DC9C0(&qword_1EAFCA628, MEMORY[0x1E69D46D0]);
  v17 = sub_19A7ABAB4();
  v18 = v28;
  if (v28)
  {
    v19 = v22;
    do
    {
      MEMORY[0x19A905020](v17);

      v29 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_19A65AE6C(v20 > 1, v21 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v21 + 1;
      (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v21, v19, v25);
      v17 = sub_19A7ABAB4();
      v18 = v28;
    }

    while (v28);
  }

  (*(v23 + 8))(v26, v27);
  return v12;
}

id RestrictedDistributionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RestrictedDistributionManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RestrictedDistributionManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RestrictedDistributionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RestrictedDistributionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A6DBCD4()
{
  v0 = sub_19A7AAFE4();
  v1 = sub_19A7AAFE4();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

uint64_t _s10StickerKit29RestrictedDistributionManagerC010restrictedA11IdentifiersSay10Foundation4UUIDVGvgZ_0()
{
  v0 = sub_19A7AAAE4();
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A7AAE04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19A7AAC14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE650);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v23 = sub_19A7AAC44();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19A7AABD4();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  (*(v8 + 104))(v10, *MEMORY[0x1E69D4718], v7);
  sub_19A7AAC24();
  (*(v4 + 104))(v6, *MEMORY[0x1E69D4748], v3);
  sub_19A7AADF4();
  (*(v4 + 8))(v6, v3);
  sub_19A7AAC34();
  if (qword_1EAFCB5F0 != -1)
  {
    swift_once();
  }

  sub_19A7AAAB4();

  v18 = sub_19A6DB784(v2);
  (*(v21 + 8))(v2, v22);
  (*(v14 + 8))(v16, v23);
  return v18;
}

uint64_t sub_19A6DC2D0()
{
  v1 = *(v0 + 24);
  result = sub_19A6DC3DC(1);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_19A6DC320()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_19A6DC3A4()
{
  v1 = *(v0 + 32);
  result = sub_19A6DC6EC(*(v0 + 24));
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_19A6DC3DC(char a1)
{
  v2 = sub_19A7A8C04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAFCB5E8 != -1)
  {
    swift_once();
  }

  v6 = sub_19A7A9384();
  __swift_project_value_buffer(v6, qword_1EAFCE630);
  v7 = sub_19A7A9364();
  v8 = sub_19A7AB5A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v20[0] = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0x6465747065636361;
    }

    else
    {
      v11 = 0x64657463656A6572;
    }

    v12 = sub_19A62540C(v11, 0xE800000000000000, v20);

    *(v9 + 4) = v12;
    _os_log_impl(&dword_19A5EE000, v7, v8, "User %s restricted distribution terms.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x19A907A30](v10, -1, -1);
    MEMORY[0x19A907A30](v9, -1, -1);
  }

  v13 = sub_19A7AAFE4();
  v14 = sub_19A7AB2D4();
  v15 = sub_19A7AAFE4();
  CFPreferencesSetAppValue(v13, v14, v15);

  if (qword_1EAFCA4C8 != -1)
  {
    swift_once();
  }

  memset(v20, 0, sizeof(v20));
  v16 = qword_1EAFDD4E8;
  sub_19A7A8BD4();
  v17 = [objc_opt_self() defaultCenter];
  v18 = sub_19A7A8BB4();
  [v17 postNotification_];

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_19A6DC6EC(uint64_t a1)
{
  if (qword_1EAFCB5E8 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCE630);

  v3 = sub_19A7A9364();
  v4 = sub_19A7AB5A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&dword_19A5EE000, v3, v4, "Will delete %ld restricted Genmoji.", v5, 0xCu);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  else
  {
  }

  if (qword_1EAFCB5F0 != -1)
  {
    swift_once();
  }

  sub_19A7AA9E4();
}

uint64_t sub_19A6DC9C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A6DCB08(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_19A6DCBAC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_19A6DCC58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE798);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = &v43 - v2;
  v45 = sub_19A7AA874();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE7A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_19A7AA914();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = sub_19A7A8DF4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker] = 0;
  *&v0[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_selection] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_maxPixelDimension] = 8000;
  v18 = type metadata accessor for StickerPhotosCoordinator();
  v49.receiver = v0;
  v49.super_class = v18;
  v19 = objc_msgSendSuper2(&v49, sel_init);
  v20 = objc_opt_self();
  v21 = v19;
  if ([v20 isMultiLibraryModeEnabled])
  {
    v22 = [v20 systemPhotoLibraryURL];
    sub_19A7A8D94();

    v23 = objc_allocWithZone(MEMORY[0x1E69789A8]);
    v24 = sub_19A7A8D64();
    v43 = v21;
    v25 = v5;
    v26 = v8;
    v27 = v14;
    v28 = v24;
    v29 = [v23 initWithPhotoLibraryURL_];

    v30 = v27;
    v8 = v26;
    v5 = v25;
    v21 = v43;
    (*(v15 + 8))(v17, v30);
  }

  else
  {
    v29 = [v20 sharedPhotoLibrary];
  }

  v31 = v29;
  sub_19A7AA8B4();
  sub_19A7AA8F4();
  sub_19A7AA8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE7A8);
  *(swift_allocObject() + 16) = xmmword_19A7B90E0;
  sub_19A7AA864();
  sub_19A7AA854();
  sub_19A7AA824();
  sub_19A7AA844();
  v32 = v45;
  (*(v3 + 8))(v5, v45);
  sub_19A7AA834();

  (*(v3 + 56))(v8, 0, 1, v32);
  sub_19A7AA904();
  v33 = v46;
  sub_19A7AA924();
  v34 = sub_19A7AA934();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  sub_19A7AA8D4();
  sub_19A7AA8E4();
  sub_19A5F5028(0, &qword_1EAFCE7B0);
  v36 = v47;
  v35 = v48;
  (*(v47 + 16))(v44, v13, v48);
  v37 = sub_19A7AB834();
  sub_19A6E0C1C(&qword_1EAFCE7B8, v38, type metadata accessor for StickerPhotosCoordinator);
  sub_19A7AB844();
  v39 = [v37 presentationController];
  if (v39)
  {
    v40 = v39;
    [v39 setDelegate_];

    (*(v36 + 8))(v13, v35);
  }

  else
  {
    (*(v36 + 8))(v13, v35);
  }

  v41 = *&v21[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker];
  *&v21[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker] = v37;

  return v21;
}

id sub_19A6DD28C()
{
  v1 = *&v0[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker];
  *&v0[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for StickerPhotosCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19A6DD3AC()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCE660);
  __swift_project_value_buffer(v0, qword_1EAFCE660);
  return sub_19A7A9374();
}

void sub_19A6DD42C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2 && (objc_opt_self(), v7 = swift_dynamicCastObjCClassUnconditional(), !a3))
    {
      v18 = v7;
      swift_unknownObjectRetain();
      v19 = sub_19A7AA894();
      sub_19A6DD664(v18, v19, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = qword_1EAFCB5F8;
      swift_unknownObjectRetain();
      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_19A7A9384();
      __swift_project_value_buffer(v9, qword_1EAFCE660);
      v10 = a3;
      v11 = sub_19A7A9364();
      v12 = sub_19A7AB584();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        if (a3)
        {
          v15 = a3;
          v16 = _swift_stdlib_bridgeErrorToNSError();
          v17 = v16;
        }

        else
        {
          v16 = 0;
          v17 = 0;
        }

        *(v13 + 4) = v16;
        *v14 = v17;
        _os_log_impl(&dword_19A5EE000, v11, v12, "Error loading live photo: %@", v13, 0xCu);
        sub_19A5F2B54(v14, &unk_1EAFCD7D0);
        MEMORY[0x19A907A30](v14, -1, -1);
        MEMORY[0x19A907A30](v13, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_19A6DD664(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() assetResourcesForLivePhoto_];
  sub_19A5F5028(0, &unk_1EAFCE780);
  v8 = sub_19A7AB254();

  v21 = a3;
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x19A906130](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 type] == 1)
      {

        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_19A7BDCC0;
        v15 = [objc_opt_self() defaultManager];
        v26 = sub_19A6E0840;
        v27 = v14;
        aBlock = MEMORY[0x1E69E9820];
        v23 = 1107296256;
        v24 = sub_19A6DE7FC;
        v25 = &block_descriptor_38;
        v16 = _Block_copy(&aBlock);

        v17 = swift_allocObject();
        v17[2] = v3;
        v17[3] = v14;
        v17[4] = a2;
        v17[5] = v21;
        v17[6] = a1;
        v26 = sub_19A6E0848;
        v27 = v17;
        aBlock = MEMORY[0x1E69E9820];
        v23 = 1107296256;
        v24 = sub_19A6DECA4;
        v25 = &block_descriptor_44;
        v18 = _Block_copy(&aBlock);

        v19 = a1;

        v20 = v3;

        [v15 requestDataForAssetResource:v12 options:0 dataReceivedHandler:v16 completionHandler:v18];
        _Block_release(v18);
        _Block_release(v16);

        return;
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

uint64_t sub_19A6DD994(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_19A6DDA14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a6;
  v19 = a7;
  v10 = sub_19A7AA8A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a1;
  *(v15 + 4) = a2;
  (*(v11 + 32))(&v15[v14], &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = v18;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v17 = a2;

  itk_dispatchMainAfterDelay();
  _Block_release(v16);
}

void sub_19A6DDBF4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2 && (objc_opt_self(), v7 = swift_dynamicCastObjCClassUnconditional(), !a3))
    {
      v18 = v7;
      swift_unknownObjectRetain();
      v19 = sub_19A7AA894();
      sub_19A6DDE30(v18, v19, v20, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = qword_1EAFCB5F8;
      swift_unknownObjectRetain();
      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_19A7A9384();
      __swift_project_value_buffer(v9, qword_1EAFCE660);
      v10 = a3;
      v11 = sub_19A7A9364();
      v12 = sub_19A7AB584();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        if (a3)
        {
          v15 = a3;
          v16 = _swift_stdlib_bridgeErrorToNSError();
          v17 = v16;
        }

        else
        {
          v16 = 0;
          v17 = 0;
        }

        *(v13 + 4) = v16;
        *v14 = v17;
        _os_log_impl(&dword_19A5EE000, v11, v12, "Error loading image from photo: %@", v13, 0xCu);
        sub_19A5F2B54(v14, &unk_1EAFCD7D0);
        MEMORY[0x19A907A30](v14, -1, -1);
        MEMORY[0x19A907A30](v13, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_19A6DDE30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = &selRef_entitlementValueForBalloonHost_expectedClass_;
  [a1 size];
  v12 = v11;
  [a1 size];
  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = v14;
  if (v14 >= 8001)
  {
    v15 = [a1 CGImage];
    if (v15)
    {
      v10 = v15;
      if (qword_1EAFCB5F8 == -1)
      {
LABEL_10:
        v16 = sub_19A7A9384();
        __swift_project_value_buffer(v16, qword_1EAFCE660);
        v17 = v4;
        v18 = sub_19A7A9364();
        v19 = sub_19A7AB5A4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134218240;
          *(v20 + 4) = v5;
          *(v20 + 12) = 2048;
          *(v20 + 14) = 8000;

          _os_log_impl(&dword_19A5EE000, v18, v19, "maxDimension: %ld is greater than max: %ld, attempting downscale", v20, 0x16u);
          MEMORY[0x19A907A30](v20, -1, -1);
        }

        else
        {

          v18 = v17;
        }

        DownsampledImage = _UIStickerCreateDownsampledImage();
        v23 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

        v21 = v23;
        goto LABEL_15;
      }

LABEL_21:
      swift_once();
      goto LABEL_10;
    }
  }

  v21 = a1;
LABEL_15:
  v24 = v21;
  sub_19A6DED10(v21, a2, a3, a4);
}

uint64_t sub_19A6DE084(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v30 = a5;
  v36 = sub_19A7AA764();
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19A7AA7B4();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19A7AA8A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_19A5F5028(0, &qword_1ED8B2040);
  v34 = sub_19A7AB794();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v14 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v13);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = a1;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v14 + 32))(&v19[v18], &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v20 = &v19[(v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  aBlock[4] = sub_19A6E09D0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_65;
  v22 = _Block_copy(aBlock);

  sub_19A69E0F4(a1, a2);
  v23 = a3;

  v24 = v31;
  sub_19A7AA784();
  v40 = MEMORY[0x1E69E7CC0];
  sub_19A6E0C1C(&qword_1ED8B20A0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A612560();
  v26 = v35;
  v25 = v36;
  sub_19A7ABB54();
  v27 = v34;
  MEMORY[0x19A905BE0](0, v24, v26, v22);
  _Block_release(v22);

  (*(v39 + 8))(v26, v25);
  (*(v37 + 8))(v24, v38);
}

void sub_19A6DE4C0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a3 >> 60 != 15)
    {
      v14 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_19A612F68(a2, a3);
      sub_19A612F68(a2, a3);
      v15 = sub_19A7A8E14();
      v16 = [v14 initWithData_];

      sub_19A612F00(a2, a3);
      if (v16)
      {
        if (!a4)
        {
          v27 = sub_19A7AA894();
          sub_19A6DDE30(v16, v27, v28, 0);

          sub_19A612F00(a2, a3);
          return;
        }
      }

      sub_19A612F00(a2, a3);
    }

    if (qword_1EAFCB5F8 != -1)
    {
      swift_once();
    }

    v17 = sub_19A7A9384();
    __swift_project_value_buffer(v17, qword_1EAFCE660);

    v18 = a4;
    v19 = sub_19A7A9364();
    v20 = sub_19A7AB584();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_19A62540C(a6, a7, &v29);
      *(v21 + 12) = 2112;
      if (a4)
      {
        v24 = a4;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v26 = v25;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      *(v21 + 14) = v25;
      *v22 = v26;
      _os_log_impl(&dword_19A5EE000, v19, v20, "Error loading %s image: %@", v21, 0x16u);
      sub_19A5F2B54(v22, &unk_1EAFCD7D0);
      MEMORY[0x19A907A30](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x19A907A30](v23, -1, -1);
      MEMORY[0x19A907A30](v21, -1, -1);
    }
  }
}

uint64_t sub_19A6DE798()
{
  swift_beginAccess();
  sub_19A7A8E54();
  return swift_endAccess();
}

uint64_t sub_19A6DE7FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_19A7A8E34();
  v7 = v6;

  v3(v5, v7);
  sub_19A612F14(v5, v7);
}

uint64_t sub_19A6DE884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = a4;
  v9 = sub_19A7AA764();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_19A7AA7B4();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A5F5028(0, &qword_1ED8B2040);
  v15 = sub_19A7AB794();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a3;
  v17[4] = v22;
  v17[5] = a5;
  v17[6] = a6;
  aBlock[4] = sub_19A6E0858;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_51;
  v18 = _Block_copy(aBlock);

  v19 = a6;

  sub_19A7AA784();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19A6E0C1C(&qword_1ED8B20A0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A612560();
  sub_19A7ABB54();
  MEMORY[0x19A905BE0](0, v14, v11, v18);
  _Block_release(v18);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

void sub_19A6DEBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_19A612F68(v11, v12);
    v14 = sub_19A7A8E14();
    v15 = [v13 initWithData_];

    sub_19A612F14(v11, v12);
    if (v15)
    {
      sub_19A6DDE30(v15, a3, a4, a5);
    }
  }
}

void sub_19A6DECA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_19A6DED10(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker);
  if (v6)
  {
    v22 = MEMORY[0x1E69E7CC0];
    if (a4 && a3)
    {
      objc_allocWithZone(type metadata accessor for StickerLivePhotoConfirmationController());
      v11 = a4;
      v12 = v6;

      v13 = sub_19A7031D8(a1, a2, a3, v11);
      MEMORY[0x19A905660]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();
      *&v13[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_delegate + 8] = &off_1F0DCA678;
      swift_unknownObjectWeakAssign();
      v14 = [v13 presentationController];
      if (v14)
      {
        v15 = v14;
        [v14 setDelegate_];
      }
    }

    else
    {
      v16 = objc_allocWithZone(type metadata accessor for StickerImageConfirmationController());

      v17 = a1;
      v18 = v6;
      v11 = sub_19A65C5F0(v17, a2, a3);
      MEMORY[0x19A905660]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();
      *&v11[OBJC_IVAR____TtC10StickerKit34StickerImageConfirmationController_delegate + 8] = &off_1F0DCA690;
      swift_unknownObjectWeakAssign();
      v19 = [v11 presentationController];
      if (!v19)
      {
        goto LABEL_13;
      }

      v13 = v19;
      [v19 setDelegate_];
    }

LABEL_13:
    v20 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    sub_19A5F5028(0, &qword_1EAFCB0E0);
    v21 = sub_19A7AB234();

    [v20 setViewControllers_];

    [v20 setToolbarHidden_];
    [v6 presentViewController:v20 animated:1 completion:0];
  }
}

uint64_t sub_19A6DF0D8(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

id sub_19A6DF108(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v20[5] = a2;
  v20[6] = a3;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v8 = [v7 init];
  if (a4)
  {
    v9 = sub_19A7A8CA4();
    swift_allocObject();
    v10 = sub_19A7A8C94();
    v11 = &unk_1EAFCB0B0;
    v12 = MEMORY[0x1E69689D8];
  }

  else
  {
    v9 = sub_19A7A8B84();
    swift_allocObject();
    v10 = sub_19A7A8B74();
    v11 = &unk_1ED8B3400;
    v12 = MEMORY[0x1E6968010];
  }

  v20[3] = v9;
  v20[4] = sub_19A6E0C1C(v11, 255, v12);
  v20[0] = v10;
  __swift_project_boxed_opaque_existential_1(v20, v9);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v13 = sub_19A7A8E14();
  [v8 setObject:v13 forSetting:1];

  if (a5)
  {
    v14 = [objc_opt_self() _synchronizedDrawingFence];
    [v8 setObject:v14 forSetting:2];
    sub_19A612F14(v18, v19);
  }

  else
  {
    sub_19A612F14(v18, v19);
  }

  v15 = sub_19A7AB4B4();
  [v8 setObject:v15 forSetting:0];

  type metadata accessor for StickerPhotosControllerClientToHostAction();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v8 responder:0];

  return v16;
}

id sub_19A6DF438(uint64_t a1, void *a2, char a3, char a4)
{
  v21[5] = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);
  v8 = a2;
  v9 = [v7 init];
  if (a3)
  {
    v10 = sub_19A7A8CA4();
    swift_allocObject();
    v11 = sub_19A7A8C94();
    v12 = &unk_1EAFCB0B0;
    v13 = MEMORY[0x1E69689D8];
  }

  else
  {
    v10 = sub_19A7A8B84();
    swift_allocObject();
    v11 = sub_19A7A8B74();
    v12 = &unk_1ED8B3400;
    v13 = MEMORY[0x1E6968010];
  }

  v21[3] = v10;
  v21[4] = sub_19A6E0C1C(v12, 255, v13);
  v21[0] = v11;
  __swift_project_boxed_opaque_existential_1(v21, v10);
  type metadata accessor for StickerPhotosCreationResult();
  sub_19A6E0C1C(&qword_1EAFCE790, 255, type metadata accessor for StickerPhotosCreationResult);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v14 = sub_19A7A8E14();
  [v9 setObject:v14 forSetting:1];

  if (a4)
  {
    v15 = [objc_opt_self() _synchronizedDrawingFence];
    [v9 setObject:v15 forSetting:2];
    sub_19A612F14(v19, v20);
  }

  else
  {
    sub_19A612F14(v19, v20);
  }

  v16 = sub_19A7AB4B4();
  [v9 setObject:v16 forSetting:0];

  type metadata accessor for StickerPhotosControllerClientToHostAction();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v9 responder:0];

  return v17;
}

uint64_t sub_19A6DF7A4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_19A7AC064() & 1;
  }
}

void sub_19A6DF7FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v89 - v4;
  v5 = sub_19A7A9304();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A7AA8A4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v104 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v89 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v110 = v12;
    v111 = v6;
    v94 = v5;
    v98 = v1;
    v109 = v13;
    v116 = *(v13 + 16);
    v17 = *(v13 + 80);
    v103 = ~v17;
    v105 = v17;
    v18 = a1 + ((v17 + 32) & ~v17);
    v19 = *(v13 + 72);
    v114 = (v13 + 8);
    v115 = v19;
    v20 = MEMORY[0x1E69E7CC0];
    v107 = v16;
    v108 = v18;
    v106 = v8;
    v112 = v13 + 16;
    v116(v15, v18, v8);
    while (1)
    {
      v22 = sub_19A7AA894();
      v24 = v23;
      v25 = *v114;
      (*v114)(v15, v8);
      if (v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_19A5F61A0(0, *(v20 + 2) + 1, 1, v20);
        }

        v27 = *(v20 + 2);
        v26 = *(v20 + 3);
        if (v27 >= v26 >> 1)
        {
          v20 = sub_19A5F61A0((v26 > 1), v27 + 1, 1, v20);
        }

        *(v20 + 2) = v27 + 1;
        v21 = &v20[16 * v27];
        *(v21 + 4) = v22;
        *(v21 + 5) = v24;
        v8 = v106;
      }

      v18 += v115;
      if (!--v16)
      {
        break;
      }

      v116(v15, v18, v8);
    }

    v28 = v98;
    *&v98[OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_selection] = v20;

    sub_19A5F5028(0, &unk_1EAFCE708);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v93 = (v111 + 48);
    v92 = (v111 + 32);
    v103 &= v105 + 24;
    v101 = v103 + v9;
    v91 = (v103 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = (v109 + 32);
    v90 = (v111 + 8);
    v100 = &v119;
    *&v30 = 136315138;
    v97 = v30;
    v31 = v110;
    v32 = v116;
    v111 = ObjCClassFromMetadata;
    while (1)
    {
      v113 = v25;
      v32(v31, v108 + v16 * v115, v8);
      v33 = sub_19A7AA884();
      if ([v33 canLoadObjectOfClass_])
      {
        v34 = v104;
        v32(v104, v31, v8);
        v35 = swift_allocObject();
        *(v35 + 16) = v28;
        (*v102)(v35 + v103, v34, v8);
        v121 = sub_19A6E0768;
        v122 = v35;
        aBlock = MEMORY[0x1E69E9820];
        v118 = 1107296256;
        v119 = sub_19A6DD994;
        v120 = &block_descriptor_25;
        v36 = _Block_copy(&aBlock);
        v37 = v28;

        v38 = [v33 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v36];
        _Block_release(v36);
      }

      else
      {
        sub_19A5F5028(0, &unk_1EAFCC1A0);
        v39 = swift_getObjCClassFromMetadata();
        if ([v33 canLoadObjectOfClass_])
        {
          v40 = v104;
          v32(v104, v31, v8);
          v41 = swift_allocObject();
          *(v41 + 16) = v28;
          (*v102)(v41 + v103, v40, v8);
          v121 = sub_19A6E0674;
          v122 = v41;
          aBlock = MEMORY[0x1E69E9820];
          v118 = 1107296256;
          v119 = sub_19A6DD994;
          v120 = &block_descriptor_16;
          v42 = _Block_copy(&aBlock);
          v43 = v28;
          ObjCClassFromMetadata = v111;

          v44 = [v33 loadObjectOfClass:v39 completionHandler:v42];

          _Block_release(v42);
        }

        else
        {
          v99 = v33;
          v45 = [v33 registeredTypeIdentifiers];
          v46 = sub_19A7AB254();

          v47 = CGImageSourceCopyTypeIdentifiers();
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            aBlock = 0;
            sub_19A7AB244();

            v49 = aBlock;
            if (aBlock)
            {
              v50 = *(v46 + 16);
              v109 = v46;
              if (v50)
              {
                v51 = 0;
                v52 = (v46 + 40);
                while (1)
                {
                  if (v51 >= *(v109 + 16))
                  {
                    __break(1u);
                    return;
                  }

                  v53 = *(v52 - 1);
                  v54 = *v52;
                  aBlock = v53;
                  v118 = v54;
                  MEMORY[0x1EEE9AC00](v48);
                  *(&v89 - 2) = &aBlock;

                  if (sub_19A6DCBAC(sub_19A6E0560, (&v89 - 4), v49))
                  {
                    break;
                  }

                  ++v51;
                  v52 += 2;
                  v31 = v110;
                  ObjCClassFromMetadata = v111;
                  v32 = v116;
                  if (v50 == v51)
                  {
                    goto LABEL_23;
                  }
                }

                v67 = v95;
                sub_19A7A9314();
                v68 = v94;
                v69 = (*v93)(v67, 1, v94);
                v28 = v98;
                v8 = v106;
                v32 = v116;
                if (v69 == 1)
                {

                  sub_19A5F2B54(v67, &qword_1EAFCD820);
                  v31 = v110;
                  ObjCClassFromMetadata = v111;
                  goto LABEL_24;
                }

                (*v92)(v96, v67, v68);
                if (qword_1EAFCB5F8 != -1)
                {
                  swift_once();
                }

                v70 = sub_19A7A9384();
                __swift_project_value_buffer(v70, qword_1EAFCE660);

                v71 = sub_19A7A9364();
                v72 = sub_19A7AB5A4();

                if (os_log_type_enabled(v71, v72))
                {
                  v73 = swift_slowAlloc();
                  v74 = swift_slowAlloc();
                  aBlock = v74;
                  *v73 = v97;
                  *(v73 + 4) = sub_19A62540C(v53, v54, &aBlock);
                  _os_log_impl(&dword_19A5EE000, v71, v72, "Attempting to load data with type identifier %s as a UIImage", v73, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v74);
                  MEMORY[0x19A907A30](v74, -1, -1);
                  v75 = v73;
                  v32 = v116;
                  MEMORY[0x19A907A30](v75, -1, -1);
                }

                v76 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v77 = v104;
                v32(v104, v110, v8);
                v78 = v91;
                v79 = swift_allocObject();
                *(v79 + 16) = v76;
                (*v102)(v79 + v103, v77, v8);
                v80 = (v79 + v78);
                *v80 = v53;
                v80[1] = v54;
                v31 = v110;

                v81 = v96;
                v82 = v99;

                v32 = v116;

                (*v90)(v81, v94);
                v25 = v113;
                v113(v31, v8);

                ObjCClassFromMetadata = v111;
                goto LABEL_33;
              }

LABEL_23:

              v28 = v98;
              v8 = v106;
LABEL_24:
              v46 = v109;
            }
          }

          else
          {
          }

          if (qword_1EAFCB5F8 != -1)
          {
            swift_once();
          }

          v55 = sub_19A7A9384();
          __swift_project_value_buffer(v55, qword_1EAFCE660);

          v56 = sub_19A7A9364();
          v57 = sub_19A7AB584();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            aBlock = v59;
            *v58 = v97;
            v60 = MEMORY[0x19A9056A0](v46, MEMORY[0x1E69E6158]);
            v62 = v61;

            v63 = v60;
            v28 = v98;
            v64 = sub_19A62540C(v63, v62, &aBlock);
            v8 = v106;

            *(v58 + 4) = v64;
            ObjCClassFromMetadata = v111;
            _os_log_impl(&dword_19A5EE000, v56, v57, "Error loading item from provider with registered types %s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v59);
            v65 = v59;
            v32 = v116;
            MEMORY[0x19A907A30](v65, -1, -1);
            v66 = v58;
            v31 = v110;
            MEMORY[0x19A907A30](v66, -1, -1);
          }

          else
          {
          }
        }
      }

      v25 = v113;
      v113(v31, v8);
LABEL_33:
      if (++v16 == v107)
      {
        return;
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v84 = Strong;
    swift_beginAccess();
    v85 = swift_unknownObjectWeakLoadStrong();
    if (v85)
    {
      [v85 stickerPhotosViewControllerShouldDismiss];
      swift_unknownObjectRelease();
    }

    v86 = [v84 _hostedWindowScene];
    if (v86)
    {
      v87 = v86;
      v88 = sub_19A6DF108(0, 0, 0xE000000000000000, 0, 0);
      [v87 sendAction_];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A6E0560(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_19A7AC064() & 1;
  }
}

uint64_t sub_19A6E05B8(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_19A7AA8A4() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_19A6DE084(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_19A7AA8A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_28Tm()
{
  v1 = sub_19A7AA8A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A6E0954(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(sub_19A7AA8A4() - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

void sub_19A6E09D0()
{
  v1 = *(sub_19A7AA8A4() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_19A6DE4C0(v3, v4, v5, v6, v0 + v2, v8, v9);
}

void sub_19A6E0A68()
{
  v1 = OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_selection;
  if (*(*(v0 + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_selection) + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker);
    if (v2)
    {
      v3 = v2;

      v4 = sub_19A7AB234();

      [v3 deselectAssetsWithIdentifiers_];
    }

    *(v0 + v1) = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_19A6E0B34()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong stickerPhotosViewControllerShouldDismiss];
      swift_unknownObjectRelease();
    }

    v3 = [v1 _hostedWindowScene];
    if (v3)
    {
      v4 = v3;
      v5 = sub_19A6DF108(0, 0, 0xE000000000000000, 0, 0);
      [v4 sendAction_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19A6E0C1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A6E0C9C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCE7C0);
  __swift_project_value_buffer(v0, qword_1EAFCE7C0);
  return sub_19A7A9374();
}

void sub_19A6E0D40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_19A6E0DB8();
}

void sub_19A6E0DB8()
{
  v1 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = (v0 + OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery);
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_19A7A8F64();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_19A6240BC(v6, v3 + *(v1 + 20));
  *v3 = v9;
  v3[1] = v10;

  v12 = sub_19A6E2024(0, v3, 0, 0);
  sub_19A6E23C4(v3);
  sub_19A5F2B54(v6, &qword_1EAFCD800);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v13 = v14;
  [v14 sendAction_];
}

uint64_t sub_19A6E0FC0()
{
  v1 = (v0 + OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_19A6E1018(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_19A6E0DB8();
}

void (*sub_19A6E107C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_19A6E10E0;
}

void sub_19A6E10E0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_19A6E0DB8();
  }
}

void sub_19A6E1114(uint64_t a1)
{
  v2 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_19A6240BC(v8, v5 + *(v3 + 28));
  *v5 = 0;
  v5[1] = 0;
  v11 = sub_19A6E2024(0, v5, 0, 0);
  sub_19A6E23C4(v5);
  sub_19A5F2B54(v8, &qword_1EAFCD800);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v12 = v14;
  [v14 sendAction_];
}

void sub_19A6E1314(uint64_t a1, uint64_t a2)
{
  v2 = sub_19A6E2420(1, a1, a2, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  [v3 sendAction_];
}

uint64_t sub_19A6E14C0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_19A6E1520(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___STKEmojiGenerationRemoteController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_19A6267A8;
}

uint64_t sub_19A6E15B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  sub_19A7AB354();
  *(v6 + 64) = sub_19A7AB344();
  v8 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A6E1658, v8, v7);
}

uint64_t sub_19A6E1658()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong emojiGenerationRemoteController:*(v0 + 48) didGenerateEmoji:*(v0 + 56) shouldInsert:*(v0 + 72)];
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19A6E1718()
{
  v1 = sub_19A7ABDC4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6E17D4, 0, 0);
}

uint64_t sub_19A6E17D4()
{
  sub_19A7AC0F4();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_19A6E18A0;

  return sub_19A776184(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_19A6E18A0()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 48) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_19A6E1A10;
  }

  else
  {
    v5 = sub_19A6E1A2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A6E1A2C()
{
  v1 = sub_19A7AAFE4();
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:v1 object:0 userInfo:0];

  v3 = *(v0 + 8);

  return v3();
}

void *sub_19A6E1AFC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result emojiGenerationRemoteControllerDidCancel_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_19A6E1B64(void *a1)
{
  result = [a1 _eventDeferringComponent];
  if (result)
  {
    [result setMaintainHostFirstResponderWhenClientWantsKeyboard_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id EmojiGenerationRemoteController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiGenerationRemoteController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery];
  *v6 = 0;
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for EmojiGenerationRemoteController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id EmojiGenerationRemoteController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiGenerationRemoteController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery];
  *v3 = 0;
  *(v3 + 1) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EmojiGenerationRemoteController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_19A6E1F58()
{

  v1 = v0 + OBJC_IVAR___STKEmojiGenerationRemoteController_delegate;

  return sub_19A601244(v1);
}

id EmojiGenerationRemoteController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiGenerationRemoteController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_19A6E2024(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A6E2E4C(a2, v9);
  v10 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  if (a3)
  {
    v11 = sub_19A7A8CA4();
    swift_allocObject();
    v12 = sub_19A7A8C94();
    v13 = &unk_1EAFCB0B0;
    v14 = MEMORY[0x1E69689D8];
  }

  else
  {
    v11 = sub_19A7A8B84();
    swift_allocObject();
    v12 = sub_19A7A8B74();
    v13 = &unk_1ED8B3400;
    v14 = MEMORY[0x1E6968010];
  }

  v15 = sub_19A6E2EB0(v13, v14);
  v24[3] = v11;
  v24[4] = v15;
  v24[0] = v12;
  __swift_project_boxed_opaque_existential_1(v24, v11);
  sub_19A6E2EB0(&unk_1EAFCAB78, type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery);
  sub_19A7A9644();
  sub_19A6E23C4(v9);
  v16 = v23[1];
  v17 = v23[2];
  __swift_destroy_boxed_opaque_existential_1(v24);
  v18 = sub_19A7A8E14();
  [v10 setObject:v18 forSetting:1];

  if (a4)
  {
    v19 = [objc_opt_self() _synchronizedDrawingFence];
    [v10 setObject:v19 forSetting:2];
    sub_19A612F14(v16, v17);
  }

  else
  {
    sub_19A612F14(v16, v17);
  }

  v20 = sub_19A7AB4B4();
  [v10 setObject:v20 forSetting:0];

  type metadata accessor for EmojiGenerationHostToClientAction();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v10 responder:0];

  return v21;
}

uint64_t sub_19A6E23C4(uint64_t a1)
{
  v2 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_19A6E2420(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v20[5] = a2;
  v20[6] = a3;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v8 = [v7 init];
  if (a4)
  {
    v9 = sub_19A7A8CA4();
    swift_allocObject();
    v10 = sub_19A7A8C94();
    v11 = &unk_1EAFCB0B0;
    v12 = MEMORY[0x1E69689D8];
  }

  else
  {
    v9 = sub_19A7A8B84();
    swift_allocObject();
    v10 = sub_19A7A8B74();
    v11 = &unk_1ED8B3400;
    v12 = MEMORY[0x1E6968010];
  }

  v20[3] = v9;
  v20[4] = sub_19A6E2EB0(v11, v12);
  v20[0] = v10;
  __swift_project_boxed_opaque_existential_1(v20, v9);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v13 = sub_19A7A8E14();
  [v8 setObject:v13 forSetting:1];

  if (a5)
  {
    v14 = [objc_opt_self() _synchronizedDrawingFence];
    [v8 setObject:v14 forSetting:2];
    sub_19A612F14(v18, v19);
  }

  else
  {
    sub_19A612F14(v18, v19);
  }

  v15 = sub_19A7AB4B4();
  [v8 setObject:v15 forSetting:0];

  type metadata accessor for EmojiGenerationHostToClientAction();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v8 responder:0];

  return v16;
}

uint64_t type metadata accessor for EmojiGenerationRemoteController()
{
  result = qword_1EAFCABB0;
  if (!qword_1EAFCABB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A6E29F0(void *a1, uint64_t a2, NSObject *a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  if (a1)
  {
    v12 = sub_19A7AB394();
    v13 = *(*(v12 - 8) + 56);
    v25 = a3;
    v13(v11, 1, 1, v12);
    sub_19A7AB354();
    v14 = a1;
    v15 = v4;
    v16 = sub_19A7AB344();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v15;
    *(v17 + 40) = v14;
    *(v17 + 48) = a4 & 1;
    sub_19A681CFC(0, 0, v11, &unk_19A7BDEA8, v17);

    sub_19A69DBE0(a2, v25);
    v13(v11, 1, 1, v12);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_19A755944(0, 0, v11, &unk_19A7BDEB8, v19);

    sub_19A5F2B54(v11, &unk_1EAFCD690);
  }

  else
  {
    if (qword_1EAFCB600 != -1)
    {
      swift_once();
    }

    v20 = sub_19A7A9384();
    __swift_project_value_buffer(v20, qword_1EAFCE7C0);
    v25 = sub_19A7A9364();
    v21 = sub_19A7AB584();
    if (os_log_type_enabled(v25, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_19A5EE000, v25, v21, "No sticker when creating emoji in remote controller", v22, 2u);
      MEMORY[0x19A907A30](v22, -1, -1);
    }

    v23 = v25;
  }
}

uint64_t sub_19A6E2CD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60F860;

  return sub_19A6E15B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A6E2DA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A60FB98;

  return sub_19A6E1718();
}

uint64_t sub_19A6E2E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A6E2EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A6E2EF8(char a1)
{
  v2 = v1;
  type metadata accessor for StickerPhotosCreationResult();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&unk_1EAFCE8F8, type metadata accessor for StickerPhotosCreationResult);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E3284(char a1)
{
  v2 = v1;
  type metadata accessor for CategoryChange();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&qword_1EAFCB320, type metadata accessor for CategoryChange);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E3618(char a1)
{
  v2 = v1;
  type metadata accessor for EmojiSearchResult();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&qword_1EAFCE8E0, type metadata accessor for EmojiSearchResult);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E39A4(char a1)
{
  v2 = v1;
  type metadata accessor for StickerSearchResult();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&qword_1EAFCE8E8, type metadata accessor for StickerSearchResult);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E3D30(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAAF8(&qword_1EAFCA5B8, &qword_1EAFCE8F0);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E40CC(char a1)
{
  v2 = v1;
  type metadata accessor for StickerSearchQuery();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&unk_1EAFCB010, type metadata accessor for StickerSearchQuery);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E4458(char a1)
{
  v2 = v1;
  type metadata accessor for StickerSearchConfiguration();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&qword_1EAFCB008, type metadata accessor for StickerSearchConfiguration);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E47E4(char a1)
{
  v2 = v1;
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAAA4();
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E4B38(char a1)
{
  v2 = v1;
  type metadata accessor for EmojiGenerationAddResult();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&unk_1EAFCAC70, type metadata accessor for EmojiGenerationAddResult);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}