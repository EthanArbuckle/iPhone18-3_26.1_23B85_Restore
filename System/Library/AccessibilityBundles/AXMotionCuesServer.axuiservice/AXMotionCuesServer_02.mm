void sub_2D1F8(void *a1@<X8>)
{
  v2 = 0xE900000000000073;
  if (*v1)
  {
    v2 = 0xED00006469724773;
  }

  *a1 = 0x656C636974726170;
  a1[1] = v2;
}

uint64_t sub_2D2BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  return v1;
}

uint64_t sub_2D374()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  v4 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  v5 = v23;
  sub_2D854();
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v22 / v23;

  sub_326E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v9 = v22;
    v24 = &type metadata for Float;
    *&v22 = v9;
    sub_2ED8C(8, &v22);

    sub_B744(&v22, &qword_4D650, &qword_357C0);
  }

  v10 = v3 == &dword_0 + 1;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values;
  v13 = *(v1 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values);

  sub_2F4F0(v11);

  v14 = *(v1 + v12);

  sub_2F370(0);

  v15 = *(v1 + v12);

  sub_2F4C4(v10);

  v16 = *(v1 + v12);

  sub_2F344(v5 < v4);

  v17 = *(v1 + v12);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326D8();

  v18 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v18;

  sub_326E8();
  sub_2F5F8();

  v19 = *(v1 + v12);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326D8();

  v20 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v20;

  sub_326E8();
  sub_2F5F8();
}

double sub_2D7E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  return v1;
}

uint64_t sub_2D854()
{
  v1 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values;
  if (*&v0[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values])
  {
    v2 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values];
  }

  else
  {
    v3 = type metadata accessor for AXMotionCuesVFXManager.Values(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v0;
    v7 = v0;
    v2 = sub_31224(v6);

    v8 = *&v0[v1];
    *&v7[v1] = v2;
  }

  return v2;
}

id sub_2D8EC()
{
  v46 = sub_32698();
  v44 = *(v46 - 8);
  v0 = *(v44 + 64);
  v1 = __chkstk_darwin(v46);
  v41[1] = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = v41 - v3;
  v43 = sub_324E8();
  v45 = *(v43 - 8);
  v5 = *(v45 + 64);
  v6 = __chkstk_darwin(v43);
  v41[0] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v42 = v41 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v41 - v11;
  __chkstk_darwin(v10);
  v14 = v41 - v13;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass:ObjCClassFromMetadata];
  v18 = sub_32968();
  v19 = sub_32968();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (v20)
  {
    sub_324D8();

    type metadata accessor for AXMotionCuesVFXManager(0);
    v21 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
    v22 = sub_32968();
    v23 = sub_32968();
    v24 = [v21 URLForResource:v22 withExtension:v23];

    v25 = v14;
    if (v24)
    {
      sub_324D8();

      sub_A168(&qword_4D690, &unk_35E60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_354D0;
      v27 = VFXWorldLoaderOptionMetalLibraryURL;
      *(inited + 32) = VFXWorldLoaderOptionMetalLibraryURL;
      v28 = v43;
      *(inited + 64) = v43;
      v29 = sub_31998((inited + 40));
      v30 = v45;
      (*(v45 + 16))(v29, v12, v28);
      v31 = v27;
      v24 = sub_1987C(inited);
      swift_setDeallocating();
      sub_B744(inited + 32, &qword_4C0C0, &unk_34860);
      (*(v30 + 8))(v12, v28);
    }

    else
    {
      v30 = v45;
      v28 = v43;
    }

    sub_1A964(0, &qword_4D680, VFXWorld_ptr);
    v38 = v42;
    (*(v30 + 16))(v42, v25, v28);
    v39 = sub_2E120(v38, v24);
    (*(v30 + 8))(v25, v28);
    return v39;
  }

  else
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v32 = v46;
    v33 = sub_AD0C(v46, MCLog);
    swift_beginAccess();
    v34 = v44;
    (*(v44 + 16))(v4, v33, v32);
    v35 = sub_32678();
    v36 = sub_32C58();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Error getting VFX source file url", v37, 2u);
    }

    (*(v34 + 8))(v4, v32);
    return 0;
  }
}

