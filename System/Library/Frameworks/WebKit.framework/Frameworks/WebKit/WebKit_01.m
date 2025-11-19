id WKIdentityDocumentRawRequestValidator.init()()
{
  v1 = &v0[OBJC_IVAR___WKIdentityDocumentRawRequestValidator__unsafeValidator];
  v1[3] = sub_23B59D5E0();
  __swift_allocate_boxed_opaque_existential_0Tm(v1);
  sub_23B59D5D0();
  v3.receiver = v0;
  v3.super_class = WKIdentityDocumentRawRequestValidator;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_23B584FC0()
{
  v1 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager;
  if (*&v0[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager])
  {
    v2 = *&v0[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC18, &qword_23B59FDA8);
    v3 = [*&v0[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate] viewForIntelligenceTextEffectCoordinator_];
    v4 = v0;
    v5 = v3;
    v6 = v0;
    v2 = sub_23B56CB20(v0, v5);
    v7 = *&v0[v1];
    *&v6[v1] = v2;
  }

  return v2;
}

id WKIntelligenceReplacementTextEffectCoordinator.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

{
  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager) = 0;
  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset) = 0;
  v2 = v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue) = MEMORY[0x277D84F90];
  v3 = (v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate) = a1;
  v5.super_class = WKIntelligenceReplacementTextEffectCoordinator;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_23B585464(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_23B59D8F0();
  v3[9] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  v3[10] = v5;
  v3[11] = v4;

  return MEMORY[0x2822009F8](sub_23B585500, v5, v4);
}

uint64_t sub_23B585500()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = sub_23B584FC0();
  (*(*v3 + 352))(v3);

  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset) = 0;
  v4 = v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v1 + v5) = MEMORY[0x277D84F90];

  v7 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager;
  v8 = *(**(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager) + 360);

  v8("WebKitSwift/WKIntelligenceReplacementTextEffectCoordinator.swift", 64, 2, 100);

  v9 = *(**(v1 + v7) + 368);

  v9("WebKitSwift/WKIntelligenceReplacementTextEffectCoordinator.swift", 64, 2, 101);

  result = sub_23B59D210();
  if (result == v2)
  {
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      __break(1u);
    }

    else
    {
      *v4 = v14;
      *(v4 + 8) = v15;
      *(v4 + 16) = 0;
      type metadata accessor for IntelligenceTextEffectChunk.Pondering(0);
      v16 = sub_23B56C330(v14, v15);
      v0[12] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7B0, &unk_23B59EC00);
      v0[5] = v16;

      v17 = sub_23B57603C((v0 + 5));
      v0[13] = v17;
      v18 = *(v1 + v7);
      v0[14] = v18;
      v19 = *(*v18 + 304);

      v22 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      v0[15] = v21;
      *v21 = v0;
      v21[1] = sub_23B585890;

      return v22(v17);
    }
  }

  return result;
}

uint64_t sub_23B585890()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_23B5859D4, v5, v4);
}

uint64_t sub_23B5859D4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B585BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_23B59D8F0();
  v4[6] = sub_23B59D8E0();
  v6 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B585C6C, v6, v5);
}

uint64_t sub_23B585C6C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v0[7] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23B585D24;
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return sub_23B585464(v8, v7);
}

uint64_t sub_23B585D24()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 40);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 56);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_23B585E6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = v6;
  *(v7 + 104) = a4;
  *(v7 + 112) = a5;
  *(v7 + 176) = a3;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  sub_23B59D8F0();
  *(v7 + 136) = sub_23B59D8E0();
  v9 = sub_23B59D8B0();
  *(v7 + 144) = v9;
  *(v7 + 152) = v8;

  return MEMORY[0x2822009F8](sub_23B585F10, v9, v8);
}

uint64_t sub_23B585F10()
{
  v2 = *(v0 + 88);
  if (sub_23B59D210() == v2)
  {
    v3 = *(v0 + 136);
LABEL_9:

    v19 = *(v0 + 8);

    return v19();
  }

  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = &v5[v4];
  if (__OFADD__(v5, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 120);
    v1 = *(v0 + 128);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 176);
    v11 = swift_allocObject();
    *(v0 + 160) = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    *(v0 + 16) = v5;
    *(v0 + 24) = v6;
    *(v0 + 32) = v10;
    *(v0 + 40) = v9;
    *(v0 + 48) = &unk_23B59FB60;
    *(v0 + 56) = v11;
    v6 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
    swift_beginAccess();
    v5 = *(v1 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }
  }

  v5 = sub_23B58D7D8(0, *(v5 + 2) + 1, 1, v5);
  *(v1 + v6) = v5;
LABEL_5:
  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = sub_23B58D7D8((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 2) = v14 + 1;
  v15 = &v5[48 * v14];
  v16 = *(v0 + 16);
  v17 = *(v0 + 48);
  *(v15 + 3) = *(v0 + 32);
  *(v15 + 4) = v17;
  *(v15 + 2) = v16;
  *(v1 + v6) = v5;
  swift_endAccess();
  if (v14)
  {
    v18 = *(v0 + 136);

    goto LABEL_9;
  }

  v21 = swift_task_alloc();
  *(v0 + 168) = v21;
  *v21 = v0;
  v21[1] = sub_23B586144;
  v22 = *(v0 + 128);

  return sub_23B5862D0(v0 + 16);
}

uint64_t sub_23B586144()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_23B586264, v4, v3);
}

uint64_t sub_23B586264()
{
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B5862D0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_23B586368, v4, v3);
}

uint64_t sub_23B586368()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_23B584FC0();
  (*(*v3 + 368))("WebKitSwift/WKIntelligenceReplacementTextEffectCoordinator.swift", 64, 2, 193);

  v5 = *v2;
  v6 = v2[3];
  v7 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset;
  v0[8] = v6;
  v0[9] = v7;
  v8 = *(v1 + v7);
  v9 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v0[3];
  v11 = *(v10 + 8);
  v12 = v11 + v8;
  if (__OFADD__(v11, v8))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = v0[4];
  type metadata accessor for IntelligenceTextEffectChunk.Replacement(0);
  v14 = *(v10 + 16);
  v15 = *(v10 + 32);
  v16 = *(v10 + 40);

  v17 = sub_23B56C49C(v9, v12, v14, v6, v15, v16);
  v0[10] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7C0, qword_23B59EC10);
  v0[2] = v17;

  v18 = sub_23B57476C((v0 + 2));
  v0[11] = v18;
  v19 = *(v13 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager);
  v0[12] = v19;
  v20 = *(*v19 + 312);

  v23 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v22[1] = sub_23B5865F0;

  return v23(v18);
}

uint64_t sub_23B5865F0()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B586734, v5, v4);
}

uint64_t sub_23B586734()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[4];
  v5 = v0[5];

  v8 = *(v6 + v3);
  v9 = __OFADD__(v8, v4);
  v10 = v8 + v4;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v0[4] + v0[9]) = v10;
    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_23B586990(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 96) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_23B59D8F0();
  *(v7 + 64) = sub_23B59D8E0();
  v9 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B586A34, v9, v8);
}

uint64_t sub_23B586A34()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = _Block_copy(v3);
  *(v0 + 72) = _Block_copy(v4);
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = v5;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_23B586B40;
  v9 = *(v0 + 56);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 96);
  v13 = *(v0 + 16);

  return sub_23B585E6C(v13, v10, v12, v11, sub_23B58F050, v6);
}

uint64_t sub_23B586B40()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 56);
  v6 = *v0;

  if (v4)
  {
    v7 = *(v1 + 72);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_23B586CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23B586D60;
  v7[3] = &block_descriptor_123;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_23B586D60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23B586DA4()
{
  v1[5] = v0;
  v1[6] = sub_23B59D8F0();
  v1[7] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_23B586E40, v3, v2);
}

uint64_t sub_23B586E40()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
  swift_beginAccess();
  v4 = *(*(v1 + v3) + 16);
  v0[10] = sub_23B59D8E0();
  if (v4)
  {
    v5 = v0[5];
    v6 = swift_task_alloc();
    v0[15] = v6;
    *(v6 + 16) = v5;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_23B5872F4;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v9 = v0[6];
    v11 = sub_23B59D8B0();
    v0[11] = v11;
    v0[12] = v10;

    return MEMORY[0x2822009F8](sub_23B586FC4, v11, v10);
  }
}

uint64_t sub_23B586FC4()
{
  v1 = v0[5];
  v2 = sub_23B584FC0();
  v0[13] = v2;
  v3 = *(*v2 + 336);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_23B5870EC;

  return v7();
}

uint64_t sub_23B5870EC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_23B587230, v5, v4);
}

uint64_t sub_23B587230()
{
  v1 = v0[10];

  v2 = v0[8];
  v3 = v0[9];

  return MEMORY[0x2822009F8](sub_23B587294, v2, v3);
}

uint64_t sub_23B587294()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B5872F4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 80);
  v8 = *v0;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_23B58F57C, v6, v5);
}

uint64_t sub_23B587454(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = &a2[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion];
  v12 = *&a2[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion];
  v13 = *&a2[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion + 8];
  *v11 = &unk_23B59FD90;
  *(v11 + 1) = v10;
  v14 = a2;
  sub_23B58DB98(v12);
}

uint64_t sub_23B587618(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v2[6] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_23B5876C0, v4, v3);
}

uint64_t sub_23B5876C0()
{
  v1 = v0[2];
  v2 = sub_23B584FC0();
  v0[9] = v2;
  v3 = *(*v2 + 336);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_23B5877E8;

  return v7();
}

uint64_t sub_23B5877E8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B58792C, v5, v4);
}

uint64_t sub_23B58792C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5879B0, v5, v4);
}

uint64_t sub_23B5879B0()
{
  v1 = v0[5];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  sub_23B59D8D0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_23B587BA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23B59D8F0();
  v2[4] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B587C3C, v4, v3);
}

uint64_t sub_23B587C3C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23B587CEC;
  v6 = v0[3];

  return sub_23B586DA4();
}

uint64_t sub_23B587CEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 40);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_23B587E34(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 200) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  *(v2 + 152) = v3;
  v4 = *(v3 - 8);
  *(v2 + 160) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  sub_23B59D8F0();
  *(v2 + 176) = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  *(v2 + 184) = v7;
  *(v2 + 192) = v6;

  return MEMORY[0x2822009F8](sub_23B587F38, v7, v6);
}

uint64_t sub_23B587F38(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = (v2 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange);
  if ((*(v2 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange + 16) & 1) == 0)
  {
    v9 = *v3;
    v8 = v3[1];
    if (*(v1 + 200) == 1)
    {
      v10 = *(v2 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset);
      v11 = __OFADD__(v8, v10);
      v8 += v10;
      if (v11)
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v8 < v9)
      {
LABEL_14:
        __break(1u);
        return MEMORY[0x282200938](a1);
      }
    }

    if (!__OFSUB__(v8, v9))
    {
      v12 = *(v1 + 160);
      v13 = *(v1 + 168);
      v14 = *(v1 + 152);
      v16 = v8 - v9;
      v17 = *(v2 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate);
      *(v1 + 16) = v1;
      *(v1 + 24) = sub_23B588190;
      swift_continuation_init();
      *(v1 + 136) = v14;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v1 + 112));
      sub_23B59D8C0();
      (*(v12 + 32))(boxed_opaque_existential_0Tm, v13, v14);
      *(v1 + 80) = MEMORY[0x277D85DD0];
      *(v1 + 88) = 1107296256;
      *(v1 + 96) = sub_23B58F540;
      *(v1 + 104) = &block_descriptor_0;
      [v17 intelligenceTextEffectCoordinator:v2 setSelectionForRange:v9 completion:{v16, v1 + 80}];
      (*(v12 + 8))(boxed_opaque_existential_0Tm, v14);
      a1 = v1 + 16;

      return MEMORY[0x282200938](a1);
    }

    __break(1u);
    goto LABEL_13;
  }

  v4 = *(v1 + 176);

  v5 = *(v1 + 168);

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_23B588190()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B588298, v2, v1);
}

uint64_t sub_23B588298()
{
  v1 = v0[22];

  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B588488(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  sub_23B59D8F0();
  *(v3 + 32) = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B588524, v5, v4);
}

uint64_t sub_23B588524()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  *(v0 + 40) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_23B58F578;
  v6 = *(v0 + 24);
  v7 = *(v0 + 56);

  return sub_23B587E34(v7);
}

