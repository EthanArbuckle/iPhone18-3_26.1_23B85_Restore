unint64_t sub_29D75BF64()
{
  result = qword_2A17B3C70;
  if (!qword_2A17B3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3C70);
  }

  return result;
}

void sub_29D75BFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D75C028()
{
  if (!qword_2A17B3C88)
  {
    sub_29D75C0AC(255, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9A40]);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3C88);
    }
  }
}

void sub_29D75C0AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_29D75C114()
{
  result = qword_2A17B3C90;
  if (!qword_2A17B3C90)
  {
    sub_29D75BFC4(255, &qword_2A17B3C80, sub_29D75C028, MEMORY[0x29EDC16E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3C90);
  }

  return result;
}

unint64_t sub_29D75C1AC()
{
  result = qword_2A17B3C98;
  if (!qword_2A17B3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3C98);
  }

  return result;
}

uint64_t sub_29D75C200(uint64_t a1, uint64_t a2)
{
  sub_29D75C0AC(0, &qword_2A17B3CB0, &qword_2A17B3CB8, &protocol descriptor for AFibBurdenPDFHistogramRenderableFactoryProxy, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D75C290(uint64_t a1)
{
  sub_29D75C0AC(0, &qword_2A17B3CB0, &qword_2A17B3CB8, &protocol descriptor for AFibBurdenPDFHistogramRenderableFactoryProxy, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D75C318(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29D75C360()
{
  if (!qword_2A17B3CC8)
  {
    sub_29D75C0AC(255, &qword_2A17B3CD0, &qword_2A17B3CD8, MEMORY[0x29EDC2038], MEMORY[0x29EDC9A40]);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3CC8);
    }
  }
}

uint64_t sub_29D75C3F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D75C434()
{
  v1 = sub_29D9360A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  sub_29D936098();
  sub_29D936088();
  sub_29D75A518();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93DDB0;
  type metadata accessor for AFibBurdenChartSection();
  *(v8 + 56) = sub_29D935DA8();
  *(v8 + 64) = sub_29D75C5F4(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
  v9 = sub_29D693F78((v8 + 32));
  sub_29D7B2CDC(v9);
  sub_29D6E2D58();
  swift_getOpaqueTypeConformance2();
  v10 = sub_29D9355F8();
  sub_29D936978();

  (*(v2 + 8))(v6, v1);
  return v10;
}

uint64_t sub_29D75C5F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D75C63C()
{
  if (!qword_2A17B3CE8)
  {
    sub_29D6E2D58();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29D935E48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3CE8);
    }
  }
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingCompletionViewController()
{
  result = qword_2A17B3D10;
  if (!qword_2A17B3D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D75C774(unint64_t a1)
{
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v19[-v13];
  if (a1 > 1)
  {
    return 0;
  }

  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A2BE98;
  (*(v6 + 16))(v11, v14, v5);
  sub_29D935E88();
  v16 = v15;
  sub_29D933A98();
  v17 = sub_29D939D98();
  (*(v6 + 8))(v14, v5);
  return v17;
}

uint64_t sub_29D75C9AC(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_29D933AA8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v35 - v14;
  v16 = (v1 + qword_2A17B3CF0);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + qword_2A17B3D00) = 0;
  *(v1 + qword_2A17B3CF8) = a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29D9383C8();

  if (v39)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v27 = sub_29D937898();
    sub_29D69C6C0(v27, qword_2A1A2BF10);
    v28 = sub_29D937878();
    v29 = sub_29D93A288();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      v32 = sub_29D93AF08();
      v34 = sub_29D6C2364(v32, v33, &v38);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_29D677000, v28, v29, "[%s] Journal type must be selected.", v30, 0xCu);
      sub_29D69417C(v31);
      MEMORY[0x29ED6BE30](v31, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {
    v36 = v6;
    v37 = a1;
    v17 = v38;
    *(v1 + qword_2A17B3D08) = v38;
    objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingEmptyViewController());
    v18 = sub_29D935F88();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_29D935F98();
    v35 = sub_29D936D88();
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v21 = qword_2A1A2BE98;
    v22 = v36;
    (*(v7 + 16))(v12, v15, v36);
    sub_29D935E88();
    v23 = v21;
    sub_29D933A98();
    sub_29D939D98();
    (*(v7 + 8))(v15, v22);
    sub_29D75C774(v17);
    sub_29D74081C();
    v24 = sub_29D936A98();
    v25 = [v24 navigationItem];
    [v25 setRightBarButtonItem_];

    return v24;
  }

  return result;
}

void sub_29D75CE54()
{
  v1 = sub_29D933AA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for BloodPressureJournalOnboardingCompletionViewController();
  v39.receiver = v0;
  v39.super_class = v14;
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v37 = v0;
  v15 = qword_2A1A2BE98;
  v16 = unk_2A1A2BEA0;
  v34 = v5[2];
  v34(v10, v13, v4);
  sub_29D935E88();
  v32 = v15;
  sub_29D933A98();
  v35 = v16;
  v36 = v15;
  sub_29D939D98();
  v17 = v5[1];
  v31 = v5 + 1;
  v33 = v17;
  v17(v13, v4);
  v18 = sub_29D939D28();

  v38 = &unk_2A243D870;
  sub_29D88BBC8(&unk_2A243D8A0);
  v19 = sub_29D939F18();
  v20 = HKUIJoinStringsForAutomationIdentifier();

  v30 = v4;
  if (v20)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v21 = sub_29D939D28();

    v22 = v37;

    sub_29D939D08();
    v23 = v30;
    v34(v10, v13, v30);
    sub_29D935E88();
    v24 = v32;
    sub_29D933A98();
    sub_29D939D98();
    v33(v13, v23);
    v25 = sub_29D939D28();

    v38 = &unk_2A243D870;
    sub_29D88BBC8(&unk_2A243D8E0);
    v26 = sub_29D939F18();
    v27 = HKUIJoinStringsForAutomationIdentifier();

    if (v27)
    {
      sub_29D939D68();

      swift_arrayDestroy();
      v28 = sub_29D939D28();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29D75D2EC(void *a1)
{
  v1 = a1;
  sub_29D75CE54();
}

void sub_29D75D334(void *a1)
{
  v1 = a1;
  sub_29D75D388(0, 11, 5);
}

uint64_t sub_29D75D388(char a1, char a2, char a3)
{
  v7 = v3;
  sub_29D6A08F8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_2A17B3D00] = a1;
  v13 = *&v3[qword_2A17B3CF8];
  sub_29D7B7874(7, a2);
  sub_29D7B64C8();
  v14 = sub_29D9339F8();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_29D8D1130(0, a3, 2, v12, 2, 2);

  result = sub_29D6A0D34(v12);
  v16 = *&v7[qword_2A17B3CF0];
  if (v16)
  {
    v17 = *&v7[qword_2A17B3CF0];
    swift_unknownObjectRetain();
    sub_29D8BA57C(v7, v16);
    return sub_29D936978();
  }

  return result;
}

void sub_29D75D4D0(void *a1)
{
  v1 = a1;
  sub_29D75D388(1, 10, 4);
}

uint64_t sub_29D75D554()
{
  v1 = *(v0 + qword_2A17B3CF0);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B3CF8);
}

id sub_29D75D594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingCompletionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D75D5CC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B3CF0);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B3CF8);
}

uint64_t sub_29D75D620(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B3CF0);
  v4 = *(v2 + qword_2A17B3CF0);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D75D69C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D9369F8();
  v5 = [v4 fetchedObjects];

  if (v5 && ((sub_29D934528(), v6 = sub_29D939F38(), v5, v6 >> 62) ? (v7 = sub_29D93A928()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v7 > 0))
  {
    v8 = MEMORY[0x29EDC1FF8];
  }

  else
  {
    v8 = MEMORY[0x29EDC2000];
  }

  v9 = *v8;
  v10 = *(v2 + qword_2A17D0998);
  v11 = *(v2 + qword_2A17D0998 + 8);
  v12 = sub_29D935508();
  v13 = *(*(v12 - 8) + 104);

  return v13(a1, v9, v12);
}

uint64_t sub_29D75D7B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v31 = a4;
  v35 = a1;
  v36 = a2;
  v6 = *v4;
  v32 = a3;
  v33 = v6;
  v7 = *(v6 + qword_2A17D0998 + 8);
  v34 = *(v6 + qword_2A17D0998);
  v8 = sub_29D935508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v30[-v16];
  sub_29D935518();
  v18 = *(*v4 + qword_2A17D0998 + 16);
  v19 = *(v4 + v18);
  v20 = sub_29D936A08();
  v22 = v21;

  if (v20 == v35 && v22 == v36)
  {

    goto LABEL_8;
  }

  v24 = sub_29D93AD78();

  if (v24)
  {
LABEL_8:
    v25 = *(v5 + v18);
    sub_29D75D69C(v14);

    sub_29D935528();
  }

  sub_29D935518();
  v26 = sub_29D9354F8();
  v27 = *(v9 + 8);
  v27(v14, v8);
  if (v26)
  {
    sub_29D935548();
    v28 = sub_29D935558();
    v28(v35, v36, v32, v31 & 1);
  }

  return (v27)(v17, v8);
}

uint64_t sub_29D75DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_29D75DD24();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D939D68();
  v15 = v14;
  sub_29D937BA8();

  sub_29D75D7B8(v13, v15, v12, a5);

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_29D75DBA4()
{
  v1 = *(v0 + *(*v0 + qword_2A17D0998 + 24));
}

void *sub_29D75DC40()
{
  v0 = sub_29D935568();

  v1 = *(v0 + *(*v0 + qword_2A17D0998 + 24));

  return v0;
}

uint64_t sub_29D75DCDC()
{
  sub_29D75DC40();

  return swift_deallocClassInstance();
}

void sub_29D75DD24()
{
  if (!qword_2A17B3DA0)
  {
    v0 = sub_29D937BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3DA0);
    }
  }
}

uint64_t sub_29D75DDEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29D936378();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v52[-v15];
  v17 = sub_29D937898();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_29D936368();
  result = 0;
  if ((v23 & 0xFE) != 2)
  {
    v56 = a4;
    v57 = v18;
    v25 = objc_opt_self();
    v26 = sub_29D936338();
    v27 = [v25 sharedInstanceForHealthStore_];

    if (v27)
    {
      v28 = [v27 displayTypeForObjectType_];
      if (v28)
      {
        v29 = v28;
        v30 = objc_opt_self();
        v31 = sub_29D936338();
        v32 = [v30 sharedInstanceForHealthStore_];

        v33 = [v32 createHKUnitPreferenceController];
        v34 = sub_29D936338();
        v35 = type metadata accessor for BloodPressureClassificationDataManagementDataSource();
        v36 = *(v35 + 48);
        v37 = *(v35 + 52);
        swift_allocObject();
        v38 = sub_29D70E474(v29, v33, v34, 3);

        return v38;
      }
    }

    v55 = v17;
    sub_29D937818();
    v39 = v8;
    v54 = *(v8 + 16);
    v54(v16, a1, v7);
    v40 = a2;
    sub_29D935E88();
    v41 = sub_29D937878();
    v42 = sub_29D93A288();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53 = v42;
      v45 = v44;
      v56 = swift_slowAlloc();
      v58 = v56;
      *v43 = 136315650;
      *(v43 + 4) = sub_29D6C2364(0xD000000000000032, 0x800000029D9462B0, &v58);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v45 = v40;
      *(v43 + 22) = 2080;
      v54(v13, v16, v7);
      v46 = v40;
      v47 = sub_29D939DA8();
      v49 = v48;
      (*(v39 + 8))(v16, v7);
      v50 = sub_29D6C2364(v47, v49, &v58);

      *(v43 + 24) = v50;
      _os_log_impl(&dword_29D677000, v41, v53, "[%s]: Unable to create display type controller for %@ in context: %s", v43, 0x20u);
      sub_29D6ACA3C(v45);
      MEMORY[0x29ED6BE30](v45, -1, -1);
      v51 = v56;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v51, -1, -1);
      MEMORY[0x29ED6BE30](v43, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v16, v7);
    }

    (*(v57 + 8))(v22, v55);
    return 0;
  }

  return result;
}

uint64_t sub_29D75E294(uint64_t a1)
{
  if (sub_29D75DDEC(a1, *v1, *(v1 + 8), *(v1 + 16)))
  {
    type metadata accessor for BloodPressureClassificationDataManagementDataSource();
    sub_29D935438();
    sub_29D9353F8();
    sub_29D935428();
  }

  else
  {
    type metadata accessor for BloodPressureClassificationDataManagementDataSource();
    sub_29D935428();
  }

  sub_29D75E390();
  sub_29D75E414();

  v2 = sub_29D9353F8();

  return v2;
}

void sub_29D75E390()
{
  if (!qword_2A17B3DA8)
  {
    type metadata accessor for BloodPressureClassificationDataManagementDataSource();
    sub_29D935248();
    v0 = sub_29D935C38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3DA8);
    }
  }
}

unint64_t sub_29D75E414()
{
  result = qword_2A17B3DB0;
  if (!qword_2A17B3DB0)
  {
    sub_29D75E390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DB0);
  }

  return result;
}

uint64_t sub_29D75E46C@<X0>(uint64_t *a1@<X8>)
{
  v46 = type metadata accessor for BloodPressurePDFSampleInterval();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v46, v5);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v45 = &v43 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = &v43 - v13;
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v43 - v16;
  result = type metadata accessor for BloodPressurePDFViewModel(0);
  v19 = *(v1 + *(result + 36));
  v20 = *(v19 + 16);
  if (v20)
  {
    v43 = v1;
    v44 = a1;
    v21 = 0;
    v22 = MEMORY[0x29EDCA190];
    v23 = v46;
    v47 = v20;
    v48 = v14;
    do
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v25 = *(v3 + 72);
      sub_29D75E868(v19 + v24 + v25 * v21, v17);
      if (v17[*(v23 + 24)] == 1)
      {
        sub_29D75E928(v17, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D7EE660(0, *(v22 + 16) + 1, 1);
          v23 = v46;
          v22 = v50;
        }

        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_29D7EE660(v27 > 1, v28 + 1, 1);
          v23 = v46;
          v22 = v50;
        }

        *(v22 + 16) = v28 + 1;
        v14 = v48;
        result = sub_29D75E928(v48, v22 + v24 + v28 * v25);
        v20 = v47;
      }

      else
      {
        result = sub_29D75E8CC(v17);
      }

      ++v21;
    }

    while (v20 != v21);
    v29 = *(v19 + 16);
    if (v29)
    {
      v30 = 0;
      v48 = v19;
      v31 = v19 + v24;
      v32 = MEMORY[0x29EDCA190];
      v33 = v45;
      while (v30 < *(v48 + 2))
      {
        sub_29D75E868(v31, v33);
        if (*(v33 + *(v23 + 24)) == 2)
        {
          sub_29D75E928(v33, v49);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v32;
          if ((v34 & 1) == 0)
          {
            sub_29D7EE660(0, *(v32 + 16) + 1, 1);
            v23 = v46;
            v32 = v50;
          }

          v36 = *(v32 + 16);
          v35 = *(v32 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_29D7EE660(v35 > 1, v36 + 1, 1);
            v23 = v46;
            v32 = v50;
          }

          *(v32 + 16) = v36 + 1;
          result = sub_29D75E928(v49, v32 + v24 + v36 * v25);
          v33 = v45;
        }

        else
        {
          result = sub_29D75E8CC(v33);
        }

        ++v30;
        v31 += v25;
        if (v29 == v30)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v32 = MEMORY[0x29EDCA190];
LABEL_26:
    v1 = v43;
    a1 = v44;
    if (*(v22 + 16))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = MEMORY[0x29EDCA190];
    v32 = MEMORY[0x29EDCA190];
    if (*(MEMORY[0x29EDCA190] + 16))
    {
LABEL_27:
      v37 = 1;
      goto LABEL_28;
    }
  }

  v37 = *(v32 + 16) != 0;
LABEL_28:
  v38 = sub_29D75F128();
  v40 = MEMORY[0x2A1C7C4A8](v38, v39);
  *(&v43 - 4) = v1;
  *(&v43 - 24) = v37;
  *(&v43 - 23) = v40;
  *(&v43 - 2) = v22;
  *(&v43 - 1) = v32;
  v41 = sub_29D9370F8();
  v42 = MEMORY[0x29EDC2C70];
  a1[3] = v41;
  a1[4] = v42;
  sub_29D693F78(a1);
  sub_29D9370E8();
}