id sub_2E120(uint64_t a1, uint64_t a2)
{
  sub_324C8(__stack_chk_guard);
  v5 = v4;
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_319FC(&qword_4BC18, type metadata accessor for VFXWorldLoaderOption);
    v6.super.isa = sub_32908().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v15 = 0;
  v7 = [swift_getObjCClassFromMetadata() worldWithURL:v5 options:v6.super.isa error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = sub_324E8();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    sub_324A8();

    swift_willThrow();
    v13 = sub_324E8();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

id AXMotionCuesVFXManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXMotionCuesVFXManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXMotionCuesVFXManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2E570@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXMotionCuesVFXManager(0);
  result = sub_326B8();
  *a1 = result;
  return result;
}

void sub_2E5B8()
{
  sub_2FC1C(319, &qword_4CFC0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2FC1C(319, &qword_4CFC8);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2E704();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2E704()
{
  if (!qword_4CFD0)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_326F8();
    if (!v1)
    {
      atomic_store(v0, &qword_4CFD0);
    }
  }
}

uint64_t sub_2E75C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter) childNodes];
  sub_1A964(0, &qword_4D678, VFXNode_ptr);
  v2 = sub_32A48();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_32E58())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_32E28();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 particleEmitter];
      [v8 killParticles];

      v9 = [v6 particleEmitter];
      if (v9)
      {
        v10 = v9;
        [v9 restart];
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v11 = *(v13 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_gridEmitter);
  return sub_2E8F8();
}

uint64_t sub_2E8F8()
{
  v1 = [v0 particleEmitter];
  [v1 killParticles];

  v2 = [v0 particleEmitter];
  [v2 restart];

  v3 = [v0 childNodes];
  sub_1A964(0, &qword_4D678, VFXNode_ptr);
  v4 = sub_32A48();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_32E58())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_32E28();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_2E8F8();

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_2EAA4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_326E8();
}

uint64_t sub_2EB1C(char a1)
{
  result = 0x586563726F66;
  switch(a1)
  {
    case 1:
      result = 0x596563726F66;
      break;
    case 2:
      result = 0x754D736563726F66;
      break;
    case 3:
    case 6:
      result = 0x656C636974726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6152746365707361;
      break;
    case 9:
      result = 0x66694C5064697267;
      break;
    case 10:
      v3 = 0x415864697267;
      goto LABEL_18;
    case 11:
      v3 = 0x415964697267;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6A64000000000000;
      break;
    case 12:
      result = 0x6F69736E656D6964;
      break;
    case 13:
      result = 0x6373646E614C7369;
      break;
    case 14:
      result = 0x63614D7369;
      break;
    case 15:
      result = 0x6461507369;
      break;
    case 16:
      result = 0x656E6F68507369;
      break;
    case 17:
      result = 0x646972477369;
      break;
    case 18:
      result = 0x6C6C616D537369;
      break;
    case 19:
      result = 0x656772614C7369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2ED8C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 behaviorGraph];
  if (v6)
  {
    v7 = v6;
    sub_2EB1C(a1);
    sub_300EC(a2, v16);
    v8 = v17;
    if (v17)
    {
      v9 = sub_1A554(v16, v17);
      v10 = *(v8 - 8);
      v11 = *(v10 + 64);
      __chkstk_darwin(v9);
      v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13);
      v14 = sub_32ED8();
      (*(v10 + 8))(v13, v8);
      sub_1A508(v16);
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_32968();

    [v7 setObject:v14 forKeyedSubscript:v15];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2EF44(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v7 = v8[0];
    *&v8[3] = &type metadata for Float;
    *v8 = v7;
    sub_2ED8C(a3, v8);

    return sub_B744(v8, &qword_4D650, &qword_357C0);
  }

  return result;
}

void sub_2F0F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  *&v0.f64[0] = v6[0];
  *&v0.f64[1] = v6[0];
  v1 = [objc_opt_self() valueWithVFXFloat2:COERCE_DOUBLE(vcvt_f32_f64(v0))];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    v6[3] = sub_1A964(0, &qword_4D648, NSValue_ptr);
    v6[0] = v1;
    v5 = v1;
    sub_2ED8C(7, v6);

    sub_B744(v6, &qword_4D650, &qword_357C0);
  }

  else
  {
  }
}

double sub_2F2C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  return v1;
}

uint64_t sub_2F388(char a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v9[0] = a1;

  sub_326E8();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(result + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v10 = &type metadata for Bool;
    sub_2ED8C(a4, v9);

    return sub_B744(v9, &qword_4D650, &qword_357C0);
  }

  return result;
}

uint64_t sub_2F574()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  return v1;
}

