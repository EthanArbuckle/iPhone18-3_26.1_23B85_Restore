uint64_t sub_23A9D8148(uint64_t a1, void *a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed;
    if (*(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed))
    {
    }

    else
    {
      if (qword_27DFAE460 != -1)
      {
        swift_once();
      }

      v6 = [a2 floorPlan];
      sub_23A955E64(v6);

      result = swift_weakLoadStrong();
      if (result)
      {
        v7 = *(result + 16);

        sub_23A9574C4(v7);
        v8 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
        swift_beginAccess();
        v9 = *(v4 + v8);
        v25 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 16);
        v26 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
        v23 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 48);
        v24 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 32);
        v10 = v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 8);
          ObjectType = swift_getObjectType();
          v27 = v9;
          v28 = a2;
          v29 = v26;
          v30 = v25;
          v31 = v24;
          v32 = v23;
          v13 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
          v14 = *(v11 + 56);

          v15 = a2;
          v16 = v13;
          v14(v4, &v27, v13, ObjectType, v11);
          swift_unknownObjectRelease();
        }

        else
        {

          v17 = a2;
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = *(v4 + 32);
          v19 = swift_getObjectType();
          v27 = v9;
          v28 = a2;
          v29 = v26;
          v30 = v25;
          v31 = v24;
          v32 = v23;
          v20 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
          v21 = *(v18 + 56);
          v22 = v20;
          v21(v4, &v27, v20, v19, v18);
          swift_unknownObjectRelease();
        }

        *(v4 + v5) = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_23A9D8494(uint64_t a1, void *a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = [a2 type];
    if (v6 >= 6 || (v7 = v6, v8 = [a2 state], v9 = v8 + 1, v8 + 1 >= 5))
    {
    }

    else
    {
      v10 = 0x50003010204uLL >> (8 * v7);
      v11 = OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_initializationState;
      if (*(a1 + OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_initializationState) != v9 && swift_unknownObjectWeakLoadStrong())
      {
        sub_23A9B96B4(v9);
        swift_unknownObjectRelease();
      }

      *(a1 + v11) = v9;
      v12 = v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        v18[0] = v10;
        (*(v13 + 40))(v5, v18, ObjectType, v13);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v5 + 32);
        v16 = swift_getObjectType();
        v17 = v10;
        (*(v15 + 40))(v5, &v17, v16, v15);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_23A9D86F8(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for RSCoreAdaptor();
    sub_23A9A5B38(a2, &v14);
    v5 = v14;
    v6 = sub_23AA0CE54();
    v7 = sub_23AA0D494();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a2;
      _os_log_impl(&dword_23A8B4000, v6, v7, "[RSCaptureSession didFailWithError] RSCaptureSession failure with error: %ld", v8, 0xCu);
      MEMORY[0x23EE91710](v8, -1, -1);
    }

    sub_23A9DE13C();
    v9 = swift_allocError();
    *v10 = v5;
    v11 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
    *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v9;

    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    v12 = sub_23AA0D1A4();
    sub_23A955B84(v12, v13);

    sub_23A9CB5E0(v5 != 2);
  }

  return result;
}

void sub_23A9D892C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for CapturedRoom.Surface(0);
  v81 = *(v3 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v65 - v7;
  MEMORY[0x28223BE20](v8);
  v76 = &v65 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls;
    v15 = Strong;
    swift_beginAccess();
    v66 = v15;
    v65 = v14;
    v16 = *(v15 + v14);

    v17 = [a2 markers];
    sub_23A8D6C58(0, &unk_27DFB13F0, 0x277D46C58);
    v18 = sub_23AA0D2F4();

    if (v18 >> 62)
    {
      goto LABEL_51;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_52;
    }

LABEL_4:
    v82 = MEMORY[0x277D84F90];
    sub_23A976018(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
    }

    else
    {
      v20 = v82;
      v80 = type metadata accessor for RSCoreAdaptor();
      v21 = 0;
      v22 = v18;
      v23 = v18 & 0xC000000000000001;
      v24 = v22;
      do
      {
        if (v23)
        {
          v25 = MEMORY[0x23EE90360](v21);
        }

        else
        {
          v25 = *(v22 + 8 * v21 + 32);
        }

        v26 = v25;
        sub_23A9A21A4(v25, v12);

        v82 = v20;
        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_23A976018(v27 > 1, v28 + 1, 1);
          v20 = v82;
        }

        ++v21;
        *(v20 + 16) = v28 + 1;
        sub_23A9E35C4(v12, v20 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v28, type metadata accessor for CapturedRoom.Surface);
        v22 = v24;
      }

      while (v19 != v21);

      v29 = *(v16 + 16);
      if (v29)
      {
LABEL_13:
        v30 = sub_23AA0D324();
        *(v30 + 16) = v29;
        bzero((v30 + 32), v29);
        v31 = *(v20 + 16);
        if (v31)
        {
          goto LABEL_14;
        }
      }

      else
      {
        while (1)
        {
          v30 = MEMORY[0x277D84F90];
          v31 = *(v20 + 16);
          if (!v31)
          {
            break;
          }

LABEL_14:
          v32 = sub_23AA0D324();
          *(v32 + 16) = v31;
          v80 = v32;
          v69 = v32 + 32;
          bzero((v32 + 32), v31);
          v33 = 0;
          v34 = (*(v81 + 80) + 32) & ~*(v81 + 80);
          v35 = v20 + v34;
          v70 = v34;
          v18 = v16 + v34;
          v36 = *MEMORY[0x277D860B8];
          v37 = *(MEMORY[0x277D860B8] + 16);
          v38 = *(MEMORY[0x277D860B8] + 32);
          v39 = *(MEMORY[0x277D860B8] + 48);
          v67 = v30 + 31;
          v79 = MEMORY[0x277D84F90];
          v68 = v16 + v34;
          v74 = v37;
          v75 = v36;
          v72 = v39;
          v73 = v38;
          v71 = vdupq_n_s32(0x3DCCCCCDu);
          while (2)
          {
            if (v33 < *(v20 + 16))
            {
              v41 = v33 + 1;
              v12 = *(v81 + 72);
              v83 = __invert_f4(*(v35 + v12 * v33 + 32));
              v42 = 0;
              v43 = v18;
              while (v29 != v42)
              {
                if (v42 >= *(v16 + 16))
                {
                  __break(1u);
                  goto LABEL_48;
                }

                ++v42;
                v44 = vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v71, vabdq_f32(v74, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83.columns[0], COERCE_FLOAT(*v43[6].f32)), v83.columns[1], v43[6], 1), v83.columns[2], *v43[6].f32, 2), v83.columns[3], *v43[6].f32, 3))), vcgeq_f32(v71, vabdq_f32(v75, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83.columns[0], COERCE_FLOAT(*v43[4].f32)), v83.columns[1], v43[4], 1), v83.columns[2], *v43[4].f32, 2), v83.columns[3], *v43[4].f32, 3)))), vandq_s8(vcgeq_f32(v71, vabdq_f32(v73, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83.columns[0], COERCE_FLOAT(*v43[8].f32)), v83.columns[1], v43[8], 1), v83.columns[2], *v43[8].f32, 2), v83.columns[3], *v43[8].f32, 3))), vcgeq_f32(v71, vabdq_f32(v72, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83.columns[0], COERCE_FLOAT(*v43[10].f32)), v83.columns[1], v43[10], 1), v83.columns[2], *v43[10].f32, 2), v83.columns[3], *v43[10].f32, 3))))));
                v43 = (v43 + v12);
                if ((v44 & 0x80000000) != 0)
                {
                  if (v33 >= *(v80 + 16))
                  {
                    goto LABEL_49;
                  }

                  *(v69 + v33) = 1;
                  if (v42 - 1 >= *(v30 + 16))
                  {
                    goto LABEL_50;
                  }

                  *(v67 + v42) = 1;
                  sub_23A9E3260(v43 - v12, v76, type metadata accessor for CapturedRoom.Surface);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v79 = sub_23A938A00(0, v79[2] + 1, 1, v79);
                  }

                  v46 = v79[2];
                  v45 = v79[3];
                  if (v46 >= v45 >> 1)
                  {
                    v79 = sub_23A938A00(v45 > 1, v46 + 1, 1, v79);
                  }

                  v40 = v79;
                  v79[2] = v46 + 1;
                  sub_23A9E35C4(v76, v40 + v70 + v46 * v12, type metadata accessor for CapturedRoom.Surface);
                  v18 = v68;
                  break;
                }
              }

              ++v33;
              if (v41 != v31)
              {
                continue;
              }

              if (v31 > *(v80 + 16))
              {
                goto LABEL_60;
              }

              v76 = v30;
              v47 = MEMORY[0x277D84F90];
              v48 = 32;
              do
              {
                if ((*(v80 + v48) & 1) == 0)
                {
                  sub_23A9E3260(v35, v77, type metadata accessor for CapturedRoom.Surface);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v47 = sub_23A938A00(0, v47[2] + 1, 1, v47);
                  }

                  v50 = v47[2];
                  v49 = v47[3];
                  if (v50 >= v49 >> 1)
                  {
                    v47 = sub_23A938A00(v49 > 1, v50 + 1, 1, v47);
                  }

                  v47[2] = v50 + 1;
                  sub_23A9E35C4(v77, v47 + v70 + v50 * v12, type metadata accessor for CapturedRoom.Surface);
                }

                v35 += v12;
                ++v48;
                --v31;
              }

              while (v31);

              v30 = v76;
              if (!v29)
              {
                goto LABEL_55;
              }

              goto LABEL_38;
            }

            break;
          }

LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v19 = sub_23AA0D7F4();
          if (v19)
          {
            goto LABEL_4;
          }

LABEL_52:

          v20 = MEMORY[0x277D84F90];
          v29 = *(v16 + 16);
          if (v29)
          {
            goto LABEL_13;
          }
        }
      }

      v47 = MEMORY[0x277D84F90];
      v79 = MEMORY[0x277D84F90];
      v80 = MEMORY[0x277D84F90];
      if (!v29)
      {
LABEL_55:
        v53 = MEMORY[0x277D84F90];
LABEL_56:

        v59 = v66;
        v60 = v65;
        swift_beginAccess();
        v61 = *(v59 + v60);
        *(v59 + v60) = v79;

        sub_23A911B78(v62);
        swift_endAccess();
        v63 = *(v59 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls);
        *(v59 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = v47;

        v64 = *(v59 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls);
        *(v59 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v53;

        return;
      }

LABEL_38:
      if (v29 <= *(v30 + 16))
      {
        v51 = 0;
        v52 = v30 + 32;
        v53 = MEMORY[0x277D84F90];
        v77 = v30 + 32;
        do
        {
          if ((*(v52 + v51) & 1) == 0)
          {
            v54 = v30;
            v55 = (*(v81 + 80) + 32) & ~*(v81 + 80);
            v56 = *(v81 + 72);
            sub_23A9E3260(v16 + v55 + v56 * v51, v78, type metadata accessor for CapturedRoom.Surface);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = sub_23A938A00(0, v53[2] + 1, 1, v53);
            }

            v58 = v53[2];
            v57 = v53[3];
            if (v58 >= v57 >> 1)
            {
              v53 = sub_23A938A00(v57 > 1, v58 + 1, 1, v53);
            }

            v53[2] = v58 + 1;
            sub_23A9E35C4(v78, v53 + v55 + v58 * v56, type metadata accessor for CapturedRoom.Surface);
            v30 = v54;
            v52 = v77;
          }

          ++v51;
        }

        while (v29 != v51);
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
  }
}

