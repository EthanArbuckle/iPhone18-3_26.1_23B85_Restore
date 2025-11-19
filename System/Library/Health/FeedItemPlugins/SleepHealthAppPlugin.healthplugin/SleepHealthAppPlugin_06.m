void sub_29E6A0054(uint64_t a1, int a2)
{
  LODWORD(v67) = a2;
  v68 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29E751FA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v59 - v8;
  v66 = sub_29E751FE8();
  v64 = *(v66 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v66);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752098();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v59 - v17;
  sub_29E752048();
  v19 = sub_29E752088();
  v20 = sub_29E7546C8();
  v21 = os_log_type_enabled(v19, v20);
  v61 = v13;
  v62 = v12;
  v69 = ObjectType;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v24 = sub_29E755178();
    v26 = sub_29E6B9C90(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s] Schedule occurrence was modified", v22, 0xCu);
    sub_29E5FECBC(v23);
    MEMORY[0x29ED98410](v23, -1, -1);
    MEMORY[0x29ED98410](v22, -1, -1);

    v27 = *(v61 + 8);
    v27(v18, v62);
  }

  else
  {

    v27 = *(v13 + 8);
    v27(v18, v12);
  }

  v28 = v63;
  sub_29E751FB8();
  sub_29E751F98();
  v29 = sub_29E751FD8();
  v30 = sub_29E754958();
  if (sub_29E754BC8())
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v29, v30, v32, "SleepRoomDidModifySleepSchedule", "", v31, 2u);
    MEMORY[0x29ED98410](v31, -1, -1);
  }

  (*(v4 + 16))(v65, v9, v3);
  v33 = sub_29E752028();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_29E752018();
  (*(v4 + 8))(v9, v3);
  (*(v64 + 8))(v28, v66);
  [v70 dismissViewControllerAnimated:1 completion:0];
  v37 = sub_29E698610();
  aBlock[0] = v37;
  sub_29E74F478();
  v38 = sub_29E74F548();

  if (v67)
  {
    v39 = [v38 overrideOccurrence];
    if (v39)
    {
      v40 = v39;
      v41 = v60;
      sub_29E752048();
      v42 = sub_29E752088();
      v43 = sub_29E7546C8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v44 = 136446210;
        v46 = sub_29E755178();
        v48 = sub_29E6B9C90(v46, v47, aBlock);
        v67 = v27;
        v49 = v48;

        *(v44 + 4) = v49;
        _os_log_impl(&dword_29E5ED000, v42, v43, "[%{public}s] Removing override", v44, 0xCu);
        sub_29E5FECBC(v45);
        MEMORY[0x29ED98410](v45, -1, -1);
        MEMORY[0x29ED98410](v44, -1, -1);

        v67(v60, v62);
      }

      else
      {

        v27(v41, v62);
      }

      [v38 removeOccurrence_];
    }
  }

  [v38 saveOccurrence_];
  v50 = v70;
  v51 = *&v70[qword_2A1869358];

  v52 = HKSPAnalyticsScheduleChangeContext();
  sub_29E754078();

  v53 = sub_29E69883C();
  v54 = sub_29E754068();

  v55 = swift_allocObject();
  v55[2] = v50;
  v55[3] = sub_29E6A0D08;
  v56 = v69;
  v55[4] = v36;
  v55[5] = v56;
  aBlock[4] = sub_29E6A1510;
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A2500D00;
  v57 = _Block_copy(aBlock);
  v58 = v50;

  [v53 saveCurrentSleepSchedule:v38 options:0 context:v54 completion:v57];

  _Block_release(v57);
}

void sub_29E6A07C0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    v15 = sub_29E755178();
    v17 = sub_29E6B9C90(v15, v16, aBlock);
    v29 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] Schedule occurrence was deleted", v13, 0xCu);
    sub_29E5FECBC(v14);
    MEMORY[0x29ED98410](v14, -1, -1);
    v19 = v13;
    a1 = v30;
    MEMORY[0x29ED98410](v19, -1, -1);

    (*(v6 + 8))(v9, v29);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  [v2 dismissViewControllerAnimated:1 completion:0];
  v20 = sub_29E698610();
  aBlock[0] = v20;
  sub_29E74F478();
  v21 = sub_29E74F548();

  [v21 removeOccurrence_];
  v22 = *&v2[qword_2A1869358];
  v23 = HKSPAnalyticsScheduleChangeContext();
  sub_29E754078();

  v24 = sub_29E69883C();
  v25 = sub_29E754068();

  v26 = swift_allocObject();
  v26[2] = v2;
  v26[3] = 0;
  v26[4] = 0;
  v26[5] = ObjectType;
  aBlock[4] = sub_29E6A1510;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A2500CB0;
  v27 = _Block_copy(aBlock);
  v28 = v2;

  [v24 saveCurrentSleepSchedule:v21 options:0 context:v25 completion:v27];

  _Block_release(v27);
}

id sub_29E6A0B3C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] Schedule occurrence edits were cancelled", v9, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_29E6A0D10()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E6A0D58(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_29E69D4B0(a1);
}

uint64_t sub_29E6A0D88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29E69F650(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29E6A0DE4()
{
  if (!qword_2A1858AB8)
  {
    sub_29E6A0F8C(255, &qword_2A1A7BF60);
    sub_29E63FCDC();
    v0 = sub_29E752648();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858AB8);
    }
  }
}

void sub_29E6A0E58()
{
  if (!qword_2A1858AC0)
  {
    sub_29E6A0DE4();
    sub_29E609B5C(255, &unk_2A1A7D420, 0x29EDB8E48);
    sub_29E69F928(&unk_2A1858AD0, sub_29E6A0DE4);
    sub_29E6A0F24();
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858AC0);
    }
  }
}

unint64_t sub_29E6A0F24()
{
  result = qword_2A1A7D430;
  if (!qword_2A1A7D430)
  {
    sub_29E609B5C(255, &unk_2A1A7D420, 0x29EDB8E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D430);
  }

  return result;
}

void sub_29E6A0F8C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E7527D8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E6A0FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29E6A1060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E6A10C0()
{
  if (!qword_2A1A7CF88)
  {
    sub_29E69F650(255, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7CF88);
    }
  }
}

uint64_t sub_29E6A1144(uint64_t result)
{
  if (result != 1)
  {
    return sub_29E751758();
  }

  return result;
}

void sub_29E6A1154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6A11B8()
{
  if (!qword_2A1858660)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858660);
    }
  }
}

void sub_29E6A121C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6A126C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_29E6A127C(uint64_t a1, uint64_t a2)
{
  sub_29E6A10C0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6A12E0(uint64_t a1, uint64_t a2)
{
  sub_29E6A10C0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SleepRoomViewController.RightBarButtonItem(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepRoomViewController.RightBarButtonItem(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29E6A14A4()
{
  result = qword_2A1858B68;
  if (!qword_2A1858B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858B68);
  }

  return result;
}

id sub_29E6A1530(void *a1, uint64_t a2)
{
  v37 = a2;
  v36 = sub_29E752098();
  v35 = *(v36 - 8);
  v3 = *(v35 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v36);
  MEMORY[0x2A1C7C4A8](v4);
  v34 = &v31 - v5;
  v6 = sub_29E7513C8();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E7513D8();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 identifier];
  v15 = sub_29E7541D8();
  v17 = v16;

  if (v15 == 0xD000000000000025 && 0x800000029E75D900 == v17 || (sub_29E755028() & 1) != 0)
  {

    return sub_29E6E4B28(a1, v37);
  }

  if (v15 == 0xD000000000000027 && 0x800000029E75D930 == v17 || (sub_29E755028() & 1) != 0)
  {

    return sub_29E6E5098(a1, v37);
  }

  if (v15 == 0xD000000000000019 && 0x800000029E75D960 == v17 || (sub_29E755028() & 1) != 0)
  {

    return sub_29E6E75A8(v37);
  }

  if (v15 == 0xD00000000000003ALL && 0x800000029E75D980 == v17)
  {

    return sub_29E6E5878(a1, v37);
  }

  v19 = sub_29E755028();

  if (v19)
  {
    return sub_29E6E5878(a1, v37);
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_29E6A1D38(v41, &v38);
  if (v39)
  {
    sub_29E5FAEE4(&v38, v40);
    sub_29E601938(v40, v40[3]);
    sub_29E751888();
    v27 = v37;
    sub_29E751148();
    (*(v32 + 16))(v9, v27, v6);
    v28 = objc_allocWithZone(sub_29E751498());
    v29 = a1;
    v30 = sub_29E751478();
    (*(v33 + 8))(v13, v10);
    sub_29E6A1E1C(v41, &qword_2A1858B70, sub_29E6A1DB8);
    sub_29E5FECBC(v40);
    return v30;
  }

  else
  {
    sub_29E6A1E1C(&v38, &qword_2A1858B70, sub_29E6A1DB8);
    v20 = v34;
    sub_29E752078();
    v21 = a1;
    v22 = sub_29E752088();
    v23 = sub_29E7546A8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_29E5ED000, v22, v23, "[SleepAppDelegate] No custom detail view controller or configuration provided for %@", v24, 0xCu);
      sub_29E6A1E1C(v25, &qword_2A1A7D0A8, sub_29E66ED88);
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);
    }

    (*(v35 + 8))(v20, v36);
    sub_29E6A1E1C(v41, &qword_2A1858B70, sub_29E6A1DB8);
    return 0;
  }
}

uint64_t sub_29E6A1D38(uint64_t a1, uint64_t a2)
{
  sub_29E6A1E78(0, &qword_2A1858B70, sub_29E6A1DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E6A1DB8()
{
  result = qword_2A1858B78;
  if (!qword_2A1858B78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858B78);
  }

  return result;
}

uint64_t sub_29E6A1E1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E6A1E78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6A1E78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_29E6A1ECC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  swift_beginAccess();
  sub_29E60BC20(&v0[v2], v19);
  if (!v20)
  {
    sub_29E6A2ED0(v19, &qword_2A1856AD0, sub_29E602F60);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_9;
  }

  sub_29E602F60();
  sub_29E6A2F40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
LABEL_9:
    sub_29E6A2ED0(&v21, &qword_2A1858B98, sub_29E6A2F40);
    sub_29E60BC20(&v0[v2], v25);
    v12 = v26;
    result = sub_29E6A2ED0(v25, &qword_2A1856AD0, sub_29E602F60);
    if (!v12)
    {
      v13 = &v1[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle];
      v14 = *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle + 8];
      *v13 = 0;
      *(v13 + 1) = 0;

      v15 = &v1[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier];
      v16 = *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier + 8];
      *v15 = 0;
      *(v15 + 1) = 0;

      return [v1 setNeedsUpdateConfiguration];
    }

    return result;
  }

  if (!*(&v22 + 1))
  {
    goto LABEL_9;
  }

  sub_29E6A2FB8(&v21, v25);
  sub_29E601938(v25, v26);
  v3 = sub_29E751938();
  v4 = &v0[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle];
  v5 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle + 8];
  *v4 = v3;
  v4[1] = v6;

  sub_29E601938(v25, v26);
  v7 = sub_29E751868();
  if (v8)
  {

    sub_29E601938(v25, v26);
    result = sub_29E751868();
    if (!v10)
    {
      __break(1u);
      return result;
    }

    *&v21 = result;
    *(&v21 + 1) = v10;

    MEMORY[0x29ED96C20](0x6554656C7469542ELL, 0xEA00000000007478);

    v11 = *(&v21 + 1);
    v7 = v21;
  }

  else
  {
    v11 = 0;
  }

  v17 = &v0[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier];
  v18 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier + 8];
  *v17 = v7;
  v17[1] = v11;

  [v0 setNeedsUpdateConfiguration];
  return sub_29E5FECBC(v25);
}

uint64_t sub_29E6A2168()
{
  if (*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle);
    v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle + 8);
  }

  sub_29E60DE10();

  v3 = sub_29E753608();
  v5 = v4;
  v7 = v6;
  sub_29E753428();
  v8 = sub_29E7535D8();
  v10 = v9;
  v12 = v11;

  sub_29E60DB44(v3, v5, v7 & 1);

  v13 = sub_29E7535C8();
  v15 = v14;
  LOBYTE(v5) = v16;
  sub_29E60DB44(v8, v10, v12 & 1);

  sub_29E7538D8();
  v17 = sub_29E7535A8();
  v19 = v18;
  v21 = v20;

  sub_29E60DB44(v13, v15, v5 & 1);

  if (*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier + 8))
  {
    v22 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier);
    v23 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier + 8);
  }

  sub_29E753848();

  sub_29E60DB44(v17, v19, v21 & 1);
}

uint64_t sub_29E6A2364@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E74F698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v8 = OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  swift_beginAccess();
  sub_29E60BC20(v1 + v8, v18);
  if (!v19)
  {
    sub_29E6A2ED0(v18, &qword_2A1856AD0, sub_29E602F60);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_7;
  }

  sub_29E602F60();
  sub_29E6A2F40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    goto LABEL_7;
  }

  if (!*(&v21 + 1))
  {
LABEL_7:
    sub_29E6A2ED0(&v20, &qword_2A1858B98, sub_29E6A2F40);
    (*(v4 + 104))(v7, *MEMORY[0x29EDC6AD0], v3);
    v12 = sub_29E754258();
    v13 = v16;
    result = (*(v4 + 8))(v7, v3);
    v14 = 0;
    v15 = 0uLL;
    goto LABEL_8;
  }

  sub_29E6A2FB8(&v20, v24);
  v9 = v25;
  v10 = v26;
  sub_29E601938(v24, v25);
  (*(v10 + 8))(&v20, v9, v10);
  result = sub_29E5FECBC(v24);
  v12 = *(&v21 + 1);
  v13 = v22;
  v14 = v21;
  v15 = v20;
LABEL_8:
  *a1 = v15;
  *(a1 + 16) = v14;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_29E6A25B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setBackgroundView_];

  v2 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setSelectedBackgroundView_];

  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v0;
  v3 = v0;
  return sub_29E7549C8();
}

uint64_t sub_29E6A2690()
{
  sub_29E6A2FE8();
  v2[3] = v0;
  v2[4] = sub_29E6A3280(&qword_2A1858BD8, sub_29E6A2FE8);
  sub_29E5FEBF4(v2);
  sub_29E6A3098();
  sub_29E6A3280(&qword_2A1858BD0, sub_29E6A3098);
  sub_29E753218();
  return MEMORY[0x29ED972D0](v2);
}

uint64_t sub_29E6A2784@<X0>(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_29E752FF8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29E6A32C8();
  sub_29E6A284C(a1 + *(v2 + 44));
}

uint64_t sub_29E6A284C@<X0>(uint64_t a1@<X8>)
{
  sub_29E64D80C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17[-1] - v7;
  sub_29E7544C8();
  v16 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6A2364(v17);
  v10 = v17[0];
  v9 = v17[1];
  v11 = v18;
  v12 = v19;
  v13 = v20;
  sub_29E6A2168();
  sub_29E64D968(v8, v6);
  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  sub_29E6A3190();
  sub_29E64D968(v6, a1 + *(v14 + 48));

  sub_29E64D9CC(v8);
  sub_29E64D9CC(v6);
}

uint64_t sub_29E6A2C0C()
{
  sub_29E6A2ED0(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item, &qword_2A1856AD0, sub_29E602F60);
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier + 8);

  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle + 8);
}

id sub_29E6A2C80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleAlertCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6A2D58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  swift_beginAccess();
  return sub_29E60BC20(v1 + v3, a1);
}

uint64_t sub_29E6A2DB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  swift_beginAccess();
  sub_29E61973C(a1, v1 + v3);
  swift_endAccess();
  sub_29E6A1ECC();
  return sub_29E6A2ED0(a1, &qword_2A1856AD0, sub_29E602F60);
}

id (*sub_29E6A2E38(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E6A2E9C;
}

id sub_29E6A2E9C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_29E6A1ECC();
  }

  return result;
}

uint64_t sub_29E6A2ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6A312C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E6A2F40()
{
  result = qword_2A1858BA0;
  if (!qword_2A1858BA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858BA0);
  }

  return result;
}

uint64_t sub_29E6A2FB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

void sub_29E6A2FE8()
{
  if (!qword_2A1858BA8)
  {
    sub_29E6A3098();
    sub_29E6A3280(&qword_2A1858BD0, sub_29E6A3098);
    v0 = sub_29E753228();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858BA8);
    }
  }
}

void sub_29E6A3098()
{
  if (!qword_2A1858BB0)
  {
    sub_29E6A312C(255, &qword_2A1858BB8, sub_29E6A3190, MEMORY[0x29EDBCC28]);
    sub_29E6A31F8();
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858BB0);
    }
  }
}

void sub_29E6A312C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6A3190()
{
  if (!qword_2A1858BC0)
  {
    sub_29E64D80C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858BC0);
    }
  }
}

unint64_t sub_29E6A31F8()
{
  result = qword_2A1858BC8;
  if (!qword_2A1858BC8)
  {
    sub_29E6A312C(255, &qword_2A1858BB8, sub_29E6A3190, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858BC8);
  }

  return result;
}

uint64_t sub_29E6A3280(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6A32C8()
{
  if (!qword_2A1858BE0)
  {
    sub_29E6A312C(255, &qword_2A1858BB8, sub_29E6A3190, MEMORY[0x29EDBCC28]);
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858BE0);
    }
  }
}

