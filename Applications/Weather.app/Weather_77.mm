void sub_100831738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v16 = a2;
  v5 = sub_10022C350(&qword_100CB6C60);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for MonthSunAverage(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CC37A0);
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  v17 = objc_autoreleasePoolPush();
  sub_100035AD0(a1, v13, &qword_100CC37A0);
  sub_1008355F4(*&v13[*(v11 + 48)]);

  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1008319B8(a1, v16, v10);

  if (!v3)
  {
    sub_100035AD0(a1, v13, &qword_100CC37A0);

    sub_100835D98(v10, v7);
    sub_10001B350(v7, 0, 1, v8);
    sub_100403C40();
    sub_10083559C(v10, type metadata accessor for MonthSunAverage);
  }

  objc_autoreleasePoolPop(v17);
}

uint64_t sub_1008319B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v61 = a1;
  v69 = type metadata accessor for Date();
  v60 = *(v69 - 8);
  __chkstk_darwin(v69);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v54 - v8;
  v9 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v9 - 8);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v54 - v12;
  __chkstk_darwin(v13);
  v66 = &v54 - v14;
  __chkstk_darwin(v15);
  v67 = &v54 - v16;
  v17 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = type metadata accessor for DateComponents();
  v64 = *(v20 - 8);
  v65 = v20;
  __chkstk_darwin(v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Calendar();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  static Calendar.currentCalendar(with:)();
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v76 = _swiftEmptyArrayStorage;
  v77 = _swiftEmptyArrayStorage;
  v70 = &v77;
  v71 = v26;
  v72 = &v76;
  v73 = &v80;
  v74 = &v79;
  v75 = &v78;
  sub_10051ABCC();
  v28 = v78;
  v27 = v79;
  if (v79 || v78 || v80)
  {
    if (v80 < 1)
    {
      v43 = sub_10022C350(&qword_100CD0298);
      if (v28 >= v27)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2;
      }

      sub_10001B350(a3, v44, 2, v43);
    }

    else
    {
      v54 = v3;
      v55 = a3;
      v56 = v24;
      v57 = v23;
      sub_10022C350(&qword_100CA53E8);
      v30 = type metadata accessor for Calendar.Component();
      v31 = *(v30 - 8);
      v32 = *(v31 + 72);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100A3BBA0;
      v35 = v34 + v33;
      v36 = *(v31 + 104);
      v36(v35, enum case for Calendar.Component.year(_:), v30);
      v36(v35 + v32, enum case for Calendar.Component.month(_:), v30);
      v36(v35 + 2 * v32, enum case for Calendar.Component.day(_:), v30);
      sub_10004BCB0(v34);
      Calendar.dateComponents(_:from:)();

      v37 = type metadata accessor for TimeZone();
      (*(*(v37 - 8) + 16))(v19, v62, v37);
      sub_10001B350(v19, 0, 1, v37);
      DateComponents.timeZone.setter();
      sub_1008325F4(v77);
      DateComponents.hour.setter();
      DateComponents.minute.setter();
      v38 = v67;
      Calendar.date(from:)();
      sub_1008325F4(v76);
      DateComponents.hour.setter();
      DateComponents.minute.setter();
      v39 = v66;
      Calendar.date(from:)();
      v40 = v63;
      sub_100035AD0(v38, v63, &unk_100CB2CF0);
      v41 = v69;
      if (sub_100024D10(v40, 1, v69) == 1)
      {
        v42 = v40;
        v23 = v57;
        v24 = v56;
      }

      else
      {
        v45 = v60;
        v46 = *(v60 + 32);
        v46(v68, v40, v41);
        v47 = v59;
        sub_100035AD0(v39, v59, &unk_100CB2CF0);
        if (sub_100024D10(v47, 1, v41) != 1)
        {
          sub_1000180EC(v39, &unk_100CB2CF0);
          sub_1000180EC(v38, &unk_100CB2CF0);
          (*(v64 + 8))(v22, v65);
          v49 = v58;
          v46(v58, v47, v41);
          v50 = sub_10022C350(&qword_100CD0298);
          v51 = *(v50 + 48);
          v52 = v55;
          v46(v55, v68, v41);
          v46((v52 + v51), v49, v41);
          sub_10001B350(v52, 0, 2, v50);
          v23 = v57;
          v24 = v56;
          goto LABEL_16;
        }

        (*(v45 + 8))(v68, v41);
        v23 = v57;
        v24 = v56;
        v42 = v47;
      }

      sub_1000180EC(v42, &unk_100CB2CF0);
      sub_100835408();
      swift_allocError();
      *v48 = 1;
      swift_willThrow();
      sub_1000180EC(v39, &unk_100CB2CF0);
      sub_1000180EC(v38, &unk_100CB2CF0);
      (*(v64 + 8))(v22, v65);
    }
  }

  else
  {
    sub_100835408();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
  }

LABEL_16:

  return (*(v24 + 8))(v26, v23);
}

uint64_t sub_100832248(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, void *a7)
{
  v40[0] = a6;
  v40[1] = a3;
  v41 = a5;
  v42 = a4;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v40 - v15;
  v17 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  __chkstk_darwin(v17);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CAC4D8);
  sub_100835D98(a1 + *(v20 + 48), v19);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      goto LABEL_8;
    case 2:
    case 3:
      return (*(v11 + 8))(v19, v10);
    case 4:
      if (__OFADD__(*a7, 1))
      {
        __break(1u);
LABEL_13:
        __break(1u);
      }

      else
      {
        ++*a7;
      }

      break;
    case 5:
      sub_10051A9C0();
      v35 = *(*a2 + 16);
      sub_100278A60(v35);
      v36 = *a2;
      *(v36 + 16) = v35 + 1;
      *(v36 + 8 * v35 + 32) = 0;
      v37 = v42;
      sub_10051A9C0();
      v38 = *(*v37 + 16);
      result = sub_100278A60(v38);
      v39 = *v37;
      *(v39 + 16) = v38 + 1;
      *(v39 + 8 * v38 + 32) = 86400;
      v31 = v40[0];
      v32 = *v40[0] + 1;
      if (!__OFADD__(*v40[0], 1))
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    default:
      v22 = *(sub_10022C350(&qword_100CD0298) + 48);
      v23 = *(v11 + 32);
      v23(v16, v19, v10);
      v23(v13, &v19[v22], v10);
      v24 = Date.secondsSinceMidnight(calendar:)();
      sub_10051A9C0();
      v25 = *(*a2 + 16);
      sub_100278A60(v25);
      v26 = *a2;
      *(v26 + 16) = v25 + 1;
      *(v26 + 8 * v25 + 32) = v24;
      v19 = Date.secondsSinceMidnight(calendar:)();
      v27 = v42;
      sub_10051A9C0();
      v28 = *(*v27 + 16);
      sub_100278A60(v28);
      v29 = *(v11 + 8);
      v11 += 8;
      v29(v13, v10);
      result = (v29)(v16, v10);
      v30 = *v27;
      *(v30 + 16) = v28 + 1;
      *(v30 + 8 * v28 + 32) = v19;
      v31 = v41;
      v32 = *v41 + 1;
      if (__OFADD__(*v41, 1))
      {
        __break(1u);
LABEL_8:
        v33 = sub_10022C350(&qword_100CD0298);
        v34 = *(v11 + 8);
        v34(&v19[*(v33 + 48)], v10);
        result = (v34)(v19, v10);
      }

      else
      {
LABEL_10:
        *v31 = v32;
      }

      break;
  }

  return result;
}

uint64_t sub_1008325F4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return v1 / 3600;
  }

  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = *(result + 32 + 8 * v2);
    v5 = __OFADD__(v3, v4);
    v3 += v4;
    if (v5)
    {
      break;
    }

    if (v1 == ++v2)
    {
      v1 = v3 / v1;
      return v1 / 3600;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100832648(uint64_t a1, uint64_t a2, void (*a3)(void, void), char *a4)
{
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v74 = a1;
  v4 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v58 - v8;
  v9 = type metadata accessor for Date();
  v58 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v72 = &v58 - v12;
  v68 = type metadata accessor for Calendar.SearchDirection();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v59 = *(v76 - 8);
  v14 = v59;
  __chkstk_darwin(v76);
  v63 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar.MatchingPolicy();
  v60 = v16;
  v61 = *(v16 - 8);
  v17 = v61;
  __chkstk_darwin(v16);
  v62 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DateComponents();
  v64 = *(v65 - 1);
  __chkstk_darwin(v65);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for TimeZone();
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005B714(&qword_100CA39C8);
  v77 = v9;
  v80 = v4;
  v23 = Dictionary.init(dictionaryLiteral:)();
  Location.timeZone.getter();
  v85 = _swiftEmptyArrayStorage;
  sub_1009FBBFC(v22);
  v24 = v62;
  (*(v17 + 104))(v62, enum case for Calendar.MatchingPolicy.strict(_:), v16);
  v25 = v63;
  (*(v14 + 104))(v63, enum case for Calendar.RepeatedTimePolicy.first(_:), v76);
  v82 = v69;
  v83 = v70;
  v84 = &v85;
  v26 = v67;
  v27 = v66;
  v28 = v68;
  (*(v67 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v68);
  Calendar.enumerateDates(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:using:)();
  (*(v26 + 8))(v27, v28);
  (*(v59 + 8))(v25, v76);
  (*(v61 + 8))(v24, v60);
  (*(v64 + 8))(v20, v65);
  v70 = *(v75 + 8);
  v71 = v22;
  v75 += 8;
  v70(v22, v73);
  v29 = v85;
  v69 = *(v85 + 2);
  if (v69)
  {
    v30 = 0;
    v31 = v58;
    v68 = &v85[(*(v31 + 80) + 32) & ~*(v31 + 80)];
    v76 = v58 + 16;
    v67 = v58 + 32;
    v66 = (v5 + 16);
    v62 = (v5 + 32);
    v65 = (v58 + 8);
    v64 = v5 + 8;
    v61 = v5 + 40;
    v63 = v85;
    while (v30 < *(v29 + 2))
    {
      v32 = v5;
      v33 = *(v31 + 72);
      v34 = *(v31 + 16);
      v35 = v72;
      v36 = v77;
      v34(v72, v68 + v33 * v30, v77);
      Location.coordinate.getter();
      v37 = v71;
      Location.timeZone.getter();
      v38 = v78;
      CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)();
      v70(v37, v73);
      v39 = v31;
      (*(v31 + 32))(v81, v35, v36);
      (*v66)(v79, v38, v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v23;
      sub_100237FB4();
      v43 = *(v23 + 2);
      v44 = (v42 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_15;
      }

      v46 = v41;
      v47 = v42;
      sub_10022C350(&qword_100CDD0E0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v45))
      {
        sub_100237FB4();
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_17;
        }

        v46 = v48;
      }

      v23 = v85;
      if (v47)
      {
        v5 = v32;
        v50 = v80;
        (*(v32 + 40))(*(v85 + 7) + *(v32 + 72) * v46, v79, v80);
        (*v65)(v81, v77);
        (*(v32 + 8))(v78, v50);
      }

      else
      {
        *&v85[8 * (v46 >> 6) + 64] |= 1 << v46;
        v51 = v81;
        v52 = v77;
        v34((*(v23 + 6) + v46 * v33), v81, v77);
        v5 = v32;
        v53 = v80;
        (*(v32 + 32))(*(v23 + 7) + *(v32 + 72) * v46, v79, v80);
        (*v65)(v51, v52);
        (*(v32 + 8))(v78, v53);
        v54 = *(v23 + 2);
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_16;
        }

        *(v23 + 2) = v56;
      }

      ++v30;
      v31 = v39;
      v29 = v63;
      if (v69 == v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_13:

    return v23;
  }

  return result;
}

uint64_t sub_100832FDC(uint64_t a1, uint64_t a2)
{
  v167 = a1;
  v3 = sub_10022C350(&qword_100CB6C58);
  __chkstk_darwin(v3 - 8);
  v150 = v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v162 = v146 - v6;
  v7 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v7 - 8);
  v155 = v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v161 = v146 - v10;
  __chkstk_darwin(v11);
  v159 = v146 - v12;
  __chkstk_darwin(v13);
  v164 = v146 - v14;
  __chkstk_darwin(v15);
  v169 = (v146 - v16);
  __chkstk_darwin(v17);
  v19 = v146 - v18;
  v20 = sub_10022C350(&qword_100CDD0D0);
  __chkstk_darwin(v20);
  v156 = v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v154 = v146 - v23;
  __chkstk_darwin(v24);
  v160 = v146 - v25;
  __chkstk_darwin(v26);
  v157 = v146 - v27;
  __chkstk_darwin(v28);
  v163 = v146 - v29;
  __chkstk_darwin(v30);
  v166 = v146 - v31;
  __chkstk_darwin(v32);
  v34 = v146 - v33;
  __chkstk_darwin(v35);
  v37 = v146 - v36;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v149 = v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v153 = v146 - v42;
  __chkstk_darwin(v43);
  v151 = v146 - v44;
  __chkstk_darwin(v45);
  v158 = v146 - v46;
  __chkstk_darwin(v47);
  v152 = v146 - v48;
  __chkstk_darwin(v49);
  v168 = v146 - v50;
  sub_100035AD0(a2, v37, &qword_100CDD0D0);
  v51 = *(v20 + 48);
  CLLocationCoordinate2D.SolarEvents.sunrise.getter();
  v171 = v38;
  v52 = sub_100024D10(v19, 1, v38);
  v170 = v20;
  v165 = v39;
  if (v52 == 1)
  {
    sub_1000180EC(v19, &unk_100CB2CF0);
    v53 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    (*(*(v53 - 8) + 8))(&v37[v51], v53);
    v54 = *(v39 + 8);
    v55 = v171;
    (v54)(v37, v171);
    v56 = v39;
    v57 = v55;
  }

  else
  {
    v58 = v171;
    v146[0] = *(v39 + 32);
    (v146[0])(v168, v19, v171);
    v59 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    v60 = *(v59 - 8);
    v61 = *(v60 + 8);
    v148 = v59;
    v147 = v61;
    v146[1] = v60 + 8;
    v61(&v37[v51]);
    v62 = v39;
    v57 = v58;
    v54 = *(v62 + 8);
    (v54)(v37, v57);
    sub_100035AD0(a2, v34, &qword_100CDD0D0);
    v63 = *(v20 + 48);
    v64 = v169;
    CLLocationCoordinate2D.SolarEvents.sunset.getter();
    if (sub_100024D10(v64, 1, v57) == 1)
    {
      (v54)(v168, v57);
      sub_1000180EC(v64, &unk_100CB2CF0);
      v147(&v34[v63], v148);
      v65 = v34;
    }

    else
    {
      v66 = v152;
      (v146[0])(v152, v64, v57);
      v147(&v34[v63], v148);
      (v54)(v34, v57);
      if (static Date.> infix(_:_:)())
      {
        v67 = v166;
        sub_100035AD0(a2, v166, &qword_100CDD0D0);
        v170 = *(v170 + 48);
        v68 = sub_10022C350(&qword_100CD0298);
        v169 = v54;
        v69 = *(v68 + 48);
        v70 = v66;
        v71 = *(v165 + 16);
        v72 = v162;
        v73 = v168;
        v71(v162, v168, v57);
        v71((v72 + v69), v70, v57);
        v74 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
        swift_storeEnumTagMultiPayload();
        sub_10001B350(v72, 0, 1, v74);
        sub_100403A88();
        v75 = v169;
        v169(v70, v57);
        v75(v73, v57);
        return (v147)(v67 + v170, v148);
      }

      (v54)(v66, v57);
      v65 = v168;
    }

    (v54)(v65, v57);
    v56 = v165;
  }

  v77 = v163;
  sub_100035AD0(a2, v163, &qword_100CDD0D0);
  v78 = v170;
  v79 = *(v170 + 48);
  v80 = v164;
  CLLocationCoordinate2D.SolarEvents.sunrise.getter();
  v81 = sub_100024D10(v80, 1, v57);
  v169 = v54;
  if (v81 == 1)
  {
    sub_1000180EC(v80, &unk_100CB2CF0);
    v82 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    (*(*(v82 - 8) + 8))(v77 + v79, v82);
    (v54)(v77, v57);
  }

  else
  {
    v83 = v80;
    v84 = v54;
    v85 = a2;
    v86 = v158;
    v148 = *(v56 + 32);
    v148(v158, v83, v57);
    v87 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    v88 = *(v87 - 8);
    v89 = *(v88 + 8);
    v168 = v87;
    v164 = v89;
    v152 = (v88 + 8);
    (v89)(v77 + v79);
    (v54)(v77, v57);
    v163 = v85;
    v90 = v157;
    sub_100035AD0(v85, v157, &qword_100CDD0D0);
    v91 = *(v78 + 48);
    v92 = v159;
    CLLocationCoordinate2D.SolarEvents.sunset.getter();
    v93 = v92;
    if (sub_100024D10(v92, 1, v57) == 1)
    {
      v57 = v171;
      v84(v86, v171);
      sub_1000180EC(v92, &unk_100CB2CF0);
      (v164)(v90 + v91, v168);
      v84(v90, v57);
    }

    else
    {
      v94 = v151;
      v95 = v93;
      v96 = v171;
      v148(v151, v95, v171);
      (v164)(v90 + v91, v168);
      v84(v90, v96);
      sub_10005B714(&qword_100CA7020);
      v97 = v84;
      v98 = v86;
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        v139 = v166;
        sub_100035AD0(v163, v166, &qword_100CDD0D0);
        v170 = *(v170 + 48);
        v140 = *(sub_10022C350(&qword_100CD0298) + 48);
        v141 = *(v165 + 16);
        v142 = v162;
        v143 = v171;
        v141(v162, v98, v171);
        v141((v142 + v140), v94, v143);
        v144 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
        swift_storeEnumTagMultiPayload();
        sub_10001B350(v142, 0, 1, v144);
        sub_100403A88();
        v145 = v169;
        v169(v94, v143);
        v145(v98, v143);
        return (v164)(v139 + v170, v168);
      }

      v57 = v171;
      v97(v94, v171);
      v97(v86, v57);
    }

    a2 = v163;
    v78 = v170;
    v56 = v165;
  }

  v99 = v160;
  sub_100035AD0(a2, v160, &qword_100CDD0D0);
  v100 = *(v78 + 48);
  v101 = v161;
  CLLocationCoordinate2D.SolarEvents.sunrise.getter();
  if (sub_100024D10(v101, 1, v57) == 1)
  {
    sub_1000180EC(v101, &unk_100CB2CF0);
    v102 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    v103 = *(v102 - 8);
    v104 = v102;
    v171 = *(v103 + 8);
    v168 = (v103 + 8);
    v171(v99 + v100);
    v105 = v99;
    v106 = v56;
    v164 = (v56 + 8);
    v169(v105, v57);
    v107 = v154;
    sub_100035AD0(a2, v154, &qword_100CDD0D0);
    v108 = *(v78 + 48);
    v109 = v155;
    CLLocationCoordinate2D.SolarEvents.sunset.getter();
    v110 = v109;
    v111 = sub_100024D10(v109, 1, v57);
    v163 = v104;
    if (v111 == 1)
    {
      sub_1000180EC(v109, &unk_100CB2CF0);
      v112 = v171;
      (v171)(v107 + v108, v104);
      v113 = v169;
      v169(v107, v57);
      sub_100035AD0(a2, v156, &qword_100CDD0D0);
      v114 = a2;
      v115 = v78;
      v116 = v166;
      sub_100035AD0(v114, v166, &qword_100CDD0D0);
      v117 = *(v115 + 48);
      CLLocationCoordinate2D.SolarEvents.isDaylight.getter();
      v112(v116 + v117, v104);
      v113(v116, v57);
      v118 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
      v119 = v150;
      swift_storeEnumTagMultiPayload();
      v120 = *(v115 + 48);
      sub_10001B350(v119, 0, 1, v118);
      v121 = v156;
      sub_100403A88();
      return (v112)(v121 + v120, v163);
    }

    else
    {
      v133 = v149;
      (*(v106 + 32))(v149, v110, v57);
      (v171)(v107 + v108, v104);
      v134 = v169;
      v169(v107, v57);
      v135 = a2;
      v136 = v166;
      sub_100035AD0(v135, v166, &qword_100CDD0D0);
      v170 = *(v78 + 48);
      v137 = v162;
      (*(v106 + 16))(v162, v133, v57);
      v138 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v137, 0, 1, v138);
      sub_100403A88();
      v134(v133, v57);
      return (v171)(v136 + v170, v163);
    }
  }

  else
  {
    v122 = v153;
    (*(v56 + 32))(v153, v101, v57);
    v123 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    v124 = *(v123 - 8);
    v125 = v56;
    v126 = *(v124 + 8);
    v171 = (v124 + 8);
    v126(v99 + v100, v123);
    v127 = v99;
    v128 = v169;
    v169(v127, v57);
    v129 = a2;
    v130 = v166;
    sub_100035AD0(v129, v166, &qword_100CDD0D0);
    v170 = *(v78 + 48);
    v131 = v162;
    (*(v125 + 16))(v162, v122, v57);
    v132 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v131, 0, 1, v132);
    sub_100403A88();
    v128(v122, v57);
    return (v126)(v130 + v170, v123);
  }
}

uint64_t sub_1008340B0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v22 = a3;
  v23 = a6;
  v7 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_100035AD0(a1, v9, &unk_100CB2CF0);
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    return sub_1000180EC(v9, &unk_100CB2CF0);
  }

  v18 = *(v11 + 32);
  v18(v16, v9, v10);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    return (*(v11 + 8))(v16, v10);
  }

  if (static Date.< infix(_:_:)())
  {
    (*(v11 + 16))(v13, v16, v10);
    v19 = v23;
    sub_10051A948();
    v20 = *(*v19 + 16);
    sub_1002789E8(v20);
    (*(v11 + 8))(v16, v10);
    v21 = *v19;
    *(v21 + 16) = v20 + 1;
    return (v18)(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v13, v10);
  }

  else
  {
    result = (*(v11 + 8))(v16, v10);
    *v22 = 1;
  }

  return result;
}