uint64_t sub_23B5885DC()
{
  v1[2] = v0;
  sub_23B59D8F0();
  v1[3] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23B588674, v3, v2);
}

uint64_t sub_23B588674()
{
  v1 = v0[2];
  v2 = sub_23B584FC0();
  v0[6] = v2;
  v3 = *(*v2 + 320);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23B58879C;

  return v7();
}

uint64_t sub_23B58879C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23B58F580, v5, v4);
}

uint64_t sub_23B588A54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B588AF0, v4, v3);
}

uint64_t sub_23B588AF0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v0[7] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v0[8] = v7;
  v0[9] = v6;

  return MEMORY[0x2822009F8](sub_23B588B9C, v7, v6);
}

uint64_t sub_23B588B9C()
{
  v1 = v0[3];
  v2 = sub_23B584FC0();
  v0[10] = v2;
  v3 = *(*v2 + 320);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_23B588CC4;

  return v7();
}

uint64_t sub_23B588CC4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_23B588E08, v5, v4);
}

uint64_t sub_23B588E08()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  if (v2)
  {
    v4 = v0[6];
    v4[2](v4);
    _Block_release(v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B588E90()
{
  v1[2] = v0;
  sub_23B59D8F0();
  v1[3] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23B588F28, v3, v2);
}

uint64_t sub_23B588F28()
{
  v1 = v0[2];
  v2 = sub_23B584FC0();
  v0[6] = v2;
  v3 = *(*v2 + 328);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23B58879C;

  return v7();
}

uint64_t sub_23B5891C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B589260, v4, v3);
}

uint64_t sub_23B589260()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v0[7] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v0[8] = v7;
  v0[9] = v6;

  return MEMORY[0x2822009F8](sub_23B58930C, v7, v6);
}

uint64_t sub_23B58930C()
{
  v1 = v0[3];
  v2 = sub_23B584FC0();
  v0[10] = v2;
  v3 = *(*v2 + 328);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_23B589434;

  return v7();
}

uint64_t sub_23B589434()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_23B58F538, v5, v4);
}

void __swiftcall WKIntelligenceReplacementTextEffectCoordinator.init()(WKIntelligenceReplacementTextEffectCoordinator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_23B5896DC(uint64_t a1, char a2, char a3)
{
  *(v4 + 217) = a3;
  *(v4 + 216) = a2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  sub_23B59D8F0();
  *(v4 + 184) = sub_23B59D8E0();
  v9 = sub_23B59D8B0();
  *(v4 + 192) = v9;
  *(v4 + 200) = v8;

  return MEMORY[0x2822009F8](sub_23B5897E4, v9, v8);
}

uint64_t sub_23B5897E4()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 216);
  v3 = *(v0 + 144);
  type metadata accessor for IntelligenceTextEffectChunk.Pondering(0);
  if (swift_dynamicCastClass())
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4 && v1 == 0;
  if (v5 || (v6 = *(v0 + 152), v7 = sub_23B584FC0(), v8 = (*(*v7 + 256))(v7), v9 = , (v8 & 1) != 0))
  {
    v10 = *(v0 + 184);

    v11 = *(v0 + 176);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(*(v0 + 152) + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate);
    v15 = (*(**(v0 + 144) + 96))(v9);
    if (__OFSUB__(v16, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = v15;
      v26 = v14;
      v19 = *(v0 + 168);
      v18 = *(v0 + 176);
      v27 = *(v0 + 216);
      v20 = *(v0 + 160);
      v25 = *(v0 + 152);
      v21 = *(v0 + 144) + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
      v24 = v16 - v15;
      v22 = sub_23B59D300();
      *(v0 + 208) = v22;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_23B589ACC;
      swift_continuation_init();
      *(v0 + 136) = v20;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
      sub_23B59D8C0();
      (*(v19 + 32))(boxed_opaque_existential_0Tm, v18, v20);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_23B58F540;
      *(v0 + 104) = &block_descriptor_10;
      [v26 intelligenceTextEffectCoordinator:v25 updateTextVisibilityForRange:v17 visible:v24 identifier:v27 completion:{v22, v0 + 80}];
      (*(v19 + 8))(boxed_opaque_existential_0Tm, v20);
      v15 = v0 + 16;
    }

    return MEMORY[0x282200938](v15);
  }
}

uint64_t sub_23B589ACC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B589BD4, v2, v1);
}

uint64_t sub_23B589BD4()
{
  v1 = v0[26];
  v2 = v0[23];

  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B589C44(uint64_t a1, char a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23B56C32C;

  return sub_23B5896DC(a1, a2, a3);
}

uint64_t sub_23B589CF4(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB80, &qword_23B59FB98);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  sub_23B59D8F0();
  v2[24] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v2[25] = v7;
  v2[26] = v6;

  return MEMORY[0x2822009F8](sub_23B589DF4, v7, v6);
}

uint64_t sub_23B589DF4()
{
  v1 = *(*(v0 + 160) + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate);
  v2 = (*(**(v0 + 152) + 96))();
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = v2;
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    v10 = v3 - v2;
    v11 = *(v0 + 160);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_23B589FF8;
    swift_continuation_init();
    *(v0 + 136) = v7;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
    sub_23B582C30(0, &qword_27E15AB88, 0x277D75B90);
    sub_23B59D8C0();
    (*(v5 + 32))(boxed_opaque_existential_0Tm, v6, v7);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_23B58A170;
    *(v0 + 104) = &block_descriptor_13;
    [v1 intelligenceTextEffectCoordinator:v11 textPreviewsForRange:v4 completion:{v10, v0 + 80}];
    (*(v5 + 8))(boxed_opaque_existential_0Tm, v7);
    v2 = v0 + 16;
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23B589FF8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B58A100, v2, v1);
}

uint64_t sub_23B58A100()
{
  v2 = v0[23];
  v1 = v0[24];

  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_23B58A194(uint64_t a1, char a2)
{
  v2[2] = sub_23B59D8F0();
  v2[3] = sub_23B59D8E0();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_23B58A25C;

  return sub_23B5896DC(a1, a2, 0);
}

uint64_t sub_23B58A25C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B58F580, v5, v4);
}

uint64_t sub_23B58A398(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_23B58F53C;

  return (sub_23B58DBA8)(v2 + 16, a2);
}

uint64_t sub_23B58A464(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v7 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_23B59D8D0();
}

uint64_t sub_23B58A4D0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_23B59D350();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  sub_23B59D8F0();
  v2[26] = sub_23B59D8E0();
  v10 = sub_23B59D8B0();
  v2[27] = v10;
  v2[28] = v9;

  return MEMORY[0x2822009F8](sub_23B58A62C, v10, v9);
}

uint64_t sub_23B58A62C()
{
  v1 = *(v0[18] + *(*v0[18] + 104));
  v0[29] = v1;
  type metadata accessor for IntelligenceTextEffectChunk.Replacement(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return sub_23B59DA40();
  }

  v3 = v0[19];
  if ((*(v3 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange + 16) & 1) == 0)
  {
    v9 = v2;
    v10 = *(v3 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange + 8);
    v11 = *(*v1 + 96);

    v13 = v11(v12);
    v15 = *(v3 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset);
    v16 = __OFADD__(v10, v15);
    v17 = v10 + v15;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v9 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_characterDelta);
      v16 = __OFADD__(v17, v18);
      v19 = v17 + v18;
      if (!v16)
      {
        if (v19 >= v14)
        {
          if (!__OFSUB__(v19, v14))
          {
            v21 = v0[24];
            v20 = v0[25];
            v23 = v0[22];
            v22 = v0[23];
            v25 = v0[20];
            v24 = v0[21];
            v26 = v0[19];
            v31 = *(v26 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate);
            v29 = v19 - v14;
            v30 = v14;
            (*(v21 + 16))(v20, v1 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id, v22);
            v27 = sub_23B59D300();
            v0[30] = v27;
            (*(v21 + 8))(v20, v22);
            v0[2] = v0;
            v0[3] = sub_23B58A9C4;
            swift_continuation_init();
            v0[17] = v25;
            boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
            sub_23B59D8C0();
            (*(v24 + 32))(boxed_opaque_existential_0Tm, v23, v25);
            v0[10] = MEMORY[0x277D85DD0];
            v0[11] = 1107296256;
            v0[12] = sub_23B58F540;
            v0[13] = &block_descriptor_18;
            [v31 intelligenceTextEffectCoordinator:v26 updateTextVisibilityForRange:v30 visible:v29 identifier:0 completion:v27];
            (*(v24 + 8))(boxed_opaque_existential_0Tm, v25);
            v13 = (v0 + 2);

            return MEMORY[0x282200938](v13);
          }

LABEL_17:
          __break(1u);
          return MEMORY[0x282200938](v13);
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v4 = v0[26];

  v5 = v0[25];
  v6 = v0[22];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23B58A9C4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B58AACC, v2, v1);
}

uint64_t sub_23B58AACC()
{
  v1 = *(v0 + 152);

  v2 = sub_23B584FC0();
  *(v0 + 248) = v2;
  v6 = (*v2 + 304);
  v7 = (*v6 + **v6);
  v3 = (*v6)[1];
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_23B58AC0C;

  return v7(0);
}

uint64_t sub_23B58AC0C()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v7 = *v0;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_23B58AD50, v5, v4);
}

uint64_t sub_23B58AD50()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[25];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B58ADD0()
{
  v1[5] = v0;
  sub_23B59D8F0();
  v1[6] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_23B58AE68, v3, v2);
}

uint64_t sub_23B58AE68()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion;
  v0[9] = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion;
  v3 = (v1 + v2);
  v4 = *v3;
  v0[10] = *v3;
  v0[11] = v3[1];
  if (v4)
  {
    v5 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
    v0[12] = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
    swift_beginAccess();
    v6 = *(v1 + v5);
    v0[13] = v6;
    v7 = *(v6 + 16);
    v0[14] = v7;
    if (v7 >= 2)
    {
      v0[15] = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset;
      sub_23B58F170(v4);
      v0[16] = 1;
      v15 = v0[13];
      v0[17] = v15[13];
      v16 = v15[14];
      v0[18] = v15[15];

      v19 = (v16 + *v16);
      v17 = v16[1];
      v18 = swift_task_alloc();
      v0[19] = v18;
      *v18 = v0;
      v18[1] = sub_23B58B0F0;
    }

    else
    {

      v8 = v0[11];
      v19 = (v0[10] + *v0[10]);
      v9 = *(v0[10] + 4);
      v10 = swift_task_alloc();
      v0[20] = v10;
      *v10 = v0;
      v10[1] = sub_23B58B408;
    }

    return v19();
  }

  else
  {
    v11 = v0[6];

    v12 = v0[1];
    v13 = v0[10] != 0;

    return v12(v13);
  }
}

uint64_t sub_23B58B0F0()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B58B210, v4, v3);
}

uint64_t sub_23B58B210()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[5];

  v6 = *(v4 + v3);
  v7 = v6 + v2;
  if (__OFADD__(v6, v2))
  {
    __break(1u);
  }

  else
  {
    v8 = v0[14];
    v9 = v0[16] + 1;
    *(v0[5] + v0[15]) = v7;
    if (v9 == v8)
    {
      v10 = v0[13];

      v11 = v0[11];
      v18 = (v0[10] + *v0[10]);
      v12 = *(v0[10] + 4);
      v13 = swift_task_alloc();
      v0[20] = v13;
      *v13 = v0;
      v13[1] = sub_23B58B408;
    }

    else
    {
      v0[16] = v9;
      v14 = (v0[13] + 48 * v9);
      v0[17] = v14[7];
      v15 = v14[8];
      v0[18] = v14[9];

      v18 = (v15 + *v15);
      v16 = v15[1];
      v17 = swift_task_alloc();
      v0[19] = v17;
      *v17 = v0;
      v17[1] = sub_23B58B0F0;
    }

    return v18();
  }

  return result;
}

uint64_t sub_23B58B408()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B58B528, v4, v3);
}

uint64_t sub_23B58B528()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[5];
  v5 = v0[6];

  v7 = (v6 + v4);
  sub_23B58DB98(v3);
  v8 = *(v6 + v2);
  *(v6 + v2) = MEMORY[0x277D84F90];

  v9 = *v7;
  v10 = v7[1];
  *v7 = 0;
  v7[1] = 0;
  sub_23B58DB98(v9);
  v11 = v0[1];
  v12 = v0[10] != 0;

  return v11(v12);
}

