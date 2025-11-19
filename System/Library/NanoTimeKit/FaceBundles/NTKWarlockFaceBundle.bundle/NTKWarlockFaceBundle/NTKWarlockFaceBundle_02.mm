id sub_2D754()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockBackgroundEditOption();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WarlockBackgroundEditOption()
{
  result = qword_5A090;
  if (!qword_5A090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2D800()
{
  result = qword_5A158;
  if (!qword_5A158)
  {
    sub_D5DC(&qword_5A160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A158);
  }

  return result;
}

unint64_t sub_2D890(uint64_t a1)
{
  *(a1 + 8) = sub_2D8C0();
  result = sub_2D914();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2D8C0()
{
  result = qword_5A168;
  if (!qword_5A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A168);
  }

  return result;
}

unint64_t sub_2D914()
{
  result = qword_5A170;
  if (!qword_5A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A170);
  }

  return result;
}

unint64_t sub_2D96C()
{
  result = qword_5A178;
  if (!qword_5A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A178);
  }

  return result;
}

uint64_t sub_2D9C0()
{
  v0 = sub_36D80();
  sub_9EC8(v0, qword_5CDC8);
  sub_9F2C(v0, qword_5CDC8);
  return sub_36D70();
}

int32x2_t sub_2DA38()
{
  sub_815C(&qword_5A180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_414E0;
  v1 = [objc_allocWithZone(UIColor) initWithRed:0.828526676 green:0.689700007 blue:0.949999988 alpha:1.0];
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0x3F30902E3F541A53;
  *(v0 + 56) = 1064514355;
  v2 = [objc_allocWithZone(UIColor) initWithRed:0.902490139 green:0.466783494 blue:0.902490139 alpha:1.0];
  *(v0 + 64) = 1045220557;
  *(v0 + 72) = v2;
  *(v0 + 80) = 0x3EEEFE3F3F670998;
  *(v0 + 88) = 1063717272;
  v3 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
  *(v0 + 96) = 1058642330;
  *(v0 + 104) = v3;
  *(v0 + 112) = 1065353216;
  *(v0 + 120) = 1065353216;
  v4 = [objc_allocWithZone(UIColor) initWithRed:0.471000016 green:0.664966345 blue:1.0 alpha:1.0];
  *(v0 + 128) = 1061997773;
  *(v0 + 136) = v4;
  *(v0 + 144) = 0x3F2A3B3C3EF126EALL;
  *(v0 + 152) = 1065353216;
  v5 = [objc_allocWithZone(UIColor) initWithRed:0.258908004 green:0.258908004 blue:0.765999973 alpha:1.0];
  *(v0 + 160) = 1065353216;
  result = vdup_n_s32(0x3E848F97u);
  *(v0 + 168) = v5;
  *(v0 + 176) = result;
  *(v0 + 184) = 1061427347;
  qword_5CDE0 = v0;
  return result;
}

char *sub_2DC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = (a1 + 32);
  v7 = &_swiftEmptyArrayStorage;
  do
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (v4 >= *(a1 + 16))
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    v11 = *v10;
    v12 = *(v5 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2EDEC(0, *(v7 + 2) + 1, 1, v7);
    }

    v14 = *(v7 + 2);
    v13 = *(v7 + 3);
    if (v14 >= v13 >> 1)
    {
      v7 = sub_2EDEC((v13 > 1), v14 + 1, 1, v7);
    }

    ++v4;

    *(v7 + 2) = v14 + 1;
    v15 = &v7[32 * v14];
    *(v15 + 8) = v11;
    *(v15 + 5) = v12;
    *(v15 + 6) = v8;
    *(v15 + 14) = v9;
    ++v6;
    v5 += 32;
  }

  while (v2 != v4);
  return v7;
}

void sub_2DD44(uint64_t a1)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata identifier];
  if (!v3)
  {
    sub_37530();
    v3 = sub_37500();
  }

  v4 = [ObjCClassFromMetadata analyticsIdentifier];
  if (!v4)
  {
    sub_37530();
    v4 = sub_37500();
  }

  type metadata accessor for WarlockFace();
  v5 = [swift_getObjCClassFromMetadata() bundledFaceWithIdentifier:v3 analyticsIdentifier:v4 forDevice:a1 initCustomization:0];

  if (!v5)
  {
    __break(1u);
  }
}

id sub_2DF90()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_2DFEC(char a1, void *a2, void *a3, double a4)
{
  v8 = sub_2F964();
  if (a1)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v16 = v8;
  v17 = &off_53290;
  *&v15 = v9;
  sub_1BF44(&v15, v18);
  v10 = v19;
  v11 = v20;
  sub_AD00(v18, v19);
  v12 = (*(v11 + 8))(v10, v11, a4);
  if (a1)
  {
    v13 = 1.0 - v12;
  }

  else
  {
    v13 = v12;
  }

  sub_85EC(v18);
  return v13;
}

uint64_t sub_2E0B4()
{

  return _swift_deallocClassInstance(v0, 88, 7);
}

void sub_2E18C(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_frameIndex;
  v5 = __sincosf_stret((*(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_frameIndex) / 30.0) * 0.5236);
  v7.i32[0] = LODWORD(v5.__sinval);
  v6 = *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_aspectRatio);
  v7.f32[1] = -v5.__cosval;
  v8 = OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_state;
  v9 = *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_state);
  v10 = v9[5];
  v11 = v9[8].i8[0];
  _Q0.n128_u64[0] = v9[9];
  if (qword_58528 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v59 = v11;
    v60 = _Q0.n128_u64[0];
    v75 = v7;
    swift_once();
    v7 = v75;
    _Q0.n128_u64[0] = v60;
    v11 = v59;
LABEL_2:
    v13 = vmul_f32(v6, v7);
    v14 = sub_2DFEC(v11, qword_5CC98, unk_5CCA0, _Q0.n128_f64[0]);
    v15 = *(v2 + v8);
    v16 = *(v15 + 64);
    v17 = *(v15 + 72);
    if (qword_58530 != -1)
    {
      v61 = *(v15 + 64);
      v62 = *(v15 + 72);
      swift_once();
      v17 = v62;
      v16 = v61;
    }

    v18 = sub_2DFEC(v16, qword_5CCA8, unk_5CCB0, v17);
    v10 = vmul_f32(v6, v10);
    v6 = 0x3F0000003F000000;
    __asm { FMOV            V2.2S, #1.0 }

    *v24.f32 = vminnm_f32(vmaxnm_f32(vadd_f32(vadd_f32(vmul_f32(v13, vdup_n_s32(0x3E2E147Bu)), 0x3F0000003F000000), vmul_f32(v10, vdup_n_s32(0xBEC28F5C))), 0), _D2);
    v24.i32[2] = 1046059418;
    v25 = *(v2 + v8);
    v71 = vmlaq_n_f32(v24, vsubq_f32(xmmword_43A30, v24), (v18 * v18) * (3.0 - (v18 + v18)));
    v25[6] = vsub_f32(_D2, vadd_f32(v71.n128_u64[0], v71.n128_u64[0]));
    swift_beginAccess();
    v26 = v25[2];
    v27 = *(*&v26 + 16);
    v68 = v4;
    if (v27)
    {
      v28 = *&v26 + 32;

      __asm { FMOV            V0.2D, #-10.0 }

      v72 = _Q0;
      do
      {
        sub_2F000(v28, v77);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = v25[6];
          v31 = Strong;
          [Strong bounds];
          v33.f64[1] = v32;
          [*&v31[OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_headShapeLayer] setPosition:{vaddq_f64(vmulq_f64(v33, vcvtq_f64_f32(vsub_f32(0x3F0000003F000000, vmul_f32(v13, 0x3F0000003F000000)))), v72)}];
          swift_unknownObjectRelease();
        }

        sub_2F038(v77);
        v28 += 16;
        --v27;
      }

      while (v27);

      v4 = v68;
    }

    v34 = [a2 colorAttachments];
    v35 = [v34 objectAtIndexedSubscript:0];

    if (!v35)
    {
      break;
    }

    v36 = [v35 texture];
    if (!v36)
    {

      return;
    }

    v37 = v36;
    if (*(v4 + v2))
    {
      v25 = *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_patchworkMagicSpell);
      v66 = v2;
      v4 = *(v2 + v8);
      v6.i32[0] = v4[10].entrysize;
      v13.i32[0] = v4[10].count;
      swift_beginAccess();
      a2 = v4[7];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4[7] = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_52;
      }

      if (*(a2 + 2))
      {
        goto LABEL_15;
      }

LABEL_53:
      __break(1u);
      break;
    }

    NTKPatchworkMagic_Attack(*(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_patchworkMagicSpell), a1, v36);
    while (1)
    {
      swift_unknownObjectRelease();

      v57 = *(v4 + v2);
      _VF = __OFADD__(v57, 1);
      v58 = (v57 + 1);
      if (!_VF)
      {
        *(v4 + v2) = v58;
        return;
      }

      __break(1u);
LABEL_52:
      a2 = sub_2F950(a2);
      v4[7] = a2;
      if (!*(a2 + 2))
      {
        goto LABEL_53;
      }

LABEL_15:
      v64 = v25;
      v65 = v37;
      v40 = v14;
      v41 = 1.0 - v40;
      *&v39 = v41 * v13.f32[0];
      NTKPatchworkMagic_Sustain(v25, (a2 + 32), v71, v6.f32[0], vmul_f32(v10, vdup_n_s32(0x3E4CCCCDu)), v39, ((1.0 - (v41 * v41)) * 3.1416) * 0.25);
      v4[7] = a2;
      swift_endAccess();

      v2 = v66;
      v42 = *(v66 + v8);
      swift_beginAccess();
      a2 = *(v42 + 16);
      v25 = *(a2 + 2);
      if (v25)
      {
        break;
      }

LABEL_41:
      v37 = v65;
      NTKPatchworkMagic_Decay(v64, a1, v65);
      v4 = v68;
    }

    v63 = v35;
    v8 = (a2 + 32);

    v11 = swift_beginAccess();
    v43 = 0;
    v14 = 0.0000305175853;
    __asm { FMOV            V0.2D, #-10.0 }

    v71 = _Q0;
    v4 = &OBJC_INSTANCE_VARIABLES__TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad;
    v69 = v42;
    while (v43 < *(a2 + 2))
    {
      sub_2F000(v8, v76);
      v45 = swift_unknownObjectWeakLoadStrong();
      if (v45)
      {
        v46 = v45;
        v47 = *(v42 + 56);

        v11 = [v46 bounds];
        v73 = v7;
        if (v47[2] < 4uLL)
        {
          goto LABEL_45;
        }

        v70 = v48;
        v2 = OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_ambientShapeLayers;
        v6 = v47[4];
        v11 = swift_beginAccess();
        v49 = *&v46[v2];
        if ((v49 & 0xC000000000000001) != 0)
        {

          v50 = sub_37960();
        }

        else
        {
          if (!*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_46;
          }

          v50 = *(v49 + 32);
        }

        *&v51.f64[0] = v73;
        v51.f64[1] = v70;
        v74 = v51;
        [v50 setPosition:{vaddq_f64(vmulq_f64(v51, vcvtq_f64_f32(vadd_f32(vmul_f32(v6, 0x3F0000003F000000), 0x3F0000003F000000))), v71)}];

        v6 = v47[5];
        v52 = *&v46[v2];
        if ((v52 & 0xC000000000000001) != 0)
        {

          v53 = sub_37960();
        }

        else
        {
          if (*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
          {
            goto LABEL_47;
          }

          v53 = *(v52 + 40);
        }

        [v53 setPosition:{vaddq_f64(vmulq_f64(v74, vcvtq_f64_f32(vadd_f32(vmul_f32(v6, 0x3F0000003F000000), 0x3F0000003F000000))), v71)}];

        v6 = v47[6];
        v54 = *&v46[v2];
        if ((v54 & 0xC000000000000001) != 0)
        {

          v55 = sub_37960();
        }

        else
        {
          if (*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)) < 3uLL)
          {
            goto LABEL_48;
          }

          v55 = *(v54 + 48);
        }

        [v55 setPosition:{vaddq_f64(vmulq_f64(v74, vcvtq_f64_f32(vadd_f32(vmul_f32(v6, 0x3F0000003F000000), 0x3F0000003F000000))), v71)}];

        v6 = v47[7];
        v56 = *&v46[v2];
        if ((v56 & 0xC000000000000001) != 0)
        {

          v44 = sub_37960();
        }

        else
        {
          if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)) < 4uLL)
          {
            goto LABEL_49;
          }

          v44 = *(v56 + 56);
        }

        [v44 setPosition:{vaddq_f64(vmulq_f64(v74, vcvtq_f64_f32(vadd_f32(vmul_f32(v6, 0x3F0000003F000000), 0x3F0000003F000000))), v71)}];
        swift_unknownObjectRelease();

        v42 = v69;
      }

      v43 = (v43 + 1);
      v11 = sub_2F038(v76);
      v8 += 16;
      if (v25 == v43)
      {

        v2 = v66;
        v35 = v63;
        goto LABEL_41;
      }
    }

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
  }

  __break(1u);
}

