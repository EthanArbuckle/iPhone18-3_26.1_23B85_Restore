uint64_t sub_23A98B0B0(unint64_t a1, float a2)
{
  v3 = a1;
  v44 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v5 = MEMORY[0x277D84F90];
    if (!i)
    {
      goto LABEL_11;
    }

    v49 = MEMORY[0x277D84F90];
    result = sub_23AA0D964();
    if (i < 0)
    {
      break;
    }

    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EE90360](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v11 = *&v9[v10];

      v13 = sub_23A985580(v12);

      v14 = sub_23A9F4D08(v13);

      v15 = *&v9[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
      v16 = type metadata accessor for HullPoint();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC8RoomPlan9HullPoint_position] = v15;
      *&v17[OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids] = v14;
      v50.receiver = v17;
      v50.super_class = v16;
      objc_msgSendSuper2(&v50, sel_init);

      sub_23AA0D944();
      v18 = *(v49 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
    }

    while (i != v7);
    v5 = v49;
LABEL_11:
    v51 = v5;
    if (v44)
    {
      v45 = v3 & 0xFFFFFFFFFFFFFF8;
      v20 = sub_23AA0D7F4();
      if (!v20)
      {
        return v5;
      }

      v19 = v20;
      v48 = sub_23AA0D7F4();
      v47 = sub_23AA0D7F4();
    }

    else
    {
      v45 = v3 & 0xFFFFFFFFFFFFFF8;
      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        return v5;
      }

      v47 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v48 = v47;
    }

    v21 = 0;
    v46 = v3 & 0xC000000000000001;
    v43 = v3 + 32;
