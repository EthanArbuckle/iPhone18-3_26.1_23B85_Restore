void sub_1000E689C()
{

  StateValue.wrappedValue.getter();

  v1 = v96;

  if (v96)
  {
    v2 = *(**(v0 + 96) + 144);

    v2(&v95, v3);

    v4 = v95;
    *v111 = v102;
    *&v111[16] = v103;
    v112 = v104;
    v107 = v98;
    v108 = v99;
    v109 = v100;
    v110 = v101;
    v105 = v96;
    v106 = v97;
    v119 = v101;
    v115 = v97;
    v118 = v100;
    v120[0] = v102;
    *(v120 + 9) = *&v111[9];
    v114 = v96;
    v116 = v98;
    v117 = v99;
    v113 = v95;
    if (sub_10001376C(&v113) == 1)
    {

      v101 = v110;
      v102 = *v111;
      v103 = *&v111[16];
      v104 = v112;
      v97 = v106;
      v98 = v107;
      v99 = v108;
      v100 = v109;
      v95 = v4;
      v96 = v105;
      sub_100013BF8(&v95);
      return;
    }

    v101 = v110;
    v102 = *v111;
    v103 = *&v111[16];
    v104 = v112;
    v97 = v106;
    v98 = v107;
    v99 = v108;
    v100 = v109;
    v95 = v4;
    v96 = v105;
    v5 = v4;
    v6 = sub_100013BF8(&v95);
    if ((*((swift_isaMask & *v5) + 0x240))(v6))
    {
      v7 = *((swift_isaMask & *v5) + 0x2A0);
      v7();
      v8 = simd_float4x4.position.getter();
      v90 = v9;
      v10 = *((swift_isaMask & *v5) + 0x2A8);
      v10(v8);
      v11 = simd_float4x4.position.getter();
      v83 = v12;
      (v7)(v11);
      v13 = simd_float4x4.position.getter();
      v15 = vsubq_f32(v83, v14);
      v16 = vmulq_f32(v15, v15);
      *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
      *v16.f32 = vrsqrte_f32(v17);
      *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
      v84 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
      (*((swift_isaMask & *v1) + 0x2B0))(v13);
      v18 = simd_float4x4.position.getter();
      *v20.f32 = vsub_f32(v19, vadd_f32(*&v90, vmul_f32(*v84.f32, vdup_n_s32(0x3E99999Au))));
      v20.f32[2] = v21 - (*(&v90 + 2) + vmuls_lane_f32(0.3, v84, 2));
      v91 = v20;
      v10(v18);
      v22 = simd_float4x4.position.getter();
      v85 = v23;
      (v7)(v22);
      v24 = simd_float4x4.position.getter();
      v26 = vsubq_f32(v85, v25);
      v27 = vmulq_f32(v26, v26);
      *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
      *v27.f32 = vrsqrte_f32(v28);
      *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
      v29 = vmulq_f32(v91, vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]));
      v27.f32[0] = vaddv_f32(*v29.f32);
      if ((v29.f32[2] + v27.f32[0]) >= 0.0)
      {
        (v7)(v24);
        v30 = simd_float4x4.position.getter();
        v10(v30);
        v31 = simd_float4x4.position.getter();
        (v7)(v31);
        v32 = simd_float4x4.position.getter();
        v33.n128_f64[0] = (v7)(v32);
        v86 = v34;
        v92 = v33;
        v78 = v36;
        v80 = v35;
        v7();
        v37 = simd_float4x4.translated(to:)();
        (*((swift_isaMask & *v5) + 0x2D0))(v37, v92, v86, v80, v78, v38, v39, v40, v41);
LABEL_20:

        return;
      }

LABEL_8:

      return;
    }

    v42 = (*((swift_isaMask & *v5) + 0x2B0))(v121);
    if (v122)
    {
      goto LABEL_8;
    }

    v81 = v121[1];
    v87 = v121[0];
    v43 = *((swift_isaMask & *v1) + 0x2B0);
    v43(v42);
    v44 = simd_float4x4.position.getter();
    v93 = v45;
    *v45.i8 = vsub_f32(*v45.i8, *v87.f32);
    v46 = vmul_f32(*v45.i8, *v45.i8);
    v43(v44);
    v47 = simd_float4x4.position.getter();
    v49 = vsub_f32(*v48.i8, *v81.f32);
    v50 = vmul_f32(v49, v49);
    *v48.i8 = vsub_f32(vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *&vextq_s8(v48, v48, 8uLL)), vzip1_s32(*&vextq_s8(v87, v87, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
    *v48.i8 = vsqrt_f32(vadd_f32(vmul_f32(*v48.i8, *v48.i8), vadd_f32(vzip1_s32(v46, v50), vzip2_s32(v46, v50))));
    v51 = vcgt_f32(vdup_lane_s32(*v48.i8, 1), *v48.i8).u8[0];
    if (v51)
    {
      v52 = -1;
    }

    else
    {
      v52 = 0;
    }

    v94 = vbslq_s8(vdupq_n_s32(v52), v87, v81);
    v53 = vsubq_f32(v81, v87);
    v54 = vmulq_f32(v53, v53);
    *&v55 = v54.f32[2] + vaddv_f32(*v54.f32);
    v56 = vrsqrte_f32(v55);
    v57 = vmul_f32(v56, vrsqrts_f32(v55, vmul_f32(v56, v56)));
    v58 = vmulq_n_f32(v53, vmul_f32(v57, vrsqrts_f32(v55, vmul_f32(v57, v57))).f32[0]);
    if (v51)
    {
      *v59.f32 = vsub_f32(0, *v58.f32);
      v59.f32[2] = 0.0 - v58.f32[2];
      v59.i32[3] = 0;
      v58 = v59;
    }

    v88 = v58;
    v60 = v94.f32[2] + vmuls_lane_f32(0.3, v58, 2);
    v43(v47);
    v61 = simd_float4x4.position.getter();
    v63 = vsubq_f32(v62, vaddq_f32(v94, vmulq_f32(v88, vdupq_n_s32(0x3E99999Au))));
    v63.f32[2] = v62.f32[2] - v60;
    v64 = vmulq_f32(v88, v63);
    if ((v64.f32[2] + vaddv_f32(*v64.f32)) <= 0.0)
    {
      if ((v51 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((v51 & 1) == 0)
    {
LABEL_16:
      (*((swift_isaMask & *v5) + 0x2A0))(v61);
      v65 = simd_float4x4.position.getter();
LABEL_19:
      v66 = *((swift_isaMask & *v5) + 0x2A0);
      v66(v65);
      v67 = simd_float4x4.translated(to:)();
      v82 = v69;
      v89 = v68;
      v77 = v71;
      v79 = v70;
      v66(v67);
      v72 = simd_float4x4.translated(to:)();
      (*((swift_isaMask & *v5) + 0x2D0))(v72, v89, v82, v79, v77, v73, v74, v75, v76);
      goto LABEL_20;
    }

    (*((swift_isaMask & *v5) + 0x2A8))(v61);
    v65 = simd_float4x4.position.getter();
    goto LABEL_19;
  }
}

uint64_t sub_1000E7234()
{
  v1 = v0;
  v93 = type metadata accessor for ARPlaneAnchor.Classification();
  v2 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  StateValue.wrappedValue.getter();

  v4 = v122[0];
  v5 = v122[1];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(**(v1 + 96) + 144);

  v6(v122, v7);

  v8 = v122[0];
  v112[0] = *&v122[13];
  v112[1] = *&v122[15];
  v113 = *&v122[17];
  v108 = *&v122[5];
  v109 = *&v122[7];
  v110 = *&v122[9];
  v111 = *&v122[11];
  v106 = *&v122[1];
  v107 = *&v122[3];
  v120 = *&v122[11];
  v116 = *&v122[3];
  v119 = *&v122[9];
  v121[0] = *&v122[13];
  *(v121 + 9) = *(v112 + 9);
  v115 = *&v122[1];
  v117 = *&v122[5];
  v118 = *&v122[7];
  v114 = v122[0];
  if (sub_10001376C(&v114) == 1)
  {
    *&v122[11] = v111;
    *&v122[13] = v112[0];
    *&v122[15] = v112[1];
    *&v122[17] = v113;
    *&v122[3] = v107;
    *&v122[5] = v108;
    *&v122[7] = v109;
    *&v122[9] = v110;
    v122[0] = v8;
    *&v122[1] = v106;
    sub_100013BF8(v122);
LABEL_4:
    v9 = *(**(v1 + 96) + 400);

    v10 = v9(v122);
    *(v11 + 144) = _swiftEmptyArrayStorage;

    v10(v122, 0);
  }

  v102 = v111;
  v103 = v112[0];
  v104 = v112[1];
  v105 = v113;
  v98 = v107;
  v99 = v108;
  v100 = v109;
  v101 = v110;
  v96 = v8;
  v97 = v106;
  v13 = v8;
  v14 = sub_100013BF8(&v96);
  v15 = *((swift_isaMask & *v13) + 0x2A8);
  v15(v14);
  v16 = simd_float4x4.position.getter();
  v94 = v17;
  v18 = *((swift_isaMask & *v13) + 0x2A0);
  v18(v16);
  v19 = simd_float4x4.position.getter();
  v90 = v20;
  v18(v19);
  v21 = simd_float4x4.position.getter();
  v91 = v22;
  v15(v21);
  simd_float4x4.position.getter();
  v89 = v23;
  v24 = *(**(v1 + 80) + 144);

  v24(v95, v25);

  memcpy(v122, v95, 0x200uLL);
  v26 = sub_10008D4F0();
  sub_100013C4C(v122);
  if (!v26)
  {

    v68 = *(**(v1 + 96) + 400);

    v69 = v68(v95);
    *(v70 + 144) = _swiftEmptyArrayStorage;

    v69(v95, 0);
  }

  v87.i64[0] = v2;
  v78 = v13;
  v27 = vsubq_f32(v94, v90);
  v28 = vmulq_f32(v27, v27);
  *&v29 = v28.f32[2] + vaddv_f32(*v28.f32);
  *v28.f32 = vrsqrte_f32(v29);
  *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
  v90 = vmulq_n_f32(v27, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
  v30 = vaddq_f32(v91, v89);
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  v31.i64[0] = vmulq_f32(v30, v28).u64[0];
  v31.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, v30, 2));
  v94 = v31;
  v32 = [v26 _hitTestFromOrigin:32 withDirection:*v31.i64 types:*v90.i64];
  sub_1000E8790();
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = [v26 _hitTestFromOrigin:32 withDirection:*v94.i64 types:{COERCE_DOUBLE(vsub_f32(0, *v90.f32))}];
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v95[0] = v33;
  result = sub_100103C88(v35);
  v36 = v95[0];
  v77 = v26;
  if (!(v95[0] >> 62))
  {
    v37 = *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_9;
    }

LABEL_38:
    v91.i64[0] = _swiftEmptyArrayStorage;
LABEL_39:

    v71 = *(**(v1 + 96) + 400);
    v72 = v91.i64[0];

    v73 = v71(v95);
    *(v74 + 144) = v72;

    v73(v95, 0);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v37 = result;
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_9:
  if (v37 >= 1)
  {
    v38 = 0;
    v39 = v36 & 0xC000000000000001;
    v89.i64[0] = v87.i64[0] + 88;
    v88 = enum case for ARPlaneAnchor.Classification.wall(_:);
    v83 = enum case for ARPlaneAnchor.Classification.floor(_:);
    v81 = enum case for ARPlaneAnchor.Classification.table(_:);
    v82 = enum case for ARPlaneAnchor.Classification.ceiling(_:);
    v91.i64[0] = _swiftEmptyArrayStorage;
    v76 = (v87.i64[0] + 8);
    v79 = enum case for ARPlaneAnchor.Classification.door(_:);
    v80 = v1;
    while (1)
    {
      if (v39)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v36 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = [v40 anchor];
      if (v42)
      {
        v43 = v42;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v94.i64[0] = v43;
          v44 = v36;
          v45 = v37;
          v46 = v39;
          v47 = v1;
          v48 = v92;
          ARPlaneAnchor.classification.getter();
          v49 = v48;
          v1 = v47;
          v39 = v46;
          v37 = v45;
          v36 = v44;
          v50 = (*v89.i64[0])(v49, v93);
          if (v50 == v88)
          {
            goto LABEL_19;
          }

          if (v50 == v83 || v50 == v82 || v50 == v81)
          {
            if (SIMD3<>.isAlmostVertical(withinDegrees:)())
            {
LABEL_28:
              if ((*(v1 + 144) & 1) != 0 || (v52 = (v1 + 136), v53 = *(v1 + 128), *&v51 = v53, v86 = v51, v54 = vld1q_dup_f64(v52), v87 = v54, [v41 worldTransform], simd_float4x4.position.getter(), *v56.f32 = vsub_f32(__PAIR64__(DWORD1(v86), v53), *v55.f32), v56.i32[2] = vsubq_f32(v87, v55).i32[2], v57 = vmulq_f32(v56, v56), sqrtf(v57.f32[2] + vaddv_f32(*v57.f32)) >= 0.0001))
              {
                [v41 worldTransform];
                v86 = v59;
                v87 = v58;
                v84 = v61;
                v85 = v60;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v91.i64[0] = sub_100067114(0, *(v91.i64[0] + 16) + 1, 1, v91.i64[0]);
                }

                v63 = *(v91.i64[0] + 16);
                v62 = *(v91.i64[0] + 24);
                if (v63 >= v62 >> 1)
                {
                  v91.i64[0] = sub_100067114((v62 > 1), v63 + 1, 1, v91.i64[0]);
                }

                v64 = v91.i64[0];
                *(v91.i64[0] + 16) = v63 + 1;
                v65 = v64 + (v63 << 6);
                v66 = v86;
                *(v65 + 32) = v87;
                *(v65 + 48) = v66;
                v67 = v84;
                *(v65 + 64) = v85;
                *(v65 + 80) = v67;
                v1 = v80;
                goto LABEL_12;
              }
            }

LABEL_30:

            goto LABEL_12;
          }

          if (v50 == v79)
          {
LABEL_19:
            if (SIMD3<>.isAlmostHorizontal(withinDegrees:)())
            {
              goto LABEL_28;
            }

            goto LABEL_30;
          }

          (*v76)(v92, v93);
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_12:
      if (v37 == ++v38)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1000E7BA4()
{

  v1 = *(v0 + 120);
}

uint64_t sub_1000E7C04()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_1000E7C6C()
{
  sub_1000E7C04();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidesCoordinator()
{
  result = qword_1004A8808;
  if (!qword_1004A8808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E7DA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return v2(v8);
}

uint64_t sub_1000E7E68(uint64_t a1)
{
  v25 = &type metadata for Configurations.Default;
  v26 = &protocol witness table for Configurations.Default;
  *(a1 + 64) = &_swiftEmptyArrayStorage;
  v27 = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A11D0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(a1 + 152) = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A11D8);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(a1 + 160) = v8(v7, v4);
  sub_10000F974(&qword_1004A8968);
  swift_getKeyPath();
  *(a1 + 168) = MutableStateValue.__allocating_init(_:_:)();
  v9 = sub_10000F974(&qword_1004A8970);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  *(a1 + 176) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = sub_10000F974(&qword_1004A11F8);
  *(a1 + 184) = (*(v13 + 272))(v12, v4);
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&qword_1004A1200);
  *(a1 + 192) = (*(v15 + 272))(v14, v4);
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  __asm { FMOV            V0.2S, #10.0 }

  *(a1 + 208) = _D0;
  sub_1000336B4(v24, &v23);
  v21 = StateObserver.init(configuration:)();
  sub_10000FF00(v24);
  return v21;
}

uint64_t sub_1000E8138(void *a1)
{
  v2 = v1;
  sub_1000E689C();
  result = sub_1000E7234();
  if (!a1)
  {
    return result;
  }

  result = (*((swift_isaMask & *a1) + 0x200))(result);
  if (*(v1 + 144))
  {
    return result;
  }

  v6 = v5;
  type metadata accessor for MeasureCamera();
  v7 = *(**(v1 + 80) + 144);

  v7(__src, v8);

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  v9 = *(**(v1 + 80) + 144);

  v9(__src, v10);

  memcpy(v71, __src, 0x200uLL);
  sub_100013C4C(v71);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v50 = v11;
  v12 = *(**(v1 + 88) + 144);

  v12(__src, v13);

  v14 = __src[0];

  v15 = *(**(v1 + 88) + 144);

  v15(__src, v16);

  v17 = __src[2];

  __src[0] = v14;
  result = sub_100103A50(v17);
  v18 = __src[0];
  if (__src[0] >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v19 = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  v19 = *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
  }

LABEL_5:
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = vsub_f32(v50, v6);
    v22 = vaddv_f32(vmul_f32(v21, v21));
    v23 = v18 & 0xC000000000000001;
    v47 = v1;
    v48 = v18 & 0xC000000000000001;
    v46 = v18;
    v49 = v19;
    while (1)
    {
      v28 = v23 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v18 + 8 * v20 + 32);
      v29 = v28;
      if (v22 > 900.0)
      {
        break;
      }

      (*((swift_isaMask & *v28) + 0x2A0))();
      v24 = simd_float4x4.position.getter();
      v51 = v25;
      (*((swift_isaMask & *v29) + 0x2A8))(v24);
      v26 = simd_float4x4.position.getter();
      (*((swift_isaMask & *v29) + 0x2E0))(v26, v51, v27);

LABEL_8:
      if (v19 == ++v20)
      {
      }
    }

    v30 = *(**(v2 + 96) + 144);

    v30(__src, v31);

    v32 = __src[0];
    *v59 = *&__src[13];
    *&v59[16] = *&__src[15];
    v60 = *&__src[17];
    v55 = *&__src[5];
    v56 = *&__src[7];
    v57 = *&__src[9];
    v58 = *&__src[11];
    v53 = *&__src[1];
    v54 = *&__src[3];
    v66 = *&__src[9];
    v67 = *&__src[11];
    v68[0] = *&__src[13];
    *(v68 + 9) = *&v59[9];
    v62 = *&__src[1];
    v63 = *&__src[3];
    v64 = *&__src[5];
    v65 = *&__src[7];
    v61 = __src[0];
    if (sub_10001376C(&v61) == 1)
    {
      __src[0] = v32;
      *&__src[13] = *v59;
      *&__src[15] = *&v59[16];
      *&__src[17] = v60;
      *&__src[5] = v55;
      *&__src[7] = v56;
      *&__src[9] = v57;
      *&__src[11] = v58;
      *&__src[1] = v53;
      *&__src[3] = v54;
      v33 = sub_100013BF8(__src);
LABEL_15:
      (*((swift_isaMask & *v29) + 0x2E0))(v33, 0, 0);

LABEL_22:
      v19 = v49;
      v23 = v48;
      goto LABEL_8;
    }

    __src[0] = v32;
    *&__src[13] = *v59;
    *&__src[15] = *&v59[16];
    *&__src[17] = v60;
    *&__src[5] = v55;
    *&__src[7] = v56;
    *&__src[9] = v57;
    *&__src[11] = v58;
    *&__src[1] = v53;
    *&__src[3] = v54;
    v34 = v32;
    sub_100013BF8(__src);
    v35 = *((swift_isaMask & *v34) + 0xB8);
    v36 = v34;
    v37 = v35();
    v39 = v38;
    v52 = v36;

    v40 = *((swift_isaMask & *v29) + 0xB8);
    v41 = v29;
    v42 = v40();
    v44 = v43;

    if (v37 == v42 && v39 == v44)
    {
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v45 & 1) == 0)
      {
        v2 = v47;
        v18 = v46;
        goto LABEL_15;
      }
    }

    v2 = v47;
    v18 = v46;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000E8790()
{
  result = qword_1004A8960;
  if (!qword_1004A8960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A8960);
  }

  return result;
}

void sub_1000E87E4(uint64_t a1)
{
  v2 = *(v1 + qword_1004A4F58);
  if (v2)
  {
    switch(a1)
    {
      case 2:
        v4 = 3.14159265;
        break;
      case 4:
        CGFloat.piDiv2.unsafeMutableAddressor();
        v4 = -*CGFloat.piDiv2.unsafeMutableAddressor();
        break;
      case 3:
        CGFloat.piDiv2.unsafeMutableAddressor();
        v4 = *CGFloat.piDiv2.unsafeMutableAddressor();
        break;
      default:
        v4 = 0.0;
        break;
    }

    CGAffineTransformMakeRotation(&v32, v4);
    v29 = *&v32.m13;
    v30 = *&v32.m11;
    v28 = *&v32.m21;
    v5 = v2;
    *&m.a = v30;
    *&m.c = v29;
    *&m.tx = v28;
    CATransform3DMakeAffineTransform(&v32, &m);
    v6 = sub_1000E8A2C();
    v7 = v1 + qword_1004A8978;
    *v7 = v6;
    *(v7 + 8) = v8;
    v9 = sub_1000E8D40();
    CATransform3DMakeTranslation(&v32, v9, v10, 0.0);
    sub_1000E8FA0();
    v12 = v11;
    v14 = v13;
    sub_1000E91C8();
    v16 = v15;
    v18 = v17;
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v5;
    v22 = *&v32.m33;
    *(v21 + 96) = *&v32.m31;
    *(v21 + 112) = v22;
    v23 = *&v32.m43;
    *(v21 + 128) = *&v32.m41;
    *(v21 + 144) = v23;
    v24 = *&v32.m13;
    *(v21 + 32) = *&v32.m11;
    *(v21 + 48) = v24;
    v25 = *&v32.m23;
    *(v21 + 64) = *&v32.m21;
    *(v21 + 80) = v25;
    *(v21 + 160) = v16;
    *(v21 + 168) = v18;
    *(v21 + 176) = a1;
    *(v21 + 184) = v12;
    *(v21 + 192) = v14;
    *&m.tx = sub_1000EA880;
    *&m.ty = v21;
    *&m.a = _NSConcreteStackBlock;
    *&m.b = 1107296256;
    *&m.c = sub_100041180;
    *&m.d = &unk_10046DBB0;
    v26 = _Block_copy(&m);
    v27 = v5;

    [v19 animateWithDuration:0 delay:v26 options:0 animations:0.25 completion:0.25];
    _Block_release(v26);
  }
}

double sub_1000E8A2C()
{

  StateValue.wrappedValue.getter();

  if (v12 == 2)
  {
    if (qword_1004A0510 != -1)
    {
      swift_once();
    }

    v6 = *&qword_1004D5080;
    if (qword_1004A0518 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v12 != 4)
  {
    if (v12 == 3)
    {
      [v0 bounds];
      Width = CGRectGetWidth(v13);
      if (qword_1004A0518 != -1)
      {
        v10 = Width;
        swift_once();
        Width = v10;
      }

      v2 = Width - *&qword_1004D5088;
      [v0 bounds];
      CGRectGetHeight(v14);
      if (qword_1004A0510 != -1)
      {
        swift_once();
      }

      return v2 * 0.5;
    }

    [v0 bounds];
    v7 = CGRectGetWidth(v16);
    if (qword_1004A0510 != -1)
    {
      v11 = v7;
      swift_once();
      v7 = v11;
    }

    v6 = v7 - *&qword_1004D5080;
    if (qword_1004A0518 == -1)
    {
LABEL_21:
      v3 = v6 - *&qword_1004D5088 * 0.5;
      [v0 bounds];
      CGRectGetHeight(v17);
      return v3;
    }

LABEL_23:
    swift_once();
    goto LABEL_21;
  }

  [v0 bounds];
  v4 = CGRectGetWidth(v15);
  if (qword_1004A0518 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = v4 - *&qword_1004D5088;
  if (qword_1004A0510 != -1)
  {
    swift_once();
  }

  return v5 * 0.5;
}

double sub_1000E8D40()
{
  v1 = *(v0 + qword_1004A4F58);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (v0 + qword_1004A8978);
  v3 = *(v0 + qword_1004A8978);
  v4 = qword_1004A0518;
  v5 = v1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1004D5088;
  v7 = v3 + *&qword_1004D5088 * 0.5;

  StateValue.wrappedValue.getter();

  if (v33 == 2)
  {
    [v5 frame];
    Width = CGRectGetWidth(v35);

    return v7 + Width * -0.5;
  }

  else
  {
    if (v33 == 4)
    {
      v13 = *v2 + -40.0;
      v5 = v5;
      [v5 frame];
      v8 = v13 - CGRectGetHeight(v34);
      [v5 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v9 = v15;
      v10 = v17;
      v11 = v19;
      v12 = v21;
    }

    else
    {
      if (v33 != 3)
      {
        v23 = v5;
        [v23 frame];
        v8 = v7 + CGRectGetWidth(v36) * -0.5;
        [v23 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v37.origin.x = v25;
        v37.origin.y = v27;
        v37.size.width = v29;
        v37.size.height = v31;
        CGRectGetHeight(v37);

        return v8;
      }

      v8 = v6 + *v2 + 40.0;
      [v5 frame];
    }

    CGRectGetHeight(*&v9);
  }

  return v8;
}

uint64_t sub_1000E8FA0()
{
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  StateValue.wrappedValue.getter();

  if (v1 == 2)
  {
    if (qword_1004A0538 != -1)
    {
      return swift_once();
    }
  }

  else
  {
    if (v1 != 4)
    {
      if (v1 == 3)
      {
        if (qword_1004A0538 == -1)
        {
          return result;
        }
      }

      else if (qword_1004A0538 == -1)
      {
        return result;
      }

      return swift_once();
    }

    if (qword_1004A0538 != -1)
    {
      return swift_once();
    }
  }

  return result;
}

uint64_t sub_1000E91C8()
{
  sub_1000E8FA0();
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  StateValue.wrappedValue.getter();
}

void sub_1000E92D4(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, _OWORD *a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = [a6 layer];
  v18 = a7[5];
  v44 = a7[4];
  v45 = v18;
  v19 = a7[7];
  v46 = a7[6];
  v47 = v19;
  v20 = a7[1];
  *&v42.a = *a7;
  *&v42.c = v20;
  v21 = a7[3];
  *&v42.tx = a7[2];
  v43 = v21;
  [v17 setTransform:&v42];

  v22 = qword_1004A4F48;
  v23 = *&v16[qword_1004A4F48];
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad);
    if (v24)
    {
      v25 = v16;
      v26 = v24;
      [v26 frame];
      [v26 setFrame:{a1, a2}];

      v23 = *&v16[v22];
      if (!v23)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v28 = v16;
    }

    v29 = *(v23 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad);
    if (v29)
    {
      switch(a8)
      {
        case 2:
          v30 = 3.14159265;
          break;
        case 4:
          v30 = -*CGFloat.piDiv2.unsafeMutableAddressor();
          break;
        case 3:
          v30 = *CGFloat.piDiv2.unsafeMutableAddressor();
          break;
        default:
          v30 = 0.0;
          break;
      }

      CGAffineTransformMakeRotation(&v42, v30);
      [v29 setTransform:&v42];
    }

    goto LABEL_17;
  }

  v27 = v16;
LABEL_17:
  v31 = qword_1004A4F38;
  v32 = *&v16[qword_1004A4F38];
  if (v32)
  {
    v33 = *(v32 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
    if (!v33 || (v34 = v33, [v34 frame], objc_msgSend(v34, "setFrame:", a3, a4), v34, (v32 = *&v16[v31]) != 0))
    {
      v35 = *(v32 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
      if (v35)
      {
        switch(a8)
        {
          case 2:
            v36 = 3.14159265;
            break;
          case 4:
            v36 = -*CGFloat.piDiv2.unsafeMutableAddressor();
            break;
          case 3:
            v36 = *CGFloat.piDiv2.unsafeMutableAddressor();
            break;
          default:
            v36 = 0.0;
            break;
        }

        CGAffineTransformMakeRotation(&v42, v36);
        [v35 setTransform:&v42];
      }
    }
  }

  v37 = *&v16[qword_1004A4F50];
  v38 = v37;

  if (v37)
  {
    v39 = *&v38[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton];

    v40 = *&v16[qword_1004A8978];
    v41 = *&v16[qword_1004A8978 + 8];
    [v39 frame];
    [v39 setFrame:{v40, v41}];
  }
}

uint64_t sub_1000E95EC()
{
  v1 = sub_1000E8A2C();
  v3 = v2;
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1004D5088;
  v5 = objc_allocWithZone(type metadata accessor for EditButtonSolarium());
  v6 = sub_10013772C(v1, v3, v4, v4);
  v7 = *(v0 + qword_1004A4F50);
  *(v0 + qword_1004A4F50) = v6;

  return _objc_release_x1(v6, v7);
}

uint64_t sub_1000E96A8()
{
  sub_1000E8FA0();
  v2 = v1;
  v4 = v3;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v5 = *&qword_1004D50A8;
  v6 = objc_allocWithZone(type metadata accessor for UndoButtonSolarium());
  v7 = sub_1001B2FB4(v2, v4, v5, v5);
  v8 = *(v0 + qword_1004A4F38);
  *(v0 + qword_1004A4F38) = v7;

  return _objc_release_x1(v7, v8);
}

void sub_1000E9764()
{
  v1 = v0;
  sub_1000E91C8();
  v3 = v2;
  v5 = v4;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1004D50A8;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(type metadata accessor for HistoryButtonSolarium());
  v9 = sub_10008A4A4(sub_1000EA7D4, v7, v3, v5, v6, v6);

  v10 = *(v1 + qword_1004A4F48);
  *(v1 + qword_1004A4F48) = v9;
}

void sub_1000E9870()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000F974(&unk_1004AFBD0);
    sub_1000EA7DC();
    Subject<>.send()();
  }
}

uint64_t sub_1000E9900()
{
  v1 = qword_1004A8988;
  v2 = *(**(v0 + qword_1004A8988) + 144);

  v2(&v14, v3);

  if (v15 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(**(Strong + 80) + 200);
      v7 = Strong;

      v9 = v6(v8);

      v10 = *(*v9 + 280);
      swift_unknownObjectRetain();
      v10(sub_1000889E4, v7);
    }

    v11 = *(**(v0 + v1) + 400);

    v12 = v11(&v14);
    *(v13 + 8) = 0;
    v12(&v14, 0);
  }

  return result;
}

uint64_t sub_1000E9ABC()
{
  v9 = v0;

  StateValue.ifUpdated(_:)();

  v8 = v0;

  StateValue.ifUpdated(_:)();

  v7 = v0;

  StateValue.ifUpdated(_:)();

  v1 = *(**(v0 + qword_1004A8988) + 200);

  v3 = v1(v2);

  v6 = v0;
  (*(*v3 + 296))(sub_1000EA5A8, v5);

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

unsigned __int8 *sub_1000E9D00(unsigned __int8 *result, _BYTE *a2)
{
  v2 = *result - 1;
  if (a2[qword_1004A89B0] != v2 < 3)
  {
    a2[qword_1004A89B0] = v2 < 3;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1000EA634;
    *(v6 + 24) = v5;
    v9[4] = sub_100031688;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000DC708;
    v9[3] = &unk_10046DB38;
    v7 = _Block_copy(v9);
    v8 = a2;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000E9E94()
{

  StateValue.wrappedValue.getter();

  sub_1000E87E4(v0);
}

id sub_1000E9EEC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[qword_1004A8978];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[qword_1004A8980];
  *v12 = 0;
  v12[1] = 0;
  v13 = qword_1004A8988;
  sub_10000F974(&qword_1004A8DE8);
  swift_getKeyPath();
  *&v4[v13] = MutableStateBinding.__allocating_init(_:_:)();
  v14 = qword_1004A8990;
  v15 = sub_10000F974(&qword_1004A2C80);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v17 = qword_1004D5058;
  v18 = *(v15 + 272);
  swift_retain_n();
  *&v5[v14] = v18(KeyPath, v17);
  v19 = qword_1004A8998;
  v20 = sub_10000F974(&qword_1004A3F50);
  v21 = swift_getKeyPath();
  *&v5[v19] = (*(v20 + 272))(v21, v17);
  v22 = qword_1004A89A0;
  sub_10000F974(&unk_1004AFBD0);
  swift_allocObject();
  *&v5[v22] = PassthroughSubject.init()();
  v23 = qword_1004A89A8;
  v24 = sub_10000F974(&qword_1004A8DF0);
  v25 = swift_getKeyPath();
  *&v5[v23] = (*(v24 + 272))(v25, v17);
  v5[qword_1004A89B0] = 1;
  v27.receiver = v5;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000EA160(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[qword_1004A8978];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[qword_1004A8980];
  *v6 = 0;
  v6[1] = 0;
  v7 = qword_1004A8988;
  sub_10000F974(&qword_1004A8DE8);
  swift_getKeyPath();
  *&v1[v7] = MutableStateBinding.__allocating_init(_:_:)();
  v8 = qword_1004A8990;
  v9 = sub_10000F974(&qword_1004A2C80);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1004D5058;
  v12 = *(v9 + 272);
  swift_retain_n();
  *&v2[v8] = v12(KeyPath, v11);
  v13 = qword_1004A8998;
  v14 = sub_10000F974(&qword_1004A3F50);
  v15 = swift_getKeyPath();
  *&v2[v13] = (*(v14 + 272))(v15, v11);
  v16 = qword_1004A89A0;
  sub_10000F974(&unk_1004AFBD0);
  swift_allocObject();
  *&v2[v16] = PassthroughSubject.init()();
  v17 = qword_1004A89A8;
  v18 = sub_10000F974(&qword_1004A8DF0);
  v19 = swift_getKeyPath();
  *&v2[v17] = (*(v18 + 272))(v19, v11);
  v2[qword_1004A89B0] = 1;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, "initWithCoder:", a1);

  if (v20)
  {
  }

  return v20;
}

uint64_t sub_1000EA3D4()
{
  sub_1000223C4(*(v0 + qword_1004A8980));
}

uint64_t sub_1000EA458(uint64_t a1)
{
  sub_1000223C4(*(a1 + qword_1004A8980));
}

uint64_t type metadata accessor for EditViewSpatial()
{
  result = qword_1004A89E0;
  if (!qword_1004A89E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EA5FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EA64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000EA664()
{
  v1 = v0;
  v2 = *(**(v0 + qword_1004A8988) + 144);

  v2(&v11, v3);

  if (v11 < 1)
  {
    v5 = 0;
  }

  else
  {

    StateValue.wrappedValue.getter();

    v4 = *(v11 + 16);

    v5 = v4 == 0;
  }

  v6 = *(v1 + qword_1004A4F48);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone];
    v8 = v6;
    if (v7)
    {
      [v7 setEnabled:v5];
    }

    v9 = *&v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad];
    if (v9)
    {
      v10 = v9;
      [v10 setEnabled:v5];
    }
  }
}

uint64_t sub_1000EA79C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000EA7DC()
{
  result = qword_1004A8DE0;
  if (!qword_1004A8DE0)
  {
    sub_100013BB0(&unk_1004AFBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8DE0);
  }

  return result;
}

uint64_t sub_1000EA840()
{

  return _swift_deallocObject(v0, 200, 7);
}

void sub_1000EA924()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 setAllowsSelection:0];

    v3 = [v0 tableView];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for SwitchCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = String._bridgeToObjectiveC()();

      [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

      v7 = [v0 tableView];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for SliderCell();
        v9 = swift_getObjCClassFromMetadata();
        v10 = String._bridgeToObjectiveC()();

        [v8 registerClass:v9 forCellReuseIdentifier:v10];

        v11 = [v0 tableView];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for ColorCell();
          v13 = swift_getObjCClassFromMetadata();
          v14 = String._bridgeToObjectiveC()();

          [v12 registerClass:v13 forCellReuseIdentifier:v14];

          return;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1000EAD4C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure22DefaultsViewController_groups);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v3 + 24 * result + 48);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < *(v5 + 16))
  {
    v6 = v5 + 48 * result;
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v10 = *(v6 + 48);
    v9 = *(v6 + 56);
    v11 = *(v6 + 64);
    v12 = *(v6 + 72);

    v13 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [a1 dequeueReusableCellWithIdentifier:v13 forIndexPath:isa];

    type metadata accessor for DefaultCell();
    v16 = swift_dynamicCastClassUnconditional();
    v17 = v16 + OBJC_IVAR____TtC7Measure11DefaultCell_def;
    v18 = *(v16 + OBJC_IVAR____TtC7Measure11DefaultCell_def);
    v19 = *(v16 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8);
    *v17 = v8;
    *(v17 + 1) = v7;
    *(v17 + 2) = v10;
    *(v17 + 3) = v9;
    *(v17 + 4) = v11;
    v17[40] = v12;
    v20 = sub_1000464DC(v18, v19);
    (*((swift_isaMask & *v16) + 0x110))(v20);
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1000EB294()
{
  v1 = OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator);
  if (v2)
  {
    [v2 stopAnimation:1];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_touchDownCallback);
  if (v4)
  {

    v4(v5);

    sub_1000223C4(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000EB320()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v14 = sub_1000EB784;
  v15 = v2;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100041180;
  v13 = &unk_10046DC00;
  v3 = _Block_copy(&v10);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v14 = sub_1000EB7A4;
  v15 = v5;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10002E9EC;
  v13 = &unk_10046DC50;
  v6 = _Block_copy(&v10);
  v7 = v4;

  v8 = [v1 runningPropertyAnimatorWithDuration:0x20000 delay:v3 options:v6 animations:0.2 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
  v9 = *&v7[OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator];
  *&v7[OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator] = v8;
}

uint64_t sub_1000EB5B8(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_touchUpCallback);
  if (v1)
  {

    v1(v2);

    return sub_1000223C4(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000EB690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPlatterTitleButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000EB74C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EB78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000EB7A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator);
  *(v1 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator) = 0;
}

uint64_t sub_1000EB7D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 531))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 496);
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

uint64_t sub_1000EB82C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 520) = 0;
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
    *(result + 530) = 0;
    *(result + 528) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 531) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 531) = 0;
    }

    if (a2)
    {
      *(result + 496) = a2;
    }
  }

  return result;
}

