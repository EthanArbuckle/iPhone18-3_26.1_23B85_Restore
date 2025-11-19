uint64_t sub_1000137FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  v4 = *(v0 + 48);
  swift_unknownObjectRelease();
  v5 = *(v0 + 56);
  swift_unknownObjectRelease();
  v6 = *(v0 + 64);
  swift_unknownObjectRelease();
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v12 = *(v0 + 120);
  swift_unknownObjectRelease();
  v13 = *(v0 + 128);
  swift_unknownObjectRelease();
  v14 = *(v0 + 136);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000138AC()
{
  sub_1000137FC();

  return swift_deallocClassInstance();
}

__n128 sub_100013904(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100013918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100013960(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000139C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003BE88 != -1)
  {
    swift_once();
  }

  v2 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  v3 = sub_100003EAC(v2, qword_10003D4C8);

  return sub_100010CDC(v3, a1);
}

void sub_100013A44(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for PrideStripesRenderer();
  v13 = swift_allocObject();
  sub_1000122A8(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v13;
  }
}

void sub_100013B00(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = objc_opt_self();
  v8 = [v7 texture2DDescriptorWithPixelFormat:80 width:a1 height:a2 mipmapped:0];
  [v8 setTextureType:4];
  [v8 setStorageMode:3];
  [v8 setUsage:4];
  [v8 setSampleCount:4];
  [v8 copy];
  sub_10002360C();
  swift_unknownObjectRelease();
  sub_1000141B0();
  swift_dynamicCast();
  [v30 setPixelFormat:250];
  v9 = [a3 newTextureWithDescriptor:v8];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [a3 newTextureWithDescriptor:v30];
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_14:
    sub_100005838();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
    v17 = v8;
    v18 = v30;
LABEL_19:

    return;
  }

  v12 = ceilf(vcvts_n_f32_s64(a1, 2uLL));
  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12 >= 9.2234e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = ceilf(vcvts_n_f32_s64(a2, 2uLL));
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v13 < 9.2234e18)
  {
    v27 = v11;
    v28 = v10;
    v14 = v12;
    v15 = v13;
    v16 = [v7 texture2DDescriptorWithPixelFormat:10 width:v12 height:v13 mipmapped:0];
    [v16 setStorageMode:2];
    [v16 setUsage:5];
    [v16 copy];
    sub_10002360C();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v17 = v30;
    [v30 setUsage:3];
    v18 = [v7 texture2DDescriptorWithPixelFormat:250 width:v14 height:v15 mipmapped:0];
    [v18 setStorageMode:3];
    [v18 setUsage:4];
    v19 = [a3 newTextureWithDescriptor:v16];
    if (v19)
    {
      v20 = v19;
      v21 = [a3 newTextureWithDescriptor:v30];
      if (v21)
      {
        v22 = v21;
        v23 = [a3 newTextureWithDescriptor:v18];
        if (v23)
        {
          v24 = v23;

          *a4 = v28;
          a4[1] = v27;
          a4[2] = v20;
          a4[3] = v22;
          a4[4] = v24;
          return;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_100005838();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_100013F34(void *a1)
{
  sub_100007414(0, 802, 0);
  result = sub_1000073F4(0, 2400, 0);
  v4 = 0;
  v5 = 1.0;
  while (1)
  {
    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      result = sub_100007414((v9 > 1), v10 + 1, 1);
      v5 = 1.0;
      v9 = _swiftEmptyArrayStorage[3];
      v11 = v9 >> 1;
    }

    DWORD1(v3) = 0;
    *&v3 = v4 / 400.0;
    _swiftEmptyArrayStorage[2] = v12;
    _swiftEmptyArrayStorage[v10 + 4] = v3;
    v13 = v10 + 2;
    if (v11 < v13)
    {
      v17 = v3;
      result = sub_100007414((v9 > 1), v13, 1);
      v3 = v17;
      v5 = 1.0;
    }

    *(&v3 + 1) = v5;
    _swiftEmptyArrayStorage[2] = v13;
    _swiftEmptyArrayStorage[v12 + 4] = v3;
    if (v4 > 0x18F)
    {
      break;
    }

    sub_100002398(&qword_10003C470, &qword_100026478);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100026C00;
    *(inited + 32) = 2 * v4;
    v7 = (2 * v4) | 1;
    *(inited + 34) = v7;
    *(inited + 36) = 2 * v4 + 2;
    *(inited + 38) = 2 * v4 + 2;
    *(inited + 40) = v7;
    *(inited + 42) = 2 * v4 + 3;
    result = sub_100012E08(inited);
    v5 = 1.0;
LABEL_3:
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  if (v4 != 400)
  {
    goto LABEL_3;
  }

  if (_swiftEmptyArrayStorage[2] >> 60)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = [a1 newBufferWithBytes:? length:? options:?];

  if (!v14)
  {

    return v14;
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15 + 0x4000000000000000 >= 0)
  {
    v16 = [a1 newBufferWithBytes:&_swiftEmptyArrayStorage[4] length:2 * v15 options:0];

    if (!v16)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    return v14;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1000141B0()
{
  result = qword_10003CD30;
  if (!qword_10003CD30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003CD30);
  }

  return result;
}

void sub_1000141FC(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  sub_100007434(0, 11, 0);
  if (a4 == 0.0 || a4 == 1.0)
  {
    if (a1)
    {
      v11 = 9.6;
    }

    else
    {
      v11 = 9.0;
    }

    v12 = -0.07;
    v13 = 0.0;
    if (a1)
    {
      v14 = -0.07;
    }

    else
    {
      v14 = 0.0;
    }

    if (a1)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = -0.1;
    }

    HIDWORD(v16) = 0;
    *&v16 = __PAIR64__(LODWORD(v14), LODWORD(v15));
    if (a1)
    {
      v17 = 2.8;
    }

    else
    {
      v17 = 5.2;
    }

    *(&v16 + 2) = v11;
    if (a1)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v19 = vbslq_s8(vdupq_n_s32(v18), xmmword_100026C20, xmmword_100026C10);
    if (a1)
    {
      v20 = 1.8;
    }

    else
    {
      v20 = 2.5;
    }

    if (a1)
    {
      v21 = 9.6;
    }

    else
    {
      v21 = 9.2;
    }

    v80 = v21;
    if (a1)
    {
      v22 = -0.07;
    }

    else
    {
      v22 = -0.2;
    }

    if (a1)
    {
      v12 = 0.0;
    }

    v115 = 1065437102;
    v116 = v17;
    v117 = 0xBE99999A3F800000;
    v118 = v20;
    v119 = 0;
    v120 = v19;
    v74 = v19;
    v23.i64[0] = __PAIR64__(LODWORD(v22), LODWORD(v12));
    v23.i64[1] = LODWORD(v21);
    v107 = v23;
    v108 = 1065353216;
    if (a1)
    {
      v24 = 2.4;
    }

    else
    {
      v24 = 4.8;
    }

    v109 = v24;
    v110 = 0;
    if (a1)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = 0.1;
    }

    v111 = v20;
    v112 = 0;
    if (a1)
    {
      v26 = -0.13;
    }

    else
    {
      v26 = -0.2;
    }

    v113 = v19;
    v114 = v16;
    *&v27 = __PAIR64__(LODWORD(v26), LODWORD(v25));
    *(&v27 + 1) = LODWORD(v11);
    v77 = v27;
    if (a1)
    {
      v28 = -0.13;
    }

    else
    {
      v28 = 0.0;
    }

    v73 = v28;
    if ((a1 & 1) == 0)
    {
      v13 = 0.07;
    }

    v72 = v13;
    sub_100012224(&v107, v84, a5);
    v101 = 1065437102;
    v102 = v17;
    v103 = 0xC035DCA73F800000;
    v104 = v20;
    v105 = 0;
    v106 = v74;
    v29.i64[0] = __PAIR64__(LODWORD(v73), LODWORD(v72));
    v29.i64[1] = LODWORD(v80);
    v93 = v29;
    v94 = 1065353216;
    v95 = v24;
    v96 = 0xC0490FDA00000000;
    v97 = v20;
    v98 = 0;
    v99 = v74;
    v100 = v77;
    sub_100012224(&v93, v85, a5);
    sub_100012224(v85, v86, a3);
    v78 = v86[0];
    v81 = v86[1];
    v30 = v87;
    v75 = v88;
    v31 = (1.0 - fabsf((a3 + a3) + -1.0)) * 0.5;
    v32 = 11;
    do
    {
      v33 = powf(a3, (v32 * 0.2) + 1.0);
      sub_100012224(v85, &v89, v33);
      v35 = _swiftEmptyArrayStorage[2];
      v34 = _swiftEmptyArrayStorage[3];
      if (v35 >= v34 >> 1)
      {
        sub_100007434((v34 > 1), v35 + 1, 1);
      }

      v36 = *v90;
      v37 = _swiftEmptyArrayStorage + 20 * v35;
      v38 = *&v90[4];
      _swiftEmptyArrayStorage[2] = v35 + 1;
      *(v37 + 8) = v36;
      *(v37 + 36) = vtrn1q_s32(v38, vextq_s8(v38, v38, 0xCuLL));
      --v32;
    }

    while (v32);
    v55 = v78;
    v54 = v81;
    v56 = v75;
  }

  else
  {
    v39 = 9.0;
    if (a1)
    {
      v39 = 9.6;
    }

    v40 = -0.07;
    v41 = 0.0;
    if ((a1 & 1) == 0)
    {
      v40 = 0.0;
    }

    v42 = -0.1;
    if (a1)
    {
      v42 = 0.0;
      v43 = 2.8;
    }

    else
    {
      v43 = 5.2;
    }

    v44 = -0.2;
    if (a1)
    {
      v44 = -0.13;
    }

    v45 = 0.1;
    if (a1)
    {
      v45 = 0.0;
    }

    if (a3 != 0.0)
    {
      v40 = v44;
      v42 = v45;
    }

    *&v46 = __PAIR64__(LODWORD(v40), LODWORD(v42));
    *(&v46 + 1) = LODWORD(v39);
    if (a3 == 0.0)
    {
      v47 = -0.3;
    }

    else
    {
      v47 = -2.8416;
    }

    if (a3 == 0.0)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = -3.1416;
    }

    if (a1)
    {
      v49 = -0.07;
      if (a3 != 0.0)
      {
        v49 = -0.13;
      }

      v50 = xmmword_100026C20;
      v51 = 1075419546;
      v52 = 1092196762;
      v53 = 1.8;
    }

    else
    {
      if (a3 == 0.0)
      {
        v49 = -0.2;
      }

      else
      {
        v49 = 0.0;
      }

      v41 = 0.07;
      if (a3 == 0.0)
      {
        v41 = -0.07;
      }

      v50 = xmmword_100026C10;
      v53 = 2.5;
      v51 = 1083808154;
      v52 = 1091777331;
    }

    v115 = 1065437102;
    v116 = v43;
    LODWORD(v117) = 1065353216;
    *(&v117 + 1) = v47;
    v118 = v53;
    v119 = 0;
    v57.i64[0] = __PAIR64__(LODWORD(v49), LODWORD(v41));
    v120 = v50;
    v57.i64[1] = v52;
    v107 = v57;
    v108 = 1065353216;
    v109 = *&v51;
    LODWORD(v110) = 0;
    *(&v110 + 1) = v48;
    v111 = v53;
    v112 = 0;
    v82 = v46;
    v113 = v50;
    v114 = v46;
    sub_100012224(&v107, v85, a5);
    if (a1)
    {
      v58 = -0.07;
      if (a3 != 0.0)
      {
        v58 = -0.13;
      }

      v59 = xmmword_100026C20;
      v60 = 0.0;
      v61 = 1075419546;
      v62 = 1092196762;
      v63 = 1.8;
    }

    else
    {
      v58 = 0.0;
      if (a3 == 0.0)
      {
        v58 = -0.2;
        v60 = -0.07;
      }

      else
      {
        v60 = 0.07;
      }

      v59 = xmmword_100026C10;
      v63 = 2.5;
      v61 = 1083808154;
      v62 = 1091777331;
    }

    v101 = 1065437102;
    v102 = v43;
    LODWORD(v103) = 1065353216;
    *(&v103 + 1) = v47;
    v104 = v63;
    v105 = 0;
    v64.i64[0] = __PAIR64__(LODWORD(v58), LODWORD(v60));
    v106 = v59;
    v64.i64[1] = v62;
    v93 = v64;
    v94 = 1065353216;
    v95 = *&v61;
    LODWORD(v96) = 0;
    *(&v96 + 1) = v48;
    v97 = v63;
    v98 = 0;
    v99 = v59;
    v100 = v82;
    sub_100012224(&v93, v86, a5);
    sub_100012224(v86, &v89, a4);
    v55 = v89;
    v54 = *v90;
    v30 = *&v90[16];
    v31 = v91;
    v56 = v92;
    v65 = _swiftEmptyArrayStorage[2];
    v66 = vrev64_s32(*&vextq_s8(v54, v54, 8uLL));
    v67 = 20 * v65;
    v68 = 11;
    do
    {
      v69 = _swiftEmptyArrayStorage[3];
      v70 = v65 + 1;
      if (v65 >= v69 >> 1)
      {
        v79 = v55;
        v83 = v54;
        v76 = v56;
        sub_100007434((v69 > 1), v65 + 1, 1);
        v56 = v76;
        v55 = v79;
        v54 = v83;
      }

      _swiftEmptyArrayStorage[2] = v70;
      v71 = _swiftEmptyArrayStorage + v67;
      *(v71 + 4) = v54.i64[0];
      *(v71 + 10) = v30;
      *(v71 + 44) = v66;
      v67 += 20;
      v65 = v70;
      --v68;
    }

    while (v68);
  }

  *a2 = v55;
  *(a2 + 16) = v54;
  *(a2 + 32) = v30;
  *(a2 + 36) = v31;
  *(a2 + 48) = v56;
  *(a2 + 64) = _swiftEmptyArrayStorage;
}

void sub_100014944(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v5 = [v4 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (v6)
  {
    v7 = v6;
    [v7 setTexture:a1];
    [v7 setLoadAction:2];
    [v7 setStoreAction:1];

    v8 = [v4 depthAttachment];
    if (v8)
    {
      v9 = v8;
      [v9 setTexture:a2];
      [v9 setLoadAction:2];
      [v9 setClearDepth:0.0];
      [v9 setStoreAction:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100014A98(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v5 = [v4 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v6 setTexture:a1];

  v7 = [v4 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript:0];

  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v8 setLoadAction:2];

  v9 = [v4 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];

  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v10 setStoreAction:2];

  v11 = [v4 depthAttachment];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  [v11 setTexture:a2];

  v13 = [v4 depthAttachment];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 setClearDepth:0.0];

  v15 = [v4 depthAttachment];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setStoreAction:0];

  v17 = [v4 depthAttachment];
  if (v17)
  {
    v18 = v17;
    [v17 setLoadAction:2];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_100014CCC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10002340C();
  v9 = [a2 newFunctionWithName:v8];

  if (!v9)
  {
    goto LABEL_17;
  }

  v47 = v4;
  v10 = sub_10002340C();
  v11 = [a2 newFunctionWithName:v10];

  if (!v11)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    sub_100015B08();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_18:
    swift_unknownObjectRelease();
    type metadata accessor for PrideLightsBloomer();
    swift_deallocPartialClassInstance();
    return;
  }

  v46 = v11;
  v12 = sub_10002340C();
  v13 = [a2 newFunctionWithName:v12];

  if (!v13)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v14 = sub_10002340C();
  v15 = [a2 newFunctionWithName:v14];

  if (!v15)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v16 = [objc_opt_self() texture2DDescriptorWithPixelFormat:92 width:a3 height:a4 mipmapped:1];
  [v16 setUsage:5];
  [v16 setStorageMode:2];
  v45 = [a1 newTextureWithDescriptor:v16];
  if (!v45)
  {
LABEL_26:
    sub_100015B08();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v17 = [a1 newTextureWithDescriptor:v16];
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v44 = v15;
  v4[5] = v45;
  v4[6] = v17;
  v18 = objc_allocWithZone(MTLRenderPipelineDescriptor);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = [v18 init];
  v20 = [v19 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];

  if (v21)
  {
    [v21 setPixelFormat:objc_msgSend(v16, "pixelFormat")];
    v43 = v21;
    [v21 setBlendingEnabled:0];
    [v19 setVertexFunction:v9];
    [v19 setFragmentFunction:v46];
    v49 = 0;
    v22 = [a1 newRenderPipelineStateWithDescriptor:v19 error:&v49];
    v23 = v49;
    v42 = v22;
    if (v22 && (v47[2] = v22, v24 = v23, [v19 setFragmentFunction:v13], v49 = 0, v25 = objc_msgSend(a1, "newRenderPipelineStateWithDescriptor:error:", v19, &v49), v23 = v49, v25))
    {
      v47[3] = v25;
      v26 = v23;
      [v19 setFragmentFunction:v44];
      v49 = 0;
      v27 = [a1 newRenderPipelineStateWithDescriptor:v19 error:&v49];
      if (v27)
      {
        v28 = v27;
        v29 = v49;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v47[4] = v28;
        return;
      }

      v31 = v19;
      v41 = v49;
      v33 = sub_10002308C();

      v34 = 1;
    }

    else
    {
      v31 = v19;
      v32 = v23;
      v33 = sub_10002308C();

      v34 = 0;
    }

    swift_willThrow();
    sub_100015B08();
    swift_allocError();
    *v35 = v33;
    swift_willThrow();
    swift_errorRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v42)
    {
      v36 = v47[2];
      swift_unknownObjectRelease();
    }

    if (v34)
    {
      v37 = v47[3];
      swift_unknownObjectRelease();
    }

    v38 = v47[5];
    swift_unknownObjectRelease();
    v39 = v47[6];
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1000152E4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_10002340C();
  [a2 pushDebugGroup:v6];

  v7 = *(v2 + 48);
  swift_getObjectType();
  v38 = v7;
  sub_10001590C();
  v9 = v8 - 3;
  if (__OFSUB__(v8, 3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  if (v9 <= 2)
  {
    v9 = 2;
  }

  if (v9 >= 8)
  {
    v9 = 8;
  }

  v36 = v9;
  sub_100015B5C();
  v10 = *(v3 + 40);
  v11 = swift_unknownObjectRetain();
  sub_1000159B8(v11, 0);
  v13 = v12;
  v14 = [a2 renderCommandEncoderWithDescriptor:v12];

  if (v14)
  {
    swift_getObjectType();
    v37 = v3;
    [v14 setRenderPipelineState:*(v3 + 16)];
    v15 = sub_10002340C();
    [v14 setLabel:v15];

    [v14 setFragmentTexture:a1 atIndex:0];
    sub_100001D50();
    [v14 endEncoding];
    for (i = 1; i != v36; ++i)
    {
      v17 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
      v18 = [v17 colorAttachments];
      v19 = [v18 objectAtIndexedSubscript:0];

      if (!v19)
      {
        goto LABEL_23;
      }

      v20 = v19;
      [v20 setTexture:v10];
      [v20 setLevel:i];

      v21 = [a2 renderCommandEncoderWithDescriptor:v17];
      if (!v21)
      {
LABEL_19:
        sub_100015B08();
        swift_allocError();
        *v33 = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        return v38;
      }

      swift_getObjectType();
      [v21 setRenderPipelineState:*(v37 + 24)];
      v39 = 0x206E776F64;
      v40 = 0xE500000000000000;
      v41._countAndFlagsBits = sub_10002379C();
      sub_10002348C(v41);

      v22 = sub_10002340C();

      [v21 setLabel:v22];

      [v21 setFragmentTexture:v10 atIndex:0];
      LOWORD(v39) = i - 1;
      [v21 setFragmentBytes:&v39 length:2 atIndex:0];
      sub_100001D50();
      [v21 endEncoding];
      swift_unknownObjectRelease();
    }

    v23 = 0;
    v24 = v36 - 1;
    do
    {
      v25 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
      v26 = [v25 colorAttachments];
      v27 = [v26 objectAtIndexedSubscript:0];

      if (!v27)
      {
        goto LABEL_24;
      }

      v28 = v24 - 1;
      v29 = v27;
      [v29 setTexture:v38];
      [v29 setLevel:v24 - 1];

      v30 = [a2 renderCommandEncoderWithDescriptor:v25];
      if (!v30)
      {
        goto LABEL_19;
      }

      swift_getObjectType();
      [v30 setRenderPipelineState:*(v37 + 32)];
      v39 = 2125941;
      v40 = 0xE300000000000000;
      v42._countAndFlagsBits = sub_10002379C();
      sub_10002348C(v42);

      v31 = sub_10002340C();

      [v30 setLabel:v31];

      if (v23)
      {
        v32 = v38;
      }

      else
      {
        v32 = v10;
      }

      swift_unknownObjectRetain();
      [v30 setFragmentTexture:v32 atIndex:0];
      swift_unknownObjectRelease();
      [v30 setFragmentTexture:v10 atIndex:1];
      LOWORD(v39) = v24;
      [v30 setFragmentBytes:&v39 length:2 atIndex:0];
      sub_100001D50();
      [v30 endEncoding];
      swift_unknownObjectRelease();
      ++v23;
      --v24;
    }

    while (v28);
    [a2 popDebugGroup];
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }

  else
  {
    sub_100015B08();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
  }

  return v38;
}

void sub_10001590C()
{
  v1 = [v0 width];
  v2 = [v0 height];
  if (v2 <= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  v4 = log2f(fmaxf(v3, 1.0));
  v5 = floorf(v4) + 1.0;
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_10:
    __break(1u);
  }
}

void sub_1000159B8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_msgSend(objc_allocWithZone(swift_getObjCClassFromMetadata()) "init")];
  v5 = [v4 objectAtIndexedSubscript:0];

  if (v5)
  {
    v6 = v5;
    [v6 setTexture:a1];
    [v6 setLevel:a2];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100015A8C()
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

  return swift_deallocClassInstance();
}

unint64_t sub_100015B08()
{
  result = qword_10003CE08;
  if (!qword_10003CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE08);
  }

  return result;
}

unint64_t sub_100015B5C()
{
  result = qword_10003CE10;
  if (!qword_10003CE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003CE10);
  }

  return result;
}

uint64_t sub_100015BA8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100015BCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100015C78(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100015CA8(char a1)
{
  result = 0x754664656C676E61;
  switch(a1)
  {
    case 1:
      result = 0x31707565736F6C63;
      break;
    case 2:
      result = 0x32707565736F6C63;
      break;
    case 3:
      result = 0x33707565736F6C63;
      break;
    case 4:
      result = 0x316D756964656DLL;
      break;
    case 6:
      result = 0x316C6C7566;
      break;
    case 7:
      result = 0x657665526C6C7566;
      break;
    case 8:
      result = 0x52707565736F6C63;
      break;
    case 9:
    case 11:
      result = 0x6C676E4164617069;
      break;
    case 10:
      result = 0x6964654D64617069;
      break;
    case 12:
    case 13:
    case 14:
    case 15:
    case 18:
    case 20:
      result = 0x736F6C4364617069;
      break;
    case 16:
      result = 0x6964654D64617069;
      break;
    case 17:
      result = 0x6C6C754664617069;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100015F04()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = &off_100035220;
  if (v1 == 1)
  {
    v2 = &off_1000351F0;
  }

  qword_10003D4E0 = v2;
}

void sub_100015F78()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 9;
  }

  else
  {
    v2 = 5;
  }

  byte_10003D4E8 = v2;
}

uint64_t sub_100015FE4(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_10002382C();
    sub_100015CA8(a1);
    sub_10002345C();

    v5 = sub_10002384C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xEB00000000316C6CLL;
        v10 = 0x754664656C676E61;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v9 = 0xE800000000000000;
            v10 = 0x31707565736F6C63;
            break;
          case 2:
            v9 = 0xE800000000000000;
            v10 = 0x32707565736F6C63;
            break;
          case 3:
            v9 = 0xE800000000000000;
            v10 = 0x33707565736F6C63;
            break;
          case 4:
            v9 = 0xE700000000000000;
            v10 = 0x316D756964656DLL;
            break;
          case 5:
            v9 = 0xEB00000000326C6CLL;
            v10 = 0x754664656C676E61;
            break;
          case 6:
            v9 = 0xE500000000000000;
            v10 = 0x316C6C7566;
            break;
          case 7:
            v10 = 0x657665526C6C7566;
            v9 = 0xEC00000031657372;
            break;
          case 8:
            v9 = 0xE800000000000000;
            v10 = 0x52707565736F6C63;
            break;
          case 9:
            v10 = 0x6C676E4164617069;
            v9 = 0xEF316C6C75466465;
            break;
          case 0xA:
            v9 = 0xEB00000000316D75;
            v10 = 0x6964654D64617069;
            break;
          case 0xB:
            v10 = 0x6C676E4164617069;
            v9 = 0xEF326C6C75466465;
            break;
          case 0xC:
            v10 = 0x736F6C4364617069;
            v9 = 0xEC00000031707565;
            break;
          case 0xD:
            v10 = 0x736F6C4364617069;
            v9 = 0xEC00000032707565;
            break;
          case 0xE:
            v10 = 0x736F6C4364617069;
            v9 = 0xEC00000033707565;
            break;
          case 0xF:
            v10 = 0x736F6C4364617069;
            v9 = 0xEC00000052707565;
            break;
          case 0x10:
            v10 = 0x6964654D64617069;
            v9 = 0xED00004952506D75;
            break;
          case 0x11:
            v10 = 0x6C6C754664617069;
            v9 = 0xEF65737265766552;
            break;
          case 0x12:
            v10 = 0x736F6C4364617069;
            v9 = 0xEC00000050707565;
            break;
          case 0x13:
            v10 = 0xD000000000000014;
            v9 = 0x8000000100025590;
            break;
          case 0x14:
            v10 = 0x736F6C4364617069;
            v9 = 0xEC00000044707565;
            break;
          default:
            break;
        }

        v11 = 0x754664656C676E61;
        v12 = 0xEB00000000316C6CLL;
        switch(a1)
        {
          case 1:
            v12 = 0xE800000000000000;
            if (v10 == 0x31707565736F6C63)
            {
              goto LABEL_59;
            }

            goto LABEL_60;
          case 2:
            v12 = 0xE800000000000000;
            if (v10 != 0x32707565736F6C63)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 3:
            v12 = 0xE800000000000000;
            if (v10 != 0x33707565736F6C63)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 4:
            v12 = 0xE700000000000000;
            if (v10 != 0x316D756964656DLL)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 5:
            v12 = 0xEB00000000326C6CLL;
            if (v10 != 0x754664656C676E61)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 6:
            v12 = 0xE500000000000000;
            if (v10 != 0x316C6C7566)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 7:
            v13 = 0x657665526C6C7566;
            v14 = 828732274;
            goto LABEL_53;
          case 8:
            v12 = 0xE800000000000000;
            v11 = 0x52707565736F6C63;
            goto LABEL_58;
          case 9:
            v12 = 0xEF316C6C75466465;
            if (v10 != 0x6C676E4164617069)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 10:
            v12 = 0xEB00000000316D75;
            if (v10 != 0x6964654D64617069)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 11:
            v12 = 0xEF326C6C75466465;
            if (v10 != 0x6C676E4164617069)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 12:
            v13 = 0x736F6C4364617069;
            v14 = 829453669;
            goto LABEL_53;
          case 13:
            v13 = 0x736F6C4364617069;
            v14 = 846230885;
            goto LABEL_53;
          case 14:
            v13 = 0x736F6C4364617069;
            v14 = 863008101;
            goto LABEL_53;
          case 15:
            v13 = 0x736F6C4364617069;
            v14 = 1383101797;
            goto LABEL_53;
          case 16:
            v12 = 0xED00004952506D75;
            if (v10 != 0x6964654D64617069)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 17:
            v12 = 0xEF65737265766552;
            if (v10 != 0x6C6C754664617069)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 18:
            v13 = 0x736F6C4364617069;
            v14 = 1349547365;
            goto LABEL_53;
          case 19:
            v12 = 0x8000000100025590;
            if (v10 != 0xD000000000000014)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 20:
            v13 = 0x736F6C4364617069;
            v14 = 1148220773;
LABEL_53:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v10 != v13)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          default:
LABEL_58:
            if (v10 != v11)
            {
              goto LABEL_60;
            }

LABEL_59:
            if (v9 == v12)
            {

              v15 = 1;
              return v15 & 1;
            }

LABEL_60:
            v15 = sub_1000237AC();

            if (v15)
            {
              return v15 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v15 & 1;
            }

            break;
        }
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

void sub_1000166F4(char a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v5 = a4.n128_f32[0];
  v6 = 1.0 - a3.n128_f32[0];
  switch(a1)
  {
    case 1:
      v60 = vmul_n_f32(0x3DCCCCCD3E4CCCCDLL, a4.n128_f32[0]);
      a5.n128_u64[0] = vadd_f32(v60, 0xBE2E147BBF051EB8);
      v120 = a5;
      v9 = (v6 * 0.1) + (1.0 - v60.f32[0]);
      v61 = (v5 * 10.0) + 20.0;
      v45.radians = sub_100019B20(15.0);
      v46.radians = sub_100019B20(v61);
      *&v47 = 75.0;
      goto LABEL_14;
    case 2:
      *&v43 = (a4.n128_f32[0] * -0.1) + -0.4;
      HIDWORD(v43) = -1105618534;
      v120 = v43;
      v9 = (v6 * 0.02) + 0.9;
      v44 = (a4.n128_f32[0] * 20.0) + 30.0;
      v45.radians = sub_100019B20(15.0);
      v46.radians = sub_100019B20(v44);
      *&v47 = 60.0;
      goto LABEL_14;
    case 3:
      *&v49 = (a4.n128_f32[0] * -0.1) + -0.1;
      *(&v49 + 1) = a4.n128_f32[0] * -0.1;
      v120 = v49;
      v9 = (v6 * 0.06) + 1.1;
      v50 = (a4.n128_f32[0] * 10.0) + 40.0;
      v45.radians = sub_100019B20(((a4.n128_f32[0] * -5.0) + 10.0));
      v46.radians = sub_100019B20(v50);
      *&v47 = 40.0;
LABEL_14:
      v62 = *&v47;
      goto LABEL_17;
    case 4:
      *&v34 = (v6 * 0.02) + (-0.25 - (a4.n128_f32[0] * 0.15));
      HIDWORD(v34) = -1110651699;
      v119 = v34;
      v9 = (v6 * 0.15) + ((a4.n128_f32[0] * -0.8) + 2.4);
      v35 = (a4.n128_f32[0] * -10.0) + 40.0;
      v11.radians = sub_100019B20(1.0);
      v12.radians = sub_100019B20(v35);
      v13 = 90.0;
      goto LABEL_22;
    case 5:
      a4.n128_u64[0] = vmul_n_f32(0x3DCCCCCD3E800000, a4.n128_f32[0]);
      a5.n128_u32[0] = -1096223293;
      LODWORD(v71) = vadd_f32(a4.n128_u64[0], a5.n128_u64[0]).u32[0];
      HIDWORD(v71) = vsub_f32(vdup_n_s32(0xBD23D70A), *&a4).i32[1];
      a4.n128_u64[0] = v71;
      v119 = a4;
      v9 = ((v6 * 0.15) + 1.85) + (v5 * -0.6);
      v72 = (v5 * 5.0) + 40.0;
      v11.radians = sub_100019B20(-5.0);
      v12.radians = sub_100019B20(v72);
      v13 = 65.0;
      goto LABEL_22;
    case 6:
      a4.n128_u64[0] = vadd_f32(vmul_n_f32(0xBD4CCCCDBDCCCCCDLL, a4.n128_f32[0]), 0xBD23D70ABCA3D70ALL);
      v119 = a4;
      v9 = (2.8 - v5) + (v6 * 0.3);
      v83 = v5 * 20.0;
      v11.radians = sub_100019B20(0.0);
      v12.radians = sub_100019B20(v83);
      v13 = 64.0;
      goto LABEL_22;
    case 7:
      v9 = (v6 * 0.25) + ((a4.n128_f32[0] * -0.7) + 2.4);
      v51 = (a4.n128_f32[0] * -10.0) + -15.0;
      v52.radians = sub_100019B20(((a4.n128_f32[0] * 5.0) + 6.0));
      v53.radians = sub_100019B20(v51);
      v54.radians = sub_100019B20(64.0);
      v55 = sub_1000235BC();
      sub_10002357C(v56, v52, v53, v54, v55);
      v128 = v57;
      v129 = v58;
      v130 = v59;
      sub_100019B3C(&v128, &v125);
      v29 = v126;
      v28 = v127;
      v32 = 0.0;
      v27 = 0uLL;
      break;
    case 8:
      a4.n128_u64[0] = vadd_f32(vmul_n_f32(0xBCA3D70ABE428F5CLL, a4.n128_f32[0]), 0xBABF5D79BECFDF3BLL);
      v120 = a4;
      v9 = (v6 * 0.1) + ((v5 * -0.3) + 1.16);
      v109 = (v5 * 15.0) + 42.8;
      v45.radians = sub_100019B20(((v5 * -10.0) + 12.7));
      v46.radians = sub_100019B20(v109);
      v62 = 21.2999992;
      goto LABEL_17;
    case 9:
      *&v42 = (a5.n128_f32[0] * 0.05) + (((0.0 - (a5.n128_f32[0] * 0.1)) * a4.n128_f32[0]) + -0.3);
      *(&v42 + 1) = ((a4.n128_f32[0] * 0.1) * a5.n128_f32[0]) + (-0.1 - (a5.n128_f32[0] * 0.1));
      v120 = v42;
      v9 = (a5.n128_f32[0] * 0.1) + (((v6 * 0.1) + ((a4.n128_f32[0] * -0.2) + 0.7)) * 3.0);
      v15 = ((a4.n128_f32[0] * 10.0) + 35.0) + (a5.n128_f32[0] * -5.0);
      v16 = (a5.n128_f32[0] * -40.0) + 60.0;
      v17 = -10.0;
      goto LABEL_16;
    case 10:
      *&v100 = ((a4.n128_f32[0] * -0.15) + -0.24) + ((a5.n128_f32[0] * 0.1) * a4.n128_f32[0]);
      HIDWORD(v100) = -1110651699;
      v118 = a4.n128_f32[0];
      v124 = v100;
      v9 = ((v6 * 0.1) + (2.0 - (((a5.n128_f32[0] * -0.2) + 0.9) * a4.n128_f32[0]))) + (a5.n128_f32[0] * -0.6);
      v101.radians = sub_100019B20(1.0);
      v102.radians = sub_100019B20(40.0);
      v103.radians = sub_100019B20(90.0);
      v104 = sub_1000235BC();
      sub_10002357C(v105, v101, v102, v103, v104);
      v128 = v106;
      v129 = v107;
      v130 = v108;
      sub_100019B3C(&v128, &v125);
      v29 = v126;
      v28 = v127;
      v30 = v125.f64[1];
      v31 = v125.f64[0];
      v32 = (v118 * 0.5) + 0.5;
      v27 = v124;
      goto LABEL_30;
    case 11:
      *&v33 = ((0.2 - (a5.n128_f32[0] * 0.1)) * a4.n128_f32[0]) + -0.25;
      *(&v33 + 1) = ((a4.n128_f32[0] * 0.05) + -0.1) + ((0.05 - (a4.n128_f32[0] * 0.05)) * a5.n128_f32[0]);
      v120 = v33;
      v9 = (((v6 * 0.15) + 2.1) + (a4.n128_f32[0] * -0.6)) - (a5.n128_f32[0] * 0.1);
      v15 = (40.0 - (a4.n128_f32[0] * 5.0)) + (a5.n128_f32[0] * -15.0);
      v16 = 30.0 - (a5.n128_f32[0] * 5.0);
      v17 = ((10.0 - (a4.n128_f32[0] * 5.0)) + (a5.n128_f32[0] * 5.0));
      goto LABEL_16;
    case 12:
      *&v36 = (0.0 - (a4.n128_f32[0] * 0.1)) - (a5.n128_f32[0] * 0.02);
      *(&v36 + 1) = (a5.n128_f32[0] * 0.02) + (0.08 - (((a5.n128_f32[0] * -0.05) + 0.1) * a4.n128_f32[0]));
      v122 = v36;
      v9 = (v6 * 0.06) + 0.9;
      v37 = (a5.n128_f32[0] * -15.0) + 40.0;
      v38 = ((a4.n128_f32[0] * 10.0) + 40.0) - (a5.n128_f32[0] * 5.0);
      v39.radians = sub_100019B20((10.0 - (a4.n128_f32[0] * 5.0)));
      v40.radians = sub_100019B20(v37);
      v41 = v38;
      goto LABEL_28;
    case 13:
      a4.n128_u64[0] = vadd_f32(vadd_f32(vmul_n_f32(0x3D4CCCCD3E4CCCCDLL, a4.n128_f32[0]), 0xBE19999ABF266666), vmul_n_f32(0x3D4CCCCD3C23D70ALL, a5.n128_f32[0]));
      v123 = a4;
      v32 = 1.0;
      v9 = (v6 * 0.06) + 1.0;
      v73 = (a5.n128_f32[0] * 20.0) + 30.0;
      v74 = ((v5 * 10.0) + 60.0) - (a5.n128_f32[0] * 20.0);
      v75.radians = sub_100019B20(-10.0);
      v76.radians = sub_100019B20(v73);
      v77.radians = sub_100019B20(v74);
      v78 = sub_1000235BC();
      sub_10002357C(v79, v75, v76, v77, v78);
      v128 = v80;
      v129 = v81;
      v130 = v82;
      sub_100019B3C(&v128, &v125);
      v27 = v123;
      v29 = v126;
      v28 = v127;
      break;
    case 14:
      v18 = vdup_lane_s32(1041865114, 0);
      v18.f32[0] = (a5.n128_f32[0] * -0.1) + 0.0;
      a3.n128_u64[0] = vmul_n_f32(v18, v5);
      v18.i32[0] = vadd_f32(a3.n128_u64[0], 0x3F0000003F000000).u32[0];
      v18.i32[1] = vsub_f32(vdup_n_s32(0x3DCCCCCDu), *&a3).i32[1];
      a3.n128_u64[0] = v18;
      v121 = a3;
      v19.radians = sub_100019B20((v5 * 10.0));
      v20.radians = sub_100019B20(30.0);
      v21.radians = sub_100019B20(40.0);
      v22 = sub_1000235BC();
      sub_10002357C(v23, v19, v20, v21, v22);
      v128 = v24;
      v129 = v25;
      v130 = v26;
      sub_100019B3C(&v128, &v125);
      v27 = v121;
      v29 = v126;
      v28 = v127;
      v30 = v125.f64[1];
      v31 = v125.f64[0];
      v32 = 1.0;
      v9 = 0.9;
      goto LABEL_30;
    case 15:
      LODWORD(v48) = -1091894772;
      *(&v48 + 1) = (a4.n128_f32[0] * 0.04) + -0.118;
      v122 = v48;
      v9 = (v6 * 0.05) + 0.886;
      v39.radians = sub_100019B20(((a4.n128_f32[0] * 10.0) + -6.0));
      v40.radians = sub_100019B20(28.0);
      v41 = -33.2000008;
      goto LABEL_28;
    case 16:
      *&v14 = ((a4.n128_f32[0] * 0.2) + -0.506) + (a5.n128_f32[0] * 0.15);
      HIDWORD(v14) = -1113550802;
      v120 = v14;
      v9 = ((v6 * 0.05) + 1.51) + (a4.n128_f32[0] * -0.4);
      v15 = (a4.n128_f32[0] * 10.0) + 26.0;
      v16 = 60.0 - (a5.n128_f32[0] * 10.0);
      v17 = -9.0;
      goto LABEL_16;
    case 17:
      v63 = a5;
      v63.n128_f32[1] = v5;
      v63.n128_u64[0] = vadd_f32(vmul_f32(v63.n128_u64[0], 0x3D4CCCCD3DCCCCCDLL), 0xBDF7CED93CF5C28FLL);
      v120 = v63;
      v9 = ((v6 * 0.05) + 1.96) + (v5 * -0.8);
      v15 = (v5 * 10.0) + -28.0;
      v16 = (a5.n128_f32[0] * -30.0) + 61.0;
      v17 = -15.0;
LABEL_16:
      v45.radians = sub_100019B20(v17);
      v46.radians = sub_100019B20(v15);
      v62 = v16;
LABEL_17:
      v64.radians = sub_100019B20(v62);
      v65 = sub_1000235BC();
      sub_10002357C(v66, v45, v46, v64, v65);
      v128 = v67;
      v129 = v68;
      v130 = v69;
      sub_100019B3C(&v128, &v125);
      v27 = v120;
      v29 = v126;
      v28 = v127;
      v32 = 0.5;
      break;
    case 18:
      v9 = ((v6 * 0.05) + 0.905) + (a4.n128_f32[0] * -0.3);
      v90 = (a4.n128_f32[0] * 10.0) + 35.0;
      v91 = (a5.n128_f32[0] * -30.0) + 75.0;
      v92.radians = sub_100019B20(25.0);
      v93.radians = sub_100019B20(v90);
      v94.radians = sub_100019B20(v91);
      v95 = sub_1000235BC();
      sub_10002357C(v96, v92, v93, v94, v95);
      v128 = v97;
      v129 = v98;
      v130 = v99;
      sub_100019B3C(&v128, &v125);
      v29 = v126;
      v28 = v127;
      v30 = v125.f64[1];
      v31 = v125.f64[0];
      v32 = 1.0;
      v27 = xmmword_100026F20;
      goto LABEL_30;
    case 19:
      *&v110 = (a4.n128_f32[0] * 0.2) + -0.574;
      HIDWORD(v110) = -1107833127;
      v122 = v110;
      v9 = ((v6 * 0.05) + 0.969) + (a4.n128_f32[0] * -0.3);
      v111 = (a4.n128_f32[0] * -10.0) + -35.0;
      v39.radians = sub_100019B20(-4.84000015);
      v70 = v111;
      goto LABEL_27;
    case 20:
      a4.n128_u64[0] = vadd_f32(vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, a5.n128_f32[0]), 0xBD4CCCCD3EB33333);
      v122 = a4;
      v9 = ((v6 * 0.05) + 1.15) + (v5 * -0.3);
      v39.radians = sub_100019B20(((v5 * -10.0) + -5.0));
      v70 = -34.2000008;
LABEL_27:
      v40.radians = sub_100019B20(v70);
      v41 = 49.2999992;
LABEL_28:
      v112.radians = sub_100019B20(v41);
      v113 = sub_1000235BC();
      sub_10002357C(v114, v39, v40, v112, v113);
      v128 = v115;
      v129 = v116;
      v130 = v117;
      sub_100019B3C(&v128, &v125);
      v27 = v122;
      v29 = v126;
      v28 = v127;
      v32 = 1.0;
      break;
    default:
      *&v8 = (a4.n128_f32[0] * 0.1) + -0.25;
      HIDWORD(v8) = -1110651699;
      v119 = v8;
      v9 = ((v6 * 0.1) + ((a4.n128_f32[0] * -0.2) + 0.7)) * 3.0;
      v10 = (a4.n128_f32[0] * 10.0) + 35.0;
      v11.radians = sub_100019B20(25.0);
      v12.radians = sub_100019B20(v10);
      v13 = 75.0;
LABEL_22:
      v84.radians = sub_100019B20(v13);
      v85 = sub_1000235BC();
      sub_10002357C(v86, v11, v12, v84, v85);
      v128 = v87;
      v129 = v88;
      v130 = v89;
      sub_100019B3C(&v128, &v125);
      v27 = v119;
      v29 = v126;
      v28 = v127;
      v32 = 0.0;
      break;
  }

  v30 = v125.f64[1];
  v31 = v125.f64[0];
LABEL_30:
  *a2 = v27;
  *(a2 + 16) = v9;
  *(a2 + 32) = v31;
  *(a2 + 40) = v30;
  *(a2 + 48) = v29;
  *(a2 + 56) = v28;
  *(a2 + 64) = 0;
  *(a2 + 68) = v32;
}

uint64_t sub_1000176A8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100015CA8(*a1);
  v5 = v4;
  if (v3 == sub_100015CA8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000237AC();
  }

  return v8 & 1;
}