uint64_t sub_29E6A3360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a1;
  v34 = a2;
  v4 = sub_29E751908();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29E7519E8();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E7519F8();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E6A3BD0();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29E769230;
  *(v15 + 56) = &type metadata for SleepApneaEventDataTypeDetailDataSource.CustomPromotionComponent;
  *(v15 + 64) = sub_29E6A3C3C();
  v16 = swift_allocObject();
  *(v15 + 32) = v16;
  sub_29E602E20(v3 + 24, v16 + 16);
  sub_29E6A3CFC(0, &qword_2A1858BF8, sub_29E6A3C90);
  *(v15 + 96) = v17;
  *(v15 + 104) = sub_29E6A3DB0(&qword_2A1858C08, &qword_2A1858BF8, sub_29E6A3C90);
  v18 = swift_allocObject();
  *(v15 + 72) = v18;
  sub_29E602E20(v3 + 24, v18 + 56);
  sub_29E602E20(v3 + 24, v18 + 16);
  sub_29E6A3CFC(0, &qword_2A1858C10, sub_29E6A3D5C);
  *(v15 + 136) = v19;
  *(v15 + 144) = sub_29E6A3DB0(&qword_2A1858C20, &qword_2A1858C10, sub_29E6A3D5C);
  v20 = swift_allocObject();
  *(v15 + 112) = v20;
  sub_29E602E20(v3 + 24, v20 + 16);
  *(v15 + 176) = sub_29E7512E8();
  *(v15 + 184) = sub_29E6A58EC(&qword_2A1858C28, MEMORY[0x29EDC2668]);
  sub_29E5FEBF4((v15 + 152));
  v21 = v29;
  sub_29E7512D8();
  *v14 = v21;
  (*(v11 + 104))(v14, *MEMORY[0x29EDC2B00], v28);
  v22 = v21;
  sub_29E7511E8();
  (*(v7 + 104))(v10, *MEMORY[0x29EDC2AF0], v30);
  *(v15 + 216) = sub_29E751208();
  *(v15 + 224) = sub_29E6A58EC(&qword_2A1859470, MEMORY[0x29EDC2610]);
  sub_29E5FEBF4((v15 + 192));
  sub_29E7511F8();
  v23 = v22;
  sub_29E751338();
  *(v15 + 256) = sub_29E751348();
  *(v15 + 264) = sub_29E6A58EC(&qword_2A1858C30, MEMORY[0x29EDC26B8]);
  sub_29E5FEBF4((v15 + 232));
  sub_29E751328();
  swift_allocObject();
  swift_weakInit();
  *(v15 + 296) = sub_29E751168();
  *(v15 + 304) = sub_29E6A58EC(&qword_2A18582F8, MEMORY[0x29EDC25A8]);
  sub_29E5FEBF4((v15 + 272));
  v24 = v23;
  sub_29E751158();
  (*(v32 + 104))(v31, *MEMORY[0x29EDC2A38], v33);
  *(v15 + 336) = sub_29E751308();
  *(v15 + 344) = sub_29E6A58EC(qword_2A1858C38, MEMORY[0x29EDC2678]);
  sub_29E5FEBF4((v15 + 312));
  v25 = v24;
  sub_29E7512F8();
  return sub_29E7511B8();
}

uint64_t sub_29E6A3960()
{
  v0 = sub_29E750EE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = *(Strong + 16);
  sub_29E60AC64(v6, v4);

  v7 = sub_29E751A58();
  sub_29E6A3E08(0, &qword_2A1858300, sub_29E66D2E4, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E762F30;
  *(v8 + 56) = v0;
  *(v8 + 64) = sub_29E6A58EC(&qword_2A1858328, MEMORY[0x29EDC23F8]);
  v9 = sub_29E5FEBF4((v8 + 32));
  (*(v1 + 16))(v9, v4, v0);
  v10 = MEMORY[0x29EDC2B10];
  *(v8 + 72) = v7;
  *(v8 + 80) = v10;

  (*(v1 + 8))(v4, v0);
  return v8;
}

uint64_t sub_29E6A3B48()
{
  sub_29E5FECBC((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_29E6A3BD0()
{
  if (!qword_2A1858BE8)
  {
    sub_29E60A664(255, &qword_2A1859440);
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858BE8);
    }
  }
}

unint64_t sub_29E6A3C3C()
{
  result = qword_2A1858BF0;
  if (!qword_2A1858BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858BF0);
  }

  return result;
}

unint64_t sub_29E6A3C90()
{
  result = qword_2A1858C00;
  if (!qword_2A1858C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858C00);
  }

  return result;
}

void sub_29E6A3CFC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for SleepApneaEventDataTypeDetailDataSource.FeatureOnboardedHideableComponent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E6A3D5C()
{
  result = qword_2A1858C18;
  if (!qword_2A1858C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858C18);
  }

  return result;
}

uint64_t sub_29E6A3DB0(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29E6A3CFC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E6A3E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6A3E94(uint64_t a1)
{
  result = sub_29E60A664(319, &qword_2A1A7CEF0);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E6A3F30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
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

void sub_29E6A40B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t sub_29E6A4310(uint64_t a1, int a2)
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

uint64_t sub_29E6A4358(uint64_t result, int a2, int a3)
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

uint64_t sub_29E6A43E8()
{
  sub_29E602E20(v0, v9);
  sub_29E751368();
  v1 = type metadata accessor for SleepApneaPromotionDataSource();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_29E711460(v8);
  sub_29E602E20(v9, v7);
  sub_29E6A4E78(v7, v4, 0, sub_29E6A57C4, sub_29E6A4990, &unk_2A2501058, &unk_2A2501080, sub_29E6A5934);

  sub_29E5FECBC(v8);
  sub_29E5FECBC(v9);
  sub_29E6A58EC(&qword_2A1858260, type metadata accessor for SleepApneaPromotionDataSource);
  sub_29E750828();

  v5 = sub_29E750818();

  return v5;
}

uint64_t sub_29E6A4558(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_29E755178();
  v11[1] = v8;
  MEMORY[0x29ED96C20](95, 0xE100000000000000);
  (*(v4 + 16))(v7, v1 + *(a1 + 36), v3);
  swift_getDynamicType();
  (*(v4 + 8))(v7, v3);
  v9 = sub_29E755178();
  MEMORY[0x29ED96C20](v9);

  return v11[0];
}

void *sub_29E6A4694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = v2 + *(a2 + 36);
  v7 = sub_29E750DE8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeatureOnboardedHideableDataSource();
  sub_29E602E20(v3, v10);
  v8 = sub_29E6D2DF8(v10, v7, 1);
  sub_29E751758();
  return v8;
}

uint64_t sub_29E6A4790()
{
  v0 = type metadata accessor for SleepApneaEventEducationDataSource();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_29E68D2E0();
  sub_29E750828();

  v3 = sub_29E750818();

  return v3;
}

uint64_t sub_29E6A489C()
{
  v1 = v0;
  v2 = sub_29E751388();
  sub_29E602E20(v1, v8);
  v3 = type metadata accessor for SleepApneaEventListDataSource();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_29E700028(v2, v8);
  sub_29E750828();

  v6 = sub_29E750818();

  return v6;
}

uint64_t sub_29E6A49A8@<X0>(char a1@<W1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E751D88() ^ a1;
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = a3;
    v32 = v15;
    v16 = v15;
    *v14 = 136446466;
    v17 = sub_29E755178();
    v19 = sub_29E6B9C90(v17, v18, &v32);
    v30 = v6;
    v20 = a2;
    v21 = v19;

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    if (v11)
    {
      v22 = 0x65736C6166;
    }

    else
    {
      v22 = 1702195828;
    }

    if (v11)
    {
      v23 = 0xE500000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    v24 = sub_29E6B9C90(v22, v23, &v32);

    *(v14 + 14) = v24;
    a2 = v20;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] isVisible: %s", v14, 0x16u);
    swift_arrayDestroy();
    v25 = v16;
    a3 = v31;
    MEMORY[0x29ED98410](v25, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);

    (*(v7 + 8))(v10, v30);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v26 = a2(0);
  v27 = MEMORY[0x29EDC1FF8];
  if ((v11 & 1) == 0)
  {
    v27 = MEMORY[0x29EDC2000];
  }

  return (*(*(v26 - 8) + 104))(a3, *v27, v26);
}

uint64_t sub_29E6A4C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v7 = a4(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v10 = *(Strong + *(*Strong + qword_2A1869458 + 24));

  a5(a1, v10);
  sub_29E750908();
}

void *sub_29E6A4E78(uint64_t *a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a7;
  v63 = a8;
  v59 = a6;
  v50 = a5;
  v10 = v8;
  v55 = a2;
  v13 = *v10;
  sub_29E6A3E08(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v56 = &v48 - v16;
  sub_29E6894C4();
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v58 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E752098();
  v52 = *(v53 - 8);
  v20 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v53);
  v51 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E751D98();
  v49 = *(v22 - 8);
  v23 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a4(0);
  v66 = *(v26 - 8);
  v67 = v26;
  v27 = *(v66 + 64);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v54 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v31 = &v48 - v30;
  v32 = v13;
  *(v10 + *(v13 + qword_2A1869458 + 32)) = MEMORY[0x29EDCA1A0];
  sub_29E602E20(a1, v10 + *(*v10 + qword_2A1869458 + 16));
  LOBYTE(v13) = a3;
  *(v10 + *(*v10 + qword_2A1869458 + 24)) = a3;
  v33 = a1[3];
  v34 = a1[4];
  v57 = a1;
  sub_29E601938(a1, v33);
  sub_29E751DB8();
  v64 = v32;
  v65 = v31;
  v50(v25, v13 & 1);
  (*(v49 + 8))(v25, v22);
  (*(v66 + 16))(v54, v31, v67);

  v35 = sub_29E750918();
  v36 = v57;
  v37 = v57[4];
  sub_29E601938(v57, v57[3]);
  swift_retain_n();
  v68 = sub_29E751DC8();
  sub_29E602DD4();
  v38 = sub_29E754908();
  v69 = v38;
  v39 = sub_29E7548D8();
  v40 = v56;
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  sub_29E64C52C();
  sub_29E6A58EC(&qword_2A1A7BFA0, sub_29E64C52C);
  sub_29E6A58EC(&qword_2A18568B8, sub_29E602DD4);
  v41 = v58;
  sub_29E752968();
  sub_29E6214E8(v40);

  v42 = swift_allocObject();
  swift_weakInit();

  v43 = swift_allocObject();
  v44 = v64;
  *(v43 + 16) = v42;
  *(v43 + 24) = v44;
  sub_29E6A58EC(&qword_2A18585D0, sub_29E6894C4);
  v45 = v61;
  sub_29E7529A8();

  (*(v60 + 8))(v41, v45);
  v46 = *(*v35 + qword_2A1869458 + 32);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  (*(v66 + 8))(v65, v67);
  sub_29E5FECBC(v36);
  return v35;
}

void sub_29E6A57C4()
{
  if (!qword_2A1858CC0)
  {
    sub_29E6A5858();
    sub_29E6A58EC(&qword_2A1858CD0, sub_29E6A5858);
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858CC0);
    }
  }
}

void sub_29E6A5858()
{
  if (!qword_2A1858CC8)
  {
    sub_29E6958F0();
    sub_29E6A58EC(&qword_2A1858800, sub_29E6958F0);
    v0 = sub_29E750AF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858CC8);
    }
  }
}

uint64_t sub_29E6A58EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6A5978()
{
  if (!qword_2A1858CD8)
  {
    type metadata accessor for BreathingDisturbancesChartSection();
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858CD8);
    }
  }
}

uint64_t sub_29E6A5A24(uint64_t a1)
{
  v3 = sub_29E754048();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = sub_29E74F048();
  v1[5] = v6;
  v7 = *(v6 - 8);
  v1[6] = v7;
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v1[9] = v9;
  *v9 = v1;
  v9[1] = sub_29E6A5B84;

  return sub_29E6A60A4(a1);
}

uint64_t sub_29E6A5B84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_29E6A602C;
  }

  else
  {
    v5 = sub_29E6A5C98;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

unint64_t sub_29E6A5C98()
{
  result = v0[10];
  v42 = *(result + 16);
  if (v42)
  {
    v2 = 0;
    v3 = v0[6];
    v40 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v41 = v3;
    v37 = v0[3];
    v36 = (v3 + 32);
    v39 = (v3 + 8);
    v35 = (v3 + 40);
    v4 = MEMORY[0x29EDCA198];
    v38 = v0[10];
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v6 = v0[7];
      v5 = v0[8];
      v8 = v0[4];
      v7 = v0[5];
      v9 = *(v41 + 72);
      v10 = *(v41 + 16);
      v10(v5, v40 + v9 * v2, v7);
      sub_29E74F008();
      v10(v6, v5, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v4;
      result = sub_29E68AB64(v8);
      v13 = v4[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_24;
      }

      v17 = v12;
      if (v4[3] >= v16)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = result;
          sub_29E6A7A0C();
          result = v28;
          v4 = v43;
        }
      }

      else
      {
        v18 = v0[4];
        sub_29E6A7288(v16, isUniquelyReferenced_nonNull_native);
        result = sub_29E68AB64(v18);
        if ((v17 & 1) != (v19 & 1))
        {
          v34 = v0[2];

          return sub_29E755078();
        }
      }

      v21 = v0[7];
      v20 = v0[8];
      v23 = v0[4];
      v22 = v0[5];
      v24 = v0[2];
      if (v17)
      {
        (*v35)(v4[7] + result * v9, v0[7], v0[5]);
        (*(v37 + 8))(v23, v24);
        (*v39)(v20, v22);
      }

      else
      {
        v4[(result >> 6) + 8] |= 1 << result;
        v25 = result;
        (*(v37 + 16))(v4[6] + *(v37 + 72) * result, v23, v24);
        (*v36)(v4[7] + v25 * v9, v21, v22);
        (*(v37 + 8))(v23, v24);
        result = (*v39)(v20, v22);
        v26 = v4[2];
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_25;
        }

        v4[2] = v27;
      }

      ++v2;
      result = v38;
      if (v42 == v2)
      {
        v29 = v0[10];
        goto LABEL_17;
      }
    }
  }

  v4 = MEMORY[0x29EDCA198];
LABEL_17:
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[4];

  v33 = v0[1];

  return v33(v4);
}

uint64_t sub_29E6A602C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_29E6A60A4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_29E74F0D8();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_29E74EE78();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  sub_29E6A8290(0);
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_29E6A82B0(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = sub_29E74F118();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E6A62B8, 0, 0);
}

uint64_t sub_29E6A62B8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v15 = v0[6];
  v16 = v0[16];
  v9 = v0[4];
  v8 = v0[5];
  sub_29E6A83A8(v0[3], v2, sub_29E6A8290);
  sub_29E6A66E0(v2, v1);
  (*(v4 + 16))(v3, v9 + OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_gregorianCalendar, v6);
  v0[2] = v8;
  swift_getMetatypeMetadata();
  sub_29E7541F8();
  (*(v7 + 16))(v5, v9 + OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_algorithmVersion, v15);
  sub_29E74F0F8();
  v10 = *(v9 + 16);
  v11 = *(MEMORY[0x29EDC6970] + 4);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_29E6A6444;
  v13 = v0[16];

  return MEMORY[0x2A1C691C8](v10);
}

uint64_t sub_29E6A6444(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_29E6A6628;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_29E6A656C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29E6A656C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v5 = v0[1];
  v6 = v0[19];

  return v5(v6);
}

uint64_t sub_29E6A6628()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_29E6A66E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[0] = a2;
  sub_29E605ADC();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v28 - v9;
  v11 = sub_29E754048();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = v28 - v17;
  sub_29E6A8290(0);
  v20 = *(v19 + 36);
  sub_29E6A8410(&qword_2A1857B80, MEMORY[0x29EDBA2F8]);
  result = sub_29E754108();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v28[1] = -1;
    sub_29E6A8410(&qword_2A1857F38, MEMORY[0x29EDBA2F8]);
    sub_29E754C08();
    (*(v12 + 16))(v16, a1, v11);
    sub_29E6A834C(a1);
    v22 = *(v12 + 32);
    v22(v10, v16, v11);
    v22(&v10[*(v4 + 48)], v18, v11);
    sub_29E6A83A8(v10, v8, sub_29E605ADC);
    v23 = *(v4 + 48);
    v24 = v28[0];
    v22(v28[0], v8, v11);
    v25 = *(v12 + 8);
    v25(&v8[v23], v11);
    sub_29E605CC8(v10, v8);
    v26 = *(v4 + 48);
    sub_29E6A82B0(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
    v22((v24 + *(v27 + 36)), &v8[v26], v11);
    return (v25)(v8, v11);
  }

  return result;
}

