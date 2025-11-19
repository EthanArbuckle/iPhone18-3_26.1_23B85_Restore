uint64_t sub_29D8245B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_2A17B5D00);
    sub_29D7D6A84(a1);
  }

  return result;
}

uint64_t sub_29D824654()
{
  sub_29D68B77C(v0 + qword_2A17B5CF0);
  v1 = *(v0 + qword_2A17B5CF8);

  v2 = *(v0 + qword_2A17B5D00);

  v3 = *(v0 + qword_2A17B5D08);
}

uint64_t sub_29D8246B4()
{
  v0 = sub_29D935BA8();
  v1 = qword_2A17B5CF0;

  sub_29D68B77C(v2 + v1);
  v3 = *(v0 + qword_2A17B5CF8);

  v4 = *(v0 + qword_2A17B5D00);

  v5 = *(v0 + qword_2A17B5D08);

  return swift_deallocClassInstance();
}

void sub_29D82474C(void *a1)
{
  v3 = *v1;
  v4 = a1[2];
  if (v4 == 2)
  {
    v5 = a1[4];
    sub_29D935E88();
    sub_29D935B48();

    v6 = a1[5];
    sub_29D935E88();
    sub_29D935B48();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + qword_2A17B3480);
      if (v8)
      {
        v9 = *(v1 + qword_2A17B5D00);
        v10 = v8;
        [v10 setEnabled_];
      }

      sub_29D936978();
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v11 = sub_29D937898();
    sub_29D69C6C0(v11, qword_2A1A2C008);
    swift_bridgeObjectRetain_n();
    v12 = sub_29D937878();
    v13 = sub_29D93A298();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136446722;
      v16 = sub_29D93AF08();
      v18 = sub_29D6C2364(v16, v17, &v19);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D6C2364(0xD000000000000019, 0x800000029D9662F0, &v19);
      *(v14 + 22) = 2048;

      *(v14 + 24) = v4;

      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s.%{public}s]: Received unexpected number of sections: %ld", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v15, -1, -1);
      MEMORY[0x29ED6BE30](v14, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t sub_29D824A1C()
{
  sub_29D935D18();
  sub_29D93A1E8();
  sub_29D935DE8();
  sub_29D93A1E8();
  sub_29D935738();
  sub_29D93A1E8();
  sub_29D935F08();
  return sub_29D93A1E8();
}

id sub_29D824ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D937B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D771308();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_29D933DA8();
  v17 = *(v11 + 56);
  *v15 = v16;
  v18 = sub_29D934B78();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v15 + v17, a1, v18);
  v20 = (*(v19 + 88))(v15 + v17, v18);
  if (v20 != *MEMORY[0x29EDC1B58])
  {
    if (v20 == *MEMORY[0x29EDC1B50] && v16 == 1)
    {
      type metadata accessor for HeartHealthPluginDelegate();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = [objc_opt_self() bundleForClass_];
      sub_29D9334A8();

      v25 = MEMORY[0x29EDC7800];
      *(a2 + 24) = v4;
      *(a2 + 32) = v25;
      sub_29D693F78(a2);
      sub_29D937B58();
      sub_29D937B48();
      return (*(v19 + 8))(v15 + v17, v18);
    }

    goto LABEL_9;
  }

  if (v16 != 1)
  {
    if (!v16)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return (*(v19 + 8))(v15 + v17, v18);
    }

LABEL_9:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_29D771370(v15);
  }

  v46 = v5;
  v48 = "DVERTISEMENT_TITLE";
  type metadata accessor for HeartHealthPluginDelegate();
  v26 = swift_getObjCClassFromMetadata();
  v47 = v26;
  v27 = objc_opt_self();
  v50 = v4;
  v28 = v27;
  v29 = [v27 bundleForClass_];
  v49 = sub_29D9334A8();
  v31 = v30;

  v32 = [v28 bundleForClass_];
  v45 = sub_29D9334A8();
  v48 = v33;

  v34 = MEMORY[0x29EDC7800];
  *(a2 + 24) = v50;
  *(a2 + 32) = v34;
  v47 = sub_29D693F78(a2);
  sub_29D937B18();
  sub_29D935E88();
  v49 = v31;
  sub_29D937B48();
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v35 = sub_29D937A98();
  sub_29D937A58();
  v35(v51, 0);
  v36 = objc_opt_self();
  v37 = [v36 labelColor];
  v38 = sub_29D937A98();
  sub_29D937A68();
  v38(v51, 0);
  sub_29D935E88();
  sub_29D937A08();
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v39 = *MEMORY[0x29EDC80E0];
  sub_29D93A658();
  v40 = sub_29D937AB8();
  sub_29D937A58();
  v40(v51, 0);
  v41 = [v36 labelColor];
  v42 = sub_29D937AB8();
  sub_29D937A68();
  v42(v51, 0);
  v43 = sub_29D937AD8();
  *(v44 + 16) = 0x4032000000000000;
  v43(v51, 0);
  sub_29D937B28();
  (*(v46 + 32))(v47, v9, v50);

  return (*(v19 + 8))(v15 + v17, v18);
}

char *sub_29D82512C(uint64_t a1, double a2)
{
  v5 = sub_29D937B88();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v40 - v12;
  v14 = sub_29D934B78();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a1, v14);
  LODWORD(a1) = (*(v15 + 88))(v19, v14);
  v20 = *MEMORY[0x29EDC1B58];
  (*(v15 + 8))(v19, v14);
  if (a1 != v20)
  {
    return 0;
  }

  v40[2] = v2;
  if (sub_29D933DA8())
  {
    return 0;
  }

  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass_];
  sub_29D9334A8();
  v26 = v25;

  v27 = [v23 bundleForClass_];
  sub_29D9334A8();

  sub_29D937B18();
  sub_29D935E88();
  v40[1] = v26;
  sub_29D937B48();
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v28 = sub_29D937A98();
    sub_29D937A58();
    v28(v42, 0);
    v29 = objc_opt_self();
    v30 = [v29 labelColor];
    v31 = sub_29D937A98();
    sub_29D937A68();
    v31(v42, 0);
    sub_29D935E88();
    sub_29D937A08();
    sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
    v32 = *MEMORY[0x29EDC80E0];
    sub_29D93A658();
    v33 = sub_29D937AB8();
    sub_29D937A58();
    v33(v42, 0);
    v34 = [v29 labelColor];
    v35 = sub_29D937AB8();
    sub_29D937A68();
    v35(v42, 0);
    v36 = sub_29D937AD8();
    *(v37 + 16) = 0x4032000000000000;
    v36(v42, 0);
    sub_29D937B28();

    (*(v41 + 32))(v13, v10, v5);
    v38 = objc_allocWithZone(type metadata accessor for ConfirmDetailsLearnMoreView());
    v39 = sub_29D6D2DB8(v13, a2);
    *&v39[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView_delegate + 8] = &off_2A2447928;
    swift_unknownObjectWeakAssign();
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8256BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a4;
  v14[4] = a5;
  v8 = sub_29D693F78(v14);
  (*(*(a4 - 8) + 16))(v8, a2, a4);
  sub_29D935B88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + qword_2A17B3480);
    if (v10)
    {
      v11 = *(a3 + qword_2A17B5D00);
      v12 = v10;
      [v12 setEnabled_];
    }

    sub_29D936978();
  }

  return sub_29D69417C(v14);
}

void sub_29D8257AC()
{
  if (!qword_2A17B5D20)
  {
    sub_29D825858();
    sub_29D935AB8();
    sub_29D8259FC(&qword_2A17B5D30, sub_29D825858);
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5D20);
    }
  }
}

void sub_29D825858()
{
  if (!qword_2A17B5D28)
  {
    sub_29D8258DC(255, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5D28);
    }
  }
}

void sub_29D8258DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_29D825930()
{
  if (!qword_2A17B5D38)
  {
    sub_29D8257AC();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8259FC(&qword_2A17B5D40, sub_29D8257AC);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5D38);
    }
  }
}

uint64_t sub_29D8259FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D825A64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D8258DC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D825AC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v40 = sub_29D936698();
  v39 = *(v40 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v40, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9366A8();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7568EC();
  v12 = *a1;
  v44 = a1;
  if (v12)
  {
    goto LABEL_2;
  }

  if (qword_2A17B0C30 != -1)
  {
    swift_once();
  }

  v14 = qword_2A17D0978;
  v15 = &a1[*(type metadata accessor for AFibBurdenPDFChartHeaderContentProvider() + 20)];
  v16 = sub_29D933148();
  v17 = [v14 stringFromDateInterval_];

  if (!v17)
  {
LABEL_2:
    v38 = 0;
    v13 = 0;
  }

  else
  {
    v38 = sub_29D939D68();
    v13 = v18;
  }

  sub_29D934F48();
  v19 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v20 = sub_29D939D28();
  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v21 = sub_29D939C58();

  v22 = [v19 initWithString:v20 attributes:v21];

  v23 = 0;
  if (v22)
  {
    v23 = sub_29D7DB54C();
    v24 = MEMORY[0x29EDC2CE0];
  }

  else
  {
    v24 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v22;
  v54 = v23;
  v55 = v24;
  v50 = 0;
  v25 = 0uLL;
  v48 = 0u;
  v49 = 0u;
  if (!v13)
  {
    goto LABEL_13;
  }

  sub_29D934F58();
  v26 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v27 = sub_29D939D28();
  v28 = sub_29D939C58();

  v29 = [v26 initWithString:v27 attributes:v28];

  v25 = 0uLL;
  if (v29)
  {
    v30 = MEMORY[0x29EDC2CE0];
    *(&v46 + 1) = sub_29D7DB54C();
    v47 = v30;
    *&v45 = v29;
  }

  else
  {
LABEL_13:
    v47 = 0;
    v45 = v25;
    v46 = v25;
  }

  (*(v39 + 104))(v6, *MEMORY[0x29EDC2878], v40);
  v31 = sub_29D936688();
  MEMORY[0x2A1C7C4A8](v31, v32);
  *(&v37 - 2) = v11;
  v33 = sub_29D9370F8();
  v34 = MEMORY[0x29EDC2C70];
  v35 = v43;
  v43[3] = v33;
  v35[4] = v34;
  sub_29D693F78(v35);
  sub_29D9370E8();
  sub_29D8263A8(v44);
  return (*(v41 + 8))(v11, v42);
}

uint64_t sub_29D825F10(uint64_t a1)
{
  v2 = sub_29D9366A8();
  v10 = v2;
  v11 = MEMORY[0x29EDC2880];
  v3 = sub_29D693F78(v9);
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  v4 = sub_29D935808();
  sub_29D69417C(v9);
  v10 = sub_29D935488();
  v11 = MEMORY[0x29EDC1FC0];
  sub_29D693F78(v9);
  sub_29D935498();
  v5 = sub_29D935808();
  sub_29D69417C(v9);
  sub_29D826404(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93F680;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = MEMORY[0x29ED65BE0]();

  return v7;
}

uint64_t sub_29D82604C()
{
  v1 = v0;
  sub_29D934E48();
  sub_29D934DC8();
  CGRectGetWidth(v14);
  sub_29D934E18();
  v2 = v0[4];
  sub_29D693E2C(v1, v1[3]);
  sub_29D935128();
  v3 = v0[4];
  sub_29D693E2C(v1, v1[3]);
  sub_29D934E48();
  sub_29D934DC8();
  CGRectGetWidth(v15);
  sub_29D934E18();
  sub_29D935118();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  CGRectGetHeight(v16);
  sub_29D934E38();
}

double sub_29D8261C8(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4[3];
  v7 = v4[4];
  sub_29D693E2C(v4, v6);
  v8 = sub_29D934E48();
  sub_29D934DC8();
  CGRectGetWidth(v11);
  sub_29D934E18();
  v9 = a4(v8, v6, v7);

  return v9;
}

uint64_t sub_29D82628C(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D804708();
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

unint64_t sub_29D82633C()
{
  result = qword_2A17B5D50;
  if (!qword_2A17B5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5D50);
  }

  return result;
}

uint64_t sub_29D8263A8(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenPDFChartHeaderContentProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D826404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D826468@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v122 = sub_29D937178();
  v5 = *(v122 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v122, v7);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D937158();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D9371A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v119 = v21;
  v120 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v113 - v23;
  v25 = *(v17 + 16);
  v121 = a1;
  v117 = v25;
  v118 = v17 + 16;
  v25(&v113 - v23, a1, v16);
  if ((*(v17 + 88))(v24, v16) != *MEMORY[0x29EDC2D70])
  {
    (*(v17 + 8))(v24, v16);
    v54 = *MEMORY[0x29EDBA5A0];
    v55 = a3;
    goto LABEL_7;
  }

  v115 = a3;
  (*(v17 + 96))(v24, v16);
  v113 = v11;
  v114 = v10;
  (*(v11 + 32))(v15, v24, v10);
  sub_29D937108();
  v26 = *MEMORY[0x29EDBA5A0];
  v27 = sub_29D937188();
  v28 = *(v5 + 8);
  v28(v9, v122);
  v29 = [v27 areAllRequirementsSatisfied];

  if (!v29)
  {
    sub_29D937108();
    v68 = sub_29D937188();
    v28(v9, v122);
    v69 = [v68 unsatisfiedRequirementIdentifiers];

    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    v70 = sub_29D939F38();

    sub_29D82762C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    v72 = *MEMORY[0x29EDBA608];
    *(inited + 32) = *MEMORY[0x29EDBA608];
    v73 = v72;
    v74 = v15;
    v75 = sub_29D6971AC(v70, inited);

    swift_setDeallocating();
    v76 = *(inited + 16);
    swift_arrayDestroy();
    if (v75)
    {
      v122 = v74;
      v77 = *MEMORY[0x29EDC1768];
      v78 = sub_29D9346E8();
      v79 = v115;
      (*(*(v78 - 8) + 104))(v115, v77, v78);
      v80 = sub_29D87D7B4();
      v121 = v81;
      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      v82 = sub_29D9334A8();
      v84 = v83;
      v85 = sub_29D9334A8();
      v87 = v86;
      v88 = [objc_opt_self() aFibBurdenArticleLinkURL];
      v89 = sub_29D939D68();
      v91 = v90;

      (*(v113 + 8))(v122, v114);
      v47 = _s14descr2A243C641C15SettingsContentVMa();
      *(v79 + v47[5]) = 256;
      *(v79 + v47[6]) = 0;
      v92 = (v79 + v47[7]);
      v93 = v121;
      *v92 = v80;
      v92[1] = v93;
      v94 = (v79 + v47[8]);
      *v94 = v82;
      v94[1] = v84;
      v94[2] = v85;
      v94[3] = v87;
      v94[4] = v89;
      v94[5] = v91;
      v52 = *(*(v47 - 1) + 56);
      v53 = v79;
      return v52(v53, 0, 1, v47);
    }

    (*(v113 + 8))(v74, v114);
    v55 = v115;
LABEL_7:
    v56 = v121;
    v57 = sub_29D9371B8();
    v58 = [v57 isRequirementSatisfiedWithIdentifier_];

    v59 = sub_29D937198();
    if (v58 && (v59 & 1) != 0)
    {
      v60 = sub_29D9371B8();
      v61 = [v60 areAllRequirementsSatisfied];

      if (!v61)
      {
        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4();
        sub_29D69C6C0(v95, qword_2A1A2BF58);
        v123 = 0;
        sub_29D9371C8();
        v96 = *MEMORY[0x29EDC1768];
        v97 = sub_29D9346E8();
        (*(*(v97 - 8) + 104))(v55, v96, v97);
        v98 = sub_29D87D7B4();
        v100 = v99;
        if (qword_2A17B0D48 != -1)
        {
          swift_once();
        }

        v101 = sub_29D9334A8();
        v103 = v102;
        v104 = sub_29D9334A8();
        v106 = v105;
        v107 = [objc_opt_self() aFibBurdenArticleLinkURL];
        v108 = sub_29D939D68();
        v110 = v109;

        v47 = _s14descr2A243C641C15SettingsContentVMa();
        *(v55 + v47[5]) = 0;
        *(v55 + v47[6]) = 0;
        v111 = (v55 + v47[7]);
        *v111 = v98;
        v111[1] = v100;
        v112 = (v55 + v47[8]);
        *v112 = v101;
        v112[1] = v103;
        v112[2] = v104;
        v112[3] = v106;
        v112[4] = v108;
        v112[5] = v110;
        v52 = *(*(v47 - 1) + 56);
        v53 = v55;
        return v52(v53, 0, 1, v47);
      }

      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }
    }

    else if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v62, qword_2A1A2BF58);
    v63 = v120;
    v117(v120, v56, v16);
    v64 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v65 = swift_allocObject();
    (*(v17 + 32))(v65 + v64, v63, v16);
    v123 = 0;
    sub_29D9371F8();

    v66 = _s14descr2A243C641C15SettingsContentVMa();
    return (*(*(v66 - 8) + 56))(v55, 1, 1, v66);
  }

  v30 = sub_29D693E2C(v116, v116[3]);
  v31 = sub_29D82745C(v15, *v30);
  v32 = *MEMORY[0x29EDC1760];
  v33 = sub_29D9346E8();
  v34 = v115;
  (*(*(v33 - 8) + 104))(v115, v32, v33);
  v35 = v31;
  v120 = sub_29D87D57C();
  v121 = v36;
  v122 = v15;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v37 = sub_29D9334A8();
  v39 = v38;
  v40 = sub_29D9334A8();
  v42 = v41;
  v43 = [objc_opt_self() aFibBurdenArticleLinkURL];
  v44 = sub_29D939D68();
  v46 = v45;

  (*(v113 + 8))(v122, v114);
  v47 = _s14descr2A243C641C15SettingsContentVMa();
  *(v34 + v47[5]) = 257;
  v48 = (v34 + v47[6]);
  *v48 = v35;
  v48[1] = 1;
  v49 = (v34 + v47[7]);
  v50 = v121;
  *v49 = v120;
  v49[1] = v50;
  v51 = (v34 + v47[8]);
  *v51 = v37;
  v51[1] = v39;
  v51[2] = v40;
  v51[3] = v42;
  v51[4] = v44;
  v51[5] = v46;
  v52 = *(*(v47 - 1) + 56);
  v53 = v34;
  return v52(v53, 0, 1, v47);
}

uint64_t sub_29D827094(uint64_t a1)
{
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D966340);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000004FLL, 0x800000029D966360);
  MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D966430);
  (*(v3 + 16))(v7, a1, v2);
  v8 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v8);

  return v10[0];
}

uint64_t sub_29D827220(uint64_t a1)
{
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D966340);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000004FLL, 0x800000029D966360);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D9663B0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v8);

  return v10[0];
}

uint64_t sub_29D827398()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D966340);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000004FLL, 0x800000029D966360);
  MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D9663F0);
  return 0;
}

BOOL sub_29D82745C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D933F18();
  v11[3] = v3;
  v11[4] = &off_2A2447A08;
  v11[0] = a2;

  v4 = sub_29D937148();
  v5 = HKHRAFibBurdenNotificationsEnabledWithFeatureSettings();

  if (v5)
  {
    v6 = *sub_29D693E2C(v11, v3);
    v7 = sub_29D933EF8();
    v8 = [v7 authorizationStatus];

    v9 = v8 == 2;
  }

  else
  {
    v9 = 0;
  }

  sub_29D69417C(v11);
  return v9;
}

uint64_t sub_29D827518()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D8275B8(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_29D9371A8() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_29D82762C()
{
  if (!qword_2A17B18F0)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B18F0);
    }
  }
}

uint64_t sub_29D827684()
{
  v1 = *v0;
  v2 = sub_29D8AA8CC();
  sub_29D8E8608(v2);
  v4 = v3;

  return v4;
}

uint64_t sub_29D8277AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1868];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D827820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C61018](a1, a2, a3, WitnessTable);
}

uint64_t sub_29D82788C()
{
  swift_getWitnessTable();

  return sub_29D934D08();
}

uint64_t sub_29D827918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C61000](a1, WitnessTable);
}

uint64_t sub_29D82797C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, WitnessTable);
}

uint64_t sub_29D827BA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_29D827BF4(void *a1, char a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_coordinator] = 0;
  v3[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = a2;
  v34 = sub_29D69567C(0, &qword_2A1A22230, 0x29EDBABE8);
  v35 = MEMORY[0x29EDC2CD8];
  v33 = a1;
  v5 = *MEMORY[0x29EDC51B8];
  v6 = sub_29D935AE8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;
  v10 = sub_29D935AD8();
  v11 = type metadata accessor for CardioFitnessOnboardingMostRecentValueProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v9;
  v16 = sub_29D82BAFC(v15, v14);
  v17 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6C0] healthStore:v15];

  v18 = sub_29D6B74EC();
  v19 = [v17 featureAvailabilityProviding];
  v20 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingModel());
  v21 = sub_29D82C20C(v18, v19, v10, v16, sub_29D68B82C, 0, v20);

  sub_29D936978();

  type metadata accessor for CardioFitnessOnboardingViewControllerFactory();
  v22 = swift_allocObject();
  v22[2] = v15;
  v22[3] = v10;
  v22[4] = v21;
  v23 = objc_allocWithZone(MEMORY[0x29EDC5218]);
  v24 = v15;

  v25 = v21;
  v26 = [v23 initWithHealthStore_];
  v27 = [objc_allocWithZone(MEMORY[0x29EDC5220]) initWithSignalSource_];

  v32.receiver = v3;
  v32.super_class = type metadata accessor for CardioFitnessOnboardingViewController();
  v28 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  [v28 setModalPresentationStyle_];
  v29 = sub_29D82B9FC(v28, v25, v22, v27);

  v30 = *&v28[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_coordinator];
  *&v28[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_coordinator] = v29;

  return v28;
}

