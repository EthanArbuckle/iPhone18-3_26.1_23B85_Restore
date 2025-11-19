uint64_t sub_100123688(void *a1, float a2)
{
  v3 = v2;
  v6 = sub_10000F974(&unk_1004A3EC0);
  __chkstk_darwin(v6 - 8);
  v41 = v38 - v7;
  v8 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v8 - 8);
  v10 = v38 - v9;
  v40 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  v11 = *(v40 - 8);
  v12 = __chkstk_darwin(v40);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v38 - v16;
  v18 = *((swift_isaMask & *a1) + 0xB8);
  v38[1] = (swift_isaMask & *a1) + 184;
  v39 = v18;
  v19 = v18(v15);
  v21 = v20;
  v22 = OBJC_IVAR____TtC7Measure14MetricsManager_personHeightMetrics;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (!*(v23 + 16))
  {

    return swift_endAccess();
  }

  v38[0] = v3;
  v24 = sub_100198230(v19, v21);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_10012A110(*(v23 + 56) + *(v11 + 72) * v24, v14, type metadata accessor for MetricsManager.PersonHeightMetric);
  sub_10012A178(v14, v17, type metadata accessor for MetricsManager.PersonHeightMetric);
  swift_endAccess();
  v27 = *(v17 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_100067544(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_100067544((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  *&v27[4 * v29 + 32] = a2;
  *(v17 + 2) = v27;
  Date.init()();
  v30 = type metadata accessor for Date();
  (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
  v31 = v40;
  v32 = sub_10006CA08(v10, &v17[*(v40 + 40)], &unk_1004A3D90);
  v33 = v39(v32);
  v35 = v34;
  v36 = v41;
  sub_10012A110(v17, v41, type metadata accessor for MetricsManager.PersonHeightMetric);
  (*(v11 + 56))(v36, 0, 1, v31);
  swift_beginAccess();
  sub_100124144(v36, v33, v35);
  swift_endAccess();
  return sub_10012A1E0(v17, type metadata accessor for MetricsManager.PersonHeightMetric);
}

uint64_t sub_100123A94(void *a1)
{
  v2 = sub_10000F974(&unk_1004A3EC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  v30 = *(v5 - 1);
  v6 = __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((swift_isaMask & *a1) + 0xB8);
  v10 = v9(v6);
  v28 = v11;
  v29 = v10;
  v12 = v5[9];
  Date.init()();
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&v8[v12], 0, 1, v13);
  v14(&v8[v5[10]], 1, 1, v13);
  v14(&v8[v5[11]], 1, 1, v13);
  v15 = (v14)(&v8[v5[12]], 1, 1, v13);
  v16 = v28;
  *v8 = v29;
  *(v8 + 1) = v16;
  *(v8 + 2) = _swiftEmptyArrayStorage;
  *(v8 + 3) = 0;
  v8[32] = 0;
  v17 = &v8[v5[13]];
  *v17 = 0;
  v17[4] = 1;
  v18 = v9(v15);
  v20 = v19;
  sub_10012A110(v8, v4, type metadata accessor for MetricsManager.PersonHeightMetric);
  (*(v30 + 56))(v4, 0, 1, v5);
  v21 = v31;
  swift_beginAccess();
  sub_100124144(v4, v18, v20);
  swift_endAccess();
  sub_10012A1E0(v8, type metadata accessor for MetricsManager.PersonHeightMetric);
  v22 = v21 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  result = swift_beginAccess();
  v24 = *(v22 + 96);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 96) = v26;
  }

  return result;
}

uint64_t sub_100123D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000F974(&qword_1004AA2A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100018F04(a1, &qword_1004AA2A8);
    sub_1000C63EC(a2, a3, v9);

    return sub_100018F04(v9, &qword_1004AA2A8);
  }

  else
  {
    sub_10012A178(a1, v12, type metadata accessor for MetricsManager.EdgeGuideMetric);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1000BAF00(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100123F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000F974(&qword_1004AA2E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MetricsManager.SurfaceVectorGuideMetric(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100018F04(a1, &qword_1004AA2E0);
    sub_1000C6440(a2, a3, v9);

    return sub_100018F04(v9, &qword_1004AA2E0);
  }

  else
  {
    sub_10012A178(a1, v12, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1000BB104(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100124144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000F974(&unk_1004A3EC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100018F04(a1, &unk_1004A3EC0);
    sub_1000C6618(a2, a3, v9);

    return sub_100018F04(v9, &unk_1004A3EC0);
  }

  else
  {
    sub_10012A178(a1, v12, type metadata accessor for MetricsManager.PersonHeightMetric);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1000BB6D8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100124318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000F974(&qword_1004AA2B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for MetricsManager.VerticalGuideMetric(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_100018F04(a1, &qword_1004AA2B0);
    sub_1000C666C(a2, a3, v9);

    return sub_100018F04(v9, &qword_1004AA2B0);
  }

  else
  {
    sub_10012A178(a1, v13, type metadata accessor for MetricsManager.VerticalGuideMetric);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1000BBDA4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1001244EC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100198844(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1000BF314();
        v10 = v14;
      }

      sub_1000C78DC(v8, v10);

      *v4 = v10;
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1000BC5D0(a1, a3, v13);

    *v3 = v15;
  }

  return result;
}

uint64_t sub_1001245E4(uint64_t a1)
{
  v3 = type metadata accessor for ARCamera.TrackingState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000F974(&qword_1004A1980);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  v10 = CACurrentMediaTime();
  if (*(v1 + 16) == 1)
  {
    (*(v4 + 56))(v9, 1, 1, v3);
    v11 = v1 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    swift_beginAccess();
    v12 = type metadata accessor for AppSession();
    sub_10006CA08(v9, v11 + *(v12 + 92), &qword_1004A1980);
    *(v11 + *(v12 + 96)) = v10;
  }

  else
  {
    v13 = v1 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    v14 = 1;
    swift_beginAccess();
    if ((*(v13 + 121) & 1) == 0)
    {
      v14 = *(v13 + 120) ^ 1;
    }

    sub_10012A110(a1, v6, &type metadata accessor for ARCamera.TrackingState);
    v15 = type metadata accessor for ARCamera.TrackingState.Reason();
    if ((*(*(v15 - 8) + 48))(v6, 2, v15) == 2 && (v14 & 1) == 0)
    {
      *(v13 + 121) = 1;
    }

    sub_10012A1E0(v6, &type metadata accessor for ARCamera.TrackingState);
    sub_10012A110(a1, v9, &type metadata accessor for ARCamera.TrackingState);
    (*(v4 + 56))(v9, 0, 1, v3);
    swift_beginAccess();
    v16 = type metadata accessor for AppSession();
    sub_10006CA08(v9, v13 + *(v16 + 92), &qword_1004A1980);
    *(v13 + *(v16 + 96)) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_1001248D0(void *a1, __n128 a2, __n128 a3, float32x4_t a4, float32x4_t a5)
{
  v55 = a5;
  v50[1] = a3;
  v51 = a4;
  v50[0] = a2;
  v6 = sub_10000F974(&qword_1004AA2B0);
  __chkstk_darwin(v6 - 8);
  v53 = v50 - v7;
  v8 = type metadata accessor for MetricsManager.VerticalGuideMetric(0);
  v52 = *(v8 - 1);
  __chkstk_darwin(v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = simd_float4x4.position.getter();
  v55 = v12;
  v13 = *((swift_isaMask & *a1) + 0x2A0);
  v13(v11);
  simd_float4x4.position.getter();
  v15 = vsubq_f32(v55, v14);
  v16 = vmulq_f32(v15, v15);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  v51 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  v18 = vmulq_f32(*SIMD3<>.up.unsafeMutableAddressor(), v51);
  v19 = acosf(v18.f32[2] + vaddv_f32(*v18.f32)) * 57.296;
  v20 = *((swift_isaMask & *a1) + 0xB8);
  v25 = v20(v21, v22, v23, v24);
  v27 = v26;
  (v13)(v25, v26, v28, v29);
  simd_float4x4.position.getter();
  v31 = vsubq_f32(v55, v30);
  v32 = vmulq_f32(v31, v31);
  v33 = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
  Date.init()();
  v34 = v8[10];
  v35 = type metadata accessor for Date();
  v36 = (*(*(v35 - 8) + 56))(&v10[v34], 1, 1, v35);
  v13(v36);
  v37 = simd_float4x4.position.getter();
  *v10 = v25;
  *(v10 + 1) = v27;
  *(v10 + 4) = v19;
  *(v10 + 5) = v33;
  v10[24] = 0;
  *(v10 + 7) = 0;
  *&v10[v8[11]] = v38;
  v39 = &v10[v8[12]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v39[16] = 1;
  v40 = (v20)(v37);
  v42 = v41;
  v43 = v53;
  sub_10012A110(v10, v53, type metadata accessor for MetricsManager.VerticalGuideMetric);
  (*(v52 + 56))(v43, 0, 1, v8);
  v44 = v54;
  swift_beginAccess();
  sub_100124318(v43, v40, v42);
  swift_endAccess();
  sub_10012A1E0(v10, type metadata accessor for MetricsManager.VerticalGuideMetric);
  v45 = v44 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  result = swift_beginAccess();
  v47 = *(v45 + 80);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
  }

  else
  {
    *(v45 + 80) = v49;
  }

  return result;
}

uint64_t sub_100124CA0(void *a1, uint64_t a2)
{
  v3 = v2;
  *&v51 = a2;
  v5 = sub_10000F974(&qword_1004AA2A8);
  __chkstk_darwin(v5 - 8);
  v52 = v45 - v6;
  v7 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v7 - 8);
  v9 = v45 - v8;
  v50 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
  v10 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v45 - v15;
  v17 = *((swift_isaMask & *a1) + 0xB8);
  v48 = (swift_isaMask & *a1) + 184;
  v49 = v17;
  v18 = v17(v14);
  v20 = v19;
  v21 = OBJC_IVAR____TtC7Measure14MetricsManager_edgeGuideMetrics;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (*(v22 + 16))
  {
    v47 = v3;
    v23 = sub_100198230(v18, v20);
    v25 = v24;

    if (v25)
    {
      v26 = v10;
      v27 = *(v22 + 56) + *(v10 + 72) * v23;
      v46 = type metadata accessor for MetricsManager.EdgeGuideMetric;
      sub_10012A110(v27, v12, type metadata accessor for MetricsManager.EdgeGuideMetric);
      sub_10012A178(v12, v16, type metadata accessor for MetricsManager.EdgeGuideMetric);
      swift_endAccess();
      Date.init()();
      v28 = type metadata accessor for Date();
      (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
      v29 = v50;
      v30 = sub_10006CA08(v9, &v16[*(v50 + 68)], &unk_1004A3D90);
      v31 = v51;
      v16[96] = 1;
      v32 = *(*((swift_isaMask & *v31) + 0x2C0))(v30);
      *&v33 = (*(v32 + 368))();
      v51 = v33;
      v45[1] = v35;
      v45[2] = v34;
      v45[0] = v36;

      v37 = simd_float4x4.position.getter();
      v38 = &v16[*(v29 + 72)];
      *v38 = v39;
      v38[16] = 0;
      v40 = (v49)(v37);
      v42 = v41;
      v43 = v52;
      sub_10012A110(v16, v52, v46);
      (*(v26 + 56))(v43, 0, 1, v29);
      swift_beginAccess();
      sub_100123D9C(v43, v40, v42);
      swift_endAccess();
      return sub_10012A1E0(v16, type metadata accessor for MetricsManager.EdgeGuideMetric);
    }
  }

  else
  {
  }

  return swift_endAccess();
}

uint64_t sub_1001250F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for MetricsManager.VerticalGuideMetric(0);
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v50 - v15);
  v17 = (*((swift_isaMask & *a1) + 0xB8))(v14);
  v19 = v18;
  v20 = OBJC_IVAR____TtC7Measure14MetricsManager_verticalGuideMetrics;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (!*(v21 + 16))
  {

    return swift_endAccess();
  }

  *&v54 = a2;
  v22 = sub_100198230(v17, v19);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_10012A110(*(v21 + 56) + *(v10 + 72) * v22, v12, type metadata accessor for MetricsManager.VerticalGuideMetric);
  sub_10012A178(v12, v16, type metadata accessor for MetricsManager.VerticalGuideMetric);
  swift_endAccess();
  Date.init()();
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  v26 = sub_10006CA08(v8, v16 + v9[10], &unk_1004A3D90);
  v27 = v54;
  *(v16 + 24) = 1;
  v28 = *((swift_isaMask & *v27) + 0x2C0);
  v29 = *v28(v26);
  *&v30 = (*(v29 + 368))();
  v52 = v31;
  v53 = v30;
  v50 = v33;
  v51 = v32;

  v34 = simd_float4x4.position.getter();
  v35 = v16 + v9[12];
  *v35 = v36;
  v35[16] = 0;
  v37 = *v28(v34);
  *&v38 = (*(v37 + 368))();
  v53 = v39;
  v54 = v38;
  v51 = v41;
  v52 = v40;

  simd_float4x4.position.getter();
  v43 = vsubq_f32(v42, *(v16 + v9[11]));
  v44 = vmulq_f32(v43, v43);
  v16[7] = sqrtf(v44.f32[2] + vaddv_f32(*v44.f32));
  sub_100127290(v16);
  v45 = v3 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  result = swift_beginAccess();
  v47 = *(v45 + 88);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
  }

  else
  {
    *(v45 + 88) = v49;
    return sub_10012A1E0(v16, type metadata accessor for MetricsManager.VerticalGuideMetric);
  }

  return result;
}

uint64_t sub_100125524(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v6 - 8);
  v8 = v40 - v7;
  v9 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v40 - v15;
  v17 = (*((swift_isaMask & *a1) + 0xB8))(v14);
  v19 = v18;
  v20 = OBJC_IVAR____TtC7Measure14MetricsManager_edgeGuideMetrics;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (!*(v21 + 16))
  {

    return swift_endAccess();
  }

  *&v41 = a2;
  v22 = sub_100198230(v17, v19);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_10012A110(*(v21 + 56) + *(v10 + 72) * v22, v12, type metadata accessor for MetricsManager.EdgeGuideMetric);
  sub_10012A178(v12, v16, type metadata accessor for MetricsManager.EdgeGuideMetric);
  swift_endAccess();
  Date.init()();
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  v26 = sub_10006CA08(v8, &v16[*(v9 + 68)], &unk_1004A3D90);
  v27 = v41;
  v16[97] = 1;
  v28 = *(*((swift_isaMask & *v27) + 0x2C0))(v26);
  *&v29 = (*(v28 + 368))();
  v40[2] = v30;
  v41 = v29;
  v40[0] = v32;
  v40[1] = v31;

  simd_float4x4.position.getter();
  v33 = &v16[*(v9 + 76)];
  *v33 = v34;
  v33[16] = 0;
  sub_100126B0C(v16);
  v35 = v3 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  result = swift_beginAccess();
  v37 = *(v35 + 88);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v35 + 88) = v39;
    return sub_10012A1E0(v16, type metadata accessor for MetricsManager.EdgeGuideMetric);
  }

  return result;
}

uint64_t sub_1001258C8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v6 - 8);
  v8 = v40 - v7;
  v9 = type metadata accessor for MetricsManager.SurfaceVectorGuideMetric(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v40 - v15;
  v17 = (*((swift_isaMask & *a1) + 0xB8))(v14);
  v19 = v18;
  v20 = OBJC_IVAR____TtC7Measure14MetricsManager_surfaceVectorGuideMetrics;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (!*(v21 + 16))
  {

    return swift_endAccess();
  }

  *&v41 = a2;
  v22 = sub_100198230(v17, v19);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_10012A110(*(v21 + 56) + *(v10 + 72) * v22, v12, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
  sub_10012A178(v12, v16, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
  swift_endAccess();
  Date.init()();
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  v26 = sub_10006CA08(v8, &v16[*(v9 + 60)], &unk_1004A3D90);
  v27 = v41;
  v16[96] = 1;
  v28 = *(*((swift_isaMask & *v27) + 0x2C0))(v26);
  *&v29 = (*(v28 + 368))();
  v40[2] = v30;
  v41 = v29;
  v40[0] = v32;
  v40[1] = v31;

  simd_float4x4.position.getter();
  v33 = &v16[*(v9 + 68)];
  *v33 = v34;
  v33[16] = 0;
  sub_100126ED8(v16);
  v35 = v3 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  result = swift_beginAccess();
  v37 = *(v35 + 88);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v35 + 88) = v39;
    return sub_10012A1E0(v16, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
  }

  return result;
}

uint64_t sub_100125C6C(void *a1, void *a2)
{
  v3 = v2;
  v100 = a2;
  v5 = sub_10000F974(&qword_1004A9BF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v79 - v10;
  v12 = *(**(v2 + OBJC_IVAR____TtC7Measure14MetricsManager__device) + 144);

  v12(&v120, v13);

  if ((v124 & 1) == 0)
  {
    v93 = v121;
    v94 = v120;
    v97 = *(&v121 + 1);
    *&v98 = *(&v120 + 1);
    v91 = v123;
    v92 = v122;
    v95 = *(&v123 + 1);
    v96 = *(&v122 + 1);
    v15 = *((swift_isaMask & *a1) + 0x250);
    v16 = v15(result);
    if (v16 >> 62)
    {
      v99 = v6;
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v6 = v99;
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v17 >= 2)
    {
      result = v15(result);
      v99 = v6;
      if ((result & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v18 = *(result + 32);
      }

      v19 = v18;

      result = v15(v20);
      v87 = v3;
      if ((result & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v21 = *(result + 40);
      }

      v89 = 0x74694B7261;
      v90 = v21;

      v23 = *((swift_isaMask & *v19) + 0x2C0);
      v82 = (swift_isaMask & *v19) + 704;
      v83 = v23;
      v24 = (v23)(v22);
      v25 = (*(*v24 + 216))();

      v27 = 0.0;
      v88 = 0x6E776F6E6B6E75;
      if (v25)
      {
        v28 = v25[48];
        if (v28 <= 2)
        {
          if (v25[48])
          {
            if (v28 == 1)
            {
              *&v86 = 0x6465727265666E69;
              *(&v86 + 1) = 0xE800000000000000;
            }

            else
            {
              *&v86 = 0x6B6361626C6C6166;
              *(&v86 + 1) = 0xE800000000000000;
            }
          }

          else
          {
            *&v86 = 0x74694B7261;
            *(&v86 + 1) = 0xE500000000000000;
          }
        }

        else if (v25[48] > 4u)
        {
          if (v28 == 5)
          {
            *&v86 = 0x6863746170;
            *(&v86 + 1) = 0xE500000000000000;
          }

          else
          {
            *&v86 = 0x706544656C707061;
            *(&v86 + 1) = 0xEA00000000006874;
          }
        }

        else if (v28 == 3)
        {
          *&v86 = 0x6C61636F6CLL;
          *(&v86 + 1) = 0xE500000000000000;
        }

        else
        {
          *&v86 = 0x73756F6976657270;
          *(&v86 + 1) = 0xE800000000000000;
        }

        v30 = (*(*v25 + 232))(v26);
        v31 = (*(*v25 + 160))();
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = [v32 alignment];

          v34 = 0x6C61636974726576;
          if (!v33)
          {
            v34 = 0x746E6F7A69726F68;
          }

          *&v81 = v34;
          if (v33)
          {
            v29 = 0xE800000000000000;
          }

          else
          {
            v29 = 0xEA00000000006C61;
          }
        }

        else
        {

          v29 = 0xE700000000000000;
          *&v81 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v29 = 0xE700000000000000;
        v30 = 0.0;
        *&v81 = 0x6E776F6E6B6E75;
        *&v86 = 0x6E776F6E6B6E75;
        *(&v86 + 1) = 0xE700000000000000;
      }

      v35 = *((swift_isaMask & *v90) + 0x2C0);
      v79[1] = (swift_isaMask & *v90) + 704;
      v80 = v35;
      v36 = v35(v26);
      v37 = (*(*v36 + 216))();

      v84 = v19;
      *(&v81 + 1) = v29;
      if (!v37)
      {
        v79[0] = 0xE700000000000000;
        v89 = 0x6E776F6E6B6E75;
        v85 = 0xE700000000000000;
        goto LABEL_57;
      }

      v39 = v37[48];
      if (v39 <= 2)
      {
        if (v37[48])
        {
          v85 = 0xE800000000000000;
          if (v39 == 1)
          {
            v89 = 0x6465727265666E69;
          }

          else
          {
            v89 = 0x6B6361626C6C6166;
          }

          goto LABEL_49;
        }

        v40 = 0xE500000000000000;
      }

      else
      {
        if (v37[48] <= 4u)
        {
          if (v39 == 3)
          {
            v85 = 0xE500000000000000;
            v89 = 0x6C61636F6CLL;
          }

          else
          {
            v85 = 0xE800000000000000;
            v89 = 0x73756F6976657270;
          }

          goto LABEL_49;
        }

        if (v39 == 5)
        {
          v85 = 0xE500000000000000;
          v89 = 0x6863746170;
LABEL_49:
          v27 = (*(*v37 + 232))(v38);
          v41 = (*(*v37 + 160))();
          objc_opt_self();
          v42 = swift_dynamicCastObjCClass();
          if (v42)
          {
            v43 = [v42 alignment];

            v44 = 0x6C61636974726576;
            if (!v43)
            {
              v44 = 0x746E6F7A69726F68;
            }

            v88 = v44;
            v45 = 0xEA00000000006C61;
            if (v43)
            {
              v45 = 0xE800000000000000;
            }
          }

          else
          {

            v45 = 0xE700000000000000;
          }

          v79[0] = v45;
LABEL_57:
          (*((swift_isaMask & *a1) + 0x340))(v38);
          v46 = objc_opt_self();
          v47 = [v46 meters];
          v48 = [v46 millimeters];
          sub_100018630(0, &qword_1004A9BF8);
          v49 = v47;
          Measurement.init(value:unit:)();
          Measurement<>.converted(to:)();
          Measurement.value.getter();
          v51 = v50;

          v52 = v99 + 8;
          v53 = *(v99 + 8);
          v53(v8, v5);
          v99 = v52;
          result = (v53)(v11, v5);
          v54 = v51;
          if ((LODWORD(v54) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (v54 > -9.2234e18)
            {
              if (v54 < 9.2234e18)
              {
                v55 = simd_float4x4.position.getter();
                v98 = v56;
                (*((swift_isaMask & *v100) + 0x2B0))(v55);
                v57 = [v46 meters];
                v58 = [v46 millimeters];
                v59 = v57;
                Measurement.init(value:unit:)();
                Measurement<>.converted(to:)();
                Measurement.value.getter();
                v61 = v60;

                v53(v8, v5);
                result = (v53)(v11, v5);
                v62 = v61;
                if ((LODWORD(v62) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                {
                  if (v62 > -9.2234e18)
                  {
                    if (v62 < 9.2234e18)
                    {
                      v99 = v62;
                      v100 = v54;
                      v63 = UIDeviceOrientation.description.getter();
                      v65 = v64;
                      v66 = v84;
                      (*((swift_isaMask & *v84) + 0x2F0))();
                      v67 = WorldPointType.description.getter();
                      v69 = v68;
                      v70 = v90;
                      (*((swift_isaMask & *v90) + 0x2F0))();
                      v71 = WorldPointType.description.getter();
                      v73 = v72;
                      v74 = v83();
                      v75 = (*(*v74 + 192))(v74);

                      v77 = v80(v76);
                      v78 = (*(*v77 + 192))(v77);

                      *&v101 = v100;
                      *(&v101 + 1) = v99;
                      *&v102 = v63;
                      *(&v102 + 1) = v65;
                      *&v103 = v67;
                      *(&v103 + 1) = v69;
                      *&v104 = v71;
                      *(&v104 + 1) = v73;
                      *&v105 = __PAIR64__(LODWORD(v78), LODWORD(v75));
                      *(&v105 + 1) = __PAIR64__(LODWORD(v27), LODWORD(v30));
                      v106 = v86;
                      *&v107 = v89;
                      *(&v107 + 1) = v85;
                      v108 = v81;
                      *&v109 = v88;
                      *(&v109 + 1) = v79[0];
                      v110 = v101;
                      v111 = v102;
                      v117 = v81;
                      v118 = v109;
                      v115 = v86;
                      v116 = v107;
                      v113 = v104;
                      v114 = v105;
                      v112 = v103;
                      sub_10012ABA4(&v110);
                      v126 = v116;
                      v127 = v117;
                      v128 = v118;
                      v129 = v119;
                      v122 = v112;
                      v123 = v113;
                      v124 = v114;
                      v125 = v115;
                      v120 = v110;
                      v121 = v111;
                      sub_10012AEC4(&v120);

                      return sub_100018F04(&v101, &qword_1004AA2F0);
                    }

LABEL_75:
                    __break(1u);
                    return result;
                  }

LABEL_74:
                  __break(1u);
                  goto LABEL_75;
                }

LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

LABEL_72:
              __break(1u);
              goto LABEL_73;
            }

LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          goto LABEL_69;
        }

        v89 = 0x706544656C707061;
        v40 = 0xEA00000000006874;
      }

      v85 = v40;
      goto LABEL_49;
    }
  }

  return result;
}

uint64_t sub_100126934()
{
  type metadata accessor for MetricsManager(0);
  swift_allocObject();
  result = sub_100128220();
  qword_1004D4F08 = result;
  return result;
}

float sub_100126974()
{
  v1 = type metadata accessor for MetricsManager.VerticalGuideMetric(0);
  v2 = v0 + *(v1 + 48);
  if (*(v2 + 16))
  {
    return 0.0;
  }

  v4 = (v2 + 8);
  v5 = *v2;
  *v6.f32 = v5;
  v6.i64[1] = *v4;
  v7 = *(v0 + *(v1 + 44));
  v8 = vsubq_f32(v7, v6);
  *v7.f32 = vsub_f32(*v7.f32, v5);
  return sqrtf(COERCE_FLOAT(vmulq_f32(v8, v8).i32[2]) + vaddv_f32(vmul_f32(*v7.f32, *v7.f32)));
}

float sub_1001269F0()
{
  v1 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
  v2 = (v0 + *(v1 + 72));
  if (v2[1].i8[0])
  {
    return 0.0;
  }

  v3 = (v0 + *(v1 + 76));
  if (v3[1].i8[0])
  {
    return 0.0;
  }

  v5 = vsubq_f32(*v2, *v3);
  v6 = vsub_f32(*v2->f32, *v3->f32);
  return sqrtf(COERCE_FLOAT(vmulq_f32(v5, v5).i32[2]) + vaddv_f32(vmul_f32(v6, v6)));
}

float sub_100126A90()
{
  v1 = type metadata accessor for MetricsManager.SurfaceVectorGuideMetric(0);
  v2 = v0 + *(v1 + 68);
  if (*(v2 + 16))
  {
    return 0.0;
  }

  v4 = (v2 + 8);
  v5 = *v2;
  *v6.f32 = v5;
  v6.i64[1] = *v4;
  v7 = *(v0 + *(v1 + 64));
  v8 = vsubq_f32(v7, v6);
  *v7.f32 = vsub_f32(*v7.f32, v5);
  return sqrtf(COERCE_FLOAT(vmulq_f32(v8, v8).i32[2]) + vaddv_f32(vmul_f32(*v7.f32, *v7.f32)));
}

uint64_t sub_100126B0C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AA2A8);
  __chkstk_darwin(v2 - 8);
  v34 = &v31 - v3;
  v4 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v14 = *(a1 + 48);
  v13 = *(a1 + 52);
  v15 = *(a1 + 72);
  v16 = *(a1 + 64);
  v33 = *(a1 + 56);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a1 + 40);
  v32 = *(a1 + 32);
  v20 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
  sub_1000D7AB8(a1 + *(v20 + 68), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_100018F04(v6, &unk_1004A3D90);
    v21 = 0.0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);

    Date.timeIntervalSince(_:)();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v21 = v23;
  }

  v24 = sub_1001269F0();
  v25 = *(a1 + 96);
  v26 = *(a1 + 97);
  *&v35 = __PAIR64__(v14, v11);
  *(&v35 + 1) = vrev64_s32(v12);
  v36 = __PAIR64__(v15, v13);
  v37 = v33;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v32;
  v42 = v19;
  v43 = __PAIR64__(LODWORD(v24), LODWORD(v21));
  LOBYTE(v44) = v25;
  HIBYTE(v44) = v26;
  v45 = v35;
  v46 = __PAIR64__(v15, v13);
  v47 = v33;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v32;
  v52 = v19;
  v53 = __PAIR64__(LODWORD(v24), LODWORD(v21));
  v54 = v44 & 0x101;
  sub_10012A5F4(&v45);
  sub_100018F04(&v35, &qword_1004AA2D8);
  v28 = *a1;
  v27 = *(a1 + 8);
  swift_beginAccess();
  v29 = v34;
  sub_1000C63EC(v28, v27, v34);
  swift_endAccess();
  return sub_100018F04(v29, &qword_1004AA2A8);
}

uint64_t sub_100126ED8(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AA2E0);
  __chkstk_darwin(v2 - 8);
  v32 = &v29 - v3;
  v4 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v13 = *(a1 + 48);
  v14 = *(a1 + 72);
  v15 = *(a1 + 64);
  v31 = *(a1 + 56);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v18 = *(a1 + 40);
  v30 = *(a1 + 32);
  v19 = type metadata accessor for MetricsManager.SurfaceVectorGuideMetric(0);
  sub_1000D7AB8(a1 + *(v19 + 60), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_100018F04(v6, &unk_1004A3D90);
    v20 = 0.0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);

    Date.timeIntervalSince(_:)();
    v22 = v21;
    (*(v8 + 8))(v10, v7);
    v20 = v22;
  }

  v23 = sub_100126A90();
  v24 = *(a1 + 96);
  LODWORD(v33) = v11;
  *(&v33 + 4) = vrev64_s32(v12);
  HIDWORD(v33) = v13;
  LODWORD(v34) = v14;
  v35 = v31;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v30;
  v40 = v18;
  v41 = __PAIR64__(LODWORD(v23), LODWORD(v20));
  v42 = v24;
  v43 = v33;
  v44 = v34;
  v45 = v31;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  v49 = v30;
  v50 = v18;
  v51 = __PAIR64__(LODWORD(v23), LODWORD(v20));
  v52 = v24 | 0x4000;
  sub_10012A5F4(&v43);
  sub_100018F04(&v33, &qword_1004AA2E8);
  v26 = *a1;
  v25 = *(a1 + 8);
  swift_beginAccess();
  v27 = v32;
  sub_1000C6440(v26, v25, v32);
  swift_endAccess();
  return sub_100018F04(v27, &qword_1004AA2E0);
}

uint64_t sub_100127290(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AA2B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-v3];
  v5 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + 28);
  v13 = *(a1 + 16);
  v14 = type metadata accessor for MetricsManager.VerticalGuideMetric(0);
  sub_1000D7AB8(a1 + *(v14 + 40), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100018F04(v7, &unk_1004A3D90);
    v15 = 0.0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    Date.timeIntervalSince(_:)();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v15 = v17;
  }

  v18 = sub_100126974();
  v19 = *(a1 + 24);
  v24 = v12;
  v25 = vrev64_s32(v13);
  v26 = v15;
  v27 = v18;
  v28 = v19;
  v29 = 0x8000;
  sub_10012A5F4(&v24);
  v21 = *a1;
  v20 = *(a1 + 8);
  swift_beginAccess();
  sub_1000C666C(v21, v20, v4);
  swift_endAccess();
  return sub_100018F04(v4, &qword_1004AA2B0);
}

unint64_t sub_100127534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

float sub_10012758C()
{
  v1 = *(v0 + 16);
  v2 = v1[1].u64[0];
  if (!v2)
  {
    return 0.0;
  }

  if (v2 < 8)
  {
    v3 = 0;
    v4 = 0;
LABEL_7:
    v7 = v2 - v3;
    v8 = &v1[2].f32[v3];
    do
    {
      v9 = *v8++;
      *v4.i32 = *v4.i32 + v9;
      --v7;
    }

    while (v7);
    goto LABEL_9;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFF8;
  v5 = v1 + 3;
  v4 = 0;
  v6 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    *v4.i32 = (((((((*v4.i32 + COERCE_FLOAT(*&v5[-1])) + COERCE_FLOAT(HIDWORD(v5[-1].i64[0]))) + COERCE_FLOAT(v5[-1].i64[1])) + COERCE_FLOAT(HIDWORD(*&v5[-1]))) + COERCE_FLOAT(*v5)) + COERCE_FLOAT(HIDWORD(v5->i64[0]))) + COERCE_FLOAT(v5->i64[1])) + COERCE_FLOAT(HIDWORD(*v5));
    v5 += 2;
    v6 -= 8;
  }

  while (v6);
  if (v2 != v3)
  {
    goto LABEL_7;
  }

LABEL_9:
  *v4.i32 = *v4.i32 / v2;
  if (v2 <= 7)
  {
    v10 = 0;
    v11 = 0.0;
LABEL_14:
    v19 = v2 - v10;
    v20 = &v1[2].f32[v10];
    do
    {
      v21 = *v20++;
      v11 = v11 + ((v21 - *v4.i32) * (v21 - *v4.i32));
      --v19;
    }

    while (v19);
    goto LABEL_16;
  }

  v10 = v2 & 0x7FFFFFFFFFFFFFF8;
  v12 = vdupq_lane_s32(v4, 0);
  v13 = v1 + 3;
  v11 = 0.0;
  v14 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v15 = vsubq_f32(v13[-1], v12);
    v16 = vsubq_f32(*v13, v12);
    v17 = vmulq_f32(v15, v15);
    v18 = vmulq_f32(v16, v16);
    v11 = (((((((v11 + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3]) + v18.f32[0]) + v18.f32[1]) + v18.f32[2]) + v18.f32[3];
    v13 += 2;
    v14 -= 8;
  }

  while (v14);
  if (v2 != v10)
  {
    goto LABEL_14;
  }

LABEL_16:
  v22 = v2 - 1;
  if (!v22)
  {
    return 0.0;
  }

  return sqrtf(v11 / v22);
}

uint64_t sub_1001276FC()
{
  v1 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v1 - 8);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  sub_1000D7AB8(v0 + *(v13 + 44), v5);
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    v15 = v5;
    return sub_100018F04(v15, &unk_1004A3D90);
  }

  v16 = v5;
  v17 = *(v7 + 32);
  v17(v12, v16, v6);
  v18 = v0 + *(v13 + 48);
  v19 = v23;
  sub_1000D7AB8(v18, v23);
  if (v14(v19, 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
    v15 = v19;
    return sub_100018F04(v15, &unk_1004A3D90);
  }

  v17(v9, v19, v6);
  Date.timeIntervalSince(_:)();
  v21 = *(v7 + 8);
  v21(v9, v6);
  return (v21)(v12, v6);
}

uint64_t sub_100127998()
{
  v1 = sub_10000F974(&unk_1004A3D90);
  v2 = __chkstk_darwin(v1 - 8);
  v38 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = v34 - v5;
  v7 = __chkstk_darwin(v4);
  v36 = v34 - v8;
  __chkstk_darwin(v7);
  v10 = v34 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v35 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v37 = v34 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v34 - v18;
  __chkstk_darwin(v17);
  v21 = v34 - v20;
  if ((*(v0 + 32) & 1) == 0)
  {
    v22 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
    sub_1000D7AB8(v0 + *(v22 + 36), v10);
    v23 = v12[6];
    if (v23(v10, 1, v11) == 1)
    {
      v24 = v0;
    }

    else
    {
      v34[0] = v12[4];
      v34[1] = v12 + 4;
      (v34[0])(v21, v10, v11);
      v25 = *(v22 + 40);
      v24 = v0;
      v10 = v36;
      sub_1000D7AB8(v0 + v25, v36);
      if (v23(v10, 1, v11) != 1)
      {
        (v34[0])(v19, v10, v11);
        Date.timeIntervalSince(_:)();
        v33 = v12[1];
        v33(v19, v11);
        return (v33)(v21, v11);
      }

      (v12[1])(v21, v11);
    }

    sub_100018F04(v10, &unk_1004A3D90);
    v0 = v24;
  }

  v26 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  sub_1000D7AB8(v0 + *(v26 + 36), v6);
  v27 = v12[6];
  if (v27(v6, 1, v11) == 1)
  {
    return sub_100018F04(v6, &unk_1004A3D90);
  }

  v28 = v12[4];
  v29 = v37;
  v28(v37, v6, v11);
  v6 = v38;
  sub_1000D7AB8(v0 + *(v26 + 44), v38);
  if (v27(v6, 1, v11) == 1)
  {
    (v12[1])(v29, v11);
    return sub_100018F04(v6, &unk_1004A3D90);
  }

  v31 = v35;
  v28(v35, v6, v11);
  Date.timeIntervalSince(_:)();
  v32 = v12[1];
  v32(v31, v11);
  return (v32)(v29, v11);
}

uint64_t sub_100127DE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = OBJC_IVAR____TtC7Measure14MetricsManager_personHeightMetrics;
  swift_beginAccess();
  v17 = *(v3 + v16);
  if (!*(v17 + 16))
  {
    return swift_endAccess();
  }

  v18 = sub_100198230(a1, a2);
  if ((v19 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_10012A110(*(v17 + 56) + *(v10 + 72) * v18, v12, type metadata accessor for MetricsManager.PersonHeightMetric);
  sub_10012A178(v12, v15, type metadata accessor for MetricsManager.PersonHeightMetric);
  swift_endAccess();
  Date.init()();
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  sub_10006CA08(v8, &v15[*(v9 + 48)], &unk_1004A3D90);
  sub_100128080(v15);
  v21 = v3 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  result = swift_beginAccess();
  *v21 = *v21 + 1.0;
  v23 = *(v21 + 104);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 104) = v25;
    return sub_10012A1E0(v15, type metadata accessor for MetricsManager.PersonHeightMetric);
  }

  return result;
}

uint64_t sub_100128080(uint64_t a1)
{
  v2 = sub_10000F974(&unk_1004A3EC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = *(a1 + 32);
  sub_100127998();
  v7 = v6;
  sub_1001276FC();
  v9 = v8;
  v10 = a1 + *(type metadata accessor for MetricsManager.PersonHeightMetric(0) + 52);
  if (*(v10 + 4))
  {
    v11 = 0.0;
  }

  else
  {
    v11 = *v10;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = sub_100127534(v12);
  v15 = *&v14;
  if ((v14 & &_mh_execute_header) != 0)
  {
    v15 = 0.0;
  }

  v16 = vabds_f32(v11, v15);
  v17 = sub_10004FF40(v12);
  v18 = *&v17;
  if ((v17 & &_mh_execute_header) != 0)
  {
    v18 = 0.0;
  }

  v19 = vabds_f32(v18, v11);
  v20 = sub_10012758C();
  v21 = *(v12 + 16);
  v26 = v5;
  v27 = v7;
  v28 = v9;
  v29 = v13;
  v30 = v16;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  sub_10001D95C(&v26, v34);
  sub_10012ABB0(v34);
  v22 = *a1;
  v23 = *(a1 + 8);
  swift_beginAccess();
  sub_1000C6618(v22, v23, v4);
  swift_endAccess();
  return sub_100018F04(v4, &unk_1004A3EC0);
}

uint64_t sub_100128220()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_100026158(v0 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState);
  v2 = OBJC_IVAR____TtC7Measure14MetricsManager__device;
  KeyPath = swift_getKeyPath();
  v4 = sub_10000F974(&unk_1004A3F40);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v4 + 272);
  swift_retain_n();
  *(v1 + v2) = v6(KeyPath, v5);
  v7 = OBJC_IVAR____TtC7Measure14MetricsManager__unitState;
  v8 = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A72E0);
  *(v1 + v7) = (*(v9 + 272))(v8, v5);
  *(v1 + OBJC_IVAR____TtC7Measure14MetricsManager_verticalGuideMetrics) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC7Measure14MetricsManager_edgeGuideMetrics) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC7Measure14MetricsManager_surfaceVectorGuideMetrics) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC7Measure14MetricsManager_personHeightMetrics) = &_swiftEmptyDictionarySingleton;
  return v1;
}

uint64_t sub_100128398(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v4;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v3 = a2 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  result = type metadata accessor for AppSession();
  *(v3 + *(result + 100)) = 1;
  return result;
}

uint64_t sub_100128424(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100018630(0, &qword_1004AA2F8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

void sub_1001284A8(void *a1)
{
  v2 = v1;
  v4 = sub_10000F974(&qword_1004A9BF0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v100 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v81 - v8;
  v9 = sub_10000F974(&qword_1004A9C00);
  v101 = *(v9 - 1);
  v10 = __chkstk_darwin(v9);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v81 - v13;
  v15 = v1 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  v16 = swift_beginAccess();
  *(v15 + 32) = *(v15 + 32) + 1.0;
  v17 = &swift_isaMask;
  (*((swift_isaMask & *a1) + 0x260))(v116, v16);
  memcpy(v117, v116, sizeof(v117));
  if (sub_10012B5C4(v117) == 1)
  {
    return;
  }

  *&v97 = v5;
  *&v98 = v4;
  v91 = v117[7];
  v18 = HIDWORD(v117[8]);
  v92 = LOBYTE(v117[8]);
  v93 = LOBYTE(v117[9]);
  v94 = v117[13];
  v95 = BYTE8(v117[8]);
  LODWORD(v96) = LOBYTE(v117[14]);
  v19 = *(**(v2 + OBJC_IVAR____TtC7Measure14MetricsManager__device) + 144);

  v19(&v118, v20);

  if (v122)
  {
    v22 = &qword_1004AA300;
    v23 = v116;
LABEL_55:
    sub_100018F04(v23, v22);
    return;
  }

  v85 = v119;
  v86 = v118;
  v89 = *(&v119 + 1);
  *&v90 = *(&v118 + 1);
  v83 = v121;
  v84 = v120;
  v87 = *(&v121 + 1);
  v88 = *(&v120 + 1);
  v24 = *((swift_isaMask & *a1) + 0x230);
  v25 = (v24)(v21);
  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 < 1)
  {
    *(&v81 + 1) = 0xE700000000000000;
    v82 = 0xE700000000000000;
    *&v81 = 0x6E776F6E6B6E75;
    v38 = v98;
    v24 = v97;
    v48 = 0x6E776F6E6B6E75;
    goto LABEL_44;
  }

  v28 = (v24)(v27);
  if ((v28 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_67;
  }

  for (i = *(v28 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v30 = i;

    v32 = (*((*v17 & *v30) + 0x250))(v31);

    if (v32 >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v33 < 1)
    {
      *(&v81 + 1) = 0xE700000000000000;
      v82 = 0xE700000000000000;
      v48 = 0x6E776F6E6B6E75;
      *&v81 = 0x6E776F6E6B6E75;
      v38 = v98;
      v24 = v97;
      goto LABEL_44;
    }

    v35 = (v24)(v34);
    if ((v35 & 0xC000000000000001) != 0)
    {
LABEL_67:
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v36 = *(v35 + 32);
LABEL_16:
    v37 = v36;
    v38 = v98;
    v24 = v97;

    v40 = (*((*v17 & *v37) + 0x250))(v39);

    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v41 = *(v40 + 32);
    }

    v42 = v41;

    v44 = (*((*v17 & *v42) + 0x2C0))(v43);

    v45 = (*(*v44 + 216))();

    if (v45)
    {
      v47 = (*(*v45 + 248))(v46);
      if (v47 <= 2)
      {
        if (v47)
        {
          if (v47 == 1)
          {
            *&v81 = 0x6465727265666E69;
            *(&v81 + 1) = 0xE800000000000000;
          }

          else
          {
            *&v81 = 0x6B6361626C6C6166;
            *(&v81 + 1) = 0xE800000000000000;
          }
        }

        else
        {
          *&v81 = 0x74694B7261;
          *(&v81 + 1) = 0xE500000000000000;
        }
      }

      else if (v47 > 4)
      {
        if (v47 == 5)
        {
          *&v81 = 0x6863746170;
          *(&v81 + 1) = 0xE500000000000000;
        }

        else
        {
          *&v81 = 0x706544656C707061;
          *(&v81 + 1) = 0xEA00000000006874;
        }
      }

      else if (v47 == 3)
      {
        *&v81 = 0x6C61636F6CLL;
        *(&v81 + 1) = 0xE500000000000000;
      }

      else
      {
        *&v81 = 0x73756F6976657270;
        *(&v81 + 1) = 0xE800000000000000;
      }

      v49 = (*(*v45 + 160))();
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        v51 = [v50 alignment];

        if (v51)
        {
          v48 = 0x6C61636974726576;
        }

        else
        {
          v48 = 0x746E6F7A69726F68;
        }

        v52 = 0xEA00000000006C61;
        if (v51)
        {
          v52 = 0xE800000000000000;
        }

        v82 = v52;
      }

      else
      {

        v82 = 0xE700000000000000;
        v48 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      *(&v81 + 1) = 0xE700000000000000;
      v82 = 0xE700000000000000;
      v48 = 0x6E776F6E6B6E75;
      *&v81 = 0x6E776F6E6B6E75;
    }

LABEL_44:
    v53 = v96;
    *&v54 = v86;
    *&v55 = v85;
    *&v56 = v84;
    *&v57 = v83;
    *(&v54 + 1) = v90;
    *(&v55 + 1) = v89;
    *(&v56 + 1) = v88;
    *(&v57 + 1) = v87;
    v97 = v55;
    v98 = v54;
    v96 = v56;
    v90 = v57;
    simd_float4x4.forward.getter();
    if (v53)
    {
      goto LABEL_71;
    }

    v89 = v48;
    v59 = vmulq_f32(v94, v94);
    v60 = vaddv_f32(*v59.f32);
    *v59.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v59.f32[2] + v60));
    *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v59.f32[2] + v60), vmul_f32(*v59.f32, *v59.f32)));
    v61 = vmulq_n_f32(v94, vmul_f32(*v59.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v59.f32[2] + v60), vmul_f32(*v59.f32, *v59.f32))).f32[0]);
    v62 = vmulq_f32(v58, v58);
    *&v63 = v62.f32[2] + vaddv_f32(*v62.f32);
    *v62.f32 = vrsqrte_f32(v63);
    *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(v63, vmul_f32(*v62.f32, *v62.f32)));
    v64 = vmulq_f32(v61, vmulq_n_f32(v58, vmul_f32(*v62.f32, vrsqrts_f32(v63, vmul_f32(*v62.f32, *v62.f32))).f32[0]));
    v65 = acosf(v64.f32[2] + vaddv_f32(*v64.f32));
    if (v95)
    {
      goto LABEL_72;
    }

    v66 = v65;
    v67 = objc_opt_self();
    v68 = [v67 squareMeters];
    v69 = [v67 squareMillimeters];
    sub_100018630(0, &qword_1004A9C08);
    v70 = v68;
    Measurement.init(value:unit:)();
    Measurement<>.converted(to:)();
    Measurement.value.getter();
    v72 = v71;

    v17 = (v101 + 8);
    v73 = *(v101 + 8);
    v73(v12, v9);
    v73(v14, v9);
    v74 = v72;
    if ((LODWORD(v74) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v74 <= -9.2234e18)
    {
      goto LABEL_59;
    }

    if (v74 >= 9.2234e18)
    {
      goto LABEL_60;
    }

    if (v93)
    {
      goto LABEL_73;
    }

    simd_float4x4.position.getter();
    if (v92)
    {
      goto LABEL_74;
    }

    v75 = objc_opt_self();
    v76 = [v75 meters];
    v9 = [v75 millimeters];
    sub_100018630(0, &qword_1004A9BF8);
    v12 = v76;
    v14 = v99;
    Measurement.init(value:unit:)();
    v17 = v100;
    Measurement<>.converted(to:)();
    Measurement.value.getter();
    v78 = v77;

    v79 = *(v24 + 8);
    v24 += 8;
    v79(v17, v38);
    v79(v14, v38);
    v80 = v78;
    if ((LODWORD(v80) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_61;
    }

    if (v80 <= -9.2234e18)
    {
      goto LABEL_62;
    }

    if (v80 < 9.2234e18)
    {
      *&v102 = v74;
      DWORD2(v102) = v18;
      *&v103 = v80;
      *(&v103 + 2) = v66 * 57.296;
      v104 = v81;
      *&v105 = v89;
      *(&v105 + 1) = v82;
      v108 = v81;
      v109 = v105;
      v106 = v102;
      v107 = v103;
      sub_100103648(&v106);
      v124 = v112;
      v125 = v113;
      v126 = v114;
      v127 = v115;
      v120 = v108;
      v121 = v109;
      v122 = v110;
      v123 = v111;
      v118 = v106;
      v119 = v107;
      sub_10012AEC4(&v118);
      sub_100018F04(v116, &qword_1004AA300);
      v22 = &unk_1004AA308;
      v23 = &v102;
      goto LABEL_55;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

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
}

uint64_t sub_1001290DC()
{
  sub_10012A1E0(v0 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState, type metadata accessor for AppSession);

  return swift_deallocClassInstance();
}

uint64_t sub_1001291DC()
{
  result = type metadata accessor for AppSession();
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

uint64_t sub_1001292BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000F974(&unk_1004A3D90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10012938C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000F974(&unk_1004A3D90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10012945C()
{
  sub_100129558(319, &qword_1004AA008, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100065060();
    if (v1 <= 0x3F)
    {
      sub_100129558(319, &unk_1004AA010, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100129558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Float);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001295C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000F974(&unk_1004A3D90);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100129704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000F974(&unk_1004A3D90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100129854()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100065060();
    if (v1 <= 0x3F)
    {
      sub_100129940();
      if (v2 <= 0x3F)
      {
        sub_10012999C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100129940()
{
  if (!qword_1004AA0C8)
  {
    sub_1000A4FEC();
    v0 = type metadata accessor for SIMD3();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AA0C8);
    }
  }
}

void sub_10012999C()
{
  if (!qword_1004AA0D0)
  {
    sub_100013BB0(&qword_1004A3EF0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AA0D0);
    }
  }
}

uint64_t sub_100129A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 64);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000F974(&unk_1004A3D90);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100129B58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 64);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000F974(&unk_1004A3D90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100129CA8()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100065060();
    if (v1 <= 0x3F)
    {
      sub_10012999C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100129D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000F974(&unk_1004A3D90);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100129ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000F974(&unk_1004A3D90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10012A028()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100065060();
    if (v1 <= 0x3F)
    {
      sub_100129940();
      if (v2 <= 0x3F)
      {
        sub_10012999C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10012A110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012A178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012A1E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012A240(_OWORD *a1)
{
  v28[3] = &type metadata for SessionEvent;
  v28[4] = &off_100467DE8;
  v2 = swift_allocObject();
  v28[0] = v2;
  v3 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v3;
  *(v2 + 112) = a1[6];
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v5;
  v6 = sub_10000FEBC(v28, &type metadata for SessionEvent);
  v7 = *(v2 + 96);
  v40 = *(v2 + 80);
  v41 = v7;
  v42 = *(v2 + 112);
  v8 = *(v2 + 32);
  v36 = *(v2 + 16);
  v37 = v8;
  v9 = *(v2 + 64);
  v38 = *(v2 + 48);
  v39 = v9;
  sub_10012B4FC(a1, &aBlock);
  v10 = sub_10001DA04();
  sub_100121A18(v10);
  v12 = v11;

  if (v12)
  {
    if (qword_1004A01C0 != -1)
    {
      swift_once();
    }

    aBlock = xmmword_1004D4B58;

    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    if (*(v2 + 104) < 0)
    {
      v14 = 0xD000000000000011;
    }

    else
    {
      v14 = 0x536E6F6973736573;
    }

    if (*(v2 + 104) < 0)
    {
      v15 = 0x8000000100407E20;
    }

    else
    {
      v15 = 0xEE007972616D6D75;
    }

    v16 = v15;
    String.append(_:)(*&v14);

    v17 = String._bridgeToObjectiveC()();

    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *&v31 = sub_10012B604;
    *(&v31 + 1) = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v30 = sub_100121C9C;
    *(&v30 + 1) = &unk_10046E790;
    v19 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v19);

    return sub_10000FF00(v28);
  }

  else
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = 0x8000000100407D90;
    String.append(_:)(v21);
    v32 = v6[3];
    v33 = v6[4];
    v34 = v6[5];
    v35 = v6[6];
    aBlock = *v6;
    v30 = v6[1];
    v31 = v6[2];
    v22 = sub_10001DA04();
    sub_10012158C(v22);

    sub_100018630(0, &qword_1004ABAB0);
    sub_100018630(0, &qword_1004AE0D0);
    sub_10012AAE4();
    v23 = Dictionary.description.getter();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0xD000000000000013;
    v27._object = 0x8000000100407DC0;
    String.append(_:)(v27);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10012A5F4(uint64_t a1)
{
  v27[3] = &type metadata for GuidesEvent;
  v27[4] = &off_100467E30;
  v2 = swift_allocObject();
  v27[0] = v2;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = sub_10000FEBC(v27, &type metadata for GuidesEvent);
  v6 = *(v2 + 64);
  v36 = *(v2 + 48);
  v37 = v6;
  v38 = *(v2 + 80);
  v39 = *(v2 + 96);
  v7 = *(v2 + 32);
  v34 = *(v2 + 16);
  v35 = v7;
  sub_10012AA88(a1, &aBlock);
  v8 = sub_10001E68C();
  sub_100121A18(v8);
  v10 = v9;

  if (v10)
  {
    if (qword_1004A01C0 != -1)
    {
      swift_once();
    }

    aBlock = xmmword_1004D4B58;

    v11._countAndFlagsBits = 46;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = *(v2 + 96) >> 14;
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = 0x8000000100407E00;
        v14 = 0xD000000000000014;
      }

      else
      {
        v13 = 0xEF6C616369747265;
        v14 = 0x762E736564697567;
      }
    }

    else
    {
      v13 = 0xEB00000000656764;
      v14 = 0x652E736564697567;
    }

    v15 = v13;
    String.append(_:)(*&v14);

    v16 = String._bridgeToObjectiveC()();

    v17 = swift_allocObject();
    *(v17 + 16) = v10;
    *&v30 = sub_10012AB84;
    *(&v30 + 1) = v17;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v29 = sub_100121C9C;
    *(&v29 + 1) = &unk_10046E628;
    v18 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v18);

    return sub_10000FF00(v27);
  }

  else
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v20._countAndFlagsBits = 0xD000000000000020;
    v20._object = 0x8000000100407D90;
    String.append(_:)(v20);
    v30 = *(v5 + 2);
    v31 = *(v5 + 3);
    v32 = *(v5 + 4);
    v33 = *(v5 + 40);
    aBlock = *v5;
    v29 = *(v5 + 1);
    v21 = sub_10001E68C();
    sub_10012158C(v21);

    sub_100018630(0, &qword_1004ABAB0);
    sub_100018630(0, &qword_1004AE0D0);
    sub_10012AAE4();
    v22 = Dictionary.description.getter();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._object = 0x8000000100407DC0;
    v26._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v26);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10012A9D0()
{
  sub_10012AA2C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 98, 7);
}

uint64_t sub_10012AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11)
{
  if ((a11 & 0x80000000) == 0)
  {
  }

  return result;
}

unint64_t sub_10012AAE4()
{
  result = qword_1004AA2B8;
  if (!qword_1004AA2B8)
  {
    sub_100018630(255, &qword_1004ABAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA2B8);
  }

  return result;
}

uint64_t sub_10012AB4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10012AB8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012ABB0(__int128 *a1)
{
  v26[3] = &type metadata for PersonHeightEvent;
  v26[4] = &off_100467E00;
  v2 = swift_allocObject();
  v26[0] = v2;
  sub_10001D95C(a1, v2 + 16);
  v3 = sub_10000FEBC(v26, &type metadata for PersonHeightEvent);
  sub_10001D95C((v2 + 16), v27);
  v4 = sub_10001E434();
  sub_100121A18(v4);
  v6 = v5;

  if (v6)
  {
    if (qword_1004A01C0 != -1)
    {
      swift_once();
    }

    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 0x65486E6F73726570;
    v8._object = 0xEC00000074686769;
    String.append(_:)(v8);
    v9 = String._bridgeToObjectiveC()();

    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v23 = sub_10012B604;
    v24 = v10;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v21 = sub_100121C9C;
    v22 = &unk_10046E718;
    v11 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v11);

    return sub_10000FF00(v26);
  }

  else
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v25 = aBlock;
    v13._countAndFlagsBits = 0xD000000000000020;
    v13._object = 0x8000000100407D90;
    String.append(_:)(v13);
    sub_10001D95C(v3, &aBlock);
    v14 = sub_10001E434();
    sub_10012158C(v14);

    sub_100018630(0, &qword_1004ABAB0);
    sub_100018630(0, &qword_1004AE0D0);
    sub_10012AAE4();
    v15 = Dictionary.description.getter();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._object = 0x8000000100407DC0;
    v19._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v19);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10012AEC4(uint64_t a1)
{
  v41[3] = &type metadata for ConfirmedEvent;
  v41[4] = &off_100467E18;
  v2 = swift_allocObject();
  v41[0] = v2;
  v3 = *(a1 + 112);
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = v3;
  *(v2 + 144) = *(a1 + 128);
  *(v2 + 160) = *(a1 + 144);
  v4 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v4;
  v5 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v5;
  v6 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = sub_10000FEBC(v41, &type metadata for ConfirmedEvent);
  v8 = *(v2 + 128);
  v58 = *(v2 + 112);
  v59 = v8;
  v60 = *(v2 + 144);
  v61 = *(v2 + 160);
  v9 = *(v2 + 64);
  v54 = *(v2 + 48);
  v55 = v9;
  v10 = *(v2 + 96);
  v56 = *(v2 + 80);
  v57 = v10;
  v11 = *(v2 + 32);
  v52 = *(v2 + 16);
  v53 = v11;
  sub_10012B3E8(a1, &v42);
  v12 = sub_10001DEE8();
  sub_100121A18(v12);
  v14 = v13;

  if (v14)
  {
    if (qword_1004A01C0 != -1)
    {
      swift_once();
    }

    aBlock = xmmword_1004D4B58;

    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = *(v2 + 112);
    v17 = *(v2 + 144);
    v49 = *(v2 + 128);
    v50 = v17;
    v18 = *(v2 + 48);
    v19 = *(v2 + 80);
    v20 = *(v2 + 96);
    v45 = *(v2 + 64);
    v46 = v19;
    v51 = *(v2 + 160);
    v47 = v20;
    v48 = v16;
    v21 = *(v2 + 32);
    v42 = *(v2 + 16);
    v43 = v21;
    v44 = v18;
    if (sub_10001EE30(&v42) == 1)
    {
      nullsub_1(&v42);
      v22 = 0xE400000000000000;
      v23 = 1701734764;
    }

    else
    {
      nullsub_1(&v42);
      v22 = 0xE900000000000065;
      v23 = 0x6C676E6174636572;
    }

    v24 = v22;
    String.append(_:)(*&v23);

    v25 = String._bridgeToObjectiveC()();

    v26 = swift_allocObject();
    *(v26 + 16) = v14;
    v39 = sub_10012B604;
    v40 = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v37 = sub_100121C9C;
    v38 = &unk_10046E6A0;
    v27 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v27);

    return sub_10000FF00(v41);
  }

  else
  {
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    aBlock = v42;
    v29._countAndFlagsBits = 0xD000000000000020;
    v29._object = 0x8000000100407D90;
    String.append(_:)(v29);
    v48 = *(v7 + 6);
    v49 = *(v7 + 7);
    v50 = *(v7 + 8);
    v51 = *(v7 + 144);
    v44 = *(v7 + 2);
    v45 = *(v7 + 3);
    v46 = *(v7 + 4);
    v47 = *(v7 + 5);
    v42 = *v7;
    v43 = *(v7 + 1);
    v30 = sub_10001DEE8();
    sub_10012158C(v30);

    sub_100018630(0, &qword_1004ABAB0);
    sub_100018630(0, &qword_1004AE0D0);
    sub_10012AAE4();
    v31 = Dictionary.description.getter();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._object = 0x8000000100407DC0;
    v35._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v35);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10012B2E4()
{
  sub_10012B350(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));

  return _swift_deallocObject(v0, 161, 7);
}

uint64_t sub_10012B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
  }
}

uint64_t sub_10012B454()
{
  sub_10012B4B0();

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10012B4B0()
{
}

uint64_t sub_10012B558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSession();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012B5C4(uint64_t *a1)
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

unint64_t sub_10012B618(void *a1, double a2, double a3, double a4, double a5)
{
  v5 = sub_10012B6F8(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v9 setActive:1];

      if (v11 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return v6;
}

uint64_t sub_10012B6F8(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_10000F974(&unk_1004A3F10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003D6240;
  v13 = [v6 leadingAnchor];
  v14 = [a1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:a3];

  *(v12 + 32) = v15;
  v16 = [v6 trailingAnchor];
  v17 = [a1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:a5];

  *(v12 + 40) = v18;
  v19 = [v6 topAnchor];
  v20 = [a1 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:a2];

  *(v12 + 48) = v21;
  v22 = [v6 bottomAnchor];
  v23 = [a1 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:a4];

  *(v12 + 56) = v24;
  return v12;
}

uint64_t sub_10012B90C(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = sub_1000A527C(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_10012C14C(v8, v2, v3, v4);
  sub_10000FF00(a1);
  return v10;
}

void sub_10012BA10()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004D9B4();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *(v1 + 80);
    v8 = sub_10012BBD4();
    aBlock[4] = sub_10012C29C;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10012BEE8;
    aBlock[3] = &unk_10046E7E0;
    v9 = _Block_copy(aBlock);

    [v7 startDeviceMotionUpdatesToQueue:v8 withHandler:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

id sub_10012BBD4()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = v0;
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    if (qword_1004A0358 != -1)
    {
      swift_once();
    }

    [v4 setUnderlyingQueue:qword_1004D4F10];
    OS_dispatch_queue.label.getter();
    v5 = String._bridgeToObjectiveC()();

    [v4 setName:v5];

    v6 = *(v0 + 96);
    *(v3 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void sub_10012BCC4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1004A0278 != -1)
    {
      swift_once();
    }

    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v5._object = 0x8000000100407EF0;
    v5._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v5);
    sub_10000F974(&qword_1004A46B8);
    _print_unlocked<A, B>(_:_:)();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    Log.error(_:isPrivate:)(v6, 0);
  }

  v7 = *(**(a3 + 72) + 144);

  v7(v15, v8);

  v9 = *(a3 + 72);
  v15[0] = a1;
  v10 = *(*v9 + 392);
  v11 = a1;

  v10(v15);

  v12 = *(**(a3 + 72) + 144);

  v12(v15, v13);

  v14 = v15[0];
  CurrentValueSubject.send(_:)();
}

void sub_10012BEE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10012BF74()
{

  v1 = *(v0 + 96);
}

uint64_t sub_10012BFB4()
{
  v0 = StateObserver.deinit();

  v1 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MotionObserver()
{
  result = qword_1004AA338;
  if (!qword_1004AA338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10012C0DC@<X0>(void *a1@<X8>)
{
  if (qword_1004A0358 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1004D4F10;
  *a1 = qword_1004D4F10;

  return v1;
}

uint64_t sub_10012C14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v7 = sub_1000315D4(v11);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  v10[0] = 0;
  sub_10000F974(&unk_1004AFC10);
  swift_allocObject();
  *(a2 + 64) = CurrentValueSubject.init(_:)();
  sub_10000F974(&qword_1004AA458);
  swift_getKeyPath();
  *(a2 + 72) = MutableStateValue.__allocating_init(_:_:)();
  *(a2 + 80) = [objc_allocWithZone(CMMotionManager) init];
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  sub_1000336B4(v11, v10);
  v8 = StateObserver.init(configuration:)();
  sub_10000FF00(v11);
  return v8;
}

uint64_t sub_10012C2A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10012C2BC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  v5 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityLabel:v5];

  v6 = *(v1 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  if (*(a1 + 40))
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v6 setAccessibilityLabel:v8];

  v9 = *(v1 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v10 = String._bridgeToObjectiveC()();
  [v9 setText:v10];

  if (*(a1 + 104))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [v9 setAccessibilityLabel:?];
}

void sub_10012C424()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003D61E0;
  v5 = [v3 leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v3 trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v3 bottomAnchor];
  v12 = [v0 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v3 topAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  v17 = [v2 leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v4 + 64) = v19;
  v20 = [v2 trailingAnchor];
  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v4 + 72) = v22;
  v23 = [v2 bottomAnchor];
  v24 = [v3 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v4 + 80) = v25;
  v26 = [v2 topAnchor];
  v27 = [v1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v4 + 88) = v28;
  v29 = [v1 leadingAnchor];
  v30 = [v0 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v4 + 96) = v31;
  v32 = [v1 trailingAnchor];
  v33 = [v0 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v4 + 104) = v34;
  v35 = [v1 topAnchor];
  v36 = [v0 topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v4 + 112) = v37;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];
}

char *sub_10012C93C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  type metadata accessor for InteractiveLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v10] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
  v16 = v14;
  [v15 setUserInteractionEnabled:1];
  v17 = *&v16[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
  [v17 setUserInteractionEnabled:1];
  v18 = *&v16[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
  [v18 setUserInteractionEnabled:1];
  [v16 addSubview:v15];
  [v16 addSubview:v17];
  [v16 addSubview:v18];
  sub_10012C424();

  return v16;
}

char *sub_10012CB10(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  type metadata accessor for InteractiveLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v4] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  *&v1[v6] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  *&v1[v7] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = *&v8[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
    v11 = v8;
    [v10 setUserInteractionEnabled:1];
    v12 = *&v11[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
    [v12 setUserInteractionEnabled:1];
    v13 = *&v11[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
    [v13 setUserInteractionEnabled:1];
    [v11 addSubview:v10];
    [v11 addSubview:v12];
    [v11 addSubview:v13];
    sub_10012C424();
  }

  return v9;
}

uint64_t sub_10012CD68()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v9[1] = sub_100018630(0, &qword_1004A3F00);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v6 = xmmword_1004D4B58;

  v10 = v6;
  v7._countAndFlagsBits = 0x2D6E6F69746F6D2DLL;
  v7._object = 0xEE0073746E657665;
  String.append(_:)(v7);
  static DispatchQoS.unspecified.getter();
  *&v10 = _swiftEmptyArrayStorage;
  sub_10004B758();
  sub_10000F974(&qword_1004ABEE0);
  sub_10004B7B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = Contexts.PrivateQueue.init(_:)();
  qword_1004D4F10 = result;
  return result;
}

id sub_10012D00C@<X0>(void *a1@<X8>)
{
  if (qword_1004A0358 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F10;
  *a1 = qword_1004D4F10;

  return v2;
}

uint64_t sub_10012D07C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_100018630(0, &qword_1004AA4D8);
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10012D108()
{
  result = qword_1004AA4A0;
  if (!qword_1004AA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA4A0);
  }

  return result;
}

unint64_t sub_10012D15C(uint64_t a1)
{
  result = sub_10012D184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10012D184()
{
  result = qword_1004AA4D0;
  if (!qword_1004AA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA4D0);
  }

  return result;
}

id sub_10012D1D8(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Measure11ColorPicker_value);
  v3 = *(v1 + OBJC_IVAR____TtC7Measure11ColorPicker_redSlider);
  if (v3)
  {
    *&a1 = BYTE3(v2) / 255.0;
    [v3 setValue:a1];
  }

  v4 = *(v1 + OBJC_IVAR____TtC7Measure11ColorPicker_greenSlider);
  if (v4)
  {
    *&a1 = BYTE2(v2) / 255.0;
    [v4 setValue:a1];
  }

  v5 = *(v1 + OBJC_IVAR____TtC7Measure11ColorPicker_blueSlider);
  if (v5)
  {
    *&a1 = BYTE1(v2) / 255.0;
    [v5 setValue:a1];
  }

  result = *(v1 + OBJC_IVAR____TtC7Measure11ColorPicker_alphaSlider);
  if (result)
  {

    *&a1 = v2 / 255.0;
    return [result setValue:a1];
  }

  return result;
}

double sub_10012D2D4(unint64_t a1)
{
  v1.i64[0] = a1 >> 8;
  v1.i64[1] = a1;
  v2.i64[0] = 255;
  v2.i64[1] = 255;
  *&result = vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(a1), xmmword_1003DE020), v2))), vcvtq_f64_u64(vandq_s8(v1, v2))), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

