uint64_t type metadata accessor for StickerCell()
{
  result = qword_1EAFCAFF8;
  if (!qword_1EAFCAFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A642F30()
{
  sub_19A63C450();
  if (v0 <= 0x3F)
  {
    sub_19A642FE4();
    if (v1 <= 0x3F)
    {
      sub_19A643048();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ImageGlyph(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19A642FE4()
{
  if (!qword_1EAFCA810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCBE8);
    v0 = sub_19A7A97F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA810);
    }
  }
}

void sub_19A643048()
{
  if (!qword_1EAFCA678)
  {
    v0 = sub_19A7AA494();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA678);
    }
  }
}

char *sub_19A6430B4()
{
  v1 = v0;
  v2 = sub_19A7A9B34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = [objc_allocWithZone(type metadata accessor for StickerView()) initWithFrame_];
  v22[0] = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD88);
  sub_19A7AA464();
  v10 = v23;
  v11 = sub_19A7AB394();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_19A7AB354();
  v12 = v9;
  v13 = v10;
  v14 = sub_19A7AB344();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = 0;
  v15[6] = v10;
  v15[7] = 0;
  sub_19A6816F0(0, 0, v8, &unk_19A7B90C8, v15);

  v24 = *(v1 + 16);
  v23 = *v1;
  v17 = v23;
  if (v24 == 1)
  {
    v18 = *(&v23 + 1);
  }

  else
  {

    sub_19A7AB594();
    v19 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();
    sub_19A644450(&v23);
    (*(v3 + 8))(v5, v2);
    v18 = *(&v22[0] + 1);
    v17 = *&v22[0];
  }

  v20 = &v12[OBJC_IVAR___STKStickerView_usageSource];
  swift_beginAccess();
  *v20 = v17;
  *(v20 + 1) = v18;

  return v12;
}

void sub_19A6433C0(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR___STKStickerView_imageGlyph;
  swift_beginAccess();
  v8 = *&a1[v7];
  v23 = *(v2 + 24);
  v20 = *(v2 + 24);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD88);
  sub_19A7AA464();
  v10 = v22;
  if (!v8)
  {

    goto LABEL_5;
  }

  type metadata accessor for ImageGlyph(0);
  v11 = sub_19A7AB924();

  if ((v11 & 1) == 0)
  {
LABEL_5:
    v20 = v23;
    sub_19A7AA464();
    v12 = v22;
    v13 = sub_19A7AB394();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_19A7AB354();
    v14 = a1;
    v15 = v12;
    v16 = sub_19A7AB344();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v14;
    v17[5] = 0;
    v17[6] = v12;
    v17[7] = 0;
    sub_19A6816F0(0, 0, v6, &unk_19A7BE500, v17);
  }

  v20 = *(v2 + 40);
  v21 = *(v2 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC900);
  MEMORY[0x19A904960](&v22, v19);
  if (v22 == 1)
  {
    sub_19A6C5140();
  }

  else
  {
    sub_19A6C4E6C();
  }
}

uint64_t sub_19A64360C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_19A7A9B34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_19A643FD0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A9FF4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_19A64387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A6444B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19A6438E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A6444B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19A643944()
{
  sub_19A6444B8();
  sub_19A7A9D24();
  __break(1u);
}

double sub_19A64396C()
{
  v1 = sub_19A7A9FF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7A9B34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + *(type metadata accessor for StickerCell() + 20));
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    sub_19A7AB594();
    v12 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v6 + 8))(v8, v5);
    v10 = v16[1];
  }

  if (!v10)
  {
    return 32.0;
  }

  sub_19A64360C(v4);
  v13 = sub_19A7A9F64();

  (*(v2 + 8))(v4, v1);
  Size = CTFontGetSize(v13);

  return Size;
}

double sub_19A643BA8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StickerCell();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_19A64396C();
  v8 = *(v1 + *(v5 + 36));
  v22 = *(v1 + *(v5 + 32) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  sub_19A7AA484();
  v19 = *(&v24 + 1);
  v20 = v24;
  v18 = v25;
  KeyPath = swift_getKeyPath();
  v21 = v8;
  type metadata accessor for ImageGlyph(0);
  v9 = v8;
  sub_19A7AA454();
  v10 = v24;
  LOBYTE(v21) = 0;
  sub_19A7AA654();
  sub_19A7A9864();
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  sub_19A643E94(v1, &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_19A643EF8(&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_19A643E94(v2, &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_19A643EF8(&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  v14 = *&v23[16];
  *(a1 + 57) = *v23;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v10;
  v15 = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v15;
  *(a1 + 56) = v18;
  *(a1 + 73) = v14;
  *(a1 + 89) = *&v23[32];
  *(a1 + 104) = *&v23[47];
  *(a1 + 112) = sub_19A643F5C;
  *(a1 + 120) = v12;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = sub_19A643F64;
  *(a1 + 168) = v13;
  return result;
}

uint64_t sub_19A643E1C()
{
  type metadata accessor for StickerCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8F8);
  return sub_19A7AA474();
}

uint64_t sub_19A643E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A643EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A643FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19A644068(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A6440B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A644140(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A6441C4()
{
  result = qword_1EAFCCD70;
  if (!qword_1EAFCCD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCCD78);
    sub_19A644250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCD70);
  }

  return result;
}

unint64_t sub_19A644250()
{
  result = qword_1EAFCCD80;
  if (!qword_1EAFCCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCD80);
  }

  return result;
}

uint64_t sub_19A6442A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A60FB98;

  return sub_19A6C3734(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A64437C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A60F860;

  return sub_19A6C3734(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A644450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A6444B8()
{
  result = qword_1EAFCCD98;
  if (!qword_1EAFCCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCD98);
  }

  return result;
}

uint64_t sub_19A64450C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCCDA0);
  __swift_project_value_buffer(v0, qword_1EAFCCDA0);
  return sub_19A7A9374();
}

uint64_t sub_19A644590()
{

  sub_19A60126C(*(v0 + 32));

  return swift_deallocClassInstance();
}

id sub_19A6445F4()
{
  type metadata accessor for EmojiUpscaler();
  v0 = swift_allocObject();
  result = [objc_opt_self() service];
  *(v0 + 16) = result;
  qword_1EAFDD6C0 = v0;
  return result;
}

uint64_t sub_19A644650(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = sub_19A7AA764();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_19A7AA7B4();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A5F5028(0, &qword_1ED8B2040);
  v25 = sub_19A7AB794();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  aBlock[4] = sub_19A645B68;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_21;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a3;

  v21 = a6;

  sub_19A7AA784();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19A645B8C(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A612560();
  sub_19A7ABB54();
  v22 = v25;
  MEMORY[0x19A905BE0](0, v16, v13, v18);
  _Block_release(v18);

  (*(v27 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v26);
}

void sub_19A644944(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, void), uint64_t a4, uint64_t a5)
{
  v9 = sub_19A7AAFE4();
  v10 = [a2 valueForKey_];

  if (v10)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (!*(&v40 + 1))
  {
    sub_19A5F2B54(v41, &unk_1EAFCD750);
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_8:
    v11 = a1;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECA0);
  if (swift_dynamicCast())
  {
    a1 = v38;
LABEL_9:
    if (qword_1EAFCB510 != -1)
    {
      swift_once();
    }

    v12 = sub_19A7A9384();
    __swift_project_value_buffer(v12, qword_1EAFCCDA0);
    v13 = a1;
    v14 = sub_19A7A9364();
    v15 = sub_19A7AB584();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v41[0] = v17;
      *v16 = 136315138;
      v18 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCDE0);
      v19 = sub_19A7AB064();
      v21 = sub_19A62540C(v19, v20, v41);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_19A5EE000, v14, v15, "Failed to upscale emoji: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x19A907A30](v17, -1, -1);
      MEMORY[0x19A907A30](v16, -1, -1);
    }

    a3(a5, a5, 0);
    return;
  }

  if (a1)
  {
    goto LABEL_8;
  }

LABEL_15:
  v22 = [a2 results];
  if (!v22)
  {
LABEL_29:
    a3(a5, a5, 0);
    return;
  }

  v23 = v22;
  sub_19A5F5028(0, &qword_1EAFCCDD8);
  v24 = sub_19A7AB254();

  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!sub_19A7ABBE4())
  {
    goto LABEL_28;
  }

LABEL_18:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x19A906130](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v25 = *(v24 + 32);
  }

  v26 = v25;

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {

    goto LABEL_29;
  }

  v28 = [v27 image];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

  v30 = UIImagePNGRepresentation(v29);
  if (v30)
  {
    v31 = v30;
    v32 = sub_19A7A8E34();
    v34 = v33;

    v35 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v36 = sub_19A7A8E14();
    v37 = [v35 initWithData_];

    sub_19A612F14(v32, v34);
    if (v37)
    {

      v29 = v37;
    }
  }

  a3(a5, v29, 0);
}

void sub_19A644DA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

CGColorSpaceRef sub_19A644E1C()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (result)
  {
    qword_1EAFCCDB8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A644E50()
{

  return swift_deallocClassInstance();
}

id sub_19A644EAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C30;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  *(inited + 64) = sub_19A5F5028(0, &qword_1EAFCC158);
  *(inited + 40) = v4;
  sub_19A69C09C(inited);
  swift_setDeallocating();
  sub_19A5F2B54(inited + 32, &qword_1EAFCCE00);
  v5 = sub_19A7AAFE4();
  type metadata accessor for Key(0);
  sub_19A645B8C(&qword_1EAFCA4B0, type metadata accessor for Key);
  v6 = sub_19A7AAF34();
  [v5 sizeWithAttributes_];
  v8 = v7;
  v10 = v9;

  if (qword_1EAFCB520 != -1)
  {
    swift_once();
  }

  v11 = __CGBitmapContextCreate(0, 0xA0uLL, 0xA0uLL, 0, qword_1EAFCCDB8, 1u);
  if (v11)
  {
    v12 = v11;
    UIGraphicsPushContext(v11);
    CGContextScaleCTM(v12, 1.0, -1.0);
    CGContextTranslateCTM(v12, 0.0, -160.0);
    v13 = sub_19A7AAFE4();
    v14 = sub_19A7AAF34();

    [v13 drawAtPoint:v14 withAttributes:{(160.0 - v8) * 0.5, (160.0 - v10) * 0.5}];

    UIGraphicsPopContext();
    Image = CGBitmapContextCreateImage(v12);
    if (Image)
    {
      v16 = Image;
      v17 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

      return v17;
    }
  }

  else
  {
  }

  return 0;
}

CVPixelBufferRef sub_19A64519C(CGImage *a1, CGColorSpace *a2)
{
  v26[23] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    DeviceRGB = a2;
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCDE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B90E0;
  *(inited + 32) = sub_19A7AB014();
  *(inited + 40) = v6;
  v7 = a2;
  v8 = sub_19A69C0E4(MEMORY[0x1E69E7CC0]);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCDF0);
  *(inited + 48) = v8;
  *(inited + 80) = sub_19A7AB014();
  *(inited + 88) = v9;
  v10 = MEMORY[0x1E69E6370];
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = 1;
  *(inited + 128) = sub_19A7AB014();
  *(inited + 136) = v11;
  *(inited + 168) = v10;
  *(inited + 144) = 1;
  sub_19A69C220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFCE0);
  swift_arrayDestroy();
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v26[0] = 0;
  v14 = *MEMORY[0x1E695E480];
  v15 = sub_19A7AAF34();

  LODWORD(v14) = CVPixelBufferCreate(v14, Width, Height, 0x42475241u, v15, v26);

  v16 = 0;
  if (!v14)
  {
    v17 = v26[0];
    if (v26[0])
    {
      v18 = v26[0];
      CVPixelBufferLockBaseAddress(v18, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v18);
      if (BaseAddress && (v20 = BaseAddress, BytesPerRow = CVPixelBufferGetBytesPerRow(v18), (v22 = __CGBitmapContextCreate(v20, Width, Height, BytesPerRow, DeviceRGB, 0x2002u)) != 0))
      {
        v23 = v22;
        sub_19A7AB554();
        v24 = v18;
      }

      else
      {
        v17 = 0;
      }

      CVPixelBufferUnlockBaseAddress(v18, 0);

      v16 = v17;
    }
  }

  return v16;
}

void sub_19A645444(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;

  v11 = [a3 CGImage];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCDC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A7B6C30;
    v15 = *MEMORY[0x1E695F840];
    *(inited + 32) = *MEMORY[0x1E695F840];
    *(inited + 64) = MEMORY[0x1E69E6370];
    *(inited + 40) = 0;
    v16 = v15;
    sub_19A69C0C0(inited);
    swift_setDeallocating();
    sub_19A5F2B54(inited + 32, &qword_1EAFCCDC8);
    v17 = objc_allocWithZone(MEMORY[0x1E695F620]);
    type metadata accessor for CIContextOption(0);
    sub_19A645B8C(&qword_1EAFCBDF8, type metadata accessor for CIContextOption);
    v18 = sub_19A7AAF34();

    v19 = [v17 initWithOptions_];

    [v13 extent];
    if (qword_1EAFCB520 != -1)
    {
      swift_once();
    }

    v20 = qword_1EAFCCDB8;
    v21 = [v19 createCGImage:v13 fromRect:? format:? colorSpace:?];
    if (v21)
    {
      v22 = v21;
      v23 = sub_19A64519C(v21, v20);
      if (v23)
      {
        v24 = v23;
        v25 = [objc_allocWithZone(MEMORY[0x1E69AE358]) initWithScaledImageWidth:320 scaledImageHeight:320];
        v35 = v19;
        v26 = *(a4 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_19A7B6C40;
        *(v27 + 32) = v25;
        sub_19A5F5028(0, &qword_1EAFCCDD0);
        v34 = v26;
        v28 = v25;
        v29 = sub_19A7AB234();

        v36 = sub_19A7AAFE4();
        v30 = swift_allocObject();
        v30[2] = v28;
        v30[3] = sub_19A645B4C;
        v30[4] = v10;
        v30[5] = a3;
        aBlock[4] = sub_19A645B54;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_19A644DA4;
        aBlock[3] = &block_descriptor_1;
        v31 = _Block_copy(aBlock);
        v32 = v28;

        v33 = a3;

        [v34 performRequests:v29 onPixelBuffer:v24 withOrientation:1 andIdentifier:v36 completionHandler:v31];
        _Block_release(v31);
      }

      else
      {
        sub_19A610CB8(a3, a3, 0, a5, a6);
      }
    }

    else
    {
      sub_19A610CB8(a3, a3, 0, a5, a6);
    }
  }

  else
  {
    sub_19A610CB8(a3, a3, 0, a5, a6);
  }
}

