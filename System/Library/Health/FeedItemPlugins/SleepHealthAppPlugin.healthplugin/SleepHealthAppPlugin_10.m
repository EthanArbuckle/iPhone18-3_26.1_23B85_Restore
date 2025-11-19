void sub_29E70A200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E609CF8(255, &qword_2A1858F40);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E70A278(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_29E70A2E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E70A278(255, a3, &qword_2A185A3B0, 0x29EDBAA60, a4);
    v5 = sub_29E754FE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E70A358(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E70A278(255, a3, &qword_2A185A3E8, 0x29EDBAD10, a4);
    v5 = sub_29E754FE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E70A3C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E70A42C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_29E70A474(void *a1, void *a2)
{
  v4 = sub_29E74ED28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v28 - v10;
  v12 = [a1 endDate];
  sub_29E74ECD8();

  v13 = [a1 startDate];
  sub_29E74ECD8();

  sub_29E74EC88();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  v17 = [a2 endDate];
  sub_29E74ECD8();

  v18 = [a2 startDate];
  sub_29E74ECD8();

  sub_29E74EC88();
  v20 = v19;
  v16(v9, v4);
  v16(v11, v4);
  if (v15 == v20)
  {
    v21 = [a1 quantity];
    [v21 _value];
    v23 = v22;

    v24 = [a2 quantity];
    [v24 _value];
    v26 = v25;

    if (v26 >= v23)
    {
      return a1;
    }

    else
    {
      return a2;
    }
  }

  else if (v20 >= v15)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void sub_29E70A6D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E70A728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  return v1;
}

char *sub_29E70A79C(void *a1, void *a2)
{
  v3 = v2;
  v68 = a2;
  v70 = a1;
  sub_29E70EB04(0, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v76 = &v66 - v6;
  sub_29E70E8EC();
  v77 = v7;
  v78 = *(v7 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E70E9F0();
  v79 = v10;
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v75 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_cancellables] = MEMORY[0x29EDCA1A0];
  v13 = *MEMORY[0x29EDC6870];
  v14 = sub_29E7541D8();
  v67 = v14;
  v16 = v15;
  v17 = *MEMORY[0x29EDC6810];
  v18 = sub_29E7541D8();
  v71 = v18;
  v20 = v19;
  sub_29E70EB04(0, &qword_2A18586C8, sub_29E68FBF4, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F40;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v22 = MEMORY[0x29EDC9A98];
  *(inited + 48) = 0;
  *(inited + 72) = v22;
  *(inited + 80) = v18;
  v69 = v20;
  *(inited + 88) = v20;
  *(inited + 120) = v22;
  *(inited + 96) = 0;
  v23 = v13;
  v73 = v17;

  sub_29E68B200(inited);
  swift_setDeallocating();
  sub_29E68FBF4();
  swift_arrayDestroy();
  v24 = sub_29E754068();

  v25 = v68;
  [v68 registerDefaults_];

  swift_beginAccess();
  LOBYTE(v81) = 0;
  sub_29E752868();
  swift_endAccess();
  v26 = v70;
  *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore] = v70;
  v27 = type metadata accessor for UserDefaultsBooleanObserver();
  v28 = objc_allocWithZone(v27);
  v29 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange;
  v72 = MEMORY[0x29EDB8A48];
  sub_29E70EC58(0, &qword_2A1A7D4E8, MEMORY[0x29EDB8A48]);
  v31 = v30;
  v32 = *(v30 + 48);
  v33 = *(v30 + 52);
  swift_allocObject();
  v70 = v26;
  v34 = v25;
  *&v28[v29] = sub_29E752778();
  *&v28[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext] = 0;
  *&v28[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults] = v34;
  v35 = &v28[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
  *v35 = v67;
  v35[1] = v16;
  v84.receiver = v28;
  v84.super_class = v27;
  v36 = v34;
  v37 = objc_msgSendSuper2(&v84, sel_init);
  v38 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext;
  v39 = v37;
  [v36 addObserver:v39 forKeyPath:v23 options:0 context:&v37[v38]];

  *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver] = v39;
  v40 = objc_allocWithZone(v27);
  v41 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange;
  v42 = *(v31 + 48);
  v43 = *(v31 + 52);
  swift_allocObject();
  v44 = v36;
  *&v40[v41] = sub_29E752778();
  *&v40[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext] = 0;
  *&v40[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults] = v44;
  v45 = &v40[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
  v46 = v69;
  *v45 = v71;
  v45[1] = v46;
  v83.receiver = v40;
  v83.super_class = v27;
  v47 = v44;
  v48 = objc_msgSendSuper2(&v83, sel_init);
  v49 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext;
  v50 = v48;
  v51 = &v48[v49];
  v52 = v73;
  [v47 addObserver:v50 forKeyPath:v73 options:0 context:v51];

  *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userVisitedSleepActivityConfigurationObserver] = v50;
  v53 = type metadata accessor for SleepFocusPromotionStore(0);
  v82.receiver = v3;
  v82.super_class = v53;
  v54 = objc_msgSendSuper2(&v82, sel_init);
  LOBYTE(v52) = sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v85) = v52 & 1;
  v55 = v54;
  sub_29E752898();
  v56 = v70;
  [v70 addObserver_];
  v85 = *(*&v55[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver] + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange);
  sub_29E70E9AC(&qword_2A1A7D4F0, &qword_2A1A7D4E8, v72);
  v85 = sub_29E7528E8();
  v81 = *(*&v55[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userVisitedSleepActivityConfigurationObserver] + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange);
  v81 = sub_29E7528E8();
  v57 = MEMORY[0x29EDB89F8];
  sub_29E70EC58(0, &qword_2A1A7BF70, MEMORY[0x29EDB89F8]);
  sub_29E70E9AC(&qword_2A1A7BF80, &qword_2A1A7BF70, v57);
  v58 = v74;
  sub_29E752678();
  v59 = [objc_opt_self() mainRunLoop];
  v85 = v59;
  v60 = sub_29E754BB8();
  v61 = v76;
  (*(*(v60 - 8) + 56))(v76, 1, 1, v60);
  sub_29E609B5C(0, &unk_2A1A7D420, 0x29EDB8E48);
  sub_29E70EABC(&unk_2A185A4E8, sub_29E70E8EC);
  sub_29E6A0F24();
  v62 = v75;
  v63 = v77;
  sub_29E752968();
  sub_29E6D65D0(v61);

  (*(v78 + 8))(v58, v63);
  *(swift_allocObject() + 16) = v55;
  sub_29E70EABC(&qword_2A185A4F8, sub_29E70E9F0);
  v64 = v79;
  sub_29E7529A8();

  (*(v80 + 8))(v62, v64);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  return v55;
}

uint64_t sub_29E70B124(uint64_t a1, void *a2)
{
  sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  return sub_29E752898();
}

uint64_t sub_29E70B19C()
{
  v10[1] = *MEMORY[0x29EDCA608];
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore);
  if (![v1 hasSleepFocusMode])
  {
    goto LABEL_6;
  }

  v10[0] = 0;
  v2 = [v1 currentSleepEventRecordWithError_];
  if (!v2)
  {
    v7 = v10[0];
    v8 = sub_29E74EA48();

    swift_willThrow();
    goto LABEL_6;
  }

  v3 = v2;
  v4 = v10[0];
  v5 = [v3 isConsolidatedSleepCoachingOnboardingCompleted];

  if ((v5 & 1) == 0)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = 1;
LABEL_7:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29E70B294()
{
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver];
  v2 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v3 = (v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key);
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_29E754198();
  [v2 setBool:0 forKey:v6];

  v7 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userVisitedSleepActivityConfigurationObserver];
  v8 = *(v7 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v9 = (v7 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key);
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_29E754198();
  [v8 setBool:0 forKey:v12];

  sub_29E70B3A8();
  sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v0;
  return sub_29E752898();
}

void sub_29E70B3A8()
{
  v10[7] = *MEMORY[0x29EDCA608];
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore);
  if ([v1 hasSleepFocusMode])
  {
    v10[0] = 0;
    v2 = [v1 currentSleepEventRecordWithError_];
    if (v2)
    {
      v3 = v2;
      v4 = v10[0];
      v5 = [v3 isConsolidatedSleepCoachingOnboardingCompleted];

      if (v5)
      {
        v10[4] = nullsub_1;
        v10[5] = 0;
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1107296256;
        v10[2] = sub_29E5FE860;
        v10[3] = &unk_2A2502B90;
        v6 = _Block_copy(v10);
        [v1 configureSleepFocusWithState:1 completion:v6];
        _Block_release(v6);
      }
    }

    else
    {
      v7 = v10[0];
      v8 = sub_29E74EA48();

      swift_willThrow();
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29E70B51C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver);
  v2 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v3 = (v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key);
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_29E754198();
  LOBYTE(v2) = [v2 BOOLForKey_];

  if (v2)
  {
    return 0;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore) sleepFocusConfiguration];
  if (![v7 hasSleepFocusMode])
  {

    return 0;
  }

  if (sub_29E70B19C())
  {
    v8 = [v7 state];

    return v8 == 1;
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userVisitedSleepActivityConfigurationObserver);
    v11 = *(v10 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
    v12 = (v10 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key);
    v13 = *v12;
    v14 = v12[1];
    v15 = sub_29E754198();
    LODWORD(v11) = [v11 BOOLForKey_];

    return v11 ^ 1;
  }
}

void sub_29E70B794()
{
  sub_29E70F2B0(319, &qword_2A185A450, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E70B974()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E38();
  v5 = sub_29E750E68();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E70BAA4()
{
  type metadata accessor for SleepFocusPromotionCell();
  sub_29E70EABC(&unk_2A185A500, type metadata accessor for SleepFocusPromotionCell);
  return sub_29E7547D8();
}

id sub_29E70BB14()
{
  v1 = sub_29E74F7B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_29E74EAF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = v0[1];
  v18 = *v0;
  v19 = v11;
  v20 = v0[2];
  v21 = *(v0 + 6);
  result = HKSPSleepFocusConfigurationURL();
  if (result)
  {
    v13 = result;
    sub_29E74EAD8();

    sub_29E74F7A8();
    v14 = swift_allocObject();
    v15 = v19;
    *(v14 + 16) = v18;
    *(v14 + 32) = v15;
    *(v14 + 48) = v20;
    *(v14 + 64) = v21;
    sub_29E70F278(&v18, v17);
    sub_29E74F798();

    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_29E70BD18()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_29E70BD48(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_29E70BDA0(uint64_t a1)
{
  v2 = sub_29E70F52C();

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29E70BDEC(uint64_t a1, void **a2)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = *(*a2 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_sleepStore);
  if ([v3 hasSleepFocusMode])
  {
    v18[0] = 0;
    v4 = [v3 currentSleepEventRecordWithError_];
    if (v4)
    {
      v5 = v4;
      v6 = v18[0];
      v7 = [v5 isConsolidatedSleepCoachingOnboardingCompleted];

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = v18[0];
      v9 = sub_29E74EA48();

      swift_willThrow();
    }
  }

  v10 = *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver];
  v11 = *(v10 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v12 = (v10 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key);
  v13 = *v12;
  v14 = v12[1];
  v15 = sub_29E754198();
  [v11 setBool:1 forKey:v15];

  LOBYTE(v11) = sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v18[0]) = v11 & 1;
  v16 = v2;
  sub_29E752898();
LABEL_7:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29E70BF7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item;
  swift_beginAccess();
  sub_29E61973C(a1, v1 + v3);
  swift_endAccess();
  sub_29E70F1EC(v1 + v3, v24, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  if (v25)
  {
    sub_29E609CF8(0, &qword_2A1858310);
    if (swift_dynamicCast())
    {
      v4 = v19[0];
      v5 = v19[1];
      v6 = v19[2];
      v7 = v20;
      v8 = v21;
      v9 = v22;
      v10 = v23;
      v11 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView);
      v20 = &type metadata for SleepFocusPromotionItem;
      v21 = &off_2A2502B00;
      v12 = swift_allocObject();
      v19[0] = v12;
      v12[2] = v4;
      v12[3] = v5;
      v12[4] = v6;
      v12[5] = v7;
      v12[6] = v8;
      v12[7] = v9;
      v12[8] = v10;
      v13 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate;
      swift_beginAccess();

      v14 = v4;

      sub_29E70F3DC(v19, v11 + v13);
      swift_endAccess();
      sub_29E70E4E4(v9, v10);
    }

    v15 = MEMORY[0x29EDC1910];
    v16 = a1;
  }

  else
  {
    v17 = MEMORY[0x29EDC1910];
    sub_29E70F36C(a1, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    v16 = v24;
    v15 = v17;
  }

  return sub_29E70F36C(v16, &qword_2A1856AD0, &qword_2A1858310, v15);
}

void (*sub_29E70C184(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item;
  *(v3 + 96) = v1;
  *(v3 + 104) = v4;
  swift_beginAccess();
  return sub_29E70C20C;
}

void sub_29E70C20C(void ***a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29E70F1EC(v3[13] + v3[12], (v3 + 7), &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    if (v3[10])
    {
      sub_29E609CF8(0, &qword_2A1858310);
      if (swift_dynamicCast())
      {
        v4 = *v3;
        v5 = v3[1];
        v6 = v3[2];
        v7 = v3[3];
        v8 = v3[4];
        v9 = v3[5];
        v10 = v3[6];
        v11 = *(v3[12] + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView);
        v3[3] = &type metadata for SleepFocusPromotionItem;
        v3[4] = &off_2A2502B00;
        v12 = swift_allocObject();
        *v3 = v12;
        v12[2] = v4;
        v12[3] = v5;
        v12[4] = v6;
        v12[5] = v7;
        v12[6] = v8;
        v12[7] = v9;
        v12[8] = v10;
        v13 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate;
        swift_beginAccess();

        v14 = v4;

        sub_29E70F3DC(v3, v11 + v13);
        swift_endAccess();
        sub_29E70E4E4(v9, v10);
      }
    }

    else
    {
      sub_29E70F36C((v3 + 7), &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    }
  }

  free(v3);
}

char *sub_29E70C3CC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView;
  type metadata accessor for SleepFocusPromotionView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for SleepFocusPromotionCell();
  v11 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  sub_29E70F2B0(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E764160;
  v14 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView;
  v15 = *&v11[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView];
  *(v13 + 32) = v15;
  v16 = v15;
  sub_29E754AE8();

  v17 = *&v11[v14];
  v18 = [v11 contentView];

  sub_29E754AF8();

  return v11;
}

void sub_29E70C690()
{
  sub_29E70F36C(v0 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView);
}

id sub_29E70C700(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E70C7C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item;
  swift_beginAccess();
  return sub_29E70F1EC(v1 + v3, a1, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
}

void (*sub_29E70C83C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E70C184(v2);
  return sub_29E688830;
}

char *sub_29E70C8DC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_imageView] = v10;
  sub_29E609B5C(0, &qword_2A185A568, 0x29EDC7B38);
  v11 = *MEMORY[0x29EDC80E0];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel] = sub_29E754B48();
  v12 = *MEMORY[0x29EDC8118];
  LOBYTE(v33) = 1;
  LOBYTE(v32) = 1;
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel] = sub_29E754B48();
  v13 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_separatorView] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x29EDC7958]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton] = v14;
  v15 = [objc_allocWithZone(MEMORY[0x29EDC7958]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton] = v15;
  v34.receiver = v4;
  v34.super_class = type metadata accessor for SleepFocusPromotionView();
  v16 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E70F2B0(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E76BA00;
  v18 = *&v16[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_imageView];
  *(v17 + 32) = v18;
  v19 = *&v16[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel];
  *(v17 + 40) = v19;
  v20 = *&v16[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel];
  *(v17 + 48) = v20;
  v21 = *&v16[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_separatorView];
  *(v17 + 56) = v21;
  v22 = *&v16[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton];
  *(v17 + 64) = v22;
  v23 = *&v16[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton];
  *(v17 + 72) = v23;
  v24 = v16;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  sub_29E754AE8();

  sub_29E70CDA4();
  sub_29E70D724();

  return v24;
}

uint64_t sub_29E70CBEC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, double, double, double, double))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v14 = a8(isCurrentExecutor, a1, a2, a3, a4);

  return v14;
}

void sub_29E70CDA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_imageView);
  [v2 setContentMode_];
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A7FA18;
  v4 = sub_29E754198();
  v58 = objc_opt_self();
  v5 = [v58 imageNamed:v4 inBundle:v3];

  [v2 setImage_];
  LODWORD(v6) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v7];
  v8 = [objc_allocWithZone(MEMORY[0x29EDC7688]) init];
  LODWORD(v9) = 1036831949;
  [v8 setHyphenationFactor_];
  sub_29E70EB04(0, &qword_2A185A540, sub_29E70F300, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  v11 = *MEMORY[0x29EDC7650];
  *(inited + 32) = *MEMORY[0x29EDC7650];
  *(inited + 64) = sub_29E609B5C(0, &unk_2A185A550, 0x29EDC7688);
  *(inited + 40) = v8;
  v12 = v11;
  v59 = v8;
  sub_29E68B430(inited);
  swift_setDeallocating();
  sub_29E68C50C(inited + 32);
  v13 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel);
  sub_29E74E9D8();
  v14 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v15 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70EABC(&qword_2A1856640, type metadata accessor for Key);
  v16 = sub_29E754068();
  v17 = [v14 initWithString:v15 attributes:{v16, 0xE000000000000000}];

  [v13 setAttributedText_];
  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  [v13 setTextColor_];

  sub_29E609B5C(0, &qword_2A185A560, 0x29EDC76B0);
  LOBYTE(v55) = 1;
  v57 = *MEMORY[0x29EDC80E0];
  v20 = sub_29E754AB8();
  [v13 setFont_];

  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];
  LODWORD(v21) = 1132068864;
  [v13 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1132068864;
  [v13 setContentHuggingPriority:0 forAxis:v22];
  v23 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel);
  sub_29E74E9D8();
  v24 = sub_29E754198();

  [v23 setText_];

  v25 = [v18 secondaryLabelColor];
  [v23 setTextColor_];

  [v23 setNumberOfLines_];
  v26 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_separatorView);
  v27 = [v18 separatorColor];
  [v26 setBackgroundColor_];

  sub_29E74E9D8();
  v28 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v29 = sub_29E754198();

  v30 = sub_29E754068();

  v31 = [v28 initWithString:v29 attributes:{v30, 0xE000000000000000}];

  v32 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton);
  [v32 setAttributedTitle:v31 forState:0];
  v33 = [v32 titleLabel];
  if (v33)
  {
    v34 = v33;
    LOBYTE(v56) = 1;
    v35 = sub_29E754AB8();
    [v34 setFont_];
  }

  v36 = [v32 titleLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setAdjustsFontForContentSizeCategory_];
  }

  v38 = [v32 titleLabel];
  [v38 &selRef_maxYValue];

  v39 = [v32 titleLabel];
  [v39 setLineBreakMode_];

  v40 = [v18 systemBlueColor];
  [v32 setTitleColor:v40 forState:0];

  [v32 addTarget:v1 action:sel_actionTapped forControlEvents:64];
  [v32 setContentHorizontalAlignment_];
  v41 = *MEMORY[0x29EDC8118];
  v42 = *MEMORY[0x29EDC76E0];
  LOBYTE(v56) = 0;
  v43 = sub_29E754AB8();
  v44 = [objc_opt_self() configurationWithFont_];

  v45 = v44;
  v46 = sub_29E754198();
  v47 = [v58 systemImageNamed:v46 withConfiguration:v45];

  v48 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton);
  [v48 setImage:v47 forState:0];
  v49 = [v18 quaternaryLabelColor];
  [v48 setTintColor_];

  [v48 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  [v48 addTarget:v1 action:sel_dismissTapped forControlEvents:64];
  v50 = [v48 imageView];
  if (v50)
  {
    v52 = v50;
    [v50 setContentMode_];
  }

  LODWORD(v51) = 1148846080;
  [v48 setContentCompressionResistancePriority:0 forAxis:v51];
  LODWORD(v53) = 1148846080;
  [v48 setContentHuggingPriority:0 forAxis:v53];
  LODWORD(v54) = 1148846080;
  [v48 setContentHuggingPriority:1 forAxis:v54];
  [v48 setContentVerticalAlignment_];
}

