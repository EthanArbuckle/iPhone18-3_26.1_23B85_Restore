uint64_t sub_1006265D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCCE40);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v22 - v6);
  v8 = sub_10022C350(&qword_100CCCE48);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v13[*(sub_10022C350(&qword_100CCCE50) + 44)];
  *v7 = static Alignment.center.getter();
  v7[1] = v15;
  v16 = sub_10022C350(&qword_100CCCE58);
  sub_100626860((v7 + *(v16 + 44)));
  sub_100035AD0(v7, v4, &qword_100CCCE40);
  *v14 = 0;
  v14[8] = 1;
  v17 = sub_10022C350(&qword_100CCCE60);
  sub_100035AD0(v4, &v14[*(v17 + 48)], &qword_100CCCE40);
  v18 = &v14[*(v17 + 64)];
  *v18 = 0;
  v18[8] = 1;
  sub_1000180EC(v7, &qword_100CCCE40);
  sub_1000180EC(v4, &qword_100CCCE40);
  sub_100035AD0(v13, v10, &qword_100CCCE48);
  *a1 = 0;
  *(a1 + 8) = 1;
  v19 = sub_10022C350(&qword_100CCCE68);
  sub_100035AD0(v10, a1 + *(v19 + 48), &qword_100CCCE48);
  v20 = a1 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1000180EC(v13, &qword_100CCCE48);
  return sub_1000180EC(v10, &qword_100CCCE48);
}

uint64_t sub_100626860@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for CircularProgressViewStyle();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAD1A8);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10022C350(&qword_100CCCE70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = static Color.clear.getter();
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_100006F64(&qword_100CAD270, &qword_100CAD1A8);
  sub_100626E70(&qword_100CC8F28, &type metadata accessor for CircularProgressViewStyle);
  v16 = v5;
  v17 = v25;
  View.progressViewStyle<A>(_:)();
  (*(v26 + 8))(v4, v17);
  (*(v24 + 8))(v7, v16);
  v18 = *(v9 + 16);
  v18(v11, v14, v8);
  v19 = v27;
  *v27 = v15;
  *(v19 + 4) = 256;
  v20 = v19;
  v21 = sub_10022C350(&qword_100CCCE78);
  v18(v20 + *(v21 + 48), v11, v8);
  v22 = *(v9 + 8);

  v22(v14, v8);
  v22(v11, v8);
}

uint64_t sub_100626BC0(uint64_t a1)
{
  result = sub_100626E70(&qword_100CCCDD8, type metadata accessor for LocationRowPreviewViewController);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100626C18()
{
  result = qword_100CCCE08;
  if (!qword_100CCCE08)
  {
    sub_10022E824(&qword_100CCCDF8);
    sub_100006F64(&qword_100CCCE10, &qword_100CCCE00);
    sub_100626CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCE08);
  }

  return result;
}

unint64_t sub_100626CD0()
{
  result = qword_100CCCE18;
  if (!qword_100CCCE18)
  {
    sub_10022E824(&qword_100CCCDE0);
    sub_100626D88();
    sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCE18);
  }

  return result;
}

unint64_t sub_100626D88()
{
  result = qword_100CCCE20;
  if (!qword_100CCCE20)
  {
    sub_10022E824(&qword_100CCCE28);
    sub_100626E70(&qword_100CCCE30, type metadata accessor for ListLocationRowView);
    sub_100006F64(&qword_100CACCF8, &qword_100CACD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCE20);
  }

  return result;
}

uint64_t sub_100626E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100626EB8(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveLocationModel(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_100626F1C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveLocationModel(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_100626F80(uint64_t a1)
{
  active = type metadata accessor for ActiveLocationModel(0);
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t sub_100626FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCCDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062704C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CCCDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1006270B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000C778();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v60 = v28;
  v63 = v31;
  v65 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v74 = a21;
  v75 = a23;
  v38 = sub_100042FB0(v73);
  (*(*(a21 - 8) + 32))(v38, v37, a21);
  v39 = objc_allocWithZone(v25);
  v40 = sub_10002D7F8(v73, v74);
  __chkstk_darwin(v40);
  sub_1000037D8();
  v43 = (v42 - v41);
  (*(v44 + 16))(v42 - v41);
  v45 = *v43;
  v72[3] = type metadata accessor for LocationRowViewModelProvider();
  v72[4] = &off_100C5F610;
  v72[0] = v45;
  v46 = qword_100CCCCB0;
  type metadata accessor for LocationStateObservable(0);
  v47 = sub_100003B6C();
  sub_100625B58(v47, v48, v49, v50, v51, v52, v53, v54, v59, v60, a24, v63, v65, v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6]);
  *&v39[v46] = v47;
  sub_100035B30(v72, v69);
  sub_100035B30(v29, &v70);
  sub_100035B30(v27, &v71);
  v68[0] = 0;

  sub_10022C350(&qword_100CA4AF0);
  sub_100006390();
  sub_100006F64(v55, &qword_100CA4AF0);
  v68[1] = ObservedObject.init(wrappedValue:)();
  v68[2] = v56;
  sub_100626E70(&qword_100CCCE80, type metadata accessor for LocationStateObservable);
  v68[3] = ObservedObject.init(wrappedValue:)();
  v68[4] = v57;
  v69[5] = v64;
  v69[6] = v62;
  *&v39[qword_100CCCCC0] = v35;
  v58 = &v39[qword_100CCCCB8];
  *v58 = v33;
  *(v58 + 1) = v66;
  sub_1006273B0(v68, v67);

  swift_unknownObjectRetain();
  [UIHostingController.init(rootView:)() setPreferredContentSize:{0.0, 112.0}];

  swift_unknownObjectRelease();
  sub_100006F14(v27);
  sub_100006F14(v61);
  sub_1006273E8(v68);
  sub_100006F14(v72);
  sub_100006F14(v73);
  sub_10000536C();
}

unint64_t sub_100627418()
{
  result = qword_100CCCE90;
  if (!qword_100CCCE90)
  {
    sub_10022E824(&qword_100CCCE98);
    sub_100626C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCE90);
  }

  return result;
}

uint64_t type metadata accessor for PrecipitationAveragesHeroChartViewModel()
{
  result = qword_100CCCEF8;
  if (!qword_100CCCEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100627518()
{
  sub_100627650(319, &qword_100CA51A8, &type metadata accessor for DetailChartDataElement);
  if (v0 <= 0x3F)
  {
    sub_100627650(319, &unk_100CCCF08, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PeakUpperMarkModel(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DetailHeroChartLollipopModel(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100627650(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006276A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v35 = *(a1 + 56);
  v36 = *(a1 + 48);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v33 = *(a2 + 56);
  v34 = *(a2 + 48);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v5 == v9;
  if (!v13 && (sub_10001C854() & 1) == 0)
  {
    return 0;
  }

  v14 = v6 == v10 && v7 == v11;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v36 == v34 && v35 == v33;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1009E9B70();
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_1009E9B70();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  sub_1009EC81C();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 88) != *(a2 + 88))
  {
    return 0;
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  if (!sub_100696458(*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a2 + 104), *(a2 + 112), *(a2 + 120), *(a2 + 128)))
  {
    return 0;
  }

  v19 = *(a1 + 144);
  v20 = *(a1 + 152);
  v21 = *(a1 + 160);
  v22 = *(a2 + 144);
  v23 = *(a2 + 152);
  v24 = *(a2 + 160);
  sub_1009E9C0C();
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  if (v19 == v22 && v20 == v23)
  {
    if (v21 != v24)
    {
      return 0;
    }
  }

  else if (sub_10001C854() & 1) == 0 || ((v21 ^ v24))
  {
    return 0;
  }

  v27 = type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  v28 = sub_100003C48(v27[12]);
  if ((sub_10082A328(v28, v29) & 1) == 0)
  {
    return 0;
  }

  v30 = sub_100003C48(v27[13]);
  if ((sub_10082A328(v30, v31) & 1) == 0)
  {
    return 0;
  }

  sub_100003C48(v27[14]);
  if ((sub_10048F310() & 1) == 0)
  {
    return 0;
  }

  sub_100003C48(v27[15]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100003C48(v27[16]);

  return static Date.== infix(_:_:)();
}

uint64_t sub_1006278DC(double a1)
{
  v2 = round(a1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = static UVIndex.ExposureCategory.allCases.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      if (UVIndex.ExposureCategory.rangeValue.getter() <= v3 && v7 >= v3)
      {

        goto LABEL_17;
      }

      if (v5 == ++v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_13:

  if (qword_100CA2778 != -1)
  {
LABEL_24:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000703C(v9, qword_100D90CC0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find UV Index Category matching value=%{public}f", v12, 0xCu);
  }

LABEL_17:

  return UVIndex.init(value:category:)();
}

unint64_t sub_100627AB4()
{
  result = qword_100CCCF68;
  if (!qword_100CCCF68)
  {
    type metadata accessor for HistoricalFact.Condition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCF68);
  }

  return result;
}

void sub_100627B0C(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalFactsCategory();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v69 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_10022C350(&qword_100CCCF70);
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v66 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v65 = (&v57 - v7);
  v8 = sub_10022C350(&qword_100CCCF78);
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_10022C350(&qword_100CCCF80);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v64 = &v57 - v13;
  v14 = type metadata accessor for HistoricalFact();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v76 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v75 = *(a1 + 16);
  if (v75)
  {
    v20 = 0;
    v22 = *(v15 + 16);
    v21 = v15 + 16;
    v82 = v22;
    v62 = *(v21 + 64);
    v72 = (v62 + 32) & ~v62;
    v73 = a1 + v72;
    v81 = *(v21 + 56);
    v70 = (v21 + 16);
    v60 = (v12 + 32);
    v59 = (v12 + 16);
    v58 = (v12 + 8);
    v71 = (v21 - 8);
    v23 = _swiftEmptyArrayStorage;
    v61 = xmmword_100A2C3F0;
    v78 = v11;
    v63 = v10;
    v74 = v14;
    v79 = v21;
    while (2)
    {
      v80 = v20 + 1;
      v82(v19, v73 + v81 * v20, v14);
      v24 = 0;
      v25 = v23[2];
      while (1)
      {
        if (v25 == v24)
        {
          sub_10022C350(&qword_100CCCF88);
          v32 = v72;
          v33 = swift_allocObject();
          *(v33 + 16) = v61;
          v14 = v74;
          v82((v33 + v32), v19, v74);
          v83 = v33;
          sub_10022C350(&qword_100CCCF90);
          sub_1006289D8();
          v34 = v63;
          NonEmpty.init(_:)();
          v35 = v78;
          if (sub_100024D10(v34, 1, v78) == 1)
          {
            sub_10003FDF4(v34, &qword_100CCCF78);
            simulateCrash(_:_:)();
          }

          else
          {
            v41 = v64;
            (*v60)(v64, v34, v35);
            v42 = HistoricalFact.heading.getter();
            v43 = *(v77 + 48);
            v44 = v65;
            *v65 = v42;
            v44[1] = v45;
            (*v59)(v44 + v43, v41, v35);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10069E6A4();
              v23 = v48;
            }

            v46 = v23[2];
            if (v46 >= v23[3] >> 1)
            {
              sub_10069E6A4();
              v23 = v49;
            }

            (*v58)(v64, v35);
            v23[2] = v46 + 1;
            sub_100628A3C(v65, v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v46);
          }

          goto LABEL_23;
        }

        v26 = (v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24);
        v27 = *v26;
        v28 = v26[1];
        if (v27 == HistoricalFact.heading.getter() && v28 == v29)
        {
          break;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_14;
        }

        ++v24;
      }

LABEL_14:
      v14 = v74;
      v82(v76, v19, v74);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1008FBAA0();
        v23 = v47;
      }

      if (v24 >= v23[2])
      {
        __break(1u);
        goto LABEL_34;
      }

      v36 = NonEmpty.rawElements.modify();
      v38 = v37;
      sub_10051A960();
      v39 = *(*v38 + 16);
      sub_100278A00(v39);
      v40 = *v38;
      *(v40 + 16) = v39 + 1;
      (*v70)(v40 + v72 + v39 * v81, v76, v14);
      v36(&v83, 0);
LABEL_23:
      (*v71)(v19, v14);
      v20 = v80;
      if (v80 != v75)
      {
        continue;
      }

      break;
    }

    v50 = v23[2];
    if (!v50)
    {
LABEL_30:

      return;
    }

    v83 = _swiftEmptyArrayStorage;
    sub_1006A7A04();
    v51 = 0;
    v52 = v83;
    v80 = v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v81 = v50;
    while (v51 < v23[2])
    {
      v53 = v66;
      sub_100628904(&v80[*(v4 + 72) * v51], v66);
      v54 = v53[1];
      v82 = *v53;
      type metadata accessor for WeatherDescription();
      v55 = v69;
      NonEmpty.map<A>(_:)();
      *v55 = v82;
      v55[1] = v54;

      sub_10003FDF4(v53, &qword_100CCCF70);
      v83 = v52;
      v56 = v52[2];
      if (v56 >= v52[3] >> 1)
      {
        sub_1006A7A04();
        v55 = v69;
        v52 = v83;
      }

      ++v51;
      v52[2] = v56 + 1;
      sub_100628974(v55, v52 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v56);
      if (v81 == v51)
      {
        goto LABEL_30;
      }
    }

LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1006283F4(uint64_t a1, unsigned int *a2)
{
  v4 = type metadata accessor for HistoricalFact.Condition();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for HistoricalFact();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = &v36 - v17;
  result = HistoricalFacts.facts.getter();
  v19 = 0;
  v51 = *(result + 16);
  v46 = v13 + 16;
  v45 = *a2;
  v43 = v6 + 8;
  v44 = (v6 + 104);
  v41 = (v13 + 8);
  v48 = v13;
  v38 = (v13 + 32);
  v40 = _swiftEmptyArrayStorage;
  v47 = result;
  v42 = v11;
  while (1)
  {
    if (v51 == v19)
    {

      sub_100627B0C(v40);
      v35 = v34;

      return v35;
    }

    if (v19 >= *(result + 16))
    {
      break;
    }

    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v20 = *(v48 + 72);
    v52 = v19;
    v49 = v20;
    (*(v48 + 16))(v53, result + v50 + v20 * v19, v11);
    HistoricalFact.condition.getter();
    (*v44)(v9, v45, v4);
    sub_100627AB4();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v56 == v54 && v57 == v55)
    {
      v25 = sub_10001F31C();
      v11(v25);
      v26 = sub_1000105E4();
      v11(v26);

LABEL_11:
      v27 = *v38;
      v11 = v42;
      (*v38)(v39, v53, v42);
      v28 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v28;
      v58 = v28;
      v37 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1006A7A5C();
        v30 = v58;
      }

      v4 = v2;
      v31 = v52;
      v32 = v50;
      v33 = v30[2];
      if (v33 >= v30[3] >> 1)
      {
        sub_1006A7A5C();
        v31 = v52;
        v30 = v58;
      }

      v19 = v31 + 1;
      v30[2] = v33 + 1;
      v40 = v30;
      v37(v30 + v32 + v33 * v49, v39, v11);
      result = v47;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = sub_10001F31C();
      v11(v23);
      v24 = sub_1000105E4();
      v11(v24);

      if (v22)
      {
        goto LABEL_11;
      }

      v11 = v42;
      (*v41)(v53, v42);
      v19 = v52 + 1;
      v4 = v2;
      result = v47;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100628830(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalFact();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return WeatherDescription.init(historicalFact:)();
}

uint64_t sub_100628904(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCCF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100628974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalFactsCategory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006289D8()
{
  result = qword_100CCCF98;
  if (!qword_100CCCF98)
  {
    sub_10022E824(&qword_100CCCF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCF98);
  }

  return result;
}

uint64_t sub_100628A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCCF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100628ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  sub_100013188(a5, (v9 + 6));
  v9[11] = a6;
  v9[12] = a7;
  v9[13] = a8;
  sub_100013188(a9, (v9 + 14));
  return v9;
}

uint64_t sub_100628B24(char a1, uint64_t a2)
{
  v17 = a2;
  v4 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  sub_100035B30(v2 + 48, v26);
  v11 = *(v2 + 88);
  v18 = *(v2 + 96);
  sub_100035B30(v2 + 112, &v28);
  v20[0] = a1;
  v12 = v17;
  v21 = v17;
  v22 = v8;
  v23 = v7;
  v24 = v10;
  v25 = v9;
  v26[5] = v11;
  v27 = v18;
  v13 = type metadata accessor for TaskPriority();
  sub_10001B350(v6, 1, 1, v13);
  sub_1003174D4(v20, v19);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a1;
  *(v14 + 40) = v12;
  memcpy((v14 + 48), v19, 0x98uLL);
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  sub_1006C0138();

  return sub_100317530(v20);
}

uint64_t sub_100628CD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 153) = a4;
  return _swift_task_switch(sub_100628CFC, 0, 0);
}

uint64_t sub_100628CFC()
{
  sub_100008188();
  v1 = v0[4];
  v2 = v1[2];
  v0[6] = v2;
  v0[7] = 0;
  if (v2)
  {
    sub_1000161C0(v1 + 4, v1[7]);
    sub_10001C878();
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v4 = sub_10001F334(v3);

    return v5(v4);
  }

  else
  {
    sub_100003B14();

    return v7();
  }
}

uint64_t sub_100628E20()
{
  sub_100003B08();
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100629064;
  }

  else
  {
    v2 = sub_100628F30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100628F30()
{
  sub_100008188();
  v1 = v0[6];
  v2 = v0[7] + 1;
  v0[7] = v2;
  if (v2 == v1)
  {
    sub_100003B14();

    return v3();
  }

  else
  {
    sub_1000161C0((v0[4] + 40 * v2 + 32), *(v0[4] + 40 * v2 + 56));
    sub_10001C878();
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v6 = sub_10001F334();

    return v7(v6);
  }
}

uint64_t sub_100629064()
{
  v17 = v0;
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 153);
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    *(v0 + 152) = v5;
    v7 = String.init<A>(describing:)();
    v9 = sub_100078694(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v0 + 24) = v4;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220);
    v10 = String.init<A>(describing:)();
    v12 = sub_100078694(v10, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "An error occurred while performing test: %s -  %s)", v6, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 80) = objc_opt_self();
  *(v0 + 88) = type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006292CC, v14, v13);
}

uint64_t sub_1006292CC()
{
  sub_100003B08();
  v1 = *(v0 + 80);

  *(v0 + 104) = [v1 sharedApplication];

  return _swift_task_switch(sub_100629350, 0, 0);
}

uint64_t sub_100629350()
{
  v1 = *(v0 + 72);
  *(v0 + 112) = sub_1004CA118(*(v0 + 153));
  *(v0 + 120) = v2;
  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_10022C350(&qword_100CD8220);
  *(v0 + 128) = String.init<A>(describing:)();
  *(v0 + 136) = v3;
  *(v0 + 144) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100629428, v5, v4);
}

uint64_t sub_100629428()
{
  sub_100008188();
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];

  sub_100629684(v4, v3, v2, v1, v5);

  return _swift_task_switch(sub_1006294C0, 0, 0);
}

uint64_t sub_1006294C0()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_100629518()
{

  sub_100006F14(v0 + 48);

  swift_unknownObjectRelease();
  sub_100006F14(v0 + 112);
  return v0;
}

uint64_t sub_100629568()
{
  sub_100629518();

  return swift_deallocClassInstance();
}

uint64_t sub_1006295C0()
{
  sub_100008188();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1004FB038;

  return sub_100628CD8(v3, v4, v5, v7, v6, v0 + 48);
}

void sub_100629684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  [a5 failedTest:v6 withFailure:v7];
}

_BYTE *storeEnumTagSinglePayload for Mica(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1006297FC(uint64_t a1, char a2)
{
  *(v2 + 57) = a2;
  v3 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  *(v2 + 16) = v3;
  *(v2 + 24) = *(v3 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006298FC, v5, v4);
}

uint64_t sub_1006298FC()
{

  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 57);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Mica instruction: %{BOOL}d", v5, 8u);
  }

  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  (*(v9 + 104))(v7, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v8);
  v10 = sub_1001497E4(v6, v7);
  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v6, v8);
  if (v10)
  {
    v12 = *(v0 + 57);
    v13 = [objc_opt_self() standardUserDefaults];
    *(v0 + 56) = v12;
    NSUserDefaults.set<A>(_:for:)();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100629B60()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000926F8;

  return sub_1006297FC(v3, v2);
}

uint64_t sub_100629BF4()
{
  v3 = _s10PolarModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100005384();
  v5 = _s11NormalModelVMa();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100022E2C();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_10000C790();
  sub_10062C204(v1, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v9 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v10 = sub_100003940();
    sub_10062C5EC(v10, v11, v12);
    v13 = *(v1 + *(v3 + 44));

    sub_10001C894();
    v15 = v1;
  }

  else
  {
    v9 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    sub_10062C5EC(v0, v2, v16);
    v13 = *(v2 + 32);

    sub_10001F36C();
    v15 = v2;
  }

  sub_10062C594(v15, v14);
  sub_1000180EC(v0 + v9, &qword_100CA71A0);
  return v13;
}

uint64_t sub_100629D98()
{
  v3 = _s10PolarModelVMa();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100005384();
  v5 = _s11NormalModelVMa();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000046F0();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_10000C790();
  sub_10062C204(v1, v0);
  sub_1000370B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v9 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v10 = sub_100003940();
    sub_10062C5EC(v10, v11, v12);
    v13 = *v1;

    sub_10001C894();
    v15 = v1;
  }

  else
  {
    v9 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v16 = sub_10001920C();
    sub_10062C5EC(v16, v17, v18);
    v13 = *v2;

    sub_10001F36C();
    v15 = v2;
  }

  sub_10062C594(v15, v14);
  sub_1000180EC(v0 + v9, &qword_100CA71A0);
  return v13;
}

uint64_t sub_100629F24()
{
  v3 = _s10PolarModelVMa();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100005384();
  v5 = _s11NormalModelVMa();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000046F0();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_10000C790();
  sub_10062C204(v1, v0);
  sub_1000370B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v9 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v10 = sub_100003940();
    sub_10062C5EC(v10, v11, v12);
    v13 = *(v1 + 16);

    sub_10001C894();
    v15 = v1;
  }

  else
  {
    v9 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v16 = sub_10001920C();
    sub_10062C5EC(v16, v17, v18);
    v13 = *(v2 + 16);

    sub_10001F36C();
    v15 = v2;
  }

  sub_10062C594(v15, v14);
  sub_1000180EC(v0 + v9, &qword_100CA71A0);
  return v13;
}

void sub_10062A0B0()
{
  sub_100020DF0();
  sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000046F0();
  _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100005384();
  sub_1000185F0();
  v6 = sub_100031728();
  if (v6)
  {
    if (v6 != 1)
    {
      AttributedString.init()();
      goto LABEL_7;
    }

    v7 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v8 = sub_100004464();
    sub_10062C5EC(v8, v9, v10);
    type metadata accessor for AttributedString();
    sub_100003A9C();
    v11 = sub_10002FF8C();
    v12(v11);
    sub_10001C894();
    sub_10062C594(v1, v13);
    v14 = v0 + v7;
  }

  else
  {
    v15 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v16 = sub_1000114B8();
    sub_10062C5EC(v16, v17, v18);
    type metadata accessor for AttributedString();
    sub_100003A9C();
    v19 = sub_1000116EC();
    v20(v19);
    sub_10001F36C();
    sub_10062C594(v2, v21);
    v14 = v0 + v15;
  }

  sub_1000180EC(v14, &qword_100CA71A0);
LABEL_7:
  sub_1000212EC();
}

void sub_10062A280()
{
  sub_100020DF0();
  _s10PolarModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000046F0();
  _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_10000C790();
  sub_10062C204(v1, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v8 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v14 = sub_1000370B0();
    sub_10062C5EC(v14, v15, v16);

    sub_10001F36C();
    v13 = v3;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v9 = sub_10001920C();
    sub_10062C5EC(v9, v10, v11);

    sub_10001C894();
    v13 = v2;
LABEL_5:
    sub_10062C594(v13, v12);
    sub_1000180EC(v0 + v8, &qword_100CA71A0);
  }

  sub_1000212EC();
}

void sub_10062A418()
{
  sub_100020DF0();
  sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000046F0();
  _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100005384();
  sub_1000185F0();
  v6 = sub_100031728();
  if (v6)
  {
    if (v6 != 1)
    {
      static TimeZone.current.getter();
      goto LABEL_7;
    }

    v7 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v8 = sub_100004464();
    sub_10062C5EC(v8, v9, v10);
    type metadata accessor for TimeZone();
    sub_100003A9C();
    v11 = sub_10002FF8C();
    v12(v11);
    sub_10001C894();
    sub_10062C594(v1, v13);
    v14 = v0 + v7;
  }

  else
  {
    v15 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v16 = sub_1000114B8();
    sub_10062C5EC(v16, v17, v18);
    type metadata accessor for TimeZone();
    sub_100003A9C();
    v19 = sub_1000116EC();
    v20(v19);
    sub_10001F36C();
    sub_10062C594(v2, v21);
    v14 = v0 + v15;
  }

  sub_1000180EC(v14, &qword_100CA71A0);
LABEL_7:
  sub_1000212EC();
}