uint64_t sub_29D75E868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressurePDFSampleInterval();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D75E8CC(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressurePDFSampleInterval();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D75E928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressurePDFSampleInterval();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D75E98C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v82 = a4;
  v88 = a2;
  sub_29D75F1B4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v80 = v69 - v10;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v77 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v76 = v69 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v23 = v69 - v22;
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = v69 - v25;
  v27 = type metadata accessor for BloodPressurePDFViewModel(0);
  v28 = v12[2];
  v73 = v27[10];
  v28(v26, a1 + v73, v11);
  v72 = v27[8];
  v74 = v28;
  v28(v23, a1 + v72, v11);
  v29 = *(a1 + *(type metadata accessor for BloodPressurePDFChartSection() + 20));
  v30 = *(a1 + v27[22]);
  sub_29D935E88();
  sub_29D75F07C(v30);
  v86 = v31;
  v85 = v32;
  v75 = v27;
  sub_29D75F07C(*(a1 + v27[13]));
  v84 = v33;
  v83 = v34;
  v78 = a3;
  v35 = 0.0;
  if (a3)
  {
    v36 = 16.0;
  }

  else
  {
    v36 = 0.0;
  }

  v87 = ~v88;
  v37 = type metadata accessor for BloodPressurePDFChart();
  v90 = v37;
  v91 = sub_29D75F2B0(&qword_2A17B3DB8, type metadata accessor for BloodPressurePDFChart);
  v38 = sub_29D693F78(v89);
  v39 = v37[13];
  v40 = sub_29D9356C8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v71 = v40;
  v70 = v42;
  v69[1] = v41 + 56;
  (v42)(v38 + v39, 1, 1);
  v43 = v12[4];
  v43(v38, v26, v11);
  v44 = v38 + v37[5];
  v45 = v23;
  v46 = v11;
  v79 = v12 + 4;
  v43(v44, v45, v11);
  *(v38 + v37[6]) = v29;
  v47 = v38 + v37[7];
  *v47 = v86;
  v47[8] = v85 & 1;
  v48 = v38 + v37[8];
  *v48 = v84;
  v48[8] = v83 & 1;
  *(v38 + v37[9]) = (v88 & 1) == 0;
  *(v38 + v37[10]) = v36;
  v49 = v38 + v37[11];
  *v49 = 0x4080900000000000;
  v49[8] = 0;
  v50 = v38 + v37[12];
  *v50 = 0x406C200000000000;
  v50[8] = 0;
  *(v38 + v37[14]) = 0x404E000000000000;
  *(v38 + v37[15]) = 0x4061800000000000;
  *(v38 + v37[16]) = 0x4024000000000000;
  v51 = sub_29D935808();
  sub_29D69417C(v89);
  if (v87)
  {
    v65 = sub_29D9357F8();
  }

  else
  {
    v52 = v76;
    v53 = v46;
    v54 = v46;
    v55 = v74;
    v74(v76, a1 + v73, v54);
    v56 = v77;
    v55(v77, a1 + v72, v53);
    v57 = v80;
    sub_29D6A0A20(a1 + v75[18], v80);
    v58 = v78 & 1;
    if (v78)
    {
      v35 = -11.0;
    }

    v59 = type metadata accessor for BloodPressurePDFPregnancyChart();
    v90 = v59;
    v91 = sub_29D75F2B0(&qword_2A17B2128, type metadata accessor for BloodPressurePDFPregnancyChart);
    v60 = sub_29D693F78(v89);
    v70(v60 + v59[13], 1, 1, v71);
    v43(v60, v52, v53);
    v43((v60 + v59[5]), v56, v53);
    *(v60 + v59[6]) = v82;
    sub_29D6B1204(v57, v60 + v59[7]);
    *(v60 + v59[8]) = v81;
    *(v60 + v59[9]) = v58;
    *(v60 + v59[10]) = v35;
    v61 = v60 + v59[11];
    *v61 = 0x4080900000000000;
    v61[8] = 0;
    v62 = v60 + v59[12];
    *v62 = 0x4051800000000000;
    v62[8] = 0;
    sub_29D935E88();
    sub_29D935E88();
    v63 = sub_29D935808();
    sub_29D69417C(v89);
    sub_29D75F1B4(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_29D93DDB0;
    *(v64 + 32) = v63;
    MEMORY[0x29ED65BE0]();

    v65 = sub_29D9357F8();
  }

  sub_29D75F1B4(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_29D93F680;
  *(v66 + 32) = v51;
  *(v66 + 40) = v65;
  v67 = MEMORY[0x29ED65BE0]();

  return v67;
}

void sub_29D75F07C(void *a1)
{
  if (a1)
  {
    v1 = [a1 averageQuantity];
    if (v1)
    {
      v2 = v1;
      [v1 _value];
      v4 = v3;
      v5 = v3;

      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v4 > -9.22337204e18)
      {
        if (v4 < 9.22337204e18)
        {
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_9;
    }
  }
}

uint64_t type metadata accessor for BloodPressurePDFChartSection()
{
  result = qword_2A17B3DC0;
  if (!qword_2A17B3DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D75F1B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D75F24C()
{
  result = qword_2A17B1010;
  if (!qword_2A17B1010)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1010);
  }

  return result;
}

uint64_t sub_29D75F2B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D75F320()
{
  type metadata accessor for BloodPressurePDFViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_29D75F1B4(319, &qword_2A17B2D08, type metadata accessor for BloodPressureMinMaxCoordinate, MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D75F3D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v77 = a2;
  v2 = sub_29D9361F8();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7602C8(0, &qword_2A17B3DD0, MEMORY[0x29EDC2638]);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v79 = &v64 - v12;
  v13 = sub_29D936138();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D936388();
  v76 = *(v19 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936148();
  *(&v81 + 1) = &type metadata for BloodPressureJournalSetUpOrSummaryComponent;
  v82 = sub_29D760274();
  *&v80 = 0xD00000000000002BLL;
  *(&v80 + 1) = 0x800000029D95F350;
  LOBYTE(v81) = 0;
  sub_29D936198();
  v24 = v14[13];
  v71 = *MEMORY[0x29EDC2618];
  v24(v18);
  v78 = v19;
  sub_29D936BB8();

  v25 = v14[1];
  v25(v18, v13);
  sub_29D69417C(&v80);
  sub_29D9361C8();
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_29D936BC8();

  sub_29D760444(&v80, &qword_2A17B3DE0, sub_29D71C038);
  *(&v81 + 1) = &type metadata for BloodPressureJournalEducationComponent;
  v82 = sub_29D76031C();
  *&v80 = 0xD000000000000026;
  *(&v80 + 1) = 0x800000029D95F380;
  sub_29D936168();
  v26 = *MEMORY[0x29EDC2620];
  v73 = v14 + 13;
  v70 = v24;
  (v24)(v18, v26, v13);
  v27 = v78;
  sub_29D936BB8();

  v72 = v18;
  v74 = v14 + 1;
  v75 = v13;
  v69 = v25;
  v25(v18, v13);
  sub_29D69417C(&v80);
  sub_29D936188();
  *(&v81 + 1) = &_s50BloodPressureClassificationDataManagementComponentVN;
  v28 = sub_29D760370();
  *&v80 = v64;
  *(&v80 + 1) = 0xD000000000000032;
  v82 = v28;
  *&v81 = 0x800000029D95F3B0;
  v29 = v64;
  v30 = v27;
  sub_29D936BC8();

  sub_29D760444(&v80, &qword_2A17B3DE0, sub_29D71C038);
  v31 = sub_29D936158();
  v32 = v23;
  sub_29D75FF9C(v31, v33, &v80);

  if (*(&v81 + 1))
  {
    sub_29D71C038();
    v34 = v79;
    v35 = v66;
    v36 = swift_dynamicCast();
    v37 = v65;
    v38 = *(v65 + 56);
    v38(v34, v36 ^ 1u, 1, v35);
  }

  else
  {
    sub_29D760444(&v80, &qword_2A17B3DE0, sub_29D71C038);
    v37 = v65;
    v35 = v66;
    v38 = *(v65 + 56);
    v34 = v79;
    v38(v79, 1, 1, v66);
  }

  v39 = v67;
  sub_29D7603C4(v34, v67);
  if ((*(v37 + 48))(v39, 1, v35) == 1)
  {
    sub_29D760444(v39, &qword_2A17B3DD0, MEMORY[0x29EDC2638]);
    v40 = v32;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v41 = sub_29D937898();
    sub_29D69C6C0(v41, qword_2A1A2C008);
    v42 = sub_29D937878();
    v43 = sub_29D93A288();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v80 = v45;
      *v44 = 136446466;
      *(v44 + 4) = sub_29D6C2364(0xD000000000000030, 0x800000029D95F420, &v80);
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95F330, &v80);
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s.%{public}s]: Highlights not found. Cannot replace", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }
  }

  else
  {
    v46 = v37;
    (*(v37 + 32))(v68, v39, v35);
    v40 = v32;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v47 = sub_29D937898();
    sub_29D69C6C0(v47, qword_2A1A2C008);
    v48 = sub_29D937878();
    v49 = sub_29D93A2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v80 = v51;
      *v50 = 136446466;
      *(v50 + 4) = sub_29D6C2364(0xD000000000000030, 0x800000029D95F420, &v80);
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95F330, &v80);
      _os_log_impl(&dword_29D677000, v48, v49, "[%{public}s.%{public}s]: Replacing highlights with BloodPressureJournalHighlightsComponent", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v51, -1, -1);
      MEMORY[0x29ED6BE30](v50, -1, -1);
    }

    sub_29D936158();
    v52 = type metadata accessor for BloodPressureJournalHighlightsComponent();
    *(&v81 + 1) = v52;
    v82 = sub_29D7604F4();
    v53 = sub_29D693F78(&v80);
    v54 = *(v52 + 20);
    v55 = v68;
    (*(v46 + 16))(v53 + v54, v68, v35);
    v38(v53 + v54, 0, 1, v35);
    *v53 = 0xD00000000000001FLL;
    v53[1] = 0x800000029D95F460;
    v30 = v78;
    sub_29D936BC8();

    (*(v46 + 8))(v55, v35);
    sub_29D760444(&v80, &qword_2A17B3DE0, sub_29D71C038);
    v34 = v79;
  }

  *(&v81 + 1) = &type metadata for BloodPressureJournalExportPDFComponent;
  v82 = sub_29D7604A0();
  *&v80 = 0xD000000000000026;
  *(&v80 + 1) = 0x800000029D95F3F0;
  sub_29D936178();
  v56 = v72;
  v57 = v75;
  (v70)(v72, v71, v75);
  sub_29D936BB8();

  v69(v56, v57);
  sub_29D69417C(&v80);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v58 = sub_29D937898();
  sub_29D69C6C0(v58, qword_2A1A2C008);
  v59 = sub_29D937878();
  v60 = sub_29D93A268();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v80 = v62;
    *v61 = 136446466;
    *(v61 + 4) = sub_29D6C2364(0xD000000000000030, 0x800000029D95F420, &v80);
    *(v61 + 12) = 2082;
    *(v61 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95F330, &v80);
    _os_log_impl(&dword_29D677000, v59, v60, "[%{public}s.%{public}s]: Creating custom BP data type room", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v62, -1, -1);
    MEMORY[0x29ED6BE30](v61, -1, -1);
  }

  (*(v76 + 32))(v77, v40, v30);
  return sub_29D760444(v34, &qword_2A17B3DD0, MEMORY[0x29EDC2638]);
}

uint64_t sub_29D75FF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_29D9360C8();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = result + 32;
    while (v9 < *(v7 + 16))
    {
      sub_29D6945AC(v10, v14);
      sub_29D693E2C(v14, v14[3]);
      if (sub_29D935C98() == a1 && v11 == a2)
      {

LABEL_12:

        sub_29D6945AC(v14, a3);
        return sub_29D69417C(v14);
      }

      v13 = sub_29D93AD78();

      if (v13)
      {
        goto LABEL_12;
      }

      ++v9;
      result = sub_29D69417C(v14);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_29D7600D0()
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A1A2C008);
  v1 = sub_29D937878();
  v2 = sub_29D93A268();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446466;
    *(v3 + 4) = sub_29D6C2364(0xD000000000000037, 0x800000029D95F2F0, &v6);
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95F330, &v6);
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s.%{public}s]: Creating BP data type room for sharing", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  return sub_29D936148();
}

unint64_t sub_29D760274()
{
  result = qword_2A17B3DD8;
  if (!qword_2A17B3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DD8);
  }

  return result;
}

void sub_29D7602C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_29D76031C()
{
  result = qword_2A17B3DE8;
  if (!qword_2A17B3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DE8);
  }

  return result;
}

unint64_t sub_29D760370()
{
  result = qword_2A17B3DF0;
  if (!qword_2A17B3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DF0);
  }

  return result;
}

uint64_t sub_29D7603C4(uint64_t a1, uint64_t a2)
{
  sub_29D7602C8(0, &qword_2A17B3DD0, MEMORY[0x29EDC2638]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D760444(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D7602C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D7604A0()
{
  result = qword_2A17B3DF8;
  if (!qword_2A17B3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DF8);
  }

  return result;
}

unint64_t sub_29D7604F4()
{
  result = qword_2A17B3E00[0];
  if (!qword_2A17B3E00[0])
  {
    type metadata accessor for BloodPressureJournalHighlightsComponent();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A17B3E00);
  }

  return result;
}

void *sub_29D7605B8@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  sub_29D733A40();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BloodPressurePDFValidSamplesQuery();
  swift_allocObject();
  result = sub_29D760C04(a1, a2);
  if (result[4])
  {
    v15[1] = result[4];
    sub_29D761B34();
    sub_29D761CDC(0, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D761E80(&qword_2A17B3508, sub_29D761B34);

    sub_29D938468();

    sub_29D761E80(&qword_2A17B3510, sub_29D733A40);
    v14 = sub_29D938418();

    result = (*(v8 + 8))(v12, v7);
    *a3 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7607E0(void **a1)
{
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v26 - v10;
  v12 = *a1;
  if (*a1)
  {
    sub_29D937818();
    v13 = v12;
    v14 = sub_29D937878();
    v15 = sub_29D93A288();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v12;
      v27 = v17;
      *v16 = 136315138;
      v18 = v12;
      sub_29D6A0CD0();
      v19 = sub_29D939DA8();
      v21 = sub_29D6C2364(v19, v20, &v27);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_29D677000, v14, v15, "Encountered error in BloodPressurePDFValidSamplesQuery: %s", v16, 0xCu);
      sub_29D69417C(v17);
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);
    }

    return (*(v3 + 8))(v11, v2);
  }

  else
  {
    sub_29D937818();
    v23 = sub_29D937878();
    v24 = sub_29D93A2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_29D677000, v23, v24, "BloodPressurePDFValidSamplesQuery succeeded", v25, 2u);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_29D760A84()
{
  v1 = *(v0 + *(*v0 + qword_2A17D09A8 + 24));
}

void *sub_29D760B20()
{
  v0 = sub_29D935568();

  v1 = *(v0 + *(*v0 + qword_2A17D09A8 + 24));

  return v0;
}

uint64_t sub_29D760BBC()
{
  sub_29D760B20();

  return swift_deallocClassInstance();
}

void *sub_29D760C04(void *a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v43 = a1;
  v46 = *v2;
  v45 = sub_29D9331D8();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v45, v6);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v47 = &v40 - v9;
  v10 = sub_29D9339F8();
  v11 = *(v10 - 8);
  v12 = v11;
  v41 = v10;
  v42 = v11;
  v13 = *(v11 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v10, v14);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v19 = &v40 - v18;
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v40 - v21;
  v23 = sub_29D934708();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v2[3] = sub_29D9346F8();
  v2[4] = 0;
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v2[5] = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  v26 = v43;
  v2[2] = v43;
  v43 = v26;
  sub_29D702278();
  (*(v12 + 16))(v19, v22, v10);
  sub_29D9339E8();
  v27 = v47;
  sub_29D933188();
  v28 = v44;
  v29 = v45;
  (*(v4 + 16))(v44, v27, v45);
  v30 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v31 = (v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  (*(v4 + 32))(v33 + v30, v28, v29);
  *(v33 + v31) = v43;
  *(v33 + v32) = v40;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
  sub_29D761B34();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v37 = sub_29D938368();
  (*(v4 + 8))(v47, v29);
  (*(v42 + 8))(v22, v41);
  v38 = v3[4];
  v3[4] = v37;

  return v3;
}

void sub_29D760FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a3 + 40);
  sub_29D69567C(0, &qword_2A17B3E88, 0x29EDBAD70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v15 = v13;
  v16 = sub_29D933148();
  v17 = [ObjCClassFromMetadata predicateForSamplesWithinDateInterval:v16 options:0];

  v18 = [objc_opt_self() sortDescriptorsForMostRecentSamples];
  sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
  sub_29D939F38();

  v19 = swift_allocObject();
  v19[2] = sub_29D761C88;
  v19[3] = v12;
  v19[4] = a3;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  v20 = objc_allocWithZone(MEMORY[0x29EDBAD70]);

  v21 = a5;
  v22 = a6;
  v23 = sub_29D939F18();

  aBlock[4] = sub_29D761C94;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D733900;
  aBlock[3] = &unk_2A2444398;
  v24 = _Block_copy(aBlock);
  v25 = [v20 initWithSampleType:v15 predicate:v17 limit:0 sortDescriptors:v23 resultsHandler:v24];

  _Block_release(v24);

  [v21 executeQuery_];
}

void sub_29D761208(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t), uint64_t a9)
{
  v67 = a8;
  v69 = a9;
  v70 = a6;
  v13 = sub_29D937898();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D734058();
  v18 = v17;
  v66 = *(v17 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D761CDC(0, &qword_2A17B3530, MEMORY[0x29EDB8B08]);
  v24 = v23;
  v65 = *(v23 - 8);
  v25 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v63 - v27;
  sub_29D761D4C();
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v68 = v32;
    v36 = v33;
    v37 = swift_allocObject();
    v37[2] = a4;
    v37[3] = a5;
    v38 = v69;
    v37[4] = v70;
    v37[5] = v38;
    v72 = a2;
    sub_29D761CDC(0, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D7340F4();

    v39 = sub_29D939EA8();
    MEMORY[0x2A1C7C4A8](v39, v40);
    *(&v63 - 2) = v67;
    sub_29D9381A8();
    (*(v66 + 8))(v22, v18);
    sub_29D93A7D8();
    (*(v65 + 8))(v28, v24);
    v41 = swift_allocObject();
    *(v41 + 16) = sub_29D761E6C;
    *(v41 + 24) = v37;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_29D761E6C;
    *(v42 + 24) = v37;
    sub_29D761E80(&qword_2A17B3540, sub_29D761D4C);
    swift_retain_n();
    v43 = v68;
    v44 = sub_29D938478();

    (*(v36 + 8))(v35, v43);
    v72 = v44;
    v45 = *(v70 + 24);
    sub_29D938278();
    sub_29D938218();
  }

  else
  {
    v46 = v64;
    v67 = a4;
    v70 = a5;
    sub_29D937818();
    v47 = a3;
    v48 = sub_29D937878();
    v49 = sub_29D93A288();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v72 = v51;
      *v50 = 136446466;
      v52 = sub_29D93AF08();
      v54 = sub_29D6C2364(v52, v53, &v72);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      v71 = a3;
      v55 = a3;
      sub_29D761E14();
      v56 = sub_29D939DA8();
      v58 = sub_29D6C2364(v56, v57, &v72);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_29D677000, v48, v49, "[%{public}s]: Error fetching samples %{public}s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v51, -1, -1);
      MEMORY[0x29ED6BE30](v50, -1, -1);
    }

    (*(v46 + 8))(v68, v13);
    v59 = v67;
    v60 = a3;
    if (!a3)
    {
      sub_29D761DC0();
      v60 = swift_allocError();
      *v61 = 0;
    }

    v62 = a3;
    v59(v60, 1);
  }
}

void sub_29D761878(uint64_t a1, void *a2, void (*a3)(uint64_t, void))
{
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](a1, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    a3(v10, 0);
  }

  else
  {
    sub_29D937818();
    v13 = a2;
    v14 = sub_29D937878();
    v15 = sub_29D93A288();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v31 = a3;
      v17 = v16;
      v30 = swift_slowAlloc();
      v33 = v30;
      *v17 = 136446466;
      v18 = sub_29D93AF08();
      v20 = sub_29D6C2364(v18, v19, &v33);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v32 = a2;
      v21 = a2;
      sub_29D761E14();
      v22 = sub_29D939DA8();
      v24 = sub_29D6C2364(v22, v23, &v33);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s]: Error filtering samples %{public}s", v17, 0x16u);
      v25 = v30;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v25, -1, -1);
      v26 = v17;
      a3 = v31;
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v27 = a2;
    if (!a2)
    {
      sub_29D761DC0();
      v27 = swift_allocError();
      *v28 = 1;
    }

    v29 = a2;
    a3(v27, 1);
  }
}

void sub_29D761B34()
{
  if (!qword_2A17B3500)
  {
    sub_29D761CDC(255, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D6A0CD0();
    v0 = sub_29D938358();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3500);
    }
  }
}

void sub_29D761BC0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_29D9331D8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + 16);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D760FA4(a1, a2, v10, v2 + v6, v9, v11, v12);
}

uint64_t sub_29D761CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D761CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D761D4C()
{
  if (!qword_2A17B3538)
  {
    sub_29D761CDC(255, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    v0 = sub_29D93A7E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3538);
    }
  }
}

unint64_t sub_29D761DC0()
{
  result = qword_2A17B3E90;
  if (!qword_2A17B3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3E90);
  }

  return result;
}

void sub_29D761E14()
{
  if (!qword_2A17B7AF0)
  {
    sub_29D6A0CD0();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7AF0);
    }
  }
}

void sub_29D761E6C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  sub_29D761878(a1, a2, *(v2 + 16));
}

uint64_t sub_29D761E80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D761EDC()
{
  result = qword_2A17B3E98;
  if (!qword_2A17B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3E98);
  }

  return result;
}

id sub_29D761F30()
{
  v1 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = v0;
    v6 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_viewModel);
    sub_29D72D070();
    v8 = v7;
    [v4 setImage_];

    [v4 setContentMode_];
    v9 = *(v5 + v1);
    *(v5 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D76200C()
{
  v1 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_viewModel);
    v5 = v0;
    sub_29D72D448();
    v7 = v6;
    v9 = v8;
    v10 = sub_29D72D530();
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for TitleOptionalDetailsView());
    v14 = sub_29D7B9084(v7, v9, v10, v12);
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = *(v5 + v1);
    *(v5 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_29D7620D8()
{
  v1 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView);
  }

  else
  {
    v4 = sub_29D762138();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D762138()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = [v3 configurationWithFont_];

    sub_29D6A0C58();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29D941B10;
    sub_29D69567C(0, &qword_2A17B2CE8, 0x29EDC7A00);
    v6 = objc_opt_self();
    v7 = [v6 blackColor];
    v8 = [v6 whiteColor];
    v9 = sub_29D93A688();

    *(v5 + 32) = v9;
    v10 = [v6 quaternarySystemFillColor];
    v11 = [v6 tertiarySystemFillColor];
    v12 = sub_29D93A688();

    *(v5 + 40) = v12;
    v13 = sub_29D939F18();

    v14 = [v3 configurationWithPaletteColors_];

    v15 = [v4 configurationByApplyingConfiguration_];
    v16 = v15;
    v17 = sub_29D939D28();
    v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

    [v0 setImage_];
    v19 = [v6 secondaryLabelColor];
    [v0 setTintColor_];

    type metadata accessor for UILayoutPriority(0);
    sub_29D763438();
    sub_29D9378A8();
    LODWORD(v20) = v24;
    [v0 setContentCompressionResistancePriority:0 forAxis:v20];
    sub_29D9378A8();
    LODWORD(v21) = v24;
    [v0 setContentCompressionResistancePriority:1 forAxis:v21];
    sub_29D9378A8();
    LODWORD(v22) = v24;
    [v0 setContentHuggingPriority:0 forAxis:v22];
    sub_29D9378A8();
    LODWORD(v23) = v24;
    [v0 setContentHuggingPriority:1 forAxis:v23];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_29D762510(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_29D933CE8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView] = 0;
  v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_lifeFactor] = a1;
  v13 = a3;
  sub_29D933C88();
  v14 = type metadata accessor for AFibBurdenLifeFactorViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_viewModel] = sub_29D72CDE4(a1, a2, v13, v12, sub_29D68B82C, 0);
  v17 = type metadata accessor for AFibBurdenLifeFactorView();
  v26.receiver = v4;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = sub_29D761F30();
  [v18 addSubview_];

  v20 = sub_29D76200C();
  [v18 addSubview_];

  v21 = sub_29D7620D8();
  [v18 addSubview_];

  v22 = sub_29D6C3970(*(*&v18[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_viewModel] + 16) | 0x100u);
  sub_29D762804(v22, v23);

  sub_29D762984();
  [v18 setUserInteractionEnabled_];
  v24 = [objc_allocWithZone(MEMORY[0x29EDC7D28]) initWithTarget:v18 action:sel_tapped];

  [v18 addGestureRecognizer_];
  return v18;
}

void sub_29D762804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_29D939D28();
    [v2 setAccessibilityIdentifier_];

    v6 = sub_29D761F30();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x6567616D492ELL, 0xE600000000000000);
    v7 = sub_29D939D28();

    [v6 setAccessibilityIdentifier_];

    v8 = sub_29D7620D8();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x666E4965726F4D2ELL, 0xE90000000000006FLL);
    v9 = sub_29D939D28();

    [v8 setAccessibilityIdentifier_];

    v10 = sub_29D76200C();
    sub_29D7B954C(a1, a2);
  }
}

void sub_29D762984()
{
  v1 = v0;
  v51 = objc_opt_self();
  sub_29D6A0C58();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D946510;
  v3 = [v0 heightAnchor];
  v4 = sub_29D76200C();
  v5 = [v4 heightAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:30.0];
  type metadata accessor for UILayoutPriority(0);
  sub_29D763438();
  sub_29D9378A8();
  LODWORD(v7) = v52;
  [v6 setPriority_];
  *(v2 + 32) = v6;
  v8 = sub_29D761F30();
  v9 = [v8 centerXAnchor];

  v10 = [v1 leadingAnchor];
  v11 = [v9 &selRef_dataProvider + 6];

  *(v2 + 40) = v11;
  v12 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView;
  v13 = [*&v1[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView] centerYAnchor];
  v14 = [v1 &selRef_setScrollEnabled_];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView;
  v17 = [*&v1[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView] leadingAnchor];
  v18 = [*&v1[v12] centerXAnchor];
  v19 = [v17 &selRef_dataProvider + 6];

  *(v2 + 56) = v19;
  v20 = [*&v1[v16] centerYAnchor];
  v21 = [v1 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v2 + 64) = v22;
  v23 = [*&v1[v16] topAnchor];
  v24 = [v1 &selRef_irregularHeartRhythmFooterLinkTitle];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24 constant:15.0];

  sub_29D9378A8();
  LODWORD(v26) = v52;
  [v25 setPriority_];
  *(v2 + 72) = v25;
  v27 = [*&v1[v16] bottomAnchor];
  v28 = [v1 &selRef_name + 5];
  v29 = [v27 constraintLessThanOrEqualToAnchor:v28 constant:-15.0];

  sub_29D9378A8();
  LODWORD(v30) = v52;
  [v29 setPriority_];
  *(v2 + 80) = v29;
  v31 = [*&v1[v16] trailingAnchor];
  v32 = sub_29D7620D8();
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintLessThanOrEqualToAnchor:v33 constant:-12.0];
  *(v2 + 88) = v34;
  v35 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView;
  v36 = [*&v1[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView] trailingAnchor];
  v37 = [v1 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-16.0];

  *(v2 + 96) = v38;
  v39 = [*&v1[v35] centerYAnchor];
  v40 = [v1 centerYAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v2 + 104) = v41;
  v42 = [*&v1[v35] topAnchor];
  v43 = [v1 topAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:15.0];

  sub_29D9378A8();
  LODWORD(v45) = v52;
  [v44 setPriority_];
  *(v2 + 112) = v44;
  v46 = [*&v1[v35] bottomAnchor];
  v47 = [v1 bottomAnchor];
  v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:-15.0];

  sub_29D9378A8();
  LODWORD(v49) = v52;
  [v48 &selRef_cardioFitnessAgeDeletedFooterLinkURL];
  *(v2 + 120) = v48;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v50 = sub_29D939F18();

  [v51 activateConstraints_];
}