void sub_2F5F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  *&v0.f64[0] = v6[0];
  *&v0.f64[1] = v6[0];
  v1 = [objc_opt_self() valueWithVFXFloat2:COERCE_DOUBLE(vcvt_f32_f64(v0))];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    v6[3] = sub_1A964(0, &qword_4D648, NSValue_ptr);
    v6[0] = v1;
    v5 = v1;
    sub_2ED8C(12, v6);

    sub_B744(v6, &qword_4D650, &qword_357C0);
  }

  else
  {
  }
}

uint64_t sub_2F778()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forceX;
  v2 = sub_A168(&qword_4D658, &qword_35D68);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forceY, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forcesMul, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleLife, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridPLife, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridXAdjust, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridYAdjust, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCount, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCountCenter, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCountTopBottom, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleSizeRangeMin, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleSizeRangeMax, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__dimensionsX, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__dimensionsY, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__aspectRatio, v2);
  v4 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isLandscape;
  v5 = sub_A168(&qword_4D660, &qword_35D70);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isMac, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isPad, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isPhone, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isGrid, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isSmall, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isLarge, v5);
  return v0;
}

uint64_t sub_2FA80()
{
  sub_2F778();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2FB00()
{
  sub_2FC1C(319, &unk_4D0C0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2FC1C(319, &qword_4CFC0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2FC1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_326F8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AXMotionCuesVFXExperience(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AXMotionCuesVFXExperience(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2FE2C()
{
  result = qword_4D640;
  if (!qword_4D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4D640);
  }

  return result;
}

uint64_t sub_2FE80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXMotionCuesVFXManager.Values(0);
  result = sub_326B8();
  *a1 = result;
  return result;
}

uint64_t sub_2FEE8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_326E8();
}

void sub_2FF54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326E8();
  sub_2F0F4();
}

void sub_30048(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326E8();
  sub_2F5F8();
}

uint64_t sub_300EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_A168(&qword_4D650, &qword_357C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_3015C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_301D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = *a1;
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326E8();
  return sub_2EF44(a5, a6, a7);
}

uint64_t sub_30270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  *a2 = v5;
  return result;
}

uint64_t sub_30958(void *a1, int a2)
{
  LODWORD(v61) = a2;
  v4 = sub_328A8();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  __chkstk_darwin(v4);
  v66 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_328C8();
  v65 = *(v67 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v67);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_328E8();
  v63 = *(v70 - 8);
  v9 = *(v63 + 64);
  v10 = __chkstk_darwin(v70);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v57 - v13;
  v14 = sub_A168(&qword_4D670, &qword_35E58);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v57 - v17;
  v19 = sub_A168(&qword_4D660, &qword_35D70);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v57 - v22;
  v24 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager__isVFXVisible;
  LOBYTE(aBlock) = 1;
  sub_326C8();
  (*(v20 + 32))(&v2[v24], v23, v19);
  v25 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager__viewSize;
  v26 = [objc_opt_self() mainScreen];
  [v26 bounds];
  v28 = v27;
  v30 = v29;

  aBlock = v28;
  v72 = v30;
  type metadata accessor for CGSize(0);
  sub_326C8();
  (*(v15 + 32))(&v2[v25], v18, v14);
  *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_world] = a1;
  v31 = a1;
  v32 = [v31 rootNode];
  v33 = sub_32968();
  v34 = [v32 childNodeWithName:v33];

  if (v34)
  {
    v35 = [v31 rootNode];
    v36 = sub_32968();
    v37 = [v35 childNodeWithName:v36];

    if (v37)
    {
      v38 = [v31 rootNode];
      v39 = sub_32968();
      v40 = [v38 childNodeWithName:v39];

      if (v40)
      {
        v41 = [v31 rootNode];
        v42 = sub_32968();
        v43 = [v41 childNodeWithName:v42];

        *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_screen] = v43;
        *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_camera] = v34;
        *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter] = v37;
        *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_gridEmitter] = v40;
        swift_beginAccess();
        v78 = v61 & 1;
        v61 = v34;
        v60 = v37;
        v59 = v40;
        sub_326C8();
        swift_endAccess();
        v44 = type metadata accessor for AXMotionCuesVFXManager(0);
        v77.receiver = v2;
        v77.super_class = v44;
        v45 = objc_msgSendSuper2(&v77, "init");
        v46 = *&v45[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_screen];
        v47 = v45;
        [v46 setHidden:1];
        sub_1A964(0, &qword_4C0F8, OS_dispatch_queue_ptr);
        v58 = sub_32C88();
        sub_328D8();
        v48 = v62;
        sub_328F8();
        v63 = *(v63 + 8);
        (v63)(v12, v70);
        v49 = swift_allocObject();
        *(v49 + 16) = v47;
        v75 = sub_3195C;
        v76 = v49;
        aBlock = _NSConcreteStackBlock;
        v72 = 1107296256;
        v73 = sub_1D8DC;
        v74 = &unk_463E0;
        v50 = _Block_copy(&aBlock);
        v51 = v47;

        v52 = v64;
        sub_328B8();
        aBlock = &_swiftEmptyArrayStorage;
        sub_319FC(&qword_4C100, &type metadata accessor for DispatchWorkItemFlags);
        sub_A168(&qword_4C108, &qword_348E0);
        sub_23D14(&qword_4C110, &qword_4C108, &qword_348E0);
        v53 = v66;
        v54 = v69;
        sub_32D28();
        v55 = v58;
        sub_32C78();
        _Block_release(v50);

        (*(v68 + 8))(v53, v54);
        (*(v65 + 8))(v52, v67);
        (v63)(v48, v70);
        return v51;
      }
    }

    else
    {
      v37 = v34;
    }
  }

  result = sub_32E48();
  __break(1u);
  return result;
}

