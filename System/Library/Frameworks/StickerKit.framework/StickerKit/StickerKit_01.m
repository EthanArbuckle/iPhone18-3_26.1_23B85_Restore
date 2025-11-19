uint64_t GPFeatureFlags.hashValue.getter()
{
  sub_19A7AC184();
  MEMORY[0x19A9065D0](0);
  return sub_19A7AC1B4();
}

uint64_t sub_19A6136F0()
{
  sub_19A7AC184();
  MEMORY[0x19A9065D0](0);
  return sub_19A7AC1B4();
}

uint64_t sub_19A613734()
{
  sub_19A7AC184();
  MEMORY[0x19A9065D0](0);
  return sub_19A7AC1B4();
}

unint64_t sub_19A61379C()
{
  result = qword_1EAFCAD58;
  if (!qword_1EAFCAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCAD58);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_19A61383C()
{
  result = qword_1EAFCAF00;
  if (!qword_1EAFCAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCAF00);
  }

  return result;
}

unint64_t sub_19A613894()
{
  result = qword_1EAFCC210;
  if (!qword_1EAFCC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC210);
  }

  return result;
}

unint64_t sub_19A6138EC()
{
  result = qword_1EAFCC218;
  if (!qword_1EAFCC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickersFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickersFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GPFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GPFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id _STKSearchResult.__allocating_init(originalQuery:results:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____STKSearchResult_originalQuery] = a1;
  *&v5[OBJC_IVAR____STKSearchResult_results] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id _STKSearchResult.init(originalQuery:results:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____STKSearchResult_originalQuery] = a1;
  *&v2[OBJC_IVAR____STKSearchResult_results] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for _STKSearchResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id _STKSearchResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19A613EEC()
{
  v1 = OBJC_IVAR____STKSearchObjCFacade_enableEmojiSearch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A613F84(char a1)
{
  v3 = OBJC_IVAR____STKSearchObjCFacade_enableEmojiSearch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A61407C()
{
  v1 = OBJC_IVAR____STKSearchObjCFacade_enableStickerSearch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A614114(char a1)
{
  v3 = OBJC_IVAR____STKSearchObjCFacade_enableStickerSearch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void _STKSearchObjCFacade.init()()
{
  v1 = v0;
  v2 = sub_19A7AAA14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____STKSearchObjCFacade_enableEmojiSearch] = 1;
  v1[OBJC_IVAR____STKSearchObjCFacade_enableStickerSearch] = 1;
  sub_19A7A9374();
  v6 = &v1[OBJC_IVAR____STKSearchObjCFacade_stickerSearchDataSource];
  v7 = type metadata accessor for StickerSearchDataSource();
  v8 = swift_allocObject();
  (*(v3 + 104))(v5, *MEMORY[0x1E69D4638], v2);
  sub_19A7AAAC4();
  swift_allocObject();
  *(v8 + 16) = sub_19A7AAA04();
  v6[3] = v7;
  v6[4] = sub_19A617FDC(&qword_1EAFCC250, type metadata accessor for StickerSearchDataSource);
  *v6 = v8;
  v9 = type metadata accessor for EmojiSearchDataSource();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_19A7A8F74();
  v11 = sub_19A7AAFE4();
  v12 = [objc_opt_self() emojiLocaleDataWithLocaleIdentifier_];

  if (v12)
  {
    v13 = &v1[OBJC_IVAR____STKSearchObjCFacade_emojiSearchDataSource];
    *(v10 + OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_localeData) = v12;
    v13[3] = v9;
    v13[4] = sub_19A617FDC(&qword_1EAFCC260, type metadata accessor for EmojiSearchDataSource);
    *v13 = v10;
    v14 = type metadata accessor for _STKSearchObjCFacade();
    v15.receiver = v1;
    v15.super_class = v14;
    objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for _STKSearchObjCFacade()
{
  result = qword_1EAFCC268;
  if (!qword_1EAFCC268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _STKSearchObjCFacade.search(_:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A614524, 0, 0);
}

uint64_t sub_19A614524()
{
  v1 = swift_allocObject();
  v0[6].i64[0] = v1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = swift_allocObject();
  v0[6].i64[1] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[7].i64[0] = v4;
  v5 = v0[5];
  *(v4 + 16) = v1;
  *(v4 + 24) = vextq_s8(v5, v5, 8uLL);
  *(v4 + 40) = v3;
  v6 = swift_task_alloc();
  v0[7].i64[1] = v6;
  *v6 = v0;
  v6[1] = sub_19A614664;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_19A614664()
{

  if (v0)
  {
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19A6147BC, 0, 0);
  }
}

uint64_t sub_19A6147BC()
{
  receiver = v0[6].receiver;
  v2 = v0[5].receiver;
  swift_beginAccess();
  v3 = receiver[2];
  swift_beginAccess();

  sub_19A616AF8(v4, sub_19A73EA28);
  v5 = v3;
  v6 = type metadata accessor for _STKSearchResult();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____STKSearchResult_originalQuery] = v2;
  *&v7[OBJC_IVAR____STKSearchResult_results] = v5;
  v0[4].receiver = v7;
  v0[4].super_class = v6;
  v8 = v2;
  v9 = objc_msgSendSuper2(v0 + 4, sel_init);

  super_class = v0->super_class;

  return super_class(v9);
}

uint64_t sub_19A6148F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A614998, 0, 0);
}

uint64_t sub_19A614998()
{
  v1 = v0[7];
  v15 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_19A7AB394();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;
  v7[6] = v3;

  v8 = v2;
  v9 = v3;
  sub_19A614EA8(v1, &unk_19A7B6FB0, v7);
  sub_19A5F2B54(v1, &unk_1EAFCD690);
  v6(v1, 1, 1, v5);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v15;
  v10[5] = v8;
  v10[6] = v9;
  v11 = v8;
  v12 = v9;

  sub_19A614EA8(v1, &unk_19A7B6FC0, v10);
  sub_19A5F2B54(v1, &unk_1EAFCD690);

  v13 = v0[1];

  return v13();
}

uint64_t sub_19A614B70(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_19A60FB98;

  return sub_19A6148F4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_19A614C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_19A614CD8;

  return sub_19A615D80(a6);
}

uint64_t sub_19A614CD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_19A614E24, 0, 0);
  }
}

uint64_t sub_19A614E24()
{
  v1 = v0[7];
  v2 = v0[5];
  swift_beginAccess();
  *(v2 + 16) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A614EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_19A60F0CC(a1, v18 - v8, &unk_1EAFCD690);
  v10 = sub_19A7AB394();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_19A5F2B54(v9, &unk_1EAFCD690);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_19A7AB2E4();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19A7AB384();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_19A615098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_19A60F0CC(a1, v18 - v8, &unk_1EAFCD690);
  v10 = sub_19A7AB394();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_19A5F2B54(v9, &unk_1EAFCD690);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_19A7AB2E4();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19A7AB384();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF210);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_19A615294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19A6152B8, 0, 0);
}

uint64_t sub_19A6152B8()
{
  v1 = v0[11];
  v2 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v4 = v0[10];
    v3 = v0[11];
    v5 = swift_allocObject();
    v0[12] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = v4;
    v7 = v3;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF210);
    v9 = swift_task_alloc();
    v0[13] = v9;
    v9[2] = &unk_19A7B6FD0;
    v9[3] = v5;
    v9[4] = 190000000;
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_19A615494;

    return MEMORY[0x1EEE6DD58](v0 + 8, v8, v8, 0, 0, &unk_19A7B6FE8, v9, v8);
  }

  else
  {
    v11 = v0[9];
    swift_beginAccess();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_19A615494()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_19A615644;
  }

  else
  {

    *(v2 + 128) = *(v2 + 64);
    v3 = sub_19A6155C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A6155C0()
{
  v1 = v0[16];
  v2 = v0[9];
  swift_beginAccess();
  *(v2 + 16) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A615644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A615838(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_19A6158FC;

  return _STKSearchObjCFacade.search(_:)(v6);
}

uint64_t sub_19A6158FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_19A7A8D24();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_19A615AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A615AD8, 0, 0);
}

uint64_t sub_19A615AD8()
{
  v1 = (v0[3] + OBJC_IVAR____STKSearchObjCFacade_stickerSearchDataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_19A615C10;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_19A615C10(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_19A615D5C, 0, 0);
  }
}

uint64_t sub_19A615D80(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = sub_19A7A9094();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v2[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A615EBC, 0, 0);
}

uint64_t sub_19A615EBC()
{
  v1 = v0[38];
  v2 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = (v0[39] + OBJC_IVAR____STKSearchObjCFacade_emojiSearchDataSource);
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v11 = (*(v5 + 24) + **(v5 + 24));
    v6 = swift_task_alloc();
    v0[46] = v6;
    *v6 = v0;
    v6[1] = sub_19A616088;
    v7 = v0[38];

    return v11(v7, v4, v5);
  }

  else
  {

    v9 = v0[1];
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_19A616088(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19A6161EC, 0, 0);
  }
}

uint64_t sub_19A6161EC()
{
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 328);
    v51 = MEMORY[0x1E69E7CC0];
    sub_19A7ABD84();
    v4 = v1 + 32;
    v44 = (v3 + 48);
    v45 = (v3 + 56);
    v40 = (v3 + 8);
    v41 = (v3 + 32);
    v43 = sub_19A7A8F64();
    v50 = v2 - 1;
    v42 = *(*(v43 - 8) + 56);
    v39 = xmmword_19A7B6C20;
    while (1)
    {
      v5 = *(v0 + 352);
      v6 = *(v0 + 360);
      v7 = *(v0 + 344);
      v8 = *(v0 + 320);
      v10 = *(v4 + 16);
      v9 = *(v4 + 32);
      v11 = *(v4 + 48);
      v46 = v4;
      *(v0 + 72) = *v4;
      *(v0 + 120) = v11;
      *(v0 + 104) = v9;
      *(v0 + 88) = v10;
      v42(v6, 1, 1, v43);
      v12 = *(v0 + 104);
      v13 = *(v0 + 112);
      v14 = *(v0 + 120);
      v47 = *(v0 + 88);
      v48 = *(v0 + 72);
      (*v45)(v5, 1, 1, v8);
      v49 = type metadata accessor for ImageGlyph(0);
      v15 = objc_allocWithZone(v49);
      v16 = &v15[OBJC_IVAR___STKImageGlyph_optionalData];
      *v16 = 0;
      v16[1] = 0xE000000000000000;
      *&v15[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
      v15[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
      sub_19A60F0CC(v6, &v15[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
      *&v15[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
      *&v15[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
      v17 = &v15[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
      *v17 = 0;
      v17[1] = 0;
      v18 = &v15[OBJC_IVAR___STKImageGlyph_poseIdentifier];
      *v18 = 0;
      v18[1] = 0;
      v19 = &v15[OBJC_IVAR___STKImageGlyph_emoji];
      *v19 = v48;
      *(v19 + 1) = v47;
      *(v19 + 4) = v12;
      *(v19 + 5) = v13;
      *(v19 + 24) = v14;
      v52 = *(v0 + 72);
      v53 = *(v0 + 88);
      v54 = *(v0 + 104);
      v55 = *(v0 + 120);
      sub_19A60F01C(v0 + 72, v0 + 128);
      sub_19A60F01C(v0 + 72, v0 + 184);
      sub_19A7862FC(0);
      v21 = v20;
      v23 = v22;
      *(v0 + 16) = v52;
      *(v0 + 32) = v53;
      *(v0 + 48) = v54;
      *(v0 + 64) = v55;
      sub_19A60F078(v0 + 16);
      v24 = &v15[OBJC_IVAR___STKImageGlyph_emojiString];
      *v24 = v21;
      v24[1] = v23;
      sub_19A60F0CC(v5, v7, &unk_1EAFCF110);
      if ((*v44)(v7, 1, v8) == 1)
      {
        sub_19A5F2B54(*(v0 + 344), &unk_1EAFCF110);
      }

      else
      {
        v25 = *(v0 + 336);
        v26 = *(v0 + 320);
        (*v41)(v25, *(v0 + 344), v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
        v27 = swift_allocObject();
        *(v27 + 16) = v39;
        *(v0 + 280) = sub_19A7A9064();
        *(v27 + 32) = sub_19A7AC024();
        *(v27 + 40) = v28;
        *(v0 + 288) = sub_19A7A9044();
        *(v27 + 48) = sub_19A7AC024();
        *(v27 + 56) = v29;
        *(v0 + 296) = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
        sub_19A6179D4();
        v30 = sub_19A7AAF94();
        v32 = v31;

        (*v40)(v25, v26);
        *v16 = v30;
        v16[1] = v32;
      }

      v33 = *(v0 + 352);
      v34 = *(v0 + 360);
      v35 = &v15[OBJC_IVAR___STKImageGlyph_character];
      *v35 = 0;
      v35[1] = 0;
      *(v0 + 264) = v15;
      *(v0 + 272) = v49;
      objc_msgSendSuper2((v0 + 264), sel_init, v39);
      sub_19A5F2B54(v33, &unk_1EAFCF110);
      sub_19A5F2B54(v34, &qword_1EAFCD800);
      sub_19A7ABD64();
      sub_19A7ABD94();
      sub_19A7ABDA4();
      sub_19A7ABD74();
      if (!v50)
      {
        break;
      }

      --v50;
      v4 = v46 + 56;
    }

    v36 = v51;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v0 + 8);

  return v37(v36);
}

id sub_19A61674C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_19A6168E8()
{
  result = sub_19A7A9384();
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

uint64_t sub_19A616AF8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_19A7ABBE4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_19A617244(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_19A616BF0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_19A76BE6C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19A616D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A616DA0, 0, 0);
}

uint64_t sub_19A616DA0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_19A7AB394();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  sub_19A615098(v1, &unk_19A7B7000, v7);
  sub_19A5F2B54(v1, &unk_1EAFCD690);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  sub_19A615098(v1, &unk_19A7B7010, v8);
  sub_19A5F2B54(v1, &unk_1EAFCD690);
  v9 = swift_task_alloc();
  v0[8] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC278);
  *v9 = v0;
  v9[1] = sub_19A616F9C;

  return MEMORY[0x1EEE6DAC8](v0 + 2, 0, 0, v10);
}

uint64_t sub_19A616F9C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19A617180;
  }

  else
  {
    v2 = sub_19A6170B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_19A6170B0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECA0);
    sub_19A7AB404();

    v2 = *(v0 + 8);

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19A617180()
{
  swift_willThrow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECA0);
  sub_19A7AB404();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A617244(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_19A7ABBE4();
LABEL_9:
  result = sub_19A7ABD04();
  *v1 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19A617328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_19A6173E0;

  return sub_19A616D00(a2, a3, a4, a5);
}

uint64_t sub_19A6173E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_19A6174F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_19A6175E4;

  return v7(v4 + 16);
}

uint64_t sub_19A6175E4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_19A617718;
  }

  else
  {
    v2 = sub_19A6176F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A617730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_19A6177C8;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_19A6177C8()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19A6178FC, 0, 0);
  }
}

uint64_t sub_19A6178FC()
{
  v1 = *(v0 + 24);
  sub_19A7AB3D4();
  if (!v1)
  {
    sub_19A7AB314();
    sub_19A617FDC(&qword_1EAFCC280, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_19A7AAF24();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_19A6179D4()
{
  result = qword_1ED8B2080;
  if (!qword_1ED8B2080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B2080);
  }

  return result;
}

uint64_t sub_19A617A38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60F860;

  return sub_19A615838(v2, v3, v4);
}

uint64_t sub_19A617AEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A614C38(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A617C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A615294(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A617CCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19A60F860;

  return sub_19A615AB4(a1, v5, v4);
}

uint64_t sub_19A617D78(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_19A60FB98;

  return sub_19A617328(a1, a2, v6, v7, v8);
}

uint64_t sub_19A617E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A6174F0(a1, v4, v5, v6);
}

uint64_t sub_19A617F14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A617730(a1, v4, v5, v6);
}

uint64_t sub_19A617FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A618030(uint64_t a1, int a2)
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

uint64_t sub_19A618078(uint64_t result, int a2, int a3)
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

uint64_t sub_19A6180F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v59 = sub_19A7AA384();
  v3 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2A0) - 8;
  v6 = MEMORY[0x1EEE9AC00](v63);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2A8);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - v14;
  v16 = *(sub_19A7A9A24() + 20);
  v61 = *MEMORY[0x1E697F468];
  v17 = v61;
  v60 = sub_19A7A9BC4();
  v18 = *(v60 - 8);
  v19 = *(v18 + 104);
  v62 = v18 + 104;
  v19(&v15[v16], v17, v60);
  __asm { FMOV            V0.2D, #30.0 }

  *v15 = _Q0;
  v25 = a1[3];
  KeyPath = swift_getKeyPath();
  v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2B0) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = *a1;

  LODWORD(v25) = sub_19A7A9E44();
  sub_19A7AA744();
  v30 = v29;
  v32 = v31;
  v33 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF390) + 36)];
  *v33 = 0x6867696C68676968;
  *(v33 + 1) = 0xE900000000000074;
  *(v33 + 2) = v28;
  *(v33 + 6) = v25;
  *(v33 + 4) = v30;
  *(v33 + 5) = v32;
  v33[48] = 1;
  sub_19A7AA654();
  sub_19A7A9864();
  v34 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2B8) + 36)];
  v35 = v68;
  *v34 = v67;
  *(v34 + 1) = v35;
  *(v34 + 2) = v69;
  v15[*(v11 + 44)] = 0;
  v36 = v59;
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v59);
  v37 = sub_19A7AA3C4();
  (*(v3 + 8))(v5, v36);
  v70 = v37;
  LOWORD(v71) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2C0);
  sub_19A618760();
  sub_19A7AA0C4();

  LOBYTE(v5) = sub_19A7A9F04();
  sub_19A7A9754();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2C8) + 36)];
  *v46 = v5;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  sub_19A7AA654();
  sub_19A7A9864();
  v47 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2D0) + 36)];
  v48 = v71;
  *v47 = v70;
  *(v47 + 1) = v48;
  *(v47 + 2) = v72;
  v49 = a1[2];
  v50 = swift_getKeyPath();
  v51 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2D8) + 36)];
  *v51 = v50;
  v51[1] = v49;
  v52 = &v9[*(v63 + 44)];
  v19(v52, v61, v60);
  *&v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2E0) + 36)] = 256;
  v53 = v64;
  sub_19A6187E4(v15, v64);
  v54 = v65;
  sub_19A5F6AC8(v9, v65);
  v55 = v66;
  sub_19A6187E4(v53, v66);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2E8);
  sub_19A5F6AC8(v54, v55 + *(v56 + 48));

  sub_19A5F6B38(v9);
  sub_19A618854(v15);
  sub_19A5F6B38(v54);
  return sub_19A618854(v53);
}