void sub_19A645954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = qword_1EAFCB510;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_19A7A9384();
  __swift_project_value_buffer(v11, qword_1EAFCCDA0);
  v12 = sub_19A7A9364();
  v13 = sub_19A7AB574();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_19A5EE000, v12, v13, "Generating emoji", v14, 2u);
    MEMORY[0x19A907A30](v14, -1, -1);
  }

  v15 = sub_19A644EAC();
  if (v15)
  {
    v16 = v15;

    sub_19A645444(a1, a2, v16, a3, a4, a5);
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_19A7AAFE4();
    v19 = [v17 initWithDomain:v18 code:-1 userInfo:0];

    sub_19A610CB8(0, 0, v19, a4, a5);
  }
}

uint64_t sub_19A645B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A645BDC()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCAAE0);
  __swift_project_value_buffer(v0, qword_1EAFCAAE0);
  return sub_19A7A9374();
}

uint64_t sub_19A645C60()
{
  swift_unknownObjectRelease();
  sub_19A60126C(*(v0 + 24));

  return swift_deallocClassInstance();
}

double sub_19A645D2C()
{
  v0 = sub_19A646038();
  if (v0 >> 62)
  {
    v4 = sub_19A7ABBE4();

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 32;
    goto LABEL_8;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = sub_19A646038();
  if (v2 >> 62)
  {
    v3 = sub_19A7ABBE4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_8:
  v5 = type metadata accessor for ImageGlyphCategory(0);
  v6 = objc_allocWithZone(v5);
  sub_19A7A8F54();
  v7 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v8 = &v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v8 = 0x73746E65636552;
  v8[1] = 0xE700000000000000;
  *&v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = 0;
  *&v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7B9170;
  v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v6[v7] = v3;
  v12.receiver = v6;
  v12.super_class = v5;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_19A7B6C40;
  *(v10 + 32) = v9;
  return result;
}

uint64_t sub_19A645F10()
{
  v1 = *(*(v0 + 24) + 16);

  os_unfair_lock_lock(v1 + 4);
  sub_19A64B428(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_19A645FBC()
{
  v1 = *(*(v0 + 24) + 16);

  os_unfair_lock_lock(v1 + 4);
  sub_19A64B418();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_19A646038()
{
  v1 = v0;
  v2 = *(*(v0 + 96) + 16);

  os_unfair_lock_lock(v2 + 4);
  sub_19A64B3E8(&v10);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v10;

  v4 = *&v3[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration];
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  LODWORD(v4) = *(v4 + v5);

  if (v4 == 1)
  {
    v6 = *(*(v1 + 56) + 16);
  }

  else
  {
    v6 = *(*(v1 + 64) + 16);
  }

  os_unfair_lock_lock(v6 + 4);
  sub_19A64BB60(&v9);
  os_unfair_lock_unlock(v6 + 4);
  v7 = v9;

  return v7;
}

uint64_t sub_19A646140()
{
  v1 = v0;
  v2 = sub_19A7AAA14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCE08);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = 1;
  *(v1 + 24) = v6;
  *(v1 + 32) = 5;
  (*(v3 + 104))(v5, *MEMORY[0x1E69D4638], v2);
  sub_19A7AAAC4();
  swift_allocObject();
  *(v1 + 40) = sub_19A7AAA04();
  sub_19A7AAB34();
  *(v1 + 48) = sub_19A7AAB24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCE10);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v1 + 56) = v8;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 24) = v10;
  *(v1 + 64) = v11;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = v10;
  *(v1 + 72) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCE18);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v15 + 16) = v16;
  *(v15 + 24) = v10;
  *(v1 + 80) = v15;
  type metadata accessor for RecencyChangeObservers();
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = 0;
  *(v1 + 88) = v17;
  v18 = *(v1 + 32);
  v19 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  v20 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCE20);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v21 + 16) = v22;
  *(v21 + 24) = v20;
  *(v1 + 96) = v21;
  return v1;
}

uint64_t sub_19A64642C()
{
  v1[149] = v0;
  v2 = sub_19A7A8C04();
  v1[150] = v2;
  v1[151] = *(v2 - 8);
  v1[152] = swift_task_alloc();
  v3 = sub_19A7A9094();
  v1[153] = v3;
  v1[154] = *(v3 - 8);
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v4 = sub_19A7AAB44();
  v1[163] = v4;
  v1[164] = *(v4 - 8);
  v1[165] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCE30);
  v1[166] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A646688, 0, 0);
}

uint64_t sub_19A646688()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[137] = MEMORY[0x1E69E7CC0];
  v0[145] = v1;
  v0[144] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCE38);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 123, sub_19A64674C, v0 + 94);
}