void sub_23A9D92F0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v18 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    v6 = (a2 + 32);
    while (1)
    {
      if (*v6++)
      {

        v8 = sub_23AA0D024();
      }

      else
      {
        v8 = 0;
      }

      v9 = [objc_allocWithZone(MEMORY[0x277D46C60]) initWithDictionaryRepresentation_];

      if (!v9)
      {
        break;
      }

      sub_23AA0D944();
      v10 = *(v18 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      if (!--v3)
      {
        v4 = v18;
        v2 = a1;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  swift_beginAccess();
  v11 = *(v2 + 16);
  *(v2 + 16) = v4;

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  v14 = v13;

  if (v13)
  {
    swift_beginAccess();
    v15 = *(v2 + 16);
    sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);

    v16 = sub_23AA0D2E4();

    [v14 updateWithObjects_];

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_23A9D9518(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, void (*a7)(uint64_t))
{
  sub_23A8D6C58(0, a5, a6);
  v10 = sub_23AA0D2F4();
  v11 = a3;
  v12 = a1;
  a7(v10);
}

uint64_t sub_23A9D95AC(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_23AA0CE54();
    v6 = sub_23AA0D494();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a2;
      _os_log_impl(&dword_23A8B4000, v5, v6, "[OUSession didFailWithError] OUSession failure with error: %ld", v7, 0xCu);
      MEMORY[0x23EE91710](v7, -1, -1);
    }

    sub_23A9DE13C();
    v8 = swift_allocError();
    *v9 = 5;
    v10 = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
    *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v8;

    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    v11 = sub_23AA0D1A4();
    sub_23A955B84(v11, v12);

    sub_23A9CB5E0(1);
  }

  return result;
}

id sub_23A9D97E4(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v6 = *a3;
  v7 = swift_weakInit();
  v9.receiver = a1;
  v9.super_class = a4(v7);
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_23A9D9854(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23A9D989C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23A9D98E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_23AA0D7F4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

_BYTE **sub_23A9D990C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23A9D991C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23A9EDC7C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A905F94(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_23A9EDC7C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for ScanEntity();
        result = sub_23AA0DC24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_23A90CE28();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

unint64_t sub_23A9D9A7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_23A9EDDFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23A906278(v16, a4 & 1);
      v20 = *v5;
      result = sub_23A9EDDFC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_23AA0DC24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_23A90CF8C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_23A9D9C38(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = sub_23AA0C0E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_23A9EDD28(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v27 = *v6;
    v28 = sub_23A9EDD28(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_23A9DBC10(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

void sub_23A9D9E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A9EDE74(a3);
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
      sub_23A9066CC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23A9EDE74(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        type metadata accessor for HullPointUUID();
        sub_23AA0DC24();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_23A90D004();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * v11;
    v24 = *(v23 + 8);
    v28 = *v23;
    *v23 = a1;
    *(v23 + 8) = a2;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  *(v22[6] + 8 * v11) = a3;
  v25 = (v22[7] + 16 * v11);
  *v25 = a1;
  v25[1] = a2;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_23A9DA000(uint64_t a1, char a2, float32x2_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23A9EDEEC(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_23A906C14(v14, a2 & 1);
      v18 = *v4;
      result = sub_23A9EDEEC(a3);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        result = sub_23AA0DC24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23A90D19C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = *&a3;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_23A9DA160(char a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_23A9EDF54(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_23A90D30C();
    result = v19;
    goto LABEL_8;
  }

  sub_23A906EE8(v16, a3 & 1);
  v20 = *v5;
  result = sub_23A9EDF54(a2);
  if ((v17 & 1) == (v21 & 1))
  {
LABEL_8:
    v22 = *v5;
    if (v17)
    {
      v23 = v22[7] + 16 * result;
      *v23 = a1;
      *(v23 + 8) = a4;
      return result;
    }

    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a2;
    v24 = v22[7] + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a4;
    v25 = v22[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v22[2] = v26;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

unint64_t sub_23A9DA2A0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23A9EDF98(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_23A907164(v14, a2 & 1);
      v18 = *v4;
      result = sub_23A9EDF98(a1);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        type metadata accessor for CDTTriangle();
        result = sub_23AA0DC24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23A90D46C();
      result = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a3;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a1;
  *(v20[7] + 8 * result) = a3;
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20[2] = v22;
}

unint64_t sub_23A9DA3F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23A9EDF54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A907454(v14, a3 & 1);
      v18 = *v4;
      result = sub_23A9EDF54(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_23AA0DC24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23A90D5CC();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_23A9DA53C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23A9EDF54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A908130(v14, a3 & 1);
      v18 = *v4;
      result = sub_23A9EDF54(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_23AA0DC24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23A90DD80();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_23A9DA688(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23A9F573C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A9083AC(v14, a3 & 1);
      v18 = *v4;
      result = sub_23A9F573C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_23AA0DC24();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23A90DEE0();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    v22 = v20[7] + 40 * result;
    v23 = *a1;
    v24 = *(a1 + 16);
    *(v22 + 32) = *(a1 + 32);
    *v22 = v23;
    *(v22 + 16) = v24;
    v25 = v20[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v20[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 40 * result;

  return sub_23A9E362C(a1, v21);
}

_OWORD *sub_23A9DA840(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A9EDDFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23A90E31C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23A90893C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23A9EDDFC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23AA0DC24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_23A8EF9F0(a1, v23);
  }

  else
  {
    sub_23A9DBCC8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_23A9DA990(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23A9EDD28(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for ScanItemStrut();
      return sub_23A9E355C(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for ScanItemStrut);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_23A90E4C0();
    goto LABEL_7;
  }

  sub_23A908BF4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_23A9EDD28(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_23A9DBFB4(v15, v12, a1, v21, type metadata accessor for ScanItemStrut, type metadata accessor for ScanItemStrut);
}

uint64_t sub_23A9DAB8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_23AA0C0E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_23A9EDD28(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_23A90E648();
      goto LABEL_9;
    }

    sub_23A908EB0(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_23A9EDD28(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_23A9DBD34(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_23A9DAD68(uint64_t a1, char a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a4;
  v8 = sub_23AA0BFB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_23A9EE2D0(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a2 & 1) != 0)
  {
LABEL_7:
    v21 = *v5;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 32 * v15;
      v23 = v27;
      *v22 = v26;
      *(v22 + 16) = v23;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a2 & 1) == 0)
  {
    result = sub_23A90EA34();
    goto LABEL_7;
  }

  sub_23A9095E0(result, a2 & 1);
  v24 = *v5;
  result = sub_23A9EE2D0(a1);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a1, v8);
  return sub_23A9DBDF4(v15, v12, v21, v26, v27);
}

uint64_t sub_23A9DAF10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23A9EE458(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23A909D40(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_23A9EE458(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for PixelBufferFormat();
        sub_23AA0DC24();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v17 = v9;
      sub_23A90EF34();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v23 = v20[2];
  v13 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v24;
}

uint64_t sub_23A9DB06C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A9EDDFC(a2, a3);
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
      sub_23A909FF8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23A9EDDFC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_23AA0DC24();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_23A90F094();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_23A9DB1E4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23A9EDD28(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_23A90F36C();
    goto LABEL_7;
  }

  sub_23A90A548(result, a3 & 1);
  v22 = *v4;
  result = sub_23A9EDD28(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_23A9DBEFC(v15, v12, a1 & 1, v21);
}

uint64_t sub_23A9DB384(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23A9EDD28(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for CapturedRoom.Surface(0);
      return sub_23A9E355C(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for CapturedRoom.Surface);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_23A90F5DC();
    goto LABEL_7;
  }

  sub_23A90A908(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_23A9EDD28(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_23A9DBFB4(v15, v12, a1, v21, type metadata accessor for CapturedRoom.Surface, type metadata accessor for CapturedRoom.Surface);
}

uint64_t sub_23A9DB580(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23A9EDD28(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for CapturedRoom.Object(0);
      return sub_23A9E355C(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for CapturedRoom.Object);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_23A90F930();
    goto LABEL_7;
  }

  sub_23A90ADB8(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_23A9EDD28(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_23A9DBFB4(v15, v12, a1, v21, type metadata accessor for CapturedRoom.Object, type metadata accessor for CapturedRoom.Object);
}

uint64_t sub_23A9DB77C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23A9EE264(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23A90FBEC();
      goto LABEL_7;
    }

    sub_23A90B1D0(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_23A9EE264(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14D0, &unk_23AA18BE0);
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_23AA0BFB4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:
  sub_23A9DC0A8(v10, a2, a1, v16);
}

uint64_t sub_23A9DB8F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23A9F573C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23A90FE5C();
      goto LABEL_7;
    }

    sub_23A90B540(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_23A9F573C(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_23AA0BFB4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_23A9DC154(v10, a2, a1, v16);
}

uint64_t sub_23A9DBA60(unint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, __n128 a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_23AA0C0E4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  v12 = (a4[7] + 32 * a1);
  *v12 = a5;
  v12[1].n128_u8[0] = a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_23A9DBB30(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_23A9DBB74(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_23A9DBBCC(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_23A9DBC10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23AA0C0E4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

_OWORD *sub_23A9DBCC8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23A8EF9F0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_23A9DBD34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_23AA0C0E4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_23A9DBDF4(unint64_t a1, uint64_t a2, void *a3, __n128 a4, __n128 a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_23AA0BFB4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a3[7] + 32 * a1);
  *v11 = a4;
  v11[1] = a5;
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

unint64_t sub_23A9DBEB4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_23A9DBEFC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23AA0C0E4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_23A9DBFB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_23AA0C0E4();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_23A9E35C4(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_23A9DC0A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_23AA0BFB4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_23A9DC154(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_23AA0BFB4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t (*sub_23A9DC200(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE90360](a2, a3);
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
    *v3 = v5;
    return sub_23A9E375C;
  }

  __break(1u);
  return result;
}

void (*sub_23A9DC280(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE90360](a2, a3);
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
    return sub_23A9DC300;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23A9DC308(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE90360](a2, a3);
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
    *v3 = v5;
    return sub_23A9DC388;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23A9DC390(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE90360](a2, a3);
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
    return sub_23A9E3760;
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9DC410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1470, &qword_23AA1B2A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF058, &qword_23AA1B2B0);
    v8 = sub_23AA0DA44();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23A8D5194(v10, v6, &unk_27DFB1470, &qword_23AA1B2A8);
      result = sub_23A9EDD28(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23AA0C0E4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23A9DC5F8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF090, &unk_23AA1B300);
  v3 = sub_23AA0DA44();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_23A9EDEEC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_23A9EDEEC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9DC708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1480, &qword_23AA1B2B8);
    v3 = sub_23AA0DA44();
    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_23A9EDEEC(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23A9DC7F8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14B8, &unk_23AA1B2F0);
  v3 = sub_23AA0DA44();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_23A9EDF54(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_23A9EDF54(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9DC900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14B0, &qword_23AA1B2E8);
    v3 = sub_23AA0DA44();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_23A9EE050(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23A9DC9E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF078, &qword_23AA1B2A0);
  v3 = sub_23AA0DA44();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v22 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = sub_23A9F573C(v4);
  v9 = v22;
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v8;
  result = v5;
  v13 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + v11) = v4;
    v14 = v3[7] + 40 * v11;
    *v14 = result;
    *(v14 + 8) = v6;
    *(v14 + 16) = v9;
    *(v14 + 32) = v7;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 12;
    v4 = *(v13 - 40);
    v19 = *(v13 - 4);
    v6 = *(v13 - 24);
    v21 = *(v13 - 1);
    v7 = *v13;

    v11 = sub_23A9F573C(v4);
    v13 = v18;
    result = v19;
    v9 = v21;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9DCB74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB14A0, &qword_23AA1B2D8);
    v3 = sub_23AA0DA44();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A8D5194(v4, &v11, &qword_27DFB14A8, &qword_23AA1B2E0);
      v5 = v11;
      result = sub_23A9EE3A4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23A8EF9F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DCC9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1490, &qword_23AA12870);
    v3 = sub_23AA0DA44();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A8D5194(v4, &v13, &qword_27DFAF850, &qword_23AA1B2D0);
      v5 = v13;
      v6 = v14;
      result = sub_23A9EDDFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23A8EF9F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DCDCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEF98, &unk_23AA1B2C0);
    v3 = sub_23AA0DA44();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23A9EDDFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DCEC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1408, &unk_23AA1B278);
    v3 = sub_23AA0DA44();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A8D5194(v4, &v13, &unk_27DFB09D0, &qword_23AA19BD0);
      v5 = v13;
      v6 = v14;
      result = sub_23A9EDDFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23A8CAA3C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DCFFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1400, &qword_23AA1B270);
    v3 = sub_23AA0DA44();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23A9EDDFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DD100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1508, &qword_23AA1B330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1510, &qword_23AA12850);
    v8 = sub_23AA0DA44();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23A8D5194(v10, v6, &qword_27DFB1508, &qword_23AA1B330);
      result = sub_23A9EDD28(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23AA0C0E4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DD2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14F8, &unk_23AA1B320);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEF40, &qword_23AA12848);
    v8 = sub_23AA0DA44();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23A8D5194(v10, v6, &unk_27DFB14F8, &unk_23AA1B320);
      result = sub_23A9EDD28(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23AA0C0E4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for CapturedRoom.Surface(0);
      result = sub_23A9E35C4(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for CapturedRoom.Surface);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DD504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14E8, &unk_23AA1B310);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAEF30, &qword_23AA12840);
    v8 = sub_23AA0DA44();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23A8D5194(v10, v6, &unk_27DFB14E8, &unk_23AA1B310);
      result = sub_23A9EDD28(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23AA0C0E4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for CapturedRoom.Object(0);
      result = sub_23A9E35C4(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for CapturedRoom.Object);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A9DD720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1390, &unk_23AA1B230);
    v3 = sub_23AA0DA44();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A8D5194(v4, &v11, &unk_27DFB10B0, &unk_23AA1AA30);
      v5 = v11;
      result = sub_23A9EE4E8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23A8EF9F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23A9DD848(void *a1)
{
  v2 = v1;
  v51 = a1;
  v50 = sub_23AA0D524();
  v52 = *(v50 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D504();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v48 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 64) = 1;
  v10 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_recordFileUrl;
  v11 = sub_23AA0BFB4();
  v12 = *(*(v11 - 8) + 56);
  v12(v2 + v10, 1, 1, v11);
  v12(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_replayFileUrl, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_23AA0CE74();
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed) = 1;
  v14 = v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration;
  *v14 = 0x100010101010101;
  *(v14 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRunOption) = 8;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration) = 0;
  v15 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
  v16 = MEMORY[0x277D84F90];
  *(v2 + v15) = sub_23A9DD100(MEMORY[0x277D84F90]);
  v17 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel);
  v18 = *MEMORY[0x277D860B8];
  v46 = *(MEMORY[0x277D860B8] + 16);
  v47 = v18;
  v19 = *(MEMORY[0x277D860B8] + 32);
  v44 = *(MEMORY[0x277D860B8] + 48);
  v45 = v19;
  v20 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
  v21 = type metadata accessor for CapturedRoom(0);
  v22 = v21[12];
  *(v17 + v22) = 0;
  *(v17 + v21[13]) = 2;
  v23 = (v17 + v21[15]);
  *v23 = 0u;
  v23[1] = 0u;
  *v17 = v16;
  v17[1] = v16;
  v17[2] = v16;
  v17[3] = v16;
  v17[4] = v16;
  v17[5] = v16;
  *(v17 + v21[14]) = v16;
  v24 = v17 + v21[10];
  sub_23AA0C0D4();
  *(v17 + v21[11]) = v16;
  *(v17 + v22) = 0;
  v25 = (v17 + v21[16]);
  v26 = v46;
  *v25 = v47;
  v25[1] = v26;
  v27 = v44;
  v25[2] = v45;
  v25[3] = v27;
  v53[3] = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
  v53[0] = v20;
  sub_23A8D5068(v53, v23, &unk_27DFB1140, &qword_23AA19C10);
  v28 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
  *(v2 + v28) = sub_23A9DD2E8(v16);
  v29 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  *(v2 + v29) = sub_23A9DD504(v16);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_detectedObjects) = v16;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls) = v16;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = v16;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v16;
  *&v47 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue;
  *&v45 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  *&v46 = "plemented for this class";
  sub_23AA0CF04();
  v53[0] = v16;
  *&v44 = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230]);
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v30 = *MEMORY[0x277D85260];
  v31 = *(v52 + 104);
  v52 += 104;
  v43[0] = v31;
  v33 = v49;
  v32 = v50;
  v31(v49, v30, v50);
  *(v2 + v47) = sub_23AA0D554();
  *&v47 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_saveFileQueue;
  *&v46 = "an.FloorPlanCaptureSession";
  sub_23AA0CF14();
  v53[0] = MEMORY[0x277D84F90];
  sub_23AA0D764();
  (v43[0])(v33, v30, v32);
  *(v2 + v47) = sub_23AA0D554();
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate) = 0;
  v34 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
  *v34 = xmmword_23AA12250;
  v34[1] = xmmword_23AA12220;
  v34[2] = xmmword_23AA12230;
  v34[3] = xmmword_23AA11AE0;
  v35 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingStateOrdinalFormatter;
  v36 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v36 setNumberStyle_];
  *(v2 + v35) = v36;
  v37 = v51;
  v38 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState;
  v39 = sub_23AA0D5F4();
  (*(*(v39 - 8) + 56))(v2 + v38, 1, 2, v39);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportThreshold) = 600;
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = 0;
  if (v37)
  {
    v40 = v37;
  }

  else
  {
    v40 = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
  }

  *(v2 + 56) = v40;
  v41 = v37;
  sub_23A9C965C(v37 == 0);
  return v2;
}

uint64_t sub_23A9DDFEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void sub_23A9DE024()
{
  v1 = 256;
  if (!*(v0 + 25))
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  v3 = 0x10000;
  if (!*(v0 + 26))
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!*(v0 + 27))
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if (!*(v0 + 28))
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if (!*(v0 + 29))
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if (!*(v0 + 30))
  {
    v8 = 0;
  }

  v9 = v6 | v7;
  v10 = 0x100000000000000;
  if (!*(v0 + 31))
  {
    v10 = 0;
  }

  sub_23A9CA60C(*(v0 + 16), v5 | v9 | v8 | v10, *(v0 + 32));
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A9DE0E4()
{
  result = qword_27DFB1190;
  if (!qword_27DFB1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1190);
  }

  return result;
}

unint64_t sub_23A9DE13C()
{
  result = qword_27DFB1198;
  if (!qword_27DFB1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1198);
  }

  return result;
}

unint64_t sub_23A9DE194()
{
  result = qword_27DFB11A0;
  if (!qword_27DFB11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB11A0);
  }

  return result;
}

unint64_t sub_23A9DE1EC()
{
  result = qword_27DFB11A8;
  if (!qword_27DFB11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB11A8);
  }

  return result;
}

uint64_t sub_23A9DE240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23A9DE290(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  return swift_unknownObjectWeakAssign();
}

id sub_23A9DE2E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

uint64_t sub_23A9DE344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_23A9DE38C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_23A9DE3D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_23A9DE418(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 65) = v2;
  return result;
}

uint64_t keypath_get_20Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_23A8D5194(v4 + v5, a3, &qword_27DFAF210, &qword_23AA12EE8);
}

uint64_t sub_23A9DE534@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t keypath_get_24Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_set_25Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2 + *a5;
  swift_beginAccess();
  *(v7 + 8) = v6;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for RoomCaptureSession()
{
  result = qword_27DFB11B0;
  if (!qword_27DFB11B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A9DE6D8()
{
  sub_23A9DEE48();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_23AA0CE84();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for CapturedRoom(319);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_23AA0D604();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_23A9DEE48()
{
  if (!qword_27DFB11C0)
  {
    sub_23AA0BFB4();
    v0 = sub_23AA0D664();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFB11C0);
    }
  }
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RoomCaptureSession.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RoomCaptureSession.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_23A9DF168()
{
  result = qword_27DFB1388;
  if (!qword_27DFB1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1388);
  }

  return result;
}

uint64_t sub_23A9DF1BC(void *a1, uint64_t a2)
{
  v363 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13B0, &unk_23AA1B240);
  v382 = *(v3 - 8);
  v4 = v382[8];
  MEMORY[0x28223BE20](v3);
  v372 = &v360 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v380 = &v360 - v7;
  MEMORY[0x28223BE20](v8);
  v371 = &v360 - v9;
  MEMORY[0x28223BE20](v10);
  v375 = &v360 - v11;
  MEMORY[0x28223BE20](v12);
  v381 = &v360 - v13;
  MEMORY[0x28223BE20](v14);
  v374 = &v360 - v15;
  MEMORY[0x28223BE20](v16);
  v377 = &v360 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0990, &qword_23AA12EE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v365 = &v360 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v383 = &v360 - v22;
  MEMORY[0x28223BE20](v23);
  v386 = &v360 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB13C0, &qword_23AA1B250);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v385 = &v360 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v384 = &v360 - v29;
  MEMORY[0x28223BE20](v30);
  v389 = &v360 - v31;
  MEMORY[0x28223BE20](v32);
  v387 = &v360 - v33;
  v407 = sub_23AA0C0E4();
  v402 = *(v407 - 8);
  v34 = *(v402 + 64);
  MEMORY[0x28223BE20](v407);
  v36 = &v360 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v360 - v38;
  MEMORY[0x28223BE20](v40);
  v369 = &v360 - v41;
  MEMORY[0x28223BE20](v42);
  v367 = &v360 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v360 - v45;
  MEMORY[0x28223BE20](v47);
  v368 = &v360 - v48;
  MEMORY[0x28223BE20](v49);
  v393 = (&v360 - v50);
  MEMORY[0x28223BE20](v51);
  v391 = &v360 - v52;
  MEMORY[0x28223BE20](v53);
  v405 = &v360 - v54;
  v399 = type metadata accessor for CapturedRoom.Object(0);
  v406 = *(v399 - 8);
  v55 = *(v406 + 64);
  MEMORY[0x28223BE20](v399);
  v373 = &v360 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v376 = &v360 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = (&v360 - v60);
  MEMORY[0x28223BE20](v62);
  v370 = &v360 - v63;
  MEMORY[0x28223BE20](v64);
  v364 = &v360 - v65;
  MEMORY[0x28223BE20](v66);
  v395 = &v360 - v67;
  MEMORY[0x28223BE20](v68);
  v366 = &v360 - v69;
  MEMORY[0x28223BE20](v70);
  i = &v360 - v71;
  MEMORY[0x28223BE20](v72);
  v392 = &v360 - v73;
  MEMORY[0x28223BE20](v74);
  v403 = (&v360 - v75);
  MEMORY[0x28223BE20](v76);
  v78 = &v360 - v77;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v361 = v61;
  v378 = v39;
  v360 = v36;
  v394 = Strong;
  v80 = *(a2 + 40);
  v81 = *(v80 + 16);
  v404 = v3;
  v388 = v46;
  v398 = v81;
  if (v81)
  {
    v82 = 0;
    v83 = *(v399 + 32);
    v396 = (v80 + ((*(v406 + 80) + 32) & ~*(v406 + 80)));
    v397 = v83;
    v401 = (v402 + 16);
    v390 = (v402 + 8);
    v84 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v82 >= *(v80 + 16))
      {
        goto LABEL_165;
      }

      v86 = *(v406 + 72);
      sub_23A9E3260(v396 + v86 * v82, v78, type metadata accessor for CapturedRoom.Object);
      v87 = *v401;
      v88 = v405;
      (*v401)(v405, v397 + v78, v407);
      sub_23A9E35C4(v78, v403, type metadata accessor for CapturedRoom.Object);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v410 = v84;
      v39 = sub_23A9EDD28(v88);
      v91 = v84;
      v92 = *(v84 + 16);
      v93 = (v90 & 1) == 0;
      v94 = v92 + v93;
      if (__OFADD__(v92, v93))
      {
        goto LABEL_166;
      }

      v95 = v90;
      if (*(v91 + 24) >= v94)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v98 = v410;
          if ((v90 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_23A90F930();
          v98 = v410;
          if ((v95 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_23A90ADB8(v94, isUniquelyReferenced_nonNull_native);
        v96 = sub_23A9EDD28(v405);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_182;
        }

        v39 = v96;
        v98 = v410;
        if ((v95 & 1) == 0)
        {
LABEL_14:
          v98[(v39 >> 6) + 8] |= 1 << v39;
          v99 = v402;
          v100 = v405;
          v101 = v407;
          v87(v98[6] + *(v402 + 72) * v39, v405, v407);
          sub_23A9E35C4(v403, v98[7] + v39 * v86, type metadata accessor for CapturedRoom.Object);
          (*(v99 + 8))(v100, v101);
          v102 = v98[2];
          v103 = __OFADD__(v102, 1);
          v104 = v102 + 1;
          if (v103)
          {
            goto LABEL_169;
          }

          v84 = v98;
          v98[2] = v104;
          goto LABEL_5;
        }
      }

      sub_23A9E355C(v403, v98[7] + v39 * v86, type metadata accessor for CapturedRoom.Object);
      (*v390)(v405, v407);
      v84 = v98;
LABEL_5:
      ++v82;
      v3 = v404;
      v85 = v393;
      if (v398 == v82)
      {
        goto LABEL_20;
      }
    }
  }

  v84 = MEMORY[0x277D84F98];
  v85 = v393;
LABEL_20:
  v106 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  v107 = v394;
  swift_beginAccess();
  v390 = v106;
  v108 = *(v107 + v106);
  v109 = v108 + 64;
  v110 = 1 << *(v108 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & *(v108 + 64);
  v82 = (v110 + 63) >> 6;
  v401 = (v402 + 16);
  v405 = v402 + 32;
  v396 = v382 + 6;
  v397 = (v382 + 7);
  v398 = (v406 + 56);
  v403 = (v402 + 8);
  v382 = v108;

  v113 = 0;
  v379 = MEMORY[0x277D84F98];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v114 = v113;
        if (v112)
        {
          v115 = v113;
LABEL_32:
          v118 = __clz(__rbit64(v112));
          v112 &= v112 - 1;
          v119 = v118 | (v115 << 6);
          v120 = v382;
          v121 = v402;
          (*(v402 + 16))(v391, v382[6] + *(v402 + 72) * v119, v407);
          v122 = v120[7] + *(v406 + 72) * v119;
          v123 = v392;
          sub_23A9E3260(v122, v392, type metadata accessor for CapturedRoom.Object);
          v124 = *(v404 + 48);
          v3 = v404;
          v117 = v389;
          (*(v121 + 32))();
          sub_23A9E35C4(v123, &v117[v124], type metadata accessor for CapturedRoom.Object);
          v125 = 0;
          v113 = v115;
          v85 = v393;
        }

        else
        {
          v116 = v82 <= v113 + 1 ? v113 + 1 : v82;
          v113 = v116 - 1;
          v117 = v389;
          while (1)
          {
            v115 = v114 + 1;
            if (__OFADD__(v114, 1))
            {
              __break(1u);
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }

            if (v115 >= v82)
            {
              break;
            }

            v112 = *(v109 + 8 * v115);
            ++v114;
            if (v112)
            {
              goto LABEL_32;
            }
          }

          v112 = 0;
          v125 = 1;
        }

        v126 = *v397;
        (*v397)(v117, v125, 1, v3);
        v127 = v117;
        v128 = v387;
        sub_23A930208(v127, v387, &qword_27DFB13C0, &qword_23AA1B250);
        v39 = *v396;
        if ((*v396)(v128, 1, v3) == 1)
        {
          v393 = v126;

          v157 = *(v84 + 64);
          v389 = (v84 + 64);
          v158 = 1 << *(v84 + 32);
          v159 = -1;
          if (v158 < 64)
          {
            v159 = ~(-1 << v158);
          }

          v160 = v159 & v157;
          v161 = (v158 + 63) >> 6;

          v162 = 0;
          v387 = MEMORY[0x277D84F98];
          for (i = v84; ; v84 = i)
          {
            v163 = v390;
            while (1)
            {
              v164 = v162;
              if (v160)
              {
LABEL_53:
                v165 = v164;
LABEL_61:
                v168 = __clz(__rbit64(v160));
                v160 &= v160 - 1;
                v169 = v168 | (v165 << 6);
                v170 = *(v84 + 48);
                v171 = v84;
                v172 = v402;
                v173 = v391;
                v174 = v407;
                (*(v402 + 16))(v391, v170 + *(v402 + 72) * v169, v407);
                v175 = *(v171 + 56) + *(v406 + 72) * v169;
                v176 = v392;
                sub_23A9E3260(v175, v392, type metadata accessor for CapturedRoom.Object);
                v177 = *(v404 + 48);
                v178 = *(v172 + 32);
                v179 = v385;
                v180 = v173;
                v3 = v404;
                v178(v385, v180, v174);
                sub_23A9E35C4(v176, &v179[v177], type metadata accessor for CapturedRoom.Object);
                v181 = 0;
                v162 = v165;
                v163 = v390;
                v167 = v388;
                goto LABEL_62;
              }

              while (1)
              {
                if (v161 <= v164 + 1)
                {
                  v166 = v164 + 1;
                }

                else
                {
                  v166 = v161;
                }

                v162 = v166 - 1;
                v167 = v388;
                while (1)
                {
                  v165 = v164 + 1;
                  if (__OFADD__(v164, 1))
                  {
                    goto LABEL_161;
                  }

                  if (v165 >= v161)
                  {
                    break;
                  }

                  v160 = *&v389[8 * v165];
                  ++v164;
                  if (v160)
                  {
                    goto LABEL_61;
                  }
                }

                v160 = 0;
                v181 = 1;
                v179 = v385;
LABEL_62:
                v393(v179, v181, 1, v3);
                v182 = v179;
                v183 = v384;
                sub_23A930208(v182, v384, &qword_27DFB13C0, &qword_23AA1B250);
                if ((v39)(v183, 1, v3) == 1)
                {

                  v215 = [v363 objects];
                  sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
                  v39 = sub_23AA0D2F4();

                  v82 = v39 & 0xFFFFFFFFFFFFFF8;
                  if (v39 >> 62)
                  {
                    goto LABEL_177;
                  }

                  v216 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_81;
                }

                v184 = *(v3 + 48);
                (*v405)(v167, v183, v407);
                sub_23A9E35C4(v183 + v184, v395, type metadata accessor for CapturedRoom.Object);
                v185 = *(v163 + v394);
                if (!*(v185 + 16))
                {
                  goto LABEL_69;
                }

                v186 = *(v163 + v394);

                v187 = sub_23A9EDD28(v167);
                if ((v188 & 1) == 0)
                {
                  break;
                }

                v189 = v406;
                v82 = v39;
                v190 = v163;
                v191 = v162;
                v192 = v167;
                v193 = v383;
                sub_23A9E3260(*(v185 + 56) + *(v406 + 72) * v187, v383, type metadata accessor for CapturedRoom.Object);
                sub_23A9E2ED0(v395, type metadata accessor for CapturedRoom.Object);
                (*v403)(v192, v407);

                (*(v189 + 56))(v193, 0, 1, v399);
                sub_23A8D50D0(v193, &qword_27DFB0990, &qword_23AA12EE0);
                v164 = v191;
                v163 = v190;
                v39 = v82;
                v84 = i;
                if (v160)
                {
                  goto LABEL_53;
                }
              }

LABEL_69:
              v194 = v383;
              (*v398)(v383, 1, 1, v399);
              sub_23A8D50D0(v194, &qword_27DFB0990, &qword_23AA12EE0);
              v195 = *v401;
              v196 = v367;
              (*v401)(v367, v167, v407);
              sub_23A9E3260(v395, v364, type metadata accessor for CapturedRoom.Object);
              v197 = v387;
              v198 = swift_isUniquelyReferenced_nonNull_native();
              v409 = v197;
              v199 = sub_23A9EDD28(v196);
              v201 = *(v197 + 16);
              v202 = (v200 & 1) == 0;
              v103 = __OFADD__(v201, v202);
              v203 = v201 + v202;
              if (v103)
              {
                goto LABEL_175;
              }

              v82 = v200;
              if (*(v197 + 24) >= v203)
              {
                if ((v198 & 1) == 0)
                {
                  v208 = v199;
                  sub_23A90F930();
                  v199 = v208;
                }
              }

              else
              {
                sub_23A90ADB8(v203, v198);
                v199 = sub_23A9EDD28(v367);
                if ((v82 & 1) != (v204 & 1))
                {
                  goto LABEL_182;
                }
              }

              v163 = v390;
              v205 = v409;
              v387 = v409;
              if ((v82 & 1) == 0)
              {
                break;
              }

              sub_23A9E355C(v364, *(v409 + 56) + *(v406 + 72) * v199, type metadata accessor for CapturedRoom.Object);
              v206 = *v403;
              v207 = v407;
              (*v403)(v367, v407);
              sub_23A9E2ED0(v395, type metadata accessor for CapturedRoom.Object);
              v206(v388, v207);
              v3 = v404;
              v84 = i;
            }

            *(v409 + 8 * (v199 >> 6) + 64) |= 1 << v199;
            v209 = v402;
            v82 = v199;
            v210 = v367;
            v211 = v407;
            v195(v205[6] + *(v402 + 72) * v199, v367, v407);
            sub_23A9E35C4(v364, v205[7] + *(v406 + 72) * v82, type metadata accessor for CapturedRoom.Object);
            v212 = *(v209 + 8);
            v212(v210, v211);
            sub_23A9E2ED0(v395, type metadata accessor for CapturedRoom.Object);
            v212(v388, v211);
            v213 = v205[2];
            v103 = __OFADD__(v213, 1);
            v214 = v213 + 1;
            if (v103)
            {
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            v205[2] = v214;
            v3 = v404;
          }
        }

        v129 = *(v3 + 48);
        (*v405)(v85, v128, v407);
        sub_23A9E35C4(v128 + v129, i, type metadata accessor for CapturedRoom.Object);
        if (!*(v84 + 16))
        {
          break;
        }

        v130 = sub_23A9EDD28(v85);
        if ((v131 & 1) == 0)
        {
          break;
        }

        v132 = v406;
        v133 = v386;
        sub_23A9E3260(*(v84 + 56) + *(v406 + 72) * v130, v386, type metadata accessor for CapturedRoom.Object);
        (*(v132 + 56))(v133, 0, 1, v399);
        sub_23A9E2ED0(i, type metadata accessor for CapturedRoom.Object);
        (*v403)(v85, v407);
        sub_23A8D50D0(v133, &qword_27DFB0990, &qword_23AA12EE0);
      }

      v134 = v386;
      (*v398)(v386, 1, 1, v399);
      sub_23A8D50D0(v134, &qword_27DFB0990, &qword_23AA12EE0);
      v135 = *v401;
      v39 = v368;
      (*v401)(v368, v85, v407);
      sub_23A9E3260(i, v366, type metadata accessor for CapturedRoom.Object);
      v136 = v379;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      v409 = v136;
      v138 = sub_23A9EDD28(v39);
      v140 = *(v136 + 16);
      v141 = (v139 & 1) == 0;
      v103 = __OFADD__(v140, v141);
      v142 = v140 + v141;
      if (v103)
      {
        goto LABEL_172;
      }

      v143 = v139;
      if (*(v136 + 24) >= v142)
      {
        if ((v137 & 1) == 0)
        {
          v156 = v138;
          sub_23A90F930();
          v138 = v156;
        }
      }

      else
      {
        sub_23A90ADB8(v142, v137);
        v138 = sub_23A9EDD28(v368);
        if ((v143 & 1) != (v144 & 1))
        {
          goto LABEL_182;
        }
      }

      v145 = v409;
      v379 = v409;
      if ((v143 & 1) == 0)
      {
        break;
      }

      sub_23A9E355C(v366, *(v409 + 56) + *(v406 + 72) * v138, type metadata accessor for CapturedRoom.Object);
      v39 = v403;
      v146 = *v403;
      v147 = v407;
      (*v403)(v368, v407);
      sub_23A9E2ED0(i, type metadata accessor for CapturedRoom.Object);
      v85 = v393;
      v146(v393, v147);
      v3 = v404;
    }

    *(v409 + 8 * (v138 >> 6) + 64) |= 1 << v138;
    v148 = v402;
    v149 = v145[6] + *(v402 + 72) * v138;
    v362 = v138;
    v150 = v368;
    v151 = v407;
    v135(v149, v368, v407);
    sub_23A9E35C4(v366, v145[7] + *(v406 + 72) * v362, type metadata accessor for CapturedRoom.Object);
    v152 = *(v148 + 8);
    v153 = v150;
    v39 = v403;
    v152(v153, v151);
    sub_23A9E2ED0(i, type metadata accessor for CapturedRoom.Object);
    v152(v393, v151);
    v154 = v145[2];
    v103 = __OFADD__(v154, 1);
    v155 = v154 + 1;
    if (v103)
    {
      break;
    }

    v145[2] = v155;
    v3 = v404;
    v85 = v393;
  }

  while (1)
  {
    __break(1u);
LABEL_177:
    v216 = sub_23AA0D7F4();
LABEL_81:
    v217 = v369;
    v218 = v370;
    if (v216)
    {
      break;
    }

    v405 = MEMORY[0x277D84F98];
LABEL_107:

    v249 = v379 + 64;
    v250 = 1 << *(v379 + 32);
    v251 = -1;
    if (v250 < 64)
    {
      v251 = ~(-1 << v250);
    }

    v82 = v251 & *(v379 + 64);
    v252 = (v250 + 63) >> 6;

    v253 = 0;
    v254 = v390;
    v255 = v394;
    while (v82)
    {
LABEL_117:
      v259 = __clz(__rbit64(v82)) | (v253 << 6);
      v260 = v379;
      v261 = *(v402 + 72);
      v262 = v377;
      (*(v402 + 16))(v377, *(v379 + 48) + v261 * v259, v407);
      v263 = *(v260 + 56);
      v39 = *(v406 + 72);
      sub_23A9E3260(v263 + v39 * v259, v262 + *(v404 + 48), type metadata accessor for CapturedRoom.Object);
      swift_beginAccess();
      v264 = *(v254 + v255);
      v265 = sub_23A9EDD28(v262);
      if (v266)
      {
        v267 = v265;
        v268 = *(v254 + v255);
        v269 = swift_isUniquelyReferenced_nonNull_native();
        v270 = *(v254 + v255);
        v408 = v270;
        *(v254 + v255) = 0x8000000000000000;
        if (!v269)
        {
          sub_23A90F930();
          v270 = v408;
        }

        (*v403)(*(v270 + 48) + v267 * v261, v407);
        v257 = v365;
        sub_23A9E35C4(*(v270 + 56) + v267 * v39, v365, type metadata accessor for CapturedRoom.Object);
        sub_23A90C994(v267, v270);
        v271 = *(v254 + v255);
        *(v254 + v255) = v270;

        v256 = 0;
      }

      else
      {
        v256 = 1;
        v257 = v365;
      }

      v82 &= v82 - 1;
      (*v398)(v257, v256, 1, v399);
      sub_23A8D50D0(v257, &qword_27DFB0990, &qword_23AA12EE0);
      swift_endAccess();
      sub_23A8D50D0(v377, &unk_27DFB13B0, &unk_23AA1B240);
    }

    while (1)
    {
      v258 = v253 + 1;
      if (__OFADD__(v253, 1))
      {
        break;
      }

      if (v258 >= v252)
      {

        v272 = (v387 + 64);
        v273 = 1 << *(v387 + 32);
        v274 = -1;
        if (v273 < 64)
        {
          v274 = ~(-1 << v273);
        }

        v275 = v274 & *(v387 + 64);
        v276 = (v273 + 63) >> 6;

        v277 = 0;
        v82 = &unk_27DFB13B0;
        v397 = v276;
        v398 = v272;
        while (v275)
        {
LABEL_131:
          v283 = __clz(__rbit64(v275)) | (v277 << 6);
          v284 = v387;
          v285 = *(v402 + 72);
          v286 = *(v387 + 48) + v285 * v283;
          v287 = v374;
          v399 = *(v402 + 16);
          (v399)(v374, v286, v407);
          v39 = *(v406 + 72);
          v288 = *(v284 + 56) + v39 * v283;
          v289 = v404;
          sub_23A9E3260(v288, v287 + *(v404 + 48), type metadata accessor for CapturedRoom.Object);
          v290 = v381;
          sub_23A8D5194(v287, v381, v82, &unk_23AA1B240);
          v291 = v287;
          v292 = v375;
          v293 = v82;
          sub_23A8D5194(v291, v375, v82, &unk_23AA1B240);
          v294 = *(v289 + 48);
          v82 = v390;
          v295 = v394;
          swift_beginAccess();
          sub_23A9E35C4(v292 + v294, v376, type metadata accessor for CapturedRoom.Object);
          v296 = *(v295 + v82);
          v297 = swift_isUniquelyReferenced_nonNull_native();
          v298 = v295;
          v299 = v297;
          v408 = *(v298 + v82);
          v300 = v408;
          *(v298 + v82) = 0x8000000000000000;
          v301 = sub_23A9EDD28(v290);
          v303 = v300[2];
          v304 = (v302 & 1) == 0;
          v103 = __OFADD__(v303, v304);
          v305 = v303 + v304;
          if (v103)
          {
            goto LABEL_170;
          }

          v306 = v302;
          if (v300[3] >= v305)
          {
            v82 = v293;
            if ((v299 & 1) == 0)
            {
              v313 = v301;
              sub_23A90F930();
              v301 = v313;
            }
          }

          else
          {
            sub_23A90ADB8(v305, v299);
            v301 = sub_23A9EDD28(v381);
            if ((v306 & 1) != (v307 & 1))
            {
              goto LABEL_182;
            }

            v82 = v293;
          }

          v308 = v394;
          v309 = v408;
          if (v306)
          {
            sub_23A9E355C(v376, v408[7] + v301 * v39, type metadata accessor for CapturedRoom.Object);
          }

          else
          {
            v408[(v301 >> 6) + 8] |= 1 << v301;
            v310 = v301;
            (v399)(*(v309 + 6) + v301 * v285, v381, v407);
            sub_23A9E35C4(v376, *(v309 + 7) + v310 * v39, type metadata accessor for CapturedRoom.Object);
            v311 = *(v309 + 2);
            v103 = __OFADD__(v311, 1);
            v312 = v311 + 1;
            if (v103)
            {
              goto LABEL_173;
            }

            *(v309 + 2) = v312;
          }

          v275 &= v275 - 1;
          v278 = *(v404 + 48);
          v39 = *v403;
          v279 = v381;
          v280 = v407;
          (*v403)(v381, v407);
          v281 = *(v390 + v308);
          *(v390 + v308) = v309;

          swift_endAccess();
          sub_23A8D50D0(v374, v82, &unk_23AA1B240);
          (v39)(v375, v280);
          sub_23A9E2ED0(v279 + v278, type metadata accessor for CapturedRoom.Object);
          v276 = v397;
          v272 = v398;
        }

        while (1)
        {
          v282 = v277 + 1;
          if (__OFADD__(v277, 1))
          {
            goto LABEL_163;
          }

          if (v282 >= v276)
          {

            v314 = (v405 + 64);
            v315 = 1 << *(v405 + 32);
            v316 = -1;
            if (v315 < 64)
            {
              v316 = ~(-1 << v315);
            }

            v317 = v316 & *(v405 + 64);
            v318 = (v315 + 63) >> 6;

            v319 = 0;
            v82 = &unk_27DFB13B0;
            v397 = v318;
            v398 = v314;
            while (v317)
            {
LABEL_150:
              v325 = __clz(__rbit64(v317)) | (v319 << 6);
              v326 = v405;
              v327 = *(v402 + 72);
              v328 = *(v405 + 48) + v327 * v325;
              v329 = v371;
              v399 = *(v402 + 16);
              (v399)(v371, v328, v407);
              v39 = *(v406 + 72);
              v330 = *(v326 + 56) + v39 * v325;
              v331 = v404;
              sub_23A9E3260(v330, v329 + *(v404 + 48), type metadata accessor for CapturedRoom.Object);
              v332 = v380;
              sub_23A8D5194(v329, v380, v82, &unk_23AA1B240);
              v333 = v329;
              v334 = v372;
              v335 = v82;
              sub_23A8D5194(v333, v372, v82, &unk_23AA1B240);
              v336 = *(v331 + 48);
              v82 = v390;
              v337 = v394;
              swift_beginAccess();
              sub_23A9E35C4(v334 + v336, v373, type metadata accessor for CapturedRoom.Object);
              v338 = *(v337 + v82);
              v339 = swift_isUniquelyReferenced_nonNull_native();
              v340 = v337;
              v341 = v339;
              v408 = *(v340 + v82);
              v342 = v408;
              *(v340 + v82) = 0x8000000000000000;
              v343 = sub_23A9EDD28(v332);
              v345 = v342[2];
              v346 = (v344 & 1) == 0;
              v103 = __OFADD__(v345, v346);
              v347 = v345 + v346;
              if (v103)
              {
                goto LABEL_171;
              }

              v348 = v344;
              if (v342[3] >= v347)
              {
                v82 = v335;
                if ((v341 & 1) == 0)
                {
                  v355 = v343;
                  sub_23A90F930();
                  v343 = v355;
                }
              }

              else
              {
                sub_23A90ADB8(v347, v341);
                v343 = sub_23A9EDD28(v380);
                if ((v348 & 1) != (v349 & 1))
                {
                  goto LABEL_182;
                }

                v82 = v335;
              }

              v350 = v394;
              v351 = v408;
              if (v348)
              {
                sub_23A9E355C(v373, v408[7] + v343 * v39, type metadata accessor for CapturedRoom.Object);
              }

              else
              {
                v408[(v343 >> 6) + 8] |= 1 << v343;
                v352 = v343;
                (v399)(*(v351 + 6) + v343 * v327, v380, v407);
                sub_23A9E35C4(v373, *(v351 + 7) + v352 * v39, type metadata accessor for CapturedRoom.Object);
                v353 = *(v351 + 2);
                v103 = __OFADD__(v353, 1);
                v354 = v353 + 1;
                if (v103)
                {
                  goto LABEL_174;
                }

                *(v351 + 2) = v354;
              }

              v317 &= v317 - 1;
              v320 = *(v404 + 48);
              v39 = *v403;
              v321 = v380;
              v322 = v407;
              (*v403)(v380, v407);
              v323 = *(v390 + v350);
              *(v390 + v350) = v351;

              swift_endAccess();
              sub_23A8D50D0(v371, v82, &unk_23AA1B240);
              (v39)(v372, v322);
              sub_23A9E2ED0(v321 + v320, type metadata accessor for CapturedRoom.Object);
              v318 = v397;
              v314 = v398;
            }

            while (1)
            {
              v324 = v319 + 1;
              if (__OFADD__(v319, 1))
              {
                goto LABEL_164;
              }

              if (v324 >= v318)
              {

                v357 = sub_23A9C8C28(v356, sub_23A9EDB58, type metadata accessor for CapturedRoom.Object, sub_23A9F45D4);

                sub_23A9C8C28(v358, sub_23A9EDB58, type metadata accessor for CapturedRoom.Object, sub_23A9F45D4);

                sub_23A9C8C28(v359, sub_23A9EDB58, type metadata accessor for CapturedRoom.Object, sub_23A9F45D4);

                return v357;
              }

              v317 = v314[v324];
              ++v319;
              if (v317)
              {
                v319 = v324;
                goto LABEL_150;
              }
            }
          }

          v275 = v272[v282];
          ++v277;
          if (v275)
          {
            v277 = v282;
            goto LABEL_131;
          }
        }
      }

      v82 = *(v249 + 8 * v258);
      ++v253;
      if (v82)
      {
        v253 = v258;
        goto LABEL_117;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }

  v219 = 0;
  v220 = v39 & 0xC000000000000001;
  v405 = MEMORY[0x277D84F98];
  v397 = v39;
  while (2)
  {
    v221 = v219;
    while (1)
    {
      if (v220)
      {
        v222 = MEMORY[0x23EE90360](v221, v39);
      }

      else
      {
        if (v221 >= *(v82 + 16))
        {
          goto LABEL_168;
        }

        v222 = *(v39 + 8 * v221 + 32);
      }

      v223 = v222;
      v219 = v221 + 1;
      if (__OFADD__(v221, 1))
      {
        goto LABEL_167;
      }

      v224 = [v222 identifier];
      if (!v224)
      {
        goto LABEL_179;
      }

      v225 = v224;
      sub_23AA0C0A4();

      v226 = i;
      if (*(i + 16))
      {
        v227 = sub_23A9EDD28(v217);
        if (v228)
        {
          break;
        }
      }

      (*v403)(v217, v407);

LABEL_85:
      ++v221;
      if (v219 == v216)
      {
        goto LABEL_107;
      }
    }

    v229 = v216;
    v230 = *(v406 + 72);
    sub_23A9E3260(*(v226 + 56) + v230 * v227, v218, type metadata accessor for CapturedRoom.Object);
    v231 = *v403;
    (*v403)(v217, v407);
    v232 = [v223 identifier];
    if (!v232)
    {
      goto LABEL_180;
    }

    v233 = v232;
    v234 = v378;
    sub_23AA0C0A4();

    v235 = *(v390 + v394);
    if (!*(v235 + 16))
    {
LABEL_97:

      v231(v234, v407);
      v218 = v370;
      sub_23A9E2ED0(v370, type metadata accessor for CapturedRoom.Object);
      v217 = v369;
      v216 = v229;
      v39 = v397;
      goto LABEL_85;
    }

    v236 = *(v390 + v394);

    v237 = sub_23A9EDD28(v234);
    if ((v238 & 1) == 0)
    {

      v234 = v378;
      goto LABEL_97;
    }

    v239 = v361;
    sub_23A9E3260(*(v235 + 56) + v237 * v230, v361, type metadata accessor for CapturedRoom.Object);
    v231(v378, v407);

    v240 = v370;
    sub_23A9754F0(v239);
    v241.n128_u32[0] = 1008981770;
    if (sub_23A9FCE04(v239, v241))
    {

      sub_23A9E2ED0(v239, type metadata accessor for CapturedRoom.Object);
      sub_23A9E2ED0(v240, type metadata accessor for CapturedRoom.Object);
      v218 = v240;
      goto LABEL_103;
    }

    v242 = [v223 identifier];
    if (v242)
    {
      v243 = v242;
      v244 = v360;
      sub_23AA0C0A4();

      v245 = v392;
      sub_23A9E3260(v370, v392, type metadata accessor for CapturedRoom.Object);
      v246 = v405;
      v247 = swift_isUniquelyReferenced_nonNull_native();
      v409 = v246;
      sub_23A9DB580(v245, v244, v247);

      v231(v244, v407);
      v218 = v370;
      sub_23A9E2ED0(v239, type metadata accessor for CapturedRoom.Object);
      sub_23A9E2ED0(v218, type metadata accessor for CapturedRoom.Object);
      v405 = v409;
LABEL_103:
      v216 = v229;
      v248 = v219 == v229;
      v217 = v369;
      v39 = v397;
      if (v248)
      {
        goto LABEL_107;
      }

      continue;
    }

    break;
  }

LABEL_181:
  __break(1u);
LABEL_182:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

id sub_23A9E1664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = sub_23AA0BF14();
  v18[0] = 0;
  v9 = [v4 initWithBaseConfiguration:a1 fileURL:v8 replayMode:a3 outError:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_23AA0BFB4();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a2, v11);
  }

  else
  {
    v14 = v18[0];
    sub_23AA0BE74();

    swift_willThrow();
    v15 = sub_23AA0BFB4();
    (*(*(v15 - 8) + 8))(a2, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23A9E17C0(unint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    sub_23A9553B4();
    if (a1 >> 62)
    {
      v3 = sub_23AA0D7F4();
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v14 = MEMORY[0x277D84F90];
      result = sub_23AA0D964();
      if (v3 < 0)
      {
        __break(1u);
        return result;
      }

      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x23EE90360](v5, a1);
        }

        else
        {
          v6 = *(a1 + 8 * v5 + 32);
        }

        v7 = v6;
        ++v5;
        type metadata accessor for RoomScanKeyframeWrapper();
        v8 = swift_allocObject();
        *(v8 + 24) = 0;
        v9 = objc_allocWithZone(type metadata accessor for RoomScanKeyframe(0));
        v10 = v7;
        v11 = sub_23A9A6F68(v10);

        v12 = *(v8 + 24);
        *(v8 + 16) = v11;
        *(v8 + 24) = v10;

        sub_23AA0D944();
        v13 = *(v14 + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
      }

      while (v3 != v5);
      v4 = v14;
    }

    sub_23A9CCF78(v4);
  }

  return result;
}

uint64_t sub_23A9E19B4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23A9E1A6C(void *a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed) == 1)
    {
      v21 = result;
      sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
      v22 = v4;
      v20 = sub_23AA0D534();
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      *(v14 + 24) = a1;
      aBlock[4] = sub_23A9E2FF0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23A9AD0B8;
      aBlock[3] = &block_descriptor_252;
      v15 = _Block_copy(aBlock);
      v16 = v1;
      v17 = a1;

      sub_23AA0CEE4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      v18 = v20;
      MEMORY[0x23EE8FFE0](0, v12, v7, v15);
      _Block_release(v15);

      (*(v22 + 8))(v7, v3);
      return (*(v9 + 8))(v12, v8);
    }

    else
    {
    }
  }

  return result;
}

void sub_23A9E1DBC(void *a1)
{
  if (qword_27DFAE520 != -1)
  {
    swift_once();
  }

  sub_23AA08EAC();
  if (qword_27DFAE530 != -1)
  {
    swift_once();
  }

  v2 = qword_27DFC0BB0;
  swift_beginAccess();
  v3 = *(v2 + 48);
  *(v2 + 48) = MEMORY[0x277D84F90];

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) != 1)
    {
      goto LABEL_17;
    }

    if ([a1 worldAlignment])
    {
      v7 = sub_23AA0CE54();
      v8 = sub_23AA0D4A4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_23A8B4000, v7, v8, "Invalid ARConfiguration.WorldAlignment: only gravity is supported", v9, 2u);
        MEMORY[0x23EE91710](v9, -1, -1);
      }

      sub_23A9DE13C();
      v10 = swift_allocError();
      *v11 = 2;
      v12 = *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
      *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v10;

      if (qword_27DFAE460 != -1)
      {
        swift_once();
      }

      v13 = sub_23AA0D1A4();
      sub_23A955B84(v13, v14);

      sub_23A9CB5E0(0);
      goto LABEL_17;
    }

    if (*(v5 + v6) != 1 || (v15 = *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration)) == 0)
    {
LABEL_17:

      return;
    }

    sub_23A8D6C58(0, &qword_27DFB1418, 0x277CE5240);
    v16 = v15;
    if (sub_23AA0D634())
    {

      goto LABEL_17;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v17 = sub_23AA0CE54();
      v18 = sub_23AA0D4A4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_23A8B4000, v17, v18, "Invalid ARConfiguration: only ARWorldTrackingConfiguration is supported", v19, 2u);
        MEMORY[0x23EE91710](v19, -1, -1);
      }

      sub_23A9DE13C();
      v20 = swift_allocError();
      *v21 = 2;
      v22 = *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
      *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v20;

      if (qword_27DFAE460 != -1)
      {
        swift_once();
      }

      v23 = sub_23AA0D1A4();
      sub_23A955B84(v23, v24);

      sub_23A9CB5E0(0);
    }
  }
}