void sub_10062A5E8()
{
  sub_10000C778();
  v74 = v3;
  v4 = sub_10022C350(&qword_100CCD140);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v70 = &v61 - v6;
  sub_1000038CC();
  v7 = type metadata accessor for Location();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v68 = v10 - v9;
  sub_1000038CC();
  v69 = type metadata accessor for SunriseSunsetChartBackground();
  sub_1000037C4();
  v67 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v66 = v14 - v13;
  sub_1000038CC();
  v15 = type metadata accessor for Date();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v63 = v18 - v17;
  sub_1000038CC();
  v73 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v65 = v19;
  __chkstk_darwin(v20);
  sub_100003C38();
  v62 = v21 - v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  v71 = &v61 - v24;
  sub_1000038CC();
  v72 = type metadata accessor for DetailChartDataElement.ValueLabel();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = (&v61 - v32);
  v34 = _s10PolarModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000037D8();
  sub_100022E2C();
  v36 = _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_1000037D8();
  sub_10000C790();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_1000037D8();
  v41 = v40 - v39;
  v64 = v1;
  sub_10062C204(v1, v40 - v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      *v33 = 0;
      v33[1] = 0xE000000000000000;
      v61 = v26;
      v54 = v72;
      (*(v26 + 104))(v33, enum case for DetailChartDataElement.ValueLabel.text(_:), v72);
      static WeatherClock.date.getter();
      (*(v26 + 16))(v30, v33, v54);
      v55 = v71;
      DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
      Gradient.init(stops:)();
      v56 = v66;
      SunriseSunsetChartBackground.init(gradient:opacity:)();
      v57 = v65;
      (*(v65 + 16))(v62, v55, v73);
      sub_10062ABDC();
      static WeatherClock.date.getter();
      v58 = v67;
      v60 = v69;
      v59 = v70;
      (*(v67 + 16))(v70, v56, v69);
      sub_10001B350(v59, 0, 1, v60);
      SunriseSunsetDetailChartViewModel.init(chartData:sunLocation:location:twilightCivil:twilightNautical:twilightAstronomical:startDate:sunEventAccessibilityModels:chartBackground:)();
      (*(v58 + 8))(v56, v60);
      (*(v57 + 8))(v71, v73);
      (*(v61 + 8))(v33, v72);
      goto LABEL_7;
    }

    v43 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    sub_10062C5EC(v41, v2, v44);
    v45 = *(v34 + 48);
    type metadata accessor for SunriseSunsetDetailChartViewModel();
    sub_100003A9C();
    (*(v46 + 16))(v74, v2 + v45);
    sub_10001C894();
    sub_10062C594(v2, v47);
    v48 = v41 + v43;
  }

  else
  {
    v49 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    sub_10062C5EC(v41, v0, v50);
    v51 = *(v36 + 52);
    type metadata accessor for SunriseSunsetDetailChartViewModel();
    sub_100003A9C();
    (*(v52 + 16))(v74, v0 + v51);
    sub_10001F36C();
    sub_10062C594(v0, v53);
    v48 = v41 + v49;
  }

  sub_1000180EC(v48, &qword_100CA71A0);
LABEL_7:
  sub_10000536C();
}

void sub_10062ABDC()
{
  sub_100020DF0();
  sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000046F0();
  _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100005384();
  sub_1000185F0();
  v6 = sub_100031728();
  if (v6)
  {
    if (v6 != 1)
    {
      static Location.current.getter();
      goto LABEL_7;
    }

    v7 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v8 = sub_100004464();
    sub_10062C5EC(v8, v9, v10);
    type metadata accessor for Location();
    sub_100003A9C();
    v11 = sub_10002FF8C();
    v12(v11);
    sub_10001C894();
    sub_10062C594(v1, v13);
    v14 = v0 + v7;
  }

  else
  {
    v15 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v16 = sub_1000114B8();
    sub_10062C5EC(v16, v17, v18);
    type metadata accessor for Location();
    sub_100003A9C();
    v19 = sub_1000116EC();
    v20(v19);
    sub_10001F36C();
    sub_10062C594(v2, v21);
    v14 = v0 + v15;
  }

  sub_1000180EC(v14, &qword_100CA71A0);
LABEL_7:
  sub_1000212EC();
}

void sub_10062ADAC()
{
  sub_100020DF0();
  sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000046F0();
  _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100005384();
  sub_1000185F0();
  v6 = sub_100031728();
  if (v6)
  {
    if (v6 != 1)
    {
      OverviewTableViewModel.init(rows:)();
      goto LABEL_7;
    }

    v7 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v8 = sub_100004464();
    sub_10062C5EC(v8, v9, v10);
    type metadata accessor for OverviewTableViewModel();
    sub_100003A9C();
    v11 = sub_10002FF8C();
    v12(v11);
    sub_10001C894();
    sub_10062C594(v1, v13);
    v14 = v0 + v7;
  }

  else
  {
    v15 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v16 = sub_1000114B8();
    sub_10062C5EC(v16, v17, v18);
    type metadata accessor for OverviewTableViewModel();
    sub_100003A9C();
    v19 = sub_1000116EC();
    v20(v19);
    sub_10001F36C();
    sub_10062C594(v2, v21);
    v14 = v0 + v15;
  }

  sub_1000180EC(v14, &qword_100CA71A0);
LABEL_7:
  sub_1000212EC();
}

uint64_t sub_10062AF84@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100005384();
  sub_10062C204(v1, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = sub_10022C350(&qword_100CCD138);
    sub_10062C268(v1 + *(v7 + 48), a1);
    v6 = _s11NormalModelVMa;
    return sub_10062C594(v1, v6);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_10022C350(&qword_100CCD130);
    sub_10062C268(v1 + *(v5 + 48), a1);
    v6 = _s10PolarModelVMa;
    return sub_10062C594(v1, v6);
  }

  v9 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  return sub_1000061CC(v9);
}

void sub_10062B094()
{
  sub_100020DF0();
  v4 = sub_10003C698();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000046F0();
  v6 = _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100005384();
  sub_1000185F0();
  v9 = sub_100031728();
  if (v9)
  {
    if (v9 != 1)
    {
      v21 = type metadata accessor for DetailComponentContainerViewModel();
      sub_1000061CC(v21);
      goto LABEL_7;
    }

    v10 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    v11 = sub_100004464();
    sub_10062C5EC(v11, v12, v13);
    sub_10062C644(v2 + *(v4 + 64), v0, &qword_100CA7188);
    sub_10001C894();
    sub_10062C594(v2, v14);
    v15 = v1 + v10;
  }

  else
  {
    v16 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v17 = sub_1000114B8();
    sub_10062C5EC(v17, v18, v19);
    sub_10062C644(v3 + *(v6 + 72), v0, &qword_100CA7188);
    sub_10001F36C();
    sub_10062C594(v3, v20);
    v15 = v1 + v16;
  }

  sub_1000180EC(v15, &qword_100CA71A0);
LABEL_7:
  sub_1000212EC();
}

uint64_t sub_10062B248(uint64_t a1)
{
  v53 = a1;
  type metadata accessor for Date();
  sub_1000037C4();
  v51 = v4;
  v52 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v50 = v6 - v5;
  v7 = sub_10022C350(&qword_100CCD148);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v49 = v14 - v13;
  sub_1000038CC();
  type metadata accessor for DayPhase();
  sub_1000037C4();
  v54 = v16;
  v55 = v15;
  __chkstk_darwin(v15);
  sub_100005384();
  v17 = type metadata accessor for PolarType();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10000C790();
  v21 = _s10PolarModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  sub_10062C204(v56, v28 - v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    v39 = v49;
    sub_10062C5EC(v29, v49, v40);
    v41 = *(v11 + 60);
    v42 = type metadata accessor for SunEvents();
    sub_1000037E8();
    (*(v43 + 16))(v10, v39 + v41, v42);
    sub_10001B350(v10, 0, 1, v42);
    (*(v51 + 16))(v50, v53, v52);
    v32 = v38;
    DayPhase.init(sunEvents:date:elevation:)();
    v31 = DayPhase.uppercaseDescription.getter();
    (*(v54 + 8))(v2, v55);
    sub_10001F36C();
    v45 = v39;
LABEL_9:
    sub_10062C594(v45, v44);
    sub_1000180EC(v29 + v32, &qword_100CA71A0);
    return v31;
  }

  v31 = 0;
  if (EnumCaseMultiPayload != 1)
  {
    return v31;
  }

  v32 = *(sub_10022C350(&qword_100CCD130) + 48);
  sub_1000063A8();
  sub_10062C5EC(v29, v25, v33);
  (*(v19 + 16))(v1, v25 + *(v21 + 24), v17);
  v34 = sub_1000370B0();
  v36 = v35(v34);
  if (v36 == enum case for PolarType.day(_:))
  {
    v37 = &enum case for DayPhase.day(_:);
LABEL_8:
    v47 = v54;
    v46 = v55;
    (*(v54 + 104))(v2, *v37, v55);
    v31 = DayPhase.uppercaseDescription.getter();
    (*(v47 + 8))(v2, v46);
    sub_10001C894();
    v45 = v25;
    goto LABEL_9;
  }

  if (v36 == enum case for PolarType.night(_:))
  {
    v37 = &enum case for DayPhase.night(_:);
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10062B6E4()
{
  sub_10000C778();
  v26 = v2;
  _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100019C00();
  _s10PolarModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  sub_10062C204(v0, v17 - v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v25 = type metadata accessor for AttributedString();
      sub_10001B350(v26, 1, 1, v25);
      goto LABEL_7;
    }

    v20 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    sub_10062C5EC(v18, v14, v21);
    sub_10062A418();
    DaylightStringBuilder.makeLollipopPolarDaylightString(for:location:timeZone:)();
    (*(v9 + 8))(v1, v7);
    sub_10001C894();
    v23 = v14;
  }

  else
  {
    v20 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    sub_10062C5EC(v18, v6, v24);
    sub_10062A418();
    DaylightStringBuilder.makeLollipopDaylightString(for:location:sunEvents:timeZone:)();
    (*(v9 + 8))(v1, v7);
    sub_10001F36C();
    v23 = v6;
  }

  sub_10062C594(v23, v22);
  sub_1000180EC(v18 + v20, &qword_100CA71A0);
LABEL_7:
  sub_10000536C();
}

void sub_10062B964()
{
  sub_10000C778();
  v107 = v2;
  v108 = v3;
  v4 = _s10PolarModelVMa();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v105 = (v7 - v6);
  v8 = sub_1000038CC();
  v103 = type metadata accessor for ConditionDetailPlatterViewModel(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v99 = (v11 - v10);
  v102 = sub_10022C350(&qword_100CAA960);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100003C38();
  v101 = v13 - v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v17 = &v99 - v16;
  v18 = sub_10022C350(&qword_100CA71A0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_100003C38();
  v100 = (v20 - v21);
  sub_10000386C();
  __chkstk_darwin(v22);
  v104 = &v99 - v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  sub_10000386C();
  v27 = __chkstk_darwin(v26);
  v29 = (&v99 - v28);
  v30 = __chkstk_darwin(v27);
  v32 = &v99 - v31;
  __chkstk_darwin(v30);
  v34 = &v99 - v33;
  v35 = _s11NormalModelVMa();
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100019C00();
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_100003C38();
  v40 = (v38 - v39);
  __chkstk_darwin(v41);
  v43 = (&v99 - v42);
  v44 = sub_10022C350(&qword_100CCD128);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_10000C790();
  v47 = v0 + *(v46 + 56);
  sub_10062C204(v107, v0);
  sub_10062C204(v108, v47);
  sub_10001920C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v108 = v32;
    v66 = v29;
    sub_10062C204(v0, v43);
    v67 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_100005474();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000105F8();
      v50 = v1;
      sub_10062C5EC(v47, v1, v70);
      sub_10062C268(v43 + v67, v34);
      v71 = v47 + v67;
      v72 = v108;
      sub_10062C268(v71, v108);
      v73 = sub_1008226B4(v43, v1);
      sub_10001F36C();
      sub_10062C594(v43, v74);
      if (v73)
      {
        v75 = *(v102 + 48);
        v56 = v17;
        sub_10062C644(v34, v17, &qword_100CA71A0);
        v76 = v75;
        sub_10062C644(v72, v56 + v75, &qword_100CA71A0);
        v77 = v103;
        if (sub_100024D10(v56, 1, v103) == 1)
        {
          sub_1000180EC(v72, &qword_100CA71A0);
          sub_100051F5C();
          sub_10001F36C();
          sub_10062C594(v1, v78);
          v64 = v56 + v76;
          v65 = v77;
LABEL_17:
          if (sub_100024D10(v64, 1, v65) == 1)
          {
            sub_1000180EC(v56, &qword_100CA71A0);
LABEL_28:
            sub_100014B74();
            sub_10062C594(v0, v89);
            goto LABEL_29;
          }

LABEL_27:
          sub_1000180EC(v56, &qword_100CAA960);
          goto LABEL_28;
        }

        sub_10062C644(v56, v66, &qword_100CA71A0);
        if (sub_100024D10(v56 + v76, 1, v77) != 1)
        {
          sub_100013A60();
          v96 = v99;
          sub_10062C5EC(v56 + v76, v99, v97);
          sub_100954420(v66, v96);
          sub_10062C594(v96, type metadata accessor for ConditionDetailPlatterViewModel);
          sub_1000180EC(v108, &qword_100CA71A0);
          sub_1000180EC(v34, &qword_100CA71A0);
          sub_10001F36C();
          sub_10062C594(v1, v98);
          sub_10062C594(v66, type metadata accessor for ConditionDetailPlatterViewModel);
          sub_1000180EC(v56, &qword_100CA71A0);
          goto LABEL_28;
        }

        sub_1000180EC(v108, &qword_100CA71A0);
        sub_100051F5C();
        sub_10001F36C();
        sub_10062C594(v1, v88);
        sub_100069784();
        v87 = v66;
LABEL_26:
        sub_10062C594(v87, v86);
        goto LABEL_27;
      }

      sub_1000180EC(v72, &qword_100CA71A0);
      sub_100051F5C();
      v81 = _s11NormalModelVMa;
LABEL_21:
      sub_10062C594(v50, v81);
      goto LABEL_28;
    }

    sub_1000180EC(v43 + v67, &qword_100CA71A0);
    sub_10001F36C();
    v69 = v43;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10062C204(v0, v40);
    v49 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_100005474();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000063A8();
      v50 = v105;
      sub_10062C5EC(v47, v105, v51);
      v52 = v106;
      sub_10062C268(v40 + v49, v106);
      v53 = v104;
      sub_10062C268(v47 + v49, v104);
      v54 = sub_10066D5D8(v40, v50);
      sub_10001C894();
      sub_10062C594(v40, v55);
      if (v54)
      {
        v56 = v101;
        v57 = *(v102 + 48);
        sub_10062C644(v52, v101, &qword_100CA71A0);
        sub_10062C644(v53, v56 + v57, &qword_100CA71A0);
        v58 = v103;
        if (sub_100024D10(v56, 1, v103) == 1)
        {
          v59 = sub_100004464();
          sub_1000180EC(v59, v60);
          v61 = sub_100005474();
          sub_1000180EC(v61, v62);
          sub_10001C894();
          sub_10062C594(v50, v63);
          v64 = v56 + v57;
          v65 = v58;
          goto LABEL_17;
        }

        v82 = v100;
        sub_10062C644(v56, v100, &qword_100CA71A0);
        if (sub_100024D10(v56 + v57, 1, v58) != 1)
        {
          sub_100013A60();
          v90 = v56 + v57;
          v91 = v99;
          sub_10062C5EC(v90, v99, v92);
          sub_100954420(v82, v91);
          sub_10062C594(v91, type metadata accessor for ConditionDetailPlatterViewModel);
          v93 = sub_1000114B8();
          sub_1000180EC(v93, v94);
          sub_1000180EC(v106, &qword_100CA71A0);
          sub_10001C894();
          sub_10062C594(v50, v95);
          sub_10062C594(v82, type metadata accessor for ConditionDetailPlatterViewModel);
          sub_1000180EC(v56, &qword_100CA71A0);
          goto LABEL_28;
        }

        v83 = sub_100004464();
        sub_1000180EC(v83, v84);
        sub_1000180EC(v106, &qword_100CA71A0);
        sub_10001C894();
        sub_10062C594(v50, v85);
        sub_100069784();
        v87 = v82;
        goto LABEL_26;
      }

      v79 = sub_100004464();
      sub_1000180EC(v79, v80);
      sub_1000180EC(v52, &qword_100CA71A0);
      v81 = _s10PolarModelVMa;
      goto LABEL_21;
    }

    sub_1000180EC(v40 + v49, &qword_100CA71A0);
    sub_10001C894();
    v69 = v40;
LABEL_12:
    sub_10062C594(v69, v68);
    goto LABEL_13;
  }

  sub_100005474();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_28;
  }

LABEL_13:
  sub_1000180EC(v0, &qword_100CCD128);
LABEL_29:
  sub_10000536C();
}

uint64_t sub_10062C204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetDetailViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062C268(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA71A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10062C2D8()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v6 = _s10PolarModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100022E2C();
  v8 = _s11NormalModelVMa();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  type metadata accessor for SunriseSunsetDetailViewModel();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100005384();
  v14 = enum case for DetailType.sunriseSunset(_:);
  type metadata accessor for DetailType();
  sub_100003A9C();
  (*(v15 + 104))(v5, v14);
  v16 = type metadata accessor for DetailViewVisibilityTrackerModel();
  v17 = *(v16 + 20);
  sub_10062C204(v3, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      static Location.current.getter();
      sub_100014B74();
      sub_10062C594(v3, v32);
      goto LABEL_7;
    }

    sub_100014B74();
    sub_10062C594(v3, v19);
    v20 = *(sub_10022C350(&qword_100CCD130) + 48);
    sub_1000063A8();
    sub_10062C5EC(v0, v1, v21);
    v22 = *(v6 + 52);
    type metadata accessor for Location();
    sub_100003A9C();
    (*(v23 + 16))(v5 + v17, v1 + v22);
    sub_10001C894();
    sub_10062C594(v1, v24);
    v25 = v0 + v20;
  }

  else
  {
    sub_100014B74();
    sub_10062C594(v3, v26);
    v27 = *(sub_10022C350(&qword_100CCD138) + 48);
    sub_1000105F8();
    sub_10062C5EC(v0, v12, v28);
    v29 = *(v8 + 56);
    type metadata accessor for Location();
    sub_100003A9C();
    (*(v30 + 16))(v5 + v17, v12 + v29);
    sub_10001F36C();
    sub_10062C594(v12, v31);
    v25 = v0 + v27;
  }

  sub_1000180EC(v25, &qword_100CA71A0);
LABEL_7:
  v33 = *(v16 + 24);
  v34 = enum case for DetailViewOrigin.component(_:);
  type metadata accessor for DetailViewOrigin();
  sub_100003A9C();
  (*(v35 + 104))(v5 + v33, v34);
  sub_10000536C();
}

