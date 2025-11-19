uint64_t sub_1000FE938(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021F158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FE9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021F168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021F168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEA80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FEAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = LocalizedStringKey.init(stringLiteral:)();
  *(a5 + 8) = v10;
  *(a5 + 16) = v11 & 1;
  *(a5 + 24) = v12;
  *(a5 + 32) = LocalizedStringKey.init(stringLiteral:)();
  *(a5 + 40) = v13;
  *(a5 + 48) = v14 & 1;
  *(a5 + 56) = v15;
  v16 = type metadata accessor for MusicViewModel();
  v17 = v16[13];
  if (qword_100218450 != -1)
  {
    swift_once();
  }

  *(a5 + v17) = qword_100230608;
  *(a5 + 64) = a1;
  sub_1000B9AEC(a2, a5 + v16[11]);
  *(a5 + v16[12]) = a3;
  *(a5 + v16[14]) = a4;
}

uint64_t sub_1000FEC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a1 + 44);
  if (*(*(v2 + *(a1 + 48)) + 16))
  {
    sub_10000F680(v2 + v8, v7);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_10000F6F0(v7);
      return (*(v10 + 56))(a2, 1, 1, v9);
    }

    else
    {
      URL.appending(queryItems:)();
      (*(v10 + 8))(v7, v9);
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else
  {

    return sub_10000F680(v2 + v8, a2);
  }
}

