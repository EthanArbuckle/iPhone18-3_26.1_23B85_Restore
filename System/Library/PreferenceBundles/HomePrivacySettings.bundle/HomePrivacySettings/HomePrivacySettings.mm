void sub_1628()
{
  v0 = sub_D4C4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  qword_18B40 = v1;
}

void sub_16C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_170C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5348(&qword_18768, type metadata accessor for AppInfo);
  sub_D104();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_17DC(uint64_t result)
{
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_5348(&qword_18768, type metadata accessor for AppInfo);
    sub_D0F4();
  }

  return result;
}

void sub_18EC(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getKeyPath();
  sub_5348(&qword_18768, type metadata accessor for AppInfo);
  sub_D104();

  if (*(v1 + 104) != v4)
  {
    v5 = *(v1 + 48);
    v6 = *(v1 + 56);
    v7 = *(v1 + 32);
    v8 = *(v2 + 40);
    v9 = sub_D4C4();
    v10 = sub_D4C4();
    LODWORD(v8) = TCCAccessSetForBundleId();

    if (v8)
    {
      if (*(v2 + 104) == (a1 & 1))
      {
        *(v2 + 104) = v4;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        sub_D0F4();
      }
    }
  }
}

uint64_t sub_1A90()
{
  swift_getKeyPath();
  sub_5348(&qword_18768, type metadata accessor for AppInfo);
  sub_D104();

  return *(v0 + 104);
}

uint64_t sub_1B30()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_5564(v0 + 8);
  v4 = OBJC_IVAR____TtC19HomePrivacySettings7AppInfo___observationRegistrar;
  v5 = sub_D144();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t sub_1C30()
{
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_1CE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1DC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  *(a1 + 56) = a2;
}

uint64_t sub_1E30()
{
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  return *(v0 + 64);
}

uint64_t sub_1ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1FA0(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
    sub_D0F4();
  }

  return result;
}

uint64_t sub_20B0()
{
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_2168@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_2248(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D0F4();
}

uint64_t sub_2304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 112);
  *(a1 + 112) = a2;
}

