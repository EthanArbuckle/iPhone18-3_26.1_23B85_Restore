uint64_t sub_10015E21C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015E248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100159598();
  *a1 = result;
  return result;
}

uint64_t sub_10015E2CC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10015D478();
  a1[1] = v2;
}

uint64_t sub_10015E30C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10015B764(v1, v2);
}

uint64_t sub_10015E358()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 104));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10015E3D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10015E444()
{
  type metadata accessor for FilterViewModel.FilterState();
  type metadata accessor for Published();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Array();
    type metadata accessor for Published();
    if (v1 <= 0x3F)
    {
      sub_1001631B4();
      if (v2 <= 0x3F)
      {
        sub_10016320C();
        if (v3 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          type metadata accessor for Array();
          type metadata accessor for Published();
          if (v4 <= 0x3F)
          {
            swift_getAssociatedConformanceWitness();
            type metadata accessor for Set();
            type metadata accessor for Published();
            if (v5 <= 0x3F)
            {
              sub_100163270(319, &qword_100221840);
              if (v6 <= 0x3F)
              {
                sub_100163270(319, qword_100221848);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for FilterViewModel.FilterConfiguration();
                  type metadata accessor for Binding();
                  if (v8 <= 0x3F)
                  {
                    swift_initClassMetadata2();
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

uint64_t sub_10015E7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  v13 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v14 = v13[11];
  v15 = type metadata accessor for DateInterval();
  (*(*(v15 - 8) + 32))(&a8[v14], a4, v15);
  result = sub_10000F618(a5, &a8[v13[12]], &qword_10021F5E0);
  *&a8[v13[13]] = a6;
  *&a8[v13[14]] = a7;
  return result;
}

double sub_10015E890()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10015E9E0(uint64_t a1)
{
  v2 = type metadata accessor for CompactDatePickerConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100164A50(a1, v4);
  return sub_10015EA84(v4);
}

uint64_t sub_10015EA84(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for CompactDatePickerConfiguration();
  __chkstk_darwin(v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 80);
  v7 = v11;
  v8 = *(v3 + 88);
  v12 = v8;
  swift_getKeyPath();
  v10[0] = v7;
  v10[1] = v8;
  swift_getKeyPath();
  sub_100164A50(a1, v6);

  static Published.subscript.setter();
  return sub_100164AB4(a1);
}

uint64_t sub_10015EBC0@<X0>(char *a1@<X8>)
{
  v21 = a1;
  v2 = *v1;
  v20 = type metadata accessor for CompactDatePickerConfiguration() - 8;
  __chkstk_darwin(v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = sub_100009F70(&qword_10021F5E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v24 = *(v2 + 80);
  v15 = v24;
  v25 = *(v2 + 88);
  v16 = v25;
  swift_getKeyPath();
  v22 = v15;
  v23 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(v6 + 16);
  v17(v11, v14, v5);
  sub_10000D52C(v14, &qword_10021F5E0);
  sub_10015E994();
  v17(v9, &v4[*(v20 + 28)], v5);
  sub_100164AB4(v4);
  sub_100106088(v11, v9, v21);
  v18 = *(v6 + 8);
  v18(v9, v5);
  return (v18)(v11, v5);
}

double sub_10015EE5C()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015E948();
  LOBYTE(v1) = v3[*(v1 + 32)];
  sub_100164AB4(v3);
  result = 0.0;
  if ((v1 & 1) == 0)
  {
    return sub_10015EB98() * -0.5;
  }

  return result;
}

double sub_10015EF24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10015EFEC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10015F0A4@<X0>(char *a1@<X8>)
{
  v24 = a1;
  v2 = *v1;
  v23 = sub_100009F70(&qword_10021F5E0) - 8;
  __chkstk_darwin(v23);
  v22 = &v21 - v3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for CompactDatePickerConfiguration();
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015E948();
  v15 = *(v5 + 16);
  v15(v10, &v14[*(v12 + 28)], v4);
  sub_100164AB4(v14);
  v27 = *(v2 + 80);
  v16 = v27;
  v17 = *(v2 + 88);
  v28 = v17;
  swift_getKeyPath();
  v25 = v16;
  v26 = v17;
  swift_getKeyPath();
  v18 = v22;
  static Published.subscript.getter();

  v15(v8, (v18 + *(v23 + 44)), v4);
  sub_10000D52C(v18, &qword_10021F5E0);
  sub_100106088(v10, v8, v24);
  v19 = *(v5 + 8);
  v19(v8, v4);
  return (v19)(v10, v4);
}

void sub_10015F350()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015E948();
  sub_100164AB4(v3);
  sub_10015E994();
  LOBYTE(v1) = v3[*(v1 + 32)];
  sub_100164AB4(v3);
  if ((v1 & 1) == 0)
  {
    sub_10015EF10();
  }
}

BOOL sub_10015F430(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for Date();
  v22 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = sub_100161D54();
  a1(v14);
  v15 = *(v8 + 8);
  v15(v13, v7);
  v16 = sub_100161A9C(v11);
  v17 = v21;
  a1(v16);
  v15(v11, v7);
  sub_100165340(&qword_10021FDF8, &type metadata accessor for Date);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v22 + 8);
  v19(v17, v2);
  v19(v6, v2);
  return (v18 & 1) == 0;
}

BOOL sub_10015F69C()
{
  sub_10015F768();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = Collection.isEmpty.getter();

  return (v0 & 1) == 0;
}

uint64_t sub_10015F77C(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v23 = type metadata accessor for Optional();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v22 - v12;
  v14 = sub_10015FE70();
  if (v14)
  {
    __chkstk_darwin(v14);
    *(&v22 - 2) = v4;
    *(&v22 - 1) = v3;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v22 - 2) = v4;
    *(&v22 - 1) = v3;
    swift_getKeyPath();
    v25 = KeyPath;
    v16 = static Published.subscript.modify();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    (*(v11 + 8))(v13, v23);
    v16(v26, 0);
  }

  else
  {
    v17 = v24;
    v18 = (*(v24 + 16))(v8, a1, AssociatedTypeWitness);
    __chkstk_darwin(v18);
    *(&v22 - 2) = v4;
    *(&v22 - 1) = v3;
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    *(&v22 - 2) = v4;
    *(&v22 - 1) = v3;
    swift_getKeyPath();
    v25 = v19;
    v20 = static Published.subscript.modify();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    (*(v17 + 8))(v10, AssociatedTypeWitness);
    v20(v26, 0);
  }

  return sub_10015FF70();
}

void sub_10015FB7C(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  sub_100009F70(qword_100218F38);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001AD8A0;
  v11 = sub_100160DE4();
  *(v10 + 56) = &type metadata for AnalyticsString;
  *(v10 + 64) = &off_10021CBD0;
  *(v10 + 32) = 0;
  *(v10 + 40) = v11;
  *(v10 + 48) = v12;
  *(v10 + 96) = &type metadata for AnalyticsPageName;
  *(v10 + 104) = &off_10021CBA8;
  *(v10 + 72) = 12;
  *(v10 + 136) = &type metadata for AnalyticsModuleName;
  *(v10 + 144) = &off_10021CC30;
  *(v10 + 112) = a1;
  *(v10 + 176) = &type metadata for AnalyticsModuleAction;
  *(v10 + 184) = &off_10021CC08;
  *(v10 + 152) = a2;
  *(v10 + 160) = a3;
  *(v10 + 168) = a4;
  if (*(a5 + 72))
  {
    v13 = *(a5 + 64);
    v14 = *(a5 + 72);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v28 = &type metadata for AnalyticsString;
  v29 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v26 = v13;
  v27 = v14;
  sub_1000109A4(a2, a3, a4);
  v31 = v10;
  v15 = *(v10 + 16);
  v16 = *(v10 + 24);

  if (v15 >= v16 >> 1)
  {
    v10 = sub_1001666DC((v16 > 1), v15 + 1, 1, v10);
    v31 = v10;
  }

  v17 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  sub_1000EB0D0(v15, v19, &v31, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v21 = String._bridgeToObjectiveC()();
  v22 = swift_allocObject();
  v22[2] = 0xD00000000000001ELL;
  v22[3] = 0x80000001001BDDE0;
  v22[4] = v10;
  v29 = sub_100010AAC;
  v30 = v22;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000DCA40;
  v28 = &unk_100210E60;
  v23 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v23);
}

uint64_t sub_10015FE70()
{
  sub_10015FF3C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = Set.contains(_:)();

  return v0 & 1;
}

uint64_t sub_10015FF70()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v10[2] = v1;
  v10[3] = v2;
  swift_getKeyPath();
  v10[0] = v1;
  v10[1] = v2;
  swift_getKeyPath();
  LOBYTE(v11) = 0;

  static Published.subscript.setter();
  static Array._allocateUninitialized(_:)();
  sub_100161800();
  sub_100161178();
  v7 = *(v6 + 1);
  v8 = *(v4 + 8);

  v8(v6, v3);
  v11 = v7;
  type metadata accessor for Array();
  swift_getWitnessTable();
  _ArrayProtocol.filter(_:)();
  return sub_100161800();
}

uint64_t sub_100160174()
{
  if (sub_1001618B8())
  {
    return 1;
  }

  return sub_100161954();
}

uint64_t sub_1001601AC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10016027C(uint64_t a1)
{
  v2 = sub_100160DE4();
  sub_1000DCEDC(v2, v3, 12, a1);
}

uint64_t sub_1001602C4()
{
  v1 = *v0;
  v2 = sub_100009F70(&qword_10021F5E0);
  __chkstk_darwin(v2 - 8);
  v44 = &v36 - v3;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  v8 = __chkstk_darwin(v6);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v42 = &v36 - v16;
  v47 = type metadata accessor for DateInterval();
  v17 = *(v47 - 8);
  v18 = __chkstk_darwin(v47);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v36 - v21;
  if (sub_100161F04())
  {
    sub_100161D54();
    if (!sub_100161F04())
    {
      goto LABEL_3;
    }

LABEL_6:
    v38 = sub_1001621E4();
    if (!sub_100161F04())
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_100161A9C(v22);
  if (sub_100161F04())
  {
    goto LABEL_6;
  }

LABEL_3:
  v38 = 0;
  if (!sub_100161F04())
  {
LABEL_4:
    v23 = static Array._allocateUninitialized(_:)();
    goto LABEL_8;
  }

LABEL_7:
  v23 = sub_100161368();
LABEL_8:
  v37 = v23;
  v46 = v22;
  v24 = sub_100161F04();
  v45 = v4;
  v43 = v5;
  if (v24)
  {
    v36 = sub_10015FF3C();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v26 = static Array._allocateUninitialized(_:)();
    if (Array._getCount()())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = sub_100164D7C(v26, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
    }

    else
    {

      v36 = &_swiftEmptySetSingleton;
    }
  }

  sub_100161178();
  v28 = *(v15 + 1);
  v29 = *(v40 + 8);

  v30 = v39;
  v29(v15, v39);
  (*(v17 + 16))(v20, v46, v47);
  sub_100161178();
  v31 = v44;
  sub_10000D58C(&v12[*(v30 + 48)], v44, &qword_10021F5E0);
  v29(v12, v30);
  v32 = v41;
  sub_100161178();
  v33 = *&v32[*(v30 + 52)];

  v29(v32, v30);
  v34 = v42;
  sub_10015E7B8(v38, v28, v37, v20, v31, v33, v36, v42);
  sub_10016516C(v34);
  v29(v34, v30);
  return (*(v17 + 8))(v46, v47);
}

uint64_t sub_100160734()
{
  if (sub_1001618B8())
  {
    sub_100009F70(&qword_100219EF8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001AEB90;
    sub_100161368();
    v2 = Array.count.getter();

    *(v1 + 56) = &type metadata for Int;
    *(v1 + 64) = &protocol witness table for Int;
    *(v1 + 32) = v2;
    return String.init(format:_:)();
  }

  else
  {
    if (sub_100161954())
    {
      v4 = *(v0 + 32);
    }

    else
    {
      v4 = *(v0 + 16);
    }

    return v4;
  }
}

uint64_t sub_10016082C()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v31 = *(v2 - 8);
  v3 = v31;
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v5;
  v29 = sub_100009F70(&qword_10021F5E0) - 8;
  __chkstk_darwin(v29);
  v7 = &v24 - v6;
  v46 = *(v1 + 80);
  v8 = v46;
  v9 = *(v1 + 88);
  v47 = v9;
  swift_getKeyPath();
  v44 = v8;
  v45 = v9;
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = *(v3 + 16);
  v28 = v3 + 16;
  v10 = v5;
  v11 = v2;
  v27(v10, v7, v2);
  sub_10000D52C(v7, &qword_10021F5E0);
  v42 = v8;
  v43 = v9;
  swift_getKeyPath();
  v40 = v8;
  v41 = v9;
  swift_getKeyPath();
  v12 = static Published.subscript.modify();
  v14 = v13;
  v26 = type metadata accessor for CompactDatePickerConfiguration();
  v15 = *(v26 + 20);
  v16 = *(v31 + 40);
  v31 += 40;
  v25 = v16;
  v16(v14 + v15, v30, v11);
  v12(v48, 0);

  v38 = v8;
  v39 = v9;
  swift_getKeyPath();
  v36 = v8;
  v37 = v9;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v30;
  v27(v30, &v7[*(v29 + 44)], v11);
  sub_10000D52C(v7, &qword_10021F5E0);
  v34 = v8;
  v35 = v9;
  swift_getKeyPath();
  v32 = v8;
  v33 = v9;
  swift_getKeyPath();
  v18 = static Published.subscript.modify();
  v25(v19 + *(v26 + 20), v17, v11);
  v18(v48, 0);

  static Array._allocateUninitialized(_:)();
  sub_100161800();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_100164D7C(v21, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  }

  return sub_100161800();
}

Swift::Int sub_100160D20(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100160D9C()
{
  Hasher.init(_seed:)();
  sub_100160CF8(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100160DE4()
{
  v1 = *(*v0 + 80);
  v20 = *(*(*v0 + 88) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v4 = &v20 - v3;
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  sub_100161178();
  v13 = *(v8 + 1);
  v14 = *(v6 + 8);

  v14(v8, v5);
  v23 = v13;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v15 = *(v1 - 8);
  if ((*(v15 + 48))(v12, 1, v1) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return ResourceID.init(stringLiteral:)();
  }

  else
  {
    (*(v20 + 176))(v1, v20);
    (*(v15 + 8))(v12, v1);
    v17 = v22;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = (*(AssociatedConformanceWitness + 40))(v17, AssociatedConformanceWitness);
    (*(v21 + 8))(v4, v17);
    return v19;
  }
}

uint64_t sub_100161178()
{
  v1 = *v0;
  type metadata accessor for FilterViewModel.FilterConfiguration();
  v2 = type metadata accessor for Binding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, &v0[*(v1 + 200)], v2);
  Binding.wrappedValue.getter();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001612B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10016137C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100161430(uint64_t a1)
{
  v2 = type metadata accessor for CompactDatePickerConfiguration();
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100164A50(a1, &v9 - v6);
  sub_100164A50(v7, v5);
  Published.init(initialValue:)();
  sub_100164AB4(a1);
  return sub_100164AB4(v7);
}

uint64_t sub_10016150C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021F5E0);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10000D58C(a1, &v9 - v6, &qword_10021F5E0);
  sub_10000D58C(v7, v5, &qword_10021F5E0);
  Published.init(initialValue:)();
  sub_10000D52C(a1, &qword_10021F5E0);
  return sub_10000D52C(v7, &qword_10021F5E0);
}

uint64_t sub_100161638()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1001616EC(uint64_t a1)
{
  v3 = a1;
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Array();
  return sub_1001639D8(&v3, v1);
}

uint64_t sub_100161758(uint64_t a1)
{
  v3 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for Set();
  return sub_1001639D8(&v3, v1);
}

uint64_t sub_100161800()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

BOOL sub_1001618B8()
{
  sub_100161368();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = Collection.isEmpty.getter();

  return (v0 & 1) == 0;
}

uint64_t sub_100161954()
{
  if (sub_100161FC0() && (sub_100161368(), type metadata accessor for Array(), swift_getWitnessTable(), v0 = Collection.isEmpty.getter(), , (v0 & 1) != 0))
  {
    v1 = 1;
  }

  else if (sub_100161FC0() && sub_10016211C())
  {
    sub_100161368();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v1 = Collection.isEmpty.getter();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100161A9C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = *v1;
  v22 = type metadata accessor for Date();
  v3 = *(v22 - 8);
  v4 = __chkstk_darwin(v22);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v21 = &v21 - v6;
  v8 = sub_100009F70(&qword_10021F5E0);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v31 = *(v2 + 80);
  v15 = v31;
  v32 = *(v2 + 88);
  v16 = v32;
  swift_getKeyPath();
  v29 = v15;
  v30 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(v3 + 16);
  v18 = v7;
  v19 = v22;
  v17(v18, v14, v22);
  sub_10000D52C(v14, &qword_10021F5E0);
  v27 = v15;
  v28 = v16;
  swift_getKeyPath();
  v25 = v15;
  v26 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17(v23, &v12[*(v9 + 44)], v19);
  sub_10000D52C(v12, &qword_10021F5E0);
  return DateInterval.init(start:end:)();
}

uint64_t sub_100161D54()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CompactDatePickerConfiguration();
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_10015E948();
  v14 = *(v1 + 16);
  v14(v6, &v13[*(v8 + 28)], v0);
  sub_100164AB4(v13);
  sub_10015E994();
  v14(v4, &v11[*(v8 + 28)], v0);
  sub_100164AB4(v11);
  return DateInterval.init(start:end:)();
}

BOOL sub_100161F04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return (v1 & 1) == 0;
}

BOOL sub_100161FC0()
{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_100161D54();
  sub_100161A9C(v4);
  sub_100165340(&qword_100221980, &type metadata accessor for DateInterval);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

BOOL sub_10016211C()
{
  sub_10015FF3C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = Set.isEmpty.getter();

  return (v0 & 1) == 0;
}

uint64_t sub_1001621E4()
{
  v0 = sub_10015F430(&DateInterval.start.getter);
  v1 = sub_10015F430(&DateInterval.end.getter);
  v2 = 1;
  if (v0)
  {
    v2 = 2;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v0;
  }

  sub_10015FF3C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = Set.count.getter();

  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001622FC(uint64_t a1, void *a2)
{
  v85 = a1;
  v3 = *a2;
  v81 = type metadata accessor for Calendar.Component();
  v86 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for CompactDatePickerConfiguration() - 8;
  __chkstk_darwin(v82);
  v77 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Date();
  v87 = *(v73 - 8);
  v6 = __chkstk_darwin(v73);
  v72 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v53 - v8;
  v9 = type metadata accessor for DateInterval();
  v62 = v9;
  v83 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v3 + 88);
  v12 = *(v74 + 8);
  v13 = *(v3 + 80);
  v76 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v17 = v53 - v16;
  v80 = type metadata accessor for Calendar();
  v84 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v19 = *(v12 + 168);
  v68 = v12 + 168;
  v69 = v19;
  v78 = v13;
  v67 = v12;
  v19(v13, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = v11;
  v59 = AssociatedTypeWitness;
  sub_1000FBF34(AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v20 = *(v15 + 8);
  v64 = v15 + 8;
  v65 = v20;
  v20(v17, AssociatedTypeWitness);
  v21 = v71;
  DateInterval.start.getter();
  v22 = *(v83 + 8);
  v83 += 8;
  v63 = v22;
  v22(v11, v9);
  v23 = v77;
  sub_10015E948();
  v24 = *(v82 + 28);
  v25 = *(v87 + 16);
  v60 = v87 + 16;
  v61 = v25;
  v27 = v72;
  v26 = v73;
  v25(v72, v23 + v24, v73);
  sub_100164AB4(v23);
  v58 = enum case for Calendar.Component.day(_:);
  v28 = v86;
  v29 = *(v86 + 104);
  v53[1] = v86 + 104;
  v57 = v29;
  v30 = v79;
  v31 = v81;
  v29(v79);
  v32 = v27;
  v33 = v75;
  v70 = Calendar.compare(_:to:toGranularity:)();
  v34 = *(v28 + 8);
  v86 = v28 + 8;
  v56 = v34;
  v34(v30, v31);
  v35 = *(v87 + 8);
  v87 += 8;
  v35(v27, v26);
  v36 = v21;
  v37 = v26;
  v35(v21, v26);
  v38 = *(v84 + 8);
  v84 += 8;
  v55 = v38;
  v38(v33, v80);
  static Calendar.current.getter();
  v69(v78, v67);
  v39 = v54;
  v40 = v59;
  sub_1000FBF34(v59, AssociatedConformanceWitness, v54);
  v65(v17, v40);
  v41 = v36;
  DateInterval.start.getter();
  v63(v39, v62);
  v42 = v77;
  sub_10015E994();
  v61(v32, v42 + *(v82 + 28), v37);
  sub_100164AB4(v42);
  v43 = v79;
  v44 = v81;
  v57(v79, v58, v81);
  v45 = v43;
  v46 = v75;
  v47 = Calendar.compare(_:to:toGranularity:)();
  v56(v45, v44);
  v35(v32, v37);
  v35(v41, v37);
  v55(v46, v80);
  v49 = v70 < 2 && (v47 + 1) < 2;
  v88 = (*(v74 + 96))(v78, v74);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  Set.init<A>(_:)();
  sub_10015FF3C();
  Set.intersection(_:)();

  v50 = Set.isEmpty.getter();

  if (!sub_100161FC0() || (v51 = v49, sub_10016211C()))
  {
    v51 = v50 ^ 1;
    if (sub_100161FC0() || !sub_10016211C())
    {
      v51 &= v49;
    }
  }

  return v51 & 1;
}

uint64_t sub_100162B98()
{

  v1 = *(*v0 + 120);
  type metadata accessor for FilterViewModel.FilterState();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 128);
  type metadata accessor for Array();
  v4 = type metadata accessor for Published();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 136);
  v6 = sub_100009F70(&qword_100221950);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + *(*v0 + 144), v6);
  v8 = *(*v0 + 152);
  v9 = sub_100009F70(&qword_100221958);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 160);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  v11 = type metadata accessor for Published();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 168);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  v13 = type metadata accessor for Published();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = *(*v0 + 176);
  v15 = sub_100009F70(&qword_100221960);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = *(*v0 + 184);
  v17 = sub_100009F70(&qword_100221968);
  v18 = *(*(v17 - 8) + 8);
  v18(v0 + v16, v17);
  v18(v0 + *(*v0 + 192), v17);
  v19 = *(*v0 + 200);
  type metadata accessor for FilterViewModel.FilterConfiguration();
  v20 = type metadata accessor for Binding();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);

  return v0;
}

uint64_t sub_10016312C()
{
  sub_100162B98();

  return swift_deallocClassInstance();
}

void sub_1001631B4()
{
  if (!qword_100221830)
  {
    type metadata accessor for CompactDatePickerConfiguration();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100221830);
    }
  }
}

void sub_10016320C()
{
  if (!qword_100221838)
  {
    sub_10000B3DC(&qword_10021F5E0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100221838);
    }
  }
}

void sub_100163270(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1001632DC()
{
  type metadata accessor for Array();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DateInterval();
    if (v1 <= 0x3F)
    {
      sub_10011E490();
      if (v2 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        type metadata accessor for Array();
        if (v3 <= 0x3F)
        {
          swift_getAssociatedConformanceWitness();
          type metadata accessor for Set();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100163430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_10021F5E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100163574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_10021F5E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001636C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100163758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_100009F70(&qword_10021F5E0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v14 - v11;
  sub_10000D58C(a1, v14 - v11, &qword_10021F5E0);
  v14[2] = v5;
  v14[3] = v6;
  swift_getKeyPath();
  v14[0] = v5;
  v14[1] = v6;
  swift_getKeyPath();
  sub_10000D58C(v12, v10, &qword_10021F5E0);

  static Published.subscript.setter();
  return sub_10000D52C(v12, &qword_10021F5E0);
}

uint64_t sub_1001638A4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100163944()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001639D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_100163AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100009F70(&qword_100221970);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  result = sub_10000F618(v4, &v20 - v10, &qword_100221978);
  v13 = *(v9 + 44);
  *&v11[v13] = 0;
  if (!a2)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    sub_10000F618(v11, a1, &qword_100221970);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v21 = a1;
    v14 = 0;
    v15 = *v11;
    a1 = a3 - 1;
    while (1)
    {
      if (v15 == v14)
      {
        a3 = v15;
        a1 = v21;
        goto LABEL_14;
      }

      if (v14 >= v15)
      {
        break;
      }

      v16 = v14 + 1;
      v17 = *(sub_100009F70(&qword_100221978) + 28);
      *&v11[v13] = v14 + 1;
      v18 = type metadata accessor for GridItem();
      v19 = *(v18 - 8);
      result = (*(v19 + 16))(a2, &v11[v17], v18);
      if (a1 == v14)
      {
        a3 = v20;
        a1 = v21;
        goto LABEL_14;
      }

      a2 += *(v19 + 72);
      ++v14;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100163C90(uint64_t a1)
{
  v2 = v1;
  v104 = a1;
  countAndFlagsBits = v1->_countAndFlagsBits;
  v4 = sub_100009F70(&qword_10021F5E0);
  __chkstk_darwin(v4 - 8);
  v107 = &v103 - v5;
  v105 = type metadata accessor for CompactDatePickerConfiguration();
  __chkstk_darwin(v105);
  v106 = (&v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(countAndFlagsBits + 80);
  v121 = *(countAndFlagsBits + 88);
  v122 = v7;
  v8 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v109 = *(v8 - 8);
  v110 = v8;
  __chkstk_darwin(v8);
  v108 = &v103 - v9;
  v10 = sub_100009F70(&qword_100221970);
  __chkstk_darwin(v10 - 8);
  v120 = &v103 - v11;
  v12 = type metadata accessor for GridItem.Size();
  v117 = *(v12 - 8);
  v118 = v12;
  __chkstk_darwin(v12);
  v116 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_100009F70(&qword_100221978) - 8;
  v14 = __chkstk_darwin(v115);
  v119 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v103 - v16;
  v112 = sub_100009F70(&qword_100221968);
  v17 = *(v112 - 8);
  __chkstk_darwin(v112);
  v19 = &v103 - v18;
  v111 = sub_100009F70(&qword_100221960);
  v20 = *(v111 - 8);
  __chkstk_darwin(v111);
  v22 = &v103 - v21;
  v23 = objc_opt_self();
  v24 = [v23 mainBundle];
  v25._countAndFlagsBits = 0xD000000000000024;
  v113 = 0xD000000000000024;
  v126._object = 0xE000000000000000;
  v25._object = 0x80000001001C1BC0;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v126._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v126);

  v2[1] = v27;
  v28 = [v23 mainBundle];
  v127._object = 0xE000000000000000;
  v29._object = 0x80000001001C1BF0;
  v29._countAndFlagsBits = 0xD000000000000025;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v127._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v127);

  v2[2] = v31;
  v32 = [v23 mainBundle];
  v128._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD00000000000002CLL;
  v33._object = 0x80000001001C1C20;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v128._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v128);

  v2[3] = v35;
  v36 = *(v2->_countAndFlagsBits + 176);
  v123 = 0;
  v124 = 0u;
  Published.init(initialValue:)();
  (*(v20 + 32))(v2 + v36, v22, v111);
  v37 = *(v2->_countAndFlagsBits + 184);
  v123._countAndFlagsBits = 0;
  Published.init(initialValue:)();
  v38 = *(v17 + 32);
  v39 = v112;
  v38(v2 + v37, v19, v112);
  v40 = *(v2->_countAndFlagsBits + 192);
  v123._countAndFlagsBits = 0;
  Published.init(initialValue:)();
  v38(v2 + v40, v19, v39);
  v41 = v2 + *(v2->_countAndFlagsBits + 208);
  *v41 = LocalizedStringKey.init(stringLiteral:)();
  *(v41 + 1) = v42;
  v41[16] = v43 & 1;
  *(v41 + 3) = v44;
  v45 = (&v2->_countAndFlagsBits + *(v2->_countAndFlagsBits + 216));
  v46 = v23;
  v47 = [v23 mainBundle];
  v129._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD000000000000030;
  v48._object = 0x80000001001C1C80;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v129._countAndFlagsBits = 0;
  v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, v129);

  v123 = v50;
  sub_100027068();
  v51 = StringProtocol.localizedUppercase.getter();
  v53 = v52;

  *v45 = v51;
  v45[1] = v53;
  v54 = v2 + *(v2->_countAndFlagsBits + 224);
  *v54 = LocalizedStringKey.init(stringLiteral:)();
  *(v54 + 1) = v55;
  v54[16] = v56 & 1;
  *(v54 + 3) = v57;
  v58 = v2 + *(v2->_countAndFlagsBits + 232);
  *v58 = LocalizedStringKey.init(stringLiteral:)();
  *(v58 + 1) = v59;
  v58[16] = v60 & 1;
  *(v58 + 3) = v61;
  v62 = v2 + *(v2->_countAndFlagsBits + 240);
  *v62 = LocalizedStringKey.init(stringLiteral:)();
  *(v62 + 1) = v63;
  v62[16] = v64 & 1;
  *(v62 + 3) = v65;
  v66 = v2 + *(v2->_countAndFlagsBits + 248);
  *v66 = LocalizedStringKey.init(stringLiteral:)();
  *(v66 + 1) = v67;
  v66[16] = v68 & 1;
  *(v66 + 3) = v69;
  v70 = v2 + *(v2->_countAndFlagsBits + 256);
  *v70 = LocalizedStringKey.init(stringLiteral:)();
  *(v70 + 1) = v71;
  v70[16] = v72 & 1;
  *(v70 + 3) = v73;
  v75 = v116;
  v74 = v117;
  *v116 = xmmword_1001AF670;
  (*(v74 + 104))(v75, enum case for GridItem.Size.flexible(_:), v118);
  v76 = v114;
  GridItem.init(_:spacing:alignment:)();
  *v76 = 2;
  v77 = sub_100166CEC(2, 0);
  v78 = *(type metadata accessor for GridItem() - 8);
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  sub_10000D58C(v76, v119, &qword_100221978);
  v80 = v120;
  v81 = sub_100163AC8(v120, &v77[v79], 2);
  sub_10000D52C(v80, &qword_100221970);
  result = sub_10000D52C(v76, &qword_100221978);
  if (v81 == 2)
  {
    *(&v2->_countAndFlagsBits + *(v2->_countAndFlagsBits + 264)) = v77;
    v83 = *(v2->_countAndFlagsBits + 200);
    v84 = v110;
    v85 = type metadata accessor for Binding();
    (*(*(v85 - 8) + 16))(v2 + v83, v104, v85);
    v86 = v108;
    Binding.wrappedValue.getter();
    LOBYTE(v85) = *v86 < 1;
    swift_beginAccess();
    LOBYTE(v125[0]) = v85;
    v87 = type metadata accessor for FilterViewModel.FilterState();
    sub_1001639D8(v125, v87);
    swift_endAccess();
    v88 = v86[2];
    swift_beginAccess();

    v125[0] = v88;
    v89 = type metadata accessor for Array();
    sub_1001639D8(v125, v89);
    swift_endAccess();
    v90 = [v46 mainBundle];
    v130._object = 0xE000000000000000;
    v91._object = 0x80000001001C1D60;
    v91._countAndFlagsBits = 0xD000000000000025;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    v130._countAndFlagsBits = 0;
    v93 = NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, v130);

    v94 = v105;
    v95 = v106;
    DateInterval.start.getter();
    *v95 = v93;
    *(&v95->_countAndFlagsBits + *(v94 + 24)) = 0;
    swift_beginAccess();
    sub_100161430(v95);
    swift_endAccess();
    v96 = [v46 mainBundle];
    v97._countAndFlagsBits = 0xD000000000000023;
    v131._object = 0xE000000000000000;
    v97._object = 0x80000001001C1D90;
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    v131._countAndFlagsBits = 0;
    v99 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v131);

    DateInterval.end.getter();
    *v95 = v99;
    *(&v95->_countAndFlagsBits + *(v94 + 24)) = 0;
    swift_beginAccess();
    sub_100161430(v95);
    swift_endAccess();
    v100 = v107;
    sub_10000D58C(v86 + *(v84 + 48), v107, &qword_10021F5E0);
    swift_beginAccess();
    sub_10016150C(v100);
    swift_endAccess();
    swift_beginAccess();

    sub_1001616EC(v101);
    swift_endAccess();
    swift_beginAccess();

    sub_100161758(v102);
    swift_endAccess();
    (*(v109 + 8))(v86, v84);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100164A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactDatePickerConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100164AB4(uint64_t a1)
{
  v2 = type metadata accessor for CompactDatePickerConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100164B10()
{

  return swift_deallocObject();
}

uint64_t sub_100164B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100164B68(uint64_t a1@<X8>)
{
  *a1 = sub_10015E890();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_100164BD0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100164BDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100161368();
  *a1 = result;
  return result;
}

uint64_t sub_100164C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015FF3C();
  *a1 = result;
  return result;
}

uint64_t sub_100164D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v38 - v11;
  v39 = v12;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v43 = Array._getCount()();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = v15;
    v23 = -1 << v15[32];
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *&v49[8 * (v24 >> 6)];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *&v49[8 * (v24 >> 6)];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *&v49[8 * v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10016516C(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  (*(v9 + 16))(&v13 - v10, &v1[*(v3 + 200)], v8);
  (*(v5 + 16))(v7, a1, v4);
  Binding.wrappedValue.setter();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100165340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100165388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015F768();
  *a1 = result;
  return result;
}

void *sub_1001654F8()
{
  v0 = type metadata accessor for Song();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_100009F70(&qword_100221AB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_100221AB8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_100221AC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.topSongs.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_10000D52C(v14, &qword_100221AC0);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000D1EC(&qword_100221AC8, &qword_100221AB0);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000D1EC(&qword_100221AD0, &qword_100221AB0);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = &_swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100166980(0, v15[2] + 1, 1, v15, &qword_100221AD8, &unk_1001BAE18, &type metadata accessor for Song);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_100166980(v23 > 1, v24 + 1, 1, v15, &qword_100221AD8, &unk_1001BAE18, &type metadata accessor for Song);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_10000D52C(v11, &qword_100221AB8);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

void *sub_100165A08()
{
  v0 = type metadata accessor for Playlist();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_100009F70(&qword_100221A80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_100221A88);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_100221A90);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.featuredPlaylists.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_10000D52C(v14, &qword_100221A90);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000D1EC(&qword_100221A98, &qword_100221A80);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000D1EC(&qword_100221AA0, &qword_100221A80);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = &_swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100166980(0, v15[2] + 1, 1, v15, &qword_100221AA8, &unk_1001BADF8, &type metadata accessor for Playlist);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_100166980(v23 > 1, v24 + 1, 1, v15, &qword_100221AA8, &unk_1001BADF8, &type metadata accessor for Playlist);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_10000D52C(v11, &qword_100221A88);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

void *sub_100165F18()
{
  v0 = type metadata accessor for Album();
  v33 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v32 = &v26 - v4;
  v5 = sub_100009F70(&qword_100221A50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_100221A58);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_100221A60);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  Artist.featuredAlbums.getter();
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_10000D52C(v14, &qword_100221A60);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v14;
    v27 = v6;
    (*(v6 + 16))(v8, v14, v5);
    sub_10000D1EC(&qword_100221A68, &qword_100221A50);
    dispatch thunk of Sequence.makeIterator()();
    v16 = *(v9 + 36);
    v17 = sub_10000D1EC(&qword_100221A70, &qword_100221A50);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v16] == v34[0])
    {
      v15 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v19 = v32;
      v28 = (v33 + 16);
      v20 = (v33 + 32);
      v15 = &_swiftEmptyArrayStorage;
      v30 = v16;
      v31 = v0;
      v29 = v17;
      do
      {
        v21 = dispatch thunk of Collection.subscript.read();
        (*v28)(v19);
        v21(v34, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v22 = *v20;
        (*v20)(v3, v19, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100166980(0, v15[2] + 1, 1, v15, &qword_100221A78, &unk_1001BADD8, &type metadata accessor for Album);
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          v15 = sub_100166980(v23 > 1, v24 + 1, 1, v15, &qword_100221A78, &unk_1001BADD8, &type metadata accessor for Album);
        }

        v15[2] = v24 + 1;
        v25 = v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v0 = v31;
        v22(v25, v3, v31);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v11[v30] != v34[0]);
    }

    sub_10000D52C(v11, &qword_100221A58);
    (*(v27 + 8))(v26, v5);
  }

  return v15;
}

uint64_t sub_100166438(uint64_t a1)
{
  result = sub_100166694(&qword_1002219F0, &type metadata accessor for Artist);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001664D8()
{
  Artist.id.getter();

  return ResourceID.init(_:)();
}

uint64_t sub_100166504()
{
  sub_100009F70(&qword_100221A48);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();
}

uint64_t sub_100166610(uint64_t a1)
{
  *(a1 + 8) = sub_100166694(&qword_100221A38, &type metadata accessor for Artist);
  result = sub_100166694(&qword_100221A40, &type metadata accessor for Artist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100166694(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1001666DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009F70(qword_100218F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100009F70(&qword_100221AE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10016684C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(qword_100220E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100166980(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009F70(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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

char *sub_100166B5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(&qword_100220E08);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100166C68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100009F70(qword_100220E10);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_100166D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100009F70(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size_0(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100166E4C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100218D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100166F1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppModule()
{
  result = qword_100221B48;
  if (!qword_100221B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100167018()
{
  type metadata accessor for AppViewModel();
  if (v0 <= 0x3F)
  {
    sub_1001670E4();
    if (v1 <= 0x3F)
    {
      sub_10000B304();
      if (v2 <= 0x3F)
      {
        sub_10000E648();
        if (v3 <= 0x3F)
        {
          sub_100050558();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001670E4()
{
  if (!qword_100221B58)
  {
    sub_10000B3DC(&qword_100219F00);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100221B58);
    }
  }
}

uint64_t sub_100167164()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (v5)
  {
    if (*(v5 + 88) && *(v5 + 80) == 1)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      v9 = v0 + *(type metadata accessor for AppModule() + 32);
      v10 = *v9;
      if (*(v9 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v11 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v10, 0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v10) = v14[15];
      }

      v12 = v10 ^ 1;
      return v12 & 1;
    }

LABEL_11:
    v12 = 0;
    return v12 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10016A208(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001673E8@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for AppModule();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v75 = v3;
  v76 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009F70(&qword_100221B98);
  __chkstk_darwin(v4 - 8);
  v6 = &v71 - v5;
  v7 = sub_100009F70(&qword_100221BA0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v71 - v9;
  v11 = sub_100009F70(&qword_100221BA8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v15 = sub_100009F70(&qword_100221BB0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v71 = &v71 - v17;
  v72 = sub_100009F70(&qword_100221BB8);
  __chkstk_darwin(v72);
  v73 = &v71 - v18;
  v19 = static HorizontalAlignment.leading.getter();
  v20 = 0x4024000000000000;
  if (*(*v1 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail))
  {
    v20 = 0;
  }

  *v6 = v19;
  *(v6 + 1) = v20;
  v6[16] = 0;
  v21 = sub_100009F70(&qword_100221BC0);
  sub_100167970(v1, &v6[*(v21 + 44)]);
  v22 = static Edge.Set.leading.getter();
  sub_100167164();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10000F618(v6, v10, &qword_100221B98);
  v31 = &v10[*(v8 + 44)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10000F618(v10, v14, &qword_100221BA0);
  v41 = &v14[*(v12 + 44)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = static Edge.Set.bottom.getter();
  v43 = v71;
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10000F618(v14, v43, &qword_100221BA8);
  v52 = v43 + *(v16 + 44);
  *v52 = v42;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  v53 = static SafeAreaRegions.container.getter();
  sub_100009F70(&qword_100218DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v55 = static Edge.Set.horizontal.getter();
  *(inited + 32) = v55;
  v56 = static Edge.Set.bottom.getter();
  *(inited + 33) = v56;
  v57 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v56)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  v58 = static Alignment.center.getter();
  v60 = v59;
  v61 = v43;
  v62 = v73;
  sub_10000F618(v61, v73, &qword_100221BB0);
  v63 = v62 + *(v72 + 36);
  *v63 = v53;
  *(v63 + 8) = v57;
  *(v63 + 16) = v58;
  *(v63 + 24) = v60;
  v64 = v76;
  sub_10016983C(v1, v76);
  v65 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v66 = swift_allocObject();
  sub_1000D3274(v64, v66 + v65);
  v67 = sub_100009F70(&qword_100221BC8);
  v68 = v77;
  v69 = (v77 + *(v67 + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v69 = &unk_1001BAED0;
  v69[1] = v66;
  return sub_10000F618(v62, v68, &qword_100221BB8);
}

uint64_t sub_100167970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = sub_100009F70(&qword_100218DA8);
  __chkstk_darwin(v3 - 8);
  v153 = &v144 - v4;
  v152 = sub_100009F70(&qword_100218DB0);
  v5 = __chkstk_darwin(v152);
  v172 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v151 = &v144 - v8;
  __chkstk_darwin(v7);
  v171 = &v144 - v9;
  v150 = sub_100009F70(&qword_100221BD8);
  v10 = __chkstk_darwin(v150);
  v155 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v144 - v12;
  v157 = type metadata accessor for AccessibilityTraits();
  v147 = *(v157 - 8);
  __chkstk_darwin(v157);
  v145 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009F70(&qword_1002197C0);
  __chkstk_darwin(v14 - 8);
  v148 = &v144 - v15;
  v146 = sub_100009F70(&qword_100221BE0);
  __chkstk_darwin(v146);
  v158 = &v144 - v16;
  v173 = sub_100009F70(&qword_100221BE8);
  __chkstk_darwin(v173);
  v159 = &v144 - v17;
  v18 = sub_100009F70(&qword_100221BF0);
  v19 = __chkstk_darwin(v18 - 8);
  v169 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v174 = &v144 - v21;
  v154 = a1;
  v22 = *a1;
  v160 = OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail;
  v161 = v22;
  if (*(v22 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail) == 1)
  {

    v23 = Text.init(_:tableName:bundle:comment:)();
    v25 = v24;
    v27 = v26;
    static Font.footnote.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v28 = Text.font(_:)();
    v30 = v29;
    v32 = v31;

    sub_10000D60C(v23, v25, v27 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v189 = qword_100230570;

    *&v167 = Text.foregroundStyle<A>(_:)();
    *(&v167 + 1) = v33;
    v35 = v34;
    v168 = v36;
    sub_10000D60C(v28, v30, v32 & 1);

    KeyPath = swift_getKeyPath();
    v37 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v149 = v44;
    LOBYTE(v189) = v35 & 1;
    LOBYTE(v182) = 0;
    LOBYTE(v201) = 0;
    v164 = v35 & 1;
    v165 = 0;
    v162 = 1;
    v163 = v37;
  }

  else
  {
    v164 = 0;
    v165 = 0;
    v162 = 0;
    v163 = 0;
    KeyPath = 0;
    v167 = 0uLL;
    v168 = 0;
    v149 = 0;
    v43 = 0;
    v41 = 0;
    v39 = 0;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v45 = Text.init(_:tableName:bundle:comment:)();
  v47 = v46;
  v49 = v48;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v50 = Text.font(_:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_10000D60C(v45, v47, v49 & 1);

  v57 = swift_getKeyPath();
  v189 = v50;
  v190 = v52;
  v58 = v54 & 1;
  LOBYTE(v191) = v54 & 1;
  v192 = v56;
  v193 = v57;
  v194 = 2;
  LOBYTE(v195) = 0;
  v59 = v145;
  static AccessibilityTraits.isHeader.getter();
  sub_100009F70(&qword_1002197F0);
  sub_10002764C();
  v60 = v148;
  View.accessibility(addTraits:)();
  (*(v147 + 8))(v59, v157);
  sub_10000D60C(v50, v52, v58);

  LOBYTE(v45) = static Edge.Set.bottom.getter();
  v62 = v160;
  v61 = v161;
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v158;
  sub_10000F618(v60, v158, &qword_1002197C0);
  v72 = v71 + *(v146 + 36);
  *v72 = v45;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  LOBYTE(v45) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v159;
  sub_10000F618(v71, v159, &qword_100221BE0);
  v82 = v81 + *(v173 + 36);
  *v82 = v45;
  *(v82 + 8) = v74;
  *(v82 + 16) = v76;
  *(v82 + 24) = v78;
  *(v82 + 32) = v80;
  *(v82 + 40) = 0;
  sub_10016A0CC(&qword_100221BF8, &qword_100221BE8, &unk_1001BAEF8, sub_100169978);
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v81, &qword_100221BE8);
  v173 = 0;
  v157 = 0;
  v158 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  if (*(v61 + v62) == 1)
  {

    v89 = Text.init(_:tableName:bundle:comment:)();
    v91 = v90;
    v93 = v92;
    static Font.subheadline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v94 = Text.font(_:)();
    v96 = v95;
    v98 = v97;

    sub_10000D60C(v89, v91, v93 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v189 = qword_100230570;

    v173 = Text.foregroundStyle<A>(_:)();
    v157 = v100;
    v158 = v99;
    v102 = v101;
    sub_10000D60C(v94, v96, v98 & 1);

    v83 = swift_getKeyPath();
    v103 = static Edge.Set.bottom.getter();
    LOBYTE(v189) = v102 & 1;
    LOBYTE(v182) = 0;
    LOBYTE(v201) = 1;
    v88 = v102 & 1;
    v86 = 1;
    if (*(v161 + v160))
    {
      v85 = 0x3FF0000000000000;
    }

    else
    {
      v85 = 0;
    }

    v87 = v103;
    v84 = 4;
  }

  v159 = 0;
  v160 = v83;
  v147 = v87;
  v148 = v85;
  v161 = v86;
  v104 = v170;
  v105 = v88;
  v145 = v84;
  v146 = v88;
  v106 = v84;
  Divider.init()();
  v107 = static Edge.Set.bottom.getter();
  v108 = v104 + *(sub_100009F70(&qword_100219C30) + 36);
  *v108 = v107;
  *(v108 + 8) = 0u;
  *(v108 + 24) = 0u;
  *(v108 + 40) = 1;
  v109 = static SafeAreaRegions.container.getter();
  v110 = static Edge.Set.horizontal.getter();
  v111 = v104 + *(v150 + 36);
  *v111 = v109;
  *(v111 + 8) = v110;
  v112 = v153;
  sub_100168854(v154, v153);
  v113 = static Edge.Set.trailing.getter();
  sub_100167164();
  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = v151;
  sub_10000F618(v112, v151, &qword_100218DA8);
  v123 = v122 + *(v152 + 36);
  *v123 = v113;
  *(v123 + 8) = v115;
  *(v123 + 16) = v117;
  *(v123 + 24) = v119;
  *(v123 + 32) = v121;
  *(v123 + 40) = 0;
  v124 = v171;
  sub_10000F618(v122, v171, &qword_100218DB0);
  v125 = v169;
  sub_10000D58C(v174, v169, &qword_100221BF0);
  v126 = v155;
  sub_10000D58C(v104, v155, &qword_100221BD8);
  sub_1001699A8(v124, v172);
  v175 = v167;
  *&v176 = v164;
  *(&v176 + 1) = v168;
  *&v177 = KeyPath;
  *(&v177 + 1) = v162;
  *&v178 = v165;
  *(&v178 + 1) = v163;
  *&v179 = v39;
  *(&v179 + 1) = v41;
  v127 = v149;
  *&v180 = v43;
  *(&v180 + 1) = v149;
  v181 = 0;
  v128 = v156;
  *(v156 + 96) = 0;
  v129 = v180;
  v128[4] = v179;
  v128[5] = v129;
  v130 = v176;
  *v128 = v175;
  v128[1] = v130;
  v131 = v178;
  v128[2] = v177;
  v128[3] = v131;
  v132 = sub_100009F70(&qword_100221C08);
  sub_10000D58C(v125, v128 + v132[12], &qword_100221BF0);
  v133 = (v128 + v132[16]);
  v134 = v158;
  *&v182 = v173;
  *(&v182 + 1) = v158;
  *&v183 = v105;
  v135 = v157;
  *(&v183 + 1) = v157;
  *&v184 = v160;
  *(&v184 + 1) = v106;
  *&v185 = v159;
  v136 = v147;
  v137 = v148;
  *(&v185 + 1) = v147;
  v186 = 0u;
  v187 = 0u;
  *&v188 = v161;
  *(&v188 + 1) = v148;
  v138 = v183;
  *v133 = v182;
  v133[1] = v138;
  v139 = v185;
  v133[2] = v184;
  v133[3] = v139;
  v140 = v187;
  v133[4] = v186;
  v133[5] = v140;
  v133[6] = v188;
  sub_10000D58C(v126, v128 + v132[20], &qword_100221BD8);
  v141 = v128 + v132[24];
  v142 = v172;
  sub_1001699A8(v172, v141);
  sub_10000D58C(&v175, &v189, &qword_100221C10);
  sub_10000D58C(&v182, &v189, &qword_100221C18);
  sub_100169A18(v171);
  sub_10000D52C(v170, &qword_100221BD8);
  sub_10000D52C(v174, &qword_100221BF0);
  sub_100169A18(v142);
  sub_10000D52C(v126, &qword_100221BD8);
  v189 = v173;
  v190 = v134;
  v191 = v146;
  v192 = v135;
  v193 = v160;
  v194 = v145;
  v195 = v159;
  v196 = v136;
  v197 = 0u;
  v198 = 0u;
  v199 = v161;
  v200 = v137;
  sub_10000D52C(&v189, &qword_100221C18);
  sub_10000D52C(v169, &qword_100221BF0);
  v201 = v167;
  v202 = v164;
  v203 = v168;
  v204 = KeyPath;
  v205 = v162;
  v206 = v165;
  v207 = v163;
  v208 = v39;
  v209 = v41;
  v210 = v43;
  v211 = v127;
  v212 = 0;
  return sub_10000D52C(&v201, &qword_100221C10);
}

uint64_t sub_100168854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v66 = type metadata accessor for RedactionReasons();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100009F70(&qword_100218DE0);
  __chkstk_darwin(v71);
  v5 = (v59 - v4);
  v6 = type metadata accessor for AppModule();
  v67 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v68 = v7;
  v69 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100009F70(&qword_100218DE8);
  v64 = *(v72 - 8);
  __chkstk_darwin(v72);
  v9 = v59 - v8;
  v10 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v10 - 8);
  v12 = v59 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v62 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v59 - v17;
  v70 = a1;
  v19 = *a1;
  sub_10000D58C(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_eventURL, v12, qword_100218748);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000D52C(v12, qword_100218748);
    if (*(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID + 8))
    {
      v20 = *(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
      v21 = *(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID + 8);
      if ((*(v19 + 16) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((*(v19 + 16) & 1) == 0)
      {
        v20 = 0x3534333939343832;
        v21 = 0xE900000000000039;
LABEL_17:

        goto LABEL_18;
      }

      v20 = 0x3838383736343436;
      v21 = 0xEA00000000003932;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v27 = 0;
      v28 = 0;
LABEL_19:
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v27;
      *(&v75 + 1) = v28;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v31 = v63;
      static RedactionReasons.placeholder.getter();
      v32 = sub_10000F758();
      View.redacted(reason:)();
      (*(v65 + 8))(v31, v66);
      v82 = v76;
      v83 = v77;
      v84 = v78;
      v85 = v79;
      v80 = v74;
      v81 = v75;
      sub_10000F7AC(&v80);
      v33 = v64;
      v34 = v72;
      (*(v64 + 16))(v5, v9, v72);
      swift_storeEnumTagMultiPayload();
      *&v74 = &type metadata for AppStoreComponent;
      *(&v74 + 1) = v32;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v33 + 8))(v9, v34);
    }

LABEL_18:
    v28 = 0x80000001001C1E40;
    v27 = 0xD000000000000024;
    goto LABEL_19;
  }

  v22 = *(v14 + 32);
  v59[1] = v14 + 32;
  v59[0] = v22;
  v22(v18, v12, v13);
  v23 = *(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID + 8);
  if (v23)
  {
    v66 = *(v19 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
    v24 = *(v19 + 16);
    v65 = v23;
    v25 = v67;
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v25 = v67;
    if ((*(v19 + 16) & 1) == 0)
    {
      v66 = 0x3534333939343832;
      v65 = 0xE900000000000039;
LABEL_21:

      goto LABEL_22;
    }

    v66 = 0x3838383736343436;
    v65 = 0xEA00000000003932;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_22:
    v30 = v70;
    v67 = 0x80000001001C1E40;
    v64 = 0xD000000000000024;
    goto LABEL_23;
  }

  v64 = 0;
  v67 = 0;
  v30 = v70;
LABEL_23:
  v36 = *(v30 + 24);
  v80 = *(v30 + 8);
  *&v81 = v36;
  sub_100009F70(&qword_100221BD0);
  State.wrappedValue.getter();
  v61 = *(&v74 + 1);
  v63 = v74;
  if (sub_10009860C())
  {
    v60 = v18;
    sub_10016983C(v30, v69);
    v37 = v62;
    (*(v14 + 16))(v62, v60, v13);
    v38 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v39 = *(v14 + 80);
    v40 = v14;
    v41 = v25;
    v42 = (v68 + v39 + v38) & ~v39;
    v43 = swift_allocObject();
    v44 = v43 + v38;
    v45 = v69;
    v46 = v60;
    sub_1000D3274(v69, v44);
    v47 = v37;
    v48 = v13;
    v49 = v13;
    v50 = v46;
    (v59[0])(v43 + v42, v47, v49);
    v51 = v70;
    v52 = sub_100169E2C;
  }

  else
  {
    v51 = v30;
    v52 = 0;
    v43 = 0;
    v45 = v69;
    v48 = v13;
    v50 = v18;
    v40 = v14;
    v41 = v25;
  }

  sub_10016983C(v51, v45);
  v53 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v54 = swift_allocObject();
  sub_1000D3274(v45, v54 + v53);
  v55 = v65;
  *v5 = v66;
  v5[1] = v55;
  v56 = v67;
  v5[2] = v64;
  v5[3] = v56;
  v5[4] = 0;
  v5[5] = 0;
  v57 = v61;
  v5[6] = v63;
  v5[7] = v57;
  v5[8] = v52;
  v5[9] = v43;
  v5[10] = sub_100169BD4;
  v5[11] = v54;
  swift_storeEnumTagMultiPayload();
  v58 = sub_10000F758();
  *&v80 = &type metadata for AppStoreComponent;
  *(&v80 + 1) = v58;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v40 + 8))(v50, v48);
}

uint64_t sub_10016925C(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = *(a2 + 32);
  if (v10)
  {

    sub_100098D54(6, 0, 3u, v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10016A208(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10016939C(uint64_t a1)
{
  v1[7] = a1;
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v1[9] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v2;

  return _swift_task_switch(sub_100169434);
}

uint64_t sub_100169434()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1001694C8;

  return sub_100098748();
}

uint64_t sub_1001694C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return _swift_task_switch(sub_1001695F0);
}

uint64_t sub_1001695F0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = *(v3 + 24);
  *(v0 + 16) = *(v3 + 8);
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  sub_100009F70(&qword_100221BD0);
  State.wrappedValue.setter();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10016969C(void *a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppModule();
  sub_100023FD4(v5);
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  v6 = a1[4];
  if (v6)
  {
    if (*(*a1 + 16))
    {
      v7 = 10;
    }

    else
    {
      v7 = 8;
    }

    sub_100098D54(v7, 0, 3u, v6);

    return sub_10000FCD8(v7, 0, 3u);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10016A208(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10016983C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppModule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001698A4()
{
  v2 = *(type metadata accessor for AppModule() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D890;

  return sub_10016939C(v0 + v3);
}

uint64_t sub_1001699A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100218DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169A18(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100218DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100169A80()
{
  v1 = type metadata accessor for AppModule();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_100027EB0(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

uint64_t sub_100169BD4(uint64_t a1)
{
  v3 = *(type metadata accessor for AppModule() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10016925C(a1, v4);
}

uint64_t sub_100169C44()
{
  v1 = type metadata accessor for AppModule();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = *(v1 + 28);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + *(v1 + 32)), *(v7 + *(v1 + 32) + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100169E2C()
{
  v1 = *(type metadata accessor for AppModule() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for URL();

  return sub_10016969C((v0 + v2));
}

unint64_t sub_100169EFC()
{
  result = qword_100221C20;
  if (!qword_100221C20)
  {
    sub_10000B3DC(&qword_100221BC8);
    sub_100169FB8();
    sub_10016A208(&qword_100218490, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C20);
  }

  return result;
}

unint64_t sub_100169FB8()
{
  result = qword_100221C28;
  if (!qword_100221C28)
  {
    sub_10000B3DC(&qword_100221BB8);
    sub_10016A0CC(&qword_100221C30, &qword_100221BB0, &unk_1001BAEB0, sub_10016A09C);
    sub_10000D1EC(&qword_100221C50, qword_100221C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C28);
  }

  return result;
}

uint64_t sub_10016A0CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016A150()
{
  result = qword_100221C40;
  if (!qword_100221C40)
  {
    sub_10000B3DC(&qword_100221BA0);
    sub_10000D1EC(&qword_100221C48, &qword_100221B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C40);
  }

  return result;
}

uint64_t sub_10016A208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016A254()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      v0 = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        v0 = type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v0;
}

uint64_t sub_10016A3E4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10016AF0C();

  v3 = *(*v1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10016A528()
{
  swift_getKeyPath();
  sub_10016AF0C();

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_10016A5B0()
{
  v1[3] = v0;
  v2 = *v0;
  v1[4] = *(*v0 + 104);
  v1[5] = v2[11];
  v1[6] = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = v2[12];
  v1[11] = v2[10];
  v1[12] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v1[17] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v5;

  return _swift_task_switch(sub_10016A7A4);
}

uint64_t sub_10016A7A4()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[3];
  sub_10016B17C(1);
  v0[19] = *(*v5 + 112);
  v0[2] = (*(v4 + 112))(v3, v4);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v6 = *(v2 - 8);
  if ((*(v6 + 48))(v1, 1, v2) == 1)
  {
    v7 = v0[15];
    v8 = v0[13];
    v9 = v0[14];

    (*(v9 + 8))(v7, v8);
    sub_10016B17C(0);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[15];
    v13 = v0[12];
    v23 = v0[4];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = (*(AssociatedConformanceWitness + 24))(v13, AssociatedConformanceWitness);
    v17 = v16;
    v0[20] = v16;
    (*(v6 + 8))(v12, v13);
    v22 = (*(v23 + 48) + **(v23 + 48));
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_10016AAC8;
    v19 = v0[9];
    v21 = v0[4];
    v20 = v0[5];

    return v22(v19, v15, v17, v20, v21);
  }
}

uint64_t sub_10016AAC8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10016AD18;
  }

  else
  {
    v2 = sub_10016AC20;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10016AC20()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_10016B960(v1);
  (*(v2 + 8))(v1, v3);
  sub_10016B17C(0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10016AD18()
{
  v14 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = (*(*(v5 + 8) + 120))(v4);
    v10 = sub_10005D4E8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch playlist for eventID: %s", v6, 0xCu);
    sub_100021498(v7);
  }

  sub_10016B17C(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10016AFAC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10016B17C(char a1)
{
  v2 = *(*v1 + 152);
  v3 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v2) = v3;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10016B0A4();
  }

  return result;
}

uint64_t *sub_10016B2DC()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128), *(v1 + 88));
  v2 = *(*v0 + 144);
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 160);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_10016B4A0()
{
  sub_10016B2DC();

  return swift_deallocClassInstance();
}

__n128 sub_10016B524(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t *sub_10016B530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v7 = *v5;
  v8 = *(*v5 + 96);
  v9 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = *(v7 + 144);
  v16 = *(v7 + 88);
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 56))(v5 + v15, 1, 1, v17);
  *(v5 + *(*v5 + 152)) = 0;
  ObservationRegistrar.init()();
  (*(*(v9 - 8) + 16))(v5 + *(*v5 + 112), a1, v9);
  v18 = (v5 + *(*v5 + 120));
  v19 = v22;
  *v18 = v21;
  v18[1] = v19;
  (*(*(v16 - 8) + 16))(v5 + *(*v5 + 128), v23, v16);
  v24 = (*(v8 + 112))(v9, v8);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  LOBYTE(a1) = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness) != 1;
  (*(v12 + 8))(v14, v11);
  *(v5 + *(*v5 + 136)) = a1;
  sub_10016B17C(a1);
  return v5;
}

uint64_t sub_10016B960(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = v4[18];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v20 = v4[10];
  v12 = v4[12];
  v13 = a1;
  v21 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (a1)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *&v16 = v20;
    *(&v16 + 1) = v6;
    *&v17 = v12;
    *(&v17 + 1) = v5;
    *(&v19 - 2) = v16;
    *(&v19 - 1) = v17;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = v13;
    sub_10016B0A4();
  }
}

Swift::Int sub_10016BC84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016BD60()
{
  String.hash(into:)();
}

Swift::Int sub_10016BE28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10016BF00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016D870(*a1);
  *a2 = result;
  return result;
}

void sub_10016BF30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657665;
  v5 = 0xE500000000000000;
  v6 = 0x65756E6576;
  v7 = 0xD000000000000011;
  v8 = 0x80000001001BDB30;
  if (v2 != 3)
  {
    v7 = 0xD000000000000016;
    v8 = 0x80000001001BDB50;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x747369747261;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10016BFD0()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10016BFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10016C0CC(uint64_t a1)
{
  v2 = sub_10016DCC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C108(uint64_t a1)
{
  v2 = sub_10016DCC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C144(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7473696C79616C70;
  v4 = 0xEA00000000006449;
  if (v2 != 1)
  {
    v3 = 0x6449707061;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972746E756F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7473696C79616C70;
  v8 = 0xEA00000000006449;
  if (*a2 != 1)
  {
    v7 = 0x6449707061;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972746E756F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10016C248()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016C2EC()
{
  String.hash(into:)();
}

Swift::Int sub_10016C37C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10016C41C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016D8BC(*a1);
  *a2 = result;
  return result;
}

void sub_10016C44C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006449;
  v5 = 0x7473696C79616C70;
  if (v2 != 1)
  {
    v5 = 0x6449707061;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972746E756F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10016C4AC()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_10016C4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10016C5C8(uint64_t a1)
{
  v2 = sub_10016DFD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C604(uint64_t a1)
{
  v2 = sub_10016DFD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C640()
{
  v1 = *v0;
  v2 = 0x65636976726573;
  v3 = 0x7470697263736564;
  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574497972657571;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10016C6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016D908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016C728(uint64_t a1)
{
  v2 = sub_10016D5AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016C764(uint64_t a1)
{
  v2 = sub_10016D5AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016C7A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10016C82C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10016C874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016C8F4(void *a1)
{
  v3 = v1;
  v5 = sub_100009F70(&qword_100221DF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100028124(a1, a1[3]);
  sub_10016D5AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  *&v14 = *(v3 + 16);
  *(&v14 + 1) = v9;
  v15 = v10;
  v13 = 0;
  sub_10016D6FC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v14 = *(v3 + 40);
    v13 = 1;
    sub_100009F70(&qword_100221DD8);
    sub_10016D750(&qword_100221E08, sub_10016D7C8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 3;

    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v14 = *(v3 + 80);
    v13 = 4;
    sub_10016D81C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10016CBA4(void *a1)
{
  v13[1] = *v1;
  v4 = sub_100009F70(&qword_100221DC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  sub_100028124(a1, a1[3]);
  sub_10016D5AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_10016D600();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = *(&v14 + 1);
    v9 = v15;
    *(v1 + 16) = v14;
    *(v1 + 24) = v8;
    *(v1 + 32) = v9;
    sub_100009F70(&qword_100221DD8);
    v16 = 1;
    sub_10016D750(&qword_100221DE0, sub_10016D654);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 40) = v14;
    LOBYTE(v14) = 2;
    *(v1 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 56) = v11;
    LOBYTE(v14) = 3;
    *(v1 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 72) = v12;

    v16 = 4;
    sub_10016D6A8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 80) = v14;
  }

  sub_100021498(a1);
  return v1;
}

uint64_t sub_10016CF3C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_100009F70(&qword_100221E38);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100028124(a1, a1[3]);
  sub_10016DCC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    sub_10016DD6C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10016D0C8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_100009F70(&qword_100221E68);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100028124(a1, a1[3]);
  sub_10016DFD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10016E080();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10016D270@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_10016CBA4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10016D2EC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_10016D2FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10016DAD4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10016D40C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10016DE14(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10016D558(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016D5AC()
{
  result = qword_100221DC8;
  if (!qword_100221DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221DC8);
  }

  return result;
}

unint64_t sub_10016D600()
{
  result = qword_100221DD0;
  if (!qword_100221DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221DD0);
  }

  return result;
}

unint64_t sub_10016D654()
{
  result = qword_100221DE8;
  if (!qword_100221DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221DE8);
  }

  return result;
}

unint64_t sub_10016D6A8()
{
  result = qword_100221DF0;
  if (!qword_100221DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221DF0);
  }

  return result;
}

unint64_t sub_10016D6FC()
{
  result = qword_100221E00;
  if (!qword_100221E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E00);
  }

  return result;
}

uint64_t sub_10016D750(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(&qword_100221DD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016D7C8()
{
  result = qword_100221E10;
  if (!qword_100221E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E10);
  }

  return result;
}

unint64_t sub_10016D81C()
{
  result = qword_100221E18;
  if (!qword_100221E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E18);
  }

  return result;
}

unint64_t sub_10016D870(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209970, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10016D8BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209A08, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10016D908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574497972657571 && a2 == 0xEA0000000000736DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001C1F20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001001C1F40 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10016DAD4(void *a1)
{
  v3 = sub_100009F70(&qword_100221E20);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100028124(a1, a1[3]);
  sub_10016DCC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[13] = 1;
    sub_10016DD18();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100021498(a1);
  return v7;
}

unint64_t sub_10016DCC4()
{
  result = qword_100221E28;
  if (!qword_100221E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E28);
  }

  return result;
}

unint64_t sub_10016DD18()
{
  result = qword_100221E30;
  if (!qword_100221E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E30);
  }

  return result;
}

unint64_t sub_10016DD6C()
{
  result = qword_100221E40;
  if (!qword_100221E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E40);
  }

  return result;
}

unint64_t sub_10016DDC0()
{
  result = qword_100221E48;
  if (!qword_100221E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E48);
  }

  return result;
}

uint64_t sub_10016DE14(void *a1)
{
  v3 = sub_100009F70(&qword_100221E50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100028124(a1, v7);
  sub_10016DFD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_10016E02C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100021498(a1);
  return v7;
}

unint64_t sub_10016DFD8()
{
  result = qword_100221E58;
  if (!qword_100221E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E58);
  }

  return result;
}

unint64_t sub_10016E02C()
{
  result = qword_100221E60;
  if (!qword_100221E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E60);
  }

  return result;
}

unint64_t sub_10016E080()
{
  result = qword_100221E70;
  if (!qword_100221E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E70);
  }

  return result;
}

unint64_t sub_10016E0D4()
{
  result = qword_100221E78;
  if (!qword_100221E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E78);
  }

  return result;
}

unint64_t sub_10016E184()
{
  result = qword_100221E80;
  if (!qword_100221E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E80);
  }

  return result;
}

unint64_t sub_10016E1DC()
{
  result = qword_100221E88;
  if (!qword_100221E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E88);
  }

  return result;
}

unint64_t sub_10016E234()
{
  result = qword_100221E90;
  if (!qword_100221E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E90);
  }

  return result;
}

unint64_t sub_10016E28C()
{
  result = qword_100221E98;
  if (!qword_100221E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E98);
  }

  return result;
}

unint64_t sub_10016E2E4()
{
  result = qword_100221EA0;
  if (!qword_100221EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EA0);
  }

  return result;
}

unint64_t sub_10016E33C()
{
  result = qword_100221EA8;
  if (!qword_100221EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EA8);
  }

  return result;
}

unint64_t sub_10016E394()
{
  result = qword_100221EB0;
  if (!qword_100221EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EB0);
  }

  return result;
}

unint64_t sub_10016E3EC()
{
  result = qword_100221EB8;
  if (!qword_100221EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EB8);
  }

  return result;
}

unint64_t sub_10016E444()
{
  result = qword_100221EC0;
  if (!qword_100221EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EC0);
  }

  return result;
}

unint64_t sub_10016E49C()
{
  result = qword_100221EC8;
  if (!qword_100221EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EC8);
  }

  return result;
}

unint64_t sub_10016E4F4()
{
  result = qword_100221ED0[0];
  if (!qword_100221ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100221ED0);
  }

  return result;
}

id sub_10016E564(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [result addressRepresentations];
    if (!v2 || (v3 = v2, v4 = [v2 fullAddressIncludingRegion:0 singleLine:1], v3, !v4))
    {
      result = [v1 address];
      if (!result)
      {
        return result;
      }

      v5 = result;
      v4 = [result fullAddress];
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  return result;
}

uint64_t sub_10016E640(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_10016E668);
}

uint64_t sub_10016E668()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(v0 + 24);
    if (v3 == 0.0 || *(v0 + 32) == 0.0)
    {
LABEL_5:
      v4 = v2;
LABEL_6:
      v5 = *(v0 + 8);

      return v5(v2);
    }

    v11 = v1;
    v12 = v2;
    [v12 size];
    v14 = vabdd_f64(v13, v3);
    [v12 size];
    if (v14 < 15.0 && vabdd_f64(v15, *(v0 + 32)) < 15.0)
    {

      v2 = *(v0 + 16);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v1;
  }

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_10016E7E8;
  v9.n128_u64[0] = *(v0 + 24);
  v10.n128_u64[0] = *(v0 + 32);

  return (sub_10019DEE8)(v1, v9, v10);
}

uint64_t sub_10016E7E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10016E97C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_10016E910;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_10016E910()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016E97C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016E9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a2;
  v8 = *(a3 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  (*(v10 + 16))(v17 - v11, v4 + *(a3 + 40), v9);
  v13 = *(v8 - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    v8 = v9;
  }

  else
  {
    (*(*(a3 + 24) + 40))(a1, v17[0], 0, v8);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, v8);
  v15 = type metadata accessor for URL();
  return (*(*(v15 - 8) + 56))(a4, v14, 1, v15);
}

uint64_t sub_10016EBE4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, v1 + *(a1 + 40), v4);
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v9 = (*(*(a1 + 24) + 24))(v3);
    (*(v8 + 8))(v7, v3);
    if (v9)
    {
      return Color.init(cgColor:)();
    }
  }

  v11 = [objc_opt_self() tertiarySystemFillColor];
  return Color.init(uiColor:)();
}

uint64_t sub_10016ED9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for ArtistEventListHeaderViewModel() + 40);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t sub_10016EE4C()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10016EED4()
{
  type metadata accessor for ArtistEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_10016F298(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_10016F298(319, &qword_10021A308, &type metadata accessor for DismissAction);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10016EFF4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100219838);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 88);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100218950);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 92);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10016F144(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100219838);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 88);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100218950);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 92);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10016F298(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10016F338(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ArtistEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_10016F39C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ArtistEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_10016F404@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  v3 = type metadata accessor for TaskPriority();
  v184 = *(v3 - 8);
  v185 = v3;
  v4 = __chkstk_darwin(v3);
  v183 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = *(a1 - 1);
  v200 = *(v206 + 64);
  __chkstk_darwin(v4);
  v195 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  type metadata accessor for Optional();
  v196 = type metadata accessor for Binding();
  v199 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v155 - v8;
  *&v208 = type metadata accessor for NavigationPath();
  v9 = a1[2];
  *&v10 = v9;
  *(&v10 + 1) = v7;
  v207 = v10;
  v11 = a1[6];
  v198 = a1;
  swift_getAssociatedTypeWitness();
  v203 = v11;
  v204 = v9;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader();
  v12 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v243 = &protocol witness table for EmptyView;
  v244 = WitnessTable;
  v245 = &protocol witness table for EmptyView;
  v193 = &protocol conformance descriptor for <> Section<A, B, C>;
  v14 = swift_getWitnessTable();
  v228 = v12;
  v229 = v14;
  v192 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310);
  v246 = type metadata accessor for ModifiedContent();
  v197 = sub_10000B3DC(&qword_100221FD8);
  v202 = a1[7];
  v201 = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v228 = v9;
  v229 = AssociatedTypeWitness;
  *&v230 = v11;
  *(&v230 + 1) = AssociatedConformanceWitness;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v17 = type metadata accessor for Button();
  v18 = type metadata accessor for PlainButtonStyle();
  v19 = swift_getWitnessTable();
  v20 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v228 = v17;
  v229 = v18;
  *&v230 = v19;
  *(&v230 + 1) = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for Section();
  v228 = v17;
  v229 = v18;
  *&v230 = v19;
  *(&v230 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v240 = &protocol witness table for EmptyView;
  v241 = OpaqueTypeConformance2;
  v242 = &protocol witness table for EmptyView;
  v23 = swift_getWitnessTable();
  v228 = v21;
  v229 = v23;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v247 = type metadata accessor for Optional();
  v248 = sub_10000B3DC(&qword_100221FE0);
  v191 = sub_10000B3DC(&qword_100221FE8);
  v24 = type metadata accessor for Array();
  v197 = *(*(v202 + 8) + 16);
  v25 = swift_getAssociatedTypeWitness();
  v26 = sub_10000B3DC(&qword_100221FF0);
  v27 = swift_getWitnessTable();
  v28 = swift_getAssociatedConformanceWitness();
  v228 = v24;
  v229 = v25;
  *&v230 = v26;
  *(&v230 + 1) = v27;
  v231 = v28;
  type metadata accessor for ForEach();
  v29 = type metadata accessor for Section();
  v239 = sub_10017AC40();
  v30 = swift_getWitnessTable();
  v236 = &protocol witness table for EmptyView;
  v237 = v30;
  v238 = &protocol witness table for EmptyView;
  v31 = swift_getWitnessTable();
  v228 = v29;
  v229 = v31;
  swift_getOpaqueTypeMetadata2();
  v249 = type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  v32 = type metadata accessor for TupleView();
  v33 = swift_getWitnessTable();
  v228 = &type metadata for Never;
  v229 = v32;
  *&v230 = &protocol witness table for Never;
  *(&v230 + 1) = v33;
  v34 = type metadata accessor for List();
  v35 = type metadata accessor for PlainListStyle();
  v36 = swift_getWitnessTable();
  v228 = v34;
  v229 = v35;
  *&v230 = v36;
  *(&v230 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v228 = v34;
  v229 = v35;
  *&v230 = v36;
  *(&v230 + 1) = &protocol witness table for PlainListStyle;
  v38 = swift_getOpaqueTypeConformance2();
  v228 = OpaqueTypeMetadata2;
  v229 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v228 = OpaqueTypeMetadata2;
  v229 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v228 = v39;
  v229 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v228 = v39;
  v229 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v228 = v41;
  v229 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v228 = v41;
  v229 = v42;
  v44 = swift_getOpaqueTypeConformance2();
  v228 = v43;
  v229 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v228 = v43;
  v229 = v44;
  v46 = swift_getOpaqueTypeConformance2();
  v228 = v45;
  v229 = &type metadata for Bool;
  *&v230 = v46;
  *(&v230 + 1) = &protocol witness table for Bool;
  v47 = swift_getOpaqueTypeMetadata2();
  v48 = sub_10000B3DC(&qword_100222020);
  v228 = v45;
  v229 = &type metadata for Bool;
  *&v230 = v46;
  *(&v230 + 1) = &protocol witness table for Bool;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_10000D1EC(&qword_100222028, &qword_100222020);
  v228 = v47;
  v229 = v48;
  *&v230 = v49;
  *(&v230 + 1) = v50;
  v188 = swift_getOpaqueTypeMetadata2();
  v228 = v47;
  v229 = v48;
  *&v230 = v49;
  *(&v230 + 1) = v50;
  v187 = swift_getOpaqueTypeConformance2();
  v51 = type metadata accessor for NavigationStack();
  v174 = *(v51 - 8);
  __chkstk_darwin(v51);
  v191 = &v155 - v52;
  v53 = sub_100042730();
  v54 = sub_100042784();
  v55 = v201;
  v56 = v202;
  v228 = v201;
  v229 = &type metadata for ArtistFetcher;
  *&v230 = &type metadata for PromotionalPlaylistFetcher;
  *(&v230 + 1) = v202;
  v231 = v53;
  v232 = v54;
  v57 = type metadata accessor for MusicEventView();
  v58 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v228 = v51;
  v60 = v51;
  v161 = v58;
  v162 = v51;
  v229 = v55;
  *&v230 = v57;
  v159 = v57;
  v160 = v59;
  *(&v230 + 1) = v58;
  v61 = v197;
  v231 = v197;
  v232 = v59;
  v62 = v59;
  v189 = swift_getOpaqueTypeMetadata2();
  v179 = *(v189 - 8);
  __chkstk_darwin(v189);
  v193 = &v155 - v63;
  v64 = type metadata accessor for AppleMusicFetcher();
  v65 = sub_10017CF40(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher);
  v228 = v55;
  v229 = v64;
  *&v230 = v56;
  *(&v230 + 1) = v65;
  v66 = type metadata accessor for PromotionalAssetsView();
  v228 = v60;
  v229 = v55;
  v67 = v55;
  *&v230 = v57;
  *(&v230 + 1) = v58;
  v231 = v61;
  v232 = v62;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = swift_getWitnessTable();
  v70 = v189;
  v228 = v189;
  v229 = v67;
  v71 = v67;
  *&v230 = v66;
  v72 = v66;
  v163 = v66;
  v164 = v69;
  *(&v230 + 1) = v68;
  v165 = v68;
  v231 = v61;
  v73 = v61;
  v232 = v69;
  v74 = v69;
  v168 = swift_getOpaqueTypeMetadata2();
  v172 = *(v168 - 8);
  __chkstk_darwin(v168);
  v190 = &v155 - v75;
  v76 = type metadata accessor for ModifiedContent();
  v171 = v76;
  v181 = *(v76 - 8);
  __chkstk_darwin(v76);
  v192 = &v155 - v77;
  v228 = v70;
  v229 = v71;
  v78 = v71;
  *&v230 = v72;
  *(&v230 + 1) = v68;
  v231 = v73;
  v232 = v74;
  v166 = swift_getOpaqueTypeConformance2();
  v234 = v166;
  v235 = &protocol witness table for _AppearanceActionModifier;
  v182 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v170 = swift_getWitnessTable();
  v228 = v76;
  v229 = v170;
  v176 = &unk_1001C2954;
  v173 = swift_getOpaqueTypeMetadata2();
  v177 = *(v173 - 8);
  __chkstk_darwin(v173);
  v167 = &v155 - v79;
  type metadata accessor for AccessibilityAttachmentModifier();
  v178 = type metadata accessor for ModifiedContent();
  v180 = *(v178 - 8);
  v80 = __chkstk_darwin(v178);
  v169 = &v155 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v175 = &v155 - v82;
  v83 = v203;
  *&v84 = v203;
  *(&v84 + 1) = v56;
  v225 = v205;
  v85 = v198;
  v86 = *(v198 + 2);
  v221 = v207;
  v222 = v86;
  v207 = *(v198 + 4);
  v208 = v86;
  v223 = v84;
  v224 = v207;
  NavigationStack.init<>(root:)();
  v87 = sub_10016F39C(v85);
  v89 = v88;
  v91 = v90;
  v92 = v204;
  v215 = v204;
  v216 = v78;
  v217 = v208;
  v218 = v83;
  v219 = v56;
  v220 = v207;
  swift_getKeyPath();
  v246 = v87;
  v247 = v89;
  v248 = v91;
  v228 = v92;
  v229 = v78;
  v230 = v208;
  v231 = v83;
  v232 = v56;
  v93 = v56;
  v233 = v207;
  type metadata accessor for ArtistEventViewModel();
  v155 = type metadata accessor for Binding();
  Binding.subscript.getter();

  v94 = v206;
  v95 = *(v206 + 16);
  v157 = v206 + 16;
  v158 = v95;
  v96 = v195;
  v97 = v198;
  v95(v195, v205, v198);
  v187 = *(v94 + 80);
  v98 = (v187 + 80) & ~v187;
  v156 = v98;
  v99 = swift_allocObject();
  v100 = v204;
  v101 = v201;
  *(v99 + 16) = v204;
  *(v99 + 24) = v101;
  v102 = v207;
  *(v99 + 32) = v208;
  *(v99 + 48) = v83;
  *(v99 + 56) = v93;
  v103 = v93;
  *(v99 + 64) = v102;
  v104 = *(v94 + 32);
  v206 = v94 + 32;
  v188 = v104;
  v105 = v97;
  v104(v99 + v98, v96, v97);
  swift_checkMetadataState();
  v106 = v194;
  v107 = v162;
  v108 = v191;
  View.sheet<A, B>(item:onDismiss:content:)();

  v109 = *(v199 + 8);
  v199 += 8;
  v161 = v109;
  v109(v106, v196);
  (*(v174 + 8))(v108, v107);
  v110 = sub_10016F39C(v105);
  v112 = v111;
  v114 = v113;
  v209 = v100;
  v210 = v101;
  v211 = v208;
  v115 = v203;
  v212 = v203;
  v213 = v103;
  v214 = v207;
  swift_getKeyPath();
  v228 = v110;
  v229 = v112;
  *&v230 = v114;
  Binding.subscript.getter();

  v116 = swift_allocObject();
  v117 = v201;
  *(v116 + 16) = v100;
  *(v116 + 24) = v117;
  v118 = v207;
  *(v116 + 32) = v208;
  *(v116 + 48) = v115;
  *(v116 + 56) = v103;
  *(v116 + 64) = v118;
  swift_checkMetadataState();
  v119 = v189;
  v120 = v117;
  v121 = v193;
  View.sheet<A, B>(item:onDismiss:content:)();

  v161(v106, v196);
  (*(v179 + 8))(v121, v119);
  v122 = v195;
  v123 = v205;
  v124 = v198;
  v125 = v158;
  v158(v195, v205, v198);
  v126 = v156;
  v127 = swift_allocObject();
  v128 = v203;
  *(v127 + 16) = v204;
  *(v127 + 24) = v120;
  v129 = v207;
  *(v127 + 32) = v208;
  v130 = v202;
  *(v127 + 48) = v128;
  *(v127 + 56) = v130;
  *(v127 + 64) = v129;
  v188(v127 + v126, v122, v124);
  v131 = v168;
  v132 = v190;
  View.onAppear(perform:)();

  (*(v172 + 8))(v132, v131);
  v125(v122, v123, v124);
  type metadata accessor for MainActor();
  v133 = static MainActor.shared.getter();
  v134 = (v187 + 96) & ~v187;
  v135 = swift_allocObject();
  *(v135 + 16) = v133;
  *(v135 + 24) = &protocol witness table for MainActor;
  v136 = v203;
  *(v135 + 32) = v204;
  *(v135 + 40) = v120;
  v137 = v207;
  *(v135 + 48) = v208;
  v138 = v202;
  *(v135 + 64) = v136;
  *(v135 + 72) = v138;
  *(v135 + 80) = v137;
  v188(v135 + v134, v122, v124);
  v139 = v183;
  v141 = v170;
  v140 = v171;
  j___sScP13userInitiatedScPvgZ();
  v142 = v167;
  v143 = v139;
  v144 = v139;
  v145 = v192;
  sub_100009FB8(0, v143, 0xD000000000000025, 0x80000001001C1F60, 211, &unk_1001BBA20, v135, v167, v140, v141);
  (*(v184 + 8))(v144, v185);
  (*(v181 + 8))(v145, v140);
  v228 = v140;
  v229 = v141;
  v146 = swift_getOpaqueTypeConformance2();
  v147 = v169;
  v148 = v173;
  View.accessibilityIdentifier(_:)();
  (*(v177 + 8))(v142, v148);
  v149 = sub_10017CF40(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v226 = v146;
  v227 = v149;
  v150 = v178;
  v151 = swift_getWitnessTable();
  v152 = v175;
  sub_100157EFC(v147, v150, v151);
  v153 = *(v180 + 8);
  v153(v147, v150);
  sub_100157EFC(v152, v150, v151);
  return (v153)(v152, v150);
}

uint64_t sub_100170AEC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v180 = a5;
  v181 = a8;
  v179 = a4;
  v177 = a1;
  v174 = a9;
  v183 = a10;
  v210 = a2;
  v211 = a3;
  v212 = a4;
  v213 = a5;
  v214 = a6;
  v215 = a7;
  v216 = a8;
  v217 = a10;
  v178 = type metadata accessor for ArtistEventView();
  v173 = *(v178 - 8);
  v171 = *(v173 + 64);
  __chkstk_darwin(v178);
  v172 = &v125 - v14;
  v15 = type metadata accessor for ContentMarginPlacement();
  v169 = *(v15 - 8);
  v170 = v15;
  __chkstk_darwin(v15);
  v168 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v166 = *(v17 - 8);
  v167 = v17;
  __chkstk_darwin(v17);
  v165 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScrollIndicatorVisibility();
  v163 = *(v19 - 8);
  v164 = v19;
  __chkstk_darwin(v19);
  v162 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for PlainListStyle();
  v161 = *(v175 - 8);
  __chkstk_darwin(v175);
  v160 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = a2;
  swift_getAssociatedTypeWitness();
  v184 = a6;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader();
  v22 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v203 = &protocol witness table for EmptyView;
  v204 = WitnessTable;
  v205 = &protocol witness table for EmptyView;
  v176 = &protocol conformance descriptor for <> Section<A, B, C>;
  v24 = swift_getWitnessTable();
  v210 = v22;
  v211 = v24;
  v159 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310);
  v206 = type metadata accessor for ModifiedContent();
  v158 = sub_10000B3DC(&qword_100221FD8);
  v185 = a3;
  v186 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v210 = v182;
  v211 = AssociatedTypeWitness;
  v212 = a6;
  v213 = AssociatedConformanceWitness;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v27 = type metadata accessor for Button();
  v28 = type metadata accessor for PlainButtonStyle();
  v29 = swift_getWitnessTable();
  v30 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v210 = v27;
  v211 = v28;
  v212 = v29;
  v213 = v30;
  swift_getOpaqueTypeMetadata2();
  v31 = type metadata accessor for Section();
  v210 = v27;
  v211 = v28;
  v212 = v29;
  v213 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v200 = &protocol witness table for EmptyView;
  v201 = OpaqueTypeConformance2;
  v202 = &protocol witness table for EmptyView;
  v33 = swift_getWitnessTable();
  v210 = v31;
  v211 = v33;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v207 = type metadata accessor for Optional();
  v208 = sub_10000B3DC(&qword_100221FE0);
  v158 = sub_10000B3DC(&qword_100221FE8);
  v34 = type metadata accessor for Array();
  v35 = swift_getAssociatedTypeWitness();
  v36 = sub_10000B3DC(&qword_100221FF0);
  v37 = swift_getWitnessTable();
  v38 = swift_getAssociatedConformanceWitness();
  v210 = v34;
  v211 = v35;
  v212 = v36;
  v213 = v37;
  v214 = v38;
  type metadata accessor for ForEach();
  v39 = type metadata accessor for Section();
  v199 = sub_10017AC40();
  v40 = swift_getWitnessTable();
  v196 = &protocol witness table for EmptyView;
  v197 = v40;
  v198 = &protocol witness table for EmptyView;
  v41 = swift_getWitnessTable();
  v210 = v39;
  v211 = v41;
  swift_getOpaqueTypeMetadata2();
  v209 = type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  v42 = type metadata accessor for TupleView();
  v130 = v42;
  v129 = swift_getWitnessTable();
  v210 = &type metadata for Never;
  v211 = v42;
  v212 = &protocol witness table for Never;
  v213 = v129;
  v43 = type metadata accessor for List();
  v131 = *(v43 - 8);
  __chkstk_darwin(v43);
  v128 = &v125 - v44;
  v45 = swift_getWitnessTable();
  v126 = v43;
  v46 = v175;
  v210 = v43;
  v211 = v175;
  v212 = v45;
  v213 = &protocol witness table for PlainListStyle;
  v47 = v45;
  v127 = v45;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v148 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v125 = &v125 - v49;
  v210 = v43;
  v211 = v46;
  v212 = v47;
  v213 = &protocol witness table for PlainListStyle;
  v50 = swift_getOpaqueTypeConformance2();
  v210 = OpaqueTypeMetadata2;
  v211 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v155 = *(v51 - 8);
  __chkstk_darwin(v51);
  v152 = &v125 - v52;
  v150 = OpaqueTypeMetadata2;
  v210 = OpaqueTypeMetadata2;
  v211 = v50;
  v133 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v210 = v51;
  v211 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v151 = *(v54 - 8);
  __chkstk_darwin(v54);
  v144 = &v125 - v55;
  v158 = v51;
  v210 = v51;
  v211 = v53;
  v141 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v210 = v54;
  v211 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v145 = *(v57 - 8);
  __chkstk_darwin(v57);
  v138 = &v125 - v58;
  v153 = v54;
  v210 = v54;
  v211 = v56;
  v135 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v210 = v57;
  v211 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v157 = *(v60 - 8);
  __chkstk_darwin(v60);
  v176 = &v125 - v61;
  v146 = v57;
  v210 = v57;
  v211 = v59;
  v132 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v210 = v60;
  v211 = &type metadata for Bool;
  v212 = v62;
  v213 = &protocol witness table for Bool;
  v63 = swift_getOpaqueTypeMetadata2();
  v154 = *(v63 - 8);
  __chkstk_darwin(v63);
  v149 = &v125 - v64;
  v65 = sub_10000B3DC(&qword_100222020);
  v159 = v60;
  v210 = v60;
  v211 = &type metadata for Bool;
  v140 = v62;
  v212 = v62;
  v213 = &protocol witness table for Bool;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_10000D1EC(&qword_100222028, &qword_100222020);
  v156 = v63;
  v210 = v63;
  v211 = v65;
  v147 = v65;
  v68 = v125;
  v139 = v66;
  v212 = v66;
  v213 = v67;
  v137 = v67;
  v69 = swift_getOpaqueTypeMetadata2();
  v142 = *(v69 - 8);
  v143 = v69;
  v70 = __chkstk_darwin(v69);
  v134 = &v125 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v136 = &v125 - v72;
  v187 = v182;
  v188 = v185;
  v189 = v179;
  v190 = v180;
  v191 = v184;
  v192 = v186;
  v193 = v181;
  v194 = v183;
  v73 = v177;
  v195 = v177;
  v74 = v128;
  List<>.init(content:)();
  v75 = v160;
  PlainListStyle.init()();
  v76 = v126;
  v77 = v175;
  View.listStyle<A>(_:)();
  (*(v161 + 8))(v75, v77);
  (*(v131 + 8))(v74, v76);
  v78 = v162;
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v36) = static Axis.Set.vertical.getter();
  *(inited + 32) = v36;
  v80 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v80;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v36)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v80)
  {
    Axis.Set.init(rawValue:)();
  }

  v81 = v152;
  v82 = v150;
  View.scrollIndicators(_:axes:)();
  (*(v163 + 8))(v78, v164);
  (*(v148 + 8))(v68, v82);
  v83 = v73;
  sub_10016F338(v178);
  v84 = sub_1001A5918();

  v210 = v84;
  v85 = v185;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.isEmpty.getter();

  v86 = v144;
  v87 = v158;
  View.scrollDisabled(_:)();
  (*(v155 + 8))(v81, v87);
  v89 = v165;
  v88 = v166;
  v90 = v167;
  (*(v166 + 104))(v165, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v167);
  v91 = v138;
  v92 = v153;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v88 + 8))(v89, v90);
  (*(v151 + 8))(v86, v92);
  static Edge.Set.top.getter();
  v93 = v168;
  static ContentMarginPlacement.automatic.getter();
  v94 = v146;
  View.contentMargins(_:_:for:)();
  (*(v169 + 8))(v93, v170);
  (*(v145 + 8))(v91, v94);
  v96 = v172;
  v95 = v173;
  v97 = v178;
  (*(v173 + 16))(v172, v83, v178);
  v98 = (*(v95 + 80) + 80) & ~*(v95 + 80);
  v99 = swift_allocObject();
  v100 = v181;
  v101 = v182;
  *(v99 + 2) = v182;
  *(v99 + 3) = v85;
  v103 = v179;
  v102 = v180;
  *(v99 + 4) = v179;
  *(v99 + 5) = v102;
  v104 = v186;
  *(v99 + 6) = v184;
  *(v99 + 7) = v104;
  v105 = v183;
  *(v99 + 8) = v100;
  *(v99 + 9) = v105;
  (*(v95 + 32))(&v99[v98], v96, v97);
  v124 = &protocol witness table for Bool;
  v106 = v149;
  v107 = v159;
  v108 = v176;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v109 = (*(v157 + 8))(v108, v107);
  __chkstk_darwin(v109);
  v111 = v184;
  v110 = v185;
  *(&v125 - 10) = v101;
  *(&v125 - 9) = v110;
  *(&v125 - 8) = v103;
  *(&v125 - 7) = v102;
  v112 = v186;
  *(&v125 - 6) = v111;
  *(&v125 - 5) = v112;
  v113 = v183;
  *(&v125 - 4) = v100;
  *(&v125 - 3) = v113;
  v124 = v177;
  v114 = v134;
  v115 = v156;
  v116 = v147;
  v117 = v139;
  v118 = v137;
  View.toolbar<A>(content:)();
  (*(v154 + 8))(v106, v115);
  v210 = v115;
  v211 = v116;
  v212 = v117;
  v213 = v118;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = v136;
  v121 = v143;
  sub_100157EFC(v114, v143, v119);
  v122 = *(v142 + 8);
  v122(v114, v121);
  sub_100157EFC(v120, v121, v119);
  return (v122)(v120, v121);
}

uint64_t sub_100171F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v353 = a8;
  v355 = a5;
  v349 = a4;
  v354 = a2;
  v357 = a1;
  v328 = a9;
  v356 = a10;
  v321 = type metadata accessor for Array();
  v399 = v321;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v401 = sub_10000B3DC(&qword_100221FF0);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ForEach();
  v14 = type metadata accessor for Section();
  v309 = *(v14 - 8);
  __chkstk_darwin(v14);
  v306 = v261 - v15;
  v416 = sub_10017AC40();
  v307 = v13;
  v16 = swift_getWitnessTable();
  v413 = &protocol witness table for EmptyView;
  v414 = v16;
  v302 = v16;
  v415 = &protocol witness table for EmptyView;
  v345 = &protocol conformance descriptor for <> Section<A, B, C>;
  v17 = swift_getWitnessTable();
  v340 = v14;
  v399 = v14;
  v339 = v17;
  AssociatedTypeWitness = v17;
  v331 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v308 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v305 = v261 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v304 = v261 - v21;
  v325 = sub_100009F70(&qword_100222060);
  __chkstk_darwin(v325);
  v300 = v261 - v22;
  v23 = sub_100009F70(&qword_100221FE8);
  v303 = *(v23 - 8);
  __chkstk_darwin(v23);
  v301 = v261 - v24;
  v322 = v25;
  v323 = OpaqueTypeMetadata2;
  v327 = type metadata accessor for _ConditionalContent();
  v326 = *(v327 - 8);
  v26 = __chkstk_darwin(v327);
  v338 = v261 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v324 = v261 - v28;
  v29 = sub_100009F70(&qword_100222068);
  v318 = *(v29 - 8);
  v319 = v29;
  __chkstk_darwin(v29);
  v299 = v261 - v30;
  v296 = sub_100009F70(&qword_100222070);
  v294 = *(v296 - 8);
  __chkstk_darwin(v296);
  v292 = v261 - v31;
  v295 = sub_100009F70(&qword_100222078);
  __chkstk_darwin(v295);
  v293 = v261 - v32;
  v33 = sub_100009F70(&qword_100222080);
  v34 = __chkstk_darwin(v33 - 8);
  v298 = v261 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v297 = v261 - v36;
  v37 = sub_100009F70(&qword_10021A320);
  v283 = *(v37 - 8);
  v284 = v37;
  __chkstk_darwin(v37);
  v282 = v261 - v38;
  v39 = sub_100009F70(&qword_100222088);
  v288 = *(v39 - 8);
  v289 = v39;
  __chkstk_darwin(v39);
  v287 = v261 - v40;
  v286 = sub_100009F70(&qword_100222090);
  v41 = __chkstk_darwin(v286);
  v291 = v261 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v285 = v261 - v44;
  __chkstk_darwin(v43);
  v290 = v261 - v45;
  v320 = sub_100009F70(&qword_100221FE0);
  v46 = __chkstk_darwin(v320);
  v337 = v261 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v348 = v261 - v48;
  v351 = a7;
  v352 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedTypeWitness();
  v50 = swift_getAssociatedConformanceWitness();
  v51 = v354;
  v399 = v354;
  AssociatedTypeWitness = v49;
  v52 = a6;
  v401 = a6;
  WitnessTable = v50;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v53 = type metadata accessor for Button();
  v54 = type metadata accessor for PlainButtonStyle();
  v55 = swift_getWitnessTable();
  v56 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v399 = v53;
  AssociatedTypeWitness = v54;
  v401 = v55;
  WitnessTable = v56;
  v263 = swift_getOpaqueTypeMetadata2();
  v57 = type metadata accessor for Section();
  v264 = *(v57 - 8);
  __chkstk_darwin(v57);
  v262 = v261 - v58;
  v399 = v53;
  AssociatedTypeWitness = v54;
  v401 = v55;
  WitnessTable = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v410 = &protocol witness table for EmptyView;
  v411 = OpaqueTypeConformance2;
  v261[1] = OpaqueTypeConformance2;
  v412 = &protocol witness table for EmptyView;
  v60 = swift_getWitnessTable();
  v342 = v57;
  v399 = v57;
  v341 = v60;
  AssociatedTypeWitness = v60;
  v61 = swift_getOpaqueTypeMetadata2();
  v268 = *(v61 - 8);
  __chkstk_darwin(v61);
  v266 = v261 - v62;
  v344 = sub_10000B3DC(&qword_10021A310);
  v269 = v61;
  v63 = type metadata accessor for ModifiedContent();
  v271 = *(v63 - 8);
  v64 = __chkstk_darwin(v63);
  v270 = v261 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v265 = v261 - v67;
  __chkstk_darwin(v66);
  v267 = v261 - v68;
  v69 = sub_100009F70(&qword_100222098);
  v276 = *(v69 - 8);
  v277 = v69;
  __chkstk_darwin(v69);
  v275 = v261 - v70;
  v71 = sub_100009F70(&qword_1002220A0);
  v279 = *(v71 - 8);
  v280 = v71;
  __chkstk_darwin(v71);
  v274 = v261 - v72;
  v73 = sub_100009F70(&qword_100221FD8);
  v74 = __chkstk_darwin(v73);
  v278 = v261 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v281 = v261 - v76;
  v77 = v355;
  v78 = swift_getAssociatedTypeWitness();
  v329 = v78;
  v79 = type metadata accessor for Optional();
  v272 = *(v79 - 8);
  v273 = v79;
  v80 = __chkstk_darwin(v79);
  v314 = (v261 - v81);
  v312 = *(v78 - 8);
  __chkstk_darwin(v80);
  v313 = v261 - v82;
  v310 = v73;
  v336 = v63;
  v333 = type metadata accessor for _ConditionalContent();
  v335 = type metadata accessor for Optional();
  v334 = *(v335 - 8);
  v83 = __chkstk_darwin(v335);
  v347 = v261 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v346 = v261 - v85;
  v350 = v52;
  v86 = v51;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader();
  v87 = type metadata accessor for Section();
  v330 = *(v87 - 8);
  __chkstk_darwin(v87);
  v89 = v261 - v88;
  v90 = swift_getWitnessTable();
  v407 = &protocol witness table for EmptyView;
  v408 = v90;
  v409 = &protocol witness table for EmptyView;
  v315 = swift_getWitnessTable();
  v399 = v87;
  AssociatedTypeWitness = v315;
  v91 = swift_getOpaqueTypeMetadata2();
  v92 = *(v91 - 8);
  v316 = v91;
  v317 = v92;
  __chkstk_darwin(v91);
  v311 = v261 - v93;
  v345 = type metadata accessor for ModifiedContent();
  v332 = *(v345 - 1);
  v94 = __chkstk_darwin(v345);
  v344 = v261 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v94);
  v343 = v261 - v96;
  v358 = v86;
  v97 = v352;
  v359 = v352;
  v98 = v349;
  v360 = v349;
  v361 = v77;
  v99 = v350;
  v362 = v350;
  v363 = v351;
  v364 = v353;
  v100 = v356;
  v365 = v356;
  v366 = v357;
  v101 = v351;
  v102 = v353;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v103 = v315;
  View.listSectionSeparator(_:edges:)();
  (*(v330 + 8))(v89, v87);
  v399 = v354;
  AssociatedTypeWitness = v97;
  v401 = v98;
  WitnessTable = v355;
  AssociatedConformanceWitness = v99;
  v404 = v101;
  v405 = v102;
  v406 = v100;
  v104 = type metadata accessor for ArtistEventView();
  sub_100174B3C(v104);
  v399 = v105;
  AssociatedTypeWitness = v106;
  v401 = v107;
  WitnessTable = v108;
  LOBYTE(AssociatedConformanceWitness) = 0;
  v417 = *&v87;
  v418 = *&v103;
  v109 = swift_getOpaqueTypeConformance2();
  v110 = v344;
  v111 = v316;
  v112 = v311;
  View.listRowInsets(_:)();
  (*(v317 + 8))(v112, v111);
  v113 = sub_10000D1EC(&qword_10021A498, &qword_10021A310);
  v397 = v109;
  v114 = v329;
  v331 = v113;
  v398 = v113;
  v115 = v345;
  v315 = swift_getWitnessTable();
  sub_100157EFC(v110, v115, v315);
  v116 = v332 + 8;
  v316 = *(v332 + 8);
  v316(v110, v115);
  v117 = v312;
  sub_10016F338(v104);
  v118 = v314;
  sub_10019FAF8(v314);
  v119 = v118;

  v120 = (*(v117 + 48))(v118, 1, v114);
  v317 = v116;
  v330 = v104;
  if (v120 != 1)
  {
    v134 = v313;
    v135 = (*(v117 + 32))(v313, v119, v114);
    __chkstk_darwin(v135);
    v136 = v352;
    v261[-10] = v354;
    v261[-9] = v136;
    v137 = v355;
    v261[-8] = v349;
    v261[-7] = v137;
    v138 = v351;
    v261[-6] = v350;
    v261[-5] = v138;
    v139 = v356;
    v261[-4] = v353;
    v261[-3] = v139;
    v140 = v357;
    v261[-2] = v134;
    v261[-1] = v140;
    type metadata accessor for PromotionalPlaylistModule();
    sub_10017CF40(&qword_1002220B8, type metadata accessor for PromotionalPlaylistModule);
    v141 = v275;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_10017B930();
    v142 = v274;
    v143 = v277;
    View.listSectionSeparator(_:edges:)();
    (*(v276 + 8))(v141, v143);
    v144 = *(v140 + 16);
    if (!v144)
    {
      goto LABEL_41;
    }

    if (*(v144 + 88) && *(v144 + 80) == 1)
    {
    }

    else
    {
      v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v145 & 1) == 0)
      {

        goto LABEL_20;
      }
    }

    v146 = [objc_opt_self() currentDevice];
    v147 = v142;
    v148 = [v146 userInterfaceIdiom];

    v149 = v148 == 1;
    v142 = v147;
    if (v149)
    {
      v150 = v117;
      v151 = 13.0;
      v152 = 28.0;
      v153 = 100.0;
LABEL_21:
      v166 = v278;
      (*(v279 + 32))(v278, v142, v280);
      v167 = v310;
      v168 = v166 + *(v310 + 36);
      *v168 = v152;
      *(v168 + 8) = v153;
      *(v168 + 16) = v151;
      *(v168 + 24) = v153;
      *(v168 + 32) = 0;
      v169 = v281;
      sub_10000F618(v166, v281, &qword_100221FD8);
      v170 = sub_10017B83C();
      v417 = *&v342;
      v418 = *&v341;
      v369 = swift_getOpaqueTypeConformance2();
      v370 = v331;
      v171 = swift_getWitnessTable();
      v172 = v347;
      sub_100061878(v169, v167);
      sub_10000D52C(v169, &qword_100221FD8);
      (*(*(v333 - 8) + 56))(v172, 0, 1, v333);
      v367 = v170;
      v368 = v171;
      swift_getWitnessTable();
      sub_100150FB8(v172, v346);
      v314 = *(v334 + 8);
      v314(v172, v335);
      (*(v150 + 8))(v313, v329);
      v157 = v350;
      v158 = v356;
      v123 = v349;
      v159 = v352;
      goto LABEL_25;
    }

LABEL_20:
    v150 = v117;
    v153 = 16.0;
    v151 = 13.0;
    v152 = 28.0;
    goto LABEL_21;
  }

  v121 = v352;
  v122 = v356;
  v123 = v349;
  v124 = v355;
  v125 = v350;
  (*(v272 + 8))(v118, v273);
  sub_10016F338(v104);
  v126 = sub_10019FD9C();

  if ((v126 & 1) == 0)
  {
    v154 = v347;
    (*(*(v333 - 8) + 56))(v347, 1, 1, v333);
    v155 = sub_10017B83C();
    v417 = *&v342;
    v418 = *&v341;
    v395 = swift_getOpaqueTypeConformance2();
    v396 = v331;
    v156 = swift_getWitnessTable();
    v393 = v155;
    v394 = v156;
    swift_getWitnessTable();
    sub_100150FB8(v154, v346);
    v314 = *(v334 + 8);
    v314(v154, v335);
    v157 = v125;
    v158 = v122;
    v159 = v121;
    goto LABEL_25;
  }

  __chkstk_darwin(v127);
  v261[-10] = v354;
  v261[-9] = v121;
  v261[-8] = v123;
  v261[-7] = v124;
  v128 = v351;
  v261[-6] = v125;
  v261[-5] = v128;
  v261[-4] = v353;
  v261[-3] = v122;
  v129 = v357;
  v261[-2] = v357;
  v130 = v262;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v131 = v266;
  v132 = v342;
  View.listSectionSeparator(_:edges:)();
  (*(v264 + 8))(v130, v132);
  v133 = *(v129 + 16);
  if (!v133)
  {
    goto LABEL_41;
  }

  if (*(v133 + 88) && *(v133 + 80) == 1)
  {
  }

  else
  {
    v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v160 & 1) == 0)
    {

      goto LABEL_23;
    }
  }

  v161 = [objc_opt_self() currentDevice];
  v162 = [v161 userInterfaceIdiom];

  if (v162 != 1)
  {
LABEL_23:
    v165 = 16.0;
    v163 = 13.0;
    v164 = 28.0;
    goto LABEL_24;
  }

  v163 = 13.0;
  v164 = 28.0;
  v165 = 100.0;
LABEL_24:
  v417 = v164;
  v418 = v165;
  v419 = v163;
  v420 = v165;
  v421 = 0;
  v389 = v342;
  v390 = v341;
  v173 = swift_getOpaqueTypeConformance2();
  v174 = v265;
  v175 = v269;
  View.listRowInsets(_:)();
  (*(v268 + 8))(v131, v175);
  v373 = v173;
  v374 = v331;
  v176 = v336;
  v177 = swift_getWitnessTable();
  v178 = v267;
  sub_100157EFC(v174, v176, v177);
  v179 = *(v271 + 8);
  v179(v174, v176);
  v180 = v270;
  sub_100157EFC(v178, v176, v177);
  v181 = sub_10017B83C();
  v182 = v347;
  sub_100061970(v180, v310, v176);
  v179(v180, v176);
  v179(v178, v176);
  (*(*(v333 - 8) + 56))(v182, 0, 1, v333);
  v371 = v181;
  v372 = v177;
  swift_getWitnessTable();
  sub_100150FB8(v182, v346);
  v314 = *(v334 + 8);
  v314(v182, v335);
  v159 = v352;
  v157 = v350;
  v158 = v356;
LABEL_25:
  v183 = v330;
  sub_10016F338(v330);
  v184 = sub_1001A0A1C();

  if (v184)
  {
    __chkstk_darwin(v185);
    v261[-10] = v354;
    v261[-9] = v159;
    v186 = v355;
    v261[-8] = v123;
    v261[-7] = v186;
    v187 = v351;
    v261[-6] = v157;
    v261[-5] = v187;
    v261[-4] = v353;
    v261[-3] = v158;
    v188 = v357;
    v261[-2] = v357;
    sub_100009F70(&qword_10021A4A0);
    sub_10017BBA0(&qword_10021A4A8, &qword_10021A4A0, &unk_1001AFB50, sub_1000433DC);
    v189 = v282;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_1000434AC();
    v190 = v287;
    v191 = v284;
    View.listSectionSeparator(_:edges:)();
    (*(v283 + 8))(v189, v191);
    v192 = *(v188 + 16);
    if (v192)
    {
      if (*(v192 + 88) && *(v192 + 80) == 1)
      {

        v193 = v354;
      }

      else
      {
        v198 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v193 = v354;
        if ((v198 & 1) == 0)
        {

          goto LABEL_35;
        }
      }

      v199 = [objc_opt_self() currentDevice];
      v200 = [v199 userInterfaceIdiom];

      if (v200 == 1)
      {
        v201 = 2.0;
        v202 = 100.0;
LABEL_36:
        v203 = v285;
        (*(v288 + 32))(v285, v190, v289);
        v204 = v203 + *(v286 + 36);
        *v204 = 0;
        *(v204 + 8) = v202;
        *(v204 + 16) = v201;
        *(v204 + 24) = v202;
        *(v204 + 32) = 0;
        v205 = v290;
        v206 = sub_10000F618(v203, v290, &qword_100222090);
        __chkstk_darwin(v206);
        v207 = v352;
        v261[-10] = v193;
        v261[-9] = v207;
        v208 = v355;
        v261[-8] = v349;
        v261[-7] = v208;
        v209 = v351;
        v261[-6] = v157;
        v261[-5] = v209;
        v210 = v356;
        v261[-4] = v353;
        v261[-3] = v210;
        v261[-2] = v357;
        sub_100009F70(&qword_1002220D8);
        sub_10000D1EC(&qword_1002220E0, &qword_1002220D8);
        v211 = v292;
        Section<>.init(content:)();
        static VerticalEdge.Set.all.getter();
        sub_10017BC6C();
        v212 = v293;
        v213 = v296;
        View.listSectionSeparator(_:edges:)();
        (*(v294 + 8))(v211, v213);
        v214 = v212 + *(v295 + 36);
        *v214 = 0;
        *(v214 + 8) = 0;
        *(v214 + 16) = xmmword_1001ACAE0;
        *(v214 + 32) = 0;
        sub_10017BD28();
        v215 = v297;
        View.accessibilityIdentifier(_:)();
        sub_10000D52C(v212, &qword_100222078);
        v216 = v205;
        v217 = v205;
        v218 = v291;
        sub_10000D58C(v217, v291, &qword_100222090);
        v219 = v298;
        sub_10000D58C(v215, v298, &qword_100222080);
        v220 = v299;
        sub_10000D58C(v218, v299, &qword_100222090);
        v221 = sub_100009F70(&qword_1002220F8);
        sub_10000D58C(v219, v220 + *(v221 + 48), &qword_100222080);
        sub_10000D52C(v215, &qword_100222080);
        sub_10000D52C(v216, &qword_100222090);
        v123 = v349;
        v159 = v352;
        sub_10000D52C(v219, &qword_100222080);
        v196 = v355;
        sub_10000D52C(v218, &qword_100222090);
        v195 = v348;
        sub_10000F618(v220, v348, &qword_100222068);
        v194 = 0;
        v197 = v340;
        v183 = v330;
        goto LABEL_37;
      }

LABEL_35:
      v202 = 16.0;
      v201 = 2.0;
      goto LABEL_36;
    }

LABEL_41:
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v194 = 1;
  v195 = v348;
  v196 = v355;
  v197 = v340;
LABEL_37:
  (*(v318 + 56))(v195, v194, 1, v319);
  v222 = v357;
  sub_10016F338(v183);
  v223 = sub_1001A5918();

  v389 = v223;
  swift_getWitnessTable();
  v224 = Collection.isEmpty.getter();

  __chkstk_darwin(v225);
  v261[-10] = v354;
  v261[-9] = v159;
  v261[-8] = v123;
  v261[-7] = v196;
  v226 = v351;
  v261[-6] = v350;
  v261[-5] = v226;
  v227 = v356;
  v261[-4] = v353;
  v261[-3] = v227;
  v261[-2] = v222;
  if (v224)
  {
    sub_100009F70(&qword_10021A4E0);
    sub_10017BBA0(&qword_10021A4D8, &qword_10021A4E0, &unk_1001AFB60, sub_10002DB5C);
    v228 = v300;
    Section<>.init(content:)();
    v229 = v325;
    v230 = v228 + *(v325 + 36);
    *v230 = 0x4049000000000000;
    *(v230 + 8) = 0;
    *(v230 + 16) = 0;
    *(v230 + 24) = 0;
    *(v230 + 32) = 0;
    static VerticalEdge.Set.all.getter();
    v231 = sub_10017BA08();
    v232 = v301;
    View.listSectionSeparator(_:edges:)();
    sub_10000D52C(v228, &qword_100222060);
    v389 = v229;
    v390 = v231;
    swift_getOpaqueTypeConformance2();
    v389 = v197;
    v390 = v339;
    swift_getOpaqueTypeConformance2();
    v233 = v324;
    v234 = v322;
    sub_100061878(v232, v322);
    (*(v303 + 8))(v232, v234);
  }

  else
  {
    v235 = v306;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    v236 = v305;
    v237 = v339;
    View.listSectionSeparator(_:edges:)();
    (*(v309 + 8))(v235, v197);
    v389 = v197;
    v390 = v237;
    v238 = swift_getOpaqueTypeConformance2();
    v239 = v304;
    v240 = v323;
    sub_100157EFC(v236, v323, v238);
    v241 = *(v308 + 8);
    v241(v236, v240);
    sub_100157EFC(v239, v240, v238);
    v242 = sub_10017BA08();
    v229 = v325;
    v389 = v325;
    v390 = v242;
    swift_getOpaqueTypeConformance2();
    v233 = v324;
    sub_100061970(v236, v322, v240);
    v241(v236, v240);
    v241(v239, v240);
  }

  v243 = v344;
  v244 = v345;
  (*(v332 + 16))(v344, v343);
  v389 = v243;
  v245 = v347;
  v246 = v335;
  (*(v334 + 16))(v347, v346, v335);
  v390 = v245;
  v247 = v337;
  sub_10000D58C(v348, v337, &qword_100221FE0);
  v391 = v247;
  v248 = v326;
  v249 = v338;
  v250 = v327;
  (*(v326 + 16))(v338, v233, v327);
  v392 = v249;
  v388[0] = v244;
  v388[1] = v246;
  v388[2] = v320;
  v388[3] = v250;
  v384 = v315;
  v251 = sub_10017B83C();
  v382 = v342;
  v383 = v341;
  v380 = swift_getOpaqueTypeConformance2();
  v381 = v331;
  v252 = swift_getWitnessTable();
  v378 = v251;
  v379 = v252;
  v377 = swift_getWitnessTable();
  v385 = swift_getWitnessTable();
  v386 = sub_10017BAC0();
  v253 = sub_10017BA08();
  v382 = v229;
  v383 = v253;
  v254 = swift_getOpaqueTypeConformance2();
  v382 = v340;
  v383 = v339;
  v255 = swift_getOpaqueTypeConformance2();
  v375 = v254;
  v376 = v255;
  v387 = swift_getWitnessTable();
  sub_100151024(&v389, 4uLL, v388);
  v256 = *(v248 + 8);
  v256(v233, v250);
  sub_10000D52C(v348, &qword_100221FE0);
  v257 = v314;
  v314(v346, v246);
  v258 = v345;
  v259 = v316;
  v316(v343, v345);
  v256(v338, v250);
  sub_10000D52C(v337, &qword_100221FE0);
  v257(v347, v246);
  return v259(v344, v258);
}

uint64_t sub_100174808@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v37 = a4;
  v38 = a6;
  v35 = a2;
  v36 = a3;
  v41 = a8;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  __chkstk_darwin(v12 - 8);
  v40 = &v34 - v13;
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ArtistEventListHeaderViewModel();
  __chkstk_darwin(v14 - 8);
  v34 = &v34 - v15;
  v16 = type metadata accessor for ArtistEventListHeader();
  v39 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v42 = a1;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = a5;
  v47 = v38;
  v48 = a7;
  v49 = a9;
  v22 = type metadata accessor for ArtistEventView();
  sub_10016F338(v22);
  v23 = sub_10019FA10();
  v37 = v24;
  v38 = v23;

  v25 = sub_10016F338(v22);
  v26 = (v25 + *(*v25 + 256));
  v28 = *v26;
  v27 = v26[1];

  sub_10016F338(v22);
  v29 = v40;
  sub_10019FA84();

  v30 = v34;
  sub_10016ED9C(v38, v37, v28, v27, v29, v34);
  sub_100090B9C(v30, v19);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v19, v16, WitnessTable);
  v32 = *(v39 + 8);
  v32(v19, v16);
  sub_100157EFC(v21, v16, WitnessTable);
  return (v32)(v21, v16);
}

uint64_t sub_100174B3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (*(v2 + 88) && *(v2 + 80) == 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    sub_10016F338(a1);
    v7 = sub_10019FD9C();

    if ((v7 & 1) == 0)
    {
      sub_10016F338(a1);
      sub_1001A31F4();
    }

    return result;
  }

LABEL_11:
  sub_10016F338(a1);
  v9 = sub_10019FD9C();

  if ((v9 & 1) == 0)
  {
    sub_10016F338(a1);
    sub_1001A31F4();
  }

  return result;
}