void sub_2E9D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = CGColorSpaceCreateWithName(kCGColorSpaceGenericRGBLinear);
  if (!v24)
  {
    return;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 40);
    v9 = &_swiftEmptyArrayStorage;
    v6.i64[0] = COERCE_UNSIGNED_INT(1.0);
    v6.i32[2] = 1.0;
    v23 = v6;
    while (1)
    {
      v10 = v23;
      v10.i32[3] = *(v8 - 2);
      v25 = v10.u32[3];
      v26 = v10;
      v11 = *v8;
      v12 = [v11 CGColor];
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v24, kCGRenderingIntentPerceptual, v12, 0);

      if (CopyByMatchingToColorSpace)
      {
        v14 = sub_377E0();
        if (v14)
        {
          v15 = *(v14 + 16);
          if (!v15)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          if (v15 == 1)
          {
            goto LABEL_26;
          }

          if (v15 < 3)
          {
            goto LABEL_27;
          }

          v27 = vcvt_f32_f64(*(v14 + 32));
          v16 = *(v14 + 48);

          *&v17 = v16;
          *v18.f32 = v27;
          v18.i64[1] = __PAIR64__(v25, v17);
          v26 = v18;
        }

        else
        {
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2EEF8(0, v9[1].i64[0] + 1, 1, v9);
      }

      v20 = v9[1].u64[0];
      v19 = v9[1].u64[1];
      if (v20 >= v19 >> 1)
      {
        v9 = sub_2EEF8((v19 > 1), v20 + 1, 1, v9);
      }

      v9[1].i64[0] = v20 + 1;
      v9[v20 + 2] = v26;
      v8 += 4;
      if (!--v7)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_19:
  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_28;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v21 = v9[1].u64[0];
  if (v21 >> 31)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v22 = *(v3 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_patchworkMagicSpell);

  NTKPatchworkMagic_Tweak_RampLinear(v22, a2, v9 + 2, v21);
  swift_bridgeObjectRelease_n();
}

id sub_2EC7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockPatchworkQuad();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2ED50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2ED9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_2EDEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_815C(&qword_5A180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2EEF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_815C(&qword_5A3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2F068(char *result, int64_t a2, char a3, char *a4)
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
    sub_815C(&qword_59028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_2F174(void *result, int64_t a2, char a3, void *a4)
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
    sub_815C(&qword_5A400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2F2A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_815C(&qword_5A3D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_2F3A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2F474(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_D334(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_85EC(v11);
  return v7;
}

unint64_t sub_2F474(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2F580(a5, a6);
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
    result = sub_37980();
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

char *sub_2F580(uint64_t a1, unint64_t a2)
{
  v3 = sub_2F5CC(a1, a2);
  sub_2F6FC(&off_52080);
  return v3;
}

char *sub_2F5CC(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_2F7E8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_37980();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_375E0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2F7E8(v10, 0);
        result = sub_37930();
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

uint64_t sub_2F6FC(uint64_t result)
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

  result = sub_2F85C(result, v11, 1, v3);
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

void *sub_2F7E8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_815C(&unk_5A3F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2F85C(char *result, int64_t a2, char a3, char *a4)
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
    sub_815C(&unk_5A3F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_2F964()
{
  result = qword_5A3E0;
  if (!qword_5A3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_5A3E0);
  }

  return result;
}

id sub_2F9B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_frameIndex] = 0;
  v9 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_baseMediaTime];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_state] = a3;

  [a1 screenScale];
  v11 = v10;
  [a1 screenBounds];
  *&v14 = v12 / v13;
  __asm { FMOV            V1.2S, #1.0 }

  v19 = COERCE_DOUBLE(__PAIR64__(v14, LODWORD(_D1)));
  v20 = v13 / v12;
  *&_D1 = v20;
  if (_NF)
  {
    v22 = _D1;
  }

  else
  {
    v22 = v19;
  }

  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_aspectRatio] = v22;
  v23 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_screenSize];
  *v23 = v11 * v12;
  v23[1] = v11 * v13;
  v24 = [objc_allocWithZone(NTKPatchworkMagicSpell) init];
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_patchworkMagicSpell] = v24;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_colorPixelFormat] = a2;
  v25 = [objc_opt_self() sharedDevice];
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_mtlDevice] = v25;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();
  swift_unknownObjectRetain();
  v28 = [v27 bundleForClass:ObjCClassFromMetadata];
  v46 = 0;
  v29 = [v25 newDefaultLibraryWithBundle:v28 error:&v46];
  swift_unknownObjectRelease();

  v30 = v46;
  if (v29)
  {
    *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_library] = v29;
    v31 = v30;
LABEL_12:
    v45.receiver = v4;
    v45.super_class = type metadata accessor for WarlockPatchworkQuad();
    return objc_msgSendSuper2(&v45, "init");
  }

  v32 = v46;
  sub_36C50();

  swift_willThrow();
  if (qword_58578 != -1)
  {
    swift_once();
  }

  v33 = sub_36D80();
  sub_9F2C(v33, qword_5CDC8);
  swift_errorRetain();
  v34 = sub_36D60();
  v35 = sub_37800();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = ObjectType;
    v47 = v38;
    *v36 = 136315650;
    swift_getMetatypeMetadata();
    v39 = sub_37550();
    v41 = sub_2F3A8(v39, v40, &v47);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_2F3A8(0xD000000000000027, 0x800000000003B780, &v47);
    *(v36 + 22) = 2112;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 24) = v42;
    *v37 = v42;
    _os_log_impl(&dword_0, v34, v35, "%s: %s: %@", v36, 0x20u);
    sub_3050C(v37);

    swift_arrayDestroy();
  }

  result = [swift_unknownObjectRetain() newDefaultLibrary];
  if (result)
  {
    v44 = result;

    swift_unknownObjectRelease();
    *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_library] = v44;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_2FE10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_36C80();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = sub_37500();
  v10 = sub_37500();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  v12 = &unk_5A000;
  if (v11)
  {
    sub_36C70();

    v13 = [objc_allocWithZone(MTLBinaryArchiveDescriptor) init];
    sub_36C60(v14);
    v16 = v15;
    [v13 setUrl:v15];

    v17 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_mtlDevice);
    v55 = 0;
    v18 = [v17 newBinaryArchiveWithDescriptor:v13 error:&v55];
    if (v18)
    {
      v19 = v18;
      v20 = v55;

      (*(v4 + 8))(v6, v3);
      goto LABEL_11;
    }

    v21 = v55;
    v10 = sub_36C50();

    swift_willThrow();
    if (qword_58578 != -1)
    {
      swift_once();
    }

    v22 = sub_36D80();
    sub_9F2C(v22, qword_5CDC8);
    swift_errorRetain();
    v23 = sub_36D60();
    v24 = sub_37800();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v55 = ObjectType;
      v56 = v53;
      *v25 = 136315650;
      swift_getMetatypeMetadata();
      v26 = sub_37550();
      v52 = v24;
      v28 = sub_2F3A8(v26, v27, &v56);
      v54 = ObjectType;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2F3A8(0x6F66287075746573, 0xEB00000000293A72, &v56);
      *(v25 + 22) = 2080;
      swift_getErrorValue();
      v30 = sub_37B00();
      v32 = sub_2F3A8(v30, v31, &v56);

      *(v25 + 24) = v32;
      ObjectType = v54;
      _os_log_impl(&dword_0, v23, v52, "%s: %s Unable to create MTLBinaryArchive. Error: %s", v25, 0x20u);
      swift_arrayDestroy();

      v12 = &unk_5A000;
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
  }

  v19 = 0;
