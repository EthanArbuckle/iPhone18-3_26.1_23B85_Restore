uint64_t sub_29D7E9354()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D964340);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D964380);
  v1 = sub_29D933688();
  MEMORY[0x29ED6A240](v1);

  return 91;
}

uint64_t sub_29D7E9448()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D9643A0);
  MEMORY[0x29ED6A240](0xD00000000000001CLL, 0x800000029D9643E0);
  v1 = sub_29D933688();
  MEMORY[0x29ED6A240](v1);

  return 91;
}

uint64_t sub_29D7E953C(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v5 = [a1 objectType];
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = v5;
  v8 = [ObjCClassFromMetadata hypertensionEventType];
  if (v8)
  {
    v9 = v8;
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    v10 = v7;
    v11 = sub_29D93A708();

    if (v11)
    {

      return type metadata accessor for HypertensionEventListDataProvider();
    }
  }

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v13 = [swift_getObjCClassFromMetadata() hypertensiveMeasurementType];

  if (v13)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    v14 = sub_29D93A708();

    if (v14)
    {
      if (a2)
      {
        return type metadata accessor for HypertensivePatternMeasurementListDailyAggregatedDataProvider();
      }

      else
      {
        return type metadata accessor for HypertensivePatternMeasurementListDataProvider();
      }
    }
  }

  else
  {
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v15 = sub_29D937898();
  sub_29D69C6C0(v15, qword_2A1A2C008);
  v16 = a1;
  v17 = sub_29D937878();
  v18 = sub_29D93A288();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    v31 = ObjectType;
    *v19 = 136446466;
    swift_getMetatypeMetadata();
    v21 = sub_29D939DA8();
    v23 = sub_29D6C2364(v21, v22, &v30);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = v16;
    v25 = [v24 description];
    v26 = sub_29D939D68();
    v28 = v27;

    v29 = sub_29D6C2364(v26, v28, &v30);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s] Unexpected type passed to Heart plugin for data list data provider: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v20, -1, -1);
    MEMORY[0x29ED6BE30](v19, -1, -1);
  }

  return 0;
}

void *sub_29D7E98E8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = [v2 childViewControllers];
    sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
    v5 = sub_29D939F38();

    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x29ED6AE30](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          return v9;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

void sub_29D7E9A60()
{
  if (!qword_2A17B54F8)
  {
    sub_29D9351D8();
    v0 = sub_29D935208();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B54F8);
    }
  }
}

void sub_29D7E9AC0()
{
  if (!qword_2A17B1088)
  {
    sub_29D695734(255, &qword_2A17B1090);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1088);
    }
  }
}

void sub_29D7E9B2C()
{
  if (!qword_2A17B5510)
  {
    sub_29D7E9A60();
    sub_29D7ED64C(&qword_2A17B5500, 255, sub_29D7E9A60);
    v0 = sub_29D9357B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5510);
    }
  }
}

void sub_29D7E9BC4()
{
  if (!qword_2A17B5530)
  {
    sub_29D7E9C48(255, &qword_2A17B42A0, &qword_2A17B1140, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9A40]);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5530);
    }
  }
}

void sub_29D7E9C48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D695734(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D7E9CB4()
{
  result = qword_2A17B5540;
  if (!qword_2A17B5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5540);
  }

  return result;
}

void sub_29D7E9D10(void *a1, uint64_t a2, char a3, _BYTE *a4)
{
  sub_29D7ED440(0, &unk_2A17B5550, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v54 - v11;
  v58[3] = sub_29D9342C8();
  v58[4] = MEMORY[0x29EDC3970];
  v58[0] = a2;
  v13 = &a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore];
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v15 = [ObjCClassFromMetadata atrialFibrillationEventType];
  if (!v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType] = v15;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_favoritesObserver] = 0;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource] = 0;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems] = MEMORY[0x29EDCA190];
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_cancellables] = MEMORY[0x29EDCA1A0];
  v17 = [a1 profile];
  v18 = [v17 healthStore];

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore] = v18;
  sub_29D6945AC(v58, &a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager]);
  v19 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  v21 = [v19 displayTypeForObjectType_];

  if (!v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType] = v21;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_viewControllerFactory] = a1;
  v23 = a1;
  v24 = [v23 profile];
  v25 = [v24 healthStore];

  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = [v25 profileIdentifier];

  v27 = [v26 type];
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_profileType] = v27;
  if (a3 != 4)
  {
    a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode] = a3;
    v33 = qword_29D94AE48[a3];
LABEL_10:
    v34 = *&a4[v22];
    v35 = [v23 profile];
    v36 = type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    v57.receiver = a4;
    v57.super_class = v36;
    v37 = objc_msgSendSuper2(&v57, sel_initWithDisplayType_profile_mode_, v34, v35, v33);

    v38 = v37;
    sub_29D77F838();
    if ([*&v38[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType] allowsManualEntry])
    {
      v39 = v38[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode];
      v40 = sub_29D9354E8();
      v42 = v41;
      if (v40 == sub_29D9354E8() && v42 == v43)
      {
      }

      else
      {
        v46 = sub_29D93AD78();

        if ((v46 & 1) == 0)
        {
LABEL_20:

          sub_29D69417C(v58);
          return;
        }
      }

      v47 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:4 target:v38 action:sel_showAddDataVC];
      v55 = 0;
      v56 = 0xE000000000000000;
      v48 = v47;
      sub_29D93AA18();

      v49 = *MEMORY[0x29EDC43E0];
      v55 = sub_29D939D68();
      v56 = v50;
      MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D95B180);
      v51 = sub_29D939D28();

      [v48 setAccessibilityIdentifier_];

      v52 = qword_2A1A257A0;
      v44 = v48;
      if (v52 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      v53 = sub_29D939D28();

      [v44 setAccessibilityValue_];

      v45 = [v38 navigationItem];
      [v45 setRightBarButtonItem_];
    }

    else
    {
      v44 = v23;
      v45 = v38;
    }

    v23 = v45;
    goto LABEL_20;
  }

  v28 = [v23 profile];
  v29 = [v28 healthStore];

  if (v29)
  {
    v30 = [v29 profileIdentifier];

    v31 = sub_29D9350C8();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    v32 = MEMORY[0x29ED658D0](v30, v12);

    sub_29D7ED010(v12, &unk_2A17B5550, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68], sub_29D7ED440);
    v33 = 0;
    a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode] = v32;
    goto LABEL_10;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_29D7EA420(uint64_t a1)
{
  v24 = a1;
  v1 = sub_29D936378();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D936138();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D936388();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v17 = *MEMORY[0x29EDBA918];
  v18 = MEMORY[0x29ED6A6C0]();
  sub_29D936148();

  v27[3] = &type metadata for HeartRateVariabilityDataTypeDetailConfigurationProvider.HeartbeatSeriesComponent;
  v27[4] = sub_29D7ED2D8();
  sub_29D936178();
  (*(v6 + 104))(v10, *MEMORY[0x29EDC2618], v5);
  sub_29D936BB8();

  (*(v6 + 8))(v10, v5);
  sub_29D69417C(v27);
  v19 = v24;
  sub_29D936028();
  (*(v12 + 8))(v16, v11);
  (*(v25 + 16))(v23, v19, v26);
  MEMORY[0x29ED6A6C0](v17);
  v20 = objc_allocWithZone(sub_29D9364C8());
  return sub_29D936488();
}

id sub_29D7EA730(void *a1, uint64_t a2)
{
  sub_29D7ED440(0, &unk_2A17B5578, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v35 - v7;
  v9 = sub_29D936378();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CardioFitnessDataTypeDetailDataSourceProvider();
  inited = swift_initStackObject();
  result = [objc_opt_self() _quantityTypeWithCode_];
  if (result)
  {
    v17 = result;
    *(inited + 16) = result;
    sub_29D807090(a2);
    (*(v10 + 16))(v14, a2, v9);
    v18 = objc_allocWithZone(sub_29D936E58());
    v19 = a1;
    v20 = sub_29D936E48();
    v21 = [v19 identifier];
    v35 = sub_29D939D68();

    v22 = sub_29D936338();
    v23 = *MEMORY[0x29EDBA6C0];
    v24 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
    v25 = v22;
    v26 = [v24 initWithFeatureIdentifier:v23 healthStore:v25 currentCountryCode:0];
    v37 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
    v38 = MEMORY[0x29EDC2EA8];
    *&v36 = v26;
    v27 = type metadata accessor for LowCardioFitnessArticleDataProvider();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v30 = swift_allocObject();
    v31 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus;
    sub_29D7ED440(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    *(v30 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink) = 2;
    *(v30 + 16) = v25;
    sub_29D679D3C(&v36, v30 + 24);
    v37 = v27;
    v38 = sub_29D7ED64C(qword_2A1A25918, 255, type metadata accessor for LowCardioFitnessArticleDataProvider);
    v39 = sub_29D7ED64C(&qword_2A1A25910, 255, type metadata accessor for LowCardioFitnessArticleDataProvider);

    *&v36 = v30;
    v33 = sub_29D936338();
    sub_29D936DC8();

    sub_29D69417C(&v36);
    v34 = sub_29D936DE8();
    (*(*(v34 - 8) + 56))(v8, 0, 1, v34);
    sub_29D936E18();

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D7EAB68(uint64_t a1)
{
  v2 = sub_29D936378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedBehavior];
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v8 features];

  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = [v10 hermit];

  if (v11)
  {
    (*(v3 + 16))(v7, a1, v2);
    v12 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsRoomViewController());
    sub_29D8388F0(v7);
  }

  else
  {
    sub_29D7ED32C();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_29D7EAD44(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void (*a5)(void *))
{
  v39 = a5;
  sub_29D7ED440(0, &unk_2A17B5578, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v38 - v12;
  v14 = sub_29D936378();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D936388();
  v42 = *(v20 - 8);
  v43 = v20;
  v21 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a3(0);
  v40 = *(v25 - 8);
  v41 = v25;
  v26 = *(v40 + 64);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v30 = &v38 - v29;
  a4(v28);
  v39(a1);
  sub_29D936028();
  (*(v15 + 16))(v19, a2, v14);
  v31 = objc_allocWithZone(sub_29D936E58());
  v32 = a1;
  v33 = sub_29D936E48();
  v34 = [v32 identifier];
  sub_29D939D68();

  v44[3] = &type metadata for HeartRateArticleDataProvider;
  v44[4] = sub_29D7ED1DC();
  v44[5] = sub_29D7ED230();
  v35 = sub_29D936338();
  sub_29D936DC8();

  sub_29D69417C(v44);
  v36 = sub_29D936DE8();
  (*(*(v36 - 8) + 56))(v13, 0, 1, v36);
  sub_29D936E18();
  (*(v42 + 8))(v24, v43);
  (*(v40 + 8))(v30, v41);
  return v33;
}

uint64_t sub_29D7EB100(void *a1, uint64_t a2)
{
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v25 - v12;
  v14 = sub_29D936388();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D936368() & 0xFE) == 2)
  {
    sub_29D7600D0();
  }

  else
  {
    sub_29D75F3D4(a1, v19);
  }

  sub_29D936028();
  (*(v15 + 8))(v19, v14);
  v20 = *(v5 + 16);
  v20(v13, a2, v4);
  v21 = objc_allocWithZone(type metadata accessor for BloodPressureDataTypeDetailViewController());
  v21[qword_2A17B51B8] = 0;
  *&v21[qword_2A17B51C0] = 0;
  v21[qword_2A17B51C8] = 0;
  v21[qword_2A17B51D0] = 0;
  v20(v10, v13, v4);
  v22 = a1;
  v23 = sub_29D936488();
  (*(v5 + 8))(v13, v4);
  return v23;
}

uint64_t sub_29D7EB368(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v171 = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v6 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v152 = &v150 - v10;
  sub_29D7ED440(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v6);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v153 = &v150 - v14;
  v15 = sub_29D9336F8();
  v16 = *(v15 - 8);
  v155 = v15;
  v156 = v16;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v151 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v154 = &v150 - v22;
  v162 = sub_29D933DF8();
  v164 = *(v162 - 8);
  v23 = *(v164 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v162, v24);
  v27 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v150 - v29;
  v31 = [a1 notification];
  v32 = [v31 request];

  v33 = [v32 content];
  v34 = [v33 categoryIdentifier];

  v35 = sub_29D939D68();
  v37 = v36;

  v38 = *MEMORY[0x29EDC5288];
  v39 = sub_29D939D68();
  v165 = v35;
  v163 = a2;
  v159 = a3;
  if (v35 != v39 || v37 != v40)
  {
    v41 = sub_29D93AD78();

    if (v41)
    {
      goto LABEL_5;
    }

    v109 = *MEMORY[0x29EDC5280];
    if (v165 != sub_29D939D68() || v37 != v110)
    {
      v111 = sub_29D93AD78();

      if ((v111 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v157 = v27;
  v158 = v30;
  v42 = HKHRAFibBurdenLogForCategory();
  v43 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v44 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v42 healthDataSource:v43];

  v45 = a1;
  v46 = a1;
  v47 = [v46 notification];
  v48 = [v47 request];

  v49 = [v46 actionIdentifier];
  v50 = sub_29D939D68();
  v52 = v51;

  v168 = &type metadata for BiomeFocusModeOnDeterminer;
  v169 = &off_2A244ABA0;
  type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent();
  v53 = swift_allocObject();
  sub_29D693DDC(aBlock, &type metadata for BiomeFocusModeOnDeterminer);
  v53[8] = &type metadata for BiomeFocusModeOnDeterminer;
  v53[9] = &off_2A244ABA0;

  v53[2] = v48;
  v53[3] = v50;
  v53[4] = v52;
  sub_29D69417C(aBlock);
  aBlock[0] = 0;
  if ([v44 submitEvent:v53 error:aBlock])
  {
    v54 = aBlock[0];
  }

  else
  {
    v55 = aBlock[0];
    v56 = sub_29D933598();

    swift_willThrow();

    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v57, qword_2A1A2BF58);
    v58 = swift_allocObject();
    v59 = ObjectType;
    *(v58 + 16) = v56;
    *(v58 + 24) = v59;
    aBlock[0] = 0;
    v60 = v56;
    sub_29D9371E8();
  }

  a2 = v163;
  a1 = v45;
  v27 = v157;
  v30 = v158;
LABEL_11:
  v61 = v165;
  sub_29D7E28BC(v165, v37, a1);
  v62 = *MEMORY[0x29EDC5270];
  if (v61 == sub_29D939D68() && v37 == v63)
  {
    v64 = v164;
LABEL_14:

    goto LABEL_16;
  }

  v65 = sub_29D93AD78();

  v64 = v164;
  if (v65)
  {
    goto LABEL_16;
  }

  v112 = *MEMORY[0x29EDC5278];
  if (v165 == sub_29D939D68() && v37 == v113)
  {
    goto LABEL_14;
  }

  v114 = sub_29D93AD78();

  if ((v114 & 1) == 0)
  {
    v115 = *MEMORY[0x29EDBCD00];
    goto LABEL_25;
  }

LABEL_16:
  v66 = a1;
  v67 = *(v64 + 104);
  v67(v30, *MEMORY[0x29EDC5100], v162);
  v68 = v66;
  v69 = [v66 actionIdentifier];
  v70 = sub_29D939D68();
  v72 = v71;

  v73 = *MEMORY[0x29EDBCD00];
  if (v70 == sub_29D939D68() && v72 == v74)
  {
    v75 = MEMORY[0x29EDC50F0];
LABEL_19:

LABEL_22:
    v77 = v162;
    v78 = v164;
    goto LABEL_23;
  }

  v76 = sub_29D93AD78();

  if (v76)
  {
    v75 = MEMORY[0x29EDC50F0];
    goto LABEL_22;
  }

  v127 = [v68 actionIdentifier];
  v128 = sub_29D939D68();
  v130 = v129;

  v131 = *MEMORY[0x29EDBCCF8];
  if (v128 == sub_29D939D68() && v130 == v132)
  {
    v75 = MEMORY[0x29EDC50F8];
    goto LABEL_19;
  }

  v140 = sub_29D93AD78();

  v77 = v162;
  v78 = v164;
  if ((v140 & 1) == 0)
  {
    goto LABEL_24;
  }

  v75 = MEMORY[0x29EDC50F8];
LABEL_23:
  (*(v78 + 8))(v30, v77);
  v67(v30, *v75, v77);
LABEL_24:
  (*(v78 + 16))(v27, v30, v77);
  v79 = sub_29D933DE8();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  v82 = v77;
  sub_29D935E88();
  v83 = sub_29D933DD8();
  v84 = HKLogHeartRateCategory();
  v85 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v86 = v30;
  v87 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v84 healthDataSource:v85];

  v88 = swift_allocObject();
  *(v88 + 16) = ObjectType;
  v169 = sub_29D7ED608;
  v170 = v88;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D8E44F0;
  v168 = &unk_2A2446AF0;
  v89 = _Block_copy(aBlock);

  [v87 submitEvent:v83 completion:v89];
  _Block_release(v89);

  (*(v78 + 8))(v86, v82);
  a1 = v68;
  a2 = v163;
LABEL_25:
  v90 = [a1 actionIdentifier];
  v91 = sub_29D939D68();
  v93 = v92;

  if (v91 == sub_29D939D68() && v93 == v94)
  {

LABEL_29:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v96 = sub_29D937898();
    sub_29D69C6C0(v96, qword_2A1A2C008);
    sub_29D935E88();
    v97 = v161;
    v98 = sub_29D937878();
    v99 = sub_29D93A2A8();

    if (!os_log_type_enabled(v98, v99))
    {

      goto LABEL_35;
    }

    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    aBlock[0] = v101;
    *v100 = 136446723;
    v166 = swift_getObjectType();
    sub_29D7ED5C4();
    v102 = sub_29D939DA8();
    v104 = sub_29D6C2364(v102, v103, aBlock);

    *(v100 + 4) = v104;
    *(v100 + 12) = 2082;
    *(v100 + 14) = sub_29D6C2364(0xD00000000000003BLL, 0x800000029D964600, aBlock);
    *(v100 + 22) = 2081;
    v105 = sub_29D6C2364(v165, v37, aBlock);

    *(v100 + 24) = v105;
    _os_log_impl(&dword_29D677000, v98, v99, "[%{public}s.%{public}s] Notification with identifier %{private}s dismissed", v100, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v101, -1, -1);
    v106 = v100;
LABEL_33:
    MEMORY[0x29ED6BE30](v106, -1, -1);
LABEL_35:

    goto LABEL_36;
  }

  v95 = sub_29D93AD78();

  if (v95)
  {
    goto LABEL_29;
  }

  v116 = [a1 notification];
  v117 = v153;
  sub_29D93A2D8();

  v119 = v155;
  v118 = v156;
  if ((*(v156 + 48))(v117, 1, v155) == 1)
  {
    sub_29D7ED010(v117, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D7ED440);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v120 = sub_29D937898();
    sub_29D69C6C0(v120, qword_2A1A2C008);
    v98 = sub_29D937878();
    v121 = sub_29D93A288();
    if (!os_log_type_enabled(v98, v121))
    {
      goto LABEL_35;
    }

    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    aBlock[0] = v123;
    *v122 = 136315394;
    v124 = sub_29D93AF08();
    v126 = sub_29D6C2364(v124, v125, aBlock);

    *(v122 + 4) = v126;
    *(v122 + 12) = 2080;
    *(v122 + 14) = sub_29D6C2364(0xD00000000000003BLL, 0x800000029D964600, aBlock);
    _os_log_impl(&dword_29D677000, v98, v121, "[%s.%s] Unable to resolve notification. No URL present.", v122, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v123, -1, -1);
    v106 = v122;
    goto LABEL_33;
  }

  v133 = *(v118 + 32);
  v133(v154, v117, v119);
  v134 = [a1 actionIdentifier];
  v135 = sub_29D939D68();
  v137 = v136;

  v138 = *MEMORY[0x29EDC5188];
  if (v135 == sub_29D939D68() && v137 == v139)
  {
  }

  else
  {
    v141 = sub_29D93AD78();

    if ((v141 & 1) == 0)
    {
      v142 = sub_29D93A028();
      (*(*(v142 - 8) + 56))(v152, 1, 1, v142);
      v143 = v156;
      v144 = v151;
      v145 = v154;
      (*(v156 + 16))(v151, v154, v119);
      sub_29D939FF8();
      v165 = sub_29D939FE8();
      v146 = (*(v143 + 80) + 32) & ~*(v143 + 80);
      v147 = (v150 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
      v148 = swift_allocObject();
      v149 = MEMORY[0x29EDCA390];
      *(v148 + 16) = v165;
      *(v148 + 24) = v149;
      v133((v148 + v146), v144, v119);
      *(v148 + v147) = ObjectType;
      sub_29D6BEBA4(0, 0, v152, &unk_29D94AD28, v148);

      (*(v143 + 8))(v145, v119);
      goto LABEL_36;
    }
  }

  (*(v156 + 8))(v154, v119);
LABEL_36:
  result = a2();
  v108 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29D7EC3F4(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v12 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];

  v13 = [a1 request];
  v14 = [v13 content];

  v15 = [v14 userInfo];
  v16 = sub_29D939C68();

  v17 = *MEMORY[0x29EDC51A0];
  v29 = sub_29D939D68();
  v30 = v18;
  sub_29D93A9A8();
  if (*(v16 + 16) && (v19 = sub_29D6908F8(aBlock), (v20 & 1) != 0))
  {
    sub_29D694294(*(v16 + 56) + 32 * v19, v31);
    sub_29D69466C(aBlock);

    if (swift_dynamicCast())
    {
      v26 = v29;
      sub_29D7E8FB8(a1);
      v21 = [a1 request];
      v22 = [v21 identifier];

      if (!v22)
      {
        sub_29D939D68();
        v22 = sub_29D939D28();
      }

      v23 = sub_29D939C58();

      sub_29D9339E8();
      v24 = sub_29D933958();
      (*(v6 + 8))(v10, v5);
      aBlock[4] = v27;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D8E44F0;
      aBlock[3] = &unk_2A2446BB8;
      v25 = _Block_copy(aBlock);

      [v12 snoozeJournalNotificationWithIdentifier:v22 journalType:v26 userInfo:v23 onDate:v24 completion:v25];

      _Block_release(v25);
    }

    else
    {
    }
  }

  else
  {

    sub_29D69466C(aBlock);
  }
}

void sub_29D7EC788(void *a1, void (*a2)(void))
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = a2;
    v9 = swift_slowAlloc();
    v57 = v9;
    *v7 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v57);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_29D6C2364(0xD00000000000003CLL, 0x800000029D9645C0, &v57);
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s.%{public}s]", v7, 0x16u);
    swift_arrayDestroy();
    v13 = v9;
    a2 = v8;
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v14 = [a1 request];
  v15 = [v14 content];

  v16 = [v15 categoryIdentifier];
  v17 = sub_29D939D68();
  v19 = v18;

  v20 = *MEMORY[0x29EDC5270];
  if (v17 == sub_29D939D68() && v19 == v21)
  {
    goto LABEL_12;
  }

  v23 = sub_29D93AD78();

  if (v23)
  {
LABEL_13:
    a2(26);
    goto LABEL_14;
  }

  v24 = *MEMORY[0x29EDC5278];
  if (v17 == sub_29D939D68() && v19 == v25)
  {
LABEL_12:

    goto LABEL_13;
  }

  v42 = sub_29D93AD78();

  if (v42)
  {
    goto LABEL_13;
  }

LABEL_14:
  v26 = [objc_opt_self() sharedBehavior];
  if (!v26)
  {
    goto LABEL_28;
  }

  v27 = v26;
  v28 = [v26 features];

  if (v28)
  {
    v29 = [v28 chutney];

    if (v29)
    {
      v30 = *MEMORY[0x29EDBA6B8];
      v31 = *MEMORY[0x29EDBA5A0];
      v32 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      LOBYTE(v30) = sub_29D7E35D0(v30, v31, v32);

      if (v30)
      {
        v33 = *MEMORY[0x29EDC5190];
        if (v17 != sub_29D939D68() || v19 != v34)
        {
          v43 = sub_29D93AD78();

          if (v43)
          {
            goto LABEL_27;
          }

          v53 = *MEMORY[0x29EDC5198];
          if (v17 != sub_29D939D68() || v19 != v54)
          {
            v55 = sub_29D93AD78();

            if ((v55 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }
        }

LABEL_27:
        a2(26);
        goto LABEL_28;
      }

      v35 = sub_29D937878();
      v36 = sub_29D93A2A8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136446466;
        v39 = sub_29D93AF08();
        v41 = sub_29D6C2364(v39, v40, &v57);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2082;
        *(v37 + 14) = sub_29D6C2364(0xD00000000000003CLL, 0x800000029D9645C0, &v57);
        _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s.%{public}s] bloodPressureJournal notifications will not be displayed because usage requirements are unfulfilled", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v38, -1, -1);
        MEMORY[0x29ED6BE30](v37, -1, -1);
      }
    }

LABEL_28:
    v44 = *MEMORY[0x29EDC5288];
    if (v17 != sub_29D939D68() || v19 != v45)
    {
      v46 = sub_29D93AD78();

      if (v46)
      {
        goto LABEL_32;
      }

      v48 = *MEMORY[0x29EDC5280];
      if (v17 != sub_29D939D68() || v19 != v49)
      {
        v50 = sub_29D93AD78();

        if (v50)
        {
          goto LABEL_32;
        }

        v51 = *MEMORY[0x29EDC5268];
        if (v17 != sub_29D939D68() || v19 != v52)
        {
          v56 = sub_29D93AD78();

          if (v56)
          {
            v47 = 26;
          }

          else
          {
            v47 = 0;
          }

          goto LABEL_33;
        }
      }
    }

LABEL_32:

    v47 = 26;
LABEL_33:
    a2(v47);
    a2(0);
    return;
  }

  __break(1u);
}

void sub_29D7ECE30(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_29D9336F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D933698();
  v12 = HKHRBloodPressureDetailRoomBaseLink();
  sub_29D9336D8();

  v13 = sub_29D933698();
  (*(v6 + 8))(v10, v5);
  LOBYTE(v5) = sub_29D696F08(v11, v13);

  if ((v5 & 1) == 0)
  {
    v14 = [a2 presentedViewController];
    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = v14;
    v16 = sub_29D9336B8();
    v17 = _HKSampleTypeFromURL();

    if (v17)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v18 = sub_29D7E8D18();

        if (v18)
        {
          return;
        }

LABEL_10:
        v19 = a3[4];
        sub_29D693E2C(a3, a3[3]);
        sub_29D935458();
        return;
      }
    }

    else
    {
      v17 = v15;
    }

    goto LABEL_10;
  }
}