uint64_t sub_31224(uint64_t a1)
{
  v37 = a1;
  v2 = sub_A168(&qword_4D660, &qword_35D70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - v5;
  v7 = sub_A168(&qword_4D658, &qword_35D68);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forceX;
  v38 = 0;
  sub_326C8();
  v13 = *(v8 + 32);
  v13(v1 + v12, v11, v7);
  v14 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forceY;
  v38 = 0;
  sub_326C8();
  v13(v1 + v14, v11, v7);
  v15 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forcesMul;
  v38 = 0x3FE999999999999ALL;
  sub_326C8();
  v13(v1 + v15, v11, v7);
  v16 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleLife;
  v38 = 0x3FF0000000000000;
  sub_326C8();
  v13(v1 + v16, v11, v7);
  v17 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridPLife;
  v38 = 0x3FE0000000000000;
  sub_326C8();
  v13(v1 + v17, v11, v7);
  v18 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridXAdjust;
  v38 = 0xBFC3333333333333;
  sub_326C8();
  v13(v1 + v18, v11, v7);
  v19 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridYAdjust;
  v38 = 0;
  sub_326C8();
  v13(v1 + v19, v11, v7);
  v20 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCount;
  v38 = 0x402E000000000000;
  sub_326C8();
  v13(v1 + v20, v11, v7);
  v21 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCountCenter;
  v38 = 0x4024000000000000;
  sub_326C8();
  v13(v1 + v21, v11, v7);
  v22 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCountTopBottom;
  v38 = 0x4014000000000000;
  sub_326C8();
  v13(v1 + v22, v11, v7);
  v23 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleSizeRangeMin;
  v38 = 0x3F989374BC6A7EFALL;
  sub_326C8();
  v13(v1 + v23, v11, v7);
  v24 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleSizeRangeMax;
  v38 = 0x3FABA5E353F7CED9;
  sub_326C8();
  v13(v1 + v24, v11, v7);
  v25 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__dimensionsX;
  v38 = 0x4077700000000000;
  sub_326C8();
  v13(v1 + v25, v11, v7);
  v26 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__dimensionsY;
  v38 = 0x4089600000000000;
  sub_326C8();
  v13(v1 + v26, v11, v7);
  v27 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__aspectRatio;
  v38 = 0x3FF999999999999ALL;
  sub_326C8();
  v13(v1 + v27, v11, v7);
  v28 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isLandscape;
  LOBYTE(v38) = 0;
  sub_326C8();
  v29 = *(v3 + 32);
  v29(v1 + v28, v6, v2);
  v30 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isMac;
  LOBYTE(v38) = 0;
  sub_326C8();
  v29(v1 + v30, v6, v2);
  v31 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isPad;
  LOBYTE(v38) = 0;
  sub_326C8();
  v29(v1 + v31, v6, v2);
  v32 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isPhone;
  LOBYTE(v38) = 0;
  sub_326C8();
  v29(v1 + v32, v6, v2);
  v33 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isGrid;
  LOBYTE(v38) = 0;
  sub_326C8();
  v29(v1 + v33, v6, v2);
  v34 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isSmall;
  LOBYTE(v38) = 0;
  sub_326C8();
  v29(v1 + v34, v6, v2);
  v35 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isLarge;
  LOBYTE(v38) = 0;
  sub_326C8();
  v29(v1 + v35, v6, v2);
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_31924()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_31980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_31998(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_319FC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_31A48()
{
  v1 = sub_32698();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = *(v0 + 16);
  if ([v9 isDeviceMotionAvailableNoSim])
  {
    if ([v9 isDeviceMotionActiveNoSim])
    {
      if (qword_4BAF0 != -1)
      {
        swift_once();
      }

      v10 = sub_AD0C(v1, MCLog);
      swift_beginAccess();
      (*(v2 + 16))(v8, v10, v1);
      v11 = sub_32678();
      v12 = sub_32C58();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v11, v12, "Already capturing device motion data. No need to start.", v13, 2u);
      }

      return (*(v2 + 8))(v8, v1);
    }

    else
    {
      return [v9 startDeviceMotionUpdatesNoSim];
    }
  }

  else
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v15 = sub_AD0C(v1, MCLog);
    swift_beginAccess();
    (*(v2 + 16))(v6, v15, v1);
    v16 = sub_32678();
    v17 = sub_32C58();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Device motion is not available.", v18, 2u);
    }

    (*(v2 + 8))(v6, v1);
    sub_AD44();
    swift_allocError();
    *v19 = 0xD00000000000001ELL;
    v19[1] = 0x8000000000039110;
    return swift_willThrow();
  }
}

