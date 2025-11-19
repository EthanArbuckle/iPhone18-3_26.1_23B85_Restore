uint64_t sub_1C0F09638(uint64_t a1)
{
  *(v2 + 544) = v1;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1C0F09670, v1, 0);
}

uint64_t sub_1C0F09670()
{
  v1 = (v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 544);
  if (*(v0 + 17))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | (v2 >> 5) & 1;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      swift_beginAccess();
      v21 = *(v3 + 136);
      *(v0 + 592) = v21;
      if (!v21)
      {
        goto LABEL_40;
      }

      swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      v8 = v22 ? v21 : 0;
      if (!v8 || *(v0 + 32) != 0)
      {
        goto LABEL_40;
      }

      v10 = v22;
      v24 = *(v0 + 544);
      swift_unknownObjectRetain();
      v25 = *(v0 + 64);
      *(v0 + 192) = *(v0 + 48);
      *(v0 + 208) = v25;
      *(v0 + 224) = *(v0 + 80);
      v26 = *(v0 + 32);
      v47 = sub_1C0F0C7AC;
      *(v0 + 160) = *v1;
      *(v0 + 176) = v26;
      v27 = *(v24 + 144);
      swift_unknownObjectRetain();
      v28 = swift_task_alloc();
      *(v0 + 600) = v28;
      *v28 = v0;
      v28[1] = sub_1C0F09E94;
      v16 = *(v0 + 544);
      v18 = v0 + 160;
    }

    else
    {
      swift_beginAccess();
      v21 = *(v3 + 136);
      *(v0 + 608) = v21;
      if (!v21)
      {
        goto LABEL_40;
      }

      swift_getObjectType();
      v40 = swift_conformsToProtocol2();
      v8 = v40 ? v21 : 0;
      if (!v8 || *(v0 + 32) != 0)
      {
        goto LABEL_40;
      }

      v10 = v40;
      v43 = *(v0 + 544);
      swift_unknownObjectRetain();
      v44 = *v1;
      *(v0 + 104) = *(v0 + 32);
      v45 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 48);
      *(v0 + 136) = v45;
      *(v0 + 152) = *(v0 + 80);
      v47 = sub_1C0F0AF90;
      *(v0 + 88) = v44;
      v27 = *(v43 + 144);
      swift_unknownObjectRetain();
      v46 = swift_task_alloc();
      *(v0 + 616) = v46;
      *v46 = v0;
      v46[1] = sub_1C0F0A020;
      v16 = *(v0 + 544);
      v18 = v0 + 88;
    }

    v17 = v2 & 0xDF;
    v19 = v21;
    v20 = v27;
LABEL_45:

    return v47(v18, v19, v20, v16, v8, v10, v17);
  }

  if (!v5)
  {
    swift_beginAccess();
    v6 = *(v3 + 136);
    *(v0 + 552) = v6;
    if (!v6)
    {
      goto LABEL_40;
    }

    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    v8 = v7 ? v6 : 0;
    if (!v8 || *(v0 + 32) != 0)
    {
      goto LABEL_40;
    }

    v10 = v7;
    v11 = *(v0 + 544);
    swift_unknownObjectRetain();
    v12 = *(v0 + 64);
    *(v0 + 408) = *(v0 + 48);
    *(v0 + 424) = v12;
    *(v0 + 440) = *(v0 + 80);
    v13 = *(v0 + 32);
    v47 = sub_1C0F0F56C;
    *(v0 + 376) = *v1;
    *(v0 + 392) = v13;
    v14 = *(v11 + 144);
    swift_unknownObjectRetain();
    v15 = swift_task_alloc();
    *(v0 + 560) = v15;
    *v15 = v0;
    v15[1] = sub_1C0F09B6C;
    v16 = *(v0 + 544);
    v17 = v2 & 0xDF;
    v18 = v0 + 376;
    v19 = v6;
    v20 = v14;
    goto LABEL_45;
  }

  swift_beginAccess();
  v29 = *(v3 + 136);
  *(v0 + 568) = v29;
  if (!v29 || (swift_getObjectType(), (v30 = swift_conformsToProtocol2()) == 0))
  {
LABEL_40:
    v42 = *(v0 + 8);

    return v42();
  }

  v31 = v30;
  v32 = *(v0 + 544);
  swift_unknownObjectRetain();
  sub_1C0F0D80C(v0 + 16, v0 + 232);
  *(v0 + 368) = *(v0 + 80);
  v33 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v33;
  v34 = *(v0 + 32);
  *(v0 + 304) = *v1;
  *(v0 + 320) = v34;
  v35 = *(v3 + 136);
  *(v0 + 576) = v35;
  v36 = *(v32 + 144);
  swift_unknownObjectRetain();
  v37 = swift_task_alloc();
  *(v0 + 584) = v37;
  *v37 = v0;
  v37[1] = sub_1C0F09CF8;
  v38 = *(v0 + 544);

  return sub_1C0F0D868(v0 + 304, v35, v36, v38, v29, v31, v2 & 0xDF, v1);
}

uint64_t sub_1C0F09B6C()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 544);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F09C98, v3, 0);
}

uint64_t sub_1C0F09C98()
{
  v1 = *(v0 + 552);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0F09CF8()
{
  v1 = *v0;
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 576);
  v4 = *(*v0 + 544);
  v6 = *v0;

  sub_1C0F07308(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F09E34, v4, 0);
}

uint64_t sub_1C0F09E34()
{
  v1 = *(v0 + 568);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0F09E94()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 544);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F09FC0, v3, 0);
}

uint64_t sub_1C0F09FC0()
{
  v1 = *(v0 + 592);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0F0A020()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 544);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0A14C, v3, 0);
}

uint64_t sub_1C0F0A14C()
{
  v1 = *(v0 + 608);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0F0A1AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 136);
  *(v4 + 136) = v2;
  *(v4 + 144) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A20C()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C0F0A250(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A2F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 152);
  *(v4 + 152) = v2;
  *(v4 + 160) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A358()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C0F0A39C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A440(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A4A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t AccessibilityActionReceiver.__allocating_init(client:domains:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccessibilityActionReceiver.init(client:domains:)(a1, a2);
  return v4;
}

void *AccessibilityActionReceiver.init(client:domains:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];
  swift_defaultActor_initialize();
  *(v2 + 128) = MEMORY[0x1E69E7CC0];
  type metadata accessor for AccessibilityActionHIDReceiver();
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  swift_allocObject();
  *(v2 + 176) = sub_1C0F07ADC();
  type metadata accessor for AccessibilityActionSender();
  v7 = swift_allocObject();

  swift_defaultActor_initialize();
  v7[18] = 0;
  swift_unknownObjectWeakInit();
  v7[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
  v7[15] = v6;
  v7[16] = v5;
  v3[21] = v7;
  v3[14] = v6;
  v3[15] = v5;
  v8 = v3[16];
  v3[16] = a2;

  v9 = v3[22];
  v10 = sub_1C0F0A8E4(&qword_1EBE77B28);
  v11 = *(v9 + 32);
  *(v9 + 32) = v3;
  *(v9 + 40) = v10;

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1C0F0A6A8(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *a1;
  v7 = a1[1];
  swift_defaultActor_initialize();
  *(v3 + 128) = MEMORY[0x1E69E7CC0];
  type metadata accessor for AccessibilityActionHIDReceiver();
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  swift_allocObject();
  *(v3 + 176) = sub_1C0F07ADC();
  if (!a3)
  {
    type metadata accessor for AccessibilityActionSender();
    a3 = swift_allocObject();

    swift_defaultActor_initialize();
    a3[18] = 0;
    swift_unknownObjectWeakInit();
    a3[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
    a3[15] = v8;
    a3[16] = v7;
  }

  *(v3 + 168) = a3;
  *(v3 + 112) = v8;
  *(v3 + 120) = v7;
  v9 = *(v3 + 128);
  *(v3 + 128) = a2;

  v10 = *(v3 + 176);
  v11 = sub_1C0F0A8E4(&qword_1EBE77B28);
  v12 = *(v10 + 32);
  *(v10 + 32) = v4;
  *(v10 + 40) = v11;

  swift_unknownObjectRelease();
  return v4;
}

void *AccessibilityActionReceiver.deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];
  swift_unknownObjectRelease();
  v4 = v0[19];
  swift_unknownObjectRelease();
  v5 = v0[21];

  v6 = v0[22];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AccessibilityActionReceiver.__deallocating_deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];
  swift_unknownObjectRelease();
  v4 = v0[19];
  swift_unknownObjectRelease();
  v5 = v0[21];

  v6 = v0[22];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C0F0A8A0(uint64_t a1)
{
  result = sub_1C0F0A8E4(&qword_1EBE77B30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0F0A8E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityActionReceiver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0F0AA70(uint64_t a1, uint64_t a2)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C0F0AA90, 0, 0);
}

uint64_t sub_1C0F0AA90()
{
  v1 = *(v0 + 304);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 320) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 312);
    v6 = *(Strong + 112);
    v5 = *(Strong + 120);
    swift_beginAccess();
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    v9 = *(v4 + 72);
    *(v4 + 56) = v6;
    *(v4 + 64) = v5;
    *(v4 + 72) = 0;
    LOBYTE(v6) = *(v4 + 80);
    *(v4 + 80) = 64;

    sub_1C0F08B10(v7, v8, v9, v6);
    swift_beginAccess();
    *(v0 + 88) = *(v4 + 16);
    v10 = *(v4 + 32);
    v11 = *(v4 + 48);
    v12 = *(v4 + 64);
    *(v0 + 152) = *(v4 + 80);
    *(v0 + 136) = v12;
    *(v0 + 120) = v11;
    *(v0 + 104) = v10;
    v19 = *(v4 + 48);
    v20 = *(v4 + 64);
    v21 = *(v4 + 80);
    v17 = *(v4 + 16);
    v18 = *(v4 + 32);
    *(v4 + 48);
    sub_1C0F0D80C(v0 + 88, v0 + 160);
    v13 = sub_1C0F26DD8();
    *(v0 + 328) = v13;
    *(v0 + 48) = v19;
    *(v0 + 64) = v20;
    *(v0 + 80) = v21;
    *(v0 + 16) = v17;
    *(v0 + 32) = v18;
    sub_1C0F07308(v0 + 16);
    if (v13)
    {
      v14 = *(v3 + 168);
      *(v0 + 336) = v14;

      return MEMORY[0x1EEE6DFA0](sub_1C0F0AC94, v14, 0);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C0F0AC94()
{
  v1 = v0[42];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[43] = Strong;
  v3 = *(v1 + 112);
  if (Strong)
  {
    v4 = v0[41];
    v5 = swift_task_alloc();
    v0[44] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0ADAC;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[42];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F11404, 0, 0);
  }
}

uint64_t sub_1C0F0ADAC()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0AEBC, v2, 0);
}

uint64_t sub_1C0F0AEBC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0AF2C, 0, 0);
}

uint64_t sub_1C0F0AF2C()
{
  v1 = v0[40];
  v2 = v0[41];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C0F0AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 2072) = a5;
  *(v7 + 2064) = a4;
  *(v7 + 2056) = a3;
  *(v7 + 2048) = a2;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  *(v7 + 80) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  ObjectType = swift_getObjectType();
  *(v7 + 81) = a7;
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 2080) = v15;
  *v15 = v7;
  v15[1] = sub_1C0F0B0FC;

  return v17(v7 + 2032, v7 + 81, ObjectType, a6);
}

uint64_t sub_1C0F0B0FC()
{
  v1 = *(*v0 + 2080);
  v2 = *(*v0 + 2064);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0B20C, v2, 0);
}

uint64_t sub_1C0F0B20C()
{
  v113 = v0;
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  *(v0 + 2088) = v2;
  v3 = *(v0 + 2040);
  *(v0 + 82) = v3;
  if (v1)
  {
    if (!*(v0 + 2041))
    {
      v25 = (v0 + 1984);
      v26 = *(v0 + 2064);
      v27 = *(v0 + 32);
      *(v0 + 1984) = *(v0 + 16);
      *(v0 + 2000) = v27;
      v29 = *(v0 + 48);
      v28 = *(v0 + 56);
      *(v0 + 2096) = v29;
      v105 = *(v0 + 64);
      v106 = v28;
      v104 = *(v0 + 72);
      v30 = *(v26 + 112);
      *(v0 + 2104) = v30;
      v31 = *(v26 + 120);
      *(v0 + 2112) = v31;
      v32 = v3 & 1 | 0x20;
      v33 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1168);

      sub_1C0F08B10(v106, v105, v104, v33);
      v34 = *(v0 + 2000);
      *(v0 + 1024) = *(v0 + 1984);
      *(v0 + 1040) = v34;
      *(v0 + 1056) = v29;
      *(v0 + 1064) = v30;
      *(v0 + 1072) = v31;
      *(v0 + 1080) = v2;
      *(v0 + 1088) = v32;
      v35 = *(v0 + 1072);
      v110 = *(v0 + 1056);
      v111 = v35;
      v112 = *(v0 + 1088);
      v36 = *(v0 + 1040);
      v108 = *(v0 + 1024);
      v109 = v36;
      sub_1C0F0D80C(v0 + 1024, v0 + 1240);
      v37 = sub_1C0F26DD8();
      *(v0 + 2120) = v37;
      v38 = v111;
      *(v0 + 984) = v110;
      *(v0 + 1000) = v38;
      *(v0 + 1016) = v112;
      v39 = v109;
      *(v0 + 952) = v108;
      *(v0 + 968) = v39;
      sub_1C0F07308(v0 + 952);
      if (!v37)
      {
        v53 = *(v0 + 2048);
        swift_getObjectType();
        v54 = swift_conformsToProtocol2();
        *(v0 + 2208) = v54;
        if (!v54)
        {
          v99 = *(v0 + 2072);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return sub_1C0F50620();
        }

        v55 = v54;
        v56 = *(v0 + 2064);
        v57 = *(v0 + 82) & 1 | 0x20;
        v58 = swift_allocObject();
        *(v0 + 2216) = v58;
        v59 = *v25;
        v60 = *(v0 + 2000);
        *(v0 + 1384) = *v25;
        *(v0 + 1400) = v60;
        v61 = *(v0 + 2088);
        v62 = *(v0 + 2104);
        *(v0 + 1416) = vextq_s8(v61, v62, 8uLL);
        *(v0 + 1432) = vextq_s8(v62, v61, 8uLL);
        *(v0 + 1448) = v57;
        *(v58 + 80) = v57;
        *(v58 + 16) = v59;
        *(v58 + 32) = v60;
        v63 = *(v0 + 1432);
        *(v58 + 48) = *(v0 + 1416);
        *(v58 + 64) = v63;
        *(v0 + 2224) = swift_getObjectType();
        v64 = *(v58 + 17);
        v65 = *(v58 + 24);
        *(v0 + 2016) = *(v58 + 16);
        *(v0 + 2017) = v64;
        *(v0 + 2024) = v65;
        v66 = swift_allocObject();
        *(v0 + 2232) = v66;
        swift_weakInit();
        v67 = swift_allocObject();
        *(v0 + 2240) = v67;
        *(v67 + 16) = v66;
        *(v67 + 24) = v58;
        v68 = *(v55 + 40);
        v55 += 40;
        *(v0 + 2248) = v68;
        *(v0 + 2256) = v55 & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
        sub_1C0F0D80C(v0 + 1384, v0 + 1456);
        v69 = *(*(v55 - 32) + 8);

        v70 = sub_1C0F502B0();
        v72 = v71;
        v73 = sub_1C0F0C1CC;
        v23 = v70;
        v74 = v72;
        goto LABEL_16;
      }

      v23 = *(*(v0 + 2064) + 168);
      *(v0 + 2176) = v23;
      v24 = sub_1C0F0BB60;
LABEL_15:
      v73 = v24;
      v74 = 0;
LABEL_16:

      return MEMORY[0x1EEE6DFA0](v73, v23, v74);
    }

    v4 = *(v0 + 2064);
    if (v2 | v3)
    {
      v5 = *(v0 + 2056);
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 17);
      LOBYTE(v108) = *(v0 + 16);
      BYTE1(v108) = v7;
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      if (v8(&v108, ObjectType, v5))
      {
        v9 = *(v0 + 32);
        *(v0 + 1920) = *(v0 + 16);
        *(v0 + 1936) = v9;
        v10 = *(v0 + 48);
        v11 = *(v0 + 56);
        *(v0 + 2264) = v10;
        v12 = *(v0 + 64);
        v13 = *(v0 + 72);
        v14 = *(v4 + 112);
        *(v0 + 2272) = v14;
        v15 = *(v4 + 120);
        *(v0 + 2280) = v15;
        v16 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 664);

        sub_1C0F08B10(v11, v12, v13, v16);
        v17 = *(v0 + 1936);
        *(v0 + 592) = *(v0 + 1920);
        *(v0 + 608) = v17;
        *(v0 + 624) = v10;
        *(v0 + 632) = v14;
        *(v0 + 640) = v15;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0x80;
        v18 = *(v0 + 640);
        v110 = *(v0 + 624);
        v111 = v18;
        v112 = 0x80;
        v19 = *(v0 + 608);
        v108 = *(v0 + 592);
        v109 = v19;
        sub_1C0F0D80C(v0 + 592, v0 + 736);
        v20 = sub_1C0F26DD8();
        *(v0 + 2288) = v20;
        v21 = v111;
        *(v0 + 552) = v110;
        *(v0 + 568) = v21;
        *(v0 + 584) = v112;
        v22 = v109;
        *(v0 + 520) = v108;
        *(v0 + 536) = v22;
        sub_1C0F07308(v0 + 520);
        if (v20)
        {
          v23 = *(*(v0 + 2064) + 168);
          *(v0 + 2296) = v23;
          v24 = sub_1C0F0C284;
          goto LABEL_15;
        }

        v89 = v0 + 808;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2280);
        v91 = *(v0 + 2264);
        v100 = *(v0 + 1936);
        v93 = 0x80;
        v94 = 872;
        *(v0 + 808) = *(v0 + 1920);
        *(v0 + 824) = v100;
        v95 = 864;
        v96 = 856;
        v97 = 848;
        v98 = 840;
      }

      else
      {
        v75 = *(v0 + 32);
        *(v0 + 1888) = *(v0 + 16);
        *(v0 + 1904) = v75;
        v76 = *(v0 + 48);
        v77 = *(v0 + 56);
        *(v0 + 2312) = v76;
        v78 = *(v0 + 64);
        v79 = *(v0 + 72);
        v80 = *(v4 + 112);
        *(v0 + 2320) = v80;
        v81 = *(v4 + 120);
        *(v0 + 2328) = v81;
        v82 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 232);

        sub_1C0F08B10(v77, v78, v79, v82);
        v83 = *(v0 + 1904);
        *(v0 + 1096) = *(v0 + 1888);
        *(v0 + 1112) = v83;
        *(v0 + 1128) = v76;
        *(v0 + 1136) = v80;
        *(v0 + 1144) = v81;
        *(v0 + 1152) = 0;
        *(v0 + 1160) = 96;
        v84 = *(v0 + 1144);
        v110 = *(v0 + 1128);
        v111 = v84;
        v112 = *(v0 + 1160);
        v85 = *(v0 + 1112);
        v108 = *(v0 + 1096);
        v109 = v85;
        sub_1C0F0D80C(v0 + 1096, v0 + 304);
        v86 = sub_1C0F26DD8();
        *(v0 + 2336) = v86;
        v87 = v108;
        *(v0 + 104) = v109;
        v88 = v111;
        *(v0 + 120) = v110;
        *(v0 + 136) = v88;
        *(v0 + 152) = v112;
        *(v0 + 88) = v87;
        sub_1C0F07308(v0 + 88);
        if (v86)
        {
          v23 = *(*(v0 + 2064) + 168);
          *(v0 + 2344) = v23;
          v24 = sub_1C0F0C39C;
          goto LABEL_15;
        }

        v89 = v0 + 376;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2328);
        v91 = *(v0 + 2312);
        v101 = *(v0 + 1904);
        v93 = 96;
        v94 = 440;
        *(v0 + 376) = *(v0 + 1888);
        *(v0 + 392) = v101;
        v95 = 432;
        v96 = 424;
        v97 = 416;
        v98 = 408;
      }
    }

    else
    {
      v40 = *(v0 + 32);
      *(v0 + 1952) = *(v0 + 16);
      *(v0 + 1968) = v40;
      v41 = *(v0 + 48);
      v107 = *(v0 + 56);
      *(v0 + 2128) = v41;
      v42 = *(v0 + 64);
      v43 = *(v0 + 72);
      v44 = *(v4 + 112);
      *(v0 + 2136) = v44;
      v45 = *(v4 + 120);
      *(v0 + 2144) = v45;
      v46 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1672);

      sub_1C0F08B10(v107, v42, v43, v46);
      v47 = *(v0 + 1968);
      *(v0 + 1600) = *(v0 + 1952);
      *(v0 + 1616) = v47;
      *(v0 + 1632) = v41;
      *(v0 + 1640) = v44;
      *(v0 + 1648) = v45;
      *(v0 + 1656) = 0;
      *(v0 + 1664) = 64;
      v48 = *(v0 + 1648);
      v110 = *(v0 + 1632);
      v111 = v48;
      v112 = *(v0 + 1664);
      v49 = *(v0 + 1616);
      v108 = *(v0 + 1600);
      v109 = v49;
      sub_1C0F0D80C(v0 + 1600, v0 + 1744);
      v50 = sub_1C0F26DD8();
      *(v0 + 2152) = v50;
      v51 = v111;
      *(v0 + 1560) = v110;
      *(v0 + 1576) = v51;
      *(v0 + 1592) = v112;
      v52 = v109;
      *(v0 + 1528) = v108;
      *(v0 + 1544) = v52;
      sub_1C0F07308(v0 + 1528);
      if (v50)
      {
        v23 = *(*(v0 + 2064) + 168);
        *(v0 + 2160) = v23;
        v24 = sub_1C0F0BA48;
        goto LABEL_15;
      }

      v89 = v0 + 1816;
      swift_unknownObjectRelease();
      v90 = *(v0 + 2144);
      v91 = *(v0 + 2128);
      v92 = *(v0 + 1968);
      v93 = 64;
      v94 = 1880;
      *(v0 + 1816) = *(v0 + 1952);
      *(v0 + 1832) = v92;
      v95 = 1872;
      v96 = 1864;
      v97 = 1856;
      v98 = 1848;
    }

    *(v0 + v98) = v91;
    *(v0 + v97) = *(&v91 + 1);
    *(v0 + v96) = v90;
    *(v0 + v95) = 0;
    *(v0 + v94) = v93;
    sub_1C0F07308(v89);
  }

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_1C0F0BA48()
{
  v1 = v0[270];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[271] = Strong;
  if (Strong)
  {
    v3 = v0[269];
    v4 = *(v0[270] + 112);
    v5 = swift_task_alloc();
    v0[274] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0BC74;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[270] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F11418, v7, 0);
  }
}