uint64_t sub_29D763080()
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A24660 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF28);
  v3 = v0;
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    v20 = ObjectType;
    *v6 = 136446467;
    swift_getMetatypeMetadata();
    v8 = sub_29D939DA8();
    v10 = sub_29D6C2364(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    v11 = sub_29D73439C(*(v3 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_lifeFactor));
    v12 = [v11 identifier];

    v13 = sub_29D939D68();
    v15 = v14;

    v16 = sub_29D6C2364(v13, v15, &v19);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Info button tapped for life factor %{private}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v3 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_lifeFactor);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_29D8D7740(v18);
      sub_29D936978();
    }

    return sub_29D936978();
  }

  return result;
}

id sub_29D763340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D763438()
{
  result = qword_2A17B3ED0;
  if (!qword_2A17B3ED0)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3ED0);
  }

  return result;
}

uint64_t sub_29D763490()
{
  v1 = OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider_calendar;
  v2 = sub_29D933CE8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D6A0D34(v0 + OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider__unitTestViewDate);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider__queryBloodPressureCorrelations);

  v4 = *(v0 + OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider__unitTest_updatedQueryBloodPressureCorrelations + 8);

  v5 = *(v0 + OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider__unitTest_updatedViewModels + 8);

  v6 = OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider___observationRegistrar;
  v7 = sub_29D933E38();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_29D763598()
{
  sub_29D763490();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LearnHypertensionJournalViewModelProvider()
{
  result = qword_2A17B3F10;
  if (!qword_2A17B3F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D763644()
{
  v0 = sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_29D6A08F8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_29D933E38();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_29D763780(uint64_t a1)
{
  result = sub_29D7637A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29D7637A8()
{
  result = qword_2A17B3F20;
  if (!qword_2A17B3F20)
  {
    type metadata accessor for LearnHypertensionJournalViewModelProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3F20);
  }

  return result;
}

uint64_t sub_29D763800()
{
  v1 = OBJC_IVAR____TtC5Heart40AdvertisableFeatureHeartSettingsProvider_activeDeviceSource;
  v2 = sub_29D934A68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdvertisableFeatureHeartSettingsProvider()
{
  result = qword_2A17B3F28;
  if (!qword_2A17B3F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7638F8()
{
  result = sub_29D934A68();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D763998(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_29D7639C4()
{
  result = qword_2A17B3F38;
  if (!qword_2A17B3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3F38);
  }

  return result;
}

uint64_t sub_29D763A50(uint64_t a1)
{
  v2 = sub_29D763A9C();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29D763A9C()
{
  result = qword_2A17B3F40;
  if (!qword_2A17B3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3F40);
  }

  return result;
}

uint64_t type metadata accessor for LearnHypertensionJournalCheckmarkView()
{
  result = qword_2A17B3F50;
  if (!qword_2A17B3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D763B64()
{
  sub_29D7647F4(319, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D763C34@<X0>(uint64_t a1@<X8>)
{
  sub_29D76464C(0, &qword_2A17B3F60, sub_29D7645A8, sub_29D764BC0, MEMORY[0x29EDBC7E8]);
  v94 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v95 = (&v85 - v6);
  v92 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  v7 = *(*(v92 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v92, v8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v85 - v13;
  v15 = sub_29D939628();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76464C(0, &qword_2A17B3F70, sub_29D7646D0, sub_29D764908, MEMORY[0x29EDBC558]);
  v89 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v85 - v24;
  sub_29D7645A8();
  v93 = v26;
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v90 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v91 = &v85 - v32;
  v33 = type metadata accessor for LearnHypertensionJournalCheckmarkView();
  if (*(v1 + *(v33 + 20)) == 1)
  {
    v34 = v33;
    v88 = a1;
    sub_29D939618();
    (*(v16 + 104))(v20, *MEMORY[0x29EDBCAB8], v15);
    v87 = sub_29D939668();

    (*(v16 + 8))(v20, v15);
    v35 = sub_29D939158();
    KeyPath = swift_getKeyPath();
    sub_29D764718(0);
    v38 = &v25[*(v37 + 36)];
    sub_29D764858(0);
    v40 = *(v39 + 28);
    sub_29D938CA8();
    v41 = sub_29D938CB8();
    (*(*(v41 - 8) + 56))(v38 + v40, 0, 1, v41);
    *v38 = swift_getKeyPath();
    *v25 = v87;
    *(v25 + 1) = 0;
    *(v25 + 8) = 1;
    *(v25 + 3) = KeyPath;
    *(v25 + 4) = v35;
    v42 = *(v1 + *(v34 + 24));
    sub_29D7646D0(0);
    *&v25[*(v43 + 36)] = v42;

    v87 = sub_29D939588();
    sub_29D699AF4(v14);
    v44 = v92;
    v45 = &v14[*(v92 + 56)];
    LODWORD(KeyPath) = *v45;
    v46 = *(v45 + 1);
    sub_29D67FE64(v14);
    sub_29D699AF4(v11);
    v47 = *&v11[*(v44 + 52)];
    sub_29D67FE64(v11);
    sub_29D9386D8();
    v48 = v127;
    LODWORD(v38) = v128;
    LODWORD(v40) = v129;
    v49 = v130;
    v50 = v131;
    v51 = v132;
    v52 = sub_29D9398A8();
    v85 = v53;
    v86 = v52;
    v54 = sub_29D9398A8();
    *&v100 = v48;
    *(&v100 + 1) = __PAIR64__(v40, v38);
    *&v101 = v49;
    *(&v101 + 1) = v50;
    *&v102 = v51;
    *(&v102 + 1) = __PAIR64__(v46, KeyPath);
    v55 = v98;
    *(&v103 + 2) = v98;
    WORD3(v103) = v99;
    WORD3(v104) = v97;
    v56 = v96;
    *(&v104 + 2) = v96;
    LOWORD(v103) = 256;
    v58 = v86;
    v57 = v87;
    *(&v103 + 1) = v87;
    LOWORD(v104) = 256;
    v59 = v85;
    *(&v104 + 1) = v86;
    *&v105 = v85;
    *(&v105 + 1) = v54;
    v106 = v60;
    v61 = &v25[*(v89 + 36)];
    v62 = v105;
    *(v61 + 4) = v104;
    *(v61 + 5) = v62;
    *(v61 + 12) = v60;
    v63 = v101;
    *v61 = v100;
    *(v61 + 1) = v63;
    v64 = v103;
    *(v61 + 2) = v102;
    *(v61 + 3) = v64;
    v107 = v48;
    v108 = v38;
    v109 = v40;
    v110 = v49;
    v111 = v50;
    v112 = v51;
    v113 = KeyPath;
    v114 = v46;
    v115 = 256;
    v117 = v99;
    v116 = v55;
    v118 = v57;
    v119 = 256;
    v121 = v97;
    v120 = v56;
    v122 = v58;
    v123 = v59;
    v124 = v54;
    v125 = v60;
    sub_29D765214(&v100, &v133, sub_29D764908);
    sub_29D76527C(&v107, sub_29D764908);
    sub_29D699AF4(v14);
    v65 = *&v14[*(v44 + 60)];
    sub_29D67FE64(v14);
    sub_29D699AF4(v14);
    v66 = *&v14[*(v44 + 60)];
    sub_29D67FE64(v14);
    sub_29D699AF4(v14);
    v67 = *&v14[*(v44 + 60)];
    sub_29D67FE64(v14);
    sub_29D9398A8();
    if (v66 > v67)
    {
      sub_29D93A298();
      v68 = sub_29D9390A8();
      sub_29D937758();
    }

    sub_29D9388E8();
    v69 = v90;
    sub_29D765108(v25, v90);
    v70 = (v69 + *(v93 + 36));
    v71 = v138;
    v70[4] = v137;
    v70[5] = v71;
    v70[6] = v139;
    v72 = v134;
    *v70 = v133;
    v70[1] = v72;
    v73 = v136;
    v70[2] = v135;
    v70[3] = v73;
    v74 = v91;
    sub_29D7651B0(v69, v91);
    sub_29D765214(v74, v95, sub_29D7645A8);
    swift_storeEnumTagMultiPayload();
    sub_29D764BC0();
    sub_29D764CD4();
    sub_29D765058();
    sub_29D938DE8();
    return sub_29D76527C(v74, sub_29D7645A8);
  }

  else
  {
    sub_29D699AF4(v14);
    v76 = v92;
    v77 = &v14[*(v92 + 56)];
    v78 = *v77;
    v79 = *(v77 + 1);
    sub_29D67FE64(v14);
    sub_29D699AF4(v14);
    v80 = *&v14[*(v76 + 60)];
    sub_29D67FE64(v14);
    sub_29D699AF4(v14);
    v81 = *&v14[*(v76 + 60)];
    sub_29D67FE64(v14);
    sub_29D699AF4(v14);
    v82 = *&v14[*(v76 + 60)];
    sub_29D67FE64(v14);
    sub_29D9398A8();
    if (v81 > v82)
    {
      sub_29D93A298();
      v83 = sub_29D9390A8();
      sub_29D937758();
    }

    sub_29D9388E8();
    *&v126[86] = v138;
    *&v126[102] = v139;
    *&v126[6] = v133;
    *&v126[22] = v134;
    *&v126[54] = v136;
    *&v126[70] = v137;
    *&v126[38] = v135;
    v84 = v95;
    *v95 = v78;
    v84[1] = v79;
    *(v84 + 4) = 256;
    *(v84 + 74) = *&v126[64];
    *(v84 + 90) = *&v126[80];
    *(v84 + 106) = *&v126[96];
    *(v84 + 15) = *&v126[110];
    *(v84 + 10) = *v126;
    *(v84 + 26) = *&v126[16];
    *(v84 + 42) = *&v126[32];
    *(v84 + 58) = *&v126[48];
    swift_storeEnumTagMultiPayload();
    sub_29D764BC0();
    sub_29D764CD4();
    sub_29D765058();
    return sub_29D938DE8();
  }
}

void sub_29D7645A8()
{
  if (!qword_2A17B3F68)
  {
    sub_29D76464C(255, &qword_2A17B3F70, sub_29D7646D0, sub_29D764908, MEMORY[0x29EDBC558]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3F68);
    }
  }
}

void sub_29D76464C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D764760()
{
  if (!qword_2A17B3F88)
  {
    sub_29D764AA0(255, &qword_2A17B1748, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    sub_29D727974();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3F88);
    }
  }
}

void sub_29D7647F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D76488C()
{
  if (!qword_2A17B3F98)
  {
    v0 = sub_29D938F78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3F98);
    }
  }
}

void sub_29D764908()
{
  if (!qword_2A17B3FA0)
  {
    sub_29D76499C();
    sub_29D764B78(&qword_2A17B3FC8, sub_29D76499C);
    v0 = sub_29D938DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3FA0);
    }
  }
}

void sub_29D76499C()
{
  if (!qword_2A17B3FA8)
  {
    sub_29D764AA0(255, &qword_2A17B3FB0, MEMORY[0x29EDBC870], MEMORY[0x29EDBC868], MEMORY[0x29EDBC738]);
    sub_29D727614();
    sub_29D727690();
    sub_29D764AF4();
    sub_29D764B78(&qword_2A17B3FC0, sub_29D727614);
    v0 = sub_29D938878();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3FA8);
    }
  }
}

void sub_29D764AA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_29D764AF4()
{
  result = qword_2A17B3FB8;
  if (!qword_2A17B3FB8)
  {
    sub_29D764AA0(255, &qword_2A17B3FB0, MEMORY[0x29EDBC870], MEMORY[0x29EDBC868], MEMORY[0x29EDBC738]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FB8);
  }

  return result;
}

uint64_t sub_29D764B78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D764BC0()
{
  if (!qword_2A17B3FD0)
  {
    sub_29D764C20();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3FD0);
    }
  }
}

void sub_29D764C20()
{
  if (!qword_2A17B3FD8)
  {
    sub_29D764AA0(255, &qword_2A17B3FB0, MEMORY[0x29EDBC870], MEMORY[0x29EDBC868], MEMORY[0x29EDBC738]);
    sub_29D727690();
    sub_29D764AF4();
    v0 = sub_29D938698();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3FD8);
    }
  }
}

unint64_t sub_29D764CD4()
{
  result = qword_2A17B3FE0;
  if (!qword_2A17B3FE0)
  {
    sub_29D7645A8();
    sub_29D764D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FE0);
  }

  return result;
}

unint64_t sub_29D764D54()
{
  result = qword_2A17B3FE8;
  if (!qword_2A17B3FE8)
  {
    sub_29D76464C(255, &qword_2A17B3F70, sub_29D7646D0, sub_29D764908, MEMORY[0x29EDBC558]);
    sub_29D764E48();
    sub_29D764B78(&qword_2A17B4018, sub_29D764908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FE8);
  }

  return result;
}

unint64_t sub_29D764E48()
{
  result = qword_2A17B3FF0;
  if (!qword_2A17B3FF0)
  {
    sub_29D7646D0(255);
    sub_29D764EF8();
    sub_29D764B78(&qword_2A17B4010, sub_29D76488C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FF0);
  }

  return result;
}

unint64_t sub_29D764EF8()
{
  result = qword_2A17B3FF8;
  if (!qword_2A17B3FF8)
  {
    sub_29D764718(255);
    sub_29D764FA8();
    sub_29D764B78(&qword_2A17B4008, sub_29D764858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FF8);
  }

  return result;
}

unint64_t sub_29D764FA8()
{
  result = qword_2A17B4000;
  if (!qword_2A17B4000)
  {
    sub_29D764760();
    sub_29D69D430();
    sub_29D764B78(&qword_2A17B2448, sub_29D727974);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4000);
  }

  return result;
}

unint64_t sub_29D765058()
{
  result = qword_2A17B4020;
  if (!qword_2A17B4020)
  {
    sub_29D764BC0();
    sub_29D764B78(&qword_2A17B4028, sub_29D764C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4020);
  }

  return result;
}

uint64_t sub_29D765108(uint64_t a1, uint64_t a2)
{
  sub_29D76464C(0, &qword_2A17B3F70, sub_29D7646D0, sub_29D764908, MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7651B0(uint64_t a1, uint64_t a2)
{
  sub_29D7645A8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D765214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D76527C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D7652DC()
{
  result = qword_2A17B4030;
  if (!qword_2A17B4030)
  {
    sub_29D76464C(255, &qword_2A17B4038, sub_29D7645A8, sub_29D764BC0, MEMORY[0x29EDBC7F0]);
    sub_29D764CD4();
    sub_29D765058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4030);
  }

  return result;
}

id sub_29D765420()
{
  v1 = *&v0[OBJC_IVAR____TtC5Heart20BulletedIconListView_bulletedItems];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v43 = MEMORY[0x29EDCA190];
    sub_29D93AAD8();
    v4 = (v1 + 32);
    v5 = type metadata accessor for BulletedIconView();
    for (i = v2 - 1; ; --i)
    {
      v7 = v4[1];
      v37 = *v4;
      v38 = v7;
      v8 = v4[2];
      v9 = v4[3];
      v10 = v4[4];
      v42 = *(v4 + 10);
      v40 = v9;
      v41 = v10;
      v39 = v8;
      v11 = objc_allocWithZone(v5);
      *&v11[OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___iconView] = 0;
      *&v11[OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___textLabel] = 0;
      *&v11[OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___stackView] = 0;
      v12 = &v11[OBJC_IVAR____TtC5Heart16BulletedIconView_item];
      v13 = v38;
      *v12 = v37;
      *(v12 + 1) = v13;
      v15 = v40;
      v14 = v41;
      v16 = v39;
      *(v12 + 10) = v42;
      *(v12 + 3) = v15;
      *(v12 + 4) = v14;
      *(v12 + 2) = v16;
      sub_29D7664A4(&v37, v36);
      sub_29D7664A4(&v37, v36);
      v35.receiver = v11;
      v35.super_class = v5;
      v17 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v18 = sub_29D765ACC();
      v19 = sub_29D765828();
      [v18 addArrangedSubview_];

      v20 = OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___stackView;
      v21 = *&v17[OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___stackView];
      v22 = sub_29D76596C();
      [v21 addArrangedSubview_];

      [v17 addSubview_];
      [*&v17[v20] hk:v17 alignConstraintsWithView:?];
      if (*&v17[OBJC_IVAR____TtC5Heart16BulletedIconView_item + 80])
      {
        v23 = *&v17[OBJC_IVAR____TtC5Heart16BulletedIconView_item + 72];
        v24 = sub_29D939D28();
      }

      else
      {
        v24 = 0;
      }

      [v17 setAccessibilityIdentifier_];

      sub_29D7664DC(&v37);
      sub_29D93AAB8();
      v25 = *(v43 + 16);
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
      if (!i)
      {
        break;
      }

      v4 = (v4 + 88);
    }

    v3 = v43;
    v0 = v34;
  }

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (j = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_29D93A928())
  {
    v27 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x29ED6AE30](v27, v3);
      }

      else
      {
        if (v27 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v28 = *(v3 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v31 = sub_29D7653A0();
      [v31 addArrangedSubview_];

      ++v27;
      if (v30 == j)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v32 = sub_29D7653A0();
  [v0 addSubview_];

  return [*&v0[OBJC_IVAR____TtC5Heart20BulletedIconListView____lazy_storage___stackView] hk:v0 alignConstraintsWithView:?];
}

id sub_29D765828()
{
  v1 = OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___iconView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 48);
    v22 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 32);
    v23 = v4;
    v24 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 64);
    v25 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 80);
    v5 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 16);
    v20 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item);
    v21 = v5;
    v6 = type metadata accessor for BulletCircleImageView();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC5Heart21BulletCircleImageView____lazy_storage___iconView] = 0;
    v8 = &v7[OBJC_IVAR____TtC5Heart21BulletCircleImageView_item];
    v9 = v21;
    *v8 = v20;
    *(v8 + 1) = v9;
    v11 = v23;
    v10 = v24;
    v12 = v22;
    *(v8 + 10) = v25;
    *(v8 + 3) = v11;
    *(v8 + 4) = v10;
    *(v8 + 2) = v12;
    sub_29D7664A4(&v20, v19);
    v18.receiver = v7;
    v18.super_class = v6;
    v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v14 = v0;
    sub_29D766120();
    [v13 setOpaque_];

    v15 = *(v0 + v1);
    *(v14 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_29D76598C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v2 setFont_];

  v4 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  LODWORD(v5) = 1132068864;
  [v2 setContentHuggingPriority:0 forAxis:v5];
  v6 = *(a1 + OBJC_IVAR____TtC5Heart16BulletedIconView_item);
  v7 = *(a1 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 8);
  v8 = sub_29D939D28();
  [v2 setText_];

  return v2;
}