void sub_29E70D724()
{
  [v0 setLayoutMargins_];
  v1 = [v0 layoutMarginsGuide];
  v64 = objc_opt_self();
  sub_29E70F2B0(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E76BA10;
  v3 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_imageView];
  v4 = [v3 widthAnchor];
  v5 = [v4 constraintEqualToConstant_];

  *(v2 + 32) = v5;
  v6 = [v3 topAnchor];
  v7 = [v1 &selRef_sleepCloudKitSync];
  v8 = [v6 constraintEqualToAnchor_];

  *(v2 + 40) = v8;
  v9 = [v3 leadingAnchor];
  v10 = [v1 &selRef_init + 1];
  v11 = [v9 &selRef_mainRunLoop + 5];

  *(v2 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton];
  v13 = [v12 &selRef_sleepCloudKitSync];
  v14 = [v1 &selRef_sleepCloudKitSync];
  v15 = [v13 &selRef_mainRunLoop + 5];

  *(v2 + 56) = v15;
  v16 = [v12 trailingAnchor];
  v17 = [v1 &selRef_initWithFeatureAvailabilityProviding_healthDataSource_currentCountryCode_ + 4];
  v18 = [v16 &selRef_mainRunLoop + 5];

  *(v2 + 64) = v18;
  v19 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel];
  v20 = [v19 &selRef_sleepCloudKitSync];
  v21 = [v1 &selRef_sleepCloudKitSync];
  v22 = [v20 &selRef_mainRunLoop + 5];

  *(v2 + 72) = v22;
  v23 = [v19 leadingAnchor];
  v24 = [v3 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:11.0];

  *(v2 + 80) = v25;
  v26 = [v19 trailingAnchor];
  v27 = [v12 leadingAnchor];
  v28 = [v26 0x29F371F7ELL];

  *(v2 + 88) = v28;
  v29 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel];
  v30 = [v29 topAnchor];
  v31 = [v19 bottomAnchor];
  v32 = [v30 0x29F371F7ELL];

  *(v2 + 96) = v32;
  v33 = [v29 leadingAnchor];
  v34 = [v19 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v2 + 104) = v35;
  v36 = [v29 trailingAnchor];
  v37 = [v1 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v2 + 112) = v38;
  v39 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_separatorView];
  v40 = [v39 heightAnchor];
  HKUIOnePixel();
  v41 = [v40 constraintEqualToConstant_];

  *(v2 + 120) = v41;
  v42 = [v39 topAnchor];
  v43 = [v29 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:11.0];

  *(v2 + 128) = v44;
  v45 = [v39 leadingAnchor];
  v46 = [v19 leadingAnchor];
  v47 = [v45 &selRef_mainRunLoop + 5];

  *(v2 + 136) = v47;
  v48 = [v39 trailingAnchor];
  v49 = [v0 trailingAnchor];
  v50 = [v48 &selRef_mainRunLoop + 5];

  *(v2 + 144) = v50;
  v51 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton];
  v52 = [v51 topAnchor];
  v53 = [v39 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:5.0];

  *(v2 + 152) = v54;
  v55 = [v51 lastBaselineAnchor];
  v56 = [v0 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-15.0];

  *(v2 + 160) = v57;
  v58 = [v51 leadingAnchor];
  v59 = [v19 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v2 + 168) = v60;
  v61 = [v51 trailingAnchor];
  v62 = [v19 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v2 + 176) = v63;
  sub_29E609B5C(0, &qword_2A185AC70, 0x29EDBA008);
  v65 = sub_29E7543D8();

  [v64 activateConstraints_];
}

uint64_t sub_29E70DFB0()
{
  v1 = sub_29E74F7B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_29E74EAF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate;
  swift_beginAccess();
  sub_29E70F1EC(v0 + v11, v23, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  if (!v24)
  {
    return sub_29E70F36C(v23, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  }

  sub_29E602E20(v23, v22);
  sub_29E70F36C(v23, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  v12 = sub_29E601938(v22, v22[3]);
  v14 = *(v12 + 1);
  v13 = *(v12 + 2);
  v15 = *v12;
  v28 = v12[6];
  v26 = v14;
  v27 = v13;
  v25 = v15;
  v16 = HKSPSleepFocusConfigurationURL();
  if (v16)
  {
    v17 = v16;
    sub_29E74EAD8();

    sub_29E74F7A8();
    v18 = swift_allocObject();
    v19 = v26;
    *(v18 + 16) = v25;
    *(v18 + 32) = v19;
    *(v18 + 48) = v27;
    *(v18 + 64) = v28;
    sub_29E70F278(&v25, v21);
    sub_29E74F798();

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
  }

  return sub_29E5FECBC(v22);
}

uint64_t sub_29E70E284()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_delegate;
  swift_beginAccess();
  sub_29E70F1EC(v0 + v1, v13, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  if (!v14)
  {
    return sub_29E70F36C(v13, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  }

  sub_29E602E20(v13, v12);
  sub_29E70F36C(v13, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate);
  v2 = sub_29E601938(v12, v12[3]);
  v3 = *v2;
  v4 = *(*v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepFocusPromotionStore_userDismissedPromotionObserver);
  v5 = *(v4 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v6 = (v4 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key);
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_29E754198();
  [v5 setBool:1 forKey:v9];

  sub_29E70B51C();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;
  sub_29E752898();
  return sub_29E5FECBC(v12);
}

void sub_29E70E418(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E70E4E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = sub_29E754198();
    [v3 setAccessibilityIdentifier_];

    v5 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel];

    MEMORY[0x29ED96C20](0x6554656C7469542ELL, 0xEA00000000007478);
    v6 = sub_29E754198();

    [v5 setAccessibilityIdentifier_];

    v7 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel];

    MEMORY[0x29ED96C20](0x78655479646F422ELL, 0xE900000000000074);
    v8 = sub_29E754198();

    [v7 setAccessibilityIdentifier_];

    v9 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton];

    MEMORY[0x29ED96C20](0x426E6F697463412ELL, 0xED00006E6F747475);
    v10 = sub_29E754198();

    [v9 setAccessibilityIdentifier_];

    v11 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton];

    MEMORY[0x29ED96C20](0x7373696D7369442ELL, 0xEE006E6F74747542);
    v13 = sub_29E754198();

    [v11 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_titleLabel] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_bodyLabel] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_actionButton] setAccessibilityIdentifier_];
    v12 = *&v2[OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionView_dismissButton];

    [v12 setAccessibilityIdentifier_];
  }
}

void sub_29E70E8EC()
{
  if (!qword_2A185A4D0)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29E70EC58(255, &qword_2A1A7BF70, MEMORY[0x29EDB89F8]);
    sub_29E70E9AC(&qword_2A1A7BF80, &qword_2A1A7BF70, v0);
    v1 = sub_29E752668();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A4D0);
    }
  }
}

uint64_t sub_29E70E9AC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_29E70EC58(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E70E9F0()
{
  if (!qword_2A185A4D8)
  {
    sub_29E70E8EC();
    sub_29E609B5C(255, &unk_2A1A7D420, 0x29EDB8E48);
    sub_29E70EABC(&unk_2A185A4E8, sub_29E70E8EC);
    sub_29E6A0F24();
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A4D8);
    }
  }
}

uint64_t sub_29E70EABC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E70EB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E70EB68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  *a2 = v5;
  return result;
}

uint64_t sub_29E70EBE8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_29E752898();
}

void sub_29E70EC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E70ECC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E609CF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E70ED30(void *a1)
{
  v2 = sub_29E74ED88();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74F698();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E70EB04(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v11 = *(sub_29E750CA8() - 8);
  v12 = *(v11 + 72);
  v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v30 = swift_allocObject();
  v29 = xmmword_29E762F30;
  *(v30 + 16) = xmmword_29E762F30;
  sub_29E70ECC8(0, &qword_2A185A510, &qword_2A1856FF0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = v29;
  (*(v7 + 104))(v10, *MEMORY[0x29EDC6AD0], v6);
  v14 = a1;
  v15 = sub_29E754258();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  type metadata accessor for SleepFocusPromotionCell();
  sub_29E70EABC(&unk_2A185A500, type metadata accessor for SleepFocusPromotionCell);
  v18 = sub_29E7506A8();
  v20 = v19;
  v34[0] = &type metadata for SleepFocusPromotionItem;
  sub_29E70F150();
  v21 = sub_29E7541F8();
  v23 = v22;
  *(v13 + 56) = &type metadata for SleepFocusPromotionItem;
  *(v13 + 64) = sub_29E70F198();
  v24 = swift_allocObject();
  *(v13 + 32) = v24;
  v24[2] = v14;
  v24[3] = v18;
  v24[4] = v20;
  v24[5] = v21;
  v24[6] = v23;
  v24[7] = v15;
  v24[8] = v17;
  sub_29E750C98();
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v34, "MutableArray<");
  HIWORD(v34[1]) = -4864;
  sub_29E74ED78();
  v25 = sub_29E74ED48();
  v27 = v26;
  (*(v32 + 8))(v5, v33);
  MEMORY[0x29ED96C20](v25, v27);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  return sub_29E750D08();
}

unint64_t sub_29E70F150()
{
  result = qword_2A185A520;
  if (!qword_2A185A520)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A185A520);
  }

  return result;
}

unint64_t sub_29E70F198()
{
  result = qword_2A185A528;
  if (!qword_2A185A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A528);
  }

  return result;
}

uint64_t sub_29E70F1EC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_29E70ECC8(0, a3, a4, a5, MEMORY[0x29EDC9C68]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_29E70F2B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E70F300()
{
  if (!qword_2A1858628)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858628);
    }
  }
}

uint64_t sub_29E70F36C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29E70ECC8(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E70F3DC(uint64_t a1, uint64_t a2)
{
  sub_29E70ECC8(0, &qword_2A185A530, &qword_2A185A538, &protocol descriptor for SleepFocusPromotionViewDelegate, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E70F46C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E70F484(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29E70F4CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_29E70F52C()
{
  result = qword_2A185A570;
  if (!qword_2A185A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A570);
  }

  return result;
}

uint64_t sub_29E70F580()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

void sub_29E70F5D4(id a1, void *a2)
{
  v4 = sub_29E752098();
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v78 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v74 = &v74 - v8;
  sub_29E7100C8(0, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v74 - v11;
  sub_29E7100C8(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v74 - v15;
  v17 = sub_29E74ED28();
  v84 = *(v17 - 8);
  v18 = *(v84 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v76 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v74 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v74 - v24;
  v85 = sub_29E74E838();
  v26 = *(v85 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v85);
  v83 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = [objc_opt_self() appleSleepScoreType];
  if (!v88)
  {
    __break(1u);
    return;
  }

  v29 = a2;
  v86 = v26;
  v79 = a1;
  if (!a2)
  {
    v89 = a1;
    sub_29E6E9BB0();
    sub_29E710064();
    v30 = a1;
    if (swift_dynamicCast())
    {
      sub_29E601938(&v90, *(&v91 + 1));
      v26 = v86;
      v29 = sub_29E750BA8();
      sub_29E5FECBC(&v90);
    }

    else
    {
      v92 = 0;
      v90 = 0u;
      v91 = 0u;
      sub_29E71011C(&v90, &qword_2A185A588, sub_29E710064);
      v29 = 0;
    }

    a1 = v79;
  }

  v31 = a2;
  v87 = [a1 resolvedHealthToolbox];
  v32 = sub_29E754868();
  v33 = [v88 identifier];
  if (!v33)
  {
    sub_29E7541D8();
    v33 = sub_29E754198();
  }

  v82 = v29;
  v75 = v17;
  if (!v29)
  {
    (*(v84 + 56))(v16, 1, 1, v17);
    sub_29E71011C(v16, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    v41 = v85;
    (*(v26 + 56))(v12, 1, 1, v85);
    v35 = 0;
    goto LABEL_14;
  }

  v77 = v32;
  v34 = v29;
  v35 = sub_29E750618();

  v36 = v34;
  v29 = sub_29E7505C8();

  v37 = v36;
  sub_29E750628();

  v38 = v84;
  if ((*(v84 + 48))(v16, 1, v17) != 1)
  {
    (*(v38 + 32))(v25, v16, v17);
    (*(v38 + 16))(v23, v25, v17);
    v42 = v83;
    sub_29E74E818();
    (*(v38 + 8))(v25, v17);
    v41 = v85;
LABEL_17:
    v32 = v77;
    goto LABEL_18;
  }

  sub_29E71011C(v16, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v39 = v37;
  sub_29E750608();

  v41 = v85;
  v40 = v86;
  if ((*(v86 + 48))(v12, 1, v85) != 1)
  {
    v42 = v83;
    (*(v40 + 32))(v83, v12, v41);
    goto LABEL_17;
  }

  v32 = v77;
LABEL_14:
  sub_29E71011C(v12, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
  sub_29E74ED18();
  v42 = v83;
  sub_29E74E818();
LABEL_18:
  v43 = [v87 chartFactory];
  v44 = sub_29E74E7D8();
  v45 = [v43 interactiveChartForTypeIdentifier:v33 preferredOverlay:v35 chartOptions:v29 displayDateInterval:v44 restorationUserActivity:v32 chartSummaryTrendModel:0];

  if (v45 && (objc_opt_self(), (v46 = swift_dynamicCastObjCClass()) != 0))
  {
    v47 = v46;
    v48 = [v46 applicationItems];
    v49 = [objc_opt_self() applicationItemsWithItems_];

    v50 = [objc_allocWithZone(MEMORY[0x29EDC4818]) init];
    [v50 setSelectedTimeScope_];
    [v49 setTimeScopeController_];
    v51 = [v47 displayDate];
    v52 = v86;
    if (v51)
    {
      v53 = v32;
      v54 = v76;
      v55 = v51;
      sub_29E74ECD8();

      v56 = sub_29E74EC98();
      v57 = v54;
      v32 = v53;
      (*(v84 + 8))(v57, v75);
    }

    else
    {
      v56 = 0;
    }

    v65 = [v47 createViewControllerForMode:3 displayDate:v56 applicationItems:v49];

    if (!v65)
    {
      v69 = v32;
      v70 = v74;
      sub_29E752048();
      v71 = sub_29E752088();
      v72 = sub_29E7546A8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_29E5ED000, v71, v72, "[presentSleepScoreChart] Received no full overlay controller", v73, 2u);
        MEMORY[0x29ED98410](v73, -1, -1);
      }

      (*(v80 + 8))(v70, v81);
      goto LABEL_32;
    }

    v66 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
    v67 = [v79 navigationController];
    if (v67)
    {
      v68 = v67;
      [v67 hk:v66 presentModalCardViewController:1 fullScreen:1 animated:0 completion:?];

LABEL_32:
      (*(v52 + 8))(v42, v85);
      return;
    }

    (*(v52 + 8))(v42, v85);
  }

  else
  {
    v58 = v32;
    v59 = v78;
    sub_29E752048();
    v60 = sub_29E752088();
    v61 = sub_29E7546A8();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v86;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_29E5ED000, v60, v61, "[presentSleepScoreChart] Received nil or non-HKOverlayRoomViewController from makeInteractiveChart", v64, 2u);
      MEMORY[0x29ED98410](v64, -1, -1);
    }

    (*(v80 + 8))(v59, v81);
    (*(v63 + 8))(v42, v41);
  }
}

unint64_t sub_29E710064()
{
  result = qword_2A185A580;
  if (!qword_2A185A580)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A185A580);
  }

  return result;
}

void sub_29E7100C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E71011C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E7100C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for AppleWatchSection()
{
  result = qword_2A185A590;
  if (!qword_2A185A590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E710204()
{
  v0 = sub_29E74ED88();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9E90];
  sub_29E7111F4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v10 = *(sub_29E750CA8() - 8);
  v11 = *(v10 + 72);
  v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v32 = xmmword_29E762F30;
  v34 = v12;
  *(v12 + 16) = xmmword_29E762F30;
  sub_29E7111F4(0, &qword_2A185A510, sub_29E61BFEC, v9);
  v13 = swift_allocObject();
  *(v13 + 16) = v32;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v14 = sub_29E74E9D8();
  v16 = v15;
  type metadata accessor for LinkCollectionViewCell();
  v17 = sub_29E7506A8();
  v19 = v18;
  (*(v5 + 104))(v8, *MEMORY[0x29EDC6AC8], v4);
  v20 = sub_29E754258();
  v21 = v4;
  v22 = v20;
  v24 = v23;
  (*(v5 + 8))(v8, v21);
  *(v13 + 56) = &type metadata for AppleWatchItem;
  *(v13 + 64) = sub_29E711258();
  v25 = swift_allocObject();
  *(v13 + 32) = v25;
  v25[2] = v14;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v19;
  v25[6] = v22;
  v25[7] = v24;
  sub_29E74ED78();
  sub_29E74ED48();
  v26 = v36;
  v27 = *(v35 + 8);
  v27(v3, v36);
  sub_29E750C98();
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v37, "MutableArray<");
  HIWORD(v37[1]) = -4864;
  sub_29E74ED78();
  v28 = sub_29E74ED48();
  v30 = v29;
  v27(v3, v26);
  MEMORY[0x29ED96C20](v28, v30);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  return sub_29E750D08();
}

uint64_t sub_29E710690()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11 - v6;
  sub_29E750E28();
  sub_29E750E18();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = sub_29E750E68();
  v8(v7, v0);
  return v9;
}

uint64_t sub_29E710808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7111F4(0, &qword_2A1856D78, MEMORY[0x29EDC23D8], MEMORY[0x29EDC9C68]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = v28 - v13;
  v15 = *MEMORY[0x29EDC8048];
  if (sub_29E7541D8() == a1 && v16 == a2)
  {

    goto LABEL_13;
  }

  v18 = sub_29E755028();

  if (v18)
  {
LABEL_13:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    v24 = sub_29E750E98();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
    a3[3] = sub_29E750EB8();
    a3[4] = sub_29E710EAC(&qword_2A1856D90, MEMORY[0x29EDC23E0]);
    sub_29E5FEBF4(a3);
    return sub_29E750EA8();
  }

  v19 = *MEMORY[0x29EDC8040];
  if (sub_29E7541D8() == a1 && v20 == a2)
  {
  }

  else
  {
    v22 = sub_29E755028();

    if ((v22 & 1) == 0)
    {
      a3[3] = sub_29E750788();
      a3[4] = sub_29E710EAC(&qword_2A1856D80, MEMORY[0x29EDC1EC0]);
      sub_29E5FEBF4(a3);
      return sub_29E750778();
    }
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v28[0] = 0x74497265746F6F46;
  v28[1] = 0xEB000000005F6D65;
  sub_29E74ED78();
  v25 = sub_29E74ED48();
  v27 = v26;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x29ED96C20](v25, v27);

  a3[3] = sub_29E751628();
  a3[4] = sub_29E710EAC(&qword_2A1856D88, MEMORY[0x29EDC28B0]);
  sub_29E5FEBF4(a3);
  return sub_29E751618();
}

uint64_t sub_29E710CD4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752238();
}

uint64_t sub_29E710D88()
{
  type metadata accessor for LinkCollectionViewCell();
  sub_29E7547D8();
  sub_29E750E88();
  sub_29E7547F8();
  sub_29E7515F8();
  return sub_29E7547E8();
}

uint64_t sub_29E710E14(uint64_t a1)
{
  v2 = sub_29E7112C0();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E710EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E710EF4()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F7B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74EAF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HKSPSleepWatchAppURL();
  if (v15)
  {
    v16 = v15;
    sub_29E74EAD8();

    sub_29E74F7A8();
    sub_29E74F798();
    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_29E752048();
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_29E6B9C90(0xD000000000000035, 0x800000029E7602F0, &v23);
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Error trying to open Sleep Focus onboarding from Sleep Options view", v20, 0xCu);
      sub_29E5FECBC(v21);
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

void sub_29E7111F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E711258()
{
  result = qword_2A185A5A8;
  if (!qword_2A185A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A5A8);
  }

  return result;
}

unint64_t sub_29E7112C0()
{
  result = qword_2A185A5B0;
  if (!qword_2A185A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A5B0);
  }

  return result;
}

uint64_t type metadata accessor for SleepApneaPromotionDataSource()
{
  result = qword_2A185A5B8;
  if (!qword_2A185A5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E7113A0()
{
  v0 = sub_29E750938();
  sub_29E5FECBC((v0 + *(*v0 + qword_2A1869458 + 16)));
  v1 = *(v0 + *(*v0 + qword_2A1869458 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_29E711460(void *a1)
{
  v2 = sub_29E7509D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_29E601938(a1, a1[3]);
  v11 = sub_29E74FB58();
  v12 = sub_29E7549E8();

  sub_29E6958F0();
  v14 = objc_allocWithZone(v13);
  v15 = v12;
  v16 = sub_29E7517E8();
  sub_29E7509B8();
  sub_29E750998();
  v17 = *(v3 + 8);
  v17(v7, v2);
  v18 = sub_29E7509A8();
  *v19 = 0x4034000000000000;
  v18(v22, 0);
  sub_29E711678(&qword_2A1858800, sub_29E6958F0);
  v20 = sub_29E750968();

  v17(v9, v2);
  return v20;
}

uint64_t sub_29E711678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E7116D0()
{
  v0 = sub_29E751D18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750888();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18561E8 != -1)
  {
    swift_once();
  }

  v10 = sub_29E61037C(v5, qword_2A1869238);
  (*(v6 + 16))(v9, v10, v5);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC2C80], v0);
  v11 = objc_allocWithZone(sub_29E7508A8());
  return sub_29E750898();
}

uint64_t sub_29E711898()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC6B28], v0);
  v5 = sub_29E74F7E8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E7119D4()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E711A7C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

void sub_29E711B1C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29E711BE0()
{
  v0 = sub_29E750528();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v4);
  v5 = sub_29E750518();
  (*(v1 + 8))(v4, v0);
  v6 = sub_29E6D5A34(v5);

  return v6;
}