double sub_19A618680@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v12[0] = *v1;
  v12[1] = v3;
  v12[2] = v1[2];
  *a1 = sub_19A7A9BA4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC288) + 44));
  *v4 = sub_19A7AA654();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC290);
  sub_19A6180F0(v12, v4 + *(v6 + 44));
  sub_19A7AA654();
  sub_19A7A9864();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC298) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

unint64_t sub_19A618760()
{
  result = qword_1EAFD0040;
  if (!qword_1EAFD0040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0040);
  }

  return result;
}

uint64_t sub_19A6187E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A618854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A6188BC()
{
  result = qword_1EAFCC2F0;
  if (!qword_1EAFCC2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC298);
    sub_19A618948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC2F0);
  }

  return result;
}

unint64_t sub_19A618948()
{
  result = qword_1EAFCC2F8;
  if (!qword_1EAFCC2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAFCC300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC2F8);
  }

  return result;
}

uint64_t sub_19A6189AC(uint64_t result)
{
  v2 = v1[7];
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v1[8] = 0;
  swift_unknownObjectRelease();
  v1[9] = 0;
  swift_unknownObjectRelease();
  v1[10] = 0;

  return swift_unknownObjectRelease();
}

void *sub_19A618A0C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v34[4] = *MEMORY[0x1E69E9840];
  *(v3 + 48) = 1022739087;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 96) = 125;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v8 = objc_allocWithZone(MEMORY[0x1E6974148]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = [v8 init];
  v10 = sub_19A7AAFE4();
  v11 = [a2 newFunctionWithName_];

  [v9 setVertexFunction_];
  swift_unknownObjectRelease();
  v12 = sub_19A7AAFE4();
  v13 = [a2 newFunctionWithName_];

  [v9 setFragmentFunction_];
  swift_unknownObjectRelease();
  v14 = [v9 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
    __break(1u);
  }

  [v15 setPixelFormat_];

  [v9 setPipelineLibrary_];
  v32 = 0;
  v16 = [a1 newRenderPipelineStateWithDescriptor:v9 error:&v32];
  v17 = v16;
  v18 = v32;
  if (!v16)
  {
    v29 = v32;
    sub_19A7A8D34();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_8:
    swift_unknownObjectRelease();

    v30 = 0;
    goto LABEL_9;
  }

  v4[11] = v16;
  __asm { FMOV            V8.2S, #1.0 }

  v34[0] = 0x3F80000000000000;
  *&v34[1] = _D8;
  v34[2] = 0;
  v34[3] = 1065353216;
  v24 = v18;
  v25 = [a1 newBufferWithBytes:v34 length:32 options:0];
  if (!v25)
  {
    type metadata accessor for MTLCommandBufferError(0);
    sub_19A783A74(MEMORY[0x1E69E7CC0]);
    sub_19A619484();
    sub_19A7A8D14();
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v4[5] = v25;
  __asm { FMOV            V0.2S, #-1.0 }

  *v33 = _D0;
  *&v33[1] = -_D8;
  *&v33[2] = -_D0;
  *&v33[3] = _D8;
  v27 = [a1 newBufferWithBytes:v33 length:32 options:0];
  if (v27)
  {
    v28 = v27;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v4[4] = v28;
    return v4;
  }

  type metadata accessor for MTLCommandBufferError(0);
  v30 = 1;
  sub_19A783A74(MEMORY[0x1E69E7CC0]);
  sub_19A619484();
  sub_19A7A8D14();
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_9:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v30)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v17)
  {
    swift_unknownObjectRelease();
  }

  type metadata accessor for StickerShaderNormalGenerator();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_19A618E64(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 56);
  if (v2)
  {
    v4 = *(v1 + 64);
    swift_unknownObjectRetain();
    if ((v4 || (v5 = [v2 width], v6 = objc_msgSend(v2, sel_height), v7 = objc_opt_self(), v8 = objc_msgSend(v7, sel_texture2DDescriptorWithPixelFormat_width_height_mipmapped_, 55, v5, v6, 0), objc_msgSend(v8, sel_setUsage_, 7), objc_msgSend(v8, sel_setStorageMode_, 2), v9 = *(v1 + 16), *(v1 + 64) = objc_msgSend(v9, sel_newTextureWithDescriptor_, v8), swift_unknownObjectRelease(), *(v1 + 72) = objc_msgSend(v9, sel_newTextureWithDescriptor_, v8), swift_unknownObjectRelease(), v10 = objc_msgSend(v7, sel_texture2DDescriptorWithPixelFormat_width_height_mipmapped_, *(v1 + 96), v5, v6, 0), objc_msgSend(v10, sel_setUsage_, 7), objc_msgSend(v10, sel_setStorageMode_, 2), v11 = objc_msgSend(v9, sel_newTextureWithDescriptor_, v10), v8, v10, *(v1 + 80) = v11, swift_unknownObjectRelease(), (v4 = *(v1 + 64)) != 0)) && (v12 = *(v1 + 72)) != 0)
    {
      v13 = *(v1 + 80);
      if (v13)
      {
        v14 = *(v1 + 16);
        v15 = objc_allocWithZone(MEMORY[0x1E6974608]);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v16 = [v15 initWithDevice_];
        v17 = *(v1 + 48);
        v18 = v17 * [v13 width];
        if (v18 >= 1.0)
        {
          v19 = objc_allocWithZone(MEMORY[0x1E69745C0]);
          *&v20 = v18;
          v21 = [v19 initWithDevice:v14 sigma:v20];
          [v21 setEdgeMode_];
          [v21 encodeToCommandBuffer:a1 sourceTexture:v2 destinationTexture:v4];
          [v16 encodeToCommandBuffer:a1 primaryTexture:v4 secondaryTexture:v2 destinationTexture:v12];

          for (i = v18 * 0.5; i >= 1.0; i = i * 0.5)
          {
            v23 = objc_allocWithZone(MEMORY[0x1E69745C0]);
            *&v24 = i;
            v25 = [v23 initWithDevice:v14 sigma:v24];
            [v25 setEdgeMode_];
            [v25 encodeToCommandBuffer:a1 sourceTexture:v12 destinationTexture:v4];
            [v16 encodeToCommandBuffer:a1 primaryTexture:v4 secondaryTexture:v2 destinationTexture:v12];
          }
        }

        v26 = *(v1 + 48);
        v27 = v26 * [v13 width];
        v36 = 1.0 / [v13 width];
        v28 = [v13 height];
        *&v29 = v36;
        *(&v29 + 1) = 1.0 / v28;
        v37 = v29;
        v38 = v27;
        v30 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
        v31 = [v30 colorAttachments];
        v32 = [v31 objectAtIndexedSubscript_];

        if (v32)
        {
          swift_unknownObjectRetain();
          [v32 setTexture_];

          v33 = [a1 renderCommandEncoderWithDescriptor_];
          if (v33)
          {
            v34 = v33;
            [v33 setRenderPipelineState_];
            [v34 setVertexBuffer:*(v1 + 32) offset:0 atIndex:0];
            [v34 setVertexBuffer:*(v1 + 40) offset:0 atIndex:1];
            if (v18 < 1.0)
            {
              v35 = v2;
            }

            else
            {
              v35 = v12;
            }

            [v34 setFragmentTexture:v35 atIndex:0];
            [v34 setFragmentBytes:&v37 length:16 atIndex:0];
            [v34 drawPrimitives:4 vertexStart:0 vertexCount:4];
            [v34 endEncoding];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_19A6193CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_19A61942C()
{
  sub_19A6193CC();

  return swift_deallocClassInstance();
}

unint64_t sub_19A619484()
{
  result = qword_1EAFCC4F0;
  if (!qword_1EAFCC4F0)
  {
    type metadata accessor for MTLCommandBufferError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC4F0);
  }

  return result;
}

void *sub_19A6194DC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v34[4] = *MEMORY[0x1E69E9840];
  *(v3 + 48) = 0;
  __asm { FMOV            V8.2S, #1.0 }

  *(v3 + 56) = _D8;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 64) = 0;
  *(v3 + 96) = xmmword_19A7B7260;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v13 = objc_allocWithZone(MEMORY[0x1E6974148]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = [v13 init];
  v15 = sub_19A7AAFE4();
  v16 = [a2 newFunctionWithName_];

  [v14 setVertexFunction_];
  swift_unknownObjectRelease();
  v17 = sub_19A7AAFE4();
  v18 = [a2 newFunctionWithName_];

  [v14 setFragmentFunction_];
  swift_unknownObjectRelease();
  v19 = [v14 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
    __break(1u);
  }

  [v20 setPixelFormat_];

  [v14 setPipelineLibrary_];
  v32 = 0;
  v21 = [a1 newRenderPipelineStateWithDescriptor:v14 error:&v32];
  v22 = v21;
  v23 = v32;
  if (!v21)
  {
    v29 = v32;
    sub_19A7A8D34();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_8:
    swift_unknownObjectRelease();

    v30 = 0;
    goto LABEL_9;
  }

  v4[11] = v21;
  v34[0] = 0x3F80000000000000;
  *&v34[1] = _D8;
  v34[2] = 0;
  v34[3] = 1065353216;
  v24 = v23;
  v25 = [a1 newBufferWithBytes:v34 length:32 options:0];
  if (!v25)
  {
    type metadata accessor for MTLCommandBufferError(0);
    sub_19A783A74(MEMORY[0x1E69E7CC0]);
    sub_19A619484();
    sub_19A7A8D14();
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v4[5] = v25;
  __asm { FMOV            V0.2S, #-1.0 }

  *v33 = _D0;
  *&v33[1] = -_D8;
  *&v33[2] = -_D0;
  *&v33[3] = _D8;
  v27 = [a1 newBufferWithBytes:v33 length:32 options:0];
  if (v27)
  {
    v28 = v27;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v4[4] = v28;
    return v4;
  }

  type metadata accessor for MTLCommandBufferError(0);
  v30 = 1;
  sub_19A783A74(MEMORY[0x1E69E7CC0]);
  sub_19A619484();
  sub_19A7A8D14();
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_9:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v30)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v22)
  {
    swift_unknownObjectRelease();
  }

  type metadata accessor for StickerShaderAlphaToLumaGenerator();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_19A619920(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  if (v2)
  {
    v4 = *(v1 + 80);
    if (v4)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v5 = objc_opt_self();
      v6 = *(v1 + 104);
      v7 = *(v1 + 64);
      v8 = *(v1 + 72);
      swift_unknownObjectRetain();
      v9 = [v5 texture2DDescriptorWithPixelFormat:v6 width:v7 height:v8 mipmapped:0];
      [v9 setUsage_];
      [v9 setStorageMode_];
      v10 = [*(v1 + 16) newTextureWithDescriptor_];

      *(v1 + 80) = v10;
      swift_unknownObjectRelease();
      v4 = *(v1 + 80);
      if (!v4)
      {
LABEL_10:
        swift_unknownObjectRelease();
        return;
      }
    }

    v11 = objc_allocWithZone(MEMORY[0x1E6974128]);
    swift_unknownObjectRetain();
    v12 = [v11 init];
    v13 = [v12 colorAttachments];
    v14 = [v13 objectAtIndexedSubscript_];

    if (v14)
    {
      swift_unknownObjectRetain();
      [v14 setTexture_];

      v15 = [a1 renderCommandEncoderWithDescriptor_];
      if (v15)
      {
        v16 = *(v1 + 56);
        v18 = 1061158912;
        v19 = v16;
        v17 = v15;
        [v15 setRenderPipelineState_];
        [v17 setVertexBuffer:*(v1 + 32) offset:0 atIndex:0];
        [v17 setVertexBuffer:*(v1 + 40) offset:0 atIndex:1];
        [v17 setFragmentTexture:v2 atIndex:0];
        [v17 setFragmentBytes:&v18 length:16 atIndex:0];
        [v17 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v17 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    __break(1u);
  }
}

uint64_t sub_19A619BDC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_19A619C2C()
{
  sub_19A619BDC();

  return swift_deallocClassInstance();
}

void *sub_19A619C84(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v34[4] = *MEMORY[0x1E69E9840];
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  __asm { FMOV            V8.2S, #1.0 }

  *(v3 + 64) = _D8;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 112) = xmmword_19A7B7330;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v13 = objc_allocWithZone(MEMORY[0x1E6974148]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = [v13 init];
  v15 = sub_19A7AAFE4();
  v16 = [a2 newFunctionWithName_];

  [v14 setVertexFunction_];
  swift_unknownObjectRelease();
  v17 = sub_19A7AAFE4();
  v18 = [a2 newFunctionWithName_];

  [v14 setFragmentFunction_];
  swift_unknownObjectRelease();
  v19 = [v14 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
    __break(1u);
  }

  [v20 setPixelFormat_];

  [v14 setPipelineLibrary_];
  v32 = 0;
  v21 = [a1 newRenderPipelineStateWithDescriptor:v14 error:&v32];
  v22 = v21;
  v23 = v32;
  if (!v21)
  {
    v29 = v32;
    sub_19A7A8D34();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_8:
    swift_unknownObjectRelease();

    v30 = 0;
    goto LABEL_9;
  }

  v4[13] = v21;
  v34[0] = 0x3F80000000000000;
  *&v34[1] = _D8;
  v34[2] = 0;
  v34[3] = 1065353216;
  v24 = v23;
  v25 = [a1 newBufferWithBytes:v34 length:32 options:0];
  if (!v25)
  {
    type metadata accessor for MTLCommandBufferError(0);
    sub_19A783A74(MEMORY[0x1E69E7CC0]);
    sub_19A619484();
    sub_19A7A8D14();
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v4[5] = v25;
  __asm { FMOV            V0.2S, #-1.0 }

  *v33 = _D0;
  *&v33[1] = -_D8;
  *&v33[2] = -_D0;
  *&v33[3] = _D8;
  v27 = [a1 newBufferWithBytes:v33 length:32 options:0];
  if (v27)
  {
    v28 = v27;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v4[4] = v28;
    return v4;
  }

  type metadata accessor for MTLCommandBufferError(0);
  v30 = 1;
  sub_19A783A74(MEMORY[0x1E69E7CC0]);
  sub_19A619484();
  sub_19A7A8D14();
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_9:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v30)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v22)
  {
    swift_unknownObjectRelease();
  }

  type metadata accessor for StickerShaderStrokeGenerator();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_19A61A0D4()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCC500);
  __swift_project_value_buffer(v0, qword_1EAFCC500);
  return sub_19A7A9374();
}

void sub_19A61A154(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 96);
    if (v3)
    {
      swift_unknownObjectRetain();
      if ([v3 width] == *(v1 + 72))
      {
        v4 = *(v1 + 96);
        if (v4)
        {
          if ([v4 height] == *(v1 + 80))
          {
            v5 = *(v1 + 96);
            if (v5)
            {
              goto LABEL_7;
            }

            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v9 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 112) width:*(v1 + 72) height:*(v1 + 80) mipmapped:0];
    [v9 setUsage_];
    [v9 setStorageMode_];
    v10 = [*(v1 + 16) newTextureWithDescriptor_];

    *(v1 + 96) = v10;
    swift_unknownObjectRelease();
    v5 = *(v1 + 96);
    if (v5)
    {
LABEL_7:
      v6 = *(v1 + 88);
      if (v6)
      {
        swift_unknownObjectRetain();
        if ([v6 width] == *(v1 + 72))
        {
          v7 = *(v1 + 88);
          if (v7)
          {
            if ([v7 height] == *(v1 + 80))
            {
              v8 = *(v1 + 88);
              if (!v8)
              {
                goto LABEL_35;
              }

              goto LABEL_18;
            }
          }
        }
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v11 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 120) width:*(v1 + 72) height:*(v1 + 80) mipmapped:0];
      [v11 setUsage_];
      [v11 setStorageMode_];
      v12 = [*(v1 + 16) newTextureWithDescriptor_];

      *(v1 + 88) = v12;
      swift_unknownObjectRelease();
      v8 = *(v1 + 88);
      if (!v8)
      {
LABEL_35:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return;
      }

LABEL_18:
      v13 = [swift_unknownObjectRetain() width];
      v14 = [v8 height];
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      v16 = *(v1 + 16);
      v17 = [objc_allocWithZone(MEMORY[0x1E69745B8]) initWithDevice_];
      v18 = [v2 width];
      if (v18 != [v8 width] || (v19 = objc_msgSend(v2, sel_height), v19 != objc_msgSend(v8, sel_height)))
      {
        if (qword_1EAFCB4E0 != -1)
        {
          swift_once();
        }

        v33 = sub_19A7A9384();
        __swift_project_value_buffer(v33, qword_1EAFCC500);
        v34 = sub_19A7A9364();
        v35 = sub_19A7AB584();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_19A5EE000, v34, v35, "Source texture size (maskTexture) does not match destination texture (distanceTexture)", v36, 2u);
          MEMORY[0x19A907A30](v36, -1, -1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      [v17 encodeToCommandBuffer:a1 sourceTexture:v2 destinationTexture:v8];
      v20 = (*(v1 + 52) * v15) / 3.0349;
      v21 = objc_allocWithZone(MEMORY[0x1E69745C0]);
      *&v22 = v20;
      v37 = [v21 initWithDevice:v16 sigma:v22];
      [v37 encodeToCommandBuffer:a1 sourceTexture:v8 destinationTexture:v2];
      v23 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
      v24 = [v23 colorAttachments];
      v25 = [v24 objectAtIndexedSubscript_];

      if (v25)
      {
        [v25 setClearColor_];

        v26 = [v23 colorAttachments];
        v27 = [v26 objectAtIndexedSubscript_];

        if (v27)
        {
          [v27 setLoadAction_];

          v28 = [v23 colorAttachments];
          v29 = [v28 objectAtIndexedSubscript_];

          if (v29)
          {
            swift_unknownObjectRetain();
            [v29 setTexture_];

            v30 = [a1 renderCommandEncoderWithDescriptor_];
            if (v30)
            {
              v31 = *(v1 + 48) * v15;
              v39[0] = v31 + -1.0;
              v39[1] = v31;
              v32 = v30;
              [v30 setRenderPipelineState_];
              [v32 setVertexBuffer:*(v1 + 32) offset:0 atIndex:0];
              [v32 setVertexBuffer:*(v1 + 40) offset:0 atIndex:1];
              [v32 setFragmentTexture:v2 atIndex:0];
              [v32 setFragmentBytes:v39 length:8 atIndex:0];
              [v32 drawPrimitives:4 vertexStart:0 vertexCount:4];
              [v32 endEncoding];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_29;
          }

LABEL_39:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_29:
    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A61A7D0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_19A61A828()
{
  sub_19A61A7D0();

  return swift_deallocClassInstance();
}

uint64_t sub_19A61A880(uint64_t result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }

LABEL_5:
    *(v1 + 40) = 0;
    return swift_unknownObjectRelease();
  }

  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_19A61A8A4(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 40);
  swift_unknownObjectRetain();
  if (v4 || (v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 56) width:objc_msgSend(v2 height:sel_width) mipmapped:objc_msgSend(v2, sel_height), 0], objc_msgSend(v5, sel_setUsage_, 7), objc_msgSend(v5, sel_setStorageMode_, 2), v6 = objc_msgSend(*(v1 + 16), sel_newTextureWithDescriptor_, v5), v5, *(v1 + 40) = v6, swift_unknownObjectRelease(), (v4 = *(v1 + 40)) != 0))
  {
    v7 = *(v1 + 24);
    v8 = [swift_unknownObjectRetain() width];
    v9 = *(v1 + 48);
    if (v9)
    {
      goto LABEL_8;
    }

    v10 = (v7 * v8) / 3.0349;
    v11 = *(v1 + 16);
    v12 = objc_allocWithZone(MEMORY[0x1E69745C0]);
    *&v13 = v10;
    v14 = [v12 initWithDevice:v11 sigma:v13];
    v15 = *(v1 + 48);
    *(v1 + 48) = v14;
    v16 = v14;

    if (v16)
    {
      [v16 setEdgeMode_];
    }

    v9 = *(v1 + 48);
    if (v9)
    {
LABEL_8:
      [v9 encodeToCommandBuffer:a1 sourceTexture:v2 destinationTexture:v4];
    }

    else
    {
      swift_unknownObjectRelease();
      v4 = 0;
    }
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_19A61AA78()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_19A61AB24()
{
  *&xmmword_1EAFDD530 = 0;
  *(&xmmword_1EAFDD530 + 1) = 0xE000000000000000;
  qword_1EAFDD540 = 0;
  unk_1EAFDD548 = 0xE000000000000000;
  xmmword_1EAFDD550 = 0uLL;
  word_1EAFDD560 = 254;
}

uint64_t sub_19A61AB48()
{
  if (*(v0 + 176) != 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v10[0] = v0;
    sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
    sub_19A7A90B4();

    if ((*(v0 + 192) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(v0 + 184) = 0;
    *(v0 + 192) = 1;
    goto LABEL_6;
  }

  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  if (*(v0 + 192))
  {
    goto LABEL_5;
  }

LABEL_3:
  v1 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v1);
  *&v10[0] = v0;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90B4();

LABEL_6:
  swift_getKeyPath();
  *&v10[0] = v0;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v3 = *(v0 + 48);
  v10[0] = *(v0 + 32);
  v10[1] = v3;
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v10[2] = *(v0 + 64);
  v11 = *(v0 + 80);
  v8[0] = v5;
  v8[1] = v4;
  v8[2] = *(v0 + 64);
  v9 = *(v0 + 80);
  sub_19A60F01C(v10, v7);
  return sub_19A61B42C(v8);
}

uint64_t sub_19A61ADF4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v3 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v8[1] = v3;
  v9 = *(v1 + 64);
  v4 = v9;
  v10 = *(v1 + 80);
  v5 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return sub_19A60F01C(v8, v7);
}

uint64_t sub_19A61AEC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9[0] = v3;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v4 = *(v3 + 64);
  v5 = *(v3 + 32);
  v9[1] = *(v3 + 48);
  v9[2] = v4;
  v10 = *(v3 + 80);
  v9[0] = v5;
  *(a2 + 48) = v10;
  v6 = *(v3 + 48);
  *a2 = *(v3 + 32);
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return sub_19A60F01C(v9, v8);
}

uint64_t sub_19A61AF98(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  v4 = *a1;
  v3 = a1[1];
  v18 = a1[2];
  v5 = *(v1 + 48);
  v12 = *(v1 + 32);
  v13 = v5;
  v14 = *(v1 + 64);
  v19 = *(a1 + 24);
  v15 = *(v1 + 80);
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = a1[2];
  v11 = *(a1 + 24);
  if (_s10StickerKit5EmojiV2eeoiySbAC_ACtFZ_0(&v12, v10))
  {
    v6 = *(v1 + 48);
    v12 = *(v1 + 32);
    v13 = v6;
    v14 = *(v1 + 64);
    v15 = *(v1 + 80);
    v7 = v17;
    *(v1 + 32) = v16;
    *(v1 + 48) = v7;
    *(v1 + 64) = v18;
    *(v1 + 80) = v19;
    sub_19A60F078(&v12);
    return sub_19A61AB48();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v12 = v1;
    sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
    sub_19A7A90B4();
    sub_19A60F078(&v16);
  }
}

uint64_t sub_19A61B130(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 32);
  v5 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 48);
  sub_19A60F01C(a2, v7);

  sub_19A60EF74(v2, v3, v5);
  return sub_19A61AB48();
}

uint64_t sub_19A61B1D4()
{
  swift_getKeyPath();
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  return *(v0 + 88);
}

uint64_t sub_19A61B278(uint64_t result, uint64_t a2, char a3)
{
  *(result + 88) = a2;
  *(result + 96) = a3;
  return result;
}

uint64_t sub_19A61B284@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v3 = *(v1 + 120);
  v8[0] = *(v1 + 104);
  v8[1] = v3;
  v9 = *(v1 + 136);
  v4 = v9;
  v10 = *(v1 + 152);
  v5 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return sub_19A60F01C(v8, v7);
}

uint64_t sub_19A61B358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9[0] = v3;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v4 = *(v3 + 120);
  v9[0] = *(v3 + 104);
  v9[1] = v4;
  v10 = *(v3 + 136);
  v5 = v10;
  v11 = *(v3 + 152);
  v6 = v11;
  *a2 = v9[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  return sub_19A60F01C(v9, v8);
}

uint64_t sub_19A61B42C(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  v4 = *a1;
  v3 = a1[1];
  v18 = a1[2];
  v5 = *(v1 + 120);
  v12 = *(v1 + 104);
  v13 = v5;
  v14 = *(v1 + 136);
  v19 = *(a1 + 24);
  v15 = *(v1 + 152);
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = a1[2];
  v11 = *(a1 + 24);
  if (_s10StickerKit5EmojiV2eeoiySbAC_ACtFZ_0(&v12, v10))
  {
    v6 = *(v1 + 120);
    v12 = *(v1 + 104);
    v13 = v6;
    v14 = *(v1 + 136);
    v7 = v17;
    *(v1 + 104) = v16;
    v15 = *(v1 + 152);
    *(v1 + 120) = v7;
    *(v1 + 136) = v18;
    *(v1 + 152) = v19;
    return sub_19A60F078(&v12);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v12 = v1;
    sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
    sub_19A7A90B4();
    sub_19A60F078(&v16);
  }
}

uint64_t sub_19A61B5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 104) = *a2;
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  *(a1 + 120) = v2;
  *(a1 + 136) = *(a2 + 32);
  v5 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 48);
  sub_19A60F01C(a2, v7);

  return sub_19A60EF74(v3, v4, v5);
}

uint64_t sub_19A61B664()
{
  swift_getKeyPath();
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  return *(v0 + 154);
}

uint64_t sub_19A61B704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  *a2 = *(v3 + 154);
  return result;
}

uint64_t sub_19A61B7D4(char a1)
{
  if (*(v1 + 154) == (a1 & 1))
  {
    *(v1 + 154) = a1 & 1;
    swift_getKeyPath();
    sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
    sub_19A7A90C4();

    if ((*(v1 + 154) & 1) == 0)
    {
      return sub_19A61AB48();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
    sub_19A7A90B4();
  }

  return result;
}

uint64_t sub_19A61B964(uint64_t a1, char a2)
{
  *(a1 + 154) = a2;
  swift_getKeyPath();
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  if ((*(a1 + 154) & 1) == 0)
  {
    return sub_19A61AB48();
  }

  return result;
}

uint64_t sub_19A61BA1C(uint64_t result, char a2)
{
  if ((*(v2 + 176) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 168) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 168) = result;
    *(v2 + 176) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90B4();
}

uint64_t sub_19A61BB50(uint64_t result, char a2)
{
  if ((*(v2 + 192) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 184) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 184) = result;
    *(v2 + 192) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90B4();
}

uint64_t sub_19A61BC84()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for SelectionFeedbackGenerator();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_19A61BCE0(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v15 = *a1;
  v5 = *(a1 + 32);
  v16 = v4;
  v17 = v5;
  v18 = *(a1 + 48);
  sub_19A60F01C(&v15, &v11);
  sub_19A61AF98(a1);
  sub_19A631724();
  sub_19A61B7D4(0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    sub_19A60F01C(&v15, v10);
    sub_19A63F030(&v11);
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    sub_19A60F01C(&v15, v10);
    sub_19A63F030(&v11);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 24);
      ObjectType = swift_getObjectType();
      v11 = v15;
      v12 = v16;
      v13 = v17;
      v14 = v18;
      (*(v8 + 8))(v7, &v11, 1, a2 & 1, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19A61BE38(uint64_t a1, char a2)
{
  swift_getKeyPath();
  *&v25 = v2;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  if (*(v2 + 80) <= -3)
  {
    v6 = *(v2 + 64);
    swift_getKeyPath();
    *&v25 = v2;

    sub_19A7A90C4();

    v7 = *(v2 + 64);
    v14 = *(v2 + 48);
    v15 = v7;
    v16 = *(v2 + 80);
    v12 = v14;
    v13 = *(v2 + 32);
    v8 = v7;
    v11 = v13;
    v9 = HIBYTE(v16);
    v10 = v16;
    sub_19A60F01C(&v13, &v25);
    sub_19A60EF74(v8, *(&v8 + 1), v10);
    v17[0] = v11;
    v17[1] = v12;
    *&v18 = v6;
    *(&v18 + 1) = a1;
    LOBYTE(v19) = 0x80;
    HIBYTE(v19) = v9;
    v25 = v11;
    v26 = v12;
    v27 = v18;
    v28 = v19;
    sub_19A60F01C(v17, v23);
    sub_19A61AF98(&v25);
    v20[0] = v11;
    v20[1] = v12;
    *&v21 = v6;
    *(&v21 + 1) = a1;
    LOBYTE(v22) = 0x80;
    HIBYTE(v22) = v9;
    v25 = v11;
    v26 = v12;
    v27 = v21;
    v28 = v22;
    sub_19A60F01C(v20, v23);
    sub_19A61BCE0(&v25, a2 & 1);
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v24 = v28;
    sub_19A60F078(v23);
    v25 = v11;
    v26 = v12;
    *&v27 = v6;
    *(&v27 + 1) = a1;
    LOBYTE(v28) = 0x80;
    HIBYTE(v28) = v9;
    return sub_19A60F078(&v25);
  }

  return result;
}

uint64_t sub_19A61C04C()
{
  swift_getKeyPath();
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  return *(v0 + 168);
}

uint64_t sub_19A61C0F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v5 = *(v3 + 176);
  *a2 = *(v3 + 168);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19A61C1A0()
{
  swift_getKeyPath();
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  return *(v0 + 184);
}

uint64_t sub_19A61C244@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v5 = *(v3 + 192);
  *a2 = *(v3 + 184);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19A61C2F4(uint64_t a1)
{
  v3 = v1;
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC10StickerKit35FamilyVariantSelectorPopupViewModel___observationRegistrar;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v6 = *(v1 + 152);
  if (v6 > -3)
  {
    return 0;
  }

  v8 = *(v1 + 136);
  v7 = *(v1 + 144);
  if (!(a1 >> 14))
  {
    if (!a1)
    {
      goto LABEL_18;
    }

    if (a1 != 1)
    {
      sub_19A60EF28(*(v1 + 136), *(v1 + 144), v6);

      goto LABEL_53;
    }

    v11 = *(v1 + 152);
    KeyPath = swift_getKeyPath();
    sub_19A60EF28(v8, v7, v11);
    v12 = v3 + v5;
    sub_19A7A90C4();

    if (*(v3 + 176))
    {
      v13 = 0;
    }

    else
    {
      v21 = *(v3 + 168);
      v22 = -1;
      if ((a1 & 0x100) != 0)
      {
        v22 = 1;
      }

      v18 = __OFADD__(v21, v22);
      v23 = v21 + v22;
      if (v18)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (v23 >= 2)
      {
        v23 = 2;
      }

      v13 = v23 & ~(v23 >> 63);
    }

    sub_19A61BA1C(v13, 0);
    a1 = swift_getKeyPath();
    sub_19A7A90C4();

    if (*(v3 + 176) != 1)
    {
      v12 = *(v3 + 168);
      if (v12 == 2)
      {

        swift_getKeyPath();
        sub_19A7A90C4();

        if ((*(v3 + 192) & 1) == 0)
        {
LABEL_40:

          return 1;
        }

        goto LABEL_38;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      if (v12 >= *(v7 + 2))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        v7 = sub_19A787070(v7);
LABEL_67:
        if (v12 < *(v7 + 2))
        {
          v25 = &v7[KeyPath];
          *&v7[KeyPath + 32] = a1;
          goto LABEL_69;
        }

        __break(1u);
        goto LABEL_79;
      }

      a1 = 16 * v12;
      if (v7[16 * v12 + 40])
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_49:
          if (v12 < *(v7 + 2))
          {
            v25 = &v7[a1];
            *&v7[a1 + 32] = 0;
LABEL_69:
            v25[40] = 0;
            swift_getKeyPath();

            sub_19A7A90C4();

            swift_getKeyPath();
            sub_19A7A90E4();

            v30 = *(v3 + 136);
            v31 = *(v3 + 144);
            *(v3 + 136) = v8;
            *(v3 + 144) = v7;
            v32 = *(v3 + 152);
            *(v3 + 152) = 0x80;
            sub_19A60EF74(v30, v31, v32);
            swift_getKeyPath();
            sub_19A7A90D4();

            return 1;
          }

          __break(1u);
LABEL_84:
          __break(1u);
          return result;
        }

LABEL_82:
        result = sub_19A787070(v7);
        v7 = result;
        goto LABEL_49;
      }
    }

    goto LABEL_35;
  }

  sub_19A60EF28(*(v1 + 136), *(v1 + 144), v6);

  if (a1 >> 14 != 1)
  {
LABEL_53:

    return 0;
  }

  swift_getKeyPath();
  sub_19A7A90C4();

  if ((*(v1 + 192) & 1) == 0 && !*(v1 + 184))
  {
    v9 = &unk_1F0DC47F8;
    v10 = a1 & 1;
LABEL_7:
    sub_19A61BE38(v9, v10);
    goto LABEL_53;
  }

  v8 = swift_getKeyPath();
  sub_19A7A90C4();

  if ((*(v1 + 192) & 1) != 0 || *(v1 + 184) != 1)
  {
    goto LABEL_53;
  }

  v12 = *(v7 + 2);
  if (!v12)
  {
    goto LABEL_72;
  }

  if (v7[40] != 1)
  {
    if (v12 != 1)
    {
      if (v7[56] == 1)
      {
        goto LABEL_53;
      }

      v10 = a1 & 1;
      v9 = v7;
      goto LABEL_7;
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v12 == 1)
  {
    __break(1u);
LABEL_18:
    v14 = v6;
    swift_getKeyPath();
    sub_19A60EF28(v8, v7, v14);
    sub_19A7A90C4();

    if (*(v3 + 176) == 1)
    {
      sub_19A61BA1C(0, 0);
    }

    KeyPath = swift_getKeyPath();
    sub_19A7A90C4();

    if (*(v3 + 176) != 1)
    {
      v12 = *(v3 + 168);
      if (v12 == 2)
      {

        v8 = swift_getKeyPath();
        v12 = v3 + v5;
        sub_19A7A90C4();

        if ((*(v3 + 192) & 1) == 0)
        {
          v16 = *(v3 + 184);
          v17 = -1;
          if ((a1 & 0x100) != 0)
          {
            v17 = 1;
          }

          v18 = __OFADD__(v16, v17);
          v19 = v16 + v17;
          if (!v18)
          {
            v20 = v19 > 0;
LABEL_39:
            sub_19A61BB50(v20, 0);
            goto LABEL_40;
          }

          goto LABEL_80;
        }

LABEL_38:
        v20 = 0;
        goto LABEL_39;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v12 < *(v7 + 2))
        {
          KeyPath = 16 * v12;
          v24 = &v7[16 * v12];
          if (v24[40])
          {
            a1 = 0;
          }

          else
          {
            v26 = *(v24 + 4);
            v27 = -1;
            if ((a1 & 0x100) != 0)
            {
              v27 = 1;
            }

            v18 = __OFADD__(v26, v27);
            v28 = v26 + v27;
            if (v18)
            {
              goto LABEL_81;
            }

            if (v12 >= *(v8 + 16))
            {
              goto LABEL_84;
            }

            v29 = *(*(v8 + 8 * v12 + 32) + 16) - 1;
            if (v28 <= 0)
            {
              a1 = v29 & (v29 >> 63);
            }

            else if (v29 >= v28)
            {
              a1 = v28;
            }

            else
            {
              a1 = *(*(v8 + 8 * v12 + 32) + 16) - 1;
            }
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_67;
          }

          goto LABEL_77;
        }

        goto LABEL_75;
      }

      goto LABEL_73;
    }

LABEL_35:

    return 1;
  }

  return 0;
}

uint64_t sub_19A61C92C()
{
  sub_19A601244(v0 + 16);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  sub_19A60EF74(v1, v2, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  sub_19A60EF74(v4, v5, v6);

  v7 = OBJC_IVAR____TtC10StickerKit35FamilyVariantSelectorPopupViewModel___observationRegistrar;
  v8 = sub_19A7A9104();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_19A61CA68()
{
  result = sub_19A7A9104();
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

uint64_t sub_19A61CB38()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  if (qword_1EAFCAB68 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EAFDD530;
  v2 = *&qword_1EAFDD540;
  v3 = xmmword_1EAFDD530;
  v4 = *&qword_1EAFDD540;
  v10[0] = xmmword_1EAFDD530;
  v10[1] = *&qword_1EAFDD540;
  v5 = xmmword_1EAFDD550;
  v10[2] = xmmword_1EAFDD550;
  v6 = word_1EAFDD560;
  *(v0 + 32) = xmmword_1EAFDD530;
  *(v0 + 48) = v2;
  *(v0 + 64) = v5;
  v12[1] = v2;
  v12[2] = xmmword_1EAFDD550;
  v11 = v6;
  *(v0 + 80) = v6;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  v13 = word_1EAFDD560;
  v12[0] = v1;
  v7 = xmmword_1EAFDD550;
  *(v0 + 152) = word_1EAFDD560;
  *(v0 + 136) = v7;
  *(v0 + 120) = v4;
  *(v0 + 104) = v3;
  *(v0 + 154) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  sub_19A60F01C(v10, v9);
  sub_19A60F01C(v12, v9);
  sub_19A7A90F4();
  return v0;
}

uint64_t sub_19A61CC48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_19A7A9B34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_19A60F0CC(v2, &v14 - v9, &qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A97A4();
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

uint64_t sub_19A61CE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC610);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = v58 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC618);
  v7 = MEMORY[0x1EEE9AC00](v62);
  v66 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = (v58 - v9);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC620);
  v10 = MEMORY[0x1EEE9AC00](v59);
  v65 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = v58 - v12;
  v13 = type metadata accessor for FamilyVariantSelectorView(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC628);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v63 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v58 - v20;
  v22 = swift_allocObject();
  v23 = a1;
  v24 = *(a1 + *(v14 + 28));
  swift_getKeyPath();
  *&v71 = v24;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v25 = *(v24 + 152);
  if (v25 <= -3)
  {
    v28 = *(v24 + 136);
    v27 = *(v24 + 144);
    *(v22 + 16) = v28;
    *(v22 + 24) = v27;
    sub_19A60EF14(v28, v27, v25);

    v30 = sub_19A6B78C4(v29);

    *&v71 = v30;
    v58[1] = swift_getKeyPath();
    sub_19A622B5C(v23, v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FamilyVariantSelectorView);
    v31 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v22;
    sub_19A622BC4(v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for FamilyVariantSelectorView);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_19A622C2C;
    *(v33 + 24) = v32;
    v58[2] = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC638);
    sub_19A623714(&qword_1EAFCC640, &qword_1EAFCC630);
    sub_19A622CE8();
    sub_19A7AA584();
    LOBYTE(v32) = sub_19A7A9F04();
    sub_19A7A9754();
    v34 = &v21[*(v17 + 36)];
    v58[0] = v21;
    *v34 = v32;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    v39 = v60;
    sub_19A7AA574();
    sub_19A7AA654();
    sub_19A7A9864();
    v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC670) + 36));
    v41 = v72;
    *v40 = v71;
    v40[1] = v41;
    v40[2] = v73;
    v42 = sub_19A7A9F04();
    v43 = v39 + *(v59 + 36);
    *v43 = v42;
    *(v43 + 8) = xmmword_19A7B7440;
    *(v43 + 24) = xmmword_19A7B7440;
    *(v43 + 40) = 0;
    v44 = sub_19A7A9BA4();
    v45 = v64;
    *v64 = v44;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC678);
    sub_19A61F0D0(v23, v22, (v45 + *(v46 + 44)));
    v47 = sub_19A7A9F84();
    v48 = v61;
    (*(*(v47 - 8) + 56))(v61, 1, 1, v47);
    v49 = sub_19A7A9FC4();
    sub_19A5F2B54(v48, &qword_1EAFCFFF0);
    KeyPath = swift_getKeyPath();
    v51 = (v45 + *(v62 + 36));
    *v51 = KeyPath;
    v51[1] = v49;
    v52 = v63;
    sub_19A60F0CC(v21, v63, &qword_1EAFCC628);
    v53 = v65;
    sub_19A60F0CC(v39, v65, &qword_1EAFCC620);
    v54 = v66;
    sub_19A60F0CC(v45, v66, &qword_1EAFCC618);
    v55 = v67;
    sub_19A60F0CC(v52, v67, &qword_1EAFCC628);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC680);
    sub_19A60F0CC(v53, v55 + *(v56 + 48), &qword_1EAFCC620);
    sub_19A60F0CC(v54, v55 + *(v56 + 64), &qword_1EAFCC618);
    sub_19A5F2B54(v45, &qword_1EAFCC618);
    sub_19A5F2B54(v39, &qword_1EAFCC620);
    sub_19A5F2B54(v58[0], &qword_1EAFCC628);
    sub_19A5F2B54(v54, &qword_1EAFCC618);
    sub_19A5F2B54(v53, &qword_1EAFCC620);
    sub_19A5F2B54(v52, &qword_1EAFCC628);
    v57 = v70;
    sub_19A62376C(v55, v70, &qword_1EAFCC610);
    (*(v68 + 56))(v57, 0, 1, v69);
  }

  else
  {
    swift_deallocUninitializedObject();
    return (*(v68 + 56))(v70, 1, 1, v69);
  }
}