void sub_29D827F3C(char a1, uint64_t a2, void (*a3)(), uint64_t a4)
{
  v63 = a3;
  ObjectType = swift_getObjectType();
  sub_29D82C864(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v57 - v10;
  v12 = sub_29D9336F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v57 - v19;
  if ((a1 & 1) == 0 || v64[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] != 1)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v41 = sub_29D937898();
    sub_29D69C6C0(v41, qword_2A1A2C008);
    v42 = sub_29D937878();
    v43 = sub_29D93A2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136446466;
      v46 = sub_29D93AF08();
      v48 = sub_29D6C2364(v46, v47, &aBlock);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s.%{public}s]: Dismissing onboarding and landing back where user was before", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }

    if (v63)
    {
      v69 = v63;
      v70 = a4;
      aBlock = MEMORY[0x29EDCA5F8];
      v66 = 1107296256;
      v67 = sub_29D6C1F10;
      v68 = &unk_2A2447DE8;
      v40 = _Block_copy(&aBlock);
      goto LABEL_18;
    }

LABEL_19:
    v40 = 0;
    goto LABEL_20;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v21 = sub_29D937898();
  v60 = sub_29D69C6C0(v21, qword_2A1A2C008);
  v22 = sub_29D937878();
  v23 = sub_29D93A2A8();
  v24 = os_log_type_enabled(v22, v23);
  v61 = a4;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v59 = v13;
    v26 = v25;
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v26 = 136446466;
    v27 = sub_29D93AF08();
    v29 = sub_29D6C2364(v27, v28, &aBlock);
    v57 = v22;
    v30 = v29;

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
    v22 = v57;
    _os_log_impl(&dword_29D677000, v57, v23, "[%{public}s.%{public}s]: Dismissing onboarding and navigating to Cardio Fitness detail room", v26, 0x16u);
    v31 = v58;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v31, -1, -1);
    v32 = v26;
    v13 = v59;
    MEMORY[0x29ED6BE30](v32, -1, -1);
  }

  sub_29D6D962C(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29D82D094(v11, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D82C864);
    v33 = sub_29D937878();
    v34 = sub_29D93A298();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136446466;
      v37 = sub_29D93AF08();
      v39 = sub_29D6C2364(v37, v38, &aBlock);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v33, v34, "[%{public}s.%{public}s]: Failed to construct deep link URL to go to detail room after onboarding completed", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v36, -1, -1);
      MEMORY[0x29ED6BE30](v35, -1, -1);
    }

    if (v63)
    {
      v69 = v63;
      v70 = v61;
      aBlock = MEMORY[0x29EDCA5F8];
      v66 = 1107296256;
      v67 = sub_29D6C1F10;
      v68 = &unk_2A2447E10;
      v40 = _Block_copy(&aBlock);
LABEL_18:

LABEL_20:
      [v64 dismissViewControllerAnimated:1 completion:v40];
      _Block_release(v40);
      return;
    }

    goto LABEL_19;
  }

  v49 = v13;
  v50 = *(v13 + 32);
  v50(v20, v11, v12);
  (*(v49 + 16))(v17, v20, v12);
  v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v52 = swift_allocObject();
  v50((v52 + v51), v17, v12);
  v53 = (v52 + ((v14 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
  v54 = v63;
  v55 = v61;
  *v53 = v63;
  v53[1] = v55;
  v69 = sub_29D82D5DC;
  v70 = v52;
  aBlock = MEMORY[0x29EDCA5F8];
  v66 = 1107296256;
  v67 = sub_29D6C1F10;
  v68 = &unk_2A2447E60;
  v56 = _Block_copy(&aBlock);
  sub_29D695554(v54);

  [v64 dismissViewControllerAnimated:1 completion:v56];
  _Block_release(v56);
  (*(v49 + 8))(v20, v12);
}

void sub_29D828764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D82D66C(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey);
  v7 = sub_29D939C58();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_29D82D6B4;
  v10[5] = v8;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D73C804;
  v10[3] = &unk_2A2447EB0;
  v9 = _Block_copy(v10);
  sub_29D695554(a2);

  [v5 openURL:v6 options:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_29D8289F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A2447B90;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D828ACC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A2447B68;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

void sub_29D828B9C()
{
  v10 = sub_29D828D08(0);
  v1 = v0 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_29D82D58C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_29D940030;
    *(v4 + 32) = v10;
    v5 = *(v2 + 24);
    v6 = v10;
    v5(v4, 0, ObjectType, v2);

    sub_29D936978();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 8);
    v8 = swift_getObjectType();
    v9 = (*(v7 + 8))(v8, v7);
    sub_29D936978();
    if (v9)
    {
      [v9 setDelegate_];
    }
  }
}

id sub_29D828D08(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_factory);
  v3 = sub_29D91C3E0(a1);
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = [v3 navigationItem];
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_29D9334A8();

  v10 = sub_29D939D28();

  [v7 setBackButtonTitle_];

  v11 = *(v5 + 24);
  v12 = swift_unknownObjectRetain();
  v11(v12, &off_2A2447A70, ObjectType, v5);
  return v3;
}

id sub_29D828ECC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D828F94(char *a1, unsigned __int8 a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_29D82B91C(a1, a2, a3, a5 & 1, a6, ObjectType, a4);
}

void sub_29D82900C(char a1, void *a2, unsigned __int8 a3, char a4, void *a5, uint64_t a6)
{
  v56 = a2;
  v11 = sub_29D939968();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_29D939998();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 == 2)
  {
    sub_29D829634(a3, a4 & 1, 0, 0);
  }

  else if (a1 == 3)
  {
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = a3;
    *(v25 + 25) = a4 & 1;

    sub_29D82CB84(a5, a6, sub_29D82C918, v25);
  }

  else
  {
    v53 = v21;
    v54 = v12;
    v55 = v20;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v26 = sub_29D937898();
    sub_29D69C6C0(v26, qword_2A1A2C008);
    v27 = a5;
    v28 = sub_29D937878();
    v29 = sub_29D93A2A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v30 = 136446978;
      v31 = sub_29D93AF08();
      v51 = v29;
      v33 = sub_29D6C2364(v31, v32, aBlock);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_29D6C2364(0xD000000000000028, 0x800000029D966620, aBlock);
      *(v30 + 22) = 2080;
      ObjectType = swift_getObjectType();
      LOBYTE(v57) = (*(a6 + 8))(ObjectType, a6);
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, aBlock);

      *(v30 + 24) = v37;
      *(v30 + 32) = 2080;
      v38 = a1 & 1;
      LOBYTE(v57) = v38;
      v39 = sub_29D939DA8();
      v41 = sub_29D6C2364(v39, v40, aBlock);

      *(v30 + 34) = v41;
      _os_log_impl(&dword_29D677000, v28, v51, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v30, 0x2Au);
      v42 = v52;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v42, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    else
    {

      v38 = a1 & 1;
    }

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v43 = sub_29D93A468();
    v44 = swift_allocObject();
    v45 = v56;
    *(v44 + 16) = v56;
    *(v44 + 24) = v38;
    *(v44 + 32) = v27;
    *(v44 + 40) = a6;
    aBlock[4] = sub_29D82C8E8;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2447C08;
    v46 = _Block_copy(aBlock);
    v47 = v27;
    v48 = v45;
    sub_29D939988();
    v57 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
    v49 = MEMORY[0x29EDCA248];
    sub_29D82C864(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A1A24980, &qword_2A1A24990, v49);
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v23, v16, v46);
    _Block_release(v46);

    (*(v54 + 8))(v16, v11);
    (*(v53 + 8))(v23, v55);
  }
}

void sub_29D829634(unsigned __int8 a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v8) = a2;
  swift_getObjectType();
  v10 = sub_29D939968();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_29D939998();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  if (a1 <= 1u)
  {
    v70 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v71 = v20;
    if (a1)
    {
      LODWORD(v21) = 2;
    }

    else
    {
      LODWORD(v21) = 1;
    }

    goto LABEL_7;
  }

  if (a1 == 2)
  {
    v70 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v71 = v20;
    LODWORD(v21) = 3;
LABEL_7:
    v22 = a1;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v72 = v15;
    v23 = sub_29D937898();
    sub_29D69C6C0(v23, qword_2A1A2C008);
    v24 = sub_29D937878();
    v25 = sub_29D93A268();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v69 = v21;
      v21 = v26;
      v67 = swift_slowAlloc();
      aBlock[0] = v67;
      *v21 = 136446978;
      v27 = sub_29D93AF08();
      v66 = v25;
      v29 = sub_29D6C2364(v27, v28, aBlock);
      v68 = v8;
      v30 = v29;

      *(v21 + 4) = v30;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D966650, aBlock);
      *(v21 + 22) = 2080;
      v31 = v22;
      LOBYTE(v73) = v22;
      v32 = sub_29D939DA8();
      v34 = v11;
      v35 = v5;
      v36 = sub_29D6C2364(v32, v33, aBlock);

      *(v21 + 24) = v36;
      v5 = v35;
      v11 = v34;
      *(v21 + 32) = 2080;
      LOBYTE(v73) = v69;
      v37 = sub_29D939DA8();
      v8 = sub_29D6C2364(v37, v38, aBlock);

      *(v21 + 34) = v8;
      LOBYTE(v8) = v68;
      _os_log_impl(&dword_29D677000, v24, v66, "[%{public}s.%{public}s]: Transitioning from %s to %s", v21, 0x2Au);
      v39 = v67;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v39, -1, -1);
      v40 = v21;
      LOBYTE(v21) = v69;
      MEMORY[0x29ED6BE30](v40, -1, -1);
    }

    else
    {

      v31 = v22;
    }

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v41 = sub_29D93A468();
    v42 = swift_allocObject();
    *(v42 + 16) = v5;
    *(v42 + 24) = v21;
    *(v42 + 25) = v31;
    *(v42 + 26) = v8 & 1;
    aBlock[4] = sub_29D82D054;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2447CA8;
    v43 = _Block_copy(aBlock);
    v44 = v5;
    v45 = v70;
    sub_29D939988();
    v73 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
    v46 = MEMORY[0x29EDCA248];
    sub_29D82C864(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A1A24980, &qword_2A1A24990, v46);
    v47 = v72;
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v45, v47, v43);
    _Block_release(v43);

    (*(v11 + 8))(v47, v10);
    (*(v71 + 8))(v45, v16);

    return;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v48 = sub_29D937898();
  sub_29D69C6C0(v48, qword_2A1A2C008);
  v49 = sub_29D937878();
  v50 = sub_29D93A2A8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v51 = 136446722;
    v53 = sub_29D93AF08();
    v55 = sub_29D6C2364(v53, v54, aBlock);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D966650, aBlock);
    *(v51 + 22) = 2080;
    LOBYTE(v73) = 3;
    v56 = sub_29D939DA8();
    v58 = sub_29D6C2364(v56, v57, aBlock);

    *(v51 + 24) = v58;
    _os_log_impl(&dword_29D677000, v49, v50, "[%{public}s.%{public}s]: No stage after %s, finishing", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v52, -1, -1);
    MEMORY[0x29ED6BE30](v51, -1, -1);
  }

  v59 = *&v5[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_analyticsManager];
  v60 = sub_29D939D28();
  v61 = *(*&v5[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model] + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_lockedDeliveredCountryCode);

  os_unfair_lock_lock((v61 + 32));
  v62 = *(v61 + 16);
  v63 = *(v61 + 24);
  sub_29D935E88();
  os_unfair_lock_unlock((v61 + 32));

  if (v63)
  {
    v64 = sub_29D939D28();
  }

  else
  {
    v64 = 0;
  }

  sub_29D82A174(1, 1, a3, a4);
}

void sub_29D829E04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_29D829634(a4, a5 & 1, a1, a2);
  }
}

uint64_t sub_29D829E8C(uint64_t a1, void *a2)
{
  swift_getObjectType();
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_29D9334A8();
  v7 = v6;

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  v9 = sub_29D937878();
  v10 = sub_29D93A2A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a2;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446722;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D966800, &v22);
    *(v11 + 22) = 2082;
    v16 = sub_29D939DA8();
    v18 = sub_29D6C2364(v16, v17, &v22);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s.%{public}s]: Showing blocking alert due to reason %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    v19 = v12;
    a2 = v21;
    MEMORY[0x29ED6BE30](v19, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  sub_29D82D23C(v5, v7, a2);
}

uint64_t sub_29D82A144(uint64_t result, uint64_t (*a2)(void))
{
  if (result)
  {
    return a2();
  }

  return result;
}

void sub_29D82A174(int a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v46 = a1;
  swift_getObjectType();
  v7 = sub_29D939968();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29D939998();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v18 = sub_29D937898();
  sub_29D69C6C0(v18, qword_2A1A2C008);
  v19 = sub_29D937878();
  v20 = sub_29D93A268();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v6;
    v6 = v21;
    v22 = swift_slowAlloc();
    v41 = v12;
    v42 = v17;
    v23 = a4;
    v24 = v22;
    aBlock[0] = v22;
    *v6 = 136446466;
    v25 = sub_29D93AF08();
    v27 = a3;
    v28 = v7;
    v29 = v8;
    v30 = sub_29D6C2364(v25, v26, aBlock);

    *(v6 + 4) = v30;
    v8 = v29;
    v7 = v28;
    a3 = v27;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D966690, aBlock);
    _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s.%{public}s]: Onboarding finished", v6, 0x16u);
    swift_arrayDestroy();
    v31 = v24;
    a4 = v23;
    v12 = v41;
    v17 = v42;
    MEMORY[0x29ED6BE30](v31, -1, -1);
    v32 = v6;
    LOBYTE(v6) = v40;
    MEMORY[0x29ED6BE30](v32, -1, -1);
  }

  if (v46)
  {
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v33 = sub_29D93A468();
    v34 = swift_allocObject();
    v35 = v43;
    *(v34 + 16) = v43;
    *(v34 + 24) = v6 & 1;
    *(v34 + 32) = a3;
    *(v34 + 40) = a4;
    aBlock[4] = sub_29D82D084;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2447CF8;
    v36 = _Block_copy(aBlock);
    v37 = v35;
    sub_29D695554(a3);
    sub_29D939988();
    v47 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
    v38 = MEMORY[0x29EDCA248];
    sub_29D82C864(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A1A24980, &qword_2A1A24990, v38);
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v17, v12, v36);
    _Block_release(v36);

    (*(v8 + 8))(v12, v7);
    (*(v44 + 8))(v17, v45);
  }
}

uint64_t sub_29D82A628(uint64_t a1, void (*a2)(void (*)(), uint64_t), uint64_t a3)
{
  sub_29D82C864(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v35 - v8;
  v10 = sub_29D9336F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v35 - v17;
  sub_29D9336E8();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D82D094(v9, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D82C864);
  }

  else
  {
    v37 = a3;
    v19 = *(v11 + 32);
    v19(v18, v9, v10);
    v20 = [objc_opt_self() defaultWorkspace];
    if (v20)
    {
      v21 = v20;
      (*(v11 + 16))(v15, v18, v10);
      v22 = *(v11 + 80);
      v36 = a2;
      v23 = (v22 + 24) & ~v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      v19((v24 + v23), v15, v10);
      v25 = v21;
      v36(sub_29D82D1A4, v24);

      return (*(v11 + 8))(v18, v10);
    }

    (*(v11 + 8))(v18, v10);
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v27 = sub_29D937898();
  sub_29D69C6C0(v27, qword_2A1A2C008);
  v28 = sub_29D937878();
  v29 = sub_29D93A298();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136446466;
    v32 = sub_29D93AF08();
    v34 = sub_29D6C2364(v32, v33, &v38);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D966790, &v38);
    _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s.%{public}s]: Failed to construct deep link URL to passcode settings", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v31, -1, -1);
    MEMORY[0x29ED6BE30](v30, -1, -1);
  }

  return (a2)(nullsub_1, 0);
}

void sub_29D82AAB4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v56 = a5;
  v12 = sub_29D939968();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D939998();
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v50 = a3;
    v51 = v22;
    v52 = v21;
    v54 = a7;
    v25 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v53 = v13;
    v55 = a6;
    v26 = sub_29D937898();
    sub_29D69C6C0(v26, qword_2A1A2C008);
    v27 = a2;
    v28 = sub_29D937878();
    v29 = sub_29D93A288();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = a4;
      v32 = v31;
      aBlock[0] = v31;
      *v30 = 136446722;
      v33 = sub_29D93AF08();
      v35 = sub_29D6C2364(v33, v34, aBlock);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D966910, aBlock);
      *(v30 + 22) = 2082;
      v57 = a2;
      v36 = a2;
      sub_29D6A0CD0();
      v37 = sub_29D939DA8();
      v39 = sub_29D6C2364(v37, v38, aBlock);

      *(v30 + 24) = v39;
      _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s.%{public}s]: Attempted to complete onboarding but received error: %{public}s", v30, 0x20u);
      swift_arrayDestroy();
      v40 = v32;
      a4 = v49;
      MEMORY[0x29ED6BE30](v40, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v41 = sub_29D93A468();
    v42 = swift_allocObject();
    v43 = v50;
    v42[2] = v50;
    v42[3] = a4;
    v42[4] = v56;
    aBlock[4] = sub_29D82D6E4;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2447F00;
    v44 = _Block_copy(aBlock);
    v45 = v43;
    v46 = a4;
    sub_29D939988();
    v57 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
    v47 = MEMORY[0x29EDCA248];
    sub_29D82C864(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A1A24980, &qword_2A1A24990, v47);
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v24, v17, v44);
    _Block_release(v44);

    (*(v53 + 8))(v17, v12);
    (*(v51 + 8))(v24, v52);

    v55(0);
  }

  else
  {
    a6(1);
  }
}

uint64_t sub_29D82AFC4(uint64_t a1, void *a2)
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_29D9334A8();
  v7 = v6;

  sub_29D82D23C(v5, v7, a2);
}

uint64_t sub_29D82B0BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_29D82C864(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v17 - v11;
  v13 = a1 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_rootViewController;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    sub_29D82B228(v12);
    (*(v15 + 40))(a2 & 1, v12, a3, a4, ObjectType, v15);
    sub_29D936978();
    return sub_29D82D094(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D82C864);
  }

  return result;
}

uint64_t sub_29D82B228@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_29D935018();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v4 = MEMORY[0x29EDC9C68];
  sub_29D82C864(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v8 = sub_29D9336F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D82C864(0, &qword_2A17B5E70, MEMORY[0x29EDB9940], v4);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = v43 - v17;
  v19 = sub_29D933278();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v44 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = HKHRCardioFitnessDetailRoomBaseLink();
  sub_29D9336D8();

  sub_29D933248();
  (*(v9 + 8))(v13, v8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_29D82D094(v18, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68], sub_29D82C864);
    return (*(v9 + 56))(v45, 1, 1, v8);
  }

  else
  {
    (*(v20 + 32))(v44, v18, v19);
    sub_29D935038();
    v26 = (*(v43[1] + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model) + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_mostRecentSampleDateProvider);
    v27 = v26[3];
    v28 = v26[4];
    sub_29D693E2C(v26, v27);
    (*(v28 + 8))(v27, v28);
    v46 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A17B5E78, MEMORY[0x29EDC1CD0]);
    v29 = MEMORY[0x29EDC1CD0];
    sub_29D82C864(0, &qword_2A17B5E80, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A17B5E88, &qword_2A17B5E80, v29);
    sub_29D93A888();
    v30 = sub_29D935028();
    v31 = sub_29D933108();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_29D9330F8();
    v46 = v30;
    sub_29D82D66C(&qword_2A17B5E90, MEMORY[0x29EDC1CE8]);
    v34 = sub_29D9330E8();
    v36 = v35;

    sub_29D82C864(0, &qword_2A17B5E98, MEMORY[0x29EDB9920], MEMORY[0x29EDC9E90]);
    v37 = *(sub_29D933218() - 8);
    v38 = *(v37 + 72);
    v39 = v19;
    v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    v41 = HKHRCardioFitnessChartContextQueryName();
    sub_29D939D68();

    sub_29D933728();
    sub_29D9331E8();

    v42 = v44;
    sub_29D933238();
    sub_29D933258();
    sub_29D6AA284(v34, v36);

    return (*(v20 + 8))(v42, v39);
  }
}