id sub_29E711CC0()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29E711DB0()
{
  sub_29E62F414();
  v0 = sub_29E750108();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E76C040;
  v30 = v4;
  v5 = v4 + v3;
  *v5 = sub_29E7116D0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = *(v1 + 104);
  (v6)(v4 + v3, *MEMORY[0x29EDC15A8], v0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  v31 = v2;
  *v7 = sub_29E74E9D8();
  v7[1] = v8;
  (v6)(v5 + v2, *MEMORY[0x29EDC1610], v0);
  v9 = v5 + 2 * v2;
  *v9 = sub_29E74E9D8();
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  v11 = *MEMORY[0x29EDC1630];
  v6(v9);
  v12 = v5 + 3 * v2;
  *v12 = sub_29E74E9D8();
  *(v12 + 8) = v13;
  *(v12 + 16) = 0;
  (v6)(v12, v11, v0);
  v14 = v5 + 4 * v2;
  *v14 = sub_29E74E9D8();
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  (v6)(v14, v11, v0);
  v16 = v5 + 5 * v2;
  *v16 = sub_29E74E9D8();
  *(v16 + 8) = v17;
  *(v16 + 16) = 0;
  v18 = v6;
  (v6)(v16, v11, v0);
  v19 = v5 + 6 * v31;
  *v19 = sub_29E711CC0();
  *(v19 + 8) = 1;
  (v18)(v19, *MEMORY[0x29EDC1608], v0);
  v20 = (v5 + 7 * v31);
  *v20 = sub_29E74E9D8();
  v20[1] = v21;
  v20[2] = 0;
  v29 = *MEMORY[0x29EDC15D0];
  v18(v20);
  v22 = v5 + 8 * v31;
  *v22 = sub_29E74E9D8();
  *(v22 + 8) = v23;
  *(v22 + 16) = 0;
  (v18)(v22, v11, v0);
  v24 = (v5 + 9 * v31);
  *v24 = sub_29E74E9D8();
  v24[1] = v25;
  v24[2] = 0;
  (v18)(v24, v29, v0);
  v26 = v5 + 10 * v31;
  *v26 = sub_29E74E9D8();
  *(v26 + 8) = v27;
  *(v26 + 16) = 0;
  (v18)(v26, v11, v0);
  return v30;
}

id sub_29E71237C()
{
  v1 = v0;
  v2 = sub_29E750698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x29EDC1D20])
  {
    v8 = MEMORY[0x29EDC67A8];
  }

  else if (v7 == *MEMORY[0x29EDC1D18])
  {
    v8 = MEMORY[0x29EDC6788];
  }

  else if (v7 == *MEMORY[0x29EDC1D68])
  {
    v8 = MEMORY[0x29EDC6780];
  }

  else if (v7 == *MEMORY[0x29EDC1D80] || v7 == *MEMORY[0x29EDC1D60])
  {
    v8 = MEMORY[0x29EDC6790];
  }

  else
  {
    if (v7 != *MEMORY[0x29EDC1D50])
    {
      if (v7 == *MEMORY[0x29EDC1D30])
      {
        v8 = MEMORY[0x29EDC6778];
        goto LABEL_17;
      }

      if (v7 != *MEMORY[0x29EDC1D70] && v7 != *MEMORY[0x29EDC1D40] && v7 != *MEMORY[0x29EDC1D28] && v7 != *MEMORY[0x29EDC1D78] && v7 != *MEMORY[0x29EDC1D48] && v7 != *MEMORY[0x29EDC1D38] && v7 != *MEMORY[0x29EDC1D88] && v7 != *MEMORY[0x29EDC1D58])
      {
        v12 = *(v3 + 8);
        v13 = *MEMORY[0x29EDC67B0];
        v12(v6, v2);
        return v13;
      }
    }

    v8 = MEMORY[0x29EDC67B0];
  }

LABEL_17:
  v10 = *v8;

  return v10;
}

uint64_t sub_29E71262C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = sub_29E751E38();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E7126EC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for FeatureOnboardedPublisher.Inner();
  swift_unknownObjectRetain();
  v7 = sub_29E713CB4(a1, a2, a3);
  sub_29E751758();
  v9[3] = v6;
  v9[4] = swift_getWitnessTable();
  v9[0] = v7;
  sub_29E7526D8();
  return sub_29E5FECBC(v9);
}

uint64_t sub_29E7127F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x29EDCA1E8];
  v5 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = sub_29E751E38();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

uint64_t sub_29E7128CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x29EDCA1E8];
  v5 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = sub_29E751E38();
  (*(*(v8 - 8) + 40))(&v1[v5], a1, v8);
  return swift_endAccess();
}

uint64_t (*sub_29E7129A8())()
{
  v1 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x68);
  swift_beginAccess();
  return j__swift_endAccess_0;
}

id sub_29E712A28()
{
  v1 = sub_29E752098();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v6 = v0;
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = MEMORY[0x29EDCA1E8];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446210;
    v13 = v6 + *((*v10 & *v6) + 0x80);
    *(v11 + 4) = sub_29E6B9C90(*v13, *(v13 + 1), &v16);
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s]: Started, getting onboarding status and beginning observation", v11, 0xCu);
    sub_29E5FECBC(v12);
    MEMORY[0x29ED98410](v12, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  sub_29E712EFC();
  return [*(v6 + *((*v10 & *v6) + 0x70)) registerObserver:v6 queue:*(v6 + *((*v10 & *v6) + 0x78))];
}

id sub_29E712C3C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v7 = v1;
  v8 = sub_29E752088();
  v9 = sub_29E7546C8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = MEMORY[0x29EDCA1E8];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v20 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    v15 = sub_29E755178();
    v17 = sub_29E6B9C90(v15, v16, &v21);

    *(v13 + 4) = v17;
    v11 = MEMORY[0x29EDCA1E8];
    *(v13 + 12) = 2082;
    v18 = v7 + *((*v11 & *v7) + 0x80);
    *(v13 + 14) = sub_29E6B9C90(*v18, *(v18 + 1), &v21);
    _os_log_impl(&dword_29E5ED000, v8, v9, "[%{public}s.%{public}s]: Canceled, ending observation", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v14, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);

    (*(v3 + 8))(v6, v20);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return [*(v7 + *((*v11 & *v7) + 0x70)) unregisterObserver_];
}

void sub_29E712E9C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29E713D08();
  sub_29E751758();
}

uint64_t sub_29E712EFC()
{
  v1 = v0;
  v44[1] = *MEMORY[0x29EDCA608];
  v2 = *v0;
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v3 & v2) + 0x50);
  v9 = *((v3 & v2) + 0x58);
  sub_29E751E18();
  swift_getWitnessTable();
  v10 = sub_29E755118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v40 - v13;
  v15 = *&v1[*((v3 & v2) + 0x70)];
  v44[0] = 0;
  v16 = [v15 isCurrentOnboardingVersionCompletedWithError_];
  if (v16)
  {
    v17 = v16;
    v18 = v44[0];
    v19 = [v17 BOOLValue];

    LOBYTE(v44[0]) = v19;
    type metadata accessor for FeatureOnboardedPublisher.Inner();
    swift_getWitnessTable();
    sub_29E751DE8();
    result = (*(v11 + 8))(v14, v10);
  }

  else
  {
    v21 = MEMORY[0x29EDCA1E8];
    v40 = v4;
    v41 = v5;
    v22 = v44[0];
    v23 = sub_29E74EA48();

    swift_willThrow();
    v24 = v42;
    sub_29E752068();
    v25 = v1;
    v26 = v23;
    v27 = sub_29E752088();
    v28 = sub_29E7546A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44[0] = v30;
      *v29 = 136446466;
      v31 = &v25[*((*v21 & *v25) + 0x80)];
      *(v29 + 4) = sub_29E6B9C90(*v31, *(v31 + 1), v44);
      *(v29 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v33 = *(*(v43 - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v35 + 16))(&v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      v36 = sub_29E7541F8();
      v38 = sub_29E6B9C90(v36, v37, v44);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s]: Error getting onboarding status %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v30, -1, -1);
      MEMORY[0x29ED98410](v29, -1, -1);
    }

    else
    {
    }

    result = (*(v41 + 8))(v24, v40);
  }

  v39 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29E7133D4(void *a1)
{
  v1 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x50);
  v2 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x58);
  sub_29E713ECC();
}

id sub_29E713414()
{
  v1 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x50);
  v2 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FeatureOnboardedPublisher.Inner();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29E713484(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x29EDCA1E8];
  v4 = *MEMORY[0x29EDCA1E8];
  sub_29E5FECBC(&a1[*((*MEMORY[0x29EDCA1E8] & *a1) + 0x60)]);
  v5 = *((*v3 & *a1) + 0x68);
  v6 = *((v4 & v2) + 0x50);
  v7 = *((v4 & v2) + 0x58);
  v8 = sub_29E751E38();
  (*(*(v8 - 8) + 8))(&a1[v5], v8);
  v9 = *&a1[*((*v3 & *a1) + 0x70)];
  sub_29E751758();

  v10 = *&a1[*((*v3 & *a1) + 0x80) + 8];
}

void (*sub_29E7135FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29E7129A8();
  return sub_29E688830;
}

uint64_t sub_29E71369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 80);
  v6 = *(a2 + 88);
  v8 = type metadata accessor for FeatureOnboardedPublisher.Inner();

  return a4(a1, v8, a3);
}

uint64_t sub_29E713718()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_29E751E08();
}

uint64_t sub_29E713770()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_29E751DF8();
}

uint64_t sub_29E71383C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_29E7542E8();

    return sub_29E754388();
  }

  return result;
}

id sub_29E7138D8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v44[1] = a1;
  v45 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x29EDCA1E8];
  v7 = sub_29E74ED88();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v6 & v5) + 0x50);
  v12 = *((v6 & v5) + 0x58);
  v13 = sub_29E751E38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = v44 - v16;
  v18 = &v4[*((v6 & v5) + 0x60)];
  v19 = sub_29E74FB88();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_29E74FB78();
  v18[3] = v19;
  v18[4] = sub_29E713F18();
  *v18 = v22;
  sub_29E751E28();
  v23 = MEMORY[0x29EDCA1E8];
  (*(v14 + 32))(&v4[*((*MEMORY[0x29EDCA1E8] & *v4) + 0x68)], v17, v13);
  v24 = v23;
  v25 = v45;
  *&v4[*((*v23 & *v4) + 0x70)] = v45;
  v50 = 0;
  v51 = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_29E754D78();

  v50 = 0xD00000000000001ALL;
  v51 = 0x800000029E7604A0;
  v26 = [v25 featureIdentifier];
  v27 = sub_29E7541D8();
  v29 = v28;

  MEMORY[0x29ED96C20](v27, v29);

  MEMORY[0x29ED96C20](46, 0xE100000000000000);
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v46 + 8))(v10, v47);
  v30 = sub_29E71383C(8);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = MEMORY[0x29ED96BD0](v30, v32, v34, v36);
  v39 = v38;

  MEMORY[0x29ED96C20](v37, v39);

  v40 = v51;
  v41 = &v4[*((*v24 & *v4) + 0x80)];
  *v41 = v50;
  v41[1] = v40;
  *&v4[*((*v24 & *v4) + 0x78)] = v48;
  v42 = type metadata accessor for FeatureOnboardedPublisher.Inner();
  v49.receiver = v4;
  v49.super_class = v42;
  return objc_msgSendSuper2(&v49, sel_init);
}

id sub_29E713CB4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  v9 = objc_allocWithZone(type metadata accessor for FeatureOnboardedPublisher.Inner());
  return sub_29E7138D8(a1, a2, a3);
}

uint64_t sub_29E713D08()
{
  v1 = sub_29E752098();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v6 = v0;
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    v11 = v6 + *((*MEMORY[0x29EDCA1E8] & *v6) + 0x80);
    *(v9 + 4) = sub_29E6B9C90(*v11, *(v11 + 1), &v14);
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s]: Updated, getting onboarding status", v9, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return sub_29E712EFC();
}

unint64_t sub_29E713F18()
{
  result = qword_2A1A7CF70[0];
  if (!qword_2A1A7CF70[0])
  {
    sub_29E74FB88();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A7CF70);
  }

  return result;
}

uint64_t sub_29E713F9C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = sub_29E752FB8();
  v1 = *(v46 - 8);
  v39 = v46 - 8;
  v42 = v1;
  v44 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v46 - 8);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29E7532D8();
  v38 = *(v40 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v40);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E714D54(0, &qword_2A1A7BE80, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_29E753508();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7147BC();
  v41 = v16;
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E752EF8();
  LOBYTE(v54[0]) = 0;
  sub_29E714574(v52);
  *&v51[7] = v52[0];
  *&v51[23] = v52[1];
  *&v51[39] = v53[0];
  *&v51[51] = *(v53 + 12);
  v20 = v54[0];
  (*(v12 + 104))(v15, *MEMORY[0x29EDBC9C8], v11);
  v21 = sub_29E753448();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_29E753478();
  v22 = sub_29E753498();
  sub_29E714C14(v10);
  (*(v12 + 8))(v15, v11);
  KeyPath = swift_getKeyPath();
  *(&v49[1] + 1) = *&v51[16];
  *(&v49[2] + 1) = *&v51[32];
  *(&v49[3] + 1) = *&v51[48];
  v48 = v37;
  LOBYTE(v49[0]) = v20;
  LODWORD(v49[4]) = *&v51[63];
  *(v49 + 1) = *v51;
  *(&v49[4] + 1) = KeyPath;
  v50 = v22;
  sub_29E7532C8();
  sub_29E714840();
  v25 = v24;
  v26 = sub_29E714B1C();
  sub_29E753808();
  (*(v38 + 8))(v6, v40);
  v54[4] = v49[3];
  v54[5] = v49[4];
  v55 = v50;
  v54[0] = v48;
  v54[1] = v49[0];
  v54[2] = v49[1];
  v54[3] = v49[2];
  sub_29E714CF8(v54);
  v27 = MEMORY[0x29EDBC748];
  sub_29E714D54(0, &qword_2A185A618, MEMORY[0x29EDBC748], MEMORY[0x29EDC9E90]);
  v28 = *(v42 + 72);
  v29 = v44;
  v30 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29E762F40;
  sub_29E752FA8();
  sub_29E752F98();
  *&v48 = v31;
  sub_29E714BCC(&qword_2A185A620, MEMORY[0x29EDBC748]);
  sub_29E714D54(0, &qword_2A185A628, v27, MEMORY[0x29EDC9A40]);
  sub_29E714DB8();
  v33 = v45;
  v32 = v46;
  sub_29E754C58();
  *&v48 = v25;
  *(&v48 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v34 = v41;
  sub_29E753828();
  (*(v29 + 8))(v33, v32);
  return (*(v43 + 8))(v19, v34);
}

void sub_29E714574(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() appleSleepScoreType];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hk_localizedName];

    if (v4)
    {
      sub_29E7541D8();

      sub_29E60DE10();
      v5 = sub_29E753608();
      v7 = v6;
      v9 = v8;
      v10 = [objc_opt_self() hk_sleepKeyColor];
      sub_29E7538E8();
      v11 = sub_29E7535B8();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      sub_29E60DB44(v5, v7, v9 & 1);

      v18 = sub_29E7539B8();
      v19 = sub_29E7531F8();
      *a1 = v11;
      *(a1 + 8) = v13;
      *(a1 + 16) = v15 & 1;
      *(a1 + 24) = v17;
      *(a1 + 32) = 0x4020000000000000;
      *(a1 + 40) = 0;
      *(a1 + 48) = v18;
      *(a1 + 56) = v19;
      sub_29E62935C(v11, v13, v15 & 1);

      sub_29E60DB44(v11, v13, v15 & 1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E7147BC()
{
  if (!qword_2A185A5C8)
  {
    sub_29E714840();
    sub_29E714B1C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185A5C8);
    }
  }
}

void sub_29E714840()
{
  if (!qword_2A185A5D0)
  {
    sub_29E7148D8();
    sub_29E714D54(255, &qword_2A1857518, sub_29E62AEE8, MEMORY[0x29EDBC938]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A5D0);
    }
  }
}

void sub_29E7148D8()
{
  if (!qword_2A185A5D8)
  {
    sub_29E714D54(255, &qword_2A185A5E0, sub_29E71496C, MEMORY[0x29EDBCC28]);
    sub_29E714A94();
    v0 = sub_29E753A78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A5D8);
    }
  }
}

void sub_29E71496C()
{
  if (!qword_2A185A5E8)
  {
    sub_29E7149DC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A185A5E8);
    }
  }
}

void sub_29E7149DC()
{
  if (!qword_2A185A5F0)
  {
    sub_29E714A3C();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A5F0);
    }
  }
}

void sub_29E714A3C()
{
  if (!qword_2A185A5F8)
  {
    v0 = sub_29E753288();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A5F8);
    }
  }
}

unint64_t sub_29E714A94()
{
  result = qword_2A185A600;
  if (!qword_2A185A600)
  {
    sub_29E714D54(255, &qword_2A185A5E0, sub_29E71496C, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A600);
  }

  return result;
}

unint64_t sub_29E714B1C()
{
  result = qword_2A185A608;
  if (!qword_2A185A608)
  {
    sub_29E714840();
    sub_29E714BCC(&qword_2A185A610, sub_29E7148D8);
    sub_29E6383CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A608);
  }

  return result;
}

uint64_t sub_29E714BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E714C14(uint64_t a1)
{
  sub_29E714D54(0, &qword_2A1A7BE80, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E714CA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752E38();
  *a1 = result;
  return result;
}

uint64_t sub_29E714CCC(uint64_t *a1)
{
  v1 = *a1;

  return sub_29E752E48();
}

uint64_t sub_29E714CF8(uint64_t a1)
{
  sub_29E714840();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E714D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E714DB8()
{
  result = qword_2A185A630;
  if (!qword_2A185A630)
  {
    sub_29E714D54(255, &qword_2A185A628, MEMORY[0x29EDBC748], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A630);
  }

  return result;
}

unint64_t sub_29E714E40()
{
  result = qword_2A185A638;
  if (!qword_2A185A638)
  {
    sub_29E714F20();
    sub_29E714840();
    sub_29E714B1C();
    swift_getOpaqueTypeConformance2();
    sub_29E714BCC(&qword_2A1857F58, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A638);
  }

  return result;
}

void sub_29E714F20()
{
  if (!qword_2A185A640)
  {
    sub_29E7147BC();
    sub_29E7532F8();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A640);
    }
  }
}

