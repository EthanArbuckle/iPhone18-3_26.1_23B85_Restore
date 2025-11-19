uint64_t sub_10006A2E0(_BYTE *a1)
{
  v3 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v6 = (*a1 & 1) == 0;
  return sub_10008CEDC();
}

unint64_t sub_10006A364()
{
  result = qword_1000CDAB0;
  if (!qword_1000CDAB0)
  {
    sub_100007108(&qword_1000CDAA8, &qword_1000955A8);
    sub_10006A3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDAB0);
  }

  return result;
}

unint64_t sub_10006A3F0()
{
  result = qword_1000CDAB8;
  if (!qword_1000CDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDAB8);
  }

  return result;
}

uint64_t sub_10006A444(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CDA68, &qword_100095570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A4C4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_10006A54C()
{
  v1 = type metadata accessor for AddDevicesToADEExtensionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10008D01C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  v14 = (v5 + v1[10]);
  if (v14[1])
  {

    v15 = v14[2];
  }

  v16 = v14[3];

  v17 = v1[11];
  v18 = sub_10008C9BC();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);
  v19 = *(v5 + v1[12]);

  v20 = *(v5 + v1[13]);

  v21 = *(v5 + v1[14]);
  swift_unknownObjectRelease();
  sub_10000BC74((v5 + v1[15]));
  v22 = *(v5 + v1[16]);
  swift_unknownObjectRelease();
  sub_10000BC74((v5 + v1[17]));
  sub_10000BC74((v5 + v1[18]));
  sub_10000BC74((v5 + v1[19]));
  sub_10000BC74((v5 + v1[20]));
  sub_10000BC74((v5 + v1[21]));
  sub_10000BC74((v5 + v1[22]));
  sub_10000BC74((v5 + v1[23]));
  v23 = *(v5 + v1[24]);

  v24 = *(v5 + v1[25]);

  v25 = *(v5 + v1[26]);

  v26 = *(v5 + v1[27]);

  v27 = *(v5 + v1[28]);

  v28 = *(v5 + v1[29]);

  v29 = *(v5 + v1[30]);

  v30 = *(v5 + v1[31]);

  v31 = *(v5 + v1[32] + 8);

  v32 = *(v5 + v1[33] + 8);

  v33 = *(v5 + v1[34] + 8);

  v34 = *(v5 + v1[35] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10006A85C()
{
  result = qword_1000CDAD8;
  if (!qword_1000CDAD8)
  {
    sub_100007108(&qword_1000CDAD0, &qword_1000955C0);
    sub_10006B910(&qword_1000CDAE0, &qword_1000CDAE8, &qword_1000955C8, sub_10006A914);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDAD8);
  }

  return result;
}

unint64_t sub_10006A914()
{
  result = qword_1000CDAF0;
  if (!qword_1000CDAF0)
  {
    sub_100007108(&qword_1000CDAF8, &qword_1000955D0);
    sub_10000D4D0();
    sub_10001121C(&qword_1000CDB08, &qword_1000CDB10, &qword_1000955D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDAF0);
  }

  return result;
}

unint64_t sub_10006A9E4()
{
  result = qword_1000CDB48;
  if (!qword_1000CDB48)
  {
    sub_100007108(&qword_1000CDB40, &qword_1000955F8);
    sub_100065F38(&unk_1000CDB50, type metadata accessor for DeviceStatusView);
    sub_10001121C(&qword_1000CA0A8, &unk_1000CDB60, &qword_100095600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDB48);
  }

  return result;
}

uint64_t sub_10006AACC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100062EB4(v4, a1);
}

unint64_t sub_10006AB3C()
{
  result = qword_1000CDB70;
  if (!qword_1000CDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDB70);
  }

  return result;
}

uint64_t sub_10006ABA8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10006AD40(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10006ADB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000629CC(v4, a1);
}