uint64_t sub_10062C594(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10062C5EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10062C644(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10022C350(a3);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_10062C69C()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v20 = type metadata accessor for MapsConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  *&v21[0] = v3;
  sub_100035B30(v1, v21 + 8);
  sub_1000161C0(v1, v1[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.maps.getter();
  (*(v14 + 8))(v18, v12);
  LOBYTE(v3) = MapsConfiguration.enableExitOvlInfo.getter();
  (*(v7 + 8))(v11, v20);
  v22 = v3 & 1;
  *(v5 + 48) = v3 & 1;
  v19 = v21[1];
  *v5 = v21[0];
  *(v5 + 16) = v19;
  *(v5 + 32) = v21[2];
  sub_100006F14(v1);
  sub_10000536C();
}

void sub_10062C84C()
{
  sub_10000C778();
  v29 = v0;
  v30 = type metadata accessor for ViewData();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100013A78();
  v28 = v4;
  sub_1000038CC();
  v27 = type metadata accessor for ViewAction();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v26 = type metadata accessor for ViewType();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for UUID();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v19 + 8))(v23, v17);
  (*(v12 + 104))(v16, enum case for ViewType.map(_:), v26);
  (*(v6 + 104))(v10, enum case for ViewAction.unknown(_:), v27);
  ViewData.init(viewSessionID:viewType:viewAction:)();
  (*(v2 + 16))(v28, v29, v30);
  v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v25 = swift_allocObject();
  (*(v2 + 32))(v25 + v24, v28, v30);
  Tracker.transaction(block:)();

  sub_10000536C();
}

uint64_t sub_10062CB40()
{
  type metadata accessor for ViewData();
  sub_10062EB2C(&qword_100CB3EE0, &type metadata accessor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapViewEvent();
  sub_10062EB2C(&qword_100CCD210, &type metadata accessor for MapViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

void sub_10062CC34()
{
  sub_10000C778();
  v67 = v1;
  sub_100017580();
  v68 = type metadata accessor for ZoomData();
  sub_1000037C4();
  v66 = v2;
  v69 = *(v3 + 64);
  __chkstk_darwin(v4);
  sub_10000FBD0();
  v73 = v5;
  __chkstk_darwin(v6);
  sub_10000E70C();
  v71 = v7;
  sub_1000038CC();
  v65 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v63 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v61 = v11 - v10;
  sub_1000038CC();
  v12 = type metadata accessor for MapOverlay();
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v64 = type metadata accessor for MapOverlayData();
  sub_1000037C4();
  v62 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v72 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  sub_10000E70C();
  v70 = v19;
  sub_1000038CC();
  v20 = type metadata accessor for EmbedState();
  sub_1000037C4();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  v59 = type metadata accessor for MapEmbedStateData();
  sub_1000037C4();
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  v57 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &v56 - v34;
  v36 = &enum case for EmbedState.fullScreen(_:);
  if (!*v0)
  {
    v36 = &enum case for EmbedState.pinned(_:);
  }

  (*(v22 + 104))(v26, *v36, v20, v33);
  v37 = v35;
  v60 = v35;
  MapEmbedStateData.init(embedState:)();
  v38 = type metadata accessor for InteractiveMapViewEvent(0);
  (*(v63 + 16))(v61, &v0[*(v38 + 20)], v65);
  sub_10062D170();
  v39 = v70;
  MapOverlayData.init(overlay:)();
  v40 = v71;
  ZoomData.init(level:)();
  v67 = *v67;
  v41 = v28;
  v42 = *(v28 + 16);
  v43 = v59;
  v42(&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v59);
  v44 = v62;
  v45 = v39;
  v46 = v64;
  (*(v62 + 16))(v72, v45, v64);
  v47 = v66;
  v48 = v40;
  v49 = v68;
  (*(v66 + 16))(v73, v48, v68);
  v50 = *(v41 + 80);
  v51 = v41;
  v58 = v41;
  v52 = (v50 + 16) & ~v50;
  v53 = (v30 + *(v44 + 80) + v52) & ~*(v44 + 80);
  v54 = (v16 + *(v47 + 80) + v53) & ~*(v47 + 80);
  v55 = swift_allocObject();
  (*(v51 + 32))(v55 + v52, v57, v43);
  (*(v44 + 32))(v55 + v53, v72, v46);
  (*(v47 + 32))(v55 + v54, v73, v49);
  Tracker.transaction(block:)();

  (*(v47 + 8))(v71, v49);
  (*(v44 + 8))(v70, v46);
  (*(v58 + 8))(v60, v43);
  sub_10000536C();
}

void sub_10062D170()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  sub_1000037C4();
  v52 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v47 - v18;
  v20 = *(v12 + 16);
  v20(&v47 - v18, v1, v10, v17);
  v21 = (*(v12 + 88))(v19, v10);
  if (v21 == enum case for WeatherMapOverlayKind.precipitation(_:))
  {
    v22 = *(v12 + 8);
    v23 = sub_100003A80();
    v22(v23);
    v24 = enum case for MapOverlay.precipitation(_:);
    type metadata accessor for MapOverlay();
    sub_1000037E8();
    (*(v25 + 104))(v3, v24);
    (v22)(v19, v10);
    goto LABEL_10;
  }

  if (v21 == enum case for WeatherMapOverlayKind.airQuality(_:))
  {
    v26 = sub_100003A80();
    v27(v26);
    v28 = &enum case for MapOverlay.airQuality(_:);
LABEL_9:
    v33 = *v28;
    type metadata accessor for MapOverlay();
    sub_1000037E8();
    (*(v34 + 104))(v3, v33);
    goto LABEL_10;
  }

  if (v21 == enum case for WeatherMapOverlayKind.temperature(_:))
  {
    v29 = sub_100003A80();
    v30(v29);
    v28 = &enum case for MapOverlay.temperature(_:);
    goto LABEL_9;
  }

  if (v21 == LODWORD(enum case for WeatherMapOverlayKind.wind(_:)[0]))
  {
    v31 = sub_100003A80();
    v32(v31);
    v28 = &enum case for MapOverlay.wind(_:);
    goto LABEL_9;
  }

  static Logger.map.getter();
  (v20)(v15, v1, v10);
  v35 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v51))
  {
    v20 = swift_slowAlloc();
    v50 = v20;
    v49 = swift_slowAlloc();
    v53 = v49;
    *v20 = 136446210;
    sub_10000470C();
    sub_10062EB2C(v36, v37);
    v48 = v35;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    sub_100017B94();
    (v20)(v15, v10);
    v40 = sub_100078694(v47, v39, &v53);

    v41 = v50;
    *(v50 + 4) = v40;
    v42 = v48;
    _os_log_impl(&_mh_execute_header, v48, v51, "Map overlay kind unknown to InteractiveMapTracker: %{public}s", v41, 0xCu);
    sub_100006F14(v49);
    sub_100003884();
    sub_100003884();

    v43 = v1;
  }

  else
  {

    sub_100017B94();
    v44 = sub_100003A80();
    (v20)(v44);
    v43 = v15;
  }

  (v20)(v43, v10);
  (*(v52 + 8))(v9, v4);
  v45 = enum case for MapOverlay.precipitation(_:);
  type metadata accessor for MapOverlay();
  sub_1000037E8();
  (*(v46 + 104))(v3, v45);
  (v20)(v19, v10);
LABEL_10:
  sub_10000536C();
}

uint64_t sub_10062D60C()
{
  type metadata accessor for MapEmbedStateData();
  sub_10062EB2C(&qword_100CCD218, &type metadata accessor for MapEmbedStateData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapOverlayData();
  sub_10062EB2C(&qword_100CCD158, &type metadata accessor for MapOverlayData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for ZoomData();
  sub_10062EB2C(&qword_100CCD220, &type metadata accessor for ZoomData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapViewEvent();
  sub_10062EB2C(&qword_100CCD210, &type metadata accessor for MapViewEvent);
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1003C1574(v1);
}

void sub_10062D808()
{
  sub_10000C778();
  v140 = v0;
  v121 = v1;
  v3 = v2;
  v4 = type metadata accessor for ViewData();
  sub_1000037C4();
  v125 = v5;
  __chkstk_darwin(v6);
  sub_100013A78();
  v123 = v8;
  v124 = v7;
  sub_1000038CC();
  v126 = type metadata accessor for MapStallStatisticsData();
  sub_1000037C4();
  v138 = v9;
  __chkstk_darwin(v10);
  sub_10000FBD0();
  v136 = v11;
  v122 = v12;
  __chkstk_darwin(v13);
  sub_10000E70C();
  v137 = v14;
  sub_1000038CC();
  v117 = type metadata accessor for WeatherMapSessionStatistics.Timing();
  sub_1000037C4();
  v116 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v115 = v18 - v17;
  sub_1000038CC();
  v114 = type metadata accessor for WeatherMapSessionStatistics.ResponseCounters();
  sub_1000037C4();
  v113 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v111 = v22 - v21;
  sub_1000038CC();
  v135 = type metadata accessor for MapSessionStatisticsData();
  sub_1000037C4();
  v120 = v23;
  __chkstk_darwin(v24);
  sub_10000FBD0();
  v133 = v25;
  v118 = v26;
  __chkstk_darwin(v27);
  sub_10000E70C();
  v134 = v28;
  sub_1000038CC();
  v129 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v110 = v29;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v109 = v32 - v31;
  sub_1000038CC();
  v33 = type metadata accessor for MapOverlay();
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_1000037D8();
  v108 = v36 - v35;
  sub_1000038CC();
  v132 = type metadata accessor for MapOverlayData();
  sub_1000037C4();
  v119 = v37;
  __chkstk_darwin(v38);
  sub_10000FBD0();
  v131 = v39;
  v112 = v40;
  __chkstk_darwin(v41);
  sub_10000E70C();
  v139 = v42;
  v43 = sub_1000038CC();
  v44 = type metadata accessor for WeatherMapExitOverlayEvent(v43);
  sub_1000037E8();
  __chkstk_darwin(v45);
  v47 = &v100[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v50 = &v100[-v49];
  __chkstk_darwin(v51);
  v53 = &v100[-v52];
  type metadata accessor for Logger();
  sub_1000037C4();
  v127 = v55;
  v128 = v54;
  __chkstk_darwin(v54);
  sub_1000037D8();
  v58 = v57 - v56;
  v59 = type metadata accessor for WeatherMapSessionStatistics.RequestCounters();
  sub_1000037C4();
  v61 = v60;
  __chkstk_darwin(v62);
  sub_1000037D8();
  v65 = v64 - v63;
  v130 = v44;
  v107 = v3 + *(v44 + 20);
  WeatherMapSessionStatistics.requestCounters.getter();
  v66 = WeatherMapSessionStatistics.RequestCounters.requests.getter();
  v67 = *(v61 + 8);
  v106 = v59;
  v105 = v67;
  v67(v65, v59);
  if (v66)
  {
    v104 = v4;
    static Logger.mapNetwork.getter();
    sub_10062E388(v3, v53);
    sub_10062E388(v3, v50);
    v68 = sub_100003A80();
    sub_10062E388(v68, v69);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    v72 = os_log_type_enabled(v70, v71);
    v103 = v3;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v141 = v102;
      *v73 = 136315650;
      sub_10000470C();
      sub_10062EB2C(v74, v75);
      v101 = v71;
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10062E3EC(v53);
      v76 = sub_100074D08();

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      WeatherMapSessionStatistics.description()();
      sub_10062E3EC(v50);
      v77 = sub_100074D08();

      *(v73 + 14) = v77;
      *(v73 + 22) = 2080;
      WeatherMapStallStatistics.description()();
      sub_10062E3EC(v47);
      v78 = sub_100074D08();

      *(v73 + 24) = v78;
      _os_log_impl(&_mh_execute_header, v70, v101, "Session stats: Removing overlay %s\n%s\n%s", v73, 0x20u);
      swift_arrayDestroy();
      sub_100003884();
      sub_100003884();
    }

    else
    {

      sub_10062E3EC(v47);
      sub_10062E3EC(v50);
      sub_10062E3EC(v53);
    }

    (*(v127 + 8))(v58, v128);
    if (*(v140 + 48) == 1)
    {
      (*(v110 + 16))(v109, v103, v129);
      sub_10062D170();
      MapOverlayData.init(overlay:)();
      WeatherMapSessionStatistics.requestCounters.getter();
      v129 = WeatherMapSessionStatistics.RequestCounters.requests.getter();
      v105(v65, v106);
      v79 = v111;
      WeatherMapSessionStatistics.responseCounters.getter();
      WeatherMapSessionStatistics.ResponseCounters.success.getter();
      v80 = *(v113 + 8);
      v81 = v114;
      v80(v79, v114);
      WeatherMapSessionStatistics.responseCounters.getter();
      WeatherMapSessionStatistics.ResponseCounters.cancelled.getter();
      v80(v79, v81);
      WeatherMapSessionStatistics.responseCounters.getter();
      WeatherMapSessionStatistics.ResponseCounters.error.getter();
      v80(v79, v81);
      v82 = v115;
      WeatherMapSessionStatistics.timing.getter();
      WeatherMapSessionStatistics.Timing.avgResponseTimeMs.getter();
      (*(v116 + 8))(v82, v117);
      v83 = v134;
      MapSessionStatisticsData.init(totalCalls:successfulCalls:cancelledCalls:errorCalls:avgTime:)();
      WeatherMapStallStatistics.activeTasksCount.getter();
      WeatherMapStallStatistics.tasksStalled.getter();
      WeatherMapStallStatistics.avgStalledTimeMs.getter();
      v84 = v137;
      MapStallStatisticsData.init(activeTaskCount:tasksStalled:avgTimeTaskStalled:)();
      v140 = *v140;
      v85 = v119;
      (*(v119 + 16))(v131, v139, v132);
      v86 = v124;
      v87 = v125;
      (*(v125 + 16))(v124, v121, v104);
      v88 = v120;
      (*(v120 + 16))(v133, v83, v135);
      v89 = v138;
      v90 = v126;
      (*(v138 + 16))(v136, v84, v126);
      v91 = (*(v85 + 80) + 16) & ~*(v85 + 80);
      v92 = (v112 + *(v87 + 80) + v91) & ~*(v87 + 80);
      v93 = (v123 + *(v88 + 80) + v92) & ~*(v88 + 80);
      v94 = (v118 + *(v89 + 80) + v93) & ~*(v89 + 80);
      v95 = swift_allocObject();
      v96 = v95 + v91;
      v97 = v132;
      (*(v85 + 32))(v96, v131, v132);
      (*(v87 + 32))(v95 + v92, v86, v104);
      v98 = v135;
      (*(v88 + 32))(v95 + v93, v133, v135);
      v99 = v138;
      (*(v138 + 32))(v95 + v94, v136, v90);
      Tracker.transaction(block:)();

      (*(v99 + 8))(v137, v90);
      (*(v88 + 8))(v134, v98);
      (*(v85 + 8))(v139, v97);
    }
  }

  sub_10000536C();
}

uint64_t sub_10062E388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapExitOverlayEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062E3EC(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapExitOverlayEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10062E448()
{
  type metadata accessor for MapOverlayData();
  sub_10062EB2C(&qword_100CCD158, &type metadata accessor for MapOverlayData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for ViewData();
  sub_10062EB2C(&qword_100CB3EE0, &type metadata accessor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapSessionStatisticsData();
  sub_10062EB2C(&qword_100CCD160, &type metadata accessor for MapSessionStatisticsData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapStallStatisticsData();
  sub_10062EB2C(&qword_100CCD168, &type metadata accessor for MapStallStatisticsData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for MapExitOverlayEvent();
  sub_10062EB2C(&qword_100CCD170, &type metadata accessor for MapExitOverlayEvent);
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1003C1574(v1);
}

uint64_t sub_10062E6AC()
{
  sub_100017580();
  v0 = type metadata accessor for MapOverlayData();
  sub_100003AE8(v0);
  v1 = type metadata accessor for ViewData();
  sub_100003AE8(v1);
  v2 = type metadata accessor for MapSessionStatisticsData();
  sub_100003AE8(v2);
  v3 = type metadata accessor for MapStallStatisticsData();
  sub_100003810(v3);

  return sub_10062E448();
}

uint64_t sub_10062E848()
{
  result = type metadata accessor for WeatherMapOverlayKind();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherMapSessionStatistics();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for WeatherMapStallStatistics();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10062E8E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10062E924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10062E984()
{
  sub_100017580();
  v0 = type metadata accessor for ViewData();
  sub_100003810(v0);

  return sub_10062CB40();
}

uint64_t sub_10062EA0C()
{
  sub_100017580();
  v0 = type metadata accessor for MapEmbedStateData();
  sub_100003AE8(v0);
  v1 = type metadata accessor for MapOverlayData();
  sub_100003AE8(v1);
  v2 = type metadata accessor for ZoomData();
  sub_100003810(v2);

  return sub_10062D60C();
}

uint64_t sub_10062EB2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10062EB9C()
{
  result = type metadata accessor for WeatherMapOverlayKind();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10062EC20()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10062EC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v66 = a1;
  type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v63 = v7;
  v64 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v62 = v9 - v8;
  v10 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v10 - 8);
  v59 = v50 - v11;
  v58 = type metadata accessor for WeatherFormatScaling();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  sub_1000037C4();
  v60 = v26;
  v61 = v25;
  __chkstk_darwin(v25);
  sub_1000037D8();
  v57 = v28 - v27;
  if (a3)
  {
    v29 = sub_10062F158(a2);
  }

  else
  {
    v29 = sub_10062F6B0(a2);
  }

  v55 = v30;
  v56 = v29;
  sub_10022C350(&qword_100CA5408);
  v31 = type metadata accessor for WeatherDescription.Argument();
  v53 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v54 = v35;
  *(v35 + 16) = xmmword_100A2D320;
  v36 = (v35 + v34);
  v50[1] = sub_10022C350(&qword_100CAB938);
  Measurement.value.getter();
  *v36 = Double.pluralRuleInteger.getter();
  v52 = *(v32 + 104);
  (v52)(v36, enum case for WeatherDescription.Argument.pluralRule(_:), v31);
  v51 = (v36 + v33);
  (*(v20 + 104))(v24, enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:), v18);
  v37 = v58;
  (*(v13 + 104))(v17, enum case for WeatherFormatScaling.asProvidedButRounded(_:), v58);
  v38 = type metadata accessor for Locale();
  v39 = v59;
  sub_10001B350(v59, 1, 1, v38);
  static Set<>.full.getter();
  v40 = v57;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1001235D8(v39);
  (*(v13 + 8))(v17, v37);
  (*(v20 + 8))(v24, v18);
  v41 = v62;
  v42 = v63;
  v43 = v64;
  (*(v63 + 104))(v62, enum case for WeatherFormatPlaceholder.none(_:), v64);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100123738();
  v44 = v61;
  v45 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v47 = v46;

  (*(v42 + 8))(v41, v43);
  (*(v60 + 8))(v40, v44);
  v48 = v51;
  *v51 = v45;
  v48[1] = v47;
  v52();
  return WeatherDescription.init(format:_:)();
}

uint64_t sub_10062F158(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = 0x8000000100AD9220;
      v3 = [objc_opt_self() mainBundle];
      goto LABEL_6;
    case 2:
      v5 = 0x8000000100AD9130;
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_16;
    case 3:
      v12 = 0x8000000100AD9040;
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_9;
    case 4:
      v12 = 0x8000000100AD8F50;
      v13 = [objc_opt_self() mainBundle];
LABEL_9:
      v7 = v13;
      v8 = 0xD000000000000047;
      v25 = v12;
      v9 = v11 | 0x8000000000000000;
      v10 = 0xD000000000000095;
      break;
    case 5:
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000045;
      v25 = 0x8000000100AD8E60;
      v9 = 0x8000000100AD8E10;
      v10 = 0xD000000000000091;
      break;
    case 6:
      v15 = 0x8000000100AD8D70;
      v16 = [objc_opt_self() mainBundle];
      goto LABEL_14;
    case 7:
      v15 = 0x8000000100AD8C80;
      v16 = [objc_opt_self() mainBundle];
LABEL_14:
      v7 = v16;
      v8 = 0xD000000000000046;
      v25 = v15;
      v9 = v14 | 0x8000000000000000;
      v10 = 0xD000000000000093;
      break;
    case 8:
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000048;
      v25 = 0x8000000100AD8B90;
      v9 = 0x8000000100AD8B40;
      v10 = 0xD000000000000097;
      break;
    case 9:
      v7 = [objc_opt_self() mainBundle];
      v25 = 0x8000000100AD8AA0;
      v8 = 0xD00000000000004BLL;
      v9 = 0x8000000100AD8A50;
      v10 = 0xD00000000000009DLL;
      break;
    case 10:
      v2 = 0x8000000100AD89B0;
      v3 = [objc_opt_self() mainBundle];
LABEL_6:
      v7 = v3;
      v8 = 0xD000000000000049;
      v25 = v2;
      v9 = v1 | 0x8000000000000000;
      v10 = 0xD000000000000099;
      break;
    case 11:
      v5 = 0x8000000100AD88C0;
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_16;
    case 12:
      v5 = 0x8000000100AD87D0;
      v6 = [objc_opt_self() mainBundle];
LABEL_16:
      v7 = v6;
      v25 = v5;
      v9 = v4 | 0x8000000000000000;
      v10 = 0xD00000000000009BLL;
      v8 = 0xD00000000000004ALL;
      break;
    default:
      if (qword_100CA2728 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000703C(v18, qword_100D90BD0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v19, v20, "Encountered an unexpected monthOfYear while building the monthly average summary string. monthOfYear=%ld", v21, 0xCu);
      }

      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000037;
      v25 = 0x8000000100AD86A0;
      v9 = 0x8000000100AD8660;
      v10 = 0xD0000000000000DELL;
      break;
  }

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v7, v22, *&v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10062F6B0(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = "tion_summary_february";
      v2 = 0x8000000100AD9220;
      v3 = [objc_opt_self() mainBundle];
      goto LABEL_6;
    case 2:
      v4 = "tion_summary_march";
      v5 = 0x8000000100AD9130;
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_16;
    case 3:
      v11 = "tion_summary_april";
      v12 = 0x8000000100AD9040;
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_9;
    case 4:
      v11 = "tion_summary_may";
      v12 = 0x8000000100AD8F50;
      v13 = [objc_opt_self() mainBundle];
LABEL_9:
      v7 = v13;
      v8 = 0xD000000000000032;
      v25 = v12;
      v9 = v11 | 0x8000000000000000;
      v10 = 0xD000000000000095;
      break;
    case 5:
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000030;
      v25 = 0x8000000100AD8E60;
      v9 = 0x8000000100AD9480;
      v10 = 0xD000000000000091;
      break;
    case 6:
      v14 = "tion_summary_july";
      v15 = 0x8000000100AD8D70;
      v16 = [objc_opt_self() mainBundle];
      goto LABEL_14;
    case 7:
      v14 = "tion_summary_august";
      v15 = 0x8000000100AD8C80;
      v16 = [objc_opt_self() mainBundle];
LABEL_14:
      v7 = v16;
      v8 = 0xD000000000000031;
      v25 = v15;
      v9 = v14 | 0x8000000000000000;
      v10 = 0xD000000000000093;
      break;
    case 8:
      v7 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000033;
      v25 = 0x8000000100AD8B90;
      v9 = 0x8000000100AD93C0;
      v10 = 0xD000000000000097;
      break;
    case 9:
      v7 = [objc_opt_self() mainBundle];
      v25 = 0x8000000100AD8AA0;
      v8 = 0xD000000000000036;
      v9 = 0x8000000100AD9380;
      v10 = 0xD00000000000009DLL;
      break;
    case 10:
      v1 = "tion_summary_november";
      v2 = 0x8000000100AD89B0;
      v3 = [objc_opt_self() mainBundle];
LABEL_6:
      v7 = v3;
      v8 = 0xD000000000000034;
      v25 = v2;
      v9 = v1 | 0x8000000000000000;
      v10 = 0xD000000000000099;
      break;
    case 11:
      v4 = "tion_summary_december";
      v5 = 0x8000000100AD88C0;
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_16;
    case 12:
      v5 = 0x8000000100AD87D0;
      v6 = [objc_opt_self() mainBundle];
LABEL_16:
      v7 = v6;
      v25 = v5;
      v9 = v4 | 0x8000000000000000;
      v10 = 0xD00000000000009BLL;
      v8 = 0xD000000000000035;
      break;
    default:
      if (qword_100CA2728 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000703C(v18, qword_100D90BD0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v19, v20, "Encountered an unexpected monthOfYear while building the monthly average summary string. monthOfYear=%ld", v21, 0xCu);
      }

      v7 = [objc_opt_self() mainBundle];
      v25 = 0x8000000100AD86A0;
      v8 = 0xD000000000000037;
      v9 = 0x8000000100AD8660;
      v10 = 0xD0000000000000DELL;
      break;
  }

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v7, v22, *&v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10062FC7C()
{
  v0 = type metadata accessor for AirQualityDetailViewModel.Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_10062FCFC()
{
  sub_10062FF08();
  if (v0 <= 0x3F)
  {
    sub_10013CA40(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10062FFA4(319, &qword_100CCD470, &type metadata accessor for AirPollutant);
      if (v2 <= 0x3F)
      {
        sub_10013CA40(319, &qword_100CCD478, &type metadata for AirPollutantTableViewModel, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10062FFA4(319, &qword_100CB8CB8, sub_10062FF60);
          if (v4 <= 0x3F)
          {
            sub_10013CA40(319, &unk_100CCD480, &type metadata for Gradient.Stop, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ConditionDetailMapViewModel();
              if (v6 <= 0x3F)
              {
                sub_10062FFA4(319, &qword_100CAA070, type metadata accessor for DetailComponentContainerViewModel);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10062FF08()
{
  if (!qword_100CCD468)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCD468);
    }
  }
}

unint64_t sub_10062FF60()
{
  result = qword_100CB8CC0;
  if (!qword_100CB8CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB8CC0);
  }

  return result;
}

void sub_10062FFA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100630008()
{
  sub_10002D5A4();
  v0 = StringProtocol.components<A>(separatedBy:)();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1006300A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for AirQualityDetailViewModel(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CCD500);
  sub_100003810(v14);
  sub_100003828();
  v16 = __chkstk_darwin(v15);
  v18 = &v23 - v17;
  v19 = *(v16 + 56);
  sub_100631ADC(a1, &v23 - v17);
  sub_100631ADC(a2, &v18[v19]);
  sub_1000038B4(v18, 1, v4);
  if (!v21)
  {
    sub_100631ADC(v18, v13);
    sub_1000038B4(&v18[v19], 1, v4);
    if (!v21)
    {
      sub_100631B98(&v18[v19], v8, type metadata accessor for AirQualityDetailViewModel.Model);
      v20 = sub_100631198(v13, v8);
      sub_100631B40(v8, type metadata accessor for AirQualityDetailViewModel.Model);
      sub_100631B40(v13, type metadata accessor for AirQualityDetailViewModel.Model);
      sub_100008B34();
      return v20 & 1;
    }

    sub_100631B40(v13, type metadata accessor for AirQualityDetailViewModel.Model);
LABEL_9:
    sub_1000180EC(v18, &qword_100CCD500);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000038B4(&v18[v19], 1, v4);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_100008B34();
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1006302A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6174756C6C6F70 && a2 == 0xEE00656C62615474)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100630378(char a1)
{
  if (a1)
  {
    return 0x6E6174756C6C6F70;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_1006303B4(void *a1, int a2)
{
  v22 = a2;
  sub_10022C350(&qword_100CCD560);
  sub_1000037C4();
  v20 = v6;
  v21 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CB4();
  v19 = sub_10022C350(&qword_100CCD568);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  v11 = sub_10022C350(&qword_100CCD570);
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v19 - v15;
  sub_1000161C0(a1, a1[3]);
  sub_100631C40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v13 + 8);
  if (v22)
  {
    v24 = 1;
    sub_100631C94();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v2, v21);
  }

  else
  {
    v23 = 0;
    sub_100631CE8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v9 + 8))(v3, v19);
  }

  return (*v17)(v16, v11);
}

uint64_t sub_100630630(uint64_t a1)
{
  v39 = sub_10022C350(&qword_100CCD530);
  sub_1000037C4();
  v37 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = sub_10022C350(&qword_100CCD538);
  sub_1000037C4();
  v36 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  v11 = sub_10022C350(&qword_100CCD540);
  sub_1000037C4();
  v38 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003CB4();
  sub_1000161C0(a1, *(a1 + 24));
  sub_100631C40();
  v14 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_8;
  }

  v34 = v8;
  v35 = v2;
  v40 = a1;
  v15 = v39;
  v16 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v16, 0);
  if (v19 == v20 >> 1)
  {
LABEL_7:
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    sub_10022C350(&qword_100CA7610);
    *v27 = &type metadata for AirQualityDetailAnchor;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v1, v11);
    a1 = v40;
LABEL_8:
    sub_100006F14(a1);
    return a1;
  }

  v33 = 0;
  if (v19 < (v20 >> 1))
  {
    a1 = *(v18 + v19);
    sub_100618E7C(v19 + 1);
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      if (a1)
      {
        LODWORD(v36) = a1;
        v42 = 1;
        sub_100631C94();
        sub_1000059C4();
        swift_unknownObjectRelease();
        (*(v37 + 8))(v7, v15);
        v29 = sub_100014474();
        v30(v29);
        a1 = v36;
      }

      else
      {
        v41 = 0;
        sub_100631CE8();
        v28 = v35;
        sub_1000059C4();
        swift_unknownObjectRelease();
        (*(v36 + 8))(v28, v34);
        v31 = sub_100014474();
        v32(v31);
      }

      sub_100006F14(v40);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100630AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006302A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100630AD4(uint64_t a1)
{
  v2 = sub_100631C40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100630B10(uint64_t a1)
{
  v2 = sub_100631C40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100630B4C(uint64_t a1)
{
  v2 = sub_100631C94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100630B88(uint64_t a1)
{
  v2 = sub_100631C94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100630BC4(uint64_t a1)
{
  v2 = sub_100631CE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100630C00(uint64_t a1)
{
  v2 = sub_100631CE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100630C3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100630630(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100630C8C()
{
  result = qword_100CCD4F0;
  if (!qword_100CCD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD4F0);
  }

  return result;
}

uint64_t sub_100630CE0@<X0>(uint64_t a1@<X8>)
{
  v38 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v36 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v35 = v7 - v6;
  v8 = sub_10022C350(&qword_100CB8BD0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v37 = &v34 - v10;
  v11 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10001634C();
  v13 = sub_10022C350(&qword_100CB8BC8);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for AttributeContainer();
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_1000037D8();

  AttributeContainer.init()();
  v39 = a1;
  AttributedString.init(_:attributes:)();
  v22 = v1[1];
  v40 = *v1;
  v41 = v22;
  v42 = 32;
  v43 = 0xE100000000000000;
  sub_10002D5A4();
  v23 = StringProtocol.components<A>(separatedBy:)();
  if (!v23[2])
  {
  }

  v25 = v23[4];
  v24 = v23[5];

  v40 = v25;
  v41 = v24;
  v26 = type metadata accessor for Locale();
  sub_10001B350(v2, 1, 1, v26);
  sub_100631BF8(&qword_100CB8C00, &type metadata accessor for AttributedString);
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_1000180EC(v2, &qword_100CAA9F0);
  sub_100035AD0(v19, v16, &qword_100CB8BC8);
  sub_1000038B4(v16, 1, v8);
  if (v27)
  {
    sub_1000180EC(v19, &qword_100CB8BC8);

    v33 = v16;
  }

  else
  {
    v29 = v37;
    sub_1006320A0(v16, v37);
    String.lowercased()();

    AttributeContainer.init()();
    v30 = v35;
    AttributedString.init(_:attributes:)();
    sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0);
    v31 = v38;
    AttributedString.replaceSubrange<A, B>(_:with:)();
    (*(v36 + 8))(v30, v31);
    v32 = AttributedString.subscript.modify();
    LOBYTE(v42) = 1;
    sub_10042F808();
    AttributedSubstring.subscript.setter();
    v32(&v40, 0);
    sub_1000180EC(v29, &qword_100CB8BD0);
    v33 = v19;
  }

  return sub_1000180EC(v33, &qword_100CB8BC8);
}

uint64_t sub_100631198(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DetailComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v75 = (v8 - v7);
  v9 = sub_10022C350(&qword_100CA7188);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100003CB4();
  v11 = sub_10022C350(&qword_100CAA958);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v76 = &v72 - v13;
  v14 = type metadata accessor for AirPollutant();
  sub_1000037C4();
  v77 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = sub_10022C350(&qword_100CB8BE0);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  v24 = sub_10022C350(&qword_100CCD508);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v29 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v30 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v31 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_57;
  }

  v32 = *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80);
  if (!v32 || *(a1 + 88) != *(a2 + 88))
  {
    goto LABEL_57;
  }

  v33 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v34 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
  if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_57;
  }

  v35 = *(a1 + 136);
  v36 = *(a2 + 136);
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_57;
    }

    v37 = *(a1 + 128) == *(a2 + 128) && v35 == v36;
    if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v36)
  {
    goto LABEL_57;
  }

  v38 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  v39 = *(v38 + 56);
  v73 = v38;
  v74 = v39;
  v40 = *(v24 + 48);
  sub_100035AD0(a1 + v39, v27, &qword_100CB8BE0);
  v41 = a2 + v74;
  v74 = v40;
  sub_100035AD0(v41, &v27[v40], &qword_100CB8BE0);
  sub_1000038B4(v27, 1, v14);
  if (v28)
  {
    sub_1000038B4(&v27[v74], 1, v14);
    if (v28)
    {
      sub_1000180EC(v27, &qword_100CB8BE0);
      goto LABEL_60;
    }

LABEL_55:
    v43 = &qword_100CCD508;
    v44 = v27;
LABEL_56:
    sub_1000180EC(v44, v43);
    goto LABEL_57;
  }

  sub_100035AD0(v27, v23, &qword_100CB8BE0);
  sub_1000038B4(&v27[v74], 1, v14);
  if (v42)
  {
    (*(v77 + 8))(v23, v14);
    goto LABEL_55;
  }

  v47 = v77;
  (*(v77 + 32))(v19, &v27[v74], v14);
  sub_100631BF8(&qword_100CCD510, &type metadata accessor for AirPollutant);
  LODWORD(v74) = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v47 + 8);
  v48(v19, v14);
  v48(v23, v14);
  sub_1000180EC(v27, &qword_100CB8BE0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_60:
  v49 = v73;
  v50 = v73[15];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_57;
    }

    v55 = *v51 == *v53 && v52 == v54;
    if (!v55 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_57;
    }

    sub_1009EA9FC();
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v54)
  {
    goto LABEL_57;
  }

  v58 = v49[16];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59)
  {
    if (!v60)
    {
      goto LABEL_57;
    }

    sub_10062FF60();
    v61 = v60;
    v62 = v59;
    v63 = static NSObject.== infix(_:_:)();

    if ((v63 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v60)
  {
    goto LABEL_57;
  }

  if ((sub_1009EE6AC(*(a1 + v49[17]), *(a2 + v49[17])) & 1) == 0 || (sub_1007EDCA4((a1 + v49[18]), (a2 + v49[18])) & 1) == 0)
  {
    goto LABEL_57;
  }

  v64 = v49[19];
  v65 = *(v11 + 48);
  v66 = v76;
  sub_100035AD0(a1 + v64, v76, &qword_100CA7188);
  sub_100035AD0(a2 + v64, v66 + v65, &qword_100CA7188);
  sub_1000038B4(v66, 1, v5);
  if (v28)
  {
    sub_1000038B4(v66 + v65, 1, v5);
    if (v28)
    {
      sub_1000180EC(v66, &qword_100CA7188);
LABEL_87:
      v45 = *(a1 + v73[20]) ^ *(a2 + v73[20]) ^ 1;
      return v45 & 1;
    }

    goto LABEL_85;
  }

  sub_100035AD0(v66, v2, &qword_100CA7188);
  sub_1000038B4(v66 + v65, 1, v5);
  if (v67)
  {
    sub_100631B40(v2, type metadata accessor for DetailComponentContainerViewModel);
    v66 = v76;
LABEL_85:
    v43 = &qword_100CAA958;
    v44 = v66;
    goto LABEL_56;
  }

  v68 = v76;
  v69 = v76 + v65;
  v70 = v75;
  sub_100631B98(v69, v75, type metadata accessor for DetailComponentContainerViewModel);
  v71 = sub_100428860(v2, v70);
  sub_100631B40(v70, type metadata accessor for DetailComponentContainerViewModel);
  sub_100631B40(v2, type metadata accessor for DetailComponentContainerViewModel);
  sub_1000180EC(v68, &qword_100CA7188);
  if (v71)
  {
    goto LABEL_87;
  }

LABEL_57:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_10063192C@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCD518);
  a1[4] = sub_100006F64(&qword_100CCD520, &qword_100CCD518);
  sub_100042FB0(a1);
  type metadata accessor for AirQualityDetailViewModel(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100631A28()
{
  sub_100631BF8(&qword_100CCD528, type metadata accessor for AirQualityDetailViewModel);

  return ShortDescribable.description.getter();
}

uint64_t sub_100631ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityDetailViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100631B40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100631B98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100631BF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100631C40()
{
  result = qword_100CCD548;
  if (!qword_100CCD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD548);
  }

  return result;
}

unint64_t sub_100631C94()
{
  result = qword_100CCD550;
  if (!qword_100CCD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD550);
  }

  return result;
}

unint64_t sub_100631CE8()
{
  result = qword_100CCD558;
  if (!qword_100CCD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD558);
  }

  return result;
}

_BYTE *sub_100631D3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100631E3C()
{
  result = qword_100CCD578;
  if (!qword_100CCD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD578);
  }

  return result;
}

unint64_t sub_100631E94()
{
  result = qword_100CCD580;
  if (!qword_100CCD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD580);
  }

  return result;
}

unint64_t sub_100631EEC()
{
  result = qword_100CCD588;
  if (!qword_100CCD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD588);
  }

  return result;
}

unint64_t sub_100631F44()
{
  result = qword_100CCD590;
  if (!qword_100CCD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD590);
  }

  return result;
}

unint64_t sub_100631F9C()
{
  result = qword_100CCD598;
  if (!qword_100CCD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD598);
  }

  return result;
}

unint64_t sub_100631FF4()
{
  result = qword_100CCD5A0;
  if (!qword_100CCD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD5A0);
  }

  return result;
}

unint64_t sub_10063204C()
{
  result = qword_100CCD5A8[0];
  if (!qword_100CCD5A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CCD5A8);
  }

  return result;
}

uint64_t sub_1006320A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB8BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100632114()
{
  sub_100081BC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailViewVisibilityTrackerModel();
    if (v1 <= 0x3F)
    {
      sub_1003E7F34();
      if (v2 <= 0x3F)
      {
        sub_100007760();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1006321F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(type metadata accessor for PresentationMode() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v44 = v6;
  v43 = type metadata accessor for DetailType();
  v7 = *(v43 - 8);
  v8 = *(v7 + 84);
  v41 = type metadata accessor for Location();
  v9 = *(v41 - 8);
  v42 = *(v9 + 84);
  if (v42 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = type metadata accessor for DetailViewOrigin();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  if (v14 <= v17)
  {
    v18 = *(v16 + 84);
  }

  else
  {
    v18 = v14;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v9 + 80);
  v21 = *(v12 + 80);
  v22 = *(v16 + 80);
  v23 = *(v16 + 64);
  if (!a2)
  {
    return 0;
  }

  v24 = (v20 | *(v7 + 80) | v21);
  v25 = *(v12 + 80);
  v26 = v44 + v24 + 1;
  v27 = *(v7 + 64) + v20;
  v28 = *(v9 + 64) + v21;
  v29 = ((v28 + (v27 & ~*(v9 + 80))) & ~v21) + *(*(v11 - 8) + 64);
  if (a2 <= v19)
  {
    goto LABEL_36;
  }

  v30 = ((v22 + ((((((v29 + (v26 & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v22) + v23;
  v31 = 8 * v30;
  if (v30 > 3)
  {
    goto LABEL_18;
  }

  v34 = ((a2 - v19 + ~(-1 << v31)) >> v31) + 1;
  if (HIWORD(v34))
  {
    v32 = *(a1 + v30);
    if (v32)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v34 <= 0xFF)
    {
      if (v34 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_36;
      }

LABEL_26:
      v35 = (v32 - 1) << v31;
      if (v30 > 3)
      {
        v35 = 0;
      }

      if (v30)
      {
        if (v30 <= 3)
        {
          v36 = v30;
        }

        else
        {
          v36 = 4;
        }

        switch(v36)
        {
          case 2:
            v37 = *a1;
            break;
          case 3:
            v37 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v37 = *a1;
            break;
          default:
            v37 = *a1;
            break;
        }
      }

      else
      {
        v37 = 0;
      }

      return v19 + (v37 | v35) + 1;
    }

    v32 = *(a1 + v30);
    if (*(a1 + v30))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  v38 = (a1 + v26) & ~v24;
  if (v14 == v19)
  {
    if (v8 == v14)
    {
      v13 = v8;
      v15 = v43;
    }

    else
    {
      v38 = (v27 + v38) & ~*(v9 + 80);
      if (v42 == v14)
      {
        v13 = v42;
        v15 = v41;
      }

      else
      {
        v38 = (v28 + v38) & ~v25;
        v15 = v11;
      }
    }

LABEL_47:

    return sub_100024D10(v38, v13, v15);
  }

  v39 = (v38 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) != 0)
  {
    v38 = (v22 + ((((v39 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v22;
    v13 = v17;
    goto LABEL_47;
  }

  v40 = *(v39 + 24);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_100632660(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(type metadata accessor for PresentationMode() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v45 = type metadata accessor for DetailType();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  v43 = type metadata accessor for Location();
  v10 = *(v43 - 8);
  v44 = *(v10 + 84);
  if (v44 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = type metadata accessor for DetailViewOrigin();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  if (v15 <= v18)
  {
    v19 = *(v17 + 84);
  }

  else
  {
    v19 = v15;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v10 + 80);
  v22 = *(v13 + 80);
  v23 = (v21 | *(v8 + 80) | v22);
  v24 = v21;
  v25 = v22;
  v26 = v7 + v23 + 1;
  v27 = *(v8 + 64) + v21;
  v28 = *(v10 + 64) + v22;
  v29 = ((v28 + (v27 & ~v24)) & ~v25) + *(*(v12 - 8) + 64);
  v30 = *(v17 + 80);
  v31 = ((v30 + ((((((v29 + (v26 & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v30) + *(v17 + 64);
  v32 = 8 * v31;
  if (a3 <= v20)
  {
    v35 = 0;
    v33 = a1;
    v34 = a2;
  }

  else
  {
    v33 = a1;
    v34 = a2;
    if (v31 <= 3)
    {
      v38 = ((a3 - v20 + ~(-1 << v32)) >> v32) + 1;
      if (HIWORD(v38))
      {
        v35 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v35 = v39;
        }

        else
        {
          v35 = 0;
        }
      }
    }

    else
    {
      v35 = 1;
    }
  }

  if (v20 >= v34)
  {
    switch(v35)
    {
      case 1:
        v33[v31] = 0;
        if (v34)
        {
          goto LABEL_39;
        }

        return;
      case 2:
        *&v33[v31] = 0;
        if (v34)
        {
          goto LABEL_39;
        }

        return;
      case 3:
LABEL_63:
        __break(1u);
        return;
      case 4:
        *&v33[v31] = 0;
        goto LABEL_38;
      default:
LABEL_38:
        if (!v34)
        {
          return;
        }

LABEL_39:
        v41 = &v33[v26] & ~v23;
        if (v15 == v20)
        {
          if (v9 == v15)
          {
            v14 = v9;
            v16 = v45;
          }

          else
          {
            v41 = (v27 + v41) & ~v24;
            if (v44 == v15)
            {
              v14 = v44;
              v16 = v43;
            }

            else
            {
              v41 = (v28 + v41) & ~v25;
              v16 = v12;
            }
          }
        }

        else
        {
          v42 = (v41 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
          if ((v19 & 0x80000000) == 0)
          {
            if ((v34 & 0x80000000) != 0)
            {
              *(v42 + 8) = 0u;
              *(v42 + 24) = 0u;
              *v42 = v34 & 0x7FFFFFFF;
            }

            else
            {
              *(v42 + 24) = (v34 - 1);
            }

            return;
          }

          v41 = (v30 + ((((v42 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v30;
          v14 = v18;
        }

        sub_10001B350(v41, v34, v14, v16);
        break;
    }
  }

  else
  {
    v36 = ~v20 + v34;
    if (v31 < 4)
    {
      v37 = (v36 >> v32) + 1;
      if (v31)
      {
        v40 = v36 & ~(-1 << v32);
        bzero(v33, v31);
        if (v31 == 3)
        {
          *v33 = v40;
          v33[2] = BYTE2(v40);
        }

        else if (v31 == 2)
        {
          *v33 = v40;
        }

        else
        {
          *v33 = v36;
        }
      }
    }

    else
    {
      bzero(v33, v31);
      *v33 = v36;
      v37 = 1;
    }

    switch(v35)
    {
      case 1:
        v33[v31] = v37;
        break;
      case 2:
        *&v33[v31] = v37;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&v33[v31] = v37;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100632BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CA54B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_1000302D8(v2, &v16 - v12, &qword_100CA54B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100463960(v13, a1);
  }

  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_100632D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v85 = *(a1 - 8);
  v86 = *(v85 + 64);
  __chkstk_darwin(a1);
  sub_100003990(&v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  sub_100003990(&v71 - v5);
  v82 = type metadata accessor for ColorScheme();
  sub_1000037C4();
  v81 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100003990(v9 - v8);
  type metadata accessor for NavigationPath();
  v83 = a1;
  v92 = *(a1 + 16);
  sub_10022E824(&qword_100CA6E10);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(a1 + 24);
  sub_100004724();
  sub_1000206E4();
  v14 = sub_10023FBF4(v12, v13);
  v108 = v11;
  v109 = v14;
  v72 = v11;
  sub_100007E30();
  v91 = v15;
  WitnessTable = swift_getWitnessTable();
  v102 = v10;
  v103 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_10022E824(&qword_100CCD630);
  v102 = v10;
  v103 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000063C0();
  v21 = sub_10023FBF4(v20, &qword_100CCD630);
  v102 = OpaqueTypeMetadata2;
  v103 = v18;
  v104 = OpaqueTypeConformance2;
  v105 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v102 = OpaqueTypeMetadata2;
  v103 = v18;
  v104 = OpaqueTypeConformance2;
  v105 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v102 = v22;
  v103 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v102 = v22;
  v103 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v102 = v22;
  v103 = &type metadata for Solarium;
  v104 = v24;
  v105 = v23;
  v106 = &protocol witness table for Solarium;
  v107 = v25;
  swift_getOpaqueTypeMetadata2();
  v102 = v22;
  v103 = &type metadata for Solarium;
  v104 = v24;
  v105 = v23;
  v106 = &protocol witness table for Solarium;
  v107 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = type metadata accessor for NavigationStack();
  sub_1000037C4();
  v28 = v27;
  sub_100003828();
  __chkstk_darwin(v29);
  v31 = &v71 - v30;
  sub_10022E824(&qword_100CE15A0);
  v32 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v73 = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  v36 = &v71 - v35;
  v75 = type metadata accessor for ModifiedContent();
  v78 = *(v75 - 8);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_100003990(&v71 - v38);
  v77 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v79 = v39;
  __chkstk_darwin(v40);
  v74 = &v71 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  sub_100003990(&v71 - v43);
  v93 = v92;
  v94 = v11;
  v44 = v90;
  v95 = v90;
  NavigationStack.init<>(root:)();
  v45 = v81;
  v46 = v80;
  v47 = v82;
  (*(v81 + 104))(v80, enum case for ColorScheme.dark(_:), v82);
  sub_100010610();
  v48 = swift_getWitnessTable();
  View.colorScheme(_:)();
  (*(v45 + 8))(v46, v47);
  (*(v28 + 8))(v31, v26);
  sub_100014B8C();
  v50 = sub_10023FBF4(v49, &qword_100CE15A0);
  v100 = v48;
  v101 = v50;
  v82 = swift_getWitnessTable();
  View.accessibilityIgnoresInvertColors(_:)();
  (*(v73 + 8))(v36, v32);
  v51 = v85;
  v81 = *(v85 + 16);
  v52 = v84;
  v53 = v44;
  v54 = v83;
  (v81)(v84, v53, v83);
  v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v56 = swift_allocObject();
  v57 = v72;
  *(v56 + 16) = v92;
  *(v56 + 24) = v57;
  v85 = *(v51 + 32);
  (v85)(v56 + v55, v52, v54);
  v58 = v87;
  (v81)(v87, v90, v54);
  v59 = swift_allocObject();
  *(v59 + 16) = v92;
  *(v59 + 24) = v57;
  (v85)(v59 + v55, v58, v54);
  v60 = sub_100061564();
  v98 = v82;
  v99 = v60;
  v61 = v75;
  v62 = swift_getWitnessTable();
  v63 = v74;
  v64 = v89;
  sub_1007A9138();

  (*(v78 + 8))(v64, v61);
  v65 = sub_100636EA4();
  v96 = v62;
  v97 = v65;
  v66 = v77;
  v67 = swift_getWitnessTable();
  v68 = v76;
  sub_1000833D8(v63, v66, v67);
  v69 = *(v79 + 8);
  v69(v63, v66);
  sub_1000833D8(v68, v66, v67);
  return (v69)(v68, v66);
}

uint64_t sub_10063369C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a1;
  v77 = a4;
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v73 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022E824(&qword_100CA6E10);
  v8 = type metadata accessor for ModifiedContent();
  v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v70 = &v52 - v9;
  v10 = sub_10023FBF4(&qword_100CA6E08, &qword_100CA6E10);
  v89 = a3;
  v90 = v10;
  v11 = a3;
  WitnessTable = swift_getWitnessTable();
  v83 = v8;
  v84 = WitnessTable;
  v13 = WitnessTable;
  v67 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v68 = &v52 - v15;
  v16 = sub_10022E824(&qword_100CCD630);
  v83 = v8;
  v84 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_10023FBF4(&qword_100CCD638, &qword_100CCD630);
  v83 = OpaqueTypeMetadata2;
  v84 = v16;
  v19 = OpaqueTypeMetadata2;
  v59 = OpaqueTypeMetadata2;
  v63 = v16;
  v85 = OpaqueTypeConformance2;
  v86 = v18;
  v62 = OpaqueTypeConformance2;
  v20 = v18;
  v61 = v18;
  v21 = swift_getOpaqueTypeMetadata2();
  v69 = *(v21 - 8);
  __chkstk_darwin(v21);
  v60 = &v52 - v22;
  v83 = v19;
  v84 = v16;
  v85 = OpaqueTypeConformance2;
  v86 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v58 = v21;
  v83 = v21;
  v84 = v23;
  v24 = v23;
  v57 = v23;
  v25 = swift_getOpaqueTypeMetadata2();
  v54 = v25;
  v83 = v21;
  v84 = v24;
  v55 = swift_getOpaqueTypeConformance2();
  v83 = v21;
  v84 = &type metadata for Solarium;
  v85 = v25;
  v86 = v24;
  v87 = &protocol witness table for Solarium;
  v88 = v55;
  v64 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  v65 = swift_getOpaqueTypeMetadata2();
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v53 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v56 = &v52 - v28;
  type metadata accessor for DetailContainerView();
  v29 = [objc_opt_self() systemBackgroundColor];
  v30 = Color.init(_:)();
  v31 = static SafeAreaRegions.all.getter();
  v32 = static Edge.Set.all.getter();
  v83 = v30;
  v84 = v31;
  LOBYTE(v85) = v32;
  sub_10022C350(&qword_100CCD648);
  sub_100636EF8();
  static Alignment.center.getter();
  v33 = v74;
  v34 = v70;
  v35 = v11;
  View.background<A>(_:alignment:)();

  v37 = v75;
  v36 = v76;
  v38 = v73;
  (*(v75 + 104))(v73, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v76);
  v39 = v68;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v37 + 8))(v38, v36);
  (*(v72 + 8))(v34, v8);
  v80 = a2;
  v81 = v35;
  v82 = v33;
  v40 = v60;
  v41 = v59;
  View.toolbar<A>(content:)();
  (*(v71 + 8))(v39, v41);
  Solarium.init()();
  v78 = a2;
  v79 = v35;
  v42 = swift_checkMetadataState();
  v43 = v55;
  v44 = v53;
  v45 = v58;
  v46 = v57;
  View.staticIf<A, B>(_:then:)();
  (*(v69 + 8))(v40, v45);
  v83 = v45;
  v84 = &type metadata for Solarium;
  v85 = v42;
  v86 = v46;
  v87 = &protocol witness table for Solarium;
  v88 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v56;
  v49 = v65;
  sub_1000833D8(v44, v65, v47);
  v50 = *(v66 + 8);
  v50(v44, v49);
  sub_1000833D8(v48, v49, v47);
  return (v50)(v48, v49);
}

uint64_t sub_100633EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v34 = a2;
  v35 = a1;
  v44 = a4;
  v43 = sub_10022C350(&qword_100CCD658);
  __chkstk_darwin(v43);
  v41 = v32 - v7;
  v42 = sub_10022C350(&qword_100CCD660);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = v32 - v8;
  v9 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v9 - 8);
  v38 = sub_10022C350(&qword_100CCD668);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v33 = v32 - v10;
  static ToolbarItemPlacement.principal.getter();
  v48 = a2;
  v49 = a3;
  v50 = a1;
  v32[1] = sub_10022C350(&qword_100CCD670);
  v11 = sub_10022E824(&qword_100CCD678);
  v32[0] = sub_10022E824(&qword_100CCD680);
  v12 = sub_10022E824(&qword_100CCD688);
  v13 = sub_10022E824(&qword_100CCD690);
  v14 = sub_10022E824(&qword_100CCD698);
  v15 = sub_10022E824(&qword_100CCD6A0);
  v16 = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698);
  v17 = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0);
  v51 = v14;
  v52 = v15;
  v53 = v16;
  v54 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_100636F9C();
  v51 = v12;
  v52 = &type metadata for Solarium;
  v53 = v13;
  v54 = OpaqueTypeConformance2;
  v55 = &protocol witness table for Solarium;
  v56 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v51 = v11;
  v52 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v51 = v11;
  v52 = &type metadata for Solarium;
  v53 = v32[0];
  v54 = v20;
  v55 = &protocol witness table for Solarium;
  v56 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v33;
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v45 = v34;
  v46 = v36;
  v47 = v35;
  sub_10022C350(&qword_100CCD6D0);
  sub_100637190();
  v23 = v39;
  ToolbarItem<>.init(placement:content:)();
  v24 = *(v43 + 48);
  v25 = v37;
  v26 = v41;
  v27 = v38;
  (*(v37 + 16))(v41, v22, v38);
  v28 = v40;
  v29 = &v26[v24];
  v30 = v42;
  (*(v40 + 16))(v29, v23, v42);
  TupleToolbarContent.init(_:)();
  (*(v28 + 8))(v23, v30);
  return (*(v25 + 8))(v22, v27);
}

uint64_t sub_100634420@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = sub_10022C350(&qword_100CCD678);
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = type metadata accessor for DetailContainerView();
  sub_1006346E0(v8, v7);
  Solarium.init()();
  v22 = a1;
  v23 = a2;
  v19[1] = sub_10022C350(&qword_100CCD680);
  v9 = sub_10022E824(&qword_100CCD688);
  v10 = sub_10022E824(&qword_100CCD690);
  v11 = sub_10022E824(&qword_100CCD698);
  v12 = sub_10022E824(&qword_100CCD6A0);
  v13 = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698);
  v14 = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0);
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_100636F9C();
  v24 = v9;
  v25 = &type metadata for Solarium;
  v26 = v10;
  v27 = OpaqueTypeConformance2;
  v28 = &protocol witness table for Solarium;
  v29 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v24 = v5;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  View.staticIf<A, B>(_:then:)();
  return (*(v20 + 8))(v7, v5);
}

uint64_t sub_1006346E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19[1] = a2;
  v5 = sub_10022C350(&qword_100CCD698);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = sub_10022C350(&qword_100CCD688);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = sub_10022C350(&qword_100CCD700);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  sub_1006359D4(v3, v14, v13, &v7[*(v12 + 44)]);
  v19[4] = v14;
  v19[5] = v13;
  v19[6] = v3;
  v15 = sub_10022C350(&qword_100CCD6A0);
  v16 = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698);
  v17 = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  sub_10003FDA0(v7, &qword_100CCD698);
  Solarium.init()();
  sub_10022C350(&qword_100CCD690);
  v19[8] = v5;
  v19[9] = v15;
  v19[10] = v16;
  v19[11] = v17;
  swift_getOpaqueTypeConformance2();
  sub_100636F9C();
  View.staticIf<A, B>(_:then:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1006349BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v14[1] = a2;
  v15 = type metadata accessor for BarMagicPocketStyle();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = sub_10022C350(&qword_100CCD678);
  v5 = sub_10022E824(&qword_100CCD688);
  v6 = sub_10022E824(&qword_100CCD690);
  v7 = sub_10022E824(&qword_100CCD698);
  v8 = sub_10022E824(&qword_100CCD6A0);
  v9 = sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698);
  v10 = sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_100636F9C();
  v17 = v5;
  v18 = &type metadata for Solarium;
  v19 = v6;
  v20 = OpaqueTypeConformance2;
  v21 = &protocol witness table for Solarium;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  static BarMagicPocketStyle.automatic.getter();
  View.barPocket_v1(style:)();
  return (*(v2 + 8))(v4, v15);
}

uint64_t sub_100634C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCD6E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  if (*(a1 + *(type metadata accessor for DetailContainerView() + 60)) == 1)
  {
    sub_100634D5C();
    (*(v5 + 32))(a2, v7, v4);
    return sub_10001B350(a2, 0, 1, v4);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v4);
  }
}

uint64_t sub_100634D5C()
{
  Solarium.init()();
  sub_10022C350(&qword_100CCD6F0);
  sub_10022C350(&qword_100CCD6F8);
  sub_10022E824(&qword_100CAF690);
  sub_10022E824(&qword_100CA2CF0);
  sub_10023FBF4(&qword_100CAF698, &qword_100CAF690);
  sub_10023FBF4(&qword_100CAF788, &qword_100CA2CF0);
  swift_getOpaqueTypeConformance2();
  sub_10022E824(&qword_100CC5B90);
  sub_1006373E0(&qword_100CC5B98, &qword_100CC5B90, &unk_100A61410, sub_100578174);
  swift_getOpaqueTypeConformance2();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_100634F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022E824(&qword_100CA6E10);
  type metadata accessor for ModifiedContent();
  v23 = a3;
  v24 = sub_10023FBF4(&qword_100CA6E08, &qword_100CA6E10);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10022E824(&qword_100CCD630);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v5 = sub_10023FBF4(&qword_100CCD638, &qword_100CCD630);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = OpaqueTypeConformance2;
  v22 = v5;
  v7 = swift_getOpaqueTypeConformance2();
  v19 = OpaqueTypeMetadata2;
  v20 = v7;
  v8 = swift_getOpaqueTypeMetadata2();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  v15 = swift_checkMetadataState();
  View.scrollContentBackground(_:)();
  v19 = v15;
  v20 = v7;
  v16 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v11, v8, v16);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1000833D8(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_100635274(uint64_t a1)
{
  v2 = type metadata accessor for DetailContainerView();
  v3 = (a1 + *(v2 + 40));
  v4 = v3[3];
  v5 = v3[4];
  sub_1000161C0(v3, v4);
  return (*(v5 + 16))(a1 + *(v2 + 36), v4, v5);
}

uint64_t sub_1006352E8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DetailContainerView() + 40));
  v2 = v1[3];
  v3 = v1[4];
  sub_1000161C0(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

uint64_t sub_10063534C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = type metadata accessor for DetailContainerView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v19[0] = sub_10022C350(&qword_100CAF690);
  v11 = *(v19[0] - 8);
  v12 = __chkstk_darwin(v19[0]);
  v14 = v19 - v13;
  (*(v8 + 16))(v10, a1, v7, v12);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v8 + 32))(v16 + v15, v10, v7);
  sub_10022C350(&qword_100CAF6F8);
  sub_10035B9E4();
  Button.init(action:label:)();
  sub_10022C350(&qword_100CA2CF0);
  sub_10023FBF4(&qword_100CAF698, &qword_100CAF690);
  sub_10023FBF4(&qword_100CAF788, &qword_100CA2CF0);
  v17 = v19[0];
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_10063561C@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  result = static Color.white.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10063565C()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1006356B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailContainerView();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v14 - v9;
  (*(v7 + 16))(v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  v14[1] = sub_10063760C;
  v14[2] = v12;
  v15 = 257;
  sub_10022C350(&qword_100CC5B90);
  sub_10022C350(&qword_100CA2CF0);
  sub_1006373E0(&qword_100CC5B98, &qword_100CC5B90, &unk_100A61410, sub_100578174);
  sub_10023FBF4(&qword_100CAF788, &qword_100CA2CF0);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
}

uint64_t sub_1006358D4()
{
  v0 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v0 - 8);
  sub_1000037D8();
  sub_10022C350(&qword_100CA6D28);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v5 - v2;
  sub_100632BB4(&v5 - v2);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_10003FDA0(v3, &qword_100CA6D28);
}

uint64_t sub_1006359D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a2;
  v79 = a3;
  v91 = a4;
  v92 = a1;
  v5 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v5 - 8);
  v74 = &v71 - v6;
  v75 = type metadata accessor for Font.TextStyle();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10022C350(&qword_100CCD708);
  v77 = *(v88 - 8);
  __chkstk_darwin(v88);
  v76 = &v71 - v8;
  v9 = sub_10022C350(&qword_100CCD710);
  __chkstk_darwin(v9 - 8);
  v90 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v89 = &v71 - v12;
  v13 = type metadata accessor for AccessibilityTraits();
  v86 = *(v13 - 8);
  v87 = v13;
  __chkstk_darwin(v13);
  v85 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessibilityChildBehavior();
  v80 = *(v15 - 8);
  v81 = v15;
  __chkstk_darwin(v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CCD718);
  v83 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  v84 = sub_10022C350(&qword_100CCD720);
  __chkstk_darwin(v84);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v94 = &v71 - v24;
  __chkstk_darwin(v25);
  v82 = &v71 - v26;
  __chkstk_darwin(v27);
  v93 = &v71 - v28;
  v29 = static VerticalAlignment.center.getter();
  LOBYTE(v95) = 0;
  sub_100636478(a1, __src);
  memcpy(v100, __src, 0x4BuLL);
  memcpy(v101, __src, 0x4BuLL);
  sub_1000302D8(v100, v98, &qword_100CCD728);
  sub_10003FDA0(v101, &qword_100CCD728);
  memcpy(&v99[7], v100, 0x4BuLL);
  *v98 = v29;
  *&v98[8] = 0x4010000000000000;
  v98[16] = v95;
  memcpy(&v98[17], v99, 0x52uLL);
  static AccessibilityChildBehavior.ignore.getter();
  v30 = sub_10022C350(&qword_100CCD730);
  v31 = sub_10023FBF4(&qword_100CCD738, &qword_100CCD730);
  View.accessibilityElement(children:)();
  (*(v80 + 8))(v17, v81);
  memcpy(__src, v98, 0x63uLL);
  sub_10003FDA0(__src, &qword_100CCD730);
  *v98 = v30;
  *&v98[8] = v31;
  swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v83 + 8))(v20, v18);
  v83 = type metadata accessor for DetailContainerView();
  v32 = (v92 + *(v83 + 44));
  v33 = v32[1];
  *v98 = *v32;
  *&v98[8] = v33;
  v34 = sub_10002D5A4();
  v35 = v94;
  v81 = v34;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_10003FDA0(v22, &qword_100CCD720);
  v36 = v85;
  static AccessibilityTraits.isHeader.getter();
  v37 = v82;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v86 + 8))(v36, v87);
  sub_10003FDA0(v35, &qword_100CCD720);
  ModifiedContent<>.accessibilityHidden(_:)();
  sub_10003FDA0(v37, &qword_100CCD720);
  v38 = (v92 + *(v83 + 56));
  v39 = v38[1];
  if (v39)
  {
    v92 = *v38;
    *v98 = v92;
    *&v98[8] = v39;
    v87 = v39;

    v40 = Text.init<A>(_:)();
    v42 = v41;
    v44 = v43;
    v86 = v45;
    v47 = v72;
    v46 = v73;
    v48 = v75;
    (*(v73 + 104))(v72, enum case for Font.TextStyle.body(_:), v75);
    v49 = type metadata accessor for Font.Design();
    v50 = v74;
    sub_10001B350(v74, 1, 1, v49);
    static Font.system(_:design:weight:)();
    sub_10003FDA0(v50, &qword_100CA4020);
    (*(v46 + 8))(v47, v48);
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v51 = Text.font(_:)();
    v53 = v52;
    LOBYTE(v47) = v54;
    v56 = v55;

    sub_10010CD64(v40, v42, v44 & 1);

    KeyPath = swift_getKeyPath();
    v97 = v47 & 1;
    *&v95 = v51;
    *(&v95 + 1) = v53;
    LOBYTE(v96[0]) = v47 & 1;
    *(&v96[0] + 1) = v56;
    *&v96[1] = KeyPath;
    WORD4(v96[1]) = 1;
    BYTE10(v96[1]) = 1;
    v58 = Solarium.init()();
    __chkstk_darwin(v58);
    sub_10022C350(&qword_100CB6718);
    sub_10022C350(&qword_100CCD748);
    sub_1006373E0(&qword_100CB6710, &qword_100CB6718, &unk_100A6E460, sub_100400850);
    sub_1006374F8();
    v59 = v76;
    View.staticIf<A, B>(_:then:)();
    *v98 = v95;
    *&v98[16] = v96[0];
    *&v98[27] = *(v96 + 11);
    sub_10003FDA0(v98, &qword_100CB6718);
    v60 = v88;
    v61 = v89;
    (*(v77 + 32))(v89, v59, v88);
    v62 = v61;
    v63 = 0;
    v64 = v60;
  }

  else
  {
    v64 = v88;
    v61 = v89;
    v62 = v89;
    v63 = 1;
  }

  sub_10001B350(v62, v63, 1, v64);
  v66 = v93;
  v65 = v94;
  sub_1000302D8(v93, v94, &qword_100CCD720);
  v67 = v90;
  sub_1000302D8(v61, v90, &qword_100CCD710);
  v68 = v91;
  sub_1000302D8(v65, v91, &qword_100CCD720);
  v69 = sub_10022C350(&qword_100CCD740);
  sub_1000302D8(v67, v68 + *(v69 + 48), &qword_100CCD710);
  sub_10003FDA0(v61, &qword_100CCD710);
  sub_10003FDA0(v66, &qword_100CCD720);
  sub_10003FDA0(v67, &qword_100CCD710);
  return sub_10003FDA0(v65, &qword_100CCD720);
}

uint64_t sub_100636478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - v4;
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetailContainerView();
  v11 = v10;
  if (*(a1 + *(v10 + 48) + 8))
  {
    v12 = *(v10 + 52);
    v49 = a1;
    v13 = *(a1 + v12);

    v14 = (v7 + 104);
    v15 = (v7 + 8);
    if (v13 == 1)
    {
      v16 = Image.init(_:bundle:)();
      v17 = enum case for Font.TextStyle.body(_:);
      (*v14)(v9);
      v18 = type metadata accessor for Font.Design();
      sub_10001B350(v5, 1, 1, v18);
      v19 = static Font.system(_:design:weight:)();
      sub_10003FDA0(v5, &qword_100CA4020);
      (*v15)(v9, v6);
      KeyPath = swift_getKeyPath();
      *&v56 = v16;
      *(&v56 + 1) = KeyPath;
      *v57 = v19;
      v57[8] = 0;
    }

    else
    {
      v23 = Image.init(systemName:)();
      v17 = enum case for Font.TextStyle.body(_:);
      (*v14)(v9);
      v24 = type metadata accessor for Font.Design();
      sub_10001B350(v5, 1, 1, v24);
      v25 = static Font.system(_:design:weight:)();
      sub_10003FDA0(v5, &qword_100CA4020);
      (*v15)(v9, v6);
      v26 = swift_getKeyPath();
      *&v56 = v23;
      *(&v56 + 1) = v26;
      *v57 = v25;
      v57[8] = 1;
    }

    sub_10022C350(&qword_100CA53B0);
    sub_100270C80();
    _ConditionalContent<>.init(storage:)();
    v22 = v61;
    v52 = v58;
    v51 = v59;
    v50 = v60;
    sub_1004E00C8();
    a1 = v49;
    v21 = v17;
  }

  else
  {
    v52 = 0;
    v51 = 0;
    v50 = 0;
    v21 = enum case for Font.TextStyle.body(_:);
    v22 = -1;
  }

  v27 = (a1 + *(v11 + 44));
  v28 = v27[1];
  v58 = *v27;
  v59 = v28;
  sub_10002D5A4();

  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  (*(v7 + 104))(v9, v21, v6);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  (*(v7 + 8))(v9, v6);
  v34 = Text.font(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_10010CD64(v29, v31, v33 & 1);

  v41 = swift_getKeyPath();
  v42 = v38 & 1;
  LOBYTE(v58) = v38 & 1;
  *&v56 = v34;
  *(&v56 + 1) = v36;
  v57[0] = v38 & 1;
  *&v57[1] = *v55;
  *&v57[4] = *&v55[3];
  *&v57[8] = v40;
  *&v57[16] = v41;
  *&v57[24] = 1;
  v57[26] = 1;
  v43 = v52;
  v44 = v51;
  v45 = v50;
  sub_1006375DC(v52, v51, v50, v22);
  sub_1000302D8(&v56, &v58, &qword_100CB6718);
  sub_1006375F4(v43, v44, v45, v22);
  *&v54[7] = v56;
  *&v54[23] = *v57;
  *&v54[34] = *&v57[11];
  v46 = *&v54[16];
  v47 = v53;
  *(v53 + 25) = *v54;
  *v47 = v43;
  *(v47 + 8) = v44;
  *(v47 + 16) = v45;
  *(v47 + 24) = v22;
  *(v47 + 41) = v46;
  *(v47 + 57) = *&v54[32];
  *(v47 + 73) = *&v54[48];
  v58 = v34;
  v59 = v36;
  LOBYTE(v60) = v42;
  HIDWORD(v60) = *&v55[3];
  *(&v60 + 1) = *v55;
  v61 = v40;
  v62 = v41;
  v63 = 1;
  v64 = 1;
  sub_10003FDA0(&v58, &qword_100CB6718);
  return sub_1006375F4(v43, v44, v45, v22);
}

uint64_t sub_1006369F0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[1];
  v16 = *a1;
  v17[0] = v8;
  *(v17 + 11) = *(a1 + 27);
  v9 = static Animation.easeInOut.getter();
  v10 = *(a1 + 27);
  v11 = a1[1];
  v18 = *a1;
  *v19 = v11;
  *&v19[11] = v10;
  v12 = *v19;
  v13 = *&v19[16];
  *a4 = v18;
  *(a4 + 16) = v12;
  *(a4 + 32) = v13;
  *(a4 + 48) = v9;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  sub_1000302D8(&v16, &v15, &qword_100CB6718);
}

uint64_t sub_100636A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetailContainerView();
  v5 = *(a1 + *(v4 + 48) + 8);
  if (v5)
  {

    v5 = Image.init(systemName:)();
  }

  sub_10002D5A4();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (*(a1 + *(v4 + 56) + 8))
  {

    v13 = Text.init<A>(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18 & 1;
    sub_10010CD54(v13, v14, v18 & 1);
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v19 = 0;
    v17 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10 & 1;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = v19;
  *(a2 + 64) = v17;

  sub_10010CD54(v6, v8, v10 & 1);

  sub_100148118(v13, v15, v19, v17);

  sub_10014A53C(v13, v15, v19, v17);
  sub_10014A53C(v13, v15, v19, v17);
  sub_10010CD64(v6, v8, v10 & 1);
}

void *sub_100636C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCD6C8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &__src[-v6];
  v8 = static Edge.Set.horizontal.getter();
  v9 = sub_10022C350(&qword_100CCD688);
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  v10 = &v7[*(v5 + 44)];
  *v10 = v8;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100202298(v7, a2);
  v11 = sub_10022C350(&qword_100CCD690);
  return memcpy((a2 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_100636E14(uint64_t (*a1)(void))
{
  sub_1000206E4();
  type metadata accessor for DetailContainerView();
  sub_1000206E4();

  return a1();
}

unint64_t sub_100636EA4()
{
  result = qword_100CCD640;
  if (!qword_100CCD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD640);
  }

  return result;
}

unint64_t sub_100636EF8()
{
  result = qword_100CCD650;
  if (!qword_100CCD650)
  {
    sub_10022E824(&qword_100CCD648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD650);
  }

  return result;
}

unint64_t sub_100636F9C()
{
  result = qword_100CCD6B8;
  if (!qword_100CCD6B8)
  {
    sub_10022E824(&qword_100CCD690);
    sub_100637028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD6B8);
  }

  return result;
}

unint64_t sub_100637028()
{
  result = qword_100CCD6C0;
  if (!qword_100CCD6C0)
  {
    sub_10022E824(&qword_100CCD6C8);
    sub_10022E824(&qword_100CCD698);
    sub_10022E824(&qword_100CCD6A0);
    sub_10023FBF4(&qword_100CCD6A8, &qword_100CCD698);
    sub_10023FBF4(&qword_100CCD6B0, &qword_100CCD6A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD6C0);
  }

  return result;
}

unint64_t sub_100637190()
{
  result = qword_100CCD6D8;
  if (!qword_100CCD6D8)
  {
    sub_10022E824(&qword_100CCD6D0);
    sub_100637214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD6D8);
  }

  return result;
}

unint64_t sub_100637214()
{
  result = qword_100CCD6E0;
  if (!qword_100CCD6E0)
  {
    sub_10022E824(&qword_100CCD6E8);
    sub_10022E824(&qword_100CAF690);
    sub_10022E824(&qword_100CA2CF0);
    sub_10023FBF4(&qword_100CAF698, &qword_100CAF690);
    sub_10023FBF4(&qword_100CAF788, &qword_100CA2CF0);
    swift_getOpaqueTypeConformance2();
    sub_10022E824(&qword_100CC5B90);
    sub_1006373E0(&qword_100CC5B98, &qword_100CC5B90, &unk_100A61410, sub_100578174);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD6E0);
  }

  return result;
}

uint64_t sub_1006373E0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    sub_10022E824(v7);
    a4();
    sub_100007E30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10063746C()
{
  sub_1000206E4();
  type metadata accessor for DetailContainerView();
  sub_1000206E4();
  return sub_1006358D4();
}

unint64_t sub_1006374F8()
{
  result = qword_100CCD750;
  if (!qword_100CCD750)
  {
    sub_10022E824(&qword_100CCD748);
    sub_1006373E0(&qword_100CB6710, &qword_100CB6718, &unk_100A6E460, sub_100400850);
    sub_10023FBF4(&qword_100CCD758, &unk_100CCD760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCD750);
  }

  return result;
}

uint64_t sub_1006375DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1004E00C8();
  }

  return result;
}

uint64_t sub_1006375F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1004E0110();
  }

  return result;
}

uint64_t sub_100637610()
{
  countAndFlagsBits = LocationModel.name.getter();
  LocationModel.kind.getter();
  v1 = Location.Identifier.Kind.rawValue.getter();
  v3 = v2;
  if (v1 == Location.Identifier.Kind.rawValue.getter() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      return countAndFlagsBits;
    }
  }

  v7 = [objc_opt_self() mainBundle];
  v11._object = 0x8000000100AD7020;
  v8._countAndFlagsBits = 0x7461636F4C20794DLL;
  v8._object = 0xEB000000006E6F69;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD00000000000003DLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100637758()
{
  v0 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  LocationModel.kind.getter();
  v6 = Location.Identifier.Kind.rawValue.getter();
  v8 = v7;
  if (v6 == Location.Identifier.Kind.rawValue.getter() && v8 == v9)
  {

    return LocationModel.name.getter();
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return LocationModel.name.getter();
  }

  LocationModel.location.getter();
  v12 = type metadata accessor for Location();
  if (sub_100024D10(v5, 1, v12) == 1)
  {
    sub_1000180EC(v5, &qword_100CA65D8);
  }

  else
  {
    v13 = Location.secondaryName.getter();
    v16 = v15;
    v17 = *(*(v12 - 8) + 8);
    v17(v5, v12);
    if (!v16)
    {
      return 0;
    }

    LocationModel.location.getter();
    if (sub_100024D10(v2, 1, v12) == 1)
    {
      sub_1000180EC(v2, &qword_100CA65D8);
      return v13;
    }

    v18 = Location.name.getter();
    v20 = v19;
    v17(v2, v12);
    if (v13 == v18 && v16 == v20)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t sub_1006379E8()
{
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_lastViewModel, &qword_100CA4BF8);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_appConfigurationManager);

  return swift_deallocClassInstance();
}

uint64_t sub_100637A74(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayKind();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = 0;
  switch(sub_1004CA0C4())
  {
    case 1u:
      sub_10001F384();
      v34 = 34;
      goto LABEL_45;
    case 2u:
      if (qword_100CA23B8 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90638;
      goto LABEL_22;
    case 3u:
      sub_10001C8C8();
      sub_100003B48();
      v31 = 36;
      goto LABEL_39;
    case 4u:
    case 8u:
      return v8;
    case 5u:
      sub_10001F384();
      v34 = 42;
      goto LABEL_45;
    case 6u:
      if (qword_100CA23B0 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90628;
      goto LABEL_22;
    case 7u:
      sub_10001F384();
      v34 = 48;
      goto LABEL_45;
    case 9u:
      sub_10001F384();
      v34 = 38;
      goto LABEL_45;
    case 0xAu:
      if (qword_100CA23C0 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90648;
      goto LABEL_22;
    case 0xBu:
      sub_100003B48();
      v32 = 84;
      goto LABEL_43;
    case 0xCu:
      sub_10001C8C8();
      sub_100003B48();
      v31 = 86;
      goto LABEL_39;
    case 0xDu:
      sub_10001F384();
      v34 = 90;
      goto LABEL_45;
    case 0xEu:
      sub_10001F384();
      v33 = 88;
      goto LABEL_41;
    case 0xFu:
      v22 = sub_100010640();
      v23(v22);
      v12 = 15;
      goto LABEL_25;
    case 0x10u:
      v24 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_1000037E8();
      (*(v25 + 104))(v7, v24);
      v26 = sub_100010640();
      v27(v26);
      v12 = 16;
      goto LABEL_25;
    case 0x11u:
      v18 = enum case for WeatherMapPrecipitationOverlayKind.radar(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_1000037E8();
      (*(v19 + 104))(v7, v18);
      v20 = sub_100010640();
      v21(v20);
      v12 = 17;
      goto LABEL_25;
    case 0x12u:
      v10 = sub_100010640();
      v11(v10);
      v12 = 18;
      goto LABEL_25;
    case 0x13u:
      v28 = sub_100010640();
      v29(v28);
      v12 = 19;
LABEL_25:
      v8 = sub_10099733C(v12, v7, 1);
      (*(v5 + 8))(v7, v4);
      return v8;
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
      sub_10001C8C8();
      sub_100003B48();
      v31 = 80;
LABEL_39:
      v34 = v31;
      goto LABEL_45;
    case 0x18u:
      sub_10001F384();
      v33 = 82;
LABEL_41:
      v34 = v33;
      goto LABEL_45;
    case 0x19u:
      sub_100003B48();
      v32 = 92;
LABEL_43:
      v34 = v32;
      goto LABEL_45;
    case 0x1Au:
      sub_10001F384();
      v34 = 94;
      goto LABEL_45;
    case 0x1Bu:
      sub_100997704();
      return 27;
    case 0x1Cu:
      sub_10001F384();
      v34 = 98;
LABEL_45:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    case 0x1Du:
      if (qword_100CA2788 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000703C(v13, qword_100D90CF0);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v35 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_100078694(a1, a2, &v35);
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to find PerformanceTest with name: %s", v16, 0xCu);
        sub_100006F14(v17);
      }

      return 0;
    default:
      if (qword_100CA23A8 != -1)
      {
        swift_once();
      }

      v9 = &byte_100D90618;
LABEL_22:
      v8 = *v9;

      return v8;
  }
}

uint64_t sub_100638188()
{
  result = sub_1006381B0();
  byte_100D90618 = 0;
  qword_100D90620 = result;
  return result;
}

uint64_t sub_1006381B0()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v8[15];
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  sub_10022C350(&qword_100CA5FF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 56) = &type metadata for Scroll;
  *(v4 + 64) = &off_100C53AA8;
  *(v4 + 32) = sub_100638404;
  *(v4 + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3ECD0;
  *(v5 + 56) = &type metadata for Mica;
  *(v5 + 64) = &off_100C63A98;
  *(v5 + 32) = 0;
  *(v5 + 96) = &type metadata for Delay;
  *(v5 + 104) = &off_100C500F8;
  *(v5 + 72) = 0x3FF0000000000000;
  *(v5 + 136) = &type metadata for UpdateWeather;
  *(v5 + 144) = &off_100C7B258;
  *(v5 + 112) = v3;
  *(v5 + 176) = &type metadata for Delay;
  *(v5 + 184) = &off_100C500F8;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 216) = v0;
  *(v5 + 224) = &off_100C5FB58;
  v6 = sub_100042FB0((v5 + 192));
  sub_1006395C4(v2, v6, type metadata accessor for Navigate);
  *(v5 + 256) = &type metadata for Delay;
  *(v5 + 264) = &off_100C500F8;
  *(v5 + 232) = 0x3FF0000000000000;
  *(v5 + 296) = &type metadata for Measure;
  *(v5 + 304) = &off_100C4E718;
  *(v5 + 272) = v4;
  *(v5 + 336) = &type metadata for Mica;
  *(v5 + 344) = &off_100C63A98;
  *(v5 + 312) = 1;
  sub_100639624(v2, type metadata accessor for Navigate);
  return v5;
}

uint64_t sub_100638404(double a1, double a2, double a3, double a4)
{
  v13 = CGRectInset(*&a1, 10.0, 120.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v8 = v13.size.height * 3.0;
  sub_10022C350(&qword_100CCD900);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A2D320;
  *(v9 + 56) = &type metadata for Down;
  *(v9 + 64) = &off_100C4F728;
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  *(v10 + 16) = 1;
  *(v10 + 24) = x;
  *(v10 + 32) = y;
  *(v10 + 40) = width;
  *(v10 + 48) = height;
  *(v10 + 56) = v8;
  *(v9 + 96) = &type metadata for Up;
  *(v9 + 104) = &off_100C52C20;
  v11 = swift_allocObject();
  *(v9 + 72) = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = x;
  *(v11 + 32) = y;
  *(v11 + 40) = width;
  *(v11 + 48) = height;
  *(v11 + 56) = v8;
  return v9;
}

uint64_t sub_100638510()
{
  result = sub_10063853C();
  byte_100D90628 = 6;
  qword_100D90630 = result;
  return result;
}

uint64_t sub_10063853C()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v8[15];
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  v4 = sub_100638750();
  sub_10022C350(&qword_100CA5FF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3ECD0;
  *(v5 + 56) = &type metadata for Mica;
  *(v5 + 64) = &off_100C63A98;
  *(v5 + 32) = 0;
  *(v5 + 96) = &type metadata for Delay;
  *(v5 + 104) = &off_100C500F8;
  *(v5 + 72) = 0x3FF0000000000000;
  *(v5 + 136) = &type metadata for UpdateWeather;
  *(v5 + 144) = &off_100C7B258;
  *(v5 + 112) = v3;
  *(v5 + 176) = &type metadata for Delay;
  *(v5 + 184) = &off_100C500F8;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 216) = v0;
  *(v5 + 224) = &off_100C5FB58;
  v6 = sub_100042FB0((v5 + 192));
  sub_1006395C4(v2, v6, type metadata accessor for Navigate);
  *(v5 + 256) = &type metadata for Delay;
  *(v5 + 264) = &off_100C500F8;
  *(v5 + 232) = 0x4000000000000000;
  *(v5 + 296) = &type metadata for Measure;
  *(v5 + 304) = &off_100C4E718;
  *(v5 + 272) = v4;
  *(v5 + 336) = &type metadata for Mica;
  *(v5 + 344) = &off_100C63A98;
  *(v5 + 312) = 1;
  sub_100639624(v2, type metadata accessor for Navigate);
  return v5;
}

uint64_t sub_100638750()
{
  v0 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = type metadata accessor for DispatchAction();
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Location();
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Location.newYork.getter();
  Location.identifier.getter();
  type metadata accessor for ListViewAction();
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for MainAction();
  swift_storeEnumTagMultiPayload();
  v11[*(v3 + 20)] = 1;
  v28 = *(sub_10022C350(&qword_100CBBE20) + 48);
  sub_10022C350(&qword_100CA38B8);
  (*(v13 + 16))(v8, v15, v12);
  type metadata accessor for SavedLocation();
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for LocationOfInterest();
  sub_10001B350(v2, 1, 1, v16);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v17 = enum case for LocationModel.saved(_:);
  v18 = type metadata accessor for LocationModel();
  (*(*(v18 - 8) + 104))(v8, v17, v18);
  v8[v28] = 1;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8[*(v3 + 20)] = 1;
  v19 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
  [v19 ts_settlingDuration];
  v21 = v20;

  Location.identifier.getter();
  type metadata accessor for LocationViewerViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5[*(v3 + 20)] = 0;
  sub_10022C350(&qword_100CA5FF8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100A3B020;
  *(v22 + 56) = v3;
  *(v22 + 64) = &off_100C798F0;
  v23 = sub_100042FB0((v22 + 32));
  sub_1006395C4(v11, v23, type metadata accessor for DispatchAction);
  *(v22 + 96) = v3;
  *(v22 + 104) = &off_100C798F0;
  v24 = sub_100042FB0((v22 + 72));
  sub_1006395C4(v8, v24, type metadata accessor for DispatchAction);
  *(v22 + 136) = &type metadata for Delay;
  *(v22 + 144) = &off_100C500F8;
  *(v22 + 112) = v21;
  *(v22 + 176) = v3;
  *(v22 + 184) = &off_100C798F0;
  v25 = sub_100042FB0((v22 + 152));
  sub_10063969C(v5, v25);
  sub_100639624(v8, type metadata accessor for DispatchAction);
  sub_100639624(v11, type metadata accessor for DispatchAction);
  (*(v32 + 8))(v15, v31);
  return v22;
}

uint64_t sub_100638C00()
{
  result = sub_100638C2C();
  byte_100D90638 = 2;
  qword_100D90640 = result;
  return result;
}

uint64_t sub_100638C2C()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchAction();
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Location.newYork.getter();
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction();
  swift_storeEnumTagMultiPayload();
  v5[*(v3 + 20)] = 0;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v18 = v19;
  v6 = enum case for TemperatureChartKind.actual(_:);
  v7 = type metadata accessor for TemperatureChartKind();
  (*(*(v7 - 8) + 104))(v2, v6, v7);
  v8 = enum case for DetailCondition.conditions(_:);
  v9 = type metadata accessor for DetailCondition();
  (*(*(v9 - 8) + 104))(v2, v8, v9);
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  v10 = swift_allocObject();
  v10[2] = sub_100639074;
  v10[3] = 0;
  v10[4] = 0x3FF0000000000000;
  v11 = sub_100639094(sub_10063907C, 0, 10.0);
  sub_10022C350(&qword_100CA5FF8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2C3F0;
  *(v12 + 56) = &type metadata for Repeat;
  *(v12 + 64) = &off_100C6E4D8;
  *(v12 + 32) = 5;
  *(v12 + 40) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A3BCA0;
  *(v13 + 56) = &type metadata for Mica;
  *(v13 + 64) = &off_100C63A98;
  *(v13 + 32) = 0;
  *(v13 + 96) = v3;
  *(v13 + 104) = &off_100C798F0;
  v14 = sub_100042FB0((v13 + 72));
  sub_1006395C4(v5, v14, type metadata accessor for DispatchAction);
  *(v13 + 136) = &type metadata for Delay;
  *(v13 + 144) = &off_100C500F8;
  *(v13 + 112) = 0x3FF0000000000000;
  *(v13 + 176) = &type metadata for UpdateWeather;
  *(v13 + 184) = &off_100C7B258;
  *(v13 + 152) = v18;
  *(v13 + 216) = &type metadata for Delay;
  *(v13 + 224) = &off_100C500F8;
  *(v13 + 192) = 0x3FF0000000000000;
  *(v13 + 256) = v0;
  *(v13 + 264) = &off_100C5FB58;
  v15 = sub_100042FB0((v13 + 232));
  sub_1006395C4(v2, v15, type metadata accessor for Navigate);
  *(v13 + 296) = &type metadata for Delay;
  *(v13 + 304) = &off_100C500F8;
  *(v13 + 272) = 0x3FF0000000000000;
  *(v13 + 336) = &type metadata for Swipe;
  *(v13 + 344) = &off_100C5E1A0;
  *(v13 + 312) = sub_100639700;
  *(v13 + 320) = v10;
  *(v13 + 376) = &type metadata for Delay;
  *(v13 + 384) = &off_100C500F8;
  *(v13 + 352) = 0x3FF0000000000000;
  *(v13 + 416) = &type metadata for Measure;
  *(v13 + 424) = &off_100C4E718;
  *(v13 + 392) = v12;
  *(v13 + 456) = &type metadata for Mica;
  *(v13 + 464) = &off_100C63A98;
  *(v13 + 432) = 1;
  sub_100639624(v2, type metadata accessor for Navigate);
  sub_100639624(v5, type metadata accessor for DispatchAction);
  return v13;
}

uint64_t sub_100639094(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  sub_10022C350(&qword_100CA5FF8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2D320;
  *(v7 + 56) = &type metadata for Swipe;
  *(v7 + 64) = &off_100C5E1A0;
  *(v7 + 32) = sub_10063967C;
  *(v7 + 40) = v6;
  *(v7 + 96) = &type metadata for Delay;
  *(v7 + 104) = &off_100C500F8;
  *(v7 + 72) = 0x3FF0000000000000;

  return v7;
}

uint64_t sub_10063916C(double (*a1)(void), double a2, double a3, double a4, double a5, double a6)
{
  v7 = a1();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10022C350(&qword_100CCD908);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2C3F0;
  *(v14 + 56) = &type metadata for Next;
  *(v14 + 64) = &off_100C6CE38;
  v15 = swift_allocObject();
  *(v14 + 32) = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = v7;
  *(v15 + 32) = v9;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  *(v15 + 56) = 1;
  *(v15 + 64) = a6;
  return v14;
}

uint64_t sub_100639238()
{
  result = sub_100639264();
  byte_100D90648 = 10;
  qword_100D90650 = result;
  return result;
}

uint64_t sub_100639264()
{
  v0 = type metadata accessor for DispatchAction();
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v8[15];
  static Location.london.getter();
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction();
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  v4 = sub_100639498();
  sub_10022C350(&qword_100CA5FF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3ECD0;
  *(v5 + 56) = &type metadata for Mica;
  *(v5 + 64) = &off_100C63A98;
  *(v5 + 32) = 0;
  *(v5 + 96) = &type metadata for Delay;
  *(v5 + 104) = &off_100C500F8;
  *(v5 + 72) = 0x3FF0000000000000;
  *(v5 + 136) = &type metadata for UpdateWeather;
  *(v5 + 144) = &off_100C7B258;
  *(v5 + 112) = v3;
  *(v5 + 176) = &type metadata for Delay;
  *(v5 + 184) = &off_100C500F8;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 216) = v0;
  *(v5 + 224) = &off_100C798F0;
  v6 = sub_100042FB0((v5 + 192));
  sub_1006395C4(v2, v6, type metadata accessor for DispatchAction);
  *(v5 + 256) = &type metadata for Delay;
  *(v5 + 264) = &off_100C500F8;
  *(v5 + 232) = 0x4000000000000000;
  *(v5 + 296) = &type metadata for Measure;
  *(v5 + 304) = &off_100C4E718;
  *(v5 + 272) = v4;
  *(v5 + 336) = &type metadata for Mica;
  *(v5 + 344) = &off_100C63A98;
  *(v5 + 312) = 1;
  sub_100639624(v2, type metadata accessor for DispatchAction);
  return v5;
}

uint64_t sub_100639498()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 1;
  sub_10022C350(&qword_100CA5FF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A2D320;
  *(v3 + 56) = v0;
  *(v3 + 64) = &off_100C5FB58;
  v4 = sub_100042FB0((v3 + 32));
  sub_1006395C4(v2, v4, type metadata accessor for Navigate);
  *(v3 + 96) = &type metadata for Delay;
  *(v3 + 104) = &off_100C500F8;
  *(v3 + 72) = 0x4008000000000000;
  sub_100639624(v2, type metadata accessor for Navigate);
  return v3;
}

uint64_t sub_1006395C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100639624(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10063969C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100639704(int a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v36 = a1;
  v38 = type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for DetailType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  v15 = type metadata accessor for DetailViewVisibilityTrackerModel();
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  v21 = v2[7];
  v20 = v2[8];
  sub_1000161C0(v3 + 4, v21);
  (*(*(v20 + 8) + 32))(v21);
  v22 = v3[7];
  v35 = v3[8];
  v34[1] = sub_1000161C0(v3 + 4, v22);
  v23 = *(v9 + 104);
  v24 = &enum case for DetailType.precipitationAverages(_:);
  v36 &= 1u;
  if (!v36)
  {
    v24 = &enum case for DetailType.temperatureAverages(_:);
  }

  v23(v11, *v24, v8);
  v25 = *(v9 + 32);
  v25(v14, v11, v8);
  v26 = *(v16 + 28);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v27 + 16))(v19 + v26, v37);
  v28 = *(v16 + 32);
  v29 = enum case for DetailViewOrigin.selector(_:);
  type metadata accessor for DetailViewOrigin();
  sub_1000037E8();
  (*(v30 + 104))(v19 + v28, v29);
  v25(v19, v14, v8);
  (*(*(v35 + 8) + 24))(v19, v22);
  sub_100639C14(v19, type metadata accessor for DetailViewVisibilityTrackerModel);
  v31 = v3[2];
  *v7 = v36;
  type metadata accessor for AveragesDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_10004F034(v7, v39, v31);
  sub_1000E17D8(v39);
  sub_10001F39C();
  return sub_100639C14(v7, v32);
}

uint64_t sub_100639A48(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = *(v1 + 16);
  sub_100639C6C(a1, v5 - v4);
  type metadata accessor for AveragesDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10004F034(v6, v10, v7);
  sub_1000E17D8(v10);
  sub_10001F39C();
  return sub_100639C14(v6, v8);
}

uint64_t sub_100639B28()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 16);
  type metadata accessor for AveragesDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v5);
  sub_1000E17D8(v8);
  sub_10001F39C();
  return sub_100639C14(v4, v6);
}

uint64_t sub_100639C14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100639C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PrecipitationAveragesHeroChartView()
{
  result = qword_100CCDA10;
  if (!qword_100CCDA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100639D44()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    sub_10044BFA8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PrecipitationAveragesHeroChartViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100639E14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCDCA8);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100005E40();
  v7 = sub_10022C350(&qword_100CB6978);
  type metadata accessor for RectangleMark();
  v17 = v7;
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, *a1, v7);
  v9 = sub_10022C350(&qword_100CB6968);
  type metadata accessor for PointMark();
  type metadata accessor for BasicChartSymbolShape();
  sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape);
  v10 = *(v2 + 56);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v3 + v10, a1[1], v9);
  v12 = sub_10022C350(&qword_100CB6948);
  v13 = *(v2 + 72);
  v14 = a1[2];
  v15 = *(v12 - 8);
  (*(v15 + 16))(v3 + v13, v14, v12);
  (*(v8 + 32))(a2, v3, v17);
  (*(v11 + 32))(a2 + *(v2 + 56), v3 + v10, v9);
  return (*(v15 + 32))(a2 + *(v2 + 72), v3 + v13, v12);
}

uint64_t sub_10063A070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCDC90);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100005E40();
  v6 = sub_10022C350(&qword_100CBAE28);
  sub_1004528C8();
  v13 = v6;
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, *a1, v6);
  v8 = sub_10022C350(&qword_100CBAE20);
  sub_1004529DC();
  v14 = v2[14];
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v14, a1[1], v8);
  sub_100452B80();
  v10 = v2[18];
  sub_1000302D8(a1[2], v3 + v10, &qword_100CBAC78);
  sub_100644088(&qword_100CBAC88, &qword_100CBAC90, &unk_100A505B0, sub_100452CF0);
  v11 = v2[22];
  sub_1000302D8(a1[3], v3 + v11, &qword_100CBAC90);
  (*(v7 + 32))(a2, v3, v13);
  (*(v9 + 32))(a2 + v2[14], v3 + v14, v8);
  sub_10011C0F0(v3 + v10, a2 + v2[18], &qword_100CBAC78);
  return sub_10011C0F0(v3 + v11, a2 + v2[22], &qword_100CBAC90);
}

uint64_t sub_10063A2BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCDC68);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  type metadata accessor for PeakUpperMark(0);
  sub_1006446D8(&qword_100CBACA8, type metadata accessor for PeakUpperMark);
  sub_100643F78(*a1, v7, type metadata accessor for PeakUpperMark);
  v8 = *(v5 + 56);
  sub_100643F78(a1[1], &v7[v8], type metadata accessor for PeakUpperMark);
  sub_10064402C(v7, a2, type metadata accessor for PeakUpperMark);
  return sub_10064402C(&v7[v8], a2 + *(v5 + 56), type metadata accessor for PeakUpperMark);
}