uint64_t sub_29E714F88@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_29E750218();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = sub_29E750388();
  v15 = *(v3 - 8);
  v16 = v3;
  v4 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 configurationWithPointSize_];
  sub_29E609B5C(0, &qword_2A1A7BD48, 0x29EDC7A00);
  v9 = sub_29E754B28();
  v10 = [v7 configurationWithHierarchicalColor_];

  v11 = [v8 configurationByApplyingConfiguration_];
  v14 = v11;
  sub_29E7501F8();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E74E9D8();
  sub_29E74E9D8();
  sub_29E750368();
  v12 = sub_29E74FBE8();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E754C98())
  {
    sub_29E7173E4(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for SleepCoachingOnboardingTileActionHandler();
  sub_29E718B1C(&qword_2A1A7CB68, type metadata accessor for SleepCoachingOnboardingTileActionHandler);
  sub_29E74FC28();

  return (*(v15 + 8))(v6, v16);
}

uint64_t sub_29E7153C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29E7176C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29E7153E8@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_29E750528();
  v17 = *(v1 - 8);
  v18 = v1;
  v2 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750218();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = sub_29E750388();
  v15 = *(v7 - 8);
  v16 = v7;
  v8 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = "Element type\nExpected ";
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A7FA18;
  sub_29E750208();
  sub_29E74E9D8();
  sub_29E74E9D8();
  sub_29E74E9D8();
  sub_29E750368();
  v12 = sub_29E74FBE8();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E754C98())
  {
    sub_29E7173E4(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for SleepTrackingOnboardingTileActionHandler();
  sub_29E718B1C(&qword_2A1A7CB50, type metadata accessor for SleepTrackingOnboardingTileActionHandler);
  sub_29E74FC28();

  sub_29E693FB8(v4);
  v13 = sub_29E750518();
  (*(v17 + 8))(v4, v18);
  sub_29E6D5A34(v13);

  sub_29E74FD28();
  return (*(v15 + 8))(v10, v16);
}

BOOL sub_29E71583C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74FB98();
  v151 = *(v4 - 8);
  v152 = v4;
  v5 = *(v151 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v154 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v155 = &v139 - v8;
  v158 = sub_29E74FF58();
  v163 = *(v158 - 8);
  v9 = *(v163 + 64);
  MEMORY[0x2A1C7C4A8](v158);
  v150 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E718928();
  v156 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v157 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDC9C68];
  sub_29E718800(0, &qword_2A1A7D6B0, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15 - 8);
  v153 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v161 = &v139 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v162 = &v139 - v21;
  sub_29E718800(0, &qword_2A1A7CF20, MEMORY[0x29EDC1A18], v14);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v149 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v139 - v26;
  v28 = sub_29E750388();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v148 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v139 - v33;
  v35 = MEMORY[0x29EDC3840];
  sub_29E718800(0, &qword_2A1A7D6C8, MEMORY[0x29EDC3840], v14);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v36 - 8);
  v39 = &v139 - v38;
  v40 = sub_29E74FDC8();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v40);
  v43 = &v139 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v46 = v45;
  v48 = v47;
  sub_29E7189BC(v44, v39, &qword_2A1A7D6C8, v35);
  if ((*(v48 + 48))(v39, 1, v46) == 1)
  {
    sub_29E718A98(v39, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
    return 0;
  }

  v159 = v48;
  v49 = *(v48 + 32);
  v147 = v46;
  v49(v43, v39, v46);
  v164 = v2;
  v50 = sub_29E74FDB8();
  v52 = v51;
  v160 = v43;
  v54 = sub_29E74FDB8();
  v55 = v53;
  if (v52 >> 60 == 15)
  {
    v56 = v29;
    if (v53 >> 60 == 15)
    {
      sub_29E643D0C(v50, v52);
      v146 = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v56 = v29;
  if (v53 >> 60 == 15)
  {
LABEL_7:
    sub_29E643D0C(v50, v52);
    sub_29E643D0C(v54, v55);
    v146 = 0;
    goto LABEL_9;
  }

  sub_29E718B08(v50, v52);
  sub_29E718B08(v54, v55);
  v146 = sub_29E71727C(v50, v52, v54, v55);
  sub_29E643D0C(v54, v55);
  sub_29E643D0C(v54, v55);
  sub_29E643D0C(v50, v52);
  sub_29E643D0C(v50, v52);
LABEL_9:
  v57 = v34;
  v58 = sub_29E74FDB8();
  if (v59 >> 60 != 15)
  {
    v60 = v58;
    v61 = v59;
    v62 = sub_29E74FDB8();
    if (v63 >> 60 == 15)
    {
      sub_29E643D0C(v60, v61);
    }

    else
    {
      v64 = v63;
      v145 = v62;
      v65 = sub_29E74E798();
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();
      sub_29E74E788();
      v144 = sub_29E718B1C(&qword_2A1A7CF28, MEMORY[0x29EDC1A18]);
      sub_29E74E778();
      v143 = v60;

      v142 = v56[7];
      v142(v27, 0, 1, v28);
      v68 = v56[4];
      v141 = v56 + 4;
      v140 = v68;
      v68(v57, v27, v28);
      v69 = *(v65 + 48);
      v70 = *(v65 + 52);
      swift_allocObject();
      sub_29E74E788();
      v71 = v149;
      v72 = v145;
      sub_29E74E778();

      v142(v71, 0, 1, v28);
      v122 = v148;
      v140(v148, v71, v28);
      v146 = MEMORY[0x29ED92C90](v57, v122);
      sub_29E643D0C(v143, v61);
      sub_29E643D0C(v72, v64);
      v123 = v56[1];
      v123(v122, v28);
      v123(v57, v28);
    }
  }

  v73 = sub_29E74FCF8();
  v75 = v74;
  v76 = v160;
  v77 = sub_29E74FCF8();
  v79 = v159;
  if (v73 == v77 && v75 == v78)
  {
  }

  else
  {
    v80 = sub_29E755028();

    if ((v80 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v81 = sub_29E74FC88();
  v83 = v82;
  v85 = v84;
  v86 = sub_29E74FC88();
  v88 = v87;
  v90 = v89;
  v91 = MEMORY[0x29ED92520](v81, v83, v85, v86, v87, v89);
  sub_29E662E08(v86, v88, v90);
  sub_29E662E08(v81, v83, v85);
  if ((v91 & v146 & 1) == 0)
  {
    goto LABEL_49;
  }

  v92 = v162;
  sub_29E74FD58();
  v93 = v161;
  sub_29E74FD58();
  v94 = v157;
  v95 = *(v156 + 48);
  v96 = MEMORY[0x29EDC3980];
  sub_29E7189BC(v92, v157, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
  sub_29E7189BC(v93, v94 + v95, &qword_2A1A7D6B0, v96);
  v97 = *(v163 + 48);
  v98 = v158;
  if (v97(v94, 1, v158) == 1)
  {
    v99 = MEMORY[0x29EDC3980];
    sub_29E718A98(v93, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
    sub_29E718A98(v92, &qword_2A1A7D6B0, v99);
    v100 = v97(v94 + v95, 1, v98);
    v79 = v159;
    if (v100 == 1)
    {
      sub_29E718A98(v94, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
      goto LABEL_25;
    }

LABEL_23:
    sub_29E718A3C(v94);
    goto LABEL_49;
  }

  v101 = v153;
  sub_29E7189BC(v94, v153, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
  if (v97(v94 + v95, 1, v98) == 1)
  {
    v102 = MEMORY[0x29EDC3980];
    sub_29E718A98(v161, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
    sub_29E718A98(v162, &qword_2A1A7D6B0, v102);
    (*(v163 + 8))(v101, v98);
    v79 = v159;
    goto LABEL_23;
  }

  v103 = v163;
  v104 = v94 + v95;
  v105 = v150;
  (*(v163 + 32))(v150, v104, v98);
  sub_29E718B1C(&qword_2A185A648, MEMORY[0x29EDC3980]);
  v106 = sub_29E754108();
  v107 = *(v103 + 8);
  v107(v105, v98);
  v108 = MEMORY[0x29EDC3980];
  sub_29E718A98(v161, &qword_2A1A7D6B0, MEMORY[0x29EDC3980]);
  sub_29E718A98(v162, &qword_2A1A7D6B0, v108);
  v107(v101, v98);
  sub_29E718A98(v94, &qword_2A1A7D6B0, v108);
  v79 = v159;
  if ((v106 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_25:
  sub_29E74FC68();
  sub_29E74FC68();
  sub_29E718B1C(&qword_2A1A7D6D0, MEMORY[0x29EDC3798]);
  v109 = v152;
  sub_29E7543B8();
  sub_29E7543B8();
  if (v167 == v165 && v168 == v166)
  {
    v110 = *(v151 + 8);
    v110(v154, v109);
    v110(v155, v109);
  }

  else
  {
    v111 = sub_29E755028();
    v112 = *(v151 + 8);
    v112(v154, v109);
    v112(v155, v109);

    if ((v111 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v113 = sub_29E74FD18();
  v114 = sub_29E74FD18();
  sub_29E7168B0(v113, v114);
  v116 = v115;

  if ((v116 & 1) == 0)
  {
    goto LABEL_49;
  }

  v117 = sub_29E74FCC8();
  v119 = v118;
  v120 = sub_29E74FCC8();
  if (v119)
  {
    if (!v121)
    {
      goto LABEL_45;
    }

    if (v117 == v120 && v119 == v121)
    {
    }

    else
    {
      v124 = sub_29E755028();

      if ((v124 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v121)
  {
    goto LABEL_45;
  }

  v125 = sub_29E74FD48();
  v127 = v126;
  v128 = sub_29E74FD48();
  if (!v127)
  {
    if (!v129)
    {
      goto LABEL_47;
    }

LABEL_45:

    goto LABEL_49;
  }

  if (!v129)
  {
    goto LABEL_45;
  }

  if (v125 == v128 && v127 == v129)
  {
  }

  else
  {
    v130 = sub_29E755028();

    if ((v130 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

LABEL_47:
  v131 = sub_29E74FD98();
  if (v131 != sub_29E74FD98())
  {
    goto LABEL_49;
  }

  v132 = sub_29E74FCA8();
  if ((v132 ^ sub_29E74FCA8()))
  {
    goto LABEL_49;
  }

  v134 = sub_29E74FD38();
  v135 = sub_29E74FD38();
  v136 = v135;
  if (v134 == 13)
  {
    (*(v79 + 8))(v76, v147);
    return v136 == 13;
  }

  if (v135 == 13)
  {
LABEL_49:
    (*(v79 + 8))(v76, v147);
    return 0;
  }

  v137 = sub_29E74FBA8();
  v138 = sub_29E74FBA8();
  (*(v79 + 8))(v76, v147);
  return v137 == v138;
}

void sub_29E7168B0(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2A1C72B38](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_29E7170C4(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_29E754B78();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_29E754B88();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_29E716B28@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_29E74E868();
    if (v10)
    {
      v11 = sub_29E74E888();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_29E74E878();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x29EDCA608];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_29E74E868();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_29E74E888();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_29E74E878();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_29E716D58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_29E7171C4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_29E643D20(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_29E716B28(v14, a3, a4, &v13);
  v10 = v4;
  sub_29E643D20(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x29EDCA608];
  return v10 & 1;
}

uint64_t sub_29E716EE8(unint64_t a1, unint64_t a2)
{
  sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
  if (a2 >> 62)
  {
    v4 = sub_29E754E88();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29E754D78();
    v6 = 0xD000000000000046;
    v5 = 0x800000029E760600;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29E754D78();
  v5 = 0x800000029E7605B0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED96C20](v6, v5);
  v8 = sub_29E755178();
  MEMORY[0x29ED96C20](v8);

  MEMORY[0x29ED96C20](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29E755178();
  MEMORY[0x29ED96C20](v9);

  result = sub_29E754E58();
  __break(1u);
  return result;
}

void sub_29E7170C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_29E754C98())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_29E754CD8();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29E7171C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_29E74E868();
  v11 = result;
  if (result)
  {
    result = sub_29E74E888();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_29E74E878();
  sub_29E716B28(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_29E71727C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_29E64C7DC(a3, a4);
          return sub_29E716D58(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_29E7173E4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29E754C98())
    {
LABEL_3:
      sub_29E5FF284();
      v3 = sub_29E754D48();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29E754C98();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = sub_29E716EE8(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_29E754B78();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_29E754B88();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        sub_29E751758();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_29E754B78();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_29E754B88();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_29E7176C8(uint64_t a1, uint64_t a2)
{
  v141 = a1;
  sub_29E718C78(0, &qword_2A1A7D4C0, MEMORY[0x29EDB8AC0]);
  v131 = v3;
  v130 = *(v3 - 8);
  v4 = *(v130 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v129 = &v115 - v5;
  sub_29E718784();
  v118 = v6;
  v117 = *(v6 - 8);
  v7 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v116 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_29E752098();
  v9 = *(v144 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v144);
  v13 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v139 = &v115 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v128 = &v115 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v127 = &v115 - v18;
  v19 = MEMORY[0x29EDC3840];
  sub_29E718800(0, &qword_2A1A7D6C8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v149 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v115 - v24;
  v26 = sub_29E74FDC8();
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = *(v27 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26);
  v134 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v133 = &v115 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v126 = &v115 - v35;
  MEMORY[0x2A1C7C4A8](v34);
  v37 = &v115 - v36;
  sub_29E718800(0, &qword_2A1A7D3F8, v19, MEMORY[0x29EDC9E90]);
  v38 = *(v27 + 72);
  v39 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v124 = *(v28 + 80);
  v125 = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29E762F40;
  v123 = v39;
  v132 = v41;
  v42 = v41 + v39;
  sub_29E714F88(v42);
  v143 = v38;
  v140 = v42;
  sub_29E7153E8(v42 + v38);
  if (!*(a2 + 16) || (v43 = sub_29E68AA8C(*MEMORY[0x29EDBA750]), (v44 & 1) == 0) || !*(a2 + 16) || (LODWORD(v45) = *(*(a2 + 56) + v43), v46 = sub_29E68AA8C(*MEMORY[0x29EDBA758]), (v48 & 1) == 0))
  {

    sub_29E752048();
    v53 = sub_29E752088();
    v54 = sub_29E7546C8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v150[0] = v56;
      *v55 = 136446210;
      *(v55 + 4) = sub_29E6B9C90(0xD00000000000001CLL, 0x800000029E76C3A0, v150);
      _os_log_impl(&dword_29E5ED000, v53, v54, "[%{public}s] Indeterminate onboarding state, skipping feed item updates", v55, 0xCu);
      sub_29E5FECBC(v56);
      MEMORY[0x29ED98410](v56, -1, -1);
      MEMORY[0x29ED98410](v55, -1, -1);
    }

    (*(v9 + 8))(v13, v144);
    goto LABEL_9;
  }

  v49 = 0;
  v50 = 0;
  v51 = *(*(a2 + 56) + v46);
  v147 = *(v28 + 16);
  v148 = v28 + 16;
  v137 = (v28 + 56);
  v136 = v51 & (v45 ^ 1);
  v142 = (v28 + 8);
  v135 = (v9 + 8);
  v52 = MEMORY[0x29EDCA190];
  v121 = &unk_29E76C3A0;
  *&v47 = 136446466;
  v120 = v47;
  v119 = xmmword_29E762F30;
  v138 = v45;
  v122 = v25;
  do
  {
    v146 = v52;
    v145 = v49;
    v147(v37, v140 + v50 * v143, v26);
    sub_29E714F88(v25);
    v63 = *v137;
    (*v137)(v25, 0, 1, v26);
    v64 = sub_29E71583C(v25);
    v65 = MEMORY[0x29EDC3840];
    sub_29E718A98(v25, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
    v66 = v64 & v45;
    sub_29E7153E8(v25);
    v63(v25, 0, 1, v26);
    v67 = sub_29E71583C(v25);
    sub_29E718A98(v25, &qword_2A1A7D6C8, v65);
    if (v67)
    {
      v68 = v136;
    }

    else
    {
      v68 = v66;
    }

    sub_29E74FE58();
    sub_29E601938(v150, v150[3]);
    sub_29E74FCF8();
    v69 = v149;
    sub_29E74FDE8();

    sub_29E5FECBC(v150);
    v70 = sub_29E71583C(v69);
    if (v68)
    {
      v71 = v133;
      if (v70)
      {
        goto LABEL_24;
      }

      v72 = v128;
      sub_29E752048();
      v147(v71, v37, v26);
      v73 = sub_29E752088();
      v74 = sub_29E7546C8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v150[0] = v115;
        *v75 = v120;
        *(v75 + 4) = sub_29E6B9C90(0xD00000000000001CLL, v121 | 0x8000000000000000, v150);
        *(v75 + 12) = 2082;
        v76 = sub_29E74FCF8();
        v77 = v71;
        v79 = v78;
        v80 = *v142;
        (*v142)(v77, v26);
        v81 = sub_29E6B9C90(v76, v79, v150);

        *(v75 + 14) = v81;
        _os_log_impl(&dword_29E5ED000, v73, v74, "[%{public}s] Submitting feed item with identifier: %{public}s", v75, 0x16u);
        v82 = v115;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v82, -1, -1);
        MEMORY[0x29ED98410](v75, -1, -1);
      }

      else
      {

        v80 = *v142;
        (*v142)(v71, v26);
      }

      (*v135)(v72, v144);
      v107 = v123;
      v108 = swift_allocObject();
      *(v108 + 16) = v119;
      v147((v108 + v107), v37, v26);
      v52 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_29E6DB70C(0, *(v52 + 2) + 1, 1, v52);
      }

      v45 = *(v52 + 2);
      v109 = *(v52 + 3);
      if (v45 >= v109 >> 1)
      {
        v52 = sub_29E6DB70C((v109 > 1), v45 + 1, 1, v52);
      }

      sub_29E718A98(v149, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
      v80(v37, v26);
      *(v52 + 2) = v45 + 1;
      v110 = &v52[40 * v45];
      *(v110 + 4) = v108;
      *(v110 + 5) = 0;
      *(v110 + 6) = 0;
      *(v110 + 7) = 0;
      v110[64] = 0;
      LOBYTE(v45) = v138;
    }

    else
    {
      if (!v70)
      {
LABEL_24:
        v95 = v139;
        sub_29E752048();
        v96 = v134;
        v147(v134, v37, v26);
        v97 = sub_29E752088();
        v98 = sub_29E7546C8();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v150[0] = v100;
          *v99 = v120;
          *(v99 + 4) = sub_29E6B9C90(0xD00000000000001CLL, v121 | 0x8000000000000000, v150);
          *(v99 + 12) = 2082;
          v101 = sub_29E74FCF8();
          v103 = v102;
          v104 = v96;
          v105 = *v142;
          (*v142)(v104, v26);
          v106 = sub_29E6B9C90(v101, v103, v150);

          *(v99 + 14) = v106;
          _os_log_impl(&dword_29E5ED000, v97, v98, "[%{public}s] Skipping updating feed item with identifier: %{public}s", v99, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED98410](v100, -1, -1);
          MEMORY[0x29ED98410](v99, -1, -1);

          (*v135)(v139, v144);
          sub_29E718A98(v149, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
          v105(v37, v26);
        }

        else
        {

          v62 = *v142;
          (*v142)(v96, v26);
          (*v135)(v95, v144);
          sub_29E718A98(v149, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
          v62(v37, v26);
        }

        LOBYTE(v45) = v138;
        v25 = v122;
        v52 = v146;
        goto LABEL_13;
      }

      v83 = v127;
      sub_29E752048();
      v84 = v126;
      v147(v126, v37, v26);
      v85 = sub_29E752088();
      v86 = sub_29E7546C8();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v150[0] = v115;
        *v87 = v120;
        *(v87 + 4) = sub_29E6B9C90(0xD00000000000001CLL, v121 | 0x8000000000000000, v150);
        *(v87 + 12) = 2082;
        v88 = sub_29E74FCF8();
        v89 = v84;
        v91 = v90;
        v92 = *v142;
        (*v142)(v89, v26);
        v93 = sub_29E6B9C90(v88, v91, v150);

        *(v87 + 14) = v93;
        _os_log_impl(&dword_29E5ED000, v85, v86, "[%{public}s] Removing feed item with identifier: %{public}s", v87, 0x16u);
        v94 = v115;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v94, -1, -1);
        MEMORY[0x29ED98410](v87, -1, -1);
      }

      else
      {

        v92 = *v142;
        (*v142)(v84, v26);
      }

      (*v135)(v83, v144);
      sub_29E7188D8(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
      v111 = swift_allocObject();
      *(v111 + 16) = v119;
      *(v111 + 32) = sub_29E74FCF8();
      *(v111 + 40) = v112;
      v52 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_29E6DB70C(0, *(v52 + 2) + 1, 1, v52);
      }

      v45 = *(v52 + 2);
      v113 = *(v52 + 3);
      if (v45 >= v113 >> 1)
      {
        v52 = sub_29E6DB70C((v113 > 1), v45 + 1, 1, v52);
      }

      sub_29E718A98(v149, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
      v92(v37, v26);
      *(v52 + 2) = v45 + 1;
      v114 = &v52[40 * v45];
      *(v114 + 4) = v111;
      *(v114 + 5) = 0;
      *(v114 + 6) = 0;
      *(v114 + 7) = 0;
      v114[64] = 32;
      LOBYTE(v45) = v138;
    }

LABEL_13:
    v49 = 1;
    v50 = 1;
  }

  while ((v145 & 1) == 0);

  if (*(v52 + 2))
  {
    v150[0] = v52;
    sub_29E7188D8(0, &qword_2A1A7D498, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v57 = v116;
    sub_29E752818();
    sub_29E718B1C(&qword_2A1A7BF38, sub_29E718784);
    v58 = v118;
    v59 = sub_29E7528E8();
    v60 = &v146;
    goto LABEL_10;
  }

LABEL_9:
  sub_29E7188D8(0, &qword_2A1A7D498, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v57 = v129;
  sub_29E752828();
  sub_29E718864();
  v58 = v131;
  v59 = sub_29E7528E8();
  v60 = &v151;
LABEL_10:
  (*(*(v60 - 32) + 1))(v57, v58);
  return v59;
}

void sub_29E718784()
{
  if (!qword_2A1A7D4D0)
  {
    sub_29E7188D8(255, &qword_2A1A7D498, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v0 = sub_29E752808();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D4D0);
    }
  }
}

void sub_29E718800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E718864()
{
  result = qword_2A1A7D4C8;
  if (!qword_2A1A7D4C8)
  {
    sub_29E718C78(255, &qword_2A1A7D4C0, MEMORY[0x29EDB8AC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D4C8);
  }

  return result;
}

void sub_29E7188D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E718928()
{
  if (!qword_2A1A7D6A8)
  {
    sub_29E718800(255, &qword_2A1A7D6B0, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A7D6A8);
    }
  }
}

uint64_t sub_29E7189BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E718800(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E718A3C(uint64_t a1)
{
  sub_29E718928();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E718A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E718800(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E718B08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29E64C7DC(a1, a2);
  }

  return a1;
}

uint64_t sub_29E718B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SleepOnboardingTileGenerator()
{
  result = qword_2A1A7D680;
  if (!qword_2A1A7D680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E718BD8()
{
  sub_29E718C78(319, &qword_2A1A7D4F8, MEMORY[0x29EDB89F8]);
  if (v0 <= 0x3F)
  {
    sub_29E74FE48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E718C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29E7188D8(255, &qword_2A1A7D498, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E718D0C(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  sub_29E74ECD8();
}

void *sub_29E718D68()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator;
  if (*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator);
  }

  else
  {
    v2 = sub_29E718DD0(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_29E718DD0(uint64_t a1)
{
  v2 = sub_29E74ED28();
  v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E71C1F0(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v62 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v71 = &v62 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v62 - v15;
  v75 = a1;
  v17 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource);
  result = [v17 featureAvailabilityProvidingForFeatureIdentifier_];
  if (result)
  {
    v19 = result;
    v73 = OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord;
    sub_29E6F5CC4(v75 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord, v16);
    v20 = sub_29E74FFA8();
    v21 = *(v20 - 8);
    v72 = *(v21 + 48);
    v22 = v72(v16, 1, v20);
    swift_unknownObjectRetain();
    v70 = v9;
    v65 = v2;
    v69 = v21;
    if (v22 == 1)
    {
      sub_29E71C0A8(v16);
      v23 = 0;
    }

    else
    {
      sub_29E74FF78();
      (*(v21 + 8))(v16, v20);
      v23 = sub_29E754198();
    }

    v24 = v20;
    v25 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v19 healthDataSource:v17 currentCountryCode:v23];
    sub_29E751758();
    sub_29E751758();

    v26 = v71;
    sub_29E6F5CC4(v75 + v73, v71);
    v74 = v25;
    v27 = HKSPCurrentDateProvider();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v29 = HKPreferredRegulatoryDomainProvider();
    v68 = type metadata accessor for SleepApneaOnboardingFlowManager();
    v30 = swift_allocObject();
    sub_29E6F5CC4(v26, v12);
    if (v72(v12, 1, v24) == 1)
    {
      sub_29E71C0A8(v26);
      sub_29E71C0A8(v12);
      v31 = 0;
      v32 = v69;
      v33 = v70;
    }

    else
    {
      sub_29E74FF78();
      v64 = v28;
      v34 = v66;
      sub_29E74FF98();
      v62 = sub_29E74FF88();
      v35 = objc_allocWithZone(MEMORY[0x29EDBAD50]);
      v63 = v12;
      v36 = v24;
      v37 = v29;
      v38 = v35;
      v39 = sub_29E754198();

      v40 = sub_29E74EC98();
      v41 = v38;
      v29 = v37;
      v24 = v36;
      v31 = [v41 initWithISOCode:v39 timestamp:v40 provenance:v62];

      v42 = v34;
      v28 = v64;
      (*(v67 + 8))(v42, v65);
      sub_29E71C0A8(v26);
      v32 = v69;
      (*(v69 + 8))(v63, v36);
      v33 = v70;
    }

    v43 = v75;
    v30[2] = v74;
    v30[3] = v31;
    v30[4] = sub_29E71C120;
    v30[5] = v28;
    v30[6] = v29;
    v44 = *(v43 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore);
    sub_29E6F5CC4(v43 + v73, v33);
    v45 = v72(v33, 1, v24);
    v46 = v44;
    if (v45 == 1)
    {
      sub_29E71C0A8(v33);
      v47 = 0xEF65646F63207972;
      v48 = 0x746E756F63206F6ELL;
    }

    else
    {
      v48 = sub_29E74FF78();
      v49 = v32;
      v47 = v50;
      (*(v49 + 8))(v33, v24);
    }

    v51 = *(v75 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType);
    type metadata accessor for SleepApneaOnboardingAnalyticsContextManager();
    v52 = swift_allocObject();
    v53 = v46;
    swift_defaultActor_initialize();
    *(v52 + 144) = 514;
    *(v52 + 152) = 0;
    *(v52 + 112) = v53;
    *(v52 + 120) = v51;
    *(v52 + 128) = v48;
    *(v52 + 136) = v47;
    v77[3] = v68;
    v77[4] = &off_2A25004C8;
    v77[0] = v30;
    v77[5] = v53;
    v76[3] = &type metadata for SleepApneaOnboardingModel;
    v76[4] = &off_2A24FDCC8;
    v76[0] = swift_allocObject();
    sub_29E71C128(v77, v76[0] + 16);
    type metadata accessor for SleepApneaOnboardingCoordinator();
    v54 = swift_allocObject();
    v55 = sub_29E613218(v76, &type metadata for SleepApneaOnboardingModel);
    v56 = *(off_2A24FDB88 + 8);
    MEMORY[0x2A1C7C4A8](v55);
    v58 = (&v62 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    v54[5] = &type metadata for SleepApneaOnboardingModel;
    v54[6] = &off_2A24FDCC8;
    v60 = swift_allocObject();
    v54[2] = v60;
    v61 = v58[1];
    v60[1] = *v58;
    v60[2] = v61;
    v60[3] = v58[2];
    swift_unknownObjectUnownedInit();
    v54[8] = v52;
    sub_29E5FECBC(v76);

    sub_29E71C184(v77);
    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E7195BC()
{
  v1 = *v0;
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29E6B9C90(0xD00000000000001BLL, 0x800000029E760890, &v22);
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%s.%s]: Setting up navigation controller", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingStartViewController());
  sub_29E6D0E20();
  v16 = v15;
  *&v15[qword_2A1859630 + 8] = &off_2A2502E90;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_29E67905C(0, &qword_2A1A7BCE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E764160;
  *(v18 + 32) = v16;
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  v19 = v16;
  v20 = sub_29E7543D8();

  [Strong setViewControllers:v20 animated:0];
}

uint64_t sub_29E719958()
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

uint64_t type metadata accessor for SleepApneaOnboardingNavigationController()
{
  result = qword_2A185A660;
  if (!qword_2A185A660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E719AAC()
{
  sub_29E71C1F0(319, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E719B84()
{
  sub_29E5FECBC((v0 + 16));
  swift_unknownObjectUnownedDestroy();
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_29E719BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_29E7544C8();
  v6[3] = sub_29E7544B8();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_29E719CB4;

  return sub_29E719DF0(a5, a6);
}

uint64_t sub_29E719CB4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E71CE04, v5, v4);
}

uint64_t sub_29E719DF0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = *v2;
  sub_29E71C1F0(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v6 = sub_29E752098();
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v8 = *(v7 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = sub_29E7544C8();
  v3[28] = sub_29E7544B8();
  v10 = sub_29E754468();
  v3[29] = v10;
  v3[30] = v9;

  return MEMORY[0x2A1C73D48](sub_29E719F68, v10, v9);
}

uint64_t sub_29E719F68()
{
  v30 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  sub_29E752048();
  v3 = v2;
  v4 = sub_29E752088();
  v5 = sub_29E7546C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v27 = *(v0 + 184);
    v28 = *(v0 + 208);
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315650;
    v12 = sub_29E755178();
    v14 = sub_29E6B9C90(v12, v13, &v29);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29E6B9C90(0xD00000000000001DLL, 0x800000029E760960, &v29);
    *(v10 + 22) = 2080;
    ObjectType = swift_getObjectType();
    *(v0 + 304) = (*(v9 + 8))(ObjectType, v9);
    v16 = sub_29E7541F8();
    v18 = sub_29E6B9C90(v16, v17, &v29);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_29E5ED000, v4, v5, "[%s.%s]: Attempting to go to next stage from %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v10, -1, -1);

    v19 = *(v6 + 8);
    v19(v28, v27);
  }

  else
  {
    v20 = *(v0 + 208);
    v21 = *(v0 + 184);
    v22 = *(v0 + 192);

    v19 = *(v22 + 8);
    v19(v20, v21);
  }

  *(v0 + 248) = v19;
  sub_29E601938((*(v0 + 160) + 16), *(*(v0 + 160) + 40));
  v23 = swift_task_alloc();
  *(v0 + 256) = v23;
  *v23 = v0;
  v23[1] = sub_29E71A1EC;
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);

  return sub_29E60A228(v25, v24);
}

uint64_t sub_29E71A1EC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 305) = a1;

  v4 = *(v2 + 240);
  v5 = *(v2 + 232);

  return MEMORY[0x2A1C73D48](sub_29E71A314, v5, v4);
}

uint64_t sub_29E71A314()
{
  v1 = *(v0 + 305);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  ObjectType = swift_getObjectType();
  *(v0 + 264) = ObjectType;
  v5 = (*(v3 + 8))();
  *(v0 + 306) = v5;
  if (v1 == 3)
  {
    v6 = v5;
    sub_29E601938((*(v0 + 160) + 16), *(*(v0 + 160) + 40));
    v7 = sub_29E60A1A0(3);
    if (v7 != 4 && v6 == v7)
    {
      *(v0 + 272) = sub_29E601938((*(v0 + 160) + 16), *(*(v0 + 160) + 40));
      v8 = sub_29E71A67C;
      v9 = 0;
LABEL_16:

      return MEMORY[0x2A1C73D48](v8, v9, 0);
    }

    v10 = *(v0 + 160);
    sub_29E71B298(*(v0 + 306));
  }

  else
  {
    sub_29E71C244(*(v0 + 305), *(v0 + 144), *(v0 + 160), ObjectType, *(v0 + 152));
  }

  v31 = *(v0 + 144);
  *(v0 + 120) = v31;
  sub_29E60A664(0, &unk_2A185A680);
  sub_29E60A664(0, &qword_2A1856A68);
  v11 = v31;
  if (swift_dynamicCast())
  {
    sub_29E5FAEE4((v0 + 56), v0 + 16);
    v12 = *(*sub_29E601938((v0 + 16), *(v0 + 40)) + qword_2A18584B0);
    v13 = sub_29E680A7C();
    *(v0 + 307) = v13;
    if (v13 != 2)
    {
      v14 = *(*sub_29E601938((v0 + 16), *(v0 + 40)) + qword_2A18584B0);
      v15 = sub_29E680A70();
      *(v0 + 308) = v15;
      if (v15 != 2)
      {
        v9 = *(*(v0 + 160) + 64);
        *(v0 + 296) = v9;
        v8 = sub_29E71AE0C;
        goto LABEL_16;
      }
    }

    v16 = *(v0 + 224);

    sub_29E5FECBC((v0 + 16));
  }

  else
  {
    v17 = *(v0 + 224);

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_29E60A6C0(v0 + 56);
  }

  v18 = *(v0 + 306);
  v19 = *(v0 + 216);
  v20 = *(v0 + 176);
  v21 = *(v0 + 160);
  v22 = sub_29E7544F8();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);

  v23 = sub_29E7544B8();
  v24 = swift_allocObject();
  v25 = MEMORY[0x29EDCA390];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  *(v24 + 32) = v21;
  *(v24 + 40) = v18;
  *(v24 + 41) = 0x4020200u >> (8 * v18);
  sub_29E6E4804(0, 0, v20, &unk_29E76A460, v24);

  v27 = *(v0 + 200);
  v26 = *(v0 + 208);
  v28 = *(v0 + 176);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_29E71A67C()
{
  v1 = *sub_29E601938(*(v0 + 272), *(*(v0 + 272) + 24));
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = sub_29E71A718;

  return sub_29E68E734();
}

uint64_t sub_29E71A718()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_29E71AB0C;
  }

  else
  {
    v7 = sub_29E71A854;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29E71A854()
{
  v1 = *(v0 + 160);
  sub_29E71B298(*(v0 + 306));
  v24 = *(v0 + 144);
  *(v0 + 120) = v24;
  sub_29E60A664(0, &unk_2A185A680);
  sub_29E60A664(0, &qword_2A1856A68);
  v2 = v24;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v9 = *(v0 + 224);

    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_29E60A6C0(v0 + 56);
    goto LABEL_6;
  }

  v3 = (v0 + 16);
  sub_29E5FAEE4((v0 + 56), v0 + 16);
  v4 = *(*sub_29E601938((v0 + 16), *(v0 + 40)) + qword_2A18584B0);
  v5 = sub_29E680A7C();
  *(v0 + 307) = v5;
  if (v5 == 2 || (v6 = *(*sub_29E601938(v3, *(v0 + 40)) + qword_2A18584B0), v7 = sub_29E680A70(), *(v0 + 308) = v7, v7 == 2))
  {
    v8 = *(v0 + 224);

    sub_29E5FECBC(v3);
LABEL_6:
    v10 = *(v0 + 306);
    v11 = *(v0 + 216);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = sub_29E7544F8();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);

    v15 = sub_29E7544B8();
    v16 = swift_allocObject();
    v17 = MEMORY[0x29EDCA390];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    *(v16 + 32) = v13;
    *(v16 + 40) = v10;
    *(v16 + 41) = 0x4020200u >> (8 * v10);
    sub_29E6E4804(0, 0, v12, &unk_29E76A460, v16);

    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = *(v0 + 176);

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = *(*(v0 + 160) + 64);
  *(v0 + 296) = v23;

  return MEMORY[0x2A1C73D48](sub_29E71AE0C, v23, 0);
}

uint64_t sub_29E71AB0C()
{
  v36 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);

  sub_29E752048();
  v4 = v1;
  v5 = sub_29E752088();
  v6 = sub_29E7546A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v8 = *(v0 + 192);
    v33 = *(v0 + 200);
    v34 = *(v0 + 248);
    v32 = *(v0 + 184);
    v9 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315650;
    v12 = sub_29E755178();
    v14 = sub_29E6B9C90(v12, v13, &v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29E6B9C90(0xD00000000000001DLL, 0x800000029E760960, &v35);
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v15 = *(v0 + 96);
    v16 = *(*(v0 + 104) - 8);
    v17 = *(v16 + 64) + 15;
    swift_task_alloc();
    (*(v16 + 16))();
    v18 = sub_29E7541F8();
    v20 = v19;

    v21 = sub_29E6B9C90(v18, v20, &v35);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_29E5ED000, v5, v6, "[%s.%s]: Error completing onboarding %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v10, -1, -1);

    v34(v33, v32);
  }

  else
  {
    v22 = *(v0 + 248);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v25 = *(v0 + 184);

    v22(v23, v25);
  }

  v26 = *(v0 + 288);
  sub_29E71C244(2, *(v0 + 144), *(v0 + 160), *(v0 + 264), *(v0 + 152));

  v28 = *(v0 + 200);
  v27 = *(v0 + 208);
  v29 = *(v0 + 176);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_29E71AE0C()
{
  v1 = *(v0 + 296);
  *(v1 + 145) = (*(v0 + 307) & 1) == 0;
  return MEMORY[0x2A1C73D48](sub_29E71AE38, v1, 0);
}

uint64_t sub_29E71AE5C()
{
  v1 = *(v0 + 224);

  sub_29E5FECBC((v0 + 16));
  v2 = *(v0 + 306);
  v3 = *(v0 + 216);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = sub_29E7544F8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  v7 = sub_29E7544B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x29EDCA390];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v2;
  *(v8 + 41) = 0x4020200u >> (8 * v2);
  sub_29E6E4804(0, 0, v4, &unk_29E76A460, v8);

  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 176);

  v13 = *(v0 + 8);

  return v13();
}

void sub_29E71AFB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315394;
    v16 = sub_29E755178();
    v18 = sub_29E6B9C90(v16, v17, aBlock);
    v24 = v6;
    v19 = a1;
    v20 = v18;

    *(v14 + 4) = v20;
    a1 = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E760940, aBlock);
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%s.%s]: Dismissing navigation controller", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v15, -1, -1);
    v21 = v14;
    a2 = v25;
    MEMORY[0x29ED98410](v21, -1, -1);

    (*(v7 + 8))(v10, v24);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (a1)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6A1514;
    aBlock[3] = &unk_2A2502F00;
    v23 = _Block_copy(aBlock);
  }

  else
  {
    v23 = 0;
  }

  [Strong dismissViewControllerAnimated:1 completion:v23];
  _Block_release(v23);
}

void sub_29E71B298(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v43 - v11;
  sub_29E752048();
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();
  v15 = os_log_type_enabled(v13, v14);
  v45 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = v10;
    v18 = v17;
    v48 = v17;
    *v16 = 136315650;
    v19 = sub_29E755178();
    v21 = sub_29E6B9C90(v19, v20, &v48);
    v44 = v5;
    v22 = v6;
    v23 = v21;

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E760980, &v48);
    *(v16 + 22) = 2080;
    v47 = a1;
    v24 = sub_29E7541F8();
    v26 = sub_29E6B9C90(v24, v25, &v48);

    *(v16 + 24) = v26;
    v6 = v22;
    v5 = v44;
    _os_log_impl(&dword_29E5ED000, v13, v14, "[%s.%s]: Going to next stage from %s", v16, 0x20u);
    swift_arrayDestroy();
    v27 = v18;
    v10 = v46;
    MEMORY[0x29ED98410](v27, -1, -1);
    MEMORY[0x29ED98410](v16, -1, -1);
  }

  v28 = *(v6 + 8);
  v28(v12, v5);
  sub_29E601938(v2 + 2, v2[5]);
  v29 = sub_29E60A118(a1);
  if (v29 == 4)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v31 = sub_29E754828();

    if (v31)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      *(v32 + 24) = v31;

      v33 = v31;
      sub_29E71AFB8(sub_29E71C994, v32);
    }

    else
    {
      sub_29E752068();
      v34 = sub_29E752088();
      v35 = sub_29E7546A8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v46 = v10;
        v37 = v36;
        v38 = swift_slowAlloc();
        v48 = v38;
        *v37 = 136446210;
        v39 = sub_29E755178();
        v41 = sub_29E6B9C90(v39, v40, &v48);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_29E5ED000, v34, v35, "[%{public}s]: Health store is nil, cannot navigate to breathing disturbances room, just dismissing", v37, 0xCu);
        sub_29E5FECBC(v38);
        MEMORY[0x29ED98410](v38, -1, -1);
        MEMORY[0x29ED98410](v37, -1, -1);

        v42 = v46;
      }

      else
      {

        v42 = v10;
      }

      v28(v42, v5);
      sub_29E71AFB8(0, 0);
    }
  }

  else
  {
    sub_29E71BB5C(v29, a1);
  }
}

uint64_t sub_29E71B6E8(void *a1)
{
  v3 = *v1;
  v4 = sub_29E74EAF8();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v45 - v14;
  sub_29E752068();
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  v18 = os_log_type_enabled(v16, v17);
  v47 = v3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v46 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = v7;
    v22 = a1;
    v23 = v21;
    v50 = v21;
    *v20 = 136446210;
    v24 = sub_29E755178();
    v26 = v13;
    v27 = v9;
    v28 = sub_29E6B9C90(v24, v25, &v50);

    *(v20 + 4) = v28;
    v9 = v27;
    v13 = v26;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s]: Attempting to navigate to breathing disturbances room", v20, 0xCu);
    sub_29E5FECBC(v23);
    v29 = v23;
    a1 = v22;
    v7 = v45;
    MEMORY[0x29ED98410](v29, -1, -1);
    v30 = v20;
    v8 = v46;
    MEMORY[0x29ED98410](v30, -1, -1);
  }

  v31 = *(v9 + 8);
  v31(v15, v8);
  v32 = [a1 profileIdentifier];
  v33 = [objc_allocWithZone(MEMORY[0x29EDC1560]) initWithProfileIdentifier_];

  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v34 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v35 = [v33 URLForDataTypeDetailWithObjectType_];

  if (v35)
  {
    sub_29E74EAD8();

    sub_29E74EAB8();
    return (*(v48 + 8))(v7, v49);
  }

  else
  {
    sub_29E752068();
    v37 = sub_29E752088();
    v38 = sub_29E7546A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136446210;
      v41 = sub_29E755178();
      v49 = v13;
      v43 = sub_29E6B9C90(v41, v42, &v50);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_29E5ED000, v37, v38, "[%{public}s]: Failed to create URL for breathing disturbances room", v39, 0xCu);
      sub_29E5FECBC(v40);
      MEMORY[0x29ED98410](v40, -1, -1);
      MEMORY[0x29ED98410](v39, -1, -1);

      v44 = v49;
    }

    else
    {

      v44 = v13;
    }

    return (v31)(v44, v8);
  }
}

void sub_29E71BB5C(unsigned __int8 a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = a2;
    v15 = v14;
    v41 = swift_slowAlloc();
    v45 = v41;
    *v15 = 136315906;
    v16 = sub_29E755178();
    v18 = sub_29E6B9C90(v16, v17, &v45);
    v42 = v7;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_29E6B9C90(0xD00000000000001ALL, 0x800000029E7609A0, &v45);
    *(v15 + 22) = 2080;
    v44 = a1;
    v20 = sub_29E7541F8();
    v22 = sub_29E6B9C90(v20, v21, &v45);

    *(v15 + 24) = v22;
    *(v15 + 32) = 2080;
    v43 = v40;
    v23 = sub_29E7541F8();
    v25 = sub_29E6B9C90(v23, v24, &v45);

    *(v15 + 34) = v25;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%s.%s]: Showing next stage %s from previous stage %s", v15, 0x2Au);
    v26 = v41;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v26, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);

    (*(v8 + 8))(v11, v42);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v27 = sub_29E601938(v3 + 2, v3[5]);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v32 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingEducationViewController());
      v30 = sub_29E6C7308(1);
      v31 = &off_2A25017D8;
    }

    else
    {
      v35 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingSetupCompleteViewController());
      v30 = sub_29E696028();
      v31 = &off_2A2500A68;
    }
  }

  else if (a1)
  {
    v33 = v27[5];
    v34 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController());
    v30 = sub_29E676E34(v33);
    v31 = &off_2A25000D0;
  }

  else
  {
    v28 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingStartViewController());
    sub_29E6D0E20();
    v30 = v29;
    v31 = &off_2A2501AE8;
  }

  swift_getObjectType();
  v36 = v31[3];
  v37 = swift_unknownObjectRetain();
  v36(v37, &off_2A2502E90);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong showViewController:v30 sender:0];
}

uint64_t sub_29E71BF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 57) = a6;
  *(v6 + 56) = a5;
  *(v6 + 16) = a4;
  sub_29E7544C8();
  *(v6 + 24) = sub_29E7544B8();
  v8 = sub_29E754468();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;

  return MEMORY[0x2A1C73D48](sub_29E71BFB8, v8, v7);
}

uint64_t sub_29E71BFB8()
{
  v1 = *(*(v0 + 16) + 64);
  *(v0 + 48) = v1;
  return MEMORY[0x2A1C73D48](sub_29E71BFDC, v1, 0);
}

uint64_t sub_29E71BFDC()
{
  v1 = *(v0 + 48);
  sub_29E73CFD8(*(v0 + 56), *(v0 + 57));
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return MEMORY[0x2A1C73D48](sub_29E71C048, v2, v3);
}

uint64_t sub_29E71C048()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E71C0A8(uint64_t a1)
{
  sub_29E71C1F0(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E71C1D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E71C1F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E71C244(char a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v63 = a2;
  v65 = a4;
  v66 = 0xD000000000000017;
  v64 = a3;
  v6 = *a3;
  v7 = sub_29E74F698();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74F8B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E752098();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v20 = sub_29E752088();
  v21 = sub_29E7546C8();
  v22 = os_log_type_enabled(v20, v21);
  v58 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v57 = v11;
    v25 = v24;
    v68 = v24;
    *v23 = 136315650;
    v26 = sub_29E755178();
    v28 = sub_29E6B9C90(v26, v27, &v68);
    v56 = v15;
    v29 = a1;
    v30 = v28;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_29E6B9C90(0xD000000000000017, 0x800000029E75B880, &v68);
    *(v23 + 22) = 2080;
    v67 = v29;
    v31 = sub_29E7541F8();
    v33 = sub_29E6B9C90(v31, v32, &v68);

    *(v23 + 24) = v33;
    a1 = v29;
    _os_log_impl(&dword_29E5ED000, v20, v21, "[%s.%s]: Showing blocking alert due to reason %s", v23, 0x20u);
    swift_arrayDestroy();
    v34 = v25;
    v11 = v57;
    MEMORY[0x29ED98410](v34, -1, -1);
    MEMORY[0x29ED98410](v23, -1, -1);

    (*(v16 + 8))(v19, v56);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  if (!a1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v57 = sub_29E74F7C8();
    v36 = v38;
    v37 = "ONBOARDING_ALERT_AGE_TOO_LOW";
    v39 = 0xD000000000000014;
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v57 = sub_29E74F7C8();
    v36 = v40;
    v37 = "_UNKNOWN_COMPLETION_ERROR";
    v39 = 0xD000000000000012;
LABEL_15:
    v66 = v39;
    goto LABEL_16;
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v57 = sub_29E74F7C8();
  v36 = v35;
  v37 = "_NO_SLEEP_APNEA_DIAGNOSIS";
LABEL_16:
  v41 = *(v11 + 8);
  v42 = v58;
  v41(v14, v58);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v41(v14, v42);
  v43 = sub_29E754198();

  v44 = [objc_opt_self() actionWithTitle:v43 style:1 handler:0];

  v46 = v59;
  v45 = v60;
  v47 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x29EDC6AC0], v61);
  sub_29E67905C(0, &qword_2A1A7BCF0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29E762F30;
  *(v48 + 32) = v66;
  *(v48 + 40) = v37 | 0x8000000000000000;
  v49 = sub_29E754238();
  v51 = v50;

  (*(v45 + 8))(v46, v47);
  sub_29E67905C(0, &qword_2A1A7BCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  *(inited + 32) = v44;
  v53 = v44;
  sub_29E71C9BC(v57, v36, inited, v63, v49, v51, v64, v65, v62);

  swift_setDeallocating();
  v54 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_29E71C994()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_29E71B6E8(v1);
}

void sub_29E71C9BC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v48 = a5;
  v49 = a6;
  v50 = a3;
  v45 = *a7;
  v46 = a8;
  v12 = sub_29E752098();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v17 = a4;
  v18 = sub_29E752088();
  v19 = sub_29E7546C8();

  if (os_log_type_enabled(v18, v19))
  {
    v43 = v12;
    v20 = swift_slowAlloc();
    v44 = a1;
    v21 = v20;
    v52 = swift_slowAlloc();
    v42[1] = a2;
    v22 = v52;
    *v21 = 136315650;
    v23 = sub_29E755178();
    v25 = sub_29E6B9C90(v23, v24, &v52);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_29E6B9C90(0xD000000000000050, 0x800000029E75B8E0, &v52);
    *(v21 + 22) = 2080;
    v51 = (*(a9 + 8))(v46, a9);
    v26 = sub_29E7541F8();
    v28 = sub_29E6B9C90(v26, v27, &v52);

    *(v21 + 24) = v28;
    _os_log_impl(&dword_29E5ED000, v18, v19, "[%s.%s]: Presenting alert from stage %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v22, -1, -1);
    MEMORY[0x29ED98410](v21, -1, -1);

    (*(v13 + 8))(v16, v43);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v29 = sub_29E754198();
  v30 = [objc_opt_self() alertControllerWithTitle:v29 message:0 preferredStyle:1];

  v31 = v50;
  v47 = v17;
  if (v50 >> 62)
  {
    goto LABEL_17;
  }

  v32 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32)
  {
    do
    {
      v33 = 0;
      v34 = v31 & 0xC000000000000001;
      v35 = v31 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v34)
        {
          v37 = MEMORY[0x29ED976A0](v33);
        }

        else
        {
          if (v33 >= *(v35 + 16))
          {
            goto LABEL_16;
          }

          v37 = *(v31 + 8 * v33 + 32);
        }

        v38 = v37;
        v39 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        sub_29E7544C8();
        sub_29E7544B8();
        sub_29E754468();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v36 = sub_29E754198();
        [v38 setAccessibilityIdentifier_];

        [v30 addAction_];

        ++v33;
        v31 = v50;
        if (v39 == v32)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v40 = v31;
      v41 = sub_29E754C98();
      v31 = v40;
      v32 = v41;
    }

    while (v41);
  }

LABEL_18:
  [v47 presentViewController:v30 animated:1 completion:0];
}

void sub_29E71CE08()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setBackgroundView_];

  v2 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setSelectedBackgroundView_];
}

uint64_t sub_29E71D07C()
{
  v1 = v0;
  v2 = sub_29E750698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v18 - v8;
  v10 = type metadata accessor for SleepCollectionViewListCell();
  v18.receiver = v0;
  v18.super_class = v10;
  objc_msgSendSuper2(&v18, sel_didMoveToSuperview);
  v11 = [v0 viewController];
  if (v11)
  {
    v12 = v11;
    sub_29E754848();

    (*(v3 + 32))(v9, v7, v2);
  }

  else
  {
    (*(v3 + 104))(v9, *MEMORY[0x29EDC1D20], v2);
  }

  v13 = sub_29E750678();
  [v1 setBackgroundColor_];

  v14 = [v1 selectedBackgroundView];
  if (v14)
  {
    v15 = v14;
    v16 = sub_29E750668();
    [v15 setBackgroundColor_];
  }

  return (*(v3 + 8))(v9, v2);
}

id sub_29E71D314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepCollectionViewListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E71D36C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v1)
  {
    swift_getObjectType();
    v3 = v1;
    sub_29E750B48();
    if (v8)
    {
      sub_29E609CF8(0, &qword_2A1858310);
      sub_29E609CF8(0, &qword_2A185A6A0);
      if (swift_dynamicCast())
      {
        if (*(&v10 + 1))
        {
          sub_29E5FAEE4(&v9, v12);
          sub_29E601938(v12, v12[3]);
          sub_29E750B68();

          return sub_29E5FECBC(v12);
        }
      }

      else
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
      }
    }

    else
    {

      sub_29E60BC9C(v7, &qword_2A1856AD0, &qword_2A1858310);
      v9 = 0u;
      v10 = 0u;
      v11 = 0;
    }

    sub_29E60BC9C(&v9, &qword_2A185A698, &qword_2A185A6A0);
  }

  v5 = *MEMORY[0x29EDC22C8];
  v6 = sub_29E750DC8();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_29E71D54C()
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && v0)
  {
    swift_getObjectType();
    v2 = v0;
    sub_29E750B48();
    if (v4)
    {
      sub_29E609CF8(0, &qword_2A1858310);
      sub_29E609CF8(0, &qword_2A185A6A0);
      if (swift_dynamicCast())
      {
        if (*(&v6 + 1))
        {
          sub_29E5FAEE4(&v5, v8);
          sub_29E601938(v8, v8[3]);
          sub_29E750B58();

          return sub_29E5FECBC(v8);
        }
      }

      else
      {
        v7 = 0;
        v5 = 0u;
        v6 = 0u;
      }
    }

    else
    {

      sub_29E60BC9C(v3, &qword_2A1856AD0, &qword_2A1858310);
      v5 = 0u;
      v6 = 0u;
      v7 = 0;
    }

    return sub_29E60BC9C(&v5, &qword_2A185A698, &qword_2A185A6A0);
  }

  return result;
}

uint64_t type metadata accessor for NextOccurrenceDataSource()
{
  result = qword_2A185A6C0;
  if (!qword_2A185A6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E71D7C8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v46 = a5;
  sub_29E6212E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C();
  v14 = *(v13 - 8);
  v52 = v13;
  v53 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v47 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E71E21C();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v17);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v45 - v24;
  ScheduleOccurrenceSection = type metadata accessor for NextScheduleOccurrenceSection(0);
  v27 = *(ScheduleOccurrenceSection + 48);
  v28 = *(ScheduleOccurrenceSection + 52);
  swift_allocObject();
  v29 = a1;
  v48 = v29;
  v49 = a2;

  v30 = a3;
  v50 = v30;
  v51 = a4;
  sub_29E65B5E4(v29, a2, v30, v51);
  v31 = v46;
  sub_29E7527B8();
  if ((v55 & BYTE2(v55)) & BYTE1(v55))
  {
    v32 = MEMORY[0x29EDC2000];
  }

  else
  {
    v32 = MEMORY[0x29EDC1FF8];
  }

  (*(v19 + 104))(v25, *v32, v18);
  OccurrenceDataSource = type metadata accessor for NextOccurrenceDataSource();
  v34 = *(OccurrenceDataSource + 48);
  v35 = *(OccurrenceDataSource + 52);
  *(swift_allocObject() + qword_2A185A6A8) = MEMORY[0x29EDCA1A0];
  (*(v19 + 16))(v23, v25, v18);

  v36 = sub_29E750918();
  (*(v19 + 8))(v25, v18);
  v55 = v31;
  v37 = v31;
  sub_29E602DD4();
  swift_retain_n();
  v38 = sub_29E754908();
  v56 = v38;
  v39 = sub_29E7548D8();
  (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
  sub_29E621428();
  sub_29E71E288(&qword_2A18572A8, sub_29E621428);
  sub_29E71E288(&qword_2A18568B8, sub_29E602DD4);
  v40 = v47;
  sub_29E752968();
  sub_29E6214E8(v12);

  v41 = swift_allocObject();
  swift_weakInit();

  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = v37;
  v42[4] = v54;
  sub_29E71E288(&qword_2A18572B8, sub_29E62133C);

  v43 = v52;
  sub_29E7529A8();

  (*(v53 + 8))(v40, v43);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  return v36;
}

uint64_t sub_29E71DD18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  type metadata accessor for NextOccurrenceDataSource();
  v6 = v2;

  v7 = v3;
  v8 = v4;

  sub_29E71D7C8(v6, v1, v7, v8, v5);
  sub_29E71E288(&qword_2A185A6D0, type metadata accessor for NextOccurrenceDataSource);
  sub_29E750828();

  v9 = sub_29E750818();

  return v9;
}

uint64_t sub_29E71DE1C()
{
  sub_29E71E21C();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E7527B8();
    if ((v8[5] & v8[7]) & v8[6])
    {
      v6 = MEMORY[0x29EDC2000];
    }

    else
    {
      v6 = MEMORY[0x29EDC1FF8];
    }

    (*(v2 + 104))(v5, *v6, v1);
    sub_29E750908();
  }
}

uint64_t sub_29E71DFD0(uint64_t a1, uint64_t a2)
{
  sub_29E71E21C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  *(swift_allocObject() + qword_2A185A6A8) = MEMORY[0x29EDCA1A0];
  (*(v6 + 16))(v9, a2, v5);
  v12 = sub_29E750918();
  (*(v6 + 8))(a2, v5);
  return v12;
}

uint64_t sub_29E71E104()
{
  v0 = *(sub_29E750938() + qword_2A185A6A8);

  return swift_deallocClassInstance();
}

uint64_t sub_29E71E15C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29E71E1A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_29E71E21C()
{
  if (!qword_2A185A6D8)
  {
    type metadata accessor for NextScheduleOccurrenceSection(255);
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A6D8);
    }
  }
}