uint64_t sub_10006AE3C()
{
  v1 = type metadata accessor for AddDevicesToADEExtensionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[5];

  v7 = v0[6];

  v8 = v0 + v3;
  v9 = *(v0 + v3);

  v10 = v1[5];
  sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10008D01C();
    (*(*(v11 - 8) + 8))(&v8[v10], v11);
  }

  else
  {
    v12 = *&v8[v10];
  }

  v13 = *&v8[v1[6] + 8];

  v14 = *&v8[v1[7] + 8];

  v15 = *&v8[v1[8] + 8];

  v16 = *&v8[v1[9] + 8];

  v17 = &v8[v1[10]];
  if (*(v17 + 1))
  {

    v18 = *(v17 + 2);
  }

  v19 = *(v17 + 3);

  v20 = v1[11];
  v21 = sub_10008C9BC();
  (*(*(v21 - 8) + 8))(&v8[v20], v21);
  v22 = *&v8[v1[12]];

  v23 = *&v8[v1[13]];

  v24 = *&v8[v1[14]];
  swift_unknownObjectRelease();
  sub_10000BC74(&v8[v1[15]]);
  v25 = *&v8[v1[16]];
  swift_unknownObjectRelease();
  sub_10000BC74(&v8[v1[17]]);
  sub_10000BC74(&v8[v1[18]]);
  sub_10000BC74(&v8[v1[19]]);
  sub_10000BC74(&v8[v1[20]]);
  sub_10000BC74(&v8[v1[21]]);
  sub_10000BC74(&v8[v1[22]]);
  sub_10000BC74(&v8[v1[23]]);
  v26 = *&v8[v1[24]];

  v27 = *&v8[v1[25]];

  v28 = *&v8[v1[26]];

  v29 = *&v8[v1[27]];

  v30 = *&v8[v1[28]];

  v31 = *&v8[v1[29]];

  v32 = *&v8[v1[30]];

  v33 = *&v8[v1[31]];

  v34 = *&v8[v1[32] + 8];

  v35 = *&v8[v1[33] + 8];

  v36 = *&v8[v1[34] + 8];

  v37 = *&v8[v1[35] + 8];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006B14C(uint64_t a1)
{
  v4 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000E290;

  return sub_1000651A4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10006B258()
{
  v1 = sub_10008C9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006B31C(uint64_t a1)
{
  v4 = *(sub_10008C9BC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E290;

  return sub_1000203C4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10006B40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006B470(uint64_t a1)
{
  v4 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E290;

  return sub_100064544(a1, v6, v7, v1 + v5);
}

uint64_t sub_10006B560()
{
  v1 = sub_10008C9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10006B63C(uint64_t a1)
{
  v4 = *(sub_10008C9BC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000E290;

  return sub_100020198(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_10006B774()
{
  result = qword_1000CDBE8;
  if (!qword_1000CDBE8)
  {
    sub_100007108(&qword_1000CDBD8, &qword_100095710);
    sub_10006B82C();
    sub_10001121C(&qword_1000CDC28, &unk_1000CDC30, &qword_100095738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDBE8);
  }

  return result;
}

unint64_t sub_10006B82C()
{
  result = qword_1000CDBF0;
  if (!qword_1000CDBF0)
  {
    sub_100007108(&qword_1000CDBF8, &qword_100095720);
    sub_10006B910(&qword_1000CDC00, &qword_1000CDC08, &qword_100095728, sub_10006B9C0);
    sub_10001121C(&qword_1000CDC18, &qword_1000CDC20, &qword_100095730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDBF0);
  }

  return result;
}

uint64_t sub_10006B910(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    a4();
    sub_10001121C(&qword_1000CDB18, &qword_1000CDB20, &unk_1000955E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006B9C0()
{
  result = qword_1000CDC10;
  if (!qword_1000CDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDC10);
  }

  return result;
}

uint64_t sub_10006BB38()
{
  sub_100007108(&qword_1000CDA88, &qword_100095590);
  sub_100007108(&qword_1000CDB78, &qword_100095608);
  sub_100007108(&qword_1000CDA80, &qword_100095588);
  sub_100007108(&qword_1000CDA78, &qword_100095580);
  sub_100007108(&qword_1000CDB38, &qword_1000955F0);
  sub_100007108(&qword_1000CDA70, &qword_100095578);
  sub_100007108(&qword_1000CDAC0, &qword_1000955B0);
  sub_100007108(&qword_1000CDA68, &qword_100095570);
  sub_100007108(&qword_1000CDA98, &qword_1000955A0);
  sub_10001121C(&qword_1000CDAA0, &qword_1000CDA68, &qword_100095570);
  sub_100007108(&qword_1000CDAA8, &qword_1000955A8);
  sub_10006A364();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100007108(&qword_1000CDAC8, &qword_1000955B8);
  sub_100007108(&qword_1000CDAD0, &qword_1000955C0);
  type metadata accessor for ErrorInfo();
  sub_10006A85C();
  sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100007108(&qword_1000CDB40, &qword_1000955F8);
  sub_10006A9E4();
  sub_100059828();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10006AB3C();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for SettingsView();
  sub_100065F38(&qword_1000CDB80, type metadata accessor for SettingsView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006BF54()
{
  v1 = sub_100009C08(&qword_1000CD808, &unk_100095410);
  v2 = *(v1 - 8);
  v107 = v1;
  v108 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v106 = &v83 - v4;
  v5 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v102 = &v83 - v7;
  v8 = sub_100009C08(&qword_1000CDD20, &unk_100095810);
  v9 = *(v8 - 8);
  v104 = v8;
  v105 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v103 = &v83 - v11;
  v12 = sub_100009C08(&qword_1000CAA60, &qword_100091D70);
  v100 = *(v12 - 8);
  v101 = v12;
  v13 = v100[8];
  __chkstk_darwin(v12);
  v99 = &v83 - v14;
  v15 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v97 = *(v15 - 8);
  v98 = v15;
  v16 = *(v97 + 64);
  __chkstk_darwin(v15);
  v95 = &v83 - v17;
  v18 = sub_100009C08(&qword_1000CAA58, &unk_100091D60);
  v93 = *(v18 - 8);
  v94 = v18;
  v19 = *(v93 + 64);
  __chkstk_darwin(v18);
  v92 = &v83 - v20;
  v21 = sub_100009C08(&qword_1000CAA50, &unk_100095820);
  v90 = *(v21 - 8);
  v91 = v21;
  v22 = *(v90 + 64);
  __chkstk_darwin(v21);
  v89 = &v83 - v23;
  v24 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  v87 = *(v24 - 8);
  v88 = v24;
  v25 = *(v87 + 64);
  __chkstk_darwin(v24);
  v86 = &v83 - v26;
  v27 = sub_100009C08(&qword_1000CAA48, &unk_100095830);
  v84 = *(v27 - 8);
  v85 = v27;
  v28 = *(v84 + 64);
  __chkstk_darwin(v27);
  v30 = &v83 - v29;
  v83 = sub_100009C08(&qword_1000CAA40, &unk_100091D40);
  v31 = *(v83 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v83);
  v34 = &v83 - v33;
  v35 = sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v83 - v38;
  sub_10000BE8C(v0 + 168, v128);
  v110 = *(v0 + 16);
  sub_10000BE8C(v0 + 32, v127);
  sub_10000BE8C(v0 + 72, v124);
  v40 = v110;
  v109 = *(v0 + 112);
  sub_10000BE8C(v0 + 128, v121);
  v41 = type metadata accessor for SettingsViewModel();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  *(v44 + 16) = &_swiftEmptyArrayStorage;
  v111 = v44 + 16;
  v45 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__account;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v114 = 0u;
  v96 = v40;
  swift_unknownObjectRetain();
  v112 = v109;
  swift_unknownObjectRetain();
  sub_100009C08(&unk_1000C90E8, &qword_10008F350);
  sub_10008CD7C();
  (*(v36 + 32))(v44 + v45, v39, v35);
  v46 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__wifiNetworkStatus;
  LOBYTE(v114) = 0;
  sub_10008CD7C();
  (*(v31 + 32))(v44 + v46, v34, v83);
  v47 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__networkType;
  LOBYTE(v114) = 0;
  sub_10008CD7C();
  (*(v84 + 32))(v44 + v47, v30, v85);
  v48 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__currentMDMServerInfo;
  v114 = xmmword_1000952E0;
  v115 = 0uLL;
  LOBYTE(v116) = 0;
  sub_100009C08(&unk_1000CD8B0, &qword_100090200);
  v49 = v86;
  sub_10008CD7C();
  (*(v87 + 32))(v44 + v48, v49, v88);
  v50 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__mdmServerSelected;
  LOBYTE(v116) = 0;
  v114 = 0u;
  v115 = 0u;
  sub_100009C08(&qword_1000CA6B8, &unk_1000918A8);
  v51 = v89;
  sub_10008CD7C();
  (*(v90 + 32))(v44 + v50, v51, v91);
  v52 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__currentNetworkName;
  v114 = 0uLL;
  sub_100009C08(&qword_1000C92F0, &qword_10008F430);
  v53 = v92;
  sub_10008CD7C();
  v54 = v94;
  v55 = *(v93 + 32);
  v55(v44 + v52, v53, v94);
  v56 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__networkProfileName;
  v114 = 0uLL;
  sub_10008CD7C();
  v55(v44 + v56, v53, v54);
  v57 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__isSignOutInProgress;
  LOBYTE(v114) = 0;
  v58 = v95;
  sub_10008CD7C();
  v59 = v98;
  v60 = *(v97 + 32);
  v60(v44 + v57, v58, v98);
  v61 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__isFetchingMDMServerInProgress;
  LOBYTE(v114) = 0;
  sub_10008CD7C();
  v60(v44 + v61, v58, v59);
  v62 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension17SettingsViewModel__serverSelectionSearchText;
  *&v114 = 0;
  *(&v114 + 1) = 0xE000000000000000;
  v63 = v99;
  sub_10008CD7C();
  (v100[4])(v44 + v62, v63, v101);
  sub_10000BE8C(v128, v44 + 24);
  *(v44 + 64) = v110;
  sub_10000BE8C(v127, v44 + 80);
  sub_10000BE8C(v124, v44 + 120);
  *(v44 + 160) = v109;
  sub_10000BE8C(v121, v44 + 176);
  v64 = v125;
  v65 = v126;
  sub_10000BB24(v124, v125);
  v66 = *(v65 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v114 = v66(v64, v65);
  v97 = sub_1000167AC();
  v67 = sub_10008DE7C();
  v113 = v67;
  *&v109 = sub_10008DE6C();
  v68 = *(v109 - 8);
  v101 = *(v68 + 56);
  *&v110 = v68 + 56;
  v69 = v102;
  v101(v102, 1, 1, v109);
  sub_100009C08(&qword_1000CD838, &qword_100095420);
  v100 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10001121C(&qword_1000CD848, &qword_1000CD838, &qword_100095420);
  v99 = sub_1000590C8();
  v70 = v103;
  sub_10008CE0C();
  sub_100016840(v69);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v44;
  v98 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001121C(&qword_1000CDD28, &qword_1000CDD20, &unk_100095810);
  v71 = v104;
  sub_10008CE1C();

  (*(v105 + 8))(v70, v71);
  swift_beginAccess();
  v105 = sub_100009C08(&qword_1000CAF40, &unk_100095840);
  v104 = sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840);
  sub_10008CCEC();
  swift_endAccess();

  v72 = v129;
  v73 = v130;
  sub_10000BB24(v128, v129);
  *&v114 = (*(v73 + 24))(v72, v73);
  v74 = sub_10008DE7C();
  v113 = v74;
  v101(v69, 1, 1, v109);
  sub_100009C08(&unk_1000CD820, &unk_100094D30);
  sub_10001121C(&qword_1000CD180, &unk_1000CD820, &unk_100094D30);
  v75 = v106;
  sub_10008CE0C();
  sub_100016840(v69);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v44;
  sub_10001121C(&qword_1000CD830, &qword_1000CD808, &unk_100095410);
  v76 = v107;
  sub_10008CE1C();

  (*(v108 + 8))(v75, v76);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v77 = v122;
  v78 = v123;
  sub_10000BB24(v121, v122);
  v79 = (*(v78 + 8))(v77, v78);
  v81 = v80;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v114 = v79;
  *(&v114 + 1) = v81;

  sub_10008CDBC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10000BC74(v127);
  sub_10000BC74(v121);
  sub_10000BC74(v124);
  sub_10000BC74(v128);
  return v44;
}

uint64_t sub_10006CD7C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000BC74(v0 + 4);
  sub_10000BC74(v0 + 9);
  v2 = v0[14];
  swift_unknownObjectRelease();
  sub_10000BC74(v0 + 16);
  sub_10000BC74(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_10006CE00()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10006CE48@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10006CECC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

void *sub_10006CF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v41 = a11;
  v42 = a17;
  v22 = sub_10000F5C0(&v40);
  (*(*(a11 - 8) + 32))(v22, a2, a11);
  v38 = a9;
  v39 = a15;
  v23 = sub_10000F5C0(&v37);
  (*(*(a9 - 8) + 32))(v23, a3, a9);
  v35 = a10;
  v36 = a16;
  v24 = sub_10000F5C0(&v34);
  (*(*(a10 - 8) + 32))(v24, a5, a10);
  v32 = a13;
  v33 = a19;
  v25 = sub_10000F5C0(&v31);
  (*(*(a13 - 8) + 32))(v25, a6, a13);
  type metadata accessor for SettingsViewModelProvider();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a14;
  sub_10000C3E0(&v40, (v26 + 4));
  sub_10000C3E0(&v37, (v26 + 9));
  v26[14] = a4;
  v26[15] = a18;
  sub_10000C3E0(&v34, (v26 + 16));
  sub_10000C3E0(&v31, (v26 + 21));
  return v26;
}

uint64_t sub_10006D124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_10008DDBC();
  v5[3] = sub_10008DDAC();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1000287C0;

  return sub_10006D1E0(a5);
}

uint64_t sub_10006D1E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_10008C9BC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_10008DDBC();
  v2[8] = sub_10008DDAC();
  v6 = sub_10008DD8C();
  v2[9] = v6;
  v2[10] = v7;

  return _swift_task_switch(sub_10006D308, v6, v7);
}

uint64_t sub_10006D308()
{
  v1 = v0[3];
  v2 = sub_10008C9CC();
  v0[11] = v2;
  v0[12] = v3;
  v4 = v2;
  v5 = v3;
  sub_10006E5DC();
  sub_10000B3B4(v4, v5);
  v6 = sub_10006E628();
  v0[13] = v6;
  sub_10000B408(v4, v5);
  isa = [objc_opt_self() macBuddyNetworkProfileValidators];
  if (!isa)
  {
    sub_100009C08(&qword_1000CDE28, &qword_100095968);
    sub_10008DD3C();
    isa = sub_10008DD2C().super.isa;
  }

  v0[2] = 0;
  v8 = [v6 validateWithValidators:isa error:v0 + 2];

  v9 = v0[2];
  if (v8)
  {
    v10 = v0[3];
    v11 = v9;
    v12 = *(sub_10008C92C() + 16);

    if (!v12)
    {
      __break(1u);
    }

    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    v16 = v0[3];
    sub_10008C96C();
    v17 = sub_10008C94C();
    v19 = v18;
    v0[14] = v18;
    (*(v14 + 8))(v13, v15);
    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_10006D608;
    v21 = v0[4];

    return sub_10006DB18(v4, v5, v17, v19);
  }

  else
  {
    v23 = v9;
    v24 = sub_10008C8EC();

    swift_willThrow();
    sub_10000B408(v4, v5);
    v0[17] = v24;
    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = sub_10006D83C;
    v26 = v0[4];

    return sub_10006E298(v24);
  }
}

uint64_t sub_10006D608()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = v2[14];

  v6 = v2[10];
  v7 = v2[9];
  if (v0)
  {
    v8 = sub_10006DA30;
  }

  else
  {
    v8 = sub_10006D788;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10006D788()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];

  sub_10000B408(v3, v1);
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10006D83C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_10006D990, v4, v3);
}

uint64_t sub_10006D990()
{
  v1 = v0[17];
  v2 = v0[8];

  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006DA30()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  sub_10000B408(v2, v1);
  v3 = *(v0 + 128);
  *(v0 + 136) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_10006D83C;
  v5 = *(v0 + 32);

  return sub_10006E298(v3);
}

uint64_t sub_10006DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = *(*(sub_100009C08(&unk_1000CBAE8, &qword_100093260) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = sub_10008DDBC();
  v5[11] = sub_10008DDAC();
  v8 = sub_10008DD8C();
  v5[12] = v8;
  v5[13] = v7;

  return _swift_task_switch(sub_10006DBF4, v8, v7);
}

uint64_t sub_10006DBF4()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v0[14] = *(v1 + 32);
  v4 = *(v1 + 40);
  v0[15] = v4;
  v0[16] = swift_getObjectType();
  v0[2] = v3;
  v0[3] = v2;
  v5 = *(v4 + 16);
  v4 += 16;
  v0[17] = v5;
  v0[18] = v4 & 0xFFFFFFFFFFFFLL | 0x30FA000000000000;
  v6 = *(v4 - 8);
  v8 = sub_10008DD8C();

  return _swift_task_switch(sub_10006DCA4, v8, v7);
}

uint64_t sub_10006DCA4()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v7 = v0[6];
  v6 = v0[7];
  v8 = sub_10003D31C();
  v9 = sub_10003D370();
  v2(v0 + 2, v7, v6, &type metadata for Data, v8, v9, v3, v4);
  v0[19] = 0;
  v10 = v0[12];
  v11 = v0[13];

  return _swift_task_switch(sub_10006DD84, v10, v11);
}

uint64_t sub_10006DD84()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_10006DEC0;
  v9 = v0[6];

  return v11(v9, v2, ObjectType, v4);
}

uint64_t sub_10006DEC0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_10006E22C;
  }

  else
  {
    v7 = sub_10006DFFC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10006DFFC()
{
  v1 = v0[10];
  v0[22] = *(v0[8] + 48);
  v0[23] = sub_10008DDAC();
  v3 = sub_10008DD8C();

  return _swift_task_switch(sub_10006E094, v3, v2);
}

uint64_t sub_10006E094()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[9];

  v4 = *(v2 + 16);
  *(v2 + 16) = 0;

  v5 = type metadata accessor for ErrorInfo();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_100038E28(v3);
  v6 = v0[12];
  v7 = v0[13];

  return _swift_task_switch(sub_10006E150, v6, v7);
}

uint64_t sub_10006E150()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10006E1C0()
{
  v1 = v0[11];

  v2 = v0[19];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006E22C()
{
  v1 = v0[11];

  v2 = v0[21];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006E298(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008DDBC();
  v2[4] = sub_10008DDAC();
  v4 = sub_10008DD8C();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_10006E330, v4, v3);
}

uint64_t sub_10006E330()
{
  v19 = v0;
  v1 = v0[2];
  v2 = sub_10008C8DC();
  v0[7] = v2;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v3 = sub_10008CCDC();
  sub_100009F94(v3, qword_1000D6D38);
  v4 = v2;
  v5 = sub_10008CCBC();
  v6 = sub_10008DE2C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    v9 = [v4 localizedDescription];
    v10 = sub_10008DBDC();
    v12 = v11;

    v13 = sub_10000A2D8(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to validate profile: %{public}s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  v14 = v0[2];
  v15 = *(v0[3] + 48);
  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_10005883C;

  return sub_100038FC4(v14);
}

uint64_t sub_10006E534()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_10006E5A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NetworkProfilePickerViewModel();
  result = sub_10008CD1C();
  *a1 = result;
  return result;
}

unint64_t sub_10006E5DC()
{
  result = qword_1000CDE20;
  if (!qword_1000CDE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CDE20);
  }

  return result;
}

id sub_10006E628()
{
  isa = sub_10008C9FC().super.isa;
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() configurationProfileWithData:isa error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    sub_10008C8EC();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10006E6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10000C37C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10006F5E4(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1000128E0(a1);
    sub_10006F540(a2, a3, v10);

    return sub_1000128E0(v10);
  }

  return result;
}

uint64_t sub_10006E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  v8 = sub_10000F5C0(v10);
  (*(*(a4 - 8) + 16))(v8, a1, a4);
  swift_beginAccess();

  sub_10006E6F4(v10, a2, a3);
  return swift_endAccess();
}

uint64_t sub_10006E85C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v9 = *(v4 + 112);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_10000A1A8(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  sub_10000B998(*(v9 + 56) + 32 * v10, v14);

LABEL_6:
  sub_100009C08(&qword_1000C9338, &qword_10008F488);
  v12 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v12 ^ 1u, 1, a3);
}

uint64_t sub_10006E970()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006E9FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10006F540(a1, a2, v5);
  sub_1000128E0(v5);
  return swift_endAccess();
}

uint64_t sub_10006EA70(uint64_t a1, uint64_t a2)
{
  result = sub_10006FA24(&qword_1000CDF18, a2, type metadata accessor for InMemoryKeyValueCodableStorage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006EAC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100009C08(&qword_1000C9420, &qword_10008F460);
  v36 = a2;
  result = sub_10008E02C();
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
        sub_10000C37C(v25, v37);
      }

      else
      {
        sub_10000B998(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10008E1FC();
      sub_10008DC8C();
      result = sub_10008E22C();
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
      result = sub_10000C37C(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_10006ED80(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10008CABC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100009C08(&qword_1000CDF20, &qword_1000959F0);
  v43 = a2;
  result = sub_10008E02C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10006FA24(&qword_1000C9448, 255, &type metadata accessor for Date);
      result = sub_10008DB2C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10006F160(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100009C08(&unk_1000CCBD0, &unk_1000946A0);
  v43 = a2;
  result = sub_10008E02C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10006FA24(&qword_1000C9430, 255, &type metadata accessor for UUID);
      result = sub_10008DB2C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

double sub_10006F540@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000A1A8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000522B0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10000C37C((*(v12 + 56) + 32 * v9), a3);
    sub_100051DE0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_OWORD *sub_10006F5E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A1A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000522B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10006EAC8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000A1A8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_10008E1AC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000BC74(v23);

    return sub_10000C37C(a1, v23);
  }

  else
  {
    sub_10006F900(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10006F734(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10008CB0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10000EA60(a2);
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
      sub_100052454();
      goto LABEL_7;
    }

    sub_10006F160(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10000EA60(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10006F96C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_10008E1AC();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_10006F900(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000C37C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10006F96C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10008CB0C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10006FA24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_10006FA80()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10008DBCC();
  [v0 setBool:1 forKey:v1];
}

uint64_t sub_10006FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006FC0C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006FB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006FC0C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10006FBE4()
{
  sub_10006FC0C();
  sub_10008D4EC();
  __break(1u);
}

unint64_t sub_10006FC0C()
{
  result = qword_1000CDF28;
  if (!qword_1000CDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDF28);
  }

  return result;
}

id sub_10006FC60()
{
  v0 = sub_10008CB2C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10008DBBC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10008DB5C();
  sub_10008CB1C();
  v24 = v3;
  sub_10008DC3C();
  v6 = objc_allocWithZone(OBWelcomeController);
  v7 = sub_10008DBCC();

  v8 = [v6 initWithTitle:v7 detailText:0 icon:0];

  if (qword_1000C8D00 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1000D6D50 + 16);
  if (v9)
  {
    v10 = (qword_1000D6D50 + 64);
    do
    {
      v11 = *(v10 - 4);
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;
      v10 += 5;

      v16 = v15;
      v17 = sub_10008DBCC();
      v18 = sub_10008DBCC();
      [v8 addBulletedListItemWithTitle:v17 description:v18 image:v16];

      --v9;
    }

    while (v9);
  }

  sub_10006FFE8();
  v19 = sub_10008DF0C();
  v20 = [objc_opt_self() boldButton];
  sub_10008DB5C();
  sub_10008CB1C();
  sub_10008DC3C();
  v21 = sub_10008DBCC();

  [v20 setTitle:v21 forState:0];

  [v20 addAction:v19 forControlEvents:64];
  v22 = [v8 buttonTray];
  [v22 addButton:v20];

  return v8;
}

unint64_t sub_10006FFE8()
{
  result = qword_1000CDF30;
  if (!qword_1000CDF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CDF30);
  }

  return result;
}

uint64_t sub_10007004C@<X0>(char *a1@<X8>)
{
  v3 = sub_100009C08(&qword_1000CE058, &qword_100095BA8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension41FileManagerBackedEncryptedKeyValueStorage____lazy_storage___documentsSubDirectoryURL;
  swift_beginAccess();
  sub_10000C314(v1 + v10, v9, &qword_1000CE058, &qword_100095BA8);
  v11 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_10007189C(v9, a1);
  }

  sub_10000C3F8(v9, &qword_1000CE058, &qword_100095BA8);
  sub_100070234(v1, a1);
  sub_10000C314(a1, v7, &qword_1000CD6D0, &qword_100095B50);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_10007182C(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100070234@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10008C9BC();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = [*(a1 + 112) URLsForDirectory:9 inDomains:1];
  v12 = sub_10008DD3C();

  if (*(v12 + 16))
  {
    (*(v18 + 16))(v8, v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v4);

    v13 = *(v18 + 32);
    v13(v10, v8, v4);
    if (*(a1 + 128))
    {
      v14 = *(a1 + 120);
      sub_10008C97C();
      (*(v18 + 8))(v10, v4);
    }

    else
    {
      v13(a2, v10, v4);
    }

    return (*(v18 + 56))(a2, 0, 1, v4);
  }

  else
  {

    v15 = *(v18 + 56);

    return v15(a2, 1, 1, v4);
  }
}

id sub_10007046C()
{
  v1 = *(v0 + 112);
  sub_10008C95C(__stack_chk_guard);
  v3 = v2;
  v6 = 0;
  LODWORD(v1) = [v1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v6];

  if (v1)
  {
    return v6;
  }

  v5 = v6;
  sub_10008C8EC();

  return swift_willThrow();
}

id sub_100070538()
{
  v1 = *(v0 + 112);
  sub_10008C95C(__stack_chk_guard);
  v3 = v2;
  v6 = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:&v6];

  if (v1)
  {
    return v6;
  }

  v5 = v6;
  sub_10008C8EC();

  return swift_willThrow();
}

uint64_t sub_1000705FC()
{
  v1 = *(v0 + 128);

  sub_10000C3F8(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension41FileManagerBackedEncryptedKeyValueStorage____lazy_storage___documentsSubDirectoryURL, &qword_1000CE058, &qword_100095BA8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FileManagerBackedEncryptedKeyValueStorage()
{
  result = qword_1000CDF68;
  if (!qword_1000CDF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000706B0()
{
  sub_100070764();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100070764()
{
  if (!qword_1000CDF78)
  {
    sub_100007108(&qword_1000CD6D0, &qword_100095B50);
    v0 = sub_10008DF1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CDF78);
    }
  }
}

uint64_t sub_1000707C8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v68 = a2;
  v65 = a6;
  v71 = a1;
  v74 = a4;
  v7 = *(a4 - 1);
  v69 = a3;
  v70 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v63 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v58 - v16;
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  v20 = sub_10008C9BC();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v62 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v64 = &v58 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v58 - v28;
  __chkstk_darwin(v27);
  v31 = &v58 - v30;
  v66 = v6;
  sub_10007004C(v19);
  v32 = v21[6];
  if (v32(v19, 1, v20) == 1)
  {
    sub_10000C3F8(v19, &qword_1000CD6D0, &qword_100095B50);
    sub_100071790();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  v35 = v21[4];
  v60 = v21 + 4;
  v61 = v32;
  v59 = v35;
  v35(v29, v19, v20);
  sub_10008C97C();
  v36 = v21[1];
  v69 = v21 + 1;
  v36(v29, v20);
  (*(v70 + 16))(v10, v71, v74);
  if (swift_dynamicCast())
  {
    v74 = v36;
    v38 = v72;
    v37 = v73;
    sub_10007004C(v17);
    v39 = v20;
    if (v61(v17, 1, v20) == 1)
    {
      sub_10000C3F8(v17, &qword_1000CD6D0, &qword_100095B50);
      sub_100071790();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      v41 = v38;
      v42 = v37;
LABEL_13:
      sub_10000B408(v41, v42);
      return v74(v31, v39);
    }

    v49 = v64;
    v59(v64, v17, v20);
    v50 = v67;
    sub_10007046C();
    if (!v50)
    {
      sub_10008CA1C();
    }

    v51 = v38;
    v52 = v37;
  }

  else
  {
    v43 = sub_10008C7FC();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    sub_10008C7EC();
    v46 = v67;
    v47 = sub_10008C7DC();
    if (v46)
    {
      v36(v31, v20);
    }

    v74 = v36;
    v53 = v47;
    v54 = v48;

    v55 = v63;
    sub_10007004C(v63);
    v39 = v20;
    if (v61(v55, 1, v20) == 1)
    {
      sub_10000C3F8(v55, &qword_1000CD6D0, &qword_100095B50);
      sub_100071790();
      swift_allocError();
      *v56 = 0;
      swift_willThrow();
      v41 = v53;
      v42 = v54;
      goto LABEL_13;
    }

    v49 = v62;
    v59(v62, v55, v20);
    sub_10007046C();
    sub_10008CA1C();
    v51 = v53;
    v52 = v54;
  }

  sub_10000B408(v51, v52);
  v57 = v74;
  v74(v49, v39);
  return v57(v31, v39);
}

uint64_t sub_100070E00@<X0>(void *a1@<X0>, _BYTE *a2@<X3>, NSObject *a3@<X4>, uint64_t a4@<X8>)
{
  v54 = a1;
  v53 = a3;
  v56 = a4;
  v57 = a2;
  v4 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v51[-v6];
  v8 = sub_10008C9BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v51[-v15];
  __chkstk_darwin(v14);
  v18 = &v51[-v17];
  sub_10007004C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C3F8(v7, &qword_1000CD6D0, &qword_100095B50);
    sub_100071790();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  (*(v9 + 32))(v16, v7, v8);
  sub_10008C97C();
  v21 = *(v9 + 8);
  v21(v16, v8);
  v22 = v55;
  result = sub_10008C9CC();
  if (v22)
  {
    v55 = v21;
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v24 = sub_10008CCDC();
    sub_100009F94(v24, qword_1000D6D38);
    (*(v9 + 16))(v13, v18, v8);
    swift_errorRetain();
    v25 = sub_10008CCBC();
    v26 = sub_10008DE2C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v18;
      v28 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58[0] = v54;
      *v28 = 136446466;
      sub_1000717E4(&qword_1000CDBC0, &type metadata accessor for URL);
      v53 = v25;
      v29 = sub_10008E15C();
      v31 = v30;
      v52 = v26;
      v32 = v55;
      v55(v13, v8);
      v33 = sub_10000A2D8(v29, v31, v58);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      v58[3] = v22;
      swift_errorRetain();
      sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
      v34 = sub_10008DC4C();
      v36 = sub_10000A2D8(v34, v35, v58);
      v21 = v32;

      *(v28 + 14) = v36;
      v37 = v53;
      _os_log_impl(&_mh_execute_header, v53, v52, "Error reading data from: %{public}s: %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      v18 = v27;
    }

    else
    {

      v21 = v55;
      v55(v13, v8);
    }

    v38 = 0;
    v39 = 0xC000000000000000;
    v42 = v56;
    v41 = v57;
    goto LABEL_14;
  }

  v38 = result;
  v39 = v23;
  v40 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    v42 = v56;
    v41 = v57;
    if (!v40)
    {
      if (!BYTE6(v23))
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result <= 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v42 = v56;
  v41 = v57;
  if (v40 != 2)
  {
LABEL_14:
    sub_10000B408(v38, v39);
    v21(v18, v8);
    return (*(*(v41 - 1) + 56))(v42, 1, 1, v41);
  }

  v44 = *(result + 16);
  v43 = *(result + 24);
  v45 = __OFSUB__(v43, v44);
  v46 = v43 - v44;
  if (v45)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v46 <= 0)
  {
LABEL_23:
    v21(v18, v8);
    sub_10000B408(v38, v39);
    return (*(*(v41 - 1) + 56))(v42, 1, 1, v41);
  }

LABEL_19:
  if (v54 == &type metadata for Data)
  {
    v21(v18, v8);
    v58[0] = v38;
    v58[1] = v39;
    v50 = swift_dynamicCast();
    return (*(*(v41 - 1) + 56))(v42, v50 ^ 1u, 1, v41);
  }

  else
  {
    v57 = v18;
    v55 = v21;
    v47 = sub_10008C7CC();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    sub_10008C7BC();
    sub_10008C7AC();
    v55(v57, v8);
    sub_10000B408(v38, v39);

    return (*(*(v41 - 1) + 56))(v42, 0, 1, v41);
  }
}

uint64_t sub_1000714CC()
{
  v0 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_10008C9BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10007004C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000C3F8(v3, &qword_1000CD6D0, &qword_100095B50);
    sub_100071790();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    sub_10008C97C();
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_100070538();
    return (v14)(v11, v4);
  }
}

uint64_t sub_100071738(uint64_t a1)
{
  result = sub_1000717E4(&qword_1000CE048, type metadata accessor for FileManagerBackedEncryptedKeyValueStorage);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100071790()
{
  result = qword_1000CE050;
  if (!qword_1000CE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE050);
  }

  return result;
}

uint64_t sub_1000717E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007182C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CE058, &qword_100095BA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007189C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100071920()
{
  result = qword_1000CE060;
  if (!qword_1000CE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE060);
  }

  return result;
}

uint64_t sub_100071974()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

char *sub_1000719E8()
{
  v1 = sub_100009C08(&qword_1000CAD48, &unk_100092240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension41CoreBluetoothBackedBluetoothStatusMonitor__bluetoothStatus;
  v13 = 0;
  sub_10008CD7C();
  (*(v2 + 32))(&v0[v6], v5, v1);
  v7 = [objc_allocWithZone(CBCentralManager) init];
  *&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension41CoreBluetoothBackedBluetoothStatusMonitor_monitor] = v7;
  v8 = type metadata accessor for CoreBluetoothBackedBluetoothStatusMonitor();
  v12.receiver = v0;
  v12.super_class = v8;
  v9 = objc_msgSendSuper2(&v12, "init");
  [*&v9[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension41CoreBluetoothBackedBluetoothStatusMonitor_monitor] setDelegate:v9];
  return v9;
}

id sub_100071B58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreBluetoothBackedBluetoothStatusMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CoreBluetoothBackedBluetoothStatusMonitor()
{
  result = qword_1000CE0A8;
  if (!qword_1000CE0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100071C6C()
{
  sub_1000301B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100071D0C(void *a1)
{
  [a1 state];
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10008CDBC();
}

uint64_t sub_100071E50()
{
  v1 = sub_100009C08(&unk_1000CE120, &unk_100095D00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&qword_1000CAD48, &unk_100092240);
  sub_10008CD8C();
  swift_endAccess();
  sub_100030338();
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_100071F80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100072004(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_10008CDBC();
}

uint64_t sub_100072078()
{
  v1 = sub_10008CB2C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10008DBBC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10008DB9C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_10008DB8C();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10008DB7C(v12);
  if (v0[1])
  {
    v7 = *v0;
    v8 = v0[1];
  }

  else
  {
    v7 = 4144959;
    v8 = 0xE300000000000000;
  }

  v13._countAndFlagsBits = v7;
  v13._object = v8;
  sub_10008DB6C(v13);

  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  sub_10008DB7C(v14);
  if (v0[5])
  {
    v9 = v0[4];
    v10 = v0[5];
  }

  else
  {
    v10 = v0[3];
    if (v10)
    {
      v9 = v0[2];
    }

    else
    {
      v9 = 4144959;
      v10 = 0xE300000000000000;
    }
  }

  v15._countAndFlagsBits = v9;
  v15._object = v10;
  sub_10008DB6C(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  sub_10008DB7C(v16);
  sub_10008DBAC();
  sub_10008CB1C();
  return sub_10008DC3C();
}

void sub_10007227C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_10008DBCC();
  v8 = [v6 contentsAtPath:v7];

  if (v8)
  {

    v9 = sub_10008CA0C();
    v11 = v10;

    v12 = objc_opt_self();
    isa = sub_10008C9FC().super.isa;
    v43[0] = 0;
    v14 = [v12 propertyListWithData:isa options:0 format:0 error:v43];

    if (!v14)
    {
      v26 = v43[0];
      sub_10008C8EC();

      swift_willThrow();
      sub_10000B408(v9, v11);
      return;
    }

    v15 = v43[0];
    sub_10008DF4C();
    swift_unknownObjectRelease();
    sub_100009C08(&qword_1000CE140, &unk_100095D80);
    if (swift_dynamicCast())
    {
      if (*(v41 + 16) && (v16 = sub_10000A1A8(0xD00000000000001ALL, 0x800000010009C370), (v17 & 1) != 0))
      {
        sub_10000B998(*(v41 + 56) + 32 * v16, v43);
        v18 = swift_dynamicCast();
        if (v18)
        {
          v19 = v41;
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v20 = v42;
        }

        else
        {
          v20 = 0;
        }

        if (!*(v41 + 16))
        {
          goto LABEL_37;
        }
      }

      else
      {
        v19 = 0;
        v20 = 0;
        if (!*(v41 + 16))
        {
          goto LABEL_37;
        }
      }

      v35 = sub_10000A1A8(0x656C646E75424643, 0xEF6E6F6973726556);
      if (v36)
      {
        sub_10000B998(*(v41 + 56) + 32 * v35, v43);
        v37 = swift_dynamicCast();
        if (v37)
        {
          v33 = v41;
        }

        else
        {
          v33 = 0;
        }

        if (v37)
        {
          v34 = v42;
        }

        else
        {
          v34 = 0;
        }

        if (*(v41 + 16))
        {
LABEL_38:
          v38 = sub_10000A1A8(0xD000000000000013, 0x800000010009C390);
          if (v39)
          {
            sub_10000B998(*(v41 + 56) + 32 * v38, v43);
            sub_10000B408(v9, v11);

            v40 = swift_dynamicCast();
            v31 = v41;
            v32 = v42;
            if (!v40)
            {
              v31 = 0;
              v32 = 0;
            }

            goto LABEL_26;
          }
        }

LABEL_41:
        sub_10000B408(v9, v11);

        v31 = 0;
        v32 = 0;
        goto LABEL_26;
      }

LABEL_37:
      v33 = 0;
      v34 = 0;
      if (*(v41 + 16))
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }

    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v27 = sub_10008CCDC();
    sub_100009F94(v27, qword_1000D6D38);
    v22 = sub_10008CCBC();
    v28 = sub_10008DE2C();
    if (os_log_type_enabled(v22, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10000A2D8(0xD000000000000010, 0x800000010009C350, v43);
      _os_log_impl(&_mh_execute_header, v22, v28, "%s Unable to convert version.plist to satisfactory dictionary", v29, 0xCu);
      sub_10000BC74(v30);
    }

    sub_10000B408(v9, v11);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v21 = sub_10008CCDC();
    sub_100009F94(v21, qword_1000D6D38);

    v22 = sub_10008CCBC();
    v23 = sub_10008DE2C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_10000A2D8(0xD000000000000010, 0x800000010009C350, v43);
      *(v24 + 12) = 2082;
      v25 = sub_10000A2D8(a1, a2, v43);

      *(v24 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s Unable to read contents of version plist at %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v19 = 0;
  v20 = 0;
LABEL_26:
  *a3 = v19;
  a3[1] = v20;
  a3[2] = v33;
  a3[3] = v34;
  a3[4] = v31;
  a3[5] = v32;
}

uint64_t sub_10007289C()
{
  v1 = *(v0 + 200);
  sub_10002D95C(v1, *(v0 + 208));
  return v1;
}

uint64_t sub_1000728D0(uint64_t result, unint64_t a2)
{
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  *(v2 + 200) = result;
  *(v2 + 208) = a2;
  if (v4 == 2)
  {
    if (a2 == 2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a2 == 2)
  {
    goto LABEL_5;
  }

  if (!v4)
  {
    if (!a2)
    {
      sub_10002D95C(result, 0);
      result = v3;
      a2 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v4 == 1)
  {
    if (a2 == 1)
    {
      sub_10002D95C(result, 1uLL);
      result = v3;
      a2 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (a2 < 2)
  {
LABEL_5:
    sub_100072F18();
LABEL_6:
    result = v3;
    a2 = v4;
    goto LABEL_7;
  }

  if (v3 != result || v4 != a2)
  {
    if (sub_10008E18C())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:

  return sub_10002D980(result, a2);
}

uint64_t sub_1000729DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100072A50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  swift_unownedRetainStrong();
  *(a2 + 218) = v3 != 0;

  swift_unownedRetainStrong();
  sub_100072F18();
}

uint64_t sub_100072AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = *(*(sub_100009C08(&qword_1000C9E10, &qword_10008FEF0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v9 = sub_100009C08(&qword_1000CE308, &qword_100095F00);
  v6[12] = v9;
  v10 = *(v9 - 8);
  v6[13] = v10;
  v11 = *(v10 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_getObjectType();
  v12 = *(v7 + 32);
  v7 += 32;
  v6[16] = v12;
  v6[17] = v7 & 0xFFFFFFFFFFFFLL | 0x947E000000000000;
  v13 = *(v7 - 24);
  v15 = sub_10008DD8C();

  return _swift_task_switch(sub_100072BEC, v15, v14);
}

uint64_t sub_100072BEC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  *(v0 + 144) = (*(v0 + 128))(*(v0 + 120), *(v0 + 72));

  return _swift_task_switch(sub_100072C60, 0, 0);
}

uint64_t sub_100072C60()
{
  v1 = v0[14];
  v9 = v0[13];
  v2 = v0[11];
  v8 = v0[12];
  v3 = v0[10];
  v0[5] = v0[18];
  sub_1000167AC();
  v7 = sub_10008DE7C();
  v0[6] = v7;
  v4 = sub_10008DE6C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_100009C08(&qword_1000CE310, &qword_100095F08);
  sub_10001121C(&qword_1000CE318, &qword_1000CE310, &qword_100095F08);
  sub_1000590C8();
  sub_10008CE0C();
  sub_100016840(v2);

  swift_getKeyPath();
  swift_unownedRetainStrong();
  v0[7] = v3;
  sub_10001121C(&qword_1000CE320, &qword_1000CE308, &qword_100095F00);
  sub_10008CE2C();

  (*(v9 + 8))(v1, v8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_100009C08(&qword_1000CAF40, &unk_100095840);
  sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840);
  sub_10008CCEC();
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100072F18()
{
  if ((*(v0 + 218) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v0 + 217) == 1)
  {
    if ((*(v0 + 208) | 2) == 2 && *(v0 + 216) == 1)
    {
      v1 = *(v0 + 176);
      v2 = *(v0 + 184);
      sub_10000BB24((v0 + 152), v1);
      (*(v2 + 24))(v1, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      goto LABEL_4;
    }

LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10008CDBC();
  }

  swift_getKeyPath();
  swift_getKeyPath();
LABEL_4:

  return sub_10008CDBC();
}

uint64_t sub_100073120()
{
  sub_10000BC74(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  sub_10000BC74(v0 + 9);
  sub_10000BC74(v0 + 14);
  sub_10000BC74(v0 + 19);
  v2 = v0[24];

  sub_10002D980(v0[25], v0[26]);
  v3 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension49ConcreteDeviceDiscoveryPrerequisiteStatusProvider__prerequisiteStatus;
  v4 = sub_100009C08(&unk_1000CD810, &qword_100094A20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConcreteDeviceDiscoveryPrerequisiteStatusProvider()
{
  result = qword_1000CE178;
  if (!qword_1000CE178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073254()
{
  sub_1000542D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10007332C()
{
  v1 = sub_100009C08(&qword_1000CCF18, &qword_100094A18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&unk_1000CD810, &qword_100094A20);
  sub_10008CD8C();
  swift_endAccess();
  sub_10001121C(&qword_1000CCF20, &qword_1000CCF18, &qword_100094A18);
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_100073490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100073514(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_10007358C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 200);
  v4 = *(v2 + 208);
  *a2 = v3;
  a2[1] = v4;
  return sub_10002D95C(v3, v4);
}

uint64_t sub_10007359C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_10002D95C(*a1, v3);
  return sub_1000728D0(v2, v3);
}

uint64_t sub_1000735E0(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_1000735FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100073610(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007364C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100073698(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AXMEnrollmentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AXMEnrollmentError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100073828(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10007383C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_100073870()
{
  result = qword_1000CE328;
  if (!qword_1000CE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE328);
  }

  return result;
}

unint64_t sub_1000738D8()
{
  result = qword_1000CE330;
  if (!qword_1000CE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE330);
  }

  return result;
}

uint64_t sub_100073930(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100073988()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100073A50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

double sub_100073AC4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100073B5C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  sub_100073BA4(v1);
}

uint64_t sub_100073BA4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_10008DA5C();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10008DA8C();
  v44 = *(v42 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v42);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10008DADC();
  v39 = *(v46 - 8);
  v9 = *(v39 + 64);
  v10 = __chkstk_darwin(v46);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v37 - v13;
  v14 = sub_10008CB2C();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10008DBBC();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v18 = sub_10008CCDC();
  sub_100009F94(v18, qword_1000D6D38);
  v19 = sub_10008CCBC();
  v20 = sub_10008DE0C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v4;
    v38 = v2;
    aBlock = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_10000A2D8(0xD00000000000002ALL, 0x800000010009C800, &aBlock);
    *(v21 + 12) = 2082;
    LOBYTE(v47) = a1;
    v23 = sub_10008DC4C();
    v25 = sub_10000A2D8(v23, v24, &aBlock);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s assignmentStatus updated to: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    v4 = v37;
    v2 = v38;
  }

  if (a1 == 1 || [objc_opt_self() authorizationStatusForMediaType:AVMediaTypeVideo] != 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
  }

  sub_10008CDBC();
  if (a1 > 1u)
  {
    sub_10008DA1C();
    v28 = v39;
    sub_10008D02C();

    sub_1000167AC();
    v29 = sub_10008DE7C();
    sub_10008DACC();
    v30 = v40;
    sub_10008DAFC();
    v39 = *(v28 + 8);
    (v39)(v12, v46);
    v52 = sub_100076F68;
    v53 = v2;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_100077134;
    v51 = &unk_1000C2048;
    v31 = _Block_copy(&aBlock);

    v32 = v41;
    sub_10008DA7C();
    v47 = &_swiftEmptyArrayStorage;
    sub_100022748();
    sub_100009C08(&qword_1000CA450, &qword_100097630);
    sub_1000227A0();
    v33 = v45;
    sub_10008DF5C();
    sub_10008DE5C();
    _Block_release(v31);

    (*(v43 + 8))(v33, v4);
    (*(v44 + 8))(v32, v42);
    (v39)(v30, v46);

    v26 = sub_100076264();
  }

  else
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v26 = sub_10008DC3C();
  }

  v34 = v26;
  v35 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v34;
  v49 = v35;

  return sub_10008CDBC();
}

uint64_t sub_1000742FC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  if ((v1 - 3) >= 3)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    sub_1000766D4(v2);
  }
}

void *sub_10007435C(void *result)
{
  if (result[1])
  {
    v2 = result[4];
    v1 = result[5];
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10008CDBC();
  }

  return result;
}

uint64_t sub_1000743EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_unownedRetainStrong();
  sub_100074444(v1, v2);
}

void sub_100074444(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v2 = sub_10008CCDC();
    sub_100009F94(v2, qword_1000D6D38);
    oslog = sub_10008CCBC();
    v3 = sub_10008DE2C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = *&v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10000A2D8(0xD000000000000031, 0x800000010009C6C0, &v13);
      _os_log_impl(&_mh_execute_header, oslog, v3, "%s we didn't receive the view finder diameter!", v4, 0xCu);
      sub_10000BC74(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v7 = sub_10008CCDC();
    sub_100009F94(v7, qword_1000D6D38);
    v8 = sub_10008CCBC();
    v9 = sub_10008DE1C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = *&v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_10000A2D8(0xD000000000000031, 0x800000010009C6C0, &v13);
      *(v10 + 12) = 2048;
      *(v10 + 14) = *&a1;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s view finder diameter: %f", v10, 0x16u);
      sub_10000BC74(v11);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v13 = *&a1 * 0.5 + 25.0;
    v14 = 0;

    sub_10008CDBC();
  }
}

void sub_100074740()
{
  v0 = sub_10008C81C();
  if (v0 && (v1 = sub_10007490C(v0), , v1))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000751C8(v1);
    }
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v2 = sub_10008CCDC();
    sub_100009F94(v2, qword_1000D6D38);
    oslog = sub_10008CCBC();
    v3 = sub_10008DE1C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000A2D8(0xD000000000000088, 0x800000010009C630, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "%{public}s: received notification with no userInfo", v4, 0xCu);
      sub_10000BC74(v5);
    }

    else
    {
    }
  }
}

unint64_t sub_10007490C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009C08(&qword_1000CE770, &qword_100096240);
    v2 = sub_10008E03C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        sub_100076D84(*(a1 + 48) + 40 * v15, v27);
        sub_10000B998(*(a1 + 56) + 32 * v15, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100076D84(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_10000C3F8(v24, &qword_1000CE778, &qword_100096248);

          goto LABEL_23;
        }

        sub_10000B998(v25 + 8, v23);
        sub_10000C3F8(v24, &qword_1000CE778, &qword_100096248);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_10000A1A8(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_100074BDC()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_deviceContextDidUpdateNotificationObserver;
  v2 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_deviceContextDidUpdateNotificationObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver:v2];
    swift_unknownObjectRelease();
  }

  sub_10000BC74(v0 + 2);
  sub_10000BC74(v0 + 7);
  sub_10000BC74(v0 + 12);
  sub_10000BC74(v0 + 17);
  sub_10000BC74(v0 + 22);
  v5 = v0[27];

  v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__organizationName;
  v7 = sub_100009C08(&qword_1000CAA60, &qword_100091D70);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v9 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__statusMessageYOffset;
  v10 = sub_100009C08(&qword_1000CE780, &unk_1000964F0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v8(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__statusMessage, v7);
  v11 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__showPairManuallyButton;
  v12 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__forceManualPairing, v12);
  v13(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__showPairedToastMessage, v12);
  v14 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__prerequisiteStatus;
  v15 = sub_100009C08(&unk_1000CD810, &qword_100094A20);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__mdmServerInfo;
  v17 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v13(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__showEnrollmentErrorAlert, v12);
  sub_10000C3F8(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_enrollmentErrorInfo, &unk_1000CBAE8, &qword_100093260);
  v18 = *(v0 + v1);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100074EB8()
{
  sub_100074BDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CameraViewModel()
{
  result = qword_1000CE3B0;
  if (!qword_1000CE3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074F64()
{
  sub_10002BF30(319, &unk_1000CA6D0);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_100016420(319, &qword_1000CE3C0, &qword_1000CE3C8, &qword_1000961E0);
    if (v4 <= 0x3F)
    {
      v14 = *(v3 - 8) + 64;
      sub_10002BF30(319, &qword_1000CA6C8);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        sub_100016420(319, &qword_1000CCE60, &qword_1000CCC48, &unk_100094740);
        if (v9 <= 0x3F)
        {
          v15 = *(v8 - 8) + 64;
          sub_100016420(319, &qword_1000C9900, &unk_1000CD8B0, &qword_100090200);
          if (v11 <= 0x3F)
          {
            v16 = *(v10 - 8) + 64;
            sub_1000761CC();
            if (v13 <= 0x3F)
            {
              v17 = *(v12 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1000751C8(uint64_t a1)
{
  v2 = [objc_opt_self() productTypeKey];
  v3 = sub_10008DBDC();
  v5 = v4;

  if (*(a1 + 16))
  {
    v6 = sub_10000A1A8(v3, v5);
    v8 = v7;

    if (v8)
    {
      v21[2] = *(*(a1 + 56) + 8 * v6);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v10 = v21[0];
        v9 = v21[1];
        if (qword_1000C8CF8 != -1)
        {
          swift_once();
        }

        v11 = sub_10008CCDC();
        sub_100009F94(v11, qword_1000D6D38);

        v12 = sub_10008CCBC();
        v13 = sub_10008DE1C();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v21[0] = swift_slowAlloc();
          *v14 = 136315394;
          *(v14 + 4) = sub_10000A2D8(0xD00000000000002DLL, 0x800000010009CD90, v21);
          *(v14 + 12) = 2080;
          *(v14 + 14) = sub_10000A2D8(v10, v9, v21);
          _os_log_impl(&_mh_execute_header, v12, v13, "%s: productType is %s", v14, 0x16u);
          swift_arrayDestroy();
        }

        v22._countAndFlagsBits = 0x447974696C616552;
        v22._object = 0xED00006563697665;
        v15 = sub_10008DCDC(v22);

        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v21[0]) = v15;

        sub_10008CDBC();
        return;
      }
    }
  }

  else
  {
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v16 = sub_10008CCDC();
  sub_100009F94(v16, qword_1000D6D38);
  v17 = sub_10008CCBC();
  v18 = sub_10008DE1C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_10000A2D8(0xD00000000000002DLL, 0x800000010009CD90, v21);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s: context doesn't contain a valid 'productType'", v19, 0xCu);
    sub_10000BC74(v20);
  }
}

void sub_100075580()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  v1 = sub_10008CCBC();
  v2 = sub_10008DE1C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10000A2D8(0x4164694477656976, 0xEF29287261657070, v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000BC74(v4);
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_100077090;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100075BFC;
  v8[3] = &unk_1000C2098;
  v7 = _Block_copy(v8);

  [v5 requestAccessForMediaType:AVMediaTypeVideo completionHandler:v7];
  _Block_release(v7);
}

uint64_t sub_100075798(char a1)
{
  v2 = sub_10008DA5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10008DA8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v12 = sub_10008CCDC();
  sub_100009F94(v12, qword_1000D6D38);
  v13 = sub_10008CCBC();
  v14 = sub_10008DE1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = v11;
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Request access for video completion handler with value: %{BOOL}d", v15, 8u);
    v11 = v21;
  }

  sub_1000167AC();
  v16 = sub_10008DE7C();
  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1 & 1;
  aBlock[4] = sub_1000770D0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077134;
  aBlock[3] = &unk_1000C20E8;
  v19 = _Block_copy(aBlock);

  sub_10008DA7C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100022748();
  sub_100009C08(&qword_1000CA450, &qword_100097630);
  sub_1000227A0();
  sub_10008DF5C();
  sub_10008DE8C();
  _Block_release(v19);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100075B68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10008CDBC();
  }

  return result;
}

uint64_t sub_100075BFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100075C50()
{
  v0 = sub_10008CB2C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10008DBBC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = 0;
  if (v5 > 2u)
  {
    if (v5 - 5 < 2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v5 - 1 < 2)
  {
LABEL_3:
    sub_10008DB5C();
    sub_10008CB1C();
    return sub_10008DC3C();
  }

  return result;
}

uint64_t sub_100075E7C()
{
  v0 = sub_10008CB2C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10008DBBC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = 0;
  if (v5 <= 2u)
  {
    if (v5 - 1 >= 2)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v5 - 5 < 2)
  {
    return result;
  }

  if (v5 == 3)
  {
    if (qword_1000C8D68 == -1)
    {
      goto LABEL_7;
    }
  }

  else if (qword_1000C8D68 == -1)
  {
    goto LABEL_7;
  }

  swift_once();
LABEL_7:
  sub_10008DB5C();
  sub_10008CB1C();
  return sub_10008DC3C();
}

void sub_1000761CC()
{
  if (!qword_1000CE3D0)
  {
    type metadata accessor for ErrorInfo();
    v0 = sub_10008DF1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CE3D0);
    }
  }
}

uint64_t sub_100076224@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CameraViewModel();
  result = sub_10008CD1C();
  *a1 = result;
  return result;
}

uint64_t sub_100076264()
{
  v0 = sub_10008DB9C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10008CB2C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10008DBBC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v10._object)
  {
    if (v10._object == 1)
    {
      sub_10008DB5C();
      sub_10008CB1C();
      v6 = sub_10008DC3C();
      countAndFlagsBits = v10._countAndFlagsBits;
      object = 1;
      goto LABEL_6;
    }

    if (v10._object != 2)
    {
      sub_10008DB8C();
      v12._countAndFlagsBits = 0x6E696E6769737341;
      v12._object = 0xED0000206F742067;
      sub_10008DB7C(v12);
      sub_10008DB6C(v11);
      v13._countAndFlagsBits = 10911970;
      v13._object = 0xA300000000000000;
      sub_10008DB7C(v13);
      sub_10008DBAC();
      sub_10008CB1C();
      v6 = sub_10008DC3C();
      object = v10._object;
      countAndFlagsBits = v10._countAndFlagsBits;
LABEL_6:
      sub_100048B2C(countAndFlagsBits, object);
      return v6;
    }
  }

  else
  {
    sub_100048B2C(v10._countAndFlagsBits, 0);
  }

  sub_10008DB8C();
  v14._countAndFlagsBits = 0x7420676E69646441;
  v14._object = 0xEA0000000000206FLL;
  sub_10008DB7C(v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_10008DB6C(v10);

  v15._countAndFlagsBits = 10911970;
  v15._object = 0xA300000000000000;
  sub_10008DB7C(v15);
  sub_10008DBAC();
  sub_10008CB1C();
  return sub_10008DC3C();
}

uint64_t sub_1000765E0()
{
  sub_10008DA1C();
  sub_10008D02C();
}

uint64_t sub_100076658()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

void sub_1000766D4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = a1;
  v16 = objc_allocWithZone(NSError);
  v17 = sub_10008DBCC();
  v18 = [v16 initWithDomain:v17 code:v15 + 1 userInfo:0];

  v19 = v18;
  sub_100054B14(v12);

  v20 = type metadata accessor for ErrorInfo();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v12, 1, v20) == 1)
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v30 = sub_10008DC3C();
    v31 = v2;
    v24 = v23;
    sub_10008DB5C();
    sub_10008CB1C();
    v25 = sub_10008DC3C();
    v26 = &v14[*(v20 + 20)];
    *v26 = v30;
    v26[1] = v24;
    v2 = v31;
    v27 = &v14[*(v20 + 24)];
    *v27 = v25;
    v27[1] = v28;
    sub_10008CAFC();
    if (v22(v12, 1, v20) != 1)
    {
      sub_10000C3F8(v12, &unk_1000CBAE8, &qword_100093260);
    }
  }

  else
  {
    sub_10003963C(v12, v14);
  }

  (*(v21 + 56))(v14, 0, 1, v20);
  v29 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_enrollmentErrorInfo;
  swift_beginAccess();
  sub_100076E38(v14, v2 + v29);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = 1;

  sub_10008CDBC();
}

uint64_t sub_100076B04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_100076B8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100076C24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100076CB4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100076E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100076F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100077058()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077098()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000770D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100075B68();
}

uint64_t sub_100077140(uint64_t a1)
{
  v2 = sub_10008C82C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_10008C80C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100077234@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_1000772B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

double sub_100077328@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000773B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100012298(v2, v3);

  return sub_10008CDBC();
}

uint64_t sub_10007745C()
{
  sub_10000BE8C(v0 + 16, v26);
  sub_10000BE8C(v0 + 56, v25);
  sub_10000BE8C(v0 + 96, v24);
  sub_10000BE8C(v0 + 136, v23);
  sub_10000BE8C(v0 + 176, v21);
  v1 = v22;
  v2 = sub_10000BCC0(v21, v22);
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for ConcreteVPScannerViewFinderMetricsProvider();
  v20[3] = v8;
  v20[4] = &off_1000C0C30;
  v20[0] = v7;
  v9 = type metadata accessor for CameraViewModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = sub_10000BCC0(v20, v8);
  v14 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_1000779B4(v26, v25, v24, v23, *v16, v12);
  sub_10000BC74(v20);
  sub_10000BC74(v21);
  return v18;
}

uint64_t sub_100077660()
{
  sub_10000BC74(v0 + 2);
  sub_10000BC74(v0 + 7);
  sub_10000BC74(v0 + 12);
  sub_10000BC74(v0 + 17);
  sub_10000BC74(v0 + 22);

  return swift_deallocClassInstance();
}

void *sub_1000776DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v37 = a5;
  v35 = a4;
  v34 = a3;
  v36 = a14;
  v51 = a7;
  v52 = a12;
  v20 = sub_10000F5C0(&v50);
  (*(*(a7 - 8) + 32))(v20, a1, a7);
  v48 = a10;
  v49 = a15;
  v21 = sub_10000F5C0(&v47);
  (*(*(a10 - 8) + 32))(v21, a2, a10);
  v45 = a8;
  v46 = a13;
  v22 = sub_10000F5C0(&v44);
  (*(*(a8 - 8) + 32))(v22, v34, a8);
  v42 = a11;
  v43 = a16;
  v23 = sub_10000F5C0(&v41);
  (*(*(a11 - 8) + 32))(v23, v35, a11);
  v39 = a9;
  v40 = a14;
  v24 = sub_10000F5C0(v38);
  (*(*(a9 - 8) + 32))(v24, v37, a9);
  type metadata accessor for CameraViewModelProvider();
  v25 = swift_allocObject();
  v26 = v39;
  v27 = sub_10000BCC0(v38, v39);
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v25[25] = type metadata accessor for ConcreteVPScannerViewFinderMetricsProvider();
  v25[26] = &off_1000C0C30;
  v25[22] = v32;
  sub_10000C3E0(&v50, (v25 + 2));
  sub_10000C3E0(&v47, (v25 + 7));
  sub_10000C3E0(&v44, (v25 + 12));
  sub_10000C3E0(&v41, (v25 + 17));
  sub_10000BC74(v38);
  return v25;
}

uint64_t sub_1000779B4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v121 = a4;
  v122 = a3;
  v120 = a2;
  v119 = a1;
  v113 = sub_100009C08(&qword_1000CE850, &qword_100096548);
  v114 = *(v113 - 8);
  v8 = *(v114 + 64);
  __chkstk_darwin(v113);
  v112 = &v99 - v9;
  v110 = sub_100009C08(&qword_1000CD700, &qword_100095350);
  v111 = *(v110 - 8);
  v10 = *(v111 + 64);
  __chkstk_darwin(v110);
  v109 = &v99 - v11;
  v107 = sub_100009C08(&qword_1000CD808, &unk_100095410);
  v108 = *(v107 - 8);
  v12 = *(v108 + 64);
  __chkstk_darwin(v107);
  v106 = &v99 - v13;
  v103 = sub_100009C08(&qword_1000CE858, &unk_100096550);
  v105 = *(v103 - 8);
  v14 = *(v105 + 64);
  __chkstk_darwin(v103);
  v102 = &v99 - v15;
  v16 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v117 = &v99 - v18;
  v19 = sub_100009C08(&qword_1000CE860, &qword_100096560);
  v20 = *(v19 - 8);
  v123 = v19;
  v124 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v101 = &v99 - v22;
  v23 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  v127 = *(v23 - 8);
  v128 = v23;
  v24 = *(v127 + 64);
  __chkstk_darwin(v23);
  v126 = &v99 - v25;
  v125 = sub_100009C08(&unk_1000CD810, &qword_100094A20);
  v118 = *(v125 - 1);
  v26 = v118[8];
  __chkstk_darwin(v125);
  v116 = &v99 - v27;
  v100 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v28 = *(v100 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v100);
  v31 = &v99 - v30;
  v99 = sub_100009C08(&qword_1000CE780, &unk_1000964F0);
  v32 = *(v99 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v99);
  v35 = &v99 - v34;
  v36 = sub_100009C08(&qword_1000CAA60, &qword_100091D70);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v99 - v39;
  v104 = type metadata accessor for ConcreteVPScannerViewFinderMetricsProvider();
  v136 = v104;
  v137 = &off_1000C0C30;
  v135 = a5;
  *(a6 + 216) = &_swiftEmptyArrayStorage;
  v115 = a6 + 216;
  *(a6 + 224) = 0;
  *(a6 + 232) = 0;
  v41 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__organizationName;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_10008CD7C();
  v42 = *(v37 + 32);
  v42(a6 + v41, v40, v36);
  v43 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__statusMessageYOffset;
  *&aBlock = 0;
  BYTE8(aBlock) = 1;
  sub_100009C08(&qword_1000CE3C8, &qword_1000961E0);
  sub_10008CD7C();
  (*(v32 + 32))(a6 + v43, v35, v99);
  v44 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__statusMessage;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_10008CD7C();
  v42(a6 + v44, v40, v36);
  v45 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__showPairManuallyButton;
  LOBYTE(aBlock) = 0;
  sub_10008CD7C();
  v46 = *(v28 + 32);
  v47 = v100;
  v46(a6 + v45, v31, v100);
  v48 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__forceManualPairing;
  LOBYTE(aBlock) = 0;
  sub_10008CD7C();
  v46(a6 + v48, v31, v47);
  v49 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__showPairedToastMessage;
  LOBYTE(aBlock) = 0;
  sub_10008CD7C();
  v46(a6 + v49, v31, v47);
  v50 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__prerequisiteStatus;
  LOBYTE(aBlock) = 6;
  sub_100009C08(&qword_1000CCC48, &unk_100094740);
  v51 = v116;
  sub_10008CD7C();
  (v118[4])(a6 + v50, v51, v125);
  v52 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__mdmServerInfo;
  aBlock = xmmword_1000952E0;
  v130 = 0;
  v131 = 0;
  LOBYTE(v132) = 0;
  sub_100009C08(&unk_1000CD8B0, &qword_100090200);
  v53 = v126;
  sub_10008CD7C();
  (*(v127 + 32))(a6 + v52, v53, v128);
  v54 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel__showEnrollmentErrorAlert;
  LOBYTE(aBlock) = 0;
  sub_10008CD7C();
  v46(a6 + v54, v31, v47);
  v55 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_enrollmentErrorInfo;
  v56 = type metadata accessor for ErrorInfo();
  (*(*(v56 - 8) + 56))(a6 + v55, 1, 1, v56);
  *(a6 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_deviceContextDidUpdateNotificationObserver) = 0;
  v57 = v119;
  sub_10000BE8C(v119, a6 + 16);
  sub_10000BE8C(v120, a6 + 56);
  sub_10000BE8C(v122, a6 + 96);
  sub_10000BE8C(v121, a6 + 176);
  sub_10000BE8C(&v135, a6 + 136);
  v58 = v57[3];
  v59 = v57[4];
  sub_10000BB24(v57, v58);
  *&aBlock = (*(v59 + 24))(v58, v59);
  v60 = sub_1000167AC();
  v61 = sub_10008DE7C();
  v134 = v61;
  v116 = sub_10008DE6C();
  v62 = *(v116 - 1);
  v125 = *(v62 + 56);
  v127 = v62 + 56;
  v63 = v117;
  v125(v117, 1, 1, v116);
  sub_100009C08(&qword_1000CE868, &unk_100096568);
  v128 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10001121C(&qword_1000CE870, &qword_1000CE868, &unk_100096568);
  v126 = sub_1000590C8();
  v64 = v101;
  sub_10008CE0C();
  sub_100016840(v63);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a6;
  v118 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001121C(&qword_1000CE878, &qword_1000CE860, &qword_100096560);
  v65 = v123;
  sub_10008CE1C();

  (*(v124 + 8))(v64, v65);
  swift_beginAccess();
  v124 = sub_100009C08(&qword_1000CAF40, &unk_100095840);
  v123 = sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840);
  sub_10008CCEC();
  swift_endAccess();

  v66 = v119[3];
  v67 = v119[4];
  sub_10000BB24(v119, v66);
  *&aBlock = (*(v67 + 16))(v66, v67);
  v68 = sub_10008DE7C();
  v134 = v68;
  v69 = v116;
  v125(v63, 1, 1, v116);
  sub_100009C08(&qword_1000CE880, &unk_100096578);
  sub_10001121C(&qword_1000CE888, &qword_1000CE880, &unk_100096578);
  v70 = v102;
  sub_10008CE0C();
  sub_100016840(v63);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a6;
  sub_10001121C(&qword_1000CE890, &qword_1000CE858, &unk_100096550);
  v71 = v103;
  sub_10008CE1C();

  (*(v105 + 8))(v70, v71);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v72 = v120[3];
  v73 = v120[4];
  sub_10000BB24(v120, v72);
  *&aBlock = (*(v73 + 24))(v72, v73);
  v100 = v60;
  v74 = sub_10008DE7C();
  v134 = v74;
  v75 = v117;
  v125(v117, 1, 1, v69);
  sub_100009C08(&unk_1000CD820, &unk_100094D30);
  sub_10001121C(&qword_1000CD180, &unk_1000CD820, &unk_100094D30);
  v76 = v106;
  sub_10008CE0C();
  sub_100016840(v75);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a6;
  sub_10001121C(&qword_1000CD830, &qword_1000CD808, &unk_100095410);
  v77 = v107;
  sub_10008CE1C();

  (*(v108 + 8))(v76, v77);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  sub_10000BB24(&v135, v136);
  *&aBlock = sub_10003F764();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a6;
  sub_100009C08(&qword_1000CE898, &unk_100096588);
  sub_10001121C(&qword_1000CE8A0, &qword_1000CE898, &unk_100096588);
  sub_10008CE1C();

  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v78 = v121[3];
  v79 = v121[4];
  sub_10000BB24(v121, v78);
  *&aBlock = (*(v79 + 8))(v78, v79);
  v80 = sub_10008DE7C();
  v134 = v80;
  v81 = v117;
  v125(v117, 1, 1, v116);
  sub_100009C08(&qword_1000CD7B8, &qword_1000953B0);
  sub_10001121C(&qword_1000CD7C0, &qword_1000CD7B8, &qword_1000953B0);
  v82 = v109;
  sub_10008CE0C();
  sub_100016840(v81);

  swift_getKeyPath();
  *&aBlock = a6;
  sub_10001121C(&qword_1000CD7C8, &qword_1000CD700, &qword_100095350);
  v83 = v110;
  sub_10008CE2C();

  (*(v111 + 8))(v82, v83);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v84 = v122[3];
  v85 = v122[4];
  sub_10000BB24(v122, v84);
  *&aBlock = (*(v85 + 24))(v84, v85);
  v86 = sub_10008DE7C();
  v134 = v86;
  v125(v81, 1, 1, v116);
  sub_100009C08(&qword_1000CE8A8, &qword_1000965C0);
  sub_10001121C(&qword_1000CE8B0, &qword_1000CE8A8, &qword_1000965C0);
  v87 = v112;
  sub_10008CE0C();
  sub_100016840(v81);

  swift_getKeyPath();
  *&aBlock = a6;
  sub_10001121C(&qword_1000CE8B8, &qword_1000CE850, &qword_100096548);
  v88 = v113;
  sub_10008CE2C();

  (*(v114 + 8))(v87, v88);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v89 = [objc_opt_self() defaultCenter];
  v90 = [objc_opt_self() deviceContextDidUpdateNotification];
  v91 = objc_opt_self();
  v92 = v90;
  v93 = [v91 mainQueue];
  v94 = swift_allocObject();
  swift_weakInit();
  v132 = sub_100078FF0;
  v133 = v94;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v130 = sub_100077140;
  v131 = &unk_1000C21D8;
  v95 = _Block_copy(&aBlock);

  v96 = [v89 addObserverForName:v92 object:0 queue:v93 usingBlock:v95];

  _Block_release(v95);
  v97 = *(a6 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_deviceContextDidUpdateNotificationObserver);
  *(a6 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_deviceContextDidUpdateNotificationObserver) = v96;
  swift_unknownObjectRelease();
  sub_10000BC74(&v135);
  sub_10000BC74(v121);
  sub_10000BC74(v122);
  sub_10000BC74(v120);
  sub_10000BC74(v119);
  return a6;
}

uint64_t sub_100078F50()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100078FB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100078FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007903C()
{
  v1 = v0[14];
  v0[15] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[16] = v2;
  v0[17] = swift_getObjectType();
  v3 = *(v2 + 24);
  v2 += 24;
  v0[18] = v3;
  v0[19] = v2 & 0xFFFFFFFFFFFFLL | 0xA2EC000000000000;
  v4 = *(v2 - 16);
  v6 = sub_10008DD8C();

  return _swift_task_switch(sub_1000790DC, v6, v5);
}

uint64_t sub_1000790DC()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = sub_10003D31C();
  v7 = sub_10003D370();
  v2(&type metadata for Data, 0xD000000000000011, 0x8000000100097CC0, &type metadata for Data, v6, v7, v3, v4);
  v0[20] = 0;

  return _swift_task_switch(sub_1000791C4, 0, 0);
}

uint64_t sub_1000791C4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_13;
  }

  v5 = *(v0 + 160);
  sub_10000B3B4(*(v0 + 16), *(v0 + 24));
  v6 = sub_10000AF70(v2, v1);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_10003D418(v2, v1);
LABEL_11:
    sub_10003D418(v2, v1);
    v4 = v9;
    goto LABEL_12;
  }

  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_10000B3B4(v2, v1);
  sub_100009C08(&qword_1000C9320, &qword_10008F470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10003D418(v2, v1);
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_100079C1C(v0 + 56);
LABEL_10:
    v8 = sub_10000A880(v2, v1);
    v9 = v14;
    goto LABEL_11;
  }

  sub_10000C3E0((v0 + 56), v0 + 16);
  v10 = *(v0 + 48);
  sub_10000BB24((v0 + 16), *(v0 + 40));
  v11 = sub_10008E05C();
  sub_10003D418(v2, v1);
  if ((v11 & 1) == 0)
  {
    sub_10000BC74((v0 + 16));
    goto LABEL_10;
  }

  v12 = *(v0 + 48);
  sub_10000BB24((v0 + 16), *(v0 + 40));
  sub_10008E04C();
  sub_10003D418(v2, v1);
  v8 = *(v0 + 56);
  v13 = *(v0 + 64);
  sub_10000BC74((v0 + 16));
  v4 = v13;
LABEL_12:
  v3 = v8;
LABEL_13:
  v15 = *(v0 + 8);

  return v15(v3, v4);
}

uint64_t sub_1000793E8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_10008DC2C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000794AC, 0, 0);
}

uint64_t sub_1000794AC()
{
  if (v0[6])
  {
    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[8];
    v4 = v0[5];
    sub_10008DC1C();
    v5 = sub_10008DBEC();
    v7 = v6;
    v0[11] = v5;
    v0[12] = v6;
    (*(v2 + 8))(v1, v3);
    if (v7 >> 60 == 15)
    {
      sub_100079BC8();
      swift_allocError();
      swift_willThrow();
      v8 = v0[10];

      v9 = v0[1];

      return v9();
    }

    v21 = v0[7];
    v0[13] = *(v21 + 16);
    v22 = *(v21 + 24);
    v0[14] = v22;
    v0[15] = swift_getObjectType();
    v23 = *(v22 + 32);
    v22 += 32;
    v0[16] = v23;
    v0[17] = v22 & 0xFFFFFFFFFFFFLL | 0x5359000000000000;
    v24 = *(v22 - 24);
    v25 = sub_10008DD8C();
    v20 = v26;
    v0[18] = v25;
    v0[19] = v26;
    v18 = sub_10007967C;
    v19 = v25;
  }

  else
  {
    v11 = v0[7];
    v0[25] = *(v11 + 16);
    v12 = *(v11 + 24);
    v0[26] = v12;
    v0[27] = swift_getObjectType();
    v13 = *(v12 + 32);
    v12 += 32;
    v0[28] = v13;
    v0[29] = v12 & 0xFFFFFFFFFFFFLL | 0x5359000000000000;
    v14 = *(v12 - 24);
    v15 = sub_10008DD8C();
    v17 = v16;
    v18 = sub_1000798A4;
    v19 = v15;
    v20 = v17;
  }

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_10007967C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  (*(v0 + 128))(0xD000000000000011, 0x8000000100097CC0, *(v0 + 120), *(v0 + 112));
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 176) = *(v3 + 16);
  *(v0 + 184) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x30FA000000000000;
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  return _swift_task_switch(sub_10007974C, v4, v5);
}

uint64_t sub_10007974C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = sub_10003D31C();
  v8 = sub_10003D370();
  v2(v0 + 2, 0xD000000000000011, 0x8000000100097CC0, &type metadata for Data, v7, v8, v4, v5);
  v0[24] = v3;
  if (v3)
  {
    v9 = sub_100079B38;
  }

  else
  {
    v9 = sub_100079838;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100079838()
{
  sub_10003D418(v0[11], v0[12]);
  v1 = v0[10];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000798A4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  (*(v0 + 224))(0xD000000000000011, 0x8000000100097CC0, *(v0 + 216), *(v0 + 208));
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100079948()
{
  v17 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  swift_errorRetain();
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v0 + 32) = v6;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v9 = sub_10008DC4C();
    v11 = sub_10000A2D8(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to remove previous grandslam token before storing the new one, this is expected if no previous key is present: %{public}s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  else
  {
  }

  *(v0 + 168) = 0;
  v12 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 176) = *(v12 + 16);
  *(v0 + 184) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0x30FA000000000000;
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);

  return _swift_task_switch(sub_10007974C, v13, v14);
}

uint64_t sub_100079B38()
{
  sub_10003D418(v0[11], v0[12]);
  v1 = v0[24];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

unint64_t sub_100079BC8()
{
  result = qword_1000CE960;
  if (!qword_1000CE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE960);
  }

  return result;
}

uint64_t sub_100079C1C(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000C9328, &qword_10008F478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100079C98()
{
  result = qword_1000CE968;
  if (!qword_1000CE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE968);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountProviderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountProviderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100079E40()
{
  result = qword_1000CE970;
  if (!qword_1000CE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE970);
  }

  return result;
}

uint64_t sub_100079E94(uint64_t a1, int a2)
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

uint64_t sub_100079EDC(uint64_t result, int a2, int a3)
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

uint64_t sub_100079F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = sub_100009C08(&qword_1000CE978, &qword_100096938);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = sub_100009C08(&qword_1000CE980, &qword_100096940);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_100009C08(&qword_1000CE988, &qword_100096948);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  *v12 = sub_10008D2EC();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v23 = sub_100009C08(&qword_1000CE990, &qword_100096950);
  sub_10007A204(a1, a2, a3, a4, &v12[*(v23 + 44)]);
  sub_10008D9FC();
  sub_10008D11C();
  sub_100037C28(v12, v17, &qword_1000CE978, &qword_100096938);
  v24 = &v17[*(v14 + 44)];
  v25 = v40;
  *(v24 + 4) = v39;
  *(v24 + 5) = v25;
  *(v24 + 6) = v41;
  v26 = v36;
  *v24 = v35;
  *(v24 + 1) = v26;
  v27 = v38;
  *(v24 + 2) = v37;
  *(v24 + 3) = v27;
  LOBYTE(v12) = sub_10008D53C();
  sub_100037C28(v17, v22, &qword_1000CE980, &qword_100096940);
  v28 = &v22[*(v19 + 44)];
  *v28 = v12;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = sub_100009C08(&qword_1000CE998, &qword_100096958);
  v30 = v34;
  v31 = v34 + *(v29 + 36);
  sub_10008D9BC();
  LOBYTE(v14) = sub_10008D53C();
  *(v31 + *(sub_100009C08(&qword_1000CCCD8, &unk_100096960) + 36)) = v14;
  return sub_100037C28(v22, v30, &qword_1000CE988, &qword_100096948);
}

uint64_t sub_10007A204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v79 = a3;
  v80 = a4;
  v74 = a2;
  v78 = a1;
  v81 = a5;
  v5 = sub_100009C08(&qword_1000CE9A0, &unk_100097640);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v68 - v9;
  v10 = sub_100009C08(&qword_1000CE9A8, &qword_100096970);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v77 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = (&v68 - v14);
  v110 = sub_100075C50();
  v111 = v15;
  v73 = sub_100019E50();
  v16 = sub_10008D68C();
  v18 = v17;
  v20 = v19;
  sub_10008D86C();
  v21 = sub_10008D65C();
  v23 = v22;
  v25 = v24;

  sub_10001CD48(v16, v18, v20 & 1);

  sub_10008D59C();
  v26 = sub_10008D67C();
  v28 = v27;
  LOBYTE(v16) = v29;

  sub_10001CD48(v21, v23, v25 & 1);

  sub_10008D5CC();
  v30 = sub_10008D63C();
  v86 = v31;
  v87 = v30;
  v33 = v32;
  v88 = v34;
  sub_10001CD48(v26, v28, v16 & 1);

  KeyPath = swift_getKeyPath();
  v84 = sub_10008D55C();
  v82 = v33 & 1;
  LOBYTE(v110) = v33 & 1;
  LOBYTE(v94) = 1;
  v35 = v74;
  v110 = sub_100075E7C();
  v111 = v36;
  v37 = sub_10008D68C();
  v39 = v38;
  LOBYTE(v26) = v40;
  sub_10008D86C();
  v41 = sub_10008D65C();
  v71 = v42;
  v72 = v41;
  LOBYTE(v21) = v43;
  v73 = v44;

  sub_10001CD48(v37, v39, v26 & 1);

  v45 = sub_10008D55C();
  LOBYTE(v18) = v21 & 1;
  LOBYTE(v110) = v21 & 1;
  v69 = v21 & 1;
  v70 = v45;
  LOBYTE(v94) = 1;
  v46 = sub_10008D2BC();
  v47 = v83;
  *v83 = v46;
  v47[1] = 0;
  *(v47 + 16) = 1;
  v48 = v47 + *(sub_100009C08(&qword_1000CE9B0, &qword_1000969A8) + 44);
  v49 = v75;
  sub_10007A8B0(v78, v35, v79, v80, v75);
  v50 = v76;
  sub_10000C314(v49, v76, &qword_1000CE9A0, &unk_100097640);
  *v48 = 0;
  v48[8] = 1;
  v51 = sub_100009C08(&qword_1000CE9B8, &qword_1000969B0);
  sub_10000C314(v50, &v48[*(v51 + 48)], &qword_1000CE9A0, &unk_100097640);
  v52 = &v48[*(v51 + 64)];
  *v52 = 0;
  v52[8] = 1;
  sub_10000C3F8(v49, &qword_1000CE9A0, &unk_100097640);
  sub_10000C3F8(v50, &qword_1000CE9A0, &unk_100097640);
  v53 = v77;
  sub_10000C314(v47, v77, &qword_1000CE9A8, &qword_100096970);
  *&v94 = v87;
  *(&v94 + 1) = v86;
  LOBYTE(v95) = v82;
  *(&v95 + 1) = *v93;
  DWORD1(v95) = *&v93[3];
  *(&v95 + 1) = v88;
  *&v96 = KeyPath;
  BYTE8(v96) = 1;
  HIDWORD(v96) = *&v92[3];
  *(&v96 + 9) = *v92;
  LOBYTE(v97[0]) = v84;
  DWORD1(v97[0]) = *&v91[3];
  *(v97 + 1) = *v91;
  *(&v97[1] + 8) = 0u;
  *(v97 + 8) = 0u;
  BYTE8(v97[2]) = 1;
  v54 = v95;
  v55 = v81;
  *v81 = v94;
  v55[1] = v54;
  v56 = v96;
  v57 = v97[0];
  v58 = v97[1];
  *(v55 + 73) = *(&v97[1] + 9);
  v55[3] = v57;
  v55[4] = v58;
  v55[2] = v56;
  v59 = v55;
  v60 = v71;
  v61 = v72;
  *&v98 = v72;
  *(&v98 + 1) = v71;
  LOBYTE(v99) = v18;
  DWORD1(v99) = *(v90 + 3);
  *(&v99 + 1) = v90[0];
  v62 = v73;
  *(&v99 + 1) = v73;
  LOBYTE(v49) = v70;
  LOBYTE(v100[0]) = v70;
  DWORD1(v100[0]) = *&v89[3];
  *(v100 + 1) = *v89;
  *(&v100[1] + 8) = 0u;
  *(v100 + 8) = 0u;
  BYTE8(v100[2]) = 1;
  v63 = v98;
  v64 = v99;
  *(v55 + 153) = *(&v100[1] + 9);
  v65 = v100[1];
  v55[8] = v100[0];
  v55[9] = v65;
  v55[6] = v63;
  v55[7] = v64;
  v66 = sub_100009C08(&qword_1000CE9C0, &qword_1000969B8);
  sub_10000C314(v53, v59 + *(v66 + 64), &qword_1000CE9A8, &qword_100096970);
  sub_10000C314(&v94, &v110, &qword_1000CE9C8, &unk_1000969C0);
  sub_10000C314(&v98, &v110, &qword_1000CC670, &qword_1000951A0);
  sub_10000C3F8(v83, &qword_1000CE9A8, &qword_100096970);
  sub_10000C3F8(v53, &qword_1000CE9A8, &qword_100096970);
  v101[0] = v61;
  v101[1] = v60;
  v102 = v69;
  *v103 = v90[0];
  *&v103[3] = *(v90 + 3);
  v104 = v62;
  v105 = v49;
  *v106 = *v89;
  *&v106[3] = *&v89[3];
  v107 = 0u;
  v108 = 0u;
  v109 = 1;
  sub_10000C3F8(v101, &qword_1000CC670, &qword_1000951A0);
  v110 = v87;
  v111 = v86;
  v112 = v82;
  *v113 = *v93;
  *&v113[3] = *&v93[3];
  v114 = v88;
  v115 = KeyPath;
  v116 = 1;
  *v117 = *v92;
  *&v117[3] = *&v92[3];
  v118 = v84;
  *v119 = *v91;
  *&v119[3] = *&v91[3];
  v121 = 0u;
  v120 = 0u;
  v122 = 1;
  return sub_10000C3F8(&v110, &qword_1000CE9C8, &unk_1000969C0);
}

uint64_t sub_10007A8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v74 = a3;
  v73 = a1;
  v81 = a5;
  v7 = sub_10008CB2C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10008DBBC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v76 = sub_100009C08(&qword_1000CD590, &qword_100095140);
  v11 = *(v76 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v76);
  v14 = &v72 - v13;
  v75 = sub_100009C08(&qword_1000CE9D0, &unk_1000976C0);
  v15 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v17 = &v72 - v16;
  v78 = sub_100009C08(&qword_1000CE9D8, &unk_1000969D0);
  v18 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v20 = &v72 - v19;
  v77 = sub_100009C08(&qword_1000CE9E0, &qword_1000976D0);
  v21 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v23 = &v72 - v22;
  v79 = sub_100009C08(&qword_1000CE9E8, &unk_1000969E0);
  v24 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v80 = &v72 - v25;
  sub_10008DB5C();
  sub_10008CB1C();
  v82 = sub_10008DC3C();
  v83 = v26;
  v27 = swift_allocObject();
  v27[2] = v73;
  v27[3] = a2;
  v27[4] = v74;
  v27[5] = a4;
  sub_100019E50();

  sub_10008D92C();
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  v74 = xmmword_100091E50;
  *(inited + 16) = xmmword_100091E50;
  v29 = sub_10008D54C();
  *(inited + 32) = v29;
  v30 = sub_10008D55C();
  *(inited + 33) = v30;
  v31 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v29)
  {
    v31 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v30)
  {
    v31 = sub_10008D57C();
  }

  sub_10008CF0C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  (*(v11 + 32))(v17, v14, v76);
  v40 = &v17[*(v75 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = swift_initStackObject();
  *(v41 + 16) = v74;
  v42 = sub_10008D56C();
  *(v41 + 32) = v42;
  v43 = sub_10008D58C();
  *(v41 + 33) = v43;
  v44 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v42)
  {
    v44 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v43)
  {
    v44 = sub_10008D57C();
  }

  sub_10008CF0C();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_100037C28(v17, v20, &qword_1000CE9D0, &unk_1000976C0);
  v53 = &v20[*(v78 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = &v23[*(v77 + 36)];
  sub_10008D9CC();
  v55 = sub_10008D53C();
  v54[*(sub_100009C08(&qword_1000CCCD8, &unk_100096960) + 36)] = v55;
  sub_100037C28(v20, v23, &qword_1000CE9D8, &unk_1000969D0);
  v56 = sub_10008D86C();
  KeyPath = swift_getKeyPath();
  v58 = v80;
  sub_100037C28(v23, v80, &qword_1000CE9E0, &qword_1000976D0);
  v59 = (v58 + *(v79 + 36));
  *v59 = KeyPath;
  v59[1] = v56;
  v60 = sub_100009C08(&qword_1000CE9A0, &unk_100097640);
  v61 = v81;
  v62 = (v81 + *(v60 + 36));
  v63 = *(sub_10008D0FC() + 20);
  v64 = enum case for RoundedCornerStyle.continuous(_:);
  v65 = sub_10008D2DC();
  (*(*(v65 - 8) + 104))(&v62[v63], v64, v65);
  __asm { FMOV            V0.2D, #20.0 }

  *v62 = _Q0;
  *&v62[*(sub_100009C08(&qword_1000CE9F0, &unk_100096A20) + 36)] = 256;
  return sub_100037C28(v58, v61, &qword_1000CE9E8, &unk_1000969E0);
}

uint64_t sub_10007AFA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007AFE8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

unint64_t sub_10007B01C()
{
  result = qword_1000CE9F8;
  if (!qword_1000CE9F8)
  {
    sub_100007108(&qword_1000CE998, &qword_100096958);
    sub_10007B0D4();
    sub_10001121C(&qword_1000CCD48, &qword_1000CCCD8, &unk_100096960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CE9F8);
  }

  return result;
}

unint64_t sub_10007B0D4()
{
  result = qword_1000CEA00;
  if (!qword_1000CEA00)
  {
    sub_100007108(&qword_1000CE988, &qword_100096948);
    sub_10007B160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CEA00);
  }

  return result;
}

unint64_t sub_10007B160()
{
  result = qword_1000CEA08;
  if (!qword_1000CEA08)
  {
    sub_100007108(&qword_1000CE980, &qword_100096940);
    sub_10001121C(&unk_1000CEA10, &qword_1000CE978, &qword_100096938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CEA08);
  }

  return result;
}

uint64_t sub_10007B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10007CB98(a3, v27 - v11);
  v13 = sub_10008DDEC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000DFE0(v12);
  }

  else
  {
    sub_10008DDDC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10008DD8C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10008DC6C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000DFE0(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DFE0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10007B4E8()
{
  v0 = sub_100009C08(&qword_1000CEAD8, &qword_100096BC8);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  sub_100009C08(&qword_1000CEAE0, &unk_100096BD0);
  v7 = sub_10008CC8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100091E50;
  sub_10008CC9C();
  v12 = *(v8 + 48);
  result = v12(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = v11 + v10;
    v15 = *(v8 + 32);
    v15(v14, v6, v7);
    sub_10008CC9C();
    result = v12(v4, 1, v7);
    if (result != 1)
    {
      result = (v15)(v14 + v9, v4, v7);
      qword_1000CEA20 = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007B700(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_10008C9BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v41 = v12;
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v15 = sub_10008CCDC();
  sub_100009F94(v15, qword_1000D6D38);
  v39 = *(v9 + 16);
  v40 = a1;
  v39(v14, a1, v8);
  v16 = sub_10008CCBC();
  v17 = sub_10008DE1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v7;
    v19 = v18;
    v44 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_10000A2D8(0xD00000000000001ALL, 0x800000010009CF80, &v44);
    *(v19 + 12) = 2082;
    sub_10007CB40();
    v20 = sub_10008E15C();
    v21 = v8;
    v23 = v22;
    v24 = v14;
    v25 = v21;
    (*(v9 + 8))(v24, v21);
    v26 = sub_10000A2D8(v20, v23, &v44);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s at url: %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    v7 = v38;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
    v25 = v8;
  }

  v27 = sub_10008DDEC();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = *(v2 + 8);
  v44 = *v2;
  v29 = *(v2 + 24);
  v30 = *(v2 + 40);
  v31 = v42;
  v39(v42, v40, v25);
  sub_10008DDBC();
  sub_10007C8B8(&v44, v43);

  v32 = sub_10008DDAC();
  v33 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = &protocol witness table for MainActor;
  v35 = *(v2 + 16);
  *(v34 + 32) = *v2;
  *(v34 + 48) = v35;
  *(v34 + 64) = *(v2 + 32);
  (*(v9 + 32))(v34 + v33, v31, v25);
  sub_10007B228(0, 0, v7, &unk_100096BE8, v34);
}

id sub_10007BC4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkProfilePickerView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10007BD28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10007BD3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10007BD84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10007BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v7 = sub_10008C9BC();
  v5[3] = v7;
  v8 = *(v7 - 8);
  v5[4] = v8;
  v5[5] = *(v8 + 64);
  v5[6] = swift_task_alloc();
  v9 = *(*(sub_100009C08(&unk_1000CCC50, &qword_10008F440) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = sub_10008DDBC();
  v10 = sub_10008DDAC();
  v11 = *(a4 + 24);
  v5[9] = v10;
  v5[10] = v11;
  v5[11] = sub_10008DDAC();
  v13 = sub_10008DD8C();

  return _swift_task_switch(sub_10007BF34, v13, v12);
}

uint64_t sub_10007BF34()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v17 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  v10 = sub_10008DDEC();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v9);

  v11 = sub_10008DDAC();
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = &protocol witness table for MainActor;
  *(v13 + 4) = v2;
  (*(v6 + 32))(&v13[v12], v5, v9);
  sub_10007B228(0, 0, v4, &unk_100096C00, v13);

  v15 = sub_10008DD8C();

  return _swift_task_switch(sub_10007C0DC, v15, v14);
}

uint64_t sub_10007C0DC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

id sub_10007C150()
{
  if (qword_1000C8D48 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(UIDocumentPickerViewController);
  sub_10008CC8C();
  isa = sub_10008DD2C().super.isa;
  v2 = [v0 initForOpeningContentTypes:isa asCopy:1];

  sub_100009C08(&qword_1000CEAD0, &qword_100096BC0);
  sub_10008D51C();
  [v2 setDelegate:v4];

  return v2;
}

id sub_10007C23C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[5];
  v20 = *v1;
  v21 = v4;
  v22 = v5;
  sub_100009C08(&qword_1000CEAC8, &qword_100096BB8);
  sub_10008D94C();
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = type metadata accessor for NetworkProfilePickerView.Coordinator();
  v15 = *(v2 + 3);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_parent];
  *v12 = v20;
  *(v12 + 1) = v4;
  v12[16] = v5;
  *(v12 + 24) = v15;
  *(v12 + 5) = v6;
  v13 = &v11[OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented];
  *v13 = v7;
  *(v13 + 1) = v8;
  v13[16] = v9;
  v16.receiver = v11;
  v16.super_class = v10;

  result = objc_msgSendSuper2(&v16, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10007C34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007C440();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10007C3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007C440();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10007C414()
{
  sub_10007C440();
  sub_10008D4EC();
  __break(1u);
}

unint64_t sub_10007C440()
{
  result = qword_1000CEAE8;
  if (!qword_1000CEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CEAE8);
  }

  return result;
}

uint64_t sub_10007C494(uint64_t a1)
{
  v2 = v1;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);
  v5 = sub_10008CCBC();
  v6 = sub_10008DE1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Network profile document picker picked document", v7, 2u);
  }

  if (*(a1 + 16))
  {
    v8 = *(sub_10008C9BC() - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_parent;
    v11 = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_parent + 16);
    v25 = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_parent);
    v26 = v11;
    v27 = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_parent + 32);
    v28 = v25;
    sub_10007C8B8(&v28, v23);

    sub_10007B700(a1 + v9);
    sub_10007C914(&v28);

    v12 = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented + 8);
    v13 = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented + 16);
    v23[0] = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented);
    v23[1] = v12;
    v24 = v13;
    sub_100009C08(&qword_1000CEAC8, &qword_100096BB8);
    sub_10008D93C();
  }

  else
  {
    v14 = sub_10008CCBC();
    v15 = sub_10008DE2C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Document picker didPickDocumentsAt called without a file url", v16, 2u);
    }

    v17 = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented + 8);
    v18 = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented + 16);
    *&v25 = *(v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented);
    *(&v25 + 1) = v17;
    LOBYTE(v26) = v18;
    LOBYTE(v23[0]) = 0;
    sub_100009C08(&qword_1000CEAC8, &qword_100096BB8);
    sub_10008D93C();
    v10 = v2 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_parent;
  }

  v19 = *(v10 + 32);
  v20 = *(v10 + 40);

  v19(v21);
}

uint64_t sub_10007C768()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Network profile document picker cancelled document", v5, 2u);
  }

  v11 = *(v1 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented);
  v12 = *(v1 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented + 8);
  v13 = *(v1 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_isPresented + 16);
  sub_100009C08(&qword_1000CEAC8, &qword_100096BB8);
  sub_10008D93C();
  v6 = v1 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_parent;
  v7 = *(v1 + OBJC_IVAR____TtCV46AddDevicesToAutomatedDeviceEnrollmentExtension24NetworkProfilePickerView11Coordinator_parent + 32);
  v8 = *(v6 + 40);

  v7(v9);
}