void sub_100834344(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10022C350(&qword_100CAC4D8);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10022C350(&qword_100CAC4D8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1008346C4(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10083448C(0, v2, 1, a1);
  }
}

void sub_10083448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_10022C350(&qword_100CAC4D8);
  __chkstk_darwin(v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v30 = v18;
      v31 = a3;
      v28 = v21;
      v29 = v20;
      do
      {
        sub_100035AD0(v21, v15, &qword_100CAC4D8);
        sub_100035AD0(v18, v11, &qword_100CAC4D8);
        v22 = static Date.< infix(_:_:)();
        sub_1000180EC(v11, &qword_100CAC4D8);
        sub_1000180EC(v15, &qword_100CAC4D8);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        v23 = v33;
        sub_100835C88(v21, v33);
        swift_arrayInitWithTakeFrontToBack();
        sub_100835C88(v23, v18);
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v31 + 1;
      v18 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1008346C4(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = a1;
  v125 = sub_10022C350(&qword_100CAC4D8);
  v120 = *(v125 - 8);
  __chkstk_darwin(v125);
  v115 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v124 = &v109 - v10;
  __chkstk_darwin(v11);
  v127 = &v109 - v12;
  __chkstk_darwin(v13);
  v126 = &v109 - v14;
  v121 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_99:
    v127 = *v112;
    if (!v127)
    {
      goto LABEL_140;
    }

    v16 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v101 = v17 + 16;
      v102 = *(v17 + 2);
      while (v102 >= 2)
      {
        if (!*v121)
        {
          goto LABEL_137;
        }

        v103 = v17;
        v104 = &v17[16 * v102];
        v105 = *v104;
        v106 = &v101[2 * v102];
        v107 = *(v106 + 1);
        sub_100834F80(*v121 + *(v120 + 72) * *v104, *v121 + *(v120 + 72) * *v106, *v121 + *(v120 + 72) * v107, v127);
        if (v16)
        {
          break;
        }

        if (v107 < v105)
        {
          goto LABEL_125;
        }

        if (v102 - 2 >= *v101)
        {
          goto LABEL_126;
        }

        *v104 = v105;
        *(v104 + 1) = v107;
        v108 = *v101 - v102;
        if (*v101 < v102)
        {
          goto LABEL_127;
        }

        v102 = *v101 - 1;
        sub_1003090FC(v106 + 16, v108, v106);
        *v101 = v102;
        v17 = v103;
      }

LABEL_109:

      return;
    }

LABEL_134:
    v17 = sub_100308E24();
    goto LABEL_101;
  }

  v109 = a4;
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v111 = v17;
      v122 = v5;
      v19 = *v121;
      v20 = *(v120 + 72);
      v21 = v18;
      v22 = *v121 + v20 * v16;
      v23 = v126;
      v119 = v15;
      sub_100035AD0(v22, v126, &qword_100CAC4D8);
      v24 = v127;
      sub_100035AD0(v19 + v20 * v21, v127, &qword_100CAC4D8);
      LODWORD(v118) = static Date.< infix(_:_:)();
      sub_1000180EC(v24, &qword_100CAC4D8);
      sub_1000180EC(v23, &qword_100CAC4D8);
      v25 = v119;
      v110 = v21;
      v26 = v21 + 2;
      v123 = v20;
      v27 = v19 + v20 * (v21 + 2);
      while (1)
      {
        v28 = v26;
        if (++v16 >= v25)
        {
          break;
        }

        v29 = v126;
        sub_100035AD0(v27, v126, &qword_100CAC4D8);
        v30 = v127;
        sub_100035AD0(v22, v127, &qword_100CAC4D8);
        v31 = static Date.< infix(_:_:)() & 1;
        sub_1000180EC(v30, &qword_100CAC4D8);
        sub_1000180EC(v29, &qword_100CAC4D8);
        v27 += v123;
        v22 += v123;
        v26 = v28 + 1;
        v25 = v119;
        if ((v118 & 1) != v31)
        {
          goto LABEL_9;
        }
      }

      v16 = v25;
LABEL_9:
      v5 = v122;
      v17 = v111;
      if ((v118 & 1) == 0)
      {
        goto LABEL_29;
      }

      v18 = v110;
      if (v16 < v110)
      {
        goto LABEL_131;
      }

      if (v110 < v16)
      {
        if (v25 >= v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = v25;
        }

        v33 = v123 * (v32 - 1);
        v34 = v123 * v32;
        v35 = v110 * v123;
        v119 = v16;
        v36 = v16;
        v37 = v110;
        do
        {
          if (v37 != --v36)
          {
            v38 = *v121;
            if (!*v121)
            {
              goto LABEL_138;
            }

            sub_100835C88(v38 + v35, v115);
            v39 = v35 < v33 || v38 + v35 >= v38 + v34;
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100835C88(v115, v38 + v33);
          }

          ++v37;
          v33 -= v123;
          v34 -= v123;
          v35 += v123;
        }

        while (v37 < v36);
        v5 = v122;
        v17 = v111;
        v16 = v119;
LABEL_29:
        v18 = v110;
      }
    }

    v40 = v121[1];
    if (v16 < v40)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_130;
      }

      if (v16 - v18 < v109)
      {
        break;
      }
    }

LABEL_46:
    if (v16 < v18)
    {
      goto LABEL_129;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10011E564();
      v17 = v99;
    }

    v54 = *(v17 + 2);
    v55 = v54 + 1;
    if (v54 >= *(v17 + 3) >> 1)
    {
      sub_10011E564();
      v17 = v100;
    }

    *(v17 + 2) = v55;
    v56 = v17 + 32;
    v57 = &v17[16 * v54 + 32];
    *v57 = v18;
    *(v57 + 1) = v16;
    v123 = *v112;
    if (!v123)
    {
      goto LABEL_139;
    }

    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        v59 = &v56[16 * v55 - 16];
        v60 = &v17[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v61 = *(v17 + 4);
          v62 = *(v17 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_66:
          if (v64)
          {
            goto LABEL_116;
          }

          v76 = *v60;
          v75 = *(v60 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_119;
          }

          v80 = *(v59 + 1);
          v81 = v80 - *v59;
          if (__OFSUB__(v80, *v59))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v78, v81))
          {
            goto LABEL_124;
          }

          if (v78 + v81 >= v63)
          {
            if (v63 < v81)
            {
              v58 = v55 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v55 < 2)
        {
          goto LABEL_118;
        }

        v83 = *v60;
        v82 = *(v60 + 1);
        v71 = __OFSUB__(v82, v83);
        v78 = v82 - v83;
        v79 = v71;
LABEL_81:
        if (v79)
        {
          goto LABEL_121;
        }

        v85 = *v59;
        v84 = *(v59 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_123;
        }

        if (v86 < v78)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v58 - 1 >= v55)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v121)
        {
          goto LABEL_136;
        }

        v90 = &v56[16 * v58 - 16];
        v91 = *v90;
        v92 = v58;
        v93 = &v56[16 * v58];
        v94 = *(v93 + 1);
        v95 = v122;
        sub_100834F80(*v121 + *(v120 + 72) * *v90, *v121 + *(v120 + 72) * *v93, *v121 + *(v120 + 72) * v94, v123);
        v122 = v95;
        if (v95)
        {
          goto LABEL_109;
        }

        if (v94 < v91)
        {
          goto LABEL_111;
        }

        v96 = v16;
        v16 = v17;
        v97 = *(v17 + 2);
        if (v92 > v97)
        {
          goto LABEL_112;
        }

        *v90 = v91;
        *(v90 + 1) = v94;
        if (v92 >= v97)
        {
          goto LABEL_113;
        }

        v55 = v97 - 1;
        sub_1003090FC(v93 + 16, v97 - 1 - v92, v93);
        *(v16 + 16) = v97 - 1;
        v98 = v97 > 2;
        v17 = v16;
        v16 = v96;
        if (!v98)
        {
          goto LABEL_95;
        }
      }

      v65 = &v56[16 * v55];
      v66 = *(v65 - 8);
      v67 = *(v65 - 7);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_114;
      }

      v70 = *(v65 - 6);
      v69 = *(v65 - 5);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_115;
      }

      v72 = *(v60 + 1);
      v73 = v72 - *v60;
      if (__OFSUB__(v72, *v60))
      {
        goto LABEL_117;
      }

      v71 = __OFADD__(v63, v73);
      v74 = v63 + v73;
      if (v71)
      {
        goto LABEL_120;
      }

      if (v74 >= v68)
      {
        v88 = *v59;
        v87 = *(v59 + 1);
        v71 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v71)
        {
          goto LABEL_128;
        }

        if (v63 < v89)
        {
          v58 = v55 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v5 = v122;
    v15 = v121[1];
    if (v16 >= v15)
    {
      goto LABEL_99;
    }
  }

  v41 = v18 + v109;
  if (__OFADD__(v18, v109))
  {
    goto LABEL_132;
  }

  if (v41 >= v40)
  {
    v41 = v121[1];
  }

  if (v41 < v18)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v16 == v41)
  {
    goto LABEL_46;
  }

  v110 = v18;
  v111 = v17;
  v122 = v5;
  v42 = *v121;
  v43 = *(v120 + 72);
  v44 = *v121 + v43 * (v16 - 1);
  v45 = v16;
  v46 = -v43;
  v47 = v18 - v45;
  v119 = v45;
  v123 = v42;
  v113 = v43;
  v114 = v41;
  v48 = v42 + v45 * v43;
LABEL_39:
  v116 = v48;
  v117 = v47;
  v118 = v44;
  while (1)
  {
    v49 = v126;
    sub_100035AD0(v48, v126, &qword_100CAC4D8);
    v50 = v127;
    sub_100035AD0(v44, v127, &qword_100CAC4D8);
    v51 = static Date.< infix(_:_:)();
    sub_1000180EC(v50, &qword_100CAC4D8);
    sub_1000180EC(v49, &qword_100CAC4D8);
    if ((v51 & 1) == 0)
    {
LABEL_44:
      v44 = v118 + v113;
      v47 = v117 - 1;
      v48 = v116 + v113;
      if (++v119 == v114)
      {
        v16 = v114;
        v5 = v122;
        v18 = v110;
        v17 = v111;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v123)
    {
      break;
    }

    v52 = v124;
    sub_100835C88(v48, v124);
    swift_arrayInitWithTakeFrontToBack();
    sub_100835C88(v52, v44);
    v44 += v46;
    v48 += v46;
    v39 = __CFADD__(v47++, 1);
    if (v39)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

void sub_100834F80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_10022C350(&qword_100CAC4D8);
  __chkstk_darwin(v51);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v43 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v56 = a1;
  v55 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1006A06E4(a2, v15 / v12, a4);
    v50 = a4;
    v26 = a4 + v18 * v12;
    v27 = -v12;
    v28 = v26;
    v46 = a1;
    v47 = -v12;
LABEL_37:
    v29 = a2 + v27;
    v30 = a3;
    v44 = v28;
    v31 = v28;
    v48 = a2 + v27;
    v49 = a2;
    while (1)
    {
      if (v26 <= v50)
      {
        v56 = a2;
        v54 = v31;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v45 = v31;
      v32 = v30 + v27;
      v33 = v26 + v27;
      v34 = v26 + v27;
      v35 = v52;
      sub_100035AD0(v34, v52, &qword_100CAC4D8);
      v36 = v29;
      v37 = v53;
      sub_100035AD0(v36, v53, &qword_100CAC4D8);
      v38 = static Date.< infix(_:_:)();
      sub_1000180EC(v37, &qword_100CAC4D8);
      sub_1000180EC(v35, &qword_100CAC4D8);
      if (v38)
      {
        v40 = v30 < v49 || v32 >= v49;
        a3 = v32;
        if (v40)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v47;
          v28 = v45;
          a1 = v46;
        }

        else
        {
          v41 = v45;
          v28 = v45;
          v27 = v47;
          v42 = v48;
          a2 = v48;
          a1 = v46;
          if (v30 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v42;
            v28 = v41;
          }
        }

        goto LABEL_37;
      }

      if (v30 < v26 || v32 >= v26)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v32;
        v26 = v33;
        v31 = v33;
        a1 = v46;
        v27 = v47;
        v29 = v48;
        a2 = v49;
      }

      else
      {
        v31 = v33;
        v14 = v26 == v30;
        v30 = v32;
        v26 = v33;
        a1 = v46;
        v27 = v47;
        v29 = v48;
        a2 = v49;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v32;
          v26 = v33;
          v31 = v33;
        }
      }
    }

    v56 = a2;
    v54 = v44;
  }

  else
  {
    sub_1006A06E4(a1, v13 / v12, a4);
    v49 = a3;
    v50 = a4 + v17 * v12;
    v54 = v50;
    while (a4 < v50 && a2 < a3)
    {
      v20 = v12;
      v21 = v52;
      sub_100035AD0(a2, v52, &qword_100CAC4D8);
      v22 = v53;
      sub_100035AD0(a4, v53, &qword_100CAC4D8);
      v23 = static Date.< infix(_:_:)();
      sub_1000180EC(v22, &qword_100CAC4D8);
      sub_1000180EC(v21, &qword_100CAC4D8);
      v12 = v20;
      if (v23)
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v20;
        a4 += v20;
      }

      a1 += v20;
      v56 = a1;
      a3 = v49;
    }
  }

LABEL_59:
  sub_100308E3C(&v56, &v55, &v54);
}

unint64_t sub_100835408()
{
  result = qword_100CDD0C0;
  if (!qword_100CDD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD0C0);
  }

  return result;
}