uint64_t sub_1000FEDA8()
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_1000FEE74(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2[5];
  v4 = v2[6];
  sub_100028124(v2 + 2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_1000FEED8(uint64_t a1)
{
  sub_10004FF88();
  v3 = *(v1 + *(a1 + 52));
  v4 = v3[5];
  v5 = v3[6];
  sub_100028124(v3 + 2, v4);
  return (*(v5 + 72))(v4, v5);
}

uint64_t sub_1000FEF3C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2[5];
  v4 = v2[6];
  sub_100028124(v2 + 2, v3);
  return (*(v4 + 80))(v3, v4);
}

void sub_1000FEFAC(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v13 = a4[2];
  v12 = a4[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v13;
  *(inited + 48) = v12;
  v14 = *(v5 + *(a5 + 56));
  if (v14 == 15)
  {
    LOBYTE(v14) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 11;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (a4[9])
  {
    v15 = a4[8];
    v16 = a4[9];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_1000109A4(a1, a2, a3);

  v17 = sub_1001666DC(1, 5, 1, inited);
  v21 = v17;
  sub_1000109BC(&aBlock, v28);
  sub_1000EB0D0(4, v28, &v21, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001BDDE0;
  v19[4] = v17;
  v26 = sub_100010AAC;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_10020F0F8;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

void sub_1000FF234(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + *(a2 + 52));
  v7 = v6[5];
  v8 = v6[6];
  sub_100028124(v6 + 2, v7);
  v9 = (*(v8 + 32))(v7, v8);
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v12 = a1[2];
  v11 = a1[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v12;
  *(inited + 48) = v11;
  v13 = *(v3 + *(a2 + 56));
  if (v13 == 15)
  {
    LOBYTE(v13) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 11;
  v14 = 19;
  if (v9 == 2)
  {
    v14 = 20;
  }

  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = v14;
  *(inited + 160) = 0;
  *(inited + 168) = 3;
  if (a1[9])
  {
    v15 = a1[8];
    v16 = a1[9];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  v17 = sub_1001666DC(1, 5, 1, inited);
  v21 = v17;
  sub_1000109BC(&aBlock, v28);
  sub_1000EB0D0(4, v28, &v21, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001BDDE0;
  v19[4] = v17;
  v26 = sub_100038F2C;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_10020F148;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

void sub_1000FF4F0()
{
  type metadata accessor for Array();
  if (v0 <= 0x3F)
  {
    sub_1000FF7C4(319, &qword_100218E80, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000FF7C4(319, &qword_10021F218, &type metadata accessor for URLQueryItem, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PlaybackController();
        if (v3 <= 0x3F)
        {
          sub_1000DBF28();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000FF644(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(qword_100218748);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000FF714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(qword_100218748);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000FF7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000FF82C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FF844(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && *(v1 + 16))
  {

    v2 = sub_1000D8558(3u);
    if ((v3 & 1) != 0 && (v4 = *(*(v1 + 56) + v2), , v4))
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1000FF934@<X0>(uint64_t a1@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v2 = (a1 + *(type metadata accessor for DetailsModule() + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_1001059A8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v2 = result;
  v2[1] = v4;
  return result;
}

void sub_1000FFA5C()
{
  type metadata accessor for DetailsViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000FFB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DetailsViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_1000FFBF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1000FFCFC()
{
  type metadata accessor for DetailsViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000FFD3C()
{
  type metadata accessor for DetailsViewModel();
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_1000FFD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = a1;
  v75 = *(a1 - 8);
  __chkstk_darwin(a1);
  v72 = v3;
  v74 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  type metadata accessor for DetailsViewModel();
  v69 = type metadata accessor for Bindable();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v56 - v7;
  v8 = sub_100009F70(&qword_10021F2B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - v10;
  v12 = sub_100009F70(&qword_10021F2B8);
  v56 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v61 = sub_100009F70(&qword_10021F2C0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v56 - v15;
  v78 = sub_100009F70(&qword_10021F2C8);
  v60 = *(v78 - 8);
  __chkstk_darwin(v78);
  v58 = &v56 - v16;
  v65 = sub_100009F70(&qword_10021F2D0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v79 = &v56 - v17;
  v66 = sub_100009F70(&qword_10021F2D8);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v56 - v18;
  v71 = v5;
  v80 = v5;
  v81 = v6;
  v70 = v6;
  v73 = v2;
  v82 = v2;
  sub_100009F70(&qword_10021F2E0);
  v19 = sub_10000B3DC(&qword_10021F2E8);
  v20 = sub_100102DC0();
  v85 = v19;
  v86 = v20;
  swift_getOpaqueTypeConformance2();
  List<>.init(content:)();
  sub_100009F70(&qword_100218DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v5) = static Edge.Set.top.getter();
  *(inited + 32) = v5;
  v22 = static Edge.Set.bottom.getter();
  *(inited + 33) = v22;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v5)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    Edge.Set.init(rawValue:)();
  }

  v23 = sub_10000D1EC(&qword_10021F380, &qword_10021F2B0);
  View.listPadding(_:_:)();
  (*(v9 + 8))(v11, v8);
  Solarium.init()();
  v24 = sub_100009F70(&qword_10021F388);
  v25 = sub_100009F70(&qword_10021F390);
  v85 = v8;
  v86 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = type metadata accessor for InsetListStyle();
  v28 = v12;
  v85 = v12;
  v86 = v27;
  v87 = OpaqueTypeConformance2;
  v88 = &protocol witness table for InsetListStyle;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = type metadata accessor for InsetGroupedListStyle();
  v85 = v12;
  v86 = v30;
  v87 = OpaqueTypeConformance2;
  v88 = &protocol witness table for InsetGroupedListStyle;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v57;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v56 + 8))(v14, v28);
  v83 = static Color.clear.getter();
  v85 = v28;
  v86 = &type metadata for Solarium;
  v87 = v24;
  v88 = v25;
  v89 = OpaqueTypeConformance2;
  v90 = &protocol witness table for Solarium;
  v91 = v29;
  v92 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v58;
  v35 = v61;
  View.scrollContentBackground<A>(_:)();

  (*(v59 + 8))(v32, v35);
  v85 = v35;
  v86 = &type metadata for Color;
  v87 = v33;
  v88 = &protocol witness table for Color;
  v61 = swift_getOpaqueTypeConformance2();
  v36 = v78;
  View.listHasStackBehavior()();
  (*(v60 + 8))(v34, v36);
  v37 = v67;
  v38 = v76;
  v39 = v73;
  v40 = sub_1000FFD3C();
  __chkstk_darwin(v40);
  v41 = v71;
  v42 = v70;
  swift_getKeyPath();
  v43 = v69;
  Bindable<A>.subscript.getter();

  (*(v68 + 8))(v37, v43);
  v44 = v75;
  v45 = v74;
  (*(v75 + 16))(v74, v39, v38);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  *(v47 + 24) = v42;
  (*(v44 + 32))(v47 + v46, v45, v38);
  v48 = sub_100009F70(&qword_10021F398);
  v83 = v78;
  v84 = v61;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_100103530();
  v49 = v62;
  v50 = v65;
  v51 = v79;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v63 + 8))(v51, v50);
  v85 = v50;
  v86 = v48;
  v87 = v54;
  v88 = v55;
  swift_getOpaqueTypeConformance2();
  v52 = v66;
  View.accessibilityIdentifier(_:)();
  return (*(v64 + 8))(v49, v52);
}

uint64_t sub_100100914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for Prominence();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100009F70(&qword_10021F330);
  __chkstk_darwin(v23);
  v10 = &v22 - v9;
  v11 = sub_100009F70(&qword_10021F300);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = sub_100009F70(&qword_10021F2E8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  v28 = a2;
  v29 = a3;
  v30 = a1;
  sub_100101BBC(v13);
  sub_100101F0C(a2, a3, v10);
  sub_100009F70(&qword_10021F320);
  sub_100102E8C();
  sub_10000D1EC(&qword_10021F318, &qword_10021F320);
  sub_100103000();
  Section<>.init(header:footer:content:)();
  v19 = v24;
  v18 = v25;
  v20 = v26;
  (*(v25 + 104))(v24, enum case for Prominence.increased(_:), v26);
  sub_100102DC0();
  View.headerProminence(_:)();
  (*(v18 + 8))(v19, v20);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_100100C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v72 = sub_100009F70(&qword_10021F3B0);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v61 - v7;
  v8 = sub_100009F70(&qword_10021F3B8);
  v9 = __chkstk_darwin(v8 - 8);
  v73 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v61 - v11;
  v61 = a2;
  v62 = a3;
  v12 = type metadata accessor for DetailsModule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - v14;
  v16 = sub_100009F70(&qword_10021F3C0);
  v66 = *(v16 - 8);
  v67 = v16;
  __chkstk_darwin(v16);
  v65 = &v61 - v17;
  v18 = sub_100009F70(&qword_10021F3C8);
  v19 = __chkstk_darwin(v18 - 8);
  v68 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v61 - v21;
  sub_1000FFCFC();
  *&v64 = sub_100183494();
  *&v63 = v22;

  sub_1000FFCFC();
  v23 = sub_1001834AC();
  v25 = v24;

  v75 = a1;
  sub_1000FFCFC();
  v26 = sub_100183654();

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v26)
  {
    v28 = 0x80000001001C0E50;
    (*(v13 + 16))(v15, v75, v12);
    v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v30 = swift_allocObject();
    v32 = v62;
    *(v30 + 16) = v61;
    *(v30 + 24) = v32;
    (*(v13 + 32))(v30 + v31, v15, v12);
    v27 = 0xD000000000000013;
    v29 = sub_1001039E0;
  }

  v96 = 0;
  *&v88 = v64;
  *(&v88 + 1) = v63;
  *&v89 = v23;
  *(&v89 + 1) = v25;
  *&v90 = 0xD000000000000014;
  *(&v90 + 1) = 0x80000001001C0E70;
  *&v91 = v27;
  *(&v91 + 1) = v28;
  *&v92 = v29;
  *(&v92 + 1) = v30;
  __asm { FMOV            V0.2D, #16.0 }

  v64 = _Q0;
  v63 = xmmword_1001B7220;
  v93 = _Q0;
  v94 = xmmword_1001B7220;
  v95 = 0;
  Solarium.init()();
  v38 = sub_100009F70(&qword_10021F3D0);
  v39 = sub_100009F70(&qword_10021F3D8);
  v40 = sub_100103654();
  v41 = sub_100103760();
  v42 = v65;
  View.staticIf<A, B>(_:then:)();
  v86[4] = v92;
  v86[5] = v93;
  v86[6] = v94;
  v87 = v95;
  v86[0] = v88;
  v86[1] = v89;
  v86[2] = v90;
  v86[3] = v91;
  sub_10000D52C(v86, &qword_10021F3D0);
  *&v88 = v38;
  *(&v88 + 1) = &type metadata for Solarium;
  *&v89 = v39;
  *(&v89 + 1) = v40;
  *&v90 = &protocol witness table for Solarium;
  *(&v90 + 1) = v41;
  v62 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeConformance2();
  v43 = v67;
  View.accessibilityIdentifier(_:)();
  (*(v66 + 8))(v42, v43);
  sub_1000FFCFC();
  v44 = sub_100183B58();
  v46 = v45;

  sub_1000FFCFC();
  v47 = sub_100183CE8();
  v49 = v48;

  v85 = 0;
  *&v77 = v44;
  *(&v77 + 1) = v46;
  *&v78 = v47;
  *(&v78 + 1) = v49;
  *&v79 = 0xD000000000000012;
  *(&v79 + 1) = 0x80000001001C03E0;
  v80 = 0u;
  v81 = 0u;
  v82 = v63;
  v83 = v64;
  v84 = 0;
  Solarium.init()();
  v50 = sub_100009F70(&qword_10021F418);
  *&v88 = v39;
  *(&v88 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v69;
  View.staticIf<A, B>(_:then:)();
  v92 = v81;
  v93 = v82;
  v94 = v83;
  v95 = v84;
  v88 = v77;
  v89 = v78;
  v90 = v79;
  v91 = v80;
  sub_10000D52C(&v88, &qword_10021F3D0);
  *&v77 = v38;
  *(&v77 + 1) = &type metadata for Solarium;
  *&v78 = v50;
  *(&v78 + 1) = v40;
  *&v79 = &protocol witness table for Solarium;
  *(&v79 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v53 = v71;
  v52 = v72;
  View.accessibilityIdentifier(_:)();
  (*(v70 + 8))(v51, v52);
  v54 = v76;
  v55 = v68;
  sub_10000D58C(v76, v68, &qword_10021F3C8);
  v56 = v73;
  sub_10000D58C(v53, v73, &qword_10021F3B8);
  v57 = v74;
  sub_10000D58C(v55, v74, &qword_10021F3C8);
  v58 = sub_100009F70(&qword_10021F420);
  sub_10000D58C(v56, v57 + *(v58 + 48), &qword_10021F3B8);
  sub_10000D52C(v53, &qword_10021F3B8);
  sub_10000D52C(v54, &qword_10021F3C8);
  sub_10000D52C(v56, &qword_10021F3B8);
  return sub_10000D52C(v55, &qword_10021F3C8);
}

uint64_t sub_100101484(uint64_t a1)
{
  v2 = type metadata accessor for DetailsModule();
  sub_1000FFCFC();
  sub_1001837F0();

  sub_1000FFCFC();
  if (*(a1 + *(v2 + 36)))
  {

    sub_1001837F8(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1001059A8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_100101574@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009F70(&qword_10021F428);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = a1[5];
  v30 = a1[4];
  v31 = v7;
  v32 = a1[6];
  v33 = *(a1 + 112);
  v8 = a1[1];
  v26 = *a1;
  v27 = v8;
  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v10 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v6[v10], v11, v12);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v13;
  *(v6 + 1) = v14;
  *(v6 + 2) = v15;
  *(v6 + 3) = v16;
  v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *&v6[*(v4 + 52)] = Color.init(_:)();
  *&v6[*(v4 + 56)] = 256;
  sub_10000D1EC(&qword_10021F430, &qword_10021F428);
  v18 = AnyView.init<A>(_:)();
  LOBYTE(v25) = v33;
  v24[13] = v31;
  v24[14] = v32;
  v24[11] = v29;
  v24[12] = v30;
  v24[8] = v26;
  v24[9] = v27;
  v24[10] = v28;
  v34[4] = v30;
  v34[5] = v31;
  v34[6] = v32;
  v34[0] = v26;
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = v29;
  *&v35 = v25;
  *(&v35 + 1) = v18;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v35;
  v36[2] = v28;
  v36[3] = v29;
  v36[0] = v26;
  v36[1] = v27;
  v36[5] = v31;
  v36[6] = v32;
  v36[4] = v30;
  v37 = v25;
  v38 = v18;
  sub_10000D58C(&v26, v24, &qword_10021F3D0);
  sub_10000D58C(v34, v24, &qword_10021F400);
  sub_10000D52C(v36, &qword_10021F400);
  v19 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v19;
  v20 = v46;
  *(a2 + 96) = v45;
  *(a2 + 112) = v20;
  v21 = v40;
  *a2 = v39;
  *(a2 + 16) = v21;
  result = *&v41;
  v23 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v23;
  *(a2 + 128) = 0;
  return result;
}

uint64_t sub_100101858(__int128 *a1)
{
  v2 = sub_100009F70(&qword_10021F428);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v33 = a1[6];
  v34 = *(a1 + 112);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  v7 = a1[3];
  v29 = a1[2];
  v30 = v7;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v8 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(&v4[v8], v9, v10);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v4 = v11;
  *(v4 + 1) = v12;
  *(v4 + 2) = v13;
  *(v4 + 3) = v14;
  v15 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *&v4[*(v2 + 52)] = Color.init(_:)();
  *&v4[*(v2 + 56)] = 256;
  sub_10000D1EC(&qword_10021F430, &qword_10021F428);
  v16 = AnyView.init<A>(_:)();
  LOBYTE(v25) = v34;
  v23 = v32;
  v24 = v33;
  v21 = v30;
  v22 = v31;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v33;
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  *&v36 = v25;
  *(&v36 + 1) = v16;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v47 = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[0] = v27;
  v37[1] = v28;
  v37[5] = v32;
  v37[6] = v33;
  v37[4] = v31;
  v38 = v25;
  v39 = v16;
  sub_10000D58C(&v27, v48, &qword_10021F3D0);
  sub_10000D58C(v35, v48, &qword_10021F400);
  sub_10000D52C(v37, &qword_10021F400);
  v22 = v44;
  v23 = v45;
  v24 = v46;
  v25 = v47;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  v26 = 0;
  static VerticalEdge.Set.bottom.getter();
  sub_100009F70(&qword_10021F3D8);
  sub_100103760();
  View.listRowSeparator(_:edges:)();
  v48[6] = v24;
  v48[7] = v25;
  v49 = v26;
  v48[2] = v20;
  v48[3] = v21;
  v48[4] = v22;
  v48[5] = v23;
  v48[0] = v18;
  v48[1] = v19;
  return sub_10000D52C(v48, &qword_10021F3D8);
}

uint64_t sub_100101BBC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v21 = type metadata accessor for AccessibilityTraits();
  v20 = *(v21 - 8);
  __chkstk_darwin(v21);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100009F70(&qword_10021F300);
  __chkstk_darwin(v22);
  v19 = &v18 - v3;
  type metadata accessor for DetailsModule();
  sub_1000FFCFC();

  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_10000D60C(v4, v6, v8 & 1);

  v30 = v13 & 1;
  v29 = 0;
  *&v24 = v9;
  *(&v24 + 1) = v11;
  LOBYTE(v25) = v13 & 1;
  *(&v25 + 1) = v15;
  v26 = xmmword_1001B7230;
  v27 = xmmword_1001B7240;
  v28 = 0;
  static AccessibilityTraits.isHeader.getter();
  sub_100009F70(&qword_10021F310);
  sub_100102F48();
  v16 = v19;
  View.accessibility(addTraits:)();
  (*(v20 + 8))(v2, v21);
  v31[2] = v26;
  v31[3] = v27;
  v32 = v28;
  v31[0] = v24;
  v31[1] = v25;
  sub_10000D52C(v31, &qword_10021F310);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_10000D52C(v16, &qword_10021F300);
}

uint64_t sub_100101F0C@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = type metadata accessor for AttributionModule();
  __chkstk_darwin(v70);
  v69 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_100009F70(&qword_10021F348);
  __chkstk_darwin(v74);
  v72 = &v61[-v8];
  v9 = sub_100009F70(&qword_10021F3A8);
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v73 = &v61[-v10];
  v11 = sub_100009F70(&qword_10021F340);
  v80 = *(v11 - 8);
  v81 = v11;
  __chkstk_darwin(v11);
  v71 = &v61[-v12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v61[-v17];
  v19 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v16);
  v21 = &v61[-v20];
  v67 = a2;
  v68 = a1;
  type metadata accessor for DetailsModule();
  v22 = sub_1000FFCFC();
  v23 = sub_100183D90(v22);

  if (v23)
  {
    sub_1000FFCFC();
    sub_100183EAC();

    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) != 1)
    {
      v65 = v21;
      v66 = v19;
      v26 = *(v19 + 32);
      v27 = AssociatedTypeWitness;
      v26(v21, v18, AssociatedTypeWitness);
      sub_1000FFCFC();
      v64 = sub_10007AA00();
      v63 = v28;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v30 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v67 = v31;
      v68 = v30;
      v32 = type metadata accessor for AttributionViewModel();
      v33 = *(v32 + 32);
      v34 = v69;
      (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v35 = type metadata accessor for URL();
      (*(*(v35 - 8) + 56))(v34 + v33, 0, 1, v35);
      sub_1000FFCFC();
      v62 = sub_10007BA8C();

      v36 = objc_opt_self();
      v37 = [v36 mainBundle];
      v85._object = 0xE000000000000000;
      v38._countAndFlagsBits = 0xD000000000000031;
      v38._object = 0x80000001001BFEF0;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v85._countAndFlagsBits = 0;
      v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v85);

      *v34 = v40;
      v41 = [v36 mainBundle];
      v86._object = 0xE000000000000000;
      v42._countAndFlagsBits = 0xD00000000000002CLL;
      v42._object = 0x80000001001BFF30;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v86._countAndFlagsBits = 0;
      v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v86);

      v34[1] = v44;
      v45 = v63;
      v34[2]._countAndFlagsBits = v64;
      v34[2]._object = v45;
      v46 = v67;
      v34[3]._countAndFlagsBits = v68;
      v34[3]._object = v46;
      *(&v34->_countAndFlagsBits + *(v32 + 36)) = v62;
      v47 = (&v34->_countAndFlagsBits + *(v70 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_1001059A8(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      *v47 = EnvironmentObject.init()();
      v47[1] = v48;
      Solarium.init()();
      sub_100009F70(&qword_10021F358);
      sub_1001059A8(&qword_10021D3D8, type metadata accessor for AttributionModule);
      v49 = sub_10000B3DC(&qword_10021F360);
      v50 = sub_100103318();
      v83 = v49;
      v84 = v50;
      swift_getOpaqueTypeConformance2();
      v51 = v72;
      View.staticIf<A, B>(_:then:)();
      sub_1000AFCE8(v34);
      v52 = v74;
      v53 = v51 + *(v74 + 36);
      *v53 = xmmword_1001B7250;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0;
      v54 = v77;
      static AccessibilityChildBehavior.contain.getter();
      v55 = sub_10010317C();
      v56 = v73;
      View.accessibilityElement(children:)();
      (*(v78 + 8))(v54, v79);
      sub_10000D52C(v51, &qword_10021F348);
      v83 = v52;
      v84 = v55;
      swift_getOpaqueTypeConformance2();
      v57 = v71;
      v58 = v76;
      View.accessibilityIdentifier(_:)();
      (*(v75 + 8))(v56, v58);
      (*(v66 + 8))(v65, v27);
      v59 = v82;
      sub_10000F618(v57, v82, &qword_10021F340);
      v25 = v59;
      v24 = 0;
      return (*(v80 + 56))(v25, v24, 1, v81);
    }

    (*(v15 + 8))(v18, v14);
  }

  v24 = 1;
  v25 = v82;
  return (*(v80 + 56))(v25, v24, 1, v81);
}

uint64_t sub_1001027FC()
{
  v0 = sub_100009F70(&qword_10021F360);
  __chkstk_darwin(v0);
  v2 = v4 - v1;
  static VerticalEdge.Set.all.getter();
  type metadata accessor for AttributionModule();
  sub_1001059A8(&qword_10021D3D8, type metadata accessor for AttributionModule);
  View.listRowSeparator(_:edges:)();
  v4[1] = static Color.clear.getter();
  *&v2[*(v0 + 36)] = AnyView.init<A>(_:)();
  static Edge.Set.bottom.getter();
  sub_100103318();
  View.listPadding(_:_:)();
  return sub_10000D52C(v2, &qword_10021F360);
}

uint64_t sub_1001029C4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v12 - v7;
  a3(v6);
  sub_100009F70(&qword_10021F2B8);
  v9 = sub_10000B3DC(&qword_10021F2B0);
  v10 = sub_10000D1EC(&qword_10021F380, &qword_10021F2B0);
  v12[0] = v9;
  v12[1] = v10;
  swift_getOpaqueTypeConformance2();
  View.listStyle<A>(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100102B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100183F20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100102BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DetailsModule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  sub_1000FFCFC();
  v19 = sub_1001840D8();

  v12 = sub_1000FFCFC();
  v13 = *(v12 + *(*v12 + 128));

  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v9 + 32))(v15 + v14, v11, v8);
  v16 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *a4 = v19;
  *(a4 + 8) = v13;
  *(a4 + 16) = sub_1001035BC;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  *(a4 + 40) = result;
  return result;
}

uint64_t sub_100102D60()
{
  type metadata accessor for DetailsModule();
  sub_1000FFCFC();
  sub_100184150();
}

unint64_t sub_100102DC0()
{
  result = qword_10021F2F0;
  if (!qword_10021F2F0)
  {
    sub_10000B3DC(&qword_10021F2E8);
    sub_100102E8C();
    sub_10000D1EC(&qword_10021F318, &qword_10021F320);
    sub_100103000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F2F0);
  }

  return result;
}

unint64_t sub_100102E8C()
{
  result = qword_10021F2F8;
  if (!qword_10021F2F8)
  {
    sub_10000B3DC(&qword_10021F300);
    sub_100102F48();
    sub_1001059A8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F2F8);
  }

  return result;
}

unint64_t sub_100102F48()
{
  result = qword_10021F308;
  if (!qword_10021F308)
  {
    sub_10000B3DC(&qword_10021F310);
    sub_10000D1EC(&qword_10021A498, &qword_10021A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F308);
  }

  return result;
}

unint64_t sub_100103000()
{
  result = qword_10021F328;
  if (!qword_10021F328)
  {
    sub_10000B3DC(&qword_10021F330);
    sub_100103084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F328);
  }

  return result;
}

unint64_t sub_100103084()
{
  result = qword_10021F338;
  if (!qword_10021F338)
  {
    sub_10000B3DC(&qword_10021F340);
    sub_10000B3DC(&qword_10021F348);
    sub_10010317C();
    swift_getOpaqueTypeConformance2();
    sub_1001059A8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F338);
  }

  return result;
}

unint64_t sub_10010317C()
{
  result = qword_10021F350;
  if (!qword_10021F350)
  {
    sub_10000B3DC(&qword_10021F348);
    type metadata accessor for AttributionModule();
    sub_10000B3DC(&qword_10021F358);
    sub_1001059A8(&qword_10021D3D8, type metadata accessor for AttributionModule);
    sub_10000B3DC(&qword_10021F360);
    sub_100103318();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F350);
  }

  return result;
}

unint64_t sub_100103318()
{
  result = qword_10021F368;
  if (!qword_10021F368)
  {
    sub_10000B3DC(&qword_10021F360);
    type metadata accessor for AttributionModule();
    sub_1001059A8(&qword_10021D3D8, type metadata accessor for AttributionModule);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021F370, &qword_10021F378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F368);
  }

  return result;
}

uint64_t sub_100103430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100183F20();
  *a1 = result & 1;
  return result;
}

__n128 sub_100103494(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001034A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for DetailsModule() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100102BAC(v6, v3, v4, a1);
}

unint64_t sub_100103530()
{
  result = qword_10021F3A0;
  if (!qword_10021F3A0)
  {
    sub_10000B3DC(&qword_10021F398);
    sub_1000F9DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3A0);
  }

  return result;
}

uint64_t sub_1001035BC()
{
  type metadata accessor for DetailsModule();

  return sub_100102D60();
}

unint64_t sub_100103654()
{
  result = qword_10021F3E0;
  if (!qword_10021F3E0)
  {
    sub_10000B3DC(&qword_10021F3D0);
    sub_10010370C();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3E0);
  }

  return result;
}

unint64_t sub_10010370C()
{
  result = qword_10021F3E8;
  if (!qword_10021F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3E8);
  }

  return result;
}

unint64_t sub_100103760()
{
  result = qword_10021F3F0;
  if (!qword_10021F3F0)
  {
    sub_10000B3DC(&qword_10021F3D8);
    sub_100103818();
    sub_10000D1EC(&qword_10021F408, &qword_10021F410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3F0);
  }

  return result;
}

unint64_t sub_100103818()
{
  result = qword_10021F3F8;
  if (!qword_10021F3F8)
  {
    sub_10000B3DC(&qword_10021F400);
    sub_100103654();
    sub_10000D1EC(&qword_10021F370, &qword_10021F378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F3F8);
  }

  return result;
}

uint64_t sub_1001038D0()
{
  v1 = *(type metadata accessor for DetailsModule() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  type metadata accessor for DetailsViewModel();
  v3 = type metadata accessor for Bindable();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1001039E0()
{
  v1 = *(type metadata accessor for DetailsModule() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100101484(v2);
}

uint64_t sub_100103A64()
{
  result = Color.init(_:bundle:)();
  qword_10021F220 = result;
  return result;
}

uint64_t sub_100103AA0()
{
  result = Color.init(_:bundle:)();
  qword_10021F228 = result;
  return result;
}

uint64_t sub_100103ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v76 = type metadata accessor for PlainButtonStyle();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100009F70(&qword_10021F460);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = &v66 - v4;
  v75 = sub_100009F70(&qword_10021F468);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v66 - v5;
  v84 = sub_100009F70(&qword_10021F470);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v68 = &v66 - v6;
  v7 = sub_100009F70(&qword_10021F478);
  v8 = __chkstk_darwin(v7 - 8);
  v86 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v66 - v10;
  v80 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009F70(&qword_10021F480);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v78 = sub_100009F70(&qword_10021F488);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = &v66 - v16;
  v18 = sub_100009F70(&qword_10021F490);
  v19 = __chkstk_darwin(v18 - 8);
  v82 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v66 - v21;
  v22 = sub_100009F70(&qword_10021B4D8);
  __chkstk_darwin(v22 - 8);
  v24 = &v66 - v23;
  v25 = sub_100009F70(&qword_10021F498);
  v26 = __chkstk_darwin(v25 - 8);
  v81 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v66 - v28;

  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v29 = type metadata accessor for SymbolRenderingMode();
  (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
  v30 = Image.symbolRenderingMode(_:)();

  sub_10000D52C(v24, &qword_10021B4D8);
  v31 = static Color.white.getter();
  sub_100009F70(&qword_1002199C0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001ACB00;
  if (qword_100218400 != -1)
  {
    swift_once();
  }

  *(v32 + 32) = qword_10021F220;
  v33 = qword_100218408;

  if (v33 != -1)
  {
    swift_once();
  }

  *(v32 + 40) = qword_10021F228;

  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v34 = v93;
  v35 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  *&v91 = v30;
  *(&v91 + 1) = v31;
  *v92 = v34;
  *&v92[24] = v95;
  *&v92[8] = v94;
  *&v92[40] = KeyPath;
  *&v92[48] = v35;
  v92[56] = 1;
  sub_100009F70(&qword_10021F4A0);
  sub_100105680();
  View.accessibilityHidden(_:)();
  v96[2] = *&v92[16];
  *v97 = *&v92[32];
  *&v97[9] = *&v92[41];
  v96[0] = v91;
  v96[1] = *v92;
  sub_10000D52C(v96, &qword_10021F4A0);
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v37 = sub_100009F70(&qword_10021F4E0);
  sub_100104900(a1, &v15[*(v37 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v38 = sub_10000D1EC(&qword_10021F4E8, &qword_10021F480);
  View.accessibilityElement(children:)();
  (*(v79 + 8))(v12, v80);
  sub_10000D52C(v15, &qword_10021F480);
  *&v91 = v13;
  *(&v91 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v78;
  View.accessibilityIdentifier(_:)();
  (*(v77 + 8))(v17, v39);
  v40 = *(a1 + 64);
  v91 = *(a1 + 48);
  *v92 = v40;
  v41 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v42 = *&v92[8];
    v43 = *v92;
    v44 = v91;
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v41;
    v45[4] = v43;
    v45[5] = v42;
    __chkstk_darwin(v45);
    *(&v66 - 4) = v44;
    *(&v66 - 3) = v41;
    *(&v66 - 2) = v43;
    *(&v66 - 1) = v42;
    sub_10000D58C(&v91, v90, &qword_10021F4F8);

    sub_100009F70(&qword_10021F500);
    sub_1001058F0();
    v46 = v67;
    Button.init(action:label:)();
    v47 = v70;
    PlainButtonStyle.init()();
    v48 = sub_10000D1EC(&qword_10021F510, &qword_10021F460);
    v49 = sub_1001059A8(&qword_100218810, &type metadata accessor for PlainButtonStyle);
    v50 = v71;
    v51 = v72;
    v52 = v76;
    View.buttonStyle<A>(_:)();
    (*(v74 + 8))(v47, v52);
    (*(v69 + 8))(v46, v51);
    v90[0] = v51;
    v90[1] = v52;
    v90[2] = v48;
    v90[3] = v49;
    swift_getOpaqueTypeConformance2();
    v53 = v68;
    v54 = v75;
    View.accessibilityIdentifier(_:)();

    (*(v73 + 8))(v50, v54);
    v55 = v85;
    sub_10000F618(v53, v85, &qword_10021F470);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v85;
  }

  (*(v83 + 56))(v55, v56, 1, v84);
  v57 = v88;
  v58 = v81;
  sub_10000D58C(v88, v81, &qword_10021F498);
  v59 = v89;
  v60 = v82;
  sub_10000D58C(v89, v82, &qword_10021F490);
  v61 = v86;
  sub_10000D58C(v55, v86, &qword_10021F478);
  v62 = v87;
  sub_10000D58C(v58, v87, &qword_10021F498);
  v63 = sub_100009F70(&qword_10021F4F0);
  sub_10000D58C(v60, v62 + v63[12], &qword_10021F490);
  v64 = v62 + v63[16];
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_10000D58C(v61, v62 + v63[20], &qword_10021F478);
  sub_10000D52C(v55, &qword_10021F478);
  sub_10000D52C(v59, &qword_10021F490);
  sub_10000D52C(v57, &qword_10021F498);
  sub_10000D52C(v61, &qword_10021F478);
  sub_10000D52C(v60, &qword_10021F490);
  return sub_10000D52C(v58, &qword_10021F498);
}

uint64_t sub_100104900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = sub_100009F70(&qword_10021DB10);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v72 = &v71 - v3;
  v4 = sub_100009F70(&qword_10021DB08);
  v5 = __chkstk_darwin(v4 - 8);
  v84 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v71 - v7;
  v78 = sub_100009F70(&qword_10021F518);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v71 - v8;
  v9 = sub_100009F70(&qword_10021F520);
  __chkstk_darwin(v9 - 8);
  v75 = &v71 - v10;
  v77 = sub_100009F70(&qword_10021F528) - 8;
  v11 = __chkstk_darwin(v77);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v76 = &v71 - v14;
  __chkstk_darwin(v13);
  v16 = &v71 - v15;
  v73 = a1;
  v17 = a1[1];
  *&v86 = *a1;
  *(&v86 + 1) = v17;
  v18 = sub_100027068();

  v71 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.body.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_10000D60C(v19, v21, v23 & 1);

  *&v86 = v24;
  *(&v86 + 1) = v26;
  v28 &= 1u;
  v87 = v28;
  v88 = v30;
  v31 = v74;
  View.avoidsOrphans(_:)();
  v32 = v24;
  v33 = v16;
  sub_10000D60C(v32, v26, v28);

  *&v86 = &type metadata for Text;
  *(&v86 + 1) = &protocol witness table for Text;
  v34 = 1;
  swift_getOpaqueTypeConformance2();
  v35 = v75;
  v36 = v78;
  View.accessibilityIdentifier(_:)();
  (*(v79 + 8))(v31, v36);
  LOBYTE(v36) = static Edge.Set.vertical.getter();
  v89 = *(v73 + 1);
  sub_10000D58C(&v89, &v86, &qword_100219F00);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v76;
  sub_10000F618(v35, v76, &qword_10021F520);
  v46 = v45 + *(v77 + 44);
  *v46 = v36;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  sub_10000F618(v45, v16, &qword_10021F528);
  if (*(&v89 + 1))
  {
    v86 = v89;
    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    static Font.subheadline.getter();
    v52 = Text.font(_:)();
    v54 = v53;
    v56 = v55;

    sub_10000D60C(v47, v49, v51 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    *&v86 = qword_100230570;

    v57 = Text.foregroundStyle<A>(_:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_10000D60C(v52, v54, v56 & 1);

    *&v86 = v57;
    *(&v86 + 1) = v59;
    v87 = v61 & 1;
    v88 = v63;
    v64 = v72;
    View.accessibilityIdentifier(_:)();
    sub_10000D60C(v57, v59, v61 & 1);

    v65 = v82;
    sub_1001059F0(v64, v82);
    v34 = 0;
  }

  else
  {
    v65 = v82;
  }

  (*(v81 + 56))(v65, v34, 1, v83);
  v66 = v80;
  sub_10000D58C(v33, v80, &qword_10021F528);
  v67 = v84;
  sub_10000D58C(v65, v84, &qword_10021DB08);
  v68 = v85;
  sub_10000D58C(v66, v85, &qword_10021F528);
  v69 = sub_100009F70(&qword_10021F530);
  sub_10000D58C(v67, v68 + *(v69 + 48), &qword_10021DB08);
  sub_10000D52C(v65, &qword_10021DB08);
  sub_10000D52C(v33, &qword_10021F528);
  sub_10000D52C(v67, &qword_10021DB08);
  return sub_10000D52C(v66, &qword_10021F528);
}

uint64_t sub_1001050B0@<X0>(uint64_t *a1@<X8>)
{

  v2 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v3 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static Color.blue.getter();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_100105134()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021F448);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = v0[3];
  v12[2] = v0[2];
  v12[3] = v8;
  v12[4] = v0[4];
  v9 = v0[1];
  v12[0] = *v0;
  v12[1] = v9;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v10 = sub_100009F70(&qword_10021F450);
  sub_100103ADC(v12, &v7[*(v10 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10000D1EC(&qword_10021F458, &qword_10021F448);
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000D52C(v7, &qword_10021F448);
}

uint64_t sub_10010530C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100105338()
{
  result = qword_10021F438;
  if (!qword_10021F438)
  {
    sub_10000B3DC(&qword_10021F440);
    sub_10000B3DC(&qword_10021F2D0);
    sub_10000B3DC(&qword_10021F398);
    sub_10000B3DC(&qword_10021F2C8);
    sub_10000B3DC(&qword_10021F2C0);
    sub_10000B3DC(&qword_10021F2B8);
    sub_10000B3DC(&qword_10021F388);
    sub_10000B3DC(&qword_10021F390);
    sub_10000B3DC(&qword_10021F2B0);
    sub_10000D1EC(&qword_10021F380, &qword_10021F2B0);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetListStyle();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetGroupedListStyle();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100103530();
    swift_getOpaqueTypeConformance2();
    sub_1001059A8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F438);
  }

  return result;
}

unint64_t sub_100105680()
{
  result = qword_10021F4A8;
  if (!qword_10021F4A8)
  {
    sub_10000B3DC(&qword_10021F4A0);
    sub_10010570C();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F4A8);
  }

  return result;
}

unint64_t sub_10010570C()
{
  result = qword_10021F4B0;
  if (!qword_10021F4B0)
  {
    sub_10000B3DC(&qword_10021F4B8);
    sub_1001057C4();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F4B0);
  }

  return result;
}

unint64_t sub_1001057C4()
{
  result = qword_10021F4C0;
  if (!qword_10021F4C0)
  {
    sub_10000B3DC(&qword_10021F4C8);
    sub_10000D1EC(&qword_10021F4D0, &qword_10021F4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F4C0);
  }

  return result;
}

uint64_t sub_10010587C()
{

  return swift_deallocObject();
}

unint64_t sub_1001058F0()
{
  result = qword_10021F508;
  if (!qword_10021F508)
  {
    sub_10000B3DC(&qword_10021F500);
    sub_10009E2E0();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F508);
  }

  return result;
}

uint64_t sub_1001059A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001059F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021DB10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105A70()
{
  sub_10000B3DC(&qword_10021F448);
  sub_10000D1EC(&qword_10021F458, &qword_10021F448);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100105B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  result = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v29 = v8;
  v30 = v6;
  v31 = result;
  v28 = a2;
  v11 = 0;
  for (i = (v9 + 48); ; i += 3)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(i - 1);
    v14 = *i;
    v15 = *(i - 16);
    if (v15 != 1 && v15 != 2)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_10;
    }

    ++v11;

    if (v10 == v11)
    {
      return 0;
    }
  }

LABEL_10:
  v18 = v29;
  static Locale.current.getter();
  v19._countAndFlagsBits = v13;
  v19._object = v14;
  object = Locale.localizedString(forRegionCode:)(v19).value._object;

  (*(v30 + 8))(v18, v31);
  if (!object)
  {
    return 0;
  }

  v21 = *(v28 + 16);
  if (!v21)
  {
LABEL_21:

    return 0;
  }

  v22 = (v28 + 40);
  while (1)
  {
    v23 = *v22;
    if (*v22 >= 2)
    {
      break;
    }

LABEL_13:
    v22 += 2;
    if (!--v21)
    {
      goto LABEL_21;
    }
  }

  v17 = *(v22 - 1);
  v24 = String.lowercased()();
  v25 = String.lowercased()();
  if (v24._countAndFlagsBits == v25._countAndFlagsBits && v24._object == v25._object)
  {

    return v17;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    sub_10008324C(v17, v23);
    goto LABEL_13;
  }

  return v17;
}

uint64_t sub_100105E0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100105ECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CompactDatePickerConfiguration()
{
  result = qword_10021F590;
  if (!qword_10021F590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100105FBC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100106088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100009F70(&qword_10021F168);
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  sub_10010631C(a1, &v25 - v17);
  sub_10010631C(a2, v16);
  sub_1001070F4(&qword_10021F170, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = *(v13 + 32);
    v20(v11, v18, v12);
    v20(&v11[*(v6 + 48)], v16, v12);
    sub_1000FE9A0(v11, v9);
    v21 = *(v6 + 48);
    v20(a3, v9, v12);
    v22 = *(v13 + 8);
    v22(&v9[v21], v12);
    sub_1000FEA10(v11, v9);
    v23 = *(v6 + 48);
    v24 = sub_100009F70(&qword_10021F5E0);
    v20(&a3[*(v24 + 36)], &v9[v23], v12);
    return (v22)(v9, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v2 = type metadata accessor for DateComponents();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Calendar();
  v27 = *(v29 - 8);
  v4 = __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_10021F5E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  static Calendar.current.getter();
  static Calendar.current.getter();
  sub_100009F70(qword_10021F190);
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001B7650;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, enum case for Calendar.Component.year(_:), v12);
  v18(v17 + v14, enum case for Calendar.Component.month(_:), v12);
  v18(v17 + 2 * v14, enum case for Calendar.Component.day(_:), v12);
  v18(v17 + 3 * v14, enum case for Calendar.Component.hour(_:), v12);
  v18(v17 + 4 * v14, enum case for Calendar.Component.minute(_:), v12);
  v18(v17 + 5 * v14, enum case for Calendar.Component.second(_:), v12);
  sub_100106D6C(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = v28;
  Calendar.dateComponents(_:from:)();

  v20 = *(v27 + 8);
  v21 = v29;
  v20(v6, v29);
  Calendar.date(from:)();
  (*(v31 + 8))(v19, v32);
  v20(v8, v21);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v11, 1, v22) != 1)
  {
    return (*(v23 + 32))(v33, v11, v22);
  }

  Date.init()();
  result = (v24)(v11, 1, v22);
  if (result != 1)
  {
    return sub_10010708C(v11);
  }

  return result;
}

uint64_t sub_1001067A8(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int sub_100106830(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1001070F4(&qword_10021F5D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_1001068EC(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1001070F4(&qword_10021F5D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int sub_100106994(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1001070F4(&qword_10021F5D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

void *sub_100106A4C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100009F70(&qword_10021F608);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1001070F4(&qword_10021F610, &type metadata accessor for PresentationDetent);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1001070F4(&qword_10021F618, &type metadata accessor for PresentationDetent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100106D6C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100009F70(&qword_10021F5F0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1001070F4(&qword_10021F5F8, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1001070F4(&qword_10021F600, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10010708C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021F5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001070F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001071A0(uint64_t a1)
{
  *(a1 + 8) = sub_100107224(&qword_10021F658, &type metadata accessor for PromotionalContent.WatchFace);
  result = sub_100107224(&unk_10021F660, &type metadata accessor for PromotionalContent.WatchFace);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100107224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010726C()
{
  result = type metadata accessor for FeaturedVideoPlayer();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010730C()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return Binding.wrappedValue.getter();
}

uint64_t sub_10010735C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  sub_10010730C();
  if ((*(v3 + 48))(v9, 1, v2))
  {
    (*(v7 + 8))(v9, v6);
    (*(*(a1 + 24) + 40))(v2);
    v10 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v9, v2);
    (*(v7 + 8))(v9, v6);
    v11 = *(a1 + 24);
    v12 = *(v11 + 40);
    v13 = v12(v2, v11);
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v17 = v12(v2, v11);
    if (v15)
    {
      if (v13 == v17 && v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

id sub_1001075F4()
{
  v0 = [objc_allocWithZone(AVPlayerViewController) init];
  v1 = objc_allocWithZone(AVPlayer);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 initWithURL:v3];

  [v0 setModalPresentationStyle:0];
  [v0 setExitsFullScreenWhenPlaybackEnds:1];
  [v0 setShowsPlaybackControls:1];
  [v0 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
  [v0 setPlayer:v5];
  v6 = [v0 player];
  if (v6)
  {
    v7 = v6;
    swift_getWitnessTable();
    type metadata accessor for UIViewControllerRepresentableContext();
    UIViewControllerRepresentableContext.coordinator.getter();
    v8 = String._bridgeToObjectiveC()();
    [v7 addObserver:v10 forKeyPath:v8 options:1 context:0];
  }

  swift_getWitnessTable();
  type metadata accessor for UIViewControllerRepresentableContext();
  UIViewControllerRepresentableContext.coordinator.getter();
  [v0 setDelegate:v10];

  return v0;
}

id sub_100107830()
{
  ObjectType = swift_getObjectType();
  v2 = swift_isaMask & *v0;
  if (*(v0 + *(v2 + 0x68)))
  {

    sub_100009F70(qword_10021A1B8);
    Task.cancel()();

    v2 = swift_isaMask & *v0;
  }

  if (*(v0 + *(v2 + 112)))
  {

    sub_100009F70(qword_10021A1B8);
    Task.cancel()();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100107984(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x60);
  v3 = type metadata accessor for FeaturedVideoPlayer();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
}

uint64_t sub_100107A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Notification();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_100009F70(&qword_10021F7D8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100107BD8);
}

uint64_t sub_100107BD8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100218410 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_10010B098(&unk_10021F7E0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100107D4C;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100107D4C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10010B1AC;
  }

  else
  {
    v2 = sub_100107E60;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100107E7C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v0[9];
    v6 = v0[7];
    v7 = (v0[8] + 8);
    if (Strong)
    {
      v8 = Strong;
      sub_100108078();

      (*v7)(v5, v6);
      v9 = sub_10010B098(&unk_10021F7E0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_100107D4C;
      v11 = v0[10];
      v12 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
    }

    (*v7)(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100108078()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v3 - 8);
  v5 = v37 - v4;
  v6 = Notification.name.getter();
  if (qword_100218410 != -1)
  {
    swift_once();
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

LABEL_14:
    v18 = Notification.userInfo.getter();
    if (v18)
    {
      v19 = v18;
      v37[1] = 0x44496F65646976;
      v37[2] = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16))
      {
        v20 = sub_1000D8630(v38);
        if (v21)
        {
          sub_1000363B0(*(v19 + 56) + 32 * v20, &v39);
          sub_1000D8674(v38);

          if (*(&v40 + 1))
          {
            result = swift_dynamicCast();
            if ((result & 1) == 0)
            {
              return result;
            }

            v24 = v38[0];
            v23 = v38[1];
            if (v24 == (*(*(v2 + 88) + 40))(*(v2 + 80)) && v23 == v25)
            {
            }

            else
            {
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v27 & 1) == 0)
              {
                return result;
              }
            }

            v34 = type metadata accessor for TaskPriority();
            (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
            type metadata accessor for MainActor();
            v35 = v1;
            v36 = static MainActor.shared.getter();
            v32 = swift_allocObject();
            v32[2] = v36;
            v32[3] = &protocol witness table for MainActor;
            v32[4] = v35;
            v33 = &unk_1001B78F8;
            goto LABEL_30;
          }

          return sub_10000D52C(&v39, &unk_10021F7F0);
        }
      }

      sub_1000D8674(v38);
    }

    v39 = 0u;
    v40 = 0u;
    return sub_10000D52C(&v39, &unk_10021F7F0);
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = Notification.name.getter();
  if (qword_100218418 != -1)
  {
    swift_once();
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
  type metadata accessor for MainActor();
  v30 = v1;
  v31 = static MainActor.shared.getter();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v30;
  v33 = &unk_1001B78E0;
LABEL_30:
  sub_10013F12C(0, 0, v5, v33, v32);
}

uint64_t sub_10010855C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10010AD5C(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000D52C(v10, &qword_10021F7D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001087B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Notification();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_100009F70(&qword_10021F7D8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10010890C);
}

uint64_t sub_10010890C()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100218418 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_10010B098(&unk_10021F7E0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100108A80;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100108A80()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100108DAC;
  }

  else
  {
    v2 = sub_100108B94;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100108BB0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v0[9];
    v6 = v0[7];
    v7 = (v0[8] + 8);
    if (Strong)
    {
      v8 = Strong;
      sub_100108078();

      (*v7)(v5, v6);
      v9 = sub_10010B098(&unk_10021F7E0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_100108A80;
      v11 = v0[10];
      v12 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
    }

    (*v7)(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100108DAC()
{
  *(v0 + 40) = *(v0 + 120);
  sub_100009F70(qword_10021A1B8);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100108E38()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, &v0[*((v2 & v1) + 0x60)], v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  type metadata accessor for FeaturedVideoPlayer();
  sub_10010A474(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100108FDC()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  (*(*(v1 - 8) + 56))(&v7 - v4, 1, 1, v1);
  type metadata accessor for FeaturedVideoPlayer();
  sub_10010A474(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100109144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001091DC);
}

uint64_t sub_1001091DC()
{

  sub_100108E38();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100109240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001092D8);
}

uint64_t sub_1001092D8()
{

  sub_100108FDC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10010933C(void *a1, void *a2)
{
  v3 = [a1 player];
  if (v3)
  {
    v4 = v3;
    [v3 rate];
    if (v5 > 0.0)
    {
      v6 = [v4 error];
      if (!v6)
      {
        v7 = 1;
        goto LABEL_6;
      }
    }

    v7 = 0;
LABEL_6:
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    v11[4] = sub_10010B16C;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100109490;
    v11[3] = &unk_10020F618;
    v9 = _Block_copy(v11);
    v10 = v4;

    [a2 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_100109490(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001094F0(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10010B10C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x80000001001C10B0;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100109678(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  v9[2] = a3;
  v9[3] = a4;
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1001094F0(sub_10010B0E0, v9);

  swift_unknownObjectRelease();
}

uint64_t sub_100109728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v14 = a5;
    v15 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10010B098(&qword_100218558, type metadata accessor for NSKeyValueChangeKey);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_10010ADCC(v8, v10, v17, v13);

  return sub_10000D52C(v17, &unk_10021F7F0);
}

uint64_t sub_1001098E4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Optional();
      result = type metadata accessor for Binding();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001099A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v33 = *(v5 - 8);
  v6 = *(v33 + 84);
  v7 = *(type metadata accessor for URL() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v33 + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = v6 - 1;
  if (!v6)
  {
    v12 = 0;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (v12 > v11)
  {
    v11 = v12;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (v6)
  {
    v15 = -2;
  }

  else
  {
    v15 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v10 + v13;
  v17 = *(v33 + 80);
  v18 = v17 | 7;
  if (a2 <= v11)
  {
    goto LABEL_37;
  }

  v19 = v15 + v10 - ((-17 - v17) | v17) - ((-2 - v18 - (v14 + (v16 & ~v13))) | v18);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v6 == v11)
      {
        v27 = *(v33 + 48);

        return v27(a1, v6, v5);
      }

      else
      {
        v28 = (a1 + v16) & ~v13;
        if (v9 == v11)
        {
          v29 = *(v8 + 48);

          return v29(v28);
        }

        else
        {
          v30 = ((((v14 + v28 + v18 + 1) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) != 0)
          {
            v32 = (*(v33 + 48))((v30 + v17 + 8) & ~v17, v6, v5);
            if (v32 >= 2)
            {
              return v32 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v31 = *v30;
            if (v31 >= 0xFFFFFFFF)
            {
              LODWORD(v31) = -1;
            }

            return (v31 + 1);
          }
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v11 + (v26 | v24) + 1;
}

void sub_100109CCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for URL();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 64);
  if (v14 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = v9 - 1;
  v18 = *(v13 + 80);
  v19 = *(*(v10 - 8) + 64);
  if (!v9)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v17;
  }

  if (v16 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v16;
  }

  v22 = *(v8 + 80);
  if (v9)
  {
    v23 = *(v8 + 64);
  }

  else
  {
    v23 = v15 + 1;
  }

  v24 = v23 + ((v22 + 16) & ~v22);
  v25 = v22 | 7;
  v26 = v19 + 1;
  v27 = v24 + ((v19 + 1 + ((v15 + v18) & ~v18) + (v22 | 7)) & ~(v22 | 7));
  if (a3 <= v21)
  {
LABEL_29:
    if (v21 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v27 > 3)
  {
    v12 = 1;
    if (v21 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v30 = ~v21 + a2;
    if (v27 >= 4)
    {
      bzero(a1, v27);
      *a1 = v30;
      v31 = 1;
      if (v12 > 1)
      {
        goto LABEL_32;
      }

LABEL_69:
      if (v12)
      {
        a1[v27] = v31;
      }

      return;
    }

    v31 = (v30 >> (8 * v27)) + 1;
    if (v27)
    {
      v35 = v30 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v35;
          if (v12 <= 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          *a1 = v30;
          if (v12 <= 1)
          {
            goto LABEL_69;
          }
        }

LABEL_32:
        if (v12 == 2)
        {
          *&a1[v27] = v31;
        }

        else
        {
          *&a1[v27] = v31;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v12 <= 1)
    {
      goto LABEL_69;
    }

    goto LABEL_32;
  }

  v28 = ((a3 - v21 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
  if (!HIWORD(v28))
  {
    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v12 = v29;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_29;
  }

  v12 = 4;
  if (v21 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v27] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v12)
  {
    goto LABEL_36;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v21)
  {
    v32 = *(v11 + 56);
    v33 = a1;
    v34 = a2;
LABEL_39:

    v32(v33, v34, v9, v7);
    return;
  }

  v36 = &a1[v15 + v18] & ~v18;
  if (v14 == v21)
  {
    v37 = *(v13 + 56);

    v37(v36, a2);
    return;
  }

  v38 = ((v26 + v36 + v25) & ~v25);
  if (v20 < a2)
  {
    if (v24 <= 3)
    {
      v39 = ~(-1 << (8 * v24));
    }

    else
    {
      v39 = -1;
    }

    if (!v24)
    {
      return;
    }

    v40 = v39 & (~v20 + a2);
    if (v24 <= 3)
    {
      v41 = v24;
    }

    else
    {
      v41 = 4;
    }

    bzero(((v26 + v36 + v25) & ~v25), v24);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
LABEL_66:
        *v38 = v40;
        return;
      }

LABEL_91:
      *v38 = v40;
      return;
    }

    goto LABEL_92;
  }

  v42 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v43 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v43 = (a2 - 1);
    }

    *v42 = v43;
    return;
  }

  v44 = v42 + v22 + 8;
  v38 = (v44 & ~v22);
  if (v9)
  {
    v45 = v15;
  }

  else
  {
    v45 = (v15 + 1);
  }

  if (v17 >= a2)
  {
    v32 = *(v11 + 56);
    v34 = (a2 + 1);
    v33 = (v44 & ~v22);
    goto LABEL_39;
  }

  if (v45 <= 3)
  {
    v46 = ~(-1 << (8 * v45));
  }

  else
  {
    v46 = -1;
  }

  if (v45)
  {
    v40 = v46 & (~v17 + a2);
    if (v45 <= 3)
    {
      v41 = v45;
    }

    else
    {
      v41 = 4;
    }

    bzero(v38, v45);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
        goto LABEL_66;
      }

      goto LABEL_91;
    }

LABEL_92:
    if (v41 == 3)
    {
      *v38 = v40;
      v38[2] = BYTE2(v40);
    }

    else
    {
      *v38 = v40;
    }
  }
}

uint64_t sub_10010A144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for FeaturedVideoPlayer();
  v11 = v10[9];
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 32))(a6 + v11, a2, v12);
  *(a6 + v10[10]) = a3;
  v13 = v10[11];
  type metadata accessor for Optional();
  v14 = type metadata accessor for Binding();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a4, v14);
}

void *sub_10010A288@<X0>(void *a1@<X8>)
{
  result = sub_1001077F4();
  *a1 = result;
  return result;
}

uint64_t sub_10010A2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10010A32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_10010A3A8()
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

NSString sub_10010A404()
{
  result = String._bridgeToObjectiveC()();
  qword_1002305E8 = result;
  return result;
}

NSString sub_10010A43C()
{
  result = String._bridgeToObjectiveC()();
  qword_1002305F0 = result;
  return result;
}

uint64_t sub_10010A474(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

void sub_10010A560(void *a1, uint64_t a2)
{
  v5 = [a1 player];
  if (v5)
  {
    if ((sub_10010735C(a2) & 1) == 0 || *(v2 + *(a2 + 40)) == 1)
    {
      [v5 pause];
      [a1 setShowsPlaybackControls:0];
      [a1 setShowsPlaybackControls:1];
    }
  }
}

void *sub_10010A628(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = swift_isaMask;
  v7 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  *&v2[*((v6 & v5) + 0x68)] = 0;
  *&v2[*((swift_isaMask & *v2) + 0x70)] = 0;
  v10 = *((swift_isaMask & *v2) + 0x60);
  v11 = *((v6 & v5) + 0x50);
  v12 = *((v6 & v5) + 0x58);
  v13 = type metadata accessor for FeaturedVideoPlayer();
  (*(*(v13 - 8) + 16))(&v2[v10], a1, v13);
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v25, "init");
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v11;
  v18[5] = v12;
  v18[6] = v17;
  v19 = v14;
  v20 = sub_10010855C(0, 0, v9, &unk_1001B78B0, v18);
  sub_10000D52C(v9, &qword_10021F7D0);
  *(v19 + *((swift_isaMask & *v19) + 0x68)) = v20;

  v16(v9, 1, 1, v15);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v11;
  v22[5] = v12;
  v22[6] = v21;
  v23 = sub_10010855C(0, 0, v9, &unk_1001B78C0, v22);
  sub_10000D52C(v9, &qword_10021F7D0);
  *(v19 + *((swift_isaMask & *v19) + 0x70)) = v23;

  return v19;
}

uint64_t sub_10010A9A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10010A9E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000214E4;

  return sub_100107A84(a1, v4, v5, v6);
}

uint64_t sub_10010AAA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10010AAE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_1001087B8(a1, v4, v5, v6);
}

uint64_t sub_10010ABB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_100109240(a1, v4, v5, v6);
}

uint64_t sub_10010AC68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10010ACA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000214E4;

  return sub_100109144(a1, v4, v5, v6);
}

uint64_t sub_10010AD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021F7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10010ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (v6 = swift_isaMask & *v4, a1 == 1702125938) && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (a4)
      {
        if (*(a4 + 16))
        {
          v7 = sub_1000D8BC0(NSKeyValueChangeNewKey);
          if (v8)
          {
            sub_1000363B0(*(a4 + 56) + 32 * v7, v16);
            if ((swift_dynamicCast() & 1) != 0 && v15 != 0.0)
            {
              v9 = [objc_opt_self() defaultCenter];
              if (qword_100218410 != -1)
              {
                swift_once();
              }

              v10 = qword_1002305E8;
              sub_100009F70(&qword_10021F800);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1001AEB90;
              v16[0] = 0x44496F65646976;
              v16[1] = 0xE700000000000000;
              AnyHashable.init<A>(_:)();
              v12 = (*(*(v6 + 88) + 40))(*(v6 + 80));
              *(inited + 96) = &type metadata for ResourceID;
              *(inited + 72) = v12;
              *(inited + 80) = v13;
              sub_100192CF8(inited);
              swift_setDeallocating();
              sub_10000D52C(inited + 32, &unk_100222CB0);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              [v9 postNotificationName:v10 object:0 userInfo:isa];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10010B098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010B134()
{

  return swift_deallocObject();
}

id sub_10010B16C()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) play];
  }

  return result;
}

uint64_t sub_10010B18C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10010B1B0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10010B1DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10010B224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010B2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_100009F70(&qword_10021F838);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v90 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v77 - v7;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v9 = sub_100009F70(&qword_10021F840);
  sub_10010B94C(a1, &v8[*(v9 + 44)]);
  v10 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v11 = *(v4 + 44);
  v89 = v8;
  v12 = &v8[v11];
  *v12 = v10;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  v17 = *(a1 + 72);
  if (v17)
  {
    v116 = *(a1 + 64);
    v117 = v17;
    sub_100027068();

    v18 = Text.init<A>(_:)();
    v20 = v19;
    v79 = a1;
    v22 = v21;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v23 = Text.font(_:)();
    v25 = v24;
    v27 = v26;

    sub_10000D60C(v18, v20, v22 & 1);

    v116 = static Color.white.getter();
    v28 = Text.foregroundStyle<A>(_:)();
    v87 = v29;
    v88 = v28;
    LOBYTE(v20) = v30;
    v86 = v31;
    sub_10000D60C(v23, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    v32 = swift_getKeyPath();
    LOBYTE(v93) = v20 & 1;
    LOBYTE(v106[0]) = 0;
    v83 = v20 & 1;
    *&v84 = 0;
    *(&v84 + 1) = v32;
    LOBYTE(v18) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    LOBYTE(v116) = 0;
    *&v82 = 1;
    *(&v82 + 1) = v18;
    v81 = 2;
  }

  else
  {
    v87 = 0;
    v88 = 0;
    KeyPath = 0;
    v86 = 0;
    v81 = 0;
    v82 = 0uLL;
    v84 = 0uLL;
    v83 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
    v40 = 0;
  }

  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  v45 = v44;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_10000D60C(v41, v43, v45 & 1);

  static Color.white.getter();
  v51 = Color.opacity(_:)();

  v116 = v51;
  v52 = Text.foregroundStyle<A>(_:)();
  v78 = v53;
  v79 = v54;
  LOBYTE(v41) = v55;
  sub_10000D60C(v46, v48, v50 & 1);

  v56 = swift_getKeyPath();
  v77 = v56;
  v57 = swift_getKeyPath();
  v58 = v41 & 1;
  LOBYTE(v116) = v41 & 1;
  LOBYTE(v93) = 0;
  v59 = v90;
  sub_10000D58C(v89, v90, &qword_10021F838);
  v60 = v59;
  v61 = v80;
  sub_10000D58C(v60, v80, &qword_10021F838);
  v62 = sub_100009F70(&qword_10021F848);
  v63 = v61 + *(v62 + 48);
  *&v93 = v88;
  *(&v93 + 1) = v87;
  *&v94 = v83;
  *(&v94 + 1) = v86;
  *&v95 = KeyPath;
  *(&v95 + 1) = v81;
  v96 = v84;
  v97 = v82;
  *&v98 = v34;
  *(&v98 + 1) = v36;
  *&v99 = v38;
  *(&v99 + 1) = v40;
  v100 = 0;
  *(v63 + 112) = 0;
  v64 = v98;
  *(v63 + 64) = v97;
  *(v63 + 80) = v64;
  *(v63 + 96) = v99;
  v65 = v93;
  v66 = v94;
  v67 = v96;
  *(v63 + 32) = v95;
  *(v63 + 48) = v67;
  *v63 = v65;
  *(v63 + 16) = v66;
  v68 = v61 + *(v62 + 64);
  v69 = v52;
  *&v101 = v52;
  v71 = v78;
  v70 = v79;
  *(&v101 + 1) = v78;
  LOBYTE(v102) = v58;
  DWORD1(v102) = *&v92[3];
  *(&v102 + 1) = *v92;
  *(&v102 + 1) = v79;
  *&v103 = v56;
  *(&v103 + 1) = 2;
  LOBYTE(v104) = 0;
  DWORD1(v104) = *&v91[3];
  *(&v104 + 1) = *v91;
  *(&v104 + 1) = v57;
  v105 = 1;
  v72 = v101;
  v73 = v102;
  v74 = v103;
  v75 = v104;
  *(v68 + 64) = 1;
  *(v68 + 32) = v74;
  *(v68 + 48) = v75;
  *v68 = v72;
  *(v68 + 16) = v73;
  sub_10000D58C(&v93, &v116, &qword_10021F850);
  sub_10000D58C(&v101, &v116, &qword_10021A630);
  sub_10000D52C(v89, &qword_10021F838);
  v106[0] = v69;
  v106[1] = v71;
  v107 = v58;
  *v108 = *v92;
  *&v108[3] = *&v92[3];
  v109 = v70;
  v110 = v77;
  v111 = 2;
  v112 = 0;
  *v113 = *v91;
  *&v113[3] = *&v91[3];
  v114 = v57;
  v115 = 1;
  sub_10000D52C(v106, &qword_10021A630);
  v116 = v88;
  v117 = v87;
  v118 = v83;
  v119 = v86;
  v120 = KeyPath;
  v121 = v81;
  v122 = v84;
  v123 = v82;
  v124 = v34;
  v125 = v36;
  v126 = v38;
  v127 = v40;
  v128 = 0;
  sub_10000D52C(&v116, &qword_10021F850);
  return sub_10000D52C(v90, &qword_10021F838);
}

uint64_t sub_10010B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = sub_100009F70(&qword_10021F858) - 8;
  v3 = __chkstk_darwin(v49);
  v50 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v45[-v5];
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100009F70(&qword_10021F860);
  v12 = __chkstk_darwin(v11 - 8);
  v52 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v48 = &v45[-v14];
  Image.init(_:bundle:)();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v15 = Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  v53 = *(a1 + 80);
  *&v54[0] = *(a1 + 96);
  sub_100009F70(&qword_10021F868);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v55[38] = v59;
  *&v55[22] = v58;
  *&v55[6] = v57;
  *(v54 + 2) = *v55;
  *(&v54[1] + 2) = *&v55[16];
  v56 = 1;
  v53 = v15;
  LOWORD(v54[0]) = 1;
  *(&v54[2] + 2) = *&v55[32];
  *&v54[3] = *(&v59 + 1);
  sub_100009F70(&qword_10021F870);
  sub_10010C394();
  View.accessibilityHidden(_:)();
  v60[2] = v54[1];
  v60[3] = v54[2];
  v61 = *&v54[3];
  v60[0] = v53;
  v60[1] = v54[0];
  sub_10000D52C(v60, &qword_10021F870);

  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v46 = v19;
  v47 = v20;
  v21 = &v6[*(sub_100009F70(&qword_100219820) + 36)];
  v22 = *(sub_100009F70(&qword_100219828) + 28);
  v23 = enum case for Text.Case.uppercase(_:);
  v24 = type metadata accessor for Text.Case();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v21 + v22, v23, v24);
  (*(v25 + 56))(v21 + v22, 0, 1, v24);
  *v21 = swift_getKeyPath();
  *v6 = v16;
  *(v6 + 1) = v18;
  v6[16] = v46 & 1;
  *(v6 + 3) = v47;
  v26 = v6;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v27 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v29 = &v6[*(sub_100009F70(&qword_10021BF80) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = swift_getKeyPath();
  v31 = &v6[*(sub_100009F70(&qword_10021F880) + 36)];
  *v31 = v30;
  *(v31 + 1) = 1;
  v31[16] = 0;
  static Color.white.getter();
  v32 = Color.opacity(_:)();

  *&v6[*(sub_100009F70(&qword_10021F888) + 36)] = v32;
  v33 = swift_allocObject();
  v34 = *(a1 + 80);
  *(v33 + 80) = *(a1 + 64);
  *(v33 + 96) = v34;
  *(v33 + 112) = *(a1 + 96);
  v35 = *(a1 + 16);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v35;
  v36 = *(a1 + 48);
  *(v33 + 48) = *(a1 + 32);
  *(v33 + 64) = v36;
  v37 = &v6[*(v49 + 44)];
  *v37 = sub_10010BFE8;
  v37[1] = 0;
  v37[2] = sub_10010C490;
  v37[3] = v33;
  v38 = v48;
  v39 = v52;
  sub_10000D58C(v48, v52, &qword_10021F860);
  v40 = v50;
  sub_10000D58C(v26, v50, &qword_10021F858);
  v41 = v39;
  v42 = v51;
  sub_10000D58C(v41, v51, &qword_10021F860);
  v43 = sub_100009F70(&qword_10021F890);
  sub_10000D58C(v40, v42 + *(v43 + 48), &qword_10021F858);
  sub_10010C498(a1, &v53);
  sub_10000D52C(v26, &qword_10021F858);
  sub_10000D52C(v38, &qword_10021F860);
  sub_10000D52C(v40, &qword_10021F858);
  return sub_10000D52C(v52, &qword_10021F860);
}

uint64_t sub_10010BFE8@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10010C070@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_10021F808);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = *(v1 + 80);
  v18[4] = *(v1 + 64);
  v18[5] = v10;
  v19 = *(v1 + 96);
  v11 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v11;
  v12 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v12;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = sub_100009F70(&qword_10021F810);
  sub_10010B2A8(v18, &v9[*(v13 + 44)]);
  v14 = *(v7 + 36);
  v15 = enum case for BlendMode.plusLighter(_:);
  v16 = type metadata accessor for BlendMode();
  (*(*(v16 - 8) + 104))(&v9[v14], v15, v16);
  static AccessibilityChildBehavior.combine.getter();
  sub_10010C294();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v3);
  sub_10000D52C(v9, &qword_10021F808);
  result = sub_100009F70(&qword_10021F830);
  *(a1 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_10010C294()
{
  result = qword_10021F818;
  if (!qword_10021F818)
  {
    sub_10000B3DC(&qword_10021F808);
    sub_10010C320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F818);
  }

  return result;
}

unint64_t sub_10010C320()
{
  result = qword_10021F820;
  if (!qword_10021F820)
  {
    sub_10000B3DC(&qword_10021F828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F820);
  }

  return result;
}

unint64_t sub_10010C394()
{
  result = qword_10021F878;
  if (!qword_10021F878)
  {
    sub_10000B3DC(&qword_10021F870);
    sub_100079534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F878);
  }

  return result;
}

uint64_t sub_10010C430()
{

  return swift_deallocObject();
}

unint64_t sub_10010C4D4()
{
  result = qword_10021F898[0];
  if (!qword_10021F898[0])
  {
    sub_10000B3DC(&qword_10021F830);
    sub_10000B3DC(&qword_10021F808);
    sub_10010C294();
    swift_getOpaqueTypeConformance2();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021F898);
  }

  return result;
}

uint64_t sub_10010C59C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10010C6C0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3 & 1;
  v4 = type metadata accessor for FilterView();
  v5 = v4[9];
  *(a1 + v5) = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  v6 = v4[10];
  *(a1 + v6) = swift_getKeyPath();
  sub_100009F70(&qword_100219710);
  swift_storeEnumTagMultiPayload();
  v7 = (a1 + v4[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v7 = result;
  v7[1] = v9;
  return result;
}

uint64_t sub_10010C6C0()
{
  type metadata accessor for FilterViewModel();
  swift_getWitnessTable();
  return StateObject.init(wrappedValue:)();
}

uint64_t sub_10010C758(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for FilterViewModel();
  WitnessTable = swift_getWitnessTable();

  return a2(v3, v4, v5, v6, WitnessTable);
}

uint64_t sub_10010C7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for NavigationPath();
  v19[4] = sub_10000B3DC(&qword_10021F920);
  v19[1] = sub_10000B3DC(&qword_10021F928);
  v19[2] = sub_10000B3DC(&qword_10021F930);
  v3 = *(a1 + 16);
  v21 = *(a1 + 24);
  v20 = v3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v46 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v19[3] = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v44 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F940);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F948);
  v42 = swift_getWitnessTable();
  v43 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  swift_getWitnessTable();
  sub_10000B3DC(&qword_10021F950);
  sub_10000B3DC(&qword_10021F958);
  type metadata accessor for GlassProminentButtonStyle();
  sub_10011C1B4();
  sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CompactDatePickerConfiguration();
  v40 = &protocol witness table for Solarium;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10011C16C(&qword_10021F5D0, type metadata accessor for CompactDatePickerConfiguration);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = sub_10000B3DC(&qword_10021F9E0);
  v7 = swift_getOpaqueTypeConformance2();
  v8 = sub_10000D1EC(&qword_10021F9E8, &qword_10021F9E0);
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021F9F0);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F9F8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v36 = OpaqueTypeMetadata2;
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_10000D1EC(&qword_10021FA00, &qword_10021F9F0);
  v32 = swift_getWitnessTable();
  v33 = sub_10000D1EC(&qword_10021FA08, &qword_10021F9F8);
  v30 = swift_getWitnessTable();
  v31 = &protocol witness table for _AppearanceActionModifier;
  v28 = swift_getWitnessTable();
  v29 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v9 = type metadata accessor for NavigationStack();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  v25 = v20;
  v26 = v21;
  v27 = v23;
  NavigationStack.init<>(root:)();
  v16 = swift_getWitnessTable();
  sub_100157EFC(v13, v9, v16);
  v17 = *(v10 + 8);
  v17(v13, v9);
  sub_100157EFC(v15, v9, v16);
  return (v17)(v15, v9);
}

uint64_t sub_10010D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v207 = a1;
  v190 = a4;
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v188 = *(v6 - 8);
  v189 = v6;
  __chkstk_darwin(v6);
  v187 = v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FilterView();
  v9 = *(v8 - 8);
  v204 = v8;
  v205 = v9;
  v206 = *(v9 + 64);
  __chkstk_darwin(v8);
  v201 = v146 - v10;
  v200 = type metadata accessor for CompactDatePickerConfiguration();
  __chkstk_darwin(v200);
  v186 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_10000B3DC(&qword_10021F920);
  v199 = sub_10000B3DC(&qword_10021F928);
  v202 = sub_10000B3DC(&qword_10021F930);
  v209 = a3;
  v208 = a2;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v14 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v227 = v12;
  v228 = AssociatedTypeWitness;
  v229 = v14;
  v230 = WitnessTable;
  v231 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v17 = swift_getWitnessTable();
  v18 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v236 = v17;
  v237 = v18;
  v196 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v235 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v19 = type metadata accessor for ScrollView();
  v20 = swift_getWitnessTable();
  v227 = v19;
  v228 = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F940);
  swift_getTupleTypeMetadata3();
  v199 = type metadata accessor for TupleView();
  v198 = swift_getWitnessTable();
  v21 = type metadata accessor for VStack();
  v202 = *(v21 - 8);
  __chkstk_darwin(v21);
  v197 = v146 - v22;
  v178 = v21;
  v23 = type metadata accessor for ModifiedContent();
  v203 = *(v23 - 8);
  __chkstk_darwin(v23);
  v191 = (v146 - v24);
  v25 = sub_10000B3DC(&qword_10021F948);
  v177 = swift_getWitnessTable();
  v233 = v177;
  v234 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v26 = swift_getWitnessTable();
  v27 = sub_10000B3DC(&qword_10021F950);
  v28 = sub_10000B3DC(&qword_10021F958);
  v29 = type metadata accessor for GlassProminentButtonStyle();
  v30 = sub_10011C1B4();
  v31 = sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle);
  v227 = v28;
  v228 = v29;
  v229 = v30;
  v230 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v227 = v27;
  v228 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v227 = v23;
  v228 = v25;
  v229 = v26;
  v230 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v227 = v23;
  v228 = v25;
  v229 = v26;
  v230 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v227 = v23;
  v228 = &type metadata for Solarium;
  v229 = OpaqueTypeMetadata2;
  v230 = v26;
  v146[1] = OpaqueTypeMetadata2;
  v36 = v26;
  v148 = v26;
  v231 = &protocol witness table for Solarium;
  v232 = v35;
  v37 = v35;
  v146[2] = v35;
  v38 = swift_getOpaqueTypeMetadata2();
  v172 = *(v38 - 8);
  __chkstk_darwin(v38);
  v147 = v146 - v39;
  v227 = v23;
  v228 = &type metadata for Solarium;
  v229 = OpaqueTypeMetadata2;
  v230 = v36;
  v231 = &protocol witness table for Solarium;
  v232 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_10011C16C(&qword_10021F5D0, type metadata accessor for CompactDatePickerConfiguration);
  v227 = v38;
  v42 = v38;
  v150 = v38;
  v151 = v40;
  v43 = v200;
  v228 = v200;
  v229 = v40;
  v230 = v41;
  v44 = v41;
  v45 = swift_getOpaqueTypeMetadata2();
  v176 = *(v45 - 8);
  __chkstk_darwin(v45);
  v194 = v146 - v46;
  v227 = v42;
  v228 = v43;
  v229 = v40;
  v230 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v227 = v45;
  v228 = v43;
  v48 = v45;
  v160 = v45;
  v161 = v47;
  v49 = v43;
  v229 = v47;
  v230 = v44;
  v50 = v47;
  v193 = v44;
  v51 = swift_getOpaqueTypeMetadata2();
  v171 = *(v51 - 8);
  __chkstk_darwin(v51);
  v159 = v146 - v52;
  v227 = v48;
  v228 = v49;
  v229 = v50;
  v230 = v44;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v51;
  v154 = v51;
  v155 = v53;
  v227 = v51;
  v228 = v53;
  v55 = v53;
  v56 = swift_getOpaqueTypeMetadata2();
  v173 = *(v56 - 8);
  __chkstk_darwin(v56);
  v153 = v146 - v57;
  v227 = v54;
  v228 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v227 = v56;
  v228 = v58;
  v152 = v56;
  v59 = v58;
  v156 = v58;
  v60 = swift_getOpaqueTypeMetadata2();
  v165 = v60;
  v169 = *(v60 - 8);
  __chkstk_darwin(v60);
  v158 = v146 - v61;
  v62 = sub_10000B3DC(&qword_10021F9E0);
  v164 = v62;
  v227 = v56;
  v228 = v59;
  v63 = swift_getOpaqueTypeConformance2();
  v163 = v63;
  v162 = sub_10000D1EC(&qword_10021F9E8, &qword_10021F9E0);
  v227 = v60;
  v228 = v62;
  v229 = v63;
  v230 = v162;
  v166 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v157 = swift_getOpaqueTypeMetadata2();
  v168 = *(v157 - 8);
  __chkstk_darwin(v157);
  v149 = v146 - v64;
  sub_10000B3DC(&qword_10021F9F0);
  v167 = type metadata accessor for ModifiedContent();
  v175 = *(v167 - 8);
  __chkstk_darwin(v167);
  v192 = v146 - v65;
  sub_10000B3DC(&qword_10021F9F8);
  v174 = type metadata accessor for ModifiedContent();
  v181 = *(v174 - 8);
  __chkstk_darwin(v174);
  v195 = v146 - v66;
  v180 = type metadata accessor for ModifiedContent();
  v184 = *(v180 - 8);
  __chkstk_darwin(v180);
  v170 = v146 - v67;
  v183 = type metadata accessor for ModifiedContent();
  v185 = *(v183 - 8);
  v68 = __chkstk_darwin(v183);
  v179 = v146 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v182 = v146 - v70;
  static HorizontalAlignment.leading.getter();
  v72 = v207;
  v71 = v208;
  v216 = v208;
  v73 = v209;
  v217 = v209;
  v218 = v207;
  v74 = v197;
  VStack.init(alignment:spacing:content:)();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v75 = v191;
  v76 = v178;
  View.ignoresSafeArea(_:edges:)();
  (*(v202 + 8))(v74, v76);
  Solarium.init()();
  v213 = v71;
  v214 = v73;
  v215 = v72;
  swift_checkMetadataState();
  v77 = v147;
  View.staticIf<A, B>(_:then:)();
  (*(v203 + 8))(v75, v23);
  v191 = &StateObject.wrappedValue.getter;
  v78 = v204;
  sub_10010C758(v204, &StateObject.wrappedValue.getter);
  v79 = v186;
  sub_10015E948();

  v80 = v205;
  v81 = *(v205 + 16);
  v198 = v205 + 16;
  v199 = v81;
  v82 = v201;
  v81(v201, v72, v78);
  v83 = *(v80 + 80);
  v84 = (v83 + 32) & ~v83;
  v202 = v84;
  v203 = v83;
  v85 = swift_allocObject();
  v86 = v209;
  *(v85 + 16) = v208;
  *(v85 + 24) = v86;
  v197 = *(v80 + 32);
  v205 = v80 + 32;
  (v197)(v85 + v84, v82, v78);
  v87 = v150;
  View.onChange<A>(of:initial:_:)();

  sub_10011DFD8(v79, type metadata accessor for CompactDatePickerConfiguration);
  (*(v172 + 8))(v77, v87);
  v88 = v207;
  sub_10010C758(v78, v191);
  sub_10015E994();

  v89 = v82;
  v90 = v82;
  v91 = v78;
  v199(v90, v88, v78);
  v92 = v202;
  v93 = swift_allocObject();
  *(v93 + 16) = v208;
  *(v93 + 24) = v86;
  (v197)(v93 + v92, v89, v91);
  v95 = v159;
  v94 = v160;
  v96 = v194;
  View.onChange<A>(of:initial:_:)();

  sub_10011DFD8(v79, type metadata accessor for CompactDatePickerConfiguration);
  (*(v176 + 8))(v96, v94);
  v98 = v187;
  v97 = v188;
  v99 = v189;
  (*(v188 + 104))(v187, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v189);
  v101 = v153;
  v100 = v154;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v97 + 8))(v98, v99);
  (*(v171 + 8))(v95, v100);
  v102 = v207;
  sub_10010C758(v91, v191);

  v103 = v158;
  v104 = v152;
  View.navigationBarTitle(_:)();

  (*(v173 + 8))(v101, v104);
  v210 = v208;
  v211 = v209;
  v212 = v102;
  v105 = v102;
  v106 = v149;
  v108 = v164;
  v107 = v165;
  v110 = v162;
  v109 = v163;
  View.toolbar<A>(content:)();
  (*(v169 + 8))(v103, v107);
  v227 = v107;
  v228 = v108;
  v229 = v109;
  v230 = v110;
  v194 = swift_getOpaqueTypeConformance2();
  v200 = sub_10011C800();
  v111 = v157;
  sub_10007EFB4();
  (*(v168 + 8))(v106, v111);
  v112 = v201;
  v113 = v204;
  v114 = v199;
  v199(v201, v105, v204);
  v115 = v202;
  v116 = swift_allocObject();
  v117 = v208;
  v118 = v209;
  *(v116 + 16) = v208;
  *(v116 + 24) = v118;
  v119 = v197;
  (v197)(v116 + v115, v112, v113);
  v120 = sub_10000D1EC(&qword_10021FA00, &qword_10021F9F0);
  v225 = v194;
  v226 = v120;
  v121 = v167;
  v122 = swift_getWitnessTable();
  sub_10001E738();
  v123 = v192;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v175 + 8))(v123, v121);
  v124 = v201;
  v125 = v204;
  v114(v201, v207, v204);
  v126 = v202;
  v127 = swift_allocObject();
  v128 = v209;
  *(v127 + 16) = v117;
  *(v127 + 24) = v128;
  v119(v127 + v126, v124, v125);
  v129 = sub_10000D1EC(&qword_10021FA08, &qword_10021F9F8);
  v223 = v122;
  v224 = v129;
  v130 = v174;
  v131 = swift_getWitnessTable();
  v132 = v170;
  v133 = v195;
  View.onAppear(perform:)();

  (*(v181 + 8))(v133, v130);
  v134 = v204;
  v199(v124, v207, v204);
  v135 = v202;
  v136 = swift_allocObject();
  v137 = v209;
  *(v136 + 16) = v208;
  *(v136 + 24) = v137;
  (v197)(v136 + v135, v124, v134);
  v221 = v131;
  v222 = &protocol witness table for _AppearanceActionModifier;
  v138 = v180;
  v139 = swift_getWitnessTable();
  v140 = v179;
  View.onDisappear(perform:)();

  (*(v184 + 8))(v132, v138);
  v219 = v139;
  v220 = &protocol witness table for _AppearanceActionModifier;
  v141 = v183;
  v142 = swift_getWitnessTable();
  v143 = v182;
  sub_100157EFC(v140, v141, v142);
  v144 = *(v185 + 8);
  v144(v140, v141);
  sub_100157EFC(v143, v141, v142);
  return (v144)(v143, v141);
}

uint64_t sub_10010EE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v143 = a1;
  v135 = a4;
  v134 = sub_100009F70(&qword_10021FAE0);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v113 = &v106 - v6;
  v7 = sub_100009F70(&qword_10021F970);
  v8 = __chkstk_darwin(v7 - 8);
  v112 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v109 = &v106 - v10;
  v111 = type metadata accessor for Divider();
  v110 = *(v111 - 8);
  v11 = __chkstk_darwin(v111);
  v108 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v106 - v13;
  v130 = sub_100009F70(&qword_10021F940);
  v14 = __chkstk_darwin(v130);
  v132 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v131 = &v106 - v16;
  v129 = type metadata accessor for ColorScheme();
  v128 = *(v129 - 8);
  v17 = __chkstk_darwin(v129);
  v127 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v126 = &v106 - v19;
  v141 = sub_10000B3DC(&qword_10021F928);
  v142 = sub_10000B3DC(&qword_10021F930);
  swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Array();
  v138 = a3;
  v137 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v22 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v148 = v20;
  v149 = AssociatedTypeWitness;
  v150 = v22;
  v151 = WitnessTable;
  v152 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v25 = swift_getWitnessTable();
  v26 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v147[17] = v25;
  v147[18] = v26;
  v147[16] = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v27 = type metadata accessor for ScrollView();
  v28 = swift_getWitnessTable();
  v148 = v27;
  v149 = v28;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v114 = swift_getWitnessTable();
  v29 = type metadata accessor for ScrollView();
  v115 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v106 - v30;
  v32 = type metadata accessor for ModifiedContent();
  v116 = *(v32 - 8);
  __chkstk_darwin(v32);
  v139 = &v106 - v33;
  v34 = type metadata accessor for ModifiedContent();
  v118 = *(v34 - 8);
  __chkstk_darwin(v34);
  v117 = &v106 - v35;
  v36 = type metadata accessor for ModifiedContent();
  v121 = *(v36 - 8);
  __chkstk_darwin(v36);
  v119 = &v106 - v37;
  sub_10000B3DC(&qword_1002188F8);
  v122 = v36;
  v142 = type metadata accessor for ModifiedContent();
  v140 = *(v142 - 8);
  v38 = __chkstk_darwin(v142);
  v125 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v120 = &v106 - v41;
  __chkstk_darwin(v40);
  v141 = &v106 - v42;
  v43 = sub_100009F70(&qword_100219C30);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v106 - v45;
  v123 = sub_100009F70(&qword_10021F920);
  v47 = __chkstk_darwin(v123);
  v124 = &v106 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v50 = &v106 - v49;
  v51 = static Solarium.isEnabled.getter();
  v136 = v50;
  if (v51)
  {
    v52 = 1;
  }

  else
  {
    Divider.init()();
    v53 = static Edge.Set.top.getter();
    v54 = type metadata accessor for FilterView();
    sub_10010C758(v54, &StateObject.wrappedValue.getter);
    sub_10015E890();
    v50 = v136;

    EdgeInsets.init(_all:)();
    v55 = &v46[*(v43 + 36)];
    *v55 = v53;
    *(v55 + 1) = v56;
    *(v55 + 2) = v57;
    *(v55 + 3) = v58;
    *(v55 + 4) = v59;
    v55[40] = 0;
    sub_10000F618(v46, v50, &qword_100219C30);
    v52 = 0;
  }

  v60 = (*(v44 + 56))(v50, v52, 1, v43);
  __chkstk_darwin(v60);
  v61 = v138;
  *(&v106 - 4) = v137;
  *(&v106 - 3) = v61;
  *(&v106 - 2) = v143;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.top.getter();
  if (static Solarium.isEnabled.getter())
  {
    v62 = type metadata accessor for FilterView();
    sub_10010C758(v62, &StateObject.wrappedValue.getter);
    sub_10015E890();
  }

  v63 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v115 + 8))(v31, v29);
  sub_100009F70(&qword_100218DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v65 = static Edge.Set.leading.getter();
  *(inited + 32) = v65;
  v66 = static Edge.Set.trailing.getter();
  *(inited + 33) = v66;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v65)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v66)
  {
    Edge.Set.init(rawValue:)();
  }

  v67 = type metadata accessor for FilterView();
  sub_10010C758(v67, &StateObject.wrappedValue.getter);
  sub_10015E890();

  v147[9] = v63;
  v147[10] = &protocol witness table for _PaddingLayout;
  v68 = swift_getWitnessTable();
  v69 = v117;
  v70 = v139;
  sub_10007F05C();
  (*(v116 + 8))(v70, v32);
  static Edge.Set.horizontal.getter();
  v71 = sub_10011C6F4();
  v147[7] = v68;
  v147[8] = v71;
  v72 = swift_getWitnessTable();
  v73 = v119;
  View.padding(_:_:)();
  (*(v118 + 8))(v69, v34);
  v74 = v126;
  sub_100024640(v126);
  v75 = v128;
  v76 = v127;
  v77 = v129;
  (*(v128 + 104))(v127, enum case for ColorScheme.light(_:), v129);
  LOBYTE(v70) = static ColorScheme.== infix(_:_:)();
  v78 = *(v75 + 8);
  v78(v76, v77);
  v78(v74, v77);
  if (v70)
  {
    if (qword_100218348 != -1)
    {
      swift_once();
    }

    v79 = &qword_100230580;
  }

  else
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v79 = &qword_100230560;
  }

  v80 = *v79;

  v148 = v80;
  static Edge.Set.all.getter();
  v147[5] = v72;
  v147[6] = &protocol witness table for _PaddingLayout;
  v81 = v122;
  v82 = swift_getWitnessTable();
  v83 = v120;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v121 + 8))(v73, v81);
  v84 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  v147[3] = v82;
  v147[4] = v84;
  v85 = v142;
  v138 = swift_getWitnessTable();
  sub_100157EFC(v83, v85, v138);
  v139 = *(v140 + 8);
  (v139)(v83, v85);
  if (static Solarium.isEnabled.getter())
  {
    v86 = 1;
    v87 = v131;
  }

  else
  {
    v88 = v107;
    Divider.init()();
    v89 = v109;
    sub_10011577C(v67, v109);
    v90 = v110;
    v91 = *(v110 + 16);
    v92 = v108;
    v93 = v111;
    v91(v108, v88, v111);
    v94 = v112;
    sub_10000D58C(v89, v112, &qword_10021F970);
    v95 = v113;
    v91(v113, v92, v93);
    v96 = sub_100009F70(&qword_10021FAE8);
    sub_10000D58C(v94, v95 + *(v96 + 48), &qword_10021F970);
    sub_10000D52C(v89, &qword_10021F970);
    v97 = *(v90 + 8);
    v97(v88, v93);
    sub_10000D52C(v94, &qword_10021F970);
    v97(v92, v93);
    v87 = v131;
    sub_10000F618(v95, v131, &qword_10021FAE0);
    v86 = 0;
  }

  (*(v133 + 56))(v87, v86, 1, v134);
  v98 = v136;
  v99 = v124;
  sub_10000D58C(v136, v124, &qword_10021F920);
  v148 = v99;
  v100 = v125;
  v101 = v141;
  v102 = v142;
  (*(v140 + 16))(v125, v141, v142);
  v149 = v100;
  v103 = v132;
  sub_10000D58C(v87, v132, &qword_10021F940);
  v150 = v103;
  v147[0] = v123;
  v147[1] = v102;
  v147[2] = v130;
  v144 = sub_10011D010();
  v145 = v138;
  v146 = sub_10011D150();
  sub_100151024(&v148, 3uLL, v147);
  sub_10000D52C(v87, &qword_10021F940);
  v104 = v139;
  (v139)(v101, v102);
  sub_10000D52C(v98, &qword_10021F920);
  sub_10000D52C(v103, &qword_10021F940);
  v104(v100, v102);
  return sub_10000D52C(v99, &qword_10021F920);
}

uint64_t sub_100110394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a3;
  v17 = a1;
  v18 = a4;
  v15[1] = sub_10000B3DC(&qword_10021F928);
  v15[2] = sub_10000B3DC(&qword_10021F930);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v27 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v23 = swift_getWitnessTable();
  v24 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v22 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v25 = type metadata accessor for ScrollView();
  v26 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  static HorizontalAlignment.leading.getter();
  v19 = a2;
  v20 = v16;
  v21 = v17;
  VStack.init(alignment:spacing:content:)();
  v12 = swift_getWitnessTable();
  sub_100157EFC(v9, v5, v12);
  v13 = *(v6 + 8);
  v13(v9, v5);
  sub_100157EFC(v11, v5, v12);
  return (v13)(v11, v5);
}

uint64_t sub_100110944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v175 = a2;
  v176 = a3;
  v174 = a1;
  v164 = a4;
  v179 = sub_10000B3DC(&qword_10021F928);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  *&v217 = type metadata accessor for ModifiedContent();
  *(&v217 + 1) = swift_getWitnessTable();
  *&v218 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v154 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v212 = v154;
  v210 = swift_getWitnessTable();
  swift_getWitnessTable();
  v148 = type metadata accessor for LazyVGrid();
  v149 = swift_getWitnessTable();
  *&v216 = type metadata accessor for ScrollView();
  v151 = swift_getWitnessTable();
  *(&v216 + 1) = v151;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v161 = *(v6 - 8);
  __chkstk_darwin(v6);
  v153 = &v134 - v7;
  v8 = type metadata accessor for ContentMarginPlacement();
  v144 = *(v8 - 8);
  v145 = v8;
  __chkstk_darwin(v8);
  v141 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = swift_checkMetadataState();
  v139 = *(v142 - 8);
  v10 = __chkstk_darwin(v142);
  v138 = &v134 - v11;
  v152 = OpaqueTypeMetadata2;
  v143 = *(OpaqueTypeMetadata2 - 8);
  v12 = __chkstk_darwin(v10);
  v140 = &v134 - v13;
  v155 = v5;
  v146 = *(v5 - 8);
  v14 = __chkstk_darwin(v12);
  v150 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v147 = &v134 - v16;
  v163 = v6;
  v162 = type metadata accessor for Optional();
  v170 = *(v162 - 8);
  v17 = __chkstk_darwin(v162);
  v172 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v171 = &v134 - v19;
  v159 = sub_100009F70(&qword_10021FB18);
  __chkstk_darwin(v159);
  v158 = &v134 - v20;
  v168 = sub_100009F70(&qword_10021F930);
  v21 = __chkstk_darwin(v168);
  v160 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v169 = &v134 - v23;
  v166 = type metadata accessor for AccessibilityTraits();
  v173 = *(v166 - 8);
  v24 = __chkstk_darwin(v166);
  v165 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v137 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v167 = &v134 - v29;
  v30 = __chkstk_darwin(v28);
  v178 = &v134 - v31;
  __chkstk_darwin(v30);
  v177 = &v134 - v32;
  v156 = type metadata accessor for FilterView();
  v157 = &StateObject.wrappedValue.getter;
  sub_10010C758(v156, &StateObject.wrappedValue.getter);

  v133 = 256;
  v132 = 0;
  v33 = Text.init(_:tableName:bundle:comment:)();
  v35 = v34;
  v37 = v36;
  static Font.Weight.semibold.getter();
  v38 = Text.fontWeight(_:)();
  v40 = v39;
  v42 = v41;
  sub_10000D60C(v33, v35, v37 & 1);

  static Font.title2.getter();
  v43 = Text.font(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_10000D60C(v38, v40, v42 & 1);

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v200) = v47 & 1;
  v50 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  LOBYTE(v216) = 0;
  LOBYTE(v38) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v186) = 0;
  *&v200 = v43;
  *(&v200 + 1) = v45;
  LOBYTE(v201) = v47 & 1;
  v59 = v178;
  *(&v201 + 1) = v49;
  v202 = v213;
  v203 = v214;
  v204 = v215;
  LOBYTE(v205) = v50;
  *(&v205 + 1) = v52;
  *&v206 = v54;
  *(&v206 + 1) = v56;
  *&v207 = v58;
  BYTE8(v207) = 0;
  LOBYTE(v208) = v38;
  *(&v208 + 1) = v60;
  *&v209[0] = v61;
  *(&v209[0] + 1) = v62;
  *&v209[1] = v63;
  BYTE8(v209[1]) = 0;
  v64 = v165;
  static AccessibilityTraits.isHeader.getter();
  v65 = sub_100009F70(&qword_10021FB20);
  v66 = sub_10011D20C();
  v67 = v167;
  v136 = v66;
  View.accessibilityAddTraits(_:)();
  v68 = *(v173 + 8);
  v173 += 8;
  v135 = v68;
  v68(v64, v166);
  v224 = v208;
  v225[0] = v209[0];
  *(v225 + 9) = *(v209 + 9);
  v220 = v204;
  v221 = v205;
  v223 = v207;
  v222 = v206;
  v216 = v200;
  v217 = v201;
  v218 = v202;
  v219 = v203;
  sub_10000D52C(&v216, &qword_10021FB20);
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_10000D52C(v67, &qword_10021F928);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10000D52C(v59, &qword_10021F928);
  v180 = v175;
  v181 = v176;
  v182 = v174;
  sub_100112D74(v158);
  sub_100009F70(&qword_10021FB50);
  sub_10011D3C0();
  sub_10011D648();
  v69 = v169;
  Section<>.init(header:content:)();
  v70 = static Edge.Set.bottom.getter();
  v71 = v69 + *(v168 + 36);
  *v71 = v70;
  *(v71 + 8) = 0u;
  *(v71 + 24) = 0u;
  *(v71 + 40) = 1;
  v72 = v156;
  sub_10010C758(v156, v157);
  LOBYTE(v67) = sub_10015F69C();

  if (v67)
  {
    sub_10010C758(v72, &StateObject.wrappedValue.getter);

    v133 = 256;
    v73 = Text.init(_:tableName:bundle:comment:)();
    v75 = v74;
    v77 = v76;
    static Font.Weight.semibold.getter();
    v78 = Text.fontWeight(_:)();
    v80 = v79;
    v82 = v81;
    v159 = v65;
    sub_10000D60C(v73, v75, v77 & 1);

    static Font.title2.getter();
    v83 = Text.font(_:)();
    v85 = v84;
    v87 = v86;
    v89 = v88;

    sub_10000D60C(v78, v80, v82 & 1);

    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v186) = v87 & 1;
    v90 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    LOBYTE(v200) = 0;
    LOBYTE(v78) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v185[0]) = 0;
    *&v186 = v83;
    *(&v186 + 1) = v85;
    LOBYTE(v187) = v87 & 1;
    *(&v187 + 1) = v89;
    v188 = v196;
    v189 = v197;
    v190 = v198;
    LOBYTE(v191) = v90;
    *(&v191 + 1) = v92;
    *&v192 = v94;
    *(&v192 + 1) = v96;
    *&v193 = v98;
    BYTE8(v193) = 0;
    LOBYTE(v194) = v78;
    *(&v194 + 1) = v99;
    *&v195[0] = v100;
    *(&v195[0] + 1) = v101;
    *&v195[1] = v102;
    BYTE8(v195[1]) = 0;
    v103 = v165;
    static AccessibilityTraits.isHeader.getter();
    v104 = v137;
    View.accessibilityAddTraits(_:)();
    v135(v103, v166);
    v208 = v194;
    v209[0] = v195[0];
    *(v209 + 9) = *(v195 + 9);
    v204 = v190;
    v205 = v191;
    v206 = v192;
    v207 = v193;
    v200 = v186;
    v201 = v187;
    v202 = v188;
    v203 = v189;
    sub_10000D52C(&v200, &qword_10021FB20);
    v105 = v167;
    ModifiedContent<>.accessibilityHeading(_:)();
    sub_10000D52C(v104, &qword_10021F928);
    ModifiedContent<>.accessibilityIdentifier(_:)();
    v106 = sub_10000D52C(v105, &qword_10021F928);
    __chkstk_darwin(v106);
    v107 = v176;
    *(&v134 - 4) = v175;
    *(&v134 - 3) = v107;
    v132 = v174;
    static Axis.Set.vertical.getter();
    swift_checkMetadataState();
    v108 = v138;
    ScrollView.init(_:showsIndicators:content:)();
    static Edge.Set.bottom.getter();
    v109 = v141;
    static ContentMarginPlacement.scrollContent.getter();
    v110 = v140;
    v111 = v142;
    v112 = v151;
    View.contentMargins(_:_:for:)();
    (*(v144 + 8))(v109, v145);
    (*(v139 + 8))(v108, v111);
    *&v186 = v111;
    *(&v186 + 1) = v112;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v114 = v150;
    v115 = v152;
    View.accessibilityIdentifier(_:)();
    (*(v143 + 8))(v110, v115);
    v116 = v155;
    v185[2] = OpaqueTypeConformance2;
    v185[3] = v154;
    v117 = swift_getWitnessTable();
    v118 = v147;
    sub_100157EFC(v114, v116, v117);
    v119 = v146;
    v120 = *(v146 + 8);
    v120(v114, v116);
    sub_10000D58C(v178, v105, &qword_10021F928);
    *&v186 = v105;
    (*(v119 + 16))(v114, v118, v116);
    *(&v186 + 1) = v114;
    v185[0] = v179;
    v185[1] = v116;
    v183 = sub_10011CF44(&qword_10021FB98, &qword_10021F928, &unk_1001B7C18, sub_10011D20C);
    v184 = v117;
    v121 = v153;
    sub_100151024(&v186, 2uLL, v185);
    v120(v118, v116);
    sub_10000D52C(v178, &qword_10021F928);
    v120(v114, v116);
    v59 = v178;
    sub_10000D52C(v167, &qword_10021F928);
    v122 = v161;
    v123 = v172;
    v124 = v163;
    (*(v161 + 32))(v172, v121, v163);
    (*(v122 + 56))(v123, 0, 1, v124);
  }

  else
  {
    v123 = v172;
    (*(v161 + 56))(v172, 1, 1, v163);
  }

  swift_getWitnessTable();
  sub_100150FB8(v123, v171);
  v125 = v162;
  v176 = *(v170 + 8);
  v176(v123, v162);
  sub_10000D58C(v177, v59, &qword_10021F928);
  *&v200 = v59;
  v126 = v169;
  v127 = v160;
  sub_10000D58C(v169, v160, &qword_10021F930);
  *(&v200 + 1) = v127;
  v128 = v171;
  v129 = v172;
  (*(v170 + 16))(v172, v171, v125);
  *&v201 = v129;
  *&v186 = v179;
  *(&v186 + 1) = v168;
  *&v187 = v125;
  *&v196 = sub_10011CF44(&qword_10021FB98, &qword_10021F928, &unk_1001B7C18, sub_10011D20C);
  *(&v196 + 1) = sub_10011D700();
  v199 = swift_getWitnessTable();
  *&v197 = swift_getWitnessTable();
  sub_100151024(&v200, 3uLL, &v186);
  v130 = v176;
  v176(v128, v125);
  sub_10000D52C(v126, &qword_10021F930);
  sub_10000D52C(v177, &qword_10021F928);
  v130(v129, v125);
  sub_10000D52C(v127, &qword_10021F930);
  return sub_10000D52C(v178, &qword_10021F928);
}

uint64_t sub_100111ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = static Alignment.center.getter();
  a4[1] = v8;
  v9 = sub_100009F70(&qword_10021FBE8);
  sub_100111F90(a1, a2, a3, a4 + *(v9 + 44));
  LOBYTE(a3) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_100009F70(&qword_10021FB50);
  v19 = a4 + *(result + 36);
  *v19 = a3;
  *(v19 + 1) = v11;
  *(v19 + 2) = v13;
  *(v19 + 3) = v15;
  *(v19 + 4) = v17;
  v19[40] = 0;
  return result;
}

uint64_t sub_100111F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v51 = a4;
  v52 = a1;
  v49 = sub_100009F70(&qword_10021FBF0);
  v4 = __chkstk_darwin(v49);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v47 - v6;
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = type metadata accessor for RoundedRectangle();
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100009F70(&qword_10021DF10);
  v19 = __chkstk_darwin(v47);
  v48 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v47 - v22;
  __chkstk_darwin(v21);
  v25 = &v47 - v24;
  if (static Solarium.isEnabled.getter())
  {
    v26 = 16.0;
  }

  else
  {
    v26 = 8.0;
  }

  v27 = *(v16 + 28);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(v18 + v27, v28, v29);
  *v18 = v26;
  v18[1] = v26;
  type metadata accessor for FilterView();
  sub_100024640(v14);
  (*(v9 + 104))(v12, enum case for ColorScheme.light(_:), v8);
  LOBYTE(v28) = static ColorScheme.== infix(_:_:)();
  v30 = *(v9 + 8);
  v30(v12, v8);
  v30(v14, v8);
  if (v28)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v31 = &qword_100230560;
  }

  else
  {
    if (qword_100218348 != -1)
    {
      swift_once();
    }

    v31 = &qword_100230580;
  }

  v32 = *v31;

  KeyPath = swift_getKeyPath();
  sub_10011F268(v18, v23, &type metadata accessor for RoundedRectangle);
  v34 = &v23[*(v47 + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  sub_10000F618(v23, v25, &qword_10021DF10);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v35 = sub_100009F70(&qword_10021FBF8);
  sub_100112508(v53, v54, &v7[*(v35 + 44)]);
  LOBYTE(KeyPath) = static Edge.Set.horizontal.getter();
  v36 = &v7[*(sub_100009F70(&qword_10021FC00) + 36)];
  *v36 = KeyPath;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  LOBYTE(KeyPath) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v37 = v48;
  v38 = &v7[*(v49 + 36)];
  *v38 = KeyPath;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  sub_10000D58C(v25, v37, &qword_10021DF10);
  v43 = v50;
  sub_10000D58C(v7, v50, &qword_10021FBF0);
  v44 = v51;
  sub_10000D58C(v37, v51, &qword_10021DF10);
  v45 = sub_100009F70(&qword_10021FC08);
  sub_10000D58C(v43, v44 + *(v45 + 48), &qword_10021FBF0);
  sub_10000D52C(v7, &qword_10021FBF0);
  sub_10000D52C(v25, &qword_10021DF10);
  sub_10000D52C(v43, &qword_10021FBF0);
  return sub_10000D52C(v37, &qword_10021DF10);
}

uint64_t sub_100112508@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v58 = a3;
  v57 = type metadata accessor for Divider();
  v56 = *(v57 - 8);
  v5 = __chkstk_darwin(v57);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v49 - v7;
  v8 = type metadata accessor for CompactDatePicker(0);
  v9 = (v8 - 8);
  v10 = __chkstk_darwin(v8);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v60 = &v49 - v13;
  v14 = __chkstk_darwin(v12);
  v62 = &v49 - v15;
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = type metadata accessor for FilterView();
  sub_10010C758(v18, &StateObject.projectedValue.getter);
  v77 = a1;
  v78 = a2;
  swift_getKeyPath();
  type metadata accessor for FilterViewModel();
  swift_getWitnessTable();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v18, &StateObject.projectedValue.getter);
  v75 = a1;
  v76 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v51 = &StateObject.projectedValue.getter;
  sub_10010C758(v18, &StateObject.projectedValue.getter);
  v73 = a1;
  v74 = a2;
  v52 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v18, &StateObject.projectedValue.getter);
  v71 = a1;
  v72 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v19 = v79;
  v50 = v80;
  v20 = v81;
  sub_10010C758(v18, &StateObject.wrappedValue.getter);
  sub_10015EBC0(&v17[v9[10]]);

  v53 = &StateObject.wrappedValue.getter;
  sub_10010C758(v18, &StateObject.wrappedValue.getter);
  v21 = sub_10015EE5C();

  sub_10010C758(v18, &StateObject.wrappedValue.getter);
  v22 = sub_10015EEF8();

  v23 = v9[9];
  v59 = v17;
  v24 = &v17[v23];
  v25 = v50;
  *v24 = v19;
  *(v24 + 1) = v25;
  *(v24 + 2) = v20;
  *&v17[v9[11]] = v21;
  v17[v9[12]] = v22;
  Divider.init()();
  v26 = v51;
  sub_10010C758(v18, v51);
  v69 = a1;
  v27 = v52;
  v70 = v52;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v18, v26);
  v67 = a1;
  v68 = v27;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v18, v26);
  v65 = a1;
  v66 = v27;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010C758(v18, v26);
  v63 = a1;
  v64 = v27;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v28 = v79;
  v29 = v80;
  v30 = v81;
  v31 = v53;
  sub_10010C758(v18, v53);
  v32 = v62;
  sub_10015F0A4((v62 + v9[10]));

  sub_10010C758(v18, v31);
  sub_10015F350();
  v34 = v33;

  sub_10010C758(v18, v31);
  LOBYTE(v31) = sub_10015F418();

  v35 = (v32 + v9[9]);
  *v35 = v28;
  v35[1] = v29;
  v35[2] = v30;
  *(v32 + v9[11]) = v34;
  *(v32 + v9[12]) = v31 & 1;
  v36 = v32;
  v37 = v60;
  sub_10011DF70(v59, v60, type metadata accessor for CompactDatePicker);
  v38 = v56;
  v39 = *(v56 + 16);
  v40 = v55;
  v41 = v61;
  v42 = v57;
  v39(v55, v61, v57);
  v43 = v36;
  v44 = v54;
  sub_10011DF70(v43, v54, type metadata accessor for CompactDatePicker);
  v45 = v58;
  sub_10011DF70(v37, v58, type metadata accessor for CompactDatePicker);
  v46 = sub_100009F70(&qword_10021FC10);
  v39((v45 + *(v46 + 48)), v40, v42);
  sub_10011DF70(v44, v45 + *(v46 + 64), type metadata accessor for CompactDatePicker);
  sub_10011DFD8(v62, type metadata accessor for CompactDatePicker);
  v47 = *(v38 + 8);
  v47(v41, v42);
  sub_10011DFD8(v59, type metadata accessor for CompactDatePicker);
  sub_10011DFD8(v44, type metadata accessor for CompactDatePicker);
  v47(v40, v42);
  return sub_10011DFD8(v60, type metadata accessor for CompactDatePicker);
}

