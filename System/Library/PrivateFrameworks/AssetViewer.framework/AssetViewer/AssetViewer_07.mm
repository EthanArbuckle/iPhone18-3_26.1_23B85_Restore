void sub_2412C8760()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_241287420();
    v3 = v2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

    if (v3)
    {
LABEL_22:

      return;
    }

    v4 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v5 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v6)
      {
        v7 = v6;
        sub_24135292C();
        sub_2413524EC();

        sub_24135243C();
        swift_dynamicCastClassUnconditional();
        sub_2413523FC();
        swift_unknownObjectRelease();
        sub_24129225C();
        sub_24123E374(v8);
        v9 = *&v1[v4];
        if (v9)
        {
          v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_feedbackGenerator);
          if (v10)
          {
            v11 = [v10 snapAwayFromScaleFeedbackGenerator];
            if (!v11)
            {
LABEL_31:
              __break(1u);
              return;
            }

            [v11 fire];
            swift_unknownObjectRelease();
          }

          sub_24130F64C();
          v12 = *&v1[v4];
          if (v12)
          {
            v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
            if (v13 >> 62)
            {
              goto LABEL_26;
            }

            for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
            {

              if (!i)
              {
                break;
              }

              v15 = 0;
              while (1)
              {
                if ((v13 & 0xC000000000000001) != 0)
                {
                  v16 = MEMORY[0x245CE29C0](v15, v13);
                }

                else
                {
                  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_25;
                  }

                  v16 = *(v13 + 8 * v15 + 32);
                }

                v17 = v16;
                v18 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  break;
                }

                sub_24133D85C(*&v16[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8]);

                ++v15;
                if (v18 == i)
                {
                  goto LABEL_21;
                }
              }

              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              ;
            }

LABEL_21:

            goto LABEL_22;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_2412C89B4(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v49 = a4;
  v50 = a3;
  v7 = sub_241351DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538AA0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v14 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v42[-v16];
  MEMORY[0x28223BE20](v18);
  v21 = &v42[-v20];
  if (*(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) != 1)
  {
    v29 = v49;
    v28 = v50;

    sub_2412C97AC(a1, a2, v28, v29);
    return;
  }

  v44 = v10;
  v45 = a2;
  v49.n128_u64[0] = v8;
  v46 = a1;
  v47 = v19;
  v22 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
  swift_beginAccess();
  sub_241246210(v4 + v22, v21, &qword_27E538940);
  v48 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v23 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v23)
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v25 = *(v11 + 48);
  sub_241246210(v21, v13, &qword_27E538940);
  sub_241246210(v23 + v24, &v13[v25], &qword_27E538940);
  v26 = v49.n128_u64[0];
  v27 = *(v49.n128_u64[0] + 48);
  if (v27(v13, 1, v7) == 1)
  {
    sub_241246278(v21, &qword_27E538940);
    if (v27(&v13[v25], 1, v7) == 1)
    {
      sub_241246278(v13, &qword_27E538940);
      return;
    }

    goto LABEL_11;
  }

  sub_241246210(v13, v17, &qword_27E538940);
  if (v27(&v13[v25], 1, v7) == 1)
  {
    sub_241246278(v21, &qword_27E538940);
    (*(v26 + 8))(v17, v7);
LABEL_11:
    sub_241246278(v13, &qword_27E538AA0);
    v30 = v48;
    goto LABEL_12;
  }

  v40 = v44;
  (*(v26 + 32))(v44, &v13[v25], v7);
  sub_2412CB368();
  v43 = sub_241353BCC();
  v41 = *(v26 + 8);
  v41(v40, v7);
  sub_241246278(v21, &qword_27E538940);
  v41(v17, v7);
  sub_241246278(v13, &qword_27E538940);
  v30 = v48;
  if (v43)
  {
    return;
  }

LABEL_12:
  v31 = *(v4 + v30);
  if (!v31)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v33 = v31 + v32;
  v34 = v47;
  sub_241246210(v33, v47, &qword_27E538940);
  v35 = v27(v34, 1, v7);
  sub_241246278(v34, &qword_27E538940);
  if (v35 != 1)
  {
    v36 = *(v4 + v30);
    if (v36)
    {
      v37 = *(v36 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
      v38 = v46;
      if (v37)
      {
        v39 = v37;
        sub_2412C948C(v39, v38, v45, v50);

        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_2412C8F00(uint64_t a1, uint64_t a2, __n128 a3)
{
  v50 = a3;
  v6 = sub_241351DEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538AA0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v42[-v15];
  MEMORY[0x28223BE20](v17);
  v20 = &v42[-v19];
  if (*(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_didPlaceFirstEntityInARWorld) != 1)
  {
    v27 = *(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v27)
    {
      v28 = *(v27 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
      if (v28)
      {
        v49 = v28;
        sub_2412C9CCC(v49, a1, a2, v50);
        v29 = v49;

        return;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v44 = v9;
  v45 = a2;
  v49 = v7;
  v46 = a1;
  v47 = v18;
  v21 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastPlacedAnchoringComponentTarget;
  swift_beginAccess();
  sub_241246210(v3 + v21, v20, &qword_27E538940);
  v48 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v22 = *(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v22)
  {
    __break(1u);
    goto LABEL_22;
  }

  v23 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v24 = *(v10 + 48);
  sub_241246210(v20, v12, &qword_27E538940);
  sub_241246210(v22 + v23, &v12[v24], &qword_27E538940);
  v25 = v49;
  v26 = *(v49 + 6);
  if (v26(v12, 1, v6) == 1)
  {
    sub_241246278(v20, &qword_27E538940);
    if (v26(&v12[v24], 1, v6) == 1)
    {
      sub_241246278(v12, &qword_27E538940);
      return;
    }

    goto LABEL_13;
  }

  sub_241246210(v12, v16, &qword_27E538940);
  if (v26(&v12[v24], 1, v6) == 1)
  {
    sub_241246278(v20, &qword_27E538940);
    v25[1](v16, v6);
LABEL_13:
    sub_241246278(v12, &qword_27E538AA0);
    v30 = v48;
    goto LABEL_14;
  }

  v40 = v44;
  (v25[4])(v44, &v12[v24], v6);
  sub_2412CB368();
  v43 = sub_241353BCC();
  v41 = v25[1];
  v41(v40, v6);
  sub_241246278(v20, &qword_27E538940);
  v41(v16, v6);
  sub_241246278(v12, &qword_27E538940);
  v30 = v48;
  if (v43)
  {
    return;
  }

LABEL_14:
  v31 = *(v3 + v30);
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  swift_beginAccess();
  v33 = v31 + v32;
  v34 = v47;
  sub_241246210(v33, v47, &qword_27E538940);
  v35 = v26(v34, 1, v6);
  sub_241246278(v34, &qword_27E538940);
  if (v35 != 1)
  {
    v36 = *(v3 + v30);
    if (v36)
    {
      v37 = *(v36 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
      v38 = v46;
      if (v37)
      {
        v39 = v37;
        sub_2412C948C(v39, v38, v45, v50);

        return;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_2412C948C(char *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v28 = a4;
  v8 = sub_241352DDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v4[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager);
    swift_beginAccess();
    *(v13 + 40) = MEMORY[0x277D84F98];

    v14 = *(v13 + 24);
    if (v14)
    {

      v14(0);
      sub_2412186FC(v14);
    }

    v15 = *&a1[OBJC_IVAR____TtC11AssetViewer16EntityController_entity];
    sub_241352C5C();
    sub_2413519BC();
    sub_241352E2C();
    type metadata accessor for RESRT(0);
    sub_241352DCC();
    (*(v9 + 8))(v11, v8);
    v27 = v31;
    v29 = v33;
    v30 = v32;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v4;
    *(v16 + 32) = v28;
    *(v16 + 48) = a2;
    *(v16 + 56) = a3;
    v17 = swift_allocObject();
    v19 = v29;
    v18 = v30;
    *(v17 + 16) = v29;
    *(v17 + 32) = v18;
    *(v17 + 48) = v19;
    *(v17 + 64) = v18;
    *(v17 + 80) = v15;
    *(v17 + 96) = v27;
    *(v17 + 112) = v18;
    *(v17 + 128) = v19;
    *(v17 + 144) = 0u;
    *(v17 + 160) = v18;
    *(v17 + 176) = v19;
    *(v17 + 192) = 0;
    *(v17 + 200) = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    v21 = v29;
    v22 = v30;
    *(v20 + 32) = 0u;
    *(v20 + 48) = v22;
    *(v20 + 64) = v21;
    *(v20 + 80) = sub_2412CB3C0;
    *(v20 + 88) = v16;
    swift_retain_n();
    v23 = a1;
    v24 = v4;
    sub_24124AD38(a2);

    v25 = sub_2412FCD6C(sub_24124AD48, v17, sub_24124AD4C, v20, 0.35);

    v26 = &v23[OBJC_IVAR____TtC11AssetViewer16EntityController_animationID];
    *v26 = v25;
    v26[8] = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_2412C97AC(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  v6 = v4;
  v49 = a2;
  v48 = a1;
  v54 = a4;
  v55 = a3;
  v40 = sub_241352B6C();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v9 = *(v6 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v9)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v10 = &OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
  v11 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v11 >> 62)
  {
LABEL_28:
    if (!sub_2413544EC())
    {
      return;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {

    MEMORY[0x245CE29C0](0, v11);
    swift_unknownObjectRelease();
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_32:
    v10 = sub_2413544EC();
    goto LABEL_11;
  }

  *v12.i64 = simd_quaternion(v54);
  if (qword_27E537C30 != -1)
  {
    v54 = v12;
    swift_once();
  }

  REComposeMatrix();
  v47 = v13;
  v46 = v14;
  v45 = v15;
  v44 = v16;
  v17 = *(v6 + v50);
  if (!v17)
  {
    goto LABEL_36;
  }

  v5 = *(v17 + *v10);
  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

  if (v10)
  {
    v18 = 0;
    v43 = v5 & 0xC000000000000001;
    v42 = v5 & 0xFFFFFFFFFFFFFF8;
    v38 = (v7 + 8);
    v41 = v10;
    while (1)
    {
      if (v43)
      {
        v29 = MEMORY[0x245CE29C0](v18, v5);
      }

      else
      {
        if (v18 >= *(v42 + 16))
        {
          goto LABEL_27;
        }

        v29 = *(v5 + 8 * v18 + 32);
      }

      v30 = v29;
      v31 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_241352E1C();
      v53 = v33;
      v54 = v32;
      v55 = v34;
      v11 = sub_241352C5C();
      sub_2413519BC();
      v36 = *(v6 + v50);
      if (!v36)
      {
        break;
      }

      v37 = *(v36 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v37)
      {
        goto LABEL_34;
      }

      v52 = v35;
      if (*(v37 + qword_27E53A1A0))
      {

        v19 = v6;
        v20 = v39;
        sub_2413518AC();
        sub_241352B5C();

        v21 = v20;
        v6 = v19;
        (*v38)(v21, v40);
      }

      else
      {
        sub_2413518BC();
      }

      *v22.i64 = simd_matrix4x4(v53);
      v56 = v22;
      v57 = v23;
      v58 = v24;
      v59 = v25;
      sub_24135410C();
      sub_241354A8C();
      sub_241354A9C();
      v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, v56.f32[0]), v46, *v56.f32, 1), v45, v56, 2), v44, v56, 3);
      v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, v57.f32[0]), v46, *v57.f32, 1), v45, v57, 2), v44, v57, 3);
      v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, v58.f32[0]), v46, *v58.f32, 1), v45, v58, 2), v44, v58, 3);
      v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, v59.f32[0]), v46, *v59.f32, 1), v45, v59, 2), v44, v59, 3);
      *v26.f32 = simd_float4x4.scale.getter(v53, v52);
      v54 = v26;
      v61.columns[0] = v53;
      v61.columns[1] = v52;
      v61.columns[2] = v51;
      v61.columns[3] = v55;
      *&v27 = simd_quaternion(v61);
      v28 = v55;
      v28.i32[3] = 0;
      v60[0] = v54;
      v60[1] = v27;
      v60[2] = v28;
      v7 = v6;
      sub_24134CC40(v30, v60, v48, v49);

      ++v18;
      v10 = v41;
      if (v31 == v41)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_24:
}

void sub_2412C9CCC(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4)
{
  v6 = v4;
  v85 = a2;
  v86 = a3;
  v92 = a4;
  v78 = sub_241352B6C();
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v10 = *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v10)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v11 = &OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
  v12 = *(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v12 >> 62)
  {
LABEL_43:
    if (!sub_2413544EC())
    {
      return;
    }
  }

  else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {

    v74 = MEMORY[0x245CE29C0](0, v12);

    v13 = v74;
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v13 = *(v12 + 32);
  }

  v74 = v13;
  v14 = v13[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48];
  v84 = v6;
  if (v14)
  {
    v15 = *(v6 + v87);
    if (!v15)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v16)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v17 = v16;
    sub_24135292C();
    v18 = sub_2413524BC();

    if (!v18)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    sub_241352C5C();
    sub_2413519BC();
    v91 = v19;

    v20 = *(v6 + v87);
    if (!v20)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v21 = *(v20 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v21)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v22 = v21;
    sub_24135292C();
    v23 = sub_2413524BC();

    if (!v23)
    {
LABEL_61:
      __break(1u);
      return;
    }

    sub_2413519BC();
    v90 = v24;

    v25.i64[0] = __PAIR64__(v92.u32[1], v91.u32[0]);
    v25.i64[1] = v90.u32[2];
    v26 = (a1 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState);
    v12 = *(a1 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 16);
    v6 = v84;
    if (v12 != 4)
    {
      v91 = v25;
      v90.i64[0] = v8;
      a1 = v26[2].i64[0];
      v27 = v26[4].i64[1];
      v88 = v26[3];
      v89.i64[0] = v27;
      sub_2412CB644(v12);
      if (sub_241257B70(v88))
      {
        static Transform.lookTransform(at:from:upVector:)();
        *v30.i64 = sub_2412AC428(v29, v28);
        v83 = v30;
        v82 = v31;
        v81 = v32;
        v80 = v33;
        sub_24124B034(v12);
        v8 = v90.i64[0];
        v11 = &OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
        goto LABEL_21;
      }

      sub_24124B034(v12);
      v8 = v90.i64[0];
      v11 = &OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
    }
  }

  else
  {
    v34 = *&v13[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 16];
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    *v38.i8 = vadd_f32(*v92.f32, *v37.f32);
    *&v38.i32[2] = v92.f32[2] + v37.f32[2];
    v38.i32[3] = 0;
    if (qword_27E537C40 != -1)
    {
      v91 = v38;
      swift_once();
    }
  }

  static Transform.lookTransform(at:from:upVector:)();
  *v41.i64 = sub_2412AC428(v40, v39);
  v83 = v41;
  v82 = v42;
  v81 = v43;
  v80 = v44;
LABEL_21:
  v45 = *(v6 + v87);
  if (!v45)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v5 = *(v45 + *v11);
  if (v5 >> 62)
  {
LABEL_47:
    v46 = sub_2413544EC();
    if (v46)
    {
LABEL_24:
      v79 = v5 & 0xC000000000000001;
      v75 = v5 & 0xFFFFFFFFFFFFFF8;
      v76 = (v8 + 8);

      v11 = 0;
      v8 = MEMORY[0x277CDB1B8];
      while (1)
      {
        if (v79)
        {
          v60 = MEMORY[0x245CE29C0](v11, v5);
        }

        else
        {
          if (v11 >= *(v75 + 16))
          {
            goto LABEL_42;
          }

          v60 = *(v5 + 8 * v11 + 32);
        }

        v61 = v60;
        v52 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        sub_241352E1C();
        v90 = v63;
        v91 = v62;
        v92 = v64;
        v65 = OBJC_IVAR____TtC11AssetViewer16EntityController_entity;
        sub_241352C5C();
        sub_2413519BC();
        if (v61[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48])
        {
          v67 = v92;
          v67.i32[0] = v66.i32[0];
        }

        else
        {
          v89 = v66;
          sub_2413519BC();
          v88 = v68;
          *v69.f32 = sub_24124674C();
          v70 = vaddq_f32(v92, v69);
          *v67.f32 = vadd_f32(__PAIR64__(v88.u32[1], v89.u32[0]), *v69.f32);
          v67.i64[1] = v70.u32[2];
        }

        v71 = *(v6 + v87);
        if (!v71)
        {
          break;
        }

        v72 = *(v71 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v72)
        {
          goto LABEL_53;
        }

        v92 = v67;
        a1 = *&v61[v65];
        if (*(v72 + qword_27E53A1A0))
        {

          v89.i64[0] = v11 + 1;
          v47 = v8;
          v48 = v5;
          v49 = v46;
          v50 = v77;
          sub_2413518AC();
          sub_241352B5C();

          v51 = v50;
          v46 = v49;
          v5 = v48;
          v8 = v47;
          v52 = v89.i64[0];
          (*v76)(v51, v78);
        }

        else
        {
          sub_2413518BC();
        }

        *v53.i64 = sub_2412AC428(*v92.i64, v90);
        v89 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, v54.f32[0]), v82, *v54.f32, 1), v81, v54, 2), v80, v54, 3);
        v88 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, v55.f32[0]), v82, *v55.f32, 1), v81, v55, 2), v80, v55, 3);
        v91 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, v53.f32[0]), v82, *v53.f32, 1), v81, v53, 2), v80, v53, 3);
        v92 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, v56.f32[0]), v82, *v56.f32, 1), v81, v56, 2), v80, v56, 3);
        *v57.f32 = simd_float4x4.scale.getter(v91, v89);
        v90 = v57;
        v95.columns[0] = v91;
        v95.columns[3] = v92;
        v95.columns[2] = v88;
        v95.columns[1] = v89;
        *v58.i64 = simd_quaternion(v95);
        v91 = v58;
        v59 = v92;
        v59.i32[3] = 0;
        v93[0] = v90;
        v93[1] = v58;
        v93[2] = v59;
        v6 = v84;
        sub_24134CC40(v61, v93, v85, v86);
        v12 = *&v61[OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator];

        *(v12 + 96) = v91;

        ++v11;
        if (v52 == v46)
        {

          return;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  v46 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
    goto LABEL_24;
  }

LABEL_48:
  v73 = v74;
}