uint64_t sub_236C()
{
  v1 = v0;
  sub_4358(v0 + 72, v16);
  result = sub_55B0(v16, v17);
  if (!kTCCServiceWillow)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = kTCCServiceWillow;
  sub_D4D4();

  type metadata accessor for TCCServiceManager();
  sub_67F4();
  v5 = v4;

  result = sub_5564(v16);
  if (!kTCCServiceWillow)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = kTCCServiceWillow;
  sub_53DC(v5, v6);

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath, v8);
  v16[0] = v1;
  sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D0F4();

  sub_4358(v1 + 72, v16);
  result = sub_55B0(v16, v17);
  if (!kTCCServiceEnergyKitGuidance)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = kTCCServiceEnergyKitGuidance;
  sub_D4D4();

  sub_67F4();
  v11 = v10;

  result = sub_5564(v16);
  v12 = kTCCServiceEnergyKitGuidance;
  if (kTCCServiceEnergyKitGuidance)
  {

    v13 = v12;
    sub_53DC(v11, v13);

    v14 = swift_getKeyPath();
    __chkstk_darwin(v14, v15);
    v16[0] = v1;
    sub_D0F4();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2684(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v72 = a3;
  v62 = sub_D0C4();
  v61 = *(v62 - 8);
  v5 = *(v61 + 64);
  v7 = __chkstk_darwin(v62, v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v54 - v11;
  v13 = kTCCInfoBundle;
  if (!kTCCInfoBundle)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v14 = *a1;
  type metadata accessor for CFString(0);
  v16 = v15;
  *(&v68 + 1) = v15;
  *&v67 = v13;
  v17 = v13;
  if (([v14 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
  {
    sub_5564(&v67);
LABEL_12:
    *v72 = 0;
    return;
  }

  sub_55B0(&v67, v16);
  v18 = [v14 __swift_objectForKeyedSubscript:sub_D654()];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_D5E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v71[0] = v64;
  v71[1] = v65;
  sub_5564(&v67);
  sub_55F4(v71, &v64);
  if (!*(&v65 + 1))
  {
    goto LABEL_35;
  }

  sub_5664(&v64, &v67);
  type metadata accessor for CFBundle(0);
  swift_dynamicCast();
  v19 = v70[0];
  v20 = CFBundleCopyBundleURL(v70[0]);
  if (!v20)
  {
    sub_5674(v71, &qword_18778, &qword_E670);

    goto LABEL_12;
  }

  v21 = v20;
  sub_D0B4();

  v22 = v61;
  v23 = v62;
  (*(v61 + 16))(v9, v12, v62);
  v24 = objc_allocWithZone(LSApplicationRecord);
  v25 = sub_4464(v9, 0);
  if (v3)
  {

    (*(v22 + 8))(v12, v23);
    sub_5674(v71, &qword_18778, &qword_E670);

    goto LABEL_12;
  }

  v26 = v25;
  v27 = [v26 bundleIdentifier];
  if (v27)
  {
    v28 = v27;
    v57 = sub_D4D4();
    v59 = v29;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v30 = [v26 localizedName];

  v56 = sub_D4D4();
  v58 = v31;

  if (!kTCCInfoGranted)
  {
    goto LABEL_36;
  }

  v70[3] = v16;
  v70[0] = kTCCInfoGranted;
  v32 = kTCCInfoGranted;
  if (([v14 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
  {
    v64 = 0uLL;
    *&v65 = 0;
    *(&v65 + 1) = 1;
    goto LABEL_22;
  }

  sub_55B0(v70, v16);
  v33 = [v14 __swift_objectForKeyedSubscript:sub_D654()];
  swift_unknownObjectRelease();
  if (!v33)
  {
    v64 = 0u;
    v65 = 0u;
    goto LABEL_29;
  }

  sub_D5E4();
  swift_unknownObjectRelease();
  v64 = v67;
  v65 = v68;
  if (*(&v68 + 1) == 1)
  {
LABEL_22:
    sub_5564(v70);
    v34 = &unk_18780;
    v35 = &unk_E678;
    v36 = &v64;
LABEL_23:
    sub_5674(v36, v34, v35);
    goto LABEL_24;
  }

LABEL_29:
  v67 = v64;
  v68 = v65;
  if (!*(&v65 + 1))
  {
    sub_5564(v70);
    v34 = &qword_18778;
    v35 = &qword_E670;
    v36 = &v67;
    goto LABEL_23;
  }

  if (swift_dynamicCast())
  {
    v37 = v63;
    sub_5564(v70);
    goto LABEL_25;
  }

  sub_5564(v70);
LABEL_24:
  v37 = 0;
LABEL_25:
  if (!v59)
  {

    (*(v61 + 8))(v12, v62);
    sub_5674(v71, &qword_18778, &qword_E670);
    goto LABEL_12;
  }

  v60 = sub_D4D4();
  v55 = v38;
  v39 = type metadata accessor for TCCServiceManager();
  v40 = swift_allocObject();
  v54 = v26;
  *(&v68 + 1) = v39;
  v69 = &off_14A88;
  *&v67 = v40;
  v41 = type metadata accessor for AppInfo(0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  v45 = sub_4308(&v67, v39);
  v46 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v45, v45);
  v48 = (&v54 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v48;
  *(&v65 + 1) = v39;
  v66 = &off_14A88;
  *&v64 = v50;
  *(v44 + 104) = 0;
  sub_D134();
  v51 = v58;
  *(v44 + 16) = v56;
  *(v44 + 24) = v51;
  v52 = v59;
  *(v44 + 32) = v57;
  *(v44 + 40) = v52;
  v53 = v55;
  *(v44 + 48) = v60;
  *(v44 + 56) = v53;
  sub_4358(&v64, v44 + 64);
  sub_18EC(v37);

  (*(v61 + 8))(v12, v62);
  sub_5674(v71, &qword_18778, &qword_E670);
  sub_5564(&v64);
  sub_5564(&v67);
  *v72 = v44;
}

Swift::Int sub_2DB4(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_5260(v2);
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_45B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2E2C()
{
  v1[10] = v0;
  sub_D584();
  v1[11] = sub_D574();
  v3 = sub_D564();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_2EC4, v3, v2);
}

uint64_t sub_2EC4()
{
  v1 = v0[10];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC19HomePrivacySettings21HomeSettingsViewModel___observationRegistrar;
  v0[5] = v1;
  v0[14] = v2;
  v0[15] = sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  if (*(v1 + 64))
  {
    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[10];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 1;
    v0[6] = v6;
    sub_D0F4();

    v8 = v6[5];
    v9 = v6[6];
    sub_55B0(v6 + 2, v8);
    v10 = *(v9 + 8);
    v13 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_314C;

    return v13(v8, v9);
  }
}

uint64_t sub_314C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 104);
    v7 = sub_3384;
  }

  else
  {

    v5 = *(v2 + 96);
    v6 = *(v2 + 104);
    v7 = sub_3278;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_3278()
{
  v2 = v0[10];
  v1 = v0[11];

  if (*(v2 + 64) == 1)
  {
    v3 = v0[17];
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[10];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[9] = v6;
    sub_D0F4();
  }

  else
  {
    *(v0[10] + 64) = 0;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_3384()
{
  v2 = v0[10];
  v1 = v0[11];

  if (*(v2 + 64) == 1)
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[10];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[8] = v5;
    sub_D0F4();
  }

  else
  {
    *(v0[10] + 64) = 0;
  }

  v7 = v0[17];
  sub_42C0(&qword_18770, &qword_E668);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E480;
  sub_D5F4(22);
  v14._object = 0x800000000000DCC0;
  v14._countAndFlagsBits = 0xD000000000000014;
  sub_D504(v14);
  swift_getErrorValue();
  v9 = v0[2];
  v10 = v0[3];
  sub_D644();
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_D6A4();

  v11 = v0[1];

  return v11();
}

void sub_3550()
{
  v1 = kTCCServiceWillow;
  if (kTCCServiceWillow)
  {
    v2 = v0;
    v85 = kTCCServiceWillow;
    v80 = sub_42C0(&qword_18748, &qword_E5B8);
    v86 = swift_allocObject();
    v79 = xmmword_E490;
    v86[1] = xmmword_E490;
    v81 = v1;
    v84 = sub_D4D4();
    v82 = v3;
    v4 = type metadata accessor for TCCServiceManager();
    v93 = v4;
    v94 = &off_14A88;
    v92[0] = swift_allocObject();
    v5 = type metadata accessor for AppInfo(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v8 = swift_allocObject();
    v9 = sub_4308(v92, v4);
    v10 = *(v4 - 8);
    v11 = *(v10 + 64);
    __chkstk_darwin(v9, v9);
    v12 = *(v10 + 16);
    v87 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v88 = v12;
    v12(v76 - v87);
    v13 = *(v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v90 = v4;
    v91 = &off_14A88;
    v89[0] = v13;
    *(v8 + 104) = 0;
    v85 = v85;
    sub_D134();
    *(v8 + 16) = 1701670728;
    *(v8 + 24) = 0xE400000000000000;
    strcpy((v8 + 32), "com.apple.Home");
    *(v8 + 47) = -18;
    v14 = v82;
    *(v8 + 48) = v84;
    *(v8 + 56) = v14;
    sub_4358(v89, v8 + 64);
    sub_18EC(1);
    sub_5564(v89);
    sub_5564(v92);
    v15 = v86;
    *(v86 + 4) = v8;
    v84 = sub_D4D4();
    v82 = v16;
    v17 = swift_allocObject();
    v93 = v4;
    v94 = &off_14A88;
    v92[0] = v17;
    v18 = *(v5 + 48);
    v19 = *(v5 + 52);
    v20 = swift_allocObject();
    v21 = sub_4308(v92, v4);
    __chkstk_darwin(v21, v21);
    v22 = (v76 - v87);
    v88(v76 - v87);
    v23 = *v22;
    v90 = v4;
    v91 = &off_14A88;
    v89[0] = v23;
    *(v20 + 104) = 0;
    sub_D134();
    *(v20 + 16) = 0x636973754DLL;
    *(v20 + 24) = 0xE500000000000000;
    *(v20 + 32) = 0x6C7070612E6D6F63;
    *(v20 + 40) = 0xEF636973754D2E65;
    v24 = v82;
    *(v20 + 48) = v84;
    *(v20 + 56) = v24;
    sub_4358(v89, v20 + 64);
    sub_18EC(1);
    sub_5564(v89);
    sub_5564(v92);
    *(v15 + 5) = v20;
    v82 = 0x800000000000DC60;
    v81 = sub_D4D4();
    v26 = v25;

    v27 = swift_allocObject();
    v93 = v4;
    v94 = &off_14A88;
    v92[0] = v27;
    v28 = *(v5 + 48);
    v29 = *(v5 + 52);
    v30 = swift_allocObject();
    v31 = sub_4308(v92, v4);
    v83 = v11;
    __chkstk_darwin(v31, v31);
    v32 = (v76 - v87);
    v84 = v10 + 16;
    v88(v76 - v87);
    v33 = *v32;
    v90 = v4;
    v91 = &off_14A88;
    v89[0] = v33;
    *(v30 + 104) = 0;
    sub_D134();
    *(v30 + 16) = 1818845517;
    *(v30 + 24) = 0xE400000000000000;
    *(v30 + 32) = 0xD000000000000014;
    v34 = v81;
    *(v30 + 40) = v82;
    *(v30 + 48) = v34;
    *(v30 + 56) = v26;
    sub_4358(v89, v30 + 64);
    sub_18EC(1);
    sub_5564(v89);
    sub_5564(v92);
    *(v86 + 6) = v30;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v36);
    v37 = OBJC_IVAR____TtC19HomePrivacySettings21HomeSettingsViewModel___observationRegistrar;
    v92[0] = v2;
    v38 = sub_5348(&qword_18750, type metadata accessor for HomeSettingsViewModel);
    sub_D0F4();

    swift_getKeyPath();
    v92[0] = v2;
    sub_D104();

    v92[0] = v2;
    swift_getKeyPath();
    sub_D124();

    swift_beginAccess();
    sub_2DB4((v2 + 112));
    v78 = 0;
    swift_endAccess();
    v92[0] = v2;
    swift_getKeyPath();
    v82 = v37;
    v77 = v2;
    v81 = v38;
    sub_D114();

    v39 = kTCCServiceEnergyKitGuidance;
    if (kTCCServiceEnergyKitGuidance)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v79;
      v80 = v40;
      v86 = v39;
      *&v79 = sub_D4D4();
      v76[0] = v41;
      v42 = swift_allocObject();
      v93 = v4;
      v94 = &off_14A88;
      v92[0] = v42;
      v43 = *(v5 + 48);
      v44 = *(v5 + 52);
      v45 = swift_allocObject();
      v46 = sub_4308(v92, v4);
      v76[1] = v39;
      __chkstk_darwin(v46, v46);
      v47 = (v76 - v87);
      v48 = v87;
      v88(v76 - v87);
      v49 = *v47;
      v90 = v4;
      v91 = &off_14A88;
      v89[0] = v49;
      *(v45 + 104) = 0;
      v86 = v86;
      sub_D134();
      *(v45 + 16) = 1936744781;
      *(v45 + 24) = 0xE400000000000000;
      strcpy((v45 + 32), "com.apple.Maps");
      *(v45 + 47) = -18;
      v50 = v76[0];
      *(v45 + 48) = v79;
      *(v45 + 56) = v50;
      sub_4358(v89, v45 + 64);
      sub_18EC(1);
      sub_5564(v89);
      sub_5564(v92);
      *(v40 + 32) = v45;
      *&v79 = 0x800000000000DC80;
      v51 = sub_D4D4();
      v76[0] = v52;
      v53 = swift_allocObject();
      v93 = v4;
      v94 = &off_14A88;
      v92[0] = v53;
      v54 = *(v5 + 48);
      v55 = *(v5 + 52);
      v56 = swift_allocObject();
      v57 = sub_4308(v92, v4);
      __chkstk_darwin(v57, v57);
      v58 = v48;
      v59 = (v76 - v48);
      v60 = v88;
      v88(v59);
      v61 = *v59;
      v90 = v4;
      v91 = &off_14A88;
      v89[0] = v61;
      *(v56 + 104) = 0;
      sub_D134();
      *(v56 + 16) = 0x736567617373654DLL;
      *(v56 + 24) = 0xE800000000000000;
      *(v56 + 32) = 0xD000000000000013;
      *(v56 + 40) = v79;
      *(v56 + 48) = v51;
      *(v56 + 56) = v76[0];
      sub_4358(v89, v56 + 64);
      sub_18EC(1);
      sub_5564(v89);
      sub_5564(v92);
      v62 = v80;
      *(v80 + 40) = v56;
      *&v79 = 0x800000000000DCA0;
      v63 = sub_D4D4();
      v65 = v64;

      v66 = swift_allocObject();
      v93 = v4;
      v94 = &off_14A88;
      v92[0] = v66;
      v67 = *(v5 + 48);
      v68 = *(v5 + 52);
      v69 = swift_allocObject();
      v70 = sub_4308(v92, v4);
      __chkstk_darwin(v70, v70);
      v71 = (v76 - v58);
      v60(v71);
      v72 = *v71;
      v90 = v4;
      v91 = &off_14A88;
      v89[0] = v72;
      *(v69 + 104) = 0;
      sub_D134();
      *(v69 + 16) = 0x64726F7773736150;
      *(v69 + 24) = 0xE900000000000073;
      *(v69 + 32) = 0xD000000000000013;
      *(v69 + 40) = v79;
      *(v69 + 48) = v63;
      *(v69 + 56) = v65;
      sub_4358(v89, v69 + 64);
      sub_18EC(1);
      sub_5564(v89);
      sub_5564(v92);
      *(v62 + 48) = v69;
      v73 = swift_getKeyPath();
      __chkstk_darwin(v73, v74);
      v75 = v77;
      v92[0] = v77;
      sub_D0F4();

      swift_getKeyPath();
      v92[0] = v75;
      sub_D104();

      v92[0] = v75;
      swift_getKeyPath();
      sub_D124();

      swift_beginAccess();
      sub_2DB4((v75 + 56));
      swift_endAccess();
      v92[0] = v75;
      swift_getKeyPath();
      sub_D114();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_40DC()
{
  sub_5564(v0 + 2);
  v1 = v0[7];

  sub_5564(v0 + 9);
  v2 = v0[14];

  v3 = OBJC_IVAR____TtC19HomePrivacySettings21HomeSettingsViewModel___observationRegistrar;
  v4 = sub_D144();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_41C0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_421C()
{
  result = sub_D144();
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

uint64_t sub_42C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4308(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_4358(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_4464(uint64_t a1, char a2)
{
  v3 = v2;
  sub_D0A4(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = sub_D0C4();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    sub_D094();

    swift_willThrow();
    v14 = sub_D0C4();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

Swift::Int sub_45B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_D634(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for AppInfo(0);
        v6 = sub_D544();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_47B4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_46BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_46BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_52C8();
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v16 = *(v9 + 16);
      v17 = *(v9 + 24);
      v14 = *(*v11 + 16);
      v15 = *(*v11 + 24);
      result = sub_D5C4();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v12;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_47B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = result;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v92 = v6;
        v87 = v5;
        v10 = *(*a3 + 8 * v7);
        v11 = 8 * v9;
        v12 = v9;
        v13 = (*a3 + 8 * v9);
        v15 = *v13;
        v14 = v13 + 2;
        v101 = *(v10 + 16);
        v104 = *(v10 + 24);
        v95 = *(v15 + 16);
        v98 = *(v15 + 24);
        sub_52C8();
        result = sub_D5C4();
        v16 = result;
        v89 = v12;
        v17 = (v12 + 2);
        while (1)
        {
          v7 = v92;
          if (v92 == v17)
          {
            break;
          }

          v18 = *(v14 - 1);
          v102 = *(*v14 + 16);
          v105 = *(*v14 + 24);
          v96 = *(v18 + 16);
          v99 = *(v18 + 24);
          result = sub_D5C4();
          ++v17;
          ++v14;
          if ((v16 == -1) == (result != -1))
          {
            v7 = (v17 - 1);
            break;
          }
        }

        v9 = v89;
        if (v16 == -1)
        {
          if (v7 < v89)
          {
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
LABEL_127:
            __break(1u);
            return result;
          }

          if (v89 < v7)
          {
            v19 = 8 * v7 - 8;
            v20 = v7;
            v21 = v89;
            do
            {
              if (v21 != --v20)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v22 = *(v23 + v11);
                *(v23 + v11) = *(v23 + v19);
                *(v23 + v19) = v22;
              }

              ++v21;
              v19 -= 8;
              v11 += 8;
            }

            while (v21 < v20);
          }
        }

        v5 = v87;
      }

      v24 = a3[1];
      if (v7 < v24)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_117;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_118;
          }

          if (v9 + a4 >= v24)
          {
            v25 = a3[1];
          }

          else
          {
            v25 = (v9 + a4);
          }

          if (v25 < v9)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v7 != v25)
          {
            v88 = v5;
            v26 = *a3;
            sub_52C8();
            v27 = v26 + 8 * v7 - 8;
            v90 = v9;
            v28 = v9 - v7;
            do
            {
              v93 = v7;
              v29 = *(v26 + 8 * v7);
              v30 = v28;
              v31 = v27;
              do
              {
                v103 = *(v29 + 16);
                v106 = *(v29 + 24);
                v97 = *(*v31 + 16);
                v100 = *(*v31 + 24);
                result = sub_D5C4();
                if (result != -1)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_122;
                }

                v32 = *v31;
                v29 = v31[1];
                *v31 = v29;
                v31[1] = v32;
                --v31;
              }

              while (!__CFADD__(v30++, 1));
              v7 = (v93 + 1);
              v27 += 8;
              --v28;
            }

            while (v93 + 1 != v25);
            v7 = v25;
            v5 = v88;
            v9 = v90;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_515C(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v35 = *(v8 + 2);
      v34 = *(v8 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        result = sub_515C((v34 > 1), v35 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v36;
      v37 = &v8[16 * v35];
      *(v37 + 4) = v9;
      *(v37 + 5) = v7;
      v38 = *v91;
      if (!*v91)
      {
        goto LABEL_126;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v40 = *(v8 + 4);
            v41 = *(v8 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_105;
            }

            v56 = &v8[16 * v36];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_108;
            }

            v62 = &v8[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_112;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v36 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v8[16 * v36];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_107;
          }

          v69 = &v8[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_110;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v36)
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
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v78 = *&v8[16 * v77 + 32];
          v79 = *&v8[16 * v39 + 40];
          sub_4E0C((*a3 + 8 * v78), (*a3 + 8 * *&v8[16 * v39 + 32]), (*a3 + 8 * v79), v38);
          if (v5)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_5148(v8);
          }

          if (v77 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v80 = &v8[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_50BC(v39);
          v36 = *(v8 + 2);
          if (v36 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v8[16 * v36 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_103;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_104;
        }

        v51 = &v8[16 * v36];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_106;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_109;
        }

        if (v55 >= v47)
        {
          v73 = &v8[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_113;
          }

          if (v42 < v76)
          {
            v39 = v36 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_88:
  v7 = *v91;
  if (!*v91)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_5148(v8);
    v8 = result;
  }

  v81 = v5;
  v82 = *(v8 + 2);
  if (v82 >= 2)
  {
    while (*a3)
    {
      v5 = v82 - 1;
      v83 = *&v8[16 * v82];
      v84 = *&v8[16 * v82 + 24];
      sub_4E0C((*a3 + 8 * v83), (*a3 + 8 * *&v8[16 * v82 + 16]), (*a3 + 8 * v84), v7);
      if (v81)
      {
      }

      if (v84 < v83)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_5148(v8);
      }

      if (v82 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v85 = &v8[16 * v82];
      *v85 = v83;
      *(v85 + 1) = v84;
      result = sub_50BC(v5);
      v82 = *(v8 + 2);
      if (v82 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_4E0C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      sub_52C8();
      do
      {
        v31 = v6;
        v17 = v6 - 8;
        v5 -= 8;
        v18 = v14;
        while (1)
        {
          v19 = v5 + 8;
          v20 = *(v18 - 1);
          v18 -= 8;
          v6 = v17;
          v21 = *v17;
          v28 = *(v20 + 16);
          v30 = *(v20 + 24);
          v24 = *(v21 + 16);
          v26 = *(v21 + 24);
          if (sub_D5C4() == -1)
          {
            break;
          }

          if (v19 != v14)
          {
            *v5 = *v18;
          }

          v5 -= 8;
          v14 = v18;
          v17 = v6;
          if (v18 <= v4)
          {
            v14 = v18;
            v6 = v31;
            goto LABEL_39;
          }
        }

        if (v19 != v31)
        {
          *v5 = *v6;
        }
      }

      while (v14 > v4 && v6 > v7);
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      sub_52C8();
      while (1)
      {
        v27 = *(*v6 + 16);
        v29 = *(*v6 + 24);
        v23 = *(*v4 + 16);
        v25 = *(*v4 + 24);
        if (sub_D5C4() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_50BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_5148(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_515C(char *result, int64_t a2, char a3, char *a4)
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
    sub_42C0(&qword_18760, &qword_E610);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_5260(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_D624();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

unint64_t sub_52C8()
{
  result = qword_18758;
  if (!qword_18758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18758);
  }

  return result;
}

uint64_t sub_5348(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_53DC(unint64_t a1, uint64_t a2)
{
  v13 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D624())
  {
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_D604();
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v12 = v6;
      sub_2684(&v12, a2, &v11);
      swift_unknownObjectRelease();
      if (v11)
      {
        sub_D514();
        if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v13 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v8 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
          sub_D534();
        }

        sub_D554();
        v5 = v13;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_15;
    }

    v6 = *(a1 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_18:
  v13 = v5;
  sub_2DB4(&v13);
  return v13;
}

uint64_t sub_5564(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_55B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_55F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_42C0(&qword_18778, &qword_E670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_5664(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_5674(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_42C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5738()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B48 = result;
  unk_18B50 = v8;
  return result;
}

uint64_t sub_5878()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B58 = result;
  unk_18B60 = v8;
  return result;
}

uint64_t sub_59C4()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B68 = result;
  unk_18B70 = v8;
  return result;
}

uint64_t sub_5B14()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B78 = result;
  unk_18B80 = v8;
  return result;
}

uint64_t sub_5C60()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B88 = result;
  unk_18B90 = v8;
  return result;
}

uint64_t sub_5DA4()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18B98 = result;
  unk_18BA0 = v8;
  return result;
}

uint64_t sub_5EF0()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BA8 = result;
  unk_18BB0 = v8;
  return result;
}

uint64_t sub_603C()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BB8 = result;
  unk_18BC0 = v8;
  return result;
}

uint64_t sub_6188()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BC8 = result;
  unk_18BD0 = v8;
  return result;
}

uint64_t sub_62D4()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BD8 = result;
  unk_18BE0 = v8;
  return result;
}

uint64_t sub_6418()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v6 = sub_D494();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  sub_D484();
  v12._object = 0x800000000000DD70;
  v12._countAndFlagsBits = 0xD000000000000013;
  sub_D474(v12);
  sub_676C();
  v13._countAndFlagsBits = sub_D5D4();
  sub_D464(v13);

  v14._countAndFlagsBits = 0xD0000000000000DELL;
  v14._object = 0x800000000000DD90;
  sub_D474(v14);
  sub_D4A4();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v9 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BE8 = result;
  unk_18BF0 = v11;
  return result;
}

uint64_t sub_6620()
{
  v0 = sub_D0E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_D4B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_D454();
  if (qword_18420 != -1)
  {
    swift_once();
  }

  v6 = qword_18B40;
  sub_D0D4();
  result = sub_D4E4();
  qword_18BF8 = result;
  unk_18C00 = v8;
  return result;
}

unint64_t sub_676C()
{
  result = qword_18788;
  if (!qword_18788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18788);
  }

  return result;
}

void sub_67F4()
{
  v0 = sub_D4C4();
  v1 = TCCAccessCopyInformation();

  if (v1)
  {
    sub_D524();
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_6854()
{
  sub_D6B4();
  sub_D6C4(0);
  return sub_D6D4();
}

Swift::Int sub_68C0()
{
  sub_D6B4();
  sub_D6C4(0);
  return sub_D6D4();
}

uint64_t sub_692C()
{
  sub_69B4();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_69B4()
{
  result = qword_18838;
  if (!qword_18838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18838);
  }

  return result;
}

uint64_t sub_6A08()
{
  v2 = *v0;
  v3 = *(&async function pointer to dispatch thunk of HomeEnergyManager.clearEnergyKitDataForAllHomes() + 1);
  v6 = (&async function pointer to dispatch thunk of HomeEnergyManager.clearEnergyKitDataForAllHomes() + async function pointer to dispatch thunk of HomeEnergyManager.clearEnergyKitDataForAllHomes());
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_6AAC;

  return v6();
}

uint64_t sub_6AAC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t getEnumTagSinglePayload for HomeEnergyManagingError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HomeEnergyManagingError(_WORD *result, int a2, int a3)
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

unint64_t sub_6CA0()
{
  result = qword_18840;
  if (!qword_18840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18840);
  }

  return result;
}

uint64_t sub_6D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_42C0(&qword_18848, &unk_E7E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_6DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_42C0(&qword_18848, &unk_E7E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for MainView()
{
  result = qword_188A8;
  if (!qword_188A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6F08()
{
  sub_6F8C();
  if (v0 <= 0x3F)
  {
    sub_6FE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_6F8C()
{
  if (!qword_188B8)
  {
    type metadata accessor for HomeSettingsViewModel(255);
    v0 = sub_D424();
    if (!v1)
    {
      atomic_store(v0, &qword_188B8);
    }
  }
}

void sub_6FE4()
{
  if (!qword_188C0)
  {
    v0 = sub_D314();
    if (!v1)
    {
      atomic_store(v0, &qword_188C0);
    }
  }
}

uint64_t sub_7050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v156 = sub_42C0(&qword_18918, &qword_E860);
  v155 = *(v156 - 8);
  v3 = *(v155 + 64);
  __chkstk_darwin(v156, v4);
  v167 = &v148 - v5;
  v166 = sub_42C0(&qword_18920, &qword_E868);
  v150 = *(v166 - 8);
  v6 = *(v150 + 64);
  v8 = __chkstk_darwin(v166, v7);
  v165 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v164 = &v148 - v11;
  v12 = sub_42C0(&qword_18928, &qword_E870);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v157 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v154 = &v148 - v18;
  v19 = sub_42C0(&qword_18930, &qword_E878);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v160 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23, v25);
  v162 = &v148 - v27;
  __chkstk_darwin(v26, v28);
  v149 = &v148 - v29;
  v30 = sub_42C0(&qword_18938, &qword_E880);
  v31 = *(*(v30 - 8) + 64);
  v33 = __chkstk_darwin(v30 - 8, v32);
  v153 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v35);
  v37 = &v148 - v36;
  v151 = sub_42C0(&qword_18940, &qword_E888);
  v38 = *(v151 - 8);
  v39 = *(v38 + 64);
  v41 = __chkstk_darwin(v151, v40);
  v43 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v41, v44);
  v159 = &v148 - v46;
  __chkstk_darwin(v45, v47);
  v171 = &v148 - v48;
  sub_D584();
  v152 = sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v168 = v20;
  v161 = v43;
  v170 = v37;
  if (qword_18430 != -1)
  {
    swift_once();
  }

  v177 = qword_18B58;
  v178 = unk_18B60;
  v49 = sub_52C8();

  v172 = v49;
  v50 = sub_D224();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v177 = v50;
  v178 = v52;
  v179 = v54 & 1;
  v180 = v56;
  sub_D3D4();
  sub_42C0(&qword_18848, &unk_E7E0);
  sub_D3E4();
  v57 = v177;
  swift_getKeyPath();
  v177 = v57;
  sub_C19C(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  swift_beginAccess();
  v58 = *(v57 + 112);
  if (v58 >> 62)
  {
    if (v58 < 0)
    {
      v146 = *(v57 + 112);
    }

    v59 = sub_D624();
  }

  else
  {
    v59 = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
  }

  v169 = v38;
  v163 = v19;
  if (v59)
  {
    __chkstk_darwin(v60, v61);
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v148 = a1;
    if (qword_18438 != -1)
    {
      swift_once();
    }

    v177 = qword_18B68;
    v178 = unk_18B70;

    v62 = sub_D224();
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v177 = v62;
    v178 = v64;
    v179 = v66 & 1;
    v180 = v68;
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_18440 != -1)
    {
      swift_once();
    }

    v173 = qword_18B78;
    v174 = unk_18B80;

    v69 = sub_D224();
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v173 = v69;
    v174 = v71;
    v175 = v73 & 1;
    v176 = v75;
    sub_42C0(&qword_18948, &qword_E8B8);
    sub_A3B8();
    v76 = v149;
    sub_D3C4();
    v77 = v168;
    v78 = v170;
    v79 = v76;
    v19 = v163;
    (*(v168 + 32))(v170, v79, v163);
    v80 = 0;
    v38 = v169;
  }

  else
  {
    v80 = 1;
    v78 = v170;
    v77 = v168;
  }

  (*(v77 + 56))(v78, v80, 1, v19);
  sub_D3E4();
  v81 = v177;
  swift_getKeyPath();
  v177 = v81;
  sub_D104();

  swift_beginAccess();
  v82 = *(v81 + 56);
  if (v82 >> 62)
  {
    if (v82 < 0)
    {
      v147 = *(v81 + 56);
    }

    v83 = sub_D624();
  }

  else
  {
    v83 = *(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8));
  }

  if (v83)
  {
    __chkstk_darwin(v84, v85);
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_18448 != -1)
    {
      swift_once();
    }

    v177 = qword_18B88;
    v178 = unk_18B90;

    v86 = sub_D224();
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v177 = v86;
    v178 = v88;
    v179 = v90 & 1;
    v180 = v92;
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_18450 != -1)
    {
      swift_once();
    }

    v173 = qword_18B98;
    v174 = unk_18BA0;

    v93 = sub_D224();
    v95 = v94;
    v97 = v96;
    v99 = v98;

    v173 = v93;
    v174 = v95;
    v175 = v97 & 1;
    v176 = v99;
    sub_42C0(&qword_18948, &qword_E8B8);
    sub_A3B8();
    v100 = sub_D3C4();
    __chkstk_darwin(v100, v101);
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_18478 != -1)
    {
      swift_once();
    }

    v177 = qword_18BE8;
    v178 = unk_18BF0;

    v102 = sub_D224();
    v104 = v103;
    v106 = v105;
    v108 = v107;

    v177 = v102;
    v178 = v104;
    v179 = v106 & 1;
    v180 = v108;
    sub_42C0(&qword_18960, &qword_E8E8);
    sub_A4E4();
    sub_D3D4();
    sub_D574();
    sub_D564();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v109 = v168;
    v110 = v169;
    if (qword_18480 != -1)
    {
      swift_once();
    }

    v177 = qword_18BF8;
    v178 = unk_18C00;

    v111 = sub_D224();
    v113 = v112;
    v115 = v114;
    v117 = v116;

    v177 = v111;
    v178 = v113;
    v179 = v115 & 1;
    v180 = v117;
    v118 = v159;
    sub_D3D4();
    v149 = *(v109 + 16);
    v119 = v160;
    v120 = v163;
    (v149)(v160, v162, v163);
    v121 = v150;
    v172 = *(v150 + 16);
    v172(v165, v164, v166);
    v122 = *(v110 + 16);
    v123 = v161;
    v124 = v118;
    v125 = v151;
    v122(v161, v124, v151);
    (v149)(v167, v119, v120);
    v126 = sub_42C0(&qword_189A0, &qword_E908);
    v128 = v166;
    v127 = v167;
    v172((v167 + *(v126 + 48)), v165, v166);
    v129 = v127 + *(v126 + 64);
    v172 = v122;
    v122(v129, v123, v125);
    v130 = *(v169 + 8);
    v130(v159, v125);
    v131 = *(v121 + 8);
    v131(v164, v128);
    v132 = *(v168 + 8);
    v133 = v163;
    v132(v162, v163);
    v130(v123, v125);
    v131(v165, v166);
    v134 = v169;
    v132(v160, v133);
    v135 = v154;
    sub_A694(v167, v154);
    (*(v155 + 56))(v135, 0, 1, v156);
    v78 = v170;
  }

  else
  {
    v135 = v154;
    (*(v155 + 56))(v154, 1, 1, v156);
    v172 = *(v38 + 16);
    v125 = v151;
    v134 = v38;
  }

  v136 = v161;
  v137 = v172;
  v172(v161, v171, v125);
  v138 = v153;
  sub_B5F0(v78, v153, &qword_18938, &qword_E880);
  v139 = v157;
  sub_A704(v135, v157);
  v140 = v125;
  v141 = v158;
  v137(v158, v136, v140);
  v142 = v135;
  v143 = sub_42C0(&qword_189A8, &qword_E910);
  sub_B5F0(v138, v141 + *(v143 + 48), &qword_18938, &qword_E880);
  sub_A704(v139, v141 + *(v143 + 64));
  sub_A774(v142);
  sub_5674(v170, &qword_18938, &qword_E880);
  v144 = *(v134 + 8);
  v144(v171, v140);
  sub_A774(v139);
  sub_5674(v138, &qword_18938, &qword_E880);
  v144(v136, v140);
}

uint64_t sub_827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_42C0(&qword_189D8, &qword_E9E0);
  sub_D364();
  if (!(v19 >> 62))
  {
    v12 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));

LABEL_3:
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    __chkstk_darwin(v13, v14);
    sub_42C0(&qword_189E0, &qword_EA08);
    sub_A43C();
    sub_C228(&qword_189E8, &qword_189E0, &qword_EA08);
    sub_C228(&qword_189F0, &qword_189E0, &qword_EA08);
    swift_getKeyPath();
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a3;
    v15[5] = a5;
    v15[6] = a6;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_B8E0;
    *(v16 + 24) = v15;

    sub_42C0(&qword_189F8, &qword_EA10);
    sub_B984();
    return sub_D3B4();
  }

  v18 = sub_D624();

  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_8534@<X0>(uint64_t a1@<X8>)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_85E4(a1);
}

uint64_t sub_85E4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for MainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v6 = sub_42C0(&qword_18970, &qword_E8F0);
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6, v8);
  v10 = v27 - v9;
  if (qword_18458 != -1)
  {
    swift_once();
  }

  v32 = qword_18BA8;
  v33 = unk_18BB0;
  sub_A7DC(v1, v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_A844(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = sub_52C8();

  v27[2] = v13;
  sub_D344();
  v28 = v10;
  if (qword_18460 != -1)
  {
    swift_once();
  }

  v36 = qword_18BB8;
  v37 = unk_18BC0;
  v14 = v1 + *(v2 + 20);
  v15 = *v14;
  v16 = *(v14 + 8);
  v34 = v15;
  v35 = v16;

  sub_42C0(&qword_189B0, &qword_E918);
  v17 = sub_D304();
  v27[1] = v27;
  __chkstk_darwin(v17, v18);
  sub_42C0(&qword_18978, &qword_E8F8);
  sub_C228(&qword_18980, &qword_18970, &qword_E8F0);
  sub_C228(&qword_18988, &qword_18978, &qword_E8F8);
  v19 = v30;
  v20 = v31;
  v21 = v28;
  sub_D2A4();

  (*(v29 + 8))(v21, v19);
  sub_42C0(&qword_18848, &unk_E7E0);
  sub_D3E4();
  v22 = v32;
  swift_getKeyPath();
  v32 = v22;
  sub_C19C(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D104();

  LOBYTE(v19) = *(v22 + 64);

  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  result = sub_42C0(&qword_18960, &qword_E8E8);
  v26 = (v20 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = sub_B268;
  v26[2] = v24;
  return result;
}

uint64_t sub_8AE4()
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_8B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a5;
  v26 = a4;
  v24 = a3;
  v22 = a2;
  v6 = type metadata accessor for MainView();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6 - 8, v8);
  v9 = sub_42C0(&qword_18848, &unk_E7E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v22 - v13;
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_D3F4();
  swift_getKeyPath();
  sub_D414();

  (*(v10 + 8))(v14, v9);
  v15 = v27;
  v16 = v28;
  v17 = v29;
  KeyPath = swift_getKeyPath();
  sub_A7DC(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v20 = swift_allocObject();
  sub_A844(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_827C(v15, v16, v17, KeyPath, v26, v20);
}

uint64_t sub_8DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_42C0(&qword_18848, &unk_E7E0);
  sub_D3E4();

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v7;
  return result;
}

uint64_t sub_8EDC(uint64_t a1)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for MainView() + 20));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_42C0(&qword_189B0, &qword_E918);
  sub_D2F4();
}

uint64_t sub_8FBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a1;
  v64 = a2;
  v56 = sub_D1D4();
  v63 = *(v56 - 8);
  v2 = *(v63 + 64);
  __chkstk_darwin(v56, v3);
  v62 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MainView();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  __chkstk_darwin(v5 - 8, v7);
  v52 = v8;
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_42C0(&qword_18970, &qword_E8F0);
  v60 = *(v58 - 8);
  v10 = *(v60 + 64);
  __chkstk_darwin(v58, v11);
  v13 = &v49 - v12;
  v61 = sub_42C0(&qword_189B8, &qword_E978);
  v55 = *(v61 - 8);
  v14 = *(v55 + 64);
  v16 = __chkstk_darwin(v61, v15);
  v57 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v49 - v19;
  v21 = sub_D194();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8, v23);
  v24 = sub_42C0(&qword_189C0, &qword_E980);
  v25 = *(v24 - 8);
  v26 = v25[8];
  v28 = __chkstk_darwin(v24, v27);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v31);
  v33 = &v49 - v32;
  sub_D584();
  v53 = sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_D184();
  v51 = v33;
  sub_D334();
  sub_A7DC(v59, v9);
  v34 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v35 = swift_allocObject();
  sub_A844(v9, v35 + v34);
  sub_D324();
  v36 = v62;
  sub_D1C4();
  sub_C228(&qword_18980, &qword_18970, &qword_E8F0);
  v50 = v20;
  v37 = v58;
  sub_D284();
  (*(v63 + 8))(v36, v56);
  (*(v60 + 8))(v13, v37);
  v38 = v25[2];
  v39 = v30;
  v38(v30, v33, v24);
  v40 = v55;
  v63 = *(v55 + 16);
  v41 = v57;
  v42 = v20;
  v43 = v61;
  (v63)(v57, v42, v61);
  v44 = v64;
  v38(v64, v39, v24);
  v45 = sub_42C0(&qword_189C8, &qword_E988);
  (v63)(&v44[*(v45 + 48)], v41, v43);
  v46 = *(v40 + 8);
  v46(v50, v43);
  v47 = v25[1];
  v47(v51, v24);
  v46(v41, v43);
  v47(v39, v24);
}

uint64_t sub_95C8()
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_9658(uint64_t a1)
{
  v2 = type metadata accessor for MainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8, v5);
  v6 = sub_42C0(&qword_189D0, &qword_E990);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v16 - v9;
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_D5B4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_A7DC(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_D574();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_A844(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_9B70(0, 0, v10, &unk_E9A0, v14);
}

uint64_t sub_9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_D584();
  v4[4] = sub_D574();
  v6 = sub_D564();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_9918, v6, v5);
}

uint64_t sub_9918()
{
  v1 = v0[3];
  sub_42C0(&qword_18848, &unk_E7E0);
  sub_D3E4();
  v0[7] = v0[2];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_99CC;

  return sub_2E2C();
}

uint64_t sub_99CC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_9B10, v5, v4);
}

uint64_t sub_9B10()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_9B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_42C0(&qword_189D0, &qword_E990);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_B5F0(a3, v28 - v12, &qword_189D0, &qword_E990);
  v14 = sub_D5B4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_5674(v13, &qword_189D0, &qword_E990);
  }

  else
  {
    sub_D5A4();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_D564();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_D4F4() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_5674(a3, &qword_189D0, &qword_E990);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_5674(a3, &qword_189D0, &qword_E990);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_9E70@<X0>(uint64_t a1@<X8>)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_18470 != -1)
  {
    swift_once();
  }

  sub_52C8();

  v2 = sub_D224();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_9F8C@<X0>(uint64_t a1@<X8>)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_18468 != -1)
  {
    swift_once();
  }

  sub_52C8();

  v2 = sub_D224();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_A0A8@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = sub_D1B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_42C0(&qword_188F0, &qword_E850);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v15 - v12;
  v16 = v1;
  sub_42C0(&qword_188F8, &qword_E858);
  sub_C228(&qword_18900, &qword_188F8, &qword_E858);
  sub_D214();
  sub_D434();
  sub_C228(&qword_18908, &qword_188F0, &qword_E850);
  sub_C19C(&qword_18910, &type metadata accessor for GroupedFormStyle);
  sub_D2B4();
  (*(v3 + 8))(v7, v2);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_A324(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_A3B8()
{
  result = qword_18950;
  if (!qword_18950)
  {
    sub_A324(&qword_18948, &qword_E8B8);
    sub_A43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18950);
  }

  return result;
}

unint64_t sub_A43C()
{
  result = qword_18958;
  if (!qword_18958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18958);
  }

  return result;
}

unint64_t sub_A4E4()
{
  result = qword_18968;
  if (!qword_18968)
  {
    sub_A324(&qword_18960, &qword_E8E8);
    sub_A324(&qword_18970, &qword_E8F0);
    sub_A324(&qword_18978, &qword_E8F8);
    sub_C228(&qword_18980, &qword_18970, &qword_E8F0);
    sub_52C8();
    sub_C228(&qword_18988, &qword_18978, &qword_E8F8);
    swift_getOpaqueTypeConformance2();
    sub_C228(&qword_18990, &qword_18998, &qword_E900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18968);
  }

  return result;
}

uint64_t sub_A694(uint64_t a1, uint64_t a2)
{
  v4 = sub_42C0(&qword_18918, &qword_E860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A704(uint64_t a1, uint64_t a2)
{
  v4 = sub_42C0(&qword_18928, &qword_E870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A774(uint64_t a1)
{
  v2 = sub_42C0(&qword_18928, &qword_E870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A8D0()
{
  sub_42C0(&qword_18A20, &qword_EAB0);
  sub_D394();
  swift_getKeyPath();
  sub_D384();

  sub_42C0(&qword_18A28, &qword_EAE0);
  sub_C228(&qword_18A30, &qword_18A28, &qword_EAE0);
  return sub_D354();
}

uint64_t sub_AA30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C19C(&qword_18768, type metadata accessor for AppInfo);
  sub_D104();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_AAD8()
{
  sub_D584();
  sub_D574();
  sub_D564();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v2 = __chkstk_darwin(isCurrentExecutor, v1);
  __chkstk_darwin(v2, v3);
  sub_42C0(&qword_18A38, &qword_EAE8);
  sub_C228(&qword_18A40, &qword_18A38, &qword_EAE8);
  sub_D2C4();
}

uint64_t sub_AC6C@<X0>(uint64_t a1@<X8>)
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_42C0(&qword_18A20, &qword_EAB0);
  sub_D364();
  v3 = *(v11 + 16);
  v2 = *(v11 + 24);

  sub_52C8();
  v4 = sub_D224();
  v6 = v5;
  LOBYTE(v3) = v7;
  v9 = v8;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_AD98()
{
  sub_D584();
  sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_42C0(&qword_18A20, &qword_EAB0);
  sub_D364();
  v0 = *(v6 + 32);
  v1 = *(v6 + 40);

  v2 = objc_allocWithZone(ISIcon);
  v3 = sub_D4C4();

  [v2 initWithBundleIdentifier:v3];

  v4 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  sub_D174();
}

uint64_t sub_AF30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_A8D0();
}

uint64_t sub_AF3C(unint64_t a1)
{
  sub_42C0(&qword_189D8, &qword_E9E0);
  result = sub_D364();
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_D604();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v3 = *(v4 + 8 * a1 + 32);

LABEL_5:

    swift_getAtKeyPath();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_B010(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B108;

  return v7(a1);
}

uint64_t sub_B108()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_B200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D1E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_B298(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MainView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_B30C()
{
  v1 = (type metadata accessor for MainView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_42C0(&qword_18848, &unk_E7E0);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_B40C(uint64_t a1)
{
  v4 = *(type metadata accessor for MainView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_B4FC;

  return sub_9880(a1, v6, v7, v1 + v5);
}

uint64_t sub_B4FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_B5F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_42C0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B658()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B690(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_C294;

  return sub_B010(a1, v5);
}

uint64_t sub_B748(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_B4FC;

  return sub_B010(a1, v5);
}

uint64_t sub_B808()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B858@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  result = sub_AF3C(*a1);
  *a2 = result;
  a2[1] = v9;
  a2[2] = v10;
  return result;
}

uint64_t sub_B890()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_B8E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  result = sub_BC7C(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

__n128 sub_B91C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = a1[1];
  v10[1] = a1[2];
  v11 = v6;
  v10[0] = v7;
  v4(&v12, &v11, v10);
  v8 = v14;
  result = v13;
  *a2 = v12;
  *(a2 + 8) = result;
  *(a2 + 24) = v8;
  return result;
}

unint64_t sub_B984()
{
  result = qword_18A00;
  if (!qword_18A00)
  {
    sub_A324(&qword_189F8, &qword_EA10);
    sub_BA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A00);
  }

  return result;
}

unint64_t sub_BA08()
{
  result = qword_18A08;
  if (!qword_18A08)
  {
    sub_A324(&qword_18A10, &qword_EA18);
    sub_BA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A08);
  }

  return result;
}

unint64_t sub_BA94()
{
  result = qword_18A18;
  if (!qword_18A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A18);
  }

  return result;
}

uint64_t sub_BAE8@<X0>(uint64_t *a1@<X2>, unint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v8 = *a1;
  v9 = *(a1 + 1);
  sub_42C0(&qword_189D8, &qword_E9E0);
  result = sub_D364();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v6 = sub_D604();
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v7 + 8 * v4 + 32);

LABEL_5:

    *a3 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_BBA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v5 = *a1;
  v6 = *a5;
  v12 = *a4;
  v13 = *(a4 + 1);
  sub_42C0(&qword_189D8, &qword_E9E0);
  sub_D364();
  v7 = v11;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    result = sub_5260(v11);
    v7 = result;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * v6;
    v10 = *(&stru_20.cmd + v9);
    *(v9 + 32) = v5;

    return sub_D374();
  }

  __break(1u);
  return result;
}

uint64_t sub_BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a1;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a1;
  type metadata accessor for AppInfo(0);
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_D3A4();
  a5(&v13, &v14);

  return v13;
}

uint64_t sub_BDB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_BAE8(v1 + 4, v1 + 7, a1);
}

uint64_t sub_BDC8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_BE28()
{
  v1 = (type metadata accessor for MainView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_42C0(&qword_18848, &unk_E7E0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

__n128 sub_BFA4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_BFB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_BFF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_C048()
{
  sub_A324(&qword_188F0, &qword_E850);
  sub_D1B4();
  sub_C228(&qword_18908, &qword_188F0, &qword_E850);
  sub_C19C(&qword_18910, &type metadata accessor for GroupedFormStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C170()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_AAD8();
}

uint64_t sub_C17C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_AC6C(a1);
}

uint64_t sub_C188()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_AD98();
}

uint64_t sub_C19C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C228(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_A324(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C2C0()
{
  result = qword_18AF0;
  if (!qword_18AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18AF0);
  }

  return result;
}

uint64_t sub_C330@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_D204();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MainView();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_42C0(&qword_18B10, &qword_EBC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v38 - v18;
  v20 = sub_42C0(&qword_18B08, &qword_EBB8);
  v39 = *(v20 - 8);
  v40 = v20;
  v21 = *(v39 + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v38 - v23;
  sub_D584();
  v41 = sub_D574();
  sub_D564();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = a1;
  v46 = a1;
  v47 = a2;
  sub_42C0(&qword_18B28, &qword_EBC8);
  sub_D2E4();
  type metadata accessor for HomeSettingsViewModel(0);
  sub_CE0C(&qword_18750, type metadata accessor for HomeSettingsViewModel);
  sub_D404();
  v25 = &v13[*(v9 + 20)];
  LOBYTE(v50) = 0;
  sub_D2D4();
  v26 = v47;
  *v25 = v46;
  *(v25 + 1) = v26;
  v27 = sub_CE0C(&qword_18B18, type metadata accessor for MainView);
  sub_D234();
  sub_CE54(v13);
  if (qword_18428 != -1)
  {
    swift_once();
  }

  v46 = qword_18B48;
  v47 = unk_18B50;
  v50 = v9;
  v51 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_52C8();
  sub_D274();
  (*(v15 + 8))(v19, v14);
  v30 = v42;
  v31 = v43;
  v32 = v44;
  (*(v43 + 104))(v42, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v44);
  v46 = v14;
  v47 = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v29;
  swift_getOpaqueTypeConformance2();
  v33 = v45;
  v34 = v40;
  sub_D294();
  (*(v31 + 8))(v30, v32);
  (*(v39 + 8))(v24, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v38;
  *(v35 + 24) = a2;
  v36 = (v33 + *(sub_42C0(&qword_18AF8, &qword_EBB0) + 36));
  LODWORD(v33) = *(sub_D1A4() + 20);

  sub_D594();

  *v36 = &unk_EBD8;
  v36[1] = v35;
  return result;
}

uint64_t sub_C878(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_D584();
  v2[7] = sub_D574();
  v4 = sub_D564();

  return _swift_task_switch(sub_C910, v4, v3);
}

uint64_t sub_C910()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v0[2] = v3;
  v0[3] = v2;
  sub_42C0(&qword_18B28, &qword_EBC8);
  sub_D2E4();
  v4 = v0[4];
  sub_236C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_C9B4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = sub_42C0(&qword_18AF8, &qword_EBB0);
  v5 = sub_CC5C();

  return SettingsPane.init(makeContent:)(sub_CC54, v3, v4, v5);
}

uint64_t sub_CA5C@<X0>(void *a1@<X8>)
{
  sub_D164();
  v2 = sub_D154();
  type metadata accessor for TCCServiceManager();
  v3 = swift_allocObject();
  sub_CADC(v2, v3);
  type metadata accessor for HomeSettingsViewModel(0);
  result = sub_D2D4();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_CADC(uint64_t a1, uint64_t a2)
{
  v18 = sub_D164();
  v19 = &protocol witness table for HomeEnergyManager;
  *&v17 = a1;
  v4 = type metadata accessor for TCCServiceManager();
  v16[3] = v4;
  v16[4] = &off_14A88;
  v16[0] = a2;
  v5 = type metadata accessor for HomeSettingsViewModel(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = sub_4308(v16, v4);
  v10 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v9, v9);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  *(v8 + 96) = v4;
  *(v8 + 104) = &off_14A88;
  *(v8 + 72) = v14;
  *(v8 + 56) = &_swiftEmptyArrayStorage;
  *(v8 + 64) = 0;
  *(v8 + 112) = &_swiftEmptyArrayStorage;
  sub_D134();
  sub_CC38(&v17, v8 + 16);
  sub_5564(v16);
  return v8;
}

uint64_t sub_CC38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_CC5C()
{
  result = qword_18B00;
  if (!qword_18B00)
  {
    sub_A324(&qword_18AF8, &qword_EBB0);
    sub_A324(&qword_18B08, &qword_EBB8);
    sub_A324(&qword_18B10, &qword_EBC0);
    type metadata accessor for MainView();
    sub_CE0C(&qword_18B18, type metadata accessor for MainView);
    swift_getOpaqueTypeConformance2();
    sub_52C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_CE0C(&qword_18B20, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18B00);
  }

  return result;
}

uint64_t sub_CE0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CE54(uint64_t a1)
{
  v2 = type metadata accessor for MainView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CEB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CEF0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_B4FC;

  return sub_C878(v2, v3);
}

__n128 sub_CF88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_CF94(uint64_t *a1, int a2)
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

uint64_t sub_CFDC(uint64_t result, int a2, int a3)
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

unint64_t sub_D02C()
{
  result = qword_18B30;
  if (!qword_18B30)
  {
    sub_A324(&qword_18B38, &qword_EC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18B30);
  }

  return result;
}