uint64_t sub_100112D74@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = type metadata accessor for AccessibilityTraits();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100009F70(&qword_10021FBE0);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v35 - v3;
  v36 = sub_100009F70(&qword_10021FB18);
  __chkstk_darwin(v36);
  v6 = &v35 - v5;
  v7 = type metadata accessor for FilterView();
  v8 = sub_10010C758(v7, &StateObject.wrappedValue.getter);
  v9 = (v8 + *(*v8 + 216));
  v11 = *v9;
  v10 = v9[1];

  *&v49[0] = v11;
  *(&v49[0] + 1) = v10;
  sub_100027068();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  LOBYTE(v11) = v15;
  v17 = v16;
  v18 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v11 & 1;
  LOBYTE(v49[0]) = v11 & 1;
  LOBYTE(v42) = 0;
  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v28 = qword_100230570;

  v29 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  *&v42 = v12;
  *(&v42 + 1) = v14;
  LOBYTE(v43) = v27;
  *(&v43 + 1) = v17;
  LOBYTE(v44) = v18;
  *(&v44 + 1) = v20;
  *&v45 = v22;
  *(&v45 + 1) = v24;
  *&v46 = v26;
  BYTE8(v46) = 0;
  *&v47 = v28;
  *(&v47 + 1) = KeyPath;
  v48 = v29;
  static Font.Weight.semibold.getter();
  v31 = sub_100009F70(&qword_10021FB60);
  v32 = sub_10011D4B8();
  View.fontWeight(_:)();
  v49[4] = v46;
  v49[5] = v47;
  v50 = v48;
  v49[0] = v42;
  v49[1] = v43;
  v49[2] = v44;
  v49[3] = v45;
  sub_10000D52C(v49, &qword_10021FB60);
  static AccessibilityTraits.isHeader.getter();
  *&v42 = v31;
  *(&v42 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  View.accessibilityRemoveTraits(_:)();
  (*(v39 + 8))(v2, v40);
  (*(v37 + 8))(v4, v33);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_10000D52C(v6, &qword_10021FB18);
}