uint64_t sub_19A61D6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FamilyVariantSelectorView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  *a5 = sub_19A7A9BA4();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC708);
  *&v28[0] = sub_19A6B7A54(a2);
  swift_getKeyPath();
  sub_19A622B5C(a4, v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FamilyVariantSelectorView);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  sub_19A622BC4(v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FamilyVariantSelectorView);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_19A6231CC;
  *(v15 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC718);
  sub_19A623714(&qword_1EAFCC720, &qword_1EAFCC710);
  sub_19A623714(&qword_1EAFCC728, &qword_1EAFCC718);
  sub_19A7AA584();
  sub_19A7AA654();
  sub_19A7A9864();
  v16 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC658) + 36));
  v17 = v28[1];
  *v16 = v28[0];
  v16[1] = v17;
  v16[2] = v28[2];
  LOBYTE(a2) = sub_19A7A9F04();
  sub_19A7A9754();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC638);
  v27 = a5 + *(result + 36);
  *v27 = a2;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_19A61DA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v40 = a7;
  v41 = a8;
  v37 = a2;
  v38 = a3;
  v12 = type metadata accessor for FamilyVariantSelectorView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC730);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v39 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  sub_19A622B5C(a6, &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FamilyVariantSelectorView);
  v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a1;
  v23 = v22 + v21;
  v25 = v37;
  v24 = v38;
  sub_19A622BC4(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23, type metadata accessor for FamilyVariantSelectorView);
  v42 = v25;
  v43 = v24;
  v44 = a5;
  v45 = a6;
  v46 = a4;
  v47 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC738);
  sub_19A623340();
  sub_19A7AA4A4();
  v26 = *(v40 + 16);
  if (v26 && ((v27 = (v40 + 16 + 16 * v26), *v27 == v25) && v27[1] == v24 || (sub_19A7AC064() & 1) != 0))
  {
    v28 = 0;
    v29 = 1;
  }

  else
  {
    v29 = 0;
    v28 = 1;
  }

  v30 = *(v16 + 16);
  v31 = v39;
  v30(v39, v20, v15);
  v32 = v41;
  v30(v41, v31, v15);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC7A8) + 48)];
  *v33 = 0;
  v33[8] = v28;
  v33[9] = v29;
  v34 = *(v16 + 8);
  v34(v20, v15);
  return (v34)(v31, v15);
}