uint64_t sub_23B58B5DC(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v2[55] = v3;
  v4 = *(v3 - 8);
  v2[56] = v4;
  v5 = *(v4 + 64) + 15;
  v2[57] = swift_task_alloc();
  sub_23B59D8F0();
  v2[58] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v2[59] = v7;
  v2[60] = v6;

  return MEMORY[0x2822009F8](sub_23B58B6DC, v7, v6);
}

uint64_t sub_23B58B6DC()
{
  v1 = v0[54] + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange;
  v0[61] = *(v1 + 8);
  if ((*(v1 + 16) & 1) != 0 || (v0[62] = *(v0[53] + *(*v0[53] + 104)), type metadata accessor for IntelligenceTextEffectChunk.Replacement(0), v2 = swift_dynamicCastClass(), (v0[63] = v2) == 0))
  {
    v10 = v0[58];

    v11 = v0[57];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v3 = *(*v2 + 96);

    v0[64] = v3(v4);
    v0[65] = v5;
    v6 = sub_23B584FC0();
    v0[66] = v6;
    v13 = (*v6 + 312);
    v14 = (*v13 + **v13);
    v7 = (*v13)[1];
    v8 = swift_task_alloc();
    v0[67] = v8;
    *v8 = v0;
    v8[1] = sub_23B58B900;

    return v14(0);
  }
}

uint64_t sub_23B58B900()
{
  v1 = *v0;
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 528);
  v7 = *v0;

  v4 = *(v1 + 480);
  v5 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_23B58BA44, v5, v4);
}

uint64_t sub_23B58BA44(void *a1)
{
  v2 = v1[65];
  v3 = v1[64];
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
  }

  else
  {
    v4 = v1[56];
    v5 = v1[57];
    v7 = v1[54];
    v6 = v1[55];
    v12 = v2 - v3;
    v13 = *(v7 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate);
    v1[2] = v1;
    v1[3] = sub_23B58BC28;
    swift_continuation_init();
    v1[25] = v6;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v1 + 22);
    sub_23B59D8C0();
    v9 = *(v4 + 32);
    v1[68] = v9;
    v1[69] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(boxed_opaque_existential_0Tm, v5, v6);
    v1[18] = MEMORY[0x277D85DD0];
    v1[19] = 1107296256;
    v1[20] = sub_23B58F540;
    v1[21] = &block_descriptor_23;
    [v13 intelligenceTextEffectCoordinator:v7 decorateReplacementsForRange:v3 completion:{v12, v1 + 18}];
    v10 = *(v4 + 8);
    v1[70] = v10;
    v1[71] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(boxed_opaque_existential_0Tm, v6);
    a1 = v1 + 2;
  }

  return MEMORY[0x282200938](a1);
}

uint64_t sub_23B58BC28()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B58BD30, v2, v1);
}

uint64_t sub_23B58BD30()
{
  if (*(v0[63] + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_finished) == 1)
  {
    v1 = v0[54];
    v2 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
    v3 = swift_beginAccess();
    if (*(*(v1 + v2) + 16))
    {
      v4 = v0[54];
      sub_23B58E964(0, 1);
      swift_endAccess();
      v5 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion;
      v0[72] = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion;
      v6 = (v4 + v5);
      v7 = *v6;
      v0[73] = *v6;
      if (v7)
      {
        v0[74] = v6[1];

        v20 = (v7 + *v7);
        v8 = v7[1];
        v9 = swift_task_alloc();
        v0[75] = v9;
        *v9 = v0;
        v9[1] = sub_23B58C0A8;

        return v20();
      }

      v19 = v0[70];
      v21 = v0[71];
      v13 = v0[69];
      v14 = v0[68];
      v15 = v0[57];
      v16 = v0[55];
      v18 = v0[54];
      v0[10] = v0;
      v0[11] = sub_23B58C26C;
      swift_continuation_init();
      v0[33] = v16;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 30);
      sub_23B59D8C0();
      v14(boxed_opaque_existential_0Tm, v15, v16);
      v0[26] = MEMORY[0x277D85DD0];
      v0[27] = 1107296256;
      v0[28] = sub_23B58F540;
      v0[29] = &block_descriptor_29;
      [v18 restoreSelectionAcceptedReplacements:1 completionHandler:v0 + 26];
      v19(boxed_opaque_existential_0Tm, v16);
      v3 = (v0 + 10);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v3);
  }

  v11 = swift_task_alloc();
  v0[76] = v11;
  *v11 = v0;
  v11[1] = sub_23B58C3E8;
  v12 = v0[54];

  return sub_23B58ADD0();
}

uint64_t sub_23B58C0A8()
{
  v1 = *v0;
  v2 = *(*v0 + 600);
  v6 = *v0;

  v3 = *(v1 + 480);
  v4 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_23B58C1C8, v4, v3);
}

uint64_t sub_23B58C1C8()
{
  v1 = v0[74];
  v2 = v0[62];
  v3 = v0[58];
  v4 = (v0[54] + v0[72]);
  sub_23B58DB98(v0[73]);

  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_23B58DB98(v5);
  v7 = v0[57];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23B58C26C()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B58C374, v2, v1);
}

uint64_t sub_23B58C374()
{
  v1 = v0[62];
  v2 = v0[58];

  v3 = v0[57];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B58C3E8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v7 = *v1;
  *(*v1 + 656) = a1;

  v4 = *(v2 + 480);
  v5 = *(v2 + 472);

  return MEMORY[0x2822009F8](sub_23B58C510, v5, v4);
}

void sub_23B58C510()
{
  if (*(v0 + 656))
  {
    v1 = *(v0 + 496);
    v2 = *(v0 + 464);
LABEL_3:

    v3 = *(v0 + 456);

    v4 = *(v0 + 8);

    v4();
    return;
  }

  v5 = *(v0 + 488);
  v6 = *(*(v0 + 432) + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v0 + 520);
  if (v7 < v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for IntelligenceTextEffectChunk.Pondering(0);
  v9 = sub_23B56C330(v8, v7);
  *(v0 + 616) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7B0, &unk_23B59EC00);
  *(v0 + 416) = v9;

  v10 = sub_23B57603C(v0 + 416);
  *(v0 + 624) = v10;
  v11 = (*(*v9 + 96))();
  v12 = *(v0 + 432);
  if (v11 != v13)
  {
    v20 = *(v12 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager);
    *(v0 + 632) = v20;
    v21 = *(*v20 + 304);

    v28 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 640) = v23;
    *v23 = v0;
    v23[1] = sub_23B58C86C;

    v28(v10);
    return;
  }

  v14 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
  swift_beginAccess();
  if (!*(*(v12 + v14) + 16))
  {
LABEL_20:
    __break(1u);
    return;
  }

  sub_23B58E964(0, 1);
  swift_endAccess();
  v15 = *(v12 + v14);
  if (!*(v15 + 16))
  {
    v24 = *(v0 + 624);
    v25 = *(v0 + 616);
    v26 = *(v0 + 496);
    v27 = *(v0 + 464);

    goto LABEL_3;
  }

  v16 = *(v15 + 32);
  v17 = *(v15 + 64);
  *(v0 + 288) = *(v15 + 48);
  *(v0 + 304) = v17;
  *(v0 + 272) = v16;
  sub_23B58EA24(v0 + 272, v0 + 320);
  v18 = swift_task_alloc();
  *(v0 + 648) = v18;
  *v18 = v0;
  v18[1] = sub_23B58CB44;
  v19 = *(v0 + 432);

  sub_23B5862D0(v0 + 272);
}

uint64_t sub_23B58C86C()
{
  v1 = *v0;
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 624);
  v8 = *v0;

  v5 = *(v1 + 480);
  v6 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_23B58C9CC, v6, v5);
}

uint64_t sub_23B58C9CC()
{
  v1 = *(v0 + 432);
  v2 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
  result = swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    sub_23B58E964(0, 1);
    swift_endAccess();
    v4 = *(v1 + v2);
    if (*(v4 + 16))
    {
      v5 = *(v4 + 32);
      v6 = *(v4 + 64);
      *(v0 + 288) = *(v4 + 48);
      *(v0 + 304) = v6;
      *(v0 + 272) = v5;
      sub_23B58EA24(v0 + 272, v0 + 320);
      v7 = swift_task_alloc();
      *(v0 + 648) = v7;
      *v7 = v0;
      v7[1] = sub_23B58CB44;
      v8 = *(v0 + 432);

      return sub_23B5862D0(v0 + 272);
    }

    else
    {
      v9 = *(v0 + 624);
      v10 = *(v0 + 616);
      v11 = *(v0 + 496);
      v12 = *(v0 + 464);

      v13 = *(v0 + 456);

      v14 = *(v0 + 8);

      return v14();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B58CB44()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v6 = *v0;

  v3 = *(v1 + 480);
  v4 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_23B58CC64, v4, v3);
}

uint64_t sub_23B58CC64()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[62];
  v4 = v0[58];

  sub_23B58EA5C((v0 + 34));
  v5 = v0[57];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B58CD00(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  return sub_23B59D8D0();
}

uint64_t sub_23B58CD48(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B572B0C;

  return sub_23B589CF4(v2);
}

uint64_t sub_23B58CDDC(uint64_t *a1, char a2)
{
  v4 = *a1;
  v2[2] = sub_23B59D8F0();
  v2[3] = sub_23B59D8E0();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_23B58CEA4;

  return sub_23B5896DC(v4, a2, 0);
}

uint64_t sub_23B58CEA4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B56F288, v5, v4);
}

uint64_t sub_23B58CFE0(uint64_t a1, uint64_t *a2)
{
  *(v2 + 64) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_23B58D098;

  return (sub_23B58DBA8)(v2 + 16, v3);
}

uint64_t sub_23B58D098()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v10 = *v0;
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 56);
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v10 + 8);

  return v6();
}

uint64_t sub_23B58D1E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B56C32C;

  return sub_23B58A4D0(a1);
}

uint64_t sub_23B58D278(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B56C32C;

  return sub_23B58B5DC(a1);
}

uint64_t sub_23B58D30C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_23B58D3A8, v4, v3);
}

uint64_t sub_23B58D3A8()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  *(v0 + 64) = sub_23B59D8E0();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = v6;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_23B58D4B8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_23B58D4B8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B5726D0, v6, v5);
}

uint64_t sub_23B58D618(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(sub_23B58F444, v10);
}

char *sub_23B58D7D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC10, &qword_23B59FDA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23B58D8F8(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_21:
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_23B59DA50();
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = 0;
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EE9EAD0](v3, a1);
    }

    else
    {
      if (v3 >= *(v14 + 16))
      {
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_23B59D8F0();
    sub_23B59D8E0();
    sub_23B59D8B0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v7 = [v6 replacement];
    sub_23B59D820();

    v8 = sub_23B59D850();

    [v6 originalRange];
    v10 = v9;

    v11 = v8 - v10;
    if (__OFSUB__(v8, v10))
    {
      goto LABEL_19;
    }

    ++v3;
    v12 = __OFADD__(v4, v11);
    v4 += v11;
    if (v12)
    {
      goto LABEL_20;
    }
  }

  return v4;
}

uint64_t sub_23B58DAA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B58DAE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56B770;

  return sub_23B58D30C(v2, v3);
}

uint64_t sub_23B58DB98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B58DBA8(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB80, &qword_23B59FB98);
  v3[44] = v4;
  v5 = *(v4 - 8);
  v3[45] = v5;
  v6 = *(v5 + 64) + 15;
  v3[46] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC00, &qword_23B59FD80);
  v3[47] = v7;
  v8 = *(v7 - 8);
  v3[48] = v8;
  v9 = *(v8 + 64) + 15;
  v3[49] = swift_task_alloc();
  sub_23B59D8F0();
  v3[50] = sub_23B59D8E0();
  v11 = sub_23B59D8B0();
  v3[51] = v11;
  v3[52] = v10;

  return MEMORY[0x2822009F8](sub_23B58DD14, v11, v10);
}