uint64_t sub_1C0F0BB60()
{
  v1 = v0[272];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[273] = Strong;
  v3 = *(v1 + 112);
  v4 = v0[265];
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[275] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0BDF0;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[258];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F113EC, v7, 0);
  }
}

uint64_t sub_1C0F0BC74()
{
  v1 = *(*v0 + 2192);
  v2 = *(*v0 + 2160);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0BD84, v2, 0);
}

uint64_t sub_1C0F0BD84()
{
  v1 = *(v0 + 2168);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1140C, v2, 0);
}

uint64_t sub_1C0F0BDF0()
{
  v1 = *(*v0 + 2200);
  v2 = *(*v0 + 2176);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0BF00, v2, 0);
}

uint64_t sub_1C0F0BF00()
{
  v1 = *(v0 + 2184);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0BF6C, v2, 0);
}

uint64_t sub_1C0F0BF6C()
{
  v1 = *(v0 + 2048);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  *(v0 + 2208) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 2112);
    v22 = *(v0 + 2096);
    v5 = *(v0 + 2088);
    v6 = *(v0 + 2064);
    v7 = *(v0 + 82) & 1 | 0x20;
    v8 = swift_allocObject();
    *(v0 + 2216) = v8;
    v9 = *(v0 + 1984);
    v10 = *(v0 + 2000);
    *(v0 + 1384) = v9;
    *(v0 + 1400) = v10;
    *(v0 + 1416) = v22;
    *(v0 + 1432) = v4;
    *(v0 + 1440) = v5;
    *(v0 + 1448) = v7;
    *(v8 + 80) = v7;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v11 = *(v0 + 1432);
    *(v8 + 48) = *(v0 + 1416);
    *(v8 + 64) = v11;
    *(v0 + 2224) = swift_getObjectType();
    v12 = *(v8 + 17);
    v13 = *(v8 + 24);
    *(v0 + 2016) = *(v8 + 16);
    *(v0 + 2017) = v12;
    *(v0 + 2024) = v13;
    v14 = swift_allocObject();
    *(v0 + 2232) = v14;
    swift_weakInit();
    v15 = swift_allocObject();
    *(v0 + 2240) = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v8;
    v16 = *(v3 + 40);
    v3 += 40;
    *(v0 + 2248) = v16;
    *(v0 + 2256) = v3 & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
    sub_1C0F0D80C(v0 + 1384, v0 + 1456);
    v17 = *(*(v3 - 32) + 8);

    v19 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0F0C1CC, v19, v18);
  }

  else
  {
    v20 = *(v0 + 2072);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_1C0F50620();
  }
}

uint64_t sub_1C0F0C1CC()
{
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2232);
  v3 = *(v0 + 2064);
  v4 = *(v0 + 2048);
  (*(v0 + 2248))(v0 + 2016, &unk_1C0F582B8, *(v0 + 2240), *(v0 + 2224), *(v0 + 2208));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11414, v3, 0);
}

uint64_t sub_1C0F0C284()
{
  v1 = v0[287];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[288] = Strong;
  if (Strong)
  {
    v3 = v0[286];
    v4 = *(v0[287] + 112);
    v5 = swift_task_alloc();
    v0[295] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0C4B4;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[287] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F1141C, v7, 0);
  }
}

uint64_t sub_1C0F0C39C()
{
  v1 = v0[293];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[294] = Strong;
  if (Strong)
  {
    v3 = v0[292];
    v4 = *(v0[293] + 112);
    v5 = swift_task_alloc();
    v0[296] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0C630;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[293] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F11420, v7, 0);
  }
}

uint64_t sub_1C0F0C4B4()
{
  v1 = *(*v0 + 2360);
  v2 = *(*v0 + 2296);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0C5C4, v2, 0);
}

uint64_t sub_1C0F0C5C4()
{
  v1 = *(v0 + 2304);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F113FC, v2, 0);
}

uint64_t sub_1C0F0C630()
{
  v1 = *(*v0 + 2368);
  v2 = *(*v0 + 2344);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0C740, v2, 0);
}

uint64_t sub_1C0F0C740()
{
  v1 = *(v0 + 2352);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F11400, v2, 0);
}

uint64_t sub_1C0F0C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 2072) = a5;
  *(v7 + 2064) = a4;
  *(v7 + 2056) = a3;
  *(v7 + 2048) = a2;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  *(v7 + 80) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  ObjectType = swift_getObjectType();
  *(v7 + 81) = a7;
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 2080) = v15;
  *v15 = v7;
  v15[1] = sub_1C0F0C918;

  return v17(v7 + 2032, v7 + 81, ObjectType, a6);
}

uint64_t sub_1C0F0C918()
{
  v1 = *(*v0 + 2080);
  v2 = *(*v0 + 2064);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0CA28, v2, 0);
}

uint64_t sub_1C0F0CA28()
{
  v113 = v0;
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  *(v0 + 2088) = v2;
  v3 = *(v0 + 2040);
  *(v0 + 82) = v3;
  if (v1)
  {
    if (!*(v0 + 2041))
    {
      v25 = (v0 + 1984);
      v26 = *(v0 + 2064);
      v27 = *(v0 + 32);
      *(v0 + 1984) = *(v0 + 16);
      *(v0 + 2000) = v27;
      v29 = *(v0 + 48);
      v28 = *(v0 + 56);
      *(v0 + 2096) = v29;
      v105 = *(v0 + 64);
      v106 = v28;
      v104 = *(v0 + 72);
      v30 = *(v26 + 112);
      *(v0 + 2104) = v30;
      v31 = *(v26 + 120);
      *(v0 + 2112) = v31;
      v32 = v3 & 1 | 0x20;
      v33 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1168);

      sub_1C0F08B10(v106, v105, v104, v33);
      v34 = *(v0 + 2000);
      *(v0 + 1024) = *(v0 + 1984);
      *(v0 + 1040) = v34;
      *(v0 + 1056) = v29;
      *(v0 + 1064) = v30;
      *(v0 + 1072) = v31;
      *(v0 + 1080) = v2;
      *(v0 + 1088) = v32;
      v35 = *(v0 + 1072);
      v110 = *(v0 + 1056);
      v111 = v35;
      v112 = *(v0 + 1088);
      v36 = *(v0 + 1040);
      v108 = *(v0 + 1024);
      v109 = v36;
      sub_1C0F0D80C(v0 + 1024, v0 + 1240);
      v37 = sub_1C0F26DD8();
      *(v0 + 2120) = v37;
      v38 = v111;
      *(v0 + 984) = v110;
      *(v0 + 1000) = v38;
      *(v0 + 1016) = v112;
      v39 = v109;
      *(v0 + 952) = v108;
      *(v0 + 968) = v39;
      sub_1C0F07308(v0 + 952);
      if (!v37)
      {
        v53 = *(v0 + 2048);
        swift_getObjectType();
        v54 = swift_conformsToProtocol2();
        *(v0 + 2208) = v54;
        if (!v54)
        {
          v99 = *(v0 + 2072);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return sub_1C0F50620();
        }

        v55 = v54;
        v56 = *(v0 + 2064);
        v57 = *(v0 + 82) & 1 | 0x20;
        v58 = swift_allocObject();
        *(v0 + 2216) = v58;
        v59 = *v25;
        v60 = *(v0 + 2000);
        *(v0 + 1384) = *v25;
        *(v0 + 1400) = v60;
        v61 = *(v0 + 2088);
        v62 = *(v0 + 2104);
        *(v0 + 1416) = vextq_s8(v61, v62, 8uLL);
        *(v0 + 1432) = vextq_s8(v62, v61, 8uLL);
        *(v0 + 1448) = v57;
        *(v58 + 80) = v57;
        *(v58 + 16) = v59;
        *(v58 + 32) = v60;
        v63 = *(v0 + 1432);
        *(v58 + 48) = *(v0 + 1416);
        *(v58 + 64) = v63;
        *(v0 + 2224) = swift_getObjectType();
        v64 = *(v58 + 17);
        v65 = *(v58 + 24);
        *(v0 + 2016) = *(v58 + 16);
        *(v0 + 2017) = v64;
        *(v0 + 2024) = v65;
        v66 = swift_allocObject();
        *(v0 + 2232) = v66;
        swift_weakInit();
        v67 = swift_allocObject();
        *(v0 + 2240) = v67;
        *(v67 + 16) = v66;
        *(v67 + 24) = v58;
        v68 = *(v55 + 40);
        v55 += 40;
        *(v0 + 2248) = v68;
        *(v0 + 2256) = v55 & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
        sub_1C0F0D80C(v0 + 1384, v0 + 1456);
        v69 = *(*(v55 - 32) + 8);

        v70 = sub_1C0F502B0();
        v72 = v71;
        v73 = sub_1C0F0D754;
        v23 = v70;
        v74 = v72;
        goto LABEL_16;
      }

      v23 = *(*(v0 + 2064) + 168);
      *(v0 + 2176) = v23;
      v24 = sub_1C0F0D264;
LABEL_15:
      v73 = v24;
      v74 = 0;
LABEL_16:

      return MEMORY[0x1EEE6DFA0](v73, v23, v74);
    }

    v4 = *(v0 + 2064);
    if (v2 | v3)
    {
      v5 = *(v0 + 2056);
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 17);
      LOBYTE(v108) = *(v0 + 16);
      BYTE1(v108) = v7;
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      if (v8(&v108, ObjectType, v5))
      {
        v9 = *(v0 + 32);
        *(v0 + 1920) = *(v0 + 16);
        *(v0 + 1936) = v9;
        v10 = *(v0 + 48);
        v11 = *(v0 + 56);
        *(v0 + 2264) = v10;
        v12 = *(v0 + 64);
        v13 = *(v0 + 72);
        v14 = *(v4 + 112);
        *(v0 + 2272) = v14;
        v15 = *(v4 + 120);
        *(v0 + 2280) = v15;
        v16 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 664);

        sub_1C0F08B10(v11, v12, v13, v16);
        v17 = *(v0 + 1936);
        *(v0 + 592) = *(v0 + 1920);
        *(v0 + 608) = v17;
        *(v0 + 624) = v10;
        *(v0 + 632) = v14;
        *(v0 + 640) = v15;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0x80;
        v18 = *(v0 + 640);
        v110 = *(v0 + 624);
        v111 = v18;
        v112 = 0x80;
        v19 = *(v0 + 608);
        v108 = *(v0 + 592);
        v109 = v19;
        sub_1C0F0D80C(v0 + 592, v0 + 736);
        v20 = sub_1C0F26DD8();
        *(v0 + 2288) = v20;
        v21 = v111;
        *(v0 + 552) = v110;
        *(v0 + 568) = v21;
        *(v0 + 584) = v112;
        v22 = v109;
        *(v0 + 520) = v108;
        *(v0 + 536) = v22;
        sub_1C0F07308(v0 + 520);
        if (v20)
        {
          v23 = *(*(v0 + 2064) + 168);
          *(v0 + 2296) = v23;
          v24 = sub_1C0F0C284;
          goto LABEL_15;
        }

        v89 = v0 + 808;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2280);
        v91 = *(v0 + 2264);
        v100 = *(v0 + 1936);
        v93 = 0x80;
        v94 = 872;
        *(v0 + 808) = *(v0 + 1920);
        *(v0 + 824) = v100;
        v95 = 864;
        v96 = 856;
        v97 = 848;
        v98 = 840;
      }

      else
      {
        v75 = *(v0 + 32);
        *(v0 + 1888) = *(v0 + 16);
        *(v0 + 1904) = v75;
        v76 = *(v0 + 48);
        v77 = *(v0 + 56);
        *(v0 + 2312) = v76;
        v78 = *(v0 + 64);
        v79 = *(v0 + 72);
        v80 = *(v4 + 112);
        *(v0 + 2320) = v80;
        v81 = *(v4 + 120);
        *(v0 + 2328) = v81;
        v82 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 232);

        sub_1C0F08B10(v77, v78, v79, v82);
        v83 = *(v0 + 1904);
        *(v0 + 1096) = *(v0 + 1888);
        *(v0 + 1112) = v83;
        *(v0 + 1128) = v76;
        *(v0 + 1136) = v80;
        *(v0 + 1144) = v81;
        *(v0 + 1152) = 0;
        *(v0 + 1160) = 96;
        v84 = *(v0 + 1144);
        v110 = *(v0 + 1128);
        v111 = v84;
        v112 = *(v0 + 1160);
        v85 = *(v0 + 1112);
        v108 = *(v0 + 1096);
        v109 = v85;
        sub_1C0F0D80C(v0 + 1096, v0 + 304);
        v86 = sub_1C0F26DD8();
        *(v0 + 2336) = v86;
        v87 = v108;
        *(v0 + 104) = v109;
        v88 = v111;
        *(v0 + 120) = v110;
        *(v0 + 136) = v88;
        *(v0 + 152) = v112;
        *(v0 + 88) = v87;
        sub_1C0F07308(v0 + 88);
        if (v86)
        {
          v23 = *(*(v0 + 2064) + 168);
          *(v0 + 2344) = v23;
          v24 = sub_1C0F0C39C;
          goto LABEL_15;
        }

        v89 = v0 + 376;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2328);
        v91 = *(v0 + 2312);
        v101 = *(v0 + 1904);
        v93 = 96;
        v94 = 440;
        *(v0 + 376) = *(v0 + 1888);
        *(v0 + 392) = v101;
        v95 = 432;
        v96 = 424;
        v97 = 416;
        v98 = 408;
      }
    }

    else
    {
      v40 = *(v0 + 32);
      *(v0 + 1952) = *(v0 + 16);
      *(v0 + 1968) = v40;
      v41 = *(v0 + 48);
      v107 = *(v0 + 56);
      *(v0 + 2128) = v41;
      v42 = *(v0 + 64);
      v43 = *(v0 + 72);
      v44 = *(v4 + 112);
      *(v0 + 2136) = v44;
      v45 = *(v4 + 120);
      *(v0 + 2144) = v45;
      v46 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1672);

      sub_1C0F08B10(v107, v42, v43, v46);
      v47 = *(v0 + 1968);
      *(v0 + 1600) = *(v0 + 1952);
      *(v0 + 1616) = v47;
      *(v0 + 1632) = v41;
      *(v0 + 1640) = v44;
      *(v0 + 1648) = v45;
      *(v0 + 1656) = 0;
      *(v0 + 1664) = 64;
      v48 = *(v0 + 1648);
      v110 = *(v0 + 1632);
      v111 = v48;
      v112 = *(v0 + 1664);
      v49 = *(v0 + 1616);
      v108 = *(v0 + 1600);
      v109 = v49;
      sub_1C0F0D80C(v0 + 1600, v0 + 1744);
      v50 = sub_1C0F26DD8();
      *(v0 + 2152) = v50;
      v51 = v111;
      *(v0 + 1560) = v110;
      *(v0 + 1576) = v51;
      *(v0 + 1592) = v112;
      v52 = v109;
      *(v0 + 1528) = v108;
      *(v0 + 1544) = v52;
      sub_1C0F07308(v0 + 1528);
      if (v50)
      {
        v23 = *(*(v0 + 2064) + 168);
        *(v0 + 2160) = v23;
        v24 = sub_1C0F0BA48;
        goto LABEL_15;
      }

      v89 = v0 + 1816;
      swift_unknownObjectRelease();
      v90 = *(v0 + 2144);
      v91 = *(v0 + 2128);
      v92 = *(v0 + 1968);
      v93 = 64;
      v94 = 1880;
      *(v0 + 1816) = *(v0 + 1952);
      *(v0 + 1832) = v92;
      v95 = 1872;
      v96 = 1864;
      v97 = 1856;
      v98 = 1848;
    }

    *(v0 + v98) = v91;
    *(v0 + v97) = *(&v91 + 1);
    *(v0 + v96) = v90;
    *(v0 + v95) = 0;
    *(v0 + v94) = v93;
    sub_1C0F07308(v89);
  }

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_1C0F0D264()
{
  v1 = v0[272];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[273] = Strong;
  v3 = *(v1 + 112);
  v4 = v0[265];
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[275] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0D378;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[258];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F113F0, v7, 0);
  }
}

uint64_t sub_1C0F0D378()
{
  v1 = *(*v0 + 2200);
  v2 = *(*v0 + 2176);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0D488, v2, 0);
}