uint64_t sub_29E6A6A04()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_gregorianCalendar;
  v2 = sub_29E74EE78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_algorithmVersion;
  v4 = sub_29E74F0D8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_modelsDidChangePublisher);

  v6 = *(*v0 + 12);
  v7 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepScoreDaySummaryProviderDataSource()
{
  result = qword_2A1858CE0;
  if (!qword_2A1858CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6A6B4C()
{
  result = sub_29E74EE78();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29E74F0D8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E6A6C7C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E60350C;

  return sub_29E6A5A24(a1);
}

uint64_t sub_29E6A6D2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29E68CB3C();
  v36 = a2;
  result = sub_29E754EA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v37 = *(v21 + v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_29E7541D8();
      sub_29E7550C8();
      sub_29E7542D8();
      v25 = sub_29E755108();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_29E6A6FDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29E6A8458();
  v36 = a2;
  result = sub_29E754EA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_29E61FF28(v25, v37);
      }

      else
      {
        sub_29E606008(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_29E7550C8();
      sub_29E7542D8();
      result = sub_29E755108();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_29E61FF28(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_29E6A7288(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_29E74F048();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E754048();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_29E6A81E4();
  v52 = a2;
  result = sub_29E754EA8();
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
      sub_29E6A8410(&qword_2A1857B78, MEMORY[0x29EDBA2F8]);
      result = sub_29E7540A8();
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

id sub_29E6A7724()
{
  v1 = v0;
  sub_29E68CB3C();
  v2 = *v0;
  v3 = sub_29E754E98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_29E6A7874()
{
  v1 = v0;
  sub_29E6A8458();
  v2 = *v0;
  v3 = sub_29E754E98();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_29E606008(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_29E61FF28(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_29E6A7A0C()
{
  v1 = v0;
  v43 = sub_29E74F048();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E754048();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6A81E4();
  v6 = *v0;
  v7 = sub_29E754E98();
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

void *sub_29E6A7D54(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v8 = *v3;
  v33 = a3;
  v34 = v8;
  v9 = sub_29E754648();
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6A8150();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v19 = OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_gregorianCalendar;
  v35 = sub_29E74EE78();
  v20 = *(v35 - 8);
  (*(v20 + 16))(v4 + v19, a2, v35);
  v21 = OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_algorithmVersion;
  v22 = sub_29E74F0D8();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v4 + v21, a3, v22);
  sub_29E6163F8();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E764160;
  sub_29E63027C();
  v25 = *MEMORY[0x29EDBA4D0];
  a1;
  v26 = MEMORY[0x29ED96FF0](v25);
  v27 = [objc_opt_self() queryDescriptorWithSampleType_];

  *(v24 + 32) = v27;
  v41 = v34;
  swift_getMetatypeMetadata();
  sub_29E7541F8();
  sub_29E754658();

  sub_29E6A8410(&qword_2A1858D00, MEMORY[0x29EDC2E68]);
  v28 = v37;
  sub_29E752988();
  (*(v38 + 8))(v13, v28);
  sub_29E6A8410(&qword_2A1858D08, sub_29E6A8150);
  v29 = v39;
  v30 = sub_29E7528E8();
  (*(v23 + 8))(v33, v22);
  (*(v20 + 8))(v36, v35);
  (*(v40 + 8))(v18, v29);
  *(v4 + OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_modelsDidChangePublisher) = v30;
  return v4;
}

void sub_29E6A8150()
{
  if (!qword_2A1858CF8)
  {
    sub_29E754648();
    sub_29E6A8410(&qword_2A1858D00, MEMORY[0x29EDC2E68]);
    v0 = sub_29E752648();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858CF8);
    }
  }
}

void sub_29E6A81E4()
{
  if (!qword_2A1858D10)
  {
    sub_29E754048();
    sub_29E74F048();
    sub_29E6A8410(&qword_2A1857B78, MEMORY[0x29EDBA2F8]);
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858D10);
    }
  }
}

void sub_29E6A82B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E754048();
    v7 = sub_29E6A8410(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6A834C(uint64_t a1)
{
  sub_29E6A8290(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E6A83A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6A8410(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6A8458()
{
  if (!qword_2A1859CE0)
  {
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859CE0);
    }
  }
}

uint64_t type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart()
{
  result = qword_2A1858D18;
  if (!qword_2A1858D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6A8530()
{
  sub_29E6AE3A4(319, &qword_2A1858D28, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9A40]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SleepApneaEventSummaryViewModel();
    if (v1 <= 0x3F)
    {
      sub_29E6A85FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E6A85FC()
{
  if (!qword_2A1858D30)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858D30);
    }
  }
}

uint64_t sub_29E6A864C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  sub_29E6AC8E0();
  v84 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v83 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v80 = v75 - v7;
  v92 = sub_29E74ED28();
  v81 = *(v92 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v92);
  v91 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AC948();
  v82 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v85 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AE3A4(0, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v95 = v75 - v15;
  sub_29E6AC9DC(0);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD4C4();
  v23 = v22;
  v87 = *(v22 - 8);
  v24 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6ADAC8();
  v93 = v27;
  v89 = *(v27 - 8);
  v28 = *(v89 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v88 = v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6ADCE4();
  v79 = v30;
  v78 = *(v30 - 8);
  v31 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v94 = v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v2;
  sub_29E6ACAA4();
  sub_29E6AD210();
  sub_29E752488();
  v96 = v2;
  sub_29E6AD5C8(0);
  v34 = v33;
  v35 = sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC);
  v36 = sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8);
  sub_29E753688();
  (*(v18 + 8))(v21, v17);
  v90 = v2;
  v37 = sub_29E6AA39C();
  v38 = *(v37 + 2);
  if (v38)
  {
    v39 = *(v37 + 4);
    v40 = v38 - 1;
    if (v40)
    {
      v42 = (v37 + 40);
      v41 = v95;
      do
      {
        v43 = *v42++;
        v44 = v43;
        if (v39 < v43)
        {
          v39 = v44;
        }

        --v40;
      }

      while (v40);
    }

    else
    {
      v41 = v95;
    }

    if (v39 < 0.0)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {

    v39 = 30.0;
    v41 = v95;
  }

  v102 = 0;
  v103 = v39;
  v46 = sub_29E7525D8();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v77 = v46;
  v76 = v48;
  v75[1] = v47 + 56;
  (v48)(v41, 1, 1);
  sub_29E6AE764(0, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v50 = v49;
  v98 = v17;
  v99 = v34;
  v100 = v35;
  v101 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_29E6ADC48();
  v53 = v88;
  sub_29E7536C8();
  sub_29E6AE2AC(v41, &qword_2A1A7C090, MEMORY[0x29EDB8710]);
  (*(v87 + 8))(v26, v23);
  sub_29E6ADEE0(0);
  v55 = v54;
  v98 = v23;
  v99 = v50;
  v100 = OpaqueTypeConformance2;
  v101 = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = sub_29E6AE80C(&qword_2A1858E70, sub_29E6ADEE0);
  v58 = v93;
  v87 = v57;
  sub_29E753678();
  (*(v89 + 8))(v53, v58);
  v59 = v90 + *(type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart() + 20);
  v60 = *(type metadata accessor for SleepApneaEventSummaryViewModel() + 20);
  v61 = v91;
  sub_29E74EC68();
  sub_29E6AE80C(&qword_2A1A7CFC8, MEMORY[0x29EDB9BC8]);
  v62 = v92;
  result = sub_29E7540E8();
  if (result)
  {
    v63 = v81;
    v90 = v56;
    v64 = *(v81 + 32);
    v65 = v80;
    v64(v80, v61, v62);
    v66 = v84;
    (*(v63 + 16))(v65 + *(v84 + 48), v59 + v60, v62);
    v67 = v62;
    v68 = v83;
    sub_29E6AE408(v65, v83, sub_29E6AC8E0);
    v69 = *(v66 + 48);
    v91 = v55;
    v70 = v85;
    v64(v85, v68, v67);
    v71 = *(v63 + 8);
    v71(v68 + v69, v67);
    sub_29E6AE470(v65, v68, sub_29E6AC8E0);
    v64((v70 + *(v82 + 36)), (v68 + *(v66 + 48)), v67);
    v71(v68, v67);
    v72 = v95;
    v76(v95, 1, 1, v77);
    v98 = v93;
    v99 = v91;
    v100 = v90;
    v101 = v87;
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    v73 = v79;
    v74 = v94;
    sub_29E7536A8();
    sub_29E6AE2AC(v72, &qword_2A1A7C090, MEMORY[0x29EDB8710]);
    sub_29E6AE24C(v70, sub_29E6AC948);
    return (*(v78 + 8))(v74, v73);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_29E6A90A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v85 = sub_29E74ED28();
  v67 = *(v85 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v85);
  v66 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AE704();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v82 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_29E752568();
  v76 = *(v74 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v74);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD178(0, &qword_2A1858DA0, MEMORY[0x29EDB86E8]);
  v75 = v11;
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v69 = v65 - v13;
  sub_29E6AD088();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v78 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v77 = v65 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v70 = v65 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v84 = v65 - v22;
  sub_29E6ACB18();
  v73 = v23;
  v71 = *(v23 - 8);
  v24 = *(v71 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v83 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v86 = v65 - v27;
  sub_29E7544C8();
  v68 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v87 = *a1;
  v65[2] = swift_getKeyPath();
  sub_29E6AE3A4(0, &qword_2A1858D28, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9A40]);
  v65[1] = v28;
  sub_29E6ACC1C();
  v65[0] = v29;
  sub_29E6AD000();
  sub_29E6AE80C(&qword_2A1858D90, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
  sub_29E6ACD88();
  v31 = v30;
  sub_29E6ACEBC();
  v33 = v32;
  v34 = MEMORY[0x29EDB86D0];
  sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8]);
  v36 = v35;
  v37 = sub_29E752548();

  *&v91 = v37;
  *(&v91 + 1) = MEMORY[0x29EDBCA98];
  *&v92 = v34;
  *(&v92 + 1) = MEMORY[0x29EDBCA88];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v91 = v36;
  *(&v91 + 1) = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_29E6ACFAC();
  *&v91 = v33;
  *(&v91 + 1) = MEMORY[0x29EDBCB20];
  *&v92 = v39;
  *(&v92 + 1) = v40;
  v41 = swift_getOpaqueTypeConformance2();
  *&v91 = v31;
  *(&v91 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  sub_29E753B28();
  sub_29E752F58();
  v42 = a1 + *(type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart() + 20);
  v43 = &v42[*(type metadata accessor for SleepApneaEventSummaryViewModel() + 20)];
  v44 = v66;
  sub_29E74EC68();
  v45 = v85;
  sub_29E7523D8();

  (*(v67 + 8))(v44, v45);
  sub_29E752558();
  if (qword_2A18561F8 != -1)
  {
    swift_once();
  }

  *&v91 = qword_2A1869268;
  v67 = qword_2A1869268;

  v46 = MEMORY[0x29EDBCA98];
  v47 = MEMORY[0x29EDB86E0];
  v48 = MEMORY[0x29EDBCA88];
  v49 = v69;
  v50 = v74;
  sub_29E7522E8();
  v76 = *(v76 + 8);
  (v76)(v10, v50);
  if (qword_2A1856200 != -1)
  {
    swift_once();
  }

  v91 = xmmword_2A1869270;
  v92 = *&qword_2A1869280;
  v93 = qword_2A1869290;
  v87 = v50;
  v88 = v46;
  v89 = v47;
  v90 = v48;
  v66 = swift_getOpaqueTypeConformance2();
  v51 = v75;
  sub_29E752318();
  v72 = *(v72 + 8);
  (v72)(v49, v51);
  sub_29E752F58();
  sub_29E7523D8();

  sub_29E752558();
  v87 = v67;
  sub_29E7522E8();

  (v76)(v10, v50);
  v52 = v70;
  sub_29E752318();
  (v72)(v49, v51);
  v53 = v71;
  v54 = v83;
  v55 = v73;
  (*(v71 + 16))(v83, v86, v73);
  v87 = v54;
  v57 = v79;
  v56 = v80;
  v58 = *(v79 + 16);
  v59 = v77;
  v60 = v84;
  v58(v77, v84, v80);
  v88 = v59;
  v61 = v78;
  v58(v78, v52, v56);
  v89 = v61;
  sub_29E71E330(&v87, v81);
  v62 = *(v57 + 8);
  v62(v52, v56);
  v62(v60, v56);
  v63 = *(v53 + 8);
  v63(v86, v55);
  v62(v61, v56);
  v62(v59, v56);
  v63(v83, v55);
}

uint64_t sub_29E6A9B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v54 = a2;
  sub_29E6AE764(0, &qword_2A1A7C0D0, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v42 = &v39 - v4;
  sub_29E6AE704();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E752548();
  v43 = *(v48 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD178(0, &qword_2A1858D78, MEMORY[0x29EDB86D8]);
  v50 = v11;
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v40 = &v39 - v13;
  sub_29E6ACEBC();
  v52 = v14;
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v45 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6ACD88();
  v53 = v17;
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v47 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v44 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  v20 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint();
  v21 = *(v20 + 24);
  sub_29E74ED28();
  v22 = v41;
  sub_29E7523D8();

  sub_29E752F58();
  v59[0] = *(v22 + *(v20 + 20));
  sub_29E7523D8();

  sub_29E752538();
  v23 = [objc_opt_self() hk_respiratoryKeyColor];
  v59[0] = sub_29E7538E8();
  v24 = MEMORY[0x29EDBCA98];
  v25 = MEMORY[0x29EDBCA88];
  v26 = v40;
  v27 = v48;
  v28 = MEMORY[0x29EDB86D0];
  sub_29E7522E8();

  (*(v43 + 8))(v10, v27);
  sub_29E752A58();
  v55 = v27;
  v56 = v24;
  v57 = v28;
  v58 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v45;
  v31 = v50;
  sub_29E752318();
  sub_29E6AE7B8(v59);
  (*(v46 + 8))(v26, v31);
  v55 = v31;
  v56 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_29E6ACFAC();
  v34 = MEMORY[0x29EDBCB20];
  v35 = v47;
  v36 = v52;
  sub_29E752308();
  (*(v49 + 8))(v30, v36);
  v55 = v36;
  v56 = v34;
  v57 = v32;
  v58 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v53;
  sub_29E7522C8();
  (*(v51 + 8))(v35, v37);
}

uint64_t sub_29E6AA1F8()
{
  v0 = sub_29E752368();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = sub_29E752418();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752358();
  sub_29E6AA39C();
  sub_29E752358();
  sub_29E6AD610();
  sub_29E6AD85C();
  sub_29E752598();
}

char *sub_29E6AA39C()
{
  sub_29E6AE3A4(0, &qword_2A1858E80, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_29E754AA8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v26 = v0;
    v27 = v4;
    v28 = MEMORY[0x29EDCA190];
    sub_29E6DBCA4(0, v6, 0);
    v7 = v28;
    v8 = objc_opt_self();
    v9 = 32;
    do
    {
      v10 = *(v5 + v9);
      v11 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
      v12 = [v8 countUnit];
      [v11 doubleValueForUnit_];
      v14 = v13;

      v28 = v7;
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        sub_29E6DBCA4((v15 > 1), v16 + 1, 1);
        v7 = v28;
      }

      *(v7 + 2) = v16 + 1;
      *&v7[8 * v16 + 32] = v14;
      v9 += 8;
      --v6;
    }

    while (v6);

    v0 = v26;
    v4 = v27;
  }

  else
  {

    v7 = MEMORY[0x29EDCA190];
  }

  sub_29E6AB488(*v0, v4);
  v17 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint();
  if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
  {
    sub_29E6AE2AC(v4, &qword_2A1858E80, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
LABEL_16:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_29E6DB314(0, *(v7 + 2) + 1, 1, v7);
    }

    v20 = *(v7 + 2);
    v23 = *(v7 + 3);
    v21 = v20 + 1;
    v22 = 30.0;
    if (v20 >= v23 >> 1)
    {
      v7 = sub_29E6DB314((v23 > 1), v20 + 1, 1, v7);
    }

    goto LABEL_20;
  }

  v18 = *&v4[*(v17 + 20)];
  sub_29E6AE24C(v4, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
  if (v18 <= 30.0)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_29E6DB314(0, *(v7 + 2) + 1, 1, v7);
  }

  v20 = *(v7 + 2);
  v19 = *(v7 + 3);
  v21 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v7 = sub_29E6DB314((v19 > 1), v20 + 1, 1, v7);
  }

  v22 = v18 + 15.0;
LABEL_20:
  *(v7 + 2) = v21;
  *&v7[8 * v20 + 32] = v22;
  return v7;
}

uint64_t sub_29E6AA6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v60 = a2;
  sub_29E6AE4D8();
  v59 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_29E7522A8();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v55);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v50 - v9;
  v11 = sub_29E752458();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = sub_29E752478();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v52 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD728();
  v53 = v16;
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v50 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD6B4();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AE3A4(0, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x2A1C7C4A8](v25 - 8);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v31 = &v50 - v30;
  sub_29E7544C8();
  v57 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7525C8();
  v61 = v31;
  if ((BYTE8(v62) & 1) == 0)
  {
    if (*&v62 == 0.0)
    {
      v54 = v20;
      v33 = v5;
      v34 = v29;
      v35 = v10;
    }

    else
    {
      v36 = 1;
      if (*&v62 <= 0.0)
      {
LABEL_10:
        sub_29E6AE6A0(0, &qword_2A1858DE0, MEMORY[0x29EDB8650]);
        (*(*(v38 - 8) + 56))(v24, v36, 1, v38);
        sub_29E6AE470(v24, v31, sub_29E6AD6B4);
        v32 = 0;
        goto LABEL_11;
      }

      v54 = v20;
      v33 = v5;
      v34 = v29;
      v35 = v10;
    }

    sub_29E752468();
    sub_29E752448();
    sub_29E6AE764(0, &qword_2A1858DF0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29E6AD7B8();
    v37 = v50;
    sub_29E7523B8();
    (*(v51 + 32))(v24, v37, v53);
    sub_29E6AE6A0(0, &qword_2A1858E90, MEMORY[0x29EDB8648]);
    swift_storeEnumTagMultiPayload();
    v36 = 0;
    v10 = v35;
    v29 = v34;
    v5 = v33;
    v31 = v61;
    v20 = v54;
    goto LABEL_10;
  }

  v32 = 1;
LABEL_11:
  (*(v21 + 56))(v31, v32, 1, v20);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_29E752298();
  sub_29E6AE578(v31, v29);
  v39 = *(v5 + 16);
  v40 = v29;
  v41 = v10;
  v42 = v58;
  v43 = v55;
  v39(v58, v41, v55);
  sub_29E6AD8E4();
  v44 = v56;
  sub_29E6AE578(v40, v56);
  v45 = v59;
  v46 = *(v59 + 48);
  v39((v44 + v46), v42, v43);
  v47 = v60;
  sub_29E6AE60C(v44, v60);
  (*(v5 + 32))(v47 + *(v45 + 48), v44 + v46, v43);
  v48 = *(v5 + 8);
  v48(v41, v43);
  sub_29E6AE2AC(v61, &qword_2A1858DD0, sub_29E6AD6B4);
  v48(v42, v43);
  sub_29E6AE2AC(v40, &qword_2A1858DD0, sub_29E6AD6B4);
}

double sub_29E6AAE0C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v7 = sub_29E74F7C8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v19 = v7;
  *(&v19 + 1) = v9;
  sub_29E60DE10();
  v10 = sub_29E753608();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  sub_29E753C48();
  sub_29E752AB8();

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v15;
  v16 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v16;
  result = *&v21;
  *(a1 + 64) = v21;
  return result;
}

double sub_29E6AB030@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v7 = sub_29E74F7C8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v19 = v7;
  *(&v19 + 1) = v9;
  sub_29E60DE10();
  v10 = sub_29E753608();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  sub_29E753C48();
  sub_29E752AB8();

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v15;
  v16 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v16;
  result = *&v21;
  *(a1 + 64) = v21;
  return result;
}

uint64_t sub_29E6AB254@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E6AE31C();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E7522A8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  v11 = sub_29E752528();
  v12 = *(v5 + 56);
  v21 = v12;
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v8[v12], a1[1], v11);
  sub_29E6ADFA8();
  v15 = v14;
  sub_29E6AE764(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  sub_29E6AE058();
  v16 = *(v5 + 72);
  v17 = a1[2];
  v18 = *(v15 - 8);
  (*(v18 + 16))(&v8[v16], v17, v15);
  (*(v10 + 32))(a2, v8, v9);
  (*(v13 + 32))(a2 + *(v5 + 56), &v8[v21], v11);
  return (*(v18 + 32))(a2 + *(v5 + 72), &v8[v16], v15);
}

uint64_t sub_29E6AB488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v23 = v9;
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    result = sub_29E6AE408(v13, &v22 - v10, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
    if (v12 == 1)
    {
LABEL_3:
      sub_29E6AE470(v11, a2, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
      return (*(v23 + 56))(a2, 0, 1, v4);
    }

    v16 = 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      sub_29E6AE408(v13 + *(v23 + 72) * v16, v8, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
      v18 = *(v4 + 20);
      v19 = *&v11[v18];
      v20 = *&v8[v18];
      if (v19 == v20)
      {
        v21 = *(v4 + 24);
        if (sub_29E74ECB8())
        {
          goto LABEL_15;
        }
      }

      else if (v19 < v20)
      {
LABEL_15:
        sub_29E6AE24C(v11, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
        result = sub_29E6AE470(v8, v11, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
        goto LABEL_9;
      }

      result = sub_29E6AE24C(v8, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
LABEL_9:
      ++v16;
      if (v17 == v12)
      {
        goto LABEL_3;
      }
    }
  }

  v15 = *(v9 + 56);

  return v15(a2, 1, 1, v4);
}

uint64_t sub_29E6AB708@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_29E752418();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = sub_29E752368();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  sub_29E6AE3A4(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = v18 - v7;
  v9 = sub_29E74EE68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E752398();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v10 + 104))(v13, *MEMORY[0x29EDB9CA0], v9);
  v16 = sub_29E74EE78();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_29E752378();
  sub_29E6AE2AC(v8, &qword_2A1A7D368, MEMORY[0x29EDB9D18]);
  (*(v10 + 8))(v13, v9);
  sub_29E752358();
  sub_29E752408();
  sub_29E6ADF28();
  sub_29E6AE0DC();
  sub_29E752588();
}

uint64_t sub_29E6ABA78@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  sub_29E6AE3A4(0, &qword_2A1A7BE80, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v89 = &v67 - v3;
  v4 = sub_29E752458();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v86 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752478();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v84 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29E74EBB8();
  v77 = *(v78 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x2A1C7C4A8](v78);
  v74 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29E74EBF8();
  v70 = *(v71 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v71);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_29E74EC48();
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v75);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v67 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v69 = &v67 - v23;
  sub_29E6AE764(0, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v82 = *(v24 - 8);
  v83 = v24;
  v25 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v72 = &v67 - v26;
  sub_29E6ADFA8();
  v87 = *(v27 - 8);
  v88 = v27;
  v28 = *(v87 + 64);
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v85 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v81 = &v67 - v31;
  v32 = sub_29E752508();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v80 = sub_29E752528();
  v79 = *(v80 - 8);
  v34 = *(v79 + 64);
  v35 = MEMORY[0x2A1C7C4A8](v80);
  v93 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35);
  v38 = &v67 - v37;
  v92 = sub_29E7522A8();
  v76 = *(v92 - 8);
  v39 = *(v76 + 64);
  v40 = MEMORY[0x2A1C7C4A8](v92);
  v91 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40);
  v43 = &v67 - v42;
  sub_29E7544C8();
  v73 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1856200 != -1)
  {
    swift_once();
  }

  v95 = xmmword_2A1869270;
  v96 = qword_2A1869280;
  v97 = unk_2A1869288;
  v98 = qword_2A1869290;
  swift_bridgeObjectRetain_n();
  v67 = v43;
  sub_29E752298();
  sub_29E7524F8();
  v68 = v38;
  v44 = sub_29E752518();
  MEMORY[0x29ED91080](v44);
  sub_29E74EBE8();
  sub_29E74EB98();
  (*(v70 + 8))(v14, v71);
  v45 = *(v15 + 8);
  v46 = v75;
  v45(v19, v75);
  v47 = v74;
  sub_29E74EBA8();
  sub_29E74EB78();
  (*(v77 + 8))(v47, v78);
  v45(v22, v46);
  sub_29E752468();
  sub_29E752448();
  sub_29E6AE80C(&qword_2A1A7CFE8, MEMORY[0x29EDB9BB0]);
  v48 = v72;
  sub_29E7523A8();
  v49 = sub_29E753448();
  v50 = v89;
  (*(*(v49 - 8) + 56))(v89, 1, 1, v49);
  sub_29E753488();
  sub_29E6AE2AC(v50, &qword_2A1A7BE80, MEMORY[0x29EDBC990]);
  sub_29E753468();
  sub_29E7534C8();

  sub_29E753518();

  sub_29E6AE058();
  v51 = v81;
  v52 = v83;
  sub_29E7524D8();

  (*(v82 + 8))(v48, v52);
  v53 = v76;
  v54 = v91;
  (*(v76 + 16))(v91, v43, v92);
  v94[0] = v54;
  v55 = v79;
  v56 = v93;
  v57 = v68;
  v58 = v80;
  (*(v79 + 16))(v93, v68, v80);
  v94[1] = v56;
  v60 = v87;
  v59 = v88;
  v61 = v85;
  (*(v87 + 16))(v85, v51, v88);
  v94[2] = v61;
  sub_29E6AB254(v94, v90);
  v62 = *(v60 + 8);
  v62(v51, v59);
  v63 = *(v55 + 8);
  v63(v57, v58);
  v64 = *(v53 + 8);
  v65 = v92;
  v64(v67, v92);
  v62(v61, v59);
  v63(v93, v58);
  v64(v91, v65);
}

uint64_t sub_29E6AC504(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_29E6AC518(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_29E6AC52C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A18561F0 != -1)
  {
    swift_once();
  }

  v2 = sub_29E750A18();
  v3 = sub_29E61037C(v2, qword_2A1869250);
  v6 = *(v2 - 8);
  (*(v6 + 16))(a1, v3, v2);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v2);
}

uint64_t sub_29E6AC614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E6AE80C(&qword_2A1858E98, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29E6AC6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29E6AE80C(&qword_2A1858E98, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29E6AC758(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29E6AE80C(&qword_2A1858D40, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart);
  *v4 = v1;
  v4[1] = sub_29E60350C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

void sub_29E6AC8E0()
{
  if (!qword_2A1A7CFE0)
  {
    sub_29E74ED28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A7CFE0);
    }
  }
}

void sub_29E6AC948()
{
  if (!qword_2A1A7BE10)
  {
    sub_29E74ED28();
    sub_29E6AE80C(&qword_2A1A7CFC8, MEMORY[0x29EDB9BC8]);
    v0 = sub_29E7540F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BE10);
    }
  }
}

void sub_29E6ACA24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E6ACAA4()
{
  if (!qword_2A1858D50)
  {
    sub_29E6ACB18();
    sub_29E6AD088();
    v0 = sub_29E7522B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858D50);
    }
  }
}