uint64_t sub_23B58DD14()
{
  v1 = v0[42];
  type metadata accessor for IntelligenceTextEffectChunk.Replacement(0);
  v2 = swift_dynamicCastClass();
  v0[53] = v2;
  if (!v2)
  {
    return sub_23B59DA40();
  }

  v3 = v0[43];
  if ((*(v3 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange + 16) & 1) == 0)
  {
    v10 = *(v3 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange + 8);
    v11 = *(*v2 + 96);
    v12 = (*v2 + 96) & 0xFFFFFFFFFFFFLL | 0x36BA000000000000;
    v0[54] = v11;
    v0[55] = v12;
    v13 = swift_retain_n();
    v14 = v11(v13);
    v16 = *(v3 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset);
    v17 = __OFADD__(v10, v16);
    v18 = v10 + v16;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v19 = v15;
      if (v18 >= v15)
      {
        v20 = v0[43];
        v21 = *(v20 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate);
        v0[56] = v21;
        if (!__OFSUB__(v18, v15))
        {
          v22 = v0[48];
          v23 = v0[49];
          v24 = v0[47];
          v0[2] = v0;
          v0[7] = v0 + 39;
          v0[3] = sub_23B58E064;
          v26 = v21;
          v27 = v20;
          v28 = v18 - v15;
          swift_continuation_init();
          v0[25] = v24;
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 22);
          sub_23B582C30(0, &qword_27E15AC08, 0x277CE38A8);
          sub_23B59D8C0();
          (*(v22 + 32))(boxed_opaque_existential_0Tm, v23, v24);
          v0[18] = MEMORY[0x277D85DD0];
          v0[19] = 1107296256;
          v0[20] = sub_23B58A450;
          v0[21] = &block_descriptor_149;
          [v26 intelligenceTextEffectCoordinator:v27 contentPreviewForRange:v19 completion:{v28, v0 + 18}];
          (*(v22 + 8))(boxed_opaque_existential_0Tm, v24);
          v14 = (v0 + 2);

          return MEMORY[0x282200938](v14);
        }

LABEL_15:
        __break(1u);
        return MEMORY[0x282200938](v14);
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v4 = v0[50];

  v5 = v0[49];
  v6 = v0[46];
  v7 = v0[41];

  *v7 = xmmword_23B59FB30;
  v7[1] = 0u;
  v7[2] = 0u;
  v8 = v0[1];

  return v8();
}

uint64_t sub_23B58E064()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B58E16C, v2, v1);
}

uint64_t sub_23B58E16C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 312);
  *(v0 + 456) = v2;
  v3 = [v2 previewImage];
  [v2 presentationFrame];
  sub_23B5707DC(v3, v0 + 272, v4, v5, v6, v7);
  v8 = *(v0 + 288);
  *(v0 + 464) = *(v0 + 272);
  *(v0 + 480) = v8;
  *(v0 + 496) = *(v0 + 304);
  *(v0 + 504) = *(v1 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_characterDelta);
  v9 = *(v1 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement + 8);
  v13 = (*(v1 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement) + **(v1 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement));
  v10 = *(*(v1 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement) + 4);
  v11 = swift_task_alloc();
  *(v0 + 512) = v11;
  *v11 = v0;
  v11[1] = sub_23B58E2D4;

  return v13();
}

uint64_t sub_23B58E2D4()
{
  v1 = *v0;
  v2 = *(*v0 + 512);
  v6 = *v0;

  v3 = *(v1 + 416);
  v4 = *(v1 + 408);

  return MEMORY[0x2822009F8](sub_23B58E3F4, v4, v3);
}

uint64_t sub_23B58E3F4()
{
  v1 = v0[63];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = v3();
  v6 = v3();
  v8 = __OFADD__(v7, v1);
  v9 = v7 + v1;
  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v0[63];
  v12 = v0[54];
  v11 = v0[55];
  v13 = v0[53];
  v14 = v0[42];
  v15 = v0[43];
  (*(*v13 + 104))(v5);
  v16 = sub_23B584FC0();
  v17 = swift_task_alloc();
  *(v17 + 16) = v13;
  *(v17 + 24) = v10;
  (*(*v16 + 344))(sub_23B58F180, v17);

  v19 = v12(v18);
  v21 = v20;

  if (__OFSUB__(v21, v19))
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200938](v6);
  }

  v22 = v0[45];
  v23 = v0[46];
  v24 = v0[44];
  v27 = v0[43];
  v28 = v0[56];
  v0[10] = v0;
  v0[15] = v0 + 40;
  v0[11] = sub_23B58E6C4;
  swift_continuation_init();
  v0[33] = v24;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 30);
  sub_23B582C30(0, &qword_27E15AB88, 0x277D75B90);
  sub_23B59D8C0();
  (*(v22 + 32))(boxed_opaque_existential_0Tm, v23, v24);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_23B58A170;
  v0[29] = &block_descriptor_153;
  [v28 intelligenceTextEffectCoordinator:v27 textPreviewsForRange:v19 completion:{v21 - v19, v0 + 26}];
  (*(v22 + 8))(boxed_opaque_existential_0Tm, v24);
  v6 = (v0 + 10);

  return MEMORY[0x282200938](v6);
}

uint64_t sub_23B58E6C4()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B58E7CC, v2, v1);
}

uint64_t sub_23B58E7CC()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);

  v3 = *(v0 + 496);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  v10 = *(v0 + 480);
  v11 = *(v0 + 464);

  *v7 = v6;
  *(v7 + 24) = v10;
  *(v7 + 8) = v11;
  *(v7 + 40) = v3;
  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_23B58E88C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_23B58E964(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_23B58D7D8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_23B58E88C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_23B58EA90()
{
  result = qword_27E15AB90;
  if (!qword_27E15AB90)
  {
    type metadata accessor for IntelligenceTextEffectChunk(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15AB90);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23B58EB10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B58EB58(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_23B58EBB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56C32C;

  return sub_23B5891C4(v2, v3);
}

uint64_t sub_23B58EC64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56C32C;

  return sub_23B588A54(v2, v3);
}

uint64_t sub_23B58ED10()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B58ED50()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B588488(v2, v4, v3);
}

uint64_t objectdestroy_34Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B58EE44()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56C32C;

  return sub_23B587BA4(v2, v3);
}

uint64_t sub_23B58EEF0()
{
  _Block_release(*(v0 + 48));
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23B58EF38()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_23B56C32C;

  return sub_23B586990(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_23B58F018()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B58F070()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B58F0B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B585BD0(v2, v3, v5, v4);
}

uint64_t sub_23B58F170(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B58F180(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  result = (*(**(v2 + 16) + 96))();
  if (__OFADD__(a2, v4))
  {
    __break(1u);
  }

  else if (a2 + v4 >= v6)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B58F1F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B58F2C4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B587618(v4, v0 + v3);
}

uint64_t sub_23B58F3B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B58F444()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_23B59D8D0();
}

void type metadata accessor for _NSRange()
{
  if (!qword_27E15AC20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E15AC20);
    }
  }
}

uint64_t sub_23B58F584()
{
  v1 = OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager;
  if (*&v0[OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager])
  {
    v2 = *&v0[OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC60, &qword_23B5A0030);
    v3 = [*&v0[OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_delegate] viewForIntelligenceTextEffectCoordinator_];
    v4 = v0;
    v5 = v3;
    v6 = v0;
    v2 = sub_23B56CB20(v0, v5);
    v7 = *&v0[v1];
    *&v6[v1] = v2;
  }

  return v2;
}

id WKIntelligenceSmartReplyTextEffectCoordinator.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

{
  *(v1 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager) = 0;
  v2 = (v1 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_onFlushCompletion);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_processedRangeOffset) = 0;
  v3 = v1 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_contextRange;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v1 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_replacementQueue) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_delegate) = a1;
  v5.super_class = WKIntelligenceSmartReplyTextEffectCoordinator;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_23B58F964(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_23B59D8F0();
  v3[6] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_23B58FA00, v5, v4);
}

uint64_t sub_23B58FA00()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_23B58F584();
  (*(*v3 + 360))("WebKitSwift/WKIntelligenceSmartReplyTextEffectCoordinator.swift", 63, 2, 104);

  v4 = OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager;
  v5 = *(**(v1 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager) + 368);

  v5("WebKitSwift/WKIntelligenceSmartReplyTextEffectCoordinator.swift", 63, 2, 105);

  result = sub_23B59D210();
  if (result == v2)
  {
    v7 = v0[6];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for IntelligenceTextEffectChunk.Pondering(0);
      v12 = sub_23B56C330(v10, v11);
      v0[9] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7B0, &unk_23B59EC00);
      v0[2] = v12;

      v13 = sub_23B57603C((v0 + 2));
      v0[10] = v13;
      v14 = *(v1 + v4);
      v0[11] = v14;
      v15 = *(*v14 + 304);

      v18 = (v15 + *v15);
      v16 = v15[1];
      v17 = swift_task_alloc();
      v0[12] = v17;
      *v17 = v0;
      v17[1] = sub_23B58FCDC;

      return v18(v13);
    }
  }

  return result;
}

uint64_t sub_23B58FCDC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B58FE20, v5, v4);
}

uint64_t sub_23B58FE20()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B59001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_23B59D8F0();
  v4[6] = sub_23B59D8E0();
  v6 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5900B8, v6, v5);
}

uint64_t sub_23B5900B8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v0[7] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23B585D24;
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return sub_23B58F964(v8, v7);
}

uint64_t sub_23B590170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_23B56C32C;

  return (sub_23B594EC4)(a1, a2, a4, a5, a6);
}

uint64_t sub_23B59024C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  sub_23B59D8F0();
  v2[24] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v2[25] = v7;
  v2[26] = v6;

  return MEMORY[0x2822009F8](sub_23B59034C, v7, v6);
}

uint64_t sub_23B59034C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = sub_23B58F584();
  (*(*v3 + 368))("WebKitSwift/WKIntelligenceSmartReplyTextEffectCoordinator.swift", 63, 2, 191);

  v5 = *v1;
  v0[27] = *v1;
  v6 = v1[1];
  v0[28] = v6;
  if (v5 == v6)
  {
    v7 = v0[19];
    v8 = v0[20];
    type metadata accessor for IntelligenceTextEffectChunk.Replacement(0);
    v9 = v7[2];
    v0[29] = v9;
    v10 = v7[3];
    v11 = v7[4];

    v12 = sub_23B56C49C(v5, v5, 1, v9, v10, v11);
    v0[30] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7C0, qword_23B59EC10);
    v0[18] = v12;

    v13 = sub_23B57476C((v0 + 18));
    v0[31] = v13;
    v14 = *(v8 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager);
    v0[32] = v14;
    v15 = *(*v14 + 312);

    v24 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[33] = v17;
    *v17 = v0;
    v17[1] = sub_23B590A14;

    return v24(v13);
  }

  else
  {
    v19 = v6 - v5;
    if (__OFSUB__(v6, v5))
    {
      __break(1u);
    }

    else
    {
      v20 = v0[22];
      v21 = v0[23];
      v22 = v0[21];
      v25 = v0[20];
      v0[2] = v0;
      v0[3] = sub_23B590720;
      swift_continuation_init();
      v0[17] = v22;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
      sub_23B59D8C0();
      (*(v20 + 32))(boxed_opaque_existential_0Tm, v21, v22);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_23B58F540;
      v0[13] = &block_descriptor_135;
      [v25 startAnimationForRange:v5 completion:{v19, v0 + 10}];
      (*(v20 + 8))(boxed_opaque_existential_0Tm, v22);
      v4 = (v0 + 2);
    }

    return MEMORY[0x282200938](v4);
  }
}

uint64_t sub_23B590720()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B590828, v2, v1);
}

uint64_t sub_23B590828()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[19];
  v4 = v0[20];
  type metadata accessor for IntelligenceTextEffectChunk.Replacement(0);
  v5 = v3[2];
  v0[29] = v5;
  v6 = v3[3];
  v7 = v3[4];

  v8 = sub_23B56C49C(v1, v2, 1, v5, v6, v7);
  v0[30] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7C0, qword_23B59EC10);
  v0[18] = v8;

  v9 = sub_23B57476C((v0 + 18));
  v0[31] = v9;
  v10 = *(v4 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator____lazy_storage___viewManager);
  v0[32] = v10;
  v11 = *(*v10 + 312);

  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_23B590A14;

  return v15(v9);
}

uint64_t sub_23B590A14()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_23B590B58, v5, v4);
}

uint64_t sub_23B590B58()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];

  *(v6 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_processedRangeOffset) = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_23B590DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  sub_23B59D8F0();
  v7[8] = sub_23B59D8E0();
  v9 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B590E50, v9, v8);
}