uint64_t sub_10007C968()
{
  v1 = sub_10008C9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 7);

  v10 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007CA4C(uint64_t a1)
{
  v4 = *(sub_10008C9BC() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000092CC;

  return sub_10007BDE0(a1, v6, v7, v1 + 32, v1 + v5);
}

unint64_t sub_10007CB40()
{
  result = qword_1000CDBC0;
  if (!qword_1000CDBC0)
  {
    sub_10008C9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDBC0);
  }

  return result;
}

uint64_t sub_10007CB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007CC08()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007CC40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000E290;

  return sub_100083D74(a1, v5);
}

uint64_t sub_10007CCF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000092CC;

  return sub_100083D74(a1, v5);
}

uint64_t sub_10007CDB0()
{
  v1 = sub_10008C9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007CE7C(uint64_t a1)
{
  v4 = *(sub_10008C9BC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000E290;

  return sub_10006D124(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10007CF78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_10007D00C()
{
  v1 = v0[3];
  if (*(v1 + 128))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = *(v1 + 112);
    v4 = *(v1 + 120);
    v0[5] = v4;
    v0[6] = swift_getObjectType();
    v0[7] = sub_100009C08(&unk_1000CBCD8, &qword_100096CA0);
    v5 = *(v4 + 24);
    v4 += 24;
    v0[8] = v5;
    v0[9] = v4 & 0xFFFFFFFFFFFFLL | 0xA2EC000000000000;
    v6 = *(v4 - 16);
    v8 = sub_10008DD8C();

    return _swift_task_switch(sub_10007D110, v8, v7);
  }
}

uint64_t sub_10007D110()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = sub_10007F970(&qword_1000CEC38, &qword_1000CEC40);
  v8 = sub_10007F970(&qword_1000CEC48, &qword_1000CEC50);
  v2(v4, 0xD000000000000011, 0x800000010009D020, v4, v7, v8, v3, v6);
  v0[10] = 0;
  v9 = v0[3];

  return _swift_task_switch(sub_10007D26C, v9, 0);
}

uint64_t sub_10007D26C()
{
  v1 = v0[3];
  if (v0[2])
  {
    v2 = v0[2];
  }

  else
  {
    v2 = &_swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;

  sub_10008CDBC();
  *(v0[3] + 128) = 1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10007D33C()
{
  v15 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  swift_errorRetain();
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v9 = sub_10008DC4C();
    v11 = sub_10000A2D8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Loading enrollment history failed with error: %{public}s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  else
  {
  }

  *(v0[3] + 128) = 1;
  v12 = v0[1];

  return v12();
}

uint64_t sub_10007D538()
{
  v1 = v0[3];
  v0[4] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v0[7] = v0[2];
  v3 = *(v2 + 16);
  v2 += 16;
  v0[8] = v3;
  v0[9] = v2 & 0xFFFFFFFFFFFFLL | 0x30FA000000000000;
  v4 = *(v2 - 8);
  v6 = sub_10008DD8C();

  return _swift_task_switch(sub_10007D640, v6, v5);
}

uint64_t sub_10007D640()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = sub_100009C08(&unk_1000CBCD8, &qword_100096CA0);
  v7 = sub_10007F970(&qword_1000CEC38, &qword_1000CEC40);
  v8 = sub_10007F970(&qword_1000CEC48, &qword_1000CEC50);
  v2(v0 + 2, 0xD000000000000011, 0x800000010009D020, v6, v7, v8, v3, v4);
  v0[10] = 0;
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10007D7F0()
{
  v15 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  swift_errorRetain();
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v9 = sub_10008DC4C();
    v11 = sub_10000A2D8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Writing enrollment history failed with error: %{public}s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007D9C0()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension33ConcreteEnrollmentHistoryProvider__enrolledDeviceRecords;
  v3 = sub_100009C08(&qword_1000CBDC0, &qword_1000934F0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ConcreteEnrollmentHistoryProvider()
{
  result = qword_1000CEB20;
  if (!qword_1000CEB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007DAA0()
{
  sub_10003A6FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10007DB50(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(type metadata accessor for EnrolledDeviceRecord() - 8);
  v2[8] = v3;
  v4 = *(v3 + 64) + 15;
  v2[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[10] = v5;
  *v5 = v2;
  v5[1] = sub_10007DC38;

  return sub_10007CFEC();
}

uint64_t sub_10007DC38()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10007DD48, v2, 0);
}

uint64_t sub_10007DD48()
{
  v1 = v0[7];
  sub_10003347C(v0[6], v0[9]);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_10008CD9C();
  v4 = v3;
  v5 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_10003AE50(0, v5[2] + 1, 1, v5);
    *v4 = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_10003AE50(v7 > 1, v8 + 1, 1, v5);
    *v4 = v5;
  }

  v10 = v0[8];
  v9 = v0[9];
  v5[2] = v8 + 1;
  sub_10003AE78(v9, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
  v2(v0 + 2, 0);

  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_10007DEF0;
  v12 = v0[7];

  return sub_10007D518();
}

uint64_t sub_10007DEF0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10007E000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_10008CB6C();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_10008C8AC();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = type metadata accessor for EnrolledDeviceRecord();
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v14 = swift_task_alloc();
  v4[18] = v14;
  *v14 = v4;
  v14[1] = sub_10007E1B4;

  return sub_10007CFEC();
}

uint64_t sub_10007E1B4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10007E2C4, v2, 0);
}

uint64_t sub_10007E2C4()
{
  v1 = v0[7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v0[2];
  v40 = *(result + 16);
  if (v40)
  {
    v3 = 0;
    v37 = v0[14];
    v38 = v0[15];
    v36 = enum case for Calendar.Component.year(_:);
    v35 = enum case for Calendar.Component.month(_:);
    v34 = enum case for Calendar.Component.day(_:);
    v32 = (v0[12] + 8);
    v33 = (v0[9] + 8);
    v4 = &_swiftEmptyArrayStorage;
    v39 = v0[2];
    while (1)
    {
      if (v3 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v44 = v4;
      v45 = v0[17];
      v46 = v0[13];
      v5 = v0[10];
      v47 = v0[8];
      v43 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v41 = v0[4];
      v42 = *(v38 + 72);
      sub_10003347C(result + v43 + v42 * v3, v45);
      sub_10008CB4C();
      sub_100009C08(&qword_1000C9DE8, &qword_10008FE30);
      v6 = sub_10008CB5C();
      v7 = *(v6 - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100090C60;
      v11 = v10 + v9;
      v12 = *(v7 + 104);
      v12(v11, v36, v6);
      v12(v11 + v8, v35, v6);
      v12(v11 + 2 * v8, v34, v6);
      sub_10007F650(v10);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v13 = v45 + *(v37 + 20);
      sub_10008CB3C();

      (*v33)(v5, v47);
      v14 = sub_10008C88C();
      if (v15)
      {
        break;
      }

      if (v14 != v41)
      {
        break;
      }

      v16 = v0[13];
      v17 = v0[5];
      v18 = sub_10008C89C();
      if ((v19 & 1) != 0 || v18 != v17)
      {
        break;
      }

      v20 = v0[13];
      v21 = v0[11];
      v22 = v0[6];
      v23 = sub_10008C86C();
      v25 = v24;
      (*v32)(v20, v21);
      if ((v25 & 1) != 0 || v23 != v22)
      {
        goto LABEL_14;
      }

      sub_10003B214(v0[17]);
      result = v39;
      v4 = v44;
LABEL_4:
      if (v40 == ++v3)
      {
        goto LABEL_20;
      }
    }

    (*v32)(v0[13], v0[11]);
LABEL_14:
    sub_10003AE78(v0[17], v0[16]);
    v4 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000A98C(0, v44[2] + 1, 1);
      v4 = v44;
    }

    v27 = v4[2];
    v26 = v4[3];
    if (v27 >= v26 >> 1)
    {
      sub_10000A98C(v26 > 1, v27 + 1, 1);
      v4 = v44;
    }

    v28 = v0[16];
    v4[2] = v27 + 1;
    sub_10003AE78(v28, v4 + v43 + v27 * v42);
    result = v39;
    goto LABEL_4;
  }

  v4 = &_swiftEmptyArrayStorage;
LABEL_20:
  v29 = v0[7];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v4;

  sub_10008CDBC();
  v30 = swift_task_alloc();
  v0[19] = v30;
  *v30 = v0;
  v30[1] = sub_10007E784;
  v31 = v0[7];

  return sub_10007D518();
}

uint64_t sub_10007E784()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 80);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10007E8F0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = swift_task_alloc();
  v2[7] = v3;
  *v3 = v2;
  v3[1] = sub_10007E980;

  return sub_10007CFEC();
}

uint64_t sub_10007E980()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10007EA90, v2, 0);
}

uint64_t sub_10007EA90()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  sub_100009C08(&qword_1000CBDC0, &qword_1000934F0);
  sub_10008CD8C();
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10007EB38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000E290;

  return sub_10007DB50(a1);
}

uint64_t sub_10007EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000092CC;

  return sub_10007E000(a1, a2, a3);
}

uint64_t sub_10007EC78()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_10007ED08;

  return sub_10007CFEC();
}