uint64_t sub_100113228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v31 = a4;
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6 - 8);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v8;
  v39 = AssociatedTypeWitness;
  v40 = v10;
  v41 = WitnessTable;
  v42 = AssociatedConformanceWitness;
  v13 = type metadata accessor for ForEach();
  v14 = swift_getWitnessTable();
  v15 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v36 = v14;
  v37 = v15;
  v35 = swift_getWitnessTable();
  v28 = v13;
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyVGrid();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v28 - v21;
  v23 = type metadata accessor for FilterView();
  v24 = v29;
  sub_10010C758(v23, &StateObject.wrappedValue.getter);

  v32 = a2;
  v33 = a3;
  v34 = v24;
  static HorizontalAlignment.center.getter();
  sub_1001156FC();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  v25 = swift_getWitnessTable();
  sub_100157EFC(v20, v16, v25);
  v26 = *(v17 + 8);
  v26(v20, v16);
  sub_100157EFC(v22, v16, v25);
  return (v26)(v22, v16);
}

uint64_t sub_10011376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v32 = a2;
  v33 = a3;
  v34 = type metadata accessor for FilterView();
  v36 = *(v34 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  v35 = v31 - v5;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Array();
  v31[2] = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  v31[1] = type metadata accessor for Button();
  v8 = type metadata accessor for ModifiedContent();
  v31[5] = v6;
  WitnessTable = swift_getWitnessTable();
  v31[3] = WitnessTable;
  v31[4] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v6;
  v43 = AssociatedTypeWitness;
  v44 = v8;
  v45 = WitnessTable;
  v46 = AssociatedConformanceWitness;
  v11 = type metadata accessor for ForEach();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v31 - v16;
  v18 = v34;
  sub_10010C758(v34, &StateObject.wrappedValue.getter);
  v19 = sub_10015F768();

  v42 = v19;
  v20 = v35;
  v21 = v36;
  (*(v36 + 16))(v35, a1, v18);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v32;
  *(v23 + 24) = v24;
  (*(v21 + 32))(v23 + v22, v20, v18);
  v25 = swift_getWitnessTable();
  v26 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v40 = v25;
  v41 = v26;
  v27 = swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v39 = v27;
  v28 = swift_getWitnessTable();
  sub_100157EFC(v15, v11, v28);
  v29 = *(v12 + 8);
  v29(v15, v11);
  sub_100157EFC(v17, v11, v28);
  return (v29)(v17, v11);
}