LABEL_17:
    while (1)
    {
      v22 = v19 - 1;
      if (__OFSUB__(v19, 1))
      {
        break;
      }

      v23 = v21;
      if (v19 == v48)
      {
        if (v44)
        {
          v23 = sub_23AA0D7F4();
        }

        else
        {
          v23 = *(v45 + 16);
        }
      }

      v21 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_59;
      }

      if (v22 < 0 || v22 >= v47)
      {
        goto LABEL_60;
      }

      --v19;
      if (v46)
      {
        v24 = MEMORY[0x23EE90360](v22, v3);
        if (v21 < 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v22 >= *(v45 + 16))
        {
          goto LABEL_62;
        }

        v24 = *(v43 + 8 * v22);
        if (v21 < 0)
        {
          goto LABEL_61;
        }
      }

      if (v23 != 1)
      {
        v25 = v3;
        v3 = v51;
        v26 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
        if ((v51 & 0xC000000000000001) != 0)
        {
          v27 = v23 - 1;
          while (v21 >= v27)
          {
            v28 = MEMORY[0x23EE90360](--v27, v3);
            v29 = vsub_f32(*&v24[v26], *&v28[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]);
            v30 = fabsf(v29.f32[0]);
            v31 = fabsf(v29.f32[1]);
            if (v30 < a2 && v31 < a2)
            {
              goto LABEL_51;
            }

            swift_unknownObjectRelease();
            if (!v27)
            {
              goto LABEL_52;
            }
          }

          __break(1u);
        }

        else
        {
          v33 = v23 - 2;
          v34 = (v51 + 8 * v23 + 16);
          v3 = v25;
          while (v21 >= v33 + 1)
          {
            if (v33 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v35 = vsub_f32(*&v24[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *(*v34 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position));
            v36 = fabsf(v35.f32[0]);
            v37 = fabsf(v35.f32[1]);
            if (v36 < a2 && v37 < a2)
            {
              v28 = *v34;
LABEL_51:
              v39 = v28;
              v40 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
              swift_beginAccess();
              v41 = *&v24[v40];
              swift_beginAccess();

              sub_23A985B10(v42);
              swift_endAccess();

              v24 = v39;
LABEL_52:
              v3 = v25;

              if (v19)
              {
                goto LABEL_17;
              }

              return v51;
            }

            --v33;
            --v34;
            if (v33 == -1)
            {
              goto LABEL_48;
            }
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        break;
      }

LABEL_48:

      if (!v19)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_23A98B508()
{
  result = qword_27DFB0630;
  if (!qword_27DFB0630)
  {
    type metadata accessor for HullPointUUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0630);
  }

  return result;
}

uint64_t sub_23A98B560(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_88:
    v2 = sub_23AA0D7F4();
    if (v2 >= 2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 < 2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = sub_23A9890A4(v1);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v5 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  sub_23AA0D964();
  v6 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v12 = MEMORY[0x23EE90360](v7, v1);
      type metadata accessor for DistanceAngleHullPoint();
      v13 = swift_allocObject();
      v14 = *(v12 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
      v15 = *&v3[v6];
      v16 = vsub_f32(v14, v15);
      *(v13 + 16) = vaddv_f32(vmul_f32(v16, v16));
      if (fabsf(vsub_f32(v15, v14).f32[0]) >= 0.00000011921)
      {
        v8 = v14.f32[1];
        v9 = v15.f32[1];
      }

      else
      {
        v9 = v15.f32[1];
        v8 = v14.f32[1];
        v10 = 0.00000011921;
        if (vabds_f32(v15.f32[1], v14.f32[1]) < 0.00000011921)
        {
          goto LABEL_8;
        }
      }

      v10 = atan2f(v8 - v9, v16.f32[0]);
LABEL_8:
      if (v10 <= 0.0)
      {
        v10 = v10 + 6.2832;
      }

      ++v7;
      *(v13 + 20) = v10;
      *(v13 + 24) = v12;
      sub_23AA0D944();
      v11 = *(v67 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      if (v2 == v7)
      {
        goto LABEL_23;
      }
    }
  }

  v17 = (v1 + 32);
  v1 = type metadata accessor for DistanceAngleHullPoint();
  do
  {
    v23 = *v17;
    v24 = swift_allocObject();
    v25 = *&v23[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
    v26 = *&v3[v6];
    v27 = vsub_f32(v25, v26);
    *(v24 + 16) = vaddv_f32(vmul_f32(v27, v27));
    if (fabsf(vsub_f32(v26, v25).f32[0]) >= 0.00000011921)
    {
      v18 = v25.f32[1];
      v19 = v26.f32[1];
LABEL_16:
      v20 = atan2f(v18 - v19, v27.f32[0]);
      goto LABEL_17;
    }

    v19 = v26.f32[1];
    v18 = v25.f32[1];
    v20 = 0.00000011921;
    if (vabds_f32(v26.f32[1], v25.f32[1]) >= 0.00000011921)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v20 <= 0.0)
    {
      v20 = v20 + 6.2832;
    }

    *(v24 + 20) = v20;
    *(v24 + 24) = v23;
    v21 = v23;
    sub_23AA0D944();
    v22 = *(v67 + 16);
    sub_23AA0D974();
    sub_23AA0D984();
    sub_23AA0D954();
    ++v17;
    --v2;
  }

  while (v2);
LABEL_23:

  v67 = sub_23A8F28AC(v28);
  sub_23A985A94(&v67);
  v29 = v67;
  v67 = v5;
  if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
  {
LABEL_91:
    v63 = sub_23AA0D7F4();
    sub_23A985D08(v63);
    v30 = sub_23AA0D7F4();
    if (v30)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_23A985D08(*(v29 + 16));
    v30 = *(v29 + 16);
    if (v30)
    {
LABEL_26:
      v31 = 0;
      v65 = v29;
      v66 = v29 & 0xC000000000000001;
      v64 = v29 + 32;
      do
      {
        if (v66)
        {
          v32 = MEMORY[0x23EE90360](v31, v29);
          v33 = __OFADD__(v31++, 1);
          if (v33)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v31 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_91;
          }

          v32 = *(v64 + 8 * v31);

          v33 = __OFADD__(v31++, 1);
          if (v33)
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }
        }

        v34 = v30;
        v35 = *(*(v32 + 24) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
        for (i = v67; ; v67 = i)
        {
          v1 = i >> 62;
          if (i >> 62)
          {
            if (sub_23AA0D7F4() < 2)
            {
              goto LABEL_73;
            }

            v60 = sub_23AA0D7F4();
            v38 = v60 - 2;
            if (__OFSUB__(v60, 2))
            {
LABEL_78:
              __break(1u);
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
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }
          }

          else
          {
            v37 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v37 < 2)
            {
              goto LABEL_73;
            }

            v38 = v37 - 2;
            if (__OFSUB__(v37, 2))
            {
              goto LABEL_78;
            }
          }

          v39 = i & 0xC000000000000001;
          if ((i & 0xC000000000000001) != 0)
          {

            v41 = MEMORY[0x23EE90360](v38, i);
          }

          else
          {
            if ((v38 & 0x8000000000000000) != 0)
            {
              goto LABEL_79;
            }

            if (v38 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_81;
            }

            v40 = *(i + 8 * v38 + 32);

            v41 = v40;
          }

          v42 = v41;
          if (v1)
          {
            v43 = sub_23AA0D7F4();
          }

          else
          {
            v43 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v43)
          {
            goto LABEL_80;
          }

          v44 = v43 - 1;
          if (__OFSUB__(v43, 1))
          {
            goto LABEL_82;
          }

          if (v39)
          {
            v45 = MEMORY[0x23EE90360](v43 - 1, i);
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            if (v44 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_86;
            }

            v45 = *(i + 8 * v44 + 32);
          }

          v46 = *&v45[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

          v47 = *&v42[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
          v48 = v39 ? MEMORY[0x23EE90360](v44, i) : *(i + 8 * v44 + 32);
          v49 = v48;
          v50 = vsub_f32(v46, v47);

          v51 = *&v49[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

          v52 = _simd_orient_vf2(v50, vsub_f32(v35, v51));
          v53 = fabsf(v52);
          if (v52 > 0.0 && v53 >= 0.00000011921)
          {
            break;
          }

          if (v1)
          {
            v55 = sub_23AA0D7F4();
          }

          else
          {
            v55 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v55)
          {
            goto LABEL_83;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v1 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            i = sub_23A97E578(i);
          }

          v57 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v57)
          {
            goto LABEL_84;
          }

          v58 = v57 - 1;
          v59 = *((i & 0xFFFFFFFFFFFFFF8) + 8 * v58 + 0x20);
          *((i & 0xFFFFFFFFFFFFFF8) + 0x10) = v58;
        }

LABEL_73:
        v61 = *(v32 + 24);
        MEMORY[0x23EE8FD70]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v1 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();

        v30 = v34;
        v62 = v31 == v34;
        v29 = v65;
      }

      while (!v62);
    }
  }

  return v67;
}

void *sub_23A98BB8C(unint64_t a1)
{
  v26 = a1 >> 62;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_43:
    v3 = sub_23AA0D7F4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v25 = v6;
    for (i = v4; ; ++i)
    {
      if (v5)
      {
        v8 = MEMORY[0x23EE90360](i, a1);
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_38;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
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
        goto LABEL_43;
      }

      if (v26)
      {
        v10 = sub_23AA0D7F4();
      }

      else
      {
        v10 = *(v2 + 16);
      }

      if (!v10)
      {
        goto LABEL_39;
      }

      if (i == 0x7FFFFFFFFFFFFFFFLL && v10 == -1)
      {
        goto LABEL_40;
      }

      v11 = v4 % v10;
      if (v5)
      {
        v12 = MEMORY[0x23EE90360](v11, a1);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v11 >= *(v2 + 16))
        {
          goto LABEL_42;
        }

        v12 = *(a1 + 32 + 8 * v11);
      }

      v13 = v12;
      v14 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v15 = *&v13[v14];
      v16 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v17 = *&v9[v16];

      v19 = sub_23A9878FC(v18, v15);

      v20 = (v19 & 0xC000000000000001) != 0 ? sub_23AA0D7F4() : *(v19 + 16);

      if (!v20)
      {
        break;
      }

      if (v4 == v3)
      {
        return v25;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v6 = v25;
    }

    else
    {
      v6 = sub_23A938C30(0, v25[2] + 1, 1, v25);
    }

    v22 = v6[2];
    v21 = v6[3];
    if (v22 >= v21 >> 1)
    {
      v6 = sub_23A938C30((v21 > 1), v22 + 1, 1, v6);
    }

    v6[2] = v22 + 1;
    v23 = &v6[3 * v22];
    v23[4] = v9;
    v23[5] = v13;
    v23[6] = i;
  }

  while (v4 != v3);
  return v6;
}

uint64_t sub_23A98BE18(void *a1)
{
  v8 = MEMORY[0x277D84F90];
  v1 = a1;
  while (1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_hullPoint];
    MEMORY[0x23EE8FD70]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23AA0D314();
    }

    result = sub_23AA0D334();
    v4 = *&v1[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_parent];
    if (!v4)
    {
      break;
    }

    v5 = v4;

    v1 = v5;
    if (!*&v5[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_parent])
    {
      v7 = sub_23A8ED10C(v8);

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A98BF18(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  v7 = type metadata accessor for HullPointHierarchy();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_hullPoint] = a1;
  *&v8[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_parent] = 0;
  v74.receiver = v8;
  v74.super_class = v7;
  v64 = v7;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v74, sel_init);
  MEMORY[0x23EE8FD70]();
  if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_96;
  }

LABEL_2:
  sub_23AA0D334();
  v11 = v75;
  if (v75 >> 62)
  {
    if (sub_23AA0D7F4())
    {
      goto LABEL_4;
    }

LABEL_98:

LABEL_99:

    return MEMORY[0x277D84F90];
  }

  if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_98;
  }

LABEL_4:
  v60 = v10;
  v61 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
  v66 = a4 & 0xFFFFFFFFFFFFFF8;
  v70 = a4 & 0xC000000000000001;
  v69 = a4 + 32;
  v63 = a4;
  v12 = v6;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EE90360](0, v11);
    }

    else
    {
      if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v13 = *(v11 + 32);
    }

    v67 = v13;
    v14 = *&v13[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_hullPoint];
    v73 = v6;
    v68 = v11;
    if (a3 >> 62)
    {
      v10 = sub_23AA0D7F4();
    }

    else
    {
      v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
    v16 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
    v65 = v14;
    swift_beginAccess();
    if (v10)
    {
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x23EE90360](v6, a3);
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_90;
          }

          v17 = *(a3 + 8 * v6 + 32);
        }

        v18 = v17;
        a4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_89;
        }

        v19 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v20 = *&v18[v19];
        v21 = *&v14[v15];

        v23 = sub_23A9878FC(v22, v20);

        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = sub_23AA0D7F4();
        }

        else
        {
          v24 = *(v23 + 16);
        }

        if (v24 <= 0 || (v25 = vceq_f32(*&v18[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v14[v16]), (v25.i32[0] & v25.i32[1] & 1) != 0))
        {
        }

        else
        {
          sub_23AA0D944();
          v26 = *(v73 + 16);
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
        }

        ++v6;
      }

      while (a4 != v10);
      v6 = v73;
    }

    if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
    {
      v10 = sub_23AA0D7F4();
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v10 = *(v6 + 16);
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    v27 = 0;
    v28 = *(a2 + v61);
    a4 = v6 & 0xC000000000000001;
LABEL_32:
    while (2)
    {
      if (a4)
      {
        v29 = MEMORY[0x23EE90360](v27, v6);
      }

      else
      {
        if (v27 >= *(v6 + 16))
        {
          goto LABEL_92;
        }

        v29 = *(v6 + 32 + 8 * v27);
      }

      v30 = __OFADD__(v27++, 1);
      v32 = v69;
      v31 = v70;
      if (v30)
      {
        goto LABEL_91;
      }

      v33 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
      v34 = *&v29[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
      v35 = vceq_f32(v34, v28);
      if (v35.i8[0] & 1) != 0 && (v35.i8[4])
      {
        v58 = v29;

        v59 = sub_23A98BE18(v67);

        return v59;
      }

      v36 = *(v12 + 2);
      v37 = 32;
      while (v36)
      {
        v38 = vceq_f32(*&v12[v37], v34);
        v37 += 8;
        --v36;
        if (v38.i8[0] & 1) != 0 && (v38.i8[4])
        {
LABEL_31:

          if (v27 == v10)
          {
            goto LABEL_68;
          }

          goto LABEL_32;
        }
      }

      if (v63 >> 62)
      {
        v49 = v29;
        v50 = sub_23AA0D7F4();
        v32 = v69;
        v31 = v70;
        v40 = v50;
        v29 = v49;
        v39 = v66;
        if (v40)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v39 = v66;
        v40 = *(v66 + 16);
        if (v40)
        {
LABEL_46:
          v41 = 0;
          while (1)
          {
            if (v31)
            {
              v46 = v29;
              result = MEMORY[0x23EE90360](v41, v63);
              v30 = __OFADD__(v41++, 1);
              if (v30)
              {
                goto LABEL_101;
              }

              v43 = *(result + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
              swift_unknownObjectRelease();
              v29 = v46;
              v39 = v66;
              v32 = v69;
              v31 = v70;
              a4 = v6 & 0xC000000000000001;
            }

            else
            {
              if ((v41 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
LABEL_90:
                __break(1u);
LABEL_91:
                __break(1u);
LABEL_92:
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                sub_23AA0D314();
                goto LABEL_2;
              }

              if (v41 >= *(v39 + 16))
              {
                goto LABEL_88;
              }

              v42 = *(v32 + 8 * v41++);
              v43 = *(v42 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
            }

            v44 = *&v29[v33];
            v45 = vceq_f32(v43, v44);
            if (v45.i32[0] & v45.i32[1])
            {
              goto LABEL_31;
            }

            if (v41 == v40)
            {
              v48 = v29;
              goto LABEL_58;
            }
          }
        }
      }

      v48 = v29;
      v44 = *&v29[v33];
LABEL_58:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_23A938A28(0, *(v12 + 2) + 1, 1, v12);
      }

      v52 = *(v12 + 2);
      v51 = *(v12 + 3);
      if (v52 >= v51 >> 1)
      {
        v12 = sub_23A938A28((v51 > 1), v52 + 1, 1, v12);
      }

      *(v12 + 2) = v52 + 1;
      *&v12[8 * v52 + 32] = v44;
      v53 = objc_allocWithZone(v64);
      *&v53[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_hullPoint] = v48;
      *&v53[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_parent] = v67;
      v72.receiver = v53;
      v72.super_class = v64;
      v54 = v48;
      v55 = v67;
      objc_msgSendSuper2(&v72, sel_init);
      MEMORY[0x23EE8FD70]();
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();

      v68 = v75;
      a4 = v6 & 0xC000000000000001;
      if (v27 != v10)
      {
        continue;
      }

      break;
    }

LABEL_68:

    a4 = v68;
    v56 = v68 >> 62;
    v6 = MEMORY[0x277D84F90];
    if (v68 >> 62)
    {
      result = sub_23AA0D7F4();
      if (!result)
      {
        goto LABEL_102;
      }

      result = sub_23AA0D7F4();
      if (!result)
      {
        goto LABEL_103;
      }
    }

    else if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_94;
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](0, v68);
      swift_unknownObjectRelease();
      v57 = v68 & 0xFFFFFFFFFFFFFF8;
      if (!v56)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v57 = v68 & 0xFFFFFFFFFFFFFF8;
      if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      if (!v56)
      {
LABEL_73:
        result = *(v57 + 16);
        goto LABEL_79;
      }
    }

    result = sub_23AA0D7F4();
LABEL_79:
    if (!result)
    {
      break;
    }

    sub_23A945930(0, 1);

    v11 = v75;
    if (v75 >> 62)
    {
      if (sub_23AA0D7F4() < 1 || !sub_23AA0D7F4())
      {
LABEL_85:

        goto LABEL_99;
      }
    }

    else if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

unint64_t sub_23A98C6E0(unint64_t a1, unint64_t a2)
{
  v4 = sub_23A98BB8C(a1);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = &v4[3 * v5 + 3];
  while (1)
  {
    if (v5 > v4[2])
    {
      __break(1u);
LABEL_19:

      return a1;
    }

    v7 = *(v6 - 1);
    v8 = *v6;
    v9 = *(v6 - 2);
    v10 = v7;
    v11 = sub_23A98BF18(v9, v10, a2, a1);
    if (v11 >> 62)
    {
      v14 = v11;
      v15 = sub_23AA0D7F4();
      v11 = v14;
      if (v15 < 1)
      {
LABEL_3:

        goto LABEL_4;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_3;
    }

    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (a1 >> 62)
    {
      v16 = v11;
      v13 = sub_23AA0D7F4();
      v11 = v16;
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12 >= v13)
    {
      sub_23A911F14(v11);

      goto LABEL_5;
    }

    sub_23A945AF8(v12, v12, v11);

LABEL_4:

LABEL_5:
    v6 -= 3;
    if (!--v5)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:

  return a1;
}

uint64_t sub_23A98C8A0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v95 = a1;
  v96 = sub_23A98BB8C(a1);
  v4 = v96[2];
  if (!v4)
  {

    goto LABEL_76;
  }

  v5 = v4 - 1;
  if (a2 >> 62)
  {
LABEL_83:
    v92 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_23AA0D7F4();
  }

  else
  {
    v92 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v78[4] = v8;
  v9 = a2 & 0xC000000000000001;
  v93 = a2;
  v91 = a2 + 32;
  a2 = v3 & 0xC000000000000001;
  v10 = v3 + 32;

  v84 = 0;
  v80 = v3;
  v85 = v3 >> 62;
  while (1)
  {
    if (v5 >= v96[2])
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v6)
    {
      break;
    }

LABEL_9:
    if ((--v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }
  }

  v11 = &v96[3 * v5];
  v13 = v11[4];
  v12 = v11[5];
  v86 = v11[6];
  v14 = *&v13[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
  v15 = *&v12[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
  v89 = v5;
  if (v85)
  {
    v3 = sub_23AA0D7F4();
  }

  else
  {
    v3 = *(v7 + 16);
  }

  v16 = vsub_f32(v15, v14);
  v17 = vsub_f32(v14, v15);
  v18 = vmul_f32(v17, v17);
  v19 = vadd_f32(v18, vdup_lane_s32(v18, 1));
  v20 = sqrtf(vaddv_f32(v18));
  v88 = v13;
  v87 = v12;
  v90 = 0;
  v5 = 0;
  v21 = 0.0;
  while (1)
  {
    if (v9)
    {
      v22 = MEMORY[0x23EE90360](v5, v93);
    }

    else
    {
      if (v5 >= *(v92 + 16))
      {
        goto LABEL_81;
      }

      v22 = *(v91 + 8 * v5);
    }

    v23 = v22;
    v24 = __OFADD__(v5++, 1);
    if (v24)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v25 = *&v22[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
    if (v3)
    {
      break;
    }

LABEL_31:
    v31 = vmul_f32(v16, vsub_f32(v25, v14));
    v32 = vaddv_f32(v31);
    if (v32 > 0.0 && (vmvn_s8(vcge_f32(vadd_f32(v31, vdup_lane_s32(v31, 1)), v19)).u8[0] & 1) != 0 && (v33 = vsub_f32(v14, v25), v34 = v32 / (v20 * sqrtf(vaddv_f32(vmul_f32(v33, v33)))), v34 >= 0.98481) && v21 < v34)
    {

      v21 = v34;
      v90 = v23;
    }

    else
    {
LABEL_36:
    }

    if (v5 == v6)
    {
      v36 = v90;
      if (v90)
      {
        v3 = v95;
        v94 = v90;
        MEMORY[0x28223BE20](v35);
        v78[2] = &v94;
        v37 = v84;
        result = sub_23A9EAE00(sub_23A98DE88, v78, v3);
        v38 = v36;
        v5 = v89;
        v84 = v37;
        if (result)
        {

          goto LABEL_9;
        }

        v39 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v79 = v86 + 1;
        if (v3 >> 62)
        {
          if (v39 >= sub_23AA0D7F4())
          {
            goto LABEL_51;
          }

          result = sub_23AA0D7F4();
          if (result < v39)
          {
            goto LABEL_86;
          }

LABEL_45:
          if (v39 < 0)
          {
            goto LABEL_87;
          }

          v40 = v90;
          sub_23A945D28(v39, v39, v40);
        }

        else
        {
          result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v39 < result)
          {
            if (result >= v39)
            {
              goto LABEL_45;
            }

LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_51:
          v41 = v90;
          MEMORY[0x23EE8FD70]();
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v77 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23AA0D314();
          }

          sub_23AA0D334();
        }

        v42 = sub_23A985114(v5);
        v44 = v43;

        v45 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        v46 = v88;
        swift_beginAccess();
        v83 = *&v46[v45];
        v47 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        v48 = v90;
        swift_beginAccess();
        v82 = v47;
        v49 = *&v48[v47];
        v50 = v46;
        v88 = v87;
        v51 = v83;

        v53 = sub_23A9878FC(v52, v51);

        if ((v53 & 0xC000000000000001) != 0)
        {
          v54 = sub_23AA0D7F4();
        }

        else
        {
          v54 = *(v53 + 16);
        }

        if (!v54)
        {
          v81 = v50;
          v55 = v5;
          v56 = v96;
          v57 = v96[2];
          if (v57 < v55)
          {
            goto LABEL_88;
          }

          v58 = v81;
          v59 = v90;
          v87 = v58;
          v60 = v59;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v57 >= v56[3] >> 1)
          {
            v56 = sub_23A938C30(isUniquelyReferenced_nonNull_native, v57 + 1, 1, v56);
            v96 = v56;
          }

          sub_23A9456CC(v89, v89, 1, v87, v60, v86);
          v63 = v56[2];
          v62 = v56[3];
          if (v63 >= v62 >> 1)
          {
            v56 = sub_23A938C30((v62 > 1), v63 + 1, 1, v56);
          }

          v64 = v89 + 1;
          v56[2] = v63 + 1;
          v65 = &v56[3 * v63];
          v65[4] = v87;
          v65[5] = v60;
          v65[6] = v86;
          v96 = v56;
          v5 = v64;
          v50 = v81;
        }

        v66 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        v67 = v88;
        swift_beginAccess();
        v68 = *&v67[v66];
        v69 = *&v90[v82];

        v71 = sub_23A9878FC(v70, v68);

        if ((v71 & 0xC000000000000001) != 0)
        {
          v72 = sub_23AA0D7F4();
        }

        else
        {
          v72 = *(v71 + 16);
        }

        if (v72)
        {

          v3 = v88;
          goto LABEL_9;
        }

        v73 = v96;
        v74 = v96[2];
        if (v74 >= v5)
        {
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v81 = v50;
          if (!v75 || v74 >= v73[3] >> 1)
          {
            v73 = sub_23A938C30(v75, v74 + 1, 1, v73);
            v96 = v73;
          }

          v76 = v88;
          sub_23A9456CC(v5, v5, 1, v90, v88, v79);

          v3 = v81;
          v96 = v73;
          ++v5;
          goto LABEL_9;
        }

LABEL_89:
        __break(1u);
        return result;
      }

      v5 = v89;
      goto LABEL_9;
    }
  }

  v26 = 0;
  while (1)
  {
    if (a2)
    {
      result = MEMORY[0x23EE90360](v26, v80);
      v24 = __OFADD__(v26++, 1);
      if (v24)
      {
        goto LABEL_85;
      }

      v28 = *(result + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v26 >= *(v7 + 16))
    {
      goto LABEL_78;
    }

    v27 = *(v10 + 8 * v26++);
    v28 = *(v27 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
LABEL_26:
    v29 = vceq_f32(v28, v25);
    if (v29.i32[0] & v29.i32[1])
    {
      goto LABEL_36;
    }

    if (v26 == v3)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  v3 = v95;
LABEL_76:

  return v3;
}

uint64_t sub_23A98D10C(unint64_t a1, uint64_t a2, uint64_t a3, double a4, float32x2_t a5)
{
  v7 = a1;
  v52 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_54:
    v46 = a4;
    v47 = a5;
    v48 = sub_23AA0D7F4();
    a5 = v47;
    a4 = v46;
    if (v48)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v8 = *&a4;
    v9 = vsub_f32(0, a5);

    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {

        v10 = MEMORY[0x23EE90360](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_54;
        }

        v10 = *(v7 + 32);
      }

      v11 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v12 = *&v10[v11];
      v50 = v10;
      if ((v12 & 0xC000000000000001) != 0)
      {

        sub_23AA0D7B4();
        type metadata accessor for HullPointUUID();
        sub_23A98B508();
        sub_23AA0D424();
        v12 = v54;
        v16 = v55;
        v17 = v56;
        v18 = v57;
        v19 = v58;
      }

      else
      {
        v20 = -1 << *(v12 + 32);
        v16 = v12 + 56;
        v17 = ~v20;
        v21 = -v20;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v19 = v22 & *(v12 + 56);

        v18 = 0;
      }

      v23 = ((v17 + 64) >> 6);
      while ((v12 & 0x8000000000000000) == 0)
      {
        v24 = v18;
        v25 = v19;
        v26 = v18;
        if (!v19)
        {
          while (1)
          {
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v26 >= v23)
            {
              goto LABEL_28;
            }

            v25 = *(v16 + 8 * v26);
            ++v24;
            if (v25)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_20:
        v27 = (v25 - 1) & v25;
        v5 = *(*(v12 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

        if (!v5)
        {
          goto LABEL_28;
        }

LABEL_24:
        if (*(a3 + 16))
        {
          v28 = sub_23A9EDE74(v5);
          if ((v29 & 1) != 0 && vaddv_f32(vmul_f32(v9, *(*(a3 + 56) + 8 * v28))) > 0.70711)
          {
            sub_23A8CA904();

            v23 = v50;
            if (!*(a2 + 16))
            {
              goto LABEL_44;
            }

            v33 = sub_23A9EDE74(v5);
            if ((v34 & 1) == 0)
            {
              goto LABEL_44;
            }

            v35 = (*(a2 + 56) + 16 * v33);
            v36 = *v35;
            v14 = *(*v35 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
            v15 = *&v50[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
            v13 = vsub_f32(v14, v15);
            if (fabsf(v13.f32[0]) < 0.07)
            {
              v37 = v35[1];
              LODWORD(v38) = HIDWORD(*&v50[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]);
              if (fabsf(v13.f32[1]) < 0.07)
              {
                v36 = v37;
              }

              v14 = *(v36 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
              v13.i32[0] = vsub_f32(v14, v15).u32[0];
LABEL_43:
              v13.f32[1] = v14.f32[1] - v38;
              if (vaddv_f32(vmul_f32(v13, v8)) >= 0.0)
              {
LABEL_44:
                v39 = *&v23[v11];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_23AA11BB0;
                *(inited + 32) = v5;
                if ((v39 & 0xC000000000000001) != 0)
                {
                  if (v39 < 0)
                  {
                    v41 = v39;
                  }

                  else
                  {
                    v41 = v39 & 0xFFFFFFFFFFFFFF8;
                  }

                  v42 = sub_23AA0D7F4();
                  v39 = sub_23A9EFF10(v41, v42);
                }

                else
                {
                }

                v43 = sub_23A986E78(inited, v39);
                swift_setDeallocating();
                v44 = *(inited + 16);
                swift_arrayDestroy();
                sub_23A911BA4(v43);
              }

              return v52;
            }

LABEL_42:
            v38 = v15.f32[1];
            goto LABEL_43;
          }
        }

        v18 = v26;
        v19 = v27;
      }

      if (sub_23AA0D824())
      {
        type metadata accessor for HullPointUUID();
        swift_dynamicCast();
        v5 = v51;
        v26 = v18;
        v27 = v19;
        if (v51)
        {
          goto LABEL_24;
        }
      }

LABEL_28:
      sub_23A8CA904();
      v30 = *&v50[v11];

      sub_23A911BA4(v31);
      sub_23A9859BC();

      v7 = a1;
      if (!(a1 >> 62))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          continue;
        }

        goto LABEL_34;
      }

      if (sub_23AA0D7F4() < 1 || !sub_23AA0D7F4())
      {
LABEL_34:

        return v52;
      }
    }
  }

  return v52;
}

unint64_t sub_23A98D608(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EE90360](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        sub_23A9EF31C(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_23AA0D7F4();
      v2 = result;
    }

    while (result);
  }

  return result;
}

void *sub_23A98D6EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *(a2 + 96);
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    v8 = *(a2 + 80);
    v9 = vmul_n_f32(*&v6, 0.5 * v5.f32[0]);
    v10 = vmul_n_f32(*&v7, vmuls_lane_f32(0.5, v5, 1));
    v11 = vadd_f32(*&v8, v10);
    v12 = vsub_f32(*&v8, v10);
    v13 = &v82;
    v83 = vsub_f32(v11, v9);
    v84 = vsub_f32(v12, v9);
    v85 = vsub_f32(0, *&v7);
    v86 = vsub_f32(0, *&v6);
    v87 = vadd_f32(v9, v12);
    v88 = vadd_f32(v9, v11);
    v96 = v86;
    v97 = v7;
    *(&v7 + 1) = v6;
    v89 = v7;
    v90 = v84;
    v91 = v87;
    v92 = v6;
    v93 = v85;
    v94 = v88;
    v95 = v83;
    v74 = a1 >> 62;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_109:
      v15 = sub_23AA0D7F4();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v13 + 32;
    v78 = a1 & 0xC000000000000001;

    v17 = 0;
    v75 = MEMORY[0x277D84F98];
    v73 = v14;
    v70 = v13 + 32;
    do
    {
      v20 = (v16 + 32 * v17);
      v22 = v20[1];
      v21 = v20[2];
      v76 = v20[3];
      v23 = vsub_f32(0, v76);
      if (v15)
      {
        v24 = 0;
        v25 = 0;
        v26 = *v20;
        v13 = 1;
        v27 = INFINITY;
        v28 = INFINITY;
        while (2)
        {
          v29 = v25;
          v30 = v28;
          v31 = v27;
          v32 = v27 + 0.1;
          v25 = v24;
          while (1)
          {
            if (v78)
            {
              v33 = MEMORY[0x23EE90360](v25, a1);
              v24 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                goto LABEL_94;
              }
            }

            else
            {
              if (v25 >= *(v14 + 16))
              {
                goto LABEL_95;
              }

              v33 = *(a1 + 8 * v25 + 32);
              v24 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }
            }

            v34 = *&v33[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

            v35 = vsub_f32(v34, v26);
            v27 = vaddv_f32(vmul_f32(*&v21, v35));
            if (v27 < v32)
            {
              v28 = vaddv_f32(vmul_f32(v23, v35));
              if (vabds_f32(v27, v31) >= 0.1 || v30 >= v28)
              {
                break;
              }
            }

            ++v25;
            if (v24 == v15)
            {
              goto LABEL_27;
            }
          }

          v13 = 0;
          if (v24 != v15)
          {
            continue;
          }

          break;
        }

        v29 = v25;
        v13 = v15 == 0;
      }

      else
      {
        v29 = 0;
        v13 = 1;
      }

LABEL_27:
      v77 = v17;
      v37 = vsub_f32(0, *&v21);
      if (v15)
      {
        v38 = 0;
        v39 = 0;
        v40 = 1;
        v41 = INFINITY;
        v42 = INFINITY;
        do
        {
          v43 = v39;
          v44 = v42;
          v45 = v41;
          v46 = v41 + 0.1;
          v39 = v38;
          while (1)
          {
            if (v78)
            {
              v47 = MEMORY[0x23EE90360](v39, a1);
              v38 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_96;
              }
            }

            else
            {
              if (v39 >= *(v14 + 16))
              {
                goto LABEL_97;
              }

              v47 = *(a1 + 8 * v39 + 32);
              v38 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_96;
              }
            }

            v48 = *&v47[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

            v49 = vsub_f32(v48, v22);
            v41 = vaddv_f32(vmul_f32(v37, v49));
            if (v41 < v46)
            {
              v42 = vaddv_f32(vmul_f32(v23, v49));
              if (vabds_f32(v41, v45) >= 0.1 || v44 >= v42)
              {
                break;
              }
            }

            ++v39;
            if (v38 == v15)
            {
              goto LABEL_45;
            }
          }

          v40 = 0;
        }

        while (v38 != v15);
        v43 = v39;
        v40 = v15 == 0;
LABEL_45:
        if (((v13 | v40) & 1) == 0)
        {
          v51 = v29 - 1;
          if (__OFSUB__(v29, 1))
          {
            goto LABEL_105;
          }

          if (v51 < 0)
          {
            v52 = v74 ? sub_23AA0D7F4() : *(v14 + 16);
            v51 = v52 - 1;
            if (__OFSUB__(v52, 1))
            {
              goto LABEL_107;
            }
          }

          v81 = MEMORY[0x277D84F90];
          if (v78)
          {
            if (v74)
            {
              v53 = sub_23AA0D7F4();
            }

            else
            {
              v53 = *(v14 + 16);
            }

            if (v53)
            {
              while (1)
              {
                v55 = v51 + 1;
                if (__OFADD__(v51, 1))
                {
                  break;
                }

                if (v53 == -1 && v51 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_103;
                }

                v51 = v55 % v53;
                MEMORY[0x23EE90360](v55 % v53, a1);
                MEMORY[0x23EE8FD70]();
                v13 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v13 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_23AA0D314();
                }

                sub_23AA0D334();
                if (v51 == v43)
                {
                  goto LABEL_78;
                }
              }

LABEL_98:
              __break(1u);
LABEL_99:
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
            }

            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          if (v74)
          {
            v54 = sub_23AA0D7F4();
          }

          else
          {
            v54 = *(v14 + 16);
          }

          v14 = a1 + 32;
          if (!v54)
          {
            goto LABEL_108;
          }

          v13 = *(v73 + 16);
          do
          {
            v56 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_101;
            }

            if (v54 == -1 && v51 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_104;
            }

            v51 = v56 % v54;
            if (v56 % v54 >= v13)
            {
              goto LABEL_102;
            }

            v57 = *(a1 + 32 + 8 * v51);
            MEMORY[0x23EE8FD70]();
            if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v58 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_23AA0D314();
            }

            sub_23AA0D334();
          }

          while (v51 != v43);
LABEL_78:
          v80 = MEMORY[0x277D84FA0];
          v59 = MEMORY[0x277D84F90];
          v79 = MEMORY[0x277D84F90];

          v14 = a3;
          v61 = sub_23A98D10C(v60, a3, a4, v21, v76);
          sub_23A911F2C(v61);
          v13 = sub_23A8ED10C(v81);
          v62 = sub_23A98D10C(v13, a3, a4, *&v37, v76);

          sub_23A911F2C(v62);
          if (v81 >> 62)
          {
            v63 = sub_23AA0D7F4();
            if (v63)
            {
LABEL_80:
              v64 = 0;
              while (1)
              {
                if ((v81 & 0xC000000000000001) != 0)
                {
                  v65 = MEMORY[0x23EE90360](v64, v81);
                }

                else
                {
                  if (v64 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_100;
                  }

                  v65 = *(v81 + 8 * v64 + 32);
                }

                v66 = v65;
                v14 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_99;
                }

                v67 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
                swift_beginAccess();
                v13 = *&v66[v67];

                sub_23A911BA4(v13);
                ++v64;
                if (v14 == v63)
                {
                  v18 = v59;
                  goto LABEL_5;
                }
              }
            }
          }

          else
          {
            v63 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v63)
            {
              goto LABEL_80;
            }
          }

          v18 = MEMORY[0x277D84F90];
LABEL_5:

          sub_23A98D608(v18);

          sub_23A985DA4(v79);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_23A9DA000(v80, isUniquelyReferenced_nonNull_native, v76);
          v14 = v73;
          v16 = v70;
        }
      }

      v17 = v77 + 1;
    }

    while (v77 != 3);

    return v75;
  }

  else
  {
    v68 = MEMORY[0x277D84F90];

    return sub_23A9DC5F8(v68);
  }
}

uint64_t sub_23A98DE88(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for HullPoint();
  return sub_23AA0D634() & 1;
}

uint64_t sub_23A98DEE0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23A987EF0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

float sub_23A98DF14(double a1, double a2, __n128 a3, __n128 a4)
{
  result = a4.n128_f32[2];
  if (fabsf(a4.n128_f32[2] / a3.n128_f32[2]) != INFINITY)
  {
    return (a3.n128_f32[2] / (1.0 - a3.n128_f32[2])) * (a4.n128_f32[2] / a3.n128_f32[2]);
  }

  return result;
}

uint64_t sub_23A98DF4C()
{
  v1 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
  v2 = sub_23AA0C0E4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JunctionPoint()
{
  result = qword_27DFB0638;
  if (!qword_27DFB0638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A98E06C()
{
  result = sub_23AA0C0E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23A98E138()
{
  result = qword_27DFB0648;
  if (!qword_27DFB0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0648);
  }

  return result;
}

void sub_23A98E18C(char **a1, float32x2_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23A977E34(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = (v4 + 32);
  v6[1] = v5;
  sub_23A9918EC(v6, a2);
  *a1 = v4;
}

uint64_t sub_23A98E208(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23A97E5E8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23A991A08(v6);
  return sub_23AA0D954();
}

unint64_t sub_23A98E284(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x23EE90360](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = *(v4 + 24);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_23AA0D7F4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_23AA0D7F4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_23AA0D8D4();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_23AA0D7F4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v33)
          {
            goto LABEL_45;
          }

          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_23A914008(&qword_27DFAF108, &qword_27DFAF100, &unk_23AA19360);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF100, &unk_23AA19360);
              v19 = sub_23A9DC200(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for CDTEdge();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          if (v33 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_23AA0D7F4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_23AA0D7F4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23A98E5D8(uint64_t a1)
{
  v38 = a1 + 64;
  v1 = 1 << *(a1 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(a1 + 64);
  v37 = (v1 + 63) >> 6;

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &qword_27DFAF0F0;
  while (1)
  {
    if (!v3)
    {
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v8 >= v37)
        {
          goto LABEL_50;
        }

        v3 = *(v38 + 8 * v8);
        ++v5;
        if (v3)
        {
          v5 = v8;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

LABEL_10:
    v9 = *(*(a1 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v3)))));
    swift_beginAccess();
    v10 = *(v9 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v14 = v13 - 32;
      if (v13 < 32)
      {
        v14 = v13 - 25;
      }

      v12[2] = v11;
      v12[3] = (2 * (v14 >> 3)) | 1;
      v43 = sub_23A9F409C(&v42, v12 + 4, v11, v10);

      result = sub_23A8CA904();
      if (v43 != v11)
      {
        goto LABEL_53;
      }

      v7 = &qword_27DFAF0F0;
      v15 = v12;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v16 = v15 < 0 || (v15 & 0x4000000000000000) != 0;
    v17 = v16 ? sub_23AA0D7F4() : *(v15 + 16);
    v18 = v6 >> 62;
    if (v6 >> 62)
    {
      break;
    }

    v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v19 + v17;
    if (__OFADD__(v19, v17))
    {
      goto LABEL_49;
    }

LABEL_23:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v43 = v17;
    if (!result)
    {
      if (v18)
      {
LABEL_30:
        sub_23AA0D7F4();
      }

      else
      {
        v21 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
        v22 = *(v21 + 16);
      }

      result = sub_23AA0D8D4();
      v6 = result;
      v21 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_32;
    }

    if (v18)
    {
      goto LABEL_30;
    }

    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v20 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

LABEL_32:
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v41 = v15;
    if (v16)
    {
      v25 = v21;
      result = sub_23AA0D7F4();
      v21 = v25;
      v26 = result;
    }

    else
    {
      v26 = *(v15 + 16);
    }

    v3 &= v3 - 1;
    if (v26)
    {
      if (((v24 >> 1) - v23) < v43)
      {
        goto LABEL_54;
      }

      v27 = v21 + 8 * v23 + 32;
      v39 = v21;
      if (v16)
      {
        if (v26 < 1)
        {
          goto LABEL_56;
        }

        sub_23A914008(&qword_27DFAF0F8, v7, &unk_23AA12A80);
        v28 = v7;
        for (i = 0; i != v26; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v7, &unk_23AA12A80);
          v30 = sub_23A9DC200(&v42, i, v41);
          v32 = *v31;

          (v30)(&v42, 0);
          *(v27 + 8 * i) = v32;
        }
      }

      else
      {
        type metadata accessor for CDTTriangle();
        swift_arrayInitWithCopy();
        v28 = v7;
      }

      v7 = v28;
      if (v43 >= 1)
      {
        v33 = *(v39 + 16);
        v34 = __OFADD__(v33, v43);
        v35 = v33 + v43;
        if (v34)
        {
          goto LABEL_55;
        }

        *(v39 + 16) = v35;
      }
    }

    else
    {

      if (v43 > 0)
      {
        goto LABEL_52;
      }
    }
  }

  v36 = sub_23AA0D7F4();
  v20 = v36 + v17;
  if (!__OFADD__(v36, v17))
  {
    goto LABEL_23;
  }

LABEL_49:
  __break(1u);
LABEL_50:

  return v6;
}

void *sub_23A98E9F8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  return v0;
}

uint64_t sub_23A98EA68()
{
  sub_23A98E9F8();

  return swift_deallocClassInstance();
}

uint64_t sub_23A98EAC0(unint64_t a1, uint64_t a2)
{
  result = sub_23A99AA3C();
  if ((result & 1) == 0)
  {
LABEL_6:
    if (sub_23A99AA3C() & 1) != 0 && (sub_23A99AA3C())
    {
      v10 = sub_23A993944(a1, a2, 0, v9);
      if (!v10)
      {
LABEL_9:
        type metadata accessor for CDTPolygon();
        swift_allocObject();
        return sub_23A99A810(MEMORY[0x277D84F90]);
      }
    }

    else
    {
      v10 = sub_23A9908E8(a1, a2, 0, 1, 0.0001);
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    return v10;
  }

  v5 = 0;
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  while (1)
  {
    if (v7 == v5)
    {

      return a1;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v8 = v5 + 1;
    result = sub_23A8EDCD8(a2, 0.001, *(v6 + 32 + 8 * v5));
    v5 = v8;
    if (result)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A98EBE4(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_41;
  }

  while (2)
  {

    if (v3 < 1)
    {
      return v1;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EE90360](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_42;
        }

        v7 = result;
        v8 = MEMORY[0x23EE90360](v4 + 1, v1);
        goto LABEL_10;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        break;
      }

      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= v5)
      {
        goto LABEL_33;
      }

      v6 = v4 + 1;
      if (v4 + 1 >= v5)
      {
        goto LABEL_34;
      }

      v7 = *(v1 + 32 + 8 * v4);
      v8 = *(v1 + 32 + 8 * v6);

LABEL_10:
      v9 = sub_23A9908E8(v7, v8, 1, 1, 0.0001);
      if (v9)
      {
        v10 = v9;

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_23A97E578(v1);
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v12 = v11 + 8 * v6;
        v13 = *(v12 + 32);
        *(v12 + 32) = v10;

        if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_23A97E578(v1);
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        v14 = *(v11 + 16);
        if (v4 >= v14)
        {
          goto LABEL_38;
        }

        v15 = v14 - 1;
        v16 = v11 + 8 * v4;
        v17 = *(v16 + 32);
        memmove((v16 + 32), (v16 + 40), 8 * (v14 - 1 - v4));
        *(v11 + 16) = v15;

        if (!(v1 >> 62))
        {
LABEL_21:
          v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v19 = v18 - 1;
          if (__OFSUB__(v18, 1))
          {
            goto LABEL_35;
          }

          goto LABEL_22;
        }
      }

      else
      {

        v4 = v6;
        if (!(v1 >> 62))
        {
          goto LABEL_21;
        }
      }

      v20 = sub_23AA0D7F4();
      v19 = v20 - 1;
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      if (v4 >= v19)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_23AA0D7F4();
    v3 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      continue;
    }

    break;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_23A98EE34(float32x2_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    goto LABEL_34;
  }

  v7 = a4;
  v214 = HIDWORD(a3);
  v207 = HIDWORD(a4);
  v8 = a3;

  sub_23A99AC40();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
  inited = swift_initStackObject();
  if (v10)
  {
    v12 = inited;
    *(inited + 16) = xmmword_23AA11C20;
    v13 = vadd_f32(__PAIR64__(v214, v8), __PAIR64__(v207, v7));
    *(inited + 32) = __PAIR64__(v214, v8);
    *(inited + 40) = __PAIR64__(v13.u32[1], v8);
    *(inited + 48) = v13;
    v13.i32[1] = v214;
  }

  else
  {
    v12 = inited;
    *(inited + 16) = xmmword_23AA11C20;
    v13 = vadd_f32(__PAIR64__(v214, v8), __PAIR64__(v207, v7));
    *(inited + 32) = __PAIR64__(v214, v8);
    *(inited + 40) = __PAIR64__(v214, v13.u32[0]);
    *(inited + 48) = v13;
    v13.i32[0] = v8;
  }

  *(inited + 56) = v13;
  type metadata accessor for CDTPolygon();
  swift_allocObject();
  v14 = sub_23A99A810(v12);

  a1 = sub_23A98EAC0(a1, v14);

  v15 = sub_23A98EBE4(a2);

  if (v15 >> 62)
  {
    goto LABEL_306;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v198 = v15;
  a2 = v15;
  if (v16)
  {
    v18 = 0;
    a2 = v15;
    v208 = v15 & 0xC000000000000001;
    v203 = v15 & 0xFFFFFFFFFFFFFF8;
    v201 = v15 + 32;
    do
    {
      if (v208)
      {
        v19 = MEMORY[0x23EE90360](v18, v198);
      }

      else
      {
        if (v18 >= *(v203 + 16))
        {
          goto LABEL_258;
        }

        v19 = *(v201 + 8 * v18);
      }

      isUniquelyReferenced_nonNull_native = sub_23A99AA3C();
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = 0;
        v21 = *(v19 + 16);
        v22 = *(v21 + 16);
        while (v22 != v20)
        {
          if (v20 >= *(v21 + 16))
          {
            goto LABEL_242;
          }

          v23 = v20 + 1;
          isUniquelyReferenced_nonNull_native = sub_23A8EDCD8(a1, 0.001, *(v21 + 32 + 8 * v20));
          v20 = v23;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_18;
          }
        }

        v26 = v19;
      }

      else
      {
LABEL_18:
        if (sub_23A99AA3C() & 1) != 0 && (sub_23A99AA3C())
        {
          v25 = sub_23A993944(v19, a1, 0, v24);
          if (v25)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v25 = sub_23A9908E8(v19, a1, 0, 1, 0.0001);
          if (v25)
          {
LABEL_23:
            v26 = v25;
            goto LABEL_25;
          }
        }

        swift_allocObject();
        v26 = sub_23A99A810(MEMORY[0x277D84F90]);
      }

LABEL_25:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (a2 & 0x8000000000000000) != 0 || (a2 & 0x4000000000000000) != 0)
      {
        a2 = sub_23A97E578(a2);
      }

      if (v18 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_259;
      }

      v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * v18 + 0x20);
      *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * v18 + 0x20) = v26;

      ++v18;
    }

    while (v18 != v16);
  }

LABEL_34:
  isUniquelyReferenced_nonNull_native = a1[2];
  v191 = a2 >> 62;
  v192 = a1;
  if (a2 >> 62)
  {
    goto LABEL_264;
  }

  v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
  v209 = isUniquelyReferenced_nonNull_native;

  v29 = MEMORY[0x277D84F90];
  v202 = a2;
  if (!v28)
  {
    goto LABEL_58;
  }

  v30 = 0;
  v31 = a2 & 0xC000000000000001;
  v32 = a2 & 0xFFFFFFFFFFFFFF8;
  v33 = MEMORY[0x277D84F90];
  while (v31)
  {
    a2 = MEMORY[0x23EE90360](v30, v202);
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_57;
    }

LABEL_43:
    v35 = *(a2 + 16);

    a2 = *(v35 + 16);
    v36 = *(v33 + 16);
    v37 = v36 + a2;
    if (__OFADD__(v36, a2))
    {
      goto LABEL_255;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v37 > *(v33 + 24) >> 1)
    {
      if (v36 <= v37)
      {
        v38 = v36 + a2;
      }

      else
      {
        v38 = v36;
      }

      isUniquelyReferenced_nonNull_native = sub_23A938A28(isUniquelyReferenced_nonNull_native, v38, 1, v33);
      v33 = isUniquelyReferenced_nonNull_native;
    }

    v29 = MEMORY[0x277D84F90];
    if (*(v35 + 16))
    {
      v39 = *(v33 + 16);
      if ((*(v33 + 24) >> 1) - v39 < a2)
      {
        goto LABEL_257;
      }

      memcpy((v33 + 8 * v39 + 32), (v35 + 32), 8 * a2);

      if (a2)
      {
        v40 = *(v33 + 16);
        v41 = __OFADD__(v40, a2);
        v42 = v40 + a2;
        if (v41)
        {
          goto LABEL_260;
        }

        *(v33 + 16) = v42;
      }
    }

    else
    {

      if (a2)
      {
        goto LABEL_256;
      }
    }

    ++v30;
    if (v34 == v28)
    {
      goto LABEL_59;
    }
  }

  if (v30 >= *(v32 + 16))
  {
    goto LABEL_254;
  }

  a2 = *(v202 + 8 * v30 + 32);

  v34 = v30 + 1;
  if (!__OFADD__(v30, 1))
  {
    goto LABEL_43;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  v33 = v29;
LABEL_59:
  v218 = v209;
  sub_23A911F44(v33);
  v43 = sub_23A9956C8(v218, 0.0001);

  v44 = *(v192 + 24);

  v45 = sub_23A98E284(v202);
  v218 = v44;
  sub_23A912048(v45);
  v46 = v218;
  v47 = sub_23A9957B8(v43);
  type metadata accessor for CDTTriangleEdgeManager();
  v48 = swift_initStackObject();
  *(v48 + 16) = MEMORY[0x277D84F98];
  v196 = (v48 + 16);
  sub_23A930E4C(v47);

  if (v46 >> 62)
  {
    v49 = sub_23AA0D7F4();
    v195 = v46;
    if (!v49)
    {
      goto LABEL_266;
    }

LABEL_61:
    v194 = v46 & 0xC000000000000001;
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v50 = 0;
    v189 = v46 + 32;
    v190 = v46 & 0xFFFFFFFFFFFFFF8;
    v193 = v49;
    while (1)
    {
      if (v194)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x23EE90360](v50, v46);
        v51 = isUniquelyReferenced_nonNull_native;
        v41 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v41)
        {
          goto LABEL_261;
        }
      }

      else
      {
        if (v50 >= *(v190 + 16))
        {
          goto LABEL_263;
        }

        v51 = *(v189 + 8 * v50);

        v41 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v41)
        {
          goto LABEL_261;
        }
      }

      v197 = v52;
      v53 = *v196;
      sub_23AA0DD14();
      v54 = v51[5];
      MEMORY[0x23EE907C0](*(*&v54 + 16));
      v55 = *(*&v54 + 16);
      if (v55)
      {
        v56 = (*&v54 + 32);
        do
        {
          v57 = *v56++;
          sub_23AA0DD44();
          sub_23AA0DD44();
          --v55;
        }

        while (v55);
      }

      v58 = sub_23AA0DD54();
      if (*(v53 + 16))
      {
        sub_23A9EDF54(v58);
        if (v59)
        {
          goto LABEL_63;
        }
      }

      v218 = MEMORY[0x277D84F90];
      v60 = 1 << *(v53 + 32);
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      else
      {
        v61 = -1;
      }

      a2 = v61 & *(v53 + 64);
      v62 = (v60 + 63) >> 6;

      v64 = 0;
      while (a2)
      {
LABEL_85:
        v66 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        v67 = *(*(v53 + 56) + ((v64 << 9) | (8 * v66)));
        v68 = v67[2];
        if (v51[4].i8[0] == 1)
        {
          v69 = v67[3];
LABEL_87:
          v70 = v51[2];
          v71 = v51[3];
          v72 = vsub_f32(v68, v70);
          v73 = vrev64_s32(vsub_f32(v69, v70));
          v74 = vmul_f32(v72, v73);
          LODWORD(v75) = vsub_f32(v74, vdup_lane_s32(v74, 1)).u32[0];
          v76 = fabsf(v75);
          v77 = vmul_f32(vsub_f32(v68, v71), vrev64_s32(vsub_f32(v69, v71)));
          LODWORD(v78) = vsub_f32(v77, vdup_lane_s32(v77, 1)).u32[0];
          if (fabsf(v78) >= 1.4211e-14)
          {
            if (v78 <= 0.0)
            {
              if (v76 < 1.4211e-14 || v75 > 0.0)
              {
                goto LABEL_89;
              }
            }

            else if (v76 < 1.4211e-14 || v75 <= 0.0)
            {
              goto LABEL_89;
            }
          }

          else if (v76 >= 1.4211e-14)
          {
LABEL_89:
            v79 = vsub_f32(v71, v70);
            LODWORD(v80) = vsub_f32(vmul_lane_f32(v79, v72, 1), vmul_lane_f32(v72, v79, 1)).u32[0];
            v81 = fabsf(v80);
            v82 = vmul_f32(v73, v79);
            LODWORD(v83) = vsub_f32(v82, vdup_lane_s32(v82, 1)).u32[0];
            if (fabsf(v83) >= 1.4211e-14)
            {
              if (v83 <= 0.0)
              {
                if (v81 < 1.4211e-14 || v80 > 0.0)
                {
LABEL_121:

                  sub_23AA0D944();
                  v93 = *(v218 + 16);
                  sub_23AA0D974();
                  sub_23AA0D984();
                  isUniquelyReferenced_nonNull_native = sub_23AA0D954();
                }
              }

              else if (v81 < 1.4211e-14 || v80 <= 0.0)
              {
                goto LABEL_121;
              }
            }

            else if (v81 >= 1.4211e-14)
            {
              goto LABEL_121;
            }
          }
        }

        else
        {
          v84 = v51[2];
          *&v63 = vsub_f32(v68, v84);
          if (fabsf(*&v63) >= 0.0001 || fabsf(*(&v63 + 1)) >= 0.0001)
          {
            v85 = v51[3];
            v86 = vsub_f32(v68, v85);
            if (fabsf(v86.f32[0]) >= 0.0001 || fabsf(v86.f32[1]) >= 0.0001)
            {
              v210 = v63;
              v87 = vsub_f32(v85, v84);
              if (fabsf(_simd_orient_vf2(*&v63, v87)) > 0.0001 || (*(&v63 + 1) = *(&v210 + 1), *&v63 = vmul_f32(*&v210, v87), vaddv_f32(*&v63) <= 0.0) || (v88 = vsub_f32(v84, v85), v89 = vmul_f32(v88, v88), (vcgt_f32(vadd_f32(v89, vdup_lane_s32(v89, 1)), vadd_f32(*&v63, vdup_lane_s32(*&v63, 1))).u8[0] & 1) == 0))
              {
                v69 = v67[3];
                *&v63 = vsub_f32(v69, v84);
                if (fabsf(*&v63) >= 0.0001 || fabsf(*(&v63 + 1)) >= 0.0001)
                {
                  v90 = vsub_f32(v69, v85);
                  if (fabsf(v90.f32[0]) >= 0.0001 || fabsf(v90.f32[1]) >= 0.0001)
                  {
                    v211 = v63;
                    if (fabsf(_simd_orient_vf2(*&v63, v87)) > 0.0001)
                    {
                      goto LABEL_87;
                    }

                    *(&v63 + 1) = *(&v211 + 1);
                    *&v63 = vmul_f32(v87, *&v211);
                    if (vaddv_f32(*&v63) <= 0.0)
                    {
                      goto LABEL_87;
                    }

                    v91 = vsub_f32(v84, v85);
                    v92 = vmul_f32(v91, v91);
                    if ((vcgt_f32(vadd_f32(v92, vdup_lane_s32(v92, 1)), vadd_f32(*&v63, vdup_lane_s32(*&v63, 1))).u8[0] & 1) == 0)
                    {
                      goto LABEL_87;
                    }
                  }
                }
              }
            }
          }
        }
      }

      while (1)
      {
        v65 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_241;
        }

        if (v65 >= v62)
        {
          break;
        }

        a2 = *(v53 + 64 + 8 * v65);
        ++v64;
        if (a2)
        {
          v64 = v65;
          goto LABEL_85;
        }
      }

      v94 = sub_23A9C8B58(v218);
      v95 = v94;
      v217 = v94;
      if (v94 >> 62)
      {
        isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
      }

      else
      {
        isUniquelyReferenced_nonNull_native = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (isUniquelyReferenced_nonNull_native + 0x4000000000000000 < 0)
      {
        goto LABEL_262;
      }

      a2 = 0;
      if (((2 * isUniquelyReferenced_nonNull_native) | 1) > 1)
      {
        v96 = 2 * isUniquelyReferenced_nonNull_native + 1;
      }

      else
      {
        v96 = 1;
      }

      v199 = v96 - 1;
      while (2)
      {
        v97 = v95 >> 62;
        if (v95 >> 62)
        {
          isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
          if (isUniquelyReferenced_nonNull_native >= 1)
          {
            goto LABEL_133;
          }

LABEL_62:

LABEL_63:

          goto LABEL_64;
        }

        isUniquelyReferenced_nonNull_native = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (isUniquelyReferenced_nonNull_native < 1)
        {
          goto LABEL_62;
        }

LABEL_133:
        if (a2 != v199)
        {
          if (v97)
          {
            isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
            if (!isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_247;
            }

            isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
            if (!isUniquelyReferenced_nonNull_native)
            {
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
LABEL_254:
              __break(1u);
LABEL_255:
              __break(1u);
LABEL_256:
              __break(1u);
LABEL_257:
              __break(1u);
LABEL_258:
              __break(1u);
LABEL_259:
              __break(1u);
LABEL_260:
              __break(1u);
LABEL_261:
              __break(1u);
LABEL_262:
              __break(1u);
LABEL_263:
              __break(1u);
LABEL_264:
              v165 = isUniquelyReferenced_nonNull_native;
              v28 = sub_23AA0D7F4();
              isUniquelyReferenced_nonNull_native = v165;
              goto LABEL_36;
            }
          }

          else if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_246;
          }

          if ((v95 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x23EE90360](0, v95);
            v99 = v95 & 0xFFFFFFFFFFFFFF8;
            if (!v97)
            {
              goto LABEL_142;
            }
          }

          else
          {
            if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_243;
            }

            v98 = *(v95 + 32);

            v99 = v95 & 0xFFFFFFFFFFFFFF8;
            if (!v97)
            {
LABEL_142:
              isUniquelyReferenced_nonNull_native = *(v99 + 16);
              if (!isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_249;
              }

              v100 = isUniquelyReferenced_nonNull_native - 1;
              if (__OFSUB__(isUniquelyReferenced_nonNull_native, 1))
              {
                goto LABEL_244;
              }

              goto LABEL_152;
            }
          }

          isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_249;
          }

          isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
          if (isUniquelyReferenced_nonNull_native < 1)
          {
            goto LABEL_250;
          }

          isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
          v100 = isUniquelyReferenced_nonNull_native - 1;
          if (__OFSUB__(isUniquelyReferenced_nonNull_native, 1))
          {
            goto LABEL_244;
          }

