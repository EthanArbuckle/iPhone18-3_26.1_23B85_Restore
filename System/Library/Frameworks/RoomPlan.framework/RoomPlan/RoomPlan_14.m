void sub_23A9A93A8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

unint64_t StructureBuilder.BuildError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E49;
  if (v1 == 4)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001ELL;
  }

  v3 = 0xD000000000000025;
  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000022;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

id sub_23A9A950C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D46C90]) init];
    [v3 setObjectBeautificationEnabled_];
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v4 = off_27DFB17B0;
    swift_beginAccess();
    [v3 setCurveEnabled_];
    v2 = [objc_allocWithZone(MEMORY[0x277D46C98]) initWithConfiguration_];

    v5 = *(v0 + 24);
    *(v0 + 24) = v2;
    v6 = v2;
    sub_23A9A9754(v5);
  }

  sub_23A9ACD40(v1);
  return v2;
}

unint64_t sub_23A9A961C()
{
  result = qword_27DFB0AF0;
  if (!qword_27DFB0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AF0);
  }

  return result;
}

uint64_t sub_23A9A9670()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9A96B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1140, &qword_23AA19C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23A9A9754(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t StructureBuilder.__deallocating_deinit()
{
  sub_23A9A9754(*(v0 + 24));

  return swift_deallocClassInstance();
}

int64x2_t *RoomBuilder.__allocating_init(options:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *a1;
  v5[1].i8[8] = 0;
  v5[2] = vdupq_n_s64(1uLL);
  v7 = OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B10, &qword_23AA1A760);
  (*(*(v8 - 8) + 56))(&v5->i8[v7], 1, 1, v8);
  v5[1].i64[0] = v6;
  return v5;
}

int64x2_t *RoomBuilder.init(options:)(uint64_t *a1)
{
  v2 = *a1;
  v1[1].i8[8] = 0;
  v1[2] = vdupq_n_s64(1uLL);
  v3 = OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B10, &qword_23AA1A760);
  (*(*(v4 - 8) + 56))(&v1->i8[v3], 1, 1, v4);
  v1[1].i64[0] = v2;
  return v1;
}

uint64_t sub_23A9A98DC(uint64_t a1, _OWORD *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v4;
  *(v3 + 80) = a2[4];
  v5 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x2822009F8](sub_23A9A9914, 0, 0);
}

uint64_t sub_23A9A9914()
{
  v1 = v0[13];
  v2 = sub_23A9AB9BC();
  if (v2 && (v3 = v0[13], v2, (v4 = sub_23A9ABB20()) != 0))
  {

    if (qword_27DFAE468 != -1)
    {
      swift_once();
    }

    v5 = v0[13];
    sub_23A957E58();
    v6 = swift_task_alloc();
    v0[14] = v6;
    *(v6 + 16) = v0 + 2;
    *(v6 + 24) = v5;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    v9 = type metadata accessor for CapturedRoom(0);
    *v8 = v0;
    v8[1] = sub_23A9A9AE0;
    v10 = v0[12];

    return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000013, 0x800000023AA21C70, sub_23A9ABB94, v6, v9);
  }

  else
  {
    sub_23A9ABACC();
    swift_allocError();
    *v11 = 4;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_23A9A9AE0()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A9A9C1C, 0, 0);
  }

  else
  {
    v4 = v3[14];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23A9A9C1C()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

void sub_23A9A9C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
  v6 = *(v5 - 8);
  v69[2] = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v69 - v7;
  v9 = sub_23AA0C0E4();
  v10 = *(v9 - 8);
  v82 = v9;
  v83 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v80 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE4E8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v13 = *(a2 + 32);
    xmmword_27DFC0940 = *(a2 + 16);
    *algn_27DFC0950 = v13;
    v14 = *(a2 + 64);
    xmmword_27DFC0960 = *(a2 + 48);
    unk_27DFC0970 = v14;
    v15 = [*(a2 + 8) floorPlan];
    v16 = [v15 objects];

    sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
    v17 = sub_23AA0D2F4();

    if (v17 >> 62)
    {
      v18 = sub_23AA0D7F4();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v74 = a3;
    v75 = a2;
    v73 = v5;
    v72 = v6;
    v71 = v8;
    if (!v18)
    {

      a2 = MEMORY[0x277D84F90];
      v25 = *(MEMORY[0x277D84F90] + 16);
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

    v85[0] = MEMORY[0x277D84F90];
    sub_23A976130(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      break;
    }

    v5 = 0;
    a2 = v85[0];
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x23EE90360](v5, v17);
      }

      else
      {
        v19 = *(v17 + 8 * v5 + 32);
      }

      v20 = v19;
      v21 = [v19 dictionaryRepresentation];
      if (v21)
      {
        v22 = v21;
        v6 = sub_23AA0D034();
      }

      else
      {

        v6 = 0;
      }

      v85[0] = a2;
      v24 = *(a2 + 16);
      v23 = *(a2 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_23A976130((v23 > 1), v24 + 1, 1);
        a2 = v85[0];
      }

      ++v5;
      *(a2 + 16) = v24 + 1;
      *(a2 + 8 * v24 + 32) = v6;
    }

    while (v18 != v5);

    v25 = *(a2 + 16);
    if (v25)
    {
LABEL_17:
      v85[0] = MEMORY[0x277D84F90];
      sub_23AA0D964();
      v6 = 0;
      v8 = 0x277D36000;
      a3 = MEMORY[0x277D84030];
      while (v6 < *(a2 + 16))
      {
        v26 = a2 + 8 * v6;
        if (*(v26 + 32))
        {
          v27 = *(v26 + 32);

          v28 = sub_23AA0D024();
        }

        else
        {
          v28 = 0;
        }

        v29 = [objc_allocWithZone(MEMORY[0x277D36CE0]) initWithDictionaryRepresentation_];

        if (!v29)
        {
          goto LABEL_51;
        }

        ++v6;
        sub_23AA0D944();
        v5 = *(v85[0] + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        if (v25 == v6)
        {

          v30 = v85[0];
          goto LABEL_27;
        }
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_26:

    v30 = MEMORY[0x277D84F90];
LABEL_27:
    v69[1] = v30;
    v31 = *v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0BB8, &qword_23AA1A630);
    v32 = sub_23AA0DA14();
    v81 = v32;
    v5 = 0;
    a3 = v31 + 64;
    v33 = *(v31 + 64);
    v79 = v31;
    v34 = 1 << *(v31 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & v33;
    v8 = ((v34 + 63) >> 6);
    v78 = v83 + 16;
    v77 = v32 + 64;
    v76 = v83 + 32;
    v37 = v80;
    if (!v36)
    {
LABEL_31:
      v39 = v5;
      while (1)
      {
        v5 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (v5 >= v8)
        {
          break;
        }

        v40 = *(a3 + 8 * v5);
        ++v39;
        if (v40)
        {
          v38 = __clz(__rbit64(v40));
          v84 = (v40 - 1) & v40;
          goto LABEL_36;
        }
      }

      v52 = v74;
      v53 = sub_23A9AB9BC();
      if (!v53)
      {
        goto LABEL_52;
      }

      v54 = v53;
      v55 = v73;
      v56 = v72;
      if (qword_27DFC0988)
      {

        v57 = sub_23AA0D104();
      }

      else
      {
        v57 = 0;
      }

      [v54 setupOfflineDumpWithLogDir_];

      v58 = sub_23A9ABB20();
      if (v58)
      {
        v59 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BC0, qword_23AA1A638);
        sub_23A9AC9B4(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
        v60 = sub_23AA0D024();

        sub_23A8D6C58(0, &unk_27DFB0BD0, 0x277D36CE0);
        v61 = sub_23AA0D2E4();

        v62 = v71;
        (*(v56 + 16))(v71, v70, v55);
        v63 = (*(v56 + 80) + 104) & ~*(v56 + 80);
        v64 = swift_allocObject();
        v65 = v75;
        v66 = v75[3];
        *(v64 + 48) = v75[2];
        *(v64 + 64) = v66;
        *(v64 + 80) = v65[4];
        v67 = v65[1];
        *(v64 + 16) = *v65;
        *(v64 + 32) = v67;
        *(v64 + 96) = v52;
        (*(v56 + 32))(v64 + v63, v62, v55);
        aBlock[4] = sub_23A9ACA00;
        aBlock[5] = v64;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23A9AB76C;
        aBlock[3] = &block_descriptor_5;
        v68 = _Block_copy(aBlock);
        sub_23A9ACA9C(v65, v85);

        [v59 generateOfflineObjects:v60 onlineObjects:v61 block:v68];
        _Block_release(v68);

        return;
      }

      goto LABEL_53;
    }

    while (1)
    {
      v38 = __clz(__rbit64(v36));
      v84 = (v36 - 1) & v36;
LABEL_36:
      v6 = v38 | (v5 << 6);
      v41 = v79;
      v42 = v82;
      a2 = v83;
      v43 = *(v83 + 72) * v6;
      (*(v83 + 16))(v37, *(v79 + 48) + v43, v82);
      v44 = *(*(v41 + 56) + 8 * v6);
      v45 = objc_allocWithZone(type metadata accessor for ObjectKitKeyframe(0));
      v46 = swift_unknownObjectRetain();
      v47 = sub_23A9A7204(v46, 0);
      swift_unknownObjectRelease();
      *(v77 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
      v48 = v81;
      (*(a2 + 32))(*(v81 + 48) + v43, v37, v42);
      *(*(v48 + 56) + 8 * v6) = v47;
      v49 = *(v48 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        break;
      }

      *(v48 + 16) = v51;
      v36 = v84;
      if (!v84)
      {
        goto LABEL_31;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_23A9AA55C(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a2;
  v49 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v43 - v9;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v12 = MEMORY[0x277D84F90];
    v46 = v7;
    v47 = v6;
    v45 = v10;
    v44 = a4;
    v43[1] = v8;
    if (!i)
    {
      break;
    }

    v50[0] = MEMORY[0x277D84F90];
    sub_23A976130(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v13 = 0;
    v14 = v50[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x23EE90360](v13, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 dictionaryRepresentation];
      if (v17)
      {
        v18 = v17;
        v19 = sub_23AA0D034();
      }

      else
      {

        v19 = 0;
      }

      v50[0] = v14;
      a4 = *(v14 + 16);
      v20 = *(v14 + 24);
      v8 = (a4 + 1);
      if (a4 >= v20 >> 1)
      {
        sub_23A976130((v20 > 1), a4 + 1, 1);
        v14 = v50[0];
      }

      ++v13;
      *(v14 + 16) = v8;
      *(v14 + 8 * a4 + 32) = v19;
    }

    while (i != v13);
    v12 = MEMORY[0x277D84F90];
LABEL_18:
    v50[0] = v12;
    sub_23AA0D964();
    v7 = 0;
    a1 = 0x277D46000uLL;
    v6 = MEMORY[0x277D84030];
    v10 = MEMORY[0x277D84038];
    while (v7 < *(v14 + 16))
    {
      v21 = v14 + 8 * v7;
      if (*(v21 + 32))
      {
        v22 = *(v21 + 32);

        v23 = sub_23AA0D024();
      }

      else
      {
        v23 = 0;
      }

      a4 = [objc_allocWithZone(MEMORY[0x277D46C60]) initWithDictionaryRepresentation_];

      if (!a4)
      {
        goto LABEL_31;
      }

      ++v7;
      sub_23AA0D944();
      v24 = *(v50[0] + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      if (v8 == v7)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    ;
  }

  v8 = *(MEMORY[0x277D84F90] + 16);
  if (v8)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

LABEL_25:

  v25 = v48;
  [*(v48 + 8) copy];
  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8D6C58(0, &unk_27DFAF2A0, 0x277D46C70);
  swift_dynamicCast();
  v26 = aBlock[0];
  v27 = [aBlock[0] floorPlan];
  sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
  v28 = sub_23AA0D2E4();
  [v27 updateObjects_];

  v29 = v49;
  v30 = sub_23A9AB9BC();
  if (v30)
  {
    v31 = v30;

    v32 = *v25;
    sub_23AA0C0E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
    sub_23A9AC9B4(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
    v33 = sub_23AA0D024();
    v35 = v46;
    v34 = v47;
    v36 = v45;
    (*(v46 + 16))(v45, v44, v47);
    v37 = (*(v35 + 80) + 104) & ~*(v35 + 80);
    v38 = swift_allocObject();
    v39 = *(v25 + 48);
    *(v38 + 48) = *(v25 + 32);
    *(v38 + 64) = v39;
    *(v38 + 80) = *(v25 + 64);
    v40 = *(v25 + 16);
    *(v38 + 16) = *v25;
    *(v38 + 32) = v40;
    *(v38 + 96) = v29;
    (*(v35 + 32))(v38 + v37, v36, v34);
    aBlock[4] = sub_23A9ACBD8;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9A93A8;
    aBlock[3] = &block_descriptor_59;
    v41 = _Block_copy(aBlock);
    v42 = v26;
    sub_23A9ACA9C(v25, v50);

    [v31 processWithKeyframes:v33 initialAsset:v42 completionHandlerWithError:v41];
    _Block_release(v41);

    return;
  }

LABEL_32:
  __break(1u);
}

void sub_23A9AAB28(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v109 = sub_23AA0CE84();
  *&v108 = *(v109 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CapturedRoom(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v97 - v18);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v24 = (&v97 - v23);
  if (a2)
  {
    *&v106 = a3;
    v104 = v22;
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    v25 = a2;
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v26 = a2;
    v27 = sub_23AA0CE54();
    v28 = sub_23AA0D494();

    v29 = os_log_type_enabled(v27, v28);
    *&v105 = a2;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v107 = a4;
      v31 = v30;
      v32 = swift_slowAlloc();
      v110[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_23AA0DC34();
      v35 = sub_23A9A65A4(v33, v34, v110);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_23A8B4000, v27, v28, "Cannot generate offline floorplan: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x23EE91710](v32, -1, -1);
      v36 = v31;
      a4 = v107;
      MEMORY[0x23EE91710](v36, -1, -1);
    }

    (*(v108 + 8))(v12, v109);
    if (qword_27DFAE468 != -1)
    {
      swift_once();
    }

    *(v19 + v13[12]) = 0;
    *(v19 + v13[13]) = 2;
    v37 = (v19 + v13[15]);
    *v37 = 0u;
    v37[1] = 0u;
    v38 = MEMORY[0x277D84F90];
    *v19 = MEMORY[0x277D84F90];
    v19[1] = v38;
    v19[2] = v38;
    v19[3] = v38;
    v19[4] = v38;
    v19[5] = v38;
    *(v19 + v13[14]) = v38;
    v39 = v19 + v13[10];
    sub_23AA0C0D4();
    *(v19 + v13[11]) = v38;
    v40 = (v19 + v13[16]);
    v41 = v106;
    v42 = *(v106 + 32);
    *v40 = *(v106 + 16);
    v40[1] = v42;
    v43 = *(v41 + 64);
    v40[2] = *(v41 + 48);
    v40[3] = v43;
    v44 = sub_23AA0D104();
    v45 = MGCopyAnswer();

    if (v45)
    {
      swift_unknownObjectRetain();
      v110[0] = v45;
      v46 = swift_dynamicCast();
      v47 = v105;
      if (v46 && (v112 & 1) != 0)
      {
        v48 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
        v49 = v48;
        if (v48)
        {
          v48 = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
        }

        else
        {
          v110[1] = 0;
          v110[2] = 0;
        }

        v110[0] = v49;
        v111 = v48;
        sub_23A9ACC6C(v110, v37);
      }

      v94 = v104;
      sub_23A9ACCDC(v19, v104);
      LOBYTE(v110[0]) = 4;
      v95 = sub_23AA0D1A4();
      sub_23A957E88(v94, v95, v96, *(a4 + 16) & 1);

      sub_23A9ACF7C(v94, type metadata accessor for CapturedRoom);
      sub_23A95A284(*(a4 + 24));
      v110[0] = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
      sub_23AA0D364();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27DFAE4E8 != -1)
    {
      swift_once();
    }

    v108 = *algn_27DFC0950;
    v109 = xmmword_27DFC0940;
    v105 = unk_27DFC0970;
    v106 = xmmword_27DFC0960;
    v50 = *(a4 + 16);
    v107 = a4;
    v101 = v13;
    if (v50)
    {
      if (qword_27DFAE4D0 != -1)
      {
        swift_once();
      }

      v51 = &qword_27DFC0878;
    }

    else
    {
      if (qword_27DFAE4D8 != -1)
      {
        swift_once();
      }

      v51 = &qword_27DFC0880;
    }

    v52 = *v51;
    type metadata accessor for RSCoreAdaptor();
    if (qword_27DFAE4C0 != -1)
    {
      swift_once();
    }

    v103 = v16;
    xmmword_27DFC0830 = v109;
    unk_27DFC0840 = v108;
    xmmword_27DFC0850 = v106;
    unk_27DFC0860 = v105;
    byte_27DFC0888 = 0;
    if (qword_27DFAE4E0 != -1)
    {
      swift_once();
    }

    v104 = a5;
    v53 = qword_27DFC0890;
    qword_27DFC0890 = v52;
    v102 = v52;

    if (!(MEMORY[0x277D84F90] >> 62) || (v55 = MEMORY[0x277D84F90], sub_23AA0D7F4() <= 0))
    {
      v54 = [a1 objects];
      sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
      v55 = sub_23AA0D2F4();
    }

    v56 = [a1 doors];
    sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
    v57 = sub_23AA0D2F4();

    v112 = v57;
    v58 = [a1 opendoors];
    v59 = sub_23AA0D2F4();

    sub_23A912898(v59);
    v60 = [a1 walls];
    v61 = sub_23AA0D2F4();

    v62 = [a1 curvedWalls];
    sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
    v63 = sub_23AA0D2F4();

    v100 = sub_23A9A46EC(v61, v63);

    v64 = v112;
    v65 = [a1 curvedDoors];
    v66 = sub_23AA0D2F4();

    v99 = sub_23A9A46EC(v64, v66);

    v67 = [a1 windows];
    v68 = sub_23AA0D2F4();

    v69 = [a1 curvedWindows];
    v70 = sub_23AA0D2F4();

    v98 = sub_23A9A46EC(v68, v70);

    v71 = [a1 openings];
    v72 = sub_23AA0D2F4();

    v73 = MEMORY[0x277D84F90];
    v74 = sub_23A9A46EC(v72, MEMORY[0x277D84F90]);

    v75 = [a1 floors];
    v76 = sub_23AA0D2F4();

    v77 = sub_23A9A46EC(v76, v73);

    sub_23A9A4A38(v55);
    v79 = v78;

    v80 = [a1 roomTypes];
    sub_23A8D6C58(0, &qword_27DFB0A78, 0x277D46CA0);
    v81 = sub_23AA0D2F4();

    v82 = sub_23A9A4D4C(v81);

    v83 = [a1 storyLevel];
    v84 = v101;
    v85 = v101[12];
    *(v24 + v101[13]) = 2;
    v86 = (v24 + v84[15]);
    *v86 = 0u;
    v86[1] = 0u;
    v87 = v99;
    *v24 = v100;
    v24[1] = v87;
    v24[2] = v98;
    v24[3] = v74;
    v24[4] = v77;
    v24[5] = v79;
    *(v24 + v84[14]) = MEMORY[0x277D84F90];
    v88 = v24 + v84[10];
    sub_23AA0C0D4();
    *(v24 + v84[11]) = v82;
    *(v24 + v85) = v83;
    v89 = (v24 + v84[16]);
    v90 = v108;
    *v89 = v109;
    v89[1] = v90;
    v91 = v105;
    v89[2] = v106;
    v89[3] = v91;
    v111 = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
    v92 = a1;

    v110[0] = v92;
    sub_23A9ACC6C(v110, v86);
    if (qword_27DFAE530 != -1)
    {
      swift_once();
    }

    v93 = v107;
    if (*(qword_27DFC0BB0 + 16) == 1)
    {
      sub_23AA0A9C0(v24);
    }

    if (qword_27DFAE468 != -1)
    {
      swift_once();
    }

    sub_23A957E88(v24, 0x73736563637573, 0xE700000000000000, *(v93 + 16) & 1);
    sub_23A95A284(*(v93 + 24));
    sub_23A9ACF14(v24, v103, type metadata accessor for CapturedRoom);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
    sub_23AA0D374();
    sub_23A9ACF7C(v24, type metadata accessor for CapturedRoom);
  }
}

uint64_t sub_23A9AB76C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_23A8D6C58(0, &unk_27DFB0BD0, 0x277D36CE0);
  v3 = sub_23AA0D2F4();

  v2(v3);
}

unint64_t RoomBuilder.BuildError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E49;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ELL;
  }

  v3 = 0xD000000000000025;
  if (*v0)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A9AB908()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E49;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ELL;
  }

  v3 = 0xD000000000000025;
  if (*v0)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

id sub_23A9AB9BC()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D46C90]) init];
    [v3 setObjectBeautificationEnabled_];
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v4 = off_27DFB17B0;
    swift_beginAccess();
    [v3 setCurveEnabled_];
    v2 = [objc_allocWithZone(MEMORY[0x277D46C98]) initWithConfiguration_];

    v5 = *(v0 + 32);
    *(v0 + 32) = v2;
    v6 = v2;
    sub_23A9A9754(v5);
  }

  sub_23A9ACD40(v1);
  return v2;
}

unint64_t sub_23A9ABACC()
{
  result = qword_27DFB0B18;
  if (!qword_27DFB0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B18);
  }

  return result;
}

id sub_23A9ABB20()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D36D00]) init_];
    v3 = *(v0 + 40);
    *(v0 + 40) = v2;
    v4 = v2;
    sub_23A9A9754(v3);
  }

  sub_23A9ACD40(v1);
  return v2;
}

double sub_23A9ABB9C()
{
  xmmword_27DFC0940 = xmmword_23AA12250;
  *algn_27DFC0950 = xmmword_23AA12220;
  *&result = 3212836864;
  xmmword_27DFC0960 = xmmword_23AA12230;
  unk_27DFC0970 = xmmword_23AA11AE0;
  return result;
}

uint64_t RoomBuilder.deinit()
{
  sub_23A9A9754(*(v0 + 32));
  sub_23A9A9754(*(v0 + 40));
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation, &qword_27DFB0B20, &qword_23AA1A148);
  return v0;
}

uint64_t RoomBuilder.__deallocating_deinit()
{
  sub_23A9A9754(v0[4]);
  sub_23A9A9754(v0[5]);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation, &qword_27DFB0B20, &qword_23AA1A148);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

unint64_t sub_23A9ABCA0()
{
  result = qword_27DFB0B28;
  if (!qword_27DFB0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B28);
  }

  return result;
}

unint64_t sub_23A9ABCFC()
{
  result = qword_27DFB0B30;
  if (!qword_27DFB0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B30);
  }

  return result;
}