id sub_29D765AE4(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    [v11 setAlignment_];
    [v11 setAxis_];
    [v11 setSpacing_];
    v12 = *(v4 + v5);
    *(v4 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v13 = v6;
  return v7;
}

id sub_29D765D44()
{
  result = [objc_opt_self() systemGray5Color];
  qword_2A17B4040 = result;
  return result;
}

id sub_29D765DA0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D765E04(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v3 = a1 + OBJC_IVAR____TtC5Heart21BulletCircleImageView_item;
  [v2 setImage_];
  [v2 setContentMode_];
  if (*(v3 + 24))
  {
    [v2 setTintColor_];
  }

  v4 = *(v3 + 32);
  if (v4 && (*(v3 + 48) & 1) == 0 && (*(v3 + 64) & 1) == 0)
  {
    v5 = *(v3 + 56);
    v6 = *(v3 + 40);
    v7 = objc_opt_self();
    v8 = v4;
    v9 = [v7 configurationWithPointSize:v5 weight:v6];
    sub_29D6A0C58();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D940030;
    *(v10 + 32) = v8;
    sub_29D69567C(0, &qword_2A17B2CE8, 0x29EDC7A00);
    v11 = v8;
    v12 = sub_29D939F18();

    v13 = [v7 configurationWithPaletteColors_];

    v14 = [v9 configurationByApplyingConfiguration_];
    [v2 setPreferredSymbolConfiguration_];
  }

  return v2;
}

void sub_29D766120()
{
  v1 = sub_29D765D80();
  [v0 addSubview_];

  [*&v0[OBJC_IVAR____TtC5Heart21BulletCircleImageView____lazy_storage___iconView] hk:v0 alignConstraintsWithView:?];
  v2 = [v0 heightAnchor];
  v3 = [v2 constraintEqualToConstant_];

  v4 = [v0 widthAnchor];
  v5 = [v4 constraintEqualToConstant_];

  sub_29D6A0C58();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D941B10;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v7 = v5;
  v8 = v3;
  v9 = sub_29D939F18();

  [v0 addConstraints_];
}

id sub_29D7662F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 sub_29D7663D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_29D7663F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_29D766440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D76650C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29D766554(uint64_t result, int a2, int a3)
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

uint64_t sub_29D7665A0(uint64_t a1, uint64_t (*a2)(void))
{
  v43 = *MEMORY[0x29EDBA650];
  v42 = &v43;
  v4 = sub_29D76C424(sub_29D714870, v41, a1);
  if (v4)
  {
LABEL_2:
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v6 = &qword_2A17D0F10;
LABEL_5:
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v40 = 0xE000000000000000;
    return sub_29D9334A8();
  }

  v43 = *MEMORY[0x29EDBA5D8];
  MEMORY[0x2A1C7C4A8](v4, v5);
  v40 = &v43;
  v10 = sub_29D76C424(sub_29D714870, v39, a1);
  if (v10 & 1) != 0 || (v43 = *MEMORY[0x29EDBA5F0], MEMORY[0x2A1C7C4A8](v10, v11), v40 = &v43, v12 = sub_29D76C424(sub_29D714870, v39, a1), (v12))
  {
LABEL_8:
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v40 = 0xE000000000000000;
    return sub_29D9334A8();
  }

  v43 = *MEMORY[0x29EDBA5C0];
  MEMORY[0x2A1C7C4A8](v12, v13);
  v40 = &v43;
  v15 = sub_29D76C424(sub_29D714870, v39, a1);
  if (v15)
  {
LABEL_13:
    if (a2())
    {
      if (qword_2A17B0D68 != -1)
      {
        swift_once();
      }

      v40 = 0xE000000000000000;
    }

    else
    {
      if (qword_2A17B0D68 != -1)
      {
        swift_once();
      }

      v40 = 0xE000000000000000;
    }

    return sub_29D9334A8();
  }

  v43 = *MEMORY[0x29EDBA5D0];
  MEMORY[0x2A1C7C4A8](v15, v16);
  v40 = &v43;
  v17 = sub_29D76C424(sub_29D714870, v39, a1);
  if (v17)
  {
    goto LABEL_8;
  }

  v43 = *MEMORY[0x29EDBA5E8];
  MEMORY[0x2A1C7C4A8](v17, v18);
  v40 = &v43;
  v19 = sub_29D76C424(sub_29D714870, v39, a1);
  if (v19)
  {
    goto LABEL_8;
  }

  v43 = *MEMORY[0x29EDBA640];
  MEMORY[0x2A1C7C4A8](v19, v20);
  v40 = &v43;
  v21 = sub_29D76C424(sub_29D714870, v39, a1);
  if (v21)
  {
    goto LABEL_2;
  }

  v43 = *MEMORY[0x29EDBA688];
  MEMORY[0x2A1C7C4A8](v21, v22);
  v40 = &v43;
  v23 = sub_29D76C424(sub_29D714870, v39, a1);
  if (v23)
  {
    goto LABEL_8;
  }

  v43 = *MEMORY[0x29EDBA600];
  MEMORY[0x2A1C7C4A8](v23, v24);
  v40 = &v43;
  v25 = sub_29D76C424(sub_29D714870, v39, a1);
  if (v25)
  {
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v40 = 0xE000000000000000;
    return sub_29D9334A8();
  }

  v43 = *MEMORY[0x29EDBA620];
  MEMORY[0x2A1C7C4A8](v25, v26);
  v40 = &v43;
  v27 = sub_29D76C424(sub_29D714870, v39, a1);
  if (v27)
  {
    v29 = sub_29D934848();
    v31 = v30;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v40 = 0xE000000000000000;
  }

  else
  {
    v43 = *MEMORY[0x29EDBA6A8];
    MEMORY[0x2A1C7C4A8](v27, v28);
    v40 = &v43;
    v32 = sub_29D76C424(sub_29D714870, v39, a1);
    if ((v32 & 1) == 0)
    {
      v43 = *MEMORY[0x29EDBA638];
      MEMORY[0x2A1C7C4A8](v32, v33);
      v40 = &v43;
      v37 = sub_29D76C424(sub_29D714870, v39, a1);
      if (v37)
      {
        if (qword_2A17B0D70 != -1)
        {
          swift_once();
        }

        v6 = &qword_2A17D0F28;
        goto LABEL_5;
      }

      v43 = *MEMORY[0x29EDBA648];
      MEMORY[0x2A1C7C4A8](v37, v38);
      v40 = &v43;
      if (sub_29D76C424(sub_29D714870, v39, a1))
      {
        if (qword_2A17B0D70 != -1)
        {
          swift_once();
        }

        v40 = 0xE000000000000000;
        return sub_29D9334A8();
      }

      goto LABEL_13;
    }

    v29 = sub_29D934858();
    v31 = v34;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v40 = 0xE000000000000000;
  }

  sub_29D9334A8();
  sub_29D76C988(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29D93DDB0;
  *(v35 + 56) = MEMORY[0x29EDC99B0];
  *(v35 + 64) = sub_29D69AD24();
  *(v35 + 32) = v29;
  *(v35 + 40) = v31;
  v36 = sub_29D939D38();

  return v36;
}

uint64_t sub_29D766EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D76C988(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D943EA0;
  v9 = MEMORY[0x29EDC99B0];
  *(v8 + 56) = MEMORY[0x29EDC99B0];
  v10 = sub_29D69AD24();
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_29D935E88();
  v11 = sub_29D934808();
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  *(v8 + 136) = v9;
  *(v8 + 144) = v10;
  *(v8 + 112) = a3;
  *(v8 + 120) = a4;
  sub_29D935E88();
  v13 = sub_29D939D38();

  return v13;
}

uint64_t sub_29D76703C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v7 = sub_29D939F38();

  v10 = *(v7 + 16);
  if (v10)
  {
    if (v10 == 1)
    {
      v14 = *MEMORY[0x29EDBA608];
      MEMORY[0x2A1C7C4A8](v8, v9);
      v13[2] = &v14;
      v11 = sub_29D76C424(sub_29D714870, v13, v7);

      if (v11)
      {
        return sub_29D767618(1, a3);
      }
    }

    else
    {
    }

    return sub_29D767AAC(a1, a2, a3);
  }

  else
  {

    return sub_29D7671A4(a3);
  }
}

uint64_t sub_29D7671A4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = v34 - v5;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v1);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v36 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v34 - v13;
  v15 = sub_29D9346E8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v34 - v23;
  v25 = *MEMORY[0x29EDC1760];
  v26 = *(v16 + 104);
  v26(v34 - v23, v25, v15);
  v26(v21, v25, v15);
  v34[2] = sub_29D8C0ECC(v21, 1);
  v35 = *(v16 + 8);
  v35(v21, v15);
  v27 = sub_29D934818();
  v34[0] = v28;
  v34[1] = v27;
  v29 = sub_29D934358();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  (*(v16 + 16))(v21, v24, v15);
  sub_29D837E98();
  v30 = sub_29D934798();
  (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
  sub_29D76C8F4(v14, v36);
  v31 = v37;
  sub_29D934988();
  sub_29D76C884(v14, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  v35(v24, v15);
  v32 = sub_29D9349A8();
  return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
}

uint64_t sub_29D767618@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = v38 - v7;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v3);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v42 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v38 - v15;
  v17 = sub_29D9346E8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = v38 - v25;
  v27 = *MEMORY[0x29EDC1768];
  v28 = *(v18 + 104);
  v28(v38 - v25, v27, v17);
  if (a1)
  {
    v29 = sub_29D9347E8();
  }

  else
  {
    v29 = sub_29D9347D8();
  }

  v40 = v30;
  v41 = v29;
  v28(v23, v27, v17);
  v38[2] = sub_29D8C0ECC(v23, a1 & 1);
  v39 = *(v18 + 8);
  v39(v23, v17);
  v31 = sub_29D934818();
  v38[0] = v32;
  v38[1] = v31;
  v33 = sub_29D934358();
  (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  (*(v18 + 16))(v23, v26, v17);
  sub_29D837E98();
  v34 = sub_29D934798();
  (*(*(v34 - 8) + 56))(v8, 0, 1, v34);
  sub_29D76C8F4(v16, v42);
  v35 = v43;
  sub_29D934988();
  sub_29D76C884(v16, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  v39(v26, v17);
  v36 = sub_29D9349A8();
  return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
}

uint64_t sub_29D767AAC@<X0>(id a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v6 = sub_29D939F38();

  v133[0] = *MEMORY[0x29EDBA680];
  v132 = v133;
  v7 = sub_29D76C424(sub_29D714870, v131, v6);
  if ((v7 & 1) == 0)
  {
    v133[0] = *MEMORY[0x29EDBA5F8];
    MEMORY[0x2A1C7C4A8](v7, v8);
    v130 = v133;
    v15 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v15)
    {

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v17 = sub_29D937898();
      sub_29D69C6C0(v17, qword_2A1A2C008);
      v10 = sub_29D937878();
      v11 = sub_29D93A2A8();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_27;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v133[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
      v14 = "[%s.%s] Not creating feature status configuration due to feature flag disabled";
      goto LABEL_26;
    }

    v133[0] = *MEMORY[0x29EDBA618];
    MEMORY[0x2A1C7C4A8](v15, v16);
    v130 = v133;
    v18 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v18)
    {

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v20 = sub_29D937898();
      sub_29D69C6C0(v20, qword_2A1A2C008);
      v10 = sub_29D937878();
      v11 = sub_29D93A2A8();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_27;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v133[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
      v14 = "[%s.%s] Not creating feature status configuration due to health app being hidden";
      goto LABEL_26;
    }

    v133[0] = *MEMORY[0x29EDBA5A8];
    MEMORY[0x2A1C7C4A8](v18, v19);
    v130 = v133;
    v21 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v21)
    {

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v23 = sub_29D937898();
      sub_29D69C6C0(v23, qword_2A1A2C008);
      v10 = sub_29D937878();
      v11 = sub_29D93A2A8();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_27;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v133[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
      v14 = "[%s.%s] Not creating feature status configuration due to no paired device";
      goto LABEL_26;
    }

    v133[0] = *MEMORY[0x29EDBA690];
    MEMORY[0x2A1C7C4A8](v21, v22);
    v130 = v133;
    v24 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v24)
    {

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v26 = sub_29D937898();
      sub_29D69C6C0(v26, qword_2A1A2C008);
      v10 = sub_29D937878();
      v11 = sub_29D93A2A8();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_27;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v133[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
      v14 = "[%s.%s] Not creating feature status configuration due to region list being empty";
      goto LABEL_26;
    }

    v133[0] = *MEMORY[0x29EDBA650];
    MEMORY[0x2A1C7C4A8](v24, v25);
    v130 = v133;
    v30 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v30)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v32 = sub_29D937898();
      sub_29D69C6C0(v32, qword_2A1A2C008);
      v33 = sub_29D937878();
      v34 = sub_29D93A2A8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v133[0] = v36;
        *v35 = 136315394;
        *(v35 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
        _os_log_impl(&dword_29D677000, v33, v34, "[%s.%s] Creating age gated feature status configuration due to being in store mode", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v36, -1, -1);
        MEMORY[0x29ED6BE30](v35, -1, -1);
      }

      v37 = sub_29D7665A0(v6, a2);
      v39 = v38;

      sub_29D76AAC4(v37, v39, a3);
      goto LABEL_47;
    }

    v133[0] = *MEMORY[0x29EDBA5D8];
    MEMORY[0x2A1C7C4A8](v30, v31);
    v130 = v133;
    v40 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v40 & 1) != 0 || (v133[0] = *MEMORY[0x29EDBA5F0], MEMORY[0x2A1C7C4A8](v40, v41), v130 = v133, v42 = sub_29D76C424(sub_29D714870, v129, v6), (v42))
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v44 = sub_29D937898();
      sub_29D69C6C0(v44, qword_2A1A2C008);
      v45 = sub_29D937878();
      v46 = sub_29D93A2A8();
      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_42;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v133[0] = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
      v49 = "[%s.%s] Creating country not supported on local device feature status configuration";
LABEL_41:
      _os_log_impl(&dword_29D677000, v45, v46, v49, v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v48, -1, -1);
      MEMORY[0x29ED6BE30](v47, -1, -1);
LABEL_42:

      v50 = sub_29D7665A0(v6, a2);
      v52 = v51;

      if (qword_2A17B0D68 != -1)
      {
        swift_once();
      }

      v130 = 0xE000000000000000;
LABEL_45:
      v53 = sub_29D9334A8();
      sub_29D766EAC(v50, v52, v53, v54);

      sub_29D76AF74(v50, v52, a3);
LABEL_46:

LABEL_47:

      v27 = 0;
      goto LABEL_28;
    }

    v133[0] = *MEMORY[0x29EDBA5C0];
    MEMORY[0x2A1C7C4A8](v42, v43);
    v130 = v133;
    v55 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v55)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v57 = sub_29D937898();
      sub_29D69C6C0(v57, qword_2A1A2C008);
      v58 = sub_29D937878();
      v59 = sub_29D93A2A8();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_54;
      }

      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v133[0] = v61;
      *v60 = 136315394;
      *(v60 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
      v62 = "[%s.%s] Creating not supported on active device feature status configuration";
LABEL_53:
      _os_log_impl(&dword_29D677000, v58, v59, v62, v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v61, -1, -1);
      MEMORY[0x29ED6BE30](v60, -1, -1);
LABEL_54:

      v63 = sub_29D7665A0(v6, a2);
      v65 = v64;

      sub_29D76AF74(v63, v65, a3);
      goto LABEL_47;
    }

    v133[0] = *MEMORY[0x29EDBA5D0];
    MEMORY[0x2A1C7C4A8](v55, v56);
    v130 = v133;
    v66 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v66 & 1) != 0 || (v133[0] = *MEMORY[0x29EDBA5E8], MEMORY[0x2A1C7C4A8](v66, v67), v130 = v133, v68 = sub_29D76C424(sub_29D714870, v129, v6), (v68))
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v70 = sub_29D937898();
      sub_29D69C6C0(v70, qword_2A1A2C008);
      v45 = sub_29D937878();
      v46 = sub_29D93A2A8();
      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_42;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v133[0] = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
      v49 = "[%s.%s] Creating country not supported on active device feature status configuration";
      goto LABEL_41;
    }

    v133[0] = *MEMORY[0x29EDBA640];
    MEMORY[0x2A1C7C4A8](v68, v69);
    v130 = v133;
    v71 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v71)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v73 = sub_29D937898();
      sub_29D69C6C0(v73, qword_2A1A2C008);
      v58 = sub_29D937878();
      v59 = sub_29D93A2A8();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_54;
      }

      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v133[0] = v61;
      *v60 = 136315394;
      *(v60 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
      v62 = "[%s.%s] Creating age gated feature status configuration";
      goto LABEL_53;
    }

    v133[0] = *MEMORY[0x29EDBA688];
    MEMORY[0x2A1C7C4A8](v71, v72);
    v130 = v133;
    v74 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v74)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v76 = sub_29D937898();
      sub_29D69C6C0(v76, qword_2A1A2C008);
      v77 = sub_29D937878();
      v78 = sub_29D93A2A8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v133[0] = v80;
        *v79 = 136315394;
        *(v79 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
        *(v79 + 12) = 2080;
        *(v79 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
        _os_log_impl(&dword_29D677000, v77, v78, "[%s.%s] Creating seed expired feature status configuration", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v80, -1, -1);
        MEMORY[0x29ED6BE30](v79, -1, -1);
      }

      v81 = sub_29D7665A0(v6, a2);
      v83 = v82;

      v84 = [objc_opt_self() seedExpiredLinkURL];
LABEL_78:
      v93 = v84;
      v94 = sub_29D939D68();
      v96 = v95;

      sub_29D766EAC(v81, v83, v94, v96);

      sub_29D76AF74(v81, v83, a3);
      goto LABEL_46;
    }

    v133[0] = *MEMORY[0x29EDBA600];
    MEMORY[0x2A1C7C4A8](v74, v75);
    v130 = v133;
    v85 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v85)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v87 = sub_29D937898();
      sub_29D69C6C0(v87, qword_2A1A2C008);
      v88 = sub_29D937878();
      v89 = sub_29D93A2A8();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v133[0] = v91;
        *v90 = 136315394;
        *(v90 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
        *(v90 + 12) = 2080;
        *(v90 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
        _os_log_impl(&dword_29D677000, v88, v89, "[%s.%s] Creating remotely disabled feature status configuration", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v91, -1, -1);
        MEMORY[0x29ED6BE30](v90, -1, -1);
      }

      v81 = sub_29D7665A0(v6, a2);
      v83 = v92;

      v84 = [objc_opt_self() remoteDisabledLinkURL];
      goto LABEL_78;
    }

    v133[0] = *MEMORY[0x29EDBA620];
    MEMORY[0x2A1C7C4A8](v85, v86);
    v130 = v133;
    v97 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v97)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v99 = sub_29D937898();
      sub_29D69C6C0(v99, qword_2A1A2C008);
      v100 = sub_29D937878();
      v101 = sub_29D93A2A8();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v133[0] = v103;
        *v102 = 136315394;
        *(v102 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
        *(v102 + 12) = 2080;
        *(v102 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
        _os_log_impl(&dword_29D677000, v100, v101, "[%s.%s] Creating heart rate disabled in privacy feature status configuration", v102, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v103, -1, -1);
        MEMORY[0x29ED6BE30](v102, -1, -1);
      }

      v104 = sub_29D7665A0(v6, a2);
      v106 = v105;

      v107 = sub_29D934868();
LABEL_91:
      sub_29D76B3B0(v104, v106, v107, v108, a3);

      goto LABEL_47;
    }

    v133[0] = *MEMORY[0x29EDBA6A8];
    MEMORY[0x2A1C7C4A8](v97, v98);
    v130 = v133;
    v109 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v109)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v111 = sub_29D937898();
      sub_29D69C6C0(v111, qword_2A1A2C008);
      v112 = sub_29D937878();
      v113 = sub_29D93A2A8();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v133[0] = v115;
        *v114 = 136315394;
        *(v114 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
        *(v114 + 12) = 2080;
        *(v114 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
        _os_log_impl(&dword_29D677000, v112, v113, "[%s.%s] Creating wrist detection disabled feature status configuration", v114, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v115, -1, -1);
        MEMORY[0x29ED6BE30](v114, -1, -1);
      }

      v104 = sub_29D7665A0(v6, a2);
      v106 = v116;

      v107 = sub_29D934878();
      goto LABEL_91;
    }

    v133[0] = *MEMORY[0x29EDBA638];
    MEMORY[0x2A1C7C4A8](v109, v110);
    v130 = v133;
    v117 = sub_29D76C424(sub_29D714870, v129, v6);
    if (v117)
    {
      if (qword_2A1A25718 == -1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v133[0] = *MEMORY[0x29EDBA648];
      MEMORY[0x2A1C7C4A8](v117, v118);
      v130 = v133;
      if ((sub_29D76C424(sub_29D714870, v129, v6) & 1) == 0)
      {
        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v128 = sub_29D937898();
        sub_29D69C6C0(v128, qword_2A1A2C008);
        v58 = sub_29D937878();
        v59 = sub_29D93A2A8();
        if (!os_log_type_enabled(v58, v59))
        {
          goto LABEL_54;
        }

        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v133[0] = v61;
        *v60 = 136315394;
        *(v60 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
        *(v60 + 12) = 2080;
        *(v60 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
        v62 = "[%s.%s] Creating unavailable not supported feature status configuration";
        goto LABEL_53;
      }

      if (qword_2A1A25718 == -1)
      {
LABEL_94:
        v119 = sub_29D937898();
        sub_29D69C6C0(v119, qword_2A1A2C008);
        v120 = sub_29D937878();
        v121 = sub_29D93A2A8();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v134[0] = v123;
          *v122 = 136315650;
          *(v122 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
          *(v122 + 12) = 2080;
          *(v122 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
          *(v122 + 22) = 2080;
          v133[0] = 0xD000000000000016;
          v133[1] = 0x800000029D95F9D0;
          v124 = sub_29D939DE8();
          v126 = sub_29D6C2364(v124, v125, v134);

          *(v122 + 24) = v126;
          _os_log_impl(&dword_29D677000, v120, v121, "[%s.%s] Creating %s feature status configuration", v122, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v123, -1, -1);
          MEMORY[0x29ED6BE30](v122, -1, -1);
        }

        v50 = sub_29D7665A0(v6, a2);
        v52 = v127;

        if (qword_2A17B0D68 != -1)
        {
          swift_once();
        }

        v130 = 0xE000000000000000;
        goto LABEL_45;
      }
    }

    swift_once();
    goto LABEL_94;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v9 = sub_29D937898();
  sub_29D69C6C0(v9, qword_2A1A2C008);
  v10 = sub_29D937878();
  v11 = sub_29D93A2A8();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_27;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v133[0] = v13;
  *v12 = 136315394;
  *(v12 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v133);
  *(v12 + 12) = 2080;
  *(v12 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v133);
  v14 = "[%s.%s] Not creating feature status configuration due to family setup profile";
LABEL_26:
  _os_log_impl(&dword_29D677000, v10, v11, v14, v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x29ED6BE30](v13, -1, -1);
  MEMORY[0x29ED6BE30](v12, -1, -1);
LABEL_27:

  v27 = 1;
LABEL_28:
  v28 = sub_29D9349A8();
  return (*(*(v28 - 8) + 56))(a3, v27, 1, v28);
}

uint64_t sub_29D769888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v146 = a2;
  sub_29D76C988(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v143 = &v139 - v8;
  v9 = sub_29D9336F8();
  v142 = *(v9 - 8);
  v10 = *(v142 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9346E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v145 = &v139 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v27 = &v139 - v26;
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v139 - v29;
  v144 = a1;
  sub_29D934958();
  v31 = v15;
  v32 = *(v15 + 16);
  v32(v27, v30, v14);
  v33 = (*(v31 + 88))(v27, v14);
  if (v33 != *MEMORY[0x29EDC1760])
  {
    v140 = v30;
    v141 = v14;
    v139 = a3;
    if (v33 == *MEMORY[0x29EDC1768])
    {
      v39 = v31;
      v40 = sub_29D76B7F8(*MEMORY[0x29EDBA5A0], *MEMORY[0x29EDBA578]);
      v41 = v140;
      if (v40)
      {
        v42 = v40;
        v43 = [v40 unsatisfiedRequirementIdentifiers];
        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        v44 = sub_29D939F38();

        v45 = *(v44 + 16);

        if (v45)
        {
          v46 = [v42 unsatisfiedRequirementIdentifiers];
          v47 = sub_29D939F38();

          v147 = *MEMORY[0x29EDBA660];
          MEMORY[0x2A1C7C4A8](v48, v49);
          *(&v139 - 2) = &v147;
          LOBYTE(v46) = sub_29D76C424(sub_29D714870, (&v139 - 4), v47);

          if ((v46 & 1) == 0)
          {
            if (qword_2A1A25718 != -1)
            {
              swift_once();
            }

            v99 = sub_29D937898();
            sub_29D69C6C0(v99, qword_2A1A2C008);
            v100 = v42;
            v101 = sub_29D937878();
            v102 = sub_29D93A2A8();

            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              v147 = v104;
              *v103 = 136315394;
              *(v103 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v147);
              *(v103 + 12) = 2080;
              v105 = [v100 unsatisfiedRequirementIdentifiersDescription];
              v106 = sub_29D939D68();
              v108 = v107;

              v109 = sub_29D6C2364(v106, v108, &v147);

              *(v103 + 14) = v109;
              v41 = v140;
              _os_log_impl(&dword_29D677000, v101, v102, "[%s]: Presenting Enabled Feature Settings with unsatisfied requirements: %s", v103, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x29ED6BE30](v104, -1, -1);
              MEMORY[0x29ED6BE30](v103, -1, -1);
            }

            v110 = v141;
            v111 = v139;
            sub_29D934958();

            (*(v39 + 8))(v41, v110);
            v34 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
            swift_storeEnumTagMultiPayload();
            v35 = *(*(v34 - 8) + 56);
            v36 = v111;
            goto LABEL_3;
          }

          if (qword_2A1A25718 != -1)
          {
            swift_once();
          }

          v50 = sub_29D937898();
          sub_29D69C6C0(v50, qword_2A1A2C008);
          v51 = sub_29D937878();
          v52 = sub_29D93A2A8();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v147 = v54;
            *v53 = 136315138;
            *(v53 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v147);
            _os_log_impl(&dword_29D677000, v51, v52, "[%s]: found no onboardingAcknowledged, will present onboarding", v53, 0xCu);
            sub_29D69417C(v54);
            MEMORY[0x29ED6BE30](v54, -1, -1);
            MEMORY[0x29ED6BE30](v53, -1, -1);
          }

          else
          {
          }

          (*(v39 + 8))(v41, v141);
          v69 = v139;
          v34 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
          goto LABEL_58;
        }
      }

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v92 = sub_29D937898();
      sub_29D69C6C0(v92, qword_2A1A2C008);
      v93 = sub_29D937878();
      v94 = sub_29D93A298();
      v95 = os_log_type_enabled(v93, v94);
      v96 = v141;
      if (v95)
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v147 = v98;
        *v97 = 136315138;
        *(v97 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v147);
        _os_log_impl(&dword_29D677000, v93, v94, "[%s]: no unsatisfied requirement identifiers", v97, 0xCu);
        sub_29D69417C(v98);
        MEMORY[0x29ED6BE30](v98, -1, -1);
        MEMORY[0x29ED6BE30](v97, -1, -1);
      }

      (*(v39 + 8))(v41, v96);
      goto LABEL_53;
    }

    v55 = v141;
    if (v33 != *MEMORY[0x29EDC1758])
    {
      if (v33 != *MEMORY[0x29EDC1750])
      {
        v75 = v31;
        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v76 = sub_29D937898();
        sub_29D69C6C0(v76, qword_2A1A2C008);
        v77 = v145;
        v78 = v140;
        v32(v145, v140, v55);
        v79 = sub_29D937878();
        v80 = sub_29D93A298();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          LODWORD(v144) = v80;
          v82 = v81;
          v146 = swift_slowAlloc();
          v147 = v146;
          *v82 = 136315394;
          *(v82 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v147);
          *(v82 + 12) = 2080;
          v32(v20, v77, v55);
          v83 = v78;
          v84 = sub_29D939DA8();
          v85 = v77;
          v87 = v86;
          v88 = *(v75 + 8);
          v88(v85, v55);
          v89 = sub_29D6C2364(v84, v87, &v147);

          *(v82 + 14) = v89;
          v55 = v141;
          _os_log_impl(&dword_29D677000, v79, v144, "[%s]: Unexpected featureStatusKind case: %s", v82, 0x16u);
          v90 = v146;
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v90, -1, -1);
          MEMORY[0x29ED6BE30](v82, -1, -1);

          v91 = v83;
        }

        else
        {

          v88 = *(v75 + 8);
          v88(v77, v55);
          v91 = v78;
        }

        v88(v91, v55);
        v112 = v139;
        v88(v27, v55);
        goto LABEL_54;
      }

      v70 = v31;
      v71 = sub_29D76B7F8(*MEMORY[0x29EDBA5A0], *MEMORY[0x29EDBA578]);
      if (v71)
      {
        v72 = v71;
        sub_29D76C55C(v71);
        v73 = v143;
        sub_29D9336E8();

        (*(v31 + 8))(v140, v55);
        v74 = v142;
        if ((*(v142 + 48))(v73, 1, v9) == 1)
        {
          sub_29D76C884(v73, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
          v38 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
          v35 = *(*(v38 - 8) + 56);
          v36 = v139;
LABEL_55:
          v37 = 1;
          return v35(v36, v37, 1, v38);
        }

        v127 = *(v74 + 32);
        v127(v13, v73, v9);
        v69 = v139;
        v127(v139, v13, v9);
        v34 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
LABEL_58:
        swift_storeEnumTagMultiPayload();
        v35 = *(*(v34 - 8) + 56);
        v36 = v69;
        goto LABEL_3;
      }

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v119 = sub_29D937898();
      sub_29D69C6C0(v119, qword_2A1A2C008);
      v120 = sub_29D937878();
      v121 = sub_29D93A298();
      v122 = os_log_type_enabled(v120, v121);
      v123 = v140;
      if (v122)
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v147 = v125;
        *v124 = 136315138;
        *(v124 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v147);
        _os_log_impl(&dword_29D677000, v120, v121, "[%s]: requirementsEvaluation is nil", v124, 0xCu);
        sub_29D69417C(v125);
        MEMORY[0x29ED6BE30](v125, -1, -1);
        MEMORY[0x29ED6BE30](v124, -1, -1);
      }

      (*(v70 + 8))(v123, v55);
LABEL_53:
      v112 = v139;
LABEL_54:
      v38 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
      v35 = *(*(v38 - 8) + 56);
      v36 = v112;
      goto LABEL_55;
    }

    v56 = v31;
    v57 = sub_29D76B7F8(*MEMORY[0x29EDBA5A0], *MEMORY[0x29EDBA578]);
    v58 = v140;
    if (v57)
    {
      v59 = v57;
      v60 = [v57 unsatisfiedRequirementIdentifiers];
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v61 = sub_29D939F38();

      v62 = *(v61 + 16);

      if (v62)
      {
        v63 = [v59 unsatisfiedRequirementIdentifiers];
        v64 = sub_29D939F38();

        v147 = *MEMORY[0x29EDBA620];
        MEMORY[0x2A1C7C4A8](v65, v66);
        *(&v139 - 2) = &v147;
        v67 = sub_29D76C424(sub_29D7141DC, (&v139 - 4), v64);
        if (v67)
        {
          (*(v56 + 8))(v58, v55);

          v34 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
          v69 = v139;
          goto LABEL_58;
        }

        v147 = *MEMORY[0x29EDBA6A8];
        MEMORY[0x2A1C7C4A8](v67, v68);
        *(&v139 - 2) = &v147;
        v118 = sub_29D76C424(sub_29D714870, (&v139 - 4), v64);

        if (v118)
        {
          (*(v56 + 8))(v58, v55);

          v34 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
          v69 = v139;
          goto LABEL_58;
        }

        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v128 = sub_29D937898();
        sub_29D69C6C0(v128, qword_2A1A2C008);
        v114 = v59;
        v129 = sub_29D937878();
        v130 = sub_29D93A298();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v147 = v132;
          *v131 = 136315394;
          *(v131 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v147);
          *(v131 + 12) = 2080;
          v133 = [v114 unsatisfiedRequirementIdentifiersDescription];
          v134 = v58;
          v135 = sub_29D939D68();
          v137 = v136;

          v138 = sub_29D6C2364(v135, v137, &v147);

          *(v131 + 14) = v138;
          _os_log_impl(&dword_29D677000, v129, v130, "[%s]: Unexpected unavailability requirements: %s", v131, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v132, -1, -1);
          MEMORY[0x29ED6BE30](v131, -1, -1);

          (*(v56 + 8))(v134, v141);
          goto LABEL_53;
        }

        goto LABEL_43;
      }
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v113 = sub_29D937898();
    sub_29D69C6C0(v113, qword_2A1A2C008);
    v114 = sub_29D937878();
    v115 = sub_29D93A298();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v147 = v117;
      *v116 = 136315138;
      *(v116 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v147);
      _os_log_impl(&dword_29D677000, v114, v115, "[%s]: no unsatisfied requirement identifiers", v116, 0xCu);
      sub_29D69417C(v117);
      MEMORY[0x29ED6BE30](v117, -1, -1);
      MEMORY[0x29ED6BE30](v116, -1, -1);
    }