Swift::Int sub_100017730()
{
  v1 = *v0;
  sub_10002382C();
  sub_100015CA8(v1);
  sub_10002345C();

  return sub_10002384C();
}

uint64_t sub_100017794()
{
  sub_100015CA8(*v0);
  sub_10002345C();
}

Swift::Int sub_1000177E8()
{
  v1 = *v0;
  sub_10002382C();
  sub_100015CA8(v1);
  sub_10002345C();

  return sub_10002384C();
}

uint64_t sub_100017848@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000190A8();
  *a2 = result;
  return result;
}

unint64_t sub_100017878@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100015CA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1000178CC()
{
  v1 = *v0;
  sub_10002382C();
  sub_10002383C(v1);
  return sub_10002384C();
}

Swift::Int sub_100017940()
{
  v1 = *v0;
  sub_10002382C();
  sub_10002383C(v1);
  return sub_10002384C();
}

uint64_t sub_100017984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000232FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002332C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002318C();
  sub_10002331C();
  v15 = v14;
  (*(v10 + 8))(v13, v9);
  sub_10002319C();
  sub_1000232EC();
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  sub_1000231DC();
  v20.n128_u32[0] = v18.n128_u32[0];
  v21 = *(v1 + 19);
  if (v21 != 2)
  {
    if (v21)
    {
      if (qword_10003BE98 != -1)
      {
        v38 = v18.n128_u32[0];
        swift_once();
        v20.n128_u32[0] = v38;
      }

      v25 = &byte_10003D4E8;
    }

    else
    {
      v25 = (v1 + 16);
    }

    v24 = *v25;
    v18.n128_u32[0] = 1.0;
    v19.n128_u64[0] = 0;
    goto LABEL_11;
  }

  v18.n128_f32[0] = v15;
  *&v22 = v17;
  v23 = *(v1 + 17);
  v24 = *(v2 + 16);
  if (v23 == 21)
  {
    v19.n128_f32[0] = v17;
LABEL_11:
    sub_1000166F4(v24, &v43, v18, v19, v20);
    goto LABEL_12;
  }

  v26 = v18.n128_u32[0];
  v19.n128_u32[0] = v22;
  v27 = v20.n128_u32[0];
  sub_1000166F4(v24, v41, v18, v19, v20);
  v28.n128_u32[0] = v26;
  v29.n128_u32[0] = v22;
  v30.n128_u32[0] = v27;
  sub_1000166F4(v23, v42, v28, v29, v30);
  v31.n128_u32[0] = v22;
  sub_100008778(v42, &v43, v31);