uint64_t sub_23A9E2194(void *a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
    {
      v4 = a1;
      v5 = sub_23AA0CE54();
      v6 = sub_23AA0D494();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v17 = v8;
        *v7 = 136315138;
        swift_getErrorValue();
        v9 = sub_23AA0DC34();
        v11 = sub_23A9A65A4(v9, v10, &v17);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_23A8B4000, v5, v6, "[ARSession didFailWithError] ARSession failure with error: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x23EE91710](v8, -1, -1);
        MEMORY[0x23EE91710](v7, -1, -1);
      }

      sub_23A9DE13C();
      v12 = swift_allocError();
      *v13 = 1;
      v14 = *(v3 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
      *(v3 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v12;

      if (qword_27DFAE460 != -1)
      {
        swift_once();
      }

      LOBYTE(v17) = 1;
      v15 = sub_23AA0D1A4();
      sub_23A955B84(v15, v16);

      sub_23A9CB5E0(1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23A9E23D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = sub_23AA0CEC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23AA0CF24();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);

    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = a1;
    aBlock[4] = a3;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = v23;
    v18 = _Block_copy(aBlock);
    v19 = v4;
    v20 = a1;
    sub_23AA0CEE4();
    v25 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    v21 = v22;
    MEMORY[0x23EE8FFE0](0, v15, v11, v18);
    _Block_release(v18);

    (*(v8 + 8))(v11, v7);
    (*(v12 + 8))(v15, v24);
  }

  return result;
}

uint64_t sub_23A9E26B0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0CEC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0CF24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v13 = sub_23AA0D7F4();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  v37 = v9;
  v38 = v5;
  v35 = v10;
  v36 = v8;
  if (v13)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    result = sub_23A976130(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    v32 = v2;
    v33 = v4;
    v16 = 0;
    v17 = aBlock[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x23EE90360](v16, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 dictionaryRepresentation];
      if (v20)
      {
        v21 = v20;
        v22 = sub_23AA0D034();
      }

      else
      {

        v22 = 0;
      }

      aBlock[0] = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_23A976130((v23 > 1), v24 + 1, 1);
        v17 = aBlock[0];
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      *(v17 + 8 * v24 + 32) = v22;
    }

    while (v13 != v16);
    v2 = v32;
    v4 = v33;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v14;
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);

    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = v17;
    v27[4] = v2;
    aBlock[4] = sub_23A9E2EC4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_207_0;
    v28 = _Block_copy(aBlock);

    v29 = v2;
    v30 = v34;
    sub_23AA0CEE4();
    v39 = v14;
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    v31 = v36;
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v30, v31, v28);
    _Block_release(v28);

    (*(v38 + 8))(v31, v4);
    (*(v35 + 8))(v30, v37);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23A9E2B28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v9 = sub_23AA0CEC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23AA0CF24();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v26);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);

    v20 = swift_allocObject();
    *(v20 + 16) = v5;
    *(v20 + 24) = a1;
    aBlock[4] = a4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = v25;
    v21 = _Block_copy(aBlock);
    v22 = v5;
    sub_23AA0CEE4();
    v27 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    v23 = v24;
    MEMORY[0x23EE8FFE0](0, v17, v13, v21);
    _Block_release(v21);

    (*(v10 + 8))(v13, v9);
    (*(v14 + 8))(v17, v26);
  }

  return result;
}