void sub_10012D31C()
{
  v1 = [objc_allocWithZone(UISlider) init];
  v2 = [objc_allocWithZone(UISlider) init];
  v3 = [objc_allocWithZone(UISlider) init];
  v4 = [objc_allocWithZone(UISlider) init];
  v5 = *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_redSlider];
  *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_redSlider] = v1;
  v6 = v1;

  v7 = *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_greenSlider];
  *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_greenSlider] = v2;
  v8 = v2;

  v9 = *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_blueSlider];
  *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_blueSlider] = v3;
  v10 = v3;

  v11 = *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_alphaSlider];
  *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_alphaSlider] = v4;
  v12 = v4;

  [v6 addTarget:v0 action:"updateValue:" forControlEvents:4096];
  [v8 addTarget:v0 action:"updateValue:" forControlEvents:4096];
  [v10 addTarget:v0 action:"updateValue:" forControlEvents:4096];
  [v12 addTarget:v0 action:"updateValue:" forControlEvents:4096];
  sub_10000F974(&unk_1004A3F10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003D6240;
  *(v13 + 32) = v6;
  *(v13 + 40) = v8;
  *(v13 + 48) = v10;
  *(v13 + 56) = v12;
  v14 = objc_allocWithZone(UIStackView);
  sub_100018630(0, &qword_1004A7550);
  v15 = v6;
  v16 = v8;
  v17 = v10;
  v18 = v12;
  v19 = v15;
  v64 = v16;
  v63 = v17;
  v60 = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v14 initWithArrangedSubviews:isa];

  [v21 setAxis:1];
  [v21 setAlignment:3];
  [v21 setDistribution:0];
  v22 = v21;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v22];
  v61 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1003DE030;
  v24 = [v19 leftAnchor];
  v25 = [v22 leftAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v23 + 32) = v26;
  v27 = [v19 rightAnchor];

  v28 = [v22 rightAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v23 + 40) = v29;
  v30 = [v64 leftAnchor];
  v31 = [v22 leftAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v23 + 48) = v32;
  v33 = [v64 rightAnchor];

  v34 = [v22 rightAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v23 + 56) = v35;
  v36 = [v63 leftAnchor];
  v37 = [v22 leftAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v23 + 64) = v38;
  v39 = [v63 rightAnchor];

  v40 = [v22 rightAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v23 + 72) = v41;
  v42 = [v60 leftAnchor];
  v43 = [v22 leftAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v23 + 80) = v44;
  v45 = [v60 rightAnchor];

  v46 = [v22 rightAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v23 + 88) = v47;
  v48 = [v22 leftAnchor];
  v49 = [v0 leftAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:16.0];

  *(v23 + 96) = v50;
  v51 = [v22 rightAnchor];
  v52 = [v0 rightAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-16.0];

  *(v23 + 104) = v53;
  v54 = [v22 topAnchor];
  v55 = [v0 topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v23 + 112) = v56;
  v57 = [v22 bottomAnchor];

  v58 = [v0 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v23 + 120) = v59;
  sub_100018630(0, &qword_1004A1838);
  v62 = Array._bridgeToObjectiveC()().super.isa;

  [v61 activateConstraints:v62];
}