uint64_t sub_100174D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  *&v36 = a7;
  *(&v36 + 1) = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_100043D3C(&v37);
  (*(*(AssociatedTypeWitness - 8) + 16))(v18, a1, AssociatedTypeWitness);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v19 + 64);
    v20 = *(v19 + 72);

    *&v40 = a3;
    *(&v40 + 1) = a4;
    *&v41 = a5;
    *(&v41 + 1) = a6;
    v42 = v36;
    v43 = a10;
    v22 = type metadata accessor for ArtistEventView();
    sub_10016F338(v22);
    v23 = sub_10019FC4C();

    if (qword_100218450 != -1)
    {
      swift_once();
    }

    *&v40 = qword_100230608;

    *(&v40 + 1) = LocalizedStringKey.init(stringLiteral:)();
    *&v41 = v24;
    BYTE8(v41) = v25 & 1;
    *&v42 = v26;
    sub_100071318(&v37, &v42 + 8);
    *v45 = v21;
    *&v45[8] = v20;
    *&v45[16] = v23;
    *&v45[24] = 1793;
    v27 = *v45;
    *(a9 + 64) = v44;
    *(a9 + 80) = v27;
    *(a9 + 90) = *&v45[10];
    v28 = v41;
    *a9 = v40;
    *(a9 + 16) = v28;
    v29 = v43;
    *(a9 + 32) = v42;
    *(a9 + 48) = v29;
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    *(a9 + 112) = EnvironmentObject.init()();
    *(a9 + 120) = v30;
    v31 = type metadata accessor for PromotionalPlaylistModule();
    v32 = v31[6];
    *(a9 + v32) = swift_getKeyPath();
    sub_100009F70(&qword_100218DF8);
    swift_storeEnumTagMultiPayload();
    v33 = v31[7];
    *(a9 + v33) = swift_getKeyPath();
    sub_100009F70(&qword_100219718);
    swift_storeEnumTagMultiPayload();
    v34 = v31[8];
    *(a9 + v34) = swift_getKeyPath();
    sub_100009F70(&qword_100219720);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001750C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v74 = a8;
  v73 = a5;
  v72 = a4;
  v79 = a1;
  v77 = a9;
  v71 = a10;
  v17 = type metadata accessor for PlainButtonStyle();
  v60 = v17;
  v76 = *(v17 - 8);
  __chkstk_darwin(v17);
  v75 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a2;
  v90 = a3;
  v91 = a4;
  v92 = a5;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v96 = a10;
  v78 = type metadata accessor for ArtistEventView();
  v19 = *(v78 - 8);
  v70 = *(v19 + 64);
  __chkstk_darwin(v78);
  v21 = &v54 - v20;
  v55 = &v54 - v20;
  v68 = a7;
  swift_getAssociatedTypeWitness();
  v54 = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89 = a2;
  v90 = AssociatedTypeWitness;
  v91 = a6;
  v92 = AssociatedConformanceWitness;
  v24 = a6;
  v67 = type metadata accessor for PromotionalAssetsEntryView();
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for Button();
  v69 = *(v25 - 8);
  __chkstk_darwin(v25);
  v62 = &v54 - v26;
  v28 = v27;
  v61 = v27;
  v29 = swift_getWitnessTable();
  v59 = v29;
  v58 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v89 = v28;
  v90 = v17;
  v91 = v29;
  v92 = v58;
  v63 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  v30 = __chkstk_darwin(OpaqueTypeMetadata2);
  v56 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v57 = &v54 - v32;
  v33 = v19;
  (*(v19 + 16))(v21, v79, v78);
  v34 = (*(v19 + 80) + 80) & ~*(v19 + 80);
  v35 = swift_allocObject();
  v36 = a2;
  *(v35 + 2) = a2;
  *(v35 + 3) = a3;
  v37 = v72;
  v38 = v73;
  *(v35 + 4) = v72;
  *(v35 + 5) = v38;
  v39 = v68;
  *(v35 + 6) = v24;
  *(v35 + 7) = v39;
  v40 = v74;
  v41 = v71;
  *(v35 + 8) = v74;
  *(v35 + 9) = v41;
  (*(v33 + 32))(&v35[v34], v55, v78);
  v80 = v36;
  v81 = v54;
  v82 = v37;
  v83 = v38;
  v84 = v24;
  v85 = v39;
  v86 = v40;
  v87 = v41;
  v88 = v79;
  v42 = v62;
  Button.init(action:label:)();
  v43 = v75;
  PlainButtonStyle.init()();
  v44 = v56;
  v45 = v61;
  v46 = v60;
  v47 = v59;
  v48 = v58;
  View.buttonStyle<A>(_:)();
  (*(v76 + 8))(v43, v46);
  (*(v69 + 8))(v42, v45);
  v89 = v45;
  v90 = v46;
  v91 = v47;
  v92 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v57;
  v51 = OpaqueTypeMetadata2;
  sub_100157EFC(v44, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v52 = *(v65 + 8);
  v52(v44, v51);
  sub_100157EFC(v50, v51, OpaqueTypeConformance2);
  return (v52)(v50, v51);
}