uint64_t sub_23A9E2E04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9E2E44()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9E2E7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A9E2ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A9E2F30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9E2F98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A9E2FF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A9E3044()
{
  v1 = (type metadata accessor for CapturedRoom(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 32);

  v11 = *(v0 + v3 + 40);

  v12 = v1[12];
  v13 = sub_23AA0C0E4();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = *(v0 + v3 + v1[13]);

  v15 = *(v0 + v3 + v1[16]);

  v16 = (v0 + v3 + v1[17]);
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v17 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v17);

  v20 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 16, v2 | 0xF);
}

void sub_23A9E31C0()
{
  v1 = *(type metadata accessor for CapturedRoom(0) - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_23A9CF9EC((v0 + 16), v0 + v2, v4, v6, v7);
}

uint64_t sub_23A9E3260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9E32C8()
{
  v1 = *(sub_23AA0D604() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_23AA0D5F4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 2, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

void sub_23A9E33E8()
{
  v1 = *(sub_23AA0D604() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23A9CDEC0(v0 + v2, v3);
}

void sub_23A9E34AC()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet);
    if (v2)
    {
      [v2 updateWithFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t objectdestroy_272Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

id sub_23A9E3534()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  if (result)
  {
    return [result updateWithFrame_];
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9E355C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9E35C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9E3688()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23A9E36C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig);
  *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig) = 0;
}

void sub_23A9E37D0(unint64_t a1)
{
  v3 = sub_23A989220(a1, 0.1);
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    if ((v1[4].i8[0] & 1) == 0)
    {
      v6 = v1[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_23AA11C20;
      *(v7 + 32) = v5;
      *v8.i32 = -*(&v5 + 1);
      v9 = vsub_f32(0, v5);
      *(v7 + 40) = v9;
      *(v7 + 48) = vzip1_s32(v8, v5);
      *v10.i32 = *(&v5 + 1) + 0.0;
      *(v7 + 56) = vzip1_s32(v10, v9);
      v11 = v7;
      sub_23A9E38F4(&v11, v6);
      if (!*(v11 + 2))
      {
        __break(1u);
        return;
      }

      v5 = *(v11 + 4);
    }

    v1[3] = v5;
    v1[4].i8[0] = 0;

    sub_23A989EB4(a1, v5, 0);
  }
}

uint64_t sub_23A9E38F4(char **a1, float32x2_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23A975C20(v4);
  }

  v5 = *(v4 + 2);
  v22[0] = (v4 + 32);
  v22[1] = v5;
  result = sub_23AA0DBA4();
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v4 + 32);
      do
      {
        v13 = *&v4[8 * v11 + 32];
        v14 = vmul_f32(v13, a2);
        v15 = vadd_f32(v14, vdup_lane_s32(v14, 1));
        v16 = v10;
        v17 = v12;
        do
        {
          v18 = *v17;
          v19 = vmul_f32(*v17, a2);
          if ((vcgt_f32(v15, vadd_f32(v19, vdup_lane_s32(v19, 1))).u8[0] & 1) == 0)
          {
            break;
          }

          *v17 = v13;
          v17[1] = v18;
          --v17;
        }

        while (!__CFADD__(v16++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v5);
    }
  }

  else
  {
    v7 = result;
    v8 = v5 >> 1;
    if (v5 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v9 = sub_23AA0D324();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v21[0] = v9 + 32;
    v21[1] = v8;
    sub_23A9E3A8C(v21, a2, v23, v22, v7);
    *(v9 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_23A9E3A8C(uint64_t result, float32x2_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v92 = result;
  v9 = a4[1];
  if (v9 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v92;
    if (!*v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_23A977E20(v12);
      v12 = result;
    }

    v87 = *(v12 + 2);
    if (v87 >= 2)
    {
      while (*a4)
      {
        v88 = *&v12[16 * v87];
        v89 = *&v12[16 * v87 + 24];
        sub_23A9E4044((*a4 + 8 * v88), (*a4 + 8 * *&v12[16 * v87 + 16]), (*a4 + 8 * v89), v6, a2);
        if (v5)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_23A977E20(v12);
        }

        if (v87 - 2 >= *(v12 + 2))
        {
          goto LABEL_114;
        }

        v90 = &v12[16 * v87];
        *v90 = v88;
        *(v90 + 1) = v89;
        result = sub_23A977D94(v87 - 1);
        v87 = *(v12 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v10 = a5;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11++;
    if (v11 < v9)
    {
      v14 = *(*a4 + 8 * v11);
      v15 = vmul_f32(v14, a2);
      v16 = vmul_f32(*(*a4 + 8 * v13), a2);
      v17 = vadd_f32(vzip1_s32(v16, v15), vzip2_s32(v16, v15));
      v18 = vcgt_f32(vdup_lane_s32(v17, 1), v17);
      v19 = v13 + 2;
      while (v9 != v19)
      {
        v20 = vmul_f32(v14, a2);
        v21 = *(*a4 + 8 * v19);
        v22 = vmul_f32(v21, a2);
        v23 = vadd_f32(vzip1_s32(v20, v22), vzip2_s32(v20, v22));
        v24 = vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(v23, 1), v23), v18)).u8[0];
        ++v19;
        v14 = v21;
        if ((v24 & 1) == 0)
        {
          v11 = v19 - 1;
          if ((v18.i8[0] & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v11 = v9;
      if ((v18.i8[0] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v11 < v13)
      {
        goto LABEL_117;
      }

      if (v13 < v11)
      {
        v25 = 8 * v11 - 8;
        v26 = 8 * v13;
        v27 = v11;
        v28 = v13;
        do
        {
          if (v28 != --v27)
          {
            v30 = *a4;
            if (!*a4)
            {
              goto LABEL_123;
            }

            v29 = *(v30 + v26);
            *(v30 + v26) = *(v30 + v25);
            *(v30 + v25) = v29;
          }

          ++v28;
          v25 -= 8;
          v26 += 8;
        }

        while (v28 < v27);
        v9 = a4[1];
      }
    }

LABEL_20:
    if (v11 < v9)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_116;
      }

      if (v11 - v13 < v10)
      {
        if (__OFADD__(v13, v10))
        {
          goto LABEL_118;
        }

        if (v13 + v10 < v9)
        {
          v9 = v13 + v10;
        }

        if (v9 < v13)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v11 != v9)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v13)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A938B2C(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v6 = *(v12 + 2);
    v42 = *(v12 + 3);
    v43 = v6 + 1;
    if (v6 >= v42 >> 1)
    {
      result = sub_23A938B2C((v42 > 1), v6 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v43;
    v44 = &v12[16 * v6];
    *(v44 + 4) = v13;
    *(v44 + 5) = v11;
    v45 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v6)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v12 + 4);
          v48 = *(v12 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v12[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_107;
          }

          v69 = &v12[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v12[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_106;
        }

        v76 = &v12[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_109;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_119;
        }

        if (!*a4)
        {
          goto LABEL_122;
        }

        v85 = *&v12[16 * v84 + 32];
        v6 = *&v12[16 * v46 + 40];
        sub_23A9E4044((*a4 + 8 * v85), (*a4 + 8 * *&v12[16 * v46 + 32]), (*a4 + 8 * v6), v45, a2);
        if (v5)
        {
        }

        if (v6 < v85)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_23A977E20(v12);
        }

        if (v84 >= *(v12 + 2))
        {
          goto LABEL_101;
        }

        v86 = &v12[16 * v84];
        *(v86 + 4) = v85;
        *(v86 + 5) = v6;
        result = sub_23A977D94(v46);
        v43 = *(v12 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v12[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v12[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_108;
      }

      if (v62 >= v54)
      {
        v80 = &v12[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_112;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v9 = a4[1];
    v10 = a5;
    if (v11 >= v9)
    {
      goto LABEL_88;
    }
  }

  v31 = *a4;
  v32 = *a4 + 8 * v11 - 8;
  v33 = v13 - v11;
LABEL_30:
  v34 = *(v31 + 8 * v11);
  v35 = vmul_f32(v34, a2);
  v36 = vadd_f32(v35, vdup_lane_s32(v35, 1));
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *v38;
    v40 = vmul_f32(*v38, a2);
    if ((vcgt_f32(v36, vadd_f32(v40, vdup_lane_s32(v40, 1))).u8[0] & 1) == 0)
    {
LABEL_29:
      ++v11;
      v32 += 8;
      --v33;
      if (v11 != v9)
      {
        goto LABEL_30;
      }

      v11 = v9;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    *v38 = v34;
    v38[1] = v39;
    --v38;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23A9E4044(float32x2_t *__dst, float32x2_t *__src, float32x2_t *a3, float32x2_t *a4, float32x2_t a5)
{
  v5 = a4;
  v6 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v5[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v6)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      v19 = vmul_f32(*v8, a5);
      v20 = vmul_f32(*v5, a5);
      v21 = vadd_f32(vzip1_s32(v20, v19), vzip2_s32(v20, v19));
      if (vcgt_f32(vdup_lane_s32(v21, 1), v21).u8[0])
      {
        break;
      }

      v17 = *v5;
      v18 = v9 == v5++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      if (v5 >= v16)
      {
        goto LABEL_10;
      }
    }

    v18 = v9 == v8++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v5[v15];
  if (v13 >= 8 && v8 > v9)
  {
LABEL_24:
    v22 = v8 - 1;
    --v6;
    v23 = v16;
    do
    {
      v24 = v6 + 1;
      v25 = *(v23 - 8);
      v23 -= 8;
      v26 = v25;
      v27 = vmul_f32(v25, a5);
      v28 = vmul_f32(*v22, a5);
      v29 = vadd_f32(vzip1_s32(v28, v27), vzip2_s32(v28, v27));
      if (vcgt_f32(vdup_lane_s32(v29, 1), v29).u8[0])
      {
        if (v24 != v8)
        {
          *v6 = *v22;
        }

        if (v16 <= v5 || (--v8, v22 <= v9))
        {
          v8 = v22;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v16)
      {
        *v6 = v26;
      }

      --v6;
      v16 = v23;
    }

    while (v23 > v5);
    v16 = v23;
  }

LABEL_35:
  v30 = v16 - v5 + (v16 - v5 < 0 ? 7uLL : 0);
  if (v8 != v5 || v8 >= (v5 + (v30 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v5, 8 * (v30 >> 3));
  }

  return 1;
}

unint64_t sub_23A9E427C(unint64_t a1)
{
  v2 = sub_23AA0C0E4();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v145[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v145[-v8];
  v10 = sub_23A9888E0(a1);
  v11 = sub_23A988E44(v10);
  result = sub_23A98B0B0(a1, 0.07);
  v13 = result;
  v169 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_111;
  }

  v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    do
    {
      if (v14 < 1)
      {
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        return result;
      }

      v165 = v11;
      v158 = v9;
      v159 = v7;
      v156 = v2;
      v15 = 0;
      v2 = &OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      v167 = v13 & 0xC000000000000001;
      v155 = (v3 + 16);
      v154 = (v3 + 32);
      v157 = xmmword_23AA12220;
      *&v162 = MEMORY[0x277D84F90];
      v164 = v10;
      while (1)
      {
        v16 = v167 ? MEMORY[0x23EE90360](v15, v13) : *(v13 + 8 * v15 + 32);
        v9 = v16;
        v11 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v17 = *&v9[v11];
        if ((v17 & 0xC000000000000001) != 0)
        {
          if (v17 < 0)
          {
            v18 = *&v9[v11];
          }

          v19 = *&v9[v11];

          v20 = sub_23AA0D7F4();
          if (!v20)
          {
LABEL_19:

            v7 = MEMORY[0x277D84F90];
            goto LABEL_22;
          }
        }

        else
        {
          v20 = *(v17 + 16);
          v23 = *&v9[v11];

          if (!v20)
          {
            goto LABEL_19;
          }
        }

        if (v20 < 1)
        {
          v7 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          v7 = swift_allocObject();
          v21 = _swift_stdlib_malloc_size(v7);
          v22 = v21 - 32;
          if (v21 < 32)
          {
            v22 = v21 - 25;
          }

          *(v7 + 16) = v20;
          *(v7 + 24) = (2 * (v22 >> 3)) | 1;
        }

        v3 = sub_23A9F3C70(&v168, (v7 + 32), v20, v17);
        sub_23A8CA904();
        if (v3 != v20)
        {
          break;
        }

LABEL_22:
        v3 = *&v9[v11];
        if ((v3 & 0xC000000000000001) != 0)
        {
          if (v3 < 0)
          {
            v24 = *&v9[v11];
          }

          v25 = *&v9[v11];

          v26 = sub_23AA0D7F4();

          if (v26 >= 2)
          {
LABEL_28:
            if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
            {
              v11 = *(v7 + 16);
              if (v11)
              {
                goto LABEL_31;
              }

LABEL_91:

              goto LABEL_6;
            }

            v11 = sub_23AA0D7F4();
            if (!v11)
            {
              goto LABEL_91;
            }

LABEL_31:
            v2 = (v7 & 0xC000000000000001);
            if ((v7 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x23EE90360](0, v7);
              if (!*(v10 + 16))
              {
                goto LABEL_106;
              }
            }

            else
            {
              if (!*(v7 + 16))
              {
                goto LABEL_110;
              }

              v27 = *(v7 + 32);

              if (!*(v10 + 16))
              {
LABEL_106:

                goto LABEL_107;
              }
            }

            v28 = sub_23A9EDE74(v27);
            if ((v29 & 1) == 0)
            {
              goto LABEL_106;
            }

            v166 = v27;
            v30 = v13;
            v31 = v14;
            v32 = *(v10 + 56) + 16 * v28;
            v33 = *(v32 + 8);
            v34 = *(v165 + 16);
            v35 = *v32;
            if (!v34)
            {

              goto LABEL_43;
            }

            v163 = v35;
            v36 = v33;
            v37 = sub_23A9EDE74(v166);
            if ((v39 & 1) == 0)
            {

LABEL_43:

              v10 = v164;
              v14 = v31;
              v13 = v30;
LABEL_107:
              v2 = &OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
              goto LABEL_6;
            }

            v40 = v37;
            v161 = v36;
            result = v11 - 1;
            v10 = v164;
            if (__OFSUB__(v11, 1))
            {
              goto LABEL_115;
            }

            v14 = v31;
            v38.i64[0] = *(*(v165 + 56) + 8 * v40);
            v160 = v38;
            if (v2)
            {
              v41 = MEMORY[0x23EE90360](result, v7);

              v13 = v30;
              v2 = &OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
              if (!*(v10 + 16))
              {
LABEL_58:

                goto LABEL_91;
              }
            }

            else
            {
              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_116;
              }

              v13 = v30;
              v2 = &OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
              if (result >= *(v7 + 16))
              {
                goto LABEL_117;
              }

              v41 = *(v7 + 8 * result + 32);

              if (!*(v10 + 16))
              {
                goto LABEL_58;
              }
            }

            v42 = sub_23A9EDE74(v41);
            if (v43)
            {
              v44 = *(v10 + 56) + 16 * v42;
              v45 = *(v44 + 8);
              v46 = v165;
              v47 = *(v165 + 16);
              v48 = *v44;
              v49 = v48;
              if (v47)
              {
                v153 = v48;
                v50 = v45;
                v51 = sub_23A9EDE74(v41);
                if (v58)
                {
                  v57.i64[0] = *(*(v46 + 56) + 8 * v51);
                  v59 = v166;
                  v60 = *(v41 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness);
                  v61 = *&v9[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                  if (*(v166 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness))
                  {
                    v150 = v50;
                    if (v60)
                    {
                      v62 = vadd_f32(v61, vmul_f32(vadd_f32(*&v163[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v161[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]), 0xBF000000BF000000));
                      v63 = vmul_f32(v62, v62);
                      *&v55 = 1065353216;
                      if (vaddv_f32(v63) >= 0.0001)
                      {
                        v64 = vadd_f32(v63, vdup_lane_s32(v63, 1)).u32[0];
                        v65 = vrsqrte_f32(v64);
                        v66 = vmul_f32(v65, vrsqrts_f32(v64, vmul_f32(v65, v65)));
                        *v54.i8 = vmul_f32(v66, v66);
                        *&v55 = vmul_n_f32(v62, vmul_f32(v66, vrsqrts_f32(v64, *v54.i8)).f32[0]);
                      }

                      v67 = vsub_f32(vmul_f32(vadd_f32(*&v153[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v50[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]), 0x3F0000003F000000), v61);
                      *v52.i8 = vmul_f32(v67, v67);
                      *&v53 = 3212836864;
                      if (vaddv_f32(*v52.i8) >= 0.0001)
                      {
                        v68 = vadd_f32(*v52.i8, vdup_lane_s32(*v52.i8, 1)).u32[0];
                        v69 = vrsqrte_f32(v68);
                        v70 = vmul_f32(v69, vrsqrts_f32(v68, vmul_f32(v69, v69)));
                        *v54.i8 = vmul_f32(v70, v70);
                        *v52.i8 = vmul_f32(v70, vrsqrts_f32(v68, *v54.i8));
                        *&v53 = vmul_n_f32(v67, *v52.i32);
                      }

                      v162 = v53;
                      v71 = *(&v55 + 1);
                      *v52.i32 = -*(&v55 + 1);
                      v72 = *(&v53 + 1);
                      v73.i32[1] = 0;
                      v160 = v52;
                      v73.f32[0] = -*(&v55 + 1);
                      v73.i64[1] = v55;
                      *v54.i32 = -*(&v53 + 1);
                      v74.i32[1] = 0;
                      v151 = v54;
                      v74.f32[0] = -*(&v53 + 1);
                      v74.i64[1] = v53;
                      v152 = v55;
                      if (_simd_orient_vf3(v73, v74, v157) > 0.0)
                      {
                        *(&v56 + 1) = *(&v152 + 1);
                        *&v56 = vsub_f32(0, *&v152);
                        *v54.i8 = vext_s8(vadd_f32(*&v152, 0), *&v56, 4uLL);
                        *(&v56 + 1) = 0.0 - v71;
                        *(&v55 + 1) = *(&v162 + 1);
                        *&v55 = vsub_f32(0, *&v162);
                        *v57.i8 = vzip1_s32(COERCE_UNSIGNED_INT(v72 + 0.0), *&v55);
                        goto LABEL_101;
                      }

                      v56 = v152;
                      *v54.i8 = vzip1_s32(*v160.i8, *&v152);
                      v55 = v162;
                      *v57.i8 = vzip1_s32(*v151.i8, *&v162);
LABEL_96:
                      v116 = v59;
                      v117 = v41;
LABEL_102:
                      v152 = v56;
                      v160 = v54;
                      v162 = v55;
                      v147 = v57;
                      v132 = _simd_orient_vf3(vextq_s8(vzip1q_s32(0, v54), 0, 4uLL), vextq_s8(vzip1q_s32(0, v57), 0, 4uLL), v157);
                      v133 = *v155;
                      v151.i64[0] = v41;
                      v134 = v156;
                      v133(v158, v116 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v156);
                      v148 = v116;
                      v135 = *(v116 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
                      v133(v159, v117 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v134);
                      v149 = v117;
                      v136 = *(v117 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
                      v146 = v132 >= 0.0;
                      LOBYTE(v133) = v136 == 1;
                      v137 = type metadata accessor for JunctionPoint();
                      v138 = *(v137 + 48);
                      v139 = *(v137 + 52);
                      v140 = swift_allocObject();
                      *(v140 + 16) = v61;
                      v141 = *v154;
                      (*v154)(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID, v158, v134);
                      *(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_isLeftCurved) = v135 == 1;
                      *(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection) = v152;
                      *(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal) = v160.i64[0];
                      v141(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v159, v134);
                      *(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_isRightCurved) = v133;
                      *(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection) = v162;
                      *(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal) = v147.i64[0];
                      *(v140 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_configuration) = v146;

                      MEMORY[0x23EE8FD70](v142);
                      if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v143 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        sub_23AA0D314();
                      }

                      sub_23AA0D334();

                      *&v162 = v169;
                      v10 = v164;
                      goto LABEL_107;
                    }

                    v82 = *&v153[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                    v83 = *&v50[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                    v84 = vsub_f32(v83, v82);
                    v85 = vmul_f32(v84, v84);
                    if (vaddv_f32(v85) >= 0.0001)
                    {
                      v93 = vadd_f32(v85, vdup_lane_s32(v85, 1)).u32[0];
                      v94 = vrsqrte_f32(v93);
                      v95 = vmul_f32(v94, vrsqrts_f32(v93, vmul_f32(v94, v94)));
                      *&v55 = vmul_n_f32(v84, vmul_f32(v95, vrsqrts_f32(v93, vmul_f32(v95, v95))).f32[0]);
                    }

                    else
                    {
                      *&v55 = 3212836864;
                    }

                    v96 = vaddv_f32(vmul_f32(vadd_f32(v61, vmul_f32(vadd_f32(v82, v83), 0xBF000000BF000000)), *&v55));
                    v97 = vmul_f32(vadd_f32(*&v163[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v161[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]), 0x3F0000003F000000);
                    if (v96 < 0.0)
                    {
                      v98 = vsub_f32(v61, v97);
                      v99 = vmul_f32(v98, v98);
                      if (vaddv_f32(v99) >= 0.0001)
                      {
                        v121 = vadd_f32(v99, vdup_lane_s32(v99, 1)).u32[0];
                        v122 = vrsqrte_f32(v121);
                        v123 = vmul_f32(v122, vrsqrts_f32(v121, vmul_f32(v122, v122)));
                        *&v56 = vmul_n_f32(v98, vmul_f32(v123, vrsqrts_f32(v121, vmul_f32(v123, v123))).f32[0]);
                      }

                      else
                      {
                        *&v56 = 1065353216;
                      }

                      v98.f32[0] = -*(&v56 + 1);
                      *v54.i8 = vzip1_s32(v98, *&v56);
                      goto LABEL_96;
                    }

                    v108 = vsub_f32(v97, v61);
                    v109 = vmul_f32(v108, v108);
                    if (vaddv_f32(v109) >= 0.0001)
                    {
                      v127 = vadd_f32(v109, vdup_lane_s32(v109, 1)).u32[0];
                      v128 = vrsqrte_f32(v127);
                      v129 = vmul_f32(v128, vrsqrts_f32(v127, vmul_f32(v128, v128)));
                      *&v56 = vmul_n_f32(v108, vmul_f32(v129, vrsqrts_f32(v127, vmul_f32(v129, v129))).f32[0]);
                    }

                    else
                    {
                      *&v56 = 1065353216;
                    }

                    v108.f32[0] = -*(&v56 + 1);
                    *v54.i8 = vzip1_s32(v108, *&v56);
                  }

                  else
                  {
                    v75 = *&v163[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                    v76 = *&v161[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                    v77 = vadd_f32(v61, vmul_f32(vadd_f32(v75, v76), 0xBF000000BF000000));
                    v78 = vsub_f32(v76, v75);
                    v79 = vmul_f32(v78, v78);
                    v80 = vadd_f32(v79, vdup_lane_s32(v79, 1)).u32[0];
                    v81 = vaddv_f32(v79);
                    if (*(v41 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness))
                    {
                      if (v81 >= 0.0001)
                      {
                        v87 = vrsqrte_f32(v80);
                        v88 = vmul_f32(v87, vrsqrts_f32(v80, vmul_f32(v87, v87)));
                        *&v56 = vmul_n_f32(v78, vmul_f32(v88, vrsqrts_f32(v80, vmul_f32(v88, v88))).f32[0]);
                      }

                      else
                      {
                        *&v56 = 1065353216;
                      }

                      v89 = vaddv_f32(vmul_f32(v77, *&v56));
                      v90 = vmul_f32(vadd_f32(*&v153[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v50[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]), 0x3F0000003F000000);
                      v150 = v50;
                      if (v89 > 0.0)
                      {
                        v91 = vsub_f32(v90, v61);
                        v92 = vmul_f32(v91, v91);
                        if (vaddv_f32(v92) >= 0.0001)
                        {
                          v118 = vadd_f32(v92, vdup_lane_s32(v92, 1)).u32[0];
                          v119 = vrsqrte_f32(v118);
                          v120 = vmul_f32(v119, vrsqrts_f32(v118, vmul_f32(v119, v119)));
                          *&v55 = vmul_n_f32(v91, vmul_f32(v120, vrsqrts_f32(v118, vmul_f32(v120, v120))).f32[0]);
                        }

                        else
                        {
                          *&v55 = 3212836864;
                        }

                        v54 = v160;
                        v91.f32[0] = -*(&v55 + 1);
                        *v57.i8 = vzip1_s32(v91, *&v55);
                        goto LABEL_96;
                      }

                      v106 = vsub_f32(v61, v90);
                      v107 = vmul_f32(v106, v106);
                      if (vaddv_f32(v107) >= 0.0001)
                      {
                        v124 = vadd_f32(v107, vdup_lane_s32(v107, 1)).u32[0];
                        v125 = vrsqrte_f32(v124);
                        v126 = vmul_f32(v125, vrsqrts_f32(v124, vmul_f32(v125, v125)));
                        *&v55 = vmul_n_f32(v106, vmul_f32(v126, vrsqrts_f32(v124, vmul_f32(v126, v126))).f32[0]);
                      }

                      else
                      {
                        *&v55 = 3212836864;
                      }

                      v54 = v160;
                      v106.f32[0] = -*(&v55 + 1);
                      *v57.i8 = vzip1_s32(v106, *&v55);
                    }

                    else
                    {
                      v86 = v153;
                      if (v81 >= 0.0001)
                      {
                        v100 = vrsqrte_f32(v80);
                        v101 = vmul_f32(v100, vrsqrts_f32(v80, vmul_f32(v100, v100)));
                        *&v56 = vmul_n_f32(v78, vmul_f32(v101, vrsqrts_f32(v80, vmul_f32(v101, v101))).f32[0]);
                      }

                      else
                      {
                        *&v56 = 1065353216;
                      }

                      v102 = *&v153[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                      v103 = *&v50[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
                      v104 = vsub_f32(v103, v102);
                      v105 = vmul_f32(v104, v104);
                      if (vaddv_f32(v105) >= 0.0001)
                      {
                        v110 = vadd_f32(v105, vdup_lane_s32(v105, 1)).u32[0];
                        v111 = vrsqrte_f32(v110);
                        v112 = vmul_f32(v111, vrsqrts_f32(v110, vmul_f32(v111, v111)));
                        *&v55 = vmul_n_f32(v104, vmul_f32(v112, vrsqrts_f32(v110, vmul_f32(v112, v112))).f32[0]);
                      }

                      else
                      {
                        *&v55 = 3212836864;
                      }

                      v54 = v160;
                      v113 = vmul_f32(v77, *&v56);
                      v114 = vmul_f32(vadd_f32(v61, vmul_f32(vadd_f32(v102, v103), 0xBF000000BF000000)), *&v55);
                      v115 = vadd_f32(vzip1_s32(v113, v114), vzip2_s32(v113, v114));
                      if (vmul_lane_f32(v115, v115, 1).f32[0] >= 0.0)
                      {

                        goto LABEL_107;
                      }

                      v150 = v50;
                      v59 = v166;
                      v116 = v166;
                      v117 = v41;
                      if (v115.f32[0] > 0.0)
                      {
                        goto LABEL_102;
                      }
                    }
                  }

LABEL_101:
                  v130 = v56;
                  v131 = v54.i64[0];
                  *&v56 = v55;
                  v54.i64[0] = v57.i64[0];
                  v116 = v41;
                  *&v55 = v130;
                  v57.i64[0] = v131;
                  v117 = v59;
                  goto LABEL_102;
                }
              }

              else
              {
              }

              goto LABEL_107;
            }

            goto LABEL_58;
          }
        }

        else if (*(v3 + 16) >= 2)
        {
          goto LABEL_28;
        }

LABEL_6:
        if (v14 == ++v15)
        {

          v144 = v162;
          goto LABEL_113;
        }
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      result = sub_23AA0D7F4();
      v14 = result;
    }

    while (result);
  }

  v144 = MEMORY[0x277D84F90];
LABEL_113:

  return v144;
}

float32x4_t sub_23A9E5210()
{
  v1 = vdupq_lane_s32(0, 0);
  v2 = v1;
  v2.i32[0] = *(v0 + 144);
  v3 = v1;
  v3.i32[1] = HIDWORD(*(v0 + 144));
  v1.i32[2] = *(v0 + 152);
  v4 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*MEMORY[0x277D860B8])), v3, *MEMORY[0x277D860B8], 1), v1, *MEMORY[0x277D860B8], 2), xmmword_23AA11AE0, *MEMORY[0x277D860B8], 3);
  v5 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 16))), v3, *(MEMORY[0x277D860B8] + 16), 1), v1, *(MEMORY[0x277D860B8] + 16), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 16), 3);
  v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 32))), v3, *(MEMORY[0x277D860B8] + 32), 1), v1, *(MEMORY[0x277D860B8] + 32), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 32), 3);
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(v0 + 192))), v3, *(v0 + 192), 1), v1, *(v0 + 192), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 48), 3);
  v8 = *(v0 + 64);
  result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v0 + 32))), v5, *(v0 + 32), 1), v6, *(v0 + 32), 2), v7, *(v0 + 32), 3);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v0 + 48))), v5, *(v0 + 48), 1), v6, *(v0 + 48), 2), v7, *(v0 + 48), 3);
  *(v0 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v0 + 16))), v5, *(v0 + 16), 1), v6, *(v0 + 16), 2), v7, *(v0 + 16), 3);
  *(v0 + 96) = result;
  *(v0 + 112) = v10;
  *(v0 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v8.f32[0]), v5, *v8.f32, 1), v6, v8, 2), v7, v8, 3);
  return result;
}