uint64_t sub_19A64674C()
{
  *(v1 + 1336) = v0;
  if (v0)
  {
    v2 = sub_19A6477C4;
  }

  else
  {
    v2 = sub_19A646780;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_19A646780()
{
  v134 = v0;
  v105 = (v0 + 888);
  v106 = (v0 + 792);
  v119 = *(v0 + 1320);
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1008);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 984), v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  *(v0 + 1048) = swift_getAssociatedTypeWitness();
  *(v0 + 1056) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 1024));
  sub_19A7AB174();

  v129 = (v1 + 48);
  v7 = (v1 + 32);
  v128 = (v1 + 88);
  v110 = (v1 + 8);
  v121 = (v2 + 56);
  v122 = (v1 + 96);
  v127 = *MEMORY[0x1E69D46B0];
  v120 = (v2 + 48);
  v126 = *MEMORY[0x1E69D46A8];
  v111 = (v2 + 8);
  v112 = (v2 + 32);
  v125 = *MEMORY[0x1E69D46C0];
  v117 = *MEMORY[0x1E69D46B8];
  v8 = &unk_19A7B6AF0;
  v107 = MEMORY[0x1E69E7CC0];
  v108 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  v118 = (v1 + 32);
  while (1)
  {
    v13 = *(v0 + 1328);
    v14 = *(v0 + 1304);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 1024, *(v0 + 1048));
    sub_19A7ABAB4();
    if ((*v129)(v13, 1, v14) == 1)
    {
      break;
    }

    v15 = *(v0 + 1320);
    v16 = *(v0 + 1304);
    (*v7)(v15, *(v0 + 1328), v16);
    v17 = (*v128)(v15, v16);
    if (v17 == v127)
    {
      v40 = *(v0 + 1320);
      (*v122)(v40, *(v0 + 1304));
      v41 = *v40;
      v42 = sub_19A76E038();
      MEMORY[0x19A905660]();
      if (*((*(v0 + 1160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();
      v107 = *(v0 + 1160);
      v43 = v42;
      v44 = (v0 + 1096);
      MEMORY[0x19A905660]();
      if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
        v44 = (v0 + 1096);
      }

      sub_19A7AB2A4();

LABEL_25:
      v109 = *v44;
    }

    else
    {
      if (v17 == v126)
      {
        v45 = *(v0 + 1320);
        v46 = *(v0 + 1296);
        v47 = *(v0 + 1280);
        v48 = *(v0 + 1224);
        v114 = v48;
        v116 = *(v0 + 1272);
        (*v122)(v45, *(v0 + 1304));
        v49 = *v45;
        v50 = *(v119 + 8);
        v51 = sub_19A7A8F64();
        (*(*(v51 - 8) + 56))(v46, 1, 1, v51);
        *(v0 + 792) = v49;
        *(v0 + 800) = v50;
        *(v0 + 808) = v49;
        *(v0 + 816) = v50;
        *(v0 + 824) = 0;
        *(v0 + 832) = 0;
        *(v0 + 840) = 254;
        (*v121)(v47, 1, 1, v48);
        v124 = type metadata accessor for ImageGlyph(0);
        v52 = objc_allocWithZone(v124);
        v53 = &v52[OBJC_IVAR___STKImageGlyph_optionalData];
        *v53 = 0;
        v53[1] = 0xE000000000000000;
        *&v52[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
        v52[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
        sub_19A60F0CC(v46, &v52[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
        *&v52[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
        *&v52[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 2;
        v54 = &v52[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
        *v54 = 0;
        v54[1] = 0;
        v55 = &v52[OBJC_IVAR___STKImageGlyph_poseIdentifier];
        *v55 = 0;
        v55[1] = 0;
        v56 = &v52[OBJC_IVAR___STKImageGlyph_emoji];
        *v56 = v49;
        *(v56 + 1) = v50;
        *(v56 + 2) = v49;
        *(v56 + 3) = v50;
        *(v56 + 4) = 0;
        *(v56 + 5) = 0;
        *(v56 + 24) = 254;
        v57 = *(v0 + 808);
        v130 = *v106;
        v131 = v57;
        v132 = *(v0 + 824);
        v133 = *(v0 + 840);

        sub_19A60F01C(v106, v0 + 696);
        sub_19A7862FC(0);
        v59 = v58;
        v61 = v60;
        v62 = v131;
        *v105 = v130;
        *(v0 + 904) = v62;
        *(v0 + 920) = v132;
        *(v0 + 936) = v133;
        sub_19A60F078(v105);
        v63 = &v52[OBJC_IVAR___STKImageGlyph_emojiString];
        *v63 = v59;
        v63[1] = v61;
        v64 = v47;
        v65 = v8;
        sub_19A60F0CC(v64, v116, &unk_1EAFCF110);
        if ((*v120)(v116, 1, v114) == 1)
        {
          sub_19A5F2B54(*(v0 + 1272), &unk_1EAFCF110);
        }

        else
        {
          v66 = *(v0 + 1248);
          v67 = *(v0 + 1224);
          (*v112)(v66, *(v0 + 1272), v67);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_19A7B6C20;
          *(v0 + 1168) = sub_19A7A9064();
          *(v68 + 32) = sub_19A7AC024();
          *(v68 + 40) = v69;
          *(v0 + 1176) = sub_19A7A9044();
          *(v68 + 48) = sub_19A7AC024();
          *(v68 + 56) = v70;
          *(v0 + 1184) = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
          sub_19A6179D4();
          v71 = sub_19A7AAF94();
          v73 = v72;

          (*v111)(v66, v67);
          *v53 = v71;
          v53[1] = v73;
          v7 = v118;
        }

        v8 = v65;
        v74 = *(v0 + 1296);
        v75 = *(v0 + 1280);
        v76 = &v52[OBJC_IVAR___STKImageGlyph_character];
        *v76 = 0;
        v76[1] = 0;
        *(v0 + 1064) = v52;
        *(v0 + 1072) = v124;
        v77 = objc_msgSendSuper2((v0 + 1064), sel_init);
        sub_19A5F2B54(v75, &unk_1EAFCF110);
        sub_19A5F2B54(v74, &qword_1EAFCD800);
        v78 = v77;
        MEMORY[0x19A905660]();
        if (*((*(v0 + 1152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19A7AB274();
        }

        sub_19A7AB2A4();
        v108 = *(v0 + 1152);
        v79 = v78;
        v44 = (v0 + 1096);
        MEMORY[0x19A905660]();
        if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19A7AB274();
        }

        sub_19A7AB2A4();

        goto LABEL_25;
      }

      if (v17 == v125)
      {
        v18 = *(v0 + 1320);
        v19 = *(v0 + 1288);
        v20 = *(v0 + 1264);
        v21 = *(v0 + 1256);
        v22 = *(v0 + 1224);
        (*v122)(v18, *(v0 + 1304));
        v23 = *v18;
        v24 = *(v119 + 8);
        v25 = sub_19A7A8F64();
        (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
        (*v121)(v20, 1, 1, v22);
        v123 = type metadata accessor for ImageGlyph(0);
        v26 = objc_allocWithZone(v123);
        v27 = v8;
        v28 = &v26[OBJC_IVAR___STKImageGlyph_optionalData];
        *v28 = 0;
        v28[1] = 0xE000000000000000;
        *&v26[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
        v26[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
        sub_19A60F0CC(v19, &v26[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
        *&v26[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
        *&v26[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 2;
        v29 = &v26[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
        *v29 = 0;
        v29[1] = 0;
        v30 = &v26[OBJC_IVAR___STKImageGlyph_poseIdentifier];
        *v30 = 0;
        v30[1] = 0;
        v31 = &v26[OBJC_IVAR___STKImageGlyph_emoji];
        *v31 = 0u;
        *(v31 + 1) = 0u;
        *(v31 + 2) = 0u;
        *(v31 + 24) = 0;
        v32 = &v26[OBJC_IVAR___STKImageGlyph_emojiString];
        *v32 = 0;
        v32[1] = 0;
        sub_19A60F0CC(v20, v21, &unk_1EAFCF110);
        if ((*v120)(v21, 1, v22) == 1)
        {
          sub_19A5F2B54(*(v0 + 1256), &unk_1EAFCF110);
        }

        else
        {
          v33 = *(v0 + 1240);
          v113 = *(v0 + 1224);
          (*v112)(v33, *(v0 + 1256));
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_19A7B6C20;
          *(v0 + 1112) = sub_19A7A9064();
          v115 = v23;
          *(v34 + 32) = sub_19A7AC024();
          *(v34 + 40) = v35;
          *(v0 + 1120) = sub_19A7A9044();
          *(v34 + 48) = sub_19A7AC024();
          *(v34 + 56) = v36;
          *(v0 + 1128) = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
          sub_19A6179D4();
          v37 = sub_19A7AAF94();
          v39 = v38;

          (*v111)(v33, v113);
          *v28 = v37;
          v28[1] = v39;
          v23 = v115;
        }

        v7 = v118;
        v8 = v27;
        v9 = *(v0 + 1288);
        v10 = *(v0 + 1264);
        v11 = &v26[OBJC_IVAR___STKImageGlyph_character];
        *v11 = v23;
        v11[1] = v24;
        *(v0 + 1080) = v26;
        *(v0 + 1088) = v123;
        v12 = objc_msgSendSuper2((v0 + 1080), sel_init);
        sub_19A5F2B54(v10, &unk_1EAFCF110);
        sub_19A5F2B54(v9, &qword_1EAFCD800);
      }

      else if (v17 != v117)
      {
        (*v110)(*(v0 + 1320), *(v0 + 1304));
      }
    }
  }

  v80 = *(v0 + 1336);
  v81 = *(v0 + 1192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1024);
  v82 = *(*(v81 + 56) + 16);

  os_unfair_lock_lock(v82 + 4);
  sub_19A64BB60(&v130);
  os_unfair_lock_unlock(v82 + 4);
  if (!v80)
  {
    v83 = v130;

    v84 = sub_19A72AF14(v83, v109);

    if (v84)
    {

      v85 = sub_19A6477A8;
      v86 = v0 + 16;
      v87 = v0 + 984;
      v88 = v0 + 656;
    }

    else
    {
      v89 = *(*(v0 + 1192) + 64);
      *(v0 + 1144) = v108;
      v90 = *(v89 + 16);
      v91 = swift_task_alloc();
      *(v91 + 16) = v89;
      *(v91 + 24) = v0 + 1144;

      os_unfair_lock_lock(v90 + 4);
      sub_19A64BB1C();
      os_unfair_lock_unlock(v90 + 4);
      v92 = *(v0 + 1192);

      v93 = *(v92 + 72);
      *(v0 + 1136) = v107;
      v94 = *(v93 + 16);
      v95 = swift_task_alloc();
      *(v95 + 16) = v93;
      *(v95 + 24) = v0 + 1136;

      os_unfair_lock_lock(v94 + 4);
      sub_19A64BB1C();
      os_unfair_lock_unlock(v94 + 4);

      v96 = *(v81 + 56);
      *(v0 + 1104) = v109;
      v97 = *(v96 + 16);
      v98 = swift_task_alloc();
      *(v98 + 16) = v96;
      *(v98 + 24) = v0 + 1104;

      os_unfair_lock_lock(v97 + 4);
      sub_19A64BB1C();
      os_unfair_lock_unlock(v97 + 4);

      if (qword_1ED8B2020 != -1)
      {
        swift_once();
      }

      v99 = *(v0 + 1216);
      v100 = *(v0 + 1208);
      v101 = *(v0 + 1200);
      v130 = 0u;
      v131 = 0u;
      v102 = qword_1ED8B4238;
      sub_19A7A8BD4();
      v103 = [objc_opt_self() defaultCenter];
      v104 = sub_19A7A8BB4();
      [v103 postNotification_];

      (*(v100 + 8))(v99, v101);
      v85 = sub_19A647688;
      v86 = v0 + 16;
      v87 = v0 + 984;
      v88 = v0 + 944;
    }

    MEMORY[0x1EEE6DEB0](v86, v87, v85, v88);
  }
}

uint64_t sub_19A6476A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A647800()
{
  if (qword_1EAFCAAD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1336);
  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAAE0);
  v3 = v1;
  v4 = sub_19A7A9364();
  v5 = sub_19A7AB584();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1336);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_19A5EE000, v4, v5, "Could not update recents with error: %@", v8, 0xCu);
    sub_19A5F2B54(v9, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v9, -1, -1);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_19A647A44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A647A64, 0, 0);
}

uint64_t sub_19A647A64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCE40);
  v1 = sub_19A7AAAD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = xmmword_19A7B90E0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, *MEMORY[0x1E69D4648], v1);
  v7(v6 + v3, *MEMORY[0x1E69D4658], v1);
  v7(v6 + 2 * v3, *MEMORY[0x1E69D4650], v1);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_19A647C2C;
  v9 = v0[2];

  return MEMORY[0x1EEE427F0](v9, v5, 32);
}

uint64_t sub_19A647C2C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A647D68, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A647D68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A647DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_19A647E60;

  return sub_19A64642C();
}

uint64_t sub_19A647E60()
{

  return MEMORY[0x1EEE6DFA0](sub_19A647F5C, 0, 0);
}

uint64_t sub_19A647F5C()
{
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 32) = 1;
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 32;

  os_unfair_lock_lock(v2 + 4);
  sub_19A64BB48();
  os_unfair_lock_unlock(v2 + 4);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A6485F8(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_19A648808(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = _Block_copy(a3);
  sub_19A7A9024();
  sub_19A7A9024();
  v10 = *(v6 + 8);
  v10(v7, v5);
  v10(v8, v5);
  v9[2](v9, 0);
  _Block_release(v9);

  v11 = *(v3 + 8);

  return v11();
}

char *sub_19A648B0C(uint64_t a1)
{
  if (sub_19A7A9064())
  {
    return 0;
  }

  v3 = sub_19A7A9044();
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  if (sub_19A7A9064())
  {
    return 0;
  }

  v5 = sub_19A646038();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v9 = sub_19A7ABBE4();

  if (!v9)
  {
LABEL_12:
    if (v4 < 0x20)
    {
      goto LABEL_13;
    }

    return 0;
  }

LABEL_7:
  v7 = sub_19A646038();
  if (v7 >> 62)
  {
    v8 = sub_19A7ABBE4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 >= v8)
  {
    return 0;
  }

LABEL_13:
  v10 = sub_19A646038();
  if (v10 >> 62)
  {
    v15 = sub_19A7ABBE4();

    if (v15)
    {
      goto LABEL_15;
    }

    return sub_19A76E5A0(5, a1);
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v11)
  {
    return sub_19A76E5A0(5, a1);
  }

LABEL_15:
  v12 = sub_19A646038();
  result = sub_19A7A9044();
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x19A906130](result, v12);
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 8 * result + 32);
LABEL_19:
    v14 = v13;

    return v14;
  }

  __break(1u);
  return result;
}

char *sub_19A648E54(uint64_t a1)
{
  v2 = sub_19A7A9094();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    return v6;
  }

  v7 = sub_19A646038();
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF1B0);
    v23 = swift_allocObject();
    v24 = _swift_stdlib_malloc_size(v23);
    v25 = v24 - 32;
    if (v24 < 32)
    {
      v25 = v24 - 25;
    }

    v26 = 32;
    *(v23 + 16) = 32;
    *(v23 + 24) = 2 * (v25 >> 3);
    *(v23 + 32) = xmmword_19A7B9180;
    *(v23 + 48) = xmmword_19A7B9190;
    *(v23 + 64) = xmmword_19A7B91A0;
    *(v23 + 80) = xmmword_19A7B91B0;
    *(v23 + 96) = xmmword_19A7B91C0;
    *(v23 + 112) = xmmword_19A7B91D0;
    *(v23 + 128) = xmmword_19A7B91E0;
    *(v23 + 144) = xmmword_19A7B91F0;
    *(v23 + 160) = xmmword_19A7B9200;
    *(v23 + 176) = xmmword_19A7B9210;
    *(v23 + 192) = xmmword_19A7B9220;
    *(v23 + 208) = xmmword_19A7B9230;
    *(v23 + 224) = xmmword_19A7B9240;
    *(v23 + 240) = xmmword_19A7B9250;
    *(v23 + 256) = xmmword_19A7B9260;
    *(v23 + 272) = xmmword_19A7B9270;
    v41 = v6;
    sub_19A5F6074(0, 32, 0);
    v6 = v41;
    v39 = (v3 + 8);
    v40 = v23;
    v27 = 32;
    do
    {
      MEMORY[0x19A903470](*(v23 + v27), 0);
      v28 = sub_19A76E5A0(5, v5);
      v29 = v5;
      v30 = v5;
      v31 = v2;
      (*v39)(v30, v2);
      v32 = sub_19A7663D0();
      v34 = v33;

      v41 = v6;
      v36 = *(v6 + 16);
      v35 = *(v6 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_19A5F6074((v35 > 1), v36 + 1, 1);
        v6 = v41;
      }

      *(v6 + 16) = v36 + 1;
      v37 = v6 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v27 += 8;
      --v26;
      v2 = v31;
      v5 = v29;
      v23 = v40;
    }

    while (v26);

    return v6;
  }

  v22 = sub_19A7ABBE4();

  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = sub_19A646038();
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_24:

    return v6;
  }

  v11 = sub_19A7ABBE4();
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_6:
  v41 = v6;
  result = sub_19A5F6074(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v6 = v41;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A906130](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = sub_19A7663D0();
      v18 = v17;

      v41 = v6;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_19A5F6074((v19 > 1), v20 + 1, 1);
        v6 = v41;
      }

      ++v13;
      *(v6 + 16) = v20 + 1;
      v21 = v6 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v11 != v13);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A64928C(void *a1)
{
  v3.n128_f64[0] = sub_19A645D2C();
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = 0;
LABEL_13:

    return v8;
  }

  v12 = v2;
  v13 = sub_19A7ABBE4();
  v2 = v12;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A906130](0, v3);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  type metadata accessor for ImageGlyphCategory(0);
  v6 = a1;
  v7 = sub_19A7AB924();

  v8 = 0;
  if (v7)
  {
    v9 = sub_19A646038();
    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
        goto LABEL_9;
      }

      return 32;
    }

LABEL_17:
    v15 = sub_19A7ABBE4();

    if (v15)
    {
LABEL_9:
      v11 = sub_19A646038();
      if (v11 >> 62)
      {
        v8 = sub_19A7ABBE4();
      }

      else
      {
        v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_13;
    }

    return 32;
  }

  return v8;
}

uint64_t sub_19A64954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4.n128_f64[0] = sub_19A645D2C();
  v5 = v3;
  v23 = a2;
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v7 = 0;
    v8 = (a1 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title);
    v9 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType;
    v24 = (a1 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName);
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A906130](v7, v5, v4);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = *&v10[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title] == *v8 && *&v10[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title + 8] == v8[1];
      if (!v13 && (sub_19A7AC064() & 1) == 0 || *&v11[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] != *(a1 + v9))
      {
LABEL_4:

        goto LABEL_5;
      }

      v14 = *&v11[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName + 8];
      v15 = v24[1];
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_4;
        }

        if (*&v11[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] == *v24 && v14 == v15)
        {

          goto LABEL_29;
        }

        v17 = sub_19A7AC064();

        if (v17)
        {
          goto LABEL_27;
        }
      }

      else
      {

        if (!v15)
        {
LABEL_27:

LABEL_29:
          v18 = v23;
          MEMORY[0x19A903470](0, 0);
          v19 = 0;
          goto LABEL_34;
        }
      }

LABEL_5:
      ++v7;
      if (v12 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  v19 = 1;
  v18 = v23;
LABEL_34:
  v20 = sub_19A7A9094();
  v21 = *(*(v20 - 8) + 56);

  return v21(v18, v19, 1, v20);
}

uint64_t sub_19A6498EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v2[5] = swift_task_alloc();
  v3 = sub_19A7A8F64();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6499F0, 0, 0);
}

uint64_t sub_19A6499F0()
{
  v35 = v0;
  if (sub_19A7669B0() != 1)
  {
    goto LABEL_4;
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_19A60F0CC(v0[3] + OBJC_IVAR___STKImageGlyph_stickerUUID, v3, &qword_1EAFCD800);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19A5F2B54(v0[5], &qword_1EAFCD800);
LABEL_4:
    if (qword_1EAFCAAD8 != -1)
    {
      swift_once();
    }

    v4 = v0[3];
    v5 = sub_19A7A9384();
    __swift_project_value_buffer(v5, qword_1EAFCAAE0);
    v6 = v4;
    v7 = sub_19A7A9364();
    v8 = sub_19A7AB584();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136315138;
      v11 = sub_19A7663D0();
      v13 = sub_19A62540C(v11, v12, v34);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_19A5EE000, v7, v8, "Could not find sticker to delete for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x19A907A30](v10, -1, -1);
      MEMORY[0x19A907A30](v9, -1, -1);
    }

    v14 = 0;
    goto LABEL_9;
  }

  v17 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  (*(v19 + 32))(v17, v0[5], v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECB0);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19A7B6C30;
  (*(v19 + 16))(v21 + v20, v17, v18);
  sub_19A7AA9E4();
  v22 = v0[4];

  v23 = *(*(v22 + 72) + 16);

  os_unfair_lock_lock(v23 + 4);
  sub_19A64B0D8(v34);
  os_unfair_lock_unlock(v23 + 4);
  v24 = v0[9];
  v25 = v34[0];

  v26 = swift_task_alloc();
  *(v26 + 16) = v24;
  sub_19A6F1430(sub_19A64B0F8, v26, v25);
  v28 = v27;
  LOBYTE(v20) = v29;

  if ((v20 & 1) == 0)
  {
    v30 = *(v22 + 72);
    v31 = *(v30 + 16);

    os_unfair_lock_lock(v31 + 4);
    sub_19A64BB60(v34);
    os_unfair_lock_unlock(v31 + 4);

    v0[2] = v34[0];
    v32 = *(v30 + 16);
    v33 = swift_task_alloc();
    *(v33 + 16) = v30;
    *(v33 + 24) = v0 + 2;
    os_unfair_lock_lock(v32 + 4);
    sub_19A64B118();
    os_unfair_lock_unlock(v32 + 4);
  }

  (*(v0[7] + 8))(v0[9], v0[6]);
  v14 = 1;
LABEL_9:

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_19A64A018(uint64_t *a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_19A7A8F64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF2A0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v26 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *a1;
  v16 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  (*(v4 + 16))(&v24 - v13, v27, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_19A60F0CC(v15 + v16, v9, &qword_1EAFCD800);
  sub_19A60F0CC(v14, &v9[v17], &qword_1EAFCD800);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v26;
    sub_19A60F0CC(v9, v26, &qword_1EAFCD800);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v9[v17], v3);
      sub_19A64B130(&qword_1EAFCB3B0);
      v19 = sub_19A7AAFD4();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_19A5F2B54(v14, &qword_1EAFCD800);
      v22(v20, v3);
      sub_19A5F2B54(v9, &qword_1EAFCD800);
      return v19 & 1;
    }

    sub_19A5F2B54(v14, &qword_1EAFCD800);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_19A5F2B54(v14, &qword_1EAFCD800);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_19A5F2B54(v9, &qword_1EAFCF2A0);
    v19 = 0;
    return v19 & 1;
  }

  sub_19A5F2B54(v9, &qword_1EAFCD800);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_19A64A590(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_19A64A654;

  return sub_19A6498EC(v5);
}