LABEL_152:
          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v97)
            {
              v101 = (v95 & 0xFFFFFFFFFFFFFF8);
              if (v100 > *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_158:
                v102 = v101[2];
                goto LABEL_160;
              }

              goto LABEL_161;
            }
          }

          else if (!v97)
          {
            v101 = (v95 & 0xFFFFFFFFFFFFFF8);
            goto LABEL_158;
          }

          sub_23AA0D7F4();
LABEL_160:
          v95 = sub_23AA0D8D4();
          v101 = (v95 & 0xFFFFFFFFFFFFFF8);
LABEL_161:
          v212 = v98;
          v103 = v101[4];

          if (v95 >> 62)
          {
            v163 = sub_23AA0D7F4();
            if (__OFSUB__(v163, 1))
            {
              __break(1u);

              __break(1u);
              return result;
            }

            memmove(v101 + 4, v101 + 5, 8 * (v163 - 1));
            isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
            v105 = isUniquelyReferenced_nonNull_native - 1;
            if (__OFSUB__(isUniquelyReferenced_nonNull_native, 1))
            {
              goto LABEL_245;
            }
          }

          else
          {
            v104 = v101[2];
            isUniquelyReferenced_nonNull_native = memmove(v101 + 4, v101 + 5, 8 * v104 - 8);
            v105 = v104 - 1;
            if (__OFSUB__(v104, 1))
            {
              goto LABEL_245;
            }
          }

          v101[2] = v105;
          v217 = v95;
          swift_beginAccess();
          v106 = v212[6];
          if (*(v106 + 16) == 2)
          {
            v200 = a2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
            v107 = swift_allocObject();
            v108 = _swift_stdlib_malloc_size(v107);
            v109 = v108 - 32;
            if (v108 < 32)
            {
              v109 = v108 - 25;
            }

            v107[2] = 2;
            v107[3] = 2 * (v109 >> 3);
            v110 = sub_23A9F3F9C(&v218, v107 + 4, 2, v106);
            a2 = v219;

            isUniquelyReferenced_nonNull_native = sub_23A8CA904();
            if (v110 != 2)
            {
              goto LABEL_251;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
            isUniquelyReferenced_nonNull_native = swift_initStackObject();
            *(isUniquelyReferenced_nonNull_native + 16) = xmmword_23AA11C20;
            v111 = v107[2];
            if (!v111)
            {
              goto LABEL_252;
            }

            v112 = isUniquelyReferenced_nonNull_native;
            *(isUniquelyReferenced_nonNull_native + 32) = v107[4];
            *(isUniquelyReferenced_nonNull_native + 40) = v212[2];
            if (v111 == 1)
            {
              goto LABEL_253;
            }

            v113 = v107[5];

            *(v112 + 48) = v113;
            *(v112 + 56) = v212[3];
            type metadata accessor for CDTPolygon();
            swift_initStackObject();
            sub_23A99A810(v112);
            if (sub_23A99AA3C())
            {
              v114 = v212[6];

              v116 = sub_23A9C8A9C(v115);
              v117 = sub_23A930738();
              sub_23A930A2C(v116);

              v118 = sub_23A930E4C(v117);

              v218 = MEMORY[0x277D84F90];
              a2 = v200;
              if (v118 >> 62)
              {
                isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
                v119 = isUniquelyReferenced_nonNull_native;
              }

              else
              {
                v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v119)
              {
                v120 = 0;
                a2 = v118 & 0xFFFFFFFFFFFFFF8;
                while (1)
                {
                  if ((v118 & 0xC000000000000001) != 0)
                  {
                    isUniquelyReferenced_nonNull_native = MEMORY[0x23EE90360](v120, v118);
                    v121 = isUniquelyReferenced_nonNull_native;
                    v122 = v120 + 1;
                    if (__OFADD__(v120, 1))
                    {
                      goto LABEL_239;
                    }
                  }

                  else
                  {
                    if (v120 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_240;
                    }

                    v121 = *(v118 + 8 * v120 + 32);

                    v122 = v120 + 1;
                    if (__OFADD__(v120, 1))
                    {
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
                      goto LABEL_248;
                    }
                  }

                  v123 = v121[2];
                  if (v51[4].i8[0] == 1)
                  {
                    v124 = v121[3];
                  }

                  else
                  {
                    v140 = v51[2];
                    v141 = vsub_f32(v123, v140);
                    v142 = fabsf(v141.f32[1]);
                    if (fabsf(v141.f32[0]) < 0.0001 && v142 < 0.0001)
                    {
                      goto LABEL_174;
                    }

                    v144 = v51[3];
                    v145 = vsub_f32(v123, v144);
                    v146 = fabsf(v145.f32[1]);
                    if (fabsf(v145.f32[0]) < 0.0001 && v146 < 0.0001)
                    {
                      goto LABEL_174;
                    }

                    v204 = v141;
                    v148 = vsub_f32(v144, v140);
                    if (fabsf(_simd_orient_vf2(v141, v148)) <= 0.0001)
                    {
                      v149 = vmul_f32(v204, v148);
                      if (vaddv_f32(v149) > 0.0)
                      {
                        v150 = vsub_f32(v140, v144);
                        v151 = vmul_f32(v150, v150);
                        if (vcgt_f32(vadd_f32(v151, vdup_lane_s32(v151, 1)), vadd_f32(v149, vdup_lane_s32(v149, 1))).u8[0])
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v124 = v121[3];
                    v152 = vsub_f32(v124, v140);
                    v153 = fabsf(v152.f32[1]);
                    if (fabsf(v152.f32[0]) < 0.0001 && v153 < 0.0001)
                    {
                      goto LABEL_174;
                    }

                    v155 = vsub_f32(v124, v144);
                    v156 = fabsf(v155.f32[1]);
                    if (fabsf(v155.f32[0]) < 0.0001 && v156 < 0.0001)
                    {
                      goto LABEL_174;
                    }

                    v205 = v152;
                    if (fabsf(_simd_orient_vf2(v152, v148)) <= 0.0001)
                    {
                      v158 = vmul_f32(v148, v205);
                      if (vaddv_f32(v158) > 0.0)
                      {
                        v159 = vsub_f32(v140, v144);
                        v160 = vmul_f32(v159, v159);
                        if (vcgt_f32(vadd_f32(v160, vdup_lane_s32(v160, 1)), vadd_f32(v158, vdup_lane_s32(v158, 1))).u8[0])
                        {
                          goto LABEL_174;
                        }
                      }
                    }
                  }

                  v125 = v51[2];
                  v126 = v51[3];
                  v127 = vsub_f32(v123, v125);
                  v128 = vrev64_s32(vsub_f32(v124, v125));
                  v129 = vmul_f32(v127, v128);
                  LODWORD(v130) = vsub_f32(v129, vdup_lane_s32(v129, 1)).u32[0];
                  v131 = fabsf(v130);
                  v132 = vmul_f32(vsub_f32(v123, v126), vrev64_s32(vsub_f32(v124, v126)));
                  LODWORD(v133) = vsub_f32(v132, vdup_lane_s32(v132, 1)).u32[0];
                  if (fabsf(v133) >= 1.4211e-14)
                  {
                    if (v133 <= 0.0)
                    {
                      if (v131 >= 1.4211e-14 && v130 <= 0.0)
                      {
                        goto LABEL_174;
                      }
                    }

                    else if (v131 >= 1.4211e-14 && v130 > 0.0)
                    {
                      goto LABEL_174;
                    }
                  }

                  else if (v131 < 1.4211e-14)
                  {
                    goto LABEL_174;
                  }

                  v134 = vsub_f32(v126, v125);
                  LODWORD(v135) = vsub_f32(vmul_lane_f32(v134, v127, 1), vmul_lane_f32(v127, v134, 1)).u32[0];
                  v136 = fabsf(v135);
                  v137 = vmul_f32(v128, v134);
                  LODWORD(v138) = vsub_f32(v137, vdup_lane_s32(v137, 1)).u32[0];
                  if (fabsf(v138) >= 1.4211e-14)
                  {
                    if (v138 <= 0.0)
                    {
                      if (v136 < 1.4211e-14 || v135 > 0.0)
                      {
LABEL_185:
                        sub_23AA0D944();
                        v139 = *(v218 + 16);
                        sub_23AA0D974();
                        sub_23AA0D984();
                        isUniquelyReferenced_nonNull_native = sub_23AA0D954();
                        goto LABEL_175;
                      }
                    }

                    else if (v136 < 1.4211e-14 || v135 <= 0.0)
                    {
                      goto LABEL_185;
                    }
                  }

                  else if (v136 >= 1.4211e-14)
                  {
                    goto LABEL_185;
                  }

LABEL_174:

LABEL_175:
                  ++v120;
                  if (v122 == v119)
                  {
                    v162 = v218;
                    a2 = v200;
                    goto LABEL_231;
                  }
                }
              }

              v162 = MEMORY[0x277D84F90];
LABEL_231:

              sub_23A912030(v162);

LABEL_130:
              ++a2;
              v95 = v217;
              continue;
            }

            MEMORY[0x23EE8FD70](v161);
            a2 = v200;
            if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v217 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v164 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_23AA0D314();
            }

            sub_23AA0D334();
          }

          goto LABEL_130;
        }

        break;
      }