uint64_t sub_10017576C(uint64_t a1)
{
  v2 = type metadata accessor for ArtistEventView();
  sub_10016F338(v2);
  sub_1001A0014();

  sub_10016F338(v2);
  if (*(a1 + 16))
  {

    sub_1001A00EC(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100175868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a1;
  v49 = a8;
  v46 = a4;
  v47 = a5;
  v50 = a9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = __chkstk_darwin(v15 - 8);
  v45 = &v40 - v17;
  v44 = *(a2 - 8);
  __chkstk_darwin(v16);
  v43 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = a2;
  v52 = AssociatedTypeWitness;
  v53 = a6;
  v54 = AssociatedConformanceWitness;
  v20 = AssociatedConformanceWitness;
  v42 = AssociatedConformanceWitness;
  v21 = type metadata accessor for PromotionalAssetsEntryViewModel();
  __chkstk_darwin(v21 - 8);
  v40 = a6;
  v41 = &v40 - v22;
  v51 = a2;
  v52 = AssociatedTypeWitness;
  v53 = a6;
  v54 = v20;
  v23 = a6;
  v24 = type metadata accessor for PromotionalAssetsEntryView();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v40 - v29;
  v51 = a2;
  v52 = a3;
  v53 = v46;
  v54 = v47;
  v55 = v23;
  v56 = a7;
  v57 = v49;
  v58 = a10;
  v31 = type metadata accessor for ArtistEventView();
  v32 = sub_10016F338(v31);
  v33 = v43;
  (*(v44 + 16))(v43, v32 + *(*v32 + 200), a2);

  sub_10016F338(v31);
  v34 = v45;
  sub_1001A06AC(v45);

  v35 = v40;
  v36 = v41;
  sub_1000863B0(v33, v34, 1, a2, v41);
  sub_100144FAC(v36, *&a2, AssociatedTypeWitness, v35, v28);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v28, v24, WitnessTable);
  v38 = *(v25 + 8);
  v38(v28, v24);
  sub_100157EFC(v30, v24, WitnessTable);
  return (v38)(v30, v24);
}

uint64_t sub_100175C68()
{
  v0 = type metadata accessor for ArtistEventView();
  sub_10016F338(v0);

  v1 = Text.init(_:tableName:bundle:comment:)();
  v3 = v2;
  v5 = v4;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  sub_10000D60C(v1, v3, v5 & 1);

  static Color.primary.getter();
  swift_getKeyPath();
  sub_100009F70(&qword_10021A4B8);
  sub_1000433DC();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v6, v8, v10 & 1);
}