uint64_t sub_29D7ED010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D7ED088()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D7ED134(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_29D9336F8() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

id sub_29D7ED1D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D7E8EA8();
}

unint64_t sub_29D7ED1DC()
{
  result = qword_2A1A25790;
  if (!qword_2A1A25790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A25790);
  }

  return result;
}

unint64_t sub_29D7ED230()
{
  result = qword_2A1A25788;
  if (!qword_2A1A25788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A25788);
  }

  return result;
}

uint64_t sub_29D7ED2C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D7ED2D8()
{
  result = qword_2A17B5588;
  if (!qword_2A17B5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5588);
  }

  return result;
}

unint64_t sub_29D7ED32C()
{
  result = qword_2A17B5598;
  if (!qword_2A17B5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5598);
  }

  return result;
}

void sub_29D7ED380(void *a1)
{
  v3 = *(sub_29D933A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D83A3F8(a1, v1 + v4, v5);
}

void sub_29D7ED440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7ED4A4(uint64_t a1)
{
  v4 = *(sub_29D9336F8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D7E39C8(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_29D7ED5C4()
{
  result = qword_2A17B55B8;
  if (!qword_2A17B55B8)
  {
    type metadata accessor for HeartAppDelegate();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B55B8);
  }

  return result;
}

uint64_t sub_29D7ED64C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_29D7ED6C4()
{
  result = qword_2A17B55D0;
  if (!qword_2A17B55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B55D0);
  }

  return result;
}

uint64_t sub_29D7ED738()
{
  sub_29D7ED8A0(v14);
  sub_29D7EDB6C(v11);
  sub_29D7EE4B0(0, &qword_2A17B3CA0, &qword_2A17B3CA8, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93F680;
  v1 = v15;
  v2 = v16;
  v3 = sub_29D693E2C(v14, v15);
  *(v0 + 56) = v1;
  *(v0 + 64) = *(v2 + 8);
  v4 = sub_29D693F78((v0 + 32));
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = v12;
  v6 = v13;
  v7 = sub_29D693E2C(v11, v12);
  *(v0 + 96) = v5;
  *(v0 + 104) = *(v6 + 8);
  v8 = sub_29D693F78((v0 + 72));
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  v9 = sub_29D935E88();

  sub_29D69417C(v11);
  sub_29D69417C(v14);
  return v9;
}

uint64_t sub_29D7ED8A0@<X0>(uint64_t *a1@<X8>)
{
  sub_29D7EF974(0, &qword_2A17B55E0, MEMORY[0x29EDC2C30], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v19 - v5;
  v7 = sub_29D934D98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D934FB8();
  v13 = sub_29D936FC8();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_29D934F28();
  sub_29D934F58();
  sub_29D934F08();
  v14 = sub_29D934D88();
  MEMORY[0x2A1C7C4A8](v14, v15);
  v16 = sub_29D935728();
  v17 = MEMORY[0x29EDC20B8];
  a1[3] = v16;
  a1[4] = v17;
  sub_29D693F78(a1);
  sub_29D935718();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_29D7EDB6C@<X0>(uint64_t *a1@<X8>)
{
  sub_29D7EF974(0, &qword_2A17B55E0, MEMORY[0x29EDC2C30], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v19 - v5;
  v7 = sub_29D934D98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D934FC8();
  v13 = sub_29D936FC8();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_29D934F38();
  sub_29D934F58();
  sub_29D934F08();
  v14 = sub_29D934D88();
  MEMORY[0x2A1C7C4A8](v14, v15);
  v16 = sub_29D935728();
  v17 = MEMORY[0x29EDC20B8];
  a1[3] = v16;
  a1[4] = v17;
  sub_29D693F78(a1);
  sub_29D935718();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_29D7EDE3C(uint64_t a1)
{
  sub_29D7EE4B0(0, &qword_2A17B3CA0, &qword_2A17B3CA8, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D93DDB0;
  sub_29D6945AC(a1, v2 + 32);
  v3 = sub_29D935E88();

  return v3;
}

uint64_t sub_29D7EDED0()
{
  v0 = sub_29D935378();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D936F78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D934F58();
  (*(v1 + 104))(v5, *MEMORY[0x29EDC1F60], v0);
  sub_29D936F68();
  sub_29D7EF974(0, &qword_2A17B55E8, sub_29D7EF828, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  v13 = MEMORY[0x29EDC2BE8];
  *(v12 + 16) = xmmword_29D93DDB0;
  *(v12 + 56) = v6;
  *(v12 + 64) = v13;
  *(v12 + 72) = MEMORY[0x29EDC2BE0];
  v14 = sub_29D693F78((v12 + 32));
  (*(v7 + 16))(v14, v11, v6);
  v15 = sub_29D935E88();

  (*(v7 + 8))(v11, v6);
  return v15;
}

uint64_t sub_29D7EE180()
{
  v0 = sub_29D935378();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D934EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7EF32C();
  (*(v1 + 104))(v5, *MEMORY[0x29EDC1F60], v0);
  sub_29D934F98();
  sub_29D934F48();
  sub_29D934EC8();
  sub_29D7EF974(0, &qword_2A17B55E8, sub_29D7EF828, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  v13 = MEMORY[0x29EDC1CA8];
  *(v12 + 16) = xmmword_29D93DDB0;
  *(v12 + 56) = v6;
  *(v12 + 64) = v13;
  *(v12 + 72) = MEMORY[0x29EDC1CA0];
  v14 = sub_29D693F78((v12 + 32));
  (*(v7 + 16))(v14, v11, v6);
  v15 = sub_29D935E88();

  (*(v7 + 8))(v11, v6);
  return v15;
}

uint64_t sub_29D7EE3C0(uint64_t a1)
{
  v2 = sub_29D934D98();
  v8[3] = v2;
  v8[4] = MEMORY[0x29EDC1C48];
  v3 = sub_29D693F78(v8);
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  v4 = sub_29D935808();
  sub_29D69417C(v8);
  sub_29D7EF904(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93DDB0;
  *(v5 + 32) = v4;
  v6 = MEMORY[0x29ED65BE0]();

  return v6;
}

void sub_29D7EE4B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_29D7EE518(void *a1, int64_t a2, char a3)
{
  result = sub_29D7EE928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D7EE538(void *a1, int64_t a2, char a3)
{
  result = sub_29D7EEF5C(a1, a2, a3, *v3, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8]);
  *v3 = result;
  return result;
}

void *sub_29D7EE570(void *a1, int64_t a2, char a3)
{
  result = sub_29D7EEB98(a1, a2, a3, *v3, &qword_2A17B5610, &qword_2A17B42A8, &qword_2A17B1080, MEMORY[0x29EDC1910]);
  *v3 = result;
  return result;
}

size_t sub_29D7EE5B0(size_t a1, int64_t a2, char a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC2240]);
  *v3 = result;
  return result;
}

char *sub_29D7EE600(char *a1, int64_t a2, char a3)
{
  result = sub_29D7EEA74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D7EE620(void *a1, int64_t a2, char a3)
{
  result = sub_29D7EEB98(a1, a2, a3, *v3, &qword_2A17B5530, &qword_2A17B42A0, &qword_2A17B1140, MEMORY[0x29EDC18F8]);
  *v3 = result;
  return result;
}

size_t sub_29D7EE660(size_t a1, int64_t a2, char a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B10E0, type metadata accessor for BloodPressurePDFSampleInterval, type metadata accessor for BloodPressurePDFSampleInterval);
  *v3 = result;
  return result;
}

void *sub_29D7EE6B0(void *a1, int64_t a2, char a3)
{
  result = sub_29D7EEF5C(a1, a2, a3, *v3, &qword_2A17B1078, &qword_2A17B1080, MEMORY[0x29EDC1910]);
  *v3 = result;
  return result;
}

size_t sub_29D7EE6E8(size_t a1, int64_t a2, char a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B10D0, type metadata accessor for PregnancyModel, type metadata accessor for PregnancyModel);
  *v3 = result;
  return result;
}

size_t sub_29D7EE738(size_t a1, int64_t a2, char a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B1388, type metadata accessor for BloodPressureDayCoordinate, type metadata accessor for BloodPressureDayCoordinate);
  *v3 = result;
  return result;
}

void *sub_29D7EE788(void *a1, int64_t a2, char a3)
{
  result = sub_29D7EEF5C(a1, a2, a3, *v3, &qword_2A17B5620, &unk_2A17B13A0, MEMORY[0x29EDC2160]);
  *v3 = result;
  return result;
}

void *sub_29D7EE7C0(void *a1, int64_t a2, char a3)
{
  result = sub_29D7EEF5C(a1, a2, a3, *v3, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  *v3 = result;
  return result;
}

char *sub_29D7EE7F8(char *a1, int64_t a2, char a3)
{
  result = sub_29D7EF0C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29D7EE818(size_t a1, int64_t a2, char a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B1438, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BC8]);
  *v3 = result;
  return result;
}

void *sub_29D7EE868(void *a1, int64_t a2, char a3)
{
  result = sub_29D7EF1E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29D7EE888(size_t a1, int64_t a2, char a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B5600, sub_29D73F6F0, sub_29D73F6F0);
  *v3 = result;
  return result;
}

size_t sub_29D7EE8D8(size_t a1, int64_t a2, char a3)
{
  result = sub_29D7EED34(a1, a2, a3, *v3, &qword_2A17B5608, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
  *v3 = result;
  return result;
}

void *sub_29D7EE928(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D7EF974(0, &qword_2A17B18F0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D7EEA74(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D7546B8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29D7EEB98(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    sub_29D7EF904(0, a5, a6, a7, a8);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 25;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 3);
  }

  else
  {
    v17 = MEMORY[0x29EDCA190];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D7EE4B0(0, a6, a7, a8, MEMORY[0x29EDC9A40]);
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_29D7EED34(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D7EF974(0, a5, a6, MEMORY[0x29EDC9E90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29D7EEF5C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_29D7EE4B0(0, a5, a6, a7, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D6B7370(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_29D7EF0C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D7546B8(0, &qword_2A17B5618, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29D7EF1E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D7EF974(0, &qword_2A17B5628, sub_29D7EF9D8, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D7EF9D8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29D7EF32C()
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v0 = v40;
  v39 = sub_29D9334A8();
  v40[0] = v1;
  v40[1] = sub_29D9334A8();
  v40[2] = v2;
  v3 = sub_29D9334A8();
  v5 = v4;
  v6 = sub_29D9334A8();
  v8 = v7;
  MEMORY[0x29ED6A240](32, 0xE100000000000000);
  MEMORY[0x29ED6A240](v6, v8);

  v40[3] = v3;
  v40[4] = v5;
  v9 = sub_29D9334A8();
  v11 = v10;
  v12 = sub_29D9334A8();
  v14 = v13;
  MEMORY[0x29ED6A240](32, 0xE100000000000000);
  MEMORY[0x29ED6A240](v12, v14);

  v40[5] = v9;
  v40[6] = v11;
  v40[7] = sub_29D9334A8();
  v40[8] = v15;
  v37 = MEMORY[0x29EDCA190];
  sub_29D7EE600(0, 5, 0);
  v16 = v37;
  for (i = 1; i != 6; ++i)
  {
    v18 = *v0;
    v36 = *(v0 - 1);
    sub_29D935E88();
    sub_29D9334A8();
    sub_29D7EE4B0(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29D93F680;
    sub_29D7EF894();
    v20 = sub_29D93A848();
    v21 = v16;
    v23 = v22;
    v24 = v0;
    v25 = MEMORY[0x29EDC99B0];
    *(v19 + 56) = MEMORY[0x29EDC99B0];
    v26 = sub_29D69AD24();
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    v16 = v21;
    *(v19 + 96) = v25;
    *(v19 + 104) = v26;
    *(v19 + 64) = v26;
    *(v19 + 72) = v36;
    *(v19 + 80) = v18;
    sub_29D935E88();
    v27 = sub_29D939D88();
    v29 = v28;

    v38 = v21;
    v30 = *(v21 + 16);
    v31 = *(v16 + 24);
    if (v30 >= v31 >> 1)
    {
      sub_29D7EE600((v31 > 1), v30 + 1, 1);
      v16 = v38;
    }

    *(v16 + 16) = v30 + 1;
    v32 = v16 + 16 * v30;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    v0 = v24 + 2;
  }

  v33 = MEMORY[0x29EDC99B0];
  swift_arrayDestroy();
  sub_29D7546B8(0, &qword_2A17B3628, v33, MEMORY[0x29EDC9A40]);
  sub_29D738398();
  v34 = sub_29D939CA8();

  return v34;
}

unint64_t sub_29D7EF828()
{
  result = qword_2A17B55F0;
  if (!qword_2A17B55F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B55F0);
  }

  return result;
}

unint64_t sub_29D7EF894()
{
  result = qword_2A17B55F8;
  if (!qword_2A17B55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B55F8);
  }

  return result;
}

void sub_29D7EF904(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D7EE4B0(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D7EF974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AFibBurdenLifeFactorDetailViewController()
{
  result = qword_2A17B5638;
  if (!qword_2A17B5638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7EFAA0(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AFibBurdenLifeFactorDetailViewController();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemGroupedBackgroundColor];
    [v3 setBackgroundColor_];

    sub_29D7EFB64();
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7EFB64()
{
  v1 = [v0 navigationItem];
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  [v1 setTitle_];

  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode_];

  v4 = [v0 navigationItem];
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneButtonTapped];
  [v4 setRightBarButtonItem_];
}

id sub_29D7EFD08()
{
  sub_29D936D98();
  v1 = sub_29D936DA8();
  v1();
  sub_29D936D78();
  v2 = sub_29D935F38();

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v7 = v2;
    while (v5 < *(v2 + 16))
    {
      v10 = *(v2 + 16 * v5 + 32);
      sub_29D695734(0, &qword_2A17B1090);
      sub_29D695734(0, &qword_2A17B5648);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_29D679D3C(v8, v11);
        sub_29D693E2C(v11, v11[3]);
        result = [v0 collectionView];
        if (!result)
        {
          goto LABEL_14;
        }

        v6 = result;
        sub_29D936568();

        sub_29D936978();
        result = sub_29D69417C(v11);
        v2 = v7;
      }

      else
      {
        sub_29D936978();
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        result = sub_29D7F0078(v8);
      }

      if (v4 == ++v5)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
  }

  return result;
}

id sub_29D7EFF70(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AFibBurdenLifeFactorDetailViewController();
  return objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, a3);
}

id sub_29D7EFFBC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AFibBurdenLifeFactorDetailViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D7F0038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7F0078(uint64_t a1)
{
  sub_29D7F00D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7F00D4()
{
  if (!qword_2A17B5650)
  {
    sub_29D695734(255, &qword_2A17B5648);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5650);
    }
  }
}

uint64_t sub_29D7F0140(uint64_t a1)
{
  swift_getObjectType();
  sub_29D694294(a1, v15);
  sub_29D69567C(0, &qword_2A17B4920, 0x29EDBAE18);
  if (swift_dynamicCast())
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
    [v14 dataCount];
    v3 = sub_29D93A138();
    v4 = [v2 stringFromNumber:v3];

    if (v4)
    {
      v5 = sub_29D939D68();

      return v5;
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v2 = sub_29D937878();
    v8 = sub_29D93A288();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136446210;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_29D677000, v2, v8, "[%{public}s] Object is not an instance of HKStatistics", v9, 0xCu);
      sub_29D69417C(v10);
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }
  }

  return 0;
}

id sub_29D7F084C(void *a1)
{
  v3 = type metadata accessor for DefaultSampleMetadataObject();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC5Heart27DefaultSampleMetadataObject_sample] = a1;
  v13.receiver = v4;
  v13.super_class = v3;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = [v1 unitController];
  v8 = [objc_allocWithZone(MEMORY[0x29EDC4640]) initWithSample:v5 unitPreferenceController:v7];

  v9 = [v1 displayTypeController];
  v10 = [v1 unitController];
  v11 = [objc_allocWithZone(MEMORY[0x29EDC4648]) initWithMetadataObject:v6 metadataDataSource:v8 displayTypeController:v9 unitController:v10];

  return v11;
}

uint64_t sub_29D7F0DD4(uint64_t a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D694294(a1, v16);
  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  if (swift_dynamicCast())
  {
    v8 = v15;
    v9 = [v15 endDate];
    sub_29D933998();

    v10 = sub_29D933958();
    (*(v3 + 8))(v7, v2);
    v11 = HKFormattedStringForDate();

    if (v11)
    {
      v12 = sub_29D939D68();
    }

    else
    {

      return 0;
    }

    return v12;
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

void *sub_29D7F0FBC()
{
  swift_getKeyPath();
  sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
  sub_29D933E18();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_29D7F1064(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x2A1C7C4A8]();
    sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
    sub_29D933E08();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
  v5 = v4;
  v6 = a1;
  v7 = sub_29D93A708();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void sub_29D7F11F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

uint64_t sub_29D7F1278@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v8 = v2;
  sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
  sub_29D933E18();

  v5 = *a1;
  swift_beginAccess();
  v6 = sub_29D9339F8();
  return (*(*(v6 - 8) + 16))(a2, v8 + v5, v6);
}

uint64_t sub_29D7F1398(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v21[1] = a4;
  v6 = v4;
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  swift_beginAccess();
  v15 = *(v9 + 16);
  v15(v13, v6 + v14, v8);
  sub_29D7F2D98(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
  v22 = a1;
  LOBYTE(a1) = sub_29D939CF8();
  v16 = *(v9 + 8);
  v16(v13, v8);
  if (a1)
  {
    v15(v13, v22, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v14, v13, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v18);
    v19 = v22;
    v21[-2] = v6;
    v21[-1] = v19;
    v23 = v6;
    sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
    sub_29D933E08();
  }

  return (v16)(v22, v8);
}

uint64_t sub_29D7F1628(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_29D9339F8();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_29D7F1720(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
  sub_29D933E18();

  return *(v2 + *a2);
}

uint64_t sub_29D7F17E8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v4);
    sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
    sub_29D933E08();
  }

  return result;
}

uint64_t sub_29D7F1984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29D7F2CE4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v36 - v9;
  v11 = sub_29D933318();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](a1, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v36 - v20;
  v40 = a3;
  v41 = v12;
  if (v19)
  {
    v22 = [v19 timeIntervals];
    if (v22)
    {
      sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
      v23 = sub_29D939F38();

      v38 = v11;
      v39 = v10;
      v37 = a2;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
      {
        v25 = 0;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x29ED6AE30](v25, v23);
          }

          else
          {
            if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v26 = *(v23 + 8 * v25 + 32);
          }

          v22 = v26;
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (![v26 dayWindowType])
          {

            goto LABEL_20;
          }

          ++v25;
          if (v27 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      v22 = 0;
LABEL_20:
      v11 = v38;
      v10 = v39;
      v12 = v41;
      a2 = v37;
    }
  }

  else
  {
    v22 = 0;
  }

  (*(v12 + 16))(v21, a2, v11);
  if (v22)
  {
    v28 = [v22 scheduledTime];
    sub_29D933298();

    sub_29D9332C8();
    v29 = *(v12 + 8);
    v29(v17, v11);
    sub_29D9332D8();
    v30 = [v22 scheduledTime];
    sub_29D933298();

    sub_29D9332E8();
    v31 = v11;
    v29(v17, v11);
  }

  else
  {
    v31 = v11;
    sub_29D9332D8();
  }

  sub_29D9332F8();
  sub_29D9332B8();
  v32 = sub_29D9339F8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v10, 1, v32) == 1)
  {
    sub_29D9339E8();

    (*(v41 + 8))(v21, v31);
    result = v34(v10, 1, v32);
    if (result != 1)
    {
      return sub_29D6A0D34(v10);
    }
  }

  else
  {
    (*(v41 + 8))(v21, v31);

    return (*(v33 + 32))(v40, v10, v32);
  }

  return result;
}

uint64_t sub_29D7F1DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29D7F2CE4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v36 - v9;
  v11 = sub_29D933318();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](a1, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v36 - v20;
  v40 = a3;
  v41 = v12;
  if (v19)
  {
    v22 = [v19 timeIntervals];
    if (v22)
    {
      sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
      v23 = sub_29D939F38();

      v38 = v11;
      v39 = v10;
      v37 = a2;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
      {
        v25 = 0;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x29ED6AE30](v25, v23);
          }

          else
          {
            if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v26 = *(v23 + 8 * v25 + 32);
          }

          v22 = v26;
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if ([v26 dayWindowType] == 1)
          {

            goto LABEL_20;
          }

          ++v25;
          if (v27 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      v22 = 0;
LABEL_20:
      v11 = v38;
      v10 = v39;
      v12 = v41;
      a2 = v37;
    }
  }

  else
  {
    v22 = 0;
  }

  (*(v12 + 16))(v21, a2, v11);
  if (v22)
  {
    v28 = [v22 scheduledTime];
    sub_29D933298();

    sub_29D9332C8();
    v29 = *(v12 + 8);
    v29(v17, v11);
    sub_29D9332D8();
    v30 = [v22 scheduledTime];
    sub_29D933298();

    sub_29D9332E8();
    v31 = v11;
    v29(v17, v11);
  }

  else
  {
    v31 = v11;
    sub_29D9332D8();
  }

  sub_29D9332F8();
  sub_29D9332B8();
  v32 = sub_29D9339F8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v10, 1, v32) == 1)
  {
    sub_29D9339E8();

    (*(v41 + 8))(v21, v31);
    result = v34(v10, 1, v32);
    if (result != 1)
    {
      return sub_29D6A0D34(v10);
    }
  }

  else
  {
    (*(v41 + 8))(v21, v31);

    return (*(v33 + 32))(v40, v10, v32);
  }

  return result;
}

void *sub_29D7F2248()
{
  v1 = sub_29D933AA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v19 - v12;
  swift_getKeyPath();
  v20 = v0;
  sub_29D7F2D98(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
  sub_29D933E18();

  result = *(v0 + 16);
  if (result)
  {
    v15 = [result journalType];
    if (v15 == 1)
    {
      swift_getKeyPath();
      v20 = v0;
      sub_29D933E18();
    }

    else
    {
      if (v15)
      {
        return 0;
      }

      swift_getKeyPath();
      v20 = v0;
      sub_29D933E18();

      *(v0 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled);
    }

    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A2BE98;
    (*(v5 + 16))(v10, v13, v4);
    sub_29D935E88();
    v17 = v16;
    sub_29D933A98();
    v18 = sub_29D939D98();
    (*(v5 + 8))(v13, v4);
    return v18;
  }

  return result;
}

uint64_t sub_29D7F25BC()
{
  v1 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__wakeupTime;
  v2 = sub_29D9339F8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__bedTime, v2);
  v4 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel___observationRegistrar;
  v5 = sub_29D933E38();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 12);
  v7 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalSettingsViewModel()
{
  result = qword_2A17B5778;
  if (!qword_2A17B5778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7F2724()
{
  result = sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29D933E38();
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

uint64_t sub_29D7F280C(void *a1, int a2)
{
  v47 = a2;
  v4 = sub_29D9339F8();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v43 = &v42 - v10;
  sub_29D7F2CE4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v15 = &v42 - v14;
  v16 = sub_29D933AB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7F2CE4(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v26 = &v42 - v25;
  v42 = sub_29D933318();
  v27 = *(v42 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v42, v29);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete) = 0;
  *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled) = 0;
  *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__hasValidSamples) = 0;
  sub_29D933E28();
  v32 = *(v2 + 16);
  v33 = a1;

  *(v2 + 16) = a1;
  (*(v17 + 104))(v21, *MEMORY[0x29EDB9C78], v16);
  sub_29D933AC8();
  (*(v17 + 8))(v21, v16);
  v34 = sub_29D933CE8();
  (*(*(v34 - 8) + 56))(v26, 0, 1, v34);
  sub_29D933D28();
  v35 = sub_29D933D38();
  (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
  sub_29D933308();
  v36 = v43;
  sub_29D7F1984(a1, v31, v43);
  v37 = v44;
  sub_29D7F1DE4(a1, v31, v44);
  (*(v27 + 8))(v31, v42);
  v38 = *(v45 + 32);
  v39 = v36;
  v40 = v46;
  v38(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__wakeupTime, v39, v46);
  v38(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__bedTime, v37, v40);
  *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isPresentedModally) = v47;
  return v2;
}

void sub_29D7F2CE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D7F2D98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7F2E28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

unint64_t sub_29D7F2E74()
{
  result = qword_2A1A24478;
  if (!qword_2A1A24478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24478);
  }

  return result;
}

uint64_t sub_29D7F2F58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D7F2FA0(char a1)
{
  if (a1)
  {
    [objc_opt_self() tachycardiaThresholdHeartRate];
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v2 = sub_29D93A6E8();
    v3 = sub_29D8EFDF0(v2, v1);
    v5 = v4;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    *(v6 + 56) = MEMORY[0x29EDC99B0];
    *(v6 + 64) = sub_29D69AD24();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_29D939D38();
    v9 = v8;

    sub_29D9334A8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D93DDB0;
    v11 = *MEMORY[0x29EDC5260];
    v12 = MEMORY[0x29EDC9C10];
    *(v10 + 56) = MEMORY[0x29EDC9BA8];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    v13 = sub_29D939D38();
    v15 = v14;

    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    *(v16 + 32) = v7;
    *(v16 + 40) = v9;
    *(v16 + 48) = v13;
  }

  else
  {
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *(v16 + 32) = sub_29D9334A8();
    *(v16 + 40) = v17;
    v18 = sub_29D9334A8();
    v15 = v19;
    *(v16 + 48) = v18;
  }

  *(v16 + 56) = v15;
  return v16;
}

uint64_t sub_29D7F334C(char a1, char a2)
{
  if (a1)
  {
    [objc_opt_self() tachycardiaThresholdHeartRate];
    v3 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v4 = sub_29D93A6E8();
    v5 = sub_29D8EFDF0(v4, v3);
    v7 = v6;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29D93DDB0;
    *(v8 + 56) = MEMORY[0x29EDC99B0];
    *(v8 + 64) = sub_29D69AD24();
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    v9 = sub_29D939D38();
    v11 = v10;

    if (a2)
    {
      if (qword_2A17B0D80 == -1)
      {
        goto LABEL_13;
      }
    }

    else if (qword_2A17B0D80 == -1)
    {
LABEL_13:
      sub_29D9334A8();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_29D93DDB0;
      v18 = *MEMORY[0x29EDC5260];
      v19 = MEMORY[0x29EDC9C10];
      *(v17 + 56) = MEMORY[0x29EDC9BA8];
      *(v17 + 64) = v19;
      *(v17 + 32) = v18;
      v20 = sub_29D939D38();
      v16 = v21;

      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_29D93F680;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      *(v12 + 48) = v20;
      goto LABEL_14;
    }

    swift_once();
    goto LABEL_13;
  }

  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93F680;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_29D9334A8();
  *(v12 + 40) = v13;
  if (qword_2A17B0D80 != -1)
  {
    swift_once();
  }

  v14 = sub_29D9334A8();
  v16 = v15;
  *(v12 + 48) = v14;
LABEL_14:
  *(v12 + 56) = v16;
  return v12;
}

uint64_t sub_29D7F37B8@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v29 - v6;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v2);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v29 - v11;
  v13 = sub_29D9346E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *MEMORY[0x29EDBA568];
  v20 = sub_29D9371B8();
  v21 = [v20 areAllRequirementsSatisfied];

  if (v21)
  {
    sub_29D7F2FA0(1);
  }

  else
  {
    v22 = [objc_opt_self() tachycardiaThresholdHeartRate] < *MEMORY[0x29EDC5258];
    sub_29D7F334C(1, v22);
  }

  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2C038;
  sub_29D9334A8();
  (*(v14 + 104))(v18, *MEMORY[0x29EDC1760], v13);
  v24 = v23;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
  sub_29D934818();
  v26 = sub_29D934358();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  sub_29D934988();
  v27 = sub_29D9349A8();
  return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
}

uint64_t sub_29D7F3BBC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v32 - v5;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v32 - v10;
  v12 = sub_29D9346E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *MEMORY[0x29EDBA568];
  v19 = sub_29D9371B8();
  v20 = [v19 areAllRequirementsSatisfied];

  if (v20)
  {
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v22 = qword_2A1A2C038;
    *(v21 + 32) = sub_29D9334A8();
    *(v21 + 40) = v23;
  }

  else
  {
    [objc_opt_self() tachycardiaThresholdHeartRate];
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v22 = qword_2A1A2C038;
    *(v21 + 32) = sub_29D9334A8();
    *(v21 + 40) = v24;
    if (qword_2A17B0D80 != -1)
    {
      swift_once();
    }
  }

  *(v21 + 48) = sub_29D9334A8();
  *(v21 + 56) = v25;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  (*(v13 + 104))(v17, *MEMORY[0x29EDC1768], v12);
  v26 = v22;
  sub_29D934788();
  v27 = sub_29D934798();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  sub_29D9347E8();
  sub_29D934818();
  v28 = sub_29D934358();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = v33;
  sub_29D934988();
  v30 = sub_29D9349A8();
  return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
}

void sub_29D7F41A4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v116 = &v108 - v8;
  v9 = sub_29D9346B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v4);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v117 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v108 - v21;
  v23 = sub_29D9346E8();
  v118 = *(v23 - 8);
  v24 = *(v118 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v108 - v30;
  v120 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v120)
  {
    __break(1u);
    goto LABEL_52;
  }

  v119 = a2;
  v32 = *MEMORY[0x29EDBA5A8];
  v33 = sub_29D939D68();
  v35 = v34;
  if (v33 == sub_29D939D68() && v35 == v36)
  {

LABEL_6:
    v38 = sub_29D9349A8();
    (*(*(v38 - 8) + 56))(v119, 1, 1, v38);
    v39 = v120;

    return;
  }

  v37 = sub_29D93AD78();

  if (v37)
  {
    goto LABEL_6;
  }

  v40 = *MEMORY[0x29EDBA6A0];
  v41 = sub_29D939D68();
  v43 = v42;
  if (v41 == sub_29D939D68() && v43 == v44)
  {

    goto LABEL_14;
  }

  v45 = sub_29D93AD78();

  if ((v45 & 1) == 0)
  {
    v64 = *MEMORY[0x29EDBA640];
    v65 = sub_29D939D68();
    v67 = v66;
    if (v65 == sub_29D939D68() && v67 == v68)
    {

      goto LABEL_24;
    }

    v69 = sub_29D93AD78();

    if (v69)
    {

LABEL_24:
      v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      if (qword_2A1A257A0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

    v70 = *MEMORY[0x29EDBA620];
    v71 = sub_29D939D68();
    v73 = v72;
    if (v71 == sub_29D939D68() && v73 == v74)
    {

LABEL_31:
      v120 = sub_29D934848();
      v77 = v76;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v114 = qword_2A1A2C038;
      v115 = sub_29D9334A8();
      sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v78 = swift_allocObject();
      v112 = xmmword_29D93DDB0;
      *(v78 + 16) = xmmword_29D93DDB0;
      *(v78 + 56) = MEMORY[0x29EDC99B0];
      *(v78 + 64) = sub_29D69AD24();
      *(v78 + 32) = v120;
      *(v78 + 40) = v77;
      v113 = v77;
      sub_29D935E88();
      v115 = sub_29D939D38();
      v80 = v79;

      (*(v118 + 104))(v31, *MEMORY[0x29EDC1758], v23);
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v81 = swift_allocObject();
      *(v81 + 16) = v112;
      *(v81 + 32) = v115;
      *(v81 + 40) = v80;
      v111 = v80;
      *&v112 = v81;
      sub_29D935E88();
      v82 = sub_29D934828();
      v109 = v83;
      v110 = v82;
      (*(v10 + 104))(v14, *MEMORY[0x29EDC1720], v9);
      sub_29D934698();
      (*(v10 + 8))(v14, v9);
LABEL_34:
      v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      v54 = v120;
      goto LABEL_16;
    }

    v75 = sub_29D93AD78();

    if (v75)
    {

      goto LABEL_31;
    }

    v84 = *MEMORY[0x29EDBA6A8];
    v85 = sub_29D939D68();
    v87 = v86;
    if (v85 == sub_29D939D68() && v87 == v88)
    {

LABEL_39:
      v120 = sub_29D934858();
      v91 = v90;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v114 = qword_2A1A2C038;
      v115 = sub_29D9334A8();
      sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v92 = swift_allocObject();
      v112 = xmmword_29D93DDB0;
      *(v92 + 16) = xmmword_29D93DDB0;
      *(v92 + 56) = MEMORY[0x29EDC99B0];
      *(v92 + 64) = sub_29D69AD24();
      *(v92 + 32) = v120;
      *(v92 + 40) = v91;
      v113 = v91;
      sub_29D935E88();
      v115 = sub_29D939D38();
      v94 = v93;

      (*(v118 + 104))(v31, *MEMORY[0x29EDC1758], v23);
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v95 = swift_allocObject();
      *(v95 + 16) = v112;
      *(v95 + 32) = v115;
      *(v95 + 40) = v94;
      v111 = v94;
      *&v112 = v95;
      sub_29D935E88();
      v96 = sub_29D934828();
      v109 = v97;
      v110 = v96;
      (*(v10 + 104))(v14, *MEMORY[0x29EDC1728], v9);
      sub_29D934698();
      (*(v10 + 8))(v14, v9);
      goto LABEL_34;
    }

    v89 = sub_29D93AD78();

    if (v89)
    {
      goto LABEL_39;
    }

    if ((sub_29D9347F8() & 1) == 0)
    {
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v98 = qword_2A1A2C038;
      goto LABEL_48;
    }

    if (qword_2A1A257A0 == -1)
    {
LABEL_44:
      v98 = qword_2A1A2C038;
LABEL_48:
      v114 = v98;
      v99 = sub_29D9334A8();
      v101 = v100;
      (*(v118 + 104))(v31, *MEMORY[0x29EDC1750], v23);
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_29D93DDB0;
      *(v102 + 32) = v99;
      *(v102 + 40) = v101;
      *&v112 = v102;
      sub_29D935E88();
      v103 = sub_29D934808();
      v109 = v104;
      v110 = v103;
      v115 = MEMORY[0x29ED64C30](v99, v101);
      v111 = v105;

      v54 = sub_29D934808();
      v113 = v106;
      v107 = [objc_opt_self() tachycardiaLearnMoreLink];
      sub_29D939D68();

      sub_29D9336E8();

      v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      goto LABEL_16;
    }

LABEL_52:
    swift_once();
    goto LABEL_44;
  }

LABEL_14:
  v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  if (qword_2A1A257A0 != -1)
  {
LABEL_49:
    swift_once();
  }

LABEL_15:
  v114 = qword_2A1A2C038;
  v47 = sub_29D9334A8();
  v49 = v48;
  (*(v118 + 104))(v31, *MEMORY[0x29EDC1750], v23);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_29D93DDB0;
  *(v50 + 32) = v47;
  *(v50 + 40) = v49;
  *&v112 = v50;
  sub_29D935E88();
  v51 = sub_29D934808();
  v109 = v52;
  v110 = v51;
  v115 = MEMORY[0x29ED64C30](v47, v49);
  v111 = v53;

  v54 = sub_29D934808();
  v113 = v55;
  v56 = [objc_opt_self() tachycardiaLearnMoreLink];
  sub_29D939D68();

  sub_29D9336E8();

LABEL_16:
  v120 = v54;
  v57 = v119;
  if (v46[244] != -1)
  {
    swift_once();
  }

  v58 = v114;
  sub_29D9334A8();
  v59 = v118;
  (*(v118 + 16))(v28, v31, v23);
  v60 = v58;
  v61 = v116;
  sub_29D934788();
  v62 = sub_29D934798();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  sub_29D6D962C(v22, v117);
  sub_29D934978();
  sub_29D6D96C0(v22);
  (*(v59 + 8))(v31, v23);
  v63 = sub_29D9349A8();
  (*(*(v63 - 8) + 56))(v57, 0, 1, v63);
}

uint64_t sub_29D7F51D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1860];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D7F5248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7F54F8();

  return MEMORY[0x2A1C60FD8](a1, a2, a3, v6);
}

uint64_t sub_29D7F529C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D7F54F8();

  return MEMORY[0x2A1C60FC0](a1, a2, v4);
}

unint64_t sub_29D7F52F4()
{
  result = qword_2A1A24480;
  if (!qword_2A1A24480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24480);
  }

  return result;
}