uint64_t sub_19A64A654(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_19A64ADF0()
{

  return v0;
}

uint64_t sub_19A64AE50()
{
  sub_19A64ADF0();

  return swift_deallocClassInstance();
}

uint64_t sub_19A64AEA8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_19A64AF4C()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_19A64AFCC()
{
  sub_19A64AF4C();

  return swift_deallocClassInstance();
}

uint64_t *sub_19A64B03C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A64B130(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19A7A8F64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A64B174()
{
  v1 = *(*(v0 + 96) + 16);

  os_unfair_lock_lock(v1 + 4);
  sub_19A64BB78(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return 1;
}

id sub_19A64B1E0()
{
  v1 = *(*(v0 + 96) + 16);

  os_unfair_lock_lock(v1 + 4);
  sub_19A64BB78(&v5);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v5;

  v3 = _s10StickerKit25ImageGlyphUIConfigurationC6layout3forSo25NSCollectionLayoutSectionCSo0hI11Environment_p_tF_0();

  return v3;
}

uint64_t sub_19A64B258(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19A60F860;

  return sub_19A647A44(a1, v1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t sub_19A64B3A8()
{
  *(*(v0 + 16) + 24) = **(v0 + 24);
}

id sub_19A64B3E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return v2;
}

uint64_t sub_19A64B434()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A64BB34(v2, v3);
}

uint64_t sub_19A64B4E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A64BB38(v2, v3);
}

uint64_t sub_19A64B59C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A64BB44(v2, v3);
}

uint64_t sub_19A64B650()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A64BB40(v2, v3);
}

uint64_t sub_19A64B704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60F860;

  return sub_19A64A590(v2, v3, v4);
}

uint64_t sub_19A64B7B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v7 - v3, &qword_1EAFCD800);
  v5 = sub_19A7A8F64();
  (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_19A5F2B54(v4, &qword_1EAFCD800);
  return 0;
}

uint64_t sub_19A64B8AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A648808(v2, v3, v4);
}

uint64_t sub_19A64B96C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A6485F8(v2, v3, v4);
}

id sub_19A64BA2C()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;

  return v2;
}

uint64_t sub_19A64BA68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A647DCC(a1, v4, v5, v6);
}

uint64_t sub_19A64BB90()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCCE48);
  __swift_project_value_buffer(v0, qword_1EAFCCE48);
  return sub_19A7A9374();
}

uint64_t sub_19A64BC60(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_19A64BCCC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_19A64BD6C;
}

void sub_19A64BD6C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

void sub_19A64BDF4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AvatarEditorViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [objc_allocWithZone(type metadata accessor for AvatarEditorCoordinator()) init];
  v2 = OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_coordinator;
  v3 = *&v0[OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_coordinator];
  *&v0[OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_coordinator] = v1;
  v4 = v1;

  if (v4)
  {
    *&v4[OBJC_IVAR____TtC10StickerKit23AvatarEditorCoordinator_delegate + 8] = &off_1F0DC7348;
    swift_unknownObjectWeakAssign();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v5)
  {
    [v5 setDelegate_];
  }
}

void sub_19A64BF98(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AvatarEditorViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v3)
  {
    [v3 presentActionsForSelectedAvatar];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_19A7A96B4();
  }
}

id AvatarEditorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AvatarEditorViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_scrollPosition;
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  *&v3[v6] = *(qword_1ED8B2D20 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__scrollPosition);
  *&v3[OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_coordinator] = 0;

  if (a2)
  {
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for AvatarEditorViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id AvatarEditorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AvatarEditorViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_scrollPosition;
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  *&v1[v3] = *(qword_1ED8B2D20 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__scrollPosition);
  *&v1[OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_coordinator] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AvatarEditorViewController();

  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_19A64C6C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19A64C70C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  *a1 = v3;
  return result;
}

uint64_t sub_19A64C78C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_19A7A96B4();
}

uint64_t sub_19A64C800@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  *a1 = v3;
  return result;
}

uint64_t sub_19A64C880(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_19A7A96B4();
}

id sub_19A64C9FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v20[5] = a2;
  v20[6] = a3;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v8 = [v7 init];
  if (a4)
  {
    v9 = sub_19A7A8CA4();
    swift_allocObject();
    v10 = sub_19A7A8C94();
    v11 = &unk_1EAFCB0B0;
    v12 = MEMORY[0x1E69689D8];
  }

  else
  {
    v9 = sub_19A7A8B84();
    swift_allocObject();
    v10 = sub_19A7A8B74();
    v11 = &unk_1ED8B3400;
    v12 = MEMORY[0x1E6968010];
  }

  v20[3] = v9;
  v20[4] = sub_19A6272BC(v11, v12);
  v20[0] = v10;
  __swift_project_boxed_opaque_existential_1(v20, v9);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v13 = sub_19A7A8E14();
  [v8 setObject:v13 forSetting:1];

  if (a5)
  {
    v14 = [objc_opt_self() _synchronizedDrawingFence];
    [v8 setObject:v14 forSetting:2];
    sub_19A612F14(v18, v19);
  }

  else
  {
    sub_19A612F14(v18, v19);
  }

  v15 = sub_19A7AB4B4();
  [v8 setObject:v15 forSetting:0];

  type metadata accessor for AvatarEditorClientToHostAction();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v8 responder:0];

  return v16;
}

void sub_19A64CD28(void *a1)
{
  v2 = v1;
  if (qword_1EAFCB530 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCCE48);
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB5A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19A5EE000, v5, v6, "Presenting Avatar Editor", v7, 2u);
    MEMORY[0x19A907A30](v7, -1, -1);
  }

  v8 = [a1 controller];
  v9 = [v8 view];

  if (!v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = [v2 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 frame];
  v13 = v12;
  v15 = v14;

  v16 = [v2 view];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;

  [v9 setFrame_];
  v22 = [a1 controller];
  [v2 addChildViewController_];

  v23 = [v2 view];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v23;
  v25 = [a1 controller];
  v26 = [v25 view];

  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v24 addSubview_];

  v27 = [v2 view];
  if (!v27)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v28 = v27;
  v29 = sub_19A7AAFE4();
  [v28 setAccessibilityIdentifier_];
}

void sub_19A64D00C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EAFCB530 != -1)
  {
    swift_once();
  }

  v6 = sub_19A7A9384();
  __swift_project_value_buffer(v6, qword_1EAFCCE48);

  v7 = sub_19A7A9364();
  v8 = sub_19A7AB5A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    v21 = a1;
    *v9 = 136315138;
    v22 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0);
    v11 = sub_19A7AB064();
    v13 = sub_19A62540C(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_19A5EE000, v7, v8, "Dismissing Avatar Editor %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x19A907A30](v10, -1, -1);
    MEMORY[0x19A907A30](v9, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21) = 0;

  sub_19A7A96B4();
  v14 = &v3[OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 1);
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(ObjectType, v15);
    swift_unknownObjectRelease();
  }

  v17 = [v3 _hostedWindowScene];
  if (v17)
  {
    v18 = v17;
    v19 = sub_19A64C9FC(0, 0, 0xE000000000000000, 0, 0);
    [v18 sendAction_];
  }

  sub_19A74786C(a1, a2);
}

void sub_19A64D2A8(uint64_t a1)
{
  if (a1 && swift_unknownObjectWeakLoadStrong())
  {
    v1 = [swift_unknownObjectRetain() identifier];
    v2 = sub_19A7AB014();
    v4 = v3;

    if (qword_1EAFCB530 != -1)
    {
      swift_once();
    }

    v5 = sub_19A7A9384();
    __swift_project_value_buffer(v5, qword_1EAFCCE48);

    oslog = sub_19A7A9364();
    v6 = sub_19A7AB5A4();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_19A62540C(v2, v4, &v10);
      _os_log_impl(&dword_19A5EE000, oslog, v6, "Selected avatar: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x19A907A30](v8, -1, -1);
      MEMORY[0x19A907A30](v7, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_19A64D4C0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_19A64D558()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCCEE0);
  __swift_project_value_buffer(v0, qword_1EAFCCEE0);
  return sub_19A7A9374();
}

uint64_t UIImage.emojiImageData(requirements:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v152 = a2;
  v151 = type metadata accessor for ImageDataRequirements();
  v3 = MEMORY[0x1EEE9AC00](v151);
  v144 = (&v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v143 = &v142 - v5;
  v6 = sub_19A7A9304();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v148 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v142 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v142 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v145 = &v142 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v142 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v142 - v21;
  v23 = a1;
  v149 = *(v7 + 16);
  (v149)(&v142 - v21, a1, v6);
  sub_19A7A92B4();
  LOBYTE(a1) = sub_19A7A92E4();
  v26 = *(v7 + 8);
  v24 = (v7 + 8);
  v25 = v26;
  v26(v20, v6);
  v153 = v6;
  if ((a1 & 1) == 0)
  {
    sub_19A7A92A4();
    v27 = sub_19A7A92E4();
    v25(v20, v6);
    if ((v27 & 1) == 0)
    {
      sub_19A7A92C4();
      v28 = sub_19A7A92E4();
      v25(v20, v6);
      if ((v28 & 1) == 0)
      {
        v102 = v22;
        if (qword_1EAFCB538 != -1)
        {
          swift_once();
        }

        v103 = sub_19A7A9384();
        __swift_project_value_buffer(v103, qword_1EAFCCEE0);
        v104 = v148;
        v105 = v153;
        (v149)(v148, v22, v153);
        v106 = sub_19A7A9364();
        v107 = sub_19A7AB5A4();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v155[0] = v109;
          *v108 = 136315138;
          sub_19A64FB7C();
          v110 = sub_19A7AC024();
          v111 = v104;
          v112 = v102;
          v114 = v113;
          v25(v111, v105);
          v115 = sub_19A62540C(v110, v114, v155);

          *(v108 + 4) = v115;
          _os_log_impl(&dword_19A5EE000, v106, v107, "Unsupported image data UTType: %s", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v109);
          MEMORY[0x19A907A30](v109, -1, -1);
          MEMORY[0x19A907A30](v108, -1, -1);

          v116 = v112;
        }

        else
        {

          v25(v104, v105);
          v116 = v22;
        }

        v25(v116, v105);
        goto LABEL_54;
      }
    }
  }

  v147 = v25;
  v150 = v22;
  v148 = v24;
  v29 = v151;
  v30 = *(v23 + v151[5]);
  if (!v30)
  {
    v32 = v153;
    if (qword_1EAFCB538 != -1)
    {
LABEL_68:
      swift_once();
    }

    v67 = sub_19A7A9384();
    __swift_project_value_buffer(v67, qword_1EAFCCEE0);
    v68 = v150;
    (v149)(v12, v150, v32);
    v69 = sub_19A7A9364();
    v70 = sub_19A7AB5A4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v155[0] = v72;
      *v71 = 136315138;
      sub_19A64FB7C();
      v73 = sub_19A7AC024();
      v75 = v74;
      v76 = v12;
      v77 = v147;
      v147(v76, v32);
      v78 = sub_19A62540C(v73, v75, v155);

      *(v71 + 4) = v78;
      _os_log_impl(&dword_19A5EE000, v69, v70, "Image Data requirements maxLength must be > 0: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x19A907A30](v72, -1, -1);
      MEMORY[0x19A907A30](v71, -1, -1);

      v77(v68, v32);
      goto LABEL_54;
    }

    v90 = v12;
    goto LABEL_50;
  }

  v31 = *(v23 + v151[6]);
  v32 = v153;
  if (!v31)
  {
    if (qword_1EAFCB538 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_33;
  }

  v146 = *(v23 + v151[7]);
  if (!v146)
  {
    if (qword_1EAFCB538 != -1)
    {
      swift_once();
    }

    v91 = sub_19A7A9384();
    __swift_project_value_buffer(v91, qword_1EAFCCEE0);
    v92 = v145;
    v68 = v150;
    (v149)(v145, v150, v32);
    v93 = sub_19A7A9364();
    v94 = sub_19A7AB5A4();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v155[0] = v96;
      *v95 = 136315138;
      sub_19A64FB7C();
      v97 = sub_19A7AC024();
      v99 = v98;
      v100 = v147;
      v147(v92, v32);
      v101 = sub_19A62540C(v97, v99, v155);

      *(v95 + 4) = v101;
      _os_log_impl(&dword_19A5EE000, v93, v94, "Image Data requirements maxDataLength must be > 0: %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      MEMORY[0x19A907A30](v96, -1, -1);
      MEMORY[0x19A907A30](v95, -1, -1);

      v100(v68, v32);
      goto LABEL_54;
    }

    v90 = v92;
LABEL_50:
    v125 = v147;
    v147(v90, v32);
    v126 = v68;
    goto LABEL_51;
  }

  if (v30 <= v31)
  {
    if (qword_1EAFCB538 != -1)
    {
      swift_once();
    }

    v117 = sub_19A7A9384();
    __swift_project_value_buffer(v117, qword_1EAFCCEE0);
    v118 = v143;
    sub_19A64FBD4(v23, v143);
    v119 = v144;
    sub_19A64FBD4(v23, v144);
    v120 = sub_19A7A9364();
    v121 = sub_19A7AB5A4();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 134218240;
      v123 = *(v118 + v29[5]);
      sub_19A64FC38(v118);
      *(v122 + 4) = v123;
      *(v122 + 12) = 2048;
      v124 = *(v119 + v29[6]);
      sub_19A64FC38(v119);
      *(v122 + 14) = v124;
      _os_log_impl(&dword_19A5EE000, v120, v121, "Image Data maxLength (%lu) must be greater than minLength (%lu)", v122, 0x16u);
      MEMORY[0x19A907A30](v122, -1, -1);
    }

    else
    {
      sub_19A64FC38(v119);
      sub_19A64FC38(v118);
    }

    v147(v150, v32);
    goto LABEL_65;
  }

  v33 = v142;
  v34 = [v142 CGImage];
  if (!v34)
  {
    if (qword_1EAFCB538 != -1)
    {
      swift_once();
    }

    v135 = sub_19A7A9384();
    __swift_project_value_buffer(v135, qword_1EAFCCEE0);
    v136 = sub_19A7A9364();
    v137 = sub_19A7AB5A4();
    v138 = os_log_type_enabled(v136, v137);
    v139 = v150;
    v140 = v147;
    if (v138)
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_19A5EE000, v136, v137, "Image Data requirements no CGImage exists", v141, 2u);
      MEMORY[0x19A907A30](v141, -1, -1);
    }

    v140(v139, v32);
LABEL_65:
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCEF8);
    v129 = *(*(v128 - 8) + 56);
    v130 = v152;
    return v129(v130, 1, 1, v128);
  }

  v35 = v34;
  v36 = v23;
  v15 = sub_19A64E5D0([v33 imageOrientation]);
  CGImageGetWidth(v35);
  CGImageGetHeight(v35);
  v37 = v154;
  ITKClampSizeToMaxLength();
  v154[0] = v38;
  v154[1] = v39;
  ITKClampSizeToMaxLength();
  v154[2] = v40;
  v154[3] = v41;
  ITKClampSizeToMaxLength();
  v42 = 0;
  v154[4] = v43;
  v154[5] = v44;
  v12 = *(v36 + v29[8]);
  v151 = (v12 + 32);
  v149 = v35;
  v144 = v154;