uint64_t sub_100175E5C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(uint64_t a1, unint64_t a2)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t a1, unint64_t a2)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = static HorizontalAlignment.leading.getter();
  *(a9 + 8) = 0x4030000000000000;
  *(a9 + 16) = 0;
  v19 = sub_100009F70(&qword_100222100);
  return sub_100175F1C(a1, a2, a3, a4, a5, a6, a7, a8, a9 + *(v19 + 44), a10);
}

uint64_t sub_100175F1C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(uint64_t a1, unint64_t a2)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t a1, unint64_t a2)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v75 = a9;
  v79 = type metadata accessor for Divider();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100009F70(&qword_100219C30);
  v19 = __chkstk_darwin(v76);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v67 = &v67 - v23;
  __chkstk_darwin(v22);
  v80 = &v67 - v24;
  v68 = a2;
  v90 = a2;
  v91 = a3;
  v69 = a3;
  v71 = a4;
  v92 = a4;
  v93 = a5;
  v72 = a5;
  v73 = a6;
  v94 = a6;
  v95 = a7;
  KeyPath = a7;
  v25 = a8;
  v96 = a8;
  v97 = a10;
  v70 = a10;
  v26 = type metadata accessor for ArtistEventView();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v67 - v29;
  sub_10016F338(v28);
  v31 = *(a1 + 16);
  if (v31)
  {
    v32 = *(v31 + 88);
    v81 = v21;
    if (v32 && (*(v31 + 80) & 1) != 0)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v33 = 1;
    }

    v84 = sub_1001A0AB4(v33 & 1);

    sub_10016F338(v26);
    v83 = sub_1001A5D5C();
    v82 = v34;
    sub_1000E4108(v83, v34);

    (*(v27 + 16))(v30, a1, v26);
    v35 = (*(v27 + 80) + 80) & ~*(v27 + 80);
    v36 = swift_allocObject();
    v37 = v69;
    *(v36 + 2) = v68;
    *(v36 + 3) = v37;
    v38 = v72;
    *(v36 + 4) = v71;
    *(v36 + 5) = v38;
    v39 = KeyPath;
    *(v36 + 6) = v73;
    *(v36 + 7) = v39;
    v40 = v70;
    *(v36 + 8) = v25;
    *(v36 + 9) = v40;
    (*(v27 + 32))(&v36[v35], v30, v26);
    KeyPath = swift_getKeyPath();
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    v73 = EnvironmentObject.init()();
    v72 = v41;
    v99 = 0;
    v42 = v77;
    Divider.init()();
    v43 = static Edge.Set.leading.getter();
    if (*(v31 + 88) && *(v31 + 80) == 1)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    v45 = [objc_opt_self() currentDevice];
    [v45 userInterfaceIdiom];