uint64_t sub_19A61DD54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v8;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_19A787070(v8);
  v8 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v8 + 16) > a2)
  {
    v10 = v8 + 16 * a2;
    *(v10 + 32) = a3;
    *(v10 + 40) = 0;
    *(a1 + 24) = v8;
    swift_endAccess();
    v11 = *(a4 + *(type metadata accessor for FamilyVariantSelectorView(0) + 20));
    swift_beginAccess();
    v12 = *(a1 + 16);
    swift_getKeyPath();
    sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);

    sub_19A7A90C4();

    swift_getKeyPath();
    sub_19A7A90E4();

    v13 = *(v11 + 136);
    v14 = *(v11 + 144);
    *(v11 + 136) = v12;
    *(v11 + 144) = v8;
    v15 = *(v11 + 152);
    *(v11 + 152) = 0x80;
    sub_19A60EF74(v13, v14, v15);
    swift_getKeyPath();
    sub_19A7A90D4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_19A61DF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v106 = a5;
  v103 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v84 - v13;
  v94 = sub_19A7AA284();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_19A7A97A4();
  v88 = *(v89 - 8);
  v15 = MEMORY[0x1EEE9AC00](v89);
  v86 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v84 - v17;
  v84 = sub_19A7A9A14();
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6C8);
  v101 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v90 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC7B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v100 = &v84 - v21;
  v22 = type metadata accessor for NonDraggableLabel(0);
  v23 = (v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC758);
  v104 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v84 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC7B8);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v105 = &v84 - v29;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC750);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v84 - v30;
  if (a3)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v32 = sub_19A61EA80(v31);
  *v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v34 = v25 + v23[7];
  *v34 = KeyPath;
  v34[8] = 0;
  v35 = (v25 + v23[8]);
  *v35 = a1;
  v35[1] = a2;
  *(v25 + v23[9]) = v32;

  sub_19A7AA654();
  sub_19A7A9864();
  sub_19A622BC4(v25, v28, type metadata accessor for NonDraggableLabel);
  v36 = &v28[*(v26 + 36)];
  v37 = v110;
  *v36 = v109;
  *(v36 + 1) = v37;
  *(v36 + 2) = v111;
  v108 = &unk_1F0DC4838;
  v38 = *(type metadata accessor for FamilyVariantSelectorView(0) + 28);
  v92 = a4;
  v112 = *(a4 + v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF510);
  sub_19A7AA464();
  v39 = swift_allocObject();
  v40 = v106;
  *(v39 + 16) = v106;
  *(v39 + 24) = a3;
  v41 = swift_allocObject();
  v95 = a6;
  *(v41 + 16) = a6;
  *(v41 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC768);
  sub_19A6235A0();
  sub_19A623714(&qword_1EAFCC780, &qword_1EAFCC760);
  sub_19A62365C();
  v42 = v105;
  sub_19A7AA114();

  sub_19A5F2B54(v28, &qword_1EAFCC758);
  v43 = sub_19A7AA654();
  v45 = v44;
  result = swift_beginAccess();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v47 = *(v40 + 24);
  if (*(v47 + 16) <= a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v48 = v47 + 16 * a3;
  v49 = 1;
  if (*(v48 + 40))
  {
    v50 = v107;
    v51 = v100;
  }

  else
  {
    v50 = v107;
    v51 = v100;
    if (*(v48 + 32) == v95)
    {
      v52 = sub_19A7A9A24();
      v106 = v43;
      v53 = *(v52 + 20);
      v54 = *MEMORY[0x1E697F468];
      v55 = sub_19A7A9BC4();
      v56 = v87;
      (*(*(v55 - 8) + 104))(&v87[v53], v54, v55);
      __asm { FMOV            V0.2D, #5.0 }

      *v56 = _Q0;
      *(v56 + *(v84 + 20)) = 0x4000000000000000;
      v62 = v85;
      sub_19A61CC48(v85);
      v63 = v88;
      v64 = v86;
      v65 = v45;
      v66 = v42;
      v67 = v89;
      (*(v88 + 104))(v86, *MEMORY[0x1E697DBA8], v89);
      sub_19A7A9794();
      v68 = *(v63 + 8);
      v68(v64, v67);
      v69 = v67;
      v42 = v66;
      v45 = v65;
      v68(v62, v69);
      (*(v93 + 104))(v91, *MEMORY[0x1E69814D8], v94);
      v70 = sub_19A7AA334();
      v71 = v90;
      sub_19A622BC4(v56, v90, MEMORY[0x1E697EAB8]);
      *(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6D0) + 36)) = v70;
      v50 = v107;
      sub_19A7AA654();
      sub_19A7A9864();
      v72 = (v71 + *(v50 + 36));
      v73 = v113;
      *v72 = v112;
      v72[1] = v73;
      v72[2] = v114;
      v74 = v71;
      v43 = v106;
      sub_19A62376C(v74, v51, &qword_1EAFCC6C8);
      v49 = 0;
    }
  }

  (*(v101 + 56))(v51, v49, 1, v50);
  v75 = v99;
  v76 = &v99[*(v96 + 36)];
  sub_19A62376C(v51, v76, &qword_1EAFCC7B0);
  v77 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6B8) + 36));
  *v77 = v43;
  v77[1] = v45;
  (*(v97 + 32))(v75, v42, v98);
  v78 = sub_19A7A9F84();
  v79 = v102;
  (*(*(v78 - 8) + 56))(v102, 1, 1, v78);
  v80 = sub_19A7A9FC4();
  sub_19A5F2B54(v79, &qword_1EAFCFFF0);
  v81 = swift_getKeyPath();
  v82 = v103;
  sub_19A62376C(v75, v103, &qword_1EAFCC750);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC738);
  v83 = (v82 + *(result + 36));
  *v83 = v81;
  v83[1] = v80;
  return result;
}

id sub_19A61EA80(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6D8);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_19A7B6C20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19A7B6C20;
      v11 = *MEMORY[0x1E69DDCF0];
      *(inited + 32) = *MEMORY[0x1E69DDCF0];
      v12 = *MEMORY[0x1E69DDCE8];
      *(inited + 40) = 701;
      *(inited + 48) = v12;
      *(inited + 56) = 100;
      v13 = v11;
      v14 = v12;
      v15 = v13;
      v16 = v14;
      v17 = sub_19A69C8D8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6E8);
      swift_arrayDestroy();
      *(v1 + 32) = v17;
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_19A7B6C20;
      *(v18 + 32) = v15;
      *(v18 + 40) = 701;
      *(v18 + 48) = v16;
      *(v18 + 56) = 200;
      v19 = sub_19A69C8D8(v18);
      swift_setDeallocating();
      swift_arrayDestroy();
      *(v1 + 40) = v19;
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6D8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_19A7B6C30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6E0);
    v2 = swift_initStackObject();
    v3 = v2;
    *(v2 + 16) = xmmword_19A7B6C20;
    v4 = *MEMORY[0x1E69DDCF0];
    *(v2 + 32) = *MEMORY[0x1E69DDCF0];
    v5 = *MEMORY[0x1E69DDCE8];
    *(v2 + 40) = 701;
    *(v2 + 48) = v5;
    v6 = 200;
    goto LABEL_7;
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6D8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_19A7B6C30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6E0);
    v2 = swift_initStackObject();
    v3 = v2;
    *(v2 + 16) = xmmword_19A7B6C20;
    v4 = *MEMORY[0x1E69DDCF0];
    *(v2 + 32) = *MEMORY[0x1E69DDCF0];
    v5 = *MEMORY[0x1E69DDCE8];
    *(v2 + 40) = 701;
    *(v2 + 48) = v5;
    v6 = 100;
LABEL_7:
    *(v2 + 56) = v6;
    v7 = v4;
    v8 = v5;
    v9 = sub_19A69C8D8(v3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6E8);
    swift_arrayDestroy();
    *(v1 + 32) = v9;
    goto LABEL_9;
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6F0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_19A7B6C20;
  v21 = *MEMORY[0x1E69DB8B0];
  *(v20 + 32) = *MEMORY[0x1E69DB8B0];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6F8);
  *(v20 + 40) = v1;
  v23 = *MEMORY[0x1E69DB8B8];
  v24 = MEMORY[0x1E69E6158];
  *(v20 + 64) = v22;
  *(v20 + 72) = v23;
  *(v20 + 104) = v24;
  *(v20 + 80) = 0x6C6F43656C707041;
  *(v20 + 88) = 0xEF696A6F6D45726FLL;
  v25 = v21;
  v26 = v23;
  sub_19A69C9C4(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC700);
  swift_arrayDestroy();
  v27 = objc_allocWithZone(MEMORY[0x1E69DB880]);
  type metadata accessor for AttributeName(0);
  sub_19A622510(&qword_1EAFCA468, type metadata accessor for AttributeName);
  v28 = sub_19A7AAF34();

  v29 = [v27 initWithFontAttributes_];

  return v29;
}

uint64_t sub_19A61EEDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_13;
  }

  result = swift_beginAccess();
  v10 = *(a3 + 24);
  v11 = *(v10 + 16);
  if (!v11)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v10 + 40) == 1)
  {
    if (v11 != 1)
    {
      v12 = 1.2;
      if ((*(v10 + 56) & 1) != 0 || !a4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (v11 != 1)
  {
    if (*(v10 + 56) == 1 && a4 == 1)
    {
      v12 = 1.2;
      goto LABEL_14;
    }

LABEL_13:
    v12 = 1.0;
LABEL_14:
    sub_19A7AA744();
    v15 = v14;
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC798);
    (*(*(v18 - 8) + 16))(a5, a1, v18);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC768);
    v19 = (a5 + *(result + 36));
    *v19 = v12;
    v19[1] = v12;
    *(v19 + 2) = v15;
    *(v19 + 3) = v17;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19A61F034(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return sub_19A7AA684();
  }

  sub_19A7AA6E4();
  v1 = sub_19A7AA694();

  return v1;
}

uint64_t sub_19A61F0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a2;
  v40 = a3;
  v5 = type metadata accessor for FamilyVariantSelectorView(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34[3] = v7;
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC688);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v39 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v38 = v34 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v37 = v34 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v34 - v17;
  v36 = a2 + 16;
  sub_19A622B5C(a1, v8, type metadata accessor for FamilyVariantSelectorView);
  v19 = *(v6 + 80);
  v20 = swift_allocObject();
  sub_19A622BC4(v8, v20 + ((v19 + 16) & ~v19), type metadata accessor for FamilyVariantSelectorView);
  v43 = a1;
  v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC690);
  v21 = sub_19A622EA4();
  v34[0] = v18;
  v34[1] = v21;
  sub_19A7AA4A4();
  sub_19A622B5C(a1, v8, type metadata accessor for FamilyVariantSelectorView);
  v22 = swift_allocObject();
  *(v22 + 16) = v35;
  sub_19A622BC4(v8, v22 + ((v19 + 24) & ~v19), type metadata accessor for FamilyVariantSelectorView);
  v41 = a1;
  v42 = v36;

  v23 = v37;
  sub_19A7AA4A4();
  v24 = *(v10 + 16);
  v25 = v38;
  v24(v38, v18, v9);
  v26 = v39;
  v24(v39, v23, v9);
  v27 = v40;
  *v40 = 0;
  *(v27 + 8) = 1;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6C0);
  v24(&v28[v29[12]], v25, v9);
  v30 = &v28[v29[16]];
  *v30 = 0;
  v30[8] = 1;
  v24(&v28[v29[20]], v26, v9);
  v31 = &v28[v29[24]];
  *v31 = 0;
  v31[8] = 1;
  v32 = *(v10 + 8);
  v32(v23, v9);
  v32(v34[0], v9);
  v32(v26, v9);
  return (v32)(v25, v9);
}

double sub_19A61F520@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for FamilyVariantSelectorView(0) + 20));
  swift_getKeyPath();
  *&v21 = v4;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v6 = *(v4 + 120);
  v5 = *(v4 + 128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC550);
  sub_19A7AA484();
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for DraggableLabel(0);
  v9 = a2 + v8[5];
  *v9 = KeyPath;
  v9[8] = 0;
  v10 = a2 + v8[6];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = (a2 + v8[7]);
  *v11 = v6;
  v11[1] = v5;
  v12 = a2 + v8[8];
  *v12 = v21;
  *(v12 + 1) = v22;
  v12[32] = v23;
  *(a2 + v8[9]) = 0;
  *(a2 + v8[10]) = 1;
  v13 = (a2 + v8[11]);
  *v13 = 0;
  v13[1] = 0;
  v14 = sub_19A7AA654();
  v16 = v15;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6A8) + 36);
  sub_19A61F7B0(a1, v17);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6B8) + 36));
  *v18 = v14;
  v18[1] = v16;
  sub_19A7AA654();
  sub_19A7A9864();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC690) + 36));
  *v19 = v21;
  v19[1] = v22;
  result = *&v23;
  v19[2] = v23;
  return result;
}