uint64_t sub_23A9E5314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12120;
  v3 = sub_23A9E759C(0.0, xmmword_23AA12250);
  v211 = v4;
  v223 = v3;
  v192 = v6;
  v200 = v5;
  type metadata accessor for SplineCorner();
  v7 = swift_allocObject();
  v8.n128_u64[0] = 0;
  *(inited + 32) = sub_23A8CC080(1.0, 0.93, v8, 0.6, 0.98, v223, v211, v200, v7, v9, v10, v11, v12, v13, v14, v15, v192);
  v16 = sub_23A9E759C(90.0, xmmword_23AA12250);
  v212 = v17;
  v224 = v16;
  v193 = v19;
  v201 = v18;
  v20 = swift_allocObject();
  v21.n128_u64[0] = 0;
  *(inited + 40) = sub_23A8CC080(1.0, 0.93, v21, 0.6, 0.98, v224, v212, v201, v20, v22, v23, v24, v25, v26, v27, v28, v193);
  v29 = sub_23A9E759C(180.0, xmmword_23AA12250);
  v213 = v30;
  v225 = v29;
  v194 = v32;
  v202 = v31;
  v33 = swift_allocObject();
  v34.n128_u64[0] = 0;
  *(inited + 48) = sub_23A8CC080(1.0, 0.93, v34, 0.6, 0.98, v225, v213, v202, v33, v35, v36, v37, v38, v39, v40, v41, v194);
  v42 = sub_23A9E759C(270.0, xmmword_23AA12250);
  v214 = v43;
  v226 = v42;
  v195 = v45;
  v203 = v44;
  v46 = swift_allocObject();
  v47.n128_u64[0] = 0;
  *(inited + 56) = sub_23A8CC080(1.0, 0.93, v47, 0.6, 0.98, v226, v214, v203, v46, v48, v49, v50, v51, v52, v53, v54, v195);
  type metadata accessor for SplineGroup();
  swift_allocObject();
  v55 = sub_23A913D30(inited);
  swift_setDeallocating();
  v56 = *(inited + 16);
  swift_arrayDestroy();
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_23AA12120;
  v58 = sub_23A9E759C(0.0, xmmword_23AA12250);
  v59 = vmulq_f32(v58, 0);
  v227 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v58, 0, v60), 0, v61), 0, v62);
  v215 = vmlaq_f32(vmlaq_f32(vaddq_f32(v60, v59), 0, v61), 0, v62);
  v63 = vmlaq_f32(v59, 0, v60);
  v204 = vmlaq_f32(vaddq_f32(v61, v63), 0, v62);
  v196 = vaddq_f32(v62, vmlaq_f32(v63, 0, v61));
  v64 = swift_allocObject();
  v65.n128_u64[0] = 0;
  *(v57 + 32) = sub_23A8CC080(1.0, 1.0, v65, 0.4, 0.98, v227, v215, v204, v64, v66, v67, v68, v69, v70, v71, v72, v196);
  v73 = sub_23A9E759C(90.0, xmmword_23AA12250);
  v74 = vmulq_f32(v73, 0);
  v228 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v73, 0, v75), 0, v76), 0, v77);
  v216 = vmlaq_f32(vmlaq_f32(vaddq_f32(v75, v74), 0, v76), 0, v77);
  v78 = vmlaq_f32(v74, 0, v75);
  v205 = vmlaq_f32(vaddq_f32(v76, v78), 0, v77);
  v197 = vaddq_f32(v77, vmlaq_f32(v78, 0, v76));
  v79 = swift_allocObject();
  v80.n128_u64[0] = 0;
  *(v57 + 40) = sub_23A8CC080(1.0, 1.0, v80, 0.4, 0.98, v228, v216, v205, v79, v81, v82, v83, v84, v85, v86, v87, v197);
  v88 = sub_23A9E759C(180.0, xmmword_23AA12250);
  v89 = vmulq_f32(v88, 0);
  v229 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v88, 0, v90), 0, v91), 0, v92);
  v217 = vmlaq_f32(vmlaq_f32(vaddq_f32(v90, v89), 0, v91), 0, v92);
  v93 = vmlaq_f32(v89, 0, v90);
  v206 = vmlaq_f32(vaddq_f32(v91, v93), 0, v92);
  v198 = vaddq_f32(v92, vmlaq_f32(v93, 0, v91));
  v94 = swift_allocObject();
  v95.n128_u64[0] = 0;
  *(v57 + 48) = sub_23A8CC080(1.0, 1.0, v95, 0.4, 0.98, v229, v217, v206, v94, v96, v97, v98, v99, v100, v101, v102, v198);
  v103 = sub_23A9E759C(270.0, xmmword_23AA12250);
  v104 = vmulq_f32(v103, 0);
  v230 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v103, 0, v105), 0, v106), 0, v107);
  v218 = vmlaq_f32(vmlaq_f32(vaddq_f32(v105, v104), 0, v106), 0, v107);
  v108 = vmlaq_f32(v104, 0, v105);
  v207 = vmlaq_f32(vaddq_f32(v106, v108), 0, v107);
  v199 = vaddq_f32(v107, vmlaq_f32(v108, 0, v106));
  v109 = swift_allocObject();
  v110.n128_u64[0] = 0;
  *(v57 + 56) = sub_23A8CC080(1.0, 1.0, v110, 0.4, 0.98, v230, v218, v207, v109, v111, v112, v113, v114, v115, v116, v117, v199);
  swift_allocObject();
  v118 = sub_23A913D30(v57);
  swift_setDeallocating();
  v119 = *(v57 + 16);
  swift_arrayDestroy();
  v120 = swift_initStackObject();
  *(v120 + 16) = xmmword_23AA12120;
  v121 = sub_23A9E759C(0.0, xmmword_23AA12250);
  v122 = vmulq_f32(v121, 0);
  v235 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v121, 0, v123), 0, v124), 0, v125);
  v231 = vmlaq_f32(vmlaq_f32(vaddq_f32(v123, v122), 0, v124), 0, v125);
  v126 = vmlaq_f32(v122, 0, v123);
  v219 = vmlaq_f32(vaddq_f32(v124, v126), 0, v125);
  v208 = vaddq_f32(v125, vmlaq_f32(v126, 0, v124));
  v127 = swift_allocObject();
  v128.n128_u32[0] = -1.0;
  *(v120 + 32) = sub_23A8CC080(1.0, 0.3, v128, 0.0, 0.999, v235, v231, v219, v127, v129, v130, v131, v132, v133, v134, v135, v208);
  v136 = sub_23A9E759C(90.0, xmmword_23AA12250);
  v137 = vmulq_f32(v136, 0);
  v236 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v136, 0, v138), 0, v139), 0, v140);
  v232 = vmlaq_f32(vmlaq_f32(vaddq_f32(v138, v137), 0, v139), 0, v140);
  v141 = vmlaq_f32(v137, 0, v138);
  v220 = vmlaq_f32(vaddq_f32(v139, v141), 0, v140);
  v209 = vaddq_f32(v140, vmlaq_f32(v141, 0, v139));
  v142 = swift_allocObject();
  v143.n128_u32[0] = -1.0;
  *(v120 + 40) = sub_23A8CC080(1.0, 0.3, v143, 0.0, 0.999, v236, v232, v220, v142, v144, v145, v146, v147, v148, v149, v150, v209);
  v151 = sub_23A9E759C(180.0, xmmword_23AA12250);
  v152 = vmulq_f32(v151, 0);
  v237 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v151, 0, v153), 0, v154), 0, v155);
  v233 = vmlaq_f32(vmlaq_f32(vaddq_f32(v153, v152), 0, v154), 0, v155);
  v156 = vmlaq_f32(v152, 0, v153);
  v221 = vmlaq_f32(vaddq_f32(v154, v156), 0, v155);
  v210 = vaddq_f32(v155, vmlaq_f32(v156, 0, v154));
  v157 = swift_allocObject();
  v158.n128_u32[0] = -1.0;
  *(v120 + 48) = sub_23A8CC080(1.0, 0.3, v158, 0.0, 0.999, v237, v233, v221, v157, v159, v160, v161, v162, v163, v164, v165, v210);
  v166 = sub_23A9E759C(270.0, xmmword_23AA12250);
  v167 = vmulq_f32(v166, 0);
  v239 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v166, 0, v168), 0, v169), 0, v170);
  v238 = vmlaq_f32(vmlaq_f32(vaddq_f32(v168, v167), 0, v169), 0, v170);
  v171 = vmlaq_f32(v167, 0, v168);
  v234 = vmlaq_f32(vaddq_f32(v169, v171), 0, v170);
  v222 = vaddq_f32(v170, vmlaq_f32(v171, 0, v169));
  v172 = swift_allocObject();
  v173.n128_u32[0] = -1.0;
  *(v120 + 56) = sub_23A8CC080(1.0, 0.3, v173, 0.0, 0.999, v239, v238, v234, v172, v174, v175, v176, v177, v178, v179, v180, v222);
  swift_allocObject();
  v181 = sub_23A913D30(v120);
  swift_setDeallocating();
  v182 = *(v120 + 16);
  swift_arrayDestroy();
  v183 = swift_initStackObject();
  *(v183 + 16) = xmmword_23AA12130;
  *(v183 + 32) = v55;
  *(v183 + 40) = v118;
  *(v183 + 48) = v181;
  type metadata accessor for BlendableSplineGroup();
  swift_allocObject();

  v185 = sub_23A9129A8(v184);
  v186 = *(v0 + 72);
  *(v1 + 72) = v185;

  swift_setDeallocating();
  v187 = *(v183 + 16);
  swift_arrayDestroy();
  swift_beginAccess();
  v188 = *(v185 + 16);

  if (*(v188 + 16))
  {
    v190 = *(v188 + 32);

    swift_beginAccess();
    v191 = *(v1 + 80);
    *(v1 + 80) = v190;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A9E5BC8(void *a1)
{
  *(v1 + 16) = 0u;
  v5 = (v1 + 16);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v6 = MEMORY[0x277D84F90];
  *(v1 + 64) = MEMORY[0x277D84F90];
  *(v1 + 72) = 0;
  *(v1 + 80) = v6;
  *(v1 + 96) = xmmword_23AA11AF0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  sub_23A9E5314();
  v7 = *(v1 + 72);
  if (!v7)
  {
    goto LABEL_44;
  }

  v8 = *(*(v7 + 32) + 16);
  *(v1 + 56) = v8;
  if (v8 >> 55)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = [a1 newBufferWithLength:v8 << 8 options:32];
  v10 = *(v1 + 40);
  *(v1 + 40) = v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_23AA0D104();
  v3 = &selRef_initWithDevice_;
  [v9 setLabel_];
  swift_unknownObjectRelease();

  v12 = *(v1 + 72);
  if (!v12)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v13 = *(v12 + 16);
  if (!*(v13 + 16))
  {
    goto LABEL_28;
  }

  v2 = *(v13 + 32);
  v14 = *(v2 + 16);
  if (v14 >> 58)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = 32 * v14;

  v16 = [a1 newBufferWithBytes:v2 + 32 length:v15 options:0];
  v17 = *v5;
  *v5 = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v16)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v18 = sub_23AA0D104();
  [v16 setLabel_];
  swift_unknownObjectRelease();

  v19 = *(v1 + 72);
  if (!v19)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v20 = *(v19 + 24);
  v21 = *(v20 + 16);
  if (v21 + 0x4000000000000000 < 0)
  {
    goto LABEL_30;
  }

  v22 = 2 * v21;

  v23 = [a1 newBufferWithBytes:v20 + 32 length:v22 options:0];
  v24 = *(v1 + 24);
  *(v1 + 24) = v23;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v23)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v25 = sub_23AA0D104();
  [v23 setLabel_];
  swift_unknownObjectRelease();

  v26 = *(v1 + 72);
  if (!v26)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v27 = *(v26 + 32);
  v28 = *(v27 + 16);
  if (v28 >> 60)
  {
    goto LABEL_31;
  }

  v29 = 8 * v28;

  v30 = [a1 newBufferWithBytes:v27 + 32 length:v29 options:0];
  v31 = *(v1 + 32);
  *(v1 + 32) = v30;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v30)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v32 = sub_23AA0D104();
  [v30 setLabel_];
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_23AA1B380;
  v128 = *MEMORY[0x277D860B8];
  v130 = *(MEMORY[0x277D860B8] + 16);
  v132 = *(MEMORY[0x277D860B8] + 32);
  v101 = *(MEMORY[0x277D860B8] + 48);
  v34 = v101;
  v34.i32[0] = 0;
  v118 = v34;
  v35 = xmmword_23AA12210;
  LODWORD(v35) = 0;
  HIDWORD(v35) = v101.i32[3];
  v90 = v35;
  v36 = sub_23A9E759C(90.0, xmmword_23AA12200);
  v103 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v37.f32[0]), v130, *v37.f32, 1), v132, v37, 2), v90, v37, 3);
  v111 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v36.n128_f32[0]), v130, v36.n128_u64[0], 1), v132, v36, 2), v90, v36, 3);
  v96 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v38.f32[0]), v130, *v38.f32, 1), v132, v38, 2), v90, v38, 3);
  v91 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v39.f32[0]), v130, *v39.f32, 1), v132, v39, 2), v90, v39, 3);
  type metadata accessor for InstanceTransform();
  v40 = swift_allocObject();
  *(v40 + 144) = 0;
  *(v40 + 152) = 0;
  *(v40 + 160) = xmmword_23AA11AF0;
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  *(v40 + 208) = 0u;
  *(v40 + 16) = v111;
  *(v40 + 32) = v103;
  *(v40 + 48) = v96;
  *(v40 + 64) = v91;
  *(v40 + 80) = v111;
  *(v40 + 96) = v103;
  *(v40 + 112) = v96;
  *(v40 + 128) = v91;
  *(v33 + 32) = v40;
  v41 = xmmword_23AA12220;
  LODWORD(v41) = 0;
  HIDWORD(v41) = v101.i32[3];
  v92 = v41;
  v42 = sub_23A9E759C(90.0, xmmword_23AA12200);
  v104 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v43.f32[0]), v130, *v43.f32, 1), v132, v43, 2), v92, v43, 3);
  v112 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v42.n128_f32[0]), v130, v42.n128_u64[0], 1), v132, v42, 2), v92, v42, 3);
  v97 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v44.f32[0]), v130, *v44.f32, 1), v132, v44, 2), v92, v44, 3);
  v93 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v45.f32[0]), v130, *v45.f32, 1), v132, v45, 2), v92, v45, 3);
  v46 = swift_allocObject();
  *(v46 + 144) = 0;
  *(v46 + 152) = 0;
  *(v46 + 160) = xmmword_23AA11AF0;
  *(v46 + 176) = 0u;
  *(v46 + 192) = 0u;
  *(v46 + 208) = 0u;
  *(v46 + 16) = v112;
  *(v46 + 32) = v104;
  *(v46 + 48) = v97;
  *(v46 + 64) = v93;
  *(v46 + 80) = v112;
  *(v46 + 96) = v104;
  *(v46 + 112) = v97;
  *(v46 + 128) = v93;
  *(v33 + 40) = v46;
  v47 = v118;
  v47.i32[1] = 0;
  v119 = v47;
  v47.i32[2] = 1.0;
  v94 = v47;
  v48 = sub_23A9E759C(0.0, xmmword_23AA12200);
  v105 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v49.f32[0]), v130, *v49.f32, 1), v132, v49, 2), v94, v49, 3);
  v113 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v48.n128_f32[0]), v130, v48.n128_u64[0], 1), v132, v48, 2), v94, v48, 3);
  v98 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v50.f32[0]), v130, *v50.f32, 1), v132, v50, 2), v94, v50, 3);
  v95 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v51.f32[0]), v130, *v51.f32, 1), v132, v51, 2), v94, v51, 3);
  v52 = swift_allocObject();
  *(v52 + 144) = 0;
  *(v52 + 152) = 0;
  *(v52 + 160) = xmmword_23AA11AF0;
  *(v52 + 176) = 0u;
  *(v52 + 192) = 0u;
  *(v52 + 208) = 0u;
  *(v52 + 16) = v113;
  *(v52 + 32) = v105;
  *(v52 + 48) = v98;
  *(v52 + 64) = v95;
  *(v52 + 80) = v113;
  *(v52 + 96) = v105;
  *(v52 + 112) = v98;
  *(v52 + 128) = v95;
  *(v33 + 48) = v52;
  v53 = v119;
  v53.i32[2] = -1.0;
  v120 = v53;
  v54 = sub_23A9E759C(0.0, xmmword_23AA12200);
  v106 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v55.f32[0]), v130, *v55.f32, 1), v132, v55, 2), v120, v55, 3);
  v114 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v54.n128_f32[0]), v130, v54.n128_u64[0], 1), v132, v54, 2), v120, v54, 3);
  v99 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v56.f32[0]), v130, *v56.f32, 1), v132, v56, 2), v120, v56, 3);
  v121 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v57.f32[0]), v130, *v57.f32, 1), v132, v57, 2), v120, v57, 3);
  v58 = swift_allocObject();
  *(v58 + 144) = 0;
  *(v58 + 152) = 0;
  *(v58 + 160) = xmmword_23AA11AF0;
  *(v58 + 176) = 0u;
  *(v58 + 192) = 0u;
  *(v58 + 208) = 0u;
  *(v58 + 16) = v114;
  *(v58 + 32) = v106;
  *(v58 + 48) = v99;
  *(v58 + 64) = v121;
  *(v58 + 80) = v114;
  *(v58 + 96) = v106;
  *(v58 + 112) = v99;
  *(v58 + 128) = v121;
  *(v33 + 56) = v58;
  v59.i64[0] = 1065353216;
  v59.i32[2] = 0;
  v59.i32[3] = v101.i32[3];
  v123 = v59;
  v60 = sub_23A9E759C(90.0, xmmword_23AA12220);
  v107 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v61.f32[0]), v130, *v61.f32, 1), v132, v61, 2), v123, v61, 3);
  v115 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v60.n128_f32[0]), v130, v60.n128_u64[0], 1), v132, v60, 2), v123, v60, 3);
  v100 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v62.f32[0]), v130, *v62.f32, 1), v132, v62, 2), v123, v62, 3);
  v124 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v63.f32[0]), v130, *v63.f32, 1), v132, v63, 2), v123, v63, 3);
  v64 = swift_allocObject();
  *(v64 + 144) = 0;
  *(v64 + 152) = 0;
  *(v64 + 160) = xmmword_23AA11AF0;
  *(v64 + 176) = 0u;
  *(v64 + 192) = 0u;
  *(v64 + 208) = 0u;
  *(v64 + 16) = v115;
  *(v64 + 32) = v107;
  *(v64 + 48) = v100;
  *(v64 + 64) = v124;
  *(v64 + 80) = v115;
  *(v64 + 96) = v107;
  *(v64 + 112) = v100;
  *(v64 + 128) = v124;
  *(v33 + 64) = v64;
  v65.i64[0] = 3212836864;
  v65.i32[2] = 0;
  v65.i32[3] = v101.i32[3];
  v108 = v65;
  v66 = sub_23A9E759C(90.0, xmmword_23AA12220);
  v122 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v67.f32[0]), v130, *v67.f32, 1), v132, v67, 2), v108, v67, 3);
  v125 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v66.n128_f32[0]), v130, v66.n128_u64[0], 1), v132, v66, 2), v108, v66, 3);
  v116 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v68.f32[0]), v130, *v68.f32, 1), v132, v68, 2), v108, v68, 3);
  v109 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, v69.f32[0]), v130, *v69.f32, 1), v132, v69, 2), v108, v69, 3);
  v70 = swift_allocObject();
  *(v70 + 144) = 0;
  *(v70 + 152) = 0;
  *(v70 + 160) = xmmword_23AA11AF0;
  *(v70 + 176) = 0u;
  *(v70 + 192) = 0u;
  *(v70 + 208) = 0u;
  *(v70 + 16) = v125;
  *(v70 + 32) = v122;
  *(v70 + 48) = v116;
  *(v70 + 64) = v109;
  *(v70 + 80) = v125;
  *(v70 + 96) = v122;
  *(v70 + 112) = v116;
  *(v70 + 128) = v109;
  *(v33 + 72) = v70;
  v71 = *(v1 + 64);
  *(v1 + 64) = v33;

  v2 = *(v1 + 64);
  if (v2 >> 62)
  {
LABEL_32:
    v72 = sub_23AA0D7F4();
    if (v72)
    {
      goto LABEL_16;
    }

LABEL_33:
    v74 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v72 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v72)
  {
    goto LABEL_33;
  }