uint64_t sub_29D82B91C(char *a1, unsigned __int8 a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *&a1[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 25) = a4 & 1;
  *(v15 + 32) = a3;
  *(v15 + 40) = a7;
  *(v15 + 48) = a5;
  v16 = a1;
  sub_29D9001A8(a2, a3, sub_29D82C8D0, v15, v14, a6, a7);
}

id sub_29D82B9FC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CardioFitnessOnboardingCoordinator();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A2447A90;
  swift_unknownObjectWeakAssign();

  *&v9[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model] = a2;
  *&v9[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_factory] = a3;
  *&v9[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_analyticsManager] = a4;
  v14.receiver = v9;
  v14.super_class = v8;
  v10 = a2;

  v11 = a4;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_29D828B9C();

  return v12;
}

uint64_t sub_29D82BAFC(uint64_t a1, uint64_t a2)
{
  v54 = MEMORY[0x29EDCA298];
  v53 = MEMORY[0x29EDC9C68];
  sub_29D82C864(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v50 = v44 - v7;
  sub_29D82C67C();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v48 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D82C798();
  v14 = *(v13 - 8);
  v55 = v13;
  v56 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v49 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D93A458();
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D93A438();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v26 = sub_29D939998();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26 - 8, v28);
  v58[3] = sub_29D69567C(0, &qword_2A1A22230, 0x29EDBABE8);
  v58[4] = &off_2A2440508;
  v58[0] = a1;
  v29 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue_mostRecentSampleDate;
  v30 = sub_29D9339F8();
  (*(*(v30 - 8) + 56))(a2 + v29, 1, 1, v30);
  *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_mostRecentSampleDateCancellationToken) = 0;
  v45 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue;
  v31 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v44[1] = "eOnboardingRecord8@NSError16";
  v44[2] = v31;
  sub_29D939988();
  v57 = MEMORY[0x29EDCA190];
  sub_29D82D66C(&unk_2A1A24900, MEMORY[0x29EDCA288]);
  v32 = MEMORY[0x29EDCA288];
  sub_29D82C864(0, &unk_2A1A24970, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29D82D0F4(&qword_2A1A24960, &unk_2A1A24970, v32);
  sub_29D93A888();
  (*(v46 + 104))(v22, *MEMORY[0x29EDCA2A8], v47);
  *(a2 + v45) = sub_29D93A498();
  *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher) = 0;
  sub_29D6945AC(v58, a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queryExecutor);
  v57 = sub_29D69FF7C();
  sub_29D82C734(0, &qword_2A17B5E28, sub_29D6A0B58);
  sub_29D82C62C(&qword_2A17B5E40, &qword_2A17B5E28, sub_29D6A0B58);
  v33 = v48;
  sub_29D938428();

  v57 = *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue);
  v34 = v57;
  v35 = sub_29D93A448();
  v36 = v50;
  (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  sub_29D82D66C(&qword_2A17B5E58, sub_29D82C67C);
  sub_29D706380();
  v37 = v34;
  v38 = v49;
  v39 = v51;
  sub_29D938538();
  sub_29D82D094(v36, &unk_2A1A248F0, v54, v53, sub_29D82C864);
  (*(v52 + 8))(v33, v39);

  swift_allocObject();
  swift_weakInit();
  sub_29D82D66C(&unk_2A17B5E60, sub_29D82C798);
  v40 = v55;
  v41 = sub_29D938588();

  (*(v56 + 8))(v38, v40);
  sub_29D69417C(v58);
  v42 = *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_mostRecentSampleDateCancellationToken);
  *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_mostRecentSampleDateCancellationToken) = v41;

  return a2;
}

id sub_29D82C20C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  ObjectType = swift_getObjectType();
  v29[3] = type metadata accessor for CardioFitnessOnboardingMostRecentValueProvider();
  v29[4] = &off_2A2440518;
  v29[0] = a4;
  v15 = OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_lockedDeliveredCountryCode;
  sub_29D82C580(0, &unk_2A17B5E08, &qword_2A1A22290, MEMORY[0x29EDC99B0]);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *&a7[v15] = v16;
  v17 = OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_wristDetectEnabled;
  sub_29D82C580(0, &qword_2A17B5E18, &unk_2A1A24950, MEMORY[0x29EDC9A98]);
  v18 = swift_allocObject();
  *(v18 + 20) = 0;
  *(v18 + 16) = 2;
  *&a7[v17] = v18;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v19 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v19 = MEMORY[0x29EDCA1A0];
  }

  *&a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_cancellables] = v19;
  a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsChanged] = 2;
  *&a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_featureAvailabilityProvider] = a2;
  *&a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsProvider] = a3;
  sub_29D6945AC(v29, &a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_mostRecentSampleDateProvider]);
  v20 = &a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_dateProvider];
  *v20 = a5;
  v20[1] = a6;
  v28.receiver = a7;
  v28.super_class = type metadata accessor for CardioFitnessOnboardingModel();
  swift_unknownObjectRetain();

  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = ObjectType;
  aBlock[4] = sub_29D82C604;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F54;
  aBlock[3] = &unk_2A2447AF0;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  [a2 getFeatureOnboardingRecordWithCompletion_];
  _Block_release(v23);
  aBlock[0] = a1;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = MEMORY[0x29EDC2D78];
  sub_29D82C734(0, &qword_2A1A22410, MEMORY[0x29EDC2D78]);
  sub_29D82C62C(&qword_2A1A22420, &qword_2A1A22410, v25);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69417C(v29);
  return v24;
}

void sub_29D82C580(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D82D58C(255, a3, a4, MEMORY[0x29EDC9C68]);
    type metadata accessor for os_unfair_lock_s(255);
    v5 = sub_29D93AA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D82C60C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D82C62C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D82C734(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D82C67C()
{
  if (!qword_2A17B5E20)
  {
    sub_29D82C734(255, &qword_2A17B5E28, sub_29D6A0B58);
    sub_29D9339F8();
    sub_29D82C62C(&qword_2A17B5E40, &qword_2A17B5E28, sub_29D6A0B58);
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5E20);
    }
  }
}

void sub_29D82C734(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938238();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D82C798()
{
  if (!qword_2A17B5E48)
  {
    sub_29D82C67C();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D82D66C(&qword_2A17B5E58, sub_29D82C67C);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5E48);
    }
  }
}

void sub_29D82C864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D82C8E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  return sub_29D829E8C(v1, v2);
}

void sub_29D82C928(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = sub_29D828D08(a1);
  v6 = v2 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    memset(v22, 0, sizeof(v22));
    (*(v7 + 32))(v5, v22, ObjectType, v7);
    sub_29D936978();
    sub_29D82D094(v22, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D82D58C);
  }

  v9 = *(v2 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_analyticsManager);
  v10 = a2;
  v11 = sub_29D939D28();

  v12 = *(v3 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model);
  if (v10 == 1)
  {
    v13 = *(v12 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsChanged);
    v14 = v13 == 2;
    v15 = v13 ^ 1;
    if (v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v12 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_lockedDeliveredCountryCode);

  os_unfair_lock_lock((v17 + 32));
  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  sub_29D935E88();
  os_unfair_lock_unlock((v17 + 32));

  if (v19)
  {
    v20 = sub_29D939D28();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v9 submitOnboardingEventForStep:v11 acceptDefaults:v16 & 1 countryCode:v20];
}

void sub_29D82CB84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  sub_29D9334A8();

  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = ObjectType;

  v11 = sub_29D939D28();

  v32 = sub_29D82D158;
  v33 = v10;
  aBlock = MEMORY[0x29EDCA5F8];
  v29 = 1107296256;
  v30 = sub_29D799960;
  v31 = &unk_2A2447D48;
  v12 = _Block_copy(&aBlock);

  v25 = objc_opt_self();
  v13 = [v25 actionWithTitle:v11 style:0 handler:{v12, 0xE000000000000000}];
  _Block_release(v12);

  v24 = v13;
  v14 = [v8 bundleForClass_];
  sub_29D9334A8();

  v15 = [v8 bundleForClass_];
  sub_29D9334A8();

  v16 = sub_29D939D28();

  v17 = sub_29D939D28();

  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:{0, 0xE000000000000000}];

  v19 = [v8 bundleForClass_];
  sub_29D9334A8();

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  v21 = sub_29D939D28();

  v32 = sub_29D82D164;
  v33 = v20;
  aBlock = MEMORY[0x29EDCA5F8];
  v29 = 1107296256;
  v30 = sub_29D799960;
  v31 = &unk_2A2447D98;
  v22 = _Block_copy(&aBlock);

  v23 = [v25 actionWithTitle:v21 style:1 handler:{v22, 0xE000000000000000}];
  _Block_release(v22);

  [v18 addAction_];
  [v18 addAction_];

  [a1 presentViewController:v18 animated:1 completion:0];
}

void sub_29D82D054()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_29D82C928(v2, v1);
}

uint64_t sub_29D82D094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D82D0F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D82C864(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D82D164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(nullsub_1, 0);
}

void sub_29D82D1A4()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = sub_29D9336B8();
  [v2 openSensitiveURL:v4 withOptions:0];
}

void sub_29D82D23C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_29D939D28();
  v9 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:1];

  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_29D9334A8();

  v7 = sub_29D939D28();

  v8 = [objc_opt_self() actionWithTitle:v7 style:1 handler:{0, 0xE000000000000000}];

  [v9 addAction_];
  [a3 presentViewController:v9 animated:1 completion:0];
}

void sub_29D82D3D4()
{
  swift_getObjectType();
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
    v8 = v4;
    *v3 = 136446466;
    v5 = sub_29D93AF08();
    v7 = sub_29D6C2364(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D6C2364(0xD000000000000025, 0x800000029D966850, &v8);
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s.%{public}s]: User dismissed modal view", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  sub_29D82A174(0, 0, 0, 0);
}

void sub_29D82D58C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D82D5DC()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_29D828764(v0 + v2, v4, v5);
}

uint64_t sub_29D82D66C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D82D6B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_29D82D804(void *a1)
{
  v2 = v1;
  if (![a1 healthDataSource])
  {
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v4 = sub_29D73F010(MEMORY[0x29EDCA190]);
  v5 = MEMORY[0x29EDC99B0];
  v67 = MEMORY[0x29EDC99B0];
  *&v66 = 3157553;
  *(&v66 + 1) = 0xE300000000000000;
  sub_29D6940E0(&v66, v65);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v4;
  sub_29D69242C(v65, 0x5665727574616566, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
  v7 = v68;
  v8 = *(v2 + 16);
  if (v8 > 3)
  {
    if (*(v2 + 16) > 5u)
    {
      if (v8 == 6)
      {
        v10 = 0xED00007365636974;
        v9 = 0x6361725074736562;
      }

      else
      {
        v10 = 0xEC0000006C616E72;
        v9 = 0x756F4A6E69676562;
      }
    }

    else if (v8 == 4)
    {
      v9 = 0x546C616E72756F6ALL;
      v10 = 0xEB00000000657079;
    }

    else
    {
      v10 = 0xEC00000065707954;
      v9 = 0x7265646E696D6572;
    }
  }

  else if (*(v2 + 16) > 1u)
  {
    if (v8 == 2)
    {
      v10 = 0xEC00000066667543;
      v9 = 0x6F54737365636361;
    }

    else
    {
      v10 = 0xEF66667543657661;
      v9 = 0x48756F5965636E6FLL;
    }
  }

  else if (*(v2 + 16))
  {
    v10 = 0xE800000000000000;
    v9 = 0x74756F62414A5042;
  }

  else
  {
    v9 = 0xD000000000000012;
    v10 = 0x800000029D957200;
  }

  v67 = v5;
  *&v66 = v9;
  *(&v66 + 1) = v10;
  sub_29D6940E0(&v66, v65);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v7;
  sub_29D69242C(v65, 1885697139, 0xE400000000000000, v11);
  v12 = v68;
  v13 = sub_29D853B20(*(v2 + 17));
  v67 = v5;
  *&v66 = v13;
  *(&v66 + 1) = v14;
  sub_29D6940E0(&v66, v65);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v65, 0x6E6F69746361, 0xE600000000000000, v15);
  v68 = v12;
  v16 = *(v2 + 18);
  if (v16 <= 1)
  {
    if (*(v2 + 18))
    {
      v17 = 0xE700000000000000;
      v18 = 0x7972616D6D7573;
    }

    else
    {
      v17 = 0xEC0000006D6F6F52;
      v18 = 0x6570795461746164;
    }

LABEL_27:
    v67 = v5;
    *&v66 = v18;
    *(&v66 + 1) = v17;
    sub_29D6940E0(&v66, v65);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v65, 0x6E616E65766F7270, 0xEA00000000006563, v21);
    v68 = v12;
    v19 = *(v2 + 24);
    if (v19)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v16 == 2)
  {
    v17 = 0x800000029D956D90;
    v18 = 0xD000000000000018;
    goto LABEL_27;
  }

  if (v16 == 3)
  {
    v17 = 0xE800000000000000;
    v18 = 0x73676E6974746573;
    goto LABEL_27;
  }

  sub_29D8C42F8(0x6E616E65766F7270, 0xEA00000000006563, &v66);
  sub_29D6FE6B0(&v66);
  v19 = *(v2 + 24);
  if (v19)
  {
LABEL_28:
    v22 = [v19 ISOCode];
    v23 = sub_29D939D68();
    v25 = v24;

    v67 = MEMORY[0x29EDC99B0];
    *&v66 = v23;
    v5 = MEMORY[0x29EDC99B0];
    *(&v66 + 1) = v25;
    sub_29D6940E0(&v66, v65);
    v20 = v68;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v65, 0x437972746E756F63, 0xEB0000000065646FLL, v26);
    goto LABEL_29;
  }

LABEL_25:
  sub_29D8C42F8(0x437972746E756F63, 0xEB0000000065646FLL, &v66);
  sub_29D6FE6B0(&v66);
  v20 = v68;
LABEL_29:
  v27 = *(v2 + 32) == 0;
  v28 = 0x696472616F626E6FLL;
  if (*(v2 + 32))
  {
    v28 = 0x6E72756F4A77656ELL;
  }

  v29 = 0xEA0000000000676ELL;
  v67 = v5;
  if (!v27)
  {
    v29 = 0xEA00000000006C61;
  }

  *&v66 = v28;
  *(&v66 + 1) = v29;
  sub_29D6940E0(&v66, v65);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v65, 0x65707954776F6C66, 0xE800000000000000, v30);
  v68 = v20;
  v31 = *(v2 + 33);
  if (v31 == 2)
  {
    sub_29D8C42F8(0x546C616E72756F6ALL, 0xEB00000000657079, &v66);
    sub_29D6FE6B0(&v66);
  }

  else
  {
    v32 = (v31 & 1) == 0;
    v33 = 1801807223;
    if (!v32)
    {
      v33 = 0x68746E6F6DLL;
    }

    v34 = 0xE400000000000000;
    v67 = v5;
    if (!v32)
    {
      v34 = 0xE500000000000000;
    }

    *&v66 = v33;
    *(&v66 + 1) = v34;
    sub_29D6940E0(&v66, v65);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v65, 0x546C616E72756F6ALL, 0xEB00000000657079, v35);
    v68 = v20;
  }

  v36 = *MEMORY[0x29EDBA370];
  v37 = sub_29D939D68();
  v39 = v38;
  v40 = [a1 environmentDataSource];
  v41 = [v40 activePairedDeviceProductType];

  if (v41)
  {
    v42 = sub_29D939D68();
    v44 = v43;

    v67 = MEMORY[0x29EDC99B0];
    *&v66 = v42;
    *(&v66 + 1) = v44;
    sub_29D6940E0(&v66, v65);
    v45 = v68;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v65, v37, v39, v46);

    v68 = v45;
  }

  else
  {
    sub_29D8C42F8(v37, v39, &v66);

    sub_29D6FE6B0(&v66);
  }

  v47 = *MEMORY[0x29EDBA378];
  v48 = sub_29D939D68();
  v50 = v49;
  v51 = [a1 environmentDataSource];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v52 = sub_29D937898();
  sub_29D69C6C0(v52, qword_2A1A2C008);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsEvent();
  v53 = sub_29D93A2F8();

  v67 = sub_29D6B73CC();
  *&v66 = v53;
  sub_29D6940E0(&v66, v65);
  v54 = v68;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v65, v48, v50, v55);

  v68 = v54;
  v56 = *MEMORY[0x29EDBA380];
  v57 = sub_29D939D68();
  v59 = v58;
  v60 = sub_29D93A308();
  v67 = MEMORY[0x29EDC99B0];
  *&v66 = v60;
  *(&v66 + 1) = v61;
  sub_29D6940E0(&v66, v65);
  v62 = v68;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v65, v57, v59, v63);

  sub_29D936978();
  return v62;
}

uint64_t sub_29D82E104()
{
  v1 = *(v0 + 24);
  sub_29D936978();

  return swift_deallocClassInstance();
}