id sub_10012DD30()
{
  result = *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_redSlider];
  if (!result)
  {
    goto LABEL_38;
  }

  result = [result value];
  v3 = v2 * 255.0;
  if (COERCE_INT(fabs(v2 * 255.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_greenSlider];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = [result value];
  v5 = v4 * 255.0;
  if (COERCE_INT(fabs(v4 * 255.0)) > 2139095039)
  {
    goto LABEL_26;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_blueSlider];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = [result value];
  v7 = v6 * 255.0;
  if (COERCE_INT(fabs(v6 * 255.0)) > 2139095039)
  {
    goto LABEL_29;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 >= 9.2234e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_alphaSlider];
  if (!result)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  result = [result value];
  *&v8 = *&v8 * 255.0;
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_32;
  }

  if (*&v8 <= -9.2234e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*&v8 >= 9.2234e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v3 << 24;
  v10 = __OFADD__(v9, v5 << 16);
  v11 = v9 + (v5 << 16);
  if (v10)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = __OFADD__(v11, v7 << 8);
  v12 = v11 + (v7 << 8);
  if (v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = __OFADD__(v12, *&v8);
  v13 = v12 + *&v8;
  if (v10)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *&v0[OBJC_IVAR____TtC7Measure11ColorPicker_value] = v13;
  sub_10012D1D8(v8);

  return [v0 sendActionsForControlEvents:4096];
}

void sub_10012DF68(void *a1)
{
  if (!a1)
  {
    v3 = *(v1 + qword_1004AA5A0);
    v5 = String._bridgeToObjectiveC()();
    [v3 setText:?];
LABEL_9:

    goto LABEL_10;
  }

  v2 = *((swift_isaMask & *a1) + 0xD0);
  v5 = a1;
  if (!v2() || v2() == 5 || v2() == 6)
  {
    v3 = *(v1 + qword_1004AA5A0);
    v4 = String._bridgeToObjectiveC()();
    [v3 setText:v4];

    v5 = v4;
    goto LABEL_9;
  }

LABEL_10:
}

void sub_10012E12C(char a1)
{
  v2 = v1;
  v4 = *(v1 + qword_1004AA5B8);
  _StringGuts.grow(_:)(22);

  __dst[0] = 0xD000000000000014;
  __dst[1] = 0x80000001004084F0;
  if (a1)
  {
    v5 = 2728370160;
  }

  else
  {
    v5 = 3029639152;
  }

  v6._countAndFlagsBits = v5;
  v6._object = 0xA400000000000000;
  String.append(_:)(v6);

  v7 = String._bridgeToObjectiveC()();

  [v4 setText:v7];

  v8 = (v1 + qword_1004AA5C0);
  v9 = *(v1 + qword_1004AA5C0);
  v10 = String._bridgeToObjectiveC()();
  [v9 setText:v10];

  v11 = v8[1];
  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = v8[2];
  v14 = String._bridgeToObjectiveC()();
  [v13 setText:v14];

  v15 = v8[3];
  v16 = String._bridgeToObjectiveC()();

  [v15 setText:v16];

  v17 = qword_1004AA5F8;
  v18 = *(**(v2 + qword_1004AA5F8) + 144);

  v18(__src, v19);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  if (__dst[3])
  {
    v20 = 0x8000000100408510;
    v49 = 0xD000000000000028;
  }

  else
  {
    v21 = __dst[2];
    v22 = __dst[1];
    sub_10000F974(&unk_1004AF710);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1003D5730;
    *(v23 + 56) = &type metadata for CGFloat;
    v24 = sub_1001318E0();
    *(v23 + 64) = v24;
    *(v23 + 32) = v22;
    *(v23 + 96) = &type metadata for CGFloat;
    *(v23 + 104) = v24;
    *(v23 + 72) = v21;
    v49 = String.init(format:_:)();
    v20 = v25;
  }

  v26 = *(**(v2 + v17) + 144);

  v26(v51, v27);

  memcpy(__src, v51, 0x213uLL);
  sub_10006BE28(__src);
  if (__src[56])
  {
    v28 = 0x8000000100408540;
    v29 = 0xD000000000000027;
  }

  else
  {
    v30 = *(&__src[55] + 1);
    sub_10000F974(&unk_1004AF710);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1003D5360;
    *(v31 + 56) = &type metadata for Float;
    *(v31 + 64) = &protocol witness table for Float;
    *(v31 + 32) = v30 * 39.37;
    v29 = String.init(format:_:)();
    v28 = v32;
  }

  v33 = *(**(v2 + v17) + 144);

  v33(v50, v34);

  memcpy(v51, v50, 0x213uLL);
  sub_10006BE28(v51);
  if (v51[55])
  {
    v35 = 0x8000000100408570;
    v48 = 0xD000000000000028;
  }

  else
  {
    v36 = *(&v51[54] + 1);
    sub_10000F974(&unk_1004AF710);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1003D5360;
    *(v37 + 56) = &type metadata for Float;
    *(v37 + 64) = &protocol witness table for Float;
    *(v37 + 32) = v36 * 39.37;
    v48 = String.init(format:_:)();
    v35 = v38;
  }

  v39 = sub_10012F69C(&qword_1004AA548);
  v50[0] = 8224;
  v50[1] = 0xE200000000000000;
  v40._countAndFlagsBits = v49;
  v40._object = v20;
  String.append(_:)(v40);

  v41 = String._bridgeToObjectiveC()();

  [v39 setText:v41];

  v42 = sub_10012F69C(&qword_1004AA550);
  v50[0] = 8224;
  v50[1] = 0xE200000000000000;
  v43._countAndFlagsBits = v29;
  v43._object = v28;
  String.append(_:)(v43);

  v44 = String._bridgeToObjectiveC()();

  [v42 setText:v44];

  v45 = sub_10012F69C(&qword_1004AA558);
  v50[0] = 8224;
  v50[1] = 0xE200000000000000;
  v46._countAndFlagsBits = v48;
  v46._object = v35;
  String.append(_:)(v46);

  v47 = String._bridgeToObjectiveC()();

  [v45 setText:v47];
}

void sub_10012E740()
{
  v1 = qword_1004AA5F0;
  v2 = *(**(v0 + qword_1004AA5F0) + 144);

  v2(__dst, v3);

  v4 = __dst[8];
  if (__dst[8])
  {
    v5 = "iguration: Person Segmentation";
    v46._countAndFlagsBits = 0xD000000000000032;
    v46._object = 0x8000000100408360;
    v6 = 0xD000000000000018;
  }

  else
  {
    simd_float4x4.position.getter();
    v47 = v7;
    sub_10000F974(&unk_1004AF710);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1003D5360;
    *(v8 + 56) = &type metadata for Float;
    *(v8 + 64) = &protocol witness table for Float;
    *(v8 + 32) = vmuls_lane_f32(39.37, v47, 1);
    v46._countAndFlagsBits = String.init(format:_:)();
    v46._object = v9;
    v5 = "ght (worldspace, in): %.3f";
    v6 = 0xD00000000000001DLL;
  }

  v44 = v6;
  v10 = *(**(v0 + v1) + 144);

  v10(__dst, v11);

  if ((__dst[19] & 1) == 0)
  {
    v12 = *(&__dst[18] + 1);
    sub_10000F974(&unk_1004AF710);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1003D5360;
    *(v13 + 56) = &type metadata for Float;
    *(v13 + 64) = &protocol witness table for Float;
    *(v13 + 32) = v12 * 39.37;
  }

  v45._countAndFlagsBits = String.init(format:_:)();
  v45._object = v14;
  if (v4 & 1) != 0 || (simd_float4x4.position.getter(), v43 = v15, v16 = *(**(v0 + v1) + 144), v17 = , v16(__dst, v17), , (__dst[19]))
  {
    v18 = 0x80000001004083D0;
    v42 = 0xD00000000000001ELL;
  }

  else
  {
    v19 = *(&__dst[18] + 1);
    sub_10000F974(&unk_1004AF710);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1003D5360;
    *(v20 + 56) = &type metadata for Float;
    *(v20 + 64) = &protocol witness table for Float;
    *(v20 + 32) = (v43 - v19) * 39.37;
    v42 = String.init(format:_:)();
    v18 = v21;
  }

  v22 = *(**(v0 + qword_1004AA5F8) + 144);

  v22(__src, v23);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  v24 = "Floor chosen: 📱ARKIT📱";
  if ((__dst[66] & 0x100) != 0)
  {
    v25 = 0x100000000000001ALL;
  }

  else
  {
    v25 = 0x100000000000001BLL;
  }

  if ((__dst[66] & 0x100) == 0)
  {
    v24 = "Floor chosen: 🚫NO FLOOR🚫";
  }

  if (BYTE1(__dst[66]) == 2)
  {
    v26 = 0x100000000000001ELL;
  }

  else
  {
    v26 = v25;
  }

  v41 = v26;
  if (BYTE1(__dst[66]) == 2)
  {
    v27 = "Difference in ARKit Floor: N/A";
  }

  else
  {
    v27 = v24;
  }

  v28 = sub_10012F69C(&qword_1004AA560);
  __src[0] = 8224;
  __src[1] = 0xE200000000000000;
  v29._object = (v5 | 0x8000000000000000);
  v29._countAndFlagsBits = v44;
  String.append(_:)(v29);

  v30 = String._bridgeToObjectiveC()();

  [v28 setText:v30];

  v31 = sub_10012F69C(&qword_1004AA568);
  __src[0] = 8224;
  __src[1] = 0xE200000000000000;
  String.append(_:)(v46);

  v32 = String._bridgeToObjectiveC()();

  [v31 setText:v32];

  v33 = sub_10012F69C(&qword_1004AA578);
  __src[0] = 8224;
  __src[1] = 0xE200000000000000;
  String.append(_:)(v45);

  v34 = String._bridgeToObjectiveC()();

  [v33 setText:v34];

  v35 = sub_10012F69C(&qword_1004AA570);
  __src[0] = 8224;
  __src[1] = 0xE200000000000000;
  v36._countAndFlagsBits = v42;
  v36._object = v18;
  String.append(_:)(v36);

  v37 = String._bridgeToObjectiveC()();

  [v35 setText:v37];

  v38 = sub_10012F69C(&qword_1004AA580);
  __src[0] = 8224;
  __src[1] = 0xE200000000000000;
  v39._object = (v27 | 0x8000000000000000);
  v39._countAndFlagsBits = v41;
  String.append(_:)(v39);

  v40 = String._bridgeToObjectiveC()();

  [v38 setText:v40];
}

void sub_10012EDAC()
{
  v1 = *(**(v0 + qword_1004AA5F8) + 144);

  v1(v5, v2);

  memcpy(__dst, v5, 0x213uLL);
  sub_10006BE28(__dst);
  v3 = sub_10012F69C(&qword_1004AA588);
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];
}

void sub_10012EEB0(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = v2 - 1;
  for (i = (a1 + 16 * v2 + 24); ; i -= 2)
  {
    v8 = sub_10012F82C();
    v9 = v8 & 0xC000000000000001;
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (v2)
      {
        break;
      }
    }

    if (v9)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v8 + 8 * v1 + 32);
    }

    v6 = v5;

    v7 = String._bridgeToObjectiveC()();