LABEL_16:
  if (v72 < 1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v126 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&vmulq_f32(v128, 0), 0), 0, *v128.f32, 1), 0, v128, 2), xmmword_23AA11AE0, v128, 3);
  v117 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&vmulq_f32(v130, 0), 0), 0, *v130.f32, 1), 0, v130, 2), xmmword_23AA11AE0, v130, 3);
  v110 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&vmulq_f32(v132, 0), 0), 0, *v132.f32, 1), 0, v132, 2), xmmword_23AA11AE0, v132, 3);
  v102 = vdupq_laneq_s32(v101, 3);

  v73 = 0;
  v74 = MEMORY[0x277D84F90];
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x23EE90360](v73, v2);
    }

    else
    {
      v75 = *(v2 + 8 * v73 + 32);
    }

    *(v75 + 144) = 0u;
    v76 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vdupq_lane_s32(*&vmulq_f32(*(v75 + 192), 0), 0), 0, *(v75 + 192), 1), 0, *(v75 + 192), 2), xmmword_23AA11AE0, v102);
    v77 = *(v75 + 64);
    v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, COERCE_FLOAT(*(v75 + 32))), v117, *(v75 + 32), 1), v110, *(v75 + 32), 2), v76, *(v75 + 32), 3);
    v79 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, COERCE_FLOAT(*(v75 + 48))), v117, *(v75 + 48), 1), v110, *(v75 + 48), 2), v76, *(v75 + 48), 3);
    v133 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, COERCE_FLOAT(*(v75 + 16))), v117, *(v75 + 16), 1), v110, *(v75 + 16), 2), v76, *(v75 + 16), 3);
    *(v75 + 80) = v133;
    *(v75 + 96) = v78;
    v129 = v79;
    v131 = v78;
    v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, v77.f32[0]), v117, *v77.f32, 1), v110, v77, 2), v76, v77, 3);
    *(v75 + 112) = v79;
    *(v75 + 128) = v80;
    v127 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = sub_23A939440(0, *(v74 + 2) + 1, 1, v74);
    }

    v82 = *(v74 + 2);
    v81 = *(v74 + 3);
    if (v82 >= v81 >> 1)
    {
      v74 = sub_23A939440((v81 > 1), v82 + 1, 1, v74);
    }

    ++v73;

    *(v74 + 2) = v82 + 1;
    v83 = &v74[64 * v82];
    *(v83 + 2) = v133;
    *(v83 + 3) = v131;
    *(v83 + 4) = v129;
    *(v83 + 5) = v127;
  }

  while (v72 != v73);

  v3 = &selRef_initWithDevice_;