LABEL_64:
      v46 = v195;
      v29 = MEMORY[0x277D84F90];
      v50 = v197;
      if (v197 == v193)
      {
        goto LABEL_266;
      }
    }
  }

  v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v195 = v46;
  if (v49)
  {
    goto LABEL_61;
  }

LABEL_266:
  swift_beginAccess();
  v15 = *v196;

  a1 = 0;
  v167 = sub_23A98E5D8(v166);

  v168 = sub_23A9F4E74(v167);

  v216 = v29;
  if ((v168 & 0xC000000000000001) != 0)
  {

    sub_23AA0D7B4();
    v15 = type metadata accessor for CDTTriangle();
    sub_23A995A94();
    sub_23AA0D424();
    v169 = v218;
    v170 = v219;
    v171 = v220;
    v172 = v221;
    v173 = v222;
  }

  else
  {
    v174 = -1 << *(v168 + 32);
    v170 = v168 + 56;
    v171 = ~v174;
    v175 = -v174;
    if (v175 < 64)
    {
      v176 = ~(-1 << v175);
    }

    else
    {
      v176 = -1;
    }

    v173 = v176 & *(v168 + 56);

    v172 = 0;
    v169 = v168;
  }

  v177 = (v171 + 64) >> 6;
  v206 = v169;
  while (2)
  {
    v178 = v172;
LABEL_275:
    if ((v169 & 0x8000000000000000) != 0)
    {
      if (!sub_23AA0D824())
      {
        goto LABEL_302;
      }

      type metadata accessor for CDTTriangle();
      swift_dynamicCast();
      a1 = v215;
      v172 = v178;
      v181 = v173;
      if (!v215)
      {
        goto LABEL_302;
      }

      goto LABEL_284;
    }

    v179 = v178;
    v180 = v173;
    v172 = v178;
    if (v173)
    {
LABEL_280:
      v181 = (v180 - 1) & v180;
      a1 = *(*(v169 + 48) + ((v172 << 9) | (8 * __clz(__rbit64(v180)))));

      if (!a1)
      {
        goto LABEL_302;
      }

LABEL_284:
      v213 = v181;
      if (v191)
      {
        v15 = sub_23AA0D7F4();
      }

      else
      {
        v15 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v182 = 0;
      while (v15 != v182)
      {
        if ((v202 & 0xC000000000000001) != 0)
        {
          v183 = MEMORY[0x23EE90360](v182, v202);
          if (__OFADD__(v182, 1))
          {
            goto LABEL_303;
          }
        }

        else
        {
          if (v182 >= *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_304;
          }

          v183 = *(v202 + 8 * v182 + 32);

          if (__OFADD__(v182, 1))
          {
LABEL_303:
            __break(1u);
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            v16 = sub_23AA0D7F4();
            goto LABEL_8;
          }
        }

        v184 = sub_23A8EDA7C(v183, 0.00000011921, a1[3]);

        ++v182;
        if (v184)
        {
          goto LABEL_274;
        }
      }

      if ((sub_23A8EDA7C(v192, 0.00000011921, a1[3]) & 1) != 0 && (a1[5].i8[0] & 1) == 0)
      {

        MEMORY[0x23EE8FD70](v185);
        if (*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v186 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        v15 = &v216;
        sub_23AA0D334();

        v169 = v206;
        v173 = v213;
        continue;
      }

LABEL_274:

      v178 = v172;
      v173 = v213;
      v169 = v206;
      goto LABEL_275;
    }

    break;
  }

  while (1)
  {
    v172 = v179 + 1;
    if (__OFADD__(v179, 1))
    {
      goto LABEL_305;
    }

    if (v172 >= v177)
    {
      break;
    }

    v180 = *(v170 + 8 * v172);
    ++v179;
    if (v180)
    {
      goto LABEL_280;
    }
  }

LABEL_302:
  sub_23A8CA904();

  v215 = sub_23A8F28D8(v187);
  sub_23A98E208(&v215);

  return v215;
}

uint64_t sub_23A990564(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6365737265746E69;
  v4 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v3 = 0x6564697374756FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656469736E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6365737265746E69;
  v8 = 0xEC0000006E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x6564697374756FLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656469736E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A990674()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A99071C()
{
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A9907B0()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A990854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A995F58();
  *a2 = result;
  return result;
}

void sub_23A990884(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x6365737265746E69;
  if (v2 != 1)
  {
    v5 = 0x6564697374756FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656469736E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23A9908E8(uint64_t a1, uint64_t a2, char a3, char a4, float a5)
{
  v8 = *(a2 + 16);
  v9 = v8[2];
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F98];
    while (1)
    {
      v12 = *&v8[v10 + 4];
      if (sub_23A8EDA7C(a1, 0.00000011921, *&v12))
      {
        if (a3)
        {
          goto LABEL_4;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v162 = v11;
        v14 = 0;
      }

      else
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_4;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v162 = v11;
        v14 = 2;
      }

      sub_23A9DA160(v14, v10, isUniquelyReferenced_nonNull_native, v12);
      v11 = v162;
LABEL_4:
      if (*&v9 == ++v10)
      {
        goto LABEL_11;
      }
    }
  }

  v11 = MEMORY[0x277D84F98];
LABEL_11:
  v15 = *(a1 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 32;
    v133 = MEMORY[0x277D84F98];
    while (1)
    {
      v19 = *(v18 + 8 * v17);
      if (sub_23A8EDA7C(a2, 0.00000011921, *&v19))
      {
        if ((a3 & 1) != 0 || sub_23A9AD3F4(v8, *&v19))
        {
          goto LABEL_14;
        }

        v20 = swift_isUniquelyReferenced_nonNull_native();
        v162 = v133;
        v21 = 0;
      }

      else
      {
        if ((a3 & 1) == 0 || sub_23A9AD3F4(v8, *&v19))
        {
          goto LABEL_14;
        }

        v20 = swift_isUniquelyReferenced_nonNull_native();
        v162 = v133;
        v21 = 2;
      }

      sub_23A9DA160(v21, v17, v20, v19);
      v133 = v162;
LABEL_14:
      if (v16 == ++v17)
      {
        goto LABEL_23;
      }
    }
  }

  v133 = MEMORY[0x277D84F98];
LABEL_23:
  v22 = *(a2 + 24);
  if (v22 >> 62)
  {
    if (v22 < 0)
    {
      v130 = *(a2 + 24);
    }

    v23 = sub_23AA0D7F4();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v132 = v11;
  v141 = a3;
  v140 = a1;
  if (v23)
  {
    v24 = 0;
    v137 = v22 & 0xFFFFFFFFFFFFFF8;
    v138 = v22 & 0xC000000000000001;
    v136 = v22 + 32;
    v25 = MEMORY[0x277D84F98];
    v157 = MEMORY[0x277D84F98];
    v26 = MEMORY[0x277D84F98];
    v27 = MEMORY[0x277D84F98];
    v134 = v23;
    v135 = v22;
    while (1)
    {
      if (v138)
      {
        MEMORY[0x23EE90360](v24, v22);
        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
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

          v129 = sub_23A9908E8(v26, a2, v27 & 1, 0, a5 * 10.0);

          return v129;
        }
      }

      else
      {
        if (v24 >= *(v137 + 16))
        {
          goto LABEL_200;
        }

        v159 = *(v136 + 8 * v24);

        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_199;
        }
      }

      v149 = v28;
      v29 = *(a1 + 24);
      if (!(v29 >> 62))
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_33;
        }

        goto LABEL_78;
      }

      v30 = sub_23AA0D7F4();
      if (v30)
      {
LABEL_33:
        v151 = v27;
        v153 = v26;
        v146 = v24;
        v26 = 0;
        v31 = v25;
        v27 = v157;
        while (1)
        {
          v157 = v27;
          v32 = v31;
          v33 = v26;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v34 = MEMORY[0x23EE90360](v33, v29);
              v26 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                goto LABEL_93;
              }
            }

            else
            {
              if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_94;
              }

              v34 = *(v29 + 8 * v33 + 32);

              v26 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                type metadata accessor for CDTPolygon();
                swift_allocObject();
                a1 = sub_23A99A810(MEMORY[0x277D84F90]);

LABEL_194:

                return a1;
              }
            }

            v27 = sub_23A946DC8(v34, 1, 0.0001, v35, v36);
            if (*(v27 + 16))
            {
              break;
            }

            ++v33;
            if (v26 == v30)
            {
              v27 = v151;
              v31 = v153;
              v25 = v32;
              goto LABEL_27;
            }
          }

          if (*(v31 + 16) && (v37 = sub_23A9EDF54(v146), (v38 & 1) != 0))
          {
            v162 = *(*(v31 + 56) + 8 * v37);
          }

          else
          {
            v162 = MEMORY[0x277D84F90];
          }

          sub_23A911F44(v39);
          v144 = v162;
          v142 = swift_isUniquelyReferenced_nonNull_native();
          v161 = v153;
          v41 = sub_23A9EDF54(v146);
          v42 = *(v153 + 16);
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_201;
          }

          if (*(v153 + 24) >= v44)
          {
            if ((v142 & 1) == 0)
            {
              v155 = v40;
              sub_23A90D2F8();
              v40 = v155;
            }
          }

          else
          {
            v154 = v40;
            sub_23A906ED4(v44, v142);
            v45 = sub_23A9EDF54(v146);
            v47 = v46 & 1;
            v40 = v154;
            if ((v154 & 1) != v47)
            {
              goto LABEL_214;
            }

            v41 = v45;
          }

          v48 = v161;
          v143 = v161;
          if (v40)
          {
            v49 = *(v161 + 7);
            v50 = *(v49 + 8 * v41);
            *(v49 + 8 * v41) = v162;
          }

          else
          {
            *&v161[8 * (v41 >> 6) + 64] |= 1 << v41;
            *(*(v48 + 6) + 8 * v41) = v146;
            *(*(v48 + 7) + 8 * v41) = v144;
            v51 = *(v48 + 2);
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (v52)
            {
              goto LABEL_204;
            }

            *(v48 + 2) = v53;
          }

          if (*(v157 + 16) && (v54 = sub_23A9EDF54(v33), (v55 & 1) != 0))
          {
            v161 = *(*(v157 + 56) + 8 * v54);
          }

          else
          {
            v161 = MEMORY[0x277D84F90];
          }

          sub_23A911F44(v27);
          v158 = v161;
          LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
          v56 = sub_23A9EDF54(v33);
          v58 = *(v151 + 16);
          v59 = (v57 & 1) == 0;
          v52 = __OFADD__(v58, v59);
          v60 = v58 + v59;
          if (v52)
          {
            goto LABEL_202;
          }

          v61 = v57;
          if (*(v151 + 24) < v60)
          {
            break;
          }

          if (v27)
          {
            goto LABEL_67;
          }

          v65 = v56;
          sub_23A90D2F8();
          v56 = v65;
          v27 = v151;
          if ((v61 & 1) == 0)
          {
LABEL_70:
            *(v27 + 8 * (v56 >> 6) + 64) |= 1 << v56;
            *(*(v27 + 48) + 8 * v56) = v33;
            *(*(v27 + 56) + 8 * v56) = v158;
            v66 = *(v27 + 16);
            v52 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v52)
            {
              goto LABEL_205;
            }

            *(v27 + 16) = v67;

            goto LABEL_72;
          }