uint64_t sub_23B590E50()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v5 = _Block_copy(v3);
  v0[9] = _Block_copy(v4);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v5;
  v7 = v2;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_23B586B40;
  v9 = v0[7];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return sub_23B594EC4(v12, v10, v11, sub_23B58F050, v6);
}

uint64_t sub_23B590F70()
{
  v1[5] = v0;
  v1[6] = sub_23B59D8F0();
  v1[7] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_23B59100C, v3, v2);
}

uint64_t sub_23B59100C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_replacementQueue;
  swift_beginAccess();
  v4 = *(*(v1 + v3) + 16);
  v0[10] = sub_23B59D8E0();
  if (v4)
  {
    v5 = v0[5];
    v6 = swift_task_alloc();
    v0[15] = v6;
    *(v6 + 16) = v5;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_23B5872F4;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v9 = v0[6];
    v11 = sub_23B59D8B0();
    v0[11] = v11;
    v0[12] = v10;

    return MEMORY[0x2822009F8](sub_23B591190, v11, v10);
  }
}

uint64_t sub_23B591190()
{
  v1 = v0[5];
  v2 = sub_23B58F584();
  v0[13] = v2;
  v3 = *(*v2 + 336);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_23B5870EC;

  return v7();
}

uint64_t sub_23B5912B8(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = &a2[OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_onFlushCompletion];
  v12 = *&a2[OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_onFlushCompletion];
  v13 = *&a2[OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_onFlushCompletion + 8];
  *v11 = &unk_23B5A0018;
  *(v11 + 1) = v10;
  v14 = a2;
  sub_23B58DB98(v12);
}

uint64_t sub_23B59147C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v2[6] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_23B591524, v4, v3);
}

uint64_t sub_23B591524()
{
  v1 = v0[2];
  v2 = sub_23B58F584();
  v0[9] = v2;
  v3 = *(*v2 + 336);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_23B5877E8;

  return v7();
}

uint64_t sub_23B5917C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23B59D8F0();
  v2[4] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B591858, v4, v3);
}

uint64_t sub_23B591858()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23B587CEC;
  v6 = v0[3];

  return sub_23B590F70();
}

uint64_t sub_23B591908(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 200) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  *(v2 + 152) = v3;
  v4 = *(v3 - 8);
  *(v2 + 160) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  sub_23B59D8F0();
  *(v2 + 176) = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  *(v2 + 184) = v7;
  *(v2 + 192) = v6;

  return MEMORY[0x2822009F8](sub_23B591A0C, v7, v6);
}

uint64_t sub_23B591A0C(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = (v2 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_contextRange);
  if ((*(v2 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_contextRange + 16) & 1) == 0)
  {
    v9 = *v3;
    v8 = v3[1];
    if (*(v1 + 200) == 1)
    {
      v10 = *(v2 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_processedRangeOffset);
      v11 = __OFADD__(v8, v10);
      v8 += v10;
      if (v11)
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v8 < v9)
      {
LABEL_14:
        __break(1u);
        return MEMORY[0x282200938](a1);
      }
    }

    if (!__OFSUB__(v8, v9))
    {
      v12 = *(v1 + 160);
      v13 = *(v1 + 168);
      v14 = *(v1 + 152);
      v16 = v8 - v9;
      v17 = *(v2 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_delegate);
      *(v1 + 16) = v1;
      *(v1 + 24) = sub_23B588190;
      swift_continuation_init();
      *(v1 + 136) = v14;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v1 + 112));
      sub_23B59D8C0();
      (*(v12 + 32))(boxed_opaque_existential_0Tm, v13, v14);
      *(v1 + 80) = MEMORY[0x277D85DD0];
      *(v1 + 88) = 1107296256;
      *(v1 + 96) = sub_23B58F540;
      *(v1 + 104) = &block_descriptor_1;
      [v17 intelligenceTextEffectCoordinator:v2 setSelectionForRange:v9 completion:{v16, v1 + 80}];
      (*(v12 + 8))(boxed_opaque_existential_0Tm, v14);
      a1 = v1 + 16;

      return MEMORY[0x282200938](a1);
    }

    __break(1u);
    goto LABEL_13;
  }

  v4 = *(v1 + 176);

  v5 = *(v1 + 168);

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_23B591DE8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  sub_23B59D8F0();
  *(v3 + 32) = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B591E84, v5, v4);
}

uint64_t sub_23B591E84()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  *(v0 + 40) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_23B58F578;
  v6 = *(v0 + 24);
  v7 = *(v0 + 56);

  return sub_23B591908(v7);
}

uint64_t sub_23B591F3C()
{
  v1[2] = v0;
  sub_23B59D8F0();
  v1[3] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23B591FD4, v3, v2);
}

uint64_t sub_23B591FD4()
{
  v1 = v0[2];
  v2 = sub_23B58F584();
  v0[6] = v2;
  v3 = *(*v2 + 320);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23B58879C;

  return v7();
}

uint64_t sub_23B592270(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B59230C, v4, v3);
}

uint64_t sub_23B59230C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v0[7] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v0[8] = v7;
  v0[9] = v6;

  return MEMORY[0x2822009F8](sub_23B5923B8, v7, v6);
}

uint64_t sub_23B5923B8()
{
  v1 = v0[3];
  v2 = sub_23B58F584();
  v0[10] = v2;
  v3 = *(*v2 + 320);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_23B588CC4;

  return v7();
}

uint64_t sub_23B5924E0()
{
  v1[2] = v0;
  sub_23B59D8F0();
  v1[3] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23B592578, v3, v2);
}

uint64_t sub_23B592578()
{
  v1 = v0[2];
  v2 = sub_23B58F584();
  v0[6] = v2;
  v3 = *(*v2 + 328);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23B58879C;

  return v7();
}

uint64_t sub_23B592814(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5928B0, v4, v3);
}

uint64_t sub_23B5928B0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v0[7] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v0[8] = v7;
  v0[9] = v6;

  return MEMORY[0x2822009F8](sub_23B59295C, v7, v6);
}

uint64_t sub_23B59295C()
{
  v1 = v0[3];
  v2 = sub_23B58F584();
  v0[10] = v2;
  v3 = *(*v2 + 328);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_23B589434;

  return v7();
}

void __swiftcall WKIntelligenceSmartReplyTextEffectCoordinator.init()(WKIntelligenceSmartReplyTextEffectCoordinator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_23B592BE8(uint64_t a1, char a2, char a3)
{
  *(v4 + 217) = a3;
  *(v4 + 216) = a2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  sub_23B59D8F0();
  *(v4 + 184) = sub_23B59D8E0();
  v9 = sub_23B59D8B0();
  *(v4 + 192) = v9;
  *(v4 + 200) = v8;

  return MEMORY[0x2822009F8](sub_23B592CF0, v9, v8);
}

uint64_t sub_23B592CF0()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 216);
  v3 = *(v0 + 144);
  type metadata accessor for IntelligenceTextEffectChunk.Pondering(0);
  if (swift_dynamicCastClass())
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4 && v1 == 0;
  if (v5 || (v6 = *(v0 + 152), v7 = sub_23B58F584(), v8 = (*(*v7 + 256))(v7), v9 = , (v8 & 1) != 0))
  {
    v10 = *(v0 + 184);

    v11 = *(v0 + 176);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(*(v0 + 152) + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_delegate);
    v15 = (*(**(v0 + 144) + 96))(v9);
    if (__OFSUB__(v16, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = v15;
      v26 = v14;
      v19 = *(v0 + 168);
      v18 = *(v0 + 176);
      v27 = *(v0 + 216);
      v20 = *(v0 + 160);
      v25 = *(v0 + 152);
      v21 = *(v0 + 144) + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
      v24 = v16 - v15;
      v22 = sub_23B59D300();
      *(v0 + 208) = v22;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_23B589ACC;
      swift_continuation_init();
      *(v0 + 136) = v20;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
      sub_23B59D8C0();
      (*(v19 + 32))(boxed_opaque_existential_0Tm, v18, v20);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_23B58F540;
      *(v0 + 104) = &block_descriptor_9;
      [v26 intelligenceTextEffectCoordinator:v25 updateTextVisibilityForRange:v17 visible:v24 identifier:v27 completion:{v22, v0 + 80}];
      (*(v19 + 8))(boxed_opaque_existential_0Tm, v20);
      v15 = v0 + 16;
    }

    return MEMORY[0x282200938](v15);
  }
}

uint64_t sub_23B592FD8(uint64_t a1, char a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23B56C32C;

  return sub_23B592BE8(a1, a2, a3);
}

uint64_t sub_23B593088(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB80, &qword_23B59FB98);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  sub_23B59D8F0();
  v2[24] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v2[25] = v7;
  v2[26] = v6;

  return MEMORY[0x2822009F8](sub_23B593188, v7, v6);
}

uint64_t sub_23B593188()
{
  v1 = *(*(v0 + 160) + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_delegate);
  v2 = (*(**(v0 + 152) + 96))();
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = v2;
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    v10 = v3 - v2;
    v11 = *(v0 + 160);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_23B59338C;
    swift_continuation_init();
    *(v0 + 136) = v7;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
    sub_23B582C30(0, &qword_27E15AB88, 0x277D75B90);
    sub_23B59D8C0();
    (*(v5 + 32))(boxed_opaque_existential_0Tm, v6, v7);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_23B58A170;
    *(v0 + 104) = &block_descriptor_12;
    [v1 intelligenceTextEffectCoordinator:v11 textPreviewsForRange:v4 completion:{v10, v0 + 80}];
    (*(v5 + 8))(boxed_opaque_existential_0Tm, v7);
    v2 = v0 + 16;
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23B59338C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B593494, v2, v1);
}

uint64_t sub_23B593494()
{
  v2 = v0[23];
  v1 = v0[24];

  v3 = v0[18];
  sub_23B58A184();
  v4 = v3;

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_23B593530(uint64_t a1, char a2)
{
  v2[2] = sub_23B59D8F0();
  v2[3] = sub_23B59D8E0();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_23B58A25C;

  return sub_23B592BE8(a1, a2, 0);
}

uint64_t sub_23B5935F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_23B58F53C;

  return (sub_23B595350)(v2 + 16, a2);
}

uint64_t sub_23B5936B0()
{
  v1[2] = v0;
  sub_23B59D8F0();
  v1[3] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23B593748, v3, v2);
}

uint64_t sub_23B593748()
{
  v1 = v0[2];
  v2 = sub_23B58F584();
  v0[6] = v2;
  v3 = *(*v2 + 304);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23B58879C;

  return v7(0);
}

uint64_t sub_23B593874(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v2[28] = v3;
  v4 = *(v3 - 8);
  v2[29] = v4;
  v5 = *(v4 + 64) + 15;
  v2[30] = swift_task_alloc();
  sub_23B59D8F0();
  v2[31] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v2[32] = v7;
  v2[33] = v6;

  return MEMORY[0x2822009F8](sub_23B593974, v7, v6);
}

uint64_t sub_23B593974()
{
  v1 = *(v0[26] + *(*v0[26] + 104));
  type metadata accessor for IntelligenceTextEffectChunk.Replacement(0);
  if (swift_dynamicCastClass())
  {
    v2 = v0[27];
    v3 = sub_23B58F584();
    v0[34] = v3;
    v4 = *(*v3 + 312);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_23B593B14;

    return v11(0);
  }

  else
  {
    v8 = v0[31];

    v9 = v0[30];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23B593B14()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v7 = *v0;

  v4 = *(v1 + 264);
  v5 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_23B593C58, v5, v4);
}