uint64_t sub_10063A3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_10022C350(&qword_100CCDC70);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = sub_10022C350(&qword_100CCDC50);
  type metadata accessor for RectangleMark();
  v8 = *a1;
  v20 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, v8, v7);
  v10 = sub_10022C350(&qword_100CCDAE0);
  sub_100642D48();
  v11 = v4[14];
  v21 = v11;
  v12 = *(v10 - 8);
  v13 = *(v12 + 16);
  v13(&v6[v11], a1[1], v10);
  v14 = v4[18];
  v13(&v6[v14], a1[2], v10);
  sub_100644088(&qword_100CCDB30, &qword_100CCDB38, &unk_100A6E7D0, sub_100643218);
  v15 = v4[22];
  sub_1000302D8(a1[3], &v6[v15], &qword_100CCDB38);
  v16 = v22;
  (*(v9 + 32))(v22, v6, v20);
  v17 = *(v12 + 32);
  v17(v16 + v4[14], &v6[v21], v10);
  v17(v16 + v4[18], &v6[v14], v10);
  return sub_10011C0F0(&v6[v15], v16 + v4[22], &qword_100CCDB38);
}

uint64_t sub_10063A64C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCDC80);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  type metadata accessor for PeakKnockoutMark();
  sub_1006446D8(&qword_100CBAC80, type metadata accessor for PeakKnockoutMark);
  sub_100643F78(*a1, v7, type metadata accessor for PeakKnockoutMark);
  v8 = sub_10022C350(&qword_100CB6948);
  type metadata accessor for PointMark();
  type metadata accessor for BasicChartSymbolShape();
  sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape);
  v9 = *(v5 + 56);
  v10 = a1[1];
  v11 = *(v8 - 8);
  (*(v11 + 16))(&v7[v9], v10, v8);
  sub_10064402C(v7, a2, type metadata accessor for PeakKnockoutMark);
  return (*(v11 + 32))(a2 + *(v5 + 56), &v7[v9], v8);
}