LABEL_43:

    (*(v56 + 8))(v58, v55);
    goto LABEL_53;
  }

  (*(v31 + 32))(a3, v30, v14);
  v34 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  swift_storeEnumTagMultiPayload();
  v35 = *(*(v34 - 8) + 56);
  v36 = a3;
LABEL_3:
  v37 = 0;
  v38 = v34;
  return v35(v36, v37, 1, v38);
}

uint64_t sub_29D76AAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v38 - v9;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v5);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v39 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v38 - v17;
  v19 = sub_29D9346E8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = v38 - v27;
  v30 = v29;
  (*(v20 + 104))(v38 - v27, *MEMORY[0x29EDC1750]);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D93DDB0;
  *(v31 + 32) = a1;
  *(v31 + 40) = a2;
  v32 = qword_2A1A257A0;
  sub_29D935E88();
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_29D9334A8();
  v38[2] = v34;
  v38[3] = v33;
  v35 = sub_29D934358();
  (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v38[1] = sub_29D9334A8();
  (*(v20 + 16))(v25, v28, v30);
  sub_29D837E98();
  v36 = sub_29D934798();
  (*(*(v36 - 8) + 56))(v10, 0, 1, v36);
  sub_29D76C8F4(v18, v39);
  sub_29D934988();
  sub_29D76C884(v18, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  return (*(v20 + 8))(v28, v30);
}

uint64_t sub_29D76AF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v42 = v41 - v9;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v5);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v41 - v17;
  v19 = sub_29D9346E8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v27 = *MEMORY[0x29EDC1750];
  v29 = v41 - v28;
  v31 = v30;
  (*(v20 + 104))();
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29D93DDB0;
  *(v32 + 32) = a1;
  *(v32 + 40) = a2;
  sub_29D935E88();
  v33 = sub_29D934808();
  v41[2] = v34;
  v41[3] = v33;
  v35 = sub_29D934358();
  v36 = v18;
  (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v41[1] = sub_29D9334A8();
  v37 = v29;
  (*(v20 + 16))(v25, v29, v31);
  v38 = v42;
  sub_29D837E98();
  v39 = sub_29D934798();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  sub_29D76C8F4(v36, v15);
  sub_29D934988();
  sub_29D76C884(v36, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  return (*(v20 + 8))(v37, v31);
}

uint64_t sub_29D76B3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41[3] = a4;
  v41[4] = a3;
  v41[5] = a5;
  v7 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = v41 - v11;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v7);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = v41 - v20;
  v22 = sub_29D9346E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v28 = v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = v41 - v30;
  v33 = v32;
  (*(v23 + 104))(v41 - v30, *MEMORY[0x29EDC1758]);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_29D93DDB0;
  *(v34 + 32) = a1;
  *(v34 + 40) = a2;
  sub_29D935E88();
  v35 = sub_29D934828();
  v41[1] = v36;
  v41[2] = v35;
  v37 = sub_29D934358();
  (*(*(v37 - 8) + 56))(v21, 1, 1, v37);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v41[0] = v38;
  (*(v23 + 16))(v28, v31, v33);
  sub_29D837E98();
  v39 = sub_29D934798();
  (*(*(v39 - 8) + 56))(v12, 0, 1, v39);
  sub_29D76C8F4(v21, v18);
  sub_29D935E88();
  sub_29D934988();
  sub_29D76C884(v21, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  return (*(v23 + 8))(v31, v33);
}

uint64_t sub_29D76B7F8(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v36 = a1;
  v3 = sub_29D937118();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D937178();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D937158();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D9371A8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, v2, v19);
  v25 = (*(v20 + 88))(v24, v19);
  if (v25 == *MEMORY[0x29EDC2D70])
  {
    (*(v20 + 96))(v24, v19);
    (*(v14 + 32))(v18, v24, v13);
    sub_29D937108();
    v26 = sub_29D937188();
    (*(v8 + 8))(v12, v7);
    (*(v14 + 8))(v18, v13);
  }

  else if (v25 == *MEMORY[0x29EDC2D68])
  {
    (*(v20 + 96))(v24, v19);
    v28 = v34;
    v27 = v35;
    v29 = v32;
    (*(v34 + 32))(v32, v24, v35);
    sub_29D937108();
    v26 = sub_29D937188();
    (*(v8 + 8))(v12, v7);
    (*(v28 + 8))(v29, v27);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    return 0;
  }

  return v26;
}

void sub_29D76BBF0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = [a1 highestPriorityUnsatisfiedRequirement];
  if (v7)
  {

    v8 = *MEMORY[0x29EDBA668];
    if (sub_29D93A648())
    {

      sub_29D767AAC(a1, v6, a2);
    }

    else
    {
      v9 = *MEMORY[0x29EDBA548];
      v10 = sub_29D9371B8();
      sub_29D767AAC(v10, v6, a2);
    }
  }

  else
  {

    sub_29D767618(0, a2);
  }
}

uint64_t sub_29D76BD14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_29D76C988(0, &qword_2A17B4088, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction, MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D769888(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D76C884(v10, &qword_2A17B4088, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
    v17 = 1;
  }

  else
  {
    sub_29D76C3C0(v10, v16);
    sub_29D76C3C0(v16, a3);
    v17 = 0;
  }

  v18 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData(0);
  return (*(*(v18 - 8) + 56))(a3, v17, 1, v18);
}

uint64_t sub_29D76BEFC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1878];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D76BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D76C9EC();

  return MEMORY[0x2A1C61018](a1, a2, a3, v6);
}

uint64_t sub_29D76BFC4()
{
  sub_29D76C9EC();

  return sub_29D934D08();
}

id sub_29D76C034()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  result = [objc_opt_self() hypertensionEventType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29D6E3D70(inited);
    v3 = v2;
    swift_setDeallocating();
    v4 = *(inited + 16);
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D76C0EC(uint64_t a1)
{
  v2 = sub_29D76C294();

  return MEMORY[0x2A1C61000](a1, v2);
}

uint64_t sub_29D76C138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D76C294();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, v6);
}

unint64_t sub_29D76C1AC()
{
  result = qword_2A1A22BA8;
  if (!qword_2A1A22BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22BA8);
  }

  return result;
}

unint64_t sub_29D76C294()
{
  result = qword_2A1A22BA0;
  if (!qword_2A1A22BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22BA0);
  }

  return result;
}

uint64_t sub_29D76C378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D76C3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D76C424(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_29D76C4CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_29D939D68();
  v6 = v5;
  if (v4 == sub_29D939D68() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29D93AD78();
  }

  return v9 & 1;
}

uint64_t sub_29D76C55C(void *a1)
{
  v1 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v2 = sub_29D939F38();

  v18 = *MEMORY[0x29EDBA688];
  v17 = &v18;
  v3 = sub_29D76C424(sub_29D714870, v16, v2);
  if ((v3 & 1) == 0)
  {
    v18 = *MEMORY[0x29EDBA600];
    MEMORY[0x2A1C7C4A8](v3, v4);
    v15 = &v18;
    v6 = sub_29D76C424(sub_29D714870, v14, v2);
    if (v6)
    {

      v5 = [objc_opt_self() remoteDisabledLinkURL];
      goto LABEL_5;
    }

    v18 = *MEMORY[0x29EDBA5D8];
    MEMORY[0x2A1C7C4A8](v6, v7);
    v15 = &v18;
    v10 = sub_29D76C424(sub_29D714870, v14, v2);
    if (v10)
    {
    }

    else
    {
      v18 = *MEMORY[0x29EDBA5D0];
      MEMORY[0x2A1C7C4A8](v10, v11);
      v15 = &v18;
      v12 = sub_29D76C424(sub_29D714870, v14, v2);

      if ((v12 & 1) == 0)
      {
        if (qword_2A17B0D68 != -1)
        {
          swift_once();
        }

        v15 = 0xE000000000000000;
        return sub_29D9334A8();
      }
    }

    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v15 = 0xE000000000000000;
    return sub_29D9334A8();
  }

  v5 = [objc_opt_self() seedExpiredLinkURL];
LABEL_5:
  v8 = v5;
  v9 = sub_29D939D68();

  return v9;
}

uint64_t sub_29D76C884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D76C988(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D76C8F4(uint64_t a1, uint64_t a2)
{
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D76C988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D76C9EC()
{
  result = qword_2A1A22B98;
  if (!qword_2A1A22B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22B98);
  }

  return result;
}

uint64_t sub_29D76CA44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = *v3;
  v23 = a1;
  sub_29D76D048(0, &qword_2A17B4090, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC2EA0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v22 - v10;
  v12 = sub_29D9339F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[2];
  swift_getObjectType();
  sub_29D9339A8();
  sub_29D93A3F8();
  v19 = swift_allocObject();
  v20 = v22;
  v19[2] = v23;
  v19[3] = a2;
  v19[4] = v20;

  sub_29D93A5F8();

  (*(v7 + 8))(v11, v6);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_29D76CC84(char a1, void *a2, uint64_t (*a3)(void, void *))
{
  if (a1)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2C008);
    v7 = sub_29D937878();
    v8 = sub_29D93A2A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136446466;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, &v25);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D95FE80, &v25);
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]:Successfully set onboarding acknowledged setting", v9, 0x16u);
LABEL_10:
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    sub_29D69C6C0(v14, qword_2A1A2C008);
    v15 = a2;
    v7 = sub_29D937878();
    v16 = sub_29D93A288();

    if (os_log_type_enabled(v7, v16))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136446722;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v25);

      *(v9 + 4) = v19;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D95FE80, &v25);
      *(v9 + 22) = 2080;
      v20 = a2;
      sub_29D76D048(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
      v21 = sub_29D939DA8();
      v23 = sub_29D6C2364(v21, v22, &v25);

      *(v9 + 24) = v23;
      _os_log_impl(&dword_29D677000, v7, v16, "[%{public}s.%{public}s]: Failed to set onboarding acknowledged setting with error: %s", v9, 0x20u);
      goto LABEL_10;
    }
  }

  return a3(a1 & 1, a2);
}

uint64_t sub_29D76CFE0()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t sub_29D76D03C(char a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_29D76CC84(a1, a2, *(v2 + 16));
}

void sub_29D76D048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D76D0AC()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D934178();
  sub_29D6FD494(v6, qword_2A1A2C020);
  sub_29D69C6C0(v6, qword_2A1A2C020);
  sub_29D933FE8();
  sub_29D76FB80(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x29EDC3790], v7);
  (*(v1 + 104))(v5, *MEMORY[0x29EDC3898], v0);
  return sub_29D934158();
}

void *sub_29D76D2B4(__int16 a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v26 = *v2;
  v5 = sub_29D9341E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v9 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE508();
  v27 = v10;
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Heart36AtrialFibrillationPromotionGenerator_domain;
  if (qword_2A1A25760 != -1)
  {
    swift_once();
  }

  v16 = sub_29D934178();
  v17 = sub_29D69C6C0(v16, qword_2A1A2C020);
  (*(*(v16 - 8) + 16))(v3 + v15, v17, v16);
  *(v3 + OBJC_IVAR____TtC5Heart36AtrialFibrillationPromotionGenerator_result) = a1;
  v18 = v28;
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v5);
  v19 = (*(v6 + 80) + 18) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v6 + 32))(v21 + v19, v9, v5);
  *(v21 + v20) = v26;
  sub_29D6CE59C();
  sub_29D76FAE4(&qword_2A1A24AB0, sub_29D6CE59C);
  sub_29D938378();
  sub_29D76FAE4(&qword_2A1A24A00, sub_29D6CE508);
  v22 = v27;
  v23 = sub_29D938418();
  (*(v6 + 8))(v18, v5);
  (*(v25 + 8))(v14, v22);
  v3[2] = v23;
  return v3;
}

uint64_t sub_29D76D618@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_29D6D09E0(0);
  v7 = v6;
  v36 = *(v6 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29D937898();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v35, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D76D950(a1);
  sub_29D934D28();
  sub_29D935E88();
  v18 = sub_29D937878();
  v19 = sub_29D93A2A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v7;
    v21 = v20;
    v33 = swift_slowAlloc();
    v37 = v33;
    v38 = a2;
    *v21 = 136446466;
    swift_getMetatypeMetadata();
    v22 = sub_29D939DA8();
    v24 = a3;
    v25 = sub_29D6C2364(v22, v23, &v37);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = MEMORY[0x29ED6A340](v17, MEMORY[0x29EDC3A38]);
    v28 = sub_29D6C2364(v26, v27, &v37);
    a3 = v24;

    *(v21 + 14) = v28;
    _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s]: Returning these changes: %{public}s", v21, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v29, -1, -1);
    v30 = v21;
    v7 = v34;
    MEMORY[0x29ED6BE30](v30, -1, -1);
  }

  (*(v12 + 8))(v16, v35);
  v38 = v17;
  sub_29D6D07B0();
  sub_29D938338();
  sub_29D76FAE4(&qword_2A1A24A58, sub_29D6D09E0);
  v31 = sub_29D938418();
  result = (*(v36 + 8))(v11, v7);
  *a3 = v31;
  return result;
}