id sub_29D82E160@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_29D939D68();
  v6 = v5;

  v7 = v4 == 0xD000000000000030 && 0x800000029D966A50 == v6;
  if (v7 || (sub_29D93AD78() & 1) != 0)
  {

    v8 = type metadata accessor for AFibBurdenDetailViewControllerDebugActionProviding();
    v9 = swift_allocObject();
    *(a2 + 24) = v8;
    result = sub_29D82E35C(&qword_2A17B5EA8, type metadata accessor for AFibBurdenDetailViewControllerDebugActionProviding);
    *(a2 + 32) = result;
    *a2 = v9;
    return result;
  }

  if (v4 == 0xD00000000000001ELL && 0x800000029D966A90 == v6)
  {
  }

  else
  {
    v12 = sub_29D93AD78();

    if ((v12 & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  v13 = type metadata accessor for CardioFitnessDataTypeDetailDataSourceProvider();
  v14 = swift_allocObject();
  result = [objc_opt_self() _quantityTypeWithCode_];
  if (result)
  {
    *(v14 + 16) = result;
    *(a2 + 24) = v13;
    result = sub_29D82E35C(&qword_2A17B5EA0, type metadata accessor for CardioFitnessDataTypeDetailDataSourceProvider);
    *(a2 + 32) = result;
    *a2 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D82E35C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for HypertensionNotificationsHeartAttackWarning()
{
  result = qword_2A17B5EB8;
  if (!qword_2A17B5EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D82E43C()
{
  v1 = (v0 + qword_2A17B5EB0);
  *v1 = 0;
  v1[1] = 0;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();

  return sub_29D936C78();
}

id sub_29D82E574()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    v8 = sub_29D838310();
    if (v8)
    {
      v9 = v8;
      v10 = [v0 headerView];
      [v10 setAllowFullWidthIcon_];

      v11 = [v0 headerView];
      [v11 setIcon:v9 accessibilityLabel:0];
    }

    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    sub_29D936C58();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D82E7EC(void *a1)
{
  v1 = a1;
  sub_29D82E574();
}

uint64_t sub_29D82E834()
{
  v1 = *&v0[qword_2A17B5EB0];
  if (v1)
  {
    v2 = *&v0[qword_2A17B5EB0];
    swift_unknownObjectRetain();
    sub_29D8FD2F0(v0, v1);

    return sub_29D936978();
  }

  return result;
}

void sub_29D82E894(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D93A868();
  sub_29D936978();
  v3 = *&v2[qword_2A17B5EB0];
  if (v3)
  {
    v4 = *&v2[qword_2A17B5EB0];
    swift_unknownObjectRetain();
    sub_29D8FD2F0(v2, v3);

    sub_29D936978();
    sub_29D69417C(v5);
  }

  else
  {
    sub_29D69417C(v5);
  }
}

uint64_t sub_29D82E98C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B5EB0);
  v4 = *(v2 + qword_2A17B5EB0);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t type metadata accessor for BloodPressureJournalHypertensiveCrisisViewController()
{
  result = qword_2A17B5F00;
  if (!qword_2A17B5F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D82EA60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D8320F4();
  sub_29D933E18();

  v4 = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
  *a2 = v4;

  return v4;
}

void sub_29D82EAF0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_29D7B150C(v2);
}

uint64_t sub_29D82EB20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F74706D79536F6ELL;
  v4 = 0xEA0000000000736DLL;
  if (v2 != 1)
  {
    v3 = 0x736E7265636E6F63;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x736D6F74706D7973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6F74706D79536F6ELL;
  v8 = 0xEA0000000000736DLL;
  if (*a2 != 1)
  {
    v7 = 0x736E7265636E6F63;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x736D6F74706D7973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29D93AD78();
  }

  return v11 & 1;
}

uint64_t sub_29D82EC2C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D82ECD4()
{
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D82ED68()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D82EE0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D831F44();
  *a2 = result;
  return result;
}

void sub_29D82EE3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA0000000000736DLL;
  v5 = 0x6F74706D79536F6ELL;
  if (v2 != 1)
  {
    v5 = 0x736E7265636E6F63;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736D6F74706D7973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_29D82EEA0()
{
  v1 = qword_2A17B5EE0;
  v2 = *(v0 + qword_2A17B5EE0);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B5EE0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v0 action:sel_nextButtonTapped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D82EF28()
{
  v1 = qword_2A17B5EE8;
  v2 = *(v0 + qword_2A17B5EE8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B5EE8);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
    v6 = *MEMORY[0x29EDC80E0];
    v7 = *MEMORY[0x29EDC76E0];
    v8 = sub_29D93A658();
    [v5 setFont_];

    [v5 setNumberOfLines_];
    [v5 setAdjustsFontForContentSizeCategory_];
    [v5 setTextAlignment_];
    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D82F058()
{
  v1 = qword_2A17B5EF0;
  v2 = *(v0 + qword_2A17B5EF0);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B5EF0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D82F108()
{
  v1 = qword_2A17B5EF8;
  v2 = *(v0 + qword_2A17B5EF8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B5EF8);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + qword_2A17B5ED0);
    swift_getKeyPath();
    sub_29D8320F4();
    sub_29D933E18();

    v6 = *(v5 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
    if (v6)
    {
      v7 = *(v5 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
    }

    else
    {
      v7 = *MEMORY[0x29EDBA420];
      v6 = 0;
    }

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v9 = v6;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D82F1F4(uint64_t a1)
{
  v3 = sub_29D933AA8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939D18();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v32 - v15;
  v17 = (v1 + qword_2A17B5EC8);
  *v17 = 0;
  v17[1] = 0;
  *(v1 + qword_2A17B5EE0) = 0;
  *(v1 + qword_2A17B5EE8) = 0;
  *(v1 + qword_2A17B5EF0) = 0;
  *(v1 + qword_2A17B5EF8) = 0;
  *(v1 + qword_2A17B5ED0) = a1;
  v18 = *(a1 + 16);
  type metadata accessor for BloodPressureSampleFormatter();
  swift_allocObject();
  v37 = a1;

  v19 = sub_29D7C07C4(v18);
  v38 = v1;
  *(v1 + qword_2A17B5ED8) = v19;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A2BE98;
  v32 = unk_2A1A2BEA0;
  v21 = v8[2];
  v21(v13, v16, v7);
  sub_29D935E88();
  v33 = v20;
  sub_29D933A98();
  v22 = sub_29D939D98();
  v34 = v23;
  v35 = v22;
  v24 = v8[1];
  v24(v16, v7);
  sub_29D939D08();
  v21(v13, v16, v7);
  sub_29D935E88();
  v25 = v33;
  sub_29D933A98();
  sub_29D939D98();
  v24(v16, v7);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A2C038;
  v27 = sub_29D939D28();
  v28 = [objc_opt_self() imageNamed:v27 inBundle:v26];

  v29 = sub_29D936C78();
  v30 = [v29 headerView];
  [v30 setAllowFullWidthIcon_];

  [v29 setModalInPresentation_];

  return v29;
}

void sub_29D82F63C()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for BloodPressureJournalHypertensiveCrisisViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  sub_29D82FCA8();
  v2 = [v0 contentView];
  v3 = sub_29D82EF28();
  [v2 addSubview_];

  sub_29D8306E0();
  v4 = [v1 navigationItem];
  v5 = sub_29D82EEA0();
  [v4 setRightBarButtonItem_];

  sub_29D936C68();
  sub_29D936C48();
  v6 = *&v1[qword_2A17B5EE0];
  sub_29D88BBC8(&unk_2A243E5A8);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v9 = sub_29D939D28();

    [v6 setAccessibilityIdentifier_];

    v10 = *&v1[qword_2A17B5ED0];
    sub_29D7B2224(3, 2);
    sub_29D82F85C();
  }

  else
  {
    __break(1u);
  }
}

void sub_29D82F814(void *a1)
{
  v1 = a1;
  sub_29D82F63C();
}

void sub_29D82F85C()
{
  v33 = objc_opt_self();
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D9403C0;
  v2 = sub_29D82EF28();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = qword_2A17B5EE8;
  v8 = [*&v0[qword_2A17B5EE8] trailingAnchor];
  v9 = [v0 &selRef_dateForKey_completion_];
  v10 = [v9 &selRef_setRightBarButtonItems_ + 4];

  v11 = [v8 &selRef:v10 showAdaptively:? sender:? animated:? + 5];
  *(v1 + 40) = v11;
  v12 = [*&v0[v7] topAnchor];
  v13 = [v0 headerView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:16.0];
  *(v1 + 48) = v15;
  v16 = sub_29D82F058();
  v17 = [v16 leadingAnchor];

  v18 = [v0 &selRef_dateForKey_completion_];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v1 + 56) = v20;
  v21 = qword_2A17B5EF0;
  v22 = [*&v0[qword_2A17B5EF0] trailingAnchor];
  v23 = [v0 &selRef_dateForKey_completion_];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v1 + 64) = v25;
  v26 = [*&v0[v21] topAnchor];
  v27 = [*&v0[v7] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:32.0];

  *(v1 + 72) = v28;
  v29 = [*&v0[v21] bottomAnchor];
  v30 = [v0 &selRef_dateForKey_completion_];
  v31 = [v30 bottomAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v1 + 80) = v32;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v34 = sub_29D939F18();

  [v33 activateConstraints_];
}

void sub_29D82FCA8()
{
  v1 = v0;
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939D18();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v53 - v14;
  v16 = sub_29D9339F8();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + qword_2A17B5ED0);
  swift_getKeyPath();
  v67 = v21;
  sub_29D8320F4();
  sub_29D933E18();

  v22 = *(v21 + 48);
  if (v22)
  {
    v62 = v6;
    swift_getKeyPath();
    v67 = v21;
    v23 = v22;
    sub_29D933E18();

    v24 = *(v21 + 56);
    if (v24)
    {
      v61 = v12;
      swift_getKeyPath();
      v67 = v21;
      v25 = v24;
      sub_29D933E18();

      v26 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
      swift_beginAccess();
      (*(v65 + 16))(v20, v21 + v26, v66);
      v27 = *(v1 + qword_2A17B5ED8);
      v28 = sub_29D7C08CC(v23);
      v58 = v29;
      v59 = v28;
      v60 = v25;
      v30 = sub_29D7C08CC(v25);
      v56 = v31;
      v57 = v30;
      if (sub_29D745C20())
      {
        if (qword_2A17B0C20 != -1)
        {
          swift_once();
        }

        v32 = qword_2A17D0928;
        v33 = sub_29D933958();
        v34 = [v32 stringFromDate_];

        v35 = sub_29D939D68();
        v54 = v36;
        v55 = v35;
      }

      else
      {
        v37 = sub_29D745710();
        v54 = v38;
        v55 = v37;
      }

      v39 = v61;
      v61 = v23;
      v40 = sub_29D82EF28();
      sub_29D939D08();
      if (qword_2A1A242C0 != -1)
      {
        swift_once();
      }

      v41 = qword_2A1A2BE98;
      v43 = v63;
      v42 = v64;
      (*(v63 + 16))(v39, v15, v64);
      sub_29D935E88();
      v44 = v41;
      sub_29D933A98();
      sub_29D939D98();
      (*(v43 + 8))(v15, v42);
      sub_29D6CC0B8();
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_29D943EA0;
      v46 = MEMORY[0x29EDC99B0];
      *(v45 + 56) = MEMORY[0x29EDC99B0];
      v47 = sub_29D69AD24();
      v48 = v58;
      *(v45 + 32) = v59;
      *(v45 + 40) = v48;
      *(v45 + 96) = v46;
      *(v45 + 104) = v47;
      v49 = v56;
      v50 = v57;
      *(v45 + 64) = v47;
      *(v45 + 72) = v50;
      *(v45 + 80) = v49;
      *(v45 + 136) = v46;
      *(v45 + 144) = v47;
      v51 = v54;
      *(v45 + 112) = v55;
      *(v45 + 120) = v51;
      sub_29D939D38();

      v52 = sub_29D939D28();

      [v40 setText_];

      (*(v65 + 8))(v20, v66);
    }

    else
    {
    }
  }
}

uint64_t sub_29D8301DC(uint64_t a1)
{
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939D18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v38 - v15;
  v38[1] = v6;
  v39 = a1;
  if (a1 > 1u)
  {
    v20 = v7;
    v19 = 0;
  }

  else
  {
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v17 = qword_2A1A2BE98;
    (*(v8 + 16))(v13, v16, v7);
    sub_29D935E88();
    v18 = v17;
    sub_29D933A98();
    v19 = sub_29D939D98();
    v20 = v7;
    (*(v8 + 8))(v16, v7);
  }

  v21 = *MEMORY[0x29EDBA408];
  v22 = sub_29D939D68();
  v24 = v23;
  if (v22 == sub_29D939D68() && v24 == v25)
  {
  }

  else
  {
    v27 = sub_29D93AD78();

    if ((v27 & 1) == 0)
    {
      v29 = *MEMORY[0x29EDBA418];
      v30 = sub_29D939D68();
      v32 = v31;
      if (v30 == sub_29D939D68() && v32 == v33)
      {
      }

      else
      {
        v37 = sub_29D93AD78();

        if ((v37 & 1) == 0)
        {
          return v19;
        }
      }

      if (!v39)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  if (v39)
  {
    v28 = v20;
    sub_29D939D08();
    if (qword_2A1A242C0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_29D939D08();
  v28 = v20;
  if (qword_2A1A242C0 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_21:
  v34 = qword_2A1A2BE98;
  (*(v8 + 16))(v13, v16, v28);
  sub_29D935E88();
  v35 = v34;
  sub_29D933A98();
  v19 = sub_29D939D98();
  (*(v8 + 8))(v16, v28);
  return v19;
}

void sub_29D8306E0()
{
  v1 = v0;
  v51 = MEMORY[0x29EDCA190];
  v2 = sub_29D82F108();
  v3 = *MEMORY[0x29EDBA408];
  v4 = sub_29D939D68();
  v6 = v5;
  if (v4 == sub_29D939D68() && v6 == v7)
  {

    goto LABEL_15;
  }

  v9 = sub_29D93AD78();

  if (v9)
  {
LABEL_15:
    v10 = qword_2A17B5EF8;
    v24 = *&v1[qword_2A17B5EF8];
    sub_29D8301DC(0);
    v20 = type metadata accessor for BulletView();
    v25 = objc_allocWithZone(v20);
    v26 = sub_29D831488();
    sub_29D831F90();
    v27 = sub_29D939D28();

    [v26 setAccessibilityIdentifier_];

    MEMORY[0x29ED6A300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v47 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();
    v28 = *&v1[v10];
    sub_29D8301DC(2);
    v29 = objc_allocWithZone(v20);
    v30 = sub_29D831488();
    sub_29D831F90();
    v31 = sub_29D939D28();

    [v30 setAccessibilityIdentifier_];

    MEMORY[0x29ED6A300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v48 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    goto LABEL_19;
  }

  v10 = qword_2A17B5EF8;
  v11 = *&v1[qword_2A17B5EF8];
  v12 = *MEMORY[0x29EDBA418];
  v13 = sub_29D939D68();
  v15 = v14;
  if (v13 == sub_29D939D68() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_29D93AD78();

    if ((v18 & 1) == 0)
    {
      v19 = *&v1[v10];
      sub_29D8301DC(0);
      v20 = type metadata accessor for BulletView();
      v21 = objc_allocWithZone(v20);
      v22 = sub_29D831488();
      sub_29D831F90();
      v23 = sub_29D939D28();

      [v22 setAccessibilityIdentifier_];

      MEMORY[0x29ED6A300]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v49 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      goto LABEL_19;
    }
  }

  v41 = *&v1[v10];
  sub_29D8301DC(2);
  v20 = type metadata accessor for BulletView();
  v42 = objc_allocWithZone(v20);
  v43 = sub_29D831488();
  sub_29D831F90();
  v44 = sub_29D939D28();

  [v43 setAccessibilityIdentifier_];

  MEMORY[0x29ED6A300]();
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_37;
  }

  while (1)
  {
LABEL_19:
    sub_29D939FA8();
    v32 = *&v1[v10];
    sub_29D8301DC(1);
    v33 = objc_allocWithZone(v20);
    v34 = sub_29D831488();
    sub_29D831F90();
    v35 = sub_29D939D28();

    [v34 setAccessibilityIdentifier_];

    MEMORY[0x29ED6A300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();
    v20 = v51;
    if (v51 >> 62)
    {
      v36 = sub_29D93A928();
      if (!v36)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v36 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_33;
      }
    }

    if (v36 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_37:
    sub_29D939F78();
  }

  v37 = 0;
  do
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x29ED6AE30](v37, v51);
    }

    else
    {
      v38 = *(v51 + v37 + 4);
    }

    v39 = v38;
    ++v37;
    v40 = sub_29D82F058();
    [v40 addArrangedSubview_];
  }

  while (v36 != v37);
LABEL_33:

  v46 = [v1 contentView];
  v50 = sub_29D82F058();
  [v46 addSubview_];
}

uint64_t sub_29D830E98()
{
  v1 = v0;
  v2 = *&v0[qword_2A17B5ED0];
  result = sub_29D7B2224(3, 3);
  v4 = *&v1[qword_2A17B5EC8];
  if (v4)
  {
    v5 = *&v1[qword_2A17B5EC8];
    swift_unknownObjectRetain();
    ObjectType = swift_getObjectType();
    sub_29D74129C(2, v4, v1, &off_2A2447F50, ObjectType);

    return sub_29D936978();
  }

  return result;
}

uint64_t sub_29D830F28(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D93A868();
  sub_29D936978();
  v3 = *&v2[qword_2A17B5ED0];
  sub_29D7B2224(3, 3);
  v4 = *&v2[qword_2A17B5EC8];
  if (v4)
  {
    v5 = *&v2[qword_2A17B5EC8];
    swift_unknownObjectRetain();
    sub_29D831E6C(v2, v4);

    sub_29D936978();
  }

  else
  {
  }

  return sub_29D69417C(v7);
}

void sub_29D831000()
{
  v1 = *(v0 + qword_2A17B5EC8);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B5ED0);

  v3 = *(v0 + qword_2A17B5ED8);

  v4 = *(v0 + qword_2A17B5EF8);
}

void sub_29D8310A8(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B5EC8);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B5ED0);

  v4 = *(a1 + qword_2A17B5ED8);

  v5 = *(a1 + qword_2A17B5EF8);
}

uint64_t sub_29D83114C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B5EC8);
  v4 = *(v2 + qword_2A17B5EC8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

id sub_29D831168()
{
  v1 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
    [v4 setContentMode_];
    v5 = [objc_opt_self() systemBlueColor];
    [v4 setTintColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_29D83124C()
{
  v1 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___textLabel);
  }

  else
  {
    v4 = sub_29D8312AC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D8312AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setNumberOfLines_];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v1 = *MEMORY[0x29EDC80E0];
  v2 = *MEMORY[0x29EDC76F8];
  v3 = sub_29D93A658();
  [v0 setFont_];

  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_29D8313C4()
{
  v1 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29D831488()
{
  *&v0[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView] = 0;
  *&v0[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___textLabel] = 0;
  *&v0[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for BulletView();
  v1 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = sub_29D83124C();
  v3 = sub_29D939D28();

  [v2 setText_];

  v4 = [objc_opt_self() configurationWithTextStyle_];
  v5 = sub_29D831168();
  v6 = v4;
  v7 = sub_29D939D28();

  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  [v5 setImage_];
  v9 = sub_29D8313C4();
  [v9 addArrangedSubview_];

  v10 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView;
  [*&v1[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView] addArrangedSubview_];
  [v1 addSubview_];
  sub_29D8316FC();

  return v1;
}

void sub_29D8316FC()
{
  v1 = objc_opt_self();
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D940A00;
  v3 = sub_29D831168();
  v4 = [v3 widthAnchor];

  v5 = [v4 constraintEqualToConstant_];
  *(v2 + 32) = v5;
  v6 = [*&v0[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView] heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  *(v2 + 40) = v7;
  v8 = sub_29D8313C4();
  v9 = [v8 topAnchor];

  v10 = [v0 topAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v2 + 48) = v11;
  v12 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView;
  v13 = [*&v0[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 56) = v15;
  v16 = [*&v0[v12] leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v2 + 64) = v18;
  v19 = [*&v0[v12] trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v2 + 72) = v21;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v22 = sub_29D939F18();

  [v1 activateConstraints_];
}

id sub_29D831A4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D831B0C(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_29D9339F8();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a2[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model];
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a1;
  v11[4] = &off_2A2444C58;
  v11[5] = ObjectType;
  v28 = ObjectType;
  swift_getKeyPath();
  aBlock[0] = v10;
  sub_29D8320F4();
  v12 = a1;
  v13 = a2;
  sub_29D933E18();

  v14 = *(v10 + 6);
  if (v14)
  {
    swift_getKeyPath();
    aBlock[0] = v10;
    v15 = v14;
    sub_29D933E18();

    v16 = *(v10 + 7);
    if (v16)
    {
      v28 = *(v10 + 5);
      swift_getKeyPath();
      aBlock[0] = v10;
      v17 = v16;
      sub_29D933E18();

      v18 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
      swift_beginAccess();
      v20 = v26;
      v19 = v27;
      (*(v26 + 16))(v9, &v10[v18], v27);
      v21 = sub_29D933958();
      (*(v20 + 8))(v9, v19);
      v22 = swift_allocObject();
      v22[2] = v10;
      v22[3] = v15;
      v22[4] = v17;
      v22[5] = sub_29D83214C;
      v22[6] = v11;
      aBlock[4] = sub_29D832158;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D83C0B4;
      aBlock[3] = &unk_2A2447FC8;
      v23 = _Block_copy(aBlock);
      v24 = v15;
      v25 = v17;

      [v28 classificationGuidelinesOnDate:v21 completionHandler:v23];

      _Block_release(v23);

      return;
    }
  }

  sub_29D74129C(1, v13, v12, &off_2A2444C58, v28);
}

uint64_t sub_29D831E6C(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();

  return sub_29D74129C(2, a2, a1, &off_2A2447F50, ObjectType);
}

void sub_29D831EC0(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = a1;
  v6 = a2;
  sub_29D74129C(2, v6, v5, &off_2A2441CA8, ObjectType);
}

uint64_t sub_29D831F44()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_29D831F90()
{
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_29D943EA0;
  *(inited + 40) = 0x800000029D957090;
  *(inited + 48) = 2036625218;
  *(inited + 56) = 0xE400000000000000;
  sub_29D93AB08();
  *(inited + 64) = 0;
  *(inited + 72) = 0xE000000000000000;
  v1 = sub_29D935E88();
  sub_29D88BBC8(v1);
  v2 = sub_29D939F18();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    sub_29D939D68();

    swift_setDeallocating();
    v4 = *(inited + 16);
    swift_arrayDestroy();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_29D8320F4()
{
  result = qword_2A17B3830;
  if (!qword_2A17B3830)
  {
    type metadata accessor for BloodPressureJournalLoggingModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3830);
  }

  return result;
}

uint64_t sub_29D832168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D832194()
{
  result = qword_2A17B5F28;
  if (!qword_2A17B5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5F28);
  }

  return result;
}

id sub_29D8321E8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5Heart47HypertensionNotificationsCompleteViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v2 = sub_29D939D28();

  v3 = sub_29D939D28();

  v6.receiver = v0;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithTitle_detailText_icon_contentLayout_, v2, v3, 0, 3, 0xE000000000000000);

  return v4;
}

void sub_29D83237C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    v8 = [v0 navigationItem];
    [v8 setHidesBackButton_];

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v9 = qword_2A1A2C038;
    v10 = sub_29D939D28();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

    if (v11)
    {
      v12 = [v0 headerView];
      [v12 setAllowFullWidthIcon_];

      v13 = [v0 headerView];
      [v13 setIcon:v11 accessibilityLabel:0];
    }

    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v14 = sub_29D939D28();

    v15 = sub_29D939D28();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D8328C8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart47HypertensionNotificationsCompleteViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D832940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v4 = sub_29D937B88();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v46[2] = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29D933A58();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v49, v10);
  v47 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D936338();
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v13 = swift_allocObject();
  v13[4] = 0;
  v13[5] = 0;
  v13[2] = v12;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = 0;
  v13[3] = v14;
  v15 = MEMORY[0x29EDC9E90];
  sub_29D834574(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v16 = *(sub_29D9359D8() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29D93DDB0;
  sub_29D834574(0, &qword_2A17B1138, sub_29D6FC5F4, v15);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D93F680;
  v21 = v12;
  v46[3] = a1;
  v22 = sub_29D936338();
  v23 = sub_29D935DA8();
  *(v20 + 56) = v23;
  v24 = sub_29D8343FC(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
  *(v20 + 64) = v24;
  v25 = sub_29D693F78((v20 + 32));
  sub_29D832FEC(v22, v13, v25);

  *(v20 + 96) = v23;
  *(v20 + 104) = v24;
  v26 = sub_29D693F78((v20 + 72));
  v46[0] = v13;
  v27 = v47;
  sub_29D833750(v13, v26);
  sub_29D933A48();
  sub_29D933A18();
  v28 = *(v8 + 8);
  v48 = v8 + 8;
  v28(v27, v49);
  v46[1] = v19;
  sub_29D9359C8();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v50[0] = &unk_2A243D870;
  sub_29D88BBC8(&unk_2A243E768);
  v29 = sub_29D939F18();
  v30 = HKUIJoinStringsForAutomationIdentifier();

  if (v30)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    sub_29D937B18();
    v31 = sub_29D934D58();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = sub_29D934D38();
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_29D93AA18();

    strcpy(v50, "MutableArray<");
    HIWORD(v50[1]) = -4864;
    sub_29D933A48();
    v35 = sub_29D933A18();
    v37 = v36;
    v28(v27, v49);
    MEMORY[0x29ED6A240](v35, v37);

    MEMORY[0x29ED6A240](62, 0xE100000000000000);
    v38 = sub_29D935B98();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_29D935B28();
    sub_29D9355C8();

    v50[3] = v31;
    v50[4] = sub_29D8343FC(&qword_2A17B2C98, MEMORY[0x29EDC1C30]);
    v50[0] = v34;
    sub_29D6FC6EC();
    sub_29D8343FC(&qword_2A17B2720, sub_29D6FC6EC);

    v41 = sub_29D935598();

    sub_29D69417C(v50);
    v42 = sub_29D936338();
    sub_29D834444();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    sub_29D88C9BC(v41, v42, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_29D832FEC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v64 = a1;
  v57 = a3;
  v3 = sub_29D936BE8();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29D834574(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v62 = &v52 - v11;
  v12 = sub_29D935C78();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D834574(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v7);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v20 = &v52 - v19;
  v58 = sub_29D937928();
  v21 = *(v58 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v58, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D9378C8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D937B88();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v32, v35);
  v37 = &v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v66[3] = v32;
  v66[4] = MEMORY[0x29EDC7800];
  v38 = sub_29D693F78(v66);
  (*(v33 + 16))(v38, v37, v32);
  sub_29D834574(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v39 = *(sub_29D937948() - 8);
  v40 = *(v39 + 72);
  v41 = *(v39 + 80);
  v53 = v33;
  v42 = swift_allocObject();
  v52 = v32;
  *(v42 + 16) = xmmword_29D93DDB0;
  (*(v27 + 104))(v31, *MEMORY[0x29EDC7768], v26);
  v43 = sub_29D9378D8();
  (*(*(v43 - 8) + 56))(v20, 1, 1, v43);
  sub_29D937918();
  sub_29D937908();
  (*(v21 + 8))(v25, v58);
  (*(v27 + 8))(v31, v26);
  v44 = swift_allocObject();
  v45 = v64;
  *(v44 + 16) = v63;
  *(v44 + 24) = v45;
  v46 = v60;
  v47 = v61;
  *v61 = 1;
  (*(v59 + 104))(v47, *MEMORY[0x29EDC22C0], v46);
  v48 = sub_29D9379E8();
  (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
  v65 = &unk_2A243D870;

  v49 = v45;
  sub_29D88BBC8(&unk_2A243E6E8);
  v50 = sub_29D939F18();
  v51 = HKUIJoinStringsForAutomationIdentifier();

  if (v51)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    (*(v55 + 104))(v54, *MEMORY[0x29EDC2A38], v56);
    sub_29D935D98();
    (*(v53 + 8))(v37, v52);
  }

  else
  {
    __break(1u);
  }
}

void sub_29D833750(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v53 = a2;
  v2 = sub_29D936BE8();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D834574(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v58 = &v48 - v10;
  v11 = sub_29D935C78();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v57 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D834574(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v19 = &v48 - v18;
  v54 = sub_29D937928();
  v20 = *(v54 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v54, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D9378C8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D937B88();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v48 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v61[3] = v31;
  v61[4] = MEMORY[0x29EDC7800];
  v37 = sub_29D693F78(v61);
  (*(v32 + 16))(v37, v36, v31);
  sub_29D834574(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v38 = *(sub_29D937948() - 8);
  v39 = *(v38 + 72);
  v40 = *(v38 + 80);
  v49 = v31;
  v41 = swift_allocObject();
  v48 = v32;
  *(v41 + 16) = xmmword_29D93DDB0;
  (*(v26 + 104))(v30, *MEMORY[0x29EDC7768], v25);
  v42 = sub_29D9378D8();
  (*(*(v42 - 8) + 56))(v19, 1, 1, v42);
  sub_29D937918();
  sub_29D937908();
  (*(v20 + 8))(v24, v54);
  (*(v26 + 8))(v30, v25);
  v43 = v56;
  v44 = v57;
  *v57 = 1;
  (*(v55 + 104))(v44, *MEMORY[0x29EDC22C0], v43);
  v45 = sub_29D9379E8();
  (*(*(v45 - 8) + 56))(v58, 1, 1, v45);
  v60 = &unk_2A243D870;

  sub_29D88BBC8(&unk_2A243E728);
  v46 = sub_29D939F18();
  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (v47)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    (*(v51 + 104))(v50, *MEMORY[0x29EDC2A38], v52);
    sub_29D935D98();
    (*(v48 + 8))(v36, v49);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D833E94()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CB8();
  v6 = sub_29D935CF8();
  (*(v1 + 8))(v5, v0);
  return v6;
}

void sub_29D833F68(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for BloodPressureDataTypeDetailViewController();
  if (swift_dynamicCastClass())
  {
    v5 = sub_29D7D0C64();
  }

  else
  {
    v5 = 5;
  }

  sub_29D6AA594(v5, 6);
  type metadata accessor for BloodPressureJournalBestPracticesManager();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v8 = a3;
  v9 = sub_29D939D28();
  v10 = [v7 initWithCategory:2 domainName:v9 healthStore:v8];

  *(v6 + 24) = v10;
  v11 = type metadata accessor for BloodPressureJournalLoggingModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = v8;

  v15 = sub_29D7B28C8(v14, v6, 4);

  v16 = objc_allocWithZone(type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController());
  v17 = &v16[qword_2A17B22E8];
  *v17 = 0;
  v17[1] = 0;
  *&v16[qword_2A17B22F0] = v15;
  v16[qword_2A17B22F8] = 1;
  *&v16[qword_2A17B2300] = *(v15 + 24);

  v18 = sub_29D81C20C(1);
  [a1 showViewController:v18 sender:0];
}

uint64_t sub_29D834148(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D834574(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v21 - v8;
  sub_29D834574(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v21 - v13;
  type metadata accessor for BloodPressureDataTypeDetailViewController();
  if (swift_dynamicCastClass())
  {
    v15 = sub_29D7D0C64();
  }

  else
  {
    v15 = 5;
  }

  v16 = sub_29D93A028();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a2;
  *(v17 + 40) = v15;
  *(v17 + 41) = 6;
  *(v17 + 48) = v3;

  sub_29D6BEBA4(0, 0, v14, &unk_29D9402C0, v17);

  sub_29D9336E8();
  v18 = sub_29D9336F8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    return sub_29D6D96C0(v9);
  }

  sub_29D9336A8();
  return (*(v19 + 8))(v9, v18);
}

uint64_t sub_29D8343FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D834444()
{
  if (!qword_2A17B5F38)
  {
    sub_29D8344D8();
    sub_29D8343FC(&qword_2A17B5F48, sub_29D8344D8);
    v0 = type metadata accessor for BloodPressureJournalHideableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5F38);
    }
  }
}

void sub_29D8344D8()
{
  if (!qword_2A17B5F40)
  {
    sub_29D6FC6EC();
    sub_29D8343FC(&qword_2A17B2720, sub_29D6FC6EC);
    v0 = sub_29D935158();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5F40);
    }
  }
}

void sub_29D834574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *sub_29D8345E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  sub_29D6CE508();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7, v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_29D934178();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v26[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D751814(v19);
  (*(v15 + 32))(v3 + OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_domain, v19, v14);
  v20 = *a1;
  v28 = *(a1 + 8);
  v27 = *(a1 + 16);
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 56) = a2;
  *(v21 + 64) = v6;
  v23 = v20;
  sub_29D753C5C(&v28, v26);
  sub_29D738808(&v27, v26);
  sub_29D6CE59C();
  sub_29D835168(&qword_2A1A24AB0, sub_29D6CE59C);

  sub_29D938378();
  sub_29D835168(&qword_2A1A24A00, sub_29D6CE508);
  v24 = sub_29D938418();
  (*(v9 + 8))(v13, v8);
  *(v3 + OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_publisher) = v24;

  sub_29D8351B0(&v28, sub_29D835088);
  sub_29D6AA360(&v27);
  return v3;
}

uint64_t sub_29D8348E4(uint64_t a1, uint64_t a2)
{
  sub_29D6D09E0(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C((a2 + 24), *(a2 + 48));
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = off_2A2443F00;
  sub_29D935E88();
  v16();
  v17 = sub_29D9340F8();
  if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
  {

    sub_29D8351B0(v13, sub_29D6C36D8);
    v18 = *a1;
    v47 = *(a1 + 8);
    sub_29D935E88();
    v19 = v18;
    sub_29D753C5C(&v47, &v46);
    v20 = sub_29D937878();
    v21 = sub_29D93A268();

    sub_29D8351B0(&v47, sub_29D835088);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136446466;
      v45 = v42;
      v46 = v23;
      sub_29D835210();
      v24 = sub_29D939DA8();
      v26 = sub_29D6C2364(v24, v25, &v46);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(v14, v15, &v46);
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s(%{public}s]: No previous feed item found, no changes necessary", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    v27 = MEMORY[0x29EDCA190];
  }

  else
  {
    sub_29D8351B0(v13, sub_29D6C36D8);
    v28 = *a1;
    v47 = *(a1 + 8);
    sub_29D935E88();
    v29 = v28;
    sub_29D753C5C(&v47, &v46);
    v30 = sub_29D937878();
    v31 = sub_29D93A268();

    sub_29D8351B0(&v47, sub_29D835088);

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136446466;
      v45 = v42;
      v46 = v33;
      sub_29D835210();
      v34 = sub_29D939DA8();
      v36 = sub_29D6C2364(v34, v35, &v46);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_29D6C2364(v14, v15, &v46);
      _os_log_impl(&dword_29D677000, v30, v31, "[%{public}s(%{public}s]: Previous feed item found, removing identifier", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    v37 = MEMORY[0x29EDC9E90];
    sub_29D7546B8(0, &qword_2A1A21F60, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
    v27 = swift_allocObject();
    v42 = xmmword_29D93DDB0;
    *(v27 + 16) = xmmword_29D93DDB0;
    sub_29D7546B8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], v37);
    v38 = swift_allocObject();
    *(v38 + 16) = v42;
    *(v38 + 32) = v14;
    *(v38 + 40) = v15;
    *(v27 + 32) = v38;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 32;
  }

  v46 = v27;
  sub_29D7546B8(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D938338();
  sub_29D835168(&qword_2A1A24A58, sub_29D6D09E0);
  v39 = v44;
  v40 = sub_29D938418();
  (*(v43 + 8))(v8, v39);
  return v40;
}

uint64_t sub_29D834EC4()
{
  v1 = OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyRelatedSampleTypesGenerator()
{
  result = qword_2A1A23D68;
  if (!qword_2A1A23D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D834FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D835054@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = v1 + 16;
  v5 = *(v1 + 64);
  result = sub_29D8348E4(v4, v3);
  *a1 = result;
  return result;
}

void sub_29D835088()
{
  if (!qword_2A1A22248)
  {
    sub_29D83511C();
    sub_29D835168(&qword_2A1A24920, sub_29D83511C);
    v0 = sub_29D93A128();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22248);
    }
  }
}

unint64_t sub_29D83511C()
{
  result = qword_2A1A24930;
  if (!qword_2A1A24930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A24930);
  }

  return result;
}

uint64_t sub_29D835168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8351B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D835210()
{
  result = qword_2A1A23CB8[0];
  if (!qword_2A1A23CB8[0])
  {
    type metadata accessor for EmptyRelatedSampleTypesGenerator();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A23CB8);
  }

  return result;
}

uint64_t sub_29D835258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D836558(0, &qword_2A17B7AC0, MEMORY[0x29EDC9A98], MEMORY[0x29EDC2EA0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7, v11);
  v13 = &v17 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F8] healthStore:a2];
  sub_29D93A408();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_29D6CA084();
  sub_29D93A608();

  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_29D835400()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;

  return sub_29D934788();
}

uint64_t sub_29D83548C(char a1, char a2)
{
  sub_29D836558(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  if (a1)
  {
    if (qword_2A1A257A0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (qword_2A1A257A0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_2A1A257A0 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  *(v4 + 32) = sub_29D9334A8();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_29D9334A8();
  *(v4 + 56) = v6;
  return v4;
}

uint64_t sub_29D8356A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a2;
  sub_29D8364A0(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v35[-v8];
  v10 = sub_29D9371A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
  swift_beginAccess();
  sub_29D6E8508(a1 + v16, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D8364F4(v9, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    v18 = sub_29D937878();
    v19 = sub_29D93A288();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136446210;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v38);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s]: No status available for IRN; reporting 'available'", v20, 0xCu);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    v25 = 0;
    v26 = 1;
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v27 = *MEMORY[0x29EDBA5A0];
    v28 = sub_29D9371B8();
    v29 = *MEMORY[0x29EDBA5D0];
    v36 = sub_29D93A648();
    v30 = *MEMORY[0x29EDBA5D8];
    v31 = sub_29D93A648();

    v26 = v36 & v31;
    v32 = sub_29D9371B8();
    v33 = *MEMORY[0x29EDBA688];
    LOBYTE(v27) = sub_29D93A648();

    (*(v11 + 8))(v15, v10);
    v25 = v27 ^ 1;
  }

  return sub_29D835AC4(a3, v26 & 1, v25 & 1);
}

uint64_t sub_29D835A38()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D835AC4@<X0>(uint64_t a1@<X8>, char a2@<W0>, char a3@<W1>)
{
  if (a3)
  {
    return sub_29D835AF0(a1);
  }

  if (a2)
  {
    return sub_29D835FF4(a1);
  }

  return sub_29D835D8C(a1);
}

uint64_t sub_29D835AF0@<X0>(uint64_t a1@<X8>)
{
  sub_29D8364A0(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v18 - v6;
  v8 = [objc_opt_self() seedExpiredLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_29D8364F4(v7, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  sub_29D823158(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93F680;
  v18[1] = v1;
  swift_getMetatypeMetadata();
  v13 = sub_29D939DA8();
  v15 = v14;
  v16 = MEMORY[0x29EDC99B0];
  *(v12 + 56) = MEMORY[0x29EDC99B0];
  v17 = sub_29D69AD24();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = 0xD00000000000001DLL;
  *(v12 + 80) = 0x800000029D960EC0;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D835D8C@<X0>(uint64_t a1@<X8>)
{
  sub_29D8364A0(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v17 - v6;
  sub_29D9336E8();
  v8 = sub_29D9336F8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_29D8364F4(v7, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  sub_29D823158(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93F680;
  v17[1] = v1;
  swift_getMetatypeMetadata();
  v12 = sub_29D939DA8();
  v14 = v13;
  v15 = MEMORY[0x29EDC99B0];
  *(v11 + 56) = MEMORY[0x29EDC99B0];
  v16 = sub_29D69AD24();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 64) = v16;
  *(v11 + 72) = 0xD000000000000025;
  *(v11 + 80) = 0x800000029D960E90;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D835FF4@<X0>(uint64_t a1@<X8>)
{
  sub_29D8364A0(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v18 - v6;
  v8 = [objc_opt_self() irregularHeartRhythmFooterLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_29D8364F4(v7, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  sub_29D823158(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93F680;
  v18[1] = v1;
  swift_getMetatypeMetadata();
  v13 = sub_29D939DA8();
  v15 = v14;
  v16 = MEMORY[0x29EDC99B0];
  *(v12 + 56) = MEMORY[0x29EDC99B0];
  v17 = sub_29D69AD24();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = 0xD00000000000001BLL;
  *(v12 + 80) = 0x800000029D960EE0;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

void sub_29D836290(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a2;
    oslog = sub_29D937878();
    v5 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315394;
      v8 = sub_29D93AF08();
      v10 = sub_29D6C2364(v8, v9, &v16);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2082;
      v11 = a2;
      sub_29D823158(0, &qword_2A17B7AF0, &qword_2A1A24850, MEMORY[0x29EDC9F18], MEMORY[0x29EDC9C68]);
      v12 = sub_29D939DB8();
      v14 = sub_29D6C2364(v12, v13, &v16);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_29D677000, oslog, v5, "[%s]: Unable to change IRN setting: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v7, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D8364A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D8364F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D8364A0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D836550(char a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_29D836290(a1, a2);
}

void sub_29D836558(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D8365A8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    v5 = sub_29D939F18();
  }

  if (a2)
  {
    v6 = sub_29D933588();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id sub_29D836654()
{
  v1 = OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider_store);
    sub_29D6945AC(v0 + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider_healthExperienceStore, v12);
    v5 = objc_allocWithZone(type metadata accessor for SummariesElectrocardiogramDataFetcher());
    v6 = v4;
    v7 = v0;
    v8 = sub_29D837C18(v6, v12, 0, 0);

    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_29D8369C8()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_queryData);
  if (v8)
  {
    v43 = v8;
    v9 = [v43 samples];
    if (v9)
    {
      v10 = v9;
      v45 = 0;
      sub_29D69567C(0, &unk_2A17B6020, 0x29EDC44C0);
      sub_29D939F28();

      v11 = v45;
      if (v45)
      {
        v12 = v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler;
        v13 = *(v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler);
        if (v13)
        {
          v14 = *(v12 + 8);
          v45 = MEMORY[0x29EDCA190];
          if (v11 >> 62)
          {
            goto LABEL_36;
          }

          for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D93A928())
          {

            if (!i)
            {
              break;
            }

            v41[1] = v14;
            v42 = v13;
            v16 = 0;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x29ED6AE30](v16, v11);
              }

              else
              {
                if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_35;
                }

                v17 = *(v11 + 8 * v16 + 32);
              }

              v14 = v17;
              v13 = (v16 + 1);
              if (__OFADD__(v16, 1))
              {
                break;
              }

              v18 = [objc_opt_self() createWithCodableECG_];

              v14 = &v45;
              MEMORY[0x29ED6A300]();
              if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v41[0] = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_29D939F78();
              }

              sub_29D939FA8();
              ++v16;
              if (v13 == i)
              {
                v40 = v45;
                v13 = v42;
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            ;
          }

          v40 = MEMORY[0x29EDCA190];
LABEL_30:

          v13(v40, 0);
          sub_29D694784(v13);
        }

        v39 = v43;

        goto LABEL_25;
      }
    }

    sub_29D937818();
    v19 = v43;
    v20 = sub_29D937878();
    v21 = sub_29D93A288();

    v22 = os_log_type_enabled(v20, v21);
    v43 = v19;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v19;
      v45 = v24;
      *v23 = 136315138;
      sub_29D69567C(0, &qword_2A17B6018, 0x29EDC44B8);
      v25 = v19;
      v26 = sub_29D939DB8();
      v28 = sub_29D6C2364(v26, v27, &v45);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_29D677000, v20, v21, "Cound not decode samples from query data %s", v23, 0xCu);
      sub_29D69417C(v24);
      MEMORY[0x29ED6BE30](v24, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v29 = v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler;
    v30 = *(v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler);
    if (v30)
    {
      v31 = *(v29 + 8);
      sub_29D83774C();
      v32 = swift_allocError();
      *v33 = 4;

      v30(0, v32);

      sub_29D694784(v30);
    }

    else
    {
    }
  }

  else
  {
    v34 = v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler;
    v35 = *(v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler);
    if (v35)
    {
      v36 = *(v34 + 8);
      sub_29D83774C();
      v37 = swift_allocError();
      *v38 = 4;

      v35(0, v37);
      sub_29D694784(v35);
      v39 = v37;

LABEL_25:
    }
  }
}

void sub_29D836F14(void *a1, uint64_t a2, void *a3, void **a4)
{
  v78 = a3;
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  v79 = v6;
  v80 = v7;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = &v76 - v15;
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = &v76 - v19;
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v24 = &v76 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v76 - v26;
  v28 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  v29 = sub_29D933EC8();
  sub_29D934528();
  v36 = sub_29D93A5A8();
  v37 = v27;
  v76 = v20;
  v77 = v16;

  if (v36 >> 62)
  {
    if (sub_29D93A928())
    {
LABEL_8:
      if ((v36 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x29ED6AE30](0, v36);
      }

      else
      {
        if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_43;
        }

        v38 = *(v36 + 32);
      }

      v39 = v38;
      v40 = [v38 userData];
      if (v40)
      {
        v41 = v40;
        v42 = sub_29D933738();
        v44 = v43;

        v45 = sub_29D933718();
        sub_29D6AA284(v42, v44);
      }

      else
      {
        v45 = 0;
      }

      v46 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

      if (!v46)
      {

        sub_29D937858();
        v61 = sub_29D937878();
        v62 = sub_29D93A298();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_29D677000, v61, v62, "Unable to decode chart feed item data", v63, 2u);
          MEMORY[0x29ED6BE30](v63, -1, -1);
        }

        goto LABEL_27;
      }

      v47 = [v46 chartModel];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 hasSixMonthData];

        if (v49)
        {
          v50 = [v46 chartModel];
          if (v50)
          {
            v51 = v50;

            v52 = [v51 sixMonthData];

            if (v52)
            {
              v53 = [v52 queryDataObject];
              if (v53)
              {
                v54 = v53;
                v55 = sub_29D933738();
                v56 = v39;
                v58 = v57;

                v59 = sub_29D933718();
                v60 = v58;
                v39 = v56;
                sub_29D6AA284(v55, v60);
              }

              else
              {
                v59 = 0;
              }

              v70 = [objc_allocWithZone(MEMORY[0x29EDC44B8]) initWithData_];

              if (v70)
              {

                v71 = *a4;
                *a4 = v70;
              }

              else
              {
                v72 = v76;
                sub_29D937858();
                v73 = sub_29D937878();
                v74 = sub_29D93A298();
                if (os_log_type_enabled(v73, v74))
                {
                  v75 = swift_slowAlloc();
                  *v75 = 0;
                  _os_log_impl(&dword_29D677000, v73, v74, "Unable to decode query data from charting model", v75, 2u);
                  MEMORY[0x29ED6BE30](v75, -1, -1);
                }

                (*(v80 + 8))(v72, v79);
              }
            }

            else
            {
              sub_29D937858();
              v67 = sub_29D937878();
              v68 = sub_29D93A298();
              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                *v69 = 0;
                _os_log_impl(&dword_29D677000, v67, v68, "Unable to decode sharable charting model", v69, 2u);
                MEMORY[0x29ED6BE30](v69, -1, -1);
              }

              (*(v80 + 8))(v24, v79);
            }

            return;
          }

LABEL_44:
          __break(1u);
          return;
        }

        v37 = v77;
        sub_29D937858();
        v64 = sub_29D937878();
        v65 = sub_29D93A298();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_29D677000, v64, v65, "Missing data charting model", v66, 2u);
          MEMORY[0x29ED6BE30](v66, -1, -1);
        }

LABEL_27:
        (*(v80 + 8))(v37, v79);
        return;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  sub_29D937858();
  v30 = v78;
  v31 = sub_29D937878();
  v32 = sub_29D93A298();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_29D677000, v31, v32, "Missing feed item when trying to decode Summaries data for %@", v33, 0xCu);
    sub_29D6ACA3C(v34);
    MEMORY[0x29ED6BE30](v34, -1, -1);
    MEMORY[0x29ED6BE30](v33, -1, -1);
  }

  (*(v80 + 8))(v12, v79);
}

id sub_29D837680(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29D83774C()
{
  result = qword_2A17B6010;
  if (!qword_2A17B6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6010);
  }

  return result;
}

uint64_t sub_29D8377A0(uint64_t a1, void *a2)
{
  sub_29D837D18(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &aBlock[-2] - v6;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v8 = [swift_getObjCClassFromMetadata() electrocardiogramType];
  sub_29D934528();
  sub_29D837D18(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v9 = sub_29D933F58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v30 = xmmword_29D93DDB0;
  *(v13 + 16) = xmmword_29D93DDB0;
  (*(v10 + 104))(v13 + v12, *MEMORY[0x29EDC3710], v9);
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D940030;
  *(v14 + 32) = v8;
  v15 = sub_29D9331D8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_29D6AA3B4(0, &qword_2A17B50A8);
  v16 = swift_allocObject();
  *(v16 + 16) = v30;
  v17 = v8;
  *(v16 + 32) = sub_29D93A208();
  v18 = MEMORY[0x29ED648C0](v13, v14, v7, v16);

  sub_29D837D7C(v7);
  v19 = v18;
  v20 = sub_29D9344F8();

  v33 = 0;
  v21 = a2[4];
  sub_29D693E2C(a2, a2[3]);
  v22 = sub_29D933EC8();
  sub_29D6945AC(a2, v32);
  v23 = swift_allocObject();
  sub_29D6959E8(v32, (v23 + 2));
  v23[7] = v20;
  v23[8] = v17;
  v23[9] = &v33;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_29D837E08;
  *(v24 + 24) = v23;
  aBlock[4] = sub_29D79B1A4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D837610;
  aBlock[3] = &unk_2A2448218;
  v25 = _Block_copy(aBlock);
  v26 = v17;
  v27 = v20;

  [v22 performBlockAndWait_];

  _Block_release(v25);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v29 = v33;

    return v29;
  }

  return result;
}

id sub_29D837C18(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_healthStore] = a1;
  sub_29D6945AC(a2, &v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_healthExperienceStore]);
  *v9 = a3;
  v9[1] = a4;
  v10 = a1;
  sub_29D695554(a3);
  v11 = sub_29D8377A0(v10, a2);
  v12 = v11;
  *&v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_queryData] = v11;
  if (v11)
  {
    v11 = [v11 activeAlgorithmVersionRawValue];
  }

  v13 = &v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_activeAlgorithmVersion];
  *v13 = v11;
  v13[8] = v12 == 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SummariesElectrocardiogramDataFetcher();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_29D69417C(a2);
  return v14;
}

void sub_29D837D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D837D7C(uint64_t a1)
{
  sub_29D837D18(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D837E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D837E44()
{
  result = qword_2A17B6030;
  if (!qword_2A17B6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6030);
  }

  return result;
}

uint64_t sub_29D837E98()
{
  v0 = [objc_opt_self() systemPinkColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [v1 configurationWithPointSize:4 weight:36.0];
  v4 = [v2 configurationByApplyingConfiguration_];

  return sub_29D934778();
}

void sub_29D837F94()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:51.0];
  v2 = [objc_opt_self() systemPinkColor];
  v4 = [v0 configurationWithHierarchicalColor_];

  v3 = [v1 configurationByApplyingConfiguration_];
  sub_29D934778();
}

id sub_29D8380A0()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  return v6;
}

id sub_29D8381D8()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

id sub_29D838310()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

uint64_t type metadata accessor for HypertensionNotificationsRoomViewController()
{
  result = qword_2A17B6068;
  if (!qword_2A17B6068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D838518(unint64_t a1)
{
  v9 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
LABEL_15:
    sub_29D93A928();
    sub_29D93AAD8();
    v3 = sub_29D93A928();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29D93AAD8();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x29ED6AE30](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            sub_29D936978();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_29D93AAB8();
        v7 = *(v9 + 16);
        sub_29D93AAE8();
        sub_29D93AAF8();
        sub_29D93AAC8();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_29D83868C(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_29D93AAD8();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED6AE30](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = *a2;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_29D93AAB8();
      v11 = *(v13 + 16);
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_29D93A928();
    sub_29D93AAD8();
  }

  return v13;
}

id sub_29D8387F4(void *a1)
{
  v2 = sub_29D936378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_29D9364A8();
  v9 = sub_29D936338();

  (*(v3 + 8))(v7, v2);

  return v9;
}

char *sub_29D8388F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v40 - v12;
  v41 = v10;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v14 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v14 = MEMORY[0x29EDCA1A0];
  }

  *(v2 + qword_2A17B6040) = v14;
  *(v2 + qword_2A17B6048) = 0;
  v15 = sub_29D936338();
  v16 = [objc_allocWithZone(MEMORY[0x29EDBAE60]) initWithHealthStore_];

  *(v2 + qword_2A17B6050) = v16;
  v17 = sub_29D936338();
  type metadata accessor for HypertensionEventMetadataViewControllerProvider();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 3;
  *(v2 + qword_2A17B6058) = v18;
  v19 = v5[2];
  v19(v13, a1, v4);
  v20 = type metadata accessor for HypertensionNotificationsDataTypeDetailDataSourceProvider();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();

  v24 = sub_29D83B36C(v13, v18, v23);
  *(v2 + qword_2A17B6060) = v24;

  v25 = sub_29D936368();
  v26 = *(v24 + 10);
  if (v25 == 1)
  {
    sub_29D75765C(a1, v26);
  }

  else
  {
    sub_29D757EA8(a1, v26);
  }

  v27 = sub_29D935F88();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_29D935F98();

  v19(v41, a1, v4);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  result = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (result)
  {

    v31 = sub_29D936E48();
    sub_29D9364A8();
    v32 = sub_29D936338();
    v33 = v5[1];
    v33(v13, v4);
    v34 = [v32 profileIdentifier];

    v35 = [v34 type];
    if (v35 == 1)
    {
      v36 = *MEMORY[0x29EDBA6F0];
      sub_29D9364A8();
      v37 = sub_29D936338();
      v33(v13, v4);
      v38 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v36 healthStore:v37 countryCodeSource:1];

      v39 = *&v31[qword_2A17B6048];
      *&v31[qword_2A17B6048] = v38;

      sub_29D839AA0();

      v33(a1, v4);
    }

    else
    {
      v33(a1, v4);
    }

    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D838D18(uint64_t a1)
{
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v2 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v2 = MEMORY[0x29EDCA1A0];
  }

  *(a1 + qword_2A17B6040) = v2;
  *(a1 + qword_2A17B6048) = 0;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D838DCC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29D936378();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D83BC14(0, &unk_2A17B5578, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v51 - v10;
  sub_29D83BC14(0, &qword_2A17B6150, MEMORY[0x29EDC2B20], v6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &v51 - v15;
  sub_29D83BC14(0, &unk_2A17B55A8, MEMORY[0x29EDB9C08], v6);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v21 = &v51 - v20;
  v22 = sub_29D933A58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v51 - v29;
  sub_29D936E28();
  v31 = sub_29D936E08();
  if ((*(*(v31 - 8) + 48))(v16, 1, v31))
  {
    sub_29D83BC80(v16, &qword_2A17B6150, MEMORY[0x29EDC2B20]);
    (*(v23 + 56))(v21, 1, 1, v22);
  }

  else
  {
    v53 = v30;
    v54 = v11;
    sub_29D936DF8();
    sub_29D83BC80(v16, &qword_2A17B6150, MEMORY[0x29EDC2B20]);
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      v52 = *(v23 + 32);
      v43 = v53;
      v52(v53, v21, v22);
      v44 = v55;
      sub_29D9364A8();
      v45 = sub_29D936338();
      (*(v56 + 8))(v44, v57);
      (*(v23 + 16))(v27, v43, v22);
      v46 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v47 = (v24 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      v52((v48 + v46), v27, v22);
      *(v48 + v47) = v45;
      v49 = v54;
      sub_29D936DD8();
      v50 = sub_29D936DE8();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      sub_29D936E18();
      (*(v23 + 8))(v43, v22);
      goto LABEL_5;
    }
  }

  sub_29D83BC80(v21, &unk_2A17B55A8, MEMORY[0x29EDB9C08]);
LABEL_5:
  v32 = type metadata accessor for HypertensionNotificationsRoomViewController();
  v60.receiver = v1;
  v60.super_class = v32;
  objc_msgSendSuper2(&v60, sel_viewDidLoad);
  v33 = *MEMORY[0x29EDC43C8];
  v34 = sub_29D9364B8();
  v36 = *(v35 + 32);
  sub_29D693DDC(v35, *(v35 + 24));
  sub_29D936478();
  v34(aBlock, 0);
  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v37 = swift_allocObject();
  *(v37 + 16) = 1536;
  *(v37 + 18) = 2;
  v38 = *(*&v1[qword_2A17B6060] + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = ObjectType;
  aBlock[4] = sub_29D83BC78;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D8E44F0;
  aBlock[3] = &unk_2A24483E8;
  v40 = _Block_copy(aBlock);
  v41 = v38;

  [v41 submitEvent:v37 completion:v40];
  _Block_release(v40);
}

void sub_29D839440(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = a2;
    v6 = sub_29D937878();
    v7 = sub_29D93A288();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v8 = 136446466;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, &v16);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v15;
      *v9 = v15;
      _os_log_impl(&dword_29D677000, v6, v7, "[[%{public}s] Error when submitting analytics event: %@", v8, 0x16u);
      sub_29D6ACA3C(v9);
      MEMORY[0x29ED6BE30](v9, -1, -1);
      sub_29D69417C(v10);
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D839634(void *a1)
{
  v1 = a1;
  sub_29D838DCC();
}

uint64_t sub_29D83967C(char a1)
{
  swift_getObjectType();
  sub_29D83BC14(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for HypertensionNotificationsRoomViewController();
  v17.receiver = v1;
  v17.super_class = v8;
  objc_msgSendSuper2(&v17, sel_viewWillAppear_, a1 & 1);
  v9 = *&v1[qword_2A17B6060];
  v10 = *&v1[qword_2A17B6048];
  if (v10)
  {
    sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);

    v11 = v10;
    sub_29D937278();

    v13 = sub_29D9371A8();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v12 = sub_29D9371A8();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  v14 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus;
  swift_beginAccess();
  sub_29D70D908(v7, v9 + v14);
  swift_endAccess();
  sub_29D756EE0();

  return sub_29D83BC80(v7, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
}

void sub_29D839A4C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D83967C(a3);
}

uint64_t sub_29D839AA0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D83BC14(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v24 - v6;
  sub_29D710880();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  result = MEMORY[0x2A1C7C4A8](v8, v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + qword_2A17B6048);
  if (v16)
  {
    v25 = v13;
    sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
    v24 = ObjectType;
    v17 = v16;
    v18 = sub_29D937288();

    v26 = v18;
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v19 = sub_29D93A468();
    v27 = v19;
    v20 = sub_29D93A448();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    sub_29D6B7D8C();
    sub_29D83BA4C(&qword_2A1A22420, sub_29D6B7D8C);
    sub_29D706380();
    sub_29D938538();
    sub_29D83BC80(v7, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v24;
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    sub_29D83BA4C(&qword_2A17B2C70, sub_29D710880);
    sub_29D938588();

    (*(v25 + 8))(v15, v9);
    swift_beginAccess();
    sub_29D938258();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_29D839E3C(uint64_t a1)
{
  sub_29D83BC14(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = v21 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2C008);
    v10 = sub_29D937878();
    v11 = sub_29D93A2A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136446210;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s]: Feature status did update", v12, 0xCu);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    v17 = *&v8[qword_2A17B6060];
    v18 = sub_29D9371A8();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v6, a1, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    v20 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus;
    swift_beginAccess();

    sub_29D70D908(v6, v17 + v20);
    swift_endAccess();
    sub_29D756EE0();

    return sub_29D83BC80(v6, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  }

  return result;
}

void sub_29D83A138(void *a1)
{
  v2 = sub_29D936378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_29D9364A8();
  v9 = sub_29D936338();
  (*(v3 + 8))(v7, v2);
  v10 = [v9 displayTypeController];

  if (v10)
  {

    v11 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D83A2CC()
{
  v1 = *(v0 + qword_2A17B6040);

  v2 = *(v0 + qword_2A17B6058);

  v3 = *(v0 + qword_2A17B6060);
}

id sub_29D83A33C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D83A374(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B6040);

  v3 = *(a1 + qword_2A17B6058);

  v4 = *(a1 + qword_2A17B6060);
}

void sub_29D83A3F8(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for HypertensionNotificationsRoomViewController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_self();
    v8 = a1;
    v9 = sub_29D933A28();
    v10 = [v7 predicateForObjectWithUUID_];

    sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
    v11 = [swift_getObjCClassFromMetadata() hypertensionEventType];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:v11 predicate:v10];

      sub_29D6A0C58();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_29D940030;
      *(v14 + 32) = v13;
      v15 = swift_allocObject();
      v15[2] = v6;
      v15[3] = v8;
      v15[4] = a3;
      v16 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
      sub_29D69567C(0, &qword_2A17B6140, 0x29EDBAD40);
      v17 = v8;
      v18 = v13;
      v19 = a3;
      v20 = sub_29D939F18();

      aBlock[4] = sub_29D83BB9C;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D733900;
      aBlock[3] = &unk_2A2448320;
      v21 = _Block_copy(aBlock);
      v22 = [v16 initWithQueryDescriptors:v20 limit:1 resultsHandler:v21];

      _Block_release(v21);

      [v19 executeQuery_];

      return;
    }

    __break(1u);
  }

  sub_29D93AB28();
  __break(1u);
}

void sub_29D83A6B4(uint64_t a1, unint64_t a2, NSObject *a3, void *a4, void *a5, void *a6)
{
  v11 = sub_29D939968();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D939998();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v24 = a3;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2C008);
    v26 = a3;
    v27 = sub_29D937878();
    v28 = sub_29D93A288();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v76 = v30;
      *v29 = 136643331;
      aBlock = sub_29D936DE8();
      sub_29D83BBC0();
      v31 = sub_29D939DA8();
      v33 = sub_29D6C2364(v31, v32, &v76);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      aBlock = 0xD000000000000012;
      v71 = 0x800000029D967690;
      v34 = sub_29D939DE8();
      v36 = sub_29D6C2364(v34, v35, &v76);

      *(v29 + 14) = v36;
      *(v29 + 22) = 2082;
      aBlock = a3;
      v37 = a3;
      sub_29D6A0CD0();
      v38 = sub_29D939DA8();
      v40 = sub_29D6C2364(v38, v39, &v76);

      *(v29 + 24) = v40;
      _os_log_impl(&dword_29D677000, v27, v28, "[%{sensitive}s]: Could not load %s sample with error: %{public}s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v30, -1, -1);
      MEMORY[0x29ED6BE30](v29, -1, -1);

      return;
    }

    v52 = a3;

    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v69 = v21;
  v41 = sub_29D83868C(a2, 0x29EDBAA60);
  if (!v41)
  {
    goto LABEL_19;
  }

  v42 = v41 & 0xFFFFFFFFFFFFFF8;
  if (v41 >> 62)
  {
    v53 = v41;
    v54 = sub_29D93A928();
    v41 = v53;
    if (v54)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

LABEL_19:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v55 = sub_29D937898();
    sub_29D69C6C0(v55, qword_2A1A2C008);
    v69 = sub_29D937878();
    v56 = sub_29D93A288();
    if (!os_log_type_enabled(v69, v56))
    {
      v52 = v69;

LABEL_16:

      return;
    }

    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v76 = v58;
    *v57 = 136643075;
    aBlock = sub_29D936DE8();
    sub_29D83BBC0();
    v59 = sub_29D939DA8();
    v61 = sub_29D6C2364(v59, v60, &v76);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    aBlock = 0xD000000000000012;
    v71 = 0x800000029D967690;
    v62 = sub_29D939DE8();
    v64 = sub_29D6C2364(v62, v63, &v76);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_29D677000, v69, v56, "[%{sensitive}s]: No %s samples were found", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v58, -1, -1);
    MEMORY[0x29ED6BE30](v57, -1, -1);

    return;
  }

LABEL_10:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x29ED6AE30](0);
    goto LABEL_13;
  }

  if (*(v42 + 16))
  {
    v43 = *(v41 + 32);
LABEL_13:
    v67 = v43;

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v68 = sub_29D93A468();
    v44 = swift_allocObject();
    v45 = v67;
    v44[2] = a4;
    v44[3] = v45;
    v44[4] = a5;
    v44[5] = a6;
    v74 = sub_29D83BC08;
    v75 = v44;
    aBlock = MEMORY[0x29EDCA5F8];
    v71 = 1107296256;
    v72 = sub_29D6C1F10;
    v73 = &unk_2A2448370;
    v66 = _Block_copy(&aBlock);
    v46 = a4;
    v47 = v45;
    v48 = a5;
    v49 = a6;

    sub_29D939988();
    aBlock = MEMORY[0x29EDCA190];
    sub_29D83BA4C(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
    sub_29D83BC14(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D6FC864();
    sub_29D93A888();
    v50 = v66;
    v51 = v68;
    MEMORY[0x29ED6A880](0, v23, v16, v66);
    _Block_release(v50);

    (*(v12 + 8))(v16, v11);
    (*(v18 + 8))(v23, v69);
    return;
  }

  __break(1u);
}

void sub_29D83AE44(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + qword_2A17B6058);

  v8 = sub_29D801028(a2);

  if (v8)
  {
    [a3 _hk_showAdaptively_sender_animated_];
    v9 = HKLogHeartRateCategory();
    v10 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v9 healthDataSource:a4];

    type metadata accessor for HypertensionNotificationRoomInteractionEvent();
    v11 = swift_allocObject();
    *(v11 + 16) = 769;
    *(v11 + 18) = 2;
    v28 = sub_29D83B184;
    v29 = 0;
    aBlock = MEMORY[0x29EDCA5F8];
    v25 = 1107296256;
    v26 = sub_29D8E44F0;
    v27 = &unk_2A2448398;
    v12 = _Block_copy(&aBlock);

    [v10 submitEvent:v11 completion:v12];
    _Block_release(v12);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v13 = sub_29D937898();
    sub_29D69C6C0(v13, qword_2A1A2C008);
    oslog = sub_29D937878();
    v14 = sub_29D93A288();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136643075;
      sub_29D936DE8();
      sub_29D83BBC0();
      v17 = sub_29D939DA8();
      v19 = sub_29D6C2364(v17, v18, &v30);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      aBlock = 0xD000000000000012;
      v25 = 0x800000029D967690;
      v20 = sub_29D939DE8();
      v22 = sub_29D6C2364(v20, v21, &v30);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_29D677000, oslog, v14, "[%{sensitive}s]: Could not create a metadata provider for %s  samples", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D83B184(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a2;
    oslog = sub_29D937878();
    v5 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v6 = 136643075;
      *(v6 + 4) = sub_29D6C2364(0x634164616F4C6E4FLL, 0xEC0000006E6F6974, &v13);
      *(v6 + 12) = 2112;
      if (a2)
      {
        v9 = a2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *(v6 + 14) = v10;
      *v7 = v11;
      _os_log_impl(&dword_29D677000, oslog, v5, "[%{sensitive}s] Failed to submit analytics with error: %@", v6, 0x16u);
      sub_29D6ACA3C(v7);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    else
    {
    }
  }
}

char *sub_29D83B36C(uint64_t a1, uint64_t a2, char *a3)
{
  sub_29D83BB00(0, &qword_2A17B60E0, MEMORY[0x29EDC2008]);
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v69 = &v61 - v9;
  v10 = MEMORY[0x29EDC2008];
  sub_29D83BA94(0, &unk_2A17B6110, type metadata accessor for HypertensionNotificationsEducationSectionDataSource, MEMORY[0x29EDC1E78], MEMORY[0x29EDC2008]);
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v66 = &v61 - v14;
  sub_29D83BA94(0, &qword_2A17B3C58, type metadata accessor for HypertensionNotificationsStatusSectionDataSource, MEMORY[0x29EDC2280], v10);
  v63 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v61 - v19;
  v21 = sub_29D936228();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71[3] = type metadata accessor for HypertensionEventMetadataViewControllerProvider();
  v71[4] = sub_29D83BA4C(&unk_2A17B6120, type metadata accessor for HypertensionEventMetadataViewControllerProvider);
  v71[0] = a2;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  result = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (result)
  {
    v28 = result;
    *(a3 + 10) = result;
    v29 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus;
    v30 = sub_29D9371A8();
    (*(*(v30 - 8) + 56))(&a3[v29], 1, 1, v30);
    v31 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_context;
    v62 = sub_29D936378();
    v32 = *(v62 - 8);
    (*(v32 + 16))(&a3[v31], a1, v62);
    sub_29D6945AC(v71, (a3 + 88));
    sub_29D6945AC(v71, v70);
    v33 = v28;
    sub_29D936218();
    v61 = sub_29D936208();
    (*(v22 + 8))(v26, v21);
    sub_29D934C28();
    v34 = swift_dynamicCastClassUnconditional();
    v35 = sub_29D936338();
    v36 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v39 = sub_29D713E24(v35);

    *(a3 + 4) = v39;
    v40 = *MEMORY[0x29EDC2000];
    (*(v16 + 104))(v20, v40, v63);
    v41 = MEMORY[0x29EDC2020];
    sub_29D83BA94(0, &qword_2A17B3C10, type metadata accessor for HypertensionNotificationsStatusSectionDataSource, MEMORY[0x29EDC2280], MEMORY[0x29EDC2020]);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();

    *(a3 + 5) = sub_29D935538();
    v45 = type metadata accessor for HypertensionNotificationsEducationSectionDataSource(0);
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    *(a3 + 2) = sub_29D810484();
    (*(v64 + 104))(v66, v40, v65);
    sub_29D83BA94(0, &unk_2A17B6130, type metadata accessor for HypertensionNotificationsEducationSectionDataSource, MEMORY[0x29EDC1E78], v41);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();

    *(a3 + 3) = sub_29D935538();
    *(a3 + 6) = sub_29D75A8D4();
    (*(v67 + 104))(v69, v40, v68);
    sub_29D83BB00(0, &qword_2A17B3BE8, MEMORY[0x29EDC2020]);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();

    *(a3 + 7) = sub_29D935538();

    v54 = sub_29D936338();
    v55 = type metadata accessor for HypertensionNotificationsSampleListHideableDataSource();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    *(a3 + 8) = sub_29D730990(v34, v54);
    v58 = HKLogHeartRateCategory();
    v59 = sub_29D936338();
    v60 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v58 healthDataSource:v59];
    sub_29D936978();

    (*(v32 + 8))(a1, v62);
    sub_29D69417C(v71);
    *(a3 + 9) = v60;
    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D83BA4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D83BA94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29D83BB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D75A38C();
    v7 = v6;
    v8 = sub_29D83BA4C(&qword_2A17B3C00, sub_29D75A38C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D83BBA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D83BBC0()
{
  result = qword_2A17B6148;
  if (!qword_2A17B6148)
  {
    sub_29D936DE8();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B6148);
  }

  return result;
}

void sub_29D83BC14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D83BC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D83BC14(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D83BCF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_29D839E3C(a1);
}

uint64_t sub_29D83BD40()
{
  if ((sub_29D936368() & 0xFE) == 2)
  {
    v0 = sub_29D935248();
    v1 = *(v0 + 48);
    v2 = *(v0 + 52);
    swift_allocObject();
    sub_29D935238();
    sub_29D935438();

    sub_29D9353F8();

    type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource();
    sub_29D83C06C(&qword_2A17B6158, type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource);

    sub_29D935408();
  }

  else
  {
    v3 = sub_29D936338();
    sub_29D936318();
    v4 = objc_allocWithZone(type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource());
    v5 = sub_29D8EFC0C(v12);

    sub_29D83C06C(&qword_2A17B6158, type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource);
    v6 = sub_29D935438();

    v7 = v6;
    v8 = sub_29D9353F8();

    sub_29D935248();
    v9 = v8;
    sub_29D935418();
  }

  sub_29D83BFB0();
  sub_29D83C06C(&qword_2A17B6168, sub_29D83BFB0);

  v10 = sub_29D9353F8();

  return v10;
}

void sub_29D83BFB0()
{
  if (!qword_2A17B6160)
  {
    sub_29D935248();
    type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource();
    sub_29D83C06C(&qword_2A17B6158, type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource);
    v0 = sub_29D935C38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6160);
    }
  }
}

uint64_t sub_29D83C06C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D83C0B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_29D83C220(void *a1)
{
  v3 = v1;
  sub_29D840E28(0, &unk_2A17B6298, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v18[-v10];
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D840DD4();
  sub_29D93AED8();
  v21 = 0;
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  sub_29D840E8C(&unk_2A17B4BA0);
  sub_29D93AD18();
  if (!v2)
  {
    v13 = type metadata accessor for BloodPressureJournalAnchor();
    v14 = (v3 + *(v13 + 20));
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    v19 = v15;
    v20 = v14;
    v18[15] = 1;
    type metadata accessor for HKBloodPressureClassificationGuidelines(0);
    sub_29D8414EC(&qword_2A17B62A8, 255, type metadata accessor for HKBloodPressureClassificationGuidelines);
    sub_29D93ACD8();
    v16 = *(v3 + *(v13 + 24));
    v18[14] = 2;
    sub_29D93ACF8();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_29D83C490@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v29 - v7;
  sub_29D840E28(0, &qword_2A17B6278, MEMORY[0x29EDC9E80]);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for BloodPressureJournalAnchor();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D840DD4();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v29 = v14;
  v20 = v18;
  v21 = v31;
  v39 = 0;
  sub_29D840E8C(&qword_2A17B4B98);
  v22 = v32;
  v23 = v34;
  sub_29D93AC88();
  (*(v21 + 32))(v20, v8, v22);
  type metadata accessor for HKBloodPressureClassificationGuidelines(0);
  v38 = 1;
  sub_29D8414EC(&qword_2A17B6290, 255, type metadata accessor for HKBloodPressureClassificationGuidelines);
  sub_29D93AC48();
  v24 = v20 + *(v29 + 20);
  v25 = v36;
  *v24 = v35;
  *(v24 + 8) = v25;
  v37 = 2;
  v26 = sub_29D93AC68();
  (*(v33 + 8))(v13, v23);
  v27 = v30;
  *(v20 + *(v29 + 24)) = v26 & 1;
  sub_29D840B28(v20, v27);
  sub_29D69417C(a1);
  return sub_29D840B8C(v20);
}

uint64_t sub_29D83C894()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0x456C616E72756F6ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F4A657669746361;
  }
}

uint64_t sub_29D83C90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D840718(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D83C934(uint64_t a1)
{
  v2 = sub_29D840DD4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D83C970(uint64_t a1)
{
  v2 = sub_29D840DD4();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29D83C9E4(void *a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v9[4] = sub_29D840B20;
  v9[5] = v5;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29D83C0B4;
  v9[3] = &unk_2A24485F8;
  v6 = _Block_copy(v9);
  v7 = a1;
  v8 = a2;

  [v4 currentClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v6);
}

uint64_t sub_29D83CAD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for BloodPressureJournalAnchor();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor);
  v13 = v12 + *(*v12 + *MEMORY[0x29EDC9DE8] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  v15 = v13 + *(v7 + 28);
  *v15 = a1;
  *(v15 + 8) = 0;
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v16 = a3;
  sub_29D939AF8();
  sub_29D840B28(v13, v11);
  os_unfair_lock_unlock((v12 + v14));
  sub_29D83CC88(v11);
  [*(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_bpjControl) registerObserver:a2 queue:*(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_queue)];
  [*(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager) startObserving_];
  return sub_29D840B8C(v11);
}

uint64_t sub_29D83CC88(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_29D840048(0, &qword_2A17B4BE0, type metadata accessor for BloodPressureJournalAnchor, MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v72 = &v63 - v7;
  v8 = sub_29D9374B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B05AC();
  v13 = v12;
  v74 = *(v12 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v73 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for BloodPressureJournalAnchor();
  v17 = *(v70 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v70, v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v20, v23);
  v26 = &v63 - v25;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v63 - v28;
  v30 = sub_29D937898();
  v68 = *(v30 - 8);
  v69 = v30;
  v31 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  sub_29D840B28(a1, v29);
  sub_29D840B28(a1, v26);
  sub_29D840B28(a1, v22);
  v35 = sub_29D937878();
  v67 = sub_29D93A2A8();
  if (os_log_type_enabled(v35, v67))
  {
    v36 = swift_slowAlloc();
    v66 = v13;
    v37 = v36;
    v65 = swift_slowAlloc();
    v78 = v65;
    *v37 = 136447234;
    v38 = sub_29D93AF08();
    v64 = v35;
    v40 = sub_29D6C2364(v38, v39, &v78);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D967850, &v78);
    *(v37 + 22) = 2080;
    sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
    v76 = sub_29D939AE8();
    sub_29D840AAC(0, &unk_2A1A221C0, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDC9C68]);
    v41 = sub_29D939DA8();
    v43 = v42;
    sub_29D840B8C(v29);
    v44 = sub_29D6C2364(v41, v43, &v78);

    *(v37 + 24) = v44;
    *(v37 + 32) = 2080;
    v45 = v70;
    v46 = &v26[*(v70 + 20)];
    v47 = *v46;
    LOBYTE(v46) = v46[8];
    v76 = v47;
    v77 = v46;
    sub_29D840048(0, &unk_2A17B6230, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDC9C68]);
    v48 = sub_29D939DA8();
    v50 = v49;
    sub_29D840B8C(v26);
    v51 = sub_29D6C2364(v48, v50, &v78);

    *(v37 + 34) = v51;
    *(v37 + 42) = 1024;
    LODWORD(v51) = v22[*(v45 + 24)];
    sub_29D840B8C(v22);
    *(v37 + 44) = v51;
    v52 = v64;
    _os_log_impl(&dword_29D677000, v64, v67, "[%{public}s.%{public}s]: Updating anchor with: active journal: %s, classification guidelines: %s, journal expired: %{BOOL}d", v37, 0x30u);
    v53 = v65;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v53, -1, -1);
    v54 = v37;
    v13 = v66;
    MEMORY[0x29ED6BE30](v54, -1, -1);

    (*(v68 + 8))(v34, v69);
    v55 = v45;
  }

  else
  {
    sub_29D840B8C(v22);

    sub_29D840B8C(v26);
    sub_29D840B8C(v29);
    (*(v68 + 8))(v34, v69);
    v55 = v70;
  }

  sub_29D9374A8();
  v56 = v72;
  sub_29D840B28(a1, v72);
  (*(v17 + 56))(v56, 0, 1, v55);
  sub_29D8414EC(&unk_2A17B6250, 255, type metadata accessor for BloodPressureJournalAnchor);
  sub_29D8414EC(&unk_2A17B4C00, 255, type metadata accessor for BloodPressureJournalAnchor);
  sub_29D8414EC(&qword_2A17B6260, 255, type metadata accessor for BloodPressureJournalAnchor);
  v57 = v73;
  sub_29D937408();
  v59 = *(v2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observer);
  v58 = *(v2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observer + 8);
  swift_getObjectType();
  v76 = v2;
  sub_29D8414EC(&qword_2A1A23DB0, v60, type metadata accessor for BloodPressureJournalInputSignal);
  sub_29D9373F8();
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v61 = sub_29D939AE8();
  sub_29D83DFBC(v61);

  return (*(v74 + 8))(v57, v13);
}

void sub_29D83D444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_29D937898();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v13 = sub_29D937878();
  v14 = sub_29D93A2A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    v18 = sub_29D93AF08();
    v29 = v7;
    v30 = v3;
    v20 = v8;
    v21 = a1;
    v22 = sub_29D6C2364(v18, v19, aBlock);
    v3 = v30;

    *(v16 + 4) = v22;
    a1 = v21;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s]: Fetching active journal.", v16, 0xCu);
    sub_29D69417C(v17);
    MEMORY[0x29ED6BE30](v17, -1, -1);
    v23 = v16;
    a2 = v31;
    MEMORY[0x29ED6BE30](v23, -1, -1);

    (*(v20 + 8))(v12, v29);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v24 = *&v3[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_bpjControl];
  v25 = swift_allocObject();
  v25[2] = v3;
  v25[3] = a1;
  v25[4] = a2;
  v25[5] = ObjectType;
  aBlock[4] = sub_29D840A88;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F54;
  aBlock[3] = &unk_2A2448558;
  v26 = _Block_copy(aBlock);
  v27 = v3;

  [v24 fetchActiveJournalWithCompletion_];
  _Block_release(v26);
}

uint64_t sub_29D83D704@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = sub_29D937898();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v33, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v34 = a2;
  v12 = a2;
  v13 = sub_29D937878();
  v14 = sub_29D93A2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v3;
    v18 = v17;
    v36 = v17;
    *v16 = 136446722;
    v19 = sub_29D93AF08();
    v21 = sub_29D6C2364(v19, v20, &v36);
    v31 = a3;
    v22 = v21;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_29D6C2364(0xD00000000000001BLL, 0x800000029D967960, &v36);
    *(v16 + 22) = 2080;
    v35 = v34;
    sub_29D840AAC(0, &unk_2A1A221C0, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDC9C68]);
    v23 = v12;
    v24 = sub_29D939DA8();
    v26 = sub_29D6C2364(v24, v25, &v36);

    *(v16 + 24) = v26;
    a3 = v31;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s.%{public}s]: Updating cached anchor with active journal: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v18, -1, -1);
    v27 = v16;
    a1 = v30;
    MEMORY[0x29ED6BE30](v27, -1, -1);
  }

  (*(v7 + 8))(v11, v33);
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v28 = v12;
  sub_29D939AF8();
  return sub_29D840B28(a1, a3);
}

uint64_t sub_29D83D9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = sub_29D937898();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v31, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29[1] = v3;
    v17 = v16;
    v32 = v16;
    *v15 = 136446722;
    v18 = sub_29D93AF08();
    v20 = sub_29D6C2364(v18, v19, &v32);
    v29[0] = a1;
    v21 = a3;
    v22 = v20;

    *(v15 + 4) = v22;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D967910, &v32);
    *(v15 + 22) = 2080;
    v23 = sub_29D93A628();
    v25 = sub_29D6C2364(v23, v24, &v32);

    *(v15 + 24) = v25;
    a3 = v21;
    a1 = v29[0];
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s.%{public}s]: Updating cached anchor with classification guidelines: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v17, -1, -1);
    v26 = v15;
    a2 = v30;
    MEMORY[0x29ED6BE30](v26, -1, -1);
  }

  (*(v7 + 8))(v11, v31);
  v27 = a1 + *(type metadata accessor for BloodPressureJournalAnchor() + 20);
  *v27 = a2;
  *(v27 + 8) = 0;
  return sub_29D840B28(a1, a3);
}