uint64_t sub_29D7F5348()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D941B10;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA458]);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D7F543C(uint64_t a1)
{
  v2 = sub_29D7F52F4();

  return MEMORY[0x2A1C61000](a1, v2);
}

uint64_t sub_29D7F5488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7F52F4();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, v6);
}

unint64_t sub_29D7F54F8()
{
  result = qword_2A1A24488;
  if (!qword_2A1A24488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24488);
  }

  return result;
}

uint64_t sub_29D7F555C(uint64_t a1)
{
  v2[93] = v1;
  v2[92] = a1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D7FF488(0, &qword_2A17B3C78, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[94] = swift_task_alloc();
  v6 = sub_29D935C18();
  v2[95] = v6;
  v7 = *(v6 - 8);
  v2[96] = v7;
  v8 = *(v7 + 64) + 15;
  v2[97] = swift_task_alloc();
  v9 = type metadata accessor for BloodPressurePDFViewModel(0);
  v2[98] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v11 = *(type metadata accessor for PregnancyModel() - 8);
  v2[101] = v11;
  v12 = *(v11 + 64) + 15;
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v13 = sub_29D933CC8();
  v2[105] = v13;
  v14 = *(v13 - 8);
  v2[106] = v14;
  v15 = *(v14 + 64) + 15;
  v2[107] = swift_task_alloc();
  v16 = sub_29D933CE8();
  v2[108] = v16;
  v17 = *(v16 - 8);
  v2[109] = v17;
  v18 = *(v17 + 64) + 15;
  v2[110] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v3);
  v20 = *(*(v19 - 8) + 64) + 15;
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v21 = sub_29D9339F8();
  v2[113] = v21;
  v22 = *(v21 - 8);
  v2[114] = v22;
  v23 = *(v22 + 64) + 15;
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v24 = sub_29D935EB8();
  v2[125] = v24;
  v25 = *(v24 - 8);
  v2[126] = v25;
  v26 = *(v25 + 64) + 15;
  v2[127] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A17B2D20, MEMORY[0x29EDB9950], v3);
  v28 = *(*(v27 - 8) + 64) + 15;
  v2[128] = swift_task_alloc();
  v29 = sub_29D9363E8();
  v2[129] = v29;
  v30 = *(v29 - 8);
  v2[130] = v30;
  v31 = *(v30 + 64) + 15;
  v2[131] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7F5A08, 0, 0);
}

uint64_t sub_29D7F5A08()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[93];
  sub_29D6945AC((v4 + 1), (v0 + 53));
  sub_29D9363D8();
  v0[132] = sub_29D9359A8();
  (*(v2 + 8))(v1, v3);
  v5 = v4[4];
  v6 = v4[5];
  sub_29D693E2C(v4 + 1, v5);
  v7 = *(MEMORY[0x29EDC2730] + 4);
  v8 = swift_task_alloc();
  v0[133] = v8;
  *v8 = v0;
  v8[1] = sub_29D7F5B1C;
  v9 = v0[127];

  return MEMORY[0x2A1C62868](v9, v5, v6);
}