uint64_t sub_29D76D950(int a1)
{
  v112 = a1;
  v1 = sub_29D937898();
  v115 = *(v1 - 8);
  v116 = v1;
  v2 = *(v115 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v99 = &v98 - v8;
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v103 = &v98 - v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v101 = &v98 - v13;
  v14 = sub_29D9340F8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v111 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v102 = &v98 - v21;
  sub_29D6C36D8(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v110 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v109 = &v98 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = &v98 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v114 = &v98 - v37;
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v98 - v39;
  sub_29D76FB80(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v41 = *(v23 + 80);
  v42 = (v41 + 32) & ~v41;
  v107 = *(v23 + 72);
  v106 = v41;
  v108 = v43;
  v44 = swift_allocObject();
  sub_29D934188();
  sub_29D693E2C(v118, v118[3]);
  v117 = sub_29D76F854(0);
  sub_29D76F874(0, &qword_2A1A25048, sub_29D76F854);
  sub_29D939DA8();
  sub_29D934128();

  sub_29D69417C(v118);
  v45 = v42;
  sub_29D76FA1C(v44 + v42, v40, sub_29D6C36D8);
  sub_29D6C37D4(v40, v34);
  v46 = v15[6];
  v105 = v15 + 6;
  v104 = v46;
  if (v46(v34, 1, v14) == 1)
  {
    sub_29D76FA84(v34, sub_29D6C36D8);
    v113 = MEMORY[0x29EDCA190];
    v47 = v15;
  }

  else
  {
    v48 = v15;
    v49 = v15[4];
    v49(v102, v34, v14);
    v50 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_29D68F864(0, v50[2] + 1, 1, v50);
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = sub_29D68F864(v51 > 1, v52 + 1, 1, v50);
    }

    v47 = v48;
    v50[2] = v52 + 1;
    v53 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v113 = v50;
    v49(v50 + v53 + v48[9] * v52, v102, v14);
  }

  v54 = v103;
  v55 = v112;
  swift_setDeallocating();
  sub_29D76FA84(v44 + v45, sub_29D6C36D8);
  swift_deallocClassInstance();
  if (v55 > 1)
  {
    sub_29D934D28();
    v68 = sub_29D937878();
    v69 = sub_29D93A2A8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v118[0] = v71;
      *v70 = 136315394;
      v72 = sub_29D93AF08();
      v74 = sub_29D6C2364(v72, v73, v118);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D95FF00, v118);
      _os_log_impl(&dword_29D677000, v68, v69, "[%s.%s]: Promotion availability hidden, deleting feedItem", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v71, -1, -1);
      MEMORY[0x29ED6BE30](v70, -1, -1);
    }

    v67 = *(v115 + 8);
    v67(v54, v116);
    v75 = 1;
    v76 = v114;
  }

  else
  {
    v56 = v45;
    v57 = v14;
    v58 = v47;
    v59 = v101;
    sub_29D934D28();
    v60 = sub_29D937878();
    v61 = sub_29D93A2A8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v118[0] = v63;
      *v62 = 136315394;
      v64 = sub_29D93AF08();
      v66 = sub_29D6C2364(v64, v65, v118);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D95FF00, v118);
      _os_log_impl(&dword_29D677000, v60, v61, "[%s.%s]: Should show promotion, creating feedItem", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v63, -1, -1);
      MEMORY[0x29ED6BE30](v62, -1, -1);

      v67 = *(v115 + 8);
      v67(v101, v116);
    }

    else
    {

      v67 = *(v115 + 8);
      v67(v59, v116);
    }

    v76 = v114;
    sub_29D76E73C(v112, v114);
    v75 = 0;
    v47 = v58;
    v14 = v57;
    v45 = v56;
  }

  (v47[7])(v76, v75, 1, v14);
  v77 = swift_allocObject();
  sub_29D76FA1C(v76, v77 + v45, sub_29D6C36D8);
  v78 = v109;
  sub_29D76FA1C(v77 + v45, v109, sub_29D6C36D8);
  v79 = v110;
  sub_29D6C37D4(v78, v110);
  if (v104(v79, 1, v14) == 1)
  {
    sub_29D76FA84(v79, sub_29D6C36D8);
  }

  else
  {
    v80 = v45;
    v81 = v47[4];
    v81(v111, v79, v14);
    v82 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_29D68F864(0, *(v82 + 2) + 1, 1, v82);
    }

    v84 = *(v82 + 2);
    v83 = *(v82 + 3);
    if (v84 >= v83 >> 1)
    {
      v82 = sub_29D68F864(v83 > 1, v84 + 1, 1, v82);
    }

    *(v82 + 2) = v84 + 1;
    v81(&v82[((*(v47 + 80) + 32) & ~*(v47 + 80)) + v47[9] * v84], v111, v14);
    v76 = v114;
    v45 = v80;
  }

  swift_setDeallocating();
  sub_29D76FA84(v77 + v45, sub_29D6C36D8);
  swift_deallocClassInstance();
  v85 = sub_29D939F58();

  v86 = v99;
  sub_29D934D28();
  sub_29D935E88();
  v87 = sub_29D937878();
  v88 = sub_29D93A2A8();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v118[0] = v90;
    *v89 = 136315650;
    v91 = sub_29D93AF08();
    v93 = sub_29D6C2364(v91, v92, v118);

    *(v89 + 4) = v93;
    *(v89 + 12) = 2080;
    *(v89 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D95FF00, v118);
    *(v89 + 22) = 2080;
    v94 = MEMORY[0x29ED6A340](v85, MEMORY[0x29EDC3A38]);
    v96 = sub_29D6C2364(v94, v95, v118);

    *(v89 + 24) = v96;
    _os_log_impl(&dword_29D677000, v87, v88, "%s.%s]: Computed needed PluginFeedItemChanges: %s)", v89, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v90, -1, -1);
    MEMORY[0x29ED6BE30](v89, -1, -1);
  }

  v67(v86, v116);
  sub_29D76FA84(v76, sub_29D6C36D8);
  return v85;
}

id sub_29D76E73C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v82 = a1;
  v2 = sub_29D9342D8();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9342A8();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v70 = &v68 - v12;
  sub_29D76F8C0(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v74 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v84 = &v68 - v19;
  v77 = sub_29D934A08();
  v20 = *(*(v77 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v77, v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D934A18();
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v87 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_29D76F854(0);
  v88[0] = v81;
  v80 = sub_29D76F874(0, &qword_2A1A25048, sub_29D76F854);
  v28 = sub_29D939DA8();
  v78 = v29;
  v79 = v28;
  sub_29D76F8F4(0, v29);
  v31 = &v23[v30[12]];
  v32 = &v23[v30[16]];
  v33 = v30[20];
  v34 = HRHeartRhythmUIFrameworkBundle();
  sub_29D934788();
  v35 = HRHeartRhythmUIFrameworkBundle();
  v36 = sub_29D9334A8();
  v38 = v37;

  *v31 = v36;
  v31[1] = v38;
  v39 = HRHeartRhythmUIFrameworkBundle();
  v40 = sub_29D9334A8();
  v42 = v41;

  *v32 = v40;
  v32[1] = v42;
  sub_29D9346C8();
  v43 = *MEMORY[0x29EDC17D0];
  v44 = sub_29D934748();
  (*(*(v44 - 8) + 104))(&v23[v33], v43, v44);
  v45 = *MEMORY[0x29EDC1A08];
  v46 = sub_29D9349F8();
  (*(*(v46 - 8) + 104))(v23, v45, v46);
  swift_storeEnumTagMultiPayload();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9349D8();
  v47 = v84;
  if (v82)
  {
    v49 = v85;
    v48 = v86;
    if (v82 != 1)
    {
      v51 = 1;
      goto LABEL_9;
    }

    v50 = MEMORY[0x29EDC3900];
  }

  else
  {
    v50 = MEMORY[0x29EDC3908];
    v49 = v85;
    v48 = v86;
  }

  (*(v49 + 104))(v84, *v50, v48);
  v51 = 0;
LABEL_9:
  (*(v49 + 56))(v47, v51, 1, v48);
  v88[0] = v81;
  sub_29D939DA8();
  v52 = sub_29D76F0F8(v47);
  v54 = v53;
  v55 = sub_29D933FE8();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    sub_29D872AC4(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for AtrialFibrillationPromotionTileActionHandler();
  sub_29D76FAE4(&qword_2A17B40A0, type metadata accessor for AtrialFibrillationPromotionTileActionHandler);
  v56 = v87;
  sub_29D934038();

  sub_29D71847C(v52, v54);

  result = [objc_opt_self() atrialFibrillationEventType];
  if (result)
  {
    v58 = result;
    v59 = sub_29D934238();

    v60 = sub_29D9340C8();
    sub_29D7AF194(v59);

    v60(v88, 0);
    v61 = v84;
    v62 = v74;
    sub_29D76FA1C(v84, v74, sub_29D76F8C0);
    v64 = v85;
    v63 = v86;
    if ((*(v85 + 48))(v62, 1, v86) == 1)
    {
      sub_29D76FA84(v61, sub_29D76F8C0);
      (*(v75 + 8))(v56, v76);
      return sub_29D76FA84(v62, sub_29D76F8C0);
    }

    else
    {
      v65 = v70;
      (*(v64 + 32))(v70, v62, v63);
      (*(v64 + 16))(v69, v65, v63);
      v66 = v71;
      sub_29D9342E8();
      v67 = v73;
      sub_29D934068();
      (*(v72 + 8))(v66, v67);
      (*(v64 + 8))(v65, v63);
      sub_29D76FA84(v61, sub_29D76F8C0);
      return (*(v75 + 8))(v56, v76);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D76F0F8(uint64_t a1)
{
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76F8C0(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9342A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v37 - v21;
  sub_29D76FA1C(a1, v12, sub_29D76F8C0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D76FA84(v12, sub_29D76F8C0);
    sub_29D934D28();
    v23 = sub_29D937878();
    v24 = sub_29D93A288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315394;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &v38);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_29D6C2364(0x6174614472657375, 0xEF293A6874697728, &v38);
      _os_log_impl(&dword_29D677000, v23, v24, "%s.%s]: Feed item prominence is nil.", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    (*(v14 + 104))(v19, *MEMORY[0x29EDC3908], v13);
    sub_29D76FAE4(&qword_2A17B40A8, MEMORY[0x29EDC3918]);
    sub_29D939EB8();
    sub_29D939EB8();
    v30 = *(v14 + 8);
    v30(v19, v13);
    v31 = v38 != v37[2];
    v32 = sub_29D933108();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    sub_29D9330F8();
    LOBYTE(v38) = v31;
    sub_29D76FB2C();
    v36 = sub_29D9330E8();
    v30(v22, v13);

    return v36;
  }
}

uint64_t sub_29D76F598()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC5Heart36AtrialFibrillationPromotionGenerator_domain;
  v3 = sub_29D934178();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AtrialFibrillationPromotionGenerator()
{
  result = qword_2A1A25108;
  if (!qword_2A1A25108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D76F690()
{
  result = sub_29D934178();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D76F738@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart36AtrialFibrillationPromotionGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D76F7B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 18) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);

  return sub_29D76D618(v5, v4, a1);
}

uint64_t sub_29D76F874(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D76F8F4(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B4098)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D934798();
    sub_29D934748();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B4098);
    }
  }
}

uint64_t sub_29D76FA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D76FA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D76FAE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D76FB2C()
{
  result = qword_2A17B40B0;
  if (!qword_2A17B40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B40B0);
  }

  return result;
}

void sub_29D76FB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AFibBurdenGetStartedDataSource()
{
  result = qword_2A17B40D8;
  if (!qword_2A17B40D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D76FC80()
{
  v1 = v0;
  v2 = *(v0 + qword_2A17B40C8);
  v3 = *(v0 + qword_2A17B40C8 + 8);
  v4 = sub_29D936AA8();
  if (*(v4 + 16) && (v5 = sub_29D6907F0(v2, v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);
  }

  else
  {

    v7 = 2;
  }

  v8 = *(v1 + qword_2A17B40B8);
  v9 = *(v1 + qword_2A17B40B8 + 8);
  v10 = sub_29D936AA8();
  if (*(v10 + 16) && (v11 = sub_29D6907F0(v8, v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + v11);
  }

  else
  {

    v13 = 2;
  }

  return v7 | (v13 << 8);
}

void sub_29D76FD58()
{
  v1 = (v0 + qword_2A17B40B8);
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x800000029D9601F0;
  v2 = (v0 + qword_2A17B40C0);
  *v2 = 0xD000000000000021;
  v2[1] = 0x800000029D960210;
  v3 = (v0 + qword_2A17B40C8);
  *v3 = 0xD000000000000014;
  v3[1] = 0x800000029D960240;
  v4 = (v0 + qword_2A17B40D0);
  *v4 = 0xD000000000000017;
  v4[1] = 0x800000029D960260;
  v5 = MEMORY[0x29EDC9E90];
  sub_29D7715B0(0, &qword_2A17B40F0, MEMORY[0x29EDC21E8], MEMORY[0x29EDC9E90]);
  v6 = *(sub_29D935928() - 8);
  v43 = *(v6 + 72);
  v44 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93F680;
  sub_29D7715B0(0, &qword_2A17B40F8, MEMORY[0x29EDC21E0], v5);
  v7 = sub_29D935908();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v46 = *(v8 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93F680;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v45 = v4;
  v54 = v7;
  v55 = v8;
  sub_29D9334A8();
  v11 = v1[1];
  v49 = *v1;
  sub_29D7715B0(0, &qword_2A17B4100, MEMORY[0x29EDC21D8], MEMORY[0x29EDC9E90]);
  v12 = *(sub_29D9358E8() - 8);
  v52 = *(v12 + 72);
  v51 = *(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v13 = *v2;
  v14 = v2[1];
  sub_29D935E88();
  sub_29D935E88();
  sub_29D9358D8();
  sub_29D88BBC8(&unk_2A243CFF0);
  v15 = sub_29D939F18();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (!v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = v10 + v9;
  sub_29D6AA360(&unk_2A243D010);
  sub_29D939D68();

  sub_29D9358F8();
  v50 = *MEMORY[0x29EDC21D0];
  v48 = *(v55 + 104);
  v48(v10 + v9);
  sub_29D9334A8();
  v18 = *v2;
  v19 = v2[1];
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v20 = *v1;
  v21 = v1[1];
  sub_29D935E88();
  sub_29D935E88();
  sub_29D9358D8();
  sub_29D88BBC8(&unk_2A243D060);
  v22 = sub_29D939F18();

  v23 = HKUIJoinStringsForAutomationIdentifier();

  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_29D6AA360(&unk_2A243D080);
  sub_29D939D68();

  sub_29D9358F8();
  (v48)(v17 + v46, v50, v7);
  sub_29D935918();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29D93F680;
  sub_29D9334A8();
  v25 = v3[1];
  v47 = *v3;
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v26 = *v45;
  v27 = v45[1];
  sub_29D935E88();
  sub_29D935E88();
  sub_29D9358D8();
  sub_29D88BBC8(&unk_2A243D0D0);
  v28 = sub_29D939F18();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (!v29)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = v24 + v9;
  sub_29D6AA360(&unk_2A243D0F0);
  sub_29D939D68();

  sub_29D9358F8();
  (v48)(v24 + v9, v50, v7);
  v42 = 0xE000000000000000;
  sub_29D9334A8();
  v31 = v45[1];
  v53 = *v45;
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v32 = *v3;
  v33 = v3[1];
  sub_29D935E88();
  sub_29D935E88();
  sub_29D9358D8();
  sub_29D88BBC8(&unk_2A243D140);
  v34 = sub_29D939F18();

  v35 = HKUIJoinStringsForAutomationIdentifier();

  if (v35)
  {
    sub_29D6AA360(&unk_2A243D160);
    v36 = sub_29D939D68();
    v38 = v37;

    LOBYTE(v42) = 1;
    sub_29D9358F8();
    (v48)(v30 + v46, v50, v54);
    sub_29D935918();
    [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    v39 = sub_29D936878();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    sub_29D936868();
    sub_29D936AD8();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_29D770748()
{
  v1 = *(v0 + qword_2A17B40B8 + 8);

  v2 = *(v0 + qword_2A17B40C0 + 8);

  v3 = *(v0 + qword_2A17B40C8 + 8);

  v4 = *(v0 + qword_2A17B40D0 + 8);
}

uint64_t sub_29D7707B8()
{
  v0 = sub_29D936AE8();
  v1 = *(v0 + qword_2A17B40B8 + 8);

  v2 = *(v0 + qword_2A17B40C0 + 8);

  v3 = *(v0 + qword_2A17B40C8 + 8);

  v4 = *(v0 + qword_2A17B40D0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_29D770864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D7715B0(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = v39 - v7;
  sub_29D771308();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_29D933DA8();
  v16 = *(v10 + 56);
  *v14 = v15;
  v17 = sub_29D934B78();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v14 + v16, a1, v17);
  if ((*(v18 + 88))(v14 + v16, v17) != *MEMORY[0x29EDC1B58])
  {
    goto LABEL_8;
  }

  if (v15 == 1)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v25 = sub_29D937B88();
    v26 = MEMORY[0x29EDC7800];
    *(a2 + 24) = v25;
    *(a2 + 32) = v26;
    sub_29D693F78(a2);
    sub_29D937B68();
    sub_29D935E88();
    sub_29D937B48();
    sub_29D718DF8();
    v27 = *MEMORY[0x29EDC80E0];
    v28 = *MEMORY[0x29EDC76E0];
    sub_29D93A658();
    v29 = sub_29D937A98();
    sub_29D937A58();
    v29(v40, 0);
    v30 = [objc_opt_self() labelColor];
    v31 = sub_29D937A98();
    sub_29D937A68();
    v31(v40, 0);
    goto LABEL_13;
  }

  if (v15)
  {
LABEL_8:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_29D771370(v14);
  }

  v39[3] = "TARTED_AFIB_DIAGNOSIS_TITLE";
  v19 = sub_29D933AA8();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v39[1] = *algn_2A17D0EB8;
  v39[2] = qword_2A17D0EB0;
  sub_29D7715B0(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D93DDB0;
  v40[0] = *MEMORY[0x29EDBAFA8];
  v21 = sub_29D93AD38();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x29EDC99B0];
  *(v20 + 64) = sub_29D69AD24();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_29D9334A8();
  if (*(v20 + 16))
  {
    sub_29D939D78();
  }

  sub_29D6940F0(v8);
  v32 = sub_29D937B88();
  v33 = MEMORY[0x29EDC7800];
  *(a2 + 24) = v32;
  *(a2 + 32) = v33;
  sub_29D693F78(a2);
  sub_29D937B68();
  sub_29D935E88();
  sub_29D937B48();
  sub_29D718DF8();
  v34 = *MEMORY[0x29EDC80E0];
  v35 = *MEMORY[0x29EDC76E0];
  sub_29D93A658();
  v36 = sub_29D937A98();
  sub_29D937A58();
  v36(v40, 0);
  v37 = [objc_opt_self() labelColor];
  v38 = sub_29D937A98();
  sub_29D937A68();
  v38(v40, 0);
LABEL_13:

  return (*(v18 + 8))(v14 + v16, v17);
}

id sub_29D770EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v26[0] = a1;
  v3 = sub_29D937A28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D937B88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B58();
  v15 = sub_29D937A98();
  sub_29D937A38();
  v15(v28, 0);
  v16 = sub_29D937A98();
  sub_29D937A18();
  v16(v28, 0);
  (*(v4 + 104))(v8, *MEMORY[0x29EDC77E0], v3);
  v17 = sub_29D937A98();
  sub_29D937A78();
  v17(v28, 0);
  sub_29D935E88();
  sub_29D937B48();
  v18 = [objc_opt_self() tintColor];
  v19 = sub_29D937A98();
  sub_29D937A68();
  v19(v28, 0);
  v20 = [objc_allocWithZone(MEMORY[0x29EDC7D20]) init];
  v28[3] = v9;
  v28[4] = MEMORY[0x29EDC7800];
  v21 = sub_29D693F78(v28);
  (*(v10 + 16))(v21, v14, v9);
  MEMORY[0x29ED6A590](v28);
  v22 = objc_allocWithZone(MEMORY[0x29EDC7D28]);
  v23 = v20;
  v24 = [v22 initWithTarget:v26[1] action:v27];
  [v23 addGestureRecognizer_];

  (*(v10 + 8))(v14, v9);
  return v23;
}

uint64_t sub_29D7711CC()
{
  result = sub_29D936AB8();
  if (result)
  {
    v1 = result;
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = v3;
      if ((*(v3 + 16))(ObjectType, v3))
      {
        v6 = v5;
        v7 = swift_getObjectType();
        (*(v6 + 24))(v1, v4, v7, v6);
        sub_29D936978();
      }
    }

    return sub_29D936978();
  }

  return result;
}

uint64_t sub_29D7712A8()
{

  sub_29D7711CC();
}

void sub_29D771308()
{
  if (!qword_2A17B40E8)
  {
    sub_29D934B78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B40E8);
    }
  }
}

uint64_t sub_29D771370(uint64_t a1)
{
  sub_29D771308();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29D7713CC(uint64_t a1)
{
  sub_29D771308();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_29D933DA8();
  v9 = *(v3 + 56);
  *v7 = v8;
  v10 = sub_29D934B78();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7 + v9, a1, v10);
  if ((*(v11 + 88))(v7 + v9, v10) == *MEMORY[0x29EDC1B50] && v8 == 1)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v14 = sub_29D9334A8();
    v16 = sub_29D770EA8(v14, v15, sel_learnMoreButtonTapped);

    (*(v11 + 8))(v7 + v9, v10);
    return v16;
  }

  else
  {
    sub_29D771370(v7);
    return 0;
  }
}

void sub_29D7715B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D771614(uint64_t a1)
{
  v2 = v1;
  sub_29D71BF90();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_context;
  v12 = sub_29D936378();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v2 + v11, a1, v12);
  v14 = sub_29D936338();
  v15 = [v14 profileIdentifier];
  v16 = [v15 type];

  if (v16 != 1)
  {

    goto LABEL_5;
  }

  v17 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v14];

  if (!v17)
  {
LABEL_5:
    type metadata accessor for NotOnboardedIsOnboardedProvider();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    LOBYTE(v24) = 0;
    sub_29D938338();
    sub_29D772D40(&qword_2A1A22340, sub_29D71BF90);
    v20 = sub_29D938418();
    (*(v13 + 8))(a1, v12);
    (*(v6 + 8))(v10, v5);
    *(v18 + 24) = v20;
    v19 = &off_2A24475D0;
    goto LABEL_6;
  }

  (*(v13 + 8))(a1, v12);
  v25 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v26 = MEMORY[0x29EDC2EA8];
  *&v24 = v17;
  type metadata accessor for FeatureStatusIsOnboardedProvider();
  v18 = swift_allocObject();
  sub_29D6959E8(&v24, v18 + 16);
  v19 = &off_2A24475E8;
LABEL_6:
  v21 = (v2 + OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_isOnboardedProvider);
  *v21 = v18;
  v21[1] = v19;
  return v2;
}

id sub_29D7718EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D936BE8();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D936D58();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v51 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D936D68();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D772A5C(0, &qword_2A17B2E28, &qword_2A17B2E30, MEMORY[0x29EDC22E8], MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D946C90;
  v18 = objc_opt_self();
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = result;
  v21 = v1 + OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_isOnboardedProvider;
  v23 = *(v1 + OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_isOnboardedProvider);
  v22 = *(v21 + 8);
  *(v17 + 56) = &_s36AFibBurdenChartOrOnboardingComponentVN;
  *(v17 + 64) = sub_29D772AC4();
  v24 = swift_allocObject();
  *(v17 + 32) = v24;
  *(v24 + 56) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 88) = 0;
  *(v24 + 16) = v20;
  *(v24 + 24) = 0xD00000000000001BLL;
  *(v24 + 32) = 0x800000029D960390;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  swift_unknownObjectRetain_n();
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v43 = v7;
  *(v17 + 96) = sub_29D9360E8();
  *(v17 + 104) = sub_29D772D40(&qword_2A17B4150, MEMORY[0x29EDC25F8]);
  sub_29D693F78((v17 + 72));
  sub_29D9360D8();
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v42 = a1;
  sub_29D772750(&unk_2A243D920);
  *(v17 + 136) = sub_29D9361F8();
  *(v17 + 144) = sub_29D772D40(&qword_2A17B4158, MEMORY[0x29EDC2638]);
  sub_29D693F78((v17 + 112));
  sub_29D9361D8();
  v25 = swift_allocObject();
  v46 = xmmword_29D93F680;
  *(v25 + 16) = xmmword_29D93F680;
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = result;
  *(v25 + 56) = &_s37AFibBurdenLifeFactorsPlatterComponentVN;
  *(v25 + 64) = sub_29D772B18();
  *(v25 + 32) = v26;
  *(v25 + 40) = 0xD00000000000001CLL;
  *(v25 + 48) = 0x800000029D9603B0;
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = result;
  swift_getObjectType();
  sub_29D8CED54(v27, v23, 0, v22, &v54);
  *(v25 + 96) = &_s28AFibBurdenEducationComponentVN;
  *(v25 + 104) = sub_29D71C0F0();
  v28 = swift_allocObject();
  *(v25 + 72) = v28;
  v29 = v55[0];
  v28[1] = v54;
  v28[2] = v29;
  *(v28 + 41) = *(v55 + 9);
  v30 = sub_29D9362F8();
  *(v17 + 176) = v30;
  v31 = sub_29D772D40(&qword_2A17B4168, MEMORY[0x29EDC26C8]);
  *(v17 + 184) = v31;
  sub_29D693F78((v17 + 152));
  sub_29D936288();
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v17 + 216) = sub_29D936258();
  *(v17 + 224) = sub_29D772D40(&qword_2A17B2E48, MEMORY[0x29EDC2668]);
  sub_29D693F78((v17 + 192));
  sub_29D936238();
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = result;
  v41 = v31;
  sub_29D772378(result, (v17 + 232));

  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v30;
  *v16 = result;
  (*(v47 + 104))(v16, *MEMORY[0x29EDC2B00], v48);
  sub_29D9360F8();
  (*(v49 + 104))(v51, *MEMORY[0x29EDC2AF0], v50);
  *(v17 + 296) = sub_29D936128();
  *(v17 + 304) = sub_29D772D40(&qword_2A17B4170, MEMORY[0x29EDC2610]);
  sub_29D693F78((v17 + 272));
  sub_29D936118();
  sub_29D936178();
  v34 = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = v46;
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = v34;
  *(v35 + 56) = sub_29D936078();
  *(v35 + 64) = sub_29D772D40(&qword_2A17B4178, MEMORY[0x29EDC25B8]);
  sub_29D693F78((v35 + 32));
  sub_29D936068();
  sub_29D9361A8();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29D946CA0;
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_29D9362C8();
  *(v36 + 56) = sub_29D9362D8();
  *(v36 + 64) = sub_29D772D40(&qword_2A17B4180, MEMORY[0x29EDC26B8]);
  sub_29D693F78((v36 + 32));
  sub_29D9362A8();
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  *(v36 + 96) = &_s22AFibBurdenPDFComponentVN;
  *(v36 + 104) = sub_29D772B6C();
  v37 = swift_allocObject();
  *(v36 + 72) = v37;
  strcpy((v37 + 16), "AFibBurdenPDF");
  *(v37 + 30) = -4864;
  *(v37 + 48) = 0u;
  *(v37 + 64) = 0;
  *(v37 + 32) = 0u;
  sub_29D772BC0(v52, v37 + 32);
  result = [v18 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v38 = result;
  *(v36 + 136) = &_s34AFibBurdenDisclosureItemsComponentVN;
  *(v36 + 144) = sub_29D772C50();
  *(v36 + 112) = v38;
  *(v36 + 120) = 0xD000000000000019;
  *(v36 + 128) = 0x800000029D960400;
  result = [v18 _quantityTypeWithCode_];
  if (result)
  {
    (*(v44 + 104))(v43, *MEMORY[0x29EDC2A38], v45);
    *(v36 + 176) = sub_29D936278();
    *(v36 + 184) = sub_29D772D40(&qword_2A17B4198, MEMORY[0x29EDC2678]);
    sub_29D693F78((v36 + 152));
    sub_29D936268();
    *(v35 + 96) = sub_29D936298();
    *(v35 + 104) = sub_29D772D40(&qword_2A17B41A0, MEMORY[0x29EDC26A0]);
    sub_29D693F78((v35 + 72));
    sub_29D936288();
    v39 = v41;
    *(v17 + 336) = v40;
    *(v17 + 344) = v39;
    sub_29D693F78((v17 + 312));
    sub_29D936288();
    return sub_29D9360B8();
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_29D772378@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D69567C(0, &qword_2A17B4138, 0x29EDBA0A8);
  sub_29D772A5C(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  sub_29D934528();
  v5 = sub_29D934518();
  v7 = v6;
  v8 = MEMORY[0x29EDC99B0];
  *(v4 + 56) = MEMORY[0x29EDC99B0];
  v9 = sub_29D69AD24();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = 0xD00000000000001BLL;
  *(v4 + 80) = 0x800000029D95AB80;
  sub_29D93A1C8();
  a2[3] = sub_29D936018();
  a2[4] = sub_29D772D40(&qword_2A17B4140, MEMORY[0x29EDC2590]);
  sub_29D693F78(a2);
  v10 = a1;
  return sub_29D935FF8();
}

uint64_t sub_29D7724F8()
{
  v1 = OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_context;
  v2 = sub_29D936378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_isOnboardedProvider);
  sub_29D936978();
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenDataTypeDetailConfigurationProvider()
{
  result = qword_2A17B4118;
  if (!qword_2A17B4118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7725F8()
{
  result = sub_29D936378();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D7726E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_29D93AE58();
  MEMORY[0x29ED6B260](a1);
  v4 = sub_29D93AE98();

  return sub_29D692F58(a1, v4);
}

unint64_t sub_29D772750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D772CA4();
    v3 = sub_29D93ABA8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_29D7726E4(v5);
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29D772820(void *a1)
{
  v2 = sub_29D93A378();
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  v3 = v2;
  sub_29D93A3B8();
  sub_29D6945AC(v11, v9);
  v4 = v3;
  sub_29D73460C(v4, v9, v10);
  sub_29D7728FC(v10, v9);
  sub_29D772958();
  v6 = objc_allocWithZone(v5);
  v7 = sub_29D938CF8();
  [a1 showViewController:v7 sender:0];

  sub_29D772A08(v10);
  return sub_29D69417C(v11);
}

void sub_29D772958()
{
  if (!qword_2A17B4128)
  {
    sub_29D7729B4();
    v0 = sub_29D938D28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4128);
    }
  }
}

unint64_t sub_29D7729B4()
{
  result = qword_2A17B4130;
  if (!qword_2A17B4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4130);
  }

  return result;
}

void sub_29D772A5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_29D772AC4()
{
  result = qword_2A17B4148;
  if (!qword_2A17B4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4148);
  }

  return result;
}

unint64_t sub_29D772B18()
{
  result = qword_2A17B4160;
  if (!qword_2A17B4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4160);
  }

  return result;
}

unint64_t sub_29D772B6C()
{
  result = qword_2A17B4188;
  if (!qword_2A17B4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4188);
  }

  return result;
}

uint64_t sub_29D772BC0(uint64_t a1, uint64_t a2)
{
  sub_29D772A5C(0, &qword_2A1A246D8, &qword_2A1A246E0, MEMORY[0x29EDC2D90], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D772C50()
{
  result = qword_2A17B4190;
  if (!qword_2A17B4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4190);
  }

  return result;
}

void sub_29D772CA4()
{
  if (!qword_2A17B41A8)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29D772D40(&unk_2A17B37E0, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B41A8);
    }
  }
}

uint64_t sub_29D772D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for OnboardingCollectionViewControllerWithCancelButton()
{
  result = qword_2A17B41B0;
  if (!qword_2A17B41B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D772E14(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for OnboardingCollectionViewControllerWithCancelButton();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
}

id sub_29D772F0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingCollectionViewControllerWithCancelButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D772F4C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AtrialFibrillationPromotionTileActionHandler()
{
  result = qword_2A17B41C8;
  if (!qword_2A17B41C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D773040()
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = v0;
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    swift_getObjectType();
    sub_29D773A90();
    v7 = sub_29D939DA8();
    v9 = sub_29D6C2364(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0x2928706154646964, 0xE800000000000000, &v10);
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s.%{public}s] On-boarding button tapped", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  sub_29D7731F0();
}

void sub_29D7731F0()
{
  v1 = sub_29D933CE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D936638();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  v32 = *(v8 + 8);
  v32(v12, v7);
  sub_29D693E2C(v34, v34[3]);
  v13 = sub_29D936588();
  sub_29D933C88();
  v14 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v15 = sub_29D933BB8();
  v16 = [v14 initWithCalendar_];

  (*(v2 + 8))(v6, v1);
  v17 = [objc_allocWithZone(MEMORY[0x29EDC52B0]) initWithOnboardingType:0 isFirstTimeOnboarding:1 healthStore:v13 dateCache:v16 provenance:3 delegate:v0];

  sub_29D69417C(v34);
  v18 = *&v0[qword_2A17B41C0];
  *&v0[qword_2A17B41C0] = v17;
  v19 = v17;

  if (v19 && (v20 = [v19 onboardingNavigationController], v19, v20))
  {
    [v20 setModalInPresentation_];
    sub_29D936B88();
    v21 = sub_29D936618();
    v32(v12, v7);
    [v21 showViewController:v20 sender:0];
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = v0;
    v24 = sub_29D937878();
    v25 = sub_29D93A298();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29D773A90();
      v28 = sub_29D939DA8();
      v30 = sub_29D6C2364(v28, v29, v34);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95AC80, v34);
      _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s.%{public}s] On-boarding navigation controller not initialized", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }
  }
}

uint64_t sub_29D773634(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  *&v9[qword_2A17B41C0] = 0;
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D773750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AtrialFibrillationPromotionTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7737A4(uint64_t a1)
{
  v1 = *(a1 + qword_2A17B41C0);
  *(a1 + qword_2A17B41C0) = 0;
  return MEMORY[0x2A1C71028]();
}

void sub_29D7737B8()
{
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + qword_2A17B41C0);
  *(v0 + qword_2A17B41C0) = 0;

  sub_29D936B88();
  v8 = sub_29D936618();
  (*(v2 + 8))(v6, v1);
  v9 = [v8 tabBarController];

  if (v9)
  {
    v10 = [objc_opt_self() atrialFibrillationEventType];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for AtrialFibrillationPromotionTileActionHandler();
      sub_29D773A48(&qword_2A17B40A0, type metadata accessor for AtrialFibrillationPromotionTileActionHandler);
      v12 = sub_29D936AF8();
      if (v12)
      {
        v13 = v12;
        sub_29D74E500(v12, 0);

        v9 = v11;
        v11 = v13;
      }

      v9 = v11;
    }
  }
}

void sub_29D773970(void *a1)
{
  v1 = a1;
  sub_29D7737B8();
}

uint64_t sub_29D773A48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D773A90()
{
  result = qword_2A17B41F0;
  if (!qword_2A17B41F0)
  {
    type metadata accessor for AtrialFibrillationPromotionTileActionHandler();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B41F0);
  }

  return result;
}