void sub_29E6ACB18()
{
  if (!qword_2A1858D58)
  {
    sub_29E6AE3A4(255, &qword_2A1858D28, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9A40]);
    type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint();
    sub_29E6ACC1C();
    sub_29E6AD000();
    sub_29E6AE80C(&qword_2A1858D90, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858D58);
    }
  }
}

void sub_29E6ACC1C()
{
  if (!qword_2A1858D60)
  {
    sub_29E6ACD88();
    sub_29E6ACEBC();
    sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8]);
    sub_29E752548();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6ACFAC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858D60);
    }
  }
}

void sub_29E6ACD88()
{
  if (!qword_2A1858D68)
  {
    sub_29E6ACEBC();
    sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8]);
    sub_29E752548();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6ACFAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858D68);
    }
  }
}

void sub_29E6ACEBC()
{
  if (!qword_2A1858D70)
  {
    sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8]);
    sub_29E752548();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858D70);
    }
  }
}

unint64_t sub_29E6ACFAC()
{
  result = qword_2A1858D80;
  if (!qword_2A1858D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858D80);
  }

  return result;
}

unint64_t sub_29E6AD000()
{
  result = qword_2A1858D88;
  if (!qword_2A1858D88)
  {
    sub_29E6AE3A4(255, &qword_2A1858D28, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858D88);
  }

  return result;
}

void sub_29E6AD088()
{
  if (!qword_2A1858D98)
  {
    sub_29E6AD178(255, &qword_2A1858DA0, MEMORY[0x29EDB86E8]);
    sub_29E752568();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858D98);
    }
  }
}

void sub_29E6AD178(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29E6AD210()
{
  result = qword_2A1858DA8;
  if (!qword_2A1858DA8)
  {
    sub_29E6ACAA4();
    sub_29E6AD334();
    sub_29E6AD178(255, &qword_2A1858DA0, MEMORY[0x29EDB86E8]);
    sub_29E752568();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858DA8);
  }

  return result;
}

unint64_t sub_29E6AD334()
{
  result = qword_2A1858DB0;
  if (!qword_2A1858DB0)
  {
    sub_29E6ACB18();
    sub_29E6ACD88();
    sub_29E6ACEBC();
    sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8]);
    sub_29E752548();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6ACFAC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858DB0);
  }

  return result;
}

void sub_29E6AD4C4()
{
  if (!qword_2A1858DB8)
  {
    sub_29E6AC9DC(255);
    sub_29E6AD5C8(255);
    sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC);
    sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858DB8);
    }
  }
}

void sub_29E6AD610()
{
  if (!qword_2A1858DC8)
  {
    sub_29E6AE3A4(255, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
    sub_29E7522A8();
    v0 = sub_29E7522B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858DC8);
    }
  }
}

void sub_29E6AD6B4()
{
  if (!qword_2A1858DD8)
  {
    sub_29E6AE6A0(255, &qword_2A1858DE0, MEMORY[0x29EDB8650]);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858DD8);
    }
  }
}

void sub_29E6AD728()
{
  if (!qword_2A1858DE8)
  {
    sub_29E6AE764(255, &qword_2A1858DF0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29E6AD7B8();
    v0 = sub_29E7523C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858DE8);
    }
  }
}

unint64_t sub_29E6AD7B8()
{
  result = qword_2A1858DF8;
  if (!qword_2A1858DF8)
  {
    sub_29E6AE764(255, &qword_2A1858DF0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858DF8);
  }

  return result;
}

unint64_t sub_29E6AD85C()
{
  result = qword_2A1858E00;
  if (!qword_2A1858E00)
  {
    sub_29E6AD610();
    sub_29E6AD8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E00);
  }

  return result;
}

unint64_t sub_29E6AD8E4()
{
  result = qword_2A1858E08;
  if (!qword_2A1858E08)
  {
    sub_29E6AE3A4(255, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
    sub_29E6AD98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E08);
  }

  return result;
}

unint64_t sub_29E6AD98C()
{
  result = qword_2A1858E10;
  if (!qword_2A1858E10)
  {
    sub_29E6AD6B4();
    sub_29E6ADA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E10);
  }

  return result;
}

unint64_t sub_29E6ADA04()
{
  result = qword_2A1858E18;
  if (!qword_2A1858E18)
  {
    sub_29E6AE6A0(255, &qword_2A1858DE0, MEMORY[0x29EDB8650]);
    sub_29E6AE80C(&qword_2A1858E20, sub_29E6AD728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E18);
  }

  return result;
}

void sub_29E6ADAC8()
{
  if (!qword_2A1858E38)
  {
    sub_29E6AD4C4();
    sub_29E6AE764(255, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29E6AC9DC(255);
    sub_29E6AD5C8(255);
    sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC);
    sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8);
    swift_getOpaqueTypeConformance2();
    sub_29E6ADC48();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858E38);
    }
  }
}

unint64_t sub_29E6ADC48()
{
  result = qword_2A1858E48;
  if (!qword_2A1858E48)
  {
    sub_29E6AE764(255, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E48);
  }

  return result;
}

void sub_29E6ADCE4()
{
  if (!qword_2A1858E50)
  {
    sub_29E6ADAC8();
    sub_29E6ADEE0(255);
    sub_29E6AD4C4();
    sub_29E6AE764(255, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29E6AC9DC(255);
    sub_29E6AD5C8(255);
    sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC);
    sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8);
    swift_getOpaqueTypeConformance2();
    sub_29E6ADC48();
    swift_getOpaqueTypeConformance2();
    sub_29E6AE80C(&qword_2A1858E70, sub_29E6ADEE0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858E50);
    }
  }
}

void sub_29E6ADF28()
{
  if (!qword_2A1858E60)
  {
    sub_29E7522A8();
    sub_29E752528();
    sub_29E6ADFA8();
    v0 = sub_29E7522B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858E60);
    }
  }
}

void sub_29E6ADFA8()
{
  if (!qword_2A1A7C0B0)
  {
    sub_29E6AE764(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0B0);
    }
  }
}

unint64_t sub_29E6AE058()
{
  result = qword_2A1A7C0E8;
  if (!qword_2A1A7C0E8)
  {
    sub_29E6AE764(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7C0E8);
  }

  return result;
}

unint64_t sub_29E6AE0DC()
{
  result = qword_2A1858E68;
  if (!qword_2A1858E68)
  {
    sub_29E6ADF28();
    sub_29E6AE764(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E68);
  }

  return result;
}

unint64_t sub_29E6AE1DC()
{
  result = qword_2A1A7BE08;
  if (!qword_2A1A7BE08)
  {
    sub_29E6AC948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE08);
  }

  return result;
}

uint64_t sub_29E6AE24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6AE2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6AE3A4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6AE31C()
{
  if (!qword_2A1858E78)
  {
    sub_29E7522A8();
    sub_29E752528();
    sub_29E6ADFA8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1858E78);
    }
  }
}

void sub_29E6AE3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6AE408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6AE470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E6AE4D8()
{
  if (!qword_2A1858E88)
  {
    sub_29E6AE3A4(255, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
    sub_29E7522A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858E88);
    }
  }
}