LABEL_12:
    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v67;
    (*(v78 + 32))(v67, v42, v79);
    v55 = v54 + *(v76 + 36);
    *v55 = v43;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    v56 = v80;
    sub_10017C098(v54, v80);
    v57 = v99;
    v58 = v81;
    sub_10000D58C(v56, v81, &qword_100219C30);
    *&v85 = v84;
    *(&v85 + 1) = v83;
    *&v86 = v82;
    *(&v86 + 1) = sub_10017BFC4;
    v59 = v73;
    *&v87 = v36;
    *(&v87 + 1) = v73;
    v60 = v72;
    v61 = KeyPath;
    *&v88 = v72;
    *(&v88 + 1) = KeyPath;
    v89 = v57;
    v62 = v75;
    *(v75 + 64) = v57;
    v63 = v88;
    v62[2] = v87;
    v62[3] = v63;
    v64 = v86;
    *v62 = v85;
    v62[1] = v64;
    v65 = sub_100009F70(&qword_100222108);
    sub_10000D58C(v58, v62 + *(v65 + 48), &qword_100219C30);
    sub_1000E256C(&v85, &v90);
    sub_10000D52C(v56, &qword_100219C30);
    sub_10000D52C(v58, &qword_100219C30);
    v90 = v84;
    v91 = v83;
    v92 = v82;
    v93 = sub_10017BFC4;
    v94 = v36;
    v95 = v59;
    v96 = v60;
    v97 = v61;
    v98 = v57;
    return sub_10017C108(&v90);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100176658(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a7;
  v41 = a8;
  v38 = a11;
  v39 = a6;
  v36 = a10;
  v37 = a5;
  v34 = a9;
  v35 = a4;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v14 = type metadata accessor for ArtistEventView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v34 - v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v15 + 16))(v18, a3, v14);
  type metadata accessor for MainActor();
  v23 = a2;
  sub_1000E4108(a1, a2);
  v24 = static MainActor.shared.getter();
  v25 = (*(v15 + 80) + 96) & ~*(v15 + 80);
  v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = v24;
  *(v27 + 3) = &protocol witness table for MainActor;
  v28 = v37;
  *(v27 + 4) = v35;
  *(v27 + 5) = v28;
  v29 = v40;
  *(v27 + 6) = v39;
  *(v27 + 7) = v29;
  v30 = v34;
  *(v27 + 8) = v41;
  *(v27 + 9) = v30;
  v31 = v38;
  *(v27 + 10) = v36;
  *(v27 + 11) = v31;
  (*(v15 + 32))(&v27[v25], v18, v14);
  v32 = &v27[v26];
  *v32 = a1;
  v32[1] = v23;
  sub_10013F12C(0, 0, v21, &unk_1001BBBD0, v27);
}