LABEL_4:
    [v6 setText:{v7, v14, v15}];
    ++v1;

    --v3;
    if (v1 == 5)
    {
      return;
    }
  }

  if (v9)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 8 * v1 + 32);
LABEL_10:
    v6 = v10;

    v11 = *(i - 1);
    v12 = *i;
    v14 = 8224;
    v15 = 0xE200000000000000;

    v13._countAndFlagsBits = v11;
    v13._object = v12;
    String.append(_:)(v13);

    v7 = String._bridgeToObjectiveC()();

    goto LABEL_4;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_10012F040()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    [v2 frame];

    v4 = [v1 subviews];
    v52 = sub_100018630(0, &qword_1004A7550);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 sizeToFit];

        ++v7;
        if (v10 == i)
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

    v11 = qword_1004AA598;
    v12 = *&v1[qword_1004AA598];
    v13 = [v1 subviews];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    sub_1000A2530(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      for (j = 0; j != v15; ++j)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v14 + 8 * j + 32);
        }

        v18 = v17;
        [v17 frame];
        v20 = v19;

        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        if (*&v22 >= *&v21 >> 1)
        {
          sub_1000A2530((*&v21 > 1uLL), *&v22 + 1, 1);
        }

        *&_swiftEmptyArrayStorage[2] = *&v22 + 1;
        _swiftEmptyArrayStorage[*&v22 + 4] = v20;
      }

