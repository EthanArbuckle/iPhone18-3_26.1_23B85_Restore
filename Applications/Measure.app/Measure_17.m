_BYTE *sub_100167594(_BYTE *result)
{
  if (!*result)
  {
    goto LABEL_6;
  }

  if (!*(*result + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result[224])
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void *sub_10016760C(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1].i64[0];
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    sub_1000A2570(0, v4, 0);
    result = _swiftEmptyArrayStorage;
    v7 = a1 + 2;
    v8 = *a3;
    while (v8)
    {
      if (!v8[1].i64[0])
      {
        __break(1u);
        break;
      }

      if (*(a3 + 224))
      {
        goto LABEL_12;
      }

      v9 = *v7;
      v10 = *(a3 + 208);
      v11.i64[0] = v10;
      v11.i64[1] = *(a3 + 216);
      v12 = v8[2];
      v20 = result;
      v14 = result[2];
      v13 = result[3];
      if (v14 >= v13 >> 1)
      {
        v18 = v11;
        v19 = *v7;
        v17 = v8[2];
        sub_1000A2570((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v11 = v18;
        v9 = v19;
        result = v20;
      }

      v15 = vmulq_f32(vsubq_f32(v9, v12), v11);
      v15.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
      v16 = vmuls_lane_f32(v15.f32[0], v11, 2);
      v11.i32[0] = v10;
      *v15.f32 = vsub_f32(*v9.f32, vmul_n_f32(*v11.f32, v15.f32[0]));
      v15.f32[2] = v9.f32[2] - v16;
      v15.i32[3] = 0;
      result[2] = v14 + 1;
      *&result[2 * v14 + 4] = v15;
      ++v7;
      if (!--v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_100167764(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  *(&v46[1] + 8) = 0u;
  *(v46 + 8) = 0u;
  v46[2].i8[8] = 1;
  v46[3].i64[0] = _swiftEmptyArrayStorage;
  v46[3].i64[1] = _swiftEmptyArrayStorage;
  v46[4].i64[0] = _swiftEmptyArrayStorage;
  sub_10014952C(v50);
  memcpy(&v46[44], v50, 0x130uLL);
  memcpy(&v46[63], v50, 0x130uLL);
  v46[82].i16[0] = 0;
  v46[83].i64[0] = 0;
  *(v46[82].i64 + 4) = 0;
  v46[83].i8[8] = 1;
  v50[316] = 1;
  memset(&v46[84], 0, 76);
  v46[88].i8[12] = 1;
  v46[89].i64[0] = 0;
  v46[89].i8[8] = 0;
  v9 = v5[10].i8[8];
  if (*(v6 + 168))
  {
    if (v5[10].i8[8])
    {

      sub_1001494D8(v6);
      sub_1001494D8(v5);
LABEL_27:
      memcpy(__src, &v46[44], 0x130uLL);
      sub_100018F04(__src, &qword_1004AA300);
      memcpy(__dst, &v46[63], 0x130uLL);
      sub_100018F04(__dst, &qword_1004AA300);
      sub_100167EF4(v49);
LABEL_28:
      memcpy(v8, v49, 0x599uLL);
      return;
    }
  }

  else
  {
    if (*(v6 + 160) != *v5[10].i64)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      sub_1001494D8(v5);
      sub_1001494D8(v6);

      goto LABEL_27;
    }
  }

  if (*(v6 + 128))
  {
    goto LABEL_47;
  }

  if (v5[8].i8[0])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (*(v6 + 232))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v5[14].i8[8])
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v10 = vsubq_f32(*(v6 + 112), v5[7]);
  v11 = vmulq_f32(v10, v10);
  if ((*(v6 + 228) + v5[14].f32[1]) < sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)))
  {

    sub_1001494D8(v5);
    sub_1001494D8(v6);
    goto LABEL_27;
  }

  v40 = *(v6 + 112);
  v46[0].i64[0] = v3;
  if (v3)
  {
    v12 = v3;
    [v12 frame];
    v14 = v13;
    v16 = v15;
    [v12 frame];
    static CGSize.* infix(_:_:)();
    v46[0].i64[1] = v14;
    v46[1].i64[0] = v16;
    v46[1].i64[1] = v17;
    v46[2].i64[0] = v18;
    v46[2].i8[8] = 0;
  }

  v47 = *v6;
  v19 = v47;
  memcpy(&v46[5], v6, 0x130uLL);
  memcpy(&v46[24], v5, 0x130uLL);
  if (!v47)
  {
    goto LABEL_51;
  }

  v20 = v5->i64[0];
  sub_1000C1C28(v6, v49);
  sub_1000C1C28(v6, v49);
  sub_1000C1C28(v5, v49);
  sub_100167E84(&v47, v49);
  v21 = sub_10016760C(v19, v46, v6);
  sub_1001494D8(v6);
  sub_100018F04(&v47, &qword_1004AB4B0);
  v46[43].i64[0] = v21;
  if (!v20)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v41 = *(v6 + 208);
  v22 = *(v6 + 224);

  sub_1001494D8(v5);
  sub_1000C1C28(v6, v49);
  v23 = sub_10016760C(v20, v46, v6);
  sub_1001494D8(v6);
  sub_1001494D8(v6);

  v46[43].i64[1] = v23;
  if (v22)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v5[14].i8[0])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v24 = vmulq_f32(v41, v5[13]);
  v24.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
  v46[82].i8[9] = v24.f32[0] >= 0.8;
  if (v24.f32[0] < 0.8)
  {

    memcpy(__dst, &v46[5], 0x130uLL);
    sub_1001494D8(__dst);
    memcpy(v49, &v46[24], 0x130uLL);
    sub_1001494D8(v49);

    goto LABEL_27;
  }

  memcpy(v48, &v46[5], sizeof(v48));
  sub_100167594(v48);
  v26 = vsubq_f32(v40, v25);
  v27 = vmulq_f32(v26, v26);
  v46[82].i8[0] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) < 0.05;
  sub_100166664();
  if ((v46[17].i8[1] & 1) == 0 && !v46[36].i8[1])
  {
    if ((v46[8].i8[0] & 1) == 0)
    {
      if ((v46[27].i8[0] & 1) == 0)
      {
        v28 = vmulq_f32(v46[7], v46[26]);
        v29 = v28.f32[2] + vaddv_f32(*v28.f32);

LABEL_36:
        v39 = v29 >= 0.8;
        v46[82].i8[8] = v29 >= 0.8;
        if ((v46[82].i8[1] & 1) != 0 || v29 < 0.8)
        {
          v46[82].i8[11] = 0;
          v39 = v46[82].i8[0];
          if (v29 < 0.8)
          {
            v39 = 0;
          }
        }

        else
        {
          v46[82].i8[11] = v46[82].i8[0];
          if (v46[82].i8[0])
          {
            v46[83].i64[0] = 4;
            v46[83].i8[8] = 0;
          }

          else
          {
            v39 = 0;
          }
        }

        v46[89].i8[8] = v46[82].i8[1] & v39;
        memcpy(v43, v46, 0x599uLL);
        memcpy(__src, v46, 0x599uLL);
        nullsub_1(__src);
        memcpy(__dst, v46, 0x599uLL);
        sub_100167EFC(v43, v49);
        sub_10014AA0C(__dst);
        memcpy(v49, __src, 0x599uLL);
        goto LABEL_28;
      }

      goto LABEL_57;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v46[6].i64[1])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v30 = *(v46[6].i64[1] + 16);
  if (!v30)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v46[27].i8[0] & 1) == 0)
  {
    if (v30 != 1)
    {
      v31 = *(v46[6].i64[1] + 32);
      v32 = *(v46[6].i64[1] + 48);
      v33 = vmulq_f32(v31, v31);
      v34 = vaddv_f32(*v33.f32);
      *v33.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34));
      *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34), vmul_f32(*v33.f32, *v33.f32)));
      v35 = vmulq_f32(vmulq_n_f32(v31, vmul_f32(*v33.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34), vmul_f32(*v33.f32, *v33.f32))).f32[0]), v46[26]);
      v36 = vmulq_f32(v32, v32);
      *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
      *v36.f32 = vrsqrte_f32(v37);
      *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
      v38 = vmulq_f32(vmulq_n_f32(v32, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]), v46[26]);
      v42 = vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v38, v38, 8uLL)), vadd_f32(vzip1_s32(*v35.i8, *v38.i8), vzip2_s32(*v35.i8, *v38.i8)));

      if (v42.f32[0] > v42.f32[1])
      {
        v29 = v42.f32[0];
      }

      else
      {
        v29 = v42.f32[1];
      }

      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_58:
  __break(1u);
}

uint64_t sub_100167E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004AB4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100167F34(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100167F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1433))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100167FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1432) = 0;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1433) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 1433) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100168174(uint64_t a1, int a2)
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

uint64_t sub_1001681BC(uint64_t result, int a2, int a3)
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