LABEL_11:
  v33 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_screenSize);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v33 <= -2147483650.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v33 >= 2147483650.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_screenSize + 8);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v34 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v34 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_20;
  }

  v35 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_patchworkMagicSpell);
  v36 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_library);
  v37 = *(v1 + v12[112]);
  v38 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_colorPixelFormat);
  v55 = 0;
  v39 = NTKPatchworkMagic_Init(v35, v36, v19, v37, v38, v33, v34, &v55);
  v3 = v55;
  if (v39)
  {
    v40 = v55;
    goto LABEL_23;
  }

  v41 = qword_58578;
  v10 = v55;
  if (v41 != -1)
  {
    goto LABEL_30;
  }

LABEL_20:
  v42 = sub_36D80();
  sub_9F2C(v42, qword_5CDC8);
  v43 = sub_36D60();
  v44 = sub_37800();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = ObjectType;
    v56 = v54;
    *v45 = 136315650;
    swift_getMetatypeMetadata();
    v47 = sub_37550();
    v49 = sub_2F3A8(v47, v48, &v56);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_2F3A8(0x6F66287075746573, 0xEB00000000293A72, &v56);
    *(v45 + 22) = 2112;
    *(v45 + 24) = v10;
    *v46 = v3;
    v50 = v10;
    _os_log_impl(&dword_0, v43, v44, "%s: %s: %@", v45, 0x20u);
    sub_3050C(v46);

    swift_arrayDestroy();
  }

LABEL_23:
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_frameIndex) = 0;
}

uint64_t sub_3050C(uint64_t a1)
{
  v2 = sub_815C(&qword_5A3E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_30574()
{
  v1 = v0;
  v2 = [v0 pigmentEditOption];
  v3 = [v2 collectionName];

  v4 = sub_37530();
  v6 = v5;

  v19 = v4;
  sub_1F520();
  LOBYTE(v4) = sub_37890();

  if ((v4 & 1) == 0)
  {
    return sub_30AEC();
  }

  v7 = [v1 configuration];
  v8 = [v7 colorOption];

  v9 = sub_37530();
  v11 = v10;

  v12 = sub_F3F4(v9, v11);
  if (v12 == 9)
  {
    return sub_30AEC();
  }

  if (qword_58588 != -1)
  {
    v18 = v12;
    swift_once();
    v12 = v18;
  }

  v13 = qword_5CDE8;
  if (!*(qword_5CDE8 + 16))
  {
    return sub_30AEC();
  }

  v14 = sub_3392C(v12);
  if ((v15 & 1) == 0)
  {
    return sub_30AEC();
  }

  v16 = *(*(v13 + 56) + 32 * v14);

  return v16;
}

uint64_t sub_30744(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v8 = 0xE700000000000000;
    v9 = 0xE600000000000000;
    v10 = 0x7265766C6973;
    if (a1 != 2)
    {
      v10 = 0x6B63616C6274656ALL;
      v9 = 0xE800000000000000;
    }

    v11 = 0x646C6F6765736F72;
    if (a1)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v11 = 0x6C61727574616ELL;
    }

    if (a1 <= 1u)
    {
      v6 = v11;
    }

    else
    {
      v6 = v10;
    }

    if (v2 <= 1)
    {
      v7 = v8;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v3 = 0x33306F726568;
    v4 = 0x34306F726568;
    if (a1 != 7)
    {
      v4 = 0x35306F726568;
    }

    if (a1 != 6)
    {
      v3 = v4;
    }

    v5 = 0x31306F726568;
    if (a1 != 4)
    {
      v5 = 0x32306F726568;
    }

    if (a1 <= 5u)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v7 = 0xE600000000000000;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v12 = 0xE600000000000000;
        if (v6 != 0x7265766C6973)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v6 != 0x6B63616C6274656ALL)
        {
          goto LABEL_50;
        }
      }
    }

    else if (a2)
    {
      v12 = 0xE800000000000000;
      if (v6 != 0x646C6F6765736F72)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v6 != 0x6C61727574616ELL)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        if (v6 != 0x31306F726568)
        {
          goto LABEL_50;
        }
      }

      else if (v6 != 0x32306F726568)
      {
LABEL_50:
        v13 = sub_37AD0();
        goto LABEL_51;
      }
    }

    else if (a2 == 6)
    {
      if (v6 != 0x33306F726568)
      {
        goto LABEL_50;
      }
    }

    else if (a2 == 7)
    {
      if (v6 != 0x34306F726568)
      {
        goto LABEL_50;
      }
    }

    else if (v6 != 0x35306F726568)
    {
      goto LABEL_50;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_50;
  }

  v13 = 1;
LABEL_51:

  return v13 & 1;
}

uint64_t sub_309BC()
{
  sub_375A0();
}

void *sub_30AEC()
{
  sub_815C(&qword_59048);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_43B80;
  *(v1 + 32) = [v0 seasonalDarkColor];
  *(v1 + 40) = [v0 seasonalLightColor];
  *(v1 + 48) = [v0 primaryColor];
  v2 = sub_30DB4(&off_51F70, v1);

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_41F30;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 blackColor];
  *(v3 + 40) = [v4 blackColor];
  *(v3 + 48) = [v0 seasonalLightColor];
  *(v3 + 56) = [v0 primaryColor];
  sub_30DB4(&off_51FA0, v3);

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_43B90;
  *(v5 + 32) = [v0 primaryColor];
  *(v5 + 40) = [v0 primaryColor];
  sub_30DB4(&off_51FD0, v5);

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_41F20;
  *(v6 + 32) = [v0 seasonalDarkColor];
  *(v6 + 40) = [v0 seasonalDarkColor];
  *(v6 + 48) = [v0 seasonalLightColor];
  *(v6 + 56) = [v0 primaryColor];
  *(v6 + 64) = [v0 primaryColor];
  sub_30DB4(&off_51FF8, v6);

  return v2;
}