uint64_t sub_100835520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10083559C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1008355F4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_100835C10(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1006A76B8(0, v4, v5);
  sub_100835758(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_100835758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[1] = a2;
  v45 = a1;
  v57 = sub_10022C350(&qword_100CAC4D8);
  __chkstk_darwin(v57);
  v56 = v44 - v4;
  v5 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = v44 - v9;
  v10 = type metadata accessor for Date();
  v12 = __chkstk_darwin(v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v15 = 0;
  v58 = a3;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v22;
  v50 = v11 + 16;
  v52 = v11;
  v53 = v7;
  v51 = v14;
  v48 = (v11 + 8);
  while (2)
  {
    if (v21)
    {
      v23 = __clz(__rbit64(v21));
      v59 = (v21 - 1) & v21;
LABEL_11:
      v26 = v23 | (v15 << 6);
      v27 = v58;
      v28 = *(v52 + 16);
      v28(v14, *(v58 + 48) + *(v52 + 72) * v26, v10, v12);
      v29 = *(v27 + 56);
      v30 = *(v54 + 72);
      v47 = v26;
      v31 = v29 + v30 * v26;
      v32 = v60;
      sub_100835D98(v31, v60);
      v33 = v56;
      (v28)(v56, v14, v10);
      v34 = *(v57 + 48);
      sub_100835D98(v32, v33 + v34);
      v35 = v33 + v34;
      v36 = v53;
      sub_100835D98(v35, v53);
      sub_1000180EC(v33, &qword_100CAC4D8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v48;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v40 = sub_10022C350(&qword_100CD0298);
          v39 = *v38;
          (*v38)(v36 + *(v40 + 48), v10);
          v39(v36, v10);
          goto LABEL_14;
        case 2:
        case 3:
          v39 = *v48;
          (*v48)(v36, v10);
LABEL_14:
          v14 = v51;
          sub_10083559C(v60, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
          v39(v14, v10);
          v22 = v49;
          v21 = v59;
          continue;
        case 4:
        case 5:
          goto LABEL_16;
        default:
          v41 = sub_10022C350(&qword_100CD0298);
          v42 = *v38;
          (*v38)(v36 + *(v41 + 48), v10);
          v42(v36, v10);
LABEL_16:
          sub_10083559C(v60, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
          v14 = v51;
          (*v38)(v51, v10);
          *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
          v43 = __OFADD__(v46++, 1);
          v22 = v49;
          v21 = v59;
          if (!v43)
          {
            continue;
          }

          __break(1u);
          break;
      }

LABEL_19:
      sub_1006738CC();
    }

    else
    {
      v24 = v15;
      while (1)
      {
        v15 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v15 >= v22)
        {
          goto LABEL_19;
        }

        v25 = *(v17 + 8 * v15);
        ++v24;
        if (v25)
        {
          v23 = __clz(__rbit64(v25));
          v59 = (v25 - 1) & v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    break;
  }
}

void *sub_100835C10(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100835758(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_100835C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC4D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100835CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100835D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void sub_100835E24()
{
  sub_100836374(319, &qword_100CDD168);
  if (v0 <= 0x3F)
  {
    sub_100835ECC(319, &qword_100CDD170);
    if (v1 <= 0x3F)
    {
      sub_100835ECC(319, &unk_100CDD178);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100835ECC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Date();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CalculatorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100836040()
{
  sub_100836374(319, &qword_100CDD168);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1008360D0()
{
  sub_100836154();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MaxDaylight(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100836154()
{
  if (!qword_100CDD340)
  {
    type metadata accessor for Date();
    type metadata accessor for MonthSunAverage(255);
    sub_10005B714(&qword_100CA39C8);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDD340);
    }
  }
}

void sub_1008361EC()
{
  sub_100836270();
  if (v0 <= 0x3F)
  {
    sub_100836374(319, &unk_100CDD3F8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100836270()
{
  if (!qword_100CDD3F0)
  {
    __chkstk_darwin(0);
    type metadata accessor for Date();
    type metadata accessor for EdgeSunEvents(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_100CDD3F0);
    }
  }
}

void sub_100836374(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_100836404()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100836474()
{
  result = qword_100CDD4B8;
  if (!qword_100CDD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD4B8);
  }

  return result;
}

uint64_t sub_1008364CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  sub_10022C350(&qword_100CAE2A0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for InteractiveMapView();
  v14 = v13[8];
  type metadata accessor for WeatherMapDisplayMode();
  sub_1000037E8();
  v16 = *(v15 + 16);
  v29 = v4[1];
  v30 = v29;
  v31 = *(v4 + 40);
  v34 = *(v4 + 56);
  v16(a4 + v14, a1);
  sub_100035B30(v4 + 72, a4 + v13[9]);
  v17 = type metadata accessor for WeatherMapPerformanceTestConditions();
  sub_10001B350(v12, 1, 1, v17);
  sub_1003416A8(v12, v9);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  State.init(wrappedValue:)();
  sub_100836974(v12);
  v18 = (a4 + v13[12]);
  type metadata accessor for ObservableResolver();
  sub_100139100();
  *v18 = EnvironmentObject.init()();
  v18[1] = v19;
  v20 = v13[13];
  *(a4 + v20) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v21 = a4 + v13[14];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = a4 + v13[15];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  *(a4 + v13[16]) = 0x3FE3333333333333;
  v23 = v13[17];
  *(a4 + v23) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3B70);
  swift_storeEnumTagMultiPayload();
  *a4 = v29;
  swift_unknownObjectRetain();
  sub_10022C350(&qword_100CA4AF0);
  sub_1008369DC();
  *(a4 + 16) = ObservedObject.init(wrappedValue:)();
  *(a4 + 24) = v24;
  v25 = v34;
  *(a4 + 32) = v31;
  *(a4 + 48) = v25;
  v26 = (a4 + v13[10]);
  v27 = v33;
  *v26 = v32;
  v26[1] = v27;
}

uint64_t sub_1008367AC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100006F14(v0 + 72);
  return v0;
}

uint64_t sub_1008367EC()
{
  sub_1008367AC();

  return swift_deallocClassInstance();
}

uint64_t sub_100836844()
{
  v0 = type metadata accessor for WeatherMapDisplayMode();
  sub_100007074(v0, qword_100D90EF8);
  v1 = sub_10000703C(v0, qword_100D90EF8);
  v2 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:32.0 initialVelocity:{0.0, 0.0}];
  [v2 ts_settlingDuration];
  v4 = v3;

  *v1 = v4;
  v5 = enum case for WeatherMapDisplayMode.SnapshotTransition.animated(_:);
  type metadata accessor for WeatherMapDisplayMode.SnapshotTransition();
  sub_1000037E8();
  (*(v6 + 104))(v1, v5);
  v7 = enum case for WeatherMapDisplayMode.interactive(_:);
  v8 = *(*(v0 - 8) + 104);

  return v8(v1, v7, v0);
}

uint64_t sub_100836974(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAE2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008369DC()
{
  result = qword_100CA4AF8;
  if (!qword_100CA4AF8)
  {
    sub_10022E824(&qword_100CA4AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4AF8);
  }

  return result;
}

uint64_t sub_100836AE0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  v3 = sub_10022C350(&qword_100CDD610);
  return sub_100836B34(v1, a1 + *(v3 + 44));
}

uint64_t sub_100836B34@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = *(type metadata accessor for WindComponentViewModel() + 68);
  v12 = *(v5 + 28);
  v13 = type metadata accessor for WindComponentCompassViewModel();
  (*(*(v13 - 8) + 16))(&v10[v12], &a1[v11], v13);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v15 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v15;
  v16 = static Axis.Set.vertical.getter();
  *(inited + 33) = v16;
  v17 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    v17 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    v17 = Axis.Set.init(rawValue:)();
  }

  v19 = *(a1 + 16);
  v18 = *(a1 + 17);
  v21 = *(a1 + 18);
  v20 = *(a1 + 19);
  KeyPath = swift_getKeyPath();
  swift_bridgeObjectRetain_n();

  sub_100837534(v10, v7);
  sub_100837534(v7, a2);
  v23 = a2 + *(sub_10022C350(&qword_100CDD618) + 48);
  *v23 = v17;
  *(v23 + 8) = v19;
  *(v23 + 16) = v18;
  *(v23 + 24) = v21;
  *(v23 + 32) = v20;
  *(v23 + 40) = KeyPath;
  *(v23 + 48) = 0x3FE0000000000000;

  sub_100837598(v10);

  return sub_100837598(v7);
}

void *sub_100836DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIDWORD(__src[0]) = HIDWORD(a1);
  __src[1] = a2;
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.subheadline.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v4, v6, v8 & 1);

  LODWORD(__src[0]) = static HierarchicalShapeStyle.primary.getter();
  v30 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  LOBYTE(v4) = v16;
  v18 = v17;
  sub_10010CD64(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v20 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v31[7], __src, 0x70uLL);
  *a3 = v30;
  *(a3 + 8) = v15;
  *(a3 + 16) = v4 & 1;
  *(a3 + 24) = v18;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = v20;
  *(a3 + 64) = v22;
  *(a3 + 72) = v24;
  *(a3 + 80) = v26;
  *(a3 + 88) = v28;
  *(a3 + 96) = 0;
  return memcpy((a3 + 97), v31, 0x77uLL);
}

uint64_t sub_100836FDC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v2 - 8);
  v55 = &v47 - v3;
  v4 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for WindComponentCompassViewModel();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  v26 = *(v20 + 16);
  v27 = v1 + *(v25 + 20);
  v52 = v24;
  v26(v24, v27, v18);
  v28 = *v1;
  v29 = *(v1 + 8);
  v53 = v11;
  v51 = v13;
  if (v29 == 1)
  {
    v50 = v28;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v28, 0);
    (*(v13 + 8))(v17, v11);
    v50 = v58;
  }

  v31 = *(v6 + 104);
  v31(v10, enum case for Font.TextStyle.title3(_:), v4);
  static Font.Weight.bold.getter();
  v49 = static Font.system(_:weight:)();
  v32 = *(v6 + 8);
  v32(v10, v4);
  v31(v10, enum case for Font.TextStyle.title2(_:), v4);
  static Font.Weight.bold.getter();
  v48 = static Font.system(_:weight:)();
  v32(v10, v4);
  if (v29)
  {
    v33 = v28;
    v34 = v51;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v28, 0);
    v34 = v51;
    (*(v51 + 8))(v17, v53);
    v33 = v57;
  }

  v36 = enum case for Font.Leading.tight(_:);
  v37 = type metadata accessor for Font.Leading();
  v38 = *(*(v37 - 8) + 104);
  v39 = v55;
  v38(v55, v36, v37);
  sub_10001B350(v39, 0, 1, v37);
  v40 = sub_1001C987C(v49, v48, v33 & 1, v39);
  v49 = static Font.subheadline.getter();
  v41 = static Font.footnote.getter();
  if (!v29)
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    v48 = v40;
    v43 = v34;
    v44 = v42;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v28, 0);
    (*(v43 + 8))(v17, v53);
    LOBYTE(v28) = v56;
  }

  v45 = v55;
  v38(v55, v36, v37);
  sub_10001B350(v45, 0, 1, v37);
  sub_1001C987C(v49, v41, v28 & 1, v45);
  return WindComponentCompassContainerView.init(model:showCircleOutline:primaryLabelFont:secondaryLabelFont:)();
}

uint64_t sub_100837534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100837598(uint64_t a1)
{
  v2 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10083762C()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WindComponentCompassViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1008376E8()
{
  result = qword_100CDD6C0;
  if (!qword_100CDD6C0)
  {
    type metadata accessor for WindComponentCompassContainerView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD6C0);
  }

  return result;
}

uint64_t type metadata accessor for DetailChartConditionInfo()
{
  result = qword_100CDD720;
  if (!qword_100CDD720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008377B4()
{
  result = type metadata accessor for DetailCondition();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100837878(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DetailChartConditionInfo();

  return static DetailCondition.== infix(_:_:)();
}

uint64_t sub_1008378F4()
{
  String.hash(into:)();
  type metadata accessor for DetailChartConditionInfo();
  type metadata accessor for DetailCondition();
  sub_10001F9E0();
  sub_100837AC0(v0, v1);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100837974()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for DetailChartConditionInfo();
  type metadata accessor for DetailCondition();
  sub_10001F9E0();
  sub_100837AC0(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100837A1C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for DetailCondition();
  sub_100837AC0(&qword_100CDD760, &type metadata accessor for DetailCondition);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100837AC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100837B08()
{
  sub_10022C350(&qword_100CBE1B8);
  swift_allocObject();
  return URLHandlerManager.init()();
}

uint64_t sub_100837B4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for NanoWeatherUserActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDD800);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v25)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherUserActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDD818);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    v7 = sub_10002D7F8(v22, v23);
    __chkstk_darwin(v7);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for WeatherStaticConfigurationActivityHandler();
    v21[3] = v12;
    v21[4] = &off_100C698C8;
    v21[0] = v11;
    v13 = type metadata accessor for ContinueUserActivityHandlerManager();
    v14 = swift_allocObject();
    v15 = sub_10002D7F8(v21, v12);
    __chkstk_darwin(v15);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[12] = v12;
    v14[13] = &off_100C698C8;
    v14[9] = v19;
    v14[2] = v5;
    sub_100013188(&v24, (v14 + 3));
    v14[8] = v6;
    sub_100006F14(v21);
    result = sub_100006F14(v22);
    a2[3] = v13;
    a2[4] = &off_100C5E238;
    *a2 = v14;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100837E48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for CoordinateActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v23;
  if (v23)
  {
    v7 = v24;
    v8 = sub_10002D7F8(v25, v26);
    v21[1] = v21;
    __chkstk_darwin(v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for AppContinuationBridge();
    v22[3] = v13;
    v22[4] = &off_100C50230;
    v22[0] = v12;
    v14 = type metadata accessor for WeatherIntentUserActivityHandler();
    v15 = swift_allocObject();
    v16 = sub_10002D7F8(v22, v13);
    __chkstk_darwin(v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[5] = v13;
    v15[6] = &off_100C50230;
    v15[2] = v20;
    v15[7] = v5;
    v15[8] = v6;
    v15[9] = v7;
    sub_100006F14(v22);
    sub_100006F14(v25);
    a2[3] = v14;
    result = sub_10083A9D0(&qword_100CDD838, type metadata accessor for WeatherIntentUserActivityHandler);
    a2[4] = result;
    *a2 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100838140()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = &type metadata for WeatherFeatureFlags;
  v12 = sub_1000032E4();
  v10[0] = 1;
  v4 = isFeatureEnabled(_:)();
  sub_100006F14(v10);
  if (v4)
  {
    type metadata accessor for LocationURLHandlerLink();
  }

  else
  {
    type metadata accessor for LocationURLHandler();
  }

  RegistrationContainer.register<A>(_:name:factory:)();
  v5 = enum case for Scope.singleton(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  v7 = *(v1 + 8);
  v7(v3, v0);
  type metadata accessor for NanoWeatherUserActivityHandler();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for WeatherUserActivityHandler();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDD818);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for CoordinateActivityHandler();
  RegistrationContainer.register<A>(_:name:factory:)();
  v6(v3, v5, v0);
  Definition.inScope(_:)();

  v7(v3, v0);
  type metadata accessor for ShortcutItemHandler();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB9780);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10083851C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  sub_10001930C(a1, a1[3]);
  sub_10022C350(&qword_100CBF860);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = result;
  sub_10001930C(a1, a1[3]);
  sub_10022C350(&qword_100CD1908);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = a1[3];
  sub_10001930C(a1, v12);
  type metadata accessor for CoordinateActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v13 = result;
    sub_10002D7F8(v19, v20);
    sub_100007FD0();
    __chkstk_darwin(v14);
    sub_1000037D8();
    v16 = sub_100004C14(v15);
    v17(v16);
    v18 = sub_10083A758(a2, v11, a3, v11, *v12, v13, a4, a5);
    sub_100006F14(v19);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100838720(void *a1, void (*a2)(void))
{
  sub_10001930C(a1, a1[3]);
  sub_10022C350(&qword_100CD1908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v5 = a1[3];
    sub_10001930C(a1, v5);
    type metadata accessor for CoordinateActivityHandler();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v6 = result;
      sub_10002D7F8(v20, v21);
      sub_100007FD0();
      __chkstk_darwin(v7);
      sub_1000037D8();
      v9 = sub_1000090CC(v8);
      v10(v9);
      v11 = *v5;
      v12 = type metadata accessor for AppContinuationBridge();
      v19[3] = v12;
      v19[4] = &off_100C50230;
      v19[0] = v11;
      a2(0);
      v13 = swift_allocObject();
      sub_10002D7F8(v19, v12);
      sub_100007FD0();
      __chkstk_darwin(v14);
      sub_1000037D8();
      v16 = sub_1000090CC(v15);
      v17(v16);
      v18 = *v11;
      v13[5] = v12;
      v13[6] = &off_100C50230;
      v13[2] = v18;
      v13[7] = v6;
      sub_100006F14(v19);
      sub_100006F14(v20);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100838934@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v4 = sub_10002D7F8(v18, v19);
    __chkstk_darwin(v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for AppContinuationBridge();
    v17[3] = v9;
    v17[4] = &off_100C50230;
    v17[0] = v8;
    v10 = type metadata accessor for WeatherStaticConfigurationActivityHandler();
    v11 = swift_allocObject();
    v12 = sub_10002D7F8(v17, v9);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_100C50230;
    v11[2] = v16;
    sub_100006F14(v17);
    result = sub_100006F14(v18);
    a2[3] = v10;
    a2[4] = &off_100C698C8;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100838B58(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v60)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9798);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v59)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v57)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  v3 = type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v55[3] = v3;
  v55[4] = &off_100C74090;
  v55[0] = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v54)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBF860);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  v42 = v61;
  v43 = v60;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208);
  v41 = v4;

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v52)
  {
    v5 = sub_10002D7F8(v58, v59);
    v40[5] = v40;
    __chkstk_darwin(v5);
    v7 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = sub_10002D7F8(v55, v3);
    v40[4] = v40;
    __chkstk_darwin(v9);
    v11 = (v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_10002D7F8(v53, v54);
    v40[3] = v40;
    __chkstk_darwin(v13);
    v15 = (v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v7;
    v18 = *v11;
    v19 = *v15;
    v20 = type metadata accessor for LocationFinder();
    v50[3] = v20;
    v50[4] = &off_100C5EE88;
    v49 = &off_100C74090;
    v50[0] = v17;
    v48 = v3;
    v47[0] = v18;
    v21 = type metadata accessor for AppContinuationBridge();
    v45 = v21;
    v46 = &off_100C50230;
    v44[0] = v19;
    type metadata accessor for CoordinateActivityHandler();
    v22 = swift_allocObject();
    v23 = sub_10002D7F8(v50, v20);
    v40[2] = v40;
    __chkstk_darwin(v23);
    v25 = (v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = sub_10002D7F8(v47, v48);
    v40[1] = v40;
    __chkstk_darwin(v27);
    v29 = (v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = sub_10002D7F8(v44, v45);
    __chkstk_darwin(v31);
    v33 = (v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = *v25;
    v36 = *v29;
    v37 = *v33;
    v22[7] = v20;
    v22[8] = &off_100C5EE88;
    v22[4] = v35;
    v22[17] = v3;
    v22[18] = &off_100C74090;
    v22[14] = v36;
    v22[22] = v21;
    v22[23] = &off_100C50230;
    v22[19] = v37;
    v38 = v42;
    v22[2] = v43;
    v22[3] = v38;
    sub_100013188(&v56, (v22 + 9));
    v39 = v41;
    v22[24] = sub_10083AA1C;
    v22[25] = v39;
    v22[26] = sub_10083AA18;
    v22[27] = v39;
    sub_100013188(&v51, (v22 + 28));
    sub_100006F14(v44);
    sub_100006F14(v47);
    sub_100006F14(v50);
    sub_100006F14(v53);
    sub_100006F14(v55);
    sub_100006F14(v58);
    return v22;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1008392BC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for CoordinateActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = result;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1908);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v11)
    {
      v4 = sub_10002D7F8(v10, v11);
      __chkstk_darwin(v4);
      v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v7 + 16))(v6);
      v8 = sub_10083A8A0(v3, *v6);
      sub_100006F14(v10);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100839428@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RootViewControllerResolver();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C50220;
  *a1 = result;
  return result;
}

uint64_t sub_100839470(uint64_t a1, void *a2)
{
  v7[3] = &type metadata for WeatherFeatureFlags;
  v7[4] = sub_1000032E4();
  LOBYTE(v7[0]) = 1;
  v3 = isFeatureEnabled(_:)();
  sub_100006F14(v7);
  sub_1000161C0(a2, a2[3]);
  if (v3)
  {
    type metadata accessor for LocationURLHandlerLink();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v7[0] = result;
      v5 = &unk_100CBC728;
      v6 = type metadata accessor for LocationURLHandlerLink;
LABEL_6:
      sub_10083A9D0(v5, v6);
      URLHandlerManager.add<A>(handler:)();
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for LocationURLHandler();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v7[0] = result;
      v5 = &qword_100CDD810;
      v6 = type metadata accessor for LocationURLHandler;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008395C8(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  v2 = type metadata accessor for ShortcutItemHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_10083A9D0(&qword_100CDD808, type metadata accessor for ShortcutItemHandler);
    v5[0] = v4;
    ShortcutItemHandlerManager.add(_:)();
    return sub_100006F14(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100839690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = type metadata accessor for AppContinuationBridge();
  v10 = &off_100C50230;
  *&v8 = a2;
  sub_10022C350(&qword_100CDD830);
  type metadata accessor for ShortcutItemHandlerPattern();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  ShortcutItemHandlerPattern.init(predicate:)();
  *(a3 + 16) = v6;
  *(a3 + 24) = a1;
  sub_100013188(&v8, a3 + 32);
  return a3;
}

void *sub_1008397A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v131 = a6;
  v130 = a4;
  v126 = a7;
  v129 = a3;
  v128 = a2;
  v127 = a1;
  v125 = *a7;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  v9 = *(ParameterKey - 8);
  v10 = __chkstk_darwin(ParameterKey);
  v124 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v122 = &v114 - v13;
  v14 = __chkstk_darwin(v12);
  v120 = &v114 - v15;
  v16 = __chkstk_darwin(v14);
  v119 = &v114 - v17;
  v18 = __chkstk_darwin(v16);
  v118 = &v114 - v19;
  v20 = __chkstk_darwin(v18);
  v117 = &v114 - v21;
  v22 = __chkstk_darwin(v20);
  v116 = &v114 - v23;
  v24 = __chkstk_darwin(v22);
  v115 = &v114 - v25;
  __chkstk_darwin(v24);
  v27 = &v114 - v26;
  v143 = type metadata accessor for AppContinuationBridge();
  v144 = &off_100C50230;
  *&v142 = a5;
  sub_10022C350(&qword_100CA3DA8);
  inited = swift_initStackObject();
  v123 = inited;
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = xmmword_100A8C4F0;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  sub_10022C350(&qword_100CDD820);
  v141 = type metadata accessor for URLHandlerPattern.Param();
  v29 = *(v141 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  v121 = v32;
  *(v32 + 16) = xmmword_100A41BA0;
  v33 = (v32 + v31);
  v34 = v9;
  v35 = *(v9 + 104);
  v137 = v9 + 104;
  v35(v27, enum case for WeatherQueryParameterKey.lat(_:), ParameterKey);
  v134 = v35;
  Parameter = WeatherQueryParameterKey.rawValue.getter();
  v38 = v37;
  v39 = *(v34 + 8);
  v136 = v34 + 8;
  v138 = v39;
  v40 = v27;
  v41 = ParameterKey;
  v39(v40, ParameterKey);
  *v33 = Parameter;
  v33[1] = v38;
  v42 = enum case for URLHandlerPattern.Param.optionalExists(_:);
  v133 = *(v29 + 104);
  v139 = v29 + 104;
  v140 = v33;
  v135 = enum case for URLHandlerPattern.Param.optionalExists(_:);
  v43 = v141;
  v133(v33, enum case for URLHandlerPattern.Param.optionalExists(_:), v141);
  v132 = v30;
  v44 = (v33 + v30);
  v45 = v115;
  v46 = v41;
  v35(v115, enum case for WeatherQueryParameterKey.long(_:), v41);
  v47 = v45;
  v48 = WeatherQueryParameterKey.rawValue.getter();
  v50 = v49;
  v51 = v138;
  v138(v47, v46);
  *v44 = v48;
  v44[1] = v50;
  v52 = v42;
  v53 = v133;
  v133(v44, v52, v43);
  v54 = (v140 + 2 * v30);
  v55 = v116;
  v56 = v134;
  v134(v116, enum case for WeatherQueryParameterKey.lng(_:), v46);
  v57 = WeatherQueryParameterKey.rawValue.getter();
  v59 = v58;
  v60 = v46;
  v51(v55, v46);
  *v54 = v57;
  v54[1] = v59;
  v61 = v135;
  v53(v54, v135, v141);
  v62 = v132;
  v63 = (v140 + 3 * v132);
  v64 = v117;
  v56(v117, enum case for WeatherQueryParameterKey.city(_:), v46);
  v65 = WeatherQueryParameterKey.rawValue.getter();
  v67 = v66;
  v68 = v138;
  v138(v64, v60);
  *v63 = v65;
  v63[1] = v67;
  v69 = v61;
  v70 = v133;
  v133(v63, v69, v141);
  v71 = (v140 + 4 * v62);
  v72 = v118;
  v56(v118, enum case for WeatherQueryParameterKey.isLocal(_:), v60);
  v73 = v56;
  v74 = v72;
  v75 = WeatherQueryParameterKey.rawValue.getter();
  v77 = v76;
  v68(v74, v60);
  *v71 = v75;
  v71[1] = v77;
  v78 = v135;
  v79 = v141;
  v70(v71, v135, v141);
  v80 = v140;
  v81 = (v140 + 5 * v62);
  v82 = v119;
  v73(v119, enum case for WeatherQueryParameterKey.date(_:), v60);
  v83 = WeatherQueryParameterKey.rawValue.getter();
  v85 = v84;
  v138(v82, v60);
  *v81 = v83;
  v81[1] = v85;
  v86 = v78;
  v87 = v133;
  v133((v80 + 5 * v62), v86, v79);
  v88 = (v80 + 6 * v62);
  v89 = v120;
  v134(v120, enum case for WeatherQueryParameterKey.position(_:), v60);
  v90 = WeatherQueryParameterKey.rawValue.getter();
  v92 = v91;
  v138(v89, v60);
  *v88 = v90;
  v88[1] = v92;
  v93 = v135;
  v87(v88, v135, v141);
  v94 = (v140 + 7 * v62);
  v95 = v122;
  v96 = v60;
  v97 = v134;
  v134(v122, enum case for WeatherQueryParameterKey.temperature(_:), v60);
  v98 = WeatherQueryParameterKey.rawValue.getter();
  v100 = v99;
  v101 = v138;
  v138(v95, v96);
  *v94 = v98;
  v94[1] = v100;
  v102 = v141;
  v87(v94, v93, v141);
  v103 = &v140[v132];
  v104 = v124;
  v97(v124, enum case for WeatherQueryParameterKey.fromAdd(_:), v96);
  v105 = WeatherQueryParameterKey.rawValue.getter();
  v107 = v106;
  v101(v104, v96);
  *v103 = v105;
  v103[1] = v107;
  v87(v103, v135, v102);
  sub_10022C350(&qword_100CDD828);
  Dictionary.init(dictionaryLiteral:)();
  sub_10047A9BC(v123);
  v109 = v108;

  swift_setDeallocating();
  sub_10015A594();
  v110 = v126;
  v126[12] = v109;
  v111 = v128;
  v110[2] = v127;
  v110[3] = v111;
  v112 = v130;
  v110[4] = v129;
  v110[5] = v112;
  sub_100013188(&v142, (v110 + 6));
  v110[11] = v131;
  return v110;
}

void *sub_10083A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v74 = a7;
  v75 = a4;
  v76 = a6;
  v72 = a2;
  v73 = a3;
  v71 = a1;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  v9 = *(ParameterKey - 8);
  v10 = __chkstk_darwin(ParameterKey);
  v69 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v68 = &v64 - v13;
  v14 = __chkstk_darwin(v12);
  v67 = &v64 - v15;
  v16 = __chkstk_darwin(v14);
  v66 = &v64 - v17;
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  v87 = type metadata accessor for AppContinuationBridge();
  v88 = &off_100C50230;
  *&v86 = a5;
  sub_10022C350(&qword_100CDD820);
  v20 = type metadata accessor for URLHandlerPattern.Param();
  v21 = *(v20 - 8);
  v80 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v70 = v23;
  *(v23 + 16) = xmmword_100A3B030;
  v24 = (v23 + v22);
  v25 = *(v9 + 104);
  v79 = v9 + 104;
  v25(v19, enum case for WeatherQueryParameterKey.lat(_:), ParameterKey);
  v78 = v25;
  Parameter = WeatherQueryParameterKey.rawValue.getter();
  v28 = v27;
  v65 = *(v9 + 8);
  v85 = v9 + 8;
  v65(v19, ParameterKey);
  v77 = v24;
  *v24 = Parameter;
  v24[1] = v28;
  v84 = enum case for URLHandlerPattern.Param.optionalExists(_:);
  v29 = *(v21 + 104);
  v82 = v20;
  v83 = v29;
  v81 = v21 + 104;
  (v29)(v24);
  v30 = v80;
  v31 = (v24 + v80);
  v32 = v66;
  v25(v66, enum case for WeatherQueryParameterKey.long(_:), ParameterKey);
  v33 = WeatherQueryParameterKey.rawValue.getter();
  v35 = v34;
  v36 = ParameterKey;
  v37 = v65;
  v65(v32, ParameterKey);
  *v31 = v33;
  v31[1] = v35;
  v38 = v84;
  v39 = v83;
  v83(v31, v84, v20);
  v40 = v77;
  v41 = (v77 + 2 * v30);
  v42 = v67;
  v43 = v78;
  v78(v67, enum case for WeatherQueryParameterKey.lng(_:), v36);
  v44 = WeatherQueryParameterKey.rawValue.getter();
  v46 = v45;
  v37(v42, v36);
  *v41 = v44;
  v41[1] = v46;
  v39(v41, v38, v82);
  v47 = v80;
  v48 = (v40 + 3 * v80);
  v49 = v68;
  v43(v68, enum case for WeatherQueryParameterKey.city(_:), v36);
  v50 = WeatherQueryParameterKey.rawValue.getter();
  v52 = v51;
  v37(v49, v36);
  *v48 = v50;
  v48[1] = v52;
  v53 = v82;
  v83(v48, v84, v82);
  v54 = (v77 + 4 * v47);
  v55 = v69;
  v78(v69, enum case for WeatherQueryParameterKey.isLocal(_:), v36);
  v56 = WeatherQueryParameterKey.rawValue.getter();
  v58 = v57;
  v37(v55, v36);
  *v54 = v56;
  v54[1] = v58;
  v83(v54, v84, v53);
  sub_10022C350(&qword_100CDD828);
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CB5260);
  type metadata accessor for URLHandlerPattern();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100A3BBA0;

  URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();

  URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();
  URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();
  v60 = v74;
  v74[12] = v59;
  v61 = v72;
  v60[2] = v71;
  v60[3] = v61;
  v62 = v75;
  v60[4] = v73;
  v60[5] = v62;
  sub_100013188(&v86, (v60 + 6));
  v60[11] = v76;
  return v60;
}

uint64_t sub_10083A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v24 = type metadata accessor for AppContinuationBridge();
  v25 = &off_100C50230;
  v23[0] = a5;
  a7(0);
  v16 = swift_allocObject();
  sub_10002D7F8(v23, v24);
  sub_100007FD0();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v19 = sub_100004C14(v18);
  v20(v19);
  v21 = a8(a1, a2, a3, a4, *a5, a6, v16);
  sub_100006F14(v23);
  return v21;
}

uint64_t sub_10083A8A0(uint64_t a1, uint64_t *a2)
{
  v12 = *a2;
  v13 = &off_100C50230;
  v11[0] = a2;
  type metadata accessor for ShortcutItemHandler();
  v3 = swift_allocObject();
  v4 = sub_10002D7F8(v11, v12);
  __chkstk_darwin(v4);
  v6 = (&v11[-1] - v5);
  (*(v7 + 16))(&v11[-1] - v5);
  v8 = sub_100839690(a1, *v6, v3);
  sub_100006F14(v11);
  return v8;
}

uint64_t sub_10083A9D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10083AA68()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2A38 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();
}

uint64_t sub_10083AB00@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA71B0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for HourlyForecastComponentView();
  sub_1000302D8(v1 + *(v13 + 28), v12, &qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_10083ACE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v57 = a2;
  v2 = type metadata accessor for EnvironmentValues();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GridItem.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10022C350(&qword_100CDDAC0);
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v53 = sub_10022C350(&qword_100CDDAB0);
  __chkstk_darwin(v53);
  v54 = &v46 - v13;
  v14 = sub_1001BD204();
  sub_10022C350(&qword_100CAD610);
  type metadata accessor for GridItem();
  *(swift_allocObject() + 16) = xmmword_100A3BBA0;
  v50 = xmmword_100A3C980;
  *v9 = xmmword_100A3C980;
  v15 = enum case for GridItem.Size.flexible(_:);
  v16 = *(v7 + 104);
  v16(v9, enum case for GridItem.Size.flexible(_:), v6);
  GridItem.init(_:spacing:alignment:)();
  *v9 = v14;
  v16(v9, enum case for GridItem.Size.fixed(_:), v6);
  GridItem.init(_:spacing:alignment:)();
  *v9 = v50;
  v16(v9, v15, v6);
  GridItem.init(_:spacing:alignment:)();
  v17 = v51;
  v58 = v51;
  static VerticalAlignment.center.getter();
  v59 = 0;
  sub_1001C8078(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10022C350(&qword_100CDDAE8);
  sub_10083D7A8();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v18 = static Edge.Set.horizontal.getter();
  v19 = (v17 + *(type metadata accessor for HourlyForecastComponentView() + 20));
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v22 = v47;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v20, 0);
    (*(v48 + 8))(v22, v49);
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v54;
  (*(v55 + 32))(v54, v12, v56);
  v32 = &v31[*(v53 + 36)];
  *v32 = v18;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v31;
  v43 = v57;
  sub_10011C0F0(v42, v57, &qword_100CDDAB0);
  result = sub_10022C350(&qword_100CDDA98);
  v45 = v43 + *(result + 36);
  *v45 = v33;
  *(v45 + 8) = v35;
  *(v45 + 16) = v37;
  *(v45 + 24) = v39;
  *(v45 + 32) = v41;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_10083B324(uint64_t a1)
{
  v2 = type metadata accessor for HourlyForecastComponentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *(a1 + *(type metadata accessor for HourlyForecastComponentViewModel(0) + 20));
  sub_1001C7690(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HourlyForecastComponentView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1001C7944(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_10022C350(&qword_100CCB4B0);
  sub_10022C350(&qword_100CDDB00);
  sub_100006F64(&qword_100CDDB38, &qword_100CCB4B0);
  sub_10083D82C();
  sub_1001C8078(&qword_100CDDB40, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10083B520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CC2B20);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v19 = 0xD00000000000001ALL;
  v20 = 0x8000000100AE0C00;
  sub_1000302D8(a2, v8, &qword_100CC2B20);
  v9 = type metadata accessor for UUID();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CC2B20);
    v10 = 0xE500000000000000;
    v11 = 0x5445534E55;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v10 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  v13._countAndFlagsBits = v11;
  v13._object = v10;
  String.append(_:)(v13);

  v14 = v19;
  v15 = v20;
  v16 = sub_10022C350(&qword_100CDDA90);
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  result = sub_10022C350(&qword_100CDDAD0);
  v18 = (a3 + *(result + 52));
  *v18 = v14;
  v18[1] = v15;
  return result;
}

uint64_t sub_10083B71C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v67 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v67);
  v68 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for AccessibilityTraits();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10022C350(&qword_100CDDB28);
  __chkstk_darwin(v81);
  inited = &v64 - v11;
  v73 = sub_10022C350(&qword_100CDDB48);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v82 = &v64 - v13;
  v75 = sub_10022C350(&qword_100CDDB20);
  __chkstk_darwin(v75);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v71 = &v64 - v17;
  __chkstk_darwin(v18);
  v74 = &v64 - v19;
  __chkstk_darwin(v20);
  v79 = &v64 - v21;
  v65 = sub_10022C350(&qword_100CDDB10);
  __chkstk_darwin(v65);
  v66 = &v64 - v22;
  LOBYTE(v23) = 1;
  v24 = 1;
  if ((sub_1001C80C0() & 1) == 0)
  {
    if (qword_100CA28D0 != -1)
    {
LABEL_23:
      swift_once();
    }

    v24 = byte_100CDD9E0;
  }

  *inited = 0;
  inited[8] = v23;
  v25 = &inited[*(v81 + 36)];
  v80 = a2;
  sub_10083C0B8(a2, a1, v24, v25);
  static AccessibilityChildBehavior.ignore.getter();
  a2 = &unk_100A8C6F0;
  v70 = sub_100006F64(&qword_100CDDB30, &qword_100CDDB28);
  View.accessibilityElement(children:)();
  v26 = *(v8 + 8);
  v8 += 8;
  v26(v10, v7);
  sub_1000180EC(inited, &qword_100CDDB28);
  sub_10022C350(&qword_100CA3DA8);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_100A3B020;
  sub_1001C905C();
  *(inited + 4) = v27;
  *(inited + 5) = v28;
  v29 = sub_1001C81B4();
  v31 = v30;
  v32 = 0;
  v33 = 0;
  *(inited + 6) = v29;
  *(inited + 7) = v31;
  if (v24)
  {
    v32 = sub_1005FAC18();
  }

  *(inited + 8) = v32;
  *(inited + 9) = v33;
  LOBYTE(v23) = a1;
  v10 = 0;
  *(inited + 10) = sub_1001C9480();
  *(inited + 11) = v34;
  v7 = _swiftEmptyArrayStorage;
LABEL_7:
  v35 = 16 * v10 + 40;
  while (v10 != 4)
  {
    if (v10 > 3)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    ++v10;
    v36 = v35 + 16;
    v23 = *&inited[v35];
    v35 += 16;
    if (v23)
    {
      a2 = *&inited[v36 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100109810();
        v7 = v38;
      }

      v8 = v7[2];
      if (v8 >= v7[3] >> 1)
      {
        sub_100109810();
        v7 = v39;
      }

      v7[2] = v8 + 1;
      v37 = &v7[2 * v8];
      v37[4] = a2;
      v37[5] = v23;
      goto LABEL_7;
    }
  }

  swift_setDeallocating();
  sub_10015A594();
  v85 = v7;
  sub_10022C350(&qword_100CCC930);
  sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
  v40 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  v85 = v40;
  v86 = v42;
  v83 = v81;
  v84 = v70;
  swift_getOpaqueTypeConformance2();
  inited = sub_10002D5A4();
  v43 = v73;
  v23 = v82;
  View.accessibilityLabel<A>(_:)();

  (*(v72 + 8))(v23, v43);
  v44 = v71;
  ModifiedContent<>.accessibilityRespondsToUserInteraction(_:)();
  v7 = &qword_100CDDB20;
  v10 = &unk_100A8C6E8;
  sub_1000180EC(v15, &qword_100CDDB20);
  v45 = v76;
  static AccessibilityTraits.isButton.getter();
  v15 = v74;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v77 + 8))(v45, v78);
  sub_1000180EC(v44, &qword_100CDDB20);
  sub_10022C350(&qword_100CA7300);
  a2 = swift_allocObject();
  a2[1] = xmmword_100A2C3F0;
  sub_1001C905C();
  *(a2 + 4) = v46;
  *(a2 + 5) = v47;
  v8 = v79;
  LOBYTE(v23) = v15;
  ModifiedContent<>.accessibilityInputLabels<A>(_:)();

  sub_1000180EC(v15, &qword_100CDDB20);
  v85 = 0x5F72756F68;
  v86 = 0xE500000000000000;
  v48 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1001C79A8(a1, *(v80 + *(v48 + 20)));
  if (v50)
  {
    v51 = -1;
  }

  else
  {
    v51 = v49;
  }

  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    goto LABEL_22;
  }

  v83 = v53;
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  v55 = v86;
  v56 = v68;
  *v68 = v85;
  *(v56 + 8) = v55;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v57 = v66;
  v58 = &v66[*(v65 + 36)];
  v59 = type metadata accessor for AutomationInfoProperty();
  sub_1001C7690(v56, &v58[*(v59 + 24)], type metadata accessor for AutomationInfo);
  sub_1001C9E84(v56);
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  *(v58 + 2) = swift_getKeyPath();
  v58[24] = 0;
  sub_10011C0F0(v8, v57, &qword_100CDDB20);
  KeyPath = swift_getKeyPath();
  v61 = v69;
  sub_10011C0F0(v57, v69, &qword_100CDDB10);
  result = sub_10022C350(&qword_100CDDB00);
  v63 = (v61 + *(result + 36));
  *v63 = KeyPath;
  v63[1] = 0x3FE999999999999ALL;
  return result;
}