uint64_t sub_10063A818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCDC88);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = sub_10022C350(&qword_100CCDC78);
  type metadata accessor for LineMark();
  type metadata accessor for RectangleMark();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  sub_100642FBC();
  v10 = *(v5 + 56);
  sub_1000302D8(a1[1], &v7[v10], &qword_100CCDB18);
  (*(v9 + 32))(a2, v7, v8);
  return sub_10011C0F0(&v7[v10], a2 + *(v5 + 56), &qword_100CCDB18);
}

uint64_t sub_10063A978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCDD40);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100005E40();
  v7 = sub_10022C350(&qword_100CCDD48);
  sub_10023FBF4(&qword_100CCDCF0, &unk_100CCDCE8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, *a1, v7);
  sub_1006442F4();
  v9 = *(v2 + 56);
  sub_1000302D8(a1[1], v3 + v9, &qword_100CCDD00);
  (*(v8 + 32))(a2, v3, v7);
  return sub_10011C0F0(v3 + v9, a2 + *(v2 + 56), &qword_100CCDD00);
}

uint64_t sub_10063AAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CCDCB0) - 8;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_100644138();
  sub_100008B5C();
  sub_1000302D8(v8, v9, v10);
  sub_1006443D8();
  v11 = *(v4 + 56);
  sub_1000302D8(*(a1 + 8), &v7[v11], &qword_100CCDD10);
  sub_100008B5C();
  sub_10011C0F0(v12, v13, v14);
  return sub_10011C0F0(&v7[v11], a2 + *(v4 + 56), &qword_100CCDD10);
}