uint64_t sub_29E6AE578(uint64_t a1, uint64_t a2)
{
  sub_29E6AE3A4(0, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6AE60C(uint64_t a1, uint64_t a2)
{
  sub_29E6AE3A4(0, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E6AE6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E6AD728();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E6AE704()
{
  if (!qword_2A1A7C0D8)
  {
    sub_29E74ED28();
    v0 = sub_29E7523E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C0D8);
    }
  }
}

void sub_29E6AE764(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29E6AE80C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6AE854(int a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v92 = a6;
  v88 = a5;
  v84 = a4;
  v96 = a2;
  v98 = a1;
  v6 = MEMORY[0x29EDC2280];
  v7 = MEMORY[0x29EDC2008];
  sub_29E6AF924(0, &qword_2A18579A0, type metadata accessor for AppleWatchSection, MEMORY[0x29EDC2280], MEMORY[0x29EDC2008]);
  v95 = v8;
  v94 = *(v8 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v93 = &v71 - v10;
  sub_29E63FED4();
  v91 = v11;
  v90 = *(v11 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v89 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E63FF4C();
  v87 = v14;
  v86 = *(v14 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v85 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AF924(0, &qword_2A18579C8, sub_29E63FFC4, v6, v7);
  v83 = v17;
  v82 = *(v17 - 8);
  v18 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v81 = &v71 - v19;
  sub_29E640000();
  v80 = v20;
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v78 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AF924(0, &qword_2A18579E8, type metadata accessor for GoalSection, v6, v7);
  v77 = v23;
  v76 = *(v23 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v75 = &v71 - v25;
  sub_29E6AF924(0, &qword_2A18579F0, type metadata accessor for WindDownSection, v6, v7);
  v74 = v26;
  v73 = *(v26 - 8);
  v27 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v72 = &v71 - v28;
  sub_29E6AF924(0, &qword_2A18579F8, type metadata accessor for AddScheduleSection, v6, v7);
  v71 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v33 = &v71 - v32;
  sub_29E6AF924(0, &qword_2A1857A00, type metadata accessor for ManageScheduleSection, v6, v7);
  v35 = v34;
  v36 = *(v34 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v34);
  v39 = &v71 - v38;
  sub_29E7544C8();
  v97 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v41 = MEMORY[0x29EDC2000];
  v42 = MEMORY[0x29EDC1FF8];
  if (Strong)
  {
    v43 = *(Strong + 80);

    if (v98)
    {
      v44 = v41;
    }

    else
    {
      v44 = v42;
    }

    (*(v36 + 104))(v39, *v44, v35);
    sub_29E750908();
  }

  swift_beginAccess();
  v45 = swift_weakLoadStrong();
  v46 = v98;
  if (v45)
  {
    v47 = *(v45 + 88);

    if (v46)
    {
      v48 = v41;
    }

    else
    {
      v48 = v42;
    }

    (*(v30 + 104))(v33, *v48, v71);
    sub_29E750908();
  }

  swift_beginAccess();
  v49 = swift_weakLoadStrong();
  if (v49)
  {
    v50 = *(v49 + 96);

    if (v46)
    {
      v51 = v41;
    }

    else
    {
      v51 = v42;
    }

    (*(v73 + 104))(v72, *v51, v74);
    sub_29E750908();
  }

  swift_beginAccess();
  v52 = swift_weakLoadStrong();
  if (v52)
  {
    v53 = *(v52 + 104);

    if (v46)
    {
      v54 = v41;
    }

    else
    {
      v54 = v42;
    }

    (*(v76 + 104))(v75, *v54, v77);
    sub_29E750908();
  }

  swift_beginAccess();
  v55 = swift_weakLoadStrong();
  if (v55)
  {
    v56 = *(v55 + 112);

    if (v84 & v46)
    {
      v57 = v41;
    }

    else
    {
      v57 = v42;
    }

    (*(v79 + 104))(v78, *v57, v80);
    sub_29E750908();
  }

  swift_beginAccess();
  v58 = swift_weakLoadStrong();
  if (v58)
  {
    v59 = *(v58 + 120);

    if (v88 & 1 | ((v46 & 1) == 0))
    {
      v60 = v42;
    }

    else
    {
      v60 = v41;
    }

    (*(v82 + 104))(v81, *v60, v83);
    sub_29E750908();
  }

  swift_beginAccess();
  v61 = swift_weakLoadStrong();
  if (v61)
  {
    v62 = *(v61 + 128);

    if (v46)
    {
      v63 = v41;
    }

    else
    {
      v63 = v42;
    }

    (*(v86 + 104))(v85, *v63, v87);
    sub_29E750908();
  }

  swift_beginAccess();
  v64 = swift_weakLoadStrong();
  if (v64)
  {
    v65 = *(v64 + 136);

    if (v92 & 1 | ((v46 & 1) == 0))
    {
      v66 = v42;
    }

    else
    {
      v66 = v41;
    }

    (*(v90 + 104))(v89, *v66, v91);
    sub_29E750908();
  }

  swift_beginAccess();
  v67 = swift_weakLoadStrong();
  if (v67)
  {
    v68 = *(v67 + 144);

    if (v46 & v96)
    {
      v69 = v41;
    }

    else
    {
      v69 = v42;
    }

    (*(v94 + 104))(v93, *v69, v95);
    sub_29E750908();
  }
}

uint64_t sub_29E6AF374()
{
  sub_29E5FECBC((v0 + 16));

  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  v9 = *(v0 + 136);

  v10 = *(v0 + 144);

  v11 = *(v0 + 152);

  return v0;
}

uint64_t sub_29E6AF3FC()
{
  sub_29E6AF374();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6AF47C()
{
  sub_29E6AF6B0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E769630;
  v2 = MEMORY[0x29EDC2280];
  v3 = v0[10];
  *(v1 + 32) = v0[9];
  *(v1 + 40) = v2;
  v4 = sub_29E6AF894(&qword_2A1858EB0, sub_29E6AF768);
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  v5 = v0[11];
  v6 = sub_29E6AF894(&qword_2A1858EB8, sub_29E6AF7A4);
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = v0[12];
  v8 = sub_29E6AF894(&qword_2A1858EC0, sub_29E6AF7E0);
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  v9 = v0[13];
  v10 = sub_29E6AF894(&qword_2A1858EC8, sub_29E6AF81C);
  *(v1 + 96) = v9;
  *(v1 + 104) = v10;
  v11 = v0[14];
  v12 = sub_29E6AF894(&qword_2A1858ED0, sub_29E6400C8);
  *(v1 + 112) = v11;
  *(v1 + 120) = v12;
  v13 = v0[15];
  v14 = sub_29E6AF894(&qword_2A1858ED8, sub_29E6AF858);
  *(v1 + 128) = v13;
  *(v1 + 136) = v14;
  v15 = v0[16];
  v16 = sub_29E6AF894(&qword_2A1858EE0, sub_29E6401A8);
  *(v1 + 144) = v15;
  *(v1 + 152) = v16;
  v17 = v0[17];
  v18 = sub_29E6AF894(&qword_2A1858EE8, sub_29E640220);
  *(v1 + 160) = v17;
  *(v1 + 168) = v18;
  v19 = v0[18];
  v20 = sub_29E6AF894(&qword_2A1858EF0, sub_29E6AF8E8);
  *(v1 + 176) = v19;
  *(v1 + 184) = v20;

  return v1;
}

void sub_29E6AF6B0()
{
  if (!qword_2A1858EA0)
  {
    sub_29E6AF708();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858EA0);
    }
  }
}

unint64_t sub_29E6AF708()
{
  result = qword_2A1858EA8;
  if (!qword_2A1858EA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858EA8);
  }

  return result;
}

uint64_t sub_29E6AF894(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6AF924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29E6AF990(uint64_t a1)
{
  v3 = sub_29E7500C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsRoomModel;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  v9 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler);
  if (!v9)
  {
    return (*(v4 + 8))(a1, v3);
  }

  v10 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler + 8);
  (*(v4 + 16))(v7, v1 + v8, v3);

  v9(v7);
  sub_29E6459B8(v9);
  v11 = *(v4 + 8);
  v11(a1, v3);
  return (v11)(v7, v3);
}

void sub_29E6AFB30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v46 = sub_29E7500D8();
  v49 = *(v46 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v46);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74EE78();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605ADC();
  v12 = v11;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v39 - v17;
  sub_29E64C90C();
  v45 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E74F1C8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v44 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E74F208();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26 - 8);
  v43 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29E754048();
  sub_29E6B2584();
  if (sub_29E7540E8())
  {
    v30 = *(v29 - 8);
    v41 = v7;
    v42 = a3;
    v31 = v30;
    v32 = *(v30 + 16);
    v32(v18, a1, v29);
    v32(&v18[*(v12 + 48)], a1, v29);
    sub_29E6806A4(v18, v16);
    v33 = *(v12 + 48);
    v39 = v18;
    v40 = v8;
    v34 = v47;
    v35 = *(v31 + 32);
    v35(v22, v16, v29);
    v36 = *(v31 + 8);
    v36(&v16[v33], v29);
    sub_29E605CC8(v39, v16);
    v35(&v22[*(v45 + 36)], &v16[*(v12 + 48)], v29);
    v36(v16, v29);
    (*(v34 + 16))(v50, v48, v40);
    sub_29E74F1B8();
    v37 = v43;
    sub_29E74F1D8();
    v38 = v41;
    (*(v49 + 104))(v41, *MEMORY[0x29EDC16A0], v46);
    sub_29E6B1A44(v37, v38, v42);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E6AFF88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = *v3;
  v32 = MEMORY[0x29EDCA398];
  sub_29E6B1FC4(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v28 - v8;
  sub_29E6B1EF0(0, &qword_2A1858F18, MEMORY[0x29EDCA420]);
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v28 - v14;
  v16 = (v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler);
  v17 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler);
  v18 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler + 8);
  *v16 = a1;
  v16[1] = a2;
  sub_29E6459B8(v17);

  sub_29E6B032C();
  v19 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_healthStore);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_29E754D78();
  MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75DEA0);
  v33 = v3;
  sub_29E754E38();
  v29 = v15;
  sub_29E74F238();

  v20 = sub_29E7544F8();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = v30;
  (*(v11 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v30);
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v11 + 32))(v24 + v22, &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  *(v24 + v23) = v3;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;

  v25 = sub_29E6B1354(0, 0, v9, &unk_29E769770, v24);
  sub_29E6B1F68(v9, &qword_2A1859CD0, v32);
  (*(v11 + 8))(v29, v21);
  v26 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask);
  *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask) = v25;
}

uint64_t sub_29E6B032C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask;
  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask))
  {
    v10 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask);

    sub_29E752068();
    v11 = sub_29E752088();
    v12 = sub_29E7546C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = v3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v22 = v4;
      v16 = v15;
      v24 = v15;
      *v14 = 136446210;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Stopping query", v14, 0xCu);
      sub_29E5FECBC(v16);
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);

      (*(v22 + 8))(v8, v23);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    sub_29E66A61C();
    sub_29E754508();

    v20 = *(v1 + v9);
    *(v1 + v9) = 0;
  }

  return result;
}

uint64_t sub_29E6B0578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_29E74F208();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  sub_29E6B1FC4(0, &qword_2A1858F20, MEMORY[0x29EDC1688]);
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  sub_29E6B1EF0(0, &qword_2A1858F28, MEMORY[0x29EDCA418]);
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  v15 = sub_29E752098();
  v6[13] = v15;
  v16 = *(v15 - 8);
  v6[14] = v16;
  v17 = *(v16 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E6B0764, 0, 0);
}

uint64_t sub_29E6B0764()
{
  v24 = v0;
  v1 = v0[16];
  sub_29E752068();
  v2 = sub_29E752088();
  v3 = sub_29E7546C8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  if (v4)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446210;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29E5ED000, v2, v3, "[%{public}s] Started query", v9, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v0[17] = v14;
  v15 = v0[12];
  v16 = v0[3];
  sub_29E6B1EF0(0, &qword_2A1858F18, MEMORY[0x29EDCA420]);
  sub_29E754528();
  v17 = *(MEMORY[0x29EDCA410] + 4);
  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  v18[1] = sub_29E6B095C;
  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[10];

  return MEMORY[0x2A1C73C10](v20, 0, 0, v21, v0 + 2);
}

uint64_t sub_29E6B095C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_29E6B0D40;
  }

  else
  {
    v3 = sub_29E6B0A6C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E6B0A6C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[8];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v8 = v0[1];

    return v8();
  }

  (*(v3 + 32))(v0[8], v1, v2);
  if (sub_29E754518())
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    v4 = v0[9];
    goto LABEL_4;
  }

  sub_29E7544C8();
  v0[19] = sub_29E7544B8();
  v11 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6B0C08, v11, v10);
}

uint64_t sub_29E6B0C08()
{
  v1 = v0[19];
  v2 = v0[8];
  v3 = v0[4];

  sub_29E6B0FB0(v2);

  return MEMORY[0x2A1C73D48](sub_29E6B0C80, 0, 0);
}

uint64_t sub_29E6B0C80()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = *(MEMORY[0x29EDCA410] + 4);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_29E6B095C;
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  return MEMORY[0x2A1C73C10](v4, 0, 0, v5, v0 + 2);
}

uint64_t sub_29E6B0D40()
{
  v31 = v0;
  v1 = v0[15];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v2 = v0[2];
  sub_29E752068();
  v3 = v2;
  v4 = sub_29E752088();
  v5 = sub_29E7546A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];
  if (v6)
  {
    v11 = v0[5];
    v29 = v0[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v10;
    v14 = swift_slowAlloc();
    v30 = v14;
    *v12 = 136446466;
    v15 = sub_29E755178();
    v27 = v7;
    v17 = sub_29E6B9C90(v15, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v2;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_29E5ED000, v4, v5, "[%{public}s] Query error: %{public}@", v12, 0x16u);
    sub_29E6B1F68(v13, &qword_2A1A7D0A8, sub_29E66ED88);
    MEMORY[0x29ED98410](v13, -1, -1);
    sub_29E5FECBC(v14);
    MEMORY[0x29ED98410](v14, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);

    v27(v29, v28);
  }

  else
  {

    v7(v9, v10);
  }

  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[12];
  v24 = v0[8];
  v23 = v0[9];
  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_29E6B0FB0(uint64_t a1)
{
  v2 = v1;
  v40 = *v1;
  v4 = sub_29E7500D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74F208();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E7500C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E752098();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v20 = sub_29E752088();
  v21 = sub_29E7546C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = a1;
    v23 = v22;
    v37 = swift_slowAlloc();
    v38 = v5;
    v45 = v37;
    *v23 = 136446210;
    v24 = sub_29E755178();
    v40 = v2;
    v26 = v12;
    v27 = v9;
    v28 = v8;
    v29 = v4;
    v30 = sub_29E6B9C90(v24, v25, &v45);

    *(v23 + 4) = v30;
    v4 = v29;
    v8 = v28;
    v9 = v27;
    v12 = v26;
    _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Received observer query update", v23, 0xCu);
    v31 = v37;
    sub_29E5FECBC(v37);
    v32 = v31;
    v5 = v38;
    MEMORY[0x29ED98410](v32, -1, -1);
    v33 = v23;
    a1 = v39;
    MEMORY[0x29ED98410](v33, -1, -1);
  }

  (*(v41 + 8))(v19, v42);
  (*(v44 + 16))(v12, a1, v9);
  (*(v5 + 104))(v8, *MEMORY[0x29EDC16A0], v4);
  v34 = v43;
  sub_29E6B1A44(v12, v8, v43);
  return sub_29E6AF990(v34);
}

uint64_t sub_29E6B1354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29E6B1FC4(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = v24 - v10;
  sub_29E6B1E70(a3, v24 - v10);
  v12 = sub_29E7544F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29E6B1F68(v11, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E7544E8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29E754468();
    v19 = v18;
    sub_29E751758();
    if (a2)
    {
LABEL_6:
      v20 = sub_29E754228() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_29E6B15CC()
{
  v1 = v0;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6B032C();

  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsRoomModel;
  v3 = sub_29E7500C8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_today;
  v5 = sub_29E754048();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_gregorianCalendar;
  v7 = sub_29E74EE78();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsQueryDescriptor;
  v9 = sub_29E74F258();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask);

  v11 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler + 8);
  sub_29E6459B8(*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler));
  return v1;
}