uint64_t sub_1001768D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  *(v8 + 136) = v13;
  *(v8 + 120) = v12;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  type metadata accessor for MainActor();
  *(v8 + 168) = static MainActor.shared.getter();
  *(v8 + 176) = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 184) = v9;

  return _swift_task_switch(sub_10017698C);
}

uint64_t sub_10017698C()
{
  *(v0 + 16) = *(v0 + 104);
  v1 = *(v0 + 136);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v1;
  *(v0 + 64) = *(v0 + 152);
  v2 = type metadata accessor for ArtistEventView();
  *(v0 + 192) = v2;
  *(v0 + 200) = sub_10016F338(v2);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_100176A5C;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  return sub_1001A0D10(v5, v4);
}

uint64_t sub_100176A5C()
{

  return _swift_task_switch(sub_100176BA0);
}

uint64_t sub_100176BA0()
{
  v1 = v0[24];
  v2 = v0[12];

  sub_10016F338(v1);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xEF6E6F697461636FLL;
      v4 = 0x4C746E6572727563;
    }

    else
    {
      v4 = v0[11];
      v3 = v0[12];
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  v5 = v0[11];
  v6 = *(v0[10] + 16);
  v7 = v0[12];
  if (v6)
  {
    sub_1000E4108(v5, v7);

    sub_1001A123C(9, v4, v3, 2u, v6);

    v8 = v0[1];

    return v8();
  }

  else
  {
    sub_1000E4108(v5, v7);
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_100176D2C()
{
  v0 = type metadata accessor for ArtistEventView();
  sub_10016F338(v0);

  v1 = Text.init(_:tableName:bundle:comment:)();
  v3 = v2;
  v5 = v4;
  static Font.Weight.semibold.getter();
  v6 = Text.fontWeight(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10000D60C(v1, v3, v5 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v24 = v10 & 1;
  *&v14 = v6;
  *(&v14 + 1) = v8;
  LOBYTE(v15) = v10 & 1;
  *(&v15 + 1) = v12;
  sub_100009F70(&qword_100219DC0);
  sub_10002DB5C();
  View.accessibilityIdentifier(_:)();
  v23[6] = v20;
  v23[7] = v21;
  v23[8] = v22;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v23[5] = v19;
  v23[0] = v14;
  v23[1] = v15;
  return sub_10000D52C(v23, &qword_100219DC0);
}

uint64_t sub_100176F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = a6;
  v53 = a8;
  v50 = a4;
  v51 = a5;
  v54 = a9;
  v48 = a2;
  v49 = a10;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  v46 = a7;
  v62 = a8;
  v63 = a10;
  v13 = type metadata accessor for ArtistEventView();
  v14 = *(v13 - 8);
  v47 = *(v14 + 64);
  __chkstk_darwin(v13);
  v40 = &v39 - v15;
  v16 = type metadata accessor for Array();
  v44 = v16;
  v39 = *(*(a7 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = AssociatedTypeWitness;
  v18 = sub_10000B3DC(&qword_100221FF0);
  v42 = v18;
  WitnessTable = swift_getWitnessTable();
  v41 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v16;
  v57 = AssociatedTypeWitness;
  v58 = v18;
  v59 = WitnessTable;
  v60 = AssociatedConformanceWitness;
  v21 = type metadata accessor for ForEach();
  v45 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v39 - v25;
  v27 = a1;
  sub_10016F338(v13);
  v28 = sub_1001A5918();

  v56 = v28;
  v29 = v40;
  (*(v14 + 16))(v40, v27, v13);
  v30 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v48;
  *(v31 + 3) = a3;
  v32 = v51;
  *(v31 + 4) = v50;
  *(v31 + 5) = v32;
  v33 = v46;
  *(v31 + 6) = v52;
  *(v31 + 7) = v33;
  v34 = v49;
  *(v31 + 8) = v53;
  *(v31 + 9) = v34;
  (*(v14 + 32))(&v31[v30], v29, v13);
  v35 = sub_10017AC40();
  ForEach<>.init(_:content:)();
  v55 = v35;
  v36 = swift_getWitnessTable();
  sub_100157EFC(v24, v21, v36);
  v37 = *(v45 + 8);
  v37(v24, v21);
  sub_100157EFC(v26, v21, v36);
  return (v37)(v26, v21);
}

uint64_t sub_100177334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v116 = a2;
  v119 = a9;
  v120 = a1;
  v105 = type metadata accessor for PlainButtonStyle();
  v102 = *(v105 - 8);
  v17 = __chkstk_darwin(v105);
  v101 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(a4 - 8);
  __chkstk_darwin(v17);
  v91 = v19;
  v112 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a3;
  v121 = a3;
  v122 = a4;
  v115 = a5;
  v123 = a5;
  v124 = a6;
  v97 = a6;
  v99 = a7;
  v125 = a7;
  v126 = a8;
  v114 = a10;
  v127 = a10;
  v128 = a11;
  v96 = a11;
  v111 = type metadata accessor for ArtistEventView();
  v90 = *(v111 - 8);
  v89 = *(v90 + 64);
  __chkstk_darwin(v111);
  v110 = &v88 - v20;
  v98 = sub_100009F70(&qword_100222010);
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v93 = &v88 - v21;
  v108 = sub_100009F70(&qword_100222110);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v88 - v22;
  v23 = sub_100009F70(&qword_100222008);
  v117 = *(v23 - 8);
  v118 = v23;
  v24 = __chkstk_darwin(v23);
  v104 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v103 = &v88 - v26;
  v100 = a8;
  v27 = *(a8 + 8);
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v32 = &v88 - v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedTypeWitness();
  v109 = type metadata accessor for Optional();
  v35 = *(v109 - 8);
  __chkstk_darwin(v109);
  v37 = &v88 - v36;
  v38 = *(v27 + 176);
  v95 = v28;
  v38(v28, v27);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v30 + 8))(v32, AssociatedTypeWitness);
  v39 = *(v34 - 8);
  if ((*(v39 + 48))(v37, 1, v34) == 1)
  {
    (*(v35 + 8))(v37, v109);
LABEL_8:
    v67 = 1;
    v69 = v118;
    v68 = v119;
    return (*(v117 + 56))(v68, v67, 1, v69);
  }

  v40 = swift_getAssociatedConformanceWitness();
  v41 = (*(v40 + 24))(v34, v40);
  v43 = v42;
  (*(v39 + 8))(v37, v34);
  if (!v43)
  {
    goto LABEL_8;
  }

  v109 = v41;
  v44 = v90;
  (*(v90 + 16))(v110, v116, v111);
  v88 = v43;
  v45 = v92;
  v46 = v95;
  (*(v92 + 16))(v112, v120, v95);
  v47 = (*(v44 + 80) + 80) & ~*(v44 + 80);
  v48 = (v89 + *(v45 + 80) + v47) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = v113;
  *(v49 + 3) = v46;
  v50 = v97;
  *(v49 + 4) = v115;
  *(v49 + 5) = v50;
  v51 = v99;
  v52 = v100;
  *(v49 + 6) = v99;
  *(v49 + 7) = v52;
  v53 = v96;
  *(v49 + 8) = v114;
  *(v49 + 9) = v53;
  (*(v44 + 32))(&v49[v47], v110, v111);
  v54 = (*(v45 + 32))(&v49[v48], v112, v46);
  __chkstk_darwin(v54);
  *(&v88 - 12) = v113;
  *(&v88 - 11) = v46;
  v55 = v114;
  *(&v88 - 10) = v115;
  *(&v88 - 9) = v50;
  *(&v88 - 8) = v51;
  *(&v88 - 7) = v52;
  *(&v88 - 6) = v55;
  *(&v88 - 5) = v53;
  v56 = v116;
  v57 = v109;
  *(&v88 - 4) = v116;
  *(&v88 - 3) = v57;
  v58 = v120;
  *(&v88 - 2) = v88;
  *(&v88 - 1) = v58;
  sub_100009F70(&qword_100222118);
  sub_10017CC8C();
  v59 = v93;
  Button.init(action:label:)();

  v60 = v101;
  PlainButtonStyle.init()();
  sub_10000D1EC(&qword_100222018, &qword_100222010);
  sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v61 = v106;
  v62 = v98;
  v63 = v105;
  View.buttonStyle<A>(_:)();
  (*(v102 + 8))(v60, v63);
  (*(v94 + 8))(v59, v62);
  v64 = static Edge.Set.horizontal.getter();
  v65 = *(v56 + 16);
  if (v65)
  {
    v66 = v64;
    if (*(v65 + 88) && *(v65 + 80) == 1)
    {
    }

    else
    {
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v70 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    v71 = [objc_opt_self() currentDevice];
    [v71 userInterfaceIdiom];

LABEL_12:
    EdgeInsets.init(_all:)();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v104;
    (*(v107 + 32))(v104, v61, v108);
    v81 = v118;
    v82 = &v80[*(v118 + 36)];
    *v82 = v66;
    *(v82 + 1) = v73;
    *(v82 + 2) = v75;
    *(v82 + 3) = v77;
    *(v82 + 4) = v79;
    v82[40] = 0;
    v83 = v80;
    v84 = v103;
    sub_10000F618(v83, v103, &qword_100222008);
    v85 = v84;
    v86 = v119;
    sub_10000F618(v85, v119, &qword_100222008);
    v69 = v81;
    v68 = v86;
    v67 = 0;
    return (*(v117 + 56))(v68, v67, 1, v69);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100177ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v25 = a2;
  v26 = type metadata accessor for Optional();
  v16 = *(v26 - 8);
  __chkstk_darwin(v26);
  v18 = &v23 - v17;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = v24;
  v33 = a9;
  v34 = a10;
  v19 = type metadata accessor for ArtistEventView();
  sub_10016F338(v19);
  v20 = *(a4 - 8);
  (*(v20 + 16))(v18, v25, a4);
  (*(v20 + 56))(v18, 0, 1, a4);
  sub_1001A5DF0(v18);
  (*(v16 + 8))(v18, v26);

  sub_10016F338(v19);
  v21 = *(a1 + 16);
  if (v21)
  {

    sub_1001A123C(10, 13, 0, 3u, v21);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100178110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v58 = a4;
  v68 = a3;
  v63 = a2;
  v66 = type metadata accessor for ArtistEventRow();
  __chkstk_darwin(v66);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_100009F70(&qword_100222160);
  __chkstk_darwin(v64);
  v65 = &v53 - v13;
  v14 = type metadata accessor for DateInterval();
  v60 = *(v14 - 8);
  v61 = v14;
  __chkstk_darwin(v14);
  v59 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v56 = &v53 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53 - v21;
  v23 = sub_100009F70(&qword_100222150);
  v24 = __chkstk_darwin(v23);
  v26 = (&v53 - v25);
  v27 = *(a1 + 16);
  if (!v27)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v55 = v20;
  v62 = v24;
  v28 = *(v27 + 88);
  v67 = a6;
  if (v28 && *(v27 + 80) == 1)
  {

    goto LABEL_6;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_6:
    v30 = [objc_opt_self() currentDevice];
    v31 = [v30 userInterfaceIdiom];

    if (v31 == 1)
    {
      v32 = *(v16 + 176);

      v32(a5, v16);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v34 = (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
      v54 = v35;
      (*(v55 + 8))(v22, v19);
      v36 = v56;
      (*(v16 + 168))(a5, v16);
      v37 = swift_getAssociatedConformanceWitness();
      v38 = v59;
      sub_1000FBF34(AssociatedTypeWitness, v37, v59);
      (*(v57 + 8))(v36, AssociatedTypeWitness);
      type metadata accessor for ArtistEventRowViewModel();
      DateInterval.start.getter();
      (*(v60 + 8))(v38, v61);
      v39 = v68;
      *v26 = v63;
      v26[1] = v39;
      v40 = v54;
      v26[2] = v34;
      v26[3] = v40;
      v41 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
      v42 = (v26 + *(v62 + 36));
      *v42 = v41;
      v42[1] = sub_100178914;
      v42[2] = 0;
      sub_10000D58C(v26, v65, &qword_100222150);
      swift_storeEnumTagMultiPayload();
      sub_10017CE84();
      sub_10017CF40(&qword_100222158, type metadata accessor for ArtistEventRow);
      _ConditionalContent<>.init(storage:)();
      return sub_10000D52C(v26, &qword_100222150);
    }

    goto LABEL_9;
  }

LABEL_9:
  v44 = *(v16 + 176);

  v44(a5, v16);
  v45 = swift_getAssociatedConformanceWitness();
  v46 = (*(v45 + 48))(v19, v45);
  v48 = v47;
  (*(v55 + 8))(v22, v19);
  v49 = v56;
  (*(v16 + 168))(a5, v16);
  v50 = swift_getAssociatedConformanceWitness();
  v51 = v59;
  sub_1000FBF34(AssociatedTypeWitness, v50, v59);
  (*(v57 + 8))(v49, AssociatedTypeWitness);
  type metadata accessor for ArtistEventRowViewModel();
  DateInterval.start.getter();
  (*(v60 + 8))(v51, v61);
  v52 = v68;
  *v12 = v63;
  v12[1] = v52;
  v12[2] = v46;
  v12[3] = v48;
  sub_10017CF88(v12, v65);
  swift_storeEnumTagMultiPayload();
  sub_10017CE84();
  sub_10017CF40(&qword_100222158, type metadata accessor for ArtistEventRow);
  _ConditionalContent<>.init(storage:)();
  return sub_10017CFEC(v12);
}

uint64_t sub_10017893C@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 < 0.0;
  return result;
}

uint64_t sub_100178970(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = type metadata accessor for ArtistEventView();
  sub_10016F338(v3);
  sub_1001A15AC((v2 & 1) == 0);
}

uint64_t sub_1001789E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a8;
  v59 = a7;
  v63 = a9;
  v58 = a10;
  v68 = sub_100009F70(&qword_100222030);
  __chkstk_darwin(v68);
  v67 = &v49 - v16;
  v64 = sub_100009F70(&qword_10021A3A0);
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v49 - v17;
  v62 = sub_100009F70(&qword_10021A3A8);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v49 - v18;
  v19 = sub_100009F70(&qword_10021A3B0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v66 = &v49 - v23;
  v24 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v24 - 8);
  v25 = sub_100009F70(&qword_100222038);
  v65 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  static ToolbarItemPlacement.principal.getter();
  v50 = a2;
  v69 = a2;
  v70 = a3;
  v51 = a3;
  v52 = a4;
  v71 = a4;
  v72 = a5;
  v28 = v58;
  v53 = a5;
  v54 = a6;
  v29 = v59;
  v73 = a6;
  v74 = v59;
  v30 = v60;
  v75 = v60;
  v76 = v58;
  v77 = a1;
  sub_100009F70(&qword_100222040);
  sub_10017B6C4();
  ToolbarItem<>.init(placement:content:)();
  v31 = *(a1 + 16);
  if (v31)
  {
    if (*(v31 + 88) && (*(v31 + 80) & 1) != 0)
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        (*(v61 + 56))(v22, 1, 1, v64);
        v33 = sub_10000D1EC(&qword_10021A410, &qword_10021A3A8);
        v78 = v62;
        v79 = v33;
        swift_getOpaqueTypeConformance2();
        v34 = v66;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_10000D52C(v22, &qword_10021A3B0);
LABEL_8:
        v45 = v67;
        v46 = *(v68 + 48);
        v47 = v65;
        (*(v65 + 16))(v67, v27, v25);
        sub_10000D58C(v34, &v45[v46], &qword_10021A3B0);
        TupleToolbarContent.init(_:)();
        sub_10000D52C(v34, &qword_10021A3B0);
        return (*(v47 + 8))(v27, v25);
      }
    }

    else
    {
    }

    v35 = static ToolbarItemPlacement.navigationBarTrailing.getter();
    v49 = v25;
    v36 = v62;
    __chkstk_darwin(v35);
    v37 = v51;
    *(&v49 - 10) = v50;
    *(&v49 - 9) = v37;
    v38 = v53;
    *(&v49 - 8) = v52;
    *(&v49 - 7) = v38;
    *(&v49 - 6) = v54;
    *(&v49 - 5) = v29;
    *(&v49 - 4) = v30;
    *(&v49 - 3) = v28;
    *(&v49 - 2) = a1;
    sub_100009F70(&qword_10021A418);
    sub_100042D0C();
    v39 = v55;
    ToolbarItem<>.init(placement:content:)();
    v40 = sub_10000D1EC(&qword_10021A410, &qword_10021A3A8);
    v41 = v57;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v42 = v61;
    v43 = v64;
    (*(v61 + 16))(v22, v41, v64);
    (*(v42 + 56))(v22, 0, 1, v43);
    v78 = v36;
    v79 = v40;
    swift_getOpaqueTypeConformance2();
    v34 = v66;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v22, &qword_10021A3B0);
    (*(v42 + 8))(v41, v43);
    v44 = v36;
    v25 = v49;
    (*(v56 + 8))(v39, v44);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100179194@<X0>(uint64_t a1@<X8>)
{
  v6 = static HorizontalAlignment.center.getter();
  sub_1001792E8(v8);
  *&v7[7] = v8[0];
  *&v7[23] = v8[1];
  *&v7[39] = v8[2];
  *&v7[55] = v8[3];
  v2 = type metadata accessor for ArtistEventView();
  sub_10016F338(v2);
  v3 = sub_1001A171C();

  v5 = 0.0;
  if (v3)
  {
    v5 = 1.0;
  }

  *(a1 + 33) = *&v7[16];
  *(a1 + 49) = *&v7[32];
  *(a1 + 65) = *&v7[48];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v7[63];
  *(a1 + 17) = *v7;
  *(a1 + 88) = v5;
  return result;
}

uint64_t sub_1001792E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArtistEventView();
  sub_10016F338(v2);
  sub_10019FA10();

  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v3 = Text.font(_:)();
  v27 = v4;
  v28 = v3;
  HIDWORD(v25) = v5;
  v29 = v6;

  sub_10016F338(v2);

  LOWORD(v25) = 256;
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  static Font.caption.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  sub_10000D60C(v7, v9, v11 & 1);

  v17 = [objc_opt_self() secondaryLabelColor];
  Color.init(uiColor:)();
  v18 = Text.foregroundStyle<A>(_:)();
  v20 = v19;
  LOBYTE(v9) = v21;
  v23 = v22;
  sub_10000D60C(v12, v14, v16 & 1);

  *a1 = v28;
  *(a1 + 8) = v27;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v9 & 1;
  *(a1 + 56) = v23;
  sub_10000D5FC(v28, v27, v26 & 1);

  sub_10000D5FC(v18, v20, v9 & 1);

  sub_10000D60C(v18, v20, v9 & 1);

  sub_10000D60C(v28, v27, v26 & 1);
}

uint64_t sub_1001795C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v15 = type metadata accessor for ArtistEventView();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  (*(v16 + 16))(&v27 - v17, a1, v15);
  v19 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  v21 = v27;
  v22 = v28;
  *(v20 + 4) = a4;
  *(v20 + 5) = v21;
  v24 = v29;
  v23 = v30;
  *(v20 + 6) = v22;
  *(v20 + 7) = v24;
  *(v20 + 8) = v23;
  *(v20 + 9) = a10;
  (*(v16 + 32))(&v20[v19], v18, v15);
  v25 = static Font.title2.getter();
  result = swift_getKeyPath();
  *a9 = 0;
  *(a9 + 8) = sub_10017B7B4;
  *(a9 + 16) = v20;
  *(a9 + 24) = result;
  *(a9 + 32) = v25;
  return result;
}

uint64_t sub_100179758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = type metadata accessor for DismissAction();
  v16 = *(v23 - 8);
  __chkstk_darwin(v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = v22;
  v31 = a9;
  v19 = type metadata accessor for ArtistEventView();
  sub_10016F338(v19);
  v20 = *(a1 + 16);
  if (v20)
  {

    sub_1001A123C(0, 2, 0, 3u, v20);

    sub_100024868(v18);
    DismissAction.callAsFunction()();
    return (*(v16 + 8))(v18, v23);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100179974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, ValueMetadata *a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v42 = a6;
  v43 = a7;
  v44 = a2;
  v45 = a9;
  v36 = a1;
  v40 = a11;
  v41 = a5;
  v38 = a3;
  v39 = a10;
  v13 = type metadata accessor for Optional();
  v14 = __chkstk_darwin(v13 - 8);
  v37 = &v36 - v15;
  Description = a4[-1].Description;
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100042730();
  v20 = sub_100042784();
  v46 = a4;
  v47 = &type metadata for ArtistFetcher;
  v48 = &type metadata for PromotionalPlaylistFetcher;
  v49 = a8;
  v50 = v19;
  v51 = v20;
  v21 = type metadata accessor for MusicEventView();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v36 - v26;
  v46 = a4;
  v47 = &type metadata for ArtistFetcher;
  v48 = &type metadata for PromotionalPlaylistFetcher;
  v49 = a8;
  v50 = v19;
  v51 = v20;
  type metadata accessor for MusicEventViewModel();
  Description[2](v18, v36, a4);
  v46 = v38;
  v47 = a4;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = a8;
  v52 = v39;
  v53 = v40;
  v28 = type metadata accessor for ArtistEventView();
  sub_10016F338(v28);
  v29 = v37;
  sub_1001A18E0(v37);

  sub_1000B1CDC(v18, v29, v30, v31);
  KeyPath = swift_getKeyPath();
  sub_100061A68(KeyPath, 0, v25);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v25, v21, WitnessTable);
  v34 = *(v22 + 8);
  v34(v25, v21);
  sub_100157EFC(v27, v21, WitnessTable);
  return v34(v27, v21);
}

uint64_t sub_100179CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for AppleMusicFetcher();
  v11 = sub_10017CF40(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher);
  v23 = a3;
  v24 = v10;
  v25 = a7;
  v26 = v11;
  v12 = type metadata accessor for PromotionalAssetsView();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v23 = a3;
  v24 = v10;
  v25 = a7;
  v26 = v11;
  type metadata accessor for PromotionalAssetsViewModel();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v23 = v19;
  sub_10001E6EC(a1, &v23);

  sub_1000C7ED4(v16);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v16, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_100157EFC(v18, v12, WitnessTable);
  return v21(v18, v12);
}