uint64_t sub_10083C0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v88 = a4;
  v7 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v7 - 8);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v73 - v10;
  v11 = type metadata accessor for EnvironmentValues();
  v74 = *(v11 - 8);
  v75 = v11;
  __chkstk_darwin(v11);
  v73 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v73 - v18;
  v20 = sub_10022C350(&qword_100CB66D8);
  __chkstk_darwin(v20 - 8);
  v87 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v85 = &v73 - v23;
  v24 = sub_10022C350(&qword_100CDDB50);
  __chkstk_darwin(v24 - 8);
  v86 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v73 - v27;
  v29 = sub_10022C350(&qword_100CDDB58);
  __chkstk_darwin(v29 - 8);
  v84 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v81 = &v73 - v32;
  sub_1001C76EC(a2, &v73 - v32);
  *v28 = static HorizontalAlignment.center.getter();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v33 = *(sub_10022C350(&qword_100CDDB60) + 44);
  v83 = v28;
  v34 = a1;
  sub_10083C8A8(a2, a1, a3, &v28[v33]);
  v89 = sub_1001C9480();
  v90 = v35;
  sub_10002D5A4();
  v36 = Text.init<A>(_:)();
  v77 = v37;
  v78 = v36;
  v39 = v38;
  v79 = v40;
  v41 = *(v14 + 104);
  v41(v19, enum case for Font.TextStyle.title3(_:), v13);
  static Font.Weight.medium.getter();
  v76 = static Font.system(_:weight:)();
  v42 = *(v14 + 8);
  v42(v19, v13);
  v43 = sub_1001C82B4();
  v44 = &enum case for Font.TextStyle.footnote(_:);
  if ((v43 & 1) == 0)
  {
    v44 = &enum case for Font.TextStyle.body(_:);
  }

  v41(v16, *v44, v13);
  static Font.Weight.bold.getter();
  v45 = static Font.system(_:weight:)();
  v42(v16, v13);
  v46 = v34 + *(type metadata accessor for HourlyForecastComponentView() + 20);
  v47 = *v46;
  if (*(v46 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v49 = v73;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v47, 0);
    (*(v74 + 8))(v49, v75);
    LOBYTE(v47) = v89;
  }

  v50 = enum case for Font.Leading.tight(_:);
  v51 = type metadata accessor for Font.Leading();
  v52 = v80;
  (*(*(v51 - 8) + 104))(v80, v50, v51);
  sub_10001B350(v52, 0, 1, v51);
  v53 = v82;
  sub_1000302D8(v52, v82, &qword_100CACFF0);
  v54 = v76;

  sub_1001C987C(v54, v45, v47 & 1, v53);
  v55 = v78;
  v56 = v39;
  v57 = v77;
  v58 = Text.font(_:)();
  v60 = v59;
  LODWORD(v75) = v61;
  v82 = v62;

  sub_10010CD64(v55, v57, v56 & 1);

  sub_1000180EC(v52, &qword_100CACFF0);
  v89 = v58;
  v90 = v60;
  v63 = v75 & 1;
  v91 = v75 & 1;
  v92 = v82;
  v64 = v85;
  View.accessibilityHidden(_:)();
  sub_10010CD64(v58, v60, v63);

  v65 = v81;
  v66 = v84;
  sub_1000302D8(v81, v84, &qword_100CDDB58);
  v67 = v83;
  v68 = v86;
  sub_1000302D8(v83, v86, &qword_100CDDB50);
  v69 = v87;
  sub_1000302D8(v64, v87, &qword_100CB66D8);
  v70 = v88;
  sub_1000302D8(v66, v88, &qword_100CDDB58);
  v71 = sub_10022C350(&qword_100CDDB68);
  sub_1000302D8(v68, v70 + *(v71 + 48), &qword_100CDDB50);
  sub_1000302D8(v69, v70 + *(v71 + 64), &qword_100CB66D8);
  sub_1000180EC(v64, &qword_100CB66D8);
  sub_1000180EC(v67, &qword_100CDDB50);
  sub_1000180EC(v65, &qword_100CDDB58);
  sub_1000180EC(v69, &qword_100CB66D8);
  sub_1000180EC(v68, &qword_100CDDB50);
  return sub_1000180EC(v66, &qword_100CDDB58);
}

uint64_t sub_10083C8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v127) = a3;
  v132 = a2;
  v129 = a4;
  v5 = sub_10022C350(&qword_100CB66D8);
  __chkstk_darwin(v5 - 8);
  v114 = &v101 - v6;
  v134 = sub_10022C350(&qword_100CDDB70);
  __chkstk_darwin(v134);
  v113 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = &v101 - v9;
  v10 = sub_10022C350(&qword_100CDDB78);
  __chkstk_darwin(v10 - 8);
  v128 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v101 - v13;
  v124 = sub_10022C350(&qword_100CDDB80);
  __chkstk_darwin(v124);
  v125 = &v101 - v15;
  v16 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v122 = *(v16 - 8);
  v123 = v16;
  __chkstk_darwin(v16);
  v121 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for EnvironmentValues();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ColorSchemeContrast();
  v130 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v101 - v23;
  v25 = sub_10022C350(&qword_100CBB908);
  __chkstk_darwin(v25 - 8);
  v27 = &v101 - v26;
  v117 = sub_10022C350(&qword_100CBB910);
  __chkstk_darwin(v117);
  v115 = (&v101 - v28);
  v120 = sub_10022C350(&qword_100CDDB88);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v101 - v29;
  v30 = sub_10022C350(&qword_100CDDB90);
  __chkstk_darwin(v30);
  v119 = &v101 - v31;
  v32 = sub_10022C350(&qword_100CDDB98);
  __chkstk_darwin(v32 - 8);
  v126 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v101 - v35;
  v37 = a1;
  v38 = sub_1001C9B04();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v133 = v14;
  v131 = v36;
  v111 = v21;
  v110 = v24;
  v109 = v19;
  if (v41)
  {
    v104 = v30;
    v105 = v37;
    sub_1001C9B04();
    Image.init(systemName:)();
    v42 = v132;
    sub_10083AB00(v24);
    v43 = v130;
    (*(v130 + 104))(v21, enum case for ColorSchemeContrast.increased(_:), v19);
    v44 = static ColorSchemeContrast.== infix(_:_:)();
    v45 = *(v43 + 8);
    v45(v21, v19);
    v45(v24, v19);
    v46 = type metadata accessor for Image.TemplateRenderingMode();
    v47 = &enum case for Image.TemplateRenderingMode.template(_:);
    if ((v44 & 1) == 0)
    {
      v47 = &enum case for Image.TemplateRenderingMode.original(_:);
    }

    (*(*(v46 - 8) + 104))(v27, *v47, v46);
    sub_10001B350(v27, 0, 1, v46);
    v103 = Image.renderingMode(_:)();

    sub_1000180EC(v27, &qword_100CBB908);
    v102 = static Font.title3.getter();
    if (sub_1001C82B4())
    {
      v48 = static Font.footnote.getter();
    }

    else
    {
      v48 = static Font.body.getter();
    }

    v50 = v48;
    v51 = (v42 + *(type metadata accessor for HourlyForecastComponentView() + 20));
    v52 = *v51;
    v53 = v125;
    if (*(v51 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v54 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v55 = v50;
      v56 = v106;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v52, 0);
      v57 = v56;
      v50 = v55;
      (*(v107 + 8))(v57, v108);
      LOBYTE(v52) = v135;
    }

    v58 = v117;
    v59 = v115;
    v60 = (v115 + *(v117 + 36));
    v61 = type metadata accessor for FontWithSmallVariantModifier();
    v62 = *(v61 + 24);
    v63 = enum case for Font.Leading.tight(_:);
    v64 = type metadata accessor for Font.Leading();
    (*(*(v64 - 8) + 104))(v60 + v62, v63, v64);
    sub_10001B350(v60 + v62, 0, 1, v64);
    *v60 = v102;
    v60[1] = v50;
    *(v60 + *(v61 + 28)) = v52 & 1;
    *v59 = v103;
    v65 = v121;
    static TypesettingLanguageAwareLineHeightRatio.disable.getter();
    v66 = sub_1001CAB0C();
    v67 = v116;
    View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
    (*(v122 + 8))(v65, v123);
    sub_1000180EC(v59, &qword_100CBB910);
    v135 = v58;
    v136 = v66;
    swift_getOpaqueTypeConformance2();
    v69 = v119;
    v68 = v120;
    View.accessibilityHidden(_:)();
    (*(v118 + 8))(v67, v68);
    sub_1000302D8(v69, v53, &qword_100CDDB90);
    swift_storeEnumTagMultiPayload();
    sub_10083DBD8();
    v36 = v131;
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v69, &qword_100CDDB90);
    v14 = v133;
    v49 = v134;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10083DBD8();
    _ConditionalContent<>.init(storage:)();
    v49 = v134;
  }

  v70 = 1;
  if (v127)
  {
    sub_1005FAAFC();
    v71 = Double.formattedPercent(roundToNearestPercent:)(1);
    v125 = sub_1001BD510(v71._countAndFlagsBits, v71._object);
    v73 = v72;
    v75 = v74;
    v127 = v76;

    v77 = v110;
    sub_10083AB00(v110);
    v78 = v130;
    v79 = v111;
    v80 = v109;
    (*(v130 + 104))(v111, enum case for ColorSchemeContrast.increased(_:), v109);
    v81 = static ColorSchemeContrast.== infix(_:_:)();
    v82 = *(v78 + 8);
    v82(v79, v80);
    v82(v77, v80);
    if (v81)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.cyan.getter();
    }

    v83 = v125;
    v84 = Text.foregroundColor(_:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    sub_10010CD64(v83, v73, v75 & 1);

    v135 = v84;
    v136 = v86;
    v137 = v88 & 1;
    v138 = v90;
    v91 = v114;
    View.accessibilityHidden(_:)();
    sub_10010CD64(v84, v86, v88 & 1);

    v92 = v91;
    v93 = v113;
    sub_10011C0F0(v92, v113, &qword_100CB66D8);
    v49 = v134;
    *(v93 + *(v134 + 36)) = 1;
    v94 = v112;
    sub_10011C0F0(v93, v112, &qword_100CDDB70);
    v14 = v133;
    sub_10011C0F0(v94, v133, &qword_100CDDB70);
    v70 = 0;
    v36 = v131;
  }

  sub_10001B350(v14, v70, 1, v49);
  v95 = v126;
  sub_1000302D8(v36, v126, &qword_100CDDB98);
  v96 = v128;
  sub_1000302D8(v14, v128, &qword_100CDDB78);
  v97 = v129;
  *v129 = 0;
  *(v97 + 8) = 1;
  v98 = sub_10022C350(&qword_100CDDBB0);
  sub_1000302D8(v95, v97 + v98[12], &qword_100CDDB98);
  sub_1000302D8(v96, v97 + v98[16], &qword_100CDDB78);
  v99 = v97 + v98[20];
  *v99 = 0;
  v99[8] = 1;
  sub_1000180EC(v14, &qword_100CDDB78);
  sub_1000180EC(v36, &qword_100CDDB98);
  sub_1000180EC(v96, &qword_100CDDB78);
  return sub_1000180EC(v95, &qword_100CDDB98);
}

