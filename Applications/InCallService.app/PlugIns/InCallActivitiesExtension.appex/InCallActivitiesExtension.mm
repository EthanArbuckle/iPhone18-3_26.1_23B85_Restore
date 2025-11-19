uint64_t sub_1000015A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000161C(&qword_10000C090, &unk_100004730);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000161C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000161C(&qword_10000C090, &unk_100004730);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CallScreeningActivityView()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001740()
{
  sub_1000017AC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000017AC()
{
  if (!qword_10000C100)
  {
    sub_10000416C();
    sub_1000029A4(&unk_10000C108, &type metadata accessor for IntelligenceActivityAttributes);
    v0 = sub_10000430C();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C100);
    }
  }
}

uint64_t sub_10000185C()
{
  v0 = (*(*(sub_10000161C(&qword_10000C160, &qword_100004828) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v20 = v18 - v1;
  v2 = sub_10000416C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = v18 - v12;
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  v19 = sub_10000402C();
  sub_10000161C(&qword_10000C090, &unk_100004730);
  sub_1000042EC();
  v18[3] = sub_10000412C();
  v16 = *(v3 + 8);
  v16(v15, v2);
  sub_1000042EC();
  sub_10000411C();
  v16(v13, v2);
  sub_1000042EC();
  sub_1000040FC();
  v16(v10, v2);
  sub_1000042EC();
  sub_10000413C();
  v16(v7, v2);
  return sub_10000401C();
}

uint64_t sub_100001ADC()
{
  v0 = sub_10000161C(&qword_10000C168, &qword_100004830);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v59 = &v52 - v4;
  v5 = sub_10000161C(&qword_10000C170, &qword_100004838);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v52 - v9;
  v10 = sub_10000416C();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  v12 = __chkstk_darwin(v10);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v55 = &v52 - v15;
  __chkstk_darwin(v14);
  v53 = &v52 - v16;
  v17 = sub_10000161C(&qword_10000C178, &unk_100004840);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v57 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v23 = sub_1000040EC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v54 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v52 - v29;
  __chkstk_darwin(v28);
  v32 = &v52 - v31;
  v33 = sub_100003FDC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v64 = &v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000161C(&qword_10000C090, &unk_100004730);
  sub_1000042FC();
  sub_1000040CC();
  v37 = v22;
  v38 = *(v24 + 8);
  v65 = v24 + 8;
  v66 = v23;
  v63 = v38;
  v38(v32, v23);
  v39 = *(v34 + 48);
  v40 = v39(v22, 1, v33);
  v52 = v33;
  if (v40 == 1)
  {
    v41 = v53;
    sub_1000042EC();
    sub_10000414C();
    (*(v61 + 8))(v41, v62);
    if (v39(v37, 1, v33) != 1)
    {
      sub_100002710(v37);
    }
  }

  else
  {
    (*(v34 + 32))(v64, v22, v33);
    v41 = v53;
  }

  sub_1000042FC();
  sub_10000409C();
  v63(v30, v66);
  sub_1000042EC();
  v42 = v57;
  sub_10000415C();
  v43 = v62;
  v44 = *(v61 + 8);
  v44(v41, v62);
  (*(v34 + 56))(v42, 0, 1, v52);
  v45 = v55;
  sub_1000042EC();
  sub_10000408C();
  v44(v45, v43);
  v46 = v56;
  sub_1000042EC();
  sub_10000410C();
  v44(v46, v43);
  v47 = v54;
  sub_1000042FC();
  sub_1000040AC();
  v63(v47, v66);
  v48 = sub_10000404C();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  return sub_10000403C();
}

uint64_t sub_1000020FC()
{
  v0 = sub_10000161C(&qword_10000C168, &qword_100004830);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26 = &v26 - v4;
  v5 = sub_10000161C(&qword_10000C178, &unk_100004840);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = sub_1000040EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  sub_10000161C(&qword_10000C090, &unk_100004730);
  sub_1000042FC();
  sub_1000040DC();
  v18 = *(v11 + 8);
  v18(v17, v10);
  v19 = sub_100003FDC();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_1000042FC();
  sub_1000040BC();
  v18(v15, v10);
  v20 = sub_10000407C();
  v21 = *(*(v20 - 8) + 56);
  v21(v26, 1, 1, v20);
  v21(v27, 1, 1, v20);
  v22 = sub_10000406C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  return sub_10000405C();
}

uint64_t sub_100002420@<X0>(uint64_t a1@<X8>)
{
  sub_1000020FC();
  sub_100001ADC();
  sub_10000185C();
  sub_10000400C();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(sub_10000161C(&qword_10000C138, &qword_100004800) + 36));
  v4 = *(sub_10000161C(&qword_10000C140, &qword_100004808) + 28);
  v5 = enum case for ActivityEnvironment.liveActivity(_:);
  v6 = sub_100003FFC();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  LOBYTE(KeyPath) = sub_10000421C();
  sub_10000417C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_10000161C(&qword_10000C148, &qword_100004810) + 36);
  *v15 = KeyPath;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(KeyPath) = sub_10000420C();
  sub_10000417C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a1 + *(sub_10000161C(&qword_10000C150, &qword_100004818) + 36);
  *v24 = KeyPath;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  LOBYTE(KeyPath) = sub_10000422C();
  sub_10000417C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = sub_10000161C(&qword_10000C158, &qword_100004820);
  v34 = a1 + *(result + 36);
  *v34 = KeyPath;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_100002620(uint64_t a1)
{
  v2 = sub_100003FFC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000041BC();
}

uint64_t sub_100002710(uint64_t a1)
{
  v2 = sub_10000161C(&qword_10000C178, &unk_100004840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000027BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002834(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000027BC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000028E8()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    sub_1000027BC(&qword_10000C138, &qword_100004800);
    sub_1000029A4(&qword_10000C1A0, &type metadata accessor for IntelligenceActivityView);
    sub_1000029EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_1000029A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000029EC()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    sub_1000027BC(&qword_10000C140, &qword_100004808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

uint64_t sub_100002A54()
{
  v0 = sub_100002B50();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for InCallActivitiesLiveActivity, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002AD0();
  sub_10000419C();
  return 0;
}

unint64_t sub_100002AD0()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

unint64_t sub_100002B50()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

uint64_t sub_100002C1C(uint64_t a1)
{
  v2 = sub_10000161C(&qword_10000C1C8, &qword_100004918);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = sub_10000161C(&qword_10000C090, &unk_100004730);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  KeyPath = swift_getKeyPath();
  v8 = &v5[*(v2 + 36)];
  v9 = *(sub_10000161C(&qword_10000C1E8, &unk_100004920) + 28);
  v10 = enum case for ColorScheme.dark(_:);
  v11 = sub_10000418C();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = KeyPath;
  sub_10000429C();
  sub_1000037BC();
  sub_10000424C();

  return sub_100003EBC(v5, &qword_10000C1C8, &qword_100004918);
}

uint64_t sub_100002DC0(uint64_t a1)
{
  v2 = sub_10000418C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000041DC();
}

uint64_t sub_100002E88()
{
  v0 = sub_10000161C(&qword_10000C160, &qword_100004828);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_1000042DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  sub_10000161C(&qword_10000C1F0, &qword_100004930);
  sub_100003F60(&qword_10000C1F8, &qword_10000C1F0, &qword_100004930);
  sub_1000042BC();
  sub_100003FEC();
  sub_1000042CC();
  sub_100003EBC(v3, &qword_10000C160, &qword_100004828);
  v12 = *(v5 + 8);
  v12(v9, v4);
  sub_10000428C();
  sub_1000042AC();

  return (v12)(v11, v4);
}

uint64_t sub_100003114@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_10000161C(&qword_10000C200, &qword_100004938);
  v26 = *(v28 - 8);
  v1 = *(v26 + 64);
  __chkstk_darwin(v28);
  v3 = &v23 - v2;
  v4 = sub_10000161C(&qword_10000C208, &qword_100004940);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_10000439C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000161C(&qword_10000C210, &qword_100004948);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v23 - v17;
  __chkstk_darwin(v16);
  v20 = &v23 - v19;
  sub_10000437C();
  sub_10000433C();
  sub_10000438C();
  sub_10000433C();
  sub_10000436C();
  sub_10000433C();
  v33 = v20;
  sub_10000161C(&qword_10000C218, &qword_100004950);
  v34 = &type metadata for Text;
  v35 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v23 = v7;
  sub_10000434C();
  v31 = v7;
  v32 = v18;
  sub_10000161C(&qword_10000C220, &qword_100004958);
  sub_100003F60(&qword_10000C228, &qword_10000C220, &qword_100004958);
  sub_10000434C();
  v29 = v3;
  v30 = v15;
  sub_10000161C(&qword_10000C1F0, &qword_100004930);
  sub_100003F60(&qword_10000C1F8, &qword_10000C1F0, &qword_100004930);
  sub_10000434C();
  (*(v26 + 8))(v3, v28);
  (*(v24 + 8))(v23, v25);
  v21 = *(v11 + 8);
  v21(v15, v10);
  v21(v18, v10);
  return (v21)(v20, v10);
}

uint64_t sub_10000363C@<X0>(uint64_t a1@<X8>)
{
  sub_1000041EC();
  result = sub_10000423C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000369C()
{
  sub_10000416C();
  sub_10000161C(&qword_10000C1C0, &qword_100004910);
  sub_1000038A4(&unk_10000C108, &type metadata accessor for IntelligenceActivityAttributes);
  sub_1000027BC(&qword_10000C1C8, &qword_100004918);
  sub_1000037BC();
  swift_getOpaqueTypeConformance2();
  return sub_10000431C();
}

unint64_t sub_1000037BC()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    sub_1000027BC(&qword_10000C1C8, &qword_100004918);
    sub_1000038A4(&qword_10000C1D8, type metadata accessor for CallScreeningActivityView);
    sub_100003F60(&qword_10000C1E0, &qword_10000C1E8, &unk_100004920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

uint64_t sub_1000038A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000038EC()
{
  v1 = *(v0 + 16);
  sub_10000161C(&qword_10000C210, &qword_100004948);
  return sub_10000432C();
}

uint64_t sub_10000392C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000161C(&qword_10000C218, &qword_100004950);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = sub_10000161C(&qword_10000C220, &qword_100004958);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  sub_10000161C(&qword_10000C200, &qword_100004938);
  sub_10000435C();
  sub_10000161C(&qword_10000C210, &qword_100004948);
  sub_10000432C();
  sub_100003DBC(v16, v14);
  v17 = v3[2];
  v17(v7, v9, v2);
  sub_100003DBC(v14, a1);
  v18 = sub_10000161C(&qword_10000C230, &qword_100004960);
  v17((a1 + *(v18 + 48)), v7, v2);
  v19 = v3[1];
  v19(v9, v2);
  sub_100003E2C(v16);
  v19(v7, v2);
  return sub_100003E2C(v14);
}

uint64_t sub_100003B6C@<X0>(char *a1@<X8>)
{
  v2 = sub_10000161C(&qword_10000C218, &qword_100004950);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - v12;
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_10000161C(&qword_10000C208, &qword_100004940);
  sub_10000435C();
  sub_10000161C(&qword_10000C210, &qword_100004948);
  sub_10000432C();
  v16 = v3[2];
  v16(v10, v15, v2);
  v16(v7, v13, v2);
  v16(a1, v10, v2);
  v17 = sub_10000161C(&qword_10000C238, &unk_100004968);
  v16(&a1[*(v17 + 48)], v7, v2);
  v18 = v3[1];
  v18(v13, v2);
  v18(v15, v2);
  v18(v7, v2);
  return (v18)(v10, v2);
}

uint64_t sub_100003DAC@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100003B6C(a1);
}

uint64_t sub_100003DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10000392C(a1);
}

uint64_t sub_100003DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000161C(&qword_10000C220, &qword_100004958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003E2C(uint64_t a1)
{
  v2 = sub_10000161C(&qword_10000C220, &qword_100004958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003EBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000161C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003F60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000027BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}