void *sub_30DB4(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1[2];
  v36 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); ; i = sub_37A40())
  {
    if (i >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = i;
    }

    v42 = &_swiftEmptyArrayStorage;
    sub_34124(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
    }

    v34 = i;
    v37 = v4;
    v7 = v42;
    v35 = v2;
    v33 = v3;
    if (v6)
    {
      v8 = 0;
      v3 += 4;
      v9 = v2 & 0xC000000000000001;
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
      while (v37 != v8)
      {
        v10 = *(v3 + v8);
        if (v36)
        {
          v11 = sub_37A40();
        }

        else
        {
          v11 = *(v4 + 16);
        }

        if (v8 == v11)
        {
          goto LABEL_38;
        }

        if (v9)
        {
          v12 = sub_37960();
        }

        else
        {
          if (v8 >= *(v4 + 16))
          {
            goto LABEL_41;
          }

          v12 = *(v2 + 8 * v8 + 32);
        }

        v13 = v12;
        v40 = 0.0;
        v41 = 0.0;
        v38 = 0;
        v39 = 0.0;
        [v12 getRed:&v41 green:&v40 blue:&v39 alpha:&v38];
        v14 = v41;
        v15 = v40;
        v16 = v39;
        v17 = [objc_allocWithZone(UIColor) initWithRed:v14 green:v15 blue:v16 alpha:1.0];

        v42 = v7;
        v19 = v7[2];
        v18 = v7[3];
        if (v19 >= v18 >> 1)
        {
          sub_34124((v18 > 1), v19 + 1, 1);
          v7 = v42;
        }

        v7[2] = v19 + 1;
        v20 = &v7[4 * v19];
        *(v20 + 8) = v10;
        ++v8;
        v20[5] = v17;
        *(v20 + 12) = v14;
        *(v20 + 13) = v15;
        *(v20 + 14) = v16;
        v2 = v35;
        if (v6 == v8)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_21:
    v21 = v37;
    if (v37 <= v34)
    {
      break;
    }

    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    v22 = v2 & 0xC000000000000001;
    while (v6 < v21)
    {
      v23 = *(v33 + v6 + 8);
      if (v36)
      {
        if (v6 == sub_37A40())
        {
          return v7;
        }
      }

      else if (v6 == *(v4 + 16))
      {
        return v7;
      }

      if (v22)
      {
        v24 = sub_37960();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_40;
        }

        v24 = *(v2 + 8 * v6 + 32);
      }

      v3 = v24;
      v40 = 0.0;
      v41 = 0.0;
      v38 = 0;
      v39 = 0.0;
      [v24 getRed:&v41 green:&v40 blue:&v39 alpha:&v38];
      v25 = v41;
      v26 = v40;
      v27 = v39;
      v28 = [objc_allocWithZone(UIColor) initWithRed:v25 green:v26 blue:v27 alpha:1.0];

      v42 = v7;
      v30 = v7[2];
      v29 = v7[3];
      if (v30 >= v29 >> 1)
      {
        sub_34124((v29 > 1), v30 + 1, 1);
        v7 = v42;
      }

      v7[2] = v30 + 1;
      v31 = &v7[4 * v30];
      *(v31 + 8) = v23;
      ++v6;
      v31[5] = v28;
      *(v31 + 12) = v25;
      *(v31 + 13) = v26;
      *(v31 + 14) = v27;
      v21 = v37;
      v2 = v35;
      if (v37 == v6)
      {
        return v7;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  return v7;
}

uint64_t sub_3119C()
{
  sub_815C(&qword_5A408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_43BA0;
  *(inited + 32) = 0;
  sub_815C(&qword_5A180);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_415C0;
  v2 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v3 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v1 + 64) = 1045220557;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v4 = [objc_allocWithZone(UIColor) initWithRed:0.481999993 green:0.835966706 blue:1.0 alpha:1.0];
  *(v1 + 96) = 1061997773;
  *(v1 + 104) = v4;
  *(v1 + 112) = 0x3F5601EA3EF6C8B4;
  *(v1 + 120) = 1065353216;
  v5 = [objc_allocWithZone(UIColor) initWithRed:0.617699981 green:0.642313004 blue:0.709999979 alpha:1.0];
  *(v1 + 128) = 1065353216;
  *(v1 + 136) = v5;
  *(v1 + 144) = 0x3F246EA03F1E2196;
  *(v1 + 152) = 1060487823;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_415C0;
  v7 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v6 + 32) = 0;
  *(v6 + 40) = v7;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v8 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v6 + 64) = 1045220557;
  *(v6 + 72) = v8;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  v9 = [objc_allocWithZone(UIColor) initWithRed:0.481999993 green:0.835966706 blue:1.0 alpha:1.0];
  *(v6 + 96) = 1061997773;
  *(v6 + 104) = v9;
  *(v6 + 112) = 0x3F5601EA3EF6C8B4;
  *(v6 + 120) = 1065353216;
  v10 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v6 + 128) = 1065353216;
  *(v6 + 136) = v10;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_414E0;
  v12 = [objc_allocWithZone(UIColor) initWithRed:0.596000016 green:0.596000016 blue:0.596000016 alpha:1.0];
  *(v11 + 32) = 0;
  *(v11 + 40) = v12;
  *(v11 + 48) = vdup_n_s32(0x3F189375u);
  *(v11 + 56) = 1058575221;
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.60799998 green:0.73299998 blue:? alpha:?];
  *(v11 + 64) = 1053609165;
  *(v11 + 72) = v13;
  *(v11 + 80) = 0x3F3BA5E33F1BA5E3;
  *(v11 + 88) = 1061662228;
  v14 = [objc_allocWithZone(UIColor) initWithRed:0.481999993 green:0.835966706 blue:1.0 alpha:1.0];
  *(v11 + 96) = 1053944709;
  *(v11 + 104) = v14;
  *(v11 + 112) = 0x3F5601EA3EF6C8B4;
  *(v11 + 120) = 1065353216;
  v15 = [objc_allocWithZone(UIColor) initWithRed:0.0780000016 green:0.0780000016 blue:0.0780000016 alpha:1.0];
  *(v11 + 128) = 1060320051;
  *(v11 + 136) = v15;
  v16 = vdup_n_s32(0x3D9FBE77u);
  *(v11 + 144) = v16;
  *(v11 + 152) = 1033879159;
  v17 = [objc_allocWithZone(UIColor) initWithRed:0.0780000016 green:0.0780000016 blue:0.0780000016 alpha:1.0];
  *(v11 + 160) = 1065353216;
  *(v11 + 168) = v17;
  *(v11 + 176) = v16;
  *(v11 + 184) = 1033879159;
  v18 = sub_34794(v1);
  *(inited + 40) = v1;
  *(inited + 48) = v6;
  *(inited + 56) = v11;
  *(inited + 64) = v18;
  *(inited + 72) = 3;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_415C0;
  v20 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v19 + 32) = 0;
  *(v19 + 40) = v20;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  v21 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v19 + 64) = 1045220557;
  *(v19 + 72) = v21;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  v22 = [objc_allocWithZone(UIColor) initWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];
  *(v19 + 96) = 1061997773;
  *(v19 + 104) = v22;
  __asm { FMOV            V11.2S, #0.75 }

  *(v19 + 112) = _D11;
  *(v19 + 120) = 1061158912;
  v28 = [objc_allocWithZone(UIColor) initWithRed:0.0939999968 green:0.0939999968 blue:0.0939999968 alpha:1.0];
  *(v19 + 128) = 1065353216;
  *(v19 + 136) = v28;
  *(v19 + 144) = vdup_n_s32(0x3DC08312u);
  *(v19 + 152) = 1036026642;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_415C0;
  v30 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v29 + 32) = 0;
  *(v29 + 40) = v30;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  v31 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v29 + 64) = 1045220557;
  *(v29 + 72) = v31;
  *(v29 + 80) = 0;
  *(v29 + 88) = 0;
  v32 = [objc_allocWithZone(UIColor) initWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];
  *(v29 + 96) = 1061997773;
  *(v29 + 104) = v32;
  *(v29 + 112) = _D11;
  *(v29 + 120) = 1061158912;
  v33 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v29 + 128) = 1065353216;
  *(v29 + 136) = v33;
  *(v29 + 144) = 0;
  *(v29 + 152) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_414E0;
  v35 = [objc_allocWithZone(UIColor) initWithRed:0.219999999 green:0.219999999 blue:0.219999999 alpha:1.0];
  *(v34 + 32) = 0;
  *(v34 + 40) = v35;
  *(v34 + 48) = vdup_n_s32(0x3E6147AEu);
  *(v34 + 56) = 1046562734;
  v36 = [objc_allocWithZone(UIColor) initWithRed:0.446999997 green:0.446999997 blue:0.446999997 alpha:1.0];
  *(v34 + 64) = 1053609165;
  *(v34 + 72) = v36;
  *(v34 + 80) = vdup_n_s32(0x3EE4DD2Fu);
  *(v34 + 88) = 1055186223;
  v37 = [objc_allocWithZone(UIColor) initWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];
  *(v34 + 96) = 1053944709;
  *(v34 + 104) = v37;
  *(v34 + 112) = _D11;
  *(v34 + 120) = 1061158912;
  v38 = [objc_allocWithZone(UIColor) initWithRed:0.0780000016 green:0.0780000016 blue:0.0780000016 alpha:1.0];
  *(v34 + 128) = 1060320051;
  *(v34 + 136) = v38;
  *(v34 + 144) = v16;
  *(v34 + 152) = 1033879159;
  v39 = [objc_allocWithZone(UIColor) initWithRed:0.0780000016 green:0.0780000016 blue:0.0780000016 alpha:1.0];
  *(v34 + 160) = 1065353216;
  *(v34 + 168) = v39;
  *(v34 + 176) = v16;
  *(v34 + 184) = 1033879159;
  v40 = sub_34794(v19);
  *(inited + 80) = v19;
  *(inited + 88) = v29;
  *(inited + 96) = v34;
  *(inited + 104) = v40;
  *(inited + 112) = 1;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_415C0;
  v42 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v41 + 32) = 0;
  *(v41 + 40) = v42;
  *(v41 + 48) = 0;
  *(v41 + 56) = 0;
  v43 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v41 + 64) = 1045220557;
  *(v41 + 72) = v43;
  *(v41 + 80) = 0;
  *(v41 + 88) = 0;
  v44 = [objc_allocWithZone(UIColor) initWithRed:0.991433203 green:0.486000001 blue:1.0 alpha:1.0];
  *(v41 + 96) = 1061997773;
  *(v41 + 104) = v44;
  *(v41 + 112) = 0x3EF8D4FE3F7DCE91;
  *(v41 + 120) = 1065353216;
  v45 = [objc_allocWithZone(UIColor) initWithRed:0.850000024 green:0.669658303 blue:0.565249979 alpha:1.0];
  *(v41 + 128) = 1065353216;
  *(v41 + 136) = v45;
  *(v41 + 144) = 0x3F2B6EBA3F59999ALL;
  *(v41 + 152) = 1058059321;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_415C0;
  v47 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v46 + 32) = 0;
  *(v46 + 40) = v47;
  *(v46 + 48) = 0;
  *(v46 + 56) = 0;
  v48 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v46 + 64) = 1045220557;
  *(v46 + 72) = v48;
  *(v46 + 80) = 0;
  *(v46 + 88) = 0;
  v49 = [objc_allocWithZone(UIColor) initWithRed:0.991433203 green:0.486000001 blue:1.0 alpha:1.0];
  *(v46 + 96) = 1061997773;
  *(v46 + 104) = v49;
  *(v46 + 112) = 0x3EF8D4FE3F7DCE91;
  *(v46 + 120) = 1065353216;
  v50 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v46 + 128) = 1065353216;
  *(v46 + 136) = v50;
  *(v46 + 144) = 0;
  *(v46 + 152) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_414E0;
  v52 = [objc_allocWithZone(UIColor) initWithRed:0.666999996 green:0.579999983 blue:0.423999995 alpha:1.0];
  *(v51 + 32) = 0;
  *(v51 + 40) = v52;
  *(v51 + 48) = 0x3F147AE13F2AC083;
  *(v51 + 56) = 1054414471;
  v53 = [objc_allocWithZone(UIColor) initWithRed:0.73299998 green:0.569000006 blue:0.592000008 alpha:1.0];
  *(v51 + 64) = 1053609165;
  *(v51 + 72) = v53;
  *(v51 + 80) = 0x3F11A9FC3F3BA5E3;
  *(v51 + 88) = 1058508112;
  v54 = [objc_allocWithZone(UIColor) initWithRed:0.991433203 green:0.486000001 blue:1.0 alpha:1.0];
  *(v51 + 96) = 1053944709;
  *(v51 + 104) = v54;
  *(v51 + 112) = 0x3EF8D4FE3F7DCE91;
  *(v51 + 120) = 1065353216;
  v55 = [objc_allocWithZone(UIColor) initWithRed:0.0780000016 green:0.0780000016 blue:0.0780000016 alpha:1.0];
  *(v51 + 128) = 1060320051;
  *(v51 + 136) = v55;
  *(v51 + 144) = v16;
  *(v51 + 152) = 1033879159;
  v56 = [objc_allocWithZone(UIColor) initWithRed:0.0780000016 green:0.0780000016 blue:0.0780000016 alpha:1.0];
  *(v51 + 160) = 1065353216;
  *(v51 + 168) = v56;
  *(v51 + 176) = v16;
  *(v51 + 184) = 1033879159;
  v57 = sub_34794(v41);
  *(inited + 120) = v41;
  *(inited + 128) = v46;
  *(inited + 136) = v51;
  *(inited + 144) = v57;
  *(inited + 152) = 2;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_415C0;
  v59 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v58 + 32) = 0;
  *(v58 + 40) = v59;
  *(v58 + 48) = 0;
  *(v58 + 56) = 0;
  v60 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v58 + 64) = 1045220557;
  *(v58 + 72) = v60;
  *(v58 + 80) = 0;
  *(v58 + 88) = 0;
  v61 = [objc_allocWithZone(UIColor) initWithRed:0.857499957 green:1.0 blue:0.550000012 alpha:1.0];
  *(v58 + 96) = 1061997773;
  *(v58 + 104) = v61;
  *(v58 + 112) = 0x3F8000003F5B851ELL;
  *(v58 + 120) = 1057803469;
  v62 = [objc_allocWithZone(UIColor) initWithRed:0.779999971 green:0.779999971 blue:0.779999971 alpha:1.0];
  *(v58 + 128) = 1065353216;
  *(v58 + 136) = v62;
  *(v58 + 144) = vdup_n_s32(0x3F47AE14u);
  *(v58 + 152) = 1061662228;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_415C0;
  v64 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v63 + 32) = 0;
  *(v63 + 40) = v64;
  *(v63 + 48) = 0;
  *(v63 + 56) = 0;
  v65 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v63 + 64) = 1045220557;
  *(v63 + 72) = v65;
  *(v63 + 80) = 0;
  *(v63 + 88) = 0;
  v66 = [objc_allocWithZone(UIColor) initWithRed:0.857499957 green:1.0 blue:0.550000012 alpha:1.0];
  *(v63 + 96) = 1061997773;
  *(v63 + 104) = v66;
  *(v63 + 112) = 0x3F8000003F5B851ELL;
  *(v63 + 120) = 1057803469;
  v67 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v63 + 128) = 1065353216;
  *(v63 + 136) = v67;
  *(v63 + 144) = 0;
  *(v63 + 152) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_414E0;
  v69 = [objc_allocWithZone(UIColor) initWithRed:0.569000006 green:0.569000006 blue:0.569000006 alpha:1.0];
  *(v68 + 32) = 0;
  *(v68 + 40) = v69;
  *(v68 + 48) = vdup_n_s32(0x3F11A9FCu);
  *(v68 + 56) = 1058122236;
  v70 = [objc_allocWithZone(UIColor) initWithRed:0.620000005 green:0.675000012 blue:0.56099999 alpha:1.0];
  *(v68 + 64) = 1053609165;
  *(v68 + 72) = v70;
  *(v68 + 80) = 0x3F2CCCCD3F1EB852;
  *(v68 + 88) = 1057988018;
  v71 = [objc_allocWithZone(UIColor) initWithRed:0.857499957 green:1.0 blue:0.550000012 alpha:1.0];
  *(v68 + 96) = 1053944709;
  *(v68 + 104) = v71;
  *(v68 + 112) = 0x3F8000003F5B851ELL;
  *(v68 + 120) = 1057803469;
  v72 = [objc_allocWithZone(UIColor) initWithRed:0.0780000016 green:0.0780000016 blue:0.0780000016 alpha:1.0];
  *(v68 + 128) = 1060320051;
  *(v68 + 136) = v72;
  *(v68 + 144) = v16;
  *(v68 + 152) = 1033879159;
  v73 = [objc_allocWithZone(UIColor) initWithRed:0.0780000016 green:0.0780000016 blue:0.0780000016 alpha:1.0];
  *(v68 + 160) = 1065353216;
  *(v68 + 168) = v73;
  *(v68 + 176) = v16;
  *(v68 + 184) = 1033879159;
  v74 = sub_34794(v58);
  *(inited + 160) = v58;
  *(inited + 168) = v63;
  *(inited + 176) = v68;
  *(inited + 184) = v74;
  *(inited + 192) = 4;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_414E0;
  v76 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v75 + 32) = 0;
  *(v75 + 40) = v76;
  *(v75 + 48) = 0x3F30902E3F541A53;
  *(v75 + 56) = 1064514355;
  v77 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v75 + 64) = 1045220557;
  *(v75 + 72) = v77;
  *(v75 + 80) = 0x3EEEFE3F3F670998;
  *(v75 + 88) = 1063717272;
  v78 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
  *(v75 + 96) = 1058642330;
  *(v75 + 104) = v78;
  *(v75 + 112) = 1065353216;
  *(v75 + 120) = 1065353216;
  v79 = [objc_allocWithZone(UIColor) initWithRed:0.471000016 green:0.664966345 blue:1.0 alpha:1.0];
  *(v75 + 128) = 1061997773;
  *(v75 + 136) = v79;
  *(v75 + 144) = 0x3F2A3B3C3EF126EALL;
  *(v75 + 152) = 1065353216;
  v80 = [objc_allocWithZone(UIColor) initWithRed:0.258908004 green:0.258908004 blue:0.765999973 alpha:1.0];
  *(v75 + 160) = 1065353216;
  *(v75 + 168) = v80;
  v81 = vdup_n_s32(0x3E848F97u);
  *(v75 + 176) = v81;
  *(v75 + 184) = 1061427347;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_414E0;
  v83 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v82 + 32) = 0;
  *(v82 + 40) = v83;
  *(v82 + 48) = 0;
  *(v82 + 56) = 0;
  v84 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v82 + 64) = 1045220557;
  *(v82 + 72) = v84;
  *(v82 + 80) = 0;
  *(v82 + 88) = 0;
  v85 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
  *(v82 + 96) = 1058642330;
  *(v82 + 104) = v85;
  *(v82 + 112) = 1065353216;
  *(v82 + 120) = 1065353216;
  v86 = [objc_allocWithZone(UIColor) initWithRed:0.471000016 green:0.664966345 blue:1.0 alpha:1.0];
  *(v82 + 128) = 1061997773;
  *(v82 + 136) = v86;
  *(v82 + 144) = 0x3F2A3B3C3EF126EALL;
  *(v82 + 152) = 1065353216;
  v87 = [objc_allocWithZone(UIColor) initWithRed:0.258908004 green:0.258908004 blue:0.765999973 alpha:1.0];
  *(v82 + 160) = 1065353216;
  *(v82 + 168) = v87;
  *(v82 + 176) = v81;
  *(v82 + 184) = 1061427347;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_43BB0;
  v89 = [objc_allocWithZone(UIColor) initWithRed:0.258908004 green:0.258908004 blue:0.765999973 alpha:1.0];
  *(v88 + 32) = 0;
  *(v88 + 40) = v89;
  *(v88 + 48) = v81;
  *(v88 + 56) = 1061427347;
  v90 = [objc_allocWithZone(UIColor) initWithRed:0.258908004 green:0.258908004 blue:0.765999973 alpha:1.0];
  *(v88 + 64) = 1036831949;
  *(v88 + 72) = v90;
  *(v88 + 80) = v81;
  *(v88 + 88) = 1061427347;
  v91 = [objc_allocWithZone(UIColor) initWithRed:0.471000016 green:0.664966345 blue:1.0 alpha:1.0];
  *(v88 + 96) = 1055286886;
  *(v88 + 104) = v91;
  *(v88 + 112) = 0x3F2A3B3C3EF126EALL;
  *(v88 + 120) = 1065353216;
  v92 = [objc_allocWithZone(UIColor) initWithRed:0.859000027 green:0.416000009 blue:0.882000029 alpha:1.0];
  *(v88 + 128) = 1057803469;
  *(v88 + 136) = v92;
  *(v88 + 144) = 0x3ED4FDF43F5BE76DLL;
  *(v88 + 152) = 1063373505;
  v93 = [objc_allocWithZone(UIColor) initWithRed:0.902490139 green:0.466783494 blue:0.902490139 alpha:1.0];
  *(v88 + 160) = 1060320051;
  *(v88 + 168) = v93;
  *(v88 + 176) = 0x3EEEFE3F3F670998;
  *(v88 + 184) = 1063717272;
  v94 = [objc_allocWithZone(UIColor) initWithRed:0.828526676 green:0.689700007 blue:0.949999988 alpha:1.0];
  *(v88 + 192) = 1065353216;
  *(v88 + 200) = v94;
  *(v88 + 208) = 0x3F30902E3F541A53;
  *(v88 + 216) = 1064514355;
  v95 = sub_34794(v75);
  *(inited + 200) = v75;
  *(inited + 208) = v82;
  *(inited + 216) = v88;
  *(inited + 224) = v95;
  *(inited + 232) = 5;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_414E0;
  v97 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v96 + 32) = 0;
  *(v96 + 40) = v97;
  *(v96 + 48) = 0x3F7333333F318937;
  *(v96 + 56) = 1063800485;
  v98 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v96 + 64) = 1045220557;
  *(v96 + 72) = v98;
  *(v96 + 80) = 0x3F6B020C3EFAE148;
  *(v96 + 88) = 1062786302;
  v99 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v96 + 96) = 1058642330;
  *(v96 + 104) = v99;
  *(v96 + 112) = 0x3F0395813F158106;
  *(v96 + 120) = 1065353216;
  v100 = [objc_allocWithZone(UIColor) initWithRed:0.600000024 green:0.896000028 blue:1.0 alpha:1.0];
  *(v96 + 128) = 1061997773;
  *(v96 + 136) = v100;
  *(v96 + 144) = 0x3F6560423F19999ALL;
  *(v96 + 152) = 1065353216;
  v101 = [objc_allocWithZone(UIColor) initWithRed:0.200000003 green:0.791999996 blue:1.0 alpha:1.0];
  *(v96 + 160) = 1065353216;
  *(v96 + 168) = v101;
  *(v96 + 176) = 0x3F4AC0833E4CCCCDLL;
  *(v96 + 184) = 1065353216;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_414E0;
  v103 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v102 + 32) = 0;
  *(v102 + 40) = v103;
  *(v102 + 48) = 0;
  *(v102 + 56) = 0;
  v104 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v102 + 64) = 1045220557;
  *(v102 + 72) = v104;
  *(v102 + 80) = 0;
  *(v102 + 88) = 0;
  v105 = [objc_allocWithZone(UIColor) initWithRed:0.583999991 green:0.513999999 blue:1.0 alpha:1.0];
  *(v102 + 96) = 1058642330;
  *(v102 + 104) = v105;
  *(v102 + 112) = 0x3F0395813F158106;
  *(v102 + 120) = 1065353216;
  v106 = [objc_allocWithZone(UIColor) initWithRed:0.600000024 green:0.896000028 blue:1.0 alpha:1.0];
  *(v102 + 128) = 1061997773;
  *(v102 + 136) = v106;
  *(v102 + 144) = 0x3F6560423F19999ALL;
  *(v102 + 152) = 1065353216;
  v107 = [objc_allocWithZone(UIColor) initWithRed:0.200000003 green:0.791999996 blue:1.0 alpha:1.0];
  *(v102 + 160) = 1065353216;
  *(v102 + 168) = v107;
  *(v102 + 176) = 0x3F4AC0833E4CCCCDLL;
  *(v102 + 184) = 1065353216;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_41670;
  v109 = [objc_allocWithZone(UIColor) initWithRed:0.200000003 green:0.791999996 blue:1.0 alpha:1.0];
  *(v108 + 32) = 0;
  *(v108 + 40) = v109;
  *(v108 + 48) = 0x3F4AC0833E4CCCCDLL;
  *(v108 + 56) = 1065353216;
  v110 = [objc_allocWithZone(UIColor) initWithRed:0.200000003 green:0.791999996 blue:1.0 alpha:1.0];
  *(v108 + 64) = 1036831949;
  *(v108 + 72) = v110;
  *(v108 + 80) = 0x3F4AC0833E4CCCCDLL;
  *(v108 + 88) = 1065353216;
  v111 = [objc_allocWithZone(UIColor) initWithRed:0.600000024 green:0.896000028 blue:1.0 alpha:1.0];
  *(v108 + 96) = 1045220557;
  *(v108 + 104) = v111;
  *(v108 + 112) = 0x3F6560423F19999ALL;
  *(v108 + 120) = 1065353216;
  v112 = [objc_allocWithZone(UIColor) initWithRed:0.583999991 green:0.513999999 blue:1.0 alpha:1.0];
  *(v108 + 128) = 1054951342;
  *(v108 + 136) = v112;
  *(v108 + 144) = 0x3F0395813F158106;
  *(v108 + 152) = 1065353216;
  v113 = [objc_allocWithZone(UIColor) initWithRed:0.49000001 green:0.917999983 blue:0.847000003 alpha:1.0];
  *(v108 + 160) = 1058139013;
  *(v108 + 168) = v113;
  *(v108 + 176) = 0x3F6B020C3EFAE148;
  *(v108 + 184) = 1062786302;
  v114 = [objc_allocWithZone(UIColor) initWithRed:0.49000001 green:0.917999983 blue:0.847000003 alpha:1.0];
  *(v108 + 192) = 1059313418;
  *(v108 + 200) = v114;
  *(v108 + 208) = 0x3F6B020C3EFAE148;
  *(v108 + 216) = 1062786302;
  v115 = [objc_allocWithZone(UIColor) initWithRed:0.693499982 green:0.949999988 blue:0.90745002 alpha:1.0];
  *(v108 + 224) = 1065353216;
  *(v108 + 232) = v115;
  *(v108 + 240) = 1060210999;
  *(v108 + 244) = 0x3F684EA53F733333;
  v116 = sub_34794(v96);
  *(inited + 240) = v96;
  *(inited + 248) = v102;
  *(inited + 256) = v108;
  *(inited + 264) = v116;
  *(inited + 272) = 6;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_414E0;
  v118 = [objc_allocWithZone(UIColor) initWithRed:0.949999988 green:? blue:? alpha:?];
  *(v117 + 32) = 0;
  *(v117 + 40) = v118;
  *(v117 + 48) = 0x3F60985F3F733333;
  *(v117 + 56) = 1062362677;
  v119 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v117 + 64) = 1045220557;
  *(v117 + 72) = v119;
  *(v117 + 80) = 0x3F42D0E53F68B439;
  *(v117 + 88) = 1059095314;
  v120 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:? blue:? alpha:?];
  *(v117 + 96) = 1058642330;
  *(v117 + 104) = v120;
  *(v117 + 112) = 0x3F13F7CF3F800000;
  *(v117 + 120) = 1061954823;
  v121 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.542999983 blue:0.93144995 alpha:1.0];
  *(v117 + 128) = 1061997773;
  *(v117 + 136) = v121;
  *(v117 + 144) = 0x3F0B020C3F800000;
  *(v117 + 152) = 1064203137;
  v122 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.356999993 blue:0.340999991 alpha:1.0];
  *(v117 + 160) = 1065353216;
  *(v117 + 168) = v122;
  *(v117 + 176) = 0x3EB6C8B43F800000;
  *(v117 + 184) = 1051629453;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_414E0;
  v124 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v123 + 32) = 0;
  *(v123 + 40) = v124;
  *(v123 + 48) = 0;
  *(v123 + 56) = 0;
  v125 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v123 + 64) = 1045220557;
  *(v123 + 72) = v125;
  *(v123 + 80) = 0;
  *(v123 + 88) = 0;
  v126 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.578000009 blue:0.797439992 alpha:1.0];
  *(v123 + 96) = 1058642330;
  *(v123 + 104) = v126;
  *(v123 + 112) = 0x3F13F7CF3F800000;
  *(v123 + 120) = 1061954823;
  v127 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.542999983 blue:0.93144995 alpha:1.0];
  *(v123 + 128) = 1061997773;
  *(v123 + 136) = v127;
  *(v123 + 144) = 0x3F0B020C3F800000;
  *(v123 + 152) = 1064203137;
  v128 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.356999993 blue:0.340999991 alpha:1.0];
  *(v123 + 160) = 1065353216;
  *(v123 + 168) = v128;
  *(v123 + 176) = 0x3EB6C8B43F800000;
  *(v123 + 184) = 1051629453;
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_43BB0;
  v130 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.356999993 blue:0.340999991 alpha:1.0];
  *(v129 + 32) = 0;
  *(v129 + 40) = v130;
  *(v129 + 48) = 0x3EB6C8B43F800000;
  *(v129 + 56) = 1051629453;
  v131 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.542999983 blue:0.93144995 alpha:1.0];
  *(v129 + 64) = 1052266988;
  *(v129 + 72) = v131;
  *(v129 + 80) = 0x3F0B020C3F800000;
  *(v129 + 88) = 1064203137;
  v132 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.542999983 blue:0.93144995 alpha:1.0];
  *(v129 + 96) = 1054615798;
  *(v129 + 104) = v132;
  *(v129 + 112) = 0x3F0B020C3F800000;
  *(v129 + 120) = 1064203137;
  v133 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.578000009 blue:0.797439992 alpha:1.0];
  *(v129 + 128) = 1056964608;
  *(v129 + 136) = v133;
  *(v129 + 144) = 0x3F13F7CF3F800000;
  *(v129 + 152) = 1061954823;
  v134 = [objc_allocWithZone(UIColor) initWithRed:0.908999979 green:0.760999978 blue:0.626999974 alpha:1.0];
  *(v129 + 160) = 1061997773;
  *(v129 + 168) = v134;
  *(v129 + 176) = 0x3F42D0E53F68B439;
  *(v129 + 184) = 1059095314;
  v135 = [objc_allocWithZone(UIColor) initWithRed:0.949999988 green:0.877324998 blue:0.821749985 alpha:1.0];
  *(v129 + 192) = 1065353216;
  *(v129 + 200) = v135;
  *(v129 + 208) = 0x3F60985F3F733333;
  *(v129 + 216) = 1062362677;
  v136 = sub_34794(v117);
  *(inited + 280) = v117;
  *(inited + 288) = v123;
  *(inited + 296) = v129;
  *(inited + 304) = v136;
  *(inited + 312) = 7;
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_414E0;
  v138 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v137 + 32) = 0;
  *(v137 + 40) = v138;
  *(v137 + 48) = 0x3F7333333F6ED288;
  *(v137 + 56) = 1060210999;
  v139 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v137 + 64) = 1045220557;
  *(v137 + 72) = v139;
  *(v137 + 80) = 0x3F8000003F756815;
  *(v137 + 88) = 1053911154;
  v140 = [objc_allocWithZone(UIColor) initWithRed:0.275274992 green:0.847000003 blue:? alpha:?];
  *(v137 + 96) = 1058642330;
  *(v137 + 104) = v140;
  *(v137 + 112) = 0x3F58D4FE3E8CF0D8;
  *(v137 + 120) = 1053450340;
  v141 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
  *(v137 + 128) = 1061997773;
  *(v137 + 136) = v141;
  *(v137 + 144) = 0x3F7406C63F4D0E56;
  *(v137 + 152) = 1065353216;
  v142 = [objc_allocWithZone(UIColor) initWithRed:0.549000025 green:0.893999994 blue:1.0 alpha:1.0];
  *(v137 + 160) = 1065353216;
  *(v137 + 168) = v142;
  *(v137 + 176) = 0x3F64DD2F3F0C8B44;
  *(v137 + 184) = 1065353216;
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_414E0;
  v144 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v143 + 32) = 0;
  *(v143 + 40) = v144;
  *(v143 + 48) = 0;
  *(v143 + 56) = 0;
  v145 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v143 + 64) = 1045220557;
  *(v143 + 72) = v145;
  *(v143 + 80) = 0;
  *(v143 + 88) = 0;
  v146 = [objc_allocWithZone(UIColor) initWithRed:0.275274992 green:0.847000003 blue:0.395266652 alpha:1.0];
  *(v143 + 96) = 1058642330;
  *(v143 + 104) = v146;
  *(v143 + 112) = 0x3F58D4FE3E8CF0D8;
  *(v143 + 120) = 1053450340;
  v147 = [objc_allocWithZone(UIColor) initWithRed:0.800999999 green:0.953228354 blue:1.0 alpha:1.0];
  *(v143 + 128) = 1061997773;
  *(v143 + 136) = v147;
  *(v143 + 144) = 0x3F7406C63F4D0E56;
  *(v143 + 152) = 1065353216;
  v148 = [objc_allocWithZone(UIColor) initWithRed:0.549000025 green:0.893999994 blue:1.0 alpha:1.0];
  *(v143 + 160) = 1065353216;
  *(v143 + 168) = v148;
  *(v143 + 176) = 0x3F64DD2F3F0C8B44;
  *(v143 + 184) = 1065353216;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_41670;
  v150 = [objc_allocWithZone(UIColor) initWithRed:0.549000025 green:0.893999994 blue:1.0 alpha:1.0];
  *(v149 + 32) = 0;
  *(v149 + 40) = v150;
  *(v149 + 48) = 0x3F64DD2F3F0C8B44;
  *(v149 + 56) = 1065353216;
  v151 = [objc_allocWithZone(UIColor) initWithRed:0.549000025 green:0.893999994 blue:1.0 alpha:1.0];
  *(v149 + 64) = 1036831949;
  *(v149 + 72) = v151;
  *(v149 + 80) = 0x3F64DD2F3F0C8B44;
  *(v149 + 88) = 1065353216;
  v152 = [objc_allocWithZone(UIColor) initWithRed:0.800999999 green:0.953228354 blue:1.0 alpha:1.0];
  *(v149 + 96) = 1045220557;
  *(v149 + 104) = v152;
  *(v149 + 112) = 0x3F7406C63F4D0E56;
  *(v149 + 120) = 1065353216;
  v153 = [objc_allocWithZone(UIColor) initWithRed:0.275274992 green:0.847000003 blue:0.395266652 alpha:1.0];
  *(v149 + 128) = 1054951342;
  *(v149 + 136) = v153;
  *(v149 + 144) = 0x3F58D4FE3E8CF0D8;
  *(v149 + 152) = 1053450340;
  v154 = [objc_allocWithZone(UIColor) initWithRed:0.958619416 green:1.0 blue:0.408999979 alpha:1.0];
  *(v149 + 160) = 1058139013;
  *(v149 + 168) = v154;
  *(v149 + 176) = 0x3F8000003F756815;
  *(v149 + 184) = 1053911154;
  v155 = [objc_allocWithZone(UIColor) initWithRed:0.958619416 green:1.0 blue:0.408999979 alpha:1.0];
  *(v149 + 192) = 1059313418;
  *(v149 + 200) = v155;
  *(v149 + 208) = 0x3F8000003F756815;
  *(v149 + 216) = 1053911154;
  v156 = [objc_allocWithZone(UIColor) initWithRed:0.932899952 green:0.949999988 blue:0.693499982 alpha:1.0];
  *(v149 + 224) = 1065353216;
  *(v149 + 232) = v156;
  *(v149 + 240) = 0x3F7333333F6ED288;
  *(v149 + 248) = 1060210999;
  v157 = sub_34794(v137);
  *(inited + 320) = v137;
  *(inited + 328) = v143;
  *(inited + 336) = v149;
  *(inited + 344) = v157;
  *(inited + 352) = 8;
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_414E0;
  v159 = [objc_allocWithZone(UIColor) initWithRed:0.970000029 green:? blue:? alpha:?];
  *(v158 + 32) = 0;
  *(v158 + 40) = v159;
  *(v158 + 48) = 0x3F5F7CEE3F7851ECLL;
  *(v158 + 56) = 1064793778;
  v160 = [objc_allocWithZone(UIColor) initWithRed:0.970000029 green:? blue:? alpha:?];
  *(v158 + 64) = 1048723911;
  *(v158 + 72) = v160;
  *(v158 + 80) = 0x3F2E147B3F7851ECLL;
  *(v158 + 88) = 1064682127;
  v161 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:? blue:? alpha:?];
  *(v158 + 96) = 1057281559;
  *(v158 + 104) = v161;
  *(v158 + 112) = 0x3F0981E83F800000;
  *(v158 + 120) = 1053139402;
  v162 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.443661541 blue:0.262000024 alpha:1.0];
  *(v158 + 128) = 1061761118;
  *(v158 + 136) = v162;
  *(v158 + 144) = 0x3EE3279B3F800000;
  *(v158 + 152) = 1048978654;
  v163 = [objc_allocWithZone(UIColor) initWithRed:0.930000007 green:1.0 blue:0.449999988 alpha:1.0];
  *(v158 + 160) = 1065353216;
  *(v158 + 168) = v163;
  *(v158 + 176) = 0x3F8000003F6E147BLL;
  *(v158 + 184) = 1055286886;
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_414E0;
  v165 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v164 + 32) = 0;
  *(v164 + 40) = v165;
  *(v164 + 48) = 0;
  *(v164 + 56) = 0;
  v166 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  *(v164 + 64) = 1045220557;
  *(v164 + 72) = v166;
  *(v164 + 80) = 0;
  *(v164 + 88) = 0;
  v167 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.537138462 blue:0.385999978 alpha:1.0];
  *(v164 + 96) = 1057281559;
  *(v164 + 104) = v167;
  *(v164 + 112) = 0x3F0981E83F800000;
  *(v164 + 120) = 1053139402;
  v168 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.443661541 blue:0.262000024 alpha:1.0];
  *(v164 + 128) = 1061761118;
  *(v164 + 136) = v168;
  *(v164 + 144) = 0x3EE3279B3F800000;
  *(v164 + 152) = 1048978654;
  v169 = [objc_allocWithZone(UIColor) initWithRed:0.930000007 green:1.0 blue:0.449999988 alpha:1.0];
  *(v164 + 160) = 1065353216;
  *(v164 + 168) = v169;
  *(v164 + 176) = 0x3F8000003F6E147BLL;
  *(v164 + 184) = 1055286886;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_43BB0;
  v171 = [objc_allocWithZone(UIColor) initWithRed:0.930000007 green:1.0 blue:0.449999988 alpha:1.0];
  *(v170 + 32) = 0;
  *(v170 + 40) = v171;
  *(v170 + 48) = 0x3F8000003F6E147BLL;
  *(v170 + 56) = 1055286886;
  v172 = [objc_allocWithZone(UIColor) initWithRed:0.930000007 green:1.0 blue:0.449999988 alpha:1.0];
  *(v170 + 64) = 1034147594;
  *(v170 + 72) = v172;
  *(v170 + 80) = 0x3F8000003F6E147BLL;
  *(v170 + 88) = 1055286886;
  v173 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.443661541 blue:0.262000024 alpha:1.0];
  *(v170 + 96) = 1045220557;
  *(v170 + 104) = v173;
  *(v170 + 112) = 0x3EE3279B3F800000;
  *(v170 + 120) = 1048978654;
  v174 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.537138462 blue:0.385999978 alpha:1.0];
  *(v170 + 128) = 1049582633;
  *(v170 + 136) = v174;
  *(v170 + 144) = 0x3F0981E83F800000;
  *(v170 + 152) = 1053139402;
  v175 = [objc_allocWithZone(UIColor) initWithRed:0.970000029 green:0.680000007 blue:0.959999979 alpha:1.0];
  *(v170 + 160) = 1056964608;
  *(v170 + 168) = v175;
  *(v170 + 176) = 0x3F2E147B3F7851ECLL;
  *(v170 + 184) = 1064682127;
  v176 = [objc_allocWithZone(UIColor) initWithRed:0.970000029 green:0.873000026 blue:0.966654897 alpha:1.0];
  *(v170 + 192) = 1065353216;
  *(v170 + 200) = v176;
  *(v170 + 208) = 0x3F5F7CEE3F7851ECLL;
  *(v170 + 216) = 1064793778;
  v177 = sub_34794(v158);
  *(inited + 360) = v158;
  *(inited + 368) = v164;
  *(inited + 376) = v170;
  *(inited + 384) = v177;
  v178 = sub_348E8(inited);
  swift_setDeallocating();
  sub_815C(&qword_5A410);
  result = swift_arrayDestroy();
  qword_5CDE8 = v178;
  return result;
}