LABEL_34:
  v84 = *(v1 + 64);
  if (v84 >> 62)
  {
    if (v84 < 0)
    {
      v89 = *(v1 + 64);
    }

    v85 = sub_23AA0D7F4();
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v85 - 0x200000000000000) >> 58 != 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  v86 = [a1 newBufferWithBytes:v74 + 32 length:v85 << 6 options:0];
  v87 = *(v1 + 48);
  *(v1 + 48) = v86;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v86)
  {

    v88 = sub_23AA0D104();
    [v86 v3[61]];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

LABEL_52:
  __break(1u);
}

void sub_23A9E66F0()
{
  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = v0[2];
  v3 = [swift_unknownObjectRetain() contents];
  v4 = v1;
  swift_beginAccess();
  v5 = v0[10];
  v0[10] = MEMORY[0x277D84F90];

  v6 = v0[9];
  if (!v6)
  {
LABEL_27:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v7 + 16))
  {
    v8 = *(*(v7 + 32) + 16);
    if (v8)
    {
      swift_beginAccess();
      v9 = v0[10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_23A939408(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = (v3 + 16);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v0[10] = v9;
        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v23 = v12;
          v17 = sub_23A939408((v14 > 1), v15 + 1, 1, v9);
          v12 = v23;
          v9 = v17;
        }

        *(v9 + 2) = v15 + 1;
        v16 = &v9[32 * v15];
        *(v16 + 2) = v12;
        *(v16 + 12) = v13;
        v0[10] = v9;
        v11 += 8;
        --v8;
      }

      while (v8);
      swift_endAccess();
    }

    v3 = v0[8];
    if (!(v3 >> 62))
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  v18 = sub_23AA0D7F4();
  if (!v18)
  {
    return;
  }

LABEL_14:
  if (v18 < 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x23EE90360](v19, v3);
    }

    else
    {
      v20 = *(v3 + 8 * v19 + 32);
    }

    ++v19;
    v22 = v21[12];
    v21[10] = v21[9];
    v21[11] = v22;
  }

  while (v18 != v19);
}

float32x4_t *sub_23A9E6910(float32x4_t *result, uint64_t a2, double a3)
{
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = result;
  v7 = *(v3 + 16);
  v8 = [swift_unknownObjectRetain() contents];
  result = v4;
  v10 = v6[1].u64[0];
  if (!v10)
  {
    return result;
  }

  if (v10 > *(a2 + 16))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = vdupq_lane_s32(*&a3, 0);
  v12 = v6 + 3;
  v13 = (a2 + 48);
  v14 = (v8 + 16);
  do
  {
    v15 = vmlaq_f32(v12[-1], vsubq_f32(*(v13 - 4), v12[-1]), v11);
    v15.i32[3] = v9;
    *(v14 - 1) = v15;
    v16 = v12->f32[0];
    v12 += 2;
    v17 = v16;
    v18 = *v13;
    v13 += 8;
    *v14 = v17 + (*&a3 * (v18 - v17));
    v14 += 8;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t sub_23A9E69E0(uint64_t result, __n128 a2)
{
  v4 = *(v2 + 48);
  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(v2 + 48);
  v3 = [swift_unknownObjectRetain() contents];
  result = v4;
  v6 = *(v2 + 64);
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = vdupq_lane_s32(0, 0);
      v9 = v8;
      v9.i32[0] = a2.n128_u32[0];
      v10 = v8;
      v8.i32[2] = a2.n128_i32[2];
      v10.i32[1] = a2.n128_i32[1];
      v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*MEMORY[0x277D860B8])), v10, *MEMORY[0x277D860B8], 1), v8, *MEMORY[0x277D860B8], 2), xmmword_23AA11AE0, *MEMORY[0x277D860B8], 3);
      v27 = v10;
      v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 16))), v10, *(MEMORY[0x277D860B8] + 16), 1), v8, *(MEMORY[0x277D860B8] + 16), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 16), 3);
      v28 = v9;
      v29 = v8;
      v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 32))), v10, *(MEMORY[0x277D860B8] + 32), 1), v8, *(MEMORY[0x277D860B8] + 32), 2), xmmword_23AA11AE0, *(MEMORY[0x277D860B8] + 32), 3);
      v23 = vdupq_laneq_s32(*(MEMORY[0x277D860B8] + 48), 3);
      v11 = v3 + 32;
      v12 = 4;
      while (1)
      {
        v3 = (v12 - 4);
        v13 = *(v2 + 64);
        if ((v13 & 0xC000000000000001) == 0)
        {
          break;
        }

        v21 = *(v2 + 64);

        v14 = MEMORY[0x23EE90360](v12 - 4, v13);

LABEL_8:
        *(v14 + 144) = a2;
        v15 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(v14 + 192))), v27, *(v14 + 192), 1), v29, *(v14 + 192), 2), xmmword_23AA11AE0, v23);
        v16 = *(v14 + 64);
        v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(v14 + 32))), v25, *(v14 + 32), 1), v24, *(v14 + 32), 2), v15, *(v14 + 32), 3);
        v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(v14 + 48))), v25, *(v14 + 48), 1), v24, *(v14 + 48), 2), v15, *(v14 + 48), 3);
        *(v14 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(v14 + 16))), v25, *(v14 + 16), 1), v24, *(v14 + 16), 2), v15, *(v14 + 16), 3);
        *(v14 + 96) = v17;
        *(v14 + 112) = v18;
        *(v14 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v16.f32[0]), v25, *v16.f32, 1), v24, v16, 2), v15, v16, 3);

        v19 = *(v2 + 64);
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = *(v2 + 64);

          v20 = MEMORY[0x23EE90360](v12 - 4, v19);
        }

        else
        {
          if (v3 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v20 = *(v19 + 8 * v12);
        }

        v31 = v20[6];
        v32 = v20[5];
        v33 = v20[8];
        v34 = v20[7];

        *(v11 - 2) = v32;
        *(v11 - 1) = v31;
        ++v12;
        *v11 = v34;
        v11[1] = v33;
        v11 += 4;
        if (!--v7)
        {
          return result;
        }
      }

      if (v3 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = sub_23AA0D7F4();
      if (result < 0)
      {
        __break(1u);
        goto LABEL_19;
      }

LABEL_20:
      v7 = result;
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v13 + 8 * v12);

    goto LABEL_8;
  }

  return result;
}

id sub_23A9E6C70(id result, __n128 a2)
{
  v3 = v2;
  v4 = *(v2 + 48);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = result;
  v6 = [swift_unknownObjectRetain() contents];
  result = v4;
  v7 = *(v3 + 64);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v11 = *(v3 + 64);

    v8 = MEMORY[0x23EE90360](v5, v7);
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v5)
    {
      __break(1u);
      goto LABEL_15;
    }

    v8 = *(v7 + 8 * v5 + 32);
  }

  v8[12] = a2;
  sub_23A9E5210();

  v7 = *(v3 + 64);
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v9 = MEMORY[0x23EE90360](v5, v7);

    goto LABEL_10;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > v5)
    {
      v9 = *(v7 + 8 * v5 + 32);

LABEL_10:
      v14 = v9[6];
      v16 = v9[5];
      v12 = v9[8];
      v13 = v9[7];

      v10 = &v6[64 * v5];
      *v10 = v16;
      *(v10 + 1) = v14;
      *(v10 + 2) = v13;
      *(v10 + 3) = v12;
      return result;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_23A9E6DD8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[6];
  swift_unknownObjectRelease();
  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  return v0;
}

uint64_t sub_23A9E6E30()
{
  sub_23A9E6DD8();

  return swift_deallocClassInstance();
}

unint64_t sub_23A9E6ED8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A9E7218(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23A9E6F04()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F9DBC();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 32) - 1 >= 2)
  {
    if (*(v0 + 32))
    {
      v1 = xmmword_23AA1B3B0;
      v2 = xmmword_23AA1B3C0;
    }

    else
    {
      v1 = xmmword_23AA1B390;
      v2 = xmmword_23AA1B3A0;
    }
  }

  else
  {
    v1 = xmmword_23AA1B3D0;
    v2 = xmmword_23AA1B3E0;
  }

  *(v0 + 48) = v2;
  *(v0 + 64) = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F9F0C();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 32) - 1 >= 2)
  {
    if (*(v0 + 32))
    {
      v3 = xmmword_23AA1B400;
      v9 = 0x3FD3333333333333;
    }

    else
    {
      v3 = xmmword_23AA1B3F0;
      v9 = 0x3FC3333333333333;
    }

    _Q1 = vdupq_n_s64(v9);
  }

  else
  {
    v3 = xmmword_23AA10F20;
    __asm { FMOV            V1.2D, #1.0 }
  }

  *(v0 + 80) = _Q1;
  *(v0 + 96) = v3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F9FDC();
    swift_unknownObjectRelease();
  }

  v10.i32[0] = 2;
  v11.i32[0] = *(v0 + 32) - 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 112) = vandq_s8(xmmword_23AA10F30, vdupq_lane_s32(*&vcgtq_u32(v10, v11), 0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9FA17C();

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_23A9E707C()
{
  if (*(v0 + 32) - 1 < 2)
  {
    return -0.5;
  }

  if (*(v0 + 32))
  {
    return -0.454519478;
  }

  return 0.0499502113;
}

uint64_t sub_23A9E70CC()
{
  sub_23A8E9694(v0 + 16);

  return swift_deallocClassInstance();
}

float sub_23A9E7128()
{
  v1 = v0[4];
  v2 = v1 - v0[5];
  v3 = fminf(fmaxf(v2 / v0[6], 0.0), 1.0);
  v0[8] = v2;
  v0[9] = v3;
  result = (sinf(v1 * 5.0) * 0.5) + 0.5;
  v0[7] = result;
  return result;
}

unint64_t sub_23A9E71C4()
{
  result = qword_27DFB15E0;
  if (!qword_27DFB15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB15E0);
  }

  return result;
}

unint64_t sub_23A9E7218(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

char *sub_23A9E7228(char *result, uint64_t a2, double a3)
{
  v3 = *(result + 2);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  if (v3 <= *(a2 + 16))
  {
    v5 = result;
    v6 = sub_23A939408(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *&a3;
    v9 = v6;
    v10 = 0;
    v11 = *(v6 + 2);
    v12 = vdupq_lane_s32(*&a3, 0);
    v13 = 32 * v11;
    do
    {
      v14 = *&v5[v10 + 32];
      v15 = *(a2 + v10 + 32);
      v16 = *&v5[v10 + 48];
      v17 = *(a2 + v10 + 48);
      v18 = *(v9 + 3);
      v19 = v11 + 1;
      if (v11 >= v18 >> 1)
      {
        v25 = *&v5[v10 + 32];
        v26 = v12;
        v23 = *(a2 + v10 + 32);
        v24 = v7;
        v22 = sub_23A939408((v18 > 1), v11 + 1, 1, v9);
        v15 = v23;
        v7 = v24;
        v14 = v25;
        v12 = v26;
        v8 = *&a3;
        v9 = v22;
      }

      v20 = vmlaq_f32(v14, vsubq_f32(v15, v14), v12);
      v20.i32[3] = v7;
      *(v9 + 2) = v19;
      v21 = &v9[v13 + v10];
      v21[2] = v20;
      v21[3].f32[0] = v16 + (v8 * (v17 - v16));
      v10 += 32;
      v11 = v19;
      --v3;
    }

    while (v3);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ScanItemCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanItemCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A9E74C0()
{
  result = qword_27DFB15E8;
  if (!qword_27DFB15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB15E8);
  }

  return result;
}

unint64_t sub_23A9E7524()
{
  result = qword_27DFB15F0;
  if (!qword_27DFB15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB15F0);
  }

  return result;
}

__n128 sub_23A9E759C(float a1, float32x4_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = __sincospif_stret(a1 * 0.0055556);
  v3 = vmulq_f32(a2, a2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(a2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v6 = vmuls_lane_f32(v2.__sinval, *v5.f32, 1);
  v7 = vmuls_lane_f32(v2.__sinval, v5, 2);
  v8 = (1.0 - v2.__cosval) * v5.f32[0];
  v9 = vmuls_lane_f32(1.0 - v2.__cosval, *v5.f32, 1);
  v10 = v2.__cosval + (v8 * v5.f32[0]);
  v11 = vmuls_lane_f32(v8, *v5.f32, 1);
  v12 = vmuls_lane_f32(v8, v5, 2);
  HIDWORD(v13) = 0;
  *&v13 = v10;
  *(&v13 + 1) = v7 + v11;
  *(&v13 + 2) = v12 - v6;
  v14 = v2.__cosval + vmuls_lane_f32(v9, *v5.f32, 1);
  v15 = vmuls_lane_f32(v9, v5, 2);
  HIDWORD(v16) = 0;
  *&v16 = v11 - v7;
  *(&v16 + 1) = v14;
  *(&v16 + 2) = (v2.__sinval * v5.f32[0]) + v15;
  v21 = v16;
  v22 = v13;
  *&v17 = v6 + v12;
  *(&v17 + 1) = v15 - (v2.__sinval * v5.f32[0]);
  *(&v17 + 1) = COERCE_UNSIGNED_INT(v2.__cosval + vmuls_lane_f32(vmuls_lane_f32(1.0 - v2.__cosval, v5, 2), v5, 2));
  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF630, &qword_23AA18BA0);
  v18 = swift_allocObject();
  v18[2] = v22;
  v18[3] = v21;
  v18[4] = v24;
  v18[5] = xmmword_23AA11AE0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v19 = *MEMORY[0x277D85DE8];
  return v22;
}

float32x2_t sub_23A9E7734(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  __asm { FMOV            V6.2S, #3.0 }

  v10 = vmul_f32(a1, _D6);
  v11 = vmul_f32(a2, _D6);
  v12 = vmul_f32(a3, _D6);
  __asm
  {
    FMOV            V17.2S, #4.0
    FMOV            V18.2S, #6.0
  }

  return vdiv_f32(vadd_f32(vadd_f32(a1, vadd_f32(a3, vmul_f32(a2, _D17))), vmul_n_f32(vadd_f32(vsub_f32(v12, v10), vmul_n_f32(vadd_f32(vadd_f32(v10, vsub_f32(v12, vmul_f32(a2, _D18))), vmul_n_f32(vsub_f32(vadd_f32(v11, vsub_f32(a4, v12)), a1), a5)), a5)), a5)), _D18);
}

float32x2_t sub_23A9E7804(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  __asm { FMOV            V16.2S, #3.0 }

  v10 = vmul_f32(a1, _D16);
  v11 = vmul_f32(a2, _D16);
  v12 = vmul_f32(a3, _D16);
  __asm { FMOV            V16.2S, #6.0 }

  v14 = vsub_f32(vadd_f32(v11, vsub_f32(a4, v12)), a1);
  v15 = vadd_f32(v10, vsub_f32(v12, vmul_f32(a2, _D16)));
  return vdiv_f32(vadd_f32(vmul_n_f32(vadd_f32(v15, vmul_n_f32(vadd_f32(v14, v14), a5)), a5), vadd_f32(vsub_f32(v12, v10), vmul_n_f32(vadd_f32(v15, vmul_n_f32(v14, a5)), a5))), _D16);
}

__n128 sub_23A9E78D4(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmulq_f32(v3, v3);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(a3)), v6, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmulq_f32(v8, v8);
  *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v6)), v12, v7);
  v14 = v12.u32[1];
  LODWORD(v15) = v12.i32[2];
  LODWORD(v16) = v12.i32[0];
  DWORD1(v16) = vdupq_laneq_s32(v13, 2).u32[0];
  v17 = vextq_s8(a1, v13, 0xCuLL);
  *(&v16 + 1) = v6.u32[0];
  v29 = v16;
  DWORD1(v14) = v17.i32[1];
  DWORD2(v14) = v6.i32[1];
  DWORD1(v15) = v17.i32[2];
  *(&v15 + 1) = v6.u32[2];
  v27 = v15;
  v28 = v14;
  v12.f32[0] = -(vmuls_lane_f32(a1.f32[2], v12, 2) + vaddv_f32(vmul_f32(*a1.f32, *v12.f32)));
  v13.f32[0] = -(vmuls_lane_f32(a1.f32[2], *v13.f32, 1) + (vmuls_lane_f32(a1.f32[0], v13, 2) + vmuls_lane_f32(v13.f32[0], *a1.f32, 1)));
  v18 = -(vmuls_lane_f32(a1.f32[2], v6, 2) + vaddv_f32(vmul_f32(*a1.f32, *v6.f32)));
  __asm { FMOV            V1.4S, #1.0 }

  *&_Q1 = __PAIR64__(v13.u32[0], v12.u32[0]);
  *(&_Q1 + 2) = v18;
  v26 = _Q1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF630, &qword_23AA18BA0);
  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = v28;
  v24[4] = v27;
  v24[5] = v26;
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v29;
}

uint64_t sub_23A9E7A9C(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = type metadata accessor for DebugFrameEntity();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = sub_23A9FD708();
    v7 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity);
    *(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity) = v6;

    if (!*(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight))
    {
      __break(1u);
      return result;
    }

    sub_23AA0C534();

    sub_23AA0C214();
  }

  else
  {
    v9 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity;
    if (*(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity))
    {
      type metadata accessor for DebugFrameEntity();

      sub_23AA0C204();

      v10 = *(v1 + v9);
    }

    *(v1 + v9) = 0;
  }
}

void sub_23A9E7C50(uint64_t (*a1)(void), uint64_t *a2, void (*a3)(uint64_t, float), void (*a4)(char *), float a5)
{
  v46 = a3;
  v47 = a4;
  v8 = a1(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_23AA0CD84();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse);
  if (!v20)
  {
    goto LABEL_21;
  }

  v44 = *a2;
  *(v20 + v44) = a5;

  v21 = *(sub_23A8C63CC() + 80);
  v22 = sub_23A9FC870();

  v23 = v22;
  if (v22 >> 62)
  {
    v39 = sub_23AA0D7F4();
    v23 = v22;
    v24 = v39;
    if (v39)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_4:
      if (v24 >= 1)
      {
        v25 = 0;
        v48 = v20;
        v49 = v23 & 0xC000000000000001;
        v26 = (v16 + 56);
        v43 = (v16 + 32);
        v42 = (v16 + 8);
        v41 = (v16 + 16);
        v40 = xmmword_23AA10FC0;
        v50 = v23;
        do
        {
          if (v49)
          {
            v27 = MEMORY[0x23EE90360](v25);
          }

          else
          {
            v27 = *(v23 + 8 * v25 + 32);
          }

          v28 = qword_27DFC0628;
          swift_beginAccess();
          sub_23A8CA9D8(v27 + v28, v52);
          v30 = v53;
          v29 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          (*(v29 + 8))(v51, v30, v29);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A8, &unk_23AA115B0);
          if (swift_dynamicCast())
          {
            (*v26)(v14, 0, 1, v15);
            (*v43)(v19, v14, v15);
            v31 = __swift_destroy_boxed_opaque_existential_1(v52);
            v32 = v45;
            v46(v31, *(v48 + v44));
            v47(v32);
            type metadata accessor for ScanEntity();
            sub_23A9E8188();
            v33 = sub_23AA0CAD4();
            v35 = v34;
            v36 = sub_23AA0C4A4();
            if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
              v37 = swift_allocObject();
              *(v37 + 16) = v40;
              *(v37 + 56) = v15;
              *(v37 + 64) = MEMORY[0x277CDB298];
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v37 + 32));
              (*v41)(boxed_opaque_existential_1, v19, v15);
              sub_23AA0C494();
            }

            v33(v52, 0);

            (*v42)(v19, v15);
          }

          else
          {

            (*v26)(v14, 1, 1, v15);
            sub_23A8CA7EC(v14);
            __swift_destroy_boxed_opaque_existential_1(v52);
          }

          v23 = v50;
          ++v25;
        }

        while (v24 != v25);

        return;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }
  }
}

unint64_t sub_23A9E8188()
{
  result = qword_27DFAE8B0;
  if (!qword_27DFAE8B0)
  {
    type metadata accessor for ScanEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAE8B0);
  }

  return result;
}