uint64_t sub_10007ED08()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10007EE18, v2, 0);
}

uint64_t sub_10007EE18()
{
  v1 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10007EEC4()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_10007EF54;

  return sub_10007CFEC();
}

uint64_t sub_10007EF54()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10007F064, v2, 0);
}

uint64_t sub_10007F064()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_10008CD9C();
  v4 = *v3;
  *v3 = &_swiftEmptyArrayStorage;

  v2(v0 + 16, 0);

  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_10007F174;
  v6 = *(v0 + 48);

  return sub_10007D518();
}

uint64_t sub_10007F174()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10007F268(uint64_t a1)
{
  result = sub_10007FA0C(&qword_1000CEC18, type metadata accessor for ConcreteEnrollmentHistoryProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007F2C0()
{
  result = sub_10007F2E4();
  qword_1000D6DD0 = result;
  *algn_1000D6DD8 = v1;
  return result;
}

uint64_t sub_10007F2E4()
{
  v0 = sub_100009C08(&qword_1000CBDC0, &qword_1000934F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v19 - v3;

  v5 = [objc_opt_self() defaultManager];
  v6 = type metadata accessor for FileManagerBackedEncryptedKeyValueStorage();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension41FileManagerBackedEncryptedKeyValueStorage____lazy_storage___documentsSubDirectoryURL;
  v11 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *(v9 + 14) = v5;
  v12 = sub_10007FA0C(&qword_1000CD6D8, type metadata accessor for FileManagerBackedEncryptedKeyValueStorage);
  v13 = type metadata accessor for ConcreteEnrollmentHistoryProvider();
  *(v9 + 15) = 0;
  *(v9 + 16) = 0;
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 128) = 0;
  v17 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension33ConcreteEnrollmentHistoryProvider__enrolledDeviceRecords;
  v19[1] = &_swiftEmptyArrayStorage;
  sub_100009C08(&unk_1000CBCD8, &qword_100096CA0);
  sub_10008CD7C();
  (*(v1 + 32))(v16 + v17, v4, v0);
  *(v16 + 112) = v9;
  *(v16 + 120) = v12;
  sub_10007FA0C(&qword_1000CEC58, type metadata accessor for ConcreteEnrollmentHistoryProvider);
  return v16;
}

uint64_t sub_10007F54C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_10007F5D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

void *sub_10007F650(uint64_t a1)
{
  v2 = sub_10008CB5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100009C08(&qword_1000CEC20, &qword_100096D70);
    v10 = sub_10008DF9C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10007FA0C(&qword_1000CEC28, &type metadata accessor for Calendar.Component);
      v18 = sub_10008DB2C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10007FA0C(&qword_1000CEC30, &type metadata accessor for Calendar.Component);
          v25 = sub_10008DB4C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10007F970(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100007108(&unk_1000CBCD8, &qword_100096CA0);
    sub_10007FA0C(a2, type metadata accessor for EnrolledDeviceRecord);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007FA0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007FA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10007CB98(a3, v27 - v11);
  v13 = sub_10008DDEC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000DFE0(v12);
  }

  else
  {
    sub_10008DDDC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10008DD8C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10008DC6C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_10007FCF4()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider____lazy_storage___delegationQueue;
  v2 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider____lazy_storage___delegationQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider____lazy_storage___delegationQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(CATSerialOperationQueue) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10007FD68()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider__catSharingDeviceDiscovery;
  v2 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider__catSharingDeviceDiscovery);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider__catSharingDeviceDiscovery);
LABEL_5:
    v8 = v2;
    return;
  }

  v4 = [objc_allocWithZone(DMTSharingDiscoveryPrimitives) init];
  v5 = sub_10007FCF4();
  v6 = [objc_allocWithZone(CATSharingDeviceDiscovery) initWithDiscoveryPrimitives:v4 delegate:v0 delegateOperationQueue:v5];

  v7 = *(v0 + v1);
  if (v6)
  {
    *(v0 + v1) = v6;
    v6;

    v2 = 0;
    goto LABEL_5;
  }

  if (v7)
  {
    [*(v0 + v1) invalidate];
    v9 = *(v0 + v1);
  }

  else
  {
    v9 = 0;
  }

  *(v0 + v1) = 0;

  __break(1u);
}