uint64_t sub_19A61F7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = *(a1 + *(type metadata accessor for FamilyVariantSelectorView(0) + 20));
  swift_getKeyPath();
  *&v22[0] = v8;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v9 = 1;
  if ((*(v8 + 192) & 1) == 0 && !*(v8 + 184))
  {
    v10 = *(sub_19A7A9A24() + 20);
    v11 = *MEMORY[0x1E697F468];
    v12 = sub_19A7A9BC4();
    (*(*(v12 - 8) + 104))(&v7[v10], v11, v12);
    __asm { FMOV            V0.2D, #5.0 }

    *v7 = _Q0;
    *&v7[*(sub_19A7A9A14() + 20)] = 0x4000000000000000;
    v18 = sub_19A7AA2A4();
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6D0) + 36)] = v18;
    sub_19A7AA654();
    sub_19A7A9864();
    v19 = &v7[*(v4 + 36)];
    v20 = v22[1];
    *v19 = v22[0];
    *(v19 + 1) = v20;
    *(v19 + 2) = v22[2];
    sub_19A62376C(v7, a2, &qword_1EAFCC6C8);
    v9 = 0;
  }

  return (*(v5 + 56))(a2, v9, 1, v4);
}

uint64_t sub_19A61FA10(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v3 + 40) == 1)
  {
    if (v4 != 1)
    {
LABEL_7:
      type metadata accessor for FamilyVariantSelectorView(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF510);
      result = sub_19A7AA464();
      if (!__OFADD__(v6, 1))
      {
        sub_19A7AA474();
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  if (v4 == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (*(v3 + 56) == 1)
  {
    goto LABEL_7;
  }

  type metadata accessor for FamilyVariantSelectorView(0);

  sub_19A61BE38(v5, 1);
}

uint64_t sub_19A61FB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for DraggableLabel(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6A8);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v53 - v8;
  v10 = type metadata accessor for FamilyVariantSelectorView(0);
  v11 = *(v10 + 20);
  v59 = a1;
  v12 = *(a1 + v11);
  swift_getKeyPath();
  *&v72[0] = v12;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v13 = *(v12 + 120);
  v72[0] = *(v12 + 104);
  v72[1] = v13;
  v72[2] = *(v12 + 136);
  v73 = *(v12 + 152);
  v14 = *(v12 + 120);
  v65 = *(v12 + 104);
  v66 = v14;
  v67 = *(v12 + 136);
  v68 = *(v12 + 152);
  result = swift_beginAccess();
  v16 = *(a2 + 8);
  v17 = *(v16 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*(v16 + 40) == 1)
  {
    if (v17 == 1)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v18 = 1;
  }

  else
  {
    if (v17 == 1)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v18 = *(v16 + 56);
  }

  sub_19A60F01C(v72, v63);
  sub_19A7862FC(v18);
  v20 = v19;
  v63[0] = v65;
  v63[1] = v66;
  v63[2] = v67;
  v64 = v68;
  sub_19A60F078(v63);
  v21 = (v59 + *(v10 + 24));
  v22 = *(v21 + 16);
  v23 = *(v21 + 3);
  v60 = *v21;
  v61 = v22;
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC550);
  sub_19A7AA484();
  v24 = v69;
  v56 = *(&v70 + 1);
  v25 = v70;
  v55 = v71;
  result = swift_beginAccess();
  v26 = *(a2 + 8);
  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_25;
  }

  v28 = *(v26 + 40);
  v54 = v25;
  if (v28 == 1)
  {
    if (v27 == 1)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (*(v26 + 56))
    {
      v29 = 3;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    if (v27 == 1)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (*(v26 + 56))
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }
  }

  v30 = sub_19A61EA80(v29);
  result = swift_beginAccess();
  v31 = *(a2 + 8);
  v32 = *(v31 + 16);
  if (!v32)
  {
    goto LABEL_26;
  }

  v33 = *(v31 + 40);
  v53 = v9;
  if (v33 == 1)
  {
    if (v32 != 1)
    {
      v34 = v24;
      v35 = v20;
      v36 = 0;
LABEL_23:
      *v7 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath();
      v38 = v7 + v5[5];
      *v38 = KeyPath;
      v38[8] = 0;
      v39 = v7 + v5[6];
      *v39 = swift_getKeyPath();
      *(v39 + 1) = 0;
      v39[16] = 0;
      v40 = (v7 + v5[7]);
      *v40 = v35;
      v40[1] = v24;
      v41 = v7 + v5[8];
      *v41 = v34;
      *(v41 + 1) = *(&v24 + 1);
      v42 = v56;
      *(v41 + 2) = v54;
      *(v41 + 3) = v42;
      v41[32] = v55;
      *(v7 + v5[9]) = v30;
      *(v7 + v5[10]) = v36 & 1;
      v43 = (v7 + v5[11]);
      *v43 = 0;
      v43[1] = 0;
      v44 = sub_19A7AA654();
      v46 = v45;
      v47 = v53;
      v48 = &v53[*(v57 + 36)];
      sub_19A62005C(v59, v48);
      v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6B8) + 36));
      *v49 = v44;
      v49[1] = v46;
      sub_19A622BC4(v7, v47, type metadata accessor for DraggableLabel);
      sub_19A7AA654();
      sub_19A7A9864();
      v50 = v58;
      sub_19A62376C(v47, v58, &qword_1EAFCC6A8);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC690);
      v51 = (v50 + *(result + 36));
      v52 = v70;
      *v51 = v69;
      v51[1] = v52;
      v51[2] = v71;
      return result;
    }

    goto LABEL_31;
  }

  if (v32 != 1)
  {
    v34 = v24;
    v35 = v20;
    v36 = *(v31 + 56) ^ 1;
    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_19A62005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = *(a1 + *(type metadata accessor for FamilyVariantSelectorView(0) + 20));
  swift_getKeyPath();
  *&v22[0] = v8;
  sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v9 = 1;
  if ((*(v8 + 192) & 1) == 0 && *(v8 + 184) == 1)
  {
    v10 = *(sub_19A7A9A24() + 20);
    v11 = *MEMORY[0x1E697F468];
    v12 = sub_19A7A9BC4();
    (*(*(v12 - 8) + 104))(&v7[v10], v11, v12);
    __asm { FMOV            V0.2D, #5.0 }

    *v7 = _Q0;
    *&v7[*(sub_19A7A9A14() + 20)] = 0x4000000000000000;
    v18 = sub_19A7AA2A4();
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6D0) + 36)] = v18;
    sub_19A7AA654();
    sub_19A7A9864();
    v19 = &v7[*(v4 + 36)];
    v20 = v22[1];
    *v19 = v22[0];
    *(v19 + 1) = v20;
    *(v19 + 2) = v22[2];
    sub_19A62376C(v7, a2, &qword_1EAFCC6C8);
    v9 = 0;
  }

  return (*(v5 + 56))(a2, v9, 1, v4);
}

double sub_19A6202C0@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5E8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - v4;
  *v5 = sub_19A7A9C24();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5F0);
  sub_19A61CE48(v1, &v5[*(v6 + 44)]);
  sub_19A623714(&qword_1EAFCC5F8, &qword_1EAFCC5E8);
  sub_19A622B08();
  sub_19A7AA0D4();
  sub_19A5F2B54(v5, &qword_1EAFCC5E8);
  sub_19A7AA654();
  sub_19A7A9864();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC608) + 36));
  v8 = v10[1];
  *v7 = v10[0];
  v7[1] = v8;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_19A620438@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A7A9B34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FamilyVariantSelectorPopupView(0);
  sub_19A60F0CC(v1 + *(v10 + 36), v9, &qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A9954();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_19A620640(uint64_t a1@<X8>)
{
  v3 = sub_19A7A9D84();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19A7A9D94();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19A7AA624();
  sub_19A7A9E04();
  sub_19A7A98A4();
  v13 = v12;
  v41 = v12;
  v42 = v14;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  sub_19A7A9DF4();
  sub_19A7A98A4();
  v21 = v20;
  v44 = v22;
  v45 = v20;
  v23 = v22;
  v25 = v24;
  v43 = v24;
  v27 = v26;
  (*(v4 + 8))(v6, v3);
  if (*(v1 + 40))
  {
    v21 = v13;
    v23 = v15;
  }

  v28 = v17;
  if (*(v1 + 40))
  {
    v25 = v17;
    v29 = v19;
  }

  else
  {
    v29 = v27;
  }

  v46.origin.x = v21;
  v46.origin.y = v23;
  v46.size.width = v25;
  v46.size.height = v29;
  MidX = CGRectGetMidX(v46);
  v47.origin.x = v21;
  v47.origin.y = v23;
  v47.size.width = v25;
  v47.size.height = v29;
  MidY = CGRectGetMidY(v47);
  v32 = CGPointMake(MidX, MidY);
  v34 = v33;
  v35 = 262.0;
  if (v11)
  {
    v35 = 282.0;
  }

  v36 = v41;
  v37 = v42;
  sub_19A631B34(v35, v41, v42, v28, v19);
  *a1 = v36;
  *(a1 + 8) = v37;
  *(a1 + 16) = v28;
  *(a1 + 24) = v19;
  v38 = v44;
  *(a1 + 32) = v45;
  *(a1 + 40) = v38;
  *(a1 + 48) = v43;
  *(a1 + 56) = v27;
  *(a1 + 64) = v32;
  *(a1 + 72) = v34;
  *(a1 + 80) = v39;
}

__n128 sub_19A6208F0@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FamilyVariantSelectorPopupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_19A622B5C(v1, &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FamilyVariantSelectorPopupView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_19A622BC4(&v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for FamilyVariantSelectorPopupView);
  LOBYTE(v5) = sub_19A7A9F04();
  sub_19A7A9754();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24 = 0;
  sub_19A7AA654();
  sub_19A7A9864();
  *&v20[7] = v21;
  v16 = v24;
  *&v20[23] = v22;
  *&v20[39] = v23;
  *a1 = sub_19A622344;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  result = *v20;
  v18 = *&v20[16];
  v19 = *&v20[32];
  *(a1 + 104) = *&v20[47];
  *(a1 + 89) = v19;
  *(a1 + 73) = v18;
  *(a1 + 57) = result;
  return result;
}

uint64_t sub_19A620AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_19A7AA654();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC518);
  return sub_19A620B14(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_19A620B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a2;
  v135 = a3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC520);
  MEMORY[0x1EEE9AC00](v130);
  v108 = &v107 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC528);
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v107 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC530);
  v131 = *(v133 - 8);
  v7 = MEMORY[0x1EEE9AC00](v133);
  v110 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC538);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v134 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v107 - v13;
  v14 = sub_19A7A98B4();
  v124 = *(v14 - 8);
  v125 = v14;
  v128 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FamilyVariantSelectorPopupView(0);
  v143 = *(v16 - 8);
  v127 = *(v143 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v107 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v142 = &v107 - v19;
  v20 = type metadata accessor for DraggableLabel(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC540) - 8;
  v23 = MEMORY[0x1EEE9AC00](v126);
  v129 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v144 = &v107 - v25;
  v26 = *(a1 + 8);
  v140 = *a1;
  v137 = v26;
  *&v165 = v140;
  *(&v165 + 1) = v26;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC548);
  sub_19A7AA464();
  v27 = v171;
  swift_getKeyPath();
  *&v165 = v27;
  v136 = sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
  sub_19A7A90C4();

  v28 = *(v27 + 48);
  v171 = *(v27 + 32);
  v172 = v28;
  v173 = *(v27 + 64);
  v174 = *(v27 + 80);
  sub_19A60F01C(&v171, &v165);

  v165 = v171;
  v166 = v172;
  v167 = v173;
  LOWORD(v168) = v174;
  sub_19A7862FC(0);
  v30 = v29;
  v32 = v31;
  sub_19A60F078(&v171);
  v33 = *(a1 + 48);
  v121 = *(a1 + 56);
  v122 = v33;
  v120 = *(a1 + 64);
  v119 = *(a1 + 72);
  v138 = a1;
  *&v153 = v33;
  *(&v153 + 1) = v121;
  LOBYTE(v154) = v120;
  *(&v154 + 1) = v119;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC550);
  sub_19A7AA484();
  v115 = v165;
  v34 = v166;
  v35 = v167;
  *v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v37 = v22 + v20[5];
  *v37 = KeyPath;
  v37[8] = 0;
  v38 = v22 + v20[6];
  *v38 = swift_getKeyPath();
  *(v38 + 1) = 0;
  v38[16] = 0;
  v116 = v20;
  v117 = v22;
  v39 = (v22 + v20[7]);
  *v39 = v30;
  v39[1] = v32;
  v40 = v22 + v20[8];
  *v40 = v115;
  *(v40 + 1) = v34;
  v40[32] = v35;
  *(v22 + v20[9]) = 0;
  *(v22 + v20[10]) = 0;
  v41 = (v22 + v20[11]);
  *v41 = 0;
  v41[1] = 0;
  *&v115 = type metadata accessor for FamilyVariantSelectorPopupView;
  v42 = v142;
  sub_19A622B5C(a1, v142, type metadata accessor for FamilyVariantSelectorPopupView);
  v43 = v123;
  v44 = v124;
  v45 = v125;
  (*(v124 + 16))(v123, v141, v125);
  v46 = *(v143 + 80);
  v47 = (v46 + 16) & ~v46;
  v48 = v47 + v127;
  v143 = v46 | 7;
  v49 = (v47 + v127 + *(v44 + 80)) & ~*(v44 + 80);
  v50 = swift_allocObject();
  v114 = type metadata accessor for FamilyVariantSelectorPopupView;
  sub_19A622BC4(v42, v50 + v47, type metadata accessor for FamilyVariantSelectorPopupView);
  (*(v44 + 32))(v50 + v49, v43, v45);
  *v41 = sub_19A6223C4;
  v41[1] = v50;
  v51 = v137;
  *&v165 = v122;
  *(&v165 + 1) = v121;
  LOBYTE(v166) = v120;
  *(&v166 + 1) = v119;
  sub_19A7AA464();
  v165 = v153;
  LOBYTE(v166) = v154;
  v52 = v138;
  sub_19A622B5C(v138, v42, v115);
  v127 = v48;
  v53 = swift_allocObject();
  v128 = v47;
  sub_19A622BC4(v42, v53 + v47, v114);
  sub_19A622510(&qword_1EAFCAF18, type metadata accessor for DraggableLabel);
  sub_19A622558();
  v54 = v144;
  v55 = v52;
  v56 = v117;
  sub_19A7AA224();
  v57 = v140;

  sub_19A6225AC(v56);
  sub_19A7AA654();
  sub_19A7A9864();
  v58 = (v54 + *(v126 + 44));
  v59 = v163;
  *v58 = v162;
  v58[1] = v59;
  v58[2] = v164;
  *&v165 = v57;
  *(&v165 + 1) = v51;
  sub_19A7AA464();
  v60 = v153;
  swift_getKeyPath();
  *&v165 = v60;
  sub_19A7A90C4();

  LODWORD(v56) = *(v60 + 154);

  if (v56 == 1)
  {
    sub_19A620640(&v165);
    v61 = *(v55 + 32);
    LODWORD(v141) = *(v55 + 40);
    *&v153 = v57;
    *(&v153 + 1) = v51;
    sub_19A7AA464();
    v62 = v149;
    swift_getKeyPath();
    *&v153 = v62;
    sub_19A7A90C4();

    v63 = *(v62 + 88);

    *&v149 = v57;
    *(&v149 + 1) = v51;
    sub_19A7AA484();
    v64 = v153;
    v65 = v55;
    v66 = v154;
    swift_getKeyPath();
    v160 = v64;
    v161 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC568);
    sub_19A7AA544();

    v67 = v157;
    v126 = v158;
    v68 = v159;

    v69 = v107;
    sub_19A622B5C(v65, v107, type metadata accessor for FamilyVariantSelectorPopupView);
    v70 = (v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    sub_19A622BC4(v69, v71 + v128, type metadata accessor for FamilyVariantSelectorPopupView);
    v72 = v71 + v70;
    v73 = v168;
    *(v72 + 32) = v167;
    *(v72 + 48) = v73;
    *(v72 + 64) = v169;
    *(v72 + 80) = v170;
    v74 = v166;
    *v72 = v165;
    *(v72 + 16) = v74;
    if (sub_19A7AA624())
    {
      v75 = 10.0;
    }

    else
    {
      v75 = 3.0;
    }

    if (sub_19A7AA624())
    {
      v76 = 20.0;
    }

    else
    {
      v76 = 8.0;
    }

    v77 = v170;
    v78 = v63 != 1;
    v79 = swift_getKeyPath();
    v80 = v130;
    v81 = v108;
    *&v108[*(v130 + 76)] = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
    swift_storeEnumTagMultiPayload();
    *v81 = vdupq_n_s64(0x4043000000000000uLL);
    *(v81 + 1) = xmmword_19A7B7450;
    *(v81 + 4) = v61;
    *(v81 + 5) = 0x4000000000000000;
    *(v81 + 6) = v75;
    *(v81 + 7) = v76;
    v81[64] = v141;
    *(v81 + 9) = v77;
    v81[80] = v78;
    v82 = v126;
    *(v81 + 11) = v67;
    *(v81 + 12) = v82;
    v81[104] = v68;
    LOBYTE(v149) = 0;
    sub_19A7AA454();
    v83 = *(&v153 + 1);
    v81[112] = v153;
    *(v81 + 15) = v83;
    v84 = &v81[*(v80 + 80)];
    *v84 = sub_19A622608;
    v84[1] = v71;
    v85 = [objc_opt_self() defaultCenter];
    v86 = v81;
    if (qword_1EAFCABA8 != -1)
    {
      swift_once();
    }

    sub_19A7AB814();

    *&v153 = v140;
    *(&v153 + 1) = v137;
    sub_19A7AA464();
    v87 = v149;
    swift_getKeyPath();
    *&v153 = v87;
    sub_19A7A90C4();

    v88 = *(v87 + 48);
    v149 = *(v87 + 32);
    v150 = v88;
    v151 = *(v87 + 64);
    v152 = *(v87 + 80);
    sub_19A60F01C(&v149, &v153);

    v145 = v149;
    v146 = v150;
    v147 = v151;
    v148 = v152;
    v89 = v138;
    v90 = v142;
    sub_19A622B5C(v138, v142, type metadata accessor for FamilyVariantSelectorPopupView);
    v91 = swift_allocObject();
    v92 = v128;
    sub_19A622BC4(v90, v91 + v128, type metadata accessor for FamilyVariantSelectorPopupView);
    sub_19A623714(&qword_1EAFCC570, &qword_1EAFCC520);
    sub_19A622724();
    v93 = v111;
    sub_19A7AA224();

    v153 = v145;
    v154 = v146;
    v155 = v147;
    v156 = v148;
    sub_19A60F078(&v153);
    sub_19A5F2B54(v86, &qword_1EAFCC520);
    sub_19A622B5C(v89, v90, type metadata accessor for FamilyVariantSelectorPopupView);
    v94 = swift_allocObject();
    sub_19A622BC4(v90, v94 + v92, type metadata accessor for FamilyVariantSelectorPopupView);
    v95 = v110;
    (*(v112 + 32))(v110, v93, v113);
    v96 = v133;
    v97 = &v95[*(v133 + 36)];
    *v97 = 0;
    *(v97 + 1) = 0;
    *(v97 + 2) = sub_19A622778;
    *(v97 + 3) = v94;
    v98 = v95;
    v99 = v109;
    sub_19A62376C(v98, v109, &qword_1EAFCC530);
    v100 = v132;
    sub_19A62376C(v99, v132, &qword_1EAFCC530);
    (*(v131 + 56))(v100, 0, 1, v96);
  }

  else
  {
    v100 = v132;
    (*(v131 + 56))(v132, 1, 1, v133);
  }

  v101 = v144;
  v102 = v129;
  sub_19A60F0CC(v144, v129, &qword_1EAFCC540);
  v103 = v134;
  sub_19A60F0CC(v100, v134, &qword_1EAFCC538);
  v104 = v135;
  sub_19A60F0CC(v102, v135, &qword_1EAFCC540);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC560);
  sub_19A60F0CC(v103, v104 + *(v105 + 48), &qword_1EAFCC538);
  sub_19A5F2B54(v100, &qword_1EAFCC538);
  sub_19A5F2B54(v101, &qword_1EAFCC540);
  sub_19A5F2B54(v103, &qword_1EAFCC538);
  return sub_19A5F2B54(v102, &qword_1EAFCC540);
}