uint64_t sub_29D7F5B1C()
{
  v2 = *(*v1 + 1064);
  v5 = *v1;
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v3 = sub_29D7F8BF4;
  }

  else
  {
    v3 = sub_29D7F5C30;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D7F5C30()
{
  v78 = v0;
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[125];
  v5 = v0[124];
  v60 = v0[123];
  v69 = v0[114];
  v73 = v0[113];
  v6 = v0[110];
  v7 = v0[109];
  v65 = v0[112];
  v67 = v0[108];
  v8 = v0[107];
  v9 = v0[106];
  v63 = v0[105];
  v10 = v0[93];
  sub_29D935EA8();
  (*(v3 + 8))(v2, v4);
  sub_29D9339E8();
  v11 = *v10;
  v0[135] = *v10;
  v61 = v11;
  sub_29D702278();
  sub_29D933C88();
  (*(v9 + 104))(v8, *MEMORY[0x29EDB9CA0], v63);
  sub_29D933C38();
  (*(v9 + 8))(v8, v63);
  v12 = *(v7 + 8);
  v0[136] = v12;
  v0[137] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v6, v67);
  if ((*(v69 + 48))(v65, 1, v73) == 1)
  {
    sub_29D7FF984(v0[112], &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v13 = sub_29D937898();
    sub_29D69C6C0(v13, qword_2A1A2BF10);
    v14 = sub_29D937878();
    v15 = sub_29D93A288();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[132];
    v18 = v0[128];
    v19 = v0[124];
    v74 = v0[123];
    v20 = v0[114];
    v21 = v0[113];
    if (v16)
    {
      v70 = v0[124];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v77 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v77);
      _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s] Could not adjust date for Blood Pressure PDF - Chart", v22, 0xCu);
      sub_29D69417C(v23);
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);

      sub_29D7FF984(v18, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
      v24 = *(v20 + 8);
      v24(v74, v21);
      v25 = v70;
    }

    else
    {

      sub_29D7FF984(v18, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
      v24 = *(v20 + 8);
      v24(v74, v21);
      v25 = v19;
    }

    v24(v25, v21);
    v39 = v0[92];
    v40 = sub_29D934E78();
    (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
    v41 = v0[131];
    v42 = v0[128];
    v43 = v0[127];
    v44 = v0[124];
    v45 = v0[123];
    v46 = v0[122];
    v47 = v0[121];
    v48 = v0[120];
    v49 = v0[119];
    v50 = v0[118];
    v52 = v0[117];
    v53 = v0[116];
    v54 = v0[115];
    v55 = v0[112];
    v56 = v0[111];
    v57 = v0[110];
    v58 = v0[107];
    v59 = v0[104];
    v62 = v0[103];
    v64 = v0[102];
    v66 = v0[100];
    v68 = v0[99];
    v72 = v0[97];
    v76 = v0[94];

    v51 = v0[1];

    return v51();
  }

  else
  {
    v71 = v0[124];
    v26 = v0[122];
    v27 = v0[121];
    v75 = v0[120];
    v28 = v0[119];
    v29 = v0[114];
    v30 = v0[113];
    v31 = v0[112];
    v32 = v0[110];
    v33 = v0[108];
    v34 = *(v29 + 32);
    v0[138] = v34;
    v0[139] = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v34(v26, v31, v30);
    sub_29D933C88();
    sub_29D933AD8();
    v12(v32, v33);
    sub_29D933C88();
    sub_29D933948();
    sub_29D933AD8();
    v35 = *(v29 + 8);
    v0[140] = v35;
    v0[141] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v28, v30);
    v12(v32, v33);
    v36 = swift_task_alloc();
    v0[142] = v36;
    *v36 = v0;
    v36[1] = sub_29D7F62F4;
    v37 = v0[93];

    return sub_29D7FA874();
  }
}

uint64_t sub_29D7F62F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1136);
  v7 = *v2;
  *(v3 + 1144) = a1;
  *(v3 + 1152) = v1;

  if (v1)
  {
    v5 = sub_29D7F8DBC;
  }

  else
  {
    v5 = sub_29D7F640C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7F640C()
{
  v44 = v0;
  v1 = *(v0 + 1144);
  v2 = *(v0 + 992);
  v3 = *(v0 + 968);
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v8 = *(v6 + 16);
  *(v0 + 1160) = v8;
  *(v0 + 1168) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v3, v7);
  v8(v5, v2, v7);
  if (v1)
  {
    v9 = qword_2A1A24658;
    v10 = *(v0 + 1144);
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_29D937898();
    sub_29D69C6C0(v11, qword_2A1A2BF10);
    v12 = sub_29D937878();
    v13 = sub_29D93A2A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v43 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v43);
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Referencing start date from active Blood Pressure journal", v14, 0xCu);
      sub_29D69417C(v15);
      MEMORY[0x29ED6BE30](v15, -1, -1);
      MEMORY[0x29ED6BE30](v14, -1, -1);
    }

    v16 = *(v0 + 1128);
    v17 = *(v0 + 1120);
    v41 = *(v0 + 1104);
    v42 = *(v0 + 1112);
    v39 = *(v0 + 1088);
    v40 = *(v0 + 1096);
    v18 = *(v0 + 952);
    v19 = *(v0 + 944);
    v20 = *(v0 + 928);
    v21 = *(v0 + 904);
    v22 = *(v0 + 880);
    v38 = *(v0 + 864);
    sub_29D933C88();
    v23 = [v10 startDate];
    sub_29D933998();

    sub_29D933AD8();
    v17(v20, v21);
    v39(v22, v38);
    v17(v19, v21);
    v41(v19, v18, v21);
    v24 = [v10 endDate];
    if (v24)
    {
      v25 = *(v0 + 1128);
      v26 = *(v0 + 1120);
      v27 = *(v0 + 1112);
      v28 = *(v0 + 1104);
      v29 = *(v0 + 936);
      v30 = *(v0 + 920);
      v31 = *(v0 + 904);
      v32 = v24;
      sub_29D933998();

      v26(v29, v31);
      v28(v29, v30, v31);
    }

    else
    {
    }
  }

  v33 = swift_task_alloc();
  *(v0 + 1176) = v33;
  *v33 = v0;
  v33[1] = sub_29D7F6764;
  v34 = *(v0 + 1080);
  v35 = *(v0 + 992);
  v36 = *(v0 + 984);

  return sub_29D701254(v36, v35, 0, v34);
}

uint64_t sub_29D7F6764(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1176);
  v7 = *v2;
  *(v3 + 1184) = a1;
  *(v3 + 1192) = v1;

  if (v1)
  {
    v5 = sub_29D7F9018;
  }

  else
  {
    v5 = sub_29D7F687C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7F687C()
{
  v85 = v0;
  v1 = v0[74].u64[0];
  if (v1)
  {
    v2 = v0[74].i64[1];
    v81 = v0[67].i64[1];
    v75 = v0[62].i64[0];
    v78 = v0[61].i64[1];
    v3 = v0[59].i64[0];
    v4 = swift_task_alloc();
    v4[1] = vextq_s8(v0[60], v0[60], 8uLL);
    sub_29D935E88();
    v5 = sub_29D9297D4(sub_29D7FF4EC, v4, v1);

    v0[44].i64[0] = v5;
    swift_getKeyPath();
    sub_29D7FF50C(0, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
    sub_29D702E94();
    sub_29D7FF878(&qword_2A17B4730);
    v6 = sub_29D939E98();

    v0[75].i64[0] = sub_29D702068(v6);
    v7 = swift_task_alloc();
    *(v7 + 16) = v3;
    *(v7 + 24) = v75;
    sub_29D935E88();
    v8 = sub_29D9297D4(sub_29D7FFA08, v7, v1);

    v0[44].i64[1] = v8;
    swift_getKeyPath();
    v9 = sub_29D939E98();

    v0[75].i64[1] = sub_29D702068(v9);
    v10 = swift_task_alloc();
    *(v10 + 16) = v78;
    *(v10 + 24) = v3;
    v11 = sub_29D9297D4(sub_29D7FFA08, v10, v1);

    v0[45].i64[0] = v11;
    swift_getKeyPath();
    v12 = sub_29D939E98();

    v0[76].i64[0] = sub_29D702068(v12);
    v13 = type metadata accessor for BloodPressurePDFIntervalDataSource();
    v14 = swift_allocObject();
    v0[76].i64[1] = v14;
    *(v14 + 16) = v81;
    v0[30].i64[1] = v13;
    v0[31].i64[0] = &off_2A244ECF0;
    v0[29].i64[0] = v14;
    type metadata accessor for BloodPressurePDFIntervalCalculator();
    inited = swift_initStackObject();
    v0[77].i64[0] = inited;
    v16 = v0[30].i64[1];
    v17 = sub_29D693DDC(v0[29].i64, v16);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64) + 15;
    v20 = swift_task_alloc();
    (*(v18 + 16))(v20, v17, v16);
    v21 = *v20;
    inited[5] = v13;
    inited[6] = &off_2A244ECF0;
    inited[2] = v21;
    v22 = v81;

    sub_29D69417C(v0[29].i64);

    v23 = swift_task_alloc();
    v0[77].i64[1] = v23;
    *v23 = v0;
    v23[1] = sub_29D7F709C;
    v24 = v0[62].i64[0];
    v25 = v0[61].i64[1];

    return sub_29D929BD8(v25, v24);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v27 = sub_29D937898();
    sub_29D69C6C0(v27, qword_2A1A2BF10);
    v28 = sub_29D937878();
    v29 = sub_29D93A288();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[71].i64[1];
    v32 = v0[70].i64[1];
    v33 = v0[70].i64[0];
    v34 = v0[67].i64[1];
    v35 = v0[66].i64[0];
    v76 = v31;
    v79 = v0[64].i64[0];
    v36 = v0[62].i64[0];
    v37 = v0[61].i64[1];
    v73 = v0[61].i64[0];
    v82 = v0[59].i64[0];
    v71 = v0[58].i64[1];
    v38 = v0[56].i64[1];
    if (v30)
    {
      v69 = v0[62].i64[0];
      v39 = swift_slowAlloc();
      v67 = v37;
      v40 = swift_slowAlloc();
      v84 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v84);
      _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s] Could not populate data to create Blood Pressure PDF", v39, 0xCu);
      sub_29D69417C(v40);
      MEMORY[0x29ED6BE30](v40, -1, -1);
      MEMORY[0x29ED6BE30](v39, -1, -1);

      v33(v71, v38);
      v33(v73, v38);
      sub_29D7FF984(v79, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
      v33(v82, v38);
      v33(v67, v38);
      v41 = v69;
    }

    else
    {

      v33(v71, v38);
      v33(v73, v38);
      sub_29D7FF984(v79, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
      v33(v82, v38);
      v33(v37, v38);
      v41 = v36;
    }

    v33(v41, v38);
    v42 = v0[70].i64[1];
    v43 = v0[70].i64[0];
    v44 = v0[60].i64[1];
    v45 = v0[60].i64[0];
    v46 = v0[56].i64[1];
    v47 = v0[46].i64[0];
    v48 = sub_29D934E78();
    (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
    v43(v45, v46);
    v43(v44, v46);
    v49 = v0[65].i64[1];
    v50 = v0[64].i64[0];
    v51 = v0[63].i64[1];
    v52 = v0[62].i64[0];
    v53 = v0[61].i64[1];
    v54 = v0[61].i64[0];
    v55 = v0[60].i64[1];
    v56 = v0[60].i64[0];
    v57 = v0[59].i64[1];
    v58 = v0[59].i64[0];
    v60 = v0[58].i64[1];
    v61 = v0[58].i64[0];
    v62 = v0[57].i64[1];
    v63 = v0[56].i64[0];
    v64 = v0[55].i64[1];
    v65 = v0[55].i64[0];
    v66 = v0[53].i64[1];
    v68 = v0[52].i64[0];
    v70 = v0[51].i64[1];
    v72 = v0[51].i64[0];
    v74 = v0[50].i64[0];
    v77 = v0[49].i64[1];
    v80 = v0[48].i64[1];
    v83 = v0[47].i64[0];

    v59 = v0->i64[1];

    return v59();
  }
}

uint64_t sub_29D7F709C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1240);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_29D7F92A0;
  }

  else
  {
    *(v4 + 1248) = a1;
    v7 = sub_29D7F71C8;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D7F71C8()
{
  v1 = v0[156];
  if (!v1 || (v2 = *(v1 + 16)) == 0)
  {
    (*(v0[114] + 56))(v0[111], 1, 1, v0[113]);
    goto LABEL_6;
  }

  v3 = *(v0[101] + 80);
  v4 = v1 + ((v3 + 32) & ~v3);
  sub_29D7FF764(v4, v0[103], type metadata accessor for PregnancyModel);
  result = sub_29D935E88();
  if (v2 == 1)
  {
LABEL_4:
    v6 = v0[146];
    v7 = v0[145];
    v8 = v0[114];
    v9 = v0[113];
    v10 = v0[111];
    v11 = v0[104];
    v12 = v0[103];

    sub_29D7FF8BC(v12, v11, type metadata accessor for PregnancyModel);
    v7(v10, v11, v9);
    sub_29D7FF924(v11, type metadata accessor for PregnancyModel);
    (*(v8 + 56))(v10, 0, 1, v9);
    v1 = v0[156];
LABEL_6:
    v0[157] = v1;
    v13 = swift_task_alloc();
    v0[158] = v13;
    *v13 = v0;
    v13[1] = sub_29D7F7458;
    v14 = v0[154];
    v15 = v0[123];
    v16 = v0[120];

    return sub_29D8DC430(v1, v15, v16);
  }

  v17 = v0[101];
  v18 = 1;
  while (v18 < *(v1 + 16))
  {
    v19 = v0[103];
    sub_29D7FF764(v4 + *(v17 + 72) * v18, v0[102], type metadata accessor for PregnancyModel);
    if (sub_29D933978())
    {
      v20 = v0[103];
      v21 = v0[102];
      sub_29D7FF924(v20, type metadata accessor for PregnancyModel);
      result = sub_29D7FF8BC(v21, v20, type metadata accessor for PregnancyModel);
    }

    else
    {
      result = sub_29D7FF924(v0[102], type metadata accessor for PregnancyModel);
    }

    if (v2 == ++v18)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7F7458(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1264);
  v6 = *v2;
  v4[159] = v1;

  v7 = v4[157];
  if (v1)
  {
    v8 = v4[152];
    v9 = v4[151];
    v10 = v4[150];

    v11 = sub_29D7F9364;
  }

  else
  {
    v4[160] = a1;

    v11 = sub_29D7F75C8;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29D7F75C8()
{
  v1 = v0[80].i64[0];
  v2 = v0[79].i64[1];
  v3 = v0[76].u64[0];
  v4 = v0[75].u64[1];
  v5 = v0[67].i64[1];
  v6 = v0[59].i64[0];
  v7 = v0[46].i64[1];
  v8 = swift_task_alloc();
  v13 = v0[60];
  v8[1] = vextq_s8(v13, v13, 8uLL);
  sub_29D935E88();
  v0[80].i64[1] = sub_29D92976C(sub_29D7FF574, v8, v1);

  v0[81].i64[0] = sub_29D7FAD74(v4, v1, v13.i64[0]);
  v0[81].i64[1] = sub_29D7FAD74(v3, v1, v6);

  v9 = [objc_allocWithZone(MEMORY[0x29EDBAA48]) initWithHealthStore_];
  v0[82].i64[0] = v9;
  v0[1].i64[0] = v0;
  v0[3].i64[1] = &v0[45].i64[1];
  v0[1].i64[1] = sub_29D7F77B8;
  v10 = swift_continuation_init();
  sub_29D7FF594();
  v0[22].i64[1] = v11;
  v0[19].i64[0] = MEMORY[0x29EDCA5F8];
  v0[19].i64[1] = 1107296256;
  v0[20].i64[0] = sub_29D7BDEF0;
  v0[20].i64[1] = &unk_2A2446D80;
  v0[21].i64[0] = v10;
  [v9 preferredClassificationGuidelinesWithCompletionHandler_];

  return MEMORY[0x2A1C73CC0](&v0[1]);
}

uint64_t sub_29D7F77B8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29D7F7898, 0, 0);
}

uint64_t sub_29D7F7898()
{
  v0[165] = v0[91];
  v0[166] = sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v1 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v0[167] = v1;
  v2 = swift_task_alloc();
  v0[168] = v2;
  *v2 = v0;
  v2[1] = sub_29D7F7978;
  v3 = v0[124];
  v4 = v0[121];
  v5 = v0[93];

  return sub_29D7FAF98(v1, v4, v3);
}

uint64_t sub_29D7F7978(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1344);
  v6 = *v2;
  v4[169] = a1;
  v4[170] = v1;

  v7 = v3[167];
  if (v1)
  {
    v8 = v4[163];
    v9 = v4[162];
    v10 = v4[161];
    v11 = v4[152];
    v12 = v4[151];
    v13 = v4[150];

    v14 = sub_29D7F9640;
  }

  else
  {

    v14 = sub_29D7F7B0C;
  }

  return MEMORY[0x2A1C73D48](v14, 0, 0);
}

uint64_t sub_29D7F7B0C()
{
  v1 = v0[166];
  v2 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  v0[171] = v2;
  v3 = swift_task_alloc();
  v0[172] = v3;
  *v3 = v0;
  v3[1] = sub_29D7F7BC8;
  v4 = v0[124];
  v5 = v0[121];
  v6 = v0[93];

  return sub_29D7FAF98(v2, v5, v4);
}

uint64_t sub_29D7F7BC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1376);
  v6 = *v2;
  v4[173] = v1;

  v7 = v4[171];
  if (v1)
  {
    v8 = v4[163];
    v9 = v4[162];
    v10 = v4[161];
    v11 = v4[152];
    v12 = v4[151];
    v13 = v4[150];

    v14 = sub_29D7F9928;
  }

  else
  {

    v4[174] = a1;
    v14 = sub_29D7F7D58;
  }

  return MEMORY[0x2A1C73D48](v14, 0, 0);
}

uint64_t sub_29D7F7D58()
{
  v27 = v0[174];
  v28 = v0[165];
  v29 = v0[169];
  v22 = v0[161];
  v23 = v0[164];
  v19 = v0[152];
  v20 = v0[163];
  v24 = v0[151];
  v25 = v0[162];
  v26 = v0[150];
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[128];
  v17 = v0[124];
  v18 = v0[143];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[118];
  v7 = v0[117];
  v8 = v0[113];
  v15 = v6;
  v16 = v0[111];
  v9 = v0[100];
  v10 = v0[98];
  v21 = v0[93];
  v2(v9 + v10[7], v0[123], v8);
  v2(v9 + v10[8], v5, v8);
  v2(v9 + v10[10], v4, v8);
  sub_29D7FF628(v3, v9 + v10[12], &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2(v9 + v10[14], v7, v8);
  v2(v9 + v10[17], v15, v8);
  sub_29D7FF628(v16, v9 + v10[18], &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v2(v9 + v10[19], v17, v8);
  *v9 = v18;
  v9[1] = v20;
  v9[2] = v19;
  *(v9 + v10[9]) = v22;
  *(v9 + v10[11]) = v23;
  *(v9 + v10[13]) = v27;
  *(v9 + v10[15]) = v25;
  *(v9 + v10[16]) = v24;
  *(v9 + v10[20]) = v28;
  *(v9 + v10[21]) = v26;
  *(v9 + v10[22]) = v29;
  sub_29D7FB750(v0 + 63);
  v11 = swift_task_alloc();
  v0[175] = v11;
  *v11 = v0;
  v11[1] = sub_29D7F7FE0;
  v12 = v0[100];
  v13 = v0[93];

  return sub_29D7FBC0C((v0 + 68), v12);
}

uint64_t sub_29D7F7FE0()
{
  v2 = *(*v1 + 1400);
  v3 = *v1;
  v3[176] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7F9C20, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[177] = v4;
    *v4 = v3;
    v4[1] = sub_29D7F8158;
    v5 = v3[100];
    v6 = v3[93];

    return sub_29D7FC3BC((v3 + 73), v5);
  }
}

uint64_t sub_29D7F8158()
{
  v2 = *(*v1 + 1416);
  v3 = *v1;
  v3[178] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7F9F1C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[179] = v4;
    *v4 = v3;
    v4[1] = sub_29D7F82D0;
    v5 = v3[100];
    v6 = v3[93];

    return sub_29D7FC7E4((v3 + 78), v5);
  }
}

uint64_t sub_29D7F82D0()
{
  v2 = *(*v1 + 1432);
  v5 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v3 = sub_29D7FA220;
  }

  else
  {
    v3 = sub_29D7F83E4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D7F83E4()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 792);
  v3 = *(v0 + 776);
  v4 = *(v0 + 752);
  sub_29D7FF764(*(v0 + 800), v2, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D926384(v2, (v0 + 192));
  *(v0 + 296) = v1;
  v5 = *(v0 + 272);
  *(v0 + 144) = *(v0 + 256);
  *(v0 + 160) = v5;
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  v7 = *(v0 + 240);
  *(v0 + 112) = *(v0 + 224);
  *(v0 + 128) = v7;
  *(v0 + 176) = *(v0 + 288);
  v8 = v1;
  sub_29D922EC4((v0 + 664));
  sub_29D7FF6A8(v0 + 192);
  sub_29D934EF8();
  v9 = sub_29D934EE8();
  v10 = [v9 CGColor];

  sub_29D935C08();
  v11 = sub_29D934DF8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = *(MEMORY[0x29EDC1B38] + 4);
  v13 = swift_task_alloc();
  *(v0 + 1448) = v13;
  *v13 = v0;
  v13[1] = sub_29D7F8584;
  v14 = *(v0 + 1056);

  return MEMORY[0x2A1C60DE8]();
}