uint64_t sub_29E6B1798(uint64_t a1)
{
  sub_29E6B15CC();
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6B17FC()
{
  sub_29E7544C8();
  sub_29E7544B8();
  v1 = sub_29E754468();
  v3 = v2;

  return MEMORY[0x2A1C73D28](v0, sub_29E6B1798, v1, v3, 0);
}

uint64_t type metadata accessor for VitalsRoomModelProvider()
{
  result = qword_2A1858F08;
  if (!qword_2A1858F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6B18E4()
{
  result = sub_29E7500C8();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_29E754048();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_29E74EE78();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_29E74F258();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_29E6B1A44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a1;
  v23[1] = a3;
  v3 = sub_29E7500D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F1C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = sub_29E74F228();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = v23 - v16;
  v18 = [objc_opt_self() sharedBehavior];
  if (v18)
  {
    v19 = v18;
    v20 = sub_29E7545E8();

    if ((v20 & 1) == 0)
    {
      sub_29E68B5BC(MEMORY[0x29EDCA190]);
      sub_29E74F218();
      v21 = v25;
      sub_29E74F1E8();
      sub_29E74F1F8();
      (*(v4 + 104))(v7, *MEMORY[0x29EDC16A0], v3);
      (*(v11 + 16))(v15, v17, v10);
      sub_29E7500B8();
      (*(v4 + 8))(v24, v3);
      v22 = sub_29E74F208();
      (*(*(v22 - 8) + 8))(v21, v22);
      (*(v11 + 8))(v17, v10);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E6B1D18(uint64_t a1)
{
  v3 = v2;
  sub_29E6B1EF0(0, &qword_2A1858F18, MEMORY[0x29EDCA420]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29E605728;

  return sub_29E6B0578(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_29E6B1E70(uint64_t a1, uint64_t a2)
{
  sub_29E6B1FC4(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E6B1EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29E74F208();
    v7 = sub_29E66A61C();
    v8 = a3(a1, v6, v7, MEMORY[0x29EDC9F20]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6B1F68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E6B1FC4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6B1FC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6B2018(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v7 = sub_29E74EE78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v62 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605ADC();
  v61 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v53 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v57 = v52 - v15;
  sub_29E64C90C();
  v56 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v59 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E74F1C8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v55 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_29E74F258();
  v58 = *(v60 - 8);
  v22 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v60);
  v54 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29E7500C8();
  v24 = *(v67 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v67);
  v27 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask) = 0;
  v28 = (v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler);
  *v28 = 0;
  v28[1] = 0;
  *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_healthStore) = a1;
  v63 = v8;
  v64 = v7;
  v29 = v8 + 16;
  v30 = *(v8 + 16);
  v31 = a2;
  v52[0] = v30;
  v52[1] = v29;
  v30(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_gregorianCalendar, a2, v7);
  v32 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_today;
  v33 = sub_29E754048();
  v34 = *(v33 - 8);
  v35 = v34[2];
  v36 = v4 + v32;
  v37 = v68;
  v35(v36, v68, v33);
  v38 = a1;
  v65 = v31;
  sub_29E6AFB30(v37, v31, v27);
  v39 = *(v24 + 32);
  v66 = v4;
  v39(v4 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsRoomModel, v27, v67);
  sub_29E6B2584();
  result = sub_29E7540E8();
  if (result)
  {
    v41 = v57;
    v35(v57, v37, v33);
    v42 = v53;
    v43 = v61;
    v35(v41 + *(v61 + 48), v37, v33);
    sub_29E6806A4(v41, v42);
    v44 = *(v43 + 48);
    v45 = v34[4];
    v46 = v59;
    v45(v59, v42, v33);
    v47 = v34[1];
    v47(v42 + v44, v33);
    sub_29E605CC8(v41, v42);
    v45(&v46[*(v56 + 36)], v42 + *(v43 + 48), v33);
    v47(v42, v33);
    v49 = v64;
    v48 = v65;
    (v52[0])(v62, v65, v64);
    sub_29E74F1B8();
    v50 = v54;
    sub_29E74F248();
    v47(v68, v33);
    (*(v63 + 8))(v48, v49);
    v51 = v66;
    (*(v58 + 32))(v66 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsQueryDescriptor, v50, v60);
    return v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29E6B2584()
{
  result = qword_2A1A7BE20;
  if (!qword_2A1A7BE20)
  {
    sub_29E754048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE20);
  }

  return result;
}

__n128 sub_29E6B25DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29E6B25F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29E6B2640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E6B269C()
{
  v1[2] = v0;
  v2 = sub_29E7507E8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_29E750F88();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_29E751058();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E6B2814, 0, 0);
}

uint64_t sub_29E6B2814()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_29E601938(v1, v2);
  v4 = *(MEMORY[0x29EDC2730] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_29E6B28D0;
  v6 = v0[11];

  return MEMORY[0x2A1C62868](v6, v2, v3);
}

uint64_t sub_29E6B28D0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_29E6B2D1C;
  }

  else
  {
    v3 = sub_29E6B29E4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E6B29E4()
{
  v21 = v0[11];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[7];
  v25 = v0[6];
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v18 = v0[8];
  v19 = v0[2];
  sub_29E750F98();
  sub_29E750598();
  v20 = MEMORY[0x29EDC9E90];
  sub_29E6B3328(0, &qword_2A1858F30, MEMORY[0x29EDC2BF0], MEMORY[0x29EDC9E90]);
  v4 = *(sub_29E751B38() - 8);
  v17 = *(v4 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E762F40;
  v7 = *(v2 + 104);
  v7(v1, *MEMORY[0x29EDC1F60], v3);
  sub_29E750F78();

  sub_29E751B28();
  v7(v1, *MEMORY[0x29EDC1F68], v3);
  v8 = *(v19 + 40);
  v9 = *(v19 + 48);

  sub_29E751B28();
  sub_29E6B3328(0, &qword_2A1858F38, sub_29E6B3280, v20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E762F30;
  v11 = swift_task_alloc();
  *(v11 + 16) = v18;
  *(v11 + 24) = v6;
  v12 = sub_29E751D08();
  v13 = MEMORY[0x29EDC2C70];
  *(v10 + 56) = v12;
  *(v10 + 64) = v13;
  sub_29E5FEBF4((v10 + 32));
  sub_29E751CF8();
  swift_setDeallocating();
  v14 = *(v6 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  (*(v22 + 8))(v21, v23);
  (*(v24 + 8))(v18, v25);

  v15 = v0[1];

  return v15(v10);
}

uint64_t sub_29E6B2D1C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_29E6B2D98()
{
  v8 = sub_29E751D08();
  v9 = MEMORY[0x29EDC2C70];
  sub_29E5FEBF4(v7);
  sub_29E751CF8();
  v0 = sub_29E750B38();
  sub_29E5FECBC(v7);
  v1 = sub_29E750548();
  v2 = [v1 CGColor];

  v8 = sub_29E750DA8();
  v9 = MEMORY[0x29EDC2290];
  sub_29E5FEBF4(v7);
  sub_29E750D98();
  v3 = sub_29E750B38();
  sub_29E5FECBC(v7);
  sub_29E6B3328(0, &qword_2A1858F48, sub_29E6B32F4, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E762F40;
  *(v4 + 32) = v0;
  *(v4 + 40) = v3;
  v5 = MEMORY[0x29ED93440]();

  return v5;
}

uint64_t sub_29E6B2EF4(uint64_t a1, uint64_t a2)
{
  sub_29E6B3328(0, &qword_2A1858F58, MEMORY[0x29EDC2C48], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v25[-1] - v5;
  v7 = sub_29E751CA8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = sub_29E7507E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E750F68();
  v16 = v15;
  v17 = sub_29E7505A8();
  (*(v10 + 104))(v13, *MEMORY[0x29EDC1F60], v9);
  v26 = sub_29E751C28();
  v27 = MEMORY[0x29EDC2C40];
  sub_29E5FEBF4(v25);
  MEMORY[0x29ED94550](v14, v16, v13, v17);
  v18 = sub_29E750B38();
  sub_29E5FECBC(v25);
  sub_29E6CC8FC(a2);
  v19 = sub_29E751C88();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_29E7505B8();
  sub_29E751C98();
  v26 = sub_29E751CD8();
  v27 = MEMORY[0x29EDC2C50];
  sub_29E5FEBF4(v25);
  sub_29E751CB8();
  v20 = sub_29E750B38();
  sub_29E5FECBC(v25);
  sub_29E6B3328(0, &qword_2A1858F48, sub_29E6B32F4, MEMORY[0x29EDC9E90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E762F40;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  v22 = MEMORY[0x29ED93440]();

  return v22;
}

uint64_t sub_29E6B31F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29E60350C;

  return sub_29E6B269C();
}

unint64_t sub_29E6B3280()
{
  result = qword_2A1858F40;
  if (!qword_2A1858F40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858F40);
  }

  return result;
}

uint64_t sub_29E6B32E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E6B2D98();
}

void sub_29E6B3328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29E6B338C(uint64_t a1, char a2, double a3, double a4)
{
  v61 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = [v8 fractionalWidthDimension_];
  v10 = &selRef_restoreUserActivityState_;
  if (a2)
  {
    if (a2 == 1)
    {
      v11 = [v8 estimatedDimension_];
      v12 = objc_opt_self();
      v13 = [v12 sizeWithWidthDimension:v9 heightDimension:v11];

      sub_29E6163F8();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_29E764160;
      v15 = [v8 fractionalWidthDimension_];
      v16 = [v8 estimatedDimension_];
      v17 = [v12 sizeWithWidthDimension:v15 heightDimension:v16];

      v18 = [objc_opt_self() itemWithLayoutSize_];
      *(v14 + 32) = v18;
      sub_29E6B3B08();
      v19 = sub_29E7543D8();

      v20 = [v61 horizontalGroupWithLayoutSize:v13 subitems:v19];
    }

    else
    {
      v42 = [v8 estimatedDimension_];
      v43 = objc_opt_self();
      v60 = [v43 sizeWithWidthDimension:v9 heightDimension:v42];

      sub_29E6163F8();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_29E769820;
      v45 = [v8 fractionalWidthDimension_];
      v46 = [v8 uniformAcrossSiblingsWithEstimate_];
      v47 = [v43 &selRef_topViewController + 6];

      v48 = objc_opt_self();
      v49 = [v48 itemWithLayoutSize_];

      *(v44 + 32) = v49;
      v50 = [v8 fractionalWidthDimension_];
      v51 = [v8 uniformAcrossSiblingsWithEstimate_];
      v52 = [v43 &selRef_topViewController + 6];

      v10 = &selRef_restoreUserActivityState_;
      v53 = [v48 itemWithLayoutSize_];

      *(v44 + 40) = v53;
      v54 = [v8 fractionalWidthDimension_];
      v55 = [v8 uniformAcrossSiblingsWithEstimate_];
      v56 = [v43 &selRef_topViewController + 6];

      v57 = [v48 itemWithLayoutSize_];
      *(v44 + 48) = v57;
      sub_29E6B3B08();
      v19 = sub_29E7543D8();

      v13 = v60;
      v20 = [v61 horizontalGroupWithLayoutSize:v60 subitems:v19];
    }

    v39 = v20;

    v40 = objc_opt_self();
    v41 = &selRef_flexibleSpacing_;
  }

  else
  {
    v21 = [v8 estimatedDimension_];
    v22 = objc_opt_self();
    v60 = [v22 sizeWithWidthDimension:v9 heightDimension:v21];

    sub_29E6163F8();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29E7655E0;
    v24 = [v8 fractionalWidthDimension_];
    v25 = [v8 estimatedDimension_];
    v26 = [v22 sizeWithWidthDimension:v24 heightDimension:v25];

    v27 = objc_opt_self();
    v28 = [v27 itemWithLayoutSize_];

    *(v23 + 32) = v28;
    v29 = [v8 fractionalWidthDimension_];
    v30 = [v22 sizeWithWidthDimension:v29 heightDimension:a1];

    v31 = [v8 fractionalWidthDimension_];
    v32 = [v8 fractionalHeightDimension_];
    v33 = [v22 sizeWithWidthDimension:v31 heightDimension:v32];

    v10 = &selRef_restoreUserActivityState_;
    v34 = [v27 itemWithLayoutSize_];

    v35 = [v61 horizontalGroupWithLayoutSize:v30 repeatingSubitem:v34 count:2];
    v36 = objc_opt_self();
    v37 = [v36 flexibleSpacing_];
    [v35 setInterItemSpacing_];

    *(v23 + 40) = v35;
    sub_29E6B3B08();
    v38 = sub_29E7543D8();

    v39 = [v61 verticalGroupWithLayoutSize:v60 subitems:v38];

    v40 = v36;
    v41 = &selRef_fixedSpacing_;
  }

  v58 = [v40 *v41];
  [v39 v10[13]];

  return v39;
}

unint64_t sub_29E6B3B08()
{
  result = qword_2A1858F60;
  if (!qword_2A1858F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1858F60);
  }

  return result;
}

uint64_t sub_29E6B3B54(uint64_t a1, void *a2)
{
  if ((a1 - 4) < 3)
  {
    v3 = sub_29E7549D8();
    v4 = objc_opt_self();
    if (v3)
    {
      v5 = [v4 estimatedDimension_];
    }

    else
    {
      v5 = [v4 fractionalWidthDimension_];
    }

    goto LABEL_7;
  }

  if ((a1 - 1) <= 2)
  {
    sub_29E7549D8();
    v5 = [objc_opt_self() fractionalWidthDimension_];
LABEL_7:
    v6 = v5;
    sub_29E753F38();

    return v6;
  }

  type metadata accessor for HKWidthDesignation(0);
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SleepApneaEventAllDataViewController()
{
  result = qword_2A1858F68;
  if (!qword_2A1858F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6B3D0C(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_29E6B3DD8(a1, a2);
  v6 = v5;
  sub_29E7510C8();
  sub_29E6AF6B0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E762F30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_unknownObjectRetain();
  sub_29E7510D8();
  v8 = sub_29E751A18();

  sub_29E751758();
  return v8;
}

uint64_t sub_29E6B3DD8(uint64_t a1, void *a2)
{
  sub_29E6B5B1C();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = a1;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v2;
  sub_29E6B5BE4();
  sub_29E6B5CE0(0, &qword_2A1858FB0, MEMORY[0x29EDC9A40]);
  sub_29E6B5DF0(&qword_2A1858FB8, sub_29E6B5BE4);

  v12 = a2;
  sub_29E752928();

  sub_29E6B5DF0(&qword_2A1858FC0, sub_29E6B5B1C);
  sub_29E7528D8();
  (*(v7 + 8))(v10, v6);
  sub_29E751408();
  v13 = sub_29E750958();

  sub_29E6B5DF0(&qword_2A1858FC8, sub_29E6B5D4C);
  return v13;
}

size_t sub_29E6B4048@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v41 = sub_29E750EE8();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74ED88();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v36 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E750CA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  sub_29E7544C8();
  v19 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v45 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E754C98())
  {
    v21 = MEMORY[0x29EDCA190];
    v38 = v19;
    if (!i)
    {
LABEL_17:
      sub_29E6CCAC8(v21);

      v27 = v36;
      sub_29E74ED78();
      sub_29E74ED48();
      (*(v37 + 8))(v27, v11);
      sub_29E750C98();
      sub_29E6B5CE0(0, &qword_2A1856858, MEMORY[0x29EDC9E90]);
      v28 = *(v15 + 72);
      v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_29E762F30;
      (*(v15 + 32))(v30 + v29, v18, v14);

      *a5 = v30;
      return result;
    }

    v47 = MEMORY[0x29EDCA190];
    result = sub_29E6DBCFC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v40 = i;
    v31 = v11;
    v32 = v18;
    v33 = v15;
    v34 = v14;
    v35 = a5;
    v15 = 0;
    v21 = v47;
    v23 = v45;
    v11 = v45 & 0xC000000000000001;
    v39 = v45 & 0xFFFFFFFFFFFFFF8;
    v19 = v7 + 32;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11)
      {
        v24 = MEMORY[0x29ED976A0](v15);
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_19;
        }

        v24 = *(v23 + 8 * v15 + 32);
      }

      v25 = v24;
      v46 = v24;
      sub_29E6B44C0(&v46, v42, v43, v10);

      v47 = v21;
      a5 = *(v21 + 16);
      v26 = *(v21 + 24);
      v18 = a5 + 1;
      if (a5 >= v26 >> 1)
      {
        sub_29E6DBCFC(v26 > 1, a5 + 1, 1);
        v21 = v47;
      }

      *(v21 + 16) = v18;
      (*(v7 + 32))(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a5, v10, v41);
      ++v15;
      v23 = v45;
      if (v14 == v40)
      {
        v14 = v34;
        a5 = v35;
        v18 = v32;
        v15 = v33;
        v11 = v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6B44C0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6B4594(v7, a2, a3, a4);
}

void sub_29E6B4594(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_29E74F8B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E681ED0(a1, 1, a3, a4);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v10 + 8))(v13, v9);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = v4;

  v15 = a1;
  v16 = a3;
  v17 = sub_29E754198();

  aBlock[4] = sub_29E6B5DAC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6B515C;
  aBlock[3] = &unk_2A25011E0;
  v18 = _Block_copy(aBlock);
  v19 = [objc_opt_self() contextualActionWithStyle:1 title:v17 handler:v18];

  _Block_release(v18);

  sub_29E6163F8();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E764160;
  *(v20 + 32) = v19;
  sub_29E609B5C(0, &qword_2A1858FD8, 0x29EDC7A28);
  v21 = v19;
  v22 = sub_29E7543D8();

  v23 = [objc_opt_self() configurationWithActions_];

  sub_29E750EC8();
}

uint64_t sub_29E6B489C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E751A58();
  sub_29E7547D8();
}

uint64_t sub_29E6B4950(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6, unint64_t a7, void (**a8)(char *, uint64_t))
{
  v46 = a6;
  v37 = a3;
  v38 = a5;
  v36 = a4;
  v10 = sub_29E74ED88();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v44 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v43 = &v33 - v15;
  v16 = sub_29E7544C8();
  v17 = sub_29E7544B8();
  v45 = v16;
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7527B8();
  v18 = aBlock[0];
  v48 = MEMORY[0x29EDCA190];
  if (aBlock[0] >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
  {
    v33 = a8;
    v34 = v17;
    v35 = a7;
    a7 = 0;
    v41 = v18 & 0xFFFFFFFFFFFFFF8;
    v42 = v18 & 0xC000000000000001;
    a8 = v11 + 1;
    v39 = i;
    v40 = v18;
    v20 = v43;
    while (1)
    {
      if (v42)
      {
        v22 = MEMORY[0x29ED976A0](a7, v18);
      }

      else
      {
        if (a7 >= *(v41 + 16))
        {
          goto LABEL_19;
        }

        v22 = *(v18 + 8 * a7 + 32);
      }

      v11 = v22;
      v17 = a7 + 1;
      if (__OFADD__(a7, 1))
      {
        break;
      }

      sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v23 = [v11 UUID];
      sub_29E74ED68();

      v24 = [v46 UUID];
      v25 = v44;
      sub_29E74ED68();

      sub_29E6B5DF0(&qword_2A1858FE0, MEMORY[0x29EDB9C08]);
      LOBYTE(v24) = sub_29E754108();
      v26 = *a8;
      (*a8)(v25, v10);
      v26(v20, v10);

      if (v24)
      {
      }

      else
      {
        sub_29E754DE8();
        v21 = *(v48 + 16);
        sub_29E754E18();
        sub_29E754E28();
        sub_29E754DF8();
      }

      v18 = v40;
      ++a7;
      if (v17 == v39)
      {
        v27 = v48;
        a7 = v35;
        a8 = v33;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v27 = MEMORY[0x29EDCA190];
LABEL_22:

  aBlock[0] = v27;
  sub_29E7527C8();
  v37(1);
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = v46;
  *(v28 + 24) = a8;
  aBlock[4] = sub_29E6B5DE8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A2501258;
  v30 = _Block_copy(aBlock);
  v31 = v29;

  [a7 deleteObject:v31 withCompletion:v30];
  _Block_release(v30);
}

uint64_t sub_29E6B4DC8(int a1, void *a2, void *a3, uint64_t a4)
{
  v40 = a4;
  v7 = sub_29E74ED88();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E752098();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752078();
  v16 = a3;
  v17 = a2;
  v18 = sub_29E752088();
  v19 = sub_29E7546C8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = a1;
    v21 = v20;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v21 = 136446978;
    v22 = sub_29E755178();
    v38 = v19;
    v24 = sub_29E6B9C90(v22, v23, &v43);
    v40 = v11;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = [v16 UUID];
    sub_29E74ED68();

    sub_29E6B5DF0(&qword_2A1858FE8, MEMORY[0x29EDB9C08]);
    v27 = sub_29E754FD8();
    v29 = v28;
    (*(v41 + 8))(v10, v7);
    v30 = sub_29E6B9C90(v27, v29, &v43);

    *(v21 + 14) = v30;
    *(v21 + 22) = 1024;
    *(v21 + 24) = v37 & 1;
    *(v21 + 28) = 2082;
    v42 = a2;
    v31 = a2;
    sub_29E6B5E38();
    v32 = sub_29E7541F8();
    v34 = sub_29E6B9C90(v32, v33, &v43);

    *(v21 + 30) = v34;
    _os_log_impl(&dword_29E5ED000, v18, v38, "[%{public}s] Delete vision prescription %s success: %{BOOL}d, error: %{public}s", v21, 0x26u);
    v35 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v35, -1, -1);
    MEMORY[0x29ED98410](v21, -1, -1);

    return (*(v12 + 8))(v15, v40);
  }

  else
  {

    return (*(v12 + 8))(v15, v11);
  }
}

void sub_29E6B515C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a3;
  v7(v11, v10, sub_29E6B5DD0, v9);
}

uint64_t sub_29E6B5230()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

void sub_29E6B52E8()
{
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepApneaEventAllDataViewController();
  v10.receiver = v0;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v2 + 8))(v5, v1);
  v7 = sub_29E754198();

  [v0 setTitle_];

  v8 = [v0 navigationItem];
  v9 = [v0 editButtonItem];
  [v8 setRightBarButtonItem_];
}

void sub_29E6B54CC(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29E6B52E8();
}

void sub_29E6B5584(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E752148();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = sub_29E750698();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 104))(v11, *MEMORY[0x29EDC1D50], v7);
  v12 = a1;
  sub_29E754878();
  sub_29E752138();
  sub_29E754888();
  v13 = type metadata accessor for SleepApneaEventAllDataViewController();
  v14.receiver = v12;
  v14.super_class = v13;
  objc_msgSendSuper2(&v14, sel_viewIsAppearing_, a3);
}

uint64_t sub_29E6B57A8()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_29E6B5834()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaEventAllDataViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6B5874@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_29E6B5A80();
  v5 = *(v4 + 48);
  sub_29E750E38();
  *(a1 + v5) = [v3 collectionView];
  v6 = *MEMORY[0x29EDC2300];
  v7 = sub_29E750E08();
  v10 = *(v7 - 8);
  (*(v10 + 104))(a1, v6, v7);
  v8 = *(v10 + 56);

  return v8(a1, 0, 1, v7);
}

uint64_t sub_29E6B5968@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D50];
  v3 = sub_29E750698();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_29E6B5A80()
{
  if (!qword_2A1858F80)
  {
    sub_29E750E78();
    sub_29E6B5C78(255, &qword_2A1858F88, &qword_2A1858F90, 0x29EDC79A8, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858F80);
    }
  }
}

void sub_29E6B5B1C()
{
  if (!qword_2A1858F98)
  {
    sub_29E6B5BE4();
    sub_29E6B5CE0(255, &qword_2A1858FB0, MEMORY[0x29EDC9A40]);
    sub_29E6B5DF0(&qword_2A1858FB8, sub_29E6B5BE4);
    v0 = sub_29E752638();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858F98);
    }
  }
}

void sub_29E6B5BE4()
{
  if (!qword_2A1858FA0)
  {
    sub_29E6B5C78(255, &qword_2A1858FA8, &qword_2A1858478, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
    v0 = sub_29E7527D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858FA0);
    }
  }
}

void sub_29E6B5C78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E609B5C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E6B5CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E750CA8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E6B5D4C()
{
  if (!qword_2A1858FD0)
  {
    sub_29E751408();
    v0 = sub_29E750768();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858FD0);
    }
  }
}