uint64_t sub_100113CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a2;
  v62 = a1;
  v67 = a5;
  v7 = type metadata accessor for AccessibilityTraits();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v66 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v56 = *(v10 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v55 = &v48 - v11;
  v53 = a3;
  v54 = a4;
  v12 = type metadata accessor for FilterView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v50 = &v48 - v15;
  sub_10000B3DC(&qword_10021F938);
  v17 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v49 = AssociatedTypeWitness;
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v52 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  v18 = type metadata accessor for Button();
  v59 = *(v18 - 8);
  __chkstk_darwin(v18);
  v68 = &v48 - v19;
  v58 = v20;
  v57 = type metadata accessor for ModifiedContent();
  v63 = *(v57 - 8);
  v21 = __chkstk_darwin(v57);
  v60 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v61 = &v48 - v23;
  v24 = v13;
  (*(v13 + 16))(v16, v69, v12);
  v25 = v10;
  v26 = v55;
  v27 = v62;
  (*(v10 + 16))(v55, v62, v17);
  v28 = v24;
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v30 = (v14 + v29 + *(v25 + 80)) & ~*(v25 + 80);
  v31 = swift_allocObject();
  v32 = v53;
  v33 = v54;
  *(v31 + 16) = v53;
  *(v31 + 24) = v33;
  (*(v28 + 32))(v31 + v29, v50, v12);
  (*(v25 + 32))(v31 + v30, v26, v49);
  v70 = v32;
  v71 = v33;
  v72 = v69;
  v73 = v27;
  Button.init(action:label:)();
  sub_10010C758(v12, &StateObject.wrappedValue.getter);
  LOBYTE(v12) = sub_10015FE70();

  if (v12)
  {
    sub_100009F70(&qword_100219BD8);
    v34 = v64;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001ACB00;
    static AccessibilityTraits.isToggle.getter();
    static AccessibilityTraits.isSelected.getter();
    v74 = v35;
    sub_10011C16C(&qword_100219BE0, &type metadata accessor for AccessibilityTraits);
    sub_100009F70(&qword_100219BE8);
    sub_10000D1EC(&qword_100219BF0, &qword_100219BE8);
    v36 = v65;
    v37 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v37 = v66;
    static AccessibilityTraits.isToggle.getter();
    v34 = v64;
    v36 = v65;
  }

  v38 = v58;
  v39 = swift_getWitnessTable();
  v40 = v60;
  v41 = v68;
  View.accessibilityAddTraits(_:)();
  (*(v34 + 8))(v37, v36);
  (*(v59 + 8))(v41, v38);
  v42 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v75 = v39;
  v76 = v42;
  v43 = v57;
  v44 = swift_getWitnessTable();
  v45 = v61;
  sub_100157EFC(v40, v43, v44);
  v46 = *(v63 + 8);
  v46(v40, v43);
  sub_100157EFC(v45, v43, v44);
  return (v46)(v45, v43);
}

