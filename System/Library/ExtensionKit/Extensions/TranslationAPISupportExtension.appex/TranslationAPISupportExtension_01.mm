unint64_t sub_100019744()
{
  result = qword_1000291E0;
  if (!qword_1000291E0)
  {
    sub_100002350(&qword_1000291E8, &qword_10001EB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291E0);
  }

  return result;
}

unint64_t sub_100019838()
{
  result = qword_100029228;
  if (!qword_100029228)
  {
    sub_100002350(&qword_100029220, &qword_10001EBE8);
    sub_100005818(&qword_100029230, &qword_100029238, &qword_10001EBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029228);
  }

  return result;
}

unint64_t sub_1000198F0()
{
  result = qword_100029248;
  if (!qword_100029248)
  {
    sub_100002350(&qword_100029240, &qword_10001EBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029248);
  }

  return result;
}

uint64_t sub_10001996C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CFC(&qword_1000291B0, &qword_10001EB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000199DC(uint64_t a1)
{
  v2 = sub_100001CFC(&qword_1000291B0, &qword_10001EB48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CDA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100019A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LowConfidenceLIDView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LowConfidenceLIDView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019BB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100019C00()
{
  result = qword_100029288;
  if (!qword_100029288)
  {
    sub_100002350(&qword_100029280, &unk_10001EC50);
    sub_1000198F0();
    sub_100005818(&qword_100028CC0, &qword_100028CC8, &qword_10001E2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029288);
  }

  return result;
}

uint64_t sub_100019CC0()
{
  v1 = (type metadata accessor for LowConfidenceLIDView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_10001CE08();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = *(v5 + *(sub_100001CFC(&qword_100029100, &unk_10001EB10) + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100019ED4()
{
  v1 = (type metadata accessor for LowConfidenceLIDView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10001CE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v0 + v3 + v1[7];
  if (!(*(v6 + 48))(v9, 1, v5))
  {
    (*(v6 + 8))(v9, v5);
  }

  v10 = (v3 + v4 + v7) & ~v7;
  v11 = *(v9 + *(sub_100001CFC(&qword_100029100, &unk_10001EB10) + 28));

  (*(v6 + 8))(v0 + v10, v5);

  return _swift_deallocObject(v0, v10 + v8, v2 | v7 | 7);
}

uint64_t sub_10001A078()
{
  v1 = *(type metadata accessor for LowConfidenceLIDView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_10001CE08() - 8);
  return sub_100018940(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_10001A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100001CFC(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v16 - v13;
  sub_100005D74(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t SupportStepView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v68 = sub_100001CFC(&qword_1000292A0, &qword_10001ED60);
  v60 = *(v68 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v68);
  v59 = &v57 - v4;
  v65 = sub_100001CFC(&qword_1000292A8, &qword_10001ED68);
  v5 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v66 = &v57 - v6;
  v72 = sub_100001CFC(&qword_1000292B0, &qword_10001ED70);
  v7 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v67 = &v57 - v8;
  v64 = type metadata accessor for LanguageDownloadView(0);
  v9 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100001CFC(&qword_1000292B8, &qword_10001ED78);
  v11 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v71 = &v57 - v12;
  v61 = sub_100001CFC(&qword_1000292C0, &qword_10001ED80);
  v13 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v15 = &v57 - v14;
  v70 = sub_100001CFC(&qword_1000292C8, &unk_10001ED88);
  v16 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v63 = &v57 - v17;
  v18 = sub_100001CFC(&qword_100028D48, &qword_10001E3D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v57 - v23;
  v62 = type metadata accessor for LowConfidenceLIDView();
  v25 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v27 = (&v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  *&v79 = a1;
  sub_10001B120(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  v28 = a1;
  sub_10001CE28();

  v29 = OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__currentStep;
  swift_beginAccess();
  v30 = v28[v29];

  if (v30 > 1)
  {

    sub_10001D108();
    if (v30 == 2)
    {
      v35 = sub_10001D218();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      KeyPath = swift_getKeyPath();
      v43 = sub_10001D1C8();
      *&v79 = v35;
      *(&v79 + 1) = v37;
      LOBYTE(v80) = v39 & 1;
      *(&v80 + 1) = v74[0];
      DWORD1(v80) = *(v74 + 3);
      *(&v80 + 1) = v41;
      *&v81 = KeyPath;
      BYTE8(v81) = 1;
      *(&v81 + 9) = *v77;
      HIDWORD(v81) = *&v77[3];
      v82[0] = v43;
      *&v82[1] = *v76;
      *&v82[4] = *&v76[3];
      memset(&v82[8], 0, 32);
      v44 = *v82;
      v45 = *&v82[16];
      v46 = v80;
      v47 = v66;
      *(v66 + 2) = v81;
      v47[3] = v44;
      v78 = v39 & 1;
      v75 = 1;
      v82[40] = 1;
      v47[4] = v45;
      *(v47 + 73) = *&v82[25];
      *v47 = v79;
      v47[1] = v46;
      swift_storeEnumTagMultiPayload();
      sub_100005D74(&v79, v74, &qword_1000292D0, &qword_10001EDC0);
      sub_100001CFC(&qword_1000292D0, &qword_10001EDC0);
      sub_10001AEF0();
      sub_100005818(&qword_1000292F0, &qword_1000292A0, &qword_10001ED60);
      v48 = v67;
      sub_10001D148();
      sub_100005D74(v48, v71, &qword_1000292B0, &qword_10001ED70);
      swift_storeEnumTagMultiPayload();
      sub_10001B034();
      sub_10001B168();
      sub_10001D148();
      sub_100005D0C(&v79, &qword_1000292D0, &qword_10001EDC0);
      return sub_100005D0C(v48, &qword_1000292B0, &qword_10001ED70);
    }

    else
    {
      v53 = v59;
      sub_10001D198();
      v54 = v60;
      v55 = v68;
      (*(v60 + 16))(v66, v53, v68);
      swift_storeEnumTagMultiPayload();
      sub_100001CFC(&qword_1000292D0, &qword_10001EDC0);
      sub_10001AEF0();
      sub_100005818(&qword_1000292F0, &qword_1000292A0, &qword_10001ED60);
      v56 = v67;
      sub_10001D148();
      sub_100005D74(v56, v71, &qword_1000292B0, &qword_10001ED70);
      swift_storeEnumTagMultiPayload();
      sub_10001B034();
      sub_10001B168();
      sub_10001D148();
      sub_100005D0C(v56, &qword_1000292B0, &qword_10001ED70);
      return (*(v54 + 8))(v53, v55);
    }
  }

  else if (v30)
  {
    v49 = *(v64 + 20);
    v50 = swift_getKeyPath();
    v51 = v58;
    *&v58[v49] = v50;
    sub_100001CFC(&qword_100028A98, &qword_10001E140);
    swift_storeEnumTagMultiPayload();
    *v51 = v28;
    sub_10001B2D8(v51, v15, type metadata accessor for LanguageDownloadView);
    swift_storeEnumTagMultiPayload();
    sub_10001B120(&qword_100029300, type metadata accessor for LowConfidenceLIDView);
    sub_10001B120(&qword_100029308, type metadata accessor for LanguageDownloadView);
    v52 = v63;
    sub_10001D148();
    sub_100005D74(v52, v71, &qword_1000292C8, &unk_10001ED88);
    swift_storeEnumTagMultiPayload();
    sub_10001B034();
    sub_10001B168();
    sub_10001D148();
    sub_100005D0C(v52, &qword_1000292C8, &unk_10001ED88);
    return sub_10001B340(v51, type metadata accessor for LanguageDownloadView);
  }

  else
  {
    v31 = *(v62 + 20);
    v32 = sub_10001CE08();
    (*(*(v32 - 8) + 56))(v24, 1, 1, v32);
    sub_100005D74(v24, v22, &qword_100028D48, &qword_10001E3D0);
    sub_10001D328();
    sub_100005D0C(v24, &qword_100028D48, &qword_10001E3D0);
    *v27 = v28;
    sub_10001B2D8(v27, v15, type metadata accessor for LowConfidenceLIDView);
    swift_storeEnumTagMultiPayload();
    sub_10001B120(&qword_100029300, type metadata accessor for LowConfidenceLIDView);
    sub_10001B120(&qword_100029308, type metadata accessor for LanguageDownloadView);
    v33 = v63;
    sub_10001D148();
    sub_100005D74(v33, v71, &qword_1000292C8, &unk_10001ED88);
    swift_storeEnumTagMultiPayload();
    sub_10001B034();
    sub_10001B168();
    sub_10001D148();
    sub_100005D0C(v33, &qword_1000292C8, &unk_10001ED88);
    return sub_10001B340(v27, type metadata accessor for LowConfidenceLIDView);
  }
}

unint64_t sub_10001AEF0()
{
  result = qword_1000292D8;
  if (!qword_1000292D8)
  {
    sub_100002350(&qword_1000292D0, &qword_10001EDC0);
    sub_10001AF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000292D8);
  }

  return result;
}

unint64_t sub_10001AF7C()
{
  result = qword_1000292E0;
  if (!qword_1000292E0)
  {
    sub_100002350(&qword_1000292E8, &unk_10001EDC8);
    sub_100005818(&qword_1000291F0, &qword_1000291F8, &qword_10001EB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000292E0);
  }

  return result;
}

unint64_t sub_10001B034()
{
  result = qword_1000292F8;
  if (!qword_1000292F8)
  {
    sub_100002350(&qword_1000292C8, &unk_10001ED88);
    sub_10001B120(&qword_100029300, type metadata accessor for LowConfidenceLIDView);
    sub_10001B120(&qword_100029308, type metadata accessor for LanguageDownloadView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000292F8);
  }

  return result;
}

uint64_t sub_10001B120(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001B168()
{
  result = qword_100029310;
  if (!qword_100029310)
  {
    sub_100002350(&qword_1000292B0, &qword_10001ED70);
    sub_10001AEF0();
    sub_100005818(&qword_1000292F0, &qword_1000292A0, &qword_10001ED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029310);
  }

  return result;
}

uint64_t sub_10001B228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001D058();
  *a1 = result;
  return result;
}

uint64_t sub_10001B254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001D058();
  *a1 = result;
  return result;
}

uint64_t sub_10001B2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001B340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001B3D0()
{
  result = qword_100029318;
  if (!qword_100029318)
  {
    sub_100002350(&qword_100029320, &unk_10001EEE0);
    sub_10001B034();
    sub_10001B168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029318);
  }

  return result;
}

id sub_10001B4B8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for LanguageSupportRemoteModel()) init];
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000100020340;
  a1[2] = sub_10001B45C;
  a1[3] = 0;
  a1[4] = result;
  return result;
}

uint64_t sub_10001B524()
{
  sub_10001C390();
  sub_100001CFC(&qword_100029368, &qword_10001EF70);
  sub_100005818(&qword_100029370, &qword_100029368, &qword_10001EF70);
  sub_100006298();
  return sub_10001CE88();
}

uint64_t sub_10001B5E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = sub_10001D0B8();
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001D0D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001CFC(&qword_100029388, &qword_10001F008);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = sub_100001CFC(&qword_100029390, &qword_10001F010);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v46 = sub_100001CFC(&qword_100029398, &qword_10001F018);
  v48 = *(v46 - 8);
  v23 = *(v48 + 64);
  __chkstk_darwin(v46);
  v41 = &v40 - v24;
  v40 = a1;
  sub_10001D0C8();
  sub_10001D3F8();
  sub_10001D3E8();

  v25 = sub_10001C618(&qword_1000293A0, &type metadata accessor for OpacityTransition);
  sub_10001CF28();

  (*(v6 + 8))(v9, v5);
  (*(v11 + 16))(v15, v17, v10);
  v51 = v5;
  v52 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = sub_10001CF38();
  (*(v11 + 8))(v17, v10);
  v27 = v40;
  v51 = v40;
  v52 = v26;
  sub_10001D108();
  v28 = sub_100001CFC(&qword_1000293A8, &qword_10001F020);
  v29 = sub_10001C4B4();
  sub_10001D288();

  v31 = v44;
  v30 = v45;
  v32 = v47;
  (*(v45 + 104))(v44, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v47);
  v51 = v28;
  v52 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v41;
  v35 = v42;
  sub_10001D2B8();
  (*(v30 + 8))(v31, v32);
  (*(v43 + 8))(v22, v35);
  v50 = v27;
  sub_100001CFC(&qword_1000293D0, &qword_10001F030);
  v51 = v35;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = sub_100002350(&qword_1000293D8, &qword_10001F038);
  v37 = sub_100005818(&qword_1000293E0, &qword_1000293D8, &qword_10001F038);
  v51 = v36;
  v52 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_10001D2C8();
  return (*(v48 + 8))(v34, v38);
}

uint64_t sub_10001BC1C(uint64_t a1)
{
  v2 = sub_10001D168();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100001CFC(&qword_1000293D8, &qword_10001F038);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  sub_10001D158();
  v13 = a1;
  sub_100001CFC(&qword_1000293E8, &qword_10001F040);
  v9 = sub_100002350(&qword_1000293F0, &qword_10001F048);
  v10 = sub_100005818(&qword_1000293F8, &qword_1000293F0, &qword_10001F048);
  v14 = v9;
  v15 = v10;
  swift_getOpaqueTypeConformance2();
  sub_10001CFF8();
  sub_100005818(&qword_1000293E0, &qword_1000293D8, &qword_10001F038);
  sub_10001D178();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10001BE44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v16 = sub_10001CFD8();
  v14 = *(v16 - 8);
  v3 = *(v14 + 64);
  __chkstk_darwin(v16);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CFC(&qword_1000293F0, &qword_10001F048);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_10001D108();
  *(swift_allocObject() + 16) = a1;
  v11 = a1;
  sub_10001D378();
  sub_10001CFC8();
  sub_100005818(&qword_1000293F8, &qword_1000293F0, &qword_10001F048);
  sub_10001D298();
  (*(v14 + 8))(v5, v16);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10001C07C(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:20 userInfo:0];
  swift_getKeyPath();
  sub_10001C618(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel);
  v3 = v2;
  sub_10001CE28();

  v4 = *(a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    v6 = v3;
    sub_10001629C(v4);
    v4(0, v3);

    sub_100014B1C(v4);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10001CE18();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001C29C();
  sub_10001CEC8();
  return 0;
}

unint64_t sub_10001C29C()
{
  result = qword_100029328;
  if (!qword_100029328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029328);
  }

  return result;
}

unint64_t sub_10001C31C(uint64_t a1)
{
  result = sub_10001C29C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001C390()
{
  result = qword_100029360;
  if (!qword_100029360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029360);
  }

  return result;
}

id sub_10001C3E4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_10001C3F0()
{
  result = qword_100029378;
  if (!qword_100029378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029378);
  }

  return result;
}

unint64_t sub_10001C4B4()
{
  result = qword_1000293B0;
  if (!qword_1000293B0)
  {
    sub_100002350(&qword_1000293A8, &qword_10001F020);
    sub_10001C56C();
    sub_100005818(&qword_1000293C0, &qword_1000293C8, &qword_10001F028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293B0);
  }

  return result;
}

unint64_t sub_10001C56C()
{
  result = qword_1000293B8;
  if (!qword_1000293B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293B8);
  }

  return result;
}

uint64_t sub_10001C5D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001C680()
{
  sub_100002350(&qword_100029398, &qword_10001F018);
  sub_100002350(&qword_1000293D0, &qword_10001F030);
  sub_100002350(&qword_100029390, &qword_10001F010);
  sub_100002350(&qword_1000293A8, &qword_10001F020);
  sub_10001C4B4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100002350(&qword_1000293D8, &qword_10001F038);
  sub_100005818(&qword_1000293E0, &qword_1000293D8, &qword_10001F038);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001C800(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100029CA0 == -1)
  {
    if (qword_100029CA8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10001CCC8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100029CA8)
    {
      return _availability_version_check();
    }
  }

  if (qword_100029C98 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10001CCE0();
    a3 = v10;
    a4 = v9;
    v8 = dword_100029C88 < v11;
    if (dword_100029C88 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100029C8C > a3)
      {
        return 1;
      }

      if (dword_100029C8C >= a3)
      {
        return dword_100029C90 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100029C88 < a2;
  if (dword_100029C88 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10001C994(uint64_t result)
{
  v1 = qword_100029CA8;
  if (qword_100029CA8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100029CA8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100029C88, &dword_100029C8C, &dword_100029C90);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}