uint64_t sub_100179EE8(uint64_t a1)
{
  v2 = type metadata accessor for ArtistEventView();
  sub_10016F338(v2);
  if (*(a1 + 16))
  {

    sub_1001A1CF4(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100179FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[198] = v16;
  v8[197] = v15;
  v8[196] = v14;
  v8[195] = a8;
  v8[194] = a7;
  v8[193] = a6;
  v8[187] = a5;
  v8[181] = a4;
  v8[175] = a3;
  v8[167] = a4;
  v8[168] = a5;
  v8[169] = a6;
  v8[170] = a7;
  v8[171] = a8;
  v8[172] = v14;
  v8[173] = v15;
  v8[174] = v16;
  v9 = type metadata accessor for ArtistEventView();
  v8[199] = v9;
  v10 = *(v9 - 8);
  v8[200] = v10;
  v8[201] = *(v10 + 64);
  v8[202] = swift_task_alloc();
  v8[203] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[204] = static MainActor.shared.getter();
  v8[205] = dispatch thunk of Actor.unownedExecutor.getter();
  v8[206] = v11;

  return _swift_task_switch(sub_10017A120);
}

uint64_t sub_10017A120()
{
  v1 = v0[175];
  sub_10016F338(v0[199]);
  if (*(v1 + 16))
  {
    v19 = v0[203];
    v23 = v0[202];
    v2 = v0[200];
    v3 = v0[199];
    v29 = v0[198];
    v27 = v0[196];
    v28 = v0[197];
    v25 = v0[194];
    v26 = v0[195];
    v24 = v0[193];
    v4 = v0[187];
    v5 = v0[181];
    v20 = v5;
    v21 = v4;
    v6 = v0[175];

    v8 = sub_1000BA8F0(v7);
    v10 = v9;

    v0[207] = v8;
    v0[208] = v10;
    v22 = *(v2 + 16);
    v22(v19, v6, v3);
    v11 = (*(v2 + 80) + 80) & ~*(v2 + 80);
    v12 = swift_allocObject();
    v0[209] = v12;
    *(v12 + 2) = v5;
    *(v12 + 3) = v4;
    *(v12 + 4) = v24;
    *(v12 + 5) = v25;
    *(v12 + 6) = v26;
    *(v12 + 7) = v27;
    *(v12 + 8) = v28;
    *(v12 + 9) = v29;
    v13 = *(v2 + 32);
    v13(&v12[v11], v19, v3);
    v14 = swift_task_alloc();
    v0[210] = v14;
    *(v14 + 16) = &unk_1001BBA30;
    *(v14 + 24) = v12;
    swift_asyncLet_begin();
    v22(v23, v6, v3);
    v15 = swift_allocObject();
    v0[211] = v15;
    *(v15 + 2) = v20;
    *(v15 + 3) = v21;
    *(v15 + 4) = v24;
    *(v15 + 5) = v25;
    *(v15 + 6) = v26;
    *(v15 + 7) = v27;
    *(v15 + 8) = v28;
    *(v15 + 9) = v29;
    v13(&v15[v11], v23, v3);
    v16 = swift_task_alloc();
    v0[212] = v16;
    *(v16 + 16) = &unk_1001BBA40;
    *(v16 + 24) = v15;
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 2, v17, sub_10017A468, v0 + 162);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_10017A4A0()
{
  v0[213] = sub_10016F338(v0[199]);
  v1 = swift_task_alloc();
  v0[214] = v1;
  *v1 = v0;
  v1[1] = sub_10017A54C;
  v2 = v0[208];
  v3 = v0[207];

  return sub_1001A246C(v3, v2);
}

uint64_t sub_10017A54C()
{
  v1 = *v0;

  return _swift_asyncLet_finish(v1 + 656);
}

uint64_t sub_10017A6A4()
{

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10017A734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v10;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[11] = a2;
  v8[12] = a3;
  v8[10] = a1;
  return _swift_task_switch(sub_10017A804);
}

uint64_t sub_10017A804()
{
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017A898);
}

uint64_t sub_10017A898()
{
  v7 = *(v0 + 88);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v4 = *(v0 + 136);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v1 = type metadata accessor for ArtistEventView();
  *(v0 + 160) = sub_10016F338(v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_10017DB14;

  return sub_1001A1D90();
}

uint64_t sub_10017A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v10;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[11] = a2;
  v8[12] = a3;
  v8[10] = a1;
  return _swift_task_switch(sub_10017A9B4);
}

uint64_t sub_10017A9B4()
{
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017AA48);
}

uint64_t sub_10017AA48()
{
  v7 = *(v0 + 88);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v4 = *(v0 + 136);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v1 = type metadata accessor for ArtistEventView();
  *(v0 + 160) = sub_10016F338(v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_10017AB2C;

  return sub_1001A2108();
}

uint64_t sub_10017AB2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10017AC40()
{
  result = qword_100221FF8;
  if (!qword_100221FF8)
  {
    sub_10000B3DC(&qword_100221FF0);
    sub_10017ACC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221FF8);
  }

  return result;
}

unint64_t sub_10017ACC4()
{
  result = qword_100222000;
  if (!qword_100222000)
  {
    sub_10000B3DC(&qword_100222008);
    sub_10000B3DC(&qword_100222010);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_100222018, &qword_100222010);
    sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222000);
  }

  return result;
}