uint64_t sub_29D83DC58(int a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for BloodPressureJournalAnchor();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor);
  v9 = *(*v8 + *MEMORY[0x29EDC9DE8] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_29D83DD70(v8 + v9, a1, v7);
  os_unfair_lock_unlock((v8 + v10));
  sub_29D83CC88(v7);
  return sub_29D840B8C(v7);
}

uint64_t sub_29D83DD70@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v4) = a2;
  v25 = sub_29D937898();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v25, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v4;
    v4 = v14;
    v23[0] = swift_slowAlloc();
    v23[1] = v3;
    v26 = v23[0];
    *v4 = 136446722;
    v15 = sub_29D93AF08();
    v17 = a1;
    v18 = a3;
    v19 = sub_29D6C2364(v15, v16, &v26);

    *(v4 + 4) = v19;
    a3 = v18;
    a1 = v17;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_29D6C2364(0xD000000000000022, 0x800000029D967980, &v26);
    *(v4 + 22) = 1024;
    *(v4 + 24) = v24 & 1;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s.%{public}s]: Updating cached anchor with journalExpired: %{BOOL}d", v4, 0x1Cu);
    v20 = v23[0];
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v20, -1, -1);
    v21 = v4;
    LOBYTE(v4) = v24;
    MEMORY[0x29ED6BE30](v21, -1, -1);
  }

  (*(v7 + 8))(v11, v25);
  *(a1 + *(type metadata accessor for BloodPressureJournalAnchor() + 24)) = v4 & 1;
  return sub_29D840B28(a1, a3);
}