unint64_t sub_23A9ABD54()
{
  result = qword_27DFB0B38;
  if (!qword_27DFB0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B38);
  }

  return result;
}

unint64_t sub_23A9ABDAC()
{
  result = qword_27DFB0B40;
  if (!qword_27DFB0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B40);
  }

  return result;
}

unint64_t sub_23A9ABE04()
{
  result = qword_27DFB0B48;
  if (!qword_27DFB0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B48);
  }

  return result;
}

unint64_t sub_23A9ABE5C()
{
  result = qword_27DFB0B50;
  if (!qword_27DFB0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B50);
  }

  return result;
}

uint64_t dispatch thunk of StructureBuilder.capturedStructure(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A9ACFF4;

  return v10(a1, a2);
}

uint64_t type metadata accessor for RoomBuilder()
{
  result = qword_27DFB0B60;
  if (!qword_27DFB0B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A9AC094()
{
  sub_23A9AC394();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of RoomBuilder.capturedRoom(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A9AC2A0;

  return v10(a1, a2);
}

uint64_t sub_23A9AC2A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_23A9AC394()
{
  if (!qword_27DFB0B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFB0B10, &qword_23AA1A760);
    v0 = sub_23AA0D664();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFB0B70);
    }
  }
}

uint64_t getEnumTagSinglePayload for RoomBuilder.ConfigurationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoomBuilder.ConfigurationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_23A9AC460(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v37 = a1;
  v3 = sub_23AA0CE84();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0BFB4();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0BBF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_23AA0BC34();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_23AA0BC24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B80, &qword_23AA1A610);
  v17 = *(v11 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA11C10;
  sub_23AA0BBE4();
  sub_23AA0BBD4();
  v42 = v19;
  sub_23A9AC9B4(&qword_27DFB0B88, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B90, &qword_23AA1A618);
  sub_23A9AC950();
  sub_23AA0D764();
  sub_23AA0BC04();
  type metadata accessor for CapturedRoom(0);
  sub_23A9AC9B4(&qword_27DFB0BA0, type metadata accessor for CapturedRoom);
  v20 = v38;
  v21 = sub_23AA0BC14();
  if (v20)
  {
    v24 = v39;
    v23 = v40;
    v28 = v41;
    sub_23AA0CE74();

    v29 = sub_23AA0CE54();
    v30 = sub_23AA0D494();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_23A9A65A4(v23, v24, &v42);
      _os_log_impl(&dword_23A8B4000, v29, v30, "Unable to dump capturedRoom to %s!", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x23EE91710](v32, -1, -1);
      MEMORY[0x23EE91710](v31, -1, -1);

      return (*(v35 + 8))(v41, v36);
    }

    else
    {

      return (*(v35 + 8))(v28, v36);
    }
  }

  else
  {
    v25 = v21;
    v26 = v22;
    v37 = v16;
    v38 = v6;
    v27 = v34;
    sub_23AA0BEE4();
    sub_23AA0BFF4();
    (*(v27 + 8))(v9, v38);
    sub_23A8EFA00(v25, v26);
  }
}

unint64_t sub_23A9AC950()
{
  result = qword_27DFB0B98;
  if (!qword_27DFB0B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFB0B90, &qword_23AA1A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B98);
  }

  return result;
}

uint64_t sub_23A9AC9B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23A9ACA00(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620) - 8);
  v4 = *(v1 + 96);
  v5 = v1 + ((*(v3 + 80) + 104) & ~*(v3 + 80));

  sub_23A9AA55C(a1, v1 + 16, v4, v5);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_52Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 96);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 0xF);
}

void sub_23A9ACBD8(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620) - 8);
  v6 = *(v2 + 96);
  v7 = v2 + ((*(v5 + 80) + 104) & ~*(v5 + 80));

  sub_23A9AAB28(a1, a2, v2 + 16, v6, v7);
}

uint64_t sub_23A9ACC6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1140, &qword_23AA19C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A9ACCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23A9ACD40(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23A9ACD50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_23A9ACE4C(void *a1, uint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_23A9A8D40(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_23A9ACF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9ACF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for OpeningEntity()
{
  result = qword_27DFB0C60;
  if (!qword_27DFB0C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9AD0B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23A9AD0FC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_23AA0D7F4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x23EE90360](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_23A9AD220@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_23AA0C514();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

BOOL sub_23A9AD3F4(float32x2_t *a1, float32x2_t a2)
{
  v2 = a1[2];
  v3 = a1 + 4;
  do
  {
    v4 = v2;
    if ((*&v2)-- == 0)
    {
      break;
    }

    v6 = *v3++;
    v7 = vceq_f32(v6, a2);
  }

  while ((v7.i32[0] & v7.i32[1] & 1) == 0);
  return *&v4 != 0;
}

BOOL sub_23A9AD42C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_23A9AD45C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_23AA0C0E4() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_23A9BACF4(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);
  }

  while ((sub_23AA0D084() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_23A9AD568(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_23AA0C0E4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_23A9AD660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_23A9AD6C8()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_23A9AD710()
{
  v1 = v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_23A9AD760(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_23A9AD7CC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23A9AD86C;
}

void sub_23A9AD86C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_23A9AD8F4()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_23A9AD938(char a1)
{
  v3 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = a1 & 1;
    result = *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
    if (result)
    {
      return [result setHidden_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_23A9AD9D8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23A9ADA60;
}

void sub_23A9ADA60(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = v6;
      v7 = *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
      if (!v7)
      {
        __break(1u);
        return;
      }

      [v7 setHidden_];
    }
  }

  free(v3);
}

void *sub_23A9ADC0C()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager;
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager);
  }

  else
  {
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v2 = off_27DFB17B0;
    *(off_27DFB17B0 + 3) = &off_284D87AA0;
    swift_unknownObjectWeakAssign();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_retain_n();
  }

  return v2;
}

uint64_t sub_23A9ADCC0()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor;
  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_23A9ADD2C();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_23A9BAD94(v4);
  }

  sub_23A9BADA4(v2);
  return v3;
}

uint64_t sub_23A9ADD2C()
{
  v0 = sub_23AA0CE84();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  v2 = sub_23A93BFA4();
  sub_23A93C058();
  type metadata accessor for FrameProcessor();
  swift_allocObject();
  v3 = sub_23A9463FC(v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_23A9AE07C()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding];
  v3 = type metadata accessor for RoomCaptureView();
  if (v2 == 1)
  {
    v29.receiver = v1;
    v29.super_class = v3;
    v4 = objc_msgSendSuper2(&v29, sel_subviews);
    sub_23A8D6C58(0, &qword_27DFB0C98, 0x277D75D18);
    v5 = sub_23AA0D2F4();

    v28 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
    {
      v7 = 0;
      v25 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView;
      v26 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
      v27 = v5 & 0xC000000000000001;
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v27)
        {
          v9 = MEMORY[0x23EE90360](v7, v5);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = *&v1[v26];
        if (v12)
        {
          v13 = v9;
          v14 = v5;
          v15 = v12;
          v16 = sub_23AA0D634();

          v5 = v14;
          if (v16)
          {

            goto LABEL_6;
          }
        }

        else
        {
          v17 = v9;
        }

        v18 = *&v1[v25];
        if (!v18)
        {

LABEL_19:
          sub_23AA0D944();
          v21 = *(v28 + 16);
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
          goto LABEL_6;
        }

        v19 = v18;
        v20 = sub_23AA0D634();

        if ((v20 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_6:
        ++v7;
        if (v11 == i)
        {
          v23 = v28;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_27:
  }

  else
  {
    v30.receiver = v1;
    v30.super_class = v3;
    v22 = objc_msgSendSuper2(&v30, sel_subviews);
    sub_23A8D6C58(0, &qword_27DFB0C98, 0x277D75D18);
    v23 = sub_23AA0D2F4();
  }

  return v23;
}

id RoomCaptureView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RoomCaptureView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v50 = sub_23AA0D524();
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0D504();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_23AA0CF24();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v47 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled] = 1;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver] = 0;
  v18 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_deltaTimeArray] = MEMORY[0x277D84F90];
  v19 = v18;
  v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] = 0;
  v20 = &v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath];
  *v20 = 0;
  v20[1] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_completeTransitionTime] = 0x3FF4000000000000;
  v21 = &v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize] = _Q0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = 1;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame] = 0;
  v27 = &v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
  v28 = *MEMORY[0x277D860B8];
  v29 = *(MEMORY[0x277D860B8] + 16);
  v30 = *(MEMORY[0x277D860B8] + 32);
  v31 = *(MEMORY[0x277D860B8] + 48);
  *v27 = *MEMORY[0x277D860B8];
  *(v27 + 1) = v29;
  *(v27 + 2) = v30;
  *(v27 + 3) = v31;
  *(v27 + 4) = v28;
  *(v27 + 5) = v29;
  *(v27 + 6) = v30;
  *(v27 + 7) = v31;
  *(v27 + 8) = xmmword_23AA10F30;
  *(v27 + 18) = 0;
  *(v27 + 19) = 0;
  *(v27 + 20) = 0x3FF0000000000000;
  *(v27 + 21) = 0;
  *(v27 + 22) = 0;
  *(v27 + 184) = xmmword_23AA1A690;
  v49 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue;
  v42 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v48 = "_TtC8RoomPlan13OpeningEntity";
  sub_23AA0CEF4();
  v52 = v19;
  v45 = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  v46 = sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v32 = *MEMORY[0x277D85260];
  v33 = v9 + 104;
  v34 = *(v9 + 104);
  v43 = v33;
  v41 = v12;
  v35 = v50;
  v34(v12, v32, v50);
  *&v4[v49] = sub_23AA0D554();
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer] = 0;
  v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager] = 0;
  v36 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue;
  sub_23AA0CEE4();
  v52 = MEMORY[0x277D84F90];
  sub_23AA0D764();
  v34(v41, v32, v35);
  *&v4[v36] = sub_23AA0D554();
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor] = 1;
  v37 = type metadata accessor for RoomCaptureView();
  v51.receiver = v4;
  v51.super_class = v37;
  v38 = objc_msgSendSuper2(&v51, sel_initWithFrame_, a1, a2, a3, a4);
  sub_23A9AEEA4(0);

  return v38;
}

id RoomCaptureView.init(frame:arSession:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v47 = a1;
  v46 = sub_23AA0D524();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v46);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23AA0D504();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = sub_23AA0CF24();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v44[6] = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled] = 1;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver] = 0;
  v20 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_deltaTimeArray] = MEMORY[0x277D84F90];
  v21 = v20;
  v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] = 0;
  v22 = &v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath];
  *v22 = 0;
  v22[1] = 0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_completeTransitionTime] = 0x3FF4000000000000;
  v23 = &v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize] = _Q0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = 1;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame] = 0;
  v29 = &v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
  v30 = *MEMORY[0x277D860B8];
  v31 = *(MEMORY[0x277D860B8] + 16);
  v32 = *(MEMORY[0x277D860B8] + 32);
  v33 = *(MEMORY[0x277D860B8] + 48);
  *v29 = *MEMORY[0x277D860B8];
  *(v29 + 1) = v31;
  *(v29 + 2) = v32;
  *(v29 + 3) = v33;
  *(v29 + 4) = v30;
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
  *(v29 + 7) = v33;
  *(v29 + 8) = xmmword_23AA10F30;
  *(v29 + 18) = 0;
  *(v29 + 19) = 0;
  *(v29 + 20) = 0x3FF0000000000000;
  *(v29 + 21) = 0;
  *(v29 + 22) = 0;
  *(v29 + 184) = xmmword_23AA1A690;
  v45 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue;
  v44[1] = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v44[7] = "_TtC8RoomPlan13OpeningEntity";
  sub_23AA0CEF4();
  v49 = v21;
  v44[4] = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230]);
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  v44[5] = sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v34 = *MEMORY[0x277D85260];
  v35 = v11 + 104;
  v36 = *(v11 + 104);
  v44[2] = v35;
  v44[0] = v14;
  v37 = v46;
  v36(v14, v34, v46);
  *&v6[v45] = sub_23AA0D554();
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder] = 0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer] = 0;
  v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding] = 0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager] = 0;
  v38 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue;
  sub_23AA0CEE4();
  v49 = MEMORY[0x277D84F90];
  sub_23AA0D764();
  v36(v44[0], v34, v37);
  *&v6[v38] = sub_23AA0D554();
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor] = 1;
  v39 = type metadata accessor for RoomCaptureView();
  v48.receiver = v6;
  v48.super_class = v39;
  v40 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a2, a3, a4, a5);
  v41 = v47;
  v42 = v47;
  sub_23A9AEEA4(v41);

  return v40;
}

void sub_23A9AEEA4(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0D104();
  v5 = MGCopyAnswer();

  if (v5)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast() & 1) != 0 && (v13)
    {
      sub_23A9B1528(a1);
      sub_23A9B07A0();
      sub_23A9B0E90();
      sub_23A9B0FE4();
      sub_23A9B1108();
      sub_23A9B1654();
      sub_23A9B0084();
    }

    else
    {
      v6 = type metadata accessor for RoomCaptureSession();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      v9 = a1;
      v10 = sub_23A9DD848(a1);

      *(v10 + 16) = 1;
      v11 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
      swift_beginAccess();
      v12 = *(v2 + v11);
      *(v2 + v11) = v10;
    }
  }

  else
  {
    __break(1u);
  }
}

id RoomCaptureView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RoomCaptureView.init(coder:)(void *a1)
{
  v2 = v1;
  v57 = a1;
  v56 = sub_23AA0D524();
  v3 = *(v56 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v56);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0D504();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_23AA0CF24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled] = 1;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver] = 0;
  v12 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_deltaTimeArray] = MEMORY[0x277D84F90];
  v13 = v12;
  v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] = 0;
  v14 = &v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath];
  *v14 = 0;
  v14[1] = 0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_completeTransitionTime] = 0x3FF4000000000000;
  v15 = &v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize] = _Q0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = 1;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame] = 0;
  v21 = &v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
  v22 = *MEMORY[0x277D860B8];
  v23 = *(MEMORY[0x277D860B8] + 16);
  v24 = *(MEMORY[0x277D860B8] + 32);
  v25 = *(MEMORY[0x277D860B8] + 48);
  *v21 = *MEMORY[0x277D860B8];
  *(v21 + 1) = v23;
  *(v21 + 2) = v24;
  *(v21 + 3) = v25;
  *(v21 + 4) = v22;
  *(v21 + 5) = v23;
  *(v21 + 6) = v24;
  *(v21 + 7) = v25;
  *(v21 + 8) = xmmword_23AA10F30;
  *(v21 + 18) = 0;
  *(v21 + 19) = 0;
  *(v21 + 20) = 0x3FF0000000000000;
  *(v21 + 21) = 0;
  *(v21 + 22) = 0;
  *(v21 + 184) = xmmword_23AA1A690;
  v55 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue;
  v48 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v54 = "_TtC8RoomPlan13OpeningEntity";
  sub_23AA0CEF4();
  *&v62 = v13;
  v51 = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230]);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  v52 = sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v26 = *MEMORY[0x277D85260];
  v27 = v3 + 104;
  v28 = *(v3 + 104);
  v49 = v27;
  v47 = v6;
  v29 = v56;
  v28(v6, v26, v56);
  *&v2[v55] = sub_23AA0D554();
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder] = 0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer] = 0;
  v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding] = 0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager] = 0;
  v55 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue;
  sub_23AA0CEE4();
  *&v62 = MEMORY[0x277D84F90];
  v30 = v57;
  sub_23AA0D764();
  v28(v47, v26, v29);
  *&v2[v55] = sub_23AA0D554();
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor] = 1;
  v31 = type metadata accessor for RoomCaptureView();
  v64.receiver = v2;
  v64.super_class = v31;
  v32 = v30;
  v33 = objc_msgSendSuper2(&v64, sel_initWithCoder_, v30);
  v34 = v33;
  if (v33)
  {
    v35 = v33;
    v36 = sub_23AA0D104();
    v37 = [v30 decodeBoolForKey_];

    v38 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
    swift_beginAccess();
    v35[v38] = v37;
    v39 = sub_23AA0D104();
    v40 = [v30 decodeObjectForKey_];

    if (v40)
    {
      sub_23AA0D704();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v62 = v60;
    v63 = v61;
    if (*(&v61 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0D48, &qword_23AA1A6A0);
      if (swift_dynamicCast())
      {
        v41 = v58;
        v42 = &v35[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate];
        swift_beginAccess();
        *(v42 + 1) = v41;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_23A8D50D0(&v62, &unk_27DFB08E0, &qword_23AA13038);
    }

    v43 = sub_23AA0D104();
    v44 = [v32 decodeObjectForKey_];

    if (v44)
    {
      sub_23AA0D704();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v62 = v60;
    v63 = v61;
    if (*(&v61 + 1))
    {
      if (swift_dynamicCast())
      {
        v35[v38] = v59;
      }
    }

    else
    {
      sub_23A8D50D0(&v62, &unk_27DFB08E0, &qword_23AA13038);
    }

    sub_23A9AEEA4(0);
  }

  return v34;
}

void sub_23A9AF7D4(void *a1)
{
  v3 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding;
  v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding] = 1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RoomCaptureView();
  objc_msgSendSuper2(&v10, sel_encodeWithCoder_, a1);
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  v5 = v1[v4];
  v6 = sub_23AA0D104();
  [a1 encodeBool:v5 forKey:v6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_unknownObjectRetain();
    v9 = sub_23AA0D104();
    [a1 encodeObject:v8 forKey:v9];
    swift_unknownObjectRelease_n();
  }

  v1[v3] = 0;
}

void sub_23A9AF980()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
  if (v2)
  {
    v3 = v2;
    sub_23A9C41FC();
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v15 = sub_23A9BAD68;
  v16 = v5;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_23A9AD0B8;
  v14 = &block_descriptor_240;
  v6 = _Block_copy(&v11);
  v7 = v1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v15 = sub_23A9BAD8C;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_23A8CBE48;
  v14 = &block_descriptor_246;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v4 animateWithDuration:v6 animations:v9 completion:1.25];
  _Block_release(v9);
  _Block_release(v6);
}

void sub_23A9AFB28(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView;
  v4 = *(a2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v4)
  {
    v5 = v4;
    v6 = sub_23AA0C8A4();
    sub_23AA0C884();
    v6(&v8, 0);
    sub_23A9B2950();

    v7 = *(a2 + v3);
    if (v7)
    {
      [v7 removeFromSuperview];
      v4 = *(a2 + v3);
    }

    else
    {
      v4 = 0;
    }
  }

  *(a2 + v3) = 0;
}

void sub_23A9AFBE8()
{
  v1 = v0;
  sub_23A9AFE24();
  v2 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
  v3 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
  if (v3)
  {
    v4 = v3;
    sub_23A9C4518();

    v5 = *&v1[v2];
    if (v5)
    {
      v6 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
      swift_beginAccess();
      v7 = v1[v6];
      *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = v7;
      v8 = *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
      if (!v8)
      {
        __break(1u);
        return;
      }

      [v8 setHidden_];
    }
  }

  if (qword_27DFAE498 != -1)
  {
    swift_once();
  }

  v9 = qword_27DFC07E8;
  *(qword_27DFC07E8 + 48) = 0u;
  v9[4] = 0u;
  v9[5] = 0u;
  v9[6] = 0u;
  v9[7] = 0u;
  v9[8] = 0u;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_23A9BAD44;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_234;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v10 animateWithDuration:v12 animations:1.25];
  _Block_release(v12);
}

id sub_23A9AFDA0(uint64_t a1, double a2, float a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v5)
  {
    [v5 setAlpha_];
  }

  result = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer);
  if (result)
  {
    *&a2 = a3;

    return [result setOpacity_];
  }

  return result;
}

uint64_t sub_23A9AFE24()
{
  v1 = v0;
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v2 = qword_27DFC04B0;
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = MEMORY[0x277D84F98];
  *(v2 + 24) = MEMORY[0x277D84F98];

  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = v4;

  v7 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (v7)
  {
    if (!*&v7[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
    {
      __break(1u);
      return result;
    }

    v8 = v7;

    sub_23A8C63CC();
    sub_23A8E8478();

    sub_23A9C7480();
  }

  v9 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager);
  if (v9)
  {
    v10 = *(*&v9[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager] + 24);
    v11 = v9;
    sub_23A8E8478();
  }

  if (qword_27DFAE488 != -1)
  {
    swift_once();
  }

  sub_23A9637AC();
  if (qword_27DFAE458 != -1)
  {
    swift_once();
  }

  v12 = qword_27DFC0700;
  if (qword_27DFC0700)
  {
    swift_beginAccess();
    v13 = *(v12 + 16);
    *(v12 + 16) = v4;
  }

  if (qword_27DFAE520 != -1)
  {
    swift_once();
  }

  sub_23AA08EAC();
  if (qword_27DFAE490 != -1)
  {
    swift_once();
  }

  return sub_23A99601C();
}

void sub_23A9B0084()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [v0 bounds];
  [v1 setFrame_];
  [v1 setOpacity_];
  v2 = [v0 layer];
  [v2 insertSublayer:v1 atIndex:0];

  v3 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer];
  *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer] = v1;
  v4 = v1;

  sub_23A9B0474();
}

int64x2_t *sub_23A9B0168()
{
  v1 = sub_23AA0C124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
      if (v9)
      {
        v10 = v4;
        v11 = v7;
        v12 = v9;
        sub_23AA0C984();
        sub_23AA0C6D4();

        sub_23AA0C114();
        (*(v2 + 8))(v6, v10);
        RECustomMatrixCameraComponentGetComponentType();
        result = RESceneGetComponentsOfClass();
        if (v14 < 0)
        {
          __break(1u);
          return result;
        }

        if (v14)
        {
          v15 = result->i64[0];
          Entity = REComponentGetEntity();
          sub_23AA0C734();
          sub_23AA0C564();

          __swift_project_boxed_opaque_existential_1(v20, v20[3]);
          v17 = sub_23AA0C4F4();
          __swift_destroy_boxed_opaque_existential_1(v20);
          type metadata accessor for VoiceOverManager();
          swift_allocObject();
          v18 = sub_23A9BD410(Entity, v17);

          return v18;
        }
      }
    }
  }

  return 0;
}