LABEL_12:
  v32 = v44;
  v40 = v45;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v39 = v43;
  result = sub_1000231CC();
  *a1 = v39;
  *(a1 + 16) = v32;
  *(a1 + 48) = v33;
  *(a1 + 56) = v34;
  *(a1 + 32) = v40;
  *(a1 + 64) = v37;
  *(a1 + 68) = v35;
  return result;
}

uint64_t sub_100017C70()
{
  if (v0[18] == 1)
  {
    if (qword_10003BE90 != -1)
    {
      swift_once();
    }

    v1 = qword_10003D4E0;
    v2 = *(qword_10003D4E0 + 16);
    if (v2)
    {
      v3 = 0x754664656C676E61;

      v52 = &_swiftEmptyArrayStorage;
      v4 = 32;
      while (2)
      {
        v5 = v0[16];
        v6 = 0xEB00000000316C6CLL;
        v7 = v3;
        switch(*(v1 + v4))
        {
          case 1:
            v6 = 0xE800000000000000;
            v7 = 0x31707565736F6C63;
            break;
          case 2:
            v6 = 0xE800000000000000;
            v7 = 0x32707565736F6C63;
            break;
          case 3:
            v6 = 0xE800000000000000;
            v7 = 0x33707565736F6C63;
            break;
          case 4:
            v6 = 0xE700000000000000;
            v7 = 0x316D756964656DLL;
            break;
          case 5:
            v6 = 0xEB00000000326C6CLL;
            v7 = v3;
            break;
          case 6:
            v6 = 0xE500000000000000;
            v7 = 0x316C6C7566;
            break;
          case 7:
            v7 = 0x657665526C6C7566;
            v6 = 0xEC00000031657372;
            break;
          case 8:
            v6 = 0xE800000000000000;
            v7 = 0x52707565736F6C63;
            break;
          case 9:
            v7 = 0x6C676E4164617069;
            v6 = 0xEF316C6C75466465;
            break;
          case 0xA:
            v6 = 0xEB00000000316D75;
            v7 = 0x6964654D64617069;
            break;
          case 0xB:
            v7 = 0x6C676E4164617069;
            v6 = 0xEF326C6C75466465;
            break;
          case 0xC:
            v7 = 0x736F6C4364617069;
            v6 = 0xEC00000031707565;
            break;
          case 0xD:
            v7 = 0x736F6C4364617069;
            v6 = 0xEC00000032707565;
            break;
          case 0xE:
            v7 = 0x736F6C4364617069;
            v6 = 0xEC00000033707565;
            break;
          case 0xF:
            v7 = 0x736F6C4364617069;
            v6 = 0xEC00000052707565;
            break;
          case 0x10:
            v7 = 0x6964654D64617069;
            v6 = 0xED00004952506D75;
            break;
          case 0x11:
            v7 = 0x6C6C754664617069;
            v6 = 0xEF65737265766552;
            break;
          case 0x12:
            v7 = 0x736F6C4364617069;
            v6 = 0xEC00000050707565;
            break;
          case 0x13:
            v7 = 0xD000000000000014;
            v6 = 0x8000000100025590;
            break;
          case 0x14:
            v7 = 0x736F6C4364617069;
            v6 = 0xEC00000044707565;
            break;
          default:
            break;
        }

        v8 = v3;
        v9 = 0xEB00000000316C6CLL;
        switch(v0[16])
        {
          case 1u:
            v9 = 0xE800000000000000;
            if (v7 == 0x31707565736F6C63)
            {
              goto LABEL_63;
            }

            goto LABEL_64;
          case 2u:
            v9 = 0xE800000000000000;
            if (v7 != 0x32707565736F6C63)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 3u:
            v9 = 0xE800000000000000;
            if (v7 != 0x33707565736F6C63)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 4u:
            v9 = 0xE700000000000000;
            if (v7 != 0x316D756964656DLL)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 5u:
            v9 = 0xEB00000000326C6CLL;
            if (v7 != v3)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 6u:
            v9 = 0xE500000000000000;
            if (v7 != 0x316C6C7566)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 7u:
            v10 = 0x657665526C6C7566;
            v11 = 828732274;
            goto LABEL_57;
          case 8u:
            v9 = 0xE800000000000000;
            v8 = 0x52707565736F6C63;
            goto LABEL_62;
          case 9u:
            v9 = 0xEF316C6C75466465;
            if (v7 != 0x6C676E4164617069)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 0xAu:
            v9 = 0xEB00000000316D75;
            if (v7 != 0x6964654D64617069)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 0xBu:
            v9 = 0xEF326C6C75466465;
            if (v7 != 0x6C676E4164617069)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 0xCu:
            v10 = 0x736F6C4364617069;
            v11 = 829453669;
            goto LABEL_57;
          case 0xDu:
            v10 = 0x736F6C4364617069;
            v11 = 846230885;
            goto LABEL_57;
          case 0xEu:
            v10 = 0x736F6C4364617069;
            v11 = 863008101;
            goto LABEL_57;
          case 0xFu:
            v10 = 0x736F6C4364617069;
            v11 = 1383101797;
            goto LABEL_57;
          case 0x10u:
            v9 = 0xED00004952506D75;
            if (v7 != 0x6964654D64617069)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 0x11u:
            v9 = 0xEF65737265766552;
            if (v7 != 0x6C6C754664617069)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 0x12u:
            v10 = 0x736F6C4364617069;
            v11 = 1349547365;
            goto LABEL_57;
          case 0x13u:
            v9 = 0x8000000100025590;
            if (v7 != 0xD000000000000014)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          case 0x14u:
            v10 = 0x736F6C4364617069;
            v11 = 1148220773;
LABEL_57:
            v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v7 != v10)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          default:
LABEL_62:
            if (v7 != v8)
            {
              goto LABEL_64;
            }

LABEL_63:
            if (v6 == v9)
            {
            }

            else
            {
LABEL_64:
              v53 = *(v1 + v4);
              v12 = v0;
              v13 = v1;
              v14 = v3;
              v15 = sub_1000237AC();

              if (v15)
              {
                v3 = v14;
                v1 = v13;
              }

              else
              {
                v16 = v52;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1000073D4(0, v52[2] + 1, 1);
                  v16 = v52;
                }

                v3 = v14;
                v18 = v16[2];
                v17 = v16[3];
                v1 = v13;
                if (v18 >= v17 >> 1)
                {
                  sub_1000073D4((v17 > 1), v18 + 1, 1);
                  v16 = v52;
                }

                v16[2] = v18 + 1;
                v52 = v16;
                *(v16 + v18 + 32) = v53;
              }

              v0 = v12;
            }

            ++v4;
            if (--v2)
            {
              continue;
            }

            v40 = v52;
            break;
        }

        break;
      }
    }

    else
    {
      v40 = &_swiftEmptyArrayStorage;
    }

    v47 = v40;
    v48 = v40[2];
    if (!v48)
    {
LABEL_167:

      __break(1u);
      JUMPOUT(0x100018AD4);
    }

    v49 = sub_10001901C(v48);
    if ((v49 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v49 < v47[2])
    {
      v50 = *(v47 + v49 + 32);

      v0[16] = v50;
      return result;
    }

    __break(1u);
    goto LABEL_165;
  }

  if (qword_10003BE90 != -1)
  {
    swift_once();
  }

  v19 = qword_10003D4E0;
  v20 = *(qword_10003D4E0 + 16);
  if (!v20)
  {
    v41 = &_swiftEmptyArrayStorage;
    v42 = *(&_swiftEmptyArrayStorage + 2);
    if (!v42)
    {
      goto LABEL_161;
    }

LABEL_152:
    v43 = v41;
    v44 = sub_10001901C(v42);
    if ((v44 & 0x8000000000000000) == 0)
    {
      if (v44 < *(v43 + 2))
      {
        v45 = v43[v44 + 32];

        goto LABEL_162;
      }

      goto LABEL_166;
    }

LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v21 = 0xEB00000000316C6CLL;
  v22 = 0x754664656C676E61;

  v54 = &_swiftEmptyArrayStorage;
  v23 = 32;
  v51 = v0;
  do
  {
    v24 = *(v19 + v23);
    v25 = v0[16];
    v26 = sub_1000190FC(&off_100035250);
    if (sub_100015FE4(v24, v26))
    {
      v27 = sub_100015FE4(v25, v26);

      if (v27)
      {
        goto LABEL_79;
      }
    }

    else
    {
    }

    v28 = v21;
    v29 = v22;
    switch(v24)
    {
      case 1:
        v28 = 0xE800000000000000;
        v29 = 0x31707565736F6C63;
        break;
      case 2:
        v28 = 0xE800000000000000;
        v29 = 0x32707565736F6C63;
        break;
      case 3:
        v28 = 0xE800000000000000;
        v29 = 0x33707565736F6C63;
        break;
      case 4:
        v28 = 0xE700000000000000;
        v29 = 0x316D756964656DLL;
        break;
      case 5:
        v28 = v21 + 0x10000;
        v29 = v22;
        break;
      case 6:
        v28 = 0xE500000000000000;
        v29 = 0x316C6C7566;
        break;
      case 7:
        v29 = 0x657665526C6C7566;
        v28 = 0xEC00000031657372;
        break;
      case 8:
        v28 = 0xE800000000000000;
        v29 = 0x52707565736F6C63;
        break;
      case 9:
        v29 = 0x6C676E4164617069;
        v28 = 0xEF316C6C75466465;
        break;
      case 10:
        v28 = v21 + 265;
        v29 = 0x6964654D64617069;
        break;
      case 11:
        v29 = 0x6C676E4164617069;
        v28 = 0xEF326C6C75466465;
        break;
      case 12:
        v29 = 0x736F6C4364617069;
        v28 = 0xEC00000031707565;
        break;
      case 13:
        v29 = 0x736F6C4364617069;
        v28 = 0xEC00000032707565;
        break;
      case 14:
        v29 = 0x736F6C4364617069;
        v28 = 0xEC00000033707565;
        break;
      case 15:
        v29 = 0x736F6C4364617069;
        v28 = 0xEC00000052707565;
        break;
      case 16:
        v29 = 0x6964654D64617069;
        v28 = 0xED00004952506D75;
        break;
      case 17:
        v29 = 0x6C6C754664617069;
        v28 = 0xEF65737265766552;
        break;
      case 18:
        v29 = 0x736F6C4364617069;
        v28 = 0xEC00000050707565;
        break;
      case 19:
        v29 = 0xD000000000000014;
        v28 = 0x8000000100025590;
        break;
      case 20:
        v29 = 0x736F6C4364617069;
        v28 = 0xEC00000044707565;
        break;
      default:
        break;
    }

    v30 = v22;
    v31 = v21;
    switch(v0[16])
    {
      case 1u:
        v31 = 0xE800000000000000;
        if (v29 == 0x31707565736F6C63)
        {
          goto LABEL_139;
        }

        goto LABEL_140;
      case 2u:
        v31 = 0xE800000000000000;
        if (v29 != 0x32707565736F6C63)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 3u:
        v31 = 0xE800000000000000;
        if (v29 != 0x33707565736F6C63)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 4u:
        v31 = 0xE700000000000000;
        if (v29 != 0x316D756964656DLL)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 5u:
        v31 = v21 + 0x10000;
        if (v29 != v22)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 6u:
        v31 = 0xE500000000000000;
        if (v29 != 0x316C6C7566)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 7u:
        v32 = 0x657665526C6C7566;
        v33 = 828732274;
        goto LABEL_133;
      case 8u:
        v31 = 0xE800000000000000;
        v30 = 0x52707565736F6C63;
        goto LABEL_138;
      case 9u:
        v31 = 0xEF316C6C75466465;
        if (v29 != 0x6C676E4164617069)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 0xAu:
        v31 = v21 + 265;
        if (v29 != 0x6964654D64617069)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 0xBu:
        v31 = 0xEF326C6C75466465;
        if (v29 != 0x6C676E4164617069)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 0xCu:
        v32 = 0x736F6C4364617069;
        v33 = 829453669;
        goto LABEL_133;
      case 0xDu:
        v32 = 0x736F6C4364617069;
        v33 = 846230885;
        goto LABEL_133;
      case 0xEu:
        v32 = 0x736F6C4364617069;
        v33 = 863008101;
        goto LABEL_133;
      case 0xFu:
        v32 = 0x736F6C4364617069;
        v33 = 1383101797;
        goto LABEL_133;
      case 0x10u:
        v31 = 0xED00004952506D75;
        if (v29 != 0x6964654D64617069)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 0x11u:
        v31 = 0xEF65737265766552;
        if (v29 != 0x6C6C754664617069)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 0x12u:
        v32 = 0x736F6C4364617069;
        v33 = 1349547365;
        goto LABEL_133;
      case 0x13u:
        v31 = 0x8000000100025590;
        if (v29 != 0xD000000000000014)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      case 0x14u:
        v32 = 0x736F6C4364617069;
        v33 = 1148220773;
LABEL_133:
        v31 = v33 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v29 != v32)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      default:
LABEL_138:
        if (v29 != v30)
        {
          goto LABEL_140;
        }

LABEL_139:
        if (v28 == v31)
        {
        }

        else
        {
LABEL_140:
          v34 = v21;
          v35 = v22;
          v36 = sub_1000237AC();

          if (v36)
          {
            v22 = v35;
            v21 = v34;
          }

          else
          {
            v37 = v54;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000073D4(0, v54[2] + 1, 1);
              v37 = v54;
            }

            v22 = v35;
            v39 = v37[2];
            v38 = v37[3];
            v21 = v34;
            if (v39 >= v38 >> 1)
            {
              sub_1000073D4((v38 > 1), v39 + 1, 1);
              v37 = v54;
            }

            v37[2] = v39 + 1;
            v54 = v37;
            *(v37 + v39 + 32) = v24;
          }

          v0 = v51;
        }

        break;
    }