void sub_29D83DFBC(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_29D840048(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v10 = &v20[-v9];
  if (a1)
  {
    v11 = a1;
    if ([v11 journalType] == 1)
    {
      v12 = [v11 endDate];
      if (!v12)
      {
        v16 = sub_29D9339F8();
        (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
        v17 = sub_29D6A0D34(v10);
        v18 = *(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observingDateChanges);
        MEMORY[0x2A1C7C4A8](v17, v19);
        *&v20[-16] = v1;
        *&v20[-8] = ObjectType;
        os_unfair_lock_lock((v18 + 20));
        sub_29D840C04((v18 + 16));
        os_unfair_lock_unlock((v18 + 20));

        return;
      }

      v13 = v12;
      sub_29D933998();

      v14 = sub_29D9339F8();
      (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
      v7 = sub_29D6A0D34(v10);
    }

    else
    {
    }
  }

  v15 = *(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observingDateChanges);
  MEMORY[0x2A1C7C4A8](v7, v8);
  *&v20[-16] = v1;
  *&v20[-8] = ObjectType;
  os_unfair_lock_lock((v15 + 20));
  sub_29D840BE8((v15 + 16));
  os_unfair_lock_unlock((v15 + 20));
}

void sub_29D83E20C(_BYTE *a1, uint64_t a2)
{
  v5 = sub_29D937898();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v25 = a2;
    sub_29D937838();
    v11 = sub_29D937878();
    v12 = sub_29D93A2A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v24 = v2;
      v16 = v15;
      v26 = v15;
      *v14 = 136446466;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v26);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D967870, &v26);
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Adding NotificationCenter observer", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v16, -1, -1);
      v20 = v14;
      a1 = v23;
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    v21 = [objc_opt_self() defaultCenter];
    [v21 addObserver:v25 selector:sel_dayChanged name:*MEMORY[0x29EDB8CA8] object:0];

    *a1 = 1;
  }
}