id sub_1000EB920()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4E90 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000EB9A0@<X0>(void *a1@<X8>)
{
  if (qword_1004A02D8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4E90;
  *a1 = qword_1004D4E90;

  return v2;
}

uint64_t sub_1000EBA10(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x213uLL);
  memcpy(__dst, a2, 0x213uLL);
  return sub_1000EBAE4(v4, __dst) & 1;
}

unint64_t sub_1000EBA68(uint64_t a1)
{
  result = sub_1000EBA90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EBA90()
{
  result = qword_1004A8EA0;
  if (!qword_1004A8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8EA0);
  }

  return result;
}

uint64_t sub_1000EBAE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  if (a1[24])
  {
    if ((a2[24] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[24])
    {
      return 0;
    }

    v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
    if (!v3)
    {
      return 0;
    }
  }

  if (a1[48])
  {
    if ((a2[48] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[48] & 1) != 0 || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  if (a1[72])
  {
    if ((a2[72] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[72] & 1) != 0 || *(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (a1[96])
  {
    if ((a2[96] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[96] & 1) != 0 || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11))
  {
    return 0;
  }

  if (a1[120])
  {
    if ((a2[120] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[120] & 1) != 0 || *(a1 + 13) != *(a2 + 13) || *(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  if (a1[192])
  {
    if ((a2[192] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[192] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 9), *(a2 + 9)), vceqq_f32(*(a1 + 8), *(a2 + 8))), vandq_s8(vceqq_f32(*(a1 + 10), *(a2 + 10)), vceqq_f32(*(a1 + 11), *(a2 + 11))))) & 0x80000000) == 0)
  {
    return 0;
  }

  if (a1[272])
  {
    if (a2[272])
    {
      goto LABEL_48;
    }

    return 0;
  }

  if ((a2[272] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 14), *(a2 + 14)), vceqq_f32(*(a1 + 13), *(a2 + 13))), vandq_s8(vceqq_f32(*(a1 + 15), *(a2 + 15)), vceqq_f32(*(a1 + 16), *(a2 + 16))))) & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_48:
  if (a1[352])
  {
    if ((a2[352] & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else if ((a2[352] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 19), *(a2 + 19)), vceqq_f32(*(a1 + 18), *(a2 + 18))), vandq_s8(vceqq_f32(*(a1 + 20), *(a2 + 20)), vceqq_f32(*(a1 + 21), *(a2 + 21))))) & 0x80000000) == 0)
  {
    goto LABEL_104;
  }

  if (a1[392])
  {
    if ((a2[392] & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else if ((a2[392] & 1) != 0 || !CGRectEqualToRect(*(a1 + 360), *(a2 + 360)))
  {
    goto LABEL_104;
  }

  if (a1[432])
  {
    if ((a2[432] & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else if ((a2[432] & 1) != 0 || !CGRectEqualToRect(*(a1 + 400), *(a2 + 400)))
  {
    goto LABEL_104;
  }

  v4 = a2[440];
  if (a1[440])
  {
    if (!a2[440])
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*(a1 + 109) != *(a2 + 109))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_104;
    }
  }

  v4 = a2[448];
  if (a1[448])
  {
    if (!a2[448])
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*(a1 + 111) != *(a2 + 111))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_104;
    }
  }

  v4 = a2[456];
  if (a1[456])
  {
    if (!a2[456])
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*(a1 + 113) != *(a2 + 113))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_104;
    }
  }

  if (a1[480])
  {
    v5 = a2;
    v6 = a1;
    if ((a2[480] & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else
  {
    if (a2[480])
    {
      goto LABEL_104;
    }

    v4 = 0;
    if (COERCE_FLOAT(*(a1 + 58)) != COERCE_FLOAT(*(a2 + 58)))
    {
      return v4 & 1;
    }

    v7 = vmovn_s32(vceqq_f32(*(a1 + 29), *(a2 + 29)));
    if ((v7.i8[2] & 1) == 0)
    {
      return v4 & 1;
    }

    v5 = a2;
    v6 = a1;
    if ((v7.i8[4] & 1) == 0)
    {
      return v4 & 1;
    }
  }

  v8 = *(v6 + 62);
  v9 = *(v5 + 62);
  if (v8)
  {
    if (!v9 || (*(a1 + 61) != *(a2 + 61) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else if (v9)
  {
    goto LABEL_104;
  }

  if (a1[528])
  {
    v10 = a2;
    v11 = a1;
    if ((a2[528] & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_102:
    v13 = v11[529];
    v14 = v10[529];
    if (v13 == 2)
    {
      v3 = v14 == 2;
      v15 = a2;
      v16 = a1;
      if (!v3)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v4 = 0;
      if (v14 == 2)
      {
        return v4 & 1;
      }

      v17 = v14 ^ v13;
      v15 = a2;
      v16 = a1;
      if (v17)
      {
        return v4 & 1;
      }
    }

    v4 = v16[530] ^ v15[530] ^ 1;
    return v4 & 1;
  }

  if ((a2[528] & 1) == 0)
  {
    v4 = 0;
    if (COERCE_FLOAT(*(a1 + 64)) != COERCE_FLOAT(*(a2 + 64)))
    {
      return v4 & 1;
    }

    v12 = vmovn_s32(vceqq_f32(*(a1 + 32), *(a2 + 32)));
    if ((v12.i8[2] & 1) == 0)
    {
      return v4 & 1;
    }

    v10 = a2;
    v11 = a1;
    if ((v12.i8[4] & 1) == 0)
    {
      return v4 & 1;
    }

    goto LABEL_102;
  }

LABEL_104:
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1000EC0CC()
{

  sub_100027EDC(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000EC180(uint64_t a1)
{
  swift_beginAccess();
  sub_100027D74(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_1000EC258(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t initializeBufferWithCopyOfBuffer for MeasureAppState(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MeasureAppState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MeasureAppState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000EC3F8()
{
  result = Contexts.UIKit.init()();
  qword_1004D4E98 = result;
  return result;
}

id sub_1000EC418@<X0>(void *a1@<X8>)
{
  if (qword_1004A02E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4E98;
  *a1 = qword_1004D4E98;

  return v2;
}

uint64_t sub_1000EC488(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = &_mh_execute_header;
  if (a1[4])
  {
    v12 = &_mh_execute_header;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  v13 = v3 == 0;
  v18 = 256;
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = 256;
  }

  v20 = v19 | v2 | v17 | v15;
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  if (!v7)
  {
    v18 = 0;
  }

  return sub_1000EC5A0(v20 | v12, v18 | v6 | v16 | v14 | v11);
}

unint64_t sub_1000EC524(uint64_t a1)
{
  result = sub_1000EC54C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EC54C()
{
  result = qword_1004A9040;
  if (!qword_1004A9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9040);
  }

  return result;
}

uint64_t sub_1000EC5A0(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    return 0;
  }

  if ((a1 & 0x100) != 0)
  {
    v3 = 0x6C6576656CLL;
  }

  else
  {
    v3 = 0x6572757361656DLL;
  }

  if ((a1 & 0x100) != 0)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if ((a2 & 0x100) != 0)
  {
    v5 = 0x6C6576656CLL;
  }

  else
  {
    v5 = 0x6572757361656DLL;
  }

  if ((a2 & 0x100) != 0)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v7 = a2;
    v8 = (a2 >> 16) & 1;
    v9 = a1;
    v10 = (a1 >> 16) & 1;

    result = 0;
    if (v10 != v8 || ((v9 >> 24) & 1) != ((v7 >> 24) & 1))
    {
      return result;
    }

    return BYTE4(v9) & 1 ^ ((v7 & &_mh_execute_header) == 0);
  }

  v7 = a2;
  v11 = (a2 >> 16) & 1;
  v13 = (a1 >> 16) & 1;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v13 == v11 && (v14 & 1) != 0)
  {
    BYTE4(v9) = BYTE4(a1);
    if (((a1 >> 24) & 1) == ((v7 >> 24) & 1))
    {
      return BYTE4(v9) & 1 ^ ((v7 & &_mh_execute_header) == 0);
    }
  }

  return result;
}

unint64_t sub_1000EC6F8()
{
  result = qword_1004A9048;
  if (!qword_1004A9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9048);
  }

  return result;
}

char *sub_1000EC74C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
  type metadata accessor for InteractiveLabel();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ViewWithInteractiveLabel();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
  v12 = *&v10[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label];
  v13 = v10;
  [v12 setUserInteractionEnabled:1];
  [v13 addSubview:*&v10[v11]];
  [*&v10[v11] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000EC994();

  return v13;
}

char *sub_1000EC878(void *a1)
{
  v3 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
  type metadata accessor for InteractiveLabel();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ViewWithInteractiveLabel();
  v4 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
    v7 = *&v4[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label];
    v8 = v4;
    [v7 setUserInteractionEnabled:1];
    [v8 addSubview:*&v5[v6]];
    [*&v5[v6] setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_1000EC994();
  }

  return v5;
}

void sub_1000EC994()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D6290;
  v4 = *&v1[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label];
  v5 = [v4 bottomAnchor];
  v6 = [v1 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [v4 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_1000ECB80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewWithInteractiveLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000ECCB8(void *a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_1000ECDC0();
    v7 = v6;
    v9 = v8;
    v10 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
    [*&v5[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label] setFont:v6];
    [*&v5[v10] setTextColor:v9];

    a1 = v7;
  }

  return v4;
}

void sub_1000ECDC0()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v2 = [v1 fontDescriptor];

  v3 = [v2 fontDescriptorWithSymbolicTraits:2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v3 pointSize];

  v4 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v5 = [v4 fontDescriptor];

  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = [v0 fontWithDescriptor:v6 size:0.0];

  [v7 pointSize];
  v8 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v9 = [v8 fontDescriptor];

  v10 = [v9 fontDescriptorWithSymbolicTraits:2];
  if (v10)
  {
    [v0 fontWithDescriptor:v10 size:0.0];

    v11 = [objc_opt_self() secondaryLabelColor];
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1000ECFF4()
{
  v1 = v0;
  static PlaneSelector.DebuggerClass[0] = type metadata accessor for SCNPlaneSelectionDebugger();
  static PlaneSelector.DebuggerClass[1] = &off_100470DC0;
  static LocalPlaneDetector.DebuggerClass[0] = type metadata accessor for SCNLocalPlaneDebugger();
  static LocalPlaneDetector.DebuggerClass[1] = &off_100468B80;
  static SegmentationProcessor.DebuggerClass[0] = type metadata accessor for SCNSegmentationDebugger();
  static SegmentationProcessor.DebuggerClass[1] = &protocol witness table for SCNSegmentationDebugger;
  static PatchTracker.DebuggerClass[0] = type metadata accessor for SCNPatchDebugger();
  static PatchTracker.DebuggerClass[1] = &protocol witness table for SCNPatchDebugger;
  v2 = [objc_opt_self() sharedApplication];
  [v2 setIdleTimerDisabled:1];

  sub_1000F31E4();
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(17);

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = [v3 dictionaryRepresentation];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = Dictionary.description.getter();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x6665442072657355;
  v9._object = 0xEF0A3A73746C7561;
  Log.debug(_:isPrivate:)(v9, 0);

  type metadata accessor for LinesRenderer();
  v10 = swift_allocObject();
  *(v1 + 232) = sub_1000F2F8C(v10);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  qword_1004D4AD8 = *(v1 + 232);

  sub_1000EDAA0();
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPhone()())
  {
    sub_1000EDDC4();
    sub_1000EDEF0();
    v11 = *(v1 + 112);
    if (!v11)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10000F974(&unk_1004A3F10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1003D6280;
    v13 = *(v1 + 96);
    if (!v13)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    *(v12 + 32) = v13;
    v14 = *(v1 + 104);
    if (!v14)
    {
LABEL_24:
      __break(1u);
      return;
    }

    *(v12 + 40) = v14;
    sub_100018630(0, &qword_1004A9320);
    v15 = v11;
    v16 = v13;
    v17 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setViewControllers:isa];
  }

  sub_1000EE140();
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1)
  {
    goto LABEL_13;
  }

  v21 = *(v1 + 112);
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ([v21 selectedIndex] == 1)
  {
LABEL_13:
    *(v1 + 80) = 1;
    v22 = *(v1 + 120);
    if (v22)
    {
      v23 = [v22 view];
      if (v23)
      {
        v24 = v23;
        [v23 setAlpha:0.0];

        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_16:
  v25 = xmmword_1004D4AE8;
  *&xmmword_1004D4AE8 = *(v1 + 120);
  v26 = xmmword_1004D4AE8;

  v27 = *(v1 + 64);
  [v27 setRootViewController:*(v1 + 120)];
  [v27 makeKeyAndVisible];
  [v27 setOverrideUserInterfaceStyle:2];

  sub_1000EE3C0();
}

uint64_t sub_1000ED4B8()
{
  v1 = qword_1004A90C8;
  if (*(v0 + qword_1004A90C8))
  {
    v2 = *(v0 + qword_1004A90C8);
  }

  else
  {
    v2 = sub_1000ED520(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000ED520(void *a1)
{
  sub_10000F974(&qword_1004A9368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  *(inited + 32) = 0;
  sub_10000F974(&qword_1004A9370);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D5230;
  v4 = a1[24];
  v5 = &off_100469D00;
  if (!v4)
  {
    v5 = 0;
  }

  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = a1[26];
  if (v6)
  {
    v7 = &off_10046E520;
  }

  else
  {
    v7 = 0;
  }

  *(v3 + 48) = v6;
  *(v3 + 56) = v7;
  v10 = a1 + 21;
  v8 = a1[21];
  v9 = v10[1];
  if (v9)
  {
    v11 = &off_10046EFF8;
  }

  else
  {
    v11 = 0;
  }

  *(v3 + 64) = v9;
  *(v3 + 72) = v11;
  v12 = &off_10046E0D0;
  if (!v8)
  {
    v12 = 0;
  }

  *(v3 + 80) = v8;
  *(v3 + 88) = v12;
  *(inited + 40) = v3;
  *(inited + 48) = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003D5360;
  *(v13 + 32) = v6;
  *(v13 + 40) = v7;
  *(inited + 56) = v13;
  *(inited + 64) = 2;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003D5360;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  *(inited + 72) = v14;
  v15 = sub_10019A4F8(inited);
  swift_setDeallocating();

  swift_retain_n();
  swift_retain_n();
  v16 = v4;
  sub_10000F974(&qword_1004A9378);
  swift_arrayDestroy();
  type metadata accessor for InstrumentationCoordinator();
  swift_allocObject();
  return sub_1000A78DC(v15);
}

uint64_t sub_1000ED700(uint64_t a1)
{
  v2 = v1;
  *(v1 + 72) = [objc_allocWithZone(type metadata accessor for TabBarControllerDelegate()) init];
  *(v1 + 80) = 0;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  v4 = sub_10000F974(&qword_1004A9318);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  *(v2 + 216) = v7(KeyPath, v6);
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = _swiftEmptyArrayStorage;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  v8 = sub_10000F974(&qword_1004A1638);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  *(v2 + 264) = v10(v9, v6);
  v11 = sub_10000F974(&qword_1004A3F50);
  v12 = swift_getKeyPath();
  v13 = *(v11 + 272);

  *(v2 + 272) = v13(v12, v6);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&unk_1004A3F30) + 272);

  *(v2 + 280) = v15(v14, v6);
  v16 = swift_getKeyPath();
  v17 = *(sub_10000F974(&unk_1004A72D0) + 272);

  *(v2 + 288) = v17(v16, v6);
  v18 = qword_1004A90A8;
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  v20 = qword_1004A90B0;
  v21 = sub_10000F974(&qword_1004A53F8);
  v22 = swift_getKeyPath();
  *(v2 + v20) = (*(v21 + 272))(v22, v6);
  v23 = qword_1004A90B8;
  v24 = swift_getKeyPath();
  v25 = sub_10000F974(&unk_1004A2520);
  *(v2 + v23) = (*(v25 + 272))(v24, v6);
  *(v2 + qword_1004A90C0) = 0;
  *(v2 + qword_1004A90C8) = 0;
  *(v2 + 64) = a1;
  *(v2 + 296) = 2;
  *(v2 + 297) = 0;
  return StateObserver.init(configuration:)();
}

void sub_1000EDAA0()
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v1._object = 0x8000000100407020;
  v1._countAndFlagsBits = 0xD000000000000018;
  Log.debug(_:isPrivate:)(v1, 0);
  v2 = objc_allocWithZone(type metadata accessor for ViewController());
  v3 = sub_1000F2548(v2);
  v4 = *(v0 + 88);
  *(v0 + 88) = v3;
  v5 = v3;

  v6 = [v5 tabBarItem];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = [objc_opt_self() mainBundle];
  v28._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x4552555341454DLL;
  v8._object = 0xE700000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v28);

  v10 = String._bridgeToObjectiveC()();

  [v6 setTitle:v10];

  v11 = *(v0 + 88);
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = [v11 tabBarItem];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = objc_opt_self();
  v16 = [v15 systemImageNamed:v14];

  [v13 setImage:v16];
  v17 = *(v0 + 88);
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = [v17 tabBarItem];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v15 systemImageNamed:v20];

  [v19 setLandscapeImagePhone:v21];
  v22 = *(v0 + 88);
  if (!v22)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v23 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v22];
  v24 = *(v0 + 96);
  *(v0 + 96) = v23;

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v26 = *(&xmmword_1004D4AB8 + 1);
  *(&xmmword_1004D4AB8 + 1) = *(v0 + 88);
  v25 = *(&xmmword_1004D4AB8 + 1);
}

void sub_1000EDDC4()
{
  v1 = [objc_allocWithZone(UITabBarController) init];
  v2 = *(v0 + 112);
  *(v0 + 112) = v1;
  v3 = v1;

  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v3 setDelegate:*(v0 + 72)];

  v4 = *(v0 + 112);
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = [v4 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 setAccessibilityIgnoresInvertColors:1];

  v7 = *(v0 + 112);
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = [v7 tabBar];
  v9 = [objc_opt_self() whiteColor];
  [v8 setTintColor:v9];
}

void sub_1000EDEF0()
{
  v1 = [objc_allocWithZone(LevelPageViewController) init];
  v2 = *(v0 + 104);
  *(v0 + 104) = v1;
  v3 = v1;

  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = [v3 tabBarItem];

  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = [objc_opt_self() mainBundle];
  v21._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0x4C4556454CLL;
  v6._object = 0xE500000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v21);

  v8 = String._bridgeToObjectiveC()();

  [v4 setTitle:v8];

  v9 = *(v0 + 104);
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = [v9 tabBarItem];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = objc_opt_self();
  v14 = [v13 systemImageNamed:v12];

  [v11 setImage:v14];
  v15 = *(v0 + 104);
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = [v15 tabBarItem];
  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v13 systemImageNamed:v18];

  [v17 setLandscapeImagePhone:v19];
}

void sub_1000EE140()
{
  v1 = v0;
  v2 = [objc_allocWithZone(OrientationLockedViewController) init];
  v3 = v0[15];
  v0[15] = v2;
  v4 = v2;

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v17[4] = sub_1000F3A30;
  v17[5] = v5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000F0800;
  v17[3] = &unk_10046E0A8;
  v6 = _Block_copy(v17);

  [v4 setIsAutorotationEnabled:v6];
  _Block_release(v6);

  v7 = v1[15];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = qword_1004A0180;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  [v9 setOrientationToLockTo:qword_1004D4AE0];

  sub_100018630(0, &qword_1004A1930);
  v10 = static UIDevice.isIPhone()();
  v11 = v1[15];
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10000F974(&unk_1004A3F10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003D56B0;
  v13 = v1[14];
  if (v13)
  {
LABEL_11:
    *(v12 + 32) = v13;
    sub_100018630(0, &qword_1004A9320);
    v14 = v11;
    v15 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setViewControllers:isa];

    return;
  }

  __break(1u);
LABEL_9:
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_10000F974(&unk_1004A3F10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003D56B0;
  v13 = v1[11];
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

void sub_1000EE3C0()
{
  v1 = v0;
  v2 = sub_10000F974(&qword_1004A6F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v124 - v3;
  v5 = sub_10000F974(&qword_1004A9328);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v124 - v7;
  v9 = sub_10000F974(&qword_1004A9330);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v124 - v11;
  v13 = v1[11];
  if (!v13)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v138 = v8;
  v14 = v13;
  v15 = sub_1001CC7B0();

  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v16 = qword_1004D5428;
  [v15 center];
  v18 = v17;
  v20 = v19;
  [v15 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v15 bounds];
  v144 = 0;
  v29 = v16 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  *v29 = v18;
  *(v29 + 8) = v20;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  *(v29 + 48) = v30;
  *(v29 + 56) = v31;
  *(v29 + 64) = v32;
  *(v29 + 72) = v33;
  *(v29 + 80) = 0;
  type metadata accessor for CVController();
  swift_allocObject();
  v34 = v15;
  v35 = sub_10004B2A8(v34);

  v1[28] = v35;

  type metadata accessor for MotionObserver();
  v36 = swift_allocObject();
  v1[16] = sub_1001D264C(v36);

  if (!v1[28])
  {
    goto LABEL_31;
  }

  v137 = v6;
  v37 = v1[29];
  if (!v37)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for LinesInstrument();
  swift_allocObject();

  v1[21] = sub_1000F5698(v38, v37);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  qword_1004D4B08 = v1[21];

  type metadata accessor for MeasurementsStateReducer();
  v39 = swift_allocObject();
  v1[20] = sub_1000F29E4(v39);

  v40 = MeasureCore.shared.unsafeMutableAddressor();
  if (!v1[16])
  {
    goto LABEL_33;
  }

  v41 = v40;
  v42 = v34;

  MeasureCore.initialize(sceneView:motion:)();

  type metadata accessor for RectangleInstrument();
  swift_allocObject();
  v43 = v42;
  v1[22] = sub_10013F754(v43);

  v136 = objc_opt_self();
  if (![v136 jasperAvailable])
  {
    goto LABEL_17;
  }

  type metadata accessor for HistoryTracker();
  v44 = swift_allocObject();
  v45 = sub_1000F2D98(v44);
  v1[25] = v45;

  v46 = v1[29];
  if (!v46)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_1001D2798(v45, v46);

  type metadata accessor for GuidesCoordinator();
  swift_allocObject();
  v1[23] = sub_1000E63A4();

  v47 = *v41;
  swift_beginAccess();
  if (!*(v47 + 112))
  {
LABEL_14:
    v53 = [objc_opt_self() standardUserDefaults];
    v54 = [v53 kPersonHeightEnabled];

    if (v54)
    {
      sub_100018630(0, &qword_1004A9360);
      if ([swift_getObjCClassFromMetadata() supportsFrameSemantics:1])
      {
        v55 = objc_allocWithZone(type metadata accessor for PersonHeightInstrument());
        v56 = sub_100055BA8(v43);
        v57 = v1[24];
        v1[24] = v56;
      }
    }

LABEL_17:
    v135 = v5;
    type metadata accessor for Session();
    v58 = swift_allocObject();
    *(v58 + 24) = 0;
    *(v58 + 32) = v43;
    v59 = v43;
    v60 = [v59 session];
    *(v58 + 16) = v60;
    v61 = WorldAnchor.arSession.unsafeMutableAddressor();
    swift_beginAccess();
    v62 = *v61;
    *v61 = v60;
    v63 = v60;

    v1[19] = v58;

    v64 = v1[21];
    if (v64)
    {
      v134 = v12;
      v65 = v1[29];
      if (v65)
      {
        objc_allocWithZone(type metadata accessor for RenderLoop());
        v66 = v59;

        v67 = sub_10016F0A0(v66, v64, v65);
        v68 = v1[18];
        v1[18] = v67;
        v69 = v67;

        v70 = v1[19];
        if (v70)
        {

          v133 = sub_10016EEB0();
          v72 = v71;

          v73 = v1[21];
          if (v73)
          {
            v132 = v70;
            v74 = v1[28];
            if (v74)
            {
              v129 = v4;
              v130 = v10;
              v131 = v9;
              v75 = v1[29];
              if (v75)
              {
                v126 = v1;
                v128 = v72;
                v76 = type metadata accessor for MainLoop();
                v77 = objc_allocWithZone(v76);
                v78 = qword_1004A8410;
                KeyPath = swift_getKeyPath();
                v80 = sub_10000F974(&unk_1004A1940);
                v81 = qword_1004A04D8;
                v125 = v66;

                v127 = v74;

                v139 = v73;
                if (v81 != -1)
                {
                  swift_once();
                }

                v82 = qword_1004D5058;
                v83 = *(v80 + 272);
                swift_retain_n();
                *&v77[v78] = v83(KeyPath, v82);
                v84 = qword_1004A8418;
                sub_10000F974(&qword_1004A8758);
                swift_getKeyPath();
                v85 = v76;
                *&v77[v84] = MutableStateValue.__allocating_init(_:_:)();
                v86 = qword_1004A8420;
                sub_10000F974(&qword_1004A8760);
                swift_getKeyPath();
                *&v77[v86] = MutableStateValue.__allocating_init(_:_:)();
                v87 = qword_1004A8428;
                sub_10000F974(&qword_1004A8768);
                swift_getKeyPath();
                *&v77[v87] = MutableStateValue.__allocating_init(_:_:)();
                v88 = qword_1004A8430;
                v89 = swift_getKeyPath();
                v90 = sub_10000F974(&qword_1004A8770);
                *&v77[v88] = (*(v90 + 272))(v89, v82);
                v77[qword_1004A8468] = 0;
                *&v77[qword_1004A8478] = 0;
                v91 = &v77[qword_1004A8480];
                v140 = 0;
                v141 = 1;
                sub_10000F974(&qword_1004A8778);
                swift_allocObject();
                v92 = Synchronized.init(wrappedValue:)();
                *v91 = 0;
                *(v91 + 1) = v92;
                v91[16] = 0;
                v93 = v132;
                *&v77[qword_1004A8460] = v132;
                v94 = v125;
                *&v77[qword_1004A8458] = v125;
                v95 = &v77[qword_1004A8438];
                v96 = v128;
                *v95 = v133;
                v95[1] = v96;
                *&v77[qword_1004A8448] = v139;
                *&v77[qword_1004A8450] = v127;
                *&v77[qword_1004A8440] = v75;
                v97 = objc_allocWithZone(type metadata accessor for MainLoop.InternalObserver());
                v98 = v94;

                v99 = [v97 init];
                *&v77[qword_1004A8470] = v99;
                v143.receiver = v77;
                v143.super_class = v85;
                v100 = objc_msgSendSuper2(&v143, "init");
                v101 = qword_1004A8470;
                swift_unknownObjectWeakAssign();
                v102 = *(v93 + 16);
                v103 = v100;
                [v102 setDelegate:v103];
                [*(v93 + 16) _addObserver:*&v100[v101]];

                v133 = v98;

                v104 = v126;
                v105 = v126[17];
                v126[17] = v100;

                if ([v136 jasperAvailable])
                {
                  v106 = [objc_opt_self() standardUserDefaults];
                  swift_getKeyPath();
                  swift_allocObject();
                  swift_weakInit();
                  sub_100018630(0, &qword_1004A3F00);
                  v107 = static OS_dispatch_queue.main.getter();
                  NSUserDefaults.performOnChange<A>(to:on:action:)();
                }

                v108 = sub_1000ED4B8();
                v140 = *(v108 + 64);
                v109 = swift_allocObject();
                *(v109 + 16) = sub_1000F3870;
                *(v109 + 24) = v108;

                sub_10000F974(&qword_1004A6FD8);
                sub_10001D47C(&qword_1004A9338, &qword_1004A6FD8);
                v110 = v138;
                Publisher.map<A>(_:)();

                sub_10001D47C(&qword_1004A9340, &qword_1004A9328);
                v111 = v135;
                v112 = Publisher.eraseToAnyPublisher()();

                (*(v137 + 8))(v110, v111);
                v140 = v112;
                sub_100018630(0, &qword_1004A3F00);
                v113 = static OS_dispatch_queue.main.getter();
                v142 = v113;
                v114 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
                v115 = v129;
                (*(*(v114 - 8) + 56))(v129, 1, 1, v114);
                sub_10000F974(&qword_1004A9348);
                sub_10001D47C(&qword_1004A9350, &qword_1004A9348);
                sub_1000F38F4();
                v116 = v134;
                Publisher.receive<A>(on:options:)();
                sub_100018F04(v115, &qword_1004A6F50);

                sub_10001D47C(&qword_1004A9358, &qword_1004A9330);

                v117 = v131;
                Publisher<>.sink(receiveValue:)();

                (*(v130 + 8))(v116, v117);
                swift_beginAccess();
                sub_10000F974(&qword_1004A3270);
                sub_10001D47C(&qword_1004A3278, &qword_1004A3270);
                AnyCancellable.store<A>(in:)();
                swift_endAccess();

                v118 = *(v104 + 88);
                if (v118)
                {
                  v119 = v118;
                  v120 = sub_1001CC7B0();

                  v121 = *(v104 + 88);
                  if (v121)
                  {
                    objc_allocWithZone(type metadata accessor for DebugSessionCoordinator(0));

                    sub_10017FCC0(v120, v121, sub_1000F3990, v104);
                    v122 = qword_1004D4AD0;
                    qword_1004D4AD0 = v123;

                    return;
                  }

                  goto LABEL_41;
                }

LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
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

  v48 = v1[11];
  if (v48)
  {

    v49 = v48;
    v50 = sub_1001CC738();

    OverlayMetalView.populateScene(depthProcessor:)();
    type metadata accessor for EdgeInstrument();
    swift_allocObject();
    sub_100114DD8();
    v52 = v51;

    v1[26] = v52;

    goto LABEL_14;
  }

LABEL_43:
  __break(1u);
}

void sub_1000EF428()
{
  v1 = v0;
  *(v0 + 72) = [objc_allocWithZone(type metadata accessor for TabBarControllerDelegate()) init];
  *(v0 + 80) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  v2 = sub_10000F974(&qword_1004A9318);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 216) = v5(KeyPath, v4);
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = _swiftEmptyArrayStorage;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  v6 = sub_10000F974(&qword_1004A1638);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(v1 + 264) = v8(v7, v4);
  v9 = sub_10000F974(&qword_1004A3F50);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  *(v1 + 272) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&unk_1004A3F30) + 272);

  *(v1 + 280) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&unk_1004A72D0) + 272);

  *(v1 + 288) = v15(v14, v4);
  v16 = qword_1004A90A8;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = qword_1004A90B0;
  v19 = sub_10000F974(&qword_1004A53F8);
  v20 = swift_getKeyPath();
  *(v1 + v18) = (*(v19 + 272))(v20, v4);
  v21 = qword_1004A90B8;
  v22 = swift_getKeyPath();
  v23 = sub_10000F974(&unk_1004A2520);
  *(v1 + v21) = (*(v23 + 272))(v22, v4);
  *(v1 + qword_1004A90C0) = 0;
  *(v1 + qword_1004A90C8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000EF7B8()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  result = [objc_opt_self() jasperAvailable];
  if (result)
  {

    StateValue.ifUpdated(_:)();
  }

  return result;
}

void sub_1000EF8A4(unsigned __int8 *a1, _BYTE *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a1;
  sub_1000F0BD8(*a1);
  sub_1000F178C(v3);
  a2[296] = v7;
  a2[297] = v3;
  a2[298] = v4;
  a2[299] = v5;
  a2[300] = v6;
}

void sub_1000EF90C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    return;
  }

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(48);
  v4._object = 0x8000000100406EE0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  Log.default(_:isPrivate:)(v5, 0);

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        sub_1000F1E88(0, 0);
        sub_1000F1A6C(1);
      }

      else
      {
        v8._countAndFlagsBits = 0xD00000000000003ALL;
        v8._object = 0x8000000100406F10;
        Log.default(_:isPrivate:)(v8, 0);
        sub_1000EFBA0(0, 0x3FF0000000000000, 0);
      }
    }

    return;
  }

  if (!v2)
  {
    v6 = *(a2 + 88);
    if (v6)
    {
      v7 = v6;
      sub_1001CCEC0();

      if (qword_1004A0180 != -1)
      {
        swift_once();
      }

      if (qword_1004D4AF8)
      {

        sub_1000C22A4(0);
      }

      return;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v9 = *(a2 + 88);
  if (!v9)
  {
    goto LABEL_20;
  }

  if (*&v9[qword_1004AF958])
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = v9;

    sub_1001390A0(0, 1, sub_1000F3390, v10);
  }
}

uint64_t sub_1000EFBA0(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  sub_1000F1E88((a1 & 1) == 0, 0);
  if ((a3 & 1) != 0 || *&a2 <= 0.0)
  {

    return sub_1000F1A6C(1);
  }

  else
  {
    sub_100018630(0, &qword_1004A3F00);
    v26 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v20 = *(v14 + 8);
    v27 = v14 + 8;
    v28 = v20;
    v20(v16, v13);
    aBlock[4] = sub_1000F33DC;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046DEF0;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    v22 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v26;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v32 + 8))(v9, v22);
    (*(v30 + 8))(v12, v31);
    return v28(v19, v13);
  }
}

void sub_1000EFFA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v3);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v21[-v7];
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D4AD0;
  if (qword_1004D4AD0)
  {
    v10 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v9 + v10, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v13 = *&v8[*(sub_10000F974(&qword_1004A9310) + 64)];
        v14 = v9;
        sub_1000223C4(v13);
        v15 = type metadata accessor for URL();
        (*(*(v15 - 8) + 8))(v8, v15);
        goto LABEL_12;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v12 = v8;
LABEL_25:
        sub_1000F340C(v12, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
        return;
      }

      v17 = v9;
LABEL_12:
      sub_100085F70(v9 + v10, v5);

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 1)
      {
        if (!v18)
        {
          v19 = sub_10000F974(&qword_1004A9310);
          sub_1000223C4(*&v5[*(v19 + 64)]);
          v20 = type metadata accessor for URL();
          (*(*(v20 - 8) + 8))(v5, v20);
          return;
        }
      }

      else if (v18 != 2)
      {
        if (v18 == 3)
        {
          sub_1000F340C(v5, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
        }

        goto LABEL_16;
      }

      v12 = v5;
      goto LABEL_25;
    }

    v16 = v9;
    sub_1000F340C(v8, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
    goto LABEL_12;
  }

LABEL_16:

  StateValue.wrappedValue.getter();

  memcpy(v23, v22, 0x213uLL);
  sub_10006BE28(v23);
  if (v23[2])
  {
    if (v23[1])
    {
      return;
    }
  }

  else if ((v23[1] & 1) == 0)
  {
    return;
  }

  if (*(a2 + 248) == 1)
  {
    sub_1000F2424(0);
  }
}

uint64_t sub_1000F02D0()
{

  sub_100018F04(v0 + qword_1004A90A8, &unk_1004A3D90);
}

id *sub_1000F0418()
{
  v0 = StateObserver.deinit();

  sub_100018F04(v0 + qword_1004A90A8, &unk_1004A3D90);

  return v0;
}

uint64_t sub_1000F0568()
{
  sub_1000F0418();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MeasureCoordinator()
{
  result = qword_1004A90F8;
  if (!qword_1004A90F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F0608()
{
  sub_100065060();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1000F073C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v1 = *(**(Strong + qword_1004A90B8) + 144);

  v1(&v5, v2);

  v3 = v5 != 0x8000000000000018;
  sub_10001B360(v5);

  return v3;
}

uint64_t sub_1000F0800(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

void sub_1000F0840(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 192);
    if (!v3)
    {

      return;
    }

    if (v1)
    {
      v4 = qword_1004A0180;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      if (!qword_1004D4AC8)
      {
        __break(1u);
        return;
      }

      if (!*(qword_1004D4AC8 + 24))
      {
        sub_100063534();
        goto LABEL_12;
      }

      v6 = 0;
    }

    else
    {
      v5 = v3;
      v6 = 1;
    }

    sub_100063B98(v6);
LABEL_12:
  }
}

uint64_t sub_1000F0928(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000F3A00;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046E080;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

void sub_1000F0BD8(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v3 - 8);
  v80 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v70 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v70 - v11;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v77 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v70 - v24;
  v83 = v1;
  v26 = v1[296];
  if (v26 == v2)
  {
    return;
  }

  if ((v2 - 2) < 2)
  {
    v27 = [objc_opt_self() jasperAvailable];
    v28 = v83;
    if (v2 == 2)
    {
      if (v27)
      {
        v29 = v80;
        Date.init()();
        (*(v82 + 56))(v29, 0, 1, v81);
        v30 = qword_1004A90A8;
        swift_beginAccess();
        sub_10006CA08(v29, &v28[v30], &unk_1004A3D90);
        swift_endAccess();
      }
    }

    sub_1000F1E88(1, v2 == 3);
    return;
  }

  if (v2)
  {
    v36 = v83;
    v40 = *(v83 + 21);
    if (!v40)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (*(v40 + 208))
    {
LABEL_48:
      v68 = *(v36 + 11);
      if (v68)
      {
        v69 = v68;
        sub_1001CCEC0();

        return;
      }

      goto LABEL_55;
    }

    v41 = *(v40 + 72);
    swift_beginAccess();
    v42 = *(v41 + 64);
    if (v42 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (v43)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_18:
        if (v43 < 1)
        {
          __break(1u);
LABEL_52:
          swift_once();
LABEL_41:
          v57._object = 0x8000000100406FB0;
          v57._countAndFlagsBits = 0xD000000000000020;
          Log.default(_:isPrivate:)(v57, 0);
          v58 = *(v36 + 11);
          v59 = v82;
          if (!v58)
          {
LABEL_57:
            __break(1u);
            return;
          }

          v60 = *&v58[qword_1004AF910];
          if (!v60 || (v61 = objc_opt_self(), v62 = swift_allocObject(), *(v62 + 16) = v60, v63 = swift_allocObject(), *(v63 + 16) = sub_1000F3830, *(v63 + 24) = v62, v88 = sub_100031688, v89 = v63, aBlock = _NSConcreteStackBlock, v85 = 1107296256, v86 = sub_1000DC708, v87 = &unk_10046DFE0, v64 = _Block_copy(&aBlock), v65 = v60, v66 = v58, , , [v61 performWithoutAnimation:v64], _Block_release(v64), LOBYTE(v61) = swift_isEscapingClosureAtFileLocation(), v65, v66, , , (v61 & 1) == 0))
          {
            sub_1000F1E88(1, 0);
            sub_1000F1A6C(1);
            v67 = v80;
            (*(v59 + 56))(v80, 1, 1, v81);
            swift_beginAccess();
            sub_10006CA08(v67, &v36[v13], &unk_1004A3D90);
            swift_endAccess();
LABEL_36:

            StateValue.wrappedValue.getter();

            if (BYTE1(aBlock) == 1)
            {
            }

            else
            {
              v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v56 & 1) == 0)
              {
                return;
              }
            }

            sub_1000F1D78();
            return;
          }

          __break(1u);
          goto LABEL_54;
        }

        for (i = 0; i != v43; ++i)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v45 = *(v42 + 8 * i + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v46 = *(v45 + 24);
            ObjectType = swift_getObjectType();
            (*(v46 + 120))(1, ObjectType, v46);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_47;
      }
    }

LABEL_47:
    *(v40 + 208) = 1;

    goto LABEL_48;
  }

  if ((v26 - 2) < 2)
  {
    if (v83[80] == 1)
    {
      v83[80] = 0;
      v31 = v23;
      sub_100018630(0, &qword_1004A3F00);
      v74 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v32 = *(v31 + 8);
      v73 = v31 + 8;
      v75 = v32;
      v32(v21, v19);
      v88 = sub_1000F3848;
      v89 = v83;
      aBlock = _NSConcreteStackBlock;
      v85 = 1107296256;
      v86 = sub_100041180;
      v87 = &unk_10046E008;
      v71 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      v72 = sub_10003180C();
      sub_10000F974(&unk_1004A3D80);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v33 = v71;
      v34 = v74;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v33);

      (*(v78 + 8))(v15, v13);
      (*(v77 + 8))(v18, v16);
      v75(v25, v19);
    }

    v35 = [objc_opt_self() jasperAvailable];
    v36 = v83;
    if (!v35)
    {
      goto LABEL_35;
    }

    v13 = qword_1004A90A8;
    swift_beginAccess();
    v37 = v79;
    sub_1000D7AB8(&v36[v13], v79);
    v39 = v81;
    v38 = v82;
    if ((*(v82 + 48))(v37, 1, v81) == 1)
    {
      sub_100018F04(v37, &unk_1004A3D90);
LABEL_35:
      v55 = sub_1000F346C();
      sub_1000F1A6C(v55 & 1);
      goto LABEL_36;
    }

    (*(v38 + 32))(v12, v37, v39);
    v51 = v76;
    Date.init()();
    Date.distance(to:)();
    v53 = v52;
    v54 = *(v38 + 8);
    v54(v51, v39);
    v54(v12, v39);
    if (v53 < 600.0)
    {
      goto LABEL_35;
    }

    if (qword_1004A0260 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

  if (!v1[296])
  {
    return;
  }

  v48 = *(v83 + 11);
  if (!v48)
  {
    goto LABEL_56;
  }

  if (*&v48[qword_1004AF958])
  {
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    v83 = v48;

    sub_1001390A0(0, 0, sub_1000F3A70, v49);

    v50 = v83;
  }
}

void sub_1000F178C(char a1)
{
  v3 = type metadata accessor for SessionState();
  __chkstk_darwin(v3 - 8);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v6 = 0x6C6576656CLL;
  }

  else
  {
    v6 = 0x6572757361656DLL;
  }

  if (a1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (*(v1 + 297))
  {
    v8 = 0x6C6576656CLL;
  }

  else
  {
    v8 = 0x6572757361656DLL;
  }

  if (*(v1 + 297))
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v6 != v8 || v7 != v9)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return;
    }

    if (a1)
    {
      v12 = v1;
      sub_1000F1D78();
      goto LABEL_33;
    }

    v13 = *(v1 + 256);
    if (v13)
    {
      [v13 invalidate];
      v14 = *(v1 + 256);
    }

    else
    {
      v14 = 0;
    }

    *(v1 + 256) = 0;

    v12 = v1;
    v15 = *(**(v1 + 280) + 144);

    v15(v16);

    v17 = *v5;
    sub_1000F33FC(*v5);
    sub_1000F340C(v5, type metadata accessor for SessionState);
    if (v17 - 2 >= 2 && v17 != 0)
    {
      if (v17 == 1)
      {
        goto LABEL_33;
      }

      sub_1000E5770(v17);
    }

    v19 = sub_1000F346C();
    sub_1000F1A6C(v19 & 1);
LABEL_33:
    v20 = *(v12 + 88);
    if (v20)
    {
      if (*&v20[qword_1004AF958])
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        v22 = v20;

        sub_1001390A0(0, 1, sub_1000F3A70, v21);
      }
    }

    else
    {
      __break(1u);
    }

    return;
  }
}

void sub_1000F1A00(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 setAlpha:1.0];
}

uint64_t sub_1000F1A6C(uint64_t result)
{
  if ((*(v1 + 248) & 1) == 0)
  {
    v2 = v1;
    if (result)
    {
      v3 = *(**(v1 + 288) + 200);
      v4 = result;

      v6 = v3(v5);

      (*(*v6 + 280))(sub_1000F23FC, 0);

      LOBYTE(result) = v4;
    }

    sub_1000F2424(result & 1);
    if (*(v1 + 128))
    {

      sub_10012BA10();

      v7 = *(v1 + 176);
      if (v7)
      {
        v8 = objc_opt_self();

        v9 = [v8 processInfo];
        v10 = [v9 thermalState];

        if (v10 < 4)
        {
          v11 = swift_allocObject();
          *(v11 + 16) = v7;
          *(v11 + 24) = 0x20303u >> (8 * v10);
          sub_10000F974(&unk_1004A3D70);
          swift_allocObject();
          Future.init(_:)();
          sub_10001D47C(&qword_1004A6F90, &unk_1004A3D70);
          Publisher<>.sink(receiveValue:)();

          swift_beginAccess();
          sub_10000F974(&qword_1004A3270);
          sub_10001D47C(&qword_1004A3278, &qword_1004A3270);
          AnyCancellable.store<A>(in:)();
          swift_endAccess();

          *(v2 + 248) = 1;
          return result;
        }

LABEL_11:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_1000F1D78()
{
  if (!*(v0 + 256))
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_1000F3828;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1000508F8;
    v6[3] = &unk_10046DF68;
    v3 = _Block_copy(v6);

    v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:5.0];
    _Block_release(v3);
    v5 = *(v0 + 256);
    *(v0 + 256) = v4;
  }
}

void sub_1000F1E88(char a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v3 + 248) == 1)
  {
    if (a1)
    {
      v14 = *(v3 + 88);
      if (!v14)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v15 = v14;
      sub_1001CCEC0();
    }

    if (*(v3 + 224))
    {
      v31 = a2;
      v32 = v9;
      v33 = v7;
      v30 = v6;

      sub_100049F50();

      v16 = *(v3 + 176);
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = 0;
        sub_10000F974(&unk_1004A3D70);
        swift_allocObject();

        v34 = Future.init(_:)();
        sub_10001D47C(&qword_1004A6F90, &unk_1004A3D70);
        Publisher<>.sink(receiveValue:)();

        swift_beginAccess();
        sub_10000F974(&qword_1004A3270);
        sub_10001D47C(&qword_1004A3278, &qword_1004A3270);
        AnyCancellable.store<A>(in:)();
        swift_endAccess();

        if (qword_1004A0188 != -1)
        {
          swift_once();
        }

        v18 = qword_1004D4B20;
        swift_beginAccess();
        v19 = *(v18 + 24);
        *v13 = v19;
        (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
        v20 = v19;
        LOBYTE(v19) = _dispatchPreconditionTest(_:)();
        (*(v11 + 8))(v13, v10);
        v22 = v32;
        v21 = v33;
        v23 = v31;
        if (v19)
        {
          *(v18 + 32) = 0;
          swift_endAccess();

          if (qword_1004A0248 == -1)
          {
            goto LABEL_11;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
LABEL_11:
        v24._object = 0x8000000100406F50;
        v24._countAndFlagsBits = 0xD000000000000025;
        Log.default(_:isPrivate:)(v24, 0);
        v25 = *(v3 + 128);
        if (v25)
        {
          [*(v25 + 80) stopDeviceMotionUpdates];
          if (*(v3 + 152))
          {

            sub_1001845D4(v23 & 1);

            v26 = [objc_opt_self() standardUserDefaults];
            Date.init()();
            isa = Date._bridgeToObjectiveC()().super.isa;
            (*(v21 + 8))(v22, v30);
            Defaults.dateLastUse.unsafeMutableAddressor();

            v28 = String._bridgeToObjectiveC()();

            [v26 setObject:isa forKey:v28];

            *(v3 + 248) = 0;
            return;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_1000F2390()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000F1E88(1, 1);
    v2 = *(v1 + 256);
    *(v1 + 256) = 0;
  }
}

void sub_1000F2424(char a1)
{
  if ([objc_opt_self() jasperAvailable])
  {

    StateValue.wrappedValue.getter();

    memcpy(__dst, __src, 0x213uLL);
    sub_10006BE28(__dst);
    if (*(v1 + 152))
    {
      if (__dst[1])
      {
        v3 = 256;
      }

      else
      {
        v3 = 0;
      }

      sub_10018478C(v3 & 0xFFFE | a1 & 1);

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (!*(v1 + 152))
  {
    goto LABEL_12;
  }

  v4 = sub_100185018();
  sub_100184898(a1 & 1, v4);
}

id sub_1000F2548(char *a1)
{
  swift_getObjectType();
  *&a1[qword_1004AF900] = 0;
  *&a1[qword_1004AF908] = 0;
  *&a1[qword_1004AF910] = 0;
  v2 = qword_1004AF918;
  v3 = sub_10000F974(&unk_1004AFBE0);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v3 + 272);
  swift_retain_n();
  *&a1[v2] = v6(KeyPath, v5);
  *&a1[qword_1004AF920] = 0;
  *&a1[qword_1004AF928] = 0;
  *&a1[qword_1004AF930] = 0;
  *&a1[qword_1004AF938] = 0;
  *&a1[qword_1004AF940] = 0;
  *&a1[qword_1004AF948] = 0;
  *&a1[qword_1004AF950] = 0;
  *&a1[qword_1004AF958] = 0;
  *&a1[qword_1004AF960] = 0;
  *&a1[qword_1004AF968] = 0;
  *&a1[qword_1004AF970] = 0;
  *&a1[qword_1004AF978] = 0;
  *&a1[qword_1004AF980] = 0;
  *&a1[qword_1004AF988] = 0;
  *&a1[qword_1004AF990] = 0;
  v7 = qword_1004AF998;
  type metadata accessor for MotionObserver();
  v8 = swift_allocObject();
  *&a1[v7] = sub_1001D264C(v8);
  a1[qword_1004AF9A0] = 0;
  *&a1[qword_1004AF9A8] = 0;
  v9 = qword_1004AF9B0;
  sub_10000F974(&qword_1004A93B0);
  swift_getKeyPath();
  *&a1[v9] = MutableStateValue.__allocating_init(_:_:)();
  v10 = qword_1004AF9B8;
  sub_10000F974(&unk_1004AFBF0);
  swift_getKeyPath();
  *&a1[v10] = MutableStateValue.__allocating_init(_:_:)();
  v11 = qword_1004AF9C0;
  sub_10000F974(&qword_1004A93B8);
  swift_getKeyPath();
  *&a1[v11] = MutableStateValue.__allocating_init(_:_:)();
  v12 = qword_1004AF9C8;
  v13 = sub_10000F974(&unk_1004AFC00);
  v14 = swift_getKeyPath();
  *&a1[v12] = (*(v13 + 272))(v14, v5);
  v15 = qword_1004AF9D0;
  v16 = swift_getKeyPath();
  v17 = sub_10000F974(&qword_1004A7530);
  *&a1[v15] = (*(v17 + 272))(v16, v5);

  return sub_1000F288C(a1);
}

id sub_1000F288C(char *a1)
{
  v9 = &type metadata for Configurations.Default;
  v10 = &protocol witness table for Configurations.Default;
  *&a1[qword_1004AD840] = &_swiftEmptyArrayStorage;
  v1 = &a1[qword_1004AD848];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v7.receiver = a1;
  v7.super_class = sub_10000F974(&qword_1004A93C0);
  v2 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  sub_1000336B4(v8, v6);
  v3 = qword_1004AD848;
  swift_beginAccess();
  v4 = v2;
  sub_10006CA08(v6, v2 + v3, &qword_1004A1BE0);
  swift_endAccess();
  sub_10001D47C(&qword_1004A93C8, &qword_1004A93C0);
  StateObserving.setup()();

  sub_10000FF00(v8);
  return v4;
}

uint64_t sub_1000F29E4(uint64_t a1)
{
  v22 = &type metadata for Configurations.Default;
  v23 = &protocol witness table for Configurations.Default;
  v2 = sub_10000F974(&qword_1004A2890);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(a1 + 64) = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A1638);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(a1 + 72) = v8(v7, v4);
  v9 = sub_10000F974(&unk_1004AFC00);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  *(a1 + 80) = v11(v10, v4);
  sub_10000F974(&qword_1004A9380);
  swift_getKeyPath();
  *(a1 + 88) = MutableStateValue.__allocating_init(_:_:)();
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(a1 + 96) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&unk_1004A72D0);
  *(a1 + 104) = (*(v15 + 272))(v14, v4);
  sub_10000F974(&qword_1004A9388);
  swift_getKeyPath();
  *(a1 + 112) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A9390);
  swift_getKeyPath();
  *(a1 + 120) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A9398);
  swift_getKeyPath();
  *(a1 + 128) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A93A0);
  swift_getKeyPath();
  *(a1 + 136) = MutableStateValue.__allocating_init(_:_:)();
  v16 = sub_10000F974(&qword_1004A93A8);
  v17 = swift_getKeyPath();
  *(a1 + 144) = (*(v16 + 272))(v17, v4);
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  sub_1000336B4(v21, &v20);
  v18 = StateObserver.init(configuration:)();
  sub_10000FF00(v21);
  return v18;
}

uint64_t sub_1000F2D98(void *a1)
{
  v14 = &type metadata for Configurations.Default;
  v15 = &protocol witness table for Configurations.Default;
  sub_10000F974(&qword_1004A6AF8);
  swift_getKeyPath();
  a1[8] = MutableStateBinding.__allocating_init(_:_:)();
  v2 = sub_10000F974(&qword_1004A6B00);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  a1[9] = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = sub_10000F974(&qword_1004A8770);
  a1[10] = (*(v7 + 272))(v6, v4);
  v8 = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A72E0);
  a1[11] = (*(v9 + 272))(v8, v4);
  sub_1000336B4(v13, &v12);
  v10 = StateObserver.init(configuration:)();
  sub_10000FF00(v13);
  return v10;
}

uint64_t sub_1000F2F8C(uint64_t a1)
{
  v14 = &type metadata for Configurations.Default;
  v15 = &protocol witness table for Configurations.Default;
  *(a1 + 64) = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004A93D0);
  swift_getKeyPath();
  *(a1 + 72) = MutableStateValue.__allocating_init(_:_:)();
  *(a1 + 80) = _swiftEmptyDictionarySingleton;
  type metadata accessor for WorldLine();
  *(a1 + 88) = OrderedDictionary.init()();
  *(a1 + 96) = v2;
  *(a1 + 104) = v3;
  v12 = _swiftEmptyDictionarySingleton;
  sub_10000F974(&qword_1004A93D8);
  swift_allocObject();
  *(a1 + 112) = Synchronized.init(wrappedValue:)();
  KeyPath = swift_getKeyPath();
  v5 = sub_10000F974(&qword_1004A8950);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v5 + 272);
  swift_retain_n();
  *(a1 + 120) = v7(KeyPath, v6);
  *(a1 + 128) = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004A93E0);
  swift_getKeyPath();
  *(a1 + 136) = MutableStateValue.__allocating_init(_:_:)();
  v8 = swift_getKeyPath();
  v9 = sub_10000F974(&qword_1004A1200);
  *(a1 + 144) = (*(v9 + 272))(v8, v6);
  *(a1 + 152) = 1;
  sub_1000336B4(v13, &v12);
  v10 = StateObserver.init(configuration:)();
  sub_10000FF00(v13);
  return v10;
}

void sub_1000F31E4()
{
  static DefaultsManager.registerDefaults()();
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  Defaults.resetDefaultSettingsOnStart.unsafeMutableAddressor();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    static DefaultsManager.reset()();
  }

  v4 = [v0 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:1 forKey:v5];

  v6 = [v0 standardUserDefaults];

  v7 = String._bridgeToObjectiveC()();

  [v6 setBool:0 forKey:v7];
}