uint64_t sub_29D7F8584(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1448);
  v8 = *v2;
  *(*v2 + 1456) = v1;

  if (v1)
  {
    sub_29D7FF984(*(v4 + 752), &qword_2A17B3C78, MEMORY[0x29EDC1C50]);
    v6 = sub_29D7FA52C;
  }

  else
  {
    *(v4 + 1464) = a1;
    v6 = sub_29D7F86CC;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29D7F86CC()
{
  v34 = v0[154];
  v36 = v0[153];
  v1 = v0[141];
  v2 = v0[140];
  v30 = v0[135];
  v32 = v0[132];
  v48 = v0[128];
  v50 = v0[123];
  v52 = v0[124];
  v44 = v0[122];
  v54 = v0[120];
  v56 = v0[121];
  v46 = v0[118];
  v3 = v0[113];
  v40 = v0[111];
  v42 = v0[117];
  v38 = v0[100];
  v28 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v29 = v0[94];
  v0[183];
  v27 = v0[92];
  sub_29D7FF6FC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D94B280;
  v7 = sub_29D935488();
  v8 = MEMORY[0x29EDC1FC0];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  sub_29D693F78((v6 + 32));
  sub_29D935498();
  sub_29D6945AC((v0 + 63), v6 + 72);
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  sub_29D693F78((v6 + 112));
  sub_29D935498();
  sub_29D6945AC((v0 + 73), v6 + 152);
  *(v6 + 216) = v7;
  *(v6 + 224) = v8;
  sub_29D693F78((v6 + 192));
  sub_29D935498();
  sub_29D6945AC((v0 + 68), v6 + 232);
  *(v6 + 296) = v7;
  *(v6 + 304) = v8;
  sub_29D693F78((v6 + 272));
  sub_29D935498();
  sub_29D6945AC((v0 + 78), v6 + 312);
  v9 = sub_29D935058();
  v10 = MEMORY[0x29EDC1D10];
  *(v6 + 376) = v9;
  *(v6 + 384) = v10;
  sub_29D693F78((v6 + 352));
  sub_29D935048();
  sub_29D6945AC((v0 + 83), v6 + 392);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  v12 = MEMORY[0x29EDC2290];
  *(v11 + 56) = v5;
  *(v11 + 64) = v12;
  v13 = sub_29D693F78((v11 + 32));
  (*(v4 + 16))(v13, v28, v5);
  sub_29D934E68();

  swift_setDeallocating();
  sub_29D69417C((v34 + 16));

  (*(v4 + 8))(v28, v5);
  sub_29D69417C(v0 + 83);
  sub_29D69417C(v0 + 78);
  sub_29D69417C(v0 + 73);
  sub_29D69417C(v0 + 68);
  sub_29D69417C(v0 + 63);
  sub_29D7FF924(v38, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v40, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v2(v42, v3);
  v2(v44, v3);
  sub_29D7FF984(v48, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2(v46, v3);
  v2(v50, v3);
  v2(v52, v3);
  v14 = sub_29D934E78();
  (*(*(v14 - 8) + 56))(v27, 0, 1, v14);
  v2(v54, v3);
  v2(v56, v3);
  v15 = v0[131];
  v16 = v0[128];
  v17 = v0[127];
  v18 = v0[124];
  v19 = v0[123];
  v20 = v0[122];
  v21 = v0[121];
  v22 = v0[120];
  v23 = v0[119];
  v24 = v0[118];
  v31 = v0[117];
  v33 = v0[116];
  v35 = v0[115];
  v37 = v0[112];
  v39 = v0[111];
  v41 = v0[110];
  v43 = v0[107];
  v45 = v0[104];
  v47 = v0[103];
  v49 = v0[102];
  v51 = v0[100];
  v53 = v0[99];
  v55 = v0[97];
  v57 = v0[94];

  v25 = v0[1];

  return v25();
}

uint64_t sub_29D7F8BF4()
{
  v1 = v0[132];

  v28 = v0[134];
  v2 = v0[131];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[124];
  v6 = v0[123];
  v7 = v0[122];
  v8 = v0[121];
  v9 = v0[120];
  v10 = v0[119];
  v11 = v0[118];
  v14 = v0[117];
  v15 = v0[116];
  v16 = v0[115];
  v17 = v0[112];
  v18 = v0[111];
  v19 = v0[110];
  v20 = v0[107];
  v21 = v0[104];
  v22 = v0[103];
  v23 = v0[102];
  v24 = v0[100];
  v25 = v0[99];
  v26 = v0[97];
  v27 = v0[94];

  v12 = v0[1];

  return v12();
}

uint64_t sub_29D7F8DBC()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  v7 = *(v0 + 976);
  v36 = *(v0 + 968);
  v8 = *(v0 + 960);
  v9 = *(v0 + 904);

  v2(v7, v9);
  sub_29D7FF984(v4, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2(v6, v9);
  v2(v5, v9);
  v2(v8, v9);
  v2(v36, v9);
  v37 = *(v0 + 1152);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 832);
  v30 = *(v0 + 824);
  v31 = *(v0 + 816);
  v32 = *(v0 + 800);
  v33 = *(v0 + 792);
  v34 = *(v0 + 776);
  v35 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7F9018()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1024);
  v33 = *(v0 + 984);
  v35 = *(v0 + 992);
  v6 = *(v0 + 976);
  v37 = *(v0 + 960);
  v39 = *(v0 + 968);
  v7 = *(v0 + 944);
  v8 = *(v0 + 936);
  v9 = *(v0 + 904);

  v3(v8, v9);
  v3(v6, v9);
  sub_29D7FF984(v5, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v3(v7, v9);
  v3(v33, v9);
  v3(v35, v9);
  v3(v37, v9);
  v3(v39, v9);
  v40 = *(v0 + 1192);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 832);
  v30 = *(v0 + 824);
  v31 = *(v0 + 816);
  v32 = *(v0 + 800);
  v34 = *(v0 + 792);
  v36 = *(v0 + 776);
  v38 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7F92A0()
{
  (*(v0[114] + 56))(v0[111], 1, 1, v0[113]);
  v0[157] = 0;
  v1 = swift_task_alloc();
  v0[158] = v1;
  *v1 = v0;
  v1[1] = sub_29D7F7458;
  v2 = v0[154];
  v3 = v0[123];
  v4 = v0[120];

  return sub_29D8DC430(0, v3, v4);
}

uint64_t sub_29D7F9364()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1056);
  v38 = *(v0 + 992);
  v34 = *(v0 + 1024);
  v36 = *(v0 + 984);
  v30 = *(v0 + 976);
  v40 = *(v0 + 960);
  v42 = *(v0 + 968);
  v32 = *(v0 + 944);
  v7 = *(v0 + 936);
  v8 = *(v0 + 904);
  v9 = *(v0 + 888);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  sub_29D7FF984(v9, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v5(v7, v8);
  v5(v30, v8);
  sub_29D7FF984(v34, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v5(v32, v8);
  v5(v36, v8);
  v5(v38, v8);
  v5(v40, v8);
  v5(v42, v8);
  v43 = *(v0 + 1272);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 832);
  v31 = *(v0 + 824);
  v33 = *(v0 + 816);
  v35 = *(v0 + 800);
  v37 = *(v0 + 792);
  v39 = *(v0 + 776);
  v41 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7F9640()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1120);
  v7 = *(v0 + 1056);
  v39 = *(v0 + 992);
  v35 = *(v0 + 1024);
  v37 = *(v0 + 984);
  v31 = *(v0 + 976);
  v41 = *(v0 + 960);
  v43 = *(v0 + 968);
  v33 = *(v0 + 944);
  v29 = *(v0 + 936);
  v8 = *(v0 + 904);
  v9 = *(v0 + 888);

  swift_setDeallocating();
  sub_29D69417C((v2 + 16));

  sub_29D7FF984(v9, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v6(v29, v8);
  v6(v31, v8);
  sub_29D7FF984(v35, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v6(v33, v8);
  v6(v37, v8);
  v6(v39, v8);
  v6(v41, v8);
  v6(v43, v8);
  v44 = *(v0 + 1360);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v30 = *(v0 + 832);
  v32 = *(v0 + 824);
  v34 = *(v0 + 816);
  v36 = *(v0 + 800);
  v38 = *(v0 + 792);
  v40 = *(v0 + 776);
  v42 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7F9928()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1224);
  v28 = *(v0 + 1144);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1120);
  v7 = *(v0 + 1056);
  v40 = *(v0 + 992);
  v36 = *(v0 + 1024);
  v38 = *(v0 + 984);
  v32 = *(v0 + 976);
  v42 = *(v0 + 960);
  v44 = *(v0 + 968);
  v34 = *(v0 + 944);
  v30 = *(v0 + 936);
  v8 = *(v0 + 904);
  v9 = *(v0 + 888);

  swift_setDeallocating();
  sub_29D69417C((v3 + 16));

  sub_29D7FF984(v9, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v6(v30, v8);
  v6(v32, v8);
  sub_29D7FF984(v36, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v6(v34, v8);
  v6(v38, v8);
  v6(v40, v8);
  v6(v42, v8);
  v6(v44, v8);
  v45 = *(v0 + 1384);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v27 = *(v0 + 880);
  v29 = *(v0 + 856);
  v31 = *(v0 + 832);
  v33 = *(v0 + 824);
  v35 = *(v0 + 816);
  v37 = *(v0 + 800);
  v39 = *(v0 + 792);
  v41 = *(v0 + 776);
  v43 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7F9C20()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1056);
  v38 = *(v0 + 992);
  v34 = *(v0 + 1024);
  v36 = *(v0 + 984);
  v30 = *(v0 + 976);
  v40 = *(v0 + 960);
  v42 = *(v0 + 968);
  v32 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 904);
  v8 = *(v0 + 888);
  v9 = *(v0 + 800);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  sub_29D69417C((v0 + 504));
  sub_29D7FF924(v9, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v8, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v4(v6, v7);
  v4(v30, v7);
  sub_29D7FF984(v34, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v4(v32, v7);
  v4(v36, v7);
  v4(v38, v7);
  v4(v40, v7);
  v4(v42, v7);
  v43 = *(v0 + 1408);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 832);
  v31 = *(v0 + 824);
  v33 = *(v0 + 816);
  v35 = *(v0 + 800);
  v37 = *(v0 + 792);
  v39 = *(v0 + 776);
  v41 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7F9F1C()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1056);
  v38 = *(v0 + 992);
  v34 = *(v0 + 1024);
  v36 = *(v0 + 984);
  v30 = *(v0 + 976);
  v40 = *(v0 + 960);
  v42 = *(v0 + 968);
  v32 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 904);
  v8 = *(v0 + 888);
  v9 = *(v0 + 800);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  sub_29D69417C((v0 + 544));
  sub_29D69417C((v0 + 504));
  sub_29D7FF924(v9, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v8, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v4(v6, v7);
  v4(v30, v7);
  sub_29D7FF984(v34, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v4(v32, v7);
  v4(v36, v7);
  v4(v38, v7);
  v4(v40, v7);
  v4(v42, v7);
  v43 = *(v0 + 1424);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 832);
  v31 = *(v0 + 824);
  v33 = *(v0 + 816);
  v35 = *(v0 + 800);
  v37 = *(v0 + 792);
  v39 = *(v0 + 776);
  v41 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7FA220()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1056);
  v38 = *(v0 + 992);
  v34 = *(v0 + 1024);
  v36 = *(v0 + 984);
  v30 = *(v0 + 976);
  v40 = *(v0 + 960);
  v42 = *(v0 + 968);
  v32 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 904);
  v8 = *(v0 + 888);
  v9 = *(v0 + 800);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  sub_29D69417C((v0 + 584));
  sub_29D69417C((v0 + 544));
  sub_29D69417C((v0 + 504));
  sub_29D7FF924(v9, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v8, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v4(v6, v7);
  v4(v30, v7);
  sub_29D7FF984(v34, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v4(v32, v7);
  v4(v36, v7);
  v4(v38, v7);
  v4(v40, v7);
  v4(v42, v7);
  v43 = *(v0 + 1440);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 832);
  v31 = *(v0 + 824);
  v33 = *(v0 + 816);
  v35 = *(v0 + 800);
  v37 = *(v0 + 792);
  v39 = *(v0 + 776);
  v41 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7FA52C()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1056);
  v41 = *(v0 + 992);
  v37 = *(v0 + 1024);
  v39 = *(v0 + 984);
  v33 = *(v0 + 976);
  v43 = *(v0 + 960);
  v45 = *(v0 + 968);
  v35 = *(v0 + 944);
  v6 = *(v0 + 904);
  v29 = *(v0 + 888);
  v31 = *(v0 + 936);
  v27 = *(v0 + 800);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 760);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  (*(v8 + 8))(v7, v9);
  sub_29D69417C((v0 + 664));
  sub_29D69417C((v0 + 624));
  sub_29D69417C((v0 + 584));
  sub_29D69417C((v0 + 544));
  sub_29D69417C((v0 + 504));
  sub_29D7FF924(v27, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v29, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v4(v31, v6);
  v4(v33, v6);
  sub_29D7FF984(v37, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v4(v35, v6);
  v4(v39, v6);
  v4(v41, v6);
  v4(v43, v6);
  v4(v45, v6);
  v46 = *(v0 + 1456);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v28 = *(v0 + 880);
  v30 = *(v0 + 856);
  v32 = *(v0 + 832);
  v34 = *(v0 + 824);
  v36 = *(v0 + 816);
  v38 = *(v0 + 800);
  v40 = *(v0 + 792);
  v42 = *(v0 + 776);
  v44 = *(v0 + 752);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29D7FA894()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_29D7FA9CC;
  v2 = swift_continuation_init();
  sub_29D6F9F3C();
  *(v0 + 136) = v3;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29D6B458C;
  *(v0 + 104) = &unk_2A2446DA8;
  *(v0 + 112) = v2;
  [v1 fetchActiveJournalWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29D7FA9CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_29D7FAB44;
  }

  else
  {
    v3 = sub_29D7FAADC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D7FAADC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_29D7FAB44()
{
  v19 = v0;
  v1 = v0[21];
  swift_willThrow();
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2BF10);
  v4 = v2;
  v5 = sub_29D937878();
  v6 = sub_29D93A288();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, v18);
    *(v10 + 12) = 2080;
    v0[10] = v8;
    v12 = v8;
    sub_29D6B7370(0, &qword_2A1A24850);
    v13 = sub_29D939DB8();
    v15 = sub_29D6C2364(v13, v14, v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_29D677000, v5, v6, "[%s] Error occurred while fetch active blood pressure journal: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0);
}

unint64_t sub_29D7FAD74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v25[-v14];
  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

    return MEMORY[0x29EDCA190];
  }

  v16 = sub_29D93A928();
  if (!v16)
  {
    return MEMORY[0x29EDCA190];
  }

LABEL_3:
  v17 = __OFSUB__(v16, 1);
  result = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v19 = MEMORY[0x29ED6AE30](result, a1);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(a1 + 8 * result + 32);
LABEL_8:
    v20 = v19;
    v21 = [v19 startDate];

    sub_29D933998();
    v22 = (*(v7 + 32))(v15, v12, v6);
    MEMORY[0x2A1C7C4A8](v22, v23);
    *&v25[-16] = v15;
    *&v25[-8] = a3;
    sub_29D935E88();
    v24 = sub_29D92976C(sub_29D7FFA24, &v25[-32], a2);
    (*(v7 + 8))(v15, v6);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7FAF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_29D7FF50C(0, &qword_2A17B3430, &qword_2A17B18A8, 0x29EDBAD10, MEMORY[0x29EDBA210]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = sub_29D939B68();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7FB0B4, 0, 0);
}

uint64_t sub_29D7FB0B4()
{
  v1 = v0[6];
  v23 = v0[9];
  v24 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = objc_opt_self();
  v6 = sub_29D933958();
  v7 = sub_29D933958();
  v8 = [v5 predicateForSamplesWithStartDate:v6 endDate:v7 options:0];
  v0[10] = v8;

  v9 = sub_29D933958();
  v10 = sub_29D933958();
  v11 = [v5 predicateForSamplesWithStartDate:v9 endDate:v10 options:0];
  v0[11] = v11;

  sub_29D6A0C58();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D941B10;
  *(v12 + 32) = v8;
  *(v12 + 40) = v11;
  sub_29D69567C(0, &qword_2A17B4138, 0x29EDBA0A8);
  v13 = v8;
  v14 = v11;
  v15 = sub_29D939F18();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];
  v0[12] = v16;

  sub_29D69567C(0, &qword_2A17B18A8, 0x29EDBAD10);
  v17 = v16;
  sub_29D939AB8();

  sub_29D939B58();
  v18 = *v24;
  v19 = *(MEMORY[0x29EDBA240] + 4);
  v20 = swift_task_alloc();
  v0[13] = v20;
  *v20 = v0;
  v20[1] = sub_29D7FB30C;
  v21 = v0[9];

  return MEMORY[0x2A1C5B590](v18);
}

uint64_t sub_29D7FB30C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_29D7FB6A0;
  }

  else
  {
    v5 = sub_29D7FB420;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7FB420()
{
  v30 = v0;
  if (v0[14])
  {
    v1 = v0[11];
    v2 = v0[12];
    v3 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2BF10);
    v6 = v4;
    v7 = sub_29D937878();
    v8 = sub_29D93A288();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[11];
    v11 = v0[12];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    if (v9)
    {
      v16 = v0[2];
      v28 = v0[9];
      v17 = swift_slowAlloc();
      v27 = v14;
      v18 = swift_slowAlloc();
      v26 = v11;
      v19 = swift_slowAlloc();
      v29 = v19;
      *v17 = 136446466;
      *(v17 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v29);
      *(v17 + 12) = 2112;
      *(v17 + 14) = v16;
      *v18 = v16;
      v20 = v16;
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] Could not fetch statistics for quantity type:%@", v17, 0x16u);
      sub_29D6ACA3C(v18);
      MEMORY[0x29ED6BE30](v18, -1, -1);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v17, -1, -1);

      (*(v15 + 8))(v28, v27);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }
  }

  v21 = v0[9];
  v22 = v0[6];

  v23 = v0[1];
  v24 = v0[14];

  return v23(v24);
}

uint64_t sub_29D7FB6A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);

  (*(v5 + 8))(v2, v4);

  v7 = *(v0 + 8);
  v8 = *(v0 + 120);

  return v7();
}

uint64_t sub_29D7FB750@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  sub_29D7FF488(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v52 = v43 - v4;
  v5 = sub_29D933788();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29D9337B8();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v46, v13);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v48 = unk_2A1A2BEA0;
  v49 = qword_2A1A2BE98;
  v47 = qword_2A1A2BEA8;
  v42 = 0xE000000000000000;
  v50 = sub_29D9334A8();
  v51 = v16;
  v17 = type metadata accessor for BloodPressurePDFViewModel(0);
  v18 = *(v17 + 40);
  sub_29D933798();
  sub_29D933768();
  v19 = sub_29D9339C8();
  v44 = v20;
  v45 = v19;
  v21 = *(v6 + 8);
  v43[1] = v6 + 8;
  v21(v10, v5);
  v22 = v5;
  v23 = *(v11 + 8);
  v24 = v46;
  v23(v15, v46);
  v25 = *(v17 + 76);
  sub_29D933798();
  sub_29D933768();
  v26 = sub_29D9339C8();
  v28 = v27;
  v21(v10, v22);
  v23(v15, v24);
  v29 = sub_29D933AA8();
  v30 = v52;
  (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
  sub_29D6CC0B8();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D93F680;
  v32 = MEMORY[0x29EDC99B0];
  *(v31 + 56) = MEMORY[0x29EDC99B0];
  v33 = sub_29D69AD24();
  v34 = v44;
  *(v31 + 32) = v45;
  *(v31 + 40) = v34;
  *(v31 + 96) = v32;
  *(v31 + 104) = v33;
  *(v31 + 64) = v33;
  *(v31 + 72) = v26;
  *(v31 + 80) = v28;
  v42 = 0xE000000000000000;
  sub_29D9334A8();
  if (*(v31 + 16))
  {
    sub_29D939D78();
  }

  v35 = sub_29D7FF984(v30, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v37 = v51;
  v43[-4] = v50;
  v43[-3] = v37;
  v38 = sub_29D9370F8();
  v39 = MEMORY[0x29EDC2C70];
  v40 = v53;
  v53[3] = v38;
  v40[4] = v39;
  sub_29D693F78(v40);
  sub_29D9370E8();
}

uint64_t sub_29D7FBC0C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = type metadata accessor for BloodPressurePDFChartSection();
  v2[4] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel, MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v2[6] = v8;
  v9 = type metadata accessor for BloodPressurePDFSeriesViewModel(0);
  v2[7] = v9;
  v10 = *(v9 - 8);
  v2[8] = v10;
  v11 = *(v10 + 64) + 15;
  v2[9] = swift_task_alloc();
  v12 = type metadata accessor for BloodPressurePDFViewModel(0);
  v13 = *(v12 + 40);
  v14 = *(v12 + 76);
  v15 = swift_task_alloc();
  v2[10] = v15;
  *v15 = v2;
  v15[1] = sub_29D7FBDBC;

  return sub_29D7FDA18(v8, a2 + v13, a2 + v14);
}

uint64_t sub_29D7FBDBC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_29D7FC1BC;
  }

  else
  {
    v3 = sub_29D7FBED4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D7FBED4()
{
  v26 = v0;
  v1 = v0[7];
  v2 = v0[6];
  if ((*(v0[8] + 48))(v2, 1, v1) == 1)
  {
    sub_29D7FF984(v2, &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2BF10);
    v4 = sub_29D937878();
    v5 = sub_29D93A288();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v25);
      _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Could not generate series data.", v6, 0xCu);
      sub_29D69417C(v7);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    v8 = v0[2];
    v9 = sub_29D9370A8();
    v10 = MEMORY[0x29EDC2C58];
    v8[3] = v9;
    v8[4] = v10;
    sub_29D693F78(v8);
    sub_29D937098();
  }

  else
  {
    v11 = v0[9];
    v13 = v0[4];
    v12 = v0[5];
    v15 = v0[2];
    v14 = v0[3];
    sub_29D7FF8BC(v2, v11, type metadata accessor for BloodPressurePDFSeriesViewModel);
    v25 = MEMORY[0x29EDCA190];
    v16 = *(v11 + *(v1 + 28));
    v17 = sub_29D935E88();
    sub_29D88BF68(v17);
    v18 = *(v11 + *(v1 + 32));
    v19 = sub_29D935E88();
    sub_29D88BF68(v19);
    sub_29D7FF764(v14, v12, type metadata accessor for BloodPressurePDFViewModel);
    *(v12 + *(v13 + 20)) = v25;
    sub_29D75E46C(v15);
    sub_29D7FF924(v12, type metadata accessor for BloodPressurePDFChartSection);
    sub_29D7FF924(v11, type metadata accessor for BloodPressurePDFSeriesViewModel);
  }

  v20 = v0[9];
  v21 = v0[5];
  v22 = v0[6];

  v23 = v0[1];

  return v23();
}