uint64_t sub_1C0F0D488()
{
  v1 = *(v0 + 2184);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0D4F4, v2, 0);
}

uint64_t sub_1C0F0D4F4()
{
  v1 = *(v0 + 2048);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  *(v0 + 2208) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 2112);
    v22 = *(v0 + 2096);
    v5 = *(v0 + 2088);
    v6 = *(v0 + 2064);
    v7 = *(v0 + 82) & 1 | 0x20;
    v8 = swift_allocObject();
    *(v0 + 2216) = v8;
    v9 = *(v0 + 1984);
    v10 = *(v0 + 2000);
    *(v0 + 1384) = v9;
    *(v0 + 1400) = v10;
    *(v0 + 1416) = v22;
    *(v0 + 1432) = v4;
    *(v0 + 1440) = v5;
    *(v0 + 1448) = v7;
    *(v8 + 80) = v7;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v11 = *(v0 + 1432);
    *(v8 + 48) = *(v0 + 1416);
    *(v8 + 64) = v11;
    *(v0 + 2224) = swift_getObjectType();
    v12 = *(v8 + 17);
    v13 = *(v8 + 24);
    *(v0 + 2016) = *(v8 + 16);
    *(v0 + 2017) = v12;
    *(v0 + 2024) = v13;
    v14 = swift_allocObject();
    *(v0 + 2232) = v14;
    swift_weakInit();
    v15 = swift_allocObject();
    *(v0 + 2240) = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v8;
    v16 = *(v3 + 40);
    v3 += 40;
    *(v0 + 2248) = v16;
    *(v0 + 2256) = v3 & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
    sub_1C0F0D80C(v0 + 1384, v0 + 1456);
    v17 = *(*(v3 - 32) + 8);

    v19 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0F0D754, v19, v18);
  }

  else
  {
    v20 = *(v0 + 2072);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_1C0F50620();
  }
}

uint64_t sub_1C0F0D754()
{
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2232);
  v3 = *(v0 + 2064);
  v4 = *(v0 + 2048);
  (*(v0 + 2248))(v0 + 2016, &unk_1C0F582B0, *(v0 + 2240), *(v0 + 2224), *(v0 + 2208));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11414, v3, 0);
}

uint64_t sub_1C0F0D868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 2080) = a8;
  *(v8 + 2072) = a5;
  *(v8 + 2064) = a4;
  *(v8 + 2056) = a3;
  *(v8 + 2048) = a2;
  v12 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v12;
  *(v8 + 80) = *(a1 + 64);
  v13 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v13;
  ObjectType = swift_getObjectType();
  *(v8 + 81) = a7;
  v15 = *(a8 + 16) == 1;
  v16 = *(a6 + 24);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 2088) = v18;
  *v18 = v8;
  v18[1] = sub_1C0F0D9F4;

  return v20(v8 + 2032, v8 + 81, v15, ObjectType, a6);
}

uint64_t sub_1C0F0D9F4()
{
  v1 = *(*v0 + 2088);
  v2 = *(*v0 + 2064);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0DB04, v2, 0);
}

uint64_t sub_1C0F0DB04()
{
  v113 = v0;
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  *(v0 + 2096) = v2;
  v3 = *(v0 + 2040);
  *(v0 + 82) = v3;
  if (v1)
  {
    if (!*(v0 + 2041))
    {
      v25 = (v0 + 1984);
      v26 = *(v0 + 2064);
      v27 = *(v0 + 32);
      *(v0 + 1984) = *(v0 + 16);
      *(v0 + 2000) = v27;
      v28 = *(v0 + 48);
      v106 = *(v0 + 56);
      *(v0 + 2104) = v28;
      v105 = *(v0 + 64);
      v104 = *(v0 + 72);
      v29 = *(v26 + 112);
      *(v0 + 2112) = v29;
      v30 = *(v26 + 120);
      *(v0 + 2120) = v30;
      v31 = v3 & 1 | 0x20;
      v32 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1168);

      sub_1C0F08B10(v106, v105, v104, v32);
      v33 = *(v0 + 2000);
      *(v0 + 1024) = *(v0 + 1984);
      *(v0 + 1040) = v33;
      *(v0 + 1056) = v28;
      *(v0 + 1064) = v29;
      *(v0 + 1072) = v30;
      *(v0 + 1080) = v2;
      *(v0 + 1088) = v31;
      v34 = *(v0 + 1072);
      v110 = *(v0 + 1056);
      v111 = v34;
      v112 = *(v0 + 1088);
      v35 = *(v0 + 1040);
      v108 = *(v0 + 1024);
      v109 = v35;
      sub_1C0F0D80C(v0 + 1024, v0 + 1240);
      v36 = sub_1C0F26DD8();
      *(v0 + 2128) = v36;
      v37 = v111;
      *(v0 + 984) = v110;
      *(v0 + 1000) = v37;
      *(v0 + 1016) = v112;
      v38 = v109;
      *(v0 + 952) = v108;
      *(v0 + 968) = v38;
      sub_1C0F07308(v0 + 952);
      if (!v36)
      {
        v52 = *(v0 + 2048);
        swift_getObjectType();
        v53 = swift_conformsToProtocol2();
        *(v0 + 2216) = v53;
        if (!v53)
        {
          v98 = *(v0 + 2080);
          v99 = *(v0 + 2072);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1C0F07308(v98);
          return sub_1C0F50620();
        }

        v54 = v53;
        v55 = *(v0 + 2064);
        v56 = *(v0 + 82) & 1 | 0x20;
        v57 = swift_allocObject();
        *(v0 + 2224) = v57;
        v58 = *v25;
        v59 = *(v0 + 2000);
        *(v0 + 1384) = *v25;
        *(v0 + 1400) = v59;
        v60 = *(v0 + 2112);
        v61 = vextq_s8(v60, *(v0 + 2096), 8uLL);
        *(v0 + 1416) = vextq_s8(*(v0 + 2096), v60, 8uLL);
        *(v0 + 1432) = v61;
        *(v0 + 1448) = v56;
        *(v57 + 80) = v56;
        *(v57 + 16) = v58;
        *(v57 + 32) = v59;
        v62 = *(v0 + 1432);
        *(v57 + 48) = *(v0 + 1416);
        *(v57 + 64) = v62;
        *(v0 + 2232) = swift_getObjectType();
        v63 = *(v57 + 17);
        v64 = *(v57 + 24);
        *(v0 + 2016) = *(v57 + 16);
        *(v0 + 2017) = v63;
        *(v0 + 2024) = v64;
        v65 = swift_allocObject();
        *(v0 + 2240) = v65;
        swift_weakInit();
        v66 = swift_allocObject();
        *(v0 + 2248) = v66;
        *(v66 + 16) = v65;
        *(v66 + 24) = v57;
        v67 = *(v54 + 40);
        v54 += 40;
        *(v0 + 2256) = v67;
        *(v0 + 2264) = v54 & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
        sub_1C0F0D80C(v0 + 1384, v0 + 1456);
        v68 = *(*(v54 - 32) + 8);

        v69 = sub_1C0F502B0();
        v71 = v70;
        v72 = sub_1C0F0EC2C;
        v23 = v69;
        v73 = v71;
        goto LABEL_16;
      }

      v23 = *(*(v0 + 2064) + 168);
      *(v0 + 2184) = v23;
      v24 = sub_1C0F0E464;
LABEL_15:
      v72 = v24;
      v73 = 0;
LABEL_16:

      return MEMORY[0x1EEE6DFA0](v72, v23, v73);
    }

    v4 = *(v0 + 2064);
    if (v2 | v3)
    {
      v5 = *(v0 + 2056);
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 17);
      LOBYTE(v108) = *(v0 + 16);
      BYTE1(v108) = v7;
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      if (v8(&v108, ObjectType, v5))
      {
        v9 = *(v0 + 32);
        *(v0 + 1920) = *(v0 + 16);
        *(v0 + 1936) = v9;
        v10 = *(v0 + 48);
        v11 = *(v0 + 56);
        *(v0 + 2272) = v10;
        v12 = *(v0 + 64);
        v13 = *(v0 + 72);
        v14 = *(v4 + 112);
        *(v0 + 2280) = v14;
        v15 = *(v4 + 120);
        *(v0 + 2288) = v15;
        v16 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 664);

        sub_1C0F08B10(v11, v12, v13, v16);
        v17 = *(v0 + 1936);
        *(v0 + 592) = *(v0 + 1920);
        *(v0 + 608) = v17;
        *(v0 + 624) = v10;
        *(v0 + 632) = v14;
        *(v0 + 640) = v15;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0x80;
        v18 = *(v0 + 640);
        v110 = *(v0 + 624);
        v111 = v18;
        v112 = 0x80;
        v19 = *(v0 + 608);
        v108 = *(v0 + 592);
        v109 = v19;
        sub_1C0F0D80C(v0 + 592, v0 + 736);
        v20 = sub_1C0F26DD8();
        *(v0 + 2296) = v20;
        v21 = v111;
        *(v0 + 552) = v110;
        *(v0 + 568) = v21;
        *(v0 + 584) = v112;
        v22 = v109;
        *(v0 + 520) = v108;
        *(v0 + 536) = v22;
        sub_1C0F07308(v0 + 520);
        if (v20)
        {
          v23 = *(*(v0 + 2064) + 168);
          *(v0 + 2304) = v23;
          v24 = sub_1C0F0EDAC;
          goto LABEL_15;
        }

        v88 = v0 + 808;
        swift_unknownObjectRelease();
        v89 = *(v0 + 2288);
        v90 = *(v0 + 2272);
        v100 = *(v0 + 1936);
        v92 = 0x80;
        v93 = 872;
        *(v0 + 808) = *(v0 + 1920);
        *(v0 + 824) = v100;
        v94 = 864;
        v95 = 856;
        v96 = 848;
        v97 = 840;
      }

      else
      {
        v74 = *(v0 + 32);
        *(v0 + 1888) = *(v0 + 16);
        *(v0 + 1904) = v74;
        v75 = *(v0 + 48);
        v76 = *(v0 + 56);
        *(v0 + 2320) = v75;
        v77 = *(v0 + 64);
        v78 = *(v0 + 72);
        v79 = *(v4 + 112);
        *(v0 + 2328) = v79;
        v80 = *(v4 + 120);
        *(v0 + 2336) = v80;
        v81 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 232);

        sub_1C0F08B10(v76, v77, v78, v81);
        v82 = *(v0 + 1904);
        *(v0 + 1096) = *(v0 + 1888);
        *(v0 + 1112) = v82;
        *(v0 + 1128) = v75;
        *(v0 + 1136) = v79;
        *(v0 + 1144) = v80;
        *(v0 + 1152) = 0;
        *(v0 + 1160) = 96;
        v83 = *(v0 + 1144);
        v110 = *(v0 + 1128);
        v111 = v83;
        v112 = *(v0 + 1160);
        v84 = *(v0 + 1112);
        v108 = *(v0 + 1096);
        v109 = v84;
        sub_1C0F0D80C(v0 + 1096, v0 + 304);
        v85 = sub_1C0F26DD8();
        *(v0 + 2344) = v85;
        v86 = v108;
        *(v0 + 104) = v109;
        v87 = v111;
        *(v0 + 120) = v110;
        *(v0 + 136) = v87;
        *(v0 + 152) = v112;
        *(v0 + 88) = v86;
        sub_1C0F07308(v0 + 88);
        if (v85)
        {
          v23 = *(*(v0 + 2064) + 168);
          *(v0 + 2352) = v23;
          v24 = sub_1C0F0EEC4;
          goto LABEL_15;
        }

        v88 = v0 + 376;
        swift_unknownObjectRelease();
        v89 = *(v0 + 2336);
        v90 = *(v0 + 2320);
        v101 = *(v0 + 1904);
        v92 = 96;
        v93 = 440;
        *(v0 + 376) = *(v0 + 1888);
        *(v0 + 392) = v101;
        v94 = 432;
        v95 = 424;
        v96 = 416;
        v97 = 408;
      }
    }

    else
    {
      v39 = *(v0 + 32);
      *(v0 + 1952) = *(v0 + 16);
      *(v0 + 1968) = v39;
      v40 = *(v0 + 48);
      v107 = *(v0 + 56);
      *(v0 + 2136) = v40;
      v41 = *(v0 + 64);
      v42 = *(v0 + 72);
      v43 = *(v4 + 112);
      *(v0 + 2144) = v43;
      v44 = *(v4 + 120);
      *(v0 + 2152) = v44;
      v45 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1672);

      sub_1C0F08B10(v107, v41, v42, v45);
      v46 = *(v0 + 1968);
      *(v0 + 1600) = *(v0 + 1952);
      *(v0 + 1616) = v46;
      *(v0 + 1632) = v40;
      *(v0 + 1640) = v43;
      *(v0 + 1648) = v44;
      *(v0 + 1656) = 0;
      *(v0 + 1664) = 64;
      v47 = *(v0 + 1648);
      v110 = *(v0 + 1632);
      v111 = v47;
      v112 = *(v0 + 1664);
      v48 = *(v0 + 1616);
      v108 = *(v0 + 1600);
      v109 = v48;
      sub_1C0F0D80C(v0 + 1600, v0 + 1744);
      v49 = sub_1C0F26DD8();
      *(v0 + 2160) = v49;
      v50 = v111;
      *(v0 + 1560) = v110;
      *(v0 + 1576) = v50;
      *(v0 + 1592) = v112;
      v51 = v109;
      *(v0 + 1528) = v108;
      *(v0 + 1544) = v51;
      sub_1C0F07308(v0 + 1528);
      if (v49)
      {
        v23 = *(*(v0 + 2064) + 168);
        *(v0 + 2168) = v23;
        v24 = sub_1C0F0E34C;
        goto LABEL_15;
      }

      v88 = v0 + 1816;
      swift_unknownObjectRelease();
      v89 = *(v0 + 2152);
      v90 = *(v0 + 2136);
      v91 = *(v0 + 1968);
      v92 = 64;
      v93 = 1880;
      *(v0 + 1816) = *(v0 + 1952);
      *(v0 + 1832) = v91;
      v94 = 1872;
      v95 = 1864;
      v96 = 1856;
      v97 = 1848;
    }

    *(v0 + v97) = v90;
    *(v0 + v96) = *(&v90 + 1);
    *(v0 + v95) = v89;
    *(v0 + v94) = 0;
    *(v0 + v93) = v92;
    sub_1C0F07308(v88);
  }

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_1C0F0E34C()
{
  v1 = v0[271];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[272] = Strong;
  if (Strong)
  {
    v3 = v0[270];
    v4 = *(v0[271] + 112);
    v5 = swift_task_alloc();
    v0[275] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0E578;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[271] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F0E794, v7, 0);
  }
}

uint64_t sub_1C0F0E464()
{
  v1 = v0[273];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[274] = Strong;
  v3 = *(v1 + 112);
  v4 = v0[266];
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[276] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0E840;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[258];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F113F8, v7, 0);
  }
}

uint64_t sub_1C0F0E578()
{
  v1 = *(*v0 + 2200);
  v2 = *(*v0 + 2168);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0E688, v2, 0);
}

uint64_t sub_1C0F0E688()
{
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0E6F4, v2, 0);
}

uint64_t sub_1C0F0E6F4()
{
  v1 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v2 = *(v0 + 2136);
  v3 = *(v0 + 1968);
  *(v0 + 1816) = *(v0 + 1952);
  *(v0 + 1832) = v3;
  *(v0 + 1848) = v2;
  *(v0 + 1856) = *(v0 + 2144);
  *(v0 + 1872) = 0;
  *(v0 + 1880) = 64;
  sub_1C0F07308(v0 + 1816);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F0E794()
{
  v1 = *(v0 + 2152);
  v6 = *(v0 + 2136);
  v2 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v3 = *(v0 + 1968);
  *(v0 + 160) = *(v0 + 1952);
  *(v0 + 176) = v3;
  *(v0 + 192) = v6;
  *(v0 + 208) = v1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 64;
  sub_1C0F07308(v0 + 160);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F0E840()
{
  v1 = *(*v0 + 2208);
  v2 = *(*v0 + 2184);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0E950, v2, 0);
}

uint64_t sub_1C0F0E950()
{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0E9BC, v2, 0);
}

uint64_t sub_1C0F0E9BC()
{
  v1 = *(v0 + 2048);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  *(v0 + 2216) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 2120);
    v23 = *(v0 + 2104);
    v5 = *(v0 + 2096);
    v6 = *(v0 + 2064);
    v7 = *(v0 + 82) & 1 | 0x20;
    v8 = swift_allocObject();
    *(v0 + 2224) = v8;
    v9 = *(v0 + 1984);
    v10 = *(v0 + 2000);
    *(v0 + 1384) = v9;
    *(v0 + 1400) = v10;
    *(v0 + 1416) = v23;
    *(v0 + 1432) = v4;
    *(v0 + 1440) = v5;
    *(v0 + 1448) = v7;
    *(v8 + 80) = v7;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v11 = *(v0 + 1432);
    *(v8 + 48) = *(v0 + 1416);
    *(v8 + 64) = v11;
    *(v0 + 2232) = swift_getObjectType();
    v12 = *(v8 + 17);
    v13 = *(v8 + 24);
    *(v0 + 2016) = *(v8 + 16);
    *(v0 + 2017) = v12;
    *(v0 + 2024) = v13;
    v14 = swift_allocObject();
    *(v0 + 2240) = v14;
    swift_weakInit();
    v15 = swift_allocObject();
    *(v0 + 2248) = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v8;
    v16 = *(v3 + 40);
    v3 += 40;
    *(v0 + 2256) = v16;
    *(v0 + 2264) = v3 & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
    sub_1C0F0D80C(v0 + 1384, v0 + 1456);
    v17 = *(*(v3 - 32) + 8);

    v19 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0F0EC2C, v19, v18);
  }

  else
  {
    v20 = *(v0 + 2080);
    v21 = *(v0 + 2072);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1C0F07308(v20);
    return sub_1C0F50620();
  }
}

uint64_t sub_1C0F0EC2C()
{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2064);
  v4 = *(v0 + 2048);
  (*(v0 + 2256))(v0 + 2016, &unk_1C0F582A8, *(v0 + 2248), *(v0 + 2232), *(v0 + 2216));

  return MEMORY[0x1EEE6DFA0](sub_1C0F0ECE4, v3, 0);
}

uint64_t sub_1C0F0ECE4()
{
  v1 = *(v0 + 2224);
  v2 = *(v0 + 2120);
  v8 = *(v0 + 2104);
  v3 = *(v0 + 82);
  v4 = *(v0 + 2096);
  v5 = *(v0 + 2048);

  swift_unknownObjectRelease();
  *(v0 + 1312) = *(v0 + 1984);
  *(v0 + 1328) = *(v0 + 2000);
  *(v0 + 1344) = v8;
  *(v0 + 1360) = v2;
  *(v0 + 1368) = v4;
  *(v0 + 1376) = v3 & 1 | 0x20;
  sub_1C0F07308(v0 + 1312);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C0F0EDAC()
{
  v1 = v0[288];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[289] = Strong;
  if (Strong)
  {
    v3 = v0[287];
    v4 = *(v0[288] + 112);
    v5 = swift_task_alloc();
    v0[296] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0EFDC;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[288] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F0F1FC, v7, 0);
  }
}

uint64_t sub_1C0F0EEC4()
{
  v1 = v0[294];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[295] = Strong;
  if (Strong)
  {
    v3 = v0[293];
    v4 = *(v0[294] + 112);
    v5 = swift_task_alloc();
    v0[297] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0F2A8;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[294] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F0F4C4, v7, 0);
  }
}

