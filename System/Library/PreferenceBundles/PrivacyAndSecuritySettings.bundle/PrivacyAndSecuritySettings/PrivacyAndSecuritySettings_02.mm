__n128 sub_266C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_25C84(v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v6[4];
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26714(uint64_t a1)
{
  v2 = sub_44BC(&qword_783B0, &unk_57FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2677C()
{
  result = sub_54638();
  qword_7BBC8 = result;
  return result;
}

uint64_t sub_267B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = *(*(sub_44BC(&qword_777B8, &qword_57750) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_2687C, 0, 0);
}

uint64_t sub_2687C()
{
  v2 = v0[6];
  v1 = v0[7];
  v0[5] = 0;
  if (os_eligibility_get_domain_answer())
  {
    v3 = 0;
  }

  else
  {
    v3 = v0[5] == 4;
  }

  v4 = v3;
  v5 = sub_547D8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_547A8();

  v7 = sub_54798();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = v6;
  *(v8 + 40) = v4;

  sub_12270(0, 0, v1, &unk_58030, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  sub_547A8();
  *(v5 + 48) = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_26AF0, v7, v6);
}

uint64_t sub_26AF0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 72) = *(v0 + 56);
    sub_7738((Strong + 24), *(Strong + 48));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26BE8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_89B8(result + 24, v1);

    sub_7738(v1, v1[3]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
    return sub_777C(v1);
  }

  return result;
}

uint64_t sub_26CB4()
{
  sub_25A24();

  return swift_deallocClassInstance();
}

void sub_26D0C(uint64_t a1@<X8>)
{
  if (*(v1 + 72) == 1)
  {
    v3 = *(v1 + 16);
    v4 = sub_53918();
    v5 = *(*(v4 - 8) + 64);
    __chkstk_darwin(v4 - 8);
    sub_4AC4(v3);
    v6 = sub_541F8();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = sub_26F64();
    v26[104] = v10 & 1;
    v26[96] = v14 & 1;
    v27[0] = v3;
    *&v28 = v6;
    *(&v28 + 1) = v8;
    v29 = v10 & 1;
    *&v30 = v12;
    *(&v30 + 1) = v13;
    v31 = v15;
    v32 = v14 & 1;
    v34 = 0;
    v33 = v16;
    v35 = 511;
    v36[0] = v3;
    v37 = v6;
    v38 = v8;
    v39 = v10 & 1;
    v40 = v12;
    v41 = v13;
    v42 = v15;
    v43 = v14 & 1;
    v45 = 0;
    v46 = 0;
    v44 = v16;
    v47 = 511;
    sub_F828(v27, v26);
    sub_F884(v36);
    v17 = v28;
    v18 = v30;
    v19 = v31;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v23 = v27[0] & 0x3F;
    v24 = v29 & 1;
    v25 = v32 | 0x4000000000000000;
  }

  else
  {
    v24 = 0;
    v19 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
    v3 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v20 = 0uLL;
    v23 = 0x3FFFFFFFC0;
  }

  *a1 = v3;
  *(a1 + 8) = v23;
  *(a1 + 16) = v17;
  *(a1 + 32) = v24;
  *(a1 + 40) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v25;
  *(a1 + 72) = v20;
  *(a1 + 88) = v21;
  *(a1 + 96) = v22;
}

__n128 sub_26ECC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_26D0C(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26F2C()
{
  result = sub_54638();
  qword_7BBD0 = result;
  return result;
}

uint64_t sub_26F64()
{
  v0 = sub_53CA8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_53C98();
  sub_53C68();

  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v3 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_27070()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_270A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_270E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_13F74;

  return sub_26A54(a1, v4, v5, v6, v7);
}

uint64_t sub_271AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_89B8(result + 24, v1);

    sub_7738(v1, v1[3]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
    return sub_777C(v1);
  }

  return result;
}

double sub_2729C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_53918();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_4AC4(v3);
  v6 = sub_541F8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_27478();
  v24[104] = v10 & 1;
  v24[96] = v14 & 1;
  v25[0] = v3;
  *&v26 = v6;
  *(&v26 + 1) = v8;
  v27 = v10 & 1;
  *&v28 = v12;
  *(&v28 + 1) = v13;
  v29 = v15;
  v30 = v14 & 1;
  v32 = 0;
  v31 = v16;
  v33 = 511;
  v34[0] = v3;
  v35 = v6;
  v36 = v8;
  v37 = v10 & 1;
  v38 = v12;
  v39 = v13;
  v40 = v15;
  v41 = v14 & 1;
  v43 = 0;
  v44 = 0;
  v42 = v16;
  v45 = 511;
  sub_F828(v25, v24);
  sub_F884(v34);
  v17 = v29;
  v18 = v32;
  v19 = v33;
  v20 = v25[0] & 0x3F;
  v21 = v27 & 1;
  v22 = v30 | 0x4000000000000000;
  *a1 = v3;
  *(a1 + 8) = v20;
  *(a1 + 16) = v26;
  *(a1 + 32) = v21;
  *(a1 + 40) = v28;
  *(a1 + 56) = v17;
  *(a1 + 64) = v22;
  result = *&v31;
  *(a1 + 72) = v31;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  return result;
}

__n128 sub_27418@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_2729C(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_27478()
{
  [objc_opt_self() isRecordActivityEnabled];
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v0 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_2756C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_89B8(result + 24, v1);

    sub_7738(v1, v1[3]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
    return sub_777C(v1);
  }

  return result;
}

double sub_2765C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_53918();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_4AC4(v3);
  v6 = sub_541F8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_27870();
  v24[104] = v10 & 1;
  v24[96] = v14 & 1;
  v25[0] = v3;
  *&v26 = v6;
  *(&v26 + 1) = v8;
  v27 = v10 & 1;
  *&v28 = v12;
  *(&v28 + 1) = v13;
  v29 = v15;
  v30 = v14 & 1;
  v32 = 0;
  v31 = v16;
  v33 = 511;
  v34[0] = v3;
  v35 = v6;
  v36 = v8;
  v37 = v10 & 1;
  v38 = v12;
  v39 = v13;
  v40 = v15;
  v41 = v14 & 1;
  v43 = 0;
  v44 = 0;
  v42 = v16;
  v45 = 511;
  sub_F828(v25, v24);
  sub_F884(v34);
  v17 = v29;
  v18 = v32;
  v19 = v33;
  v20 = v25[0] & 0x3F;
  v21 = v27 & 1;
  v22 = v30 | 0x4000000000000000;
  *a1 = v3;
  *(a1 + 8) = v20;
  *(a1 + 16) = v26;
  *(a1 + 32) = v21;
  *(a1 + 40) = v28;
  *(a1 + 56) = v17;
  *(a1 + 64) = v22;
  result = *&v31;
  *(a1 + 72) = v31;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  return result;
}