LABEL_28:

      *&v23 = COERCE_DOUBLE(sub_10004FEFC(_swiftEmptyArrayStorage));
      v25 = v24;

      v26 = *&v23;
      if (v25)
      {
        v26 = 0.0;
      }

      if ((*&v26 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v27 = v12;
      }

      else
      {
        v27 = v26;
      }

      if ((~*&v26 & 0x7FF0000000000000) != 0)
      {
        v27 = v26;
      }

      if (v26 >= v12)
      {
        v28 = v27;
      }

      else
      {
        v28 = v12;
      }

      *&v1[v11] = v28;
      [v1 frame];
      v30 = v29;
      if (qword_1004A0180 != -1)
      {
        goto LABEL_55;
      }

      while (1)
      {
        if (!qword_1004D4AC8)
        {
          goto LABEL_72;
        }

        v31 = *(qword_1004D4AC8 + 88);
        if (v31)
        {
          [v31 frame];
          MaxY = CGRectGetMaxY(v54);
        }

        else
        {
          MaxY = 75.0;
        }

        v33 = [v1 subviews];
        v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v34 >> 62)
        {
          v35 = _CocoaArrayWrapper.endIndex.getter();
          if (!v35)
          {
LABEL_57:
            v37 = 0.0;
LABEL_58:

            [v1 setFrame:{v30, MaxY, *&v1[v11], v37}];
            v43 = [v1 subviews];
            v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v44 >> 62)
            {
              v45 = _CocoaArrayWrapper.endIndex.getter();
              if (v45)
              {
LABEL_60:
                if (v45 < 1)
                {
                  goto LABEL_71;
                }

                v46 = 0;
                v47 = 0.0;
                do
                {
                  if ((v44 & 0xC000000000000001) != 0)
                  {
                    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v48 = *(v44 + 8 * v46 + 32);
                  }

                  v49 = v48;
                  ++v46;
                  [v48 frame];
                  [v49 setFrame:?];
                  [v49 frame];
                  v51 = v50;

                  v47 = v47 + v51;
                }

                while (v45 != v46);
              }
            }

            else
            {
              v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v45)
              {
                goto LABEL_60;
              }
            }

            return;
          }
        }

        else
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v35)
          {
            goto LABEL_57;
          }
        }

        v36 = 0;
        v37 = 0.0;
        while (1)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v38 = *(v34 + 8 * v36 + 32);
          }

          v39 = v38;
          v40 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          [v38 frame];
          v42 = v41;

          v37 = v37 + v42;
          ++v36;
          if (v40 == v35)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        swift_once();
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }
}

id sub_10012F5C0()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
  qword_1004AA530 = result;
  return result;
}

id sub_10012F604()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  qword_1004AA538 = result;
  return result;
}

uint64_t sub_10012F648()
{
  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  v1 = 9.0;
  if (result)
  {
    v1 = 12.0;
  }

  qword_1004AA540 = *&v1;
  return result;
}

id sub_10012F69C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    [v1 frame];
    v9 = [objc_allocWithZone(UILabel) initWithFrame:{v5, v6, v7, v8}];
    if (qword_1004A0368 != -1)
    {
      swift_once();
    }

    [v9 setTextColor:qword_1004AA538];
    [v9 setTextAlignment:0];
    v10 = objc_opt_self();
    if (qword_1004A0370 != -1)
    {
      v15 = v10;
      swift_once();
      v10 = v15;
    }

    v11 = [v10 systemFontOfSize:*&qword_1004AA540];
    [v9 setFont:v11];

    v12 = *&v1[v2];
    *&v1[v2] = v9;
    v4 = v9;

    v3 = 0;
  }

  v13 = v3;
  return v4;
}

uint64_t sub_10012F82C()
{
  if (*&v0[qword_1004AA590])
  {
    v1 = *&v0[qword_1004AA590];
  }

  else
  {
    v36 = qword_1004AA590;
    sub_10000F974(&unk_1004A3F10);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1003D7BB0;
    [v0 frame];
    v6 = [objc_allocWithZone(UILabel) initWithFrame:{v2, v3, v4, v5}];
    if (qword_1004A0368 != -1)
    {
      swift_once();
    }

    v7 = qword_1004AA538;
    [v6 setTextColor:qword_1004AA538];
    [v6 setTextAlignment:0];
    v8 = objc_opt_self();
    if (qword_1004A0370 != -1)
    {
      swift_once();
    }

    v9 = *&qword_1004AA540;
    v10 = [v8 systemFontOfSize:*&qword_1004AA540];
    [v6 setFont:v10];

    *(v1 + 32) = v6;
    [v0 frame];
    v15 = [objc_allocWithZone(UILabel) initWithFrame:{v11, v12, v13, v14}];
    [v15 setTextColor:v7];
    [v15 setTextAlignment:0];
    v16 = [v8 systemFontOfSize:v9];
    [v15 setFont:v16];

    *(v1 + 40) = v15;
    [v0 frame];
    v21 = [objc_allocWithZone(UILabel) initWithFrame:{v17, v18, v19, v20}];
    [v21 setTextColor:v7];
    [v21 setTextAlignment:0];
    v22 = [v8 systemFontOfSize:v9];
    [v21 setFont:v22];

    *(v1 + 48) = v21;
    [v0 frame];
    v27 = [objc_allocWithZone(UILabel) initWithFrame:{v23, v24, v25, v26}];
    [v27 setTextColor:v7];
    [v27 setTextAlignment:0];
    v28 = [v8 systemFontOfSize:v9];
    [v27 setFont:v28];

    *(v1 + 56) = v27;
    [v0 frame];
    v33 = [objc_allocWithZone(UILabel) initWithFrame:{v29, v30, v31, v32}];
    [v33 setTextColor:v7];
    [v33 setTextAlignment:0];
    v34 = [v8 systemFontOfSize:v9];
    [v33 setFont:v34];

    *(v1 + 64) = v33;
    *&v0[v36] = v1;
  }

  return v1;
}

void sub_10012FCA8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[qword_1004AA548] = 0;
  *&v4[qword_1004AA550] = 0;
  *&v4[qword_1004AA558] = 0;
  *&v4[qword_1004AA560] = 0;
  *&v4[qword_1004AA568] = 0;
  *&v4[qword_1004AA570] = 0;
  *&v4[qword_1004AA578] = 0;
  *&v4[qword_1004AA580] = 0;
  *&v4[qword_1004AA588] = 0;
  *&v4[qword_1004AA590] = 0;
  *&v4[qword_1004AA598] = 0;
  v11 = qword_1004AA5A0;
  *&v5[v11] = [objc_allocWithZone(UILabel) init];
  v12 = qword_1004AA5A8;
  *&v5[v12] = [objc_allocWithZone(UILabel) init];
  v13 = qword_1004AA5B0;
  *&v5[v13] = [objc_allocWithZone(UILabel) init];
  v14 = qword_1004AA5B8;
  *&v5[v14] = [objc_allocWithZone(UILabel) init];
  v15 = &v5[qword_1004AA5C0];
  v16 = [objc_allocWithZone(UILabel) init];
  v17 = [objc_allocWithZone(UILabel) init];
  v18 = [objc_allocWithZone(UILabel) init];
  v19 = [objc_allocWithZone(UILabel) init];
  *v15 = v16;
  *(v15 + 1) = v17;
  *(v15 + 2) = v18;
  *(v15 + 3) = v19;
  v20 = qword_1004AA5C8;
  *&v5[v20] = [objc_allocWithZone(UILabel) init];
  v21 = qword_1004AA5D0;
  *&v5[v21] = [objc_allocWithZone(UILabel) init];
  *&v5[qword_1004AA5D8] = _swiftEmptyArrayStorage;
  v22 = qword_1004AA5E0;
  KeyPath = swift_getKeyPath();
  v24 = sub_10000F974(&unk_1004A2520);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v25 = qword_1004D5058;
  v26 = *(v24 + 272);
  swift_retain_n();
  *&v5[v22] = v26(KeyPath, v25);
  v27 = qword_1004AA5E8;
  v28 = swift_getKeyPath();
  v29 = *(sub_10000F974(&qword_1004A7530) + 272);

  *&v5[v27] = v29(v28, v25);
  v30 = qword_1004AA5F0;
  v31 = swift_getKeyPath();
  v32 = sub_10000F974(&qword_1004A8770);
  *&v5[v30] = (*(v32 + 272))(v31, v25);
  v33 = qword_1004AA5F8;
  v34 = swift_getKeyPath();
  v35 = sub_10000F974(qword_1004AB020);
  *&v5[v33] = (*(v35 + 272))(v34, v25);
  v149.receiver = v5;
  v149.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v149, "initWithFrame:", a1, a2, a3, a4);
  v37 = qword_1004A0360;
  v38 = v36;
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setBackgroundColor:qword_1004AA530];
  [v38 setContentMode:9];
  v39 = qword_1004AA5B0;
  v40 = *&v38[qword_1004AA5B0];
  v41 = String._bridgeToObjectiveC()();
  [v40 setText:v41];

  v42 = *&v38[v39];
  v43 = objc_opt_self();
  v44 = qword_1004A0370;
  v45 = v42;
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = *&qword_1004AA540;
  v47 = [v43 systemFontOfSize:*&qword_1004AA540];
  [v45 setFont:v47];

  v48 = *&v38[v39];
  v49 = objc_opt_self();
  v50 = v48;
  v148 = v38;
  v51 = [v49 whiteColor];
  [v50 setTextColor:v51];

  [v148 addSubview:*(v148 + v39)];
  v52 = qword_1004AA5B8;
  v53 = *(v148 + qword_1004AA5B8);
  v54 = String._bridgeToObjectiveC()();
  [v53 setText:v54];

  v55 = *(v148 + v52);
  v56 = [v43 systemFontOfSize:v46];
  [v55 setFont:v56];

  v57 = *(v148 + v52);
  v58 = [v49 whiteColor];
  [v57 setTextColor:v58];

  [v148 addSubview:*(v148 + v52)];
  v59 = qword_1004AA5A0;
  v60 = *(v148 + qword_1004AA5A0);
  v61 = String._bridgeToObjectiveC()();
  [v60 setText:v61];

  v62 = *(v148 + v59);
  v63 = [v43 systemFontOfSize:v46];
  [v62 setFont:v63];

  v64 = *(v148 + v59);
  v65 = [v49 whiteColor];
  [v64 setTextColor:v65];

  [v148 addSubview:*(v148 + v59)];
  v66 = qword_1004AA5A8;
  v67 = *(v148 + qword_1004AA5A8);
  v68 = String._bridgeToObjectiveC()();
  [v67 setText:v68];

  v69 = *(v148 + v66);
  v70 = [v43 systemFontOfSize:v46];
  [v69 setFont:v70];

  v71 = v148;
  v72 = *(v148 + v66);
  v73 = [v49 whiteColor];
  [v72 setTextColor:v73];

  [v71 addSubview:*&v71[v66]];
  v74 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  if (qword_1004A0368 != -1)
  {
    swift_once();
  }

  v75 = qword_1004AA538;
  [v74 setTextColor:qword_1004AA538];
  [v74 setTextAlignment:0];
  v76 = [v43 systemFontOfSize:v46];
  [v74 setFont:v76];

  v77 = String._bridgeToObjectiveC()();
  [v74 setText:v77];

  v147 = v74;
  [v148 addSubview:v74];
  v78 = sub_10012F69C(&qword_1004AA548);
  [v148 addSubview:v78];

  v79 = sub_10012F69C(&qword_1004AA550);
  [v148 addSubview:v79];

  v80 = sub_10012F69C(&qword_1004AA558);
  [v148 addSubview:v80];

  v81 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v81 setTextColor:v75];
  [v81 setTextAlignment:0];
  v82 = [v43 systemFontOfSize:v46];
  [v81 setFont:v82];

  v83 = String._bridgeToObjectiveC()();
  [v81 setText:v83];

  v146 = v81;
  [v148 addSubview:v81];
  v84 = sub_10012F69C(&qword_1004AA560);
  [v148 addSubview:v84];

  v85 = sub_10012F69C(&qword_1004AA568);
  [v148 addSubview:v85];

  v86 = sub_10012F69C(&qword_1004AA578);
  [v148 addSubview:v86];

  v87 = sub_10012F69C(&qword_1004AA570);
  [v148 addSubview:v87];

  v88 = sub_10012F69C(&qword_1004AA580);
  [v148 addSubview:v88];

  v89 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v89 setTextColor:v75];
  [v89 setTextAlignment:0];
  v90 = [v43 systemFontOfSize:v46];
  [v89 setFont:v90];

  v91 = String._bridgeToObjectiveC()();
  [v89 setText:v91];

  v145 = v89;
  [v148 addSubview:v89];
  v92 = sub_10012F69C(&qword_1004AA588);
  [v148 addSubview:v92];

  v93 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v93 setTextColor:v75];
  [v93 setTextAlignment:0];
  v94 = [v43 systemFontOfSize:v46];
  [v93 setFont:v94];

  v95 = String._bridgeToObjectiveC()();
  [v93 setText:v95];

  [v148 addSubview:v93];
  v96 = sub_10012F82C();
  v144 = v93;
  if ((v96 & 0xC000000000000001) != 0)
  {
    v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_36:

      v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_18;
    }

    v97 = *(v96 + 32);
  }

  v98 = v97;

  [v148 addSubview:v98];

  v71 = qword_1004AA590;
  v99 = *(v148 + qword_1004AA590);
  if ((v99 & 0xC000000000000001) != 0)
  {

    v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_38;
    }

    v100 = *(v99 + 40);
  }

  [v148 addSubview:v100];

  v101 = *&v71[v148];
  if ((v101 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  v102 = *(v101 + 48);
LABEL_18:
  [v148 addSubview:v102];

  v103 = *&v71[v148];
  if ((v103 & 0xC000000000000001) != 0)
  {
LABEL_38:

    v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_21;
  }

  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  v104 = *(v103 + 56);
LABEL_21:
  [v148 addSubview:v104];

  v105 = *&v71[v148];
  v71 = v148;
  if ((v105 & 0xC000000000000001) != 0)
  {
LABEL_40:

    v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_24;
  }

  if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v106 = *(v105 + 64);
LABEL_24:
  [v71 addSubview:v106];

  sub_10012F040();
  v142 = [objc_allocWithZone(UILabel) init];
  v140 = [objc_allocWithZone(UILabel) init];
  v138 = [objc_allocWithZone(UILabel) init];
  v136 = [objc_allocWithZone(UILabel) init];
  v107 = 0;
  v108 = qword_1004AA5D8;
  v109 = 128512;
  v110 = 80;
  do
  {
    v111 = static String._uncheckedFromUTF8(_:)();
    v113 = v112;
    swift_beginAccess();
    v114 = *&v71[v108];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71[v108] = v114;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v114 = sub_100067C24(0, *(v114 + 2) + 1, 1, v114);
      *&v71[v108] = v114;
    }

    v117 = *(v114 + 2);
    v116 = *(v114 + 3);
    if (v117 >= v116 >> 1)
    {
      v114 = sub_100067C24((v116 > 1), v117 + 1, 1, v114);
    }

    *(v114 + 2) = v117 + 1;
    v118 = &v114[16 * v117];
    *(v118 + 4) = v111;
    *(v118 + 5) = v113;
    v71 = v148;
    *(v148 + v108) = v114;
    swift_endAccess();
    ++v109;
    v107 += 256;
    --v110;
  }

  while (v110);
  v119 = (v148 + qword_1004AA5C0);
  v120 = *(v148 + qword_1004AA5C0);
  v121 = *(v148 + qword_1004AA5C0 + 8);
  *v119 = v142;
  v119[1] = v140;
  v122 = v119[2];
  v123 = v119[3];
  v119[2] = v138;
  v119[3] = v136;
  v143 = v142;
  v141 = v140;
  v139 = v138;
  v137 = v136;

  [*v119 setFrame:{0.0, 0.0, 100.0, 100.0}];
  [v119[1] setFrame:{0.0, 0.0, 100.0, 100.0}];
  [v119[2] setFrame:{0.0, 0.0, 100.0, 100.0}];
  [v119[3] setFrame:{0.0, 0.0, 100.0, 100.0}];
  [*v119 setTextAlignment:1];
  [v119[1] setTextAlignment:1];
  [v119[2] setTextAlignment:1];
  [v119[3] setTextAlignment:1];
  v124 = qword_1004AA5C8;
  v125 = *(v148 + qword_1004AA5C8);
  v126 = [v125 font];
  if (!v126)
  {
    goto LABEL_43;
  }

  v127 = v126;
  v128 = [v126 fontWithSize:80.0];

  [v125 setFont:v128];
  [*(v148 + v124) setFrame:{0.0, 0.0, 100.0, 100.0}];
  [*(v148 + v124) setTextAlignment:1];
  v129 = qword_1004AA5D0;
  v130 = *(v148 + qword_1004AA5D0);
  v131 = String._bridgeToObjectiveC()();
  [v130 setText:v131];

  v132 = *(v148 + v129);
  v133 = [v132 font];
  if (v133)
  {
    v134 = v133;
    v135 = [v133 fontWithSize:80.0];

    [v132 setFont:v135];
    [*(v148 + v129) setFrame:{0.0, 0.0, 100.0, 100.0}];
    [*(v148 + v129) setTextAlignment:1];

    return;
  }

LABEL_44:
  __break(1u);
}

void sub_100131090(void *a1)
{
  v1 = a1;
  sub_10012F040();
}

uint64_t sub_1001310D8()
{

  v1 = *(v0 + qword_1004AA5C0);
  v2 = *(v0 + qword_1004AA5C0 + 8);
  v3 = *(v0 + qword_1004AA5C0 + 16);
}

uint64_t sub_10013127C(uint64_t a1)
{

  v2 = *(a1 + qword_1004AA5C0);
  v3 = *(a1 + qword_1004AA5C0 + 8);
  v4 = *(a1 + qword_1004AA5C0 + 16);
}