uint64_t sub_29E6B5DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6B5DF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6B5E38()
{
  if (!qword_2A1858A60)
  {
    sub_29E60A664(255, &qword_2A1A7BCD0);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858A60);
    }
  }
}

uint64_t sub_29E6B5EAC(uint64_t a1)
{
  sub_29E6B899C(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for SleepScoreRoomModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepScoreRoomModel;
  swift_beginAccess();
  sub_29E6B8BE4(a1, v1 + v12);
  swift_endAccess();
  sub_29E62D760(v1 + v12, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29E6B7144(a1);
    return sub_29E6B7144(v6);
  }

  else
  {
    sub_29E6808C8(v6, v11, type metadata accessor for SleepScoreRoomModel);
    *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_hasReceivedQueryResult) = 1;
    v14 = v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler;
    swift_beginAccess();
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 8);
      swift_endAccess();

      v15(v11);
      sub_29E6459B8(v15);
      sub_29E6B7144(a1);
      return sub_29E6B8C64(v11, type metadata accessor for SleepScoreRoomModel);
    }

    else
    {
      sub_29E6B7144(a1);
      sub_29E6B8C64(v11, type metadata accessor for SleepScoreRoomModel);
      return swift_endAccess();
    }
  }
}

uint64_t sub_29E6B610C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel;
  if (!*(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel))
  {
    v13 = sub_29E74F178();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_29E74F168();
    v17 = *(v2 + v12);
    *(v2 + v12) = v16;
  }

  v18 = (v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = a1;
  v18[1] = a2;
  sub_29E6459B8(v19);

  sub_29E6B665C();
  sub_29E6163F8();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E764160;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v22 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
  v23 = [objc_opt_self() queryDescriptorWithSampleType_];

  *(v21 + 32) = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = objc_allocWithZone(MEMORY[0x29EDBACC0]);
  sub_29E609B5C(0, &qword_2A1858468, 0x29EDBAD40);

  v26 = sub_29E7543D8();

  v54 = sub_29E6B8904;
  v55 = v24;
  aBlock = MEMORY[0x29EDCA5F8];
  v51 = 1107296256;
  v52 = sub_29E6B87EC;
  v53 = &unk_2A2501338;
  v27 = _Block_copy(&aBlock);
  v28 = [v25 initWithQueryDescriptors:v26 updateHandler:v27];

  _Block_release(v27);

  aBlock = 0;
  v51 = 0xE000000000000000;
  v29 = v28;
  sub_29E754D78();
  MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75DEA0);
  v49 = v3;
  sub_29E754E38();
  v30 = sub_29E754198();

  [v29 setDebugIdentifier_];

  [*(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_healthStore) executeQuery_];
  v31 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery);
  *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery) = v29;
  v32 = v29;

  sub_29E752068();
  v33 = v32;
  v34 = sub_29E752088();
  v35 = sub_29E7546C8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = v11;
    v38 = v8;
    v39 = v37;
    v40 = swift_slowAlloc();
    v47 = v7;
    v41 = v40;
    aBlock = v40;
    *v36 = 136446466;
    v42 = sub_29E755178();
    v44 = sub_29E6B9C90(v42, v43, &aBlock);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v33;
    *v39 = v29;
    v45 = v33;
    _os_log_impl(&dword_29E5ED000, v34, v35, "[%{public}s] Started query: %@", v36, 0x16u);
    sub_29E6B8C64(v39, sub_29E676558);
    MEMORY[0x29ED98410](v39, -1, -1);
    sub_29E5FECBC(v41);
    MEMORY[0x29ED98410](v41, -1, -1);
    MEMORY[0x29ED98410](v36, -1, -1);

    return (*(v38 + 8))(v48, v47);
  }

  else
  {

    return (*(v8 + 8))(v11, v7);
  }
}

void sub_29E6B665C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery;
  v9 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery);
  if (v9)
  {
    v10 = v9;
    sub_29E752068();
    v11 = v10;
    v12 = sub_29E752088();
    v13 = sub_29E7546C8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = v4;
      v15 = v14;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v15 = 136446466;
      v16 = sub_29E755178();
      v18 = sub_29E6B9C90(v16, v17, &v29);
      v27 = v3;
      v19 = v18;

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v11;
      v20 = v25;
      *v25 = v9;
      v21 = v11;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Stopping query: %@", v15, 0x16u);
      sub_29E6B8C64(v20, sub_29E676558);
      MEMORY[0x29ED98410](v20, -1, -1);
      v22 = v26;
      sub_29E5FECBC(v26);
      MEMORY[0x29ED98410](v22, -1, -1);
      MEMORY[0x29ED98410](v15, -1, -1);

      (*(v28 + 8))(v7, v27);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    [*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_healthStore) stopQuery_];

    v23 = *(v1 + v8);
    *(v1 + v8) = 0;
  }
}

uint64_t sub_29E6B68FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_29E6B6970();
  }

  return a3(Strong);
}

uint64_t sub_29E6B6970()
{
  v1 = v0;
  v2 = *v0;
  sub_29E6B899C(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136446210;
    v17 = sub_29E755178();
    v19 = sub_29E6B9C90(v17, v18, &v27);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Received observer query update", v15, 0xCu);
    sub_29E5FECBC(v16);
    MEMORY[0x29ED98410](v16, -1, -1);
    v20 = v15;
    v6 = v26;
    MEMORY[0x29ED98410](v20, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v21 = sub_29E7544F8();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_29E7544C8();

  v22 = sub_29E7544B8();
  v23 = swift_allocObject();
  v24 = MEMORY[0x29EDCA390];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v1;
  sub_29E6E4804(0, 0, v6, &unk_29E769A00, v23);
}

uint64_t sub_29E6B6C50()
{
  v1 = v0;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6B665C();

  sub_29E6B7144(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepScoreRoomModel);

  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel);

  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_today;
  v4 = sub_29E754048();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_gregorianCalendar;
  v6 = sub_29E74EE78();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_algorithmVersion;
  v8 = sub_29E74F0D8();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  v9 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler + 8);
  sub_29E6459B8(*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler));
  return v1;
}

uint64_t sub_29E6B6DFC(uint64_t a1)
{
  sub_29E6B6C50();
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6B6E60()
{
  sub_29E7544C8();
  sub_29E7544B8();
  v1 = sub_29E754468();
  v3 = v2;

  return MEMORY[0x2A1C73D28](v0, sub_29E6B6DFC, v1, v3, 0);
}

uint64_t type metadata accessor for SleepScoreRoomModelProvider()
{
  result = qword_2A1859000;
  if (!qword_2A1859000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6B6F48()
{
  sub_29E6B899C(319, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_29E754048();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_29E74EE78();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_29E74F0D8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_29E6B70F0()
{
  result = qword_2A1859010;
  if (!qword_2A1859010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859010);
  }

  return result;
}

uint64_t sub_29E6B7144(uint64_t a1)
{
  sub_29E6B899C(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E6B71BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_29E7544C8();
  *(v4 + 24) = sub_29E7544B8();
  v6 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6B7254, v6, v5);
}

uint64_t sub_29E6B7254()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_29E6B72B8();
  v3 = v0[1];

  return v3();
}

void sub_29E6B72B8()
{
  v1 = v0;
  v88 = *v0;
  v2 = sub_29E74F0D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v87 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29E74EE78();
  v81 = *(v82 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v82);
  v86 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605ADC();
  v80 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v78 = &v73 - v12;
  sub_29E64C90C();
  v79 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v89 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74F118();
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v83 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E754048();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v73 - v25;
  v27 = sub_29E752098();
  v91 = *(v27 - 8);
  v92 = v27;
  v28 = v91[8];
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v33 = &v73 - v32;
  v90 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus;
  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus) - 1 > 1)
  {
    sub_29E752068();

    v41 = sub_29E752088();
    v42 = sub_29E7546C8();

    v74 = v42;
    v43 = v42;
    v44 = v41;
    v45 = os_log_type_enabled(v41, v43);
    v46 = &unk_2A1869000;
    v76 = v2;
    v75 = v3;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v97[0] = v73;
      *v47 = 136446466;
      v48 = sub_29E755178();
      v50 = sub_29E6B9C90(v48, v49, v97);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2080;
      v51 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_today;
      swift_beginAccess();
      (*(v20 + 16))(v26, v1 + v51, v19);
      sub_29E6B8AA4(&qword_2A1856920);
      v52 = sub_29E754FD8();
      v54 = v53;
      (*(v20 + 8))(v26, v19);
      v55 = sub_29E6B9C90(v52, v54, v97);

      *(v47 + 14) = v55;
      v46 = &unk_2A1869000;
      v56 = v44;
      _os_log_impl(&dword_29E5ED000, v44, v74, "[%{public}s] Starting new sleep query for %s", v47, 0x16u);
      v57 = v73;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v57, -1, -1);
      MEMORY[0x29ED98410](v47, -1, -1);
    }

    else
    {
    }

    (v91[1])(v31, v92);
    *(v1 + v90) = 1;
    v58 = v46[124];
    swift_beginAccess();
    v59 = *(v20 + 16);
    v59(v26, v1 + v58, v19);
    v59(v24, v1 + v58, v19);
    sub_29E6B8AA4(&qword_2A1A7BE20);
    if (sub_29E7540E8())
    {
      v60 = v20;
      v61 = *(v20 + 32);
      v62 = v78;
      (v61)(v78, v26, v19);
      v63 = v77;
      v92 = v58;
      v64 = v80;
      (v61)(v62 + *(v80 + 48), v24, v19);
      sub_29E6806A4(v62, v63);
      v65 = *(v64 + 48);
      v91 = v1;
      v66 = v89;
      v61();
      v67 = *(v60 + 8);
      v67(v63 + v65, v19);
      sub_29E6808C8(v62, v63, sub_29E605ADC);
      (v61)(&v66[*(v79 + 36)], v63 + *(v64 + 48), v19);
      v67(v63, v19);
      v68 = v91;
      (*(v81 + 16))(v86, v91 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_gregorianCalendar, v82);
      v93 = 0;
      v94 = 0xE000000000000000;
      sub_29E754D78();
      v95 = v93;
      v96 = v94;
      MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75DEA0);
      v93 = v68;
      sub_29E754E38();
      MEMORY[0x29ED96C20](95, 0xE100000000000000);
      swift_beginAccess();
      v69 = sub_29E753FF8();
      swift_endAccess();
      v93 = v69;
      v70 = sub_29E754FD8();
      MEMORY[0x29ED96C20](v70);

      (*(v75 + 16))(v87, v68 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_algorithmVersion, v76);
      v71 = v83;
      sub_29E74F0F8();

      v72 = sub_29E74F0E8();

      (*(v84 + 8))(v71, v85);
      [*(v68 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_healthStore) executeQuery_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29E752068();
    v34 = sub_29E752088();
    v35 = sub_29E7546C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v97[0] = v37;
      *v36 = 136446210;
      v38 = sub_29E755178();
      v40 = sub_29E6B9C90(v38, v39, v97);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29E5ED000, v34, v35, "[%{public}s] Ignoring observer query update while query is in progress", v36, 0xCu);
      sub_29E5FECBC(v37);
      MEMORY[0x29ED98410](v37, -1, -1);
      MEMORY[0x29ED98410](v36, -1, -1);
    }

    (v91[1])(v33, v92);
    *(v1 + v90) = 2;
  }
}

uint64_t sub_29E6B7D20(void *a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  sub_29E6B899C(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_29E7544F8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_29E7544C8();
  v12 = a2 & 1;
  sub_29E6B8AF4(a1, a2 & 1);

  v13 = sub_29E7544B8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x29EDCA390];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a1;
  *(v14 + 40) = v12;
  *(v14 + 48) = a3;
  *(v14 + 56) = v6;
  sub_29E6E4804(0, 0, v10, &unk_29E769A10, v14);
}

uint64_t sub_29E6B7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 136) = a5;
  *(v7 + 16) = a4;
  v8 = sub_29E74F048();
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = swift_task_alloc();
  sub_29E6B899C(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v13 = sub_29E752098();
  *(v7 + 80) = v13;
  v14 = *(v13 - 8);
  *(v7 + 88) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  sub_29E7544C8();
  *(v7 + 128) = sub_29E7544B8();
  v17 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6B8080, v17, v16);
}

uint64_t sub_29E6B8080()
{
  v106 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 16);

  v4 = *(v0 + 16);
  if (v2)
  {
    v5 = *(v0 + 120);
    sub_29E752068();
    v6 = v3;
    v7 = sub_29E752088();
    v8 = sub_29E7546A8();
    sub_29E6B8B00(v4, 1);
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 120);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    if (v9)
    {
      v13 = *(v0 + 32);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v100 = v12;
      v105 = swift_slowAlloc();
      v16 = v105;
      *v14 = 136446466;
      v17 = sub_29E755178();
      v96 = v10;
      v19 = sub_29E6B9C90(v17, v18, &v105);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      v20 = v3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] Query completed with error: %@", v14, 0x16u);
      sub_29E6B8C64(v15, sub_29E676558);
      MEMORY[0x29ED98410](v15, -1, -1);
      sub_29E5FECBC(v16);
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);

      v22 = *(v11 + 8);
      v22(v96, v100);
    }

    else
    {

      v22 = *(v11 + 8);
      v22(v10, v12);
    }
  }

  else
  {
    v23 = *(v0 + 112);
    sub_29E752068();

    v24 = sub_29E752088();
    v25 = sub_29E7546C8();
    sub_29E6B8B00(v4, 0);
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 112);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    if (v26)
    {
      v31 = *(v0 + 32);
      v30 = *(v0 + 40);
      v101 = *(v0 + 80);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v105 = v33;
      *v32 = 136446466;
      v34 = sub_29E755178();
      v97 = v27;
      v36 = sub_29E6B9C90(v34, v35, &v105);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = MEMORY[0x29ED96D20](v3, v30);
      v39 = sub_29E6B9C90(v37, v38, &v105);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_29E5ED000, v24, v25, "[%{public}s] Query completed successfully: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v33, -1, -1);
      MEMORY[0x29ED98410](v32, -1, -1);

      v22 = *(v28 + 8);
      v22(v97, v101);
    }

    else
    {

      v22 = *(v28 + 8);
      v22(v27, v29);
    }

    v40 = v3[2];
    if (v40)
    {
      v41 = *(v0 + 48);
      v42 = *(v0 + 24);
      v98 = *(v41 + 16);
      v98(*(v0 + 64), v3 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * (v40 - 1), *(v0 + 40));
      v102 = v22;
      if (*(v42 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel))
      {

        v43 = sub_29E74F158();
        v93 = v44;
        v94 = v43;
      }

      else
      {
        v93 = 0;
        v94 = 0;
      }

      v60 = *(v0 + 64);
      v59 = *(v0 + 72);
      v61 = *(v0 + 48);
      v62 = *(v0 + 56);
      v63 = *(v0 + 40);
      v92 = *(v0 + 24);
      v64 = type metadata accessor for SleepScoreRoomModel();
      v65 = (v59 + *(v64 + 24));
      v98(v59, v60, v63);
      v98(v62, v60, v63);
      v66 = v59 + *(v64 + 20);
      sub_29E74F2A8();
      (*(v61 + 8))(v60, v63);
      *v65 = v94;
      v65[1] = v93;
      (*(*(v64 - 8) + 56))(v59, 0, 1, v64);
      sub_29E6B5EAC(v59);
      v22 = v102;
    }

    else
    {
      v45 = *(v0 + 104);
      sub_29E752068();
      v46 = sub_29E752088();
      v47 = sub_29E7546A8();
      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 104);
      v50 = *(v0 + 80);
      v51 = *(v0 + 88);
      if (v48)
      {
        v52 = *(v0 + 32);
        v103 = v22;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v105 = v54;
        *v53 = 136446210;
        v55 = sub_29E755178();
        v57 = sub_29E6B9C90(v55, v56, &v105);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_29E5ED000, v46, v47, "[%{public}s] No summaries found", v53, 0xCu);
        sub_29E5FECBC(v54);
        MEMORY[0x29ED98410](v54, -1, -1);
        v58 = v53;
        v22 = v103;
        MEMORY[0x29ED98410](v58, -1, -1);
      }

      v22(v49, v50);
    }
  }

  v67 = *(v0 + 24);
  v68 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus;
  if (*(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus))
  {
    if (*(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus) == 1)
    {
      *(v67 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus) = 0;
    }

    else
    {
      v69 = *(v0 + 96);
      sub_29E752068();
      v70 = sub_29E752088();
      v71 = sub_29E7546C8();
      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 88);
      v74 = *(v0 + 96);
      v75 = *(v0 + 80);
      if (v72)
      {
        v99 = *(v0 + 96);
        v76 = *(v0 + 32);
        v104 = v22;
        v77 = swift_slowAlloc();
        v95 = v75;
        v78 = swift_slowAlloc();
        v105 = v78;
        *v77 = 136446210;
        v79 = sub_29E755178();
        v81 = sub_29E6B9C90(v79, v80, &v105);

        *(v77 + 4) = v81;
        _os_log_impl(&dword_29E5ED000, v70, v71, "[%{public}s] Restarting query", v77, 0xCu);
        sub_29E5FECBC(v78);
        MEMORY[0x29ED98410](v78, -1, -1);
        MEMORY[0x29ED98410](v77, -1, -1);

        v104(v99, v95);
      }

      else
      {

        v22(v74, v75);
      }

      v82 = *(v0 + 24);
      *(v67 + v68) = 0;
      sub_29E6B72B8();
    }
  }

  v84 = *(v0 + 112);
  v83 = *(v0 + 120);
  v86 = *(v0 + 96);
  v85 = *(v0 + 104);
  v88 = *(v0 + 64);
  v87 = *(v0 + 72);
  v89 = *(v0 + 56);

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_29E6B87EC(uint64_t a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
    sub_29E6B8934();
    v7 = sub_29E754568();
  }

  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;

  v13 = a2;
  v14 = a5;
  v10(v13, v7, sub_29E6B8924, v12, a5);
}