uint64_t sub_1C0F0EFDC()
{
  v1 = *(*v0 + 2368);
  v2 = *(*v0 + 2304);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F0EC, v2, 0);
}

uint64_t sub_1C0F0F0EC()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F158, v2, 0);
}

uint64_t sub_1C0F0F158()
{
  v1 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v2 = *(v0 + 2288);
  v3 = *(v0 + 1936);
  *(v0 + 808) = *(v0 + 1920);
  *(v0 + 824) = v3;
  *(v0 + 840) = *(v0 + 2272);
  *(v0 + 856) = v2;
  *(v0 + 864) = 0;
  *(v0 + 872) = 0x80;
  sub_1C0F07308(v0 + 808);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F0F1FC()
{
  v1 = *(v0 + 2288);
  v6 = *(v0 + 2272);
  v2 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v3 = *(v0 + 1936);
  *(v0 + 880) = *(v0 + 1920);
  *(v0 + 896) = v3;
  *(v0 + 912) = v6;
  *(v0 + 928) = v1;
  *(v0 + 936) = 0;
  *(v0 + 944) = 0x80;
  sub_1C0F07308(v0 + 880);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F0F2A8()
{
  v1 = *(*v0 + 2376);
  v2 = *(*v0 + 2352);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F3B8, v2, 0);
}

uint64_t sub_1C0F0F3B8()
{
  v1 = *(v0 + 2360);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F424, v2, 0);
}

uint64_t sub_1C0F0F424()
{
  v1 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v2 = *(v0 + 2336);
  v3 = *(v0 + 1904);
  *(v0 + 376) = *(v0 + 1888);
  *(v0 + 392) = v3;
  *(v0 + 408) = *(v0 + 2320);
  *(v0 + 424) = v2;
  *(v0 + 432) = 0;
  *(v0 + 440) = 96;
  sub_1C0F07308(v0 + 376);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F0F4C4()
{
  v1 = *(v0 + 2336);
  v6 = *(v0 + 2320);
  v2 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v3 = *(v0 + 1904);
  *(v0 + 448) = *(v0 + 1888);
  *(v0 + 464) = v3;
  *(v0 + 480) = v6;
  *(v0 + 496) = v1;
  *(v0 + 504) = 0;
  *(v0 + 512) = 96;
  sub_1C0F07308(v0 + 448);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F0F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 2072) = a5;
  *(v7 + 2064) = a4;
  *(v7 + 2056) = a3;
  *(v7 + 2048) = a2;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  *(v7 + 80) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  ObjectType = swift_getObjectType();
  *(v7 + 81) = a7;
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 2080) = v15;
  *v15 = v7;
  v15[1] = sub_1C0F0F6D8;

  return v17(v7 + 2032, v7 + 81, ObjectType, a6);
}

uint64_t sub_1C0F0F6D8()
{
  v1 = *(*v0 + 2080);
  v2 = *(*v0 + 2064);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F7E8, v2, 0);
}

uint64_t sub_1C0F0F7E8()
{
  v113 = v0;
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  *(v0 + 2088) = v2;
  v3 = *(v0 + 2040);
  *(v0 + 82) = v3;
  if (v1)
  {
    if (!*(v0 + 2041))
    {
      v25 = (v0 + 1984);
      v26 = *(v0 + 2064);
      v27 = *(v0 + 32);
      *(v0 + 1984) = *(v0 + 16);
      *(v0 + 2000) = v27;
      v29 = *(v0 + 48);
      v28 = *(v0 + 56);
      *(v0 + 2096) = v29;
      v105 = *(v0 + 64);
      v106 = v28;
      v104 = *(v0 + 72);
      v30 = *(v26 + 112);
      *(v0 + 2104) = v30;
      v31 = *(v26 + 120);
      *(v0 + 2112) = v31;
      v32 = v3 & 1 | 0x20;
      v33 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1168);

      sub_1C0F08B10(v106, v105, v104, v33);
      v34 = *(v0 + 2000);
      *(v0 + 1024) = *(v0 + 1984);
      *(v0 + 1040) = v34;
      *(v0 + 1056) = v29;
      *(v0 + 1064) = v30;
      *(v0 + 1072) = v31;
      *(v0 + 1080) = v2;
      *(v0 + 1088) = v32;
      v35 = *(v0 + 1072);
      v110 = *(v0 + 1056);
      v111 = v35;
      v112 = *(v0 + 1088);
      v36 = *(v0 + 1040);
      v108 = *(v0 + 1024);
      v109 = v36;
      sub_1C0F0D80C(v0 + 1024, v0 + 1240);
      v37 = sub_1C0F26DD8();
      *(v0 + 2120) = v37;
      v38 = v111;
      *(v0 + 984) = v110;
      *(v0 + 1000) = v38;
      *(v0 + 1016) = v112;
      v39 = v109;
      *(v0 + 952) = v108;
      *(v0 + 968) = v39;
      sub_1C0F07308(v0 + 952);
      if (!v37)
      {
        v53 = *(v0 + 2048);
        swift_getObjectType();
        v54 = swift_conformsToProtocol2();
        *(v0 + 2208) = v54;
        if (!v54)
        {
          v99 = *(v0 + 2072);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return sub_1C0F50620();
        }

        v55 = v54;
        v56 = *(v0 + 2064);
        v57 = *(v0 + 82) & 1 | 0x20;
        v58 = swift_allocObject();
        *(v0 + 2216) = v58;
        v59 = *v25;
        v60 = *(v0 + 2000);
        *(v0 + 1384) = *v25;
        *(v0 + 1400) = v60;
        v61 = *(v0 + 2088);
        v62 = *(v0 + 2104);
        *(v0 + 1416) = vextq_s8(v61, v62, 8uLL);
        *(v0 + 1432) = vextq_s8(v62, v61, 8uLL);
        *(v0 + 1448) = v57;
        *(v58 + 80) = v57;
        *(v58 + 16) = v59;
        *(v58 + 32) = v60;
        v63 = *(v0 + 1432);
        *(v58 + 48) = *(v0 + 1416);
        *(v58 + 64) = v63;
        *(v0 + 2224) = swift_getObjectType();
        v64 = *(v58 + 17);
        v65 = *(v58 + 24);
        *(v0 + 2016) = *(v58 + 16);
        *(v0 + 2017) = v64;
        *(v0 + 2024) = v65;
        v66 = swift_allocObject();
        *(v0 + 2232) = v66;
        swift_weakInit();
        v67 = swift_allocObject();
        *(v0 + 2240) = v67;
        *(v67 + 16) = v66;
        *(v67 + 24) = v58;
        v68 = *(v55 + 40);
        v55 += 40;
        *(v0 + 2248) = v68;
        *(v0 + 2256) = v55 & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
        sub_1C0F0D80C(v0 + 1384, v0 + 1456);
        v69 = *(*(v55 - 32) + 8);

        v70 = sub_1C0F502B0();
        v72 = v71;
        v73 = sub_1C0F108F4;
        v23 = v70;
        v74 = v72;
        goto LABEL_16;
      }

      v23 = *(*(v0 + 2064) + 168);
      *(v0 + 2176) = v23;
      v24 = sub_1C0F1013C;
LABEL_15:
      v73 = v24;
      v74 = 0;
LABEL_16:

      return MEMORY[0x1EEE6DFA0](v73, v23, v74);
    }

    v4 = *(v0 + 2064);
    if (v2 | v3)
    {
      v5 = *(v0 + 2056);
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 17);
      LOBYTE(v108) = *(v0 + 16);
      BYTE1(v108) = v7;
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      if (v8(&v108, ObjectType, v5))
      {
        v9 = *(v0 + 32);
        *(v0 + 1920) = *(v0 + 16);
        *(v0 + 1936) = v9;
        v10 = *(v0 + 48);
        v11 = *(v0 + 56);
        *(v0 + 2264) = v10;
        v12 = *(v0 + 64);
        v13 = *(v0 + 72);
        v14 = *(v4 + 112);
        *(v0 + 2272) = v14;
        v15 = *(v4 + 120);
        *(v0 + 2280) = v15;
        v16 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 664);

        sub_1C0F08B10(v11, v12, v13, v16);
        v17 = *(v0 + 1936);
        *(v0 + 592) = *(v0 + 1920);
        *(v0 + 608) = v17;
        *(v0 + 624) = v10;
        *(v0 + 632) = v14;
        *(v0 + 640) = v15;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0x80;
        v18 = *(v0 + 640);
        v110 = *(v0 + 624);
        v111 = v18;
        v112 = 0x80;
        v19 = *(v0 + 608);
        v108 = *(v0 + 592);
        v109 = v19;
        sub_1C0F0D80C(v0 + 592, v0 + 736);
        v20 = sub_1C0F26DD8();
        *(v0 + 2288) = v20;
        v21 = v111;
        *(v0 + 552) = v110;
        *(v0 + 568) = v21;
        *(v0 + 584) = v112;
        v22 = v109;
        *(v0 + 520) = v108;
        *(v0 + 536) = v22;
        sub_1C0F07308(v0 + 520);
        if (v20)
        {
          v23 = *(*(v0 + 2064) + 168);
          *(v0 + 2296) = v23;
          v24 = sub_1C0F10A70;
          goto LABEL_15;
        }

        v89 = v0 + 808;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2280);
        v91 = *(v0 + 2264);
        v100 = *(v0 + 1936);
        v93 = 0x80;
        v94 = 872;
        *(v0 + 808) = *(v0 + 1920);
        *(v0 + 824) = v100;
        v95 = 864;
        v96 = 856;
        v97 = 848;
        v98 = 840;
      }

      else
      {
        v75 = *(v0 + 32);
        *(v0 + 1888) = *(v0 + 16);
        *(v0 + 1904) = v75;
        v76 = *(v0 + 48);
        v77 = *(v0 + 56);
        *(v0 + 2312) = v76;
        v78 = *(v0 + 64);
        v79 = *(v0 + 72);
        v80 = *(v4 + 112);
        *(v0 + 2320) = v80;
        v81 = *(v4 + 120);
        *(v0 + 2328) = v81;
        v82 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 232);

        sub_1C0F08B10(v77, v78, v79, v82);
        v83 = *(v0 + 1904);
        *(v0 + 1096) = *(v0 + 1888);
        *(v0 + 1112) = v83;
        *(v0 + 1128) = v76;
        *(v0 + 1136) = v80;
        *(v0 + 1144) = v81;
        *(v0 + 1152) = 0;
        *(v0 + 1160) = 96;
        v84 = *(v0 + 1144);
        v110 = *(v0 + 1128);
        v111 = v84;
        v112 = *(v0 + 1160);
        v85 = *(v0 + 1112);
        v108 = *(v0 + 1096);
        v109 = v85;
        sub_1C0F0D80C(v0 + 1096, v0 + 304);
        v86 = sub_1C0F26DD8();
        *(v0 + 2336) = v86;
        v87 = v108;
        *(v0 + 104) = v109;
        v88 = v111;
        *(v0 + 120) = v110;
        *(v0 + 136) = v88;
        *(v0 + 152) = v112;
        *(v0 + 88) = v87;
        sub_1C0F07308(v0 + 88);
        if (v86)
        {
          v23 = *(*(v0 + 2064) + 168);
          *(v0 + 2344) = v23;
          v24 = sub_1C0F10B88;
          goto LABEL_15;
        }

        v89 = v0 + 376;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2328);
        v91 = *(v0 + 2312);
        v101 = *(v0 + 1904);
        v93 = 96;
        v94 = 440;
        *(v0 + 376) = *(v0 + 1888);
        *(v0 + 392) = v101;
        v95 = 432;
        v96 = 424;
        v97 = 416;
        v98 = 408;
      }
    }

    else
    {
      v40 = *(v0 + 32);
      *(v0 + 1952) = *(v0 + 16);
      *(v0 + 1968) = v40;
      v41 = *(v0 + 48);
      v107 = *(v0 + 56);
      *(v0 + 2128) = v41;
      v42 = *(v0 + 64);
      v43 = *(v0 + 72);
      v44 = *(v4 + 112);
      *(v0 + 2136) = v44;
      v45 = *(v4 + 120);
      *(v0 + 2144) = v45;
      v46 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1672);

      sub_1C0F08B10(v107, v42, v43, v46);
      v47 = *(v0 + 1968);
      *(v0 + 1600) = *(v0 + 1952);
      *(v0 + 1616) = v47;
      *(v0 + 1632) = v41;
      *(v0 + 1640) = v44;
      *(v0 + 1648) = v45;
      *(v0 + 1656) = 0;
      *(v0 + 1664) = 64;
      v48 = *(v0 + 1648);
      v110 = *(v0 + 1632);
      v111 = v48;
      v112 = *(v0 + 1664);
      v49 = *(v0 + 1616);
      v108 = *(v0 + 1600);
      v109 = v49;
      sub_1C0F0D80C(v0 + 1600, v0 + 1744);
      v50 = sub_1C0F26DD8();
      *(v0 + 2152) = v50;
      v51 = v111;
      *(v0 + 1560) = v110;
      *(v0 + 1576) = v51;
      *(v0 + 1592) = v112;
      v52 = v109;
      *(v0 + 1528) = v108;
      *(v0 + 1544) = v52;
      sub_1C0F07308(v0 + 1528);
      if (v50)
      {
        v23 = *(*(v0 + 2064) + 168);
        *(v0 + 2160) = v23;
        v24 = sub_1C0F10024;
        goto LABEL_15;
      }

      v89 = v0 + 1816;
      swift_unknownObjectRelease();
      v90 = *(v0 + 2144);
      v91 = *(v0 + 2128);
      v92 = *(v0 + 1968);
      v93 = 64;
      v94 = 1880;
      *(v0 + 1816) = *(v0 + 1952);
      *(v0 + 1832) = v92;
      v95 = 1872;
      v96 = 1864;
      v97 = 1856;
      v98 = 1848;
    }

    *(v0 + v98) = v91;
    *(v0 + v97) = *(&v91 + 1);
    *(v0 + v96) = v90;
    *(v0 + v95) = 0;
    *(v0 + v94) = v93;
    sub_1C0F07308(v89);
  }

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_1C0F10024()
{
  v1 = v0[270];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[271] = Strong;
  if (Strong)
  {
    v3 = v0[269];
    v4 = *(v0[270] + 112);
    v5 = swift_task_alloc();
    v0[274] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F10250;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[270] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F10470, v7, 0);
  }
}

uint64_t sub_1C0F1013C()
{
  v1 = v0[272];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[273] = Strong;
  v3 = *(v1 + 112);
  v4 = v0[265];
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[275] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F10518;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[258];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F113F4, v7, 0);
  }
}

uint64_t sub_1C0F10250()
{
  v1 = *(*v0 + 2192);
  v2 = *(*v0 + 2160);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F10360, v2, 0);
}

uint64_t sub_1C0F10360()
{
  v1 = *(v0 + 2168);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F103CC, v2, 0);
}

uint64_t sub_1C0F103CC()
{
  v1 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v2 = *(v0 + 2144);
  v3 = *(v0 + 1968);
  *(v0 + 1816) = *(v0 + 1952);
  *(v0 + 1832) = v3;
  *(v0 + 1848) = *(v0 + 2128);
  *(v0 + 1864) = v2;
  *(v0 + 1872) = 0;
  *(v0 + 1880) = 64;
  sub_1C0F07308(v0 + 1816);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F10470()
{
  v1 = *(v0 + 2144);
  v6 = *(v0 + 2128);
  v2 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v3 = *(v0 + 1968);
  *(v0 + 160) = *(v0 + 1952);
  *(v0 + 176) = v3;
  *(v0 + 192) = v6;
  *(v0 + 208) = v1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 64;
  sub_1C0F07308(v0 + 160);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F10518()
{
  v1 = *(*v0 + 2200);
  v2 = *(*v0 + 2176);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F10628, v2, 0);
}

uint64_t sub_1C0F10628()
{
  v1 = *(v0 + 2184);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F10694, v2, 0);
}

uint64_t sub_1C0F10694()
{
  v1 = *(v0 + 2048);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  *(v0 + 2208) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 2112);
    v22 = *(v0 + 2096);
    v5 = *(v0 + 2088);
    v6 = *(v0 + 2064);
    v7 = *(v0 + 82) & 1 | 0x20;
    v8 = swift_allocObject();
    *(v0 + 2216) = v8;
    v9 = *(v0 + 1984);
    v10 = *(v0 + 2000);
    *(v0 + 1384) = v9;
    *(v0 + 1400) = v10;
    *(v0 + 1416) = v22;
    *(v0 + 1432) = v4;
    *(v0 + 1440) = v5;
    *(v0 + 1448) = v7;
    *(v8 + 80) = v7;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v11 = *(v0 + 1432);
    *(v8 + 48) = *(v0 + 1416);
    *(v8 + 64) = v11;
    *(v0 + 2224) = swift_getObjectType();
    v12 = *(v8 + 17);
    v13 = *(v8 + 24);
    *(v0 + 2016) = *(v8 + 16);
    *(v0 + 2017) = v12;
    *(v0 + 2024) = v13;
    v14 = swift_allocObject();
    *(v0 + 2232) = v14;
    swift_weakInit();
    v15 = swift_allocObject();
    *(v0 + 2240) = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v8;
    v16 = *(v3 + 40);
    v3 += 40;
    *(v0 + 2248) = v16;
    *(v0 + 2256) = v3 & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
    sub_1C0F0D80C(v0 + 1384, v0 + 1456);
    v17 = *(*(v3 - 32) + 8);

    v19 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0F108F4, v19, v18);
  }

  else
  {
    v20 = *(v0 + 2072);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_1C0F50620();
  }
}

uint64_t sub_1C0F108F4()
{
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2232);
  v3 = *(v0 + 2064);
  v4 = *(v0 + 2048);
  (*(v0 + 2248))(v0 + 2016, &unk_1C0F582A0, *(v0 + 2240), *(v0 + 2224), *(v0 + 2208));

  return MEMORY[0x1EEE6DFA0](sub_1C0F109AC, v3, 0);
}

uint64_t sub_1C0F109AC()
{
  v1 = *(v0 + 2216);
  v2 = *(v0 + 2112);
  v8 = *(v0 + 2096);
  v3 = *(v0 + 82);
  v4 = *(v0 + 2088);
  v5 = *(v0 + 2048);

  swift_unknownObjectRelease();
  *(v0 + 1312) = *(v0 + 1984);
  *(v0 + 1328) = *(v0 + 2000);
  *(v0 + 1344) = v8;
  *(v0 + 1360) = v2;
  *(v0 + 1368) = v4;
  *(v0 + 1376) = v3 & 1 | 0x20;
  sub_1C0F07308(v0 + 1312);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C0F10A70()
{
  v1 = v0[287];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[288] = Strong;
  if (Strong)
  {
    v3 = v0[286];
    v4 = *(v0[287] + 112);
    v5 = swift_task_alloc();
    v0[295] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F10CA0;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[287] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F10EBC, v7, 0);
  }
}

uint64_t sub_1C0F10B88()
{
  v1 = v0[293];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[294] = Strong;
  if (Strong)
  {
    v3 = v0[292];
    v4 = *(v0[293] + 112);
    v5 = swift_task_alloc();
    v0[296] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F10F6C;

    return sub_1C0F05A8C(v3, v4);
  }

  else
  {
    v7 = v0[258];
    [*(v0[293] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F11188, v7, 0);
  }
}

uint64_t sub_1C0F10CA0()
{
  v1 = *(*v0 + 2360);
  v2 = *(*v0 + 2296);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F10DB0, v2, 0);
}