uint64_t sub_1000F3358()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F3398()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000F33E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000F33FC(unint64_t result)
{
  if (result >= 4)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000F340C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F346C()
{
  v0 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  Defaults.dateLastUse.unsafeMutableAddressor();

  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_100018F04(v19, &unk_1004A6970);
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v4 + 56))(v2, v13 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_10:
    sub_100018F04(v2, &unk_1004A3D90);
    return 0;
  }

  (*(v4 + 32))(v9, v2, v3);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  v15._object = 0x8000000100406F80;
  v15._countAndFlagsBits = 0xD000000000000023;
  Log.default(_:isPrivate:)(v15, 0);
  v14(v9, v3);
  return 1;
}

uint64_t sub_1000F37F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F3878()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F38B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1));
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t sub_1000F38F4()
{
  result = qword_1004A6F80;
  if (!qword_1004A6F80)
  {
    sub_100018630(255, &qword_1004A3F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6F80);
  }

  return result;
}

void sub_1000F395C(_BYTE *a1)
{
  v2 = a1[1];
  v3 = (v1 + qword_1004A90C0);
  *v3 = *a1;
  v3[1] = v2;
  if (*(v1 + 248) == 1)
  {
    sub_1000F2424(0);
  }
}

id sub_1000F39A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPersonHeightDebugViewEnabled];
  *a2 = result;
  return result;
}