uint64_t sub_29E6B890C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E6B8934()
{
  result = qword_2A1A7D478;
  if (!qword_2A1A7D478)
  {
    sub_29E609B5C(255, &qword_2A1A7D480, 0x29EDBAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D478);
  }

  return result;
}

void sub_29E6B899C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6B89F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29E66A9A0;

  return sub_29E6B71BC(a1, v4, v5, v6);
}

uint64_t sub_29E6B8AA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29E754048();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_29E6B8AF4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_29E6B8B00(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_29E6B8B0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29E605728;

  return sub_29E6B7EB0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29E6B8BE4(uint64_t a1, uint64_t a2)
{
  sub_29E6B899C(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6B8C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id SleepScoreRoomViewController.init(context:)(uint64_t a1)
{
  v3 = sub_29E7513C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v30 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v29 - v8;
  v31 = sub_29E751468();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E7513D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v1;
  *(v1 + qword_2A1859018) = 0;
  sub_29E6CEAB0();
  v29[1] = sub_29E751148();
  (*(v15 + 8))(v18, v14);
  v32 = v4;
  v19 = *(v4 + 16);
  v34 = v3;
  v19(v9, a1, v3);
  result = [objc_opt_self() appleSleepScoreType];
  if (result)
  {
    sub_29E751458();
    v21 = sub_29E751388();
    v22 = [v21 viewControllerFactory];

    v23 = [v22 chartFactory];
    type metadata accessor for SleepScoreOverlayRoomViewController();
    v24 = [objc_allocWithZone(MEMORY[0x29EDC46C0]) initWithProviderClass_];
    [v23 registerInteractiveChartViewControllerProvider:v24 typeIdentifier:*MEMORY[0x29EDBAF10]];

    v25 = v34;
    v19(v30, a1, v34);
    v26 = v31;
    v35[3] = v31;
    v35[4] = MEMORY[0x29EDC2780];
    v27 = sub_29E5FEBF4(v35);
    (*(v10 + 16))(v27, v13, v26);
    v28 = sub_29E751488();
    (*(v32 + 8))(a1, v25);
    (*(v10 + 8))(v13, v26);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E6B90C4(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_2A1859018) = 0;
  result = sub_29E754E48();
  __break(1u);
  return result;
}

Swift::Void __swiftcall SleepScoreRoomViewController.viewDidLoad()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepScoreRoomViewController();
  v17.receiver = v1;
  v17.super_class = v7;
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  sub_29E752048();
  v8 = sub_29E752088();
  v9 = sub_29E7546C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    v12 = sub_29E755178();
    v14 = sub_29E6B9C90(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29E5ED000, v8, v9, "[%{public}s] View did load", v10, 0xCu);
    sub_29E5FECBC(v11);
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_29E6B93B4();
}

uint64_t type metadata accessor for SleepScoreRoomViewController()
{
  result = qword_2A1859020;
  if (!qword_2A1859020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6B93B4()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v5 = sub_29E752088();
  v6 = sub_29E7546C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_29E755178();
    v11 = sub_29E6B9C90(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29E5ED000, v5, v6, "[%{public}s] Reloading widgets", v7, 0xCu);
    sub_29E5FECBC(v8);
    MEMORY[0x29ED98410](v8, -1, -1);
    MEMORY[0x29ED98410](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v12 = [objc_allocWithZone(MEMORY[0x29EDC68D0]) init];
  [v12 reloadWidgetsWithReason_];
}

void sub_29E6B958C(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  SleepScoreRoomViewController.viewDidLoad()();
}

Swift::Void __swiftcall SleepScoreRoomViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepScoreRoomViewController();
  v19.receiver = v2;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1);
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] View did appear", v12, 0xCu);
    sub_29E5FECBC(v13);
    MEMORY[0x29ED98410](v13, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

void sub_29E6B981C(void *a1, uint64_t a2, Swift::Bool a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  SleepScoreRoomViewController.viewDidAppear(_:)(a3);
}

uint64_t sub_29E6B98F4(_BYTE *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1[OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_allowedToAnimate] = 1;
  [a1 setNeedsUpdateConfiguration];
}

uint64_t sub_29E6B99AC(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + qword_2A1859018);
  *(a1 + qword_2A1859018) = 1;
  sub_29E6BA994(v2);
}

uint64_t sub_29E6B9A58(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_29E74EEE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74EEA8();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_29E6BA1B8(v13);

  (*(v8 + 8))(v11, v7);
}

id SleepScoreRoomViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScoreRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6B9C90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29E6B9D5C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29E606008(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29E5FECBC(v11);
  return v7;
}

unint64_t sub_29E6B9D5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29E6B9E68(a5, a6);
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
    result = sub_29E754DD8();
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

uint64_t sub_29E6B9E68(uint64_t a1, unint64_t a2)
{
  v4 = sub_29E6B9EB4(a1, a2);
  sub_29E6B9FE4(&unk_2A24FC078);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29E6B9EB4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29E6BD3DC(v5, 0);
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

  result = sub_29E754DD8();
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
        v10 = sub_29E754318();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29E6BD3DC(v10, 0);
        result = sub_29E754D68();
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

uint64_t sub_29E6B9FE4(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_29E6BA0D0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_29E6BA0D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E6BAA14();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

_BYTE *sub_29E6BA1B8(void *a1)
{
  v3 = sub_29E753CE8();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_29E753D38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v57 = &v44 - v13;
  v14 = sub_29E753D18();
  v56 = *(v14 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E753CF8();
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LatestSleepScoreVisualizationCell(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v23 = *&v1[qword_2A1859018];
    if (v23 == 1)
    {
      result[OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_hasCompletedAnimation] = 1;

      return [result setNeedsUpdateConfiguration];
    }

    else if (!v23)
    {
      v54 = v7;
      v24 = result;
      v52 = qword_2A1859018;
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v65 = sub_29E6BA9A4;
      v66 = v25;
      aBlock = MEMORY[0x29EDCA5F8];
      v62 = 1107296256;
      v53 = v8;
      v50 = &v63;
      v63 = sub_29E6A1514;
      v64 = &unk_2A2501490;
      v48 = _Block_copy(&aBlock);
      v60 = MEMORY[0x29EDCA190];
      v47 = sub_29E6BA9C4(&qword_2A18569F8, MEMORY[0x29EDCA248]);
      sub_29E65A938(0);
      v46 = v26;
      sub_29E6BA9C4(&qword_2A1856A00, sub_29E65A938);
      v49 = v12;
      v51 = a1;
      v27 = v1;
      sub_29E754C58();
      v28 = sub_29E753D68();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v45 = sub_29E753D48();

      v48 = sub_29E602DD4();
      v31 = sub_29E754908();
      v32 = swift_allocObject();
      *(v32 + 16) = v1;
      v65 = sub_29E6BAA0C;
      v66 = v32;
      aBlock = MEMORY[0x29EDCA5F8];
      v62 = 1107296256;
      v63 = sub_29E6A1514;
      v64 = &unk_2A25014E0;
      v33 = _Block_copy(&aBlock);
      v34 = v1;
      sub_29E753D08();
      v60 = MEMORY[0x29EDCA190];
      sub_29E754C58();
      v35 = v45;
      sub_29E753D58();
      _Block_release(v33);

      (*(v55 + 8))(v21, v18);
      (*(v56 + 8))(v17, v14);

      v36 = *&v1[v52];
      *&v27[v52] = v35;

      sub_29E6BA994(v36);
      v37 = sub_29E754908();
      v38 = v49;
      sub_29E753D28();
      *v6 = 200;
      v40 = v58;
      v39 = v59;
      (*(v58 + 104))(v6, *MEMORY[0x29EDCA230], v59);
      v41 = v57;
      MEMORY[0x29ED966A0](v38, v6);
      (*(v40 + 8))(v6, v39);
      v42 = v54;
      v43 = *(v53 + 8);
      v43(v38, v54);
      sub_29E7548C8();

      return (v43)(v41, v42);
    }
  }

  return result;
}

uint64_t sub_29E6BA890(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29E6BA8B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E6BA908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_29E6BA964(void *result, int a2)
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

unint64_t sub_29E6BA994(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_29E6BA9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6BA9C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6BAA14()
{
  if (!qword_2A18590B0)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18590B0);
    }
  }
}

uint64_t sub_29E6BAA90(char a1)
{
  if (a1 == 1)
  {
    goto LABEL_6;
  }

  v2 = sub_29E755028();

  if ((v2 & 1) == 0)
  {
    if (a1)
    {
      v3 = sub_29E755028();
LABEL_7:

      return v3 & 1;
    }

LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_29E6BAC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v58[0] = 0x656D614E74736574;
  *(&v58[0] + 1) = 0xE800000000000000;
  sub_29E754D08();
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_105;
  }

  v4 = sub_29E68AB20(v57);
  if ((v5 & 1) == 0)
  {
LABEL_105:
    __break(1u);
LABEL_106:

    goto LABEL_26;
  }

  sub_29E606008(*(a1 + 56) + 32 * v4, v56);
  sub_29E68CE9C(v57);
  sub_29E61FF28(v56, v58);
  swift_dynamicCast();
  *a2 = v54;
  *(a2 + 8) = v55;
  *&v56[0] = 0x6F69746172657469;
  *(&v56[0] + 1) = 0xEA0000000000736ELL;
  sub_29E754D08();
  if (!*(a1 + 16) || (v6 = sub_29E68AB20(v57), (v7 & 1) == 0))
  {
    sub_29E68CE9C(v57);
    goto LABEL_26;
  }

  sub_29E606008(*(a1 + 56) + 32 * v6, v58);
  sub_29E68CE9C(v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v19 = 0;
    v20 = 1;
    goto LABEL_27;
  }

  result = *(&v56[0] + 1);
  v9 = HIBYTE(*(&v56[0] + 1)) & 0xFLL;
  v10 = *&v56[0] & 0xFFFFFFFFFFFFLL;
  if ((*(&v56[0] + 1) & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(*(&v56[0] + 1)) & 0xFLL;
  }

  else
  {
    v11 = *&v56[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_106;
  }

  if ((*(&v56[0] + 1) & 0x1000000000000000) == 0)
  {
    if ((*(&v56[0] + 1) & 0x2000000000000000) != 0)
    {
      v57[0] = *&v56[0];
      v57[1] = *(&v56[0] + 1) & 0xFFFFFFFFFFFFFFLL;
      if (LOBYTE(v56[0]) == 43)
      {
        if (v9)
        {
          v12 = (v9 - 1);
          if (v9 != 1)
          {
            v15 = 0;
            v44 = v57 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                break;
              }

              v46 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                break;
              }

              ++v44;
              if (!--v12)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_99;
        }

LABEL_112:
        __break(1u);
        return result;
      }

      if (LOBYTE(v56[0]) != 45)
      {
        if (v9)
        {
          v15 = 0;
          v49 = v57;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              break;
            }

            v51 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              break;
            }

            ++v49;
            if (!--v9)
            {
LABEL_98:
              LOBYTE(v12) = 0;
              goto LABEL_100;
            }
          }
        }

        goto LABEL_99;
      }

      if (v9)
      {
        v12 = (v9 - 1);
        if (v9 != 1)
        {
          v15 = 0;
          v37 = v57 + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v39 - v38;
            if (__OFSUB__(v39, v38))
            {
              break;
            }

            ++v37;
            if (!--v12)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_99;
      }
    }

    else
    {
      if ((*&v56[0] & 0x1000000000000000) != 0)
      {
        v12 = ((*(&v56[0] + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v53 = *(&v56[0] + 1);
        v12 = sub_29E754DD8();
        result = v53;
      }

      v13 = *v12;
      if (v13 == 43)
      {
        if (v10 >= 1)
        {
          v40 = v10 - 1;
          if (v10 != 1)
          {
            v15 = 0;
            if (v12)
            {
              v41 = v12 + 1;
              while (1)
              {
                v42 = *v41 - 48;
                if (v42 > 9)
                {
                  goto LABEL_99;
                }

                v43 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  goto LABEL_99;
                }

                v15 = v43 + v42;
                if (__OFADD__(v43, v42))
                {
                  goto LABEL_99;
                }

                ++v41;
                if (!--v40)
                {
                  goto LABEL_98;
                }
              }
            }

            goto LABEL_100;
          }

          goto LABEL_99;
        }

        goto LABEL_111;
      }

      if (v13 != 45)
      {
        if (v10)
        {
          v15 = 0;
          if (v12)
          {
            while (1)
            {
              v47 = *v12 - 48;
              if (v47 > 9)
              {
                goto LABEL_99;
              }

              v48 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_99;
              }

              v15 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                goto LABEL_99;
              }

              ++v12;
              if (!--v10)
              {
                goto LABEL_98;
              }
            }
          }

          goto LABEL_100;
        }

LABEL_99:
        v15 = 0;
        LOBYTE(v12) = 1;
        goto LABEL_100;
      }

      if (v10 >= 1)
      {
        v14 = v10 - 1;
        if (v10 != 1)
        {
          v15 = 0;
          if (v12)
          {
            v16 = v12 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_99;
              }

              v18 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_99;
              }

              v15 = v18 - v17;
              if (__OFSUB__(v18, v17))
              {
                goto LABEL_99;
              }

              ++v16;
              if (!--v14)
              {
                goto LABEL_98;
              }
            }
          }

LABEL_100:
          LOBYTE(v58[0]) = v12;
          v20 = v12;
          goto LABEL_101;
        }

        goto LABEL_99;
      }

      __break(1u);
    }

    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v15 = sub_29E6BD468(*&v56[0], *(&v56[0] + 1), 10);
  v20 = v52;
LABEL_101:

  if (v20)
  {
    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

LABEL_27:
  *(a2 + 16) = v19;
  *(a2 + 24) = v20 & 1;
  *&v56[0] = 0x65446C6C6F726373;
  *(&v56[0] + 1) = 0xEB0000000061746CLL;
  sub_29E754D08();
  if (!*(a1 + 16) || (v21 = sub_29E68AB20(v57), (v22 & 1) == 0))
  {
    sub_29E68CE9C(v57);
LABEL_33:
    *(a2 + 32) = 0;
    v25 = 1;
    goto LABEL_34;
  }

  sub_29E606008(*(a1 + 56) + 32 * v21, v58);
  sub_29E68CE9C(v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v23 = sub_29E6BB470(*&v56[0], *(&v56[0] + 1));
  if (v24)
  {
    goto LABEL_33;
  }

  v25 = 0;
  *(a2 + 32) = v23;
LABEL_34:
  *(a2 + 40) = v25;
  *&v56[0] = 0x7061636552657375;
  *(&v56[0] + 1) = 0xE800000000000000;
  sub_29E754D08();
  if (!*(a1 + 16) || (v26 = sub_29E68AB20(v57), (v27 & 1) == 0))
  {
    sub_29E68CE9C(v57);
    goto LABEL_40;
  }

  sub_29E606008(*(a1 + 56) + 32 * v26, v58);
  sub_29E68CE9C(v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    *(a2 + *(type metadata accessor for TestOptions() + 32)) = 0;
    goto LABEL_41;
  }

  if (v56[0] == __PAIR128__(0xE300000000000000, 5457241))
  {

    v28 = 1;
  }

  else
  {
    v28 = sub_29E755028();
  }

  *(a2 + *(type metadata accessor for TestOptions() + 32)) = v28 & 1;
LABEL_41:
  *&v56[0] = 0x72556F5468737570;
  *(&v56[0] + 1) = 0xE90000000000006CLL;
  sub_29E754D08();
  if (!*(a1 + 16) || (v29 = sub_29E68AB20(v57), (v30 & 1) == 0))
  {
    sub_29E68CE9C(v57);
    goto LABEL_46;
  }

  sub_29E606008(*(a1 + 56) + 32 * v29, v58);
  sub_29E68CE9C(v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    v32 = *(type metadata accessor for TestOptions() + 28);
    v33 = sub_29E74EAF8();
    (*(*(v33 - 8) + 56))(a2 + v32, 1, 1, v33);
    goto LABEL_47;
  }

  v31 = a2 + *(type metadata accessor for TestOptions() + 28);
  sub_29E74EAE8();

LABEL_47:
  *&v56[0] = 0xD000000000000014;
  *(&v56[0] + 1) = 0x800000029E75E360;
  sub_29E754D08();
  if (!*(a1 + 16) || (v34 = sub_29E68AB20(v57), (v35 & 1) == 0))
  {

    sub_29E68CE9C(v57);
    goto LABEL_53;
  }

  sub_29E606008(*(a1 + 56) + 32 * v34, v58);
  sub_29E68CE9C(v57);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_53:
    result = type metadata accessor for TestOptions();
    *(a2 + *(result + 36)) = 0;
    return result;
  }

  if (v56[0] == __PAIR128__(0xE300000000000000, 5457241))
  {

    v36 = 1;
  }

  else
  {
    v36 = sub_29E755028();
  }

  result = type metadata accessor for TestOptions();
  *(a2 + *(result + 36)) = v36 & 1;
  return result;
}