uint64_t sub_29E71E27C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_29E71DE1C();
}

uint64_t sub_29E71E288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E71E378@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7274CC();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E726780();
  v10 = v9;
  sub_29E727F9C(255, &qword_2A1A7C108, MEMORY[0x29EDB85F8]);
  sub_29E752338();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(v8, *a1, v10);
  v13 = *(v5 + 56);
  v12(&v8[v13], a1[1], v10);
  sub_29E726870();
  v15 = v14;
  sub_29E726D94();
  v16 = *(v5 + 72);
  v17 = a1[2];
  v18 = *(v15 - 8);
  (*(v18 + 16))(&v8[v16], v17, v15);
  v19 = *(v11 + 32);
  v19(a2, v8, v10);
  v19(a2 + *(v5 + 56), &v8[v13], v10);
  return (*(v18 + 32))(a2 + *(v5 + 72), &v8[v16], v15);
}

uint64_t sub_29E71E5A8@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  sub_29E727F24(0, a2, a3);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v28 - v12;
  v14 = a4(0);
  a5();
  v15 = *a1;
  v16 = a1;
  v28 = v14;
  v17 = *(v14 - 8);
  (*(v17 + 16))(v13, v15, v14);
  sub_29E6AD088();
  v19 = v18;
  sub_29E727F9C(255, &qword_2A1858DA0, MEMORY[0x29EDB86E8]);
  sub_29E752568();
  v20 = *(v10 + 56);
  v21 = a1[1];
  v22 = *(v19 - 8);
  v23 = *(v22 + 16);
  v23(&v13[v20], v21, v19);
  v24 = *(v10 + 72);
  v23(&v13[v24], v16[2], v19);
  v25 = v29;
  (*(v17 + 32))(v29, v13, v28);
  v26 = *(v22 + 32);
  v26(v25 + *(v10 + 56), &v13[v20], v19);
  return (v26)(v25 + *(v10 + 72), &v13[v24], v19);
}