void sub_2412CA568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v53 = a5;
  v9 = sub_241352DDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_241352B6C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = *(v17 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v18)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v48 = a3;
  v49 = a4;
  v50 = a1;
  v19 = *(a1 + OBJC_IVAR____TtC11AssetViewer16EntityController_entity);
  if (*(v18 + qword_27E53A1A0))
  {
    sub_241352C5C();

    sub_2413518AC();
    sub_241352B5C();

    (*(v14 + 8))(v16, v13);
  }

  else
  {
    sub_241352C5C();
    sub_2413518BC();
  }

  sub_241352C5C();
  v20 = sub_2413519AC();
  *(v21 + 16) = xmmword_241365D00;
  v20(v54, 0);
  v22 = sub_2413519AC();
  v23[2] = v53;
  v22(v54, 0);
  v24 = sub_2413519AC();
  *v25 = 0u;
  v24(v54, 0);
  sub_2413519BC();
  sub_241352E2C();
  type metadata accessor for RESRT(0);
  v27 = v26;
  sub_241352DCC();
  v28 = *(v10 + 8);
  v28(v12, v9);
  v52 = v56;
  v53 = v55;
  v29 = v50;
  v30 = *(v50 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode + 16);
  v51 = *(v50 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode);
  v46 = *(v50 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode + 32);
  v47 = v30;
  v55.n128_u64[1] = v27;
  v31 = swift_allocObject();
  v54[0] = v31;
  v32 = v46;
  v33 = v47;
  v31[1] = v51;
  v31[2] = v33;
  v31[3] = v32;
  sub_241352DBC();
  __swift_destroy_boxed_opaque_existential_0(v54);
  sub_241352DFC();
  v51 = v34;
  v28(v12, v9);
  v35 = swift_allocObject();
  v37 = v52;
  v36 = v53;
  *(v35 + 16) = v52;
  *(v35 + 32) = v36;
  *(v35 + 48) = v37;
  *(v35 + 64) = v36;
  *(v35 + 80) = v19;
  *(v35 + 96) = 0u;
  *(v35 + 112) = v36;
  v38 = v51;
  *(v35 + 128) = v37;
  *(v35 + 144) = v38;
  *(v35 + 160) = v36;
  *(v35 + 176) = v37;
  *(v35 + 192) = 0;
  *(v35 + 200) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = v19;
  v40 = v52;
  v41 = v53;
  *(v39 + 32) = v51;
  *(v39 + 48) = v41;
  *(v39 + 64) = v40;
  v43 = v48;
  v42 = v49;
  *(v39 + 80) = v48;
  *(v39 + 88) = v42;
  swift_retain_n();
  sub_24124AD38(v43);
  v44 = sub_2412FCD6C(sub_24124B1EC, v35, sub_24124B1F8, v39, 0.35);

  v45 = v29 + OBJC_IVAR____TtC11AssetViewer16EntityController_animationID;
  *v45 = v44;
  *(v45 + 8) = 0;
}

BOOL sub_2412CAA20(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_2413545DC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_2412CAB18@<X0>(uint64_t a1@<X8>)
{
  *&v69 = a1;
  v1 = sub_24135164C();
  *&v70 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24135122C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultPlanePosition];
  v9 = sub_241353C0C();
  v11 = v10;

  *&v74 = v9;
  *(&v74 + 1) = v11;
  v73[0] = 44;
  v73[1] = 0xE100000000000000;
  sub_24125D5A0();
  v12 = sub_24135438C();

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  *&v72 = v5;
  v13 = sub_241352FFC();
  v14 = __swift_project_value_buffer(v13, qword_27E53A538);

  *&v71 = v14;
  v15 = sub_241352FDC();
  v16 = sub_2413540DC();

  v17 = os_log_type_enabled(v15, v16);
  v67 = v3;
  v68 = v1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v74 = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x245CE21F0](v12, MEMORY[0x277D837D0]);
    v22 = sub_2412DDC2C(v20, v21, &v74);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_241215000, v15, v16, "raycastResultFromUserDefaults: Has value: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245CE4870](v19, -1, -1);
    MEMORY[0x245CE4870](v18, -1, -1);
  }

  if (v12[2] == 3)
  {
    v23 = v12[5];
    *&v74 = v12[4];
    *(&v74 + 1) = v23;

    sub_24135120C();
    v24 = sub_24135439C();
    v26 = v25;
    *&v72 = *(v72 + 8);
    (v72)(v7, v4);

    LODWORD(v74) = 0;
    v27 = sub_2412CAA20(v24, v26);

    if (v12[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v29 = *&v74;
      v30 = v12[7];
      *&v74 = v12[6];
      *(&v74 + 1) = v30;

      sub_24135120C();
      v31 = sub_24135439C();
      v33 = v32;
      (v72)(v7, v4);

      LODWORD(v74) = 0;
      v34 = sub_2412CAA20(v31, v33);

      if (v12[2] >= 3uLL)
      {
        LODWORD(v35) = v74;
        if (v27)
        {
          *&v36 = v29;
        }

        else
        {
          *&v36 = 0.0;
        }

        v65 = v36;
        if (!v34)
        {
          *&v35 = 0.0;
        }

        v66 = v35;
        v37 = v12[8];
        v38 = v12[9];

        *&v74 = v37;
        *(&v74 + 1) = v38;
        sub_24135120C();
        v39 = sub_24135439C();
        v41 = v40;
        (v72)(v7, v4);

        LODWORD(v74) = 0;
        LOBYTE(v39) = sub_2412CAA20(v39, v41);

        v42 = *&v74;
        if ((v39 & 1) == 0)
        {
          v42 = 0.0;
        }

        *&v43 = __PAIR64__(v66, v65);
        *(&v43 + 1) = LODWORD(v42);
        v72 = v43;
        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

  v72 = xmmword_241368DB0;
LABEL_17:
  v44 = sub_241352FDC();
  v45 = sub_2413540DC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v73[0] = v47;
    *v46 = 136315138;
    v74 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
    sub_24124A868();
    v48 = sub_2413549BC();
    v50 = sub_2412DDC2C(v48, v49, v73);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_241215000, v44, v45, "raycastResultFromUserDefaults: Using position: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245CE4870](v47, -1, -1);
    MEMORY[0x245CE4870](v46, -1, -1);

    v51 = v72;
    v53 = v67;
    v52 = v68;
    v54 = v70;
    v55 = v69;
  }

  else
  {

    v53 = v67;
    v52 = v68;
    v54 = v70;
    v55 = v69;
    v51 = v72;
  }

  *&v56 = sub_2412FEE00(v51);
  v71 = v57;
  v72 = v56;
  v69 = v59;
  v70 = v58;
  sub_24135163C();
  v60 = objc_allocWithZone(MEMORY[0x277CE5318]);
  v61 = sub_24135160C();
  v62 = [v60 initWithIdentifier:v61 transform:0 alignment:{*&v72, *&v71, *&v70, *&v69}];

  result = (*(v54 + 8))(v53, v52);
  *v55 = v62;
  v63 = v71;
  *(v55 + 16) = v72;
  *(v55 + 32) = v63;
  v64 = v69;
  *(v55 + 48) = v70;
  *(v55 + 64) = v64;
  return result;
}

_BYTE *sub_2412CB214@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2412CB2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2412CB368()
{
  result = qword_27E538AA8;
  if (!qword_27E538AA8)
  {
    sub_241351DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538AA8);
  }

  return result;
}

double simd_quaternion(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_241364640);
  if ((v1.f32[2] + vaddv_f32(*v1.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, xmmword_241364640);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmulq_f32(v37, xmmword_241365ED0);
    v39 = vmlaq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), xmmword_241365EE0, v37);
    *&result = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL).u64[0];
  }

  else
  {
    v2 = vrsqrte_f32(1065353216);
    v3 = vmul_f32(v2, vrsqrts_f32(1065353216, vmul_f32(v2, v2)));
    LODWORD(v4) = vmul_f32(v3, vrsqrts_f32(1065353216, vmul_f32(v3, v3))).u32[0];
    v6 = vmulq_f32(a1, a1);
    v5 = vaddv_f32(*v6.f32);
    v6.i32[1] = 0;
    *&v7 = v6.f32[2] + v5;
    v8 = vrsqrte_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v5));
    v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
    v10 = vaddq_f32(vmulq_n_f32(xmmword_241364640, v4), vmulq_n_f32(a1, vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]));
    v11 = vmulq_f32(v10, v10);
    v12 = v11.f32[2] + vaddv_f32(*v11.f32);
    if (v12 <= 1.4211e-14)
    {
      *&result = vmulq_n_f32(xmmword_241365E80, v4).u64[0];
    }

    else
    {
      v13 = v12;
      v14 = vrsqrte_f32(LODWORD(v12));
      v15 = vmul_f32(v14, vrsqrts_f32(LODWORD(v13), vmul_f32(v14, v14)));
      v16 = vmulq_n_f32(v10, vmul_f32(v15, vrsqrts_f32(LODWORD(v13), vmul_f32(v15, v15))).f32[0]);
      v17 = vaddq_f32(v16, xmmword_241364640);
      v18 = vmulq_f32(v17, v17);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v21 = vmulq_f32(v20, xmmword_241365ED0);
      v22 = vmlaq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), xmmword_241365EE0, v20);
      v23 = vmulq_f32(v20, xmmword_241364640);
      v24 = vaddq_f32(a1, v16);
      v25 = vmulq_f32(v24, v24);
      v6.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v6.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v6.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v6.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v16)), v26, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v16, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      *&result = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return result;
}

id sub_2412CB644(id result)
{
  if (result != 4)
  {
    return sub_241257A94(result);
  }

  return result;
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  v0 = sub_24135307C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_24135306C();
  v1[3] = sub_24135308C();
  v1[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_24135309C();
  sub_24135422C();
}

Swift::Void __swiftcall UIView.setConcentricCornerMask()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5386B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_24135302C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135301C();
  (*(v7 + 16))(v2, v9, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  sub_24135303C();
  sub_24128735C(v2);
  v10 = sub_24135305C();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  sub_24135423C();
  (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall UIView.setCapsuleCornerMask()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  sub_24135304C();
  v3 = sub_24135305C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_24135423C();
}

uint64_t MRQLFileManager.documentDirectory()@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 URLsForDirectory:9 inDomains:1];
  v4 = sub_24135152C();
  v5 = sub_241353E2C();

  if (*(v5 + 16))
  {
    (*(*(v4 - 8) + 16))(a1, v5 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);
  }

  else
  {

    if (qword_27E537BD0 != -1)
    {
      swift_once();
    }

    v7 = sub_241352FFC();
    __swift_project_value_buffer(v7, qword_27E539608);
    v8 = sub_241352FDC();
    v9 = sub_2413540BC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_241215000, v8, v9, "Document directory was not provided!", v10, 2u);
      MEMORY[0x245CE4870](v10, -1, -1);
    }

    result = sub_2413547DC();
    __break(1u);
  }

  return result;
}

void MRQLFileManager.createTemporaryDirectory(destinationURL:)()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = [objc_opt_self() defaultManager];
  sub_2413514EC();
  v3 = sub_241353BDC();

  v4 = [v2 isWritableFileAtPath_];

  if (v4)
  {
    v5 = sub_24135144C();
    v21[0] = 0;
    v6 = [v1 URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:v21];

    v7 = v21[0];
    if (v6)
    {
      sub_2413514AC();
      v8 = v7;
    }

    else
    {
      v10 = v21[0];
      v11 = sub_24135139C();

      swift_willThrow();
      if (qword_27E537BD0 != -1)
      {
        swift_once();
      }

      v12 = sub_241352FFC();
      __swift_project_value_buffer(v12, qword_27E539608);
      v13 = v11;
      v14 = sub_241352FDC();
      v15 = sub_2413540BC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = v11;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_241215000, v14, v15, "Could not get itemReplacementDirectory, using temporary directory Error: %@", v16, 0xCu);
        sub_241246278(v17, &unk_27E539B90);
        MEMORY[0x245CE4870](v17, -1, -1);
        MEMORY[0x245CE4870](v16, -1, -1);
      }

      v20 = NSTemporaryDirectory();
      sub_241353C0C();

      sub_24135141C();
    }
  }

  else
  {
    v9 = NSTemporaryDirectory();
    sub_241353C0C();

    sub_24135141C();
  }
}

void sub_2412CBEA4()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539608);
  __swift_project_value_buffer(v0, qword_27E539608);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_241353C0C();

    sub_241352FEC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MRQLFileManager.Failure.hashValue.getter()
{
  sub_241354ADC();
  MEMORY[0x245CE2EA0](0);
  return sub_241354B1C();
}

uint64_t sub_2412CBFF8()
{
  sub_241354ADC();
  MEMORY[0x245CE2EA0](0);
  return sub_241354B1C();
}

uint64_t sub_2412CC064()
{
  sub_241354ADC();
  MEMORY[0x245CE2EA0](0);
  return sub_241354B1C();
}

uint64_t MRQLFileManager.Token.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245CE29C0](v4, v1);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v3 = sub_2413544EC();
            goto LABEL_4;
          }

          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v4;
      }

      while (v5 != v3);
    }
  }

  else
  {
LABEL_14:

    SecurityScopedURL.stop(isUnitTesting:)(0);
  }

  sub_2412CFF94(v1, v2);
  sub_2412CFF94(v1, v2);
  return v0;
}

uint64_t MRQLFileManager.Token.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245CE29C0](v4, v1);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            v3 = sub_2413544EC();
            goto LABEL_4;
          }

          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v4;
      }

      while (v5 != v3);
    }
  }

  else
  {
LABEL_14:

    SecurityScopedURL.stop(isUnitTesting:)(0);
  }

  sub_2412CFF94(v1, v2);
  sub_2412CFF94(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_2412CC2F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245CE29C0](v4, v1);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            v3 = sub_2413544EC();
            goto LABEL_4;
          }

          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v4;
      }

      while (v5 != v3);
    }
  }

  else
  {
LABEL_14:

    SecurityScopedURL.stop(isUnitTesting:)(0);
  }

  return sub_2412CFF94(v1, v2);
}

id sub_2412CC400()
{
  result = [objc_opt_self() defaultManager];
  qword_27E539620 = result;
  return result;
}

id static MRQLFileManager.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_27E537BD8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27E539620;
  *a1 = qword_27E539620;

  return v2;
}

id MRQLFileManager.isReadable(fileURL:)()
{
  v1 = *v0;
  sub_2413514DC();
  v2 = sub_241353BDC();

  v3 = [v1 isReadableFileAtPath_];

  return v3;
}

uint64_t sub_2412CC54C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_24135152C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  type metadata accessor for SecurityScopedURL();
  swift_allocObject();
  v9 = sub_2413197D0(v7, 0);
  result = a2();
  if (v9)
  {
    SecurityScopedURL.stop(isUnitTesting:)(0);
  }

  return result;
}

uint64_t sub_2412CC67C(uint64_t (*a1)(void))
{
  result = a1();
  if (v1)
  {
    if (qword_27E537BD0 != -1)
    {
      swift_once();
    }

    v3 = sub_241352FFC();
    __swift_project_value_buffer(v3, qword_27E539608);
    v4 = v1;
    v5 = sub_241352FDC();
    v6 = sub_2413540BC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_241215000, v5, v6, "Error: %@", v7, 0xCu);
      sub_241246278(v8, &unk_27E539B90);
      MEMORY[0x245CE4870](v8, -1, -1);
      MEMORY[0x245CE4870](v7, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2412CC814(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  v4 = _s11AssetViewer17SecurityScopedURLC5start4urlsSayACGSay10Foundation0E0VG_tFZ_0(a1);
  a2(&v14);
  v5 = v4 >> 62;
  if (!v2)
  {
LABEL_13:
    if (v5)
    {
      v9 = sub_2413544EC();
      if (v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_15:
        v10 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x245CE29C0](v10, v4);
            v11 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v11 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          SecurityScopedURL.stop(isUnitTesting:)(0);

          ++v10;
        }

        while (v11 != v9);
      }
    }

    v12 = v14;
    return v12 & 1;
  }

  if (v5)
  {
    goto LABEL_26;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v7 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v7, v4);
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_8:
        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v7;
        if (v8 == v6)
        {
          goto LABEL_27;
        }
      }

      if (v7 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v6 = sub_2413544EC();
      if (!v6)
      {
        goto LABEL_27;
      }
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_27:

  return v12 & 1;
}

uint64_t sub_2412CC9D8(uint64_t a1, void (*a2)(void))
{
  v4 = _s11AssetViewer17SecurityScopedURLC5start4urlsSayACGSay10Foundation0E0VG_tFZ_0(a1);
  a2();
  v5 = v4 >> 62;
  if (!v2)
  {
LABEL_13:
    if (v5)
    {
      v9 = sub_2413544EC();
      if (!v9)
      {
      }
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](i, v4);
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      SecurityScopedURL.stop(isUnitTesting:)(0);

      if (v11 == v9)
      {
      }
    }
  }

  if (v5)
  {
    goto LABEL_26;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v7 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v7, v4);
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_8:
        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v7;
        if (v8 == v6)
        {
        }
      }

      if (v7 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v6 = sub_2413544EC();
      if (!v6)
      {
      }
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }
}

uint64_t MRQLFileManager.read<A>(fileURL:asyncOperation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *v5;
  v6[7] = a5;
  v6[8] = v7;
  return MEMORY[0x2822009F8](sub_2412CCBBC, 0, 0);
}

uint64_t sub_2412CCBBC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  *(v0 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2412CCCAC;
  v7 = *(v0 + 24);

  return sub_2412CD478(v7, dword_241368DD0);
}

uint64_t sub_2412CCCAC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2412CCDE8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2412CCDE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2412CCE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_2412CCF1C;

  return sub_2412CD068(a1, a3, a4, a5);
}

uint64_t sub_2412CCF1C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2412CD050, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2412CD068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_24135152C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2412CD12C, 0, 0);
}