unint64_t sub_10083D600()
{
  result = qword_100CDDAA0;
  if (!qword_100CDDAA0)
  {
    sub_10022E824(&qword_100CDDA98);
    sub_10083D68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDAA0);
  }

  return result;
}

unint64_t sub_10083D68C()
{
  result = qword_100CDDAA8;
  if (!qword_100CDDAA8)
  {
    sub_10022E824(&qword_100CDDAB0);
    sub_100006F64(&qword_100CDDAB8, &qword_100CDDAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDAA8);
  }

  return result;
}

unint64_t sub_10083D74C()
{
  result = qword_100CDDAD8;
  if (!qword_100CDDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDAD8);
  }

  return result;
}

unint64_t sub_10083D7A8()
{
  result = qword_100CDDAF0;
  if (!qword_100CDDAF0)
  {
    sub_10022E824(&qword_100CDDAE8);
    sub_10083D82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDAF0);
  }

  return result;
}

unint64_t sub_10083D82C()
{
  result = qword_100CDDAF8;
  if (!qword_100CDDAF8)
  {
    sub_10022E824(&qword_100CDDB00);
    sub_10083D8E4();
    sub_100006F64(&qword_100CA40A8, &qword_100CA40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDAF8);
  }

  return result;
}

unint64_t sub_10083D8E4()
{
  result = qword_100CDDB08;
  if (!qword_100CDDB08)
  {
    sub_10022E824(&qword_100CDDB10);
    sub_10083D9A0();
    sub_1001C8078(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDB08);
  }

  return result;
}

unint64_t sub_10083D9A0()
{
  result = qword_100CDDB18;
  if (!qword_100CDDB18)
  {
    sub_10022E824(&qword_100CDDB20);
    sub_10022E824(&qword_100CDDB28);
    sub_100006F64(&qword_100CDDB30, &qword_100CDDB28);
    swift_getOpaqueTypeConformance2();
    sub_1001C8078(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDB18);
  }

  return result;
}

uint64_t sub_10083DACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HourlyForecastComponentView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10083B71C(a1, v6, a2);
}

uint64_t sub_10083DB4C()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA29C0 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  return v1;
}

unint64_t sub_10083DBD8()
{
  result = qword_100CDDBA8;
  if (!qword_100CDDBA8)
  {
    sub_10022E824(&qword_100CDDB90);
    sub_10022E824(&qword_100CBB910);
    sub_1001CAB0C();
    swift_getOpaqueTypeConformance2();
    sub_1001C8078(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDBA8);
  }

  return result;
}

unint64_t sub_10083DCD0()
{
  result = qword_100CDDBC0;
  if (!qword_100CDDBC0)
  {
    sub_10022E824(&qword_100CDDBB8);
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDBC0);
  }

  return result;
}

uint64_t sub_10083DDC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC70);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4D70);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v20, v21);
      __chkstk_darwin(v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SunriseSunsetDetailInteractor();
      v19[3] = v11;
      v19[4] = &off_100C4E5F8;
      v19[0] = v10;
      v12 = type metadata accessor for SunriseSunsetDetailModule();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v19, v11);
      __chkstk_darwin(v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_100C4E5F8;
      v13[2] = v18;
      v13[7] = v5;
      sub_100006F14(v19);
      result = sub_100006F14(v20);
      a2[3] = v12;
      a2[4] = &off_100C5D560;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10083E050()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CDDC68);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC70);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC78);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC80);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC88);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC90);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for SunriseSunsetDetailDataProcessor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_10022C350(&qword_100CDDC98);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDCA0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDCA8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDCB0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v5(v3, v4, v0);
  Definition.inScope(_:)();

  v6(v3, v0);
  sub_10022C350(&qword_100CA4D70);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10083E4A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    v5 = Tracker.chain(name:identifier:)();

    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for SunriseSunsetDetailTracker;
      a2[4] = &off_100C751B8;
      v6 = swift_allocObject();
      *a2 = v6;
      *(v6 + 16) = v5;
      return sub_100013188(&v7, v6 + 24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10083E5EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v37)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC68);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v36)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v38;
  v25 = v37;
  v26 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v27;
  if (v27)
  {
    v7 = v29;
    v6 = v30;
    v8 = v28;
    v9 = sub_10002D7F8(v35, v36);
    v23 = &v23;
    __chkstk_darwin(v9);
    v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_10002D7F8(v33, v34);
    __chkstk_darwin(v13);
    v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = sub_10002D7F8(v31, v32);
    __chkstk_darwin(v17);
    v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = sub_10083FEF8(v25, v24, v11, *v15, *v19, v5, v8, v7, v6);
    sub_100006F14(v31);
    sub_100006F14(v33);
    sub_100006F14(v35);
    result = type metadata accessor for SunriseSunsetDetailInteractor();
    v22 = v26;
    v26[3] = result;
    v22[4] = &off_100C4E5F8;
    *v22 = v21;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10083EA40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SunriseSunsetPolarSunEventStringBuilder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SunriseSunsetEventCalculator();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v57 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  SunriseSunsetEventCalculator.init()();
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC98);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v80)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v78)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v76)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC88);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v74)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v72)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v70)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  SunriseSunsetPolarSunEventStringBuilder.init()();
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v68)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = v8;
  v53 = v7;
  v54 = v5;
  v55 = v4;
  v56 = a2;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v51 = v66;
  if (v66 != 2)
  {
    v11 = sub_10002D7F8(v77, v78);
    v50[5] = v50;
    __chkstk_darwin(v11);
    v13 = (v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_10002D7F8(v75, v76);
    v50[4] = v50;
    __chkstk_darwin(v15);
    v17 = (v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = sub_10002D7F8(v67, v68);
    v50[3] = v50;
    __chkstk_darwin(v19);
    v21 = (v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v13;
    v24 = *v17;
    v25 = *v21;
    v26 = type metadata accessor for SunriseSunsetDetailViewDataCache();
    v65[3] = v26;
    v65[4] = &off_100C5E7A8;
    v65[0] = v23;
    v27 = type metadata accessor for SunriseSunsetDetailDataProcessor();
    v63 = v27;
    v64 = &off_100C49710;
    v62[0] = v24;
    v28 = type metadata accessor for NewsArticleComponentViewModelFactory();
    v60 = v28;
    v61 = &off_100C60578;
    v59[0] = v25;
    v29 = type metadata accessor for SunriseSunsetDetailViewModelFactory();
    v30 = swift_allocObject();
    v31 = sub_10002D7F8(v65, v26);
    v50[2] = v50;
    __chkstk_darwin(v31);
    v33 = (v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = sub_10002D7F8(v62, v63);
    v50[1] = v50;
    __chkstk_darwin(v35);
    v37 = (v50 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = sub_10002D7F8(v59, v60);
    v50[0] = v50;
    __chkstk_darwin(v39);
    v41 = (v50 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = *v33;
    v44 = *v37;
    v45 = *v41;
    v46 = (v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_viewDataCache);
    v46[3] = v26;
    v46[4] = &off_100C5E7A8;
    *v46 = v43;
    v47 = (v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_preprocessedDataProvider);
    v47[3] = v27;
    v47[4] = &off_100C49710;
    *v47 = v44;
    v48 = (v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_newsArticleComponentViewModelFactory);
    v48[3] = v28;
    v48[4] = &off_100C60578;
    *v48 = v45;
    (*(v58 + 32))(v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetEventCalculator, v57, v52);
    sub_100013188(&v79, v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory);
    sub_100013188(&v73, v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder);
    sub_100013188(&v71, v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunElevationCalculator);
    sub_100013188(&v69, v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory);
    (*(v54 + 32))(v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetPolarSunEventStringBuilder, v53, v55);
    *(v30 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_isDemoPresetActive) = v51 & 1;
    sub_100006F14(v59);
    sub_100006F14(v62);
    sub_100006F14(v65);
    sub_100006F14(v67);
    sub_100006F14(v75);
    result = sub_100006F14(v77);
    v49 = v56;
    v56[3] = v29;
    v49[4] = &off_100C716B8;
    *v49 = v30;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10083F3B4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for DaylightStringBuilder();
  a1[4] = sub_100840488(&qword_100CDDCD8, &type metadata accessor for DaylightStringBuilder);
  sub_100042FB0(a1);
  return DaylightStringBuilder.init()();
}

uint64_t sub_10083F434@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v5 = type metadata accessor for SunriseSunsetDetailDataProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10083F4A4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCA8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v14)
  {
    v3 = sub_10002D7F8(v17, v18);
    __chkstk_darwin(v3);
    v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v6 + 16))(v5);
    v7 = sub_10002D7F8(v13, v14);
    __chkstk_darwin(v7);
    v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v10 + 16))(v9);
    v11 = sub_10084026C(v5, &v15, *v9);
    sub_100006F14(v13);
    sub_100006F14(v17);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10083F718@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CDDCA0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for SunriseSunsetDetailChartViewModelFactory();
      swift_allocObject();
      result = SunriseSunsetDetailChartViewModelFactory.init(sunElevationCalculator:chartBackgroundFactory:)();
      a2[3] = v5;
      a2[4] = &protocol witness table for SunriseSunsetDetailChartViewModelFactory;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10083F818@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SunriseSunsetChartBackgroundModelFactory();
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC7Weather40SunriseSunsetChartBackgroundModelFactory____lazy_storage___listAnimationKind;
  v5 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_10001B350(v3 + v4, 1, 1, v5);
  a1[3] = v2;
  result = sub_100840488(&qword_100CDDCC0, type metadata accessor for SunriseSunsetChartBackgroundModelFactory);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_10083F8C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for SunriseSunsetMonthlyViewModelFactory;
    a2[4] = &off_100C65670;
    v4 = swift_allocObject();
    *a2 = v4;
    *(v4 + 80) = &type metadata for SunriseSunsetDaylightCalculator;
    *(v4 + 88) = &off_100C704A8;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10083F984@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SunriseSunsetDetailViewDataCache();
  swift_allocObject();
  result = sub_100579590();
  a1[3] = v2;
  a1[4] = &off_100C5E7A8;
  *a1 = result;
  return result;
}

uint64_t sub_10083F9DC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC78);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for SunriseSunsetDetailInputFactory();
  v16 = &off_100C592B0;
  v14[0] = v7;
  sub_100035B30(v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10083FD4C;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC80);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v10 = *sub_1000161C0(v17, v18);
    v15 = type metadata accessor for SunriseSunsetDetailViewModelFactory();
    v16 = &off_100C716B8;
    v14[0] = v10;
    sub_100035B30(v14, v13);
    v11 = swift_allocObject();
    sub_100013188(v13, v11 + 16);

    sub_100006F14(v14);
    sub_100006F14(v17);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10083FD54;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4D70);
    swift_allocObject();
    return sub_10024BEB8(v3, v6, v5, v4, sub_100266DE8, 0, sub_100104B5C, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10083FD5C(const void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v13 = &type metadata for SunriseSunsetMonthlyViewModelFactory;
  v14 = &off_100C65670;
  *&v12 = swift_allocObject();
  memcpy((v12 + 16), a1, 0x50uLL);
  v10 = type metadata accessor for SunriseSunsetDetailViewDataCache();
  v11 = &off_100C5E7A8;
  *&v9 = a3;
  sub_100046E64();
  *(a4 + 136) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  sub_100840488(&qword_100CDDCC8, type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey);
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CDDCD0);
  swift_allocObject();
  *(a4 + 144) = Cache.init(_:)();
  sub_100013188(&v9, a4 + 96);
  sub_100013188(a2, a4 + 56);
  sub_100013188(&v12, a4 + 16);
  return a4;
}

void *sub_10083FEF8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a7;
  v42 = a8;
  v38 = a2;
  v39 = a9;
  v40 = a6;
  v47[3] = &type metadata for SunriseSunsetDetailTracker;
  v47[4] = &off_100C751B8;
  v13 = swift_allocObject();
  v47[0] = v13;
  v14 = a3[1];
  v13[1] = *a3;
  v13[2] = v14;
  v13[3] = a3[2];
  v15 = type metadata accessor for SunriseSunsetDetailDataProcessor();
  v46[3] = v15;
  v46[4] = &off_100C49728;
  v46[0] = a4;
  v44 = v15;
  v45 = &off_100C49710;
  v43[0] = a5;
  type metadata accessor for SunriseSunsetDetailInteractor();
  v16 = swift_allocObject();
  v17 = sub_10002D7F8(v47, &type metadata for SunriseSunsetDetailTracker);
  __chkstk_darwin(v17);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_10002D7F8(v46, v15);
  __chkstk_darwin(v21);
  v23 = (&v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_10002D7F8(v43, v44);
  __chkstk_darwin(v25);
  v27 = (&v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v23;
  v30 = *v27;
  v16[7] = &type metadata for SunriseSunsetDetailTracker;
  v16[8] = &off_100C751B8;
  v31 = swift_allocObject();
  v16[4] = v31;
  v32 = v19[1];
  v31[1] = *v19;
  v31[2] = v32;
  v31[3] = v19[2];
  v16[12] = v15;
  v16[13] = &off_100C49728;
  v16[9] = v29;
  v16[17] = v15;
  v16[18] = &off_100C49710;
  v16[14] = v30;
  sub_100046E64();
  v33 = OS_os_log.init(subsystem:category:)();
  v34 = v38;
  v16[2] = a1;
  v16[3] = v34;
  v35 = v41;
  v16[19] = v40;
  v16[20] = v35;
  v16[21] = v42;
  v16[22] = v39;
  v16[23] = v33;
  sub_100006F14(v43);
  sub_100006F14(v46);
  sub_100006F14(v47);
  return v16;
}

uint64_t sub_10084026C(const void *a1, __int128 *a2, uint64_t *a3)
{
  v6 = *a3;
  v19[3] = &type metadata for SunriseSunsetMonthlyViewModelFactory;
  v19[4] = &off_100C65670;
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), a1, 0x50uLL);
  v18[3] = v6;
  v18[4] = &off_100C5E7A8;
  v18[0] = a3;
  type metadata accessor for SunriseSunsetDetailDataProcessor();
  v7 = swift_allocObject();
  v8 = sub_10002D7F8(v19, &type metadata for SunriseSunsetMonthlyViewModelFactory);
  __chkstk_darwin(v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_10002D7F8(v18, v6);
  __chkstk_darwin(v12);
  v14 = (v18 - v13);
  (*(v15 + 16))(v18 - v13);
  v16 = sub_10083FD5C(v10, a2, *v14, v7);
  sub_100006F14(v18);
  sub_100006F14(v19);
  return v16;
}

uint64_t sub_100840488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008404D0@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));
  v3 = *(v1 + 64);

  sub_10022C350(&qword_100CA49A0);
  sub_100840574();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v5;
  a1[7] = v3;
  return result;
}