uint64_t sub_29E71E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29E7250E8;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  [v7 initWithDynamicProvider_];
  _Block_release(v8);

  result = sub_29E7538E8();
  *a4 = result;
  return result;
}

id sub_29E71E8D8(void *a1, SEL *a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = &selRef_systemGray4Color;
  if (v3 != 2)
  {
    v5 = a2;
  }

  v6 = [v4 *v5];

  return v6;
}

uint64_t sub_29E71E940()
{
  v0 = [objc_opt_self() hk_respiratoryKeyColor];
  result = sub_29E7538E8();
  qword_2A185A6F0 = result;
  return result;
}

uint64_t sub_29E71E980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_29E725A50(0, &qword_2A185A718, sub_29E725ABC, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  v47 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v46 - v8;
  sub_29E725164(0, &qword_2A1A7BE28, sub_29E7259A0, MEMORY[0x29EDBCC28]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = (&v46 - v15);
  sub_29E725964(0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v46 - v23;
  sub_29E7544C8();
  v48 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *(a1 + *(type metadata accessor for BreathingDisturbancesHighlightView(0) + 20));

  sub_29E750F18();
  v26 = sub_29E7533C8();
  sub_29E7529C8();
  v27 = &v24[*(v18 + 36)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_29E71ED90(v16);
  sub_29E71F5E4(v9);
  v32 = sub_29E7533C8();
  sub_29E7529C8();
  v33 = &v9[*(v47 + 9)];
  *v33 = v32;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_29E7272C8(v24, v22, sub_29E725964);
  v38 = MEMORY[0x29EDBCC28];
  sub_29E727240(v16, v14, &qword_2A1A7BE28, sub_29E7259A0, MEMORY[0x29EDBCC28]);
  sub_29E5F96E8(v9, v7);
  v39 = v22;
  v47 = v22;
  v40 = v14;
  v41 = v7;
  v42 = v49;
  sub_29E7272C8(v39, v49, sub_29E725964);
  sub_29E725874();
  v44 = v43;
  sub_29E727240(v40, v42 + *(v43 + 48), &qword_2A1A7BE28, sub_29E7259A0, v38);
  sub_29E5F96E8(v41, v42 + *(v44 + 64));
  sub_29E5F9784(v9);
  sub_29E727558(v16, &qword_2A1A7BE28, sub_29E7259A0, v38);
  sub_29E727330(v24, sub_29E725964);
  sub_29E5F9784(v41);
  sub_29E727558(v40, &qword_2A1A7BE28, sub_29E7259A0, v38);
  sub_29E727330(v47, sub_29E725964);
}

uint64_t sub_29E71ED90@<X0>(_OWORD *a1@<X8>)
{
  v95 = a1;
  v94 = MEMORY[0x29EDBC990];
  v93 = MEMORY[0x29EDC9C68];
  sub_29E725164(0, &qword_2A1A7BE80, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v92 = &v87[-v4];
  sub_29E6C3B78(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v100 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v87[-v10];
  v12 = sub_29E752F48();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  sub_29E752F38();
  sub_29E752F28();
  v14 = (v1 + *(type metadata accessor for BreathingDisturbancesHighlightView(0) + 20));
  v15 = v14[1];
  v16 = v14[2];
  sub_29E752F18();
  sub_29E752F28();
  sub_29E752F68();
  v17 = sub_29E7535E8();
  v19 = v18;
  v21 = v20;
  sub_29E753428();
  sub_29E753478();
  sub_29E7534C8();

  v102 = sub_29E7535D8();
  v101 = v22;
  v24 = v23;
  v97 = v25;

  sub_29E60DB44(v17, v19, v21 & 1);

  v99 = sub_29E7533C8();
  sub_29E7529C8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v98 = v24 & 1;
  LOBYTE(v110) = v24 & 1;
  LOBYTE(v106) = 0;
  v96 = v11;
  sub_29E753AF8();
  LOBYTE(v17) = sub_29E7533C8();
  sub_29E7529C8();
  v34 = &v11[*(v6 + 44)];
  *v34 = v17;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  sub_29E752F38();
  sub_29E752F28();
  v39 = v14[3];
  v40 = v14[4];
  sub_29E752F18();
  sub_29E752F28();
  sub_29E752F68();
  v41 = sub_29E7535E8();
  v43 = v42;
  v45 = v44;
  sub_29E753438();
  sub_29E753478();
  sub_29E7534C8();

  v46 = sub_29E7535D8();
  v48 = v47;
  LOBYTE(v19) = v49;

  sub_29E60DB44(v41, v43, v45 & 1);

  v50 = *MEMORY[0x29EDBC988];
  v51 = sub_29E753448();
  v52 = *(v51 - 8);
  v53 = v92;
  (*(v52 + 104))(v92, v50, v51);
  (*(v52 + 56))(v53, 0, 1, v51);
  v90 = sub_29E753588();
  v89 = v54;
  v88 = v55;
  v91 = v56;
  sub_29E60DB44(v46, v48, v19 & 1);

  sub_29E727558(v53, &qword_2A1A7BE80, v94, v93);
  v57 = v14[5];
  v58 = v14[6];
  v110 = sub_29E754218();
  v111 = v59;
  sub_29E60DE10();
  v60 = sub_29E753608();
  v62 = v61;
  LOBYTE(v19) = v63;
  sub_29E7534F8();
  sub_29E753478();
  sub_29E7534C8();

  v64 = sub_29E7535D8();
  v66 = v65;
  LOBYTE(v52) = v67;

  sub_29E60DB44(v60, v62, v19 & 1);

  sub_29E753968();
  v68 = sub_29E7535A8();
  v70 = v69;
  LOBYTE(v60) = v71;
  v73 = v72;

  sub_29E60DB44(v64, v66, v52 & 1);

  v74 = v100;
  sub_29E7272C8(v96, v100, sub_29E6C3B78);
  LOBYTE(v64) = v88 & 1;
  v103 = v88 & 1;
  *&v106 = v102;
  *(&v106 + 1) = v101;
  LOBYTE(v107) = v98;
  *(&v107 + 1) = *v105;
  DWORD1(v107) = *&v105[3];
  *(&v107 + 1) = v97;
  LOBYTE(v108) = v99;
  *(&v108 + 1) = *v104;
  DWORD1(v108) = *&v104[3];
  *(&v108 + 1) = v27;
  *v109 = v29;
  *&v109[8] = v31;
  *&v109[16] = v33;
  v109[24] = 0;
  v75 = v106;
  v76 = v107;
  v77 = v95;
  *(v95 + 57) = *&v109[9];
  v78 = *v109;
  v77[2] = v108;
  v77[3] = v78;
  *v77 = v75;
  v77[1] = v76;
  v79 = v77;
  sub_29E7259A0();
  v81 = v80;
  sub_29E7272C8(v74, v79 + *(v80 + 48), sub_29E6C3B78);
  v82 = v79 + *(v81 + 64);
  v83 = v90;
  v84 = v89;
  *v82 = v90;
  *(v82 + 1) = v84;
  v82[16] = v64;
  *(v82 + 3) = v91;
  v85 = v79 + *(v81 + 80);
  *v85 = v68;
  *(v85 + 1) = v70;
  LOBYTE(v60) = v60 & 1;
  v85[16] = v60;
  *(v85 + 3) = v73;
  sub_29E7275B4(&v106, &v110);
  sub_29E62935C(v83, v84, v64);

  sub_29E62935C(v68, v70, v60);

  sub_29E727330(v96, sub_29E6C3B78);
  sub_29E60DB44(v68, v70, v60);

  sub_29E60DB44(v83, v84, v103);

  sub_29E727330(v100, sub_29E6C3B78);
  v110 = v102;
  v111 = v101;
  v112 = v98;
  *v113 = *v105;
  *&v113[3] = *&v105[3];
  v114 = v97;
  v115 = v99;
  *v116 = *v104;
  *&v116[3] = *&v104[3];
  v117 = v27;
  v118 = v29;
  v119 = v31;
  v120 = v33;
  v121 = 0;
  return sub_29E727644(&v110);
}

uint64_t sub_29E71F5E4@<X0>(uint64_t a1@<X8>)
{
  v146 = a1;
  v145 = sub_29E752438();
  v144 = *(v145 - 8);
  v2 = *(v144 + 64);
  MEMORY[0x2A1C7C4A8](v145);
  v143 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725164(0, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v142 = &v116 - v6;
  sub_29E6AC8E0();
  v133 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v131 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v128 = &v116 - v11;
  sub_29E6AC948();
  v141 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v140 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7266A8();
  v149 = v15;
  v148 = *(v15 - 8);
  v16 = *(v148 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v147 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7265F4();
  v155 = v18;
  v152 = *(v18 - 8);
  v19 = *(v152 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v150 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7264C0();
  v157 = v21;
  v154 = *(v21 - 1);
  v22 = *(v154 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v151 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E726354();
  v158 = v24;
  v156 = *(v24 - 1);
  v25 = *(v156 + 8);
  MEMORY[0x2A1C7C4A8](v24);
  v153 = (&v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7261B8();
  v126 = v27;
  v124 = *(v27 - 8);
  v28 = *(v124 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v159 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725FCC();
  v129 = v30;
  v127 = *(v30 - 8);
  v31 = *(v127 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v125 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725D88();
  v134 = v33;
  v132 = *(v33 - 8);
  v34 = *(v132 + 64);
  MEMORY[0x2A1C7C4A8](v33);
  v130 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725AF8();
  v139 = v36;
  v138 = *(v36 - 8);
  v37 = *(v138 + 64);
  MEMORY[0x2A1C7C4A8](v36);
  v136 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725ABC(0);
  v135 = v39;
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v137 = &v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29E74ED28();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x2A1C7C4A8](v42);
  v47 = &v116 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45);
  v49 = &v116 - v48;
  v123 = type metadata accessor for BreathingDisturbancesHighlightView(0);
  v50 = *(v123 + 20);
  v161 = v1;
  v51 = v1 + v50;
  v52 = *(type metadata accessor for BreathingDisturbancesHighlightDataModel(0) + 44);
  sub_29E74EC78();
  v162 = v43;
  v53 = *(v43 + 16);
  v160 = v42;
  v119 = v53;
  v118 = v43 + 16;
  v53(v47, (v51 + v52), v42);
  if (qword_2A1856238 != -1)
  {
    swift_once();
  }

  v54 = v47;
  v163 = sub_29E753948();
  v55 = *(v51 + 24);
  v56 = *(v51 + 32);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  if (v55 == sub_29E74E9D8() && v56 == v57)
  {

    v58 = v163;
  }

  else
  {
    v59 = sub_29E755028();

    v58 = v163;
    if ((v59 & 1) == 0)
    {
      if (qword_2A1856228 != -1)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  while (1)
  {
    v60 = v58;

    if (v55 == sub_29E74E9D8() && v56 == v61)
    {
    }

    else
    {
      v62 = sub_29E755028();

      if ((v62 & 1) == 0 && qword_2A1856228 != -1)
      {
        swift_once();
      }
    }

    v122 = &v116;
    v64 = MEMORY[0x2A1C7C4A8](v63);
    v120 = v60;
    v121 = v64;
    sub_29E72670C();
    sub_29E726C70();
    v65 = v147;
    sub_29E752488();
    v66 = sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8);
    v67 = v150;
    v68 = v149;
    sub_29E753698();
    v69 = (*(v148 + 8))(v65, v68);
    MEMORY[0x2A1C7C4A8](v69);
    sub_29E726ECC();
    v71 = v70;
    *&v165 = v68;
    *(&v165 + 1) = v66;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC);
    v74 = v151;
    v56 = v155;
    sub_29E753678();
    (*(v152 + 8))(v67, v56);
    sub_29E753368();
    *&v165 = v56;
    *(&v165 + 1) = v71;
    *&v166 = OpaqueTypeConformance2;
    *(&v166 + 1) = v73;
    v75 = swift_getOpaqueTypeConformance2();
    v76 = v153;
    v77 = v157;
    sub_29E7536D8();
    (*(v154 + 8))(v74, v77);
    *&v165 = v77;
    *(&v165 + 1) = v75;
    v78 = swift_getOpaqueTypeConformance2();
    v79 = v158;
    sub_29E753788();
    (*(v156 + 1))(v76, v79);
    sub_29E7250A0(&qword_2A1A7CFC8, MEMORY[0x29EDB9BC8]);
    v55 = v160;
    if (sub_29E7540E8())
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
LABEL_10:
    v58 = qword_2A185A6E0;
  }

  v80 = v128;
  v153 = v78;
  v117 = v54;
  v81 = v119;
  v119(v128, v49, v55);
  v82 = v133;
  v81(v80 + *(v133 + 48), v54, v55);
  v83 = v131;
  sub_29E7272C8(v80, v131, sub_29E6AC8E0);
  v84 = *(v82 + 48);
  v157 = v49;
  v85 = v162;
  v86 = *(v162 + 32);
  v87 = v140;
  v86();
  v88 = *(v85 + 8);
  v88(v83 + v84, v55);
  v156 = v88;
  v162 = v85 + 8;
  sub_29E727390(v80, v83, sub_29E6AC8E0);
  v89 = v141;
  v90 = v87;
  (v86)(&v87[*(v141 + 36)], v83 + *(v82 + 48), v55);
  v88(v83, v55);
  v91 = sub_29E7525D8();
  v92 = *(v91 - 8);
  v154 = *(v92 + 56);
  v155 = v92 + 56;
  v93 = v142;
  (v154)(v142, 1, 1, v91);
  *&v165 = v158;
  *(&v165 + 1) = v153;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = sub_29E6AE1DC();
  v96 = v125;
  v97 = v126;
  v98 = v159;
  sub_29E7536A8();
  v158 = MEMORY[0x29EDB8710];
  v153 = MEMORY[0x29EDC9C68];
  sub_29E727558(v93, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  sub_29E727330(v90, sub_29E6AC948);
  (*(v124 + 8))(v98, v97);
  v164 = *(v161 + *(v123 + 32));
  *&v165 = v97;
  *(&v165 + 1) = v89;
  *&v166 = v94;
  *(&v166 + 1) = v95;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = MEMORY[0x29EDC9BA8];
  v101 = MEMORY[0x29EDC9BE0];
  v102 = v130;
  v103 = v129;
  sub_29E7536E8();
  (*(v127 + 8))(v96, v103);
  v104 = v143;
  sub_29E752428();
  (v154)(v93, 1, 1, v91);
  *&v165 = v103;
  *(&v165 + 1) = v100;
  *&v166 = v99;
  *(&v166 + 1) = MEMORY[0x29EDB87A0];
  *&v167 = v101;
  swift_getOpaqueTypeConformance2();
  v105 = v136;
  v106 = v134;
  v107 = v145;
  sub_29E7536B8();
  sub_29E727558(v93, &qword_2A1A7C090, v158, v153);
  (*(v144 + 8))(v104, v107);
  (*(v132 + 8))(v102, v106);
  sub_29E753C48();
  sub_29E752CA8();

  v108 = v137;
  (*(v138 + 32))(v137, v105, v139);
  v109 = (v108 + *(v135 + 36));
  v110 = v170;
  v109[4] = v169;
  v109[5] = v110;
  v109[6] = v171;
  v111 = v166;
  *v109 = v165;
  v109[1] = v111;
  v112 = v168;
  v109[2] = v167;
  v109[3] = v112;
  sub_29E5F9818(v108, v146);
  v113 = v160;
  v114 = v156;
  v156(v117, v160);
  return v114(v157, v113);
}

uint64_t sub_29E7208A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, double a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a5;
  v107 = a4;
  v125 = a3;
  v122 = a2;
  v116 = a6;
  sub_29E726870();
  v118 = v7;
  v117 = *(v7 - 8);
  v8 = *(v117 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v115 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v114 = v97 - v11;
  v126 = sub_29E752F78();
  v131 = *(v126 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x2A1C7C4A8](v126);
  v108 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727478(0, &qword_2A1A7C0D0, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v124 = v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = v97 - v18;
  sub_29E725A50(0, &qword_2A1A7C0D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v24 = v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = v97 - v25;
  v121 = sub_29E752338();
  v129 = *(v121 - 8);
  v27 = *(v129 + 64);
  MEMORY[0x2A1C7C4A8](v121);
  v99 = v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727F9C(0, &qword_2A1A7C108, MEMORY[0x29EDB85F8]);
  v123 = v29;
  v130 = *(v29 - 8);
  v30 = *(v130 + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v98 = v97 - v31;
  sub_29E726780();
  v113 = v32;
  v112 = *(v32 - 8);
  v33 = *(v112 + 64);
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v111 = (v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v128 = v97 - v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v127 = v97 - v39;
  MEMORY[0x2A1C7C4A8](v38);
  v132 = v97 - v40;
  sub_29E7544C8();
  v109 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
  [v41 _value];
  v43 = v42;

  v120 = a1 + *(type metadata accessor for BreathingDisturbancesHighlightView(0) + 20);
  v44 = *(v120 + 64);
  v45 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
  [v45 &selRef_maxYValue];
  v47 = v46;

  if (v44 > v47 + 11.0)
  {
    v48 = v44;
  }

  else
  {
    v48 = v47 + 11.0;
  }

  sub_29E752F58();
  v49 = sub_29E74ED28();
  v119 = v26;
  v50 = v49;
  sub_29E7523D8();

  sub_29E752F58();
  v97[1] = v24;
  sub_29E7523D8();

  sub_29E752F58();
  v134 = v43 + 0.5;
  v97[2] = v19;
  sub_29E7523D8();

  sub_29E752F58();
  v134 = v48;
  sub_29E7523D8();

  v51 = v99;
  v52 = v50;
  sub_29E752328();
  v134 = v107;
  v53 = v98;
  v54 = v121;
  v55 = MEMORY[0x29EDBCA98];
  v56 = MEMORY[0x29EDB85F0];
  v57 = MEMORY[0x29EDBCA88];
  sub_29E7522E8();
  v58 = *(v129 + 8);
  v129 += 8;
  v106 = v58;
  v59 = v51;
  v60 = v51;
  v61 = *&v54;
  v58(v59, v54);
  v105 = *MEMORY[0x29EDBC6F8];
  v62 = v131;
  v63 = *(v131 + 104);
  v103 = v131 + 104;
  v104 = v63;
  v64 = v108;
  v65 = v126;
  v63(v108);
  v134 = v61;
  v135 = v55;
  v136 = v56;
  v137 = v57;
  v107 = MEMORY[0x29EDB8598];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v123;
  sub_29E7522D8();
  v67 = *(v62 + 8);
  v131 = v62 + 8;
  v101 = v67;
  v67(v64, v65);
  v68 = *(v130 + 8);
  v130 += 8;
  v100 = v68;
  v68(v53, v66);
  v69 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
  [v69 _value];
  v71 = v70;

  if (*(v120 + 72) <= 0.0)
  {
    v72 = *(v120 + 72);
  }

  else
  {
    v72 = 0.0;
  }

  sub_29E752F58();
  v97[0] = v52;
  sub_29E7523D8();

  sub_29E752F58();
  sub_29E7523D8();

  sub_29E752F58();
  v134 = v71 + -0.5;
  sub_29E7523D8();

  sub_29E752F58();
  v134 = v72;
  sub_29E7523D8();

  sub_29E752328();
  v134 = v110;
  v73 = v121;
  sub_29E7522E8();
  v106(v60, v73);
  v74 = v126;
  v104(v64, v105, v126);
  v75 = v123;
  sub_29E7522D8();
  v101(v64, v74);
  v100(v53, v75);
  v133 = *(v120 + 56);
  swift_getKeyPath();
  sub_29E725164(0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
  sub_29E72698C();
  sub_29E728034(&qword_2A1A7BDF0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData);
  sub_29E7250A0(&qword_2A1A7C4E8, type metadata accessor for BreathingDisturbancesData);
  sub_29E726AA0();
  v77 = v76;
  sub_29E726B84();
  v79 = v78;
  *&v80 = COERCE_DOUBLE(sub_29E752548());
  v81 = sub_29E726C1C();

  v134 = *&v80;
  v135 = &type metadata for CircleMark;
  v136 = MEMORY[0x29EDB86D0];
  v137 = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v134 = v79;
  v135 = MEMORY[0x29EDBCA98];
  v136 = v82;
  v137 = MEMORY[0x29EDBCA88];
  v83 = swift_getOpaqueTypeConformance2();
  v134 = v77;
  v135 = v83;
  swift_getOpaqueTypeConformance2();
  v84 = v114;
  sub_29E753B28();
  v85 = v112;
  v86 = *(v112 + 16);
  v87 = v128;
  v88 = v113;
  v86(v128, v132, v113);
  v134 = *&v87;
  v89 = v111;
  v90 = v127;
  v86(v111, v127, v88);
  v135 = v89;
  v91 = v117;
  v92 = v115;
  v93 = v118;
  (*(v117 + 16))(v115, v84, v118);
  v136 = v92;
  sub_29E71E378(&v134, v116);
  v94 = *(v91 + 8);
  v94(v84, v93);
  v95 = *(v85 + 8);
  v95(v90, v88);
  v95(v132, v88);
  v94(v92, v93);
  v95(v89, v88);
  v95(v128, v88);
}

uint64_t sub_29E721710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_29E727478(0, &qword_2A1A7C0D0, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v32 = &v30 - v5;
  sub_29E725A50(0, &qword_2A1A7C0D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = sub_29E752548();
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E726B84();
  v37 = v13;
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E726AA0();
  v38 = v17;
  v36 = *(v17 - 8);
  v18 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v35 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v34 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  sub_29E74ED28();
  sub_29E7523D8();

  sub_29E752F58();
  v44[0] = *(a1 + *(type metadata accessor for BreathingDisturbancesData(0) + 20));
  sub_29E7523D8();

  sub_29E752538();
  v20 = sub_29E726C1C();
  v21 = MEMORY[0x29EDB86D0];
  v22 = v30;
  sub_29E7522F8();
  (*(v31 + 8))(v12, v22);
  v40 = sub_29E753928();
  v44[0] = v22;
  v44[1] = &type metadata for CircleMark;
  v44[2] = v21;
  v44[3] = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x29EDBCA98];
  v25 = MEMORY[0x29EDBCA88];
  v26 = v35;
  v27 = v37;
  sub_29E7522E8();

  (*(v33 + 8))(v16, v27);
  sub_29E752A58();
  v40 = v27;
  v41 = v24;
  v42 = OpaqueTypeConformance2;
  v43 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v38;
  sub_29E752318();
  sub_29E6AE7B8(v44);
  (*(v36 + 8))(v26, v28);
}

uint64_t sub_29E721C94()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_29E721D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v38 = a2;
  v2 = sub_29E752418();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v37 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BreathingDisturbancesHighlightView(0);
  v34[0] = *(v5 - 8);
  v6 = *(v34[0] + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725164(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = v34 - v9;
  v11 = sub_29E74EE68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E752398();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = sub_29E752368();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  sub_29E7544C8();
  v34[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752348();
  (*(v12 + 104))(v15, *MEMORY[0x29EDB9CB8], v11);
  v20 = sub_29E74EE78();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_29E752378();
  sub_29E727558(v10, &qword_2A1A7D368, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  (*(v12 + 8))(v15, v11);
  v21 = v35;
  sub_29E7272C8(v36, v35, type metadata accessor for BreathingDisturbancesHighlightView);
  v22 = (*(v34[0] + 80) + 16) & ~*(v34[0] + 80);
  v23 = swift_allocObject();
  sub_29E727390(v21, v23 + v22, type metadata accessor for BreathingDisturbancesHighlightView);
  sub_29E752408();
  sub_29E727018();
  sub_29E727144();
  v25 = v24;
  sub_29E6ADFA8();
  v27 = v26;
  sub_29E727478(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v29 = v28;
  v30 = sub_29E6AE058();
  v39 = v29;
  v40 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v27;
  v40 = MEMORY[0x29EDBCA98];
  v41 = OpaqueTypeConformance2;
  v42 = MEMORY[0x29EDBCA88];
  v32 = swift_getOpaqueTypeConformance2();
  v39 = v25;
  v40 = v32;
  swift_getOpaqueTypeConformance2();
  sub_29E752578();
}

uint64_t sub_29E722270@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a1;
  v39 = a2;
  v2 = sub_29E752458();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752478();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v32 = sub_29E74EC48();
  v7 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727478(0, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v15 = &v31 - v14;
  sub_29E6ADFA8();
  v17 = v16;
  v35 = *(v16 - 8);
  v18 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727144();
  v38 = v21;
  v36 = *(v21 - 8);
  v22 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v33 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E722770(v9);
  sub_29E752468();
  sub_29E752448();
  sub_29E7250A0(&qword_2A1A7CFE8, MEMORY[0x29EDB9BB0]);
  sub_29E7523A8();
  sub_29E7534F8();
  v25 = sub_29E6AE058();
  sub_29E7524D8();

  (*(v12 + 8))(v15, v11);
  v44 = sub_29E753968();
  v40 = v11;
  v41 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x29EDBCA98];
  v28 = MEMORY[0x29EDBCA88];
  sub_29E7524C8();

  (*(v35 + 8))(v20, v17);
  v40 = v17;
  v41 = v27;
  v42 = OpaqueTypeConformance2;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v38;
  sub_29E7524E8();
  (*(v36 + 8))(v24, v29);
}

uint64_t sub_29E722770@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = sub_29E74EC28();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E74EC48();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E752BF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v22 - v16;
  v18 = v1 + *(type metadata accessor for BreathingDisturbancesHighlightView(0) + 28);
  sub_29E658B34(v17);
  (*(v11 + 104))(v15, *MEMORY[0x29EDBC4C0], v10);
  LOBYTE(v18) = sub_29E752BE8();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v20 = (v19)(v17, v10);
  MEMORY[0x29ED91330](v20);
  if (v18)
  {
    sub_29E74EC08();
  }

  else
  {
    sub_29E74EBE8();
  }

  sub_29E74EC38();
  (*(v2 + 8))(v5, v25);
  return (*(v6 + 8))(v9, v23);
}

uint64_t sub_29E722A18@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29E7517C8();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = a2[7];
  v8 = (a3 + a2[6]);
  *v8 = &unk_2A24FD420;
  v8[1] = &unk_2A24FD470;
  v8[2] = &unk_2A24FD4C0;
  v8[3] = &unk_2A24FD510;
  *(a3 + v7) = swift_getKeyPath();
  sub_29E725164(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  *(a3 + a2[8]) = 604800;
  v9 = a2[5];
  sub_29E725164(0, &qword_2A1A7CF18, type metadata accessor for BreathingDisturbancesHighlightDataModel, MEMORY[0x29EDC1E70]);
  v11 = v10;
  sub_29E750758();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1, v11);
}

uint64_t sub_29E722BFC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E752FF8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29E7257DC();
  return sub_29E71E980(v1, a1 + *(v3 + 44));
}

double sub_29E722C40@<D0>(uint64_t a1@<X8>)
{
  if (qword_2A1856238 != -1)
  {
    swift_once();
  }

  v2 = qword_2A185A6F0;
  sub_29E752A58();

  v3 = sub_29E753C48();
  v5 = v4;
  if (qword_2A1856230 != -1)
  {
    swift_once();
  }

  v6 = qword_2A185A6E8;
  v7 = sub_29E753C48();
  v9 = v8;

  sub_29E753C48();
  sub_29E752AB8();
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v2;
  *(a1 + 48) = 256;
  *(a1 + 56) = v3;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 256;
  *(a1 + 88) = v7;
  *(a1 + 96) = v9;
  *(a1 + 104) = v16;
  *(a1 + 120) = v17;
  result = *&v18;
  *(a1 + 136) = v18;
  return result;
}

unint64_t sub_29E722DC4()
{
  v1 = *v0;
  v2 = 0x6956726564616568;
  v3 = 0x756C6156596E696DLL;
  if (v1 != 6)
  {
    v3 = 0x6F6F4E7961646F74;
  }

  v4 = 1635017060;
  if (v1 != 4)
  {
    v4 = 0x756C61565978616DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 != 2)
  {
    v5 = 0x6373654465746164;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29E722EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29E728098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29E722F24(uint64_t a1)
{
  v2 = sub_29E7256C0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E722F60(uint64_t a1)
{
  v2 = sub_29E7256C0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E722F9C(void *a1)
{
  v3 = v1;
  sub_29E7277F0(0, &qword_2A1A7BD28, sub_29E7256C0, &type metadata for BreathingDisturbancesHighlightDataModel.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E7256C0();
  sub_29E755138();
  v24 = *v3;
  v23 = 0;
  sub_29E750F08();
  sub_29E7250A0(&qword_2A1A7CF00, MEMORY[0x29EDC2408]);
  sub_29E754FB8();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v24) = 1;
    sub_29E754F98();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v24) = 2;
    sub_29E754F98();
    v17 = v3[5];
    v18 = v3[6];
    LOBYTE(v24) = 3;
    sub_29E754F98();
    v24 = v3[7];
    v23 = 4;
    sub_29E725164(0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
    sub_29E7276CC(&qword_2A1A7BDF8, sub_29E725714);
    sub_29E754FB8();
    v19 = v3[8];
    LOBYTE(v24) = 5;
    sub_29E754FA8();
    v20 = v3[9];
    LOBYTE(v24) = 6;
    sub_29E754FA8();
    v21 = *(type metadata accessor for BreathingDisturbancesHighlightDataModel(0) + 44);
    LOBYTE(v24) = 7;
    sub_29E74ED28();
    sub_29E7250A0(&qword_2A1A7CFD8, MEMORY[0x29EDB9BC8]);
    sub_29E754FB8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29E723324@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_29E74ED28();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7277F0(0, &qword_2A1A7D098, sub_29E7256C0, &type metadata for BreathingDisturbancesHighlightDataModel.CodingKeys, MEMORY[0x29EDC9E80]);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v33 = a1;
  sub_29E601938(a1, v15);
  sub_29E7256C0();
  v31 = v10;
  v17 = v32;
  sub_29E755128();
  if (v17)
  {
    return sub_29E5FECBC(v33);
  }

  v18 = v11;
  v19 = v29;
  sub_29E750F08();
  v34 = 0;
  sub_29E7250A0(&qword_2A1A7D358, MEMORY[0x29EDC2408]);
  v20 = v30;
  sub_29E754F58();
  *v14 = v35;
  LOBYTE(v35) = 1;
  *(v14 + 1) = sub_29E754F38();
  *(v14 + 2) = v21;
  LOBYTE(v35) = 2;
  *(v14 + 3) = sub_29E754F38();
  *(v14 + 4) = v22;
  LOBYTE(v35) = 3;
  *(v14 + 5) = sub_29E754F38();
  *(v14 + 6) = v23;
  sub_29E725164(0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
  v34 = 4;
  sub_29E7276CC(&qword_2A1A7D0B8, sub_29E727768);
  sub_29E754F58();
  *(v14 + 7) = v35;
  LOBYTE(v35) = 5;
  sub_29E754F48();
  *(v14 + 8) = v24;
  LOBYTE(v35) = 6;
  sub_29E754F48();
  v32 = 0;
  *(v14 + 9) = v25;
  LOBYTE(v35) = 7;
  sub_29E7250A0(&unk_2A1A7D370, MEMORY[0x29EDB9BC8]);
  sub_29E754F58();
  (*(v19 + 8))(v31, v20);
  (*(v27 + 32))(&v14[*(v18 + 44)], v6, v3);
  sub_29E7272C8(v14, v28, type metadata accessor for BreathingDisturbancesHighlightDataModel);
  sub_29E5FECBC(v33);
  return sub_29E727330(v14, type metadata accessor for BreathingDisturbancesHighlightDataModel);
}

uint64_t sub_29E723A54(void *a1)
{
  v3 = v1;
  sub_29E7277F0(0, &qword_2A1A7BD30, sub_29E72779C, &type metadata for BreathingDisturbancesData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E72779C();
  sub_29E755138();
  v16 = 0;
  sub_29E74ED28();
  sub_29E7250A0(&qword_2A1A7CFD8, MEMORY[0x29EDB9BC8]);
  sub_29E754FB8();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for BreathingDisturbancesData(0) + 20));
    v15 = 1;
    sub_29E754FA8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29E723C3C()
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E7250A0(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v1 = *(v0 + *(type metadata accessor for BreathingDisturbancesData(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v1);
  return sub_29E755108();
}

uint64_t sub_29E723CEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_29E74ED28();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7277F0(0, &qword_2A1A7D0A0, sub_29E72779C, &type metadata for BreathingDisturbancesData.CodingKeys, MEMORY[0x29EDC9E80]);
  v29 = v7;
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for BreathingDisturbancesData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E72779C();
  sub_29E755128();
  if (v2)
  {
    return sub_29E5FECBC(a1);
  }

  v23 = v14;
  v16 = v25;
  v17 = v26;
  v31 = 0;
  sub_29E7250A0(&unk_2A1A7D370, MEMORY[0x29EDB9BC8]);
  v18 = v27;
  sub_29E754F58();
  v19 = v23;
  (*(v17 + 32))(v23, v28, v18);
  v30 = 1;
  sub_29E754F48();
  v21 = v20;
  (*(v16 + 8))(v10, v29);
  *(v19 + *(v11 + 20)) = v21;
  sub_29E7272C8(v19, v24, type metadata accessor for BreathingDisturbancesData);
  sub_29E5FECBC(a1);
  return sub_29E727330(v19, type metadata accessor for BreathingDisturbancesData);
}

uint64_t sub_29E7240A8()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_29E7240D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_29E755028() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E755028();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29E7241BC(uint64_t a1)
{
  v2 = sub_29E72779C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7241F8(uint64_t a1)
{
  v2 = sub_29E72779C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E724268(uint64_t a1, uint64_t a2)
{
  sub_29E74ED28();
  sub_29E7250A0(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x29ED97A10](*&v4);
}

uint64_t sub_29E724304(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E7250A0(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v4);
  return sub_29E755108();
}

void sub_29E724408()
{
  v39[1] = *v0;
  v42 = sub_29E752098();
  v41 = *(v42 - 8);
  v1 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v43 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E7513C8();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v46 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E750F58();
  v47 = *(v48 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v52 = MEMORY[0x29EDC1D90];
  v53 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x29EDC9C68];
  sub_29E725164(0, &qword_2A1858AE0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = v39 - v10;
  v12 = sub_29E7517C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v40 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v45 = v39 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = v39 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v23 = v39 - v22;
  sub_29E7514B8();
  sub_29E7517A8();
  v24 = *(v13 + 8);
  v24(v23, v12);
  v25 = sub_29E750A78();

  v26 = [v25 profileIdentifier];

  sub_29E7514B8();
  sub_29E751798();
  v24(v21, v12);
  v27 = sub_29E750698();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  v44 = MEMORY[0x29ED931F0](v26, v11);

  sub_29E727558(v11, &qword_2A1858AE0, v52, v51);
  v28 = v53;
  sub_29E750F48();
  v29 = *MEMORY[0x29EDBA850];
  v30 = objc_allocWithZone(MEMORY[0x29EDBAD20]);
  v52 = v29;
  v31 = [v30 initWithIdentifier_];
  if (v31)
  {
    v32 = v31;
    sub_29E7514B8();
    sub_29E7517A8();
    v24(v23, v12);
    sub_29E750A58();

    sub_29E7514B8();
    sub_29E7517A8();
    v24(v21, v12);
    sub_29E750A78();

    v33 = v45;
    sub_29E7514B8();
    sub_29E7517A8();
    v24(v33, v12);
    sub_29E750A88();

    v34 = v46;
    sub_29E751378();
    v35 = sub_29E750F38();

    (*(v49 + 8))(v34, v50);
    (*(v47 + 8))(v28, v48);
    v36 = v40;
    sub_29E7514B8();
    v37 = sub_29E7517B8();
    v24(v36, v12);
    v38 = [v37 navigationController];

    if (v38)
    {
      [v38 pushViewController:v35 animated:1];
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

uint64_t sub_29E724D34(uint64_t a1)
{
  v3 = sub_29E7517C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_29E7514C8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_29E724E3C()
{
  sub_29E7514D8();

  return swift_deallocClassInstance();
}

BOOL sub_29E724E74()
{
  v0 = sub_29E750698();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v16 - v6;
  v8 = sub_29E7517C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7514B8();
  sub_29E751798();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, *MEMORY[0x29EDC1D60], v0);
  sub_29E7250A0(&qword_2A1A7D360, MEMORY[0x29EDC1D90]);
  v13 = sub_29E754108();
  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);
  return (v13 & 1) == 0;
}

uint64_t sub_29E7250A0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E7250E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void sub_29E725164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E72521C()
{
  sub_29E725164(319, &qword_2A1A7D350, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BreathingDisturbancesHighlightDataModel(319);
    if (v1 <= 0x3F)
    {
      sub_29E725164(319, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E725350()
{
  sub_29E750F08();
  if (v0 <= 0x3F)
  {
    sub_29E725164(319, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29E74ED28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E725480()
{
  result = sub_29E74ED28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29E7256C0()
{
  result = qword_2A1A7D1B0[0];
  if (!qword_2A1A7D1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A7D1B0);
  }

  return result;
}

uint64_t sub_29E725748(uint64_t a1, uint64_t a2)
{
  sub_29E725164(0, &qword_2A1A7D350, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29E7257DC()
{
  if (!qword_2A185A700)
  {
    sub_29E725164(255, &qword_2A185A708, sub_29E725874, MEMORY[0x29EDBCC28]);
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A700);
    }
  }
}

void sub_29E725874()
{
  if (!qword_2A185A710)
  {
    sub_29E725964(255);
    sub_29E725164(255, &qword_2A1A7BE28, sub_29E7259A0, MEMORY[0x29EDBCC28]);
    sub_29E725A50(255, &qword_2A185A718, sub_29E725ABC, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A185A710);
    }
  }
}

void sub_29E7259A0()
{
  if (!qword_2A1A7BEC8)
  {
    sub_29E727478(255, &qword_2A1A7BED0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29E6C3B78(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A7BEC8);
    }
  }
}

void sub_29E725A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E725AF8()
{
  if (!qword_2A1A7BE60)
  {
    sub_29E725D88();
    sub_29E752438();
    sub_29E725FCC();
    sub_29E7261B8();
    sub_29E6AC948();
    sub_29E726354();
    sub_29E7264C0();
    sub_29E7265F4();
    sub_29E726ECC();
    sub_29E7266A8();
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE60);
    }
  }
}

void sub_29E725D88()
{
  if (!qword_2A1A7BE50)
  {
    sub_29E725FCC();
    sub_29E7261B8();
    sub_29E6AC948();
    sub_29E726354();
    sub_29E7264C0();
    sub_29E7265F4();
    sub_29E726ECC();
    sub_29E7266A8();
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE50);
    }
  }
}

void sub_29E725FCC()
{
  if (!qword_2A1A7BE68)
  {
    sub_29E7261B8();
    sub_29E6AC948();
    sub_29E726354();
    sub_29E7264C0();
    sub_29E7265F4();
    sub_29E726ECC();
    sub_29E7266A8();
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE68);
    }
  }
}

void sub_29E7261B8()
{
  if (!qword_2A1A7BE48)
  {
    sub_29E726354();
    sub_29E7264C0();
    sub_29E7265F4();
    sub_29E726ECC();
    sub_29E7266A8();
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE48);
    }
  }
}

void sub_29E726354()
{
  if (!qword_2A1A7BE58)
  {
    sub_29E7264C0();
    sub_29E7265F4();
    sub_29E726ECC();
    sub_29E7266A8();
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE58);
    }
  }
}

void sub_29E7264C0()
{
  if (!qword_2A1A7BE78)
  {
    sub_29E7265F4();
    sub_29E726ECC();
    sub_29E7266A8();
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE78);
    }
  }
}

void sub_29E7265F4()
{
  if (!qword_2A1A7BE70)
  {
    sub_29E7266A8();
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE70);
    }
  }
}

void sub_29E7266A8()
{
  if (!qword_2A1A7C0C0)
  {
    sub_29E72670C();
    sub_29E726C70();
    v0 = sub_29E752498();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C0C0);
    }
  }
}

void sub_29E72670C()
{
  if (!qword_2A1A7C120)
  {
    sub_29E726780();
    sub_29E726870();
    v0 = sub_29E7522B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C120);
    }
  }
}

void sub_29E726780()
{
  if (!qword_2A1A7C118)
  {
    sub_29E727F9C(255, &qword_2A1A7C108, MEMORY[0x29EDB85F8]);
    sub_29E752338();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C118);
    }
  }
}

void sub_29E726870()
{
  if (!qword_2A1A7BE30)
  {
    sub_29E725164(255, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
    type metadata accessor for BreathingDisturbancesData(255);
    sub_29E72698C();
    sub_29E728034(&qword_2A1A7BDF0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData);
    sub_29E7250A0(&qword_2A1A7C4E8, type metadata accessor for BreathingDisturbancesData);
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BE30);
    }
  }
}

void sub_29E72698C()
{
  if (!qword_2A1A7C0F0)
  {
    sub_29E726AA0();
    sub_29E726B84();
    sub_29E752548();
    sub_29E726C1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0F0);
    }
  }
}

void sub_29E726AA0()
{
  if (!qword_2A1A7C100)
  {
    sub_29E726B84();
    sub_29E752548();
    sub_29E726C1C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C100);
    }
  }
}

void sub_29E726B84()
{
  if (!qword_2A1A7C0F8)
  {
    sub_29E752548();
    sub_29E726C1C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0F8);
    }
  }
}

unint64_t sub_29E726C1C()
{
  result = qword_2A1A7C5A0;
  if (!qword_2A1A7C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7C5A0);
  }

  return result;
}

unint64_t sub_29E726C70()
{
  result = qword_2A1A7C128;
  if (!qword_2A1A7C128)
  {
    sub_29E72670C();
    sub_29E727F9C(255, &qword_2A1A7C108, MEMORY[0x29EDB85F8]);
    sub_29E752338();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E726D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7C128);
  }

  return result;
}

unint64_t sub_29E726D94()
{
  result = qword_2A1A7BE38;
  if (!qword_2A1A7BE38)
  {
    sub_29E726870();
    sub_29E726AA0();
    sub_29E726B84();
    sub_29E752548();
    sub_29E726C1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE38);
  }

  return result;
}

void sub_29E726ECC()
{
  if (!qword_2A1A7C098)
  {
    sub_29E727018();
    sub_29E727144();
    sub_29E6ADFA8();
    sub_29E727478(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E7525B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C098);
    }
  }
}

void sub_29E727018()
{
  if (!qword_2A1A7C0A8)
  {
    sub_29E727144();
    sub_29E6ADFA8();
    sub_29E727478(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0A8);
    }
  }
}

void sub_29E727144()
{
  if (!qword_2A1A7C0B8)
  {
    sub_29E6ADFA8();
    sub_29E727478(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0B8);
    }
  }
}