uint64_t sub_2412CD12C()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[7] + 16))(v1, v0[3], v0[6]);
  type metadata accessor for SecurityScopedURL();
  swift_allocObject();
  v0[9] = sub_2413197D0(v1, 0);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_2412CD26C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_2412CD26C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2412CD3FC;
  }

  else
  {
    v2 = sub_2412CD380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2412CD380()
{
  if (*(v0 + 72))
  {
    SecurityScopedURL.stop(isUnitTesting:)(0);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2412CD3FC()
{
  if (*(v0 + 72))
  {
    SecurityScopedURL.stop(isUnitTesting:)(0);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2412CD478(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2412CD570;

  return v6(a1);
}

uint64_t sub_2412CD570()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2412CD6A4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2412CD6A4()
{
  if (qword_27E537BD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E539608);
  v3 = v1;
  v4 = sub_241352FDC();
  v5 = sub_2413540BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_241215000, v4, v5, "Error: %@", v7, 0xCu);
    sub_241246278(v8, &unk_27E539B90);
    MEMORY[0x245CE4870](v8, -1, -1);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t MRQLFileManager.read<A>(fileURLs:asyncOperation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *v5;
  v6[7] = a5;
  v6[8] = v7;
  return MEMORY[0x2822009F8](sub_2412CD868, 0, 0);
}

uint64_t sub_2412CD868()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  *(v0 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2412CD958;
  v7 = *(v0 + 24);

  return sub_2412CD478(v7, &unk_241368DF0);
}

uint64_t sub_2412CD958()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2412D0828, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2412CDA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_2412CDB64;

  return sub_2412CDC98(a1, a3, a4, a5);
}

uint64_t sub_2412CDB64()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2412D082C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2412CDC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2412CDCBC, 0, 0);
}

uint64_t sub_2412CDCBC()
{
  v1 = v0[4];
  v0[6] = _s11AssetViewer17SecurityScopedURLC5start4urlsSayACGSay10Foundation0E0VG_tFZ_0(v0[3]);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2412CDDB8;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_2412CDDB8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2412CDFF4;
  }

  else
  {
    v2 = sub_2412CDECC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2412CDECC()
{
  v1 = *(v0 + 48);
  if (v1 >> 62)
  {
LABEL_16:
    v2 = sub_2413544EC();
    v1 = *(v0 + 48);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v4)
        {
          MEMORY[0x245CE29C0](v3, *(v0 + 48));
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_11;
          }
        }

        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v3;
      }

      while (v6 != v2);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2412CDFF4()
{
  v1 = *(v0 + 48);
  if (v1 >> 62)
  {
LABEL_16:
    v2 = sub_2413544EC();
    v1 = *(v0 + 48);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v4)
        {
          MEMORY[0x245CE29C0](v3, *(v0 + 48));
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_11;
          }
        }

        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v3;
      }

      while (v6 != v2);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t _s11AssetViewer15MRQLFileManagerV4read7fileURLAC5TokenCSg10Foundation0G0V_tF_0(uint64_t a1)
{
  v2 = sub_24135152C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  type metadata accessor for SecurityScopedURL();
  swift_allocObject();
  v7 = sub_2413197D0(v5, 0);
  type metadata accessor for MRQLFileManager.Token();
  result = swift_allocObject();
  if (v7)
  {
    *(result + 16) = v7;
    *(result + 24) = 0;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t _s11AssetViewer15MRQLFileManagerV4read8fileURLsAC5TokenCSgSay10Foundation3URLVG_tF_0(uint64_t a1)
{
  v1 = _s11AssetViewer17SecurityScopedURLC5start4urlsSayACGSay10Foundation0E0VG_tFZ_0(a1);
  v2 = v1;
  if (v1 >> 62)
  {
    if (sub_2413544EC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    type metadata accessor for MRQLFileManager.Token();
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = 1;
    return result;
  }

  return 0;
}

uint64_t MRQLFileManager.write<A>(fileURL:asyncOperation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *v5;
  v6[7] = a5;
  v6[8] = v7;
  return MEMORY[0x2822009F8](sub_2412CE37C, 0, 0);
}

uint64_t sub_2412CE37C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  *(v0 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2412CD958;
  v7 = *(v0 + 24);

  return sub_2412CD478(v7, &unk_241368E08);
}

uint64_t sub_2412CE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_2412CDB64;

  return sub_2412CD068(a1, a3, a4, a5);
}

uint64_t MRQLFileManager.write<A>(fileURLs:asyncOperation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *v5;
  v6[7] = a5;
  v6[8] = v7;
  return MEMORY[0x2822009F8](sub_2412CE568, 0, 0);
}

uint64_t sub_2412CE568()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  *(v0 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2412CD958;
  v7 = *(v0 + 24);

  return sub_2412CD478(v7, &unk_241368E20);
}

uint64_t _s11AssetViewer17SecurityScopedURLC5start4urlsSayACGSay10Foundation0E0VG_tFZ_0(uint64_t a1)
{
  v2 = sub_24135152C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v22 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v3 + 16);
  v11 = v3 + 16;
  v12 = v13;
  v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v21 = *(v11 + 56);
  v20 = MEMORY[0x277D84F90];
  (v13)(v9, v14, v2, v7);
  while (1)
  {
    v12(v5, v9, v2);
    type metadata accessor for SecurityScopedURL();
    swift_allocObject();
    v16 = sub_2413197D0(v5, 0);
    v17 = (*(v11 - 8))(v9, v2);
    if (v16)
    {
      MEMORY[0x245CE21C0](v17);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_241353E4C();
      }

      sub_241353E6C();
      v20 = v22;
    }

    v14 += v21;
    if (!--v10)
    {
      break;
    }

    (v12)(v9, v14, v2, v15);
  }

  return v20;
}

uint64_t sub_2412CE8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
  v5 = sub_24135152C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_241366530;
  v10 = v9 + v8;
  v11 = *(v6 + 16);
  v11(v10, a1, v5);
  v11(v10 + v7, a2, v5);
  v12 = _s11AssetViewer17SecurityScopedURLC5start4urlsSayACGSay10Foundation0E0VG_tFZ_0(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2412CC67C(a3);
  v13 = v12 >> 62;
  if (!v22)
  {
LABEL_13:
    if (v13)
    {
      v17 = sub_2413544EC();
      if (!v17)
      {
      }
    }

    else
    {
      v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](i, v12);
        v19 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v19 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      SecurityScopedURL.stop(isUnitTesting:)(0);

      if (v19 == v17)
      {
      }
    }
  }

  if (v13)
  {
    goto LABEL_26;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    while (1)
    {
      v15 = 0;
      while ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v15, v12);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_8:
        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v15;
        if (v16 == v14)
        {
        }
      }

      if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v14 = sub_2413544EC();
      if (!v14)
      {
      }
    }

    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }
}

id sub_2412CEB70(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = sub_24135144C();
  v7 = sub_24135144C();
  v10[0] = 0;
  LODWORD(a4) = [a1 *a4];

  if (a4)
  {
    return v10[0];
  }

  v9 = v10[0];
  sub_24135139C();

  return swift_willThrow();
}

uint64_t MRQLFileManager.replace(at:with:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_241366530;
  v9 = v8 + v7;
  v10 = *(v5 + 16);
  v10(v9, a2, v4);
  v10(v9 + v6, a1, v4);
  v11 = _s11AssetViewer17SecurityScopedURLC5start4urlsSayACGSay10Foundation0E0VG_tFZ_0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2412CC67C(sub_2412D03CC);
  v12 = v11 >> 62;
  if (!v20)
  {
LABEL_13:
    if (v12)
    {
      v16 = sub_2413544EC();
      if (!v16)
      {
      }
    }

    else
    {
      v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](i, v11);
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      SecurityScopedURL.stop(isUnitTesting:)(0);

      if (v18 == v16)
      {
      }
    }
  }

  if (v12)
  {
    goto LABEL_26;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (1)
    {
      v14 = 0;
      while ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CE29C0](v14, v11);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_8:
        SecurityScopedURL.stop(isUnitTesting:)(0);

        ++v14;
        if (v15 == v13)
        {
        }
      }

      if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v13 = sub_2413544EC();
      if (!v13)
      {
      }
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }
}

uint64_t sub_2412CEF20()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  result = sub_24135409C();
  if (!v0)
  {
    sub_24124AF9C(v10, v7);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_241246278(v10, &qword_27E538750);
      return sub_241246278(v7, &qword_27E538750);
    }

    (*(v2 + 32))(v4, v7, v1);
    sub_2412D078C(&qword_27E539630, MEMORY[0x277CC9260]);
    if (sub_241353BCC())
    {
      (*(v2 + 8))(v4, v1);
      v7 = v10;
      return sub_241246278(v7, &qword_27E538750);
    }

    sub_2412D07D4();
    swift_allocError();
    swift_willThrow();
    (*(v2 + 8))(v4, v1);
    return sub_241246278(v10, &qword_27E538750);
  }

  return result;
}

uint64_t MRQLFileManager.fileExists(fileURL:)(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sub_24135152C();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  (*(v8 + 16))(v6, a1, v4);
  type metadata accessor for SecurityScopedURL();
  swift_allocObject();
  v9 = sub_2413197D0(v6, 0);
  HIBYTE(v14) = 0;
  sub_2413514EC();
  v10 = sub_241353BDC();

  v11 = [v7 fileExistsAtPath:v10 isDirectory:&v14 + 7];

  v12 = HIBYTE(v14);
  if (v9)
  {
    SecurityScopedURL.stop(isUnitTesting:)(0);
  }

  return v11 & (v12 ^ 1);
}

Swift::Bool __swiftcall MRQLFileManager.filesExist(fileURLs:)(Swift::OpaquePointer fileURLs)
{
  v2 = *v1;

  v4 = sub_2412CC814(v3, sub_2412D0558);

  return v4 & 1;
}

void sub_2412CF50C(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v15 = a3;
  v17 = a2;
  v19 = *MEMORY[0x277D85DE8];
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v16 = a1;
  v10 = *(a1 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    (*(v5 + 16))(v8, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v4, v6);
    v18 = 0;
    sub_2413514EC();
    v12 = sub_241353BDC();

    v13 = [v17 fileExistsAtPath:v12 isDirectory:&v18];

    (*(v5 + 8))(v8, v4);
    if (!v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  while ((v18 & 1) == 0);
  *v15 = v10 == v11;
}

uint64_t MRQLFileManager.isCachedFileNewer(originalURL:cachedURL:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
  v6 = sub_24135152C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_241366530;
  v11 = v10 + v9;
  v12 = *(v7 + 16);
  v12(v11, a1, v6);
  v12(v11 + v8, a2, v6);
  v13 = v5;
  LOBYTE(a1) = sub_2412D03EC(v10, sub_2412D0574);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return a1 & 1;
}

void sub_2412CF850(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v9 = sub_2413515EC();
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  MEMORY[0x28223BE20](v9);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v47 - v13;
  sub_2413514EC();
  v14 = sub_241353BDC();

  v53[0] = 0;
  v15 = [a1 attributesOfItemAtPath:v14 error:v53];

  v16 = v53[0];
  if (v15)
  {
    v50 = a2;
    type metadata accessor for FileAttributeKey(0);
    sub_2412D078C(&qword_27E537FD0, type metadata accessor for FileAttributeKey);
    v17 = sub_241353B5C();
    v18 = v16;

    sub_2413514EC();
    v19 = sub_241353BDC();

    v53[0] = 0;
    v20 = [a1 attributesOfItemAtPath:v19 error:v53];

    v21 = v53[0];
    if (v20)
    {
      v22 = sub_241353B5C();
      v23 = v21;

      if (!*(v17 + 16) || (v24 = *MEMORY[0x277CCA150], v25 = sub_2412FEC5C(*MEMORY[0x277CCA150]), (v26 & 1) == 0))
      {

        (*(v52 + 56))(v8, 1, 1, v51);
        goto LABEL_9;
      }

      sub_2412461A0(*(v17 + 56) + 32 * v25, v53);

      v27 = v51;
      v28 = swift_dynamicCast();
      v29 = v52;
      v30 = *(v52 + 56);
      v30(v8, v28 ^ 1u, 1, v27);
      v31 = *(v29 + 48);
      if (v31(v8, 1, v27) == 1)
      {

LABEL_9:
        sub_241246278(v8, &qword_27E538868);
        v34 = 0;
        goto LABEL_12;
      }

      v37 = v8;
      v38 = *(v29 + 32);
      v38(v49, v37, v27);
      if (!*(v22 + 16) || (v39 = sub_2412FEC5C(v24), v27 = v51, (v40 & 1) == 0))
      {

        (*(v52 + 8))(v49, v27);
        v41 = v48;
        v30(v48, 1, 1, v27);
        goto LABEL_19;
      }

      sub_2412461A0(*(v22 + 56) + 32 * v39, v53);

      v41 = v48;
      v42 = swift_dynamicCast();
      v30(v41, v42 ^ 1u, 1, v27);
      if (v31(v41, 1, v27) == 1)
      {
        (*(v52 + 8))(v49, v27);
LABEL_19:
        a2 = v50;
        sub_241246278(v41, &qword_27E538868);
        v34 = 0;
        goto LABEL_13;
      }

      v43 = v47;
      v38(v47, v41, v27);
      v44 = v49;
      v34 = sub_2413515AC();
      v45 = v27;
      v46 = *(v52 + 8);
      v46(v43, v45);
      v46(v44, v45);
    }

    else
    {
      v35 = v53[0];

      v36 = sub_24135139C();

      swift_willThrow();
      v34 = 0;
    }

LABEL_12:
    a2 = v50;
    goto LABEL_13;
  }

  v32 = v53[0];
  v33 = sub_24135139C();

  swift_willThrow();
  v34 = 0;
LABEL_13:
  *a2 = v34 & 1;
}

uint64_t Optional<A>.stop()(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    v2 = *(result + 24);
    if (v2)
    {
      if (v1 >> 62)
      {
        goto LABEL_21;
      }

      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      sub_2412D0594(v1, 1);
      if (v3)
      {
        v4 = 0;
        do
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x245CE29C0](v4, v1);
            v5 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_14:
              __break(1u);
              return result;
            }
          }

          else
          {
            if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_21:
              v3 = sub_2413544EC();
              goto LABEL_5;
            }

            v5 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_14;
            }
          }

          SecurityScopedURL.stop(isUnitTesting:)(0);

          ++v4;
        }

        while (v5 != v3);
      }
    }

    else
    {

      sub_2412D0594(v1, 0);
      SecurityScopedURL.stop(isUnitTesting:)(0);
    }

    return sub_2412CFF94(v1, v2);
  }

  return result;
}

{
  if (result)
  {

    SecurityScopedURL.stop(isUnitTesting:)(0);
  }

  return result;
}

uint64_t sub_2412CFF94(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2412CFFF4(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2412450EC;

  return sub_2412CCE4C(a1, v4, v5, v6, v7);
}

uint64_t sub_2412D00BC(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24124647C;

  return sub_2412CDA94(a1, v4, v5, v6, v7);
}

uint64_t sub_2412D01EC(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24124647C;

  return sub_2412CE46C(a1, v4, v5, v6, v7);
}

uint64_t sub_2412D02B4(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24124647C;

  return sub_2412CDA94(a1, v4, v5, v6, v7);
}

uint64_t sub_2412D03EC(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  v3 = sub_2412CC814(a1, a2);
  if (v2)
  {
    if (qword_27E537BD0 != -1)
    {
      swift_once();
    }

    v4 = sub_241352FFC();
    __swift_project_value_buffer(v4, qword_27E539608);
    v5 = v2;
    v6 = sub_241352FDC();
    v7 = sub_2413540BC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_241215000, v6, v7, "Error: %@", v8, 0xCu);
      sub_241246278(v9, &unk_27E539B90);
      MEMORY[0x245CE4870](v9, -1, -1);
      MEMORY[0x245CE4870](v8, -1, -1);
    }

    swift_willThrow();
  }

  return v3 & 1;
}

uint64_t sub_2412D0594(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_2412D05A4()
{
  result = qword_27E539628;
  if (!qword_27E539628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539628);
  }

  return result;
}

uint64_t sub_2412D05F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2412D0640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2412D06E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2412D072C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2412D078C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2412D07D4()
{
  result = qword_27E539638;
  if (!qword_27E539638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539638);
  }

  return result;
}

uint64_t sub_2412D0868()
{
  v1 = v0;
  v2 = sub_241351BBC();
  v108 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v106 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v121 = &v96 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v96 - v7;
  v9 = sub_2413520EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_241351A7C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_2413528FC();

  if (v126)
  {
    if (qword_27E537CD0 == -1)
    {
LABEL_3:
      v18 = sub_241352FFC();
      __swift_project_value_buffer(v18, qword_27E53A538);
      v19 = sub_241352FDC();
      v20 = sub_2413540BC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v136 = v22;
        *v21 = 136315138;
        v23 = sub_24135424C();
        v25 = sub_2412DDC2C(v23, v24, &v136);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_241215000, v19, v20, "RealityKitWorldRaycast: Unable to create ray with point %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x245CE4870](v22, -1, -1);
        MEMORY[0x245CE4870](v21, -1, -1);
      }

      if (qword_27E537C40 != -1)
      {
        swift_once();
      }

      return MEMORY[0x277D84F90];
    }

LABEL_53:
    swift_once();
    goto LABEL_3;
  }

  v123 = v125;
  v122 = v124;
  v27 = swift_unknownObjectUnownedLoadStrong();
  sub_24135292C();
  v101 = v8;

  sub_241351A2C();
  v28 = *(v10 + 104);
  v113 = *MEMORY[0x277CDAE48];
  v112 = v10 + 104;
  v111 = v28;
  v28(v12);
  v102 = sub_24135251C();

  v29 = *(v10 + 8);
  v118 = v12;
  v114 = v9;
  v110 = v29;
  v29(v12, v9);
  v30 = *(v14 + 8);
  v117 = v13;
  v116 = v14 + 8;
  v109 = v30;
  v30(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539640);
  v31 = swift_allocObject();
  v32 = swift_unknownObjectUnownedLoadStrong();
  sub_2413528FC();

  v33 = v128;
  *(v31 + 32) = v127;
  *(v31 + 48) = v33;
  *(v31 + 64) = v129;
  v34 = swift_unknownObjectUnownedLoadStrong();
  sub_2413528FC();
  v98 = *(&v130 + 1);
  v103 = v130;
  v99 = *(&v131 + 1);
  v100 = v131;

  v35 = v131;
  *(v31 + 80) = v130;
  *(v31 + 96) = v35;
  *(v31 + 112) = v132;
  v36 = swift_unknownObjectUnownedLoadStrong();
  sub_2413528FC();
  v120 = *(&v133 + 1);
  v123.i64[0] = v133;
  v104 = *(&v134 + 1);
  v122.i64[0] = v134;

  v37 = v134;
  *(v31 + 128) = v133;
  *(v31 + 144) = v37;
  *(v31 + 160) = v135;
  v38 = swift_unknownObjectUnownedLoadStrong();
  sub_2413528FC();
  v40 = *(&v136 + 1);
  v39 = v136;
  v42 = *(&v137 + 1);
  v41 = v137;

  v43 = v137;
  *(v31 + 176) = v136;
  *(v31 + 192) = v43;
  *(v31 + 208) = v138;
  v44 = *(v31 + 64);
  v107 = v2;
  v105 = v1;
  v119 = v10 + 8;
  v115 = v16;
  if (v44)
  {
    v45 = MEMORY[0x277D84F90];
    if (v132)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v96 = v42;
  v97 = v40;
  v46 = v39;
  v47 = v41;
  v48 = *(v31 + 32);
  v49 = *(v31 + 40);
  v51 = *(v31 + 48);
  v50 = *(v31 + 56);
  v52 = sub_2412A17F8(0, 1, 1, MEMORY[0x277D84F90]);
  v54 = *(v52 + 2);
  v53 = *(v52 + 3);
  v55 = v52;
  if (v54 >= v53 >> 1)
  {
    v55 = sub_2412A17F8((v53 > 1), v54 + 1, 1, v52);
  }

  *(v55 + 2) = v54 + 1;
  v56 = &v55[32 * v54];
  *(v56 + 4) = v48;
  *(v56 + 5) = v49;
  v45 = v55;
  *(v56 + 6) = v51;
  *(v56 + 7) = v50;
  v2 = v107;
  v1 = v105;
  v41 = v47;
  v39 = v46;
  v40 = v97;
  v42 = v96;
  if ((v132 & 1) == 0)
  {
LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_2412A17F8(0, *(v45 + 2) + 1, 1, v45);
    }

    v58 = *(v45 + 2);
    v57 = *(v45 + 3);
    if (v58 >= v57 >> 1)
    {
      v45 = sub_2412A17F8((v57 > 1), v58 + 1, 1, v45);
    }

    *(v45 + 2) = v58 + 1;
    v59 = &v45[32 * v58];
    v60 = v98;
    *(v59 + 4) = v103;
    *(v59 + 5) = v60;
    v61 = v99;
    *(v59 + 6) = v100;
    *(v59 + 7) = v61;
    v2 = v107;
  }

LABEL_19:
  if (v135)
  {
    if (v138)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_2412A17F8(0, *(v45 + 2) + 1, 1, v45);
  }

  v63 = *(v45 + 2);
  v62 = *(v45 + 3);
  if (v63 >= v62 >> 1)
  {
    v45 = sub_2412A17F8((v62 > 1), v63 + 1, 1, v45);
  }

  *(v45 + 2) = v63 + 1;
  v64 = &v45[32 * v63];
  v65 = v120;
  *(v64 + 4) = v123.i64[0];
  *(v64 + 5) = v65;
  v66 = v104;
  *(v64 + 6) = v122.i64[0];
  *(v64 + 7) = v66;
  v2 = v107;
  if ((v138 & 1) == 0)
  {
LABEL_27:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_2412A17F8(0, *(v45 + 2) + 1, 1, v45);
    }

    v68 = *(v45 + 2);
    v67 = *(v45 + 3);
    if (v68 >= v67 >> 1)
    {
      v45 = sub_2412A17F8((v67 > 1), v68 + 1, 1, v45);
    }

    *(v45 + 2) = v68 + 1;
    v69 = &v45[32 * v68];
    *(v69 + 4) = v39;
    *(v69 + 5) = v40;
    *(v69 + 6) = v41;
    *(v69 + 7) = v42;
    v2 = v107;
  }