uint64_t sub_29D7FC1BC()
{
  v15 = v0;
  (*(v0[8] + 56))(v0[6], 1, 1, v0[7]);
  sub_29D7FF984(v0[6], &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2BF10);
  v2 = sub_29D937878();
  v3 = sub_29D93A288();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v14);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s] Could not generate series data.", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v6 = v0[2];
  v7 = sub_29D9370A8();
  v8 = MEMORY[0x29EDC2C58];
  v6[3] = v7;
  v6[4] = v8;
  sub_29D693F78(v6);
  sub_29D937098();
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_29D7FC3BC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for BloodPressurePDFViewModel(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7FC45C, 0, 0);
}

uint64_t sub_29D7FC45C()
{
  v35 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + v2[22]);
  if (v3 && (v4 = *(v1 + v2[13])) != 0)
  {
    v5 = *(v1 + v2[21]);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v32 = *(v1 + v2[21]);
      }

      v6 = sub_29D93A928();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v0[2];
    v8 = v3;
    v9 = v4;
    sub_29D8F4CCC(v6, v8, v9, v7);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
      v1 = v0[3];
    }

    v11 = v0[5];
    v10 = v0[6];
    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2BF10);
    sub_29D7FF764(v1, v10, type metadata accessor for BloodPressurePDFViewModel);
    sub_29D7FF764(v1, v11, type metadata accessor for BloodPressurePDFViewModel);
    v13 = sub_29D937878();
    v14 = sub_29D93A288();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[5];
    v17 = v0[6];
    if (v15)
    {
      v33 = v0[4];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v18 = 136446722;
      *(v18 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v34);
      *(v18 + 12) = 2112;
      v21 = *(v17 + v2[22]);
      *(v18 + 14) = v21;
      *v19 = v21;
      v22 = v21;
      sub_29D7FF924(v17, type metadata accessor for BloodPressurePDFViewModel);
      *(v18 + 22) = 2112;
      v23 = *(v16 + *(v33 + 52));
      *(v18 + 24) = v23;
      v19[1] = v23;
      v24 = v23;
      sub_29D7FF924(v16, type metadata accessor for BloodPressurePDFViewModel);
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Could not create summary section with systolic statistics: %@, diastolic statistics: %@", v18, 0x20u);
      sub_29D7FF50C(0, &qword_2A1A21FC0, &qword_2A1A21FD0, 0x29EDC9738, MEMORY[0x29EDC9C68]);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v19, -1, -1);
      sub_29D69417C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    else
    {

      sub_29D7FF924(v16, type metadata accessor for BloodPressurePDFViewModel);
      sub_29D7FF924(v17, type metadata accessor for BloodPressurePDFViewModel);
    }

    v25 = v0[2];
    v26 = sub_29D9370A8();
    v27 = MEMORY[0x29EDC2C58];
    v25[3] = v26;
    v25[4] = v27;
    sub_29D693F78(v25);
    sub_29D937098();
  }

  v29 = v0[5];
  v28 = v0[6];

  v30 = v0[1];

  return v30();
}

uint64_t sub_29D7FC7E4(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D7FF488(0, &qword_2A17B2D20, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for BloodPressureDayCoordinate();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A17B5788, type metadata accessor for BloodPressureMinMaxCoordinate, v4);
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel, v4);
  v16 = *(*(v15 - 8) + 64) + 15;
  v17 = swift_task_alloc();
  v2[28] = v17;
  v18 = type metadata accessor for BloodPressurePDFSeriesViewModel(0);
  v2[29] = v18;
  v19 = *(v18 - 8);
  v2[30] = v19;
  v20 = *(v19 + 64) + 15;
  v2[31] = swift_task_alloc();
  v21 = type metadata accessor for BloodPressurePDFViewModel(0);
  v2[32] = v21;
  v22 = *(v21 + 40);
  v23 = *(v21 + 76);
  v24 = swift_task_alloc();
  v2[33] = v24;
  *v24 = v2;
  v24[1] = sub_29D7FCAD4;

  return sub_29D7FDA18(v17, a2 + v22, a2 + v23);
}

uint64_t sub_29D7FCAD4()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = sub_29D7FD45C;
  }

  else
  {
    v3 = sub_29D7FCBF0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D7FCBF0()
{
  v88 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  if ((*(*(v0 + 240) + 48))(v2, 1, v1) == 1)
  {
    sub_29D7FF984(v2, &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2BF10);
    v4 = sub_29D937878();
    v5 = sub_29D93A288();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v87[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, v87);
      _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Could not generate series data.", v6, 0xCu);
      sub_29D69417C(v7);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    v8 = *(v0 + 128);
    v9 = sub_29D9370A8();
    v10 = MEMORY[0x29EDC2C58];
    v8[3] = v9;
    v8[4] = v10;
    sub_29D693F78(v8);
    sub_29D937098();
  }

  else
  {
    v78 = (v0 + 16);
    v11 = *(v0 + 248);
    sub_29D7FF8BC(v2, v11, type metadata accessor for BloodPressurePDFSeriesViewModel);
    v12 = *(v11 + *(v1 + 28));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v0 + 192);
      v86 = *(*(v0 + 248) + *(*(v0 + 232) + 32));
      v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v82 = *(v0 + 160);
      v83 = *(v0 + 184);
      v81 = *(v0 + 152);
      v84 = (v14 + 48);
      v85 = *(v14 + 72);
      v16 = *(v0 + 272);
      v17 = MEMORY[0x29EDCA190];
      do
      {
        v18 = *(v0 + 216);
        v20 = *(v0 + 176);
        v19 = *(v0 + 184);
        sub_29D7FF764(v15, v18, type metadata accessor for BloodPressureMinMaxCoordinate);
        *(swift_task_alloc() + 16) = v18;
        sub_29D8DBF10(sub_29D7FF7CC, v86, v20);

        if ((*v84)(v20, 1, v19) == 1)
        {
          sub_29D7FF984(*(v0 + 176), &qword_2A17B5788, type metadata accessor for BloodPressureMinMaxCoordinate);
          if (qword_2A1A24658 != -1)
          {
            swift_once();
          }

          v21 = *(v0 + 216);
          v22 = *(v0 + 200);
          v23 = sub_29D937898();
          sub_29D69C6C0(v23, qword_2A1A2BF10);
          sub_29D7FF764(v21, v22, type metadata accessor for BloodPressureMinMaxCoordinate);
          v24 = sub_29D937878();
          v25 = sub_29D93A2A8();
          v26 = os_log_type_enabled(v24, v25);
          v27 = *(v0 + 200);
          if (v26)
          {
            v80 = v17;
            v28 = swift_slowAlloc();
            v79 = v16;
            v29 = swift_slowAlloc();
            v87[0] = v29;
            *v28 = 136446466;
            *(v28 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, v87);
            *(v28 + 12) = 2080;
            v30 = v83[5];
            sub_29D9339F8();
            sub_29D7FF878(&qword_2A17B7B10);
            v31 = sub_29D93AD38();
            v33 = v32;
            sub_29D7FF924(v27, type metadata accessor for BloodPressureMinMaxCoordinate);
            v34 = sub_29D6C2364(v31, v33, v87);

            *(v28 + 14) = v34;
            _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] No matching diastolic value for systolic date: %s", v28, 0x16u);
            swift_arrayDestroy();
            v35 = v29;
            v16 = v79;
            MEMORY[0x29ED6BE30](v35, -1, -1);
            v36 = v28;
            v17 = v80;
            MEMORY[0x29ED6BE30](v36, -1, -1);
          }

          else
          {

            sub_29D7FF924(v27, type metadata accessor for BloodPressureMinMaxCoordinate);
          }
        }

        else
        {
          v37 = v16;
          v39 = *(v0 + 208);
          v38 = *(v0 + 216);
          v40 = *(v0 + 168);
          sub_29D7FF8BC(*(v0 + 176), v39, type metadata accessor for BloodPressureMinMaxCoordinate);
          v41 = v83[5];
          v42 = sub_29D9339F8();
          (*(*(v42 - 8) + 16))(v40, v38 + v41, v42);
          v43 = v83[6];
          v44 = v83[7];
          v45 = *(v38 + v43);
          v46 = *(v38 + v44);
          v47 = *(v39 + v43);
          v48 = *(v39 + v44);
          *(v40 + v81[5]) = v45;
          *(v40 + v81[6]) = v46;
          *(v40 + v81[7]) = v47;
          *(v40 + v81[8]) = v48;
          v49 = v45;
          v50 = v46;
          v51 = v47;
          v52 = v48;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29D6901AC(0, v17[2] + 1, 1, v17);
          }

          v54 = v17[2];
          v53 = v17[3];
          v16 = v37;
          if (v54 >= v53 >> 1)
          {
            v17 = sub_29D6901AC(v53 > 1, v54 + 1, 1, v17);
          }

          v55 = *(v0 + 168);
          sub_29D7FF924(*(v0 + 208), type metadata accessor for BloodPressureMinMaxCoordinate);
          v17[2] = v54 + 1;
          sub_29D7FF8BC(v55, v17 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v54, type metadata accessor for BloodPressureDayCoordinate);
        }

        sub_29D7FF924(*(v0 + 216), type metadata accessor for BloodPressureMinMaxCoordinate);
        v15 += v85;
        --v13;
      }

      while (v13);
    }

    else
    {
      v17 = MEMORY[0x29EDCA190];
    }

    v56 = *(v0 + 248);
    v57 = *(v0 + 256);
    v59 = *(v0 + 136);
    v58 = *(v0 + 144);
    v60 = *(v0 + 128);
    v61 = *(v59 + v57[11]);
    sub_29D7FF628(v59 + v57[12], v58, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
    v62 = *(v59 + v57[20]);
    v63 = *(v59 + v57[9]);
    v64 = v61;
    sub_29D935E88();
    sub_29D889E9C(v17, v64, v58, v62, v63, (v0 + 72));
    v65 = *(v0 + 88);
    *v78 = *(v0 + 72);
    *(v0 + 32) = v65;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    *(swift_task_alloc() + 16) = v78;
    v66 = sub_29D9370F8();
    v67 = MEMORY[0x29EDC2C70];
    v60[3] = v66;
    v60[4] = v67;
    sub_29D693F78(v60);
    sub_29D9370E8();
    sub_29D7FF824(v0 + 72);

    sub_29D7FF924(v56, type metadata accessor for BloodPressurePDFSeriesViewModel);
  }

  v68 = *(v0 + 248);
  v69 = *(v0 + 216);
  v70 = *(v0 + 224);
  v72 = *(v0 + 200);
  v71 = *(v0 + 208);
  v74 = *(v0 + 168);
  v73 = *(v0 + 176);
  v75 = *(v0 + 144);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_29D7FD45C()
{
  v20 = v0;
  (*(v0[30] + 56))(v0[28], 1, 1, v0[29]);
  sub_29D7FF984(v0[28], &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2BF10);
  v2 = sub_29D937878();
  v3 = sub_29D93A288();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v19);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s] Could not generate series data.", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v6 = v0[16];
  v7 = sub_29D9370A8();
  v8 = MEMORY[0x29EDC2C58];
  v6[3] = v7;
  v6[4] = v8;
  sub_29D693F78(v6);
  sub_29D937098();
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[18];

  v17 = v0[1];

  return v17();
}

uint64_t sub_29D7FD698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v25 = a1;
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v22 - v11;
  v13 = sub_29D9331D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for BloodPressurePDFSampleInterval() + 20);
  v20 = *(v4 + 16);
  v20(v12, v23, v3);
  v20(v9, v24, v3);
  sub_29D933188();
  LOBYTE(v19) = sub_29D933138();
  (*(v14 + 8))(v18, v13);
  return v19 & 1;
}

uint64_t sub_29D7FD87C(void **a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [v8 startDate];
  sub_29D933998();

  sub_29D7FF878(&qword_2A17B4730);
  v10 = sub_29D939CB8();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v8 endDate];
    sub_29D933998();

    v12 = sub_29D933978();
    v11(v7, v2);
  }

  return v12 & 1;
}

uint64_t sub_29D7FDA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = sub_29D9339F8();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  sub_29D7FF50C(0, &qword_2A17B3430, &qword_2A17B18A8, 0x29EDBAD10, MEMORY[0x29EDBA210]);
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = sub_29D939B98();
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v16 = sub_29D933318();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7FDC6C, 0, 0);
}

uint64_t sub_29D7FDC6C()
{
  v1 = *(v0 + 168);
  v32 = *(v0 + 152);
  v33 = *(v0 + 160);
  v34 = *(v0 + 144);
  v35 = *(v0 + 136);
  v28 = v1;
  v29 = *(v0 + 104);
  v2 = *(v0 + 88);
  v30 = *(v0 + 96);
  v31 = *(v0 + 80);
  v3 = *(v0 + 32);
  v36 = *(v0 + 40);
  v27 = *(v0 + 24);
  v4 = [objc_opt_self() configurationForZoomLevel_];
  *(v0 + 176) = v4;
  v5 = [v4 seriesPointIntervalComponentsAtResolution_];
  sub_29D933298();

  *(v0 + 184) = sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(v0 + 192) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v6 = objc_opt_self();
  *(v0 + 200) = v6;
  v7 = sub_29D933958();
  v8 = sub_29D933958();
  v9 = [v6 predicateForSamplesWithStartDate:v7 endDate:v8 options:0];
  *(v0 + 208) = v9;

  sub_29D7FF488(0, &qword_2A17B5798, MEMORY[0x29EDC4988], MEMORY[0x29EDC9E90]);
  *(v0 + 216) = v10;
  v11 = sub_29D937528();
  *(v0 + 224) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  *(v0 + 232) = v13;
  v14 = *(v12 + 80);
  *(v0 + 384) = v14;
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D943EA0;
  v17 = v16 + v15;
  *(v0 + 388) = *MEMORY[0x29EDC4970];
  v18 = *(v12 + 104);
  *(v0 + 240) = v18;
  *(v0 + 248) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v17);
  *(v0 + 392) = *MEMORY[0x29EDC4968];
  v18(v17 + v13);
  *(v0 + 396) = *MEMORY[0x29EDC4960];
  v18(v17 + 2 * v13);
  sub_29D93A528();
  *(v0 + 256) = sub_29D69567C(0, &qword_2A17B18A8, 0x29EDBAD10);
  v19 = v9;
  sub_29D939AB8();

  v20 = *(v2 + 16);
  *(v0 + 264) = v20;
  *(v0 + 272) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v30, v27, v31);
  v21 = *(v32 + 16);
  *(v0 + 280) = v21;
  *(v0 + 288) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v33, v28, v34);
  sub_29D939B88();
  v22 = *v36;
  *(v0 + 296) = *v36;
  v23 = *(MEMORY[0x29EDBA278] + 4);
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *v24 = v0;
  v24[1] = sub_29D7FE060;
  v25 = *(v0 + 136);

  return MEMORY[0x2A1C5B5F8](v22);
}

uint64_t sub_29D7FE060(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_29D7FE548;
  }

  else
  {
    v5 = sub_29D7FE174;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7FE174()
{
  v40 = *(v0 + 280);
  v41 = *(v0 + 288);
  v38 = *(v0 + 264);
  v39 = *(v0 + 272);
  v29 = *(v0 + 392);
  v30 = *(v0 + 396);
  v35 = *(v0 + 256);
  v27 = *(v0 + 248);
  v26 = *(v0 + 388);
  v1 = *(v0 + 384);
  v2 = *(v0 + 232);
  v24 = *(v0 + 224);
  v25 = *(v0 + 240);
  v23 = *(v0 + 216);
  v3 = *(v0 + 208);
  v22 = *(v0 + 200);
  v4 = *(v0 + 184);
  v36 = *(v0 + 168);
  v5 = *(v0 + 136);
  v33 = *(v0 + 160);
  v34 = *(v0 + 144);
  v6 = *(v0 + 120);
  v37 = *(v0 + 128);
  v7 = *(v0 + 112);
  v28 = *(v0 + 104);
  v31 = *(v0 + 96);
  v32 = *(v0 + 80);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  v10 = *(v6 + 8);
  *(v0 + 328) = v10;
  *(v0 + 336) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  *(v0 + 344) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  v11 = sub_29D933958();
  v12 = sub_29D933958();
  v13 = [v22 predicateForSamplesWithStartDate:v11 endDate:v12 options:0];
  *(v0 + 352) = v13;

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D943EA0;
  v15 = v14 + ((v1 + 32) & ~v1);
  v25(v15, v26, v24);
  v25(v15 + v2, v29, v24);
  v25(v15 + 2 * v2, v30, v24);
  sub_29D93A528();
  v16 = v13;
  sub_29D939AB8();

  v38(v31, v9, v32);
  v40(v33, v36, v34);
  sub_29D939B88();
  v17 = *(MEMORY[0x29EDBA278] + 4);
  v18 = swift_task_alloc();
  *(v0 + 360) = v18;
  *v18 = v0;
  v18[1] = sub_29D7FE434;
  v19 = *(v0 + 296);
  v20 = *(v0 + 128);

  return MEMORY[0x2A1C5B5F8](v19);
}

uint64_t sub_29D7FE434(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v7 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v5 = sub_29D7FE670;
  }

  else
  {
    v5 = sub_29D7FE794;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7FE548()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 72);
  v16 = *(v0 + 64);
  v17 = *(v0 + 320);

  (*(v6 + 8))(v5, v8);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D7FE670()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);

  v3(v5, v6);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 128);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 72);
  v18 = *(v0 + 64);
  v19 = *(v0 + 376);

  (*(v8 + 8))(v7, v10);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_29D7FE794()
{
  v112 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);

  v4(v6, v7);
  v8 = [v5 statistics];
  sub_29D69567C(0, &qword_2A17B4920, 0x29EDBAE18);
  v9 = sub_29D939F38();

  v10 = [v1 statistics];
  v88 = sub_29D939F38();

  if (v9 >> 62)
  {
LABEL_26:
    v11 = sub_29D93A928();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v89 = v110[6];
      v91 = v110[7];
      v96 = v9 & 0xFFFFFFFFFFFFFF8;
      v98 = v9 & 0xC000000000000001;
      v13 = MEMORY[0x29EDCA190];
      v93 = v11;
      v94 = v9;
      while (1)
      {
        if (v98)
        {
          v14 = MEMORY[0x29ED6AE30](v12, v9);
        }

        else
        {
          if (v12 >= *(v96 + 16))
          {
            goto LABEL_25;
          }

          v14 = *(v9 + 8 * v12 + 32);
        }

        v15 = v14;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v16 = [v14 minimumQuantity];
        if (!v16)
        {
          break;
        }

        v17 = v16;
        v18 = [v15 maximumQuantity];
        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = v18;
        v20 = [v15 averageQuantity];
        if (!v20)
        {

LABEL_19:
          break;
        }

        v21 = v20;
        v107 = v13;
        v22 = v110[33];
        v100 = v110[34];
        v102 = v12 + 1;
        v24 = v110[9];
        v23 = v110[10];
        v25 = [v15 startDate];
        v26 = v89[5];
        sub_29D933998();

        v22(v24, v24 + v26, v23);
        v13 = v107;
        *(v24 + v89[6]) = v17;
        *(v24 + v89[7]) = v19;
        *(v24 + v89[8]) = v21;
        *(v24 + v89[9]) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_29D690178(0, v107[2] + 1, 1, v107);
        }

        v28 = *(v13 + 16);
        v27 = *(v13 + 24);
        if (v28 >= v27 >> 1)
        {
          v13 = sub_29D690178(v27 > 1, v28 + 1, 1, v13);
        }

        v29 = v110[9];

        *(v13 + 16) = v28 + 1;
        sub_29D7FF8BC(v29, v13 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v28, type metadata accessor for BloodPressureMinMaxCoordinate);
        ++v12;
        v9 = v94;
        if (v102 == v93)
        {
          goto LABEL_28;
        }
      }

      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v30 = sub_29D937898();
      sub_29D69C6C0(v30, qword_2A1A2BF10);
      v31 = v15;
      v32 = sub_29D937878();
      v33 = sub_29D93A288();

      v34 = os_log_type_enabled(v32, v33);
      v35 = v110[46];
      v36 = v110[39];
      v38 = v110[21];
      v37 = v110[22];
      v40 = v110[18];
      v39 = v110[19];
      if (v34)
      {
        v108 = v110[21];
        v41 = swift_slowAlloc();
        v104 = v40;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v111 = v43;
        *v41 = 136446466;
        *(v41 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v111);
        *(v41 + 12) = 2112;
        *(v41 + 14) = v31;
        *v42 = v31;
        v44 = v31;
        v45 = "[%{public}s] Could not find minimum/maximum for systolic statistic: %@";
LABEL_52:
        _os_log_impl(&dword_29D677000, v32, v33, v45, v41, 0x16u);
        sub_29D6ACA3C(v42);
        MEMORY[0x29ED6BE30](v42, -1, -1);
        sub_29D69417C(v43);
        MEMORY[0x29ED6BE30](v43, -1, -1);
        MEMORY[0x29ED6BE30](v41, -1, -1);

        (*(v39 + 8))(v108, v104);
        goto LABEL_54;
      }

LABEL_53:

      (*(v39 + 8))(v38, v40);
LABEL_54:
      v67 = type metadata accessor for BloodPressurePDFSeriesViewModel(0);
      v68 = 1;
      goto LABEL_60;
    }
  }

  v13 = MEMORY[0x29EDCA190];