LABEL_10:
  v45 = v42;
  v46 = &v37[2 * v42];
  v145 = v45 + 1;
  v47 = *&v46->width;
  v48 = *&v46->height;
  v49.value = CGImageRef.makeEmojiImageWithSize(_:)(*v46).value;
  v32 = 0;
  while (1)
  {
    if (v32 >= *(v12 + 2))
    {
      __break(1u);
      goto LABEL_68;
    }

    v50 = *&v151[2 * v32];
    v51 = sub_19A7AB014();
    v53 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155[0] = v15;
    sub_19A650218(v51, v53, isUniquelyReferenced_nonNull_native, v50);

    v15 = v155[0];
    sub_19A7A9284();
    v55 = sub_19A7AAFE4();

    sub_19A64E970(v15);
    v56 = sub_19A7AAF34();

    v57 = itk_dataFromCGImage();

    if (!v57)
    {
      goto LABEL_12;
    }

    v58 = sub_19A7A8E34();
    v60 = v59;

    v61 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v61 != 2)
      {

        sub_19A612F14(v58, v60);
        v49.value = v149;
        goto LABEL_57;
      }

      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      v65 = __OFSUB__(v63, v64);
      v62 = v63 - v64;
      if (v65)
      {
        goto LABEL_70;
      }

      goto LABEL_24;
    }

    if (!v61)
    {
      sub_19A612F14(v58, v60);
      v62 = BYTE6(v60);
      goto LABEL_24;
    }

    LODWORD(v62) = HIDWORD(v58) - v58;
    if (__OFSUB__(HIDWORD(v58), v58))
    {
      break;
    }

    v62 = v62;
LABEL_24:
    if (v62 <= 0 || v146 >= v62)
    {

LABEL_57:
      v147(v150, v153);

      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCEF8);
      v133 = *(v132 + 64);
      v134 = v152;
      *v152 = v58;
      v134[1] = v60;
      v134[2] = v47;
      v134[3] = v48;
      sub_19A64FBD4(v36, v134 + v133);
      return (*(*(v132 - 8) + 56))(v134, 0, 1, v132);
    }

    sub_19A612F14(v58, v60);
LABEL_12:
    if (++v32 == 3)
    {

      v42 = v145;
      v66 = v149;
      v37 = v144;
      if (v145 != 3)
      {
        goto LABEL_10;
      }

      v147(v150, v153);

      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  swift_once();
LABEL_33:
  v79 = sub_19A7A9384();
  __swift_project_value_buffer(v79, qword_1EAFCCEE0);
  v80 = v150;
  (v149)(v15, v150, v32);
  v81 = sub_19A7A9364();
  v82 = sub_19A7AB5A4();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v155[0] = v84;
    *v83 = 136315138;
    sub_19A64FB7C();
    v85 = sub_19A7AC024();
    v87 = v86;
    v88 = v147;
    v147(v15, v32);
    v89 = sub_19A62540C(v85, v87, v155);

    *(v83 + 4) = v89;
    _os_log_impl(&dword_19A5EE000, v81, v82, "Image Data requirements minLength must be > 0: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x19A907A30](v84, -1, -1);
    MEMORY[0x19A907A30](v83, -1, -1);

    v88(v150, v32);
    goto LABEL_54;
  }

  v125 = v147;
  v147(v15, v32);
  v126 = v80;
LABEL_51:
  v125(v126, v32);
LABEL_54:
  v127 = v152;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCEF8);
  v129 = *(*(v128 - 8) + 56);
  v130 = v127;
  return v129(v130, 1, 1, v128);
}

uint64_t type metadata accessor for ImageDataRequirements()
{
  result = qword_1EAFCAD18;
  if (!qword_1EAFCAD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_19A64E5D0(unint64_t a1)
{
  if (a1 >= 8)
  {
    if (qword_1EAFCB538 != -1)
    {
      swift_once();
    }

    v4 = sub_19A7A9384();
    __swift_project_value_buffer(v4, qword_1EAFCCEE0);
    v5 = sub_19A7A9364();
    v6 = sub_19A7AB5A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_19A5EE000, v5, v6, "Unknown orientation: %ld", v7, 0xCu);
      MEMORY[0x19A907A30](v7, -1, -1);
    }

    v2 = &unk_1F0DC4AB0;
    v3 = &unk_1F0DC4AD0;
  }

  else
  {
    v2 = *(&off_1E751A640 + a1);
    v3 = off_1E751A680[a1];
  }

  v8 = sub_19A69D074(v2);
  sub_19A5F2B54(v3, &qword_1EAFCCF10);
  return v8;
}

CGImageRef_optional __swiftcall CGImageRef.makeEmojiImageWithSize(_:)(CGSize a1)
{
  v4 = v1;
  height = a1.height;
  width = a1.width;
  BitsPerComponent = CGImageGetBitsPerComponent(v1);
  v8 = CGImageGetColorSpace(v1);
  if (!v8)
  {
    v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  BytesPerRow = CGImageGetBytesPerRow(v1);
  BitmapInfo = CGImageGetBitmapInfo(v4);
  if (!v8)
  {
    return 0;
  }

  if (width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (width >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((*&width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (height <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (height < 9.22337204e18)
  {
    v2 = width;
    v3 = height;
    v11 = __CGBitmapContextCreate_0(width, height, BitsPerComponent, BytesPerRow, v8, BitmapInfo);
    if (v11)
    {
LABEL_15:
      v16 = v11;
      CGContextSetInterpolationQuality(v11, kCGInterpolationHigh);
      sub_19A7AB554();
      Image = CGBitmapContextCreateImage(v16);

      return Image;
    }

    if (qword_1EAFCB538 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_12:
  v12 = sub_19A7A9384();
  __swift_project_value_buffer(v12, qword_1EAFCCEE0);
  v13 = sub_19A7A9364();
  v14 = sub_19A7AB584();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_19A5EE000, v13, v14, "Incorrect image parameters for resized sticker, falling back to default parameters.", v15, 2u);
    MEMORY[0x19A907A30](v15, -1, -1);
  }

  v11 = __CGBitmapContextCreate_0(v2, v3, BitsPerComponent, 0x800uLL, v8, 0x2002u);
  if (v11)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_19A64E970(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD950);
    v2 = sub_19A7ABE94();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_19A625DC4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_19A625DC4(v29, v30);
    result = sub_19A7ABC34();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_19A625DC4(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_19A64EC2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD950);
    v2 = sub_19A7ABE94();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_19A6120B4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_19A625DC4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_19A625DC4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_19A625DC4(v31, v32);
    result = sub_19A7ABC34();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_19A625DC4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t UIImage.stickerRepForRequirements(_:)(uint64_t a1)
{
  v24 = sub_19A7A9304();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v23 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCEF8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  UIImage.emojiImageData(requirements:)(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_19A5F2B54(v7, &qword_1EAFCCF08);
    return 0;
  }

  else
  {
    sub_19A650394(v7, v17);
    sub_19A650404(v17, v15);
    v19 = *(v8 + 64);
    sub_19A650404(v17, v12);
    sub_19A612F14(*v12, *(v12 + 1));
    v20 = *(v8 + 64);
    (*(v2 + 16))(v4, &v12[v20], v24);
    sub_19A64FC38(&v12[v20]);
    sub_19A7AACB4();
    v21 = objc_allocWithZone(sub_19A7AAD24());
    v22 = sub_19A7AACE4();
    sub_19A5F2B54(v17, &qword_1EAFCCEF8);
    sub_19A64FC38(&v15[v19]);
    return v22;
  }
}

Swift::String_optional __swiftcall UIImage.emojiRoleForStrikeImage()()
{
  [v0 size];
  if (v1 == 40.0)
  {
    v2 = 0xD000000000000027;
    v3 = "com.apple.stickers.role.stillVariant_40";
LABEL_7:
    v4 = ((v3 - 32) | 0x8000000000000000);
    goto LABEL_19;
  }

  if (v1 == 64.0)
  {
    v2 = 0xD000000000000027;
    v3 = "com.apple.stickers.role.stillVariant_64";
    goto LABEL_7;
  }

  if (v1 == 96.0)
  {
    v2 = 0xD000000000000027;
    v3 = "com.apple.stickers.role.stillVariant_96";
    goto LABEL_7;
  }

  v5 = 0x800000019A7C50A0;
  if (v1 == 320.0)
  {
    v6 = 0xD000000000000028;
  }

  else
  {
    v6 = 0;
  }

  if (v1 != 320.0)
  {
    v5 = 0;
  }

  if (v1 == 160.0)
  {
    v2 = 0xD000000000000028;
  }

  else
  {
    v2 = v6;
  }

  if (v1 == 160.0)
  {
    v4 = 0x800000019A7C4FE0;
  }

  else
  {
    v4 = v5;
  }

LABEL_19:
  result.value._object = v4;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t static UIImage.createStickerRepresentations(from:)(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for ImageDataRequirements();
  v1[4] = swift_task_alloc();
  sub_19A7A9304();
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A64F394, 0, 0);
}

uint64_t sub_19A64F394()
{
  v43 = v0;
  v2 = *(v0 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_56:
    v4 = sub_19A7ABBE4();
    v5 = *(v0 + 16);
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v2;
  }

  v6 = 0;
  v7 = v2 & 0xC000000000000001;
  v8 = v5 + 32;
  v38 = MEMORY[0x1E69E7CC0];
  v0 = 0x1E69DC000uLL;
  while (v4 != v6)
  {
    if (v7)
    {
      v9 = MEMORY[0x19A906130](v6, v40[2]);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_55;
      }

      v9 = *(v8 + 8 * v6);
    }

    v1 = v9;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    ++v6;
    if (v2)
    {
      MEMORY[0x19A905660]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_19A7AB274();
      }

      sub_19A7AB2A4();
      v38 = v42;
      v6 = v10;
    }
  }

  v42 = v38;
  v11 = 0;
  sub_19A64FB04(&v42);
  v12 = v42;
  if (v42 >> 62)
  {
    v13 = sub_19A7ABBE4();
  }

  else
  {
    v13 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v40;
  v15 = &selRef_entitlementValueForBalloonHost_expectedClass_;
  if (!v13)
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (v12 >> 62)
    {
      goto LABEL_43;
    }

    goto LABEL_25;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x19A906130](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_64;
    }

    v16 = *(v12 + 32);
  }

  v12 = v16;
  v17 = [v16 itk_HEICData];
  sub_19A7A8E34();

  sub_19A7A92B4();
  [v12 size];
  sub_19A7AAC84();
  v18 = objc_allocWithZone(sub_19A7AAD24());
  v1 = sub_19A7AACE4();
  MEMORY[0x19A905660]();
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v20 = v40[3];
    v19 = v40[4];
    sub_19A7AB2A4();
    v21 = v41;
    sub_19A7A92B4();
    *(v19 + v20[5]) = 100;
    *(v19 + v20[6]) = 50;
    *(v19 + v20[7]) = 500000;
    *(v19 + v20[8]) = &unk_1F0DC4AE8;
    v22 = UIImage.stickerRepForRequirements(_:)(v19);
    sub_19A64FC38(v19);
    if (v22)
    {
      sub_19A7AACA4();
      sub_19A7AAD04();
      v11 = v22;
      MEMORY[0x19A905660]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_64:
        sub_19A7AB274();
      }

      sub_19A7AB2A4();

      v21 = v41;
    }

    v23 = sub_19A64D4C0(0, sub_19A787AC0);

    v12 = v42;
    if (v42 >> 62)
    {
LABEL_43:
      v24 = sub_19A7ABBE4();
      if (!v24)
      {
        goto LABEL_44;
      }
    }

    else
    {
LABEL_25:
      v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_44;
      }
    }

    if (v24 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_62:
    sub_19A7AB274();
  }

  v25 = 0;
  v39 = v24;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x19A906130](v25, v12);
    }

    else
    {
      v26 = *(v12 + 8 * v25 + 32);
    }

    v27 = v26;
    [v26 v15[154]];
    if (v28 == 40.0 || v28 == 64.0 || v28 == 96.0 || v28 == 160.0 || v28 == 320.0)
    {
      v29 = v15;
      v30 = [v27 itk_HEICData];
      sub_19A7A8E34();

      v15 = v29;
      sub_19A7A92B4();
      [v27 v29 + 504];
      v31 = objc_allocWithZone(sub_19A7AAD24());
      sub_19A7AACE4();
      MEMORY[0x19A905660]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();

      v14 = v40;
      v21 = v41;
    }

    else
    {
    }

    ++v25;
  }

  while (v39 != v25);