uint64_t sub_1C0F10DB0()
{
  v1 = *(v0 + 2304);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F10E1C, v2, 0);
}

uint64_t sub_1C0F10E1C()
{
  v1 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v2 = *(v0 + 2264);
  v3 = *(v0 + 1936);
  *(v0 + 808) = *(v0 + 1920);
  *(v0 + 824) = v3;
  *(v0 + 840) = v2;
  *(v0 + 848) = *(v0 + 2272);
  *(v0 + 864) = 0;
  *(v0 + 872) = 0x80;
  sub_1C0F07308(v0 + 808);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F10EBC()
{
  v1 = *(v0 + 2280);
  v6 = *(v0 + 2264);
  v2 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v3 = *(v0 + 1936);
  *(v0 + 880) = *(v0 + 1920);
  *(v0 + 896) = v3;
  *(v0 + 912) = v6;
  *(v0 + 928) = v1;
  *(v0 + 936) = 0;
  *(v0 + 944) = 0x80;
  sub_1C0F07308(v0 + 880);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F10F6C()
{
  v1 = *(*v0 + 2368);
  v2 = *(*v0 + 2344);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0F1107C, v2, 0);
}

uint64_t sub_1C0F1107C()
{
  v1 = *(v0 + 2352);
  v2 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F110E8, v2, 0);
}

uint64_t sub_1C0F110E8()
{
  v1 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v2 = *(v0 + 2312);
  v3 = *(v0 + 1904);
  *(v0 + 376) = *(v0 + 1888);
  *(v0 + 392) = v3;
  *(v0 + 408) = v2;
  *(v0 + 416) = *(v0 + 2320);
  *(v0 + 432) = 0;
  *(v0 + 440) = 96;
  sub_1C0F07308(v0 + 376);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F11188()
{
  v1 = *(v0 + 2328);
  v6 = *(v0 + 2312);
  v2 = *(v0 + 2048);

  swift_unknownObjectRelease();
  v3 = *(v0 + 1904);
  *(v0 + 448) = *(v0 + 1888);
  *(v0 + 464) = v3;
  *(v0 + 480) = v6;
  *(v0 + 496) = v1;
  *(v0 + 504) = 0;
  *(v0 + 512) = 96;
  sub_1C0F07308(v0 + 448);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F11234()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C0EEFCF4;

  return sub_1C0F0AA70(v2, v3);
}

uint64_t sub_1C0F112CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C0EEF864;

  return sub_1C0F0AA70(v2, v3);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0F113A4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 <= 1)
  {
    if (a4 >> 5)
    {
      if (v4 == 1)
      {
      }
    }

    else
    {
      return sub_1C0F072F4(result, a2);
    }
  }

  else if (v4 == 2 || v4 == 3 || v4 == 4)
  {
  }

  return result;
}

unint64_t sub_1C0F11438(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x70704165646973;
    v7 = 0x726F685369726973;
    if (a1 != 10)
    {
      v7 = 1801675106;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6353657461746F72;
    v9 = 0x6C6C6F726373;
    if (a1 != 7)
    {
      v9 = 0x6E49657275636573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D6F74737563;
    v2 = 0xD000000000000017;
    v3 = 1701998445;
    if (a1 != 4)
    {
      v3 = 1852141679;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656369766564;
    if (a1 != 1)
    {
      v4 = 0x7365727574736567;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C0F115BC(uint64_t a1)
{
  v2 = sub_1C0F127B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F115F8(uint64_t a1)
{
  v2 = sub_1C0F127B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F160FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F11670(uint64_t a1)
{
  v2 = sub_1C0F12760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F116AC(uint64_t a1)
{
  v2 = sub_1C0F12760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F116E8(uint64_t a1)
{
  v2 = sub_1C0F12B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11724(uint64_t a1)
{
  v2 = sub_1C0F12B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11760(uint64_t a1)
{
  v2 = sub_1C0F12AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1179C(uint64_t a1)
{
  v2 = sub_1C0F12AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F117D8(uint64_t a1)
{
  v2 = sub_1C0F12AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11814(uint64_t a1)
{
  v2 = sub_1C0F12AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11850(uint64_t a1)
{
  v2 = sub_1C0F12A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1188C(uint64_t a1)
{
  v2 = sub_1C0F12A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F118C8(uint64_t a1)
{
  v2 = sub_1C0F12A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11904(uint64_t a1)
{
  v2 = sub_1C0F12A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11940(uint64_t a1)
{
  v2 = sub_1C0F129AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1197C(uint64_t a1)
{
  v2 = sub_1C0F129AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F119B8(uint64_t a1)
{
  v2 = sub_1C0F12958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F119F4(uint64_t a1)
{
  v2 = sub_1C0F12958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11A30(uint64_t a1)
{
  v2 = sub_1C0F12904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11A6C(uint64_t a1)
{
  v2 = sub_1C0F12904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11AA8(uint64_t a1)
{
  v2 = sub_1C0F128B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11AE4(uint64_t a1)
{
  v2 = sub_1C0F128B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11B20(uint64_t a1)
{
  v2 = sub_1C0F1285C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11B5C(uint64_t a1)
{
  v2 = sub_1C0F1285C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11B98(uint64_t a1)
{
  v2 = sub_1C0F12808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11BD4(uint64_t a1)
{
  v2 = sub_1C0F12808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAssistiveTouchAction.MenuAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B38, &qword_1C0F582D0);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B40, &qword_1C0F582D8);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B48, &qword_1C0F582E0);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B50, &qword_1C0F582E8);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B58, &qword_1C0F582F0);
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B60, &qword_1C0F582F8);
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v57 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B68, &qword_1C0F58300);
  v70 = *(v71 - 8);
  v21 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v57 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B70, &qword_1C0F58308);
  v67 = *(v68 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v57 - v24;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B78, &qword_1C0F58310);
  v64 = *(v65 - 8);
  v25 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - v26;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B80, &qword_1C0F58318);
  v61 = *(v62 - 8);
  v27 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v57 - v28;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B88, &qword_1C0F58320);
  v58 = *(v59 - 8);
  v29 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v31 = &v57 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B90, &qword_1C0F58328);
  v57 = *(v32 - 8);
  v33 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v57 - v34;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B98, &qword_1C0F58330);
  v36 = *(v91 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v39 = &v57 - v38;
  v40 = *v1;
  v41 = a1;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_0(v41, v43);
  sub_1C0F12760();
  v90 = v39;
  sub_1C0F508B0();
  v44 = (v36 + 8);
  if (v40 > 5)
  {
    if (v40 > 8)
    {
      if (v40 == 9)
      {
        v101 = 9;
        sub_1C0F1285C();
        v48 = v81;
        v50 = v90;
        v49 = v91;
        sub_1C0F50700();
        v52 = v82;
        v51 = v83;
      }

      else if (v40 == 10)
      {
        v102 = 10;
        sub_1C0F12808();
        v48 = v84;
        v50 = v90;
        v49 = v91;
        sub_1C0F50700();
        v52 = v85;
        v51 = v86;
      }

      else
      {
        v103 = 11;
        sub_1C0F127B4();
        v48 = v87;
        v50 = v90;
        v49 = v91;
        sub_1C0F50700();
        v52 = v88;
        v51 = v89;
      }
    }

    else if (v40 == 6)
    {
      v98 = 6;
      sub_1C0F12958();
      v48 = v72;
      v50 = v90;
      v49 = v91;
      sub_1C0F50700();
      v52 = v73;
      v51 = v74;
    }

    else if (v40 == 7)
    {
      v99 = 7;
      sub_1C0F12904();
      v48 = v75;
      v50 = v90;
      v49 = v91;
      sub_1C0F50700();
      v52 = v76;
      v51 = v77;
    }

    else
    {
      v100 = 8;
      sub_1C0F128B0();
      v48 = v78;
      v50 = v90;
      v49 = v91;
      sub_1C0F50700();
      v52 = v79;
      v51 = v80;
    }

    (*(v52 + 8))(v48, v51);
  }

  else if (v40 > 2)
  {
    if (v40 == 3)
    {
      v95 = 3;
      sub_1C0F12A54();
      v54 = v63;
      v50 = v90;
      v49 = v91;
      sub_1C0F50700();
      (*(v64 + 8))(v54, v65);
    }

    else if (v40 == 4)
    {
      v96 = 4;
      sub_1C0F12A00();
      v53 = v66;
      v50 = v90;
      v49 = v91;
      sub_1C0F50700();
      (*(v67 + 8))(v53, v68);
    }

    else
    {
      v97 = 5;
      sub_1C0F129AC();
      v56 = v69;
      v50 = v90;
      v49 = v91;
      sub_1C0F50700();
      (*(v70 + 8))(v56, v71);
    }
  }

  else if (v40)
  {
    if (v40 == 1)
    {
      v93 = 1;
      sub_1C0F12AFC();
      v45 = v90;
      v46 = v91;
      sub_1C0F50700();
      (*(v58 + 8))(v31, v59);
      return (*v44)(v45, v46);
    }

    v94 = 2;
    sub_1C0F12AA8();
    v55 = v60;
    v50 = v90;
    v49 = v91;
    sub_1C0F50700();
    (*(v61 + 8))(v55, v62);
  }

  else
  {
    v92 = 0;
    sub_1C0F12B50();
    v50 = v90;
    v49 = v91;
    sub_1C0F50700();
    (*(v57 + 8))(v35, v32);
  }

  return (*v44)(v50, v49);
}

unint64_t sub_1C0F12760()
{
  result = qword_1EBE77BA0;
  if (!qword_1EBE77BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BA0);
  }

  return result;
}

unint64_t sub_1C0F127B4()
{
  result = qword_1EBE77BA8;
  if (!qword_1EBE77BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BA8);
  }

  return result;
}

unint64_t sub_1C0F12808()
{
  result = qword_1EBE77BB0;
  if (!qword_1EBE77BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BB0);
  }

  return result;
}

unint64_t sub_1C0F1285C()
{
  result = qword_1EBE77BB8;
  if (!qword_1EBE77BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BB8);
  }

  return result;
}

unint64_t sub_1C0F128B0()
{
  result = qword_1EBE77BC0;
  if (!qword_1EBE77BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BC0);
  }

  return result;
}

unint64_t sub_1C0F12904()
{
  result = qword_1EBE77BC8;
  if (!qword_1EBE77BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BC8);
  }

  return result;
}

unint64_t sub_1C0F12958()
{
  result = qword_1EBE77BD0;
  if (!qword_1EBE77BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BD0);
  }

  return result;
}

unint64_t sub_1C0F129AC()
{
  result = qword_1EBE77BD8;
  if (!qword_1EBE77BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BD8);
  }

  return result;
}

unint64_t sub_1C0F12A00()
{
  result = qword_1EBE77BE0;
  if (!qword_1EBE77BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BE0);
  }

  return result;
}

unint64_t sub_1C0F12A54()
{
  result = qword_1EBE77BE8;
  if (!qword_1EBE77BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BE8);
  }

  return result;
}

unint64_t sub_1C0F12AA8()
{
  result = qword_1EBE77BF0;
  if (!qword_1EBE77BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BF0);
  }

  return result;
}

unint64_t sub_1C0F12AFC()
{
  result = qword_1EBE77BF8;
  if (!qword_1EBE77BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BF8);
  }

  return result;
}

unint64_t sub_1C0F12B50()
{
  result = qword_1EBE77C00;
  if (!qword_1EBE77C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C00);
  }

  return result;
}

uint64_t AccessibilityAssistiveTouchAction.MenuAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilityAssistiveTouchAction.MenuAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C08, &qword_1C0F58338);
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v104 = &v69[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C10, &qword_1C0F58340);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v69[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C18, &qword_1C0F58348);
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v69[-v11];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C20, &qword_1C0F58350);
  v90 = *(v91 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v102 = &v69[-v13];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C28, &qword_1C0F58358);
  v88 = *(v89 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v101 = &v69[-v15];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C30, &qword_1C0F58360);
  v86 = *(v87 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v107 = &v69[-v17];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C38, &qword_1C0F58368);
  v84 = *(v85 - 8);
  v18 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v99 = &v69[-v19];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C40, &qword_1C0F58370);
  v82 = *(v83 - 8);
  v20 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v98 = &v69[-v21];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C48, &qword_1C0F58378);
  v81 = *(v80 - 8);
  v22 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v106 = &v69[-v23];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C50, &qword_1C0F58380);
  v79 = *(v78 - 8);
  v24 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v105 = &v69[-v25];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C58, &qword_1C0F58388);
  v76 = *(v77 - 8);
  v26 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v28 = &v69[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C60, &qword_1C0F58390);
  v75 = *(v29 - 8);
  v30 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v69[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C68, &qword_1C0F58398);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v69[-v36];
  v38 = a1[3];
  v39 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v38);
  sub_1C0F12760();
  v40 = v109;
  sub_1C0F508A0();
  if (!v40)
  {
    v71 = v29;
    v72 = v28;
    v41 = v105;
    v42 = v106;
    v109 = v34;
    v44 = v107;
    v43 = v108;
    v74 = v33;
    v73 = v37;
    v45 = sub_1C0F506F0();
    if (*(v45 + 16) == 1)
    {
      v46 = *(v45 + 32);
      if (v46 != 12)
      {
        v70 = *(v45 + 32);
        if (v46 > 5)
        {
          if (v46 > 8)
          {
            v57 = v109;
            v58 = v74;
            v59 = v73;
            if (v46 == 9)
            {
              v120 = 9;
              sub_1C0F1285C();
              v65 = v100;
              sub_1C0F50670();
              (*(v92 + 8))(v65, v93);
            }

            else if (v46 == 10)
            {
              v121 = 10;
              sub_1C0F12808();
              v62 = v103;
              sub_1C0F50670();
              (*(v94 + 8))(v62, v95);
            }

            else
            {
              v122 = 11;
              sub_1C0F127B4();
              v68 = v104;
              sub_1C0F50670();
              (*(v96 + 8))(v68, v97);
            }
          }

          else
          {
            v57 = v109;
            v58 = v74;
            v59 = v73;
            if (v46 == 6)
            {
              v117 = 6;
              sub_1C0F12958();
              sub_1C0F50670();
              (*(v86 + 8))(v44, v87);
            }

            else if (v46 == 7)
            {
              v118 = 7;
              sub_1C0F12904();
              v60 = v101;
              sub_1C0F50670();
              (*(v88 + 8))(v60, v89);
            }

            else
            {
              v119 = 8;
              sub_1C0F128B0();
              v66 = v102;
              sub_1C0F50670();
              (*(v90 + 8))(v66, v91);
            }
          }
        }

        else
        {
          if (v46 <= 2)
          {
            if (v46)
            {
              if (v46 == 1)
              {
                v112 = 1;
                sub_1C0F12AFC();
                v47 = v72;
                v48 = v74;
                v49 = v73;
                sub_1C0F50670();
                (*(v76 + 8))(v47, v77);
              }

              else
              {
                v113 = 2;
                sub_1C0F12AA8();
                v48 = v74;
                v49 = v73;
                sub_1C0F50670();
                (*(v79 + 8))(v41, v78);
              }

              (*(v109 + 8))(v49, v48);
            }

            else
            {
              v111 = 0;
              sub_1C0F12B50();
              v63 = v74;
              v64 = v73;
              sub_1C0F50670();
              (*(v75 + 8))(v32, v71);
              (*(v109 + 8))(v64, v63);
            }

            goto LABEL_32;
          }

          v57 = v109;
          if (v46 == 3)
          {
            v114 = 3;
            sub_1C0F12A54();
            v58 = v74;
            v59 = v73;
            sub_1C0F50670();
            (*(v81 + 8))(v42, v80);
          }

          else
          {
            v58 = v74;
            v59 = v73;
            if (v46 == 4)
            {
              v115 = 4;
              sub_1C0F12A00();
              v61 = v98;
              sub_1C0F50670();
              (*(v82 + 8))(v61, v83);
            }

            else
            {
              v116 = 5;
              sub_1C0F129AC();
              v67 = v99;
              sub_1C0F50670();
              (*(v84 + 8))(v67, v85);
            }
          }
        }

        (*(v57 + 8))(v59, v58);
LABEL_32:
        swift_unknownObjectRelease();
        *v43 = v70;
        return __swift_destroy_boxed_opaque_existential_0(v110);
      }
    }

    v50 = sub_1C0F505C0();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
    *v52 = &type metadata for AccessibilityAssistiveTouchAction.MenuAction;
    v54 = v74;
    v55 = v73;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v109 + 8))(v55, v54);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v110);
}

uint64_t sub_1C0F13B14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13B48()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13B7C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13BB0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13BE4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13C18()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13C4C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 25;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13C80()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static AccessibilityAssistiveTouchAction.resolveMenuAction(_:with:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 5)
  {
    if (*a1 > 2u)
    {
      if (v3 != 3)
      {
        if (v3 == 4)
        {
          a2[3] = &type metadata for AccessibilityAssistiveTouchAction.MoreMenu;
          result = sub_1C0F1418C();
          a2[4] = result;
          v5 = 1163022157;
          v6 = 0xE400000000000000;
        }

        else
        {
          a2[3] = &type metadata for AccessibilityAssistiveTouchAction.OpenMenu;
          result = sub_1C0F14138();
          a2[4] = result;
          v5 = 0x4E454D5F4E45504FLL;
          v6 = 0xE900000000000055;
        }

        goto LABEL_25;
      }

      a2[3] = &type metadata for AccessibilityAssistiveTouchAction.GesturesNumberOfFingersMenu;
      result = sub_1C0F141E0();
    }

    else
    {
      if (!*a1)
      {
        a2[3] = &type metadata for AccessibilityAssistiveTouchAction.CustomMenu;
        result = sub_1C0F142DC();
        a2[4] = result;
        v5 = 0x4D4F54535543;
        goto LABEL_17;
      }

      if (v3 == 1)
      {
        a2[3] = &type metadata for AccessibilityAssistiveTouchAction.DeviceMenu;
        result = sub_1C0F14288();
        a2[4] = result;
        v5 = 0x454349564544;
LABEL_17:
        v6 = 0xE600000000000000;
        goto LABEL_25;
      }

      a2[3] = &type metadata for AccessibilityAssistiveTouchAction.GesturesMenu;
      result = sub_1C0F14234();
    }

    a2[4] = result;
    v5 = 0x5345525554534547;
    v6 = 0xE800000000000000;
    goto LABEL_25;
  }

  if (*a1 <= 8u)
  {
    if (v3 == 6)
    {
      a2[3] = &type metadata for AccessibilityAssistiveTouchAction.RotateScreenMenu;
      result = sub_1C0F140E4();
      a2[4] = result;
      v5 = 0x5441544E4549524FLL;
      v6 = 0xEB000000004E4F49;
      goto LABEL_25;
    }

    if (v3 != 7)
    {
      a2[3] = &type metadata for AccessibilityAssistiveTouchAction.SecureIntentMenu;
      result = sub_1C0F1403C();
      a2[4] = result;
      return result;
    }

    a2[3] = &type metadata for AccessibilityAssistiveTouchAction.ScrollMenu;
    result = sub_1C0F14090();
    a2[4] = result;
    v5 = 0x4C4C4F524353;
    goto LABEL_17;
  }

  if (v3 == 9)
  {
    a2[3] = &type metadata for AccessibilityAssistiveTouchAction.SideAppMenu;
    result = sub_1C0F13FE8();
    a2[4] = result;
    v5 = 0x5050415F45444953;
    v6 = 0xE800000000000000;
    goto LABEL_25;
  }

  if (v3 == 10)
  {
    a2[3] = &type metadata for AccessibilityAssistiveTouchAction.SiriShortcutsMenu;
    result = sub_1C0F13F94();
    a2[4] = result;
    v5 = 0x4F48535F49524953;
    v6 = 0xEE00535455435452;
LABEL_25:
    *a2 = v5;
    a2[1] = v6;
    return result;
  }

  a2[3] = &type metadata for AccessibilityAssistiveTouchAction.Back;
  result = sub_1C0F13F40();
  a2[4] = result;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_1C0F13F40()
{
  result = qword_1EBE77C78;
  if (!qword_1EBE77C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C78);
  }

  return result;
}