LABEL_28:

  v46 = v88;
  if (v88 >> 62)
  {
LABEL_57:
    v46 = v88;
    v47 = sub_29D93A928();
    v109 = v13;
    if (v47)
    {
LABEL_30:
      v48 = 0;
      v95 = v46 & 0xFFFFFFFFFFFFFF8;
      v97 = v46 & 0xC000000000000001;
      v49 = MEMORY[0x29EDCA190];
      v90 = v110[6];
      v92 = v110[7];
      while (1)
      {
        if (v97)
        {
          v50 = MEMORY[0x29ED6AE30](v48, v46);
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v48 >= *(v95 + 16))
          {
            goto LABEL_56;
          }

          v50 = *(v46 + 8 * v48 + 32);
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }
        }

        v52 = [v50 minimumQuantity];
        if (!v52)
        {
          goto LABEL_48;
        }

        v53 = v52;
        v54 = [v50 maximumQuantity];
        if (!v54)
        {
          break;
        }

        v55 = v54;
        v56 = [v50 averageQuantity];
        if (!v56)
        {

          break;
        }

        v57 = v56;
        v99 = v110[34];
        v101 = v51;
        v103 = v50;
        v105 = v49;
        v58 = v110[33];
        v59 = v110[10];
        v60 = v110[8];
        v61 = [v50 startDate];
        v13 = v90[5];
        sub_29D933998();

        v58(v60, v60 + v13, v59);
        v49 = v105;
        *(v60 + v90[6]) = v53;
        *(v60 + v90[7]) = v55;
        *(v60 + v90[8]) = v57;
        *(v60 + v90[9]) = 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_29D690178(0, v105[2] + 1, 1, v105);
        }

        v63 = v49[2];
        v62 = v49[3];
        if (v63 >= v62 >> 1)
        {
          v49 = sub_29D690178(v62 > 1, v63 + 1, 1, v49);
        }

        v64 = v110[8];

        v49[2] = v63 + 1;
        sub_29D7FF8BC(v64, v49 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v63, type metadata accessor for BloodPressureMinMaxCoordinate);
        ++v48;
        v46 = v88;
        if (v101 == v47)
        {
          goto LABEL_59;
        }
      }

LABEL_48:

      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v65 = sub_29D937898();
      sub_29D69C6C0(v65, qword_2A1A2BF10);
      v31 = v50;
      v32 = sub_29D937878();
      v33 = sub_29D93A288();

      v66 = os_log_type_enabled(v32, v33);
      v35 = v110[46];
      v36 = v110[39];
      v38 = v110[21];
      v37 = v110[22];
      v40 = v110[18];
      v39 = v110[19];
      if (v66)
      {
        v108 = v110[21];
        v41 = swift_slowAlloc();
        v104 = v40;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v111 = v43;
        *v41 = 136446466;
        *(v41 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v111);
        *(v41 + 12) = 2112;
        *(v41 + 14) = v31;
        *v42 = v31;
        v44 = v31;
        v45 = "[%{public}s] Could not find minimum/maximum for diastolic statistic: %@";
        goto LABEL_52;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v47 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v109 = v13;
    if (v47)
    {
      goto LABEL_30;
    }
  }

  v49 = MEMORY[0x29EDCA190];
LABEL_59:
  v106 = v49;
  v69 = v110[46];
  v70 = v110[39];
  v72 = v110[33];
  v71 = v110[34];
  v73 = v110[22];
  v74 = v110[10];
  v75 = v110[3];
  v76 = v110[4];
  v77 = v110[2];
  (*(v110[19] + 8))(v110[21], v110[18]);

  v72(v77, v75, v74);
  v67 = type metadata accessor for BloodPressurePDFSeriesViewModel(0);
  v72(v77 + v67[5], v76, v74);
  v68 = 0;
  *(v77 + v67[6]) = 4;
  *(v77 + v67[7]) = v109;
  *(v77 + v67[8]) = v106;
LABEL_60:
  v79 = v110[20];
  v78 = v110[21];
  v81 = v110[16];
  v80 = v110[17];
  v83 = v110[12];
  v82 = v110[13];
  v85 = v110[8];
  v84 = v110[9];
  (*(*(v67 - 1) + 56))(v110[2], v68, 1, v67);

  v86 = v110[1];

  return v86();
}

uint64_t sub_29D7FF1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v7 = sub_29D935378();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935E88();
  v13 = sub_29D934FC8();
  v14 = *MEMORY[0x29EDC1F60];
  v15 = *(v8 + 104);
  v15(v12, v14, v7);
  v16 = sub_29D936FD8();
  v25 = v16;
  v26 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v24);
  MEMORY[0x29ED673E0](a1, a2, v12, v13);
  v17 = sub_29D935808();
  sub_29D69417C(v24);
  sub_29D935E88();
  v18 = sub_29D934F58();
  v15(v12, v14, v7);
  v25 = v16;
  v26 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v24);
  MEMORY[0x29ED673E0](v23, a4, v12, v18);
  v19 = sub_29D935808();
  sub_29D69417C(v24);
  sub_29D7FF488(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D93F680;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  v21 = MEMORY[0x29ED65BE0]();

  return v21;
}

uint64_t sub_29D7FF3F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D7F555C(a1);
}

void sub_29D7FF488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7FF4EC(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_29D7FD87C(a1) & 1;
}

void sub_29D7FF50C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D7FF594()
{
  if (!qword_2A17B4EE0)
  {
    type metadata accessor for HKBloodPressureClassificationGuidelines(255);
    v0 = sub_29D93A038();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4EE0);
    }
  }
}

uint64_t sub_29D7FF628(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D7FF488(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29D7FF6FC()
{
  if (!qword_2A17B1018)
  {
    sub_29D6B7370(255, &qword_2A17B1010);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1018);
    }
  }
}

uint64_t sub_29D7FF764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7FF7CC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for BloodPressureMinMaxCoordinate(0) + 20);
  return sub_29D933988() & 1;
}