uint64_t sub_100168218(uint64_t a1)
{
  [*(v1 + 40) setState:a1];
  v64 = v1;
  v3 = *(v1 + 32);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v69 = a1;
  v11 = a1 - 1;
  v12 = &OBJC_IVAR____TtC7Measure11PointRender_state;
  v67 = v3;
  while (v7)
  {
    if (v11 > 8)
    {
LABEL_11:
      v13 = 1;
    }

    else
    {
LABEL_6:
      v13 = qword_1003DFAF0[v11];
    }

    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = *(*(v3 + 56) + 8 * (v15 | (v10 << 6)));
    v17 = *&v16[*v12];
    *&v16[*v12] = v13;
    if (v13 != v17)
    {
      v18 = v12;

      v19 = v16;
      sub_100133D20(v13);

      v12 = v18;
      v3 = v67;
    }
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      if (v11 <= 8)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  v20 = *(v64 + 8);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v24 = 1 << *(*(v64 + 8) + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v65 = *(v64 + 8);

  v28 = 0;
  v68 = v11;
  while (v26)
  {
    if (v11 > 8)
    {
LABEL_25:
      v29 = 1;
    }

    else
    {
LABEL_20:
      v29 = qword_1003DFAF0[v11];
    }

    v31 = *(*(v65 + 56) + 8 * (__clz(__rbit64(v26)) | (v28 << 6)));
    v32 = OBJC_IVAR____TtC7Measure10LineRender_state;
    v33 = *&v31[OBJC_IVAR____TtC7Measure10LineRender_state];
    *&v31[OBJC_IVAR____TtC7Measure10LineRender_state] = v29;
    if (v33 == v29)
    {

      v34 = v31;
    }

    else
    {
      v35 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
      v36 = v31[OBJC_IVAR____TtC7Measure10LineRender__needsRendering];

      v37 = v31;
      if (v36 != 1)
      {
        v38 = v37;
        v39 = sub_1000D2184();
        os_unfair_lock_lock(v39);
        v31[v35] = 1;
        os_unfair_lock_unlock(*&v38[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
        v29 = *&v31[v32];
      }
    }

    *&v31[v32] = v69;
    if (v29 != v69)
    {
      v40 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
      if (v31[OBJC_IVAR____TtC7Measure10LineRender__needsRendering] != 1)
      {
        v41 = sub_1000D2184();
        os_unfair_lock_lock(v41);
        v31[v40] = 1;
        os_unfair_lock_unlock(*&v31[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
      }
    }

    v26 &= v26 - 1;
    sub_1000D34CC();

    v11 = v68;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      v42 = *(v64 + 16);
      v45 = *(v42 + 64);
      v44 = v42 + 64;
      v43 = v45;
      v46 = 1 << *(*(v64 + 16) + 32);
      v47 = -1;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      v48 = v47 & v43;
      v49 = (v46 + 63) >> 6;
      v66 = *(v64 + 16);

      v50 = 0;
      while (v48)
      {
        if (v11 >= 9)
        {
LABEL_44:
          v51 = 1;
        }

        else
        {
LABEL_39:
          v51 = qword_1003DFAF0[v11];
        }

        v53 = *(*(v66 + 56) + 8 * (__clz(__rbit64(v48)) | (v50 << 6)));
        v54 = OBJC_IVAR____TtC7Measure10LineRender_state;
        v55 = *&v53[OBJC_IVAR____TtC7Measure10LineRender_state];
        *&v53[OBJC_IVAR____TtC7Measure10LineRender_state] = v51;
        if (v55 == v51)
        {

          v56 = v53;
        }

        else
        {
          v57 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
          v58 = v53[OBJC_IVAR____TtC7Measure10LineRender__needsRendering];

          v59 = v53;
          if (v58 != 1)
          {
            v60 = v59;
            v61 = sub_1000D2184();
            os_unfair_lock_lock(v61);
            v53[v57] = 1;
            os_unfair_lock_unlock(*&v60[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
            v51 = *&v53[v54];
          }
        }

        *&v53[v54] = v69;
        if (v51 != v69)
        {
          v62 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
          if (v53[OBJC_IVAR____TtC7Measure10LineRender__needsRendering] != 1)
          {
            v63 = sub_1000D2184();
            os_unfair_lock_lock(v63);
            v53[v62] = 1;
            os_unfair_lock_unlock(*&v53[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
          }
        }

        v48 &= v48 - 1;
        sub_1000D34CC();

        v11 = v68;
      }

      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_57;
        }

        if (v52 >= v49)
        {
        }

        v48 = *(v44 + 8 * v52);
        ++v50;
        if (v48)
        {
          v50 = v52;
          if (v11 < 9)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }
      }
    }

    v26 = *(v22 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      if (v11 <= 8)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1001686E0(void *a1)
{
  v3 = v1[5];
  [v3 worldTransform];
  [v3 removeFromParentNode];
  [a1 addChildNode:v3];
  [v3 setTransform:&v39];
  v4 = v1[4];
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = *(*(v4 + 56) + 8 * (v12 | (v11 << 6)));

      v14 = v13;
      [v14 worldTransform];
      [v14 removeFromParentNode];
      [a1 addChildNode:v14];
      v35 = v39;
      v36 = v40;
      v37 = v41;
      v38 = v42;
      [v14 setTransform:&v35];

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v15 = v1[1];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  for (i = 0; v18; result = )
  {
    v21 = i;
LABEL_19:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v15 + 56) + 8 * (v22 | (v21 << 6)));

    v24 = v23;
    [v24 worldTransform];
    [v24 removeFromParentNode];
    [a1 addChildNode:v24];
    v35 = v39;
    v36 = v40;
    v37 = v41;
    v38 = v42;
    [v24 setTransform:&v35];
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v25 = v1[2];
      v26 = 1 << *(v25 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & *(v25 + 64);
      v29 = (v26 + 63) >> 6;

      for (j = 0; v28; result = )
      {
        v31 = j;
LABEL_29:
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = *(*(v25 + 56) + 8 * (v32 | (v31 << 6)));

        v34 = v33;
        [v34 worldTransform];
        [v34 removeFromParentNode];
        [a1 addChildNode:v34];
        v35 = v39;
        v36 = v40;
        v37 = v41;
        v38 = v42;
        [v34 setTransform:&v35];
      }

      while (1)
      {
        v31 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_34;
        }

        if (v31 >= v29)
        {
        }

        v28 = *(v25 + 64 + 8 * v31);
        ++j;
        if (v28)
        {
          j = v31;
          goto LABEL_29;
        }
      }
    }

    v18 = *(v15 + 64 + 8 * v21);
    ++i;
    if (v18)
    {
      i = v21;
      goto LABEL_19;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_100168AB4()
{
  v1 = v0;
  v2 = v0[5];
  v3 = [v2 parentNode];
  if (v3)
  {
    v4 = v3;
    SCNNode.removeAllChildren()();
  }

  [*&v2[OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill] removeFromParentNode];
  [v2 removeFromParentNode];
  v5 = v1[4];
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_11:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = [*(*(v5 + 56) + ((v12 << 9) | (8 * v13))) removeFromParentNode];
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  v1[4] = _swiftEmptyDictionarySingleton;
  v14 = v1[1];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;

  for (i = 0; v17; result = [*(*(v14 + 56) + ((v20 << 9) | (8 * v21))) removeFromParentNode])
  {
    v20 = i;
LABEL_21:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      v1[1] = _swiftEmptyDictionarySingleton;
      v22 = v1[2];
      v23 = 1 << *(v22 + 32);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & *(v22 + 64);
      v26 = (v23 + 63) >> 6;

      for (j = 0; v25; result = [*(*(v22 + 56) + ((v28 << 9) | (8 * v29))) removeFromParentNode])
      {
        v28 = j;
LABEL_31:
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
      }

      while (1)
      {
        v28 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_36;
        }

        if (v28 >= v26)
        {

          v1[2] = _swiftEmptyDictionarySingleton;
          return result;
        }

        v25 = *(v22 + 64 + 8 * v28);
        ++j;
        if (v25)
        {
          j = v28;
          goto LABEL_31;
        }
      }
    }

    v17 = *(v14 + 64 + 8 * v20);
    ++i;
    if (v17)
    {
      i = v20;
      goto LABEL_21;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100168D60(void *a1)
{
  v2 = v1;
  sub_100018630(0, &qword_1004AE0D0);
  v4 = *(v1 + 40);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10016979C;
    *(v6 + 24) = v5;
    v74 = sub_100169674;
    v75 = v6;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_1001696A0;
    v73 = &unk_100470288;
    v7 = _Block_copy(&aBlock);
    v69 = a1;

    v8 = [v4 childNodesPassingTest:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_63;
    }

    sub_100018630(0, &qword_1004A1318);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      goto LABEL_64;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (i == 1)
      {
        break;
      }

      v12 = *(v2 + 16);
      v63 = v2;
      v64 = v12 + 64;
      v13 = 1 << *(v12 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v12 + 64);
      v2 = (v13 + 63) >> 6;
      v66 = v12;

      v16 = 0;
      while (v15)
      {
        v17 = v69;
LABEL_16:
        v19 = *(*(v66 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        if (static NSObject.== infix(_:_:)())
        {
LABEL_54:

LABEL_56:

          return 1;
        }

        v20 = swift_allocObject();
        *(v20 + 16) = v17;
        v21 = v17;
        v22 = swift_allocObject();
        *(v22 + 16) = sub_100169704;
        *(v22 + 24) = v20;
        v74 = sub_100169774;
        v75 = v22;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_1001696A0;
        v73 = &unk_100470300;
        v23 = _Block_copy(&aBlock);
        v24 = v21;

        v25 = [v19 childNodesPassingTest:v23];
        _Block_release(v23);
        LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

        if (v23)
        {
          goto LABEL_61;
        }

        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v26 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 &= v15 - 1;

        if (v27 == 1)
        {
          goto LABEL_56;
        }
      }

      v17 = v69;
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v18 >= v2)
        {
          break;
        }

        v15 = *(v64 + 8 * v18);
        ++v16;
        if (v15)
        {
          v16 = v18;
          goto LABEL_16;
        }
      }

      v28 = *(v63 + 8);
      v29 = *(v28 + 64);
      v65 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & v29;
      v2 = (v30 + 63) >> 6;
      v67 = *(v63 + 8);

      v33 = 0;
      while (v32)
      {
LABEL_31:
        v19 = *(*(v67 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
        if (static NSObject.== infix(_:_:)())
        {
          goto LABEL_54;
        }

        v35 = swift_allocObject();
        *(v35 + 16) = v17;
        v36 = v17;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_10016979C;
        *(v37 + 24) = v35;
        v74 = sub_100169774;
        v75 = v37;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_1001696A0;
        v73 = &unk_100470378;
        v38 = _Block_copy(&aBlock);
        v39 = v36;

        v40 = [v19 childNodesPassingTest:v38];
        _Block_release(v38);
        LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

        if (v38)
        {
          goto LABEL_62;
        }

        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v41 >> 62)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 &= v32 - 1;

        v17 = v69;
        if (v42 == 1)
        {
          goto LABEL_56;
        }
      }

      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v2)
        {

          v43 = *(v63 + 32);
          v45 = *(v43 + 64);
          v2 = v43 + 64;
          v44 = v45;
          v46 = 1 << *(*(v63 + 32) + 32);
          v47 = -1;
          if (v46 < 64)
          {
            v47 = ~(-1 << v46);
          }

          v48 = v47 & v44;
          v49 = (v46 + 63) >> 6;
          v68 = *(v63 + 32);

          v50 = 0;
          while (v48)
          {
LABEL_46:
            v52 = *(*(v68 + 56) + ((v50 << 9) | (8 * __clz(__rbit64(v48)))));
            if (static NSObject.== infix(_:_:)())
            {

              goto LABEL_56;
            }

            v53 = swift_allocObject();
            *(v53 + 16) = v17;
            v54 = swift_allocObject();
            *(v54 + 16) = sub_10016979C;
            *(v54 + 24) = v53;
            v74 = sub_100169774;
            v75 = v54;
            aBlock = _NSConcreteStackBlock;
            v71 = 1107296256;
            v72 = sub_1001696A0;
            v73 = &unk_1004703F0;
            v55 = _Block_copy(&aBlock);
            v56 = v17;
            v57 = v55;
            v58 = v56;

            v59 = [v52 childNodesPassingTest:v57];
            _Block_release(v57);
            LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

            if (v57)
            {
              __break(1u);
              return result;
            }

            v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v61 >> 62)
            {
              v62 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v17 = v69;
            v48 &= v48 - 1;

            if (v62 == 1)
            {
              goto LABEL_56;
            }
          }

          while (1)
          {
            v51 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_60;
            }

            if (v51 >= v49)
            {

              return 0;
            }

            v48 = *(v2 + 8 * v51);
            ++v50;
            if (v48)
            {
              v50 = v51;
              goto LABEL_46;
            }
          }
        }

        v32 = *(v65 + 8 * v34);
        ++v33;
        if (v32)
        {
          v33 = v34;
          goto LABEL_31;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      ;
    }
  }

  return 1;
}

uint64_t sub_10016963C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001696A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1001696EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001697A0(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_10016C050(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_100169894(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_10016C26C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100169988(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v40 = a2;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    v16 = *&v15[OBJC_IVAR____TtC7Measure11PointRender_point];

    v42 = v15;
    [v16 position];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a2;
    v43 = *a2;
    *a2 = 0x8000000000000000;
    v25 = sub_100198230(v14, v13);
    v27 = *(v24 + 16);
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_23;
    }

    v31 = v26;
    if (*(v24 + 24) < v30)
    {
      sub_1000B9738(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_100198230(v14, v13);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v33 = v43;
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v38 = v25;
    sub_1000BF470();
    v25 = v38;
    v33 = v43;
    if (v31)
    {
LABEL_4:
      v9 = (v33[7] + 12 * v25);
      *v9 = v18;
      v9[1] = v20;
      v9[2] = v22;
      goto LABEL_5;
    }

LABEL_17:
    v33[(v25 >> 6) + 8] |= 1 << v25;
    v34 = (v33[6] + 16 * v25);
    *v34 = v14;
    v34[1] = v13;
    v35 = (v33[7] + 12 * v25);
    *v35 = v18;
    v35[1] = v20;
    v35[2] = v22;
    v36 = v33[2];
    v29 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v29)
    {
      goto LABEL_24;
    }

    v33[2] = v37;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v40;
    *v40 = v33;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100169C0C(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v45 = a2;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);

    v47 = v15;
    SCNVector3.init(_:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    SCNVector3.init(_:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a2;
    v48 = *a2;
    *a2 = 0x8000000000000000;
    v30 = sub_100198230(v14, v13);
    v32 = *(v29 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_23;
    }

    v36 = v31;
    if (*(v29 + 24) < v35)
    {
      sub_1000B99F4(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_100198230(v14, v13);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v38 = v48;
      if (v36)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v43 = v30;
    sub_1000BF5F0();
    v30 = v43;
    v38 = v48;
    if (v36)
    {
LABEL_4:
      v9 = (v38[7] + 24 * v30);
      *v9 = v17;
      v9[1] = v19;
      v9[2] = v21;
      v9[3] = v23;
      v9[4] = v25;
      v9[5] = v27;
      goto LABEL_5;
    }

LABEL_17:
    v38[(v30 >> 6) + 8] |= 1 << v30;
    v39 = (v38[6] + 16 * v30);
    *v39 = v14;
    v39[1] = v13;
    v40 = (v38[7] + 24 * v30);
    *v40 = v17;
    v40[1] = v19;
    v40[2] = v21;
    v40[3] = v23;
    v40[4] = v25;
    v40[5] = v27;
    v41 = v38[2];
    v34 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v34)
    {
      goto LABEL_24;
    }

    v38[2] = v42;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v45;
    *v45 = v38;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100169EB8()
{
  sub_10000F974(&qword_1004A7558);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5730;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 0;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v3;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  sub_10019AC90(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004A7560);
  swift_arrayDestroy();
  v54 = v0;
  v4 = *(v0 + 56);
  SCNVector3.init(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  SCNVector3.init(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  LODWORD(v18) = v6;
  LODWORD(v19) = v8;
  LODWORD(v20) = v10;
  LODWORD(v21) = v12;
  LODWORD(v22) = v14;
  LODWORD(v23) = v16;
  v24 = [v4 hitTestWithSegmentFromPoint:isa toPoint:v18 options:{v19, v20, v21, v22, v23}];

  sub_100018630(0, &qword_1004AB4C8);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_26:

    return 0;
  }

LABEL_25:
  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
    goto LABEL_26;
  }

LABEL_3:
  v53 = v25 & 0xC000000000000001;
  swift_beginAccess();
  v27 = 0;
  v49 = v25 + 32;
  v50 = v25 & 0xFFFFFFFFFFFFFF8;
  v51 = v26;
  v52 = v25;
  while (1)
  {
    if (v53)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *(v50 + 16))
      {
        goto LABEL_24;
      }

      v28 = *(v49 + 8 * v27);
    }

    v58 = v28;
    v29 = __OFADD__(v27, 1);
    v30 = v27 + 1;
    if (v29)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v55 = v30;
    v31 = *(v54 + 24);
    v34 = *(v31 + 64);
    v33 = v31 + 64;
    v32 = v34;
    v35 = 1 << *(*(v54 + 24) + 32);
    v36 = v35 < 64 ? ~(-1 << v35) : -1;
    v37 = v36 & v32;
    v38 = (v35 + 63) >> 6;
    v57 = *(v54 + 24);

    v39 = 0;
    if (v37)
    {
      break;
    }

    while (1)
    {
LABEL_15:
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v40 >= v38)
      {
        break;
      }

      v37 = *(v33 + 8 * v40);
      ++v39;
      if (v37)
      {
        goto LABEL_18;
      }
    }

    v25 = v52;
    v27 = v55;
    if (v55 == v51)
    {
      goto LABEL_26;
    }
  }

  while (1)
  {
    v40 = v39;
LABEL_18:
    v41 = __clz(__rbit64(v37)) | (v40 << 6);
    v56 = *(*(v57 + 48) + 16 * v41);
    v42 = *(v57 + 56) + 48 * v41;
    v43 = *(v42 + 16);
    v60 = *v42;
    v61 = v43;
    v62 = *(v42 + 32);
    v44 = *(v42 + 40);
    v63 = *(&v60 + 1);
    v64 = v43;
    v45 = *(&v62 + 1);
    v65[0] = v62;

    sub_10006C92C(&v63, v59, &qword_1004AC010);
    sub_10006C92C(&v64, v59, &qword_1004AC010);
    sub_10006C92C(&v64 + 8, v59, &qword_1004AC008);
    sub_10006C92C(v65, v59, &qword_1004AC018);
    v46 = v45;
    v47 = [v58 node];
    v25 = sub_100168D60(v47);

    if (v25)
    {
      break;
    }

    v37 &= v37 - 1;

    v39 = v40;
    if (!v37)
    {
      goto LABEL_15;
    }
  }

  sub_100018F04(&v63, &qword_1004AC010);
  sub_100018F04(&v64, &qword_1004AC010);
  sub_100018F04(&v64 + 8, &qword_1004AC008);
  sub_100018F04(v65, &qword_1004AC018);

  return v56;
}

void sub_10016A400(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 24);
  if (!*(v8 + 16) || (v9 = sub_100198230(a2, a3), (v10 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v11 = (*(v8 + 56) + 48 * v9);
  v12 = v11[1];
  v34 = *v11;
  v35 = v12;
  v36 = v11[2];
  v38 = *(&v34 + 1);
  v39 = v12;
  v13 = *(&v36 + 1);
  v40[0] = v36;
  swift_endAccess();
  if (v34 == a1)
  {
    sub_10006C92C(&v38, v37, &qword_1004AC010);
    sub_10006C92C(&v39, v37, &qword_1004AC010);
    sub_10006C92C(&v39 + 8, v37, &qword_1004AC008);
    sub_10006C92C(v40, v37, &qword_1004AC018);
    v14 = *(&v36 + 1);
  }

  else
  {
    sub_10006C92C(&v38, v37, &qword_1004AC010);
    sub_10006C92C(&v39, v37, &qword_1004AC010);
    sub_10006C92C(&v39 + 8, v37, &qword_1004AC008);
    sub_10006C92C(v40, v37, &qword_1004AC018);
    v15 = qword_1004A0238;
    v16 = *(&v36 + 1);
    if (v15 != -1)
    {
      swift_once();
    }

    v37[0]._countAndFlagsBits = 0;
    v37[0]._object = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v37[0]._countAndFlagsBits = 0x636552646C726F57;
    v37[0]._object = 0xEF20656C676E6174;
    v17._countAndFlagsBits = a2;
    v17._object = a3;
    String.append(_:)(v17);
    v18._object = 0x800000010040A390;
    v18._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v18);
    v19._countAndFlagsBits = MeasureObjectState.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 544175136;
    v20._object = 0xE400000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = MeasureObjectState.description.getter();
    String.append(_:)(v21);

    Log.default(_:isPrivate:)(v37[0], 0);
  }

  swift_beginAccess();
  v23 = sub_10016B69C(v33, a2, a3);
  object = v22->_object;
  if (object)
  {
    if (v22->_countAndFlagsBits != a1)
    {
      v37[0]._countAndFlagsBits = v22->_countAndFlagsBits;
      v37[0]._object = object;
      v25 = v22[2];
      v37[1] = v22[1];
      v37[2] = v25;
      v26 = v22;
      sub_100168218(a1);
      v22 = v26;
    }

    v22->_countAndFlagsBits = a1;
    (v23)(v33, 0);
  }

  else
  {
    (v23)(v33, 0);
  }

  swift_endAccess();
  v27 = [v13 state];
  if (v27 == 6)
  {
    v28 = *(v4 + 56);
    v29 = [v13 parentNode];
    if (!v29)
    {
LABEL_20:
      sub_1001686E0(v28);
      goto LABEL_21;
    }
  }

  else
  {
    if (v27 != 5)
    {
      goto LABEL_21;
    }

    v28 = *(v4 + 64);
    v29 = [v13 parentNode];
    if (!v29)
    {
      goto LABEL_20;
    }
  }

  v30 = v29;
  sub_100018630(0, &qword_1004A1318);
  v31 = v28;
  v32 = static NSObject.== infix(_:_:)();

  if ((v32 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  sub_100018F04(&v38, &qword_1004AC010);
  sub_100018F04(&v39, &qword_1004AC010);
  sub_100018F04(&v39 + 8, &qword_1004AC008);
  sub_100018F04(v40, &qword_1004AC018);
}

uint64_t sub_10016A890(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*((swift_isaMask & *a1) + 0xB8))();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v3 + 24);
  if (!*(v11 + 16))
  {

    return swift_endAccess();
  }

  v12 = sub_100198230(v8, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    return swift_endAccess();
  }

  v45 = a2;
  v46 = a3;
  v15 = (*(v11 + 56) + 48 * v12);
  v16 = v15[1];
  v52 = *v15;
  v53 = v4;
  v17 = v15[2];
  v19 = v15[4];
  v18 = v15[5];
  v66[0] = v15[3];
  v49 = v66[0];
  swift_endAccess();
  v20 = objc_opt_self();

  sub_10006C92C(v66, &aBlock, &qword_1004AC008);

  v48 = v18;
  [v20 begin];
  v51 = v20;
  [v20 setAnimationDuration:0.0];
  v58 = swift_allocObject();
  *(v58 + 16) = _swiftEmptyDictionarySingleton;

  sub_100169988(v21, (v58 + 16));

  v57 = swift_allocObject();
  *(v57 + 16) = _swiftEmptyDictionarySingleton;
  v22 = *((swift_isaMask & *a1) + 0x230);
  v23 = v22();
  sub_1001697A0(v23, (v57 + 16));

  v56 = swift_allocObject();
  *(v56 + 16) = _swiftEmptyDictionarySingleton;

  sub_100169C0C(v24, (v56 + 16));

  v55 = swift_allocObject();
  *(v55 + 16) = _swiftEmptyDictionarySingleton;
  v25 = v22();
  sub_100169894(v25, (v55 + 16));

  v54 = swift_allocObject();
  *(v54 + 16) = _swiftEmptyDictionarySingleton;
  v26 = v17;

  sub_100169C0C(v27, (v54 + 16));

  v28 = swift_allocObject();
  *(v28 + 16) = _swiftEmptyDictionarySingleton;
  v29 = (*((swift_isaMask & *a1) + 0x248))();
  sub_100169894(v29, (v28 + 16));

  v47 = objc_opt_self();
  v30 = swift_allocObject();
  v30[2] = v58;
  v30[3] = v56;
  v30[4] = v54;
  v30[5] = 0x3FE0000000000000;
  v30[6] = a1;
  v30[7] = v57;
  v30[8] = v52;
  v30[9] = v16;
  v30[10] = v26;
  v30[11] = v49;
  v30[12] = v19;
  v30[13] = v48;
  v30[14] = v55;
  v30[15] = v28;
  v64 = sub_10016DF88;
  v65 = v30;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_1000D1C58;
  v63 = &unk_1004704B8;
  v50 = _Block_copy(&aBlock);

  sub_10006C92C(v66, v59, &qword_1004AC008);

  v31 = v48;

  v32 = a1;

  v33 = [v47 customActionWithDuration:v50 actionBlock:0.5];
  _Block_release(v50);
  v34 = (*((swift_isaMask & *v32) + 0xD0))();
  v35 = 1.0;
  if (v34 == 5)
  {
    v35 = 3.0;
  }

  [v33 setSpeed:v35];
  [v33 setTimingMode:1];
  v36 = *(v53 + 56);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 actionForKey:v37];

  if (!v38 || (v38, v34 == 5))
  {
    v39 = v34 == 5;
    v40 = String._bridgeToObjectiveC()();
    v41 = swift_allocObject();
    *(v41 + 16) = v45;
    *(v41 + 24) = v46;
    *(v41 + 32) = v39;
    *(v41 + 40) = v32;
    *(v41 + 48) = v53;
    v64 = sub_10016E02C;
    v65 = v41;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100041180;
    v63 = &unk_100470508;
    v42 = _Block_copy(&aBlock);
    v43 = v32;
    sub_100038EBC(v45);

    [v36 runAction:v33 forKey:v40 completionHandler:v42];
    _Block_release(v42);
  }

  [v51 commit];

  sub_100018F04(v66, &qword_1004AC008);
}

unint64_t sub_10016AFDC(void *a1)
{
  v2 = v1;
  v3 = &swift_isaMask;
  v4 = *((swift_isaMask & *a1) + 0x230);
  result = v4();
  v6 = result;
  if (result >> 62)
  {
LABEL_26:
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v2;
  v43 = v4;
  if (v7)
  {
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = (*((*v3 & *v10) + 0x250))();
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v13 = *(v12 + 32);
        }

        v14 = v13;

        v4 = v3;
        v16 = (*((*v3 & *v14) + 0xB8))(v15);
        v18 = v17;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100067C24(0, *(v9 + 2) + 1, 1, v9);
        }

        v2 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v2 >= v19 >> 1)
        {
          v9 = sub_100067C24((v19 > 1), v2 + 1, 1, v9);
        }

        ++v8;

        *(v9 + 2) = v2 + 1;
        v20 = &v9[16 * v2];
        *(v20 + 4) = v16;
        *(v20 + 5) = v18;
        v3 = v4;
        if (v7 == v8)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_20:

  v22 = *((*v3 & *a1) + 0x260);
  (v22)(__src, v21);
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_10012B5C4(__dst);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v55 = __dst[0];
  sub_10006C92C(&v55, v53, &qword_1004AB4B0);
  result = sub_100018F04(__src, &qword_1004AA300);
  v23 = v55;
  if (!v55)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = type metadata accessor for RectangleFill();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC7Measure13RectangleFill_state] = 1;
  *&v25[OBJC_IVAR____TtC7Measure13RectangleFill_currentPoints] = 0;
  v26 = OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill;
  *&v25[v26] = [objc_allocWithZone(SCNNode) init];
  v50.receiver = v25;
  v50.super_class = v24;
  v27 = objc_msgSendSuper2(&v50, "init");
  *&v27[OBJC_IVAR____TtC7Measure13RectangleFill_state] = 1;
  sub_100165EA8(v23);
  sub_100018F04(&v55, &qword_1004AB4B0);
  v28 = v27;
  v22(v52);
  memcpy(v53, v52, sizeof(v53));
  result = sub_10012B5C4(v53);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = v53[8];
  result = sub_100018F04(v52, &qword_1004AA300);
  if ((v29 & 1) == 0)
  {
    SCNVector3.init(_:)();
    [v28 setPosition:?];

    v30 = objc_opt_self();
    [v30 begin];
    [v30 setAnimationDuration:0.0];
    v31 = *(v44 + 56);
    SCNNode.removeAllChildren()();
    v48 = _swiftEmptyDictionarySingleton;
    v49 = _swiftEmptyDictionarySingleton;
    v47 = _swiftEmptyDictionarySingleton;
    v32 = v43();

    sub_10016E064(v32, v44, &v49, &v48);

    v34 = (*((swift_isaMask & *a1) + 0x248))(v33);

    sub_10016E168(v34, v44, &v47);

    [v31 addChildNode:v28];
    [v30 commit];
    v35 = [v28 state];
    *&v56 = v35;
    *(&v56 + 1) = v48;
    v57 = v47;
    v58 = v9;
    v59 = v49;
    v60 = v28;
    v36 = v28;

    sub_100168218(v35);

    v38 = (*((swift_isaMask & *a1) + 0xB8))(v37);
    v40 = v39;
    swift_beginAccess();
    v41 = v36;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v44 + 24);
    *(v44 + 24) = 0x8000000000000000;
    sub_1000BC118(&v56, v38, v40, isUniquelyReferenced_nonNull_native);

    *(v44 + 24) = v46;
    swift_endAccess();

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

LABEL_31:
  __break(1u);
  return result;
}

void (*sub_10016B69C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10016D6C8(v6, a2, a3);
  return sub_10016B724;
}

void (*sub_10016B728(uint64_t **a1, double a2))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10016D778(v4, a2);
  return sub_10016EEA8;
}

uint64_t sub_10016B7A8(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0xB8);
  v2 = v1();
  v4 = v3;
  swift_beginAccess();
  v5 = sub_10016B69C(v12, v2, v4);
  if (*(v6 + 8))
  {
    sub_100168AB4();
  }

  (v5)(v12, 0);
  swift_endAccess();

  v8 = (v1)(v7);
  v10 = v9;
  swift_beginAccess();
  sub_1000C685C(v8, v10, v12);
  swift_endAccess();
  sub_100018F04(v12, &qword_1004AC000);
}

void sub_10016B8F8(void **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = objc_allocWithZone(type metadata accessor for PointRender());
  v8 = sub_100134D08(0, 1);
  v9 = *((swift_isaMask & *v6) + 0x250);
  v10 = v9();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_17:
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_10;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  (*((swift_isaMask & *v12) + 0x2B0))(v13);
  v66 = v15;
  v67 = v14;
  v65 = v16;

  simd_float4x4.position.getter();
  SCNVector3.init(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [*&v8[OBJC_IVAR____TtC7Measure11PointRender_point] setWorldPosition:?];
  LODWORD(v23) = v18;
  LODWORD(v24) = v20;
  LODWORD(v25) = v22;
  [*&v8[OBJC_IVAR____TtC7Measure11PointRender_pointPrime] setWorldPosition:{v23, v24, v25}];
  v26 = *(a2 + 56);
  v27 = (v9)([v26 addChildNode:v8]);
  v68 = v26;
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v28 = *(v27 + 32);
  }

  v29 = v28;

  v31 = (*((swift_isaMask & *v29) + 0xB8))(v30);
  v33 = v32;

  v8 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *a3;
  *a3 = 0x8000000000000000;
  sub_1000BBBCC(v8, v31, v33, isUniquelyReferenced_nonNull_native);

  *a3 = v69;
  v36 = (v9)(v35);
  if ((v36 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v36 + 32);
LABEL_10:

  v39.n128_f64[0] = (*((swift_isaMask & *v37) + 0x2B0))(v38);
  v66 = v40;
  v67 = v39;
  v65 = v41;
  v63 = v42;

  v43 = v9();
  if ((v43 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v44 = *(v43 + 40);
LABEL_13:
    v45 = v44;

    v47.n128_f64[0] = (*((swift_isaMask & *v45) + 0x2B0))(v46);
    v61 = v48;
    v62 = v47;
    v59 = v50;
    v60 = v49;

    v51 = objc_allocWithZone(type metadata accessor for LineRender());
    sub_1000D21C4(1, 0, 0, 0, 0, v67, v66, v65, v63, v62, v61, v60, v59);
    v53 = v52;
    v54 = [v68 addChildNode:v52];
    v55 = (*((swift_isaMask & *v6) + 0xB8))(v54);
    v57 = v56;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *a4;
    *a4 = 0x8000000000000000;
    sub_1000BBD7C(v53, v55, v57, v58);

    *a4 = v70;

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_10016BDD0(void **a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *((swift_isaMask & **a1) + 0x250);
  result = v6();
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v8 = *(result + 32);
  }

  v9 = v8;

  v11.n128_f64[0] = (*((swift_isaMask & *v9) + 0x2B0))(v10);
  v37 = v11;
  v35 = v13;
  v36 = v12;
  v34 = v14;

  result = v6();
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v15 = *(result + 40);
LABEL_7:
    v16 = v15;

    v18.n128_f64[0] = (*((swift_isaMask & *v16) + 0x2B0))(v17);
    v32 = v19;
    v33 = v18;
    v30 = v21;
    v31 = v20;

    v22 = objc_allocWithZone(type metadata accessor for LineRender());
    sub_1000D21C4(1, 1, 0, 0, 0, v37, v36, v35, v34, v33, v32, v31, v30);
    v24 = v23;
    v25 = [*(a2 + 56) addChildNode:v23];
    v26 = (*((swift_isaMask & *v5) + 0xB8))(v25);
    v28 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *a3;
    *a3 = 0x8000000000000000;
    sub_1000BBD7C(v24, v26, v28, isUniquelyReferenced_nonNull_native);

    *a3 = v38;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10016C050(void **a1, uint64_t *a2)
{
  v3 = *((swift_isaMask & **a1) + 0x250);
  result = v3();
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = *(result + 32);
  }

  v6 = v5;

  v8 = (*((swift_isaMask & *v6) + 0xB8))(v7);
  v10 = v9;

  result = v3();
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 32);
LABEL_7:
    v12 = v11;

    (*((swift_isaMask & *v12) + 0x2B0))(v13);

    simd_float4x4.position.getter();
    SCNVector3.init(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a2;
    *a2 = 0x8000000000000000;
    sub_1000BC718(v8, v10, isUniquelyReferenced_nonNull_native, v15, v17, v19);

    *a2 = v21;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10016C26C(void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = (*((swift_isaMask & **a1) + 0xB8))();
  v6 = v5;
  v7 = *((swift_isaMask & *v3) + 0x250);
  result = v7();
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v9 = *(result + 32);
  }

  v10 = v9;

  (*((swift_isaMask & *v10) + 0x2B0))(v11);

  simd_float4x4.position.getter();
  v12 = SCNVector3.init(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = (v7)(v12);
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v19 = *(result + 40);
LABEL_7:
    v20 = v19;

    (*((swift_isaMask & *v20) + 0x2B0))(v21);

    simd_float4x4.position.getter();
    SCNVector3.init(_:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *a2;
    *a2 = 0x8000000000000000;
    v29[0] = v14;
    v29[1] = v16;
    v29[2] = v18;
    v29[3] = v23;
    v29[4] = v25;
    v29[5] = v27;
    sub_1000BC8A0(v29, v4, v6, isUniquelyReferenced_nonNull_native);

    *a2 = v30;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10016C4FC(double a1, double a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t *a9, id a10, uint64_t a11)
{
  result = swift_beginAccess();
  if (*(a4[2] + 16) == 4)
  {
    result = swift_beginAccess();
    if (*(*(a5 + 16) + 16) == 4)
    {
      result = swift_beginAccess();
      if (*(*(a6 + 16) + 16) == 2)
      {
        v19 = a1 / a2;
        v73 = _swiftEmptyDictionarySingleton;
        v68 = a7;
        v65 = *((swift_isaMask & *a7) + 0x230);
        v20 = v65(result);
        v21 = v20;
        if (v20 >> 62)
        {
          goto LABEL_58;
        }

        for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v66 = a9;
          v69 = a5;
          v19 = fmin(v19, 1.0);
          if (i)
          {
            break;
          }

          a5 = 0;
LABEL_16:

          v28 = v65(v27);
          a8 = v28;
          if (v28 >> 62)
          {
            a4 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            a4 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v21 = v66[1];
          v76 = v66[2];
          v77[0] = v21;
          v29 = v66[3];
          v30 = v66[4];
          v74 = v30;
          v75 = v29;
          v31 = v66[5];
          sub_10006C92C(v77, v72, &qword_1004AC010);
          sub_10006C92C(&v76, v72, &qword_1004AC010);
          sub_10006C92C(&v75, v72, &qword_1004AC008);
          sub_10006C92C(&v74, v72, &qword_1004AC018);
          v67 = v31;
          if (a4)
          {
            v32 = 0;
            a9 = (a8 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((a8 & 0xC000000000000001) != 0)
              {
                v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v32 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_55;
                }

                v33 = *(a8 + 8 * v32 + 32);
              }

              v34 = v33;
              v35 = (v32 + 1);
              if (__OFADD__(v32, 1))
              {
                break;
              }

              v72[0] = v33;
              sub_10016E268(v72, v21, v30, &v73, v69 + 16, a10 + 16);

              ++v32;
              if (v35 == a4)
              {
                goto LABEL_27;
              }
            }

LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_27:
          sub_100018F04(v77, &qword_1004AC010);
          sub_100018F04(&v76, &qword_1004AC010);
          sub_100018F04(&v75, &qword_1004AC008);
          sub_100018F04(&v74, &qword_1004AC018);

          v36 = (*((swift_isaMask & *v68) + 0x248))();
          v37 = v36;
          if (v36 >> 62)
          {
            v38 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a8 = v76;
          a9 = &qword_1004AC010;
          sub_10006C92C(v77, v72, &qword_1004AC010);
          sub_10006C92C(&v76, v72, &qword_1004AC010);
          sub_10006C92C(&v75, v72, &qword_1004AC008);
          sub_10006C92C(&v74, v72, &qword_1004AC018);
          a10 = v67;
          if (!v38)
          {
LABEL_38:
            sub_100018F04(v77, &qword_1004AC010);
            v41 = v75;
            sub_100018F04(&v76, &qword_1004AC010);
            sub_100018F04(&v75, &qword_1004AC008);
            sub_100018F04(&v74, &qword_1004AC018);

            sub_10000F974(&qword_1004A3E38);
            result = swift_allocObject();
            *(result + 16) = xmmword_1003D5230;
            v42 = v41[2];
            if (v42)
            {
              v43 = v73;
              if (v73[2])
              {
                v44 = result;
                v45 = v41[4];
                v46 = v41[5];

                sub_100198230(v45, v46);
                v48 = v47;

                if (v48)
                {
                  result = SIMD3<>.init(_:)();
                  *(v44 + 32) = v49;
                  if (v42 != 1)
                  {
                    if (v43[2])
                    {
                      v50 = v41[6];
                      v51 = v41[7];

                      sub_100198230(v50, v51);
                      v53 = v52;

                      if (v53)
                      {
                        result = SIMD3<>.init(_:)();
                        *(v44 + 48) = v54;
                        if (v42 >= 3)
                        {
                          if (v43[2])
                          {
                            v55 = v41[8];
                            v56 = v41[9];

                            sub_100198230(v55, v56);
                            v58 = v57;

                            if (v58)
                            {
                              result = SIMD3<>.init(_:)();
                              *(v44 + 64) = v59;
                              if (v42 != 3)
                              {
                                if (v43[2])
                                {
                                  v60 = v41[10];
                                  v61 = v41[11];

                                  sub_100198230(v60, v61);
                                  v63 = v62;

                                  if (v63)
                                  {
                                    SIMD3<>.init(_:)();
                                    *(v44 + 80) = v64;
                                    sub_100165EA8(v44);
                                    swift_setDeallocating();
                                    swift_deallocClassInstance();
                                  }

LABEL_72:
                                  __break(1u);
                                  return result;
                                }

LABEL_71:
                                __break(1u);
                                goto LABEL_72;
                              }

LABEL_70:
                              __break(1u);
                              goto LABEL_71;
                            }

LABEL_69:
                            __break(1u);
                            goto LABEL_70;
                          }

LABEL_68:
                          __break(1u);
                          goto LABEL_69;
                        }

LABEL_67:
                        __break(1u);
                        goto LABEL_68;
                      }

LABEL_66:
                      __break(1u);
                      goto LABEL_67;
                    }

LABEL_65:
                    __break(1u);
                    goto LABEL_66;
                  }

LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }

LABEL_63:
                __break(1u);
                goto LABEL_64;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_63;
          }

          v39 = 0;
          v21 = v37 & 0xC000000000000001;
          while (1)
          {
            if (v21)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_57;
              }

              v40 = *(v37 + 8 * v39 + 32);
            }

            a4 = v40;
            a9 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
              break;
            }

            v72[0] = v40;
            sub_10016E968(v72, a8, a6 + 16, a11 + 16);

            ++v39;
            if (a9 == v38)
            {
              goto LABEL_38;
            }
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          ;
        }

        v23 = 0;
        a5 = 0;
        a9 = (v21 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          v77[0] = v24;
          sub_10016CCB4(v77, &v73, (a4 + 2), a8 + 16);

          ++v23;
          if (v26 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }
  }

  return result;
}

uint64_t sub_10016CCB4(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *((swift_isaMask & **a1) + 0x250);
  v8 = v7();
  v9 = v8;
  v54 = a4;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  v52 = (*((swift_isaMask & *v11) + 0xB8))(v12);
  v9 = v13;

  v14 = v7();
  if ((v14 & 0xC000000000000001) == 0)
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v14 + 32);
      goto LABEL_7;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v16 = v15;
  v51 = a2;

  v18 = (*((swift_isaMask & *v16) + 0xB8))(v17);
  v20 = v19;

  swift_beginAccess();
  if (!*(*a3 + 16))
  {
LABEL_28:

    goto LABEL_29;
  }

  sub_100198230(v18, v20);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_29:
    swift_endAccess();
    __break(1u);
    goto LABEL_30;
  }

  v23 = swift_endAccess();
  v24 = (v7)(v23);
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  v25 = *(v24 + 32);
LABEL_12:
  v26 = v25;

  v28 = (*((swift_isaMask & *v26) + 0xB8))(v27);
  v30 = v29;

  swift_beginAccess();
  if (!*(*v54 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_100198230(v28, v30);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_31:
    swift_endAccess();
    __break(1u);
    goto LABEL_32;
  }

  v33 = swift_endAccess();
  v34 = (v7)(v33);
  if ((v34 & 0xC000000000000001) == 0)
  {
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v34 + 32);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_26:
  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
  v36 = v35;

  v38 = (*((swift_isaMask & *v36) + 0xB8))(v37);
  v40 = v39;

  swift_beginAccess();
  if (!*(*a3 + 16))
  {
LABEL_32:

    goto LABEL_33;
  }

  sub_100198230(v38, v40);
  v42 = v41;

  if (v42)
  {
    swift_endAccess();
    - infix(_:_:)();
    * infix(_:_:)();
    + infix(_:_:)();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *v51;
    *v51 = 0x8000000000000000;
    sub_1000BC718(v52, v9, isUniquelyReferenced_nonNull_native, v44, v46, v48);

    *v51 = v53;
  }

LABEL_33:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_10016D1B8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a1 && (a3 & 1) != 0)
  {
    v5 = a1;

    v5(a4);
    a1 = sub_1000223C4(v5);
  }

  v6 = (*((swift_isaMask & *a4) + 0xD0))(a1);
  v7 = (*((swift_isaMask & *a4) + 0xB8))();
  sub_10016A400(v6, v7, v8);
}

uint64_t sub_10016D2B4()
{

  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_10016D344()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v14 = v1;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(v1 + 56) + 48 * (v10 | (v8 << 6)));
    if (*v11 != 5)
    {
      v12 = v11[5];

      v13 = v12;
      [v13 removeFromParentNode];

      v1 = v14;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10016D4D0()
{
  swift_beginAccess();
  v16 = v0;
  v1 = *(v0 + 24);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v17 = v1;

  v7 = 0;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = *(*(v17 + 56) + 48 * (v11 | (v10 << 6)) + 40);

        v13 = v12;
        v14 = [v13 parentNode];
        if (v14)
        {
          v15 = v14;

          v7 = v10;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v8 = *(v16 + 56);
          v9 = v13;
          [v8 addChildNode:v9];

          v7 = v10;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v10 = v7;
      }
    }
  }

  __break(1u);
}

uint64_t (*sub_10016D6C8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10016DD9C(v7);
  v7[9] = sub_10016D87C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10016D774;
}

uint64_t (*sub_10016D778(uint64_t *a1, double a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10016E03C(v5);
  v5[9] = sub_10016DBBC(v5 + 4, isUniquelyReferenced_nonNull_native, a2);
  return sub_10016EEAC;
}

void sub_10016D81C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10016D87C(void *a1, uint64_t a2, uint64_t a3, char a4))(char **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xB8uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[19] = a3;
  v10[20] = v4;
  v10[18] = a2;
  v12 = *v4;
  v13 = sub_100198230(a2, a3);
  *(v11 + 176) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1000BEBDC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000B85A0(v18, a4 & 1);
    v13 = sub_100198230(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[21] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 48 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 24);
    v27 = *(v23 + 40);
  }

  else
  {
    v24 = 0;
    v27 = 0;
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v11[12] = v24;
  *(v11 + 13) = v25;
  *(v11 + 15) = v26;
  v11[17] = v27;
  return sub_10016DA00;
}

void sub_10016DA00(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v5 = *(*a1 + 13);
  v4 = *(*a1 + 14);
  v6 = *(*a1 + 15);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 17);
  v9 = (*a1)[176];
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      if (((*a1)[176] & 1) == 0)
      {
        goto LABEL_15;
      }

      v24 = *(v2 + 21);
      v25 = **(v2 + 20);
      v26 = *(*a1 + 12);
      v14 = *(*a1 + 14);
      v16 = *(*a1 + 15);
      sub_1000C1108(*(v25 + 48) + 16 * v24);
      sub_1000C740C(v24, v25);
      goto LABEL_14;
    }

    v10 = *(v2 + 21);
    v11 = **(v2 + 20);
    if ((v9 & 1) == 0)
    {
      v12 = *(v2 + 18);
      v27 = *(v2 + 19);
      *(v2 + 6) = v3;
      *(v2 + 7) = v5;
      *(v2 + 8) = v4;
      *(v2 + 9) = v6;
      *(v2 + 10) = v7;
      *(v2 + 11) = v8;
      v16 = v6;
      v17 = v2 + 48;
      v14 = v4;
      v15 = v27;
      goto LABEL_13;
    }

LABEL_7:
    v18 = (v11[7] + 48 * v10);
    *v18 = v3;
    v18[1] = v5;
    v18[2] = v4;
    v18[3] = v6;
    v18[4] = v7;
    v18[5] = v8;
    goto LABEL_15;
  }

  if (v5)
  {
    v10 = *(v2 + 21);
    v11 = **(v2 + 20);
    if ((v9 & 1) == 0)
    {
      v12 = *(v2 + 18);
      v13 = *(v2 + 19);
      *v2 = v3;
      *(v2 + 1) = v5;
      *(v2 + 2) = v4;
      *(v2 + 3) = v6;
      *(v2 + 4) = v7;
      *(v2 + 5) = v8;
      v14 = v4;
      v15 = v13;
      v16 = v6;
      v17 = v2;
LABEL_13:
      v26 = v3;
      sub_1000BD620(v10, v12, v15, v17, v11);

LABEL_14:
      v6 = v16;
      v4 = v14;
      v3 = v26;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if ((*a1)[176])
  {
    v19 = *(v2 + 21);
    v20 = **(v2 + 20);
    v21 = *(*a1 + 12);
    v22 = *(*a1 + 14);
    v23 = *(*a1 + 15);
    sub_1000C1108(*(v20 + 48) + 16 * v19);
    sub_1000C740C(v19, v20);
    v6 = v23;
    v4 = v22;
    v3 = v21;
  }

LABEL_15:
  v28 = *(v2 + 12);
  v29 = *(v2 + 13);
  v31 = *(v2 + 14);
  v30 = *(v2 + 15);
  v32 = *(v2 + 16);
  v33 = *(v2 + 17);
  sub_10016DDD0(v3, v5, v4, v6, v7, v8);
  sub_10016DE48(v28, v29, v31, v30, v32, v33);

  free(v2);
}

void (*sub_10016DBBC(uint64_t *a1, char a2, double a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = v3;
  *(v8 + 8) = a3;
  v10 = *v3;
  v11 = sub_10019851C(a3);
  *(v9 + 32) = v12 & 1;
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
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 >= v16 && (a2 & 1) == 0)
    {
      v19 = v11;
      sub_1000BEF48();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1000B8E4C(v16, a2 & 1);
    v11 = sub_10019851C(a3);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_10016DD08;
}

void sub_10016DD08(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1000BD67C(v4, v2, v5, *(v1 + 1));
    }
  }

  else if ((*a1)[4])
  {
    sub_1000C7754(v1[3], *v1[2]);
  }

  free(v1);
}

uint64_t (*sub_10016DD9C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10016DDC4;
}

void sub_10016DDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {

    v6 = a6;
  }
}

void sub_10016DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

uint64_t sub_10016DEC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10016DEF8()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10016DFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10016DFDC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t (*sub_10016E03C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10016EE9C;
}

void sub_10016E064(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_10016B8F8(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10016E168(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10016BDD0(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10016E268(void **a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *((swift_isaMask & **a1) + 0x250);
  v11 = v10();
  v82 = a5;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v15 = (*((swift_isaMask & *v13) + 0xB8))(v14);
  v17 = v16;

  if (!a3[2])
  {
LABEL_40:

    __break(1u);
    goto LABEL_41;
  }

  v18 = sub_100198230(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_30;
  }

  a3 = *(a3[7] + 8 * v18);
  v21 = v10();
  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v22 = *(v21 + 32);
LABEL_9:
  v23 = v22;

  v25 = (*((swift_isaMask & *v23) + 0xB8))(v24);
  v27 = v26;

  v28 = *a4;
  if (!*(*a4 + 16))
  {
LABEL_41:

    __break(1u);
    goto LABEL_42;
  }

  v29 = sub_100198230(v25, v27);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_33;
  }

  v35 = (*(v28 + 56) + 12 * v29);
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  LODWORD(v32) = *v35;
  LODWORD(v33) = v37;
  LODWORD(v34) = v38;
  [*(a3 + OBJC_IVAR____TtC7Measure11PointRender_point) setWorldPosition:{v32, v33, v34}];
  v39 = *(a3 + OBJC_IVAR____TtC7Measure11PointRender_pointPrime);
  LODWORD(v40) = v36;
  LODWORD(v41) = v37;
  LODWORD(v42) = v38;
  [v39 setWorldPosition:{v40, v41, v42}];

  v43 = *((swift_isaMask & *v9) + 0xB8);
  v44 = v43();
  if (*(a2 + 16))
  {
    v46 = sub_100198230(v44, v45);
    v48 = v47;

    if (v48)
    {
      v49 = *(*(a2 + 56) + 8 * v46);
      v50 = v43();
      v52 = v51;
      swift_beginAccess();
      if (!*(*v82 + 16))
      {
LABEL_42:

        __break(1u);
        goto LABEL_43;
      }

      sub_100198230(v50, v52);
      if (v53)
      {
        swift_endAccess();

        v55 = (v43)(v54);
        v57 = v56;
        swift_beginAccess();
        if (!*(*a6 + 16))
        {
LABEL_43:

          __break(1u);
          goto LABEL_44;
        }

        sub_100198230(v55, v57);
        if (v58)
        {
          swift_endAccess();

          v60 = (v43)(v59);
          v62 = v61;
          swift_beginAccess();
          if (!*(*v82 + 16))
          {
LABEL_44:

            __break(1u);
            goto LABEL_45;
          }

          sub_100198230(v60, v62);
          if (v63)
          {
            swift_endAccess();

            - infix(_:_:)();
            * infix(_:_:)();
            + infix(_:_:)();
            v64 = SIMD3<>.init(_:)();
            v84 = v65;
            v66 = (v43)(v64);
            v68 = v67;
            swift_beginAccess();
            if (!*(*v82 + 16))
            {
LABEL_45:

              __break(1u);
              goto LABEL_46;
            }

            sub_100198230(v66, v68);
            if (v69)
            {
              swift_endAccess();

              v71 = (v43)(v70);
              v73 = v72;
              swift_beginAccess();
              if (!*(*a6 + 16))
              {
LABEL_46:

                __break(1u);
                goto LABEL_47;
              }

              sub_100198230(v71, v73);
              if (v74)
              {
                swift_endAccess();

                v76 = (v43)(v75);
                v78 = v77;
                swift_beginAccess();
                if (!*(*v82 + 16))
                {
LABEL_47:

                  __break(1u);
                  return;
                }

                sub_100198230(v76, v78);
                if (v79)
                {
                  swift_endAccess();

                  - infix(_:_:)();
                  * infix(_:_:)();
                  + infix(_:_:)();
                  SIMD3<>.init(_:)();
                  sub_1000D6818(v84, v80);

                  return;
                }

                goto LABEL_39;
              }

LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
  }
}

void sub_10016E968(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*((swift_isaMask & **a1) + 0xB8))();
  v9 = v8;
  if (!*(a2 + 16) || (v10 = v7, v11 = sub_100198230(v7, v8), (v12 & 1) == 0))
  {

    return;
  }

  v13 = *(*(a2 + 56) + 8 * v11);
  swift_beginAccess();
  if (!*(*a3 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  sub_100198230(v10, v9);
  if ((v15 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_endAccess();
  swift_beginAccess();
  if (!*(*a4 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_100198230(v10, v9);
  if ((v16 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_endAccess();
  swift_beginAccess();
  if (!*(*a3 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100198230(v10, v9);
  if ((v17 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  swift_endAccess();
  - infix(_:_:)();
  * infix(_:_:)();
  + infix(_:_:)();
  SIMD3<>.init(_:)();
  v23 = v18;
  swift_beginAccess();
  if (!*(*a3 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_100198230(v10, v9);
  if ((v19 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  swift_endAccess();
  swift_beginAccess();
  if (!*(*a4 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_100198230(v10, v9);
  if ((v20 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  swift_endAccess();
  swift_beginAccess();
  if (*(*a3 + 16))
  {
    sub_100198230(v10, v9);
    if (v21)
    {
      swift_endAccess();

      - infix(_:_:)();
      * infix(_:_:)();
      + infix(_:_:)();
      SIMD3<>.init(_:)();
      sub_1000D6818(v23, v22);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_10016ED10(void *a1)
{
  v3 = [objc_opt_self() standardUserDefaults];
  Defaults.hideRectangleSuggestions.unsafeMutableAddressor();

  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 BOOLForKey:v4];

  *(v1 + 16) = v5;
  *(v1 + 24) = sub_10019A39C(_swiftEmptyArrayStorage);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = [objc_allocWithZone(SCNNode) init];
  *(v1 + 64) = [objc_allocWithZone(SCNNode) init];
  *(v1 + 72) = [objc_allocWithZone(SCNNode) init];
  *(v1 + 80) = a1;
  v6 = objc_opt_self();
  v7 = a1;
  [v6 begin];
  if ((*(v1 + 16) & 1) == 0)
  {
    [*(v1 + 72) addChildNode:*(v1 + 56)];
  }

  [*(v1 + 72) addChildNode:*(v1 + 64)];
  v8 = [v7 rootNode];
  [v8 addChildNode:*(v1 + 72)];

  [v6 commit];
  return v1;
}

void (*sub_10016EEB0())(const void *a1)
{
  v1 = (v0 + qword_1004AC020);
  v2 = *(v0 + qword_1004AC020);
  if (v2)
  {
    v3 = *(v0 + qword_1004AC020);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *v1;
    v3 = sub_100171D0C;
    *v1 = sub_100171D0C;
    v1[1] = v4;

    sub_1000223C4(v5);
  }

  sub_100038EBC(v2);
  return v3;
}

void sub_10016EF6C(const void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    Synchronized.wrappedValue.getter();

    Synchronized.wrappedValue.setter();

    type metadata accessor for RetainedFrame();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10008D4F0();
    memcpy((v4 + 32), a1, 0x200uLL);
    v5[64] = v4;
    sub_10004B20C(a1, v5);

    Synchronized.wrappedValue.setter();
  }
}

id sub_10016F0A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[qword_1004AC020];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = qword_1004AC028;
  sub_10000F974(&qword_1004AC2D8);
  swift_allocObject();
  *&v3[v9] = Synchronized.init(wrappedValue:)();
  v10 = qword_1004AC030;
  ComputedCameraProperties.init()();
  memcpy(&v25[1], __src, 0x1E0uLL);
  v27[0] = 0;
  v27[1] = 0xBFF0000000000000;
  v27[2] = 0;
  memcpy(&v27[3], v25, 0x1E8uLL);
  type metadata accessor for RetainedFrame();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10008D4F0();
  memcpy((v11 + 32), v27, 0x200uLL);
  v25[0] = v11;
  sub_10000F974(&qword_1004AC2E0);
  swift_allocObject();
  *&v3[v10] = Synchronized.init(wrappedValue:)();
  v12 = qword_1004AC048;
  KeyPath = swift_getKeyPath();
  v14 = sub_10000F974(&qword_1004AC2E8);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1004D5058;
  v16 = *(v14 + 272);

  *&v4[v12] = v16(KeyPath, v15);
  v17 = qword_1004AC050;
  sub_10000F974(&qword_1004AC2F0);
  swift_getKeyPath();
  *&v4[v17] = MutableStateValue.__allocating_init(_:_:)();
  v18 = qword_1004AC058;
  sub_10000F974(&qword_1004AC2F8);
  swift_getKeyPath();
  *&v4[v18] = MutableStateValue.__allocating_init(_:_:)();
  v19 = &v4[qword_1004AC060];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *&v4[qword_1004AC068] = 0;
  *&v4[qword_1004AC038] = a2;
  *&v4[qword_1004AC040] = a3;
  *&v4[qword_1004AC070] = a1;
  v24.receiver = v4;
  v24.super_class = ObjectType;

  v20 = a1;
  v21 = objc_msgSendSuper2(&v24, "init");
  [v20 setDelegate:v21];

  return v21;
}

void sub_10016F3D8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = (v0 + qword_1004AC020);
  *v2 = 0;
  v2[1] = 0;
  v3 = qword_1004AC028;
  sub_10000F974(&qword_1004AC2D8);
  swift_allocObject();
  *(v0 + v3) = Synchronized.init(wrappedValue:)();
  v4 = qword_1004AC030;
  ComputedCameraProperties.init()();
  memcpy(&v14[1], __src, 0x1E0uLL);
  v16[0] = 0;
  v16[1] = 0xBFF0000000000000;
  v16[2] = 0;
  memcpy(&v16[3], v14, 0x1E8uLL);
  type metadata accessor for RetainedFrame();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10008D4F0();
  memcpy((v5 + 32), v16, 0x200uLL);
  v14[0] = v5;
  sub_10000F974(&qword_1004AC2E0);
  swift_allocObject();
  *(v0 + v4) = Synchronized.init(wrappedValue:)();
  v6 = qword_1004AC048;
  KeyPath = swift_getKeyPath();
  v8 = sub_10000F974(&qword_1004AC2E8);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v8 + 272);

  *(v1 + v6) = v10(KeyPath, v9);
  v11 = qword_1004AC050;
  sub_10000F974(&qword_1004AC2F0);
  swift_getKeyPath();
  *(v1 + v11) = MutableStateValue.__allocating_init(_:_:)();
  v12 = qword_1004AC058;
  sub_10000F974(&qword_1004AC2F8);
  swift_getKeyPath();
  *(v1 + v12) = MutableStateValue.__allocating_init(_:_:)();
  v13 = v1 + qword_1004AC060;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(v1 + qword_1004AC068) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10016F678@<X0>(void *a1@<X8>, double a2@<D0>)
{

  Synchronized.wrappedValue.getter();

  v5 = __dst[0];

  Synchronized.wrappedValue.getter();

  v6 = __dst[0];
  v7 = [*(v2 + qword_1004AC070) session];
  v8 = [v7 currentFrame];

  memcpy(__dst, (__dst[0] + 32), 0x200uLL);
  v9 = v5[2];
  v10 = __dst[0];
  memcpy(__src, v5 + 7, 0x1E8uLL);
  if (v9)
  {
    sub_10004B20C(__dst, v68);
    v11 = v9;
    [v11 timestamp];
    v13 = v12;
    sub_10000F974(&qword_1004AC2D0);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v15 = v11;
    v16 = NSObject.hashValue.getter();

    sub_100013C4C(__dst);
    *(v14 + 24) = v16;
    v68[0] = v10;
    v68[1] = v13;
    v68[2] = v14;
  }

  else
  {
    v68[2] = 0;
    v68[0] = __dst[0];
    v68[1] = 0;
  }

  memcpy(&v68[3], __src, 0x1E8uLL);
  sub_100013C4C(v68);
  v17 = *&v68[1];
  if (*&v68[1] == a2)
  {
    memcpy(__src, v5 + 4, sizeof(__src));
    v18 = v5[2];
    v19 = __src[0];
    memcpy(v64, v5 + 7, 0x1E8uLL);
    if (v18)
    {
      sub_10004B20C(__src, v68);
      v20 = v18;
      [v20 timestamp];
      v22 = v21;
      sub_10000F974(&qword_1004AC2D0);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v24 = v20;
      v25 = NSObject.hashValue.getter();

      sub_100013C4C(__src);

      *(v23 + 24) = v25;

      memcpy(&v65[3], v64, 0x1E8uLL);
      v65[0] = v19;
      v65[1] = v22;
      v65[2] = v23;
    }

    else
    {

      memcpy(&v65[3], v64, 0x1E8uLL);
      v65[2] = 0;
      v65[0] = v19;
      v65[1] = 0;
    }

    goto LABEL_28;
  }

  if (v6)
  {
    memcpy(__src, v6 + 4, sizeof(__src));
    v26 = v6[2];
    v27 = __src[0];
    memcpy(v65, v6 + 7, 0x1E8uLL);
    if (v26)
    {

      sub_10004B20C(__src, v68);
      v28 = v26;
      [v28 timestamp];
      v30 = v29;
      sub_10000F974(&qword_1004AC2D0);
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v32 = v28;
      v33 = NSObject.hashValue.getter();

      sub_100013C4C(__src);
      *(v31 + 24) = v33;
      v68[0] = v27;
      v68[1] = v30;
      v68[2] = v31;
      memcpy(&v68[3], v65, 0x1E8uLL);
      sub_100013C4C(v68);
      v34 = *&v68[1];

      if (v34 == a2)
      {
LABEL_10:
        memcpy(v65, v6 + 4, 0x200uLL);
        v35 = v6[2];
        v36 = v65[0];
        memcpy(v63, v6 + 7, sizeof(v63));
        if (v35)
        {
          sub_10004B20C(v65, v68);
          v37 = v35;
          [v37 timestamp];
          v39 = v38;
          sub_10000F974(&qword_1004AC2D0);
          v40 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_beginAccess();
          swift_unknownObjectWeakAssign();
          v41 = v37;
          v42 = NSObject.hashValue.getter();

          sub_100013C4C(v65);

          *(v40 + 24) = v42;

          memcpy(&v64[24], v63, 0x1E8uLL);
          *v64 = v36;
          *&v64[8] = v39;
          *&v64[16] = v40;
        }

        else
        {

          memcpy(&v64[24], v63, 0x1E8uLL);
          *&v64[16] = 0;
          *v64 = v36;
          *&v64[8] = 0;
        }

        nullsub_1(v64);
        v55 = v64;
        goto LABEL_29;
      }
    }

    else
    {
      v68[2] = 0;
      v68[0] = __src[0];
      v68[1] = 0;
      memcpy(&v68[3], v65, 0x1E8uLL);
      sub_100013C4C(v68);
      v17 = *&v68[1];
      if (*&v68[1] == a2)
      {
        goto LABEL_10;
      }
    }
  }

  if (!v8)
  {
LABEL_24:

    sub_100171C54(v68);
    return memcpy(a1, v68, 0x200uLL);
  }

  [v8 timestamp];
  if (v43 != a2)
  {

    goto LABEL_24;
  }

  v44 = qword_1004A0850;
  result = v8;
  v46 = result;
  if (v44 != -1)
  {
    result = swift_once();
  }

  if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
  {
    SIMD2<>.init(_:)();
    static ComputedCameraProperties.updateShared(_:viewportSize:)();

    memcpy(__src, v5 + 4, sizeof(__src));
    v47 = v5[2];
    v48 = __src[0];
    memcpy(v66, v5 + 7, sizeof(v66));
    if (v47)
    {
      sub_10004B20C(__src, v68);
      v49 = v47;
      [v49 timestamp];
      v51 = v50;
      sub_10000F974(&qword_1004AC2D0);
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v53 = v49;
      v54 = NSObject.hashValue.getter();

      sub_100013C4C(__src);
      *(v52 + 24) = v54;
    }

    else
    {
      v52 = 0;
      v51 = 0;
    }

    *v64 = v48;
    *&v64[8] = v51;
    *&v64[16] = v52;
    memcpy(&v64[24], v66, 0x1E8uLL);
    v56 = v46;
    [v56 timestamp];
    v58 = v57;
    sub_10000F974(&qword_1004AC2D0);
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v60 = v56;
    v61 = NSObject.hashValue.getter();

    sub_100013C4C(v64);
    *(v59 + 24) = v61;
    v62 = v60;
    static ComputedCameraProperties.shared(for:)();

    result = memcpy(&v66[8], v63, 0x1E0uLL);
    if (v48 != -1)
    {
      memcpy(&v65[3], v66, 0x1E8uLL);
      v65[0] = v48 + 1;
      v65[1] = v58;
      v65[2] = v59;
LABEL_28:
      nullsub_1(v65);
      v55 = v65;
LABEL_29:
      memcpy(v68, v55, sizeof(v68));
      return memcpy(a1, v68, 0x200uLL);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10016FEF8()
{
  sub_1000223C4(*(v0 + qword_1004AC020));

  v1 = *(v0 + qword_1004AC070);
}

void sub_10016FFAC(uint64_t a1)
{
  sub_1000223C4(*(a1 + qword_1004AC020));

  v2 = *(a1 + qword_1004AC070);
}

uint64_t type metadata accessor for RenderLoop()
{
  result = qword_1004AC0A0;
  if (!qword_1004AC0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100170144(uint64_t a1, double a2)
{
  v5 = v2;
  ariadne_trace(_:_:_:_:_:)();
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!qword_1004D4AC8)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (*(qword_1004D4AC8 + 32))
  {

    sub_100050B38();
  }

  [*(v2 + qword_1004AC070) lastFrameTimestamp];
  sub_10016F678(__src, v8);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_100171BD8(__dst) == 1)
  {

    Synchronized.wrappedValue.getter();

    v3 = v42[0].i64[0];
    memcpy(v43, (v42[0].i64[0] + 32), sizeof(v43));
    v9 = *(v42[0].i64[0] + 16);
    v10 = v43[0];
    memcpy(v38, (v42[0].i64[0] + 56), 0x1E8uLL);
    if (v9)
    {
      sub_10004B20C(v43, v42);
      v11 = v9;
      [v11 timestamp];
      v13 = v12;
      sub_10000F974(&qword_1004AC2D0);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v15 = v11;
      *(v14 + 24) = NSObject.hashValue.getter();

      sub_100013C4C(v43);

      memcpy(&v39[3], v38, 0x1E8uLL);
      v39[0] = v10;
      v39[1] = v13;
      v39[2] = v14;
    }

    else
    {

      memcpy(&v39[3], v38, 0x1E8uLL);
      v39[2] = 0;
      v39[0] = v10;
      v39[1] = 0;
    }
  }

  else
  {
    memcpy(v39, __src, sizeof(v39));
  }

  memcpy(v42, v39, sizeof(v42));
  v16 = sub_10008D4F0();
  if (!v16)
  {
    ariadne_trace(_:_:_:_:_:)();
    if (qword_1004A02B8 != -1)
    {
      swift_once();
    }

    v24._object = 0x800000010040A4B0;
    v24._countAndFlagsBits = 0xD00000000000003BLL;
    Log.default(_:isPrivate:)(v24, 0);
    sub_100013C4C(v39);
    v25 = qword_1004D4AC8;
    if (qword_1004D4AC8)
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_19:

    v22 = 0;
    v21 = 0;
    goto LABEL_20;
  }

  v3 = v16;

  Synchronized.wrappedValue.getter();

  v17 = v43[0];
  if (!v43[0])
  {
    goto LABEL_24;
  }

  memcpy(v38, (v43[0] + 32), sizeof(v38));
  v18 = *(v43[0] + 16);
  v4 = v38[0];
  memcpy(v37, (v43[0] + 56), sizeof(v37));
  if (!v18)
  {
    goto LABEL_19;
  }

  sub_10004B20C(v38, v43);
  v19 = v18;
  [v19 timestamp];
  v21 = v20;
  sub_10000F974(&qword_1004AC2D0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v23 = v19;
  *(v22 + 24) = NSObject.hashValue.getter();

  sub_100013C4C(v38);

LABEL_20:
  v43[0] = v4;
  v43[1] = v21;
  v43[2] = v22;
  memcpy(&v43[3], v37, 0x1E8uLL);
  v17 = sub_10008D4F0();
  sub_100013C4C(v43);
  if (!v17 || (sub_100018630(0, &qword_1004AC2C8), v26 = v3, v27 = v17, v28 = static NSObject.== infix(_:_:)(), v26, v27, (v28 & 1) == 0))
  {
LABEL_24:
    if (qword_1004D4AC8)
    {
      if (*(qword_1004D4AC8 + 56))
      {
        type metadata accessor for WorldAnchor();

        static WorldAnchor.forEachAnchor(_:)();
      }

      MeasureCore.shared.unsafeMutableAddressor();

      MeasureCore.updatePlanes(with:)(v3);

      sub_100170904(v3, v17, v38);
      v29 = *(**(v5 + qword_1004AC050) + 392);

      v29(v38);

      if ([objc_opt_self() jasperAvailable])
      {
        if (qword_1004A03F8 != -1)
        {
          swift_once();
        }

        if (byte_1004D4FC8 == 1)
        {
          sub_100109F6C(v42);
        }
      }

      v30 = *(v5 + qword_1004AC038);
      v31 = SnapType.standard.unsafeMutableAddressor();
      if (*(v30 + 544) == 3)
      {
        LOBYTE(v38[0]) = sub_1000F7A14(*v31, v42) & 1;

        Synchronized.wrappedValue.setter();
      }

      sub_1000FAAC8();
      sub_1000FBAE0();
      sub_100109BB8();
      v32 = *(**(v5 + qword_1004AC058) + 200);

      v34 = v32(v33);

      v35 = swift_allocObject();
      *(v35 + 16) = a2;
      *(v35 + 24) = a1;
      memcpy((v35 + 32), v42, 0x200uLL);
      v36 = *(*v34 + 416);
      swift_unknownObjectRetain();
      sub_10004B20C(v39, v38);
      v36(sub_100171C3C, v35);

      sub_100013C4C(v39);
      v25 = qword_1004D4AC8;
      if (qword_1004D4AC8)
      {
        goto LABEL_35;
      }

LABEL_40:
      __break(1u);
      return;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  ariadne_trace(_:_:_:_:_:)();

  sub_100013C4C(v39);
  v25 = qword_1004D4AC8;
  if (!qword_1004D4AC8)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_35:
  if (*(v25 + 32))
  {

    sub_100050B60();
  }

  ariadne_trace(_:_:_:_:_:)();
}

__n128 sub_100170904@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(**(v3 + qword_1004AC050) + 144);

  v7(v65, v8);

  v88 = v66;
  v89 = v67;
  v9 = v68;
  v10 = v69;
  v86[0] = *v70;
  *(v86 + 3) = *&v70[3];
  v83 = v71;
  v84 = v72;
  v11 = v73;
  v12 = v74;
  v81 = v76;
  v80 = v75;
  v13 = v77;
  v14 = v78;
  v87 = v69;
  v82 = v74;
  v79 = v78;
  v15 = [a1 camera];
  [v15 transform];
  v63 = v17;
  v64 = v16;
  v61 = v19;
  v62 = v18;

  v96 = 0;
  v20 = [a1 camera];
  [v20 eulerAngles];
  v60 = v21;

  v85 = 0;
  [a1 timestamp];
  if (a2 && (v23 = v22, [a2 timestamp], v25 = v24, vabdd_f64(v23, v24) > 2.22044605e-16))
  {
    v26 = [a1 camera];
    [v26 transform];

    simd_float4x4.position.getter();
    v52 = v27;
    simd_float4x4.forward.getter();
    v29.i64[0] = vaddq_f32(v52, vmulq_f32(v28, vdupq_n_s32(0xBE4CCCCD))).u64[0];
    v29.f32[2] = v52.f32[2] + vmuls_lane_f32(-0.2, v28, 2);
    v29.i32[3] = 0;
    v30 = (v58 + qword_1004AC060);
    v9 = 0.0;
    if ((*(v58 + qword_1004AC060 + 16) & 1) == 0)
    {
      v31 = vsubq_f32(*v30, v29);
      v32 = vmulq_f32(v31, v31);
      v33 = v23 - v25;
      v9 = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32)) / v33;
    }

    v57 = v29;
    v87 = *(v58 + qword_1004AC060 + 16);
    v34 = *(**(v58 + qword_1004AC048) + 144);

    v34(v65, v35);

    v36 = v65[0];
    if (v65[0])
    {
      [v65[0] userAcceleration];
      v59 = v37;
      [v36 userAcceleration];
      v56 = v38;
      [v36 userAcceleration];
      v55 = v39;
      v82 = 0;
      [v36 rotationRate];
      v54 = v40;
      [v36 rotationRate];
      v53 = v41;
      [v36 rotationRate];
      v51 = v42;

      v43.f64[0] = v59;
      v43.f64[1] = v54;
      v44.f64[0] = v56;
      v44.f64[1] = v53;
      v45.f64[0] = v55;
      v45.f64[1] = v51;
      v46 = vcvt_f32_f64(vsqrtq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v43, v43), vmulq_f64(v44, v44)), vmulq_f64(v45, v45))));
    }

    else
    {
      v82 = 1;
      v46 = 0;
    }

    v79 = v36 == 0;
    *v30 = v57;
    v30[1].i8[0] = 0;
    v94 = v88;
    v95 = v89;
    v10 = v87;
    LODWORD(v65[0]) = v86[0];
    *(v65 + 3) = *(v86 + 3);
    v47 = v85;
    v92 = v83;
    v93 = v84;
    v12 = v82;
    v90 = v80;
    v91 = v81;
    v14 = v79;
    v11 = v46.i32[0];
    v13 = v46.i32[1];
  }

  else
  {
    v94 = v88;
    v95 = v89;
    LODWORD(v65[0]) = v86[0];
    *(v65 + 3) = *(v86 + 3);
    v47 = v85;
    v92 = v83;
    v93 = v84;
    v90 = v80;
    v91 = v81;
  }

  *a3 = v64;
  *(a3 + 16) = v63;
  *(a3 + 32) = v62;
  *(a3 + 48) = v61;
  *(a3 + 64) = 0;
  *(a3 + 65) = v94;
  *(a3 + 67) = v95;
  *(a3 + 68) = v9;
  *(a3 + 72) = v10;
  *(a3 + 73) = v65[0];
  *(a3 + 76) = *(v65 + 3);
  result = v60;
  *(a3 + 80) = v60;
  *(a3 + 96) = v47;
  v49 = v92;
  *(a3 + 99) = v93;
  *(a3 + 97) = v49;
  *(a3 + 100) = v11;
  *(a3 + 104) = v12;
  v50 = v90;
  *(a3 + 107) = v91;
  *(a3 + 105) = v50;
  *(a3 + 108) = v13;
  *(a3 + 112) = v14;
  return result;
}

id *sub_100170DD8(id *result, id a2, uint64_t a3, double a4)
{
  *result = a4;
  v5 = result[62];
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    result[62] = v7;
    v10 = [a2 pointOfView];
    v11 = [v10 camera];

    v9[1] = v11;

    return memcpy(v9 + 2, (a3 + 32), 0x1E0uLL);
  }

  return result;
}

void sub_100171108(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(id, id))
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  v12 = a1;
  a6(v10, v11);
  swift_unknownObjectRelease();
}

void sub_100171234(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = qword_1004A0180;
    v31 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    if (qword_1004D4AC8 && *(qword_1004D4AC8 + 48))
    {

      sub_100050028(v11, a1);
    }

    if (qword_1004A0258 != -1)
    {
      swift_once();
    }

    v30[0] = *algn_1004D4D18;
    v30[1] = qword_1004D4D10;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v33._countAndFlagsBits = 0xD000000000000016;
    v33._object = 0x800000010040A490;
    v13 = qword_1004AC068;
    v32 = *(v3 + qword_1004AC068);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 8236;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    v16 = [v11 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 8236;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22 = [v11 geometry];
    ARPlaneGeometry.vertices.getter();

    sub_10000F974(&qword_1004A3EF0);
    v23 = Array.description.getter();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    Log.debug(_:isPrivate:)(v33, 0);

    v27 = *(v3 + v13);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      *(v3 + v13) = v29;
    }
  }
}

uint64_t sub_10017156C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v38 = a2;
  v12 = [a1 childNodes];
  sub_100018630(0, &qword_1004A1318);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = &off_100494000;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_17:

    goto LABEL_18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = &off_100494000;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (!qword_1004D4AC8)
  {
    goto LABEL_24;
  }

  if (*(qword_1004D4AC8 + 48))
  {
    v17 = [v16 geometry];
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {

        goto LABEL_18;
      }

      v20 = v19;
      v21 = objc_opt_self();
      [v21 begin];
      v22 = [v11 geometry];
      [v20 updateFromPlaneGeometry:v22];

      v14 = &off_100494000;
      [v21 commit];
    }
  }

LABEL_18:
  v23 = v14;
  if (qword_1004A0258 != -1)
  {
    swift_once();
  }

  v37[1] = qword_1004D4D20;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v40._countAndFlagsBits = 0xD000000000000018;
  v40._object = 0x800000010040A470;
  v39 = *(v3 + qword_1004AC068);
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26 = [v11 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = UUID.uuidString.getter();
  v29 = v28;
  (*(v7 + 8))(v9, v6);
  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32 = [v11 v23[65]];
  ARPlaneGeometry.vertices.getter();

  sub_10000F974(&qword_1004A3EF0);
  v33 = Array.description.getter();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  Log.debug(_:isPrivate:)(v40, 0);
}

uint64_t sub_1001719E8(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = result;
    v8 = qword_1004A0258;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v15._countAndFlagsBits = 0xD000000000000017;
    v15._object = 0x800000010040A450;
    v10 = [v7 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    Log.debug(_:isPrivate:)(v15, 0);
  }

  return result;
}

uint64_t sub_100171BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100171BFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 544, 15);
}

_OWORD *sub_100171C54(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 24) = 0u;
  result = (a1 + 24);
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[22] = 0u;
  result[23] = 0u;
  result[24] = 0u;
  result[25] = 0u;
  result[26] = 0u;
  result[27] = 0u;
  result[28] = 0u;
  result[29] = 0u;
  return result;
}

uint64_t sub_100171CD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100171D14(uint64_t a1)
{
  v3 = type metadata accessor for MeasurementHistoryItem();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023338(a1, v6);
  memcpy(v66, &v6[*(v4 + 36)], 0x346uLL);
  if (sub_1000218D8(v66))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = sub_1000218E4(v66);
    v8 = [objc_opt_self() currentTraitCollection];
    v9 = [v8 preferredContentSizeCategory];

    LOBYTE(v8) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v8)
    {
      v10 = *(v1 + OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_accessibleMeasureContent);
      v11 = v7[5];
      v60[2] = v7[6];
      v61 = v11;
      v12 = v7[7];
      v14 = v7[10];
      v13 = v7[11];
      v62 = v7[8];
      v63 = v13;
      v16 = v7[12];
      v15 = v7[13];
      v60[0] = v12;
      v60[1] = v16;
      v64 = v14;
      v65 = v15;
      v17 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v18 = *&v10[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v19 = v10;

      v20 = String._bridgeToObjectiveC()();
      [v18 setText:v20];

      v21 = *&v10[v17];
      v22 = String._bridgeToObjectiveC()();
      [v21 setAccessibilityLabel:v22];

      v23 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v24 = *&v19[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v25 = String._bridgeToObjectiveC()();
      [v24 setText:v25];

      v26 = *&v19[v23];
      if (v62)
      {
        v27 = String._bridgeToObjectiveC()();
      }

      else
      {
        v27 = 0;
      }

      [v26 setAccessibilityLabel:v27];

      v50 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v51 = *&v19[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v52 = String._bridgeToObjectiveC()();
      [v51 setText:v52];

      v53 = *&v19[v50];
      if (v65)
      {
        v54 = String._bridgeToObjectiveC()();
      }

      else
      {
        v54 = 0;
      }

      [v53 setAccessibilityLabel:v54];
    }

    else
    {
      v28 = OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent;
      v29 = *(*(v1 + OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v30 = String._bridgeToObjectiveC()();
      [v29 setText:v30];

      v31 = *v7;
      v32 = v7[1];
      v33 = *(*(v1 + v28) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v34 = String._bridgeToObjectiveC()();
      [v33 setText:v34];

      v35 = *(*(v1 + v28) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v37 = v7[5];
      v36 = v7[6];
      v38 = v7[8];
      v61 = v7[7];
      v62 = v38;
      if (v31 == v37 && v32 == v36)
      {
        v39 = 1;
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = v7[10];
      v64 = v7[11];
      v65 = v40;
      v41 = v7[12];
      v42 = v7[13];
      v63 = v41;
      v43 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v44 = *&v35[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v45 = v35;
      [v44 setHidden:v39 & 1];
      if ((v39 & 1) == 0)
      {
        v46 = *(*&v35[v43] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v47 = String._bridgeToObjectiveC()();
        [v46 setText:v47];

        v48 = *&v35[v43];
        if (v62)
        {
          v49 = String._bridgeToObjectiveC()();
        }

        else
        {
          v49 = 0;
        }

        [v48 setAccessibilityLabel:v49];
      }

      v55 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v56 = *(*&v45[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v57 = String._bridgeToObjectiveC()();
      [v56 setText:v57];

      v58 = *&v45[v55];
      if (v42)
      {
        v54 = String._bridgeToObjectiveC()();
      }

      else
      {
        v54 = 0;
      }

      [v58 setAccessibilityLabel:v54];
    }

    return sub_10002339C(v6);
  }

  return result;
}

id sub_100172344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LineHistoryCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001723A4()
{
  v1 = OBJC_IVAR____TtC7Measure14ClearAllButton_separator;
  type metadata accessor for SeparatorView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1004A0060 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1004D4980;
  v3 = [objc_opt_self() mainBundle];
  v13._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x4C415F5241454C43;
  v4._object = 0xE90000000000004CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v7 = [objc_opt_self() systemRedColor];
  v8 = sub_10003C018(v7, v6._countAndFlagsBits, v6._object, 0.0, 0.0, 375.0, v2);

  v9 = v8;
  [v9 setRole:1];
  aBlock[4] = sub_10017259C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A1430;
  aBlock[3] = &unk_1004705A0;
  v10 = _Block_copy(aBlock);
  [v9 setPointerStyleProvider:v10];
  _Block_release(v10);

  return v9;
}

uint64_t sub_10017259C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A2D60);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_10000F974(&qword_1004AC3B8);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  *v11 = [objc_allocWithZone(UITargetedPreview) initWithView:a1];
  v16 = enum case for UIPointerEffect.TintMode.overlay(_:);
  v17 = type metadata accessor for UIPointerEffect.TintMode();
  (*(*(v17 - 8) + 104))(&v11[v13], v16, v17);
  v11[v14] = 0;
  v11[v15] = 0;
  (*(v6 + 104))(v11, enum case for UIPointerEffect.hover(_:), v5);
  sub_100040E00();
  (*(v6 + 16))(v8, v11, v5);
  v18 = type metadata accessor for UIPointerShape();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = UIPointerStyle.init(effect:shape:)();
  (*(v6 + 8))(v11, v5);
  return v19;
}

uint64_t sub_100172950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100172978()
{
  result = Contexts.UIKit.init()();
  qword_1004D4F48 = result;
  return result;
}

id sub_100172998@<X0>(void *a1@<X8>)
{
  if (qword_1004A0398 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F48;
  *a1 = qword_1004D4F48;

  return v2;
}

unint64_t sub_100172A08(uint64_t a1)
{
  result = sub_100172A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100172A30()
{
  result = qword_1004AC3E8;
  if (!qword_1004AC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC3E8);
  }

  return result;
}

uint64_t sub_100172A8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 504))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100172AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_100172BCC()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4F50 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100172C4C@<X0>(void *a1@<X8>)
{
  if (qword_1004A03A0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F50;
  *a1 = qword_1004D4F50;

  return v2;
}

BOOL sub_100172CBC(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x1F8uLL);
  memcpy(__dst, a2, 0x1F8uLL);
  return sub_100172D90(v4, __dst);
}

unint64_t sub_100172D14(uint64_t a1)
{
  result = sub_100172D3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100172D3C()
{
  result = qword_1004AC418;
  if (!qword_1004AC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC418);
  }

  return result;
}

BOOL sub_100172D90(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!v6)
    {
      sub_100172EAC(a2, v9);
      return 0;
    }

    sub_100172EE4();
    sub_100172EAC(a2, v9);
    sub_100172EAC(a1, v9);
    v7 = static NSObject.== infix(_:_:)();
    sub_100038ECC(a1);
    sub_100038ECC(a2);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    sub_100172EAC(a2, v9);
  }

  memcpy(v9, (a1 + 16), 0x1E0uLL);
  memcpy(__dst, (a2 + 16), sizeof(__dst));
  if (static ComputedCameraProperties.__derived_struct_equals(_:_:)())
  {
    return *(a1 + 496) == *(a2 + 496);
  }

  return 0;
}

unint64_t sub_100172EE4()
{
  result = qword_1004AC420;
  if (!qword_1004AC420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AC420);
  }

  return result;
}

id sub_100172F30()
{
  v1 = OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(UIScrollEdgeElementContainerInteraction) init];
    Strong = swift_unknownObjectUnownedLoadStrong();
    [v4 setScrollView:Strong];

    [v4 setEdge:4];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100172FE8(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Measure17CardContainerView_titleView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for CardTitleView()) init];
  v8 = OBJC_IVAR____TtC7Measure17CardContainerView_copyButton;
  v9 = objc_allocWithZone(type metadata accessor for PlatterCopyButton());
  *&v3[v8] = sub_1001A14D0();
  swift_unknownObjectUnownedInit();
  *&v3[OBJC_IVAR____TtC7Measure17CardContainerView_clearButton] = 0;
  *&v3[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint] = 0;
  v10 = OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView;
  v11 = [objc_allocWithZone(UIGlassContainerEffect) init];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v3[v10] = v12;
  v13 = OBJC_IVAR____TtC7Measure17CardContainerView_contentScrollView;
  *&v3[v13] = [objc_allocWithZone(UIScrollView) init];
  *&v3[OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction] = 0;
  *&v3[OBJC_IVAR____TtC7Measure17CardContainerView_actualContentView] = a1;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectUnownedAssign();
  v16 = v15;
  sub_1001731B0();
  sub_10017339C();

  return v16;
}

id sub_1001731B0()
{
  v1 = v0;
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v2];

  result = swift_unknownObjectUnownedLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [v1 addSubview:result];

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong || (v6 = Strong, v7 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_actualContentView], sub_100018630(0, &qword_1004A7550), v8 = v7, v9 = static NSObject.== infix(_:_:)(), v6, v8, (v9 & 1) == 0))
  {
    result = swift_unknownObjectUnownedLoadStrong();
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v10 = result;
    [result addSubview:*&v1[OBJC_IVAR____TtC7Measure17CardContainerView_actualContentView]];
  }

  result = swift_unknownObjectUnownedLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  [result setScrollEnabled:1];

  [*&v1[OBJC_IVAR____TtC7Measure17CardContainerView_contentScrollView] setScrollEnabled:1];
  v12 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView];
  v13 = [v12 contentView];
  [v13 addSubview:*&v1[OBJC_IVAR____TtC7Measure17CardContainerView_copyButton]];

  v14 = sub_100172F30();
  [v12 addInteraction:v14];

  return [v1 addSubview:v12];
}

void sub_10017339C()
{
  v1 = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = Strong;
  [Strong setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_actualContentView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_copyButton];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = swift_unknownObjectUnownedLoadStrong();
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  [v7 setContentInset:{0.0, 0.0, 76.0, 0.0}];

  v9 = swift_unknownObjectUnownedLoadStrong();
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  v83 = v5;
  [v9 setVerticalScrollIndicatorInsets:{0.0, 0.0, 76.0, 0.0}];

  sub_10000F974(&unk_1004A3F10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003D61E0;
  v12 = swift_unknownObjectUnownedLoadStrong();
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v1 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v11 + 32) = v16;
  v17 = swift_unknownObjectUnownedLoadStrong();
  if (!v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v11 + 40) = v21;
  v22 = swift_unknownObjectUnownedLoadStrong();
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v1 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v11 + 48) = v26;
  v27 = swift_unknownObjectUnownedLoadStrong();
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v1 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v11 + 56) = v31;
  v32 = [v4 leadingAnchor];
  v33 = [v1 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v11 + 64) = v34;
  v35 = [v4 trailingAnchor];
  v36 = [v1 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v11 + 72) = v37;
  v38 = [v4 bottomAnchor];
  v39 = [v1 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v11 + 80) = v40;
  v41 = [v6 heightAnchor];
  v42 = [v41 constraintEqualToConstant:48.0];

  *(v11 + 88) = v42;
  v43 = [v6 topAnchor];
  v44 = [v4 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v11 + 96) = v45;
  v46 = [v6 leadingAnchor];
  v47 = [v4 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:28.0];

  *(v11 + 104) = v48;
  v49 = [v6 trailingAnchor];
  v50 = [v4 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-28.0];

  *(v11 + 112) = v51;
  v52 = [v4 heightAnchor];
  v53 = [v52 constraintEqualToConstant:76.0];

  v54 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint];
  *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint] = v53;
  v55 = v53;

  if (!v55)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v56 = swift_unknownObjectUnownedLoadStrong();
  if (v56)
  {
    v57 = v56;
    sub_100018630(0, &qword_1004A7550);
    v58 = v83;
    v59 = static NSObject.== infix(_:_:)();

    if (v59)
    {
      goto LABEL_18;
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D6240;
  v61 = [v83 topAnchor];
  v62 = swift_unknownObjectUnownedLoadStrong();
  if (!v62)
  {
    goto LABEL_27;
  }

  v63 = v62;
  v64 = [v62 topAnchor];

  v65 = [v61 constraintEqualToAnchor:v64];
  *(inited + 32) = v65;
  v66 = [v83 bottomAnchor];
  v67 = swift_unknownObjectUnownedLoadStrong();
  if (!v67)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v68 = v67;
  v69 = [v67 bottomAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  *(inited + 40) = v70;
  v71 = [v83 widthAnchor];
  v72 = swift_unknownObjectUnownedLoadStrong();
  if (!v72)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v73 = v72;
  v74 = [v72 widthAnchor];

  v75 = [v71 constraintEqualToAnchor:v74];
  *(inited + 48) = v75;
  v76 = [v83 centerXAnchor];
  v77 = swift_unknownObjectUnownedLoadStrong();
  if (v77)
  {
    v78 = v77;
    v79 = [v77 centerXAnchor];

    v80 = [v76 constraintEqualToAnchor:v79];
    *(inited + 56) = v80;
    sub_100103C58(inited);
LABEL_18:
    v81 = objc_opt_self();
    sub_100018630(0, &qword_1004A1838);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v81 activateConstraints:isa];

    return;
  }

LABEL_30:
  __break(1u);
}

void sub_100173DD8(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC7Measure17CardContainerView_clearButton;
  if (*(a1 + OBJC_IVAR____TtC7Measure17CardContainerView_clearButton))
  {
    return;
  }

  v5 = objc_allocWithZone(type metadata accessor for ClearAllButton());
  v6 = sub_1001723A4();
  v7 = *(a1 + v2);
  *(a1 + v2) = v6;

  v8 = *(a1 + v2);
  if (v8)
  {
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v9 = *(a1 + OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView);
  v10 = [v9 contentView];
  if (!*(a1 + v2))
  {
    goto LABEL_19;
  }

  v11 = v10;
  [v10 addSubview:?];

  v12 = *(a1 + OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint);
  if (v12)
  {
    [v12 setConstant:136.0];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v14 = Strong;
  [Strong setContentInset:{0.0, 0.0, 136.0, 0.0}];

  v15 = swift_unknownObjectUnownedLoadStrong();
  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setVerticalScrollIndicatorInsets:{0.0, 0.0, 136.0, 0.0}];

  v17 = *(a1 + v2);
  if (!v17 || (v18 = [v17 heightAnchor], v19 = objc_msgSend(v18, "constraintEqualToConstant:", 48.0), v18, objc_msgSend(v19, "setActive:", 1), v19, (v20 = *(a1 + v2)) == 0) || (v21 = objc_msgSend(v20, "topAnchor"), v22 = objc_msgSend(*(a1 + OBJC_IVAR____TtC7Measure17CardContainerView_copyButton), "bottomAnchor"), v23 = objc_msgSend(v21, "constraintEqualToAnchor:constant:", v22, 12.0), v21, v22, objc_msgSend(v23, "setActive:", 1), v23, (v24 = *(a1 + v2)) == 0) || (v25 = objc_msgSend(v24, "leadingAnchor"), v26 = objc_msgSend(v9, "leadingAnchor"), v27 = objc_msgSend(v25, "constraintEqualToAnchor:constant:", v26, 28.0), v25, v26, objc_msgSend(v27, "setActive:", 1), v27, (v28 = *(a1 + v2)) == 0) || (v29 = objc_msgSend(v28, "trailingAnchor"), v30 = objc_msgSend(v9, "trailingAnchor"), v31 = objc_msgSend(v29, "constraintEqualToAnchor:constant:", v30, -28.0), v29, v30, objc_msgSend(v31, "setActive:", 1), v31, (v32 = *(a1 + v2)) == 0) || (v33 = objc_msgSend(v32, "bottomAnchor"), v34 = objc_msgSend(v9, "bottomAnchor"), v35 = objc_msgSend(v33, "constraintEqualToAnchor:constant:", v34, -28.0), v33, v34, objc_msgSend(v35, "setActive:", 1), v35, (v36 = *(a1 + v2)) == 0))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectWeakAssign();

  [v36 addTarget:a2 action:"clearAll" forControlEvents:64];
}

void sub_1001741E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure17CardContainerView_titleView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for CardTitleView()) init];
  v3 = OBJC_IVAR____TtC7Measure17CardContainerView_copyButton;
  v4 = objc_allocWithZone(type metadata accessor for PlatterCopyButton());
  *(v1 + v3) = sub_1001A14D0();
  swift_unknownObjectUnownedInit();
  *(v1 + OBJC_IVAR____TtC7Measure17CardContainerView_clearButton) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint) = 0;
  v5 = OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView;
  v6 = [objc_allocWithZone(UIGlassContainerEffect) init];
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v6];

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC7Measure17CardContainerView_contentScrollView;
  *(v1 + v8) = [objc_allocWithZone(UIScrollView) init];
  *(v1 + OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_100174334(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1000A2590(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for MeasureObject();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          sub_1000A2590((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v7 + 1;
        sub_1000C0FAC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for MeasureObject();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 2);
        v10 = *(v3 + 3);
        if (v11 >= v10 >> 1)
        {
          sub_1000A2590((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v11 + 1;
        sub_1000C0FAC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100174550(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0, v3, 0);
    v7 = a1 + 48;
    do
    {
      sub_10000F974(&qword_1004AC608);
      sub_10000F974(a3);
      swift_dynamicCast();
      v8 = v14;
      v9 = v15;
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        a2(v10 > 1, v11 + 1, 1);
        v9 = v15;
        v8 = v14;
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[4 * v11];
      *(v12 + 2) = v8;
      *(v12 + 3) = v9;
      v7 += 32;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

double *sub_100174688(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      Double._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

double *sub_100174730(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000A2590(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    type metadata accessor for CATransform3D(0);
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_1000A2590((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 2) = v6 + 1;
      sub_1000C0FAC(&v8, &v2[4 * v6 + 4]);
      v4 += 128;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_100174858(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC7Measure15ReticleAnimator__reticlePulseState;
  KeyPath = swift_getKeyPath();
  v10 = sub_10000F974(&unk_1004AC5F0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1004D5058;
  v12 = *(v10 + 272);

  *&v5[v8] = v12(KeyPath, v11);
  v13 = &v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_snapAnimationKey];
  *v13 = 0xD000000000000015;
  *(v13 + 1) = 0x800000010040A8F0;
  v14 = &v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_unsnapAnimationKey];
  *v14 = 0xD000000000000017;
  *(v14 + 1) = 0x800000010040A910;
  v15 = &v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_goodStateAnimationKey];
  *v15 = 0xD000000000000013;
  *(v15 + 1) = 0x800000010040A930;
  v16 = OBJC_IVAR____TtC7Measure15ReticleAnimator_continueAnimation;
  v17 = String._bridgeToObjectiveC()();
  v18 = objc_opt_self();
  v19 = [v18 animationWithKeyPath:v17];

  *&v5[v16] = v19;
  v20 = OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointAnimation;
  v21 = String._bridgeToObjectiveC()();
  v22 = objc_opt_self();
  v23 = [v22 animationWithKeyPath:v21];

  *&v5[v20] = v23;
  v24 = OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation;
  v25 = String._bridgeToObjectiveC()();
  v26 = [v22 animationWithKeyPath:v25];

  *&v5[v24] = v26;
  v27 = OBJC_IVAR____TtC7Measure15ReticleAnimator_idlePulsateAnimation;
  v28 = String._bridgeToObjectiveC()();
  v29 = [v18 animationWithKeyPath:v28];

  *&v5[v27] = v29;
  v30 = OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation;
  v31 = String._bridgeToObjectiveC()();
  v32 = [v22 animationWithKeyPath:v31];

  *&v5[v30] = v32;
  *&v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer] = a1;
  *&v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer] = a4;
  *&v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer] = a2;
  *&v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer] = a3;
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v33 = a1;
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v37 = objc_msgSendSuper2(&v42, "init");
  sub_100174BDC();

  return v37;
}

id sub_100174BDC()
{
  v1 = _swiftEmptyArrayStorage;
  for (i = &stru_100000020; ; i += 8)
  {
    CATransform3DMakeScale(&v35, *(&off_100465248 + i), *(&off_100465248 + i), 1.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100068CF4(0, *(v1 + 2) + 1, 1, v1);
    }

    v4 = *(v1 + 2);
    v3 = *(v1 + 3);
    if (v4 >= v3 >> 1)
    {
      v1 = sub_100068CF4((v3 > 1), v4 + 1, 1, v1);
    }

    *(v1 + 2) = v4 + 1;
    v5 = &v1[16 * v4];
    v6 = *&v35.m11;
    v7 = *&v35.m13;
    v8 = *&v35.m23;
    *(v5 + 4) = *&v35.m21;
    *(v5 + 5) = v8;
    *(v5 + 2) = v6;
    *(v5 + 3) = v7;
    v9 = *&v35.m31;
    v10 = *&v35.m33;
    v11 = *&v35.m43;
    *(v5 + 8) = *&v35.m41;
    *(v5 + 9) = v11;
    *(v5 + 6) = v9;
    *(v5 + 7) = v10;
    if (i == 304)
    {
      break;
    }
  }

  v12 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_continueAnimation);
  sub_100174688(&off_100465380);
  sub_100018630(0, &qword_1004AE140);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setKeyTimes:isa];

  sub_100174730(v1);

  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v12 setValues:v14];

  [v12 setDuration:1.0];
  v15 = _swiftEmptyArrayStorage;
  for (j = &stru_100000020; ; j += 8)
  {
    CATransform3DMakeScale(&v34, *(&off_100465248 + j), *(&off_100465248 + j), 1.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100068CF4(0, *(v15 + 2) + 1, 1, v15);
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_100068CF4((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[16 * v18];
    v20 = *&v34.m11;
    v21 = *&v34.m13;
    v22 = *&v34.m23;
    *(v19 + 4) = *&v34.m21;
    *(v19 + 5) = v22;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v23 = *&v34.m31;
    v24 = *&v34.m33;
    v25 = *&v34.m43;
    *(v19 + 8) = *&v34.m41;
    *(v19 + 9) = v25;
    *(v19 + 6) = v23;
    *(v19 + 7) = v24;
    if (j == 304)
    {
      break;
    }
  }

  v26 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_idlePulsateAnimation);
  sub_100174688(&off_1004654B8);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v26 setKeyTimes:v27];

  sub_100174730(v15);

  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v26 setValues:v28];

  [v26 setDuration:1.0];
  v29 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v26 setTimingFunction:v29];

  v30 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointAnimation);
  [v30 setDamping:40.0];
  [v30 setStiffness:400.0];
  [v30 setDuration:0.5];
  [v30 setDelegate:v0];
  [v30 setRemovedOnCompletion:0];
  v31 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
  [v31 setDamping:30.0];
  [v31 setStiffness:180.0];
  [v31 settlingDuration];
  [v31 setDuration:?];
  [v31 setDelegate:v0];
  [v31 setRemovedOnCompletion:0];
  v32 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
  [v32 setDamping:24.0];
  [v32 setStiffness:300.0];
  [v32 settlingDuration];
  [v32 setDuration:?];
  [v32 setDelegate:v0];

  return [v32 setRemovedOnCompletion:0];
}

void sub_1001750E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointAnimation);
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v1 setFromValue:isa];

  v3 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v1 setToValue:v3];

  if ([v1 toValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000C0FAC(&v7, &v8);
    swift_dynamicCast();
    v4 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
    CATransform3DMakeScale(&sx, sx.m11, sx.m11, 1.0);
    [v4 setTransform:&sx];
    v5 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v1 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

id sub_10017523C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure15ReticleAnimator__reticlePulseState;
  v3 = *(**&v0[OBJC_IVAR____TtC7Measure15ReticleAnimator__reticlePulseState] + 144);

  v3(v16, v4);

  if (LOBYTE(v16[0]) != 1)
  {
    v6 = *(**&v0[v2] + 200);

    v8 = v6(v7);

    (*(*v8 + 280))(sub_100032520, 0);

    v9 = objc_opt_self();
    [v9 begin];
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v16[4] = sub_100177658;
    v16[5] = v10;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100041180;
    v16[3] = &unk_1004706A0;
    v11 = _Block_copy(v16);
    v12 = v1;

    [v9 setCompletionBlock:v11];
    _Block_release(v11);
    v13 = *&v12[OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer];
    v14 = *&v12[OBJC_IVAR____TtC7Measure15ReticleAnimator_continueAnimation];
    v15 = String._bridgeToObjectiveC()();
    [v13 addAnimation:v14 forKey:v15];

    return [v9 commit];
  }

  return result;
}

uint64_t sub_100175488(uint64_t a1)
{
  v1 = *(**(a1 + OBJC_IVAR____TtC7Measure15ReticleAnimator__reticlePulseState) + 200);

  v3 = v1(v2);

  (*(*v3 + 280))(sub_10003258C, 0);
}

void sub_100175558(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer);
  [v3 removeAllAnimations];
  v4 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
  [v4 removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer) removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer) removeAllAnimations];
  CATransform3DMakeScale(&v43, 1.0, 1.0, 1.0);
  [v4 setTransform:&v43];
  switch(a1)
  {
    case 1:
      v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
      if (qword_1004A0720 != -1)
      {
        swift_once();
      }

      v28 = [qword_1004D52B0 CGColor];
      [v5 setFromValue:v28];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      v29 = qword_1004D52A8;
      v30 = [qword_1004D52A8 CGColor];
      if (qword_1004A0728 != -1)
      {
        swift_once();
      }

      v31 = qword_1004D52B8;

      [v3 setStrokeColor:v30];
      v32 = [v3 strokeColor];
      [v5 setToValue:v32];

      v33 = sub_100175DCC();
      v34 = qword_1004A0730;
      v13 = v33;
      if (v34 != -1)
      {
        swift_once();
      }

      v35 = [qword_1004D52C0 CGColor];
      [v13 setFromValue:v35];

      v36 = [v31 CGColor];
      [v4 setFillColor:v36];

      v37 = [v4 fillColor];
      [v13 setToValue:v37];

      v17 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
      CATransform3DMakeScale(&v43, 1.0, 1.0, 1.0);
      isa = CATransform3D._bridgeToObjectiveC()().super.isa;
      [v17 setFromValue:isa];

      v19 = 1.5;
      v20 = 1.5;
      v21 = 1.5;
      break;
    case 3:
      v22 = sub_100175DCC();
      v23 = qword_1004A0730;
      v13 = v22;
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = [qword_1004D52C0 CGColor];
      [v13 setFromValue:v24];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      if (qword_1004A0728 != -1)
      {
        swift_once();
      }

      v25 = [qword_1004D52B8 CGColor];
      [v4 setFillColor:v25];

      v26 = [v4 fillColor];
      [v13 setToValue:v26];

      v27 = String._bridgeToObjectiveC()();
      [v4 addAnimation:v13 forKey:v27];
      goto LABEL_30;
    case 2:
      v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
      if (qword_1004A0720 != -1)
      {
        swift_once();
      }

      v6 = [qword_1004D52B0 CGColor];
      [v5 setFromValue:v6];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      v7 = qword_1004D52A8;
      v8 = [qword_1004D52A8 CGColor];
      if (qword_1004A0728 != -1)
      {
        swift_once();
      }

      v9 = qword_1004D52B8;

      [v3 setStrokeColor:v8];
      v10 = [v3 strokeColor];
      [v5 setToValue:v10];

      v11 = sub_100175DCC();
      v12 = qword_1004A0738;
      v13 = v11;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = [qword_1004D52C8 CGColor];
      [v13 setFromValue:v14];

      v15 = [v9 CGColor];
      [v4 setFillColor:v15];

      v16 = [v4 fillColor];
      [v13 setToValue:v16];

      v17 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
      CATransform3DMakeScale(&v43, 1.0, 1.0, 1.0);
      v18 = CATransform3D._bridgeToObjectiveC()().super.isa;
      [v17 setFromValue:v18];

      v19 = 1.5;
      v20 = 1.5;
      v21 = 1.0;
      break;
    default:
      return;
  }

  CATransform3DMakeScale(&v42, v19, v20, v21);
  [v3 setTransform:&v42];
  CATransform3DMakeScale(&v42, 1.5, 1.5, 1.0);
  v39 = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v17 setToValue:v39];

  v40 = String._bridgeToObjectiveC()();
  [v3 addAnimation:v5 forKey:v40];

  v41 = String._bridgeToObjectiveC()();
  [v4 addAnimation:v13 forKey:v41];

  v27 = String._bridgeToObjectiveC()();
  [v3 addAnimation:v17 forKey:v27];
LABEL_30:
}

id sub_100175DCC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() animationWithKeyPath:v1];

  v3 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
  [v3 damping];
  [v2 setDamping:?];
  [v3 stiffness];
  [v2 setStiffness:?];
  v4 = v2;
  [v4 settlingDuration];
  [v4 setDuration:?];

  return v4;
}

void sub_100175EBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer);
  [v4 removeAllAnimations];
  v5 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
  [v5 removeAllAnimations];
  v6 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer);
  [v6 removeAllAnimations];
  [*(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer) removeAllAnimations];
  if (!a1 || a1 == 3)
  {
    v44 = v6;
    v22 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
    if (qword_1004A0718 != -1)
    {
      swift_once();
    }

    v23 = [qword_1004D52A8 CGColor];
    [v22 setFromValue:v23];

    if (qword_1004A0720 != -1)
    {
      swift_once();
    }

    v24 = qword_1004D52B0;
    v25 = [qword_1004D52B0 CGColor];
    if (qword_1004A0738 != -1)
    {
      swift_once();
    }

    [v4 setStrokeColor:v25];
    v26 = [v4 strokeColor];
    [v22 setToValue:v26];

    v27 = sub_100175DCC();
    v28 = qword_1004A0728;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = [qword_1004D52B8 CGColor];
    [v29 setFromValue:v30];

    v31 = [qword_1004D52C8 CGColor];
    [v5 setFillColor:v31];

    v32 = [v5 fillColor];
    [v29 setToValue:v32];

    v33 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v22 forKey:v33];

    v34 = String._bridgeToObjectiveC()();
    [v5 addAnimation:v29 forKey:v34];

    v35 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
    CATransform3DMakeScale(&v46, 1.5, 1.5, 1.0);
    isa = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v35 setFromValue:isa];

    CATransform3DMakeScale(&v45, 1.0, 1.0, 1.0);
    [v4 setTransform:&v45];
    CATransform3DMakeScale(&v45, 1.0, 1.0, 1.0);
    v37 = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v35 setToValue:v37];

    v38 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v35 forKey:v38];

    v39 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_idlePulsateAnimation);
    LODWORD(v40) = 2139095039;
    [v39 setRepeatCount:v40];
    v41 = String._bridgeToObjectiveC()();
    [v44 addAnimation:v39 forKey:v41];
  }

  else if (a1 == 1)
  {
    v43 = v6;
    v7 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
    if (qword_1004A0720 != -1)
    {
      swift_once();
    }

    v8 = qword_1004D52B0;
    v9 = [qword_1004D52B0 CGColor];
    [v7 setFromValue:v9];

    v10 = [v8 CGColor];
    if (qword_1004A0738 != -1)
    {
      swift_once();
    }

    [v4 setStrokeColor:v10];
    v11 = [v4 strokeColor];
    [v7 setToValue:v11];

    v12 = sub_100175DCC();
    v13 = qword_1004A0730;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = [qword_1004D52C0 CGColor];
    [v14 setFromValue:v15];

    v16 = [qword_1004D52C8 CGColor];
    [v5 setFillColor:v16];

    v17 = [v5 fillColor];
    [v14 setToValue:v17];

    v18 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v7 forKey:v18];

    v19 = String._bridgeToObjectiveC()();
    [v5 addAnimation:v14 forKey:v19];

    v20 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_idlePulsateAnimation);
    LODWORD(v21) = 2139095039;
    [v20 setRepeatCount:v21];
    v42 = String._bridgeToObjectiveC()();
    [v43 addAnimation:v20 forKey:v42];
  }
}

void sub_100176628(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer);
  [v3 removeAllAnimations];
  v4 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
  [v4 removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer) removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer) removeAllAnimations];
  CATransform3DMakeScale(&v22, 1.0, 1.0, 1.0);
  [v4 setTransform:&v22];
  switch(a1)
  {
    case 0:
      v15 = sub_100175DCC();
      v16 = qword_1004A0728;
      v17 = v15;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = [qword_1004D52B8 CGColor];
      [v17 setFromValue:v18];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      if (qword_1004A0730 != -1)
      {
        swift_once();
      }

      v19 = [qword_1004D52C0 CGColor];
      [v4 setFillColor:v19];

      v20 = [v4 fillColor];
      [v17 setToValue:v20];

      v14 = String._bridgeToObjectiveC()();
      [v4 addAnimation:v17 forKey:v14];

      goto LABEL_23;
    case 1:
      v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
      if (qword_1004A0720 != -1)
      {
        swift_once();
      }

      v8 = [qword_1004D52B0 CGColor];
      [v5 setFromValue:v8];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      v7 = [qword_1004D52A8 CGColor];
      if (qword_1004A0730 == -1)
      {
        goto LABEL_15;
      }

      break;
    case 2:
      v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
      if (qword_1004A0720 != -1)
      {
        swift_once();
      }

      v6 = [qword_1004D52B0 CGColor];
      [v5 setFromValue:v6];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      v7 = [qword_1004D52A8 CGColor];
      if (qword_1004A0730 == -1)
      {
        goto LABEL_15;
      }

      break;
    default:
      return;
  }

  swift_once();
LABEL_15:

  [v3 setStrokeColor:v7];
  v9 = [v3 strokeColor];
  [v5 setToValue:v9];

  v10 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
  CATransform3DMakeScale(&v22, 1.0, 1.0, 1.0);
  isa = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v10 setFromValue:isa];

  CATransform3DMakeScale(&v21, 1.5, 1.5, 1.5);
  [v3 setTransform:&v21];
  CATransform3DMakeScale(&v21, 1.5, 1.5, 1.0);
  v12 = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v10 setToValue:v12];

  v13 = String._bridgeToObjectiveC()();
  [v3 addAnimation:v5 forKey:v13];

  v14 = String._bridgeToObjectiveC()();
  [v3 addAnimation:v10 forKey:v14];
LABEL_23:
}

void sub_100176C0C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer);
  [v3 removeAllAnimations];
  v4 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
  [v4 removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer) removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer) removeAllAnimations];
  if (!a1 || a1 == 3)
  {
    v18 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
    if (qword_1004A0718 != -1)
    {
      swift_once();
    }

    v19 = [qword_1004D52A8 CGColor];
    [v18 setFromValue:v19];

    if (qword_1004A0720 != -1)
    {
      swift_once();
    }

    v20 = qword_1004D52B0;
    v21 = [qword_1004D52B0 CGColor];
    if (qword_1004A0730 != -1)
    {
      swift_once();
    }

    v22 = qword_1004D52C0;

    [v3 setStrokeColor:v21];
    v23 = [v3 strokeColor];
    [v18 setToValue:v23];

    v24 = sub_100175DCC();
    v25 = qword_1004A0728;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = [qword_1004D52B8 CGColor];
    [v26 setFromValue:v27];

    v28 = [v22 CGColor];
    [v4 setFillColor:v28];

    v29 = [v4 fillColor];
    [v26 setToValue:v29];

    v30 = String._bridgeToObjectiveC()();
    [v3 addAnimation:v18 forKey:v30];

    v31 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v26 forKey:v31];

    v32 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
    CATransform3DMakeScale(&v38, 1.5, 1.5, 1.0);
    isa = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v32 setFromValue:isa];

    CATransform3DMakeScale(&v37, 1.0, 1.0, 1.0);
    [v3 setTransform:&v37];
    CATransform3DMakeScale(&v37, 1.0, 1.0, 1.0);
    v34 = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v32 setToValue:v34];

    v35 = String._bridgeToObjectiveC()();
    [v3 addAnimation:v32 forKey:v35];
  }

  else if (a1 == 2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
    if (qword_1004A0720 != -1)
    {
      swift_once();
    }

    v6 = qword_1004D52B0;
    v7 = [qword_1004D52B0 CGColor];
    [v5 setFromValue:v7];

    v8 = [v6 CGColor];
    if (qword_1004A0730 != -1)
    {
      swift_once();
    }

    v9 = qword_1004D52C0;

    [v3 setStrokeColor:v8];
    v10 = [v3 strokeColor];
    [v5 setToValue:v10];

    v11 = sub_100175DCC();
    v12 = qword_1004A0738;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = [qword_1004D52C8 CGColor];
    [v13 setFromValue:v14];

    v15 = [v9 CGColor];
    [v4 setFillColor:v15];

    v16 = [v4 fillColor];
    [v13 setToValue:v16];

    v17 = String._bridgeToObjectiveC()();
    [v3 addAnimation:v5 forKey:v17];

    v36 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v13 forKey:v36];
  }
}