void sub_23A9B0360(uint64_t a1)
{
  v3 = [v1 traitCollection];
  LODWORD(a1) = [v3 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (a1)
  {

    sub_23A9B0474();
  }
}

void sub_23A9B0474()
{
  v1 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = objc_opt_self();
    if (v4 == 1)
    {
      v6 = [v5 whiteColor];
      v7 = objc_allocWithZone(MEMORY[0x277D75348]);
      v8 = v6;
      v9 = [v7 initWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
    }

    else
    {
      v10 = [v5 blackColor];
      v11 = objc_allocWithZone(MEMORY[0x277D75348]);
      v8 = v10;
      v9 = [v11 initWithRed:0.15 green:0.15 blue:0.15 alpha:1.0];
    }

    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_23AA11C10;
    v19 = v12;
    v14 = [v8 CGColor];

    type metadata accessor for CGColor(0);
    v16 = v15;
    *(v13 + 56) = v15;
    *(v13 + 32) = v14;
    v17 = [v19 CGColor];

    *(v13 + 88) = v16;
    *(v13 + 64) = v17;
    v18 = sub_23AA0D2E4();

    [v2 setColors_];
  }
}

void sub_23A9B069C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RoomCaptureView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

void sub_23A9B07A0()
{
  v1 = v0;
  v2 = sub_23AA0C864();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v50[-v8];
  v10 = sub_23AA0C724();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 bounds];
  (*(v11 + 104))(v15, *MEMORY[0x277CDB598], v10);
  v16 = objc_allocWithZone(sub_23AA0C994());
  v17 = sub_23AA0C974();
  [v1 insertSubview:v17 atIndex:0];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = sub_23AA07DB0();
  sub_23AA08688(v1, v18, v19, v20, v21);
  v22 = sub_23AA0C7A4();
  v23 = sub_23AA0C794();
  sub_23AA0C774();
  v23(v50, 0);
  v22(v51, 0);
  v24 = sub_23AA0C7A4();
  v25 = sub_23AA0C794();
  sub_23AA0C784();
  v25(v50, 0);
  v24(v51, 0);
  sub_23AA0C7F4();
  v26 = sub_23AA0C874();
  sub_23A9C3EF8(v9, v6);
  v27 = *(v3 + 8);
  v27(v6, v2);
  v27(v9, v2);
  v26(v51, 0);
  sub_23AA0C804();
  v28 = sub_23AA0C874();
  sub_23A9C3EF8(v9, v6);
  v27(v6, v2);
  v27(v9, v2);
  v28(v51, 0);
  sub_23AA0C824();
  v29 = sub_23AA0C874();
  sub_23A9C3EF8(v9, v6);
  v27(v6, v2);
  v27(v9, v2);
  v29(v51, 0);
  sub_23AA0C834();
  v30 = sub_23AA0C874();
  sub_23A9C3EF8(v9, v6);
  v27(v6, v2);
  v27(v9, v2);
  v30(v51, 0);
  sub_23AA0C854();
  v31 = sub_23AA0C874();
  sub_23A9C3EF8(v9, v6);
  v27(v6, v2);
  v27(v9, v2);
  v31(v51, 0);
  sub_23AA0C7E4();
  v32 = sub_23AA0C874();
  sub_23A9C3EF8(v9, v6);
  v27(v6, v2);
  v27(v9, v2);
  v32(v51, 0);
  sub_23AA0C844();
  v33 = sub_23AA0C874();
  sub_23A9C3EF8(v9, v6);
  v27(v6, v2);
  v27(v9, v2);
  v33(v51, 0);
  v34 = sub_23A9ADC0C();
  sub_23A9F5EC8(v17, v34);

  v35 = *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView];
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView] = v17;
  v36 = v17;

  sub_23AA0C984();
  v37 = sub_23AA0C6E4();

  v38 = *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera];
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera] = v37;

  v39 = [v36 window];
  if (v39 && (v40 = v39, v41 = [v39 windowScene], v40, v41))
  {
    v42 = [v41 interfaceOrientation];
  }

  else
  {
    v42 = 1;
  }

  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = v42;
  [v36 bounds];
  v44 = v43;
  v46 = v45;
  [v36 contentScaleFactor];
  v48 = &v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize];
  *v48 = v44 * v47;
  v48[1] = v46 * v47;
  if (qword_27DFAE478 != -1)
  {
    swift_once();
  }

  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  sub_23A95DA18(IsVoiceOverRunning);
}

void sub_23A9B0E90()
{
  v1 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 contentScaleFactor];
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for RoomCaptureCoachingOverlayView());
    v14 = v0;
    v15 = sub_23A9C5170(v4, v6, v8, v10, v12);
    [v14 addSubview_];
    sub_23AA08688(v14, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));
    v16 = *&v14[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
    *&v14[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView] = v15;
    v17 = v15;

    v18 = sub_23A9ADC0C();
    sub_23A9F643C(v18);
  }
}

void sub_23A9B0FE4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v2)
  {
    v3 = type metadata accessor for WorldSpaceManager();
    v4 = objc_allocWithZone(v3);
    v4[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_roomCaptureSessionIsRunning] = 0;
    *&v4[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_arView] = v2;
    v5 = v2;
    sub_23AA0C984();
    [v5 contentScaleFactor];
    v7 = v6;
    type metadata accessor for WorldViewManager();
    swift_allocObject();
    *&v4[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager] = sub_23A9BCCA4(v7);
    v11.receiver = v4;
    v11.super_class = v3;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    v9 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager);
    *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager) = v8;

    v10 = sub_23A9ADC0C();
    sub_23A9F6DAC(v10);
  }
}

uint64_t sub_23A9B1108()
{
  v1 = v0;
  v2 = sub_23AA0CE84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  if (sub_23A9ADCC0())
  {
    type metadata accessor for SceneShaderRenderer();
    swift_allocObject();

    v12 = sub_23A952224(v8);

    v13 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer);
    *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer) = v12;
  }

  else
  {
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v9 = sub_23AA0CE54();
    v10 = sub_23AA0D494();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23A8B4000, v9, v10, "Cannot configure scene renderer because frameProcessor is nil", v11, 2u);
      MEMORY[0x23EE91710](v11, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_23A9B1528(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RoomCaptureSession();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  v8 = sub_23A9DD848(a1);

  *(v8 + 16) = 1;
  v9 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v10 = *&v2[v9];
  *&v2[v9] = v8;

  v12 = *&v2[v9];
  if (v12)
  {
    swift_beginAccess();
    *(v12 + 65) = 0;
    type metadata accessor for RoomCaptureSessionInternalObserver();
    v13 = swift_allocObject();
    v14 = v2;
    sub_23A9B7100(v14);
    v15 = *&v14[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver];
    *&v14[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver] = v13;

    v16 = *&v2[v9];
    if (v16)
    {
      *(v16 + 48) = &off_284D85F98;
      swift_unknownObjectWeakAssign();
      v17 = sub_23A9ADC0C();
      sub_23A9F6ECC(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23A9B1654()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera);
    if (v2)
    {
      v3 = v1;

      sub_23A9B17AC(v3, v2);
      sub_23A9ADC0C();
      v4 = sub_23A9FF620();

      v5 = *(v4 + 2);

      if (v5)
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();

        v6 = sub_23AA0C8A4();
        sub_23AA0C884();
        v6(&v7, 0);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_23A9B17AC(void *a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = sub_23AA0CEC4();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23AA0CF24();
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A9B2CA0();
  v11 = *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  aBlock[4] = sub_23A9BA9F0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_184;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v23 = v2;
  sub_23AA0CEE4();
  *&v28[0] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v10, v6, v13);
  _Block_release(v13);

  (*(v25 + 8))(v6, v3);
  (*(v7 + 8))(v10, v24);

  v15 = v26;
  sub_23AA0C984();
  sub_23AA0C5B4();
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v16 = swift_allocObject();
  v17 = v23;
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v27;
  v19 = v15;

  sub_23AA0C714();

  sub_23A8D50D0(v28, &qword_27DFB0DC0, &unk_23AA1A7B0);
  v20 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver;
  swift_beginAccess();
  sub_23A999018(aBlock, &v17[v20]);
  return swift_endAccess();
}

void sub_23A9B1B90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [a3 bounds];
    v9 = v8;
    v11 = v10;
    [a3 contentScaleFactor];
    v13 = &v7[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize];
    v13->f64[0] = v9 * v12;
    v13->f64[1] = v11 * v12;
    v91 = a3;
    v14 = [a3 window];
    if (v14 && (v15 = v14, v16 = [v14 windowScene], v15, v16))
    {
      v17 = [v16 interfaceOrientation];
    }

    else
    {
      v17 = 1;
    }

    *&v7[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = v17;
    v18 = *&v7[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue];
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_23A9BAA5C;
    *(v20 + 24) = v19;
    *&v104 = sub_23A916670;
    *(&v104 + 1) = v20;
    aBlock.n128_u64[0] = MEMORY[0x277D85DD0];
    aBlock.n128_u64[1] = 1107296256;
    *&v103 = sub_23AA08C40;
    *(&v103 + 1) = &block_descriptor_197;
    v21 = _Block_copy(&aBlock);
    v22 = v7;

    dispatch_sync(v18, v21);
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = &v22[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
      swift_beginAccess();
      v111 = *(isEscapingClosureAtFileLocation + 144);
      v112 = *(isEscapingClosureAtFileLocation + 160);
      v113 = *(isEscapingClosureAtFileLocation + 176);
      v114 = *(isEscapingClosureAtFileLocation + 192);
      v107 = *(isEscapingClosureAtFileLocation + 80);
      v108 = *(isEscapingClosureAtFileLocation + 96);
      v109 = *(isEscapingClosureAtFileLocation + 112);
      v110 = *(isEscapingClosureAtFileLocation + 128);
      v103 = *(isEscapingClosureAtFileLocation + 16);
      v104 = *(isEscapingClosureAtFileLocation + 32);
      v105 = *(isEscapingClosureAtFileLocation + 48);
      v106 = *(isEscapingClosureAtFileLocation + 64);
      aBlock = *isEscapingClosureAtFileLocation;
      sub_23A9B9164(a4, &aBlock);
      sub_23AA0C5A4();
      LODWORD(v9) = v24;
      if (qword_27DFAE498 == -1)
      {
LABEL_8:
        v25 = qword_27DFC07E8;
        if (*(qword_27DFC07E8 + 32) != 1)
        {
          goto LABEL_10;
        }

        v26 = *(isEscapingClosureAtFileLocation + 128);
        v27 = *(qword_27DFC07E8 + 40);
        v28 = swift_allocObject();
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_23A9BAB74;
        *(v29 + 24) = v28;
        v99 = sub_23A9166DC;
        v100 = v29;
        v95 = MEMORY[0x277D85DD0];
        v96 = 1107296256;
        v97 = sub_23AA08C40;
        v98 = &block_descriptor_227;
        v30 = _Block_copy(&v95);

        dispatch_sync(v27, v30);
        _Block_release(v30);
        LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

        if (v27)
        {
          __break(1u);
        }

        else
        {
LABEL_10:
          if (qword_27DFAE410 != -1)
          {
            swift_once();
          }

          v31 = qword_27DFC0670;
          if (*(qword_27DFC0670 + 32) != 1)
          {
            goto LABEL_14;
          }

          v32 = *(qword_27DFC0670 + 40);
          v33 = swift_allocObject();
          *(v33 + 16) = v31;
          *(v33 + 24) = LODWORD(v9);
          v34 = swift_allocObject();
          *(v34 + 16) = sub_23A9BAB30;
          *(v34 + 24) = v33;
          v99 = sub_23A9166DC;
          v100 = v34;
          v95 = MEMORY[0x277D85DD0];
          v96 = 1107296256;
          v97 = sub_23AA08C40;
          v98 = &block_descriptor_217;
          v35 = _Block_copy(&v95);

          dispatch_sync(v32, v35);
          _Block_release(v35);
          LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

          if ((v32 & 1) == 0)
          {
LABEL_14:
            v36 = sub_23A9ADC0C();
            swift_beginAccess();
            v37 = v36[159];

            if (v37 != 1)
            {
              goto LABEL_19;
            }

            if (qword_27DFAE520 == -1)
            {
LABEL_16:
              v38 = sub_23AA08CA4();
              if ((v38 & 0x100000000) == 0)
              {
                v39 = *&v38;
                sub_23A9F745C(*&v38);
                sub_23A9F7570(v39);
                v40 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
                swift_beginAccess();
                if (!*&v22[v40])
                {
                  goto LABEL_68;
                }

                sub_23A984AC0();
              }

LABEL_19:
              if (qword_27DFAE478 != -1)
              {
                swift_once();
              }

              v41 = *&v9;
              sub_23A95DA48(v41);
              if (qword_27DFAE368 != -1)
              {
                swift_once();
              }

              sub_23A8D4778(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 16), *(isEscapingClosureAtFileLocation + 32), *(isEscapingClosureAtFileLocation + 48));
              v42 = *&v22[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager];
              if (v42)
              {
                v43 = *(*&v42[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager] + 24);
                v44 = vcvt_f32_f64(*v13);
                v45 = v42;
                sub_23A8E086C(v44, 0, v41);
              }

              v46 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
              v47 = *&v22[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
              if (v47)
              {
                v48 = *isEscapingClosureAtFileLocation;
                v49 = *(isEscapingClosureAtFileLocation + 16);
                v50 = *(isEscapingClosureAtFileLocation + 32);
                v51 = *(isEscapingClosureAtFileLocation + 48);
                LOBYTE(v95) = 0;
                v52 = v47 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform;
                *v52 = v48;
                *(v52 + 16) = v49;
                *(v52 + 32) = v50;
                *(v52 + 48) = v51;
                *(v52 + 64) = 0;
              }

              if (!UIAccessibilityIsVoiceOverRunning())
              {
                if (qword_27DFAE518 != -1)
                {
                  swift_once();
                }

                v53 = off_27DFB17B0;
                swift_beginAccess();
                if (v53[144] != 1)
                {
                  goto LABEL_40;
                }
              }

              v54 = *&v22[v46];
              if (!v54)
              {
                goto LABEL_40;
              }

              if (*(v54 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
              {
                v55 = *(v54 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse);

                v56 = sub_23A8C63CC();

                v57 = *&v22[v46];
                if (v57)
                {
                  v90 = v56;
                  v101 = 0;
                  v58 = *&v22[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue];
                  v59 = swift_allocObject();
                  *(v59 + 16) = &v101;
                  *(v59 + 24) = v22;
                  v60 = swift_allocObject();
                  *(v60 + 16) = sub_23A9BAAAC;
                  *(v60 + 24) = v59;
                  v99 = sub_23A9166DC;
                  v100 = v60;
                  v95 = MEMORY[0x277D85DD0];
                  v96 = 1107296256;
                  v97 = sub_23AA08C40;
                  v98 = &block_descriptor_207;
                  v61 = _Block_copy(&v95);
                  v62 = v22;
                  v63 = v58;

                  v64 = v57;

                  dispatch_sync(v63, v61);

                  _Block_release(v61);
                  LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

                  if (v61)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v65 = v101;
                    if (!v101)
                    {
                      v68 = sub_23A9B0168();

                      v69 = *&v62[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager];
                      *&v62[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager] = v68;

LABEL_57:

                      return;
                    }

                    v66 = *&v64[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
                    if (v66)
                    {
                      v67 = *(v66 + qword_27DFC09E0) ^ 1;
                    }

                    else
                    {
                      v67 = 0;
                    }

                    [v91 frame];
                    Width = CGRectGetWidth(v115);
                    [v91 frame];
                    Height = CGRectGetHeight(v116);
                    v63 = &qword_27DFB0000;
                    if ((v67 & 1) == 0)
                    {
                      v72 = Height;
                      v73 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
                      swift_beginAccess();
                      v74 = *&v62[v73];
                      if (!v74)
                      {
LABEL_70:
                        __break(1u);
                        goto LABEL_71;
                      }

                      v75 = *&v62[v73];

                      sub_23AA0C894();
                      v92 = v76;
                      v77 = *&v64[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
                      if (!v77)
                      {
LABEL_71:
                        __break(1u);
                        return;
                      }

                      v78 = v77;
                      v79 = sub_23AA0C984();

                      v80 = *(v65 + 40);
                      if (v80 <= 29)
                      {

                        *(v65 + 40) = v80 + 1;
                        goto LABEL_55;
                      }

                      v81 = Width / v72;
                      *(v65 + 40) = 0;
                      v93[0] = MEMORY[0x277D84F90];
                      v94 = MEMORY[0x277D84F90];
                      v82 = *(v90 + 80);
                      v83 = sub_23A9FCB14();

                      *&v84 = v81;
                      sub_23A9B81E4(v83, v65, v79, v74, v93, &v94, v84, v92);

                      sub_23A9C18EC(v93[0], v94);

                      v63 = &qword_27DFB0000;
LABEL_51:

                      v85 = &v64[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText];
                      if (*&v64[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText + 8] || (v85 = &v64[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText], *&v64[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText + 8]))
                      {
                        v86 = *v85;

                        v87 = sub_23AA0D104();
                      }

                      else
                      {
                        v87 = sub_23AA0D104();
                      }

                      [v64 setAccessibilityLabel_];

LABEL_55:
                      isa = v63[398].isa;
                      swift_beginAccess();
                      v89 = *(isa + v62);
                      if (v89)
                      {

                        sub_23A9BD4B4(v89);

                        goto LABEL_57;
                      }

                      goto LABEL_69;
                    }

                    if (qword_27DFAE360 == -1)
                    {
LABEL_45:

                      goto LABEL_51;
                    }
                  }

                  swift_once();
                  goto LABEL_45;
                }

LABEL_40:

                return;
              }

              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_64:
            swift_once();
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    swift_once();
    goto LABEL_8;
  }
}

void sub_23A9B286C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation);
    v3 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize);
    v4 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize + 8);
    v5 = a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters;
    swift_beginAccess();
    v6 = v1;
    sub_23AA0A630(v6, v2, v3, v4);
    swift_endAccess();
    if (sub_23A9ADCC0())
    {
      v7 = *(v5 + 152);
      v8[0] = *(v5 + 136);
      v8[1] = v7;
      v8[2] = *(v5 + 168);
      sub_23A94473C(v6, v8);
    }
  }
}

uint64_t sub_23A9B2950()
{
  v1 = v0;
  sub_23A9B2CA0();
  sub_23AA0C984();
  sub_23AA0C5B4();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23AA0C714();

  sub_23A8D50D0(v4, &qword_27DFB0DC0, &unk_23AA1A7B0);
  v2 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver;
  swift_beginAccess();
  sub_23A999018(v6, v1 + v2);
  return swift_endAccess();
}

void sub_23A9B2A5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_23AA0C5A4();
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v2 = &v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
    swift_beginAccess();
    sub_23A8D4778(*v2, v2[1], v2[2], v2[3]);
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_8;
    }

    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v3 = off_27DFB17B0;
    swift_beginAccess();
    if (v3[144] == 1)
    {
LABEL_8:
      v4 = *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
      if (v4)
      {
        v5 = *&v4[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
        if (v5 && (*(v5 + qword_27DFC09E0) & 1) == 0)
        {
          v7 = qword_27DFAE360;
          v8 = v4;
          if (v7 != -1)
          {
            swift_once();
          }
        }

        else
        {
          v6 = v4;
        }

        v9 = &v4[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText];
        if (*&v4[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText + 8] || (v9 = &v4[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText], *&v4[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText + 8]))
        {
          v10 = *v9;

          v11 = sub_23AA0D104();
        }

        else
        {
          v11 = sub_23AA0D104();
        }

        [v4 setAccessibilityLabel_];

        v1 = v4;
      }
    }
  }
}

uint64_t sub_23A9B2CA0()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver;
  swift_beginAccess();
  sub_23A8D5194(v0 + v1, &v4, &unk_27DFB10C0, &unk_23AA19560);
  if (*(&v5 + 1))
  {
    sub_23A8CA9D8(&v4, v3);
    sub_23A8D50D0(&v4, &unk_27DFB10C0, &unk_23AA19560);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_23AA0CEA4();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_23A8D50D0(&v4, &unk_27DFB10C0, &unk_23AA19560);
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_23A999018(&v4, v0 + v1);
  return swift_endAccess();
}

void sub_23A9B2DB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer))
    {
      v2 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer);

      sub_23A953064();
    }
  }
}