id sub_31DA4()
{
  v1 = sub_32698();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if ([v6 isDeviceMotionActiveNoSim])
  {

    return [v6 stopDeviceMotionUpdatesNoSim];
  }

  else
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v8 = sub_AD0C(v1, MCLog);
    swift_beginAccess();
    (*(v2 + 16))(v5, v8, v1);
    v9 = sub_32678();
    v10 = sub_32C58();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "No ongoing capture. No need to stop.", v11, 2u);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

__n128 sub_31F98@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_32698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (![v8 isDeviceMotionActiveNoSim])
  {
LABEL_9:
    sub_323D8(&v65);
    goto LABEL_10;
  }

  v9 = [v8 deviceMotionNoSim];
  if (!v9)
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v39 = sub_AD0C(v3, MCLog);
    swift_beginAccess();
    (*(v4 + 16))(v7, v39, v3);
    v40 = sub_32678();
    v41 = sub_32C58();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "Device motion is empty.", v42, 2u);
    }

    (*(v4 + 8))(v7, v3);
    goto LABEL_9;
  }

  v10 = v9;
  [v9 userAcceleration];
  v55 = v12;
  v56 = v11;
  v54 = v13;
  [v10 gravity];
  v52 = v15;
  v53 = v14;
  v51 = v16;
  [v10 rotationRate];
  v49 = v18;
  v50 = v17;
  v48 = v19;
  v20 = [v10 attitude];
  v21 = [v10 attitude];
  [v21 quaternion];

  [v10 timestamp];
  v23 = v22;
  v24 = v20;
  [v24 pitch];
  v26 = v25;
  [v24 roll];
  v28 = v27;
  [v24 yaw];
  v30 = v29;

  [v24 quaternion];
  v32 = v31;
  [v24 quaternion];
  v34 = v33;
  [v24 quaternion];
  v36 = v35;
  [v24 quaternion];
  v38 = v37;

  *&v57 = v56;
  *(&v57 + 1) = v55;
  v58.n128_u64[0] = v54;
  v58.n128_u64[1] = v53;
  *&v59 = v52;
  *(&v59 + 1) = v51;
  *&v60 = v50;
  *(&v60 + 1) = v49;
  *&v61 = v48;
  *(&v61 + 1) = v26;
  *&v62 = v28;
  *(&v62 + 1) = v30;
  *&v63 = v38;
  *(&v63 + 1) = v32;
  *&v64[0] = v34;
  *(&v64[0] + 1) = v36;
  *&v64[1] = v23;
  sub_323FC(&v57);
  v71 = v63;
  v72[0] = v64[0];
  *(v72 + 9) = *(v64 + 9);
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v70 = v62;
  v65 = v57;
  v66 = v58;
LABEL_10:
  v43 = v72[0];
  *(a1 + 96) = v71;
  *(a1 + 112) = v43;
  *(a1 + 121) = *(v72 + 9);
  v44 = v68;
  *(a1 + 32) = v67;
  *(a1 + 48) = v44;
  v45 = v70;
  *(a1 + 64) = v69;
  *(a1 + 80) = v45;
  result = v66;
  *a1 = v65;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_32378()
{
  sub_31DA4();

  return swift_deallocClassInstance();
}

double sub_323D8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}