void sub_1000F3A00()
{
  if (*(v0 + 248) == 1)
  {
    sub_1000F2424(0);
  }
}

uint64_t sub_1000F3AB4(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = sub_1000A527C(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1000F4788(v8, v2, v3, v4);
  sub_10000FF00(a1);
  return v10;
}

uint64_t sub_1000F3BB8()
{
  v1 = *(**(v0 + 184) + 200);

  v3 = v1(v2);

  v7 = sub_1000F4AA0;
  v8 = v0;
  v4 = *(*v3 + 296);

  v4(sub_1000F4AA8, v6);

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

uint64_t sub_1000F3D30(uint64_t result, uint64_t a2)
{
  if (result >= 2u)
  {
    v7[8] = v2;
    v7[9] = v3;
    v4 = *(**(a2 + 168) + 400);

    v5 = v4(v7);
    *(v6 + 16) = _swiftEmptyArrayStorage;

    v5(v7, 0);
  }

  return result;
}

uint64_t sub_1000F3DE0(uint64_t a1)
{
  v2 = v1;
  if (a1 == 0x8000000000000010)
  {
    v3 = *(**(v1 + 152) + 144);

    v3(v26, v4);

    v5 = v26[0];
    v6 = v26[1];

    if (v6)
    {
      v7 = *((swift_isaMask & *v6) + 0x2C0);
      v8 = *v7();
      (*(v8 + 368))();

      if (simd_float4x4.isAlmostHorizontal(marginInDegrees:)(10.0) && (*((swift_isaMask & *v6) + 0x2F0))() < 3 && (v9 = v7(), *&v10 = (*(*v9 + 368))(v9), v24 = v11, v25 = v10, v22 = v13, v23 = v12, , v27 = 0, *(v2 + 80) = v25, *(v2 + 96) = v24, *(v2 + 112) = v23, *(v2 + 128) = v22, *(v2 + 144) = 0, (v14 = sub_1000F4384()) != 0))
      {
        v15 = v14;
        swift_beginAccess();
        *(v2 + 64) = _swiftEmptyArrayStorage;

        swift_beginAccess();
        v16 = v15;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  else
  {
    swift_beginAccess();
    *(v1 + 64) = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v17 = *(v2 + 64);
  v18 = *(**(v2 + 168) + 400);

  v19 = v18(v26);
  *(v20 + 16) = v17;

  v19(v26, 0);
}

uint64_t sub_1000F4158(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 200);
  v4 = *(v1 + 204);
  v5 = *(result + 144);
  if (v5)
  {
    if (v4)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    result = simd_float4x4.position.getter();
    if ((v4 & 1) == 0 && vabds_f32(v3, v7) <= 0.00000011921)
    {
      return result;
    }

    simd_float4x4.position.getter();
    v6 = v8;
  }

  *(v2 + 200) = v6;
  *(v2 + 204) = v5 & 1;
  swift_beginAccess();
  v9 = *(v2 + 64);
  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }
  }

  if ((*(v2 + 144) & 1) == 0)
  {
    result = sub_1000F4384();
    if (result)
    {
      v10 = result;
      *(v2 + 64) = _swiftEmptyArrayStorage;

      swift_beginAccess();
      v11 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12 = *(v2 + 64);
      swift_endAccess();
      v13 = *(**(v2 + 168) + 400);

      v14 = v13(v16);
      *(v15 + 16) = v12;

      v14(v16, 0);
    }
  }

  return result;
}

void *sub_1000F4384()
{
  if (*(v0 + 144))
  {
    return 0;
  }

  v2 = 10.0;
  if ((*(v0 + 204) & 1) == 0)
  {
    v3 = *(v0 + 200);
    simd_float4x4.position.getter();
    v2 = v3 - v4;
  }

  *(v0 + 212) = v2;
  simd_float4x4.position.getter();
  SIMD3<>.up.unsafeMutableAddressor();
  simd_float4x4.translated(to:)();
  v5 = objc_allocWithZone(type metadata accessor for WorldLineGuide());
  LOBYTE(v15) = 1;
  v1 = WorldLineGuide.init(guideType:end1:end2:primarySegmentEnd1:primarySegmentEnd2:backingPlanes:anchorState:)();
  v6 = *(**(v0 + 192) + 144);

  v6(__src, v7);

  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_10008D4F0();
  sub_100013C4C(__dst);
  if (v8)
  {
    v9 = [v8 camera];

    [v9 transform];
    v18 = v11;
    v19 = v10;
    v16 = v13;
    v17 = v12;

    if (qword_1004A0350 != -1)
    {
      swift_once();
    }

    sub_1001248D0(v1, v19, v18, v17, v16);
  }

  return v1;
}

uint64_t sub_1000F45D0()
{
}

uint64_t sub_1000F4628()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_1000F4688()
{
  sub_1000F4628();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VerticalGuidesInstrument()
{
  result = qword_1004A9410;
  if (!qword_1004A9410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F4788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[3] = a3;
  v30[4] = a4;
  v7 = sub_1000315D4(v30);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  *(a2 + 64) = _swiftEmptyArrayStorage;
  v31 = 1;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 1;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(&qword_1004A11D0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);
  swift_retain_n();
  *(a2 + 152) = v11(KeyPath, v10);
  v12 = sub_10000F974(&qword_1004A11D8);
  v13 = swift_getKeyPath();
  v14 = *(v12 + 272);

  *(a2 + 160) = v14(v13, v10);
  sub_10000F974(&qword_1004A8968);
  swift_getKeyPath();
  *(a2 + 168) = MutableStateValue.__allocating_init(_:_:)();
  v15 = sub_10000F974(&qword_1004A8970);
  v16 = swift_getKeyPath();
  v17 = *(v15 + 272);

  *(a2 + 176) = v17(v16, v10);
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&qword_1004A11F8);
  *(a2 + 184) = (*(v19 + 272))(v18, v10);
  v20 = swift_getKeyPath();
  v21 = sub_10000F974(&qword_1004A1200);
  *(a2 + 192) = (*(v21 + 272))(v20, v10);
  *(a2 + 200) = 0;
  *(a2 + 204) = 1;
  __asm { FMOV            V0.2S, #10.0 }

  *(a2 + 208) = _D0;
  sub_1000336B4(v30, &v29);
  v27 = StateObserver.init(configuration:)();
  sub_10000FF00(v30);
  return v27;
}

uint64_t sub_1000F4AD8(_OWORD *a1)
{
  v1 = a1[7];
  v6[6] = a1[6];
  v6[7] = v1;
  v7[0] = a1[8];
  *(v7 + 9) = *(a1 + 137);
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return sub_1000F4158(v6);
}

uint64_t sub_1000F4B48(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1000F4C70(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1000F4D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  sub_1000A527C(a1, *(a1 + 24));
  sub_10000F974(a3);
  sub_10001D47C(a5, a3);
  return dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
}

id sub_1000F4E00(ARFrame a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004D9B4();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    result = swift_once();
    goto LABEL_4;
  }

  MeasureCore.shared.unsafeMutableAddressor();

  MeasureCore.didUpdate(with:)(a1);

  result = [objc_opt_self() jasperAvailable];
  if (!result)
  {
    goto LABEL_6;
  }

  if (qword_1004A0180 != -1)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (!*(&xmmword_1004D4AB8 + 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v16 = *(&xmmword_1004D4AB8 + 1);
  v17 = sub_1001CC738();

  OverlayMetalView.didUpdate(frame:)(a1);
LABEL_6:

  Synchronized.wrappedValue.getter();

  if (aBlock != 1)
  {
    return result;
  }

  v57 = v7;
  v18 = *(**(v2 + 128) + 144);

  v18(&aBlock, v19);

  v20 = aBlock;
  v21 = v66;

  v60 = v4;
  v61 = v2;
  v58 = v8;
  v59 = v5;
  if (v20)
  {
    if (v21)
    {
      v22 = *((swift_isaMask & *v21) + 0x2C0);
      v23 = v21;
      v24 = v20;
      v25 = v23;
      v26 = v24;
      v27 = v22();
      type metadata accessor for WorldAnchor();

      v28 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
      v29 = *((swift_isaMask & *v26) + 0x200);

      v29(v30);
      v31 = objc_allocWithZone(type metadata accessor for ScreenPoint());
      v32 = ScreenPoint.init(_:)();
      (*((swift_isaMask & *v25) + 0x2F0))();
      v2 = v61;
      (*((swift_isaMask & *v25) + 0xD0))();
      v33 = objc_allocWithZone(type metadata accessor for WorldPoint());
      v56 = v28;
      v34 = WorldPoint.init(anchor:type:state:)();

      goto LABEL_13;
    }

    v36 = v20;
  }

  else
  {
    v35 = v21;
  }

  v27 = 0;
  v56 = 0;
  v34 = 0;
  v32 = 0;
LABEL_13:
  v37 = *(**(v2 + 128) + 200);

  v39 = v37(v38);

  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  *(v40 + 24) = v34;
  v41 = *(*v39 + 280);
  v55 = v34;
  v54 = v32;
  v41(sub_100103884, v40);

  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  v42 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
    goto LABEL_21;
  }

  v53 = Contexts.PrivateQueue.init(_:)();
  v43 = swift_allocObject();
  v43[2] = v20;
  v43[3] = v21;
  v43[4] = v56;
  v43[5] = v27;
  v69 = nullsub_1;
  v70 = v43;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100041180;
  v68 = &unk_10046E340;
  v44 = _Block_copy(&aBlock);

  v45 = v21;
  v46 = v20;
  v47 = v42;

  v52 = v27;
  v48 = v62;
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_1001030D4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  v49 = v57;
  v50 = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = v53;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v59 + 8))(v49, v50);
  (*(v63 + 8))(v48, v58);

  LOBYTE(aBlock) = 0;

  Synchronized.wrappedValue.setter();
}

uint64_t sub_1000F564C()
{
  v0 = type metadata accessor for UUID();
  sub_10001D4FC(v0, qword_1004D4EA0);
  sub_10001D4C4(v0, qword_1004D4EA0);
  return UUID.init()();
}

uint64_t sub_1000F5698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000F974(&qword_1004A3FA8);
  swift_allocObject();
  *(v2 + 64) = Synchronized.init(wrappedValue:)();
  sub_10000F974(&qword_1004A97D0);
  swift_getKeyPath();
  *(v2 + 88) = MutableStateValue.__allocating_init(_:_:)();
  KeyPath = swift_getKeyPath();
  v7 = sub_10000F974(&qword_1004A7530);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v7 + 272);
  swift_retain_n();
  *(v3 + 96) = v9(KeyPath, v8);
  sub_10000F974(&qword_1004A97D8);
  swift_getKeyPath();
  *(v3 + 104) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A97E0);
  swift_getKeyPath();
  *(v3 + 112) = MutableStateValue.__allocating_init(_:_:)();
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&unk_1004A72D0) + 272);

  *(v3 + 120) = v11(v10, v8);
  sub_10000F974(&qword_1004A97E8);
  swift_getKeyPath();
  *(v3 + 128) = MutableStateValue.__allocating_init(_:_:)();
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&unk_1004A3F30) + 272);

  *(v3 + 136) = v13(v12, v8);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A1200) + 272);

  *(v3 + 144) = v15(v14, v8);
  v16 = swift_getKeyPath();
  v17 = *(sub_10000F974(&unk_1004A3F40) + 272);

  *(v3 + 152) = v17(v16, v8);
  v18 = sub_10000F974(&qword_1004A3F50);
  v19 = swift_getKeyPath();
  v20 = *(v18 + 272);

  *(v3 + 160) = v20(v19, v8);
  v21 = swift_getKeyPath();
  v22 = *(sub_10000F974(&unk_1004AC5F0) + 272);

  *(v3 + 168) = v22(v21, v8);
  v23 = swift_getKeyPath();
  v24 = *(sub_10000F974(&qword_1004A8950) + 272);

  *(v3 + 176) = v24(v23, v8);
  v25 = sub_10000F974(&qword_1004A93A8);
  v26 = swift_getKeyPath();
  *(v3 + 184) = (*(v25 + 272))(v26, v8);
  v27 = swift_getKeyPath();
  v28 = sub_10000F974(&qword_1004A7DD0);
  *(v3 + 192) = (*(v28 + 272))(v27, v8);
  sub_10000F974(&qword_1004A97F0);
  swift_getKeyPath();
  *(v3 + 200) = MutableStateValue.__allocating_init(_:_:)();
  *(v3 + 208) = 0;
  *(v3 + 216) = 0u;
  v29 = matrix_identity_float4x4.columns[1];
  v30 = matrix_identity_float4x4.columns[2];
  v31 = matrix_identity_float4x4.columns[3];
  *(v3 + 240) = matrix_identity_float4x4.columns[0];
  *(v3 + 256) = v29;
  *(v3 + 272) = v30;
  *(v3 + 288) = v31;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0;
  *(v3 + 322) = 0;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0u;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 1106247680;
  *(v3 + 480) = 0u;
  *(v3 + 496) = 0u;
  *(v3 + 512) = xmmword_1003D9060;
  v32 = [objc_opt_self() standardUserDefaults];
  Defaults.snapReticleToEdges.unsafeMutableAddressor();

  v33 = String._bridgeToObjectiveC()();

  LOBYTE(v8) = [v32 BOOLForKey:v33];

  *(v3 + 528) = v8;
  *(v3 + 536) = 0x8000000000000000;
  *(v3 + 544) = 3;
  sub_10000F974(&qword_1004A3DC0);
  swift_allocObject();
  *(v3 + 552) = PassthroughSubject.init()();
  *(v3 + 560) = 0u;
  *(v3 + 576) = 1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a1;
  return StateObserver.init(configuration:)();
}