LABEL_79:
    ++v23;
    --v20;
  }

  while (v20);

  v41 = v54;
  v42 = v54[2];
  if (v42)
  {
    goto LABEL_152;
  }

LABEL_161:

  v45 = v0[16];
LABEL_162:
  v0[17] = v45;
  return result;
}

uint64_t getEnumTagSinglePayload for PrideLightsCameraController.ReducedMotionStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrideLightsCameraController.ReducedMotionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrideLightsCameraController.CameraIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrideLightsCameraController.CameraIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100018F08()
{
  result = qword_10003CF38;
  if (!qword_10003CF38)
  {
    sub_1000105D4(&qword_10003CF40, qword_100026FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF38);
  }

  return result;
}

unint64_t sub_100018F70()
{
  result = qword_10003CF48;
  if (!qword_10003CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF48);
  }

  return result;
}

unint64_t sub_100018FC8()
{
  result = qword_10003CF50;
  if (!qword_10003CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF50);
  }

  return result;
}

unint64_t sub_10001901C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000190A8()
{
  v0 = sub_1000237CC();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

void *sub_1000190FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100002398(&qword_10003CF58, qword_100027100);
  v3 = sub_10002365C();
  v4 = 0;
  v5 = v3 + 56;
  v25 = v1;
  v26 = a1 + 32;
  do
  {
    v6 = *(v26 + v4);
    v27 = v4 + 1;
    v7 = *(v3 + 40);
    sub_10002382C();
    sub_10002345C();

    v8 = sub_10002384C();
    v9 = ~(-1 << *(v3 + 32));
    v10 = v8 & v9;
    v11 = (v8 & v9) >> 6;
    v12 = *(v5 + 8 * v11);
    v13 = 1 << (v8 & v9);
    if ((v13 & v12) != 0)
    {
      while (1)
      {
        v14 = 0xEB00000000316C6CLL;
        v15 = 0x754664656C676E61;
        switch(*(*(v3 + 48) + v10))
        {
          case 1:
            v14 = 0xE800000000000000;
            v15 = 0x31707565736F6C63;
            break;
          case 2:
            v14 = 0xE800000000000000;
            v15 = 0x32707565736F6C63;
            break;
          case 3:
            v14 = 0xE800000000000000;
            v15 = 0x33707565736F6C63;
            break;
          case 4:
            v14 = 0xE700000000000000;
            v15 = 0x316D756964656DLL;
            break;
          case 5:
            v14 = 0xEB00000000326C6CLL;
            v15 = 0x754664656C676E61;
            break;
          case 6:
            v14 = 0xE500000000000000;
            v15 = 0x316C6C7566;
            break;
          case 7:
            v15 = 0x657665526C6C7566;
            v14 = 0xEC00000031657372;
            break;
          case 8:
            v14 = 0xE800000000000000;
            v15 = 0x52707565736F6C63;
            break;
          case 9:
            v15 = 0x6C676E4164617069;
            v14 = 0xEF316C6C75466465;
            break;
          case 0xA:
            v14 = 0xEB00000000316D75;
            v15 = 0x6964654D64617069;
            break;
          case 0xB:
            v15 = 0x6C676E4164617069;
            v14 = 0xEF326C6C75466465;
            break;
          case 0xC:
            v15 = 0x736F6C4364617069;
            v14 = 0xEC00000031707565;
            break;
          case 0xD:
            v15 = 0x736F6C4364617069;
            v14 = 0xEC00000032707565;
            break;
          case 0xE:
            v15 = 0x736F6C4364617069;
            v14 = 0xEC00000033707565;
            break;
          case 0xF:
            v15 = 0x736F6C4364617069;
            v14 = 0xEC00000052707565;
            break;
          case 0x10:
            v15 = 0x6964654D64617069;
            v14 = 0xED00004952506D75;
            break;
          case 0x11:
            v15 = 0x6C6C754664617069;
            v14 = 0xEF65737265766552;
            break;
          case 0x12:
            v15 = 0x736F6C4364617069;
            v14 = 0xEC00000050707565;
            break;
          case 0x13:
            v15 = 0xD000000000000014;
            v14 = 0x8000000100025590;
            break;
          case 0x14:
            v15 = 0x736F6C4364617069;
            v14 = 0xEC00000044707565;
            break;
          default:
            break;
        }

        v16 = 0x754664656C676E61;
        v17 = 0xEB00000000316C6CLL;
        switch(v6)
        {
          case 1:
            v17 = 0xE800000000000000;
            if (v15 == 0x31707565736F6C63)
            {
              goto LABEL_61;
            }

            goto LABEL_62;
          case 2:
            v17 = 0xE800000000000000;
            if (v15 != 0x32707565736F6C63)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 3:
            v17 = 0xE800000000000000;
            if (v15 != 0x33707565736F6C63)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 4:
            v17 = 0xE700000000000000;
            if (v15 != 0x316D756964656DLL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 5:
            v17 = 0xEB00000000326C6CLL;
            if (v15 != 0x754664656C676E61)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 6:
            v17 = 0xE500000000000000;
            if (v15 != 0x316C6C7566)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 7:
            v18 = 0x657665526C6C7566;
            v19 = 828732274;
            goto LABEL_55;
          case 8:
            v17 = 0xE800000000000000;
            v16 = 0x52707565736F6C63;
            goto LABEL_60;
          case 9:
            v17 = 0xEF316C6C75466465;
            if (v15 != 0x6C676E4164617069)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 10:
            v17 = 0xEB00000000316D75;
            if (v15 != 0x6964654D64617069)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 11:
            v17 = 0xEF326C6C75466465;
            if (v15 != 0x6C676E4164617069)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 12:
            v18 = 0x736F6C4364617069;
            v19 = 829453669;
            goto LABEL_55;
          case 13:
            v18 = 0x736F6C4364617069;
            v19 = 846230885;
            goto LABEL_55;
          case 14:
            v18 = 0x736F6C4364617069;
            v19 = 863008101;
            goto LABEL_55;
          case 15:
            v18 = 0x736F6C4364617069;
            v19 = 1383101797;
            goto LABEL_55;
          case 16:
            v17 = 0xED00004952506D75;
            if (v15 != 0x6964654D64617069)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 17:
            v17 = 0xEF65737265766552;
            if (v15 != 0x6C6C754664617069)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 18:
            v18 = 0x736F6C4364617069;
            v19 = 1349547365;
            goto LABEL_55;
          case 19:
            v17 = 0x8000000100025590;
            if (v15 != 0xD000000000000014)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 20:
            v18 = 0x736F6C4364617069;
            v19 = 1148220773;
LABEL_55:
            v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v15 != v18)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          default:
LABEL_60:
            if (v15 != v16)
            {
              goto LABEL_62;
            }

LABEL_61:
            if (v14 == v17)
            {

              goto LABEL_4;
            }

LABEL_62:
            v20 = sub_1000237AC();

            if (v20)
            {
              goto LABEL_4;
            }

            v10 = (v10 + 1) & v9;
            v11 = v10 >> 6;
            v12 = *(v5 + 8 * (v10 >> 6));
            v13 = 1 << v10;
            if ((v12 & (1 << v10)) == 0)
            {
              goto LABEL_67;
            }

            break;
        }
      }
    }

LABEL_67:
    *(v5 + 8 * v11) = v12 | v13;
    *(*(v3 + 48) + v10) = v6;
    v21 = *(v3 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      __break(1u);
      JUMPOUT(0x100019A24);
    }

    *(v3 + 16) = v23;
LABEL_4:
    v4 = v27;
  }

  while (v27 != v25);
  return v3;
}

void sub_100019B3C(uint64_t a1@<X0>, float64x2_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  __asm { FMOV            V2.2D, #0.5 }

  xa = vmulq_f64(*a1, _Q2);
  v23 = *&vmulq_f64(*(a1 + 16), _Q2);
  v20 = _simd_cos_d2(xa);
  v19 = _simd_cos_d2(v23);
  x = _simd_sin_d2(xa);
  v9 = _simd_sin_d2(v23);
  if (v3 == 2)
  {
    *&v16.f64[0] = v9.i64[0];
    v16.f64[1] = -*v9.i64;
    v17 = vmulq_f64(vzip1q_s64(v20, x), v16);
    v18 = vdupq_lane_s64(v9.i64[0], 0);
    v18.f64[0] = -v19.f64[0];
    v14 = vmlaq_f64(vmulq_f64(v17, vzip2q_s64(x, v20)), vzip2q_s64(v20, x), vmulq_f64(vzip1q_s64(v19, v20), vzip1q_s64(x, v19)));
    v15 = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(x, x, 8uLL), x), v18), vzip1q_s64(v9, v19), vmulq_f64(vextq_s8(v20, v20, 8uLL), v20));
  }

  else
  {
    if (v3 != 1)
    {
      v15 = unk_100027130;
      *a2 = xmmword_100027120;
      goto LABEL_7;
    }

    v10.f64[0] = v19.f64[0];
    v10.f64[1] = x.f64[1];
    v11 = vdupq_lane_s64(v9.i64[0], 0);
    v12.f64[1] = v11.f64[1];
    v12.f64[0] = -x.f64[0];
    *&v13.f64[0] = v9.i64[0];
    v13.f64[1] = v20.f64[1];
    v11.f64[0] = -v20.f64[0];
    v14 = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(x, x, 8uLL), v13), v11), vzip1q_s64(x, v19), vmulq_f64(vextq_s8(v20, v20, 8uLL), v10));
    v15 = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v12, x, 1), vzip1q_s64(v19, x)), vzip1q_s64(v9, v20), vmulq_f64(v20, vextq_s8(v20, v19, 8uLL)));
  }

  *a2 = v14;