LABEL_32:
  swift_setDeallocating();
  swift_deallocClassInstance();
  v70 = *(v45 + 2);
  v103 = v45;
  if (v70)
  {
    v104 = v108 + 16;
    v120 = v108 + 32;
    v71 = (v45 + 48);
    v72 = MEMORY[0x277D84F90];
    do
    {
      v73 = *v71;
      v123 = v71[-1];
      v122 = v73;
      v74 = swift_unknownObjectUnownedLoadStrong();
      sub_24135292C();

      v75 = v115;
      sub_241351A2C();
      v76 = v1;
      v77 = v118;
      v78 = v114;
      v111(v118, v113, v114);
      v79 = sub_24135251C();

      v110(v77, v78);
      v109(v75, v117);
      if (*(v79 + 16))
      {
        v80 = v108;
        v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
        v82 = v106;
        (*(v108 + 16))(v106, v79 + v81, v2);

        v83 = *(v80 + 32);
        v83(v121, v82, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_2412A17D0(0, v72[2] + 1, 1, v72);
        }

        v85 = v72[2];
        v84 = v72[3];
        if (v85 >= v84 >> 1)
        {
          v72 = sub_2412A17D0(v84 > 1, v85 + 1, 1, v72);
        }

        v72[2] = v85 + 1;
        v86 = v72 + v81 + *(v80 + 72) * v85;
        v2 = v107;
        v83(v86, v121, v107);
        v1 = v105;
      }

      else
      {

        v1 = v76;
      }

      v71 += 2;
      --v70;
    }

    while (v70);
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
  }

  v87 = v72[2];
  if (v87)
  {
    v88 = 0;
    v89 = v108;
    v123 = 0u;
    v90 = v101;
    while (v88 < v72[2])
    {
      (*(v89 + 16))(v90, v72 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v88++, v2);
      sub_241351B9C();
      v92 = vaddq_f32(v123, v91);
      v92.i32[3] = 0;
      v123 = v92;
      (*(v89 + 8))(v90, v2);
      if (v87 == v88)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v123 = 0u;
LABEL_49:

  v93 = vmulq_f32(v123, v123);
  *&v94 = v93.f32[2] + vaddv_f32(*v93.f32);
  *v93.f32 = vrsqrte_f32(v94);
  *v93.f32 = vmul_f32(*v93.f32, vrsqrts_f32(v94, vmul_f32(*v93.f32, *v93.f32)));
  v95 = vmulq_n_f32(v123, vmul_f32(*v93.f32, vrsqrts_f32(v94, vmul_f32(*v93.f32, *v93.f32))).f32[0]);
  if (qword_27E537C40 != -1)
  {
    v123 = v95;
    swift_once();
  }

  return v102;
}

uint64_t sub_2412D1578()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

double sub_2412D17DC(uint64_t a1)
{
  result = 0.0;
  if (*a1 != 1)
  {
    v3 = v1;
    if (sub_241255FE0())
    {
      v5 = (v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType);
      if (*(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48))
      {
        goto LABEL_8;
      }

      v22 = v5[1];
      v23 = vmulq_f32(v22, v22);
      *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
      *v23.f32 = vrsqrte_f32(v24);
      *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
      v25 = vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
      v26.columns[1] = *(a1 + 32);
      v26.columns[3] = vmulq_f32(v26.columns[1], v26.columns[1]);
      v26.columns[2].f32[0] = v26.columns[3].f32[2] + vaddv_f32(*v26.columns[3].f32);
      *v26.columns[3].f32 = vrsqrte_f32(v26.columns[2].u32[0]);
      *v26.columns[3].f32 = vmul_f32(*v26.columns[3].f32, vrsqrts_f32(v26.columns[2].u32[0], vmul_f32(*v26.columns[3].f32, *v26.columns[3].f32)));
      v26.columns[0] = vmulq_f32(v25, vmulq_n_f32(v26.columns[1], vmul_f32(*v26.columns[3].f32, vrsqrts_f32(v26.columns[2].u32[0], vmul_f32(*v26.columns[3].f32, *v26.columns[3].f32))).f32[0]));
      if ((v26.columns[0].f32[2] + vaddv_f32(*v26.columns[0].f32)) < 0.965)
      {
        v26.columns[0].i64[0] = v5[2].i64[0];
        v26.columns[0].i64[1] = v5[2].i64[1];
        v44 = v26.columns[0];
        v26.columns[0].i64[0] = v5->i64[0];
        v26.columns[0].i64[1] = v5->i64[1];
        v42 = v5[1];
        v43 = v26.columns[0];
        v26.columns[0] = *(a1 + 16);
        v26.columns[2] = *(a1 + 48);
        v26.columns[3] = *(a1 + 64);
        *v27.i64 = simd_quaternion(v26);
        v45 = v27;
        v46.columns[1] = v42;
        v46.columns[0] = v43;
        v46.columns[2] = v44;
        *v28.i64 = simd_quaternion(v46);
        v29 = vmulq_f32(v28, v28);
        *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
        v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
        v30 = vrecpe_f32(v29.u32[0]);
        v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
        v32 = vmulq_n_f32(vmulq_f32(v28, xmmword_241369020), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
        v33 = *(*(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator) + 96);
        v34 = vnegq_f32(v33);
        v35 = vtrn2q_s32(v33, vtrn1q_s32(v33, v34));
        v36 = vrev64q_s32(v33);
        v36.i32[0] = v34.i32[1];
        v36.i32[3] = v34.i32[2];
        v37 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v33, v34, 8uLL), *v32.f32, 1), vextq_s8(v35, v35, 8uLL), v32.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v33, v32, 3), v36, v32, 2));
        v38 = vnegq_f32(v37);
        v39 = vtrn2q_s32(v37, vtrn1q_s32(v37, v38));
        v40 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v37, v38, 8uLL), *v45.f32, 1), vextq_s8(v39, v39, 8uLL), v45.f32[0]);
        v41 = vrev64q_s32(v37);
        v41.i32[0] = v38.i32[1];
        v41.i32[3] = v38.i32[2];
        v16 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v37, v45, 3), v41, v45, 2), v40);
LABEL_9:
        v17 = vmulq_f32(v16, v16);
        v18 = vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
        if (vaddv_f32(v18) == 0.0)
        {
          return 0.0;
        }

        v19 = vadd_f32(v18, vdup_lane_s32(v18, 1)).u32[0];
        v20 = vrsqrte_f32(v19);
        v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
        *&result = vmulq_n_f32(v16, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]).u64[0];
        return result;
      }
    }

    else
    {
      MEMORY[0x245CE24B0](*(*(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator) + 96));
      v7 = *(a1 + 32);
      v8 = vmulq_f32(v7, v7);
      *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
      *v8.f32 = vrsqrte_f32(v9);
      *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
      v10 = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
      if (*(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48) != 1 || (v11 = vmulq_f32(v6, v6), *&v12 = v11.f32[2] + vaddv_f32(*v11.f32), *v11.f32 = vrsqrte_f32(v12), *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))), v13 = vmulq_f32(v10, vmulq_n_f32(v6, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0])), (v13.f32[2] + vaddv_f32(*v13.f32)) < 0.965))
      {
        sub_241352C5C();
        sub_2413519BC();
        sub_2412AC428(v15, v14);
LABEL_8:
        static Transform.lookTransform(at:from:upVector:)();
        goto LABEL_9;
      }
    }

    return 0.0;
  }

  return result;
}

void sub_2412D1C38(uint64_t a1)
{
  if (*a1 != 1)
  {
    v3 = sub_241255FE0();
    v4 = (v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType);
    if (v3)
    {
      if (*(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48))
      {
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
          _os_log_impl(&dword_241215000, v6, v7, "setting plane type to vertical", v8, 2u);
          MEMORY[0x245CE4870](v8, -1, -1);
        }
      }

      v9 = *(a1 + 16);
      v10 = *(a1 + 32);
      HIDWORD(v9) = 0;
      HIDWORD(v10) = 0;
      v11 = *(a1 + 48);
      HIDWORD(v11) = 0;
      v22 = v9;
      v23 = v10;
      v24 = v11;
      sub_2412FEC60(v19);
      v12 = v19[1];
      v14 = v20;
      v13 = v21;
      *v4 = v19[0];
      v4[1] = v12;
      v4[2].i64[0] = v14;
      v4[2].i64[1] = v13;
    }

    else
    {
      if ((*(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48) & 1) == 0)
      {
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v15 = sub_241352FFC();
        __swift_project_value_buffer(v15, qword_27E53A538);
        v16 = sub_241352FDC();
        v17 = sub_2413540DC();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_241215000, v16, v17, "setting plane type to horizontal", v18, 2u);
          MEMORY[0x245CE4870](v18, -1, -1);
        }
      }

      v4[1] = 0u;
      v4[2] = 0u;
      *v4 = 0u;
    }

    v4[3].i8[0] = !v3;
  }
}

void sub_2412D1FC0(void *a1, float32x2_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48) == 1)
  {
    v3 = v2;
    if (swift_unknownObjectWeakLoadStrong() && (sub_241297860(v40), swift_unknownObjectRelease(), (v5 = v40[0]) != 0))
    {
      v39 = v40[1];

      [v39 timestamp];
      v6 = OBJC_IVAR____TtC11AssetViewer16EntityController_lastARFrameTimestampForMovement;
      if (v7 != *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_lastARFrameTimestampForMovement) || (v8 = vceq_f32(*(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_lastScreenPointForMovement), a2), (v8.i32[0] & v8.i32[1] & 1) == 0))
      {
        sub_241352C5C();
        sub_24135196C();
        v37 = v9;
        v10 = [v39 camera];
        [v10 transform];

        v11 = [v39 camera];
        v12 = [objc_opt_self() mainScreen];
        [v12 currentOrientation];

        v13 = sub_24135428C();
        v15 = v14;

        if ((v15 & 1) == 0)
        {
          v16.i64[0] = v13;
          v17 = vsubq_f32(v16, v37);
          v18 = OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight;
          if ((v17.f32[1] + *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight)) > 0.0)
          {
            v19 = v17.f32[1] + *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight);
          }

          else
          {
            v19 = 0.0;
          }

          v20 = objc_opt_self();
          [v20 floatForKey_];
          v22 = v21;
          [v20 floatForKey_];
          if (v19 >= v22)
          {
            v24 = *(v3 + v18);
            v29 = v19 >= v23 || v24 > v22;
            v25 = a1;
            if (v29)
            {
              if (v24 <= 0.00000011921)
              {
                v30 = [a1 feedbackGenerator];
                v31 = [v30 snapAwayFromScaleFeedbackGenerator];

                if (!v31)
                {
                  goto LABEL_35;
                }

                [v31 fire];
                swift_unknownObjectRelease();
              }

              sub_24135190C();
LABEL_32:
              *(v3 + v18) = v19;
              [v39 timestamp];
              v36 = v35;

              *(v3 + v6) = v36;
              *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_lastScreenPointForMovement) = *&a2;
              return;
            }
          }

          else
          {
            v24 = *(v3 + v18);
            v25 = a1;
          }

          if (v24 <= 0.00000011921)
          {
LABEL_31:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538AC0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_241365E60;
            *(inited + 32) = 0;
            *(inited + 36) = *(v3 + v18);
            *(inited + 40) = 0;
            sub_241314E58(inited);
            swift_setDeallocating();
            sub_24135190C();
            v19 = 0.0;
            goto LABEL_32;
          }

          v32 = [v25 feedbackGenerator];
          v33 = [v32 snapToScaleFeedbackGenerator];

          if (v33)
          {
            [v33 fire];
            swift_unknownObjectRelease();
            goto LABEL_31;
          }

          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }
      }
    }

    else
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v26 = sub_241352FFC();
      __swift_project_value_buffer(v26, qword_27E53A538);
      v39 = sub_241352FDC();
      v27 = sub_2413540BC();
      if (os_log_type_enabled(v39, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_241215000, v39, v27, "Couldn't get frame/worldRaycastStrategy", v28, 2u);
        MEMORY[0x245CE4870](v28, -1, -1);
      }
    }
  }
}

uint64_t sub_2412D2A64()
{
  sub_24124954C();
  v1 = *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager);
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8);
  sub_24133CDB4(v2);
  sub_24133AFBC(v1, v2);
  *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_entityWorldPosistionRefreshGuard) = 5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_2412979B0();
    if ((v5 & 1) == 0)
    {
      v6 = sub_241287420();
      v7 = v6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

      if ((v7 & 1) == 0 && v4[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] == 3)
      {
        v4[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 4;
        [v4 updateInterfaceState];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2412D2B60()
{
  v1 = &v0[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
  if (v0[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 8] != 1)
  {
    goto LABEL_5;
  }

  if (sub_241323A38())
  {
    sub_24133D85C(*&v0[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8]);
    v1[8] = 0;
    goto LABEL_6;
  }

  if ((v1[8] & 1) == 0)
  {
LABEL_5:
    sub_24133D85C(*&v0[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8]);
  }

LABEL_6:
  *&v0[OBJC_IVAR____TtC11AssetViewer16EntityController_entityWorldPosistionRefreshGuard] = 5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR___ASVPreviewViewControllerInternal_worldRaycastStrategy))
    {

      sub_241256170();

      sub_2413233C4();
      v3 = *&v0[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
      if (v3 && ([v3 isDecelerating] & 1) == 0)
      {
        sub_24130EE30(v0);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2412D2CA8()
{
  sub_241352C5C();
  sub_24135196C();
  sub_24135190C();
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_241352FFC();
  __swift_project_value_buffer(v0, qword_27E53A538);
  oslog = sub_241352FDC();
  v1 = sub_2413540AC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_241215000, oslog, v1, "world mode decelerating", v2, 2u);
    MEMORY[0x245CE4870](v2, -1, -1);
  }
}

void sub_2412D2DEC(float32x4_t a1)
{
  v2 = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_241297860(&v122);
    swift_unknownObjectRelease();
    v3 = v122;
    if (v122)
    {
      v4 = v123;
      v6 = v124;
      v5 = v125;
      [v123 timestamp];
      v7 = OBJC_IVAR____TtC11AssetViewer16EntityController_lastARFrameTimestampForMovement;
      if (v8 == *&v1[OBJC_IVAR____TtC11AssetViewer16EntityController_lastARFrameTimestampForMovement])
      {
        v9 = vceq_f32(*&v1[OBJC_IVAR____TtC11AssetViewer16EntityController_lastScreenPointForMovement], *a1.f32);
        if (v9.i32[0] & v9.i32[1])
        {

          return;
        }
      }

      [v4 timestamp];
      if (v13 != *&v1[v7])
      {
        *&v1[OBJC_IVAR____TtC11AssetViewer16EntityController_entityWorldPosistionRefreshGuard] = 5;
      }

      [objc_opt_self() floatForKey_];
      if (*&v1[OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight] > 0.00000011921 && v1[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48] == 1)
      {
        v15 = v14;
        v16 = [v4 camera];
        sub_241352C5C();
        sub_24135193C();
        v17 = [objc_opt_self() mainScreen];
        [v17 currentOrientation];

        v18 = sub_24135428C();
        v108 = v19;
        v21 = v20;

        v22 = [v4 camera];
        [v22 transform];
        *v112 = v23;

        if ((v21 & 1) != 0 || (v24.i64[0] = v18, v24.i64[1] = v108, v25 = vsubq_f32(v24, *v112), v26 = vmulq_f32(v25, v25), (v26.f32[2] + vaddv_f32(*v26.f32)) >= (v15 * v15)))
        {

          v47 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v48 = 0uLL;
          v36 = 4;
LABEL_31:
          v135[0] = v36;
          v135[1] = v47;
          *&v136 = v28;
          *(&v136 + 1) = v29;
          v137.i64[0] = v30;
          v137.i64[1] = v31;
          *&v138 = v32;
          *(&v138 + 1) = v33;
          v139 = v48;
          v49 = v135;
LABEL_63:
          sub_2412580E8(v49);
          return;
        }

        v103 = v7;
        v106 = v3;
        v113 = v4;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34.n128_u64[0] = v18;
        v34.n128_u64[1] = v108;
        v107 = v34;
        v35 = 0uLL;
        v36 = 4;
      }

      else
      {
        v103 = v7;
        v113 = v4;
        v37 = v3;
        [v1 assetWorldPosition];
        v106 = v3;
        sub_24125624C(1, v3, &v126, a1, v6, v5, v38);

        v36 = v126;
        v27 = v127;
        v28 = v128;
        v29 = v129;
        v30 = v130;
        v31 = v131;
        v32 = v132;
        v33 = v133;
        v35 = v134;
        if (v126 == 4)
        {
          v109 = v134;
          v39 = v127;

LABEL_30:
          v47 = v39;
          v48 = v109;
          goto LABEL_31;
        }

        v40 = v134;
        v40.n128_u32[3] = 0;
        v107 = v40;
      }

      v41 = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_entityWorldPosistionRefreshGuard];
      v42 = v41 < 1;
      v43 = v41 - 1;
      if (!v42)
      {
        *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_entityWorldPosistionRefreshGuard] = v43;
        v117[0] = v36;
        v117[1] = v27;
        *&v118 = v28;
        *(&v118 + 1) = v29;
        v119.i64[0] = v30;
        v119.i64[1] = v31;
        *&v120 = v32;
        *(&v120 + 1) = v33;
        v44 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
        v121 = v35;
        if (v36 == 4)
        {
          v45 = 0;
          v46 = v103;
        }

        else
        {
          v135[0] = v36;
          v101 = v118;
          v102 = v119;
          v136 = v118;
          v137 = v119;
          v100 = v120;
          v138 = v120;
          v139 = v35;
          v110 = v35;
          v50 = objc_opt_self();
          sub_241257A94(v36);
          if ([v50 useSceneReconstructionMeshForOrientation])
          {
            v51 = vmulq_f32(v119, v119);
            *&v52 = v51.f32[2] + vaddv_f32(*v51.f32);
            *v51.f32 = vrsqrte_f32(v52);
            *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32)));
            v99 = vmulq_n_f32(v119, vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))).f32[0]);
            sub_241352C5C();
            sub_2413519BC();
            sub_2412AC428(v54, v53);
            v56 = vmulq_f32(v55, v55);
            *&v57 = v56.f32[2] + vaddv_f32(*v56.f32);
            *v56.f32 = vrsqrte_f32(v57);
            *v56.f32 = vmul_f32(*v56.f32, vrsqrts_f32(v57, vmul_f32(*v56.f32, *v56.f32)));
            *v58.i64 = simd_quaternion(vmulq_n_f32(v55, vmul_f32(*v56.f32, vrsqrts_f32(v57, vmul_f32(*v56.f32, *v56.f32))).f32[0]), v99);
            v98 = v58;
            sub_2413518EC();
            v45 = 0;
            v59 = 0;
            v61 = vnegq_f32(v60);
            v62 = vtrn2q_s32(v60, vtrn1q_s32(v60, v61));
            v63 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v60, v61, 8uLL), *v98.f32, 1), vextq_s8(v62, v62, 8uLL), v98.f32[0]);
            v64 = vrev64q_s32(v60);
            v64.i32[0] = v61.i32[1];
            v64.i32[3] = v61.i32[2];
            v65 = vaddq_f32(v63, vmlaq_laneq_f32(vmulq_laneq_f32(v60, v98, 3), v64, v98, 2));
            v66 = v65.i64[1];
            v67 = v65.i64[0];
          }

          else
          {
            sub_2412D17DC(v135);
            v67 = v68;
            v66 = v69;
            v59 = v70;
            v45 = v70 ^ 1;
            sub_2412D1C38(v135);
          }

          v71 = &v2[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
          v72 = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 64];
          v116[2] = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 48];
          v116[3] = v72;
          v116[4] = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 80];
          v73 = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 32];
          v116[0] = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 16];
          v116[1] = v73;
          *(v71 + 2) = v36;
          *(v71 + 2) = v101;
          *(v71 + 3) = v102;
          *(v71 + 4) = v100;
          *(v71 + 5) = v110;
          sub_2412580E8(v116);
          if ((v59 & 1) == 0)
          {
            v74.n128_u64[0] = v67;
            v74.n128_u64[1] = v66;
            v111 = v74;
            v46 = v103;
            v44 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
            goto LABEL_39;
          }

          v46 = v103;
          v44 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
        }

        v111 = *(*&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator] + 96);