id RoomCaptureView.__deallocating_deinit()
{
  *(sub_23A9ADC0C() + 3) = 0;
  swift_unknownObjectWeakAssign();

  sub_23A9AFE24();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoomCaptureView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23A9B2E98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23A9B2EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23A9B2F54(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_23A9B2FB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_23A9B3430(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  if (qword_27DFAE488 != -1)
  {
    swift_once();
  }

  v7 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v8 = *&v6[v7];
  if (!v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  swift_beginAccess();
  v9 = *(v8 + 56);
  sub_23A963878(v9);

  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  sub_23A8CC56C(a2, a3);
  v10 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager];
  if (v10)
  {
    v10[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_roomCaptureSessionIsRunning] = 1;
    v11 = *(*&v10[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager] + 24);
    v12 = v10;
    sub_23A8E1850(a2);
  }

  v13 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
  if (!v13)
  {
    goto LABEL_12;
  }

  if (!*&v13[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
  {
LABEL_21:
    __break(1u);
    return;
  }

  v14 = v13;

  sub_23A8C63CC();
  sub_23A8E1850(a2);

LABEL_12:
  if (UIAccessibilityIsVoiceOverRunning())
  {
    goto LABEL_24;
  }

  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v15 = off_27DFB17B0;
  swift_beginAccess();
  if (v15[144] == 1)
  {
LABEL_24:
    if (*&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager])
    {
      v16 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager];

      sub_23A9BDE1C(a2);
    }
  }
}

uint64_t sub_23A9B36BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v24 = a1;
  v25 = a3;
  v6 = sub_23AA0CEC4();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CF24();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CapturedRoom(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_23AA0C594();
  sub_23AA0C584();
  sub_23AA0C574();

  sub_23AA0CB04();

  REEngineConfigurationCreateFromEngine();
  v17 = REEngineConfigurationGetEngineQueue();
  if (!v17)
  {
    sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
    v17 = sub_23AA0D534();
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A9BABC4(v24, &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  sub_23A9BAC8C(&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for CapturedRoom);
  *(v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = v26;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = v27;
  v21 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  v31 = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v13, v9, v21);
  _Block_release(v21);

  (*(v30 + 8))(v9, v6);
  (*(v28 + 8))(v13, v29);
}

void sub_23A9B3AE8(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    sub_23A8CD540(a2, a3);
    v7 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager];
    if (v7)
    {
      v7[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_roomCaptureSessionIsRunning] = 1;
      v8 = *(*&v7[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager] + 24);
      v9 = v7;
      sub_23A8E259C(a2);
    }

    v10 = *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
    if (v10)
    {
      if (*&v10[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
      {
        v11 = v10;

        sub_23A8C63CC();
        sub_23A8E259C(a2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_23A9B3C44(uint64_t a1)
{
  v19 = a1;
  v1 = sub_23AA0CEC4();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0CF24();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CapturedRoom(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_23AA0C594();
  sub_23AA0C584();
  sub_23AA0C574();

  sub_23AA0CB04();

  REEngineConfigurationCreateFromEngine();
  v12 = REEngineConfigurationGetEngineQueue();
  if (!v12)
  {
    sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
    v12 = sub_23AA0D534();
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A9BABC4(v19, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_23A9BAC8C(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for CapturedRoom);
  aBlock[4] = sub_23A9BA720;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_163_0;
  v16 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  v23 = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v8, v4, v16);
  _Block_release(v16);

  (*(v22 + 8))(v4, v1);
  (*(v20 + 8))(v8, v21);
}

void sub_23A9B4064(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    sub_23A8CF430(a2);
    v5 = *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager];
    if (v5)
    {
      v5[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_roomCaptureSessionIsRunning] = 1;
      v6 = *(*&v5[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager] + 24);
      v7 = v5;
      sub_23A8E2914(a2);
    }

    v8 = *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
    if (v8)
    {
      if (*&v8[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
      {
        v9 = v8;

        sub_23A8C63CC();
        sub_23A8E2914(a2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_23A9B41B8(uint64_t *a1)
{
  v2 = sub_23AA0CE84();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_23AA0CEC4();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23AA0CF24();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CapturedRoom(0);
  v25 = *(v12 - 8);
  v13 = *(v25 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_23A9ADC0C();
  swift_beginAccess();
  v15 = v14[256];

  if (v15 == 1)
  {
    sub_23A8EE70C(a1);
  }

  sub_23AA0C594();
  sub_23AA0C584();
  sub_23AA0C574();

  sub_23AA0CB04();

  REEngineConfigurationCreateFromEngine();
  v16 = REEngineConfigurationGetEngineQueue();
  if (!v16)
  {
    sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
    v16 = sub_23AA0D534();
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A9BABC4(a1, &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CapturedRoom);
  v18 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  sub_23A9BAC8C(&v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18, type metadata accessor for CapturedRoom);
  aBlock[4] = sub_23A9BA5BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_156;
  v20 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  v29 = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v11, v7, v20);
  _Block_release(v20);

  (*(v28 + 8))(v7, v4);
  (*(v26 + 8))(v11, v27);
}

void sub_23A9B4884(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
    if (v5)
    {
      if (!*&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
      {
        __break(1u);
        return;
      }

      v6 = v5;

      sub_23A8C6CB8(a2);

      sub_23A9C6E84(0);
    }
  }
}

void sub_23A9B493C(__int128 *a1, void *a2)
{
  v3 = v2;
  v6 = sub_23AA0CEC4();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23AA0CF24();
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CED4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v46 = a1[2];
  v47 = v17;
  v48 = a1[4];
  v18 = a1[1];
  v44 = *a1;
  v45 = v18;
  if (v3[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] == 1)
  {
    v19 = &v3[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate];
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_6;
    }

    v20 = *(v19 + 1);
    ObjectType = swift_getObjectType();
    v43[2] = v46;
    v43[3] = v47;
    v43[4] = v48;
    v43[0] = v44;
    v43[1] = v45;
    LOBYTE(v20) = (*(v20 + 8))(v43, a2, ObjectType, v20);
    swift_unknownObjectRelease();
    if ((v20 & 1) == 0)
    {
      sub_23A9AFBE8();
    }

    else
    {
LABEL_6:
      if (!a2 || (*&v43[0] = a2, v22 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0), (swift_dynamicCast() & 1) == 0) || LOBYTE(v42[0]) != 2)
      {
        v23 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
        swift_beginAccess();
        if (v3[v23])
        {
          goto LABEL_12;
        }

        v24 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
        v25 = *&v3[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
        if (!v25)
        {
          goto LABEL_12;
        }

        *(v25 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = 1;
        v26 = *(v25 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
        if (v26)
        {
          [v26 setHidden_];
          v27 = *&v3[v24];
          if (v27)
          {
            [v27 setAlpha_];
          }

LABEL_12:
          sub_23A9AF980();
          sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
          (*(v13 + 104))(v16, *MEMORY[0x277D851C0], v12);
          v28 = sub_23AA0D564();
          (*(v13 + 8))(v16, v12);
          v29 = swift_allocObject();
          *(v29 + 16) = v3;
          v30 = v47;
          *(v29 + 64) = v46;
          *(v29 + 80) = v30;
          *(v29 + 96) = v48;
          v31 = v45;
          *(v29 + 32) = v44;
          *(v29 + 48) = v31;
          *(v29 + 112) = a2;
          v42[4] = sub_23A9BA178;
          v42[5] = v29;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 1107296256;
          v42[2] = sub_23A9AD0B8;
          v42[3] = &block_descriptor_115;
          v32 = _Block_copy(v42);
          v33 = a2;
          v34 = v3;
          sub_23A9ACA9C(&v44, v43);
          sub_23AA0CEE4();
          *&v43[0] = MEMORY[0x277D84F90];
          sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
          sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
          v35 = v38;
          v36 = v41;
          sub_23AA0D764();
          MEMORY[0x23EE8FFE0](0, v11, v35, v32);
          _Block_release(v32);

          (*(v40 + 8))(v35, v36);
          (*(v37 + 8))(v11, v39);

          return;
        }

        __break(1u);
      }
    }
  }
}

void sub_23A9B4EBC(char *a1, _OWORD *a2, void *a3)
{
  v6 = sub_23AA0CEC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0CF24();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] == 1)
  {
    v34 = v14;
    v35 = v7;
    v17 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder;
    if (!*&a1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder])
    {
      v18 = type metadata accessor for RoomBuilder();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      v21 = swift_allocObject();
      v21[1].i8[8] = 0;
      v21[2] = vdupq_n_s64(1uLL);
      v22 = a3;
      v23 = OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B10, &qword_23AA1A760);
      v25 = &v21->i8[v23];
      a3 = v22;
      (*(*(v24 - 8) + 56))(v25, 1, 1, v24);
      v21[1].i64[0] = 1;
      v21[1].i8[8] = 1;
      v26 = *&a1[v17];
      *&a1[v17] = v21;
    }

    sub_23AA0C594();
    sub_23AA0C584();
    sub_23AA0C574();

    sub_23AA0CB04();

    REEngineConfigurationCreateFromEngine();
    v27 = REEngineConfigurationGetEngineQueue();
    if (!v27)
    {
      sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
      v27 = sub_23AA0D534();
    }

    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    v29 = a2[3];
    *(v28 + 64) = a2[2];
    *(v28 + 80) = v29;
    *(v28 + 96) = a2[4];
    v30 = a2[1];
    *(v28 + 32) = *a2;
    *(v28 + 48) = v30;
    *(v28 + 112) = a3;
    aBlock[4] = sub_23A9BA1D8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_121;
    v31 = _Block_copy(aBlock);
    v32 = a1;
    sub_23A9ACA9C(a2, v36);
    v33 = a3;
    sub_23AA0CEE4();
    v36[0] = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v16, v10, v31);
    _Block_release(v31);

    (*(v35 + 8))(v10, v6);
    (*(v12 + 8))(v16, v34);
  }
}

uint64_t sub_23A9B52E4(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DB0, &qword_23AA1A768);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18[-v7];
  v9 = sub_23AA0D3B4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23AA0D394();

  sub_23A9ACA9C(a2, v18);
  v11 = a3;
  v12 = sub_23AA0D384();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v10;
  v15 = a2[3];
  *(v13 + 80) = a2[2];
  *(v13 + 96) = v15;
  *(v13 + 112) = a2[4];
  v16 = a2[1];
  *(v13 + 48) = *a2;
  *(v13 + 64) = v16;
  *(v13 + 128) = a3;

  sub_23A9B6C28(0, 0, v8, &unk_23AA1A778, v13);
}

uint64_t sub_23A9B547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[49] = a5;
  v6[50] = a6;
  v6[48] = a4;
  v7 = sub_23AA0CEC4();
  v6[51] = v7;
  v8 = *(v7 - 8);
  v6[52] = v8;
  v9 = *(v8 + 64) + 15;
  v6[53] = swift_task_alloc();
  v10 = sub_23AA0CF24();
  v6[54] = v10;
  v11 = *(v10 - 8);
  v6[55] = v11;
  v12 = *(v11 + 64) + 15;
  v6[56] = swift_task_alloc();
  v13 = sub_23AA0CF44();
  v6[57] = v13;
  v14 = *(v13 - 8);
  v6[58] = v14;
  v15 = *(v14 + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DB8, &qword_23AA1A798);
  v6[61] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0) - 8) + 64) + 15;
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v19 = type metadata accessor for CapturedRoom(0);
  v6[70] = v19;
  v20 = *(v19 - 8);
  v6[71] = v20;
  v21 = *(v20 + 64) + 15;
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  sub_23AA0D394();
  v6[77] = sub_23AA0D384();
  v23 = sub_23AA0D354();
  v6[78] = v23;
  v6[79] = v22;

  return MEMORY[0x2822009F8](sub_23A9B5784, v23, v22);
}

uint64_t sub_23A9B5784()
{
  v1 = *(v0 + 384);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 640) = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession))
    {
      v4 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder);
      *(v0 + 648) = v4;
      if (v4)
      {
        v5 = *(v0 + 392);
        *(v0 + 16) = *v5;
        v6 = v5[4];
        v8 = v5[1];
        v7 = v5[2];
        *(v0 + 64) = v5[3];
        *(v0 + 80) = v6;
        *(v0 + 32) = v8;
        *(v0 + 48) = v7;

        v9 = swift_task_alloc();
        *(v0 + 656) = v9;
        *v9 = v0;
        v9[1] = sub_23A9B5A2C;
        v10 = *(v0 + 552);

        return sub_23A9A98DC(v10, (v0 + 16));
      }

      v14 = *(v0 + 616);

      v15 = *(v0 + 552);
      (*(*(v0 + 568) + 56))(v15, 1, 1, *(v0 + 560));
      sub_23A8D50D0(v15, &unk_27DFB13A0, &unk_23AA1A7A0);
    }

    else
    {
      v13 = *(v0 + 616);
    }
  }

  else
  {
    v12 = *(v0 + 616);
  }

  v16 = *(v0 + 608);
  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  v19 = *(v0 + 584);
  v20 = *(v0 + 576);
  v21 = *(v0 + 552);
  v22 = *(v0 + 544);
  v23 = *(v0 + 536);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v27 = *(v0 + 512);
  v28 = *(v0 + 504);
  v29 = *(v0 + 496);
  v30 = *(v0 + 480);
  v31 = *(v0 + 472);
  v32 = *(v0 + 448);
  v33 = *(v0 + 424);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_23A9B5A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[81];

    v6 = v2[79];
    v7 = v2[78];
    v8 = sub_23A9B6A90;
  }

  else
  {
    v9 = v2[81];

    v6 = v2[79];
    v7 = v2[78];
    v8 = sub_23A9B5B6C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23A9B5B6C()
{
  v140 = v0;
  v1 = v0[80];
  v2 = v0[76];
  v3 = v0[69];
  v4 = *(v0[71] + 56);
  v4(v3, 0, 1, v0[70]);
  sub_23A9BAC8C(v3, v2, type metadata accessor for CapturedRoom);
  v5 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!v6)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v7 = v0[76];
  v8 = v0[49];
  v9 = v8[3];
  v139[2] = v8[2];
  v139[3] = v9;
  v139[4] = v8[4];
  v10 = v8[1];
  v139[0] = *v8;
  v139[1] = v10;

  sub_23A9CF53C(v139, v7);

  if (qword_27DFAE478 != -1)
  {
    swift_once();
  }

  v6 = qword_27DFC0720;
  sub_23A95DE00();
  sub_23A95E120();
  v11 = *(v1 + v5);
  if (!v11)
  {
    goto LABEL_55;
  }

  v6 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate);
  if (!v6)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_23A8D5194(v0[76] + *(v0[70] + 60), (v0 + 24), &unk_27DFB1140, &qword_23AA19C10);
  if (!v0[27])
  {
LABEL_57:
    v112 = v6;
    result = sub_23A8D50D0((v0 + 24), &unk_27DFB1140, &qword_23AA19C10);
    __break(1u);
    goto LABEL_58;
  }

  v132 = v4;
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0B00, &unk_23AA15C90);
  sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v14 = v0[77];
  v15 = v0[76];

  v16 = v0[46];
  v17 = sub_23A9D2114(v16, v15, 1);
  v19 = v18;
  v21 = v20;
  v22 = sub_23A9DF1BC(v16, v15);
  v128 = v23;
  v25 = v24;
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v117 = v25;
  v120 = v21;
  v124 = v16;
  v26 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls);

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v27 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls);

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls);
  v29 = MEMORY[0x277D84F90];
  *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = MEMORY[0x277D84F90];

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls);
  *(v30 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v29;

  if (*(v17 + 16) || *(v22 + 16))
  {
    sub_23A9D62B8(v17, v22, MEMORY[0x277D84F90], v0[68]);

    v32 = 0;
  }

  else
  {

    v32 = 1;
  }

  v132(v0[68], v32, 1, v0[70]);
  if (*(v19 + 16) || *(v128 + 16) || *(v26 + 16))
  {
    sub_23A9D62B8(v19, v128, v26, v0[67]);

    v33 = 0;
  }

  else
  {

    v33 = 1;
  }

  v132(v0[67], v33, 1, v0[70]);
  if (*(v120 + 16) || *(v117 + 16) || *(v27 + 16))
  {
    sub_23A9D62B8(v120, v117, v27, v0[66]);

    v34 = 0;
  }

  else
  {

    v34 = 1;
  }

  v35 = v0[70];
  v36 = v0[68];
  v37 = v0[67];
  v38 = v0[66];
  v39 = v0[65];
  v40 = v0[61];

  v132(v38, v34, 1, v35);
  v41 = *(v40 + 48);
  v42 = *(v40 + 64);
  sub_23A9BA4B0(v37, v39);
  v125 = v41;
  sub_23A9BA4B0(v38, v39 + v41);
  v129 = v39;
  v121 = v42;
  sub_23A9BA4B0(v36, v39 + v42);
  if (qword_27DFAE370 != -1)
  {
    swift_once();
  }

  v43 = v0[75];
  v44 = v0[71];
  v45 = v0[70];
  v46 = v0[65];
  v47 = v0[64];
  sub_23A9BABC4(v0[76], v43, type metadata accessor for CapturedRoom);
  v48 = sub_23A9B7AF0(v43, 3);
  sub_23A9BAC2C(v43, type metadata accessor for CapturedRoom);
  v49 = sub_23A9E427C(v48);

  sub_23A8D5194(v46, v47, &qword_27DFB0DB8, &qword_23AA1A798);
  v50 = *(v40 + 48);
  v51 = *(v40 + 64);
  v133 = *(v44 + 48);
  v136 = v49;
  if (v133(v47, 1, v45) == 1)
  {
    v52 = v0[64];
    sub_23A8D50D0(v47 + v51, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v47 + v50, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v52, &unk_27DFB13A0, &unk_23AA1A7A0);
  }

  else
  {
    sub_23A9BAC8C(v0[64], v0[74], type metadata accessor for CapturedRoom);
    sub_23A8D50D0(v47 + v51, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v47 + v50, &unk_27DFB13A0, &unk_23AA1A7A0);
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v53 = v0[74];
    sub_23A8CC56C(v53, v49);
    sub_23A9BAC2C(v53, type metadata accessor for CapturedRoom);
  }

  v54 = v0[70];
  v55 = v0[63];
  sub_23A8D5194(v0[65], v55, &qword_27DFB0DB8, &qword_23AA1A798);
  v56 = *(v40 + 48);
  v57 = *(v40 + 64);
  if (v133(v55 + v56, 1, v54) == 1)
  {
    v58 = v0[63];
    sub_23A8D50D0(v55 + v57, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v55 + v56, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v58, &unk_27DFB13A0, &unk_23AA1A7A0);
    v59 = 0x27DFAE000;
  }

  else
  {
    v60 = v0[63];
    sub_23A9BAC8C(v55 + v56, v0[73], type metadata accessor for CapturedRoom);
    sub_23A8D50D0(v55 + v57, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v60, &unk_27DFB13A0, &unk_23AA1A7A0);
    v59 = 0x27DFAE000uLL;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v61 = v0[73];
    sub_23A8CF430(v61);
    sub_23A9BAC2C(v61, type metadata accessor for CapturedRoom);
  }

  v62 = v0[70];
  v63 = v0[62];
  sub_23A8D5194(v0[65], v63, &qword_27DFB0DB8, &qword_23AA1A798);
  v64 = *(v40 + 48);
  v65 = *(v40 + 64);
  if (v133(v63 + v65, 1, v62) == 1)
  {
    v66 = v0[62];

    sub_23A8D50D0(v63 + v65, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v63 + v64, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v66, &unk_27DFB13A0, &unk_23AA1A7A0);
  }

  else
  {
    v67 = v0[62];
    sub_23A9BAC8C(v63 + v65, v0[72], type metadata accessor for CapturedRoom);
    sub_23A8D50D0(v63 + v64, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v67, &unk_27DFB13A0, &unk_23AA1A7A0);
    if (*(v59 + 872) != -1)
    {
      swift_once();
    }

    v68 = v0[72];
    sub_23A8CD540(v68, v136);

    sub_23A9BAC2C(v68, type metadata accessor for CapturedRoom);
  }

  v69 = v0[80];
  v70 = *(v69 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (v70)
  {
    v71 = v0[76];
    v72 = v0[65];
    v73 = v70;
    sub_23A9C4680(v71, v72, v129 + v125, v129 + v121);

    v69 = v0[80];
  }

  v74 = v69 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v75 = v0[76];
    v76 = v0[50];
    v77 = *(v74 + 8);
    ObjectType = swift_getObjectType();
    (*(v77 + 16))(v75, v76, ObjectType, v77);
    swift_unknownObjectRelease();
  }

  v79 = v0[80];
  v80 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  if ((*(v79 + v80) & 1) == 0)
  {
    v81 = objc_opt_self();
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v82 = v0[80];
    v83 = off_27DFB17B0;
    swift_beginAccess();
    v84 = v83[19] + 0.5;
    v85 = swift_allocObject();
    *(v85 + 16) = v82;
    v0[16] = sub_23A9BA558;
    v0[17] = v85;
    v0[12] = MEMORY[0x277D85DD0];
    v0[13] = 1107296256;
    v0[14] = sub_23A9AD0B8;
    v0[15] = &block_descriptor_143;
    v86 = _Block_copy(v0 + 12);
    v87 = v0[17];
    v88 = v82;

    [v81 animateWithDuration:v86 animations:v84];
    _Block_release(v86);
  }

  v89 = v0[80];
  v134 = v0[65];
  v137 = v0[76];
  v90 = v0[59];
  v113 = v0[60];
  v92 = v0[57];
  v91 = v0[58];
  v93 = v0[56];
  v94 = v0[53];
  v126 = v0[55];
  v130 = v0[54];
  v122 = v0[52];
  v118 = v0[51];
  v95 = sub_23A9ADC0C();
  swift_beginAccess();
  v96 = v95[19];

  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v114 = sub_23AA0D534();
  sub_23AA0CF34();
  sub_23AA0CF54();
  v115 = *(v91 + 8);
  v115(v90, v92);
  v97 = swift_allocObject();
  *(v97 + 16) = v89;
  v0[22] = sub_23A9BA580;
  v0[23] = v97;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23A9AD0B8;
  v0[21] = &block_descriptor_149;
  v98 = _Block_copy(v0 + 18);
  v99 = v89;
  sub_23AA0CEE4();
  v0[47] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFB0](v113, v93, v94, v98);
  _Block_release(v98);

  (*(v122 + 8))(v94, v118);
  (*(v126 + 8))(v93, v130);
  v115(v113, v92);
  sub_23A8D50D0(v134, &qword_27DFB0DB8, &qword_23AA1A798);
  sub_23A9BAC2C(v137, type metadata accessor for CapturedRoom);
  v100 = v0[23];

  v101 = v0[76];
  v102 = v0[75];
  v103 = v0[74];
  v104 = v0[73];
  v105 = v0[72];
  v106 = v0[69];
  v107 = v0[68];
  v108 = v0[67];
  v109 = v0[66];
  v110 = v0[65];
  v116 = v0[64];
  v119 = v0[63];
  v123 = v0[62];
  v127 = v0[60];
  v131 = v0[59];
  v135 = v0[56];
  v138 = v0[53];

  v111 = v0[1];

  return v111();
}

uint64_t sub_23A9B6A90()
{
  v1 = v0[80];
  v2 = v0[77];

  v3 = v0[69];
  (*(v0[71] + 56))(v3, 1, 1, v0[70]);
  sub_23A8D50D0(v3, &unk_27DFB13A0, &unk_23AA1A7A0);
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[69];
  v10 = v0[68];
  v11 = v0[67];
  v12 = v0[66];
  v13 = v0[65];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[62];
  v19 = v0[60];
  v20 = v0[59];
  v21 = v0[56];
  v22 = v0[53];

  v14 = v0[1];

  return v14();
}

uint64_t sub_23A9B6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DB0, &qword_23AA1A768);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23A8D5194(a3, v27 - v11, &qword_27DFB0DB0, &qword_23AA1A768);
  v13 = sub_23AA0D3B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23A8D50D0(v12, &qword_27DFB0DB0, &qword_23AA1A768);
  }

  else
  {
    sub_23AA0D3A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23AA0D354();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23AA0D1B4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23A8D50D0(a3, &qword_27DFB0DB0, &qword_23AA1A768);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23A8D50D0(a3, &qword_27DFB0DB0, &qword_23AA1A768);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_23A9B6F28(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession) = 0;
  sub_23A9AFBE8();
  if (!*(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
  {
    sub_23A9B07A0();
    sub_23A9B0FE4();
    sub_23A9B1654();
  }

  result = [a1 currentFrame];
  if (result)
  {
    v4 = result;
    v5 = [result camera];

    [v5 transform];
    v10 = v6;

    v7 = *MEMORY[0x277D860B8];
    v8 = *(MEMORY[0x277D860B8] + 16);
    v9 = *(MEMORY[0x277D860B8] + 32);

    return [a1 setWorldOrigin_];
  }

  return result;
}

void sub_23A9B7024(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame);
    *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame) = a2;
    v5 = Strong;
    v6 = a2;
  }
}

void sub_23A9B7098(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (v2)
  {
    v4 = v2;
    sub_23A9C4D10(a2);
  }
}