id sub_29D773AD8()
{
  [*(*sub_29D693E2C(&v0[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider] *&v0[OBJC:sel_removeHeartRhythmAvailabilityObserver_ IVAR:v0 :? :? :? TtC5Heart36TachycardiaAdvertisableFeatureSource:?heartSettingsUtilityProvider + 24]) + 16)];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TachycardiaAdvertisableFeatureSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TachycardiaAdvertisableFeatureSource()
{
  result = qword_2A17B4218;
  if (!qword_2A17B4218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D773CB8()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D9334A8();
  v3 = v2;
  v4 = sub_29D9334A8();
  v6 = v5;
  v7 = v0;
  v8 = sub_29D939D28();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:{v7, 0xE000000000000000}];

  return MEMORY[0x2A1C60BA0](v1, v3, v4, v6, v9);
}

void sub_29D773E6C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_29D7747CC(a2, a3);
  }
}

uint64_t sub_29D773F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v8 = sub_29D939968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D939998();
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v27, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v5 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);

  sub_29D939988();
  v28 = MEMORY[0x29EDCA190];
  sub_29D7758A0(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D7758A0(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v18, v13, v21);
  _Block_release(v21);
  (*(v9 + 8))(v13, v8);
  (*(v14 + 8))(v18, v27);
}

void *sub_29D774208(uint64_t a1, void (*a2)(char *))
{
  sub_29D7758F8(0, &qword_2A17B1710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v9 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_29D934928();
    sub_29D7758A0(&qword_2A17B1718, MEMORY[0x29EDC1918]);
    sub_29D93AEA8();
    a2(v7);
    return sub_29D775994(v7, &qword_2A17B1710);
  }

  return result;
}

uint64_t sub_29D774330(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_29D939968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D939998();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v24, v16);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v4 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  aBlock[4] = sub_29D7758E8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2444848;
  v21 = _Block_copy(aBlock);

  sub_29D939988();
  v25 = MEMORY[0x29EDCA190];
  sub_29D7758A0(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D7758A0(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v18, v13, v21);
  _Block_release(v21);
  (*(v9 + 8))(v13, v8);
  (*(v14 + 8))(v18, v24);
}

void *sub_29D77464C(uint64_t a1, char a2, void (*a3)(char *))
{
  sub_29D7758F8(0, &qword_2A17B1710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    if (a2)
    {
      [objc_opt_self() tachycardiaThresholdHeartRate];
      v11 = sub_29D93A138();
    }

    else
    {
      v11 = 0;
    }

    [objc_opt_self() setTachycardiaThresholdHeartRate_];

    sub_29D934928();
    sub_29D7758A0(&qword_2A17B1718, MEMORY[0x29EDC1918]);
    sub_29D93AEA8();
    a3(v9);

    return sub_29D775994(v9, &qword_2A17B1710);
  }

  return result;
}

uint64_t sub_29D7747CC(void (*a1)(uint64_t), uint64_t a2)
{
  v80 = a2;
  v81 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29D937898();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v74 = &v71 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v71 = &v71 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v72 = &v71 - v17;
  sub_29D7758F8(0, &qword_2A17B3A90);
  v79 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v78 = &v71 - v21;
  v22 = sub_29D9339F8();
  v73 = *(v22 - 8);
  v23 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D933A58();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = (v2 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider);
  v34 = *sub_29D693E2C((v2 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider), *(v2 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider + 24)) + OBJC_IVAR____TtC5Heart40AdvertisableFeatureHeartSettingsProvider_activeDeviceSource;
  sub_29D852AAC();
  if (!v35)
  {
    goto LABEL_8;
  }

  v36 = v35;
  v37 = HKNRDeviceCapabilityHeartRateV2();
  sub_29D933A38();

  v38 = sub_29D933A28();
  (*(v28 + 8))(v32, v27);
  v39 = [v36 supportsCapability_];

  if (!v39)
  {
LABEL_8:
    sub_29D937848();
    v56 = sub_29D937878();
    v57 = sub_29D93A2A8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v82 = v59;
      *v58 = 136315394;
      v60 = sub_29D93AF08();
      v62 = sub_29D6C2364(v60, v61, &v82);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v82);
      _os_log_impl(&dword_29D677000, v56, v57, "[%s] %s -> false: heart rate motion context not supported on active watch", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v59, -1, -1);
      MEMORY[0x29ED6BE30](v58, -1, -1);
    }

    (*(v77 + 8))(v9, v76);
    goto LABEL_18;
  }

  v40 = objc_opt_self();
  if ([v40 isBackgroundHeartRateEnabled])
  {
    v41 = *sub_29D693E2C(v33, v33[3]);
    sub_29D852AAC();
    if (!v42)
    {
      goto LABEL_13;
    }

    v43 = v42;
    v44 = *(v41 + 16);
    sub_29D9339E8();
    v45 = sub_29D933958();
    (*(v73 + 8))(v26, v22);
    v46 = [v44 isHeartAgeGatingEnabledOnWatch:v43 currentDate:v45];

    if ((v46 & 1) == 0)
    {
LABEL_13:
      if (([v40 isTachycardiaDetectionEnabled] & 1) == 0)
      {
        v69 = v78;
        *v78 = 1;
        goto LABEL_19;
      }

      v47 = v72;
      sub_29D937848();
      v48 = sub_29D937878();
      v49 = sub_29D93A2A8();
      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_17;
      }

      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v82 = v51;
      *v50 = 136315394;
      v66 = sub_29D93AF08();
      v68 = sub_29D6C2364(v66, v67, &v82);

      *(v50 + 4) = v68;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v82);
      v55 = "[%s] %s -> false: detection already enabled";
      goto LABEL_16;
    }

    v47 = v71;
    sub_29D937848();
    v48 = sub_29D937878();
    v49 = sub_29D93A2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v82 = v51;
      *v50 = 136315394;
      v52 = sub_29D93AF08();
      v54 = sub_29D6C2364(v52, v53, &v82);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v82);
      v55 = "[%s] %s -> false: heart age gating enabled on active watch";
LABEL_16:
      _os_log_impl(&dword_29D677000, v48, v49, v55, v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v51, -1, -1);
      MEMORY[0x29ED6BE30](v50, -1, -1);
    }
  }

  else
  {
    v47 = v74;
    sub_29D937848();
    v48 = sub_29D937878();
    v49 = sub_29D93A2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v82 = v51;
      *v50 = 136315394;
      v63 = sub_29D93AF08();
      v65 = sub_29D6C2364(v63, v64, &v82);

      *(v50 + 4) = v65;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v82);
      v55 = "[%s] %s -> false: background heart rate not enabled";
      goto LABEL_16;
    }
  }

LABEL_17:

  (*(v77 + 8))(v47, v76);
LABEL_18:
  v69 = v78;
  *v78 = 0;
LABEL_19:
  swift_storeEnumTagMultiPayload();
  v81(v69);
  return sub_29D775994(v69, &qword_2A17B3A90);
}