void sub_1000F5D04()
{
  v1 = v0;
  sub_10000F974(&qword_1004A3FA8);
  swift_allocObject();
  *(v0 + 64) = Synchronized.init(wrappedValue:)();
  sub_10000F974(&qword_1004A97D0);
  swift_getKeyPath();
  *(v0 + 88) = MutableStateValue.__allocating_init(_:_:)();
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A7530);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 96) = v5(KeyPath, v4);
  sub_10000F974(&qword_1004A97D8);
  swift_getKeyPath();
  *(v1 + 104) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A97E0);
  swift_getKeyPath();
  *(v1 + 112) = MutableStateValue.__allocating_init(_:_:)();
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&unk_1004A72D0) + 272);

  *(v1 + 120) = v7(v6, v4);
  sub_10000F974(&qword_1004A97E8);
  swift_getKeyPath();
  *(v1 + 128) = MutableStateValue.__allocating_init(_:_:)();
  v8 = swift_getKeyPath();
  v9 = *(sub_10000F974(&unk_1004A3F30) + 272);

  *(v1 + 136) = v9(v8, v4);
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&qword_1004A1200) + 272);

  *(v1 + 144) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&unk_1004A3F40) + 272);

  *(v1 + 152) = v13(v12, v4);
  v14 = sub_10000F974(&qword_1004A3F50);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v1 + 160) = v16(v15, v4);
  v17 = swift_getKeyPath();
  v18 = *(sub_10000F974(&unk_1004AC5F0) + 272);

  *(v1 + 168) = v18(v17, v4);
  v19 = swift_getKeyPath();
  v20 = *(sub_10000F974(&qword_1004A8950) + 272);

  *(v1 + 176) = v20(v19, v4);
  v21 = sub_10000F974(&qword_1004A93A8);
  v22 = swift_getKeyPath();
  *(v1 + 184) = (*(v21 + 272))(v22, v4);
  v23 = swift_getKeyPath();
  v24 = sub_10000F974(&qword_1004A7DD0);
  *(v1 + 192) = (*(v24 + 272))(v23, v4);
  sub_10000F974(&qword_1004A97F0);
  swift_getKeyPath();
  *(v1 + 200) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + 208) = 0;
  *(v1 + 216) = 0u;
  v25 = matrix_identity_float4x4.columns[1];
  v26 = matrix_identity_float4x4.columns[2];
  v27 = matrix_identity_float4x4.columns[3];
  *(v1 + 240) = matrix_identity_float4x4.columns[0];
  *(v1 + 256) = v25;
  *(v1 + 272) = v26;
  *(v1 + 288) = v27;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0;
  *(v1 + 322) = 0;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 1106247680;
  *(v1 + 480) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 512) = xmmword_1003D9060;
  v28 = [objc_opt_self() standardUserDefaults];
  Defaults.snapReticleToEdges.unsafeMutableAddressor();

  v29 = String._bridgeToObjectiveC()();

  LOBYTE(v4) = [v28 BOOLForKey:v29];

  *(v1 + 528) = v4;
  *(v1 + 536) = 0x8000000000000000;
  *(v1 + 544) = 3;
  sub_10000F974(&qword_1004A3DC0);
  swift_allocObject();
  *(v1 + 552) = PassthroughSubject.init()();
  *(v1 + 560) = 0u;
  *(v1 + 576) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000F6340(void (*a1)(void), uint64_t a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0xFE) == 2)
  {
    goto LABEL_6;
  }

  v27 = a2;
  if (qword_1004A0180 != -1)
  {
    v21 = v14;
    swift_once();
    v14 = v21;
  }

  v24 = v14;
  v25 = v9;
  v26 = a4;
  v28 = a1;
  v17 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v23 = Contexts.PrivateQueue.init(_:)();
    aBlock[4] = sub_1000FC9F0;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046E138;
    v18 = _Block_copy(aBlock);
    v19 = v17;

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1001030D4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v25 + 8))(v11, v8);
    (*(v13 + 8))(v16, v24);

    a1 = v28;
    LOBYTE(a4) = v26;
LABEL_6:
    *(a3 + 544) = a4;
    LOBYTE(aBlock[0]) = 0;
    a1(aBlock);
    return;
  }

  __break(1u);
}

uint64_t sub_1000F669C(uint64_t a1)
{
  v1 = *(**(a1 + 144) + 144);

  v1(v4, v2);

  memcpy(__dst, v4, sizeof(__dst));
  sub_1000F673C(&off_100465140, __dst);
  return sub_100013C4C(__dst);
}