uint64_t sub_10007FE5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

void sub_10007FED0(id a1, void *a2)
{
  v3 = v2;
  v6 = sub_10008CB0C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice];
  if (v11)
  {
    v69 = v8;
    v12 = qword_1000C8CF8;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_10008CCDC();
    sub_100009F94(v14, qword_1000D6D38);
    v15 = v13;
    v16 = sub_10008CCBC();
    v17 = sub_10008DE1C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v68 = a1;
      v19 = v18;
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v19 = 136315394;
      *(v19 + 4) = sub_10000A2D8(0xD000000000000041, 0x800000010009D2A0, &aBlock);
      *(v19 + 12) = 2082;
      v20 = [v15 identifier];
      sub_10008CAEC();

      sub_10008514C();
      v21 = sub_10008E15C();
      HIDWORD(v66) = v17;
      v22 = a2;
      v23 = v3;
      v24 = v15;
      v26 = v25;
      (v69[1].isa)(v10, v6);
      v27 = sub_10000A2D8(v21, v26, &aBlock);
      v15 = v24;
      v3 = v23;
      a2 = v22;

      *(v19 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, BYTE4(v66), "%s %{public}s", v19, 0x16u);
      swift_arrayDestroy();

      a1 = v68;
    }

    if (a2)
    {
      swift_unknownObjectRetain();
      v28 = sub_10008CCBC();
      v29 = sub_10008DE1C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v68 = a2;
        v31 = v30;
        aBlock = swift_slowAlloc();
        *v31 = 136315394;
        *(v31 + 4) = sub_10000A2D8(0xD000000000000041, 0x800000010009D2A0, &aBlock);
        *(v31 + 12) = 2082;
        v32 = [v68 remoteDevice];
        v33 = [v32 identifier];

        sub_10008CAEC();
        sub_10008514C();
        v34 = sub_10008E15C();
        v36 = v35;
        (v69[1].isa)(v10, v6);
        v37 = sub_10000A2D8(v34, v36, &aBlock);

        *(v31 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v28, v29, "%s Device was already paired: %{public}s", v31, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000812F4(1);
      swift_unknownObjectRelease();
      return;
    }

    v42 = v3;
    v43 = *&v3[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal];
    if (!v43)
    {
      v44 = sub_10008CCBC();
      v50 = sub_10008DE4C();
      if (os_log_type_enabled(v44, v50))
      {
        v51 = v15;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_10000A2D8(0xD000000000000041, 0x800000010009D2A0, &aBlock);
        _os_log_impl(&_mh_execute_header, v44, v50, "%s called unexpectedly when we don't have a pairing terminal", v52, 0xCu);
        sub_10000BC74(v53);

        return;
      }

      goto LABEL_29;
    }

    if ([swift_unknownObjectRetain() isInvalidated])
    {
      v44 = sub_10008CCBC();
      v45 = sub_10008DE4C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = v15;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_10000A2D8(0xD000000000000041, 0x800000010009D2A0, &aBlock);
        _os_log_impl(&_mh_execute_header, v44, v45, "%s Pairing terminal invalidated", v47, 0xCu);
        sub_10000BC74(v48);

        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
LABEL_29:

LABEL_32:
      return;
    }

    if (a1)
    {
      v54 = sub_10008C8DC();
      if ([v54 code] == 704)
      {
        v55 = v15;
        v56 = sub_10008CCBC();
        v57 = sub_10008DE1C();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          aBlock = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_10000A2D8(0xD000000000000041, 0x800000010009D2A0, &aBlock);
          _os_log_impl(&_mh_execute_header, v56, v57, "%s - calling -beginPairing:withCompletion:", v58, 0xCu);
          sub_10000BC74(v59);
        }

        v60 = swift_allocObject();
        *(v60 + 16) = v42;
        v74 = sub_10008548C;
        v75 = v60;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_1000808D4;
        v73 = &unk_1000C2770;
        v61 = _Block_copy(&aBlock);
        v62 = v42;

        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        v74 = sub_1000854C8;
        v75 = v63;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_100080928;
        v73 = &unk_1000C27C0;
        v64 = _Block_copy(&aBlock);
        v65 = v62;

        [v43 beginPairing:v61 withCompletion:v64];

        _Block_release(v64);
        _Block_release(v61);

        swift_unknownObjectRelease();
        return;
      }
    }

    sub_1000812F4(0);
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v38 = sub_10008CCDC();
  sub_100009F94(v38, qword_1000D6D38);
  v69 = sub_10008CCBC();
  v39 = sub_10008DE4C();
  if (os_log_type_enabled(v69, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_10000A2D8(0xD000000000000041, 0x800000010009D2A0, &aBlock);
    _os_log_impl(&_mh_execute_header, v69, v39, "%s called unexpectedly when we don't have a current device in pairing mode", v40, 0xCu);
    sub_10000BC74(v41);
  }

  else
  {
    v49 = v69;
  }
}

uint64_t sub_1000808D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100080928(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1000809AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10008CB0C();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v11 = &v83 - v10;
  __chkstk_darwin(v9);
  v15 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice;
  v16 = *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice);
  if (v16)
  {
    v88 = &v83 - v12;
    v86 = v14;
    v90 = v13;
    v17 = qword_1000C8CF8;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = sub_10008CCDC();
    v20 = sub_100009F94(v19, qword_1000D6D38);
    v21 = v18;
    v89 = v20;
    v22 = sub_10008CCBC();
    v23 = sub_10008DE1C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v87 = v11;
      v25 = v24;
      v84 = swift_slowAlloc();
      v92 = v84;
      *v25 = 136315394;
      *(v25 + 4) = sub_10000A2D8(0xD00000000000003ELL, 0x800000010009D260, &v92);
      *(v25 + 12) = 2082;
      v26 = [v21 identifier];
      v83 = v22;
      v27 = v26;
      v85 = v15;
      v28 = v88;
      sub_10008CAEC();

      sub_10008514C();
      v29 = v23;
      v30 = sub_10008E15C();
      v31 = a1;
      v32 = a2;
      v33 = v21;
      v34 = v3;
      v36 = v35;
      v37 = v28;
      v15 = v85;
      (v90)[1](v37, v6);
      v38 = sub_10000A2D8(v30, v36, &v92);
      v3 = v34;
      v21 = v33;
      a2 = v32;
      a1 = v31;

      *(v25 + 14) = v38;
      v39 = v29;
      v40 = v83;
      _os_log_impl(&_mh_execute_header, v83, v39, "%s %{public}s", v25, 0x16u);
      swift_arrayDestroy();

      v11 = v87;
    }

    else
    {
    }

    v45 = *(v3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal);
    *(v3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal) = 0;
    swift_unknownObjectRelease();
    if (a1)
    {
      v46 = v6;
      v47 = v21;
      swift_errorRetain();
      v48 = sub_10008CCBC();
      v49 = sub_10008DE2C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v92 = v89;
        *v50 = 136315650;
        *(v50 + 4) = sub_10000A2D8(0xD00000000000003ELL, 0x800000010009D260, &v92);
        *(v50 + 12) = 2082;
        v51 = [v47 identifier];
        v52 = v88;
        sub_10008CAEC();

        sub_10008514C();
        v53 = sub_10008E15C();
        v55 = v54;
        (v90)[1](v52, v46);
        v56 = sub_10000A2D8(v53, v55, &v92);

        *(v50 + 14) = v56;
        *(v50 + 22) = 2082;
        v91 = a1;
        swift_errorRetain();
        sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
        v57 = sub_10008DC4C();
        v59 = sub_10000A2D8(v57, v58, &v92);

        *(v50 + 24) = v59;
        _os_log_impl(&_mh_execute_header, v48, v49, "%s Failed to pair with device  %{public}s: %{public}s", v50, 0x20u);
        swift_arrayDestroy();
      }

      sub_1000812F4(0);
    }

    else if (a2)
    {
      v88 = v21;
      v60 = swift_unknownObjectRetain();
      v85 = a2;
      v61 = [v60 remoteDevice];
      v62 = [v61 identifier];

      sub_10008CAEC();
      v63 = *(v3 + v15);
      *(v3 + v15) = 0;

      v64 = v90;
      v65 = v90[2];
      v66 = v86;
      v87 = v11;
      v65(v86, v11, v6);
      v67 = sub_10008CCBC();
      v68 = sub_10008DE1C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v89 = v3;
        v71 = v70;
        v92 = v70;
        *v69 = 136446210;
        sub_10008514C();
        v72 = sub_10008E15C();
        v74 = v73;
        v75 = v64[1];
        v75(v66, v6);
        v76 = sub_10000A2D8(v72, v74, &v92);

        *(v69 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v67, v68, "Successfully paired with device %{public}s", v69, 0xCu);
        sub_10000BC74(v71);
        v3 = v89;
      }

      else
      {

        v75 = v64[1];
        v75(v66, v6);
      }

      v82 = *(v3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_pairedDeviceConnectionSubject);
      v92 = v85;
      sub_10008CD3C();

      v75(v87, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = sub_10008CCBC();
      v79 = sub_10008DE2C();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v92 = v81;
        *v80 = 136315138;
        *(v80 + 4) = sub_10000A2D8(0xD00000000000003ELL, 0x800000010009D260, &v92);
        _os_log_impl(&_mh_execute_header, v78, v79, "%s No paired connection and no error!", v80, 0xCu);
        sub_10000BC74(v81);
      }

      sub_1000812F4(0);
    }
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v41 = sub_10008CCDC();
    sub_100009F94(v41, qword_1000D6D38);
    v90 = sub_10008CCBC();
    v42 = sub_10008DE4C();
    if (os_log_type_enabled(v90, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v92 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_10000A2D8(0xD00000000000003ELL, 0x800000010009D260, &v92);
      _os_log_impl(&_mh_execute_header, v90, v42, "%s called unexpectedly when we don't have a current device in pairing mode", v43, 0xCu);
      sub_10000BC74(v44);
    }

    else
    {
      v77 = v90;
    }
  }
}