uint64_t sub_10063ABE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCDD50);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100005E40();
  sub_1006445F4();
  sub_100008B5C();
  sub_1000302D8(v7, v8, v9);
  v10 = type metadata accessor for ChartLineMark();
  sub_1006446D8(&qword_100CCDD70, &type metadata accessor for ChartLineMark);
  v11 = *(v2 + 56);
  v12 = *(a1 + 8);
  v13 = *(v10 - 8);
  (*(v13 + 16))(v3 + v11, v12, v10);
  sub_100008B5C();
  sub_10011C0F0(v14, v15, v16);
  return (*(v13 + 32))(a2 + *(v2 + 56), v3 + v11, v10);
}

uint64_t sub_10063AD44()
{
  sub_10022C350(&qword_100CCDD78);
  sub_100003828();
  __chkstk_darwin(v0);
  sub_100644720();
  sub_100008B5C();
  sub_1000302D8(v1, v2, v3);
  sub_100008B5C();
  sub_1000302D8(v4, v5, v6);
  sub_100008B5C();
  sub_10011C0F0(v7, v8, v9);
  sub_100008B5C();
  return sub_10011C0F0(v10, v11, v12);
}

uint64_t sub_10063AE2C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10022C350(&qword_100CCDA50);
  return sub_10063AE7C(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_10063AE7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = sub_10022C350(&qword_100CBAB80);
  __chkstk_darwin(v53);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v50 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v50);
  v10 = &v46 - v9;
  v11 = sub_10022C350(&qword_100CCDA58);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_10022C350(&qword_100CCDA60);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v54 = &v46 - v18;
  v51 = a1;
  sub_10063B3A8(a1, v13);
  v19 = enum case for DynamicTypeSize.accessibility1(_:);
  v20 = type metadata accessor for DynamicTypeSize();
  (*(*(v20 - 8) + 104))(v10, v19, v20);
  sub_1006446D8(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v47 = v14;
  v48 = a2;
  v49 = v5;
  sub_100642B84();
  sub_10023FBF4(&qword_100CA53C8, &unk_100CE1680);
  View.dynamicTypeSize<A>(_:)();
  sub_10003FDA0(v10, &unk_100CE1680);
  sub_10003FDA0(v13, &qword_100CCDA58);
  v21 = v51 + *(type metadata accessor for PrecipitationAveragesHeroChartView() + 24);
  v22 = *(v21 + 136);
  v23 = *(v21 + 144);
  v24 = *(v21 + 152);
  v25 = *(v21 + 160);
  type metadata accessor for ConditionDetailLegendView(0);

  Text.Measurements.init()();
  *v8 = v22;
  *(v8 + 1) = v23;
  *(v8 + 2) = v24;
  v8[24] = v25;
  if (qword_100CA2198 != -1)
  {
LABEL_5:
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5FD8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  swift_endAccess();
  v34 = static Edge.Set.all.getter();
  v35 = v52;
  v36 = &v8[*(v53 + 36)];
  *v36 = v34;
  *(v36 + 1) = v27;
  *(v36 + 2) = v29;
  *(v36 + 3) = v31;
  *(v36 + 4) = v33;
  v36[40] = 0;
  v37 = *(v15 + 16);
  v38 = v8;
  v39 = v54;
  v40 = v47;
  v37(v35, v54, v47);
  v41 = v49;
  sub_1000302D8(v38, v49, &qword_100CBAB80);
  v42 = v48;
  v37(v48, v35, v40);
  v43 = sub_10022C350(&qword_100CCDA80);
  sub_1000302D8(v41, &v42[*(v43 + 48)], &qword_100CBAB80);
  sub_10003FDA0(v38, &qword_100CBAB80);
  v44 = *(v15 + 8);
  v44(v39, v40);
  sub_10003FDA0(v41, &qword_100CBAB80);
  return (v44)(v35, v40);
}

uint64_t sub_10063B3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v136 = *(v3 - 8);
  v137 = v3;
  __chkstk_darwin(v3);
  v135 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v176 = *(v5 - 8);
  v177 = v5;
  __chkstk_darwin(v5);
  v175 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DynamicTypeSize();
  v173 = *(v7 - 8);
  v174 = v7;
  __chkstk_darwin(v7);
  v172 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v161);
  v167 = (&v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PrecipitationAveragesHeroChartView();
  v11 = v10 - 8;
  v151 = *(v10 - 8);
  v181 = *(v151 + 64);
  __chkstk_darwin(v10);
  v179 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AutomaticScaleDomain();
  v14 = *(v13 - 8);
  v157 = v13;
  v158 = v14;
  __chkstk_darwin(v13);
  v150 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CBABB8);
  __chkstk_darwin(v16 - 8);
  v18 = &v135 - v17;
  v145 = type metadata accessor for PlotDimensionScaleRange();
  v184 = *(v145 - 8);
  __chkstk_darwin(v145);
  v20 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CCDA88);
  v144 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v135 - v22;
  v147 = sub_10022C350(&qword_100CCDA90);
  v149 = *(v147 - 8);
  __chkstk_darwin(v147);
  v141 = &v135 - v24;
  v25 = sub_10022C350(&qword_100CCDA98);
  v26 = *(v25 - 8);
  v152 = v25;
  v153 = v26;
  __chkstk_darwin(v25);
  v146 = &v135 - v27;
  v28 = sub_10022C350(&qword_100CCDAA0);
  v29 = *(v28 - 8);
  v154 = v28;
  v155 = v29;
  __chkstk_darwin(v28);
  v148 = &v135 - v30;
  v31 = sub_10022C350(&qword_100CCDAA8);
  v32 = *(v31 - 8);
  v159 = v31;
  v160 = v32;
  __chkstk_darwin(v31);
  v180 = &v135 - v33;
  v163 = sub_10022C350(&qword_100CCDAB0);
  __chkstk_darwin(v163);
  v156 = &v135 - v34;
  v168 = sub_10022C350(&qword_100CCDAB8);
  v164 = *(v168 - 8);
  __chkstk_darwin(v168);
  v162 = &v135 - v35;
  v36 = sub_10022C350(&qword_100CCDAC0);
  v170 = *(v36 - 8);
  v171 = v36;
  __chkstk_darwin(v36);
  v169 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v166 = &v135 - v39;
  v40 = type metadata accessor for DetailHeroChartHeaderView();
  v41 = v40 - 8;
  __chkstk_darwin(v40);
  v165 = &v135 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = (&v135 - v44);
  v46 = (a1 + *(v11 + 32));
  v47 = v46[1];
  v196 = *v46;
  v197 = v47;
  v48 = v46[3];
  v198 = v46[2];
  v199 = v48;
  v49 = type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  sub_100643F78(v46 + *(v49 + 56), v45 + *(v41 + 28), type metadata accessor for DetailHeroChartLollipopModel);
  v50 = v199;
  v45[2] = v198;
  v45[3] = v50;
  v51 = v197;
  *v45 = v196;
  v45[1] = v51;
  *&v193 = 0x3FF0000000000000;
  sub_1004526D8(&v196, &v190);
  sub_10014AB54();
  v182 = v45;
  ScaledMetric.init(wrappedValue:)();
  v187 = a1;
  v183 = a1;
  sub_10022C350(&qword_100CCDAC8);
  sub_100642C3C();
  Chart.init(content:)();
  static PositionScaleRange<>.plotDimension.getter();
  v139 = type metadata accessor for ScaleType();
  sub_10001B350(v18, 1, 1, v139);
  v138 = sub_10023FBF4(&qword_100CCDB50, &qword_100CCDA88);
  v52 = v20;
  v53 = v21;
  v54 = v145;
  View.chartXScale<A>(range:type:)();
  v55 = v18;
  sub_10003FDA0(v18, &qword_100CBABB8);
  v56 = *(v184 + 8);
  v184 += 8;
  v140 = v56;
  v57 = v54;
  v56(v52, v54);
  (*(v144 + 1))(v23, v53);
  v144 = type metadata accessor for PrecipitationAveragesHeroChartView;
  v58 = v179;
  sub_100643F78(a1, v179, type metadata accessor for PrecipitationAveragesHeroChartView);
  v151 = *(v151 + 80);
  v59 = (v151 + 16) & ~v151;
  v142 = v59;
  v60 = swift_allocObject();
  v143 = type metadata accessor for PrecipitationAveragesHeroChartView;
  sub_10064402C(v58, v60 + v59, type metadata accessor for PrecipitationAveragesHeroChartView);
  v61 = v150;
  static ScaleDomain<>.automatic<A>(includesZero:reversed:dataType:modifyInferredDomain:)();

  static PositionScaleRange<>.plotDimension(startPadding:endPadding:)();
  sub_10001B350(v55, 1, 1, v139);
  *&v190 = v53;
  *(&v190 + 1) = v57;
  *&v191 = v138;
  *(&v191 + 1) = &protocol witness table for PlotDimensionScaleRange;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v146;
  v64 = v61;
  v65 = v147;
  v66 = v157;
  v67 = v141;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_10003FDA0(v55, &qword_100CBABB8);
  v140(v52, v57);
  v68 = v64;
  v69 = v66;
  (*(v158 + 8))(v68, v66);
  (*(v149 + 8))(v67, v65);
  v70 = v183;
  v186 = v183;
  v71 = sub_10022C350(&qword_100CCDB58);
  *&v190 = v65;
  *(&v190 + 1) = v69;
  *&v191 = v57;
  *(&v191 + 1) = OpaqueTypeConformance2;
  *&v192 = &protocol witness table for AutomaticScaleDomain;
  *(&v192 + 1) = &protocol witness table for PlotDimensionScaleRange;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_10023FBF4(&qword_100CCDB60, &qword_100CCDB58);
  v74 = v148;
  v75 = v152;
  View.chartXAxis<A>(content:)();
  v76 = v75;
  (*(v153 + 8))(v63, v75);
  v185 = v70;
  v77 = sub_10022C350(&qword_100CCDB68);
  *&v190 = v76;
  *(&v190 + 1) = v71;
  *&v191 = v72;
  *(&v191 + 1) = v73;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_100643380();
  v80 = v154;
  View.chartYAxis<A>(content:)();
  (*(v155 + 8))(v74, v80);
  v81 = v179;
  sub_100643F78(v70, v179, v144);
  v82 = v142;
  v83 = swift_allocObject();
  sub_10064402C(v81, v83 + v82, v143);
  static Alignment.center.getter();
  sub_10022C350(&qword_100CBACE0);
  *&v190 = v80;
  *(&v190 + 1) = v77;
  *&v191 = v78;
  *(&v191 + 1) = v79;
  swift_getOpaqueTypeConformance2();
  v84 = v156;
  sub_10023FBF4(&qword_100CBACE8, &qword_100CBACE0);
  v85 = v159;
  v86 = v180;
  View.chartOverlay<A>(alignment:content:)();

  (*(v160 + 8))(v86, v85);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F28();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v87 = &v84[*(sub_10022C350(&qword_100CCDB88) + 36)];
  v88 = v191;
  *v87 = v190;
  *(v87 + 1) = v88;
  *(v87 + 2) = v192;
  v89 = static Alignment.center.getter();
  v91 = v90;
  v92 = &v84[*(sub_10022C350(&qword_100CCDB90) + 36)];
  swift_beginAccess();
  v93 = sub_1004B5F4C();
  v94 = *(v161 + 20);
  v95 = enum case for RoundedCornerStyle.continuous(_:);
  v96 = type metadata accessor for RoundedCornerStyle();
  v97 = v84;
  v98 = v167;
  (*(*(v96 - 8) + 104))(v167 + v94, v95, v96);
  *v98 = v93;
  v98[1] = v93;
  v99 = sub_1004B5F70();
  swift_endAccess();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100643F78(v98, v92, &type metadata accessor for RoundedRectangle);
  v100 = v92 + *(sub_10022C350(&qword_100CBACF8) + 36);
  v101 = v194;
  *v100 = v193;
  *(v100 + 16) = v101;
  *(v100 + 32) = v195;
  v102 = sub_10022C350(&qword_100CBAD00);
  *(v92 + *(v102 + 52)) = v99;
  *(v92 + *(v102 + 56)) = 256;
  v103 = static Alignment.center.getter();
  v105 = v104;
  sub_100643FD4(v98, &type metadata accessor for RoundedRectangle);
  v106 = (v92 + *(sub_10022C350(&qword_100CBAD08) + 36));
  *v106 = v103;
  v106[1] = v105;
  v107 = (v92 + *(sub_10022C350(&qword_100CBAD10) + 36));
  *v107 = v89;
  v107[1] = v91;
  v108 = static Edge.Set.horizontal.getter();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA278();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v109 = v163;
  v110 = v97 + *(v163 + 36);
  *v110 = v108;
  *(v110 + 8) = v111;
  *(v110 + 16) = v112;
  *(v110 + 24) = v113;
  *(v110 + 32) = v114;
  *(v110 + 40) = 0;
  v116 = v172;
  v115 = v173;
  v117 = v174;
  (*(v173 + 104))(v172, enum case for DynamicTypeSize.large(_:), v174);
  v118 = sub_100643494();
  v119 = v162;
  View.dynamicTypeSize(_:)();
  (*(v115 + 8))(v116, v117);
  sub_10003FDA0(v97, &qword_100CCDAB0);
  v120 = *v183;
  if (*(v183 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v122 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v123 = v135;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v120, 0);
    (*(v136 + 8))(v123, v137);
    v121 = v175;
    if (v188 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    static AccessibilityChildBehavior.contain.getter();
    goto LABEL_10;
  }

  v121 = v175;
  if (v120)
  {
    goto LABEL_9;
  }

LABEL_7:
  static AccessibilityChildBehavior.ignore.getter();
LABEL_10:
  v188 = v109;
  v189 = v118;
  swift_getOpaqueTypeConformance2();
  v124 = v166;
  v125 = v168;
  View.accessibilityElement(children:)();
  (*(v176 + 8))(v121, v177);
  (*(v164 + 8))(v119, v125);
  v126 = v165;
  sub_100643F78(v182, v165, type metadata accessor for DetailHeroChartHeaderView);
  v128 = v169;
  v127 = v170;
  v129 = *(v170 + 16);
  v130 = v171;
  v129(v169, v124, v171);
  v131 = v178;
  sub_100643F78(v126, v178, type metadata accessor for DetailHeroChartHeaderView);
  v132 = sub_10022C350(&qword_100CCDBB0);
  v129((v131 + *(v132 + 48)), v128, v130);
  v133 = *(v127 + 8);
  v133(v124, v130);
  sub_100643FD4(v182, type metadata accessor for DetailHeroChartHeaderView);
  v133(v128, v130);
  return sub_100643FD4(v126, type metadata accessor for DetailHeroChartHeaderView);
}