__n128 sub_277D8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_2765C(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_27838()
{
  result = sub_54638();
  qword_7BBD8 = result;
  return result;
}

uint64_t sub_27870()
{
  v0 = [objc_allocWithZone(CLLocationAccessRecorder) init];
  [v0 getLocationAccessRecordingIntervalState];

  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v1 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_27994(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_44BC(&qword_785D8, &unk_58100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_27A64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_44BC(&qword_785D8, &unk_58100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppleIntelligenceReportView()
{
  result = qword_78638;
  if (!qword_78638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27B60()
{
  sub_27C44(319, &qword_78648, type metadata accessor for AppleIntelligenceReportViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_27C44(319, &unk_78650, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27CC4()
{
  v7 = *v0;
  v8 = v0[1];
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();

  v1 = [objc_opt_self() sharedConnection];
  if (v1)
  {
    v2 = v1;
    v3 = sub_54638();
    v4 = [v2 effectiveBoolValueForSetting:v3];

    if (v4 == 2)
    {
      sub_54078();
      if (qword_76FD8 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  sub_54078();
  if (qword_76FD8 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v5 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_27ECC@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v52 = sub_53FE8();
  v51 = *(v52 - 8);
  v2 = *(v51 + 64);
  __chkstk_darwin(v52);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_44BC(&qword_78680, &qword_58180);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - v7;
  v9 = sub_44BC(&qword_78688, &qword_58188);
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v53 = sub_44BC(&qword_78690, &qword_58190);
  v49 = *(v53 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v53);
  v15 = &v47 - v14;
  v16 = sub_44BC(&qword_78698, &qword_58198);
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  __chkstk_darwin(v16);
  v58 = &v47 - v18;
  v56 = v1;
  v59 = v1;
  sub_44BC(&qword_786A0, &qword_581A0);
  sub_29F5C();
  sub_54198();
  v19 = sub_489C(&qword_786E0, &qword_78680, &qword_58180);
  sub_54218();
  (*(v5 + 8))(v8, v4);
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v20 = qword_7BBF8;
  v21 = qword_7BBF8;
  v47 = v20;
  v22 = v21;
  v23 = sub_541D8();
  v25 = v24;
  v27 = v26;
  v64 = v4;
  v65 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_542A8();
  sub_84F8(v23, v25, v27 & 1);

  (*(v48 + 8))(v12, v9);
  v29 = v51;
  v30 = v50;
  v31 = v52;
  (*(v51 + 104))(v50, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v52);
  v64 = v9;
  v65 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v32 = v53;
  sub_542E8();
  (*(v29 + 8))(v30, v31);
  (*(v49 + 8))(v15, v32);
  sub_54078();
  v52 = sub_541D8();
  v51 = v33;
  LODWORD(v49) = v34;
  v50 = v35;
  v36 = v56[1];
  v62 = *v56;
  v63 = v36;
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54378();
  v37 = v64;
  v38 = v65;
  v39 = v66;
  swift_getKeyPath();
  v64 = v37;
  v65 = v38;
  v66 = v39;
  sub_44BC(&qword_786F0, &qword_581F0);
  sub_543D8();

  v47 = &v47;
  v41 = __chkstk_darwin(v40);
  __chkstk_darwin(v41);
  sub_44BC(&qword_786F8, &qword_581F8);
  v60 = v32;
  v61 = v48;
  swift_getOpaqueTypeConformance2();
  sub_489C(&qword_78700, &qword_786F8, &qword_581F8);
  v42 = v55;
  LOBYTE(v30) = v49;
  v43 = v52;
  v44 = v51;
  v45 = v58;
  sub_54308();

  sub_84F8(v43, v44, v30 & 1);

  return (*(v54 + 8))(v45, v42);
}

uint64_t sub_2871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = type metadata accessor for AppleIntelligenceReportView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_44BC(&qword_786C8, &unk_581B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v22 - v8;
  v22[4] = a1;
  v10 = sub_27CC4();
  v12 = v11;
  v14 = v13;
  v22[0] = v15;
  KeyPath = swift_getKeyPath();
  sub_2A114(a1, v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_2A17C(v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = &v9[*(v6 + 36)];
  v20 = *(sub_44BC(&qword_786D8, &qword_5A280) + 28);
  sub_53E38();
  *v19 = KeyPath;
  *v9 = v10;
  *(v9 + 1) = v12;
  v9[16] = v14 & 1;
  *(v9 + 3) = v22[0];
  sub_44BC(&qword_786B8, &qword_581A8);
  sub_489C(&qword_786B0, &qword_786B8, &qword_581A8);
  sub_2A020();
  return sub_54428();
}

uint64_t sub_2896C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_44BC(&qword_78738, &qword_58280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v60 = &v54 - v5;
  v62 = sub_44BC(&qword_78740, &qword_58288);
  v6 = *(*(v62 - 8) + 64);
  v7 = __chkstk_darwin(v62);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v54 - v9;
  v59 = sub_44BC(&qword_78748, &qword_58290);
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  __chkstk_darwin(v59);
  v56 = &v54 - v11;
  v57 = sub_44BC(&qword_78750, &qword_58298);
  v12 = *(*(v57 - 8) + 64);
  v13 = __chkstk_darwin(v57);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v55 = &v54 - v16;
  __chkstk_darwin(v15);
  v61 = &v54 - v17;
  v18 = sub_54628();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_54618();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v20 = qword_7BBF8;
  v21 = sub_539F8();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = v20;
  sub_539E8();
  v75 = sub_54678();
  v76 = v24;
  v25 = a1[1];
  *&v67 = *a1;
  v26 = v67;
  *(&v67 + 1) = v25;
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54378();
  v27 = v70;
  v28 = v71;
  swift_getKeyPath();
  v73 = v27;
  v74 = v28;
  sub_44BC(&qword_786F0, &qword_581F0);
  sub_543D8();

  v54 = v70;
  v29 = v71;
  v30 = v72;

  v67 = v54;
  v68 = v29;
  v69 = v30;
  __chkstk_darwin(v31);
  v32 = v26;
  sub_44BC(&qword_78758, &qword_582A0);
  sub_2A4D4();
  sub_2A528();
  sub_A700();
  v33 = v56;
  sub_543C8();
  *&v70 = v26;
  *(&v70 + 1) = v25;
  sub_54358();

  v34 = [objc_opt_self() sharedConnection];
  if (v34)
  {
    v35 = v34;
    v36 = sub_54638();
    v37 = [v35 effectiveBoolValueForSetting:v36];

    v38 = v37 == 2;
  }

  else
  {
    v38 = 0;
  }

  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v41 = v55;
  (*(v58 + 32))(v55, v33, v59);
  v42 = (v41 + *(v57 + 36));
  *v42 = KeyPath;
  v42[1] = sub_2A678;
  v42[2] = v40;
  v43 = v61;
  sub_2A690(v41, v61);
  *&v70 = v32;
  *(&v70 + 1) = v25;
  sub_54358();
  sub_54078();
  sub_53E08();
  type metadata accessor for AppleIntelligenceReportViewModel();
  sub_2A700(&qword_78770);
  v44 = v64;
  sub_54448();
  *&v70 = v32;
  *(&v70 + 1) = v25;
  sub_54358();
  sub_2A970();
  LOBYTE(KeyPath) = v45;

  v46 = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = KeyPath & 1;
  v48 = v63;
  v49 = (v44 + *(v62 + 36));
  *v49 = v46;
  v49[1] = sub_2A96C;
  v49[2] = v47;
  sub_4790(v43, v48, &qword_78750, &qword_58298);
  v50 = v65;
  sub_4790(v44, v65, &qword_78740, &qword_58288);
  v51 = v66;
  sub_4790(v48, v66, &qword_78750, &qword_58298);
  v52 = sub_44BC(&qword_78778, &qword_582D8);
  sub_4790(v50, v51 + *(v52 + 48), &qword_78740, &qword_58288);
  sub_47F8(v44, &qword_78740, &qword_58288);
  sub_47F8(v43, &qword_78750, &qword_58298);
  sub_47F8(v50, &qword_78740, &qword_58288);
  return sub_47F8(v48, &qword_78750, &qword_58298);
}

uint64_t sub_291BC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();
  sub_2ABA8();

  sub_44BC(&qword_78780, &unk_582E0);
  sub_489C(&qword_78788, &qword_78780, &unk_582E0);
  sub_2A744();
  return sub_543F8();
}

uint64_t sub_292C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2AD9C(*a1, *(a1 + 8));
  sub_A700();
  result = sub_54208();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_29358(uint64_t a1, uint64_t a2)
{
  v3 = sub_54158();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_54638();
  v9 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v8];

  if (v9)
  {
    v10 = a2 + *(type metadata accessor for AppleIntelligenceReportView() + 20);
    v11 = sub_3E088(v7);
    __chkstk_darwin(v11);
    *(&v12 - 2) = v9;
    sub_54148();
    (*(v4 + 8))(v7, v3);
    sub_53E18();
  }

  else
  {

    static OpenURLAction.Result.discarded.getter();
  }
}

uint64_t sub_29514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A700(&qword_78730);
  sub_53A28();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_295D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_53FF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_44BC(&qword_78708, &qword_58200);
  return sub_29628(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_29628@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for AppleIntelligenceReportView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_44BC(&qword_78710, &qword_58208);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_44BC(&qword_78718, &unk_58210);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v34 = &v33 - v16;
  v17 = __chkstk_darwin(v15);
  v33 = &v33 - v18;
  __chkstk_darwin(v17);
  v20 = &v33 - v19;
  sub_53DB8();
  v21 = sub_53DC8();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  sub_2A114(a1, &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_2A17C(&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_54398();
  sub_2A114(a1, &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_2A17C(&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  v25 = v33;
  sub_543A8();
  v26 = v11[2];
  v27 = v34;
  v26(v34, v20, v10);
  v28 = v35;
  v26(v35, v25, v10);
  v29 = v36;
  v26(v36, v27, v10);
  v30 = sub_44BC(&qword_78728, &qword_58220);
  v26(&v29[*(v30 + 48)], v28, v10);
  v31 = v11[1];
  v31(v25, v10);
  v31(v20, v10);
  v31(v28, v10);
  return (v31)(v27, v10);
}

uint64_t sub_29A4C(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();
  if (*(v3 + 24) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2A700(&qword_78730);
    sub_53A18();
  }

  else
  {
    *(v3 + 24) = 0;
  }
}

uint64_t sub_29BA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();
  swift_getKeyPath();
  sub_2A700(&qword_78730);
  sub_53A18();
}

uint64_t sub_29CA4@<X0>(uint64_t a1@<X8>)
{
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v2 = qword_7BBF8;
  result = sub_541D8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_29D7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_54068();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_54058();
  v16._object = 0x800000000005DE10;
  v16._countAndFlagsBits = 0xD00000000000005ELL;
  sub_54048(v16);
  v14 = *a1;
  v15 = a1[1];
  sub_44BC(&qword_786E8, &qword_581C0);
  sub_54358();
  v6 = sub_2A970();
  v8 = v7;

  v17._countAndFlagsBits = sub_2AD9C(v6, v8 & 1);
  sub_54038(v17);

  v18._countAndFlagsBits = 0xD00000000000008FLL;
  v18._object = 0x800000000005DE70;
  sub_54048(v18);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v9 = qword_7BBF8;
  result = sub_541D8();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

unint64_t sub_29F5C()
{
  result = qword_786A8;
  if (!qword_786A8)
  {
    sub_4590(&qword_786A0, &qword_581A0);
    sub_489C(&qword_786B0, &qword_786B8, &qword_581A8);
    sub_2A020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_786A8);
  }

  return result;
}

unint64_t sub_2A020()
{
  result = qword_786C0;
  if (!qword_786C0)
  {
    sub_4590(&qword_786C8, &unk_581B0);
    sub_489C(&qword_786D0, &qword_786D8, &qword_5A280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_786C0);
  }

  return result;
}

uint64_t sub_2A114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A210(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppleIntelligenceReportView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2A2D8()
{
  v1 = (type metadata accessor for AppleIntelligenceReportView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  sub_44BC(&qword_78720, &unk_593A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_54158();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_2A3FC(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleIntelligenceReportView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_29358(a1, v4);
}

id sub_2A47C(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController:a1];

  return [v2 present];
}

unint64_t sub_2A4D4()
{
  result = qword_78760;
  if (!qword_78760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78760);
  }

  return result;
}

unint64_t sub_2A528()
{
  result = qword_78768;
  if (!qword_78768)
  {
    sub_4590(&qword_78758, &qword_582A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78768);
  }

  return result;
}

uint64_t sub_2A5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_53FA8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2A5D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_53FA8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2A690(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78750, &qword_58298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppleIntelligenceReportViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2A744()
{
  result = qword_78790;
  if (!qword_78790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78790);
  }

  return result;
}

uint64_t sub_2A798()
{
  sub_4590(&qword_78698, &qword_58198);
  sub_4590(&qword_786F8, &qword_581F8);
  sub_4590(&qword_78690, &qword_58190);
  sub_4590(&qword_78688, &qword_58188);
  sub_4590(&qword_78680, &qword_58180);
  sub_489C(&qword_786E0, &qword_78680, &qword_58180);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_489C(&qword_78700, &qword_786F8, &qword_581F8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2A970()
{
  swift_getKeyPath();
  sub_2A700(&qword_78730);
  sub_53A28();

  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = sub_54638();
    v3 = [v1 effectiveBoolValueForSetting:v2];

    if (v3 == 2)
    {
      return 0;
    }
  }

  sub_2B3E8();
  sub_53C78();
  v6 = v5;

  if (v6 > 0.0)
  {
    return *&v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AAB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_2A970();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_2AAE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_2A700(&qword_78730);
  sub_53A18();
}

char *sub_2ABA8()
{
  sub_53CA8();
  v0 = sub_53C48();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    sub_4DD2C(0, v1, 0);
    v3 = v2;
    v4 = &_swiftEmptyArrayStorage;
    v5 = *(&_swiftEmptyArrayStorage + 2);
    v6 = 16 * v5;
    v7 = 32;
    do
    {
      v8 = *(v3 + v7);
      if (v8 > 0.0)
      {
        v9 = *(v3 + v7);
      }

      else
      {
        v9 = 0;
      }

      v10 = *(&_swiftEmptyArrayStorage + 3);
      v11 = v5 + 1;
      if (v5 >= v10 >> 1)
      {
        sub_4DD2C((v10 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(&_swiftEmptyArrayStorage + 2) = v11;
      v12 = &_swiftEmptyArrayStorage + v6;
      *(v12 + 4) = v9;
      v12[40] = v8 <= 0.0;
      v6 += 16;
      v7 += 8;
      v5 = v11;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = &_swiftEmptyArrayStorage;
  }

  v13 = COERCE_DOUBLE(sub_2A970());
  v15 = *(&_swiftEmptyArrayStorage + 2);
  if (v15)
  {
    v16 = (&_swiftEmptyArrayStorage + 40);
    do
    {
      if (*v16)
      {
        if (v14)
        {
          goto LABEL_18;
        }
      }

      else if ((v14 & 1) == 0 && *(v16 - 1) == v13)
      {
LABEL_18:

        return v4;
      }

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  v17 = sub_2A970();
  v19 = v18;
  v20 = *(&_swiftEmptyArrayStorage + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v20 >= *(&_swiftEmptyArrayStorage + 3) >> 1)
  {
    v4 = sub_23B20(isUniquelyReferenced_nonNull_native, v20 + 1, 1, &_swiftEmptyArrayStorage);
  }

  sub_4E000(0, 0, 1, v17, v19 & 1);
  return v4;
}

uint64_t sub_2AD9C(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    return sub_538D8();
  }

  else
  {
    v3 = sub_54D38();
    v35 = v4;
    v36 = v3;
    v5 = sub_54D08();
    v37 = v29;
    v6 = *(v5 - 8);
    v33 = v5;
    v34 = v6;
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v32 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_44BC(&qword_788B8, &qword_584C0);
    v9 = *(sub_54CD8() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_582F0;
    sub_54CC8();
    sub_54CB8();
    sub_54CA8();
    sub_2C9C4(v12);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v30 = sub_54CF8();
    v31 = v29;
    v13 = *(v30 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v30);
    v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_54CE8();
    v17 = sub_54C78();
    v29[1] = v29;
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    __chkstk_darwin(v17);
    v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_54C68();
    v22 = sub_54C98();
    v29[0] = v29;
    v23 = *(v22 - 8);
    v24 = *(v23 + 64);
    __chkstk_darwin(v22);
    v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_54C88();
    v27 = v32;
    sub_537E8();

    (*(v23 + 8))(v26, v22);
    (*(v18 + 8))(v21, v17);
    (*(v13 + 8))(v16, v30);
    sub_2CCBC(&qword_788C0, &type metadata accessor for Duration.UnitsFormatStyle);
    v28 = v33;
    sub_54D18();
    (*(v34 + 8))(v27, v28);
    return v38;
  }
}

uint64_t sub_2B260()
{
  swift_getKeyPath();
  sub_2A700(&qword_78730);
  sub_53A28();

  return *(v0 + 24);
}

uint64_t sub_2B2EC(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2A700(&qword_78730);
    sub_53A18();
  }

  return result;
}

uint64_t sub_2B3E8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = sub_53CA8();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_53C98();
    v6 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

void sub_2B464(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() sharedConnection];
  if (!v6 || (v7 = v6, v8 = sub_54638(), v9 = [v7 effectiveBoolValueForSetting:v8], v8, v7, v7, v9 != 2))
  {
    v10 = COERCE_DOUBLE(sub_2A970());
    if (a3)
    {
      if ((v11 & 1) == 0)
      {
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          sub_2A700(&qword_78730);
          sub_53A18();
        }
      }
    }

    else if (v11)
    {
      sub_2B3E8();
      sub_54D38();
      sub_54D28();
      sub_53C88();

      v12 = [objc_opt_self() defaultCenter];
      if (qword_76FC0 != -1)
      {
        swift_once();
      }

      [v12 postNotificationName:qword_7BBD0 object:0];
    }

    else if (*&a2 != v10)
    {
      sub_2B3E8();
      sub_54D38();
      sub_54D28();
      sub_53C88();
    }
  }
}

void sub_2B6E4()
{
  sub_2B3E8();
  sub_53C88();

  v0 = [objc_opt_self() defaultCenter];
  if (qword_76FC0 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_7BBD0 object:0];
}

uint64_t sub_2B798()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings32AppleIntelligenceReportViewModel___observationRegistrar;
  v3 = sub_53A48();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleIntelligenceReportViewModel()
{
  result = qword_787C8;
  if (!qword_787C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B890()
{
  result = sub_53A48();
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

uint64_t sub_2B938@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_53BB8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_44BC(&qword_78868, &qword_58460);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = sub_44BC(&qword_78870, &qword_58468);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v33 = &v33 - v11;
  sub_53BA8();
  v12 = sub_2A700(&qword_78770);
  v34 = v1;
  v35 = v12;
  sub_53AC8();
  sub_489C(&qword_78878, &qword_78868, &qword_58460);
  sub_53AF8();
  (*(v5 + 8))(v8, v4);
  v13 = sub_44BC(&qword_78880, &qword_58478);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_44BC(&qword_78888, &qword_58480);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  sub_539A8();
  sub_2CCBC(&qword_78890, &type metadata accessor for URL);
  sub_53AD8();
  sub_489C(&qword_78898, &qword_78888, &qword_58480);
  sub_53AF8();
  (*(v19 + 8))(v22, v18);
  v23 = sub_44BC(&qword_788A0, &unk_58490);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v33 - v26;
  v28 = *(v25 + 48);
  v30 = v36;
  v29 = v37;
  v31 = v33;
  (*(v36 + 16))(&v33 - v26, v33, v37);
  (*(v14 + 16))(&v27[v28], v17, v13);
  sub_53B08();
  (*(v14 + 8))(v17, v13);
  return (*(v30 + 8))(v31, v29);
}

uint64_t sub_2BE44(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_2BE68, 0, 0);
}

uint64_t sub_2BE68()
{
  v1 = v0[3];
  v2 = sub_539A8();
  v0[4] = v2;
  v3 = *(v2 - 8);
  v0[5] = v3;
  v0[6] = *(v3 + 64);
  v0[7] = swift_task_alloc();
  v4 = NSTemporaryDirectory();
  sub_54668();

  sub_53938();

  v5 = swift_task_alloc();
  v0[8] = v5;
  sub_53968();
  v0[9] = sub_2B3E8();
  v6 = async function pointer to TransparencyReport.export(to:)[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2BFFC;

  return TransparencyReport.export(to:)(v5);
}

uint64_t sub_2BFFC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2C228;
  }

  else
  {
    v4 = sub_2C12C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2C12C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v0[6] + 15;
  swift_task_alloc();
  (*(v3 + 16))();
  sub_53AE8();
  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2C228()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[8], v2);
  v3(v1, v2);

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_2C2D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_2C2FC, 0, 0);
}

uint64_t sub_2C2FC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_539A8();
  v0[4] = v3;
  v4 = *(v3 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = NSTemporaryDirectory();
  sub_54668();

  sub_53938();

  sub_53968();
  v0[7] = sub_2B3E8();
  v7 = async function pointer to TransparencyReport.export(to:)[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_2C480;
  v9 = v0[2];

  return TransparencyReport.export(to:)(v9);
}

uint64_t sub_2C480()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2C630;
  }

  else
  {
    v4 = sub_2C5B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2C5B0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2C630()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[2], v2);
  v3(v1, v2);

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

Swift::Int sub_2C6D4(Swift::UInt64 a1, char a2)
{
  sub_54C28();
  if (a2)
  {
    sub_54C38(0);
  }

  else
  {
    sub_54C38(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    sub_54C48(v4);
  }

  return sub_54C58();
}

void sub_2C750()
{
  if (*(v0 + 8))
  {
    sub_54C38(0);
  }

  else
  {
    v1 = *v0;
    sub_54C38(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_54C48(v2);
  }
}

Swift::Int sub_2C7A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_54C28();
  if (v2)
  {
    sub_54C38(0);
  }

  else
  {
    sub_54C38(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    sub_54C48(v3);
  }

  return sub_54C58();
}

BOOL sub_2C80C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void sub_2C848(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

unint64_t sub_2C860()
{
  result = qword_78860;
  if (!qword_78860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78860);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AppleIntelligenceReportViewModel.SupportedDuration(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceReportViewModel.SupportedDuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppleIntelligenceReportViewModel.SupportedDuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2C934(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C950(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void *sub_2C9C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_44BC(&qword_788C8, &qword_584C8);
    v3 = sub_54A88();
    v37 = v3 + 56;
    result = sub_54CD8();
    v5 = result;
    v6 = 0;
    v7 = *(result - 1);
    v8 = *(v7 + 16);
    v35 = v7 + 16;
    v36 = v8;
    v30 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = (v7 + 8);
    v28 = v1;
    v29 = (v7 + 32);
    v10 = *(v7 + 64);
    v38 = *(v7 + 72);
    v34 = v10;
    while (1)
    {
      __chkstk_darwin(result);
      v33 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = &v27 - v33;
      v36(&v27 - v33);
      v13 = *(v3 + 40);
      sub_2CCBC(&qword_788D0, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v14 = sub_545E8();
      v15 = ~(-1 << *(v3 + 32));
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v37 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) != 0)
      {
        v31 = &v27;
        v32 = v6;
        v20 = v3;
        do
        {
          __chkstk_darwin(v14);
          v21 = &v27 - v33;
          (v36)(&v27 - v33, *(v20 + 48) + v16 * v38, v5);
          sub_2CCBC(&qword_788D8, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v22 = sub_54608();
          v23 = *v9;
          v14 = (*v9)(v21, v5);
          if (v22)
          {
            result = v23(v12, v5);
            v1 = v28;
            v3 = v20;
            v6 = v32;
            goto LABEL_4;
          }

          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v37 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while (((1 << v16) & v18) != 0);
        v1 = v28;
        v3 = v20;
        v6 = v32;
      }

      *(v37 + 8 * v17) = v19 | v18;
      result = (*v29)(*(v3 + 48) + v16 * v38, v12, v5);
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      if (++v6 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_2CCBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2CD04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_2A970();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

__n128 sub_2CD8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2CDA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_2CDF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2CE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v2 = v6;
  *a2 = v7;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
  sub_2D084(&v7, v5);
  return sub_2D0E0(&v6, v5);
}

uint64_t sub_2CEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 56);
  if (v5 == 255)
  {
    v6 = sub_5AD0(*a1);
    v7 = v9;
    v8 = v10;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;

  return sub_2D070(v3, v4, v5);
}

uint64_t sub_2CF60()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[9] = *(v0 + 41);
  sub_2D014();
  return sub_54338();
}

unint64_t sub_2D014()
{
  result = qword_788E0;
  if (!qword_788E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_788E0);
  }

  return result;
}

uint64_t sub_2D070(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_7C6C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2D0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_788E8, &qword_58F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2D154()
{
  result = qword_788F0;
  if (!qword_788F0)
  {
    sub_4590(&qword_788F8, &unk_586F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_788F0);
  }

  return result;
}

uint64_t sub_2D1C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2D224(v5, v7) & 1;
}

uint64_t sub_2D224(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a1[24];
  v7 = *(a1 + 4);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = a2[24];
  v11 = *(a2 + 4);
  if (sub_541B8())
  {
    v12 = a1[56];
    v13 = a2[56];
    if (v12 == 255)
    {
      if (v13 == 255)
      {
        return 1;
      }
    }

    else if (v13 != 255)
    {
      v15 = *(a1 + 5);
      v14 = *(a1 + 6);
      v17 = *(a2 + 5);
      v16 = *(a2 + 6);
      sub_7C6C(v17, v16, v13);
      LOBYTE(v14) = sub_3FB8(v15, v14, v12, v17, v16, v13);
      sub_7CAC(v17, v16, v13);
      if (v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 sub_2D318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2D33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_2D384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2D408@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_540A8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(sub_44BC(&qword_78910, &qword_58AB8) + 44);
  sub_44BC(&qword_78918, &unk_58AC0);
  sub_489C(&qword_78920, &qword_78918, &unk_58AC0);
  return sub_53DD8();
}

uint64_t sub_2D4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 24);
  sub_54178();
  v11 = sub_541C8();
  v13 = v12;
  LOBYTE(v8) = v14;
  v16 = v15;

  v21[0] = v3;
  v21[1] = v4;
  v22 = v10;
  v20 = v5;
  v19 = v10;
  v24 = v10 & 1;
  LOBYTE(v8) = v8 & 1;
  v23 = v8;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v8;
  *(a2 + 56) = v16;
  sub_2D084(v21, v18);
  sub_2D0E0(&v20, v18);
  sub_4088(v3, v4, v10 & 1);

  sub_4088(v11, v13, v8);

  sub_84F8(v11, v13, v8);

  sub_84F8(v3, v4, v19);
}

uint64_t sub_2D624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 88);
  if (v5 == 255)
  {
    v6 = sub_5AD0(*a1);
    v7 = v9;
    v8 = v10;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;

  return sub_2D070(v3, v4, v5);
}

uint64_t sub_2D6C4()
{
  v4 = v0[2];
  v5 = v0[3];
  *v6 = v0[4];
  *&v6[9] = *(v0 + 73);
  v2 = *v0;
  v3 = v0[1];
  sub_44BC(&qword_78900, &qword_58A80);
  sub_489C(&qword_78908, &qword_78900, &qword_58A80);
  sub_2D014();
  return sub_54338();
}

uint64_t sub_2D7CC@<X0>(void *a1@<X8>)
{
  result = sub_53F18();
  *a1 = v3;
  return result;
}

uint64_t sub_2D7F8@<X0>(void *a1@<X8>)
{
  result = sub_53F18();
  *a1 = v3;
  return result;
}

uint64_t sub_2D8D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2D93C(v7, v9) & 1;
}

uint64_t sub_2D93C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a1[24];
  v7 = *(a1 + 4);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = a2[24];
  v11 = *(a2 + 4);
  if (sub_541B8())
  {
    v12 = *(a1 + 5);
    v13 = *(a1 + 6);
    v14 = a1[56];
    v15 = *(a1 + 8);
    v16 = *(a2 + 5);
    v17 = *(a2 + 6);
    v18 = a2[56];
    v19 = *(a2 + 8);
    if (sub_541B8())
    {
      v20 = a1[88];
      v21 = a2[88];
      if (v20 == 255)
      {
        if (v21 == 255)
        {
          return 1;
        }
      }

      else if (v21 != 255)
      {
        v23 = *(a1 + 9);
        v22 = *(a1 + 10);
        v25 = *(a2 + 9);
        v24 = *(a2 + 10);
        sub_7C6C(v25, v24, v21);
        LOBYTE(v22) = sub_3FB8(v23, v22, v20, v25, v24, v21);
        sub_7CAC(v25, v24, v21);
        if (v22)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2DA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_2DA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v3 = *(a1 + 56);
  v6 = *(a1 + 64);
  v2 = v6;
  *a2 = v7;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
  sub_2D084(&v7, v5);
  return sub_2D0E0(&v6, v5);
}

uint64_t sub_2DBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 88);
  if (v5 == 255)
  {
    v6 = sub_5AD0(*a1);
    v7 = v9;
    v8 = v10;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;

  return sub_2D070(v3, v4, v5);
}

uint64_t sub_2DC98()
{
  v4 = v0[2];
  v5 = v0[3];
  *v6 = v0[4];
  *&v6[10] = *(v0 + 74);
  v2 = *v0;
  v3 = v0[1];
  sub_44BC(&qword_788F8, &unk_586F0);
  sub_2D154();
  return sub_53E68();
}

unint64_t sub_2DD7C()
{
  result = qword_78938;
  if (!qword_78938)
  {
    sub_4590(&qword_78940, &qword_58F08);
    sub_2D154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78938);
  }

  return result;
}

uint64_t sub_2DE18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 10) = *(a1 + 74);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 10) = *(a2 + 74);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2DE84(v7, v9) & 1;
}

uint64_t sub_2DE84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a1[24];
  v7 = *(a1 + 4);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = a2[24];
  v11 = *(a2 + 4);
  if ((sub_541B8() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 5);
  v13 = *(a1 + 6);
  v14 = a1[56];
  v15 = *(a1 + 8);
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v18 = a2[56];
  v19 = *(a2 + 8);
  if ((sub_541B8() & 1) == 0)
  {
    return 0;
  }

  v20 = a1[88];
  v21 = a2[88];
  if (v20 != 255)
  {
    if (v21 == 255)
    {
      return 0;
    }

    v22 = *(a1 + 9);
    v23 = *(a1 + 10);
    v24 = *(a2 + 9);
    v25 = *(a2 + 10);
    sub_7C6C(v24, v25, a2[88]);
    v26 = sub_3FB8(v22, v23, v20, v24, v25, v21);
    sub_7CAC(v24, v25, v21);
    if ((v26 & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v28 = a1[89];
    v29 = a2[89];
    if (v28 == 2)
    {
      if (v29 != 2)
      {
        return 0;
      }
    }

    else if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v21 == 255)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_2DFD0(char a1)
{
  if (!a1)
  {
    if (qword_76FD8 == -1)
    {
      return sub_538D8();
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_76FD8 == -1)
    {
      return sub_538D8();
    }

    goto LABEL_9;
  }

  if (qword_76FD8 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_538D8();
}

uint64_t sub_2E134()
{
  swift_getKeyPath();
  sub_30744(&qword_78A68);
  sub_53A28();

  return *(v0 + 16);
}

uint64_t sub_2E1C0(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68);
    sub_53A18();
  }

  return result;
}

uint64_t sub_2E2C4()
{
  swift_getKeyPath();
  sub_30744(&qword_78A68);
  sub_53A28();

  return *(v0 + 17);
}

uint64_t sub_2E350(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68);
    sub_53A18();
  }

  return result;
}

uint64_t sub_2E454()
{
  swift_getKeyPath();
  v4 = v0;
  sub_30744(&qword_78A68);
  sub_53A28();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_2E4F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_30744(&qword_78A68);
  sub_53A28();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_2E588(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (sub_54BD8() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68);
    sub_53A18();
  }
}

uint64_t sub_2E6D4()
{
  swift_getKeyPath();
  sub_30744(&qword_78A68);
  sub_53A28();

  v1 = [*(v0 + 24) getLocationAccessRecordingIntervalState];
  if (v1 == (&dword_4 + 3))
  {
    return 1;
  }

  else
  {
    return 2 * (v1 != &stru_68.reserved3);
  }
}

void sub_2E780(char a1, uint64_t a2)
{
  if (a1 == 1)
  {
    swift_getKeyPath();
    sub_30744(&qword_78A68);
    sub_53A28();

    if ([*(a2 + 24) getLocationAccessRecordingIntervalState] == &stru_68.reserved3)
    {
      if (*(a2 + 17) == 1)
      {
        *(a2 + 17) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_53A18();
      }

      return;
    }

    v3 = 7;
  }

  else
  {
    if (a1 == 2)
    {
      if (*(a2 + 16) == 1)
      {
        *(a2 + 16) = 1;
      }

      else
      {
        v4 = swift_getKeyPath();
        __chkstk_darwin(v4);
        aBlock[0] = a2;
        sub_30744(&qword_78A68);
        sub_53A18();
      }

      return;
    }

    v3 = 180;
  }

  v5 = *(a2 + 24);
  aBlock[4] = sub_2EAD4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2EAF4;
  aBlock[3] = &unk_6FDD0;
  v6 = _Block_copy(aBlock);
  v7 = v5;
  [v7 setLocationAccessRecordAsActiveForDays:v3 completionHandler:v6];
  _Block_release(v6);

  v8 = [objc_opt_self() defaultCenter];
  if (qword_76FC8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_7BBD8 object:0];
}

uint64_t sub_2EAF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_2EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  v9[4] = a2;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_2EAF4;
  v9[3] = a3;
  v6 = _Block_copy(v9);
  v7 = v5;
  [v7 setLocationAccessRecordAsActiveForDays:a4 completionHandler:v6];
  _Block_release(v6);

  v8 = [objc_opt_self() defaultCenter];
  if (qword_76FC8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_7BBD8 object:0];
}

void sub_2ED1C(char a1, uint64_t (*a2)(void), const char *a3)
{
  if (qword_76FF8 != -1)
  {
    swift_once();
  }

  v6 = sub_53C38();
  sub_7700(v6, qword_7BC48);
  oslog = sub_53C18();
  v7 = a2();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_0, oslog, v7, a3, v8, 8u);
  }
}

uint64_t sub_2EE28()
{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings25LocationAccessReportModel___observationRegistrar;
  v3 = sub_53A48();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationAccessReportModel()
{
  result = qword_78978;
  if (!qword_78978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2EF28()
{
  result = sub_53A48();
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

uint64_t sub_2EFF8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_53BB8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_44BC(&qword_78A20, &qword_591C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = sub_44BC(&qword_78A28, &qword_591D0);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  sub_53BA8();
  v13 = sub_30744(&qword_78A30);
  v34 = v1;
  v35 = v13;
  sub_53AC8();
  sub_489C(&qword_78A38, &qword_78A20, &qword_591C8);
  sub_53AF8();
  (*(v5 + 8))(v8, v4);
  v14 = sub_44BC(&qword_78A40, &qword_591E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = sub_44BC(&qword_78A48, &qword_591E8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v33 - v22;
  sub_539A8();
  sub_305E0();
  sub_53AD8();
  sub_489C(&qword_78A50, &qword_78A48, &qword_591E8);
  sub_53AF8();
  (*(v20 + 8))(v23, v19);
  v24 = sub_44BC(&qword_78A58, &qword_591F8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v33 - v27;
  v29 = *(v26 + 48);
  v31 = v36;
  v30 = v37;
  (*(v36 + 16))(&v33 - v27, v12, v37);
  (*(v15 + 16))(&v28[v29], v18, v14);
  sub_53B08();
  (*(v15 + 8))(v18, v14);
  return (*(v31 + 8))(v12, v30);
}

uint64_t sub_2F4E8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 176) = a1;
  *(v2 + 184) = v3;
  return _swift_task_switch(sub_2F50C, 0, 0);
}

uint64_t sub_2F50C()
{
  v1 = *(v0[23] + 24);
  v0[24] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2F630;
  v2 = swift_continuation_init();
  v0[17] = sub_44BC(&qword_78A60, &qword_59200);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_2FD00;
  v0[13] = &unk_6FCF0;
  v0[14] = v2;
  [v1 exportLocationAccessActivity:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_2F630()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_2F710, 0, 0);
}

uint64_t sub_2F710()
{
  v46 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[19];

  v4 = sub_539A8();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = NSTemporaryDirectory();
  sub_54668();

  sub_53938();

  v42 = v6;
  v43 = swift_task_alloc();
  sub_53968();
  v44 = [objc_opt_self() defaultManager];
  v8 = swift_task_alloc();
  swift_getKeyPath();
  v0[20] = v1;
  sub_30744(&qword_78A68);
  v9 = v8;
  sub_53A28();

  v10 = *(v1 + 32);
  v11 = *(v1 + 40);

  sub_53948();

  swift_getKeyPath();
  v0[21] = v1;
  sub_53A28();
  v12 = v44;

  v13 = *(v1 + 32);
  v14 = *(v1 + 40);

  v15 = sub_54638();

  LODWORD(v14) = [v44 fileExistsAtPath:v15];

  if (v14)
  {
    sub_53988();
    v16 = sub_54638();

    v17 = [v44 contentsAtPath:v16];

    if (v17)
    {
      v39 = sub_539C8();
      v19 = v18;
    }

    else
    {
      v39 = 0;
      v19 = 0xF000000000000000;
    }

    sub_53988();
    v20 = sub_54638();

    if (v19 >> 60 == 15)
    {
      v21 = 0;
    }

    else
    {
      sub_306AC(v39, v19);
      v21 = sub_539B8();
      sub_30644(v39, v19);
    }

    v22 = [v44 createFileAtPath:v20 contents:v21 attributes:0];

    if (v22)
    {
      v37 = v0;
      v38 = v8;
      if (qword_76FF8 != -1)
      {
        swift_once();
      }

      v23 = sub_53C38();
      sub_7700(v23, qword_7BC48);
      v24 = swift_task_alloc();
      (*(v40 + 16))(v24, v43, v41);
      v25 = sub_53C18();
      v26 = sub_54828();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v45 = v36;
        *v27 = 136315138;
        v28 = sub_53988();
        v30 = v29;
        (*(v40 + 8))(v24, v41);
        v31 = sub_18710(v28, v30, &v45);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_0, v25, v26, "File created at: %s", v27, 0xCu);
        sub_777C(v36);

        sub_30644(v39, v19);
      }

      else
      {
        sub_30644(v39, v19);

        (*(v40 + 8))(v24, v41);
      }

      v0 = v37;
      v9 = v38;
    }

    else
    {
      sub_30644(v39, v19);
    }

    v12 = v44;
  }

  v32 = v0[22];
  swift_task_alloc();
  (*(v40 + 16))();
  sub_53AE8();

  v33 = *(v40 + 8);
  v33(v9, v41);
  v33(v43, v41);
  v33(v42, v41);

  v34 = v0[1];

  return v34();
}

uint64_t sub_2FD00(uint64_t a1)
{
  v1 = *sub_7738((a1 + 32), *(a1 + 56));
  v2 = sub_54668();
  v3 = *(*(v1 + 64) + 40);
  *v3 = v2;
  v3[1] = v4;

  return _swift_continuation_resume(v1);
}

uint64_t sub_2FD68(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 160) = a1;
  *(v2 + 168) = v3;
  return _swift_task_switch(sub_2FD8C, 0, 0);
}

uint64_t sub_2FD8C()
{
  v1 = *(v0[21] + 24);
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2FEB0;
  v2 = swift_continuation_init();
  v0[17] = sub_44BC(&qword_78A60, &qword_59200);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_2FD00;
  v0[13] = &unk_6FCC8;
  v0[14] = v2;
  [v1 exportLocationAccessActivity:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_2FEB0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_2FF90, 0, 0);
}

uint64_t sub_2FF90()
{
  v52 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v5 = v0 + 19;
  v4 = v0[19];
  v3 = v5[1];

  v6 = sub_539A8();
  v7 = *(v6 - 8);
  v49 = *(v7 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = NSTemporaryDirectory();
  sub_54668();

  sub_53938();

  sub_53968();
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_54638();
  LODWORD(v9) = [v10 fileExistsAtPath:v11];

  if (v9)
  {
    v48 = v7;
    v12 = sub_54638();
    v13 = [v10 isReadableFileAtPath:v12];

    if ((v13 & 1) == 0)
    {
      if (qword_76FF8 != -1)
      {
        swift_once();
      }

      v14 = sub_53C38();
      sub_7700(v14, qword_7BC48);

      v15 = sub_53C18();
      v16 = sub_54828();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = v8;
        v19 = swift_slowAlloc();
        v51 = v19;
        *v17 = 136315138;
        *(v17 + 4) = sub_18710(v2, v4, &v51);
        _os_log_impl(&dword_0, v15, v16, "#CLLA File is not accessibile: %s", v17, 0xCu);
        sub_777C(v19);
        v8 = v18;
      }
    }

    v20 = sub_54638();

    v21 = [v10 contentsAtPath:v20];

    if (v21)
    {
      v22 = sub_539C8();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xF000000000000000;
    }

    v26 = v6;
    v25 = v50;
    v27 = *(v50 + 160);
    sub_53988();
    v28 = sub_54638();

    if (v24 >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      sub_306AC(v22, v24);
      v29 = sub_539B8();
      sub_30644(v22, v24);
    }

    v30 = [v10 createFileAtPath:v28 contents:v29 attributes:0];

    if (v30)
    {
      if (qword_76FF8 != -1)
      {
        swift_once();
      }

      v31 = *(v50 + 160);
      v32 = sub_53C38();
      sub_7700(v32, qword_7BC48);
      v33 = swift_task_alloc();
      (*(v48 + 16))(v33, v31, v26);
      v34 = sub_53C18();
      v35 = sub_54828();
      if (os_log_type_enabled(v34, v35))
      {
        log = v34;
        v36 = v33;
        v37 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v51 = v46;
        *v37 = 136315138;
        v45 = sub_53988();
        v39 = v38;
        v40 = *(v48 + 8);
        v40(v36, v26);
        v41 = sub_18710(v45, v39, &v51);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_0, log, v35, "File created at: %s", v37, 0xCu);
        sub_777C(v46);

        sub_30644(v22, v24);
        v40(v8, v26);
      }

      else
      {

        sub_30644(v22, v24);
        v42 = *(v48 + 8);
        v42(v33, v26);
        v42(v8, v26);
      }
    }

    else
    {
      (*(v48 + 8))(v8, v6);
      sub_30644(v22, v24);
    }
  }

  else
  {
    (*(v7 + 8))(v8, v6);

    v25 = v50;
  }

  v43 = *(v25 + 8);

  return v43();
}

unint64_t sub_305E0()
{
  result = qword_78890;
  if (!qword_78890)
  {
    sub_539A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78890);
  }

  return result;
}

uint64_t sub_30644(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_30658(a1, a2);
  }

  return a1;
}

uint64_t sub_30658(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_306AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_30704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2E588(v2, v3);
}

uint64_t sub_30744(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationAccessReportModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_30788()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for LocationAccessReportModel.SupportedStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationAccessReportModel.SupportedStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_309A4()
{
  result = qword_78A90;
  if (!qword_78A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78A90);
  }

  return result;
}

uint64_t sub_309F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_30A90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_30744(&qword_78A68);
  sub_53A28();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_30B4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_30744(&qword_78A68);
  sub_53A28();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_30C08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2E6D4();
  *a2 = result;
  return result;
}

uint64_t sub_30C34(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_30744(&qword_78A68);
  sub_53A18();
}

uint64_t sub_30CF0@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v70 = sub_53FE8();
  v69 = *(v70 - 8);
  v2 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_44BC(&qword_78B40, &qword_59420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v60[-v7];
  v9 = sub_44BC(&qword_78B48, &qword_59428);
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v12 = &v60[-v11];
  v71 = sub_44BC(&qword_78B50, &qword_59430);
  v67 = *(v71 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v71);
  v15 = &v60[-v14];
  v73 = sub_44BC(&qword_78B58, &qword_59438);
  v72 = *(v73 - 8);
  v16 = *(v72 + 64);
  __chkstk_darwin(v73);
  v77 = &v60[-v17];
  v75 = sub_44BC(&qword_78B60, &qword_59440);
  v74 = *(v75 - 8);
  v18 = *(v74 + 64);
  __chkstk_darwin(v75);
  v78 = &v60[-v19];
  v79 = v1;
  v80 = v1;
  sub_44BC(&qword_78B68, &qword_59448);
  sub_33ACC();
  sub_54198();
  v20 = sub_489C(&qword_78B98, &qword_78B40, &qword_59420);
  v65 = v12;
  sub_54218();
  (*(v5 + 8))(v8, v4);
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v21 = qword_7BBF8;
  v22 = qword_7BBF8;
  v64 = v21;
  v23 = sub_541D8();
  v25 = v24;
  v27 = v26;
  v81 = v4;
  v82 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v65;
  sub_542A8();
  sub_84F8(v23, v25, v27 & 1);

  (*(v66 + 8))(v29, v9);
  v30 = v69;
  v31 = v68;
  v32 = v70;
  (*(v69 + 104))(v68, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v70);
  v81 = v9;
  v82 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v71;
  sub_542E8();
  (*(v30 + 8))(v31, v32);
  (*(v67 + 8))(v15, v34);
  sub_54078();
  v65 = sub_541D8();
  v63 = v35;
  v61 = v36;
  v62 = v37;
  v38 = v79[1];
  v70 = *v79;
  v69 = v38;
  v89 = v70;
  v90 = v38;
  v68 = sub_44BC(&qword_78BA0, &qword_59460);
  sub_54378();
  v39 = v81;
  v40 = v82;
  v41 = v83;
  swift_getKeyPath();
  v81 = v39;
  v82 = v40;
  v83 = v41;
  v67 = sub_44BC(&qword_78BA8, &qword_59490);
  sub_543D8();

  __chkstk_darwin(v42);
  v66 = sub_44BC(&qword_78BB0, &qword_59498);
  v87 = v34;
  v88 = v33;
  v71 = swift_getOpaqueTypeConformance2();
  v43 = sub_489C(&qword_78BB8, &qword_78BB0, &qword_59498);
  v44 = v73;
  LOBYTE(v33) = v61;
  v45 = v65;
  v46 = v63;
  v47 = v77;
  sub_54308();

  sub_84F8(v45, v46, v33 & 1);

  (*(v72 + 8))(v47, v44);
  sub_54078();
  v77 = sub_541D8();
  v72 = v48;
  LOBYTE(v33) = v49;
  v65 = v50;
  v89 = v70;
  v90 = v69;
  sub_54378();
  v52 = v81;
  v51 = v82;
  v53 = v83;
  swift_getKeyPath();
  v89 = v52;
  v90 = v51;
  v91 = v53;
  sub_543D8();

  __chkstk_darwin(v54);
  v81 = v44;
  v82 = v66;
  v83 = &type metadata for Text;
  v84 = v71;
  v85 = v43;
  v86 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v55 = v75;
  v56 = v77;
  v57 = v72;
  v58 = v78;
  sub_54308();

  sub_84F8(v56, v57, v33 & 1);

  return (*(v74 + 8))(v58, v55);
}

uint64_t sub_31840(__int128 *a1)
{
  sub_3225C(a1, v2);
  sub_44BC(&qword_78B80, &qword_59450);
  sub_44BC(&qword_78B90, &qword_59458);
  sub_489C(&qword_78B78, &qword_78B80, &qword_59450);
  sub_33B90();
  return sub_54428();
}

uint64_t sub_31920@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = sub_44BC(&qword_78738, &qword_58280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54[1] = v54 - v5;
  v63 = sub_44BC(&qword_78BE0, &qword_59510);
  v61 = *(v63 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v63);
  v59 = v54 - v7;
  v57 = sub_44BC(&qword_78BE8, &qword_59518);
  v8 = *(*(v57 - 8) + 64);
  v9 = __chkstk_darwin(v57);
  v64 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v56 = v54 - v12;
  __chkstk_darwin(v11);
  v60 = v54 - v13;
  v62 = sub_44BC(&qword_78BF0, &qword_59520);
  v55 = *(v62 - 8);
  v14 = *(v55 + 64);
  v15 = __chkstk_darwin(v62);
  v58 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v54 - v17;
  v19 = sub_54628();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v54[0] = "Wired Accessories";
  sub_54618();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v21 = qword_7BBF8;
  v22 = sub_539F8();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = v21;
  sub_539E8();
  v75 = sub_54678();
  v76 = v25;
  v26 = a1[1];
  v69 = *a1;
  v27 = v69;
  v70 = v26;
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54378();
  v28 = v72;
  v29 = v73;
  v30 = v74;
  swift_getKeyPath();
  v72 = v28;
  v73 = v29;
  v74 = v30;
  sub_44BC(&qword_78BA8, &qword_59490);
  sub_543D8();

  v31 = v69;
  v32 = v70;
  v33 = v71;

  v66 = v31;
  v67 = v32;
  v68 = v33;
  sub_44BC(&qword_78BF8, &qword_59528);
  sub_340D8();
  sub_3412C();
  sub_A700();
  sub_543C8();
  v72 = v27;
  v73 = v26;
  sub_54358();
  sub_54078();
  sub_53E08();
  type metadata accessor for LocationAccessReportModel();
  sub_30744(&qword_78A30);
  v34 = v59;
  sub_54448();
  v72 = v27;
  v73 = v26;
  sub_54358();
  v35 = v69;
  swift_getKeyPath();
  v72 = v35;
  sub_30744(&qword_78A68);
  sub_53A28();

  v36 = *(v35 + 24);
  v37 = [v36 getLocationAccessRecordingIntervalState];

  v39 = v37 != (&dword_4 + 3) && v37 != &stru_68.reserved3;
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  v42 = v56;
  (*(v61 + 32))(v56, v34, v63);
  v43 = (v42 + *(v57 + 36));
  *v43 = KeyPath;
  v43[1] = sub_34208;
  v43[2] = v41;
  v44 = v60;
  sub_34210(v42, v60);
  v45 = v55;
  v46 = *(v55 + 16);
  v47 = v58;
  v48 = v62;
  v46(v58, v18, v62);
  v49 = v64;
  sub_34280(v44, v64);
  v50 = v65;
  v46(v65, v47, v48);
  v51 = sub_44BC(&qword_78C10, &unk_59560);
  sub_34280(v49, &v50[*(v51 + 48)]);
  sub_342F0(v44);
  v52 = *(v45 + 8);
  v52(v18, v48);
  sub_342F0(v49);
  return (v52)(v47, v48);
}

uint64_t sub_320B4()
{
  swift_getKeyPath();
  sub_44BC(&qword_78A88, qword_59248);
  sub_44BC(&qword_78C18, &unk_59590);
  sub_489C(&qword_78C20, &qword_78A88, qword_59248);
  sub_340D8();
  swift_getOpaqueTypeConformance2();
  return sub_543E8();
}

uint64_t sub_321F0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2DFD0(*a1);
  sub_A700();
  result = sub_54208();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

double sub_3225C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54358();
  swift_getKeyPath();
  *&v8 = v7;
  sub_30744(&qword_78A68);
  sub_53A28();

  v3 = *(*&v7 + 24);
  v4 = [v3 getLocationAccessRecordingIntervalState];

  if (v4 == (&dword_4 + 3) || v4 == &stru_68.reserved3)
  {
    sub_54078();
    if (qword_76FD8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_54078();
  if (qword_76FD8 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v5 = qword_7BBF8;
  sub_541D8();
  sub_540D8();
  result = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_324EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = sub_53EF8();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_44BC(&qword_78BC8, &qword_594D0);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  v8 = __chkstk_darwin(v6);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v45 - v10;
  v11 = type metadata accessor for LocationAccessReportView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = sub_44BC(&qword_78710, &qword_58208);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v45 - v16;
  v48 = sub_44BC(&qword_78718, &unk_58210);
  v56 = *(v48 - 8);
  v18 = *(v56 + 64);
  v19 = __chkstk_darwin(v48);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v45 - v22;
  sub_53DB8();
  v24 = sub_53DC8();
  (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
  sub_33CC4(a1, &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = swift_allocObject();
  sub_33D2C(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v46 = v23;
  sub_54398();
  sub_33CC4(a1, &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_33D2C(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v25);
  v28 = v21;
  sub_543A8();
  v29 = v47;
  sub_53EE8();
  sub_489C(&qword_78BD0, &qword_78718, &unk_58210);
  v30 = v55;
  v31 = v48;
  sub_542B8();
  (*(v49 + 8))(v29, v50);
  v32 = v56;
  v50 = *(v56 + 8);
  v50(v28, v31);
  v33 = *(v32 + 16);
  v56 = v32 + 16;
  v45 = v28;
  v34 = v23;
  v35 = v31;
  v33(v28, v34, v31);
  v37 = v51;
  v36 = v52;
  v38 = *(v52 + 16);
  v39 = v53;
  v38(v51, v30, v53);
  v40 = v54;
  v33(v54, v28, v35);
  v41 = sub_44BC(&qword_78BD8, &qword_594D8);
  v38(&v40[*(v41 + 48)], v37, v39);
  v42 = *(v36 + 8);
  v42(v55, v39);
  v43 = v50;
  v50(v46, v35);
  v42(v37, v39);
  return v43(v45, v35);
}

uint64_t sub_32A9C(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54358();
  if (*(v3 + 16) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68);
    sub_53A18();
  }

  else
  {
    *(v3 + 16) = 0;
  }
}

uint64_t sub_32BD0@<X0>(uint64_t a1@<X8>)
{
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v2 = qword_7BBF8;
  result = sub_541D8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_32CB8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_54098();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = a3 + *(sub_44BC(&qword_78BC0, &qword_594C8) + 44);
  return a2(a1);
}

uint64_t sub_32D20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = sub_53EF8();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_44BC(&qword_78BC8, &qword_594D0);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  v8 = __chkstk_darwin(v6);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v45 - v10;
  v11 = type metadata accessor for LocationAccessReportView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = sub_44BC(&qword_78710, &qword_58208);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v45 - v16;
  v48 = sub_44BC(&qword_78718, &unk_58210);
  v56 = *(v48 - 8);
  v18 = *(v56 + 64);
  v19 = __chkstk_darwin(v48);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v45 - v22;
  sub_53DB8();
  v24 = sub_53DC8();
  (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
  sub_33CC4(a1, &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = swift_allocObject();
  sub_33D2C(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v46 = v23;
  sub_54398();
  sub_33CC4(a1, &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_33D2C(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v25);
  v28 = v21;
  sub_543A8();
  v29 = v47;
  sub_53EE8();
  sub_489C(&qword_78BD0, &qword_78718, &unk_58210);
  v30 = v55;
  v31 = v48;
  sub_542B8();
  (*(v49 + 8))(v29, v50);
  v32 = v56;
  v50 = *(v56 + 8);
  v50(v28, v31);
  v33 = *(v32 + 16);
  v56 = v32 + 16;
  v45 = v28;
  v34 = v23;
  v35 = v31;
  v33(v28, v34, v31);
  v37 = v51;
  v36 = v52;
  v38 = *(v52 + 16);
  v39 = v53;
  v38(v51, v30, v53);
  v40 = v54;
  v33(v54, v28, v35);
  v41 = sub_44BC(&qword_78BD8, &qword_594D8);
  v38(&v40[*(v41 + 48)], v37, v39);
  v42 = *(v36 + 8);
  v42(v55, v39);
  v43 = v50;
  v50(v46, v35);
  v42(v37, v39);
  return v43(v45, v35);
}

uint64_t sub_332D0(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54358();
  if (*(v3 + 17) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_30744(&qword_78A68);
    sub_53A18();
  }

  else
  {
    *(v3 + 17) = 0;
  }
}

uint64_t sub_33404(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_44BC(&qword_78BA0, &qword_59460);
  sub_54358();
  swift_getKeyPath();
  sub_30744(&qword_78A68);
  sub_53A18();
}

uint64_t sub_33510@<X0>(uint64_t a1@<X8>)
{
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v2 = qword_7BBF8;
  result = sub_541D8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_335F8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LocationAccessReportModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = [objc_allocWithZone(CLLocationAccessRecorder) init];
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_53A38();
  sub_54348();
  *a1 = v10;
  a1[1] = v11;
  v6 = type metadata accessor for LocationAccessReportView();
  v7 = *(v6 + 20);
  *(a1 + v7) = swift_getKeyPath();
  sub_44BC(&qword_78720, &unk_593A0);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + *(v6 + 24);
  result = sub_54348();
  *v8 = v10;
  *(v8 + 1) = v11;
  return result;
}

uint64_t type metadata accessor for LocationAccessReportView()
{
  result = qword_78AF0;
  if (!qword_78AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_33778(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_44BC(&qword_785D8, &unk_58100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_33848(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_44BC(&qword_785D8, &unk_58100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_338F8()
{
  sub_339F4(319, &qword_78B00, type metadata accessor for LocationAccessReportModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_339F4(319, &unk_78650, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_33A58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_339F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_33A58()
{
  if (!qword_78B08)
  {
    v0 = sub_54388();
    if (!v1)
    {
      atomic_store(v0, &qword_78B08);
    }
  }
}

unint64_t sub_33ACC()
{
  result = qword_78B70;
  if (!qword_78B70)
  {
    sub_4590(&qword_78B68, &qword_59448);
    sub_489C(&qword_78B78, &qword_78B80, &qword_59450);
    sub_33B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78B70);
  }

  return result;
}

unint64_t sub_33B90()
{
  result = qword_78B88;
  if (!qword_78B88)
  {
    sub_4590(&qword_78B90, &qword_59458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78B88);
  }

  return result;
}

uint64_t sub_33CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationAccessReportView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_33D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationAccessReportView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_33DC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2E6D4();
  *a2 = result;
  return result;
}

uint64_t sub_33E64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LocationAccessReportView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_33ED8()
{
  v1 = type metadata accessor for LocationAccessReportView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v1 + 20);
  sub_44BC(&qword_78720, &unk_593A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_54158();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v5 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_340D8()
{
  result = qword_78C00;
  if (!qword_78C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78C00);
  }

  return result;
}

unint64_t sub_3412C()
{
  result = qword_78C08;
  if (!qword_78C08)
  {
    sub_4590(&qword_78BF8, &qword_59528);
    sub_340D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78C08);
  }

  return result;
}

uint64_t sub_34210(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78BE8, &qword_59518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_34280(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78BE8, &qword_59518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_342F0(uint64_t a1)
{
  v2 = sub_44BC(&qword_78BE8, &qword_59518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_34358()
{
  sub_4590(&qword_78B60, &qword_59440);
  sub_4590(&qword_78BB0, &qword_59498);
  sub_4590(&qword_78B58, &qword_59438);
  sub_4590(&qword_78B50, &qword_59430);
  sub_4590(&qword_78B48, &qword_59428);
  sub_4590(&qword_78B40, &qword_59420);
  sub_489C(&qword_78B98, &qword_78B40, &qword_59420);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_489C(&qword_78BB8, &qword_78BB0, &qword_59498);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3456C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  sub_365C8(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  *a5 = sub_53DF8();
  *(a5 + 8) = v10 & 1;
  v11 = type metadata accessor for AppProtectionNavigationLink();
  v12 = v11[9];
  *(a5 + v12) = swift_getKeyPath();
  sub_44BC(&qword_78C30, &qword_595D0);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + v11[10];
  result = sub_54348();
  *v13 = v16;
  *(v13 + 8) = v17;
  *(a5 + v11[11]) = a1;
  *(a5 + v11[12]) = a2;
  v15 = (a5 + v11[13]);
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t sub_346D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v4 = sub_547D8();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  __chkstk_darwin(v4);
  v82 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_44BC(&qword_78CE0, &unk_59660);
  v86 = v7;
  v78 = *(v7 - 8);
  v8 = *(v78 + 64);
  v9 = __chkstk_darwin(v7);
  v75 = &v59 - v10;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v65 = v13;
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v70 = *(a1 + 16);
  v69 = v15;
  v16 = sub_543B8();
  v67 = v16;
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  __chkstk_darwin(v16);
  v71 = &v59 - v18;
  WitnessTable = swift_getWitnessTable();
  v68 = WitnessTable;
  v87 = sub_489C(&qword_78CE8, &qword_78CE0, &unk_59660);
  v94 = v16;
  v95 = v7;
  v96 = WitnessTable;
  v97 = v87;
  v76 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v79 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v88 = &v59 - v21;
  sub_4590(&qword_78CF0, &unk_59780);
  v80 = sub_53EB8();
  v81 = *(v80 - 8);
  v22 = *(v81 + 64);
  v23 = __chkstk_darwin(v80);
  v72 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v77 = &v59 - v25;
  v26 = *(v11 + 16);
  v64 = v11 + 16;
  v66 = v26;
  v27 = v14;
  v61 = v14;
  v59 = v2;
  v60 = a1;
  v26(v14, v2, a1);
  v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v29 = swift_allocObject();
  v30 = v70;
  v31 = v69;
  *(v29 + 16) = v70;
  *(v29 + 24) = v31;
  v32 = *(v11 + 32);
  v62 = v11 + 32;
  v63 = v32;
  v33 = v28;
  v32(v29 + v28, v27, a1);
  v89 = v30;
  v90 = v31;
  v34 = v30;
  v35 = v31;
  v91 = v2;
  v36 = v71;
  sub_543A8();
  v37 = v75;
  sub_540F8();
  v38 = v67;
  v39 = v86;
  v40 = v68;
  sub_54268();
  (*(v78 + 8))(v37, v39);
  (*(v74 + 8))(v36, v38);
  v41 = v60;
  v42 = v59;
  v43 = (v59 + *(v60 + 40));
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v94) = v44;
  v95 = v45;
  sub_44BC(&qword_78CF8, &qword_59670);
  sub_54358();
  v46 = v61;
  v66(v61, v42, v41);
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  *(v47 + 24) = v35;
  v63(v47 + v33, v46, v41);
  v94 = v38;
  v95 = v86;
  v96 = v40;
  v97 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v82;
  v50 = OpaqueTypeMetadata2;
  sub_36894();
  v51 = v72;
  v52 = v88;
  sub_542F8();

  (*(v83 + 8))(v49, v84);
  (*(v79 + 8))(v52, v50);
  v53 = sub_489C(&qword_78D00, &qword_78CF0, &unk_59780);
  v92 = OpaqueTypeConformance2;
  v93 = v53;
  v54 = v80;
  v55 = swift_getWitnessTable();
  v56 = v77;
  sub_3AE9C(v51, v54, v55);
  v57 = *(v81 + 8);
  v57(v51, v54);
  sub_3AE9C(v56, v54, v55);
  return (v57)(v56, v54);
}

uint64_t sub_34F08(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AppProtectionNavigationLink() + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_44BC(&qword_78CF8, &qword_59670);
  result = sub_54358();
  if ((v5 & 1) == 0)
  {
    return sub_54368();
  }

  return result;
}

uint64_t sub_34FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = a1 + *(type metadata accessor for AppProtectionNavigationLink() + 52);
  v14 = *(v13 + 8);
  (*v13)();
  sub_3AE9C(v10, a2, a3);
  v15 = *(v6 + 8);
  v15(v10, a2);
  sub_3AE9C(v12, a2, a3);
  return (v15)(v12, a2);
}

uint64_t sub_350EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = type metadata accessor for AppProtectionNavigationLink();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();
  v7 = sub_54528();
  v3[33] = v7;
  v8 = *(v7 - 8);
  v3[34] = v8;
  v9 = *(v8 + 64) + 15;
  v3[35] = swift_task_alloc();
  v10 = sub_53FD8();
  v3[36] = v10;
  v11 = *(v10 - 8);
  v3[37] = v11;
  v12 = *(v11 + 64) + 15;
  v3[38] = swift_task_alloc();
  sub_547A8();
  v3[39] = sub_54798();
  v14 = sub_54788();
  v3[40] = v14;
  v3[41] = v13;

  return _swift_task_switch(sub_3529C, v14, v13);
}

uint64_t sub_3529C()
{
  v1 = (*(v0 + 216) + *(*(v0 + 240) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  sub_44BC(&qword_78CF8, &qword_59670);
  sub_54358();
  if (*(v0 + 352) == 1)
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = [objc_opt_self() sharedGuard];
    *(v0 + 336) = v6;
    v7 = *(v5 + *(v4 + 48));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 353;
    *(v0 + 24) = sub_354A0;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_44BC(&qword_78D08, &unk_597A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_367C8;
    *(v0 + 104) = &unk_6FF90;
    *(v0 + 112) = v8;
    [v6 authenticateForSubject:v7 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 312);

    v10 = *(v0 + 304);
    v11 = *(v0 + 280);
    v12 = *(v0 + 256);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_354A0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 328);
  v5 = *(v1 + 320);
  if (v3)
  {
    v6 = sub_35888;
  }

  else
  {
    v6 = sub_355D0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_355D0()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];

  sub_35BA8(v5, v0 + 18);
  v6 = *v5;
  LOBYTE(v4) = *(v5 + 8);

  if ((v4 & 1) == 0)
  {
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];
    sub_54818();
    v10 = sub_54168();
    sub_53C08();

    sub_53FC8();
    swift_getAtKeyPath();

    (*(v8 + 8))(v7, v9);
    v6 = v0[25];
  }

  v11 = *(v0[27] + *(v0[30] + 44));
  v12 = *(v6 + 16);
  if (v12 != 45 && v12 == v11)
  {
    *(v6 + 16) = v11;
  }

  else
  {
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v6;
    *(v14 + 24) = v11;
    v0[26] = v6;
    sub_365C8(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
    sub_53A18();
  }

  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[27];
  v20 = v0[22];
  sub_7738(v0 + 18, v0[21]);
  v21 = v19 + *(v18 + 36);
  sub_3E0B0(v15);
  sub_54518();
  (*(v16 + 8))(v15, v17);
  sub_777C(v0 + 18);
  v22 = v0[28];
  v23 = v0[29];
  sub_35B38(v0[27]);
  v24 = v0[38];
  v25 = v0[35];
  v26 = v0[32];

  v27 = v0[1];

  return v27();
}

uint64_t sub_35888()
{
  v33 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[39];

  swift_willThrow();

  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v4 = v0[43];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[27];
  v9 = sub_53C38();
  sub_7700(v9, qword_7BC18);
  (*(v6 + 16))(v5, v8, v7);
  swift_errorRetain();
  v10 = sub_53C18();
  v11 = sub_54808();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[31];
  v14 = v0[32];
  v15 = v0[30];
  if (v12)
  {
    v31 = v0[43];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315394;
    v19 = *(v14 + *(v15 + 44));
    (*(v13 + 8))(v14, v15);
    v20 = sub_6E88(v19);
    v22 = sub_18710(v20, v21, &v32);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_0, v10, v11, "An error occurred while authenticating for item '%s' via AppProtection: %@", v16, 0x16u);
    sub_364A0(v17);

    sub_777C(v18);
  }

  else
  {
    (*(v13 + 8))(v0[32], v0[30]);
  }

  v24 = v0[28];
  v25 = v0[29];
  sub_35B38(v0[27]);
  v26 = v0[38];
  v27 = v0[35];
  v28 = v0[32];

  v29 = v0[1];

  return v29();
}

uint64_t sub_35B38(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AppProtectionNavigationLink() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_44BC(&qword_78CF8, &qword_59670);
  return sub_54368();
}

unint64_t sub_35BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppProtectionNavigationLink();
  sub_D4BC(*(a1 + *(v8 + 44)), v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = sub_53B58();
    a2[3] = v10;
    v11 = &unk_78D28;
    v12 = &type metadata accessor for PreferencesControllerRecipe;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = sub_54508();
    a2[3] = v10;
    v11 = &unk_78D18;
    v12 = &type metadata accessor for SettingsPaneRecipe;
LABEL_5:
    a2[4] = sub_365C8(v11, v12);
    v13 = sub_36510(a2);
    return (*(*(v10 - 8) + 32))(v13, v7, v10);
  }

  v15 = *v7;
  a2[3] = &type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn;
  result = sub_36574();
  a2[4] = result;
  *a2 = v15;
  return result;
}

void sub_35DA0()
{
  sub_36068(319, &qword_78CC0, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  if (v0 <= 0x3F)
  {
    sub_36068(319, &qword_78CC8, &type metadata accessor for SettingsNavigationProxy);
    if (v1 <= 0x3F)
    {
      sub_360BC();
      if (v2 <= 0x3F)
      {
        sub_54958();
        if (v3 <= 0x3F)
        {
          sub_3610C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_35EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_44BC(qword_78C38, &qword_595D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_35FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_44BC(qword_78C38, &qword_595D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

void sub_36068(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_53DE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_360BC()
{
  if (!qword_78CD0)
  {
    v0 = sub_54388();
    if (!v1)
    {
      atomic_store(v0, &qword_78CD0);
    }
  }
}

unint64_t sub_3610C()
{
  result = qword_78CD8;
  if (!qword_78CD8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_78CD8);
  }

  return result;
}

uint64_t sub_361A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for AppProtectionNavigationLink() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_34F08(v4);
}

uint64_t sub_36234()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AppProtectionNavigationLink();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = v3[9];
  sub_44BC(&qword_78C30, &qword_595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_54528();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
    v11 = *(v7 + v9);
  }

  v12 = *(v7 + v3[10] + 8);

  v13 = *(v7 + v3[13] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_3638C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for AppProtectionNavigationLink() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_13F74;

  return sub_350EC(v0 + v5, v2, v3);
}

uint64_t sub_364A0(uint64_t a1)
{
  v2 = sub_44BC(&qword_78D10, &qword_59690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_36510(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_36574()
{
  result = qword_78D20;
  if (!qword_78D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78D20);
  }

  return result;
}

uint64_t sub_365C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_36640(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_543B8();
  sub_4590(&qword_78CE0, &unk_59660);
  swift_getWitnessTable();
  sub_489C(&qword_78CE8, &qword_78CE0, &unk_59660);
  swift_getOpaqueTypeMetadata2();
  sub_4590(&qword_78CF0, &unk_59780);
  sub_53EB8();
  swift_getOpaqueTypeConformance2();
  sub_489C(&qword_78D00, &qword_78CF0, &unk_59780);
  return swift_getWitnessTable();
}

uint64_t sub_367C8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_7738((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_44BC(&qword_778C0, &unk_57900);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_36898@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  sub_365C8(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  *a4 = sub_53DF8();
  *(a4 + 8) = v8 & 1;
  v9 = type metadata accessor for LocalAuthenticationNavigationLink();
  v10 = v9[9];
  *(a4 + v10) = swift_getKeyPath();
  sub_44BC(&qword_78C30, &qword_595D0);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v9[10];
  result = sub_54348();
  *v11 = v14;
  *(v11 + 8) = v15;
  *(a4 + v9[11]) = a1;
  v13 = (a4 + v9[12]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_369F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_547D8();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  __chkstk_darwin(v3);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_44BC(&qword_78CE0, &unk_59660);
  v65 = v6;
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  v8 = __chkstk_darwin(v6);
  v72 = &v60 - v9;
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v63 = v11;
  v12 = *(a1 + 24);
  v67 = *(a1 + 16);
  v83 = v12;
  v13 = a1;
  v14 = sub_543B8();
  v70 = *(v14 - 8);
  v15 = *(v70 + 64);
  __chkstk_darwin(v14);
  v68 = &v60 - v16;
  v18 = v17;
  v66 = v17;
  WitnessTable = swift_getWitnessTable();
  v85 = WitnessTable;
  v87 = sub_489C(&qword_78CE8, &qword_78CE0, &unk_59660);
  v93 = v18;
  v94 = v6;
  v95 = WitnessTable;
  v96 = v87;
  v73 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v76 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v84 = &v60 - v21;
  sub_4590(&qword_78CF0, &unk_59780);
  v77 = sub_53EB8();
  v78 = *(v77 - 8);
  v22 = *(v78 + 64);
  v23 = __chkstk_darwin(v77);
  v69 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v74 = &v60 - v25;
  v26 = *(v10 + 16);
  v62 = v10 + 16;
  v64 = v26;
  v60 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v86;
  v26(v60, v86, v13);
  v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v29 = swift_allocObject();
  v30 = v67;
  v31 = v83;
  *(v29 + 16) = v67;
  *(v29 + 24) = v31;
  v61 = *(v10 + 32);
  v32 = v29 + v28;
  v33 = v28;
  v34 = v13;
  v61(v32, &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v88 = v30;
  v89 = v31;
  v90 = v27;
  v35 = v68;
  v36 = v30;
  sub_543A8();
  v37 = v72;
  sub_540F8();
  v38 = v66;
  v39 = v65;
  sub_54268();
  v40 = v37;
  v41 = v39;
  (*(v75 + 8))(v40, v39);
  (*(v70 + 8))(v35, v38);
  v42 = v86;
  v43 = (v86 + *(v34 + 40));
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v93) = v44;
  v94 = v45;
  sub_44BC(&qword_78CF8, &qword_59670);
  sub_54358();
  v46 = v60;
  v64(v60, v42, v34);
  v47 = swift_allocObject();
  v48 = v83;
  *(v47 + 16) = v36;
  *(v47 + 24) = v48;
  v61(v47 + v33, v46, v34);
  v93 = v38;
  v94 = v41;
  v95 = v85;
  v96 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v79;
  sub_547B8();
  v51 = v69;
  v52 = OpaqueTypeMetadata2;
  v53 = v84;
  sub_542F8();

  (*(v80 + 8))(v50, v81);
  (*(v76 + 8))(v53, v52);
  v54 = sub_489C(&qword_78D00, &qword_78CF0, &unk_59780);
  v91 = OpaqueTypeConformance2;
  v92 = v54;
  v55 = v77;
  v56 = swift_getWitnessTable();
  v57 = v74;
  sub_3AE9C(v51, v55, v56);
  v58 = *(v78 + 8);
  v58(v51, v55);
  sub_3AE9C(v57, v55, v56);
  return (v58)(v57, v55);
}

uint64_t sub_371F4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LocalAuthenticationNavigationLink() + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_44BC(&qword_78CF8, &qword_59670);
  result = sub_54358();
  if ((v5 & 1) == 0)
  {
    return sub_54368();
  }

  return result;
}

uint64_t sub_37290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = a1 + *(type metadata accessor for LocalAuthenticationNavigationLink() + 48);
  v14 = *(v13 + 8);
  (*v13)();
  sub_3AE9C(v10, a2, a3);
  v15 = *(v6 + 8);
  v15(v10, a2);
  sub_3AE9C(v12, a2, a3);
  return (v15)(v12, a2);
}

uint64_t sub_373D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = type metadata accessor for LocalAuthenticationNavigationLink();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();
  v7 = sub_54528();
  v3[33] = v7;
  v8 = *(v7 - 8);
  v3[34] = v8;
  v9 = *(v8 + 64) + 15;
  v3[35] = swift_task_alloc();
  v10 = sub_53FD8();
  v3[36] = v10;
  v11 = *(v10 - 8);
  v3[37] = v11;
  v12 = *(v11 + 64) + 15;
  v3[38] = swift_task_alloc();
  sub_547A8();
  v3[39] = sub_54798();
  v14 = sub_54788();
  v3[40] = v14;
  v3[41] = v13;

  return _swift_task_switch(sub_37588, v14, v13);
}

uint64_t sub_37588()
{
  v1 = (*(v0 + 216) + *(*(v0 + 240) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  sub_44BC(&qword_78CF8, &qword_59670);
  sub_54358();
  if (*(v0 + 360) == 1)
  {
    v4 = [objc_allocWithZone(LAContext) init];
    *(v0 + 336) = v4;
    sub_386C0();
    v5 = sub_548D8();
    if (!v5)
    {
      v5 = [objc_opt_self() mainBundle];
    }

    v6 = v5;
    sub_538D8();

    v7 = sub_54638();
    *(v0 + 344) = v7;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 361;
    *(v0 + 24) = sub_37840;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_44BC(&qword_78D08, &unk_597A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_367C8;
    *(v0 + 104) = &unk_70060;
    *(v0 + 112) = v8;
    [v4 evaluatePolicy:2 localizedReason:v7 reply:{v0 + 80, 0x800000000005E740}];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 312);

    v10 = *(v0 + 304);
    v11 = *(v0 + 280);
    v12 = *(v0 + 256);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_37840()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 352) = v3;
  v4 = *(v1 + 328);
  v5 = *(v1 + 320);
  if (v3)
  {
    v6 = sub_37C30;
  }

  else
  {
    v6 = sub_37970;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_37970()
{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];

  sub_37F58(v5, v0 + 18);
  v6 = *v5;
  LOBYTE(v4) = *(v5 + 8);

  if ((v4 & 1) == 0)
  {
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];
    sub_54818();
    v10 = sub_54168();
    sub_53C08();

    sub_53FC8();
    swift_getAtKeyPath();

    (*(v8 + 8))(v7, v9);
    v6 = v0[25];
  }

  v11 = *(v0[27] + *(v0[30] + 44));
  v12 = *(v6 + 16);
  if (v12 != 45 && v12 == v11)
  {
    *(v6 + 16) = v11;
  }

  else
  {
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v6;
    *(v14 + 24) = v11;
    v0[26] = v6;
    sub_365C8(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
    sub_53A18();
  }

  v15 = v0[42];
  v17 = v0[34];
  v16 = v0[35];
  v18 = v0[33];
  v19 = v0[30];
  v20 = v0[27];
  v21 = v0[22];
  sub_7738(v0 + 18, v0[21]);
  v22 = v20 + *(v19 + 36);
  sub_3E0B0(v16);
  sub_54518();

  (*(v17 + 8))(v16, v18);
  sub_777C(v0 + 18);
  v23 = v0[28];
  v24 = v0[29];
  sub_37EE8(v0[27]);
  v25 = v0[38];
  v26 = v0[35];
  v27 = v0[32];

  v28 = v0[1];

  return v28();
}

uint64_t sub_37C30()
{
  v34 = v0;
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[39];

  swift_willThrow();

  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v5 = v0[44];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v9 = v0[27];
  v10 = sub_53C38();
  sub_7700(v10, qword_7BC18);
  (*(v7 + 16))(v6, v9, v8);
  swift_errorRetain();
  v11 = sub_53C18();
  v12 = sub_54808();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[31];
  v15 = v0[32];
  v16 = v0[30];
  if (v13)
  {
    v32 = v0[44];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v17 = 136315394;
    v20 = *(v15 + *(v16 + 44));
    (*(v14 + 8))(v15, v16);
    v21 = sub_6E88(v20);
    v23 = sub_18710(v21, v22, &v33);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_0, v11, v12, "An error occurred while authenticating for item '%s' via LocalAuthentication: %@", v17, 0x16u);
    sub_364A0(v18);

    sub_777C(v19);
  }

  else
  {
    (*(v14 + 8))(v0[32], v0[30]);
  }

  v25 = v0[28];
  v26 = v0[29];
  sub_37EE8(v0[27]);
  v27 = v0[38];
  v28 = v0[35];
  v29 = v0[32];

  v30 = v0[1];

  return v30();
}

uint64_t sub_37EE8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LocalAuthenticationNavigationLink() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_44BC(&qword_78CF8, &qword_59670);
  return sub_54368();
}

unint64_t sub_37F58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalAuthenticationNavigationLink();
  sub_D4BC(*(a1 + *(v8 + 44)), v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = sub_53B58();
    a2[3] = v10;
    v11 = &unk_78D28;
    v12 = &type metadata accessor for PreferencesControllerRecipe;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = sub_54508();
    a2[3] = v10;
    v11 = &unk_78D18;
    v12 = &type metadata accessor for SettingsPaneRecipe;
LABEL_5:
    a2[4] = sub_365C8(v11, v12);
    v13 = sub_36510(a2);
    return (*(*(v10 - 8) + 32))(v13, v7, v10);
  }

  v15 = *v7;
  a2[3] = &type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn;
  result = sub_36574();
  a2[4] = result;
  *a2 = v15;
  return result;
}

void sub_38104()
{
  sub_36068(319, &qword_78CC0, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  if (v0 <= 0x3F)
  {
    sub_36068(319, &qword_78CC8, &type metadata accessor for SettingsNavigationProxy);
    if (v1 <= 0x3F)
    {
      sub_360BC();
      if (v2 <= 0x3F)
      {
        sub_3610C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_3820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_44BC(qword_78C38, &qword_595D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_382EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_44BC(qword_78C38, &qword_595D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_383FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for LocalAuthenticationNavigationLink() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_371F4(v4);
}

uint64_t sub_3848C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for LocalAuthenticationNavigationLink();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = v3[9];
  sub_44BC(&qword_78C30, &qword_595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_54528();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
    v11 = *(v7 + v9);
  }

  v12 = *(v7 + v3[10] + 8);

  v13 = *(v7 + v3[12] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_385D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for LocalAuthenticationNavigationLink() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_13F74;

  return sub_373D8(v0 + v5, v2, v3);
}

unint64_t sub_386C0()
{
  result = qword_78DB0;
  if (!qword_78DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_78DB0);
  }

  return result;
}

__n128 sub_38744(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_38758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_387A0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_38814@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_4088(v2, v3, v4);
}

uint64_t sub_3887C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 4);
  v3 = a2[24];
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a1 + 4);
  v7 = a1[24];
  v10 = a1 + 8;
  v8 = *(a1 + 1);
  v9 = *(v10 + 1);
  return sub_541B8();
}

uint64_t sub_388E8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v35 = sub_54138();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v35);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_44BC(&qword_78DB8, &qword_59F08);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32[-v9];
  v11 = sub_44BC(&qword_78DC0, &qword_59F10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32[-v13];
  v15 = sub_54098();
  v34 = *(v1 + 64);
  v33 = *(v1 + 96);
  v16 = *v1;
  v17 = swift_allocObject();
  v18 = *(v1 + 80);
  *(v17 + 80) = *(v1 + 64);
  *(v17 + 96) = v18;
  *(v17 + 112) = *(v1 + 96);
  v19 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v19;
  v20 = *(v1 + 48);
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = v20;
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  sub_393D4(v1, &v39);
  sub_398E4(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  v21 = sub_53DF8();
  v48 = 1;
  v47 = v22 & 1;
  v39 = v15;
  v40 = 0;
  v41 = 1;
  v42 = v21;
  v43 = v22 & 1;
  v44 = v16;
  v45 = sub_393B0;
  v46 = v17;
  sub_54128();
  v23 = sub_44BC(&qword_78DC8, &qword_59F18);
  v24 = sub_489C(&qword_78DD0, &qword_78DC8, &qword_59F18);
  sub_542C8();
  (*(v2 + 8))(v5, v35);

  sub_6104(v16);
  v39 = v23;
  v40 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v36;
  sub_54288();

  (*(v37 + 8))(v10, v25);
  if (v34 >> 62 == 1)
  {
    if (v33 >> 8 == 2)
    {
      v26 = 1;
    }

    else
    {
      v26 = BYTE1(v33) ^ 1;
    }
  }

  else
  {
    v26 = 0;
  }

  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26 & 1;
  v29 = v38;
  sub_39424(v14, v38);
  result = sub_44BC(&qword_78DD8, &qword_59F50);
  v31 = (v29 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = sub_34208;
  v31[2] = v28;
  return result;
}

double sub_38D10@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v2 + 33) | ((*(v2 + 37) | (*(v2 + 39) << 16)) << 32);
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *(v2 + 64);
  v14 = *(v2 + 72);
  v13 = *(v2 + 80);
  v15 = *(v2 + 88);
  v16 = *(v2 + 96);
  v17 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v37 = v7 & 1;
      v36 = 1;
      LOBYTE(v31) = v4;
      *(&v31 + 1) = v5;
      *&v32 = v6;
      BYTE8(v32) = v7 & 1;
      *&v33 = v10;
      v35[25] = 1;
      sub_393D4(v2, &v26);
      sub_4088(v5, v6, v7 & 1);
      sub_39494();
      sub_394E8();

      sub_540D8();
      v28 = v23;
      v29 = v24;
      *v30 = *v25;
      *&v30[10] = *&v25[10];
      v26 = v21;
      v27 = v22;
      v38 = 1;
      v30[27] = 1;
      sub_44BC(&qword_78DF0, &qword_59F58);
      sub_44BC(&qword_78DF8, &qword_59F60);
      sub_3953C();
      sub_39670();
      sub_540D8();
      sub_84F8(v5, v6, v7 & 1);

      goto LABEL_9;
    }

    v37 = 0;
    *&v31 = v4;
    *(&v31 + 1) = v5;
    *&v32 = v6;
    BYTE8(v32) = v7;
    HIBYTE(v32) = BYTE6(v8);
    *(&v32 + 13) = WORD2(v8);
    *(&v32 + 9) = v8;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    *&v34 = v11;
    *(&v34 + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
    *v35 = v14;
    *&v35[8] = v13;
    *&v35[16] = v15;
    *&v35[24] = v16;
    sub_393D4(v2, &v26);
    sub_39494();
    sub_394E8();
    sub_540D8();
    v33 = v23;
    v34 = v24;
    *v35 = *v25;
    *&v35[10] = *&v25[10];
    v31 = v21;
    v32 = v22;
    v38 = 1;
    v35[27] = 1;
  }

  else
  {
    if (!v17)
    {
      v37 = 0;
      *&v31 = v4;
      *(&v31 + 1) = v5;
      *&v32 = v6;
      BYTE8(v32) = v7;
      HIBYTE(v32) = BYTE6(v8);
      *(&v32 + 13) = WORD2(v8);
      *(&v32 + 9) = v8;
      *&v33 = v10;
      *(&v33 + 1) = v9;
      *&v34 = v11;
      BYTE8(v34) = v12;
      v35[26] = 0;
      sub_393D4(v2, &v26);
      sub_4088(v5, v6, v7 & 1);

      sub_2D070(v9, v11, v12);
      sub_395C8();
      sub_3961C();
      sub_540D8();
      v28 = v23;
      v29 = v24;
      *v30 = *v25;
      *&v30[11] = *&v25[11];
      v26 = v21;
      v27 = v22;
      v38 = 0;
      v30[27] = 0;
      sub_44BC(&qword_78DF0, &qword_59F58);
      sub_44BC(&qword_78DF8, &qword_59F60);
      sub_3953C();
      sub_39670();
      sub_540D8();
      sub_84F8(v5, v6, v7 & 1);

      sub_7CAC(v9, v11, v12);
LABEL_9:
      v28 = v33;
      v29 = v34;
      *v30 = *v35;
      *&v30[12] = *&v35[12];
      v26 = v31;
      v27 = v32;
      goto LABEL_10;
    }

    v37 = 1;
    *&v31 = v4;
    *(&v31 + 1) = v5;
    *&v32 = v6;
    BYTE8(v32) = v7;
    HIBYTE(v32) = BYTE6(v8);
    *(&v32 + 13) = WORD2(v8);
    *(&v32 + 9) = v8;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    *&v34 = v11;
    *(&v34 + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
    *v35 = v14;
    *&v35[8] = v13;
    *&v35[16] = v15;
    *&v35[24] = v16;
    v35[26] = 1;
    sub_393D4(v2, &v26);
    sub_395C8();
    sub_3961C();
    sub_540D8();
    v33 = v23;
    v34 = v24;
    *v35 = *v25;
    *&v35[11] = *&v25[11];
    v31 = v21;
    v32 = v22;
    v38 = 0;
    v35[27] = 0;
  }

  sub_44BC(&qword_78DF0, &qword_59F58);
  sub_44BC(&qword_78DF8, &qword_59F60);
  sub_3953C();
  sub_39670();
  sub_540D8();
LABEL_10:
  v18 = v29;
  a1[2] = v28;
  a1[3] = v18;
  a1[4] = *v30;
  *(a1 + 76) = *&v30[12];
  result = *&v26;
  v20 = v27;
  *a1 = v26;
  a1[1] = v20;
  return result;
}

uint64_t sub_391EC@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 48);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_388E8(a1);
}

uint64_t sub_39238()
{
  sub_3929C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return _swift_deallocObject(v0, 114, 7);
}

uint64_t sub_3929C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v12 = a8;
  v15 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v15)
    {
      sub_84F8(a2, a3, a4 & 1);

      v16 = a6;
      v17 = a7;
      v18 = v12;
LABEL_6:

      return sub_7CAC(v16, v17, v18);
    }

LABEL_5:
    sub_84F8(a2, a3, a4 & 1);

    sub_84F8(a6, a7, v12 & 1);

    v16 = a10;
    v17 = a11;
    v18 = a12;
    goto LABEL_6;
  }

  if (v15 == 2)
  {
    goto LABEL_5;
  }

  sub_84F8(a2, a3, a4 & 1);
}

uint64_t sub_39424(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78DC0, &qword_59F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_39494()
{
  result = qword_78DE0;
  if (!qword_78DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78DE0);
  }

  return result;
}

unint64_t sub_394E8()
{
  result = qword_78DE8;
  if (!qword_78DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78DE8);
  }

  return result;
}

unint64_t sub_3953C()
{
  result = qword_78E00;
  if (!qword_78E00)
  {
    sub_4590(&qword_78DF0, &qword_59F58);
    sub_395C8();
    sub_3961C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E00);
  }

  return result;
}

unint64_t sub_395C8()
{
  result = qword_78E08;
  if (!qword_78E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E08);
  }

  return result;
}

unint64_t sub_3961C()
{
  result = qword_78E10;
  if (!qword_78E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E10);
  }

  return result;
}

unint64_t sub_39670()
{
  result = qword_78E18;
  if (!qword_78E18)
  {
    sub_4590(&qword_78DF8, &qword_59F60);
    sub_39494();
    sub_394E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E18);
  }

  return result;
}

unint64_t sub_39700()
{
  result = qword_78E20;
  if (!qword_78E20)
  {
    sub_4590(&qword_78DD8, &qword_59F50);
    sub_397B8();
    sub_489C(&qword_78E38, qword_78E40, &qword_59F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E20);
  }

  return result;
}

unint64_t sub_397B8()
{
  result = qword_78E28;
  if (!qword_78E28)
  {
    sub_4590(&qword_78DC0, &qword_59F10);
    sub_4590(&qword_78DC8, &qword_59F18);
    sub_489C(&qword_78DD0, &qword_78DC8, &qword_59F18);
    swift_getOpaqueTypeConformance2();
    sub_398E4(&qword_78E30, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78E28);
  }

  return result;
}

uint64_t sub_398E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3992C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_39980(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3998C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_399D4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_39AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_540C8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_540D8();
}

uint64_t sub_39BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_540C8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_540D8();
}

uint64_t sub_39C9C@<X0>(void (*a1)(char *, uint64_t)@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v110 = a4;
  v111 = a3;
  v112 = a1;
  v109 = a7;
  v8 = BYTE1(a2);
  v101 = a5;
  v102 = a6;
  v9 = sub_54008();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for LocalAuthenticationNavigationLink();
  v95 = *(v11 - 8);
  v12 = *(v95 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v92 - v16;
  v17 = type metadata accessor for AppProtectionNavigationLink();
  v94 = *(v17 - 8);
  v18 = v94[8];
  v19 = __chkstk_darwin(v17);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v97 = &v92 - v22;
  v115[0] = v9;
  v115[1] = &type metadata for Never;
  v115[2] = WitnessTable;
  v116 = &protocol witness table for Never;
  v23 = sub_53E88();
  v107 = v17;
  v24 = sub_540E8();
  v99 = *(v24 - 8);
  v25 = *(v99 + 64);
  v26 = __chkstk_darwin(v24);
  v98 = &v92 - v27;
  v100 = v23;
  v92 = *(v23 - 8);
  v28 = *(v92 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v96 = &v92 - v32;
  v106 = v33;
  v108 = v11;
  v105 = sub_540E8();
  v104 = *(v105 - 8);
  v34 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v92 - v35;
  v36 = sub_68B0(v8);
  if (v36)
  {
    v37 = v36;
    if (v36 == 1)
    {
      v38 = swift_allocObject();
      v39 = v102;
      *(v38 + 16) = v101;
      *(v38 + 24) = v39;
      *(v38 + 32) = v112;
      *(v38 + 40) = a2 & 1;
      *(v38 + 41) = BYTE1(a2);
      v40 = v110;
      *(v38 + 48) = v111;
      *(v38 + 56) = v40;

      sub_36898(v8, sub_3AEA4, v38, v15);
      v41 = v108;
      v112 = swift_getWitnessTable();
      v42 = v95;
      v43 = *(v95 + 16);
      v44 = v93;
      v43(v93, v15, v41);
      v45 = *(v42 + 8);
      v45(v15, v41);
      v43(v15, v44, v41);
      v46 = swift_getWitnessTable();
      v47 = swift_getWitnessTable();
      v124 = v46;
      v125 = v47;
      v48 = v106;
      swift_getWitnessTable();
      v49 = v103;
      sub_39BA4(v15, v48, v41);
      v50 = v15;
      v51 = v49;
      v45(v50, v41);
      v45(v44, v41);
    }

    else
    {
      v72 = swift_allocObject();
      v73 = v102;
      *(v72 + 16) = v101;
      *(v72 + 24) = v73;
      *(v72 + 32) = v112;
      *(v72 + 40) = a2 & 1;
      *(v72 + 41) = BYTE1(a2);
      v74 = v110;
      *(v72 + 48) = v111;
      *(v72 + 56) = v74;
      sub_3ACBC(v37);

      sub_3456C(v8, v37, sub_3AEA4, v72, v21);
      v75 = v107;
      v76 = swift_getWitnessTable();
      v77 = v94;
      v78 = v94[2];
      v79 = v97;
      v78(v97, v21, v75);
      v112 = v77[1];
      v112(v21, v75);
      v78(v21, v79, v75);
      v80 = v100;
      v81 = swift_getWitnessTable();
      v82 = v98;
      sub_39BA4(v21, v80, v75);
      v118 = v81;
      v119 = v76;
      v83 = v106;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v51 = v103;
      sub_39AAC(v82, v83);
      sub_3ACCC(v37);
      (*(v99 + 8))(v82, v83);
      v84 = v112;
      v112(v21, v75);
      v84(v97, v75);
    }
  }

  else
  {
    LODWORD(v95) = a2 >> 8;
    v52 = v101;
    v53 = v102;
    sub_3A8C4(a2 & 0xFF01, v115);
    v54 = v116;
    v97 = v117;
    v55 = sub_7738(v115, v116);
    v56 = sub_54998();
    v94 = &v92;
    v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v56 - 8);
    v59 = &v92 - v58;
    v60 = *(v54 - 1);
    (*(v60 + 16))(&v92 - v58, v55, v54);
    v61 = (*(v60 + 56))(v59, 0, 1, v54);
    __chkstk_darwin(v61);
    *(&v92 - 6) = v52;
    *(&v92 - 5) = v53;
    *(&v92 - 4) = v112;
    *(&v92 - 24) = a2 & 1;
    *(&v92 - 23) = v95;
    v62 = v110;
    *(&v92 - 2) = v111;
    *(&v92 - 1) = v62;
    sub_53E78();
    v63 = v100;
    v64 = swift_getWitnessTable();
    v65 = v92;
    v66 = *(v92 + 16);
    v67 = v96;
    v66(v96, v31, v63);
    v68 = *(v65 + 8);
    v68(v31, v63);
    v66(v31, v67, v63);
    v69 = swift_getWitnessTable();
    v70 = v98;
    sub_39AAC(v31, v63);
    v113 = v64;
    v114 = v69;
    v71 = v106;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v51 = v103;
    sub_39AAC(v70, v71);
    (*(v99 + 8))(v70, v71);
    v68(v31, v63);
    v68(v96, v63);
    sub_777C(v115);
  }

  v85 = swift_getWitnessTable();
  v86 = swift_getWitnessTable();
  v122 = v85;
  v123 = v86;
  v87 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v120 = v87;
  v121 = v88;
  v89 = v105;
  swift_getWitnessTable();
  v90 = v104;
  (*(v104 + 16))(v109, v51, v89);
  return (*(v90 + 8))(v51, v89);
}

unint64_t sub_3A8C4@<X0>(__int16 a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = HIBYTE(a1);
  v4 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D4BC(v3, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = sub_53B58();
    a2[3] = v9;
    v10 = &unk_78D28;
    v11 = &type metadata accessor for PreferencesControllerRecipe;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_54508();
    a2[3] = v9;
    v10 = &unk_78D18;
    v11 = &type metadata accessor for SettingsPaneRecipe;
LABEL_5:
    a2[4] = sub_3ACE0(v10, v11);
    v12 = sub_36510(a2);
    return (*(*(v9 - 8) + 32))(v12, v7, v9);
  }

  v14 = *v7;
  a2[3] = &type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn;
  result = sub_36574();
  a2[4] = result;
  *a2 = v14;
  return result;
}

uint64_t sub_3AA44@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v7 = sub_54008();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v19 - v14;
  a2(v13);
  sub_54018();
  swift_getWitnessTable();
  v16 = v8[2];
  v16(v15, v12, v7);
  v17 = v8[1];
  v17(v12, v7);
  v16(a4, v15, v7);
  return (v17)(v15, v7);
}

uint64_t sub_3AC44()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3AC84@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  v4 = *(v1 + 40) | (*(v1 + 41) << 8);
  return sub_3AA44(*(v1 + 32), *(v1 + 48), *(v1 + 16), a1);
}

id sub_3ACBC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_3ACCC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_3ACE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3AD28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_54008();
  swift_getWitnessTable();
  sub_53E88();
  type metadata accessor for AppProtectionNavigationLink();
  sub_540E8();
  type metadata accessor for LocalAuthenticationNavigationLink();
  sub_540E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_3AED4(uint64_t a1)
{
  v2 = *(a1 + 72);

  sub_44BC(&qword_78EF8, &qword_5A288);
  sub_489C(&qword_78F00, &qword_78EF8, &qword_5A288);
  sub_3B3D0();
  sub_3B42C();
  return sub_543F8();
}

uint64_t sub_3AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v13 = *(a1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(a1 + 96);
  v4 = v15;
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v6 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = v11;
  v12 = v6;
  *a2 = v10[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  *(a2 + 48) = v6;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  return sub_A650(v10, v9);
}

id sub_3B008()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_53958();
    sub_5162C(&_swiftEmptyArrayStorage);
    v3 = sub_545B8();

    [v1 openSensitiveURL:v2 withOptions:v3];

    return sub_53E18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3B0E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[3];
  v18 = v1[2];
  v19 = v4;
  v20 = v1[4];
  v16 = *v1;
  v17 = v3;
  v5 = *(v1 + 24);
  v22[0] = *(v1 + 8);
  v22[1] = v5;
  v14 = v22[0];
  v15 = v5;
  v6 = *(v1 + 56);
  v21[0] = *(v1 + 40);
  v21[1] = v6;
  v12 = v21[0];
  v13 = v6;
  sub_3B260(v22, v11);
  sub_3B260(v21, v11);
  sub_44BC(&qword_78EC8, &qword_5A238);
  sub_44BC(&qword_78ED0, &qword_5A240);
  sub_3B2D0();
  sub_3B34C();
  sub_54408();
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(sub_44BC(&qword_78EF0, &qword_5A278) + 36));
  v9 = *(sub_44BC(&qword_786D8, &qword_5A280) + 28);
  result = sub_53E38();
  *v8 = KeyPath;
  return result;
}

uint64_t sub_3B260(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_78EC8, &qword_5A238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3B2D0()
{
  result = qword_78ED8;
  if (!qword_78ED8)
  {
    sub_4590(&qword_78EC8, &qword_5A238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78ED8);
  }

  return result;
}

unint64_t sub_3B34C()
{
  result = qword_78EE0;
  if (!qword_78EE0)
  {
    sub_4590(&qword_78ED0, &qword_5A240);
    sub_3B3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78EE0);
  }

  return result;
}

unint64_t sub_3B3D0()
{
  result = qword_78EE8;
  if (!qword_78EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78EE8);
  }

  return result;
}

unint64_t sub_3B42C()
{
  result = qword_78F08;
  if (!qword_78F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78F08);
  }

  return result;
}

unint64_t sub_3B484()
{
  result = qword_78F10;
  if (!qword_78F10)
  {
    sub_4590(&qword_78EF0, &qword_5A278);
    sub_3B53C();
    sub_489C(&qword_786D0, &qword_786D8, &qword_5A280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78F10);
  }

  return result;
}

unint64_t sub_3B53C()
{
  result = qword_78F18;
  if (!qword_78F18)
  {
    sub_4590(&qword_78F20, &unk_5A290);
    sub_3B2D0();
    sub_3B34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78F18);
  }

  return result;
}

uint64_t sub_3B5E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_44BC(&qword_78F28, &qword_5A2A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_44BC(&qword_78F30, &qword_5A2A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_44BC(&qword_78F38, &unk_5A2B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_3B76C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_44BC(&qword_78F28, &qword_5A2A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_44BC(&qword_78F30, &qword_5A2A8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_44BC(&qword_78F38, &unk_5A2B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PrivacyAndSecuritySettingsList()
{
  result = qword_78F98;
  if (!qword_78F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3B92C()
{
  sub_3BB18(319, &qword_78FA8, &type metadata accessor for AppendSettingsNavigationPathAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_3BB18(319, &qword_78FB0, &type metadata accessor for ClearSettingsNavigationPathAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_3BB7C(319, &qword_78FB8, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_3BB18(319, &qword_78FC0, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_3BB18(319, &qword_78FC8, type metadata accessor for PrivacyAndSecuritySettingsListViewModel, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_3BB7C(319, &unk_78FD0, &type metadata for Double, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_3BB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_3BB7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_3BC0C(uint64_t a1)
{
  v2 = sub_53E48();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_53F78();
}

uint64_t sub_3BCD4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_44BC(&qword_79010, &qword_5A360);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for PrivacyAndSecuritySettingsList();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_44BC(&qword_79018, &qword_5A398);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_44BC(&qword_79020, &qword_5A400);
  swift_storeEnumTagMultiPayload();
  v6 = (a1 + v2[9]);
  sub_54348();
  *v6 = v9;
  v6[1] = v10;
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  result = sub_54348();
  v8 = (a1 + v2[8]);
  *v8 = v9;
  v8[1] = v10;
  return result;
}

uint64_t sub_3BE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a1;
  v98 = a3;
  v99 = sub_53FE8();
  v97 = *(v99 - 8);
  v4 = *(v97 + 64);
  __chkstk_darwin(v99);
  v96 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_544D8();
  v116 = *(v6 - 8);
  v117 = v6;
  v7 = *(v116 + 64);
  __chkstk_darwin(v6);
  v113 = (&v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PrivacyAndSecuritySettingsList();
  v10 = v9 - 8;
  v110 = *(v9 - 8);
  v109 = *(v110 + 64);
  __chkstk_darwin(v9);
  v107 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_53ED8();
  v12 = *(v105 - 8);
  v104 = *(v12 + 64);
  __chkstk_darwin(v105);
  v103 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_44BC(&qword_79060, &qword_5A458);
  v14 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v16 = &v88 - v15;
  v112 = sub_44BC(&qword_79068, &qword_5A460);
  v17 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v108 = &v88 - v18;
  v90 = sub_44BC(&qword_79070, &qword_5A468);
  v89 = *(v90 - 8);
  v19 = *(v89 + 64);
  __chkstk_darwin(v90);
  v115 = &v88 - v20;
  v93 = sub_44BC(&qword_79078, &qword_5A470);
  v91 = *(v93 - 8);
  v21 = *(v91 + 64);
  __chkstk_darwin(v93);
  v114 = &v88 - v22;
  v95 = sub_44BC(&qword_79080, &qword_5A478);
  v94 = *(v95 - 8);
  v23 = *(v94 + 64);
  __chkstk_darwin(v95);
  v92 = &v88 - v24;
  v25 = (a2 + *(v10 + 40));
  v26 = *v25;
  v102 = v25[1];
  v122 = v26;
  v123 = v102;
  v100 = v26;
  v101 = sub_44BC(&qword_79088, &qword_5A480);
  sub_54378();
  v28 = v125;
  v27 = v126;
  v29 = v127;
  swift_getKeyPath();
  v125 = v28;
  v126 = v27;
  v127 = v29;
  sub_44BC(&qword_79090, &qword_5A4B0);
  sub_543D8();

  v30 = v122;
  v31 = v123;
  v32 = v124;

  v119 = v30;
  v120 = v31;
  v121 = v32;
  v33 = a2;
  v118 = a2;
  sub_44BC(&qword_79098, &qword_5A4B8);
  sub_76AC();
  sub_489C(&qword_790A0, &qword_79098, &qword_5A4B8);
  sub_54188();
  v34 = v102;
  v125 = v26;
  v126 = v102;
  sub_54358();
  v35 = *(v122 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_scrollToItemSubject);

  v36 = v103;
  v37 = v105;
  (*(v12 + 16))(v103, v111, v105);
  v38 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v39 = swift_allocObject();
  (*(v12 + 32))(v39 + v38, v36, v37);
  v40 = sub_44BC(&qword_790A8, &qword_5A4C0);
  *&v16[*(v40 + 52)] = v35;
  v41 = &v16[*(v40 + 56)];
  *v41 = sub_3E724;
  v41[1] = v39;
  v42 = v33;
  v43 = v107;
  sub_3E5A0(v33, v107, type metadata accessor for PrivacyAndSecuritySettingsList);
  v44 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v45 = swift_allocObject();
  sub_3E388(v43, v45 + v44);
  v46 = &v16[*(v106 + 36)];
  *v46 = sub_3E9CC;
  v46[1] = v45;
  v46[2] = 0;
  v46[3] = 0;
  v47 = v100;
  v125 = v100;
  v126 = v34;
  sub_54358();
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  sub_3EA2C();
  sub_3EE08(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  v48 = v108;
  sub_54278();

  v49 = v16;
  v50 = v112;
  sub_47F8(v49, &qword_79060, &qword_5A458);
  v51 = sub_54438();
  v125 = v47;
  v126 = v34;
  sub_54358();
  v52 = sub_3F1A4();
  v54 = v53;
  v56 = v55;

  v57 = (v48 + *(v50 + 36));
  *v57 = v51;
  v57[1] = v52;
  v57[2] = v54;
  v57[3] = v56;
  v58 = sub_3EAE4();
  sub_54218();
  sub_3EC28(v48);
  v59 = v113;
  *v113 = 0xD00000000000001ELL;
  v59[1] = 0x800000000005B790;
  v60 = v59;
  (*(v116 + 104))();
  v109 = sub_53918();
  v61 = *(v109 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v109);
  v110 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = v42;
  v63 = &v88 - v110;
  sub_3D938();
  v64 = sub_44BC(&qword_783B8, &unk_5A4D0);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v67 = &v88 - v66;
  sub_53998();
  v68 = sub_539A8();
  v69 = *(v68 - 8);
  result = (*(v69 + 48))(v67, 1, v68);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v125 = v50;
    v126 = v58;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v115;
    v73 = v90;
    sub_54238();
    (*(v61 + 8))(v63, v109);
    (*(v116 + 8))(v60, v117);
    (*(v89 + 8))(v72, v73);
    v74 = (*(v69 + 8))(v67, v68);
    __chkstk_darwin(v74);
    sub_3D938();
    v75 = sub_541F8();
    v77 = v76;
    v79 = v78;
    v125 = v73;
    v126 = OpaqueTypeConformance2;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v92;
    v82 = v93;
    v83 = v114;
    sub_54228();
    sub_84F8(v75, v77, v79 & 1);

    (*(v91 + 8))(v83, v82);
    v84 = v97;
    v85 = v96;
    v86 = v99;
    (*(v97 + 104))(v96, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v99);
    v125 = v82;
    v126 = v80;
    swift_getOpaqueTypeConformance2();
    v87 = v95;
    sub_542E8();
    (*(v84 + 8))(v85, v86);
    return (*(v94 + 8))(v81, v87);
  }

  return result;
}

uint64_t sub_3CAE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3EE08(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_3CBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = sub_44BC(&qword_790E8, &qword_5A4E8);
  v3 = *(v48 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v48);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v44 - v7;
  v8 = sub_44BC(&qword_790F0, &qword_5A4F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v45 = &v44 - v11;
  v12 = sub_53FD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_44BC(&qword_790F8, &qword_5A4F8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v50 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v44 - v21;
  v23 = type metadata accessor for PrivacyAndSecuritySettingsList();
  v46 = v23;
  v24 = a1;
  v25 = a1 + *(v23 + 24);
  v26 = *v25;
  LODWORD(v25) = *(v25 + 8);
  v52 = v22;
  if (v25 != 1)
  {

    sub_54818();
    v29 = sub_54168();
    sub_53C08();

    sub_53FC8();
    swift_getAtKeyPath();
    sub_3E37C(v26, 0);
    v23 = (*(v13 + 8))(v16, v12);
    if (v53 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    __chkstk_darwin(v23);
    sub_54558();
    sub_3EE08(&qword_79128, &type metadata accessor for SettingsFeatureDescriptionView);
    v30 = v45;
    sub_54418();
    v28 = v52;
    (*(v9 + 32))(v52, v30, v8);
    v27 = 0;
    goto LABEL_6;
  }

  if (v26)
  {
    goto LABEL_5;
  }

LABEL_3:
  v27 = 1;
  v28 = v52;
LABEL_6:
  (*(v9 + 56))(v28, v27, 1, v8);
  v31 = (v24 + *(v46 + 32));
  v33 = *v31;
  v32 = v31[1];
  v53 = v33;
  v54 = v32;
  sub_44BC(&qword_79088, &qword_5A480);
  sub_54358();
  v34 = sub_3F1A4();

  v53 = v34;
  sub_44BC(&qword_79100, &qword_5A500);
  sub_489C(&qword_79108, &qword_79100, &qword_5A500);
  sub_3ED58();
  sub_3EDAC();
  v35 = v51;
  sub_543F8();
  v36 = v50;
  sub_4790(v28, v50, &qword_790F8, &qword_5A4F8);
  v37 = v3[2];
  v39 = v47;
  v38 = v48;
  v37(v47, v35, v48);
  v40 = v49;
  sub_4790(v36, v49, &qword_790F8, &qword_5A4F8);
  v41 = sub_44BC(&qword_79120, &qword_5A508);
  v37((v40 + *(v41 + 48)), v39, v38);
  v42 = v3[1];
  v42(v35, v38);
  sub_47F8(v52, &qword_790F8, &qword_5A4F8);
  v42(v39, v38);
  return sub_47F8(v36, &qword_790F8, &qword_5A4F8);
}

uint64_t sub_3D1BC()
{
  v0 = sub_53918();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_3D938();
  sub_541F8();
  sub_54078();
  sub_386C0();
  if (!sub_548D8())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  sub_541D8();
  return sub_54548();
}

uint64_t sub_3D360@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_C990(v8, &v7);
}

uint64_t sub_3D3AC(char *a1)
{
  v2 = *a1;
  sub_54438();
  sub_53E58();
}

uint64_t sub_3D420(uint64_t a1)
{
  v2 = sub_44BC(&qword_790D8, &unk_5A8E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28[-v4];
  v6 = sub_44BC(&qword_790E0, &qword_5A4E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28[-v8];
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v10 = sub_53C38();
  sub_7700(v10, qword_7BC18);
  v11 = sub_53C18();
  v12 = sub_54828();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_18710(0xD00000000000001ELL, 0x800000000005A2A0, &v29);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_18710(2036625250, 0xE400000000000000, &v29);
    _os_log_impl(&dword_0, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = type metadata accessor for PrivacyAndSecuritySettingsList();
  v15 = (a1 + *(v14 + 32));
  v17 = v15[1];
  v29 = *v15;
  v16 = v29;
  v30 = v17;
  sub_44BC(&qword_79088, &qword_5A480);
  sub_54358();
  v18 = v31;
  sub_3E0D8(&qword_79010, &qword_5A360, &type metadata accessor for AppendSettingsNavigationPathAction, v9);
  v19 = sub_53B88();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  v20 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_appendSettingsNavigationPath;
  swift_beginAccess();
  sub_3EC90(v9, v18 + v20, &qword_790E0, &qword_5A4E0);
  swift_endAccess();

  v29 = v16;
  v30 = v17;
  sub_54358();
  v21 = v31;
  v22 = a1 + *(v14 + 20);
  sub_3E0D8(&qword_79018, &qword_5A398, &type metadata accessor for ClearSettingsNavigationPathAction, v5);
  v23 = sub_53B68();
  (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
  v24 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel_clearSettingsNavigationPath;
  swift_beginAccess();
  sub_3EC90(v5, v21 + v24, &qword_790D8, &unk_5A8E0);
  swift_endAccess();

  v29 = v16;
  v30 = v17;
  sub_54358();
  v25 = v31;
  if (*(v31 + 16) != 45)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v28[-16] = v25;
    v28[-8] = 45;
    v29 = v25;
    sub_3EE08(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
    sub_53A18();
  }

  v29 = v16;
  v30 = v17;
  sub_54358();
  sub_3F57C();
}

uint64_t sub_3D938()
{
  v0 = sub_54628();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_54618();
  v2 = sub_53908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v7 = [qword_7BBF8 bundleURL];
  sub_53978();

  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v2);
  v8 = sub_539F8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_539E8();
  return sub_53928();
}

uint64_t sub_3DB4C(_BYTE *a1)
{
  v2 = type metadata accessor for LocationAccessReportView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_44BC(&qword_79058, &qword_5A418);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = type metadata accessor for AppleIntelligenceReportView();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    sub_335F8(v5);
    sub_3E5A0(v5, v9, type metadata accessor for LocationAccessReportView);
    swift_storeEnumTagMultiPayload();
    sub_3EE08(&qword_79048, type metadata accessor for AppleIntelligenceReportView);
    sub_3EE08(&qword_79050, type metadata accessor for LocationAccessReportView);
    sub_540D8();
    v14 = type metadata accessor for LocationAccessReportView;
    v15 = v5;
  }

  else
  {
    v16 = type metadata accessor for AppleIntelligenceReportViewModel();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_53A38();
    v23[1] = v19;
    sub_54348();
    v20 = v23[3];
    *v13 = v23[2];
    v13[1] = v20;
    v21 = *(v10 + 20);
    *(v13 + v21) = swift_getKeyPath();
    sub_44BC(&qword_78720, &unk_593A0);
    swift_storeEnumTagMultiPayload();
    sub_3E5A0(v13, v9, type metadata accessor for AppleIntelligenceReportView);
    swift_storeEnumTagMultiPayload();
    sub_3EE08(&qword_79048, type metadata accessor for AppleIntelligenceReportView);
    sub_3EE08(&qword_79050, type metadata accessor for LocationAccessReportView);
    sub_540D8();
    v14 = type metadata accessor for AppleIntelligenceReportView;
    v15 = v13;
  }

  return sub_3E608(v15, v14);
}

uint64_t sub_3DEBC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_3E5A0(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrivacyAndSecuritySettingsList);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_3E388(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  v7[0] = sub_3E3EC;
  v7[1] = v5;
  sub_44BC(&qword_79028, &qword_5A408);
  sub_44BC(&qword_79030, &qword_5A410);
  sub_489C(&qword_79038, &qword_79028, &qword_5A408);
  sub_36574();
  sub_3E46C();
  sub_542D8();
}

uint64_t sub_3E0D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_53FD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_44BC(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_4790(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_54818();
    v22 = sub_54168();
    sub_53C08();

    sub_53FC8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_3E320@<X0>(_BYTE *a1@<X8>)
{
  result = sub_53F98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_3E37C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_3E388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyAndSecuritySettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3E3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PrivacyAndSecuritySettingsList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_3BE30(a1, v6, a2);
}

unint64_t sub_3E46C()
{
  result = qword_79040;
  if (!qword_79040)
  {
    sub_4590(&qword_79030, &qword_5A410);
    sub_3EE08(&qword_79048, type metadata accessor for AppleIntelligenceReportView);
    sub_3EE08(&qword_79050, type metadata accessor for LocationAccessReportView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79040);
  }

  return result;
}

uint64_t sub_3E5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3E608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3E69C()
{
  v1 = sub_53ED8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_3E724(char *a1)
{
  v2 = *(*(sub_53ED8() - 8) + 80);

  return sub_3D3AC(a1);
}

uint64_t sub_3E794()
{
  v1 = type metadata accessor for PrivacyAndSecuritySettingsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_44BC(&qword_79010, &qword_5A360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_53B88();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_44BC(&qword_79018, &qword_5A398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_53B68();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  sub_3E37C(*&v5[v1[6]], v5[v1[6] + 8]);
  v11 = v1[7];
  sub_44BC(&qword_79020, &qword_5A400);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_53E48();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    v13 = *&v5[v11];
  }

  v14 = &v5[v1[8]];
  v15 = *v14;

  v16 = *(v14 + 1);

  v17 = *&v5[v1[9] + 8];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3E9CC()
{
  v1 = *(type metadata accessor for PrivacyAndSecuritySettingsList() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3D420(v2);
}

unint64_t sub_3EA2C()
{
  result = qword_790B0;
  if (!qword_790B0)
  {
    sub_4590(&qword_79060, &qword_5A458);
    sub_489C(&qword_790B8, &qword_790A8, &qword_5A4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_790B0);
  }

  return result;
}

unint64_t sub_3EAE4()
{
  result = qword_790C0;
  if (!qword_790C0)
  {
    sub_4590(&qword_79068, &qword_5A460);
    sub_4590(&qword_79060, &qword_5A458);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_3EA2C();
    sub_3EE08(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
    swift_getOpaqueTypeConformance2();
    sub_489C(&qword_790C8, &qword_790D0, &qword_5A4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_790C0);
  }

  return result;
}

uint64_t sub_3EC28(uint64_t a1)
{
  v2 = sub_44BC(&qword_79068, &qword_5A460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3EC90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_44BC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_3ECF8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_76AC();
  return sub_53EC8();
}

unint64_t sub_3ED58()
{
  result = qword_79110;
  if (!qword_79110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79110);
  }

  return result;
}

unint64_t sub_3EDAC()
{
  result = qword_79118;
  if (!qword_79118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_79118);
  }

  return result;
}

uint64_t sub_3EE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3EE50()
{
  sub_4590(&qword_79028, &qword_5A408);
  sub_4590(&qword_79030, &qword_5A410);
  sub_489C(&qword_79038, &qword_79028, &qword_5A408);
  sub_36574();
  sub_3E46C();
  return swift_getOpaqueTypeConformance2();
}

void sub_3EF24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_3EF90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_3EFE4(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 == 45)
  {
    if (result != 45)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
      sub_53A18();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 16) = result;
  return result;
}

uint64_t sub_3F104()
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  return *(v0 + 16);
}

uint64_t sub_3F1A4()
{
  v1 = v0;
  swift_getKeyPath();
  *&v37[0] = v0;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v2 = *(v0 + 24);
  if (v2)
  {
    goto LABEL_21;
  }

  if (qword_76FF0 != -1)
  {
    swift_once();
  }

  v3 = sub_53C38();
  sub_7700(v3, qword_7BC30);
  v4 = sub_53C18();
  v5 = sub_54828();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "No cached data model found, requesting new snapshot.", v6, 2u);
  }

  v7 = sub_40714();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = &_swiftEmptyArrayStorage;
    v24 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted;
    v10 = v7 + 32;
    do
    {
      sub_89B8(v10, v34);
      sub_89B8(v34, &v29);
      sub_44BC(&qword_79310, &qword_5A798);
      type metadata accessor for SensitiveContentWarningListSectionModelProvider();
      if (swift_dynamicCast() && (, swift_getKeyPath(), *&v29 = v1, sub_53A28(), , (*(v1 + v24) & 1) == 0))
      {
        sub_777C(v34);
      }

      else
      {
        v12 = v35;
        v11 = v36;
        sub_7738(v34, v35);
        (*(v11 + 16))(v37, v12, v11);
        v31 = v37[2];
        v32 = v37[3];
        v33 = v38;
        v29 = v37[0];
        v30 = v37[1];
        sub_777C(v34);
        if (*(&v38 + 1))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23C20(0, *(v9 + 2) + 1, 1, v9);
          }

          v14 = *(v9 + 2);
          v13 = *(v9 + 3);
          if (v14 >= v13 >> 1)
          {
            v9 = sub_23C20((v13 > 1), v14 + 1, 1, v9);
          }

          v27 = v32;
          v28 = v33;
          v25 = v30;
          v26 = v31;
          v15 = v29;
          *(v9 + 2) = v14 + 1;
          v16 = &v9[80 * v14];
          *(v16 + 2) = v15;
          *(v16 + 5) = v27;
          *(v16 + 6) = v28;
          *(v16 + 3) = v25;
          *(v16 + 4) = v26;
        }
      }

      v10 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = &_swiftEmptyArrayStorage;
  }

  v17 = sub_C50C(v9);
  sub_3FACC(v17, v18, v19);
  swift_getKeyPath();
  *&v29 = v1;
  sub_53A28();

  v2 = *(v1 + 24);
  if (v2)
  {
LABEL_21:
    v23 = v1 + 32;
    v21 = *(v1 + 32);
    v22 = *(v23 + 8);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3F57C()
{
  v1 = v0;
  swift_getKeyPath();
  v16 = v0;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  if (*(v0 + 56))
  {
    if (qword_76FE8 != -1)
    {
      swift_once();
    }

    v3 = sub_53C38();
    sub_7700(v3, qword_7BC18);

    v4 = sub_53C18();
    v5 = sub_54828();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = *v1;
      v8 = sub_54D48();
      v10 = sub_18710(v8, v9, &v16);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_18710(0xD000000000000012, 0x800000000005EB80, &v16);
      _os_log_impl(&dword_0, v4, v5, "%s.%s: resuming url load", v6, 0x16u);
      swift_arrayDestroy();
    }

    swift_getKeyPath();
    v16 = v1;
    sub_53A28();

    v11 = v1[7];
    swift_getKeyPath();
    v16 = v1;

    sub_53A28();

    v12 = v1[8];
    v13 = v1[9];
    sub_515D4(v12);
    sub_45F0C(v11, v12, v13);
    sub_515E4(v12);

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v16 = v1;
    sub_53A18();

    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    v16 = v1;
    sub_53A18();
  }

  return result;
}

uint64_t sub_3F958()
{
  swift_getKeyPath();
  v5 = v0;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v1 = *(v0 + 24);
  v2 = *(v5 + 32);
  v3 = *(v5 + 40);
  sub_4B83C(v1);
  return v1;
}

uint64_t sub_3FA18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_4B83C(v4);
}

uint64_t sub_3FACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  if (!v8)
  {
    if (!a1)
    {
      v14 = 0;
      goto LABEL_9;
    }

LABEL_15:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
    sub_53A18();
    sub_4B7F0(a1);
  }

  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  if (!a1)
  {
    sub_4B83C(v10);

    goto LABEL_14;
  }

  sub_4B83C(v10);

  if ((sub_4C0FC(v8, a1) & 1) == 0 || (sub_4CBA8(v7, a2) & 1) == 0)
  {
    sub_4B7F0(v8);

LABEL_14:

    goto LABEL_15;
  }

  v13 = sub_4D714(v9, a3);
  sub_4B7F0(v8);

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = v3[3];
  v15 = v3[4];
  v16 = v3[5];
LABEL_9:
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;

  return sub_4B7F0(v14);
}

uint64_t sub_3FD08()
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v1 = *(v0 + 48);
}

uint64_t sub_3FDAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  *a2 = *(v3 + 48);
}

uint64_t sub_3FE58(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
    sub_53A18();
  }
}

uint64_t sub_3FF8C()
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v1 = *(v0 + 56);
}

uint64_t sub_40030@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  *a2 = *(v3 + 56);
}

uint64_t sub_400DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A18();
}

uint64_t sub_401A8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v2 = *(v0 + 64);
  v1 = *(v4 + 72);
  sub_515D4(v2);
  return v2;
}

uint64_t sub_4025C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_51924;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_515D4(v4);
}

uint64_t sub_40348(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_518FC;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_515D4(v3);
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A18();
  sub_515E4(v6);
}

uint64_t sub_404A4()
{
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  return *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted);
}

uint64_t sub_4054C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  *a2 = *(v3 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted);
  return result;
}

uint64_t sub_405FC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel__communicationSafetySetupHasCompleted) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
    sub_53A18();
  }

  return result;
}

uint64_t sub_40714()
{
  v1 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders;
  if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel____lazy_storage___sectionModelProviders);
  }

  else
  {
    v2 = sub_4077C(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_4077C(uint64_t *a1)
{
  v2 = *a1;
  sub_44BC(&qword_79318, &unk_5A7A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5A520;
  v4 = sub_40C40(a1);
  v5 = type metadata accessor for StaticPrivacyAndSecuritySettingsListSectionProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = v4;
  *(v3 + 56) = v5;
  *(v3 + 64) = &off_6EAA0;
  *(v3 + 32) = v6;
  v7 = sub_410F0(a1);
  v8 = swift_allocObject();
  *(v8 + 16) = 257;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = v7;
  *(v3 + 96) = v5;
  *(v3 + 104) = &off_6EAA0;
  *(v3 + 72) = v8;
  v9 = sub_41F90(a1);
  v10 = swift_allocObject();
  *(v10 + 16) = 258;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = v9;
  *(v3 + 136) = v5;
  *(v3 + 144) = &off_6EAA0;
  *(v3 + 112) = v10;
  v11 = sub_4339C();
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = v11;
  *(v3 + 176) = v5;
  *(v3 + 184) = &off_6EAA0;
  *(v3 + 152) = v12;
  v13 = type metadata accessor for BlockingAndSafetyCheckListSectionModelProvider();
  v14 = swift_allocObject();
  *(v14 + 16) = 4;
  *(v3 + 216) = v13;
  *(v3 + 224) = &off_6F598;
  *(v3 + 192) = v14;
  v47[3] = v2;
  v47[4] = &off_70408;
  v47[0] = a1;
  v15 = type metadata accessor for SensitiveContentWarningListSectionModelProvider();
  v16 = swift_allocObject();
  v17 = sub_50D68(v47, v2);
  v18 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v47[-1] - v19);
  (*(v21 + 16))(&v47[-1] - v19);
  v22 = *v20;

  v23 = sub_4FAC4(v22, v16);
  sub_777C(v47);
  *(v3 + 256) = v15;
  *(v3 + 264) = &off_6F758;
  *(v3 + 232) = v23;
  v24 = sub_4358C();
  v25 = swift_allocObject();
  *(v25 + 16) = 6;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0u;
  *(v25 + 72) = 0u;
  *(v25 + 88) = v24;
  *(v3 + 296) = v5;
  *(v3 + 304) = &off_6EAA0;
  *(v3 + 272) = v25;
  sub_54078();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v26 = qword_7BBF8;
  v27 = sub_541D8();
  v29 = v28;
  v31 = v30;
  v33 = v32 & 1;
  v34 = sub_436BC(a1);
  v35 = swift_allocObject();
  *(v35 + 16) = 7;
  *(v35 + 24) = v27;
  *(v35 + 32) = v29;
  *(v35 + 40) = v33;
  *(v35 + 48) = v31;
  *(v35 + 56) = 0u;
  *(v35 + 72) = 0u;
  *(v35 + 88) = v34;
  *(v3 + 336) = v5;
  *(v3 + 344) = &off_6EAA0;
  *(v3 + 312) = v35;
  sub_54078();
  v36 = sub_541D8();
  v38 = v37;
  v40 = v39;
  v42 = v41 & 1;
  v43 = sub_43BE0(a1);
  v44 = swift_allocObject();
  *(v44 + 16) = 9;
  *(v44 + 24) = v36;
  *(v44 + 32) = v38;
  *(v44 + 40) = v42;
  *(v44 + 48) = v40;
  *(v44 + 56) = 0u;
  *(v44 + 72) = 0u;
  *(v44 + 88) = v43;
  *(v3 + 376) = v5;
  *(v3 + 384) = &off_6EAA0;
  *(v3 + 352) = v44;
  return v3;
}

void *sub_40C40(uint64_t *a1)
{
  v2 = *a1;
  v29 = v2;
  v30 = &off_70408;
  *&v28 = a1;
  v3 = type metadata accessor for LocationServicesStateListItemProvider();
  v4 = objc_allocWithZone(v3);
  v5 = sub_50D68(&v28, v2);
  v6 = *(v2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v23 = *(v6 + 16);
  v24 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23(&v22 - v24);
  v8 = *(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));

  v9 = sub_4E854(v8, v4);
  sub_777C(&v28);
  v29 = v3;
  v30 = &off_6F1B0;
  *&v28 = v9;
  sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  v22 = xmmword_57A70;
  *(inited + 16) = xmmword_57A70;
  sub_50DB8(&v28, inited + 32);
  swift_getKeyPath();
  *&v25 = a1;
  sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v11 = a1[6];
  v26 = v2;
  v27 = &off_70408;
  *&v25 = a1;
  v12 = type metadata accessor for TCCAuthorizationListValueItemProvider();
  v13 = swift_allocObject();
  v14 = sub_50D68(&v25, v2);
  __chkstk_darwin(v14);
  v15 = (&v22 - v24);
  v23(&v22 - v24);
  v16 = *v15;

  v17 = sub_4F010(1u, v11, v16, v13);
  sub_777C(&v25);
  v26 = v12;
  v27 = &off_6F468;
  *&v25 = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = v22;
  sub_50DB8(&v25, v18 + 32);
  sub_44BC(&qword_79328, &qword_5A7B0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_5A530;
  *(v19 + 32) = inited;
  *(v19 + 40) = v18;
  v20 = sub_40F9C(v19);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  return v20;
}

void *sub_40F9C(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = &_swiftEmptyArrayStorage;
  for (i = result + 4; ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *i;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_23E4C(result, v9, 1, v2);
      v2 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_22;
        }

        sub_44BC(&qword_77F98, &qword_5A7C0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = v2[2];
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          v2[2] = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_410F0(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v127 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel___observationRegistrar;
  *&v159 = a1;
  v126 = sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v3 = a1[6];
  v160 = v2;
  v161 = &off_70408;
  *&v159 = a1;
  v4 = type metadata accessor for TCCAuthorizationSubtitleListItemProvider();
  v5 = swift_allocObject();
  v6 = sub_50D68(&v159, v2);
  v7 = *(v2 - 8);
  v125 = *(v7 + 64);
  __chkstk_darwin(v6);
  v123 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = (&v110 - v123);
  v10 = *(v7 + 16);
  v10(&v110 - v123);
  v124 = v10;
  v122 = v7 + 16;
  v11 = *v9;

  v12 = sub_4F604(2, v3, v11, v5);
  sub_777C(&v159);
  v160 = v4;
  v161 = &off_6F578;
  *&v159 = v12;
  v13 = sub_44BC(&qword_77F90, &qword_57CD0);
  inited = swift_initStackObject();
  v128 = xmmword_57A70;
  *(inited + 16) = xmmword_57A70;
  v119 = inited;
  sub_50DB8(&v159, inited + 32);
  swift_getKeyPath();
  *&v156 = a1;
  sub_53A28();

  v15 = a1[6];
  v157 = v2;
  v158 = &off_70408;
  *&v156 = a1;
  v120 = v4;
  v16 = swift_allocObject();
  v17 = sub_50D68(&v156, v2);
  __chkstk_darwin(v17);
  v18 = (&v110 - v123);
  v10(&v110 - v123);
  v19 = *v18;

  v20 = sub_4F604(3, v15, v19, v16);
  sub_777C(&v156);
  v157 = v4;
  v158 = &off_6F578;
  *&v156 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v128;
  v118 = v21;
  sub_50DB8(&v156, v21 + 32);
  v155 = &off_70408;
  v154 = v2;
  *&v153 = a1;
  v22 = type metadata accessor for FilesAndFoldersSubtitleListItemProvider();
  v23 = objc_allocWithZone(v22);
  v24 = v154;
  v25 = sub_50D68(&v153, v154);
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;

  v31 = sub_4E29C(v30, v23);
  sub_777C(&v153);
  v155 = &off_6EDB8;
  v154 = v22;
  *&v153 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v128;
  v117 = v32;
  sub_50DB8(&v153, v32 + 32);
  swift_getKeyPath();
  *&v150 = a1;
  sub_53A28();

  v33 = a1[6];
  v151 = v2;
  v152 = &off_70408;
  *&v150 = a1;
  v34 = v120;
  v35 = swift_allocObject();
  v36 = sub_50D68(&v150, v2);
  __chkstk_darwin(v36);
  v37 = (&v110 - v123);
  v124(&v110 - v123);
  v38 = *v37;

  v39 = sub_4F604(15, v33, v38, v35);
  sub_777C(&v150);
  v151 = v34;
  v152 = &off_6F578;
  *&v150 = v39;
  v121 = v13;
  v40 = swift_allocObject();
  *(v40 + 16) = v128;
  v116 = v40;
  sub_50DB8(&v150, v40 + 32);
  v148 = v2;
  v149 = &off_70408;
  *&v147 = a1;
  v41 = type metadata accessor for HealthDataListItemProvider();
  v42 = objc_allocWithZone(v41);
  v43 = v148;
  v44 = sub_50D68(&v147, v148);
  v45 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v44);
  v47 = (&v110 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v47;

  v50 = sub_4E4F0(v49, v42);
  sub_777C(&v147);
  v148 = v41;
  v149 = &off_6F008;
  *&v147 = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = v128;
  v115 = v51;
  sub_50DB8(&v147, v51 + 32);
  swift_getKeyPath();
  *&v144 = a1;
  sub_53A28();

  v52 = a1[6];
  v145 = v2;
  v146 = &off_70408;
  *&v144 = a1;
  v53 = v120;
  v54 = swift_allocObject();
  v55 = sub_50D68(&v144, v2);
  __chkstk_darwin(v55);
  v56 = v123;
  v124(&v110 - v123);
  v57 = *(&v110 - v56);

  v58 = sub_4F604(16, v52, v57, v54);
  sub_777C(&v144);
  v145 = v53;
  v146 = &off_6F578;
  *&v144 = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = v128;
  v114 = v59;
  sub_50DB8(&v144, v59 + 32);
  swift_getKeyPath();
  *&v141 = a1;
  sub_53A28();

  v60 = a1[6];
  v142 = v2;
  v143 = &off_70408;
  *&v141 = a1;
  v61 = swift_allocObject();
  v62 = sub_50D68(&v141, v2);
  __chkstk_darwin(v62);
  v63 = v124;
  v124(&v110 - v56);
  v64 = *(&v110 - v56);

  v65 = sub_4F604(6, v60, v64, v61);
  sub_777C(&v141);
  v142 = v53;
  v143 = &off_6F578;
  *&v141 = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = v128;
  v113 = v66;
  sub_50DB8(&v141, v66 + 32);
  swift_getKeyPath();
  *&v138 = a1;
  sub_53A28();

  v67 = a1[6];
  v139 = v2;
  v140 = &off_70408;
  *&v138 = a1;
  v68 = swift_allocObject();
  v69 = sub_50D68(&v138, v2);
  __chkstk_darwin(v69);
  v70 = v123;
  v63(&v110 - v123);
  v71 = *(&v110 - v70);

  v72 = sub_4F604(22, v67, v71, v68);
  sub_777C(&v138);
  v73 = v120;
  v139 = v120;
  v140 = &off_6F578;
  *&v138 = v72;
  v74 = swift_allocObject();
  *(v74 + 16) = v128;
  v112 = v74;
  sub_50DB8(&v138, v74 + 32);
  swift_getKeyPath();
  *&v135 = a1;
  sub_53A28();

  v75 = a1[6];
  v136 = v2;
  v137 = &off_70408;
  *&v135 = a1;
  v76 = swift_allocObject();
  v77 = sub_50D68(&v135, v2);
  __chkstk_darwin(v77);
  v124(&v110 - v70);
  v78 = *(&v110 - v70);

  v79 = sub_4F604(8, v75, v78, v76);
  sub_777C(&v135);
  v136 = v73;
  v137 = &off_6F578;
  *&v135 = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = v128;
  v111 = v80;
  sub_50DB8(&v135, v80 + 32);
  swift_getKeyPath();
  *&v132 = a1;
  sub_53A28();

  v81 = a1[6];
  v133 = v2;
  v134 = &off_70408;
  *&v132 = a1;
  v82 = swift_allocObject();
  v83 = sub_50D68(&v132, v2);
  __chkstk_darwin(v83);
  v84 = (&v110 - v123);
  v124(&v110 - v123);
  v85 = *v84;

  v86 = sub_4F604(9, v81, v85, v82);
  sub_777C(&v132);
  v133 = v73;
  v134 = &off_6F578;
  *&v132 = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = v128;
  sub_50DB8(&v132, v87 + 32);
  v88 = [objc_opt_self() currentDevice];
  LODWORD(v85) = [v88 sf_isiPhone];

  if (v85)
  {
    swift_getKeyPath();
    *&v129 = a1;
    sub_53A28();

    v89 = a1[6];
    v130 = v2;
    v131 = &off_70408;
    *&v129 = a1;
    v90 = swift_allocObject();
    v91 = sub_50D68(&v129, v2);
    __chkstk_darwin(v91);
    v92 = (&v110 - v123);
    v124(&v110 - v123);
    v93 = *v92;

    v94 = sub_4F604(26, v89, v93, v90);
    sub_777C(&v129);
    v130 = v73;
    v131 = &off_6F578;
    *&v129 = v94;
    v95 = swift_allocObject();
    *(v95 + 16) = v128;
    sub_50DB8(&v129, v95 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v96 = swift_allocObject();
    *(v96 + 16) = v128;
    *(v96 + 32) = v95;
    v97 = v96 + 32;
    v98 = sub_40F9C(v96);
    swift_setDeallocating();
    sub_47F8(v97, &qword_79330, &qword_5A7B8);
    swift_deallocClassInstance();
  }

  else
  {
    v98 = &_swiftEmptyArrayStorage;
  }

  sub_44BC(&qword_79328, &qword_5A7B0);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_5A540;
  v100 = v118;
  *(v99 + 32) = v119;
  v102 = v116;
  v101 = v117;
  *(v99 + 40) = v100;
  *(v99 + 48) = v101;
  v104 = v114;
  v103 = v115;
  *(v99 + 56) = v102;
  *(v99 + 64) = v103;
  v106 = v112;
  v105 = v113;
  *(v99 + 72) = v104;
  *(v99 + 80) = v105;
  v107 = v111;
  *(v99 + 88) = v106;
  *(v99 + 96) = v107;
  *(v99 + 104) = v87;
  *(v99 + 112) = v98;
  v108 = sub_40F9C(v99);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v108;
}

void *sub_41F90(uint64_t a1)
{
  v2 = *a1;
  v187 = &type metadata for AccessoriesFeatureFlags;
  v188 = sub_50F58();
  v3 = sub_53A58();
  sub_777C(&v186);
  if (v3)
  {
    v187 = v2;
    v188 = &off_70408;
    *&v186 = a1;
    v4 = type metadata accessor for AccessoriesListItemProvider();
    v5 = objc_allocWithZone(v4);
    v6 = v187;
    v7 = sub_50D68(&v186, v187);
    v8 = *(v6[-1].Description + 8);
    __chkstk_darwin(v7);
    v10 = (&v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;

    v13 = sub_4E0D4(v12, v5);
    sub_777C(&v186);
    v187 = v4;
    v188 = &off_6EBD0;
    *&v186 = v13;
    sub_44BC(&qword_77F90, &qword_57CD0);
    v14 = swift_allocObject();
    v164 = xmmword_57A70;
    *(v14 + 16) = xmmword_57A70;
    sub_50DB8(&v186, v14 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v15 = swift_allocObject();
    *(v15 + 16) = v164;
    *(v15 + 32) = v14;
    v16 = v15 + 32;
    v155 = sub_40F9C(v15);
    swift_setDeallocating();
    sub_47F8(v16, &qword_79330, &qword_5A7B8);
    swift_deallocClassInstance();
  }

  else
  {
    v155 = &_swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  v162 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39PrivacyAndSecuritySettingsListViewModel___observationRegistrar;
  *&v186 = a1;
  v161 = sub_4B704(&qword_78C28, type metadata accessor for PrivacyAndSecuritySettingsListViewModel);
  sub_53A28();

  v17 = *(a1 + 48);
  v187 = v2;
  v188 = &off_70408;
  *&v186 = a1;
  v18 = type metadata accessor for TCCAuthorizationListValueItemProvider();
  v19 = swift_allocObject();
  v20 = sub_50D68(&v186, v2);
  v157 = *(v2[-1].Description + 8);
  __chkstk_darwin(v20);
  v156 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (&v144 - v156);
  v24 = *(v23 + 16);
  v160 = v23 + 16;
  v24(&v144 - v156);
  v25 = *v22;

  v26 = v25;
  v27 = v24;
  v28 = sub_4F010(0xBu, v17, v26, v19);
  sub_777C(&v186);
  v187 = v18;
  v188 = &off_6F468;
  v158 = v18;
  *&v186 = v28;
  v163 = sub_44BC(&qword_77F90, &qword_57CD0);
  v29 = swift_allocObject();
  v164 = xmmword_57A70;
  *(v29 + 16) = xmmword_57A70;
  v154 = v29;
  sub_50DB8(&v186, v29 + 32);
  swift_getKeyPath();
  *&v183 = a1;
  sub_53A28();

  v30 = *(a1 + 48);
  v184 = v2;
  v185 = &off_70408;
  *&v183 = a1;
  v31 = swift_allocObject();
  v32 = sub_50D68(&v183, v2);
  __chkstk_darwin(v32);
  v33 = a1;
  v34 = v156;
  v159 = v27;
  v27(&v144 - v156);
  v35 = *(&v144 - v34);

  v36 = sub_4F010(0xCu, v30, v35, v31);
  sub_777C(&v183);
  v184 = v158;
  v185 = &off_6F468;
  *&v183 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = v164;
  v153 = v37;
  sub_50DB8(&v183, v37 + 32);
  v181 = v2;
  v182 = &off_70408;
  *&v180 = v33;
  v38 = type metadata accessor for CriticalMessagesListItemProvider();
  v39 = swift_allocObject();
  v40 = sub_50D68(&v180, v2);
  __chkstk_darwin(v40);
  v41 = (&v144 - v34);
  v42 = v33;
  v27(v41);
  v43 = *v41;
  v178 = v2;
  v179 = &off_70408;
  *&v177 = v43;
  *(v39 + 16) = 13;
  *(v39 + 24) = 0;
  *(v39 + 32) = &_swiftEmptySetSingleton;
  sub_89B8(&v177, v39 + 40);

  sub_11430();
  sub_777C(&v177);
  sub_777C(&v180);
  v181 = v38;
  v182 = &off_6ED70;
  *&v180 = v39;
  v44 = swift_allocObject();
  *(v44 + 16) = v164;
  v152 = v44;
  sub_50DB8(&v180, v44 + 32);
  v178 = v2;
  v179 = &off_70408;
  *&v177 = v33;
  v45 = type metadata accessor for PairedDevicesListValueItemProvider();
  v46 = swift_allocObject();
  v47 = sub_50D68(&v177, v2);
  __chkstk_darwin(v47);
  v48 = (&v144 - v156);
  v49 = v159;
  v159(&v144 - v156);
  v50 = *v48;

  v51 = sub_4EAEC(v50, v46);
  sub_777C(&v177);
  v178 = v45;
  v179 = &off_6F2C0;
  *&v177 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = v164;
  v151 = v52;
  sub_50DB8(&v177, v52 + 32);
  v53 = objc_opt_self();
  if ([v53 isContactlessTCCServiceEligible])
  {
    v54 = v49;
    swift_getKeyPath();
    v150 = v53;
    *&v174 = v42;
    sub_53A28();

    v55 = *(v42 + 48);
    v175 = v2;
    v176 = &off_70408;
    *&v174 = v42;
    v56 = v158;
    v57 = swift_allocObject();
    v58 = sub_50D68(&v174, v2);
    __chkstk_darwin(v58);
    v59 = (&v144 - v156);
    v54(&v144 - v156);
    v60 = *v59;

    v61 = sub_4F010(0xEu, v55, v60, v57);
    sub_777C(&v174);
    v175 = v56;
    v176 = &off_6F468;
    *&v174 = v61;
    v62 = swift_allocObject();
    *(v62 + 16) = v164;
    sub_50DB8(&v174, v62 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v63 = swift_allocObject();
    *(v63 + 16) = v164;
    *(v63 + 32) = v62;
    v64 = v63 + 32;
    v156 = sub_40F9C(v63);
    swift_setDeallocating();
    sub_47F8(v64, &qword_79330, &qword_5A7B8);
    v53 = v150;
    swift_deallocClassInstance();
  }

  else
  {
    v156 = &_swiftEmptyArrayStorage;
  }

  if ([v53 isSecureElementTCCServiceEligible])
  {
    swift_getKeyPath();
    *&v174 = v42;
    sub_53A28();

    v65 = *(v42 + 48);
    v175 = v2;
    v176 = &off_70408;
    *&v174 = v42;
    v66 = v158;
    v67 = swift_allocObject();
    v68 = sub_50D68(&v174, v2);
    v69 = v157;
    __chkstk_darwin(v68);
    v159(&v144 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    v70 = *(&v144 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));

    v71 = sub_4F010(0x18u, v65, v70, v67);
    sub_777C(&v174);
    v175 = v66;
    v176 = &off_6F468;
    *&v174 = v71;
    v72 = swift_allocObject();
    *(v72 + 16) = v164;
    sub_50DB8(&v174, v72 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v73 = swift_allocObject();
    *(v73 + 16) = v164;
    *(v73 + 32) = v72;
    v74 = v73 + 32;
    v150 = sub_40F9C(v73);
    swift_setDeallocating();
    v75 = v69;
    sub_47F8(v74, &qword_79330, &qword_5A7B8);
    swift_deallocClassInstance();
    v76 = v2;
  }

  else
  {
    v150 = &_swiftEmptyArrayStorage;
    v76 = v2;
    v75 = v157;
  }

  v175 = v76;
  v176 = &off_70408;
  *&v174 = v42;
  v77 = type metadata accessor for LocalNetworkListValueItemProvider();
  v78 = swift_allocObject();
  v79 = sub_50D68(&v174, v76);
  __chkstk_darwin(v79);
  v148 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = (&v144 - v148);
  v159(&v144 - v148);
  v81 = *v80;
  v172 = v76;
  v173 = &off_70408;
  *&v171 = v81;
  *(v78 + 24) = 0;
  *(v78 + 32) = &_swiftEmptySetSingleton;
  v82 = objc_opt_self();

  *(v78 + 40) = [v82 sharedManagerForAllUsers];
  *(v78 + 16) = 18;
  sub_89B8(&v171, v78 + 48);
  sub_17558();
  sub_777C(&v171);
  sub_777C(&v174);
  v175 = v77;
  v176 = &off_6F0A0;
  *&v174 = v78;
  v83 = swift_allocObject();
  *(v83 + 16) = v164;
  v149 = v83;
  sub_50DB8(&v174, v83 + 32);
  swift_getKeyPath();
  *&v171 = v42;
  sub_53A28();

  v84 = *(v42 + 48);
  v172 = v76;
  v173 = &off_70408;
  *&v171 = v42;
  v85 = v158;
  v86 = swift_allocObject();
  v87 = sub_50D68(&v171, v76);
  __chkstk_darwin(v87);
  v88 = (&v144 - v148);
  v146 = v76;
  v159(&v144 - v148);
  v89 = *v88;

  v90 = sub_4F010(0x13u, v84, v89, v86);
  sub_777C(&v171);
  v172 = v85;
  v173 = &off_6F468;
  *&v171 = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = v164;
  v148 = v91;
  sub_50DB8(&v171, v91 + 32);
  if (PSIsInEDUMode() & 1) != 0 || (v92 = [objc_opt_self() currentDevice], v93 = objc_msgSend(v92, "sf_inRetailKioskMode"), v92, (v93))
  {
    v147 = &_swiftEmptyArrayStorage;
    v94 = v146;
  }

  else
  {
    swift_getKeyPath();
    *&v168 = v42;
    sub_53A28();

    v95 = *(v42 + 48);
    v94 = v146;
    p_Kind = v146;
    v170 = &off_70408;
    *&v168 = v42;
    v96 = swift_allocObject();
    v97 = sub_50D68(&v168, v94);
    __chkstk_darwin(v97);
    v99 = (&v144 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
    v159(v99);
    v100 = *v99;

    v101 = sub_4F010(0x14u, v95, v100, v96);
    sub_777C(&v168);
    p_Kind = &v85->Kind;
    v170 = &off_6F468;
    *&v168 = v101;
    v102 = swift_allocObject();
    *(v102 + 16) = v164;
    sub_50DB8(&v168, v102 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v103 = swift_allocObject();
    *(v103 + 16) = v164;
    *(v103 + 32) = v102;
    v104 = v103 + 32;
    v147 = sub_40F9C(v103);
    swift_setDeallocating();
    sub_47F8(v104, &qword_79330, &qword_5A7B8);
    swift_deallocClassInstance();
  }

  v105 = [objc_opt_self() currentDevice];
  v106 = [v105 userInterfaceIdiom];

  if (v106)
  {
    v146 = &_swiftEmptyArrayStorage;
    v107 = v157;
    v108 = v158;
  }

  else
  {
    swift_getKeyPath();
    *&v168 = v42;
    sub_53A28();

    v109 = *(v42 + 48);
    p_Kind = v94;
    v170 = &off_70408;
    *&v168 = v42;
    v110 = v158;
    v111 = swift_allocObject();
    v112 = sub_50D68(&v168, v94);
    v146 = &v144;
    v107 = v157;
    __chkstk_darwin(v112);
    v145 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
    v113 = (&v144 - v145);
    v114 = v159;
    v159(&v144 - v145);
    v115 = *v113;

    v116 = sub_4F010(0x15u, v109, v115, v111);
    sub_777C(&v168);
    p_Kind = &v110->Kind;
    v170 = &off_6F468;
    *&v168 = v116;
    v117 = swift_allocObject();
    v146 = v117;
    *(v117 + 16) = v164;
    sub_50DB8(&v168, v117 + 32);
    v166 = v94;
    v167 = &off_70408;
    *&v165 = v42;
    v118 = type metadata accessor for ResearchSensorUsageDataListValueItemProvider();
    v119 = swift_allocObject();
    v120 = sub_50D68(&v165, v94);
    v144 = &v144;
    __chkstk_darwin(v120);
    v121 = (&v144 - v145);
    v114(&v144 - v145);
    v122 = *v121;

    v123 = sub_4EC58(v122, v119);
    sub_777C(&v165);
    v166 = v118;
    v167 = &off_6F308;
    *&v165 = v123;
    v124 = swift_allocObject();
    *(v124 + 16) = v164;
    sub_50DB8(&v165, v124 + 32);
    sub_44BC(&qword_79328, &qword_5A7B0);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_5A530;
    *(v125 + 32) = v146;
    *(v125 + 40) = v124;
    v146 = sub_40F9C(v125);
    swift_setDeallocating();
    sub_44BC(&qword_79330, &qword_5A7B8);
    v108 = v158;
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  swift_getKeyPath();
  *&v168 = v42;
  sub_53A28();

  v126 = *(v42 + 48);
  p_Kind = v94;
  v170 = &off_70408;
  *&v168 = v42;
  v127 = swift_allocObject();
  v128 = sub_50D68(&v168, v94);
  __chkstk_darwin(v128);
  v159(&v144 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = *(&v144 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));

  v130 = sub_4F010(0x19u, v126, v129, v127);
  sub_777C(&v168);
  p_Kind = &v108->Kind;
  v170 = &off_6F468;
  *&v168 = v130;
  v131 = swift_allocObject();
  *(v131 + 16) = v164;
  sub_50DB8(&v168, v131 + 32);
  sub_44BC(&qword_79328, &qword_5A7B0);
  v132 = swift_allocObject();
  v133 = v154;
  *(v132 + 32) = v155;
  *(v132 + 16) = xmmword_5A550;
  v135 = v152;
  v134 = v153;
  *(v132 + 40) = v133;
  *(v132 + 48) = v134;
  v136 = v151;
  *(v132 + 56) = v135;
  *(v132 + 64) = v136;
  v138 = v149;
  v137 = v150;
  *(v132 + 72) = v156;
  *(v132 + 80) = v137;
  v140 = v147;
  v139 = v148;
  *(v132 + 88) = v138;
  *(v132 + 96) = v139;
  v141 = v146;
  *(v132 + 104) = v140;
  *(v132 + 112) = v141;
  *(v132 + 120) = v131;
  v142 = sub_40F9C(v132);
  swift_setDeallocating();
  sub_44BC(&qword_79330, &qword_5A7B8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v142;
}