unint64_t sub_1C0F13F94()
{
  result = qword_1EBE77C80;
  if (!qword_1EBE77C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C80);
  }

  return result;
}

unint64_t sub_1C0F13FE8()
{
  result = qword_1EBE77C88;
  if (!qword_1EBE77C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C88);
  }

  return result;
}

unint64_t sub_1C0F1403C()
{
  result = qword_1EBE77C90;
  if (!qword_1EBE77C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C90);
  }

  return result;
}

unint64_t sub_1C0F14090()
{
  result = qword_1EBE77C98;
  if (!qword_1EBE77C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C98);
  }

  return result;
}

unint64_t sub_1C0F140E4()
{
  result = qword_1EBE77CA0;
  if (!qword_1EBE77CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CA0);
  }

  return result;
}

unint64_t sub_1C0F14138()
{
  result = qword_1EBE77CA8;
  if (!qword_1EBE77CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CA8);
  }

  return result;
}

unint64_t sub_1C0F1418C()
{
  result = qword_1EBE77CB0;
  if (!qword_1EBE77CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CB0);
  }

  return result;
}

unint64_t sub_1C0F141E0()
{
  result = qword_1EBE77CB8;
  if (!qword_1EBE77CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CB8);
  }

  return result;
}

unint64_t sub_1C0F14234()
{
  result = qword_1EBE77CC0;
  if (!qword_1EBE77CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CC0);
  }

  return result;
}

unint64_t sub_1C0F14288()
{
  result = qword_1EBE77CC8;
  if (!qword_1EBE77CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CC8);
  }

  return result;
}

unint64_t sub_1C0F142DC()
{
  result = qword_1EBE77CD0;
  if (!qword_1EBE77CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CD0);
  }

  return result;
}

uint64_t AccessibilityAssistiveTouchAction.CustomMenu.nameKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AccessibilityAssistiveTouchAction.CustomMenu.nameKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AccessibilityAssistiveTouchAction.CustomMenu.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C0F50200();
}

uint64_t _s26AccessibilitySharedSupport0A20AssistiveTouchActionO10CustomMenuV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C0F50790();
  }
}

uint64_t _s26AccessibilitySharedSupport0A20AssistiveTouchActionO10CustomMenuV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C0F50850();
  sub_1C0F50200();
  return sub_1C0F50890();
}

uint64_t sub_1C0F14888()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C0F50850();
  sub_1C0F50200();
  return sub_1C0F50890();
}

unint64_t sub_1C0F148D4()
{
  result = qword_1EBE77CD8;
  if (!qword_1EBE77CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CD8);
  }

  return result;
}

unint64_t sub_1C0F1492C()
{
  result = qword_1EBE77CE0;
  if (!qword_1EBE77CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77CE8, &qword_1C0F58410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CE0);
  }

  return result;
}

unint64_t sub_1C0F14990(uint64_t a1)
{
  result = sub_1C0F149B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F149B8()
{
  result = qword_1EBE77CF0;
  if (!qword_1EBE77CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CF0);
  }

  return result;
}

unint64_t sub_1C0F14A10()
{
  result = qword_1EBE77CF8;
  if (!qword_1EBE77CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CF8);
  }

  return result;
}

unint64_t sub_1C0F14A64(uint64_t a1)
{
  result = sub_1C0F14A8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14A8C()
{
  result = qword_1EBE77D00;
  if (!qword_1EBE77D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D00);
  }

  return result;
}

unint64_t sub_1C0F14AE4()
{
  result = qword_1EBE77D08;
  if (!qword_1EBE77D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D08);
  }

  return result;
}

unint64_t sub_1C0F14B38(uint64_t a1)
{
  result = sub_1C0F14B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14B60()
{
  result = qword_1EBE77D10;
  if (!qword_1EBE77D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D10);
  }

  return result;
}

unint64_t sub_1C0F14BB8()
{
  result = qword_1EBE77D18;
  if (!qword_1EBE77D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D18);
  }

  return result;
}

unint64_t sub_1C0F14C0C(uint64_t a1)
{
  result = sub_1C0F14C34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14C34()
{
  result = qword_1EBE77D20;
  if (!qword_1EBE77D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D20);
  }

  return result;
}

unint64_t sub_1C0F14C8C()
{
  result = qword_1EBE77D28;
  if (!qword_1EBE77D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D28);
  }

  return result;
}

unint64_t sub_1C0F14CE0(uint64_t a1)
{
  result = sub_1C0F14D08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14D08()
{
  result = qword_1EBE77D30;
  if (!qword_1EBE77D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D30);
  }

  return result;
}

unint64_t sub_1C0F14D60()
{
  result = qword_1EBE77D38;
  if (!qword_1EBE77D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D38);
  }

  return result;
}

unint64_t sub_1C0F14DB4(uint64_t a1)
{
  result = sub_1C0F14DDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14DDC()
{
  result = qword_1EBE77D40;
  if (!qword_1EBE77D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D40);
  }

  return result;
}

unint64_t sub_1C0F14E34()
{
  result = qword_1EBE77D48;
  if (!qword_1EBE77D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D48);
  }

  return result;
}

unint64_t sub_1C0F14E88(uint64_t a1)
{
  result = sub_1C0F14EB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14EB0()
{
  result = qword_1EBE77D50;
  if (!qword_1EBE77D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D50);
  }

  return result;
}

unint64_t sub_1C0F14F08()
{
  result = qword_1EBE77D58;
  if (!qword_1EBE77D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D58);
  }

  return result;
}

unint64_t sub_1C0F14F5C(uint64_t a1)
{
  result = sub_1C0F14F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14F84()
{
  result = qword_1EBE77D60;
  if (!qword_1EBE77D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D60);
  }

  return result;
}

unint64_t sub_1C0F14FDC()
{
  result = qword_1EBE77D68;
  if (!qword_1EBE77D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D68);
  }

  return result;
}

unint64_t sub_1C0F15030(uint64_t a1)
{
  result = sub_1C0F15058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F15058()
{
  result = qword_1EBE77D70;
  if (!qword_1EBE77D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D70);
  }

  return result;
}

unint64_t sub_1C0F150B0()
{
  result = qword_1EBE77D78;
  if (!qword_1EBE77D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D78);
  }

  return result;
}

unint64_t sub_1C0F15104(uint64_t a1)
{
  result = sub_1C0F1512C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1512C()
{
  result = qword_1EBE77D80;
  if (!qword_1EBE77D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D80);
  }

  return result;
}

unint64_t sub_1C0F15184()
{
  result = qword_1EBE77D88;
  if (!qword_1EBE77D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D88);
  }

  return result;
}

unint64_t sub_1C0F151D8(uint64_t a1)
{
  result = sub_1C0F15200();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F15200()
{
  result = qword_1EBE77D90;
  if (!qword_1EBE77D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D90);
  }

  return result;
}

unint64_t sub_1C0F15258()
{
  result = qword_1EBE77D98;
  if (!qword_1EBE77D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D98);
  }

  return result;
}

unint64_t sub_1C0F152AC(uint64_t a1)
{
  result = sub_1C0F152D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F152D4()
{
  result = qword_1EBE77DA0;
  if (!qword_1EBE77DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DA0);
  }

  return result;
}

unint64_t sub_1C0F1532C()
{
  result = qword_1EBE77DA8;
  if (!qword_1EBE77DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DA8);
  }

  return result;
}

uint64_t _s16SecureIntentMenuVwet(unsigned int *a1, int a2)
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

_WORD *_s16SecureIntentMenuVwst(_WORD *result, int a2, int a3)
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

uint64_t sub_1C0F15510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C0F15558(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C0F155A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C0F15634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F157B8()
{
  result = qword_1EBE77DB0;
  if (!qword_1EBE77DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DB0);
  }

  return result;
}

unint64_t sub_1C0F15810()
{
  result = qword_1EBE77DB8;
  if (!qword_1EBE77DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DB8);
  }

  return result;
}

unint64_t sub_1C0F15868()
{
  result = qword_1EBE77DC0;
  if (!qword_1EBE77DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DC0);
  }

  return result;
}

unint64_t sub_1C0F158C0()
{
  result = qword_1EBE77DC8;
  if (!qword_1EBE77DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DC8);
  }

  return result;
}

unint64_t sub_1C0F15918()
{
  result = qword_1EBE77DD0;
  if (!qword_1EBE77DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DD0);
  }

  return result;
}

unint64_t sub_1C0F15970()
{
  result = qword_1EBE77DD8;
  if (!qword_1EBE77DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DD8);
  }

  return result;
}

unint64_t sub_1C0F159C8()
{
  result = qword_1EBE77DE0;
  if (!qword_1EBE77DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DE0);
  }

  return result;
}

unint64_t sub_1C0F15A20()
{
  result = qword_1EBE77DE8;
  if (!qword_1EBE77DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DE8);
  }

  return result;
}

unint64_t sub_1C0F15A78()
{
  result = qword_1EBE77DF0;
  if (!qword_1EBE77DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DF0);
  }

  return result;
}

unint64_t sub_1C0F15AD0()
{
  result = qword_1EBE77DF8;
  if (!qword_1EBE77DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DF8);
  }

  return result;
}

unint64_t sub_1C0F15B28()
{
  result = qword_1EBE77E00;
  if (!qword_1EBE77E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E00);
  }

  return result;
}

unint64_t sub_1C0F15B80()
{
  result = qword_1EBE77E08;
  if (!qword_1EBE77E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E08);
  }

  return result;
}

unint64_t sub_1C0F15BD8()
{
  result = qword_1EBE77E10;
  if (!qword_1EBE77E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E10);
  }

  return result;
}

unint64_t sub_1C0F15C30()
{
  result = qword_1EBE77E18;
  if (!qword_1EBE77E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E18);
  }

  return result;
}

unint64_t sub_1C0F15C88()
{
  result = qword_1EBE77E20;
  if (!qword_1EBE77E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E20);
  }

  return result;
}

unint64_t sub_1C0F15CE0()
{
  result = qword_1EBE77E28;
  if (!qword_1EBE77E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E28);
  }

  return result;
}

unint64_t sub_1C0F15D38()
{
  result = qword_1EBE77E30;
  if (!qword_1EBE77E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E30);
  }

  return result;
}

unint64_t sub_1C0F15D90()
{
  result = qword_1EBE77E38;
  if (!qword_1EBE77E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E38);
  }

  return result;
}

unint64_t sub_1C0F15DE8()
{
  result = qword_1EBE77E40;
  if (!qword_1EBE77E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E40);
  }

  return result;
}

unint64_t sub_1C0F15E40()
{
  result = qword_1EBE77E48;
  if (!qword_1EBE77E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E48);
  }

  return result;
}

unint64_t sub_1C0F15E98()
{
  result = qword_1EBE77E50;
  if (!qword_1EBE77E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E50);
  }

  return result;
}

unint64_t sub_1C0F15EF0()
{
  result = qword_1EBE77E58;
  if (!qword_1EBE77E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E58);
  }

  return result;
}

unint64_t sub_1C0F15F48()
{
  result = qword_1EBE77E60;
  if (!qword_1EBE77E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E60);
  }

  return result;
}

unint64_t sub_1C0F15FA0()
{
  result = qword_1EBE77E68;
  if (!qword_1EBE77E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E68);
  }

  return result;
}

unint64_t sub_1C0F15FF8()
{
  result = qword_1EBE77E70;
  if (!qword_1EBE77E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E70);
  }

  return result;
}

unint64_t sub_1C0F16050()
{
  result = qword_1EBE77E78;
  if (!qword_1EBE77E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E78);
  }

  return result;
}

unint64_t sub_1C0F160A8()
{
  result = qword_1EBE77E80;
  if (!qword_1EBE77E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E80);
  }

  return result;
}

uint64_t sub_1C0F160FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365727574736567 && a2 == 0xE800000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C0F66EE0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701998445 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1852141679 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6353657461746F72 && a2 == 0xEC0000006E656572 || (sub_1C0F50790() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6C6F726373 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E49657275636573 && a2 == 0xEC000000746E6574 || (sub_1C0F50790() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x70704165646973 && a2 == 0xE700000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F685369726973 && a2 == 0xED00007374756374 || (sub_1C0F50790() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1801675106 && a2 == 0xE400000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

double AccessibilityFeatureActionHandler.featureState.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1C0F165F0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEF864;

  return AccessibilityFeatureActionHandler.handleAction(_:)(a1, a2, a3, a4);
}

uint64_t AccessibilityFeatureActionHandler.handleAction(_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = *a2;
  v8 = *(a4 + 32);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C0EEF864;

  return v12(a1, v4 + 24, a3, a4);
}

uint64_t sub_1C0F167EC(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return AccessibilityFeatureActionHandler.performAction(_:)(a1, a2, a3, a4);
}

uint64_t AccessibilityFeatureActionHandler.performAction(_:)(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  switch(*a2)
  {
    case 1:
      v48 = a4[6];
      v100 = v48 + *v48;
      v49 = v48[1];
      v50 = swift_task_alloc();
      v5[9] = v50;
      *v50 = v5;
      v50[1] = sub_1C0F1816C;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v100;

      break;
    case 2:
      v36 = a4[7];
      v96 = v36 + *v36;
      v37 = v36[1];
      v38 = swift_task_alloc();
      v5[10] = v38;
      *v38 = v5;
      v38[1] = sub_1C0F182C0;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v96;

      break;
    case 3:
      v42 = a4[8];
      v98 = v42 + *v42;
      v43 = v42[1];
      v44 = swift_task_alloc();
      v5[11] = v44;
      *v44 = v5;
      v44[1] = sub_1C0F18414;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v98;

      break;
    case 4:
      v24 = a4[9];
      v92 = v24 + *v24;
      v25 = v24[1];
      v26 = swift_task_alloc();
      v5[12] = v26;
      *v26 = v5;
      v26[1] = sub_1C0F18568;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v92;

      break;
    case 5:
      v57 = a4[10];
      v103 = v57 + *v57;
      v58 = v57[1];
      v59 = swift_task_alloc();
      v5[13] = v59;
      *v59 = v5;
      v59[1] = sub_1C0F186BC;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v103;

      break;
    case 6:
      v66 = a4[11];
      v106 = v66 + *v66;
      v67 = v66[1];
      v68 = swift_task_alloc();
      v5[14] = v68;
      *v68 = v5;
      v68[1] = sub_1C0F18840;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v106;

      break;
    case 7:
      v45 = a4[12];
      v99 = v45 + *v45;
      v46 = v45[1];
      v47 = swift_task_alloc();
      v5[15] = v47;
      *v47 = v5;
      v47[1] = sub_1C0F18994;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v99;

      break;
    case 8:
      v75 = a4[15];
      v109 = v75 + *v75;
      v76 = v75[1];
      v77 = swift_task_alloc();
      v5[16] = v77;
      *v77 = v5;
      v77[1] = sub_1C0F18AE8;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v109;

      break;
    case 9:
      v30 = a4[13];
      v94 = v30 + *v30;
      v31 = v30[1];
      v32 = swift_task_alloc();
      v5[17] = v32;
      *v32 = v5;
      v32[1] = sub_1C0F18C3C;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v94;

      break;
    case 0xA:
      v72 = a4[14];
      v108 = v72 + *v72;
      v73 = v72[1];
      v74 = swift_task_alloc();
      v5[18] = v74;
      *v74 = v5;
      v74[1] = sub_1C0F18D90;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v108;

      break;
    case 0xB:
      v21 = a4[16];
      v91 = v21 + *v21;
      v22 = v21[1];
      v23 = swift_task_alloc();
      v5[19] = v23;
      *v23 = v5;
      v23[1] = sub_1C0F18EE4;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v91;

      break;
    case 0xC:
      v27 = a4[17];
      v93 = v27 + *v27;
      v28 = v27[1];
      v29 = swift_task_alloc();
      v5[20] = v29;
      *v29 = v5;
      v29[1] = sub_1C0F19038;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v93;

      break;
    case 0xD:
      v63 = a4[18];
      v105 = v63 + *v63;
      v64 = v63[1];
      v65 = swift_task_alloc();
      v5[21] = v65;
      *v65 = v5;
      v65[1] = sub_1C0F1918C;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v105;

      break;
    case 0xE:
      v18 = a4[19];
      v90 = v18 + *v18;
      v19 = v18[1];
      v20 = swift_task_alloc();
      v5[22] = v20;
      *v20 = v5;
      v20[1] = sub_1C0F192E0;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v90;

      break;
    case 0xF:
      v39 = a4[20];
      v97 = v39 + *v39;
      v40 = v39[1];
      v41 = swift_task_alloc();
      v5[23] = v41;
      *v41 = v5;
      v41[1] = sub_1C0F19434;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v97;

      break;
    case 0x10:
      v15 = a4[21];
      v89 = v15 + *v15;
      v16 = v15[1];
      v17 = swift_task_alloc();
      v5[24] = v17;
      *v17 = v5;
      v17[1] = sub_1C0F19588;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v89;

      break;
    case 0x11:
      v51 = a4[22];
      v101 = v51 + *v51;
      v52 = v51[1];
      v53 = swift_task_alloc();
      v5[25] = v53;
      *v53 = v5;
      v53[1] = sub_1C0F196DC;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v101;

      break;
    case 0x12:
      v69 = a4[23];
      v107 = v69 + *v69;
      v70 = v69[1];
      v71 = swift_task_alloc();
      v5[26] = v71;
      *v71 = v5;
      v71[1] = sub_1C0F19830;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v107;

      break;
    case 0x13:
      v81 = a4[24];
      v111 = v81 + *v81;
      v82 = v81[1];
      v83 = swift_task_alloc();
      v5[27] = v83;
      *v83 = v5;
      v83[1] = sub_1C0F19984;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v111;

      break;
    case 0x14:
      v54 = a4[25];
      v102 = v54 + *v54;
      v55 = v54[1];
      v56 = swift_task_alloc();
      v5[28] = v56;
      *v56 = v5;
      v56[1] = sub_1C0F19AD8;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v102;

      break;
    case 0x15:
      v60 = a4[26];
      v104 = v60 + *v60;
      v61 = v60[1];
      v62 = swift_task_alloc();
      v5[29] = v62;
      *v62 = v5;
      v62[1] = sub_1C0F19C2C;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v104;

      break;
    case 0x16:
      v78 = a4[27];
      v110 = v78 + *v78;
      v79 = v78[1];
      v80 = swift_task_alloc();
      v5[30] = v80;
      *v80 = v5;
      v80[1] = sub_1C0F19D80;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v110;

      break;
    case 0x17:
      v84 = a4[28];
      v112 = v84 + *v84;
      v85 = v84[1];
      v86 = swift_task_alloc();
      v5[31] = v86;
      *v86 = v5;
      v86[1] = sub_1C0F19ED4;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v112;

      break;
    case 0x18:
      v33 = a4[29];
      v95 = v33 + *v33;
      v34 = v33[1];
      v35 = swift_task_alloc();
      v5[32] = v35;
      *v35 = v5;
      v35[1] = sub_1C0F1A028;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v95;

      break;
    default:
      v8 = a4[5];
      v88 = v8 + *v8;
      v9 = v8[1];
      v10 = swift_task_alloc();
      v5[8] = v10;
      *v10 = v5;
      v10[1] = sub_1C0F18018;
      v11 = v5 + 2;
      v12 = a3;
      v13 = a4;
      v14 = v88;

      break;
  }

  return v14(v11, v12, v13);
}

uint64_t sub_1C0F18018()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F1816C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F182C0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F18414()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F18568()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F186BC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F18810, v7, v6);
}

