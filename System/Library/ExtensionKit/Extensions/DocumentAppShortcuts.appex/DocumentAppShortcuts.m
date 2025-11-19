uint64_t sub_1000016A8()
{
  v0 = sub_1000038DC();
  sub_100001824(v0, qword_10000C0E8);
  v1 = sub_1000017EC(v0, qword_10000C0E8);
  v2 = enum case for ShortcutTileColor.blue(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100001734@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_1000038DC();
  v3 = sub_1000017EC(v2, qword_10000C0E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000017EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100001824(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100001888()
{
  v0 = *(*(sub_10000392C() - 8) + 64);
  (__chkstk_darwin)();
  v64 = v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10000374C();
  v2 = *(v67 - 8);
  v3 = v2[8];
  (__chkstk_darwin)();
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_1000023DC(&qword_10000C020, &qword_100003B98) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v61 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v58 = v52 - v10;
  v11 = __chkstk_darwin(v9);
  v57 = v52 - v12;
  v13 = __chkstk_darwin(v11);
  v56 = v52 - v14;
  v15 = __chkstk_darwin(v13);
  v55 = v52 - v16;
  v17 = __chkstk_darwin(v15);
  v54 = v52 - v18;
  v19 = __chkstk_darwin(v17);
  v53 = v52 - v20;
  __chkstk_darwin(v19);
  v21 = sub_1000037AC();
  v62 = *(v21 - 8);
  v63 = v21;
  v22 = *(v62 + 64);
  __chkstk_darwin(v21);
  v60 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000023DC(&qword_10000C028, &qword_100003BA0);
  v24 = *(sub_1000023DC(&qword_10000C030, &qword_100003BA8) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = *(v24 + 72);
  v27 = swift_allocObject();
  v59 = v27;
  *(v27 + 16) = xmmword_100003B20;
  v71 = v27 + v25;
  v28 = sub_100002424();
  sub_1000036DC();
  v70 = v26;
  sub_1000036DC();
  sub_10000370C();
  v74._countAndFlagsBits = 0x746977206E616353;
  v74._object = 0xEA00000000002068;
  sub_1000036FC(v74);
  v68 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v66 = v2[13];
  v69 = v2 + 13;
  v29 = v67;
  v66(v5);
  sub_1000036EC();
  v72 = v2[1];
  v73 = v2 + 1;
  v72(v5, v29);
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  sub_1000036FC(v75);
  v65 = v28;
  sub_10000371C();
  v52[1] = 2 * v26 + v70;
  sub_10000370C();
  v76._object = 0x8000000100004120;
  v76._countAndFlagsBits = 0xD000000000000013;
  sub_1000036FC(v76);
  v30 = v68;
  v31 = v66;
  (v66)(v5, v68, v29);
  v52[0] = v5;
  sub_1000036EC();
  v72(v5, v29);
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  sub_1000036FC(v77);
  sub_10000371C();
  sub_10000370C();
  v78._object = 0x8000000100004140;
  v78._countAndFlagsBits = 0xD000000000000013;
  sub_1000036FC(v78);
  v32 = v52[0];
  (v31)(v52[0], v30, v29);
  v33 = v31;
  v34 = v32;
  sub_1000036EC();
  v72(v32, v29);
  v79._countAndFlagsBits = 1886413088;
  v79._object = 0xE400000000000000;
  sub_1000036FC(v79);
  sub_10000371C();
  v35 = v70;
  sub_1000036DC();
  sub_1000036DC();
  v54 = (8 * v35);
  v53 = 7 * v35;
  sub_10000370C();
  v80._object = 0x8000000100004180;
  v80._countAndFlagsBits = 0xD000000000000011;
  sub_1000036FC(v80);
  v36 = v67;
  (v33)(v32, v68, v67);
  sub_1000036EC();
  v72(v32, v36);
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  sub_1000036FC(v81);
  sub_10000371C();
  sub_10000370C();
  v82._object = 0x80000001000041A0;
  v82._countAndFlagsBits = 0xD000000000000011;
  sub_1000036FC(v82);
  v37 = v68;
  (v33)(v32, v68, v36);
  sub_1000036EC();
  v38 = v72;
  v72(v32, v36);
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  sub_1000036FC(v83);
  v39 = v54;
  sub_10000371C();
  v40 = v70;
  v56 = &v39[v70];
  sub_10000370C();
  v84._countAndFlagsBits = 0x206E616353;
  v84._object = 0xE500000000000000;
  sub_1000036FC(v84);
  v41 = v37;
  v42 = v66;
  v43 = v67;
  (v66)(v34, v41, v67);
  sub_1000036EC();
  v38(v34, v43);
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_1000036FC(v85);
  v44 = v71;
  sub_10000371C();
  v57 = (v44 + 10 * v40);
  sub_10000370C();
  v86._countAndFlagsBits = 0xD000000000000014;
  v86._object = 0x80000001000041C0;
  sub_1000036FC(v86);
  v45 = v68;
  (v42)(v34, v68, v43);
  sub_1000036EC();
  v46 = v72;
  v72(v34, v43);
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  sub_1000036FC(v87);
  sub_10000371C();
  sub_10000370C();
  v88._object = 0xEE00206874697720;
  v88._countAndFlagsBits = 0x636F44206E616353;
  sub_1000036FC(v88);
  (v66)(v34, v45, v43);
  sub_1000036EC();
  v46(v34, v43);
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  sub_1000036FC(v89);
  sub_10000371C();
  sub_10000390C();
  v47 = v60;
  sub_10000379C();
  v48 = sub_10000373C();
  (*(v62 + 8))(v47, v63);
  sub_1000023DC(&qword_10000C040, &unk_100003BB0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100003B30;
  *(v49 + 32) = v48;
  v50 = sub_10000372C();

  return v50;
}

uint64_t sub_1000023DC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002424()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_10000247C()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_1000024D4()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_100002578()
{
  v0 = sub_10000391C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000397C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000039CC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000392C();
  sub_100001824(v9, qword_10000C100);
  sub_1000017EC(v9, qword_10000C100);
  sub_1000039BC();
  sub_10000396C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000393C();
}

uint64_t sub_100002758()
{
  v0 = sub_1000023DC(&qword_10000C0B8, &qword_100003D70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v9 - v2;
  v4 = sub_10000395C();
  sub_100001824(v4, qword_10000C118);
  v5 = sub_1000017EC(v4, qword_10000C118);
  v9[0] = sub_1000039AC();
  v9[1] = v6;
  v10._countAndFlagsBits = 0x6E6163733F2F2F3ALL;
  v10._object = 0xED0000657572743DLL;
  sub_1000039DC(v10);
  sub_10000394C();

  v7 = *(v4 - 8);
  result = (*(v7 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v7 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000028B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_10000392C();
  v3 = sub_1000017EC(v2, qword_10000C100);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002970()
{
  v0 = sub_1000023DC(&qword_10000C0C0, qword_100003D78);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_1000038FC();
  return sub_1000038EC();
}

uint64_t sub_100002A38(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10000395C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1000037DC();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100002B54, 0, 0);
}

uint64_t sub_100002B54()
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v8 = sub_1000017EC(v5, qword_10000C118);
  (*(v6 + 16))(v4, v8, v5);
  sub_1000037EC();
  sub_100003394();
  sub_1000037CC();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100002C84()
{
  v0 = *aScandocument;

  return v0;
}

uint64_t sub_100002CBC()
{
  v0 = sub_1000023DC(&qword_10000C0A0, &qword_100003D60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  sub_100002424();
  sub_10000388C();
  v5 = sub_10000384C();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_10000388C();
  v7 = sub_10000384C();
  v6(v4, v0);
  sub_10000388C();
  v8 = sub_10000384C();
  v6(v4, v0);
  sub_10000388C();
  v9 = sub_10000384C();
  v6(v4, v0);
  sub_1000023DC(&qword_10000C0A8, &qword_100003D68);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100003BC0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_10000383C();

  return v11;
}

uint64_t sub_100002F3C()
{
  v0 = sub_10000386C();
  sub_1000023DC(&qword_10000C090, &qword_100003D50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100003B30;
  *(v1 + 32) = v0;
  v2 = sub_10000385C();

  return v2;
}

uint64_t sub_100002FC4()
{
  v0 = sub_1000038BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002424();
  sub_1000038CC();
  v5 = sub_1000038AC();
  (*(v1 + 8))(v4, v0);
  sub_1000023DC(&qword_10000C098, &qword_100003D58);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100003B30;
  *(v6 + 32) = v5;
  v7 = sub_10000389C();

  return v7;
}

uint64_t sub_10000311C()
{
  v0 = sub_10000382C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002424();
  sub_10000381C();
  v5 = sub_10000380C();
  (*(v1 + 8))(v4, v0);
  sub_1000023DC(&qword_10000C088, &qword_100003D48);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100003B30;
  *(v6 + 32) = v5;
  v7 = sub_1000037FC();

  return v7;
}

uint64_t sub_1000032C0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000334C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000032C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003394()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    sub_1000037DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_1000033EC(uint64_t a1)
{
  v2 = sub_100003600();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

unint64_t sub_100003438()
{
  sub_1000023DC(&qword_10000C0D8, &qword_100003E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100003B30;
  v1 = sub_10000399C();
  result = sub_100003674();
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  qword_10000C130 = v0;
  return result;
}

uint64_t sub_1000034A0()
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003558();
  sub_10000398C();
  return 0;
}

unint64_t sub_100003558()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_100003600()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_100003674()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    sub_10000399C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}