void sub_100177430(void *a1, char a2)
{
  if (a2)
  {
    if (v4 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer), v5 = String._bridgeToObjectiveC()(), v6 = [v4 animationForKey:v5], v5, v6) && (sub_100018630(0, &qword_1004AC600), v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8) || (v9 = String._bridgeToObjectiveC()(), v10 = objc_msgSend(v4, "animationForKey:", v9), v9, v10) && (sub_100018630(0, &qword_1004AC600), v11 = a1, v12 = static NSObject.== infix(_:_:)(), v10, v11, (v12))
    {

      [v4 removeAllAnimations];
    }
  }
}

uint64_t sub_100177620()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100177660(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001776A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000F974(&qword_1004A3F50);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  *(v2 + 64) = v7(KeyPath, v6);
  v8 = sub_10000F974(&qword_1004A11D8);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  *(v2 + 72) = v10(v9, v6);
  v11 = swift_getKeyPath();
  v12 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v2 + 80) = v12(v11, v6);
  v13 = swift_getKeyPath();
  v14 = *(sub_10000F974(&qword_1004A1200) + 272);

  *(v2 + 88) = v14(v13, v6);
  v15 = swift_getKeyPath();
  v16 = *(sub_10000F974(&qword_1004A72F8) + 272);

  *(v2 + 96) = v16(v15, v6);
  v17 = sub_10000F974(&qword_1004A2890);
  v18 = swift_getKeyPath();
  *(v2 + 104) = (*(v17 + 272))(v18, v6);
  sub_10000F974(&qword_1004AC7E8);
  swift_getKeyPath();
  *(v2 + 112) = MutableStateValue.__allocating_init(_:_:)();
  v19 = sub_10000F974(&qword_1004AC7F0);
  v20 = swift_getKeyPath();
  *(v2 + 120) = (*(v19 + 272))(v20, v6);
  *(v2 + 136) = 2;
  *(v2 + 138) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 1;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 1;
  *(v2 + 368) = 0;
  *(v2 + 376) = 1;
  v21 = qword_1004AC620;
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  *(v2 + 128) = a1;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  return StateObserver.init(configuration:)();
}