uint64_t sub_29D7FF878(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D9339F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D7FF8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7FF924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7FF984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7FF488(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D7FFA40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_29D939D28();
  v5 = [v3 hk:v4 keyExists:?];

  if (v5)
  {
    v6 = sub_29D939D28();
    [v3 doubleForKey_];

    sub_29D933748();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_29D9339F8();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_29D7FFB50(uint64_t a1)
{
  v2 = v1;
  sub_29D6A08F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A0A20(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29D6A0D34(v8);
    v15 = *(v2 + 16);
    v16 = sub_29D939D28();
    [v15 removeObjectForKey_];

    return sub_29D6A0D34(a1);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    sub_29D933758();
    v19 = v18;
    v20 = *(v2 + 16);
    v21 = sub_29D939D28();
    [v20 setDouble:v21 forKey:v19];

    sub_29D6A0D34(a1);
    return (*(v10 + 8))(v14, v9);
  }
}

uint64_t sub_29D7FFD7C(void (*a1)(char *))
{
  sub_29D8000B8(0, &unk_2A1A21EE0, MEMORY[0x29EDCA058]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v8 - v5;
  sub_29D7FFA40(&v8 - v5);
  swift_storeEnumTagMultiPayload();
  a1(v6);
  return sub_29D800130(v6);
}

uint64_t sub_29D7FFE4C()
{
  v1 = *v0;
  sub_29D8000B8(0, &qword_2A1A22320, MEMORY[0x29EDB8AD0]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  sub_29D938368();
  sub_29D800044();
  v5 = sub_29D938418();

  return v5;
}

uint64_t sub_29D7FFF04()
{
  v0 = *MEMORY[0x29EDC51D0];
  sub_29D939D68();
  v1 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v2 = sub_29D939D28();

  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    type metadata accessor for HypertensionNotificationsSettingsManager();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    sub_29D93AA18();

    v5 = sub_29D939D68();
    MEMORY[0x29ED6A240](v5);

    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

unint64_t sub_29D800044()
{
  result = qword_2A1A22328;
  if (!qword_2A1A22328)
  {
    sub_29D8000B8(255, &qword_2A1A22320, MEMORY[0x29EDB8AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22328);
  }

  return result;
}

void sub_29D8000B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D6A08F8();
    v7 = v6;
    v8 = sub_29D6A0CD0();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D800130(uint64_t a1)
{
  sub_29D8000B8(0, &unk_2A1A21EE0, MEMORY[0x29EDCA058]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D8001A8()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D934178();
  sub_29D6FD494(v6, qword_2A1A2BF70);
  sub_29D69C6C0(v6, qword_2A1A2BF70);
  sub_29D933FE8();
  sub_29D6FD4F8(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x29EDC3790], v7);
  sub_29D6E4080(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D77EC7C();
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  sub_29D6E3724(inited);
  v14 = v13;
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D8E8608(v14);

  (*(v1 + 104))(v5, *MEMORY[0x29EDC3898], v0);
  return sub_29D934168();
}

uint64_t sub_29D800494()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D77EC7C();
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  sub_29D6E3724(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D800554()
{
  v0 = type metadata accessor for HypertensionNotificationsPromotionTileActionHandler();
  sub_29D800B10();
  return v0;
}

uint64_t sub_29D800588()
{
  v0 = sub_29D934798();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  sub_29D837F94();
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  return sub_29D9349E8();
}

uint64_t type metadata accessor for HypertensionNotificationsPromotionGenerator()
{
  result = qword_2A1A231F8;
  if (!qword_2A1A231F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_29D8007CC(unsigned int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v31 = a3;
  v32 = a4;
  v29 = *v4;
  v8 = sub_29D934178();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9341E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D7FFF04();
  v34[3] = type metadata accessor for HypertensionNotificationsSettingsManager();
  v34[4] = &off_2A2446DD0;
  v33 = a2;
  v34[0] = v20;
  (*(v15 + 16))(v19, a2, v14);
  if (qword_2A1A24788 != -1)
  {
    swift_once();
  }

  v21 = sub_29D69C6C0(v8, qword_2A1A2BF70);
  v30 = v9;
  v22 = *(v9 + 16);
  v22(v13, v21, v8);
  *&v5[OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_featurePromotionResult] = a1;
  v22(&v5[OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain], v13, v8);
  if (a1 > 1u)
  {

    v25 = 0;
    v23 = v33;
  }

  else
  {
    v23 = v33;
    v24 = sub_29D93AD78();

    v25 = v24 ^ 1;
  }

  v26 = sub_29D8A8360(a1, v25 & 1, v19, v34, v31, v32);
  v27 = *(v15 + 8);
  v27(v23, v14);
  (*(v30 + 8))(v13, v8);
  v27(v19, v14);
  sub_29D6FD3A4(v34);
  *&v5[OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_publisher] = v26;
  return v5;
}

unint64_t sub_29D800B10()
{
  result = qword_2A17B57A0;
  if (!qword_2A17B57A0)
  {
    type metadata accessor for HypertensionNotificationsPromotionTileActionHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B57A0);
  }

  return result;
}

uint64_t type metadata accessor for ElectrocardiogramUpdateTileView()
{
  result = qword_2A17B57A8;
  if (!qword_2A17B57A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D800BF4(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_29D934BA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ElectrocardiogramUpdateTileView();
  v19.receiver = a1;
  v19.super_class = updated;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a2, a3, a4, a5);
  sub_29D800D80();
  sub_29D934BB8();

  (*(v11 + 8))(v15, v10);
  return v17;
}

uint64_t sub_29D800D80()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D939D28();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  if (v3)
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D9334A8();
    [objc_opt_self() clearColor];
    return sub_29D934B98();
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

id sub_29D800FE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElectrocardiogramUpdateTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D801028(void *a1)
{
  v3 = type metadata accessor for HypertensionNotificationDetailView();
  v4 = *(*(v3 - 1) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v38[-v10];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v13 = result;
    v14 = a1;
    v15 = [v13 sampleType];
    v16 = [v15 identifier];

    if (!v16)
    {
      sub_29D939D68();
      v16 = sub_29D939D28();
    }

    v17 = *MEMORY[0x29EDBA460];
    v18 = sub_29D939D68();
    v20 = v19;
    if (v18 == sub_29D939D68() && v20 == v21)
    {
    }

    else
    {
      v23 = sub_29D93AD78();

      if ((v23 & 1) == 0)
      {

        return 0;
      }
    }

    v24 = *(v1 + 24);
    v25 = sub_29D6F82E0();
    v26 = *(v1 + 16);
    *v11 = swift_getKeyPath();
    sub_29D74C354(0);
    swift_storeEnumTagMultiPayload();
    v27 = v11 + v3[6];
    v39 = 0;
    v28 = v14;
    v29 = v25;
    v30 = v26;
    sub_29D939688();
    v31 = v41;
    *v27 = v40;
    *(v27 + 1) = v31;
    v32 = v11 + v3[7];
    v39 = 0;
    sub_29D939688();
    v33 = v41;
    *v32 = v40;
    *(v32 + 1) = v33;
    v34 = v11 + v3[8];
    *v34 = v29;
    *(v34 + 1) = v13;
    v34[16] = v24;
    *(v11 + v3[9]) = v30;
    *(v11 + v3[5]) = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:v30];
    sub_29D7559DC(v11, v8);
    sub_29D755A40();
    v36 = objc_allocWithZone(v35);
    v37 = sub_29D939A28();

    sub_29D755AFC(v11);
    return v37;
  }

  return result;
}

uint64_t sub_29D801324()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D8013A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_29D8013BC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_29D8013E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_29D801430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D801498(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_29D803FAC(0, &qword_2A17B3C78, MEMORY[0x29EDC1C50]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v5 = *(type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider() - 8);
  v2[28] = v5;
  v2[29] = *(v5 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = type metadata accessor for AFibBurdenPDFChartPointProviderFactory();
  v2[32] = v6;
  v7 = *(v6 - 8);
  v2[33] = v7;
  v2[34] = *(v7 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v8 = sub_29D933CE8();
  v2[37] = v8;
  v9 = *(v8 - 8);
  v2[38] = v9;
  v10 = *(v9 + 64) + 15;
  v2[39] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D80167C, 0, 0);
}

uint64_t sub_29D80167C()
{
  v1 = v0[39];
  v2 = v0[26];
  v3 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_29D933C08();

  sub_29D933B08();
  v4 = *v2;
  v0[40] = *v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_29D801788;
  v7 = v0[39];

  return sub_29D8D7BA8(v7, v5, sub_29D68B82C, 0);
}

uint64_t sub_29D801788(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v7 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v5 = sub_29D8027E4;
  }

  else
  {
    v5 = sub_29D80189C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D80189C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  if (*(*(v0 + 336) + 16))
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 208);
    (*(v2 + 16))(v3, *(v0 + 312), *(v0 + 296));
    v7 = *(v6 + 96);
    *(v3 + *(v5 + 20)) = v1;
    *(v3 + *(v5 + 24)) = v7;
    v8 = *(v6 + 8);
    *(v0 + 352) = v8;
    v9 = v1;
    v10 = v7;
    v11 = v8;
    sub_29D933BC8();
    sub_29D803F2C(v6 + 16, v0 + 120);
    v12 = *(v0 + 144);
    if (v12)
    {
      v13 = *(v0 + 152);
      sub_29D693E2C((v0 + 120), *(v0 + 144));
      v14 = *(MEMORY[0x29EDC2210] + 4);
      v15 = swift_task_alloc();
      *(v0 + 360) = v15;
      *v15 = v0;
      v16 = sub_29D801D10;
LABEL_9:
      v15[1] = v16;

      return MEMORY[0x2A1C61D28](v12, v13);
    }

    sub_29D804064(v0 + 120);
    *(v0 + 384) = 0;
    sub_29D803F2C(*(v0 + 208) + 56, v0 + 160);
    v12 = *(v0 + 184);
    if (v12)
    {
      v13 = *(v0 + 192);
      sub_29D693E2C((v0 + 160), *(v0 + 184));
      v27 = *(MEMORY[0x29EDC2210] + 4);
      v15 = swift_task_alloc();
      *(v0 + 392) = v15;
      *v15 = v0;
      v16 = sub_29D802100;
      goto LABEL_9;
    }

    sub_29D804064(v0 + 160);
    *(v0 + 416) = 0;
    v28 = *(v0 + 352);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    sub_29D8040DC(*(v0 + 208), v0 + 16);
    sub_29D804114(v29, v30, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
    sub_29D804114(v34, v33, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
    v37 = (*(v32 + 80) + 120) & ~*(v32 + 80);
    v38 = (v31 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v36 + 80) + v38 + 8) & ~*(v36 + 80);
    v40 = swift_allocObject();
    *(v0 + 424) = v40;
    v41 = *(v0 + 96);
    *(v40 + 80) = *(v0 + 80);
    *(v40 + 96) = v41;
    *(v40 + 112) = *(v0 + 112);
    v42 = *(v0 + 32);
    *(v40 + 16) = *(v0 + 16);
    *(v40 + 32) = v42;
    v43 = *(v0 + 64);
    *(v40 + 48) = *(v0 + 48);
    *(v40 + 64) = v43;
    sub_29D80417C(v30, v40 + v37, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
    *(v40 + v38) = v28;
    sub_29D80417C(v33, v40 + v39, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
    v44 = *(MEMORY[0x29EDC1AC8] + 4);
    v45 = v28;
    v46 = swift_task_alloc();
    *(v0 + 432) = v46;
    v47 = sub_29D9331D8();
    *v46 = v0;
    v46[1] = sub_29D802444;
    v48 = *(v0 + 336);

    return MEMORY[0x2A1C60C90](&unk_29D94B5C0, v40, v48, v47, &type metadata for AFibBurdenPDFChartPage);
  }

  else
  {
    v17 = *(v0 + 200);
    (*(v2 + 8))(*(v0 + 312), *(v0 + 296));

    v18 = sub_29D934E78();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = *(v0 + 312);
    v20 = *(v0 + 280);
    v21 = *(v0 + 288);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 216);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_29D801D10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v7 = *(v4 + 336);

    v8 = sub_29D8028B0;
  }

  else
  {
    *(v4 + 376) = a1;
    v8 = sub_29D801E40;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29D801E40()
{
  sub_29D69417C((v0 + 120));
  *(v0 + 384) = *(v0 + 376);
  sub_29D803F2C(*(v0 + 208) + 56, v0 + 160);
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 192);
    sub_29D693E2C((v0 + 160), *(v0 + 184));
    v3 = *(MEMORY[0x29EDC2210] + 4);
    v4 = swift_task_alloc();
    *(v0 + 392) = v4;
    *v4 = v0;
    v4[1] = sub_29D802100;

    return MEMORY[0x2A1C61D28](v1, v2);
  }

  else
  {
    sub_29D804064(v0 + 160);
    *(v0 + 416) = 0;
    v5 = *(v0 + 352);
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 240);
    v11 = *(v0 + 248);
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    sub_29D8040DC(*(v0 + 208), v0 + 16);
    sub_29D804114(v6, v7, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
    sub_29D804114(v11, v10, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
    v14 = (*(v9 + 80) + 120) & ~*(v9 + 80);
    v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (*(v13 + 80) + v15 + 8) & ~*(v13 + 80);
    v17 = swift_allocObject();
    *(v0 + 424) = v17;
    v18 = *(v0 + 96);
    *(v17 + 80) = *(v0 + 80);
    *(v17 + 96) = v18;
    *(v17 + 112) = *(v0 + 112);
    v19 = *(v0 + 32);
    *(v17 + 16) = *(v0 + 16);
    *(v17 + 32) = v19;
    v20 = *(v0 + 64);
    *(v17 + 48) = *(v0 + 48);
    *(v17 + 64) = v20;
    sub_29D80417C(v7, v17 + v14, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
    *(v17 + v15) = v5;
    sub_29D80417C(v10, v17 + v16, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
    v21 = *(MEMORY[0x29EDC1AC8] + 4);
    v22 = v5;
    v23 = swift_task_alloc();
    *(v0 + 432) = v23;
    v24 = sub_29D9331D8();
    *v23 = v0;
    v23[1] = sub_29D802444;
    v25 = *(v0 + 336);

    return MEMORY[0x2A1C60C90](&unk_29D94B5C0, v17, v25, v24, &type metadata for AFibBurdenPDFChartPage);
  }
}

uint64_t sub_29D802100(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v7 = v4[48];
    v8 = v4[42];

    v9 = sub_29D8029CC;
  }

  else
  {
    v4[51] = a1;
    v9 = sub_29D80223C;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29D80223C()
{
  sub_29D69417C((v0 + 160));
  *(v0 + 416) = *(v0 + 408);
  v1 = *(v0 + 352);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  sub_29D8040DC(*(v0 + 208), v0 + 16);
  sub_29D804114(v2, v3, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  sub_29D804114(v7, v6, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  v10 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v9 + 80) + v11 + 8) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v0 + 424) = v13;
  v14 = *(v0 + 96);
  *(v13 + 80) = *(v0 + 80);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(v0 + 112);
  v15 = *(v0 + 32);
  *(v13 + 16) = *(v0 + 16);
  *(v13 + 32) = v15;
  v16 = *(v0 + 64);
  *(v13 + 48) = *(v0 + 48);
  *(v13 + 64) = v16;
  sub_29D80417C(v3, v13 + v10, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  *(v13 + v11) = v1;
  sub_29D80417C(v6, v13 + v12, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  v17 = *(MEMORY[0x29EDC1AC8] + 4);
  v18 = v1;
  v19 = swift_task_alloc();
  *(v0 + 432) = v19;
  v20 = sub_29D9331D8();
  *v19 = v0;
  v19[1] = sub_29D802444;
  v21 = *(v0 + 336);

  return MEMORY[0x2A1C60C90](&unk_29D94B5C0, v13, v21, v20, &type metadata for AFibBurdenPDFChartPage);
}

uint64_t sub_29D802444(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = v1;

  v7 = v4[53];
  if (v1)
  {
    v8 = v4[52];
    v9 = v4[48];
    v10 = v4[42];

    v11 = sub_29D802AE8;
  }

  else
  {
    v12 = v4[42];

    v4[56] = a1;
    v11 = sub_29D8025C0;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29D8025C0()
{
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[40];
  v5 = v0[38];
  v21 = v0[37];
  v22 = v0[39];
  v19 = v0[44];
  v20 = v0[36];
  v18 = v0[31];
  v6 = v0[27];
  v7 = v0[25];
  sub_29D934DE8();
  v8 = sub_29D934DF8();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  sub_29D776658(v1);

  sub_29D934E68();

  sub_29D804348(v18, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  sub_29D804348(v20, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  (*(v5 + 8))(v22, v21);
  v9 = sub_29D934E78();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = v0[39];
  v11 = v0[35];
  v12 = v0[36];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[27];

  v16 = v0[1];

  return v16();
}

uint64_t sub_29D8027E4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 344);
  v5 = *(v0 + 312);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 216);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_29D8028B0()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);

  sub_29D804348(v6, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  sub_29D804348(v5, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  (*(v4 + 8))(v2, v3);
  sub_29D69417C((v0 + 120));
  v7 = *(v0 + 368);
  v8 = *(v0 + 312);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 216);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D8029CC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);

  sub_29D804348(v6, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  sub_29D804348(v5, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  (*(v4 + 8))(v2, v3);
  sub_29D69417C((v0 + 160));
  v7 = *(v0 + 400);
  v8 = *(v0 + 312);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 216);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D802AE8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);

  sub_29D804348(v6, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  sub_29D804348(v5, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  (*(v4 + 8))(v2, v3);
  v7 = *(v0 + 440);
  v8 = *(v0 + 312);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 216);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29D802BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = sub_29D9331D8();
  v6[41] = v7;
  v8 = *(v7 - 8);
  v6[42] = v8;
  v6[43] = *(v8 + 64);
  v6[44] = swift_task_alloc();
  v9 = sub_29D9339F8();
  v6[45] = v9;
  v10 = *(v9 - 8);
  v6[46] = v10;
  v11 = *(v10 + 64) + 15;
  v6[47] = swift_task_alloc();
  sub_29D8043A8(0, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
  v6[48] = v12;
  v13 = *(v12 - 8);
  v6[49] = v13;
  v6[50] = *(v13 + 64);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D802DDC, 0, 0);
}

uint64_t sub_29D802DDC()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  v25 = *(v0 + 384);
  v26 = *(v0 + 408);
  v4 = *(v0 + 368);
  v23 = *(v0 + 360);
  v24 = *(v0 + 352);
  v27 = *(v0 + 344);
  v28 = *(v0 + 400);
  v5 = *(v0 + 336);
  v29 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = *(v0 + 304);
  v21 = *(v0 + 320);
  v22 = *(v0 + 296);
  v8 = *(v0 + 288);
  *(v0 + 144) = type metadata accessor for AFibBurdenPDFChartPointProviderFactory();
  *(v0 + 152) = &off_2A244AFD8;
  v9 = sub_29D693F78((v0 + 120));
  sub_29D804114(v7, v9, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  *(v0 + 184) = &type metadata for AFibBurdenPDFChartFactory;
  *(v0 + 192) = &off_2A244EDF0;
  *(v0 + 160) = v6;
  v10 = v6;
  sub_29D9331A8();
  sub_29D709A58(v1);
  (*(v4 + 8))(v3, v23);
  sub_29D8040DC(v22, v0 + 16);
  sub_29D6945AC(v0 + 120, v0 + 200);
  (*(v5 + 16))(v24, v8, v29);
  sub_29D6945AC(v0 + 160, v0 + 240);
  (*(v2 + 16))(v26, v1, v25);
  v11 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  v12 = (v27 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(v2 + 80) + v12 + 40) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v0 + 424) = v14;
  v15 = *(v0 + 96);
  *(v14 + 80) = *(v0 + 80);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v0 + 112);
  v16 = *(v0 + 32);
  *(v14 + 16) = *(v0 + 16);
  *(v14 + 32) = v16;
  v17 = *(v0 + 64);
  *(v14 + 48) = *(v0 + 48);
  *(v14 + 64) = v17;
  sub_29D679D3C((v0 + 200), v14 + 120);
  (*(v5 + 32))(v14 + v11, v24, v29);
  sub_29D679D3C((v0 + 240), v14 + v12);
  (*(v2 + 32))(v14 + v13, v26, v25);
  v18 = *(MEMORY[0x29EDC1AC8] + 4);
  v19 = swift_task_alloc();
  *(v0 + 432) = v19;
  *v19 = v0;
  v19[1] = sub_29D8030B0;

  return MEMORY[0x2A1C60C90](&unk_29D94B5D0, v14, &unk_2A243E330, &type metadata for AFibBurdenPDFChartType, &type metadata for AFibBurdenPDFChartPage.Element);
}

uint64_t sub_29D8030B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *(*v2 + 424);
  v7 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v8 = sub_29D8032EC;
  }

  else
  {
    *(v4 + 448) = a1;
    v8 = sub_29D8031FC;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29D8031FC()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[35];
  v8 = sub_29D85502C(v0[56]);
  v10 = v9;
  v11 = v8;
  (*(v4 + 8))(v2, v3);
  sub_29D69417C(v0 + 20);
  sub_29D69417C(v0 + 15);
  *v7 = v10;
  v7[1] = v11;

  v12 = v0[1];

  return v12();
}

uint64_t sub_29D8032EC()
{
  v1 = v0[51];
  v2 = v0[47];
  v3 = v0[44];
  (*(v0[49] + 8))(v0[52], v0[48]);
  sub_29D69417C(v0 + 20);
  sub_29D69417C(v0 + 15);

  v4 = v0[1];
  v5 = v0[55];

  return v4();
}

uint64_t sub_29D8033A4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 168) = a6;
  *(v7 + 176) = a7;
  *(v7 + 152) = a4;
  *(v7 + 160) = a5;
  *(v7 + 136) = a1;
  *(v7 + 144) = a3;
  v9 = type metadata accessor for AFibBurdenPDFChartHeaderContentProvider();
  *(v7 + 184) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v11 = sub_29D9331D8();
  *(v7 + 208) = v11;
  v12 = *(v11 - 8);
  *(v7 + 216) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  v14 = type metadata accessor for AFibBurdenPDFChartViewModel();
  *(v7 + 232) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 288) = *a2;

  return MEMORY[0x2A1C73D48](sub_29D8034E4, 0, 0);
}

uint64_t sub_29D8034E4()
{
  v1 = **(v0 + 144);
  v2 = sub_29D8A4E50(v1, *(v0 + 288));
  *(v0 + 248) = v2;
  v3 = sub_29D8A50D4(v2, v1, *(v0 + 288));
  *(v0 + 256) = v3;
  v4 = v3;
  LOBYTE(v1) = *(v0 + 288);
  sub_29D693E2C(*(v0 + 152), *(*(v0 + 152) + 24));
  sub_29D8876EC(v1, (v0 + 16));
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_29D693E2C((v0 + 16), v5);
  v7 = *(v6 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_29D8036E4;
  v10 = *(v0 + 160);

  return v12(v10, v4, v5, v6);
}

uint64_t sub_29D8036E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = sub_29D803DF4;
  }

  else
  {
    *(v4 + 280) = a1;
    v7 = sub_29D80380C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D80380C()
{
  v59 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v49 = *(v0 + 288);
  v56 = v49 != 2;
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v50 = *(v0 + 200);
  v51 = *(v0 + 192);
  v48 = *(v0 + 184);
  v53 = *(v0 + 176);
  v54 = *(v0 + 256);
  v52 = *(v0 + 168);
  v47 = *(v0 + 144);
  v8 = *(v5 + 16);
  v8(v6, *(v0 + 160), v7);
  v8(v4, v6, v7);
  *(v4 + v3[5]) = v1;
  *(v4 + v3[6]) = v54;
  *(v4 + v3[7]) = v2;
  v9 = v2;
  v10 = sub_29D935E88();
  v11 = sub_29D8F4700(v10, v9, v6);
  v46 = v12;
  v14 = v13;
  v55 = v9;

  (*(v5 + 8))(v6, v7);
  v15 = (v4 + v3[8]);
  *v15 = v11;
  v15[1] = v46;
  v15[2] = v14;
  v16 = *(v47 + 8);
  sub_29D804114(v4, &v50[*(v48 + 20)], type metadata accessor for AFibBurdenPDFChartViewModel);
  *v50 = v49;
  sub_29D804114(v50, v51, type metadata accessor for AFibBurdenPDFChartHeaderContentProvider);
  v17 = v16;
  sub_29D825AC8(v51, v57);
  v18 = sub_29D693E2C(v52, v52[3]);
  sub_29D8043A8(0, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
  v20 = v19;
  *(v0 + 120) = v19;
  *(v0 + 128) = sub_29D8045D0();
  v21 = sub_29D693F78((v0 + 96));
  (*(*(v20 - 8) + 16))(v21, v53, v20);
  if (((1 << v49) & 0x36) != 0)
  {
    v22 = *(v0 + 240);
    v23 = type metadata accessor for AFibBurdenPDFBarChart();
    *(v0 + 80) = v23;
    *(v0 + 88) = sub_29D80466C(&qword_2A17B57D0, type metadata accessor for AFibBurdenPDFBarChart);
    v24 = sub_29D693F78((v0 + 56));
    sub_29D804114(v22, v24 + v23[6], type metadata accessor for AFibBurdenPDFChartViewModel);
    sub_29D6D6E54(v0 + 96, v24 + v23[8]);
    *v24 = 0;
    *(v24 + 8) = 1;
    v24[2] = 0;
    *(v24 + 24) = 1;
LABEL_3:
    v25 = v24 + v23[7];
    *v25 = v55;
    v25[8] = v56;
    *(v25 + 2) = v17;
    goto LABEL_4;
  }

  if (v49)
  {
    v45 = *(v0 + 240);
    v23 = type metadata accessor for AFibBurdenPDFLineChart();
    *(v0 + 80) = v23;
    *(v0 + 88) = sub_29D80466C(&qword_2A17B57E0, type metadata accessor for AFibBurdenPDFLineChart);
    v24 = sub_29D693F78((v0 + 56));
    sub_29D804114(v45, v24 + v23[6], type metadata accessor for AFibBurdenPDFChartViewModel);
    sub_29D6D6E54(v0 + 96, v24 + v23[8]);
    *v24 = 0;
    *(v24 + 8) = 1;
    v24[2] = 0;
    *(v24 + 24) = 1;
    goto LABEL_3;
  }

  v39 = *(v0 + 240);
  v40 = *v18;
  v41 = type metadata accessor for AFibBurdenPDFAFibChart();
  *(v0 + 80) = v41;
  *(v0 + 88) = sub_29D80466C(&qword_2A17B57E8, type metadata accessor for AFibBurdenPDFAFibChart);
  v42 = sub_29D693F78((v0 + 56));
  sub_29D804114(v39, v42 + v41[6], type metadata accessor for AFibBurdenPDFChartViewModel);
  sub_29D6D6E54(v0 + 96, v42 + v41[8]);
  *v42 = 0;
  *(v42 + 8) = 1;
  v42[2] = 0;
  *(v42 + 24) = 1;
  v43 = v42 + v41[7];
  *v43 = v55;
  v43[8] = v56;
  *(v43 + 2) = v17;
  *(v42 + v41[9]) = v40;
  v44 = v40;
LABEL_4:
  v26 = *(v0 + 288);
  v27 = *(v0 + 240);
  v28 = *(v0 + 224);
  v29 = *(v0 + 192);
  v30 = *(v0 + 200);
  v31 = *(v0 + 136);
  v32 = *(v0 + 248);
  v33 = v17;
  sub_29D8046B4(v0 + 96);
  if (v26)
  {
    v34 = 80.0;
  }

  else
  {
    v34 = 139.0;
  }

  sub_29D6945AC(v0 + 56, v31 + 40);
  *(v31 + 24) = &type metadata for AFibBurdenPDFChartCurrentValueView;
  *(v31 + 32) = sub_29D804708();
  v35 = swift_allocObject();
  *v31 = v35;
  *(v35 + 48) = v58;
  v36 = v57[1];
  *(v35 + 16) = v57[0];
  *(v35 + 32) = v36;

  sub_29D804348(v30, type metadata accessor for AFibBurdenPDFChartHeaderContentProvider);
  sub_29D804348(v27, type metadata accessor for AFibBurdenPDFChartViewModel);
  sub_29D69417C((v0 + 56));
  *(v31 + 80) = v34;
  sub_29D69417C((v0 + 16));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_29D803DF4()
{
  v1 = *(v0 + 248);

  sub_29D69417C((v0 + 16));
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D803E94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D801498(a1);
}

uint64_t sub_29D803F2C(uint64_t a1, uint64_t a2)
{
  sub_29D803FAC(0, &qword_2A17B57B8, sub_29D804000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D803FAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D804000()
{
  result = qword_2A17B3CA8;
  if (!qword_2A17B3CA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B3CA8);
  }

  return result;
}

uint64_t sub_29D804064(uint64_t a1)
{
  sub_29D803FAC(0, &qword_2A17B57B8, sub_29D804000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D804114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D80417C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8041E4(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory() - 8);
  v8 = (*(v7 + 80) + 120) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v2 + v9);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_29D6AC948;

  return sub_29D802BFC(a1, a2, v2 + 16, v2 + v8, v12, v2 + v11);
}

uint64_t sub_29D804348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8043A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D804428(uint64_t a1, _BYTE *a2)
{
  v5 = v3;
  v7 = *(sub_29D9331D8() - 8);
  v8 = (*(v7 + 80) + 160) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_29D8043A8(0, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
  v11 = (v9 + *(*(v10 - 8) + 80) + 40) & ~*(*(v10 - 8) + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_29D6C383C;

  return sub_29D8033A4(a1, a2, v2 + 16, v2 + 120, v2 + v8, v2 + v9, v2 + v11);
}

unint64_t sub_29D8045D0()
{
  result = qword_2A17B57C8;
  if (!qword_2A17B57C8)
  {
    sub_29D8043A8(255, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B57C8);
  }

  return result;
}

uint64_t sub_29D80466C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D804708()
{
  result = qword_2A17B57D8;
  if (!qword_2A17B57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B57D8);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenPromotionTileActionHandler()
{
  result = qword_2A17B57F8;
  if (!qword_2A17B57F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8047F4()
{
  v1 = qword_2A17B57F0;
  if (*(v0 + qword_2A17B57F0))
  {
    v2 = *(v0 + qword_2A17B57F0);
  }

  else
  {
    v2 = sub_29D80485C();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_29D80485C()
{
  v0 = sub_29D936638();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  (*(v1 + 8))(v5, v0);
  sub_29D693E2C(v14, v14[3]);
  sub_29D936588();
  type metadata accessor for AFibBurdenSettingsManager();
  v6 = swift_allocObject();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v7 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v7 = MEMORY[0x29EDCA1A0];
  }

  *(v6 + 24) = v7;
  v8 = *MEMORY[0x29EDC5170];
  sub_29D939D68();
  v9 = sub_29D934408();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v6 + 16) = sub_29D9343C8();
  sub_29D69417C(v14);
  return v6;
}

uint64_t sub_29D804A04()
{
  v1 = v0;
  swift_getObjectType();
  v110 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v2 = *(*(v110 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v110, v3);
  v111 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v120 = &v104 - v7;
  v8 = sub_29D936638();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v104 - v17;
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v104 - v20;
  v22 = sub_29D9350C8();
  v116 = *(v22 - 8);
  v117 = v22;
  v23 = *(v116 + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  v27 = *(v9 + 8);
  v115 = v21;
  v118 = v9 + 8;
  v119 = v8;
  v113 = v27;
  v27(v21, v8);
  sub_29D693E2C(v131, v132);
  v114 = v26;
  sub_29D936598();
  sub_29D69417C(v131);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v28 = sub_29D937898();
  sub_29D69C6C0(v28, qword_2A1A2C008);
  v29 = sub_29D937878();
  v30 = sub_29D93A2A8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v131[0] = v32;
    *v31 = 136446466;
    v33 = sub_29D93AF08();
    v35 = sub_29D6C2364(v33, v34, v131);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_29D6C2364(0x2928706154646964, 0xE800000000000000, v131);
    _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s.%{public}s]: Presenting onboarding", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v32, -1, -1);
    MEMORY[0x29ED6BE30](v31, -1, -1);
  }

  v36 = v115;
  sub_29D936B88();
  sub_29D936608();
  v37 = v36;
  v38 = v119;
  v39 = v113;
  v113(v37, v119);
  sub_29D693E2C(v131, v132);
  v112 = sub_29D936588();
  sub_29D936B88();
  v40 = sub_29D936618();
  v39(v18, v38);
  sub_29D93A388();

  sub_29D936B88();
  sub_29D936608();
  v39(v14, v38);
  sub_29D693E2C(v129, v129[3]);
  sub_29D9365A8();
  v41 = v116;
  v42 = v114;
  v43 = v117;
  (*(v116 + 16))(v120, v114);
  swift_storeEnumTagMultiPayload();
  sub_29D805B00(0, &qword_2A17B2E10, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v44 = *(v41 + 72);
  v45 = v41;
  v46 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_29D943EA0;
  v48 = v47 + v46;
  v49 = *MEMORY[0x29EDC1D20];
  v110 = v1;
  v50 = *(v45 + 104);
  v50(v48, v49, v43);
  v50(v48 + v44, *MEMORY[0x29EDC1D68], v43);
  v50(v48 + 2 * v44, *MEMORY[0x29EDC1D80], v43);
  LOBYTE(v44) = sub_29D719D0C(v42, v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v51 = type metadata accessor for AFibBurdenOnboardingController();
  v52 = objc_allocWithZone(v51);
  *&v52[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
  v52[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = v44 & 1;
  v127.receiver = v52;
  v127.super_class = v51;
  v109 = objc_msgSendSuper2(&v127, sel_initWithNibName_bundle_, 0, 0);
  [v109 setModalPresentationStyle_];
  v53 = *MEMORY[0x29EDBA6B0];
  v54 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v55 = v112;
  v56 = [v54 initWithFeatureIdentifier:v53 healthStore:v112];
  v57 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F8] healthStore:v55];
  v58 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  v59 = v56;
  v107 = v59;
  v60 = [v58 initWithFeatureIdentifier:v53 healthStore:v55];
  sub_29D6945AC(v128, &v124);
  v108 = v57;
  v61 = sub_29D71B714(v59, v60, v108, &v124);
  v106 = v61;

  sub_29D6945AC(v130, &v124);
  sub_29D6945AC(v128, &v121);
  type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
  v62 = swift_allocObject();
  sub_29D679D3C(&v124, v62 + 16);
  sub_29D679D3C(&v121, v62 + 64);
  *(v62 + 56) = 2;
  v63 = sub_29D933F18();

  v64 = sub_29D933F08();
  v65 = type metadata accessor for AFibBurdenOnboardingFlowManager();
  v125 = v65;
  v126 = &off_2A244DAB0;
  *&v124 = v61;
  v122 = v63;
  v123 = &off_2A24417F8;
  *&v121 = v64;
  v66 = type metadata accessor for AFibBurdenOnboardingModel();
  v67 = swift_allocObject();
  v68 = sub_29D693DDC(&v124, v65);
  v105 = &v104;
  v69 = *(*(v65 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v68, v68);
  v71 = (&v104 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = v122;
  v74 = sub_29D693DDC(&v121, v122);
  v75 = *(*(v73 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v74, v74);
  v77 = (&v104 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = *v71;
  v80 = *v77;
  v67[5] = v65;
  v67[6] = &off_2A244DAB0;
  v67[2] = v79;
  v67[10] = v63;
  v67[11] = &off_2A24417F8;
  v67[7] = v80;
  sub_29D69417C(&v121);
  sub_29D69417C(&v124);
  v81 = v111;
  sub_29D71B998(v120, v111);

  v82 = HKHRAFibBurdenLogForCategory();
  v83 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
  v84 = v112;
  v85 = [v83 initWithLoggingCategory:v82 healthDataSource:v112];

  v125 = v66;
  v126 = &off_2A2441928;
  *&v124 = v67;
  v86 = type metadata accessor for AFibBurdenOnboardingCoordinator();
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  v89 = swift_allocObject();
  v90 = sub_29D693DDC(&v124, v66);
  v105 = &v104;
  v91 = *(*(v66 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v90, v90);
  v93 = (&v104 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93);
  v95 = *v93;
  v122 = v66;
  v123 = &off_2A2441928;
  *&v121 = v95;
  *(v89 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
  v96 = v89 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  *(v89 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D6945AC(&v121, v89 + 16);
  sub_29D71B998(v81, v89 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
  *(v96 + 8) = &off_2A24497D8;
  v97 = v109;
  swift_unknownObjectWeakAssign();

  *(v89 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v62;
  *(v89 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v84;
  *(v89 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v85;

  v98 = v84;
  v99 = v85;
  sub_29D862C98();

  sub_29D71B9FC(v81);
  sub_29D69417C(&v121);
  sub_29D69417C(&v124);

  sub_29D71B9FC(v120);
  sub_29D69417C(v128);
  sub_29D69417C(v130);
  v100 = *&v97[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator];
  *&v97[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v89;

  sub_29D69417C(v129);
  sub_29D69417C(v131);
  v101 = v115;
  sub_29D936B88();
  v102 = sub_29D936618();
  v113(v101, v119);
  [v102 presentViewController:v97 animated:1 completion:0];

  return (*(v116 + 8))(v114, v117);
}

uint64_t sub_29D805628(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  *&v9[qword_2A17B57F0] = 0;
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D805744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenPromotionTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D805798()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6944706154646964, 0xEF29287373696D73);
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D965250);
  return 91;
}

uint64_t sub_29D805864()
{
  ObjectType = swift_getObjectType();
  sub_29D805B00(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = v9 - v4;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v6, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v9[1] = 0;
  sub_29D9371C8();

  sub_29D8047F4();
  sub_29D9339E8();
  v7 = sub_29D9339F8();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  sub_29D8B0134(v5);

  return sub_29D6A0D34(v5);
}

uint64_t sub_29D805AB0(unint64_t *a1, void (*a2)(uint64_t))
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