unint64_t sub_100840574()
{
  result = qword_100CA49A8;
  if (!qword_100CA49A8)
  {
    sub_10022E824(&qword_100CA49A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA49A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DiagnosticGatheringMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1008406B4()
{
  result = qword_100CDDD98[0];
  if (!qword_100CDDD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CDDD98);
  }

  return result;
}

unint64_t sub_100840708(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_100840738@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100840708(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100840764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100840718(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100840790(uint64_t a1)
{
  v2 = sub_1004B53C0();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for Int);
}

uint64_t sub_1008407E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B53C0();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100840840(uint64_t a1)
{
  v2 = sub_1004B53C0();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for Int);
}

double sub_100840898@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v8 = [objc_opt_self() bezierPathWithRoundedRect:a1 byRoundingCorners:a3 cornerRadii:{a4, a5, a6, a7, a7}];
  v9 = [v8 CGPath];
  Path.init(_:)();

  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

double sub_100840964@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_100840898(*(v5 + 8), v9, a2, a3, a4, a5, *v5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_1008409C4(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_100840A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100841938();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100840A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100841938();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100840B00(uint64_t a1)
{
  v2 = sub_100841938();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100840B4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v37 = a1;
  v38 = a3;
  v31 = a2[2];
  __chkstk_darwin(a1);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for EnvironmentValues();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[3];
  v29 = a2[4];
  v30 = v9;
  v10 = type metadata accessor for OverlayValueViewModifier();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v27 = &v27 - v11;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v12 = type metadata accessor for ModifiedContent();
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v28 = &v27 - v16;
  v17 = *v4;
  v18 = v4[1];
  sub_1009E9560();
  v19 = v33;
  swift_getAtKeyPath();
  (*(v32 + 8))(v8, v34);
  v20 = v27;
  sub_100840F24(v17, v18, v19, v4[3], v4[4], v31, v27);

  WitnessTable = swift_getWitnessTable();
  View.modifier<A>(_:)();
  (*(v36 + 8))(v20, v10);
  v22 = swift_getWitnessTable();
  v39 = WitnessTable;
  v40 = v22;
  v23 = swift_getWitnessTable();
  v24 = v28;
  sub_1000833D8(v14, v12, v23);
  v25 = *(v35 + 8);
  v25(v14, v12);
  sub_1000833D8(v24, v12, v23);
  return (v25)(v24, v12);
}

uint64_t sub_100840F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for OverlayValueViewModifier();
  result = (*(*(a6 - 8) + 32))(&a7[*(v12 + 44)], a3, a6);
  v14 = &a7[*(v12 + 48)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t sub_100840FC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v6 = a2[3];
  v5 = a2[4];
  v18 = type metadata accessor for _OverlayModifier();
  v7 = type metadata accessor for ModifiedContent();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v22 = a2[2];
  v23 = v6;
  v24 = v5;
  v25 = v3;
  WitnessTable = swift_getWitnessTable();
  View.overlay<A>(alignment:content:)();
  v14 = swift_getWitnessTable();
  v26 = WitnessTable;
  v27 = v14;
  v15 = swift_getWitnessTable();
  sub_1000833D8(v9, v7, v15);
  v16 = *(v19 + 8);
  v16(v9, v7);
  sub_1000833D8(v12, v7, v15);
  return (v16)(v12, v7);
}

uint64_t sub_100841200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for OverlayValueViewModifier();
  (*(a1 + *(v13 + 48)))(a1 + *(v13 + 44));
  sub_1000833D8(v9, a3, a4);
  v14 = *(v7 + 8);
  v14(v9, a3);
  sub_1000833D8(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t sub_100841350()
{
  if ((static Alignment.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for OverlayValueViewModifier();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_10084140C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_10013DB50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008414A4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 16) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((v9 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return sub_100024D10(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 16) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1008415FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 16] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              v20[1] = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            sub_10001B350(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_100841824()
{
  result = qword_100CDDE20;
  if (!qword_100CDDE20)
  {
    sub_10022E824(&qword_100CDDE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDE20);
  }

  return result;
}

unint64_t sub_10084188C()
{
  result = qword_100CDDE30;
  if (!qword_100CDDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDE30);
  }

  return result;
}

unint64_t sub_1008418E4()
{
  result = qword_100CDDE38;
  if (!qword_100CDDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDE38);
  }

  return result;
}

unint64_t sub_100841938()
{
  result = qword_100CDDE40;
  if (!qword_100CDDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDDE40);
  }

  return result;
}

void sub_10084198C()
{
  type metadata accessor for EnvironmentValues();
  type metadata accessor for KeyPath();
  if (v0 <= 0x3F)
  {
    sub_10013DB50();
    if (v1 <= 0x3F)
    {
      sub_100841A88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100841A88()
{
  if (!qword_100CDDED0)
  {
    type metadata accessor for EnvironmentValues();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDDED0);
    }
  }
}

uint64_t sub_100841B34(uint64_t a1)
{
  v163 = a1;
  v183 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000038E4();
  v187 = v2;
  sub_1000038CC();
  v179 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v186 = v4;
  sub_1000038CC();
  v177 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v185 = v6;
  sub_1000038CC();
  v178 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v184 = v8;
  sub_1000038CC();
  v176 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v182 = v10;
  sub_1000038CC();
  v175 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v181 = v12;
  sub_1000038CC();
  v174 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v180 = v14;
  v15 = sub_1000038CC();
  v167 = type metadata accessor for ModalViewState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003848();
  v173 = v17;
  __chkstk_darwin(v18);
  sub_100003908();
  __chkstk_darwin(v19);
  v172 = &v159 - v20;
  v21 = sub_10022C350(&qword_100CA65E8);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v159 = &v159 - v27;
  v28 = sub_10022C350(&qword_100CA6610);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  v171 = v30;
  __chkstk_darwin(v31);
  v33 = &v159 - v32;
  v34 = sub_10022C350(&qword_100CA6618);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  v38 = &v159 - v37;
  v39 = sub_10022C350(&qword_100CA6620);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  v43 = &v159 - v42;
  v44 = sub_10022C350(&qword_100CA6628);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  v48 = &v159 - v47;
  v49 = sub_10022C350(&qword_100CA6630);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v51);
  v53 = &v159 - v52;
  v54 = sub_10022C350(&qword_100CA6638);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_100003C38();
  v58 = v56 - v57;
  __chkstk_darwin(v59);
  v61 = &v159 - v60;
  v62 = sub_10022C350(&qword_100CA6640);
  v63 = sub_100003810(v62);
  __chkstk_darwin(v63);
  sub_100003C38();
  v66 = v64 - v65;
  __chkstk_darwin(v67);
  v69 = &v159 - v68;
  sub_100003934();
  sub_10001B350(v70, v71, v72, v174);
  sub_100003934();
  sub_10001B350(v73, v74, v75, v175);
  v160 = v53;
  sub_100003934();
  sub_10001B350(v76, v77, v78, v176);
  v162 = v48;
  sub_100003934();
  sub_10001B350(v79, v80, v81, v178);
  v165 = v43;
  v82 = v166;
  sub_100003934();
  sub_10001B350(v83, v84, v85, v177);
  static WeatherClock.date.getter();
  *&v169 = v38;
  sub_10001B350(v38, 0, 1, v179);
  v170 = v33;
  sub_100003934();
  sub_10001B350(v86, v87, v88, v183);
  v89 = v159;
  sub_100003934();
  v90 = v167;
  sub_10001B350(v91, v92, v93, v167);
  v94 = v163;
  sub_1000BCAE0(v163 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v82, type metadata accessor for ModalViewState);
  sub_1002AB08C(v89, v25, &qword_100CA65E8);
  sub_1000038B4(v25, 1, v90);
  if (v95)
  {
    sub_1000180EC(v25, &qword_100CA65E8);
  }

  else
  {
    sub_10037B08C(v82);
    sub_100005518();
    sub_100073030(v25, v82, v96);
  }

  sub_100005518();
  v97 = v172;
  sub_100073030(v82, v172, v98);
  v99 = *(v94 + 16);
  LODWORD(v166) = *(v94 + 24);
  sub_1002AB08C(v69, v66, &qword_100CA6640);
  v100 = sub_100016298();
  v101 = v174;
  sub_1000038B4(v100, v102, v174);
  v103 = v187;
  v104 = v161;
  if (v95)
  {
    v105 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_1000BCAE0(v105, v180, v106);
    v107 = sub_100016298();
    v109 = sub_100024D10(v107, v108, v101);

    v110 = v177;
    if (v109 != 1)
    {
      sub_1000180EC(v66, &qword_100CA6640);
    }
  }

  else
  {
    sub_100073030(v66, v180, type metadata accessor for AppConfigurationState);

    v110 = v177;
  }

  sub_1002AB08C(v61, v58, &qword_100CA6638);
  v111 = sub_10000C7F0();
  v112 = v175;
  sub_1000038B4(v111, v113, v175);
  if (v95)
  {
    v114 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_1000BCAE0(v94 + v114, v181, type metadata accessor for EnvironmentState);
    v115 = sub_10000C7F0();
    sub_1000038B4(v115, v116, v112);
    v117 = v183;
    v118 = v178;
    v119 = v164;
    if (!v95)
    {
      sub_1000180EC(v58, &qword_100CA6638);
    }
  }

  else
  {
    sub_100073030(v58, v181, type metadata accessor for EnvironmentState);
    v117 = v183;
    v118 = v178;
    v119 = v164;
  }

  sub_1002AB08C(v160, v104, &qword_100CA6630);
  v120 = v176;
  sub_1000038B4(v104, 1, v176);
  if (v95)
  {
    v121 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_1000BCAE0(v121, v182, v122);
    sub_1000038B4(v104, 1, v120);
    v123 = v179;
    if (!v95)
    {
      sub_1000180EC(v104, &qword_100CA6630);
    }
  }

  else
  {
    sub_100073030(v104, v182, type metadata accessor for LocationsState);
    v123 = v179;
  }

  sub_1002AB08C(v162, v119, &qword_100CA6628);
  sub_1000038B4(v119, 1, v118);
  if (v95)
  {
    v124 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_1000BCAE0(v124, v184, v125);
    sub_1000038B4(v119, 1, v118);
    if (!v95)
    {
      sub_1000180EC(v119, &qword_100CA6628);
    }
  }

  else
  {
    sub_100073030(v119, v184, type metadata accessor for NotificationsState);
  }

  v126 = v168;
  sub_1002AB08C(v165, v168, &qword_100CA6620);
  v127 = sub_100016298();
  sub_1000038B4(v127, v128, v110);
  if (v95)
  {
    v129 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000BCAE0(v129, v185, v130);
    v131 = sub_100016298();
    sub_1000038B4(v131, v132, v110);
    if (!v95)
    {
      sub_1000180EC(v126, &qword_100CA6620);
    }
  }

  else
  {
    sub_100073030(v126, v185, type metadata accessor for NotificationsOptInState);
  }

  v133 = *(&v169 + 1);
  sub_1002AB08C(v169, *(&v169 + 1), &qword_100CA6618);
  sub_1000038B4(v133, 1, v123);
  if (v95)
  {
    v134 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000BCAE0(v134, v186, v135);
    sub_1000038B4(v133, 1, v123);
    if (!v95)
    {
      sub_1000180EC(v133, &qword_100CA6618);
    }
  }

  else
  {
    sub_100073030(v133, v186, type metadata accessor for TimeState);
  }

  v136 = v171;
  sub_1002AB08C(v170, v171, &qword_100CA6610);
  v137 = sub_10000C7F0();
  sub_1000038B4(v137, v138, v117);
  v167 = v99;
  if (v95)
  {
    v139 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_1000BCAE0(v139, v103, v140);
    v141 = sub_10000C7F0();
    sub_1000038B4(v141, v142, v117);
    if (!v95)
    {
      sub_1000180EC(v136, &qword_100CA6610);
    }
  }

  else
  {
    sub_100073030(v136, v103, type metadata accessor for ViewState);
  }

  sub_100005518();
  v143 = v173;
  sub_100073030(v97, v173, v144);
  v145 = v94 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v147 = *(v94 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v146 = *(v94 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v148 = v94;
  v150 = *(v94 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v149 = *(v145 + 24);
  v151 = *(v148 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v153 = *(v148 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v152 = *(v148 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v154 = *(v148 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v158) = v151;
  sub_10003E038(v167, v166, v180, v181, v182, v184, v185, v186, v187, v143, v147, v146, v150, v149, v158, v153, v152, v154, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
  v156 = v155;

  return v156;
}

uint64_t sub_100842838@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v33 = a4;
  v32 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_1000037C4();
  v35 = v4;
  __chkstk_darwin(v5);
  v34 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v28 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v26[-v13];
  ConditionDetailChartHeaderInput.condition.getter();
  sub_100842B34(v14, v37);
  v15 = *(v9 + 8);
  v15(v14, v7);
  ConditionDetailChartHeaderInput.condition.getter();
  v16 = sub_100842D30(v14);
  v17 = v16;
  v27 = v16;
  v15(v14, v7);
  sub_1000161C0(v37, v37[3]);
  sub_100926274(v17, v36);
  v18 = v34;
  dispatch thunk of ConditionDetailChartHeaderStringBuilderType.makeModel(from:units:extrema:secondaryValueExtrema:style:)();
  sub_100006F14(v36);
  v19 = v33;
  v20 = v18;
  v21 = v32;
  (*(v35 + 16))(v33, v20, v32);
  ConditionDetailChartHeaderInput.condition.getter();
  v22 = v28;
  (*(v9 + 104))(v28, enum case for DetailChartCondition.chanceOfRain(_:), v7);
  sub_100842FB4();
  v23 = v22;
  LOBYTE(v22) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15(v23, v7);
  v15(v14, v7);
  (*(v35 + 8))(v34, v21);
  v24 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  *(v19 + *(v24 + 20)) = v27;
  *(v19 + *(v24 + 24)) = (v22 & 1) == 0;
  return sub_100006F14(v37);
}

uint64_t sub_100842B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DetailChartCondition();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for DetailChartCondition.humidity(_:))
  {
    v10 = 16;
    return sub_100035B30(v2 + v10, a2);
  }

  if (v9 == enum case for DetailChartCondition.pressure(_:))
  {
    v10 = 96;
    return sub_100035B30(v2 + v10, a2);
  }

  if (v9 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
    v10 = 56;
    return sub_100035B30(v2 + v10, a2);
  }

  if (v9 == enum case for DetailChartCondition.temperature(_:))
  {
    v10 = 136;
    return sub_100035B30(v2 + v10, a2);
  }

  if (v9 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    v10 = 176;
    return sub_100035B30(v2 + v10, a2);
  }

  if (v9 == enum case for DetailChartCondition.uvIndex(_:))
  {
    v10 = 216;
    return sub_100035B30(v2 + v10, a2);
  }

  if (v9 == enum case for DetailChartCondition.visibility(_:))
  {
    v10 = 256;
    return sub_100035B30(v2 + v10, a2);
  }

  if (v9 == enum case for DetailChartCondition.wind(_:))
  {
    v10 = 296;
    return sub_100035B30(v2 + v10, a2);
  }

  if (v9 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    v10 = 336;
    return sub_100035B30(v2 + v10, a2);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100842D30(uint64_t a1)
{
  v2 = type metadata accessor for DetailChartCondition();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v7 = UnitManager.precipitationRainfall.getter();

    v8 = NSUnitLength.isMetricPrecipitation.getter();

    return v8 & 1;
  }

  else if (v6 == enum case for DetailChartCondition.temperature(_:) || v6 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    return 4;
  }

  else if (v6 == enum case for DetailChartCondition.uvIndex(_:))
  {
    return 6;
  }

  else if (v6 == enum case for DetailChartCondition.visibility(_:))
  {
    return 5;
  }

  else if (v6 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    return 3;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 2;
  }
}

uint64_t sub_100842EFC()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);
  sub_100006F14(v0 + 136);
  sub_100006F14(v0 + 176);
  sub_100006F14(v0 + 216);
  sub_100006F14(v0 + 256);
  sub_100006F14(v0 + 296);
  sub_100006F14(v0 + 336);
  return v0;
}

uint64_t sub_100842F5C()
{
  sub_100842EFC();

  return swift_deallocClassInstance();
}

unint64_t sub_100842FB4()
{
  result = qword_100CA39E0;
  if (!qword_100CA39E0)
  {
    type metadata accessor for DetailChartCondition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA39E0);
  }

  return result;
}

uint64_t sub_10084300C(uint64_t a1, uint64_t a2)
{
  v570 = a2;
  v3 = sub_10022C350(&qword_100CA65C0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003990(v507 - v5);
  v6 = sub_10022C350(&qword_100CA65D0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003990(v507 - v8);
  v9 = sub_10022C350(&qword_100CA65C8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = sub_100003918(v507 - v11);
  v569 = type metadata accessor for LocationPreviewModalViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v584 = v14;
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v568 = type metadata accessor for LocationPreviewViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v585 = v19;
  __chkstk_darwin(v20);
  sub_10000E70C();
  v22 = sub_100003918(v21);
  v592 = type metadata accessor for ViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  sub_100003918(v26);
  v587 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v583 = v30;
  sub_1000038CC();
  v586 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v582 = v34;
  sub_1000038CC();
  v589 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v581 = v38;
  sub_1000038CC();
  v588 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v580 = v42;
  sub_1000038CC();
  v593 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v579 = v46;
  sub_1000038CC();
  v591 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  v578 = v50;
  v51 = sub_10022C350(&qword_100CA65E8);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  sub_100003990(v58);
  v59 = sub_10022C350(&qword_100CA6610);
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  v577 = v66;
  v67 = sub_10022C350(&qword_100CA6618);
  v68 = sub_100003810(v67);
  __chkstk_darwin(v68);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_10000E70C();
  v576 = v74;
  v75 = sub_10022C350(&qword_100CA6620);
  v76 = sub_100003810(v75);
  __chkstk_darwin(v76);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_10000E70C();
  sub_100003990(v82);
  v83 = sub_10022C350(&qword_100CA6628);
  v84 = sub_100003810(v83);
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_10000E70C();
  sub_100003990(v90);
  v91 = sub_10022C350(&qword_100CA6630);
  v92 = sub_100003810(v91);
  __chkstk_darwin(v92);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_10000E70C();
  sub_100003990(v98);
  v99 = sub_10022C350(&qword_100CA6638);
  v100 = sub_100003810(v99);
  __chkstk_darwin(v100);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_10000E70C();
  sub_100003990(v106);
  v107 = sub_10022C350(&qword_100CA6640);
  v108 = sub_100003810(v107);
  __chkstk_darwin(v108);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_10000E70C();
  sub_100003918(v114);
  v115 = type metadata accessor for AveragesDetailViewState();
  v116 = sub_100003810(v115);
  __chkstk_darwin(v116);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  v120 = v507 - v119;
  v121 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v122);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  v125 = __chkstk_darwin(v124);
  v127 = v507 - v126;
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  v130 = __chkstk_darwin(v129);
  v132 = v507 - v131;
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  v134 = __chkstk_darwin(v133);
  v136 = v507 - v135;
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  v139 = v507 - v138;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  v141 = __chkstk_darwin(v140);
  v143 = v507 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v141);
  v145 = v507 - v144;
  sub_10001CEF0();
  v590 = v146;
  sub_1000BCBF8(a1 + v146, v139, v147);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v507[0] = a1;
    sub_1000D3A5C(v139, v145, type metadata accessor for ModalViewState.LocationDetailModal);
    sub_1000D3A5C(v145, v143, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_10000CF20();
      sub_1000D3A5C(v143, v120, v148);
      v149 = sub_100003BCC(&v595);
      v150 = v591;
      sub_10001B350(v149, v151, v152, v591);
      v153 = sub_100003BCC(&v596);
      sub_10001B350(v153, v154, v155, v593);
      v156 = sub_100003BCC(&v597);
      sub_10001B350(v156, v157, v158, v588);
      v159 = sub_100003BCC(&v598);
      sub_10001B350(v159, v160, v161, v589);
      v162 = sub_100003BCC(&v599);
      v163 = v586;
      sub_10001B350(v162, v164, v165, v586);
      sub_100003934();
      v166 = v587;
      sub_10001B350(v167, v168, v169, v587);
      sub_100003934();
      sub_10001B350(v170, v171, v172, v592);
      sub_1008454A4(v570, v548);
      sub_10004EBAC();
      sub_1000E02A8(v120, v173);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v174, v175, v176, v121);
      sub_10001CEF0();
      v177 = v507[0];
      sub_1000BCBF8(v507[0] + v590, v136, v178);
      sub_1000113EC();
      sub_100051B60(v179, v180, v181);
      sub_10000394C(v120);
      if (v182)
      {
        sub_1000180EC(v120, &qword_100CA65E8);
      }

      else
      {
        sub_100010D80();
        sub_1000E02A8(v136, v311);
        sub_10001FA14();
        sub_1000D3A5C(v120, v136, v312);
      }

      v313 = v547;
      v314 = v545;
      sub_10001FA14();
      sub_1000D3A5C(v136, v315, v316);
      v317 = *(v177 + 16);
      LODWORD(v585) = *(v177 + 24);
      sub_100051B60(v571, v314, &qword_100CA6640);
      sub_1000038B4(v314, 1, v150);
      v318 = v589;
      v590 = v317;
      if (v182)
      {
        sub_100016FDC();
        sub_1000BCBF8(v177 + v319, v578, v320);
        v321 = sub_100024D10(v314, 1, v150);

        v323 = v551;
        if (v321 != 1)
        {
          sub_1000180EC(v314, &qword_100CA6640);
        }
      }

      else
      {
        sub_100037DEC();
        sub_1000D3A5C(v314, v578, v322);

        v323 = v551;
      }

      v324 = v546;
      sub_100051B60(v572, v546, &qword_100CA6638);
      sub_1000187A0();
      if (v182)
      {
        v325 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_10000EE34();
        sub_1000BCBF8(v177 + v325, v579, v326);
        sub_1000187A0();
        v329 = v552;
        v330 = v549;
        if (!v182)
        {
          sub_1000180EC(v324, &qword_100CA6638);
        }
      }

      else
      {
        v327 = sub_1000750C4();
        sub_1000D3A5C(v327, v579, v328);
        v329 = v552;
        v330 = v549;
      }

      sub_100051B60(v573, v313, &qword_100CA6630);
      sub_10000394C(v313);
      if (v182)
      {
        sub_10002CB20();
        sub_1000BCBF8(v177 + v331, v580, v332);
        sub_10000394C(v313);
        v334 = v550;
        if (!v182)
        {
          sub_1000180EC(v313, &qword_100CA6630);
        }
      }

      else
      {
        sub_100020BEC();
        sub_1000D3A5C(v313, v580, v333);
        v334 = v550;
      }

      sub_100051B60(v574, v330, &qword_100CA6628);
      sub_1000038B4(v330, 1, v318);
      if (v182)
      {
        sub_100024AEC();
        sub_1000BCBF8(v177 + v335, v581, v336);
        sub_1000038B4(v330, 1, v318);
        v338 = v553;
        if (!v182)
        {
          sub_1000180EC(v330, &qword_100CA6628);
        }
      }

      else
      {
        sub_10003C938();
        sub_1000D3A5C(v330, v581, v337);
        v338 = v553;
      }

      sub_100051B60(v575, v334, &qword_100CA6620);
      v339 = sub_100016298();
      sub_1000038B4(v339, v340, v163);
      if (v182)
      {
        sub_100017EA4();
        sub_1000BCBF8(v177 + v341, v582, v342);
        v343 = sub_100016298();
        sub_1000038B4(v343, v344, v163);
        if (!v182)
        {
          sub_1000180EC(v334, &qword_100CA6620);
        }
      }

      else
      {
        v345 = sub_100028C1C();
        sub_1000D3A5C(v345, v582, v346);
      }

      sub_100051B60(v576, v323, &qword_100CA6618);
      v347 = sub_10000C834();
      sub_1000038B4(v347, v348, v166);
      if (v182)
      {
        sub_100069B00();
        sub_1000BCBF8(v177 + v349, v583, v350);
        v351 = sub_10000C834();
        sub_1000038B4(v351, v352, v166);
        if (!v182)
        {
          sub_1000180EC(v323, &qword_100CA6618);
        }
      }

      else
      {
        v353 = sub_100023338();
        sub_1000D3A5C(v353, v583, v354);
      }

      sub_100051B60(v577, v329, &qword_100CA6610);
      v355 = sub_1000131C4();
      v356 = v592;
      sub_1000038B4(v355, v357, v592);
      if (v182)
      {
        sub_100013D30();
        sub_1000BCBF8(v177 + v358, v338, v359);
        v360 = sub_1000131C4();
        sub_1000038B4(v360, v361, v356);
        if (!v182)
        {
          sub_1000180EC(v329, &qword_100CA6610);
        }
      }

      else
      {
        sub_10003186C();
      }

      sub_10001FA14();
      sub_1000113EC();
      sub_1000D3A5C(v362, v363, v364);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v365 = sub_100052150();
      v367 = v578;
      v368 = v579;
      v369 = v580;
      v370 = v581;
      v371 = v582;
      v372 = v583;
      goto LABEL_115;
    }

    sub_1000E02A8(v143, type metadata accessor for ModalViewState.LocationDetailModal);
    a1 = v507[0];
  }

  else
  {
    sub_100010D80();
    sub_1000E02A8(v139, v183);
  }

  sub_10001CEF0();
  v184 = v590;
  sub_1000BCBF8(a1 + v590, v132, v185);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v187 = v593;
  v188 = v591;
  if (EnumCaseMultiPayload)
  {
    sub_100010D80();
    v190 = v132;
  }

  else
  {
    sub_100041BC4();
    v191 = v560[0];
    sub_1000D3A5C(v132, v560[0], v192);
    v193 = sub_10002540C();
    v194 = v558;
    sub_1000BCBF8(v193, v558, v195);
    v196 = v569;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_10000CF20();
      v197 = v187;
      v198 = v518;
      sub_1000D3A5C(v194, v518, v199);
      v200 = sub_100003BCC(&v582);
      sub_10001B350(v200, v201, v202, v188);
      v203 = sub_100003BCC(&v583);
      sub_10001B350(v203, v204, v205, v197);
      v206 = sub_100003BCC(&v584);
      sub_10001B350(v206, v207, v208, v588);
      v209 = sub_100003BCC(&v585);
      sub_10001B350(v209, v210, v211, v589);
      v212 = sub_100003BCC(&v588);
      sub_10001B350(v212, v213, v214, v586);
      v215 = sub_100003BCC(&v590);
      sub_10001B350(v215, v216, v217, v587);
      v218 = sub_100003BCC(&v591);
      sub_10001B350(v218, v219, v220, v592);
      type metadata accessor for PreviewLocation();
      v221 = v191;
      v222 = v541;
      sub_100003934();
      sub_10001B350(v223, v224, v225, v226);
      v227 = v542;
      sub_1008454A4(v570, v542);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v228, v229, v230, v196);
      type metadata accessor for SelectedSearchResult();
      v231 = v543;
      sub_100003934();
      sub_10001B350(v232, v233, v234, v235);
      v236 = v523;
      sub_10043DB64(v222, v227, v231, v523);
      sub_1000180EC(v231, &qword_100CA65C0);
      sub_1000180EC(v227, &qword_100CA65D0);
      sub_1000180EC(v222, &qword_100CA65C8);
      sub_10004EBAC();
      sub_1000E02A8(v198, v237);
      sub_100014FA4();
      sub_1000E02A8(v221, v238);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v239, v240, v241, v121);
      sub_10001CEF0();
      sub_1000113EC();
      sub_1000BCBF8(v242, v243, v244);
      v245 = v524;
      sub_100051B60(v236, v524, &qword_100CA65E8);
      sub_10000394C(v245);
      if (v182)
      {
        sub_1000180EC(v245, &qword_100CA65E8);
      }

      else
      {
        sub_100010D80();
        sub_1000E02A8(v221, v374);
        sub_10001FA14();
        v375 = sub_100003940();
        sub_1000D3A5C(v375, v376, v377);
      }

      v378 = *(&v526 + 1);
      v379 = v522;
      v380 = v521;
      v381 = v520;
      sub_10001FA14();
      sub_1000D3A5C(v221, v382, v383);
      v384 = *(a1 + 16);
      LODWORD(v585) = *(a1 + 24);
      sub_100051B60(v554, v381, &qword_100CA6640);
      v385 = sub_100007FC4();
      v386 = v591;
      sub_1000038B4(v385, v387, v591);
      v388 = v589;
      v590 = v384;
      if (v182)
      {
        sub_100016FDC();
        sub_1000BCBF8(a1 + v389, v562, v390);
        v391 = sub_100007FC4();
        v393 = sub_100024D10(v391, v392, v386);

        if (v393 != 1)
        {
          sub_1000180EC(v381, &qword_100CA6640);
        }
      }

      else
      {
        sub_100037DEC();
        sub_1000D3A5C(v381, v562, v394);
      }

      sub_100051B60(v555, v380, &qword_100CA6638);
      sub_1000187A0();
      if (v182)
      {
        v395 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_10000EE34();
        sub_1000BCBF8(a1 + v395, v563, v396);
        sub_1000187A0();
        v399 = v525;
        if (!v182)
        {
          sub_1000180EC(v380, &qword_100CA6638);
        }
      }

      else
      {
        v397 = sub_1000750C4();
        sub_1000D3A5C(v397, v563, v398);
        v399 = v525;
      }

      sub_100051B60(v556, v379, &qword_100CA6630);
      sub_10000394C(v379);
      if (v182)
      {
        sub_10002CB20();
        sub_1000BCBF8(a1 + v400, v564, v401);
        sub_10000394C(v379);
        v403 = v526;
        if (!v182)
        {
          sub_1000180EC(v379, &qword_100CA6630);
        }
      }

      else
      {
        sub_100020BEC();
        sub_1000D3A5C(v379, v564, v402);
        v403 = v526;
      }

      sub_1000C8878(&qword_100CA6628, &v585);
      v404 = sub_1000131C4();
      sub_1000038B4(v404, v405, v388);
      if (v182)
      {
        sub_100024AEC();
        sub_1000BCBF8(a1 + v406, v565, v407);
        v408 = sub_1000131C4();
        sub_1000038B4(v408, v409, v388);
        v411 = v528;
        if (!v182)
        {
          sub_1000180EC(v399, &qword_100CA6628);
        }
      }

      else
      {
        sub_10003C938();
        sub_1000D3A5C(v399, v565, v410);
        v411 = v528;
      }

      sub_100051B60(v559, v403, &qword_100CA6620);
      v412 = sub_100016298();
      v413 = v586;
      sub_1000038B4(v412, v414, v586);
      if (v182)
      {
        sub_100017EA4();
        sub_1000BCBF8(a1 + v415, v566, v416);
        v417 = sub_100016298();
        sub_1000038B4(v417, v418, v413);
        v421 = v527;
        if (!v182)
        {
          sub_1000180EC(v403, &qword_100CA6620);
        }
      }

      else
      {
        v419 = sub_100028C1C();
        sub_1000D3A5C(v419, v566, v420);
        v421 = v527;
      }

      sub_100051B60(v560[1], v378, &qword_100CA6618);
      v422 = sub_10000C834();
      sub_1000038B4(v422, v423, v587);
      if (v182)
      {
        sub_100069B00();
        sub_1000BCBF8(a1 + v424, v567, v425);
        sub_10000394C(v378);
        if (!v182)
        {
          sub_1000180EC(v378, &qword_100CA6618);
        }
      }

      else
      {
        v426 = sub_100023338();
        sub_1000D3A5C(v426, v567, v427);
      }

      sub_1000C8878(&qword_100CA6610, &v591);
      v428 = sub_1000131C4();
      v429 = v592;
      sub_1000038B4(v428, v430, v592);
      if (v182)
      {
        sub_100013D30();
        sub_1000BCBF8(a1 + v431, v411, v432);
        v433 = sub_1000131C4();
        sub_1000038B4(v433, v434, v429);
        if (!v182)
        {
          sub_1000180EC(v421, &qword_100CA6610);
        }
      }

      else
      {
        sub_10003186C();
      }

      sub_10001FA14();
      sub_1000113EC();
      sub_1000D3A5C(v435, v436, v437);
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v365 = sub_100052150();
      v367 = v562;
      v368 = v563;
      v369 = v564;
      v370 = v565;
      v371 = v566;
      v438 = &v594;
      goto LABEL_114;
    }

    sub_100014FA4();
    sub_1000E02A8(v191, v246);
    sub_10002172C();
    v190 = v194;
  }

  sub_1000E02A8(v190, v189);
  sub_10001CEF0();
  sub_1000BCBF8(a1 + v184, v127, v247);
  v248 = swift_getEnumCaseMultiPayload();
  v249 = v584;
  v250 = v585;
  if (v248 != 4)
  {
    sub_100010D80();
    v255 = v127;
LABEL_20:
    sub_1000E02A8(v255, v254);
    goto LABEL_21;
  }

  v251 = type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000038B4(v127, 1, v251);
  v252 = v592;
  v253 = v587;
  if (!v182)
  {
    sub_100041BC4();
    sub_1000D3A5C(v127, v250, v256);
    v257 = sub_10002540C();
    sub_1000BCBF8(v257, v249, v258);
    sub_1000113EC();
    v259 = swift_getEnumCaseMultiPayload();
    if (v259 == 7)
    {
      sub_10000CF20();
      sub_1000D3A5C(v249, v544, v260);
      v261 = sub_100003BCC(v557);
      sub_10001B350(v261, v262, v263, v188);
      v264 = sub_100003BCC(&v558);
      sub_10001B350(v264, v265, v266, v187);
      v267 = sub_100003BCC(&v559);
      sub_10001B350(v267, v268, v269, v588);
      v270 = sub_100003BCC(v560);
      sub_10001B350(v270, v271, v272, v589);
      v273 = sub_100003BCC(v561);
      sub_10001B350(v273, v274, v275, v586);
      v276 = sub_100003BCC(&v562);
      sub_10001B350(v276, v277, v278, v253);
      v279 = sub_100003BCC(&v563);
      sub_10001B350(v279, v280, v281, v252);
      type metadata accessor for PreviewLocation();
      v282 = v541;
      sub_100003934();
      sub_10001B350(v283, v284, v285, v286);
      v287 = v250;
      v288 = v542;
      sub_1008454A4(v570, v542);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v289, v290, v291, v127);
      type metadata accessor for SelectedSearchResult();
      v292 = v543;
      sub_100003934();
      sub_10001B350(v293, v294, v295, v296);
      v297 = v511;
      v298 = v287;
      sub_10043DB64(v282, v288, v292, v511);
      sub_1000180EC(v292, &qword_100CA65C0);
      sub_1000180EC(v288, &qword_100CA65D0);
      sub_1000180EC(v282, &qword_100CA65C8);
      sub_10004EBAC();
      sub_1000E02A8(v544, v299);
      sub_100014FA4();
      sub_1000E02A8(v287, v300);
      sub_10000E7B0();
      sub_10001B350(v301, v302, v303, v251);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v304, v305, v306, v121);
      sub_10001CEF0();
      sub_1000113EC();
      sub_1000BCBF8(v307, v308, v309);
      v310 = v512;
      sub_100051B60(v297, v512, &qword_100CA65E8);
      sub_10000394C(v310);
      if (v182)
      {
        sub_1000180EC(v310, &qword_100CA65E8);
      }

      else
      {
        sub_100010D80();
        sub_1000E02A8(v287, v439);
        sub_10001FA14();
        v440 = sub_100003940();
        sub_1000D3A5C(v440, v441, v442);
      }

      v443 = v515;
      v444 = v510;
      v445 = v509;
      v446 = v508;
      sub_10001FA14();
      sub_1000D3A5C(v298, v447, v448);
      v449 = *(a1 + 16);
      LODWORD(v585) = *(a1 + 24);
      sub_100051B60(v529, v446, &qword_100CA6640);
      v450 = sub_100007FC4();
      sub_1000038B4(v450, v451, v188);
      v452 = v589;
      v590 = v449;
      if (v182)
      {
        sub_100016FDC();
        sub_1000BCBF8(a1 + v453, v535, v454);
        v455 = sub_100007FC4();
        v457 = sub_100024D10(v455, v456, v188);

        if (v457 != 1)
        {
          sub_1000180EC(v446, &qword_100CA6640);
        }
      }

      else
      {
        sub_100037DEC();
        sub_1000D3A5C(v446, v535, v458);
      }

      sub_100051B60(v530, v445, &qword_100CA6638);
      sub_1000187A0();
      if (v182)
      {
        v459 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C();
        sub_10000EE34();
        sub_1000BCBF8(a1 + v459, v536, v460);
        sub_1000187A0();
        v463 = v513;
        v464 = v587;
        if (!v182)
        {
          sub_1000180EC(v445, &qword_100CA6638);
        }
      }

      else
      {
        v461 = sub_1000750C4();
        sub_1000D3A5C(v461, v536, v462);
        v463 = v513;
        v464 = v587;
      }

      sub_100051B60(v531, v444, &qword_100CA6630);
      sub_10000394C(v444);
      if (v182)
      {
        sub_10002CB20();
        sub_1000BCBF8(a1 + v465, v537, v466);
        sub_10000394C(v444);
        v468 = v514;
        if (!v182)
        {
          sub_1000180EC(v444, &qword_100CA6630);
        }
      }

      else
      {
        sub_100020BEC();
        sub_1000D3A5C(v444, v537, v467);
        v468 = v514;
      }

      sub_1000C8878(&qword_100CA6628, v560);
      v469 = sub_1000131C4();
      sub_1000038B4(v469, v470, v452);
      if (v182)
      {
        sub_100024AEC();
        sub_1000BCBF8(a1 + v471, v538, v472);
        v473 = sub_1000131C4();
        sub_1000038B4(v473, v474, v452);
        v476 = v517;
        v477 = v592;
        if (!v182)
        {
          sub_1000180EC(v463, &qword_100CA6628);
        }
      }

      else
      {
        sub_10003C938();
        sub_1000D3A5C(v463, v538, v475);
        v476 = v517;
        v477 = v592;
      }

      sub_100051B60(v533, v468, &qword_100CA6620);
      v478 = sub_100016298();
      v479 = v586;
      sub_1000038B4(v478, v480, v586);
      if (v182)
      {
        sub_100017EA4();
        sub_1000BCBF8(a1 + v481, v539, v482);
        v483 = sub_100016298();
        sub_1000038B4(v483, v484, v479);
        v487 = v516;
        if (!v182)
        {
          sub_1000180EC(v468, &qword_100CA6620);
        }
      }

      else
      {
        v485 = sub_100028C1C();
        sub_1000D3A5C(v485, v539, v486);
        v487 = v516;
      }

      sub_100051B60(v534, v443, &qword_100CA6618);
      v488 = sub_10000C834();
      sub_1000038B4(v488, v489, v464);
      if (v182)
      {
        sub_100069B00();
        sub_1000BCBF8(a1 + v490, v540, v491);
        v492 = sub_10000C834();
        sub_1000038B4(v492, v493, v464);
        if (!v182)
        {
          sub_1000180EC(v443, &qword_100CA6618);
        }
      }

      else
      {
        v494 = sub_100023338();
        sub_1000D3A5C(v494, v540, v495);
      }

      sub_1000C8878(&qword_100CA6610, &v563);
      v496 = sub_1000131C4();
      sub_1000038B4(v496, v497, v477);
      if (v182)
      {
        sub_100013D30();
        sub_1000BCBF8(a1 + v498, v476, v499);
        v500 = sub_1000131C4();
        sub_1000038B4(v500, v501, v477);
        if (!v182)
        {
          sub_1000180EC(v487, &qword_100CA6610);
        }
      }

      else
      {
        sub_10003186C();
      }

      sub_10001FA14();
      sub_1000113EC();
      sub_1000D3A5C(v502, v503, v504);
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v365 = sub_100052150();
      v367 = v535;
      v368 = v536;
      v369 = v537;
      v370 = v538;
      v371 = v539;
      v438 = &v569;
LABEL_114:
      v372 = *(v438 - 32);
LABEL_115:
      sub_10003E038(v365, v366, v367, v368, v369, v370, v371, v372, v507[0], v507[1], v508, v509, v510, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532);
      a1 = v505;

      return a1;
    }

    sub_100014FA4();
    sub_1000E02A8(v250, v373);
    sub_10002172C();
    v255 = v249;
    goto LABEL_20;
  }

  sub_1000180EC(v127, &qword_100CA65E0);
LABEL_21:

  return a1;
}

__n128 sub_1008454A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AveragesDetailViewAction();
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCBF8(a1, v10, type metadata accessor for AveragesDetailViewAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000D3A5C(v10, v7, type metadata accessor for DetailHeroChartLollipopPosition);
      v12 = type metadata accessor for Location();
      (*(*(v12 - 8) + 16))(a2, v2, v12);
      v13 = type metadata accessor for AveragesDetailViewState();
      v14 = v13 + 5;
      v15 = *(v2 + v13[5]);
      v16 = v13[6];
      sub_1000D3A5C(v7, a2 + v16, type metadata accessor for DetailHeroChartLollipopPosition);
      v17 = a2 + v16;
      v18 = 0;
    }

    else
    {
      v24 = type metadata accessor for Location();
      (*(*(v24 - 8) + 16))(a2, v2, v24);
      v13 = type metadata accessor for AveragesDetailViewState();
      v14 = v13 + 5;
      v15 = *(v2 + v13[5]);
      v17 = a2 + v13[6];
      v18 = 1;
    }

    sub_10001B350(v17, v18, 1, v5);
    v25 = v13[7];
    v21 = v13 + 7;
    v23 = (v2 + v25);
  }

  else
  {
    v15 = *v10;
    v19 = type metadata accessor for Location();
    (*(*(v19 - 8) + 16))(a2, v2, v19);
    v20 = type metadata accessor for AveragesDetailViewState();
    sub_1002ED164(v2 + *(v20 + 24), a2 + *(v20 + 24));
    v22 = *(v20 + 28);
    v21 = (v20 + 28);
    v23 = (v2 + v22);
    v14 = v21 - 2;
  }

  v26 = v23[2].n128_u8[0];
  v28 = v23[1].n128_u64[0];
  v27 = v23[1].n128_u64[1];
  result = *v23;
  *(a2 + *v14) = v15;
  v30 = (a2 + *v21);
  *v30 = result;
  v30[1].n128_u64[0] = v28;
  v30[1].n128_u64[1] = v27;
  v30[2].n128_u8[0] = v26;
  return result;
}

uint64_t sub_10084575C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDE0E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4D80);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for ListMenuInteractor();
      v21[3] = v12;
      v21[4] = &off_100C59BB8;
      v21[0] = v11;
      v13 = type metadata accessor for ListMenuModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C59BB8;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C4DCA8;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008459D8()
{
  sub_10022C350(&qword_100CDE0E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDE0F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDE0F8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4D80);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100845B04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for ListMenuInteractor();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    a2[3] = v4;
    a2[4] = &off_100C59BB8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100845BE8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_100845C38(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v23;
  v4 = v24;
  v6 = v22;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDE0F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v19, v20);
  v17 = type metadata accessor for ListMenuInputFactory();
  v18 = &off_100C75638;
  v16[0] = v7;
  sub_100035B30(v16, v15);
  v8 = swift_allocObject();
  sub_100013188(v15, v8 + 16);

  sub_100006F14(v16);
  sub_100006F14(v19);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100846020;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDE0F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    v10 = *sub_1000161C0(v19, v20);
    v17 = type metadata accessor for ListMenuViewModelFactory();
    v18 = &off_100C6CE80;
    v16[0] = v10;
    sub_100035B30(v16, v15);
    v11 = swift_allocObject();
    sub_100013188(v15, v11 + 16);

    sub_100006F14(v16);
    sub_100006F14(v19);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100846060;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100846028;
    *(v13 + 24) = v9;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10084606C;
    *(v14 + 24) = v12;
    sub_10022C350(&qword_100CA4D80);
    swift_allocObject();
    return sub_10024C064(v3, v6, v5, v4, sub_100266DE8, 0, sub_1008460A4, v13, sub_1008460F0, v14);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100845FDC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16));
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_100846028@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_100846074@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_100318B54(*a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_1008460AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_100318C64(*a1, *(a1 + 8), *(a1 + 16), a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsPredictedLocationsViewModel(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1008461D4@<D0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v2 = type metadata accessor for GridGeometryComputerModifier(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v2[8];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = v2[9];
  *(a1 + v7) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v8 = v2[10];
  *(a1 + v8) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v2[11];
  *v9 = sub_1000F73D0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v10 = (a1 + v2[12]);
  type metadata accessor for GridGeometryCache(0);
  swift_allocObject();
  sub_10084753C();
  State.init(wrappedValue:)();
  *v10 = v14;
  v10[1] = v15;
  v11 = a1 + v2[13];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a1 + v2[14];
  *v12 = swift_getKeyPath();
  result = 0.0;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 33) = 0u;
  return result;
}

uint64_t sub_1008463DC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a2;
  v96 = a5;
  v100 = type metadata accessor for LocationViewGeometry(0);
  v95 = *(v100 - 8);
  v94 = *(v95 + 64);
  __chkstk_darwin(v100);
  v93 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for GridGeometryRoot();
  v91 = *(v72 - 8);
  v92 = *(v91 + 64);
  __chkstk_darwin(v72);
  v90 = v67 - v9;
  v10 = sub_10022C350(&qword_100CE1230);
  __chkstk_darwin(v10 - 8);
  v81 = v67 - v11;
  sub_10022E824(&qword_100CDE308);
  v74 = a3;
  v12 = type metadata accessor for ModifiedContent();
  v73 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v67 - v13;
  sub_10022E824(&qword_100CB0568);
  v68 = type metadata accessor for ModifiedContent();
  v77 = *(v68 - 8);
  __chkstk_darwin(v68);
  v69 = v67 - v15;
  sub_10022E824(&qword_100CE1580);
  v76 = type metadata accessor for ModifiedContent();
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v98 = v67 - v16;
  sub_10022E824(&qword_100CDE310);
  v78 = type metadata accessor for ModifiedContent();
  KeyPath = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = v67 - v17;
  v82 = type metadata accessor for ModifiedContent();
  v85 = *(v82 - 8);
  __chkstk_darwin(v82);
  v99 = v67 - v18;
  sub_10022E824(&qword_100CCAF30);
  v83 = type metadata accessor for ModifiedContent();
  v88 = *(v83 - 8);
  __chkstk_darwin(v83);
  v101 = v67 - v19;
  sub_10022E824(&qword_100CDE318);
  v87 = type metadata accessor for ModifiedContent();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v86 = v67 - v22;
  swift_getKeyPath();
  v97 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v71 = a4;
  View.environment<A>(_:_:)();

  swift_getKeyPath();
  __dst[0] = a1[72];
  LOBYTE(a3) = __dst[0];
  v23 = sub_100006F64(&qword_100CDE328, &qword_100CDE308);
  v114 = a4;
  v115 = v23;
  WitnessTable = swift_getWitnessTable();
  v25 = v69;
  View.environment<A>(_:_:)();

  (*(v73 + 8))(v14, v12);
  swift_getKeyPath();
  __dst[0] = (a3 & 0xC1) == 0;
  v67[0] = &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>;
  v26 = sub_100006F64(&qword_100CB0560, &qword_100CB0568);
  v112 = WitnessTable;
  v113 = v26;
  v27 = v68;
  v28 = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v77 + 8))(v25, v27);
  swift_getKeyPath();
  v29 = v100;
  v30 = *(v100 + 24);
  v31 = type metadata accessor for TargetWindowSizeClass();
  v32 = v97;
  v33 = v81;
  (*(*(v31 - 8) + 16))(v81, &v97[v30], v31);
  sub_10001B350(v33, 0, 1, v31);
  v77 = sub_100006F64(&qword_100CB0558, &qword_100CE1580);
  v110 = v28;
  v111 = v77;
  v67[1] = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v34 = v76;
  v35 = swift_getWitnessTable();
  v36 = v75;
  v37 = v98;
  View.environment<A>(_:_:)();

  sub_100018144(v33, &qword_100CE1230);
  (*(v79 + 8))(v37, v34);
  swift_getKeyPath();
  v38 = v32;
  __dst[0] = *(v32 + *(v29 + 32));
  v39 = sub_100006F64(&unk_100CE1210, &qword_100CDE310);
  v108 = v35;
  v109 = v39;
  v40 = v78;
  v81 = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(KeyPath + 8))(v36, v40);
  KeyPath = swift_getKeyPath();
  v41 = v91;
  v42 = v90;
  v43 = v72;
  (*(v91 + 16))(v90, v70, v72);
  v44 = v93;
  sub_1000F7F28(v38, v93, type metadata accessor for LocationViewGeometry);
  v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v46 = *(v95 + 80);
  v47 = (v92 + v46 + v45) & ~v46;
  v98 = (v46 | 7);
  v48 = swift_allocObject();
  v49 = v71;
  *(v48 + 16) = v74;
  *(v48 + 24) = v49;
  (*(v41 + 32))(v48 + v45, v42, v43);
  v50 = v44;
  sub_1000FA6B0(v44, v48 + v47, type metadata accessor for LocationViewGeometry);
  v106 = v81;
  v107 = v77;
  v51 = v82;
  v52 = swift_getWitnessTable();
  v53 = v99;
  View.transformEnvironment<A>(_:transform:)();

  (*(v85 + 8))(v53, v51);
  v54 = v97;
  sub_1000F7F28(v97, v50, type metadata accessor for LocationViewGeometry);
  v55 = swift_allocObject();
  sub_1000FA6B0(v50, v55 + ((v46 + 16) & ~v46), type metadata accessor for LocationViewGeometry);
  v56 = sub_100006F64(&qword_100CCAF28, &qword_100CCAF30);
  v104 = v52;
  v105 = v56;
  v57 = v83;
  v58 = swift_getWitnessTable();
  sub_1000EA958(&qword_100CDE348, type metadata accessor for LocationViewGeometry);
  v59 = v84;
  v60 = v101;
  sub_1000A203C(v54, v57, v100, v58, v84);

  (*(v88 + 8))(v60, v57);
  v61 = sub_100006F64(&qword_100CDE330, &qword_100CDE318);
  v102 = v58;
  v103 = v61;
  v62 = v87;
  v63 = swift_getWitnessTable();
  v64 = v86;
  sub_1000833D8(v59, v62, v63);
  v65 = *(v89 + 8);
  v65(v59, v62);
  sub_1000833D8(v64, v62, v63);
  return (v65)(v64, v62);
}