uint64_t sub_100114548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterView();
  sub_10010C758(v4, &StateObject.wrappedValue.getter);
  sub_10015F77C(a2);

  sub_10010C758(v4, &StateObject.wrappedValue.getter);
  v5 = *(a1 + *(v4 + 44));
  if (v5)
  {

    sub_10015FB7C(9, 0x65726E6567, 0xE500000000000000, 2u, v5);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100114688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  sub_10000B3DC(&qword_10021F938);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for ZStack();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a1;
  v19[7] = a2;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v13, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v13, v9);
  sub_100157EFC(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

uint64_t sub_100114968@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v120 = a4;
  v112 = a5;
  v113 = a3;
  v115 = a2;
  v122 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = AssociatedTypeWitness;
  v6 = type metadata accessor for Set();
  WitnessTable = swift_getWitnessTable();
  v117 = v6;
  v7 = type metadata accessor for _AnimationModifier();
  v104 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  v106 = v8;
  v111 = type metadata accessor for ModifiedContent();
  v109 = *(v111 - 8);
  v9 = __chkstk_darwin(v111);
  v110 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v107 = &v97 - v12;
  __chkstk_darwin(v11);
  v108 = &v97 - v13;
  v14 = type metadata accessor for ColorScheme();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v97 - v19;
  v21 = type metadata accessor for RoundedRectangle();
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100009F70(&qword_10021B648);
  __chkstk_darwin(v25);
  v27 = &v97 - v26;
  v28 = sub_100009F70(&qword_10021F938);
  __chkstk_darwin(v28);
  v99 = &v97 - v29;
  v114 = v30;
  v101 = v7;
  v31 = type metadata accessor for ModifiedContent();
  v118 = *(v31 - 8);
  v119 = v31;
  v32 = __chkstk_darwin(v31);
  v105 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v100 = &v97 - v35;
  __chkstk_darwin(v34);
  v121 = &v97 - v36;
  if (static Solarium.isEnabled.getter())
  {
    v37 = 16.0;
  }

  else
  {
    v37 = 8.0;
  }

  v38 = *(v22 + 28);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(v24 + v38, v39, v40);
  *v24 = v37;
  v24[1] = v37;
  v120 = type metadata accessor for FilterView();
  sub_100024640(v20);
  (*(v15 + 104))(v18, enum case for ColorScheme.light(_:), v14);
  LOBYTE(v39) = static ColorScheme.== infix(_:_:)();
  v41 = *(v15 + 8);
  v41(v18, v14);
  v41(v20, v14);
  if (v39)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v42 = &qword_100230560;
  }

  else
  {
    if (qword_100218348 != -1)
    {
      swift_once();
    }

    v42 = &qword_100230580;
  }

  v43 = *v42;

  sub_10011F268(v24, v27, &type metadata accessor for RoundedRectangle);
  *&v27[*(v25 + 52)] = v43;
  *&v27[*(v25 + 56)] = 256;
  static Color.blue.getter();
  v113 = &StateObject.wrappedValue.getter;
  v44 = v120;
  sub_10010C758(v120, &StateObject.wrappedValue.getter);
  sub_10015FE70();

  v45 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v46 = v99;
  sub_10011DF70(v27, v99, &type metadata accessor for RoundedRectangle);
  v47 = *&v153 * 0.5;
  v48 = v46 + *(v114 + 68);
  sub_10011DF70(v27, v48, &type metadata accessor for RoundedRectangle);
  *(v48 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v47;
  v49 = v48 + *(sub_100009F70(&qword_10021FBB8) + 36);
  v50 = v154;
  *v49 = v153;
  *(v49 + 16) = v50;
  *(v49 + 32) = v155;
  v51 = sub_100009F70(&qword_10021FBC0);
  *(v48 + *(v51 + 52)) = v45;
  *(v48 + *(v51 + 56)) = 256;
  v52 = v48 + *(sub_100009F70(&qword_10021FBC8) + 36);
  sub_10000D58C(v27, v52, &qword_10021B648);
  v53 = static Alignment.center.getter();
  v55 = v54;
  sub_10000D52C(v27, &qword_10021B648);
  v56 = (v52 + *(sub_100009F70(&qword_10021FBD0) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = v113;
  sub_10010C758(v44, v113);
  sub_10015FE70();

  static Animation.easeInOut(duration:)();
  sub_10010C758(v44, v57);
  v58 = sub_10015FF3C();

  *&v146 = v58;
  v59 = sub_10000D1EC(&qword_10021FBD8, &qword_10021F938);
  v60 = v100;
  View.animation<A>(_:value:)();

  sub_10000D52C(v46, &qword_10021F938);
  v61 = swift_getWitnessTable();
  v151 = v59;
  v152 = v61;
  v98 = v61;
  v62 = v119;
  v99 = swift_getWitnessTable();
  sub_100157EFC(v60, v62, v99);
  v63 = *(v118 + 8);
  v114 = v118 + 8;
  v101 = v63;
  v63(v60, v62);
  *&v146 = (*(AssociatedConformanceWitness + 32))(v103);
  *(&v146 + 1) = v64;
  sub_100027068();
  v65 = Text.init<A>(_:)();
  v67 = v66;
  v69 = v68;
  sub_10010C758(v120, v113);
  v70 = sub_10015FE70();

  if (v70)
  {
    static Color.blue.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v71 = Text.foregroundColor(_:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;

  sub_10000D60C(v65, v67, v69 & 1);

  v138 = v71;
  v139 = v73;
  v78 = v75 & 1;
  v140 = v75 & 1;
  v141 = v77;
  v79 = v120;
  sub_10010C758(v120, &StateObject.wrappedValue.getter);
  sub_10015FE70();

  static Animation.easeInOut(duration:)();
  sub_10010C758(v79, &StateObject.wrappedValue.getter);
  v80 = sub_10015FF3C();

  *&v146 = v80;
  View.animation<A>(_:value:)();

  sub_10000D60C(v71, v73, v78);

  v81 = v142;
  LOBYTE(v73) = v143;
  v133 = v142;
  LOBYTE(v134) = v143;
  *(&v134 + 1) = v144;
  v135 = v145;
  v131 = &protocol witness table for Text;
  v132 = v98;
  v122 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v82 = swift_getWitnessTable();
  View.padding(_:)();
  sub_10000D60C(v81, *(&v81 + 1), v73);

  v128 = v148;
  v129 = v149;
  v130[0] = v150[0];
  *(v130 + 9) = *(v150 + 9);
  v126 = v146;
  v127 = v147;
  v125[4] = v82;
  v125[5] = &protocol witness table for _PaddingLayout;
  v83 = v106;
  v84 = swift_getWitnessTable();
  v85 = v107;
  View.accessibilityIdentifier(_:)();
  v135 = v128;
  v136 = v129;
  v137[0] = v130[0];
  *(v137 + 9) = *(v130 + 9);
  v133 = v126;
  v134 = v127;
  (*(*(v83 - 8) + 8))(&v133, v83);
  v86 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v125[2] = v84;
  v125[3] = v86;
  v87 = v111;
  v88 = swift_getWitnessTable();
  v89 = v108;
  sub_100157EFC(v85, v87, v88);
  v90 = v109;
  v91 = *(v109 + 8);
  v91(v85, v87);
  v92 = v119;
  v93 = v105;
  (*(v118 + 16))(v105, v121, v119);
  *&v126 = v93;
  v94 = v110;
  (*(v90 + 16))(v110, v89, v87);
  *(&v126 + 1) = v94;
  v125[0] = v92;
  v125[1] = v87;
  v123 = v99;
  v124 = v88;
  sub_100151024(&v126, 2uLL, v125);
  v91(v89, v87);
  v95 = v101;
  v101(v121, v92);
  v91(v94, v87);
  return v95(v93, v92);
}

uint64_t sub_1001156FC()
{
  type metadata accessor for PinnedScrollableViews();
  sub_10011C16C(&qword_10021DAA8, &type metadata accessor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_10011577C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = sub_100009F70(&qword_10021DD48);
  v45 = *(v44 - 8);
  v4 = __chkstk_darwin(v44);
  v41 = &v39 - v5;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v42 = sub_100009F70(&qword_10021F998);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v39 - v8;
  v10 = sub_100009F70(&qword_10021F980);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v40 = &v39 - v12;
  (*(v6 + 16))(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v17 = *(v6 + 32);
  v46 = a1;
  v17(v14 + v13, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v52 = v15;
  v53 = v16;
  v54 = v2;
  sub_100009F70(&qword_10021FAD0);
  sub_10011CF44(&qword_10021FAD8, &qword_10021FAD0, &unk_1001B7D98, sub_1000AFBA4);
  Button.init(action:label:)();
  Solarium.init()();
  v18 = v41;
  static ViewInputPredicate.! prefix(_:)();
  v49 = v15;
  v50 = v16;
  v47 = v2;
  v51 = v2;
  sub_100009F70(&qword_10021F9A0);
  sub_10000D1EC(&qword_10021F9A8, &qword_10021F998);
  v55 = &type metadata for Solarium;
  v56 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  v19 = v40;
  sub_10011C4D4(&qword_10021F9B0, &qword_10021F9A0, &unk_1001B7C80, sub_10011C558);
  v20 = v18;
  v21 = v42;
  v22 = v44;
  View.staticIf<A, B>(_:then:)();
  (*(v45 + 8))(v20, v22);
  (*(v43 + 8))(v9, v21);
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  v23 = v19 + *(sub_100009F70(&qword_10021F990) + 36);
  *v23 = v7;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 1;
  v24 = static Edge.Set.horizontal.getter();
  v25 = v19 + *(v11 + 44);
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 1;
  sub_100009F70(&qword_100218DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v21) = static Edge.Set.leading.getter();
  *(inited + 32) = v21;
  v27 = static Edge.Set.trailing.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  sub_10010C758(v46, &StateObject.wrappedValue.getter);
  v29 = sub_10015E890();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = v48;
  sub_10000F618(v19, v48, &qword_10021F980);
  result = sub_100009F70(&qword_10021F970);
  v38 = v36 + *(result + 36);
  *v38 = v28;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  return result;
}

uint64_t sub_100115DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v24 = a2;
  v25 = a1;
  v26 = a5;
  sub_10000B3DC(&qword_10021F920);
  v20[0] = sub_10000B3DC(&qword_10021F928);
  v20[1] = sub_10000B3DC(&qword_10021F930);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v34 = sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F940);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v5 = type metadata accessor for ModifiedContent();
  v21 = sub_10000B3DC(&qword_10021F948);
  v30 = swift_getWitnessTable();
  v31 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v6 = swift_getWitnessTable();
  sub_10000B3DC(&qword_10021F950);
  sub_10000B3DC(&qword_10021F958);
  type metadata accessor for GlassProminentButtonStyle();
  sub_10011C1B4();
  sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v5;
  v36 = v21;
  v37 = v6;
  v38 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v10 = __chkstk_darwin(OpaqueTypeMetadata2);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v20 - v13;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  static HorizontalAlignment.center.getter();
  v15 = swift_checkMetadataState();
  v16 = v21;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  v35 = v15;
  v36 = v16;
  v37 = v6;
  v38 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  sub_100157EFC(v12, OpaqueTypeMetadata2, v17);
  v18 = *(v9 + 8);
  v18(v12, OpaqueTypeMetadata2);
  sub_100157EFC(v14, OpaqueTypeMetadata2, v17);
  return (v18)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_10011662C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v31 = type metadata accessor for BarMagicPocketStyle();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GlassProminentButtonStyle();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(&qword_10021F970);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_100009F70(&qword_10021F958);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100009F70(&qword_10021F950);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - v14;
  v16 = type metadata accessor for FilterView();
  sub_10011577C(v16, v8);
  sub_10010C758(v16, &StateObject.wrappedValue.getter);
  LOBYTE(v16) = sub_10015FF50();

  if (v16)
  {
    v17 = static Color.blue.getter();
  }

  else
  {
    v17 = static Color.gray.getter();
  }

  v18 = v17;
  KeyPath = swift_getKeyPath();
  v32 = v18;
  v20 = AnyShapeStyle.init<A>(_:)();
  sub_10000F618(v8, v11, &qword_10021F970);
  v21 = &v11[*(v9 + 36)];
  *v21 = KeyPath;
  v21[1] = v20;
  GlassProminentButtonStyle.init()();
  v22 = sub_10011C1B4();
  v23 = sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v27 + 8))(v5, v3);
  sub_10000D52C(v11, &qword_10021F958);
  v24 = v28;
  static BarMagicPocketStyle.automatic.getter();
  v32 = v9;
  v33 = v3;
  v34 = v22;
  v35 = v23;
  swift_getOpaqueTypeConformance2();
  View.scrollPocketTag_v1(style:)();
  (*(v29 + 8))(v24, v31);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100116A68(uint64_t a1)
{
  v2 = type metadata accessor for FilterView();
  sub_10010C758(v2, &StateObject.wrappedValue.getter);
  sub_10015FF70();

  sub_10010C758(v2, &StateObject.wrappedValue.getter);
  v3 = *(a1 + *(v2 + 44));
  if (v3)
  {

    sub_10015FB7C(9, 1702125924, 0xE400000000000000, 2u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100116B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v25 = sub_100009F70(&qword_10021FA18);
  __chkstk_darwin(v25);
  v23 = &v21 - v7;
  v24 = sub_100009F70(&qword_10021FA20);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v21 = sub_100009F70(&qword_10021FA28);
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v21 - v12;
  static ToolbarItemPlacement.topBarLeading.getter();
  v30 = a2;
  v31 = a3;
  v32 = a1;
  sub_100009F70(&qword_10021FA30);
  sub_10011CF44(&qword_10021FA38, &qword_10021FA30, &unk_1001B7CD8, sub_10011C9B4);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarTrailing.getter();
  v27 = a2;
  v28 = a3;
  v29 = a1;
  sub_100009F70(&qword_10021FA60);
  sub_10011CAA8();
  ToolbarItem<>.init(placement:content:)();
  v14 = *(v25 + 48);
  v15 = v23;
  v16 = v21;
  (*(v11 + 16))(v23, v13, v21);
  v17 = v22;
  v18 = &v15[v14];
  v19 = v24;
  (*(v22 + 16))(v18, v9, v24);
  TupleToolbarContent.init(_:)();
  (*(v17 + 8))(v9, v19);
  return (*(v11 + 8))(v13, v16);
}

uint64_t sub_100116EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009F70(&qword_10021FA48);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100116FF0(a1, a2, a3, &v10 - v7);
  sub_10011C9B4();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v8, &qword_10021FA48);
}

uint64_t sub_100116FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100009F70(&qword_100218930);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - v10;
  v36 = sub_100009F70(&qword_10021FAC8);
  __chkstk_darwin(v36);
  v13 = v29 - v12;
  v34 = a2;
  v35 = a3;
  v14 = type metadata accessor for FilterView();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - v16;
  if (static Solarium.isEnabled.getter())
  {
    (*(v15 + 16))(v17, a1, v14);
    v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = swift_allocObject();
    v20 = v35;
    *(v19 + 16) = v34;
    *(v19 + 24) = v20;
    (*(v15 + 32))(v19 + v18, v17, v14);
    *v13 = 0;
    *(v13 + 1) = sub_10011FE98;
    *(v13 + 2) = v19;
    swift_storeEnumTagMultiPayload();
    sub_100042DC4();
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v22 = sub_10010C758(v14, &StateObject.wrappedValue.getter);
    v31 = v11;
    v23 = v22 + *(*v22 + 256);
    v30 = *v23;
    v32 = v8;
    v33 = a4;
    v29[1] = *(v23 + 16);

    (*(v15 + 16))(v17, a1, v14);
    v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v25 = swift_allocObject();
    v26 = v35;
    *(v25 + 16) = v34;
    *(v25 + 24) = v26;
    (*(v15 + 32))(v25 + v24, v17, v14);
    v27 = v31;
    Button<>.init(_:action:)();
    v28 = v32;
    (*(v9 + 16))(v13, v27, v32);
    swift_storeEnumTagMultiPayload();
    sub_100042DC4();
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v27, v28);
  }
}

uint64_t sub_10011743C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_100219710);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FilterView();
  sub_10000D58C(a1 + *(v12 + 40), v7, &qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v15 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001176D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = sub_100009F70(&qword_10021FA88);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_100009F70(&qword_10021FA78);
  v11 = __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  sub_100117A5C(a1, a2, a3, v9);
  sub_10011CB8C();
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v9, &qword_10021FA88);
  v16 = type metadata accessor for FilterView();
  sub_10010C758(v16, &StateObject.wrappedValue.getter);
  v17 = sub_100160174();

  if (v17)
  {
    sub_10010C758(v16, &StateObject.wrappedValue.getter);

    v18 = Text.init(_:tableName:bundle:comment:)();
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v18 = 0;
    v22 = 0;
    v20 = 0xE000000000000000;
  }

  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000D60C(v18, v20, v22 & 1);

  sub_10000D52C(v13, &qword_10021FA78);
  sub_10010C758(v16, &StateObject.wrappedValue.getter);
  v23 = sub_100160174();

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = (v23 & 1) == 0;
  v26 = v30;
  sub_10000F618(v15, v30, &qword_10021FA78);
  result = sub_100009F70(&qword_10021FA60);
  v28 = (v26 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_10011CE18;
  v28[2] = v25;
  return result;
}

uint64_t sub_100117A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v37 = sub_100009F70(&qword_100218930);
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v33 - v8;
  v42 = sub_100009F70(&qword_10021FAC0);
  __chkstk_darwin(v42);
  v11 = &v33 - v10;
  v39 = a2;
  v40 = a3;
  v12 = type metadata accessor for FilterView();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v41 = sub_100009F70(&qword_10021FAA8);
  __chkstk_darwin(v41);
  v17 = &v33 - v16;
  if (static Solarium.isEnabled.getter())
  {
    (*(v13 + 16))(v15, a1, v12);
    v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v19 = swift_allocObject();
    v20 = v39;
    v21 = v40;
    *(v19 + 16) = v39;
    *(v19 + 24) = v21;
    v22 = (*(v13 + 32))(v19 + v18, v15, v12);
    __chkstk_darwin(v22);
    *(&v33 - 4) = v20;
    *(&v33 - 3) = v21;
    *(&v33 - 2) = a1;
    Button.init(action:label:)();
    v23 = static Edge.Set.horizontal.getter();
    v24 = &v17[*(v41 + 36)];
    *v24 = v23;
    *(v24 + 8) = 0u;
    *(v24 + 24) = 0u;
    v24[40] = 1;
    sub_10000D58C(v17, v11, &qword_10021FAA8);
    swift_storeEnumTagMultiPayload();
    sub_10011CCF0();
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    _ConditionalContent<>.init(storage:)();
    return sub_10000D52C(v17, &qword_10021FAA8);
  }

  else
  {
    v26 = sub_10010C758(v12, &StateObject.wrappedValue.getter);
    v27 = v26 + *(*v26 + 240);
    v36 = *v27;
    v34 = v9;
    v35 = *(v27 + 16);

    (*(v13 + 16))(v15, a1, v12);
    v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v29 = swift_allocObject();
    v30 = v40;
    *(v29 + 16) = v39;
    *(v29 + 24) = v30;
    (*(v13 + 32))(v29 + v28, v15, v12);
    v31 = v34;
    Button<>.init(_:action:)();
    v32 = v37;
    (*(v7 + 16))(v11, v31, v37);
    swift_storeEnumTagMultiPayload();
    sub_10011CCF0();
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v31, v32);
  }
}