void sub_1000F673C(uint64_t a1, float32x4_t *a2)
{
  v3 = v2;
  v142 = a2;
  v5 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v5);
  v7 = (&v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v140 = (&v138 - v9);
  __chkstk_darwin(v10);
  v139 = (&v138 - v11);
  v12 = *(**(v2 + 120) + 144);

  v12(v144, v13);

  v14 = v144[3];
  v15 = v145;

  *(v2 + 464) = v14;
  *(v2 + 472) = v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return;
  }

  v17 = (a1 + 32);
  v141 = v5;
  while (1)
  {
    v20 = *v17++;
    v19 = v20;
    if (*(v3 + 544) <= 1u)
    {
      if (v19 != 9)
      {
        return;
      }

      goto LABEL_8;
    }

    if (v19 <= 6)
    {
      if (v19 != 4)
      {
        if (v19 != 6)
        {
          goto LABEL_5;
        }

        if (qword_1004A0188 != -1)
        {
          swift_once();
        }

        LOBYTE(v144[0]) = 1;

        Synchronized.wrappedValue.setter();

        v44 = SnapType.standard.unsafeMutableAddressor();
        sub_1000F7A14(*v44, v142);
        sub_1000FAAC8();
        sub_1000FB540();
        v45 = *(**(v3 + 88) + 144);

        v45(v144, v46);

        if ((v144[0] & 0x8000000000000000) != 0)
        {
          if (v144[0] == 0x8000000000000018)
          {
LABEL_81:
            LOBYTE(v144[0]) = 0;

            Synchronized.wrappedValue.setter();

            goto LABEL_5;
          }
        }

        else
        {
          sub_10001B360(v144[0]);
        }

        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
        {
          goto LABEL_132;
        }

        SIMD2<>.init(_:)();
        *(v3 + 464) = v98;
        *(v3 + 472) = 1106247680;
        v99 = *(**(v3 + 120) + 200);

        v101 = v99(v100);

        v102 = *(*v101 + 280);

        v102(sub_100103904, v3);

        goto LABEL_81;
      }

      v90 = *(**(v3 + 88) + 144);

      v90(v144, v91);

      v92 = v144[0];
      if (v144[0] == 0x8000000000000018)
      {
        goto LABEL_5;
      }

      v93 = *(**(v3 + 88) + 144);

      v93(v144, v94);

      if ((v144[0] >> 62) <= 1)
      {
        sub_10001B360(v144[0]);
LABEL_99:
        if (qword_1004A0180 != -1)
        {
          swift_once();
        }

        if (!qword_1004D4AD0)
        {
          goto LABEL_133;
        }

        v121 = qword_1004D4AD0;
        sub_10001B360(v92);
        v122 = qword_1004ACA08;
        swift_beginAccess();
        v123 = v121 + v122;
        v124 = v139;
        sub_1001033BC(v123, v139, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v125 = *v124;
          v126 = sub_1000E0CE8();

          sub_100072394(1, 0, 0, 1);
          goto LABEL_5;
        }

LABEL_113:
        v18 = v124;
LABEL_4:
        sub_100103424(v18, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
        goto LABEL_5;
      }

      v112 = __ROR8__(v144[0] ^ 0x8000000000000000, 3);
      if (v112 < 2)
      {
        v118 = v144[0];
        sub_100100CBC(v142);
        v119 = *(v3 + 104);
        LOBYTE(v144[0]) = 3;
        v120 = *(*v119 + 392);

        v120(v144);
        sub_10001B360(v118);
      }

      else
      {
        if (v112 - 3 < 2)
        {
          goto LABEL_99;
        }

        sub_1000FFB8C(v142);
        if (qword_1004A0350 != -1)
        {
          swift_once();
        }

        v113 = qword_1004D4F08;
        v114 = OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
        swift_beginAccess();
        *(v113 + v114) = *(v113 + v114) + 1.0;
        v115 = *(v3 + 104);
        LOBYTE(v144[0]) = 3;
        v116 = *(*v115 + 392);

        v116(v144);
      }

      goto LABEL_99;
    }

    if (v19 != 7)
    {
      break;
    }

    sub_1000FCCD8(1, v142);
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_131;
    }

    SIMD2<>.init(_:)();
    *(v3 + 464) = v57;
    *(v3 + 472) = 1106247680;
    v58 = *(**(v3 + 120) + 200);

    v60 = v58(v59);

    v61 = *(*v60 + 280);

    v61(sub_100102FCC, v3);

LABEL_5:
    if (!--v16)
    {
      return;
    }
  }

  if (v19 == 8)
  {
    v62 = *(**(v3 + 88) + 144);

    v62(v144, v63);

    if ((v144[0] >> 62) <= 1)
    {
      sub_10001B360(v144[0]);
LABEL_48:
      v64 = *(**(v3 + 88) + 144);

      v64(v144, v65);

      v66 = v144[0];
      if (!(v144[0] >> 62) || v144[0] >> 62 == 2 && (v144[0] == 0x8000000000000008 || v144[0] == 0x8000000000000010))
      {
        v67 = *(v3 + 72);
        v68 = *(**(v67 + 72) + 144);

        v68(v144, v69);

        v143 = v144[0];

        sub_10000F974(&qword_1004A1648);
        sub_10000F974(&qword_1004A1650);
        swift_dynamicCast();
        v70 = v144[0];
        if (v144[0] >> 62)
        {
          v71 = _CocoaArrayWrapper.endIndex.getter();
          if (v71)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v71 = *((v144[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v71)
          {
LABEL_54:
            v53 = __OFSUB__(v71, 1);
            v72 = v71 - 1;
            if (v53)
            {
              goto LABEL_124;
            }

            v138 = v67;
            if ((v70 & 0xC000000000000001) != 0)
            {
              v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v72 & 0x8000000000000000) != 0)
              {
                goto LABEL_125;
              }

              if (v72 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

              v73 = *(v70 + 8 * v72 + 32);
            }

            v74 = v73;

            v76 = *((swift_isaMask & *v74) + 0x250);
            v77 = v76(v75);
            if ((v77 & 0xC000000000000001) != 0)
            {
              v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_127;
              }

              v78 = *(v77 + 32);
            }

            v79 = v78;

            sub_100102734(v74, v79);

            v81 = v76(v80);
            if ((v81 & 0xC000000000000001) != 0)
            {
              v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                goto LABEL_128;
              }

              v82 = *(v81 + 40);
            }

            v83 = v82;

            sub_100102734(v74, v83);

            v84 = *((swift_isaMask & *v74) + 0xB8);
            v85 = v74;
            v86 = v84(v85);
            v88 = v87;

            sub_100104964(v86, v88);

            v89 = *(v3 + 312);
            *(v3 + 312) = 0;

            sub_100105B08();
            sub_10001B360(v66);

LABEL_108:
            if (qword_1004A0180 != -1)
            {
              swift_once();
            }

            v128 = qword_1004D4AD0;
            if (!qword_1004D4AD0)
            {
              goto LABEL_5;
            }

            v129 = qword_1004ACA08;
            swift_beginAccess();
            v130 = v128 + v129;
            v124 = v140;
            sub_1001033BC(v130, v140, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v131 = *v124;
              v132 = v128;
              v39 = sub_1000E0CE8();

              v40 = 4;
              goto LABEL_17;
            }

            goto LABEL_113;
          }
        }
      }

      sub_10001B360(v66);
      goto LABEL_108;
    }

    if (v144[0] != 0x8000000000000010)
    {
      goto LABEL_48;
    }

    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    Synchronized.wrappedValue.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v144[0];
    v143 = v144[0];
    v105 = sub_10019C35C(7);
    v107 = *(v104 + 16);
    v108 = (v106 & 1) == 0;
    v53 = __OFADD__(v107, v108);
    v109 = v107 + v108;
    if (v53)
    {
      goto LABEL_129;
    }

    v110 = v106;
    if (*(v104 + 24) >= v109)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v133 = v105;
        sub_1000BDC8C();
        v105 = v133;
        v117 = v143;
        if (v110)
        {
          goto LABEL_96;
        }

        goto LABEL_118;
      }
    }

    else
    {
      sub_1000B6BBC(v109, isUniquelyReferenced_nonNull_native);
      v105 = sub_10019C35C(7);
      if ((v110 & 1) != (v111 & 1))
      {
        goto LABEL_134;
      }
    }

    v117 = v143;
    if (v110)
    {
LABEL_96:
      *(v117[7] + v105) = 1;
LABEL_120:
      v143 = v117;
      Synchronized.wrappedValue.setter();

      v136 = *(v3 + 88);
      v144[0] = 0x8000000000000008;
      v137 = *(*v136 + 392);

      v137(v144);

      goto LABEL_48;
    }

LABEL_118:
    v117[(v105 >> 6) + 8] |= 1 << v105;
    *(v117[6] + v105) = 7;
    *(v117[7] + v105) = 1;
    v134 = v117[2];
    v53 = __OFADD__(v134, 1);
    v135 = v134 + 1;
    if (v53)
    {
      goto LABEL_130;
    }

    v117[2] = v135;
    goto LABEL_120;
  }

  if (v19 != 9)
  {
    goto LABEL_5;
  }

LABEL_8:
  v21 = *(**(v3 + 88) + 144);

  v21(v144, v22);

  if ((v144[0] >> 62) <= 1)
  {
    sub_10001B360(v144[0]);
    goto LABEL_10;
  }

  if (v144[0] != 0x8000000000000010)
  {
LABEL_10:
    v23 = *(**(v3 + 88) + 144);

    v23(v144, v24);

    v25 = v144[0];
    if ((v144[0] & 0x8000000000000000) != 0)
    {
      if (v144[0] != 0x8000000000000010)
      {
        goto LABEL_12;
      }

      v41 = *(**(v3 + 88) + 144);

      v41(v144, v42);

      v25 = v144[0];
      if (!(v144[0] >> 62) || v144[0] >> 62 == 2 && (v144[0] == 0x8000000000000008 || v144[0] == 0x8000000000000010))
      {
        v43 = v144[0];
        sub_100102544();
        v25 = v43;
      }
    }

    sub_10001B360(v25);
LABEL_12:
    v26 = *(v3 + 224);
    *(v3 + 224) = 0;

    v27 = *(v3 + 312);
    *(v3 + 312) = 0;

    sub_100104278();
    v28 = *(**(v3 + 128) + 400);

    v29 = v28(v144);
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;

    v29(v144, 0);

    v33 = *(v3 + 88);
    v144[0] = 0x8000000000000000;
    v34 = *(*v33 + 392);

    v34(v144);

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    v35 = qword_1004D4AD0;
    if (!qword_1004D4AD0)
    {
      goto LABEL_5;
    }

    v36 = qword_1004ACA08;
    swift_beginAccess();
    sub_1001033BC(v35 + v36, v7, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v7;
      v38 = v35;
      v39 = sub_1000E0CE8();

      v40 = 3;
LABEL_17:
      sub_100072394(v40, 0, 0, 1);

      goto LABEL_5;
    }

    v18 = v7;
    goto LABEL_4;
  }

  if (qword_1004A0188 != -1)
  {
    swift_once();
  }

  Synchronized.wrappedValue.getter();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v144[0];
  v143 = v144[0];
  v49 = sub_10019C35C(7);
  v51 = *(v48 + 16);
  v52 = (v50 & 1) == 0;
  v53 = __OFADD__(v51, v52);
  v54 = v51 + v52;
  if (!v53)
  {
    v55 = v50;
    if (*(v48 + 24) >= v54)
    {
      if ((v47 & 1) == 0)
      {
        v127 = v49;
        sub_1000BDC8C();
        v49 = v127;
      }
    }

    else
    {
      sub_1000B6BBC(v54, v47);
      v49 = sub_10019C35C(7);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_134;
      }
    }

    v95 = v143;
    if (v55)
    {
      *(*(v143 + 56) + v49) = 1;
    }

    else
    {
      *(v143 + 8 * (v49 >> 6) + 64) |= 1 << v49;
      *(v95[6] + v49) = 7;
      *(v95[7] + v49) = 1;
      v96 = v95[2];
      v53 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v53)
      {
        goto LABEL_123;
      }

      v95[2] = v97;
    }

    v143 = v95;
    Synchronized.wrappedValue.setter();

    goto LABEL_10;
  }

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
LABEL_134:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000F79C8(void **a1, void *a2, void *a3)
{
  v6 = *a1;
  v7 = a2;
  v8 = a3;

  *a1 = a2;
  a1[1] = a3;
}

uint64_t sub_1000F7A14(uint64_t a1, float32x4_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ARCamera.TrackingState.Reason();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v296 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v313.n128_u64[0] = &v296 - v11;
  v12 = type metadata accessor for ARCamera.TrackingState();
  __chkstk_darwin(v12 - 8);
  v14 = &v296 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SessionState();
  __chkstk_darwin(v15);
  v17 = &v296 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = a2;
  v18 = sub_10008D4F0();
  if (!v18)
  {
    return v18 != 0;
  }

  v312 = a1;
  v314 = v18;

  v316 = v3;
  v19 = *(**(v3 + 136) + 144);

  v19(v20);

  sub_1001033BC(&v17[*(v15 + 20)], v14, &type metadata accessor for ARCamera.TrackingState);
  sub_100103424(v17, type metadata accessor for SessionState);
  v21 = (*(v7 + 48))(v14, 2, v6);
  if (!v21)
  {
    v22 = v313.n128_u64[0];
    (*(v7 + 32))(v313.n128_u64[0], v14, v6);
    (*(v7 + 16))(v9, v22, v6);
    v23 = (*(v7 + 88))(v9, v6);
    if (v23 != enum case for ARCamera.TrackingState.Reason.initializing(_:) && v23 != enum case for ARCamera.TrackingState.Reason.relocalizing(_:))
    {
      (*(v7 + 8))(v9, v6);
LABEL_35:
      sub_1000FCA10();
      (*(v7 + 8))(v22, v6);
      goto LABEL_173;
    }

    v24 = v316;
    if (v316[208])
    {
      goto LABEL_35;
    }

    v19 = *(v316 + 9);
    swift_beginAccess();
    v29 = *(v19 + 8);
    if (v29 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_24:
        if (v15 < 1)
        {
          __break(1u);
          goto LABEL_152;
        }

        for (i = 0; i != v15; ++i)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v31 = *(v29 + 8 * i + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = *(v31 + 24);
            ObjectType = swift_getObjectType();
            (*(v32 + 120))(1, ObjectType, v32);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        v24 = v316;
        v22 = v313.n128_u64[0];
      }
    }

    *(v24 + 208) = 1;
    goto LABEL_35;
  }

  if (v21 == 1)
  {
    sub_1000FCA10();
    sub_100103424(v14, &type metadata accessor for ARCamera.TrackingState);
LABEL_173:
    v18 = v314;
    return v18 != 0;
  }

  v9 = v316;

  StateValue.wrappedValue.getter();

  if ((v363.i8[3] & 1) == 0 && v9[208] == 1)
  {
    v24 = *(v9 + 9);
    swift_beginAccess();
    v6 = *(v24 + 64);
    if (v6 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (v22)
      {
LABEL_12:
        if (v22 >= 1)
        {

          for (j = 0; j != v22; ++j)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v26 = *(v6 + 8 * j + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v27 = *(v26 + 24);
              v28 = swift_getObjectType();
              (*(v27 + 120))(0, v28, v27);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          v9 = v316;
          goto LABEL_37;
        }

LABEL_152:
        __break(1u);
        goto LABEL_153;
      }
    }

    else
    {
      v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_12;
      }
    }

LABEL_37:
    v9[208] = 0;
  }

  v15 = v351;
  v22 = v349;
  v362 = 0;
  v34 = *(**(v9 + 16) + 144);

  v34(&v363, v35);

  v36 = v363.i64[1];
  v37 = v364;

  v307[0] = objc_opt_self();
  if ([v307[0] jasperAvailable])
  {
    sub_10004B268(v351);
    v358 = *&v351[96];
    v359 = *&v351[112];
    LOBYTE(v360) = v351[128];
    v354 = *&v351[32];
    v355 = *&v351[48];
    v356 = *&v351[64];
    v357 = *&v351[80];
    v352 = *v351;
    v353 = *&v351[16];
    *(&v360 + 1) = 0;
    v361 = _swiftEmptyArrayStorage;
    nullsub_1(&v352);
    v369 = v358;
    v370 = v359;
    v371 = v360;
    v372 = v361;
    v365 = v354;
    v366 = v355;
    v367 = v356;
    v368 = v357;
    v363 = v352;
    v364 = v353;
  }

  else
  {
    sub_100103484(&v363);
  }

  v358 = v369;
  v359 = v370;
  v360 = v371;
  v361 = v372;
  v354 = v365;
  v355 = v366;
  v356 = v367;
  v357 = v368;
  v352 = v363;
  v353 = v364;
  v38 = *(**(v9 + 19) + 144);

  v38(v351, v39);

  v415 = *&v351[64];
  v416 = *&v351[80];
  v417 = *&v351[96];
  v418 = v351[112];
  v411 = *v351;
  v412 = *&v351[16];
  v413 = *&v351[32];
  v414 = *&v351[48];
  v40 = sub_100077EAC();
  v308 = v37.n128_u64[1];
  v302.i32[0] = v40;
  if (v40)
  {
    goto LABEL_70;
  }

  v41 = v307[0];
  if ([v307[0] jasperAvailable])
  {
    v42 = *(**(v9 + 25) + 144);

    v42(v351, v43);

    v401 = *v351;
    v402 = *&v351[16];
    v403 = *&v351[32];
    v404 = *&v351[48];
    v44 = v351[128];
    v394[0] = *&v351[129];
    *(v394 + 15) = *&v351[144];
    *&v349[32] = *&v351[32];
    *&v349[48] = *&v351[48];
    *v349 = *v351;
    *&v349[16] = *&v351[16];
    v309 = *&v351[64];
    v310 = *&v351[80];
    *&v349[64] = *&v351[64];
    *&v349[80] = *&v351[80];
    v311 = *&v351[96];
    *&v349[96] = *&v351[96];
    *&v349[112] = *&v351[112];
    v313 = *&v351[112];
    v349[128] = v351[128];
    if (sub_10001376C(v349) == 1)
    {
      *v351 = v401;
      *&v351[16] = v402;
      *&v351[32] = v403;
      *&v351[48] = v404;
      *&v351[64] = v309;
      *&v351[80] = v310;
      *&v351[96] = v311;
      *&v351[112] = v313;
      v351[128] = v44;
      *&v351[129] = v394[0];
      *&v351[144] = *(v394 + 15);
      sub_100013BF8(v351);
    }

    else
    {
      *v351 = v401;
      *&v351[16] = v402;
      *&v351[32] = v403;
      *&v351[48] = v404;
      *&v351[64] = v309;
      *&v351[80] = v310;
      *&v351[96] = v311;
      *&v351[112] = v313;
      v351[128] = v44;
      *&v351[129] = v394[0];
      *&v351[144] = *(v394 + 15);
      sub_100013BF8(v351);
      if ((v44 & 1) == 0)
      {
        v45 = *(**(v9 + 25) + 144);

        v45(v336, v46);

        v47 = *v336;
        v382[0] = *&v336[104];
        v382[1] = *&v336[120];
        v383 = *&v336[136];
        v378 = *&v336[40];
        v379 = *&v336[56];
        v380 = *&v336[72];
        v381 = *&v336[88];
        v376 = *&v336[8];
        v377 = *&v336[24];
        *(&v347[5] + 8) = *&v336[88];
        *(&v347[1] + 8) = *&v336[24];
        *(&v347[4] + 8) = *&v336[72];
        *(&v347[6] + 8) = *&v336[104];
        *(&v347[7] + 1) = *(v382 + 9);
        *(v347 + 8) = *&v336[8];
        *(&v347[2] + 8) = *&v336[40];
        *(&v347[3] + 8) = *&v336[56];
        *&v347[0] = *v336;
        if (sub_10001376C(v347) == 1)
        {
          *&v336[88] = v381;
          *&v336[104] = v382[0];
          *&v336[120] = v382[1];
          *&v336[136] = v383;
          *&v336[24] = v377;
          *&v336[40] = v378;
          *&v336[56] = v379;
          *&v336[72] = v380;
          *v336 = v47;
          *&v336[8] = v376;
          sub_100013BF8(v336);
        }

        else
        {
          *&v336[88] = v381;
          *&v336[104] = v382[0];
          *&v336[120] = v382[1];
          *&v336[136] = v383;
          *&v336[24] = v377;
          *&v336[40] = v378;
          *&v336[56] = v379;
          *&v336[72] = v380;
          *v336 = v47;
          *&v336[8] = v376;
          v48 = v47;
          sub_100013BF8(v336);
          type metadata accessor for MeasureCamera();
          simd_float4x4.position.getter();
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          v50 = vsub_f32(*v49.f32, *(v9 + 464));
          if (vaddv_f32(vmul_f32(v50, v50)) < 900.0)
          {
            LOBYTE(v400[0]) = 1;
            v406 = 0u;
            v407 = 0u;
            v408 = 0u;
            v409 = 0u;
            v410 = 1;
            v306 = v49;
            type metadata accessor for WorldAnchor();
            swift_allocObject();
            v51 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
            sub_1000FE3C4(*v306.i64, v51, 8, 3);
            sub_1000FE180(v9, &v373);
            v305 = v374;
            v306 = v373;
            v52 = v375;

            v323 = v358;
            v324 = v359;
            v325 = v360;
            v326 = v361;
            v319 = v354;
            v320 = v355;
            v321 = v356;
            v322 = v357;
            v317 = v352;
            v318 = v353;
            if (sub_1001034A4(&v317) == 1)
            {

              v53 = 1;
              goto LABEL_71;
            }

            LOBYTE(v396) = 0;
            LOBYTE(v399[0]) = v52;
            v327.i64[0] = v48;
            v328 = v306;
            v329 = v305;
            v330.i8[0] = v52;
            v331 = v309;
            v332 = v310;
            v333 = v311;
            v334 = v313;
            v335 = 0;
            nullsub_1(&v327);
            v343 = v358;
            v344 = v359;
            LOBYTE(v345) = v360;
            v339 = v354;
            v340 = v355;
            v341 = v356;
            v342 = v357;
            v337 = v352;
            v338 = v353;
            sub_100018F04(&v337, &qword_1004A1208);
            v358 = v333;
            v359 = v334;
            LOBYTE(v360) = v335;
            v354 = v329;
            v355 = v330;
            v356 = v331;
            v357 = v332;
            v165 = v327;
            v164 = v328;
            goto LABEL_145;
          }
        }
      }
    }

    v41 = v307[0];
  }

  if (![v41 jasperAvailable])
  {
LABEL_70:
    v53 = 0;
    goto LABEL_71;
  }

  v54 = *(**(v9 + 25) + 144);

  v54(v351, v55);

  v56 = *v351;
  v382[0] = *&v351[104];
  v382[1] = *&v351[120];
  v383 = *&v351[136];
  v378 = *&v351[40];
  v379 = *&v351[56];
  v380 = *&v351[72];
  v381 = *&v351[88];
  v376 = *&v351[8];
  v377 = *&v351[24];
  *&v349[88] = *&v351[88];
  *&v349[24] = *&v351[24];
  *&v349[72] = *&v351[72];
  *&v349[104] = *&v351[104];
  *&v349[113] = *(v382 + 9);
  *&v349[8] = *&v351[8];
  *&v349[40] = *&v351[40];
  *&v349[56] = *&v351[56];
  *v349 = *v351;
  if (sub_10001376C(v349) == 1)
  {
    *&v351[88] = v381;
    *&v351[104] = v382[0];
    *&v351[120] = v382[1];
    *&v351[136] = v383;
    *&v351[24] = v377;
    *&v351[40] = v378;
    *&v351[56] = v379;
    *&v351[72] = v380;
    *v351 = v56;
    *&v351[8] = v376;
    sub_100013BF8(v351);
    goto LABEL_70;
  }

  *&v336[88] = v381;
  *&v336[104] = v382[0];
  *&v336[120] = v382[1];
  *&v336[136] = v383;
  *&v336[24] = v377;
  *&v336[40] = v378;
  *&v336[56] = v379;
  *&v336[72] = v380;
  *v336 = v56;
  *&v336[8] = v376;
  v297 = v56;
  sub_100013BF8(v336);
  v57 = 1;
  v327.i8[0] = 1;
  v406 = 0u;
  v407 = 0u;
  v408 = 0u;
  v409 = 0u;
  v301 = 0u;
  v410 = 1;
  v58 = *(**(v9 + 25) + 144);

  v58(&v317, v59);

  *&v351[96] = v323;
  *&v351[112] = v324;
  *&v351[128] = v325;
  *&v351[144] = v326;
  *&v351[32] = v319;
  *&v351[48] = v320;
  *&v351[64] = v321;
  *&v351[80] = v322;
  *v351 = v317;
  *&v351[16] = v318;
  v60 = v326;

  sub_100013BF8(v351);
  v61 = v60[1].n128_i64[0];
  if (!v61)
  {

    goto LABEL_70;
  }

  type metadata accessor for MeasureCamera();
  v62 = 0.0;
  v63 = v315[11];
  v305 = v315[12];
  v306 = v63;
  v64 = v60 + 5;
  v65 = 900.0;
  v66 = 1;
  v299 = 0u;
  v300 = 0u;
  v67 = v315[13];
  v303 = v315[14];
  v304 = v67;
  v298 = 0u;
  do
  {
    v68 = v64[-2];
    v69 = v64[-1];
    v70 = *v64;
    v313 = v64[-3];
    v310 = v69;
    v311 = v68;
    v309 = v70;
    simd_float4x4.position.getter();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v72 = vsub_f32(v71, *(v316 + 464));
    v73 = vaddv_f32(vmul_f32(v72, v72));
    if (v74 < 1.0 && v73 < v65)
    {
      v57 = 0;
      v66 = 0;
      v62 = *&v71;
      v300 = v311;
      v301 = v313;
      v298 = v309;
      v299 = v310;
      v65 = v73;
    }

    v64 += 4;
    --v61;
  }

  while (v61);

  if (v57)
  {

    v53 = 0;
    v9 = v316;
    goto LABEL_71;
  }

  v9 = v316;
  v76 = v297;
  if (v66)
  {

    goto LABEL_70;
  }

  type metadata accessor for WorldAnchor();
  swift_allocObject();
  v160 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
  sub_1000FE3C4(v62, v160, 8, 3);
  sub_1000FE180(v9, &v373);
  v311 = v374;
  v313 = v373;
  v161 = v375;

  v323 = v358;
  v324 = v359;
  v325 = v360;
  v326 = v361;
  v319 = v354;
  v320 = v355;
  v321 = v356;
  v322 = v357;
  v317 = v352;
  v318 = v353;
  if (sub_1001034A4(&v317) == 1)
  {

    v53 = 1;
    goto LABEL_71;
  }

  LOBYTE(v394[0]) = 0;
  LOBYTE(v401) = v161;
  v337.i64[0] = v76;
  v338 = v313;
  v339 = v311;
  v340.i8[0] = v161;
  v341 = v301;
  v342 = v300;
  v343 = v299;
  v344 = v298;
  LOBYTE(v345) = 0;
  nullsub_1(&v337);
  v347[6] = v358;
  v347[7] = v359;
  LOBYTE(v347[8]) = v360;
  v347[2] = v354;
  v347[3] = v355;
  v347[4] = v356;
  v347[5] = v357;
  v347[0] = v352;
  v347[1] = v353;
  sub_100018F04(v347, &qword_1004A1208);
  v358 = v343;
  v359 = v344;
  LOBYTE(v360) = v345;
  v354 = v339;
  v355 = v340;
  v356 = v341;
  v357 = v342;
  v165 = v337;
  v164 = v338;
LABEL_145:
  v53 = 1;
  v352 = v165;
  v353 = v164;
LABEL_71:
  v77 = *(**(v9 + 22) + 144);

  v77(v351, v78);

  v79 = *&v351[8];

  v80 = *(**(v9 + 22) + 144);

  v80(v351, v81);

  v82 = *v351;

  *v351 = v79;
  sub_100103A50(v82);
  v83 = *v351;
  v84 = *(**(v9 + 22) + 144);

  v84(v351, v85);

  v86 = *&v351[16];

  *v351 = v83;
  sub_100103A50(v86);
  v87 = *v351;
  if (v53)
  {
    v9 = 0;
    v6 = 0;
    v313.n128_u64[0] = 0;
    LOBYTE(v88) = 1;
    v89 = v308;
    goto LABEL_163;
  }

  v89 = v308;
  if (v302.i8[0])
  {
    goto LABEL_103;
  }

  if (![v307[0] jasperAvailable])
  {
LABEL_86:
    if ((*SnapType.userPoint.unsafeMutableAddressor() & ~v312) == 0)
    {
      v101 = *(v9 + 464);
      v102 = *(v9 + 118);
      swift_beginAccess();

      sub_10008FA10(v103, v101, v102);
      v6 = v104;
      v106 = v105;

      if (v6)
      {
        v311.i64[0] = v87;
        if (v89 == v6)
        {
          goto LABEL_159;
        }

        v313.n128_u64[0] = v106;
        v107 = *(**(v9 + 11) + 144);

        v107(v351, v108);

        if ((*v351 >> 62) > 1)
        {
          if (*v351 == 0x8000000000000010)
          {
            sub_100104098(v6);
          }
        }

        else
        {
          sub_10001B360(*v351);
        }

        sub_100104508(v6);
        v109 = *(v9 + 39);
        if (!v109)
        {
          goto LABEL_159;
        }

        v19 = &swift_isaMask;
        v7 = *((swift_isaMask & *v109) + 0x238);
        v9 = v109;
        v110 = (v7)();
        v24 = v110;
        if (!(v110 >> 62))
        {
          if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          goto LABEL_154;
        }

LABEL_153:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_94:
          if ((v24 & 0xC000000000000001) != 0)
          {
            v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_276;
            }

            v111 = *(v24 + 32);
          }

          v112 = v111;

          v114 = (*((*v19 & *v112) + 0x250))(v113);

          if (v114 >> 62)
          {
            v166 = _CocoaArrayWrapper.endIndex.getter();
            v115 = v313.n128_u64[0];
            if (v166)
            {
LABEL_99:
              if ((v114 & 0xC000000000000001) == 0)
              {
                if (!*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_278;
                }

                v116 = *(v114 + 32);
                goto LABEL_102;
              }

LABEL_276:
              v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_102:
              v117 = v116;

              sub_100104508(v117);

LABEL_158:
              v9 = v316;
              goto LABEL_159;
            }
          }

          else
          {
            v115 = v313.n128_u64[0];
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }
          }

          goto LABEL_158;
        }

LABEL_154:

        v9 = v316;
LABEL_159:
        v167 = objc_allocWithZone(type metadata accessor for ScreenPoint());
        v168 = ScreenPoint.init(_:)();
        v169 = *(**(v9 + 16) + 400);
        v9 = v168;

        v170 = v6;
        v171 = v169(v351);
        v173 = *(v172 + 16);
        v174 = *(v172 + 24);
        *(v172 + 16) = v168;
        *(v172 + 24) = v6;

        v171(v351, 0);

        v89 = v308;
        if (v308)
        {
          v175 = *((swift_isaMask & *v308) + 0xD8);
          v176 = v308;
          v175(2);
        }

        v313.n128_u64[0] = 0;
        LOBYTE(v88) = 1;
        goto LABEL_162;
      }
    }