void sub_100177A70()
{
  v1 = v0;
  v2 = sub_10000F974(&qword_1004A3F50);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 64) = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A11D8);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(v1 + 72) = v8(v7, v4);
  v9 = swift_getKeyPath();
  v10 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v1 + 80) = v10(v9, v4);
  v11 = swift_getKeyPath();
  v12 = *(sub_10000F974(&qword_1004A1200) + 272);

  *(v1 + 88) = v12(v11, v4);
  v13 = swift_getKeyPath();
  v14 = *(sub_10000F974(&qword_1004A72F8) + 272);

  *(v1 + 96) = v14(v13, v4);
  v15 = sub_10000F974(&qword_1004A2890);
  v16 = swift_getKeyPath();
  *(v1 + 104) = (*(v15 + 272))(v16, v4);
  sub_10000F974(&qword_1004AC7E8);
  swift_getKeyPath();
  *(v1 + 112) = MutableStateValue.__allocating_init(_:_:)();
  v17 = sub_10000F974(&qword_1004AC7F0);
  v18 = swift_getKeyPath();
  *(v1 + 120) = (*(v17 + 272))(v18, v4);
  *(v1 + 136) = 2;
  *(v1 + 138) = 0;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 1;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 1;
  *(v1 + 368) = 0;
  *(v1 + 376) = 1;
  v19 = qword_1004AC620;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100177E0C()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  swift_allocObject();
  swift_weakInit();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