uint64_t type metadata accessor for PersonHeightDebugStatsView()
{
  result = qword_1004AA628;
  if (!qword_1004AA628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100131520()
{
  v1 = v0;
  *(v0 + qword_1004AA548) = 0;
  *(v0 + qword_1004AA550) = 0;
  *(v0 + qword_1004AA558) = 0;
  *(v0 + qword_1004AA560) = 0;
  *(v0 + qword_1004AA568) = 0;
  *(v0 + qword_1004AA570) = 0;
  *(v0 + qword_1004AA578) = 0;
  *(v0 + qword_1004AA580) = 0;
  *(v0 + qword_1004AA588) = 0;
  *(v0 + qword_1004AA590) = 0;
  *(v0 + qword_1004AA598) = 0;
  v2 = qword_1004AA5A0;
  *(v1 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = qword_1004AA5A8;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = qword_1004AA5B0;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = qword_1004AA5B8;
  *(v1 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = (v1 + qword_1004AA5C0);
  v7 = [objc_allocWithZone(UILabel) init];
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = [objc_allocWithZone(UILabel) init];
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  v11 = qword_1004AA5C8;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = qword_1004AA5D0;
  *(v1 + v12) = [objc_allocWithZone(UILabel) init];
  *(v1 + qword_1004AA5D8) = _swiftEmptyArrayStorage;
  v13 = qword_1004AA5E0;
  KeyPath = swift_getKeyPath();
  v15 = sub_10000F974(&unk_1004A2520);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v16 = qword_1004D5058;
  v17 = *(v15 + 272);
  swift_retain_n();
  *(v1 + v13) = v17(KeyPath, v16);
  v18 = qword_1004AA5E8;
  v19 = swift_getKeyPath();
  v20 = *(sub_10000F974(&qword_1004A7530) + 272);

  *(v1 + v18) = v20(v19, v16);
  v21 = qword_1004AA5F0;
  v22 = swift_getKeyPath();
  v23 = sub_10000F974(&qword_1004A8770);
  *(v1 + v21) = (*(v23 + 272))(v22, v16);
  v24 = qword_1004AA5F8;
  v25 = swift_getKeyPath();
  v26 = sub_10000F974(qword_1004AB020);
  *(v1 + v24) = (*(v26 + 272))(v25, v16);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1001318E0()
{
  result = qword_1004AA7D8;
  if (!qword_1004AA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA7D8);
  }

  return result;
}

id sub_100131934()
{
  ObjectType = swift_getObjectType();
  v2 = CVPixelBufferUnlockBaseAddress(*&v0[OBJC_IVAR____TtC7Measure25OpenCVWrapperCVBufferLock_buffer], *&v0[OBJC_IVAR____TtC7Measure25OpenCVWrapperCVBufferLock_lockFlags]);
  v3._object = 0x8000000100408770;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  logCVError(_:label:)(v2, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Int __swiftcall OpenCVWrapperCorners.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

id sub_100131ABC(int64_t a1, uint64_t a2, int64_t a3, id a4, uint64_t a5)
{
  result = [a4 getPointCountAtContourIndex:a5];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [a4 getPointCountAtContourIndex:a5];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v11 = a3 - a1;
  if (a2 >= 1)
  {
    if (v11 < 0 || v11 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v11 <= 0 && v11 > a2)
  {
    return 0;
  }

LABEL_12:
  v13 = __OFADD__(a1, a2);
  v12 = a1 + a2;
  if (v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [a4 getPointCountAtContourIndex:a5];
  if ((v12 & 0x8000000000000000) == 0 && result >= v12)
  {
    return v12;
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_100131BAC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = [v4 *a4];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [v4 *a4];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_12:
  v12 = __OFADD__(a1, a2);
  v11 = a1 + a2;
  if (v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [v4 *a4];
  if ((v11 & 0x8000000000000000) == 0 && result >= v11)
  {
    return v11;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_100131C88@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = [*v2 getPointCountAtContourIndex:*(v2 + 8)];
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100131CE4(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = [*v1 getPointCountAtContourIndex:*(v1 + 8)];
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_100131D4C@<X0>(void *a1@<X8>)
{
  result = [*v1 getPointCountAtContourIndex:*(v1 + 8)];
  *a1 = result;
  return result;
}

uint64_t (*sub_100131D80(void *a1, void *a2))(void)
{
  [*v2 getPointAtContourIndex:*(v2 + 8) pointIndex:*a2];
  *a1 = v4;
  a1[1] = v5;
  return nullsub_1;
}

uint64_t sub_100131DD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = *(v2 + 8);
  v9 = v6;
  result = [v6 getPointCountAtContourIndex:v7];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v9;
  a2[3] = v7;

  return v9;
}

unint64_t sub_100131E58@<X0>(void *a1@<X8>)
{
  result = [*v1 getPointCountAtContourIndex:*(v1 + 8)];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_100131ED0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*v3 getPointCountAtContourIndex:*(v3 + 8)];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_100131F2C@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100131ABC(*a1, a2, *a3, *v4, *(v4 + 8));
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

id sub_100131F68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v6 = *v2;
  v5 = *(v2 + 8);
  result = [*v2 getPointCountAtContourIndex:v5];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v6 getPointCountAtContourIndex:v5];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100131FE8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_100132004(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100132020(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_10013203C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_100132054(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void sub_10013206C(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

int64_t sub_100132080()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = [v2 getPointCountAtContourIndex:v1];
  result = [v2 getPointCountAtContourIndex:v1];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v2 getPointCountAtContourIndex:v1];
    if ((v3 & 0x8000000000000000) == 0 && result >= v3)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

double *sub_1001320FC()
{
  v1 = *v0;
  v2 = sub_10011BE58(*v0, *(v0 + 8));

  return v2;
}

id sub_1001321C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, SEL *a4@<X5>, uint64_t a5@<X8>)
{
  result = sub_100131BAC(*a1, a2, *a3, a4);
  *a5 = result;
  *(a5 + 8) = v7 & 1;
  return result;
}

id sub_100132214@<X0>(void *a1@<X8>)
{
  result = [*v1 getContourCount];
  *a1 = result;
  return result;
}

uint64_t (*sub_100132248(void *a1, uint64_t *a2))()
{
  v3 = *a2;
  *a1 = *v2;
  a1[1] = v3;
  return nullsub_1;
}

uint64_t sub_100132290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

double *sub_1001322E4()
{
  v1 = *v0;
  v2 = sub_10011C084(*v0);

  return v2;
}

unint64_t sub_100132408()
{
  result = qword_1004AA7E0;
  if (!qword_1004AA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA7E0);
  }

  return result;
}

unint64_t sub_100132490()
{
  result = qword_1004AA7F8;
  if (!qword_1004AA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA7F8);
  }

  return result;
}

unint64_t sub_10013252C()
{
  result = qword_1004AA810;
  if (!qword_1004AA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA810);
  }

  return result;
}

unint64_t sub_100132584()
{
  result = qword_1004AA818;
  if (!qword_1004AA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA818);
  }

  return result;
}

uint64_t sub_100132654(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100013BB0(&qword_1004AA808);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001326D0()
{
  result = qword_1004AA830;
  if (!qword_1004AA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA830);
  }

  return result;
}

uint64_t sub_100132764(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100013BB0(&qword_1004AA7F0);
    sub_100132490();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001328F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100018630(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001329D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100013BB0(&qword_1004AA868);
    sub_1001328F8(a2, &qword_1004A4AB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100132BC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100013BB0(&qword_1004AA8B8);
    sub_1001328F8(a2, &qword_1004AA8A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100132D00@<X0>(void *result@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = [*v3 *a2];
    if ((v5 & 0x8000000000000000) == 0 && v5 < result)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100132D64(uint64_t *result, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    result = [*v4 *a4];
    if ((v5 & 0x8000000000000000) == 0 && v5 < result)
    {
      *v6 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_100132E68@<X0>(void *a1@<X8>)
{
  result = [*v1 getCornerCount];
  *a1 = result;
  return result;
}

uint64_t (*sub_100132E9C(uint64_t a1, void *a2))(void)
{
  [*v2 getCornerAtIndex:*a2];
  v4 = v7;
  *a1 = v6;
  *(a1 + 16) = v4;
  return nullsub_1;
}

uint64_t sub_100132F14@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = *v3;
  result = [*v3 *a2];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a3 = v6;
  a3[1] = v5;
  a3[2] = v8;

  return v8;
}

unint64_t sub_100132F9C@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  result = [*v2 *a1];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

void *sub_100132FDC@<X0>(void *result@<X0>, uint64_t a2@<X1>, SEL *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*v4 *a3];
    if ((v6 & 0x8000000000000000) == 0 && result >= v6)
    {
      *a4 = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_100133034(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *v5;
  result = [v9 *a5];
  if (v7 < 0 || result < v7)
  {
    __break(1u);
  }

  else
  {
    result = [v9 *a5];
    if ((v8 & 0x8000000000000000) == 0 && result >= v8)
    {
      return (v8 - v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100133100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

double *sub_100133154()
{
  v1 = *v0;
  v2 = sub_10011BF74(*v0);

  return v2;
}

uint64_t sub_1001332B8()
{
  v1 = [v0 length];
  sub_10000F974(&qword_1004AA930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = NSDocumentTypeDocumentAttribute;
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v3;
  *(inited + 40) = NSRTFTextDocumentType;
  v4 = NSDocumentTypeDocumentAttribute;
  v5 = NSRTFTextDocumentType;
  sub_10019AC6C(inited);
  swift_setDeallocating();
  sub_10013346C(inited + 32);
  type metadata accessor for DocumentAttributeKey(0);
  sub_1001334D4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = 0;
  v7 = [v0 dataFromRange:0 documentAttributes:v1 error:{isa, &v12}];

  v8 = v12;
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v9;
}

uint64_t sub_10013346C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AA938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001334D4()
{
  result = qword_1004A0C80;
  if (!qword_1004A0C80)
  {
    type metadata accessor for DocumentAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0C80);
  }

  return result;
}

void sub_100133550(char a1, void *a2)
{
  v5 = String._bridgeToObjectiveC()();

  [a2 startedTest:v5];

  if (a1)
  {
    v6 = *(*(v2 + 16) + 112);
    if (!v6)
    {
      __break(1u);
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    [v7 setSelectedIndex:v9];
  }

  v10 = String._bridgeToObjectiveC()();

  [a2 finishedTest:v10];
}

uint64_t sub_100133740(double a1, double a2, double a3, double a4)
{
  [*(v4 + OBJC_IVAR____TtC7Measure11PointRender_point) setSimdWorldTransform:?];
  [*(v4 + OBJC_IVAR____TtC7Measure11PointRender_pointPrime) setSimdWorldTransform:{a1, a2, a3, a4}];
  v5 = OBJC_IVAR____TtC7Measure11PointRender_pointNodes;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = &off_100494000;
    v25 = v6;
    while (1)
    {
      if (v9)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_16;
        }

        v12 = *(v6 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = [v12 v11[65]];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 firstMaterial];

        if (v17)
        {
          simd_float4x4.position.getter();
          SCNVector3.init(_:)();
          isa = SCNVector3._bridgeToObjectiveC()().super.isa;
          v19 = v10;
          v20 = v9;
          v21 = i;
          v22 = v11;
          v23 = String._bridgeToObjectiveC()();
          [v17 setValue:isa forKeyPath:v23];

          v11 = v22;
          i = v21;
          v9 = v20;
          v10 = v19;
          v6 = v25;
        }
      }

      ++v8;
      if (v14 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_10013393C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = (v4 + OBJC_IVAR____TtC7Measure11PointRender_connectedEndpointTransform);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4].n128_u8[0] = 0;
  v6 = OBJC_IVAR____TtC7Measure11PointRender_pointNodes;
  swift_beginAccess();
  v7 = *(v4 + v6);
  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = &off_100494000;
    v26 = v7;
    while (1)
    {
      if (v10)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_16;
        }

        v13 = *(v7 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v16 = [v13 v12[65]];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 firstMaterial];

        if (v18)
        {
          simd_float4x4.position.getter();
          SCNVector3.init(_:)();
          isa = SCNVector3._bridgeToObjectiveC()().super.isa;
          v20 = v11;
          v21 = v10;
          v22 = i;
          v23 = v12;
          v24 = String._bridgeToObjectiveC()();
          [v18 setValue:isa forKeyPath:v24];

          v12 = v23;
          i = v22;
          v10 = v21;
          v11 = v20;
          v7 = v26;
        }
      }

      ++v9;
      if (v15 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_100133B20()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___isOcclusionInitialized);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___isOcclusionInitialized) = 0;
  }

  return v1 & 1;
}

id sub_100133B44()
{
  v1 = OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointMaterial;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointMaterial);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointMaterial);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC7Measure11PointRender_isPartOfRectangle))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_10018C1EC(v4);
    [v5 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002D310();
    if (swift_dynamicCast())
    {
      v6 = v10;
    }

    else
    {
      v6 = [objc_allocWithZone(SCNMaterial) init];
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100133C3C()
{
  v1 = OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointPrimeMaterial;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointPrimeMaterial);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointPrimeMaterial);
  }

  else
  {
    v4 = sub_10018C1EC(0);
    [v4 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002D310();
    if (swift_dynamicCast())
    {
      v5 = v9;
    }

    else
    {
      v5 = [objc_allocWithZone(SCNMaterial) init];
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_100133D20(uint64_t a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Measure11PointRender_point] geometry];
  if (!v3)
  {
    return;
  }

  v91 = v3;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    [v6 begin];
    [v6 setAnimationDuration:0.0];
    v7 = &unk_1004AA000;
    if (a1 <= 4)
    {
      if (a1 > 2)
      {
        *&v1[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = 0;
        if (qword_1004A0050 != -1)
        {
          swift_once();
        }

        v14 = qword_1004D4970;
        v15 = UIContentSizeCategory.isAccessibilityCategory.getter();

        if (v15)
        {
          v16 = 0.00800000038;
        }

        else
        {
          IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
          v16 = 0.00400000019;
          if (IsBoldTextEnabled)
          {
            v16 = 0.00800000038;
          }
        }

        [v5 setRadius:{v16, v91}];
        v40 = v91;
        v41 = [v5 firstMaterial];
        if (v41)
        {
          v42 = v41;
          v43 = [v41 diffuse];

          if (qword_1004A0650 != -1)
          {
            swift_once();
          }

          [v43 setContents:qword_1004D51C8];
        }

        v44 = [v5 firstMaterial];

        if (!v44)
        {
          goto LABEL_128;
        }

        v30 = [v44 emission];

        if (qword_1004A0680 != -1)
        {
          swift_once();
        }

        v31 = qword_1004D51F8;
        goto LABEL_126;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          *&v1[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = 0;
          if (qword_1004A0050 != -1)
          {
            swift_once();
          }

          v8 = qword_1004D4970;
          v9 = UIContentSizeCategory.isAccessibilityCategory.getter();

          if (v9)
          {
            v10 = 0.00800000038;
          }

          else
          {
            v55 = UIAccessibilityIsBoldTextEnabled();
            v10 = 0.00400000019;
            if (v55)
            {
              v10 = 0.00800000038;
            }
          }

          [v5 setRadius:{v10, v91}];
          v56 = v91;
          v57 = [v5 firstMaterial];
          if (v57)
          {
            v58 = v57;
            v59 = [v57 diffuse];

            if (qword_1004A0640 != -1)
            {
              swift_once();
            }

            [v59 setContents:qword_1004D51B8];
          }

          v60 = [v5 firstMaterial];

          if (!v60)
          {
            goto LABEL_128;
          }

          v30 = [v60 emission];

          if (qword_1004A0678 != -1)
          {
            swift_once();
          }

          v31 = qword_1004D51F0;
          goto LABEL_126;
        }

        if (a1 == 2)
        {
          *&v1[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = 0x3FF0000000000000;
          if (qword_1004A0050 != -1)
          {
            swift_once();
          }

          v32 = qword_1004D4970;
          v33 = UIContentSizeCategory.isAccessibilityCategory.getter();

          if (v33)
          {
            v34 = 0.00800000038;
          }

          else
          {
            v68 = UIAccessibilityIsBoldTextEnabled();
            v34 = 0.00400000019;
            if (v68)
            {
              v34 = 0.00800000038;
            }
          }

          [v5 setRadius:{v34, v91}];
          v69 = v91;
          v70 = [v5 firstMaterial];
          if (v70)
          {
            v71 = v70;
            v72 = [v70 diffuse];

            if (qword_1004A0660 != -1)
            {
              swift_once();
            }

            [v72 setContents:qword_1004D51D8];
          }

          v54 = [v5 firstMaterial];

          if (!v54)
          {
            goto LABEL_128;
          }

          goto LABEL_104;
        }

LABEL_143:
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

LABEL_24:
      *&v1[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = 0x3FF0000000000000;
      if (qword_1004A0050 != -1)
      {
        swift_once();
      }

      v17 = qword_1004D4970;
      v18 = UIContentSizeCategory.isAccessibilityCategory.getter();

      if (v18)
      {
        v19 = 0.00800000038;
      }

      else
      {
        v24 = UIAccessibilityIsBoldTextEnabled();
        v19 = 0.00400000019;
        if (v24)
        {
          v19 = 0.00800000038;
        }
      }

      [v5 setRadius:{v19, v91}];
      v25 = v91;
      v26 = [v5 firstMaterial];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 diffuse];

        if (qword_1004A0648 != -1)
        {
          swift_once();
        }

        [v28 setContents:qword_1004D51C0];
      }

      v29 = [v5 firstMaterial];

      if (!v29)
      {
        goto LABEL_128;
      }

      v30 = [v29 emission];

      if (qword_1004A0670 != -1)
      {
        swift_once();
      }

      v31 = qword_1004D51E8;
      goto LABEL_126;
    }

    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        v45 = 0.49;
        if (*&v1[OBJC_IVAR____TtC7Measure11PointRender_type] == 2)
        {
          v45 = 0.0;
        }

        *&v1[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = v45;
        if (qword_1004A0050 != -1)
        {
          swift_once();
        }

        v46 = qword_1004D4970;
        v47 = UIContentSizeCategory.isAccessibilityCategory.getter();

        if (v47)
        {
          v48 = 0.00800000038;
        }

        else
        {
          v79 = UIAccessibilityIsBoldTextEnabled();
          v48 = 0.00400000019;
          if (v79)
          {
            v48 = 0.00800000038;
          }
        }

        [v5 setRadius:{v48, v91}];
        v80 = v91;
        v81 = [v5 firstMaterial];
        if (v81)
        {
          v82 = v81;
          v83 = [v81 diffuse];

          if (qword_1004A0658 != -1)
          {
            swift_once();
          }

          [v83 setContents:qword_1004D51D0];
        }

        v84 = [v5 firstMaterial];

        if (!v84)
        {
          goto LABEL_128;
        }

        v30 = [v84 emission];

        if (qword_1004A0688 != -1)
        {
          swift_once();
        }

        v31 = qword_1004D5200;
        goto LABEL_126;
      }

      goto LABEL_24;
    }

    switch(a1)
    {
      case 7:
        v20 = 1.0;
        if (*&v1[OBJC_IVAR____TtC7Measure11PointRender_type] == 2)
        {
          v20 = 0.0;
        }

        *&v1[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = v20;
        if (qword_1004A0050 != -1)
        {
          swift_once();
        }

        v21 = qword_1004D4970;
        v22 = UIContentSizeCategory.isAccessibilityCategory.getter();

        if (v22)
        {
          v23 = 0.00800000038;
        }

        else
        {
          v49 = UIAccessibilityIsBoldTextEnabled();
          v23 = 0.00400000019;
          if (v49)
          {
            v23 = 0.00800000038;
          }
        }

        [v5 setRadius:{v23, v91}];
        v50 = v91;
        v51 = [v5 firstMaterial];
        if (v51)
        {
          v52 = v51;
          v53 = [v51 diffuse];

          if (qword_1004A0660 != -1)
          {
            swift_once();
          }

          [v53 setContents:qword_1004D51D8];
        }

        v54 = [v5 firstMaterial];

        if (!v54)
        {
          goto LABEL_128;
        }

LABEL_104:
        v30 = [v54 emission];

        if (qword_1004A0690 != -1)
        {
          swift_once();
        }

        v31 = qword_1004D5208;
LABEL_126:
        [v30 setContents:v31];
        goto LABEL_127;
      case 8:
        *&v1[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = 0x3FF0000000000000;
        if (qword_1004A0050 != -1)
        {
          swift_once();
        }

        v11 = qword_1004D4970;
        v12 = UIContentSizeCategory.isAccessibilityCategory.getter();

        if (v12)
        {
          v13 = 0.00800000038;
        }

        else
        {
          v61 = UIAccessibilityIsBoldTextEnabled();
          v13 = 0.00400000019;
          if (v61)
          {
            v13 = 0.00800000038;
          }
        }

        [v5 setRadius:{v13, v91}];
        v62 = v91;
        v63 = [v5 firstMaterial];
        if (v63)
        {
          v64 = v63;
          v65 = [v63 diffuse];

          if (qword_1004A0658 != -1)
          {
            swift_once();
          }

          v66 = qword_1004D51D0;
          [v65 setContents:qword_1004D51D0];

          v67 = [v5 firstMaterial];
          if (v67)
          {
            v30 = [v67 emission];

            [v30 setContents:v66];
            v7 = &unk_1004AA000;
LABEL_127:

LABEL_128:
            v85 = *&v1[OBJC_IVAR____TtC7Measure11PointRender_pointPrime];
            if (v85)
            {
              v86 = v85;
              v87 = [v86 geometry];
              if (v87)
              {
                v88 = v87;
                objc_opt_self();
                v89 = swift_dynamicCastObjCClass();
                if (v89)
                {
                  v90 = v89;
                  [v5 radius];
                  [v90 setRadius:?];
                }
              }

              else
              {
                v88 = v86;
              }
            }

            [v1 setOpacity:*&v1[v7[321]]];
            [v6 commit];
            goto LABEL_136;
          }

          goto LABEL_141;
        }

        __break(1u);
        break;
      case 9:
        v35 = 0.49;
        if (*&v1[OBJC_IVAR____TtC7Measure11PointRender_type] == 2)
        {
          v35 = 0.0;
        }

        *&v1[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = v35;
        if (qword_1004A0050 != -1)
        {
          swift_once();
        }

        v36 = qword_1004D4970;
        v37 = UIContentSizeCategory.isAccessibilityCategory.getter();

        if (v37)
        {
          v38 = 0.00800000038;
        }

        else
        {
          v73 = UIAccessibilityIsBoldTextEnabled();
          v38 = 0.00400000019;
          if (v73)
          {
            v38 = 0.00800000038;
          }
        }

        [v5 setRadius:{v38, v91}];
        v74 = v91;
        v75 = [v5 firstMaterial];
        if (v75)
        {
          v76 = v75;
          v77 = [v75 diffuse];

          if (qword_1004A0668 != -1)
          {
            swift_once();
          }

          [v77 setContents:qword_1004D51E0];

          v78 = [v5 firstMaterial];
          if (v78)
          {
            v30 = [v78 emission];

            if (qword_1004A0698 != -1)
            {
              swift_once();
            }

            [v30 setContents:qword_1004D5210];
            goto LABEL_127;
          }

          goto LABEL_142;
        }

        break;
      default:
        goto LABEL_143;
    }

    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_136:
}

char *sub_100134D08(char a1, char a2)
{
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC7Measure11PointRender_connectedEndpointTransform];
  v47 = 1;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  v5[64] = 1;
  v2[OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___isOcclusionInitialized] = 2;
  *&v2[OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointMaterial] = 0;
  *&v2[OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointPrimeMaterial] = 0;
  v6 = OBJC_IVAR____TtC7Measure11PointRender_shouldOcclude;
  v2[OBJC_IVAR____TtC7Measure11PointRender_shouldOcclude] = 1;
  *&v2[OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity] = 0;
  v7 = OBJC_IVAR____TtC7Measure11PointRender_point;
  *&v2[v7] = [objc_allocWithZone(SCNNode) init];
  *&v2[OBJC_IVAR____TtC7Measure11PointRender_pointPrime] = 0;
  *&v2[OBJC_IVAR____TtC7Measure11PointRender_pointNodes] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC7Measure11PointRender_state] = static MeasureObjectState.default;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D4970;
  v9 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v10 = (v9 & 1) != 0 || UIAccessibilityIsBoldTextEnabled();
  v2[OBJC_IVAR____TtC7Measure11PointRender_accessibleSizeOn] = v10;
  *&v2[OBJC_IVAR____TtC7Measure11PointRender_type] = static WorldPointType.default;
  *&v2[OBJC_IVAR____TtC7Measure11PointRender_lines] = _swiftEmptyArrayStorage;
  v2[v6] = a1 & 1;
  v2[OBJC_IVAR____TtC7Measure11PointRender_isPartOfRectangle] = a2 & 1;
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v46, "init");
  v12 = qword_1004D4970;
  v13 = v11;
  v14 = v12;
  v15 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v15)
  {
    v16 = 0.00800000038;
  }

  else if (UIAccessibilityIsBoldTextEnabled())
  {
    v16 = 0.00800000038;
  }

  else
  {
    v16 = 0.00400000019;
  }

  v17 = objc_opt_self();
  v18 = [v17 sphereWithRadius:v16];
  v19 = OBJC_IVAR____TtC7Measure11PointRender_point;
  [*&v13[OBJC_IVAR____TtC7Measure11PointRender_point] setGeometry:v18];
  [v13 addChildNode:*&v13[v19]];
  result = [*&v13[v19] geometry];
  if (!result)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = result;
  v22 = sub_100133B44();
  [v21 setFirstMaterial:v22];

  v23 = &selRef_runAction_completion_;
  [*&v13[v19] setRenderingOrder:2];
  v24 = *&v13[v19];
  v25 = OBJC_IVAR____TtC7Measure11PointRender_pointNodes;
  swift_beginAccess();
  v26 = v24;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v13[v25] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v13[v25] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v23 = &selRef_runAction_completion_;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_34;
  }

  v27 = [objc_opt_self() standardUserDefaults];
  v28 = [v27 isPointOcclusionEnabled];

  if (!v28 || (a1 & 1) == 0)
  {
    goto LABEL_34;
  }

  v29 = [objc_allocWithZone(SCNNode) init];
  v30 = OBJC_IVAR____TtC7Measure11PointRender_pointPrime;
  v31 = *&v13[OBJC_IVAR____TtC7Measure11PointRender_pointPrime];
  *&v13[OBJC_IVAR____TtC7Measure11PointRender_pointPrime] = v29;

  v32 = qword_1004D4970;
  v33 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v33)
  {
    v34 = 0.00800000038;
  }

  else
  {
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    v34 = 0.00400000019;
    if (IsBoldTextEnabled)
    {
      v34 = 0.00800000038;
    }
  }

  v36 = [v17 sphereWithRadius:v34];
  result = *&v13[v30];
  if (!result)
  {
    goto LABEL_36;
  }

  result = [result setGeometry:v36];
  if (!*&v13[v30])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v13 addChildNode:?];
  result = *&v13[v30];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = [result geometry];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = result;
  v38 = sub_100133C3C();
  [v37 setFirstMaterial:v38];

  result = *&v13[v30];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = [result geometry];
  if (!result)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v39 = result;
  v40 = [result firstMaterial];

  if (v40)
  {
    [v40 setColorBufferWriteMask:0];
  }

  result = *&v13[v30];
  if (!result)
  {
    goto LABEL_42;
  }

  result = [result v23[23]];
  v41 = *&v13[v30];
  if (v41)
  {
    swift_beginAccess();
    v42 = v41;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v13[v25] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v13[v25] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

LABEL_34:
    [*&v13[v19] simdWorldTransform];
    simd_float4x4.position.getter();
    v45 = v43;
    [*&v13[v19] simdWorldTransform];
    simd_float4x4.position.getter();
    SIMD3<>.up.unsafeMutableAddressor();
    sub_100135354(v45);
    sub_100133D20(*&v13[OBJC_IVAR____TtC7Measure11PointRender_state]);
    sub_10013557C();
    sub_1000DB94C();

    return v13;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100135354(__n128 a1)
{
  v20 = a1;
  v2 = OBJC_IVAR____TtC7Measure11PointRender_pointNodes;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 geometry];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 firstMaterial];

        if (v11)
        {
          SCNVector3.init(_:)();
          isa = SCNVector3._bridgeToObjectiveC()().super.isa;
          v13 = String._bridgeToObjectiveC()();
          [v11 setValue:isa forKeyPath:v13];
        }
      }

      v14 = [v7 geometry];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 firstMaterial];

        if (v16)
        {
          SCNVector3.init(_:)();
          v17 = SCNVector3._bridgeToObjectiveC()().super.isa;
          v18 = String._bridgeToObjectiveC()();
          [v16 setValue:v17 forKeyPath:v18];

          v7 = v18;
        }
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

void sub_10013557C()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1004A0858 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5430;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_1001360BC;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000DB768;
  v7[3] = &unk_10046E970;
  v4 = _Block_copy(v7);
  v5 = v0;

  v6 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

void sub_100135700()
{
  v1 = objc_opt_self();
  if ([v1 jasperAvailable])
  {
    sub_10000F974(&unk_1004A3F10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1003D6280;
    *(v2 + 32) = sub_100133B44();
    *(v2 + 40) = sub_100133C3C();
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (![v1 jasperAvailable] || *(v0 + OBJC_IVAR____TtC7Measure11PointRender_shouldOcclude) != 1 || (v39 = objc_opt_self(), v3 = objc_msgSend(v39, "standardUserDefaults"), v4 = objc_msgSend(v3, "isPointOcclusionEnabled"), v3, !v4))
  {

    goto LABEL_16;
  }

  v5 = *MeasureCore.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v6 = *(v5 + 112);
  if (!v6)
  {
LABEL_16:

    return;
  }

  v37 = v0;

  v7 = [v39 standardUserDefaults];
  swift_getKeyPath();
  if (qword_1004A0180 != -1)
  {
LABEL_36:
    swift_once();
  }

  v8 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
    goto LABEL_40;
  }

  v9 = Contexts.PrivateQueue.init(_:)();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v2;
  v12 = v8;

  NSUserDefaults.performOnChange<A>(to:on:action:)();

  if (v2 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v13)
  {
LABEL_32:

    *(v37 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___isOcclusionInitialized) = 1;
    return;
  }

  v14 = 0;
  v38 = v13;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v18 = *(v2 + 8 * v14 + 32);
    }

    v17 = v18;
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (qword_1004A0638 != -1)
    {
      swift_once();
    }

    UIColor.rgba.getter();
    if (!*(v6 + 192))
    {
      break;
    }

    ADProcessor.transformer.getter();

    Transformer.clipToCameraNormalized.getter();

    simd_float3x3.copy(from:)();
    v20 = [v39 standardUserDefaults];
    [v20 isLineOcclusionAlphaBlendingEnabled];

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v22 = String._bridgeToObjectiveC()();
    [v17 setValue:isa forKeyPath:v22];

    SCNVector4.init(_:_:_:_:)();
    v23 = SCNVector4._bridgeToObjectiveC()().super.isa;
    v24 = String._bridgeToObjectiveC()();
    [v17 setValue:v23 forKeyPath:v24];

    v25 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v26 = String._bridgeToObjectiveC()();
    [v17 setValue:v25 forKeyPath:v26];

    v27 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v28 = String._bridgeToObjectiveC()();
    [v17 setValue:v27 forKeyPath:v28];

    v29 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v30 = String._bridgeToObjectiveC()();
    [v17 setValue:v29 forKeyPath:v30];

    SCNVector3.init(_:)();
    v31 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v32 = String._bridgeToObjectiveC()();
    [v17 setValue:v31 forKey:v32];

    SCNVector3.init(_:)();
    v33 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v34 = String._bridgeToObjectiveC()();
    [v17 setValue:v33 forKey:v34];

    SCNVector3.init(_:)();
    v35 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v36 = String._bridgeToObjectiveC()();
    [v17 setValue:v35 forKey:v36];

    v7 = *(v6 + 192);
    if (!v7)
    {
      goto LABEL_39;
    }

    swift_beginAccess();
    if (*(v7 + 242) == 1)
    {
      swift_beginAccess();
      if (!*(v7 + 32))
      {
        goto LABEL_19;
      }

      swift_unknownObjectRetain();
    }

    else
    {

      ADProcessor.outputDepthTexture.getter();
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    v16 = [objc_opt_self() materialPropertyWithContents:v15];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v7 = String._bridgeToObjectiveC()();
    [v17 setValue:v16 forKey:v7];
    swift_unknownObjectRelease();

    v17 = v7;
    v13 = v38;
LABEL_19:

    ++v14;
    if (v19 == v13)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_100136084()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001360EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100136104()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure11PointRender_connectedEndpointTransform;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 1;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___isOcclusionInitialized) = 2;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointMaterial) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender____lazy_storage___pointPrimeMaterial) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender_shouldOcclude) = 1;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender_desiredOpacity) = 0;
  v2 = OBJC_IVAR____TtC7Measure11PointRender_point;
  *(v0 + v2) = [objc_allocWithZone(SCNNode) init];
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender_pointPrime) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender_pointNodes) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender_state) = static MeasureObjectState.default;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v3 = qword_1004D4970;
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v5 = (v4 & 1) != 0 || UIAccessibilityIsBoldTextEnabled();
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender_accessibleSizeOn) = v5;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender_type) = static WorldPointType.default;
  *(v0 + OBJC_IVAR____TtC7Measure11PointRender_lines) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001362B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001362F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1001363B4()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for SketchLine();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [v0 heightAnchor];
  v2 = [v1 constraintEqualToConstant:88.0];

  [v2 setActive:1];
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = [v3 layer];
  v5 = [objc_allocWithZone(UIBezierPath) init];
  [v5 moveToPoint:{4.0, 4.0}];
  [v5 addLineToPoint:{184.0, 4.0}];
  v6 = [objc_allocWithZone(CAShapeLayer) init];
  v7 = [v5 CGPath];
  [v6 setPath:v7];

  v8 = [objc_opt_self() clearColor];
  v9 = [v8 CGColor];

  [v6 setFillColor:v9];
  if (qword_1004A0080 != -1)
  {
    swift_once();
  }

  v10 = [qword_1004D49C0 CGColor];
  [v6 setStrokeColor:v10];

  [v6 setLineWidth:2.0];
  v11 = v6;
  LODWORD(v12) = 1.0;
  [v11 setOpacity:v12];

  [v4 addSublayer:v11];
  v13 = [v3 layer];
  v14 = sub_100013DA0(0, 4.0, 4.0);
  [v13 addSublayer:v14];

  v15 = [v3 layer];
  v16 = sub_100013DA0(0, 184.0, 4.0);
  [v15 addSublayer:v16];

  [v0 addSubview:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [v3 widthAnchor];
  v18 = [v17 constraintEqualToConstant:188.0];

  v19 = String._bridgeToObjectiveC()();
  [v18 setIdentifier:v19];

  [v18 setActive:1];
  v20 = [v3 heightAnchor];
  v21 = [v20 constraintEqualToConstant:8.0];

  [v21 setActive:1];
  v22 = [v0 centerXAnchor];
  v23 = [v3 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = [v0 centerYAnchor];
  v26 = [v3 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  [v27 setActive:1];
}

id sub_100136988(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void), uint64_t *a8)
{
  v17.receiver = a1;
  v17.super_class = a7();
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a2, a3, a4, a5);
  swift_getObjectType();
  v14 = v13;
  sub_10000F974(a8);
  String.init<A>(describing:)();
  v15 = String._bridgeToObjectiveC()();

  [v14 setAccessibilityIdentifier:v15];

  return v14;
}

void sub_100136AD0()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SketchLineHistory();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = [v1 layer];
  v3 = [objc_allocWithZone(UIBezierPath) init];
  [v3 moveToPoint:{4.0, 4.0}];
  [v3 addLineToPoint:{4.0, 52.0}];
  v4 = [objc_allocWithZone(CAShapeLayer) init];
  v5 = [v3 CGPath];
  [v4 setPath:v5];

  v6 = [objc_opt_self() clearColor];
  v7 = [v6 CGColor];

  [v4 setFillColor:v7];
  if (qword_1004A0080 != -1)
  {
    swift_once();
  }

  v8 = [qword_1004D49C0 CGColor];
  [v4 setStrokeColor:v8];

  [v4 setLineWidth:2.0];
  v9 = v4;
  LODWORD(v10) = 1.0;
  [v9 setOpacity:v10];

  [v2 addSublayer:v9];
  v11 = [v1 layer];
  v12 = sub_100013DA0(0, 4.0, 4.0);
  [v11 addSublayer:v12];

  v13 = [v1 layer];
  v14 = sub_100013DA0(0, 4.0, 52.0);
  [v13 addSublayer:v14];

  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v1 widthAnchor];
  v16 = [v15 constraintEqualToConstant:8.0];

  [v16 setActive:1];
  v17 = [v1 heightAnchor];
  v18 = [v17 constraintEqualToConstant:56.0];

  [v18 setActive:1];
  v19 = [v0 centerXAnchor];
  v20 = [v1 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  [v21 setActive:1];
  v22 = [v0 centerYAnchor];
  v23 = [v1 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  [v24 setActive:1];
}

char *sub_100136FE0(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC7Measure11SketchLabel_text];
  *v3 = a1;
  *(v3 + 1) = a2;
  v4 = objc_allocWithZone(UILabel);

  v5 = [v4 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC7Measure11SketchLabel_label] = v5;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for SketchLabel();
  v6 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = [v6 layer];
  [v7 setMasksToBounds:1];

  v8 = [v6 layer];
  [v8 setCornerRadius:11.0];

  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  [v6 setBackgroundColor:v10];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = OBJC_IVAR____TtC7Measure11SketchLabel_label;
  v12 = *&v6[OBJC_IVAR____TtC7Measure11SketchLabel_label];
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v14 = qword_1004A0098;
  v15 = *&v6[v11];
  if (v14 != -1)
  {
    swift_once();
  }

  [v15 setFont:qword_1004D49D8];

  [*&v6[v11] setTextAlignment:1];
  v16 = *&v6[v11];
  v17 = [v9 labelColor];
  [v16 setTextColor:v17];

  LODWORD(v18) = 1148846080;
  [*&v6[v11] setContentCompressionResistancePriority:0 forAxis:v18];
  v19 = *&v6[v11];
  swift_getObjectType();
  v20 = v19;
  sub_10000F974(&qword_1004AAB00);
  String.init<A>(describing:)();
  v21 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityIdentifier:v21];

  [v6 addSubview:*&v6[v11]];
  [*&v6[v11] setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [*&v6[v11] centerXAnchor];
  v23 = [v6 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = [*&v6[v11] centerYAnchor];
  v26 = [v6 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  [v27 setActive:1];
  v28 = [v6 heightAnchor];
  v29 = [v28 constraintEqualToConstant:22.0];

  [v29 setActive:1];
  v30 = [v6 widthAnchor];

  v31 = [*&v6[v11] widthAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:35.0];

  [v32 setActive:1];
  return v6;
}

id sub_100137550(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001375FC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled);
  *(v1 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled) = a1;
  if (v2 != (a1 & 1) && (*(v1 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled) & 1) != 0)
  {
    v3 = 0.5;
    if (a1)
    {
      v3 = 1.0;
    }

    sub_10013833C(v3);
  }
}

char *sub_10013772C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for _Glass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC7Measure18EditButtonSolarium_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState] = 0;
  v4[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] = 1;
  v4[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = 0;
  v4[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isShowingAccessibilityHUD] = 0;
  v15 = [objc_allocWithZone(UIButton) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton] = v15;
  v48.receiver = v4;
  v48.super_class = ObjectType;
  v46 = ObjectType;
  v16 = objc_msgSendSuper2(&v48, "init");
  v17 = objc_allocWithZone(UIPointerInteraction);
  v18 = v16;
  v19 = [v17 initWithDelegate:v18];
  v20 = OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton;
  v21 = *&v18[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton];
  v45 = v19;
  [v21 addInteraction:?];
  v22 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v23 = objc_opt_self();
  v44 = v22;
  v43 = [v23 preferredFontForTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:v22];
  [v43 pointSize];
  v25 = [objc_opt_self() configurationWithPointSize:7 weight:3 scale:v24];
  v26 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

  [*&v18[v20] setImage:v27 forState:0];
  v28 = [*&v18[v20] layer];
  [v28 setMasksToBounds:1];

  v29 = [*&v18[v20] layer];
  v49.origin.x = a1;
  v49.origin.y = a2;
  v49.size.width = a3;
  v49.size.height = a4;
  [v29 setCornerRadius:CGRectGetWidth(v49) * 0.5];

  v30 = *&v18[v20];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 whiteColor];
  [v32 setTintColor:v33];

  v34 = *&v18[v20];
  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v47[3] = v11;
  v47[4] = &protocol witness table for _Glass;
  sub_1000315D4(v47);
  _Glass.flexible(_:)();
  (*(v12 + 8))(v14, v11);
  UIView._background.setter();

  [*&v18[v20] addTarget:v18 action:"editBegan" forControlEvents:1];
  [*&v18[v20] addTarget:v18 action:"editEnded" forControlEvents:64];
  [*&v18[v20] addTarget:v18 action:"editCancelled" forControlEvents:256];
  v35 = *&v18[v20];
  [v35 addTarget:v18 action:"editCancelled" forControlEvents:128];

  v36 = OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled;
  if (v18[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled])
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.5;
  }

  sub_10013833C(v37);
  if (v18[v36] == 1)
  {
    if (v18[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled])
    {
      v38 = 1.0;
    }

    else
    {
      v38 = 0.5;
    }

    sub_10013833C(v38);
  }

  v47[0] = v46;
  swift_getMetatypeMetadata();
  v39 = v18;
  String.init<A>(describing:)();
  v40 = String._bridgeToObjectiveC()();

  [v39 setAccessibilityIdentifier:v40];

  return v39;
}