uint64_t sub_23A9B7100(char *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  result = swift_beginAccess();
  v5 = *&a1[v3];
  if (v5)
  {

    *(v5 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate + 8) = &off_284D85FC0;
    swift_unknownObjectWeakAssign();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A9B71AC(uint64_t a1, __int128 *a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_23A9B493C(a2, a3);
  }
}

uint64_t sub_23A9B7250(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t))
{
  v6 = type metadata accessor for CapturedRoom(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE370 != -1)
  {
    swift_once();
  }

  v10 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel;
  swift_beginAccess();
  sub_23A9BABC4(a1 + v10, v9, type metadata accessor for CapturedRoom);
  v11 = sub_23A9B7AF0(v9, 3);
  sub_23A9BAC2C(v9, type metadata accessor for CapturedRoom);
  v12 = sub_23A9E427C(v11);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    a3(a2, v12);
  }
}

void sub_23A9B73AC(uint64_t a1, unsigned __int8 a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
    if (v4)
    {
      v7 = a2;
      v6 = Strong;
      v5 = v4;
      sub_23A9C4A34(&v7);
    }

    else
    {
    }
  }
}

uint64_t sub_23A9B7434()
{
  MEMORY[0x23EE917F0](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_23A9B74C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a5(a2);
  }
}

uint64_t sub_23A9B755C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A9B7654;

  return v7(a1);
}

uint64_t sub_23A9B7654()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23A9B774C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_23AA0C0E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *v2;
  v17 = v54;
  result = sub_23A9AD568(a1, a2, *v2);
  if (!v17)
  {
    v50 = v15;
    v54 = 0;
    if (v19)
    {
      return *(v16 + 16);
    }

    v20 = v5;
    v42 = v9;
    v43 = v12;
    v47 = a1;
    v41 = v2;
    v52 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v16;
      v24 = (v16 + 16);
      v23 = *(v16 + 16);
      v25 = v50;
      if (v21 == v23)
      {
        return v52;
      }

      v26 = v20;
      v49 = v6 + 16;
      v45 = v6;
      v46 = (v6 + 8);
      v40 = (v6 + 40);
      v44 = a2;
      while (v21 < v23)
      {
        v27 = *(v6 + 80);
        v53 = v22;
        v48 = (v27 + 32) & ~v27;
        v28 = v22 + v48;
        v29 = *(v6 + 72);
        v30 = *(v6 + 16);
        v51 = v29 * v21;
        v30(v25, &v28[v29 * v21], v26);
        v31 = v54;
        v32 = v47(v25);
        v54 = v31;
        if (v31)
        {
          return (*v46)(v25, v26);
        }

        v33 = v32;
        result = (*v46)(v25, v26);
        if (v33)
        {
          v6 = v45;
          v25 = v50;
          v22 = v53;
        }

        else
        {
          v34 = v52;
          if (v21 == v52)
          {
            v6 = v45;
            v25 = v50;
            v22 = v53;
          }

          else
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v35 = *v24;
            if (v52 >= v35)
            {
              goto LABEL_27;
            }

            v36 = v29 * v52;
            result = (v30)(v43, &v28[v36], v26);
            if (v21 >= v35)
            {
              goto LABEL_28;
            }

            v37 = v42;
            v30(v42, &v28[v51], v26);
            v22 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_23A975C88(v22);
            }

            v38 = v22 + v48;
            v39 = *v40;
            result = (*v40)(v22 + v48 + v36, v37, v26);
            v6 = v45;
            if (v21 >= v22[2])
            {
              goto LABEL_29;
            }

            result = v39(&v38[v51], v43, v26);
            *v41 = v22;
            v34 = v52;
            v25 = v50;
          }

          v52 = v34 + 1;
        }

        ++v21;
        v24 = v22 + 2;
        v23 = v22[2];
        if (v21 == v23)
        {
          return v52;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23A9B7AF0(uint64_t a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - v6;
  v73 = sub_23AA0C0E4();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for CapturedRoom.Surface(0);
  v11 = *(v66 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v66);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CapturedRoom(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A9BABC4(a1, v18, type metadata accessor for CapturedRoom);
  v80 = MEMORY[0x277D84F90];
  v19 = *v18;

  result = sub_23A9BAC2C(v18, type metadata accessor for CapturedRoom);
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = 0;
    v70 = v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v78 = (v8 + 16);
    v23 = MEMORY[0x277D84F90];
    v24 = (v8 + 32);
    v71 = xmmword_23AA11BB0;
    v65 = a2;
    v64 = v11;
    v63 = v19;
    v62 = v21;
    while (v22 < *(v19 + 16))
    {
      sub_23A9BABC4(v70 + *(v11 + 72) * v22, v14, type metadata accessor for CapturedRoom.Surface);
      v25 = *(v14 + 1);
      v26 = COERCE_FLOAT(*(v14 + 3));
      v27 = v26 > 0.0 && (a2 & 2) == 0;
      if (v27 || (v26 == 0.0 ? (v28 = (a2 & 1) == 0) : (v28 = 0), v28))
      {
        result = sub_23A9BAC2C(v14, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        v69 = v22;
        v77 = v26 > 0.0;
        v29 = *(v14 + 2);
        v74 = *(v14 + 3);
        v75 = v29;
        v76 = *(v14 + 5);
        *(&v30 + 1) = *(&v76 + 1);
        *&v30 = vmul_f32(*&v25, COERCE_FLOAT32X2_T(-0.0000305175853));
        v68 = v30;
        v31 = vextq_s8(v74, v74, 8uLL);
        *v31.i8 = vmul_f32(*&v30, vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *v31.i8));
        v67 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v32 = swift_allocObject();
        v33 = 0;
        v34 = 0;
        v35 = *(&v76 + 2);
        v36 = *v67.i32;
        v37 = vmul_lane_f32(*v74.i8, *&v68, 1);
        v38 = vmul_n_f32(*v75.i8, *&v68);
        v39 = v76;
        *&v40 = vadd_f32(v37, vsub_f32(*&v76, v38));
        v41 = *&v67.i32[1];
        *(&v40 + 2) = *&v67.i32[1] + (*(&v76 + 2) - *v67.i32);
        HIDWORD(v40) = 0;
        *(v32 + 32) = v40;
        v42 = v32 + 32;
        *&v43 = vadd_f32(v37, vadd_f32(v38, v39));
        *(&v43 + 1) = COERCE_UNSIGNED_INT(v41 + (v36 + v35));
        *&v68 = v32;
        *(v32 + 48) = v43;
        *&v76 = *(v66 + 44);
        v75.i64[0] = *(v66 + 52);
        v74.i64[0] = *v78;
        do
        {
          v44 = v33;
          v45 = (v42 + 16 * v34);
          v46 = *vld2_f32(v45).val;
          v47 = v72;
          v48 = v73;
          (v74.i64[0])(v72, &v14[v76], v73);
          sub_23A8D5194(&v14[v75.i64[0]], v7, &qword_27DFAEB38, &unk_23AA11B60);
          v49 = type metadata accessor for CapturedRoom.Surface.Curve(0);
          v50 = (*(*(v49 - 8) + 48))(v7, 1, v49) != 1;
          sub_23A8D50D0(v7, &qword_27DFAEB38, &unk_23AA11B60);
          v51 = type metadata accessor for HullPointUUID();
          v52 = *(v51 + 48);
          v53 = *(v51 + 52);
          v54 = swift_allocObject();
          (*v24)(v54 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v47, v48);
          *(v54 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) = v50;
          *(v54 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness) = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          inited = swift_initStackObject();
          *(inited + 16) = v71;
          *(inited + 32) = v54;

          v56 = sub_23A9A6B4C(inited);
          swift_setDeallocating();
          v57 = *(inited + 16);
          swift_arrayDestroy();
          v58 = type metadata accessor for HullPoint();
          v59 = objc_allocWithZone(v58);
          *&v59[OBJC_IVAR____TtC8RoomPlan9HullPoint_position] = v46;
          *&v59[OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids] = v56;
          v79.receiver = v59;
          v79.super_class = v58;
          v60 = objc_msgSendSuper2(&v79, sel_init);
          MEMORY[0x23EE8FD70]();
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();

          v33 = 1;
          v34 = 1;
        }

        while ((v44 & 1) == 0);
        v23 = v80;
        sub_23A9BAC2C(v14, type metadata accessor for CapturedRoom.Surface);
        swift_setDeallocating();
        result = swift_deallocClassInstance();
        LOBYTE(a2) = v65;
        v11 = v64;
        v19 = v63;
        v21 = v62;
        v22 = v69;
      }

      if (++v22 == v21)
      {

        return v23;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23A9B81E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5, size_t *a6, double a7, __n128 a8)
{
  v9 = v8;
  v134 = a6;
  v138 = a5;
  v154 = a8;
  v153 = a3;
  v13 = type metadata accessor for CapturedRoom.Object(0);
  v133 = *(v13 - 8);
  v14 = *(v133 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v132 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v129 = &v126 - v17;
  MEMORY[0x28223BE20](v18);
  v131 = &v126 - v19;
  v20 = type metadata accessor for CapturedRoom.Surface(0);
  v137 = *(v20 - 8);
  v21 = *(v137 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v136 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v130 = &v126 - v24;
  MEMORY[0x28223BE20](v25);
  v135 = &v126 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DC8, &unk_23AA1AA50);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v152 = &v126 - v29;
  v151 = sub_23AA0C464();
  v164 = *(v151 - 8);
  v30 = v164[8];
  MEMORY[0x28223BE20](v151);
  v150 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_23AA0C634();
  v160 = *(v149 - 8);
  v32 = *(v160 + 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23AA0C184();
  v161 = *(v34 - 8);
  v35 = *(v161 + 64);
  MEMORY[0x28223BE20](v34);
  v162 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_23AA0C0E4();
  v37 = *(v163 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v163);
  v128 = &v126 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v126 - v41;
  v43 = a1;
  v44 = *(a1 + 16);
  v45 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  v140 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
  swift_beginAccess();
  v141 = a4;
  v139 = v45;
  swift_beginAccess();
  swift_beginAccess();
  result = swift_beginAccess();
  if (!v44)
  {
    return result;
  }

  v165 = v44;
  v161 += 8;
  v146 = *MEMORY[0x277CDAE48];
  v145 = (v160 + 104);
  v144 = (v164 + 1);
  v143 = (v160 + 8);
  v127 = (v37 + 16);
  v126 = v37 + 32;
  v158 = (v37 + 8);
  v47 = (v43 + 40);
  v142 = a2;
  v147 = v37;
  v160 = v42;
  v159 = v34;
  while (1)
  {
    v48 = v9;
    v50 = *(v47 - 1);
    v49 = *v47;
    v164 = v47;
    v51 = *v50;
    v52 = *(v49 + 8);

    v52(v51, v49);
    v53 = v162;
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*v161)(v53, v34);
    v54 = *(a2 + 64);
    v55 = *(a2 + 72);
    if (!RECheckEntityInsideCustomMatrixCameraFrustumAnyViewWithCustomViewport())
    {
      break;
    }

    sub_23AA0C284();
    v157 = v56;
    v57 = v148;
    v58 = v149;
    (*v145)(v148, v146, v149);
    v59 = v150;
    sub_23AA0C454();
    v60 = sub_23AA0C6F4();
    (*v144)(v59, v151);
    v61 = v57;
    v42 = v160;
    v62 = (*v143)(v61, v58);
    MEMORY[0x28223BE20](v62);
    *(&v126 - 4) = v42;
    *(&v126 - 3) = a2;
    *(&v126 - 2) = v60;
    v63 = v152;
    sub_23A9AD220(sub_23A9BABA0, v60, v152);
    v9 = v48;

    v64 = sub_23AA0C514();
    LODWORD(v60) = (*(*(v64 - 8) + 48))(v63, 1, v64);
    sub_23A8D50D0(v63, &qword_27DFB0DC8, &unk_23AA1AA50);
    if (v60 != 1)
    {
      goto LABEL_4;
    }

    v65 = *(v141 + v140);
    if (*(v65 + 16))
    {
      v66 = *(v141 + v140);

      v67 = sub_23A9EDD28(v42);
      if (v68)
      {
        v69 = *(v137 + 72);
        v70 = v130;
        sub_23A9BABC4(*(v65 + 56) + v69 * v67, v130, type metadata accessor for CapturedRoom.Surface);

        v71 = v135;
        sub_23A9BAC8C(v70, v135, type metadata accessor for CapturedRoom.Surface);
        sub_23A9BABC4(v71, v136, type metadata accessor for CapturedRoom.Surface);
        v72 = v138;
        v73 = *v138;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v72 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = sub_23A938A00(0, v73[2] + 1, 1, v73);
          *v138 = v73;
        }

        v76 = v73[2];
        v75 = v73[3];
        if (v76 >= v75 >> 1)
        {
          v124 = sub_23A938A00(v75 > 1, v76 + 1, 1, v73);
          *v138 = v124;
        }

        sub_23A9BAC2C(v135, type metadata accessor for CapturedRoom.Surface);
        v77 = *v138;
        *(v77 + 16) = v76 + 1;
        v78 = v77 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + v76 * v69;
        v79 = type metadata accessor for CapturedRoom.Surface;
        v80 = &v165;
LABEL_41:
        sub_23A9BAC8C(*(v80 - 32), v78, v79);
LABEL_42:
        if ((*(a2 + 96) & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_4;
      }
    }

    v98 = *(v141 + v139);
    if (!*(v98 + 16))
    {
      goto LABEL_42;
    }

    v99 = *(v141 + v139);

    v100 = sub_23A9EDD28(v42);
    if (v101)
    {
      v102 = *(v133 + 72);
      v103 = v129;
      sub_23A9BABC4(*(v98 + 56) + v102 * v100, v129, type metadata accessor for CapturedRoom.Object);

      v104 = v131;
      sub_23A9BAC8C(v103, v131, type metadata accessor for CapturedRoom.Object);
      sub_23A9BABC4(v104, v132, type metadata accessor for CapturedRoom.Object);
      v105 = v134;
      v106 = *v134;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *v105 = v106;
      if ((v107 & 1) == 0)
      {
        v106 = sub_23A93A178(0, v106[2] + 1, 1, v106);
        *v134 = v106;
      }

      v109 = v106[2];
      v108 = v106[3];
      if (v109 >= v108 >> 1)
      {
        v125 = sub_23A93A178(v108 > 1, v109 + 1, 1, v106);
        *v134 = v125;
      }

      sub_23A9BAC2C(v131, type metadata accessor for CapturedRoom.Object);
      v110 = *v134;
      *(v110 + 16) = v109 + 1;
      v78 = v110 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + v109 * v102;
      v79 = type metadata accessor for CapturedRoom.Object;
      v80 = &v161;
      goto LABEL_41;
    }

    if ((*(a2 + 96) & 1) == 0)
    {
LABEL_43:
      v111 = *(a2 + 48);
      v34 = v159;
      if (*(v111 + 16))
      {
        v112 = *(a2 + 48);

        v113 = sub_23A9EDD28(v42);
        if (v114)
        {
          v115 = *(*(v111 + 56) + v113);

          if ((v115 & 1) == 0)
          {
            swift_beginAccess();
            v116 = *(a2 + 48);
            v117 = swift_isUniquelyReferenced_nonNull_native();
            v166 = *(a2 + 48);
            *(a2 + 48) = 0x8000000000000000;
            sub_23A9DB1E4(1, v42, v117);
            *(a2 + 48) = v166;
            swift_endAccess();
            v118 = *(a2 + 56);

            v119 = sub_23A9AD45C(v42, v118);

            if (!v119)
            {
              (*v127)(v128, v42, v163);
              v120 = *(a2 + 56);
              v121 = swift_isUniquelyReferenced_nonNull_native();
              *(a2 + 56) = v120;
              if ((v121 & 1) == 0)
              {
                v120 = sub_23A9391E0(0, v120[2] + 1, 1, v120);
                *(a2 + 56) = v120;
              }

              v123 = v120[2];
              v122 = v120[3];
              if (v123 >= v122 >> 1)
              {
                v120 = sub_23A9391E0(v122 > 1, v123 + 1, 1, v120);
              }

              v120[2] = v123 + 1;
              (*(v147 + 32))(v120 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v123, v128, v163);
              *(a2 + 56) = v120;
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_5;
    }

LABEL_4:
    v34 = v159;
LABEL_5:
    (*v158)(v42, v163);

    v47 = v164 + 2;
    if (!--v165)
    {
      return result;
    }
  }

  *&v157 = v50;
  swift_beginAccess();
  v81 = *(a2 + 48);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *(a2 + 48);
  *(a2 + 48) = 0x8000000000000000;
  sub_23A9DB1E4(0, v42, v82);
  *(a2 + 48) = v166;
  v83 = swift_endAccess();
  MEMORY[0x28223BE20](v83);
  *(&v126 - 2) = v42;
  swift_beginAccess();
  result = sub_23A9B774C(sub_23A9BAB80, (&v126 - 4));
  v84 = *(a2 + 56);
  v85 = v84[2];
  v86 = v85 - result;
  if (v85 >= result)
  {
    v87 = result;
    if (result < 0)
    {
      goto LABEL_57;
    }

    v156 = &v126;
    v88 = result - v85;
    v89 = result;
    if (__OFADD__(v85, result - v85))
    {
      goto LABEL_58;
    }

    v90 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 56) = v84;
    v155 = v48;
    if (!v90 || v89 > v84[3] >> 1)
    {
      if (v85 <= v89)
      {
        v91 = v85 - v86;
      }

      else
      {
        v91 = v85;
      }

      v84 = sub_23A9391E0(v90, v91, 1, v84);
      *(a2 + 56) = v84;
    }

    v92 = v84 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    v93 = *(v147 + 72);
    v94 = v93 * v87;
    result = swift_arrayDestroy();
    v42 = v160;
    if (v85 != v87)
    {
      if (v94 < v93 * v85 || &v92[v93 * v87] >= &v92[v93 * v85 + (v84[2] - v85) * v93])
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v94 != v93 * v85)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v95 = v84[2];
      v96 = __OFADD__(v95, v88);
      v97 = v95 + v88;
      if (v96)
      {
        goto LABEL_59;
      }

      v84[2] = v97;
    }

    a2 = v142;
    *(v142 + 56) = v84;
    swift_endAccess();
    v9 = v155;
    goto LABEL_4;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_23A9B9164(uint64_t a1, __int128 *a2)
{
  v3 = sub_23AA0C184();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C9A4();
  sub_23AA0C114();
  (*(v4 + 8))(v7, v3);
  RECustomMatrixCameraComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    v9 = a2[6];
    v10 = a2[7];
    v11 = a2[4];
    v12 = a2[5];
    RECustomMatrixCameraComponentSetProjectionFromMatrix();
    v13 = *a2;
    v25 = a2[1];
    v26 = v13;
    v14 = a2[3];
    v24 = a2[2];
    v27 = v14;
    sub_23AA0CAB4();
    v15 = sub_23AA0C2A4();
    v17 = v16;
    sub_23AA0DCD4();
    v23 = v18;
    sub_23AA0D4D4();
    v22 = v19;
    sub_23AA0D4C4();
    *v17 = v20;
    v21 = v23;
    v17[1] = v22;
    v17[2] = v21;
    return v15(v28, 0);
  }

  return result;
}

void sub_23A9B9314(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0CEC4();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23AA0CF24();
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_23A9BA16C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_109;
  v14 = _Block_copy(aBlock);

  v20[0] = a1;
  sub_23AA0CEE4();
  v23 = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v22 + 8))(v7, v4);
  (*(v8 + 8))(v11, v21);

  v15 = *(v20[2] + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v15)
  {
    v16 = v15;
    sub_23AA0C934();
    v18 = v17;
    if (sub_23AA0C954())
    {
      v18 = [v20[0] renderFramesPerSecond];
    }

    sub_23AA0C594();
    sub_23AA0C584();
    sub_23AA0C574();

    v19 = sub_23AA0CB04();

    MEMORY[0x23EE90BD0](v19, v18);
  }
}

uint64_t sub_23A9B96B4(char a1)
{
  v3 = sub_23AA0CEC4();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23AA0CF24();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v11 = sub_23AA0D534();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_23A9BA0E8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_100;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_23AA0CEE4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v10, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v16);
}

uint64_t sub_23A9B999C(__int128 *a1, void *a2)
{
  v3 = v2;
  v6 = sub_23AA0CEC4();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23AA0CF24();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v30 = a1[2];
  v31 = v14;
  v32 = a1[4];
  v15 = a1[1];
  v28 = *a1;
  v29 = v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] = 1;
  }

  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v17 = sub_23AA0D534();
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  v19 = v31;
  *(v18 + 64) = v30;
  *(v18 + 80) = v19;
  *(v18 + 96) = v32;
  v20 = v29;
  *(v18 + 32) = v28;
  *(v18 + 48) = v20;
  *(v18 + 112) = a2;
  aBlock[4] = sub_23A9B9D54;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);

  sub_23A9ACA9C(&v28, v26);
  v22 = a2;

  sub_23AA0CEE4();
  v26[0] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v13, v9, v21);
  _Block_release(v21);

  (*(v25 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v24);
}

uint64_t sub_23A9B9D04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 120, 15);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A9B9D7C(char *a1)
{
  v2 = v1;
  v4 = sub_23AA0CEC4();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23AA0CF24();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v13 = sub_23AA0D534();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v12;
  aBlock[4] = sub_23A9BA0A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_94;
  v15 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v11, v7, v15);
  _Block_release(v15);

  (*(v18 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v17);
}

uint64_t sub_23A9BA06C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23A9BA0B0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23A9BA0F4()
{
  MEMORY[0x23EE917F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9BA12C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_111Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 120, 15);
}

uint64_t sub_23A9BA1E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 136, 15);
}

uint64_t sub_23A9BA240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[16];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A9AC2A0;

  return sub_23A9B547C(a1, v4, v5, v6, (v1 + 6), v7);
}

uint64_t sub_23A9BA308()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9BA340(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A9ACFF4;

  return sub_23A9B755C(a1, v5);
}

uint64_t sub_23A9BA3F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A9AC2A0;

  return sub_23A9B755C(a1, v5);
}

uint64_t sub_23A9BA4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A9BA520()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_23A9BA558()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t sub_23A9BA580()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession) == 1)
  {
    return sub_23A9B2CA0();
  }

  return result;
}