void sub_1000812F4(int a1)
{
  v2 = v1;
  v4 = sub_10008CB0C();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice);
  if (v10)
  {
    v55 = v7;
    v57 = v6;
    v58 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice;
    v11 = qword_1000C8CF8;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_10008CCDC();
    sub_100009F94(v13, qword_1000D6D38);
    v14 = v12;
    v15 = sub_10008CCBC();
    v16 = sub_10008DE1C();

    v17 = os_log_type_enabled(v15, v16);
    v56 = v2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      HIDWORD(v54) = a1;
      v59 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_10000A2D8(0xD000000000000025, 0x800000010009D230, &v59);
      *(v18 + 12) = 2082;
      v20 = [v14 identifier];
      sub_10008CAEC();

      sub_10008514C();
      v21 = v57;
      v22 = sub_10008E15C();
      v24 = v23;
      (*(v55 + 8))(v9, v21);
      v25 = sub_10000A2D8(v22, v24, &v59);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      LOBYTE(a1) = BYTE4(v54);
    }

    v26 = v14;
    v27 = sub_10008CCBC();
    v28 = sub_10008DE1C();

    v29 = os_log_type_enabled(v27, v28);
    if (a1)
    {
      if (v29)
      {
        v30 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v30 = 136315394;
        *(v30 + 4) = sub_10000A2D8(0xD000000000000025, 0x800000010009D230, &v59);
        *(v30 + 12) = 2082;
        v31 = [v26 identifier];
        sub_10008CAEC();

        sub_10008514C();
        v32 = v57;
        v33 = sub_10008E15C();
        v35 = v34;
        (*(v55 + 8))(v9, v32);
        v36 = sub_10000A2D8(v33, v35, &v59);

        *(v30 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s - sending alreadyPairedDeviceConnection for %{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      v37 = v56;
      v38 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_alreadyPairedDeviceConnectionSubject;
    }

    else
    {
      if (v29)
      {
        v43 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v43 = 136315394;
        *(v43 + 4) = sub_10000A2D8(0xD000000000000025, 0x800000010009D230, &v59);
        *(v43 + 12) = 2082;
        v44 = [v26 identifier];
        sub_10008CAEC();

        sub_10008514C();
        v45 = v57;
        v46 = sub_10008E15C();
        v48 = v47;
        (*(v55 + 8))(v9, v45);
        v49 = sub_10000A2D8(v46, v48, &v59);

        *(v43 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s - sending failedDeviceConnection for %{public}s", v43, 0x16u);
        swift_arrayDestroy();
      }

      v37 = v56;
      v38 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_failedDeviceConnectionSubject;
    }

    v50 = *(v37 + v38);
    v59 = v26;
    sub_10008CD3C();

    v51 = *(v37 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal);
    *(v37 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal) = 0;
    swift_unknownObjectRelease();
    v52 = *(&v58->isa + v37);
    *(&v58->isa + v37) = 0;
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v39 = sub_10008CCDC();
    sub_100009F94(v39, qword_1000D6D38);
    v58 = sub_10008CCBC();
    v40 = sub_10008DE4C();
    if (os_log_type_enabled(v58, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v59 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10000A2D8(0xD000000000000025, 0x800000010009D230, &v59);
      _os_log_impl(&_mh_execute_header, v58, v40, "%s currentPairingDevice cannot be nil", v41, 0xCu);
      sub_10000BC74(v42);
    }

    else
    {
      v53 = v58;
    }
  }
}

id sub_100081A1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TerminalBackedDevicesDiscoveryProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TerminalBackedDevicesDiscoveryProvider()
{
  result = qword_1000CECE8;
  if (!qword_1000CECE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100081BD0()
{
  sub_100031118();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100081C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000E290;

  return sub_100038FC4(a5);
}

uint64_t sub_100081E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1000092CC;

  return sub_100038FC4(a5);
}

void sub_100082000()
{
  v1 = v0;
  sub_100082230();
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000A2D8(0xD000000000000019, 0x80000001000982C0, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Starting device discovery", v5, 0xCu);
    sub_10000BC74(v6);
  }

  sub_10007FD68();
  v8 = v7;
  v16 = v7;
  swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100083CE8;
  *(v10 + 24) = v9;
  v11 = v1;
  v12 = sub_10008C91C();

  v13 = *&v11[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_nearbyDeviceDiscoveryObservation];
  *&v11[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_nearbyDeviceDiscoveryObservation] = v12;

  sub_10007FD68();
  v15 = v14;
  [v14 activate];
}

void sub_100082230()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000A2D8(0xD000000000000018, 0x800000010009D210, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Stopping device discovery", v5, 0xCu);
    sub_10000BC74(v6);
  }

  v7 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_nearbyDeviceDiscoveryObservation;
  v8 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_nearbyDeviceDiscoveryObservation);
  if (v8)
  {
    v9 = v8;
    sub_10008C8BC();

    v8 = *(v1 + v7);
  }

  *(v1 + v7) = 0;

  v10 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider__catSharingDeviceDiscovery;
  v11 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider__catSharingDeviceDiscovery);
  if (v11)
  {
    [v11 invalidate];
    v11 = *(v1 + v10);
  }

  *(v1 + v10) = 0;
}

void sub_1000823D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 nearbyDevices];
  sub_100085100();
  v4 = sub_10008DD3C();

  *a2 = v4;
}

void sub_100082438(void *a1)
{
  v2 = v1;
  v4 = sub_10008CB0C();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  __chkstk_darwin(v4);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v7 = sub_10008CCDC();
  sub_100009F94(v7, qword_1000D6D38);
  v8 = a1;
  v9 = sub_10008CCBC();
  v10 = sub_10008DE1C();

  v11 = os_log_type_enabled(v9, v10);
  v58 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10000A2D8(0xD000000000000015, 0x800000010009D3C0, aBlock);
    *(v12 + 12) = 2080;
    v13 = [v8 identifier];
    v14 = v59;
    sub_10008CAEC();

    sub_10008514C();
    v15 = v2;
    v16 = v61;
    v17 = sub_10008E15C();
    v19 = v18;
    v20 = v16;
    v2 = v15;
    (*(v60 + 8))(v14, v20);
    v21 = sub_10000A2D8(v17, v19, aBlock);

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v22 = *&v2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice];
  if (v22)
  {
    v23 = v22;
    v24 = sub_10008CCBC();
    v25 = sub_10008DE2C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_10000A2D8(0xD000000000000015, 0x800000010009D3C0, aBlock);
      *(v26 + 12) = 2082;
      v27 = [v23 identifier];
      v28 = v59;
      sub_10008CAEC();

      sub_10008514C();
      v29 = v61;
      v30 = sub_10008E15C();
      v32 = v31;
      (*(v60 + 8))(v28, v29);
      v33 = sub_10000A2D8(v30, v32, aBlock);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s Already attempting to pair with a device: %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      return;
    }

    goto LABEL_13;
  }

  v34 = v58;
  *&v2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice] = v58;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;
  v35 = v34;
  v36 = v2;
  sub_10008CDBC();
  sub_10007FD68();
  v38 = v37;
  v39 = [v37 pairingTerminalForDevice:v35];

  v40 = *&v36[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal];
  *&v36[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal] = v39;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v39)
  {
    v48 = v35;
    v24 = sub_10008CCBC();
    v49 = sub_10008DE2C();

    if (os_log_type_enabled(v24, v49))
    {
      v50 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_10000A2D8(0xD000000000000015, 0x800000010009D3C0, aBlock);
      *(v50 + 12) = 2082;
      v51 = [v48 identifier];
      v52 = v59;
      sub_10008CAEC();

      sub_10008514C();
      v53 = v61;
      v54 = sub_10008E15C();
      v56 = v55;
      (*(v60 + 8))(v52, v53);
      v57 = sub_10000A2D8(v54, v56, aBlock);

      *(v50 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v24, v49, "%s catSharingDeviceDiscovery.pairingTerminal returned nil for %{public}s", v50, 0x16u);
      swift_arrayDestroy();
    }

LABEL_13:

    return;
  }

  v41 = sub_10008CCBC();
  v42 = sub_10008DE1C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_10000A2D8(0xD000000000000015, 0x800000010009D3C0, aBlock);
    _os_log_impl(&_mh_execute_header, v41, v42, "%s - calling -verifyPairingAndFetchStableIdentifierWithCompletion:", v43, 0xCu);
    sub_10000BC74(v44);
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v36;
  aBlock[4] = sub_1000854EC;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080928;
  aBlock[3] = &unk_1000C2810;
  v46 = _Block_copy(aBlock);
  v47 = v36;

  [v39 verifyPairingAndFetchStableIdentifierWithCompletion:v46];
  _Block_release(v46);
  swift_unknownObjectRelease();
}

void sub_100082BEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10008CB0C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice);
  if (v11)
  {
    v50 = a1;
    v51 = v8;
    v12 = qword_1000C8CF8;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_10008CCDC();
    sub_100009F94(v14, qword_1000D6D38);
    v15 = v13;
    v16 = sub_10008CCBC();
    v17 = sub_10008DE1C();

    v18 = os_log_type_enabled(v16, v17);
    v52 = v15;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v49 = a2;
      v20 = v19;
      v53 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_10000A2D8(0xD000000000000013, 0x8000000100098300, &v53);
      *(v20 + 12) = 2082;
      v21 = [v15 identifier];
      sub_10008CAEC();

      sub_10008514C();
      v22 = sub_10008E15C();
      v24 = v23;
      (*(v51 + 8))(v10, v6);
      v25 = sub_10000A2D8(v22, v24, &v53);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      a2 = v49;
    }

    v26 = *(v3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal);
    if (!v26)
    {
      v34 = v52;
      v35 = sub_10008CCBC();
      v36 = sub_10008DE2C();

      if (!os_log_type_enabled(v35, v36))
      {

        return;
      }

      v37 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_10000A2D8(0xD000000000000013, 0x8000000100098300, &v53);
      *(v37 + 12) = 2082;
      v38 = [v34 identifier];
      sub_10008CAEC();

      sub_10008514C();
      v39 = sub_10008E15C();
      v41 = v40;
      (*(v51 + 8))(v10, v6);
      v42 = sub_10000A2D8(v39, v41, &v53);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s The pairing terminal for %{public}s is nil", v37, 0x16u);
      swift_arrayDestroy();

      goto LABEL_24;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_unknownObjectRetain();
    sub_10008CDAC();

    if (v53)
    {

      v27 = sub_10008CCBC();
      v28 = sub_10008DE1C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v29 = 136315395;
        *(v29 + 4) = sub_10000A2D8(0xD000000000000013, 0x8000000100098300, &v53);
        *(v29 + 12) = 2081;
        *(v29 + 14) = sub_10000A2D8(v50, a2, &v53);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s Trying scanned pin: %{private}s", v29, 0x16u);
        swift_arrayDestroy();
      }

      v34 = sub_10008DBCC();
      [v26 tryPIN:v34];

      swift_unknownObjectRelease();
LABEL_24:

      return;
    }

    v43 = sub_10008CCBC();
    v44 = sub_10008DE4C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10000A2D8(0xD000000000000013, 0x8000000100098300, &v53);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s Not ready to accept PIN yet", v45, 0xCu);
      sub_10000BC74(v46);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v30 = sub_10008CCDC();
    sub_100009F94(v30, qword_1000D6D38);
    v52 = sub_10008CCBC();
    v31 = sub_10008DE2C();
    if (os_log_type_enabled(v52, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_10000A2D8(0xD000000000000013, 0x8000000100098300, &v53);
      _os_log_impl(&_mh_execute_header, v52, v31, "%s Not currently pairing with a device", v32, 0xCu);
      sub_10000BC74(v33);
    }

    else
    {
      v47 = v52;
    }
  }
}

void sub_1000833E4()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice);
  if (v7)
  {
    v36 = v4;
    v8 = qword_1000C8CF8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_10008CCDC();
    sub_100009F94(v10, qword_1000D6D38);
    v11 = v9;
    v12 = sub_10008CCBC();
    v13 = sub_10008DE1C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v14 = 136315394;
      *(v14 + 4) = sub_10000A2D8(0x61506C65636E6163, 0xEF2928676E697269, &v37);
      *(v14 + 12) = 2082;
      v15 = [v11 identifier];
      sub_10008CAEC();

      sub_10008514C();
      v16 = sub_10008E15C();
      v18 = v17;
      (v36[1].isa)(v6, v2);
      v19 = sub_10000A2D8(v16, v18, &v37);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s %{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000812F4(0);
    v20 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal);
    if (v20)
    {
      [v20 invalidate];
    }

    else
    {
      v25 = v11;
      v11 = sub_10008CCBC();
      v26 = sub_10008DE2C();

      if (os_log_type_enabled(v11, v26))
      {
        v27 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v27 = 136315394;
        *(v27 + 4) = sub_10000A2D8(0x61506C65636E6163, 0xEF2928676E697269, &v37);
        *(v27 + 12) = 2082;
        v28 = [v25 identifier];
        sub_10008CAEC();

        sub_10008514C();
        v29 = sub_10008E15C();
        v31 = v30;
        (v36[1].isa)(v6, v2);
        v32 = sub_10000A2D8(v29, v31, &v37);

        *(v27 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v11, v26, "%s The pairing terminal for %{public}s is nil", v27, 0x16u);
        swift_arrayDestroy();

        return;
      }
    }
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v21 = sub_10008CCDC();
    sub_100009F94(v21, qword_1000D6D38);
    v36 = sub_10008CCBC();
    v22 = sub_10008DE2C();
    if (os_log_type_enabled(v36, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10000A2D8(0x61506C65636E6163, 0xEF2928676E697269, &v37);
      _os_log_impl(&_mh_execute_header, v36, v22, "%s Not currently pairing with a device", v23, 0xCu);
      sub_10000BC74(v24);
    }

    else
    {
      v33 = v36;
    }
  }
}

uint64_t sub_1000839C8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(v6 + *a3);
  sub_100009C08(a4, a5);
  sub_1000851AC(a6, a4, a5);
  return sub_10008CDDC();
}

uint64_t sub_100083A9C()
{
  v0 = type metadata accessor for DMTBackedSharingDiscoveryPrimitivesProvider();
  v10[3] = v0;
  v10[4] = &off_1000C06A0;
  v10[0] = swift_allocObject();
  v1 = objc_allocWithZone(type metadata accessor for TerminalBackedDevicesDiscoveryProvider());
  v2 = sub_10000BCC0(v10, v0);
  v3 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = sub_100083F64(*v5, v1);
  result = sub_10000BC74(v10);
  qword_1000D6DE0 = v7;
  *algn_1000D6DE8 = &off_1000C25C0;
  return result;
}

uint64_t sub_100083BC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100083C40(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_10008CDBC();
}

uint64_t sub_100083CB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083D10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100083D48(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100083D74(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100083E6C;

  return v7(a1);
}

uint64_t sub_100083E6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_100083F64(uint64_t a1, char *a2)
{
  v4 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v30[3] = type metadata accessor for DMTBackedSharingDiscoveryPrimitivesProvider();
  v30[4] = &off_1000C06A0;
  v30[0] = a1;
  *&a2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_operationStatus] = 0;
  *&a2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider____lazy_storage___delegationQueue] = 0;
  *&a2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_nearbyDeviceDiscoveryObservation] = 0;
  v9 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_nearbyDevicesSubject;
  v10 = sub_100009C08(&qword_1000CEDA0, &unk_100096ED8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&a2[v9] = sub_10008CD4C();
  v13 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_pairedDeviceConnectionSubject;
  v14 = sub_100009C08(&qword_1000CED90, &qword_100096ED0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&a2[v13] = sub_10008CD4C();
  v17 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_failedDeviceConnectionSubject;
  v18 = sub_100009C08(&qword_1000CED80, &qword_100096EC8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&a2[v17] = sub_10008CD4C();
  v21 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_alreadyPairedDeviceConnectionSubject;
  v22 = *(v18 + 48);
  v23 = *(v18 + 52);
  swift_allocObject();
  *&a2[v21] = sub_10008CD4C();
  v24 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider__readyToAcceptPIN;
  v29 = 0;
  sub_10008CD7C();
  (*(v5 + 32))(&a2[v24], v8, v4);
  *&a2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider__catSharingDeviceDiscovery] = 0;
  *&a2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice] = 0;
  *&a2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_devicePairingTerminal] = 0;
  sub_10000BE8C(v30, &a2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_discoveryPrimitivesProvider]);
  v25 = type metadata accessor for TerminalBackedDevicesDiscoveryProvider();
  v28.receiver = a2;
  v28.super_class = v25;
  v26 = objc_msgSendSuper2(&v28, "init");
  sub_10000BC74(v30);
  return v26;
}

void sub_1000841C8()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&v0->isa + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_currentPairingDevice);
  if (v7)
  {
    v8 = qword_1000C8CF8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_10008CCDC();
    sub_100009F94(v10, qword_1000D6D38);
    v11 = v9;
    v12 = sub_10008CCBC();
    v13 = sub_10008DE1C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27 = v1;
      v15 = v14;
      v28 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_10000A2D8(0xD000000000000033, 0x800000010009D320, &v28);
      *(v15 + 12) = 2082;
      v16 = [v11 identifier];
      sub_10008CAEC();

      sub_10008514C();
      v17 = sub_10008E15C();
      v19 = v18;
      (*(v3 + 8))(v6, v2);
      v20 = sub_10000A2D8(v17, v19, &v28);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s Ready to accept PIN %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      v1 = v27;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v28) = 1;
    v21 = v1;
    sub_10008CDBC();
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v22 = sub_10008CCDC();
    sub_100009F94(v22, qword_1000D6D38);
    v27 = sub_10008CCBC();
    v23 = sub_10008DE4C();
    if (os_log_type_enabled(v27, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000A2D8(0xD000000000000033, 0x800000010009D320, &v28);
      _os_log_impl(&_mh_execute_header, v27, v23, "%s called unexpectedly when we don't have a current device in pairing mode", v24, 0xCu);
      sub_10000BC74(v25);
    }

    else
    {
      v26 = v27;
    }
  }
}

uint64_t sub_1000845E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v21 - v7;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v9 = sub_10008CCDC();
    sub_100009F94(v9, qword_1000D6D38);
    swift_errorRetain();
    v10 = sub_10008CCBC();
    v11 = sub_10008DE2C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = a1;
      v22 = v13;
      *v12 = 136446210;
      swift_errorRetain();
      sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
      v14 = sub_10008DC4C();
      v16 = sub_10000A2D8(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "CATSharingDeviceDiscovery activation failed with error: %{public}s", v12, 0xCu);
      sub_10000BC74(v13);
    }

    v17 = *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_operationStatus);
    if (v17)
    {
      v18 = *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_operationStatus);

      sub_10008DDCC();
      v19 = sub_10008DDEC();
      (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v17;
      v20[5] = a1;
      swift_errorRetain();

      sub_10007FA54(0, 0, v8, &unk_100096F30, v20);

      return sub_10000DFE0(v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000848AC(void *a1)
{
  v2 = v1;
  v4 = sub_10008CB0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v9 = sub_10008CCDC();
  sub_100009F94(v9, qword_1000D6D38);
  v10 = a1;
  v11 = sub_10008CCBC();
  v12 = sub_10008DE0C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446210;
    v16 = [v10 identifier];
    sub_10008CAEC();

    sub_10008514C();
    v17 = sub_10008E15C();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_10000A2D8(v17, v19, &v24);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "CATSharingDeviceDiscovery has lost device: %{public}s", v14, 0xCu);
    sub_10000BC74(v15);

    v2 = v23;
  }

  v21 = *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_failedDeviceConnectionSubject);
  v24 = v10;
  return sub_10008CD3C();
}

void sub_100084B04(uint64_t a1, uint64_t (*a2)(void), const char *a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  v11 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28 - v13;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v15 = sub_10008CCDC();
  sub_100009F94(v15, qword_1000D6D38);
  swift_errorRetain();
  v16 = sub_10008CCBC();
  v17 = a2();

  v18 = os_log_type_enabled(v16, v17);
  v29 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = a1;
    v31 = v28;
    *v19 = 136446210;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v20 = sub_10008DC4C();
    v22 = a5;
    v23 = sub_10000A2D8(v20, v21, &v31);

    *(v19 + 4) = v23;
    a5 = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, a3, v19, 0xCu);
    sub_10000BC74(v28);
  }

  v24 = *(v9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_operationStatus);
  if (v24)
  {
    v25 = *(v9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_operationStatus);

    sub_10008DDCC();
    v26 = sub_10008DDEC();
    (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v24;
    v27[5] = v29;
    swift_errorRetain();

    sub_10007FA54(0, 0, v14, a5, v27);

    sub_10000DFE0(v14);
  }
}

void sub_100084DD4()
{
  v1 = v0;
  sub_100009C08(&qword_1000CED60, &qword_100096E70);
  sub_10008C8FC();
  v2 = v21;
  sub_10008C90C();
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v3 = sub_10008CCDC();
  sub_100009F94(v3, qword_1000D6D38);

  v4 = sub_10008CCBC();
  v5 = sub_10008DE1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v6 = 136446466;
    sub_100009C08(&unk_1000CED70, &qword_100096E78);
    v7 = sub_10008DC4C();
    v9 = sub_10000A2D8(v7, v8, &v21);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;

    v10 = sub_10008DC4C();
    v12 = sub_10000A2D8(v10, v11, &v21);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "nearbyDevices changed from: %{public}s, to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();

    if (!v2)
    {
      return;
    }
  }

  else
  {

    if (!v21)
    {
      return;
    }
  }

  v13 = sub_10008CCBC();
  v14 = sub_10008DE1C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446210;
    sub_100085100();
    v17 = sub_10008DD4C();
    v19 = sub_10000A2D8(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Publishing nearbyDevices to: %{public}s)", v15, 0xCu);
    sub_10000BC74(v16);
  }

  v20 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_nearbyDevicesSubject);
  v21 = v2;
  sub_10008CD3C();
}

unint64_t sub_100085100()
{
  result = qword_1000CED68;
  if (!qword_1000CED68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CED68);
  }

  return result;
}

unint64_t sub_10008514C()
{
  result = qword_1000CCC30;
  if (!qword_1000CCC30)
  {
    sub_10008CB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCC30);
  }

  return result;
}

uint64_t sub_1000851AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100085204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E290;

  return sub_100081C90(a1, v4, v5, v7, v6);
}

uint64_t sub_1000852C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000092CC;

  return sub_100081E14(a1, v4, v5, v7, v6);
}

uint64_t sub_100085384()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000853CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E290;

  return sub_100081C90(a1, v4, v5, v7, v6);
}

uint64_t sub_1000854B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100085564()
{
  v0 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_10008C9BC();
  sub_10001F360(v4, qword_1000D6DF0);
  v5 = sub_100009F94(v4, qword_1000D6DF0);
  sub_10008C9AC();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

void sub_100085694()
{
  v0 = sub_10008DBCC();
  v1 = MGGetBoolAnswer();

  byte_1000D6E08 = v1;
}

uint64_t sub_1000856D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10008573C()
{
  v0 = type metadata accessor for AddDevicesToADEExtensionConfiguration();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = type metadata accessor for ConcreteHostAppCommunicationProvider();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  sub_100009C08(&unk_1000C9AE8, qword_10008FBE0);
  sub_10008CD7C();

  sub_100009C08(&qword_1000CEF18, &unk_100097000);
  sub_100085A18();
  sub_10008CBEC();
  *(v3 + 16) = v7;
  sub_100085B1C(&qword_1000C9538, 255, type metadata accessor for AddDevicesToADEExtensionConfiguration);
  sub_10008CC6C();
}

uint64_t sub_100085898@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentExtension();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentExtension();
  sub_100085B1C(&qword_1000CEE70, v3, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentExtension);
  sub_100085B1C(&qword_1000C9550, 255, type metadata accessor for AddDevicesToADEExtensionConfiguration);
  sub_10008CC4C();
  return 0;
}