LABEL_68:
          v63 = *(v27 + 56);
          v64 = *(v63 + 8 * v56);
          *(v63 + 8 * v56) = v161;

LABEL_72:
          v31 = v143;
          v151 = v27;
          v153 = v143;
          v157 = v27;
          v25 = v143;
          if (v26 == v30)
          {
            goto LABEL_27;
          }
        }

        sub_23A906ED4(v60, v27);
        v56 = sub_23A9EDF54(v33);
        if ((v61 & 1) != (v62 & 1))
        {
          goto LABEL_214;
        }

LABEL_67:
        v27 = v151;
        if ((v61 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }

LABEL_78:
      v31 = v26;
LABEL_27:

      v24 = v149;
      v26 = v31;
      v22 = v135;
      a1 = v140;
      a3 = v141;
      if (v149 == v134)
      {
        goto LABEL_80;
      }
    }
  }

  v25 = MEMORY[0x277D84F98];
  v157 = MEMORY[0x277D84F98];
LABEL_80:
  if ((a3 & 1) != 0 && !*(v157 + 16) && !*(v25 + 2))
  {

    return 0;
  }

  v68 = sub_23A994E70(a2, v25, v132);

  v162 = v68;
  sub_23A99543C(&v162, a5);
  v69 = sub_23A994E70(a1, v157, v133);

  v161 = v69;
  sub_23A99543C(&v161, a5);
  v70 = v162;
  v71 = *(v162 + 2);
  if (!v71)
  {
    if (!*(v161 + 2))
    {
      goto LABEL_95;
    }

    goto LABEL_194;
  }

  v26 = 0;
  v147 = v162 + 32;
  v27 = (v162 + 40);
  v156 = v162;
  while (1)
  {
    if (v26 >= *(v70 + 2))
    {
      goto LABEL_203;
    }

    v72 = *v27;
    if (*(v27 - 8))
    {
      if (*(v27 - 8) != 2)
      {
        break;
      }
    }

    v73 = sub_23AA0DBD4();

    if (v73)
    {
      goto LABEL_97;
    }

    ++v26;
    v27 += 16;
    if (v71 == v26)
    {
      goto LABEL_109;
    }
  }