uint64_t sub_29E727240(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_29E725164(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29E7272C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E727330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E727390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E7273F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BreathingDisturbancesHighlightView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29E722270(v4, a1);
}

void sub_29E727478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_29E7274CC()
{
  if (!qword_2A1A7C110)
  {
    sub_29E726780();
    sub_29E726870();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A7C110);
    }
  }
}

uint64_t sub_29E727540(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E727558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_29E725164(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E7275B4(uint64_t a1, uint64_t a2)
{
  sub_29E727478(0, &qword_2A1A7BED0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E727644(uint64_t a1)
{
  sub_29E727478(0, &qword_2A1A7BED0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E7276CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29E725164(255, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E72779C()
{
  result = qword_2A1A7D318;
  if (!qword_2A1A7D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D318);
  }

  return result;
}

void sub_29E7277F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29E727888()
{
  if (!qword_2A185A728)
  {
    sub_29E725164(255, &qword_2A185A708, sub_29E725874, MEMORY[0x29EDBCC28]);
    sub_29E72791C();
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A728);
    }
  }
}

unint64_t sub_29E72791C()
{
  result = qword_2A185A730;
  if (!qword_2A185A730)
  {
    sub_29E725164(255, &qword_2A185A708, sub_29E725874, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A730);
  }

  return result;
}

unint64_t sub_29E7279A8()
{
  result = qword_2A185A738;
  if (!qword_2A185A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A738);
  }

  return result;
}

unint64_t sub_29E727A00()
{
  result = qword_2A185A740;
  if (!qword_2A185A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A740);
  }

  return result;
}

unint64_t sub_29E727A58()
{
  result = qword_2A1A7D308;
  if (!qword_2A1A7D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D308);
  }

  return result;
}

unint64_t sub_29E727AB0()
{
  result = qword_2A1A7D310;
  if (!qword_2A1A7D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D310);
  }

  return result;
}