LABEL_39:
        v75 = objc_opt_self();
        if ([v75 shouldRevertToOldHapticsBehavior])
        {
          if (v45)
          {
            v76 = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
            if (v76)
            {
              v77 = [v76 feedbackGenerator];
              v78 = [v77 snapAwayFromScaleFeedbackGenerator];

              if (!v78)
              {
                __break(1u);
                goto LABEL_65;
              }

              [v78 fire];
              swift_unknownObjectRelease();
            }
          }
        }

        if (([objc_opt_self() v44[60]] & 1) == 0 && (v2[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48] & 1) == 0)
        {
          *v79.f32 = sub_24124674C();
          v80 = vaddq_f32(v107, v79);
          v80.i32[3] = 0;
          v107 = v80;
        }

        v81 = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator];
        v82 = vsubq_f32(v107, v81[4]);
        v83 = vmulq_f32(v82, v82);
        v84 = v83.f32[2] + vaddv_f32(*v83.f32);
        MEMORY[0x245CE24B0](v111);
        v86 = vmulq_f32(v85, v85);
        *&v87 = v86.f32[2] + vaddv_f32(*v86.f32);
        *v86.f32 = vrsqrte_f32(v87);
        *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32)));
        v88 = vmulq_n_f32(v85, vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32))).f32[0]);
        if (qword_27E537C40 != -1)
        {
          v105 = v88;
          swift_once();
          v88 = v105;
        }

        v89 = sqrtf(v84);
        v90 = vmulq_f32(v88, xmmword_27E541820);
        if (fabsf(v90.f32[2] + vaddv_f32(*v90.f32)) <= 0.1)
        {
          if (!(v45 & 1 | (v89 > 0.35)))
          {
LABEL_52:
            if (v81[8].i8[8])
            {
              sub_241352C5C();
              sub_24135190C();
            }

            v81[4] = v107;
            goto LABEL_57;
          }
        }

        else if (!(v45 & 1 | (v89 > 0.35)) && vabds_f32(v107.n128_f32[1], v81[4].f32[1]) <= 0.05)
        {
          goto LABEL_52;
        }

        sub_241352C5C();
        sub_24135196C();
        v104 = v91;
        sub_2413518EC();
        sub_2412DE47C(v104, v92, v107, v111);
LABEL_57:
        if (v89 <= 0.35)
        {
          goto LABEL_62;
        }

        if ([v75 shouldRevertToOldHapticsBehavior])
        {
          goto LABEL_62;
        }

        v93 = *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
        if (!v93)
        {
          goto LABEL_62;
        }

        v94 = [v93 feedbackGenerator];
        v95 = [v94 snapAwayFromScaleFeedbackGenerator];

        if (v95)
        {
          [v95 fire];
          swift_unknownObjectRelease();
LABEL_62:
          [v113 timestamp];
          v97 = v96;

          *&v2[v46] = v97;
          *&v2[OBJC_IVAR____TtC11AssetViewer16EntityController_lastScreenPointForMovement] = a1.i64[0];
          v49 = v117;
          goto LABEL_63;
        }

LABEL_65:
        __break(1u);
        return;
      }

      v109 = v35;
      v39 = v27;

      goto LABEL_30;
    }
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v10 = sub_241352FFC();
  __swift_project_value_buffer(v10, qword_27E53A538);
  osloga = sub_241352FDC();
  v11 = sub_2413540BC();
  if (os_log_type_enabled(osloga, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_241215000, osloga, v11, "Couldn't get frame/worldRaycastStrategy", v12, 2u);
    MEMORY[0x245CE4870](v12, -1, -1);
  }
}

uint64_t sub_2412D38F4()
{
  sub_24124954C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARObjectWasLevitated) & 1) == 0)
    {
      *(Strong + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsARObjectWasLevitated) = 1;
      [objc_opt_self() sendAnalyticsWithEvent_];
    }

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_2412979B0();
    if ((v3 & 1) == 0)
    {
      v4 = sub_241287420();
      v5 = v4[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

      if ((v5 & 1) == 0 && v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] == 3)
      {
        v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 4;
        [v2 updateInterfaceState];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2412D3A08(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
  if (!v2 || (v3 = a1, v4 = , v5 = v2(v4), result = sub_24124B1F0(v2), a1 = v3, (v5 & 1) == 0))
  {
    sub_241247088(a1, 0.0);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      sub_2412979B0();
      if ((v8 & 1) == 0)
      {
        v9 = sub_241287420();
        v10 = v9[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

        if ((v10 & 1) == 0 && v7[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] == 3)
        {
          v7[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 4;
          [v7 updateInterfaceState];
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2412D3B28()
{
  v1 = v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState;
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 8) != 1)
  {
    goto LABEL_5;
  }

  result = sub_241323A38();
  if (result)
  {
    result = sub_24133D85C(*(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8));
    *(v1 + 8) = 0;
    return result;
  }

  if ((*(v1 + 8) & 1) == 0)
  {
LABEL_5:
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8);

    return sub_24133D85C(v3);
  }

  return result;
}

uint64_t sub_2412D3BC0()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_241297D88(v0, 0);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_2412979B0();
    if ((v3 & 1) == 0)
    {
      v4 = sub_241287420();
      v5 = v4[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

      if ((v5 & 1) == 0 && v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] == 3)
      {
        v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 4;
        [v2 updateInterfaceState];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioPlaybackState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioPlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_2412D3D38()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539770);
  __swift_project_value_buffer(v0, qword_27E539770);
  return sub_241352FEC();
}

uint64_t sub_2412D3DB8()
{
  v0 = sub_2413517DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_241351BEC())
  {
    if (sub_24135208C())
    {
      REAudioFileAssetGetLengthInSeconds();
      sub_24135296C();
      sub_2413516FC();
      (*(v1 + 8))(v3, v0);
      REAudioPlayerComponentGetComponentType();
      v4 = REEntityGetOrAddComponentByClass();
      REAudioPlayerComponentRegisterAsset();
      v5 = REAudioPlayerComponentPrepareAsset();
      sub_24135209C();
      REAudioPlayerComponentSetLinearGainForToken();
      REAudioPlayerComponentPlayToken();
      MEMORY[0x245CE3440](v4, v5);

      return v4;
    }

    if (qword_27E537BE0 != -1)
    {
      swift_once();
    }

    v11 = sub_241352FFC();
    __swift_project_value_buffer(v11, qword_27E539770);
    v12 = sub_241352FDC();
    v13 = sub_2413540BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_241215000, v12, v13, "Cannot manually setup audio action since there is audioAssetRef", v14, 2u);
      MEMORY[0x245CE4870](v14, -1, -1);
    }
  }

  else
  {
    if (qword_27E537BE0 != -1)
    {
      swift_once();
    }

    v7 = sub_241352FFC();
    __swift_project_value_buffer(v7, qword_27E539770);
    v8 = sub_241352FDC();
    v9 = sub_2413540BC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_241215000, v8, v9, "Cannot manually setup audio action since there is no target entity", v10, 2u);
      MEMORY[0x245CE4870](v10, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_2412D40D0()
{
  v0 = sub_2413520BC();
  v1 = sub_2412D4638(v0);

  v31 = MEMORY[0x277D84F90];
  v7 = v1 >> 62;
  if (v1 >> 62)
  {
    v8 = sub_2413544EC();
  }

  else
  {
    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = (v1 & 0xC000000000000001);
  if (!v8)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v10 = 0;
  v30 = MEMORY[0x277D84F90];
  while (2)
  {
    v11 = v10;
    while (1)
    {
      if (v9)
      {
        MEMORY[0x245CE29C0](v11, v1);
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          swift_once();
          v2 = sub_241352FFC();
          __swift_project_value_buffer(v2, qword_27E539770);
          v3 = sub_241352FDC();
          v4 = sub_2413540BC();
          if (os_log_type_enabled(v3, v4))
          {
            v5 = swift_slowAlloc();
            *v5 = 0;
            _os_log_impl(&dword_241215000, v3, v4, "More than one sequence group action - will not show animation scrubber", v5, 2u);
            MEMORY[0x245CE4870](v5, -1, -1);
          }

          return 0;
        }
      }

      sub_24135245C();
      if (swift_dynamicCastClass())
      {
        break;
      }

LABEL_11:
      ++v11;
      if (v10 == v8)
      {
        goto LABEL_26;
      }
    }

    v12 = sub_241351BEC();

    if (!v12)
    {
      goto LABEL_11;
    }

    MEMORY[0x245CE21C0](v13);
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_241353E4C();
    }

    sub_241353E6C();
    v30 = v31;
    if (v10 != v8)
    {
      continue;
    }

    break;
  }

LABEL_26:
  if (qword_27E537BE0 != -1)
  {
    swift_once();
  }

  v14 = sub_241352FFC();
  __swift_project_value_buffer(v14, qword_27E539770);
  v6 = v30;

  v15 = sub_241352FDC();
  v16 = sub_2413540DC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v17 = 136315138;
    v18 = sub_241352C5C();
    v19 = MEMORY[0x245CE21F0](v30, v18);
    v21 = sub_2412DDC2C(v19, v20, &v31);
    v6 = v30;

    *(v17 + 4) = v21;
    v7 = v1 >> 62;
    _os_log_impl(&dword_241215000, v15, v16, "animateActions: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x245CE4870](v29, -1, -1);
    MEMORY[0x245CE4870](v17, -1, -1);
  }

  v22 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  if (v8)
  {
    v23 = 0;
    do
    {
      v24 = v23;
      while (1)
      {
        if (v9)
        {
          MEMORY[0x245CE29C0](v24, v1);
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v24 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_56;
          }
        }

        sub_2413520AC();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v24;
        if (v23 == v8)
        {
          goto LABEL_45;
        }
      }

      MEMORY[0x245CE21C0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241353E4C();
      }

      sub_241353E6C();
      v22 = v31;
    }

    while (v23 != v8);
  }

LABEL_45:
  if (v6 >> 62)
  {
    v25 = sub_2413544EC();
    if (v22 >> 62)
    {
      goto LABEL_60;
    }

LABEL_47:
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v25 + result;
    if (__OFADD__(v25, result))
    {
      goto LABEL_62;
    }

LABEL_48:
    if (v7)
    {
      v28 = sub_2413544EC();
    }

    else
    {
      v28 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27 != v28)
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  else
  {
    v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v22 >> 62))
    {
      goto LABEL_47;
    }

LABEL_60:
    result = sub_2413544EC();
    v27 = v25 + result;
    if (!__OFADD__(v25, result))
    {
      goto LABEL_48;
    }

LABEL_62:
    __break(1u);
  }

  return result;
}

uint64_t sub_2412D4638(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24135204C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135207C();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
LABEL_45:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_241365C30;
    *(v9 + 32) = a1;

    return v9;
  }

  v9 = v8;

  sub_24135205C();
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 == *MEMORY[0x277CDAE38])
  {
    isUniquelyReferenced_nonNull_bridgeObject = sub_24135203C();
    if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
    {
      goto LABEL_59;
    }

    v12 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = a1;
    v41 = isUniquelyReferenced_nonNull_bridgeObject;
    while (v12)
    {
      v13 = 0;
      v48 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
      v49 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
      v9 = MEMORY[0x277D84F90];
      v46 = v12;
      v47 = isUniquelyReferenced_nonNull_bridgeObject + 32;
      while (v49)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245CE29C0](v13, v41);
        a1 = isUniquelyReferenced_nonNull_bridgeObject;
        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_53;
        }

LABEL_11:
        v15 = sub_2412D4638(a1);
        if (v2)
        {

          return v9;
        }

        v16 = v15;
        v17 = v15 >> 62;
        if (v15 >> 62)
        {
          v18 = sub_2413544EC();
        }

        else
        {
          v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = v9 >> 62;
        if (v9 >> 62)
        {
          v34 = sub_2413544EC();
          v21 = v34 + v18;
          if (__OFADD__(v34, v18))
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v21 = v20 + v18;
          if (__OFADD__(v20, v18))
          {
            goto LABEL_44;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v52 = a1;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v19)
          {
            goto LABEL_23;
          }

LABEL_22:
          sub_2413544EC();
          goto LABEL_23;
        }

        if (v19)
        {
          goto LABEL_22;
        }

        v22 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v21 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = v18;
          goto LABEL_24;
        }

LABEL_23:
        v23 = v18;
        isUniquelyReferenced_nonNull_bridgeObject = sub_24135461C();
        v9 = isUniquelyReferenced_nonNull_bridgeObject;
        v22 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
        v24 = *(v22 + 16);
        v25 = *(v22 + 24);
        if (v17)
        {
          v26 = v22;
          isUniquelyReferenced_nonNull_bridgeObject = sub_2413544EC();
          v22 = v26;
          a1 = isUniquelyReferenced_nonNull_bridgeObject;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
LABEL_6:

            if (v23 > 0)
            {
              goto LABEL_55;
            }

            goto LABEL_7;
          }
        }

        else
        {
          a1 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a1)
          {
            goto LABEL_6;
          }
        }

        if (((v25 >> 1) - v24) < v23)
        {
          goto LABEL_56;
        }

        v27 = v22 + 8 * v24 + 32;
        v50 = v22;
        if (v17)
        {
          if (a1 < 1)
          {
            goto LABEL_58;
          }

          v42 = v23;
          v43 = v13;
          v44 = v9;
          v45 = 0;
          sub_2412D5264();
          v28 = 0;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538918);
            v29 = sub_2412EA150(v51, v28, v16);
            v31 = *v30;

            (v29)(v51, 0);
            *(v27 + 8 * v28++) = v31;
          }

          while (a1 != v28);

          v9 = v44;
          v2 = v45;
          v23 = v42;
          v13 = v43;
        }

        else
        {
          a1 = v16 & 0xFFFFFFFFFFFFFF8;
          sub_241351C0C();
          swift_arrayInitWithCopy();
        }

        if (v23 > 0)
        {
          v32 = *(v50 + 16);
          v14 = __OFADD__(v32, v23);
          v33 = v32 + v23;
          if (v14)
          {
            goto LABEL_57;
          }

          *(v50 + 16) = v33;
        }

LABEL_7:
        if (v13 == v46)
        {
          goto LABEL_61;
        }
      }

      if (v13 >= *(v48 + 16))
      {
        goto LABEL_54;
      }

      a1 = *(v47 + 8 * v13);

      v14 = __OFADD__(v13++, 1);
      if (!v14)
      {
        goto LABEL_11;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v37 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = sub_2413544EC();
      isUniquelyReferenced_nonNull_bridgeObject = v37;
      v40 = a1;
      v41 = v37;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_61:

    goto LABEL_62;
  }

  if (v10 == *MEMORY[0x277CDAE40])
  {
    v35 = sub_24135203C();
    if (v35 >> 62)
    {
      v36 = sub_2413544EC();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36 < 2)
    {
      v9 = sub_24135202C();
LABEL_62:

      return v9;
    }

    sub_2412D5210();
    swift_allocError();
    swift_willThrow();

    return v9;
  }

  result = sub_2413547DC();
  __break(1u);
  return result;
}

uint64_t sub_2412D4BE0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_24;
  }

  v3 = 1;
  while (2)
  {
    v2 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245CE29C0](v2, a1);
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_17;
      }

LABEL_10:
      v20 = v5;
      sub_2412D4EC4(&v19);

      if (v19)
      {
        v18 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2412A1A28(0, v4[2] + 1, 1, v4);
        }

        v8 = v4[2];
        v7 = v4[3];
        v9 = v18;
        if (v8 >= v7 >> 1)
        {
          v10 = sub_2412A1A28((v7 > 1), v8 + 1, 1, v4);
          v9 = v18;
          v4 = v10;
        }

        v4[2] = v8 + 1;
        *&v4[2 * v8 + 4] = v9;
      }

      ++v2;
      if (v6 == v3)
      {
        goto LABEL_22;
      }
    }

    if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v5 = *(a1 + 8 * v2 + 32);

    v6 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (sub_2413544EC() == 1)
    {
      v3 = sub_2413544EC();
      if (!v3)
      {
        v4 = MEMORY[0x277D84F90];
LABEL_22:
        if (v4[2] == 1)
        {
          v11 = v4[4];

          return v11;
        }

LABEL_30:

        return MEMORY[0x277D84F90];
      }

      continue;
    }

    break;
  }

LABEL_24:
  if (qword_27E537BE0 != -1)
  {
    swift_once();
  }

  v13 = sub_241352FFC();
  __swift_project_value_buffer(v13, qword_27E539770);

  v14 = sub_241352FDC();
  v15 = sub_2413540DC();
  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_30;
  }

  v16 = swift_slowAlloc();
  *v16 = 134217984;
  if (v2)
  {
    v17 = sub_2413544EC();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v16 + 4) = v17;

  _os_log_impl(&dword_241215000, v14, v15, "Early return, entities and audio actions from on-start requires exactly one trigger, count: %ld", v16, 0xCu);
  MEMORY[0x245CE4870](v16, -1, -1);

  return MEMORY[0x277D84F90];
}

uint64_t sub_2412D4EC4@<X0>(void *a1@<X8>)
{
  sub_2413520BC();
  sub_24135207C();
  if (swift_dynamicCastClass() && sub_24135206C() != 1)
  {
    if (qword_27E537BE0 != -1)
    {
      swift_once();
    }

    v3 = sub_241352FFC();
    __swift_project_value_buffer(v3, qword_27E539770);
    v4 = sub_241352FDC();
    v5 = sub_2413540DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_241215000, v4, v5, "Animation scrubber - Loop count != 1, returning", v6, 2u);
      MEMORY[0x245CE4870](v6, -1, -1);
    }
  }

  else
  {

    sub_2413520CC();
    sub_24135217C();
    if (swift_dynamicCastClass())
    {
      v2 = sub_24135216C();
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_241365C30;
      *(v2 + 32) = sub_2413520CC();
    }

    v16 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
LABEL_26:
      v8 = sub_2413544EC();
      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_13:
        v15 = a1;
        v9 = 0;
        a1 = (v2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x245CE29C0](v9, v2);
            v10 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              v12 = v16;
              a1 = v15;
              goto LABEL_28;
            }
          }

          else
          {
            if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_26;
            }

            v10 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_23;
            }
          }

          sub_241351C5C();
          swift_allocObject();
          sub_241351C4C();
          v11 = sub_241351D6C();

          if (v11)
          {
            sub_24135464C();
            sub_24135467C();
            sub_24135468C();
            sub_24135465C();
          }

          else
          {
          }

          ++v9;
          if (v10 == v8)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v12 = MEMORY[0x277D84F90];
LABEL_28:

    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      v13 = sub_2413544EC();
    }

    else
    {
      v13 = *(v12 + 16);
    }

    if (v13 == 1)
    {
      result = sub_2412D40D0();
      *a1 = result;
      a1[1] = v14;
      return result;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

unint64_t sub_2412D5210()
{
  result = qword_27E539788;
  if (!qword_27E539788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539788);
  }

  return result;
}

unint64_t sub_2412D5264()
{
  result = qword_27E539790;
  if (!qword_27E539790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E538918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539790);
  }

  return result;
}

unint64_t sub_2412D52DC()
{
  result = qword_27E539798;
  if (!qword_27E539798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539798);
  }

  return result;
}

id sub_2412D5330()
{
  result = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  qword_27E5417B0 = result;
  return result;
}