BOOL sub_19A621AC8(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v12 = *(a1 + 48);
  v13 = v2;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC550);
  sub_19A7AA464();
  result = 0;
  if (!v11)
  {
    sub_19A620640(&v12);
    if (vabdd_f64(v9, v15) > 131.0)
    {
      return 1;
    }

    v5 = *(a1 + 16);
    v6 = v5 * -0.5;
    v7 = v5 * 0.5;
    if (v10 < v6 || v7 < v10)
    {
      return 1;
    }
  }

  return result;
}

void sub_19A621BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != 1)
  {
    v3 = *(a2 + 8);
    if (v2 != 2 || (*a2 & 0xFFFFFFFFFFFFFFFDLL | v3) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC548);
      sub_19A7AA464();
      swift_getKeyPath();
      sub_19A622510(&qword_1EAFCAB50, type metadata accessor for FamilyVariantSelectorPopupViewModel);
      sub_19A7A90C4();

      v5 = *(v9 + 154);

      if (v5)
      {
        return;
      }

      sub_19A7AA464();
      sub_19A61B7D4(1);

      sub_19A7AA464();
      sub_19A61BC84();

      sub_19A786230();

      sub_19A7AA464();
      v6 = sub_19A61BC84();

      if ((*(v6 + 24) & 1) == 0)
      {
        sub_19A786230();
      }

      v7 = *(v6 + 16);
      [v7 selectionChanged];

      goto LABEL_10;
    }

    if (*a2 == 2 && v3 == 0)
    {
      sub_19A631724();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC548);
      sub_19A7AA464();
      sub_19A61B7D4(0);
LABEL_10:
    }
  }
}

uint64_t sub_19A621DAC@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC548);
  sub_19A7AA464();
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for FamilyVariantSelectorView(0);
  *(a3 + v6[5]) = v17;
  v7 = a3 + v6[6];
  sub_19A7AA454();
  *v7 = v18;
  v7[16] = v19;
  *(v7 + 3) = *(&v19 + 1);
  v8 = v6[7];
  sub_19A7AA454();
  *(a3 + v8) = v18;
  KeyPath = swift_getKeyPath();
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC580) + 36));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC588);
  sub_19A620438(v10 + *(v11 + 28));
  *v10 = KeyPath;
  sub_19A7AA654();
  sub_19A7A9864();
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC590) + 36));
  *v12 = v18;
  v12[1] = v19;
  v12[2] = v20;
  v13 = *(a2 + 80);
  v14 = a1[3] * -0.5 + -100.0 - a1[4];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC598);
  v16 = (a3 + *(result + 36));
  *v16 = v13;
  v16[1] = v14;
  return result;
}

uint64_t sub_19A621FB4()
{
  sub_19A631724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC548);
  sub_19A7AA464();
  sub_19A61B7D4(0);
}

void sub_19A62201C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC548);
  sub_19A7AA464();
  v0 = sub_19A61BC84();

  if (*(v0 + 24) == 1)
  {
    *(v0 + 24) = 0;
    [*(v0 + 16) userInteractionEnded];
    v1 = *(v0 + 16);
    *(v0 + 16) = 0;
  }

  else
  {
  }
}

void sub_19A6220DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 184) = *(v0 + 24);
  *(v1 + 192) = v2;
}

void sub_19A6220F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 168) = *(v0 + 24);
  *(v1 + 176) = v2;
}

void sub_19A622188()
{
  sub_19A6222C4(319, &unk_1EAFCA688, type metadata accessor for FamilyVariantSelectorPopupViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_19A62295C(319, &qword_1EAFCA6A8);
      if (v2 <= 0x3F)
      {
        sub_19A6222C4(319, &qword_1EAFCA820, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19A6222C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_19A622344@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for FamilyVariantSelectorPopupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_19A620AB4(a1, v6, a2);
}

BOOL sub_19A6223C4()
{
  v1 = *(type metadata accessor for FamilyVariantSelectorPopupView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_19A7A98B4();

  return sub_19A621AC8(v0 + v2);
}

void sub_19A622490(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FamilyVariantSelectorPopupView(0);

  sub_19A621BA0(a1, a2);
}

uint64_t sub_19A622510(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A622558()
{
  result = qword_1EAFCA970;
  if (!qword_1EAFCA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA970);
  }

  return result;
}

uint64_t sub_19A6225AC(uint64_t a1)
{
  v2 = type metadata accessor for DraggableLabel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A622608@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FamilyVariantSelectorPopupView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_19A621DAC((v1 + v4), v5, a1);
}

uint64_t sub_19A6226A4()
{
  type metadata accessor for FamilyVariantSelectorPopupView(0);

  return sub_19A621FB4();
}

unint64_t sub_19A622724()
{
  result = qword_1EAFCC578;
  if (!qword_1EAFCC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC578);
  }

  return result;
}

void sub_19A622778()
{
  type metadata accessor for FamilyVariantSelectorPopupView(0);

  sub_19A62201C();
}

uint64_t sub_19A6227F8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A622858()
{
  sub_19A6222C4(319, &unk_1EAFCA830, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FamilyVariantSelectorPopupViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_19A62295C(319, &qword_1EAFCA6A8);
      if (v2 <= 0x3F)
      {
        sub_19A62295C(319, &qword_1EAFCA670);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19A62295C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_19A7AA494();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_19A6229A8()
{
  result = qword_1EAFCC5B8;
  if (!qword_1EAFCC5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC5C0);
    sub_19A622A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC5B8);
  }

  return result;
}

unint64_t sub_19A622A34()
{
  result = qword_1EAFCC5C8;
  if (!qword_1EAFCC5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC5D0);
    sub_19A623714(&qword_1EAFCC5D8, &qword_1EAFCC5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC5C8);
  }

  return result;
}

unint64_t sub_19A622B08()
{
  result = qword_1EAFCC600;
  if (!qword_1EAFCC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC600);
  }

  return result;
}

uint64_t sub_19A622B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A622BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A622C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FamilyVariantSelectorView(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_19A61D6D8(a1, a2, v8, v9, a3);
}

unint64_t sub_19A622CE8()
{
  result = qword_1EAFCC648;
  if (!qword_1EAFCC648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC638);
    sub_19A622D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC648);
  }

  return result;
}

unint64_t sub_19A622D74()
{
  result = qword_1EAFCC650;
  if (!qword_1EAFCC650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC658);
    sub_19A623714(&qword_1EAFCC660, &qword_1EAFCC668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC650);
  }

  return result;
}

unint64_t sub_19A622EA4()
{
  result = qword_1EAFCC698;
  if (!qword_1EAFCC698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC690);
    sub_19A622F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC698);
  }

  return result;
}

unint64_t sub_19A622F30()
{
  result = qword_1EAFCC6A0;
  if (!qword_1EAFCC6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC6A8);
    sub_19A622510(&qword_1EAFCAF18, type metadata accessor for DraggableLabel);
    sub_19A623714(&qword_1EAFCC6B0, &qword_1EAFCC6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC6A0);
  }

  return result;
}

uint64_t objectdestroy_76Tm()
{
  v1 = *(type metadata accessor for FamilyVariantSelectorView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_19A7A97A4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A623160()
{
  type metadata accessor for FamilyVariantSelectorView(0);
  v1 = *(v0 + 16);

  return sub_19A61FA10(v1);
}

uint64_t sub_19A6231CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(type metadata accessor for FamilyVariantSelectorView(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_19A61DA20(a1, a2, a3, v11, v12, v4 + v10, v13, a4);
}

uint64_t sub_19A6232C8()
{
  v1 = *(type metadata accessor for FamilyVariantSelectorView(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_19A61DD54(v2, v3, v4, v5);
}

unint64_t sub_19A623340()
{
  result = qword_1EAFCC740;
  if (!qword_1EAFCC740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC738);
    sub_19A6233F8();
    sub_19A623714(&unk_1EAFCA6C0, &qword_1EAFCC7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC740);
  }

  return result;
}

unint64_t sub_19A6233F8()
{
  result = qword_1EAFCC748;
  if (!qword_1EAFCC748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC768);
    sub_19A6235A0();
    sub_19A623714(&qword_1EAFCC780, &qword_1EAFCC760);
    sub_19A62365C();
    swift_getOpaqueTypeConformance2();
    sub_19A623714(&qword_1EAFCC6B0, &qword_1EAFCC6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC748);
  }

  return result;
}

unint64_t sub_19A6235A0()
{
  result = qword_1EAFCC770;
  if (!qword_1EAFCC770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC758);
    sub_19A622510(&qword_1EAFCC778, type metadata accessor for NonDraggableLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC770);
  }

  return result;
}

unint64_t sub_19A62365C()
{
  result = qword_1EAFCC788;
  if (!qword_1EAFCC788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC768);
    sub_19A623714(&qword_1EAFCC790, &qword_1EAFCC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC788);
  }

  return result;
}

uint64_t sub_19A623714(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A62376C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A6237E4()
{
  result = qword_1EAFCC7C0;
  if (!qword_1EAFCC7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC5E8);
    sub_19A623714(&qword_1EAFCC5F8, &qword_1EAFCC5E8);
    sub_19A622B08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC7C0);
  }

  return result;
}

uint64_t sub_19A62394C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCC7D0);
  __swift_project_value_buffer(v0, qword_1EAFCC7D0);
  return sub_19A7A9374();
}

void sub_19A6239D0()
{
  if ([objc_opt_self() isMainThread])
  {
    if (qword_1EAFCB4F0 != -1)
    {
      swift_once();
    }

    v1 = sub_19A7A9384();
    __swift_project_value_buffer(v1, qword_1EAFCC7D0);
    oslog = sub_19A7A9364();
    v2 = sub_19A7AB584();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_19A5EE000, oslog, v2, "Trying to decode images in background on the main thread, bailing", v3, 2u);
      MEMORY[0x19A907A30](v3, -1, -1);
    }
  }

  else
  {
    v4 = OBJC_IVAR___STKAnimatedImage_images;
    v5 = *(v0 + OBJC_IVAR___STKAnimatedImage_images);
    if (v5 >> 62)
    {
      v6 = sub_19A7ABBE4();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v8 = v0;
      v14 = MEMORY[0x1E69E7CC0];

      sub_19A7ABD84();
      if (v6 < 0)
      {
        __break(1u);
        return;
      }

      v9 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x19A906130](v9, v5);
        }

        else
        {
          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        ++v9;
        v12 = [v10 itk_decodeInBackground];

        sub_19A7ABD64();
        sub_19A7ABD94();
        sub_19A7ABDA4();
        sub_19A7ABD74();
      }

      while (v6 != v9);

      v7 = v14;
      v0 = v8;
    }

    *(v0 + v4) = v7;
  }
}

id AnimatedImage.__allocating_init(data:maxCount:maxDimension:identifier:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v30 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v31 = objc_allocWithZone(v6);
  if (a3 <= 0)
  {
    v14 = 128;
  }

  else
  {
    v14 = a3;
  }

  if (a5 <= 0.0)
  {
    a5 = 1024.0;
  }

  v15 = objc_allocWithZone(STKImageData);
  sub_19A612F68(a1, a2);
  v16 = sub_19A7A8E14();
  v17 = [v15 initWithData_];

  v32 = a1;
  v33 = a2;
  sub_19A612F14(a1, a2);
  v18 = [v17 thumbnailsFitToSize:v14 maxCount:{CGPointMake(a5, a5)}];
  v19 = sub_19A7AB254();

  sub_19A623FB8(v19, &unk_1EAFCC1A0);

  v20 = [v17 durationsWithMaxCount_];
  v21 = sub_19A7AB254();

  sub_19A623FB8(v21, &qword_1ED8B1FE0);

  sub_19A5F5028(0, &unk_1EAFCC1A0);
  v22 = sub_19A7AB234();

  v23 = v30;
  sub_19A5F5028(0, &qword_1ED8B1FE0);
  v24 = sub_19A7AB234();

  sub_19A6240BC(v23, v13);
  v25 = sub_19A7A8F64();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v13, 1, v25) != 1)
  {
    v27 = sub_19A7A8F24();
    (*(v26 + 8))(v13, v25);
  }

  v28 = [v31 initWithImages:v22 durations:v24 identifier:{v27, v30}];

  sub_19A612F14(v32, v33);
  sub_19A62412C(v23);
  return v28;
}

id AnimatedImage.init(data:maxCount:maxDimension:identifier:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = sub_19A625940(a1, a2, a3, a4, a5);
  sub_19A612F14(a1, a2);
  return v7;
}

uint64_t sub_19A623FB8(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_19A7ABD84();
    v6 = a1 + 32;
    do
    {
      sub_19A6120B4(v6, &v7);
      sub_19A5F5028(0, a2);
      swift_dynamicCast();
      sub_19A7ABD64();
      sub_19A7ABD94();
      sub_19A7ABDA4();
      sub_19A7ABD74();
      v6 += 32;
      --v3;
    }

    while (v3);
    return v8;
  }

  return result;
}