uint64_t sub_10063C814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v119 = type metadata accessor for LollipopMark(0);
  __chkstk_darwin(v119);
  v118 = &active - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  __chkstk_darwin(active);
  v117 = &active - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CCDB48);
  __chkstk_darwin(v5 - 8);
  v125 = &active - v6;
  v120 = type metadata accessor for PeakUpperMark(0);
  __chkstk_darwin(v120);
  v124 = &active - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = &active - v9;
  __chkstk_darwin(v10);
  v122 = &active - v11;
  __chkstk_darwin(v12);
  v121 = &active - v13;
  v133 = type metadata accessor for DetailHeroChartLollipopModel(0);
  __chkstk_darwin(v133);
  v141 = &active - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CCDB38);
  __chkstk_darwin(v15 - 8);
  v139 = &active - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &active - v18;
  v19 = type metadata accessor for PrecipitationAveragesHeroChartView();
  v20 = v19 - 8;
  v131 = *(v19 - 8);
  __chkstk_darwin(v19);
  v142 = v21;
  v132 = &active - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_10022C350(&qword_100CCDAE0);
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &active - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v149 = &active - v24;
  __chkstk_darwin(v25);
  v143 = &active - v26;
  __chkstk_darwin(v27);
  v148 = &active - v28;
  v29 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v29 - 8);
  v129 = type metadata accessor for RectangleMark();
  v30 = *(v129 - 1);
  __chkstk_darwin(v129);
  v32 = &active - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10022C350(&qword_100CCDC50);
  v134 = *(v147 - 8);
  __chkstk_darwin(v147);
  v146 = &active - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &active - v35;
  LocalizedStringKey.init(stringLiteral:)();
  v37 = *(v20 + 32);
  v144 = a1;
  v38 = a1 + v37;
  v130 = type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();

  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F28();
  RectangleMark.init<A>(x:yStart:yEnd:width:)();
  LODWORD(v150) = static HierarchicalShapeStyle.tertiary.getter();
  v145 = v36;
  v39 = v129;
  ChartContent.foregroundStyle<A>(_:)();
  (*(v30 + 8))(v32, v39);
  v155 = *(v38 + 72);
  v129 = type metadata accessor for PrecipitationAveragesHeroChartView;
  v40 = v132;
  sub_100643F78(v144, v132, type metadata accessor for PrecipitationAveragesHeroChartView);
  v128 = v38;
  v41 = (*(v131 + 80) + 16) & ~*(v131 + 80);
  v42 = swift_allocObject();
  v131 = type metadata accessor for PrecipitationAveragesHeroChartView;
  sub_10064402C(v40, v42 + v41, type metadata accessor for PrecipitationAveragesHeroChartView);

  v127 = sub_10022C350(&qword_100CBAE30);
  v126 = sub_10022C350(&qword_100CCDAF0);
  sub_10023FBF4(&qword_100CBAE40, &qword_100CBAE30);
  sub_100642DCC();
  sub_1006446D8(&qword_100CCDC58, &type metadata accessor for DetailChartDataElement);
  ForEach<>.init(_:content:)();
  v43 = v128;
  v154 = *(v128 + 64);
  sub_100643F78(v144, v40, v129);
  v44 = swift_allocObject();
  sub_10064402C(v40, v44 + v41, v131);

  ForEach<>.init(_:content:)();
  v45 = v130;
  v46 = v141;
  sub_100643F78(v43 + *(v130 + 56), v141, type metadata accessor for DetailHeroChartLollipopModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v117;
    sub_10064402C(v46, v117, type metadata accessor for DetailHeroChartActiveLollipopModel);
    v48 = v118;
    sub_100643F78(v47 + *(active + 20), v118, type metadata accessor for LollipopMarkModel);
    v49 = LocalizedStringKey.init(stringLiteral:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = LocalizedStringKey.init(stringLiteral:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_100643FD4(v47, type metadata accessor for DetailHeroChartActiveLollipopModel);
    v63 = v119;
    v64 = v48 + *(v119 + 24);
    *v64 = v56;
    *(v64 + 8) = v58;
    *(v64 + 16) = v60 & 1;
    *(v64 + 24) = v62;
    v65 = v48 + *(v63 + 20);
    *v65 = v49;
    *(v65 + 8) = v51;
    *(v65 + 16) = v53 & 1;
    *(v65 + 24) = v55;
    v66 = v137;
    sub_10064402C(v48, v137, type metadata accessor for LollipopMark);
    sub_10022C350(&qword_100CCDC60);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v67 = v45;
    v68 = v121;
    sub_100643F78(v43 + *(v45 + 52), v121, type metadata accessor for PeakUpperMarkModel);
    v69 = [objc_opt_self() secondaryLabelColor];
    v70 = Color.init(_:)();
    v71 = LocalizedStringKey.init(stringLiteral:)();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = LocalizedStringKey.init(stringLiteral:)();
    v79 = v120;
    *(v68 + *(v120 + 20)) = v70;
    *(v68 + v79[6]) = 0x4024000000000000;
    v80 = v68 + v79[7];
    *v80 = v71;
    *(v80 + 8) = v73;
    *(v80 + 16) = v75 & 1;
    *(v80 + 24) = v77;
    v81 = v68 + v79[8];
    *v81 = v78;
    *(v81 + 8) = v82;
    *(v81 + 16) = v83 & 1;
    *(v81 + 24) = v84;
    v85 = v122;
    sub_100643F78(v43 + *(v67 + 48), v122, type metadata accessor for PeakUpperMarkModel);
    v86 = static Color.white.getter();
    v87 = LocalizedStringKey.init(stringLiteral:)();
    v89 = v88;
    LOBYTE(v73) = v90;
    v92 = v91;
    v93 = LocalizedStringKey.init(stringLiteral:)();
    *(v85 + v79[5]) = v86;
    *(v85 + v79[6]) = 0x4018000000000000;
    v94 = v85 + v79[7];
    *v94 = v87;
    *(v94 + 8) = v89;
    *(v94 + 16) = v73 & 1;
    *(v94 + 24) = v92;
    v95 = v85 + v79[8];
    *v95 = v93;
    *(v95 + 8) = v96;
    *(v95 + 16) = v97 & 1;
    *(v95 + 24) = v98;
    v99 = v123;
    sub_100643F78(v68, v123, type metadata accessor for PeakUpperMark);
    v150 = v99;
    v100 = v124;
    sub_100643F78(v85, v124, type metadata accessor for PeakUpperMark);
    v151 = v100;
    v101 = v125;
    sub_10063A2BC(&v150, v125);
    sub_100643FD4(v85, type metadata accessor for PeakUpperMark);
    sub_100643FD4(v68, type metadata accessor for PeakUpperMark);
    sub_100643FD4(v100, type metadata accessor for PeakUpperMark);
    sub_100643FD4(v99, type metadata accessor for PeakUpperMark);
    v66 = v137;
    sub_10011C0F0(v101, v137, &qword_100CCDB48);
    sub_10022C350(&qword_100CCDC60);
    swift_storeEnumTagMultiPayload();
    sub_100643FD4(v141, type metadata accessor for DetailHeroChartLollipopModel);
  }

  v102 = v134;
  v103 = v146;
  (*(v134 + 16))(v146, v145, v147);
  v150 = v103;
  v104 = v136;
  v105 = *(v136 + 16);
  v106 = v148;
  v107 = v149;
  v108 = v138;
  v105(v149, v148, v138);
  v151 = v107;
  v109 = v135;
  v110 = v143;
  v105(v135, v143, v108);
  v152 = v109;
  v111 = v139;
  sub_1000302D8(v66, v139, &qword_100CCDB38);
  v153 = v111;
  sub_10063A3F0(&v150, v140);
  sub_10003FDA0(v66, &qword_100CCDB38);
  v112 = *(v104 + 8);
  v112(v110, v108);
  v112(v106, v108);
  v113 = *(v102 + 8);
  v114 = v147;
  v113(v145, v147);
  sub_10003FDA0(v111, &qword_100CCDB38);
  v112(v109, v108);
  v112(v149, v108);
  return (v113)(v146, v114);
}

uint64_t sub_10063D710(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16);
  if (v2)
  {
    v4 = result;
    v5 = *(*result + 8 * v2 + 24);
    result = type metadata accessor for PrecipitationAveragesHeroChartView();
    v6 = *(a2 + *(result + 24) + 88);
    if (v5 < v6)
    {

      sub_10022C350(&qword_100CAB9C0);
      result = swift_allocObject();
      *(result + 16) = xmmword_100A2D320;
      *(result + 32) = 0;
      *(result + 40) = v6;
      *v4 = result;
    }
  }

  return result;
}

uint64_t sub_10063D7B4()
{
  v1 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for PrecipitationAveragesHeroChartView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100643F78(v0, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrecipitationAveragesHeroChartView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10064402C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PrecipitationAveragesHeroChartView);

  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_10022C350(&qword_100CCDBC0);
  type metadata accessor for Date();
  sub_100643A30();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_10063D9E4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for PrecipitationAveragesHeroChartView();
  v4 = v3 - 8;
  v21 = *(v3 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10022C350(&qword_100CCDB80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = v1 + *(v4 + 32);
  v13 = *(v12 + 88);
  v14 = *(v12 + 96);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.trailing.getter();
  if (v14 >= v13)
  {
    static AxisMarkValues.automatic.getter();
    sub_100643F78(v1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrecipitationAveragesHeroChartView);
    v18 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v19 = swift_allocObject();
    sub_10064402C(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PrecipitationAveragesHeroChartView);
    sub_10022C350(&qword_100CBAD60);
    sub_10045349C();
    AxisMarks.init(preset:position:values:content:)();
  }

  else
  {
    sub_10022C350(&qword_100CAB9C0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100A2D320;
    *(v15 + 32) = 0;
    *(v15 + 40) = v13;
    sub_100643F78(v1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrecipitationAveragesHeroChartView);
    v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v17 = swift_allocObject();
    sub_10064402C(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PrecipitationAveragesHeroChartView);
    sub_10022C350(&qword_100CBAD60);
    sub_10045349C();
    AxisMarks.init<A>(preset:position:values:content:)();
  }

  (*(v9 + 32))(v22, v11, v8);
  sub_10022C350(&qword_100CCDBB8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10063DE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = type metadata accessor for ChartProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrecipitationAveragesHeroChartView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_100643F78(a2, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrecipitationAveragesHeroChartView);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_10064402C(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for PrecipitationAveragesHeroChartView);
  result = (*(v7 + 32))(v15 + v14, v9, v6);
  *a3 = sub_1006438DC;
  a3[1] = v15;
  return result;
}

uint64_t sub_10063E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = static Alignment.topLeading.getter();
  a4[1] = v8;
  v9 = sub_10022C350(&qword_100CBAD40);
  return sub_10063E098(a2, a3, a1, a4 + *(v9 + 44));
}

uint64_t sub_10063E098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  __chkstk_darwin(active);
  v31 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for DetailHeroChartLollipopModel(0);
  __chkstk_darwin(v32);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035B30(a1 + 16, a4);
  v11 = type metadata accessor for LollipopChartOverlayView();
  v12 = v11[5];
  v13 = type metadata accessor for ChartProxy();
  (*(*(v13 - 8) + 16))(a4 + v12, a2, v13);
  v14 = v11[6];
  v15 = type metadata accessor for GeometryProxy();
  (*(*(v15 - 8) + 16))(a4 + v14, a3, v15);
  v16 = a1 + *(type metadata accessor for PrecipitationAveragesHeroChartView() + 24);
  v17 = type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  v18 = v17[15];
  v19 = v11[7];
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 16);
  v21(a4 + v19, v16 + v18, v20);
  v21(a4 + v11[8], v16 + v17[16], v20);
  sub_100643F78(v16 + v17[14], v10, type metadata accessor for DetailHeroChartLollipopModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v31;
    sub_10064402C(v10, v31, type metadata accessor for DetailHeroChartActiveLollipopModel);
    v23 = *v25;
    v26 = v25 + *(active + 20);
    v24 = *&v26[*(type metadata accessor for LollipopMarkModel(0) + 20)];
    sub_100643FD4(v25, type metadata accessor for DetailHeroChartActiveLollipopModel);
  }

  else
  {
    sub_100643FD4(v10, type metadata accessor for DetailHeroChartLollipopModel);
    v23 = 0;
    v24 = 0;
  }

  *(a4 + v11[10]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  result = swift_storeEnumTagMultiPayload();
  v28 = a4 + v11[9];
  *v28 = v23;
  *(v28 + 8) = v24;
  *(v28 + 16) = EnumCaseMultiPayload != 1;
  return result;
}

uint64_t sub_10063E3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v128 = a3;
  v127 = sub_10022C350(&qword_100CCDB28);
  __chkstk_darwin(v127);
  v102 = &v91 - v4;
  v98 = sub_10022C350(&qword_100CB6960);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v91 - v5;
  v101 = sub_10022C350(&qword_100CB6948);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v91 - v8;
  v92 = type metadata accessor for PeakKnockoutMark();
  __chkstk_darwin(v92);
  v94 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v91 - v11;
  v12 = sub_10022C350(&qword_100CCDB18);
  __chkstk_darwin(v12 - 8);
  v126 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = &v91 - v15;
  v16 = sub_10022C350(&qword_100CBAE58);
  __chkstk_darwin(v16 - 8);
  v112 = &v91 - v17;
  v18 = sub_10022C350(&qword_100CB6950);
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for Date();
  v129 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v22 - 8);
  v103 = &v91 - v23;
  v108 = type metadata accessor for LineMark();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10022C350(&qword_100CBAC68);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v106 = &v91 - v26;
  v117 = sub_10022C350(&qword_100CCDB08);
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v107 = &v91 - v27;
  v119 = sub_10022C350(&qword_100CCDAF8);
  v120 = *(v119 - 8);
  __chkstk_darwin(v119);
  v109 = &v91 - v28;
  v29 = sub_10022C350(&qword_100CCDC78);
  v123 = *(v29 - 8);
  v124 = v29;
  __chkstk_darwin(v29);
  v122 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v113 = &v91 - v32;
  LocalizedStringKey.init(stringLiteral:)();
  v104 = a1;
  DetailChartDataElement.date.getter();
  v111 = v21;
  static PlottableValue.value(_:_:)();

  v33 = *(v129 + 8);
  v129 += 8;
  v114 = v33;
  v105 = v19;
  v33(v21, v19);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.value.getter();
  v135[0] = v34;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v135[0] = 0x65676172657641;
  v135[1] = 0xE700000000000000;
  static PlottableValue.value(_:_:)();

  LineMark.init<A, B, C>(x:y:series:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v35 = v106;
  v36 = v108;
  ChartContent.lineStyle(_:)();
  sub_100453E98(v135);
  v37 = v36;
  (*(v110 + 8))(v25, v36);
  v38 = objc_opt_self();
  v39 = [v38 systemGray2Color];
  v134 = Color.init(uiColor:)();
  v130 = v37;
  v131 = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v107;
  v42 = v115;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v116 + 8))(v35, v42);
  v130 = v42;
  v131 = &type metadata for Color;
  v132 = OpaqueTypeConformance2;
  v133 = &protocol witness table for Color;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v109;
  v45 = v117;
  ChartContent.interpolationMethod(_:)();
  (*(v118 + 8))(v41, v45);
  sub_10022C350(&qword_100CCDB00);
  v130 = v45;
  v131 = v43;
  swift_getOpaqueTypeConformance2();
  v130 = type metadata accessor for RectangleMark();
  v131 = &protocol witness table for RectangleMark;
  swift_getOpaqueTypeConformance2();
  v46 = v113;
  v47 = v119;
  ChartContent.mask<A>(content:)();
  (*(v120 + 8))(v44, v47);
  v48 = v111;
  DetailChartDataElement.date.getter();
  type metadata accessor for PrecipitationAveragesHeroChartView();
  type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  LOBYTE(v43) = static Date.== infix(_:_:)();
  v114(v48, v105);
  if (v43)
  {
    v49 = v93;
    DetailChartDataElement.date.getter();
    DetailChartDataElement.value.getter();
    v51 = v50;
    v52 = LocalizedStringKey.init(stringLiteral:)();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = LocalizedStringKey.init(stringLiteral:)();
    v60 = v92;
    *(v49 + *(v92 + 20)) = v51;
    *(v49 + v60[6]) = 0;
    v61 = v49 + v60[8];
    *v61 = v59;
    *(v61 + 8) = v62;
    *(v61 + 16) = v63 & 1;
    *(v61 + 24) = v64;
    v65 = v49 + v60[7];
    *v65 = v52;
    *(v65 + 8) = v54;
    *(v65 + 16) = v56 & 1;
    *(v65 + 24) = v58;
    v66 = v96;
    sub_10063F390(v96);
    v67 = [v38 systemGray2Color];
    v134 = Color.init(uiColor:)();
    v68 = sub_10022E824(&qword_100CB6958);
    v69 = type metadata accessor for PointMark();
    v70 = type metadata accessor for BasicChartSymbolShape();
    v71 = sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape);
    v130 = v69;
    v131 = v70;
    v132 = &protocol witness table for PointMark;
    v133 = v71;
    v72 = swift_getOpaqueTypeConformance2();
    v130 = v68;
    v131 = v72;
    swift_getOpaqueTypeConformance2();
    v73 = v95;
    v74 = v98;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v97 + 8))(v66, v74);
    v75 = v94;
    sub_100643F78(v49, v94, type metadata accessor for PeakKnockoutMark);
    v130 = v75;
    v76 = v100;
    v77 = v99;
    v78 = v101;
    (*(v100 + 16))(v99, v73, v101);
    v131 = v77;
    v79 = v102;
    sub_10063A64C(&v130, v102);
    v80 = *(v76 + 8);
    v80(v73, v78);
    sub_100643FD4(v49, type metadata accessor for PeakKnockoutMark);
    v80(v77, v78);
    sub_100643FD4(v75, type metadata accessor for PeakKnockoutMark);
    v81 = v79;
    v82 = v125;
    sub_10011C0F0(v81, v125, &qword_100CCDB28);
    v83 = v82;
    v84 = 0;
  }

  else
  {
    v82 = v125;
    v83 = v125;
    v84 = 1;
  }

  sub_10001B350(v83, v84, 1, v127);
  v86 = v122;
  v85 = v123;
  v87 = v124;
  (*(v123 + 16))(v122, v46, v124);
  v130 = v86;
  v88 = v126;
  sub_1000302D8(v82, v126, &qword_100CCDB18);
  v131 = v88;
  sub_10063A818(&v130, v128);
  sub_10003FDA0(v82, &qword_100CCDB18);
  v89 = *(v85 + 8);
  v89(v46, v87);
  sub_10003FDA0(v88, &qword_100CCDB18);
  return (v89)(v86, v87);
}

uint64_t sub_10063F390@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for BasicChartSymbolShape();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  __chkstk_darwin(v1);
  v32 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB6950);
  __chkstk_darwin(v4 - 8);
  v28 = v25 - v5;
  v26 = type metadata accessor for Date();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v9 - 8);
  v25[1] = v25 - v10;
  v27 = type metadata accessor for PointMark();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CB6958);
  v14 = *(v13 - 8);
  v30 = v13;
  v31 = v14;
  __chkstk_darwin(v13);
  v16 = v25 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.date.getter();
  v17 = v26;
  static PlottableValue.value(_:_:)();

  (*(v6 + 8))(v8, v17);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.value.getter();
  v36 = v18;
  static PlottableValue.value(_:_:)();

  PointMark.init<A, B>(x:y:)();
  v19 = v32;
  static ChartSymbolShape<>.circle.getter();
  v20 = sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape);
  v21 = v27;
  v22 = v33;
  ChartContent.symbol<A>(_:)();
  (*(v34 + 8))(v19, v22);
  (*(v29 + 8))(v12, v21);
  v36 = v21;
  v37 = v22;
  v38 = &protocol witness table for PointMark;
  v39 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v30;
  ChartContent.symbolSize(_:)();
  return (*(v31 + 8))(v16, v23);
}