uint64_t sub_23B593C58()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_replacementQueue;
  v3 = swift_beginAccess();
  if (!*(*(v1 + v2) + 16))
  {
    __break(1u);
    return MEMORY[0x282200938](v3);
  }

  sub_23B595C10(0, 1);
  swift_endAccess();
  v4 = *(v1 + v2);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 48);
    *(v0 + 144) = *(v4 + 32);
    *(v0 + 160) = v6;
    *(v0 + 176) = v5;

    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = sub_23B593FDC;
    v8 = *(v0 + 216);

    return sub_23B59024C(v0 + 144);
  }

  v10 = *(v0 + 216);
  v11 = OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_onFlushCompletion;
  *(v0 + 296) = OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_onFlushCompletion;
  v12 = &v10[v11];
  v13 = *v12;
  *(v0 + 304) = *v12;
  if (!v13)
  {
    v17 = *(v0 + 232);
    v16 = *(v0 + 240);
    v18 = *(v0 + 224);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_23B594318;
    swift_continuation_init();
    *(v0 + 136) = v18;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
    sub_23B59D8C0();
    (*(v17 + 32))(boxed_opaque_existential_0Tm, v16, v18);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_23B58F540;
    *(v0 + 104) = &block_descriptor_20;
    [v10 restoreSelectionAcceptedReplacements:1 completionHandler:v0 + 80];
    (*(v17 + 8))(boxed_opaque_existential_0Tm, v18);
    v3 = v0 + 16;

    return MEMORY[0x282200938](v3);
  }

  *(v0 + 312) = *(v12 + 1);

  v20 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 320) = v15;
  *v15 = v0;
  v15[1] = sub_23B59416C;

  return v20();
}

uint64_t sub_23B593FDC()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v6 = *v0;

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_23B5940FC, v4, v3);
}

uint64_t sub_23B5940FC()
{
  v1 = v0[31];

  sub_23B595CD0((v0 + 18));
  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B59416C()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v6 = *v0;

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_23B59428C, v4, v3);
}

uint64_t sub_23B59428C()
{
  v1 = v0[39];
  v2 = v0[31];
  v3 = (v0[27] + v0[37]);
  sub_23B58DB98(v0[38]);

  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_23B58DB98(v4);
  v6 = v0[30];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23B594318()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B594420, v2, v1);
}

uint64_t sub_23B594420()
{
  v1 = v0[31];

  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B594488(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B572B0C;

  return sub_23B593088(v2);
}

uint64_t sub_23B59451C(uint64_t *a1, char a2)
{
  v4 = *a1;
  v2[2] = sub_23B59D8F0();
  v2[3] = sub_23B59D8E0();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_23B58A25C;

  return sub_23B592BE8(v4, a2, 0);
}

uint64_t sub_23B5945E4(uint64_t a1, uint64_t *a2)
{
  *(v2 + 64) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_23B58D098;

  return (sub_23B595350)(v2 + 16, v3);
}

uint64_t sub_23B59469C()
{
  v1[2] = v0;
  sub_23B59D8F0();
  v1[3] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23B594734, v3, v2);
}

uint64_t sub_23B594734()
{
  v1 = v0[2];
  v2 = sub_23B58F584();
  v0[6] = v2;
  v3 = *(*v2 + 304);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23B594860;

  return v7(0);
}

uint64_t sub_23B594860()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23B56F288, v5, v4);
}

uint64_t sub_23B5949A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B56C32C;

  return sub_23B593874(a1);
}

uint64_t sub_23B594A38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_23B594AD4, v4, v3);
}

uint64_t sub_23B594AD4()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  *(v0 + 64) = sub_23B59D8E0();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = v6;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_23B58D4B8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_23B594BE4(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(sub_23B58F444, v10);
}

char *sub_23B594DA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC58, &qword_23B5A0008);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23B594EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  sub_23B59D8F0();
  v6[16] = sub_23B59D8E0();
  v8 = sub_23B59D8B0();
  v6[17] = v8;
  v6[18] = v7;

  return MEMORY[0x2822009F8](sub_23B594F64, v8, v7);
}

uint64_t sub_23B594F64()
{
  v2 = v0[10];
  if (sub_23B59D210() == v2)
  {
    v3 = v0[16];
LABEL_9:

    v19 = v0[1];

    return v19();
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = &v5[v4];
  if (__OFADD__(v5, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = v0[14];
    v1 = v0[15];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v1 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_contextRange;
    *v10 = v5;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0;
    v11 = swift_allocObject();
    v0[19] = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    v0[2] = v5;
    v0[3] = v6;
    v0[4] = v9;
    v0[5] = &unk_23B5A0028;
    v0[6] = v11;
    v6 = OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_replacementQueue;
    swift_beginAccess();
    v5 = *(v1 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }
  }

  v5 = sub_23B594DA4(0, *(v5 + 2) + 1, 1, v5);
  *(v1 + v6) = v5;
LABEL_5:
  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = sub_23B594DA4((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 2) = v14 + 1;
  v15 = &v5[40 * v14];
  v16 = *(v0 + 1);
  v17 = *(v0 + 2);
  *(v15 + 8) = v0[6];
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  *(v1 + v6) = v5;
  swift_endAccess();
  if (v14)
  {
    v18 = v0[16];

    goto LABEL_9;
  }

  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_23B5951A4;
  v22 = v0[15];

  return sub_23B59024C((v0 + 2));
}

uint64_t sub_23B5951A4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_23B5952C4, v4, v3);
}

uint64_t sub_23B5952C4()
{
  v1 = v0[19];
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B595350(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB80, &qword_23B59FB98);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  sub_23B59D8F0();
  v3[25] = sub_23B59D8E0();
  v8 = sub_23B59D8B0();
  v3[26] = v8;
  v3[27] = v7;

  return MEMORY[0x2822009F8](sub_23B595454, v8, v7);
}

uint64_t sub_23B595454()
{
  v1 = v0[20];
  type metadata accessor for IntelligenceTextEffectChunk.Replacement(0);
  v2 = swift_dynamicCastClass();
  v0[28] = v2;
  if (!v2)
  {
    return sub_23B59DA40();
  }

  v0[29] = *(v2 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_characterDelta);
  v3 = *(v2 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement);
  v4 = *(v2 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement + 8);

  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_23B5955DC;

  return v8();
}

uint64_t sub_23B5955DC()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 216);
  v4 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_23B5956FC, v4, v3);
}

uint64_t sub_23B5956FC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 160);
  v3 = *(**(v0 + 224) + 96);

  v5 = (v3)(v4);
  v6 = v3();
  v8 = __OFADD__(v7, v1);
  v9 = v7 + v1;
  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v12 = (*(**(v0 + 224) + 104))(v5);
  v13 = *(v11 + OBJC_IVAR___WKIntelligenceSmartReplyTextEffectCoordinator_delegate);
  v14 = (v3)(v12);
  v16 = v15;

  if (__OFSUB__(v16, v14))
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200938](v6);
  }

  v17 = *(v0 + 184);
  v18 = *(v0 + 192);
  v19 = *(v0 + 176);
  v22 = *(v0 + 168);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_23B595980;
  swift_continuation_init();
  *(v0 + 136) = v19;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
  sub_23B582C30(0, &qword_27E15AB88, 0x277D75B90);
  sub_23B59D8C0();
  (*(v17 + 32))(boxed_opaque_existential_0Tm, v18, v19);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23B58A170;
  *(v0 + 104) = &block_descriptor_139;
  [v13 intelligenceTextEffectCoordinator:v22 textPreviewsForRange:v14 completion:{v16 - v14, v0 + 80}];
  (*(v17 + 8))(boxed_opaque_existential_0Tm, v19);
  v6 = v0 + 16;

  return MEMORY[0x282200938](v6);
}

uint64_t sub_23B595980()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B595A88, v2, v1);
}

uint64_t sub_23B595A88()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[19];
  v3 = v0[20];

  v5 = v0[18];
  v6 = v5;

  *v4 = v6;
  *(v4 + 8) = 1;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  v7 = v0[1];

  return v7();
}

unint64_t sub_23B595B38(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_23B595C10(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_23B594DA4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_23B595B38(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_23B595D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23B595D5C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23B595DB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56C32C;

  return sub_23B592814(v2, v3);
}

uint64_t sub_23B595E64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56C32C;

  return sub_23B592270(v2, v3);
}

uint64_t sub_23B595F10()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B595F50()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B591DE8(v2, v4, v3);
}

uint64_t sub_23B596004()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56C32C;

  return sub_23B5917C0(v2, v3);
}

uint64_t sub_23B5960B0()
{
  _Block_release(*(v0 + 48));
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23B5960F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_23B56C32C;

  return sub_23B590DB0(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_23B5961D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B596210()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B596250()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B59001C(v2, v3, v5, v4);
}

uint64_t sub_23B596310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B5963E0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B59147C(v4, v0 + v3);
}

uint64_t sub_23B5964C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B5964FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56B770;

  return sub_23B594A38(v2, v3);
}

uint64_t sub_23B59659C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B59668C()
{
  v0 = sub_23B59D660();
  __swift_allocate_value_buffer(v0, qword_27E15C1D0);
  __swift_project_value_buffer(v0, qword_27E15C1D0);
  return sub_23B59D650();
}

uint64_t sub_23B596704(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B56B770;

  return (sub_23B596D6C)(a1, a2);
}

uint64_t sub_23B596944(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_23B59D2D0();
  v3[2] = v5;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a3);
  sub_23B59D2C0();
  sub_23B59D2C0();
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_23B596A9C;

  return sub_23B596D6C(v9, v8);
}

uint64_t sub_23B596A9C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v8 + 8);
  v11(v7, v9);
  v11(v6, v9);
  if (v2)
  {
    if (v5)
    {
      v12 = *(v3 + 48);
      v13 = sub_23B59D290();

      (v12)[2](v12, v13);
      _Block_release(v12);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v14 = *(v3 + 48);
    v14[2](v14, 0);
    _Block_release(v14);
  }

  v17 = v3 + 32;
  v16 = *(v3 + 32);
  v15 = *(v17 + 8);

  v18 = *(v10 + 8);

  return v18();
}

WKMarketplaceKit __swiftcall WKMarketplaceKit.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_23B596D6C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_23B59D2D0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B596E50, 0, 0);
}

uint64_t sub_23B596E50()
{
  sub_23B59D380();
  v0[10] = sub_23B59D370();
  v1 = *(MEMORY[0x277CD4FE0] + 4);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_23B596F00;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282123710](v4, v3);
}