uint64_t objectdestroy_152Tm()
{
  v1 = (type metadata accessor for CapturedRoom(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
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

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A9BA738(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CapturedRoom(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t objectdestroy_166Tm()
{
  v1 = (type metadata accessor for CapturedRoom(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
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
  v18 = *(v0 + v17);

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v2 | 7);
}

uint64_t sub_23A9BA944(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CapturedRoom(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_23A9BA9F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager);
  *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager) = 0;
}

uint64_t sub_23A9BAA08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A9BAA74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9BAAAC()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager);
}

uint64_t sub_23A9BAAF8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_23A9BAB3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A9BABC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9BAC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A9BAC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9BACF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A9BAD94(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_23A9BADA4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double sub_23A9BAE80(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v1 = swift_allocObject();
  *&v2 = -0.5 * *&a1;
  v3 = COERCE_UNSIGNED_INT(-0.5 * *&a1);
  DWORD1(v3) = vmuls_lane_f32(0.5, *&a1, 1);
  v1[1] = xmmword_23AA11C20;
  v1[2] = v3;
  *&v4 = 0.5 * *&a1;
  v5 = COERCE_UNSIGNED_INT(0.5 * *&a1);
  DWORD1(v5) = DWORD1(v3);
  HIDWORD(v4) = vmuls_lane_f32(-0.5, *&a1, 1);
  v1[3] = v5;
  v1[4] = v4;
  HIDWORD(v2) = HIDWORD(v4);
  v1[5] = v2;
  return *&v5;
}

char *sub_23A9BAF1C(uint64_t a1, float a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_21;
  }

  v19 = *(a1 + 16 * (v3 - 1) + 32);

  if (v3 == 1)
  {
    return a1;
  }

  v7 = a2 * a2;
  v8 = vsubq_f32(v19, *(a1 + 16 * v3));
  v9 = vmulq_f32(v8, v8);
  v5 = a1;
  if ((v9.f32[2] + vaddv_f32(*v9.f32)) < v7)
  {
    v5 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_23A975CD8(a1);
    }

    v10 = *(v5 + 2);
    if (v10 >= v3)
    {
      v11 = v10 - 1;
      memmove(&v5[16 * v3 + 16], &v5[16 * v3 + 32], 16 * (v10 - v3));
      *(v5 + 2) = v11;
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
LABEL_21:

    return a1;
  }

LABEL_10:
  v12 = 16 * v3 + 16;
  v13 = 1 - v3;
  do
  {
    v14 = v3 - 1;
    if ((v3 - 1) < 2)
    {
      break;
    }

    if (v3 - 3 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_20;
    }

    v15 = vsubq_f32(*(a1 + 16 * v3), *&v5[16 * v3 - 16]);
    v16 = vmulq_f32(v15, v15);
    if ((v16.f32[2] + vaddv_f32(*v16.f32)) < v7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_23A975CD8(v5);
      }

      v17 = *(v5 + 2);
      if (v14 > v17)
      {
        goto LABEL_20;
      }

      v18 = v17 - 1;
      memmove(&v5[v12 - 16], &v5[v12], 16 * (v13 + v17));
      *(v5 + 2) = v18;
    }

    v12 -= 16;
    ++v13;
    v3 = v14;
  }

  while (v14 != 1);
  return v5;
}

char *sub_23A9BB0CC(uint64_t a1, float a2)
{
  v2 = a1;
  v3 = a1 + 16;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 32 + 8 * (v4 - 1));

  if (v4 == 1)
  {
    return v2;
  }

  v8 = a2 * a2;
  v9 = vsub_f32(v6, *&v2[8 * v4 + 16]);
  if (vaddv_f32(vmul_f32(v9, v9)) < v8)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_23A975C20(v2);
    }

    v10 = *(v2 + 2);
    if (v10 >= v4)
    {
      v11 = v10 - 1;
      memmove(&v2[8 * v4 + 24], &v2[8 * v4 + 32], 8 * (v10 - v4));
      *(v2 + 2) = v11;
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:

    return v2;
  }

LABEL_9:
  v12 = 1 - v4;
  do
  {
    v13 = v4 - 1;
    if ((v4 - 1) < 2)
    {
      break;
    }

    if (v4 - 3 >= *(v2 + 2))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = vsub_f32(*(v3 + 8 * v4), *&v2[8 * v4 + 8]);
    if (vaddv_f32(vmul_f32(v14, v14)) < v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_23A975C20(v2);
      }

      v15 = *(v2 + 2);
      if (v13 > v15)
      {
        goto LABEL_19;
      }

      v16 = v15 - 1;
      memmove(&v2[8 * v4 + 16], &v2[8 * v4 + 24], 8 * (v12 + v15));
      *(v2 + 2) = v16;
    }

    ++v12;
    --v4;
  }

  while (v13 != 1);
  return v2;
}

uint64_t type metadata accessor for DollHouseCamera()
{
  result = qword_27DFB0F30;
  if (!qword_27DFB0F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A9BB29C()
{
  sub_23A8ECAC8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_23A9BB400()
{
  v1 = (v0 + qword_27DFB0DF8);
  v2 = *(v0 + qword_27DFB0DF8);
  *(v0 + qword_27DFB0DF8) = 0;

  v3 = (v0 + qword_27DFB0DE8);
  v4 = *(v0 + qword_27DFB0DE8);
  *(v0 + qword_27DFB0DE8) = 0;

  v5 = *(v0 + qword_27DFC09D8);
  if (v5 == 4)
  {
    v31 = *(v0 + qword_27DFB0EB0);
    v32 = *(v0 + qword_27DFB0EB8);
    v33 = objc_opt_self();
    v34 = *MEMORY[0x277CEEF50];
    [v33 floatForKey_];
    v36 = v35;
    v37 = *MEMORY[0x277CEEF40];
    [v33 floatForKey_];
    v39 = v38;
    v40 = objc_allocWithZone(MEMORY[0x277CEEF78]);
    LODWORD(v41) = v36;
    LODWORD(v42) = v31;
    LODWORD(v43) = v32;
    LODWORD(v44) = v39;
    v45 = [v40 initWithRubberBandFactor:v41 minOffset:v42 maxOffset:v43 overshoot:v44];
    v46 = *v1;
    *v1 = v45;

    v19 = *(v0 + qword_27DFB0EA0);
    v20 = *(v0 + qword_27DFB0EA8);
    [v33 floatForKey_];
    v23 = v47;
    [v33 floatForKey_];
    v25 = v48;
    v26 = objc_allocWithZone(MEMORY[0x277CEEF78]);
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v19 = *(v0 + qword_27DFB0EA0);
    v20 = *(v0 + qword_27DFB0EA8);
    v21 = objc_opt_self();
    [v21 floatForKey_];
    v23 = v22;
    [v21 floatForKey_];
    v25 = v24;
    v26 = objc_allocWithZone(MEMORY[0x277CEEF78]);
LABEL_7:
    LODWORD(v27) = v23;
    LODWORD(v28) = v19;
    LODWORD(v29) = v20;
    LODWORD(v30) = v25;
    v18 = [v26 initWithRubberBandFactor:v27 minOffset:v28 maxOffset:v29 overshoot:v30];
    v1 = v3;
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    return;
  }

  v6 = *(v0 + qword_27DFB0EB0);
  v7 = *(v0 + qword_27DFB0EB8);
  v8 = objc_opt_self();
  [v8 floatForKey_];
  v10 = v9;
  [v8 floatForKey_];
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CEEF78]);
  LODWORD(v14) = v10;
  LODWORD(v15) = v6;
  LODWORD(v16) = v7;
  LODWORD(v17) = v12;
  v18 = [v13 initWithRubberBandFactor:v14 minOffset:v15 maxOffset:v16 overshoot:v17];
LABEL_8:
  v49 = *v1;
  *v1 = v18;

  MEMORY[0x2821F96F8]();
}

void sub_23A9BB6E0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23A9BB708();
}

void sub_23A9BB708()
{
  v1 = v0;
  v2 = (v0 + qword_27DFB0DD0);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + qword_27DFB0DD8);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + qword_27DFB0DE0;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + qword_27DFB0DE8) = 0;
  *(v0 + qword_27DFB0DF0) = 0;
  *(v0 + qword_27DFB0DF8) = 0;
  *(v0 + qword_27DFB0E00) = 0;
  *(v0 + qword_27DFB0E08) = 0;
  *(v0 + qword_27DFB0E10) = 0;
  *(v0 + qword_27DFB0E18) = 1065353216;
  *(v0 + qword_27DFB0E20) = 1084227584;
  *(v0 + qword_27DFB0E28) = 1065353216;
  *(v0 + qword_27DFB0E30) = 1084227584;
  *(v0 + qword_27DFB0E38) = 1084227584;
  v5 = (v0 + qword_27DFB0E40);
  v6 = *(MEMORY[0x277D860B8] + 16);
  v7 = *(MEMORY[0x277D860B8] + 32);
  v8 = *(MEMORY[0x277D860B8] + 48);
  *v5 = *MEMORY[0x277D860B8];
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  *(v0 + qword_27DFB0E50) = 1065353216;
  *(v0 + qword_27DFB0E58) = 0;
  *(v0 + qword_27DFB0E60) = 0;
  *(v0 + qword_27DFB0E68) = 0;
  *(v0 + qword_27DFB0E70) = 0;
  *(v0 + qword_27DFB0E78) = 0;
  *(v0 + qword_27DFB0E80) = 1065353216;
  *(v0 + qword_27DFB0E88) = 1065353216;
  *(v0 + qword_27DFB0E90) = 1065353216;
  *(v0 + qword_27DFB0E98) = -1085730854;
  *(v0 + qword_27DFB0EA0) = -1080452710;
  *(v0 + qword_27DFB0EA8) = -1098907648;
  *(v0 + qword_27DFB0EB0) = -1082130432;
  *(v0 + qword_27DFB0EB8) = 1065353216;
  v9 = qword_27DFC09A8;
  v10 = sub_23AA0C064();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + qword_27DFC09B0) = 0;
  *(v1 + qword_27DFC09B8) = 0;
  *(v1 + qword_27DFC09C0) = 0;
  *(v1 + qword_27DFC09C8) = 0;
  *(v1 + qword_27DFC09D0) = 0;
  *(v1 + qword_27DFC09D8) = 2;
  *(v1 + qword_27DFC09E0) = 1;
  *(v1 + qword_27DFC09E8) = 1;
  *(v1 + qword_27DFC09F0) = 1;
  v11 = qword_27DFB0EC8;
  v12 = sub_23AA0CAB4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v11) = sub_23AA0C1A4();
  v15 = qword_27DFB0ED0;
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_23AA0C1A4();
  v18 = qword_27DFB0ED8;
  v19 = *(v12 + 48);
  v20 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v18) = sub_23AA0C1A4();
  v21 = qword_27DFB0EE0;
  v22 = *(v12 + 48);
  v23 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v21) = sub_23AA0C1A4();
  *(v1 + qword_27DFB0EE8) = xmmword_23AA11AF0;
  *(v1 + qword_27DFB0EF0) = 0;
  *(v1 + qword_27DFB0EF8) = 0;
  *(v1 + qword_27DFB0F00) = 1;
  v24 = (v1 + qword_27DFB0F08);
  *v24 = 0;
  v24[1] = 0;
  *(v1 + qword_27DFB0F10) = 0;
  *(v1 + qword_27DFB0F18) = xmmword_23AA12240;
  *(v1 + qword_27DFB0F20) = 0;
  *(v1 + qword_27DFB0F28) = 0;
  sub_23AA0D9E4();
  __break(1u);
}

uint64_t sub_23A9BBAEC(void *a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = (v4 + qword_27DFB0DD0);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v4 + qword_27DFB0DD8);
  *v11 = 0;
  v11[1] = 0;
  v12 = v4 + qword_27DFB0DE0;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(v4 + qword_27DFB0DE8) = 0;
  *(v4 + qword_27DFB0DF0) = 0;
  *(v4 + qword_27DFB0DF8) = 0;
  *(v4 + qword_27DFB0E00) = 0;
  *(v4 + qword_27DFB0E08) = 0;
  *(v4 + qword_27DFB0E10) = 0;
  *(v4 + qword_27DFB0E18) = 1065353216;
  *(v4 + qword_27DFB0E20) = 1084227584;
  *(v4 + qword_27DFB0E28) = 1065353216;
  *(v4 + qword_27DFB0E30) = 1084227584;
  *(v4 + qword_27DFB0E38) = 1084227584;
  v13 = (v4 + qword_27DFB0E40);
  v14 = *(MEMORY[0x277D860B8] + 16);
  v15 = *(MEMORY[0x277D860B8] + 32);
  v16 = *(MEMORY[0x277D860B8] + 48);
  *v13 = *MEMORY[0x277D860B8];
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;
  *(v4 + qword_27DFB0E50) = 1065353216;
  *(v4 + qword_27DFB0E58) = 0;
  *(v4 + qword_27DFB0E60) = 0;
  *(v4 + qword_27DFB0E68) = 0;
  *(v4 + qword_27DFB0E70) = 0;
  *(v4 + qword_27DFB0E78) = 0;
  *(v4 + qword_27DFB0E80) = 1065353216;
  *(v4 + qword_27DFB0E88) = 1065353216;
  *(v4 + qword_27DFB0E90) = 1065353216;
  *(v4 + qword_27DFB0E98) = -1085730854;
  *(v4 + qword_27DFB0EA0) = -1080452710;
  *(v4 + qword_27DFB0EA8) = -1098907648;
  *(v4 + qword_27DFB0EB0) = -1082130432;
  *(v4 + qword_27DFB0EB8) = 1065353216;
  v17 = qword_27DFC09A8;
  v18 = sub_23AA0C064();
  (*(*(v18 - 8) + 56))(v5 + v17, 1, 1, v18);
  *(v5 + qword_27DFC09B0) = 0;
  *(v5 + qword_27DFC09B8) = 0;
  *(v5 + qword_27DFC09C0) = 0;
  *(v5 + qword_27DFC09C8) = 0;
  *(v5 + qword_27DFC09D0) = 0;
  *(v5 + qword_27DFC09D8) = 2;
  *(v5 + qword_27DFC09E0) = 1;
  *(v5 + qword_27DFC09E8) = 1;
  *(v5 + qword_27DFC09F0) = 1;
  v19 = qword_27DFB0EC8;
  v20 = sub_23AA0CAB4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v5 + v19) = sub_23AA0C1A4();
  v23 = qword_27DFB0ED0;
  v24 = *(v20 + 48);
  v25 = *(v20 + 52);
  swift_allocObject();
  *(v5 + v23) = sub_23AA0C1A4();
  v26 = qword_27DFB0ED8;
  v27 = *(v20 + 48);
  v28 = *(v20 + 52);
  swift_allocObject();
  *(v5 + v26) = sub_23AA0C1A4();
  v29 = qword_27DFB0EE0;
  v30 = *(v20 + 48);
  v31 = *(v20 + 52);
  swift_allocObject();
  *(v5 + v29) = sub_23AA0C1A4();
  *(v5 + qword_27DFB0EE8) = xmmword_23AA11AF0;
  *(v5 + qword_27DFB0EF0) = 0;
  *(v5 + qword_27DFB0EF8) = 0;
  *(v5 + qword_27DFB0F00) = 1;
  v32 = (v5 + qword_27DFB0F08);
  *v32 = 0;
  v32[1] = 0;
  *(v5 + qword_27DFB0F10) = 0;
  *(v5 + qword_27DFB0F18) = xmmword_23AA12240;
  *(v5 + qword_27DFB0F20) = 0;
  *(v5 + qword_27DFB0F28) = 0;
  *(v5 + qword_27DFB0E48) = a4;
  *(v5 + qword_27DFC09F8) = a2;
  *(v5 + qword_27DFB0EC0) = a3 & 1;

  v33 = sub_23AA0C1A4();

  [a1 bounds];
  Width = CGRectGetWidth(v43);
  [a1 bounds];
  v35 = Width / CGRectGetHeight(v44);
  *(v33 + qword_27DFB0E18) = v35;
  v36 = *(v33 + qword_27DFB0E48);
  REMatrix4x4MakePerspectiveFieldOfViewReverseDepth();
  v37 = (v33 + qword_27DFB0E40);
  *v37 = v38;
  v37[1] = v39;
  v37[2] = v40;
  v37[3] = v41;
  sub_23A9BBF80();

  return v33;
}

void sub_23A9BBF80()
{
  v1 = v0;
  v2 = qword_27DFB0EC8;
  v3 = *(v0 + qword_27DFB0EC8);
  type metadata accessor for DollHouseCamera();

  sub_23AA0C214();

  v4 = *(v0 + qword_27DFB0ED8);

  sub_23AA0C214();

  v5 = *(v0 + v2);
  v6 = qword_27DFB0ED0;
  v7 = *(v1 + qword_27DFB0ED0);
  sub_23AA0CAB4();

  sub_23AA0C214();

  v8 = *(v1 + v2);
  v9 = *(v1 + qword_27DFB0EE0);

  sub_23AA0C214();

  v10 = *(v1 + v6);
  v11 = *(v1 + qword_27DFC09F8);

  sub_23AA0C214();

  sub_23A9BB400();
}

BOOL sub_23A9BC0F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_23AA0C064();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = qword_27DFC09A8;
  swift_beginAccess();
  sub_23A8ED91C(v1 + v14, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_23A8ED8B4(v5);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    sub_23AA0C044();
    sub_23AA0C014();
    v16 = v15;
    v17 = *(v7 + 8);
    v17(v10, v6);
    v17(v13, v6);
    if (v16 < 0.1)
    {
      return 1;
    }
  }

  if (*(v1 + qword_27DFB0E10) || *(v1 + qword_27DFB0E08))
  {
    return 1;
  }

  return *(v1 + qword_27DFB0E00) != 0;
}

uint64_t sub_23A9BC32C(__n128 a1, float a2)
{
  v3 = v2;
  v43 = a1;
  v5 = sub_23AA0C184();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __sincosf_stret(*(v2 + qword_27DFB0E58) * 0.5);
  *&v10 = v11.__cosval;
  v42 = v10;
  v41 = vmulq_n_f32(xmmword_23AA12220, v11.__sinval);
  v12 = __sincosf_stret(*(v2 + qword_27DFB0E60) * 0.5);
  v13 = vmulq_n_f32(xmmword_23AA12200, v12.__sinval);
  v13.i32[3] = LODWORD(v12.__cosval);
  v39 = v13;
  v14 = qword_27DFB0ED0;
  v15 = *(v2 + qword_27DFB0ED0);
  sub_23AA0CAB4();

  sub_23AA0C244();
  v40 = v16;

  v17 = vnegq_f32(v39);
  v18 = vtrn2q_s32(v39, vtrn1q_s32(v39, v17));
  v19 = vrev64q_s32(v39);
  v19.i32[0] = v17.i32[1];
  v19.i32[3] = v17.i32[2];
  simd_slerp(v40, vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v39, *&v42), v19, v41, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v39, v17, 8uLL), *v41.f32, 1), vextq_s8(v18, v18, 8uLL), v41.f32[0])), a2);
  v42 = v20;
  v21 = *(v3 + v14);

  sub_23AA0C254();

  type metadata accessor for DollHouseCamera();
  sub_23AA0C284();
  v23 = vsubq_f32(*(v3 + qword_27DFB0F08), v22);
  sub_23AA0C294();
  v24 = *(v3 + qword_27DFC09F8);
  type metadata accessor for ARViewCameraEntity();
  sub_23AA0C284();
  v26 = v25;
  v27 = qword_27DFB0E78;
  v28 = v25 + ((*(v3 + qword_27DFB0E78) - v25) * v43.n128_f32[0]);
  v29 = sub_23AA0C274();
  *(v30 + 8) = v28;
  v29(v44, 0);
  v31 = v43.n128_f32[0];
  *(v3 + qword_27DFB0E28) = *(v3 + qword_27DFB0E28) + ((*(v3 + qword_27DFB0E50) - *(v3 + qword_27DFB0E28)) * v43.n128_f32[0]);
  *(v3 + qword_27DFB0E20) = *(v3 + qword_27DFB0E20) + ((*(v3 + qword_27DFB0E38) - *(v3 + qword_27DFB0E20)) * v31);
  if (*(v3 + qword_27DFB0EC0))
  {
    v32 = *(v3 + qword_27DFB0E18);
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*(v6 + 8))(v9, v5);
    REOrthographicCameraComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    return REOrthographicCameraComponentSetScale();
  }

  else
  {
    v34 = *(v3 + qword_27DFB0E40 + 48);
    v42 = *(v3 + qword_27DFB0E40 + 32);
    v43 = v34;
    v35 = *(v3 + qword_27DFB0E40 + 16);
    v40 = *(v3 + qword_27DFB0E40);
    v41 = v35;
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*(v6 + 8))(v9, v5);
    RECustomMatrixCameraComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RECustomMatrixCameraComponentSetProjectionFromMatrix();
    v36 = v26 + (*(v3 + qword_27DFB0EF0) * ((*(v3 + v27) * *(v3 + qword_27DFB0E80)) - v26));
    v37 = sub_23AA0C274();
    *(v38 + 8) = v36;
    return v37(v44, 0);
  }
}

void sub_23A9BC788(double a1, double a2, float32x4_t a3)
{
  if (*(v3 + qword_27DFC09E0) == 1 && (*(v3 + qword_27DFB0F10) & 1) == 0)
  {
    v4 = vnegq_f32(a3);
    v4.i32[1] = 0;
    v5 = *(v3 + qword_27DFB0F18);
    v6 = vmulq_f32(v5, v5);
    v7 = vaddv_f32(*v6.f32);
    *v6.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7));
    *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7), vmul_f32(*v6.f32, *v6.f32)));
    v8 = vmulq_n_f32(v5, vmul_f32(*v6.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7), vmul_f32(*v6.f32, *v6.f32))).f32[0]);
    v9 = vmulq_f32(v4, v4);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v13 = v8;
    v14 = vmulq_n_f32(v4, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    v11 = vmulq_f32(v8, v14);
    v12 = acosf(v11.f32[2] + vaddv_f32(*v11.f32));
    if (vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v13)), v14, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL)).f32[0] < 0.0)
    {
      v12 = -v12;
    }

    *(v3 + qword_27DFB0E60) = *(v3 + qword_27DFB0E98);
    *(v3 + qword_27DFB0E68) = v12;
    *(v3 + qword_27DFB0E58) = v12;
    *(v3 + qword_27DFB0E50) = 1065353216;
  }
}

uint64_t sub_23A9BC8D4()
{
  sub_23A8ED8B4(v0 + qword_27DFC09A8);
  v1 = *(v0 + qword_27DFC09F8);

  v2 = *(v0 + qword_27DFB0EC8);

  v3 = *(v0 + qword_27DFB0ED0);

  v4 = *(v0 + qword_27DFB0ED8);

  v5 = *(v0 + qword_27DFB0EE0);

  v6 = *(v0 + qword_27DFB0F20);

  v7 = *(v0 + qword_27DFB0F28);
}

uint64_t sub_23A9BC9D4()
{
  v0 = sub_23AA0CAC4();

  sub_23A8ED8B4(v0 + qword_27DFC09A8);
  v1 = *(v0 + qword_27DFC09F8);

  v2 = *(v0 + qword_27DFB0EC8);

  v3 = *(v0 + qword_27DFB0ED0);

  v4 = *(v0 + qword_27DFB0ED8);

  v5 = *(v0 + qword_27DFB0EE0);

  v6 = *(v0 + qword_27DFB0F20);

  v7 = *(v0 + qword_27DFB0F28);

  return v0;
}