uint64_t sub_100117FA8(uint64_t a1)
{
  sub_10010C758(a1, &StateObject.wrappedValue.getter);
  sub_10016082C();

  sub_10010C758(a1, &StateObject.wrappedValue.getter);
  v3 = *(v1 + *(a1 + 44));
  if (v3)
  {

    sub_10015FB7C(9, 21, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001180BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FilterView();
  sub_10010C758(v2, &StateObject.wrappedValue.getter);

  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  sub_10010C758(v2, &StateObject.wrappedValue.getter);
  LOBYTE(v2) = sub_100160174();

  if (v2)
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.gray.getter();
  }

  v8 = Text.foregroundStyle<A>(_:)();
  v10 = v9;
  v12 = v11;
  sub_10000D60C(v3, v5, v7 & 1);

  static Font.Weight.regular.getter();
  v13 = Text.fontWeight(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10000D60C(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_100118298()
{
  v0 = type metadata accessor for FilterView();
  sub_10010C758(v0, &StateObject.wrappedValue.getter);
  sub_1001601AC();
}

uint64_t sub_100118324(uint64_t a1)
{
  v2 = type metadata accessor for FilterView();
  sub_10010C758(v2, &StateObject.wrappedValue.getter);
  if (*(a1 + *(v2 + 44)))
  {

    sub_10016027C(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10011840C(uint64_t a1)
{
  v2 = type metadata accessor for FilterView();
  sub_10010C758(v2, &StateObject.wrappedValue.getter);
  v3 = *(a1 + *(v2 + 44));
  if (v3)
  {

    sub_10015FB7C(9, 2, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100118508(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FilterView();
  sub_10010C758(v6, &StateObject.wrappedValue.getter);
  v7 = sub_10015FF50();

  if (v7)
  {
    sub_10010C758(v6, &StateObject.wrappedValue.getter);
    sub_1001602C4();

    sub_10010C758(v6, &StateObject.wrappedValue.getter);
    v9 = *(a1 + *(v6 + 44));
    if (v9)
    {

      sub_10015FB7C(9, 24, 0, 3u, v9);

      sub_100024868(v5);
      DismissAction.callAsFunction()();
      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10011C16C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100118720()
{
  v0 = type metadata accessor for FilterView();
  sub_10010C758(v0, &StateObject.wrappedValue.getter);
  sub_100160734();

  sub_100027068();
  v1 = Text.init<A>(_:)();
  v3 = v2;
  v5 = v4;
  static Font.Weight.semibold.getter();
  v6 = Text.fontWeight(_:)();
  v8 = v7;
  v10 = v9;
  sub_10000D60C(v1, v3, v5 & 1);

  static Font.headline.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  sub_10000D60C(v6, v8, v10 & 1);

  static Color.white.getter();
  v16 = Text.foregroundColor(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_10000D60C(v11, v13, v15 & 1);

  LOBYTE(v11) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v39 = v20 & 1;
  v38 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v40[6] + 7) = *&v40[21];
  *(&v40[8] + 7) = *&v40[23];
  *(&v40[10] + 7) = *&v40[25];
  *(&v40[12] + 7) = v41;
  *(v40 + 7) = *&v40[15];
  *(&v40[2] + 7) = *&v40[17];
  *(&v40[4] + 7) = *&v40[19];
  *&v32 = v16;
  *(&v32 + 1) = v18;
  LOBYTE(v33) = v20 & 1;
  *(&v33 + 1) = v22;
  LOBYTE(v34) = v11;
  *(&v34 + 1) = v24;
  *&v35 = v26;
  *(&v35 + 1) = v28;
  *v36 = v30;
  v36[8] = 0;
  *&v36[73] = *&v40[8];
  *&v36[89] = *&v40[10];
  *&v36[105] = *&v40[12];
  *&v36[120] = *(&v41 + 1);
  *&v36[9] = *v40;
  *&v36[25] = *&v40[2];
  *&v36[41] = *&v40[4];
  *&v36[57] = *&v40[6];
  sub_100009F70(&qword_10021D3A0);
  sub_1000AFBA4();
  View.accessibilityIdentifier(_:)();
  v37[8] = *&v36[64];
  v37[9] = *&v36[80];
  v37[10] = *&v36[96];
  v37[11] = *&v36[112];
  v37[4] = *v36;
  v37[5] = *&v36[16];
  v37[6] = *&v36[32];
  v37[7] = *&v36[48];
  v37[0] = v32;
  v37[1] = v33;
  v37[2] = v34;
  v37[3] = v35;
  return sub_10000D52C(v37, &qword_10021D3A0);
}

uint64_t sub_100118A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.blue.getter();
  v5 = static Edge.Set.all.getter();
  v6 = sub_100009F70(&qword_10021F998);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(sub_100009F70(&qword_10021F9D0) + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v8 = qword_100230600;
  v9 = (a2 + *(sub_100009F70(&qword_10021F9C0) + 36));
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = v8;
  v9[1] = v8;
  *(v9 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  LOBYTE(v11) = static Edge.Set.bottom.getter();
  v13 = type metadata accessor for FilterView();
  sub_10010C758(v13, &StateObject.wrappedValue.getter);
  v14 = sub_10015E890();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  result = sub_100009F70(&qword_10021F9A0);
  v22 = a2 + *(result + 36);
  *v22 = v11;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  return result;
}

uint64_t sub_100118C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009F70(&qword_10021FCE8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100009F70(&qword_10021FCF0);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_100009F70(&qword_10021FCF8);
  sub_100118EDC(a1, &v16[*(v17 + 44)]);
  v18 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v24 = sub_100009F70(&qword_10021FD00);
  sub_10011A484(a1, &v9[*(v24 + 44)]);
  sub_10000D58C(v16, v14, &qword_10021FCF0);
  sub_10000D58C(v9, v7, &qword_10021FCE8);
  sub_10000D58C(v14, a2, &qword_10021FCF0);
  v25 = sub_100009F70(&qword_10021FD08);
  sub_10000D58C(v7, a2 + *(v25 + 48), &qword_10021FCE8);
  sub_10000D52C(v9, &qword_10021FCE8);
  sub_10000D52C(v16, &qword_10021FCF0);
  sub_10000D52C(v7, &qword_10021FCE8);
  return sub_10000D52C(v14, &qword_10021FCF0);
}

uint64_t sub_100118EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v82 = a2;
  v77 = type metadata accessor for DatePickerButtonStyle(0);
  __chkstk_darwin(v77);
  v75 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CompactDatePicker(0);
  v72 = *(v3 - 8);
  v70 = *(v72 + 64);
  v4 = v3 - 8;
  v68 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v69 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100009F70(&qword_10021FDC0);
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v60 - v6;
  v7 = sub_100009F70(&qword_10021FDC8);
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  __chkstk_darwin(v7);
  v73 = &v60 - v9;
  v10 = sub_100009F70(&qword_10021FDD0);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v60 - v13;
  v65 = type metadata accessor for AccessibilityTraits();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CompactDatePickerConfiguration();
  __chkstk_darwin(v16 - 8);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_100009F70(&qword_10021DB10);
  v19 = __chkstk_darwin(v63);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v83 = &v60 - v23;
  __chkstk_darwin(v22);
  v61 = &v60 - v24;
  v67 = *(v4 + 32);
  v66 = sub_100009F70(&qword_10021FC18);
  Binding.wrappedValue.getter();
  v25 = *v18;
  v26 = v18[1];

  sub_10011DFD8(v18, type metadata accessor for CompactDatePickerConfiguration);
  v85 = v25;
  v86 = v26;
  sub_100027068();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  static Font.Weight.regular.getter();
  v32 = Text.fontWeight(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10000D60C(v27, v29, v31 & 1);

  v85 = v32;
  v86 = v34;
  LOBYTE(v87) = v36 & 1;
  v88 = v38;
  static AccessibilityTraits.isHeader.getter();
  View.accessibilityAddTraits(_:)();
  (*(v64 + 8))(v15, v65);
  sub_10000D60C(v32, v34, v36 & 1);

  v39 = v83;
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_10000D52C(v21, &qword_10021DB10);
  v40 = v61;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10000D52C(v39, &qword_10021DB10);
  v41 = v62;
  v42 = v69;
  sub_10011DF70(v62, v69, type metadata accessor for CompactDatePicker);
  v43 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v44 = swift_allocObject();
  sub_10011F268(v42, v44 + v43, type metadata accessor for CompactDatePicker);
  v84 = v41;
  sub_10011F5FC();
  v45 = v71;
  Button.init(action:label:)();
  LOBYTE(v25) = *(v41 + *(v68 + 48));
  v46 = v77;
  v47 = v75;
  Binding.wrappedValue.getter();
  *v47 = v25;
  *&v47[*(v46 + 24)] = 0x3FD3333333333333;
  v48 = sub_10000D1EC(&qword_10021FDE0, &qword_10021FDC0);
  v49 = sub_10011C16C(&qword_10021FDE8, type metadata accessor for DatePickerButtonStyle);
  v50 = v73;
  v51 = v76;
  View.buttonStyle<A>(_:)();
  sub_10011DFD8(v47, type metadata accessor for DatePickerButtonStyle);
  (*(v79 + 8))(v45, v51);
  v85 = v51;
  v86 = v46;
  v87 = v48;
  v88 = v49;
  swift_getOpaqueTypeConformance2();
  v52 = v74;
  v53 = v80;
  View.accessibilityIdentifier(_:)();
  (*(v81 + 8))(v50, v53);
  v54 = v83;
  sub_10000D58C(v40, v83, &qword_10021DB10);
  v55 = v78;
  sub_10000D58C(v52, v78, &qword_10021FDD0);
  v56 = v82;
  sub_10000D58C(v54, v82, &qword_10021DB10);
  v57 = sub_100009F70(&qword_10021FDF0);
  v58 = v56 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_10000D58C(v55, v56 + *(v57 + 64), &qword_10021FDD0);
  sub_10000D52C(v52, &qword_10021FDD0);
  sub_10000D52C(v40, &qword_10021DB10);
  sub_10000D52C(v55, &qword_10021FDD0);
  return sub_10000D52C(v54, &qword_10021DB10);
}

uint64_t sub_1001197F8()
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100119874()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration();
  v1 = __chkstk_darwin(v0);
  v3 = (&v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __chkstk_darwin(v1);
  v6 = (&v29 - v5);
  v7 = __chkstk_darwin(v4);
  v31 = &v29 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = (&v29 - v10);
  __chkstk_darwin(v9);
  v13 = (&v29 - v12);
  v14 = *(type metadata accessor for CompactDatePicker(0) + 24);
  sub_100009F70(&qword_10021FC18);
  v32 = v14;
  Binding.wrappedValue.getter();
  Binding.wrappedValue.getter();
  v15 = *v13 == *v11 && v13[1] == v11[1];
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v16 = *(v0 + 24);
    v42 = *(v13 + v16);
    v30 = v0;
    v17 = *(v11 + v16);
    sub_10011DFD8(v11, type metadata accessor for CompactDatePickerConfiguration);
    sub_10011DFD8(v13, type metadata accessor for CompactDatePickerConfiguration);
    v15 = v42 == v17;
    v0 = v30;
    if (v15)
    {
      v18 = v31;
      Binding.wrappedValue.getter();
      v18[*(v0 + 24)] = 0;
      Binding.wrappedValue.setter();
    }
  }

  else
  {
    sub_10011DFD8(v11, type metadata accessor for CompactDatePickerConfiguration);
    sub_10011DFD8(v13, type metadata accessor for CompactDatePickerConfiguration);
  }

  Binding.wrappedValue.getter();
  Binding.wrappedValue.getter();
  v19 = *v6 == *v3 && v6[1] == v3[1];
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v20 = *(v0 + 24);
    v21 = *(v6 + v20);
    v22 = v0;
    v23 = *(v3 + v20);
    sub_10011DFD8(v3, type metadata accessor for CompactDatePickerConfiguration);
    sub_10011DFD8(v6, type metadata accessor for CompactDatePickerConfiguration);
    if (v21 == v23)
    {
      v24 = v31;
      Binding.wrappedValue.getter();
      v24[*(v22 + 24)] = 0;
      Binding.wrappedValue.setter();
    }
  }

  else
  {
    sub_10011DFD8(v3, type metadata accessor for CompactDatePickerConfiguration);
    sub_10011DFD8(v6, type metadata accessor for CompactDatePickerConfiguration);
  }

  swift_getKeyPath();
  Binding.subscript.getter();

  v25 = v39;
  v26 = v40;
  v27 = v41;
  v36 = v39;
  v37 = v40;
  v38 = v41;
  sub_100009F70(&qword_100218960);
  Binding.wrappedValue.getter();
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v43 = (v44 & 1) == 0;
  Binding.wrappedValue.setter();
}

uint64_t sub_100119C50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = type metadata accessor for AccessibilityTraits();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v56 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  __chkstk_darwin(v6 - 8);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  __chkstk_darwin(v8 - 8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021F180);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_100009F70(&qword_10021F188);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v46 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v46);
  v44 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v22;
  v23 = type metadata accessor for CompactDatePickerConfiguration();
  v55 = v23;
  __chkstk_darwin(v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100009F70(&qword_10021DB10);
  __chkstk_darwin(v50);
  v51 = &v41 - v26;
  v27 = *(type metadata accessor for CompactDatePicker(0) + 24);
  v43 = sub_100009F70(&qword_10021FC18);
  Binding.wrappedValue.getter();
  (*(v20 + 16))(v22, &v25[*(v23 + 20)], v19);
  v42 = type metadata accessor for CompactDatePickerConfiguration;
  sub_10011DFD8(v25, type metadata accessor for CompactDatePickerConfiguration);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  v28 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
  v29 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  sub_10011C16C(&qword_10021F178, &type metadata accessor for Date.FormatStyle);
  sub_10011C16C(&qword_10021FDF8, &type metadata accessor for Date);
  v30 = Text.init<A>(_:format:)();
  v32 = v31;
  v58 = v30;
  v59 = v33;
  v47 = v33;
  v48 = a1;
  v60 = v31 & 1;
  v61 = v34;
  v49 = v27;
  Binding.wrappedValue.getter();
  v35 = v25[*(v55 + 24)];
  sub_10011DFD8(v25, v42);
  if (v35 == 1)
  {
    sub_100009F70(&qword_100219BD8);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1001AEB90;
    static AccessibilityTraits.isSelected.getter();
    v57 = v36;
  }

  else
  {
    v57 = &_swiftEmptyArrayStorage;
  }

  sub_10011C16C(&qword_100219BE0, &type metadata accessor for AccessibilityTraits);
  sub_100009F70(&qword_100219BE8);
  sub_10000D1EC(&qword_100219BF0, &qword_100219BE8);
  v37 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v51;
  v39 = v56;
  View.accessibilityAddTraits(_:)();
  (*(v54 + 8))(v39, v37);
  sub_10000D60C(v30, v47, v32 & 1);

  Binding.wrappedValue.getter();
  sub_10011DFD8(v25, type metadata accessor for CompactDatePickerConfiguration);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityHint(_:)();

  return sub_10000D52C(v38, &qword_10021DB10);
}

uint64_t sub_10011A484@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for CompactDatePicker(0);
  v108 = *(v3 - 8);
  __chkstk_darwin(v3);
  v109 = v4;
  v110 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for GraphicalDatePickerStyle();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v6 - 8);
  v89 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021F5E0);
  __chkstk_darwin(v8 - 8);
  v86 = &v77 - v9;
  v10 = sub_100009F70(&qword_10021FD10);
  __chkstk_darwin(v10 - 8);
  v81 = &v77 - v11;
  v12 = sub_100009F70(&qword_10021FC18);
  __chkstk_darwin(v12);
  v80 = &v77 - v13;
  v85 = sub_100009F70(&qword_10021FD18);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v77 - v14;
  v84 = sub_100009F70(&qword_10021FD20);
  __chkstk_darwin(v84);
  v87 = &v77 - v15;
  v91 = sub_100009F70(&qword_10021FD28);
  __chkstk_darwin(v91);
  v93 = &v77 - v16;
  v92 = sub_100009F70(&qword_10021FD30);
  __chkstk_darwin(v92);
  v103 = &v77 - v17;
  v102 = sub_100009F70(&qword_10021FD38);
  __chkstk_darwin(v102);
  v105 = &v77 - v18;
  v104 = sub_100009F70(&qword_10021FD40);
  v19 = __chkstk_darwin(v104);
  v107 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v101 = &v77 - v22;
  __chkstk_darwin(v21);
  v106 = &v77 - v23;
  v24 = type metadata accessor for CompactDatePickerConfiguration();
  __chkstk_darwin(v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Divider();
  v27 = *(v79 - 8);
  __chkstk_darwin(v79);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100009F70(&qword_10021FD48);
  v99 = *(v100 - 8);
  v30 = __chkstk_darwin(v100);
  v96 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v77 - v32;
  Divider.init()();
  v113 = v3;
  v34 = a1 + *(v3 + 24);
  v94 = v12;
  v112 = v34;
  Binding.wrappedValue.getter();
  v90 = v24;
  LOBYTE(v3) = v26[*(v24 + 24)];
  sub_10011DFD8(v26, type metadata accessor for CompactDatePickerConfiguration);
  v35 = static Animation.linear(duration:)();
  if ((v3 & 1) == 0)
  {
    Animation.delay(_:)();
  }

  __chkstk_darwin(v35);
  sub_100009F70(&qword_10021FD50);
  sub_10011C16C(&qword_10021FB00, &type metadata accessor for Divider);
  v78 = a1;
  sub_10011F03C();
  v88 = v33;
  v36 = v79;
  View.animation<A>(_:body:)();

  (*(v27 + 8))(v29, v36);
  v37 = v80;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10000D52C(v37, &qword_10021FC18);
  sub_10000D58C(a1 + *(v113 + 32), v86, &qword_10021F5E0);
  static DatePickerComponents.date.getter();
  v38 = v82;
  DatePicker.init(selection:in:displayedComponents:label:)();
  Binding.wrappedValue.getter();
  v39 = v90;
  sub_10011DFD8(v26, type metadata accessor for CompactDatePickerConfiguration);
  sub_10000D1EC(&qword_10021FD80, &qword_10021FD18);
  v40 = v87;
  v41 = v85;
  View.accessibilityHidden(_:isEnabled:)();
  (*(v83 + 8))(v38, v41);
  v42 = v95;
  GraphicalDatePickerStyle.init()();
  sub_10011F180();
  sub_10011C16C(&qword_10021FD90, &type metadata accessor for GraphicalDatePickerStyle);
  v43 = v93;
  v44 = v98;
  View.datePickerStyle<A>(_:)();
  (*(v97 + 8))(v42, v44);
  sub_10000D52C(v40, &qword_10021FD20);
  v45 = (v43 + *(sub_100009F70(&qword_10021FD98) + 36));
  v46 = sub_100009F70(&qword_10021FDA0);
  v47 = *(v46 + 36);
  v48 = enum case for CoordinateSpace.local(_:);
  v49 = type metadata accessor for CoordinateSpace();
  (*(*(v49 - 8) + 104))(&v45[v47], v48, v49);
  *v45 = &type metadata for FilterViewStartDatePickerHeightPreferenceKey;
  v50 = &v45[*(v46 + 40)];
  *v50 = sub_10011B690;
  v50[1] = 0;
  v51 = v78;
  v52 = v110;
  sub_10011DF70(v78, v110, type metadata accessor for CompactDatePicker);
  v53 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v54 = swift_allocObject();
  sub_10011F268(v52, v54 + v53, type metadata accessor for CompactDatePicker);
  v55 = (v43 + *(sub_100009F70(&qword_10021FDA8) + 36));
  *v55 = sub_10011F2D0;
  v55[1] = v54;
  v56 = *(v51 + *(v113 + 36));
  v57 = (v43 + *(v91 + 36));
  *v57 = 0;
  v57[1] = v56;
  Binding.wrappedValue.getter();
  LODWORD(v46) = v26[*(v39 + 24)];
  sub_10011DFD8(v26, type metadata accessor for CompactDatePickerConfiguration);
  if (v46)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.5;
  }

  v59 = v103;
  sub_10000F618(v43, v103, &qword_10021FD28);
  *(v59 + *(v92 + 36)) = v58;
  Binding.wrappedValue.getter();
  sub_10011DFD8(v26, type metadata accessor for CompactDatePickerConfiguration);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v60 = v105;
  sub_10000F618(v59, v105, &qword_10021FD30);
  v61 = (v60 + *(v102 + 36));
  v62 = v119;
  v61[4] = v118;
  v61[5] = v62;
  v61[6] = v120;
  v63 = v115;
  *v61 = v114;
  v61[1] = v63;
  v64 = v117;
  v61[2] = v116;
  v61[3] = v64;
  v65 = v101;
  sub_10000F618(v60, v101, &qword_10021FD38);
  *(v65 + *(v104 + 36)) = 0;
  v66 = v106;
  sub_10000F618(v65, v106, &qword_10021FD40);
  v67 = v99;
  v68 = *(v99 + 16);
  v69 = v96;
  v70 = v88;
  v71 = v100;
  v68(v96, v88, v100);
  v72 = v107;
  sub_10000D58C(v66, v107, &qword_10021FD40);
  v73 = v111;
  v68(v111, v69, v71);
  v74 = sub_100009F70(&qword_10021FDB0);
  sub_10000D58C(v72, &v73[*(v74 + 48)], &qword_10021FD40);
  sub_10000D52C(v66, &qword_10021FD40);
  v75 = *(v67 + 8);
  v75(v70, v71);
  sub_10000D52C(v72, &qword_10021FD40);
  return (v75)(v69, v71);
}

__n128 sub_10011B3B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CompactDatePickerConfiguration();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_10021FD68);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  type metadata accessor for CompactDatePicker(0);
  sub_100009F70(&qword_10021FC18);
  Binding.wrappedValue.getter();
  v11 = v6[*(v4 + 32)];
  sub_10011DFD8(v6, type metadata accessor for CompactDatePickerConfiguration);
  if (v11)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = sub_100009F70(&qword_10021FD78);
  (*(*(v13 - 8) + 16))(v10, a1, v13);
  *&v10[*(v8 + 44)] = v12;
  Binding.wrappedValue.getter();
  sub_10011DFD8(v6, type metadata accessor for CompactDatePickerConfiguration);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v14 = v20;
  sub_10000F618(v10, v20, &qword_10021FD68);
  v15 = v14 + *(sub_100009F70(&qword_10021FD50) + 36);
  v16 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v16;
  *(v15 + 96) = v27;
  v17 = v22;
  *v15 = v21;
  *(v15 + 16) = v17;
  result = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_10011B6B8()
{
  type metadata accessor for CompactDatePicker(0);
  sub_100009F70(&qword_10021FDB8);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10011B734@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100009F70(&qword_10021FCE0);
  return sub_100118C64(v1, a1 + *(v3 + 44));
}

uint64_t sub_10011B784@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v62 = type metadata accessor for ButtonStyleConfiguration.Label();
  v2 = *(v62 - 8);
  __chkstk_darwin(v62);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100009F70(&qword_10021FEB0);
  __chkstk_darwin(v59);
  v6 = &v57 - v5;
  v58 = sub_100009F70(&qword_10021FEB8);
  __chkstk_darwin(v58);
  v8 = &v57 - v7;
  v57 = sub_100009F70(&qword_10021FEC0);
  __chkstk_darwin(v57);
  v10 = &v57 - v9;
  v60 = sub_100009F70(&qword_10021FEC8);
  __chkstk_darwin(v60);
  v12 = &v57 - v11;
  v63 = sub_100009F70(&qword_10021FED0);
  __chkstk_darwin(v63);
  v14 = &v57 - v13;
  v61 = sub_100009F70(&qword_10021FED8);
  __chkstk_darwin(v61);
  v64 = &v57 - v15;
  ButtonStyleConfiguration.label.getter();
  v65 = v1;
  if (*v1 == 1)
  {
    v16 = static Color.blue.getter();
  }

  else
  {
    v16 = static Color.primary.getter();
  }

  v17 = v16;
  KeyPath = swift_getKeyPath();
  (*(v2 + 32))(v6, v4, v62);
  v19 = &v6[*(v59 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v20 = 0.3;
  }

  else
  {
    v20 = 1.0;
  }

  sub_10000F618(v6, v8, &qword_10021FEB0);
  *&v8[*(v58 + 36)] = v20;
  v21 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10000F618(v8, v10, &qword_10021FEB8);
  v30 = &v10[*(v57 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.vertical.getter();
  static Solarium.isEnabled.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10000F618(v10, v12, &qword_10021FEC0);
  v40 = &v12[*(v60 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  if (qword_100218348 != -1)
  {
    swift_once();
  }

  v41 = qword_100230580;
  v42 = static Edge.Set.all.getter();
  sub_10000F618(v12, v14, &qword_10021FEC8);
  v43 = &v14[*(v63 + 36)];
  *v43 = v41;
  v43[8] = v42;

  if (static Solarium.isEnabled.getter())
  {
    v44 = 16.0;
  }

  else
  {
    v44 = 7.0;
  }

  v45 = v64;
  v46 = &v64[*(v61 + 36)];
  v47 = *(type metadata accessor for RoundedRectangle() + 20);
  v48 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = type metadata accessor for RoundedCornerStyle();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = v44;
  v46[1] = v44;
  *(v46 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  sub_10000F618(v14, v45, &qword_10021FED0);
  v50 = type metadata accessor for DatePickerButtonStyle(0);
  v51 = v65;
  v52 = static Animation.easeInOut(duration:)();
  v53 = &v51[*(v50 + 20)];
  LOBYTE(v53) = v53[*(type metadata accessor for CompactDatePickerConfiguration() + 24)];
  v54 = v66;
  sub_10000F618(v45, v66, &qword_10021FED8);
  result = sub_100009F70(&qword_10021FEE0);
  v56 = v54 + *(result + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  return result;
}

void sub_10011BD70()
{
  type metadata accessor for FilterViewModel();
  swift_getWitnessTable();
  type metadata accessor for StateObject();
  if (v0 <= 0x3F)
  {
    sub_10011E3DC(319, &qword_1002198B8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10011E3DC(319, &qword_10021A308, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10000B304();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10011BECC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100009F70(&qword_100219838);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100009F70(&qword_100218950);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10011C00C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100009F70(&qword_100219838);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = sub_100009F70(&qword_100218950);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10011C16C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10011C1B4()
{
  result = qword_10021F960;
  if (!qword_10021F960)
  {
    sub_10000B3DC(&qword_10021F958);
    sub_10011C4D4(&qword_10021F968, &qword_10021F970, &unk_1001B7C58, sub_10011C298);
    sub_10000D1EC(&qword_10021E7F0, &qword_10021E7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F960);
  }

  return result;
}

unint64_t sub_10011C298()
{
  result = qword_10021F978;
  if (!qword_10021F978)
  {
    sub_10000B3DC(&qword_10021F980);
    sub_10011C324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F978);
  }

  return result;
}

unint64_t sub_10011C324()
{
  result = qword_10021F988;
  if (!qword_10021F988)
  {
    sub_10000B3DC(&qword_10021F990);
    sub_10000B3DC(&qword_10021F998);
    sub_10000B3DC(&qword_10021DD48);
    sub_10000B3DC(&qword_10021F9A0);
    sub_10000D1EC(&qword_10021F9A8, &qword_10021F998);
    swift_getOpaqueTypeConformance2();
    sub_10011C4D4(&qword_10021F9B0, &qword_10021F9A0, &unk_1001B7C80, sub_10011C558);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F988);
  }

  return result;
}

uint64_t sub_10011C4D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_10011C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10011C558()
{
  result = qword_10021F9B8;
  if (!qword_10021F9B8)
  {
    sub_10000B3DC(&qword_10021F9C0);
    sub_10011C610();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9B8);
  }

  return result;
}

unint64_t sub_10011C610()
{
  result = qword_10021F9C8;
  if (!qword_10021F9C8)
  {
    sub_10000B3DC(&qword_10021F9D0);
    sub_10000D1EC(&qword_10021F9A8, &qword_10021F998);
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9C8);
  }

  return result;
}

unint64_t sub_10011C6F4()
{
  result = qword_10021F9D8;
  if (!qword_10021F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9D8);
  }

  return result;
}

unint64_t sub_10011C800()
{
  result = qword_10021FA10;
  if (!qword_10021FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FA10);
  }

  return result;
}

uint64_t sub_10011C854()
{
  type metadata accessor for FilterView();

  return sub_100118298();
}

uint64_t sub_10011C8F8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for FilterView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_10011C9E4()
{
  result = qword_10021FA50;
  if (!qword_10021FA50)
  {
    sub_10000B3DC(&qword_10021FA58);
    sub_100042DC4();
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FA50);
  }

  return result;
}

unint64_t sub_10011CAA8()
{
  result = qword_10021FA68;
  if (!qword_10021FA68)
  {
    sub_10000B3DC(&qword_10021FA60);
    sub_10011CF44(&qword_10021FA70, &qword_10021FA78, &unk_1001B7D00, sub_10011CB8C);
    sub_10000D1EC(&qword_10021FAB0, &qword_10021FAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FA68);
  }

  return result;
}

uint64_t sub_10011CBBC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_10011CC38()
{
  result = qword_10021FA90;
  if (!qword_10021FA90)
  {
    sub_10000B3DC(&qword_10021FA98);
    sub_10011CCF0();
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FA90);
  }

  return result;
}

unint64_t sub_10011CCF0()
{
  result = qword_10021FAA0;
  if (!qword_10021FAA0)
  {
    sub_10000B3DC(&qword_10021FAA8);
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FAA0);
  }

  return result;
}

uint64_t sub_10011CDA8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10011CF44(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10011D010()
{
  result = qword_10021FAF0;
  if (!qword_10021FAF0)
  {
    sub_10000B3DC(&qword_10021F920);
    sub_10011D094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FAF0);
  }

  return result;
}

unint64_t sub_10011D094()
{
  result = qword_10021FAF8;
  if (!qword_10021FAF8)
  {
    sub_10000B3DC(&qword_100219C30);
    sub_10011C16C(&qword_10021FB00, &type metadata accessor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FAF8);
  }

  return result;
}

unint64_t sub_10011D150()
{
  result = qword_10021FB08;
  if (!qword_10021FB08)
  {
    sub_10000B3DC(&qword_10021F940);
    sub_10000D1EC(&qword_10021FB10, &qword_10021FAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB08);
  }

  return result;
}

unint64_t sub_10011D20C()
{
  result = qword_10021FB28;
  if (!qword_10021FB28)
  {
    sub_10000B3DC(&qword_10021FB20);
    sub_10011D298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB28);
  }

  return result;
}

unint64_t sub_10011D298()
{
  result = qword_10021FB30;
  if (!qword_10021FB30)
  {
    sub_10000B3DC(&qword_10021FB38);
    sub_10011D344(&qword_10021FB40, &qword_10021FB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB30);
  }

  return result;
}

uint64_t sub_10011D344(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_10011D3C0()
{
  result = qword_10021FB58;
  if (!qword_10021FB58)
  {
    sub_10000B3DC(&qword_10021FB18);
    sub_10000B3DC(&qword_10021FB60);
    sub_10011D4B8();
    swift_getOpaqueTypeConformance2();
    sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB58);
  }

  return result;
}

unint64_t sub_10011D4B8()
{
  result = qword_10021FB68;
  if (!qword_10021FB68)
  {
    sub_10000B3DC(&qword_10021FB60);
    sub_10011D570();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB68);
  }

  return result;
}

unint64_t sub_10011D570()
{
  result = qword_10021FB70;
  if (!qword_10021FB70)
  {
    sub_10000B3DC(&qword_10021FB78);
    sub_10011D344(&qword_10021AFF0, &qword_10021AFE8);
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB70);
  }

  return result;
}

unint64_t sub_10011D648()
{
  result = qword_10021FB80;
  if (!qword_10021FB80)
  {
    sub_10000B3DC(&qword_10021FB50);
    sub_10000D1EC(&qword_10021FB88, &qword_10021FB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB80);
  }

  return result;
}

unint64_t sub_10011D700()
{
  result = qword_10021FBA0;
  if (!qword_10021FBA0)
  {
    sub_10000B3DC(&qword_10021F930);
    sub_10011D78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FBA0);
  }

  return result;
}

unint64_t sub_10011D78C()
{
  result = qword_10021FBA8;
  if (!qword_10021FBA8)
  {
    sub_10000B3DC(&qword_10021FBB0);
    sub_10011D3C0();
    sub_10011D648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FBA8);
  }

  return result;
}

uint64_t sub_10011D83C()
{
  v1 = type metadata accessor for FilterView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  sub_10011C770();
  v3 = *(v1 + 36);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 40);
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

uint64_t sub_10011D9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for FilterView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100113CF4(a1, v8, v5, v6, a2);
}

uint64_t sub_10011DA84()
{
  v1 = type metadata accessor for FilterView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v12 = *(*(v1 - 8) + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  sub_10011C770();
  v7 = *(v1 + 36);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 40);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v12 + v5) & ~v5), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_10011DCE4()
{
  v1 = *(type metadata accessor for FilterView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100114548(v0 + v2, v5);
}

uint64_t sub_10011DE04@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

__n128 sub_10011DE90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10011DF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011DFD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10011E05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009F70(&qword_10021FC18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100009F70(&qword_10021F5E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10011E1B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009F70(&qword_10021FC18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100009F70(&qword_10021F5E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10011E2F0()
{
  sub_10011E3DC(319, &qword_10021FC88, type metadata accessor for CompactDatePickerConfiguration, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10011E440();
    if (v1 <= 0x3F)
    {
      sub_10011E490();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10011E3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10011E440()
{
  if (!qword_10021FC90)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10021FC90);
    }
  }
}

void sub_10011E490()
{
  if (!qword_10021FC98)
  {
    type metadata accessor for Date();
    sub_10011C16C(&qword_10021F170, &type metadata accessor for Date);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_10021FC98);
    }
  }
}

uint64_t sub_10011E524()
{
  type metadata accessor for NavigationPath();
  sub_10000B3DC(&qword_10021F920);
  sub_10000B3DC(&qword_10021F928);
  sub_10000B3DC(&qword_10021F930);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F940);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F948);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000B3DC(&qword_10021F950);
  sub_10000B3DC(&qword_10021F958);
  type metadata accessor for GlassProminentButtonStyle();
  sub_10011C1B4();
  sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CompactDatePickerConfiguration();
  swift_getOpaqueTypeConformance2();
  sub_10011C16C(&qword_10021F5D0, type metadata accessor for CompactDatePickerConfiguration);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021F9E0);
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021F9E8, &qword_10021F9E0);
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021F9F0);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F9F8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021FA00, &qword_10021F9F0);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021FA08, &qword_10021F9F8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  return swift_getWitnessTable();
}