void sub_100137CE4()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled) == 1)
  {
    v1 = OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState;
    if ((*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState) & 1) == 0)
    {
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = 0x3FECCCCCCCCCCCCDLL;
      v4 = objc_allocWithZone(UIViewPropertyAnimator);
      v7[4] = sub_100138B5C;
      v7[5] = v3;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100041180;
      v7[3] = &unk_10046EBB8;
      v5 = _Block_copy(v7);

      v6 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:1.0];
      _Block_release(v5);

      [v6 setInterruptible:0];
      [v6 startAnimation];
    }

    *(v0 + v1) = 1;
  }
}

void sub_100137ECC()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled) == 1)
  {
    v1 = v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    v4 = OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState;
    if (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState) == 1)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0x3FF0000000000000;
      v7 = objc_allocWithZone(UIViewPropertyAnimator);
      v10[4] = sub_100138B5C;
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100041180;
      v10[3] = &unk_10046EB68;
      v8 = _Block_copy(v10);

      v9 = [v7 initWithDuration:v8 dampingRatio:0.5 animations:1.0];
      _Block_release(v8);

      [v9 setInterruptible:0];
      [v9 startAnimation];
    }

    *(v0 + v4) = 0;
  }
}

void sub_1001380FC()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled) == 1 && (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isShowingAccessibilityHUD) & 1) == 0)
  {
    v1 = v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    v4 = OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState;
    if (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState) == 1)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0x3FF0000000000000;
      v7 = objc_allocWithZone(UIViewPropertyAnimator);
      v10[4] = sub_100138B3C;
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100041180;
      v10[3] = &unk_10046EB18;
      v8 = _Block_copy(v10);

      v9 = [v7 initWithDuration:v8 dampingRatio:0.5 animations:1.0];
      _Block_release(v8);

      [v9 setInterruptible:0];
      [v9 startAnimation];
    }

    *(v0 + v4) = 0;
  }
}