uint64_t sub_1C0F18810()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1C0F18840()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F18994()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F18AE8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F18C3C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F18D90()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F18EE4()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19038()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F1918C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F192E0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19434()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19588()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F196DC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19830()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19984()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19AD8()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19C2C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19D80()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F19ED4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t sub_1C0F1A028()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v9 = *v0;

  v5 = *(v3 + 8);
  v7 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v7, v6);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.performAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleAccessibilityReader()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEF864;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleAssistiveAccess()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleAssistiveTouch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleBackgroundSounds()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleClassicInvertColors()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleColorFilters()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleCommandAndControl()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleDimFlashingLights()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleFullKeyboardAccess()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleHapticMusic()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleHoverTextTyping()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleLiveCaptions()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleLiveSpeech()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleMagnifier()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleMotionCues()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 152);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleNearbyDeviceControl()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 160);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleSmartInvertColors()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleSpeakScreen()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 176);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleSwitchControl()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 184);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleVirtualTrackpad()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 192);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleVoiceControl()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 200);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleVoiceOver()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 208);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleWatchRemoteScreen()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 216);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleZoom()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 224);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleZoomController()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 232);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

unint64_t AccessibilityDeviceAction.resolve(with:)@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CameraButtonDoubleLightPress;
      result = sub_1C0F1C6FC();
      break;
    case 2:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CameraButtonLightPress;
      result = sub_1C0F1C6A8();
      break;
    case 3:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CameraButtonPress;
      result = sub_1C0F1C654();
      break;
    case 4:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CrownPressButton;
      result = sub_1C0F1C600();
      break;
    case 5:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CrownTurnClockwise;
      result = sub_1C0F1C5AC();
      break;
    case 6:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CrownTurnCounterClockwise;
      result = sub_1C0F1C558();
      break;
    case 7:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.HomeButton;
      result = sub_1C0F1C504();
      break;
    case 8:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.LockButton;
      result = sub_1C0F1C4B0();
      break;
    case 9:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.Screenshot;
      result = sub_1C0F1C45C();
      break;
    case 0xA:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.Shake;
      result = sub_1C0F1C408();
      break;
    case 0xB:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.Torch;
      result = sub_1C0F1C3B4();
      break;
    case 0xC:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.TripleClick;
      result = sub_1C0F1C360();
      break;
    case 0xD:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.VolumeDown;
      result = sub_1C0F1C30C();
      break;
    case 0xE:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.VolumeUp;
      result = sub_1C0F1C2B8();
      break;
    default:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.ActionButton;
      result = sub_1C0F1C750();
      break;
  }

  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1C0F1C2B8()
{
  result = qword_1EBE77E88;
  if (!qword_1EBE77E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E88);
  }

  return result;
}

unint64_t sub_1C0F1C30C()
{
  result = qword_1EBE77E90;
  if (!qword_1EBE77E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E90);
  }

  return result;
}

unint64_t sub_1C0F1C360()
{
  result = qword_1EBE77E98;
  if (!qword_1EBE77E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E98);
  }

  return result;
}

unint64_t sub_1C0F1C3B4()
{
  result = qword_1EBE77EA0;
  if (!qword_1EBE77EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EA0);
  }

  return result;
}

unint64_t sub_1C0F1C408()
{
  result = qword_1EBE77EA8;
  if (!qword_1EBE77EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EA8);
  }

  return result;
}

unint64_t sub_1C0F1C45C()
{
  result = qword_1EBE77EB0;
  if (!qword_1EBE77EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EB0);
  }

  return result;
}

unint64_t sub_1C0F1C4B0()
{
  result = qword_1EBE77EB8;
  if (!qword_1EBE77EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EB8);
  }

  return result;
}

unint64_t sub_1C0F1C504()
{
  result = qword_1EBE77EC0;
  if (!qword_1EBE77EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EC0);
  }

  return result;
}

unint64_t sub_1C0F1C558()
{
  result = qword_1EBE77EC8;
  if (!qword_1EBE77EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EC8);
  }

  return result;
}

unint64_t sub_1C0F1C5AC()
{
  result = qword_1EBE77ED0;
  if (!qword_1EBE77ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77ED0);
  }

  return result;
}

unint64_t sub_1C0F1C600()
{
  result = qword_1EBE77ED8;
  if (!qword_1EBE77ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77ED8);
  }

  return result;
}

unint64_t sub_1C0F1C654()
{
  result = qword_1EBE77EE0;
  if (!qword_1EBE77EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EE0);
  }

  return result;
}

unint64_t sub_1C0F1C6A8()
{
  result = qword_1EBE77EE8;
  if (!qword_1EBE77EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EE8);
  }

  return result;
}

unint64_t sub_1C0F1C6FC()
{
  result = qword_1EBE77EF0;
  if (!qword_1EBE77EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EF0);
  }

  return result;
}

unint64_t sub_1C0F1C750()
{
  result = qword_1EBE77EF8;
  if (!qword_1EBE77EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EF8);
  }

  return result;
}

uint64_t sub_1C0F1C7B8(char a1)
{
  result = 0x75426E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6572506E776F7263;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      v3 = 1701670760;
      goto LABEL_16;
    case 8:
      v3 = 1801678700;
LABEL_16:
      result = v3 | 0x7474754200000000;
      break;
    case 9:
      result = 0x68736E6565726373;
      break;
    case 10:
      result = 0x656B616873;
      break;
    case 11:
      result = 0x6863726F74;
      break;
    case 12:
      result = 0x6C43656C70697274;
      break;
    case 13:
      result = 0x6F44656D756C6F76;
      break;
    case 14:
      result = 0x7055656D756C6F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C0F1C980(uint64_t a1)
{
  v2 = sub_1C0F1E3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1C9BC(uint64_t a1)
{
  v2 = sub_1C0F1E3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1C9F8(uint64_t a1)
{
  v2 = sub_1C0F1E388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CA34(uint64_t a1)
{
  v2 = sub_1C0F1E388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CA70(uint64_t a1)
{
  v2 = sub_1C0F1E334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CAAC(uint64_t a1)
{
  v2 = sub_1C0F1E334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CAE8(uint64_t a1)
{
  v2 = sub_1C0F1E2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CB24(uint64_t a1)
{
  v2 = sub_1C0F1E2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F217E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F1CB9C(uint64_t a1)
{
  v2 = sub_1C0F1DEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CBD8(uint64_t a1)
{
  v2 = sub_1C0F1DEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CC14(uint64_t a1)
{
  v2 = sub_1C0F1E28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CC50(uint64_t a1)
{
  v2 = sub_1C0F1E28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CC8C(uint64_t a1)
{
  v2 = sub_1C0F1E238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CCC8(uint64_t a1)
{
  v2 = sub_1C0F1E238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CD04(uint64_t a1)
{
  v2 = sub_1C0F1E1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CD40(uint64_t a1)
{
  v2 = sub_1C0F1E1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CD7C(uint64_t a1)
{
  v2 = sub_1C0F1E190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CDB8(uint64_t a1)
{
  v2 = sub_1C0F1E190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CDF4(uint64_t a1)
{
  v2 = sub_1C0F1E13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CE30(uint64_t a1)
{
  v2 = sub_1C0F1E13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CE6C(uint64_t a1)
{
  v2 = sub_1C0F1E0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CEA8(uint64_t a1)
{
  v2 = sub_1C0F1E0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CEE4(uint64_t a1)
{
  v2 = sub_1C0F1E094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CF20(uint64_t a1)
{
  v2 = sub_1C0F1E094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CF5C(uint64_t a1)
{
  v2 = sub_1C0F1E040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CF98(uint64_t a1)
{
  v2 = sub_1C0F1E040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CFD4(uint64_t a1)
{
  v2 = sub_1C0F1DFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1D010(uint64_t a1)
{
  v2 = sub_1C0F1DFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1D04C(uint64_t a1)
{
  v2 = sub_1C0F1DF98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1D088(uint64_t a1)
{
  v2 = sub_1C0F1DF98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1D0C4(uint64_t a1)
{
  v2 = sub_1C0F1DF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1D100(uint64_t a1)
{
  v2 = sub_1C0F1DF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityDeviceAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F00, &qword_1C0F59730);
  v109 = *(v4 - 8);
  v110 = v4;
  v5 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v108 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F08, &qword_1C0F59738);
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F10, &qword_1C0F59740);
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F18, &qword_1C0F59748);
  v100 = *(v13 - 8);
  v101 = v13;
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F20, &qword_1C0F59750);
  v97 = *(v16 - 8);
  v98 = v16;
  v17 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F28, &qword_1C0F59758);
  v94 = *(v19 - 8);
  v95 = v19;
  v20 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v68 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F30, &qword_1C0F59760);
  v91 = *(v92 - 8);
  v22 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v68 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F38, &qword_1C0F59768);
  v88 = *(v89 - 8);
  v24 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v68 - v25;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F40, &qword_1C0F59770);
  v85 = *(v86 - 8);
  v26 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v68 - v27;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F48, &qword_1C0F59778);
  v82 = *(v83 - 8);
  v28 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v68 - v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F50, &qword_1C0F59780);
  v79 = *(v80 - 8);
  v30 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v68 - v31;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F58, &qword_1C0F59788);
  v76 = *(v77 - 8);
  v32 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v68 - v33;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F60, &qword_1C0F59790);
  v73 = *(v74 - 8);
  v34 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68 - v35;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F68, &qword_1C0F59798);
  v70 = *(v71 - 8);
  v36 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v38 = &v68 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F70, &qword_1C0F597A0);
  v69 = *(v39 - 8);
  v40 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v68 - v41;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F78, &qword_1C0F597A8);
  v43 = *(v112 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v46 = &v68 - v45;
  v47 = *v2;
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F1DEF0();
  v111 = v46;
  sub_1C0F508B0();
  v49 = (v43 + 8);
  switch(v47)
  {
    case 1:
      v114 = 1;
      sub_1C0F1E388();
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v59 = *(v70 + 8);
      v60 = v38;
      v61 = &v103;
      goto LABEL_18;
    case 2:
      v115 = 2;
      sub_1C0F1E334();
      v62 = v72;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v59 = *(v73 + 8);
      v60 = v62;
      v61 = &v106;
      goto LABEL_18;
    case 3:
      v116 = 3;
      sub_1C0F1E2E0();
      v63 = v75;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v59 = *(v76 + 8);
      v60 = v63;
      v61 = &v109;
      goto LABEL_18;
    case 4:
      v117 = 4;
      sub_1C0F1E28C();
      v58 = v78;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v59 = *(v79 + 8);
      v60 = v58;
      v61 = &v112;
      goto LABEL_18;
    case 5:
      v118 = 5;
      sub_1C0F1E238();
      v65 = v81;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v59 = *(v82 + 8);
      v60 = v65;
      v61 = v120;
      goto LABEL_18;
    case 6:
      v119 = 6;
      sub_1C0F1E1E4();
      v66 = v84;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v59 = *(v85 + 8);
      v60 = v66;
      v61 = &v121;
      goto LABEL_18;
    case 7:
      v120[16] = 7;
      sub_1C0F1E190();
      v64 = v87;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v59 = *(v88 + 8);
      v60 = v64;
      v61 = &v122;
      goto LABEL_18;
    case 8:
      v120[17] = 8;
      sub_1C0F1E13C();
      v67 = v90;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v59 = *(v91 + 8);
      v60 = v67;
      v61 = &v123;
LABEL_18:
      v59(v60, *(v61 - 32));
      goto LABEL_19;
    case 9:
      v120[18] = 9;
      sub_1C0F1E0E8();
      v53 = v93;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v57 = v94;
      v56 = v95;
      goto LABEL_16;
    case 10:
      v120[19] = 10;
      sub_1C0F1E094();
      v53 = v96;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v57 = v97;
      v56 = v98;
      goto LABEL_16;
    case 11:
      v120[20] = 11;
      sub_1C0F1E040();
      v53 = v99;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v57 = v100;
      v56 = v101;
      goto LABEL_16;
    case 12:
      v120[21] = 12;
      sub_1C0F1DFEC();
      v53 = v102;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v57 = v103;
      v56 = v104;
      goto LABEL_16;
    case 13:
      v120[22] = 13;
      sub_1C0F1DF98();
      v53 = v105;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v57 = v106;
      v56 = v107;
      goto LABEL_16;
    case 14:
      v120[23] = 14;
      sub_1C0F1DF44();
      v53 = v108;
      v55 = v111;
      v54 = v112;
      sub_1C0F50700();
      v57 = v109;
      v56 = v110;
LABEL_16:
      (*(v57 + 8))(v53, v56);
LABEL_19:
      result = (*v49)(v55, v54);
      break;
    default:
      v113 = 0;
      sub_1C0F1E3DC();
      v50 = v111;
      v51 = v112;
      sub_1C0F50700();
      (*(v69 + 8))(v42, v39);
      result = (*v49)(v50, v51);
      break;
  }

  return result;
}

unint64_t sub_1C0F1DEF0()
{
  result = qword_1EBE77F80;
  if (!qword_1EBE77F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77F80);
  }

  return result;
}

unint64_t sub_1C0F1DF44()
{
  result = qword_1EBE77F88;
  if (!qword_1EBE77F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77F88);
  }

  return result;
}

unint64_t sub_1C0F1DF98()
{
  result = qword_1EBE77F90;
  if (!qword_1EBE77F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77F90);
  }

  return result;
}

unint64_t sub_1C0F1DFEC()
{
  result = qword_1EBE77F98;
  if (!qword_1EBE77F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77F98);
  }

  return result;
}

unint64_t sub_1C0F1E040()
{
  result = qword_1EBE77FA0;
  if (!qword_1EBE77FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FA0);
  }

  return result;
}

unint64_t sub_1C0F1E094()
{
  result = qword_1EBE77FA8;
  if (!qword_1EBE77FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FA8);
  }

  return result;
}

unint64_t sub_1C0F1E0E8()
{
  result = qword_1EBE77FB0;
  if (!qword_1EBE77FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FB0);
  }

  return result;
}

unint64_t sub_1C0F1E13C()
{
  result = qword_1EBE77FB8;
  if (!qword_1EBE77FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FB8);
  }

  return result;
}

unint64_t sub_1C0F1E190()
{
  result = qword_1EBE77FC0;
  if (!qword_1EBE77FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FC0);
  }

  return result;
}

unint64_t sub_1C0F1E1E4()
{
  result = qword_1EBE77FC8;
  if (!qword_1EBE77FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FC8);
  }

  return result;
}

unint64_t sub_1C0F1E238()
{
  result = qword_1EBE77FD0;
  if (!qword_1EBE77FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FD0);
  }

  return result;
}

unint64_t sub_1C0F1E28C()
{
  result = qword_1EBE77FD8;
  if (!qword_1EBE77FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FD8);
  }

  return result;
}

unint64_t sub_1C0F1E2E0()
{
  result = qword_1EBE77FE0;
  if (!qword_1EBE77FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FE0);
  }

  return result;
}

unint64_t sub_1C0F1E334()
{
  result = qword_1EBE77FE8;
  if (!qword_1EBE77FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FE8);
  }

  return result;
}

unint64_t sub_1C0F1E388()
{
  result = qword_1EBE77FF0;
  if (!qword_1EBE77FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FF0);
  }

  return result;
}

unint64_t sub_1C0F1E3DC()
{
  result = qword_1EBE77FF8;
  if (!qword_1EBE77FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FF8);
  }

  return result;
}

uint64_t AccessibilityDeviceAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilityDeviceAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v136 = a2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78000, &qword_1C0F597B0);
  v121 = *(v135 - 8);
  v3 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v131 = &v90 - v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78008, &qword_1C0F597B8);
  v119 = *(v120 - 8);
  v5 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v130 = &v90 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78010, &qword_1C0F597C0);
  v117 = *(v118 - 8);
  v7 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v129 = &v90 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78018, &qword_1C0F597C8);
  v115 = *(v116 - 8);
  v9 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v128 = &v90 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78020, &qword_1C0F597D0);
  v113 = *(v114 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v127 = &v90 - v12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78028, &qword_1C0F597D8);
  v111 = *(v112 - 8);
  v13 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v126 = &v90 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78030, &qword_1C0F597E0);
  v109 = *(v110 - 8);
  v15 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v125 = &v90 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78038, &qword_1C0F597E8);
  v107 = *(v108 - 8);
  v17 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v134 = &v90 - v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78040, &qword_1C0F597F0);
  v105 = *(v106 - 8);
  v19 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v124 = &v90 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78048, &qword_1C0F597F8);
  v103 = *(v104 - 8);
  v21 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v133 = &v90 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78050, &qword_1C0F59800);
  v102 = *(v101 - 8);
  v23 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v123 = &v90 - v24;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78058, &qword_1C0F59808);
  v100 = *(v97 - 8);
  v25 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v122 = &v90 - v26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78060, &qword_1C0F59810);
  v98 = *(v99 - 8);
  v27 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v132 = &v90 - v28;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78068, &qword_1C0F59818);
  v95 = *(v96 - 8);
  v29 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v31 = &v90 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78070, &qword_1C0F59820);
  v94 = *(v32 - 8);
  v33 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v90 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78078, &unk_1C0F59828);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v90 - v39;
  v42 = a1[3];
  v41 = a1[4];
  v138[0] = a1;
  __swift_project_boxed_opaque_existential_0(a1, v42);
  sub_1C0F1DEF0();
  v43 = v137;
  sub_1C0F508A0();
  if (v43)
  {
LABEL_8:
    v63 = v138[0];
    return __swift_destroy_boxed_opaque_existential_0(v63);
  }

  v91 = v35;
  v90 = v32;
  v92 = v31;
  v44 = v132;
  v45 = v133;
  v46 = v134;
  v93 = 0;
  v48 = v135;
  v47 = v136;
  v137 = v37;
  v49 = sub_1C0F506F0();
  v50 = (2 * *(v49 + 16)) | 1;
  v138[1] = v49;
  v139 = v49 + 32;
  v140 = 0;
  v141 = v50;
  v51 = sub_1C0F13B14();
  v52 = v40;
  if (v140 != v141 >> 1)
  {
LABEL_6:
    v59 = sub_1C0F505C0();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
    *v61 = &type metadata for AccessibilityDeviceAction;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
LABEL_7:
    (*(v137 + 8))(v52, v36);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v53 = v51;
  switch(v51)
  {
    case 0:
      v143 = 0;
      sub_1C0F1E3DC();
      v54 = v91;
      v55 = v93;
      sub_1C0F50670();
      if (v55)
      {
        goto LABEL_7;
      }

      v56 = *(v94 + 8);
      v57 = v54;
      v58 = &v122;
      goto LABEL_38;
    case 1:
      v143 = 1;
      sub_1C0F1E388();
      v79 = v92;
      v80 = v93;
      sub_1C0F50670();
      if (v80)
      {
        goto LABEL_7;
      }

      v56 = *(v95 + 8);
      v57 = v79;
      v58 = &v128;
      goto LABEL_38;
    case 2:
      v143 = 2;
      sub_1C0F1E334();
      v75 = v93;
      sub_1C0F50670();
      if (v75)
      {
        goto LABEL_7;
      }

      v56 = *(v98 + 8);
      v57 = v44;
      v58 = &v131;
      goto LABEL_38;
    case 3:
      v143 = 3;
      sub_1C0F1E2E0();
      v76 = v122;
      v77 = v93;
      sub_1C0F50670();
      if (v77)
      {
        goto LABEL_7;
      }

      v56 = *(v100 + 8);
      v57 = v76;
      v58 = &v129;
      goto LABEL_38;
    case 4:
      v143 = 4;
      sub_1C0F1E28C();
      v69 = v123;
      v70 = v93;
      sub_1C0F50670();
      if (v70)
      {
        goto LABEL_7;
      }

      v56 = *(v102 + 8);
      v57 = v69;
      v58 = &v133;
      goto LABEL_38;
    case 5:
      v143 = 5;
      sub_1C0F1E238();
      v81 = v93;
      sub_1C0F50670();
      if (v81)
      {
        goto LABEL_7;
      }

      v56 = *(v103 + 8);
      v57 = v45;
      v58 = &v136;
      goto LABEL_38;
    case 6:
      v143 = 6;
      sub_1C0F1E1E4();
      v84 = v124;
      v85 = v93;
      sub_1C0F50670();
      if (v85)
      {
        goto LABEL_7;
      }

      v56 = *(v105 + 8);
      v57 = v84;
      v58 = v138;
      goto LABEL_38;
    case 7:
      v143 = 7;
      sub_1C0F1E190();
      v78 = v93;
      sub_1C0F50670();
      if (v78)
      {
        goto LABEL_7;
      }

      v56 = *(v107 + 8);
      v57 = v46;
      v58 = &v139;
      goto LABEL_38;
    case 8:
      v143 = 8;
      sub_1C0F1E13C();
      v88 = v125;
      v89 = v93;
      sub_1C0F50670();
      if (v89)
      {
        goto LABEL_7;
      }

      v56 = *(v109 + 8);
      v57 = v88;
      v58 = &v141;
      goto LABEL_38;
    case 9:
      v143 = 9;
      sub_1C0F1E0E8();
      v73 = v126;
      v74 = v93;
      sub_1C0F50670();
      if (v74)
      {
        goto LABEL_7;
      }

      v56 = *(v111 + 8);
      v57 = v73;
      v58 = &v142;
      goto LABEL_38;
    case 10:
      v143 = 10;
      sub_1C0F1E094();
      v86 = v127;
      v87 = v93;
      sub_1C0F50670();
      if (v87)
      {
        goto LABEL_7;
      }

      v56 = *(v113 + 8);
      v57 = v86;
      v58 = &v144;
      goto LABEL_38;
    case 11:
      v143 = 11;
      sub_1C0F1E040();
      v67 = v128;
      v68 = v93;
      sub_1C0F50670();
      if (v68)
      {
        goto LABEL_7;
      }

      v56 = *(v115 + 8);
      v57 = v67;
      v58 = &v145;
      goto LABEL_38;
    case 12:
      v143 = 12;
      sub_1C0F1DFEC();
      v71 = v129;
      v72 = v93;
      sub_1C0F50670();
      if (v72)
      {
        goto LABEL_7;
      }

      v56 = *(v117 + 8);
      v57 = v71;
      v58 = &v146;
      goto LABEL_38;
    case 13:
      v143 = 13;
      sub_1C0F1DF98();
      v82 = v130;
      v83 = v93;
      sub_1C0F50670();
      if (v83)
      {
        goto LABEL_7;
      }

      v56 = *(v119 + 8);
      v57 = v82;
      v58 = &v147;
LABEL_38:
      v56(v57, *(v58 - 32));
      break;
    case 14:
      v143 = 14;
      sub_1C0F1DF44();
      v65 = v131;
      v66 = v93;
      sub_1C0F50670();
      if (v66)
      {
        goto LABEL_7;
      }

      (*(v121 + 8))(v65, v48);
      break;
    default:
      goto LABEL_6;
  }

  (*(v137 + 8))(v52, v36);
  swift_unknownObjectRelease();
  v63 = v138[0];
  *v47 = v53;
  return __swift_destroy_boxed_opaque_existential_0(v63);
}