LABEL_7:
  a2[1] = v15;
}

unint64_t sub_100019CA8()
{
  result = qword_10003CF60;
  if (!qword_10003CF60)
  {
    sub_1000105D4(&qword_10003CF68, qword_100027150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF60);
  }

  return result;
}

__n128 sub_100019D14@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, __n128 *a3@<X8>)
{
  result = vaddq_f32(*a1, *a2);
  result.n128_u32[3] = 0;
  *a3 = result;
  return result;
}

float32x4_t sub_100019D2C(float32x4_t *a1, float32x4_t *a2)
{
  result = vaddq_f32(*a2, *a1);
  result.i32[3] = 0;
  *a1 = result;
  return result;
}

__n128 sub_100019D44@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, __n128 *a3@<X8>)
{
  result = vsubq_f32(*a1, *a2);
  result.n128_u32[3] = 0;
  *a3 = result;
  return result;
}

float32x4_t sub_100019D5C(float32x4_t *a1, float32x4_t *a2)
{
  result = vsubq_f32(*a1, *a2);
  result.i32[3] = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100019D74()
{
  v0 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  sub_10000D9D4(v0, qword_10003D4F0);
  v1 = sub_100003EAC(v0, qword_10003D4F0);
  v2 = sub_1000232DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t *sub_100019E14(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v12 = *v6;
  *(v6 + 24) = 0;
  *(v6 + 100) = 0;
  v6[4] = 0;
  v6[5] = 0;
  v13 = OBJC_IVAR____TtC20PridePosterExtension22PrideParticlesRenderer_lastNonSnapshotState;
  sub_10002320C();
  v14 = [a1 newCommandQueue];
  if (v14)
  {
    v15 = v14;
    v81 = a6;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v82 = 0;
    v18 = [a1 newDefaultLibraryWithBundle:v17 error:&v82];

    v19 = v82;
    if (v18)
    {
      v78 = v13;
      v7[2] = a2;
      v7[3] = a3;
      v82 = 0x73736572676F7270;
      v83 = 0xE90000000000002DLL;

      v20 = v19;
      v84._countAndFlagsBits = a2;
      v84._object = a3;
      sub_10002348C(v84);

      v21 = v83;
      v22 = (v7 + OBJC_IVAR____TtC20PridePosterExtension22PrideParticlesRenderer_defaultsKey);
      *v22 = v82;
      v22[1] = v21;
      v23 = [objc_opt_self() standardUserDefaults];
      v24 = *v22;
      v25 = v22[1];

      v26 = sub_10002340C();

      [v23 floatForKey:v26];
      v28 = v27;

      *(v7 + 24) = v28;
      v29 = [objc_opt_self() currentDevice];
      v30 = [v29 userInterfaceIdiom];

      type metadata accessor for Particulator();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_100020750(a1, v18, 81, 250, 2, v30 == 1);
      v32 = v31;
      if (v31)
      {
        v7[6] = a1;
        v7[7] = v15;
        v7[11] = v31;
        v33 = objc_allocWithZone(MTLDepthStencilDescriptor);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        v34 = [v33 init];
        [v34 setDepthWriteEnabled:1];
        [v34 setDepthCompareFunction:6];
        v35 = [a1 newDepthStencilStateWithDescriptor:v34];
        if (v35)
        {
          v7[8] = v35;
          if (v81)
          {
            v77 = v34;
            swift_unknownObjectRetain();
            sub_100021D34(v81, a4 / a5);
            v36 = [v81 computeCommandEncoder];
            if (v36)
            {
              v76 = v36;
              if (qword_10003BEA8 != -1)
              {
                swift_once();
              }

              v37 = sub_10002335C();
              sub_100003EAC(v37, qword_10003D508);
              v38 = sub_10002333C();
              v39 = sub_10002358C();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                *v40 = 0;
                _os_log_impl(&_mh_execute_header, v38, v39, "initial update in setup command buffer", v40, 2u);
              }

              sub_100021F8C(v76, 0.0, 0.0, 0.0, 0.0, 0.0);
              [v76 endEncoding];
              swift_unknownObjectRelease();
              v41 = [objc_allocWithZone(MTLTextureDescriptor) init];
              [v41 setTextureType:4];
              [v41 setWidth:a4];
              [v41 setHeight:a5];
              [v41 setStorageMode:3];
              [v41 setUsage:4];
              [v41 setSampleCount:2];
              [v41 setPixelFormat:81];
              v42 = [a1 newTextureWithDescriptor:v41];
              if (v42)
              {
                v43 = v42;
                [v41 setPixelFormat:250];
                v44 = [a1 newTextureWithDescriptor:v41];

                if (v44)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  v7[9] = v43;
                  v7[10] = v44;
                  return v7;
                }

                swift_unknownObjectRelease();
              }

              else
              {
              }

              sub_100005838();
              swift_allocError();
              v55 = 1;
              *v63 = 1;
              swift_willThrow();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_34;
            }

            sub_100005838();
            swift_allocError();
            *v62 = 0;
            swift_willThrow();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
          }

          else
          {
            v56 = qword_10003BEA8;
            swift_unknownObjectRetain();
            if (v56 != -1)
            {
              swift_once();
            }

            v57 = sub_10002335C();
            sub_100003EAC(v57, qword_10003D508);
            v58 = sub_10002333C();
            v59 = sub_10002359C();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              _os_log_impl(&_mh_execute_header, v58, v59, "couldn’t make setup command buffer", v60, 2u);
            }

            sub_100005838();
            swift_allocError();
            *v61 = 0;
            swift_willThrow();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          v55 = 1;
LABEL_34:
          v13 = v78;
          swift_unknownObjectRelease();
          v64 = v7[3];

          v65 = v7[5];
          sub_10000D978(v7[4]);
          if (v32)
          {
            v66 = v7[6];
            swift_unknownObjectRelease();
            v67 = v7[7];
            swift_unknownObjectRelease();
            if (v55)
            {
              v68 = v7[8];
              swift_unknownObjectRelease();
            }

            v69 = v7[11];
          }

          else if (v55)
          {
            v70 = v7[8];
            swift_unknownObjectRelease();
          }

          v48 = 1;
          goto LABEL_41;
        }

        sub_100005838();
        swift_allocError();
        *v54 = 0;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_10003BEA8 != -1)
        {
          swift_once();
        }

        v49 = sub_10002335C();
        sub_100003EAC(v49, qword_10003D508);
        v50 = sub_10002333C();
        v51 = sub_10002359C();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "failed to set up Particulator", v52, 2u);
        }

        sub_100005838();
        swift_allocError();
        *v53 = 0;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      v55 = 0;
      goto LABEL_34;
    }

    v45 = v82;

    sub_10002308C();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100005838();
  swift_allocError();
  *v46 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v47 = v7[5];
  sub_10000D978(v7[4]);
  v48 = 0;
LABEL_41:
  v71 = sub_10002321C();
  (*(*(v71 - 8) + 8))(v7 + v13, v71);
  if (v48)
  {
    v72 = *(v7 + OBJC_IVAR____TtC20PridePosterExtension22PrideParticlesRenderer_defaultsKey + 8);
  }

  type metadata accessor for PrideParticlesRenderer();
  v73 = *(*v7 + 48);
  v74 = *(*v7 + 52);
  swift_deallocPartialClassInstance();
  return v7;
}

void sub_10001A878(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v94 = a2;
  v5 = v4;
  v99 = a4;
  v7 = sub_10002332C();
  v96 = *(v7 - 8);
  v97 = v7;
  v8 = *(v96 + 64);
  __chkstk_darwin(v7);
  v95 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002321C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000232FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002319C();
  sub_1000232EC();
  v21 = v20;
  v98 = *(v16 + 8);
  v98(v19, v15);
  if ((sub_1000231BC() & 1) == 0)
  {
    v22 = OBJC_IVAR____TtC20PridePosterExtension22PrideParticlesRenderer_lastNonSnapshotState;
    swift_beginAccess();
    v23 = *(v11 + 16);
    v92 = v22;
    v93 = v10;
    v23(v14, v5 + v22, v10);
    sub_10002319C();
    sub_1000232EC();
    v25 = v24;
    v98(v19, v15);
    if (v25 != 0.0 && (sub_10002319C(), sub_1000232EC(), v28 = v27, v98(v19, v15), v28 == 0.0) || (v26 = sub_1000231AC() & 1, v26 != (sub_1000231AC() & 1)))
    {
      v29 = *(v5 + 32);
      if (v29)
      {
        v30 = *(v5 + 40);

        v29(v31);
        sub_10000D978(v29);
      }
    }

    sub_10002319C();
    sub_1000232EC();
    v33 = v32;
    v34 = v98;
    v98(v19, v15);
    if (v33 != 1.0 || (sub_10002319C(), sub_1000232EC(), v36 = v35, v34(v19, v15), v36 == 1.0) || (*(v5 + 100) & 1) != 0)
    {
      sub_10002319C();
      sub_1000232EC();
      v38 = v37;
      v34(v19, v15);
      if (v38 != 0.0)
      {
        goto LABEL_25;
      }

      sub_10002319C();
      sub_1000232EC();
      v40 = v39;
      v34(v19, v15);
      if (v40 == 0.0 || *(v5 + 100) != 1)
      {
        goto LABEL_25;
      }

      if (qword_10003BEA8 != -1)
      {
        swift_once();
      }

      v41 = sub_10002335C();
      sub_100003EAC(v41, qword_10003D508);
      v42 = sub_10002333C();
      v43 = sub_10002358C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v91 = v42;
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v91, v43, "finished lock transition", v44, 2u);
        v42 = v91;
      }

      *(v5 + 100) = 0;
      v45 = *(v5 + 96);
    }

    else
    {
      if (qword_10003BEA8 != -1)
      {
        swift_once();
      }

      v46 = sub_10002335C();
      sub_100003EAC(v46, qword_10003D508);
      v47 = sub_10002333C();
      v48 = sub_10002358C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v91 = v47;
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v91, v48, "finished unlock transition", v49, 2u);
        v47 = v91;
      }

      v50 = remainderf(*(v5 + 96) + 0.2, 1.0);
      *(v5 + 96) = v50;
      *(v5 + 100) = 1;
      v45 = v50 + -0.2;
    }

    v51 = [objc_opt_self() standardUserDefaults];
    v52 = *(v5 + OBJC_IVAR____TtC20PridePosterExtension22PrideParticlesRenderer_defaultsKey);
    v53 = *(v5 + OBJC_IVAR____TtC20PridePosterExtension22PrideParticlesRenderer_defaultsKey + 8);
    v54 = sub_10002340C();
    *&v55 = v45;
    [v51 setFloat:v54 forKey:v55];

LABEL_25:
    v56 = v93;
    (*(v11 + 8))(v14, v93);
    v57 = v92;
    swift_beginAccess();
    (*(v11 + 24))(v5 + v57, a1, v56);
    swift_endAccess();
  }

  v58 = v21;
  v59 = [v99 computeCommandEncoder];
  if (v59)
  {
    v60 = v59;
    v61 = *(v5 + 88);
    sub_10002319C();
    sub_1000232EC();
    v63 = v62;
    v98(v19, v15);
    v65 = 0.3;
    if (*(v5 + 100))
    {
      v65 = 0.1;
    }

    v64 = v63;
    v66 = *(v5 + 96) + (v65 * v64);
    v67 = v95;
    sub_10002318C();
    sub_10002331C();
    v69 = v68;
    (*(v96 + 8))(v67, v97);
    v70 = v69;
    *&v69 = 1.0 - v70;
    sub_1000231CC();
    v72 = -v71;
    sub_1000231DC();
    sub_100021F8C(v60, v66, *&v69, v58, v72, v73);
    [v60 endEncoding];
    swift_unknownObjectRelease();
  }

  v74 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v75 = [v74 colorAttachments];
  v76 = [v75 objectAtIndexedSubscript:0];

  if (!v76)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v77 = *(v5 + 72);
  v78 = v76;
  [v78 setTexture:v77];
  [v78 setResolveTexture:v94];
  [v78 setLoadAction:2];
  if (sub_1000231AC())
  {
    v79 = 0.01;
  }

  else
  {
    v79 = 0.98;
  }

  v80 = v95;
  sub_10002318C();
  sub_10002331C();
  v82 = v81;
  (*(v96 + 8))(v80, v97);
  [v78 setClearColor:{v79 * v82 * ((v58 * -0.2) + 1.0), v79 * v82 * ((v58 * -0.2) + 1.0), v79 * v82 * ((v58 * -0.2) + 1.0), 1.0}];
  [v78 setStoreAction:2];

  v83 = [v74 depthAttachment];
  if (!v83)
  {
    goto LABEL_39;
  }

  v84 = *(v5 + 80);
  v85 = v83;
  [v85 setTexture:v84];
  [v85 setLoadAction:2];
  [v85 setClearDepth:0.0];
  [v85 setStoreAction:0];

  v86 = [v99 renderCommandEncoderWithDescriptor:v74];
  if (v86)
  {
    v87 = *(v5 + 88);
    v88 = v86;
    sub_1000223FC(v86);
    [v88 endEncoding];

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100005838();
    swift_allocError();
    *v89 = 2;
    swift_willThrow();
  }
}

char *sub_10001B244()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);
  sub_10000D978(*(v0 + 4));
  v3 = *(v0 + 6);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);
  swift_unknownObjectRelease();
  v6 = *(v0 + 9);
  swift_unknownObjectRelease();
  v7 = *(v0 + 10);
  swift_unknownObjectRelease();
  v8 = *(v0 + 11);

  v9 = OBJC_IVAR____TtC20PridePosterExtension22PrideParticlesRenderer_lastNonSnapshotState;
  v10 = sub_10002321C();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *&v0[OBJC_IVAR____TtC20PridePosterExtension22PrideParticlesRenderer_defaultsKey + 8];

  return v0;
}