uint64_t sub_19A6240BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A62412C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_19A624194(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_19A7ABBE4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_19A65AF14(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x19A906130](i, a1);
        type metadata accessor for ImageGlyph(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_19A65AF14((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_19A625DC4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for ImageGlyph(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_19A65AF14((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_19A625DC4(v12, (v3 + 32 * v11 + 32));
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

char *AnimatedImage.init(images:durations:identifier:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - v8;
  v10 = OBJC_IVAR___STKAnimatedImage_images;
  v11 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___STKAnimatedImage_images] = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR___STKAnimatedImage_durations;
  *&v3[OBJC_IVAR___STKAnimatedImage_durations] = v11;
  v13 = &v3[OBJC_IVAR___STKAnimatedImage_size];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v3[v10] = a1;
  *&v3[v12] = a2;
  v14 = OBJC_IVAR___STKAnimatedImage_identifier;

  sub_19A6240BC(a3, &v3[v14]);
  v15 = type metadata accessor for AnimatedImage();
  v44.receiver = v3;
  v44.super_class = v15;
  v16 = objc_msgSendSuper2(&v44, sel_init);
  v17 = OBJC_IVAR___STKAnimatedImage_images;
  v18 = *&v16[OBJC_IVAR___STKAnimatedImage_images];
  if (v18 >> 62)
  {
    if (sub_19A7ABBE4() < 1)
    {
      goto LABEL_16;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_16;
  }

  v19 = OBJC_IVAR___STKAnimatedImage_durations;
  v20 = *&v16[OBJC_IVAR___STKAnimatedImage_durations];
  if (v20 >> 62)
  {
    if (sub_19A7ABBE4() < 1)
    {
      goto LABEL_16;
    }
  }

  else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_16;
  }

  v21 = *&v16[v17];
  if (v21 >> 62)
  {
    v22 = sub_19A7ABBE4();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = *&v16[v19];
  if (v23 >> 62)
  {
    if (v22 == sub_19A7ABBE4())
    {
      goto LABEL_9;
    }
  }

  else if (v22 == *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    v24 = v16;
    sub_19A62412C(a3);

    return v16;
  }

LABEL_16:
  sub_19A6240BC(a3, v9);
  v25 = sub_19A7A8F64();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v9, 1, v25);
  v28 = v16;
  if (v27 == 1)
  {
    sub_19A62412C(v9);
    v29 = 0xE300000000000000;
    v42 = 7104878;
  }

  else
  {
    v42 = sub_19A7A8F14();
    v29 = v30;
    (*(v26 + 8))(v9, v25);
  }

  if (qword_1EAFCB4F0 != -1)
  {
    swift_once();
  }

  v31 = sub_19A7A9384();
  __swift_project_value_buffer(v31, qword_1EAFCC7D0);

  v32 = sub_19A7A9364();
  v33 = sub_19A7AB584();

  if (os_log_type_enabled(v32, v33))
  {
    v41 = v28;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 134218498;
    if (a1 >> 62)
    {
      v36 = sub_19A7ABBE4();
    }

    else
    {
      v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v34 + 4) = v36;

    *(v34 + 12) = 2048;
    if (a2 >> 62)
    {
      v37 = sub_19A7ABBE4();
    }

    else
    {
      v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v34 + 14) = v37;

    *(v34 + 22) = 2080;
    v38 = sub_19A62540C(v42, v29, &v43);

    *(v34 + 24) = v38;
    _os_log_impl(&dword_19A5EE000, v32, v33, "Error with animated image count:%ld, duration count: %ld, identifier %s", v34, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x19A907A30](v35, -1, -1);
    MEMORY[0x19A907A30](v34, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  sub_19A62412C(a3);
  return v16;
}

id AnimatedImage.__allocating_init(url:maxCount:maxDimension:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = objc_allocWithZone(v5);
  v23 = sub_19A7A8E04();
  v15 = v14;
  v16 = sub_19A7A8E14();
  sub_19A6240BC(a3, v12);
  v17 = sub_19A7A8F64();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v12, 1, v17) != 1)
  {
    v19 = sub_19A7A8F24();
    (*(v18 + 8))(v12, v17);
  }

  v20 = [v13 initWithData:v16 maxCount:a2 maxDimension:v19 identifier:a4];
  sub_19A612F14(v23, v15);

  sub_19A62412C(a3);
  v21 = sub_19A7A8DF4();
  (*(*(v21 - 8) + 8))(a1, v21);
  result = v20;
  if (!v20)
  {
    return 0;
  }

  return result;
}

id AnimatedImage.init(url:maxCount:maxDimension:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v22 = sub_19A7A8E04();
  v14 = v13;
  v15 = sub_19A7A8E14();
  sub_19A6240BC(a3, v12);
  v16 = sub_19A7A8F64();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v12, 1, v16) != 1)
  {
    v18 = sub_19A7A8F24();
    (*(v17 + 8))(v12, v16);
  }

  v19 = [v5 initWithData:v15 maxCount:a2 maxDimension:v18 identifier:a4];
  sub_19A612F14(v22, v14);

  sub_19A62412C(a3);
  v20 = sub_19A7A8DF4();
  (*(*(v20 - 8) + 8))(a1, v20);
  result = v19;
  if (!v19)
  {
    return 0;
  }

  return result;
}

id AnimatedImage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnimatedImage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedImage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A6252DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_19A625328@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_19A625358(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_19A625378(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_19A6253B0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_19A62540C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_19A62540C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19A6254D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_19A6120B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_19A6254D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_19A6255E4(a5, a6);
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
    result = sub_19A7ABD44();
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

uint64_t sub_19A6255E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_19A625630(a1, a2);
  sub_19A625760(&unk_1F0DC48A0);
  return v3;
}

uint64_t sub_19A625630(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19A76CB78(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19A7ABD44();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19A7AB0E4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19A76CB78(v10, 0);
        result = sub_19A7ABCA4();
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

uint64_t sub_19A625760(uint64_t result)
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

  result = sub_19A62584C(result, v11, 1, v3);
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

char *sub_19A62584C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

id sub_19A625940(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v28[0] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - v10;
  if (a3 <= 0)
  {
    v12 = 128;
  }

  else
  {
    v12 = a3;
  }

  if (a5 <= 0.0)
  {
    a5 = 1024.0;
  }

  v13 = objc_allocWithZone(STKImageData);
  sub_19A612F68(a1, a2);
  v14 = sub_19A7A8E14();
  v15 = [v13 initWithData_];

  sub_19A612F14(a1, a2);
  v16 = [v15 thumbnailsFitToSize:v12 maxCount:{CGPointMake(a5, a5)}];
  v17 = sub_19A7AB254();

  sub_19A623FB8(v17, &unk_1EAFCC1A0);

  v18 = [v15 durationsWithMaxCount_];
  v19 = sub_19A7AB254();

  sub_19A623FB8(v19, &qword_1ED8B1FE0);

  sub_19A5F5028(0, &unk_1EAFCC1A0);
  v20 = sub_19A7AB234();

  v21 = v28[0];
  sub_19A5F5028(0, &qword_1ED8B1FE0);
  v22 = sub_19A7AB234();

  sub_19A6240BC(v21, v11);
  v23 = sub_19A7A8F64();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v11, 1, v23) != 1)
  {
    v25 = sub_19A7A8F24();
    (*(v24 + 8))(v11, v23);
  }

  v26 = [v28[1] initWithImages:v20 durations:v22 identifier:{v25, v28[0]}];

  sub_19A62412C(v21);
  return v26;
}

uint64_t type metadata accessor for AnimatedImage()
{
  result = qword_1EAFCC7F8;
  if (!qword_1EAFCC7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A625C98()
{
  sub_19A625D6C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A625D6C()
{
  if (!qword_1ED8B3718)
  {
    sub_19A7A8F64();
    v0 = sub_19A7ABA94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8B3718);
    }
  }
}

_OWORD *sub_19A625DC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id RemoteStickerEffectEditorViewController.__allocating_init(stickerIdentifier:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___STKRemoteStickerEffectEditorViewController_stickerIdentifier;
  sub_19A7A8F54();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v5 = sub_19A7A8F64();
  v6 = *(v5 - 8);
  (*(v6 + 24))(&v3[v4], a1, v5);
  swift_endAccess();
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id RemoteStickerEffectEditorViewController.init(stickerIdentifier:)(uint64_t a1)
{
  v3 = OBJC_IVAR___STKRemoteStickerEffectEditorViewController_stickerIdentifier;
  sub_19A7A8F54();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v4 = sub_19A7A8F64();
  v5 = *(v4 - 8);
  (*(v5 + 24))(&v1[v3], a1, v4);
  swift_endAccess();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RemoteStickerEffectEditorViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for RemoteStickerEffectEditorViewController()
{
  result = qword_1EAFCC820;
  if (!qword_1EAFCC820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A626250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE530);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = [objc_allocWithZone(type metadata accessor for LocalStickerEffectEditorViewControllerConfiguration()) init];
  v8 = OBJC_IVAR___STKRemoteStickerEffectEditorViewController_stickerIdentifier;
  swift_beginAccess();
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, v0 + v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  swift_beginAccess();
  sub_19A6264EC(v6, v7 + v11);
  swift_endAccess();
  sub_19A7AB864();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE540);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {

    return sub_19A5F783C(v3);
  }

  else
  {
    swift_getOpaqueTypeConformance2();
    sub_19A62655C();
    sub_19A7A9504();
    return (*(v13 + 8))(v3, v12);
  }
}

uint64_t sub_19A6264EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A62655C()
{
  result = qword_1EAFCC818;
  if (!qword_1EAFCC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC818);
  }

  return result;
}

uint64_t sub_19A6266B0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_19A626710(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___STKRemoteStickerEffectEditorViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_19A6267A8;
}

void sub_19A6267A8(void **a1, char a2)
{
  v3 = *a1;
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

void *sub_19A626828()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result stickerEffectEditorViewControllerControllerDidTapDone];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_19A6268F4(char a1, double a2, double a3, double a4, double a5)
{
  *&v7 = a2;
  *(&v7 + 1) = a3;
  v8 = a4;
  v9 = a5;
  v10 = a1;
  v5 = sub_19A626D64(0, &v7, 0, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  [v6 sendAction_];
}

id RemoteStickerEffectEditorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t sub_19A626B40()
{
  v1 = OBJC_IVAR___STKRemoteStickerEffectEditorViewController_stickerIdentifier;
  v2 = sub_19A7A8F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR___STKRemoteStickerEffectEditorViewController_delegate;

  return sub_19A601244(v3);
}

id RemoteStickerEffectEditorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteStickerEffectEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A626C6C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  *a1 = v3;
  return result;
}

uint64_t sub_19A626CEC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_19A7AB654();
}

id sub_19A626D64(uint64_t a1, __int128 *a2, char a3, char a4)
{
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  v22 = *(a2 + 32);
  v7 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  if (a3)
  {
    v8 = sub_19A7A8CA4();
    swift_allocObject();
    v9 = sub_19A7A8C94();
    v10 = &unk_1EAFCB0B0;
    v11 = MEMORY[0x1E69689D8];
  }

  else
  {
    v8 = sub_19A7A8B84();
    swift_allocObject();
    v9 = sub_19A7A8B74();
    v10 = &unk_1ED8B3400;
    v11 = MEMORY[0x1E6968010];
  }

  v19[3] = v8;
  v19[4] = sub_19A6272BC(v10, v11);
  v19[0] = v9;
  __swift_project_boxed_opaque_existential_1(v19, v8);
  sub_19A627268();
  sub_19A7A9644();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v12 = sub_19A7A8E14();
  [v7 setObject:v12 forSetting:1];

  if (a4)
  {
    v13 = [objc_opt_self() _synchronizedDrawingFence];
    [v7 setObject:v13 forSetting:2];
    sub_19A612F14(v17, v18);
  }

  else
  {
    sub_19A612F14(v17, v18);
  }

  v14 = sub_19A7AB4B4();
  [v7 setObject:v14 forSetting:0];

  type metadata accessor for StickerEffectEditorViewControllerHostToClientAction();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v7 responder:0];

  return v15;
}

uint64_t sub_19A627088()
{
  result = sub_19A7A8F64();
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

unint64_t sub_19A627268()
{
  result = qword_1EAFCC830;
  if (!qword_1EAFCC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCC830);
  }

  return result;
}

uint64_t sub_19A6272BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A627304()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCAB00);
  __swift_project_value_buffer(v0, qword_1EAFCAB00);
  return sub_19A7A9374();
}

uint64_t sub_19A627384()
{
  v1 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___alignmentEdges;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___alignmentEdges))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___alignmentEdges);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration) == 1)
    {
      sub_19A6297FC();
    }

    else
    {
      sub_19A6295A8();
    }

    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

uint64_t sub_19A627404()
{
  v1 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___isolationEdges;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___isolationEdges))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___isolationEdges);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 129) == 1)
    {
      v2 = sub_19A628080();
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_19A627494@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_cachedAttributes;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16) && (result = sub_19A695730(0x7FFFFFFFFFFFFFFFLL), (v7 & 1) != 0))
  {
    v8 = *(*(v6 + 56) + 8 * result);
    result = v8;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_19A62751C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = a2;
  sub_19A730034(a2, 0x7FFFFFFFFFFFFFFFLL);
  return swift_endAccess();
}

double sub_19A627590()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 16);
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
  v3 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
  v4 = sub_19A711D4C();
  if (v1 == 1)
  {
    v7.size.width = v4;
    v7.size.height = v5;
    v7.origin.x = v2;
    v7.origin.y = v3;
    return CGRectGetMaxX(v7) - *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize);
  }

  return v2;
}

void sub_19A627640(uint64_t a1@<X0>, void *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_cachedAttributes;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v22 = MEMORY[0x1E69E7CC0];
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      *a2 = v22;
      return;
    }

    v15 = *(v12 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = *(*(v12 + 56) + ((v18 << 9) | (8 * v19)));
        [v20 frame];
        v24.origin.x = a3;
        v24.origin.y = a4;
        v24.size.width = a5;
        v24.size.height = a6;
        if (CGRectIntersectsRect(v23, v24))
        {
          sub_19A7ABD64();
          sub_19A7ABD94();
          sub_19A7ABDA4();
          sub_19A7ABD74();
          v17 = v18;
          if (!v15)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v17 = v18;
          if (!v15)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v18 = v17;
      }
    }
  }

  __break(1u);
}

uint64_t sub_19A6277E4(CGFloat a1, CGFloat a2)
{
  v5 = 0;
  v41 = sub_19A7A9094();
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize);
  v10 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize + 8);
  v11 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
  v12 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
  v44.size.width = sub_19A711D4C();
  v44.size.height = v13;
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = v9;
  v43.size.height = v10;
  v44.origin.x = v11;
  v44.origin.y = v12;
  v14 = CGRectIntersectsRect(v43, v44);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    sub_19A629338();
    v16 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock);
    v18 = MEMORY[0x1EEE9AC00](v17);
    *(&v38 - 6) = v2;
    *(&v38 - 5) = a1;
    *(&v38 - 4) = a2;
    *(&v38 - 3) = v9;
    *(&v38 - 2) = v10;
    MEMORY[0x1EEE9AC00](v18);
    *(&v38 - 2) = sub_19A62B8D0;
    *(&v38 - 1) = v19;
    os_unfair_lock_lock(v16 + 4);
    sub_19A60EFE4(&v42);
    os_unfair_lock_unlock(v16 + 4);
    v20 = v42;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  if (v20 >> 62)
  {
    v35 = v20;
    v21 = sub_19A7ABBE4();
    v20 = v35;
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_16:

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_6:
  v22 = v20;
  v42 = v15;
  sub_19A659B5C(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v23 = 0;
  v24 = v42;
  v25 = v22;
  v39 = 0;
  v40 = v22 & 0xC000000000000001;
  v26 = (v6 + 8);
  v27 = v25;
  do
  {
    v28 = v21;
    if (v40)
    {
      v29 = MEMORY[0x19A906130](v23);
    }

    else
    {
      v29 = *(v25 + 8 * v23 + 32);
    }

    v30 = v29;
    v31 = [v29 indexPath];
    sub_19A7A9024();

    v32 = sub_19A7A9044();
    (*v26)(v8, v41);
    v42 = v24;
    v34 = *(v24 + 2);
    v33 = *(v24 + 3);
    if (v34 >= v33 >> 1)
    {
      sub_19A659B5C((v33 > 1), v34 + 1, 1);
      v24 = v42;
    }

    ++v23;
    *(v24 + 2) = v34 + 1;
    *&v24[8 * v34 + 32] = v32;
    v21 = v28;
    v25 = v27;
  }

  while (v28 != v23);

  v5 = v39;
LABEL_17:
  v42 = v24;

  sub_19A629D5C(&v42);
  if (v5)
  {
LABEL_23:

    __break(1u);
    return result;
  }

  if (*(v42 + 2))
  {
    v36 = *(v42 + 4);
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

uint64_t sub_19A627B84(double a1)
{
  v3 = sub_19A627384();
  v4 = *(v3 + 16);
  if (v4)
  {
    v43 = MEMORY[0x1E69E7CC0];
    v5 = v3;
    sub_19A65AD68(0, v4, 0);
    v6 = v5;
    v7 = v43;
    v8 = *(v43 + 16);
    v9 = 32;
    do
    {
      v10 = *(v6 + v9);
      v43 = v7;
      v11 = *(v7 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_19A65AD68((v11 > 1), v8 + 1, 1);
        v6 = v5;
        v7 = v43;
      }

      *(v7 + 16) = v8 + 1;
      *(v7 + 8 * v8 + 32) = v10 - a1;
      v9 += 8;
      ++v8;
      --v4;
    }

    while (v4);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EAFCAAF8 != -1)
  {
    swift_once();
  }

  v12 = sub_19A7A9384();
  __swift_project_value_buffer(v12, qword_1EAFCAB00);
  v13 = v1;
  v14 = sub_19A7A9364();
  v15 = sub_19A7AB574();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v43 = v17;
    *v16 = 134218242;
    *(v16 + 4) = *&v13[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_sectionIndex];

    *(v16 + 12) = 2080;

    v19 = MEMORY[0x19A9056A0](v18, MEMORY[0x1E69E7DE0]);
    v21 = v20;

    v22 = sub_19A62540C(v19, v21, &v43);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_19A5EE000, v14, v15, "Section %ld Edges: %s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x19A907A30](v17, -1, -1);
    MEMORY[0x19A907A30](v16, -1, -1);
  }

  else
  {
  }

  v23 = v13;

  v24 = sub_19A7A9364();
  v25 = sub_19A7AB574();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v43 = v27;
    *v26 = 134218498;
    *(v26 + 4) = *&v23[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_sectionIndex];

    *(v26 + 12) = 2048;
    *(v26 + 14) = a1;
    *(v26 + 22) = 2080;
    v28 = MEMORY[0x19A9056A0](v7, MEMORY[0x1E69E7DE0]);
    v30 = sub_19A62540C(v28, v29, &v43);

    *(v26 + 24) = v30;
    _os_log_impl(&dword_19A5EE000, v24, v25, "Section %ld Proposed target: %f with offsets %s", v26, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x19A907A30](v27, -1, -1);
    MEMORY[0x19A907A30](v26, -1, -1);
  }

  else
  {
  }

  v31 = v23;

  v32 = sub_19A7A9364();
  v33 = sub_19A7AB574();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 134218242;
    *(v34 + 4) = *&v31[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_sectionIndex];

    *(v34 + 12) = 2080;
    v42 = v7;

    sub_19A629E90(&v42);
    v36 = MEMORY[0x19A9056A0](v42, MEMORY[0x1E69E7DE0]);
    v38 = v37;

    v39 = sub_19A62540C(v36, v38, &v43);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_19A5EE000, v32, v33, "Section %ld Sorted offsets: %s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x19A907A30](v35, -1, -1);
    MEMORY[0x19A907A30](v34, -1, -1);
  }

  else
  {
  }

  v40 = sub_19A6D6650(v7);

  return v40;
}

uint64_t sub_19A628080()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 128) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*v1 == 1)
  {
    v2 = *(v1 + 104) - *(v1 + 72);
    v3 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_19A7B6C20;
    v5 = (v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
    v7 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
    v6 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
    v8 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver);
    v9 = sub_19A711D4C();
    v11 = v10;
    v12 = v7;
    v13 = v6;
    if (v3 == 1)
    {
      *(v4 + 32) = CGRectGetMaxY(*&v12) - v2;
      v28.origin.x = *v5;
      v28.origin.y = v5[1];
      v28.size.width = *(v8 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize);
      v28.size.height = *(v8 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize + 8);
      MinY = CGRectGetMinY(v28);
    }

    else
    {
      *(v4 + 32) = CGRectGetMinY(*&v12);
      v30.origin.x = *v5;
      v30.origin.y = v5[1];
      v30.size.width = *(v8 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize);
      v30.size.height = *(v8 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize + 8);
      MinY = CGRectGetMaxY(v30) - v2;
    }
  }

  else
  {
    v15 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_19A7B6C20;
    v16 = (v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
    v18 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
    v17 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
    v19 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver);
    v20 = sub_19A711D4C();
    v22 = v21;
    v23 = v18;
    v24 = v17;
    if (v15 == 1)
    {
      *(v4 + 32) = CGRectGetMaxX(*&v23);
      v29.origin.x = *v16;
      v29.origin.y = v16[1];
      v29.size.width = *(v19 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize);
      v29.size.height = *(v19 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize + 8);
      MinY = CGRectGetMinX(v29);
    }

    else
    {
      *(v4 + 32) = CGRectGetMinX(*&v23);
      v31.origin.x = *v16;
      v31.origin.y = v16[1];
      v31.size.width = *(v19 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize);
      v31.size.height = *(v19 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize + 8);
      MinY = CGRectGetMaxX(v31);
    }
  }

  *(v4 + 40) = MinY;
  if (*(v1 + 129))
  {
    return v4;
  }

  sub_19A629FCC(v4, v4 + 32, 0, 3uLL);
  v27 = v26;

  return v27;
}