unint64_t sub_1C0F1FC20()
{
  result = qword_1EBE78080;
  if (!qword_1EBE78080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78080);
  }

  return result;
}

unint64_t sub_1C0F1FC78()
{
  result = qword_1EBE78088;
  if (!qword_1EBE78088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE78090, &qword_1C0F598A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78088);
  }

  return result;
}

unint64_t sub_1C0F1FCDC(uint64_t a1)
{
  result = sub_1C0F1FD04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1FD04()
{
  result = qword_1EBE78098;
  if (!qword_1EBE78098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78098);
  }

  return result;
}

unint64_t sub_1C0F1FD5C()
{
  result = qword_1EBE780A0;
  if (!qword_1EBE780A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780A0);
  }

  return result;
}

unint64_t sub_1C0F1FDB0(uint64_t a1)
{
  result = sub_1C0F1FDD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1FDD8()
{
  result = qword_1EBE780A8;
  if (!qword_1EBE780A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780A8);
  }

  return result;
}

unint64_t sub_1C0F1FE30()
{
  result = qword_1EBE780B0;
  if (!qword_1EBE780B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780B0);
  }

  return result;
}

unint64_t sub_1C0F1FE84(uint64_t a1)
{
  result = sub_1C0F1FEAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1FEAC()
{
  result = qword_1EBE780B8;
  if (!qword_1EBE780B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780B8);
  }

  return result;
}

unint64_t sub_1C0F1FF04()
{
  result = qword_1EBE780C0;
  if (!qword_1EBE780C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780C0);
  }

  return result;
}

unint64_t sub_1C0F1FF58(uint64_t a1)
{
  result = sub_1C0F1FF80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1FF80()
{
  result = qword_1EBE780C8;
  if (!qword_1EBE780C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780C8);
  }

  return result;
}

unint64_t sub_1C0F1FFD8()
{
  result = qword_1EBE780D0;
  if (!qword_1EBE780D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780D0);
  }

  return result;
}

unint64_t sub_1C0F2002C(uint64_t a1)
{
  result = sub_1C0F20054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F20054()
{
  result = qword_1EBE780D8;
  if (!qword_1EBE780D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780D8);
  }

  return result;
}

unint64_t sub_1C0F200AC()
{
  result = qword_1EBE780E0;
  if (!qword_1EBE780E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780E0);
  }

  return result;
}

unint64_t sub_1C0F20100(uint64_t a1)
{
  result = sub_1C0F20128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F20128()
{
  result = qword_1EBE780E8;
  if (!qword_1EBE780E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780E8);
  }

  return result;
}

unint64_t sub_1C0F20180()
{
  result = qword_1EBE780F0;
  if (!qword_1EBE780F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780F0);
  }

  return result;
}

unint64_t sub_1C0F201D4(uint64_t a1)
{
  result = sub_1C0F201FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F201FC()
{
  result = qword_1EBE780F8;
  if (!qword_1EBE780F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780F8);
  }

  return result;
}

unint64_t sub_1C0F20254()
{
  result = qword_1EBE78100;
  if (!qword_1EBE78100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78100);
  }

  return result;
}

unint64_t sub_1C0F202A8(uint64_t a1)
{
  result = sub_1C0F202D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F202D0()
{
  result = qword_1EBE78108;
  if (!qword_1EBE78108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78108);
  }

  return result;
}

unint64_t sub_1C0F20328()
{
  result = qword_1EBE78110;
  if (!qword_1EBE78110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78110);
  }

  return result;
}

unint64_t sub_1C0F2037C(uint64_t a1)
{
  result = sub_1C0F203A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F203A4()
{
  result = qword_1EBE78118;
  if (!qword_1EBE78118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78118);
  }

  return result;
}

unint64_t sub_1C0F203FC()
{
  result = qword_1EBE78120;
  if (!qword_1EBE78120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78120);
  }

  return result;
}

unint64_t sub_1C0F20450(uint64_t a1)
{
  result = sub_1C0F20478();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F20478()
{
  result = qword_1EBE78128;
  if (!qword_1EBE78128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78128);
  }

  return result;
}

unint64_t sub_1C0F204D0()
{
  result = qword_1EBE78130;
  if (!qword_1EBE78130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78130);
  }

  return result;
}

unint64_t sub_1C0F20524(uint64_t a1)
{
  result = sub_1C0F2054C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2054C()
{
  result = qword_1EBE78138;
  if (!qword_1EBE78138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78138);
  }

  return result;
}

unint64_t sub_1C0F205A4()
{
  result = qword_1EBE78140;
  if (!qword_1EBE78140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78140);
  }

  return result;
}

unint64_t sub_1C0F205F8(uint64_t a1)
{
  result = sub_1C0F20620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F20620()
{
  result = qword_1EBE78148;
  if (!qword_1EBE78148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78148);
  }

  return result;
}

unint64_t sub_1C0F20678()
{
  result = qword_1EBE78150;
  if (!qword_1EBE78150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78150);
  }

  return result;
}

unint64_t sub_1C0F206CC(uint64_t a1)
{
  result = sub_1C0F206F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F206F4()
{
  result = qword_1EBE78158;
  if (!qword_1EBE78158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78158);
  }

  return result;
}

unint64_t sub_1C0F2074C()
{
  result = qword_1EBE78160;
  if (!qword_1EBE78160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78160);
  }

  return result;
}

unint64_t sub_1C0F207A0(uint64_t a1)
{
  result = sub_1C0F207C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F207C8()
{
  result = qword_1EBE78168;
  if (!qword_1EBE78168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78168);
  }

  return result;
}

unint64_t sub_1C0F20820()
{
  result = qword_1EBE78170;
  if (!qword_1EBE78170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78170);
  }

  return result;
}

unint64_t sub_1C0F20874(uint64_t a1)
{
  result = sub_1C0F2089C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2089C()
{
  result = qword_1EBE78178;
  if (!qword_1EBE78178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78178);
  }

  return result;
}

unint64_t sub_1C0F208F4()
{
  result = qword_1EBE78180;
  if (!qword_1EBE78180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78180);
  }

  return result;
}

uint64_t sub_1C0F20A48(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C0F20AD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F20C8C()
{
  result = qword_1EBE78188;
  if (!qword_1EBE78188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78188);
  }

  return result;
}

unint64_t sub_1C0F20CE4()
{
  result = qword_1EBE78190;
  if (!qword_1EBE78190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78190);
  }

  return result;
}

unint64_t sub_1C0F20D3C()
{
  result = qword_1EBE78198;
  if (!qword_1EBE78198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78198);
  }

  return result;
}

unint64_t sub_1C0F20D94()
{
  result = qword_1EBE781A0;
  if (!qword_1EBE781A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781A0);
  }

  return result;
}

unint64_t sub_1C0F20DEC()
{
  result = qword_1EBE781A8;
  if (!qword_1EBE781A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781A8);
  }

  return result;
}

unint64_t sub_1C0F20E44()
{
  result = qword_1EBE781B0;
  if (!qword_1EBE781B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781B0);
  }

  return result;
}

unint64_t sub_1C0F20E9C()
{
  result = qword_1EBE781B8;
  if (!qword_1EBE781B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781B8);
  }

  return result;
}

unint64_t sub_1C0F20EF4()
{
  result = qword_1EBE781C0;
  if (!qword_1EBE781C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781C0);
  }

  return result;
}

unint64_t sub_1C0F20F4C()
{
  result = qword_1EBE781C8;
  if (!qword_1EBE781C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781C8);
  }

  return result;
}

unint64_t sub_1C0F20FA4()
{
  result = qword_1EBE781D0;
  if (!qword_1EBE781D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781D0);
  }

  return result;
}

unint64_t sub_1C0F20FFC()
{
  result = qword_1EBE781D8;
  if (!qword_1EBE781D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781D8);
  }

  return result;
}

unint64_t sub_1C0F21054()
{
  result = qword_1EBE781E0;
  if (!qword_1EBE781E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781E0);
  }

  return result;
}

unint64_t sub_1C0F210AC()
{
  result = qword_1EBE781E8;
  if (!qword_1EBE781E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781E8);
  }

  return result;
}

unint64_t sub_1C0F21104()
{
  result = qword_1EBE781F0;
  if (!qword_1EBE781F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781F0);
  }

  return result;
}

unint64_t sub_1C0F2115C()
{
  result = qword_1EBE781F8;
  if (!qword_1EBE781F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781F8);
  }

  return result;
}

unint64_t sub_1C0F211B4()
{
  result = qword_1EBE78200;
  if (!qword_1EBE78200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78200);
  }

  return result;
}

unint64_t sub_1C0F2120C()
{
  result = qword_1EBE78208;
  if (!qword_1EBE78208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78208);
  }

  return result;
}

unint64_t sub_1C0F21264()
{
  result = qword_1EBE78210;
  if (!qword_1EBE78210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78210);
  }

  return result;
}

unint64_t sub_1C0F212BC()
{
  result = qword_1EBE78218;
  if (!qword_1EBE78218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78218);
  }

  return result;
}

unint64_t sub_1C0F21314()
{
  result = qword_1EBE78220;
  if (!qword_1EBE78220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78220);
  }

  return result;
}

unint64_t sub_1C0F2136C()
{
  result = qword_1EBE78228;
  if (!qword_1EBE78228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78228);
  }

  return result;
}

unint64_t sub_1C0F213C4()
{
  result = qword_1EBE78230;
  if (!qword_1EBE78230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78230);
  }

  return result;
}

unint64_t sub_1C0F2141C()
{
  result = qword_1EBE78238;
  if (!qword_1EBE78238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78238);
  }

  return result;
}

unint64_t sub_1C0F21474()
{
  result = qword_1EBE78240;
  if (!qword_1EBE78240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78240);
  }

  return result;
}

unint64_t sub_1C0F214CC()
{
  result = qword_1EBE78248;
  if (!qword_1EBE78248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78248);
  }

  return result;
}

unint64_t sub_1C0F21524()
{
  result = qword_1EBE78250;
  if (!qword_1EBE78250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78250);
  }

  return result;
}

unint64_t sub_1C0F2157C()
{
  result = qword_1EBE78258;
  if (!qword_1EBE78258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78258);
  }

  return result;
}

unint64_t sub_1C0F215D4()
{
  result = qword_1EBE78260;
  if (!qword_1EBE78260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78260);
  }

  return result;
}

unint64_t sub_1C0F2162C()
{
  result = qword_1EBE78268;
  if (!qword_1EBE78268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78268);
  }

  return result;
}

unint64_t sub_1C0F21684()
{
  result = qword_1EBE78270;
  if (!qword_1EBE78270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78270);
  }

  return result;
}

unint64_t sub_1C0F216DC()
{
  result = qword_1EBE78278;
  if (!qword_1EBE78278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78278);
  }

  return result;
}

unint64_t sub_1C0F21734()
{
  result = qword_1EBE78280;
  if (!qword_1EBE78280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78280);
  }

  return result;
}

unint64_t sub_1C0F2178C()
{
  result = qword_1EBE78288;
  if (!qword_1EBE78288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78288);
  }

  return result;
}

uint64_t sub_1C0F217E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C0F670F0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C0F67110 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0F67130 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572506E776F7263 && a2 == 0xEA00000000007373 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F67150 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C0F67170 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74747542656D6F68 && a2 == 0xEA00000000006E6FLL || (sub_1C0F50790() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x747475426B636F6CLL && a2 == 0xEA00000000006E6FLL || (sub_1C0F50790() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEA0000000000746FLL || (sub_1C0F50790() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656B616873 && a2 == 0xE500000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6863726F74 && a2 == 0xE500000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C43656C70697274 && a2 == 0xEB000000006B6369 || (sub_1C0F50790() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F44656D756C6F76 && a2 == 0xEA00000000006E77 || (sub_1C0F50790() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7055656D756C6F76 && a2 == 0xE800000000000000)
  {

    return 14;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1C0F21CE0()
{
  v0 = sub_1C0F4FD30();
  __swift_allocate_value_buffer(v0, qword_1EBE78290);
  __swift_project_value_buffer(v0, qword_1EBE78290);
  return sub_1C0F4FD10();
}

uint64_t sub_1C0F21D64()
{
  swift_beginAccess();
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];

    v4 = 32;
    do
    {
      sub_1C0F21E30(*(v1 + v4), 0, 0, 0xC000000000000000);
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[3];

  v7 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1C0F21E30(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = a4;
  v8 = 0;
  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_13;
    }

    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1C0F22A2C(MEMORY[0x1E69E7CC0]);
      goto LABEL_14;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) != a3)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    goto LABEL_46;
  }

  if (!BYTE6(a4))
  {
    goto LABEL_13;
  }

LABEL_8:
  v14 = *(v4 + 24);

  sub_1C0F233C0();

LABEL_14:
  v5 = sub_1C0F22C88(a1, a2 & 1);

  if ((a2 & 1) != 0 && v5 == sub_1C0F4FD90())
  {
    swift_beginAccess();
    v8 = *(v4 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 32) = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_17:
      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      if (v26 >= v25 >> 1)
      {
        v8 = sub_1C0F22738((v25 > 1), v26 + 1, 1, v8);
      }

      *(v8 + 2) = v26 + 1;
      *&v8[8 * v26 + 32] = a1;
      *(v4 + 32) = v8;
      goto LABEL_30;
    }

LABEL_47:
    v8 = sub_1C0F22738(0, *(v8 + 2) + 1, 1, v8);
    *(v4 + 32) = v8;
    goto LABEL_17;
  }

  swift_beginAccess();
  v27 = *(v4 + 32);
  v28 = *(v27 + 2);
  if (!v28)
  {
LABEL_24:
    v31 = *(v27 + 2);
LABEL_29:
    sub_1C0F22EA0(v28, v31);
LABEL_30:
    swift_endAccess();
    return v5;
  }

  v29 = 0;
  v30 = -40;
  while (*&v27[8 * v29 + 32] != a1)
  {
    ++v29;
    v30 -= 8;
    if (v28 == v29)
    {
      goto LABEL_24;
    }
  }

  v32 = (v29 + 1);
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = *(v4 + 32);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 32) = v27;
    if (v34)
    {
      goto LABEL_27;
    }
  }

  v27 = sub_1C0EF95AC(v27);
LABEL_27:
  v35 = *(v27 + 2);
  if (v32 == v35)
  {
LABEL_28:
    *(v4 + 32) = v27;
    v31 = *(v27 + 2);
    v28 = v29;
    if (v31 >= v29)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v37 = v27 + 32;
    v38 = &v27[-v30];
    while (v32 < v35)
    {
      if (*v38 != a1)
      {
        if (v32 != v29)
        {
          if (v29 >= v35)
          {
            __break(1u);
            break;
          }

          v39 = *&v37[8 * v29];
          *&v37[8 * v29] = *v38;
          *v38 = v39;
          v35 = *(v27 + 2);
        }

        ++v29;
      }

      ++v32;
      v38 += 8;
      if (v32 == v35)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  swift_once();
  v15 = sub_1C0F4FD30();
  __swift_project_value_buffer(v15, qword_1EBE78290);
  v16 = v32;
  v17 = sub_1C0F4FD00();
  v18 = sub_1C0F50470();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = sub_1C0F50800();
    v23 = sub_1C0EE9754(v21, v22, &v40);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1C0E8A000, v17, v18, "handleEnableAccessibilityFeature unable to decode settings dict: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1C68EB070](v20, -1, -1);
    MEMORY[0x1C68EB070](v19, -1, -1);
  }

  else
  {
  }

  return 4294967294;
}

char *sub_1C0F2222C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77940, &qword_1C0F57520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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