unint64_t sub_100085A18()
{
  result = qword_1000CEF20;
  if (!qword_1000CEF20)
  {
    sub_100007108(&qword_1000CEF18, &unk_100097000);
    sub_100085B1C(&qword_1000CEF28, 255, &type metadata accessor for _AnyViewConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CEF20);
  }

  return result;
}

uint64_t sub_100085B1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PrerequisiteStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrerequisiteStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100085CB8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100085CCC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_100085D00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10008CABC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_100085DCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10008CABC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DeviceStatusCompleteSectionView()
{
  result = qword_1000CEF90;
  if (!qword_1000CEF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100085EBC()
{
  sub_100017600();
  if (v0 <= 0x3F)
  {
    sub_10008CABC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100085F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = type metadata accessor for DeviceStatusCompleteSectionView();
  v4 = v3 - 8;
  v57 = *(v3 - 8);
  v56 = *(v57 + 64);
  __chkstk_darwin(v3);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008CB2C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10008DBBC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009C08(&qword_1000CAB50, &qword_100091FE8);
  v13 = *(v12 - 8);
  v54 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v53 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v49 - v17;
  v19 = sub_10008CA5C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10008CA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v4 + 28);
  sub_10008CA6C();
  sub_10008CA3C();
  v30 = sub_10008CA9C();
  v32 = v31;
  (*(v20 + 8))(v23, v19);
  (*(v25 + 8))(v28, v24);
  v58 = v30;
  v59 = v32;
  sub_100019E50();
  v33 = sub_10008D68C();
  v35 = v34;
  LOBYTE(v32) = v36;
  v38 = v37;
  sub_10008DB5C();
  sub_10008CB1C();
  v58 = sub_10008DC3C();
  v59 = v39;
  v40 = v55;
  sub_100086504(v50, v55);
  v41 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v42 = swift_allocObject();
  sub_100086650(v40, v42 + v41);
  sub_10008D92C();
  v43 = sub_10008D83C();
  KeyPath = swift_getKeyPath();
  v45 = v53;
  v46 = &v18[*(v54 + 44)];
  *v46 = KeyPath;
  v46[1] = v43;
  sub_10002F5C4(v18, v45);
  *a2 = v33;
  *(a2 + 8) = v35;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v47 = sub_100009C08(&qword_1000CAB58, &qword_100092020);
  sub_10002F5C4(v45, a2 + *(v47 + 64));
  sub_10001CC9C(v33, v35, v32 & 1);

  sub_10002F634(v18);
  sub_10002F634(v45);
  sub_10001CD48(v33, v35, v32 & 1);
}

uint64_t sub_100086424(void *a1)
{
  if (*a1)
  {
    v2 = *(type metadata accessor for DeviceStatusCompleteSectionView() + 20);

    sub_100015464(a1 + v2);
  }

  else
  {
    v4 = a1[1];
    type metadata accessor for DeviceStatusViewModel();
    sub_10002F69C();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000864B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10008D2BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100009C08(&qword_1000CAB48, &qword_100091FE0);
  return sub_100085F5C(v1, a1 + *(v3 + 44));
}

uint64_t sub_100086504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceStatusCompleteSectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100086568()
{
  v1 = (type metadata accessor for DeviceStatusCompleteSectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_10008CABC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100086650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceStatusCompleteSectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000866B4()
{
  v1 = *(type metadata accessor for DeviceStatusCompleteSectionView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_100086424(v2);
}

uint64_t sub_100086730(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v19 = sub_100086CD0;
  v20 = v7;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100086A7C;
  v18 = &unk_1000C2998;
  v8 = _Block_copy(v17);

  v9 = a2;

  [v9 setScannedCodeHandler:v8];
  _Block_release(v8);
  [v9 setFillLayerBoundsWithVideo:1];
  [v9 start];
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v10 = sub_10008CCDC();
  sub_100009F94(v10, qword_1000D6D38);
  v11 = v9;

  v12 = sub_10008CCBC();
  v13 = sub_10008DE1C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    [v11 viewFinderDiameter];
    *(v14 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v12, v13, "VisualPinScannerView view finder diameter: %f", v14, 0xCu);
  }

  if (a3)
  {

    [v11 viewFinderDiameter];
    sub_10000BE8C(a3 + 56, v17);
    sub_10000BB24(v17, v18);
    type metadata accessor for ConcreteVPScannerViewFinderMetricsProvider();
    sub_10003F7C0();

    sub_10000BC74(v17);
    return v11;
  }

  else
  {
    type metadata accessor for VisualPinScannerViewModel();
    sub_10005A240();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000869F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_10003896C(a1, a2, 1);
  }

  else
  {
    type metadata accessor for VisualPinScannerViewModel();
    sub_10005A240();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100086A7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_10008DBDC();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_100086B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100086CF4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100086BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100086CF4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100086C10()
{
  sub_100086CF4();
  sub_10008D3AC();
  __break(1u);
}

unint64_t sub_100086C3C()
{
  result = qword_1000CEFC8;
  if (!qword_1000CEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CEFC8);
  }

  return result;
}

uint64_t sub_100086C90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100086CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100086CF4()
{
  result = qword_1000CEFD0;
  if (!qword_1000CEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CEFD0);
  }

  return result;
}

uint64_t sub_100086D74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = sub_10008D47C();
  v31 = *(v36 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v36);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100009C08(&qword_1000CB738, &unk_100092E80);
  v30 = *(v33 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v33);
  v8 = &v30 - v7;
  v35 = sub_100009C08(&qword_1000CB740, &qword_100094110);
  v32 = *(v35 - 8);
  v9 = *(v32 + 64);
  __chkstk_darwin(v35);
  v11 = &v30 - v10;
  v12 = sub_100009C08(&qword_1000CEFD8, &qword_1000972D8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v34 = sub_100009C08(&qword_1000CEFE0, &qword_1000972E0);
  v16 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v18 = (&v30 - v17);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v38 == 1)
  {
    sub_10005DC44(v18);
    type metadata accessor for AddDevicesExtensionContainerViewModel();
    sub_1000873F4(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
    v19 = sub_10008CD0C();
    v20 = (v18 + *(v34 + 36));
    *v20 = v19;
    v20[1] = a1;
    sub_10008743C(v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_10008730C();
    v21 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
    v22 = sub_1000873F4(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle);

    v38 = v33;
    v39 = v36;
    v40 = v21;
    v41 = v22;
    swift_getOpaqueTypeConformance2();
    sub_10008D3DC();
    return sub_1000874AC(v18);
  }

  else
  {
    sub_10008CF8C();
    sub_10008D46C();
    v24 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
    v25 = sub_1000873F4(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle);
    v26 = v33;
    v27 = v36;
    sub_10008D6BC();
    (*(v31 + 8))(v5, v27);
    (*(v30 + 8))(v8, v26);
    v28 = v32;
    v29 = v35;
    (*(v32 + 16))(v15, v11, v35);
    swift_storeEnumTagMultiPayload();
    sub_10008730C();
    v38 = v26;
    v39 = v27;
    v40 = v24;
    v41 = v25;
    swift_getOpaqueTypeConformance2();
    sub_10008D3DC();
    return (*(v28 + 8))(v11, v29);
  }
}

unint64_t sub_10008730C()
{
  result = qword_1000CEFE8;
  if (!qword_1000CEFE8)
  {
    sub_100007108(&qword_1000CEFE0, &qword_1000972E0);
    sub_1000873F4(&qword_1000CEFF0, type metadata accessor for AddDevicesToADEExtensionView);
    sub_10001121C(&qword_1000CDB18, &qword_1000CDB20, &unk_1000955E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CEFE8);
  }

  return result;
}

uint64_t sub_1000873F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008743C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CEFE0, &qword_1000972E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000874AC(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CEFE0, &qword_1000972E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100087518()
{
  result = qword_1000CEFF8;
  if (!qword_1000CEFF8)
  {
    sub_100007108(&qword_1000CF000, &qword_100097338);
    sub_10008730C();
    sub_100007108(&qword_1000CB738, &unk_100092E80);
    sub_10008D47C();
    sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
    sub_1000873F4(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CEFF8);
  }

  return result;
}

__n128 sub_100087664(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100087688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1000876D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008775C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = (&v37 - v5);
  v6 = sub_100009C08(&qword_1000CF008, &qword_100097428);
  v37 = v6;
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v37 - v8);
  v46 = sub_100009C08(&qword_1000CF010, &qword_100097430);
  v45 = *(v46 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v46);
  v12 = &v37 - v11;
  *v9 = sub_10008D9DC();
  v9[1] = v13;
  v14 = sub_100009C08(&qword_1000CF018, &qword_100097438);
  sub_100087DC0(v2, v9 + *(v14 + 44));
  v15 = swift_allocObject();
  v16 = *(v2 + 80);
  *(v15 + 5) = *(v2 + 64);
  *(v15 + 6) = v16;
  v17 = *(v2 + 112);
  *(v15 + 7) = *(v2 + 96);
  *(v15 + 8) = v17;
  v18 = *(v2 + 16);
  *(v15 + 1) = *v2;
  *(v15 + 2) = v18;
  v19 = *(v2 + 48);
  *(v15 + 3) = *(v2 + 32);
  *(v15 + 4) = v19;
  v20 = (v9 + *(v6 + 36));
  *v20 = sub_10008B4C0;
  v20[1] = v15;
  v20[2] = 0;
  v20[3] = 0;
  v21 = *v2;
  v22 = *(v2 + 8);
  sub_10008B4E4(v2, v50);
  v23 = type metadata accessor for CameraViewModel();
  sub_10008BBF0(&unk_1000CDC40, type metadata accessor for CameraViewModel);
  v42 = v21;
  v41 = v23;
  sub_10008D06C();
  swift_getKeyPath();
  sub_10008D07C();

  v24 = type metadata accessor for ManualPinEntryView();
  v25 = sub_10008B524();
  v38 = sub_10008BBF0(&qword_1000CF038, type metadata accessor for ManualPinEntryView);
  v39 = v25;
  v40 = v24;
  v44 = v12;
  v26 = v37;
  v27 = v43;
  sub_10008D77C();

  sub_10000C3F8(v9, &qword_1000CF008, &qword_100097428);
  v28 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_enrollmentErrorInfo;
  swift_beginAccess();
  sub_10000C314(v22 + v28, v27, &unk_1000CBAE8, &qword_100093260);
  v29 = type metadata accessor for ErrorInfo();
  if ((*(*(v29 - 8) + 48))(v27, 1, v29))
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v32 = (v27 + *(v29 + 20));
    v30 = *v32;
    v31 = v32[1];
  }

  sub_10000C3F8(v27, &unk_1000CBAE8, &qword_100093260);
  v48 = v30;
  v49 = v31;
  sub_10008D06C();
  swift_getKeyPath();
  sub_10008D07C();

  v43 = &v37;
  __chkstk_darwin(v33);
  sub_100009C08(&qword_1000CD590, &qword_100095140);
  v50[0] = v26;
  v50[1] = v40;
  v50[2] = v39;
  v50[3] = v38;
  swift_getOpaqueTypeConformance2();
  sub_100019E50();
  sub_10001121C(&qword_1000CF040, &qword_1000CD590, &qword_100095140);
  v34 = v46;
  v35 = v44;
  sub_10008D76C();

  return (*(v45 + 8))(v35, v34);
}

void sub_100087DC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009C08(&qword_1000CF048, &qword_1000974D8);
  v100 = *(v4 - 1);
  v101 = v4;
  v5 = *(v100 + 64);
  __chkstk_darwin(v4);
  v90 = (&v89 - v6);
  v7 = sub_100009C08(&qword_1000CF050, &qword_1000974E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v106 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v89 - v11;
  v12 = sub_100009C08(&qword_1000CF058, &qword_1000974E8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v89 - v14;
  v93 = sub_100009C08(&qword_1000CF060, &qword_1000974F0);
  v16 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v95 = &v89 - v17;
  v94 = sub_100009C08(&qword_1000CF068, &qword_1000974F8);
  v18 = *(*(v94 - 8) + 64);
  v19 = __chkstk_darwin(v94);
  v105 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v112 = &v89 - v21;
  v22 = sub_10008CB2C();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_10008DBBC();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v99 = [objc_allocWithZone(VPScannerView) init];
  type metadata accessor for VisualPinScannerViewModel();
  sub_10008BBF0(&qword_1000CD508, type metadata accessor for VisualPinScannerViewModel);
  v104 = sub_10008D15C();
  v98 = v26;
  v97 = sub_10008D0BC();
  v96 = sub_10008D53C();
  v124 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10008CDAC();

  if (LOBYTE(v119[0]) == 5 || LOBYTE(v119[0]) == 6)
  {
    sub_10000C3F8(&v124, &qword_1000CF070, &qword_100097548);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v103 = 0;
    v108 = 0;
    v102 = 0;
  }

  else
  {
    v27 = *(a1 + 88);
    v111 = *(a1 + 80);
    type metadata accessor for CameraViewModel();
    sub_10008BBF0(&unk_1000CDC40, type metadata accessor for CameraViewModel);

    v110 = sub_10008D05C();
    v29 = v28;
    v108 = sub_10008D0BC();
    v102 = sub_10008D53C();
    v103 = v27;

    v109 = v29;
  }

  sub_10008DB5C();
  sub_10008CB1C();
  v30 = sub_10008DC3C();
  v32 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v33 = 20.0;
  if ((v119[0] & 1) == 0)
  {
    v119[0] = *(a1 + 96);
    sub_100009C08(&qword_1000CF078, &qword_100097598);
    sub_10008D8CC();
    v33 = *&v120;
  }

  v34 = swift_allocObject();
  v35 = *(a1 + 80);
  v34[5] = *(a1 + 64);
  v34[6] = v35;
  v36 = *(a1 + 112);
  v34[7] = *(a1 + 96);
  v34[8] = v36;
  v37 = *(a1 + 16);
  v34[1] = *a1;
  v34[2] = v37;
  v38 = *(a1 + 48);
  v34[3] = *(a1 + 32);
  v34[4] = v38;
  sub_10008B4E4(a1, v119);
  v39 = sub_10008D9FC();
  *&v120 = v30;
  *(&v120 + 1) = v32;
  *&v121 = 0;
  *(&v121 + 1) = v33;
  *&v122 = sub_10008B950;
  *(&v122 + 1) = v34;
  *&v123 = v39;
  *(&v123 + 1) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v41 = 0;
  v42 = 0;
  if ((v119[0] & 1) == 0)
  {
    v42 = swift_allocObject();
    v43 = *(a1 + 80);
    v42[5] = *(a1 + 64);
    v42[6] = v43;
    v44 = *(a1 + 112);
    v42[7] = *(a1 + 96);
    v42[8] = v44;
    v45 = *(a1 + 16);
    v42[1] = *a1;
    v42[2] = v45;
    v46 = *(a1 + 48);
    v42[3] = *(a1 + 32);
    v42[4] = v46;
    sub_10008B4E4(a1, v119);

    v41 = sub_10008B958;
  }

  v91 = v41;
  v92 = v42;
  *v15 = sub_10008D2EC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v47 = &v15[*(sub_100009C08(&qword_1000CF080, &qword_1000975A0) + 44)];
  *v47 = sub_10008D2BC();
  *(v47 + 1) = 0;
  v47[16] = 1;
  v48 = sub_100009C08(&qword_1000CF088, &unk_1000975A8);
  sub_10008B698(a1, &v47[*(v48 + 44)]);
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  v50 = sub_10008D56C();
  *(inited + 32) = v50;
  v51 = sub_10008D58C();
  *(inited + 33) = v51;
  v52 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v50)
  {
    v52 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v51)
  {
    v52 = sub_10008D57C();
  }

  v53 = v95;
  sub_100037C28(v15, v95, &qword_1000CF058, &qword_1000974E8);
  v54 = v53 + *(v93 + 36);
  *v54 = v52;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  v55 = 1;
  *(v54 + 40) = 1;
  sub_10008D9EC();
  sub_10008D11C();
  v56 = v53;
  v57 = v112;
  sub_100037C28(v56, v112, &qword_1000CF060, &qword_1000974F0);
  v58 = (v57 + *(v94 + 36));
  v59 = v119[5];
  v58[4] = v119[4];
  v58[5] = v59;
  v58[6] = v119[6];
  v60 = v119[1];
  *v58 = v119[0];
  v58[1] = v60;
  v61 = v119[3];
  v58[2] = v119[2];
  v58[3] = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v62 = v101;
  if (LOBYTE(v118[0]) == 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10008CDAC();

    v55 = 1;
    if ((BYTE8(v118[0]) & 1) == 0)
    {
      v63 = *v118;
      v64 = sub_10008D2EC();
      v65 = v90;
      *v90 = v64;
      *(v65 + 8) = 0;
      *(v65 + 16) = 1;
      v66 = sub_100009C08(&qword_1000CF0A0, &qword_100097610);
      sub_1000897F0(a1, v65 + *(v66 + 44));
      v118[0] = *(a1 + 112);
      sub_100009C08(&qword_1000CF078, &qword_100097598);
      sub_10008D8CC();
      v67 = v63 + *v117 * 0.5;
      v68 = v65 + v62[9];
      *v68 = 0;
      *(v68 + 8) = v67;
      sub_100037C28(v65, v107, &qword_1000CF048, &qword_1000974D8);
      v55 = 0;
    }
  }

  v69 = v107;
  (*(v100 + 56))(v107, v55, 1, v62);
  v113 = v120;
  v114 = v121;
  v115 = v122;
  v116 = v123;
  v70 = v105;
  sub_10000C314(v112, v105, &qword_1000CF068, &qword_1000974F8);
  v71 = v106;
  sub_10000C314(v69, v106, &qword_1000CF050, &qword_1000974E0);
  v73 = v113;
  v72 = v114;
  v117[0] = v113;
  v117[1] = v114;
  v74 = v115;
  v117[2] = v115;
  v117[3] = v116;
  *(a2 + 136) = v116;
  *(a2 + 120) = v74;
  *(a2 + 104) = v72;
  v75 = v99;
  v76 = v104;
  *a2 = v99;
  *(a2 + 8) = v76;
  v77 = v97;
  *(a2 + 16) = v98;
  *(a2 + 24) = v77;
  *(a2 + 32) = v96;
  v78 = v109;
  *(a2 + 40) = v110;
  *(a2 + 48) = v78;
  v79 = v111;
  *(a2 + 56) = v111;
  v80 = v79;
  v81 = v108;
  *(a2 + 64) = v103;
  *(a2 + 72) = v81;
  *(a2 + 80) = v102;
  *(a2 + 88) = v73;
  v83 = v91;
  v82 = v92;
  *(a2 + 152) = v91;
  *(a2 + 160) = v82;
  v84 = sub_100009C08(&qword_1000CF090, &qword_1000975B8);
  sub_10000C314(v70, a2 + *(v84 + 96), &qword_1000CF068, &qword_1000974F8);
  sub_10000C314(v71, a2 + *(v84 + 112), &qword_1000CF050, &qword_1000974E0);

  v85 = v75;
  sub_10000C314(&v120, v118, &qword_1000CF098, &qword_1000975C0);
  v86 = v85;
  v101 = v86;

  v88 = v109;
  v87 = v110;
  v111 = v80;
  sub_10008B960(v110, v109);
  sub_10000C314(v117, v118, &qword_1000CF098, &qword_1000975C0);
  sub_10003D2B8(v83);
  sub_100039828(v83);
  sub_10008B9A4(v87, v88);
  sub_10000C3F8(&v120, &qword_1000CF098, &qword_1000975C0);

  sub_10000C3F8(v107, &qword_1000CF050, &qword_1000974E0);
  sub_10000C3F8(v112, &qword_1000CF068, &qword_1000974F8);
  sub_10000C3F8(v106, &qword_1000CF050, &qword_1000974E0);
  sub_10000C3F8(v105, &qword_1000CF068, &qword_1000974F8);
  sub_100039828(v83);
  v118[0] = v113;
  v118[1] = v114;
  v118[2] = v115;
  v118[3] = v116;
  sub_10000C3F8(v118, &qword_1000CF098, &qword_1000975C0);
  sub_10008B9A4(v110, v109);
}

uint64_t sub_100088A74@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v5 = sub_10008DA5C();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10008DA8C();
  v26 = *(v27 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10008CFFC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000167AC();
  v25 = sub_10008DE7C();
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 144) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = a2[5];
  *(v17 + 5) = a2[4];
  *(v17 + 6) = v18;
  v19 = a2[7];
  *(v17 + 7) = a2[6];
  *(v17 + 8) = v19;
  v20 = a2[1];
  *(v17 + 1) = *a2;
  *(v17 + 2) = v20;
  v21 = a2[3];
  *(v17 + 3) = a2[2];
  *(v17 + 4) = v21;
  (*(v13 + 32))(&v17[v16], v15, v12);
  aBlock[4] = sub_10008BFA8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077134;
  aBlock[3] = &unk_1000C2C40;
  v22 = _Block_copy(aBlock);
  sub_10008B4E4(a2, &v30);

  sub_10008DA7C();
  v30 = &_swiftEmptyArrayStorage;
  sub_10008BBF0(&qword_1000CD7D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009C08(&qword_1000CA450, &qword_100097630);
  sub_10001121C(&qword_1000CD7E0, &qword_1000CA450, &qword_100097630);
  sub_10008DF5C();
  v23 = v25;
  sub_10008DE8C();
  _Block_release(v22);

  (*(v28 + 8))(v8, v5);
  (*(v26 + 8))(v11, v27);
  result = sub_10008D84C();
  *v29 = result;
  return result;
}

uint64_t sub_100088E84(uint64_t a1)
{
  sub_10008CFEC();
  v3 = *(a1 + 96);
  sub_100009C08(&qword_1000CF078, &qword_100097598);
  return sub_10008D8DC();
}

double sub_100088EF4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_10008D2BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100009C08(&qword_1000CF108, &qword_1000977B8);
  sub_100088F94(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_10008D53C();
  v5 = a2 + *(sub_100009C08(&qword_1000CF110, &qword_1000977C0) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_100088F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = sub_100009C08(&qword_1000CF118, &qword_1000977C8);
  v4 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v6 = &v62 - v5;
  v7 = sub_10008CB2C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10008DBBC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100009C08(&qword_1000CF120, &qword_1000977D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v62 - v13;
  v15 = sub_100009C08(&qword_1000CF128, &qword_1000977D8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v17);
  v20 = *(a1 + 32);
  if (v20)
  {
    v73 = &v62 - v18;
    v74 = v19;
    v75 = a2;
    if (*(v20 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel_hostAppInfo))
    {
      sub_10008CFEC();
      sub_10008D9FC();
      sub_10008CF9C();
      v21 = v92;
      v22 = BYTE8(v92);
      v23 = v93;
      v24 = BYTE8(v93);
      LOBYTE(v84[0]) = 1;
      LOBYTE(v79) = BYTE8(v92);
      LOBYTE(v95) = BYTE8(v93);
      *v6 = 0;
      v6[8] = 1;
      *(v6 + 2) = v21;
      v6[24] = v22;
      *(v6 + 4) = v23;
      v6[40] = v24;
      *(v6 + 3) = v94;
      swift_storeEnumTagMultiPayload();
      sub_100009C08(&qword_1000CF138, &qword_1000977E8);
      sub_10008BCB0();
      sub_10008BE20();
      v25 = v73;
      sub_10008D3DC();
    }

    else
    {
      sub_10008DB5C();
      sub_10008CB1C();
      *&v79 = sub_10008DC3C();
      *(&v79 + 1) = v26;
      v27 = swift_allocObject();
      v28 = *(a1 + 80);
      v27[5] = *(a1 + 64);
      v27[6] = v28;
      v29 = *(a1 + 112);
      v27[7] = *(a1 + 96);
      v27[8] = v29;
      v30 = *(a1 + 16);
      v27[1] = *a1;
      v27[2] = v30;
      v31 = *(a1 + 48);
      v27[3] = *(a1 + 32);
      v27[4] = v31;
      sub_10008B4E4(a1, v84);
      sub_100019E50();
      sub_10008D92C();
      sub_10008CFEC();
      sub_10008DA0C();
      sub_10008CF9C();
      v32 = &v14[*(sub_100009C08(&qword_1000CF130, &qword_1000977E0) + 36)];
      v33 = v93;
      *v32 = v92;
      *(v32 + 1) = v33;
      *(v32 + 2) = v94;
      KeyPath = swift_getKeyPath();
      v35 = &v14[*(v11 + 36)];
      *v35 = KeyPath;
      *(v35 + 1) = 1;
      v35[16] = 0;
      sub_10000C314(v14, v6, &qword_1000CF120, &qword_1000977D0);
      swift_storeEnumTagMultiPayload();
      sub_100009C08(&qword_1000CF138, &qword_1000977E8);
      sub_10008BCB0();
      sub_10008BE20();
      v25 = v73;
      sub_10008D3DC();
      sub_10000C3F8(v14, &qword_1000CF120, &qword_1000977D0);
    }

    v36 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10008CDAC();

    sub_100019E50();
    v37 = sub_10008D68C();
    v39 = v38;
    LOBYTE(v36) = v40;
    v42 = v41;
    v72 = swift_getKeyPath();
    v73 = sub_10008D86C();
    v71 = swift_getKeyPath();
    LOBYTE(v84[0]) = v36 & 1;
    LODWORD(v36) = v36 & 1;
    v63 = v36;
    LOBYTE(v79) = 0;
    sub_10008CFEC();
    sub_10008D9FC();
    sub_10008CF9C();
    v69 = v97;
    v70 = v95;
    v67 = v100;
    v68 = v99;
    v78 = 1;
    v77 = v96;
    v76 = v98;
    v43 = v25;
    v44 = v25;
    v45 = v74;
    sub_10000C314(v44, v74, &qword_1000CF128, &qword_1000977D8);
    v64 = v78;
    v65 = v77;
    v66 = v76;
    v46 = v75;
    sub_10000C314(v45, v75, &qword_1000CF128, &qword_1000977D8);
    v47 = sub_100009C08(&qword_1000CF158, &unk_100097840);
    v48 = v46 + v47[12];
    *v48 = 0;
    *(v48 + 8) = 1;
    v49 = v46 + v47[16];
    *&v79 = v37;
    *(&v79 + 1) = v39;
    v50 = v39;
    LOBYTE(v80) = v36;
    v51 = v42;
    *(&v80 + 1) = v42;
    v52 = v71;
    v53 = v72;
    *&v81 = v72;
    *(&v81 + 1) = 1;
    LOBYTE(v82) = 0;
    v54 = v73;
    *(&v82 + 1) = v71;
    v83 = v73;
    v55 = v82;
    *(v49 + 32) = v81;
    *(v49 + 48) = v55;
    *(v49 + 64) = v54;
    v56 = v80;
    *v49 = v79;
    *(v49 + 16) = v56;
    v57 = v46 + v47[20];
    *v57 = 0;
    *(v57 + 8) = 1;
    v58 = v46 + v47[24];
    *v58 = 0;
    *(v58 + 8) = v64;
    *(v58 + 16) = v70;
    *(v58 + 24) = v65;
    *(v58 + 32) = v69;
    *(v58 + 40) = v66;
    v59 = v67;
    *(v58 + 48) = v68;
    *(v58 + 56) = v59;
    sub_10000C314(&v79, v84, &qword_1000CADB8, &qword_100092378);
    sub_10000C3F8(v43, &qword_1000CF128, &qword_1000977D8);
    v84[0] = v37;
    v84[1] = v50;
    v85 = v63;
    v86 = v51;
    v87 = v53;
    v88 = 1;
    v89 = 0;
    v90 = v52;
    v91 = v54;
    sub_10000C3F8(v84, &qword_1000CADB8, &qword_100092378);
    return sub_10000C3F8(v45, &qword_1000CF128, &qword_1000977D8);
  }

  else
  {
    v61 = *(a1 + 40);
    type metadata accessor for AddDevicesExtensionContainerViewModel();
    sub_10008BBF0(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

id sub_100089760(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);

    return [v3 dismissAutomatedDeviceEnrollmentAdditionExtension];
  }

  else
  {
    v5 = *(a1 + 40);
    type metadata accessor for AddDevicesExtensionContainerViewModel();
    sub_10008BBF0(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000897F0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009C08(&qword_1000CF0A8, &qword_100097618);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v24[-v10];
  *v11 = sub_10008D2EC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = sub_100009C08(&qword_1000CF0B0, &qword_100097620);
  sub_1000899D0(a1, &v11[*(v12 + 44)]);
  v13 = swift_allocObject();
  v14 = a1[5];
  *(v13 + 5) = a1[4];
  *(v13 + 6) = v14;
  v15 = a1[7];
  *(v13 + 7) = a1[6];
  *(v13 + 8) = v15;
  v16 = a1[1];
  *(v13 + 1) = *a1;
  *(v13 + 2) = v16;
  v17 = a1[3];
  *(v13 + 3) = a1[2];
  *(v13 + 4) = v17;
  sub_10008B4E4(a1, v24);
  v18 = sub_10008D9FC();
  v19 = &v11[*(v5 + 44)];
  *v19 = sub_10008B9F0;
  v19[1] = v13;
  v19[2] = v18;
  v19[3] = v20;
  sub_10000C314(v11, v9, &qword_1000CF0A8, &qword_100097618);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = sub_100009C08(&qword_1000CF0B8, &qword_100097628);
  sub_10000C314(v9, a2 + *(v21 + 48), &qword_1000CF0A8, &qword_100097618);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_10000C3F8(v11, &qword_1000CF0A8, &qword_100097618);
  return sub_10000C3F8(v9, &qword_1000CF0A8, &qword_100097618);
}

uint64_t sub_1000899D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009C08(&qword_1000CF0C0, &qword_100097638);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v53 = (&v47 - v6);
  v7 = sub_100009C08(&qword_1000CE9A0, &unk_100097640);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v13 = sub_100009C08(&qword_1000CE9A8, &qword_100096970);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v19 = sub_100009C08(&qword_1000CF0C8, &qword_100097650);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v59 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v58 = &v47 - v23;
  v60 = sub_10008D2BC();
  LOBYTE(v68) = 1;
  sub_10008A0C0(a1, &v64);
  v78 = *&v65[48];
  v79 = *&v65[64];
  v80 = *&v65[80];
  v81 = *&v65[96];
  v74 = v64;
  v75 = *v65;
  v76 = *&v65[16];
  v77 = *&v65[32];
  v82[0] = v64;
  v82[1] = *v65;
  v82[2] = *&v65[16];
  v82[3] = *&v65[32];
  v82[4] = *&v65[48];
  v82[5] = *&v65[64];
  v82[6] = *&v65[80];
  v82[7] = *&v65[96];
  sub_10000C314(&v74, &v62, &qword_1000CF0D0, &qword_100097658);
  sub_10000C3F8(v82, &qword_1000CF0D0, &qword_100097658);
  *&v67[71] = v78;
  *&v67[87] = v79;
  *&v67[103] = v80;
  *&v67[119] = v81;
  *&v67[7] = v74;
  *&v67[23] = v75;
  *&v67[39] = v76;
  *&v67[55] = v77;
  v55 = v68;
  v24 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v64 == 1)
  {
    sub_10008D9FC();
    sub_10008CF9C();
    v50 = v70;
    v51 = v68;
    v48 = v73;
    v49 = v72;
    LOBYTE(v64) = 1;
    LOBYTE(v62) = v69;
    v61 = v71;
    *v18 = sub_10008D2BC();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v25 = &v18[*(sub_100009C08(&qword_1000CE9B0, &qword_1000969A8) + 44)];
    sub_10008A338(v12);
    v26 = v52;
    sub_10000C314(v12, v52, &qword_1000CE9A0, &unk_100097640);
    *v25 = 0;
    v25[8] = 1;
    v27 = sub_100009C08(&qword_1000CE9B8, &qword_1000969B0);
    sub_10000C314(v26, &v25[*(v27 + 48)], &qword_1000CE9A0, &unk_100097640);
    v28 = &v25[*(v27 + 64)];
    *v28 = 0;
    v28[8] = 1;
    sub_10000C3F8(v12, &qword_1000CE9A0, &unk_100097640);
    sub_10000C3F8(v26, &qword_1000CE9A0, &unk_100097640);
    v29 = v64;
    v30 = v62;
    LOBYTE(v27) = v61;
    v31 = v54;
    sub_10000C314(v18, v54, &qword_1000CE9A8, &qword_100096970);
    v32 = v53;
    *v53 = 0;
    *(v32 + 8) = v29;
    v33 = v50;
    *(v32 + 16) = v51;
    *(v32 + 24) = v30;
    *(v32 + 32) = v33;
    *(v32 + 40) = v27;
    v34 = v48;
    *(v32 + 48) = v49;
    *(v32 + 56) = v34;
    v35 = sub_100009C08(&qword_1000CF0E8, &qword_1000976B8);
    sub_10000C314(v31, v32 + *(v35 + 48), &qword_1000CE9A8, &qword_100096970);
    sub_10000C3F8(v18, &qword_1000CE9A8, &qword_100096970);
    sub_10000C3F8(v31, &qword_1000CE9A8, &qword_100096970);
    v36 = v58;
    sub_100037C28(v32, v58, &qword_1000CF0C0, &qword_100097638);
    (*(v56 + 56))(v36, 0, 1, v57);
  }

  else
  {
    v36 = v58;
    (*(v56 + 56))(v58, 1, 1, v57);
  }

  v37 = v59;
  sub_10000C314(v36, v59, &qword_1000CF0C8, &qword_100097650);
  *&v63[33] = *&v67[32];
  *&v63[17] = *&v67[16];
  *&v63[81] = *&v67[80];
  *&v63[97] = *&v67[96];
  *&v63[113] = *&v67[112];
  *&v63[49] = *&v67[48];
  v38 = v60;
  v62 = v60;
  v39 = v55;
  v63[0] = v55;
  v40 = *&v67[127];
  *&v63[128] = *&v67[127];
  *&v63[65] = *&v67[64];
  *&v63[1] = *v67;
  v41 = *&v63[96];
  *(a2 + 96) = *&v63[80];
  *(a2 + 112) = v41;
  *(a2 + 128) = *&v63[112];
  *(a2 + 144) = v40;
  v42 = *&v63[32];
  *(a2 + 32) = *&v63[16];
  *(a2 + 48) = v42;
  v43 = *&v63[64];
  *(a2 + 64) = *&v63[48];
  *(a2 + 80) = v43;
  v44 = *v63;
  *a2 = v62;
  *(a2 + 16) = v44;
  v45 = sub_100009C08(&qword_1000CF0D8, &qword_1000976A8);
  sub_10000C314(v37, a2 + *(v45 + 48), &qword_1000CF0C8, &qword_100097650);
  sub_10000C314(&v62, &v64, &qword_1000CF0E0, &qword_1000976B0);
  sub_10000C3F8(v36, &qword_1000CF0C8, &qword_100097650);
  sub_10000C3F8(v37, &qword_1000CF0C8, &qword_100097650);
  *&v65[81] = *&v67[80];
  *&v65[97] = *&v67[96];
  *v66 = *&v67[112];
  *&v65[17] = *&v67[16];
  *&v65[33] = *&v67[32];
  *&v65[49] = *&v67[48];
  *&v65[65] = *&v67[64];
  v64 = v38;
  v65[0] = v39;
  *&v66[15] = *&v67[127];
  *&v65[1] = *v67;
  return sub_10000C3F8(&v64, &qword_1000CF0E0, &qword_1000976B0);
}

double sub_10008A0C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_100019E50();
  v4 = sub_10008D68C();
  v6 = v5;
  v8 = v7;
  sub_10008D86C();
  v9 = sub_10008D65C();
  v21 = v10;
  v22 = v9;
  v12 = v11;
  v14 = v13;

  sub_10001CD48(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  LOBYTE(v4) = sub_10008D56C();
  *(inited + 32) = v4;
  v17 = sub_10008D58C();
  *(inited + 33) = v17;
  v18 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v4)
  {
    v18 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v17)
  {
    v18 = sub_10008D57C();
  }

  sub_10008CFAC();
  sub_10008DA2C();
  v19 = sub_10008CFBC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v18;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1;
  *(a2 + 104) = v19;
  *(a2 + 112) = v23;
  *(a2 + 120) = v24;
  return result;
}

uint64_t sub_10008A338@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = sub_10008CB2C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10008DBBC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v73 = sub_100009C08(&qword_1000CD590, &qword_100095140);
  v6 = *(v73 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v73);
  v9 = &v71 - v8;
  v72 = sub_100009C08(&qword_1000CE9D0, &unk_1000976C0);
  v10 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v12 = &v71 - v11;
  v75 = sub_100009C08(&qword_1000CE9D8, &unk_1000969D0);
  v13 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v15 = &v71 - v14;
  v74 = sub_100009C08(&qword_1000CE9E0, &qword_1000976D0);
  v16 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v18 = &v71 - v17;
  v76 = sub_100009C08(&qword_1000CE9E8, &unk_1000969E0);
  v19 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v77 = &v71 - v20;
  sub_10008DB5C();
  sub_10008CB1C();
  v80 = sub_10008DC3C();
  v81 = v21;
  v22 = swift_allocObject();
  v23 = v1[5];
  v22[5] = v1[4];
  v22[6] = v23;
  v24 = v1[7];
  v22[7] = v1[6];
  v22[8] = v24;
  v25 = v1[1];
  v22[1] = *v1;
  v22[2] = v25;
  v26 = v1[3];
  v22[3] = v1[2];
  v22[4] = v26;
  sub_10008B4E4(v1, v79);
  sub_100019E50();
  sub_10008D92C();
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  v71 = xmmword_100091E50;
  *(inited + 16) = xmmword_100091E50;
  v28 = sub_10008D54C();
  *(inited + 32) = v28;
  v29 = sub_10008D55C();
  *(inited + 33) = v29;
  v30 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v28)
  {
    v30 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v29)
  {
    v30 = sub_10008D57C();
  }

  sub_10008CF0C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  (*(v6 + 32))(v12, v9, v73);
  v39 = &v12[*(v72 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = swift_initStackObject();
  *(v40 + 16) = v71;
  v41 = sub_10008D56C();
  *(v40 + 32) = v41;
  v42 = sub_10008D58C();
  *(v40 + 33) = v42;
  v43 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v41)
  {
    v43 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v42)
  {
    v43 = sub_10008D57C();
  }

  sub_10008CF0C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_100037C28(v12, v15, &qword_1000CE9D0, &unk_1000976C0);
  v52 = &v15[*(v75 + 36)];
  *v52 = v43;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = &v18[*(v74 + 36)];
  sub_10008D9CC();
  v54 = sub_10008D53C();
  v53[*(sub_100009C08(&qword_1000CCCD8, &unk_100096960) + 36)] = v54;
  sub_100037C28(v15, v18, &qword_1000CE9D8, &unk_1000969D0);
  v55 = sub_10008D86C();
  KeyPath = swift_getKeyPath();
  v57 = v77;
  sub_100037C28(v18, v77, &qword_1000CE9E0, &qword_1000976D0);
  v58 = (v57 + *(v76 + 36));
  *v58 = KeyPath;
  v58[1] = v55;
  v59 = sub_100009C08(&qword_1000CE9A0, &unk_100097640);
  v60 = v78;
  v61 = (v78 + *(v59 + 36));
  v62 = *(sub_10008D0FC() + 20);
  v63 = enum case for RoundedCornerStyle.continuous(_:);
  v64 = sub_10008D2DC();
  (*(*(v64 - 8) + 104))(&v61[v62], v63, v64);
  __asm { FMOV            V0.2D, #20.0 }

  *v61 = _Q0;
  *&v61[*(sub_100009C08(&qword_1000CE9F0, &unk_100096A20) + 36)] = 256;
  return sub_100037C28(v57, v60, &qword_1000CE9E8, &unk_1000969E0);
}

uint64_t sub_10008AA30@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v5 = sub_10008DA5C();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10008DA8C();
  v28 = *(v29 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10008CFFC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000167AC();
  v27 = sub_10008DE7C();
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = a2[5];
  v19[4] = a2[4];
  v19[5] = v20;
  v21 = a2[7];
  v19[6] = a2[6];
  v19[7] = v21;
  v22 = a2[1];
  *v19 = *a2;
  v19[1] = v22;
  v23 = a2[3];
  v19[2] = a2[2];
  v19[3] = v23;
  aBlock[4] = sub_10008BAD0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077134;
  aBlock[3] = &unk_1000C2BA0;
  v24 = _Block_copy(aBlock);
  sub_10008B4E4(a2, &v32);

  sub_10008DA7C();
  v32 = &_swiftEmptyArrayStorage;
  sub_10008BBF0(&qword_1000CD7D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009C08(&qword_1000CA450, &qword_100097630);
  sub_10001121C(&qword_1000CD7E0, &qword_1000CA450, &qword_100097630);
  sub_10008DF5C();
  v25 = v27;
  sub_10008DE8C();
  _Block_release(v24);

  (*(v30 + 8))(v8, v5);
  (*(v28 + 8))(v11, v29);
  result = sub_10008D84C();
  *v31 = result;
  return result;
}

uint64_t sub_10008AE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008CFFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v9 = sub_10008CCDC();
  sub_100009F94(v9, qword_1000D6D38);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_10008CCBC();
  v11 = sub_10008DE1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    sub_10008CFEC();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Status container dimensions: %f", v12, 0xCu);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  sub_10008CFEC();
  v18 = *(a2 + 112);
  v17[1] = v15;
  sub_100009C08(&qword_1000CF078, &qword_100097598);
  return sub_10008D8DC();
}

uint64_t sub_10008B078@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for ManualPinEntryView();
  v3 = (a1 + v2[5]);
  type metadata accessor for VisualPinScannerViewModel();
  sub_10008BBF0(&qword_1000CD508, type metadata accessor for VisualPinScannerViewModel);
  *v3 = sub_10008D15C();
  v3[1] = v4;
  *(a1 + v2[6]) = 6;
  v5 = a1 + v2[7];
  sub_10008D8BC();
  *v5 = v11;
  *(v5 + 2) = v12;
  v6 = a1 + v2[8];
  *v6 = sub_10008CF3C() & 1;
  *(v6 + 1) = v7;
  v6[16] = v8 & 1;
  v9 = a1 + v2[9];
  result = sub_10008D8BC();
  *v9 = v11;
  *(v9 + 1) = *(&v11 + 1);
  return result;
}

uint64_t sub_10008B1D0()
{
  v0 = sub_10008CB2C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10008DBBC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10008DB5C();
  sub_10008CB1C();
  sub_10008DC3C();
  sub_100019E50();
  return sub_10008D92C();
}

uint64_t sub_10008B300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v18 - v6;
  v8 = *(a1 + 8);
  v9 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15CameraViewModel_enrollmentErrorInfo;
  swift_beginAccess();
  sub_10000C314(v8 + v9, v7, &unk_1000CBAE8, &qword_100093260);
  v10 = type metadata accessor for ErrorInfo();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = &v7[*(v10 + 24)];
    v11 = *v13;
    v12 = *(v13 + 1);
  }

  sub_10000C3F8(v7, &unk_1000CBAE8, &qword_100093260);
  v18[1] = v11;
  v18[2] = v12;
  sub_100019E50();
  result = sub_10008D68C();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_10008B470@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_10008775C(a1);
}

unint64_t sub_10008B524()
{
  result = qword_1000CF020;
  if (!qword_1000CF020)
  {
    sub_100007108(&qword_1000CF008, &qword_100097428);
    sub_10001121C(&qword_1000CF028, &qword_1000CF030, &qword_100097468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CF020);
  }

  return result;
}

uint64_t sub_10008B624(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_10008B698@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = sub_100009C08(&qword_1000CF0F0, &qword_1000977A8);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = a1[8];
  v18 = a1[9];
  sub_10008BB9C();

  sub_10008D90C();
  v20 = a1[6];
  v19 = a1[7];

  sub_10008D90C();
  v21 = v4[2];
  v21(v11, v16, v3);
  v21(v8, v14, v3);
  v22 = v28;
  v21(v28, v11, v3);
  v23 = sub_100009C08(&qword_1000CF100, &qword_1000977B0);
  v24 = &v22[*(v23 + 48)];
  *v24 = 0;
  v24[8] = 1;
  v21(&v22[*(v23 + 64)], v8, v3);
  v25 = v4[1];
  v25(v14, v3);
  v25(v16, v3);
  v25(v8, v3);
  return (v25)(v11, v3);
}

uint64_t sub_10008B960(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10008B9A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10008B9F8()
{
  v1 = sub_10008CFFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  v7 = *(v0 + v5 + 16);

  v8 = *(v0 + v5 + 32);

  v9 = *(v0 + v5 + 56);

  v10 = *(v0 + v5 + 72);

  v11 = *(v0 + v5 + 88);

  v12 = *(v0 + v5 + 104);

  v13 = *(v0 + v5 + 120);

  return _swift_deallocObject(v0, v5 + 128, v3 | 7);
}

uint64_t sub_10008BAD0()
{
  v1 = *(sub_10008CFFC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10008AE50(v0 + v2, v3);
}

uint64_t sub_10008BB5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10008BB9C()
{
  result = qword_1000CF0F8;
  if (!qword_1000CF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CF0F8);
  }

  return result;
}

uint64_t sub_10008BBF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008BC38()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_10008BCB0()
{
  result = qword_1000CF140;
  if (!qword_1000CF140)
  {
    sub_100007108(&qword_1000CF120, &qword_1000977D0);
    sub_10008BD68();
    sub_10001121C(&qword_1000CADD0, &qword_1000CADD8, &qword_1000977F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CF140);
  }

  return result;
}

unint64_t sub_10008BD68()
{
  result = qword_1000CF148;
  if (!qword_1000CF148)
  {
    sub_100007108(&qword_1000CF130, &qword_1000977E0);
    sub_10001121C(&qword_1000CF040, &qword_1000CD590, &qword_100095140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CF148);
  }

  return result;
}

unint64_t sub_10008BE20()
{
  result = qword_1000CF150;
  if (!qword_1000CF150)
  {
    sub_100007108(&qword_1000CF138, &qword_1000977E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CF150);
  }

  return result;
}

uint64_t sub_10008BEAC()
{
  v1 = sub_10008CFFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 144) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 9);

  v10 = *(v0 + 11);

  v11 = *(v0 + 13);

  v12 = *(v0 + 15);

  v13 = *(v0 + 17);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008BFA8()
{
  v1 = *(*(sub_10008CFFC() - 8) + 80);

  return sub_100088E84(v0 + 16);
}

uint64_t sub_10008C00C()
{
  sub_100007108(&qword_1000CF010, &qword_100097430);
  sub_100007108(&qword_1000CD590, &qword_100095140);
  sub_100007108(&qword_1000CF008, &qword_100097428);
  type metadata accessor for ManualPinEntryView();
  sub_10008B524();
  sub_10008BBF0(&qword_1000CF038, type metadata accessor for ManualPinEntryView);
  swift_getOpaqueTypeConformance2();
  sub_100019E50();
  sub_10001121C(&qword_1000CF040, &qword_1000CD590, &qword_100095140);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008C1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CABC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008C284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10008CABC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DeviceStatusSectionViewModel()
{
  result = qword_1000CF1B8;
  if (!qword_1000CF1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008C388()
{
  sub_10008CABC();
  if (v0 <= 0x3F)
  {
    sub_10008C40C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10008C40C()
{
  if (!qword_1000CF1C8)
  {
    type metadata accessor for DeviceRowViewModel();
    v0 = sub_10008DD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CF1C8);
    }
  }
}

uint64_t sub_10008C464()
{
  sub_10008DFBC(62);
  v2._countAndFlagsBits = 0x754E6C6169726573;
  v2._object = 0xEE00203A7265626DLL;
  sub_10008DCBC(v2);
  sub_10008DCBC(*v0);
  v3._countAndFlagsBits = 0x203A44494455202CLL;
  v3._object = 0xE800000000000000;
  sub_10008DCBC(v3);
  sub_10008DCBC(v0[1]);
  v4._object = 0x800000010009D5E0;
  v4._countAndFlagsBits = 0xD000000000000013;
  sub_10008DCBC(v4);
  sub_10008DCBC(v0[2]);
  v5._countAndFlagsBits = 0x4E6C65646F6D202CLL;
  v5._object = 0xED0000203A656D61;
  sub_10008DCBC(v5);
  sub_10008DCBC(v0[3]);
  return 0;
}

void sub_10008C56C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 serialNumber];
  v5 = sub_10008DBDC();
  v7 = v6;

  v8 = [a1 deviceUDID];
  v9 = sub_10008DBDC();
  v11 = v10;

  v12 = [a1 modelIdentifier];
  v13 = sub_10008DBDC();
  v15 = v14;

  v16 = [a1 modelName];
  v17 = sub_10008DBDC();
  v19 = v18;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
  a2[5] = v15;
  a2[6] = v17;
  a2[7] = v19;
}

__n128 sub_10008C66C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008C680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10008C6C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}