void sub_100177F70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x8000000000000018 && *(a2 + 136) < 2u)
  {
    *(a2 + 136) = 2;
    v3 = *(*(a2 + 128) + OBJC_IVAR____TtC7Measure11ReticleView_animator);
    if (v3)
    {
      v4 = v3;
      sub_1001750CC();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100177FF8(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *(v1 + 128);

    [v3 setState:0];
  }

  else
  {
    v4 = a1 & 0x101000000;
    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(19);

    v14._countAndFlagsBits = 0xD000000000000011;
    v14._object = 0x800000010040AA70;
    if (v4)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    if (v4)
    {
      v6 = 0x65736C6166;
    }

    else
    {
      v6 = 1702195828;
    }

    if (v4)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v8 = v7;
    String.append(_:)(*&v6);

    Log.debug(_:isPrivate:)(v14, 0);

    [*(v1 + 128) alpha];
    if (v9 != v5)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 24) = v5;
      v11 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = sub_10017A1D8;
      v18 = v10;
      v14._countAndFlagsBits = _NSConcreteStackBlock;
      v14._object = 1107296256;
      v15 = sub_100041180;
      v16 = &unk_1004708F8;
      v12 = _Block_copy(&v14);

      v13 = [v11 initWithDuration:v12 dampingRatio:0.5 animations:0.6];
      _Block_release(v12);
      [v13 setInterruptible:0];
      [v13 startAnimation];
    }
  }
}