unint64_t sub_29E727B24()
{
  result = qword_2A1A7D1A0;
  if (!qword_2A1A7D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D1A0);
  }

  return result;
}

unint64_t sub_29E727B7C()
{
  result = qword_2A1A7D1A8;
  if (!qword_2A1A7D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D1A8);
  }

  return result;
}

void sub_29E727BD0()
{
  if (!qword_2A185A750)
  {
    sub_29E725164(255, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, MEMORY[0x29EDC9A40]);
    sub_29E74ED28();
    sub_29E727CEC();
    sub_29E728034(&qword_2A185A770, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint);
    sub_29E7250A0(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A750);
    }
  }
}

void sub_29E727CEC()
{
  if (!qword_2A185A760)
  {
    sub_29E727DB4();
    sub_29E7524B8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185A760);
    }
  }
}

void sub_29E727DB4()
{
  if (!qword_2A185A768)
  {
    sub_29E7524B8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185A768);
    }
  }
}

unint64_t sub_29E727E38()
{
  result = qword_2A185A778;
  if (!qword_2A185A778)
  {
    sub_29E727BD0();
    sub_29E727DB4();
    sub_29E7524B8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A778);
  }

  return result;
}

void sub_29E727F24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E6AD088();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_29E727F9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E728034(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E725164(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E728098(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6956726564616568 && a2 == 0xEF6C65646F4D7765;
  if (v4 || (sub_29E755028() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000029E760C40 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000029E760C60 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6373654465746164 && a2 == 0xEF6E6F6974706972 || (sub_29E755028() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_29E755028() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756C61565978616DLL && a2 == 0xE900000000000065 || (sub_29E755028() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756C6156596E696DLL && a2 == 0xE900000000000065 || (sub_29E755028() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6F4E7961646F74 && a2 == 0xE90000000000006ELL)
  {

    return 7;
  }

  else
  {
    v6 = sub_29E755028();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_29E72834C()
{
  result = qword_2A1A7BEB0;
  if (!qword_2A1A7BEB0)
  {
    sub_29E725A50(255, &qword_2A1A7BEA8, sub_29E728404, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29E728660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BEB0);
  }

  return result;
}

void sub_29E728404()
{
  if (!qword_2A1A7BED8)
  {
    sub_29E72846C();
    sub_29E728550();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BED8);
    }
  }
}

void sub_29E72846C()
{
  if (!qword_2A1A7BE98)
  {
    sub_29E7284FC();
    v0 = sub_29E752C68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BE98);
    }
  }
}

unint64_t sub_29E7284FC()
{
  result = qword_2A1A7BE40;
  if (!qword_2A1A7BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE40);
  }

  return result;
}