LABEL_44:

  if (v21 >> 62)
  {
    if (sub_19A7ABBE4() >= 1)
    {
      goto LABEL_51;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_51;
  }

  if (qword_1EAFCB538 != -1)
  {
    swift_once();
  }

  v32 = sub_19A7A9384();
  __swift_project_value_buffer(v32, qword_1EAFCCEE0);
  v33 = sub_19A7A9364();
  v34 = sub_19A7AB584();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_19A5EE000, v33, v34, "Empty emoji representations for generated image", v35, 2u);
    MEMORY[0x19A907A30](v35, -1, -1);
  }

  v21 = 0;
LABEL_51:

  v36 = v14[1];

  return v36(v21);
}

void sub_19A64FB04(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_19A787AC0(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_19A651464(v4);
  *a1 = v2;
}

unint64_t sub_19A64FB7C()
{
  result = qword_1EAFCCF00;
  if (!qword_1EAFCCF00)
  {
    sub_19A7A9304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCCF00);
  }

  return result;
}

uint64_t sub_19A64FBD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageDataRequirements();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A64FC38(uint64_t a1)
{
  v2 = type metadata accessor for ImageDataRequirements();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A64FC94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A6955C0(a2, a3);
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
      sub_19A696520(v16, a4 & 1);
      v11 = sub_19A6955C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_19A7AC0C4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_19A699114();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_19A64FE0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A6955C0(a2, a3);
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
      sub_19A696A88(v16, a4 & 1);
      v11 = sub_19A6955C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_19A7AC0C4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_19A6993E0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_19A64FF84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_19A695730(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_19A699550();
    result = v17;
    goto LABEL_8;
  }

  sub_19A696D2C(v14, a3 & 1);
  result = sub_19A695730(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_19A7AC0C4();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_19A6500CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_19A695774(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_19A6996AC();
      goto LABEL_7;
    }

    sub_19A696F94(v13, a3 & 1);
    v20 = sub_19A695774(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for UIKeyboardEmojiCategoryType(0);
    result = sub_19A7AC0C4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for EmojiKeyboardWaypoint() - 8) + 72) * v10;

    return sub_19A62D8BC(a1, v18);
  }

LABEL_13:

  return sub_19A6511E0(v10, a2, a1, v16);
}

unint64_t sub_19A650218(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_19A6955C0(a1, a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_19A6972C8(v16, a3 & 1);
      result = sub_19A6955C0(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_19A7AC0C4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_19A6998CC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_19A650394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCEF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A650404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCEF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_19A650474(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A6955C0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19A699A34();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19A69756C(v16, a4 & 1);
    v11 = sub_19A6955C0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_19A7AC0C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_19A625DC4(a1, v22);
  }

  else
  {
    sub_19A651274(v11, a2, a3, a1, v21);
  }
}

void sub_19A6505C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19A7A8FF4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_19A6958B4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_19A699D48();
      goto LABEL_7;
    }

    sub_19A697ACC(v17, a3 & 1);
    v24 = sub_19A6958B4(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_19A6512E0(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_19A7AC0C4();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  v22 = *v21;
  *(v21 + 32) = *(a1 + 32);
  v23 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v23;
}

id sub_19A6507A4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_19A695988(a2);
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
      sub_19A697EE4(v13, a3 & 1);
      v8 = sub_19A695988(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_19A5F5028(0, &qword_1EAFCB0E0);
        sub_19A7AC0C4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_19A699FEC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

void sub_19A65091C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19A7A8F64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_19A6957E0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_19A69A14C();
      goto LABEL_7;
    }

    sub_19A69814C(v17, a3 & 1);
    v23 = sub_19A6957E0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_19A6513AC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_19A7AC0C4();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_19A650AE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19A7A8F64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_19A6957E0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_19A69A3C0();
      goto LABEL_7;
    }

    sub_19A698524(v17, a3 & 1);
    v22 = sub_19A6957E0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_19A6513AC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_19A7AC0C4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_19A650CB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A6955C0(a2, a3);
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
      sub_19A698900(v16, a4 & 1);
      v11 = sub_19A6955C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_19A7AC0C4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_19A69A640();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_19A650E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19A6955C0(a2, a3);
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
      sub_19A698BBC(v16, a4 & 1);
      v11 = sub_19A6955C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_19A7AC0C4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_19A69A7C4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_19A651000(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_19A6955C0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_19A6955C0(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_19A7AC0C4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

unint64_t sub_19A651198(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_19A6511E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for EmojiKeyboardWaypoint();
  result = sub_19A62D7FC(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

_OWORD *sub_19A651274(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19A625DC4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_19A6512E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19A7A8FF4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
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

uint64_t sub_19A6513AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19A7A8F64();
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

void sub_19A651464(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_19A7AC004();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_19A5F5028(0, &unk_1EAFCC1A0);
        v6 = sub_19A7AB294();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_19A651674(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_19A651578(0, v2, 1, a1);
  }
}

void sub_19A651578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 size];
      v15 = v14;
      [v13 size];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_19A651674(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_19A67FC80(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_19A651CEC((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_19A67FC80(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_19A67FBF4(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 size];
      v19 = v18;
      [v17 size];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 size];
        v27 = v26;
        [v25 size];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_19A67FD78(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_19A67FD78((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_19A651CEC((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_19A67FC80(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_19A67FBF4(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 size];
    v48 = v47;
    [v46 size];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
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
}

uint64_t sub_19A651CEC(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 size];
        v35 = v34;
        [v33 size];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 size];
        v19 = v18;
        [v17 size];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

void (*sub_19A651FAC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A906130](a2, a3);
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
    return sub_19A65202C;
  }

  __break(1u);
  return result;
}

void (*sub_19A652034(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A906130](a2, a3);
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
    return sub_19A652244;
  }

  __break(1u);
  return result;
}

void sub_19A6520DC()
{
  sub_19A7A9304();
  if (v0 <= 0x3F)
  {
    sub_19A65216C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A65216C()
{
  if (!qword_1EAFCA5B0)
  {
    v0 = sub_19A7AB2B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA5B0);
    }
  }
}

uint64_t (*sub_19A6521BC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A906130](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_19A65223C;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A652248()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCCF18);
  __swift_project_value_buffer(v0, qword_1EAFCCF18);
  return sub_19A7A9374();
}

uint64_t sub_19A65230C()
{
  v1 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A6523A4(char a1)
{
  v3 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_19A652488()
{
  v0 = sub_19A652898();
  v1 = v0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
LABEL_16:
    v2 = sub_19A7ABBE4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x19A906130](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v6 = v9;
            goto LABEL_18;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        if ([v4 isReady])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_19A7ABD64();
          sub_19A7ABD94();
          sub_19A7ABDA4();
          sub_19A7ABD74();
        }

        ++v3;
        if (v5 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v7 = sub_19A7ABBE4();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  return v7 == 0;
}

uint64_t sub_19A652650()
{
  v1 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A6526E8(uint64_t a1)
{
  v3 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A6527E0(uint64_t a1)
{
  v3 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_dataSources;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_19A652898()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  v2 = v1;
  v9 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_16:
    v3 = sub_19A7ABBE4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x19A906130](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v7 = v9;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        if ([v5 isEnabled])
        {
          sub_19A7ABD64();
          sub_19A7ABD94();
          sub_19A7ABDA4();
          sub_19A7ABD74();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v7;
}

id ImageGlyphAggregatingDataSource.__allocating_init(dataSources:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled] = 1;
  *&v3[OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType] = 0;
  *&v3[OBJC_IVAR___STKImageGlyphAggregatingDataSource_dataSources] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ImageGlyphAggregatingDataSource.init(dataSources:)(uint64_t a1)
{
  v1[OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled] = 1;
  *&v1[OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType] = 0;
  *&v1[OBJC_IVAR___STKImageGlyphAggregatingDataSource_dataSources] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ImageGlyphAggregatingDataSource();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_19A652B98(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A906130](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v7 configureWith_];
      swift_unknownObjectRelease();
      ++v6;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(v4 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_19A652D38()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x19A906130](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v5 refresh];
      swift_unknownObjectRelease();
      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

unint64_t sub_19A652F30()
{
  v0 = sub_19A652898();
  v1 = sub_19A652F7C(v0);

  return v1;
}

unint64_t sub_19A652F7C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (v31)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x19A906130](v2, v26);
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        goto LABEL_40;
      }

LABEL_9:
      v6 = [v4 categories];
      type metadata accessor for ImageGlyphCategory(0);
      v7 = sub_19A7AB254();
      swift_unknownObjectRelease();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_19A7ABBE4();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_19A7ABBE4();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v9;
      v5 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (v5)
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_19A7ABBE4();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_19A7ABD04();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_19A7ABBE4();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v34)
          {
            goto LABEL_44;
          }

          v17 = v12 + 8 * v13 + 32;
          v28 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_46;
            }

            sub_19A65C48C();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCFE0);
              v19 = sub_19A652034(v33, i, v7);
              v21 = *v20;
              (v19)(v33, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v32;
          if (v34 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v34);
            v23 = v22 + v34;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v32;
      if (v34 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    if (v2 >= *(v30 + 16))
    {
      goto LABEL_41;
    }

    v4 = *(v29 + 8 * v2);
    isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
    v5 = __OFADD__(v2++, 1);
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_40:
    __break(1u);
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_19A7ABBE4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_19A653338(SEL *a1)
{
  v2 = sub_19A652898();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_19A659B5C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = v16;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A906130](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 *a1];
      swift_unknownObjectRelease();
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_19A659B5C((v10 > 1), v11 + 1, 1);
      }

      ++v6;
      *(v16 + 16) = v11 + 1;
      *(v16 + 8 * v11 + 32) = v9;
    }

    while (v4 != v6);

    v12 = *(v16 + 16);
    if (!v12)
    {
      break;
    }

    while (1)
    {
      a1 = 0;
      v13 = (v7 + 32);
      while (1)
      {
        v14 = *v13++;
        v15 = __OFADD__(a1, v14);
        a1 = (a1 + v14);
        if (v15)
        {
          break;
        }

        if (!--v12)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      v4 = sub_19A7ABBE4();
      if (v4)
      {
        break;
      }

LABEL_18:

      v7 = MEMORY[0x1E69E7CC0];
      v12 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  a1 = 0;
LABEL_20:

  return a1;
}

id sub_19A653508(uint64_t a1, uint64_t a2)
{
  v3 = sub_19A6590E0(a1);
  if (v3)
  {
    v5 = [v3 sectionLayoutForSectionIndex:v4 environment:a2];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
    v7 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, 3);
    v5 = _s10StickerKit25ImageGlyphUIConfigurationC6layout3forSo25NSCollectionLayoutSectionCSo0hI11Environment_p_tF_0();
  }

  return v5;
}

id sub_19A6536AC(uint64_t a1, SEL *a2)
{
  v3 = a1;
  if (sub_19A6532EC() <= a1)
  {
    return 0;
  }

  v4 = sub_19A652898();
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_21:
    v7 = sub_19A7ABBE4();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      goto LABEL_16;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x19A906130](v8, v5);
      if (__OFADD__(v8, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:

        return 0;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = *(v5 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v8, 1))
      {
        goto LABEL_15;
      }
    }

    v10 = [v9 numberOfSections];
    if (v3 < v10)
    {
      break;
    }

    v11 = v10;
    swift_unknownObjectRelease();
    ++v8;
    v12 = __OFSUB__(v3, v11);
    v3 -= v11;
    if (v12)
    {
      goto LABEL_20;
    }
  }

  v14 = [v9 *a2];
  swift_unknownObjectRelease();
  return v14;
}

id sub_19A65382C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF48);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v22 - v5);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - v7);
  v9 = sub_19A7A9064();
  v10 = sub_19A6590E0(v9);
  if (!v10)
  {
    return 0;
  }

  v13 = v11;
  v14 = v12;
  v23 = *(v0 + 64);
  *v6 = v10;
  swift_unknownObjectRetain();
  v15 = sub_19A7A9044();
  MEMORY[0x19A903470](v15, v13);
  swift_unknownObjectRelease();
  *(v6 + v23) = v14;
  sub_19A659B7C(v6, v8);
  v16 = *v8;
  sub_19A659BEC(v8, v3);
  swift_unknownObjectRelease();
  v17 = *(v0 + 48);
  v18 = sub_19A7A9014();
  v19 = sub_19A7A9094();
  (*(*(v19 - 8) + 8))(&v3[v17], v19);
  v20 = [v16 itemAtIndexPath_];

  sub_19A659C5C(v8);
  return v20;
}

uint64_t sub_19A653B0C(uint64_t a1)
{
  v1 = sub_19A6590E0(a1);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = [v1 snapshotIdentifiersInSection_];
  v4 = sub_19A7AB254();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_19A653C3C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF48);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A653CF4, 0, 0);
}

uint64_t sub_19A653CF4()
{
  v1 = sub_19A7A9064();
  v2 = sub_19A6590E0(v1);
  if (v2)
  {
    v5 = v3;
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[21];
    v9 = v0[22];
    v19 = *(v8 + 64);
    *v7 = v2;
    v10 = v4;
    swift_unknownObjectRetain();
    v11 = sub_19A7A9044();
    MEMORY[0x19A903470](v11, v5);
    swift_unknownObjectRelease();
    *(v7 + v19) = v10;
    sub_19A659B7C(v7, v6);
    v12 = *v6;
    sub_19A659BEC(v6, v9);
    swift_unknownObjectRelease();
    v13 = *(v8 + 48);
    v14 = sub_19A7A9014();
    v0[25] = v14;
    v15 = sub_19A7A9094();
    (*(*(v15 - 8) + 8))(v9 + v13, v15);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_19A653F60;
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF50);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19A65C530;
    v0[13] = &block_descriptor_2;
    v0[14] = v16;
    [v12 stickerAtIndexPath:v14 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_19A653F60()
{

  return MEMORY[0x1EEE6DFA0](sub_19A65C520, 0, 0);
}

uint64_t sub_19A6541C8(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_19A7A9094();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_19A7A9024();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_19A65C528;

  return sub_19A653C3C(v7);
}

uint64_t sub_19A6542F4(void *a1)
{
  v2 = sub_19A7669B0();
  v3 = sub_19A659378(v2);
  if (v3)
  {
    v4 = [v3 accessibilityTextForItem_];
    if (v4)
    {
      v5 = v4;
      v6 = sub_19A7AB014();

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAFCB540 != -1)
    {
      swift_once();
    }

    v8 = sub_19A7A9384();
    __swift_project_value_buffer(v8, qword_1EAFCCF18);
    v9 = a1;
    v10 = sub_19A7A9364();
    v11 = sub_19A7AB584();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = [v9 debugDescription];
      v15 = sub_19A7AB014();
      v17 = v16;

      v18 = sub_19A62540C(v15, v17, &v19);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_19A5EE000, v10, v11, "Found no suitable data source for imageGlyph: %s.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x19A907A30](v13, -1, -1);
      MEMORY[0x19A907A30](v12, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_19A654574(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF48);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A65462C, 0, 0);
}

uint64_t sub_19A65462C()
{
  v1 = sub_19A7A9064();
  v2 = sub_19A6590E0(v1);
  if (v2)
  {
    v5 = v3;
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[21];
    v9 = v0[22];
    v19 = *(v8 + 64);
    *v7 = v2;
    v10 = v4;
    swift_unknownObjectRetain();
    v11 = sub_19A7A9044();
    MEMORY[0x19A903470](v11, v5);
    swift_unknownObjectRelease();
    *(v7 + v19) = v10;
    sub_19A659B7C(v7, v6);
    v12 = *v6;
    sub_19A659BEC(v6, v9);
    swift_unknownObjectRelease();
    v13 = *(v8 + 48);
    v14 = sub_19A7A9014();
    v0[25] = v14;
    v15 = sub_19A7A9094();
    (*(*(v15 - 8) + 8))(v9 + v13, v15);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_19A654898;
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0270);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19A65C530;
    v0[13] = &block_descriptor_3;
    v0[14] = v16;
    [v12 imageAtIndexPath:v14 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_19A654898()
{

  return MEMORY[0x1EEE6DFA0](sub_19A654978, 0, 0);
}

uint64_t sub_19A654978()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  sub_19A659C5C(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_19A654A0C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_19A654BF8(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_19A7A9094();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_19A7A9024();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_19A654D24;

  return sub_19A654574(v7);
}

uint64_t sub_19A654D24(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  (*(v5 + 8))(v4, v6);
  (v3)[2](v3, a1);
  _Block_release(v3);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_19A654ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A7A9094();
  v20 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = sub_19A7669B0();
  v11 = sub_19A659378(v10);
  if (v11)
  {
    v13 = v12;
    v14 = [v11 indexPathForItem_];
    if (v14)
    {
      v15 = v14;
      sub_19A7A9024();

      (*(v20 + 32))(v9, v7, v4);
      v16 = sub_19A7A9044();
      result = sub_19A7A9064();
      if (__OFADD__(result, v13))
      {
        __break(1u);
      }

      else
      {
        MEMORY[0x19A903470](v16, result + v13);
        swift_unknownObjectRelease();
        (*(v20 + 8))(v9, v4);
        return (*(v20 + 56))(a2, 0, 1, v4);
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  v18 = *(v20 + 56);

  return v18(a2, 1, 1, v4);
}

uint64_t sub_19A6550F8(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A655118, 0, 0);
}

uint64_t sub_19A655118()
{
  v1 = sub_19A7669B0();
  v2 = sub_19A659378(v1);
  v0[20] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[18];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_19A655290;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF58);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19A6553D4;
    v0[13] = &block_descriptor_6;
    v0[14] = v5;
    [v3 deleteItem:v4 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_19A655290()
{

  return MEMORY[0x1EEE6DFA0](sub_19A655370, 0, 0);
}

uint64_t sub_19A655370()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 168);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19A6553D4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8]();
}

uint64_t sub_19A6555B8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_19A65567C;

  return sub_19A6550F8(v6);
}

uint64_t sub_19A65567C(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_19A6557DC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A655800, 0, 0);
}

uint64_t sub_19A655800()
{
  v1 = sub_19A659224(v0[18]);
  v0[21] = v1;
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = sub_19A659224(v0[19]);
    v0[22] = v5;
    if (v5)
    {
      v7 = v6;
      v8 = [v5 glyphType];
      if (v8 == [v3 glyphType])
      {
        v0[2] = v0;
        v0[7] = v0 + 23;
        v0[3] = sub_19A655A80;
        v9 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF58);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_19A6553D4;
        v0[13] = &block_descriptor_9;
        v0[14] = v9;
        [v3 moveItemFromIndex:v4 toIndex:v7 completionHandler:v0 + 10];

        return MEMORY[0x1EEE6DEC8](v0 + 2);
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EAFCB540 != -1)
  {
    swift_once();
  }

  v10 = sub_19A7A9384();
  __swift_project_value_buffer(v10, qword_1EAFCCF18);
  v11 = sub_19A7A9364();
  v12 = sub_19A7AB584();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_19A5EE000, v11, v12, "Can't move item across different providers", v13, 2u);
    MEMORY[0x19A907A30](v13, -1, -1);
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_19A655A80()
{

  return MEMORY[0x1EEE6DFA0](sub_19A655B60, 0, 0);
}

uint64_t sub_19A655B60()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 184);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19A655D54(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  a4;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_19A655E18;

  return sub_19A6557DC(a1, a2);
}

uint64_t sub_19A655E18(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_19A655F60(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF48);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A656028, 0, 0);
}

uint64_t sub_19A656028()
{
  v1 = sub_19A7A9064();
  v2 = sub_19A6590E0(v1);
  if (v2)
  {
    v5 = v3;
    v6 = v4;
    v7 = v0[24];
    v8 = v0[21];
    v35 = v0[25];
    v9 = *(v8 + 64);
    *v7 = v2;
    swift_unknownObjectRetain();
    v10 = sub_19A7A9044();
    MEMORY[0x19A903470](v10, v5);
    swift_unknownObjectRelease();
    *(v7 + v9) = v6;
    sub_19A659B7C(v7, v35);
    v11 = sub_19A7A9064();
    v12 = sub_19A6590E0(v11);
    v15 = v0[25];
    if (v12)
    {
      v16 = v13;
      v17 = v14;
      v19 = v0[22];
      v18 = v0[23];
      v20 = *(v8 + 64);
      *v19 = v12;
      swift_unknownObjectRetain();
      v21 = sub_19A7A9044();
      MEMORY[0x19A903470](v21, v16);
      swift_unknownObjectRelease();
      *(v19 + v20) = v17;
      sub_19A659B7C(v19, v18);
      v22 = [*v18 glyphType];
      v23 = *v15;
      if (v22 == [v23 glyphType])
      {
        v24 = sub_19A7A9014();
        v0[26] = v24;
        v25 = sub_19A7A9014();
        v0[27] = v25;
        v0[2] = v0;
        v0[7] = v0 + 28;
        v0[3] = sub_19A6563B0;
        v26 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF58);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_19A6553D4;
        v0[13] = &block_descriptor_12;
        v0[14] = v26;
        [v23 moveItemFromIndexPath:v24 toIndexPath:v25 completionHandler:v0 + 10];

        return MEMORY[0x1EEE6DEC8](v0 + 2);
      }

      v28 = v0[25];
      sub_19A659C5C(v0[23]);
      v27 = v28;
    }

    else
    {
      v27 = v0[25];
    }

    sub_19A659C5C(v27);
  }

  if (qword_1EAFCB540 != -1)
  {
    swift_once();
  }

  v29 = sub_19A7A9384();
  __swift_project_value_buffer(v29, qword_1EAFCCF18);
  v30 = sub_19A7A9364();
  v31 = sub_19A7AB584();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_19A5EE000, v30, v31, "Can't move item across different providers", v32, 2u);
    MEMORY[0x19A907A30](v32, -1, -1);
  }

  v33 = v0[1];

  return v33(0);
}

uint64_t sub_19A6563B0()
{

  return MEMORY[0x1EEE6DFA0](sub_19A656490, 0, 0);
}

uint64_t sub_19A656490()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 224);

  sub_19A659C5C(v3);
  sub_19A659C5C(v2);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_19A6566D0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_19A7A9094();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v9 = swift_task_alloc();
  v4[6] = v9;
  v4[7] = _Block_copy(a3);
  sub_19A7A9024();
  sub_19A7A9024();
  a4;
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_19A656828;

  return sub_19A655F60(v9, v8);
}