uint64_t sub_10001B2F8()
{
  sub_10001B244();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrideParticlesRenderer()
{
  result = qword_10003CFA8;
  if (!qword_10003CFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B3A4()
{
  result = sub_10002321C();
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

uint64_t sub_10001B488@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003BEA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  v3 = sub_100003EAC(v2, qword_10003D4F0);

  return sub_100010CDC(v3, a1);
}

uint64_t *sub_10001B50C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v15 = type metadata accessor for PrideParticlesRenderer();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  result = sub_100019E14(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = v18;
  }

  return result;
}

uint64_t sub_10001B5CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_10000D978(v3);
}

uint64_t sub_10001B5E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002339C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1000233AC();
  v5 = sub_10002336C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_10002337C();
  sub_100002398(&qword_10003D118, &qword_1000273D0);
  v8 = *(sub_10002314C() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100027350;
  sub_10001BA7C(&qword_10003D120, &type metadata accessor for PRRenderingConfiguration);

  sub_10002313C();
  sub_10001BA7C(&qword_10003D128, &type metadata accessor for PREditingConfiguration);

  sub_10002313C();

  *a1 = v11;
  return result;
}

id sub_10001B83C(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_10001B87C()
{
  [objc_allocWithZone(type metadata accessor for UpdateController()) init];
  v0 = sub_100002398(&qword_10003D108, &unk_100027360);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_10002338C();
  sub_10001BAF8(&qword_10003D110);
  sub_10002317C();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001B9E0();
  sub_10001BAF8(&qword_10003D100);
  sub_10002315C();
  return 0;
}

unint64_t sub_10001B9E0()
{
  result = qword_10003D0F8;
  if (!qword_10003D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D0F8);
  }

  return result;
}

uint64_t sub_10001BA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001BAF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000105D4(&qword_10003D108, &unk_100027360);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10001BB48(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_10002370C();

    if (v4)
    {
      sub_100003EE4(0, &qword_10003D1F8, UIView_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100005A30(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_10001BC38(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_10002370C();

    if (v7)
    {
      a4(0);
      swift_dynamicCast();
      return v12;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
    }
  }

  return 0;
}

void sub_10001BCFC(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    *&v22 = *a1;
    *(&v22 + 1) = v4;
    v23 = v6;
    v24 = v5;
    v25 = *(a1 + 32);
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_10001EAF0(&v22, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v21;
  }

  else
  {
    v9 = *v2;
    v10 = sub_100005A80(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      *&v22 = *v3;
      if (!v14)
      {
        sub_10000721C();
        v15 = v22;
      }

      v16 = (*(v15 + 56) + 48 * v12);
      v17 = v16[1];
      v18 = v16[3];
      v19 = v16[5];

      sub_10001E39C(v12, v15);

      *v3 = v15;
    }

    else
    {
    }
  }
}

uint64_t sub_10001BE44(void *a1, void *a2)
{
  v72 = a1;
  v4 = sub_10002325C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v64 - v10;
  swift_getObjectType();
  v12 = [a2 sourceContents];
  swift_getObjectType();
  LODWORD(v13) = sub_100009700();
  result = swift_unknownObjectRelease();
  if (v13 == 4)
  {
    return result;
  }

  v73 = v2;
  v71 = v11;
  v68 = v9;
  if (qword_10003BEA8 != -1)
  {
    swift_once();
  }

  v15 = sub_10002335C();
  v64[1] = sub_100003EAC(v15, qword_10003D508);
  v16 = sub_10002333C();
  v17 = sub_10002358C();
  v18 = os_log_type_enabled(v16, v17);
  v66 = v13;
  if (v18)
  {
    v70 = v5;
    v65 = v4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v76 = v20;
    *v19 = 136446210;
    if (v13 > 1u)
    {
      if (v13 == 2)
      {
        v22 = 0xE600000000000000;
        v21 = 0x73746867696CLL;
      }

      else
      {
        v22 = 0xE400000000000000;
        v21 = 1684632167;
      }
    }

    else if (v13)
    {
      v21 = 0x656C636974726170;
      v22 = 0xE900000000000073;
    }

    else
    {
      v21 = 0x73657069727473;
      v22 = 0xE700000000000000;
    }

    v13 = sub_10000C980(v21, v22, &v76);

    *(v19 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v16, v17, "setting up with identifier “%{public}s”", v19, 0xCu);
    sub_100003F2C(v20);

    v4 = v65;
    v5 = v70;
    LOBYTE(v13) = v66;
  }

  else
  {
  }

  v23 = v71;
  v24 = v4;
  if (v13 > 1u)
  {
    if (v13 == 2)
    {
      v70 = type metadata accessor for PrideLightsRenderer();
      v25 = &unk_10003C620;
      v26 = type metadata accessor for PrideLightsRenderer;
    }

    else
    {
      v70 = type metadata accessor for PrideGridRenderer();
      v25 = &unk_10003C5B0;
      v26 = type metadata accessor for PrideGridRenderer;
    }
  }

  else if (v13)
  {
    v70 = type metadata accessor for PrideParticlesRenderer();
    v25 = &unk_10003C628;
    v26 = type metadata accessor for PrideParticlesRenderer;
  }

  else
  {
    v70 = type metadata accessor for PrideStripesRenderer();
    v25 = &unk_10003C630;
    v26 = type metadata accessor for PrideStripesRenderer;
  }

  v69 = sub_10000AD54(v25, v26);
  swift_unknownObjectRetain();
  sub_10001125C(&v76);
  v27 = v78;
  v67 = v77;
  v80 = v79;
  v81[0] = v76;
  v28 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_configurations;
  v29 = v73;
  swift_beginAccess();
  v30 = v72;
  sub_10001F314(v81, v74);

  sub_10001F370(&v80, v74);
  v31 = *(v29 + v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = *(v29 + v28);
  *(v29 + v28) = 0x8000000000000000;
  sub_10001EAF0(&v76, v30, isUniquelyReferenced_nonNull_native);
  v72 = v30;

  *(v29 + v28) = v74[0];
  swift_endAccess();
  if (v13 == 3)
  {
    v34 = &off_100034DC8;
  }

  else
  {
    if (v13 == 2)
    {
      *&v75 = _swiftEmptyArrayStorage;
      sub_100007474(0, 5, 0);
      v33 = v75;
      v65 = v24;
      v36 = *(v75 + 16);
      v35 = *(v75 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_100007474((v35 > 1), v36 + 1, 1);
        v33 = v75;
      }

      *(v33 + 16) = v37;
      v38 = v33 + 16 * v36;
      *(v38 + 32) = 6647407;
      *(v38 + 40) = 0xE300000000000000;
      *&v75 = v33;
      v39 = *(v33 + 24);
      v40 = v36 + 2;
      if (v37 >= v39 >> 1)
      {
        sub_100007474((v39 > 1), v40, 1);
        v33 = v75;
      }

      *(v33 + 16) = v40;
      v41 = v33 + 16 * v37;
      *(v41 + 32) = 7305076;
      *(v41 + 40) = 0xE300000000000000;
      *&v75 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        sub_100007474((v42 > 1), v43 + 1, 1);
        v33 = v75;
      }

      *(v33 + 16) = v44;
      v45 = v33 + 16 * v43;
      *(v45 + 32) = 0x6565726874;
      *(v45 + 40) = 0xE500000000000000;
      *&v75 = v33;
      v46 = *(v33 + 24);
      v47 = v43 + 2;
      if (v44 >= v46 >> 1)
      {
        sub_100007474((v46 > 1), v47, 1);
        v33 = v75;
      }

      *(v33 + 16) = v47;
      v48 = v33 + 16 * v44;
      *(v48 + 32) = 1920298854;
      *(v48 + 40) = 0xE400000000000000;
      *&v75 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_100007474((v49 > 1), v50 + 1, 1);
        v33 = v75;
      }

      *(v33 + 16) = v50 + 1;
      v51 = v33 + 16 * v50;
      *(v51 + 32) = 1702259046;
      *(v51 + 40) = 0xE400000000000000;
      v23 = v71;
      *v71 = v33;
      v24 = v65;
      goto LABEL_38;
    }

    v34 = &off_100035300;
  }

  *v23 = v34;
LABEL_38:
  v52 = v72;
  v53 = v67;
  (*(v5 + 104))(v23, enum case for WallpaperMetalCoordination.EditingCoordinator.LookSelectionStyle.paged(_:), v24);
  v75 = v81[0];

  v82._countAndFlagsBits = 44;
  v82._object = 0xE100000000000000;
  sub_10002348C(v82);
  v83._countAndFlagsBits = v53;
  v83._object = v27;
  sub_10002348C(v83);
  sub_10000ACC0(v81);

  sub_10000ABCC(&v80, &qword_10003D1D8, &unk_100027410);
  sub_10001CA9C(v52);
  (*(v5 + 16))(v68, v23, v24);
  v54 = sub_10002327C();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v57 = sub_10002323C();
  (*(v5 + 8))(v23, v24);
  v58 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_coordinators;
  v59 = v73;
  swift_beginAccess();
  v60 = *(v59 + v58);
  if ((v60 & 0xC000000000000001) != 0)
  {
    if (v60 < 0)
    {
      v61 = *(v59 + v58);
    }

    else
    {
      v61 = v60 & 0xFFFFFFFFFFFFFF8;
    }

    result = sub_1000236FC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    *(v59 + v58) = sub_10001DFDC(v61, result + 1);
  }

  else
  {
    v62 = *(v59 + v58);
  }

  v63 = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = *(v59 + v58);
  sub_10001E974(v57, v72, v63);
  *(v59 + v58) = v74[0];
  swift_endAccess();
}

uint64_t sub_10001CA9C(void *a1)
{
  v3 = sub_10001ED24(a1);
  v4 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_configurations;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {
    v6 = *(v1 + v4);

    v7 = sub_100005A80(a1);
    if (v8)
    {
      v9 = (*(v5 + 56) + 48 * v7);
      v10 = v9[1];
      v11 = v9[3];
      v40 = v9[4];
      v12 = v9[5];

      v13 = v3 >> 62;
      if (!v12)
      {
        goto LABEL_4;
      }

LABEL_12:

      [objc_msgSend(a1 "environment")];
      swift_unknownObjectRelease();
      swift_getObjectType();
      v21 = sub_100009700();
      swift_unknownObjectRelease();
      if (v21 > 1u)
      {
        if (v21 == 2)
        {

LABEL_19:

          if (sub_1000107C0(v40, v12) == 5)
          {

            v23 = sub_10001080C();
            if (v23 <= 2)
            {
              if (v23)
              {
                if (v23 != 1)
                {
                  v40 = 0x6565726874;
                  v24 = 0xE500000000000000;
                  goto LABEL_31;
                }

                v24 = 0xE300000000000000;
                v25 = 7305076;
              }

              else
              {
                v24 = 0xE300000000000000;
                v25 = 6647407;
              }

LABEL_30:
              v40 = v25;
LABEL_31:

LABEL_32:
              v39 = v13;
              v26 = v3 & 0xFFFFFFFFFFFFFF8;
              if (v13)
              {
LABEL_54:
                v27 = sub_10002373C();
              }

              else
              {
                v27 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v28 = 0;
              v29 = v3 & 0xC000000000000001;
              while (v27 != v28)
              {
                if (v29)
                {
                  v30 = sub_10002367C();
                }

                else
                {
                  if (v28 >= *(v26 + 16))
                  {
                    goto LABEL_53;
                  }

                  v30 = *(v3 + 8 * v28 + 32);
                }

                v31 = v30;
                if (__OFADD__(v28, 1))
                {
                  __break(1u);
LABEL_53:
                  __break(1u);
                  goto LABEL_54;
                }

                v32 = v3;
                v33 = [v30 identifier];
                v34 = sub_10002341C();
                v36 = v35;

                if (v34 == v40 && v36 == v24)
                {

                  return v40;
                }

                v38 = sub_1000237AC();

                ++v28;
                v3 = v32;
                if (v38)
                {

                  return v40;
                }
              }

              v14 = v3 & 0xFFFFFFFFFFFFFF8;
              if (!v39)
              {
                goto LABEL_5;
              }

LABEL_48:
              result = sub_10002373C();
              if (result)
              {
                goto LABEL_6;
              }

LABEL_49:

              return 0;
            }

            if (v23 == 3)
            {
              v24 = 0xE400000000000000;
              v25 = 1920298854;
              goto LABEL_30;
            }

            if (v23 == 4)
            {
              v24 = 0xE400000000000000;
              v25 = 1702259046;
              goto LABEL_30;
            }
          }

LABEL_27:
          v24 = v12;
          goto LABEL_32;
        }

        if (v21 != 3)
        {
          goto LABEL_27;
        }
      }

      v22 = sub_1000237AC();

      if ((v22 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }
  }

  v20 = [a1 environment];
  swift_getObjectType();
  sub_10001125C(v41);
  v12 = v42;
  v40 = v41[4];
  v13 = v3 >> 62;
  if (v42)
  {
    goto LABEL_12;
  }

LABEL_4:

  v14 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v13)
  {
    goto LABEL_48;
  }

LABEL_5:
  result = *(v14 + 16);
  if (!result)
  {
    goto LABEL_49;
  }

LABEL_6:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v16 = sub_10002367C();
    goto LABEL_9;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v3 + 32);
LABEL_9:
    v17 = v16;

    v18 = [v17 identifier];

    v19 = sub_10002341C();
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D3E0(void *a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_coordinators;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_10001BC38(a1, v8, sub_100005A80, &type metadata accessor for WallpaperMetalCoordination.EditingCoordinator);

  if (v9)
  {
    v11 = [a2 backgroundView];
    v12 = [a3 identifier];
    sub_10002341C();

    sub_10002324C();
  }

  return result;
}

id sub_10001D904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001D9E8(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v7 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v13 = a3;
    v18 = *v4;
    v19 = a2();
    if (v20)
    {
      v7 = v19;
      v21 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v6;
      v25 = *v6;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v17 = *(*(v23 + 56) + 8 * v7);
        sub_10001E210(v7, v23);
        *v6 = v23;
        return v17;
      }

LABEL_14:
      (v13)();
      v23 = v25;
      goto LABEL_10;
    }

    return 0;
  }

  if (v7 < 0)
  {
    v9 = *v4;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = a1;
  v11 = sub_10002370C();

  if (!v11)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v12 = sub_1000236FC();
  v13 = a4(v9, v12);

  v14 = (a2)(v10);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(*(v13 + 56) + 8 * v14);
  sub_10001E210(v14, v13);

  *v6 = v13;
  return v17;
}

Swift::Int sub_10001DB5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002398(&unk_10003C4D0, &unk_100027430);
    v2 = sub_10002376C();
    v19 = v2;
    sub_1000236EC();
    v3 = sub_10002371C();
    if (v3)
    {
      v4 = v3;
      sub_100003EE4(0, &unk_10003D200, PRRenderer_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100003EE4(0, &qword_10003D1F8, UIView_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100006488(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1000235DC(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10002371C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10001DDA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002398(&unk_10003D210, &unk_1000264D0);
    v2 = sub_10002376C();
    v19 = v2;
    sub_1000236EC();
    v3 = sub_10002371C();
    if (v3)
    {
      v4 = v3;
      sub_100003EE4(0, &unk_10003D200, PRRenderer_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000232CC();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000066F0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1000235DC(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10002371C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10001DFDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002398(&unk_10003D1E0, &qword_1000264A8);
    v2 = sub_10002376C();
    v19 = v2;
    sub_1000236EC();
    v3 = sub_10002371C();
    if (v3)
    {
      v4 = v3;
      sub_100003EE4(0, &qword_10003C488, PREditor_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10002327C();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100006704(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1000235DC(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10002371C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_10001E210(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10002361C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1000235DC(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_10001E39C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10002361C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = sub_1000235DC(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 48 * v3);
          v22 = (v20 + 48 * v6);
          if (v3 != v6 || v21 >= v22 + 3)
          {
            v9 = *v22;
            v10 = v22[2];
            v21[1] = v22[1];
            v21[2] = v10;
            *v21 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

_OWORD *sub_10001E534(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000588C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100006C40();
      goto LABEL_7;
    }

    sub_100005ED4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10000588C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000080DC(a2, v22);
      return sub_10001ECA8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1000237DC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100003F2C(v17);

  return sub_1000081FC(a1, v17);
}

uint64_t sub_10001E680(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100005A30(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100006488(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100005A30(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100003EE4(0, &unk_10003D200, PRRenderer_ptr);
        sub_1000237DC();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100006F40();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return _objc_retain_x1();
}

uint64_t sub_10001E7F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100005A30(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000066F0(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100005A30(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100003EE4(0, &unk_10003D200, PRRenderer_ptr);
        sub_1000237DC();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000070A0();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v23 = v19[2];
    v12 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v12)
    {
      v19[2] = v24;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

uint64_t sub_10001E974(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100005A80(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100006704(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100005A80(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100003EE4(0, &qword_10003C488, PREditor_ptr);
        sub_1000237DC();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000070B4();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v23 = v19[2];
    v12 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v12)
    {
      v19[2] = v24;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

uint64_t sub_10001EAF0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100005A80(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100006980(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100005A80(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100003EE4(0, &qword_10003C488, PREditor_ptr);
        sub_1000237DC();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10000721C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    v26 = (v19[7] + 48 * v8);
    v27 = a1[1];
    *v26 = *a1;
    v26[1] = v27;
    v26[2] = a1[2];
    v28 = v19[2];
    v12 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v12)
    {
      v19[2] = v29;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v20 = v19[7] + 48 * v8;
  v21 = *(v20 + 8);
  v22 = *(v20 + 24);
  v23 = *(v20 + 40);
  v24 = a1[1];
  *v20 = *a1;
  *(v20 + 16) = v24;
  *(v20 + 32) = a1[2];
}

_OWORD *sub_10001ECA8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000081FC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_10001ED24(void *a1)
{
  v2 = sub_10002312C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v32 = sub_1000233FC();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v32);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v31 - v9;
  [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v11 = sub_100009700();
  swift_unknownObjectRelease();
  if (v11 > 1u)
  {
    if (v11 == 2)
    {

      goto LABEL_8;
    }

    if (v11 != 3)
    {
LABEL_13:
      sub_100002398(&qword_10003C338, &qword_100026390);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000262E0;
      v22 = objc_allocWithZone(PREditingLook);
      v23 = sub_10002340C();
      v24 = sub_10002340C();
      v25 = [v22 initWithIdentifier:v23 displayName:v24];

      result = v21;
      *(v21 + 32) = v25;
      return result;
    }
  }

  v12 = sub_1000237AC();

  if (v12)
  {
LABEL_8:
    v33 = _swiftEmptyArrayStorage;
    sub_1000236BC();
    v13 = 0;
    v14 = (v4 + 32);
    v31[3] = "PLUMERIA_COLOR_4";
    v31[4] = "PLUMERIA_COLOR_2";
    v31[1] = "";
    v31[2] = "PLUMERIA_COLOR_5";
    v31[0] = "PLUMERIA_COLOR_3";
    do
    {
      v15 = *(&off_1000352B0 + v13 + 32);
      sub_1000233EC();
      (*v14)(v10, v8, v32);
      sub_10002311C();
      sub_10002342C();
      ++v13;
      v16 = objc_allocWithZone(PREditingLook);
      v17 = sub_10002340C();

      v18 = sub_10002340C();

      [v16 initWithIdentifier:v17 displayName:v18];

      sub_10002369C();
      v19 = v33[2];
      sub_1000236CC();
      sub_1000236DC();
      sub_1000236AC();
    }

    while (v13 != 5);
    return v33;
  }

  if (v11 > 2u)
  {
  }

  else
  {
    v20 = sub_1000237AC();

    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v33 = _swiftEmptyArrayStorage;
  sub_1000236BC();
  v27 = objc_allocWithZone(PREditingLook);

  v28 = sub_10002340C();

  v29 = sub_10002340C();
  [v27 initWithIdentifier:v28 displayName:v29];

  sub_10002369C();
  v30 = v33[2];
  sub_1000236CC();
  sub_1000236DC();
  sub_1000236AC();
  return v33;
}

uint64_t sub_10001F370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002398(&qword_10003D1D8, &unk_100027410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10001F3E0(void *a1)
{
  v1 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v2 = sub_100009700();
  swift_unknownObjectRelease();
  if (v2 != 4)
  {
    v3 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        return v3;
      }
    }

    else if (v2)
    {
      sub_100002398(&unk_10003D430, &qword_100026460);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1000263C0;
      v5 = [objc_opt_self() blackColor];
      v6 = [objc_allocWithZone(PRPosterColor) initWithColor:v5];

      *(v4 + 56) = sub_100003EE4(0, &qword_10003C340, PRPosterColor_ptr);
      *(v4 + 32) = v6;
      v7 = objc_allocWithZone(PREditorColorPalette);
      v8.super.isa = sub_1000234DC().super.isa;

      v9 = 1;
      v10 = [v7 initWithColors:v8.super.isa localizedName:0 showsColorWell:1];
LABEL_8:

      [v3 setColorPalette:v10];
      [v3 setColorWellDisplayMode:v9];
      isa = sub_1000234DC().super.isa;
      [v3 setSuggestedColors:isa];

      return v3;
    }

    v11 = objc_allocWithZone(PREditorColorPalette);
    v8.super.isa = sub_1000234DC().super.isa;
    v10 = [v11 initWithColors:v8.super.isa localizedName:0 showsColorWell:0];
    v9 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_10001F634(void *a1, void *a2)
{
  [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v3 = sub_100009700();
  swift_unknownObjectRelease();
  if (v3 > 2u)
  {
    if (v3 == 3)
    {

      goto LABEL_5;
    }

LABEL_9:
    v11 = 1;
    return v11 & 1;
  }

  v4 = sub_1000237AC();

  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = [a2 timeFontIdentifier];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_10002341C();
  v9 = v8;
  if (v7 == sub_10002341C() && v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1000237AC() ^ 1;
  }

  return v11 & 1;
}

double sub_10001F7E0(void *a1)
{
  v1 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v2 = sub_100009700();
  swift_unknownObjectRelease();
  if (v2 <= 1u)
  {
    if (v2)
    {

      return 0.9;
    }
  }

  else if (v2 != 2 && v2 != 3)
  {
    return PREditingLookLuminanceUnknown;
  }

  v3 = sub_1000237AC();

  if ((v3 & 1) == 0)
  {
    return PREditingLookLuminanceUnknown;
  }

  return 0.9;
}

uint64_t sub_10001F8FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC20PridePosterExtension17EditingController_configurations;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_100005A80(a1);
    if (v9)
    {
      v10 = (*(v7 + 56) + 48 * v8);
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];

      v15 = [a1 currentLook];
      v16 = [v15 identifier];

      sub_10002341C();
      sub_100010EF4([a1 environment]);

      swift_unknownObjectRelease();
      return (*(a3 + 16))(a3);
    }
  }

  if (qword_10003BEA8 != -1)
  {
    swift_once();
  }

  v17 = sub_10002335C();
  sub_100003EAC(v17, qword_10003D508);
  v18 = sub_10002333C();
  v19 = sub_10002359C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "no configuration identifier available, this wallpaper may forget things", v20, 2u);
  }

  return (*(a3 + 16))(a3);
}

Swift::Int sub_10001FC94()
{
  v1 = *v0;
  sub_10002382C();
  sub_10002345C();

  return sub_10002384C();
}

uint64_t sub_10001FD50()
{
  *v0;
  *v0;
  *v0;
  sub_10002345C();
}

Swift::Int sub_10001FDF8()
{
  v1 = *v0;
  sub_10002382C();
  sub_10002345C();

  return sub_10002384C();
}

uint64_t sub_10001FEB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002006C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001FEE0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x73657069727473;
  v4 = 0xE600000000000000;
  v5 = 0x73746867696CLL;
  if (*v1 != 2)
  {
    v5 = 1684632167;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C636974726170;
    v2 = 0xE900000000000073;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10001FF68()
{
  v1 = 0x73657069727473;
  v2 = 0x73746867696CLL;
  if (*v0 != 2)
  {
    v2 = 1684632167;
  }

  if (*v0)
  {
    v1 = 0x656C636974726170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001FFF0()
{
  v0 = sub_10002335C();
  sub_10000D9D4(v0, qword_10003D508);
  sub_100003EAC(v0, qword_10003D508);
  return sub_10002334C();
}

uint64_t sub_10002006C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100034E70;
  v6._object = a2;
  v4 = sub_10002378C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for PridePosterCommon.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PridePosterCommon.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PridePosterCommon.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PridePosterCommon.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002035C()
{
  result = qword_10003D220;
  if (!qword_10003D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D220);
  }

  return result;
}

unint64_t sub_1000203B4()
{
  result = qword_10003D228;
  if (!qword_10003D228)
  {
    sub_1000105D4(&qword_10003D230, qword_100027518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D228);
  }

  return result;
}

unint64_t sub_10002041C()
{
  result = qword_10003D238;
  if (!qword_10003D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D238);
  }

  return result;
}

void sub_100020478(uint64_t a1, uint64_t a2, float a3, double a4, double a5, __n128 a6)
{
  v6 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(a1 + 16);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = ceilf(vcvts_n_f32_u64(v9 & ~(v9 >> 63), 1uLL));
  if (v10 == INFINITY)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 <= -9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 >= 9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  if (v10 + 0x4000000000000000 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v7 + 2 * v11;
  if (__OFADD__(v7, 2 * v11))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFSUB__(v12, a2))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = (v12 - a2) * a3;
  *&a4 = floorf(v13);
  if ((LODWORD(a4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*&a4 <= -9.2234e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (*&a4 >= 9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!__OFADD__(*&a4, a2))
  {
    sub_100020578(a2, a2, *&a4 + a2, a1, v11, v12, a2, v13, a4, 4.09173971e149, a6);
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_100020578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8, double a9, double a10, __n128 a11)
{
  if (a2)
  {
    v11 = a6 - a7;
    if (__OFSUB__(a6, a7))
    {
      __break(1u);
    }

    else
    {
      v12 = a3 - a7;
      if (!__OFSUB__(a3, a7))
      {
        v13 = v12 & ~(v12 >> 63);
        if (v13 >= v11)
        {
          v13 = a6 - a7;
        }

        v14 = a3 + a1;
        if (!__OFADD__(a3, a1))
        {
          v15 = __OFADD__(v14, 1);
          v16 = v14 + 1;
          if (!v15)
          {
            v15 = __OFSUB__(v16, a2);
            v17 = v16 - a2;
            if (!v15)
            {
              v15 = __OFSUB__(v17, a7);
              v18 = v17 - a7;
              if (!v15)
              {
                v19 = v13;
                if (v18 < 0)
                {
                  if (v11 > 0)
                  {
                    a11.n128_u64[0] = 0;
                    v20 = 0.0;
                    if (v12 <= 0)
                    {
LABEL_15:
                      v21 = a2 - 1;
                      if (!__OFSUB__(a2, 1))
                      {
                        if (!__OFSUB__(a3, 1))
                        {
                          v33 = a11;
                          (sub_100020578)();
                          if (v33.n128_f32[0] != 0.0)
                          {
                            sub_100020578(a1, v21, a3, a4, a5, a6, a7, a8, v33);
                          }

                          return;
                        }

                        goto LABEL_35;
                      }

LABEL_34:
                      __break(1u);
LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_14:
                    a11.n128_f32[0] = (a8 - v19) / (v20 - v19);
                    goto LABEL_15;
                  }
                }

                else if (v18 < v11)
                {
                  v11 = v18;
                }

                v20 = v11;
                a11.n128_u64[0] = 0;
                if (v19 == v11)
                {
                  goto LABEL_15;
                }

                goto LABEL_14;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  if (__OFSUB__(a3, a5))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = *(a4 + 16);
  if (!v29)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v30 = v29 - 1;
  v31 = (a3 - a5) & ~((a3 - a5) >> 63);
  if (v31 >= v30)
  {
    v31 = v30;
  }

  v32 = *(a4 + 16 * v31 + 32);
}

void sub_100020750(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = *v6;
  v6[6] = 3;
  v6[21] = 0;
  v6[27] = 0;
  *(v6 + 53) = 0;
  v6[9] = 0;
  v6[10] = 0;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  v80 = v6;
  *(v6 + 208) = a6;
  v83 = _swiftEmptyArrayStorage;
  v84 = _swiftEmptyArrayStorage;
  v12 = [a1 newBufferWithLength:163840 options:32];
  if (!v12)
  {
LABEL_10:

LABEL_12:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v13 = v12;
  v76 = a3;
  v77 = a5;
  v78 = a4;
  v14 = 0;
  v81 = a1;
  while (1)
  {
    strcpy(v82, "particles ");
    BYTE3(v82[1]) = 0;
    HIDWORD(v82[1]) = -369098752;
    v85._countAndFlagsBits = sub_10002379C();
    sub_10002348C(v85);

    v15 = sub_10002340C();

    [v13 setLabel:v15];

    swift_unknownObjectRetain();
    sub_1000234CC();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000234FC();
    }

    sub_10002351C();
    v16 = v84;
    v17 = [v81 newBufferWithLength:2048 options:0];
    if (!v17)
    {

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v18 = v17;
    strcpy(v82, "curve points ");
    HIWORD(v82[1]) = -4864;
    v86._countAndFlagsBits = sub_10002379C();
    sub_10002348C(v86);

    v19 = sub_10002340C();

    [v18 setLabel:v19];

    swift_unknownObjectRetain();
    sub_1000234CC();
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000234FC();
    }

    sub_10002351C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v20 = v83;
    if (++v14 == 3)
    {
      break;
    }

    v13 = [v81 newBufferWithLength:163840 options:32];
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v6[7] = v16;
  v6[20] = v20;

  v23 = [v81 newBufferWithLength:0x20000 options:32];
  if (!v23)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v53 = v6[7];

LABEL_39:
    v64 = v80[20];

LABEL_40:
    type metadata accessor for Particulator();
    swift_deallocPartialClassInstance();
    return;
  }

  v24 = v23;
  v25 = sub_10002340C();
  [v24 setLabel:v25];

  v80[8] = v24;
  swift_unknownObjectRetain();
  v26 = sub_10002340C();
  v27 = [a2 newFunctionWithName:v26];

  if (!v27)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v28 = sub_10002340C();
  v29 = [a2 newFunctionWithName:v28];

  if (!v29)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_36:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v30 = sub_10002340C();
  v31 = [a2 newFunctionWithName:v30];

  if (!v31)
  {

LABEL_35:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v32 = sub_10002340C();
  v33 = [a2 newFunctionWithName:v32];

  if (!v33)
  {

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v82[0] = 0;
  v34 = [v81 newComputePipelineStateWithFunction:v27 error:v82];
  v35 = v82[0];
  v75 = v34;
  if (!v34 || (v80[2] = v34, v82[0] = 0, v36 = v35, v37 = [v81 newComputePipelineStateWithFunction:v29 error:v82], v35 = v82[0], !v37))
  {
    v54 = v35;

    sub_10002308C();

    swift_willThrow();
    v55 = 0;
LABEL_30:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (qword_10003BEA8 != -1)
    {
      swift_once();
    }

    v56 = sub_10002335C();
    sub_100003EAC(v56, qword_10003D508);
    swift_errorRetain();
    v57 = sub_10002333C();
    v58 = sub_10002359C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138543362;
      swift_errorRetain();
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v61;
      *v60 = v61;
      _os_log_impl(&_mh_execute_header, v57, v58, "couldn’t set up pipeline states: %{public}@", v59, 0xCu);
      sub_100022F10(v60);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    if (v75)
    {
      v65 = v80[2];
      swift_unknownObjectRelease();
      if ((v55 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (!v55)
    {
      goto LABEL_38;
    }

    v66 = v80[3];
LABEL_37:
    swift_unknownObjectRelease();
LABEL_38:
    v62 = v80[7];

    v63 = v80[8];
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v80[3] = v37;
  v38 = objc_allocWithZone(MTLRenderPipelineDescriptor);
  v39 = v35;
  v40 = [v38 init];
  v41 = [v40 colorAttachments];
  v42 = [v41 objectAtIndexedSubscript:0];

  if (v42)
  {

    [v42 setPixelFormat:v76];
    [v42 setBlendingEnabled:0];
    [v40 setRasterSampleCount:v77];
    [v40 setDepthAttachmentPixelFormat:v78];
    [v40 setVertexFunction:v31];
    [v40 setFragmentFunction:v33];
    v82[0] = 0;
    v43 = [v81 newRenderPipelineStateWithDescriptor:v40 error:v82];
    if (v43)
    {
      v44 = v43;
      v45 = v82[0];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v80[4] = v44;
      v46 = [objc_allocWithZone(MTLDepthStencilDescriptor) init];
      [v46 setDepthCompareFunction:4];
      [v46 setDepthWriteEnabled:1];
      v47 = [v81 newDepthStencilStateWithDescriptor:v46];
      if (v47)
      {
        v80[5] = v47;
        swift_unknownObjectRetain();
        v48 = sub_100021248(v81);
        if (v48)
        {
          v80[22] = v48;
          v80[23] = v49;
          v80[24] = v50;
          v80[25] = v51;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          sub_100022660(v52, 0);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v71 = v80[2];
        swift_unknownObjectRelease();
        v72 = v80[3];
        swift_unknownObjectRelease();
        v73 = v80[4];
        swift_unknownObjectRelease();
        v74 = v80[5];
      }

      else
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v68 = v80[2];
        swift_unknownObjectRelease();
        v69 = v80[3];
        swift_unknownObjectRelease();
        v70 = v80[4];
      }

      goto LABEL_37;
    }

    v67 = v82[0];
    sub_10002308C();

    swift_willThrow();
    v55 = 1;
    goto LABEL_30;
  }

  __break(1u);
}

id sub_100021248(uint64_t a1)
{
  v2 = sub_1000230BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = sub_10002340C();
  v10 = sub_10002340C();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (!v11)
  {
    return 0;
  }

  sub_1000230AC();

  v12 = [objc_allocWithZone(MTKMeshBufferAllocator) initWithDevice:a1];
  v13 = [objc_allocWithZone(MDLVertexDescriptor) init];
  sub_100002398(&unk_10003D430, &qword_100026460);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000263C0;
  v15 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributePosition format:786435 offset:0 bufferIndex:0];
  *(v14 + 56) = sub_100003EE4(0, &unk_10003C430, MDLVertexAttribute_ptr);
  *(v14 + 32) = v15;
  sub_100003EE4(0, &unk_10003D440, NSMutableArray_ptr);
  v16 = sub_1000235CC();
  [v13 setAttributes:v16];

  v17 = [v13 layouts];
  v18 = [v17 objectAtIndexedSubscript:0];

  sub_10002360C();
  swift_unknownObjectRelease();
  sub_100003EE4(0, &unk_10003C440, MDLVertexBufferLayout_ptr);
  swift_dynamicCast();
  v19 = v72;
  [v72 setStride:16];

  v20 = objc_allocWithZone(MDLAsset);
  v21 = v13;
  v22 = v12;
  sub_10002309C(v23);
  v25 = v24;
  v26 = [v20 initWithURL:v24 vertexDescriptor:v21 bufferAllocator:v22];

  sub_100003EE4(0, &unk_10003D450, MDLMesh_ptr);
  v27 = [v26 childObjectsOfClass:swift_getObjCClassFromMetadata()];
  sub_100003EE4(0, &unk_10003C450, MDLObject_ptr);
  v28 = sub_1000234EC();

  if (!(v28 >> 62))
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (!sub_10002373C())
  {
    goto LABEL_27;
  }

LABEL_4:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = sub_10002367C();
    goto LABEL_7;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v28 + 32);
LABEL_7:
    v30 = v29;

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      v71 = v2;
      v33 = objc_allocWithZone(MTKMesh);
      v73[0] = 0;
      v34 = v30;
      swift_unknownObjectRetain();
      v35 = [v33 initWithMesh:v32 device:a1 error:v73];
      if (!v35)
      {
        v48 = v73[0];
        sub_10002308C();

        swift_willThrow();
        swift_unknownObjectRelease();
        if (qword_10003BEA8 == -1)
        {
LABEL_22:
          v49 = sub_10002335C();
          sub_100003EAC(v49, qword_10003D508);
          swift_errorRetain();
          v50 = sub_10002333C();
          v51 = sub_10002359C();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v70 = v34;
            v53 = v52;
            v54 = swift_slowAlloc();
            *v53 = 138543362;
            swift_errorRetain();
            v55 = _swift_stdlib_bridgeErrorToNSError();
            *(v53 + 4) = v55;
            *v54 = v55;
            _os_log_impl(&_mh_execute_header, v50, v51, "couldn’t make MTKMesh: %{public}@", v53, 0xCu);
            sub_100022F10(v54);

            v56 = v70;
          }

          else
          {

            v22 = v50;
            v56 = v26;
          }

          (*(v3 + 8))(v6, v71);
          return 0;
        }

LABEL_47:
        swift_once();
        goto LABEL_22;
      }

      v36 = v35;
      v37 = v73[0];

      swift_unknownObjectRelease();
      v38 = [v36 submeshes];
      sub_100003EE4(0, &unk_10003D460, MTKSubmesh_ptr);
      v39 = sub_1000234EC();

      if (v39 >> 62)
      {
        v61 = sub_10002373C();
        v2 = v71;
        if (v61)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v2 = v71;
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_11:
          if ((v39 & 0xC000000000000001) != 0)
          {
            v40 = sub_10002367C();
LABEL_14:
            v69 = v40;

            v41 = [v36 vertexBuffers];
            sub_100003EE4(0, &unk_10003CAB0, MTKMeshBuffer_ptr);
            v42 = sub_1000234EC();

            if (v42 >> 62)
            {
              if (sub_10002373C())
              {
                goto LABEL_16;
              }
            }

            else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_16:
              v70 = v34;
              if ((v42 & 0xC000000000000001) != 0)
              {
                v43 = sub_10002367C();
                goto LABEL_19;
              }

              if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v43 = *(v42 + 32);
LABEL_19:
                v44 = v43;

                v45 = v69;
                v46 = [v69 indexBuffer];
                v67 = v46;
                v68 = [v44 buffer];
                v66[1] = [v46 buffer];
                [v36 vertexCount];
                [v45 indexCount];

                (*(v3 + 8))(v6, v71);
                return v68;
              }

              __break(1u);
              goto LABEL_50;
            }

            if (qword_10003BEA8 == -1)
            {
LABEL_43:
              v62 = sub_10002335C();
              sub_100003EAC(v62, qword_10003D508);
              v63 = sub_10002333C();
              v64 = sub_10002359C();
              if (os_log_type_enabled(v63, v64))
              {
                v65 = swift_slowAlloc();
                v70 = v34;
                *v65 = 0;
                _os_log_impl(&_mh_execute_header, v63, v64, "MTKMesh didn’t have buffers", v65, 2u);

                goto LABEL_33;
              }

              goto LABEL_32;
            }

LABEL_50:
            swift_once();
            goto LABEL_43;
          }

          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v40 = *(v39 + 32);
            goto LABEL_14;
          }

          __break(1u);
          goto LABEL_47;
        }
      }

      (*(v3 + 8))(v6, v2);

      return 0;
    }

LABEL_28:
    if (qword_10003BEA8 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_29:
  v57 = sub_10002335C();
  sub_100003EAC(v57, qword_10003D508);
  v58 = sub_10002333C();
  v59 = sub_10002359C();
  if (!os_log_type_enabled(v58, v59))
  {

LABEL_32:
    goto LABEL_33;
  }

  v60 = swift_slowAlloc();
  *v60 = 0;
  _os_log_impl(&_mh_execute_header, v58, v59, "couldn’t find mesh", v60, 2u);

LABEL_33:
  (*(v3 + 8))(v6, v2);
  return 0;
}

BOOL sub_100021D34(void *a1, float a2)
{
  v4 = [a1 computeCommandEncoder];
  if (v4)
  {
    v5 = sub_10002340C();
    [v4 setLabel:v5];

    [v4 setComputePipelineState:*(v2 + 16)];
    v6 = *(v2 + 56);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = sub_10002367C();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v7 = *(v6 + 32);
      swift_unknownObjectRetain();
    }

    [v4 setBuffer:v7 offset:0 atIndex:0];
    swift_unknownObjectRelease();
    v31 = 4;
    v32 = 64;
    [v4 setBytes:&v31 length:8 atIndex:2];
    sub_100022FF0(128, &v21);
    v19 = v21;
    v8 = v22.f64[0];
    sub_100022FF0(32, &v21);
    v9 = v22.f64[0];
    v10 = v21;
    v21 = v19;
    v22.f64[0] = v8;
    v29 = v10;
    v30 = v9;
    [v4 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v29];
    [v4 endEncoding];
    *(v2 + 72) = 0;
    *(v2 + 80) = CFAbsoluteTimeGetCurrent();
    sub_100023004(&v21, 2.11184839, a2);
    v12 = v21;
    v13 = v23;
    v17 = v24;
    v18 = v26;
    v14 = v25;
    v15 = v22;
    v20 = v28;
    v16 = v27;
    swift_unknownObjectRelease();
    *(v2 + 96) = vcvt_hight_f32_f64(vcvt_f32_f64(v12), v15);
    *(v2 + 112) = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v17);
    *(v2 + 128) = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v18);
    *(v2 + 144) = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v20);
  }

  return v4 != 0;
}

uint64_t sub_100021F8C(void *a1, float a2, float a3, float a4, float a5, float a6)
{
  v10 = v6;
  _S9 = a3;
  if (*(v6 + 216) == a6)
  {
    v17 = *(v6 + 160);
    v16 = *(v6 + 168);
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_30;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 8 * v16 + 32);
      swift_unknownObjectRetain();
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v9 = a6;
    if (qword_10003BEA8 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v19 = sub_10002335C();
  sub_100003EAC(v19, qword_10003D508);
  v20 = sub_10002333C();
  v21 = sub_10002358C();
  if (os_log_type_enabled(v20, v21))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v20, v21, "updating curve points for landscape amount %f", v7, 0xCu);
  }

  v23 = *(v10 + 168);
  _VF = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (_VF)
  {
    __break(1u);
    goto LABEL_35;
  }

  v26 = v25 % 3;
  *(v10 + 168) = v26;
  *v22.i32 = v9;
  sub_100022660(v26, v22);
  v28 = *(v10 + 160);
  v27 = *(v10 + 168);
  if ((v28 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v18 = sub_10002367C();
    goto LABEL_14;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = *(v28 + 8 * v27 + 32);
  swift_unknownObjectRetain();
LABEL_14:
  *(v10 + 216) = v9;
LABEL_15:
  while (1)
  {
    *(v10 + 220) = a5;
    v29 = *(v10 + 72);
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    swift_unknownObjectRetain();
    v31 = sub_10002340C();
    [a1 pushDebugGroup:v31];

    [a1 setComputePipelineState:*(v10 + 24)];
    v7 = *(v10 + 56);
    v32 = *(v10 + 72);
    v8 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_27;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v32 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v7 + 8 * v32 + 32);
      swift_unknownObjectRetain();
      goto LABEL_20;
    }

    __break(1u);
LABEL_30:
    v18 = sub_10002367C();
  }

  __break(1u);
LABEL_27:
  v33 = sub_10002367C();
LABEL_20:
  v34 = v30 % 3;
  [a1 setBuffer:v33 offset:0 atIndex:0];
  swift_unknownObjectRelease();
  if (!v8)
  {
    if ((v34 & 0x8000000000000000) == 0)
    {
      if (v34 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v7 + 8 * v34 + 32);
        swift_unknownObjectRetain();
        goto LABEL_25;
      }

LABEL_39:
      __break(1u);
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v35 = sub_10002367C();
LABEL_25:
  [a1 setBuffer:v35 offset:0 atIndex:1];
  swift_unknownObjectRelease();
  [a1 setBuffer:*(v10 + 64) offset:0 atIndex:2];
  [a1 setBuffer:v18 offset:0 atIndex:3];
  swift_unknownObjectRelease();
  v50 = 64;
  v49 = a2;
  __asm { FCVT            H0, S9 }

  v51 = _H0;
  [a1 setBytes:&v49 length:8 atIndex:4];
  sub_100022FF0(128, &v47);
  v44 = v47;
  v40 = v48;
  sub_100022FF0(32, &v47);
  v41 = v48;
  v42 = v47;
  v47 = v44;
  v48 = v40;
  v45 = v42;
  v46 = v41;
  [a1 dispatchThreadgroups:&v47 threadsPerThreadgroup:&v45];
  [a1 popDebugGroup];
  result = swift_unknownObjectRelease();
  *(v10 + 72) = v34;
  *(v10 + 212) = a4;
  return result;
}

id sub_1000223FC(void *a1)
{
  v3 = sub_10002340C();
  [a1 setLabel:v3];

  [a1 setRenderPipelineState:v1[2].i64[0]];
  [a1 setDepthStencilState:v1[2].i64[1]];
  [a1 setVertexBuffer:v1[4].i64[0] offset:0 atIndex:0];
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1[8];
  v15 = v1[9];
  v4 = 1.5708;
  if (!v1[13].i8[0])
  {
    v4 = 0.0;
  }

  v5 = __sincosf_stret(v1[13].f32[3] + v4);
  v6 = vmlaq_f32(vmulq_f32(v12, 0), 0, v13);
  v16[0] = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v12, v5.__cosval), v13, v5.__sinval), 0, v14), 0, v15);
  v16[1] = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v12, -v5.__sinval), v13, v5.__cosval), 0, v14), 0, v15);
  v7 = v1[13].f32[1];
  *&v8 = vadd_f32(vmul_n_f32(0xBCAC0831BCAC0840, v7), 1065353216);
  *(&v8 + 1) = DWORD1(v8);
  *&v9 = vadd_f32(vmul_n_f32(0xBD9374C0BD9374BCLL, v7), 0x3F80000000000000);
  *(&v9 + 1) = v9;
  *&v10 = (v7 * -0.007) + 0.0;
  *(&v10 + 1) = *&v10;
  *(&v10 + 1) = COERCE_UNSIGNED_INT((v7 * -0.007) + 1.0);
  v16[2] = vmlaq_f32(vaddq_f32(v14, v6), 0, v15);
  v16[3] = vaddq_f32(v15, vmlaq_f32(v6, 0, v14));
  v16[4] = v8;
  v16[5] = v9;
  v16[6] = v10;
  [a1 setVertexBytes:v16 length:112 atIndex:1];
  [a1 setVertexBuffer:v1[11].i64[0] offset:0 atIndex:2];
  [a1 setCullMode:0];
  return [a1 drawIndexedPrimitives:3 indexCount:v1[12].i64[1] indexType:1 indexBuffer:v1[11].i64[1] indexBufferOffset:0 instanceCount:4096];
}

uint64_t sub_100022660@<X0>(unint64_t a1@<X8>, int32x2_t a2@<D0>)
{
  v7 = *(v3 + 160);
  v6 = *(v3 + 168);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      a1 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 < a1)
      {
        v8 = *(v7 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_37:
    sub_100007454((a1 > 1), v4, 1);
    v27 = v64;
    a1 = v64[3];
    v28 = a1 >> 1;
    goto LABEL_12;
  }

  v8 = sub_10002367C();
LABEL_5:
  [v8 contents];
  v9 = v8;
  if (*(v3 + 208) == 1)
  {
    sub_100002398(&qword_10003C480, &qword_100027940);
    v10 = swift_allocObject();
    v10[1] = xmmword_100027700;
    v10[2] = xmmword_100027710;
    v11 = v10 + 2;
    v10[3] = xmmword_100027720;
    v10[4] = xmmword_100027730;
    v10[5] = xmmword_100027740;
    v10[6] = xmmword_100027750;
    v12 = swift_allocObject();
    v12[2] = xmmword_100027760;
    v13 = v12 + 2;
    v12[3] = xmmword_100027770;
    v12[4] = xmmword_100027780;
    v12[5] = xmmword_100027790;
    v14 = swift_allocObject();
    v14[1] = xmmword_100027700;
    v14[2] = xmmword_1000277A0;
    v15 = v14 + 2;
    v14[3] = xmmword_1000277B0;
    v14[4] = xmmword_1000277C0;
    v14[5] = xmmword_1000277D0;
    v14[6] = xmmword_1000277E0;
    v16 = swift_allocObject();
    v16[2] = xmmword_1000277F0;
    v17 = v16 + 2;
    v16[3] = xmmword_100027800;
    v16[4] = xmmword_100027810;
    v16[5] = xmmword_100027820;
    sub_100007454(0, 5, 0);
    v18 = 0;
    v19 = _swiftEmptyArrayStorage[2];
    v20 = vdupq_n_s32(0xBA83126F);
    v21 = *a2.i32;
    do
    {
      v22 = v11[v18];
      v23 = v15[v18];
      v24 = _swiftEmptyArrayStorage[3];
      if (v19 + v18 >= v24 >> 1)
      {
        v57 = v11[v18];
        v59 = v20;
        v56 = v15[v18];
        sub_100007454((v24 > 1), v19 + v18 + 1, 1);
        v23 = v56;
        v22 = v57;
        v20 = v59;
        v21 = *a2.i32;
      }

      v25 = vsubq_f32(v23, v22);
      v26 = vmuls_lane_f32(v21, v25, 2);
      v25.i64[0] = vmulq_f32(vaddq_f32(v22, vmulq_n_f32(v25, v21)), v20).u64[0];
      v25.f32[2] = (v22.f32[2] + v26) * 0.001;
      v25.i32[3] = 0;
      _swiftEmptyArrayStorage[2] = v19 + v18 + 1;
      *&_swiftEmptyArrayStorage[2 * v19 + 4 + 2 * v18++] = v25;
    }

    while (v18 != 5);

    sub_100007454(0, 4, 0);
    v44 = *a2.i32;
    v45 = 0;
    v46 = _swiftEmptyArrayStorage[2];
    *v47.f32 = vdup_lane_s32(a2, 0);
    v48 = vdupq_n_s32(0xBA83126F);
    do
    {
      v49 = v13[v45];
      v50 = v17[v45];
      v51 = _swiftEmptyArrayStorage[3];
      if (v46 + v45 >= v51 >> 1)
      {
        v61 = v48;
        v62 = v47;
        v58 = v17[v45];
        v60 = v13[v45];
        sub_100007454((v51 > 1), v46 + v45 + 1, 1);
        v50 = v58;
        v49 = v60;
        v48 = v61;
        v47 = v62;
        v44 = *a2.i32;
      }

      v52 = vsubq_f32(v50, v49);
      v53 = vmuls_lane_f32(v44, v52, 2);
      v52.i64[0] = vmulq_f32(vaddq_f32(v49, vmulq_f32(v52, v47)), v48).u64[0];
      v52.f32[2] = (v49.f32[2] + v53) * 0.001;
      v52.i32[3] = 0;
      _swiftEmptyArrayStorage[2] = v46 + v45 + 1;
      *&_swiftEmptyArrayStorage[2 * v46 + 4 + 2 * v45++] = v52;
    }

    while (v45 != 4);
    swift_setDeallocating();
    swift_deallocClassInstance();
    swift_setDeallocating();
    swift_deallocClassInstance();
    goto LABEL_33;
  }

  v5 = _swiftEmptyArrayStorage;
  v64 = _swiftEmptyArrayStorage;
  sub_100007454(0, 5, 0);
  v27 = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  a1 = _swiftEmptyArrayStorage[3];
  v28 = a1 >> 1;
  v4 = v2 + 1;
  if (a1 >> 1 <= v2)
  {
    goto LABEL_37;
  }

LABEL_12:
  v27[2] = v4;
  *&v27[2 * v2 + 4] = xmmword_100027670;
  if (v28 < (v2 + 2))
  {
    sub_100007454((a1 > 1), v2 + 2, 1);
    v27 = v64;
  }

  v27[2] = v2 + 2;
  *&v27[2 * v4 + 4] = xmmword_100027680;
  v30 = v27[2];
  v29 = v27[3];
  v31 = v29 >> 1;
  v32 = v30 + 1;
  if (v29 >> 1 <= v30)
  {
    sub_100007454((v29 > 1), v30 + 1, 1);
    v27 = v64;
    v29 = v64[3];
    v31 = v29 >> 1;
  }

  v27[2] = v32;
  *&v27[2 * v30 + 4] = xmmword_100027690;
  if (v31 < (v30 + 2))
  {
    sub_100007454((v29 > 1), v30 + 2, 1);
    v27 = v64;
  }

  v27[2] = v30 + 2;
  *&v27[2 * v32 + 4] = xmmword_1000276A0;
  v34 = v27[2];
  v33 = v27[3];
  if (v34 >= v33 >> 1)
  {
    sub_100007454((v33 > 1), v34 + 1, 1);
    v27 = v64;
  }

  v27[2] = v34 + 1;
  *&v27[2 * v34 + 4] = xmmword_1000276B0;
  sub_100007454(0, 4, 0);
  v35 = v5;
  v37 = v5[2];
  v36 = v5[3];
  v38 = v36 >> 1;
  v39 = v37 + 1;
  if (v36 >> 1 <= v37)
  {
    sub_100007454((v36 > 1), v37 + 1, 1);
    v35 = v5;
    v36 = v5[3];
    v38 = v36 >> 1;
  }

  v35[2] = v39;
  *&v35[2 * v37 + 4] = xmmword_1000276C0;
  if (v38 < (v37 + 2))
  {
    sub_100007454((v36 > 1), v37 + 2, 1);
    v35 = v5;
  }

  v35[2] = v37 + 2;
  *&v35[2 * v39 + 4] = xmmword_1000276D0;
  v41 = v35[2];
  v40 = v35[3];
  v42 = v40 >> 1;
  v43 = v41 + 1;
  if (v40 >> 1 <= v41)
  {
    sub_100007454((v40 > 1), v41 + 1, 1);
    v35 = v5;
    v40 = v5[3];
    v42 = v40 >> 1;
  }

  v35[2] = v43;
  *&v35[2 * v41 + 4] = xmmword_1000276E0;
  if (v42 < (v41 + 2))
  {
    sub_100007454((v40 > 1), v41 + 2, 1);
    v35 = v5;
  }

  v35[2] = v41 + 2;
  *&v35[2 * v43 + 4] = xmmword_1000276F0;
LABEL_33:
  v54 = sub_100003EE4(0, &qword_10003D470, OS_dispatch_queue_ptr);
  __chkstk_darwin(v54);
  sub_1000235AC();
}

void *sub_100022DAC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[7];

  v6 = v0[8];
  swift_unknownObjectRelease();
  v7 = v0[20];

  v9 = v0[22];
  v8 = v0[23];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100022E14()
{
  sub_100022DAC();

  return swift_deallocClassInstance();
}

__n128 sub_100022E6C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100022E78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100022EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100022F10(uint64_t a1)
{
  v2 = sub_100002398(&qword_10003C5A8, &unk_100027420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100022F78(uint64_t a1, double a2, double a3, double a4, __n128 a5)
{
  v7 = v5[2];
  v8 = v5[4];
  LODWORD(a3) = 1115422720;
  sub_100020478(v5[3], 3, a1 / 63.0, a3, a4, a5);
  *(v7 + 16 * a1) = v12;
  if (__OFADD__(a1, 64))
  {
    __break(1u);
  }

  else
  {
    sub_100020478(v8, 3, a1 / 63.0, v9, v10, v11);
    *(v7 + 16 * (a1 + 64)) = v13;
  }
}

int64x2_t sub_100022FF0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(1uLL);
  *(a2 + 8) = result;
  return result;
}

double sub_100023004@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = tan(a2 * 0.5);
  *&v6 = 0;
  *(&v6 + 1) = 1.0 / v5;
  *a1 = COERCE_UNSIGNED_INT64(1.0 / v5 / a3);
  a1[1] = 0u;
  a1[2] = v6;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = xmmword_100027830;
  result = 0.101010101;
  a1[6] = 0u;
  a1[7] = xmmword_100027840;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}