void sub_10017828C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(**(Strong + 80) + 144);

    v1(&v7, v2);

    v3 = v7;
    v4 = v8;
    v5 = v9;
    v6 = v10;
    sub_1001796A8(v7, v8);
  }
}

uint64_t sub_100178354()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100179688;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_1004708A8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001785C4()
{

  v1 = v0 + qword_1004AC620;

  return sub_1000D7B28(v1);
}

uint64_t sub_10017863C()
{
  v0 = StateObserver.deinit();

  sub_1000D7B28(v0 + qword_1004AC620);
  return v0;
}

uint64_t sub_1001786BC()
{
  sub_10017863C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReticleController()
{
  result = qword_1004AC650;
  if (!qword_1004AC650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017875C()
{
  sub_100065060();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

unint64_t sub_100178874()
{
  result = qword_1004AC7D8;
  if (!qword_1004AC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC7D8);
  }

  return result;
}

unint64_t sub_1001788CC()
{
  result = qword_1004AC7E0;
  if (!qword_1004AC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC7E0);
  }

  return result;
}

void sub_100178920()
{

  StateValue.wrappedValue.getter();

  if (v2 >> 62 == 1)
  {
    sub_10001B360(v2);
  }

  else if (v2 >> 62 != 2 || v2 != 0x8000000000000020)
  {
    sub_10001B360(v2);
    *(v0 + 138) = 0;
  }
}

void sub_1001789C8(uint64_t a1)
{
  v1 = *(*(a1 + 128) + OBJC_IVAR____TtC7Measure11ReticleView_animator);
  if (v1)
  {
    v2 = v1;
    sub_10017523C();
  }

  else
  {
    __break(1u);
  }
}

void sub_100178A28(void *a1, void *a2, char a3, int a4)
{
  v6 = v4;
  LODWORD(v111) = a4;
  v106 = a2;
  v107 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v105 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v110 = type metadata accessor for DispatchPredicate();
  *&v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  *&v108 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v12 - 8);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v104 - v16;
  __chkstk_darwin(v18);
  v20 = &v104 - v19;
  __chkstk_darwin(v21);
  *&v112 = &v104 - v22;
  __chkstk_darwin(v23);
  v25 = &v104 - v24;
  v26 = qword_1004AC620;
  if (a3)
  {
    swift_beginAccess();
    sub_1000D7AB8(v6 + v26, v25);
    if ((*(v9 + 48))(v25, 1, v8) == 1)
    {
      sub_1000D7B28(v25);
    }

    else
    {
      sub_1000D7B28(v25);
      v28 = *(v6 + 304);
      v29 = *(v6 + 320);
      v30 = *(v6 + 336);
      v31 = *(v6 + 352);
      LOBYTE(v114[0]) = 0;
      *(v6 + 144) = v28;
      *(v6 + 160) = v29;
      *(v6 + 176) = v30;
      *(v6 + 192) = v31;
      *(v6 + 208) = 0;
    }

    v32 = v112;
    Date.init()();
    (*(v9 + 56))(v32, 0, 1, v8);
    swift_beginAccess();
    sub_1000C1014(v32, v6 + v26);
    swift_endAccess();
    *(v6 + 137) = 0;
    v33 = *(*(v6 + 128) + OBJC_IVAR____TtC7Measure11ReticleView_animator);
    if (v33)
    {
      v34 = v33;
      sub_1001750B8();

      return;
    }

    goto LABEL_44;
  }

  v27 = (v9 + 48);
  if (v111)
  {
    swift_beginAccess();
    sub_1000D7AB8(v6 + v26, v20);
    if ((*v27)(v20, 1, v8) == 1)
    {
      sub_1000D7B28(v20);
    }

    else
    {
      sub_1000D7B28(v20);
      v48 = *(v6 + 304);
      v49 = *(v6 + 320);
      v50 = *(v6 + 336);
      v51 = *(v6 + 352);
      LOBYTE(v114[0]) = 0;
      *(v6 + 144) = v48;
      *(v6 + 160) = v49;
      *(v6 + 176) = v50;
      *(v6 + 192) = v51;
      *(v6 + 208) = 0;
    }

    v52 = v112;
    Date.init()();
    (*(v9 + 56))(v52, 0, 1, v8);
    swift_beginAccess();
    sub_1000C1014(v52, v6 + v26);
    swift_endAccess();
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    v53 = qword_1004D4B20;
    sub_10004D9B4();
    v54 = static OS_dispatch_queue.main.getter();
    v9 = v108;
    *v108 = v54;
    v55 = v109;
    v56 = v110;
    (*(v109 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v110);
    v57 = _dispatchPreconditionTest(_:)();
    (*(v55 + 8))(v9, v56);
    if (v57)
    {
      v58 = *(**(v53 + 56) + 144);

      v58(v114, v59);

      v60 = BYTE3(v114[0]) | BYTE4(v114[0]);
      if (((BYTE3(v114[0]) | BYTE4(v114[0])) & 1) == 0)
      {
        sub_10008AF48(2);
      }

      *(v6 + 137) = (v60 & 1) == 0;
      v61 = *(*(v6 + 128) + OBJC_IVAR____TtC7Measure11ReticleView_animator);
      if (v61)
      {
        v62 = v61;
        sub_1001750CC();

        return;
      }

      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_42;
  }

  v35 = qword_1004AC620;
  swift_beginAccess();
  sub_1000D7AB8(v6 + v26, v17);
  v36 = *v27;
  if ((*v27)(v17, 1, v8) == 1)
  {
    v37 = sub_1000D7B28(v17);
    v38 = *((swift_isaMask & *v107) + 0x2B0);
    *&v39 = (v38)(v37);
    LOBYTE(v115[0]) = 0;
    *(v6 + 144) = v39;
    *(v6 + 160) = v40;
    *(v6 + 176) = v41;
    *(v6 + 192) = v42;
    *(v6 + 208) = 0;
    v43 = v38();
LABEL_38:
    *(v6 + 304) = v44;
    *(v6 + 320) = v45;
    *(v6 + 336) = v46;
    *(v6 + 352) = v47;
    (*((swift_isaMask & *v106) + 0x200))(v43);
    goto LABEL_39;
  }

  sub_1000D7B28(v17);
  v63 = v105;
  Date.init()();
  sub_1000D7AB8(v6 + v35, v14);
  if (v36(v14, 1, v8) == 1)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v17 = v35;
  Date.timeIntervalSince(_:)();
  v65 = v64;
  v66 = *(v9 + 8);
  v66(v63, v8);
  v66(v14, v8);
  v5 = fabs(v65);
  if (v5 > 0.1 && (*(v6 + 137) & 1) == 0 && *(v6 + 136) == 1)
  {
    if (qword_1004A0188 == -1)
    {
LABEL_25:
      v67 = qword_1004D4B20;
      sub_10004D9B4();
      v68 = static OS_dispatch_queue.main.getter();
      v69 = v108;
      *v108 = v68;
      v70 = v109;
      v71 = v110;
      (*(v109 + 104))(v69, enum case for DispatchPredicate.onQueue(_:), v110);
      v72 = _dispatchPreconditionTest(_:)();
      (*(v70 + 8))(v69, v71);
      if ((v72 & 1) == 0)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v73 = *(**(v67 + 56) + 144);

      v73(v115, v74);

      v75 = BYTE3(v115[0]) | BYTE4(v115[0]);
      if (((BYTE3(v115[0]) | BYTE4(v115[0])) & 1) == 0)
      {
        sub_10008AF48(1);
      }

      *(v6 + 137) = (v75 & 1) == 0;
      goto LABEL_29;
    }

LABEL_42:
    swift_once();
    goto LABEL_25;
  }

LABEL_29:
  if (v5 > 0.5)
  {
    v76 = *(v6 + 136);
    if (v76 == 3)
    {
      v77 = 2;
    }

    else
    {
      if (v76 != 1)
      {
LABEL_37:
        v89 = v112;
        (*(v9 + 56))(v112, 1, 1, v8);
        swift_beginAccess();
        sub_1000C1014(v89, &v17[v6]);
        v90 = swift_endAccess();
        v91 = v107;
        *(v6 + 137) = 0;
        v92 = *((swift_isaMask & *v91) + 0x2B0);
        *&v93 = (v92)(v90);
        LOBYTE(v115[0]) = 0;
        *(v6 + 144) = v93;
        *(v6 + 160) = v94;
        *(v6 + 176) = v95;
        *(v6 + 192) = v96;
        *(v6 + 208) = 0;
        *&v44 = v92();
        goto LABEL_38;
      }

      v77 = 0;
    }

    *(v6 + 136) = v77;
    goto LABEL_37;
  }

  if (*(v6 + 208))
  {
    return;
  }

  v78 = *(v6 + 192);
  v111 = *(v6 + 176);
  v112 = v78;
  v79 = *(v6 + 160);
  v109 = *(v6 + 144);
  v110 = v79;
  spring(tension:friction:velocity:elapsed:)(400.0, 40.0, 0.0, v5);
  (*((swift_isaMask & *v107) + 0x2B0))();
  slerp(transform1:transform2:percent:)();
  v111 = v81;
  v112 = v80;
  v109 = v83;
  v110 = v82;
  *(v6 + 304) = v80;
  *(v6 + 320) = v81;
  *(v6 + 336) = v82;
  *(v6 + 352) = v83;
  type metadata accessor for MeasureCamera();
  simd_float4x4.position.getter();
  v112 = v84;
  v85 = *(**(v6 + 88) + 144);

  v85(v115, v86);

  memcpy(v114, v115, sizeof(v114));
  sub_100013C4C(v114);
  v111 = v114[11];
  v110 = v114[12];
  v109 = v114[13];
  v108 = v114[14];
  v87 = *(**(v6 + 88) + 144);

  v87(v113, v88);

  memcpy(v115, v113, sizeof(v115));
  sub_100013C4C(v115);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
LABEL_39:
  CGPoint.init(_:)();
  v98 = v97;
  v100 = v99;
  v101 = *(v6 + 128);
  v102 = objc_opt_self();
  [v102 begin];
  [v102 setAnimationDuration:0.0];
  [*(v101 + OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer) setPosition:{v98, v100}];
  v103 = (v101 + OBJC_IVAR____TtC7Measure11ReticleView_targetOffset);
  *v103 = v98;
  v103[1] = v100;
  [v102 commit];
}

uint64_t sub_1001795BC(unsigned __int8 *a1)
{
  v2 = &_mh_execute_header;
  if (!a1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!a1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!a1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!a1[1])
  {
    v5 = 0;
  }

  return (*(v1 + 16))(v5 | *a1 | v4 | v3 | v2);
}

uint64_t sub_100179638()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

_BYTE *sub_100179678(_BYTE *result)
{
  if (!*result)
  {
    return sub_100178354();
  }

  return result;
}

uint64_t sub_100179690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001796A8(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v6 - 8);
  v8 = v78 - v7;
  v9 = *(**(v2 + 96) + 144);

  v9(v93, v10);

  if (LOBYTE(v93[0]) != 1)
  {

    StateValue.wrappedValue.getter();

    v87 = v8;
    if (v93[0] >> 62 == 1)
    {
      sub_10001B360(v93[0]);
    }

    else if (v93[0] >> 62 != 2 || v93[0] != 0x8000000000000018 && v93[0] != 0x8000000000000020)
    {
      sub_10001B360(v93[0]);
      goto LABEL_9;
    }

    *(v2 + 138) = 1;
LABEL_9:
    v88 = a1;
    v12 = *(v2 + 376);
    if (!a2)
    {
      v24 = (v2 + 224);
      v90 = (v2 + 256);
      v91 = (v2 + 240);
      v89 = (v2 + 272);
      if ((v12 & 1) != 0 || (WorldPointType.isSnappable.getter() & 1) == 0)
      {
        v21 = 0;
        v86.i32[0] = 0;
        v25 = 0;
        v26 = 0;
      }

      else
      {
        v86.i32[0] = 0;
        v25 = 0;
        v26 = 0;
        *(v3 + 136) = 3;
        v21 = 1;
      }

      v23 = (v3 + 288);
      v28 = v88;
LABEL_33:
      v31 = *v23;
      v88 = v23;
      if ((v31 & 1) == 0)
      {
        simd_float4x4.position.getter();
        if (!a2)
        {
          goto LABEL_44;
        }

        if (*(v3 + 136) == 2)
        {
          *v33.f32 = v25;
          v33.i64[1] = v26;
          v34 = vsubq_f32(v33, v32);
          v35 = vsub_f32(v25, *v32.f32);
          if ((COERCE_FLOAT(vmulq_f32(v34, v34).i32[2]) + vaddv_f32(vmul_f32(v35, v35))) < 0.00000011921)
          {
            *(v3 + 368) = (*((swift_isaMask & *a2) + 0x2F0))();
            *(v3 + 376) = 0;
            result = (*((swift_isaMask & *a2) + 0x2B0))();
            v40 = 0;
            LOBYTE(v93[0]) = 0;
LABEL_49:
            *v24 = v36;
            v73 = v90;
            *v91 = v37;
            *v73 = v38;
            *v89 = v39;
            *v23 = v40;
            return result;
          }
        }
      }

      if (v28 && a2)
      {
        v81.i32[0] = v21;
        v41 = *(**(v3 + 88) + 144);

        v42 = v28;
        v43 = a2;
        v41(v92);

        memcpy(v93, v92, 0x200uLL);
        v44 = sub_10008D4F0();
        v45 = sub_100013C4C(v93);
        if (v44)
        {
          v80.i64[0] = v42;
          *v46.i64 = (*((swift_isaMask & *v43) + 0x2B0))(v45);
          v84 = v47;
          v85 = v46;
          v82 = v49;
          v83 = v48;
          v50 = [v44 camera];
          [v50 transform];
          v78[2] = v52;
          v79 = v51;
          v78[0] = v54;
          v78[1] = v53;

          simd_float4x4.position.getter();
          v79 = v55;
          v56 = simd_float4x4.position.getter();
          v58 = vsubq_f32(v79, v57);
          v59 = vmulq_f32(v58, v58);
          v60 = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
          v61 = *(v3 + 128);
          v62 = (*((swift_isaMask & *v43) + 0x2C0))(v56);
          v63 = (*(*v62 + 216))(v62);

          if (v63)
          {
            v64 = *(v63 + 48);
          }

          else
          {
            v64 = 7;
          }

          sub_10017AFBC(v64, *v85.i64, *v84.i64, *v83.i64, *v82.i64, v60);
          if (*(v3 + 138))
          {

            StateValue.wrappedValue.getter();

            if ((v92[0] & 0x8000000000000000) == 0)
            {
              sub_10001B360(v92[0]);
LABEL_60:
              v65 = v24;
              [v61 setState:0];
              *(v3 + 137) = 0;
              v74 = type metadata accessor for Date();
              v75 = v87;
              (*(*(v74 - 8) + 56))(v87, 1, 1, v74);
              v76 = qword_1004AC620;
              swift_beginAccess();
              sub_1000C1014(v75, v3 + v76);
              swift_endAccess();
              goto LABEL_61;
            }

            if (v92[0] != 0x8000000000000010)
            {
              goto LABEL_60;
            }
          }

          else if ((*((swift_isaMask & *v43) + 0xD0))() != 4)
          {
            v65 = v24;

            StateValue.wrappedValue.getter();

            if (!LOBYTE(v92[0]))
            {
              [v61 setState:1];
            }

            goto LABEL_61;
          }

          v65 = v24;
          [v61 setState:3];
LABEL_61:
          v77 = v80.i64[0];
          sub_100178A28(v43, v80.i64[0], v86.i8[0], v81.i32[0]);

          goto LABEL_45;
        }
      }

LABEL_44:
      v65 = v24;
      v61 = *(v3 + 128);
      [v61 setState:0];
      *(v3 + 137) = 0;
      v66 = type metadata accessor for Date();
      v67 = v87;
      (*(*(v66 - 8) + 56))(v87, 1, 1, v66);
      v68 = qword_1004AC620;
      swift_beginAccess();
      sub_1000C1014(v67, v3 + v68);
      swift_endAccess();
LABEL_45:
      v69 = *&v61[OBJC_IVAR____TtC7Measure11ReticleView_currentDiameter];
      v70 = *(**(v3 + 112) + 400);

      v71 = v70(v92);
      *v72 = v69;
      v71(v92, 0);

      if (a2)
      {
        *(v3 + 368) = (*((swift_isaMask & *a2) + 0x2F0))(result);
        *(v3 + 376) = 0;
        result = (*((swift_isaMask & *a2) + 0x2B0))();
        v40 = 0;
        LOBYTE(v92[0]) = 0;
      }

      else
      {
        *(v3 + 368) = 0;
        v40 = 1;
        *(v3 + 376) = 1;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
      }

      v24 = v65;
      v23 = v88;
      goto LABEL_49;
    }

    v13 = (*((swift_isaMask & *a2) + 0x2F0))();
    v14 = *(v2 + 224);
    v85 = *(v2 + 240);
    v86 = v14;
    v91 = (v2 + 240);
    v15 = *(v2 + 256);
    v90 = (v2 + 256);
    v83 = *(v2 + 272);
    v84 = v15;
    v89 = (v2 + 272);
    v16 = *(v2 + 288);
    (*((swift_isaMask & *a2) + 0x2B0))();
    LOBYTE(v93[0]) = 0;
    if (v12)
    {
      v21 = 0;
      if (WorldPointType.isSnappable.getter())
      {
        v22 = 1;
        v86.i32[0] = 1;
        v23 = (v2 + 288);
LABEL_26:
        v24 = (v2 + 224);
LABEL_27:
        v28 = v88;
LABEL_28:
        *(v2 + 136) = v22;
LABEL_32:
        (*((swift_isaMask & *a2) + 0x2B0))();
        simd_float4x4.position.getter();
        v26 = v29;
        v25 = v30;
        goto LABEL_33;
      }

      v86.i32[0] = 0;
      v23 = (v2 + 288);
      goto LABEL_31;
    }

    v79 = v18;
    v80 = v17;
    v81 = v20;
    v82 = v19;
    if ((WorldPointType.isSnappable.getter() & 1) == 0)
    {
      v21 = 0;
      v23 = (v2 + 288);
      if (WorldPointType.isSnappable.getter())
      {
        v22 = 1;
        v86.i32[0] = 1;
        goto LABEL_26;
      }

      v86.i32[0] = 0;
LABEL_31:
      v24 = (v2 + 224);
      v28 = v88;
      goto LABEL_32;
    }

    v23 = (v2 + 288);
    if ([objc_opt_self() jasperAvailable])
    {
      v24 = (v2 + 224);
      if ((v13 - 3) < 6)
      {
        if ((0x2Du >> (v13 - 3)))
        {
          v27 = 0;
          goto LABEL_64;
        }

        v27 = 1;
        if (!v13)
        {
LABEL_70:
          v86.i32[0] = 0;
          v21 = 1;
          v22 = 3;
          goto LABEL_27;
        }

LABEL_64:
        v21 = 0;
        if (v16)
        {
          v28 = v88;
          if (v27)
          {
LABEL_66:
            v22 = 1;
            v86.i32[0] = 1;
            goto LABEL_28;
          }
        }

        else
        {
          v28 = v88;
          if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v86, v80), vceqq_f32(v85, v79)), vandq_s8(vceqq_f32(v84, v82), vceqq_f32(v83, v81)))) & 0x80000000) == 0 && v27)
          {
            goto LABEL_66;
          }
        }

        v86.i32[0] = 0;
        goto LABEL_32;
      }

      v27 = 1;
    }

    else
    {
      v27 = v13 != 3;
      v24 = (v2 + 224);
    }

    if (!v13)
    {
      goto LABEL_70;
    }

    goto LABEL_64;
  }

  return result;
}