unint64_t sub_10011F00C(uint64_t a1)
{
  result = sub_10011C800();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10011F03C()
{
  result = qword_10021FD58;
  if (!qword_10021FD58)
  {
    sub_10000B3DC(&qword_10021FD50);
    sub_10011F0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD58);
  }

  return result;
}

unint64_t sub_10011F0C8()
{
  result = qword_10021FD60;
  if (!qword_10021FD60)
  {
    sub_10000B3DC(&qword_10021FD68);
    sub_10000D1EC(&qword_10021FD70, &qword_10021FD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD60);
  }

  return result;
}

unint64_t sub_10011F180()
{
  result = qword_10021FD88;
  if (!qword_10021FD88)
  {
    sub_10000B3DC(&qword_10021FD20);
    sub_10000D1EC(&qword_10021FD80, &qword_10021FD18);
    sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD88);
  }

  return result;
}

uint64_t sub_10011F268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011F2D0()
{
  type metadata accessor for CompactDatePicker(0);

  return sub_10011B6B8();
}

uint64_t sub_10011F364()
{
  v1 = (type metadata accessor for CompactDatePicker(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = sub_100009F70(&qword_10021FC18);
  v4 = v2 + *(v3 + 32);

  v5 = type metadata accessor for CompactDatePickerConfiguration();
  v6 = *(v5 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = v2 + v1[7];

  v10 = v9 + *(v3 + 32);

  v8(v10 + *(v5 + 20), v7);
  v11 = v2 + v1[8];

  v12 = v11 + *(v3 + 32);

  v8(v12 + *(v5 + 20), v7);

  v13 = v2 + v1[10];
  v8(v13, v7);
  v14 = sub_100009F70(&qword_10021F5E0);
  v8(v13 + *(v14 + 36), v7);

  return swift_deallocObject();
}

uint64_t sub_10011F594()
{
  type metadata accessor for CompactDatePicker(0);

  return sub_1001197F8();
}

unint64_t sub_10011F5FC()
{
  result = qword_10021FDD8;
  if (!qword_10021FDD8)
  {
    sub_10000B3DC(&qword_10021DB10);
    sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FDD8);
  }

  return result;
}

uint64_t sub_10011F6F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for CompactDatePickerConfiguration();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10011F7B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for CompactDatePickerConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10011F858()
{
  result = type metadata accessor for CompactDatePickerConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10011F920(uint64_t a1)
{
  result = sub_10011F948();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10011F948()
{
  result = qword_10021FEA8;
  if (!qword_10021FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FEA8);
  }

  return result;
}

unint64_t sub_10011F9BC()
{
  result = qword_10021FEE8;
  if (!qword_10021FEE8)
  {
    sub_10000B3DC(&qword_10021FEE0);
    sub_10011FA74();
    sub_10000D1EC(&qword_10021FF28, &qword_10021FF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FEE8);
  }

  return result;
}

unint64_t sub_10011FA74()
{
  result = qword_10021FEF0;
  if (!qword_10021FEF0)
  {
    sub_10000B3DC(&qword_10021FED8);
    sub_10011FB2C();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FEF0);
  }

  return result;
}

unint64_t sub_10011FB2C()
{
  result = qword_10021FEF8;
  if (!qword_10021FEF8)
  {
    sub_10000B3DC(&qword_10021FED0);
    sub_10011FBE4();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FEF8);
  }

  return result;
}

unint64_t sub_10011FBE4()
{
  result = qword_10021FF00;
  if (!qword_10021FF00)
  {
    sub_10000B3DC(&qword_10021FEC8);
    sub_10011FC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FF00);
  }

  return result;
}

unint64_t sub_10011FC70()
{
  result = qword_10021FF08;
  if (!qword_10021FF08)
  {
    sub_10000B3DC(&qword_10021FEC0);
    sub_10011FCFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FF08);
  }

  return result;
}

unint64_t sub_10011FCFC()
{
  result = qword_10021FF10;
  if (!qword_10021FF10)
  {
    sub_10000B3DC(&qword_10021FEB8);
    sub_10011FD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FF10);
  }

  return result;
}

unint64_t sub_10011FD88()
{
  result = qword_10021FF18;
  if (!qword_10021FF18)
  {
    sub_10000B3DC(&qword_10021FEB0);
    sub_10011C16C(&qword_10021FF20, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_10000D1EC(&qword_100219128, &qword_100219130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FF18);
  }

  return result;
}

uint64_t sub_10011FEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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