uint64_t sub_29D774FFC()
{
  result = sub_29D934718();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D7750B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_identifier;
  v4 = sub_29D934718();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29D775128()
{
  v1 = v0 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D775178(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D7751E4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D705FAC;
}

uint64_t sub_29D7752A8()
{
  v1 = sub_29D939968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939998();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = *(v0 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_queue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29D775878;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24447F8;
  v14 = _Block_copy(aBlock);

  sub_29D939988();
  v16[1] = MEMORY[0x29EDCA190];
  sub_29D7758A0(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D7758A0(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v12, v6, v14);
  _Block_release(v14);
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
}

uint64_t sub_29D77558C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_29D7747CC(sub_29D775898, a1);
  }

  return result;
}

void sub_29D775608(uint64_t a1)
{
  sub_29D7758F8(0, &qword_2A17B3A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v12[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29D750E68(a1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29D775994(v6, &qword_2A17B3A90);
      v9 = &v8[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = *v6;
      v9 = &v8[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
LABEL_6:
        v11 = *(v9 + 1);
        swift_getObjectType();
        sub_29D7758A0(&qword_2A17B4228, type metadata accessor for TachycardiaAdvertisableFeatureSource);
        sub_29D934A38();

        sub_29D936978();
        return;
      }
    }
  }
}

uint64_t sub_29D775880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7758A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7758F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29D934928();
    sub_29D7758A0(&qword_2A17B1718, MEMORY[0x29EDC1918]);
    v3 = sub_29D93AEB8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29D775994(uint64_t a1, unint64_t *a2)
{
  sub_29D7758F8(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D775A40()
{
  result = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
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

uint64_t sub_29D775B18(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    sub_29D935E88();
    v6 = sub_29D93AB48();

    return v6;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    sub_29D935E88();
    sub_29D93AD88();
    if (!swift_dynamicCastMetatype())
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        for (i = (v2 + 32); *i; ++i)
        {
          if (!--v4)
          {
            return v1;
          }
        }

        return v2 | 1;
      }
    }

    return v1;
  }
}

uint64_t sub_29D775BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v20 = MEMORY[0x29EDCA190];
    sub_29D7EE538(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_29D6945AC(v4, v16);
      sub_29D6B7370(0, &qword_2A17B1080);
      sub_29D6B7370(0, &qword_2A17B1140);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_29D7EE538((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_29D693DDC(v17, v18);
      v10 = *(*(v7 - 8) + 64);
      MEMORY[0x2A1C7C4A8](v9, v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12);
      sub_29D778AC4(v6, v12, &v20, v7, v8);
      sub_29D69417C(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29D775DB0(uint64_t a1)
{
  v2 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x29EDCA190];
  if (v8)
  {
    v19 = MEMORY[0x29EDCA190];
    sub_29D7EE538(0, v8, 0);
    v9 = v19;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_29D77931C(v10, v7, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_29D7EE538((v12 > 1), v13 + 1, 1);
        v9 = v19;
      }

      v17 = v2;
      v18 = sub_29D778C64(&qword_2A17B2CB8, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
      v14 = sub_29D693F78(&v16);
      sub_29D77931C(v7, v14, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
      *(v9 + 16) = v13 + 1;
      sub_29D679D3C(&v16, v9 + 40 * v13 + 32);
      sub_29D7794DC(v7, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_29D775FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v20 = MEMORY[0x29EDCA190];
    sub_29D7EE538(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v16 = *v4;
      v17 = v5;
      v6 = v4[3];
      v18 = v4[2];
      v19 = v6;
      sub_29D778B5C(&v16, &v13);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_29D7EE538((v7 > 1), v8 + 1, 1);
        v2 = v20;
      }

      v14 = &type metadata for HypertensionNotificationsEducationDataSourceItem;
      v15 = sub_29D778BB8();
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v17;
      v9[1] = v16;
      v9[2] = v10;
      v11 = v19;
      v9[3] = v18;
      v9[4] = v11;
      *(v2 + 16) = v8 + 1;
      sub_29D679D3C(&v13, v2 + 40 * v8 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29D776128(uint64_t a1)
{
  v2 = sub_29D935DA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x29EDCA190];
  if (v8)
  {
    v23 = MEMORY[0x29EDCA190];
    sub_29D7EE538(0, v8, 0);
    v9 = v23;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v19 = *(v10 + 56);
    do
    {
      v11(v7, v13, v2);
      v23 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_29D7EE538((v14 > 1), v15 + 1, 1);
      }

      v21 = v2;
      v22 = sub_29D778C64(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
      v16 = sub_29D693F78(&v20);
      v11(v16, v7, v2);
      v9 = v23;
      *(v23 + 16) = v15 + 1;
      sub_29D679D3C(&v20, v9 + 40 * v15 + 32);
      (*(v10 - 8))(v7, v2);
      v13 += v19;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_29D776350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x29EDCA190];
  if (v5)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_29D7EE620(0, v5, 0);
    v6 = v18;
    v12 = (a1 + 32);
    a5(0, a2, a3, a4);
    sub_29D778C0C(0, &qword_2A17B42A0, &qword_2A17B1140);
    do
    {
      v16 = *v12;
      sub_29D935E88();
      swift_dynamicCast();
      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29D7EE620((v13 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      *(v18 + 8 * v14 + 32) = v17;
      ++v12;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_29D77648C(uint64_t a1)
{
  v2 = sub_29D934FF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x29EDCA190];
  if (v8)
  {
    v23 = MEMORY[0x29EDCA190];
    sub_29D7EE788(0, v8, 0);
    v9 = v23;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v19 = *(v10 + 56);
    do
    {
      v11(v7, v13, v2);
      v23 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_29D7EE788((v14 > 1), v15 + 1, 1);
      }

      v21 = v2;
      v22 = MEMORY[0x29EDC1CC0];
      v16 = sub_29D693F78(&v20);
      v11(v16, v7, v2);
      v9 = v23;
      *(v23 + 16) = v15 + 1;
      sub_29D679D3C(&v20, v9 + 40 * v15 + 32);
      (*(v10 - 8))(v7, v2);
      v13 += v19;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_29D776658(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v13 = MEMORY[0x29EDCA190];
    sub_29D7EE7C0(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v8 = *(v2 + 24);
      sub_29D935E88();
      if (v7 >= v8 >> 1)
      {
        sub_29D7EE7C0((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for AFibBurdenPDFChartPage;
      v12 = sub_29D779790();
      *&v10 = v5;
      *(&v10 + 1) = v6;
      *(v2 + 16) = v7 + 1;
      sub_29D679D3C(&v10, v2 + 40 * v7 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29D776764@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_2A17B4270;
  swift_beginAccess();
  v4 = *(type metadata accessor for CardioFitnessHealthChecklistSettingsState() + 20);
  v5 = sub_29D9346E8();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void sub_29D7767FC()
{
  swift_getObjectType();
  sub_29D779384(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v33 - v4;
  sub_29D77953C();
  v7 = v6;
  v34 = *(v6 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7795E8();
  v13 = v12;
  v35 = *(v12 - 8);
  isa = v35[8].isa;
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + qword_2A17B4240);
  v19 = [v18 profileIdentifier];
  v20 = [v19 type];

  if (v20 == 1 && (v21 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6C0] healthStore:v18]) != 0)
  {
    v22 = v21;
    sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
    v33 = v22;
    v36[0] = sub_29D937288();
    sub_29D6B7D8C();
    type metadata accessor for CardioFitnessHealthChecklistSettingsState();
    sub_29D778C64(&qword_2A1A22420, sub_29D6B7D8C);
    sub_29D938428();

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v23 = sub_29D93A468();
    v36[0] = v23;
    v24 = sub_29D93A448();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_29D778C64(&qword_2A17B42C8, sub_29D77953C);
    sub_29D706380();
    sub_29D938538();
    sub_29D779720(v5, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

    (*(v34 + 8))(v11, v7);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_29D778C64(&qword_2A17B42D0, sub_29D7795E8);
    sub_29D938588();

    (v35[1].isa)(v17, v13);
    swift_beginAccess();
    sub_29D938258();
    swift_endAccess();
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2C008);
    v35 = sub_29D937878();
    v26 = sub_29D93A298();
    if (os_log_type_enabled(v35, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36[0] = v28;
      *v27 = 136446210;
      v29 = sub_29D93AF08();
      v31 = sub_29D6C2364(v29, v30, v36);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_29D677000, v35, v26, "[%{public}s] Unable to get feature status provider from health store, is this not a primary profile?", v27, 0xCu);
      sub_29D69417C(v28);
      MEMORY[0x29ED6BE30](v28, -1, -1);
      MEMORY[0x29ED6BE30](v27, -1, -1);
    }

    else
    {
      v32 = v35;
    }
  }
}

uint64_t sub_29D776E18@<X0>(NSObject *a1@<X0>, char *a2@<X8>)
{
  sub_29D779384(0, &qword_2A1A24720, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_29D9349A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x29EDC5150];
  v16 = sub_29D9371B8();
  sub_29D6DD1FC(v16, sub_29D6E2864, sub_29D6E2868, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29D779720(v8, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v17 = 1;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v18 = sub_29D6E0EB0(a1, a2);
    (*(v10 + 8))(v14, v9, v18);
    v17 = 0;
  }

  v19 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  return (*(*(v19 - 8) + 56))(a2, v17, 1, v19);
}

void sub_29D777074(uint64_t a1)
{
  v2 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29D77931C(a1, v6, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
    v9 = qword_2A17B4270;
    swift_beginAccess();
    sub_29D7796BC(v6, v8 + v9);
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10 + qword_2A17B4260;
    v12 = v10;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = *(v11 + 8);

    if (v13)
    {
      swift_getObjectType();
      sub_29D9367C8();
      sub_29D936978();
    }
  }
}

uint64_t sub_29D7771D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29D9346E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934798();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AA840();
  v16 = sub_29D934758();
  (*(v11 + 8))(v15, v10);
  if (v16)
  {
    v17 = v2 + qword_2A17B4270;
    swift_beginAccess();
    v18 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
    (*(v5 + 16))(v9, v17 + *(v18 + 20), v4);
    sub_29D9347C8();
    sub_29D9347A8();
    (*(v5 + 8))(v9, v4);
    v19 = *(v17 + *(v18 + 24));
    sub_29D935E88();
    sub_29D9368E8();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_29D9368F8();
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_29D777458()
{
  swift_getObjectType();
  v46 = MEMORY[0x29EDCA190];
  v1 = objc_opt_self();
  v2 = *(v0 + qword_2A17B4230);
  v3 = *(v0 + qword_2A17B4230 + 8);
  v4 = sub_29D939D28();
  v5 = [v1 groupSpecifierWithID_];

  if (v5)
  {
    v6 = v0 + qword_2A17B4270;
    swift_beginAccess();
    v7 = (v6 + *(type metadata accessor for CardioFitnessHealthChecklistSettingsState() + 28));
    v9 = *v7;
    v8 = v7[1];
    if (v7[3])
    {
      v11 = v7[4];
      v10 = v7[5];
      v44 = v7[2];
      sub_29D935E88();
      sub_29D935E88();
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v21 = objc_opt_self();
    sub_29D935E88();
    v22 = [v21 cardioFitnessWristDetectFooterLinkURL];
    v23 = sub_29D939D68();
    v25 = v24;

    if (v10)
    {
      if (v11 == v23 && v10 == v25)
      {

LABEL_16:
        v27 = &selRef_didTapWristDetectionDisabled;
LABEL_18:
        v28 = *v27;
        v29 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
        v30 = sub_29D939D28();
        v31 = [v29 initWithString_];

        v32 = sub_29D939D28();

        v33 = [v31 localizedStandardRangeOfString_];
        v35 = v34;

        sub_29D69567C(0, &qword_2A17B2A38, 0x29EDC6268);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v37 = NSStringFromClass(ObjCClassFromMetadata);
        if (!v37)
        {
          sub_29D939D68();
          v37 = sub_29D939D28();
        }

        [v5 setProperty:v37 forKey:*MEMORY[0x29EDC62D0]];

        v38 = sub_29D939D28();

        [v5 setProperty:v38 forKey:*MEMORY[0x29EDC62F0]];

        v47.location = v33;
        v47.length = v35;
        v39 = NSStringFromRange(v47);
        if (!v39)
        {
          sub_29D939D68();
          v39 = sub_29D939D28();
        }

        [v5 setProperty:v39 forKey:*MEMORY[0x29EDC62E0]];

        v40 = [objc_opt_self() valueWithNonretainedObject_];
        [v5 setProperty:v40 forKey:*MEMORY[0x29EDC62E8]];
        sub_29D933DC8();
        v41 = sub_29D939D28();

        [v5 setProperty:v41 forKey:*MEMORY[0x29EDC62D8]];

        v42 = v5;
        MEMORY[0x29ED6A300]();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_29D939F78();
        }

        sub_29D939FA8();

        return v46;
      }

      v26 = sub_29D93AD78();

      if (v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v27 = &selRef_didTapLearnMoreLink;
    goto LABEL_18;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v12 = sub_29D937898();
  sub_29D69C6C0(v12, qword_2A1A2C008);
  v13 = sub_29D937878();
  v14 = sub_29D93A288();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v45 = v16;
    *v15 = 136446210;
    v17 = sub_29D93AF08();
    v19 = sub_29D6C2364(v17, v18, &v45);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Could not get specifier footer content.", v15, 0xCu);
    sub_29D69417C(v16);
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29D7779A4()
{
  v13 = MEMORY[0x29EDCA190];
  v1 = [objc_opt_self() cardioFitnessTitleDescription];
  if (!v1)
  {
    sub_29D939D68();
    v1 = sub_29D939D28();
  }

  v2 = [objc_opt_self() preferenceSpecifierNamed:v1 target:v0 set:sel_setCardioFitnessEnabledWithValue_ get:sel_isCardioFitnessEnabled detail:0 cell:6 edit:0];

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = *(v0 + qword_2A17B4238);
  v4 = *(v0 + qword_2A17B4238 + 8);
  v5 = sub_29D939D28();
  [v2 setIdentifier_];

  v6 = qword_2A17B4270;
  swift_beginAccess();
  v7 = *(v0 + v6) == 0;
  v8 = sub_29D939FC8();
  [v2 setProperty:v8 forKey:*MEMORY[0x29EDC62C8]];

  v9 = sub_29D939FC8();
  [v2 setProperty:v9 forKey:*MEMORY[0x29EDC62A0]];

  v10 = v2;
  MEMORY[0x29ED6A300]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29D939F78();
  }

  sub_29D939FA8();

  return v13;
}

id sub_29D777B88(uint64_t a1)
{
  v2 = qword_2A17B4270;
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];

  return v3;
}

uint64_t sub_29D777C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2A1C73D48](sub_29D777C28, 0, 0);
}

uint64_t sub_29D777C28()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[19];
    v3 = *MEMORY[0x29EDBA788];
    v0[21] = *MEMORY[0x29EDBA788];
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_29D777D98;
    v4 = swift_continuation_init();
    sub_29D6ACB00();
    v0[17] = v5;
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29D8D0FE0;
    v0[13] = &unk_2A2444978;
    v0[14] = v4;
    [v1 setFeatureSettingNumber:v2 forKey:v3 completion:v0 + 10];

    return MEMORY[0x2A1C73CC0](v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_29D777D98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_29D777F08;
  }

  else
  {
    v3 = sub_29D777EA8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D777EA8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D777F08()
{
  v22 = v0;
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = v3;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  if (v8)
  {
    v10 = v0[20];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136446466;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Error when setting Cardio Fitness setting enabled: %@", v11, 0x16u);
    sub_29D7794DC(v12, sub_29D6ACA98);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    sub_29D69417C(v13);
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_29D77812C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_29D779384(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = sub_29D93A028();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = *(a1 + qword_2A17B4248);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = a3;
  v13[6] = ObjectType;
  swift_unknownObjectRetain();
  v14 = a3;
  sub_29D6BEBA4(0, 0, v10, &unk_29D947190, v13);
}

void sub_29D778284(char *a1)
{
  v2 = &a1[qword_2A17B4270];
  swift_beginAccess();
  v3 = &v2[*(type metadata accessor for CardioFitnessHealthChecklistSettingsState() + 28)];
  if (*(v3 + 3))
  {
    v5 = *(v3 + 4);
    v4 = *(v3 + 5);
    v6 = a1;
    sub_29D935E88();
    sub_29D939DF8();
  }
}

void sub_29D778318()
{
  v1 = v0;
  v2 = qword_2A1A257A0;
  v3 = *(v0 + qword_2A17B4240);
  if (v2 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();

  v4 = v3;
  sub_29D6E8EC8(v4);

  v5 = objc_allocWithZone(sub_29D934568());
  v6 = sub_29D934558();
  v7 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v8 = v1 + qword_2A17B4268;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    swift_getObjectType();
    v10 = sub_29D936F08();
    sub_29D936978();
    [v10 presentViewController:v7 animated:1 completion:0];
  }
}

void sub_29D7784BC(void *a1)
{
  v1 = a1;
  sub_29D778318();
}

uint64_t sub_29D778534()
{
  v1 = *(v0 + qword_2A17B4230 + 8);

  v2 = *(v0 + qword_2A17B4238 + 8);

  v3 = *(v0 + qword_2A17B4248);
  sub_29D936978();
  v4 = *(v0 + qword_2A17B4250);

  v5 = *(v0 + qword_2A17B4258);

  sub_29D68B77C(v0 + qword_2A17B4260);
  sub_29D68B77C(v0 + qword_2A17B4268);
  return sub_29D7794DC(v0 + qword_2A17B4270, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
}

uint64_t sub_29D77860C(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B4230 + 8);

  v3 = *(a1 + qword_2A17B4238 + 8);

  v4 = *(a1 + qword_2A17B4248);
  sub_29D936978();
  v5 = *(a1 + qword_2A17B4250);

  v6 = *(a1 + qword_2A17B4258);

  sub_29D68B77C(a1 + qword_2A17B4260);
  sub_29D68B77C(a1 + qword_2A17B4268);
  return sub_29D7794DC(a1 + qword_2A17B4270, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
}

void (*sub_29D778758(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17B4260;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7787F8;
}

uint64_t sub_29D778808(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3 + *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  return result;
}

uint64_t sub_29D778860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5 + *a5;
  swift_beginAccess();
  *(v7 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D7788C8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17B4268;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7797E4;
}

uint64_t sub_29D77896C()
{
  v4 = MEMORY[0x29EDCA190];
  v0 = sub_29D777458();
  sub_29D88BF0C(v0);
  v1 = sub_29D7779A4();
  sub_29D88BF0C(v1);
  v2 = sub_29D775B18(v4);

  return v2;
}

id sub_29D778A7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D778AC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29D693F78(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29D679D3C(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_29D778BB8()
{
  result = qword_2A17B4298;
  if (!qword_2A17B4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4298);
  }

  return result;
}

void sub_29D778C0C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D6B7370(255, a3);
    v4 = sub_29D939FB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D778C64(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29D778CAC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_29D779384(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v29 - v10;
  v12 = (v3 + qword_2A17B4230);
  *v12 = 0xD000000000000017;
  v12[1] = 0x800000029D9606D0;
  v13 = (v3 + qword_2A17B4238);
  *v13 = 0xD000000000000015;
  v13[1] = 0x800000029D9606F0;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v14 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v14 = MEMORY[0x29EDCA1A0];
  }

  *(v3 + qword_2A17B4250) = v14;
  *(v3 + qword_2A17B4258) = 0;
  *(v3 + qword_2A17B4260 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17B4268 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17B4240) = a1;
  v15 = [a1 featureAvailabilityProviderForIdentifier_];
  if (!v15)
  {
    v16 = v3;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    v18 = sub_29D937878();
    v19 = sub_29D93A298();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136446210;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s] Unable to get feature availability provider from health store, is this not a primary profile?", v20, 0xCu);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    v15 = 0;
    v3 = v16;
  }

  *(v3 + qword_2A17B4248) = v15;
  sub_29D77931C(a2, v3 + qword_2A17B4270, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
  v25 = sub_29D934C58();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v11, a3, v25);
  (*(v26 + 56))(v11, 0, 1, v25);
  v27 = sub_29D934C48();
  sub_29D7767FC();

  (*(v26 + 8))(a3, v25);
  sub_29D7794DC(a2, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
  return v27;
}

id sub_29D7790B4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = sub_29D934C58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D77931C(a2, v16, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
  (*(v7 + 16))(v11, a3, v6);
  v17 = objc_allocWithZone(type metadata accessor for CardioFitnessHealthChecklistSpecifierDataSource(0));
  v18 = sub_29D778CAC(a1, v16, v11);
  sub_29D778C64(&qword_2A17B42B0, type metadata accessor for CardioFitnessHealthChecklistSpecifierDataSource);
  v19 = v18;
  v20 = sub_29D9365D8();
  sub_29D8AA778();
  v21 = sub_29D939D28();

  [v20 setTitle_];

  (*(v7 + 8))(a3, v6);
  sub_29D7794DC(a2, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
  return v20;
}

uint64_t sub_29D77931C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D779384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7793E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D777C04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29D7794DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D77953C()
{
  if (!qword_2A17B42B8)
  {
    sub_29D6B7D8C();
    type metadata accessor for CardioFitnessHealthChecklistSettingsState();
    sub_29D778C64(&qword_2A1A22420, sub_29D6B7D8C);
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B42B8);
    }
  }
}

void sub_29D7795E8()
{
  if (!qword_2A17B42C0)
  {
    sub_29D77953C();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D778C64(&qword_2A17B42C8, sub_29D77953C);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B42C0);
    }
  }
}

uint64_t sub_29D7796BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D779720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D779384(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D779790()
{
  result = qword_2A17B42D8;
  if (!qword_2A17B42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B42D8);
  }

  return result;
}

uint64_t sub_29D7797E8()
{
  v0 = sub_29D933F58();
  sub_29D6FD494(v0, qword_2A1A22D70);
  v1 = sub_29D69C6C0(v0, qword_2A1A22D70);
  v2 = *MEMORY[0x29EDC3710];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_29D7798C4@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_29D934148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9341B8();
  sub_29D77BC2C(0, &qword_2A1A24898, MEMORY[0x29EDC3798]);
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  if (qword_2A1A22D68 != -1)
  {
    swift_once();
  }

  v12 = sub_29D69C6C0(v7, qword_2A1A22D70);
  (*(v8 + 16))(v11 + v10, v12, v7);
  sub_29D6E4080(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  v13 = sub_29D8AA8CC();
  sub_29D8E8608(v13);

  (*(v2 + 104))(v6, *MEMORY[0x29EDC3898], v1);
  return sub_29D934168();
}

void *sub_29D779B38(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_29D6BBF08();
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Heart50CardioFitnessClassificationStatusGeneratorPipeline_context;
  v14 = sub_29D9341E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v22 = v14;
  v16(v2 + v13, a1);
  v23 = a2;
  v24 = sub_29D779E08(a1, a2);
  v17 = sub_29D934198();
  sub_29D77B878(0, &qword_2A1A24AD8, sub_29D6CE0BC);
  sub_29D77B8DC(&qword_2A1A24AE0, &qword_2A1A24AD8, sub_29D6CE0BC);
  if (v17)
  {
    v18 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D77B788(&qword_2A1A224E8, sub_29D6BBF08);
    v18 = sub_29D938418();

    (*(v21 + 8))(v12, v8);
  }

  v24 = v18;
  sub_29D77B878(0, &qword_2A1A24AD8, sub_29D6CE0BC);
  v19 = sub_29D938418();

  (*(v15 + 8))(a1, v22);

  *(v3 + OBJC_IVAR____TtC5Heart50CardioFitnessClassificationStatusGeneratorPipeline_publisher) = v19;
  return v3;
}