uint64_t sub_10063F884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v124 = a3;
  v123 = sub_10022C350(&qword_100CCDB28);
  __chkstk_darwin(v123);
  v98 = &v88 - v4;
  v94 = sub_10022C350(&qword_100CB6960);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v88 - v5;
  v97 = sub_10022C350(&qword_100CB6948);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v88 - v8;
  v88 = type metadata accessor for PeakKnockoutMark();
  __chkstk_darwin(v88);
  v90 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v88 - v11;
  v12 = sub_10022C350(&qword_100CCDB18);
  __chkstk_darwin(v12 - 8);
  v122 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v121 = &v88 - v15;
  v16 = sub_10022C350(&qword_100CBAE58);
  __chkstk_darwin(v16 - 8);
  v111 = &v88 - v17;
  v18 = sub_10022C350(&qword_100CB6950);
  __chkstk_darwin(v18 - 8);
  v103 = &v88 - v19;
  v20 = type metadata accessor for Date();
  v126 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v23 - 8);
  v100 = &v88 - v24;
  v107 = type metadata accessor for LineMark();
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10022C350(&qword_100CBAC68);
  v112 = *(v110 - 8);
  __chkstk_darwin(v110);
  v102 = &v88 - v27;
  v113 = sub_10022C350(&qword_100CCDB08);
  v114 = *(v113 - 8);
  __chkstk_darwin(v113);
  v104 = &v88 - v28;
  v115 = sub_10022C350(&qword_100CCDAF8);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v105 = &v88 - v29;
  v30 = sub_10022C350(&qword_100CCDC78);
  v119 = *(v30 - 8);
  v120 = v30;
  __chkstk_darwin(v30);
  v118 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v125 = &v88 - v33;
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.date.getter();
  v106 = v22;
  static PlottableValue.value(_:_:)();

  v34 = *(v126 + 8);
  v126 += 8;
  v109 = v34;
  v101 = v20;
  v34(v22, v20);
  LocalizedStringKey.init(stringLiteral:)();
  v99 = a1;
  DetailChartDataElement.value.getter();
  v132[0] = v35;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  strcpy(v132, "Precipitation");
  HIWORD(v132[1]) = -4864;
  static PlottableValue.value(_:_:)();

  LineMark.init<A, B, C>(x:y:series:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v36 = v102;
  v37 = v107;
  ChartContent.lineStyle(_:)();
  sub_100453E98(v132);
  (*(v108 + 8))(v26, v37);
  v131 = static Color.cyan.getter();
  v127 = v37;
  v128 = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v104;
  v40 = v110;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v112 + 8))(v36, v40);
  v127 = v40;
  v128 = &type metadata for Color;
  v129 = OpaqueTypeConformance2;
  v130 = &protocol witness table for Color;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v105;
  v43 = v113;
  ChartContent.interpolationMethod(_:)();
  (*(v114 + 8))(v39, v43);
  sub_10022C350(&qword_100CCDB00);
  v127 = v43;
  v128 = v41;
  swift_getOpaqueTypeConformance2();
  v127 = type metadata accessor for RectangleMark();
  v128 = &protocol witness table for RectangleMark;
  swift_getOpaqueTypeConformance2();
  v44 = v115;
  ChartContent.mask<A>(content:)();
  (*(v116 + 8))(v42, v44);
  v45 = v106;
  DetailChartDataElement.date.getter();
  type metadata accessor for PrecipitationAveragesHeroChartView();
  type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  LOBYTE(v41) = static Date.== infix(_:_:)();
  v109(v45, v101);
  if (v41)
  {
    v46 = v89;
    DetailChartDataElement.date.getter();
    DetailChartDataElement.value.getter();
    v48 = v47;
    v49 = LocalizedStringKey.init(stringLiteral:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = LocalizedStringKey.init(stringLiteral:)();
    v57 = v88;
    *(v46 + *(v88 + 20)) = v48;
    *(v46 + v57[6]) = 0;
    v58 = v46 + v57[8];
    *v58 = v56;
    *(v58 + 8) = v59;
    *(v58 + 16) = v60 & 1;
    *(v58 + 24) = v61;
    v62 = v46 + v57[7];
    *v62 = v49;
    *(v62 + 8) = v51;
    *(v62 + 16) = v53 & 1;
    *(v62 + 24) = v55;
    v63 = v92;
    sub_10063F390(v92);
    v131 = static Color.white.getter();
    v64 = sub_10022E824(&qword_100CB6958);
    v65 = type metadata accessor for PointMark();
    v66 = type metadata accessor for BasicChartSymbolShape();
    v67 = sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape);
    v127 = v65;
    v128 = v66;
    v129 = &protocol witness table for PointMark;
    v130 = v67;
    v68 = swift_getOpaqueTypeConformance2();
    v127 = v64;
    v128 = v68;
    swift_getOpaqueTypeConformance2();
    v69 = v91;
    v70 = v94;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v93 + 8))(v63, v70);
    v71 = v90;
    sub_100643F78(v46, v90, type metadata accessor for PeakKnockoutMark);
    v127 = v71;
    v72 = v96;
    v73 = v95;
    v74 = v97;
    (*(v96 + 16))(v95, v69, v97);
    v128 = v73;
    v75 = v98;
    sub_10063A64C(&v127, v98);
    v76 = *(v72 + 8);
    v76(v69, v74);
    sub_100643FD4(v46, type metadata accessor for PeakKnockoutMark);
    v76(v73, v74);
    sub_100643FD4(v71, type metadata accessor for PeakKnockoutMark);
    v77 = v75;
    v78 = v121;
    sub_10011C0F0(v77, v121, &qword_100CCDB28);
    v79 = v78;
    v80 = 0;
  }

  else
  {
    v78 = v121;
    v79 = v121;
    v80 = 1;
  }

  sub_10001B350(v79, v80, 1, v123);
  v82 = v118;
  v81 = v119;
  v83 = v125;
  v84 = v120;
  (*(v119 + 16))(v118, v125, v120);
  v127 = v82;
  v85 = v122;
  sub_1000302D8(v78, v122, &qword_100CCDB18);
  v128 = v85;
  sub_10063A818(&v127, v124);
  sub_10003FDA0(v78, &qword_100CCDB18);
  v86 = *(v81 + 8);
  v86(v83, v84);
  sub_10003FDA0(v85, &qword_100CCDB18);
  return (v86)(v82, v84);
}

uint64_t sub_100640818()
{
  v0 = type metadata accessor for RectangleMark();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  RectangleMark.init(xStart:xEnd:yStart:yEnd:)();
  ChartContent.offset(x:yStart:yEnd:)();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_100640910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a2;
  v158 = a3;
  v4 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v4 - 8);
  v143 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v6 - 8);
  v142 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_10022C350(&qword_100CCDC18);
  v141 = *(v157 - 8);
  __chkstk_darwin(v157);
  v140 = &v123 - v8;
  v9 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v9 - 8);
  v146 = &v123 - v10;
  v149 = type metadata accessor for DetailChartDataElement();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CCDC08);
  __chkstk_darwin(v12 - 8);
  v156 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v155 = &v123 - v15;
  v16 = sub_10022C350(&qword_100CBADE0);
  __chkstk_darwin(v16 - 8);
  v145 = &v123 - v17;
  v18 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v18 - 8);
  v136 = type metadata accessor for AxisTick();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v130 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10022C350(&qword_100CBAE08);
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v133 = &v123 - v22;
  v23 = type metadata accessor for AxisGridLine();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10022C350(&qword_100CBAD88);
  v131 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v123 - v29;
  v154 = sub_10022C350(&qword_100CCDBE8);
  __chkstk_darwin(v154);
  v144 = &v123 - v31;
  v32 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v32 - 8);
  v151 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v123 - v35;
  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v159 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v123 - v41;
  v43 = sub_10022C350(&qword_100CCDBD8);
  __chkstk_darwin(v43 - 8);
  v153 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v152 = &v123 - v46;
  AxisValue.as<A>(_:)();
  if (sub_100024D10(v36, 1, v37) == 1)
  {
    sub_10003FDA0(v36, &unk_100CB2CF0);
LABEL_5:
    v47 = 1;
    v48 = v38;
    v49 = v159;
    v50 = v152;
    goto LABEL_17;
  }

  (*(v38 + 32))(v42, v36, v37);
  if (AxisValue.isFirst.getter())
  {
    (*(v38 + 8))(v42, v37);
    goto LABEL_5;
  }

  v129 = v42;
  v127 = v38;
  v51 = AxisValue.isLast.getter();
  v128 = a1;
  if (v51)
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B62E0();
    v124 = v162;
    v123 = v163;
    v52 = v164;
    swift_endAccess();
    v171 = v124;
    v172 = v123;
    v173 = v52;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v53 = sub_1004B5F70();
    swift_endAccess();
    *&v168 = v53;
    v126 = v30;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v24 + 8))(v26, v23);
    static AxisTick.Length.longestLabel.getter();
    swift_beginAccess();
    sub_1004B62E0();
    v124 = v165;
    v123 = v166;
    v54 = v167;
    swift_endAccess();
    v168 = v124;
    v169 = v123;
    v170 = v54;
    v55 = v130;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v56 = sub_1004B5F70();
    swift_endAccess();
    v160 = v56;
    v57 = v133;
    v58 = v136;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v135 + 8))(v55, v58);
    v59 = v131;
    v60 = v132;
    v61 = v134;
    (*(v131 + 16))(v132, v30, v134);
    v160 = v60;
    v62 = v137;
    v63 = v138;
    v64 = v139;
    (*(v137 + 16))(v138, v57, v139);
    v161 = v63;
    sub_1007FECC0(&v160, v65, v66, v67, v68, v69, v70, v71, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130);
    v72 = *(v62 + 8);
    v72(v57, v64);
    v73 = *(v59 + 8);
    v73(v126, v61);
    v48 = v127;
    (*(v127 + 8))(v129, v37);
    v72(v63, v64);
    v73(v60, v61);
    v74 = v144;
    sub_10011C0F0(v145, v144, &qword_100CBADE0);
    sub_10022C350(&qword_100CCDC48);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v100 = sub_10022C350(&qword_100CCDBF8);
    sub_10001B350(v74, 0, 1, v100);
    v49 = v159;
    goto LABEL_16;
  }

  type metadata accessor for PrecipitationAveragesHeroChartView();
  type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  sub_1006446D8(&qword_100CA39D0, &type metadata accessor for Date);
  v75 = v129;
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = v159;
  if ((v76 & 1) == 0)
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B6380();
    v124 = v162;
    v123 = v163;
    v78 = v164;
    swift_endAccess();
    v171 = v124;
    v172 = v123;
    v173 = v78;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v79 = sub_1004B5F70();
    swift_endAccess();
    *&v168 = v79;
    v126 = v30;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v24 + 8))(v26, v23);
    static AxisTick.Length.longestLabel.getter();
    swift_beginAccess();
    sub_1004B6380();
    v124 = v165;
    v123 = v166;
    v80 = v167;
    swift_endAccess();
    v168 = v124;
    v169 = v123;
    v170 = v80;
    v81 = v130;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v82 = sub_1004B5F70();
    swift_endAccess();
    v160 = v82;
    v83 = v133;
    v84 = v136;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v135 + 8))(v81, v84);
    v85 = v131;
    v86 = v132;
    v87 = v134;
    (*(v131 + 16))(v132, v30, v134);
    v160 = v86;
    v88 = v137;
    v89 = v138;
    v90 = v139;
    (*(v137 + 16))(v138, v83, v139);
    v161 = v89;
    sub_1007FECC0(&v160, v91, v92, v93, v94, v95, v96, v97, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130);
    v98 = *(v88 + 8);
    v98(v83, v90);
    v99 = *(v85 + 8);
    v99(v126, v87);
    v48 = v127;
    (*(v127 + 8))(v129, v37);
    v98(v89, v90);
    v99(v86, v87);
    v74 = v144;
    sub_10011C0F0(v145, v144, &qword_100CBADE0);
    sub_10022C350(&qword_100CCDC48);
    goto LABEL_15;
  }

  v48 = v127;
  (*(v127 + 8))(v75, v37);
  v77 = sub_10022C350(&qword_100CCDBF8);
  v74 = v144;
  sub_10001B350(v144, 1, 1, v77);
LABEL_16:
  v50 = v152;
  sub_10011C0F0(v74, v152, &qword_100CCDBE8);
  v47 = 0;
LABEL_17:
  v101 = v151;
  sub_10001B350(v50, v47, 1, v154);
  AxisValue.as<A>(_:)();
  if (sub_100024D10(v101, 1, v37) == 1)
  {
    sub_10003FDA0(v101, &unk_100CB2CF0);
LABEL_24:
    v105 = v155;
    sub_10001B350(v155, 1, 1, v157);
    goto LABEL_25;
  }

  (*(v48 + 32))(v49, v101, v37);
  type metadata accessor for PrecipitationAveragesHeroChartView();
  type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  v102 = static Date.== infix(_:_:)();
  if ((v102 & 1) == 0)
  {
    v102 = AxisValue.isFirst.getter();
    if ((v102 & 1) == 0)
    {
LABEL_23:
      (*(v48 + 8))(v49, v37);
      goto LABEL_24;
    }
  }

  __chkstk_darwin(v102);
  v121 = v49;
  v103 = v146;
  sub_1008DBA9C();
  v104 = v149;
  if (sub_100024D10(v103, 1, v149) == 1)
  {
    sub_10003FDA0(v103, &qword_100CAB930);
    goto LABEL_23;
  }

  (*(v148 + 32))(v147, v103, v104);
  v109 = v48;
  if (AxisValue.isFirst.getter())
  {
    v110 = static AxisValueLabelCollisionResolution.disabled.getter();
  }

  else
  {
    v110 = static AxisValueLabelCollisionResolution.automatic.getter();
  }

  __chkstk_darwin(v110);
  v111 = v147;
  static AxisValueLabelOrientation.automatic.getter();
  v121 = sub_10022C350(&qword_100CCDC20);
  v122 = sub_100643D2C();
  v119 = sub_100643D20;
  v120 = &v117;
  v118 = 0;
  v117 = 0;
  v112 = v140;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  v113 = v155;
  v114 = v112;
  v115 = v157;
  (*(v141 + 32))(v155, v114, v157);
  sub_10001B350(v113, 0, 1, v115);
  v116 = v111;
  v105 = v113;
  (*(v148 + 8))(v116, v149);
  (*(v109 + 8))(v159, v37);
LABEL_25:
  v106 = v153;
  sub_1000302D8(v50, v153, &qword_100CCDBD8);
  v160 = v106;
  v107 = v156;
  sub_1000302D8(v105, v156, &qword_100CCDC08);
  v161 = v107;
  sub_1007FEEE8();
  sub_10003FDA0(v105, &qword_100CCDC08);
  sub_10003FDA0(v50, &qword_100CCDBD8);
  sub_10003FDA0(v107, &qword_100CCDC08);
  return sub_10003FDA0(v106, &qword_100CCDBD8);
}

uint64_t sub_100641E40()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

void *sub_100641F2C@<X0>(void *a1@<X8>)
{
  v2 = AxisValue.isFirst.getter();
  sub_100641F90(v2 & 1, __src);
  return memcpy(a1, __src, 0x91uLL);
}

uint64_t sub_100641F90@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  HIDWORD(v35) = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39 = DetailChartDataElement.dateLabel.getter();
  *(&v39 + 1) = v7;
  sub_10002D5A4();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  DetailChartDataElement.date.getter();
  type metadata accessor for PrecipitationAveragesHeroChartView();
  type metadata accessor for PrecipitationAveragesHeroChartViewModel();
  v13 = static Date.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if (v13)
  {
    static Color.primary.getter();
  }

  else
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B61C0();
    swift_endAccess();
  }

  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;

  sub_10010CD64(v8, v10, v12 & 1);

  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10010CD64(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v23 &= 1u;
  v37 = v23;
  v36 = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v38[5] = v39;
  *&v38[21] = v40;
  *&v38[37] = v41;
  v27 = static Edge.Set.horizontal.getter();
  v28 = BYTE4(v35) & 1;
  result = EdgeInsets.init(_all:)();
  v30 = *&v38[16];
  *(a2 + 51) = *v38;
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 49) = v28;
  *(a2 + 50) = 0;
  *(a2 + 67) = v30;
  *(a2 + 83) = *&v38[32];
  *(a2 + 96) = *&v38[45];
  *(a2 + 104) = v27;
  *(a2 + 112) = v31;
  *(a2 + 120) = v32;
  *(a2 + 128) = v33;
  *(a2 + 136) = v34;
  *(a2 + 144) = 0;
  return result;
}

uint64_t sub_1006422F4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v1 - 8);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v3 - 8);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10022C350(&qword_100CBAD80);
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v39 - v5;
  v6 = sub_10022C350(&qword_100CBAD70);
  __chkstk_darwin(v6 - 8);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for AxisGridLine();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10022C350(&qword_100CBAD88);
  v15 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  AxisGridLine.init(centered:stroke:)();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = sub_1004B5F70();
  swift_endAccess();
  v48 = v21;
  AxisMark.foregroundStyle<A>(_:)();

  (*(v12 + 8))(v14, v11);
  AxisValue.as<A>(_:)();
  if (v49)
  {
    v22 = 1;
LABEL_7:
    v33 = v45;
    goto LABEL_8;
  }

  v23 = *&v48;
  v24 = (v43 + *(type metadata accessor for PrecipitationAveragesHeroChartView() + 24));
  v25 = v24[13];
  v26 = v24[14];
  v27 = v24[15];
  v28 = AxisValue.isFirst.getter();
  v29 = AxisValue.isLast.getter();
  sub_100695870(v28 & 1, v29 & 1, v25, v26, v27, v23);
  v22 = 1;
  if (!v31)
  {
    goto LABEL_7;
  }

  v43 = &v39;
  __chkstk_darwin(v30);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v38[2] = sub_10022C350(&qword_100CBAD90);
  v38[3] = sub_10045362C();
  v38[0] = sub_100643A10;
  v38[1] = v38;
  v32 = v39;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();

  v33 = v45;
  (*(v40 + 32))(v10, v32, v45);
  v22 = 0;
LABEL_8:
  sub_10001B350(v10, v22, 1, v33);
  v34 = v44;
  (*(v15 + 16))(v17, v20, v44);
  v48 = v17;
  v35 = v46;
  sub_1000302D8(v10, v46, &qword_100CBAD70);
  v49 = v35;
  sub_1007FEDB0();
  sub_10003FDA0(v10, &qword_100CBAD70);
  v36 = *(v15 + 8);
  v36(v20, v34);
  sub_10003FDA0(v35, &qword_100CBAD70);
  return (v36)(v17, v34);
}

void *sub_10064290C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v4, v6, v8 & 1);

  swift_beginAccess();
  sub_1004B61C0();
  swift_endAccess();
  v14 = Text.foregroundColor(_:)();
  v30 = v16;
  v31 = v15;
  v18 = v17;

  sub_10010CD64(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v20 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v32[7], __src, 0x70uLL);
  *a3 = v14;
  *(a3 + 8) = v31;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v30;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = v20;
  *(a3 + 64) = v22;
  *(a3 + 72) = v24;
  *(a3 + 80) = v26;
  *(a3 + 88) = v28;
  *(a3 + 96) = 0;
  return memcpy((a3 + 97), v32, 0x77uLL);
}

unint64_t sub_100642B84()
{
  result = qword_100CCDA68;
  if (!qword_100CCDA68)
  {
    sub_10022E824(&qword_100CCDA58);
    sub_10023FBF4(&qword_100CCDA70, &unk_100CCDA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDA68);
  }

  return result;
}

unint64_t sub_100642C3C()
{
  result = qword_100CCDAD0;
  if (!qword_100CCDAD0)
  {
    sub_10022E824(&qword_100CCDAC8);
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    sub_100642D48();
    sub_100644088(&qword_100CCDB30, &qword_100CCDB38, &unk_100A6E7D0, sub_100643218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDAD0);
  }

  return result;
}

unint64_t sub_100642D48()
{
  result = qword_100CCDAD8;
  if (!qword_100CCDAD8)
  {
    sub_10022E824(&qword_100CCDAE0);
    sub_100642DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDAD8);
  }

  return result;
}

unint64_t sub_100642DCC()
{
  result = qword_100CCDAE8;
  if (!qword_100CCDAE8)
  {
    sub_10022E824(&qword_100CCDAF0);
    sub_10022E824(&qword_100CCDAF8);
    sub_10022E824(&qword_100CCDB00);
    sub_10022E824(&qword_100CCDB08);
    sub_10022E824(&qword_100CBAC68);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100642FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDAE8);
  }

  return result;
}

unint64_t sub_100642FBC()
{
  result = qword_100CCDB10;
  if (!qword_100CCDB10)
  {
    sub_10022E824(&qword_100CCDB18);
    sub_100643040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDB10);
  }

  return result;
}

unint64_t sub_100643040()
{
  result = qword_100CCDB20;
  if (!qword_100CCDB20)
  {
    sub_10022E824(&qword_100CCDB28);
    sub_1006446D8(&qword_100CBAC80, type metadata accessor for PeakKnockoutMark);
    sub_10022E824(&qword_100CB6960);
    sub_10022E824(&qword_100CB6958);
    type metadata accessor for PointMark();
    type metadata accessor for BasicChartSymbolShape();
    sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDB20);
  }

  return result;
}

unint64_t sub_100643218()
{
  result = qword_100CCDB40;
  if (!qword_100CCDB40)
  {
    sub_10022E824(&qword_100CCDB48);
    sub_1006446D8(&qword_100CBACA8, type metadata accessor for PeakUpperMark);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDB40);
  }

  return result;
}

uint64_t sub_1006432D4(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationAveragesHeroChartView();
  sub_100003810(v2);
  sub_100008550();

  return sub_10063D710(a1, v3);
}

unint64_t sub_100643380()
{
  result = qword_100CCDB70;
  if (!qword_100CCDB70)
  {
    sub_10022E824(&qword_100CCDB68);
    sub_10023FBF4(&qword_100CCDB78, &qword_100CCDB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDB70);
  }

  return result;
}

uint64_t sub_100643430()
{
  v0 = sub_100004758();
  sub_100003810(v0);
  sub_100008550();
  v1 = sub_1000138D0();

  return sub_10063DE34(v1, v2, v3);
}

unint64_t sub_100643494()
{
  result = qword_100CCDB98;
  if (!qword_100CCDB98)
  {
    sub_10022E824(&qword_100CCDAB0);
    sub_100643520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDB98);
  }

  return result;
}

unint64_t sub_100643520()
{
  result = qword_100CCDBA0;
  if (!qword_100CCDBA0)
  {
    sub_10022E824(&qword_100CCDB90);
    sub_1006435D8();
    sub_10023FBF4(&qword_100CBAD28, &qword_100CBAD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDBA0);
  }

  return result;
}

unint64_t sub_1006435D8()
{
  result = qword_100CCDBA8;
  if (!qword_100CCDBA8)
  {
    sub_10022E824(&qword_100CCDB88);
    sub_10022E824(&qword_100CCDAA8);
    sub_10022E824(&qword_100CBACE0);
    sub_10022E824(&qword_100CCDAA0);
    sub_10022E824(&qword_100CCDB68);
    sub_10022E824(&qword_100CCDA98);
    sub_10022E824(&qword_100CCDB58);
    sub_10022E824(&qword_100CCDA90);
    type metadata accessor for AutomaticScaleDomain();
    type metadata accessor for PlotDimensionScaleRange();
    sub_10022E824(&qword_100CCDA88);
    sub_10023FBF4(&qword_100CCDB50, &qword_100CCDA88);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CCDB60, &qword_100CCDB58);
    swift_getOpaqueTypeConformance2();
    sub_100643380();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CBACE8, &qword_100CBACE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDBA8);
  }

  return result;
}

uint64_t sub_1006438DC()
{
  sub_100004758();
  v0 = type metadata accessor for ChartProxy();
  sub_100003810(v0);
  v1 = sub_1000138D0();

  return sub_10063E030(v1, v2, v3, v4);
}

uint64_t sub_1006439B0()
{
  v0 = sub_100004758();
  sub_100003810(v0);
  sub_1000138D0();
  return sub_1006422F4(v1);
}

unint64_t sub_100643A30()
{
  result = qword_100CCDBC8;
  if (!qword_100CCDBC8)
  {
    sub_10022E824(&qword_100CCDBC0);
    sub_100643AC4();
    sub_100643C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDBC8);
  }

  return result;
}

unint64_t sub_100643AC4()
{
  result = qword_100CCDBD0;
  if (!qword_100CCDBD0)
  {
    sub_10022E824(&qword_100CCDBD8);
    sub_100643B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDBD0);
  }

  return result;
}

unint64_t sub_100643B48()
{
  result = qword_100CCDBE0;
  if (!qword_100CCDBE0)
  {
    sub_10022E824(&qword_100CCDBE8);
    sub_100643BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDBE0);
  }

  return result;
}

unint64_t sub_100643BCC()
{
  result = qword_100CCDBF0;
  if (!qword_100CCDBF0)
  {
    sub_10022E824(&qword_100CCDBF8);
    sub_100453890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDBF0);
  }

  return result;
}

unint64_t sub_100643C50()
{
  result = qword_100CCDC00;
  if (!qword_100CCDC00)
  {
    sub_10022E824(&qword_100CCDC08);
    sub_10023FBF4(&qword_100CCDC10, &unk_100CCDC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDC00);
  }

  return result;
}

unint64_t sub_100643D2C()
{
  result = qword_100CCDC28;
  if (!qword_100CCDC28)
  {
    sub_10022E824(&qword_100CCDC20);
    sub_100643DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDC28);
  }

  return result;
}

unint64_t sub_100643DB8()
{
  result = qword_100CCDC30;
  if (!qword_100CCDC30)
  {
    sub_10022E824(&qword_100CCDC38);
    sub_100643E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDC30);
  }

  return result;
}

unint64_t sub_100643E44()
{
  result = qword_100CCDC40;
  if (!qword_100CCDC40)
  {
    sub_10022E824(&qword_100CACF40);
    sub_10033CBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDC40);
  }

  return result;
}

uint64_t sub_100643F00(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = sub_100004758();
  sub_100003810(v2);
  sub_100008550();
  v3 = sub_1000138D0();

  return a2(v3);
}

uint64_t sub_100643F78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100643FD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10064402C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100644088(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    sub_10022E824(v7);
    a4();
    sub_1006446D8(&qword_100CBACB0, type metadata accessor for LollipopMark);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100644138()
{
  result = qword_100CCDCC0;
  if (!qword_100CCDCC0)
  {
    sub_10022E824(&qword_100CCDCB8);
    sub_10023FBF4(&qword_100CCDCC8, &unk_100CCDCD0);
    sub_1006441F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDCC0);
  }

  return result;
}

unint64_t sub_1006441F0()
{
  result = qword_100CCDCD8;
  if (!qword_100CCDCD8)
  {
    sub_10022E824(&qword_100CCDCE0);
    sub_10022E824(&qword_100CCDCE8);
    sub_10023FBF4(&qword_100CCDCF0, &qword_100CCDCE8);
    swift_getOpaqueTypeConformance2();
    sub_1006442F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDCD8);
  }

  return result;
}