__n128 sub_10017AE7C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_10017AF5C()
{
  v1 = type metadata accessor for ArtistEventView();
  v2 = (*(*(v1 - 8) + 80) + 96) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 88);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 92);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017B11C()
{
  v2 = v0[4];
  v16 = v0[5];
  v13 = v0[7];
  v14 = v0[6];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v1[2] = v2;
  v1[3] = v16;
  v1[4] = v14;
  v1[5] = v13;
  v1[6] = v3;
  v1[7] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = *(type metadata accessor for ArtistEventView() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10017DB38;

  return sub_100179FC4(v9, v10, v0 + v8, v2, v16, v14, v13, v3);
}

uint64_t sub_10017B25C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017B2B4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017B30C()
{
  v2 = v0[3];
  v14 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v1[2] = v14;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v9 = *(type metadata accessor for ArtistEventView() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10017DB38;

  return sub_10017A7CC(v0 + v10, v14, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10017B448()
{
  v2 = v0[3];
  v14 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v1[2] = v14;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v9 = *(type metadata accessor for ArtistEventView() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10017DB38;

  return sub_10017A97C(v0 + v10, v14, v2, v3, v4, v5, v6, v7);
}

unint64_t sub_10017B6C4()
{
  result = qword_100222048;
  if (!qword_100222048)
  {
    sub_10000B3DC(&qword_100222040);
    sub_10000D1EC(&qword_100222050, &qword_100222058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222048);
  }

  return result;
}

uint64_t sub_10017B7CC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10017B83C()
{
  result = qword_1002220A8;
  if (!qword_1002220A8)
  {
    sub_10000B3DC(&qword_100221FD8);
    sub_10000B3DC(&qword_100222098);
    sub_10017B930();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220A8);
  }

  return result;
}

unint64_t sub_10017B930()
{
  result = qword_1002220B0;
  if (!qword_1002220B0)
  {
    sub_10000B3DC(&qword_100222098);
    sub_10017CF40(&qword_1002220B8, type metadata accessor for PromotionalPlaylistModule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220B0);
  }

  return result;
}

unint64_t sub_10017BA08()
{
  result = qword_1002220C0;
  if (!qword_1002220C0)
  {
    sub_10000B3DC(&qword_100222060);
    sub_10004365C();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220C0);
  }

  return result;
}

unint64_t sub_10017BAC0()
{
  result = qword_1002220C8;
  if (!qword_1002220C8)
  {
    sub_10000B3DC(&qword_100221FE0);
    sub_10000D1EC(&qword_1002220D0, &qword_100222068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220C8);
  }

  return result;
}

uint64_t sub_10017BBA0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_10017CF40(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10017BC6C()
{
  result = qword_1002220E8;
  if (!qword_1002220E8)
  {
    sub_10000B3DC(&qword_100222070);
    sub_10000D1EC(&qword_1002220E0, &qword_1002220D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220E8);
  }

  return result;
}

unint64_t sub_10017BD28()
{
  result = qword_1002220F0;
  if (!qword_1002220F0)
  {
    sub_10000B3DC(&qword_100222078);
    sub_10000B3DC(&qword_100222070);
    sub_10017BC6C();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220F0);
  }

  return result;
}

uint64_t sub_10017BE9C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = *(type metadata accessor for ArtistEventView() - 8);
  return a1(&v1[(*(v11 + 80) + 80) & ~*(v11 + 80)], v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017BFC4(uint64_t a1, unint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = *(type metadata accessor for ArtistEventView() - 8);
  return sub_100176658(a1, a2, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_10017C098(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219C30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017C15C()
{
  v1 = type metadata accessor for ArtistEventView();
  v2 = (*(*(v1 - 8) + 80) + 96) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2 + 7;
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  v5 = *(v1 + 88);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v3 & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 92);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v4 + v8, v9);
  }

  else
  {
  }

  if (*(v0 + v7 + 8) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017C334(uint64_t a1)
{
  v3 = v2;
  v20 = v1[4];
  v5 = v1[7];
  v4 = v1[6];
  v19 = v1[5];
  v6 = v1[8];
  v7 = v1[9];
  v9 = v1[10];
  v8 = v1[11];
  v3[2] = v20;
  v3[3] = v19;
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  v3[8] = v9;
  v3[9] = v8;
  v10 = *(type metadata accessor for ArtistEventView() - 8);
  v11 = (*(v10 + 80) + 96) & ~*(v10 + 80);
  v17 = v1[3];
  v18 = v1[2];
  v12 = (v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  v3[10] = v15;
  *v15 = v3;
  v15[1] = sub_10017C4B8;

  return sub_1001768D4(a1, v18, v17, v1 + v11, v13, v14, v20, v19);
}

uint64_t sub_10017C4B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10017C5AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017C604()
{
  v1 = type metadata accessor for ArtistEventView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 88);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 92);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017C7D4(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  v7 = *(v2 + 6);
  v8 = *(v2 + 7);
  v9 = *(v2 + 8);
  v10 = *(v2 + 9);
  v11 = *(type metadata accessor for ArtistEventView() - 8);
  return a2(a1, &v2[(*(v11 + 80) + 80) & ~*(v11 + 80)], v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017C8AC()
{
  v11 = *(v0 + 24);
  v1 = type metadata accessor for ArtistEventView();
  v12 = *(*(v1 - 8) + 64);
  v2 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);
  v3 = *(v11 - 8);
  v4 = *(v3 + 80);
  v5 = v0 + v2;

  v6 = *(v1 + 88);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 92);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  (*(v3 + 8))(v0 + ((v2 + v12 + v4) & ~v4), v11);
  return swift_deallocObject();
}

uint64_t sub_10017CB08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = *(type metadata accessor for ArtistEventView() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  return sub_100177ED0(v0 + v10, v0 + ((v10 + *(v9 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10017CC20@<X0>(uint64_t a1@<X8>)
{
  sub_100178110(v1[10], v1[11], v1[12], v1[13], v1[3], a1, v1[6], v1[7]);
  result = sub_100009F70(&qword_100222118);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_10017CC8C()
{
  result = qword_100222120;
  if (!qword_100222120)
  {
    sub_10000B3DC(&qword_100222118);
    sub_10017CD44();
    sub_10000D1EC(&qword_100219D48, &qword_100219D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222120);
  }

  return result;
}

unint64_t sub_10017CD44()
{
  result = qword_100222128;
  if (!qword_100222128)
  {
    sub_10000B3DC(&qword_100222130);
    sub_10017CDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222128);
  }

  return result;
}

unint64_t sub_10017CDC8()
{
  result = qword_100222138;
  if (!qword_100222138)
  {
    sub_10000B3DC(&qword_100222140);
    sub_10017CE84();
    sub_10017CF40(&qword_100222158, type metadata accessor for ArtistEventRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222138);
  }

  return result;
}

unint64_t sub_10017CE84()
{
  result = qword_100222148;
  if (!qword_100222148)
  {
    sub_10000B3DC(&qword_100222150);
    sub_10017CF40(&qword_100222158, type metadata accessor for ArtistEventRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222148);
  }

  return result;
}

uint64_t sub_10017CF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10017CF88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017CFEC(uint64_t a1)
{
  v2 = type metadata accessor for ArtistEventRow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017D048()
{
  type metadata accessor for NavigationPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader();
  type metadata accessor for Section();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100221FD8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Section();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  sub_10000B3DC(&qword_100221FE0);
  sub_10000B3DC(&qword_100221FE8);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_100221FF0);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  sub_10017AC40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for PlainListStyle();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100222020);
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_100222028, &qword_100222020);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  sub_100042730();
  sub_100042784();
  type metadata accessor for MusicEventView();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AppleMusicFetcher();
  sub_10017CF40(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher);
  type metadata accessor for PromotionalAssetsView();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10017CF40(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

uint64_t sub_10017DB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10017DB94(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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