void sub_29D83E474(_BYTE *a1, uint64_t a2)
{
  v5 = sub_29D937898();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v25 = a2;
    sub_29D937838();
    v11 = sub_29D937878();
    v12 = sub_29D93A2A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v24 = v2;
      v16 = v15;
      v26 = v15;
      *v14 = 136446466;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v26);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D967870, &v26);
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Removing NotificationCenter observer", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v16, -1, -1);
      v20 = v14;
      a1 = v23;
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    v21 = [objc_opt_self() defaultCenter];
    [v21 removeObserver:v25 name:*MEMORY[0x29EDB8CA8] object:0];

    *a1 = 0;
  }
}

void sub_29D83E6D4(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v97 = a3;
  v98 = a2;
  v7 = sub_29D937898();
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = *(v100 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v99 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_29D933CC8();
  v11 = *(v95 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v95, v13);
  v94 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D840048(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v96 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v103 = &v84 - v21;
  v22 = sub_29D933CE8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D9339F8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = MEMORY[0x2A1C7C4A8](v32, v33);
  v36 = MEMORY[0x2A1C7C4A8](v34, v35);
  v38 = &v84 - v37;
  v40 = MEMORY[0x2A1C7C4A8](v36, v39);
  v42 = &v84 - v41;
  MEMORY[0x2A1C7C4A8](v40, v43);
  if (a1)
  {
    v89 = v46;
    v91 = v45;
    v93 = &v84 - v44;
    v102 = a1;
    if ([v102 journalType] == 1)
    {
      v90 = a4;
      sub_29D933C88();
      v47 = [v102 startDate];
      sub_29D933998();

      sub_29D933AD8();
      v87 = v28;
      v88 = v29;
      v48 = (v29 + 8);
      v86 = *(v29 + 8);
      v86(v42, v28);
      v85 = *(v23 + 8);
      v49 = v22;
      v85(v27, v22);
      sub_29D933C88();
      v51 = v94;
      v50 = v95;
      (*(v11 + 104))(v94, *MEMORY[0x29EDB9CB8], v95);
      v52 = *MEMORY[0x29EDC51B0];
      sub_29D933C38();
      v53 = v51;
      v54 = v38;
      (*(v11 + 8))(v53, v50);
      v55 = v85;
      v85(v27, v49);
      v56 = sub_29D933C88();
      v98(v56);
      sub_29D933AD8();
      v57 = v42;
      v59 = v86;
      v58 = v87;
      v86(v57, v87);
      v55(v27, v49);
      v60 = v88;
      v61 = v58;
      v62 = v96;
      sub_29D6A0A20(v103, v96);
      if ((*(v60 + 48))(v62, 1, v61) == 1)
      {
        sub_29D6A0D34(v62);
        LODWORD(v63) = 0;
      }

      else
      {
        v63 = v54;
        v65 = v89;
        (*(v60 + 32))(v89, v62, v61);
        sub_29D8414EC(&qword_2A17B4730, 255, MEMORY[0x29EDB9BC8]);
        v66 = sub_29D939CB8();
        v67 = v65;
        v54 = v63;
        (v59)(v67, v61);
        LODWORD(v63) = v66 ^ 1;
      }

      v68 = v99;
      sub_29D937838();
      v69 = *(v60 + 16);
      v70 = v91;
      v99 = v54;
      v69(v91, v54, v61);
      v71 = sub_29D937878();
      v72 = sub_29D93A2A8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v98 = v48;
        v74 = v73;
        v75 = swift_slowAlloc();
        v104[0] = v75;
        *v74 = 136446978;
        v76 = sub_29D93AF08();
        v78 = sub_29D6C2364(v76, v77, v104);
        LODWORD(v97) = v63;
        v63 = v59;
        v79 = v78;

        *(v74 + 4) = v79;
        *(v74 + 12) = 2082;
        *(v74 + 14) = sub_29D6C2364(0x676E616843796164, 0xEC00000029286465, v104);
        *(v74 + 22) = 2080;
        sub_29D8414EC(&qword_2A17B7B10, 255, MEMORY[0x29EDB9BC8]);
        v80 = sub_29D93AD38();
        v82 = v81;
        (v63)(v70, v61);
        v83 = sub_29D6C2364(v80, v82, v104);
        v59 = v63;
        LOBYTE(v63) = v97;

        *(v74 + 24) = v83;
        *(v74 + 32) = 1024;
        *(v74 + 34) = v63 & 1;
        _os_log_impl(&dword_29D677000, v71, v72, "[%{public}s.%{public}s]: Date changed to %s, journal expired: %{BOOL}d", v74, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v75, -1, -1);
        MEMORY[0x29ED6BE30](v74, -1, -1);
      }

      else
      {

        (v59)(v70, v61);
      }

      (*(v100 + 8))(v68, v101);
      sub_29D83DC58(v63 & 1);

      (v59)(v99, v61);
      sub_29D6A0D34(v103);
      (v59)(v93, v61);
    }

    else
    {
      v64 = v102;
    }
  }
}

void sub_29D83F004()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, &v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_29D6C2364(0xD000000000000011, 0x800000029D967800, &v18);
    _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s.%{public}s]: Stop Observation", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v15 = [objc_opt_self() defaultCenter];
  [v15 removeObserver:v1 name:*MEMORY[0x29EDB8CA8] object:0];

  [*(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_bpjControl) unregisterObserver_];
  [*(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager) stopObserving_];
  v16 = *(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observingDateChanges);
  os_unfair_lock_lock((v16 + 20));
  *(v16 + 16) = 0;
  os_unfair_lock_unlock((v16 + 20));
}