void sub_23A9E81E0()
{
  v1 = qword_27DFB0E00;
  v2 = *(v0 + qword_27DFB0E10);
  if (*(v0 + qword_27DFB0E00))
  {
    if (!v2)
    {
      v3 = *(v0 + qword_27DFB0E00);
      if (!v3)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (!v2)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 decelerationDelta];
    v5 = qword_27DFB0E58;
    v7 = v6 + *(v0 + qword_27DFB0E58);
  }

  else
  {
    [v2 decelerationDelta];
    v5 = qword_27DFB0E58;
    v7 = *(v0 + qword_27DFB0E58) - v8;
  }

  *(v0 + v5) = v7;
  *(v0 + qword_27DFB0E68) = v7;
  v3 = *(v0 + v1);
  if (v3)
  {
LABEL_10:
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 decelerationDelta];
      v10 = qword_27DFB0E60;
      v12 = v11 + *(v0 + qword_27DFB0E60);
    }

    else
    {
      [v3 decelerationDelta];
      v10 = qword_27DFB0E60;
      v12 = *(v0 + qword_27DFB0E60) - v13;
    }

    *(v0 + v10) = v12;
    *(v0 + qword_27DFB0E70) = v12;
  }
}

void sub_23A9E8324()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v134 - v3;
  sub_23AA0C044();
  v5 = sub_23AA0C064();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = qword_27DFC09A8;
  swift_beginAccess();
  sub_23A8D5068(v4, v0 + v6, &qword_27DFAEB30, &unk_23AA11B50);
  swift_endAccess();
  v7 = qword_27DFB0DF8;
  v8 = *(v0 + qword_27DFB0DF8);
  v9 = objc_opt_self();
  v10 = MEMORY[0x277CEEF68];
  v11 = MEMORY[0x277CEEF58];
  if (v8)
  {
    v12 = MEMORY[0x277CEEF58];
  }

  else
  {
    v12 = MEMORY[0x277CEEF68];
  }

  [v9 floatForKey_];
  v14 = v13;
  v15 = v0 + qword_27DFB0DD0;
  v16 = *(v0 + qword_27DFB0DD0);
  v17 = objc_opt_self();
  v18 = *MEMORY[0x277CEEF48];
  [v17 floatForKey_];
  v20 = v19 * v16;
  v21 = *(v0 + v7);
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = qword_27DFB0E58;
  v23 = *(v0 + qword_27DFB0E58);
  v24 = v21;
  LODWORD(v25) = v23;
  if ([v24 offsetIsWithinRubberBandedRange_])
  {
    [v17 floatForKey_];
    v27 = v26;
    v28 = *(v0 + v22);
    [v24 minOffset];
    v30 = v29;
    [v24 maxOffset];
    v32 = v31;
    v33 = objc_allocWithZone(MEMORY[0x277CEEF90]);
    LODWORD(v34) = v27;
    LODWORD(v35) = v28;
    LODWORD(v36) = v30;
    LODWORD(v37) = v32;
    v38 = [v33 initWithVelocity:0.0 minEndDelta:v34 startingOffset:v35 minOffset:v36 maxOffset:v37];

    v10 = MEMORY[0x277CEEF68];
LABEL_12:
    v41 = *(v0 + qword_27DFB0E10);
    *(v0 + qword_27DFB0E10) = v38;
    goto LABEL_13;
  }

  v39 = *(v0 + v7);
  v10 = MEMORY[0x277CEEF68];
  if (!v39)
  {
LABEL_10:
    [v17 floatForKey_];
    if (v66 > fabsf(v20))
    {
      goto LABEL_14;
    }

    v67 = v20 * *(v0 + qword_27DFB0E88);
    [v17 floatForKey_];
    v69 = v68;
    v70 = objc_allocWithZone(MEMORY[0x277CEEF70]);
    *&v71 = v67;
    LODWORD(v72) = v69;
    LODWORD(v73) = v14;
    v38 = [v70 initWithVelocity:v71 minEndDelta:v72 decelerationRate:v73];
    goto LABEL_12;
  }

  v40 = *MEMORY[0x277CEEF30];
  v41 = v39;
  [v17 floatForKey_];
  if (v42 <= fabsf(v20))
  {
    [v17 floatForKey_];
    v44 = v43;
    [v41 rubberBandFactor];
    v46 = v45;
    [v41 minOffset];
    v48 = v47 - v44;
    [v41 maxOffset];
    v50 = v44 + v49;
    v51 = objc_allocWithZone(MEMORY[0x277CEEF78]);
    LODWORD(v52) = v46;
    *&v53 = v48;
    *&v54 = v50;
    *&v55 = v44;
    v56 = [v51 initWithRubberBandFactor:v52 minOffset:v53 maxOffset:v54 overshoot:v55];
    v57 = v20 * *(v0 + qword_27DFB0E88);
    [v17 floatForKey_];
    v59 = v58;
    v60 = *(v0 + qword_27DFB0E58);
    v61 = objc_allocWithZone(MEMORY[0x277CEEF80]);
    *&v62 = v57;
    LODWORD(v63) = v59;
    LODWORD(v64) = v60;
    LODWORD(v65) = v14;
    v38 = [v61 initWithVelocity:v56 minEndDelta:v62 startingOffset:v63 decelerationRate:v64 rubberBand:v65];

    v10 = MEMORY[0x277CEEF68];
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  v74 = qword_27DFB0DE8;
  if (*(v0 + qword_27DFB0DE8))
  {
    v75 = v11;
  }

  else
  {
    v75 = v10;
  }

  [v17 floatForKey_];
  v77 = v76;
  v78 = *(v15 + 8);
  [v17 floatForKey_];
  v80 = v79 * v78;
  v81 = *(v0 + v74);
  if (!v81)
  {
    v99 = *MEMORY[0x277CEEF30];
    goto LABEL_25;
  }

  v82 = qword_27DFB0E60;
  v83 = *(v0 + qword_27DFB0E60);
  v84 = v81;
  LODWORD(v85) = v83;
  if ([v84 offsetIsWithinRubberBandedRange_])
  {
    [v17 floatForKey_];
    v87 = v86;
    v88 = *(v0 + v82);
    [v84 minOffset];
    v90 = v89;
    [v84 maxOffset];
    v92 = v91;
    v93 = objc_allocWithZone(MEMORY[0x277CEEF90]);
    LODWORD(v94) = v87;
    LODWORD(v95) = v88;
    LODWORD(v96) = v90;
    LODWORD(v97) = v92;
    v98 = [v93 initWithVelocity:0.0 minEndDelta:v94 startingOffset:v95 minOffset:v96 maxOffset:v97];
LABEL_24:

LABEL_27:
    v84 = *(v0 + qword_27DFB0E00);
    *(v0 + qword_27DFB0E00) = v98;
    goto LABEL_28;
  }

  v100 = *(v0 + v74);
  v99 = *MEMORY[0x277CEEF30];
  if (!v100)
  {
LABEL_25:
    [v17 floatForKey_];
    if (v126 > fabsf(v80))
    {
      return;
    }

    v127 = v80 * *(v0 + qword_27DFB0E90);
    [v17 floatForKey_];
    v129 = v128;
    v130 = objc_allocWithZone(MEMORY[0x277CEEF70]);
    *&v131 = v127;
    LODWORD(v132) = v129;
    LODWORD(v133) = v77;
    v98 = [v130 initWithVelocity:v131 minEndDelta:v132 decelerationRate:v133];
    goto LABEL_27;
  }

  v101 = *MEMORY[0x277CEEF30];
  v84 = v100;
  [v17 floatForKey_];
  if (v102 <= fabsf(v80))
  {
    [v17 floatForKey_];
    v104 = v103;
    [v84 rubberBandFactor];
    v106 = v105;
    [v84 minOffset];
    v108 = v107 - v104;
    [v84 maxOffset];
    v110 = v104 + v109;
    v111 = objc_allocWithZone(MEMORY[0x277CEEF78]);
    LODWORD(v112) = v106;
    *&v113 = v108;
    *&v114 = v110;
    *&v115 = v104;
    v116 = [v111 initWithRubberBandFactor:v112 minOffset:v113 maxOffset:v114 overshoot:v115];
    v117 = v80 * *(v0 + qword_27DFB0E90);
    [v17 floatForKey_];
    v119 = v118;
    v120 = *(v0 + qword_27DFB0E60);
    v121 = objc_allocWithZone(MEMORY[0x277CEEF80]);
    *&v122 = v117;
    LODWORD(v123) = v119;
    LODWORD(v124) = v120;
    LODWORD(v125) = v77;
    v98 = [v121 initWithVelocity:v116 minEndDelta:v122 startingOffset:v123 decelerationRate:v124 rubberBand:v125];

    goto LABEL_24;
  }

LABEL_28:
}

void sub_23A9E8A3C(void *a1)
{
  v3 = [a1 state];
  v4 = [a1 view];
  [a1 translationInView_];
  v6 = v5;
  v8 = v7;

  if ((v3 - 3) >= 3)
  {
    if (v3 == 2)
    {
      v11 = [a1 view];
      [a1 velocityInView_];
      v13 = v12;
      v15 = v14;

      v16 = (v1 + qword_27DFB0DD0);
      *v16 = v13;
      v16[1] = v15;
      sub_23A9E9EFC(v6, v8);
      v17 = (v1 + qword_27DFB0DD8);
      *v17 = v6;
      v17[1] = v8;
    }

    else if (v3 == 1)
    {
      v9 = (v1 + qword_27DFB0DD8);
      *v9 = v6;
      v9[1] = v8;
      v10 = (v1 + qword_27DFB0DD0);
      *v10 = 0;
      v10[1] = 0;
    }
  }

  else if (*(v1 + qword_27DFC09F0) == 1)
  {

    sub_23A9E8324();
  }
}

uint64_t sub_23A9E8BC0(uint64_t a1, uint64_t *a2)
{
  sub_23A9E8C8C(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
  swift_beginAccess();
  sub_23A8D5068(v6, v3 + v4, &qword_27DFB1608, qword_23AA1B780);
  return swift_endAccess();
}

uint64_t sub_23A9E8C34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
  swift_beginAccess();
  return sub_23A9E8C8C(v1 + v3, a1);
}

uint64_t sub_23A9E8C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1608, qword_23AA1B780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A9E8CFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
  swift_beginAccess();
  sub_23A8D5068(a1, v1 + v3, &qword_27DFB1608, qword_23AA1B780);
  return swift_endAccess();
}

float sub_23A9E8DCC()
{
  v1 = (v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController____lazy_storage___pitchAdjustment);
  if ((*(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController____lazy_storage___pitchAdjustment + 4) & 1) == 0)
  {
    return *v1;
  }

  *v1 = -1085730854;
  v1[4] = 0;
  return -0.7854;
}

id DollHouseCameraController.init(arView:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arViewSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_panGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_pinchGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_immediateLongPressRecognizer] = 0;
  v5 = &v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController____lazy_storage___pitchAdjustment];
  *v5 = 0;
  v5[4] = 1;
  sub_23AA0C044();
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arView] = a1;
  v6 = a1;
  [v6 bounds];
  *v4 = v7;
  *(v4 + 1) = v8;
  *&v1[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera] = sub_23A9EA058(v6);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DollHouseCameraController();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_23A9E9624(v6);

  return v9;
}

uint64_t sub_23A9E8F4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  type metadata accessor for DollHouseCamera();
  return sub_23AA0C204();
}

double sub_23A9E8F90(float32x4_t a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera) + qword_27DFC09F8);
  v3 = *(v1 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arView);

  v4 = sub_23A94E62C(v3, a1);

  return v4;
}

void sub_23A9E9028()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  *(v1 + qword_27DFB0E50) = 1065353216;
  *(v1 + qword_27DFB0E80) = 1065353216;
  *(v1 + qword_27DFB0E58) = 0;
  v2 = qword_27DFB0F00;
  *(v1 + qword_27DFB0F00) = 1;
  sub_23AA0C134();
  v10 = v3;
  sub_23AA0C144();
  v11 = v4;
  v5 = sub_23A9E8DCC();
  v6 = v11.u32[2];
  v7 = *(v1 + qword_27DFB0EE8);
  if (v11.f32[0] != 0.0 || v11.f32[1] != 0.0 || v11.f32[2] != 0.0)
  {
    if (v11.f32[2] <= v7.f32[2])
    {
      v6 = DWORD2(*(v1 + qword_27DFB0EE8 + 8));
    }

    v7.i64[0] = vbslq_s8(vcgeq_f32(v7, v11), v7, v11).u64[0];
    v7.i64[1] = v6;
  }

  if (*(v1 + qword_27DFB0F10) != 1 || *(v1 + v2) == 1)
  {
    *(v1 + qword_27DFB0EF0) = 0;
    *(v1 + qword_27DFB0F08) = v10;
    v8 = vmulq_f32(v7, v7);
    *(v1 + qword_27DFB0E38) = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    sub_23A9BCB38(*(v1 + qword_27DFB0E40), *(v1 + qword_27DFB0E40 + 16), *(v1 + qword_27DFB0E40 + 32), *(v1 + qword_27DFB0E40 + 48));
    if (v9.n128_f32[0] <= *(v1 + qword_27DFB0E30))
    {
      v9.n128_u32[0] = *(v1 + qword_27DFB0E30);
    }

    *(v1 + qword_27DFB0E78) = v9.n128_u32[0];
    if ((*(v1 + qword_27DFC09E0) & 1) != 0 || *(v1 + v2) == 1)
    {
      *(v1 + qword_27DFB0E70) = v5;
      *(v1 + qword_27DFB0E60) = v5;
      if (*(v1 + v2) == 1)
      {
        *(v1 + v2) = 0;
        v9.n128_u32[0] = 1.0;
        sub_23A9BC32C(v9, 1.0);
      }
    }
  }
}

uint64_t sub_23A9E9210()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arView);
  [v1 bounds];
  v3 = (v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arViewSize);
  if (v4 != *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arViewSize) || v2 != *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arViewSize + 8))
  {
    v6 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
    [v1 bounds];
    Width = CGRectGetWidth(v23);
    [v1 bounds];
    v8 = Width / CGRectGetHeight(v24);
    *(v6 + qword_27DFB0E18) = v8;
    v9 = *(v6 + qword_27DFB0E48);
    REMatrix4x4MakePerspectiveFieldOfViewReverseDepth();
    v10 = (v6 + qword_27DFB0E40);
    *v10 = v11;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    [v1 bounds];
    *v3 = v15;
    v3[1] = v16;
  }

  v17 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  v18 = *(MEMORY[0x277D860B8] + 48);
  sub_23A9BC788(*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32));
  sub_23A9E81E0();
  v19.n128_f32[0] = fminf(*(v17 + qword_27DFB0EF0) + 0.01, 1.0);
  *(v17 + qword_27DFB0EF0) = v19.n128_u32[0];
  v20 = fminf(*(v17 + qword_27DFB0EF8) + 0.01, 1.0);
  *(v17 + qword_27DFB0EF8) = v20;
  sub_23A9BC32C(v19, v20);

  return sub_23A9E9384();
}

uint64_t sub_23A9E9384()
{
  v1 = v0;
  v2 = sub_23AA0C184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_arView);
  sub_23AA0C984();
  v8 = sub_23AA0C6E4();

  if (v8)
  {
    sub_23AA0C9A4();
    sub_23AA0C114();
    v10 = *(v3 + 8);
    v10(v6, v2);
    RECustomMatrixCameraComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v11 = *(v1 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
      v12 = qword_27DFC09F8;
      v13 = *(v11 + qword_27DFC09F8);

      sub_23AA0C9A4();
      sub_23AA0C114();
      v10(v6, v2);
      RECustomMatrixCameraComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECustomMatrixCameraComponentGetProjectionMatrix();
      v34 = v15;
      v35 = v14;
      v32 = v17;
      v33 = v16;

      RECustomMatrixCameraComponentSetProjectionFromMatrix();
      v18 = *(v11 + v12);
      type metadata accessor for ARViewCameraEntity();

      sub_23AA0C264();
      v33 = v20;
      v34 = v19;
      v32 = v21;
      v35 = v22;

      sub_23AA0CAB4();
      v23 = sub_23AA0C2A4();
      v25 = v24;
      sub_23AA0DCD4();
      v31 = v26;
      sub_23AA0D4D4();
      v30 = v27;
      sub_23AA0D4C4();
      *v25 = v28;
      v29 = v31;
      v25[1] = v30;
      v25[2] = v29;
      v23(v36, 0);
    }
  }

  return result;
}

void sub_23A9E9624(void *a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v4 = v1;
  v5 = [v3 initWithTarget:v4 action:sel_didPanWithPanGesture_];
  v6 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_panGestureRecognizer;
  v7 = *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_panGestureRecognizer];
  *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_panGestureRecognizer] = v5;
  v8 = v5;

  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v8 setDelegate_];

  v9 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v4 action:sel_didPinchWithPinchGesture_];
  v10 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_pinchGestureRecognizer;
  v11 = *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_pinchGestureRecognizer];
  *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_pinchGestureRecognizer] = v9;
  v12 = v9;

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v12 setDelegate_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v4 action:sel_didTouchDownWithLongPressGesture_];
  v14 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_immediateLongPressRecognizer;
  v15 = *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_immediateLongPressRecognizer];
  *&v4[OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_immediateLongPressRecognizer] = v13;
  v16 = v13;

  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v16 setMinimumPressDuration_];

  v17 = *&v4[v14];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v17 setDelegate_];
  if (!*&v4[v6])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [a1 addGestureRecognizer_];
  if (!*&v4[v10])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [a1 addGestureRecognizer_];
  if (!*&v4[v14])
  {
LABEL_17:
    __break(1u);
    return;
  }

  [a1 addGestureRecognizer_];
}

id sub_23A9E9870(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  result = [a1 scale];
  v6 = 1.0 / v5;
  if (v6 != 0.0)
  {
    v7 = v6;
    *(v3 + qword_27DFB0E50) = fminf(fmaxf(*(v3 + qword_27DFB0E50) / v7, 0.1), 100.0);
    *(v3 + qword_27DFB0E80) = *(v3 + qword_27DFB0E80) * v7;

    return [a1 setScale_];
  }

  return result;
}

void sub_23A9E999C(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0C064();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  [a1 locationInView_];
  v14 = v13;
  v16 = v15;
  v17 = *(v1 + OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_camera);
  v18 = sub_23A9BC0F4();
  v19 = [a1 state];
  if (v19 == 3)
  {
    sub_23AA0C044();
    v24 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_startTapTime;
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v24, v4);
    sub_23AA0C014();
    v26 = v25;
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v12, v4);
    *(v17 + qword_27DFB0F10) = 0;
    v28 = 1.0;
    if (*(v17 + qword_27DFC09E0))
    {
      v28 = 0.0;
    }

    *(v17 + qword_27DFB0EF0) = v28;
    *(v17 + qword_27DFB0EF8) = v28;
    if (!v18 && v26 < 0.5)
    {
      v29 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
      swift_beginAccess();
      sub_23A9E8C8C(v2 + v29, v35);
      if (v36)
      {
        sub_23A8CA9D8(v35, v32);
        sub_23A9EA580(v35);
        v30 = v33;
        v31 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v31 + 8))(v2, v30, v31, v14, v16);
        __swift_destroy_boxed_opaque_existential_1(v32);
      }

      else
      {
        sub_23A9EA580(v35);
      }
    }
  }

  else if (v19 == 1)
  {
    sub_23AA0C044();
    v20 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_startTapTime;
    swift_beginAccess();
    (*(v5 + 40))(v2 + v20, v12, v4);
    swift_endAccess();
    *(v17 + qword_27DFB0F10) = 1;
    v21 = *(v17 + qword_27DFB0E10);
    *(v17 + qword_27DFB0E10) = 0;

    v22 = *(v17 + qword_27DFB0E08);
    *(v17 + qword_27DFB0E08) = 0;

    v23 = *(v17 + qword_27DFB0E00);
    *(v17 + qword_27DFB0E00) = 0;
  }
}

id DollHouseCameraController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DollHouseCameraController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DollHouseCameraController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23A9E9EFC(double a1, double a2)
{
  v4 = v2 + qword_27DFB0DD8;
  v5 = a1 - *(v2 + qword_27DFB0DD8);
  v6 = objc_opt_self();
  [v6 floatForKey_];
  v8 = *(v2 + qword_27DFB0E68) - ((v7 * v5) * *(v2 + qword_27DFB0E88));
  *(v2 + qword_27DFB0E68) = v8;
  v9 = *(v2 + qword_27DFB0DF8);
  if (v9)
  {
    [v9 rubberBandOffsetForOffset_];
  }

  *(v2 + qword_27DFB0E58) = v8;
  v10 = a2 - *(v4 + 8);
  [v6 floatForKey_];
  v12 = *(v2 + qword_27DFB0E70) - ((v11 * v10) * *(v2 + qword_27DFB0E90));
  *(v2 + qword_27DFB0E70) = v12;
  result = *(v2 + qword_27DFB0DE8);
  if (result)
  {
    result = [result rubberBandOffsetForOffset_];
  }

  *(v2 + qword_27DFB0E60) = v12;
  return result;
}