uint64_t sub_2412D5388()
{
  v0 = sub_24135415C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24135413C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2413538FC();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2412D5590();
  sub_2413538DC();
  v7[1] = MEMORY[0x277D84F90];
  sub_2412D55DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538370);
  sub_2412D5634();
  sub_24135444C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_24135419C();
  qword_27E5417C0 = result;
  return result;
}

unint64_t sub_2412D5590()
{
  result = qword_27E538920;
  if (!qword_27E538920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E538920);
  }

  return result;
}

unint64_t sub_2412D55DC()
{
  result = qword_27E538368;
  if (!qword_27E538368)
  {
    sub_24135413C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538368);
  }

  return result;
}

unint64_t sub_2412D5634()
{
  result = qword_27E538378;
  if (!qword_27E538378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E538370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538378);
  }

  return result;
}

uint64_t sub_2412D5698(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2412D56DC()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E5397A0);
  __swift_project_value_buffer(v0, qword_27E5397A0);
  return sub_241352FEC();
}

uint64_t sub_2412D575C()
{
  v0 = sub_24135152C();
  __swift_allocate_value_buffer(v0, qword_27E5397B8);
  __swift_project_value_buffer(v0, qword_27E5397B8);
  return sub_24135141C();
}

uint64_t sub_2412D57C0()
{
  v0 = sub_24135152C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_27E5397D0);
  __swift_project_value_buffer(v0, qword_27E5397D0);
  if (qword_27E537C08 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27E5397B8);
  (*(v1 + 16))(v3, v5, v0);
  sub_24135146C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2412D5918()
{
  v0 = sub_24135152C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_27E5397E8);
  __swift_project_value_buffer(v0, qword_27E5397E8);
  if (qword_27E537C08 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27E5397B8);
  (*(v1 + 16))(v3, v5, v0);
  sub_24135146C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2412D5B50(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_241246210(a1, &v10 - v5, &qword_27E538750);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_modelURL;
  swift_beginAccess();
  sub_24124AF2C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_2412D5C28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_modelURL;
  swift_beginAccess();
  return sub_241246210(v1 + v3, a1, &qword_27E538750);
}

uint64_t sub_2412D5C90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_modelURL;
  swift_beginAccess();
  sub_24124AF2C(a1, v1 + v3);
  return swift_endAccess();
}

AssetViewer::DebugRecordReplayViewController::Command_optional __swiftcall DebugRecordReplayViewController.Command.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24135486C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugRecordReplayViewController.Command.rawValue.getter()
{
  if (*v0)
  {
    return 0x766572506C717261;
  }

  else
  {
    return 0x6B63616279616C70;
  }
}

uint64_t sub_2412D5E00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x766572506C717261;
  }

  else
  {
    v3 = 0x6B63616279616C70;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF6D657449776569;
  }

  if (*a2)
  {
    v5 = 0x766572506C717261;
  }

  else
  {
    v5 = 0x6B63616279616C70;
  }

  if (*a2)
  {
    v6 = 0xEF6D657449776569;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24135497C();
  }

  return v8 & 1;
}

uint64_t sub_2412D5EB4()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_2412D5F44()
{
  sub_241353CCC();
}

uint64_t sub_2412D5FC0()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_2412D604C@<X0>(char *a1@<X8>)
{
  v2 = sub_24135486C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_2412D60AC(uint64_t *a1@<X8>)
{
  v2 = 0x6B63616279616C70;
  if (*v1)
  {
    v2 = 0x766572506C717261;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF6D657449776569;
  }

  *a1 = v2;
  a1[1] = v3;
}

id DebugRecordReplayViewController.init(shouldShowRenderingOverlay:arRecordingURL:command:)(int a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_24135152C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a3;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC] = 0;
  v12 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for DebugRecordReplayOverlayView()) init];
  v33 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_renderingEffectsData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539828);
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539830) - 8);
  v14 = *(*v13 + 72);
  v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_241366520;
  v17 = v16 + v15;
  v18 = v16 + v15 + v13[14];
  sub_24135274C();
  strcpy(v18, "Camera Noise");
  *(v18 + 13) = 0;
  *(v18 + 14) = -5120;
  v19 = (v17 + v14 + v13[14]);
  sub_24135277C();
  *v19 = 0x73776F64616853;
  v19[1] = 0xE700000000000000;
  v20 = (v17 + 2 * v14 + v13[14]);
  sub_24135273C();
  *v20 = 0x42206E6F69746F4DLL;
  v20[1] = 0xEB0000000072756CLL;
  v21 = (v17 + 3 * v14 + v13[14]);
  sub_24135275C();
  strcpy(v21, "Depth of Field");
  v21[15] = -18;
  v22 = (v17 + 4 * v14 + v13[14]);
  sub_24135272C();
  *v22 = 5391432;
  v22[1] = 0xE300000000000000;
  v23 = (v17 + 5 * v14 + v13[14]);
  sub_24135276C();
  *v23 = 0xD000000000000010;
  v23[1] = 0x8000000241360C50;
  *&v4[v33] = v16;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state] = 0;
  *&v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_focalDataForRecording] = MEMORY[0x277D84F90];
  (*(v10 + 56))(&v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_modelURL], 1, 1, v9);
  v24 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_command;
  v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_command] = 2;
  *&v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkTimer] = 0;
  sub_2413527AC();
  v39 = 0;
  sub_2412DC61C(&qword_27E539850, MEMORY[0x277CDB620]);
  v25 = v35;
  sub_241354B7C();
  v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkShouldEnable] = 1;
  *&v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController____lazy_storage___replayObserver] = 0;
  v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_shouldShowRenderingOverlay] = v36;
  sub_241246210(v25, v8, &qword_27E538750);
  v26 = *(v10 + 48);
  if (v26(v8, 1, v9) == 1)
  {
    v27 = v34;
    if (qword_27E537C10 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v9, qword_27E5397D0);
    (*(v10 + 16))(v27, v28, v9);
    if (v26(v8, 1, v9) != 1)
    {
      sub_241246278(v8, &qword_27E538750);
    }
  }

  else
  {
    v27 = v34;
    (*(v10 + 32))(v34, v8, v9);
  }

  (*(v10 + 32))(&v4[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arRecordingURL], v27, v9);
  v4[v24] = v37;
  v29 = type metadata accessor for DebugRecordReplayViewController();
  v38.receiver = v4;
  v38.super_class = v29;
  v30 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
  sub_241246278(v25, &qword_27E538750);
  return v30;
}

uint64_t type metadata accessor for DebugRecordReplayViewController()
{
  result = qword_27E539908;
  if (!qword_27E539908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2412D6774()
{
  v1 = v0;
  v2 = sub_2413538CC();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2413538FC();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24135391C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v15 = sub_241352FFC();
  __swift_project_value_buffer(v15, qword_27E53A538);
  v16 = sub_241352FDC();
  v17 = sub_2413540AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_241215000, v16, v17, "@@@@@ debug view viewDidLoad()", v18, 2u);
    MEMORY[0x245CE4870](v18, -1, -1);
  }

  v19 = type metadata accessor for DebugRecordReplayViewController();
  v36.receiver = v1;
  v36.super_class = v19;
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v20 = [v1 navigationController];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 navigationBar];

    [v22 setHidden_];
  }

  sub_241246158(0, &qword_27E538920);
  v23 = sub_24135416C();
  sub_24135390C();
  sub_24135393C();
  v29 = *(v9 + 8);
  v29(v11, v8);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  aBlock[4] = sub_2412DBEB4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_4;
  v25 = _Block_copy(aBlock);
  v26 = v1;
  sub_2413538DC();
  v34 = MEMORY[0x277D84F90];
  sub_2412DC61C(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_2412DBED4();
  v27 = v33;
  sub_24135444C();
  MEMORY[0x245CE2500](v14, v7, v4, v25);
  _Block_release(v25);

  (*(v32 + 8))(v4, v27);
  (*(v30 + 8))(v7, v31);
  v29(v14, v8);
}

void sub_2412D6C44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_24135152C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_modelURL;
  swift_beginAccess();
  sub_241246210(a1 + v12, v4, &qword_27E538750);
  v13 = *(v6 + 48);
  v14 = v13(v4, 1, v5);
  v42 = v5;
  if (v14 == 1)
  {
    v15 = v11;
    v16 = [objc_opt_self() mainBundle];
    v17 = sub_241353BDC();
    v18 = [v16 URLForResource:v17 withExtension:0];

    if (!v18)
    {
      goto LABEL_15;
    }

    sub_2413514AC();

    v11 = v15;
    v19 = v15;
    v20 = v42;
    (*(v6 + 32))(v19, v8, v42);
    if (v13(v4, 1, v20) != 1)
    {
      sub_241246278(v4, &qword_27E538750);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
  }

  v21 = [objc_allocWithZone(type metadata accessor for PreviewViewController(0)) initWithNibName:0 bundle:0];
  [v21 setModalPresentationStyle_];
  [a1 presentViewController:v21 animated:0 completion:0];

  _s11AssetViewer21PreviewViewControllerC25presentationModeDidChange_8animatedySo014QLPresentationG0V_SbtF_0(2);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  v23 = v21;
  v24 = a1;
  v41 = v11;
  PreviewViewController.preparePreviewOfFile(at:completionHandler:)(v11, sub_2412DC758, v22);

  v25 = sub_241287420();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2412DC760;
  *(v27 + 24) = v26;
  v28 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_additionalDismissObservers;
  swift_beginAccess();
  v29 = *&v25[v28];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[v28] = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_2412A1DD0(0, v29[2] + 1, 1, v29);
    *&v25[v28] = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_2412A1DD0((v31 > 1), v32 + 1, 1, v29);
  }

  v29[2] = v32 + 1;
  v33 = &v29[2 * v32];
  v33[4] = sub_241246138;
  v33[5] = v27;
  *&v25[v28] = v29;
  swift_endAccess();

  v34 = *&v24[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC];
  *&v24[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC] = v23;
  v35 = v23;

  v36 = *&v35[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (v36)
  {
    v37 = *(v36 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    v39 = v41;
    v38 = v42;
    if (v37)
    {
      v40 = [v37 session];
      swift_unknownObjectWeakAssign();

      sub_2412D75C4(v35);
      (*(v6 + 8))(v39, v38);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_2412D7180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v4 = *(a2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v4)
  {
    __break(1u);
    goto LABEL_32;
  }

  v5 = *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v5)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = *&v5[qword_27E53A1C8];
  *&v5[qword_27E53A1C8] = 2;
  v9 = v5;
  sub_24131AD44(v8);

  v10 = *(a2 + v3);
  if (!v10)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v25 = a3;
  v11 = *(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v11 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {

    if (!i)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x245CE29C0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (qword_27E537C38 != -1)
      {
        swift_once();
      }

      sub_241352C5C();
      sub_24135190C();

      ++v13;
      if (v16 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_17:

  v17 = sub_241287420();
  v18 = *&v17[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_touchesOnScreenGestureRecognizer];

  [v18 setEnabled_];
  v19 = *(v25 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_command);
  if (v19 != 2)
  {
    if (v19)
    {
      v20 = sub_24135497C();

      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    if (qword_27E537C00 != -1)
    {
      swift_once();
    }

    v21 = sub_241352FFC();
    __swift_project_value_buffer(v21, qword_27E5397A0);
    v22 = sub_241352FDC();
    v23 = sub_2413540DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_241215000, v22, v23, "Starting playback automation…", v24, 2u);
      MEMORY[0x245CE4870](v24, -1, -1);
    }

    sub_2412DB20C();
  }
}

void sub_2412D74D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC;
    v3 = *(Strong + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
    if (v3)
    {
      v4 = v3;
      _s11AssetViewer21PreviewViewControllerC20previewWillDisappearyySbF_0();
      [v4 dismissViewControllerAnimated:1 completion:0];
      _s11AssetViewer21PreviewViewControllerC19previewDidDisappearyySbF_0();

      v5 = *&v1[v2];
      *&v1[v2] = 0;

      v1 = v5;
    }
  }
}

void sub_2412D75C4(char *a1)
{
  v2 = v1;
  v4 = sub_2413527AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538950);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539830);
  MEMORY[0x28223BE20](v67);
  v66 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v65 = &v53 - v21;
  v22 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v23 = *&a1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v23)
  {
    __break(1u);
    goto LABEL_23;
  }

  v59 = v19;
  v24 = *(v23 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v61 = v4;
  v25 = [v24 session];
  [v25 setDelegate_];

  v26 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView);
  *&v26[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_delegate + 8] = &off_285301BC8;
  swift_unknownObjectWeakAssign();
  [*&v26[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton] addTarget:v2 action:sel_recordButtonPressed forControlEvents:64];
  [*&v26[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_playButton] addTarget:v2 action:sel_playButtonPressed forControlEvents:64];
  [*&v26[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_resetButton] addTarget:v2 action:sel_resetButtonPressed forControlEvents:64];
  [*&v26[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_blinkButton] addTarget:v2 action:sel_blinkButtonPressed forControlEvents:64];
  v27 = [a1 view];
  if (!v27)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  v60 = v22;
  [v27 addSubview_];

  UIView.pinToSuperviewEdges()();
  v29 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v2 action:sel_tappedWithRecognizer_];
  v64 = v26;
  [v26 addGestureRecognizer_];
  v63 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_shouldShowRenderingOverlay);
  v62 = v29;
  if (v63 == 1)
  {
    v58 = v13;
    v30 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_renderingEffectsData);
    v31 = *(v30 + 16);
    v32 = MEMORY[0x277D84F90];
    if (v31)
    {
      v53 = v2;
      v54 = a1;
      v55 = v7;
      v56 = v10;
      v57 = v16;
      v68[0] = MEMORY[0x277D84F90];
      sub_2412DE1D4(0, v31, 0);
      v32 = v68[0];
      v33 = v30 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v34 = *(v59 + 72);
      v59 = v5;
      v35 = (v5 + 8);
      v36 = v61;
      do
      {
        v37 = v65;
        sub_241246210(v33, v65, &qword_27E539830);
        v38 = v66;
        sub_2412DC6E8(v37, v66);
        v39 = (v38 + *(v67 + 48));
        v40 = *v39;
        v41 = v39[1];
        (*v35)(v38, v36);
        v68[0] = v32;
        v43 = *(v32 + 16);
        v42 = *(v32 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2412DE1D4((v42 > 1), v43 + 1, 1);
          v36 = v61;
          v32 = v68[0];
        }

        *(v32 + 16) = v43 + 1;
        v44 = v32 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v33 += v34;
        --v31;
      }

      while (v31);
      v13 = v58;
      v5 = v59;
      v10 = v56;
      v16 = v57;
      a1 = v54;
      v7 = v55;
    }

    else
    {
      v13 = v58;
    }

    v29 = v62;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  sub_2412B6254(v32);
  sub_2412D7D70();
  if (!v63)
  {

    return;
  }

  v45 = *&a1[v60];
  if (!v45)
  {
    goto LABEL_25;
  }

  v46 = *(v45 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v46)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v47 = v46;

  sub_24135275C();
  v48 = sub_2413527CC();
  v49 = v7;
  v50 = v61;
  (*(v5 + 16))(v49);
  sub_2412DC61C(&qword_27E5399A0, MEMORY[0x277CDB620]);
  sub_2413543DC();
  if (sub_24135440C())
  {
    v51 = *(v5 + 8);
    v51(v10, v50);
    v51(v13, v50);
    v52 = 1;
  }

  else
  {
    sub_24135441C();
    (*(v5 + 8))(v13, v50);
    (*(v5 + 32))(v16, v10, v50);
    v52 = 0;
  }

  (*(v5 + 56))(v16, v52, 1, v50);
  sub_241246278(v16, &unk_27E538950);
  v48(v68, 0);
}

id sub_2412D7D70()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView);
  v2 = (v1 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton);
  v3 = *(v1 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton);
  v4 = sub_241353BDC();
  [v3 setTitle:v4 forState:0];

  v5 = (v1 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_playButton);
  v6 = *(v1 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_playButton);
  v7 = sub_241353BDC();
  [v6 setTitle:v7 forState:0];

  v8 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_resetButton;
  v9 = *(v1 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_resetButton);
  v10 = sub_241353BDC();
  [v9 setTitle:v10 forState:0];

  v11 = *(v1 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_blinkButton);
  v12 = sub_241353BDC();
  [v11 setTitle:v12 forState:0];

  [*v2 setEnabled_];
  [*v5 setEnabled_];
  result = [*(v1 + v8) setEnabled_];
  v14 = *(v0 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state);
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state))
  {
    v15 = v14 == 1;
    if (v14 == 1)
    {
      v16 = v2;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      v2 = v5;
    }

    v17 = *v16;
    v18 = sub_241353BDC();
    [v17 setTitle:v18 forState:0];

    v19 = *v2;

    return [v19 setEnabled_];
  }

  return result;
}

void sub_2412D7FA8()
{
  v1 = v0;
  sub_2413511EC();
  swift_allocObject();
  sub_2413511DC();
  v2 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_focalDataForRecording;
  v16 = *&v0[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_focalDataForRecording];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5399B8);
  sub_2412DC66C();
  v3 = sub_2413511CC();
  v5 = v4;

  if (qword_27E537C18 != -1)
  {
    swift_once();
  }

  v6 = sub_24135152C();
  __swift_project_value_buffer(v6, qword_27E5397E8);
  sub_24135155C();
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v7 = sub_241352FFC();
  __swift_project_value_buffer(v7, qword_27E53A538);
  v8 = v0;
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v11 = 134218242;
    *(v11 + 4) = *(*&v1[v2] + 16);

    *(v11 + 12) = 2080;
    sub_2412DC61C(&qword_27E539990, MEMORY[0x277CC9260]);
    v12 = sub_24135491C();
    v14 = sub_2412DDC2C(v12, v13, &v16);

    *(v11 + 14) = v14;
    _os_log_impl(&dword_241215000, v9, v10, "Saved focal data (%ld values) to %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x245CE4870](v15, -1, -1);
    MEMORY[0x245CE4870](v11, -1, -1);
    sub_24125D520(v3, v5);
  }

  else
  {

    sub_24125D520(v3, v5);
  }
}

void sub_2412D83D4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView);
  [a1 locationInView_];
  v4 = v3;
  v6 = v5 > 100.0 || v3 > 100.0;
  if (!v6 && [*&v2[OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomBackgroundView] isHidden])
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
      _os_log_impl(&dword_241215000, v8, v9, "Secretly disable depth of field", v10, 2u);
      MEMORY[0x245CE4870](v10, -1, -1);
    }
  }

  if (v4 <= 150.0)
  {
    v11 = &OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_topControlsStackView;
  }

  else
  {
    [v2 bounds];
    if (CGRectGetMaxY(v14) + -150.0 > v4)
    {
      return;
    }

    v11 = &OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomBackgroundView;
  }

  v12 = *&v2[*v11];
  [v12 setHidden_];
}

uint64_t sub_2412D8714()
{
  v1 = v0;
  v24 = sub_2413538CC();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2413538FC();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24135391C();
  v23 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v23 - v13;
  v15 = *&v0[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView];
  [*(v15 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_topControlsStackView) setHidden_];
  [*(v15 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomBackgroundView) setHidden_];
  sub_241246158(0, &qword_27E538920);
  v16 = sub_24135416C();
  sub_24135390C();
  sub_24135393C();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_2412DC664;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_80;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  sub_2413538DC();
  v28 = MEMORY[0x277D84F90];
  sub_2412DC61C(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_2412DBED4();
  v21 = v24;
  sub_24135444C();
  MEMORY[0x245CE2500](v14, v6, v3, v19);
  _Block_release(v19);

  (*(v27 + 8))(v3, v21);
  (*(v25 + 8))(v6, v26);
  v17(v14, v23);
}

void sub_2412D8B04(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v1)
  {
    v2 = v1;
    sub_241290C40();
  }
}