void sub_29D83F294(void (**a1)(char *, uint64_t), void *a2, uint64_t *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v69 = a4;
  v70 = a5;
  v10 = sub_29D937898();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = &v66 - v19;
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v66 - v22;
  if (a2)
  {
    v24 = a2;
    v25 = sub_29D933588();
    v26 = [v25 hk_isDatabaseAccessibilityError];

    if (v26)
    {
      sub_29D937838();
      v27 = sub_29D937878();
      v28 = sub_29D93A2A8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v67 = a3;
        v68 = v11;
        v31 = v30;
        v71 = v30;
        *v29 = 136446210;
        v32 = a6;
        v33 = sub_29D93AF08();
        v35 = sub_29D6C2364(v33, v34, &v71);

        *(v29 + 4) = v35;
        a6 = v32;
        _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s]: Failed to fetch active journal because database is inaccessible, retrying when unlocked.", v29, 0xCu);
        sub_29D69417C(v31);
        MEMORY[0x29ED6BE30](v31, -1, -1);
        MEMORY[0x29ED6BE30](v29, -1, -1);

        v68[1](v23, v10);
      }

      else
      {

        (*(v11 + 8))(v23, v10);
      }

      sub_29D934448();
      sub_29D934438();
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      v64 = v69;
      v65 = v70;
      v63[2] = v62;
      v63[3] = v64;
      v63[4] = v65;
      v63[5] = a6;

      sub_29D934428();
    }

    else
    {
      sub_29D937838();
      v50 = a2;
      v51 = sub_29D937878();
      v52 = sub_29D93A288();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v68 = v11;
        v54 = v53;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v71 = v56;
        *v54 = 136446466;
        v57 = sub_29D93AF08();
        v59 = sub_29D6C2364(v57, v58, &v71);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2112;
        v60 = a2;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 14) = v61;
        *v55 = v61;
        _os_log_impl(&dword_29D677000, v51, v52, "[%{public}s]: Failed to fetch active journal due to unknown error: %@.", v54, 0x16u);
        sub_29D6ACA3C(v55);
        MEMORY[0x29ED6BE30](v55, -1, -1);
        sub_29D69417C(v56);
        MEMORY[0x29ED6BE30](v56, -1, -1);
        MEMORY[0x29ED6BE30](v54, -1, -1);

        v68[1](v20, v10);
      }

      else
      {

        (*(v11 + 8))(v20, v10);
      }

      v69(0);
    }
  }

  else
  {
    sub_29D937838();
    v36 = a1;
    v37 = sub_29D937878();
    v38 = sub_29D93A2A8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68 = a1;
      v41 = v40;
      v67 = swift_slowAlloc();
      v71 = v67;
      *v39 = 136446466;
      v42 = sub_29D93AF08();
      v43 = v11;
      v45 = v10;
      v46 = sub_29D6C2364(v42, v44, &v71);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v36;
      *v41 = v68;
      v47 = v36;
      _os_log_impl(&dword_29D677000, v37, v38, "[%{public}s]: Successfully fetched the active journal: %@.", v39, 0x16u);
      sub_29D6ACA3C(v41);
      v48 = v41;
      a1 = v68;
      MEMORY[0x29ED6BE30](v48, -1, -1);
      v49 = v67;
      sub_29D69417C(v67);
      MEMORY[0x29ED6BE30](v49, -1, -1);
      MEMORY[0x29ED6BE30](v39, -1, -1);

      (*(v43 + 8))(v16, v45);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v69(a1);
  }
}

void sub_29D83F8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D937898();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v11 = sub_29D937878();
  v12 = sub_29D93A2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446210;
    v16 = sub_29D93AF08();
    v18 = sub_29D6C2364(v16, v17, &v27);
    v25 = v5;
    v19 = a2;
    v20 = a3;
    v21 = v18;

    *(v14 + 4) = v21;
    a3 = v20;
    a2 = v19;
    _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s]: Retrying fetching active journal now that device is unlocked.", v14, 0xCu);
    sub_29D69417C(v15);
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);

    (*(v26 + 8))(v10, v25);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_29D83D444(a2, a3);
  }
}

uint64_t sub_29D83FAC8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for BloodPressureJournalAnchor();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor);
  v15 = a1;
  v16 = ObjectType;
  v11 = *(*v10 + *MEMORY[0x29EDC9DE8] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v12));
  sub_29D8414C4(v10 + v11, v9);
  os_unfair_lock_unlock((v10 + v12));
  sub_29D83CC88(v9);
  return sub_29D840B8C(v9);
}

uint64_t sub_29D83FC6C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for BloodPressureJournalAnchor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor);
  v10 = *(*v9 + *MEMORY[0x29EDC9DE8] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_29D83D9F0(v9 + v10, a1, v8);
  os_unfair_lock_unlock((v9 + v11));
  sub_29D83CC88(v8);
  return sub_29D840B8C(v8);
}

uint64_t type metadata accessor for BloodPressureJournalAnchor()
{
  result = qword_2A17B6220;
  if (!qword_2A17B6220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D83FF60()
{
  sub_29D840AAC(319, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  if (v0 <= 0x3F)
  {
    sub_29D840048(319, &unk_2A17B6230, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D840048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D84015C()
{
  v1 = (*v0 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observer);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

id sub_29D8401E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, objc_class *a8, uint64_t a9, uint64_t a10)
{
  v56 = a6;
  v57 = a7;
  v58 = a5;
  v54 = a3;
  v55 = a4;
  v52 = a1;
  v53 = a2;
  v50 = a8;
  v51 = a10;
  v11 = type metadata accessor for BloodPressureJournalAnchor();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29D93A458();
  v17 = *(v49 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v49, v19);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D93A438();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v25 = sub_29D939998();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25 - 8, v27);
  v28 = objc_allocWithZone(a8);
  v48 = OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_queue;
  v29 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v47[0] = "observeDateChanges(for:)";
  v47[1] = v29;
  sub_29D939988();
  v60 = MEMORY[0x29EDCA190];
  sub_29D8414EC(&unk_2A1A24900, 255, MEMORY[0x29EDCA288]);
  sub_29D840048(0, &unk_2A1A24970, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29D840C20();
  sub_29D93A888();
  (*(v17 + 104))(v21, *MEMORY[0x29EDCA2A8], v49);
  *&v28[v48] = sub_29D93A498();
  v30 = OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observingDateChanges;
  sub_29D840CA8();
  v31 = swift_allocObject();
  *(v31 + 20) = 0;
  *(v31 + 16) = 0;
  *&v28[v30] = v31;
  v32 = OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor;
  sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
  sub_29D939B18();
  v33 = &v16[*(v12 + 28)];
  *v33 = 0;
  v33[8] = 1;
  v16[*(v12 + 32)] = 0;
  sub_29D840D08();
  v35 = *(v34 + 52);
  v36 = (*(v34 + 48) + 3) & 0x1FFFFFFFCLL;
  v37 = swift_allocObject();
  *(v37 + ((*(*v37 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D840D70(v16, v37 + *(*v37 + *MEMORY[0x29EDC9DE8] + 16));
  *&v28[v32] = v37;
  v38 = &v28[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_context];
  v39 = v51;
  *v38 = v52;
  *(v38 + 1) = v39;
  v40 = &v28[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observer];
  v41 = v54;
  *v40 = v53;
  *(v40 + 1) = v41;
  v42 = v56;
  *&v28[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_bpjControl] = v55;
  v43 = &v28[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_todayProvider];
  v45 = v57;
  v44 = v58;
  *v43 = v42;
  *(v43 + 1) = v45;
  *&v28[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager] = v44;
  v59.receiver = v28;
  v59.super_class = v50;
  return objc_msgSendSuper2(&v59, sel_init);
}

uint64_t sub_29D840658(uint64_t a1, uint64_t a2)
{
  sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
  sub_29D840EFC();
  if ((sub_29D939B08() & 1) == 0)
  {
LABEL_8:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v4 = type metadata accessor for BloodPressureJournalAnchor();
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v9)
  {
LABEL_9:
    LOBYTE(v9) = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_29D840718(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4A657669746361 && a2 == 0xED00006C616E7275;
  if (v4 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000029D9679B0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x456C616E72756F6ALL && a2 == 0xEE00646572697078)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D93AD78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29D840848()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446466;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D967820, &v19);
    _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s.%{public}s]: Beginning Observation", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v16 = v1;
  sub_29D83D444(sub_29D840A80, v15);
}

uint64_t sub_29D840A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D840AAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_29D840B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureJournalAnchor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D840B8C(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressureJournalAnchor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D840C20()
{
  result = qword_2A1A24960;
  if (!qword_2A1A24960)
  {
    sub_29D840048(255, &unk_2A1A24970, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24960);
  }

  return result;
}

void sub_29D840CA8()
{
  if (!qword_2A17B6268)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29D93AA88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6268);
    }
  }
}

void sub_29D840D08()
{
  if (!qword_2A17B6270)
  {
    type metadata accessor for BloodPressureJournalAnchor();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29D93AA88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6270);
    }
  }
}

uint64_t sub_29D840D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureJournalAnchor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D840DD4()
{
  result = qword_2A17B6280;
  if (!qword_2A17B6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6280);
  }

  return result;
}

void sub_29D840E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D840DD4();
    v7 = a3(a1, &type metadata for BloodPressureJournalAnchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D840E8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D840AAC(255, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D840EFC()
{
  result = qword_2A17B62B0;
  if (!qword_2A17B62B0)
  {
    sub_29D69567C(255, &qword_2A1A221D0, 0x29EDC51F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B62B0);
  }

  return result;
}

uint64_t sub_29D840F64(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29D937898();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  sub_29D935E88();
  v10 = sub_29D937878();
  v11 = sub_29D93A2A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136446722;
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29D6C2364(0xD000000000000021, 0x800000029D967930, &v26);
    *(v13 + 22) = 2080;
    v18 = sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
    v19 = MEMORY[0x29ED6A340](a1, v18);
    v21 = sub_29D6C2364(v19, v20, &v26);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s.%{public}s]: Received HKHRBloodPressureJournal update with journal: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);

    (*(v5 + 8))(v9, v25);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  v23 = v2;
  sub_29D83D444(sub_29D8414BC, v22);
}

void sub_29D841210()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446466;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, aBlock);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D9678F0, aBlock);
    _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s.%{public}s]: Classification guidelines updated", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v15 = *&v1[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager];
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  aBlock[4] = sub_29D8414B4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D83C0B4;
  aBlock[3] = &unk_2A2448648;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v15 currentClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v17);
}

uint64_t sub_29D8414EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_29D841548()
{
  result = qword_2A17B62C0;
  if (!qword_2A17B62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B62C0);
  }

  return result;
}

unint64_t sub_29D8415A0()
{
  result = qword_2A17B62C8;
  if (!qword_2A17B62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B62C8);
  }

  return result;
}

unint64_t sub_29D8415F8()
{
  result = qword_2A17B62D0;
  if (!qword_2A17B62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B62D0);
  }

  return result;
}

uint64_t sub_29D84165C()
{
  result = HKUIOnePixel();
  qword_2A17D0C50 = v1;
  return result;
}

id sub_29D84167C()
{
  result = [objc_opt_self() separatorColor];
  qword_2A17D0C58 = result;
  return result;
}

id sub_29D8416B8()
{
  v1 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel);
  }

  else
  {
    v4 = sub_29D841718();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D841718()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v1 = sub_29D939D28();

  [v0 setText_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  return v0;
}

id sub_29D84188C()
{
  v1 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    if (qword_2A17B0C80 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29D84195C()
{
  v1 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView);
  }

  else
  {
    v4 = sub_29D8419C0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29D8419C0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_cacheObject);
  v3 = *(a1 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_healthStore);
  v4 = type metadata accessor for AFibBurdenLifeFactorsView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews] = 0;
  *&v5[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_cacheObject] = v2;
  *&v5[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_healthStore] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  sub_29D935E88();
  v6 = v3;
  v7 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D784540();
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = a1 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_contentViewDelegate;
  swift_unknownObjectWeakLoadStrong();
  *&v7[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_delegate + 8] = *(v8 + 8);
  swift_unknownObjectWeakAssign();
  sub_29D936978();
  return v7;
}

void sub_29D841B18()
{
  v1 = sub_29D8416B8();
  LODWORD(v2) = 1148846080;
  [v1 setContentHuggingPriority:1 forAxis:v2];

  v3 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel;
  LODWORD(v4) = 1148846080;
  [*&v0[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel] setContentCompressionResistancePriority:1 forAxis:v4];
  v42 = objc_opt_self();
  sub_29D6A0C58();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D94D530;
  v6 = [*&v0[v3] topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [*&v0[v3] leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:16.0];

  *(v5 + 40) = v11;
  v12 = [*&v0[v3] trailingAnchor];
  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-16.0];

  *(v5 + 48) = v14;
  v15 = sub_29D84188C();
  v16 = [v15 topAnchor];

  v17 = [*&v0[v3] bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];

  *(v5 + 56) = v18;
  v19 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule;
  v20 = [*&v0[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule] heightAnchor];
  if (qword_2A17B0C78 != -1)
  {
    swift_once();
  }

  v21 = [v20 constraintEqualToConstant_];

  *(v5 + 64) = v21;
  v22 = [*&v0[v19] leadingAnchor];
  v23 = [*&v0[v3] leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v5 + 72) = v24;
  v25 = [*&v0[v19] trailingAnchor];
  v26 = [*&v0[v3] trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v5 + 80) = v27;
  v28 = sub_29D84195C();
  v29 = [v28 topAnchor];

  v30 = [*&v0[v19] bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v5 + 88) = v31;
  v32 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView;
  v33 = [*&v0[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView] bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v5 + 96) = v35;
  v36 = [*&v0[v32] leadingAnchor];
  v37 = [v0 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v5 + 104) = v38;
  v39 = [*&v0[v32] trailingAnchor];
  v40 = [v0 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v5 + 112) = v41;
  sub_29D6D37A4();
  v44 = sub_29D939F18();

  [v43 activateConstraints_];
}

void sub_29D84205C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_29D939D28();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_29D8416B8();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x706972637365442ELL, 0xEC0000006E6F6974);
    v5 = sub_29D939D28();

    [v4 setAccessibilityIdentifier_];
  }
}

id sub_29D84217C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorsTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D842298()
{
  *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_contentViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_baseIdentifier);
  v3 = sub_29D6C3970(261);
  v4 = v2;
  MEMORY[0x29ED6A240](0x656C69542ELL, 0xE500000000000000);
  *v1 = v3;
  v1[1] = v4;
  sub_29D93AB28();
  __break(1u);
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingEmptyViewController()
{
  result = qword_2A17B6318;
  if (!qword_2A17B6318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D842454(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BloodPressureJournalOnboardingEmptyViewController();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_29D842574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingEmptyViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AFibBurdenOnboardingStartViewController()
{
  result = qword_2A17B6338;
  if (!qword_2A17B6338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D842654()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AFibBurdenOnboardingStartViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  if (*(v0 + qword_2A17B6330) == 1)
  {

    v2 = [v0 navigationItem];
    [v2 setBackButtonDisplayMode_];

    sub_29D842944();
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v3 = sub_29D939D28();

    sub_29D88BBC8(&unk_2A243E8F8);
    v4 = sub_29D939F18();

    v5 = HKUIJoinStringsForAutomationIdentifier();

    if (v5)
    {
      sub_29D6AA360(aContinuebutton_3);

      v6 = [v1 buttonTray];
      sub_29D9334A8();
      v7 = sub_29D939D28();

      [v6 setCaptionText_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = [v0 navigationItem];
    [v8 setBackButtonDisplayMode_];

    sub_29D842944();
  }
}