void sub_19A62829C(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = 0.0;
  if (*(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 128) == 1)
  {
    v8 = a3;
    v9 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize);
    v10 = v9 + a3;
    if (v9 + a3 < a3)
    {
      __break(1u);
      goto LABEL_32;
    }

    v5 = a4;
    v12 = sub_19A628080();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = 32;
      while (1)
      {
        v15 = *(v12 + v14);
        if (v15 >= v8 && v15 < v10)
        {
          break;
        }

        v14 += 8;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      v10 = (v15 - v8) / v9;
      if (v10 < 0.25)
      {
LABEL_14:
        v7 = v15 - v8 + v8;
        if (qword_1EAFCAAF8 == -1)
        {
LABEL_15:
          v7 = ceil(v7);
          v18 = sub_19A7A9384();
          __swift_project_value_buffer(v18, qword_1EAFCAB00);
          v19 = sub_19A7A9364();
          v20 = sub_19A7AB574();
          if (!os_log_type_enabled(v19, v20))
          {
LABEL_30:

            v17 = 1;
            goto LABEL_12;
          }

          v21 = swift_slowAlloc();
          *v21 = 134218496;
          *(v21 + 4) = v10;
          *(v21 + 12) = 2048;
          *(v21 + 14) = v8;
          *(v21 + 22) = 2048;
          *(v21 + 24) = v7;
          v22 = "Snapping to left %f target: %f modifiedtarget: %f";
LABEL_29:
          _os_log_impl(&dword_19A5EE000, v19, v20, v22, v21, 0x20u);
          MEMORY[0x19A907A30](v21, -1, -1);
          goto LABEL_30;
        }

LABEL_32:
        swift_once();
        goto LABEL_15;
      }

      if (a1)
      {
        if (a1 == 2 && v10 >= 0.25 && v10 < 0.75)
        {
          goto LABEL_14;
        }
      }

      else if (v10 <= 0.5)
      {
        goto LABEL_14;
      }

      v24 = v8 - v9 * (1.0 - v10) - (*(*(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver) + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 64) + *(*(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver) + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 80));
      if (qword_1EAFCAAF8 != -1)
      {
        swift_once();
      }

      v7 = ceil(v24);
      v25 = sub_19A7A9384();
      __swift_project_value_buffer(v25, qword_1EAFCAB00);
      v19 = sub_19A7A9364();
      v20 = sub_19A7AB574();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_30;
      }

      v21 = swift_slowAlloc();
      *v21 = 134218496;
      *(v21 + 4) = v10;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v8;
      *(v21 + 22) = 2048;
      *(v21 + 24) = v7;
      v22 = "Snapping to right screen edge %f target: %f modifiedtarget: %f";
      goto LABEL_29;
    }

LABEL_10:
  }

  v17 = 3;
  v8 = 0.0;
  v5 = 0.0;
LABEL_12:
  *a2 = v7;
  *(a2 + 8) = v5;
  *(a2 + 16) = v17;
  *(a2 + 24) = v8;
  *(a2 + 32) = v5;
}

void sub_19A628584(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = 0uLL;
  if (*(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 128) == 1)
  {
    v8 = *(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_viewSize + 8);
    v9 = v8 + a4;
    if (v8 + a4 < a4)
    {
      __break(1u);
      goto LABEL_32;
    }

    v27 = a3;
    v11 = sub_19A628080();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 32;
      while (1)
      {
        v14 = *(v11 + v13);
        if (v14 >= a4 && v14 < v9)
        {
          break;
        }

        v13 += 8;
        if (!--v12)
        {
          goto LABEL_10;
        }
      }

      v9 = (v14 - a4) / v8;
      if (v9 < 0.25)
      {
LABEL_13:
        v8 = v14 - a4 + a4 + (*(*(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver) + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 56) + *(*(v4 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver) + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 72)) * -0.5;
        if (qword_1EAFCAAF8 == -1)
        {
LABEL_14:
          v26 = ceil(v8);
          v17 = sub_19A7A9384();
          __swift_project_value_buffer(v17, qword_1EAFCAB00);
          v18 = sub_19A7A9364();
          v19 = sub_19A7AB574();
          if (!os_log_type_enabled(v18, v19))
          {
LABEL_29:

            *&v25 = v27;
            *(&v25 + 1) = v26;
            v16 = 1;
            v7 = v25;
            goto LABEL_30;
          }

          v20 = swift_slowAlloc();
          *v20 = 134218496;
          *(v20 + 4) = v9;
          *(v20 + 12) = 2048;
          *(v20 + 14) = a4;
          *(v20 + 22) = 2048;
          *(v20 + 24) = v26;
          v21 = "Snapping to top %f target: %f modifiedtarget: %f";
LABEL_28:
          _os_log_impl(&dword_19A5EE000, v18, v19, v21, v20, 0x20u);
          MEMORY[0x19A907A30](v20, -1, -1);
          goto LABEL_29;
        }

LABEL_32:
        swift_once();
        goto LABEL_14;
      }

      if (a1)
      {
        if (a1 == 4 && v9 >= 0.25 && v9 < 0.75)
        {
          goto LABEL_13;
        }
      }

      else if (v9 <= 0.5)
      {
        goto LABEL_13;
      }

      v23 = a4 - v8 * (1.0 - v9);
      if (qword_1EAFCAAF8 != -1)
      {
        swift_once();
      }

      v26 = ceil(v23);
      v24 = sub_19A7A9384();
      __swift_project_value_buffer(v24, qword_1EAFCAB00);
      v18 = sub_19A7A9364();
      v19 = sub_19A7AB574();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_29;
      }

      v20 = swift_slowAlloc();
      *v20 = 134218496;
      *(v20 + 4) = v9;
      *(v20 + 12) = 2048;
      *(v20 + 14) = a4;
      *(v20 + 22) = 2048;
      *(v20 + 24) = v26;
      v21 = "Snapping to bottom %f target: %f modifiedtarget: %f";
      goto LABEL_28;
    }

LABEL_10:

    v16 = 3;
    a4 = 0.0;
    v7 = 0uLL;
  }

  else
  {
    v16 = 3;
    a4 = 0.0;
  }

LABEL_30:
  *a2 = v7;
  *(a2 + 16) = v16;
  *(a2 + 24) = v7;
  *(a2 + 32) = a4;
}

unint64_t sub_19A6288A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_cachedAttributes;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (*(v8 + 16) && (result = sub_19A695730(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v8 + 56) + 8 * result);
    result = v10;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

id sub_19A628934(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  if (*(*(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver) + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_maxItemCount) > a1)
  {
    v9 = sub_19A712018(a1);
    sub_19A711F04(v9);
    MEMORY[0x19A903470](a1, *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_sectionIndex));
    v10 = sub_19A7A9014();
    v11 = [objc_opt_self() layoutAttributesForCellWithIndexPath_];

    (*(v5 + 8))(v7, v4);
    v12 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_dataSource);
    v13 = *(v12 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
    if (v13)
    {
      v14 = *(v12 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
    }

    else
    {
      v14 = *(v12 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
    }

    swift_beginAccess();
    v15 = v13;

    UIPointRoundToScale();
    v17 = v16;
    v19 = v18;
    UIRectIntegralWithScale();
    v21 = v20;
    v23 = v22;
    [v11 setFrame_];
    [v11 setBounds_];
    if (qword_1EAFCAAF8 != -1)
    {
      swift_once();
    }

    v24 = sub_19A7A9384();
    __swift_project_value_buffer(v24, qword_1EAFCAB00);
    v8 = v11;
    v25 = sub_19A7A9364();
    v26 = sub_19A7AB574();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      v29 = [v8 debugDescription];
      v30 = sub_19A7AB014();
      v32 = v31;

      v33 = sub_19A62540C(v30, v32, &v41);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_19A5EE000, v25, v26, "Setting Attributes %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x19A907A30](v28, -1, -1);
      MEMORY[0x19A907A30](v27, -1, -1);
    }

    v34 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock);
    v36 = MEMORY[0x1EEE9AC00](v35);
    *(&v40 - 4) = v2;
    *(&v40 - 3) = a1;
    *(&v40 - 2) = v8;
    MEMORY[0x1EEE9AC00](v36);
    *(&v40 - 2) = sub_19A62C0FC;
    *(&v40 - 1) = v37;
    os_unfair_lock_lock(v34 + 4);
    sub_19A5F57B8(v38);
    os_unfair_lock_unlock(v34 + 4);
  }

  return v8;
}

uint64_t sub_19A628D80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_cachedAttributes;
  swift_beginAccess();
  v7 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_19A64FF84(v7, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v10;
  return swift_endAccess();
}

uint64_t sub_19A628E28()
{
  v1 = v0;
  v2 = sub_19A7A9094();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_numberOfItems);
  MEMORY[0x19A903470](0, *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_sectionIndex));
  v7 = sub_19A7AAFE4();

  v8 = sub_19A7A9014();
  v9 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v7 withIndexPath:v8];

  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v10 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver);
    v11 = *(v10 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 120);
    if (!*(v11 + 16))
    {

      return 0;
    }

    v12 = *(v11 + 32);
    if (*(v10 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
    {
      v13 = &OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfItems;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_maxItemCount;
    }

    v14 = *(v10 + *v13);
    if (v12 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = sub_19A712134(v15);
    v17 = sub_19A711F04(v16);
    v19 = v18;
    v21 = v20;
    [v9 setFrame_];
    [v9 setBounds_];
    if (qword_1EAFCAAF8 != -1)
    {
      swift_once();
    }

    v23 = sub_19A7A9384();
    __swift_project_value_buffer(v23, qword_1EAFCAB00);
    v24 = v9;
    v25 = sub_19A7A9364();
    v26 = sub_19A7AB574();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50[0] = v28;
      *v27 = 136315138;
      v29 = [v24 debugDescription];
      v30 = sub_19A7AB014();
      v32 = v31;

      v33 = sub_19A62540C(v30, v32, v50);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_19A5EE000, v25, v26, "Setting Supplementary attributes %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x19A907A30](v28, -1, -1);
      MEMORY[0x19A907A30](v27, -1, -1);
    }
  }

  else
  {
    v35 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
    v36 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
    v37 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver);
    v38 = sub_19A711D4C();
    [v9 setFrame_];
    v34 = [v9 setBounds_];
  }

  v40 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock);
  v41 = MEMORY[0x1EEE9AC00](v34);
  v50[-2] = v1;
  v50[-1] = v9;
  MEMORY[0x1EEE9AC00](v41);
  v50[-2] = sub_19A62B860;
  v50[-1] = v42;
  v43 = v9;
  os_unfair_lock_lock(v40 + 4);
  sub_19A5F57B8(v44);
  os_unfair_lock_unlock(v40 + 4);

  v46 = MEMORY[0x1EEE9AC00](v45);
  v50[-2] = v1;
  MEMORY[0x1EEE9AC00](v46);
  v50[-2] = sub_19A62C654;
  v50[-1] = v47;
  os_unfair_lock_lock(v40 + 4);
  sub_19A60FBA4(v50);
  os_unfair_lock_unlock(v40 + 4);
  v48 = v50[0];

  return v48;
}

void sub_19A629338()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_numberOfItems);
  if (v1 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v2 = v0;
    v3 = MEMORY[0x19A9058E0](*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_numberOfItems), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
    v21 = v3;
    if (v1)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        sub_19A76001C(&v22, v4);
        v4 = v5;
      }

      while (v1 != v5);
      v6 = v21;
    }

    else
    {
      v6 = v3;
    }

    swift_beginAccess();

    v8 = sub_19A6814DC(v7);
    if (*(v8 + 16) <= *(v6 + 16) >> 3)
    {
      v22 = v6;
      sub_19A62AF40(v8);

      v9 = v22;
    }

    else
    {
      v9 = sub_19A62B054(v8, v6);
    }

    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    if (v12)
    {
      while (1)
      {
        v15 = v14;
LABEL_18:
        v16 = __clz(__rbit64(v12));
        v12 &= v12 - 1;

        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    while (1)
    {
LABEL_14:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(v9 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_18;
      }
    }

    if (*(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_glyphType) == 1)
    {
      v18 = *(v2 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock);
      v19 = MEMORY[0x1EEE9AC00](v17);
      MEMORY[0x1EEE9AC00](v19);
      os_unfair_lock_lock(v18 + 4);
      sub_19A60EFE4(&v22);
      os_unfair_lock_unlock(v18 + 4);
      v20 = v22;
      if (!v22)
      {
        v20 = sub_19A628E28();
      }
    }
  }
}

void sub_19A6295A8()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
  v3 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
  v5 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver);
  v6 = sub_19A711D4C();
  v8 = v7;
  v9 = v4;
  v10 = v3;
  if (v2 == 1)
  {
    MaxX = CGRectGetMaxX(*&v9);
    v12 = *(v5 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfGroups);
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12)
      {
        v13 = MaxX - *(v1 + 112) + *(v5 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 64) + *(v5 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 80);
        v29 = MEMORY[0x1E69E7CC0];
        sub_19A65AD68(0, v12, 0);
        for (i = 0; i != v12; ++i)
        {
          v15 = sub_19A711DD0();
          v17 = *(v29 + 16);
          v16 = *(v29 + 24);
          if (v17 >= v16 >> 1)
          {
            v19 = v15;
            sub_19A65AD68((v16 > 1), v17 + 1, 1);
            v15 = v19;
          }

          v18 = floor(v13 - v15 * i);
          *(v29 + 16) = v17 + 1;
          *(v29 + 8 * v17 + 32) = v18;
        }
      }

      return;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  MinX = CGRectGetMinX(*&v9);
  v21 = *(v5 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfGroups);
  if (v21 < 0)
  {
    goto LABEL_17;
  }

  if (v21)
  {
    v22 = MinX + *(v1 + 96) - (*(v5 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 64) + *(v5 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 80));
    v30 = MEMORY[0x1E69E7CC0];
    sub_19A65AD68(0, v21, 0);
    for (j = 0; j != v21; ++j)
    {
      v24 = sub_19A711DD0();
      v26 = *(v30 + 16);
      v25 = *(v30 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = v24;
        sub_19A65AD68((v25 > 1), v26 + 1, 1);
        v24 = v28;
      }

      v27 = ceil(v22 + v24 * j);
      *(v30 + 16) = v26 + 1;
      *(v30 + 8 * v26 + 32) = v27;
    }
  }
}

void sub_19A6297FC()
{
  v1 = (v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration);
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin);
  v3 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_origin + 8);
  v5 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_solver);
  v6 = sub_19A711D4C();
  v8 = v7;
  v9 = v4;
  v10 = v3;
  if (v2 == 1)
  {
    MaxY = CGRectGetMaxY(*&v9);
    v12 = *(v5 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfGroups);
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12)
      {
        v13 = MaxY - v1[13] - v1[9];
        v29 = MEMORY[0x1E69E7CC0];
        sub_19A65AD68(0, v12, 0);
        for (i = 0; i != v12; ++i)
        {
          sub_19A711DD0();
          v17 = *(v29 + 16);
          v16 = *(v29 + 24);
          if (v17 >= v16 >> 1)
          {
            v19 = v15;
            sub_19A65AD68((v16 > 1), v17 + 1, 1);
            v15 = v19;
          }

          v18 = floor(v13 - v15 * i);
          *(v29 + 16) = v17 + 1;
          *(v29 + 8 * v17 + 32) = v18;
        }
      }

      return;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  MinY = CGRectGetMinY(*&v9);
  v21 = *(v5 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfGroups);
  if (v21 < 0)
  {
    goto LABEL_17;
  }

  if (v21)
  {
    v22 = MinY - v1[11] - v1[7] - v1[3];
    v30 = MEMORY[0x1E69E7CC0];
    sub_19A65AD68(0, v21, 0);
    for (j = 0; j != v21; ++j)
    {
      sub_19A711DD0();
      v26 = *(v30 + 16);
      v25 = *(v30 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = v24;
        sub_19A65AD68((v25 > 1), v26 + 1, 1);
        v24 = v28;
      }

      v27 = ceil(v22 + v24 * j);
      *(v30 + 16) = v26 + 1;
      *(v30 + 8 * v26 + 32) = v27;
    }
  }
}

void sub_19A629A28()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration) == 1)
  {
    sub_19A6297FC();
  }

  else
  {
    sub_19A6295A8();
  }

  *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___alignmentEdges) = v2;

  if (*(v1 + 129) == 1)
  {
    v3 = sub_19A628080();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection____lazy_storage___isolationEdges) = v3;

  v5 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock);
  v6 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  os_unfair_lock_lock(v5 + 4);
  sub_19A5F5774(v7);
  os_unfair_lock_unlock(v5 + 4);
}

uint64_t sub_19A629B40(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_cachedAttributes;
  swift_beginAccess();
  *(a1 + v2) = MEMORY[0x1E69E7CC8];
}

id sub_19A629BD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageGlyphLayoutSection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A629CF4()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_cachedAttributes;
  swift_beginAccess();
  *(v1 + v2) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_19A629D5C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A67FE7C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_19A7AC004();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_19A7AB294();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_19A62A09C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19A629E90(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A67FE90(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_19A7AC004();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = fabs(v11);
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 > fabs(*v14))
          {
            break;
          }

          *v14 = v11;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_19A7AB294();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_19A62A5E8(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_19A629FCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8A0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_19A62A09C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_19A67FC80(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_19A62AB48((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A67FD78(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_19A67FD78((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_19A62AB48((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_19A62A5E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v87 = *v87;
    if (!v87)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_19A67FC80(v9);
      v9 = result;
    }

    v79 = v9 + 16;
    v80 = *(v9 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v9[16 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_19A62AD3C((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v87);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_112;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_113;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_114;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 8 * v8);
      v12 = fabs(v11);
      v13 = fabs(*(*a3 + 8 * v10));
      v14 = v10 + 2;
      while (v6 != v14)
      {
        v15 = *(*a3 + 8 * v14);
        v16 = fabs(v15) > fabs(v11);
        ++v14;
        v11 = v15;
        if ((((v12 <= v13) ^ v16) & 1) == 0)
        {
          v8 = v14 - 1;
          if (v12 > v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v12 > v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = 8 * v8 - 8;
        v18 = 8 * v10;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v21 = *(v22 + v18);
            *(v22 + v18) = *(v22 + v17);
            *(v22 + v17) = v21;
          }

          ++v20;
          v17 -= 8;
          v18 += 8;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A67FD78(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v33 = *(v9 + 2);
    v32 = *(v9 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_19A67FD78((v32 > 1), v33 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v34;
    v35 = &v9[16 * v33];
    *(v35 + 4) = v10;
    *(v35 + 5) = v8;
    v36 = *v87;
    if (!*v87)
    {
      goto LABEL_125;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v9 + 4);
          v39 = *(v9 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_103;
          }

          v54 = &v9[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v9[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_110;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v64 = &v9[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_71:
        if (v59)
        {
          goto LABEL_105;
        }

        v67 = &v9[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_108;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_78:
        v75 = v37 - 1;
        if (v37 - 1 >= v34)
        {
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

        if (!*a3)
        {
          goto LABEL_122;
        }

        v76 = *&v9[16 * v75 + 32];
        v77 = *&v9[16 * v37 + 40];
        sub_19A62AD3C((*a3 + 8 * v76), (*a3 + 8 * *&v9[16 * v37 + 32]), (*a3 + 8 * v77), v36);
        if (v4)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_19A67FC80(v9);
        }

        if (v75 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v78 = &v9[16 * v75];
        *(v78 + 4) = v76;
        *(v78 + 5) = v77;
        result = sub_19A67FBF4(v37);
        v34 = *(v9 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v9[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_101;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_102;
      }

      v49 = &v9[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_104;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v9[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_111;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 8 * v8 - 8;
  v25 = v10 - v8;
LABEL_30:
  v26 = *(v23 + 8 * v8);
  v27 = fabs(v26);
  v28 = v25;
  v29 = v24;
  while (1)
  {
    v30 = *v29;
    if (v27 > fabs(*v29))
    {
LABEL_29:
      ++v8;
      v24 += 8;
      --v25;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    *v29 = v26;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
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