void sub_10013833C(float a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  v7[4] = sub_10013886C;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100041180;
  v7[3] = &unk_10046EAC8;
  v5 = _Block_copy(v7);

  v6 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:0.6];
  _Block_release(v5);

  [v6 setInterruptible:0];
  [v6 startAnimation];
}

void sub_1001384A0(CGFloat a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton);
    [v4 transform];
    tx = t1.tx;
    ty = t1.ty;
    v7 = atan2(t1.b, t1.a);
    CGAffineTransformMakeScale(&t1, a1, a1);
    v8 = t1.tx;
    v9 = t1.ty;
    v18 = *&t1.c;
    v20 = *&t1.a;
    CGAffineTransformMakeRotation(&t1, v7);
    v10 = *&t1.a;
    v11 = *&t1.c;
    v12 = *&t1.tx;
    *&t1.a = v20;
    *&t1.c = v18;
    t1.tx = v8;
    t1.ty = v9;
    *&t2.a = v10;
    *&t2.c = v11;
    *&t2.tx = v12;
    CGAffineTransformConcat(&v22, &t1, &t2);
    v13 = v22.tx;
    v14 = v22.ty;
    v19 = *&v22.c;
    v21 = *&v22.a;
    CGAffineTransformMakeTranslation(&t1, tx, ty);
    v15 = *&t1.a;
    v16 = *&t1.c;
    v17 = *&t1.tx;
    *&t1.a = v21;
    *&t1.c = v19;
    t1.tx = v13;
    t1.ty = v14;
    *&t2.a = v15;
    *&t2.c = v16;
    *&t2.tx = v17;
    CGAffineTransformConcat(&v22, &t1, &t2);
    t1 = v22;
    [v4 setTransform:&t1];
  }
}

void sub_10013860C(float a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton) setAlpha:a1];
  }
}

unint64_t sub_1001387A8()
{
  result = qword_1004AAB78;
  if (!qword_1004AAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB78);
  }

  return result;
}

uint64_t sub_1001387FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100138834()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100138878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100138890()
{
  v1 = sub_10000F974(&qword_1004A2D60);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  v9 = OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton;
  [*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton) bounds];
  CGRect.center.getter();
  [*(v0 + v9) bounds];
  CGRect.init(centerPoint:size:)();
  v14 = [objc_opt_self() bezierPathWithOvalInRect:{v10, v11, v12, v13}];
  [v8 setVisiblePath:v14];

  sub_100040E00();
  *v7 = [objc_allocWithZone(UITargetedPreview) initWithView:*(v0 + v9) parameters:v8];
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v15 = type metadata accessor for UIPointerShape();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = UIPointerStyle.init(effect:shape:)();

  return v16;
}

uint64_t sub_100138B04()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100138B6C()
{
  v0 = sub_10000F974(&qword_1004A1638);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5058;
  v3 = *(v0 + 272);
  swift_retain_n();
  v3(KeyPath, v2);

  v4 = sub_10000F974(&qword_1004A2890);
  v5 = swift_getKeyPath();
  (*(v4 + 272))(v5, v2);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100138C9C()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

uint64_t sub_100138D28()
{
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 88));
  if ((*(v0 + 72) & 1) == 0 && *(*(v0 + 64) + OBJC_IVAR____TtC7Measure11PrivacyView_blurred) == 1 && !*(v0 + 80))
  {
    *(v0 + 80) = 1;
  }

  os_unfair_lock_unlock((v0 + 88));
  return swift_endAccess();
}

uint64_t sub_100138DA4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 88));
  swift_endAccess();
  if ((*(v0 + 72) & 1) == 0 && *(*(v0 + 64) + OBJC_IVAR____TtC7Measure11PrivacyView_blurred) == 1)
  {
    v9 = *(v0 + 80);
    if (v9)
    {
      if (v9 == 1)
      {
        *(v0 + 80) = 2;
      }

      else
      {
        sub_10004D9B4();
        v10 = static OS_dispatch_queue.main.getter();
        aBlock[4] = sub_10013979C;
        aBlock[5] = v0;
        v15 = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100041180;
        aBlock[3] = &unk_10046EBE0;
        v11 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10003180C();
        sub_10000F974(&unk_1004A3D80);
        sub_100031864();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v12 = v15;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v11);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 88));
  return swift_endAccess();
}

uint64_t sub_1001390A0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v5 + 88));
  swift_endAccess();
  v17 = *(v5 + 96);
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  sub_1000223C4(v17);
  if ((a1 & 1) == 0)
  {
    if (*(*(v5 + 64) + OBJC_IVAR____TtC7Measure11PrivacyView_blurred))
    {
      if (a2)
      {
        sub_10004D9B4();

        v18 = static OS_dispatch_queue.main.getter();
        v28 = sub_1001397FC;
        v29 = v5;
        aBlock = _NSConcreteStackBlock;
        v25 = 1107296256;
        v19 = &unk_10046EC08;
        goto LABEL_7;
      }

      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (*(*(v5 + 64) + OBJC_IVAR____TtC7Measure11PrivacyView_blurred))
  {
    goto LABEL_9;
  }

  *(v5 + 72) = 1;
  sub_10004D9B4();

  v18 = static OS_dispatch_queue.main.getter();
  v28 = sub_1001397D4;
  v29 = v5;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v19 = &unk_10046EC30;
LABEL_7:
  v26 = sub_100041180;
  v27 = v19;
  v20 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v23 + 8))(v12, v10);
  (*(v14 + 8))(v16, v13);
LABEL_10:
  swift_beginAccess();
  os_unfair_lock_unlock((v5 + 88));
  return swift_endAccess();
}

uint64_t sub_10013943C()
{
  sub_1000223C4(*(v0 + 96));
}

uint64_t sub_10013947C()
{
  v0 = StateObserver.deinit();
  v1 = *(v0 + 64);

  sub_1000223C4(*(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyController()
{
  result = qword_1004AABA8;
  if (!qword_1004AABA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001395C0(uint64_t a1, char a2)
{
  sub_100139808(a2);
  v3 = *(a1 + 96);
  if (v3)
  {

    v3(v4);
    sub_1000223C4(v3);
    v5 = *(a1 + 96);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;

  return sub_1000223C4(v5);
}

uint64_t sub_100139644(void *a1)
{
  v2 = v1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  v4 = sub_10000F974(&qword_1004A1638);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  v2[14] = v7(KeyPath, v6);
  v8 = sub_10000F974(&qword_1004A2890);
  v9 = swift_getKeyPath();
  v2[15] = (*(v8 + 272))(v9, v6);
  v2[8] = a1;
  v10 = a1;
  return StateObserver.init(configuration:)();
}

uint64_t sub_1001397BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100139808(char a1)
{
  if (a1)
  {
    if (*(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurred))
    {
LABEL_15:
      *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurred) = a1 & 1;
      return;
    }

    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    v3._object = 0x8000000100408BC0;
    v3._countAndFlagsBits = 0xD000000000000014;
    Log.default(_:isPrivate:)(v3, 0);
    v4 = *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurEffectAnimation);
    if (v4)
    {
      [v4 stopAnimation:1];
    }

    v5 = *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView);
    if (v5)
    {
      [v5 setAlpha:1.0];
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (!*(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurred))
    {
      goto LABEL_15;
    }

    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    v6._countAndFlagsBits = 0xD000000000000015;
    v6._object = 0x8000000100408BA0;
    Log.default(_:isPrivate:)(v6, 0);
    v7 = *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = objc_allocWithZone(UIViewPropertyAnimator);
    v15[4] = sub_100139DA8;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100041180;
    v15[3] = &unk_10046EC80;
    v10 = _Block_copy(v15);
    v11 = v7;

    v12 = [v9 initWithDuration:v10 dampingRatio:0.3 animations:1.0];
    _Block_release(v10);
    v13 = *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurEffectAnimation);
    *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurEffectAnimation) = v12;
    v14 = v12;

    if (v14)
    {
      [v14 startAnimation];

      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100139A9C(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC7Measure11PrivacyView_blurred] = 0;
  *&v2[OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView] = 0;
  *&v2[OBJC_IVAR____TtC7Measure11PrivacyView_blurEffectAnimation] = 0;
  static CGSize.* infix(_:_:)();
  v7 = v6;
  v9 = v8;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, v6, v8);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 effectWithStyle:4];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];
  v15 = OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView;
  v16 = *&v12[OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView];
  *&v12[OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView] = v14;
  v17 = v14;

  if (!v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v17 setFrame:{a1, a2, v7, v9}];

  v18 = *&v12[v15];
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v18 setAlpha:0.0];
  v19 = *&v12[v15];
  if (v19)
  {
    v20 = v12;
    [v20 addSubview:v19];
    [v20 setUserInteractionEnabled:0];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100139D70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100139DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100139DD4()
{
  result = sub_10004D9B4();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100139E5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100139FE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

id SCNSegmentationDebugger.segmentedTexture.getter()
{
  v1 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for SegmentationProcessor.SegmentedTexture());
    v6 = SurfaceTexture.init(width:height:backgroundColor:)();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10013A2C8()
{
  v1 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode;
  v2 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode];
  }

  else
  {
    v4 = [objc_allocWithZone(SCNNode) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = objc_opt_self();
    [v6 begin];
    [v0 addChildNode:v4];
    [v6 commit];
    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10013A3B8()
{
  v1 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail;
  v2 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for SCNSegmentationDebugger.DebugPointTrail());

    v6 = v0;
    v7 = sub_10013AF48(v5);
    v8 = String._bridgeToObjectiveC()();
    [v7 setName:v8];

    v9 = objc_opt_self();
    [v9 begin];
    [v6 addChildNode:v7];
    [v9 commit];
    v10 = *&v6[v1];
    *&v6[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_10013A4C4()
{
  v1 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool;
  if (*&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool])
  {
    v2 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10013BF98;
    *(v4 + 24) = v3;
    sub_10000F974(&qword_1004A1400);
    swift_allocObject();
    v5 = v0;
    v2 = ObjectPool.init(allocator:deallocator:synchronized:)();
    *&v0[v1] = v2;
  }

  return v2;
}

id SCNSegmentationDebugger.init(sceneView:processor:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture;
  *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture] = 0;
  v7 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode;
  *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode] = 0;
  v8 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail;
  *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail] = 0;
  *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool] = 0;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger_sceneView] = v9;
    *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger_processor] = a3;
    v26.receiver = v3;
    v26.super_class = type metadata accessor for SCNSegmentationDebugger();
    v11 = a1;

    v12 = objc_msgSendSuper2(&v26, "init");
    v13 = String._bridgeToObjectiveC()();
    [v12 setName:{v13, v26.receiver, v26.super_class}];

    v14 = objc_opt_self();
    [v14 begin];
    v15 = [v10 scene];
    v16 = [v15 rootNode];

    [v16 addChildNode:v12];
    v17 = [v14 commit];
    v18 = *(*a3 + 592);
    v19 = (v18)(v17);
    if ((*SegmentationProcessor.DebugOptions.showSegmentedBackground.unsafeMutableAddressor() & ~v19) == 0 || (v20 = v18(), (*SegmentationProcessor.DebugOptions.showNormalsBackground.unsafeMutableAddressor() & ~v20) == 0))
    {
      v21 = [v10 scene];
      v22 = [v21 background];

      v23 = SCNSegmentationDebugger.segmentedTexture.getter();
      v24 = (*((swift_isaMask & *v23) + 0x110))();

      [v22 setContents:v24];
      swift_unknownObjectRelease();
    }
  }

  else
  {

    type metadata accessor for SCNSegmentationDebugger();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

Swift::Void __swiftcall SCNSegmentationDebugger.clearPoints()()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  v3 = sub_10013A4C4();
  v4 = sub_10013A2C8();
  v5 = [v4 childNodes];

  sub_100018630(0, &qword_1004A1318);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*(*v3 + 216))(v6);

  v7 = *(v1 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode);
  SCNNode.removeAllChildren()();

  [v2 commit];
}

void SCNSegmentationDebugger.addPoint(transform:normal:color:opacity:)(Swift::UInt32 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, double a6, double a7)
{
  v9 = objc_opt_self();
  [v9 begin];
  v10 = sub_10013A4C4();
  (*(*v10 + 200))(&v25);

  v11 = v25;
  [v25 setOpacity:a7];
  v12 = [v11 geometry];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v12 materials];

  sub_100018630(0, &qword_1004AF720);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);
LABEL_7:
    v17 = v16;

    v18 = [v17 diffuse];

    sub_100018630(0, &qword_1004A2930);
    isa = UIColor.init(argb:)(a1).super.isa;
    [v18 setContents:isa];

LABEL_10:
    [v11 setSimdWorldTransform:{a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], *&a2, *&a3, *&a4, *&a5}];
    SCNNode.setForwardDirection(direction:)();
    v20 = sub_10013A2C8();
    [v20 addChildNode:v11];

    [v9 commit];
    return;
  }

  __break(1u);
}

void SCNSegmentationDebugger.updateTrail(headTransform:)(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = *(a1 + 32);
    *v5 = *(a1 + 48);
    v2 = *a1;
    v3 = *(a1 + 16);
    v1 = sub_10013A3B8();
    PointTrail.setHeadPosition(_:)(v2, v3, v4, *v5);
  }

  v6 = sub_10013A3B8();
  SCNSegmentationDebugger.DebugPointTrail.updateLabels()();
}

uint64_t sub_10013AF48(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCC7Measure23SCNSegmentationDebugger15DebugPointTrail_processor] = a1;
  *&v1[OBJC_IVAR____TtC7Measure10PointTrail_pointNodes] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Measure10PointTrail_minDistance] = 0;
  *&v1[OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate] = 0;
  v1[OBJC_IVAR____TtC7Measure10PointTrail_isStarted] = 0;
  *&v1[OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared] = 0;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for PointTrail();

  v2 = objc_msgSendSuper2(&v24, "init");
  v23 = objc_opt_self();
  v21 = objc_opt_self();
  v22 = objc_opt_self();
  v3 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  v4 = 30;
  v20 = v2;
  do
  {
    v5 = [v23 boxWithWidth:0.0003 height:0.0003 length:0.03 chamferRadius:0.0];
    v6 = [v21 nodeWithGeometry:v5];

    v7 = String._bridgeToObjectiveC()();
    [v6 setName:v7];

    v8 = [v22 planeWithWidth:0.01 height:0.01];
    v9 = [v21 nodeWithGeometry:v8];

    v10 = String._bridgeToObjectiveC()();
    [v9 setName:v10];

    [v9 addChildNode:v6];
    [v9 setOpacity:0.5];

    [v9 setHidden:1];
    swift_beginAccess();
    v11 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    [v20 addChildNode:v11];

    --v4;
  }

  while (v4);

  v12 = OBJC_IVAR____TtC7Measure10PointTrail_minDistance;
  swift_beginAccess();
  *&v20[v12] = 1008981770;
  *&v20[OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared] = 953267991;
  v13 = OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate;
  swift_beginAccess();
  *&v20[v13] = 981668463;
  v14 = *&v20[OBJC_IVAR____TtC7Measure10PointTrail_pointNodes];
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v19 = v20;

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_10;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
    v17 = v20;
    v18 = v16;
LABEL_10:
    [v18 setOpacity:1.0];

    return v20;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SCNSegmentationDebugger.DebugPointTrail.updateLabels()()
{
  v1 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_34:
    v3 = _CocoaArrayWrapper.endIndex.getter();
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

  v4 = *(v0 + OBJC_IVAR____TtCC7Measure23SCNSegmentationDebugger15DebugPointTrail_processor);
  v5 = *(*v4 + 119);
  v29 = v2 & 0xC000000000000001;
  v28 = v2 & 0xFFFFFFFFFFFFFF8;

  v7 = 0;
  v27 = v2;
  while (1)
  {
    v30 = v6;
    if (v29)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v28 + 16))
      {
        goto LABEL_33;
      }

      v9 = *(v2 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v12 = [v9 geometry];
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v14 = [v12 materials];

    sub_100018630(0, &qword_1004AF720);
    v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v0 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_20:

LABEL_21:
        v16 = 0;
        goto LABEL_22;
      }
    }

    else if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v15 = *(v0 + 32);
    }

    v16 = v15;

LABEL_22:
    v17 = COERCE_DOUBLE(v5([v10 simdWorldPosition]));
    if (v19)
    {
      break;
    }

    v20 = v17;
    v21 = v18;
    v22 = (*(*v4 + 122))(0, v17, v18);
    if (!v22 || v22 == 33)
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_37;
    }

    v23 = [v16 diffuse];
    sub_100018630(0, &qword_1004A2930);
    v24 = SegmentationResult.Label.debugColor.getter();
    isa = UIColor.init(argb:)(v24).super.isa;
    [v23 setContents:isa];

    v0 = v4;
    (*(*v4 + 126))(v20, v21);
    v2 = v27;
    if ((v26 & 1) == 0)
    {
      v0 = v10;
      SCNNode.setForwardDirection(direction:)();
    }

LABEL_6:

    ++v7;
    v6 = v30;
    if (v11 == v3)
    {

      return;
    }
  }

  if (v16)
  {
    v0 = [v16 diffuse];
    v8 = [objc_opt_self() blackColor];
    [v0 setContents:v8];

    goto LABEL_6;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

id sub_10013B85C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10013B944@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(type metadata accessor for SCNSegmentationDebugger());
  result = SCNSegmentationDebugger.init(sceneView:processor:)(a1, v6, a2);
  *a3 = result;
  return result;
}

void sub_10013B9DC(__n128 *a1)
{
  if ((a1[4].n128_u8[0] & 1) == 0)
  {
    v5 = a1[3];
    v3 = a1[1];
    v4 = a1[2];
    v2 = *a1;
    v1 = sub_10013A3B8();
    PointTrail.setHeadPosition(_:)(v2, v3, v4, v5);
  }

  v6 = sub_10013A3B8();
  SCNSegmentationDebugger.DebugPointTrail.updateLabels()();
}