uint64_t sub_23A9BCADC()
{
  v0 = *sub_23A9BC9D4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_23A9BCB38(double a1, double a2, __n128 a3, __n128 a4)
{
  sub_23A98DF14(a1, a2, a3, a4);
  __asm { FMOV            V2.2S, #1.0 }
}

uint64_t sub_23A9BCBEC(unsigned __int8 *a1)
{
  v2 = *a1;
  *(v1 + 16) = v2;
  v3 = *(v1 + 24);
  *(v3 + 136) = v2;
  if (v2 == 1)
  {
    v4 = (v1 + 56);
    v5 = type metadata accessor for DebugMaterialFactory();
    v6 = &off_284D82570;
  }

  else
  {
    v4 = (v1 + 48);
    v5 = type metadata accessor for OcclusionMaterialFactory();
    v6 = &off_284D82600;
  }

  v7 = *v4;
  v10 = v5;
  v11 = v6;

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 32));
  sub_23A8CAA3C(&v9, v3 + 32);
  return swift_endAccess();
}

uint64_t sub_23A9BCCA4(float a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = sub_23AA0C1E4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 40) = sub_23AA0C1A4();
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  v7 = sub_23A93BFA4();
  v8 = type metadata accessor for OcclusionMaterialFactory();
  swift_allocObject();
  v9 = sub_23A900BF8(v7);
  swift_unknownObjectRelease();
  *(v2 + 48) = v9;
  v10 = sub_23A93BFA4();
  v11 = type metadata accessor for DebugMaterialFactory();
  swift_allocObject();
  v12 = sub_23A900E38(v10);
  swift_unknownObjectRelease();
  *(v2 + 56) = v12;
  v13 = *(v2 + 40);

  sub_23AA0C704();

  type metadata accessor for EdgeEntityFactory();
  v14 = swift_allocObject();
  *(v2 + 32) = v14;
  v15 = 48;
  if (*(v2 + 16) == 1)
  {
    v15 = 56;
    v8 = v11;
    v16 = &off_284D82570;
  }

  else
  {
    v16 = &off_284D82600;
  }

  v17 = *(v2 + v15);
  v30[3] = v8;
  v30[4] = v16;

  v18 = type metadata accessor for EntityManager();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v30, v8);
  v20 = *(*(v8 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v30[-1] - v22;
  (*(v24 + 16))(&v30[-1] - v22, v21);

  v25 = sub_23A8E90FC(v23, v14, 0, a1, v18, v8, v16);
  __swift_destroy_boxed_opaque_existential_1(v30);
  *(v2 + 24) = v25;
  v26 = *(v25 + 72);
  *(v25 + 72) = *(v2 + 40);
  swift_retain_n();

  if (*(v25 + 72))
  {
    v27 = *(v25 + 80);
    sub_23AA0CAB4();

    sub_23AA0C214();
  }

  *(*(v2 + 24) + 24) = &off_284D86BC8;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_23A9BCFB8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_23A9BD044()
{
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v0 = off_27DFB17B0;
  swift_beginAccess();
  if (v0[40])
  {
    return 9;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_23A9BD1C4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v25 = a7;
  v30 = a6;
  v32 = a1;
  v33 = a2;
  v10 = a4(0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v28 = *(a3 + 16);
  if (v28)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v26 = a5;
    v27 = a3;
    while (v16 < *(a3 + 16))
    {
      v18 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v19 = *(v31 + 72);
      sub_23A8D52B8(a3 + v18 + v19 * v16, v15, a5);
      v20 = v32(v15);
      if (v7)
      {
        sub_23A8D5320(v15, a5);

        goto LABEL_15;
      }

      if (v20)
      {
        sub_23A9C25A8(v15, v29, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25(0, *(v17 + 16) + 1, 1);
          v17 = v34;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          v25(v22 > 1, v23 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v23 + 1;
        sub_23A9C25A8(v29, v17 + v18 + v23 * v19, v30);
        a5 = v26;
        a3 = v27;
      }

      else
      {
        sub_23A8D5320(v15, a5);
      }

      if (v28 == ++v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

int64x2_t *sub_23A9BD410(uint64_t a1, uint64_t a2)
{
  v2[1] = vdupq_n_s64(0x1EuLL);
  v2[2].i64[0] = 0;
  v2[2].i64[1] = 0;
  v3 = MEMORY[0x277D84F90];
  v2[3].i64[0] = MEMORY[0x277D84F98];
  v2[3].i64[1] = v3;
  v2[5].i64[0] = 0;
  v2[5].i64[1] = 0xE000000000000000;
  v2[6].i8[0] = 0;
  v2[4].i64[0] = a1;
  v2[4].i64[1] = a2;
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v2 selector:sel_announcementFinished_ name:*MEMORY[0x277D76420] object:0];

  return v2;
}

void sub_23A9BD4B4(uint64_t a1)
{
  v3 = type metadata accessor for CapturedRoom.Object(0);
  v88 = *(v3 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = v81 - v7;
  MEMORY[0x28223BE20](v8);
  v86 = v81 - v9;
  v10 = type metadata accessor for CapturedRoom.Surface(0);
  v93 = *(v10 - 8);
  v11 = *(v93 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v92 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = v81 - v14;
  MEMORY[0x28223BE20](v15);
  v91 = v81 - v16;
  v17 = sub_23AA0C0E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 96) & 1) == 0)
  {
    v24 = *(v1 + 32);
    if (v24 < 30)
    {
      *(v1 + 32) = v24 + 1;
      return;
    }

    *(v1 + 32) = 0;
    swift_beginAccess();
    v25 = *(v1 + 56);
    v26 = *(v25 + 16);
    v27 = MEMORY[0x277D84F90];
    if (!v26)
    {
      v61 = MEMORY[0x277D84F90];
      v62 = MEMORY[0x277D84F90];
LABEL_29:
      v63 = sub_23A9C18EC(v62, v61);
      v65 = v64;

      v66 = HIBYTE(v65) & 0xF;
      if ((v65 & 0x2000000000000000) == 0)
      {
        v66 = v63 & 0xFFFFFFFFFFFFLL;
      }

      if (v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0F40, &unk_23AA1ACA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23AA11C10;
        v68 = *MEMORY[0x277D76510];
        *(inited + 32) = *MEMORY[0x277D76510];
        v69 = MEMORY[0x277D839B0];
        *(inited + 40) = 1;
        v70 = *MEMORY[0x277D764E8];
        *(inited + 64) = v69;
        *(inited + 72) = v70;
        v71 = *MEMORY[0x277D764B8];
        type metadata accessor for UIAccessibilityPriority(0);
        *(inited + 104) = v72;
        *(inited + 80) = v71;
        v73 = v68;
        v74 = v70;
        v75 = v71;
        sub_23A9DD720(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB10B0, &unk_23AA1AA30);
        swift_arrayDestroy();
        v76 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v77 = sub_23AA0D104();

        type metadata accessor for Key(0);
        sub_23A9C288C(&qword_27DFAE970, type metadata accessor for Key);
        v78 = sub_23AA0D024();

        v79 = [v76 initWithString:v77 attributes:v78];

        *(v1 + 96) = 1;
        UIAccessibilityPostNotification(*MEMORY[0x277D76438], v79);

        v80 = *(v1 + 56);
        *(v1 + 56) = v27;
      }

      goto LABEL_33;
    }

    v82 = v1;
    v28 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
    v29 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
    v30 = v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v81[1] = v25;

    v97 = v28;
    swift_beginAccess();
    v90 = v29;
    swift_beginAccess();
    v32 = *(v18 + 16);
    v31 = v18 + 16;
    v96 = v32;
    v95 = *(v31 + 56);
    v33 = (v31 - 8);
    v89 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v85 = v31;
    v32(v21, v30, v17);
    while (1)
    {
      v34 = *(a1 + v97);
      if (*(v34 + 16))
      {
        v35 = *(a1 + v97);

        v36 = sub_23A9EDD28(v21);
        if (v37)
        {
          v38 = *(v93 + 72);
          v39 = v84;
          sub_23A8D52B8(*(v34 + 56) + v38 * v36, v84, type metadata accessor for CapturedRoom.Surface);

          v40 = v39;
          v41 = v91;
          sub_23A9C25A8(v40, v91, type metadata accessor for CapturedRoom.Surface);
          sub_23A8D52B8(v41, v92, type metadata accessor for CapturedRoom.Surface);
          v42 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_23A938A00(0, v42[2] + 1, 1, v42);
          }

          v94 = v42;
          v44 = v42[2];
          v43 = v42[3];
          if (v44 >= v43 >> 1)
          {
            v94 = sub_23A938A00(v43 > 1, v44 + 1, 1, v94);
          }

          sub_23A8D5320(v91, type metadata accessor for CapturedRoom.Surface);
          (*v33)(v21, v17);
          v45 = v94;
          v94[2] = v44 + 1;
          v46 = v45 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + v44 * v38;
          v47 = type metadata accessor for CapturedRoom.Surface;
          v48 = &v99;
          goto LABEL_26;
        }
      }

      v49 = *(a1 + v90);
      if (!*(v49 + 16))
      {
        goto LABEL_8;
      }

      v50 = *(a1 + v90);

      v51 = sub_23A9EDD28(v21);
      if ((v52 & 1) == 0)
      {

LABEL_8:
        (*v33)(v21, v17);
        goto LABEL_9;
      }

      v53 = a1;
      v54 = *(v88 + 72);
      v55 = v83;
      sub_23A8D52B8(*(v49 + 56) + v54 * v51, v83, type metadata accessor for CapturedRoom.Object);

      v56 = v86;
      sub_23A9C25A8(v55, v86, type metadata accessor for CapturedRoom.Object);
      sub_23A8D52B8(v56, v87, type metadata accessor for CapturedRoom.Object);
      v57 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_23A93A178(0, v57[2] + 1, 1, v57);
      }

      v89 = v57;
      v59 = v57[2];
      v58 = v57[3];
      a1 = v53;
      if (v59 >= v58 >> 1)
      {
        v89 = sub_23A93A178(v58 > 1, v59 + 1, 1, v89);
      }

      sub_23A8D5320(v86, type metadata accessor for CapturedRoom.Object);
      (*v33)(v21, v17);
      v60 = v89;
      v89[2] = v59 + 1;
      v46 = v60 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + v59 * v54;
      v47 = type metadata accessor for CapturedRoom.Object;
      v48 = &v98;
LABEL_26:
      sub_23A9C25A8(*(v48 - 32), v46, v47);
LABEL_9:
      v30 += v95;
      if (!--v26)
      {

        v1 = v82;
        v27 = MEMORY[0x277D84F90];
        v61 = v89;
        v62 = v94;
        goto LABEL_29;
      }

      v96(v21, v30, v17);
    }
  }

  swift_beginAccess();
  v22 = *(v1 + 56);
  *(v1 + 56) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v23 = *(v1 + 48);
  *(v1 + 48) = MEMORY[0x277D84F98];
LABEL_33:
}

void sub_23A9BDE1C(void *a1)
{
  v2 = v1;
  v158 = type metadata accessor for CapturedRoom.Object(0);
  v163 = *(v158 - 8);
  v4 = *(v163 + 64);
  MEMORY[0x28223BE20](v158);
  v161 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_23AA0C0E4();
  v175 = *(v177 - 8);
  v6 = *(v175 + 64);
  MEMORY[0x28223BE20](v177);
  v165 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v167 = &v157 - v9;
  MEMORY[0x28223BE20](v10);
  v171 = &v157 - v11;
  MEMORY[0x28223BE20](v12);
  v174 = &v157 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v157 - v15;
  v159 = type metadata accessor for CapturedRoom.Surface(0);
  v176 = *(v159 - 8);
  v17 = *(v176 + 64);
  MEMORY[0x28223BE20](v159);
  v162 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v164 = &v157 - v20;
  MEMORY[0x28223BE20](v21);
  v166 = &v157 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v157 - v24;
  v160 = a1;
  v173 = *a1;
  v172 = v173[2];
  if (!v172)
  {
LABEL_17:
    v48 = v160[1];
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v48 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
      v52 = *(v159 + 44);
      v173 = (v175 + 16);
      v170 = (v175 + 8);
      while (1)
      {
        if (v50 >= *(v48 + 16))
        {
          goto LABEL_80;
        }

        v54 = v166;
        sub_23A8D52B8(v51 + *(v176 + 72) * v50, v166, type metadata accessor for CapturedRoom.Surface);
        v55 = v174;
        v172 = *v173;
        (v172)(v174, v54 + v52, v177);
        sub_23A8D5320(v54, type metadata accessor for CapturedRoom.Surface);
        swift_beginAccess();
        v56 = *(v2 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v178 = *(v2 + 48);
        v58 = v178;
        *(v2 + 48) = 0x8000000000000000;
        v59 = sub_23A9EDD28(v55);
        v61 = v58[2];
        v62 = (v60 & 1) == 0;
        v46 = __OFADD__(v61, v62);
        v63 = v61 + v62;
        if (v46)
        {
          goto LABEL_81;
        }

        v64 = v60;
        if (v58[3] < v63)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

        v78 = v59;
        sub_23A90F36C();
        v59 = v78;
        v66 = v178;
        if (v64)
        {
LABEL_19:
          *(v66[7] + v59) = 0;
          (*v170)(v174, v177);
          goto LABEL_20;
        }

LABEL_28:
        v67 = v52;
        v68 = v2;
        v69 = v51;
        v70 = v49;
        v71 = v48;
        v66[(v59 >> 6) + 8] |= 1 << v59;
        v72 = v174;
        v73 = v175;
        v74 = v66[6] + *(v175 + 72) * v59;
        v169 = v59;
        v75 = v177;
        (v172)(v74, v174, v177);
        *(v66[7] + v169) = 0;
        (*(v73 + 8))(v72, v75);
        v76 = v66[2];
        v46 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v46)
        {
          goto LABEL_89;
        }

        v66[2] = v77;
        v48 = v71;
        v49 = v70;
        v51 = v69;
        v2 = v68;
        v52 = v67;
LABEL_20:
        ++v50;
        v53 = *(v2 + 48);
        *(v2 + 48) = v66;

        swift_endAccess();
        if (v49 == v50)
        {
          goto LABEL_32;
        }
      }

      sub_23A90A548(v63, isUniquelyReferenced_nonNull_native);
      v59 = sub_23A9EDD28(v174);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_93;
      }

LABEL_27:
      v66 = v178;
      if (v64)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }

LABEL_32:
    v79 = v160[3];
    v80 = v171;
    v174 = *(v79 + 16);
    if (v174)
    {
      v81 = 0;
      v173 = (v79 + ((*(v176 + 80) + 32) & ~*(v176 + 80)));
      v172 = *(v159 + 44);
      v82 = (v175 + 16);
      v83 = (v175 + 8);
      while (1)
      {
        if (v81 >= *(v79 + 16))
        {
          goto LABEL_82;
        }

        v85 = v164;
        sub_23A8D52B8(v173 + *(v176 + 72) * v81, v164, type metadata accessor for CapturedRoom.Surface);
        v86 = *v82;
        (*v82)(v80, (v85 + v172), v177);
        sub_23A8D5320(v85, type metadata accessor for CapturedRoom.Surface);
        swift_beginAccess();
        v87 = *(v2 + 48);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v178 = *(v2 + 48);
        v89 = v178;
        *(v2 + 48) = 0x8000000000000000;
        v90 = sub_23A9EDD28(v80);
        v92 = v89[2];
        v93 = (v91 & 1) == 0;
        v46 = __OFADD__(v92, v93);
        v94 = v92 + v93;
        if (v46)
        {
          goto LABEL_83;
        }

        v95 = v91;
        if (v89[3] < v94)
        {
          break;
        }

        if (v88)
        {
          goto LABEL_42;
        }

        v104 = v90;
        sub_23A90F36C();
        v90 = v104;
        v97 = v178;
        if (v95)
        {
LABEL_34:
          *(v97[7] + v90) = 0;
          (*v83)(v80, v177);
          goto LABEL_35;
        }

LABEL_43:
        v97[(v90 >> 6) + 8] |= 1 << v90;
        v98 = v175;
        v99 = v90;
        v100 = v177;
        v86(v97[6] + *(v175 + 72) * v90, v171, v177);
        *(v97[7] + v99) = 0;
        v101 = *(v98 + 8);
        v80 = v171;
        v101(v171, v100);
        v102 = v97[2];
        v46 = __OFADD__(v102, 1);
        v103 = v102 + 1;
        if (v46)
        {
          goto LABEL_90;
        }

        v97[2] = v103;
LABEL_35:
        ++v81;
        v84 = *(v2 + 48);
        *(v2 + 48) = v97;

        swift_endAccess();
        if (v174 == v81)
        {
          goto LABEL_47;
        }
      }

      sub_23A90A548(v94, v88);
      v90 = sub_23A9EDD28(v80);
      if ((v95 & 1) != (v96 & 1))
      {
        goto LABEL_93;
      }

LABEL_42:
      v97 = v178;
      if (v95)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    }

LABEL_47:
    v105 = v160[2];
    v106 = v167;
    v174 = *(v105 + 16);
    if (v174)
    {
      v107 = 0;
      v173 = (v105 + ((*(v176 + 80) + 32) & ~*(v176 + 80)));
      v172 = *(v159 + 44);
      v108 = (v175 + 16);
      v109 = (v175 + 8);
      while (1)
      {
        if (v107 >= *(v105 + 16))
        {
          goto LABEL_84;
        }

        v111 = v162;
        sub_23A8D52B8(v173 + *(v176 + 72) * v107, v162, type metadata accessor for CapturedRoom.Surface);
        v112 = *v108;
        (*v108)(v106, (v111 + v172), v177);
        sub_23A8D5320(v111, type metadata accessor for CapturedRoom.Surface);
        swift_beginAccess();
        v113 = *(v2 + 48);
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v178 = *(v2 + 48);
        v115 = v178;
        *(v2 + 48) = 0x8000000000000000;
        v116 = sub_23A9EDD28(v106);
        v118 = v115[2];
        v119 = (v117 & 1) == 0;
        v46 = __OFADD__(v118, v119);
        v120 = v118 + v119;
        if (v46)
        {
          goto LABEL_85;
        }

        v121 = v117;
        if (v115[3] < v120)
        {
          break;
        }

        if (v114)
        {
          goto LABEL_57;
        }

        v130 = v116;
        sub_23A90F36C();
        v116 = v130;
        v123 = v178;
        if (v121)
        {
LABEL_49:
          *(v123[7] + v116) = 0;
          (*v109)(v106, v177);
          goto LABEL_50;
        }

LABEL_58:
        v123[(v116 >> 6) + 8] |= 1 << v116;
        v124 = v175;
        v125 = v116;
        v126 = v177;
        v112(v123[6] + *(v175 + 72) * v116, v167, v177);
        *(v123[7] + v125) = 0;
        v127 = *(v124 + 8);
        v106 = v167;
        v127(v167, v126);
        v128 = v123[2];
        v46 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v46)
        {
          goto LABEL_91;
        }

        v123[2] = v129;
LABEL_50:
        ++v107;
        v110 = *(v2 + 48);
        *(v2 + 48) = v123;

        swift_endAccess();
        if (v174 == v107)
        {
          goto LABEL_62;
        }
      }

      sub_23A90A548(v120, v114);
      v116 = sub_23A9EDD28(v106);
      if ((v121 & 1) != (v122 & 1))
      {
        goto LABEL_93;
      }

LABEL_57:
      v123 = v178;
      if (v121)
      {
        goto LABEL_49;
      }

      goto LABEL_58;
    }

LABEL_62:
    v131 = v160[5];
    v132 = v165;
    v176 = *(v131 + 16);
    if (!v176)
    {
      return;
    }

    v133 = 0;
    v174 = v131 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    v173 = *(v158 + 32);
    v134 = (v175 + 16);
    v135 = (v175 + 8);
    while (1)
    {
      if (v133 >= *(v131 + 16))
      {
        goto LABEL_86;
      }

      v137 = v161;
      sub_23A8D52B8(v174 + *(v163 + 72) * v133, v161, type metadata accessor for CapturedRoom.Object);
      v138 = *v134;
      (*v134)(v132, v173 + v137, v177);
      sub_23A8D5320(v137, type metadata accessor for CapturedRoom.Object);
      swift_beginAccess();
      v139 = *(v2 + 48);
      v140 = swift_isUniquelyReferenced_nonNull_native();
      v178 = *(v2 + 48);
      v141 = v178;
      *(v2 + 48) = 0x8000000000000000;
      v142 = sub_23A9EDD28(v132);
      v144 = v141[2];
      v145 = (v143 & 1) == 0;
      v46 = __OFADD__(v144, v145);
      v146 = v144 + v145;
      if (v46)
      {
        goto LABEL_87;
      }

      v147 = v143;
      if (v141[3] < v146)
      {
        break;
      }

      if (v140)
      {
        goto LABEL_72;
      }

      v156 = v142;
      sub_23A90F36C();
      v142 = v156;
      v149 = v178;
      if (v147)
      {
LABEL_64:
        *(v149[7] + v142) = 0;
        (*v135)(v132, v177);
        goto LABEL_65;
      }

LABEL_73:
      v149[(v142 >> 6) + 8] |= 1 << v142;
      v150 = v175;
      v151 = v142;
      v152 = v177;
      v138(v149[6] + *(v175 + 72) * v142, v165, v177);
      *(v149[7] + v151) = 0;
      v153 = *(v150 + 8);
      v132 = v165;
      v153(v165, v152);
      v154 = v149[2];
      v46 = __OFADD__(v154, 1);
      v155 = v154 + 1;
      if (v46)
      {
        goto LABEL_92;
      }

      v149[2] = v155;
LABEL_65:
      ++v133;
      v136 = *(v2 + 48);
      *(v2 + 48) = v149;

      swift_endAccess();
      if (v176 == v133)
      {
        return;
      }
    }

    sub_23A90A548(v146, v140);
    v142 = sub_23A9EDD28(v132);
    if ((v147 & 1) != (v148 & 1))
    {
      goto LABEL_93;
    }

LABEL_72:
    v149 = v178;
    if (v147)
    {
      goto LABEL_64;
    }

    goto LABEL_73;
  }

  v26 = 0;
  v170 = (v173 + ((*(v176 + 80) + 32) & ~*(v176 + 80)));
  v27 = *(v159 + 44);
  v28 = (v175 + 16);
  v168 = (v175 + 8);
  v169 = v27;
  while (v26 < v173[2])
  {
    sub_23A8D52B8(v170 + *(v176 + 72) * v26, v25, type metadata accessor for CapturedRoom.Surface);
    v30 = *v28;
    (*v28)(v16, &v25[v169], v177);
    sub_23A8D5320(v25, type metadata accessor for CapturedRoom.Surface);
    swift_beginAccess();
    v31 = *(v2 + 48);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v178 = *(v2 + 48);
    v33 = v178;
    *(v2 + 48) = 0x8000000000000000;
    v35 = sub_23A9EDD28(v16);
    v36 = v33[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_79;
    }

    v39 = v34;
    if (v33[3] >= v38)
    {
      if (v32)
      {
        v42 = v178;
        if (v34)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_23A90F36C();
        v42 = v178;
        if (v39)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_23A90A548(v38, v32);
      v40 = sub_23A9EDD28(v16);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_93;
      }

      v35 = v40;
      v42 = v178;
      if (v39)
      {
LABEL_3:
        *(v42[7] + v35) = 0;
        (*v168)(v16, v177);
        goto LABEL_4;
      }
    }

    v42[(v35 >> 6) + 8] |= 1 << v35;
    v43 = v175;
    v44 = v177;
    v30((v42[6] + *(v175 + 72) * v35), v16, v177);
    *(v42[7] + v35) = 0;
    (*(v43 + 8))(v16, v44);
    v45 = v42[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_88;
    }

    v42[2] = v47;
LABEL_4:
    ++v26;
    v29 = *(v2 + 48);
    *(v2 + 48) = v42;

    swift_endAccess();
    if (v172 == v26)
    {
      goto LABEL_17;
    }
  }

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
LABEL_87:
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
  sub_23AA0DC24();
  __break(1u);
}

uint64_t sub_23A9BEC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = sub_23AA0C0E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v24 = sub_23AA0C504();
  type metadata accessor for ScanEntity();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    goto LABEL_16;
  }

  v60 = v20;
  v61 = a2;
  v67 = v4;
  if (qword_27DFAE368 != -1)
  {
    v55 = v25;
    swift_once();
    v25 = v55;
  }

  v26 = qword_27DFC04B0;
  v27 = *(v15 + 16);
  v27(v23, v25 + qword_27DFC0620, v14);
  swift_beginAccess();
  v28 = *(v26 + 24);
  if (*(v28 + 16))
  {
    v29 = *(v26 + 24);

    v30 = sub_23A9EDD28(v23);
    if (v31)
    {
      v59 = v24;
      v56 = v13;
      v32 = *(*(v28 + 56) + 8 * v30);
      v33 = *(v15 + 8);

      v57 = v33;
      v33(v23, v14);

      v34 = *(v26 + 24);
      if (!*(v34 + 16))
      {
LABEL_14:

LABEL_16:

        v39 = 0;
        return v39 & 1;
      }

      v58 = v32;

      v35 = sub_23A9EDD28(v61);
      if ((v36 & 1) == 0)
      {

        goto LABEL_16;
      }

      v37 = *(*(v34 + 56) + 8 * v35);

      v38 = v58;
      if (sub_23A9C2610(v58, v66))
      {

        goto LABEL_14;
      }

      v66 = v37;
      v41 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
      v27(v60, v38 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v14);
      if (*(v38 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) != 2)
      {
        v49 = 0;
        v50 = v60;
        v48 = v57;
LABEL_28:
        sub_23A9C288C(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);
        v54 = sub_23AA0D084();

        v48(v50, v14);
        v39 = (v54 ^ 1) & v49;
        return v39 & 1;
      }

      v42 = v56;
      v27(v56, v38 + v41, v14);
      (*(v15 + 56))(v42, 0, 1, v14);
      v43 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
      v44 = *(v63 + 48);
      v45 = v65;
      sub_23A8EA9A4(v42, v65);
      sub_23A8EA9A4(v66 + v43, v45 + v44);
      v46 = *(v15 + 48);
      if (v46(v45, 1, v14) == 1)
      {
        sub_23A8D50D0(v42, &unk_27DFB0970, &qword_23AA14E00);
        v47 = v46(v45 + v44, 1, v14);
        v48 = v57;
        if (v47 == 1)
        {
          sub_23A8D50D0(v45, &unk_27DFB0970, &qword_23AA14E00);
          v49 = 0;
LABEL_27:
          v50 = v60;
          goto LABEL_28;
        }
      }

      else
      {
        sub_23A8EA9A4(v45, v64);
        if (v46(v45 + v44, 1, v14) != 1)
        {
          v51 = v62;
          (*(v15 + 32))(v62, v45 + v44, v14);
          sub_23A9C288C(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);
          v52 = v64;
          v53 = sub_23AA0D084();
          v48 = v57;
          v57(v51, v14);
          sub_23A8D50D0(v56, &unk_27DFB0970, &qword_23AA14E00);
          v48(v52, v14);
          sub_23A8D50D0(v45, &unk_27DFB0970, &qword_23AA14E00);
          v49 = v53 ^ 1;
          goto LABEL_27;
        }

        sub_23A8D50D0(v56, &unk_27DFB0970, &qword_23AA14E00);
        v48 = v57;
        v57(v64, v14);
      }

      sub_23A8D50D0(v45, &qword_27DFAEC28, &unk_23AA1AA40);
      v49 = 1;
      goto LABEL_27;
    }
  }

  else
  {
  }

  (*(v15 + 8))(v23, v14);
  v39 = 0;
  return v39 & 1;
}