void sub_2412D8BA8()
{
  v1 = v0;
  v2 = sub_2413527AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkTimer;
  v8 = *&v0[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkTimer];
  if (!v8)
  {
    v16 = *&v0[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC];
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v18)
        {
          v19 = v4;
          v20 = v18;
          sub_2413527DC();

          v21 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_optionsToBlink;
          swift_beginAccess();
          (*(v3 + 40))(&v1[v21], v6, v19);
          swift_endAccess();
          v22 = objc_opt_self();
          v23 = swift_allocObject();
          *(v23 + 16) = v1;
          aBlock[4] = sub_2412DC614;
          aBlock[5] = v23;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2412D9CB0;
          aBlock[3] = &block_descriptor_74;
          v24 = _Block_copy(aBlock);
          v25 = v1;

          v26 = [v22 scheduledTimerWithTimeInterval:1 repeats:v24 block:0.5];
          _Block_release(v24);
          v27 = *&v1[v7];
          *&v1[v7] = v26;

          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v9 = qword_27E537CD0;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_241352FFC();
  __swift_project_value_buffer(v11, qword_27E53A538);
  v12 = sub_241352FDC();
  v13 = sub_2413540AC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_241215000, v12, v13, "@@@ clearing blink timer", v14, 2u);
    MEMORY[0x245CE4870](v14, -1, -1);
  }

  [v10 invalidate];
  v15 = *&v1[v7];
  *&v1[v7] = 0;
}

void sub_2412D8EE4(uint64_t a1, char *a2)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539830);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v4 = &v38 - v3;
  v5 = sub_2413527AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v9 = sub_241352FFC();
    v45 = __swift_project_value_buffer(v9, qword_27E53A538);
    v10 = sub_241352FDC();
    v11 = sub_2413540AC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v5;
      v13 = v4;
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_241215000, v10, v11, "@@@ blink timer ticked", v14, 2u);
      v15 = v14;
      v4 = v13;
      v5 = v12;
      MEMORY[0x245CE4870](v15, -1, -1);
    }

    v41 = *&a2[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_renderingEffectsData];
    v50 = *(v41 + 16);
    if (!v50)
    {
      break;
    }

    v44 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView;
    v16 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkShouldEnable;
    v48 = v41 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v49 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_optionsToBlink;
    swift_beginAccess();
    v17 = 0;
    v18 = *(v6 + 16);
    v6 += 16;
    v46 = v4 + 8;
    v47 = v18;
    v52 = (v6 - 8);
    *&v19 = 136315138;
    v40 = v19;
    v38 = v6;
    v39 = a2;
    v42 = v16;
    v43 = v8;
    v18(v8, &a2[v49], v5);
    while (1)
    {
      v20 = v48 + *(v51 + 72) * v17;
      sub_241246210(v20, v4, &qword_27E539830);

      sub_2412DC61C(&qword_27E5399A0, MEMORY[0x277CDB620]);
      v21 = sub_2413543CC();
      v22 = *v52;
      (*v52)(v8, v5);
      v22(v4, v5);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v23 = a2;
      v24 = sub_241352FDC();
      v8 = sub_2413540AC();

      if (os_log_type_enabled(v24, v8))
      {
        v6 = v5;
        v5 = v4;
        v4 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v54 = v25;
        *v4 = v40;
        if (v17 >= *(v41 + 16))
        {
          goto LABEL_23;
        }

        v26 = v25;
        sub_241246210(v20, v5, &qword_27E539830);
        v27 = (v5 + *(v53 + 48));
        v29 = *v27;
        v28 = v27[1];
        v22(v5, v6);
        v30 = sub_2412DDC2C(v29, v28, &v54);
        a2 = v39;

        *(v4 + 4) = v30;
        _os_log_impl(&dword_241215000, v24, v8, "@@@ skip blinking %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x245CE4870](v26, -1, -1);
        v31 = v4;
        v4 = v5;
        v5 = v6;
        MEMORY[0x245CE4870](v31, -1, -1);

        v6 = v38;
      }

      else
      {
      }

      v8 = v43;
LABEL_8:
      if (v50 == ++v17)
      {
        goto LABEL_21;
      }

      v47(v8, &a2[v49], v5);
    }

    v32 = [*(*&a2[v44] + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_bottomControlsStackView) arrangedSubviews];
    sub_241246158(0, &qword_27E539A90);
    v33 = sub_241353E2C();

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x245CE29C0](v17, v33);
      goto LABEL_17;
    }

    if (v17 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v33 + 8 * v17 + 32);
LABEL_17:
      v35 = v34;

      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      v37 = v42;
      if (v36)
      {
        [v36 setSelected_];
      }

      sub_2412D94BC(v17, a2[v37]);
      goto LABEL_8;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_21:
  a2[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkShouldEnable] = (a2[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkShouldEnable] & 1) == 0;
}

void sub_2412D94BC(uint64_t a1, int a2)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538950);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5399A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539830);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = sub_2413527AC();
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = (&v50 - v22);
  if (*(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_shouldShowRenderingOverlay) != 1)
  {
    return;
  }

  v24 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_renderingEffectsData);
  if (*(v24 + 16) <= v21)
  {
    return;
  }

  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v55 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_renderingEffectsData);
  v56 = v21;
  v54 = v24 + v25 + *(v10 + 72) * v21;
  v26 = v20;
  sub_241246210(v54, v12, &qword_27E539830);

  v57 = v23;
  v58 = v26;
  v53 = *(v26 + 32);
  v53(v23, v12, v13);
  v27 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v59)
  {
    if (!v27)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538960);
      (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
      goto LABEL_15;
    }

    v28 = *(v27 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v29)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538960);
        v31 = *(v30 + 48);
        v15 = v29;
        v23 = v60;
        v32 = sub_2413527CC();
        v33 = sub_241287D44(&v8[v31], v57);
        v32(v60, 0);

        *v8 = v33 & 1;
        (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
LABEL_15:
        v40 = &unk_27E5399A8;
        v41 = v8;
LABEL_17:
        sub_241246278(v41, v40);
        goto LABEL_20;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v27)
  {
    (*(v58 + 56))(v5, 1, 1, v13);
    v40 = &unk_27E538950;
    v41 = v5;
    goto LABEL_17;
  }

  v34 = *(v27 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v34)
  {
    goto LABEL_37;
  }

  v35 = *(v34 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v35)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v52 = v35;
  v36 = sub_2413527CC();
  v50 = v37;
  v51 = v36;
  v23 = v58;
  (*(v58 + 16))(v15);
  v8 = sub_2412DC61C(&qword_27E5399A0, MEMORY[0x277CDB620]);
  sub_2413543DC();
  if (sub_24135440C())
  {
    (v23[1])(v18, v13);
    v38 = 1;
  }

  else
  {
    sub_24135441C();
    v53(v5, v18, v13);
    v38 = 0;
  }

  (v23[7])(v5, v38, 1, v13);
  sub_241246278(v5, &unk_27E538950);
  v51(v60, 0);

LABEL_20:
  if (*(v55 + 16) > v56)
  {
    sub_241246210(v54, v12, &qword_27E539830);
    v42 = (v12 + *(v9 + 48));
    v15 = *v42;
    v23 = v42[1];
    v8 = *(v58 + 8);
    v58 += 8;
    (v8)(v12, v13);
    if (v59)
    {
      v12 = 0x676E696C62616E45;
    }

    else
    {
      v12 = 0x6E696C6261736944;
    }

    if (v59)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xE900000000000067;
    }

    if (qword_27E537CD0 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_28:
  v43 = sub_241352FFC();
  __swift_project_value_buffer(v43, qword_27E53A538);

  v44 = sub_241352FDC();
  v45 = sub_2413540AC();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60[0] = v47;
    *v46 = 136315394;
    v48 = sub_2412DDC2C(v12, v9, v60);

    *(v46 + 4) = v48;
    *(v46 + 12) = 2080;
    v49 = sub_2412DDC2C(v15, v23, v60);

    *(v46 + 14) = v49;
    _os_log_impl(&dword_241215000, v44, v45, "%s %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v47, -1, -1);
    MEMORY[0x245CE4870](v46, -1, -1);
  }

  else
  {
  }

  (v8)(v57, v13);
}

void sub_2412D9CB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2412D9D60()
{
  v1 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0;
  v4 = v2;
  sub_24128E0A8();

  v5 = *(v3 + v1);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = qword_27E537CD0;
  v7 = *(v5 + OBJC_IVAR___ASVPreviewViewControllerInternal_defaultARConfiguration);
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A538);
  v9 = v7;
  v10 = sub_241352FDC();
  v11 = sub_2413540DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_241215000, v10, v11, "Final base config: %@", v12, 0xCu);
    sub_241246278(v13, &unk_27E539B90);
    MEMORY[0x245CE4870](v13, -1, -1);
    MEMORY[0x245CE4870](v12, -1, -1);
  }
}

void sub_2412D9EE8()
{
  v43[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state;
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state))
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v2 = sub_241352FFC();
    __swift_project_value_buffer(v2, qword_27E53A538);
    oslog = sub_241352FDC();
    v3 = sub_2413540DC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_241215000, oslog, v3, "startRecording() session is already in use, returning...", v4, 2u);
      MEMORY[0x245CE4870](v4, -1, -1);
    }
  }

  else
  {
    v5 = v0;
    v6 = objc_opt_self();
    v7 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
    v8 = [v6 defaultManager];
    v9 = sub_241353BDC();
    v10 = [v8 fileExistsAtPath_];

    if ((v10 & 1) == 0)
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v11 = sub_241352FFC();
      __swift_project_value_buffer(v11, qword_27E53A538);
      v12 = sub_241352FDC();
      v13 = sub_2413540DC();
      v14 = 0x27E537000uLL;
      if (os_log_type_enabled(v12, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v43[0] = v16;
        *v15 = 136315138;
        if (qword_27E537C08 != -1)
        {
          swift_once();
        }

        v17 = sub_24135152C();
        __swift_project_value_buffer(v17, qword_27E5397B8);
        sub_2412DC61C(&qword_27E539990, MEMORY[0x277CC9260]);
        v18 = sub_24135491C();
        v20 = sub_2412DDC2C(v18, v19, v43);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_241215000, v12, v13, "Creating folder %s ...", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x245CE4870](v16, -1, -1);
        MEMORY[0x245CE4870](v15, -1, -1);

        v7 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;
        v14 = 0x27E537000;
      }

      else
      {
      }

      v21 = [v6 v7[43]];
      if (*(v14 + 3080) != -1)
      {
        swift_once();
      }

      v22 = sub_24135152C();
      __swift_project_value_buffer(v22, qword_27E5397B8);
      v23 = sub_24135144C();
      v43[0] = 0;
      v24 = [v21 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v43];

      if (!v24)
      {
        v41 = v43[0];
        sub_24135139C();

        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
        return;
      }

      v25 = v43[0];
      v26 = sub_241352FDC();
      v27 = sub_2413540DC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v43[0] = v29;
        *v28 = 136315138;
        sub_2412DC61C(&qword_27E539990, MEMORY[0x277CC9260]);
        v30 = sub_24135491C();
        v32 = sub_2412DDC2C(v30, v31, v43);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_241215000, v26, v27, "Created folder %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x245CE4870](v29, -1, -1);
        MEMORY[0x245CE4870](v28, -1, -1);
      }
    }

    sub_2412D9D60();
    v34 = v33;
    v35 = objc_allocWithZone(MEMORY[0x277CE5340]);
    v36 = v34;
    v37 = sub_24135144C();
    v38 = [v35 initWithBaseConfiguration:v36 fileURL:v37];

    [objc_msgSend(v38 recordingTechnique)];
    swift_unknownObjectRelease();
    [v38 startRecording];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v40 = Strong;
      [Strong runWithConfiguration:v38 options:0];
    }

    swift_unknownObjectWeakAssign();
    *(v5 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_focalDataForRecording) = MEMORY[0x277D84F90];

    *(v5 + v1) = 1;
    sub_2412D7D70();
  }
}

void sub_2412DA57C()
{
  if (v0[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state] == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        v5 = v0;
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
          _os_log_impl(&dword_241215000, v7, v8, "@@@ calling finishRecording()", v9, 2u);
          MEMORY[0x245CE4870](v9, -1, -1);
        }

        v10 = *&v5[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView];
        v11 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton;
        [*(v10 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton) setEnabled_];
        v12 = *(v10 + v11);
        v13 = sub_241353BDC();
        [v12 setTitle:v13 forState:2];

        v14 = swift_allocObject();
        *(v14 + 16) = v5;
        aBlock[4] = sub_2412DC604;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2412DAEF8;
        aBlock[3] = &block_descriptor_62;
        v15 = _Block_copy(aBlock);
        v16 = v5;

        [v4 finishRecordingWithHandler_];
        _Block_release(v15);

        return;
      }
    }
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v17 = sub_241352FFC();
  __swift_project_value_buffer(v17, qword_27E53A538);
  oslog = sub_241352FDC();
  v18 = sub_2413540DC();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_241215000, oslog, v18, "stopRecording() returning early", v19, 2u);
    MEMORY[0x245CE4870](v19, -1, -1);
  }
}

uint64_t sub_2412DA8BC(void *a1, void *a2)
{
  v4 = sub_2413538CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = sub_2413538FC();
  v8 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0]);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241246158(0, &qword_27E538920);
  v11 = sub_24135416C();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_2412DC60C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_68;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;
  sub_2413538DC();
  v17[1] = MEMORY[0x277D84F90];
  sub_2412DC61C(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_2412DBED4();
  sub_24135444C();
  MEMORY[0x245CE2540](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17[0]);
}

void sub_2412DAB88(_BYTE *a1, NSObject *a2)
{
  a1[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state] = 0;
  sub_2412D7D70();
  sub_2412D7FA8();
  v4 = *&a1[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView];
  v5 = OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton;
  [*(v4 + OBJC_IVAR____TtC11AssetViewer28DebugRecordReplayOverlayView_recordButton) setEnabled_];
  [*(v4 + v5) setTitle:0 forState:2];
  if (a2)
  {
    v6 = a2;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v7 = sub_241352FFC();
    __swift_project_value_buffer(v7, qword_27E53A538);
    v8 = a2;
    v9 = sub_241352FDC();
    v10 = sub_2413540BC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_241354A3C();
      v15 = sub_2412DDC2C(v13, v14, &v26);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_241215000, v9, v10, "stopRecording() error in finishRecording callback: '%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245CE4870](v12, -1, -1);
      MEMORY[0x245CE4870](v11, -1, -1);

      return;
    }

    v24 = a2;
  }

  else
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v16 = sub_241352FFC();
    __swift_project_value_buffer(v16, qword_27E53A538);
    v17 = a1;
    oslog = sub_241352FDC();
    v18 = sub_2413540DC();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v21 = sub_2413514EC();
      v23 = sub_2412DDC2C(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_241215000, oslog, v18, "Done recording. Saved to %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x245CE4870](v20, -1, -1);
      MEMORY[0x245CE4870](v19, -1, -1);

      return;
    }

    v24 = oslog;
  }
}

void sub_2412DAEF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_2412DAF64()
{
  v1 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController____lazy_storage___replayObserver;
  v2 = *&v0[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController____lazy_storage___replayObserver];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController____lazy_storage___replayObserver];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = type metadata accessor for ARQLReplayObserver();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC11AssetViewer18ARQLReplayObserver_callback];
    *v7 = sub_2412DC5FC;
    v7[1] = v4;
    v13.receiver = v6;
    v13.super_class = v5;
    v8 = v0;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *&v0[v1];
    *&v0[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_2412DB02C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state;
  if (*(a1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state) == 2)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v3 = sub_241352FFC();
    __swift_project_value_buffer(v3, qword_27E53A538);
    v4 = sub_241352FDC();
    v5 = sub_2413540DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_241215000, v4, v5, "AR Session playback finished", v6, 2u);
      MEMORY[0x245CE4870](v6, -1, -1);
    }

    *(a1 + v1) = 0;
    sub_2412D7D70();
  }

  else
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v7 = sub_241352FFC();
    __swift_project_value_buffer(v7, qword_27E53A538);
    oslog = sub_241352FDC();
    v8 = sub_2413540DC();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_241215000, oslog, v8, "replayConfigurationDidFinishReplaying() session finished playing but we weren't in playing state", v9, 2u);
      MEMORY[0x245CE4870](v9, -1, -1);
    }
  }
}

void sub_2412DB20C()
{
  v1 = v0;
  v2 = sub_24135152C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state;
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state))
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v7 = sub_241352FFC();
    __swift_project_value_buffer(v7, qword_27E53A538);
    v19 = sub_241352FDC();
    v8 = sub_2413540DC();
    if (os_log_type_enabled(v19, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_241215000, v19, v8, "startReplay() session is already in use, returning...", v9, 2u);
      MEMORY[0x245CE4870](v9, -1, -1);
    }

    v10 = v19;
  }

  else
  {
    sub_2412D9D60();
    v12 = v11;
    (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arRecordingURL, v2);
    v13 = objc_allocWithZone(MEMORY[0x277CE5360]);
    v14 = sub_2412AC2D4(v12, v5);
    v15 = sub_2412DAF64();
    [v14 setDelegate_];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      [Strong runWithConfiguration:v14 options:0];
    }

    swift_unknownObjectWeakAssign();
    *(v1 + v6) = 2;
    sub_2412D7D70();
  }
}

id DebugRecordReplayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id sub_2412DB6D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall DebugRecordReplayViewController.session(_:didUpdate:)(ARSession _, ARFrame didUpdate)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v5)
  {
    v7 = v5;
    PreviewViewController.session(_:didUpdate:)(_, didUpdate);
  }

  if (*(v3 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state) == 1)
  {
    v8 = [(objc_class *)_.super.isa configuration];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 videoFormat];

      v11 = [v10 device];
      [v11 lensPosition];
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }

    v14 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_focalDataForRecording;
    v15 = *(v3 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_focalDataForRecording);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_2412A2260(0, *(v15 + 2) + 1, 1, v15);
      *(v3 + v14) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_2412A2260((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    *&v15[4 * v18 + 32] = v13;
    *(v3 + v14) = v15;
  }
}

Swift::Void __swiftcall DebugRecordReplayViewController.session(_:cameraDidChangeTrackingState:)(ARSession _, ARCamera cameraDidChangeTrackingState)
{
  v3 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v3)
  {
    v5 = v3;
    sub_2412F3FCC(cameraDidChangeTrackingState.super.isa);
  }
}

void sub_2412DBBBC(uint64_t a1, void (*a2)(void))
{
  v3 = *(v2 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v3)
  {
    v5 = v3;
    a2();
  }
}

void sub_2412DBC44(char *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v4 = *&a1[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC];
  if (v4)
  {
    v7 = a3;
    v9 = a1;
    v8 = v4;
    a4();
  }
}

uint64_t sub_2412DBD38(char *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  sub_241246158(0, &qword_27E539E40);
  v8 = sub_241353E2C();
  v9 = *&a1[OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC];
  if (v9)
  {
    v10 = a3;
    v11 = a1;
    v12 = v9;
    a5(v10, v8);
  }
}

void sub_2412DBE0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC);
  if (v4)
  {
    v8 = v4;
    a3(a1, a2);
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2412DBED4()
{
  result = qword_27E539880;
  if (!qword_27E539880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E538930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539880);
  }

  return result;
}