LABEL_103:
    if (v89)
    {
      v118 = *((swift_isaMask & *v89) + 0x2F0);
      v119 = v89;
      v118();

      if (!WorldPointType.isSnap()())
      {
        v120 = *((swift_isaMask & *v119) + 0xD8);
        v121 = v119;
        v120(0);

        v122 = *(v9 + 39);
        if (v122)
        {
          v123 = v122;
          sub_100104098(v123);

          v124 = *(v9 + 39);
          if (!v124)
          {
            __break(1u);
LABEL_280:
            __break(1u);
            goto LABEL_281;
          }

          v125 = v124;
          sub_100104508(v125);
        }

        v126 = *(**(v9 + 16) + 400);

        v127 = v126(v351);
        v129 = *(v128 + 16);
        v130 = *(v128 + 24);
        *(v128 + 16) = 0;
        *(v128 + 24) = 0;

        v127(v351, 0);
      }
    }

    if (qword_1004A03F8 != -1)
    {
      swift_once();
    }

    v22 = v349;
    if (byte_1004D4FC8 == 1)
    {
      v131 = *(**(v9 + 24) + 144);

      v131(v336, v132);

      *&v351[96] = *&v336[96];
      *&v351[112] = *&v336[112];
      *&v351[128] = *&v336[128];
      v351[144] = v336[144];
      *&v351[32] = *&v336[32];
      *&v351[48] = *&v336[48];
      *&v351[64] = *&v336[64];
      *&v351[80] = *&v336[80];
      *v351 = *v336;
      *&v351[16] = *&v336[16];
      sub_1000D1340(v351);
      if (v351[1] == 1)
      {
        v133 = *(**(v9 + 24) + 144);

        v133(v349, v134);

        *&v336[96] = *&v349[96];
        *&v336[112] = *&v349[112];
        *&v336[128] = *&v349[128];
        v336[144] = v350;
        *&v336[32] = *&v349[32];
        *&v336[48] = *&v349[48];
        *&v336[64] = *&v349[64];
        *&v336[80] = *&v349[80];
        *v336 = *v349;
        *&v336[16] = *&v349[16];
        v135 = *&v349[48];
        v136 = *&v349[48];
        sub_1000D1340(v336);
        if (v135)
        {
          v310.i64[0] = v136;
          v313.n128_u64[0] = v135;
          v311.i64[0] = v87;
          v137 = *(**(v9 + 24) + 144);

          v137(v347, v138);

          *&v349[96] = v347[6];
          *&v349[112] = v347[7];
          *&v349[128] = v347[8];
          v350 = v348;
          *&v349[32] = v347[2];
          *&v349[48] = v347[3];
          *&v349[64] = v347[4];
          *&v349[80] = v347[5];
          *v349 = v347[0];
          *&v349[16] = v347[1];
          sub_1000D1340(v349);
          if ((v349[128] & 1) == 0)
          {
            v309 = *&v349[64];
            v305 = *&v349[96];
            v306 = *&v349[80];
            v304 = *&v349[112];
            v139 = *(**(v9 + 24) + 144);

            v139(&v337, v140);

            v347[6] = v343;
            v347[7] = v344;
            v347[8] = v345;
            v348 = v346;
            v347[2] = v339;
            v347[3] = v340;
            v347[4] = v341;
            v347[5] = v342;
            v347[0] = v337;
            v347[1] = v338;
            sub_1000D1340(v347);
            if (v348 != 1)
            {
              v162 = *(&v347[8] + 1);
              LOBYTE(v88) = 1;
              v327.i8[0] = 1;
              v337 = 0u;
              v338 = 0u;
              v339 = 0u;
              v340 = 0u;
              v341.n128_u8[0] = 1;
              type metadata accessor for WorldAnchor();
              swift_allocObject();
              v163 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
              sub_1000FE3C4(v162, v163, 7, 3);

              v362 = v313.n128_u64[0];
              [v307[0] jasperAvailable];
              v9 = 0;
              v6 = 0;
              goto LABEL_162;
            }
          }

          v87 = v311.i64[0];
        }
      }
    }

    v141 = v307[0];
    if ([v307[0] jasperAvailable])
    {
      if (v302.i8[0])
      {
LABEL_133:
        LOBYTE(v88) = 0;
        goto LABEL_134;
      }

      v142 = SnapType.guideLine.unsafeMutableAddressor();
      v143 = v312;
      LODWORD(v88) = (*v142 & ~v312) == 0;
    }

    else
    {
      LODWORD(v88) = 0;
      if (v302.i8[0])
      {
        goto LABEL_134;
      }

      v143 = v312;
    }

    if ((*SnapType.userLine.unsafeMutableAddressor() & ~v143) == 0)
    {
      v144 = *(v9 + 464);
      v145 = *(v9 + 118);
      v146 = *(v9 + 9);
      swift_beginAccess();
      v147 = *(v146 + 88);
      v148 = *(v146 + 96);

      sub_10008FD20(v147, v148, &v327, v144, v145);

      v141 = v307[0];

      v149 = v327.i64[0];
      if (v327.i64[0])
      {
        v150 = *v332.i64;
        v313 = v331;
        v310 = v329;
        v311 = v330;
        v309 = v328;
        LOBYTE(v88) = 1;
        v351[0] = 1;
        v337 = 0u;
        v338 = 0u;
        v339 = 0u;
        v340 = 0u;
        v341.n128_u8[0] = 1;
        type metadata accessor for WorldAnchor();
        swift_allocObject();
        v151 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
        sub_1000FE3C4(v150, v151, 0, 3);

        v9 = 0;
        v6 = 0;
        v313.n128_u64[0] = v149;
        v362 = v149;
        goto LABEL_163;
      }
    }

    if (v88)
    {
      if ([v141 jasperAvailable])
      {
        sub_1000FEB6C(&v337);
        v6 = v337.i64[0];
        if (!v337.i64[0])
        {
          LOBYTE(v88) = 0;
          v9 = 0;
          v313.n128_u64[0] = 0;
          goto LABEL_163;
        }

        v152 = v9;
        v311.i64[0] = v87;
        v153 = *v342.i64;
        v313 = v341;
        v309 = v339;
        v310 = v340;
        *v307 = v338;
        LOBYTE(v347[0]) = 1;
        v401 = 0u;
        v402 = 0u;
        v403 = 0u;
        v404 = 0u;
        v405 = 1;
        type metadata accessor for WorldAnchor();
        swift_allocObject();
        v154 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
        v155 = *((swift_isaMask & *v6) + 0x258);
        v156 = v6;
        v157 = v155();
        sub_100018F04(&v337, &qword_1004A97B8);
        if (v157 == 3)
        {
          v158 = 6;
        }

        else
        {
          v158 = 5;
        }

        sub_1000FE3C4(v153, v154, v158, 3);
        sub_1000FE180(v152, &v385);
        v310 = v386;
        v313 = v385;
        v159 = v387;

        *&v351[96] = v358;
        *&v351[112] = v359;
        *&v351[128] = v360;
        *&v351[144] = v361;
        *&v351[32] = v354;
        *&v351[48] = v355;
        *&v351[64] = v356;
        *&v351[80] = v357;
        *v351 = v352;
        *&v351[16] = v353;
        if (sub_1001034A4(v351) == 1)
        {
          sub_100018F04(&v337, &qword_1004A97B8);
          v9 = 0;
          v6 = 0;
          v313.n128_u64[0] = 0;
          LOBYTE(v88) = 1;
        }

        else
        {
          LOBYTE(v394[0]) = v159;
          *v349 = v156;
          *&v349[16] = v313;
          *&v349[32] = v310;
          v349[48] = v159;
          memset(&v349[64], 0, 64);
          v349[128] = 1;
          nullsub_1(v349);
          *&v336[96] = v358;
          *&v336[112] = v359;
          v336[128] = v360;
          *&v336[32] = v354;
          *&v336[48] = v355;
          *&v336[64] = v356;
          *&v336[80] = v357;
          *v336 = v352;
          *&v336[16] = v353;
          sub_100018F04(v336, &qword_1004A1208);
          v9 = 0;
          v6 = 0;
          v313.n128_u64[0] = 0;
          v358 = *&v349[96];
          v359 = *&v349[112];
          LOBYTE(v360) = v349[128];
          v354 = *&v349[32];
          v355 = *&v349[48];
          v356 = *&v349[64];
          v357 = *&v349[80];
          LOBYTE(v88) = 1;
          v352 = *v349;
          v353 = *&v349[16];
        }

        v89 = v308;
LABEL_162:
        v87 = v311.i64[0];
        goto LABEL_163;
      }

      goto LABEL_133;
    }

LABEL_134:
    v9 = 0;
    v6 = 0;
    v313.n128_u64[0] = 0;
    goto LABEL_163;
  }

  v90 = *(**(v9 + 25) + 144);

  v90(v351, v91);

  v92 = *v351;
  *&v349[96] = *&v351[104];
  *&v349[112] = *&v351[120];
  *&v349[128] = *&v351[136];
  *&v349[32] = *&v351[40];
  *&v349[48] = *&v351[56];
  *&v349[64] = *&v351[72];
  *&v349[80] = *&v351[88];
  *v349 = *&v351[8];
  *&v349[16] = *&v351[24];
  *(&v347[5] + 8) = *&v351[88];
  *(&v347[1] + 8) = *&v351[24];
  *(&v347[4] + 8) = *&v351[72];
  *(&v347[6] + 8) = *&v351[104];
  *(&v347[7] + 1) = *&v349[105];
  *(v347 + 8) = *&v351[8];
  *(&v347[2] + 8) = *&v351[40];
  *(&v347[3] + 8) = *&v351[56];
  *&v347[0] = *v351;
  if (sub_10001376C(v347) == 1)
  {
    *&v351[88] = *&v349[80];
    *&v351[104] = *&v349[96];
    *&v351[120] = *&v349[112];
    *&v351[136] = *&v349[128];
    *&v351[24] = *&v349[16];
    *&v351[40] = *&v349[32];
    *&v351[56] = *&v349[48];
    *&v351[72] = *&v349[64];
    *v351 = v92;
    *&v351[8] = *v349;
    sub_100013BF8(v351);
    goto LABEL_86;
  }

  *&v351[88] = *&v349[80];
  *&v351[104] = *&v349[96];
  *&v351[120] = *&v349[112];
  *&v351[136] = *&v349[128];
  *&v351[24] = *&v349[16];
  *&v351[40] = *&v349[32];
  *&v351[56] = *&v349[48];
  *&v351[72] = *&v349[64];
  *v351 = v92;
  *&v351[8] = *v349;
  v88 = v92;
  v93 = sub_100013BF8(v351);
  *v336 = v88;
  __chkstk_darwin(v93);
  *&v295 = v336;
  if ((sub_1000F4B48(sub_1001034BC, (&v296 - 4), v87) & 1) == 0 || (sub_1000FE730(v88, &v376), v323 = v382[0], v324 = v382[1], v325 = v383, LOBYTE(v326) = v384, v319 = v378, v320 = v379, v321 = v380, v322 = v381, v317 = v376, v318 = v377, sub_100103514(&v317) == 1) || (v94 = vsub_f32(*(v9 + 464), *v317.f32), vaddv_f32(vmul_f32(v94, v94)) >= 900.0))
  {

    goto LABEL_86;
  }

  v295 = v325;
  *v307 = v317;
  v313 = sub_100103530(*v317.i64, v318);
  v310 = v96;
  v311 = v95;
  v309 = v97;
  LOBYTE(v394[0]) = 1;
  v401 = 0u;
  v402 = 0u;
  v403 = 0u;
  v404 = 0u;
  v405 = 1;
  type metadata accessor for WorldAnchor();
  swift_allocObject();
  v98 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
  if ((*((swift_isaMask & *v88) + 0x258))() == 3)
  {
    v99 = 6;
  }

  else
  {
    v99 = 5;
  }

  sub_1000FE3C4(*v307, v98, v99, 3);
  sub_1000FE180(v9, &v385);
  v311 = v386;
  v313 = v385;
  v100 = v387;

  *&v336[96] = v358;
  *&v336[112] = v359;
  *&v336[128] = v360;
  *&v336[144] = v361;
  *&v336[32] = v354;
  *&v336[48] = v355;
  *&v336[64] = v356;
  *&v336[80] = v357;
  *v336 = v352;
  *&v336[16] = v353;
  if (sub_1001034A4(v336) == 1)
  {

    v9 = 0;
    v6 = 0;
    v313.n128_u64[0] = 0;
    LOBYTE(v88) = 1;
  }

  else
  {
    LOBYTE(v400[0]) = v100;
    v327.i64[0] = v88;
    v328 = v313;
    v329 = v311;
    v330.i8[0] = v100;
    v331 = 0u;
    v332 = 0u;
    v333 = 0u;
    v334 = 0u;
    v335 = 1;
    nullsub_1(&v327);
    v343 = v358;
    v344 = v359;
    LOBYTE(v345) = v360;
    v339 = v354;
    v340 = v355;
    v341 = v356;
    v342 = v357;
    v337 = v352;
    v338 = v353;
    sub_100018F04(&v337, &qword_1004A1208);
    v9 = 0;
    v6 = 0;
    v313.n128_u64[0] = 0;
    LOBYTE(v360) = v335;
    v358 = v333;
    v359 = v334;
    v354 = v329;
    v355 = v330;
    v356 = v331;
    v357 = v332;
    LOBYTE(v88) = 1;
    v352 = v327;
    v353 = v328;
  }