unint64_t sub_337CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_37900(*(v2 + 40));

  return sub_33AB8(a1, v4);
}

unint64_t sub_33810(char a1)
{
  sub_37B30();
  sub_37B40(a1 & 1);
  v2 = sub_37B80();

  return sub_33B80(a1 & 1, v2);
}

unint64_t sub_3387C(uint64_t a1)
{
  v2 = sub_37B20();

  return sub_33BF0(a1, v2);
}

unint64_t sub_338C0(Swift::UInt a1)
{
  sub_37B30();
  sub_37B40(a1);
  v2 = sub_37B80();

  return sub_33BF0(a1, v2);
}

unint64_t sub_3392C(unsigned __int8 a1)
{
  sub_37B30();
  sub_309BC();
  v2 = sub_37B80();

  return sub_33C5C(a1, v2);
}

unint64_t sub_33998(int a1)
{
  v2 = sub_37B10();

  return sub_33EF0(a1, v2);
}

unint64_t sub_339E4(uint64_t a1)
{
  sub_37530();
  sub_37B30();
  sub_375A0();
  v2 = sub_37B80();

  return sub_33F5C(a1, v2);
}

unint64_t sub_33A74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_37850(*(v2 + 40));

  return sub_34060(a1, v4);
}

unint64_t sub_33AB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_D2D8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_37910();
      sub_8638(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_33B80(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_33BF0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_33C5C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = 0xE700000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v25 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0x7265766C6973;
        }

        else
        {
          v10 = 0x6B63616C6274656ALL;
        }

        if (v7 == 2)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE800000000000000;
        }

        if (*(*(v25 + 48) + v4))
        {
          v12 = 0x646C6F6765736F72;
        }

        else
        {
          v12 = 0x6C61727574616ELL;
        }

        if (*(*(v25 + 48) + v4))
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xE700000000000000;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v9 = v12;
        }

        else
        {
          v9 = v10;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v8 = v13;
        }

        else
        {
          v8 = v11;
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        if (*(*(v25 + 48) + v4) <= 5u)
        {
          if (v7 == 4)
          {
            v9 = 0x31306F726568;
          }

          else
          {
            v9 = 0x32306F726568;
          }
        }

        else if (v7 == 6)
        {
          v9 = 0x33306F726568;
        }

        else if (v7 == 7)
        {
          v9 = 0x34306F726568;
        }

        else
        {
          v9 = 0x35306F726568;
        }
      }

      v14 = 0x35306F726568;
      if (v6 == 7)
      {
        v14 = 0x34306F726568;
      }

      if (v6 == 6)
      {
        v14 = 0x33306F726568;
      }

      v15 = 0x32306F726568;
      if (v6 == 4)
      {
        v15 = 0x31306F726568;
      }

      if (v6 <= 5)
      {
        v14 = v15;
      }

      if (v6 == 2)
      {
        v16 = 0x7265766C6973;
      }

      else
      {
        v16 = 0x6B63616C6274656ALL;
      }

      if (v6 == 2)
      {
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      if (v6)
      {
        v18 = 0x646C6F6765736F72;
      }

      else
      {
        v18 = 0x6C61727574616ELL;
      }

      if (v6)
      {
        v5 = 0xE800000000000000;
      }

      if (v6 <= 1)
      {
        v16 = v18;
        v17 = v5;
      }

      v19 = v6 <= 3 ? v16 : v14;
      v20 = v6 <= 3 ? v17 : 0xE600000000000000;
      if (v9 == v19 && v8 == v20)
      {
        break;
      }

      v21 = sub_37AD0();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        v5 = 0xE700000000000000;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_33EF0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_33F5C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_37530();
      v8 = v7;
      if (v6 == sub_37530() && v8 == v9)
      {
        break;
      }

      v11 = sub_37AD0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_34060(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_79FC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_37860();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_34124(char *a1, int64_t a2, char a3)
{
  result = sub_34184(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34144(char *a1, int64_t a2, char a3)
{
  result = sub_34290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34164(char *a1, int64_t a2, char a3)
{
  result = sub_343A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34184(char *result, int64_t a2, char a3, char *a4)
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
    sub_815C(&qword_5A180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_34290(char *result, int64_t a2, char a3, char *a4)
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
    sub_815C(&qword_59388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_343A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_815C(&qword_5A430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_344CC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_815C(a2);
  v4 = sub_37A70();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = sub_33810(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 56);
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 8);
    v16 = *v11;

    v9 = sub_33810(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_345D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_815C(&qword_589B0);
    v3 = sub_37A70();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_338C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_346B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_815C(&qword_5A428);
    v3 = sub_37A70();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_3387C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_34794(void *a1)
{
  v1 = a1[2];
  if (v1 >= 3)
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v18 = &off_51ED0;
      }

      else
      {
        v18 = &off_51F00;
      }

      v17 = sub_2DC14(v18, a1);
    }

    else
    {
      sub_815C(&qword_59048);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_43BC0;
      v5 = a1[5];
      *(v4 + 32) = v5;
      *(v4 + 40) = v5;
      v6 = a1[9];
      v7 = a1[13];
      *(v4 + 48) = v6;
      *(v4 + 56) = v7;
      v8 = a1[17];
      v9 = a1[21];
      *(v4 + 64) = v8;
      *(v4 + 72) = v9;
      *(v4 + 80) = v9;
      v10 = v5;
      v11 = v9;
      v12 = v10;
      v13 = v11;
      v14 = v6;
      v15 = v7;
      v16 = v8;
      v17 = sub_30DB4(&off_51F30, v4);
    }

    v2 = v17;
  }

  else
  {
    if (qword_58580 != -1)
    {
      swift_once();
    }

    v2 = qword_5CDE0;
  }

  return v2;
}

unint64_t sub_348E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_815C(&qword_5A418);
    v3 = sub_37A70();

    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 8);
      v12 = *i;
      v13 = i[1];

      result = sub_3392C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v12;
      v8[1] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_34A30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_815C(&qword_5A450);
    v3 = sub_37A70();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_339E4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_34B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_815C(&qword_5A448);
    v3 = sub_37A70();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_33998(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_34C20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_815C(a2);
    v7 = sub_37A70();
    v8 = a1 + 32;

    while (1)
    {
      sub_16B9C(v8, &v15, a4);
      v9 = v15;
      result = sub_339E4(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_85DC(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_34D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_815C(&qword_5A440);
    v3 = sub_37A70();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_33A74(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_34E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_815C(&qword_5A438);
    v3 = sub_37A70();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_33A74(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_35004()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockDebugView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_350B8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  *&v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_radius] = 0x4024000000000000;
  v11 = OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_headShapeLayer;
  *&v5[v11] = [objc_allocWithZone(CAShapeLayer) init];
  *&v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_ambientShapeLayers] = &_swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_state] = a1;
  v42.receiver = v5;
  v42.super_class = type metadata accessor for WarlockDebugView();
  v39 = a1;

  v12 = objc_msgSendSuper2(&v42, "initWithFrame:", a2, a3, a4, a5);
  v13 = OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_headShapeLayer;
  v14 = *&v12[OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_headShapeLayer];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = v12;
  v18 = [v15 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 20.0, 20.0, 10.0}];
  v19 = [v18 CGPath];

  v20 = v16;
  v21 = v19;
  [v20 setPath:v21];
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  v22 = CGRectGetMidX(v43) + -10.0;
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  [v20 setPosition:{v22, CGRectGetMidY(v44) + -10.0}];

  v23 = objc_opt_self();
  v24 = [v23 greenColor];
  v25 = [v24 CGColor];

  [v20 setFillColor:v25];
  v26 = [v17 layer];

  [v26 addSublayer:*&v12[v13]];
  v27 = OBJC_IVAR____TtC20NTKWarlockFaceBundle16WarlockDebugView_ambientShapeLayers;
  v28 = 4;
  do
  {
    v29 = [objc_allocWithZone(CAShapeLayer) init];

    v20 = v29;
    [v20 setPath:v21];
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    v30 = CGRectGetMidX(v45) + -10.0;
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    [v20 setPosition:{v30, CGRectGetMidY(v46) + -10.0}];
    v31 = [v23 cyanColor];
    v32 = [v31 CGColor];

    [v20 setFillColor:v32];
    swift_beginAccess();
    sub_37690();
    if (*(&dword_10 + (*&v17[v27] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v17[v27] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_376C0();
    }

    sub_376F0();
    swift_endAccess();
    v33 = [v17 layer];
    [v33 addSublayer:v20];

    --v28;
  }

  while (v28);

  swift_unknownObjectWeakInit();
  v41 = &off_53590;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v34 = *(v39 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v39 + 16) = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_2F174(0, v34[2] + 1, 1, v34);
    *(v39 + 16) = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_2F174((v36 > 1), v37 + 1, 1, v34);
  }

  v34[2] = v37 + 1;
  sub_35590(v40, &v34[2 * v37 + 4]);
  *(v39 + 16) = v34;
  swift_endAccess();

  return v17;
}

char *sub_356A0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_rampColorState;
  if (qword_58558 != -1)
  {
    swift_once();
  }

  v13 = qword_5CD28;
  *&v5[v12] = qword_5CD28;
  v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused] = 1;
  swift_retain_n();
  v14 = sub_37500();
  v15 = [objc_opt_self() quadViewWithFrame:v14 identifier:352 options:0 colorSpace:{a2, a3, a4, a5}];

  *&v6[OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView] = v15;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = [v16 colorPixelFormat];
  }

  else
  {
    v17 = &stru_20 + 39;
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v19 = result;
    objc_allocWithZone(type metadata accessor for WarlockPatchworkQuad());

    v20 = sub_2F9B0(v19, v17, a1);

    *&v6[OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quad] = v20;
    *&v6[v12] = v13;

    v33.receiver = v6;
    v33.super_class = type metadata accessor for WarlockBackgroundView();
    v21 = objc_msgSendSuper2(&v33, "initWithFrame:", a2, a3, a4, a5);
    v22 = OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quad;
    v23 = *&v21[OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quad];
    v24 = *&v21[OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_rampColorState];
    *(*&v23[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_state] + 80) = *(v24 + 32);
    v25 = v21;
    v26 = v23;

    sub_2E9D8(v27, 0);

    if (*(v24 + 24))
    {

      sub_2E9D8(v28, 1);
    }

    v29 = OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView;
    [*&v25[OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView] setPaused:v25[OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused]];
    [*&v25[v29] setPreferredFramesPerSecond:30];
    [v25 addSubview:*&v25[v29]];
    v30 = *&v21[v22];
    v31 = *&v25[v29];
    v32 = v30;
    [v31 addQuad:v32];

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_359C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    *(*(v3 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_rampColorState) + 16) = a1;
  }

  if (a2)
  {
    *(*(v3 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_rampColorState) + 24) = a2;
  }

  v6 = OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_rampColorState;
  if ((a3 & 0x100000000) == 0)
  {
    *(*(v3 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_rampColorState) + 32) = a3;
  }

  v7 = *(v3 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quad);
  v8 = *(v3 + v6);
  *(*&v7[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockPatchworkQuad_state] + 80) = *(v8 + 32);
  v11 = v7;

  sub_2E9D8(v9, 0);

  if (*(v8 + 24))
  {

    sub_2E9D8(v10, 1);
  }
}

uint64_t sub_35B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_37730();
  v7[6] = sub_37720();
  v9 = sub_37700();
  v7[7] = v9;
  v7[8] = v8;

  return _swift_task_switch(sub_35BB8, v9, v8);
}

uint64_t sub_35BB8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView);
  v0[9] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_35C70;
  v3 = v0[3];

  return sub_35E1C(v3);
}

uint64_t sub_35C70()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_35DB0, v4, v3);
}