void sub_1008471C4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a2;
  if (*(a2 + 8) == 1)
  {
    v11 = 0uLL;
    v12 = 0uLL;
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  static os_log_type_t.fault.getter();
  v13 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000EBD74(v10, 0);
  (*(v7 + 8))(v9, v6);
  v11 = 0uLL;
  v12 = 0uLL;
  if ((v15[15] & 1) == 0)
  {
LABEL_5:
    v14 = (a3 + *(type metadata accessor for LocationViewGeometry(0) + 28));
    v11 = *v14;
    v12 = v14[1];
  }

LABEL_6:
  *a1 = v11;
  a1[1] = v12;
}

uint64_t sub_100847388()
{
  sub_1008485F4(v0 + OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry, type metadata accessor for LocationViewGeometry);
  v1 = OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100847470()
{
  result = type metadata accessor for LocationViewGeometry(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10084753C()
{
  v1 = (v0 + OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry);
  sub_1009E86F0(0, 3, __src);
  v2 = type metadata accessor for LocationViewGeometry(0);
  v3 = v2[6];
  v4 = enum case for TargetWindowSizeClass.compact(_:);
  v5 = type metadata accessor for TargetWindowSizeClass();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  memcpy(v1, __src, 0x48uLL);
  v1[72] = 0x80;
  v6 = &v1[v2[7]];
  *v6 = 0u;
  v6[1] = 0u;
  v1[v2[8]] = 0;
  v1[v2[9]] = 0;
  ObservationRegistrar.init()();
  return v0;
}

void *sub_100847630@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = static Color.clear.getter();
  v10 = sub_10022C350(&qword_100CDE460);
  result = sub_1000FB310(v7, v8, 0, a2 + *(v10 + 36), v3, v4, v5, v6);
  *a2 = v9;
  return result;
}

uint64_t sub_1008476C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000FC5D4(a1, &v21 - v12);
  sub_1000FC5D4(a2, &v13[v15]);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v15], 1, v4) == 1)
    {
      sub_100018144(v13, &qword_100CA6028);
LABEL_9:
      v19 = type metadata accessor for GridGeometryComputerModifier.CacheBustingUpdates(0);
      v16 = *(a1 + *(v19 + 20)) ^ *(a2 + *(v19 + 20)) ^ 1;
      return v16 & 1;
    }

    goto LABEL_6;
  }

  sub_1000FC5D4(v13, v10);
  if (sub_100024D10(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_100018144(v13, &qword_100CA64E8);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1000EA958(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_100018144(v13, &qword_100CA6028);
  if (v17)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16 = 0;
  return v16 & 1;
}

BOOL sub_1008479BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 2 * *(a1 + 48) + 2;
  v9 = *(a1 + 40) * ((2 * *(a1 + 48)) | 1uLL);
  v10 = *(a1 + 56) + *(a1 + 56);
  v11 = *(a1 + 8);
  if (*(a1 + 32))
  {
    v12 = sub_1000FDB68();
    v13 = 20.0;
    if (*(a1 + 49) - 3 < 2)
    {
      v13 = 0.0;
    }

    v14 = v11 - v10 - v12 - v13;
    v15 = sub_1000FDE84();
    if (*(a1 + 64) >= v14 / dbl_100A8D650[v15])
    {
      v11 = v14 / dbl_100A8D650[v15];
    }

    else
    {
      v11 = *(a1 + 64);
    }
  }

  v16 = v9 + v10 + v11 * v8;
  if (v16 <= 320.0)
  {
    return 1;
  }

  if (v16 > 375.0)
  {
    return 0;
  }

  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    v19 = *a2;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v5 + 8))(v7, v4);
    v19 = *&v21[1];
  }

  return v19 <= 2.0;
}

