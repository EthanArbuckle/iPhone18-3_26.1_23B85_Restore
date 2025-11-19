int main(int argc, const char **argv, const char **envp)
{
  sub_1000014FC();
  sub_10000453C();
  return 0;
}

unint64_t sub_1000014FC()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_100001550()
{
  sub_1000016C8(&qword_10000C0A8, &unk_1000049F0);
  sub_100001710(&qword_10000C0B0, &unk_100004C90);
  sub_100001758();
  swift_getOpaqueTypeConformance2();
  return sub_1000045BC();
}

uint64_t sub_1000015E8(__int128 *a1)
{
  v2 = *a1;
  if (sub_100003FE4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000165C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_100003FE4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_1000016C8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001710(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001758()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    sub_100001710(&qword_10000C0B0, &unk_100004C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

__n128 sub_1000017BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000017CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000017EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_10000C0C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C0C0);
    }
  }
}

unint64_t sub_100001890()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100001944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatteriesAvocadoEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000019E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatteriesAvocadoEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100001A74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001AAC()
{
  result = type metadata accessor for BatteriesAvocadoEntry(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100001B2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000044EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1000016C8(&qword_10000C160, &unk_100004B20);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = sub_10000468C();
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[8]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[7];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100001CB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000044EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000016C8(&qword_10000C160, &unk_100004B20);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_10000468C();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 1;
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

void sub_100001E0C()
{
  sub_1000044EC();
  if (v0 <= 0x3F)
  {
    sub_100001EC8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize();
      if (v2 <= 0x3F)
      {
        sub_10000468C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100001EC8()
{
  if (!qword_10000C1D0)
  {
    sub_1000046EC();
    v0 = sub_10000473C();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C1D0);
    }
  }
}

uint64_t sub_100001F20@<X0>(uint64_t a1@<X8>)
{
  sub_1000046FC();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for BatteriesAvocadoEntry(0);
  v7 = a1 + v6[7];
  sub_10000470C();
  v8 = sub_10000471C();
  v9 = v6[5];
  v10 = sub_1000046EC();
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = sub_1000044DC();
  v12 = (a1 + v6[6]);
  *v12 = v3;
  v12[1] = v5;
  *(a1 + v6[8]) = v8 & 1;
  return result;
}

uint64_t sub_100001FE4(uint64_t a1, void (*a2)(char *))
{
  v3 = (type metadata accessor for BatteriesAvocadoEntry(0) - 8);
  v4 = *(*v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000046FC();
  v8 = v7;
  v10 = v9;
  v11 = &v6[v3[9]];
  sub_10000470C();
  v12 = sub_10000471C();
  v13 = v3[7];
  v14 = sub_1000046EC();
  (*(*(v14 - 8) + 56))(&v6[v13], 1, 1, v14);
  sub_1000044DC();
  v15 = &v6[v3[8]];
  *v15 = v8;
  *(v15 + 1) = v10;
  v6[v3[10]] = v12 & 1;
  a2(v6);
  return sub_100003C04(v6);
}

uint64_t sub_100002110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000021C4;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000021C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000022B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003C60;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000236C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000044EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100002400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v79 = a2;
  v78 = sub_10000467C();
  v76 = *(v78 - 8);
  v2 = *(v76 + 64);
  __chkstk_darwin();
  v74 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000016C8(&qword_10000C0B0, &unk_100004C90);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v59 - v7;
  v60 = sub_1000016C8(&qword_10000C0A8, &unk_1000049F0);
  v9 = *(v60 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v59 - v11;
  v65 = sub_1000016C8(&qword_10000C248, &qword_100004CA0);
  v67 = *(v65 - 8);
  v13 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v59 - v14;
  v16 = sub_1000016C8(&qword_10000C250, &qword_100004CA8);
  v17 = *(v16 - 8);
  v68 = v16;
  v69 = v17;
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v62 = &v59 - v19;
  v20 = sub_1000016C8(&qword_10000C258, &qword_100004CB0);
  v21 = *(v20 - 8);
  v70 = v20;
  v71 = v21;
  v22 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v63 = &v59 - v23;
  v24 = sub_1000016C8(&qword_10000C260, &qword_100004CB8);
  v25 = *(v24 - 8);
  v72 = v24;
  v73 = v25;
  v26 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v64 = &v59 - v27;
  v75 = sub_1000016C8(&qword_10000C268, &qword_100004CC0);
  v77 = *(v75 - 8);
  v28 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v66 = &v59 - v29;
  type metadata accessor for BatteriesAvocadoWidgetEntryView(0);
  sub_1000031E4(&qword_10000C270, type metadata accessor for BatteriesAvocadoWidgetEntryView);
  sub_100003480();

  sub_1000046BC();
  v30 = sub_1000034D4(&qword_10000C0B8, &qword_10000C0B0, &unk_100004C90);
  sub_1000045EC();
  (*(v5 + 8))(v8, v4);
  v80 = v4;
  v81 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v60;
  sub_1000045BC();
  (*(v9 + 8))(v12, v32);
  sub_1000016C8(&qword_10000C280, &qword_100004CC8);
  v33 = sub_10000468C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100004AC0;
  v38 = v37 + v36;
  v39 = *(v34 + 104);
  v39(v38, enum case for WidgetFamily.systemSmall(_:), v33);
  v39(v38 + v35, enum case for WidgetFamily.systemMedium(_:), v33);
  v39(v38 + 2 * v35, enum case for WidgetFamily.systemLarge(_:), v33);
  v80 = v32;
  v81 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v62;
  v42 = v65;
  sub_10000459C();

  (*(v67 + 8))(v15, v42);
  v80 = v42;
  v81 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v63;
  v45 = v68;
  sub_1000045AC();
  v46 = v45;
  (*(v69 + 8))(v41, v45);
  v47 = v76;
  v48 = v74;
  v49 = v78;
  (*(v76 + 104))(v74, enum case for WidgetBackgroundStyle.blur(_:), v78);
  v80 = v46;
  v81 = v43;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v64;
  v52 = v70;
  sub_1000045DC();
  (*(v47 + 8))(v48, v49);
  (*(v71 + 8))(v44, v52);
  sub_10000456C();
  v80 = v52;
  v81 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v66;
  v55 = v72;
  sub_1000045CC();

  (*(v73 + 8))(v51, v55);
  v56 = [objc_opt_self() currentDevice];
  [v56 userInterfaceIdiom];

  sub_10000456C();
  v80 = v55;
  v81 = v53;
  swift_getOpaqueTypeConformance2();
  v57 = v75;
  sub_10000458C();

  return (*(v77 + 8))(v54, v57);
}

uint64_t sub_100002E14@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  v2 = sub_1000016C8(&qword_10000C230, &qword_100004C08);

  return _swift_storeEnumTagMultiPayload(a1, v2, 0);
}

uint64_t sub_100002E98@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10000460C();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_1000016C8(&qword_10000C210, &qword_100004BC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v24 - v8;
  v10 = sub_10000450C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_10000466C();
  a1[1] = v15;
  v24[1] = *(sub_1000016C8(&qword_10000C218, &qword_100004BD0) + 44);
  v16 = type metadata accessor for BatteriesAvocadoEntry(0);
  v17 = *(v16 + 28);
  v18 = (v1 + *(v16 + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = sub_10000468C();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v9, v1 + v17, v21);
  (*(v22 + 56))(v9, 0, 1, v21);
  sub_1000044FC();
  sub_1000045FC();
  sub_10000466C();
  type metadata accessor for Utilities.Background();
  sub_1000031E4(&qword_10000C220, &type metadata accessor for BatteryAvocadoArchivableView);
  sub_1000031E4(&qword_10000C228, type metadata accessor for Utilities.Background);
  sub_10000464C();
  (*(v25 + 8))(v6, v26);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000031E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003250(uint64_t a1)
{
  v2 = *(*(sub_10000451C() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10000455C();
}

uint64_t sub_10000331C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000016C8(&qword_10000C160, &unk_100004B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000338C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000033D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100003480()
{
  result = qword_10000C278;
  if (!qword_10000C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C278);
  }

  return result;
}

uint64_t sub_1000034D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001710(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000351C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatteriesAvocadoEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003590()
{
  sub_100001710(&qword_10000C268, &qword_100004CC0);
  sub_100001710(&qword_10000C260, &qword_100004CB8);
  sub_100001710(&qword_10000C258, &qword_100004CB0);
  sub_100001710(&qword_10000C250, &qword_100004CA8);
  sub_100001710(&qword_10000C248, &qword_100004CA0);
  sub_100001710(&qword_10000C0A8, &unk_1000049F0);
  sub_100001710(&qword_10000C0B0, &unk_100004C90);
  sub_1000034D4(&qword_10000C0B8, &qword_10000C0B0, &unk_100004C90);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000037F0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v30[2] = a3;
  v31 = a2;
  v3 = *(*(sub_1000046DC() - 8) + 64);
  __chkstk_darwin();
  v30[1] = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(sub_1000016C8(&qword_10000C160, &unk_100004B20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v30 - v6;
  v8 = sub_10000468C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = sub_1000016C8(&qword_10000C290, &qword_100004D48);
  v13 = *(v30[0] - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = v30 - v15;
  sub_1000016C8(&qword_10000C298, qword_100004D50);
  v17 = type metadata accessor for BatteriesAvocadoEntry(0);
  v18 = *(*(v17 - 1) + 72);
  v19 = (*(*(v17 - 1) + 80) + 32) & ~*(*(v17 - 1) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100004AD0;
  v21 = v20 + v19;
  sub_1000046FC();
  v23 = v22;
  v25 = v24;
  sub_10000470C();
  v26 = sub_10000471C();
  v27 = sub_1000046EC();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  sub_1000044DC();
  sub_100003B94(v7, v21 + v17[5]);
  v28 = (v21 + v17[6]);
  *v28 = v23;
  v28[1] = v25;
  (*(v9 + 32))(v21 + v17[7], v12, v8);
  *(v21 + v17[8]) = v26 & 1;
  sub_1000046CC();
  sub_1000031E4(&qword_10000C288, type metadata accessor for BatteriesAvocadoEntry);
  sub_10000472C();
  v31(v16);
  return (*(v13 + 8))(v16, v30[0]);
}

uint64_t sub_100003B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000016C8(&qword_10000C160, &unk_100004B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003C04(uint64_t a1)
{
  v2 = type metadata accessor for BatteriesAvocadoEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000016C8(&qword_10000C2A0, &qword_100004D90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100003D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000016C8(&qword_10000C2A0, &qword_100004D90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for Utilities.Background()
{
  result = qword_10000C300;
  if (!qword_10000C300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003DDC()
{
  sub_100003E48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100003E48()
{
  if (!qword_10000C310)
  {
    sub_10000451C();
    v0 = sub_10000452C();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C310);
    }
  }
}

uint64_t sub_100003EBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000465C();
  *a1 = result;
  return result;
}

BOOL sub_100003F24(int a1, int a2, int a3)
{
  if (qword_10000C700 == -1)
  {
    v3 = dword_10000C6F0 < a1;
    if (dword_10000C6F0 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_1000044AC();
    a2 = v6;
    a3 = v5;
    v3 = dword_10000C6F0 < a1;
    if (dword_10000C6F0 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_10000C6F4 > a2)
  {
    return 1;
  }

  if (dword_10000C6F4 < a2)
  {
    return 0;
  }

  return dword_10000C6F8 >= a3;
}

uint64_t sub_100003FE4(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10000C708 == -1)
  {
    if (qword_10000C710)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000044C4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10000C710)
    {
      return _availability_version_check();
    }
  }

  if (qword_10000C700 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000044AC();
    a3 = v10;
    a4 = v9;
    v8 = dword_10000C6F0 < v11;
    if (dword_10000C6F0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10000C6F4 > a3)
      {
        return 1;
      }

      if (dword_10000C6F4 >= a3)
      {
        return dword_10000C6F8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10000C6F0 < a2;
  if (dword_10000C6F0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100004178(uint64_t result)
{
  v1 = qword_10000C710;
  if (qword_10000C710)
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
      qword_10000C710 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_10000C6F0, &dword_10000C6F4, &dword_10000C6F8);
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