LABEL_163:
  v177 = v316;

  StateValue.wrappedValue.getter();

  if ((v351[3] & 1) != 0 || *(v177 + 544) != 3)
  {
    goto LABEL_168;
  }

  v178 = [objc_opt_self() processInfo];
  v179 = [v178 thermalState];

  if (v179 < 3)
  {
    v311.i64[0] = v87;
    v180 = *(**(v316 + 11) + 144);

    v180(v351, v181);

    if ((*v351 & 0x8000000000000000) != 0)
    {
      if (*v351 == 0x8000000000000008)
      {
LABEL_192:
        v214 = *(**(v316 + 16) + 144);

        v214(v351, v215);

        v216 = *&v351[16];
        if (v216)
        {
          (*((swift_isaMask & *v216) + 0x200))();

          CGPoint.init(_:)();
          v309.i64[0] = v217;
          v307[0] = v218;
        }

        else
        {
          v309.i64[0] = 0;
          v307[0] = 0;
        }

        v219 = v316;
        CGPoint.init(_:)();
        v220 = *(v219 + 80);

        v310.i64[0] = v220;
        sub_10004A05C(v347);

        v221 = v347[7];
        *(v22 + 96) = v347[6];
        *(v22 + 112) = v221;
        v349[128] = v347[8];
        v222 = v347[3];
        *(v22 + 32) = v347[2];
        *(v22 + 48) = v222;
        v223 = v347[5];
        *(v22 + 64) = v347[4];
        *(v22 + 80) = v223;
        v224 = v347[1];
        *v22 = v347[0];
        *(v22 + 16) = v224;
        if (sub_10001376C(v349) == 1)
        {

          v182 = v312;
          v89 = v308;
          if (v88)
          {
            goto LABEL_172;
          }

          goto LABEL_169;
        }

        v225 = *(v22 + 112);
        *&v336[96] = *(v22 + 96);
        *&v336[112] = v225;
        v336[128] = v349[128];
        v226 = *(v22 + 48);
        *&v336[32] = *(v22 + 32);
        *&v336[48] = v226;
        v227 = *(v22 + 80);
        *&v336[64] = *(v22 + 64);
        *&v336[80] = v227;
        v228 = *(v22 + 16);
        *v336 = *v22;
        *&v336[16] = v228;
        v306.i64[0] = *(v219 + 512);
        v229 = SnapType.worldCorner.unsafeMutableAddressor();
        v182 = v312;
        if ((*v229 & ~v312) != 0)
        {
          v305.i64[0] = 0;
          v231 = 0;
          v233 = 0;
          v235 = 2;
        }

        else
        {
          v230 = *(v219 + 496);
          v400[0] = *(v219 + 480);
          v400[1] = v230;
          v400[2] = *(v219 + 512);
          v231 = sub_100078828(v309.i64[0], v307[0], v216 == 0, v400);
          v233 = v232;
          v235 = v234;
          v305.i64[0] = 3;
        }

        if ((*SnapType.worldEdge.unsafeMutableAddressor() & ~v182) != 0)
        {
          v252 = v233;
        }

        else
        {
          v252 = v233;
          if (v235 == 2)
          {
            v253 = *(v316 + 31);
            v399[0] = *(v316 + 30);
            v399[1] = v253;
            v399[2] = *(v316 + 32);
            v231 = sub_100078C58(v309.i64[0], v307[0], v216 == 0, v399);
            v252 = v254;
            v235 = v255;
            v305.i64[0] = 4;
          }
        }

        v256 = v316;
        v257 = *(v316 + 31);
        v396 = *(v316 + 30);
        v397 = v257;
        v398 = *(v316 + 32);
        v309.i64[0] = v231;
        v304.i64[0] = v252;
        LODWORD(v307[0]) = v235;
        sub_1000790B8(&v388);
        v258 = v389;
        v259 = v390;
        v260 = v391;
        v261 = v392;
        v262 = v393;
        *(v256 + 60) = v388;
        *(v256 + 61) = v258;
        v256[62] = v259;
        v256[63] = v260;
        *(v256 + 64) = v261;
        *(v256 + 65) = v262;
        if (v302.i8[0])
        {

          if ((v88 & 1) == 0)
          {
            goto LABEL_219;
          }

          goto LABEL_214;
        }

        if (v88)
        {

LABEL_214:
          v311.i32[0] = 1;
          v263 = v316;
LABEL_215:
          LOBYTE(v7) = v307[0];
          v264 = v309.i64[0];
          v265 = v304.i64[0];
          goto LABEL_220;
        }

        if (v316[528] != 1 || v261 == 2)
        {

LABEL_219:
          v264 = 0;
          v265 = 0;
          v311.i32[0] = 0;
          v263 = v316;
          *(v316 + 30) = 0u;
          *(v263 + 496) = 0u;
          *(v263 + 512) = xmmword_1003D9060;
          LOBYTE(v7) = 2;
LABEL_220:
          v307[0] = (v306.i8[0] & 0xFE);
          v266 = *(v263 + 216);

          v309.i64[0] = v264;
          sub_10004AB68(v264, v265, v7, v315, v266);

          if (v7 == 2)
          {
            if (v307[0] == 2)
            {
              sub_100018F04(v347, &qword_1004A33F0);
              goto LABEL_260;
            }

            if (qword_1004A02B0 != -1)
            {
              swift_once();
            }

            strcpy(v351, "Unsnapped ");
            v351[11] = 0;
            *&v351[12] = -369098752;
            if (v306.i8[0])
            {
              v274 = 0x72656E726F63;
            }

            else
            {
              v274 = 1701274725;
            }

            if (v306.i8[0])
            {
              v275 = 0xE600000000000000;
            }

            else
            {
              v275 = 0xE400000000000000;
            }

            v276 = v275;
            String.append(_:)(*&v274);

            v272 = *v351;
            v273 = *&v351[8];
            goto LABEL_241;
          }

          v22 = 1701274725;
          if (v307[0] == 2)
          {
LABEL_224:
            v115 = 0x72656E726F63;
            if (qword_1004A02B0 == -1)
            {
LABEL_225:
              v310.i64[0] = qword_1004D4E28;
              *v351 = 0;
              *&v351[8] = 0xE000000000000000;
              _StringGuts.grow(_:)(25);

              strcpy(v351, "Snapped to ");
              *&v351[12] = -352321536;
              if (v7)
              {
                v267 = v115;
              }

              else
              {
                v267 = v22;
              }

              if (v7)
              {
                v268 = 0xE600000000000000;
              }

              else
              {
                v268 = 0xE400000000000000;
              }

              v269 = v268;
              String.append(_:)(*&v267);

              v270._countAndFlagsBits = 0x6120746E696F7020;
              v270._object = 0xEA00000000002074;
              String.append(_:)(v270);
              v271._countAndFlagsBits = CGPoint.debugDescription.getter();
              String.append(_:)(v271);

              v272 = *v351;
              v273 = *&v351[8];
LABEL_241:
              Log.default(_:isPrivate:)(*&v272, 0);
              sub_100018F04(v347, &qword_1004A33F0);

LABEL_259:
              v182 = v312;
LABEL_260:
              v89 = v308;
              if (v311.i8[0])
              {
                goto LABEL_172;
              }

LABEL_169:
              v183 = v316;
              sub_1000FF9D0(v315);
              v184 = *(**(v183 + 128) + 144);

              v184(v351, v185);

              v186 = *&v351[8];
              v187 = *&v351[16];
              v188 = *&v351[24];

              if (v188)
              {
              }

              else
              {
                v194 = *(**(v183 + 88) + 144);

                v194(v351, v195);

                if (*v351 >> 62)
                {
                  v89 = v308;
                  if (*v351 >> 62 == 1)
                  {
                    sub_10001B360(*v351);
                    goto LABEL_172;
                  }

                  if (*v351 != 0x8000000000000010)
                  {
                    goto LABEL_172;
                  }

                  v201 = v316;
                  v196.i64[0] = *(v316 + 58);
                  v311 = v196;
                  Float.piDiv2.unsafeMutableAddressor();
                  static simd_float4x4.makeRotation(_:_:_:_:)();
                  v205 = v202;
                  v206 = v203;
                  v207 = v204;
                  v208 = *(v201 + 304);
                  if (v208)
                  {
                    v309 = v203;
                    v310 = v204;
                    *v307 = v202;
                    simd_float4x4.position.getter();
                    v306 = v209;
                    v210 = *((swift_isaMask & *v208) + 0x2B0);
                    v211 = v208;
                    v210();
                    simd_float4x4.position.getter();
                    v305 = v212;

                    v205 = *v307;
                    v206 = v309;
                    v207 = v310;
                    v213 = vsubq_f32(v306, v305);
                    v202 = vmulq_f32(v213, v213);
                    v202.f32[0] = sqrtf(v202.f32[2] + vaddv_f32(*v202.f32));
                  }

                  else
                  {
                    v202.i32[0] = 1050253722;
                  }

                  v301 = v202;
                  v236 = v315[15];
                  v309 = v315[16];
                  v310 = v236;
                  v237 = v315[17];
                  v306 = v315[18];
                  *v307 = v237;
                  v238 = v315[21];
                  v239 = v315[22];
                  v240 = v315[23];
                  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v238, v205.f32[0]), v239, *v205.f32, 1), v240, v205, 2), xmmword_1003DD210, v205, 3);
                  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v238, v207.f32[0]), v239, *v207.f32, 1), v240, v207, 2), xmmword_1003DD210, v207, 3);
                  v304 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v238, v206.f32[0]), v239, *v206.f32, 1), v240, v206, 2), xmmword_1003DD210, v206, 3);
                  type metadata accessor for MeasureCamera();
                  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
                  v302 = v241;
                  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
                  v243 = vsubq_f32(v242, v302);
                  v244 = vmulq_f32(v243, v243);
                  *&v245 = v244.f32[2] + vaddv_f32(*v244.f32);
                  *v244.f32 = vrsqrte_f32(v245);
                  *v244.f32 = vmul_f32(*v244.f32, vrsqrts_f32(v245, vmul_f32(*v244.f32, *v244.f32)));
                  v246 = vmulq_n_f32(v243, vmul_f32(*v244.f32, vrsqrts_f32(v245, vmul_f32(*v244.f32, *v244.f32))).f32[0]);
                  *v247.f32 = vadd_f32(*v302.f32, vmul_n_f32(*v246.f32, v301.n128_f32[0]));
                  v247.f32[2] = v302.f32[2] + vmuls_lane_f32(v301.n128_f32[0], v246, 2);
                  v247.i32[3] = 1.0;
                  v310 = v247;
                  v351[0] = 1;
                  memset(v394, 0, sizeof(v394));
                  v395 = 1;
                  type metadata accessor for WorldAnchor();
                  swift_allocObject();
                  v248 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
                  sub_1000FE3C4(*v311.i64, v248, 0, 4);
                  v249 = *(v201 + 312);
                  if (v249)
                  {
                    v250 = *((swift_isaMask & *v249) + 0xD8);
                    v251 = v249;
                    v250(4);
                  }

                  v182 = v312;
                }

                else
                {
                  sub_10001B360(*v351);
                }
              }

              v89 = v308;
LABEL_172:
              sub_1000FDB20(v316, &v362, v89, v315, v182, &v352);

              v189 = *(v15 + 272);
              *(v15 + 96) = *(v15 + 256);
              *(v15 + 112) = v189;
              *(v15 + 128) = *(v15 + 288);
              *&v351[144] = v361;
              v190 = *(v15 + 208);
              *(v15 + 32) = *(v15 + 192);
              *(v15 + 48) = v190;
              v191 = *(v15 + 240);
              *(v15 + 64) = *(v15 + 224);
              *(v15 + 80) = v191;
              v192 = *(v15 + 176);
              *v15 = *(v15 + 160);
              *(v15 + 16) = v192;
              sub_100018F04(v351, &qword_1004A97B0);
              goto LABEL_173;
            }

LABEL_278:
            swift_once();
            goto LABEL_225;
          }

          if (v7)
          {
            v277 = 0x72656E726F63;
          }

          else
          {
            v277 = 1701274725;
          }

          if (v7)
          {
            v278 = 0xE600000000000000;
          }

          else
          {
            v278 = 0xE400000000000000;
          }

          if (v306.i8[0])
          {
            v279 = 0x72656E726F63;
          }

          else
          {
            v279 = 1701274725;
          }

          if (v306.i8[0])
          {
            v280 = 0xE600000000000000;
          }

          else
          {
            v280 = 0xE400000000000000;
          }

          if (v277 == v279 && v278 == v280)
          {
          }

          else
          {
            v281 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v281 & 1) == 0)
            {
              goto LABEL_224;
            }
          }

          sub_100018F04(v347, &qword_1004A33F0);
          goto LABEL_259;
        }

        if (qword_1004A0180 != -1)
        {
          swift_once();
        }

        if (*(&xmmword_1004D4AB8 + 1))
        {
          v282 = *(&xmmword_1004D4AB8 + 1);

          v283 = *&v282[qword_1004AF960];
          if (v283)
          {
            v284 = v259;
            v285 = v260;
            v286 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
            v287 = *&v283[OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer];
            v288 = v283;
            [v287 convertPoint:0 fromLayer:{v284, v285}];
            v290 = v289;
            v292 = v291;
            v293 = *&v283[v286];
            LOBYTE(v287) = [v293 containsPoint:{v290, v292}];

            v182 = v312;
            if ((v287 & 1) == 0)
            {
              goto LABEL_219;
            }

            SIMD2<>.init(_:)();
            sub_1000FF0D4(v315, v351, v294);
            if (v351[8])
            {

              goto LABEL_219;
            }

            if (!*&v351[16])
            {
              goto LABEL_219;
            }

            if (!v351[32])
            {
              v263 = v316;
              sub_1000FE3C4(*v351, *&v351[16], v305.i64[0], *&v351[24]);

              v311.i32[0] = 1;
              v182 = v312;
              goto LABEL_215;
            }
          }

          else
          {
          }

          v182 = v312;
          goto LABEL_219;
        }

        goto LABEL_280;
      }
    }

    else
    {
      sub_10001B360(*v351);
    }

    v197 = *(**(v316 + 11) + 144);

    v197(v351, v198);

    v199 = *v351;
    if ((*v351 >> 62) < 2)
    {

      sub_10001B360(v199);
      v182 = v312;
      if (v88)
      {
        goto LABEL_172;
      }

      goto LABEL_169;
    }

    v200 = __ROR8__(*v351 ^ 0x8000000000000000, 3);
    if (v200 > 1)
    {
      if (v200 != 2)
      {
        v182 = v312;
        goto LABEL_184;
      }

      goto LABEL_192;
    }

LABEL_168:

    v182 = v312;
    if (v88)
    {
      goto LABEL_172;
    }

    goto LABEL_169;
  }

  v182 = v312;
  if (v179 == 3)
  {
LABEL_184:

    if (v88)
    {
      goto LABEL_172;
    }

    goto LABEL_169;
  }

LABEL_281:
  DWORD2(v295) = 0;
  *&v295 = 102;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000FAAC8()
{
  v1 = *(**(v0 + 128) + 144);

  v1(v95, v2);

  v3 = v95[1];
  if (v3)
  {
    if (!*(v0 + 312))
    {
LABEL_89:

      return;
    }

    v90 = v0;
    v4 = *(**(v0 + 88) + 144);
    v5 = *(v0 + 312);

    v92 = v5;
    v91 = v5;
    v4(v95);

    if ((v95[0] >> 62) <= 1)
    {
      sub_10001B360(v95[0]);
      goto LABEL_5;
    }

    if (v95[0] == 0x8000000000000018)
    {
      v16 = (*((swift_isaMask & *v91) + 0x238))();
      v17 = v16;
      v79 = v16;
      if (v16 >> 62)
      {
        goto LABEL_100;
      }

      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_18:
        v19 = 0;
        v80 = v17 & 0xC000000000000001;
        v76 = v17 + 32;
        v77 = v17 & 0xFFFFFFFFFFFFFF8;
        v78 = v18;
        v85 = v3;
        while (1)
        {
          if (v80)
          {
            v20 = v19;
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *(v77 + 16))
            {
              __break(1u);
              return;
            }

            v20 = v19;
            v21 = *(v76 + 8 * v19);
          }

          v82 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_99;
          }

          v81 = v21;
          v22 = (*((swift_isaMask & *v21) + 0x280))();
          v23 = v22;
          if (v22 >> 62)
          {
            break;
          }

          v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_27;
          }

LABEL_19:

          v19 = v82;
          if (v82 == v78)
          {
            goto LABEL_101;
          }
        }

        v24 = _CocoaArrayWrapper.endIndex.getter();
        if (!v24)
        {
          goto LABEL_19;
        }

LABEL_27:
        v25 = 0;
        v87 = *((swift_isaMask & *v3) + 0xB8);
        v88 = v23 & 0xC000000000000001;
        v83 = v23 + 32;
        v84 = v23 & 0xFFFFFFFFFFFFFF8;
        v86 = v24;
        while (1)
        {
          if (v88)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *(v84 + 16))
            {
              goto LABEL_98;
            }

            v26 = *(v83 + 8 * v25);
          }

          v27 = __OFADD__(v25, 1);
          v28 = v25 + 1;
          if (v27)
          {
            goto LABEL_96;
          }

          v89 = v28;
          v29 = *((swift_isaMask & *v26) + 0xB8);
          v30 = v26;
          v94 = v29;
          v31 = v29();
          v33 = v32;
          v34 = v3;
          v35 = v87();
          v37 = v36;

          if (v31 == v35 && v33 == v37)
          {
          }

          else
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v39 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          v41 = (*((swift_isaMask & *v30) + 0x238))(v40);
          v3 = v41;
          if (v41 >> 62)
          {
            v42 = _CocoaArrayWrapper.endIndex.getter();
            if (v42)
            {
LABEL_44:
              if (v42 < 1)
              {
                goto LABEL_97;
              }

              v43 = 0;
              v93 = v42;
              while (2)
              {
                if ((v3 & 0xC000000000000001) != 0)
                {
                  v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v44 = *(v3 + 8 * v43 + 32);
                }

                v45 = v44;
                v46 = *((swift_isaMask & *v44) + 0x250);
                v47 = v46();
                if ((v47 & 0xC000000000000001) != 0)
                {
                  v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_52:
                  v49 = v48;

                  v51 = (*((swift_isaMask & *v49) + 0xB8))(v50);
                  v53 = v52;

                  if (v51 == v94() && v53 == v54)
                  {
                  }

                  else
                  {
                    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v56 & 1) == 0)
                    {
                      v58 = (v46)(v57);
                      if ((v58 & 0xC000000000000001) != 0)
                      {
                        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                        {
                          goto LABEL_94;
                        }

                        v59 = *(v58 + 40);
                      }

                      v60 = v59;

                      v62 = (*((swift_isaMask & *v60) + 0xB8))(v61);
                      v64 = v63;

                      if (v62 == v94() && v64 == v65)
                      {

                        goto LABEL_75;
                      }

                      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v67)
                      {
LABEL_75:
                        v74 = (v46)(v68);
                        if ((v74 & 0xC000000000000001) != 0)
                        {
                          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_95;
                          }

                          v75 = *(v74 + 32);
                        }

                        v72 = v75;

                        v73 = v91;
                        sub_100104F90(v45, v72, v92, 1);
                        goto LABEL_71;
                      }

                      goto LABEL_72;
                    }
                  }

                  v69 = v91;
                  v70 = v46();
                  if ((v70 & 0xC000000000000001) != 0)
                  {
                    v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                    {
                      goto LABEL_93;
                    }

                    v71 = *(v70 + 40);
                  }

                  v72 = v71;

                  sub_100104F90(v45, v92, v72, 1);
                  v73 = v45;
                  v45 = v69;
LABEL_71:

LABEL_72:
                  ++v43;

                  if (v93 == v43)
                  {
                    goto LABEL_28;
                  }

                  continue;
                }

                break;
              }

              if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v48 = *(v47 + 32);
                goto LABEL_52;
              }

              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              v18 = _CocoaArrayWrapper.endIndex.getter();
              v17 = v79;
              if (!v18)
              {
                break;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v42)
            {
              goto LABEL_44;
            }
          }

LABEL_28:

          v3 = v85;
LABEL_29:

          v25 = v89;
          if (v89 == v86)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_101:
    }

LABEL_5:
    type metadata accessor for WorldAnchor();
    (*((swift_isaMask & *v3) + 0x2C0))();
    v6 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
    (*((swift_isaMask & *v91) + 0x2C8))(v6);
    v7 = *(**(v90 + 88) + 144);

    v7(v95, v8);

    if ((v95[0] & 0x8000000000000000) != 0)
    {
      if (v95[0] == 0x8000000000000018)
      {
        v9 = v91;
        v10 = swift_isaMask & *v91;
        v11 = 7;
        goto LABEL_14;
      }
    }

    else
    {
      sub_10001B360(v95[0]);
    }

    v9 = v91;
    v12 = *((swift_isaMask & *v91) + 0xD0);
    if ((v12() - 3) >= 2)
    {
      v10 = swift_isaMask & *v91;
      v11 = 3;
    }

    else
    {
      v13 = *((swift_isaMask & *v3) + 0xD0);
      if ((v13() - 3) > 1)
      {
        v15 = v3;
        v3 = v91;
        goto LABEL_88;
      }

      v14 = v12();
      if (v14 == v13())
      {
        v15 = v3;
        v3 = v91;
LABEL_88:

        goto LABEL_89;
      }

      v11 = v13();
      v10 = swift_isaMask & *v91;
      v9 = v91;
    }

LABEL_14:
    (*(v10 + 216))(v11);
    v15 = v9;
    goto LABEL_88;
  }
}

void sub_1000FB540()
{
  v1 = v0;
  v2 = *(**(v0 + 88) + 144);

  v2(&v40, v3);

  countAndFlagsBits = v40._countAndFlagsBits;
  if ((v40._countAndFlagsBits | 8) == 0x8000000000000018)
  {
    return;
  }

  v5 = *(**(v0 + 128) + 144);

  v5(&v40, v6);

  object = v40._object;
  v9 = v41;
  v8 = v42;

  if (!v8)
  {
    sub_10001B360(countAndFlagsBits);
    return;
  }

  if ((*((swift_isaMask & *v8) + 0x2F0))() != 1 || ((*((swift_isaMask & *v8) + 0xD0))(), !MeasureObjectState.isMovable()()))
  {
    sub_10001B360(countAndFlagsBits);

    return;
  }

  v10 = *(v1 + 104);
  LOBYTE(v40._countAndFlagsBits) = 4;
  v11 = *(*v10 + 392);

  v11(&v40);

  v12 = *(v1 + 312);
  *(v1 + 312) = v8;
  v39 = v8;

  if (qword_1004A0288 != -1)
  {
    swift_once();
  }

  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v40._countAndFlagsBits = 0xD000000000000016;
  v40._object = 0x8000000100407330;
  v13 = *(v1 + 312);
  if (!v13)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v14 = *((swift_isaMask & *v13) + 0xB8);
  v15 = v13;
  v16 = v14();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x6D61726620746120;
  v20._object = 0xEB00000000203A65;
  String.append(_:)(v20);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  Log.default(_:isPrivate:)(v40, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v22 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  *(v22 + 16) = *(v22 + 16) + 1.0;
  v23 = *(v1 + 312);
  if (!v23 || (v24 = *((swift_isaMask & *v23) + 0xD8), v25 = v23, v24(7), v25, (v26 = *(v1 + 312)) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = *((swift_isaMask & *v26) + 0x268);
  v28 = v26;
  v29 = v27();
  if (v29)
  {
    v30 = v29;
    (*((swift_isaMask & *v29) + 0x338))(v28);
  }

  sub_100104098(v39);
  sub_100104508(v39);
  v31 = *(**(v1 + 128) + 400);

  v32 = v31(&v40);
  v34 = *(v33 + 16);
  v35 = *(v33 + 24);
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;

  v32(&v40, 0);

  v36 = *(v1 + 536);
  *(v1 + 536) = countAndFlagsBits;
  sub_100071684(countAndFlagsBits);
  sub_10001B360(v36);
  v37 = *(v1 + 88);
  v40._countAndFlagsBits = 0x8000000000000018;
  v38 = *(*v37 + 392);

  v38(&v40);
  sub_10001B360(countAndFlagsBits);
}

uint64_t sub_1000FBAE0()
{
  v1 = v0;
  v2 = *(**(v0 + 128) + 144);

  v2(v15, v3);

  v4 = v15[1];
  v6 = v15[2];
  v5 = v15[3];

  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = *((swift_isaMask & *v5) + 0x2C0);
  v8 = v5;
  v9 = v7();

  v10 = (*(*v9 + 216))();

  if (!v10)
  {

LABEL_7:
    *(v1 + 216) = 0;
  }

  v11 = *(v1 + 216);
  if (v11)
  {
    v12 = *(*v11 + 280);

    LOBYTE(v12) = v12(v13);

    if (v12)
    {
    }
  }

  else
  {
  }

  *(v1 + 216) = v10;
}

void sub_1000FBC78()
{
  if (*(v0 + 544) == 3)
  {

    StateValue.ifUpdated(_:)();

    __chkstk_darwin(v1);

    StateValue.ifUpdated(_:)();
  }
}

uint64_t sub_1000FBD5C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = *a1 - 1 < 3;
  v5 = *(**(a2 + 144) + 144);

  v5(v15, v6);

  memcpy(__dst, v15, sizeof(__dst));
  sub_1000FBF30(v4, __dst);
  result = sub_100013C4C(__dst);
  if (v3 == 1 && (*(a2 + 208) & 1) == 0)
  {
    v8 = *(a2 + 72);
    result = swift_beginAccess();
    v9 = *(v8 + 64);
    if (v9 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v10 = result;
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_5:
        if (v10 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v13 = *(v12 + 24);
            ObjectType = swift_getObjectType();
            (*(v13 + 120))(1, ObjectType, v13);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }

    *(a2 + 208) = 1;
  }

  return result;
}

void sub_1000FBF30(char a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(**(v2 + 88) + 144);

    v4(&v11, v5);

    if ((v11 >> 62) > 1)
    {
      if (v11 == 0x8000000000000018)
      {
        sub_1000FCCD8(1, a2);
        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
        {
          __break(1u);
        }

        else
        {
          SIMD2<>.init(_:)();
          *(v2 + 464) = v6;
          *(v2 + 472) = 1106247680;
          v7 = *(**(v2 + 120) + 200);

          v9 = v7(v8);

          v10 = *(*v9 + 280);

          v10(sub_100103904, v2);
        }
      }
    }

    else
    {
      sub_10001B360(v11);
    }
  }
}