uint64_t sub_19A656828(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v12 = *v1;

  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  v3[2](v3, a1 & 1);
  _Block_release(v3);

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_19A656A0C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A656A2C, 0, 0);
}

uint64_t sub_19A656A2C()
{
  v1 = sub_19A652898();
  v0[21] = v1;
  if (v1 >> 62)
  {
    v7 = v1;
    v8 = sub_19A7ABBE4();
    v1 = v7;
    v0[22] = v8;
    if (v8)
    {
LABEL_3:
      v3 = v0[21];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A906130](0);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v1);
        }

        v4 = *(v3 + 32);
        swift_unknownObjectRetain();
      }

      v0[23] = v4;
      v0[24] = 1;
      v5 = v0[19];
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_19A656C1C;
      v6 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF50);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_19A65C530;
      v0[13] = &block_descriptor_15;
      v0[14] = v6;
      [v4 stickerForImageGlyph:v5 completionHandler:v0 + 10];
      v1 = (v0 + 2);

      return MEMORY[0x1EEE6DEC8](v1);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[22] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_19A656C1C()
{

  return MEMORY[0x1EEE6DFA0](sub_19A656CFC, 0, 0);
}

uint64_t sub_19A656CFC()
{
  v1 = swift_unknownObjectRelease();
  v2 = v0[18];
  if (!v2)
  {
    v3 = v0[24];
    v4 = v0[21];
    if (v3 != v0[22])
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x19A906130](v0[24]);
        v7 = v1;
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v3 + 32);
        v1 = swift_unknownObjectRetain();
      }

      v0[23] = v7;
      v0[24] = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v8 = v0[19];
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_19A656C1C;
        v9 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF50);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_19A65C530;
        v0[13] = &block_descriptor_15;
        v0[14] = v9;
        [v7 stickerForImageGlyph:v8 completionHandler:v0 + 10];
        v1 = (v0 + 2);

        return MEMORY[0x1EEE6DEC8](v1);
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v1);
    }
  }

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_19A657060(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_19A65C524;

  return sub_19A656A0C(v6);
}

uint64_t sub_19A657124(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A657144, 0, 0);
}

uint64_t sub_19A657144()
{
  v1 = sub_19A652898();
  v0[21] = v1;
  if (v1 >> 62)
  {
    v7 = v1;
    v8 = sub_19A7ABBE4();
    v1 = v7;
    v0[22] = v8;
    if (v8)
    {
LABEL_3:
      v3 = v0[21];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A906130](0);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v1);
        }

        v4 = *(v3 + 32);
        swift_unknownObjectRetain();
      }

      v0[23] = v4;
      v0[24] = 1;
      v5 = v0[19];
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_19A657334;
      v6 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0270);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_19A65C530;
      v0[13] = &block_descriptor_18;
      v0[14] = v6;
      [v4 imageForImageGlyph:v5 completionHandler:v0 + 10];
      v1 = (v0 + 2);

      return MEMORY[0x1EEE6DEC8](v1);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[22] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_19A657334()
{

  return MEMORY[0x1EEE6DFA0](sub_19A657414, 0, 0);
}

uint64_t sub_19A657414()
{
  v1 = swift_unknownObjectRelease();
  v2 = v0[18];
  if (!v2)
  {
    v3 = v0[24];
    v4 = v0[21];
    if (v3 != v0[22])
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x19A906130](v0[24]);
        v7 = v1;
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v3 + 32);
        v1 = swift_unknownObjectRetain();
      }

      v0[23] = v7;
      v0[24] = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v8 = v0[19];
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_19A657334;
        v9 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0270);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_19A65C530;
        v0[13] = &block_descriptor_18;
        v0[14] = v9;
        [v7 imageForImageGlyph:v8 completionHandler:v0 + 10];
        v1 = (v0 + 2);

        return MEMORY[0x1EEE6DEC8](v1);
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v1);
    }
  }

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_19A657778(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_19A65783C;

  return sub_19A657124(v6);
}

uint64_t sub_19A65783C(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_19A6579A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_19A7A9094();
  v20 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1D8))(a1);
  if (v11)
  {
    v13 = v12;
    v14 = [v11 indexPathForCategory_];
    if (v14)
    {
      v15 = v14;
      sub_19A7A9024();

      (*(v20 + 32))(v10, v8, v5);
      v16 = sub_19A7A9044();
      result = sub_19A7A9064();
      if (__OFADD__(result, v13))
      {
        __break(1u);
      }

      else
      {
        MEMORY[0x19A903470](v16, result + v13);
        swift_unknownObjectRelease();
        (*(v20 + 8))(v10, v5);
        return (*(v20 + 56))(a2, 0, 1, v5);
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  v18 = *(v20 + 56);

  return v18(a2, 1, 1, v5);
}

id sub_19A657BFC(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = a3;
  v11 = a1;
  a4(v10);

  v12 = sub_19A7A9094();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_19A7A9014();
    (*(v13 + 8))(v9, v12);
    v15 = v16;
  }

  return v15;
}

uint64_t sub_19A657D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A7A9094();
  v39 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = sub_19A65332C();
  v11 = v39;
  if (v10 <= a1)
  {
LABEL_23:
    v33 = *(v11 + 56);

    return v33(a2, 1, 1, v4);
  }

  else
  {
    v37 = a2;
    v12 = sub_19A652898();
    v13 = v12;
    v38 = v4;
    v35 = v7;
    v36 = v9;
    v14 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
LABEL_29:
      v15 = sub_19A7ABBE4();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v17 = 0;
    while (1)
    {
      if (v15 == v16)
      {
        goto LABEL_17;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x19A906130](v16, v13);
        if (__OFADD__(v16, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:

LABEL_22:
          a2 = v37;
          v4 = v38;
          v11 = v39;
          goto LABEL_23;
        }
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v18 = *(v13 + 8 * v16 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v16, 1))
        {
          goto LABEL_16;
        }
      }

      v19 = [v18 numberOfItems];
      v20 = a1 - v19;
      if (a1 < v19)
      {
        break;
      }

      if (__OFSUB__(a1, v19))
      {
        goto LABEL_27;
      }

      v21 = [v18 numberOfSections];
      swift_unknownObjectRelease();
      ++v16;
      a1 = v20;
      v22 = __OFADD__(v17, v21);
      v17 += v21;
      if (v22)
      {
        goto LABEL_28;
      }
    }

    v23 = [v18 indexPathForItemAtIndex_];
    if (!v23)
    {
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    v24 = v35;
    v25 = v23;
    sub_19A7A9024();

    v26 = v36;
    v27 = v24;
    v28 = v38;
    (*(v39 + 32))(v36, v27, v38);
    v29 = sub_19A7A9044();
    result = sub_19A7A9064();
    v31 = result + v17;
    if (__OFADD__(result, v17))
    {
      __break(1u);
    }

    else
    {
      v32 = v37;
      MEMORY[0x19A903470](v29, v31);
      swift_unknownObjectRelease();
      (*(v39 + 8))(v26, v28);
      return (*(v39 + 56))(v32, 0, 1, v28);
    }
  }

  return result;
}