BOOL sub_100847C54(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100847BEC(v7, v8);
}

double sub_100847C9C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_100847CAC(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v6);
  result = *v6;
  v4 = v6[1];
  v5 = v6[2];
  *a1 = v6[0];
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_100847CF4@<D0>(_OWORD *a1@<X8>)
{
  sub_100847C9C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_100847D50@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Color.clear.getter();
  GeometryProxy.safeAreaInsets.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v13;
  return result;
}

double sub_100847DC0()
{
  v0 = type metadata accessor for LocationViewGeometry(0);
  sub_100007074(v0, qword_100CDE100);
  v1 = sub_10000703C(v0, qword_100CDE100);
  sub_1009E86F0(0, 3, __src);
  v2 = v0[6];
  v3 = enum case for TargetWindowSizeClass.compact(_:);
  v4 = type metadata accessor for TargetWindowSizeClass();
  (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  memcpy(v1, __src, 0x48uLL);
  v1[72] = 0x80;
  v5 = &v1[v0[7]];
  result = 0.0;
  *v5 = 0u;
  v5[1] = 0u;
  v1[v0[8]] = 0;
  v1[v0[9]] = 0;
  return result;
}

uint64_t sub_100847EAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA28D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocationViewGeometry(0);
  v3 = sub_10000703C(v2, qword_100CDE100);
  return sub_1000F7F28(v3, a1, type metadata accessor for LocationViewGeometry);
}

uint64_t sub_100847F30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 9) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFE)
      {
        return sub_100024D10((a1 + v7 + 9) & ~v7, v6, v4);
      }

      v16 = *(a1 + 8);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1008480B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 9) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFE)
          {
            v21 = &a1[v10 + 9] & ~v10;

            sub_10001B350(v21, a2, v8, v6);
          }

          else if (a2 > 0xFE)
          {
            a1[8] = 0;
            *a1 = (a2 - 255);
          }

          else
          {
            a1[8] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100848308()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for GridGeometryRoot();
  sub_100003810(v3);
  v4 = sub_1000750E0();

  return sub_1008463DC(v4, v5, v1, v2, v6);
}

void sub_100848394(_OWORD *a1)
{
  v3 = *(type metadata accessor for GridGeometryRoot() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for LocationViewGeometry(0);
  sub_100003810(v6);
  v8 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  sub_1008471C4(a1, v1 + v4, v8);
}

uint64_t sub_100848480()
{
  v0 = type metadata accessor for LocationViewGeometry(0);
  sub_100003810(v0);

  return sub_100847350();
}

unint64_t sub_10084855C(uint64_t a1)
{
  result = sub_1000EAD38();
  *(a1 + 8) = result;
  return result;
}

void *sub_100848584()
{
  v0 = type metadata accessor for GridGeometryComputerModifier(0);
  sub_100003810(v0);
  v1 = sub_1000750E0();

  return sub_100847630(v1, v2);
}

uint64_t sub_1008485F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100848668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewGeometry(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1008486F4()
{
  sub_1000817EC(319, &unk_100CDE4D8, &type metadata accessor for UserInterfaceSizeClass, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1008487B8()
{
  result = qword_100CDE508;
  if (!qword_100CDE508)
  {
    sub_10022E824(&qword_100CDE450);
    sub_100848870();
    sub_100006F64(&qword_100CDE530, &qword_100CDE458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDE508);
  }

  return result;
}

unint64_t sub_100848870()
{
  result = qword_100CDE510;
  if (!qword_100CDE510)
  {
    sub_10022E824(&qword_100CDE448);
    sub_100006F64(&qword_100CDE518, &qword_100CDE440);
    sub_100006F64(&qword_100CDE520, &qword_100CDE528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDE510);
  }

  return result;
}

id sub_100848988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v91 = a4;
  v86 = a3;
  v96 = a1;
  ObjectType = swift_getObjectType();
  type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v84 = v8;
  v85 = v7;
  __chkstk_darwin(v7);
  sub_100003C38();
  v83 = (v9 - v10);
  __chkstk_darwin(v11);
  v82 = &v76 - v12;
  sub_1000038CC();
  type metadata accessor for LocationModel();
  sub_1000037C4();
  v94 = v14;
  v95 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v89 = v16 - v15;
  sub_1000038CC();
  v17 = type metadata accessor for WeatherEditorView();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = (v20 - v19);
  type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  v88 = v23 - v24;
  __chkstk_darwin(v25);
  v27 = &v76 - v26;
  v28 = type metadata accessor for NewsDataModel();
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000037D8();
  v87 = v31 - v30;
  sub_1000038CC();
  v32 = type metadata accessor for PreprocessedWeatherData();
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_1000037D8();
  v36 = v35 - v34;
  v37 = sub_1000038CC();
  v38 = type metadata accessor for WeatherData(v37);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_100003C38();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  v45 = &v76 - v44;
  sub_100028C38();
  v93 = a2;
  sub_10084BF74(a2, v27, v46);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = sub_10022C350(&qword_100CA75D8);
    v48 = *(v47 + 48);
    v49 = *(v47 + 64);
    v79 = v38;
    v81 = v45;
    sub_1000FC9F0(v27, v45, type metadata accessor for WeatherData);
    v80 = v36;
    sub_1000FC9F0(&v27[v48], v36, type metadata accessor for PreprocessedWeatherData);
    v50 = &v27[v49];
    v51 = v87;
    sub_1000FC9F0(v50, v87, type metadata accessor for NewsDataModel);
    v77 = *(v94 + 16);
    v52 = v89;
    v53 = v95;
    v77(v89, v96, v95);
    sub_100028C38();
    v78 = v54;
    v55 = v88;
    sub_10084BF74(v93, v88, v56);
    sub_10084BF74(v45, v42, type metadata accessor for WeatherData);
    sub_10084BF74(v51, v21 + v17[10], type metadata accessor for NewsDataModel);
    sub_10084BF74(v36, v21 + v17[9], type metadata accessor for PreprocessedWeatherData);
    *v21 = swift_getKeyPath();
    sub_10022C350(&qword_100CA54B0);
    swift_storeEnumTagMultiPayload();
    v77(v21 + v17[5], v52, v53);
    v57 = v17;
    *(v21 + v17[6]) = a5;
    sub_10084BF74(v55, v21 + v17[7], v78);
    v58 = v42;
    sub_10084BF74(v42, v21 + v17[8], type metadata accessor for WeatherData);
    v60 = v84;
    v59 = v85;
    v61 = *(v84 + 16);
    v62 = v82;
    v61(v82, v58 + *(v79 + 24), v85);
    v61(v83, v62, v59);
    v63 = v91;

    State.init(wrappedValue:)();
    (*(v60 + 8))(v62, v59);
    sub_100105F90(v58, type metadata accessor for WeatherData);
    sub_100105F90(v88, type metadata accessor for LocationWeatherDataState);
    v64 = v95;
    v65 = *(v94 + 8);
    v65(v89, v95);
    v66 = (v21 + v57[11]);
    *v66 = v86;
    v66[1] = v63;
    v67 = objc_allocWithZone(sub_10022C350(&qword_100CDE6D8));
    v68 = UIHostingController.init(rootView:)();
    v69 = v90;
    *&v90[OBJC_IVAR____TtC7Weather31WeatherDataEditorViewController_hostingController] = v68;
    v70 = v96;
    v71 = LocationModel.name.getter();
    v72 = &v69[OBJC_IVAR____TtC7Weather31WeatherDataEditorViewController_locationName];
    *v72 = v71;
    v72[1] = v73;
    v97.receiver = v69;
    v97.super_class = ObjectType;
    v74 = objc_msgSendSuper2(&v97, "initWithNibName:bundle:", 0, 0);

    sub_100105F90(v93, type metadata accessor for LocationWeatherDataState);
    v65(v70, v64);
    sub_100105F90(v87, type metadata accessor for NewsDataModel);
    sub_100105F90(v80, type metadata accessor for PreprocessedWeatherData);
    sub_100105F90(v81, type metadata accessor for WeatherData);
  }

  else
  {

    sub_100105F90(v93, type metadata accessor for LocationWeatherDataState);
    (*(v94 + 8))(v96, v95);
    sub_100105F90(v27, type metadata accessor for LocationWeatherDataState);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v74;
}

void sub_100849140()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC7Weather31WeatherDataEditorViewController_hostingController];
  [v0 addChildViewController:v1];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v3 addSubview:v4];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v7 setFrame:{v11, v13, v15, v17}];
    [v1 didMoveToParentViewController:v0];
    v18 = String._bridgeToObjectiveC()();
    [v0 setTitle:v18];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t type metadata accessor for WeatherEditorView()
{
  result = qword_100CDE5E0;
  if (!qword_100CDE5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10084946C()
{
  sub_100081BC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocationWeatherDataState(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherData(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PreprocessedWeatherData();
          if (v4 <= 0x3F)
          {
            type metadata accessor for NewsDataModel();
            if (v5 <= 0x3F)
            {
              sub_10013DB50();
              if (v6 <= 0x3F)
              {
                sub_100849588();
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

void sub_100849588()
{
  if (!qword_100CDE5F0)
  {
    type metadata accessor for WeatherDataModel();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDE5F0);
    }
  }
}

uint64_t sub_1008495FC@<X0>(uint64_t a1@<X8>)
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
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_10084BCB8(v2, &v16 - v12);
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

uint64_t sub_100849798@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&qword_100CDE640);
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v17 - v13;
  v18 = v1;
  sub_10022C350(&qword_100CDE648);
  sub_100006F64(&qword_100CDE650, &qword_100CDE648);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100005DFC();
  sub_100006F64(v15, &qword_100CDE640);
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v8, v2);
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1008499A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v39 = sub_10022C350(&qword_100CDE660);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v32 - v5;
  __chkstk_darwin(v6);
  v43 = &v32 - v7;
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v42 = sub_10022C350(&qword_100CDE668);
  v35 = *(v42 - 8);
  v11 = v35;
  __chkstk_darwin(v42);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v46 = a1;
  v47 = 0xD00000000000003ELL;
  v48 = 0x8000000100AE0FC0;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  sub_10022C350(&qword_100CDE670);
  sub_100006F64(&qword_100CDE678, &qword_100CDE670);
  v34 = v15;
  Section<>.init(footer:content:)();
  v45 = a1;
  v47 = 0xD000000000000039;
  v48 = 0x8000000100AE1000;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  sub_10022C350(&qword_100CDE680);
  sub_10084BBB4();
  v33 = v10;
  Section<>.init(footer:content:)();
  v44 = a1;
  v47 = 0xD000000000000037;
  v48 = 0x8000000100AE1040;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  v16 = v43;
  Section<>.init(footer:content:)();
  v17 = *(v11 + 16);
  v18 = v36;
  v19 = v42;
  v17(v36, v15, v42);
  v20 = *(v41 + 16);
  v21 = v37;
  v22 = v39;
  v20(v37, v10, v39);
  v23 = v38;
  v24 = v16;
  v25 = v22;
  v20(v38, v24, v22);
  v26 = v40;
  v17(v40, v18, v19);
  v27 = sub_10022C350(&qword_100CDE690);
  v20(&v26[*(v27 + 48)], v21, v25);
  v20(&v26[*(v27 + 64)], v23, v25);
  v28 = *(v41 + 8);
  v28(v43, v25);
  v28(v33, v25);
  v29 = *(v35 + 8);
  v30 = v42;
  v29(v34, v42);
  v28(v23, v25);
  v28(v21, v25);
  return (v29)(v18, v30);
}

uint64_t sub_100849ED4@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_10022C350(&qword_100CDE698);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_10022C350(&qword_100CDE6A0);
  v27 = *(v8 - 8);
  v9 = v27;
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_10084A17C(&v25 - v13);
  sub_10084A5E8(v7);
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(sub_10022C350(&qword_100CDE6A8) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_10084A17C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for WeatherEditorView();
  v30 = *(v2 - 8);
  v29 = *(v30 + 64);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CurrentWeather();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v27 - v8;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for WeatherDataModel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CurrentWeatherEditorView();
  __chkstk_darwin(v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CDE580);
  v28 = v1;
  State.wrappedValue.getter();
  WeatherDataModel.currentWeather.getter();
  (*(v13 + 8))(v15, v12);
  sub_10084BF74(v1, v4, type metadata accessor for WeatherEditorView);
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v30 = swift_allocObject();
  sub_1000FC9F0(v4, v30 + v19, type metadata accessor for WeatherEditorView);
  *v18 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0);
  swift_storeEnumTagMultiPayload();
  v20 = v32;
  v21 = *(v32 + 16);
  v21(v18 + *(v16 + 20), v11, v5);
  v22 = v31;
  v21(v31, v11, v5);
  v21(v33, v22, v5);
  State.init(wrappedValue:)();
  v23 = *(v20 + 8);
  v23(v22, v5);
  v23(v11, v5);
  v24 = (v18 + *(v16 + 24));
  v25 = v30;
  *v24 = sub_10084BE40;
  v24[1] = v25;
  v35 = v28;
  sub_10084BF2C(&qword_100CDE6C8, type metadata accessor for CurrentWeatherEditorView);
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_10084A5E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for WeatherEditorView();
  v4 = v3 - 8;
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = v5;
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  __chkstk_darwin(v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10022C350(&qword_100CA7000);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v36 - v12;
  v14 = type metadata accessor for WeatherDataModel();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DailyForecastEditorView();
  __chkstk_darwin(v18);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CDE580);
  State.wrappedValue.getter();
  WeatherDataModel.dailyForecast.getter();
  (*(v15 + 8))(v17, v14);
  v21 = v36;
  v22 = *(v1 + *(v4 + 32));
  LocationModel.timeZone.getter();
  if (sub_100024D10(v8, 1, v21) == 1)
  {
    static TimeZone.current.getter();
    v23 = sub_100024D10(v8, 1, v21);
    v24 = v37;
    if (v23 != 1)
    {
      sub_100018144(v8, &qword_100CACE08);
    }
  }

  else
  {
    v24 = v37;
    (*(v37 + 32))(v44, v8, v21);
  }

  v25 = v41;
  sub_10084BF74(v1, v41, type metadata accessor for WeatherEditorView);
  v26 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v27 = swift_allocObject();
  sub_1000FC9F0(v25, v27 + v26, type metadata accessor for WeatherEditorView);
  *v20 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0);
  swift_storeEnumTagMultiPayload();
  v28 = v40;
  v29 = v42;
  (*(v40 + 16))(v20 + v18[5], v13, v42);
  v30 = Forecast.forecast.getter();
  v31 = (v20 + v18[9]);
  v45 = v30;
  sub_10022C350(&qword_100CDE6B0);
  State.init(wrappedValue:)();
  (*(v28 + 8))(v13, v29);
  v32 = v47;
  *v31 = v46;
  v31[1] = v32;
  *(v20 + v18[6]) = v22;
  v33 = (*(v24 + 32))(v20 + v18[7], v44, v21);
  v34 = (v20 + v18[8]);
  *v34 = sub_10084BDB0;
  v34[1] = v27;
  __chkstk_darwin(v33);
  *(&v36 - 2) = v2;
  sub_10084BF2C(&qword_100CDE6B8, type metadata accessor for DailyForecastEditorView);
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_10084ABA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherEditorView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10084BF74(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherEditorView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1000FC9F0(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WeatherEditorView);
  Button<>.init(_:action:)();
  v9 = static Color.red.getter();
  result = sub_10022C350(&qword_100CDE680);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_10084AD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherEditorView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10084BF74(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherEditorView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1000FC9F0(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WeatherEditorView);
  Button<>.init(_:action:)();
  v9 = static Color.green.getter();
  result = sub_10022C350(&qword_100CDE680);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_10084AECC()
{
  v0 = type metadata accessor for CurrentWeather();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for WeatherDataModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherEditorView();
  sub_10022C350(&qword_100CDE580);
  State.wrappedValue.getter();
  WeatherDataModel.currentWeather.getter();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  sub_10084BF2C(&qword_100CDE6D0, &type metadata accessor for CurrentWeather);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    return 0;
  }

  else
  {
    return 42;
  }
}

uint64_t sub_10084B128(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataModel();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CurrentWeather();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  type metadata accessor for WeatherEditorView();
  sub_10022C350(&qword_100CDE580);
  State.wrappedValue.getter();
  WeatherDataModel.currentWeather.setter();
  return State.wrappedValue.setter();
}

uint64_t sub_10084B280()
{
  v0 = sub_10022C350(&qword_100CA7000);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for WeatherDataModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherEditorView();
  sub_10022C350(&qword_100CDE580);
  State.wrappedValue.getter();
  WeatherDataModel.dailyForecast.getter();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.dailyForecast.getter();
  sub_100006F64(&qword_100CDE6C0, &qword_100CA7000);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    return 0;
  }

  else
  {
    return 42;
  }
}

uint64_t sub_10084B4E4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataModel();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CA7000);
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - v5, a1, v4);
  type metadata accessor for WeatherEditorView();
  sub_10022C350(&qword_100CDE580);
  State.wrappedValue.getter();
  WeatherDataModel.dailyForecast.setter();
  return State.wrappedValue.setter();
}