LABEL_97:
  v74 = v161;
  v26 = *(v161 + 2);
  if (v26)
  {
    while (1)
    {
      v75 = *(v74 + 2);
      if (!v75)
      {
        goto LABEL_206;
      }

      v76 = *(v74 + 40);
      v77 = vsub_f32(v76, v72);
      v78 = fabsf(v77.f32[0]);
      v79 = fabsf(v77.f32[1]);
      if (v78 >= a5 || v79 >= a5)
      {
        v81 = v74[32];
        v82 = swift_isUniquelyReferenced_nonNull_native();
        if (!v82 || (v27 = *(v74 + 3), v83 = v27 >> 1, v27 >> 1 < v75 - 1))
        {
          v74 = sub_23A938F80(v82, v75, 1, v74);
          v27 = *(v74 + 3);
          v83 = v27 >> 1;
        }

        v84 = *(v74 + 2);
        memmove(v74 + 32, v74 + 48, 16 * v84 - 16);
        *(v74 + 2) = v84 - 1;
        if (v83 < v84)
        {
          v74 = sub_23A938F80((v27 > 1), v84, 1, v74);
        }

        *(v74 + 2) = v84;
        v85 = &v74[16 * v84 - 16];
        v85[4].i8[0] = v81;
        v85[5] = v76;
        v161 = v74;
        if (--v26)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_109:
  v160 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0x6564697374756FLL;
  if ((a3 & 1) == 0)
  {
    v88 = 0x656469736E69;
  }

  v139 = v88;
  v89 = 0xE600000000000000;
  if (a3)
  {
    v89 = 0xE700000000000000;
  }

  v145 = v89;
  v90 = MEMORY[0x277D84F90];
LABEL_114:
  while (2)
  {
    v91 = v86;
LABEL_115:
    v92 = 16 * v91;
    v150 = 16 * v91;
    v152 = v91;
LABEL_116:
    v86 = v91;
    v93 = v90;
    while (1)
    {
      if ((v87 & 1) == 0)
      {
        v102 = *(v156 + 2);
        if (v160 >= v102)
        {
          goto LABEL_193;
        }

        if (v160 < 0)
        {
          __break(1u);
          goto LABEL_212;
        }

        v103 = &v147[16 * v160];
        v104 = *v103;
        v105 = *(v103 + 8);
        v106 = v90[2];
        if (*&v106 && (v107 = vceq_f32(v105, v90[*&v106 + 3]), (v107.i32[0] & v107.i32[1] & 1) != 0))
        {
          LOBYTE(v27) = v141;
          v91 = v152;
        }

        else
        {
          LOBYTE(v27) = v141;
          v91 = v152;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_23A938A28(0, *&v106 + 1, 1, v90);
          }

          v109 = v90[2];
          v108 = v90[3];
          if (v109 >= v108 >> 1)
          {
            v90 = sub_23A938A28((v108 > 1), v109 + 1, 1, v90);
          }

          v90[2] = (v109 + 1);
          v90[v109 + 4] = v105;
          v102 = *(v156 + 2);
        }

        if (v160 + 1 >= v102)
        {
          v110 = 3;
          ++v160;
          if (!v104)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v110 = v147[16 * ++v160];
          if (!v104)
          {
            goto LABEL_149;
          }
        }

        if (v104 != 2)
        {

LABEL_172:
          v26 = v140;
          if (v91 >= *(v161 + 2))
          {
            goto LABEL_178;
          }

          if (v91 < 0)
          {
            goto LABEL_213;
          }

          v120 = vsub_f32(*&v161[16 * v91 + 40], v105);
          v121 = fabsf(v120.f32[0]);
          v122 = fabsf(v120.f32[1]);
          if (v121 < a5 && v122 < a5)
          {
            ++v91;
            if (v110 == 3)
            {
              goto LABEL_189;
            }
          }

          else
          {
LABEL_178:
            if (a4)
            {
              goto LABEL_207;
            }

            if (v110 == 3)
            {
LABEL_189:
              v86 = v91;
              v87 ^= 1u;
              goto LABEL_114;
            }
          }

          if (v110)
          {
            if (v110 == 1)
            {
LABEL_186:
              v126 = sub_23AA0DBD4();

              v86 = v91;
              if (v126)
              {
                goto LABEL_115;
              }

LABEL_191:
              v87 ^= 1u;
              goto LABEL_114;
            }

            v124 = 0xE700000000000000;
            v125 = 0x6564697374756FLL;
          }

          else
          {
            v124 = 0xE600000000000000;
            v125 = 0x656469736E69;
          }

          if (v125 == v139 && v124 == v145)
          {
            goto LABEL_168;
          }

          goto LABEL_186;
        }

LABEL_149:
        v111 = sub_23AA0DBD4();

        v92 = v150;
        if ((v111 & 1) == 0)
        {
          goto LABEL_116;
        }

        goto LABEL_172;
      }

      v94 = v86;
      v26 = v161;
      v95 = *(v161 + 2);
      if (v86 >= v95)
      {
        v90 = v93;
LABEL_193:
        v127 = sub_23A9937F8(v90, 0.0001);

        type metadata accessor for CDTPolygon();
        swift_allocObject();
        a1 = sub_23A99A810(v127);

        goto LABEL_194;
      }

      if (v86 < 0)
      {
        __break(1u);
        goto LABEL_199;
      }

      v96 = v161[v92 + 32];
      v97 = *&v161[v92 + 40];
      v27 = *(v93 + 2);
      if (!v27 || (v98 = vceq_f32(v97, *&v93[8 * v27 + 24]), (v98.i32[0] & v98.i32[1] & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_23A938A28(0, v27 + 1, 1, v93);
        }

        v100 = *(v93 + 2);
        v99 = *(v93 + 3);
        v27 = v100 + 1;
        if (v100 >= v99 >> 1)
        {
          v93 = sub_23A938A28((v99 > 1), v100 + 1, 1, v93);
        }

        *(v93 + 2) = v27;
        *&v93[8 * v100 + 32] = v97;
        v95 = *(v26 + 16);
      }

      v86 = v94 + 1;
      if (v94 + 1 >= v95)
      {
        break;
      }

      v101 = *(v26 + v92 + 48);
      if (v96)
      {
        goto LABEL_132;
      }

LABEL_117:
      LOBYTE(v27) = sub_23AA0DBD4();

      v92 += 16;
      if (v27)
      {
        goto LABEL_152;
      }
    }

    v101 = 3;
    if (!v96)
    {
      goto LABEL_117;
    }

LABEL_132:
    if (v96 == 2)
    {
      goto LABEL_117;
    }

LABEL_152:
    v112 = v160;
    if (v160 >= *(v156 + 2))
    {
LABEL_160:
      v160 = v112;
      if (v101 == 3)
      {
        v86 = v94 + 1;
        v90 = v93;
        v87 ^= 1u;
        continue;
      }

      if (v101)
      {
        v117 = v101 == 1;
        v91 = v94 + 1;
        if (v117)
        {
LABEL_169:
          LOBYTE(v27) = sub_23AA0DBD4();

          v90 = v93;
          if ((v27 & 1) == 0)
          {
            goto LABEL_191;
          }

          goto LABEL_115;
        }

        v118 = 0xE700000000000000;
        v119 = 0x6564697374756FLL;
      }

      else
      {
        v118 = 0xE600000000000000;
        v119 = 0x656469736E69;
        v91 = v94 + 1;
      }

      if (v119 == v139 && v118 == v145)
      {
        v90 = v93;
LABEL_168:

        goto LABEL_115;
      }

      goto LABEL_169;
    }

    break;
  }

  if ((v160 & 0x8000000000000000) == 0)
  {
    v113 = vsub_f32(*&v147[16 * v160 + 8], v97);
    v114 = fabsf(v113.f32[0]);
    v115 = fabsf(v113.f32[1]);
    if (v114 < a5 && v115 < a5)
    {
      v112 = v160 + 1;
    }

    goto LABEL_160;
  }

LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

uint64_t sub_23A991890()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_23A9918EC(unint64_t *a1, float32x2_t a2)
{
  v4 = a1[1];
  v5 = sub_23AA0DBA4();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v7 = sub_23AA0D324();
        v7[2] = (v4 / 2);
      }

      v9[0] = v7 + 4;
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_23A991C70(v9, a2, v10, a1, v6);
      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_23A991B0C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_23A991A08(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23AA0DBA4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for CDTTriangle();
        v6 = sub_23AA0D324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_23A992268(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_23A991BE0(0, v2, 1, a1);
  }

  return result;
}

void sub_23A991B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, float32x2_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_5:
    v11 = *(v8 + 8 * v6);
    v12 = vsub_f32(v11, a5);
    v13 = atan2f(v12.f32[1], v12.f32[0]);
    v14 = v10;
    v15 = v9;
    while (1)
    {
      v16 = *v15;
      v17 = vsub_f32(*v15, a5);
      if (v13 >= atan2f(v17.f32[1], v17.f32[0]))
      {
LABEL_4:
        ++v6;
        v9 += 8;
        --v10;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      *v15 = v11;
      v15[1] = v16;
      --v15;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23A991BE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      v11 = v7[3];
      v12 = (*v9)[3];
      v13 = fabsf(vsub_f32(v11, v12).f32[0]);
      v14 = vcgt_f32(v12, v11);
      if (v13 >= 0.00000011921)
      {
        if ((v14.i8[0] & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((v14.i8[4] & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23A991C70(float32x2_t **a1, float32x2_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v8 = a4[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v10 = sub_23A977E20(v10);
    }

    v86 = *(v10 + 2);
    if (v86 >= 2)
    {
      while (*a4)
      {
        v87 = *&v10[16 * v86];
        v88 = *&v10[16 * v86 + 24];
        sub_23A992850((*a4 + 8 * v87), (*a4 + 8 * *&v10[16 * v86 + 16]), (*a4 + 8 * v88), v6, a2);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v88 < v87)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v86 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v10[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        sub_23A977D94(v86 - 1);
        v86 = *(v10 + 2);
        if (v86 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v6 = *a4;
      v12 = *(*a4 + 8 * v9);
      v13 = *(*a4 + 8 * v11);
      v14 = vsub_f32(v12, a2);
      v15 = atan2f(v14.f32[1], v14.f32[0]);
      v16 = vsub_f32(v13, a2);
      v17 = atan2f(v16.f32[1], v16.f32[0]);
      v18 = v11 + 2;
      while (v8 != v18)
      {
        v19 = *(v6 + 8 * v18);
        v20 = vsub_f32(v19, a2);
        v21 = atan2f(v20.f32[1], v20.f32[0]);
        v22 = vsub_f32(v12, a2);
        ++v18;
        v12 = v19;
        if (v15 < v17 == v21 >= atan2f(v22.f32[1], v22.f32[0]))
        {
          v9 = v18 - 1;
          if (v15 >= v17)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v8;
      if (v15 >= v17)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v23 = 8 * v9 - 8;
        v24 = 8 * v11;
        v25 = v9;
        v26 = v11;
        do
        {
          if (v26 != --v25)
          {
            v28 = *a4;
            if (!*a4)
            {
              goto LABEL_123;
            }

            v27 = *(v28 + v24);
            *(v28 + v24) = *(v28 + v23);
            *(v28 + v23) = v27;
          }

          ++v26;
          v23 -= 8;
          v24 += 8;
        }

        while (v26 < v25);
        v8 = a4[1];
      }
    }

LABEL_20:
    if (v9 < v8)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < a5)
      {
        if (__OFADD__(v11, a5))
        {
          goto LABEL_118;
        }

        if (v11 + a5 < v8)
        {
          v8 = v11 + a5;
        }

        if (v8 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v8)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
    }

    v41 = *(v10 + 2);
    v40 = *(v10 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v10 = sub_23A938B2C((v40 > 1), v41 + 1, 1, v10);
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v41];
    *(v43 + 4) = v11;
    *(v43 + 5) = v9;
    v44 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v10 + 4);
          v47 = *(v10 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = &v10[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_107;
          }

          v68 = &v10[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v72 = &v10[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_71:
        if (v67)
        {
          goto LABEL_106;
        }

        v75 = &v10[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_109;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v45 - 1;
        if (v45 - 1 >= v42)
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

        v83 = *&v10[16 * v6 + 32];
        v84 = *&v10[16 * v45 + 40];
        sub_23A992850((*a4 + 8 * v83), (*a4 + 8 * *&v10[16 * v45 + 32]), (*a4 + 8 * v84), v44, a2);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v84 < v83)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v6 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v85 = &v10[16 * v6];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        sub_23A977D94(v45);
        v42 = *(v10 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v10[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = &v10[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_108;
      }

      if (v61 >= v53)
      {
        v79 = &v10[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_112;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = a4[1];
    if (v9 >= v8)
    {
      goto LABEL_88;
    }
  }

  v29 = *a4;
  v30 = v11;
  v31 = *a4 + 8 * v9 - 8;
  v90 = v30;
  v32 = (v30 - v9);
LABEL_30:
  v33 = *(v29 + 8 * v9);
  v34 = vsub_f32(v33, a2);
  v35 = atan2f(v34.f32[1], v34.f32[0]);
  v6 = v32;
  v36 = v31;
  while (1)
  {
    v37 = *v36;
    v38 = vsub_f32(*v36, a2);
    if (v35 >= atan2f(v38.f32[1], v38.f32[0]))
    {
LABEL_29:
      ++v9;
      v31 += 8;
      v32 = (v32 - 1);
      if (v9 != v8)
      {
        goto LABEL_30;
      }

      v9 = v8;
      v11 = v90;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    *v36 = v33;
    v36[1] = v37;
    --v36;
    if (__CFADD__(v6++, 1))
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
}

uint64_t sub_23A992268(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_95:
      v94 = v10;
      v86 = *(v10 + 2);
      if (v86 >= 2)
      {
        while (*a3)
        {
          v87 = *&v10[16 * v86];
          v88 = *&v10[16 * v86 + 24];
          sub_23A992A90((*a3 + 8 * v87), (*a3 + 8 * *&v10[16 * v86 + 16]), (*a3 + 8 * v88), v5);
          if (v4)
          {
          }

          if (v88 < v87)
          {
            goto LABEL_118;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23A977E20(v10);
          }

          if (v86 - 2 >= *(v10 + 2))
          {
            goto LABEL_119;
          }

          v89 = &v10[16 * v86];
          *v89 = v87;
          *(v89 + 1) = v88;
          v94 = v10;
          result = sub_23A977D94(v86 - 1);
          v10 = v94;
          v86 = *(v94 + 2);
          if (v86 <= 1)
          {
          }
        }

        goto LABEL_129;
      }
    }

LABEL_125:
    result = sub_23A977E20(v10);
    v10 = result;
    goto LABEL_95;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9++;
  if (v9 < v7)
  {
    v12 = 8 * v11;
    v13 = (*a3 + 8 * v11);
    v15 = *v13;
    v14 = v13 + 2;
    v16 = *(*(*a3 + 8 * v9) + 24);
    v17 = v15[3];
    v93 = vcgt_f32(v17, v16);
    v18 = *(&v93 | (4 * (fabsf(vsub_f32(v16, v17).f32[0]) < 0.00000011921)));
    v19 = v11 + 2;
    if (v7 > v11 + 2)
    {
      v19 = v7;
    }

    v20 = v19 - v11 - 2;
    while (v20)
    {
      v21 = *v14++;
      v22 = v21[3];
      v23 = fabsf(vsub_f32(v22, v16).f32[0]);
      v92 = vcgt_f32(v16, v22);
      --v20;
      ++v9;
      v16 = v22;
      if ((v18 & 1) != (*(&v92 | (4 * (v23 < 0.00000011921))) & 1))
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }
    }

    v9 = v19;
    if ((v18 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    if (v11 < v9)
    {
      v24 = 8 * v9 - 8;
      v25 = v9;
      v26 = v11;
      do
      {
        if (v26 != --v25)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v27 = *(v28 + v12);
          *(v28 + v12) = *(v28 + v24);
          *(v28 + v24) = v27;
        }

        ++v26;
        v24 -= 8;
        v12 += 8;
      }

      while (v26 < v25);
      v7 = a3[1];
    }
  }

LABEL_22:
  if (v9 >= v7)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_121;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_42;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_123;
  }

  if (v11 + v8 < v7)
  {
    v7 = v11 + v8;
  }

  if (v7 < v11)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v9 == v7)
  {
    goto LABEL_42;
  }

  v29 = *a3;
  v30 = *a3 + 8 * v9 - 8;
  v31 = v11 - v9;
LABEL_32:
  v32 = *(v29 + 8 * v9);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    v36 = v32[3];
    v37 = (*v34)[3];
    v38 = fabsf(vsub_f32(v36, v37).f32[0]);
    v39 = vcgt_f32(v37, v36);
    if (v38 >= 0.00000011921)
    {
      if ((v39.i8[0] & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v39.i8[4] & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!v29)
    {
      break;
    }

    *v34 = v32;
    v34[1] = v35;
    --v34;
    if (__CFADD__(v33++, 1))
    {
LABEL_31:
      ++v9;
      v30 += 8;
      --v31;
      if (v9 != v7)
      {
        goto LABEL_32;
      }

      v9 = v7;
LABEL_42:
      if (v9 < v11)
      {
        goto LABEL_120;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v5 = *(v10 + 2);
      v41 = *(v10 + 3);
      v42 = v5 + 1;
      if (v5 >= v41 >> 1)
      {
        result = sub_23A938B2C((v41 > 1), v5 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v42;
      v43 = &v10[16 * v5];
      *(v43 + 4) = v11;
      *(v43 + 5) = v9;
      v44 = *v91;
      if (!*v91)
      {
        goto LABEL_130;
      }

      if (v5)
      {
        while (1)
        {
          v45 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v46 = *(v10 + 4);
            v47 = *(v10 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_62:
            if (v49)
            {
              goto LABEL_109;
            }

            v62 = &v10[16 * v42];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_112;
            }

            v68 = &v10[16 * v45 + 32];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_116;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v45 = v42 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v72 = &v10[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_76:
          if (v67)
          {
            goto LABEL_111;
          }

          v75 = &v10[16 * v45];
          v77 = *(v75 + 4);
          v76 = *(v75 + 5);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_114;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_83:
          v5 = v45 - 1;
          if (v45 - 1 >= v42)
          {
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_127;
          }

          v83 = *&v10[16 * v5 + 32];
          v84 = *&v10[16 * v45 + 40];
          sub_23A992A90((*a3 + 8 * v83), (*a3 + 8 * *&v10[16 * v45 + 32]), (*a3 + 8 * v84), v44);
          if (v4)
          {
          }

          if (v84 < v83)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23A977E20(v10);
          }

          if (v5 >= *(v10 + 2))
          {
            goto LABEL_106;
          }

          v85 = &v10[16 * v5];
          *(v85 + 4) = v83;
          *(v85 + 5) = v84;
          v94 = v10;
          result = sub_23A977D94(v45);
          v10 = v94;
          v42 = *(v94 + 2);
          if (v42 <= 1)
          {
            goto LABEL_3;
          }
        }

        v50 = &v10[16 * v42 + 32];
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = &v10[16 * v42];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v61 >= v53)
        {
          v79 = &v10[16 * v45 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_117;
          }

          if (v48 < v82)
          {
            v45 = v42 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v7 = a3[1];
      v8 = a4;
      if (v9 >= v7)
      {
        goto LABEL_93;
      }

      goto LABEL_4;
    }
  }

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
  return result;
}

uint64_t sub_23A992850(float32x2_t *__dst, float32x2_t *__src, float32x2_t *a3, float32x2_t *a4, float32x2_t a5)
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
      v19 = *v5;
      v20 = vsub_f32(*v8, a5);
      v21 = atan2f(v20.f32[1], v20.f32[0]);
      v22 = vsub_f32(v19, a5);
      if (v21 < atan2f(v22.f32[1], v22.f32[0]))
      {
        break;
      }

      v17 = v19;
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
    v23 = v8 - 1;
    --v6;
    v24 = v16;
    do
    {
      v25 = v6 + 1;
      v26 = *(v24 - 8);
      v24 -= 8;
      v27 = v26;
      v28 = *v23;
      v29 = vsub_f32(v26, a5);
      v30 = atan2f(v29.f32[1], v29.f32[0]);
      v31 = vsub_f32(v28, a5);
      if (v30 < atan2f(v31.f32[1], v31.f32[0]))
      {
        if (v25 != v8)
        {
          *v6 = v28;
        }

        if (v16 <= v5 || (--v8, v23 <= v9))
        {
          v8 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v25 != v16)
      {
        *v6 = v27;
      }

      --v6;
      v16 = v24;
    }

    while (v24 > v5);
    v16 = v24;
  }

LABEL_35:
  if (v8 != v5 || v8 >= (v5 + ((v16 - v5 + (v16 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v5, 8 * (v16 - v5));
  }

  return 1;
}

uint64_t sub_23A992A90(float32x2_t **__src, float32x2_t **__dst, float32x2_t **a3, float32x2_t **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_27:
      v21 = v6 - 1;
      --v5;
      v22 = v14;
      do
      {
        v24 = *(v22 - 8);
        v22 -= 8;
        v23 = v24;
        v25 = v24[3];
        v26 = (*v21)[3];
        v27 = fabsf(vsub_f32(v25, v26).f32[0]);
        v28 = vcgt_f32(v26, v25);
        if (v27 >= 0.00000011921)
        {
          if (v28.i8[0])
          {
LABEL_35:
            if (v5 + 1 != v6)
            {
              *v5 = *v21;
            }

            if (v14 <= v4 || (--v6, v21 <= v7))
            {
              v6 = v21;
              goto LABEL_42;
            }

            goto LABEL_27;
          }
        }

        else if (v28.i8[4])
        {
          goto LABEL_35;
        }

        if (v5 + 1 != v14)
        {
          *v5 = v23;
        }

        --v5;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      do
      {
        v15 = *v6;
        v16 = (*v6)[3];
        v17 = (*v4)[3];
        v18 = fabsf(vsub_f32(v16, v17).f32[0]);
        v19 = vcgt_f32(v17, v16);
        if (v18 >= 0.00000011921)
        {
          if ((v19.i8[0] & 1) == 0)
          {
LABEL_13:
            v15 = *v4;
            v20 = v7 == v4++;
            if (v20)
            {
              goto LABEL_15;
            }

LABEL_14:
            *v7 = v15;
            goto LABEL_15;
          }
        }

        else if ((v19.i8[4] & 1) == 0)
        {
          goto LABEL_13;
        }

        v20 = v7 == v6++;
        if (!v20)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v7;
      }

      while (v4 < v14 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_42:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v29 >> 3));
  }

  return 1;
}

uint64_t sub_23A992CE8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v2 - 1;
    v5 = v1 + 32;
    do
    {
      v6 = *(v5 + 8 * v3);
      v7 = v3 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_23AA10FC0;
      MEMORY[0x23EE8FCA0](0x2874696E692ELL, 0xE600000000000000);
      sub_23AA0D3F4();
      MEMORY[0x23EE8FCA0](8236, 0xE200000000000000);
      sub_23AA0D3F4();
      MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
      if (v3 >= v4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 44;
      }

      if (v3 >= v4)
      {
        v10 = 0xE000000000000000;
      }

      else
      {
        v10 = 0xE100000000000000;
      }

      MEMORY[0x23EE8FCA0](v9, v10);

      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      sub_23AA0DCE4();

      v3 = v7;
    }

    while (v2 != v7);
  }

  return result;
}

uint64_t sub_23A992E6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23AA10FC0;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = 0xD000000000000027;
  *(v6 + 40) = 0x800000023AA20F00;
  sub_23AA0DCE4();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AA10FC0;
  *(v8 + 56) = v7;
  *(v8 + 32) = 123;
  *(v8 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA10FC0;
  *(v9 + 56) = v7;
  *(v9 + 32) = 0x5B206E7275746572;
  *(v9 + 40) = 0xE800000000000000;
  sub_23AA0DCE4();

  sub_23A992CE8(a1);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23AA10FC0;
  *(v10 + 56) = v7;
  *(v10 + 32) = 93;
  *(v10 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23AA10FC0;
  *(v11 + 56) = v7;
  *(v11 + 32) = 125;
  *(v11 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA10FC0;
  *(v12 + 56) = v7;
  *(v12 + 32) = 0xD000000000000025;
  *(v12 + 40) = 0x800000023AA20F30;
  sub_23AA0DCE4();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23AA10FC0;
  *(v13 + 56) = v7;
  *(v13 + 32) = 123;
  *(v13 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23AA10FC0;
  *(v14 + 56) = v7;
  *(v14 + 32) = 0x5B206E7275746572;
  *(v14 + 40) = 0xE800000000000000;
  sub_23AA0DCE4();

  if (a2)
  {
    v15 = a2;
  }

  else
  {
    type metadata accessor for CDTPolygon();
    swift_allocObject();
    v15 = sub_23A99A810(MEMORY[0x277D84F90]);
  }

  sub_23A992CE8(v15);

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA10FC0;
  *(v16 + 56) = v7;
  *(v16 + 32) = 93;
  *(v16 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23AA10FC0;
  *(v17 + 56) = v7;
  *(v17 + 32) = 125;
  *(v17 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23AA10FC0;
  *(v18 + 56) = v7;
  *(v18 + 32) = 0xD000000000000025;
  *(v18 + 40) = 0x800000023AA20F60;
  sub_23AA0DCE4();

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA10FC0;
  *(v19 + 56) = v7;
  *(v19 + 32) = 123;
  *(v19 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23AA10FC0;
  *(v20 + 56) = v7;
  *(v20 + 32) = 0x5B206E7275746572;
  *(v20 + 40) = 0xE800000000000000;
  sub_23AA0DCE4();

  if (a3 >> 62)
  {
    goto LABEL_31;
  }

  v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v21 - 1;
  if (!v21)
  {
LABEL_33:
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_23AA10FC0;
    *(v41 + 56) = v7;
    *(v41 + 32) = 93;
    *(v41 + 40) = 0xE100000000000000;
    sub_23AA0DCE4();

    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_23AA10FC0;
    *(v42 + 56) = v7;
    *(v42 + 32) = 125;
    *(v42 + 40) = 0xE100000000000000;
    sub_23AA0DCE4();
  }

  while (2)
  {
    v22 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x23EE90360](v22, a3);
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_29;
      }

LABEL_17:
      v45 = v28;
      v46 = v22;
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_23AA10FC0;
      *(v29 + 56) = v7;
      *(v29 + 32) = 91;
      *(v29 + 40) = 0xE100000000000000;
      sub_23AA0DCE4();

      v30 = *(v27 + 16);
      v31 = *(v30 + 16);
      v32 = v5;
      if (v31)
      {
        v33 = 0;
        v47 = v31 - 1;
        v34 = v30 + 32;
        do
        {
          v35 = *(v34 + 8 * v33);
          v36 = v33 + 1;
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_23AA10FC0;
          MEMORY[0x23EE8FCA0](0x2874696E692ELL, 0xE600000000000000);
          sub_23AA0D3F4();
          MEMORY[0x23EE8FCA0](8236, 0xE200000000000000);
          sub_23AA0D3F4();
          MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
          if (v33 >= v47)
          {
            v38 = 0;
          }

          else
          {
            v38 = 44;
          }

          if (v33 >= v47)
          {
            v39 = 0xE000000000000000;
          }

          else
          {
            v39 = 0xE100000000000000;
          }

          MEMORY[0x23EE8FCA0](v38, v39);

          *(v37 + 56) = MEMORY[0x277D837D0];
          *(v37 + 32) = 0;
          *(v37 + 40) = 0xE000000000000000;
          sub_23AA0DCE4();

          v33 = v36;
        }

        while (v31 != v36);
      }

      v5 = v32;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_23AA10FC0;
      if (v46 >= v44)
      {
        v24 = 0;
      }

      else
      {
        v24 = 44;
      }

      if (v46 >= v44)
      {
        v25 = 0xE000000000000000;
      }

      else
      {
        v25 = 0xE100000000000000;
      }

      MEMORY[0x23EE8FCA0](v24, v25);

      v26 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 32) = 93;
      *(v23 + 40) = 0xE100000000000000;
      sub_23AA0DCE4();

      v22 = v45;
      v7 = v26;
      if (v45 == v21)
      {
        goto LABEL_33;
      }
    }

    if (v22 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v27 = *(a3 + 32 + 8 * v22);

    v28 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      goto LABEL_17;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_23AA0D7F4();
    v44 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v21 = sub_23AA0D7F4();
      if (!v21)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

char *sub_23A99366C(uint64_t a1, double a2)
{
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  for (i = 0; v7; i = vadd_f32(i, *&a2))
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    a2 = *(*(a1 + 48) + ((v10 << 9) | (8 * v11)));
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v12 = *(a1 + 16);
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = sub_23A9EDA00(*(a1 + 16), 0);
      v14 = sub_23A9F3E9C(&v16, v13 + 4, v12, a1);

      sub_23A8CA904();
      if (v14 != v12)
      {
        __break(1u);
LABEL_14:
        v13 = MEMORY[0x277D84F90];
      }

      *&a2 = v12;
      v16 = v13;
      sub_23A98E18C(&v16, vdiv_f32(i, vdup_lane_s32(*&a2, 0)));
      return v16;
    }

    v7 = *(a1 + 56 + 8 * v10);
    ++v4;
    if (v7)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

float32x2_t *sub_23A9937F8(float32x2_t *a1, float a2)
{
  v2 = a1;
  v3 = a1[2];
  if (!*&v3)
  {
LABEL_32:

    return v2;
  }

  v5 = *&v3 - 1;
  v6 = a1[*&v3 + 3];

  v7 = *&v3 - 2;
  if (*&v3 == 1)
  {
    v7 = 0;
  }

  if (v7 >= *&v3)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = vsub_f32(v6, v2[v7 + 4]);
  v9 = fabsf(v8.f32[0]);
  v10 = fabsf(v8.f32[1]);
  if (v9 < a2 && v10 < a2)
  {
    sub_23A9852D0(*&v3 - 1);
    if (*&v3 != 1)
    {
LABEL_10:
      v2 += *&v3 + 2;
      while (!__OFSUB__(v5--, 1))
      {
        if (v5)
        {
          v13 = v5 - 1;
          if (__OFSUB__(v5, 1))
          {
            goto LABEL_31;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v13 = *&a1[2] - 1;
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }
        }

        if (v13 >= *&a1[2])
        {
          goto LABEL_28;
        }

        v14 = vsub_f32(*v2, a1[v13 + 4]);
        v15 = fabsf(v14.f32[0]);
        v16 = fabsf(v14.f32[1]);
        if (v15 < a2 && v16 < a2)
        {
          sub_23A9852D0(v5);
        }

        --v2;
        if (!v5)
        {
          return a1;
        }
      }

      goto LABEL_29;
    }
  }

  else if (*&v3 != 1)
  {
    goto LABEL_10;
  }

  return a1;
}

uint64_t sub_23A993944(unint64_t a1, uint64_t a2, char a3, double a4)
{
  v4 = a3;
  v6 = a1;
  v79 = MEMORY[0x277D84FA0];
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    LOBYTE(v74) = 1;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
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
        goto LABEL_121;
      }

      v10 = *(v7 + 32 + 8 * v9);
      v11 = v9 + 1;
      if (sub_23A8EDA7C(a2, 0.00000011921, v10))
      {
        break;
      }

      if (v4)
      {
        sub_23A9EF59C(v78, v10);
        v4 = a3;
        LOBYTE(v74) = 0;
        ++v9;
        if (v11 == v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v11 == v8)
        {
LABEL_18:
          LOBYTE(v74) = 0;
          goto LABEL_20;
        }

        while (1)
        {
          if (v9 + 1 >= *(v7 + 16))
          {
            goto LABEL_116;
          }

          v10 = *(v7 + 40 + 8 * v9);
          if (sub_23A8EDA7C(a2, 0.00000011921, v10))
          {
            break;
          }

          if (v8 - 1 == ++v9)
          {
            goto LABEL_18;
          }
        }

        LOBYTE(v74) = 0;
        v9 += 2;
        if ((v4 & 1) == 0)
        {
LABEL_7:
          sub_23A9EF59C(v78, v10);
          v4 = a3;
        }

LABEL_3:
        if (v9 == v8)
        {
          goto LABEL_20;
        }
      }
    }

    ++v9;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  LOBYTE(v74) = 1;
LABEL_20:
  v12 = *(a2 + 16);
  v13 = *(v12 + 16);
  if (!v13)
  {
    LOBYTE(v15) = 1;
LABEL_104:
    if (v4)
    {
      if (v74)
      {
        goto LABEL_115;
      }

      if (v15)
      {
        goto LABEL_109;
      }
    }

    else
    {
      if (v74)
      {
LABEL_109:

        return v6;
      }

LABEL_111:
      if (v15)
      {
        goto LABEL_115;
      }
    }

LABEL_38:
    v18 = *(v6 + 24);
    v65 = v18;
    if (v18 >> 62)
    {
      goto LABEL_122;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_40:
      v6 = *(a2 + 24);
      v64 = v19;
      if (!(v6 >> 62))
      {
        v69 = v6 & 0xFFFFFFFFFFFFFF8;
        v72 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_42;
      }

LABEL_126:
      v69 = v6 & 0xFFFFFFFFFFFFFF8;
      v60 = sub_23AA0D7F4();
      v18 = v65;
      v72 = v60;
LABEL_42:
      v20 = 0;
      v66 = v18 & 0xC000000000000001;
      v62 = v18 + 32;
      v63 = v18 & 0xFFFFFFFFFFFFFF8;
      v70 = v6;
      v71 = v6 & 0xC000000000000001;
      v68 = v6 + 32;
      do
      {
        if (v66)
        {
          v21 = v20;
          MEMORY[0x23EE90360]();
          v22 = __OFADD__(v21, 1);
          a2 = v21 + 1;
          if (v22)
          {
            goto LABEL_120;
          }
        }

        else
        {
          if (v20 >= *(v63 + 16))
          {
            __break(1u);
            goto LABEL_126;
          }

          v23 = v20;
          v73 = *(v62 + 8 * v20);

          v22 = __OFADD__(v23, 1);
          a2 = v23 + 1;
          if (v22)
          {
            goto LABEL_120;
          }
        }

        v67 = a2;
        if (v72)
        {
          v24 = 0;
          while (1)
          {
            if (v71)
            {
              v25 = MEMORY[0x23EE90360](v24, v6);
              v22 = __OFADD__(v24++, 1);
              if (v22)
              {
                goto LABEL_118;
              }
            }

            else
            {
              if (v24 >= *(v69 + 16))
              {
                goto LABEL_119;
              }

              v25 = *(v68 + 8 * v24);

              v22 = __OFADD__(v24++, 1);
              if (v22)
              {
                goto LABEL_118;
              }
            }

            v28 = sub_23A946DC8(v25, 1, 0.0001, v26, v27);
            a2 = v28;
            v29 = *(v28 + 16);
            if (v29)
            {
              break;
            }

LABEL_53:
            if (v24 == v72)
            {
              goto LABEL_43;
            }
          }

          v74 = v24;
          v15 = 0;
          v75 = v28 + 32;
          v30 = v79;
          while (2)
          {
            if (v15 >= *(a2 + 16))
            {
              __break(1u);
              goto LABEL_111;
            }

            v77 = *(v75 + 8 * v15);
            v35 = *(v30 + 40);
            sub_23AA0DD14();
            sub_23AA0DD44();
            sub_23AA0DD44();
            v36 = sub_23AA0DD54();
            v37 = v30 + 56;
            v38 = -1 << *(v30 + 32);
            v6 = v36 & ~v38;
            if ((*(v30 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
            {
              v39 = ~v38;
              while (1)
              {
                a4 = COERCE_DOUBLE(vceq_f32(*(*(v30 + 48) + 8 * v6), v77));
                if (LOBYTE(a4) & 1) != 0 && (BYTE4(a4))
                {
                  break;
                }

                v6 = (v6 + 1) & v39;
                if (((*(v37 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                {
                  goto LABEL_75;
                }
              }

LABEL_67:
              if (++v15 == v29)
              {
                v79 = v30;

                v6 = v70;
                v24 = v74;
                goto LABEL_53;
              }

              continue;
            }

            break;
          }

LABEL_75:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = *(v30 + 16);
          if (*(v30 + 24) <= v41)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_23A9F07EC(v41 + 1);
            }

            else
            {
              sub_23A9F3020(v41 + 1);
            }

            v31 = v30;
            v42 = *(v30 + 40);
            sub_23AA0DD14();
            sub_23AA0DD44();
            sub_23AA0DD44();
            v43 = sub_23AA0DD54();
            v44 = -1 << *(v30 + 32);
            v6 = v43 & ~v44;
            if ((*(v30 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
            {
              v45 = ~v44;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
              v32 = v77;
              while (1)
              {
                a4 = COERCE_DOUBLE(vceq_f32(*(*(v30 + 48) + 8 * v6), v77));
                if (LOBYTE(a4) & 1) != 0 && (BYTE4(a4))
                {
                  break;
                }

                v6 = (v6 + 1) & v45;
                if (((*(v30 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                {
                  goto LABEL_65;
                }
              }

              result = sub_23AA0DC14();
              __break(1u);
              return result;
            }

            goto LABEL_64;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = v30;
            goto LABEL_64;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0658, &qword_23AA19358);
          v46 = sub_23AA0D854();
          v31 = v46;
          if (!*(v30 + 16))
          {
LABEL_101:

LABEL_64:
            v32 = v77;
LABEL_65:
            *(v31 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
            *(*(v31 + 48) + 8 * v6) = v32;
            v33 = *(v31 + 16);
            v22 = __OFADD__(v33, 1);
            v34 = v33 + 1;
            if (v22)
            {
              __break(1u);
              goto LABEL_114;
            }

            *(v31 + 16) = v34;
            v30 = v31;
            goto LABEL_67;
          }

          v47 = (v46 + 56);
          v48 = ((1 << *(v31 + 32)) + 63) >> 6;
          if (v31 != v30 || v47 >= v37 + 8 * v48)
          {
            memmove(v47, (v30 + 56), 8 * v48);
          }

          v49 = 0;
          *(v31 + 16) = *(v30 + 16);
          v50 = 1 << *(v30 + 32);
          if (v50 < 64)
          {
            v51 = ~(-1 << v50);
          }

          else
          {
            v51 = -1;
          }

          v52 = v51 & *(v30 + 56);
          for (i = (v50 + 63) >> 6; v52; *(*(v31 + 48) + 8 * v55) = *(*(v30 + 48) + 8 * v55))
          {
            v54 = __clz(__rbit64(v52));
            v52 &= v52 - 1;
            v55 = v54 | (v49 << 6);
LABEL_99:
            ;
          }

          v56 = v49;
          while (1)
          {
            v49 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              break;
            }

            if (v49 >= i)
            {
              goto LABEL_101;
            }

            v57 = *(v37 + 8 * v49);
            ++v56;
            if (v57)
            {
              v52 = (v57 - 1) & v57;
              v55 = __clz(__rbit64(v57)) | (v49 << 6);
              goto LABEL_99;
            }
          }

LABEL_121:
          __break(1u);
LABEL_122:
          v19 = sub_23AA0D7F4();
          v18 = v65;
          if (!v19)
          {
            break;
          }

          goto LABEL_40;
        }

LABEL_43:

        v20 = v67;
      }

      while (v67 != v64);
    }

    v58 = sub_23A99366C(v79, a4);

    v59 = sub_23A9937F8(v58, 0.0001);

    type metadata accessor for CDTPolygon();
    swift_allocObject();
    return sub_23A99A810(v59);
  }

  v14 = 0;
  LOBYTE(v15) = 1;
  do
  {
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_117;
      }

      v16 = *(v12 + 32 + 8 * v14);
      v17 = v14 + 1;
      if (sub_23A8EDA7C(v6, 0.00000011921, v16))
      {
        ++v14;
        if ((v4 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (v4)
      {
        break;
      }

      if (v17 == v13)
      {
LABEL_37:
        if (v74)
        {
          goto LABEL_109;
        }

        goto LABEL_38;
      }

      while (1)
      {
        if (v14 + 1 >= *(v12 + 16))
        {
          goto LABEL_117;
        }

        v16 = *(v12 + 40 + 8 * v14);
        if (sub_23A8EDA7C(v6, 0.00000011921, v16))
        {
          break;
        }

        if (v13 - 1 == ++v14)
        {
          goto LABEL_37;
        }
      }

      LOBYTE(v15) = 0;
      v14 += 2;
      if ((v4 & 1) == 0)
      {
LABEL_26:
        sub_23A9EF59C(v78, v16);
        v4 = a3;
      }

LABEL_22:
      if (v14 == v13)
      {
        goto LABEL_104;
      }
    }

    sub_23A9EF59C(v78, v16);
    v4 = a3;
    LOBYTE(v15) = 0;
    ++v14;
  }

  while (v17 != v13);
LABEL_114:
  if ((v74 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_115:

  return a2;
}

uint64_t sub_23A9941A4(float32x2_t *__dst, float32x2_t *__src, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5)
{
  v6 = a4;
  v7 = a3;
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

    v16 = &v6[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      v19 = a5[2];
      v20 = vsub_f32(a5[3], v19);
      v21 = vmul_f32(vsub_f32(*v8, v19), v20);
      v22 = vmul_f32(vsub_f32(*v6, v19), v20);
      v23 = vadd_f32(vzip1_s32(v21, v22), vzip2_s32(v21, v22));
      if (vcgt_f32(vdup_lane_s32(v23, 1), v23).u8[0])
      {
        break;
      }

      v17 = *v6;
      v18 = v9 == v6++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      if (v6 >= v16)
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

  v16 = &v6[v15];
  if (v13 >= 8 && v8 > v9)
  {
LABEL_24:
    v24 = v8 - 1;
    --v7;
    v25 = v16;
    do
    {
      v26 = v7 + 1;
      v27 = *(v25 - 8);
      v25 -= 8;
      v28 = v27;
      v29 = a5[2];
      v30 = vsub_f32(a5[3], v29);
      v31 = vmul_f32(vsub_f32(v27, v29), v30);
      v32 = vmul_f32(vsub_f32(*v24, v29), v30);
      v33 = vadd_f32(vzip1_s32(v31, v32), vzip2_s32(v31, v32));
      if (vcgt_f32(vdup_lane_s32(v33, 1), v33).u8[0])
      {
        if (v26 != v8)
        {
          *v7 = *v24;
        }

        if (v16 <= v6 || (--v8, v24 <= v9))
        {
          v8 = v24;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v26 != v16)
      {
        *v7 = v28;
      }

      --v7;
      v16 = v25;
    }

    while (v25 > v6);
    v16 = v25;
  }

LABEL_35:
  v34 = v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0);
  if (v8 != v6 || v8 >= (v6 + (v34 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v6, 8 * (v34 >> 3));
  }

  return 1;
}

uint64_t sub_23A994404(char **a1, float32x2_t *a2, uint64_t *a3, float32x2_t *a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_23A977E20(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_23A9941A4(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9945AC(float32x2_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, float32x2_t *a5)
{
  v6 = v5;
  v9 = a3[1];
  v112 = MEMORY[0x277D84F90];
  if (v9 >= 1)
  {
    swift_retain_n();
    v11 = 0;
    v108 = a5;
    v109 = MEMORY[0x277D84F90];
    v104 = a1;
    v105 = a4;
    while (1)
    {
      v12 = v11 + 1;
      if (v11 + 1 >= v9)
      {
        goto LABEL_21;
      }

      if (v6)
      {
        goto LABEL_96;
      }

      v13 = *(*a3 + 8 * v12);
      v14 = a5[2];
      v15 = vsub_f32(a5[3], v14);
      v16 = vmul_f32(vsub_f32(v13, v14), v15);
      v17 = vmul_f32(vsub_f32(*(*a3 + 8 * v11), v14), v15);
      v18 = vadd_f32(vzip1_s32(v16, v17), vzip2_s32(v16, v17));
      v19 = vcgt_f32(vdup_lane_s32(v18, 1), v18);
      v20 = v11 + 2;
      do
      {
        if (v9 == v20)
        {
          v12 = v9;
          if ((v19.i8[0] & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_13;
        }

        v21 = *(*a3 + 8 * v20);
        v22 = vmul_f32(v15, vsub_f32(v21, v14));
        v23 = vmul_f32(v15, vsub_f32(v13, v14));
        v24 = vadd_f32(vzip1_s32(v22, v23), vzip2_s32(v22, v23));
        v25 = vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(v24, 1), v24), v19)).u8[0];
        ++v20;
        v13 = v21;
      }

      while ((v25 & 1) != 0);
      v12 = v20 - 1;
      if ((v19.i8[0] & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v12 < v11)
      {
        goto LABEL_118;
      }

      v26 = v12;
      if (v11 < v12)
      {
        v27 = 8 * v12 - 8;
        v28 = 8 * v11;
        v29 = v11;
        do
        {
          if (v29 != --v26)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_121;
            }

            v31 = *(v30 + v28);
            *(v30 + v28) = *(v30 + v27);
            *(v30 + v27) = v31;
          }

          ++v29;
          v27 -= 8;
          v28 += 8;
        }

        while (v29 < v26);
        v9 = a3[1];
      }

LABEL_21:
      v32 = v12;
      if (v12 >= v9)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v12, v11))
      {
        goto LABEL_115;
      }

      if (v12 - v11 >= a4)
      {
        v33 = v12;
        if (v12 < v11)
        {
          goto LABEL_114;
        }

        goto LABEL_41;
      }

      v32 = v11 + a4;
      if (__OFADD__(v11, a4))
      {
        goto LABEL_116;
      }

      if (v32 >= v9)
      {
        v32 = v9;
      }

      if (v32 < v11)
      {
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
        return result;
      }

      v33 = v12;
      if (v12 != v32)
      {
        break;
      }

LABEL_38:
      if (v33 < v11)
      {
        goto LABEL_114;
      }

LABEL_41:
      v47 = v109;
      v111 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_23A938B2C(0, *(v109 + 2) + 1, 1, v109);
      }

      v48 = v47;
      v49 = *(v47 + 2);
      v109 = v48;
      v50 = *(v48 + 3);
      v51 = v49 + 1;
      v106 = v33;
      if (v49 >= v50 >> 1)
      {
        v109 = sub_23A938B2C((v50 > 1), v49 + 1, 1, v109);
      }

      *(v109 + 2) = v51;
      v52 = v109 + 32;
      v53 = &v109[16 * v49 + 32];
      *v53 = v11;
      *(v53 + 1) = v106;
      v112 = v109;
      v107 = *a1;
      if (!*a1)
      {
        goto LABEL_122;
      }

      if (v49)
      {
        v54 = v109;
        while (1)
        {
          v55 = v51 - 1;
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v56 = *(v54 + 4);
            v57 = *(v54 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_61:
            if (v59)
            {
              goto LABEL_105;
            }

            v72 = &v54[16 * v51];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_108;
            }

            v78 = &v52[16 * v55];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_112;
            }

            if (v76 + v81 >= v58)
            {
              if (v58 < v81)
              {
                v55 = v51 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v82 = &v54[16 * v51];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_75:
          if (v77)
          {
            goto LABEL_107;
          }

          v85 = &v52[16 * v55];
          v87 = *v85;
          v86 = *(v85 + 1);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_110;
          }

          if (v88 < v76)
          {
            goto LABEL_3;
          }

LABEL_82:
          if (v55 - 1 >= v51)
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
            goto LABEL_117;
          }

          v93 = *a3;
          if (!*a3)
          {
            goto LABEL_120;
          }

          v94 = &v52[16 * v55 - 16];
          v95 = *v94;
          v96 = &v52[16 * v55];
          v97 = *(v96 + 1);
          v98 = (v93 + 8 * *v94);
          v99 = (v93 + 8 * *v96);
          v100 = (v93 + 8 * v97);

          sub_23A9941A4(v98, v99, v100, v107, v108);
          if (v111)
          {

            goto LABEL_96;
          }

          if (v97 < v95)
          {
            goto LABEL_100;
          }

          v54 = v109;
          v101 = *(v109 + 2);
          if (v55 > v101)
          {
            goto LABEL_101;
          }

          *v94 = v95;
          *(v94 + 1) = v97;
          if (v55 >= v101)
          {
            goto LABEL_102;
          }

          v111 = 0;
          v51 = v101 - 1;
          memmove(&v52[16 * v55], v96 + 16, 16 * (v101 - 1 - v55));
          *(v109 + 2) = v101 - 1;
          if (v101 <= 2)
          {
LABEL_3:
            v112 = v54;
            a1 = v104;
            goto LABEL_4;
          }
        }

        v60 = &v52[16 * v51];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_103;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_104;
        }

        v67 = &v54[16 * v51];
        v69 = *v67;
        v68 = *(v67 + 1);
        v66 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v66)
        {
          goto LABEL_106;
        }

        v66 = __OFADD__(v58, v70);
        v71 = v58 + v70;
        if (v66)
        {
          goto LABEL_109;
        }

        if (v71 >= v63)
        {
          v89 = &v52[16 * v55];
          v91 = *v89;
          v90 = *(v89 + 1);
          v66 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v66)
          {
            goto LABEL_113;
          }

          if (v58 < v92)
          {
            v55 = v51 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_4:
      v6 = v111;
      v9 = a3[1];
      a4 = v105;
      v11 = v106;
      a5 = v108;
      if (v106 >= v9)
      {
        goto LABEL_93;
      }
    }

    v34 = *a3;
    v35 = a5[2];
    v36 = vsub_f32(a5[3], v35);
    v37 = *a3 + 8 * v12 - 8;
    v38 = v11 - v12;
    do
    {
      v39 = *(v34 + 8 * v33);
      v40 = vmul_f32(v36, vsub_f32(v39, v35));
      v41 = vadd_f32(v40, vdup_lane_s32(v40, 1));
      v42 = v38;
      v43 = v37;
      do
      {
        v44 = *v43;
        v45 = vmul_f32(v36, vsub_f32(*v43, v35));
        if ((vcgt_f32(vadd_f32(v45, vdup_lane_s32(v45, 1)), v41).u8[0] & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          goto LABEL_119;
        }

        *v43 = v39;
        v43[1] = v44;
        --v43;
      }

      while (!__CFADD__(v42++, 1));
      ++v33;
      v37 += 8;
      --v38;
    }

    while (v33 != v32);
LABEL_37:
    v33 = v32;
    goto LABEL_38;
  }

  swift_retain_n();
LABEL_93:
  v102 = *a1;
  if (!*a1)
  {
    goto LABEL_123;
  }

  sub_23A994404(&v112, v102, a3, a5);
  if (v6)
  {

LABEL_96:
  }

  else
  {
  }
}

uint64_t sub_23A994BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, float32x2_t *a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = a5[2];
    v7 = vsub_f32(a5[3], v6);
    v8 = *a4 + 8 * a3 - 8;
    v9 = result - a3;
LABEL_5:
    v10 = *(v5 + 8 * a3);
    v11 = vmul_f32(v7, vsub_f32(v10, v6));
    v12 = vadd_f32(v11, vdup_lane_s32(v11, 1));
    v13 = v9;
    v14 = v8;
    while (1)
    {
      v15 = *v14;
      v16 = vmul_f32(v7, vsub_f32(*v14, v6));
      if ((vcgt_f32(vadd_f32(v16, vdup_lane_s32(v16, 1)), v12).u8[0] & 1) == 0)
      {
LABEL_4:
        ++a3;
        v8 += 8;
        --v9;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      *v14 = v10;
      v14[1] = v15;
      --v14;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23A994C74(uint64_t *a1, float32x2_t *a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_23AA0DBA4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v8 = sub_23AA0D324();
        v8[2] = v7;
      }

      v9[0] = v8 + 4;
      v9[1] = v7;

      sub_23A9945AC(v9, v10, a1, v6, a2);

      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_23A994BE4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_23A994DCC(char **a1, float32x2_t *a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23A977E34(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_23A994C74(v7, a2);

  *a1 = v4;
}

char *sub_23A994E70(uint64_t a1, char *a2, char *a3)
{
  v5 = *(a1 + 24);
  if (v5 >> 62)
  {
    goto LABEL_69;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v61 = v5 & 0xFFFFFFFFFFFFFF8;
    v62 = v5 & 0xC000000000000001;
    v58 = v5;
    v59 = v6;
    v60 = (v5 + 32);
    while (1)
    {
      if (v62)
      {
        v65 = MEMORY[0x23EE90360](v8, v58);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v8 >= *(v61 + 16))
        {
          goto LABEL_63;
        }

        v65 = *&v60[8 * v8];

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
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
          v6 = sub_23AA0D7F4();
          goto LABEL_3;
        }
      }

      v63 = v9;
      if (*(a3 + 2))
      {
        v10 = sub_23A9EDF54(v8);
        if (v11)
        {
          v12 = *(a3 + 7) + 16 * v10;
          v13 = *v12;
          v14 = *(v12 + 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_23A938F80(0, *(v7 + 2) + 1, 1, v7);
          }

          v16 = *(v7 + 2);
          v15 = *(v7 + 3);
          if (v16 >= v15 >> 1)
          {
            v7 = sub_23A938F80((v15 > 1), v16 + 1, 1, v7);
          }

          *(v7 + 2) = v16 + 1;
          v17 = &v7[16 * v16];
          v17[32] = v13;
          *(v17 + 5) = v14;
        }
      }

      v64 = v7;
      if (*(a2 + 2))
      {
        v18 = sub_23A9EDF54(v8);
        if (v19)
        {
          v20 = *(a2 + 7);
          v21 = *(v20 + 8 * v18);
          v5 = *(v21 + 16);
          if (v5)
          {
            break;
          }
        }
      }

      v24 = MEMORY[0x277D84FA0];
      v32 = *(MEMORY[0x277D84FA0] + 16);
      if (!v32)
      {
        goto LABEL_36;
      }

LABEL_31:
      v33 = a2;
      v34 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
      v35 = swift_allocObject();
      v36 = _swift_stdlib_malloc_size(v35);
      v37 = v36 - 32;
      if (v36 < 32)
      {
        v37 = v36 - 25;
      }

      v35[2] = v32;
      v35[3] = 2 * (v37 >> 3);
      v67 = sub_23A9F3E9C(v68, v35 + 4, v32, v24);
      v5 = v68[1];
      a2 = v68[3];
      a3 = v68[4];

      sub_23A8CA904();
      if (v67 != v32)
      {
        goto LABEL_66;
      }

      a3 = v34;
      a2 = v33;
LABEL_37:
      v68[0] = v35;

      sub_23A994DCC(v68, v65);

      v38 = v68[0];
      v39 = *(v68[0] + 2);
      if (v39)
      {
        v68[0] = MEMORY[0x277D84F90];
        sub_23A975E84(0, v39, 0);
        v40 = v68[0];
        v41 = *(v68[0] + 2);
        v42 = 16 * v41;
        v43 = 32;
        do
        {
          v44 = *&v38[v43];
          v68[0] = v40;
          v45 = *(v40 + 3);
          v46 = v41 + 1;
          if (v41 >= v45 >> 1)
          {
            sub_23A975E84((v45 > 1), v41 + 1, 1);
            v40 = v68[0];
          }

          *(v40 + 2) = v46;
          v47 = &v40[v42];
          v47[32] = 1;
          *(v47 + 5) = v44;
          v42 += 16;
          v43 += 8;
          v41 = v46;
          --v39;
        }

        while (v39);
      }

      else
      {

        v40 = MEMORY[0x277D84F90];
      }

      v5 = *(v40 + 2);
      v7 = v64;
      v48 = *(v64 + 2);
      v49 = (v48 + v5);
      if (__OFADD__(v48, v5))
      {
        goto LABEL_64;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v51 = *(v64 + 3) >> 1, v51 >= v49))
      {
        if (*(v40 + 2))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v52 = v48 + v5;
        }

        else
        {
          v52 = v48;
        }

        v7 = sub_23A938F80(isUniquelyReferenced_nonNull_native, v52, 1, v64);
        v51 = *(v7 + 3) >> 1;
        if (*(v40 + 2))
        {
LABEL_53:
          v53 = *(v7 + 2);
          if (v51 - v53 < v5)
          {
            goto LABEL_67;
          }

          memcpy(&v7[16 * v53 + 32], v40 + 32, 16 * v5);

          if (v5)
          {
            v54 = *(v7 + 2);
            v55 = __OFADD__(v54, v5);
            v56 = (v54 + v5);
            if (v55)
            {
              goto LABEL_68;
            }

            *(v7 + 2) = v56;
          }

          goto LABEL_6;
        }
      }

      if (v5)
      {
        goto LABEL_65;
      }

LABEL_6:

      v8 = v63;
      if (v63 == v59)
      {
        return v7;
      }
    }

    v22 = *(v20 + 8 * v18);

    v23 = 0;
    v24 = MEMORY[0x277D84FA0];
    do
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v66 = *(v21 + 32 + 8 * v23);
      v26 = *(v24 + 5);
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      v27 = sub_23AA0DD54();
      v28 = -1 << v24[32];
      v29 = v27 & ~v28;
      if ((*&v24[((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = vceq_f32(*(*(v24 + 6) + 8 * v29), v66);
          if (v31.i8[0] & 1) != 0 && (v31.i8[4])
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*&v24[((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v29) & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v68[0] = v24;
        sub_23A9F19DC(v29, v25, v66);
        v24 = v68[0];
      }

      ++v23;
    }

    while (v23 != v5);

    v32 = *(v24 + 2);
    if (v32)
    {
      goto LABEL_31;
    }

LABEL_36:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  return v7;
}

uint64_t sub_23A99543C(uint64_t result, float a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = *result;

  v7 = 0;
  v8 = 0;
  v9 = (v2 + 16 * v3 + 24);
  v24 = v2;
  while (1)
  {
    if (!v7)
    {
      v8 = *(v2 + 16);
    }

    if (__OFSUB__(v8--, 1))
    {
      break;
    }

    if (v3 > *(v2 + 16))
    {
      goto LABEL_31;
    }

    v11 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_32;
    }

    v12 = *v5;
    v13 = *(*v5 + 16);
    if ((v11 & 0x8000000000000000) != 0)
    {
      if (!v13)
      {
        goto LABEL_33;
      }

      v11 = v13 - 1;
    }

    if (v11 >= v13)
    {
      goto LABEL_34;
    }

    v14 = (v12 + 16 * v11);
    v15 = v14[5];
    v16 = vsub_f32(*v9, v15);
    v17 = fabsf(v16.f32[0]);
    v18 = fabsf(v16.f32[1]);
    if (v17 < a2 && v18 < a2)
    {
      v20 = v14[4].u8[0];
      if (!v9[-1].i8[0] || v9[-1].i8[0] != 1)
      {
        v21 = sub_23AA0DBD4();

        v2 = v24;
        if (v21)
        {
          goto LABEL_24;
        }

        if (v20 == 1)
        {
          goto LABEL_23;
        }

        v23 = sub_23AA0DBD4();

        v2 = v24;
        if (v23)
        {
LABEL_24:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_23A975C60(v12);
            v12 = result;
          }

          if (v11 >= *(v12 + 16))
          {
            __break(1u);
            return result;
          }

          v22 = (v12 + 16 * v11);
          v22[4].i8[0] = 1;
          v22[5] = v15;
          *v5 = v12;
        }

        sub_23A985358(v8);
        goto LABEL_4;
      }

LABEL_23:

      goto LABEL_24;
    }

LABEL_4:
    v9 -= 2;
    ++v7;
    if (!--v3)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
}

uint64_t sub_23A9956C8(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
  }

  v4 = a1 + 32;

  v5 = 0;
  v6 = v2;
  v7 = v2;
  while (1)
  {
    if (v6 == v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = v5;
    }

    if (v6 == v2)
    {
      v7 = v2;
    }

    v5 = v8 - 1;
    if (v8 < 1)
    {
      break;
    }

    --v6;
    if (v8 != 1)
    {
      v9 = 0;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          goto LABEL_22;
        }

        v11 = vsub_f32(*(v4 + 8 * v6), *(v4 + 8 * v9));
        v12 = fabsf(v11.f32[0]);
        v13 = fabsf(v11.f32[1]);
        if (v12 < a2 && v13 < a2)
        {
          sub_23A9852D0(v5);
          goto LABEL_4;
        }

        ++v9;
        if (v10 == v5)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      break;
    }

LABEL_4:
    if (!v6)
    {
      return a1;
    }
  }

  __break(1u);
  return a1;
}

uint64_t sub_23A9957B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(DelaunayPoint) initWithValue_];
      sub_23AA0D944();
      v6 = *(v23 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      --v1;
    }

    while (v1);
  }

  v7 = [objc_opt_self() shared];
  sub_23A8D6C58(0, &qword_27DFB0660, off_278B64630);
  v8 = sub_23AA0D2E4();

  v9 = [v7 computeTriangulation_];

  sub_23A8D6C58(0, &qword_27DFB0668, off_278B64638);
  v10 = sub_23AA0D2F4();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v11 = sub_23AA0D7F4();
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  v24 = v2;
  result = sub_23AA0D964();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23EE90360](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      [v14 first];
      v17 = v16;
      [v15 second];
      v19 = v18;
      [v15 third];
      v21 = v20;
      type metadata accessor for CDTTriangle();
      swift_allocObject();
      sub_23A9C34F8(v17, v19, v21, 0.001);

      sub_23AA0D944();
      v22 = *(v24 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
    }

    while (v11 != v13);

    return v24;
  }

  return result;
}