uint64_t sub_23B596F00()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_23B5972EC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_23B59701C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23B59701C()
{
  v36 = v0;
  if (qword_27E15C1C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_23B59D660();
  __swift_project_value_buffer(v7, qword_27E15C1D0);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = sub_23B59D640();
  v10 = sub_23B59D940();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[8];
  v12 = v0[9];
  v15 = v0[4];
  v14 = v0[5];
  if (v11)
  {
    v33 = v10;
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v16 = 136643075;
    sub_23B5977B0();
    v17 = sub_23B59DA90();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_23B57F234(v17, v19, &v35);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2085;
    v22 = sub_23B59DA90();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_23B57F234(v22, v24, &v35);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_23B568000, v9, v33, "WKMarketplaceKit.requestAppInstallation with top origin %{sensitive}s for %{sensitive}s succeeded", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE9F1D0](v34, -1, -1);
    MEMORY[0x23EE9F1D0](v16, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v28 = v0[8];
  v27 = v0[9];
  v30 = v0[6];
  v29 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_23B5972EC()
{
  v48 = v0;
  v1 = v0[10];

  if (qword_27E15C1C8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  v9 = sub_23B59D660();
  __swift_project_value_buffer(v9, qword_27E15C1D0);
  v10 = *(v6 + 16);
  v10(v4, v8, v5);
  v10(v3, v7, v5);
  v11 = v2;
  v12 = sub_23B59D640();
  v13 = sub_23B59D950();

  if (os_log_type_enabled(v12, v13))
  {
    v44 = v0[12];
    v46 = v13;
    v14 = v0[7];
    v42 = v0[6];
    v16 = v0[4];
    v15 = v0[5];
    v17 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47[0] = v45;
    *v17 = 136643331;
    sub_23B5977B0();
    v18 = sub_23B59DA90();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = sub_23B57F234(v18, v20, v47);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2085;
    v23 = sub_23B59DA90();
    v25 = v24;
    v21(v42, v16);
    v26 = sub_23B57F234(v23, v25, v47);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2114;
    v27 = v44;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v28;
    *v43 = v28;
    _os_log_impl(&dword_23B568000, v12, v46, "WKMarketplaceKit.requestAppInstallation with top origin %{sensitive}s for %{sensitive}s failed: %{public}@", v17, 0x20u);
    sub_23B57A674(v43, &qword_27E15AB38, &qword_23B59F9C8);
    MEMORY[0x23EE9F1D0](v43, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EE9F1D0](v45, -1, -1);
    MEMORY[0x23EE9F1D0](v17, -1, -1);
  }

  else
  {
    v30 = v0[6];
    v29 = v0[7];
    v31 = v0[4];
    v32 = v0[5];

    v33 = *(v32 + 8);
    v33(v30, v31);
    v33(v29, v31);
  }

  v34 = v0[12];
  v35 = v0[8];
  v36 = v0[9];
  v38 = v0[6];
  v37 = v0[7];
  swift_willThrow();

  v39 = v0[1];
  v40 = v0[12];

  return v39();
}

unint64_t type metadata accessor for WKMarketplaceKit()
{
  result = qword_27E15C1E8;
  if (!qword_27E15C1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15C1E8);
  }

  return result;
}

uint64_t sub_23B5976A4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B5976EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B596944(v2, v3, v5);
}

unint64_t sub_23B5977B0()
{
  result = qword_27E15AC68;
  if (!qword_27E15AC68)
  {
    sub_23B59D2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15AC68);
  }

  return result;
}

uint64_t sub_23B59780C()
{
  v0 = sub_23B59D660();
  __swift_allocate_value_buffer(v0, qword_27E15C1F8);
  __swift_project_value_buffer(v0, qword_27E15C1F8);
  return sub_23B59D650();
}

uint64_t sub_23B5978BC()
{
  v1 = qword_27E15C218;
  v2 = sub_23B59D350();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_23B597924(uint64_t a1)
{
  v2 = qword_27E15C218;
  v3 = sub_23B59D350();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_23B597990()
{
  sub_23B57A674(v0 + OBJC_IVAR____TtCE11WebKitSwiftCSo22WKTextAnimationManagerP33_7F8377AEF8C09D2172D24292EE3E51D74Base_currentEffect, &qword_27E15A820, qword_23B59ED90);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t variable initialization expression of WKTextAnimationManager.base()
{
  v0 = _s4BaseCMa_0(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCE11WebKitSwiftCSo22WKTextAnimationManagerP33_7F8377AEF8C09D2172D24292EE3E51D74Base_currentEffect;
  v5 = sub_23B59D720();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

id sub_23B597AA4()
{
  v1 = OBJC_IVAR___WKTextAnimationManager____lazy_storage___effectView;
  v2 = *&v0[OBJC_IVAR___WKTextAnimationManager____lazy_storage___effectView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___WKTextAnimationManager____lazy_storage___effectView];
  }

  else
  {
    v4 = objc_allocWithZone(sub_23B59D750());
    v5 = v0;
    v6 = v0;
    v7 = sub_23B59D740();
    v8 = *&v0[v1];
    *&v6[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_23B597CA0(void *a1)
{
  v3 = OBJC_IVAR___WKTextAnimationManager_base;
  v4 = _s4BaseCMa_0(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtCE11WebKitSwiftCSo22WKTextAnimationManagerP33_7F8377AEF8C09D2172D24292EE3E51D74Base_currentEffect;
  v9 = sub_23B59D720();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *&v1[v3] = v7;
  *&v1[OBJC_IVAR___WKTextAnimationManager____lazy_storage___effectView] = 0;
  v10 = OBJC_IVAR___WKTextAnimationManager_chunkToEffect;
  *&v1[v10] = sub_23B59C38C(MEMORY[0x277D84F90]);
  swift_unknownObjectWeakInit();
  v16.receiver = v1;
  v16.super_class = WKTextAnimationManager;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  swift_unknownObjectWeakAssign();
  v12 = v11;
  v13 = [a1 containingViewForTextAnimationType];
  v14 = sub_23B597AA4();
  [v13 addSubview_];

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_23B597EB4(char *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v48 - v7;
  v9 = sub_23B59D780();
  v52 = *(v9 - 8);
  v10 = v52[8];
  MEMORY[0x28223BE20](v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23B59D350();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_23B59D720();
  v18 = *(v55 - 8);
  v19 = v18[8];
  result = MEMORY[0x28223BE20](v55);
  v54 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 2)
  {
    v53 = v8;
    v51 = a1;
    if (a2 == 1)
    {
      v49 = sub_23B597AA4();
      v22 = *(v14 + 16);
      v22(v17, a1, v13);
      v50 = v18;
      v23 = v22;
      v24 = _s15TextEffectChunkCMa(0);
      v25 = objc_allocWithZone(v24);
      v23(&v25[qword_27E15C218], v17, v13);
      v57.receiver = v25;
      v57.super_class = v24;
      v48[1] = objc_msgSendSuper2(&v57, sel_init);
      (*(v14 + 8))(v17, v13);
      v26 = *&v2[OBJC_IVAR___WKTextAnimationManager____lazy_storage___effectView];
      v59 = type metadata accessor for WKTextAnimationManager();
      v60 = sub_23B59D1B0(&qword_27E15AC90, v27, type metadata accessor for WKTextAnimationManager);
      v58[0] = v2;
      v28 = v26;
      v2;
      sub_23B59D770();
      sub_23B59D760();
      (v52[1])(v12, v9);
      v29 = sub_23B59D6B0();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_23B59D680();
      v59 = v29;
      v60 = MEMORY[0x277D74B28];
      v58[0] = v32;
      v33 = v54;
      v34 = v49;
      sub_23B59D6C0();

      __swift_destroy_boxed_opaque_existential_1(v58);
      v23(v17, v51, v13);
      v18 = v50;
      v35 = v53;
      v36 = v55;
      v50[2](v53, v33, v55);
      (v18[7])(v35, 0, 1, v36);
      swift_beginAccess();
    }

    else
    {
      if (a2)
      {
        result = sub_23B59DA40();
        __break(1u);
        return result;
      }

      v37 = v2;
      v52 = sub_23B597AA4();
      v38 = *(v14 + 16);
      v38(v17, a1, v13);
      v39 = v38;
      v50 = v38;
      v40 = _s15TextEffectChunkCMa(0);
      v41 = objc_allocWithZone(v40);
      v39(&v41[qword_27E15C218], v17, v13);
      v56.receiver = v41;
      v56.super_class = v40;
      objc_msgSendSuper2(&v56, sel_init);
      (*(v14 + 8))(v17, v13);
      v42 = *&v37[OBJC_IVAR___WKTextAnimationManager____lazy_storage___effectView];
      sub_23B59D770();
      v43 = sub_23B59D700();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      v46 = sub_23B59D6F0();
      v59 = v43;
      v60 = MEMORY[0x277D74B30];
      v58[0] = v46;
      v33 = v54;
      v47 = v52;
      sub_23B59D6C0();

      __swift_destroy_boxed_opaque_existential_1(v58);
      (v50)(v17, v51, v13);
      v35 = v53;
      v36 = v55;
      v18[2](v53, v33, v55);
      (v18[7])(v35, 0, 1, v36);
      swift_beginAccess();
    }

    sub_23B5984F0(v35, v17);
    swift_endAccess();
    return (v18[1])(v33, v36);
  }

  return result;
}

uint64_t sub_23B5984F0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_23B59D720();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23B57A674(a1, &qword_27E15A820, qword_23B59ED90);
    sub_23B59B3AC(a2, v8);
    v14 = sub_23B59D350();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_23B57A674(v8, &qword_27E15A820, qword_23B59ED90);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_23B59BD40(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_23B59D350();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_23B598880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_23B59D720();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_23B59B3AC(a1, v5);
  swift_endAccess();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_23B57A674(v5, &qword_27E15A820, qword_23B59ED90);
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = sub_23B597AA4();
  sub_23B59D6D0();

  return (*(v7 + 8))(v10, v6);
}

id WKTextAnimationManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t WKTextAnimationManager.targetedPreview(for:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC98, &qword_23B5A0080);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  sub_23B59D8F0();
  v2[24] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v2[25] = v7;
  v2[26] = v6;

  return MEMORY[0x2822009F8](sub_23B598E04, v7, v6);
}

uint64_t sub_23B598E04()
{
  v1 = [*(v0 + 160) delegate];
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 152);
    v4 = [v1 containingViewForTextAnimationType];
    *(v0 + 224) = v4;
    v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v6 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
    v7 = v4;
    [v7 center];
    v10 = [objc_allocWithZone(MEMORY[0x277D758E0]) initWithContainer:v7 center:{v8, v9}];

    v11 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v5 parameters:v6 target:v10];
    *(v0 + 232) = v11;

    _s15TextEffectChunkCMa(0);
    if (swift_dynamicCastClass())
    {
      v13 = *(v0 + 176);
      v12 = *(v0 + 184);
      v14 = *(v0 + 168);
      v15 = *(v0 + 152);
      v16 = sub_23B59D300();
      *(v0 + 240) = v16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_23B599330;
      swift_continuation_init();
      *(v0 + 136) = v14;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACA0, &qword_23B5A0088);
      sub_23B59D8C0();
      (*(v13 + 32))(boxed_opaque_existential_0Tm, v12, v14);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_23B5995BC;
      *(v0 + 104) = &block_descriptor_2;
      [v2 targetedPreviewForID:v16 completionHandler:?];
      (*(v13 + 8))(boxed_opaque_existential_0Tm, v14);

      return MEMORY[0x282200938](v0 + 16);
    }

    v24 = *(v0 + 192);

    if (qword_27E15C1F0 != -1)
    {
      swift_once();
    }

    v25 = sub_23B59D660();
    __swift_project_value_buffer(v25, qword_27E15C1F8);
    v26 = sub_23B59D640();
    v27 = sub_23B59D940();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23B568000, v26, v27, "Can't get text preview. Incorrect UITextEffectTextChunk subclass", v28, 2u);
      MEMORY[0x23EE9F1D0](v28, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = *(v0 + 192);

    if (qword_27E15C1F0 != -1)
    {
      swift_once();
    }

    v19 = sub_23B59D660();
    __swift_project_value_buffer(v19, qword_27E15C1F8);
    v20 = sub_23B59D640();
    v21 = sub_23B59D940();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23B568000, v20, v21, "Can't obtain Targeted Preview. Missing delegate.", v22, 2u);
      MEMORY[0x23EE9F1D0](v22, -1, -1);
    }

    v23 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v11 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
  }

  v29 = *(v0 + 184);

  v30 = *(v0 + 8);

  return v30(v11);
}

uint64_t sub_23B599330()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B599438, v2, v1);
}

uint64_t sub_23B599438()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);

  v3 = *(v0 + 144);

  if (v3)
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);
    v6 = *(v0 + 152);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27E15C1F0 != -1)
    {
      swift_once();
    }

    v7 = sub_23B59D660();
    __swift_project_value_buffer(v7, qword_27E15C1F8);
    v8 = sub_23B59D640();
    v9 = sub_23B59D940();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 152);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B568000, v8, v9, "Could not generate a UITargetedPreview", v14, 2u);
      MEMORY[0x23EE9F1D0](v14, -1, -1);
    }

    swift_unknownObjectRelease();
    v3 = *(v0 + 232);
  }

  v15 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16(v3);
}

uint64_t sub_23B5995BC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC98, &qword_23B5A0080);
  return sub_23B59D8D0();
}

uint64_t sub_23B5997A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23B59D8F0();
  v3[5] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B599840, v5, v4);
}

uint64_t sub_23B599840()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23B599904;
  v8 = v0[4];
  v9 = v0[2];

  return WKTextAnimationManager.targetedPreview(for:)(v9);
}

uint64_t sub_23B599904(void *a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t WKTextAnimationManager.updateTextChunkVisibilityForAnimation(_:visible:)(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AB78, &qword_23B59FB80);
  *(v3 + 160) = v4;
  v5 = *(v4 - 8);
  *(v3 + 168) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  sub_23B59D8F0();
  *(v3 + 184) = sub_23B59D8E0();
  v8 = sub_23B59D8B0();
  *(v3 + 192) = v8;
  *(v3 + 200) = v7;

  return MEMORY[0x2822009F8](sub_23B599B6C, v8, v7);
}