void sub_2412DBF38()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_arqlVC) = 0;
  v2 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_overlayView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for DebugRecordReplayOverlayView()) init];
  v3 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_renderingEffectsData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539828);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539830) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_241366520;
  v8 = v7 + v6;
  v9 = v8 + v4[14];
  sub_24135274C();
  strcpy(v9, "Camera Noise");
  *(v9 + 13) = 0;
  *(v9 + 14) = -5120;
  v10 = (v8 + v5 + v4[14]);
  sub_24135277C();
  *v10 = 0x73776F64616853;
  v10[1] = 0xE700000000000000;
  v11 = (v8 + 2 * v5 + v4[14]);
  sub_24135273C();
  *v11 = 0x42206E6F69746F4DLL;
  v11[1] = 0xEB0000000072756CLL;
  v12 = (v8 + 3 * v5 + v4[14]);
  sub_24135275C();
  strcpy(v12, "Depth of Field");
  v12[15] = -18;
  v13 = (v8 + 4 * v5 + v4[14]);
  sub_24135272C();
  *v13 = 5391432;
  v13[1] = 0xE300000000000000;
  v14 = (v8 + 5 * v5 + v4[14]);
  sub_24135276C();
  *v14 = 0xD000000000000010;
  v14[1] = 0x8000000241360C50;
  *(v1 + v3) = v7;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_state) = 0;
  *(v1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_focalDataForRecording) = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_modelURL;
  v16 = sub_24135152C();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  *(v1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_command) = 2;
  *(v1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkTimer) = 0;
  sub_2413527AC();
  sub_2412DC61C(&qword_27E539850, MEMORY[0x277CDB620]);
  sub_241354B7C();
  *(v1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_blinkShouldEnable) = 1;
  *(v1 + OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController____lazy_storage___replayObserver) = 0;
  sub_2413547DC();
  __break(1u);
}

unint64_t sub_2412DC2C8()
{
  result = qword_27E539888;
  if (!qword_27E539888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539888);
  }

  return result;
}

void sub_2412DC348()
{
  sub_2412499C8();
  if (v0 <= 0x3F)
  {
    sub_24135152C();
    if (v1 <= 0x3F)
    {
      sub_2413527AC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_2412DC5A8()
{
  result = qword_27E539980;
  if (!qword_27E539980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539980);
  }

  return result;
}

uint64_t sub_2412DC61C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2412DC66C()
{
  result = qword_27E5399C0;
  if (!qword_27E5399C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5399B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5399C0);
  }

  return result;
}

uint64_t sub_2412DC6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Bool.yesOrNo.getter(char a1)
{
  if (a1)
  {
    return 5457241;
  }

  else
  {
    return 20302;
  }
}

uint64_t sub_2412DC7AC()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539A30);
  __swift_project_value_buffer(v0, qword_27E539A30);
  return sub_241352FEC();
}

void sub_2412DC8A0(double a1, double a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(void))
{

  oslog = sub_241352FDC();
  v17 = a13();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136316162;
    *(v18 + 4) = sub_2412DDC2C(a4, a5, &v32);
    *(v18 + 12) = 2080;
    v30 = sub_2412DCE58(a1);
    v31 = v20;
    MEMORY[0x245CE20D0](120, 0xE100000000000000);
    v21 = sub_2412DCE58(a2);
    MEMORY[0x245CE20D0](v21);

    v22 = sub_2412DDC2C(v30, v31, &v32);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    v23 = sub_2413545FC();
    v25 = sub_2412DDC2C(v23, v24, &v32);

    *(v18 + 24) = v25;
    *(v18 + 32) = 2080;
    v26 = sub_2413545FC();
    v28 = sub_2412DDC2C(v26, v27, &v32);

    *(v18 + 34) = v28;
    *(v18 + 42) = 2048;
    *(v18 + 44) = a12;
    _os_log_impl(&dword_241215000, oslog, v17, "%s Size: %s %s %s line: %lu", v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v19, -1, -1);
    MEMORY[0x245CE4870](v18, -1, -1);
  }
}

void debug(_:prefix:fileID:function:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (qword_27E537C20 != -1)
  {
    swift_once();
  }

  v14 = sub_241352FFC();
  __swift_project_value_buffer(v14, qword_27E539A30);

  oslog = sub_241352FDC();
  v15 = sub_2413540AC();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136316162;
    *(v16 + 4) = sub_2412DDC2C(a3, a4, &v28);
    *(v16 + 12) = 2082;
    v18 = a1();
    v20 = sub_2412DDC2C(v18, v19, &v28);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    v21 = sub_2413545FC();
    v23 = sub_2412DDC2C(v21, v22, &v28);

    *(v16 + 24) = v23;
    *(v16 + 32) = 2048;
    *(v16 + 34) = a11;
    *(v16 + 42) = 2080;
    v24 = sub_2413545FC();
    v26 = sub_2412DDC2C(v24, v25, &v28);

    *(v16 + 44) = v26;
    _os_log_impl(&dword_241215000, oslog, v15, "%s %{public}s - %s:%lu - %s", v16, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v17, -1, -1);
    MEMORY[0x245CE4870](v16, -1, -1);
  }
}

uint64_t CGSize.formatted.getter(double a1, double a2)
{
  v5 = sub_2412DCE58(a1);
  MEMORY[0x245CE20D0](120, 0xE100000000000000);
  v3 = sub_2412DCE58(a2);
  MEMORY[0x245CE20D0](v3);

  return v5;
}

uint64_t CGRect.formatted.getter(double a1, double a2, double a3, double a4)
{
  v11 = sub_2412DCE58(a1);
  MEMORY[0x245CE20D0](120, 0xE100000000000000);
  v7 = sub_2412DCE58(a2);
  MEMORY[0x245CE20D0](v7);

  MEMORY[0x245CE20D0](32, 0xE100000000000000);
  v8 = sub_2412DCE58(a3);
  MEMORY[0x245CE20D0](v8);

  MEMORY[0x245CE20D0](120, 0xE100000000000000);
  v9 = sub_2412DCE58(a4);
  MEMORY[0x245CE20D0](v9);

  return v11;
}

uint64_t sub_2412DCE58(double a1)
{
  v2 = sub_2413513DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24135168C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539A48);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  if (a1 >= 1.79769313e308)
  {
    return 5783885;
  }

  *v16 = a1;
  sub_24135167C();
  sub_2412DD130();
  sub_2413513AC();
  sub_2413513CC();
  MEMORY[0x245CDF770](v5, v7);
  (*(v3 + 8))(v5, v2);
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_2412DD184();
  sub_241353B3C();
  v14(v13, v7);
  v16[0] = v16[2];
  v16[1] = v16[3];
  return sub_241353D8C();
}

uint64_t Bool.trueOrFalse.getter(char a1)
{
  if (a1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

unint64_t sub_2412DD130()
{
  result = qword_27E539A50;
  if (!qword_27E539A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539A50);
  }

  return result;
}

unint64_t sub_2412DD184()
{
  result = qword_27E539A58;
  if (!qword_27E539A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E539A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539A58);
  }

  return result;
}

uint64_t printHierarchy(entity:level:debugString:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v77 = a3;
  v81 = a1;
  sub_241352B6C();
  MEMORY[0x28223BE20]();
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v66 - v8;
  v10 = sub_2413517DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  v14 = sub_2412DE334(0x202D, 0xE200000000000000, a2);
  v83 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
  v16 = sub_24123D370(&qword_27E538B10, &qword_27E538B08);
  v70 = v15;
  v74 = sub_241353BAC();
  v18 = v17;

  sub_24135296C();
  sub_2413516FC();
  v20 = *(v11 + 8);
  v19 = v11 + 8;
  v79 = v19;
  v80 = v10;
  v78 = v20;
  v20(v13, v10);
  ComponentCount = REEntityGetComponentCount();
  if (ComponentCount < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = ComponentCount;
    v69 = v16;
    v72 = v9;
    v73 = v7;
    v23 = MEMORY[0x277D84F90];
    if (ComponentCount)
    {
      v67 = v18;
      v68 = a4;
      v83 = MEMORY[0x277D84F90];
      sub_2412DE1D4(0, ComponentCount, 0);
      v24 = 0;
      v23 = v83;
      do
      {
        sub_24135296C();
        sub_2413516FC();
        v78(v13, v80);
        REEntityGetComponentAtIndex();
        REComponentGetClass();
        REComponentClassGetName();
        v25 = sub_241353D2C();
        v27 = v26;
        v83 = v23;
        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2412DE1D4((v28 > 1), v29 + 1, 1);
          v23 = v83;
        }

        ++v24;
        *(v23 + 16) = v29 + 1;
        v30 = v23 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v22 != v24);
      v18 = v67;
      a4 = v68;
    }

    v31 = v77;
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_2413545EC();
    v82.i64[0] = v31;
    v82.i64[1] = a4;
    sub_24135494C();
    MEMORY[0x245CE20D0](8250, 0xE200000000000000);
    MEMORY[0x245CE20D0](v74, v18);

    MEMORY[0x245CE20D0](2114848, 0xE300000000000000);
    sub_24135296C();
    sub_2413516FC();
    v78(v13, v80);
    sub_2413546CC();
    MEMORY[0x245CE20D0](10272, 0xE200000000000000);
    v32 = sub_241352C0C();
    MEMORY[0x245CE20D0](v32);

    MEMORY[0x245CE20D0](41, 0xE100000000000000);
    v18 = v84;
    v79 = v83;
    v83 = 0;
    v84 = 0xE000000000000000;
    v33 = sub_241352C5C();
    sub_2413519BC();
    v35 = vmulq_f32(v34, v34);
    atan2f(sqrtf(v35.f32[2] + vaddv_f32(*v35.f32)), v34.f32[3]);
    sub_241353FCC();
    MEMORY[0x245CE20D0](8236, 0xE200000000000000);
    v80 = v33;
    sub_2413519BC();
    v37 = vmulq_f32(v36, v36);
    *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
    *v37.f32 = vrsqrte_f32(v38);
    *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
    v82 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
    sub_24123D370(&qword_27E539BA0, &unk_27E538B20);
    v39 = sub_2413549BC();
    MEMORY[0x245CE20D0](v39);

    v16 = v83;
    v13 = v84;
    if (!*(v23 + 16))
    {

      v51 = v73;
      if (qword_27E537C28 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }

    v83 = v23;
    v14 = sub_241353BAC();
    v19 = v40;

    if (qword_27E537C28 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v41 = sub_241352FFC();
  __swift_project_value_buffer(v41, qword_27E539A60);

  v42 = sub_241352FDC();
  v43 = sub_2413540DC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v74 = v14;
    v45 = v44;
    v46 = swift_slowAlloc();
    v78 = v16;
    v47 = v46;
    v83 = v46;
    *v45 = 136315650;
    v48 = sub_2412DDC2C(v79, v18, &v83);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    v49 = sub_2412DDC2C(v74, v19, &v83);

    *(v45 + 14) = v49;
    *(v45 + 22) = 2080;
    v50 = sub_2412DDC2C(v78, v13, &v83);

    *(v45 + 24) = v50;
    _os_log_impl(&dword_241215000, v42, v43, "%s: components=[%s]) %s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v47, -1, -1);
    MEMORY[0x245CE4870](v45, -1, -1);
  }

  else
  {
  }

  v16 = v77;
  v56 = v72;
  v51 = v73;
  while (1)
  {
    sub_2413518AC();
    sub_241352B2C();
    sub_241352B3C();
    v62 = v83;
    v63 = v76;
    if (!v83)
    {
      break;
    }

    v64 = v71 + 1;
    if (!__OFADD__(v71, 1))
    {
      do
      {
        printHierarchy(entity:level:debugString:)(v62, v64, v16, a4);

        sub_241352B3C();
        v62 = v83;
      }

      while (v83);
      return (*(v63 + 8))(v56, v51);
    }

    __break(1u);
LABEL_26:
    swift_once();
LABEL_13:
    v52 = sub_241352FFC();
    __swift_project_value_buffer(v52, qword_27E539A60);

    v53 = sub_241352FDC();
    v54 = sub_2413540DC();

    v55 = os_log_type_enabled(v53, v54);
    v56 = v72;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v78 = v16;
      v58 = v57;
      v59 = swift_slowAlloc();
      v83 = v59;
      *v58 = 136315394;
      v60 = sub_2412DDC2C(v79, v18, &v83);

      *(v58 + 4) = v60;
      *(v58 + 12) = 2080;
      v61 = sub_2412DDC2C(v78, v13, &v83);

      *(v58 + 14) = v61;
      _os_log_impl(&dword_241215000, v53, v54, "%s %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v59, -1, -1);
      MEMORY[0x245CE4870](v58, -1, -1);
    }

    else
    {
    }

    v16 = v77;
  }

  return (*(v63 + 8))(v56, v51);
}

uint64_t sub_2412DDBB0()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539A60);
  __swift_project_value_buffer(v0, qword_27E539A60);
  return sub_241352FEC();
}

unint64_t sub_2412DDC2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2412DDCF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2412461A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2412DDCF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2412DDE04(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24135463C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2412DDE04(uint64_t a1, unint64_t a2)
{
  v3 = sub_2412DDE50(a1, a2);
  sub_2412DDF80(&unk_2852FD478);
  return v3;
}

uint64_t sub_2412DDE50(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2412DE06C(v5, 0);
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

  result = sub_24135463C();
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
        v10 = sub_241353D4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2412DE06C(v10, 0);
        result = sub_2413545CC();
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

uint64_t sub_2412DDF80(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2412DE0E0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2412DE06C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539A78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2412DE0E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2412DE1D4(char *a1, int64_t a2, char a3)
{
  result = sub_2412ECAF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2412DE1F4(char *a1, int64_t a2, char a3)
{
  result = sub_2412ECD20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2412DE214(char *a1, int64_t a2, char a3)
{
  result = sub_2412ECD34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2412DE234(char *a1, int64_t a2, char a3)
{
  result = sub_2412ECE54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2412DE254(size_t a1, int64_t a2, char a3)
{
  result = sub_2412ECF64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2412DE274(size_t a1, int64_t a2, char a3)
{
  result = sub_2412ECF8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2412DE294(size_t a1, int64_t a2, char a3)
{
  result = sub_2412ECFB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2412DE2B4(size_t a1, int64_t a2, char a3)
{
  result = sub_2412ED1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2412DE2D4(void *a1, int64_t a2, char a3)
{
  result = sub_2412ED3C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2412DE2F4(char *a1, int64_t a2, char a3)
{
  result = sub_2412ED4F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2412DE314(char *a1, int64_t a2, char a3)
{
  result = sub_2412ED614(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2412DE334(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_241353E5C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_2412DE3D0(uint64_t a1, uint64_t a2)
{
  RECreateCubicBezierEase();
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  if (qword_27E537C38 != -1)
  {
    swift_once();
  }

  v5 = xmmword_27E541810;
  *(v2 + 48) = xmmword_27E541810;
  *(v2 + 64) = v5;
  *(v2 + 80) = xmmword_241365D00;
  *(v2 + 96) = xmmword_241365D00;
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 1;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_2412DE47C(__n128 a1, __n128 a2, __n128 a3, float32x4_t a4)
{
  v5 = v4;
  v6 = a4;
  if (qword_27E537C40 != -1)
  {
    swift_once();
    v6 = a4;
  }

  v7 = vmulq_f32(v6, xmmword_241369020);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v10 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *&xmmword_27E541820, 1), vextq_s8(v9, v9, 8uLL), *&xmmword_27E541820);
  v11 = vrev64q_s32(v7);
  v11.i32[0] = v8.i32[1];
  v11.i32[3] = v8.i32[2];
  v12 = vmlaq_laneq_f32(v10, v11, xmmword_27E541820, 2);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v6.f32, 1), vextq_s8(v14, v14, 8uLL), v6.f32[0]);
  v16 = vrev64q_s32(v12);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v6, 3), v16, v6, 2), v15);
  v18 = vmulq_f32(v17, v17);
  v15.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(v15.u32[0]);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v18.f32, *v18.f32)));
  v19 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  *v18.f32 = vmul_f32(vext_s8(*&xmmword_27E541820, *&vextq_s8(xmmword_27E541820, xmmword_27E541820, 8uLL), 4uLL), *&vextq_s8(v19, v19, 4uLL));
  v20 = v18.f32[1] + (vmuls_n_f32(*&xmmword_27E541820, v19.f32[0]) + v18.f32[0]);
  if (v20 > 0.75 && v20 < 1.0)
  {
    v30 = vmulq_f32(v19, v19);
    *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
    *v30.f32 = vrsqrte_f32(v31);
    *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
    v50 = v19;
    v51 = xmmword_27E541820;
    v32 = vmulq_n_f32(v19, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
    v33 = vmulq_f32(xmmword_27E541820, xmmword_27E541820);
    *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
    *v33.f32 = vrsqrte_f32(v34);
    *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
    v35 = vmulq_f32(v32, vmulq_n_f32(xmmword_27E541820, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]));
    v29 = acosf(v35.f32[2] + vaddv_f32(*v35.f32));
  }

  else
  {
    if (v20 >= -0.75 || v20 <= -1.0)
    {
      goto LABEL_14;
    }

    v23 = vmulq_f32(v19, v19);
    v24 = vaddv_f32(*v23.f32);
    *v23.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v23.f32[2] + v24));
    *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v23.f32[2] + v24), vmul_f32(*v23.f32, *v23.f32)));
    v50 = v19;
    v51 = xmmword_27E541820;
    v25 = vmulq_n_f32(v19, vmul_f32(*v23.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v23.f32[2] + v24), vmul_f32(*v23.f32, *v23.f32))).f32[0]);
    v26 = vmulq_f32(xmmword_27E541820, xmmword_27E541820);
    *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
    *v26.f32 = vrsqrte_f32(v27);
    *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
    v28 = vmulq_f32(v25, vmulq_n_f32(xmmword_27E541820, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]));
    v29 = acosf(v28.f32[2] + vaddv_f32(*v28.f32)) + -3.1416;
  }

  v6 = a4;
  if (v29 != 0.0)
  {
    v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), vnegq_f32(v50)), v51, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
    v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
    v43 = vmulq_f32(v41, v41);
    *&v44 = v43.f32[1] + (v43.f32[2] + v43.f32[0]);
    *v43.f32 = vrsqrte_f32(v44);
    *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
    v52 = vmulq_n_f32(v42, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
    v45 = __sincosf_stret(v29 * 0.5);
    v46 = vmulq_n_f32(v52, v45.__sinval);
    v47 = vnegq_f32(a4);
    v48 = vtrn2q_s32(a4, vtrn1q_s32(a4, v47));
    v49 = vrev64q_s32(a4);
    v49.i32[0] = v47.i32[1];
    v49.i32[3] = v47.i32[2];
    v6 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(a4, v45.__cosval), v49, v46, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v47, 8uLL), *v46.f32, 1), vextq_s8(v48, v48, 8uLL), v46.f32[0]));
    if (*(v4 + 136))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:
  if ((*(v4 + 136) & 1) == 0)
  {
LABEL_15:
    v36 = *(v4 + 128);
    v57 = v6;

    sub_2412FD080(v36);

    v6 = v57;
    *(v5 + 128) = 0;
    *(v5 + 136) = 1;
  }

LABEL_16:
  *(v5 + 48) = a1;
  *(v5 + 64) = a3;
  *(v5 + 80) = a2;
  *(v5 + 96) = v6;
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  swift_weakInit();

  v39 = sub_2412FCD6C(sub_2412DEB88, v37, sub_2412DEB90, v38, 0.2);

  *(v5 + 128) = v39;
  *(v5 + 136) = 0;
  return result;
}

uint64_t sub_2412DE8F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    REEasingFunctionEvaluate();
    v3 = v2;
    sub_241352C5C();

    sub_24135190C();

    simd_slerp(v1[5], v1[6], v3);

    sub_24135192C();
  }

  return result;
}