uint64_t sub_19A658194@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_19A7A9094();
  v20 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = sub_19A659378(a1);
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_19A7AAFE4();
    v15 = [v12 indexPathForIdentifier:v14 ofType:a1];

    if (v15)
    {
      sub_19A7A9024();

      (*(v20 + 32))(v9, v7, v4);
      v16 = sub_19A7A9044();
      result = sub_19A7A9064();
      if (__OFADD__(result, v13))
      {
        __break(1u);
      }

      else
      {
        MEMORY[0x19A903470](v16, result + v13);
        swift_unknownObjectRelease();
        (*(v20 + 8))(v9, v4);
        return (*(v20 + 56))(a2, 0, 1, v4);
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  v18 = *(v20 + 56);

  return v18(a2, 1, 1, v4);
}

id sub_19A658528()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D8))();
  if (result)
  {
    v2 = [result numberOfSections];
    swift_unknownObjectRelease();
    return v2;
  }

  return result;
}

id sub_19A6585A4(uint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8))();
  if (result)
  {
    v4 = [result numberOfItemsInCategory_];
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t sub_19A65883C(uint64_t a1)
{
  v2 = sub_19A659378(a1);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = [v2 categories];
  type metadata accessor for ImageGlyphCategory(0);
  v5 = sub_19A7AB254();

  if (v5 >> 62)
  {
    goto LABEL_37;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_38:
    swift_unknownObjectRelease();
LABEL_42:

    return 0;
  }

  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A906130](0, v5);
      goto LABEL_7;
    }

    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v7 = *(v5 + 32);
LABEL_7:
    v8 = v7;
    swift_unknownObjectRelease();

    v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))(v9);
    v1 = v10;
    if (v10 >> 62)
    {
      v5 = sub_19A7ABBE4();
      if (!v5)
      {
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      v5 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_41;
      }
    }

    v3 = 0;
    v11 = &v8[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
    v12 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType;
    v13 = &v8[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A906130](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v14 = *(v1 + 8 * v3 + 32);
      }

      v15 = v14;
      v16 = *&v14[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title] == *v11 && *&v14[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title + 8] == *(v11 + 1);
      if (!v16 && (sub_19A7AC064() & 1) == 0 || *&v15[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] != *&v8[v12])
      {
LABEL_28:

        goto LABEL_29;
      }

      v17 = *&v15[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName + 8];
      v18 = *(v13 + 1);
      if (v17)
      {
        if (!v18)
        {
          goto LABEL_28;
        }

        if (*&v15[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] == *v13 && v17 == v18)
        {

          return v3;
        }

        v20 = sub_19A7AC064();

        if (v20)
        {
          goto LABEL_33;
        }
      }

      else
      {

        if (!v18)
        {
LABEL_33:

          return v3;
        }
      }

LABEL_29:
      v21 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      ++v3;
      if (v21 == v5)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_19A7ABBE4();
    if (!result)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A658B20(uint64_t a1)
{
  v20[0] = sub_19A7A9094();
  v2 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  v5 = sub_19A7A9064();
  v6 = sub_19A652898();
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_26:
    v21 = v7 & 0xFFFFFFFFFFFFFF8;
    v22 = sub_19A7ABBE4();
  }

  else
  {
    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = 0;
  v10 = (v2 + 8);
  while (1)
  {
    if (v22 == v8)
    {

      return -1;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x19A906130](v8, v7);
      if (__OFADD__(v8, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v8 >= *(v21 + 16))
      {
        goto LABEL_23;
      }

      v2 = *(v7 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v8, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    v11 = sub_19A7A9044();
    MEMORY[0x19A903470](v11, v5);
    v12 = sub_19A7A9014();
    (*v10)(v4, v20[0]);
    v13 = [v2 categoryIndexForIndexPath_];

    if ((v13 & 0x8000000000000000) == 0)
    {
      break;
    }

    v14 = [v2 categories];
    type metadata accessor for ImageGlyphCategory(0);
    v15 = sub_19A7AB254();

    if (v15 >> 62)
    {
      v16 = sub_19A7ABBE4();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = __OFADD__(v9, v16);
    v9 += v16;
    if (v17)
    {
      goto LABEL_24;
    }

    v18 = [v2 numberOfSections];
    swift_unknownObjectRelease();
    ++v8;
    v17 = __OFSUB__(v5, v18);
    v5 -= v18;
    if (v17)
    {
      goto LABEL_25;
    }
  }

  swift_unknownObjectRelease();

  result = v9 + v13;
  if (__OFADD__(v9, v13))
  {
    __break(1u);
  }

  return result;
}

id sub_19A658EB4(uint64_t a1)
{
  v1 = a1;
  if (sub_19A6532EC() <= a1)
  {
    return 0;
  }

  v2 = sub_19A652898();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_16;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A906130](v6, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:

        return 0;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = [v7 numberOfSections];
    if (v1 < v8)
    {
      break;
    }

    v9 = v8;
    swift_unknownObjectRelease();
    ++v6;
    v10 = __OFSUB__(v1, v9);
    v1 -= v9;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  v12 = [v7 glyphType];
  swift_unknownObjectRelease();
  return v12;
}

id sub_19A658FF4(uint64_t a1)
{
  v2 = sub_19A7669B0();
  v3 = sub_19A659378(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 isRestrictedImageGlyph_];
  swift_unknownObjectRelease();
  return v4;
}

void *sub_19A6590E0(uint64_t a1)
{
  v1 = a1;
  if (sub_19A6532EC() <= a1)
  {
    return 0;
  }

  v2 = sub_19A652898();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_24:
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_17;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A906130](v6, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:

        return 0;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v8 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }
    }

    v9 = [v8 numberOfSections];
    if (v1 < v9)
    {
      break;
    }

    v10 = v9;
    swift_unknownObjectRelease();
    v11 = __OFSUB__(v1, v10);
    v1 -= v10;
    if (v11)
    {
      goto LABEL_22;
    }

    ++v6;
    v11 = __OFADD__(v7, v10);
    v7 += v10;
    if (v11)
    {
      goto LABEL_23;
    }
  }

  return v8;
}

void *sub_19A659224(uint64_t a1)
{
  v1 = a1;
  if (sub_19A65332C() <= a1)
  {
    return 0;
  }

  v2 = sub_19A652898();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_24:
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_17;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A906130](v6, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:

        return 0;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v8 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }
    }

    v9 = [v8 numberOfItems];
    v10 = v1 - v9;
    if (v1 < v9)
    {
      break;
    }

    if (__OFSUB__(v1, v9))
    {
      goto LABEL_22;
    }

    v11 = [v8 numberOfSections];
    swift_unknownObjectRelease();
    ++v6;
    v1 = v10;
    v12 = __OFADD__(v7, v11);
    v7 += v11;
    if (v12)
    {
      goto LABEL_23;
    }
  }

  return v8;
}

uint64_t sub_19A659378(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19A652898();
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_57;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      return 0;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x19A906130](v8, v5);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v7 = sub_19A7ABBE4();
        goto LABEL_3;
      }

      v9 = *(v5 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    v10 = [v9 glyphType];
    swift_unknownObjectRelease();
    if (v10 == a1)
    {
      break;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      goto LABEL_54;
    }
  }

  v13 = sub_19A652898();
  v14 = v13;
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  v16 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = *(v15 + 16);
    }

    if (v8)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v17 >= v19)
    {
      goto LABEL_22;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v37 = sub_19A7ABBE4();
  result = sub_19A7ABBE4();
  if (result < 0)
  {
    goto LABEL_73;
  }

  if (v37 >= v8)
  {
    v38 = v8;
  }

  else
  {
    v38 = v37;
  }

  if (v37 < 0)
  {
    v38 = v8;
  }

  if (v8)
  {
    v19 = v38;
  }

  else
  {
    v19 = 0;
  }

  if (sub_19A7ABBE4() < v19)
  {
    goto LABEL_68;
  }

LABEL_22:
  if ((v14 & 0xC000000000000001) != 0)
  {

    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF160);
        sub_19A7ABCE4();
      }
    }
  }

  else
  {
  }

  if (v16)
  {
    a1 = sub_19A7ABE54();
    v22 = v23;
    v21 = v24;
    v26 = v25;

    v19 = v26 >> 1;
  }

  else
  {
    v21 = 0;
    a1 = v14 & 0xFFFFFFFFFFFFFF8;
    v22 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v6 = v19 - v21;
  if (__OFSUB__(v19, v21))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    v12 = MEMORY[0x19A906130](v8, v2);
LABEL_51:

    return v12;
  }

  if (!v6)
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x1E69E7CC0];
    v34 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v34)
    {
LABEL_48:

      result = sub_19A652898();
      v2 = result;
      if ((result & 0xC000000000000001) != 0)
      {
        goto LABEL_70;
      }

      if (v8 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_72;
      }

      v12 = *(result + 8 * v8 + 32);
      swift_unknownObjectRetain();
      goto LABEL_51;
    }

LABEL_43:
    a1 = 0;
    v35 = (v5 + 32);
    while (1)
    {
      v36 = *v35++;
      v11 = __OFADD__(a1, v36);
      a1 += v36;
      if (v11)
      {
        goto LABEL_56;
      }

      if (!--v34)
      {
        goto LABEL_48;
      }
    }
  }

  v40 = MEMORY[0x1E69E7CC0];
  result = sub_19A659B5C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v5 = v40;
    if (v19 <= v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = v19;
    }

    v29 = v28 - v21;
    v30 = (v22 + 8 * v21);
    while (v29)
    {
      v31 = [*v30 numberOfSections];
      v33 = *(v40 + 16);
      v32 = *(v40 + 24);
      if (v33 >= v32 >> 1)
      {
        v39 = v31;
        sub_19A659B5C((v32 > 1), v33 + 1, 1);
        v31 = v39;
      }

      *(v40 + 16) = v33 + 1;
      *(v40 + 8 * v33 + 32) = v31;
      --v29;
      ++v30;
      if (!--v6)
      {
        swift_unknownObjectRelease();
        v34 = *(v40 + 16);
        if (!v34)
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }
    }

    goto LABEL_55;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

id sub_19A659730(uint64_t a1)
{
  v1 = sub_19A652898();
  if (v1 >> 62)
  {
    goto LABEL_48;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_3:
    v3 = 0;
    v4 = 0;
    v5 = (a1 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title);
    v30 = (a1 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName);
    v26 = v1;
    v27 = v1 & 0xC000000000000001;
    v6 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType;
    v23 = v1 + 32;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v2;
    while (1)
    {
      if (v27)
      {
        v1 = MEMORY[0x19A906130](v4, v26);
        v7 = v1;
        v8 = __OFADD__(v4++, 1);
        if (v8)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v4 >= *(v24 + 16))
        {
          goto LABEL_47;
        }

        v7 = *(v23 + 8 * v4);
        v1 = swift_unknownObjectRetain();
        v8 = __OFADD__(v4++, 1);
        if (v8)
        {
          goto LABEL_45;
        }
      }

      v29 = v3;
      v9 = [v7 categories];
      type metadata accessor for ImageGlyphCategory(0);
      v10 = sub_19A7AB254();

      v28 = v7;
      if (v10 >> 62)
      {
        break;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_12;
      }

LABEL_37:

      v20 = [v28 numberOfSections];
      v1 = swift_unknownObjectRelease();
      v3 += v20;
      if (__OFADD__(v29, v20))
      {
        goto LABEL_46;
      }

      if (v4 == v25)
      {
        goto LABEL_39;
      }
    }

    v1 = sub_19A7ABBE4();
    v11 = v1;
    if (!v1)
    {
      goto LABEL_37;
    }

LABEL_12:
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x19A906130](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v1 = *(v10 + 8 * v12 + 32);
      }

      v13 = v1;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
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
        v22 = v1;
        v2 = sub_19A7ABBE4();
        v1 = v22;
        if (!v2)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }

      v15 = *(v1 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title) == *v5 && *(v1 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title + 8) == v5[1];
      if (!v15 && (sub_19A7AC064() & 1) == 0 || *&v13[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] != *(a1 + v6))
      {
        break;
      }

      v16 = *&v13[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName + 8];
      v17 = v30[1];
      if (v16)
      {
        if (!v17)
        {
          break;
        }

        if (*&v13[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] == *v30 && v16 == v17)
        {

          return v28;
        }

        v19 = sub_19A7AC064();

        if (v19)
        {
          goto LABEL_40;
        }
      }

      else
      {

        if (!v17)
        {
LABEL_40:

          return v28;
        }
      }

LABEL_14:
      ++v12;
      if (v14 == v11)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_14;
  }

LABEL_39:

  return 0;
}

id ImageGlyphAggregatingDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageGlyphAggregatingDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageGlyphAggregatingDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_19A659B3C(char *a1, int64_t a2, char a3)
{
  result = sub_19A65AF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A659B5C(char *a1, int64_t a2, char a3)
{
  result = sub_19A65B054(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_19A659B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A659BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A659C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ImageGlyphAggregatingDataSource.numberOfItems(in:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x180))();
}

uint64_t dispatch thunk of ImageGlyphAggregatingDataSource.sticker(at:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A65C52C;

  return v7(a1);
}

uint64_t dispatch thunk of ImageGlyphAggregatingDataSource.image(at:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A65A3CC;

  return v7(a1);
}

uint64_t sub_19A65A3CC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}