uint64_t sub_23B599B6C()
{
  v1 = *(v0 + 144);
  _s15TextEffectChunkCMa(0);
  if (swift_dynamicCastClass())
  {
    v2 = *(v0 + 152);
    v3 = v1;
    v4 = [v2 delegate];
    *(v0 + 208) = v4;
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + 168);
      v7 = *(v0 + 176);
      v8 = *(v0 + 160);
      v25 = *(v0 + 224);
      v9 = sub_23B59D300();
      *(v0 + 216) = v9;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_23B599F40;
      swift_continuation_init();
      *(v0 + 136) = v8;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
      sub_23B59D8C0();
      (*(v6 + 32))(boxed_opaque_existential_0Tm, v7, v8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_23B58F540;
      *(v0 + 104) = &block_descriptor_3;
      [v5 updateUnderlyingTextVisibilityForTextAnimationID:v9 visible:v25 completionHandler:v0 + 80];
      (*(v6 + 8))(boxed_opaque_existential_0Tm, v8);

      return MEMORY[0x282200938](v0 + 16);
    }

    v16 = *(v0 + 184);

    if (qword_27E15C1F0 != -1)
    {
      swift_once();
    }

    v17 = sub_23B59D660();
    __swift_project_value_buffer(v17, qword_27E15C1F8);
    v18 = sub_23B59D640();
    v19 = sub_23B59D940();
    v20 = os_log_type_enabled(v18, v19);
    v13 = *(v0 + 144);
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B568000, v18, v19, "Can't update Chunk Visibility. Missing delegate.", v21, 2u);
      MEMORY[0x23EE9F1D0](v21, -1, -1);
    }
  }

  else
  {
    v11 = *(v0 + 184);

    if (qword_27E15C1F0 != -1)
    {
      swift_once();
    }

    v12 = sub_23B59D660();
    __swift_project_value_buffer(v12, qword_27E15C1F8);
    v13 = sub_23B59D640();
    v14 = sub_23B59D940();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B568000, v13, v14, "Can't update text visibility. Incorrect UITextEffectTextChunk subclass", v15, 2u);
      MEMORY[0x23EE9F1D0](v15, -1, -1);
    }
  }

  v22 = *(v0 + 176);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_23B599F40()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B59A048, v2, v1);
}

uint64_t sub_23B59A048()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v4 = v0[18];

  swift_unknownObjectRelease();
  v5 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B59A260(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_23B59D8F0();
  *(v4 + 40) = sub_23B59D8E0();
  v6 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B59A300, v6, v5);
}

uint64_t sub_23B59A300()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_23B571EA8;
  v8 = *(v0 + 32);
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);

  return WKTextAnimationManager.updateTextChunkVisibilityForAnimation(_:visible:)(v10, v9);
}

uint64_t WKTextAnimationManager.performReplacementAndGeneratePreview(for:effect:animation:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B572B0C;

  return sub_23B59C644(a1);
}

void sub_23B59A480(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC98, &qword_23B5A0080);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23B59D300();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_23B59D088;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B59A6BC;
  aBlock[3] = &block_descriptor_55;
  v12 = _Block_copy(aBlock);

  [a2 callCompletionHandlerForAnimationID:v9 completionHandler:v12];
  _Block_release(v12);
}

void sub_23B59A6BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t WKTextAnimationManager.replacementEffectDidComplete(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v67 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACA8, &qword_23B5A00B0);
  v75 = *(v85 - 8);
  v6 = *(v75 + 64);
  v7 = MEMORY[0x28223BE20](v85);
  v86 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACB0, &qword_23B5A00B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v67 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACB8, qword_23B5A00C0);
  v13 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v67 - v14;
  v15 = sub_23B59D350();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v70 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v73 = &v67 - v20;
  v21 = sub_23B59D720();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23B597AA4();
  v78 = a1;
  sub_23B59D670();
  sub_23B59D6D0();

  v27 = *(v22 + 8);
  v87 = v21;
  v82 = v27;
  v83 = v22 + 8;
  v27(v25, v21);
  v28 = OBJC_IVAR___WKTextAnimationManager_chunkToEffect;
  swift_beginAccess();
  v72 = v1;
  v67 = v28;
  v29 = *&v1[v28];
  v30 = (v29 + 64);
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v81 = v16 + 16;
  v84 = v22;
  v76 = v22 + 16;
  swift_bridgeObjectRetain_n();
  v35 = 0;
  v79 = v16;
  v80 = v15;
  if (!v33)
  {
LABEL_5:
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v34)
      {

        v45 = v74;
        v44 = v75;
        v46 = v85;
        (*(v75 + 56))(v74, 1, 1, v85);
        goto LABEL_14;
      }

      v33 = *&v30[8 * v36];
      ++v35;
      if (v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  while (1)
  {
    v36 = v35;
LABEL_8:
    v37 = __clz(__rbit64(v33)) | (v36 << 6);
    v38 = v77;
    (*(v16 + 16))(v77, *(v29 + 48) + *(v16 + 72) * v37, v15);
    v39 = *(v29 + 56) + *(v84 + 72) * v37;
    v40 = v85;
    (*(v84 + 16))(v38 + *(v85 + 48), v39, v87);
    sub_23B59CBE0(v38, v86);
    v41 = *(v40 + 48);
    sub_23B59D8F0();
    sub_23B59D8E0();
    sub_23B59D8B0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_23B59D670();
    v42 = v86;
    v43 = sub_23B59D310();
    v82(v25, v87);

    if (v43)
    {
      break;
    }

    v33 &= v33 - 1;
    sub_23B57A674(v42, &qword_27E15ACA8, &qword_23B5A00B0);
    v35 = v36;
    v16 = v79;
    v15 = v80;
    if (!v33)
    {
      goto LABEL_5;
    }
  }

  v45 = v74;
  sub_23B59CBE0(v42, v74);
  v44 = v75;
  v46 = v85;
  (*(v75 + 56))(v45, 0, 1, v85);
  v16 = v79;
  v15 = v80;
LABEL_14:

  if ((*(v44 + 48))(v45, 1, v46) == 1)
  {
    return sub_23B57A674(v45, &qword_27E15ACB0, &qword_23B5A00B8);
  }

  v48 = *(v46 + 48);
  v49 = v69;
  v50 = *(v69 + 48);
  v51 = *(v16 + 32);
  v52 = v68;
  v51(v68, v45, v15);
  v53 = v84;
  v54 = &v52[v50];
  v55 = v87;
  (*(v84 + 32))(v54, v45 + v48, v87);
  v56 = *(v49 + 48);
  v30 = v73;
  v51(v73, v52, v15);
  v82(&v52[v56], v55);
  v57 = v70;
  (*(v16 + 16))(v70, v30, v15);
  v58 = v71;
  (*(v53 + 56))(v71, 1, 1, v55);
  v59 = v72;
  swift_beginAccess();
  sub_23B5984F0(v58, v57);
  swift_endAccess();
  v60 = [v59 delegate];
  if (!v60)
  {
    if (qword_27E15C1F0 == -1)
    {
LABEL_19:
      v63 = sub_23B59D660();
      __swift_project_value_buffer(v63, qword_27E15C1F8);
      v64 = sub_23B59D640();
      v65 = sub_23B59D940();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_23B568000, v64, v65, "Missing delegate.", v66, 2u);
        MEMORY[0x23EE9F1D0](v66, -1, -1);
      }

      return (*(v16 + 8))(v30, v15);
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  v61 = v60;
  v62 = sub_23B59D300();
  [v61 callCompletionHandlerForAnimationID_];

  [v61 replacementEffectDidComplete];
  swift_unknownObjectRelease();
  return (*(v16 + 8))(v30, v15);
}

uint64_t sub_23B59AFA4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B59D20C;

  return sub_23B59C644(a1);
}

uint64_t sub_23B59B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D74B18] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23B56C32C;

  return MEMORY[0x2821DCE40](a1, a2, a3, a4, a5);
}

unint64_t sub_23B59B14C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23B59D350();
  sub_23B59D1B0(&qword_27E15A798, 255, MEMORY[0x277CC95F0]);
  v5 = sub_23B59D7E0();

  return sub_23B59B1E8(a1, v5);
}

unint64_t sub_23B59B1E8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23B59D350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_23B59D1B0(&qword_27E15ACD0, 255, MEMORY[0x277CC95F0]);
      v16 = sub_23B59D800();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_23B59B3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23B59B14C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23B59C038();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_23B59D350();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_23B59D720();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_23B59B9F8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_23B59D720();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23B59B54C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_23B59D720();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B59D350();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACC8, &unk_23B5A01C0);
  v52 = a2;
  result = sub_23B59DA70();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_23B59D1B0(&qword_27E15A798, 255, MEMORY[0x277CC95F0]);
      result = sub_23B59D7E0();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_23B59B9F8(int64_t a1, uint64_t a2)
{
  v4 = sub_23B59D350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_23B59D990();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_23B59D1B0(&qword_27E15A798, 255, MEMORY[0x277CC95F0]);
      v24 = sub_23B59D7E0();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_23B59D720() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23B59BD40(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23B59D350();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23B59B14C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23B59C038();
      goto LABEL_7;
    }

    sub_23B59B54C(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_23B59B14C(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23B59BF44(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23B59DAC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_23B59D720();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_23B59BF44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23B59D350();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_23B59D720();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

char *sub_23B59C038()
{
  v1 = v0;
  v43 = sub_23B59D720();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23B59D350();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACC8, &unk_23B5A01C0);
  v6 = *v0;
  v7 = sub_23B59DA60();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

unint64_t sub_23B59C38C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACB8, qword_23B5A00C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACC8, &unk_23B5A01C0);
    v8 = sub_23B59DA80();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23B57AC04(v10, v6, &qword_27E15ACB8, qword_23B5A00C0);
      result = sub_23B59B14C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23B59D350();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_23B59D720();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t type metadata accessor for WKTextAnimationManager()
{
  result = qword_27E15C2D0;
  if (!qword_27E15C2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15C2D0);
  }

  return result;
}

uint64_t sub_23B59C644(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_23B59D8F0();
  v2[6] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_23B59C6E0, v4, v3);
}

uint64_t sub_23B59C6E0()
{
  v1 = v0[3];
  _s15TextEffectChunkCMa(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0[4];
    v5 = v1;
    v6 = [v4 delegate];
    v0[9] = v6;
    if (v6)
    {
      v7 = v6;
      v8 = v0[5];
      v9 = sub_23B59D8E0();
      v0[10] = v9;
      v10 = swift_task_alloc();
      v0[11] = v10;
      *(v10 + 16) = v7;
      *(v10 + 24) = v3;
      v11 = *(MEMORY[0x277D859E0] + 4);
      v12 = swift_task_alloc();
      v0[12] = v12;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACA0, &qword_23B5A0088);
      *v12 = v0;
      v12[1] = sub_23B59CA08;
      v14 = MEMORY[0x277D85700];

      return MEMORY[0x2822007B8](v0 + 2, v9, v14, 0xD00000000000003BLL, 0x800000023B5A18A0, sub_23B59CFEC, v10, v13);
    }

    v20 = v0[6];

    if (qword_27E15C1F0 != -1)
    {
      swift_once();
    }

    v21 = sub_23B59D660();
    __swift_project_value_buffer(v21, qword_27E15C1F8);
    v17 = sub_23B59D640();
    v22 = sub_23B59D940();
    v23 = os_log_type_enabled(v17, v22);
    v24 = v0[3];
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23B568000, v17, v22, "Can't obtain Targeted Preview. Missing delegate.", v25, 2u);
      MEMORY[0x23EE9F1D0](v25, -1, -1);
    }
  }

  else
  {
    v15 = v0[6];

    if (qword_27E15C1F0 != -1)
    {
      swift_once();
    }

    v16 = sub_23B59D660();
    __swift_project_value_buffer(v16, qword_27E15C1F8);
    v17 = sub_23B59D640();
    v18 = sub_23B59D940();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B568000, v17, v18, "Can't get text preview. Incorrect UITextEffectTextChunk subclass", v19, 2u);
      MEMORY[0x23EE9F1D0](v19, -1, -1);
    }
  }

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_23B59CA08()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B59CB68, v6, v5);
}

uint64_t sub_23B59CB68()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  swift_unknownObjectRelease();

  v4 = v0[2];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_23B59CBE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15ACA8, &qword_23B5A00B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B59CC50()
{
  result = sub_23B59D350();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23B59CCF8()
{
  sub_23B59CD88();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23B59CD88()
{
  if (!qword_27E15ACC0)
  {
    sub_23B59D720();
    v0 = sub_23B59D980();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15ACC0);
    }
  }
}

uint64_t sub_23B59CDE0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B59CE28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B59A260(v2, v3, v5, v4);
}

uint64_t sub_23B59CEF0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B59CF38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B5997A4(v2, v3, v4);
}

uint64_t sub_23B59CFF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC98, &qword_23B5A0080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B59D088(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC98, &qword_23B5A0080) - 8) + 80);
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC98, &qword_23B5A0080);
  sub_23B59D8D0();
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B59D1B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}