uint64_t sub_35DB0()
{
  v1 = *(v0 + 32);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_35E1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_37730();
  v2[5] = sub_37720();
  v4 = sub_37700();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_35EB8, v4, v3);
}

uint64_t sub_35EB8()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  if (v1)
  {
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    v2 = *(v0 + 24);
    *(v0 + 104) = 0;
    *(v0 + 108) = 0;
    *(v0 + 80) = sub_37720();
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *(v3 + 16) = v0 + 104;
    *(v3 + 24) = v2;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_36020;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_36020()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_36180, v3, v2);
}

uint64_t sub_36180()
{
  os_unfair_lock_lock((v0 + 104));
  v1 = *(v0 + 108);
  os_unfair_lock_unlock((v0 + 104));
  if ((v1 & 1) != 0 || (v2 = *(v0 + 72) + 1, *(v0 + 72) == 9))
  {
    v3 = *(v0 + 64) + 1;
    if (v3 == *(v0 + 16))
    {

      v4 = *(v0 + 8);

      return v4();
    }

    v2 = 0;
    *(v0 + 64) = v3;
  }

  *(v0 + 72) = v2;
  v6 = *(v0 + 24);
  *(v0 + 104) = 0;
  *(v0 + 108) = 0;
  *(v0 + 80) = sub_37720();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v0 + 104;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_36020;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

id sub_3634C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_36400(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_815C(&qword_5A4F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  os_unfair_lock_lock(a2);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_36670;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BBB4;
  aBlock[3] = &unk_535D0;
  v12 = _Block_copy(aBlock);

  LOBYTE(a3) = [a3 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0 completion:v12];
  _Block_release(v12);
  *(a2 + 4) = a3;
  os_unfair_lock_unlock(a2);
}

uint64_t sub_365DC()
{
  v1 = sub_815C(&qword_5A4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_366DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_369F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockFace();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_36B88()
{
  result = qword_58980;
  if (!qword_58980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_58980);
  }

  return result;
}

unint64_t sub_36BD4()
{
  result = qword_5A520;
  if (!qword_5A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A520);
  }

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