BOOL sub_23A9BF4B8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = v38 - v10;
  v11 = sub_23AA0C0E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v38 - v16;
  v18 = sub_23AA0C504();
  v19 = *v18;
  v20 = swift_conformsToProtocol2();
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  v40 = v5;
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v22 = qword_27DFC04B0;
  (*(v21 + 8))(*v18, v21);
  swift_beginAccess();
  v23 = *(v22 + 24);
  if (!*(v23 + 16))
  {

LABEL_13:
    (*(v12 + 8))(v17, v11);
    return 0;
  }

  v24 = *(v22 + 24);

  v25 = sub_23A9EDD28(v17);
  if ((v26 & 1) == 0)
  {

    goto LABEL_13;
  }

  v27 = *(*(v23 + 56) + 8 * v25);
  v28 = *(v12 + 8);

  v39 = v28;
  v28(v17, v11);

  if (*(v27 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) != 1)
  {

LABEL_15:

    return 0;
  }

  v29 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
  v30 = v44;
  (*(v12 + 16))(v44, v43 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v11);
  (*(v12 + 56))(v30, 0, 1, v11);
  v31 = *(v2 + 48);
  v38[1] = v27;
  v32 = v40;
  sub_23A8EA9A4(v27 + v29, v40);
  v43 = v31;
  sub_23A8EA9A4(v30, v32 + v31);
  v33 = *(v12 + 48);
  if (v33(v32, 1, v11) == 1)
  {

    sub_23A8D50D0(v30, &unk_27DFB0970, &qword_23AA14E00);
    if (v33(v32 + v43, 1, v11) == 1)
    {
      sub_23A8D50D0(v32, &unk_27DFB0970, &qword_23AA14E00);
      return 1;
    }

    goto LABEL_19;
  }

  v35 = v42;
  sub_23A8EA9A4(v32, v42);
  if (v33(v32 + v43, 1, v11) == 1)
  {

    sub_23A8D50D0(v44, &unk_27DFB0970, &qword_23AA14E00);
    v39(v35, v11);
LABEL_19:
    sub_23A8D50D0(v32, &qword_27DFAEC28, &unk_23AA1AA40);
    return 0;
  }

  v36 = v41;
  (*(v12 + 32))(v41, v32 + v43, v11);
  sub_23A9C288C(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);
  LODWORD(v43) = sub_23AA0D084();

  v37 = v39;
  v39(v36, v11);
  sub_23A8D50D0(v44, &unk_27DFB0970, &qword_23AA14E00);
  v37(v35, v11);
  sub_23A8D50D0(v32, &unk_27DFB0970, &qword_23AA14E00);
  return (v43 & 1) != 0;
}

uint64_t sub_23A9BFAD4()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_23A9BFB40(_BYTE *a1)
{
  v2 = sub_23AA0C104();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23AA0D0F4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23AA0D0D4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (*a1 == 5)
  {
    return 0;
  }

  sub_23AA0D0C4();
  sub_23AA0D0B4();
  sub_23AA0D0A4();
  sub_23AA0D0B4();
  sub_23AA0D0E4();
  type metadata accessor for VoiceOverManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass_];
  sub_23AA0C0F4();
  return sub_23AA0D194();
}

uint64_t sub_23A9BFF84(_BYTE *a1)
{
  v2 = sub_23AA0C104();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23AA0D0F4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  *a1;
  sub_23AA0D094();
  type metadata accessor for VoiceOverManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass_];
  sub_23AA0C0F4();
  return sub_23AA0D194();
}

uint64_t sub_23A9C0824(_BYTE *a1)
{
  v2 = sub_23AA0C104();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23AA0D0F4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23AA0D0D4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  *a1;
  sub_23AA0D0C4();
  sub_23AA0D0B4();
  sub_23AA0D0A4();
  sub_23AA0D0B4();
  sub_23AA0D0E4();
  type metadata accessor for VoiceOverManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass_];
  sub_23AA0C0F4();
  return sub_23AA0D194();
}

uint64_t sub_23A9C159C(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom.Object(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = 0;
  v32 = a1;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  v33 = v10;
  do
  {
    v34 = v9;
    v35 = v11;
    v13 = *(&unk_284D805E0 + v9 + 32);
    if (v10)
    {
      v14 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v15 = *(v31 + 72);
      v16 = v32 + v14;
      v17 = MEMORY[0x277D84F90];
      do
      {
        sub_23A8D52B8(v16, v8, type metadata accessor for CapturedRoom.Object);
        if (*v8 == v13)
        {
          sub_23A9C25A8(v8, v5, type metadata accessor for CapturedRoom.Object);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23A9760CC(0, *(v17 + 2) + 1, 1);
            v17 = v36;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            sub_23A9760CC(v19 > 1, v20 + 1, 1);
            v17 = v36;
          }

          *(v17 + 2) = v20 + 1;
          sub_23A9C25A8(v5, &v17[v14 + v20 * v15], type metadata accessor for CapturedRoom.Object);
        }

        else
        {
          sub_23A8D5320(v8, type metadata accessor for CapturedRoom.Object);
        }

        v16 += v15;
        --v10;
      }

      while (v10);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v21 = *(v17 + 2);

    v11 = v35;
    if (v21)
    {
      v10 = v33;
      LOBYTE(v36) = v13;
      if (v21 == 1)
      {
        v22 = sub_23A9BFF84(&v36);
      }

      else
      {
        v22 = sub_23A9C0824(&v36);
      }

      v24 = v22;
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_23A9388F4(0, *(v11 + 2) + 1, 1, v11);
      }

      v27 = *(v11 + 2);
      v26 = *(v11 + 3);
      if (v27 >= v26 >> 1)
      {
        v11 = sub_23A9388F4((v26 > 1), v27 + 1, 1, v11);
      }

      *(v11 + 2) = v27 + 1;
      v28 = &v11[16 * v27];
      *(v28 + 4) = v24;
      *(v28 + 5) = v25;
      v12 = v34;
    }

    else
    {
      v10 = v33;
      v12 = v34;
    }

    v9 = v12 + 1;
  }

  while (v9 != 16);
  v36 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1E0, &qword_23AA12EC0);
  sub_23A92FE18();
  v29 = sub_23AA0D074();

  return v29;
}

uint64_t sub_23A9C18EC(uint64_t a1, uint64_t a2)
{
  v105[0] = a2;
  v3 = sub_23AA0C104();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v105[2] = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0D0F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v105[1] = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CapturedRoom.Surface(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v109 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v108 = v105 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v113 = v105 - v17;
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v105 - v19);
  v112 = v105 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v105 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v105 - v25;
  MEMORY[0x28223BE20](v27);
  v33 = v105 - v32;
  v34 = *(a1 + 16);
  if (v34)
  {
    v110 = v28;
    v111 = v31;
    v106 = v30;
    v35 = *(v29 + 72);
    v115 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v36 = a1 + v115;
    v114 = MEMORY[0x277D84F90];
    v37 = a1 + v115;
    v38 = v34;
    v107 = v26;
    do
    {
      sub_23A8D52B8(v37, v33, type metadata accessor for CapturedRoom.Surface);
      if (*v33 == 2)
      {
        sub_23A9C25A8(v33, v26, type metadata accessor for CapturedRoom.Surface);
        v39 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23A976018(0, *(v39 + 16) + 1, 1);
          v39 = v116[0];
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_23A976018(v41 > 1, v42 + 1, 1);
          v39 = v116[0];
        }

        *(v39 + 16) = v42 + 1;
        v114 = v39;
        v43 = v39 + v115 + v42 * v35;
        v26 = v107;
        sub_23A9C25A8(v107, v43, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        sub_23A8D5320(v33, type metadata accessor for CapturedRoom.Surface);
      }

      v37 += v35;
      --v38;
    }

    while (v38);
    v44 = MEMORY[0x277D84F90];
    v45 = v36;
    v46 = v34;
    v47 = v106;
    do
    {
      sub_23A8D52B8(v45, v23, type metadata accessor for CapturedRoom.Surface);
      if (*v23 == 4)
      {
        sub_23A9C25A8(v23, v112, type metadata accessor for CapturedRoom.Surface);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v44;
        if ((v48 & 1) == 0)
        {
          sub_23A976018(0, *(v44 + 16) + 1, 1);
          v44 = v116[0];
        }

        v50 = *(v44 + 16);
        v49 = *(v44 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_23A976018(v49 > 1, v50 + 1, 1);
          v44 = v116[0];
        }

        *(v44 + 16) = v50 + 1;
        sub_23A9C25A8(v112, v44 + v115 + v50 * v35, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        sub_23A8D5320(v23, type metadata accessor for CapturedRoom.Surface);
      }

      v45 += v35;
      --v46;
    }

    while (v46);
    v112 = v44;
    v51 = MEMORY[0x277D84F90];
    v52 = v36;
    v53 = v34;
    v55 = v110;
    v54 = v111;
    do
    {
      sub_23A8D52B8(v52, v55, type metadata accessor for CapturedRoom.Surface);
      if (*v55 == 3)
      {
        sub_23A9C25A8(v55, v113, type metadata accessor for CapturedRoom.Surface);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v51;
        if ((v56 & 1) == 0)
        {
          sub_23A976018(0, *(v51 + 16) + 1, 1);
          v51 = v116[0];
        }

        v58 = *(v51 + 16);
        v57 = *(v51 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_23A976018(v57 > 1, v58 + 1, 1);
          v51 = v116[0];
        }

        *(v51 + 16) = v58 + 1;
        sub_23A9C25A8(v113, v51 + v115 + v58 * v35, type metadata accessor for CapturedRoom.Surface);
        v55 = v110;
        v54 = v111;
      }

      else
      {
        sub_23A8D5320(v55, type metadata accessor for CapturedRoom.Surface);
      }

      v52 += v35;
      --v53;
    }

    while (v53);
    v59 = MEMORY[0x277D84F90];
    v60 = v36;
    v61 = v34;
    do
    {
      sub_23A8D52B8(v60, v54, type metadata accessor for CapturedRoom.Surface);
      if (*v54 - 2) < 4u || (*v54)
      {
        sub_23A8D5320(v54, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        sub_23A9C25A8(v54, v108, type metadata accessor for CapturedRoom.Surface);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v59;
        if ((v62 & 1) == 0)
        {
          sub_23A976018(0, *(v59 + 16) + 1, 1);
          v59 = v116[0];
        }

        v64 = *(v59 + 16);
        v63 = *(v59 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_23A976018(v63 > 1, v64 + 1, 1);
          v59 = v116[0];
        }

        *(v59 + 16) = v64 + 1;
        sub_23A9C25A8(v108, v59 + v115 + v64 * v35, type metadata accessor for CapturedRoom.Surface);
        v47 = v106;
        v54 = v111;
      }

      v60 += v35;
      --v61;
    }

    while (v61);
    v65 = MEMORY[0x277D84F90];
    do
    {
      sub_23A8D52B8(v36, v47, type metadata accessor for CapturedRoom.Surface);
      if (*v47 - 2) >= 4u && (*v47)
      {
        sub_23A9C25A8(v47, v109, type metadata accessor for CapturedRoom.Surface);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v65;
        if ((v66 & 1) == 0)
        {
          sub_23A976018(0, *(v65 + 16) + 1, 1);
          v65 = v116[0];
        }

        v68 = *(v65 + 16);
        v67 = *(v65 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_23A976018(v67 > 1, v68 + 1, 1);
          v65 = v116[0];
        }

        *(v65 + 16) = v68 + 1;
        sub_23A9C25A8(v109, v65 + v115 + v68 * v35, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        sub_23A8D5320(v47, type metadata accessor for CapturedRoom.Surface);
      }

      v36 += v35;
      --v34;
    }

    while (v34);
    v69 = v114;
    v70 = v112;
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
    v70 = MEMORY[0x277D84F90];
    v69 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
  }

  v116[0] = v59;
  sub_23A911B78(v65);
  v71 = v116[0];
  v72 = *(v69 + 16);

  v73 = *(v70 + 16);

  v75 = v72 + v73;
  if (__OFADD__(v72, v73))
  {
    __break(1u);
    goto LABEL_80;
  }

  v76 = *(v51 + 16);

  v77 = v75 + v76;
  if (__OFADD__(v75, v76))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v78 = *(v71 + 16);

  if (__OFADD__(v77, v78))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!v72)
  {
    v115 = 0xE000000000000000;
    if (v73)
    {
      goto LABEL_63;
    }

LABEL_58:
    v114 = 0xE000000000000000;
    v83 = v77 + v78;
    if (v76)
    {
      goto LABEL_67;
    }

    goto LABEL_59;
  }

  if (v72 == 1)
  {
    sub_23AA0D094();
    type metadata accessor for VoiceOverManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v80 = [objc_opt_self() bundleForClass_];
    sub_23AA0C0F4();
    v81 = sub_23AA0D194();
  }

  else
  {
    LOBYTE(v116[0]) = 2;
    v81 = sub_23A9BFB40(v116);
  }

  v72 = v81;
  v115 = v82;
  if (!v73)
  {
    goto LABEL_58;
  }

LABEL_63:
  if (v73 == 1)
  {
    sub_23AA0D094();
    type metadata accessor for VoiceOverManager();
    v86 = swift_getObjCClassFromMetadata();
    v87 = [objc_opt_self() bundleForClass_];
    sub_23AA0C0F4();
    v88 = sub_23AA0D194();
  }

  else
  {
    LOBYTE(v116[0]) = 4;
    v88 = sub_23A9BFB40(v116);
  }

  v73 = v88;
  v114 = v89;
  v83 = v77 + v78;
  if (v76)
  {
LABEL_67:
    if (v76 == 1)
    {
      sub_23AA0D094();
      type metadata accessor for VoiceOverManager();
      v90 = swift_getObjCClassFromMetadata();
      v91 = [objc_opt_self() bundleForClass_];
      sub_23AA0C0F4();
      v92 = sub_23AA0D194();
    }

    else
    {
      LOBYTE(v116[0]) = 3;
      v92 = sub_23A9BFB40(v116);
    }

    v76 = v92;
    v84 = v93;
    if (v78)
    {
      goto LABEL_71;
    }

LABEL_60:
    v85 = 0xE000000000000000;
    goto LABEL_75;
  }

LABEL_59:
  v84 = 0xE000000000000000;
  if (!v78)
  {
    goto LABEL_60;
  }

LABEL_71:
  if (v78 == 1)
  {
    sub_23AA0D094();
    type metadata accessor for VoiceOverManager();
    v94 = swift_getObjCClassFromMetadata();
    v95 = [objc_opt_self() bundleForClass_];
    sub_23AA0C0F4();
    v96 = sub_23AA0D194();
  }

  else
  {
    LOBYTE(v116[0]) = 0;
    v96 = sub_23A9BFB40(v116);
  }

  v78 = v96;
  v85 = v97;
LABEL_75:
  v98 = v105[0];
  result = sub_23A9C159C(v105[0]);
  v100 = *(v98 + 16);
  v101 = __OFADD__(v83, v100);
  v102 = v83 + v100;
  if (v101)
  {
LABEL_82:
    __break(1u);
    return result;
  }

  v103 = v99;
  if (v102 <= 0)
  {

    return 0;
  }

  else
  {
    v104 = result;
    v116[0] = v72;
    v116[1] = v115;
    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v78, v85);

    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v73, v114);

    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v76, v84);

    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v104, v103);

    return v116[0];
  }
}

uint64_t sub_23A9C25A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9C2610(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AA0C514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DC8, &unk_23AA1AA50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_23A8D7CF0();
  if (v13 >> 62)
  {
    v23 = sub_23AA0D7F4();

    if (v23)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v14)
  {
    return 0;
  }

LABEL_3:
  v15 = *(a2 + 16);
  if (v15)
  {
    v26 = v12;
    v27 = v5;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v16 = v18;
    v19 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    while (1)
    {
      v16(v8, v19, v4);
      if (sub_23A9BF4B8(v8, a1))
      {
        break;
      }

      (*(v17 - 8))(v8, v4);
      v19 += v20;
      if (!--v15)
      {
        v21 = 0;
        v22 = 1;
        v12 = v26;
        v5 = v27;
        goto LABEL_10;
      }
    }

    v12 = v26;
    v5 = v27;
    (*(v27 + 32))(v26, v8, v4);
    v22 = 0;
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

LABEL_10:
  (*(v5 + 56))(v12, v22, 1, v4);
  sub_23A8D50D0(v12, &qword_27DFB0DC8, &unk_23AA1AA50);
  return v21;
}

uint64_t sub_23A9C288C(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_23A9C28D4()
{
  v0 = sub_23A9C2A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0F48, qword_23AA1AA70);
  result = swift_allocObject();
  result[1] = xmmword_23AA1AA60;
  v2 = *(v0 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = *(v0 + 32);
  result[2] = v4;
  if (v2 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v0 + 48);
  result[3] = v5;
  result[4] = v5;
  if (v2 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v0 + 64);
  result[5] = v6;
  result[6] = v6;
  if (v2 == 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v0 + 80);
  result[7] = v7;
  result[8] = v7;
  result[9] = v4;
  if (v2 < 5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v0 + 96);
  result[10] = v8;
  if (v2 == 5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v0 + 112);
  result[11] = v9;
  result[12] = v9;
  if (v2 < 7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(v0 + 128);
  result[13] = v10;
  result[14] = v10;
  if (v2 != 7)
  {
    v12 = v4;
    v13 = *(v0 + 144);
    v15 = v5;
    v17 = v6;
    v18 = v7;
    v11 = v8;
    v14 = v9;
    v16 = v10;

    v3[15] = v13;
    v3[16] = v13;
    v3[17] = v11;
    v3[18] = v12;
    v3[19] = v11;
    v3[20] = v15;
    v3[21] = v14;
    v3[22] = v17;
    v3[23] = v16;
    v3[24] = v18;
    v3[25] = v13;
    return v3;
  }

LABEL_17:
  __break(1u);
  return result;
}