uint64_t sub_10017A1A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017A21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10017A29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MeasurementCapture()
{
  result = qword_1004AC850;
  if (!qword_1004AC850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017A358()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10017A3C4(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  if (Width >= CGImageGetHeight(a1))
  {
    CGImageGetHeight(a1);
    CGImageGetHeight(a1);
    CGImageGetHeight(a1);
    CGSize.init(_:_:)();
    CGRect.init(centerPoint:size:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    CGImageGetWidth(a1);
    CGImageGetHeight(a1);
    CGSize.init(_:_:)();
    v28 = v27;
    v30 = v29;
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v39.size.width = v28;
    v39.size.height = v30;
    MinX = CGRectGetMinX(v39);
    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    v32 = MinX - CGRectGetMinX(v40);
    v41.origin.x = 0.0;
    v41.origin.y = 0.0;
    v41.size.width = v28;
    v41.size.height = v30;
    MaxX = CGRectGetMaxX(v41);
    v42.origin.x = v20;
    v42.origin.y = v22;
    v42.size.width = v24;
    v42.size.height = v26;
    v34 = CGRectGetMaxX(v42);
    if (v32 > 0.0 || MaxX - v34 < 0.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    CGImageGetWidth(a1);
    CGImageGetWidth(a1);
    CGImageGetWidth(a1);
    CGSize.init(_:_:)();
    CGRect.init(centerPoint:size:)();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    CGImageGetWidth(a1);
    CGImageGetHeight(a1);
    CGSize.init(_:_:)();
    v12 = v11;
    v14 = v13;
    v35.origin.x = 0.0;
    v35.origin.y = 0.0;
    v35.size.width = v12;
    v35.size.height = v14;
    MinY = CGRectGetMinY(v35);
    v36.origin.x = v4;
    v36.origin.y = v6;
    v36.size.width = v8;
    v36.size.height = v10;
    v16 = MinY - CGRectGetMinY(v36);
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v37.size.width = v12;
    v37.size.height = v14;
    MaxY = CGRectGetMaxY(v37);
    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v10;
    v18 = CGRectGetMaxY(v38);
    if (v16 > 0.0 || MaxY - v18 < 0.0)
    {
LABEL_9:
      CGRect.centerPoint.getter();
      CGRect.init(centerPoint:size:)();
    }
  }
}

uint64_t sub_10017A6A8(uint64_t a1, uint64_t a2, char a3)
{
  sub_10000F974(&qword_1004AC888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  *(inited + 32) = kCGImageSourceCreateThumbnailWithTransform;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCGImageSourceCreateThumbnailFromImageAlways;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kCGImageSourceThumbnailMaxPixelSize;
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = 800;
  v5 = kCGImageSourceCreateThumbnailWithTransform;
  v6 = kCGImageSourceCreateThumbnailFromImageAlways;
  v7 = kCGImageSourceThumbnailMaxPixelSize;
  sub_10019A62C(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AE180);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_10017AF10();
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = CGImageSourceCreateWithData(isa, 0);

  if (v10)
  {
    v11 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v11;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v14 = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

LABEL_5:
      if ((a3 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_10017AD48();
    goto LABEL_11;
  }

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_11:

  return 0;
}

void sub_10017AD48()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = type metadata accessor for MeasurementCapture();
  URL._bridgeToObjectiveC()(*(v1 + 20));
  v3 = v2;
  v13 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v13];

  if (v4)
  {
    v5 = v13;
  }

  else
  {
    v7 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  URL._bridgeToObjectiveC()(v6);
  v9 = v8;
  v13 = 0;
  v10 = [v0 removeItemAtURL:v8 error:&v13];

  if (v10)
  {
    v11 = v13;
  }

  else
  {
    v12 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10017AEB0()
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

unint64_t sub_10017AF10()
{
  result = qword_1004A0B80;
  if (!qword_1004A0B80)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0B80);
  }

  return result;
}

void sub_10017AFBC(char a1, double a2, double a3, double a4, double a5, float a6)
{
  v7 = v6;
  v10 = (1.0 / (a6 + 0.3)) + 0.5;
  if (qword_1004A0760 != -1)
  {
    swift_once();
  }

  v11 = v10;
  qword_1004D52E0(a6);
  if (qword_1004A0768 != -1)
  {
    v37 = v12;
    swift_once();
    v12 = v37;
  }

  v13 = v12;
  *&v6[OBJC_IVAR____TtC7Measure11ReticleView_currentDiameter] = (v12 * *&dword_1004D52F0) + (v12 * *&dword_1004D52F0);
  v14 = objc_opt_self();
  [v14 begin];
  [v14 setAnimationDuration:0.0];
  v15 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer;
  v16 = *&v7[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer];
  CATransform3DMakeScale(__dst, v11, v11, 1.0);
  [v16 setTransform:__dst];

  [v14 commit];
  simd_float4x4.up.getter();
  simd_float4x4.position.getter();
  createTransform(normal:forward:position:)();
  simd_float4x4.up.getter();
  v17.i32[3] = 0;
  v41 = v17;
  simd_float4x4.forward.getter();
  v18.i32[3] = 0;
  v40 = v18;
  simd_float4x4.right.getter();
  v19.i64[0] = vsubq_f32(0, v19).u64[0];
  v19.f32[2] = 0.0 - v19.f32[2];
  v19.i32[3] = 0;
  v39 = v19;
  simd_float4x4.position.getter();
  v20.i32[3] = 1.0;
  v38 = v20;
  v21 = [objc_opt_self() jasperAvailable];
  v22 = &v7[OBJC_IVAR____TtC7Measure11ReticleView_currentReticleTransform];
  if (v21)
  {
    sub_10017D428(a1);
    slerp(transform1:transform2:percent:)();
  }

  else
  {
    v24 = v40;
    v25 = v41;
    v26 = v38;
    v23 = v39;
  }

  *v22 = v23;
  v22[1] = v24;
  v22[2] = v25;
  v22[3] = v26;
  type metadata accessor for MeasureCamera();
  v27 = *(**&v7[OBJC_IVAR____TtC7Measure11ReticleView__frameState] + 144);

  v27(__src, v28);

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  static MeasureCamera.getLayerTransform(for:view:)();
  CATransform3DScale(__src, &aBlock, v13, v13, 1.0);
  if (![v7 state])
  {
    [*&v7[OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer] removeAllAnimations];
    [*&v7[OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView] _removeAllRetargetableAnimations:1];
    [*&v7[v15] removeAllAnimations];
    sub_10017D4E4(&__src[0].m11);
  }

  v29 = objc_opt_self();
  v30 = swift_allocObject();
  v31 = *&__src[0].m33;
  *(v30 + 88) = *&__src[0].m31;
  *(v30 + 104) = v31;
  v32 = *&__src[0].m43;
  *(v30 + 120) = *&__src[0].m41;
  *(v30 + 136) = v32;
  v33 = *&__src[0].m13;
  *(v30 + 24) = *&__src[0].m11;
  *(v30 + 40) = v33;
  v34 = *&__src[0].m23;
  *(v30 + 56) = *&__src[0].m21;
  *(v30 + 16) = v7;
  *(v30 + 72) = v34;
  *&aBlock.m21 = sub_10017EBD8;
  *&aBlock.m22 = v30;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100041180;
  *&aBlock.m14 = &unk_100470BB0;
  v35 = _Block_copy(&aBlock);
  v36 = v7;

  [v29 _animateUsingSpringInteractive:0 animations:v35 completion:0];
  _Block_release(v35);
}

unint64_t sub_10017B470@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10017E61C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_10017B508(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Measure11ReticleView__state;
  if (*&v1[OBJC_IVAR____TtC7Measure11ReticleView__state] != a1)
  {
    v3 = v1;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v8 = *&v1[OBJC_IVAR____TtC7Measure11ReticleView_animator];
        if (v8)
        {
          v7 = v8;
          sub_100175EBC([v3 state]);
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      if (a1 == 3)
      {
        v10 = *&v1[OBJC_IVAR____TtC7Measure11ReticleView_animator];
        if (v10)
        {
          v7 = v10;
          sub_100176628([v3 state]);
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (!a1)
      {
        [v1 frame];
        v5 = CGRectGetWidth(v11) * 0.5;
        [v1 frame];
        [*&v1[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer] setPosition:{v5, CGRectGetHeight(v12) * 0.5}];
        v6 = *&v1[OBJC_IVAR____TtC7Measure11ReticleView_animator];
        if (v6)
        {
          v7 = v6;
          sub_100175558([v3 state]);
LABEL_15:

          *&v3[v2] = a1;
          return;
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (a1 == 1)
      {
        v9 = *&v1[OBJC_IVAR____TtC7Measure11ReticleView_animator];
        if (v9)
        {
          v7 = v9;
          sub_100176C0C([v3 state]);
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

LABEL_21:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

uint64_t sub_10017B6E0(unint64_t a1)
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if (result)
  {
    if (a1 - 1 >= 4)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a1 <= 4 && ((1 << a1) & 0x1A) != 0)
  {
LABEL_6:
    v4 = OBJC_IVAR____TtC7Measure11ReticleView__orientation;
    if (*&v1[OBJC_IVAR____TtC7Measure11ReticleView__orientation] != a1)
    {
      [v1 frame];
      v5 = CGRectGetWidth(v14) * 0.5;
      [v1 frame];
      v6 = CGRectGetHeight(v15) * 0.5;
      [*&v1[OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer] setPosition:{v5, v6}];
      [*&v1[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer] setPosition:{v5, v6}];
      SIMD2<>.init(_:)();
      *&v1[OBJC_IVAR____TtC7Measure11ReticleView_searchArea] = v7;
      v8 = *(**&v1[OBJC_IVAR____TtC7Measure11ReticleView__input] + 200);

      v10 = v8(v9);

      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      v12 = *(*v10 + 280);
      v13 = v1;
      v12(sub_10017E664, v11);

      *&v1[v4] = a1;
    }
  }

  return result;
}

uint64_t sub_10017B930(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure11ReticleView__state] = 0;
  v11 = OBJC_IVAR____TtC7Measure11ReticleView_currentDiameter;
  if (qword_1004A0768 != -1)
  {
    swift_once();
  }

  v12 = *&dword_1004D52F0;
  *&v5[v11] = *&dword_1004D52F0 + *&dword_1004D52F0;
  v13 = &v5[OBJC_IVAR____TtC7Measure11ReticleView_targetOffset];
  *v13 = 0;
  v13[1] = 0;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_snapTimer] = 0;
  v14 = OBJC_IVAR____TtC7Measure11ReticleView_snapTimestamp;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC7Measure11ReticleView__frameState;
  KeyPath = swift_getKeyPath();
  v18 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v19 = qword_1004D5058;
  v20 = *(v18 + 272);
  swift_retain_n();
  *&v5[v16] = v20(KeyPath, v19);
  v21 = OBJC_IVAR____TtC7Measure11ReticleView__input;
  v22 = swift_getKeyPath();
  v23 = sub_10000F974(&unk_1004A72D0);
  *&v5[v21] = (*(v23 + 272))(v22, v19);
  v24 = &v5[OBJC_IVAR____TtC7Measure11ReticleView_currentReticleTransform];
  v24[2] = 0u;
  v24[3] = 0u;
  *v24 = 0u;
  v24[1] = 0u;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView__orientation] = 0;
  v25 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
  *&v5[v25] = [objc_allocWithZone(CATransformLayer) init];
  v26 = OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer;
  *&v5[v26] = [objc_allocWithZone(CATransformLayer) init];
  v27 = OBJC_IVAR____TtC7Measure11ReticleView_reticleShapeLayer;
  *&v5[v27] = [objc_allocWithZone(CAShapeLayer) init];
  v28 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointLayer;
  *&v5[v28] = [objc_allocWithZone(CAShapeLayer) init];
  v29 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer;
  *&v5[v29] = [objc_allocWithZone(CALayer) init];
  v5[OBJC_IVAR____TtC7Measure11ReticleView_isGoingActive] = 0;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_transformChangeDuration] = 0x3FB999999999999ALL;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_transformChangeDurationAfterIdle] = 0x3FC999999999999ALL;
  v30 = &v5[OBJC_IVAR____TtC7Measure11ReticleView_searchArea];
  *v30 = 0;
  *(v30 + 2) = 1106247680;
  v31 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView;
  *&v5[v31] = [objc_allocWithZone(type metadata accessor for TransformLayerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_animatingProperties] = 0;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_animator] = 0;
  v136.receiver = v5;
  v136.super_class = ObjectType;
  v119 = a2;
  v32 = a2;
  v33 = a3;
  v34 = a3;
  v35 = a4;
  v36 = objc_msgSendSuper2(&v136, "initWithFrame:", a1, v32, v34, a4);
  [v36 setAutoresizingMask:18];
  [v36 setUserInteractionEnabled:0];
  v37 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView;
  v38 = *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView];
  [v36 bounds];
  [v38 setFrame:?];

  [v36 addSubview:*&v36[v37]];
  v39 = [*&v36[v37] layer];
  objc_opt_self();
  v40 = swift_dynamicCastObjCClassUnconditional();
  v41 = *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer];
  v122 = OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer;
  *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer] = v40;
  v42 = v39;

  [v40 setAnchorPoint:{0.0, 0.0}];
  if (qword_1004A0770 != -1)
  {
    swift_once();
  }

  v43 = v12;
  v44 = *&qword_1004D52F8;
  v45 = [objc_allocWithZone(UIBezierPath) init];
  v46 = objc_opt_self();
  v47 = [v46 jasperAvailable];
  v48 = Float.degreesToRadians.unsafeMutableAddressor();
  v49 = *v48;
  v50 = ((v44 + 0.0) * *v48);
  v51 = objc_opt_self();
  v52 = v51;
  if (v47)
  {
    v53 = 180.0;
    v54 = ((180.0 - v44) * v49);
    v55 = v43;
    v56 = v50;
  }

  else
  {
    v57 = [v51 bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v43 clockwise:{v50, ((90.0 - v44) * v49)}];
    [v45 appendPath:v57];

    v58 = [v52 bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v43 clockwise:{((v44 + 90.0) * *v48), ((180.0 - v44) * *v48)}];
    [v45 appendPath:v58];

    v56 = ((v44 + 180.0) * *v48);
    v53 = 270.0;
    v54 = ((270.0 - v44) * *v48);
    v51 = v52;
    v55 = v43;
  }

  v59 = [v51 bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v55 clockwise:{v56, v54}];
  [v45 appendPath:v59];

  v60 = [v52 bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v43 clockwise:{((v53 + v44) * *v48), ((360.0 - v44) * *v48)}];
  [v45 appendPath:v60];

  v61 = [objc_allocWithZone(CALayer) init];
  v121 = [objc_allocWithZone(CALayer) init];
  v62 = OBJC_IVAR____TtC7Measure11ReticleView_reticleShapeLayer;
  v63 = *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleShapeLayer];
  v64 = [v45 CGPath];
  [v63 setPath:v64];

  if ([v46 jasperAvailable])
  {
    [*&v36[v62] setLineCap:kCALineCapRound];
  }

  v65 = qword_1004A0758;
  v66 = *&v36[v62];
  if (v65 != -1)
  {
    swift_once();
  }

  [v66 setLineWidth:*&dword_1004D52DC];

  v67 = qword_1004A0710;
  v68 = *&v36[v62];
  if (v67 != -1)
  {
    swift_once();
  }

  v118 = v45;
  v69 = [qword_1004D52A0 CGColor];
  [v68 setFillColor:v69];

  v70 = qword_1004A0718;
  v71 = *&v36[v62];
  if (v70 != -1)
  {
    swift_once();
  }

  v72 = [qword_1004D52A8 CGColor];
  [v71 setStrokeColor:v72];

  [*&v36[v62] setCompositingFilter:kCAFilterPlusL];
  v73 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
  v74 = *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer];
  CGPoint.init(_:)();
  v75 = v74;
  * infix(_:_:)();
  static CGPoint.- infix(_:_:)();
  [v75 setBounds:?];

  [*&v36[v122] addSublayer:*&v36[v73]];
  [*&v36[v122] addSublayer:v61];
  [v61 addSublayer:v121];
  [v121 addSublayer:*&v36[v62]];
  v137.origin.x = a1;
  v137.origin.y = v119;
  v137.size.width = v33;
  v137.size.height = v35;
  v76 = CGRectGetWidth(v137) * 0.5;
  v138.origin.x = a1;
  v138.origin.y = v119;
  v138.size.width = v33;
  v138.size.height = v35;
  [*&v36[v122] setPosition:{v76, CGRectGetHeight(v138) * 0.5}];
  [*&v36[v62] setPosition:{0.0, 0.0}];
  v120 = v61;
  [v61 setPosition:{0.0, 0.0}];
  [v121 setPosition:{0.0, 0.0}];
  SIMD2<>.init(_:)();
  *&v36[OBJC_IVAR____TtC7Measure11ReticleView_searchArea] = v77;
  v78 = *(**&v36[OBJC_IVAR____TtC7Measure11ReticleView__input] + 200);

  v80 = v78(v79);

  v81 = swift_allocObject();
  *(v81 + 16) = v36;
  v82 = *(*v80 + 280);
  v83 = v36;
  v82(sub_10017EC18, v81);

  if (qword_1004A0778 != -1)
  {
    swift_once();
  }

  v84 = [objc_opt_self() bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:*&dword_1004D5300 clockwise:{0.0, 6.28318531}];
  v85 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointLayer;
  v86 = *&v83[OBJC_IVAR____TtC7Measure11ReticleView_snapPointLayer];
  v117 = v84;
  v87 = [v84 CGPath];
  [v86 setPath:v87];

  v88 = qword_1004A0728;
  v89 = *&v83[v85];
  if (v88 != -1)
  {
    swift_once();
  }

  v90 = [qword_1004D52B8 CGColor];
  [v89 setFillColor:v90];

  v91 = *&v83[v85];
  v92 = objc_opt_self();
  v93 = v91;
  v94 = [v92 clearColor];
  v95 = [v94 CGColor];

  [v93 setStrokeColor:v95];
  v96 = [objc_allocWithZone(CALayer) init];
  v97 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer;
  v98 = *&v83[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer];
  *&v83[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer] = v96;
  v99 = v96;

  [v99 addSublayer:*&v83[v85]];
  [*&v83[v97] setPosition:{0.0, 0.0}];
  v100 = [v83 layer];
  [v100 addSublayer:*&v83[v97]];

  v101 = *&v36[v62];
  v102 = *&v83[v85];
  v103 = objc_allocWithZone(type metadata accessor for ReticleAnimator());
  v104 = v101;
  v105 = v120;
  v106 = v121;
  v107 = sub_100174858(v104, v105, v106, v102);
  v108 = *&v83[OBJC_IVAR____TtC7Measure11ReticleView_animator];
  *&v83[OBJC_IVAR____TtC7Measure11ReticleView_animator] = v107;

  [v83 setState:0];
  v109 = *&v36[v122];
  [v109 transform];
  v123[2] = v130;
  v123[3] = v131;
  v123[4] = v132;
  v123[0] = aBlock;
  v123[1] = v129;
  v126 = v134;
  v127 = v135;
  v124 = v133;
  v125 = 0xBF647AE147AE147BLL;
  [v109 setTransform:v123];

  sub_10017C944();
  v110 = objc_opt_self();
  v111 = swift_allocObject();
  *(v111 + 16) = v83;
  v112 = swift_allocObject();
  *(v112 + 16) = sub_10017E9FC;
  *(v112 + 24) = v111;
  *&v130 = sub_100031688;
  *(&v130 + 1) = v112;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v129 = sub_1000DC708;
  *(&v129 + 1) = &unk_100470A70;
  v113 = _Block_copy(&aBlock);
  v114 = v83;

  [v110 performWithoutAnimation:v113];
  _Block_release(v113);
  LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

  if (v101)
  {
    __break(1u);
  }

  else
  {
    v116 = [objc_opt_self() defaultCenter];
    [v116 addObserver:v114 selector:"updateForCurrentOrientation" name:UIDeviceOrientationDidChangeNotification object:0];

    return v114;
  }

  return result;
}